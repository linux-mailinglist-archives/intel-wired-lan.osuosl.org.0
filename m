Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F9A19C926
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Apr 2020 20:51:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E7A48888E5;
	Thu,  2 Apr 2020 18:51:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SAuIDTuc0aH6; Thu,  2 Apr 2020 18:51:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 74BE389228;
	Thu,  2 Apr 2020 18:51:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 778151BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 18:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 72649889B1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 18:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4J4WtjKTnZ1l for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2020 18:51:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F13E0888E5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 18:51:52 +0000 (UTC)
IronPort-SDR: GtcHyDw23eEmc8JULFz2usztMC4mFy+0mtzkRIfD5A8OxFID2jzipZyGh4S7bdxLKnOw5J0PYK
 kTXZEsx+olfg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 11:51:52 -0700
IronPort-SDR: /PNZLi9AkMwENO8sgMAuie2vULQe1Abr53z2BokbWZB60yNSbPeVk12QRa1YTYEOEbovlcl5H7
 3jpthYzuBRFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,336,1580803200"; d="scan'208";a="284877564"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga002.fm.intel.com with ESMTP; 02 Apr 2020 11:51:51 -0700
Received: from orsmsx125.amr.corp.intel.com (10.22.240.125) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 2 Apr 2020 11:51:51 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX125.amr.corp.intel.com ([169.254.3.103]) with mapi id 14.03.0439.000;
 Thu, 2 Apr 2020 11:51:51 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v1] e1000e: Add support for S0ix
Thread-Index: AQHWCQ0hJ3xCb6+PbkqjUl4Fcacbg6hmDNJQ
Date: Thu, 2 Apr 2020 18:51:50 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722F305@ORSMSX103.amr.corp.intel.com>
References: <20190916065240.41486-1-sasha.neftin@intel.com>
 <309B89C4C689E141A5FF6A0C5FB2118B9714C814@ORSMSX103.amr.corp.intel.com>
 <cf87df61-9a63-5eb3-6589-a29a934bfa93@molgen.mpg.de>
In-Reply-To: <cf87df61-9a63-5eb3-6589-a29a934bfa93@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: Add support for S0ix
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Rajneesh Bhardwaj <rajneesh.bhardwaj@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Paul Menzel <pmenzel@molgen.mpg.de>
> Sent: Thursday, April 2, 2020 9:38 AM
> To: Brown, Aaron F <aaron.f.brown@intel.com>
> Cc: Neftin, Sasha <sasha.neftin@intel.com>; intel-wired-lan@lists.osuosl.org;
> Rajneesh Bhardwaj <rajneesh.bhardwaj@linux.intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: Add support for S0ix
> 
> Dear Aaron,
> 
> 
> Am 11.10.19 um 02:56 schrieb Brown, Aaron F:
> >> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On Behalf
> Of
> >> Sasha Neftin
> >> Sent: Sunday, September 15, 2019 11:53 PM
> >> To: intel-wired-lan@lists.osuosl.org
> >> Cc: Rajneesh Bhardwaj <rajneesh.bhardwaj@linux.intel.com>
> >> Subject: [Intel-wired-lan] [PATCH v1] e1000e: Add support for S0ix
> >>
> >> Implement flow for S0ix support. Modern SoCs support S0ix low power
> >> states during idle periods, which are sub-states of ACPI S0 that increase
> >> power saving while supporting an instant-on experience for providing
> >> lower latency that ACPI S0. The S0ix states shut off parts of the SoC
> >> when they are not in use, while still maintaning optimal performance.
> >> This patch add support for S0ix started from an Ice Lake platform.
> >>
> >> Suggested-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> >> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> >> Signed-off-by: Rajneesh Bhardwaj <rajneesh.bhardwaj@linux.intel.com>
> >> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> >> ---
> >>   drivers/net/ethernet/intel/e1000e/netdev.c | 186
> >> +++++++++++++++++++++++++++++
> >>   drivers/net/ethernet/intel/e1000e/regs.h   |   4 +
> >>   2 files changed, 190 insertions(+)
> >
> > I do not yet have access to an Ice lake platform but this does not seem to
> harm any of my regression systems, so...
> > Tested-by: Aaron Brown <aaron.f.brown@intel.com>
> 
> Is testing several s2idle cycles part of your testing (with (un)plugging
> the cable)?
Not as part of the normal regression checks.  I did a whole lot of sleep / suspend resume with cables connected, some without cables and once I started to understand the problem more went back and did more on the different link states (w/ cable link down, w/o cable, etc...) and none of my systems seemed to function differently before or after the patch.  But as I stated with the Tested-by, I don't have the platform the patch targets.
 
> 
> Can you reproduce the issues reported on the list [1][2]?
No, none of the test systems I used showed the problem, but I did not (still don't) gave access to a Lenova Carbon or any other system that contain the combination of components, i219 and ME, that the problem appears on.

> 
> 
> Kind regards,
> 
> Paul
> 
> 
> [1]: https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1865570
> [2]: https://bugzilla.redhat.com/show_bug.cgi?id=1816621
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
