class SubscriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestion des Abonnements'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Choisissez votre abonnement :',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _subscribeMonthly(context);
              },
              child: Text('Abonnement Mensuel'),
            ),
            ElevatedButton(
              onPressed: () {
                _subscribeQuarterly(context);
              },
              child: Text('Abonnement Trimestriel'),
            ),
            ElevatedButton(
              onPressed: () {
                _subscribeYearly(context);
              },
              child: Text('Abonnement Annuel'),
            ),
          ],
        ),
      ),
    );
  }