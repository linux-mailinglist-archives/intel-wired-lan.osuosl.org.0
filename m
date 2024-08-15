Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E87B0952A3D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2024 09:59:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3BEFF40E14;
	Thu, 15 Aug 2024 07:59:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id siC3mPK1zldK; Thu, 15 Aug 2024 07:59:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6605B40A3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723708760;
	bh=GYm7n1RuuLnpmcCtiFU8jWB8VqI2ZrYUhxqZmgP3c+c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SzeKdcLjYvOuBrMtl9Bez6BIO13K8rqRfYExV3M8zvfaZSL4tbqwQ+MheCIVvdlA+
	 D0nxF+pDcYtlNgdKk4stY52HigGN1MDI0R1QcBTxZEkf2GLYdHLffP5O5J0U1NHx2Q
	 kTa+4jmr0YsT/76EFtHjY3DF5nIm+QZ4mj33acAXeX3CJQQbG2B9M8GO6E3olqnLd1
	 pO8DJUIU2Klcs57lS9D7O8yKGhMv/4UuhO3O6+Qp01CKaZqN8pX+pQsdcux9pVMQb4
	 8Eg0kyHxkkP5KlB/jhjuCr1iSC/PdSwUYyeTLUv+XnAdZCVIfN7jjAYRWS+i/temu3
	 XNPr9F3Czqf4Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6605B40A3B;
	Thu, 15 Aug 2024 07:59:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A3941BF20B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 07:59:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 805F781E49
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 07:59:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lzmdFyJ7WXr0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2024 07:59:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8152E81E1E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8152E81E1E
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8152E81E1E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 07:59:14 +0000 (UTC)
Received: from [192.168.0.53] (ip5f5aebe8.dynamic.kabel-deutschland.de
 [95.90.235.232])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id CDE8D61E5FE05;
 Thu, 15 Aug 2024 09:58:55 +0200 (CEST)
Message-ID: <b8a25788-21f4-4d9c-b3fe-42aaae884494@molgen.mpg.de>
Date: Thu, 15 Aug 2024 09:58:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Greenwalt <paul.greenwalt@intel.com>
References: <20240812221501.1705162-1-paul.greenwalt@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240812221501.1705162-1-paul.greenwalt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: add E830 HW VF
 mailbox message limit support
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
Cc: aleksander.lobakin@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Paul,


Thank you for the patch.

Am 13.08.24 um 00:15 schrieb Paul Greenwalt:
> E830 adds hardware support to prevent the VF from overflowing the PF
> mailbox with VIRTCHNL messages. E830 will use the hardware feature
> (ICE_F_MBX_LIMIT) instead of the software solution ice_is_malicious_vf().

What is the benefit? Less CPU cycles used? Any measurements, how much 
CPU it uses?

> To prevent a VF from overflowing the PF, the PF sets the number of
> messages per VF that can be in the PF's mailbox queue
> (ICE_MBX_OVERFLOW_WATERMARK). When the PF process a message from a VF,

process*es*?

> the PF decrements the per VF message count using the E830_MBX_VF_DEC_TRIG
> register.

Is there an error shown, once such a malicious situation occurs?

It’d be great, if you could documents ways how to test this.


Kind regards,

Paul


> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> v1 -> v2:
> - Update ice_mbx_vf_dec_trig_e830 and ice_mbx_vf_clear_cnt_e830 onstack
>    variables to const
> v2 -> v3:
> - Fix indentation and remove unnessary paranthes in macro
> - Replace ice_init_feature_support() E830 device id check with MAC
>    check
> - Remove use of const for scalars
> ---
>   drivers/net/ethernet/intel/ice/ice.h          |  1 +
>   .../net/ethernet/intel/ice/ice_hw_autogen.h   |  3 ++
>   drivers/net/ethernet/intel/ice/ice_lib.c      | 15 +++++++++
>   drivers/net/ethernet/intel/ice/ice_main.c     | 24 ++++++++++----
>   drivers/net/ethernet/intel/ice/ice_sriov.c    |  3 +-
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 26 +++++++++++++--
>   drivers/net/ethernet/intel/ice/ice_vf_mbx.c   | 32 +++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_vf_mbx.h   |  3 ++
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c |  8 +++--
>   9 files changed, 102 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index d6f80da30dec..53082b619fc3 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -207,6 +207,7 @@ enum ice_feature {
>   	ICE_F_GNSS,
>   	ICE_F_ROCE_LAG,
>   	ICE_F_SRIOV_LAG,
> +	ICE_F_MBX_LIMIT,
>   	ICE_F_MAX
>   };
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> index 91cbae1eec89..8d31bfe28cc8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> +++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> @@ -539,5 +539,8 @@
>   #define E830_PRTMAC_CL01_QNT_THR_CL0_M		GENMASK(15, 0)
>   #define VFINT_DYN_CTLN(_i)			(0x00003800 + ((_i) * 4))
>   #define VFINT_DYN_CTLN_CLEARPBA_M		BIT(1)
> +#define E830_MBX_PF_IN_FLIGHT_VF_MSGS_THRESH	0x00234000
> +#define E830_MBX_VF_DEC_TRIG(_VF)		(0x00233800 + (_VF) * 4)
> +#define E830_MBX_VF_IN_FLIGHT_MSGS_AT_PF_CNT(_VF)	(0x00233000 + (_VF) * 4)
>   
>   #endif /* _ICE_HW_AUTOGEN_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index d9c34d28c9cd..2c55209d3ce2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3877,9 +3877,24 @@ void ice_init_feature_support(struct ice_pf *pf)
>   		if (ice_gnss_is_gps_present(&pf->hw))
>   			ice_set_feature_support(pf, ICE_F_GNSS);
>   		break;
> +	case ICE_DEV_ID_E830CC_BACKPLANE:
> +	case ICE_DEV_ID_E830CC_QSFP56:
> +	case ICE_DEV_ID_E830CC_SFP:
> +	case ICE_DEV_ID_E830CC_SFP_DD:
> +	case ICE_DEV_ID_E830C_BACKPLANE:
> +	case ICE_DEV_ID_E830C_QSFP:
> +	case ICE_DEV_ID_E830C_SFP:
> +	case ICE_DEV_ID_E830_XXV_BACKPLANE:
> +	case ICE_DEV_ID_E830_XXV_QSFP:
> +	case ICE_DEV_ID_E830_XXV_SFP:
> +		ice_set_feature_support(pf, ICE_F_MBX_LIMIT);
> +		break;
>   	default:
>   		break;
>   	}
> +
> +	if (pf->hw.mac_type == ICE_MAC_E830)
> +		ice_set_feature_support(pf, ICE_F_MBX_LIMIT);
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index fd27c7995d60..12ce5d2283d3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -1542,12 +1542,20 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
>   			ice_vf_lan_overflow_event(pf, &event);
>   			break;
>   		case ice_mbx_opc_send_msg_to_pf:
> -			data.num_msg_proc = i;
> -			data.num_pending_arq = pending;
> -			data.max_num_msgs_mbx = hw->mailboxq.num_rq_entries;
> -			data.async_watermark_val = ICE_MBX_OVERFLOW_WATERMARK;
> +			if (ice_is_feature_supported(pf, ICE_F_MBX_LIMIT)) {
> +				ice_vc_process_vf_msg(pf, &event, NULL);
> +				ice_mbx_vf_dec_trig_e830(hw, &event);
> +			} else {
> +				u16 val = hw->mailboxq.num_rq_entries;
> +
> +				data.max_num_msgs_mbx = val;
> +				val = ICE_MBX_OVERFLOW_WATERMARK;
> +				data.async_watermark_val = val;
> +				data.num_msg_proc = i;
> +				data.num_pending_arq = pending;
>   
> -			ice_vc_process_vf_msg(pf, &event, &data);
> +				ice_vc_process_vf_msg(pf, &event, &data);
> +			}
>   			break;
>   		case ice_aqc_opc_fw_logs_event:
>   			ice_get_fwlog_data(pf, &event);
> @@ -4078,7 +4086,11 @@ static int ice_init_pf(struct ice_pf *pf)
>   
>   	mutex_init(&pf->vfs.table_lock);
>   	hash_init(pf->vfs.table);
> -	ice_mbx_init_snapshot(&pf->hw);
> +	if (ice_is_feature_supported(pf, ICE_F_MBX_LIMIT))
> +		wr32(&pf->hw, E830_MBX_PF_IN_FLIGHT_VF_MSGS_THRESH,
> +		     ICE_MBX_OVERFLOW_WATERMARK);
> +	else
> +		ice_mbx_init_snapshot(&pf->hw);
>   
>   	xa_init(&pf->dyn_ports);
>   	xa_init(&pf->sf_nums);
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index e34fe2516ccc..e7b5fe553d1f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -194,7 +194,8 @@ void ice_free_vfs(struct ice_pf *pf)
>   		}
>   
>   		/* clear malicious info since the VF is getting released */
> -		list_del(&vf->mbx_info.list_entry);
> +		if (!ice_is_feature_supported(pf, ICE_F_MBX_LIMIT))
> +			list_del(&vf->mbx_info.list_entry);
>   
>   		mutex_unlock(&vf->cfg_lock);
>   	}
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index a69e91f88d81..d618292dfe27 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -709,6 +709,23 @@ ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
>   	return 0;
>   }
>   
> +/**
> + * ice_reset_vf_mbx_cnt - reset VF mailbox message count
> + * @vf: pointer to the VF structure
> + *
> + * This function clears the VF mailbox message count, and should be called on
> + * VF reset.
> + */
> +static void ice_reset_vf_mbx_cnt(struct ice_vf *vf)
> +{
> +	struct ice_pf *pf = vf->pf;
> +
> +	if (ice_is_feature_supported(pf, ICE_F_MBX_LIMIT))
> +		ice_mbx_vf_clear_cnt_e830(&pf->hw, vf->vf_id);
> +	else
> +		ice_mbx_clear_malvf(&vf->mbx_info);
> +}
> +
>   /**
>    * ice_reset_all_vfs - reset all allocated VFs in one go
>    * @pf: pointer to the PF structure
> @@ -735,7 +752,7 @@ void ice_reset_all_vfs(struct ice_pf *pf)
>   
>   	/* clear all malicious info if the VFs are getting reset */
>   	ice_for_each_vf(pf, bkt, vf)
> -		ice_mbx_clear_malvf(&vf->mbx_info);
> +		ice_reset_vf_mbx_cnt(vf);
>   
>   	/* If VFs have been disabled, there is no need to reset */
>   	if (test_and_set_bit(ICE_VF_DIS, pf->state)) {
> @@ -951,7 +968,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
>   	ice_eswitch_update_repr(&vf->repr_id, vsi);
>   
>   	/* if the VF has been reset allow it to come up again */
> -	ice_mbx_clear_malvf(&vf->mbx_info);
> +	ice_reset_vf_mbx_cnt(vf);
>   
>   out_unlock:
>   	if (lag && lag->bonded && lag->primary &&
> @@ -1004,7 +1021,10 @@ void ice_initialize_vf_entry(struct ice_vf *vf)
>   	ice_vf_fdir_init(vf);
>   
>   	/* Initialize mailbox info for this VF */
> -	ice_mbx_init_vf_info(&pf->hw, &vf->mbx_info);
> +	if (ice_is_feature_supported(pf, ICE_F_MBX_LIMIT))
> +		ice_mbx_vf_clear_cnt_e830(&pf->hw, vf->vf_id);
> +	else
> +		ice_mbx_init_vf_info(&pf->hw, &vf->mbx_info);
>   
>   	mutex_init(&vf->cfg_lock);
>   }
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> index 40cb4ba0789c..75c8113e58ee 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> @@ -210,6 +210,38 @@ ice_mbx_detect_malvf(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info,
>   	return 0;
>   }
>   
> +/**
> + * ice_mbx_vf_dec_trig_e830 - Decrements the VF mailbox queue counter
> + * @hw: pointer to the HW struct
> + * @event: pointer to the control queue receive event
> + *
> + * This function triggers to decrement the counter
> + * MBX_VF_IN_FLIGHT_MSGS_AT_PF_CNT when the driver replenishes
> + * the buffers at the PF mailbox queue.
> + */
> +void ice_mbx_vf_dec_trig_e830(const struct ice_hw *hw,
> +			      const struct ice_rq_event_info *event)
> +{
> +	u16 vfid = le16_to_cpu(event->desc.retval);
> +
> +	wr32(hw, E830_MBX_VF_DEC_TRIG(vfid), 1);
> +}
> +
> +/**
> + * ice_mbx_vf_clear_cnt_e830 - Clear the VF mailbox queue count
> + * @hw: pointer to the HW struct
> + * @vf_id: VF ID in the PF space
> + *
> + * This function clears the counter MBX_VF_IN_FLIGHT_MSGS_AT_PF_CNT, and should
> + * be called when a VF is created and on VF reset.
> + */
> +void ice_mbx_vf_clear_cnt_e830(const struct ice_hw *hw, u16 vf_id)
> +{
> +	u32 reg = rd32(hw, E830_MBX_VF_IN_FLIGHT_MSGS_AT_PF_CNT(vf_id));
> +
> +	wr32(hw, E830_MBX_VF_DEC_TRIG(vf_id), reg);
> +}
> +
>   /**
>    * ice_mbx_vf_state_handler - Handle states of the overflow algorithm
>    * @hw: pointer to the HW struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.h b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
> index 44bc030d17e0..edcd9332368c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
> @@ -19,6 +19,9 @@ ice_aq_send_msg_to_vf(struct ice_hw *hw, u16 vfid, u32 v_opcode, u32 v_retval,
>   		      u8 *msg, u16 msglen, struct ice_sq_cd *cd);
>   
>   u32 ice_conv_link_speed_to_virtchnl(bool adv_link_support, u16 link_speed);
> +void ice_mbx_vf_dec_trig_e830(const struct ice_hw *hw,
> +			      const struct ice_rq_event_info *event);
> +void ice_mbx_vf_clear_cnt_e830(const struct ice_hw *hw, u16 vf_id);
>   int
>   ice_mbx_vf_state_handler(struct ice_hw *hw, struct ice_mbx_data *mbx_data,
>   			 struct ice_mbx_vf_info *vf_info, bool *report_malvf);
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index 59f62306b9cb..3c86d0c2fe1f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -4009,8 +4009,10 @@ ice_is_malicious_vf(struct ice_vf *vf, struct ice_mbx_data *mbxdata)
>    * @event: pointer to the AQ event
>    * @mbxdata: information used to detect VF attempting mailbox overflow
>    *
> - * called from the common asq/arq handler to
> - * process request from VF
> + * Called from the common asq/arq handler to process request from VF. When this
> + * flow is used for devices with hardware VF to PF message queue overflow
> + * support (ICE_F_MBX_LIMIT) mbxdata is set to NULL and ice_is_malicious_vf
> + * check is skipped.
>    */
>   void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
>   			   struct ice_mbx_data *mbxdata)
> @@ -4036,7 +4038,7 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
>   	mutex_lock(&vf->cfg_lock);
>   
>   	/* Check if the VF is trying to overflow the mailbox */
> -	if (ice_is_malicious_vf(vf, mbxdata))
> +	if (mbxdata && ice_is_malicious_vf(vf, mbxdata))
>   		goto finish;
>   
>   	/* Check if VF is disabled. */
