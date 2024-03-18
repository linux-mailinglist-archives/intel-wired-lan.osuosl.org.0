Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAE987EF26
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Mar 2024 18:45:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 336BB813CC;
	Mon, 18 Mar 2024 17:45:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RfkumcxxtifN; Mon, 18 Mar 2024 17:45:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DFE78130A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710783917;
	bh=SDubdJQb9S5xrG6JQ6lzVQjoThoj9QRF2ZFHFATteFg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KeTdJEQ9SzBdcv7XjkkMiqbBwSAWb9uZALieMK2vKIkRqQHqRndbxpTEzPYW9V2OT
	 WVWBaqyeR4McD5O8amp3jzpz77YTj33spqxBk1JUcWY57haAaVMB6zfYRuusBaYSgi
	 oOK3V9LoHFCHFqNIr68ICZmtOTUv6tHX6B1jCfNsSnBcT6rp7Jqk0X6fmjHY3D2lUd
	 alVqVxqyHztk5z9dKpL45tURRfFJKA2krmu1LMaHQs+lbU6WQcNDvzrElcqMfpSxlj
	 v31HEJs7hcakr/RPkvVLLWoIB17oCiDTQON/OCIkGw+Kbg8j+VP3uPgGnsuUgci9V2
	 u4XH8P8yWAp7g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DFE78130A;
	Mon, 18 Mar 2024 17:45:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 47B151BF377
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 17:45:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4173B40510
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 17:45:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TmOinKNPyY3H for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Mar 2024 17:45:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B568240176
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B568240176
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B568240176
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 17:45:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 55314CE0B00;
 Mon, 18 Mar 2024 17:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5570FC433C7;
 Mon, 18 Mar 2024 17:45:06 +0000 (UTC)
Date: Mon, 18 Mar 2024 17:45:03 +0000
From: Simon Horman <horms@kernel.org>
To: Erwan Velu <erwanaliasr1@gmail.com>
Message-ID: <20240318174503.GE1623@kernel.org>
References: <20240313090719.33627-2-e.velu@criteo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240313090719.33627-2-e.velu@criteo.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1710783908;
 bh=Rv/2CA5wPLokC7VCqSey3DSFL6DXzXxuAMNj1og1Kh8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WWaNDbWTEAAmKf9IeOXu65Mq96lSZxdoIzl57Yufwp7sGduxsN9HEXIrYzX7xVFRB
 Hy1mtA1Are4jKEG2IACOEirgKrPxv9Zs1dp7fdnMC0bfOtcyEQQneb+Sq2IR+LNeuJ
 Qm4PaSYyJSYzEW1PyUQ3GA1oW4uCUo9cP2Kl9ZFUVbePgoZjMoBtm4yIL6lG3iI5Y6
 Ap2yMBGMzoB+Ep1+VDrr0mYHjUf9hszzwqUb9eC2syA33HpPQrMK2u0+nfb9oVk6BT
 M0dwO4pTylvIrS88SdlZVkZ9B3ZjCplzmiIWt/w24KRM8YTMndNRvb32gsfsIG37Lt
 rRb95s82iaBfg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=WWaNDbWT
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net] i40e: Prevent setting MTU
 if greater than MFS
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
Cc: Erwan Velu <e.velu@criteo.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 13, 2024 at 10:07:16AM +0100, Erwan Velu wrote:
> Commit 6871a7de705 ("[intelxl] Use admin queue to set port MAC address
> and maximum frame size") from iPXE project set the MFS to 0x600 = 1536.
> See https://github.com/ipxe/ipxe/commit/6871a7de705
> 
> At boot time the i40e driver complains about it with
> the following message but continues.
> 
> 	MFS for port 1 has been set below the default: 600
> 
> If the MTU size is increased, the driver accepts it but large packets will
> not be processed by the firmware generating tx_errors. The issue is pretty
> silent for users. i.e doing TCP in such context will generates lots of
> retransmissions until the proper window size (below 1500) will be used.
> 
> To fix this case, it would have been ideal to increase the MFS,
> via i40e_aqc_opc_set_mac_config, incoming patch will take care of it.
> 
> At least, commit prevents setting up an MTU greater than the current MFS.
> It will avoid being in the position of having an MTU set to 9000 on the
> netdev with a firmware refusing packets larger than 1536.
> 
> A typical trace looks like:
> [  377.548696] i40e 0000:5d:00.0 eno5: Error changing mtu to 9000, Max is 1500. MFS is too small.
> 

Hi Erwan, all,

As a fix, I think this patch warrants a fixes tag.
Perhaps this one is appropriate?

Fixes: 41c445ff0f48 ("i40e: main driver core")

> Signed-off-by: Erwan Velu <e.velu@criteo.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index f86578857e8a..85ecf2f3de18 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -2946,7 +2946,7 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
>  	struct i40e_netdev_priv *np = netdev_priv(netdev);
>  	struct i40e_vsi *vsi = np->vsi;
>  	struct i40e_pf *pf = vsi->back;
> -	int frame_size;
> +	int frame_size, mfs, max_mtu;
>  
>  	frame_size = i40e_max_vsi_frame_size(vsi, vsi->xdp_prog);
>  	if (new_mtu > frame_size - I40E_PACKET_HDR_PAD) {

I am fine with this patch, so please take what follows as a suggestion
for improvement, possibly as a follow-up. Not as a hard requirement from
my side.

The part of this function between the two hunks of this patch is:

		netdev_err(netdev, "Error changing mtu to %d, Max is %d\n",
			   new_mtu, frame_size - I40E_PACKET_HDR_PAD);

My reading is that with this patch two different limits are
checked wrt maximum MTU size:

1. A VSI level limit, which relates to RX buffer size
2. A PHY level limit that relates to the MFS

That seems fine to me. But the log message for 1 (above) does
not seem particularly informative wrt which limit has been exceeded.

> @@ -2955,6 +2955,14 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
>  		return -EINVAL;
>  	}
>  
> +	mfs = pf->hw.phy.link_info.max_frame_size;
> +	max_mtu = mfs - I40E_PACKET_HDR_PAD;
> +	if (new_mtu > max_mtu) {
> +		netdev_err(netdev, "Error changing mtu to %d, Max is %d. MFS is too small.\n",
> +			   new_mtu, max_mtu);
> +		return -EINVAL;
> +	}
> +
>  	netdev_dbg(netdev, "changing MTU from %d to %d\n",
>  		   netdev->mtu, new_mtu);
>  	netdev->mtu = new_mtu;
> -- 
> 2.44.0
> 
> 
