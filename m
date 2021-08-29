Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B65993FAE64
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Aug 2021 22:23:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2856B80E8A;
	Sun, 29 Aug 2021 20:22:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7FE-olEErwvh; Sun, 29 Aug 2021 20:22:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5622F80E90;
	Sun, 29 Aug 2021 20:22:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 822F71BF31D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Aug 2021 20:22:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 66C3240405
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Aug 2021 20:22:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=lunn.ch
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pnv69cJ8QMad for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 Aug 2021 20:22:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2E55E40404
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Aug 2021 20:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=FotQZ+iuaA+UrZo8/ndUtomaeuFc3KxH4nloWcKkx/4=; b=JmS+0KYCW8nqoLrIPs0abdq0Gf
 iyc+j/2myVFznpgG7YA0fClPqackVMoMZalmT/45ocRln1G5qbi1ueShs0EyjdQzGK+yoAQuCs/34
 FnnUlBWnPfNYuu0XAMPY4qqcrsatfxicHzC5MVDxTbvJrzJ2fTOEXs0ABRBnstAdRT1o=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1mKRKF-004Rtz-0C; Sun, 29 Aug 2021 22:22:43 +0200
Date: Sun, 29 Aug 2021 22:22:42 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <YSvskiFbAEmDbzWJ@lunn.ch>
References: <20210829173934.3683561-1-maciej.machnikowski@intel.com>
 <20210829173934.3683561-3-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210829173934.3683561-3-maciej.machnikowski@intel.com>
