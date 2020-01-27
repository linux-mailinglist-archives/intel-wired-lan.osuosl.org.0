Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC77114ABA8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jan 2020 22:31:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4E1FF84C4E;
	Mon, 27 Jan 2020 21:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cBQ5ciuAifQq; Mon, 27 Jan 2020 21:31:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B31C84C9F;
	Mon, 27 Jan 2020 21:31:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 259501BF28C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 21:31:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 21B8E86499
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 21:31:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fXZO4qlttqbu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2020 21:31:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7978885AD6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 21:31:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 13:31:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,371,1574150400"; d="scan'208";a="229098109"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga003.jf.intel.com with ESMTP; 27 Jan 2020 13:31:54 -0800
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 27 Jan 2020 13:31:53 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.147]) by
 ORSMSX113.amr.corp.intel.com ([169.254.9.57]) with mapi id 14.03.0439.000;
 Mon, 27 Jan 2020 13:31:54 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3] e1000e: Add support for Alder Lake
Thread-Index: AQHVzr+c01gv/5DnTEyDN3CQRNPxi6f6tX+AgAJtuICAAe9McA==
Date: Mon, 27 Jan 2020 21:31:53 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B971CD85C@ORSMSX103.amr.corp.intel.com>
References: <20200119115713.12710-1-sasha.neftin@intel.com>
 <309B89C4C689E141A5FF6A0C5FB2118B971CC502@ORSMSX103.amr.corp.intel.com>
 <835b1769-42e3-f8f2-fc5f-ed811328e3e2@intel.com>
In-Reply-To: <835b1769-42e3-f8f2-fc5f-ed811328e3e2@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3] e1000e: Add support for Alder Lake
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

> From: Neftin, Sasha <sasha.neftin@intel.com>
> Sent: Saturday, January 25, 2020 11:51 PM
> To: Brown, Aaron F <aaron.f.brown@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH v3] e1000e: Add support for Alder Lake
> 
> On 1/25/2020 04:50, Brown, Aaron F wrote:
> >> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of
> >> Sasha Neftin
> >> Sent: Sunday, January 19, 2020 3:57 AM
> >> To: intel-wired-lan@lists.osuosl.org
> >> Subject: [Intel-wired-lan] [PATCH v3] e1000e: Add support for Alder Lake
> >>
> >> Add devices ID's for the next LOM generations that will be
> >> available on the next Intel Client platform (Alder Lake)
> >> This patch provides the initial support for these devices
> >>
> >> v1->v2:
> >> Address community comments
> >> v2->v3:
> >> Fix minor typo
> >>
> >> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> >> ---
> >>   drivers/net/ethernet/intel/e1000e/ethtool.c | 2 ++
> >>   drivers/net/ethernet/intel/e1000e/hw.h      | 5 +++++
> >>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 7 +++++++
> >>   drivers/net/ethernet/intel/e1000e/netdev.c  | 6 ++++++
> >>   drivers/net/ethernet/intel/e1000e/ptp.c     | 1 +
> >>   5 files changed, 21 insertions(+)
> >>

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
> >> <snip>
...
> > Something seems to be missing.  After building and booting to the kernel
> with this patch included I do not see the a 1a1e, 1a1f, 1a1c or 1a1d device
> from modinfo:
> > u1519:[1]/usr/src/kernels/next-queue> modinfo igc|grep -i 1a1
> > u1519:[1]/usr/src/kernels/next-queue>
> >
> you might run run modinfo e1000e | grep -i 0x1a1*

Yes of course, thanks.  End of a long week ://)

u1459:[1]/usr/src/kernels/next-queue> modinfo e1000e | grep -i 1a1
alias:          pci:v00008086d00001A1Dsv*sd*bc*sc*i*
alias:          pci:v00008086d00001A1Csv*sd*bc*sc*i*
alias:          pci:v00008086d00001A1Fsv*sd*bc*sc*i*
alias:          pci:v00008086d00001A1Esv*sd*bc*sc*i*
u1459:[1]/usr/src/kernels/next-queue>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
