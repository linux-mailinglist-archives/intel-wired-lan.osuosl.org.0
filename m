Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B8A11D481
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 18:49:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E40878841E;
	Thu, 12 Dec 2019 17:49:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OkqmZ+XN+No5; Thu, 12 Dec 2019 17:49:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3593D8840B;
	Thu, 12 Dec 2019 17:49:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE6241BF277
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 17:49:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA3A988365
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 17:49:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iMhpDqwW3Qbi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 17:49:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C61E78831F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 17:49:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 09:49:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="415349992"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.26])
 by fmsmga006.fm.intel.com with ESMTP; 12 Dec 2019 09:49:15 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
In-Reply-To: <20191212173650.14210-1-sasha.neftin@intel.com>
References: <20191212173650.14210-1-sasha.neftin@intel.com>
Date: Thu, 12 Dec 2019 09:49:32 -0800
Message-ID: <87imml5t8z.fsf@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Add PHY power management
 control
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Sasha Neftin <sasha.neftin@intel.com> writes:

> PHY power management control should provide a reliable and accurate
> indication of PHY reset completion and decrease the delay time
> after a PHY reset
>
> v1 -> v2: add hw_dbg print for a timeout
>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
>  drivers/net/ethernet/intel/igc/igc_phy.c     | 12 ++++++++++++
>  drivers/net/ethernet/intel/igc/igc_regs.h    |  1 +
>  3 files changed, 14 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 2121fc34e300..71a4b0281c03 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -460,6 +460,7 @@
>  /* PHY Status Register */
>  #define MII_SR_LINK_STATUS	0x0004 /* Link Status 1 = link */
>  #define MII_SR_AUTONEG_COMPLETE	0x0020 /* Auto Neg Complete */
> +#define IGC_PHY_RST_COMP	0x0100 /* Internal PHY reset completion */
>  
>  /* PHY 1000 MII Register/Bit Definitions */
>  /* PHY Registers defined by IEEE */
> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
> index f4b05af0dd2f..a5483368690a 100644
> --- a/drivers/net/ethernet/intel/igc/igc_phy.c
> +++ b/drivers/net/ethernet/intel/igc/igc_phy.c
> @@ -173,6 +173,7 @@ s32 igc_check_downshift(struct igc_hw *hw)
>  s32 igc_phy_hw_reset(struct igc_hw *hw)
>  {
>  	struct igc_phy_info *phy = &hw->phy;
> +	u32 phpm = 0, timeout = 10000;
>  	s32  ret_val;
>  	u32 ctrl;
>  
> @@ -186,6 +187,8 @@ s32 igc_phy_hw_reset(struct igc_hw *hw)
>  	if (ret_val)
>  		goto out;
>  
> +	phpm = rd32(IGC_I225_PHPM);
> +
>  	ctrl = rd32(IGC_CTRL);
>  	wr32(IGC_CTRL, ctrl | IGC_CTRL_PHY_RST);
>  	wrfl();
> @@ -195,6 +198,15 @@ s32 igc_phy_hw_reset(struct igc_hw *hw)
>  	wr32(IGC_CTRL, ctrl);
>  	wrfl();
>  
> +	do {
> +		phpm = rd32(IGC_I225_PHPM);
> +		timeout--;
> +		udelay(1);
> +	} while (!(phpm & IGC_PHY_RST_COMP) && timeout);
> +
> +	if (!timeout)
> +		hw_dbg("Timeoui is expired after a phy reset\n");

nitpick: Timeoui -> Timeout

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
