Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5A11D094C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2020 08:59:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0A118863A4;
	Wed, 13 May 2020 06:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VMA9lGEnuKOK; Wed, 13 May 2020 06:59:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62B838643D;
	Wed, 13 May 2020 06:59:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD0CA1BF23F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2020 06:59:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A36CE8708C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2020 06:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2i1erlDC7hUs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 May 2020 06:59:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EE65F86E9F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2020 06:59:15 +0000 (UTC)
IronPort-SDR: a1IHzLZb9yWYlbhu2WqA00coy2jvBCrrxPvdIqbe5vdOEoEoTkGONnWBsBdPbwaNZbUicgdtnr
 ibblvSwH7dPA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 23:59:14 -0700
IronPort-SDR: KBvAPJweDjxTKHXtKnljPdyFgJVSSYsYJ070HSIRJJ5BlHhyqv+rWi9/Qq+XzGD2ciuPs3viTZ
 jD0xVNaNmyzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,386,1583222400"; d="scan'208";a="280403217"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.172.186])
 ([10.185.172.186])
 by orsmga002.jf.intel.com with ESMTP; 12 May 2020 23:59:13 -0700
To: Andre Guedes <andre.guedes@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20200512173553.39460-1-andre.guedes@intel.com>
 <20200512173553.39460-2-andre.guedes@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <3cb071e1-28d4-c885-bc64-d5ab03cf9578@intel.com>
Date: Wed, 13 May 2020 09:59:13 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200512173553.39460-2-andre.guedes@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 2/2] igc: Fix IGC_MAX_RXNFC_RULES
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/12/2020 20:35, Andre Guedes wrote:
> IGC supports a total of 32 rules. 16 MAC address based, 8 VLAN priority
> based, and 8 ethertype based. This patch fixes IGC_MAX_RXNFC_RULES
> accordingly.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 14f9edaaaf83..5dbc5a156626 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -457,7 +457,10 @@ struct igc_nfc_rule {
>   	u16 action;
>   };
>   
> -#define IGC_MAX_RXNFC_RULES		16
> +/* IGC supports a total of 32 NFC rules: 16 MAC address based,, 8 VLAN priority
> + * based, and 8 ethertype based.
> + */
> +#define IGC_MAX_RXNFC_RULES		32
>   
>   /* igc_desc_unused - calculate if we have unused descriptors */
>   static inline u16 igc_desc_unused(const struct igc_ring *ring)
> 
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
