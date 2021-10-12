Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B15C42A9CF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 18:43:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7300840400;
	Tue, 12 Oct 2021 16:43:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gFoMST5zhhLm; Tue, 12 Oct 2021 16:43:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D9FA40256;
	Tue, 12 Oct 2021 16:43:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A6D761BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 16:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8D3D9406F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 16:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WDfizrKgtHMz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 16:43:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx3.uni-regensburg.de (mx3.uni-regensburg.de [194.94.157.148])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 82076406DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 16:43:08 +0000 (UTC)
Received: from mx3.uni-regensburg.de (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id F17076000057;
 Tue, 12 Oct 2021 18:34:37 +0200 (CEST)
Received: from smtp1.uni-regensburg.de (smtp1.uni-regensburg.de
 [194.94.157.129])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "smtp.uni-regensburg.de",
 Issuer "DFN-Verein Global Issuing CA" (not verified))
 by mx3.uni-regensburg.de (Postfix) with ESMTPS id D1C506000051;
 Tue, 12 Oct 2021 18:34:37 +0200 (CEST)
From: "Andreas K. Huettel" <andreas.huettel@ur.de>
To: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Tue, 12 Oct 2021 18:34:35 +0200
Message-ID: <2801801.e9J7NaK4W3@kailua>
Organization: Universitaet Regensburg
In-Reply-To: <c75203e9-0ef4-20bd-87a5-ad0846863886@intel.com>
References: <1823864.tdWV9SEqCh@kailua> <2944777.ktpJ11cQ8Q@pinacolada>
 <c75203e9-0ef4-20bd-87a5-ad0846863886@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [EXT] Re: Intel I350 regression 5.10 -> 5.14
 ("The NVM Checksum Is Not Valid") [8086:1521]
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
Cc: Jakub Kicinski <kubakici@wp.pl>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > The messages easily identifiable are:
> > 
> > huettel@pinacolada ~/tmp $ cat kernel-messages-5.10.59.txt |grep igb
> > Oct  5 15:11:18 dilfridge kernel: [    2.090675] igb: Intel(R) Gigabit Ethernet Network Driver
> > Oct  5 15:11:18 dilfridge kernel: [    2.090676] igb: Copyright (c) 2007-2014 Intel Corporation.
> > Oct  5 15:11:18 dilfridge kernel: [    2.090728] igb 0000:01:00.0: enabling device (0000 -> 0002)
> 
> This line is missing below, it indicates that the kernel couldn't or
> didn't power up the PCIe for some reason. We're looking for something
> like ACPI or PCI patches (possibly PCI-Power management) to be the
> culprit here.
> 

So I did a git bisect from linux-v5.10 (good) to linux-v5.14.11 (bad).

The result was:

dilfridge /usr/src/linux-git # git bisect bad
6381195ad7d06ef979528c7452f3ff93659f86b1 is the first bad commit
commit 6381195ad7d06ef979528c7452f3ff93659f86b1
Author: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Date:   Mon May 24 17:26:16 2021 +0200

    ACPI: power: Rework turning off unused power resources
[...]

I tried naive reverting of this commit on top of 5.14.11. That applies nearly cleanly, 
and after a reboot the additional ethernet interfaces show up with their MAC in the
boot messages.

(Not knowing how safe that experiment was, I did not go further than single mode and
immediately rebooted into 5.10 afterwards.)

-- 
PD Dr. Andreas K. Huettel
Institute for Experimental and Applied Physics
University of Regensburg
93040 Regensburg
Germany

e-mail andreas.huettel@ur.de
http://www.akhuettel.de/
http://www.physik.uni-r.de/forschung/huettel/


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
