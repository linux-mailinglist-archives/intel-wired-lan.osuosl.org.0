Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BA34C3FC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2019 01:13:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C3732150B;
	Wed, 19 Jun 2019 23:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IRRct4JUs3jx; Wed, 19 Jun 2019 23:13:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3385921503;
	Wed, 19 Jun 2019 23:13:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57BB91BF29D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 23:13:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4A45D20BF8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 23:13:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qyZ1XIsHzDVU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2019 23:13:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id C5DF2203A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 23:13:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 16:13:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="335325959"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga005.jf.intel.com with ESMTP; 19 Jun 2019 16:13:15 -0700
Received: from orsmsx125.amr.corp.intel.com (10.22.240.125) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Jun 2019 16:13:15 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX125.amr.corp.intel.com ([169.254.3.149]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 16:13:15 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH][next][V2] ixgbe: fix potential u32
 overflow on shift
Thread-Index: AQHVHV2ToRQN8mZnx0izOHLo1fKcGqajrlSQ
Date: Wed, 19 Jun 2019 23:13:15 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3F8D26@ORSMSX104.amr.corp.intel.com>
References: <20190607181920.23339-1-colin.king@canonical.com>
In-Reply-To: <20190607181920.23339-1-colin.king@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNGIzMzE4YTUtNzgyNi00YTFkLThlOWUtZWExYzJjZTA0ZjU4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUkI2UUFyenVlR3NXSVVwVnNXMFAzTElhWlwvajlCemljYmdKYzhyNFFPZjdcLzBLaVVUTVpRTnNiXC9qaEV1d1IxbiJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH][next][V2] ixgbe: fix potential u32
 overflow on shift
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Colin King
> Sent: Friday, June 7, 2019 11:19 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com>; David S . Miller <davem@davemloft.net>;
> intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: kernel-janitors@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH][next][V2] ixgbe: fix potential u32
> overflow on shift
> 
> From: Colin Ian King <colin.king@canonical.com>
> 
> The u32 variable rem is being shifted using u32 arithmetic however it is being
> passed to div_u64 that expects the expression to be a u64.
> The 32 bit shift may potentially overflow, so cast rem to a u64 before shifting
> to avoid this.  Also remove comment about overflow.
> 
> Addresses-Coverity: ("Unintentional integer overflow")
> Fixes: cd4583206990 ("ixgbe: implement support for SDP/PPS output on X550
> hardware")
> Fixes: 68d9676fc04e ("ixgbe: fix PTP SDP pin setup on X540 hardware")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
> 
> V2: update comment
> 
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
