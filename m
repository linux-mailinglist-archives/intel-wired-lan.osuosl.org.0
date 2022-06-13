Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A65A15485E2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jun 2022 16:51:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D496B415CF;
	Mon, 13 Jun 2022 14:51:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cQ8Ri7uSIOWE; Mon, 13 Jun 2022 14:51:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 88D92410E7;
	Mon, 13 Jun 2022 14:51:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 97B2F1BF356
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 14:51:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8175981CD0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 14:51:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q5WCmtsOjx5T for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jun 2022 14:51:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 969A7817A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 14:51:39 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 9EAB2B8101C;
 Mon, 13 Jun 2022 14:51:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A9FFC3411B;
 Mon, 13 Jun 2022 14:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1655131895;
 bh=TLxFZAPhXdD/lskt5ABL7Yyvc76typsZSU+wq7k76S8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=nC33P0zIEEDZN6u3S/HZm0+GRAnfXvOGbb7rQDH01pkLftaiZTdzsxZu7Xyebbpin
 7iZJl7IWnGkRJAfwOIqc8K+j8IwSTaK3F0MHmyUTMc7CgLJgR4VJD+UGpyJJkhrqLX
 pWeZakRI7cH0l9gg+YPdjnVNTfJ5uxNC/QoxSM1Q4+DGXBNKSm7+Cr0t5ee2RguLg7
 uVqQjAJeEaO0Ka+V0HlIZAym1GivjWVzSNmIneaDGM/5HviE+hY2yp+gPqKFauvgmz
 O4OH3HWNBRR1vFg6SRwbt3uLYW5nw58tlPFvpBRcH5bh9uz1ym1TUrI00o4VTDPc5K
 zXFrxSWwbIgGA==
Date: Mon, 13 Jun 2022 09:51:33 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Meng Tang <tangmeng@uniontech.com>
Message-ID: <20220613145133.GA701092@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220613111907.25490-1-tangmeng@uniontech.com>
Subject: Re: [Intel-wired-lan] [PATCH 5.10 1/2] commit 1d71eb53e451 ("Revert
 "PCI: Make pci_enable_ptm() private"")
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org,
 bhelgaas@google.com, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 13, 2022 at 07:19:06PM +0800, Meng Tang wrote:
> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 
> Make pci_enable_ptm() accessible from the drivers.
> 
> Exposing this to the driver enables the driver to use the
> 'ptm_enabled' field of 'pci_dev' to check if PTM is enabled or not.
> 
> This reverts commit ac6c26da29c1 ("PCI: Make pci_enable_ptm() private").
> 
> In the 5.10 kernel version, even to the latest confirmed version,
> the following error will still be reported when I225-V network card
> is used.
> 
> kernel: [    1.031581] igc: probe of 0000:01:00.0 failed with error -2
> kernel: [    1.066574] igc: probe of 0000:02:00.0 failed with error -2
> kernel: [    1.096152] igc: probe of 0000:03:00.0 failed with error -2
> kernel: [    1.127251] igc: probe of 0000:04:00.0 failed with error -2
> 
> Even though I confirmed that 7c496de538eebd8212dc2a3c9a468386b2640d4
> and 47bca7de6a4fb8dcb564c7ca4d885c91ed19e03 have been merged into the
> kernel 5.10, the bug is still occurred, and the
> "commit 1b5d73fb8624 ("igc: Enable PCIe PTM")" can fixes it.
> 
> And this patch is the pre-patch of
> 1b5d73fb862414106cf270a1a7300ce8ae77de83.

I guess the point of this is to backport 1d71eb53e451 ("Revert "PCI:
Make pci_enable_ptm() private"") to a v5.10 stable kernel?

If so, I would think you'd want to send this to
stable@vger.kernel.org.

> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Meng Tang <tangmeng@uniontech.com>
> ---
>  drivers/pci/pci.h   | 3 ---
>  include/linux/pci.h | 7 +++++++
>  2 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> index a96dc6f53076..4084764bf0b1 100644
> --- a/drivers/pci/pci.h
> +++ b/drivers/pci/pci.h
> @@ -585,11 +585,8 @@ static inline void pcie_ecrc_get_policy(char *str) { }
>  
>  #ifdef CONFIG_PCIE_PTM
>  void pci_ptm_init(struct pci_dev *dev);
> -int pci_enable_ptm(struct pci_dev *dev, u8 *granularity);
>  #else
>  static inline void pci_ptm_init(struct pci_dev *dev) { }
> -static inline int pci_enable_ptm(struct pci_dev *dev, u8 *granularity)
> -{ return -EINVAL; }
>  #endif
>  
>  struct pci_dev_reset_methods {
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index bc5a1150f072..692ce678c5f1 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -1599,6 +1599,13 @@ static inline bool pci_aer_available(void) { return false; }
>  
>  bool pci_ats_disabled(void);
>  
> +#ifdef CONFIG_PCIE_PTM
> +int pci_enable_ptm(struct pci_dev *dev, u8 *granularity);
> +#else
> +static inline int pci_enable_ptm(struct pci_dev *dev, u8 *granularity)
> +{ return -EINVAL; }
> +#endif
> +
>  void pci_cfg_access_lock(struct pci_dev *dev);
>  bool pci_cfg_access_trylock(struct pci_dev *dev);
>  void pci_cfg_access_unlock(struct pci_dev *dev);
> -- 
> 2.20.1
> 
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
