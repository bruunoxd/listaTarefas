✅ Lista de Tarefas
Um aplicativo de organização de tarefas diárias, criado com FlutterFlow e integrado ao backend do Firebase. Ideal para quem busca produtividade e controle sobre suas atividades.

🧩 Funcionalidades
📅 Visualização de tarefas com calendário semanal integrado

⏰ Cadastro de tarefas com horário específico

✅ Marcar tarefas como concluídas

✏️ Editar ou excluir tarefas existentes

🔁 Interface responsiva e fluida

🌙 Tema escuro com design moderno

🛠 Tecnologias Utilizadas
FlutterFlow

Flutter

Firebase Firestore

Google Fonts

AutoSizeText

🧠 Estrutura do App
ListatarefasWidget: Tela principal que exibe as tarefas de acordo com o dia selecionado no calendário

NovaTarefaWidget: Tela para criação de uma nova tarefa

EditarTarefaWidget: Tela de edição das tarefas já criadas

TarefasRecord: Coleção no Firestore com os campos:

titulo: nome da tarefa

hora: horário da tarefa

dia: data da tarefa

status: concluída ou não (boolean)

🚀 Como Rodar o App
Clone o repositório:

git clone https://github.com/seu-usuario/lista-de-tarefas.git
cd lista-de-tarefas
Abra o projeto no FlutterFlow (ou configure no VS Code com o projeto exportado).

Conecte ao seu projeto do Firebase (Firestore):

Crie a coleção tarefas

Adicione os campos conforme a estrutura acima

Rode o app em um emulador ou dispositivo.

🔮 Melhorias Futuras
🔔 Notificações de lembrete

☁️ Sincronização em tempo real

🗂 Filtros por categorias

📈 Relatórios semanais/mensais

🙌 Contribuições
Contribuições são bem-vindas! Crie uma issue ou envie um pull request com sugestões e melhorias.

📄 Licença
Distribuído sob a licença MIT. Veja LICENSE para mais detalhes.
