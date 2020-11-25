Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4D22C4C4C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Nov 2020 01:48:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA01C86FC3;
	Thu, 26 Nov 2020 00:48:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BfaX-Qej_hzk; Thu, 26 Nov 2020 00:48:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 88A39870D1;
	Thu, 26 Nov 2020 00:48:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 533291BF588
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 21:14:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4B93387463
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 21:14:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VFsPZjnvWRD9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Nov 2020 21:14:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 57ADA87283
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 21:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606338854;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MxqMmVFS1i7z4/eiJmcQ4ElmWxWDW0lS4CPEda/TKho=;
 b=fSimy67AeQygTCThH+ffXC0pEYnRKsjTsVJHoYFxoyP9Tz2bkEU/avNbfDT29ao5Smo6gI
 MC3mduScm6oAJdu5PB9MBTF+E/2b6bu7sr/edJkFuSk6FRKf5XEdWrk72QqnKUOBBAaT19
 LsX05aIY3AD7JyaSLGv+o6LvvmVdG7o=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-139-lpbg32H6OM6C1enJaTRW_g-1; Wed, 25 Nov 2020 16:14:12 -0500
X-MC-Unique: lpbg32H6OM6C1enJaTRW_g-1
Received: by mail-wr1-f69.google.com with SMTP id b5so1228779wrp.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 13:14:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=riqPBXLsj3daIRkGe6zDFFwZ0EF5ICHex6iERZ0x1Oo=;
 b=OH6Ose4XIpPQXiKfllxjZNb6lg59YXpLZb9Uwp7U5paB1hVsYkBbdKl8LBT7etUDRU
 rprMXAd8xdQJwJO3EhzfZ5cb+ev/X6pB08D9WterchmH+4akIpoVh/iDxg4oRFEDcWF+
 wdWkSe8cWCJ89hYbTO+7jFtTvxBc7fJPhIsGNePlfZ4y6X/dTmCAw9k/USMfc7oSZKx1
 F5cdXg+e3WkQOL9TKGI4O71DqNI54xl69xsP0fij7h76Q3tuupsiSECTWvC8cu94WHiA
 tL+HoGdwpDwF+HH0hYAbpTkkSnMX4xeWOx8ptC9fjx6C99Jxp+J/3PXq3vdUeKXsTUs6
 G0dw==
X-Gm-Message-State: AOAM532w8mPpSQoCNBh1K2YZfCJFu3r1HiE6qHL1gw1CAQAZRsyNPlvo
 20jRXf44B/qk8SNV4l/x5aRw6smlQLo4c9tB261iYvvsHE3XaPk/HL5Yf7iV7/p3FGxNRDjoqT6
 Awi3rrSx1/fxfjfWMmIBSDYTZloKEkQ==
X-Received: by 2002:a1c:6382:: with SMTP id x124mr4830370wmb.46.1606338850255; 
 Wed, 25 Nov 2020 13:14:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzzYEthBgXky9P3qiWSEwQ7BqYz0cHN2HeOwgQh5OhpJuy0OJF+fPtIduOumRR3DtPBjMlJ6A==
X-Received: by 2002:a1c:6382:: with SMTP id x124mr4830319wmb.46.1606338849761; 
 Wed, 25 Nov 2020 13:14:09 -0800 (PST)
Received: from redhat.com (bzq-79-176-44-197.red.bezeqint.net. [79.176.44.197])
 by smtp.gmail.com with ESMTPSA id s4sm6178763wro.10.2020.11.25.13.14.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Nov 2020 13:14:08 -0800 (PST)