Subject: Re: [Intel-wired-lan] [RFC v3 net-next 2/2] ice: add support for
 reading SyncE DPLL state
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
Cc: abyagowi@fb.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 linux-kselftest@vger.kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Aug 29, 2021 at 07:39:34PM +0200, Maciej Machnikowski wrote:
> Implement SyncE DPLL monitoring for E810-T devices.
> Poll loop will periodically check the state of the DPLL and cache it
> in the pf structure. State changes will be logged in the system log.
> 
> Cached state can be read using the RTM_GETEECSTATE rtnetlink
> message.
> 
> Different SyncE EEC sources will be reported depending on the pin
> driving the DPLL:
>  - pins 0-1: can be driven by PTP clock
>  - pins 2-5: are used by SyncE recovered clocks
>  - pins 6-7: can be used to connect external frequency sources
>  - pin 8: is connected to the optional GNSS receiver
> 
> Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  5 ++
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 34 ++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.c   | 62 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |  4 ++
>  drivers/net/ethernet/intel/ice/ice_devids.h   |  3 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 55 ++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp.c      | 35 +++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 44 +++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   | 22 +++++++
>  9 files changed, 264 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index eadcb9958346..6fb7e07e8a62 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -508,6 +508,11 @@ struct ice_pf {
>  #define ICE_VF_AGG_NODE_ID_START	65
>  #define ICE_MAX_VF_AGG_NODES		32
>  	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
> +
> +	enum if_eec_state synce_dpll_state;
> +	u8 synce_dpll_pin;
> +	enum if_eec_state ptp_dpll_state;
> +	u8 ptp_dpll_pin;
>  };
>  
>  struct ice_netdev_priv {
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 21b4c7cd6f05..b84da5e9d025 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1727,6 +1727,36 @@ struct ice_aqc_add_rdma_qset_data {
>  	struct ice_aqc_add_tx_rdma_qset_entry rdma_qsets[];
>  };
>  
> +/* Get CGU DPLL status (direct 0x0C66) */
> +struct ice_aqc_get_cgu_dpll_status {
> +	u8 dpll_num;
> +	u8 ref_state;
> +#define ICE_AQC_GET_CGU_DPLL_STATUS_REF_SW_LOS		BIT(0)
> +#define ICE_AQC_GET_CGU_DPLL_STATUS_REF_SW_SCM		BIT(1)
> +#define ICE_AQC_GET_CGU_DPLL_STATUS_REF_SW_CFM		BIT(2)
> +#define ICE_AQC_GET_CGU_DPLL_STATUS_REF_SW_GST		BIT(3)
> +#define ICE_AQC_GET_CGU_DPLL_STATUS_REF_SW_PFM		BIT(4)
> +#define ICE_AQC_GET_CGU_DPLL_STATUS_REF_SW_ESYNC	BIT(6)
> +#define ICE_AQC_GET_CGU_DPLL_STATUS_FAST_LOCK_EN	BIT(7)
> +	__le16 dpll_state;
> +#define ICE_AQC_GET_CGU_DPLL_STATUS_STATE_LOCK		BIT(0)
> +#define ICE_AQC_GET_CGU_DPLL_STATUS_STATE_HO		BIT(1)
> +#define ICE_AQC_GET_CGU_DPLL_STATUS_STATE_HO_READY	BIT(2)
> +#define ICE_AQC_GET_CGU_DPLL_STATUS_STATE_FLHIT		BIT(5)
> +#define ICE_AQC_GET_CGU_DPLL_STATUS_STATE_PSLHIT	BIT(7)
> +#define ICE_AQC_GET_CGU_DPLL_STATUS_STATE_CLK_REF_SHIFT	8
> +#define ICE_AQC_GET_CGU_DPLL_STATUS_STATE_CLK_REF_SEL	\
> +	ICE_M(0x1F, ICE_AQC_GET_CGU_DPLL_STATUS_STATE_CLK_REF_SHIFT)
> +#define ICE_AQC_GET_CGU_DPLL_STATUS_STATE_MODE_SHIFT	13
> +#define ICE_AQC_GET_CGU_DPLL_STATUS_STATE_MODE \
> +	ICE_M(0x7, ICE_AQC_GET_CGU_DPLL_STATUS_STATE_MODE_SHIFT)
> +	__le32 phase_offset_h;
> +	__le32 phase_offset_l;
> +	u8 eec_mode;
> +	u8 rsvd[1];
> +	__le16 node_handle;
> +};
> +
>  /* Configure Firmware Logging Command (indirect 0xFF09)
>   * Logging Information Read Response (indirect 0xFF10)
>   * Note: The 0xFF10 command has no input parameters.
> @@ -1954,6 +1984,7 @@ struct ice_aq_desc {
>  		struct ice_aqc_fw_logging fw_logging;
>  		struct ice_aqc_get_clear_fw_log get_clear_fw_log;
>  		struct ice_aqc_download_pkg download_pkg;
> +		struct ice_aqc_get_cgu_dpll_status get_cgu_dpll_status;
>  		struct ice_aqc_driver_shared_params drv_shared_params;
>  		struct ice_aqc_set_mac_lb set_mac_lb;
>  		struct ice_aqc_alloc_free_res_cmd sw_res_ctrl;
> @@ -2108,6 +2139,9 @@ enum ice_adminq_opc {
>  	ice_aqc_opc_update_pkg				= 0x0C42,
>  	ice_aqc_opc_get_pkg_info_list			= 0x0C43,
>  
> +	/* 1588/SyncE commands/events */
> +	ice_aqc_opc_get_cgu_dpll_status			= 0x0C66,
> +
>  	ice_aqc_opc_driver_shared_params		= 0x0C90,
>  
>  	/* Standalone Commands/Events */
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 2fb81e359cdf..e7474643a421 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -69,6 +69,31 @@ bool ice_is_e810(struct ice_hw *hw)
>  	return hw->mac_type == ICE_MAC_E810;
>  }
>  
> +/**
> + * ice_is_e810t
> + * @hw: pointer to the hardware structure
> + *
> + * returns true if the device is E810T based, false if not.
> + */
> +bool ice_is_e810t(struct ice_hw *hw)
> +{
> +	switch (hw->device_id) {
> +	case ICE_DEV_ID_E810C_SFP:
> +		if (hw->subsystem_device_id == ICE_SUBDEV_ID_E810T ||
> +		    hw->subsystem_device_id == ICE_SUBDEV_ID_E810T2)
> +			return true;
> +		break;
> +	case ICE_DEV_ID_E810C_QSFP:
> +		if (hw->subsystem_device_id == ICE_SUBDEV_ID_E810T2)
> +			return true;
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	return false;
> +}
> +
>  /**
>   * ice_clear_pf_cfg - Clear PF configuration
>   * @hw: pointer to the hardware structure
> @@ -4520,6 +4545,42 @@ ice_dis_vsi_rdma_qset(struct ice_port_info *pi, u16 count, u32 *qset_teid,
>  	return ice_status_to_errno(status);
>  }
>  
> +/**
> + * ice_aq_get_cgu_dpll_status
> + * @hw: pointer to the HW struct
> + * @dpll_num: DPLL index
> + * @ref_state: Reference clock state
> + * @dpll_state: DPLL state
> + * @phase_offset: Phase offset in ps
> + * @eec_mode: EEC_mode
> + *
> + * Get CGU DPLL status (0x0C66)
> + */
> +enum ice_status
> +ice_aq_get_cgu_dpll_status(struct ice_hw *hw, u8 dpll_num, u8 *ref_state,
> +			   u16 *dpll_state, u64 *phase_offset, u8 *eec_mode)
> +{
> +	struct ice_aqc_get_cgu_dpll_status *cmd;
> +	struct ice_aq_desc desc;
> +	enum ice_status status;
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_cgu_dpll_status);
> +	cmd = &desc.params.get_cgu_dpll_status;
> +	cmd->dpll_num = dpll_num;
> +
> +	status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
> +	if (!status) {
> +		*ref_state = cmd->ref_state;
> +		*dpll_state = le16_to_cpu(cmd->dpll_state);
> +		*phase_offset = le32_to_cpu(cmd->phase_offset_h);
> +		*phase_offset <<= 32;
> +		*phase_offset += le32_to_cpu(cmd->phase_offset_l);
> +		*eec_mode = cmd->eec_mode;
> +	}
> +
> +	return status;
> +}
> +
>  /**
>   * ice_replay_pre_init - replay pre initialization
>   * @hw: pointer to the HW struct
> @@ -4974,3 +5035,4 @@ bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw)
>  	}
>  	return false;
>  }
> +
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
> index fb16070f02e2..ccd76c0cbf2c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.h
> +++ b/drivers/net/ethernet/intel/ice/ice_common.h
> @@ -100,6 +100,7 @@ enum ice_status
>  ice_aq_manage_mac_write(struct ice_hw *hw, const u8 *mac_addr, u8 flags,
>  			struct ice_sq_cd *cd);
>  bool ice_is_e810(struct ice_hw *hw);
> +bool ice_is_e810t(struct ice_hw *hw);
>  enum ice_status ice_clear_pf_cfg(struct ice_hw *hw);
>  enum ice_status
>  ice_aq_set_phy_cfg(struct ice_hw *hw, struct ice_port_info *pi,
> @@ -156,6 +157,9 @@ ice_cfg_vsi_rdma(struct ice_port_info *pi, u16 vsi_handle, u16 tc_bitmap,
>  int
>  ice_ena_vsi_rdma_qset(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
>  		      u16 *rdma_qset, u16 num_qsets, u32 *qset_teid);
> +enum ice_status
> +ice_aq_get_cgu_dpll_status(struct ice_hw *hw, u8 dpll_num, u8 *ref_state,
> +			   u16 *dpll_state, u64 *phase_offset, u8 *eec_mode);
>  int
>  ice_dis_vsi_rdma_qset(struct ice_port_info *pi, u16 count, u32 *qset_teid,
>  		      u16 *q_id);
> diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
> index 9d8194671f6a..e52dbeddb783 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devids.h
> +++ b/drivers/net/ethernet/intel/ice/ice_devids.h
> @@ -52,4 +52,7 @@
>  /* Intel(R) Ethernet Connection E822-L 1GbE */
>  #define ICE_DEV_ID_E822L_SGMII		0x189A
>  
> +#define ICE_SUBDEV_ID_E810T		0x000E
> +#define ICE_SUBDEV_ID_E810T2		0x000F
> +
>  #endif /* _ICE_DEVIDS_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 60d55d043a94..26ba437d24f3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5973,6 +5973,60 @@ static void ice_napi_disable_all(struct ice_vsi *vsi)
>  	}
>  }
>  
> +/**
> + * ice_get_eec_state - get state of SyncE DPLL
> + * @netdev: network interface device structure
> + * @state: state of SyncE DPLL
> + * @src: source type driving SyncE DPLL
> + * @pin_idx: index of pin driving SyncE DPLL
> + */
> +static int
> +ice_get_eec_state(struct net_device *netdev, enum if_eec_state *state,
> +		  enum if_eec_src *src, u8 *pin_idx)
> +{
> +	struct ice_netdev_priv *np = netdev_priv(netdev);
> +	struct ice_vsi *vsi = np->vsi;
> +	struct ice_pf *pf = vsi->back;
> +
> +	if (!ice_is_e810t(&pf->hw))
> +		return -EOPNOTSUPP;
> +
> +	if (state)
> +		*state = pf->synce_dpll_state;
> +	if (pin_idx)
> +		*pin_idx = pf->synce_dpll_pin;
> +	if (src) {

As far as i can see, there is only one user of this function, and it
is guaranteed to provide state, src and pin_idx. Please skip all these
tests.

   Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
