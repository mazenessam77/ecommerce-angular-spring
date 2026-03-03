import { Address } from "./address";
import { Order } from "./order";
import { OrderItem } from "./order-item";

export class Purchase {
  user!: { firstName: string; lastName: string; email: string; username: string; password: string };
  shippingAddress!: Address;
  billingAddress!: Address;
  order!: Order;
  orderItems!: OrderItem[];
}