Date: Wed, 25 Nov 2020 16:14:03 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>
Message-ID: <20201125161355-mutt-send-email-mst@kernel.org>
References: <20201119083024.119566-1-bjorn.topel@gmail.com>
 <20201119083024.119566-7-bjorn.topel@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20201119083024.119566-7-bjorn.topel@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Approved-At: Thu, 26 Nov 2020 00:48:16 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 06/10] xsk: propagate
 napi_id to XDP socket Rx path
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
Cc: kda@linux-powerpc.org, ast@kernel.org, edumazet@google.com,
 thomas.petazzoni@bootlin.com, ioana.ciornei@nxp.com, ecree@solarflare.com,
 aelior@marvell.com, akiyano@amazon.com, sthemmin@microsoft.com,
 ruxandra.radulescu@nxp.com, maximmi@nvidia.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>, sgoutham@marvell.com,
 grygorii.strashko@ti.com, qi.z.zhang@intel.com, mcroce@microsoft.com,
 michael.chan@broadcom.com, magnus.karlsson@intel.com, daniel@iogearbox.net,
 netdev@vger.kernel.org, ilias.apalodimas@linaro.org, tariqt@nvidia.com,
 netanel@amazon.com, jonathan.lemon@gmail.com, bpf@vger.kernel.org,
 saeedm@nvidia.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 19, 2020 at 09:30:20AM +0100, Bj=C3=B6rn T=C3=B6pel wrote:
> From: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@intel.com>
> =

> Add napi_id to the xdp_rxq_info structure, and make sure the XDP
> socket pick up the napi_id in the Rx path. The napi_id is used to find
> the corresponding NAPI structure for socket busy polling.
> =

> Acked-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>
> Acked-by: Tariq Toukan <tariqt@nvidia.com>
> Signed-off-by: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@intel.com>

For virtio:

Acked-by: Michael S. Tsirkin <mst@redhat.com>

> ---
>  drivers/net/ethernet/amazon/ena/ena_netdev.c  |  2 +-
>  drivers/net/ethernet/broadcom/bnxt/bnxt.c     |  2 +-
>  .../ethernet/cavium/thunder/nicvf_queues.c    |  2 +-
>  .../net/ethernet/freescale/dpaa2/dpaa2-eth.c  |  2 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  2 +-
>  drivers/net/ethernet/intel/ice/ice_base.c     |  4 ++--
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |  2 +-
>  drivers/net/ethernet/intel/igb/igb_main.c     |  2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  2 +-
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  2 +-
>  drivers/net/ethernet/marvell/mvneta.c         |  2 +-
>  .../net/ethernet/marvell/mvpp2/mvpp2_main.c   |  4 ++--
>  drivers/net/ethernet/mellanox/mlx4/en_rx.c    |  2 +-
>  .../net/ethernet/mellanox/mlx5/core/en_main.c |  2 +-
>  .../ethernet/netronome/nfp/nfp_net_common.c   |  2 +-
>  drivers/net/ethernet/qlogic/qede/qede_main.c  |  2 +-
>  drivers/net/ethernet/sfc/rx_common.c          |  2 +-
>  drivers/net/ethernet/socionext/netsec.c       |  2 +-
>  drivers/net/ethernet/ti/cpsw_priv.c           |  2 +-
>  drivers/net/hyperv/netvsc.c                   |  2 +-
>  drivers/net/tun.c                             |  2 +-
>  drivers/net/veth.c                            | 12 ++++++++----
>  drivers/net/virtio_net.c                      |  2 +-
>  drivers/net/xen-netfront.c                    |  2 +-
>  include/net/busy_poll.h                       | 19 +++++++++++++++----
>  include/net/xdp.h                             |  3 ++-
>  net/core/dev.c                                |  2 +-
>  net/core/xdp.c                                |  3 ++-
>  net/xdp/xsk.c                                 |  1 +
>  29 files changed, 54 insertions(+), 36 deletions(-)
> =

> diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c b/drivers/net/e=
thernet/amazon/ena/ena_netdev.c
> index e8131dadc22c..6ad59f0068f6 100644
> --- a/drivers/net/ethernet/amazon/ena/ena_netdev.c
> +++ b/drivers/net/ethernet/amazon/ena/ena_netdev.c
> @@ -416,7 +416,7 @@ static int ena_xdp_register_rxq_info(struct ena_ring =
*rx_ring)
>  {
>  	int rc;
>  =

> -	rc =3D xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev, rx_ring->qi=
d);
> +	rc =3D xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev, rx_ring->qi=
d, 0);
>  =

