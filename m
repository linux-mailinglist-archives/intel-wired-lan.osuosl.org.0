Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C0B9C883E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 12:01:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 895D840699;
	Thu, 14 Nov 2024 11:01:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rk6H5xtjyZdd; Thu, 14 Nov 2024 11:01:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2ADE640684
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731582077;
	bh=bpYyE45O2ll6qjkcPPufPAoPphPwoZoaaYiuP75xxY4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U5Sz7oGVjyuhQs98CfNX0qw3+K26hl48V7Yc9HLuyANmEmMZ7DpPmrZPGbkJdex1Z
	 X4VxGPk8qP4QPKEX+WW3sI9Fi/pUcKgtlOzuklO08kqn3LpfavakwCD3lqXSj2v97/
	 ngVAW9bWVWrftLJxqCMuwXAWjhQg51pIAECc3r3lmwZNvwowXs4fmVeHYNq0Yx8DKQ
	 AzxlwG4N+GrQCB6kRXuIRJcOQ7qsoH7ZmJnfZcSqJU6SE44/TD5vxVl8wpk/+QosPf
	 ySUaeG8Hj0BKbhXhX9ExJlGSCOIeZNNWHrl6Yw6rwvTRTZSK0NuIKQTNBIYEVKtAlr
	 EO+OyKSci6QwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2ADE640684;
	Thu, 14 Nov 2024 11:01:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 06B07972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 11:01:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E6BBD405AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 11:01:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C1m8ftjTO4zj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 11:01:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.184;
 helo=out-184.mta1.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EB0784057E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB0784057E
Received: from out-184.mta1.migadu.com (out-184.mta1.migadu.com
 [95.215.58.184])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB0784057E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 11:01:10 +0000 (UTC)
Message-ID: <1dc15200-ee39-4134-9d2a-56bdd8c53b40@linux.dev>
Date: Thu, 14 Nov 2024 11:01:01 +0000
MIME-Version: 1.0
To: Milena Olech <milena.olech@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-2-milena.olech@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20241113154616.2493297-2-milena.olech@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1731582067;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bpYyE45O2ll6qjkcPPufPAoPphPwoZoaaYiuP75xxY4=;
 b=vbBSoDKSqqIW78bvpU8UG2xmwbXhTSsryF0GR8UXHoSMIzAS8lJUzLXjm3uyju0/crRbE1
 i1YCwf1HKsMrSzHhcBaVN/01PB6XisjBI/bHVeCVfPH/JJXJkDRXE+RGe3ZdV7YQo7YrGN
 GwqNITznNY0/wLowFTrdJIRfAvq+isQ=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=vbBSoDKS
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 01/10] idpf: initial PTP
 support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 13/11/2024 15:46, Milena Olech wrote:
> PTP feature is supported if the VIRTCHNL2_CAP_PTP is negotiated during the
> capabilities recognition. Initial PTP support includes PTP initialization
> and registration of the clock.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/Kconfig       |  1 +
>   drivers/net/ethernet/intel/idpf/Makefile      |  1 +
>   drivers/net/ethernet/intel/idpf/idpf.h        |  3 +
>   drivers/net/ethernet/intel/idpf/idpf_main.c   |  4 +
>   drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 89 +++++++++++++++++++
>   drivers/net/ethernet/intel/idpf/idpf_ptp.h    | 32 +++++++
>   .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  9 +-
>   7 files changed, 138 insertions(+), 1 deletion(-)
>   create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.c
>   create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.h
> 
> diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/ethernet/intel/idpf/Kconfig
> index 1addd663acad..2c359a8551c7 100644
> --- a/drivers/net/ethernet/intel/idpf/Kconfig
> +++ b/drivers/net/ethernet/intel/idpf/Kconfig
> @@ -4,6 +4,7 @@
>   config IDPF
>   	tristate "Intel(R) Infrastructure Data Path Function Support"
>   	depends on PCI_MSI
> +	depends on PTP_1588_CLOCK_OPTIONAL
>   	select DIMLIB
>   	select LIBETH
>   	help
> diff --git a/drivers/net/ethernet/intel/idpf/Makefile b/drivers/net/ethernet/intel/idpf/Makefile
> index 2ce01a0b5898..1f38a9d7125c 100644
> --- a/drivers/net/ethernet/intel/idpf/Makefile
> +++ b/drivers/net/ethernet/intel/idpf/Makefile
> @@ -17,3 +17,4 @@ idpf-y := \
>   	idpf_vf_dev.o
>   
>   idpf-$(CONFIG_IDPF_SINGLEQ)	+= idpf_singleq_txrx.o
> +idpf-$(CONFIG_PTP_1588_CLOCK)	+= idpf_ptp.o
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
> index 66544faab710..2e8b14dd9d96 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -530,6 +530,7 @@ struct idpf_vc_xn_manager;
>    * @vector_lock: Lock to protect vector distribution
>    * @queue_lock: Lock to protect queue distribution
>    * @vc_buf_lock: Lock to protect virtchnl buffer
> + * @ptp: Storage for PTP-related data
>    */
>   struct idpf_adapter {
>   	struct pci_dev *pdev;
> @@ -587,6 +588,8 @@ struct idpf_adapter {
>   	struct mutex vector_lock;
>   	struct mutex queue_lock;
>   	struct mutex vc_buf_lock;
> +
> +	struct idpf_ptp *ptp;
>   };
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
> index db476b3314c8..22d9e2646444 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> @@ -163,6 +163,10 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   		goto err_free;
>   	}
>   
> +	err = pci_enable_ptm(pdev, NULL);
> +	if (err)
> +		pci_dbg(pdev, "PCIe PTM is not supported by PCIe bus/controller\n");
> +
>   	/* set up for high or low dma */
>   	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
>   	if (err) {
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> new file mode 100644
> index 000000000000..1ac6367f5989
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> @@ -0,0 +1,89 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/* Copyright (C) 2024 Intel Corporation */
> +
> +#include "idpf.h"
> +#include "idpf_ptp.h"
> +
> +/**
> + * idpf_ptp_create_clock - Create PTP clock device for userspace
> + * @adapter: Driver specific private structure
> + *
> + * This function creates a new PTP clock device.
> + *
> + * Return: 0 on success, -errno otherwise.
> + */
> +static int idpf_ptp_create_clock(const struct idpf_adapter *adapter)
> +{
> +	struct ptp_clock *clock;
> +
> +	/* Attempt to register the clock before enabling the hardware. */
> +	clock = ptp_clock_register(&adapter->ptp->info,
> +				   &adapter->pdev->dev);
> +	if (IS_ERR(clock)) {
> +		pci_err(adapter->pdev, "PTP clock creation failed: %pe\n", clock);
> +		return PTR_ERR(clock);
> +	}
> +
> +	adapter->ptp->clock = clock;
> +
> +	return 0;
> +}
> +
> +/**
> + * idpf_ptp_init - Initialize PTP hardware clock support
> + * @adapter: Driver specific private structure
> + *
> + * Set up the device for interacting with the PTP hardware clock for all
> + * functions. Function will allocate and register a ptp_clock with the
> + * PTP_1588_CLOCK infrastructure.
> + *
> + * Return: 0 on success, -errno otherwise.
> + */
> +int idpf_ptp_init(struct idpf_adapter *adapter)
> +{
> +	int err;
> +
> +	if (!idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_PTP)) {
> +		pci_dbg(adapter->pdev, "PTP capability is not detected\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	adapter->ptp = kzalloc(sizeof(*adapter->ptp), GFP_KERNEL);
> +	if (!adapter->ptp)
> +		return -ENOMEM;
> +
> +	/* add a back pointer to adapter */
> +	adapter->ptp->adapter = adapter;
> +
> +	err = idpf_ptp_create_clock(adapter);
> +	if (err)
> +		goto free_ptp;
> +
> +	pci_dbg(adapter->pdev, "PTP init successful\n");
> +
> +	return 0;
> +
> +free_ptp:
> +	kfree(adapter->ptp);
> +	adapter->ptp = NULL;
> +
> +	return err;
> +}
> +
> +/**
> + * idpf_ptp_release - Clear PTP hardware clock support
> + * @adapter: Driver specific private structure
> + */
> +void idpf_ptp_release(struct idpf_adapter *adapter)
> +{
> +	struct idpf_ptp *ptp = adapter->ptp;
> +
> +	if (!ptp)
> +		return;
> +
> +	if (ptp->clock)
> +		ptp_clock_unregister(ptp->clock);
> +
> +	kfree(ptp);
> +	adapter->ptp = NULL;
> +}
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> new file mode 100644
> index 000000000000..cb19988ca60f
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> @@ -0,0 +1,32 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* Copyright (C) 2024 Intel Corporation */
> +
> +#ifndef _IDPF_PTP_H
> +#define _IDPF_PTP_H
> +
> +#include <linux/ptp_clock_kernel.h>
> +
> +/**
> + * struct idpf_ptp - PTP parameters
> + * @info: structure defining PTP hardware capabilities
> + * @clock: pointer to registered PTP clock device
> + * @adapter: back pointer to the adapter
> + */
> +struct idpf_ptp {
> +	struct ptp_clock_info info;
> +	struct ptp_clock *clock;
> +	struct idpf_adapter *adapter;
> +};
> +
> +#if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
> +int idpf_ptp_init(struct idpf_adapter *adapter);
> +void idpf_ptp_release(struct idpf_adapter *adapter);
> +#else /* CONFIG_PTP_1588_CLOCK */
> +static inline int idpf_ptp_init(struct idpf_adapter *adpater)
> +{
> +	return 0;
> +}
> +
> +static inline void idpf_ptp_release(struct idpf_adapter *adpater) { }
> +#endif /* CONFIG_PTP_1588_CLOCK */
> +#endif /* _IDPF_PTP_H */
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index d46c95f91b0d..c73c38511ea3 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -5,6 +5,7 @@
>   
>   #include "idpf.h"
>   #include "idpf_virtchnl.h"
> +#include "idpf_ptp.h"
>   
>   #define IDPF_VC_XN_MIN_TIMEOUT_MSEC	2000
>   #define IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC	(60 * 1000)
> @@ -896,7 +897,8 @@ static int idpf_send_get_caps_msg(struct idpf_adapter *adapter)
>   			    VIRTCHNL2_CAP_MACFILTER		|
>   			    VIRTCHNL2_CAP_SPLITQ_QSCHED		|
>   			    VIRTCHNL2_CAP_PROMISC		|
> -			    VIRTCHNL2_CAP_LOOPBACK);
> +			    VIRTCHNL2_CAP_LOOPBACK		|
> +			    VIRTCHNL2_CAP_PTP);
>   
>   	xn_params.vc_op = VIRTCHNL2_OP_GET_CAPS;
>   	xn_params.send_buf.iov_base = &caps;
> @@ -3025,6 +3027,10 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
>   		goto err_intr_req;
>   	}
>   
> +	err = idpf_ptp_init(adapter);
> +	if (err)
> +		pci_err(adapter->pdev, "PTP init failed, err=%pe\n", ERR_PTR(err));
> +
>   	idpf_init_avail_queues(adapter);
>   
>   	/* Skew the delay for init tasks for each function based on fn number
> @@ -3080,6 +3086,7 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
>   	if (!test_bit(IDPF_VC_CORE_INIT, adapter->flags))
>   		return;
>   
> +	idpf_ptp_release(adapter);
>   	idpf_deinit_task(adapter);
>   	idpf_intr_rel(adapter);
>   	idpf_vc_xn_shutdown(adapter->vcxn_mngr);

Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
