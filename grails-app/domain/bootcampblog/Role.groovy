package bootcampblog

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes='authority')
@ToString(includes='authority', includeNames=true, includePackage=false)
class Role implements Serializable {

   private static final long serialVersionUID = 1

   String authority

   Role(String authority) {
      this()
      this.authority = authority
   }

   static mapping = {
      cache true
   }

   static constraints = {
      authority blank: false, unique: true
   }
}