>  	if (rc) {
>  		netif_err(rx_ring->adapter, ifup, rx_ring->netdev,
> diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethe=
rnet/broadcom/bnxt/bnxt.c
> index 7975f59735d6..725d929eddb1 100644
> --- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
> +++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
> @@ -2884,7 +2884,7 @@ static int bnxt_alloc_rx_rings(struct bnxt *bp)
>  		if (rc)
>  			return rc;
>  =

> -		rc =3D xdp_rxq_info_reg(&rxr->xdp_rxq, bp->dev, i);
> +		rc =3D xdp_rxq_info_reg(&rxr->xdp_rxq, bp->dev, i, 0);
>  		if (rc < 0)
>  			return rc;
>  =

> diff --git a/drivers/net/ethernet/cavium/thunder/nicvf_queues.c b/drivers=
/net/ethernet/cavium/thunder/nicvf_queues.c
> index 7a141ce32e86..f782e6af45e9 100644
> --- a/drivers/net/ethernet/cavium/thunder/nicvf_queues.c
> +++ b/drivers/net/ethernet/cavium/thunder/nicvf_queues.c
> @@ -770,7 +770,7 @@ static void nicvf_rcv_queue_config(struct nicvf *nic,=
 struct queue_set *qs,
>  	rq->caching =3D 1;
>  =

>  	/* Driver have no proper error path for failed XDP RX-queue info reg */
> -	WARN_ON(xdp_rxq_info_reg(&rq->xdp_rxq, nic->netdev, qidx) < 0);
> +	WARN_ON(xdp_rxq_info_reg(&rq->xdp_rxq, nic->netdev, qidx, 0) < 0);
>  =

>  	/* Send a mailbox msg to PF to config RQ */
>  	mbx.rq.msg =3D NIC_MBOX_MSG_RQ_CFG;
> diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.c b/drivers/n=
et/ethernet/freescale/dpaa2/dpaa2-eth.c
> index cf9400a9886d..40953980e846 100644
> --- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.c
> +++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.c
> @@ -3334,7 +3334,7 @@ static int dpaa2_eth_setup_rx_flow(struct dpaa2_eth=
_priv *priv,
>  		return 0;
>  =

>  	err =3D xdp_rxq_info_reg(&fq->channel->xdp_rxq, priv->net_dev,
> -			       fq->flowid);
> +			       fq->flowid, 0);
>  	if (err) {
>  		dev_err(dev, "xdp_rxq_info_reg failed\n");
>  		return err;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/et=
hernet/intel/i40e/i40e_txrx.c
> index c21548c71bb1..9f73cd7aee09 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -1447,7 +1447,7 @@ int i40e_setup_rx_descriptors(struct i40e_ring *rx_=
ring)
>  	/* XDP RX-queue info only needed for RX rings exposed to XDP */
>  	if (rx_ring->vsi->type =3D=3D I40E_VSI_MAIN) {
>  		err =3D xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
> -				       rx_ring->queue_index);
> +				       rx_ring->queue_index, rx_ring->q_vector->napi.napi_id);
>  		if (err < 0)
>  			return err;
>  	}
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethe=
rnet/intel/ice/ice_base.c
> index fe4320e2d1f2..3124a3bf519a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -306,7 +306,7 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
>  		if (!xdp_rxq_info_is_reg(&ring->xdp_rxq))
>  			/* coverity[check_return] */
>  			xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
> -					 ring->q_index);
> +					 ring->q_index, ring->q_vector->napi.napi_id);
>  =

>  		ring->xsk_pool =3D ice_xsk_pool(ring);
>  		if (ring->xsk_pool) {
> @@ -333,7 +333,7 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
>  				/* coverity[check_return] */
>  				xdp_rxq_info_reg(&ring->xdp_rxq,
>  						 ring->netdev,
> -						 ring->q_index);
> +						 ring->q_index, ring->q_vector->napi.napi_id);
>  =

>  			err =3D xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
>  							 MEM_TYPE_PAGE_SHARED,
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethe=
rnet/intel/ice/ice_txrx.c
> index eae75260fe20..77d5eae6b4c2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -483,7 +483,7 @@ int ice_setup_rx_ring(struct ice_ring *rx_ring)
>  	if (rx_ring->vsi->type =3D=3D ICE_VSI_PF &&
>  	    !xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
>  		if (xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
> -				     rx_ring->q_index))
> +				     rx_ring->q_index, rx_ring->q_vector->napi.napi_id))
>  			goto err;
>  	return 0;
>  =

> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethe=
rnet/intel/igb/igb_main.c
> index 5fc2c381da55..6a4ef4934fcf 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4352,7 +4352,7 @@ int igb_setup_rx_resources(struct igb_ring *rx_ring)
>  =

>  	/* XDP RX-queue info */
>  	if (xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
> -			     rx_ring->queue_index) < 0)
> +			     rx_ring->queue_index, 0) < 0)
>  		goto err;
>  =

>  	return 0;
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/=
ethernet/intel/ixgbe/ixgbe_main.c
> index 45ae33e15303..50e6b8b6ba7b 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -6577,7 +6577,7 @@ int ixgbe_setup_rx_resources(struct ixgbe_adapter *=
adapter,
>  =

>  	/* XDP RX-queue info */
>  	if (xdp_rxq_info_reg(&rx_ring->xdp_rxq, adapter->netdev,
> -			     rx_ring->queue_index) < 0)
> +			     rx_ring->queue_index, rx_ring->q_vector->napi.napi_id) < 0)
>  		goto err;
>  =

>  	rx_ring->xdp_prog =3D adapter->xdp_prog;
> diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/=
net/ethernet/intel/ixgbevf/ixgbevf_main.c
> index 82fce27f682b..4061cd7db5dd 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> +++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> @@ -3493,7 +3493,7 @@ int ixgbevf_setup_rx_resources(struct ixgbevf_adapt=
er *adapter,
>  =

>  	/* XDP RX-queue info */
>  	if (xdp_rxq_info_reg(&rx_ring->xdp_rxq, adapter->netdev,
> -			     rx_ring->queue_index) < 0)
> +			     rx_ring->queue_index, 0) < 0)
>  		goto err;
>  =

>  	rx_ring->xdp_prog =3D adapter->xdp_prog;
> diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet=
/marvell/mvneta.c
> index 183530ed4d1d..ba6dcb19bb1d 100644
> --- a/drivers/net/ethernet/marvell/mvneta.c
> +++ b/drivers/net/ethernet/marvell/mvneta.c
> @@ -3227,7 +3227,7 @@ static int mvneta_create_page_pool(struct mvneta_po=
rt *pp,
>  		return err;
>  	}
>  =

> -	err =3D xdp_rxq_info_reg(&rxq->xdp_rxq, pp->dev, rxq->id);
> +	err =3D xdp_rxq_info_reg(&rxq->xdp_rxq, pp->dev, rxq->id, 0);
>  	if (err < 0)
>  		goto err_free_pp;
>  =

> diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c b/drivers/ne=
t/ethernet/marvell/mvpp2/mvpp2_main.c
> index 3069e192d773..5504cbc24970 100644
> --- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
> +++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
> @@ -2614,11 +2614,11 @@ static int mvpp2_rxq_init(struct mvpp2_port *port,
>  	mvpp2_rxq_status_update(port, rxq->id, 0, rxq->size);
>  =

>  	if (priv->percpu_pools) {
> -		err =3D xdp_rxq_info_reg(&rxq->xdp_rxq_short, port->dev, rxq->id);
> +		err =3D xdp_rxq_info_reg(&rxq->xdp_rxq_short, port->dev, rxq->id, 0);
>  		if (err < 0)
>  			goto err_free_dma;
>  =

> -		err =3D xdp_rxq_info_reg(&rxq->xdp_rxq_long, port->dev, rxq->id);
> +		err =3D xdp_rxq_info_reg(&rxq->xdp_rxq_long, port->dev, rxq->id, 0);
>  		if (err < 0)
>  			goto err_unregister_rxq_short;
>  =

> diff --git a/drivers/net/ethernet/mellanox/mlx4/en_rx.c b/drivers/net/eth=
ernet/mellanox/mlx4/en_rx.c
> index b0f79a5151cf..40775cb8fb2a 100644
> --- a/drivers/net/ethernet/mellanox/mlx4/en_rx.c
> +++ b/drivers/net/ethernet/mellanox/mlx4/en_rx.c
> @@ -283,7 +283,7 @@ int mlx4_en_create_rx_ring(struct mlx4_en_priv *priv,
>  	ring->log_stride =3D ffs(ring->stride) - 1;
>  	ring->buf_size =3D ring->size * ring->stride + TXBB_SIZE;
>  =

> -	if (xdp_rxq_info_reg(&ring->xdp_rxq, priv->dev, queue_index) < 0)
> +	if (xdp_rxq_info_reg(&ring->xdp_rxq, priv->dev, queue_index, 0) < 0)
>  		goto err_ring;
>  =

>  	tmp =3D size * roundup_pow_of_two(MLX4_EN_MAX_RX_FRAGS *
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c b/drivers/=
net/ethernet/mellanox/mlx5/core/en_main.c
> index 527c5f12c5af..427fc376fe1a 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
> @@ -434,7 +434,7 @@ static int mlx5e_alloc_rq(struct mlx5e_channel *c,
>  	rq_xdp_ix =3D rq->ix;
>  	if (xsk)
>  		rq_xdp_ix +=3D params->num_channels * MLX5E_RQ_GROUP_XSK;
> -	err =3D xdp_rxq_info_reg(&rq->xdp_rxq, rq->netdev, rq_xdp_ix);
> +	err =3D xdp_rxq_info_reg(&rq->xdp_rxq, rq->netdev, rq_xdp_ix, 0);
>  	if (err < 0)
>  		goto err_rq_xdp_prog;
>  =

> diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_common.c b/driver=
s/net/ethernet/netronome/nfp/nfp_net_common.c
> index b150da43adb2..b4acf2f41e84 100644
> --- a/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
> +++ b/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
> @@ -2533,7 +2533,7 @@ nfp_net_rx_ring_alloc(struct nfp_net_dp *dp, struct=
 nfp_net_rx_ring *rx_ring)
>  =

>  	if (dp->netdev) {
>  		err =3D xdp_rxq_info_reg(&rx_ring->xdp_rxq, dp->netdev,
> -				       rx_ring->idx);
> +				       rx_ring->idx, rx_ring->r_vec->napi.napi_id);
>  		if (err < 0)
>  			return err;
>  	}
> diff --git a/drivers/net/ethernet/qlogic/qede/qede_main.c b/drivers/net/e=
thernet/qlogic/qede/qede_main.c
> index 05e3a3b60269..9cf960a6d007 100644
> --- a/drivers/net/ethernet/qlogic/qede/qede_main.c
> +++ b/drivers/net/ethernet/qlogic/qede/qede_main.c
> @@ -1762,7 +1762,7 @@ static void qede_init_fp(struct qede_dev *edev)
>  =

>  			/* Driver have no error path from here */
>  			WARN_ON(xdp_rxq_info_reg(&fp->rxq->xdp_rxq, edev->ndev,
> -						 fp->rxq->rxq_id) < 0);
> +						 fp->rxq->rxq_id, 0) < 0);
>  =

>  			if (xdp_rxq_info_reg_mem_model(&fp->rxq->xdp_rxq,
>  						       MEM_TYPE_PAGE_ORDER0,
> diff --git a/drivers/net/ethernet/sfc/rx_common.c b/drivers/net/ethernet/=
sfc/rx_common.c
> index 19cf7cac1e6e..68fc7d317693 100644
> --- a/drivers/net/ethernet/sfc/rx_common.c
> +++ b/drivers/net/ethernet/sfc/rx_common.c
> @@ -262,7 +262,7 @@ void efx_init_rx_queue(struct efx_rx_queue *rx_queue)
>  =

>  	/* Initialise XDP queue information */
>  	rc =3D xdp_rxq_info_reg(&rx_queue->xdp_rxq_info, efx->net_dev,
> -			      rx_queue->core_index);
> +			      rx_queue->core_index, 0);
>  =

>  	if (rc) {
>  		netif_err(efx, rx_err, efx->net_dev,
> diff --git a/drivers/net/ethernet/socionext/netsec.c b/drivers/net/ethern=
et/socionext/netsec.c
> index 1503cc9ec6e2..27d3c9d9210e 100644
> --- a/drivers/net/ethernet/socionext/netsec.c
> +++ b/drivers/net/ethernet/socionext/netsec.c
> @@ -1304,7 +1304,7 @@ static int netsec_setup_rx_dring(struct netsec_priv=
 *priv)
>  		goto err_out;
>  	}
>  =

> -	err =3D xdp_rxq_info_reg(&dring->xdp_rxq, priv->ndev, 0);
> +	err =3D xdp_rxq_info_reg(&dring->xdp_rxq, priv->ndev, 0, priv->napi.nap=
i_id);
>  	if (err)
>  		goto err_out;
>  =

> diff --git a/drivers/net/ethernet/ti/cpsw_priv.c b/drivers/net/ethernet/t=
i/cpsw_priv.c
> index 31c5e36ff706..6dd73bd0f458 100644
> --- a/drivers/net/ethernet/ti/cpsw_priv.c
> +++ b/drivers/net/ethernet/ti/cpsw_priv.c
> @@ -1186,7 +1186,7 @@ static int cpsw_ndev_create_xdp_rxq(struct cpsw_pri=
v *priv, int ch)
>  	pool =3D cpsw->page_pool[ch];
>  	rxq =3D &priv->xdp_rxq[ch];
>  =

> -	ret =3D xdp_rxq_info_reg(rxq, priv->ndev, ch);
> +	ret =3D xdp_rxq_info_reg(rxq, priv->ndev, ch, 0);
>  	if (ret)
>  		return ret;
>  =

> diff --git a/drivers/net/hyperv/netvsc.c b/drivers/net/hyperv/netvsc.c
> index 0c3de94b5178..fa8341f8359a 100644
> --- a/drivers/net/hyperv/netvsc.c
> +++ b/drivers/net/hyperv/netvsc.c
> @@ -1499,7 +1499,7 @@ struct netvsc_device *netvsc_device_add(struct hv_d=
evice *device,
>  		u64_stats_init(&nvchan->tx_stats.syncp);
>  		u64_stats_init(&nvchan->rx_stats.syncp);
>  =

> -		ret =3D xdp_rxq_info_reg(&nvchan->xdp_rxq, ndev, i);
> +		ret =3D xdp_rxq_info_reg(&nvchan->xdp_rxq, ndev, i, 0);
>  =

>  		if (ret) {
>  			netdev_err(ndev, "xdp_rxq_info_reg fail: %d\n", ret);
> diff --git a/drivers/net/tun.c b/drivers/net/tun.c
> index 3d45d56172cb..8867d39db6ac 100644
> --- a/drivers/net/tun.c
> +++ b/drivers/net/tun.c
> @@ -780,7 +780,7 @@ static int tun_attach(struct tun_struct *tun, struct =
file *file,
>  	} else {
>  		/* Setup XDP RX-queue info, for new tfile getting attached */
>  		err =3D xdp_rxq_info_reg(&tfile->xdp_rxq,
> -				       tun->dev, tfile->queue_index);
> +				       tun->dev, tfile->queue_index, 0);
>  		if (err < 0)
>  			goto out;
>  		err =3D xdp_rxq_info_reg_mem_model(&tfile->xdp_rxq,
> diff --git a/drivers/net/veth.c b/drivers/net/veth.c
> index 8c737668008a..9bd37c7151f8 100644
> --- a/drivers/net/veth.c
> +++ b/drivers/net/veth.c
> @@ -884,7 +884,6 @@ static int veth_napi_add(struct net_device *dev)
>  	for (i =3D 0; i < dev->real_num_rx_queues; i++) {
>  		struct veth_rq *rq =3D &priv->rq[i];
>  =

> -		netif_napi_add(dev, &rq->xdp_napi, veth_poll, NAPI_POLL_WEIGHT);
>  		napi_enable(&rq->xdp_napi);
>  	}
>  =

> @@ -926,7 +925,8 @@ static int veth_enable_xdp(struct net_device *dev)
>  		for (i =3D 0; i < dev->real_num_rx_queues; i++) {
>  			struct veth_rq *rq =3D &priv->rq[i];
>  =

> -			err =3D xdp_rxq_info_reg(&rq->xdp_rxq, dev, i);
> +			netif_napi_add(dev, &rq->xdp_napi, veth_poll, NAPI_POLL_WEIGHT);
> +			err =3D xdp_rxq_info_reg(&rq->xdp_rxq, dev, i, rq->xdp_napi.napi_id);
>  			if (err < 0)
>  				goto err_rxq_reg;
>  =

> @@ -952,8 +952,12 @@ static int veth_enable_xdp(struct net_device *dev)
>  err_reg_mem:
>  	xdp_rxq_info_unreg(&priv->rq[i].xdp_rxq);
>  err_rxq_reg:
> -	for (i--; i >=3D 0; i--)
> -		xdp_rxq_info_unreg(&priv->rq[i].xdp_rxq);
> +	for (i--; i >=3D 0; i--) {
> +		struct veth_rq *rq =3D &priv->rq[i];
> +
> +		xdp_rxq_info_unreg(&rq->xdp_rxq);
> +		netif_napi_del(&rq->xdp_napi);
> +	}
>  =

>  	return err;
>  }
> diff --git a/drivers/net/virtio_net.c b/drivers/net/virtio_net.c
> index 21b71148c532..052975ea0af4 100644
> --- a/drivers/net/virtio_net.c
> +++ b/drivers/net/virtio_net.c
> @@ -1485,7 +1485,7 @@ static int virtnet_open(struct net_device *dev)
>  			if (!try_fill_recv(vi, &vi->rq[i], GFP_KERNEL))
>  				schedule_delayed_work(&vi->refill, 0);
>  =

> -		err =3D xdp_rxq_info_reg(&vi->rq[i].xdp_rxq, dev, i);
> +		err =3D xdp_rxq_info_reg(&vi->rq[i].xdp_rxq, dev, i, vi->rq[i].napi.na=
pi_id);
>  		if (err < 0)
>  			return err;
>  =

> diff --git a/drivers/net/xen-netfront.c b/drivers/net/xen-netfront.c
> index 920cac4385bf..b01848ef4649 100644
> --- a/drivers/net/xen-netfront.c
> +++ b/drivers/net/xen-netfront.c
> @@ -2014,7 +2014,7 @@ static int xennet_create_page_pool(struct netfront_=
queue *queue)
>  	}
>  =

>  	err =3D xdp_rxq_info_reg(&queue->xdp_rxq, queue->info->netdev,
> -			       queue->id);
> +			       queue->id, 0);
>  	if (err) {
>  		netdev_err(queue->info->netdev, "xdp_rxq_info_reg failed\n");
>  		goto err_free_pp;
> diff --git a/include/net/busy_poll.h b/include/net/busy_poll.h
> index 2f8f51807b83..45b3e04b99d3 100644
> --- a/include/net/busy_poll.h
> +++ b/include/net/busy_poll.h
> @@ -135,14 +135,25 @@ static inline void sk_mark_napi_id(struct sock *sk,=
 const struct sk_buff *skb)
>  	sk_rx_queue_set(sk, skb);
>  }
>  =

> -/* variant used for unconnected sockets */
> -static inline void sk_mark_napi_id_once(struct sock *sk,
> -					const struct sk_buff *skb)
> +static inline void __sk_mark_napi_id_once_xdp(struct sock *sk, unsigned =
int napi_id)
>  {
>  #ifdef CONFIG_NET_RX_BUSY_POLL
>  	if (!READ_ONCE(sk->sk_napi_id))
> -		WRITE_ONCE(sk->sk_napi_id, skb->napi_id);
> +		WRITE_ONCE(sk->sk_napi_id, napi_id);
>  #endif
>  }
>  =

> +/* variant used for unconnected sockets */
> +static inline void sk_mark_napi_id_once(struct sock *sk,
> +					const struct sk_buff *skb)
> +{
> +	__sk_mark_napi_id_once_xdp(sk, skb->napi_id);
> +}
> +
> +static inline void sk_mark_napi_id_once_xdp(struct sock *sk,
> +					    const struct xdp_buff *xdp)
> +{
> +	__sk_mark_napi_id_once_xdp(sk, xdp->rxq->napi_id);
> +}
> +
>  #endif /* _LINUX_NET_BUSY_POLL_H */
> diff --git a/include/net/xdp.h b/include/net/xdp.h
> index 7d48b2ae217a..700ad5db7f5d 100644
> --- a/include/net/xdp.h
> +++ b/include/net/xdp.h
> @@ -59,6 +59,7 @@ struct xdp_rxq_info {
>  	u32 queue_index;
>  	u32 reg_state;
>  	struct xdp_mem_info mem;
> +	unsigned int napi_id;
>  } ____cacheline_aligned; /* perf critical, avoid false-sharing */
>  =

>  struct xdp_txq_info {
> @@ -226,7 +227,7 @@ static inline void xdp_release_frame(struct xdp_frame=
 *xdpf)
>  }
>  =

>  int xdp_rxq_info_reg(struct xdp_rxq_info *xdp_rxq,
> -		     struct net_device *dev, u32 queue_index);
> +		     struct net_device *dev, u32 queue_index, unsigned int napi_id);
>  void xdp_rxq_info_unreg(struct xdp_rxq_info *xdp_rxq);
>  void xdp_rxq_info_unused(struct xdp_rxq_info *xdp_rxq);
>  bool xdp_rxq_info_is_reg(struct xdp_rxq_info *xdp_rxq);
> diff --git a/net/core/dev.c b/net/core/dev.c
> index 7a1e5936c67f..3b6b0e175fe7 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c
> @@ -9810,7 +9810,7 @@ static int netif_alloc_rx_queues(struct net_device =
*dev)
>  		rx[i].dev =3D dev;
>  =

>  		/* XDP RX-queue setup */
> -		err =3D xdp_rxq_info_reg(&rx[i].xdp_rxq, dev, i);
> +		err =3D xdp_rxq_info_reg(&rx[i].xdp_rxq, dev, i, 0);
>  		if (err < 0)
>  			goto err_rxq_info;
>  	}
> diff --git a/net/core/xdp.c b/net/core/xdp.c
> index 3d330ebda893..17ffd33c6b18 100644
> --- a/net/core/xdp.c
> +++ b/net/core/xdp.c
> @@ -158,7 +158,7 @@ static void xdp_rxq_info_init(struct xdp_rxq_info *xd=
p_rxq)
>  =

>  /* Returns 0 on success, negative on failure */
>  int xdp_rxq_info_reg(struct xdp_rxq_info *xdp_rxq,
> -		     struct net_device *dev, u32 queue_index)
> +		     struct net_device *dev, u32 queue_index, unsigned int napi_id)
>  {
>  	if (xdp_rxq->reg_state =3D=3D REG_STATE_UNUSED) {
>  		WARN(1, "Driver promised not to register this");
> @@ -179,6 +179,7 @@ int xdp_rxq_info_reg(struct xdp_rxq_info *xdp_rxq,
>  	xdp_rxq_info_init(xdp_rxq);
>  	xdp_rxq->dev =3D dev;
>  	xdp_rxq->queue_index =3D queue_index;
> +	xdp_rxq->napi_id =3D napi_id;
>  =

>  	xdp_rxq->reg_state =3D REG_STATE_REGISTERED;
>  	return 0;
> diff --git a/net/xdp/xsk.c b/net/xdp/xsk.c
> index ecc4579e41ee..d4cb1c5c1abf 100644
> --- a/net/xdp/xsk.c
> +++ b/net/xdp/xsk.c
> @@ -233,6 +233,7 @@ static int xsk_rcv(struct xdp_sock *xs, struct xdp_bu=
ff *xdp,
>  	if (xs->dev !=3D xdp->rxq->dev || xs->queue_id !=3D xdp->rxq->queue_ind=
ex)
>  		return -EINVAL;
>  =

> +	sk_mark_napi_id_once_xdp(&xs->sk, xdp);
>  	len =3D xdp->data_end - xdp->data;
>  =

>  	return xdp->rxq->mem.type =3D=3D MEM_TYPE_XSK_BUFF_POOL ?
> -- =

> 2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
