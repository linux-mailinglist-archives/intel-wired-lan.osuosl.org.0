Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A0139687
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2019 22:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9452288296;
	Fri,  7 Jun 2019 20:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EbwRhEacOcib; Fri,  7 Jun 2019 20:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC34A8829D;
	Fri,  7 Jun 2019 20:12:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BD73C1BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 20:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B7A508829A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 20:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kfidli30MFpD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jun 2019 20:12:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 29F5E88296
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 20:12:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 13:12:34 -0700
X-ExtLoop1: 1
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga005.fm.intel.com with ESMTP; 07 Jun 2019 13:12:33 -0700
Received: from orsmsx161.amr.corp.intel.com (10.22.240.84) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 7 Jun 2019 13:12:33 -0700
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.133]) by
 ORSMSX161.amr.corp.intel.com ([169.254.4.126]) with mapi id 14.03.0415.000;
 Fri, 7 Jun 2019 13:12:33 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Colin King <colin.king@canonical.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>, "David S . Miller" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH][next][V2] ixgbe: fix potential u32 overflow on shift
Thread-Index: AQHVHV2OjqHrl9oJCUOLbN4+Vk3DLaaQn9mg
Date: Fri, 7 Jun 2019 20:12:33 +0000
Message-ID: <02874ECE860811409154E81DA85FBB589674F4D9@ORSMSX121.amr.corp.intel.com>
References: <20190607181920.23339-1-colin.king@canonical.com>
In-Reply-To: <20190607181920.23339-1-colin.king@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDgzYTI2MjctYWRmOC00MzIyLTg3ZjktYmQ4ZWJhZjYxNjQ2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiXC9BM3NKY01ieTVneE1rRWRGbldvZWlRYjVJT01DZHByNTJodE15bEkrc3RJM1hYTks1TVE0dDFlMmV3TEw0M2wifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
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
> From: Colin King [mailto:colin.king@canonical.com]
> Sent: Friday, June 07, 2019 11:19 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com>; David S . Miller <davem@davemloft.net>; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: kernel-janitors@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [PATCH][next][V2] ixgbe: fix potential u32 overflow on shift
> 
> From: Colin Ian King <colin.king@canonical.com>
> 
> The u32 variable rem is being shifted using u32 arithmetic however
> it is being passed to div_u64 that expects the expression to be a u64.
> The 32 bit shift may potentially overflow, so cast rem to a u64 before
> shifting to avoid this.  Also remove comment about overflow.
> 
> Addresses-Coverity: ("Unintentional integer overflow")
> Fixes: cd4583206990 ("ixgbe: implement support for SDP/PPS output on X550
> hardware")
> Fixes: 68d9676fc04e ("ixgbe: fix PTP SDP pin setup on X540 hardware")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
> 
> V2: update comment

Thanks Colin!

Acked-by: Jacob Keller <jacob.e.keller@intel.com>

Regards,
Jake

> 
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
> index 2c4d327fcc2e..0be13a90ff79 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
> @@ -205,11 +205,8 @@ static void ixgbe_ptp_setup_sdp_X540(struct
> ixgbe_adapter *adapter)
>  	 */
>  	rem = (NS_PER_SEC - rem);
> 
> -	/* Adjust the clock edge to align with the next full second. This
> -	 * assumes that the cycle counter shift is small enough to avoid
> -	 * overflowing when shifting the remainder.
> -	 */
> -	clock_edge += div_u64((rem << cc->shift), cc->mult);
> +	/* Adjust the clock edge to align with the next full second. */
> +	clock_edge += div_u64(((u64)rem << cc->shift), cc->mult);
>  	trgttiml = (u32)clock_edge;
>  	trgttimh = (u32)(clock_edge >> 32);
> 
> @@ -291,11 +288,8 @@ static void ixgbe_ptp_setup_sdp_X550(struct
> ixgbe_adapter *adapter)
>  	 */
>  	rem = (NS_PER_SEC - rem);
> 
> -	/* Adjust the clock edge to align with the next full second. This
> -	 * assumes that the cycle counter shift is small enough to avoid
> -	 * overflowing when shifting the remainder.
> -	 */
> -	clock_edge += div_u64((rem << cc->shift), cc->mult);
> +	/* Adjust the clock edge to align with the next full second. */
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
