function printOrderTotal(responseString) {
    let orderSubtotal = 0;
    const responseJSON = JSON.parse(responseString);

    responseJSON.forEach(item => {
        if (item.price === undefined) {
            item.price = 0;
        }
        orderSubtotal += item.price;
    });

    console.log(`Стоимость заказа: ${orderSubtotal > 0 ? orderSubtotal + ' руб.' : 'Бесплатно'}`);
}