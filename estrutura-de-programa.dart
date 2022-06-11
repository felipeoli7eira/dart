main()
{
  div('funcoes');
  print( myCustomFunction() );

  div('funcoes com parametros');
  paramFunc('param string');
}

div(section)
{
  print('\n+---------- ' + section + ' ----------+');
}

// funcoes
myCustomFunction()
{
  return 'my custom function';
}

// funcoes com parametros
paramFunc(param)
{
  print(param);
}