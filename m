Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2679B9CE068
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2024 14:44:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66E6984788;
	Fri, 15 Nov 2024 13:44:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3_afYJzb5OPe; Fri, 15 Nov 2024 13:44:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EB4E8477C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731678251;
	bh=jGBI63FexqAOyxyjo+Vp5L7VK2wTNLETtl5BDBB1KBw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1+T3YWYbIN7gzeO8vNGMOHkHMK4vbQbh+Mlax8VY4ze1/g8b1YhDxrMWfXWXDD0em
	 YL7nBPim+LQ8gKvljqGDp09PPTSCNmgrHOvhgfPGwE3Sdw6/9pznzMcCBxuNBtpxFq
	 9It1EI8R48yvz6WQ+1FJfVl9Dcxcc0omreeBzSvQti/ibDPjsBK9apnm8npGVrp4CD
	 rSp198RMsd6baq4gi9wcywi9OaVpTJ2uoZHg87sEDC7QZRJDraiCJAMN/dEEUamObU
	 ctQJgsO1paCRLsyW/6o5+UpQ5piTOnu9jsV6xvHAEvaUAwxctgIEKCLzB/e+bdLryR
	 Jl/+AfwKK52Uw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EB4E8477C;
	Fri, 15 Nov 2024 13:44:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CDB8D1EB8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 13:44:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 25EBD60B6D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 13:44:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ac3Br_ZWmogu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2024 13:44:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A3FDA60ADD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3FDA60ADD
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A3FDA60ADD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 13:44:04 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8244661E5FE05;
 Fri, 15 Nov 2024 14:43:45 +0100 (CET)
Message-ID: <4aa6f9f2-e3d9-4255-a964-c03d611d848e@molgen.mpg.de>
Date: Fri, 15 Nov 2024 14:43:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Milena Olech <milena.olech@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-2-milena.olech@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241113154616.2493297-2-milena.olech@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
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

Dear Milena,


Thank you for your patch. It’d be great if you used a statement for the 
summary/title by adding a verb (in imperative mood):

idpf: Add initial PTP support

Am 13.11.24 um 16:46 schrieb Milena Olech:
> PTP feature is supported if the VIRTCHNL2_CAP_PTP is negotiated during the
> capabilities recognition. Initial PTP support includes PTP initialization
> and registration of the clock.

Maybe mention/paste the new debug messages, and document on what device 
you tested it?


Kind regards,

Paul


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
