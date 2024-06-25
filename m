Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58860916149
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jun 2024 10:32:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 192C360F0B;
	Tue, 25 Jun 2024 08:32:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id scCl_DwWoPa6; Tue, 25 Jun 2024 08:32:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E6F960FCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719304352;
	bh=r/CEW5EwsZ905JMkV+pv3+N4w3sGSRrXHRYCp1SN9zQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9X7+QBxDWyX9iZn43OqLeO0xMrq//hoWMSAllg3D/lDwdp1xadpCrBEOjZHxDXr52
	 4EXpaUyHK/KmLZ1O7F4kq90pyr0OkJFtJDyCdSLmxZaMHSVBqRhnzviefp8+Bn1mKH
	 QR3XaqZxBM/JCyZS7wvjha7hc8cU2gVbVA+LE2di13qyTEW7jyED5bUe8+VSG/dn8T
	 WSjGhC1apQ8acql0agp+zIqyJlXd2KbS4eW7sy3tupYhOqfuT8nhIYiRHrfBVwknbh
	 gTMkjZnlengdNL0cskhqy05mTblYKJ8WHGOOkftEvAkWXHdij2bs7JswKbzab8JHGU
	 uj7nUgSG0upNg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E6F960FCF;
	Tue, 25 Jun 2024 08:32:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A71911BF355
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 08:32:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A0A8A60F04
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 08:32:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ry6vBDk8xuya for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jun 2024 08:32:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ED78360656
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED78360656
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED78360656
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 08:32:26 +0000 (UTC)
Received: from [10.193.113.5] (ewla129.WLAN.Uni-Marburg.DE [137.248.70.129])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B05D561E5FE05;
 Tue, 25 Jun 2024 10:31:50 +0200 (CEST)
Message-ID: <e7769bd7-e4fa-412a-8ad1-c0e5b8655a52@molgen.mpg.de>
Date: Tue, 25 Jun 2024 10:31:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>
References: <20240624144530.690545-1-marcin.szycik@linux.intel.com>
 <20240624144530.690545-8-marcin.szycik@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240624144530.690545-8-marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 7/7] ice: Add tracepoint
 for adding and removing switch rules
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
Cc: netdev@vger.kernel.org, michal.swiatkowski@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 aleksander.lobakin@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Marcin,


Thank you for your patch.

Am 24.06.24 um 16:45 schrieb Marcin Szycik:
> Track the number of rules and recipes added to switch. Add a tracepoint to
> ice_aq_sw_rules(), which shows both rule and recipe count. This information
> can be helpful when designing a set of rules to program to the hardware, as
> it shows where the practical limit is. Actual limits are known (64 recipes,
> 32k rules), but it's hard to translate these values to how many rules the
> *user* can actually create, because of extra metadata being implicitly
> added, and recipe/rule chaining. Chaining combines several recipes/rules to
> create a larger recipe/rule, so one large rule added by the user might
> actually consume multiple rules from hardware perspective.
> 
> Rule counter is simply incremented/decremented in ice_aq_sw_rules(), since
> all rules are added or removed via it.
> 
> Counting recipes is harder, as recipes can't be removed (only overwritten).
> Recipes added via ice_aq_add_recipe() could end up being unused, when
> there is an error in later stages of rule creation. Instead, track the
> allocation and freeing of recipes, which should reflect the actual usage of
> recipes (if something fails after recipe(s) were created, caller should
> free them). Also, a number of recipes are loaded from NVM by default -
> initialize the recipe counter with the number of these recipes on switch
> initialization.

Can you please add an example how to use the tracepoint?

> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c |  3 +++
>   drivers/net/ethernet/intel/ice/ice_switch.c | 22 +++++++++++++++++++--
>   drivers/net/ethernet/intel/ice/ice_trace.h  | 18 +++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_type.h   |  2 ++
>   4 files changed, 43 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 6abd1b3796ab..009716a12a26 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -934,6 +934,9 @@ static int ice_init_fltr_mgmt_struct(struct ice_hw *hw)
>   	INIT_LIST_HEAD(&sw->vsi_list_map_head);
>   	sw->prof_res_bm_init = 0;
>   
> +	/* Initialize recipe count with default recipes read from NVM */
> +	sw->recp_cnt = ICE_SW_LKUP_LAST;
> +
>   	status = ice_init_def_sw_recp(hw);
>   	if (status) {
>   		devm_kfree(ice_hw_to_dev(hw), hw->switch_info);
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
> index 27828cdfe085..3caafcdc301f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -3,6 +3,7 @@
>   
>   #include "ice_lib.h"
>   #include "ice_switch.h"
> +#include "ice_trace.h"
>   
>   #define ICE_ETH_DA_OFFSET		0
>   #define ICE_ETH_ETHTYPE_OFFSET		12
> @@ -1961,6 +1962,15 @@ ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
>   	    hw->adminq.sq_last_status == ICE_AQ_RC_ENOENT)
>   		status = -ENOENT;
>   
> +	if (!status) {
> +		if (opc == ice_aqc_opc_add_sw_rules)
> +			hw->switch_info->rule_cnt += num_rules;
> +		else if (opc == ice_aqc_opc_remove_sw_rules)
> +			hw->switch_info->rule_cnt -= num_rules;
> +	}
> +
> +	trace_ice_aq_sw_rules(hw->switch_info);
> +
>   	return status;
>   }
>   
> @@ -2181,8 +2191,10 @@ int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
>   	sw_buf->res_type = cpu_to_le16(res_type);
>   	status = ice_aq_alloc_free_res(hw, sw_buf, buf_len,
>   				       ice_aqc_opc_alloc_res);
> -	if (!status)
> +	if (!status) {
>   		*rid = le16_to_cpu(sw_buf->elem[0].e.sw_resp);
> +		hw->switch_info->recp_cnt++;
> +	}
>   
>   	return status;
>   }
> @@ -2196,7 +2208,13 @@ int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
>    */
>   static int ice_free_recipe_res(struct ice_hw *hw, u16 rid)
>   {
> -	return ice_free_hw_res(hw, ICE_AQC_RES_TYPE_RECIPE, 1, &rid);
> +	int status;
> +
> +	status = ice_free_hw_res(hw, ICE_AQC_RES_TYPE_RECIPE, 1, &rid);
> +	if (!status)
> +		hw->switch_info->recp_cnt--;
> +
> +	return status;
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_trace.h b/drivers/net/ethernet/intel/ice/ice_trace.h
> index 244cddd2a9ea..07aab6e130cd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_trace.h
> +++ b/drivers/net/ethernet/intel/ice/ice_trace.h
> @@ -330,6 +330,24 @@ DEFINE_EVENT(ice_esw_br_port_template,
>   	     TP_ARGS(port)
>   );
>   
> +DECLARE_EVENT_CLASS(ice_switch_stats_template,
> +		    TP_PROTO(struct ice_switch_info *sw_info),
> +		    TP_ARGS(sw_info),
> +		    TP_STRUCT__entry(__field(u16, rule_cnt)
> +				     __field(u8, recp_cnt)),
> +		    TP_fast_assign(__entry->rule_cnt = sw_info->rule_cnt;
> +				   __entry->recp_cnt = sw_info->recp_cnt;),
> +		    TP_printk("rules=%u recipes=%u",
> +			      __entry->rule_cnt,
> +			      __entry->recp_cnt)
> +);
> +
> +DEFINE_EVENT(ice_switch_stats_template,
> +	     ice_aq_sw_rules,
> +	     TP_PROTO(struct ice_switch_info *sw_info),
> +	     TP_ARGS(sw_info)
> +);
> +
>   /* End tracepoints */
>   
>   #endif /* _ICE_TRACE_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index c330a436d11a..b6bc2de53b0a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -764,6 +764,8 @@ struct ice_switch_info {
>   	struct ice_sw_recipe *recp_list;
>   	u16 prof_res_bm_init;
>   	u16 max_used_prof_index;
> +	u16 rule_cnt;
> +	u8 recp_cnt;
>   
>   	DECLARE_BITMAP(prof_res_bm[ICE_MAX_NUM_PROFILES], ICE_MAX_FV_WORDS);
>   };


Kind regards,

Paul
