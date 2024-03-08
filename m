Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A69876281
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 11:57:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03F4941C81;
	Fri,  8 Mar 2024 10:57:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nsY0h0R5yPYm; Fri,  8 Mar 2024 10:57:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF8CF41C86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709895446;
	bh=sh4mMc/kUXcFgWJ+ymfYu2Nkj2nptkw6hsbvZi1MDso=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FUiGFk+HcJSMrK/RR0YHl4jDRyMqExz8YQQqGZ6bBVUgBomEKy4de+RupkWgTiVNR
	 HJWDseXeLJ/sgAQP5hNDFnNrsD6uBJxLQQNJAc1sTC5he+NcD1GeEjqCAzGFtemUk6
	 J2VDdhs6vHt4Q5YauRUonlcGxypn4liefTYjAmSyxxtAzxbDRWdckFL4iUIvsrwDWY
	 PAHk7I7nDOmlzfA533cYukjkF9Y6sPDviAgsICeAUtaljZSTft0LyDK1s0GAcKgceV
	 1XmkCYGjTD9HkSazMfJiSpaJsCLFKNL8GL9R1bYEwcQFT9+ezAkbF4+PlOQTCFiYQa
	 vCRDpF3Cp7Bbw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF8CF41C86;
	Fri,  8 Mar 2024 10:57:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5EE981BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 10:57:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4A75882135
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 10:57:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aa8cavQhZzsn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 10:57:23 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E2057820EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2057820EC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2057820EC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 10:57:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="7555569"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="7555569"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 02:57:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15099656"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.94.248.101])
 ([10.94.248.101])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 02:57:19 -0800
Message-ID: <0a13e22c-790e-4ac2-ad6c-eb350ef8c349@linux.intel.com>
Date: Fri, 8 Mar 2024 11:57:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Schmidt <mschmidt@redhat.com>, intel-wired-lan@lists.osuosl.org
References: <20240307222510.53654-1-mschmidt@redhat.com>
 <20240307222510.53654-2-mschmidt@redhat.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20240307222510.53654-2-mschmidt@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709895443; x=1741431443;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ww885ORZp6jpul6UKJl2yHQ6e0Fb6jaL/sGKDaf99/k=;
 b=AFKdJPeDZY2laIx7ESI3VcX1GbW+XSuYxaIuSjS7JovDlvlZUQTMRYh4
 hop2BZwGzxa6sG3urMgYw6q201xHmP4U/akL/dgIKOfnJ4uCHRV4oubzL
 P67sZycbOtfG2pxNUfnovfRwL/EArgFe/1KfiwwNApg751bp6KznDgXbX
 RxgacKdpXiBtayIOQDFL5o/oymsLpQA/lqOtf2vjAHn203l+Ai/E/cPtN
 ucyKjz5287XSg6Jj0y3E1sVJ4voxF0zqIufPrZgNJm9BzDA0oCMq3DMYD
 sYkjqctgOMCwPGhX4UPAvDC9Azd1J59UUeECy/+9MpLSZDckQrUfgPT+/
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AFKdJPeD
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/3] ice: add ice_adapter
 for shared data across PFs on the same NIC
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 07.03.2024 23:25, Michal Schmidt wrote:
> There is a need for synchronization between ice PFs on the same physical
> adapter.
> 
> Add a "struct ice_adapter" for holding data shared between PFs of the
> same multifunction PCI device. The struct is refcounted - each ice_pf
> holds a reference to it.
> 
> Its first use will be for PTP. I expect it will be useful also to
> improve the ugliness that is ice_prot_id_tbl.
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile      |   3 +-
>  drivers/net/ethernet/intel/ice/ice.h         |   2 +
>  drivers/net/ethernet/intel/ice/ice_adapter.c | 107 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_adapter.h |  22 ++++
>  drivers/net/ethernet/intel/ice/ice_main.c    |   8 ++
>  5 files changed, 141 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.h
> 
> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
> index cddd82d4ca0f..4fa09c321440 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -36,7 +36,8 @@ ice-y := ice_main.o	\
>  	 ice_repr.o	\
>  	 ice_tc_lib.o	\
>  	 ice_fwlog.o	\
> -	 ice_debugfs.o
> +	 ice_debugfs.o  \
> +	 ice_adapter.o
>  ice-$(CONFIG_PCI_IOV) +=	\
>  	ice_sriov.o		\
>  	ice_virtchnl.o		\
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 365c03d1c462..1ffecbdd361a 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -77,6 +77,7 @@
>  #include "ice_gnss.h"
>  #include "ice_irq.h"
>  #include "ice_dpll.h"
> +#include "ice_adapter.h"
>  
>  #define ICE_BAR0		0
>  #define ICE_REQ_DESC_MULTIPLE	32
> @@ -544,6 +545,7 @@ struct ice_agg_node {
>  
>  struct ice_pf {
>  	struct pci_dev *pdev;
> +	struct ice_adapter *adapter;
>  
>  	struct devlink_region *nvm_region;
>  	struct devlink_region *sram_region;
> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
> new file mode 100644
> index 000000000000..6b9eeba6edf7
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
> @@ -0,0 +1,107 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: Copyright Red Hat
> +
> +#include <linux/cleanup.h>
> +#include <linux/mutex.h>
> +#include <linux/pci.h>
> +#include <linux/slab.h>
> +#include <linux/xarray.h>
> +#include "ice_adapter.h"
> +
> +static DEFINE_XARRAY(ice_adapters);
> +
> +static unsigned long ice_adapter_index(const struct pci_dev *pdev)
> +{
> +	unsigned int domain = pci_domain_nr(pdev->bus);
> +
> +	WARN_ON((unsigned long)domain >> (BITS_PER_LONG - 13));
> +	return ((unsigned long)domain << 13) |
> +	       ((unsigned long)pdev->bus->number << 5) |

Magic numbers?

> +	       PCI_SLOT(pdev->devfn);
> +}
> +
> +static struct ice_adapter *ice_adapter_new(void)
> +{
> +	struct ice_adapter *adapter;
> +
> +	adapter = kzalloc(sizeof(*adapter), GFP_KERNEL);
> +	if (!adapter)
> +		return NULL;
> +
> +	refcount_set(&adapter->refcount, 1);
> +
> +	return adapter;
> +}
> +
> +static void ice_adapter_free(struct ice_adapter *adapter)
> +{
> +	kfree(adapter);
> +}
> +
> +DEFINE_FREE(ice_adapter_free, struct ice_adapter*, if (_T) ice_adapter_free(_T))
> +
> +/**
> + * ice_adapter_get - Get a shared ice_adapter structure.
> + * @pdev: Pointer to the pci_dev whose driver is getting the ice_adapter.
> + *
> + * Gets a pointer to a shared ice_adapter structure. Physical functions (PFs)
> + * of the same multi-function PCI device share one ice_adapter structure.
> + * The ice_adapter is reference-counted. The PF driver must use ice_adapter_put
> + * to release its reference.
> + *
> + * Context: Process, may sleep.
> + * Return:  Pointer to ice_adapter on success.
> + *          ERR_PTR() on error. -ENOMEM is the only possible error.

What about ERR_PTR(xa_err(ret))?

> + */
> +struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
> +{
> +	struct ice_adapter *ret, __free(ice_adapter_free) *adapter = NULL;
> +	unsigned long index = ice_adapter_index(pdev);
> +
> +	adapter = ice_adapter_new();
> +	if (!adapter)
> +		return ERR_PTR(-ENOMEM);

---8<---

Thanks,
Marcin
