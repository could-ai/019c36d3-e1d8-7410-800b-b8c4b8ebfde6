import 'package:flutter/material.dart';
import '../models/customer.dart';
import 'customer_detail_screen.dart';
import 'add_customer_screen.dart';

class CustomerListScreen extends StatefulWidget {
  const CustomerListScreen({super.key});

  @override
  State<CustomerListScreen> createState() => _CustomerListScreenState();
}

class _CustomerListScreenState extends State<CustomerListScreen> {
  // Dummy data for demonstration
  final List<Customer> _customers = [
    Customer(
      id: '1',
      name: 'Rahul Sharma',
      phone: '+91 98765 43210',
      email: 'rahul.s@example.com',
      status: 'New',
      notes: 'Interested in premium plan.',
    ),
    Customer(
      id: '2',
      name: 'Priya Patel',
      phone: '+91 98989 89898',
      email: 'priya.p@example.com',
      status: 'Negotiating',
      notes: 'Asked for a discount.',
    ),
    Customer(
      id: '3',
      name: 'Amit Kumar',
      phone: '+91 91234 56789',
      email: 'amit.k@example.com',
      status: 'Closed',
      notes: 'Deal finalized on 12th Oct.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Customers'),
      ),
      body: ListView.builder(
        itemCount: _customers.length,
        itemBuilder: (context, index) {
          final customer = _customers[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(customer.name[0]),
              ),
              title: Text(customer.name),
              subtitle: Text('${customer.status} • ${customer.phone}'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CustomerDetailScreen(customer: customer),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddCustomerScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
