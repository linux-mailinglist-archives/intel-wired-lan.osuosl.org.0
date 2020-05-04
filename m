Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 134E71C487A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 May 2020 22:41:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 735478784F;
	Mon,  4 May 2020 20:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LMS6cX26wtrD; Mon,  4 May 2020 20:28:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8348587848;
	Mon,  4 May 2020 20:28:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6C75A1BF418
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 20:28:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 658CE88798
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 20:28:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UjDcCFVuh3kR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2020 20:28:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 896AE87C02
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 20:28:04 +0000 (UTC)
IronPort-SDR: Z0UaZG3qfYbuBKv6frt3luDBVP+0w+c5NZnqeA6imjnImjDTIsLWr/1cElIti5DPYvLYlhQAEZ
 +4xGwzOnkXag==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 13:28:04 -0700
IronPort-SDR: Tq/jZWgJ6AUwkRsjaMqbQWY2fWdseKH72RaHEPvpnJo0rzelICaR5nI2gOywHD4HNMNdXASnkw
 1zC1NwnCC7dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,353,1583222400"; d="scan'208";a="249260889"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga007.fm.intel.com with ESMTP; 04 May 2020 13:28:03 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.248]) by
 ORSMSX108.amr.corp.intel.com ([169.254.2.68]) with mapi id 14.03.0439.000;
 Mon, 4 May 2020 13:28:03 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: David Miller <davem@davemloft.net>, "kai.heng.feng@canonical.com"
 <kai.heng.feng@canonical.com>
Thread-Topic: [PATCH] igb: Report speed and duplex as unknown when device is
 runtime suspended
Thread-Index: AQHWIjoCs1YMgvTPr0+YmRp3SYYI9aiYsmYA//+t7dA=
Date: Mon, 4 May 2020 20:28:03 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D9404498687DD5@ORSMSX112.amr.corp.intel.com>
References: <20200504173218.1724-1-kai.heng.feng@canonical.com>
 <20200504.112056.1400711844642835898.davem@davemloft.net>
In-Reply-To: <20200504.112056.1400711844642835898.davem@davemloft.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] igb: Report speed and duplex as
 unknown when device is runtime suspended
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: David Miller <davem@davemloft.net>
> Sent: Monday, May 4, 2020 11:21
> To: kai.heng.feng@canonical.com
> Cc: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH] igb: Report speed and duplex as unknown when device is
> runtime suspended
> 
> From: Kai-Heng Feng <kai.heng.feng@canonical.com>
> Date: Tue,  5 May 2020 01:32:18 +0800
> 
> > igb device gets runtime suspended when there's no link partner. We
> > can't get correct speed under that state:
> > $ cat /sys/class/net/enp3s0/speed
> > 1000
> >
> > In addition to that, an error can also be spotted in dmesg:
> > [  385.991957] igb 0000:03:00.0 enp3s0: PCIe link lost
> >
> > Since device can only be runtime suspended when there's no link
> > partner, we can directly report the speed and duplex as unknown.
> >
> > The more generic approach will be wrap get_link_ksettings() with
> > begin() and complete() callbacks. However, for this particular issue,
> > begin() calls igb_runtime_resume() , which tries to rtnl_lock() while
> > the lock is already hold by upper ethtool layer.
> >
> > So let's take this approach until the igb_runtime_resume() no longer
> > needs to hold rtnl_lock.
> >
> > Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
> > Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> 
> I'm assuming I will get this from upstream via Jeff K.
[Kirsher, Jeffrey T] 

Yep, I will be picking this up once Alex's last questions/concerns are addressed.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
