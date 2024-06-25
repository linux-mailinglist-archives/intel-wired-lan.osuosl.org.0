Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1239E916C80
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jun 2024 17:16:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39906419BA;
	Tue, 25 Jun 2024 15:16:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P3ORgU1HeJZK; Tue, 25 Jun 2024 15:16:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 066C6419B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719328607;
	bh=ZhEO2eeX/+iWv59POWI64e7fTxG26jW4GujldemoFlw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5zcytp8mNpaTN1jUcRLqo/tT5DEKUiORueAIq6ytz8nPeBceDlb8jcMl2JK4MPNLd
	 gxRZj6FebK8eOF4bx7nropHpvNQufBPbfNADeKPTzPE648rrmfFhvdDfvB0S647nC0
	 XAiEvdodUmWddTOq1/rF581DU5zcYAzkFyjZV/Sa4RH3VOV//V5/W3bWbaYsjRbFtK
	 EwhxFh0X1JB39G6oRM3zKlOY8Katn8/TRpoaClbuqTt2xACV3/K0wrInEKOtfUIocZ
	 uqxALwBBqEDS/JOyI0xXvUkP0cXhvo4lIV4kq6Zd7g4QmPWnVQfzJ+VqlvUkWLWNlq
	 eN6CxJWy9Hm/Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 066C6419B2;
	Tue, 25 Jun 2024 15:16:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A398F1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 15:16:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E5BC4198B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 15:16:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0325Z62JzVz6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jun 2024 15:16:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D25FF41981
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D25FF41981
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D25FF41981
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 15:16:43 +0000 (UTC)
X-CSE-ConnectionGUID: UC84fNOqTICWaMKhd019wQ==
X-CSE-MsgGUID: Zr2VvnZpRHiEPC2dYYlmNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="20163915"
X-IronPort-AV: E=Sophos;i="6.08,264,1712646000"; d="scan'208";a="20163915"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 08:16:42 -0700
X-CSE-ConnectionGUID: kQx71BvPTMyKrVLa/AmIOA==
X-CSE-MsgGUID: tc3dOZPqSlqJHiwu4cWUPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,264,1712646000"; d="scan'208";a="48667690"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.246.1.209])
 ([10.246.1.209])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 08:16:40 -0700
Message-ID: <887278b5-55f3-47a9-9d10-8db68e8dd8f6@linux.intel.com>
Date: Tue, 25 Jun 2024 17:16:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240624144530.690545-1-marcin.szycik@linux.intel.com>
 <20240624144530.690545-8-marcin.szycik@linux.intel.com>
 <e7769bd7-e4fa-412a-8ad1-c0e5b8655a52@molgen.mpg.de>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <e7769bd7-e4fa-412a-8ad1-c0e5b8655a52@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719328604; x=1750864604;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=jaRwI4LG0087Dlt9uKGeztFSXD7BSiLKVBKrHuND4UY=;
 b=W41j1U/zzT7YiPXjkx1exd46mpy4i7+gp+UGP8ZwbpCtIqBRXzxbM4i5
 IHQSlK+zLvfIK/hGUdRoaxOUnn6DQ9nlkA2MpyH6AxGn4llWmw161iiyL
 t7k1boufHIQCTw3B9B6IwwBg99hr6UaBEHujnuR0OK3IzPufJaA2uAzpn
 dP7GNaoUfVrdCB5wP/DLy67/BDMOOUmb5RpMjaET76/osf+/n5v6wy930
 5/T2pKRLA20IieteUI1aKya9eIimpTiKlwXWLklO0XAnkHcmxS3aJvslb
 RFP0oGpe/JYHEx47W/SkOjjxgjd1w4JqX59OKfmxLuMHxPOth3AwuRmmP
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W41j1U/z
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



On 25.06.2024 10:31, Paul Menzel wrote:
> Dear Marcin,
> 
> 
> Thank you for your patch.
> 
> Am 24.06.24 um 16:45 schrieb Marcin Szycik:
>> Track the number of rules and recipes added to switch. Add a tracepoint to
>> ice_aq_sw_rules(), which shows both rule and recipe count. This information
>> can be helpful when designing a set of rules to program to the hardware, as
>> it shows where the practical limit is. Actual limits are known (64 recipes,
>> 32k rules), but it's hard to translate these values to how many rules the
>> *user* can actually create, because of extra metadata being implicitly
>> added, and recipe/rule chaining. Chaining combines several recipes/rules to
>> create a larger recipe/rule, so one large rule added by the user might
>> actually consume multiple rules from hardware perspective.
>>
>> Rule counter is simply incremented/decremented in ice_aq_sw_rules(), since
>> all rules are added or removed via it.
>>
>> Counting recipes is harder, as recipes can't be removed (only overwritten).
>> Recipes added via ice_aq_add_recipe() could end up being unused, when
>> there is an error in later stages of rule creation. Instead, track the
>> allocation and freeing of recipes, which should reflect the actual usage of
>> recipes (if something fails after recipe(s) were created, caller should
>> free them). Also, a number of recipes are loaded from NVM by default -
>> initialize the recipe counter with the number of these recipes on switch
>> initialization.
> 
> Can you please add an example how to use the tracepoint?

Sure, will add to next version.

Example configuration:
  cd /sys/kernel/tracing
  echo function > current_tracer
  echo ice_aq_sw_rules > set_ftrace_filter
  echo ice_aq_sw_rules > set_event
  echo 1 > tracing_on
  cat trace

