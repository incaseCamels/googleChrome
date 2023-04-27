# googleChromeUpdateChecker


NOT READY ACTUALLy, MUST DISPOSE OF BALLOON ICONS GENERATED IN TRAY ICON


Ultimately, this isn't recommended to implement necessarily, but it's rather to be explored as a proof of concept towards a more customisable update experience. 

The reason or use-case for this is because you may have set Chrome to automatically update, but it requires a relaunch and you haven't seen the icon in the Chrome browser. A balloon may be more in your face. 

Also, perchance Chrome hasn't called out for a new update check yet, your scheduled job could beat it. 

The API call here is cheap for Google, and cheap for you. 

This script will relaunch Chrome for you if you've got the latest downloaded but the old version still remains (you've unlikely relaunched), and if you have only the one Chrome browser open, on starting Chrome again, it's very likely it will tell you Chrome closed weirdly and unexpectedly and it will allow you to restore your tabs. 

It's not sophisticated but it's a start.  I will refine it more, or until there are advancements in Chromes own auto-updating user experience and options. 

It's not recommended to auto-close Chrome if your Chrome tab is opened for something sensitive that you need it to remain running. 

I will add another variant of this script to do no closing of processes, and just balloons, so that you can have a more in your face approach without an auto relaunch. 

I will look at adding a confirmation TOAST notification on whether you want to relaunch Chrome, and a 5 minute count down version, so it doesn't interrupt any unsavable forms you had been filling out. 

I will look at making that more configurable by selecting which mode you want to run it in with parameters. 

I could add email notification or an SMS API notification to it as well. 

Nevertheless, with zero-days being prevalent lately, it's a good idea to update Chrome as soon as possible, but it's a good practice not to open HTML files and the like from weird emails, and try to stick to great reputation internet surfing unless using some form of up to date sandbox.  Although this may not be possible because even small to medium sized businesses may use Wordpress or Joomla and have vulnerabilities that are exploited by threat actors, who either upload malicious payloads or redirect to credential harvesting sites. TOADs and pretexting exist too, so be aware on all fronts.  Web-servers of your favourite businesses can become compromised, so it's good to keep the browser up to date and always verify rather than at first trusting. 

Perhaps other controls such as web filtering proxies and Microsoft's exploit guards will help prevent exploitation of Chrome success of zero-days, but it's good to have depth. 

Using this as a scheduled job, shouldn't be ran every minute. I'd suggest every few hours or so. 
