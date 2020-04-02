Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A6119BB8D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Apr 2020 08:16:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 61D9020425;
	Thu,  2 Apr 2020 06:16:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k9AK-MmbLkeY; Thu,  2 Apr 2020 06:16:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 281922040B;
	Thu,  2 Apr 2020 06:16:39 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 385861BF405
 for <intel-wired-lan@osuosl.org>; Thu,  2 Apr 2020 06:16:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 30A8388185
 for <intel-wired-lan@osuosl.org>; Thu,  2 Apr 2020 06:16:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hpPxxf5I4lSV for <intel-wired-lan@osuosl.org>;
 Thu,  2 Apr 2020 06:16:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EDC5F8805D
 for <intel-wired-lan@osuosl.org>; Thu,  2 Apr 2020 06:16:36 +0000 (UTC)
IronPort-SDR: VY2CYRrsipel7PGUKnzn+xiwbC5aNk3Yu0ZuOv46sItvhxo6+tkloHAmlcAQ9yKPq4CxMe2/3L
 uDmyQec5H8Rg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 23:16:36 -0700
IronPort-SDR: JCoOWzZsvGLgz7c9qhDbb6AvsKkOfD+WY4OJ9z5/vcxBGYvDxYEArv0CDlXGgjR5Aqhge0pA2T
 FGpR6OuI012Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,334,1580803200"; d="scan'208";a="423010629"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.214.218.243])
 ([10.214.218.243])
 by orsmga005.jf.intel.com with ESMTP; 01 Apr 2020 23:16:34 -0700
To: Vitaly Lifshits <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
References: <20200401091644.5863-1-vitaly.lifshits@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <08d29d85-9f5b-f97b-d6dc-9346b5844beb@intel.com>
Date: Thu, 2 Apr 2020 09:16:33 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200401091644.5863-1-vitaly.lifshits@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: remove IGC_REMOVED function
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

On 4/1/2020 12:16, Vitaly Lifshits wrote:
> igc driver has leftovers from the previous device that supported
> virtualization. This can be found in the function IGC_REMOVED which
> became obsolete, and can be removed.
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_mac.h  | 4 ----
>   drivers/net/ethernet/intel/igc/igc_main.c | 3 ---
>   drivers/net/ethernet/intel/igc/igc_regs.h | 3 +--
>   3 files changed, 1 insertion(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.h b/drivers/net/ethernet/intel/igc/igc_mac.h
> index 832cccec87cd..b5963f86defb 100644
> --- a/drivers/net/ethernet/intel/igc/igc_mac.h
> +++ b/drivers/net/ethernet/intel/igc/igc_mac.h
> @@ -8,10 +8,6 @@
>   #include "igc_phy.h"
>   #include "igc_defines.h"
>   
> -#ifndef IGC_REMOVED
> -#define IGC_REMOVED(a) (0)
> -#endif /* IGC_REMOVED */
> -
>   /* forward declaration */
>   s32 igc_disable_pcie_master(struct igc_hw *hw);
>   s32 igc_check_for_copper_link(struct igc_hw *hw);
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index c3555148ca0e..cb0d523ffc19 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -4662,9 +4662,6 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
>   	u8 __iomem *hw_addr = READ_ONCE(hw->hw_addr);
>   	u32 value = 0;
>   
> -	if (IGC_REMOVED(hw_addr))
> -		return ~value;
> -
>   	value = readl(&hw_addr[reg]);
>   
>   	/* reads should not return all F's */
> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
> index 82158176634c..21b6fc42edbb 100644
> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> @@ -277,8 +277,7 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg);
>   #define wr32(reg, val) \
>   do { \
>   	u8 __iomem *hw_addr = READ_ONCE((hw)->hw_addr); \
> -	if (!IGC_REMOVED(hw_addr)) \
> -		writel((val), &hw_addr[(reg)]); \
> +	writel((val), &hw_addr[(reg)]); \
>   } while (0)
>   
>   #define rd32(reg) (igc_rd32(hw, reg))
> 
Acked-by: Sasha Neftin <sasha.neftion@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
