Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7613BFCE87
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 20:12:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EBB8D88312;
	Thu, 14 Nov 2019 19:12:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id taeCy6Q3I7Q2; Thu, 14 Nov 2019 19:12:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D34DB88255;
	Thu, 14 Nov 2019 19:12:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CCBE21BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 19:12:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C6E1887F3C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 19:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7iVXmZYu3kC9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 19:12:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BCB9B8750D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 19:12:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 11:12:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="195139894"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga007.jf.intel.com with ESMTP; 14 Nov 2019 11:12:39 -0800
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.169]) by
 ORSMSX103.amr.corp.intel.com ([169.254.5.179]) with mapi id 14.03.0439.000;
 Thu, 14 Nov 2019 11:12:39 -0800
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Richard Cochran <richardcochran@gmail.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH net 08/13] ptp: Introduce strict checking of external
 time stamp options.
Thread-Index: AQHVmxuxoPK+e8/gkEmkIRBM+apU76eLCGPg
Date: Thu, 14 Nov 2019 19:12:38 +0000
Message-ID: <02874ECE860811409154E81DA85FBB589698F6E0@ORSMSX121.amr.corp.intel.com>
References: <20191114184507.18937-9-richardcochran@gmail.com>
In-Reply-To: <20191114184507.18937-9-richardcochran@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOWYwNDliNjUtZDIwOS00Y2I3LTk5ZjktMWNiOWIyZDkxMzg3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiY1pTTWdwbFN6RmJTNTZnNDFtc2p0WCsrVndGQzBhNTVVMUJablc1SlB3b1VJdGU2OEhXZDdKc0JGTjkwTm5qXC8ifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 08/13] ptp: Introduce strict
 checking of external time stamp options.
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
Cc: "Hall, Christopher S" <christopher.s.hall@intel.com>,
 Brandon Streiff <brandon.streiff@ni.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Eugenia Emantayev <eugenia@mellanox.com>, Feras
 Daoud <ferasda@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>,
 Stefan Sorensen <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Richard Cochran <richardcochran@gmail.com>
> Sent: Thursday, November 14, 2019 10:45 AM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; David Miller <davem@davemloft.net>;
> Brandon Streiff <brandon.streiff@ni.com>; Hall, Christopher S
> <christopher.s.hall@intel.com>; Eugenia Emantayev <eugenia@mellanox.com>;
> Felipe Balbi <felipe.balbi@linux.intel.com>; Feras Daoud
> <ferasda@mellanox.com>; Keller, Jacob E <jacob.e.keller@intel.com>; Kirsher,
> Jeffrey T <jeffrey.t.kirsher@intel.com>; Sergei Shtylyov
> <sergei.shtylyov@cogentembedded.com>; Stefan Sorensen
> <stefan.sorensen@spectralink.com>
> Subject: [PATCH net 08/13] ptp: Introduce strict checking of external time stamp
> options.
> 
> User space may request time stamps on rising edges, falling edges, or
> both.  However, the particular mode may or may not be supported in the
> hardware or in the driver.  This patch adds a "strict" flag that tells
> drivers to ensure that the requested mode will be honored.
> 

So, this patch adds the flag *and* modifies the drivers to accept it, but not actually enable strict checking?

I'd prefer if this flag got added, and the drivers were modified in separate patches to both allow the flag and to perform the strict check.. that feels like a cleaner patch boundary.

That would ofcourse break the drivers that reject the strict command until they're fixed in follow-on commands.. hmm

Thanks,
Jake

