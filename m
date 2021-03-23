Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E059346937
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Mar 2021 20:40:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A81F64050C;
	Tue, 23 Mar 2021 19:40:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rKM5VOcWRLjz; Tue, 23 Mar 2021 19:40:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87BB44050B;
	Tue, 23 Mar 2021 19:40:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CBB081BF334
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 19:40:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA49A6086C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 19:40:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dYsg-GVELRk0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Mar 2021 19:40:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B55260623
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 19:40:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7C753619C0;
 Tue, 23 Mar 2021 19:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616528447;
 bh=q1wCghXfGtNESfb8LvUFnXA1QaR3P+eV4arU6McLM0A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=G8VU+Ll65u/RCjl+xDTrGiRlOTmvv3rCiZYy9RDnpusNv67T9a42opv6RdicxTTsU
 l81QUHbBXlu8Yc+4knMYqr09XyrMIGbc8+buF26naeGqpdhCoGv70oATXPRzBbSqT7
 rE9c4fiMeUKry6J/Ur4exItOkU3XVYFedGileCPaDK3PZ68uRwz9UII5T28QQgBxTZ
 QqBu+V9JgVvEnU0hbtnsus8m1VdsN8Idh3pOAcbSO011D9bC/H/xDtaneJAqp9Lw37
 Xw3q4p/iBYfS1i41A3OLaffeQ83+0Fx28NRi8L9P4/qYWNx68BmAFoL/gQBgBXHD45
 Qujta7Bgnr6HQ==
Date: Tue, 23 Mar 2021 14:40:46 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210323194046.GA598671@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322161822.1546454-2-vinicius.gomes@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH next-queue v3 1/3] Revert "PCI: Make
 pci_enable_ptm() private"
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
Cc: netdev@vger.kernel.org, richardcochran@gmail.com, linux-pci@vger.kernel.org,
 bhelgaas@google.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 22, 2021 at 09:18:20AM -0700, Vinicius Costa Gomes wrote:
> Make pci_enable_ptm() accessible from the drivers.
> 
> Even if PTM still works on the platform I am using without calling
> this function, it might be possible that it's not always the case.

I don't understand the value of this paragraph.  The rest of it makes
good sense (although I think we might want to add a wrapper as I
mentioned elsewhere).

> Exposing this to the driver enables the driver to use the
> 'ptm_enabled' field of 'pci_dev' to check if PTM is enabled or not.
> 
> This reverts commit ac6c26da29c12fa511c877c273ed5c939dc9e96c.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>
> ---
>  drivers/pci/pci.h   | 3 ---
>  include/linux/pci.h | 7 +++++++
>  2 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> index ef7c4661314f..2c61557e1cc1 100644
> --- a/drivers/pci/pci.h
> +++ b/drivers/pci/pci.h
> @@ -599,11 +599,8 @@ static inline void pcie_ecrc_get_policy(char *str) { }
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
> index 86c799c97b77..3d3dc07eac3b 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -1610,6 +1610,13 @@ static inline bool pci_aer_available(void) { return false; }
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
> 2.31.0
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
