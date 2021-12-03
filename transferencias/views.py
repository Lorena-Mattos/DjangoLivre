from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from .models import Transferencia
from .serializer import TransferenciaSerializer
from clientes.models import Cliente
from contas.models import Conta


class TransferenciaViewSet(viewsets.ModelViewSet):
    queryset = Transferencia.objects.all()
    serializer_class = TransferenciaSerializer

    def create(self, request):
        print(request.data)

        pagador = Conta.objects.get(id=request.data.get('sender'))
        saldo_pagador = pagador.balance
        recebedor = Conta.objects.get(id=request.data.get('recipient'))
        saldo_recebedor = recebedor.balance
        valor_transacao = float(request.data.get('amount'))

        print('Conta do cliente: R$ ' + str(saldo_pagador))
        print('Valor da transação: R$ ' + str(saldo_recebedor))

        if saldo_pagador >= valor_transacao:
            print("Cliente pode realizar a transferência.")

            transferencia = TransferenciaSerializer(data=request.data)
            if transferencia.is_valid():
                pagador.balance = pagador.balance - valor_transacao
                recebedor.balance = recebedor.balance + valor_transacao
                transferencia.save()
                pagador.save()
                recebedor.save()

                print("Transferência realizada com sucesso!")

            return Response(transferencia.data, status=status.HTTP_201_CREATED)

        return Response("Cliente não possui saldo suficiente para realizar a transferência solicitada.",
                        status=status.HTTP_412_PRECONDITION_FAILED)