> Signed-off-by: Richard Cochran <richardcochran@gmail.com>
> ---
>  drivers/net/dsa/mv88e6xxx/ptp.c                     | 3 ++-
>  drivers/net/ethernet/intel/igb/igb_ptp.c            | 3 ++-
>  drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c | 3 ++-
>  drivers/net/ethernet/renesas/ravb_ptp.c             | 3 ++-
>  drivers/net/phy/dp83640.c                           | 3 ++-
>  drivers/ptp/ptp_chardev.c                           | 2 ++
>  include/uapi/linux/ptp_clock.h                      | 4 +++-
>  7 files changed, 15 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/dsa/mv88e6xxx/ptp.c
> b/drivers/net/dsa/mv88e6xxx/ptp.c
> index 076e622a64d6..3b1985902f95 100644
> --- a/drivers/net/dsa/mv88e6xxx/ptp.c
> +++ b/drivers/net/dsa/mv88e6xxx/ptp.c
> @@ -276,7 +276,8 @@ static int mv88e6352_ptp_enable_extts(struct
> mv88e6xxx_chip *chip,
>  	/* Reject requests with unsupported flags */
>  	if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
>  				PTP_RISING_EDGE |
> -				PTP_FALLING_EDGE))
> +				PTP_FALLING_EDGE |
> +				PTP_STRICT_FLAGS))
>  		return -EOPNOTSUPP;
> 
>  	pin = ptp_find_pin(chip->ptp_clock, PTP_PF_EXTTS, rq->extts.index);
> diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c
> b/drivers/net/ethernet/intel/igb/igb_ptp.c
> index 0bce3e0f1af0..3fd60715bca7 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
> @@ -524,7 +524,8 @@ static int igb_ptp_feature_enable_i210(struct
> ptp_clock_info *ptp,
>  		/* Reject requests with unsupported flags */
>  		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
>  					PTP_RISING_EDGE |
> -					PTP_FALLING_EDGE))
> +					PTP_FALLING_EDGE |
> +					PTP_STRICT_FLAGS))
>  			return -EOPNOTSUPP;
> 
>  		if (on) {
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
> b/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
> index 9a40f24e3193..819097d9b583 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
> @@ -239,7 +239,8 @@ static int mlx5_extts_configure(struct ptp_clock_info
> *ptp,
>  	/* Reject requests with unsupported flags */
>  	if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
>  				PTP_RISING_EDGE |
> -				PTP_FALLING_EDGE))
> +				PTP_FALLING_EDGE |
> +				PTP_STRICT_FLAGS))
>  		return -EOPNOTSUPP;
> 
>  	if (rq->extts.index >= clock->ptp_info.n_pins)
> diff --git a/drivers/net/ethernet/renesas/ravb_ptp.c
> b/drivers/net/ethernet/renesas/ravb_ptp.c
> index 666dbee48097..6984bd5b7da9 100644
> --- a/drivers/net/ethernet/renesas/ravb_ptp.c
> +++ b/drivers/net/ethernet/renesas/ravb_ptp.c
> @@ -185,7 +185,8 @@ static int ravb_ptp_extts(struct ptp_clock_info *ptp,
>  	/* Reject requests with unsupported flags */
>  	if (req->flags & ~(PTP_ENABLE_FEATURE |
>  			   PTP_RISING_EDGE |
> -			   PTP_FALLING_EDGE))
> +			   PTP_FALLING_EDGE |
> +			   PTP_STRICT_FLAGS))
>  		return -EOPNOTSUPP;
> 
>  	if (req->index)
> diff --git a/drivers/net/phy/dp83640.c b/drivers/net/phy/dp83640.c
> index 2781b0e2d947..3bba2bea3a88 100644
> --- a/drivers/net/phy/dp83640.c
> +++ b/drivers/net/phy/dp83640.c
> @@ -472,7 +472,8 @@ static int ptp_dp83640_enable(struct ptp_clock_info *ptp,
>  		/* Reject requests with unsupported flags */
>  		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
>  					PTP_RISING_EDGE |
> -					PTP_FALLING_EDGE))
> +					PTP_FALLING_EDGE |
> +					PTP_STRICT_FLAGS))
>  			return -EOPNOTSUPP;
>  		index = rq->extts.index;
>  		if (index >= N_EXT_TS)
> diff --git a/drivers/ptp/ptp_chardev.c b/drivers/ptp/ptp_chardev.c
> index cbbe1237ff8d..9d72ab593f13 100644
> --- a/drivers/ptp/ptp_chardev.c
> +++ b/drivers/ptp/ptp_chardev.c
> @@ -150,6 +150,8 @@ long ptp_ioctl(struct posix_clock *pc, unsigned int cmd,
> unsigned long arg)
>  			break;
>  		}
>  		if (cmd == PTP_EXTTS_REQUEST2) {
> +			/* Tell the drivers to check the flags carefully. */
> +			req.extts.flags |= PTP_STRICT_FLAGS;
>  			/* Make sure no reserved bit is set. */
>  			if ((req.extts.flags & ~PTP_EXTTS_VALID_FLAGS) ||
>  			    req.extts.rsv[0] || req.extts.rsv[1]) {
> diff --git a/include/uapi/linux/ptp_clock.h b/include/uapi/linux/ptp_clock.h
> index 304059b1609d..9dc9d0079e98 100644
> --- a/include/uapi/linux/ptp_clock.h
> +++ b/include/uapi/linux/ptp_clock.h
> @@ -31,6 +31,7 @@
>  #define PTP_ENABLE_FEATURE (1<<0)
>  #define PTP_RISING_EDGE    (1<<1)
>  #define PTP_FALLING_EDGE   (1<<2)
> +#define PTP_STRICT_FLAGS   (1<<3)
>  #define PTP_EXTTS_EDGES    (PTP_RISING_EDGE | PTP_FALLING_EDGE)
> 
>  /*
> @@ -38,7 +39,8 @@
>   */
>  #define PTP_EXTTS_VALID_FLAGS	(PTP_ENABLE_FEATURE |	\
>  				 PTP_RISING_EDGE |	\
> -				 PTP_FALLING_EDGE)
> +				 PTP_FALLING_EDGE |	\
> +				 PTP_STRICT_FLAGS)
> 
>  /*
>   * flag fields valid for the original PTP_EXTTS_REQUEST ioctl.
> --
> 2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
