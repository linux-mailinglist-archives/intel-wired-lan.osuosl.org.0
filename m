Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 875F739397
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2019 19:44:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F152720780;
	Fri,  7 Jun 2019 17:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id waz4ITWLBw1j; Fri,  7 Jun 2019 17:44:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BA40520762;
	Fri,  7 Jun 2019 17:44:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57C841BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 17:44:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 51D99868FE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 17:44:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9WbKt91AwOfe for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jun 2019 17:44:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AB64B86433
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 17:44:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 10:44:35 -0700
X-ExtLoop1: 1
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2019 10:44:35 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 7 Jun 2019 10:44:35 -0700
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.133]) by
 ORSMSX152.amr.corp.intel.com ([169.254.8.218]) with mapi id 14.03.0415.000;
 Fri, 7 Jun 2019 10:44:34 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Colin King <colin.king@canonical.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>, "David S . Miller" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH][next] ixgbe: fix potential u32 overflow on shift
Thread-Index: AQHVHGlIFzjSo2T24EekWjY0GDeFv6aQeFNA
Date: Fri, 7 Jun 2019 17:44:34 +0000
Message-ID: <02874ECE860811409154E81DA85FBB589674E8A9@ORSMSX121.amr.corp.intel.com>
References: <20190606131053.25103-1-colin.king@canonical.com>
In-Reply-To: <20190606131053.25103-1-colin.king@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzQ0NTdiMjYtMzdlZi00YjZkLWE1ZjgtNWZiMzNhYWZiMWNjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoic05lQVM1c3BPcGRjQk1xaXFsUVNnUEY1U1Z3cFcwdUxxV3ZEdGpcLzh3T1QyZFUwQ2hkS3VMeTJHUTFVXC9cL0FWUiJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH][next] ixgbe: fix potential u32
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
> From: Colin King [mailto:colin.king@canonical.com]
> Sent: Thursday, June 06, 2019 6:11 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com>; David S . Miller <davem@davemloft.net>; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: kernel-janitors@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [PATCH][next] ixgbe: fix potential u32 overflow on shift
> 
> From: Colin Ian King <colin.king@canonical.com>
> 
> The u32 variable rem is being shifted using u32 arithmetic however
> it is being passed to div_u64 that expects the expression to be a u64.
> The 32 bit shift may potentially overflow, so cast rem to a u64 before
> shifting to avoid this.
> 
> Addresses-Coverity: ("Unintentional integer overflow")
> Fixes: cd4583206990 ("ixgbe: implement support for SDP/PPS output on X550
> hardware")
> Fixes: 68d9676fc04e ("ixgbe: fix PTP SDP pin setup on X540 hardware")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
> index 2c4d327fcc2e..ff229d0e9146 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
> @@ -209,7 +209,7 @@ static void ixgbe_ptp_setup_sdp_X540(struct ixgbe_adapter
> *adapter)
>  	 * assumes that the cycle counter shift is small enough to avoid
>  	 * overflowing when shifting the remainder.
>  	 */

With this change, the comment above the div_u64 doesn't make much sense. I would also drop the part about the assuming it won't overflow the remainder.

> -	clock_edge += div_u64((rem << cc->shift), cc->mult);
> +	clock_edge += div_u64(((u64)rem << cc->shift), cc->mult);
>  	trgttiml = (u32)clock_edge;
>  	trgttimh = (u32)(clock_edge >> 32);
> 
> @@ -295,7 +295,7 @@ static void ixgbe_ptp_setup_sdp_X550(struct ixgbe_adapter
> *adapter)
>  	 * assumes that the cycle counter shift is small enough to avoid
>  	 * overflowing when shifting the remainder.
>  	 */

Same here.

Thanks,
Jake

> -	clock_edge += div_u64((rem << cc->shift), cc->mult);
> +	clock_edge += div_u64(((u64)rem << cc->shift), cc->mult);
> 
>  	/* X550 hardware stores the time in 32bits of 'billions of cycles' and
>  	 * 32bits of 'cycles'. There's no guarantee that cycles represents
> --
> 2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