Sample output:
  tc-4097    [069] ...1.   787.595536: ice_aq_sw_rules <-ice_rem_adv_rule
  tc-4097    [069] .....   787.595705: ice_aq_sw_rules: rules=9 recipes=15
  tc-4098    [057] ...1.   787.652033: ice_aq_sw_rules <-ice_add_adv_rule
  tc-4098    [057] .....   787.652201: ice_aq_sw_rules: rules=10 recipes=16

Thanks,
Marcin

>> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_common.c |  3 +++
>>   drivers/net/ethernet/intel/ice/ice_switch.c | 22 +++++++++++++++++++--
>>   drivers/net/ethernet/intel/ice/ice_trace.h  | 18 +++++++++++++++++
>>   drivers/net/ethernet/intel/ice/ice_type.h   |  2 ++
>>   4 files changed, 43 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
>> index 6abd1b3796ab..009716a12a26 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_common.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
>> @@ -934,6 +934,9 @@ static int ice_init_fltr_mgmt_struct(struct ice_hw *hw)
>>       INIT_LIST_HEAD(&sw->vsi_list_map_head);
>>       sw->prof_res_bm_init = 0;
>>   +    /* Initialize recipe count with default recipes read from NVM */
>> +    sw->recp_cnt = ICE_SW_LKUP_LAST;
>> +
>>       status = ice_init_def_sw_recp(hw);
>>       if (status) {
>>           devm_kfree(ice_hw_to_dev(hw), hw->switch_info);
>> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
>> index 27828cdfe085..3caafcdc301f 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
>> @@ -3,6 +3,7 @@
>>     #include "ice_lib.h"
>>   #include "ice_switch.h"
>> +#include "ice_trace.h"
>>     #define ICE_ETH_DA_OFFSET        0
>>   #define ICE_ETH_ETHTYPE_OFFSET        12
>> @@ -1961,6 +1962,15 @@ ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
>>           hw->adminq.sq_last_status == ICE_AQ_RC_ENOENT)
>>           status = -ENOENT;
>>   +    if (!status) {
>> +        if (opc == ice_aqc_opc_add_sw_rules)
>> +            hw->switch_info->rule_cnt += num_rules;
>> +        else if (opc == ice_aqc_opc_remove_sw_rules)
>> +            hw->switch_info->rule_cnt -= num_rules;
>> +    }
>> +
>> +    trace_ice_aq_sw_rules(hw->switch_info);
>> +
>>       return status;
>>   }
>>   @@ -2181,8 +2191,10 @@ int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
>>       sw_buf->res_type = cpu_to_le16(res_type);
>>       status = ice_aq_alloc_free_res(hw, sw_buf, buf_len,
>>                          ice_aqc_opc_alloc_res);
>> -    if (!status)
>> +    if (!status) {
>>           *rid = le16_to_cpu(sw_buf->elem[0].e.sw_resp);
>> +        hw->switch_info->recp_cnt++;
>> +    }
>>         return status;
>>   }
>> @@ -2196,7 +2208,13 @@ int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
>>    */
>>   static int ice_free_recipe_res(struct ice_hw *hw, u16 rid)
>>   {
>> -    return ice_free_hw_res(hw, ICE_AQC_RES_TYPE_RECIPE, 1, &rid);
>> +    int status;
>> +
>> +    status = ice_free_hw_res(hw, ICE_AQC_RES_TYPE_RECIPE, 1, &rid);
>> +    if (!status)
>> +        hw->switch_info->recp_cnt--;
>> +
>> +    return status;
>>   }
>>     /**
>> diff --git a/drivers/net/ethernet/intel/ice/ice_trace.h b/drivers/net/ethernet/intel/ice/ice_trace.h
>> index 244cddd2a9ea..07aab6e130cd 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_trace.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_trace.h
>> @@ -330,6 +330,24 @@ DEFINE_EVENT(ice_esw_br_port_template,
>>            TP_ARGS(port)
>>   );
>>   +DECLARE_EVENT_CLASS(ice_switch_stats_template,
>> +            TP_PROTO(struct ice_switch_info *sw_info),
>> +            TP_ARGS(sw_info),
>> +            TP_STRUCT__entry(__field(u16, rule_cnt)
>> +                     __field(u8, recp_cnt)),
>> +            TP_fast_assign(__entry->rule_cnt = sw_info->rule_cnt;
>> +                   __entry->recp_cnt = sw_info->recp_cnt;),
>> +            TP_printk("rules=%u recipes=%u",
>> +                  __entry->rule_cnt,
>> +                  __entry->recp_cnt)
>> +);
>> +
>> +DEFINE_EVENT(ice_switch_stats_template,
>> +         ice_aq_sw_rules,
>> +         TP_PROTO(struct ice_switch_info *sw_info),
>> +         TP_ARGS(sw_info)
>> +);
>> +
>>   /* End tracepoints */
>>     #endif /* _ICE_TRACE_H_ */
>> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
>> index c330a436d11a..b6bc2de53b0a 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_type.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
>> @@ -764,6 +764,8 @@ struct ice_switch_info {
>>       struct ice_sw_recipe *recp_list;
>>       u16 prof_res_bm_init;
>>       u16 max_used_prof_index;
>> +    u16 rule_cnt;
>> +    u8 recp_cnt;
>>         DECLARE_BITMAP(prof_res_bm[ICE_MAX_NUM_PROFILES], ICE_MAX_FV_WORDS);
>>   };
> 
> 
> Kind regards,
> 
> Paul
