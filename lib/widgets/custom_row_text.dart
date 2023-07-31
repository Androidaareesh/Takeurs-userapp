
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,style: const TextStyle(fontSize: 24),),
        TextButton(onPressed: press,
         child:  Text(button,style:const TextStyle(color: AppColors.primaryColor,fontSize: 24),))
      ],
    );
  }
}