Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A3745B7D1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Nov 2021 10:52:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0D245403DC;
	Wed, 24 Nov 2021 09:52:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RYTTBSx2SGTZ; Wed, 24 Nov 2021 09:52:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC82D4037F;
	Wed, 24 Nov 2021 09:52:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 626651BF9BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 09:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B23160B75
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 09:51:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YGVQeRWIH71V for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Nov 2021 09:51:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB78A60B71
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 09:51:54 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aea8c.dynamic.kabel-deutschland.de
 [95.90.234.140])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 40E3E61E64846;
 Wed, 24 Nov 2021 10:51:51 +0100 (CET)
Message-ID: <10cc4a54-0b25-3c3c-bcc0-41b8bd096cb5@molgen.mpg.de>
Date: Wed, 24 Nov 2021 10:51:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Dave Ertman <david.m.ertman@intel.com>
References: <20211123182536.315714-1-david.m.ertman@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20211123182536.315714-1-david.m.ertman@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: add support for DSCP
 QoS for IDC
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Dave,


Am 23.11.21 um 19:25 schrieb Dave Ertman:
> The ice driver provides QoS information to auxiliary drivers
> through the exported function ice_get_qos_params.  This function
> doesn't currently support L3 DSCP QoS.
> 
> Add the necessary defines, structure elements and code to support
> DSCP QoS through the IDC functions.

How did you test this?

In what datasheet (name, revision, section) is that documented?

> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_idc.c | 5 +++++
>   include/linux/net/intel/iidc.h           | 5 +++++
>   2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
> index fc3580167e7b..263a2e7577a2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_idc.c
> +++ b/drivers/net/ethernet/intel/ice/ice_idc.c
> @@ -227,6 +227,11 @@ void ice_get_qos_params(struct ice_pf *pf, struct iidc_qos_params *qos)
>   
>   	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++)
>   		qos->tc_info[i].rel_bw = dcbx_cfg->etscfg.tcbwtable[i];
> +
> +	qos->pfc_mode = dcbx_cfg->pfc_mode;
> +	if (qos->pfc_mode == IIDC_DSCP_PFC_MODE)

Just a nit as the compiler will probably do it itself, but you could use 
`dcbx_cfg->pfc_mode` in the check, and move the assignment into the body.

> +		for (i = 0; i < IIDC_MAX_DSCP_MAPPING; i++)
> +			qos->dscp_map[i] = dcbx_cfg->dscp_map[i];
>   }
>   EXPORT_SYMBOL_GPL(ice_get_qos_params);
>   
> diff --git a/include/linux/net/intel/iidc.h b/include/linux/net/intel/iidc.h
> index 1289593411d3..0a90f301679d 100644
> --- a/include/linux/net/intel/iidc.h
> +++ b/include/linux/net/intel/iidc.h
> @@ -32,6 +32,9 @@ enum iidc_rdma_protocol {
>   };
>   
>   #define IIDC_MAX_USER_PRIORITY		8
> +#define IIDC_MAX_DSCP_MAPPING		64
> +#define IIDC_VLAN_PFC_MODE		0x0
> +#define IIDC_DSCP_PFC_MODE		0x1
>   
>   /* Struct to hold per RDMA Qset info */
>   struct iidc_rdma_qset_params {
> @@ -60,6 +63,8 @@ struct iidc_qos_params {
>   	u8 vport_relative_bw;
>   	u8 vport_priority_type;
>   	u8 num_tc;
> +	u8 pfc_mode;
> +	u8 dscp_map[IIDC_MAX_DSCP_MAPPING];
>   };
>   
>   struct iidc_event {


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
