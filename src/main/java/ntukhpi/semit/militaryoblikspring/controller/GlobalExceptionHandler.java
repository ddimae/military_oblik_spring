//package ntukhpi.semit.militaryoblikspring.controller;
//
//import org.springframework.ui.Model;
//import jakarta.servlet.RequestDispatcher;
//import jakarta.servlet.http.HttpServletRequest;
//import org.springframework.boot.web.servlet.error.ErrorController;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.ControllerAdvice;
//import org.springframework.web.bind.annotation.ExceptionHandler;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//@ControllerAdvice
//public class GlobalExceptionHandler implements ErrorController  {
//
//    @ExceptionHandler({Exception.class})
//    public ResponseEntity<Object> handleRuntimeException(RuntimeException exception) {
//        return ResponseEntity
//                .status(HttpStatus.INTERNAL_SERVER_ERROR)
//                .body(exception.getMessage());
//    }
//
////    @RequestMapping("/error")
////    public String handleError(Model model, HttpServletRequest request, Exception exception) {
////        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
////
////        model.addAttribute("errorCode", Integer.parseInt(status.toString()));
////        model.addAttribute("errorMessage", exception.getMessage());
////
////        return "error";
////    }
//}
