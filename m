Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D4739C373
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Jun 2021 00:25:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87F4160756;
	Fri,  4 Jun 2021 22:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hwBNRTZhQJG5; Fri,  4 Jun 2021 22:25:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A41C6068F;
	Fri,  4 Jun 2021 22:25:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D69431BF30E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 22:25:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C4BAD401D3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 22:25:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ix70Y2tJE2Fs for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 22:25:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 46A19401B8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 22:25:45 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7F2C961402;
 Fri,  4 Jun 2021 22:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622845544;
 bh=WXG7b93sv97T1nEi/VGpsJ8KBWQ2EFw5X/pX0F9cxnE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=DGqyIwNx3EZAHON3djip9mCDZARk9nPz+2bvQFIXGFqJGp3iyHbFD5yVI2ZNkbSmn
 qTJXOxrQDvEHSLIaYsEEHdYYy73HxSku+S0JOeWR9uwvPsbVHZ9xxbzwspq2t+kff5
 5za9S5eP/38bEFPU7ndV3KJFvF6eRbegx+NsjducIO2vUHMuipN4zCB12aFc7IdD3U
 MQFAJs01zO6efasUHLKaUm2FWqHEIHdS16hIPacjy2AeVEHt7FTPbwZFUK7AJJBHbR
 CdwGZfhZidFLBp+iUBYR9WvNvj2CGhB4Oxwtda746tyaveHixc/4bubOwiwR43Pir+
 C25jhaDqoVhsQ==
Date: Fri, 4 Jun 2021 17:25:42 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210604222542.GA2246166@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210604220933.3974558-2-vinicius.gomes@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH next-queue v4 1/4] Revert "PCI: Make
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
Cc: netdev@vger.kernel.org, richardcochran@gmail.com, hch@infradead.org,
 linux-pci@vger.kernel.org, bhelgaas@google.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 04, 2021 at 03:09:30PM -0700, Vinicius Costa Gomes wrote:
> Make pci_enable_ptm() accessible from the drivers.
> 
> Even if PTM still works on the platform I am using without calling
> this function, it might be possible that it's not always the case.

Not really relevant to this commit, strictly speaking.

> Exposing this to the driver enables the driver to use the
> 'ptm_enabled' field of 'pci_dev' to check if PTM is enabled or not.
> 
> This reverts commit ac6c26da29c12fa511c877c273ed5c939dc9e96c.

Ideally I would cite this as ac6c26da29c1 ("PCI: Make pci_enable_ptm()
private") so there's a little more context.

> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>

Acked regardless of the above.

> ---
>  drivers/pci/pci.h   | 3 ---
>  include/linux/pci.h | 7 +++++++
>  2 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> index 37c913bbc6e1..32dab36c717e 100644
> --- a/drivers/pci/pci.h
> +++ b/drivers/pci/pci.h
> @@ -593,11 +593,8 @@ static inline void pcie_ecrc_get_policy(char *str) { }
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
> index c20211e59a57..a687dda262dd 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -1617,6 +1617,13 @@ static inline bool pci_aer_available(void) { return false; }
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
> 2.31.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
