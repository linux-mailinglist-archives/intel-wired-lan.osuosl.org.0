Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BF872472A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 17:03:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C2F4418DD;
	Tue,  6 Jun 2023 15:03:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C2F4418DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686063827;
	bh=K1l+ZA1kgQKL5erprBbizL7BTwr1I5tz26KH4XKLTvo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZSnACuTe0UnsenKukjH9kABtqp2crQDx68zZi2Qatygd0Ppn55vVOIinhm/5P1ZCN
	 nLcTB7qdMLjzgqt+fwk85AQUL94qPpexQnI1HOFybb7crhp/u0CJhQ7+FWJReDbdmf
	 dVenilkro6676r6e096gHeXVMMU63LiCDrnk8EL5QW3tvix2B8oWFPZdd0Nd++RduC
	 vn0qEs6Jxg1KsyenjemmAWlI4w2vmLTxtd/hk8SGQJCniBTrcStIm8Ww/29KC66rVy
	 JbIkFhz9acJyNh+zvPpN1/W18zx4q8MOPInya8fHTmU/HT+maYBgnOKcHWcPHBriBM
	 VYuvfJqhjii7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WKQPZUTtpJud; Tue,  6 Jun 2023 15:03:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E962B405A7;
	Tue,  6 Jun 2023 15:03:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E962B405A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF8C41BF399
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 09:03:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B47D0403B8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 09:03:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B47D0403B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I2A1Ozyk4Amb for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 09:03:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FE1C4047B
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3FE1C4047B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 09:03:48 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="217001330"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jun 2023 02:03:47 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 6 Jun 2023 02:03:46 -0700
Received: from DEN-LT-70577 (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 6 Jun 2023 02:03:45 -0700
Date: Tue, 6 Jun 2023 09:03:45 +0000
From: Daniel Machon <daniel.machon@microchip.com>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <20230606090345.lhbfllkslip7zbta@DEN-LT-70577>
References: <20230605182258.557933-1-david.m.ertman@intel.com>
 <20230605182258.557933-2-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230605182258.557933-2-david.m.ertman@intel.com>
X-Mailman-Approved-At: Tue, 06 Jun 2023 15:03:41 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1686042228; x=1717578228;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=B4BpfQHm9MQd+abSJc8cnrChLaBqe1+11MVv5UTPxLI=;
 b=ZokNanZ2A2U8Uljlu8mFncCZwj7ys5D/wFR40p0s/Y2GphzSKBkKwW6g
 W28/1rASOOsWpTig5d6/E2WT61g64+oD2kz+qqZ70yDPk26puvDlg3q9P
 +6+cbcyX7ag18gHPLl0IDvZ7V3MYhxHYcZBZT03JTqnnXWuH9H61QvJfq
 eUw/UJUiaEBcd9PUHmYrDchRI2RFPCiSrGFq8we1a7r+7Hekm+McY8U3/
 20RutJ5hIc95JnxincMLe5TTjBC87yWaerotSqBlCE41aR88ggqXXunzC
 0QsQQ9seXAarj+kXtAseL4O2jeVIqnS1kiKksCwuyQ9sNwTl+uNDbyHzK
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=mchp header.b=ZokNanZ2
Subject: Re: [Intel-wired-lan] [PATCH net v2 01/10] ice: Correctly
 initialize queue context values
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_alloc_lan_q_ctx function allocates the queue context array for a
> given traffic class. This function uses devm_kcalloc which will
> zero-allocate the structure. Thus, prior to any queue being setup by
> ice_ena_vsi_txq, the q_ctx structure will have a q_handle of 0 and a q_teid
> of 0. These are potentially valid values.
> 
> Modify the ice_alloc_lan_q_ctx function to initialize every member of the
> q_ctx array to have invalid values. Modify ice_dis_vsi_txq to ensure that
> it assigns q_teid to an invalid value when it assigns q_handle to the
> invalid value as well.
> 
> This will allow other code to check whether the queue context is currently
> valid before operating on it.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c |  1 +
>  drivers/net/ethernet/intel/ice/ice_sched.c  | 23 ++++++++++++++++-----
>  2 files changed, 19 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index a9f2e6bff806..23a9f169bc71 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -4708,6 +4708,7 @@ ice_dis_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u8 num_queues,
>                         break;
>                 ice_free_sched_node(pi, node);
>                 q_ctx->q_handle = ICE_INVAL_Q_HANDLE;
> +               q_ctx->q_teid = ICE_INVAL_TEID;
>         }
>         mutex_unlock(&pi->sched_lock);
>         kfree(qg_list);
> diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
> index 824bac5ce003..0db9eb8fd402 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sched.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sched.c
> @@ -572,18 +572,24 @@ ice_alloc_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 new_numqs)
>  {
>         struct ice_vsi_ctx *vsi_ctx;
>         struct ice_q_ctx *q_ctx;
> +       u16 idx;
> 
>         vsi_ctx = ice_get_vsi_ctx(hw, vsi_handle);
>         if (!vsi_ctx)
>                 return -EINVAL;
>         /* allocate LAN queue contexts */
>         if (!vsi_ctx->lan_q_ctx[tc]) {
> -               vsi_ctx->lan_q_ctx[tc] = devm_kcalloc(ice_hw_to_dev(hw),
> -                                                     new_numqs,
> -                                                     sizeof(*q_ctx),
> -                                                     GFP_KERNEL);
> -               if (!vsi_ctx->lan_q_ctx[tc])
> +               q_ctx = devm_kcalloc(ice_hw_to_dev(hw), new_numqs,
> +                                    sizeof(*q_ctx), GFP_KERNEL);
> +               if (!q_ctx)
>                         return -ENOMEM;
> +
> +               for (idx = 0; idx < new_numqs; idx++) {
> +                       q_ctx[idx].q_handle = ICE_INVAL_Q_HANDLE;
> +                       q_ctx[idx].q_teid = ICE_INVAL_TEID;
> +               }
> +
> +               vsi_ctx->lan_q_ctx[tc] = q_ctx;
>                 vsi_ctx->num_lan_q_entries[tc] = new_numqs;
>                 return 0;
>         }
> @@ -595,9 +601,16 @@ ice_alloc_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 new_numqs)
>                                      sizeof(*q_ctx), GFP_KERNEL);
>                 if (!q_ctx)
>                         return -ENOMEM;
> +
>                 memcpy(q_ctx, vsi_ctx->lan_q_ctx[tc],
>                        prev_num * sizeof(*q_ctx));
>                 devm_kfree(ice_hw_to_dev(hw), vsi_ctx->lan_q_ctx[tc]);
> +
> +               for (idx = prev_num; idx < new_numqs; idx++) {
> +                       q_ctx[idx].q_handle = ICE_INVAL_Q_HANDLE;
> +                       q_ctx[idx].q_teid = ICE_INVAL_TEID;
> +               }
> +
>                 vsi_ctx->lan_q_ctx[tc] = q_ctx;
>                 vsi_ctx->num_lan_q_entries[tc] = new_numqs;
>         }
> --
> 2.40.1
> 
>

Hi Dave,

This does not apply to my net-next tree, but I guess that falls under
your 'fat-fingered' comment. I am still going ahead and reviewing this
version.

As for this patch:

Reviewed-by: Daniel Machon <daniel.machon@microchip.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
