Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE50A443D2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 16:04:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88C4060704;
	Tue, 25 Feb 2025 15:04:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5NnfbVngvaIw; Tue, 25 Feb 2025 15:04:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 908A1606C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740495888;
	bh=myoCORcY1Hc9w42yfTIHkqddnGqokfjHJiK2m/v9eS8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sIWm9yPSctiVQsZJFicCkRRDpaH4HW9EOB2DLQU7f8u+P3HGsBy4BWUb+eB6e4pKh
	 RQqiuZfr/V6lUGmJ3gqRj6KaqJGHYQeBHb2sSvqL1ptpx1Yl0hVR3bChbl3CXvBm6p
	 XeV7RzRuECR4Ao9vcHObA4mHqIl/IruaYtqhjPnpIRSIUDgkFMXSROUirnFZLgSRbq
	 5ueFJ2ePJHgQ4yRSicM7cewM06D1gFcXfBBfEZ0uqFPBeUefaAVAzXOy7xg/mVzp6m
	 q3c7Oz/y9ac8Z/qpmTIw5P1B2F2aRoNrep633Z3RxUhOdst2GXiBOjry4U2Yd33XmM
	 0uPA+v2azK3/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 908A1606C1;
	Tue, 25 Feb 2025 15:04:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9BE0C2292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 15:04:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 893854037C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 15:04:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lnh2Lhedfwe6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 15:04:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7986F40096
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7986F40096
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7986F40096
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 15:04:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id D44BF6126B;
 Tue, 25 Feb 2025 15:04:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35935C4CEDD;
 Tue, 25 Feb 2025 15:04:42 +0000 (UTC)
Date: Tue, 25 Feb 2025 15:04:40 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250225150440.GZ1615191@kernel.org>
References: <20250221123123.2833395-1-grzegorz.nitka@intel.com>
 <20250221123123.2833395-4-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250221123123.2833395-4-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740495883;
 bh=RJR1EUVHjlTZ5+MP+tYw7diWPjES5MIeECT7TrlRV+c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c+CUWmarkOf3Jev++Vm3ho9RN/pvolh50nMWPja+nWtY1DG4j03xdGNRooyKKToWY
 ADVv46eg8odXO2IQEa99gCS5V4jHneUwDbtt7gT54726ImjQDd/9zKJSCKD4oEhTiQ
 FZU0hGZL1vwhEr1B6IxTy3raASp00HWPZc9K/Kt8iEzuF9p5iFbjbG0SyKageoa38o
 K3ugMRv3GitPiJTuyXdDyB2JOSEbDnf7CcGeZGhKJ6AMkJMjvRf/2YjpcjkroO9tpM
 5PF1OdeikJSA6YGPbZxWA2a3JESDIAUo9zIxZwVik20H6DNM7ni00iLz9deD2CIEEx
 8qHiXTcG9BUzg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=c+CUWmar
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/3] ice: enable timesync
 operation on 2xNAC E825 devices
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Feb 21, 2025 at 01:31:23PM +0100, Grzegorz Nitka wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> According to the E825C specification, SBQ address for ports on a single
> complex is device 2 for PHY 0 and device 13 for PHY1.
> For accessing ports on a dual complex E825C (so called 2xNAC mode),
> the driver should use destination device 2 (referred as phy_0) for
> the current complex PHY and device 13 (referred as phy_0_peer) for
> peer complex PHY.
> 
> Differentiate SBQ destination device by checking if current PF port
> number is on the same PHY as target port number.
> 
> Adjust 'ice_get_lane_number' function to provide unique port number for
> ports from PHY1 in 'dual' mode config (by adding fixed offset for PHY1
> ports). Cache this value in ice_hw struct.
> 
> Introduce ice_get_primary_hw wrapper to get access to timesync register
> not available from second NAC.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h        | 60 ++++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_common.c |  6 ++-
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 49 ++++++++++++-----
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 39 +++++++++++---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  5 --
>  drivers/net/ethernet/intel/ice/ice_type.h   |  1 +
>  6 files changed, 134 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 53b990e2e850..d80ab48402f1 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -193,8 +193,6 @@
>  
>  #define ice_pf_to_dev(pf) (&((pf)->pdev->dev))
>  
> -#define ice_pf_src_tmr_owned(pf) ((pf)->hw.func_caps.ts_func_info.src_tmr_owned)
> -
>  enum ice_feature {
>  	ICE_F_DSCP,
>  	ICE_F_PHY_RCLK,
> @@ -1049,4 +1047,62 @@ static inline void ice_clear_rdma_cap(struct ice_pf *pf)
>  }
>  
>  extern const struct xdp_metadata_ops ice_xdp_md_ops;
> +
> +/**
> + * ice_is_dual - Check if given config is multi-NAC
> + * @hw: pointer to HW structure
> + *
> + * Return: true if the device is running in mutli-NAC (Network
> + * Acceleration Complex) configuration variant, false otherwise
> + * (always false for non-E825 devices).
> + */
> +static inline bool ice_is_dual(struct ice_hw *hw)
> +{
> +	return hw->mac_type == ICE_MAC_GENERIC_3K_E825 &&
> +	       (hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_DUAL_M);
> +}

Thanks for the complete Kernel doc, and not adding unnecessary () around
the value returned. Overall these helpers seem nice and clean to me.

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index ed7ef8608cbb..4ff4c99d0872 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1135,6 +1135,8 @@ int ice_init_hw(struct ice_hw *hw)
>  		}
>  	}
>  
> +	hw->lane_num = ice_get_phy_lane_number(hw);
> +

Unfortunately there seems to be a bit of a problem here:

The type of hw->lane number is u8.
But ice_get_phy_lane_number returns an int,
which may be a negative error value...

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c

...

> @@ -3177,17 +3203,16 @@ void ice_ptp_init(struct ice_pf *pf)
>  {
>  	struct ice_ptp *ptp = &pf->ptp;
>  	struct ice_hw *hw = &pf->hw;
> -	int lane_num, err;
> +	int err;
>  
>  	ptp->state = ICE_PTP_INITIALIZING;
>  
> -	lane_num = ice_get_phy_lane_number(hw);
> -	if (lane_num < 0) {
> -		err = lane_num;
> +	if (hw->lane_num < 0) {

... which is checked here.

But because hw->lane_num is unsigned, this condition is always false.

FWIIW, I think it is nice that that hw->lane is a u8.
But error handling seems broken here.

> +		err = hw->lane_num;
>  		goto err_exit;
>  	}
> +	ptp->port.port_num = hw->lane_num;
>  
> -	ptp->port.port_num = (u8)lane_num;
>  	ice_ptp_init_hw(hw);
>  
>  	ice_ptp_init_tx_interrupt_mode(pf);

...
