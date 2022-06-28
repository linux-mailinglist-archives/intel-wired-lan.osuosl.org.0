Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD8B55C07D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 12:59:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 221C960B65;
	Tue, 28 Jun 2022 10:59:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 221C960B65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656413972;
	bh=ty3TpQbC+cP33gM2d3Ow4mXIOc6SD8WfKgMECS9hu04=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Lhdi2BRSAVmHDG6BotgUjteQ/6QC/TysxGJ5Yg08MLGmen2/HQF5fm8wsMB54E//7
	 WYQxS7uuBagwqP0kareBb7/XJiw221jX8HZapLqfQhvkfms1Tpb6YPqVlpxOu9NQCI
	 bInWoEOpLqqh43Tx8s1j6NyI+CAA0NANfHzft58eF4tYJWxQSgEEnxyrQoTlhC5Tr2
	 FB9e11Tytd7xLFmbdvmmh8AvJqc3kTUFth6K5wUEVZSD1NoMi12MW+SXwIYR6BHBtL
	 pNuFxqu8NWRwNITy6r0zslevWKTrW0ZtVMLEDIrZHxodKWftFHnuGUiCbJ5B9hDWIg
	 mvd5UA7+U5mqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cLJrPJ1U6jtD; Tue, 28 Jun 2022 10:59:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B788E60E7E;
	Tue, 28 Jun 2022 10:59:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B788E60E7E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 04E0F1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 10:59:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D272F82F4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 10:59:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D272F82F4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id imSiFaoprWoF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 10:59:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72C7182B1B
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 72C7182B1B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 10:59:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="282443950"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="282443950"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 03:59:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="658094377"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by fmsmga004.fm.intel.com with ESMTP; 28 Jun 2022 03:59:22 -0700
Date: Tue, 28 Jun 2022 12:59:21 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Message-ID: <YrrfCQCG5sndNVvN@boxer>
References: <20220628104403.4246-1-anatolii.gerasymenko@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628104403.4246-1-anatolii.gerasymenko@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656413964; x=1687949964;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=isy/i5w7ztAx9YG+TIAhiuOgLusUV12sTkyT8OImi7Q=;
 b=XuYM2vNIRUs2UMADT0WuOW8W/FQta3+mEXovQImhRqpPaRDCiUZJNoYc
 0yH/6ex+bTTjD1jwPNY8ie4Iy/dLfRXxLGegIOasA/76ZW/ugLDMeVn11
 1HLOzST6eX0Ou5rmXCCYJGto0H1HAHblpgoMIRcbiy1g1rl0V1lpMJkCU
 U816Yctd/tyeJWKo5wC9BLAvM4GUbYkMq1GVIlAw/dSOx8JrYkWREM1L6
 mbZC1fDfNqfPC7zt7XiBGRzOCOreo+CV3hy3yPpBFQgYkjWg30ghvZCcQ
 xk4n5XEapkE75mVfMOorjO5AOdd3oG6sfqne318HRt9B6R5c9e1MLOBTF
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XuYM2vNI
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] ice: Implement control
 of FCS/CRC stripping
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 28, 2022 at 12:44:03PM +0200, Anatolii Gerasymenko wrote:
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> The driver can allow the user to configure whether the CRC aka the FCS
> (Frame Check Sequence) is DMA'd to the host as part of the receive
> buffer.  The driver usually wants this feature disabled so that the
> hardware checks the FCS and strips it in order to save PCI bandwidth.
> 
> Control the reception of FCS to the host using the command:
> ethtool -K eth0 rx-fcs <on|off>
> 
> The default shown in ethtool -k eth0 | grep fcs; should be "off", as the
> hardware will drop any frame with a bad checksum, and DMA of the
> checksum is useless overhead especially for small packets.
> 
> Testing Hints:
> test the FCS/CRC arrives with received packets using
> tcpdump -nnpi eth0 -xxxx
> and it should show crc data as the last 4 bytes of the packet. Can also
> use wireshark to turn on CRC checking and check the data is correct.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Co-Developed-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Sorry but NACK.

Could you pick
https://lore.kernel.org/bpf/20220616180609.905015-2-maciej.fijalkowski@intel.com/

and base your code on top of that? I have specially pulled out the switch
the 'changed' netdev features out of my loopback code so that we both can
take a favor of it.

