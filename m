Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF56A741BC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 00:52:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C3FF85FDE;
	Wed, 24 Jul 2019 22:52:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C_zvBx-7wqkt; Wed, 24 Jul 2019 22:52:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6ECF885FD7;
	Wed, 24 Jul 2019 22:52:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 128C01BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 22:52:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 08C6220357
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 22:52:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XczjbMurq0oH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2019 22:52:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 306441FEED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 22:52:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 15:52:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,304,1559545200"; d="scan'208";a="175028915"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga006.jf.intel.com with ESMTP; 24 Jul 2019 15:52:39 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jul 2019 15:52:39 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.29]) by
 ORSMSX155.amr.corp.intel.com ([169.254.7.34]) with mapi id 14.03.0439.000;
 Wed, 24 Jul 2019 15:52:39 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>, Kai-Heng Feng
 <kai.heng.feng@canonical.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2] e1000e: Make speed detection on
 hotplugging cable more reliable
Thread-Index: AQHVQnJ+Yzd19bMtS0elY63lZscBog==
Date: Wed, 24 Jul 2019 22:52:38 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B970D75A2@ORSMSX103.amr.corp.intel.com>
References: <20190715084355.9962-1-kai.heng.feng@canonical.com>
 <20190715122555.11922-1-kai.heng.feng@canonical.com>
In-Reply-To: <20190715122555.11922-1-kai.heng.feng@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Make speed detection on
 hotplugging cable more reliable
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

On Mon, 2019-07-15 at 20:25 +0800, Kai-Heng Feng wrote:
> After hotplugging an 1Gbps ethernet cable with 1Gbps link partner, the
> MII_BMSR may report 10Mbps, renders the network rather slow.
> 
> The issue has much lower fail rate after commit 59653e6497d1 ("e1000e:
> Make watchdog use delayed work"), which essentially introduces some
> delay before running the watchdog task.
> 
> But there's still a chance that the hotplugging event and the queued
> watchdog task gets run at the same time, then the original issue can be
> observed once again.
> 
> So let's use mod_delayed_work() to add a deterministic 1 second delay
> before running watchdog task, after an interrupt.
> 
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
