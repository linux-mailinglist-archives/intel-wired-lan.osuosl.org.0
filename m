Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AA11350C5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2020 02:01:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3737386AFF;
	Thu,  9 Jan 2020 01:01:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XAU0tBBYmh0A; Thu,  9 Jan 2020 01:01:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D331A869B6;
	Thu,  9 Jan 2020 01:01:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 874251BF9B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 01:01:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 82B6B85F57
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 01:01:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aIWMurj4cgzO for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2020 01:01:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C59AC85F33
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 01:01:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 17:01:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,412,1571727600"; d="scan'208";a="233869969"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga002.jf.intel.com with ESMTP; 08 Jan 2020 17:01:05 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.250]) by
 ORSMSX110.amr.corp.intel.com ([169.254.10.84]) with mapi id 14.03.0439.000;
 Wed, 8 Jan 2020 17:01:05 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Jia-Ju Bai <baijiaju1990@gmail.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [PATCH] net: intel: e1000e: fix possible
 sleep-in-atomic-context bugs in e1000e_get_hw_semaphore()
Thread-Index: AQHVta3aFEjLZ+EvHEi0p4CGcL5CcqfhpOxw
Date: Thu, 9 Jan 2020 01:01:05 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B971A925B@ORSMSX103.amr.corp.intel.com>
References: <20191218141656.12416-1-baijiaju1990@gmail.com>
In-Reply-To: <20191218141656.12416-1-baijiaju1990@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjlkZmI1NDAtYjM2NC00MTIwLWI2MjgtZjQ3ZTk4Y2IyZDM1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWGdFY0pPWVVaVjZhVkNlSlhkVDZtdDlJdXc2V2EwUEs4ZEI3ZUtEa2xSRnEyU20ybEZcL2tySzlwWEM0UHVcL1A4In0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] net: intel: e1000e: fix possible
 sleep-in-atomic-context bugs in e1000e_get_hw_semaphore()
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

> From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org>
> On Behalf Of Jia-Ju Bai
> Sent: Wednesday, December 18, 2019 6:17 AM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; davem@davemloft.net
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Jia-Ju Bai <baijiaju1990@gmail.com>
> Subject: [PATCH] net: intel: e1000e: fix possible sleep-in-atomic-context bugs
> in e1000e_get_hw_semaphore()
> 
> The driver may sleep while holding a spinlock.
> The function call path (from bottom to top) in Linux 4.19 is:
> 
> drivers/net/ethernet/intel/e1000e/mac.c, 1366:
> 	usleep_range in e1000e_get_hw_semaphore
> drivers/net/ethernet/intel/e1000e/80003es2lan.c, 322:
> 	e1000e_get_hw_semaphore in
> e1000_release_swfw_sync_80003es2lan
> drivers/net/ethernet/intel/e1000e/80003es2lan.c, 197:
> 	e1000_release_swfw_sync_80003es2lan in
> e1000_release_phy_80003es2lan
> drivers/net/ethernet/intel/e1000e/netdev.c, 4883:
> 	(FUNC_PTR) e1000_release_phy_80003es2lan in
> e1000e_update_phy_stats
> drivers/net/ethernet/intel/e1000e/netdev.c, 4917:
> 	e1000e_update_phy_stats in e1000e_update_stats
> drivers/net/ethernet/intel/e1000e/netdev.c, 5945:
> 	e1000e_update_stats in e1000e_get_stats64
> drivers/net/ethernet/intel/e1000e/netdev.c, 5944:
> 	spin_lock in e1000e_get_stats64
> 
> drivers/net/ethernet/intel/e1000e/mac.c, 1384:
> 	usleep_range in e1000e_get_hw_semaphore
> drivers/net/ethernet/intel/e1000e/80003es2lan.c, 322:
> 	e1000e_get_hw_semaphore in
> e1000_release_swfw_sync_80003es2lan
> drivers/net/ethernet/intel/e1000e/80003es2lan.c, 197:
> 	e1000_release_swfw_sync_80003es2lan in
> e1000_release_phy_80003es2lan
> drivers/net/ethernet/intel/e1000e/netdev.c, 4883:
> 	(FUNC_PTR) e1000_release_phy_80003es2lan in
> e1000e_update_phy_stats
> drivers/net/ethernet/intel/e1000e/netdev.c, 4917:
> 	e1000e_update_phy_stats in e1000e_update_stats
> drivers/net/ethernet/intel/e1000e/netdev.c, 5945:
> 	e1000e_update_stats in e1000e_get_stats64
> drivers/net/ethernet/intel/e1000e/netdev.c, 5944:
> 	spin_lock in e1000e_get_stats64
> 
> (FUNC_PTR) means a function pointer is called.
> 
> To fix these bugs, usleep_range() is replaced with udelay().
> 
> These bugs are found by a static analysis tool STCheck written by myself.
> 
> Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
> ---
>  drivers/net/ethernet/intel/e1000e/mac.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
