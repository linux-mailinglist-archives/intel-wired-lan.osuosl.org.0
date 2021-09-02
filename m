Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DAE3FEBF6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Sep 2021 12:17:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0485340482;
	Thu,  2 Sep 2021 10:17:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cFYurM7wlvM5; Thu,  2 Sep 2021 10:17:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65CC842537;
	Thu,  2 Sep 2021 10:17:16 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C7AF1BF276
 for <intel-wired-lan@osuosl.org>; Thu,  2 Sep 2021 10:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D49B61476
 for <intel-wired-lan@osuosl.org>; Thu,  2 Sep 2021 10:17:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nfFMCSgB-CyV for <intel-wired-lan@osuosl.org>;
 Thu,  2 Sep 2021 10:17:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C102861471
 for <intel-wired-lan@osuosl.org>; Thu,  2 Sep 2021 10:17:07 +0000 (UTC)
Received: from [192.168.0.4] (ip5f5aed3f.dynamic.kabel-deutschland.de
 [95.90.237.63])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C484061E5FE02;
 Thu,  2 Sep 2021 12:17:04 +0200 (CEST)
To: Marco Witte <m.witte@neusta.de>
References: <0c8eb89c-4a55-d977-312f-6856ea5b59ba@neusta.de>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <53185a30-0056-8f8e-66b7-9859a0de5bd3@molgen.mpg.de>
Date: Thu, 2 Sep 2021 12:17:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <0c8eb89c-4a55-d977-312f-6856ea5b59ba@neusta.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Slow e1000e Network Interface with different
 kernel
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
Cc: intel-wired-lan@osuosl.org, Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Marco,


Am 02.09.21 um 12:01 schrieb Marco Witte:
> Scenario: Plugin into network, establishes link and IP is assigned.
> scp from another machine in the same subnet gives approx. 1kb/sec.
> Cross check with an usb 3 dock with integrated network adapter. Full speed.

Just to be clear. Did it ever work in the past?

> Kai Heng-Feng build a patch for tgp https://lkml.org/lkml/2021/7/12/2927
> His deb kernel packages with that patch based on 5.10.x kernel ran full 
> throttle on this machine.
> However this was the only successful attempt to get full speed.

That sounds more like a network device problem.

> The Kernel Mainline 5.13. contains visual similar patches, but they 
> still have the slow down on the same machine.
> Some people suspect pcie changes at that point.
> 
> Some curious fact I found out while testing: I booted up a manjaro 
> (current) usb stick and had full speed on the e1000e. Then I installed 
> manjaro from that stick to the harddrive. Booted that and it didn't 
> perform well.
> 
> As this is my first rodeo on this mailinglist, I need to reference some 
> information:
> 
> Referencing: https://bugzilla.kernel.org/show_bug.cgi?id=213377
> Here is the launchpad: 
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1927925
> e1000e Sourceforge bugreport(s): https://sourceforge.net/p/e1000/bugs/681/
> This is still an issue with all current mainline kernels. Last test was 
> 5.14 RC7
> 
> I can provide any output you need.

What devices is it exactly? Is the link speed each time 1 Gb/s? Linux 
logs that like

     [   10.871450] e1000e 0000:00:19.0 eno1: NIC Link is Up 1000 Mbps 
Full Duplex, Flow Control: Rx/Tx

You can also check that with `ethtool`, for example, `/usr/sbin/ethtool 
eno1`.


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
