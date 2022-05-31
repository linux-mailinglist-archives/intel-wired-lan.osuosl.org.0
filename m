Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF33653935F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 16:52:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BC714176D;
	Tue, 31 May 2022 14:52:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wkBdntUgnNWx; Tue, 31 May 2022 14:52:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C969415A0;
	Tue, 31 May 2022 14:52:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A71E21BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 14:52:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 94D2D415A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 14:52:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U1p6LKR6KBM4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 May 2022 14:52:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 32FB2410C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 14:52:19 +0000 (UTC)
Received: from [192.168.0.7] (ip5f5aeb8b.dynamic.kabel-deutschland.de
 [95.90.235.139])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4051E61EA1929;
 Tue, 31 May 2022 16:52:17 +0200 (CEST)
Message-ID: <31dc2a61-5538-b9c6-ea16-a238fc2143d3@molgen.mpg.de>
Date: Tue, 31 May 2022 16:52:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
References: <20220531131835.3614-1-mateusz.palczewski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220531131835.3614-1-mateusz.palczewski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/2] ice: Add error handling
 for queue config fail
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
Cc: Slawomir Laba <slawomirx.laba@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Mateusz, dear Przemyslaw,


Thank you for the patch.

Am 31.05.22 um 15:18 schrieb Mateusz Palczewski:
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Disable VF's RX/TX queues, when VIRTCHNL_OP_CONFIG_VSI_QUEUES fail.
> Not disabling them might lead to scenario, where PF driver leaves VF
> queues enabled, when VF's VSI failed queue config.
> In this scenario VF should not have RX/TX queues enabled. If PF failed
> to setup VF's queues, VF will reset due to TX timeouts in VF driver.

Nit: The verb is spelled with a space: to set up

> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Suggested-by: Slawomir Laba <slawomirx.laba@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 53 +++++++++----------
>   1 file changed, 26 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index 1d9b84c..4547bc1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -1569,35 +1569,27 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
>    */
>   static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
>   {
> -	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
>   	struct virtchnl_vsi_queue_config_info *qci =
>   	    (struct virtchnl_vsi_queue_config_info *)msg;
>   	struct virtchnl_queue_pair_info *qpi;
>   	struct ice_pf *pf = vf->pf;
>   	struct ice_vsi *vsi;
> -	int i, q_idx;
> +	int i = -1, q_idx;

Could you please add a comment to the commit message, why the for loop 
variable is initialized to -1. Reading a bit through the diff, it looks 
like `i` is not exclusively used as a loop variable. Maybe you could 
also add a cleanup patch, renaming the variable, or adding another one.

>   
> -	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
> -		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
>   		goto error_param;
> -	}
>   
> -	if (!ice_vc_isvalid_vsi_id(vf, qci->vsi_id)) {
> -		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +	if (!ice_vc_isvalid_vsi_id(vf, qci->vsi_id))
>   		goto error_param;
> -	}
>   
>   	vsi = ice_get_vf_vsi(vf);
> -	if (!vsi) {
> -		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +	if (!vsi)
>   		goto error_param;
> -	}
>   
>   	if (qci->num_queue_pairs > ICE_MAX_RSS_QS_PER_VF ||
>   	    qci->num_queue_pairs > min_t(u16, vsi->alloc_txq, vsi->alloc_rxq)) {
>   		dev_err(ice_pf_to_dev(pf), "VF-%d requesting more than supported number of queues: %d\n",
>   			vf->vf_id, min_t(u16, vsi->alloc_txq, vsi->alloc_rxq));
> -		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>   		goto error_param;
>   	}
>   
> @@ -1610,7 +1602,6 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
>   		    !ice_vc_isvalid_ring_len(qpi->txq.ring_len) ||
>   		    !ice_vc_isvalid_ring_len(qpi->rxq.ring_len) ||
>   		    !ice_vc_isvalid_q_id(vf, qci->vsi_id, qpi->txq.queue_id)) {
> -			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>   			goto error_param;
>   		}
>   
> @@ -1620,7 +1611,6 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
>   		 * for selected "vsi"
>   		 */
>   		if (q_idx >= vsi->alloc_txq || q_idx >= vsi->alloc_rxq) {
> -			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>   			goto error_param;
>   		}
>   
> @@ -1630,14 +1620,13 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
>   			vsi->tx_rings[i]->count = qpi->txq.ring_len;
>   
>   			/* Disable any existing queue first */
> -			if (ice_vf_vsi_dis_single_txq(vf, vsi, q_idx)) {
> -				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +			if (ice_vf_vsi_dis_single_txq(vf, vsi, q_idx))
>   				goto error_param;
> -			}
>   
>   			/* Configure a queue with the requested settings */
>   			if (ice_vsi_cfg_single_txq(vsi, vsi->tx_rings, q_idx)) {
> -				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +				dev_warn(ice_pf_to_dev(pf), "VF-%d failed to configure TX queue %d\n",
> +					 vf->vf_id, i);
>   				goto error_param;
>   			}
>   		}
> @@ -1651,17 +1640,13 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
>   
>   			if (qpi->rxq.databuffer_size != 0 &&
>   			    (qpi->rxq.databuffer_size > ((16 * 1024) - 128) ||
> -			     qpi->rxq.databuffer_size < 1024)) {
> -				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +			     qpi->rxq.databuffer_size < 1024))
>   				goto error_param;
> -			}
>   			vsi->rx_buf_len = qpi->rxq.databuffer_size;
>   			vsi->rx_rings[i]->rx_buf_len = vsi->rx_buf_len;
>   			if (qpi->rxq.max_pkt_size > max_frame_size ||
> -			    qpi->rxq.max_pkt_size < 64) {
> -				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +			    qpi->rxq.max_pkt_size < 64)
>   				goto error_param;
> -			}
>   
>   			vsi->max_frame = qpi->rxq.max_pkt_size;
>   			/* add space for the port VLAN since the VF driver is
> @@ -1672,16 +1657,30 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
>   				vsi->max_frame += VLAN_HLEN;
>   
>   			if (ice_vsi_cfg_single_rxq(vsi, q_idx)) {
> -				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +				dev_warn(ice_pf_to_dev(pf), "VF-%d failed to configure RX queue %d\n",
> +					 vf->vf_id, i);
>   				goto error_param;
>   			}
>   		}
>   	}
>   
> +	/* send the response to the VF */
> +	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
> +				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
>   error_param:
> +	/* disable whatever we can */
> +	for (; i >= 0; i--) {

With the rename, this could be then

     for (i = new_variable_name; i =>0; i--) {

> +		if (ice_vsi_ctrl_one_rx_ring(vsi, false, i, true))
> +			dev_err(ice_pf_to_dev(pf), "VF-%d could not disable RX queue %d\n",
> +				vf->vf_id, i);
> +		if (ice_vf_vsi_dis_single_txq(vf, vsi, i))
> +			dev_err(ice_pf_to_dev(pf), "VF-%d could not disable TX queue %d\n",
> +				vf->vf_id, i);
> +	}
> +
>   	/* send the response to the VF */
> -	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES, v_ret,
> -				     NULL, 0);
> +	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
> +				     VIRTCHNL_STATUS_ERR_PARAM, NULL, 0);
>   }
>   
>   /**


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
