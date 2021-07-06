Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A40413BDE4A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jul 2021 22:12:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5415F831DA;
	Tue,  6 Jul 2021 20:12:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hw5X5i6HlvdK; Tue,  6 Jul 2021 20:12:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65EF182B49;
	Tue,  6 Jul 2021 20:12:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF3CC1BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 20:12:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C7716401F8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 20:12:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sGiZUp5tpFYR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jul 2021 20:12:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 30D0B401E3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 20:12:43 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6DA3861C30;
 Tue,  6 Jul 2021 20:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625602362;
 bh=dMozURTgCDtE/nqPAO74mQrk2jYpZIJHRjna9oZLlBU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=Db9XAFhBa72OXFLdJe6GXAe/gZDR5QG+hGO3+xDnHonYYM+FlgwPWSvgSrm3bQusq
 osIxRYJYffsfg/KpY4b0tIRSr6pZqEjha6bo02sIuLPPIJBvj647EIJ+DXg0wl5v35
 qLWfmZPBhiuDvHy5bu8WAfzk1WV9DgRLVUGWwoHSLto66tapyWeaSr6hz7Fu+SK5VH
 GlqYDmEAtWv9gkTKACbrruIxwI01aGoGf17XGYPVMKysWaM2E+bcJdhXhL1iK/J0Ro
 W0UCW+oKJri7o2LOVn5bjsEo0uukvIzqnFCIPE6d1Kfvy8V5I1GeFZKiGxbXDdg/Hj
 sAiqAbLwoPEFQ==
Date: Tue, 6 Jul 2021 15:12:41 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Aaron Ma <aaron.ma@canonical.com>
Message-ID: <20210706201241.GA820992@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210702045120.22855-1-aaron.ma@canonical.com>
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: don't rd/wr iomem when PCI
 is removed
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
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org, kuba@kernel.org,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 02, 2021 at 12:51:19PM +0800, Aaron Ma wrote:
> Check PCI state when rd/wr iomem.
> Implement wr32 function as rd32 too.
> 
> When unplug TBT dock with i225, rd/wr PCI iomem will cause error log:
> Trace:
> BUG: unable to handle page fault for address: 000000000000b604
> Oops: 0000 [#1] SMP NOPTI
> RIP: 0010:igc_rd32+0x1c/0x90 [igc]
> Call Trace:
> igc_ptp_suspend+0x6c/0xa0 [igc]
> igc_ptp_stop+0x12/0x50 [igc]
> igc_remove+0x7f/0x1c0 [igc]
> pci_device_remove+0x3e/0xb0
> __device_release_driver+0x181/0x240
> 
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 16 ++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_regs.h |  7 ++-----
>  2 files changed, 18 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index f1adf154ec4a..606b72cb6193 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -5292,6 +5292,10 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
>  	u8 __iomem *hw_addr = READ_ONCE(hw->hw_addr);
>  	u32 value = 0;
>  
> +	if (igc->pdev &&
> +		igc->pdev->error_state == pci_channel_io_perm_failure)
> +		return 0;

I don't think this solves the problem.

  - Driver calls igc_rd32().

  - "if (pci_channel_io_perm_failure)" evaluates to false (error_state
    does not indicate an error).

  - Device is unplugged.

  - igc_rd32() calls readl(), which performs MMIO read, which fails
    because the device is no longer present.  readl() returns ~0 on
    most platforms.

  - Same page fault occurs.

The only way is to check *after* the MMIO read to see whether an error
occurred.  On most platforms that means checking for ~0 data.  If you
see that, a PCI error *may* have occurred.

If you know that ~0 can never be valid, e.g., if you're reading a
register where ~0 is not a valid value, you know for sure that an
error has occurred.

If ~0 might be a valid value, e.g., if you're reading a buffer that
contains arbitrary data, you have to look harder.   You might read a
register than cannot contain ~0, and see if you get the data you
expect.  Or you might read the Vendor ID or something from config
space.

>  	value = readl(&hw_addr[reg]);
>  
>  	/* reads should not return all F's */
> @@ -5308,6 +5312,18 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
>  	return value;
>  }
>  
> +void igc_wr32(struct igc_hw *hw, u32 reg, u32 val)
> +{
> +	struct igc_adapter *igc = container_of(hw, struct igc_adapter, hw);
> +	u8 __iomem *hw_addr = READ_ONCE(hw->hw_addr);
> +
> +	if (igc->pdev &&
> +		igc->pdev->error_state == pci_channel_io_perm_failure)
> +		return;
> +
> +	writel((val), &hw_addr[(reg)]);
> +}
> +
>  int igc_set_spd_dplx(struct igc_adapter *adapter, u32 spd, u8 dplx)
>  {
>  	struct igc_mac_info *mac = &adapter->hw.mac;
> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
> index cc174853554b..eb4be87d0e8b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> @@ -260,13 +260,10 @@ struct igc_hw;
>  u32 igc_rd32(struct igc_hw *hw, u32 reg);
>  
>  /* write operations, indexed using DWORDS */
> -#define wr32(reg, val) \
> -do { \
> -	u8 __iomem *hw_addr = READ_ONCE((hw)->hw_addr); \
> -	writel((val), &hw_addr[(reg)]); \
> -} while (0)
> +void igc_wr32(struct igc_hw *hw, u32 reg, u32 val);
>  
>  #define rd32(reg) (igc_rd32(hw, reg))
> +#define wr32(reg, val) (igc_wr32(hw, reg, val))
>  
>  #define wrfl() ((void)rd32(IGC_STATUS))
>  
> -- 
> 2.30.2
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
