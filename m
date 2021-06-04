Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D109239C383
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Jun 2021 00:27:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 377F7842DC;
	Fri,  4 Jun 2021 22:27:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ptbGekp3G7uV; Fri,  4 Jun 2021 22:27:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41220842B7;
	Fri,  4 Jun 2021 22:27:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5198F1BF30E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 22:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 400A56068F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 22:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GFhbPDUrXn6c for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 22:27:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C06AA606DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 22:27:14 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0BD16610E7;
 Fri,  4 Jun 2021 22:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622845634;
 bh=tUbf9MQN8g59+W4Z+HHhyKliaam7TcTVD+M9OX7jZrQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=Qu2Rly5Fi4alkiiwMxGprVxPhWQLMP7W74fZ9g1qsFKwgywT//Zguoj7zoW5pIDTi
 oPhh5IzJWbOlEq0k1ivfbKyvEuHlbnmCXkG2OTQgk+3Yu2hnT+1p3n+xGfn0jP9euZ
 f3TRmzipNnRSp8r/gPDX08SqfpzTxzT3k+Sn0XigQD4HdsNzAjy1IaBkKv1qwVEAXN
 N8fJDr9RXyzpxP4xEMR6JJaZ9EGJV/btd68Ja94+JPqNFJW+d4Y83FwzpxJSKpHXSw
 gsj4tiHBBFdgkjSuMY4r4Gr4dbn6HUIqZC37faoVhCjU2k12vNrVZ3BSs41r7u0IbU
 0DrGn0dJpsb/Q==
Date: Fri, 4 Jun 2021 17:27:12 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210604222712.GA2246328@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210604220933.3974558-3-vinicius.gomes@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH next-queue v4 2/4] PCI: Add
 pcie_ptm_enabled()
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

On Fri, Jun 04, 2021 at 03:09:31PM -0700, Vinicius Costa Gomes wrote:
> Adds a predicate that returns if PCIe PTM (Precision Time Measurement)
> is enabled.

Ideally, "Add a predicate ..."

> It will only return true if it's enabled in all the ports in the path
> from the device to the root.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

But either way,

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  drivers/pci/pcie/ptm.c | 9 +++++++++
>  include/linux/pci.h    | 3 +++
>  2 files changed, 12 insertions(+)
> 
> diff --git a/drivers/pci/pcie/ptm.c b/drivers/pci/pcie/ptm.c
> index 95d4eef2c9e8..8a4ad974c5ac 100644
> --- a/drivers/pci/pcie/ptm.c
> +++ b/drivers/pci/pcie/ptm.c
> @@ -204,3 +204,12 @@ int pci_enable_ptm(struct pci_dev *dev, u8 *granularity)
>  	return 0;
>  }
>  EXPORT_SYMBOL(pci_enable_ptm);
> +
> +bool pcie_ptm_enabled(struct pci_dev *dev)
> +{
> +	if (!dev)
> +		return false;
> +
> +	return dev->ptm_enabled;
> +}
> +EXPORT_SYMBOL(pcie_ptm_enabled);
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index a687dda262dd..fe7f264b2b15 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -1619,9 +1619,12 @@ bool pci_ats_disabled(void);
>  
>  #ifdef CONFIG_PCIE_PTM
>  int pci_enable_ptm(struct pci_dev *dev, u8 *granularity);
> +bool pcie_ptm_enabled(struct pci_dev *dev);
>  #else
>  static inline int pci_enable_ptm(struct pci_dev *dev, u8 *granularity)
>  { return -EINVAL; }
> +static inline bool pcie_ptm_enabled(struct pci_dev *dev)
> +{ return false; }
>  #endif
>  
>  void pci_cfg_access_lock(struct pci_dev *dev);
> -- 
> 2.31.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
