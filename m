Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AD927B751
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 23:54:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A2FCC207A8;
	Mon, 28 Sep 2020 21:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CySf5FualZVj; Mon, 28 Sep 2020 21:54:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9866F20798;
	Mon, 28 Sep 2020 21:54:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A02C61BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 21:54:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9BB6086667
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 21:54:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jihWSz8kckaW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 21:54:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8898086665
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 21:54:34 +0000 (UTC)
Received: from localhost (52.sub-72-107-123.myvzw.com [72.107.123.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7F57216C4;
 Mon, 28 Sep 2020 21:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601330074;
 bh=vCLOGKcx5iufJvzYIi1gpdaZ9k6pNPZgAO4Gi+Em4u0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=t/4L8KDhNWKHhluM/eSGi8PfD+bFcDMNezuYuxMnH4vGist0qhpmaSFkfhjAl1WLU
 uzmg9dDwNoGmFGdXtye2IOj9kxfodzPKASZw3x6T1lFCcf8TFyvGuEtpIYNDv2d8C8
 r2dqVGLQLshIfX5QMhGy7Ls0/s1DBKay6GM+/CHs=
Date: Mon, 28 Sep 2020 16:54:32 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20200928215432.GA2499272@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200925232834.2704711-2-vinicius.gomes@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 1/3] Revert "PCI: Make
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
Cc: andre.guedes@intel.com, linux-pci@vger.kernel.org, netdev@vger.kernel.org,
 bhelgaas@google.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 25, 2020 at 04:28:32PM -0700, Vinicius Costa Gomes wrote:
> Make pci_enable_ptm() accessible from the drivers.
> 
> Even if PTM still works on the platform I am using without calling
> this this function, it might be possible that it's not always the
> case.

*Does* PTM work on your system without calling pci_enable_ptm()?  If
so, I think that would mean the BIOS enabled PTM, and that seems
slightly surprising.

> Exposing this to the driver enables the driver to use the
> 'ptm_enabled' field of 'pci_dev' to check if PTM is enabled or not.
> 
> This reverts commit ac6c26da29c12fa511c877c273ed5c939dc9e96c.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

AFAICT we just never had any callers at all for pci_enable_ptm().  I
probably shouldn't have merged it in the first place.

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  drivers/pci/pci.h   | 3 ---
>  include/linux/pci.h | 7 +++++++
>  2 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> index fa12f7cbc1a0..8871109fe390 100644
> --- a/drivers/pci/pci.h
> +++ b/drivers/pci/pci.h
> @@ -582,11 +582,8 @@ static inline void pcie_ecrc_get_policy(char *str) { }
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
> index 835530605c0d..ec4b28153cc4 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -1593,6 +1593,13 @@ static inline bool pci_aer_available(void) { return false; }
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
> 2.28.0
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
