Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96332D6188
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Dec 2020 17:20:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16914870C9;
	Thu, 10 Dec 2020 16:20:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PHSAVeYg+uZB; Thu, 10 Dec 2020 16:20:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 83022870BC;
	Thu, 10 Dec 2020 16:20:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C30B1BF35D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 16:20:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7778A870B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 16:20:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ltzmbzG+CIsV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Dec 2020 16:20:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AED57870A0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 16:20:03 +0000 (UTC)
IronPort-SDR: eNfA/56DGnb64/cMZgrfqOvF/R1OZyMeO6F4xJgXn5iuzMYcCpnafnOsnYZnKPVmuFDJEm/m+t
 pOhvnyEnBPDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="235876965"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="235876965"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 08:20:02 -0800
IronPort-SDR: bAETIilQj4d+IkpjWrQQNvyXNV0m0m5oQ1nWkE+ymPTQC06TDdzSFyq/9eI/tJT8b9IONTCXgb
 ikFrq5cQ9SKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="484536231"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga004.jf.intel.com with ESMTP; 10 Dec 2020 08:20:00 -0800
Date: Thu, 10 Dec 2020 17:11:05 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>
Message-ID: <20201210161105.GD45760@ranger.igk.intel.com>
References: <20201210121915.14412-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210121915.14412-1-bjorn.topel@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice,
 xsk: Move Rx alloction out of while-loop
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Dec 10, 2020 at 01:19:15PM +0100, Bj=F6rn T=F6pel wrote:
> From: Bj=F6rn T=F6pel <bjorn.topel@intel.com>
> =

> Instead of trying to allocate for each packet, move it outside the
> while loop and try to allocate once every NAPI loop.

To rectify above, it wasn't for each packet but per ICE_RX_BUF_WRITE
cleaned frames (16).

You also have a typo in subject (alloction).

Is spinning a v2 worth it?

> =

> This change boosts the xdpsock rxdrop scenario with 15% more
> packets-per-second.
> =

> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Bj=F6rn T=F6pel <bjorn.topel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_xsk.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ether=
net/intel/ice/ice_xsk.c
> index 797886524054..39757b4cf8f4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> @@ -570,12 +570,6 @@ int ice_clean_rx_irq_zc(struct ice_ring *rx_ring, in=
t budget)
>  		u16 vlan_tag =3D 0;
>  		u8 rx_ptype;
>  =

> -		if (cleaned_count >=3D ICE_RX_BUF_WRITE) {
> -			failure |=3D ice_alloc_rx_bufs_zc(rx_ring,
> -							cleaned_count);
> -			cleaned_count =3D 0;
> -		}
> -
>  		rx_desc =3D ICE_RX_DESC(rx_ring, rx_ring->next_to_clean);
>  =

>  		stat_err_bits =3D BIT(ICE_RX_FLEX_DESC_STATUS0_DD_S);
> @@ -642,6 +636,9 @@ int ice_clean_rx_irq_zc(struct ice_ring *rx_ring, int=
 budget)
>  		ice_receive_skb(rx_ring, skb, vlan_tag);
>  	}
>  =

> +	if (cleaned_count >=3D ICE_RX_BUF_WRITE)
> +		failure =3D !ice_alloc_rx_bufs_zc(rx_ring, cleaned_count);
> +
>  	ice_finalize_xdp_rx(rx_ring, xdp_xmit);
>  	ice_update_rx_ring_stats(rx_ring, total_rx_packets, total_rx_bytes);
>  =

> =

> base-commit: a7105e3472bf6bb3099d1293ea7d70e7783aa582
> -- =

> 2.27.0
> =

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