Looks like you're going to be the first with landing the crc strip to the
netdev as I'm lost in fixing some stuff in libbpf/af_xdp :p

TBH the loopback toggle would also fit to your series:
https://lore.kernel.org/bpf/20220616180609.905015-3-maciej.fijalkowski@intel.com/

Thanks!

> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  1 +
>  drivers/net/ethernet/intel/ice/ice_base.c    |  2 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  5 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 21 +++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.h     |  2 +
>  drivers/net/ethernet/intel/ice/ice_main.c    | 48 ++++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_txrx.h    |  3 +-
>  7 files changed, 71 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 60453b3b8d23..f04afce606b9 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -854,6 +854,7 @@ ice_fetch_u64_stats_per_ring(struct u64_stats_sync *syncp,
>  			     struct ice_q_stats stats, u64 *pkts, u64 *bytes);
>  int ice_up(struct ice_vsi *vsi);
>  int ice_down(struct ice_vsi *vsi);
> +int ice_down_up(struct ice_vsi *vsi);
>  int ice_vsi_cfg(struct ice_vsi *vsi);
>  struct ice_vsi *ice_lb_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi);
>  int ice_vsi_determine_xdp_res(struct ice_vsi *vsi);
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> index 136d7911adb4..6f092e06054e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -417,7 +417,7 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
>  	/* Strip the Ethernet CRC bytes before the packet is posted to host
>  	 * memory.
>  	 */
> -	rlan_ctx.crcstrip = 1;
> +	rlan_ctx.crcstrip = !(ring->flags & ICE_RX_FLAGS_CRC_STRIP_DIS);
>  
>  	/* L2TSEL flag defines the reported L2 Tags in the receive descriptor
>  	 * and it needs to remain 1 for non-DVM capable configurations to not
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 70335f6e8524..9489ab19c662 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -1283,10 +1283,7 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
>  	}
>  	if (test_bit(ICE_FLAG_LEGACY_RX, change_flags)) {
>  		/* down and up VSI so that changes of Rx cfg are reflected. */
> -		if (!test_and_set_bit(ICE_VSI_DOWN, vsi->state)) {
> -			ice_down(vsi);
> -			ice_up(vsi);
> -		}
> +		ice_down_up(vsi);
>  	}
>  	/* don't allow modification of this flag when a single VF is in
>  	 * promiscuous mode because it's not supported
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index a6c4be5e5566..d9451a5c9106 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -1561,6 +1561,22 @@ void ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena)
>  	kfree(lut);
>  }
>  
> +/**
> + * ice_vsi_cfg_crc_strip - Configure CRC stripping for a VSI
> + * @vsi: VSI to be configured
> + * @disable: set to true to have FCS / CRC in the frame data
> + */
> +void ice_vsi_cfg_crc_strip(struct ice_vsi *vsi, bool disable)
> +{
> +	int i;
> +
> +	ice_for_each_rxq(vsi, i)
> +		if (disable)
> +			vsi->rx_rings[i]->flags |= ICE_RX_FLAGS_CRC_STRIP_DIS;
> +		else
> +			vsi->rx_rings[i]->flags &= ~ICE_RX_FLAGS_CRC_STRIP_DIS;
> +}
> +
>  /**
>   * ice_vsi_cfg_rss_lut_key - Configure RSS params for a VSI
>   * @vsi: VSI to be configured
> @@ -3276,6 +3292,11 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
>  			 */
>  			if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
>  				ice_vsi_cfg_rss_lut_key(vsi);
> +
> +		/* disable or enable CRC stripping */
> +		ice_vsi_cfg_crc_strip(vsi, !!(vsi->netdev->features &
> +					      NETIF_F_RXFCS));
> +
>  		break;
>  	case ICE_VSI_VF:
>  		ret = ice_vsi_alloc_q_vectors(vsi);
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
> index 0095329949d4..d22f4b062c4f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.h
> @@ -89,6 +89,8 @@ void ice_vsi_free_tx_rings(struct ice_vsi *vsi);
>  
>  void ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena);
>  
> +void ice_vsi_cfg_crc_strip(struct ice_vsi *vsi, bool disable);
> +
>  void ice_update_tx_ring_stats(struct ice_tx_ring *ring, u64 pkts, u64 bytes);
>  
>  void ice_update_rx_ring_stats(struct ice_rx_ring *ring, u64 pkts, u64 bytes);
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index c1ac2f746714..6510f4910e5d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3373,6 +3373,11 @@ static void ice_set_netdev_features(struct net_device *netdev)
>  	if (is_dvm_ena)
>  		netdev->hw_features |= NETIF_F_HW_VLAN_STAG_RX |
>  			NETIF_F_HW_VLAN_STAG_TX;
> +
> +	/* Leave CRC / FCS stripping enabled by default, but allow the value to
> +	 * be changed at runtime
> +	 */
> +	netdev->hw_features |= NETIF_F_RXFCS;
>  }
>  
>  /**
> @@ -5923,6 +5928,7 @@ ice_set_vlan_features(struct net_device *netdev, netdev_features_t features)
>  static int
>  ice_set_features(struct net_device *netdev, netdev_features_t features)
>  {
> +	netdev_features_t changed = netdev->features ^ features;
>  	struct ice_netdev_priv *np = netdev_priv(netdev);
>  	struct ice_vsi *vsi = np->vsi;
>  	struct ice_pf *pf = vsi->back;
> @@ -5943,16 +5949,23 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
>  	/* Multiple features can be changed in one call so keep features in
>  	 * separate if/else statements to guarantee each feature is checked
>  	 */
> -	if (features & NETIF_F_RXHASH && !(netdev->features & NETIF_F_RXHASH))
> -		ice_vsi_manage_rss_lut(vsi, true);
> -	else if (!(features & NETIF_F_RXHASH) &&
> -		 netdev->features & NETIF_F_RXHASH)
> -		ice_vsi_manage_rss_lut(vsi, false);
> +	if (changed & NETIF_F_RXHASH)
> +		ice_vsi_manage_rss_lut(vsi, !!(features & NETIF_F_RXHASH));
>  
>  	ret = ice_set_vlan_features(netdev, features);
>  	if (ret)
>  		return ret;
>  
> +	/* Turn on receive of FCS aka CRC, and after setting this
> +	 * flag the packet data will have the 4 byte CRC appended
> +	 */
> +	if (changed & NETIF_F_RXFCS) {
> +		ice_vsi_cfg_crc_strip(vsi, !!(features & NETIF_F_RXFCS));
> +		ret = ice_down_up(vsi);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	if ((features & NETIF_F_NTUPLE) &&
>  	    !(netdev->features & NETIF_F_NTUPLE)) {
>  		ice_vsi_manage_fdir(vsi, true);
> @@ -6653,6 +6666,31 @@ int ice_down(struct ice_vsi *vsi)
>  	return 0;
>  }
>  
> +/**
> + * ice_down_up - shutdown the VSI connection and bring it up
> + * @vsi: the VSI to be reconnected
> + */
> +int ice_down_up(struct ice_vsi *vsi)
> +{
> +	int ret;
> +
> +	/* if DOWN already set, nothing to do */
> +	if (test_and_set_bit(ICE_VSI_DOWN, vsi->state))
> +		return 0;
> +
> +	ret = ice_down(vsi);
> +	if (ret)
> +		return ret;
> +
> +	ret = ice_up(vsi);
> +	if (ret) {
> +		netdev_err(vsi->netdev, "reallocating resources failed during netdev features change, may need to reload driver\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * ice_vsi_setup_tx_rings - Allocate VSI Tx queue resources
>   * @vsi: VSI having resources allocated
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
> index ca902af54bb4..932b5661ec4d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
> @@ -295,10 +295,11 @@ struct ice_rx_ring {
>  	struct xsk_buff_pool *xsk_pool;
>  	struct sk_buff *skb;
>  	dma_addr_t dma;			/* physical address of ring */
> -#define ICE_RX_FLAGS_RING_BUILD_SKB	BIT(1)
>  	u64 cached_phctime;
>  	u8 dcb_tc;			/* Traffic class of ring */
>  	u8 ptp_rx;
> +#define ICE_RX_FLAGS_RING_BUILD_SKB	BIT(1)
> +#define ICE_RX_FLAGS_CRC_STRIP_DIS	BIT(2)
>  	u8 flags;
>  } ____cacheline_internodealigned_in_smp;
>  
> -- 
> 2.25.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
