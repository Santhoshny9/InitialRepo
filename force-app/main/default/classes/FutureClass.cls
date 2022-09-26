public class FutureClass {

    Public FutureClass(){
        HavingBreakfast();
        Laundry();
        CarSerice();
        MovieBreak();
    }
    Public Static void HavingBreakfast(){
        System.debug('Having Breakfast');
    }
        Public Static void Laundry(){
        System.debug('Laundry');
    }
    	@Future
    Public Static void CarSerice(){
        System.debug('Car Service');
    }
        Public Static void MovieBreak(){
        System.debug('Movie Break');
    }

}