Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F496CA9C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jul 2019 10:07:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2C844204EE;
	Thu, 18 Jul 2019 08:07:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B9X9YjrKbLvP; Thu, 18 Jul 2019 08:07:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 89CCC204E7;
	Thu, 18 Jul 2019 08:07:00 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D4371BF5A1
 for <intel-wired-lan@osuosl.org>; Thu, 18 Jul 2019 08:06:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 89800868CB
 for <intel-wired-lan@osuosl.org>; Thu, 18 Jul 2019 08:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gKo7IKu1ENqA for <intel-wired-lan@osuosl.org>;
 Thu, 18 Jul 2019 08:06:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from geminitest.hmdnsgroup.com (geminitest.hmdnsgroup.com
 [63.247.140.108])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 34179868AB
 for <intel-wired-lan@osuosl.org>; Thu, 18 Jul 2019 08:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=mirality.co.nz; s=default; h=Message-ID:References:In-Reply-To:Subject:To:
 From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To
 :Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=35JzKX38BCbRs8VlW0JRgOnh1qO2Fy46dXebAeVfkgM=; b=P2rY9J3vkYbjNrDMJk0zdtenoe
 Y5Jqa0JauZjZhu4UQbuKtKHnjhLVNjhJReV+fs1YMIbLihs+NNRzvg4p4qvwbvIc7PwCR1oHz1+K6
 Hh2+TlaM/++wEWLK/z/yXPAex0nbniREyX44qXi/+4lgreJFBHP/JyuGNysXRVglwbSbT0lbHuO8Y
 DkCVs48LqB6f9sdfEN/NVIk4xEinK0iJCTt4QnShxXtB37NRT5qHEJsGufE9nzZNa/VwOkmKyOJUx
 XmyxALmGSFwN1+nYc8wAg2jcsKSrHQwK4UzXkKPKE03NMEEHpzapLFDHYbs3beGOmoFnpCwM/G+by
 v98fBNZQ==;
Received: from [::1] (port=55978 helo=mirality.co.nz)
 by gemini.hmdnsgroup.com with esmtpa (Exim 4.87)
 (envelope-from <intel@mirality.co.nz>) id 1ho1RK-0008Vz-Ig
 for intel-wired-lan@osuosl.org; Thu, 18 Jul 2019 04:06:58 -0400
MIME-Version: 1.0
Date: Thu, 18 Jul 2019 20:06:58 +1200
From: Gavin Lambert <intel@mirality.co.nz>
To: intel-wired-lan@osuosl.org
In-Reply-To: <bec9f546d5a5a46586af0ac93d36f84f@mirality.co.nz>
References: <3acf459ddbbd30687cda0a79523afe04@mirality.co.nz>
 <bec9f546d5a5a46586af0ac93d36f84f@mirality.co.nz>
Message-ID: <000661bda5687541e895a949c76712fb@mirality.co.nz>
X-Sender: intel@mirality.co.nz
User-Agent: Roundcube Webmail/1.1.4
X-HMDNSGroup-MailScanner-Information: Please contact the ISP for more
 information
X-HMDNSGroup-MailScanner-ID: 1ho1RK-0008Vz-Ig
X-HMDNSGroup-MailScanner: Found to be clean
X-HMDNSGroup-MailScanner-SpamCheck: 
X-HMDNSGroup-MailScanner-From: intel@mirality.co.nz
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gemini.hmdnsgroup.com
X-AntiAbuse: Original Domain - osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - mirality.co.nz
X-Get-Message-Sender-Via: gemini.hmdnsgroup.com: authenticated_id:
 uecasm/from_h
X-Authenticated-Sender: gemini.hmdnsgroup.com: intel@mirality.co.nz
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: [Intel-wired-lan] [e1000e] Linux 4.9: unable to send packets
 after link recovery with patched driver
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2019-07-12 15:23, I wrote:
> On 2019-07-11 18:50, I wrote:
>> On a Debian system with kernel linux-image-4.9.0-4-rt-amd64 (4.9.65)
>> installed, this works perfectly.  It also works perfectly with
>> linux-image-4.9.0-8-rt-amd64 (4.9.110).
>> 
>> However, with kernel linux-image-4.9.0-9-rt-amd64 (4.9.168) installed
>> (and no other changes to the system other than building the patched
>> e1000e module against this kernel's headers), something weird happens
>> when the driver is running in its alternate "ecdev" mode.
[...]
> Since this was mostly just a rebase error (you can see a similar
> change in the old location of this code), I'm not sure if this helps
> narrow down the source of the problem between 4.9.110 and 4.9.168 or
> not.  I'm still looking for ideas for that.

Using this kernel tree:
   
https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-stable-rt.git/log/?h=v4.9-rt&ofs=3120

I've identified that the code at tag v4.9.126 is "good" and the code at 
tag v4.9.127 is "bad".

I've done a bisect (twice, from different starting points) and both 
times settled on this commit as the one which introduced the problem I'm 
experiencing:

commit c0b809985a7a418fcc3361c239ae79250245282d (refs/bisect/bad)
Author: Tomas Winkler <tomas.winkler@intel.com>
Date:   Tue Jan 2 12:01:41 2018 +0200

     mei: me: allow runtime pm for platform with D0i3

     commit cc365dcf0e56271bedf3de95f88922abe248e951 upstream.

     >From the pci power documentation:
     "The driver itself should not call pm_runtime_allow(), though. 
Instead,
     it should let user space or some platform-specific code do that 
(user space
     can do it via sysfs as stated above)..."

     However, the S0ix residency cannot be reached without MEI device 
getting
     into low power state. Hence, for mei devices that support D0i3, it's 
better
     to make runtime power management mandatory and not rely on the 
system
     integration such as udev rules.
     This policy cannot be applied globally as some older platforms
     were found to have broken power management.

     Cc: <stable@vger.kernel.org> v4.13+
     Cc: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
     Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
     Reviewed-by: Alexander Usyskin <alexander.usyskin@intel.com>
     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

It is reproducible every time; if I build at the parent commit 
(3d3432580911) then the driver works, and if I add the commit above then 
it fails.

However it's unclear to me how this is affecting my modified e1000e 
driver in this way, except that it is perhaps power management related?

Since it appears to be a pm_runtime-related thing, just as an experiment 
I did try commenting out every single call to pm_runtime* functions in 
netdev.c, but this did not resolve the problem.  Ditto for anything with 
the word "suspend" in it.  I also tried adding e_info() logging calls to 
most places that used pm_ calls other than pm_runtime_get/put (and in 
particular, in all of the pm_ops callbacks), and none of them were hit 
during the problem events.

And even when it's not working, if I `cat` various things in 
`/sys/bus/pci/.../power/` on the adapter device, it appears to all be 
non-suspended, which makes me doubt that it really is a PM issue, unless 
I'm just looking in the wrong places.

Any ideas?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
