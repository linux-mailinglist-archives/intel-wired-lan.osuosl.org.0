Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FAC4582ED
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Nov 2021 11:31:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B33CC40291;
	Sun, 21 Nov 2021 10:31:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id roD3lx-XTSyk; Sun, 21 Nov 2021 10:31:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 751A8402C3;
	Sun, 21 Nov 2021 10:31:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C8361BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 10:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7858E40285
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 10:30:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ra1noZ7mHS1U for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Nov 2021 10:30:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BA6A640221
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 10:30:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10174"; a="258466627"
X-IronPort-AV: E=Sophos;i="5.87,252,1631602800"; d="scan'208";a="258466627"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2021 02:30:55 -0800
X-IronPort-AV: E=Sophos;i="5.87,252,1631602800"; d="scan'208";a="508550184"
Received: from krausnex-mobl.ger.corp.intel.com (HELO [10.13.8.200])
 ([10.13.8.200])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2021 02:30:54 -0800
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20211109094216.132929-1-sasha.neftin@intel.com>
From: "Kraus, NechamaX" <nechamax.kraus@linux.intel.com>
Message-ID: <39d41544-c64c-5495-ac4d-f0cc512a0b90@linux.intel.com>
Date: Sun, 21 Nov 2021 12:30:45 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211109094216.132929-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove obsolete mask
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

On 11/9/2021 11:42, Sasha Neftin wrote:
> 'IGC_CTRL_EXT_LINK_MODE_MASK' not in use. This patch comes to tidy up
> obsolete define.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 910ad1a0d375..0666bf4b54d5 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -85,9 +85,6 @@
>   
>   #define IGC_WUFC_EXT_FILTER_MASK GENMASK(31, 8)
>   
> -/* Physical Func Reset Done Indication */
> -#define IGC_CTRL_EXT_LINK_MODE_MASK	0x00C00000
> -
>   /* Loop limit on how long we wait for auto-negotiation to complete */
>   #define COPPER_LINK_UP_LIMIT		10
>   #define PHY_AUTO_NEG_LIMIT		45
> 
Tested-by: Nechama Kraus <nechamax.kraus@linux.intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
