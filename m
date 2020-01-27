Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3576314ABA5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jan 2020 22:30:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 818C387B48;
	Mon, 27 Jan 2020 21:30:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SCrbxnUcdfXP; Mon, 27 Jan 2020 21:30:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D64F587A6E;
	Mon, 27 Jan 2020 21:30:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB13C1BF28C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 21:30:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E11AB84C1E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 21:30:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tSNGX32rdxxh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2020 21:30:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EF3F984B75
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 21:29:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 13:29:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,371,1574150400"; d="scan'208";a="231652855"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga006.jf.intel.com with ESMTP; 27 Jan 2020 13:29:58 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 27 Jan 2020 13:29:58 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.147]) by
 ORSMSX151.amr.corp.intel.com ([169.254.7.99]) with mapi id 14.03.0439.000;
 Mon, 27 Jan 2020 13:29:58 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1] e1000e: Add support to 0x15F5
 Device Id of Tiger Lake
Thread-Index: AQHVzrBhpF2OnA10p0O3nyUnw7/bXaf6tGqggAEoh4CAAzXRoA==
Date: Mon, 27 Jan 2020 21:29:58 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B971CD843@ORSMSX103.amr.corp.intel.com>
References: <20200119100809.38869-1-vitaly.lifshits@intel.com>
 <309B89C4C689E141A5FF6A0C5FB2118B971CC4E7@ORSMSX103.amr.corp.intel.com>
 <3b5bb66d-949e-e190-56c1-c067a2f3bb9b@intel.com>
In-Reply-To: <3b5bb66d-949e-e190-56c1-c067a2f3bb9b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: Add support to 0x15F5
 Device Id of Tiger Lake
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Lifshits, Vitaly <vitaly.lifshits@intel.com>
> Sent: Saturday, January 25, 2020 4:22 AM
> To: Brown, Aaron F <aaron.f.brown@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: Add support to 0x15F5
> Device Id of Tiger Lake
> 
> On 1/25/2020 04:45, Brown, Aaron F wrote:
> >> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of
> >> Vitaly Lifshits
> >> Sent: Sunday, January 19, 2020 2:08 AM
> >> To: intel-wired-lan@lists.osuosl.org
> >> Subject: [Intel-wired-lan] [PATCH v1] e1000e: Add support to 0x15F5
> Device
> >> Id of Tiger Lake
> >>
> >> Added support to 0x15F5 Device ID which is part of Intel Tiger Lake
> >> Platforms. This patch follows commit:
> >> 776f5d57ee ("e1000e: Add support for Tiger Lake").
> >>
> >> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> >> ---
> >>   drivers/net/ethernet/intel/e1000e/hw.h     | 1 +
> >>   drivers/net/ethernet/intel/e1000e/netdev.c | 1 +
> >>   2 files changed, 2 insertions(+)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>

> >>  <snip>
> >
> > Something seems to be missing.  After building and booting to the kernel
> with this patch included I do not see the 15f5 device from modinfo:
> > u1519:[1]/usr/src/kernels/next-queue> modinfo igc|grep -i 15f5
> > u1519:[1]/usr/src/kernels/next-queue>
> >
> 
> If I understand your test correctly, I think you should run:
>  > modinfo e1000e | grep -i 15f5
> 
> Since the patch is to e1000e module and not igc.
Yes of course, thanks.  End of a long week ://)

u1459:[1]/usr/src/kernels/next-queue> modinfo e1000e | grep -i 15f5
alias:          pci:v00008086d000015F5sv*sd*bc*sc*i*
u1459:[1]/usr/src/kernels/next-queue>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
