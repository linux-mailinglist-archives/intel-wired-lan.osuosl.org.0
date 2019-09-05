Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F3BA9920
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2019 06:00:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8398287A87;
	Thu,  5 Sep 2019 04:00:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7IJKwtJ9g-+2; Thu,  5 Sep 2019 04:00:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 61C6A878C2;
	Thu,  5 Sep 2019 04:00:16 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 553311BF97A
 for <intel-wired-lan@osuosl.org>; Thu,  5 Sep 2019 04:00:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4F12B87E16
 for <intel-wired-lan@osuosl.org>; Thu,  5 Sep 2019 04:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pQXwzAyj3m8C for <intel-wired-lan@osuosl.org>;
 Thu,  5 Sep 2019 04:00:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from geminitest.hmdnsgroup.com (geminitest.hmdnsgroup.com
 [63.247.140.108])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D00F387CD2
 for <intel-wired-lan@osuosl.org>; Thu,  5 Sep 2019 04:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=mirality.co.nz; s=default; h=Message-ID:References:In-Reply-To:Subject:Cc:
 To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PvTavOL4OAgQgjLSZ/HPh3O1EAUvwvA4HKrA1/UVF3o=; b=nGinjKKYv9qt6ycTJqwV+yvn9p
 EZ1Rz5MXfELYfwFe7f4TyStYo21H0pldSFiimWUvL+AFDVK9dPqnMzwrbnzsMn5xJPiQ2ZBKkYH5p
 EMSu/w8/BJLEl25OGgsY0CtZNj+ZwuX9y6P448rSOgUbJm0oEIHW8H+orJKC/GsY5pDmvD+9Zg5+d
 flVysspvVT3xcHZsBtAODldHCpBvek5Tb2FNorq3kV1zGOjz7hF9nPfMjsHUCtfwl8unGmNlwbCSo
 lJ/kOya+6cY7gHrdhVxdG+ooiAXfXD//hjchf1A10iI/Br62vPXiHNYXx51CJxp8aKIRJQvdHgaGU
 L8NIQFNg==;
Received: from [::1] (port=49160 helo=mirality.co.nz)
 by gemini.hmdnsgroup.com with esmtpa (Exim 4.87)
 (envelope-from <intel@mirality.co.nz>)
 id 1i5iwA-0007XK-5A; Wed, 04 Sep 2019 23:59:58 -0400
MIME-Version: 1.0
Date: Thu, 05 Sep 2019 15:59:57 +1200
From: Gavin Lambert <intel@mirality.co.nz>
To: "Winkler, Tomas" <tomas.winkler@intel.com>
In-Reply-To: <53d81b8c69ddeba6f76128f308ff5275@mirality.co.nz>
References: <3acf459ddbbd30687cda0a79523afe04@mirality.co.nz>
 <bec9f546d5a5a46586af0ac93d36f84f@mirality.co.nz>
 <000661bda5687541e895a949c76712fb@mirality.co.nz>
 <d3118220-e599-44cd-5ed6-43259c5fc2c2@intel.com>
 <3a63201c552a9cb6a9737fec92bc1264@mirality.co.nz>
 <f4a18bf808e6f30e9691e127722f851b@mirality.co.nz>
 <f6b7b539ece1ba352c60c6dc976a3ce2@mirality.co.nz>
 <0300439f389950a9f9baaaaf5e3ea697@mirality.co.nz>
 <aafb4ac9-6825-300c-6dee-1b603c09e373@molgen.mpg.de>
 <20190903092046.GB12325@kroah.com>
 <5B8DA87D05A7694D9FA63FD143655C1B9DCAC1FF@hasmsx108.ger.corp.intel.com>
 <f5b988f9-25cf-db4a-53f5-9bb7edc8fb51@molgen.mpg.de>
 <0159f1cd031ce326447621f1a22f60fc@mirality.co.nz>
 <5B8DA87D05A7694D9FA63FD143655C1B9DCAF25E@hasmsx108.ger.corp.intel.com>
 <53d81b8c69ddeba6f76128f308ff5275@mirality.co.nz>
Message-ID: <77e8ef04e6d1318341e331abee4ce5f6@mirality.co.nz>
X-Sender: intel@mirality.co.nz
User-Agent: Roundcube Webmail/1.1.4
X-HMDNSGroup-MailScanner-Information: Please contact the ISP for more
 information
X-HMDNSGroup-MailScanner-ID: 1i5iwA-0007XK-5A
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, intel-wired-lan@osuosl.org, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>, "Usyskin,
 Alexander" <alexander.usyskin@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2019-09-04 23:08, I wrote:
> On 2019-09-04 22:06, Winkler, Tomas wrote:
>> You can still disable runtime power management via sysfs and
>> permanently using udev rule on your particular system.
>> e.g. ATTR{../../power/control}="on"
> 
> I'll do some more testing on this tomorrow, but I do recall trying
> setting power/control to "on" (via sysfs) for the device:
> 
>   00:16.0 Communication controller: Intel Corporation Sunrise Point-H
> CSME HECI #1 (rev 31)
> 
> which was the one that I noticed was suspended.  Is this the mei 
> device?
> 
> In any case when I tried it before it didn't seem to help, but I think
> this was after link-down and things had already failed.  I'll try
> testing a few more cases, including doing it pre-emptively.

Good news: while forcing the mei_me device to "on" does not recover from 
the problem once it has happened, it does appear to prevent the problem 
from happening.  (I assume this is because it effectively reverts the 
problem commit without any actual code changes.)

I was able to get this to happen on boot by setting 
/etc/udev/rules.d/20-mei.rules:

     ACTION=="add",KERNEL=="mei0",ATTR{../../power/control}="on"

(Initially I tried to match on DRIVER=="mei_me" to avoid the parent 
attribute reference, but this didn't trigger on boot.  The above seems 
to work though.)

This is probably a sufficient workaround for now to keep me happy.  Is 
there anything else you wanted me to test while I have the system handy?

(FWIW, I did previously verify that the original problem also occurs in 
Linux 4.19, though I don't recall the precise version at the moment.)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
