#include <linux/module.h> /* for all modules */
#include <linux/kernel.h> /* for KERN_INFO */

int init_module(void)
{
	printk(KERN_INFO "hello_lkm : Hello\n");
	return 0;
}

void cleanup_module(void) 
{
	printk(KERN_INFO "hello_lkm : Bye\n");
}

MODULE_LICENSE("GPL");




