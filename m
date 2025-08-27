Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A11CB379A6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 07:06:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8320A81115;
	Wed, 27 Aug 2025 05:06:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bh5_PSvIqGn1; Wed, 27 Aug 2025 05:06:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADF4F8111F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756271203;
	bh=nWDbgxmd7+jA7d9qZKfLY2pob60GeRX4LjQisdiZt5Y=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6kLBLtvGSFiYZy8UQx/gT/WebHm/ogZoPsB993nPpbzFtCnzSxkC/Eps5Gnb+sfR3
	 7O/2QGViCY7m5L8l86+Ex/a9z/Np0zzoA8wN8gvxxcMdI23sUIJSIIXyQGlPkHylPV
	 eBETrF0oR3ly01WQ+H7VolpDg5+j6ycbG3GNaznDKsZ4SgVa2SYekMqFJd5D/GEmrr
	 LdHSJaRUmXhLplQvcNineuua0xy2bt+gdrb3t+1RlGt5LeFf/8S7UWiLa8ce6nDT8Z
	 uHJjU3vfmKgr2AmmdkGvZvtD0LS3o11bwpf+SCHw05ThNxUjg/ptKicP+/mjYU9d39
	 J1z/ZK79K4Reg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADF4F8111F;
	Wed, 27 Aug 2025 05:06:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F61DB0B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 05:06:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 35A066086C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 05:06:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t2Th0rqwoGQ6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 05:06:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D4D0E60866
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4D0E60866
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4D0E60866
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 05:06:40 +0000 (UTC)
Received: from [192.168.2.202] (p5b13a549.dip0.t-ipconnect.de [91.19.165.73])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 97BD860213B1A;
 Wed, 27 Aug 2025 07:06:23 +0200 (CEST)
Message-ID: <2a763bc5-5d36-4757-8fa1-758580fee6c7@molgen.mpg.de>
Date: Wed, 27 Aug 2025 07:06:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dave Ertman <david.m.ertman@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250826112545.495010-1-david.m.ertman@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250826112545.495010-1-david.m.ertman@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Cleanup legacy code in
 VF reset error path
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

Dear Dave,


Thank you for the patch. One nit for the summary/title, that the verb 
*clean up* is spelled with a space.

Am 26.08.25 um 13:25 schrieb Dave Ertman:
> In a previous commit (see Fixes tag), code to handle the LAG part

Instead of “see Fixes tag” I’d add the hash and summary into the text to 
not have the reader jump to the bottom. Or:

Moving the code to handle the LAG part of a VF reset to helper functions 
deprecated the function ….

> of a VF reset was refactored and moved into helper functions.
> This deprecated the function ice_lag_move_new_vf_nodes().  The
> cleanup missed a call to this function in the error path of
> ice_vc_cfg_qs_msg().
> 
> In the case that would end in the error path, a NULL pointer would
> be encountered due to the empty list of netdevs for members of the
> aggregate.

Do you have the trace? If yes, please paste it.

> Remove the unnecessary call to ice_lag_move_new_vf_nodes(), and since
> this is the only call to this function, remove the function as well.

Reading the message and the diff, I’d use:

ice: Remove deprecated ice_lag_move_new_vf_nodes()

> Fixes: 351d8d8ab6af ("ice: breakout common LAG code into helpers")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
> This goes to -next as the code is not yet present in -net
> ---
>   drivers/net/ethernet/intel/ice/ice_lag.c     | 55 --------------------
>   drivers/net/ethernet/intel/ice/ice_lag.h     |  1 -
>   drivers/net/ethernet/intel/ice/virt/queues.c |  2 -
>   3 files changed, 58 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
> index 80312e1dcf7f..aebf8e08a297 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> @@ -789,61 +789,6 @@ ice_lag_move_single_vf_nodes(struct ice_lag *lag, u8 oldport, u8 newport,
>   		ice_lag_move_vf_node_tc(lag, oldport, newport, vsi_num, tc);
>   }
>   
> -/**
> - * ice_lag_move_new_vf_nodes - Move Tx scheduling nodes for a VF if required
> - * @vf: the VF to move Tx nodes for
> - *
> - * Called just after configuring new VF queues. Check whether the VF Tx
> - * scheduling nodes need to be updated to fail over to the active port. If so,
> - * move them now.
> - */
> -void ice_lag_move_new_vf_nodes(struct ice_vf *vf)
> -{
> -	struct ice_lag_netdev_list ndlist;
> -	u8 pri_port, act_port;
> -	struct ice_lag *lag;
> -	struct ice_vsi *vsi;
> -	struct ice_pf *pf;
> -
> -	vsi = ice_get_vf_vsi(vf);
> -
> -	if (WARN_ON(!vsi))
> -		return;
> -
> -	if (WARN_ON(vsi->type != ICE_VSI_VF))
> -		return;
> -
> -	pf = vf->pf;
> -	lag = pf->lag;
> -
> -	mutex_lock(&pf->lag_mutex);
> -	if (!lag->bonded)
> -		goto new_vf_unlock;
> -
> -	pri_port = pf->hw.port_info->lport;
> -	act_port = lag->active_port;
> -
> -	if (lag->upper_netdev)
> -		ice_lag_build_netdev_list(lag, &ndlist);
> -
> -	if (lag->bonded && lag->primary && !list_empty(lag->netdev_head)) {
> -		if (lag->bond_aa &&
> -		    ice_is_feature_supported(pf, ICE_F_SRIOV_AA_LAG))
> -			ice_lag_aa_failover(lag, ICE_LAGS_IDX, NULL);
> -
> -		if (!lag->bond_aa &&
> -		    ice_is_feature_supported(pf, ICE_F_SRIOV_LAG) &&
> -		    pri_port != act_port)
> -			ice_lag_move_single_vf_nodes(lag, pri_port, act_port,
> -						     vsi->idx);
> -	}
> -
> -	ice_lag_destroy_netdev_list(lag, &ndlist);
> -
> -new_vf_unlock:
> -	mutex_unlock(&pf->lag_mutex);
> -}
> -
>   /**
>    * ice_lag_move_vf_nodes - move Tx scheduling nodes for all VFs to new port
>    * @lag: lag info struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
> index e2a0a782bdd7..f77ebcd61042 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.h
> @@ -82,7 +82,6 @@ struct ice_lag_work {
>   	} info;
>   };
>   
> -void ice_lag_move_new_vf_nodes(struct ice_vf *vf);
>   void ice_lag_aa_failover(struct ice_lag *lag, u8 dest, struct ice_pf *e_pf);
>   int ice_init_lag(struct ice_pf *pf);
>   void ice_deinit_lag(struct ice_pf *pf);
> diff --git a/drivers/net/ethernet/intel/ice/virt/queues.c b/drivers/net/ethernet/intel/ice/virt/queues.c
> index 5eb34030426c..9c8daffb66bf 100644
> --- a/drivers/net/ethernet/intel/ice/virt/queues.c
> +++ b/drivers/net/ethernet/intel/ice/virt/queues.c
> @@ -905,8 +905,6 @@ int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
>   	ice_lag_complete_vf_reset(pf->lag, act_prt);
>   	mutex_unlock(&pf->lag_mutex);
>   
> -	ice_lag_move_new_vf_nodes(vf);
> -
>   	/* send the response to the VF */
>   	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
>   				     VIRTCHNL_STATUS_ERR_PARAM, NULL, 0);

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
