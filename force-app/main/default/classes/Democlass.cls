Public Class Democlass{
	Public Democlass(){
		System.debug('This is a Non-Parameterized Constructor');
	}

    Public Democlass(String str1, String str2, Integer int1){
	method1(str1, str2, int1);
	System.debug('This is a Parameterized Constructor');
	}
	Public void method1(String a, String b, Integer i){
	System.debug('Dev'+' '+a+' '+b+' '+i);
	}
}