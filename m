Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1146DDAFA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Apr 2023 14:37:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98D2E41C48;
	Tue, 11 Apr 2023 12:37:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98D2E41C48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681216628;
	bh=x1QiuP2ghd2TtiMTSIDeXVoPT1iibAhW8z6q2wK+zcs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1RWGa4A0D7CKiwm2/raJF2EmMzUrPVoH51ieQo9MtM52uQDMLlLzvy01vyqsE0230
	 HYWydcNEI8WAt/8PSkW+xslZzYtE9PhkdIiJ/Z2znlnvA3WYmL+KpgPVZLgnPbTYKx
	 j2Sp+K4K7AjfVLkisdSg5BrRWEpK5TVzp37AOYE8v6qpsWfA6xoq1DJCBRMD92USta
	 s1UpIywk1Zlxz3vAwuxLvY7hroFTWPNP3sSWrUkwnQUHH5QPIWNMUwCkIUcsSzcKRe
	 Br8fXqq2OEGLJTlyoqH9NFXQH84+bz7An6bW3TpopbkuDr9cs/SQaAULwjcHtDmPFM
	 EYnNKbwtqa20w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5fJ8pEtgr7MR; Tue, 11 Apr 2023 12:37:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0816641BD5;
	Tue, 11 Apr 2023 12:37:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0816641BD5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EF0651C3BF7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 12:37:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C415860BFF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 12:37:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C415860BFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SbH_3yud6MAj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Apr 2023 12:36:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 743DD60BF5
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 743DD60BF5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 12:36:59 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 680F86247D;
 Tue, 11 Apr 2023 12:36:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FB47C433EF;
 Tue, 11 Apr 2023 12:36:57 +0000 (UTC)
Date: Tue, 11 Apr 2023 15:36:53 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <20230411123653.GW182481@unreal>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <20230411011354.2619359-3-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230411011354.2619359-3-pavan.kumar.linga@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681216617;
 bh=kTOshIxUAyadmSYZBE7svKb4fyBemcujDHrtTMdUwRI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KuCgkcysanRYLfeqTt3q2Q9dPAHwb1tcpCxuvyjd0gksnY5dTgQxY9IOzEs33/o3B
 WOgaZF+U+6pYBNj3WUsVgdfSXrbclxvy3cAcFBBP6IuoAMmS2EA5qeT9V4rLqtoDGA
 Bd6H8iXQT2xIUPql9cGvYZEIQ6f8s2UfDbzvqziyJt7XlOPhz0RU71TqkxaXp/zu7h
 9BOYVKVfiL6bKH6p6yT7atmb3YKiyP8QylP1IOwdL0HBhxVKNmmMzLY85fe+K9jg+s
 27q6mMEQ+wS+jAACu4UKX4LItpx0o/5vOkqwaNolIgrr8pZep7D5hV+Ejw4SNFYItX
 AQ5LqNksuvcVQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KuCgkcys
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 02/15] idpf: add module
 register and probe functionality
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
Cc: willemb@google.com, pabeni@redhat.com,
 Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 10, 2023 at 06:13:41PM -0700, Pavan Kumar Linga wrote:
> From: Phani Burra <phani.r.burra@intel.com>
> 
> Add the required support to register IDPF PCI driver, as well as
> probe and remove call backs. Enable the PCI device and request
> the kernel to reserve the memory resources that will be used by the
> driver. Finally map the BAR0 address space.
> 
> PCI IDs table is intentionally left blank to prevent the kernel from
> probing the device with the incomplete driver. It will be added
> in the last patch of the series.
> 
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Co-developed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> ---
>  drivers/net/ethernet/intel/Kconfig            | 11 +++
>  drivers/net/ethernet/intel/Makefile           |  1 +
>  drivers/net/ethernet/intel/idpf/Makefile      | 10 ++
>  drivers/net/ethernet/intel/idpf/idpf.h        | 27 ++++++
>  .../net/ethernet/intel/idpf/idpf_controlq.h   | 14 +++
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    | 96 +++++++++++++++++++
>  drivers/net/ethernet/intel/idpf/idpf_main.c   | 70 ++++++++++++++
>  7 files changed, 229 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lib.c
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c

<...>

> +/**
> + * idpf_remove_common - Device removal routine
> + * @pdev: PCI device information struct
> + */
> +void idpf_remove_common(struct pci_dev *pdev)
> +{
> +	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
> +
> +	if (!adapter)

How is it possible to have adapter be NULL here?

> +		return;
> +
> +	pci_disable_pcie_error_reporting(pdev);
> +}
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
> new file mode 100644
> index 000000000000..617df9b924fa
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> @@ -0,0 +1,70 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/* Copyright (C) 2023 Intel Corporation */
> +
> +#include "idpf.h"
> +
> +#define DRV_SUMMARY	"Infrastructure Data Path Function Linux Driver"
> +
> +MODULE_DESCRIPTION(DRV_SUMMARY);
> +MODULE_LICENSE("GPL");
> +
> +/**
> + * idpf_remove - Device removal routine
> + * @pdev: PCI device information struct
> + */
> +static void idpf_remove(struct pci_dev *pdev)
> +{
> +	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
> +
> +	if (!adapter)

Ditto

> +		return;
> +
> +	idpf_remove_common(pdev);
> +	pci_set_drvdata(pdev, NULL);
> +}
> +
> +/**
> + * idpf_shutdown - PCI callback for shutting down device
> + * @pdev: PCI device information struct
> + */
> +static void idpf_shutdown(struct pci_dev *pdev)
> +{
> +	idpf_remove(pdev);
> +
> +	if (system_state == SYSTEM_POWER_OFF)
> +		pci_set_power_state(pdev, PCI_D3hot);
> +}
> +
> +/**
> + * idpf_probe - Device initialization routine
> + * @pdev: PCI device information struct
> + * @ent: entry in idpf_pci_tbl
> + *
> + * Returns 0 on success, negative on failure
> + */
> +static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> +{
> +	struct idpf_adapter *adapter;
> +
> +	adapter = devm_kzalloc(&pdev->dev, sizeof(*adapter), GFP_KERNEL);

Why devm_kzalloc() and not kzalloc?

> +	if (!adapter)
> +		return -ENOMEM;
> +
> +	return idpf_probe_common(pdev, adapter);

There is no need in idpf_probe_common/idpf_remove_common functions and
they better be embedded here. They called only once and just obfuscate
the code.

> +}
> +
> +/* idpf_pci_tbl - PCI Dev idpf ID Table
> + */
> +static const struct pci_device_id idpf_pci_tbl[] = {
> +	{ /* Sentinel */ }

What does it mean empty pci_device_id table?

> +};
> +MODULE_DEVICE_TABLE(pci, idpf_pci_tbl);
> +
> +static struct pci_driver idpf_driver = {
> +	.name			= KBUILD_MODNAME,
> +	.id_table		= idpf_pci_tbl,
> +	.probe			= idpf_probe,
> +	.remove			= idpf_remove,
> +	.shutdown		= idpf_shutdown,
> +};
> +module_pci_driver(idpf_driver);
> -- 
> 2.37.3
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
