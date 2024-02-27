Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 183F2868A8D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 09:11:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E1A681C6F;
	Tue, 27 Feb 2024 08:11:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AlfPbXnIzHyD; Tue, 27 Feb 2024 08:11:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F74E81AEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709021474;
	bh=a6piSwraRWXigsSpLo1mJkUOURoZoNM0+ReFijy4zgE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D2nahQPAVW4hkkRS1vFRQo2w6RlSmc7DmG/lrj8ttKi1EFj7nqIrgnFAOEvD6JY+c
	 Uy2NXwb/b24ukEOmO03++hCXeA3A+OOyh+iHxL14bHuxsRXSNfueEfuS7OaJQ53ICO
	 CeKg/kKmk7UlE59iqCKGNmJtwgon7OFVrwORNW0nKtXYy/XPsp+2Ka491Ri9/SORma
	 06PWmTyhAsLf0pyLAVCTiQXPhqjFufwAilkKqL1bIOq8QjS3JmNEodX7Cu2r65k0Pp
	 OY/+j9+q7iH3FpGEuC2qYuE+TfjNzXEpktQloRT6TLmnEVquhO2ATIwRyJK1S6mtdW
	 DZi98tlVttLGA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F74E81AEF;
	Tue, 27 Feb 2024 08:11:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A00511BF314
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 08:11:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 895FF40373
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 08:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i2Xk1pIiTmpJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 08:11:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C2B164011C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2B164011C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C2B164011C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 08:11:09 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-592-LpX6uJbhMY27dgCLxyljHw-1; Tue, 27 Feb 2024 03:11:07 -0500
X-MC-Unique: LpX6uJbhMY27dgCLxyljHw-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-412977dd5a1so12446785e9.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 00:11:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709021466; x=1709626266;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=a6piSwraRWXigsSpLo1mJkUOURoZoNM0+ReFijy4zgE=;
 b=kH+UUwjnLKFXWgBspdq3hvwBml2Mgs30POV2vdueOWC8jtbbPz/+LiDuVOD59gEN3A
 5pZg4IUxr+THUK/bcwprsJYuKyoJpIKzN69xOMANS0nObtTULuAskYLebrN0m57oo7k3
 cu0WtopTgPmnuy33sWzUAwZrFmiUxXcvYoJ21rrKdvIvzUYdzETvLZPlV3VPDPW3uRTS
 mXdh+iC4qamcxo9JxCf6DvXYikf1mAsmC/cyJy9xrVEqW8ml0MlmgF6R1qDSrDdPwXd5
 25GCJYJC1fKBytl8qxRLFrGpbffVpRz5jAIZOncFThDpRtOH/kirAql+p50slSJVPBeA
 1rPw==
X-Gm-Message-State: AOJu0YyvGAv5QZjxvD9pYoaiGqFdQCzLQjJzZJYAb5UU+inZShSV7gi8
 3Q0LM+qGNaU5hHrTwrToqyN2+9I4GrWg+dvluqLN2NZQwiBcJE6+vkIQsiiX8SkqcmS5OpP0u9C
 l0RpB1wyqK6Ht6bOdR6lYbApizMxD9T7J6Wh5P6APti5ZYZACh+xy1wfUp67r/m+GMnA=
X-Received: by 2002:a05:6000:543:b0:33d:1cc1:bb08 with SMTP id
 b3-20020a056000054300b0033d1cc1bb08mr6479117wrf.22.1709021466142; 
 Tue, 27 Feb 2024 00:11:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF/6MsCvDlDBzEAD2kHoP7xH4bJls44k+euCH2Jy+sXwYW1QJ5MsJbNsJeC3EZSDAqi5wmzJw==
X-Received: by 2002:a05:6000:543:b0:33d:1cc1:bb08 with SMTP id
 b3-20020a056000054300b0033d1cc1bb08mr6479102wrf.22.1709021465753; 
 Tue, 27 Feb 2024 00:11:05 -0800 (PST)
Received: from [10.43.2.89] (nat-pool-brq-t.redhat.com. [213.175.37.10])
 by smtp.gmail.com with ESMTPSA id
 ch12-20020a5d5d0c000000b0033dabeacab2sm10648037wrb.39.2024.02.27.00.11.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Feb 2024 00:11:05 -0800 (PST)
Message-ID: <af1b28e3-dd5f-4e31-a891-9dc038a92a34@redhat.com>
Date: Tue, 27 Feb 2024 09:11:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
References: <20240226151125.45391-1-mschmidt@redhat.com>
 <20240226151125.45391-2-mschmidt@redhat.com> <Zd2JuVAyHigIy5NR@nanopsycho>
From: Michal Schmidt <mschmidt@redhat.com>
In-Reply-To: <Zd2JuVAyHigIy5NR@nanopsycho>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1709021468;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=a6piSwraRWXigsSpLo1mJkUOURoZoNM0+ReFijy4zgE=;
 b=apy/+cQs+WoEBQEMVc/mryMt6mfIemZMNcqRPcmavKuy5RHFedruYv0pvFwh6tp9spCfMT
 AAbVJ2JCDZwJlL7Tm0zv6iGGYC6e3NOqUeRbJXoUuxLeRuLaj60rGJ0L06wo25c1BmGtno
 ISnxq8PG6b5cnqCQryett8dVFOpj55Y=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=apy/+cQs
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] ice: add ice_adapter for
 shared data across PFs on the same NIC
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
Cc: netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/27/24 08:05, Jiri Pirko wrote:
> Mon, Feb 26, 2024 at 04:11:23PM CET, mschmidt@redhat.com wrote:
>> There is a need for synchronization between ice PFs on the same physical
>> adapter.
>>
>> Add a "struct ice_adapter" for holding data shared between PFs of the
>> same multifunction PCI device. The struct is refcounted - each ice_pf
>> holds a reference to it.
>>
>> Its first use will be for PTP. I expect it will be useful also to
>> improve the ugliness that is ice_prot_id_tbl.
>>
>> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
>> ---
>> drivers/net/ethernet/intel/ice/Makefile      |  3 +-
>> drivers/net/ethernet/intel/ice/ice.h         |  2 +
>> drivers/net/ethernet/intel/ice/ice_adapter.c | 67 ++++++++++++++++++++
>> drivers/net/ethernet/intel/ice/ice_adapter.h | 22 +++++++
>> drivers/net/ethernet/intel/ice/ice_main.c    |  8 +++
>> 5 files changed, 101 insertions(+), 1 deletion(-)
>> create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.c
>> create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.h
>>
>> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
>> index cddd82d4ca0f..4fa09c321440 100644
>> --- a/drivers/net/ethernet/intel/ice/Makefile
>> +++ b/drivers/net/ethernet/intel/ice/Makefile
>> @@ -36,7 +36,8 @@ ice-y := ice_main.o	\
>> 	 ice_repr.o	\
>> 	 ice_tc_lib.o	\
>> 	 ice_fwlog.o	\
>> -	 ice_debugfs.o
>> +	 ice_debugfs.o  \
>> +	 ice_adapter.o
>> ice-$(CONFIG_PCI_IOV) +=	\
>> 	ice_sriov.o		\
>> 	ice_virtchnl.o		\
>> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>> index 365c03d1c462..1ffecbdd361a 100644
>> --- a/drivers/net/ethernet/intel/ice/ice.h
>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>> @@ -77,6 +77,7 @@
>> #include "ice_gnss.h"
>> #include "ice_irq.h"
>> #include "ice_dpll.h"
>> +#include "ice_adapter.h"
>>
>> #define ICE_BAR0		0
>> #define ICE_REQ_DESC_MULTIPLE	32
>> @@ -544,6 +545,7 @@ struct ice_agg_node {
>>
>> struct ice_pf {
>> 	struct pci_dev *pdev;
>> +	struct ice_adapter *adapter;
>>
>> 	struct devlink_region *nvm_region;
>> 	struct devlink_region *sram_region;
>> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
>> new file mode 100644
>> index 000000000000..deb063401238
>> --- /dev/null
>> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
>> @@ -0,0 +1,67 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +// SPDX-FileCopyrightText: Copyright Red Hat
>> +
>> +#include <linux/cleanup.h>
>> +#include <linux/mutex.h>
>> +#include <linux/pci.h>
>> +#include <linux/slab.h>
>> +#include <linux/xarray.h>
>> +#include "ice_adapter.h"
>> +
>> +static DEFINE_MUTEX(ice_adapters_lock);
> 
> Why you need and extra mutex and not just rely on xarray lock?

I suppose I could use xa_lock() and the __xa_{load,store} calls. 
Alright, let's see what it will look like...
Thanks,
Michal


>> +static DEFINE_XARRAY(ice_adapters);
>> +
>> +static unsigned long ice_adapter_index(const struct pci_dev *pdev)
>> +{
>> +	unsigned int domain = pci_domain_nr(pdev->bus);
>> +
>> +	WARN_ON((unsigned long)domain >> (BITS_PER_LONG - 13));
>> +	return ((unsigned long)domain << 13) |
>> +	       ((unsigned long)pdev->bus->number << 5) |
>> +	       PCI_SLOT(pdev->devfn);
>> +}
>> +
>> +struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
>> +{
>> +	unsigned long index = ice_adapter_index(pdev);
>> +	struct ice_adapter *a;
>> +
>> +	guard(mutex)(&ice_adapters_lock);
>> +
>> +	a = xa_load(&ice_adapters, index);
>> +	if (a) {
>> +		refcount_inc(&a->refcount);
>> +		return a;
>> +	}
>> +
>> +	a = kzalloc(sizeof(*a), GFP_KERNEL);
>> +	if (!a)
>> +		return NULL;
>> +
>> +	refcount_set(&a->refcount, 1);
>> +
>> +	if (xa_is_err(xa_store(&ice_adapters, index, a, GFP_KERNEL))) {
>> +		kfree(a);
>> +		return NULL;
>> +	}
>> +
>> +	return a;
>> +}
>> +
>> +void ice_adapter_put(const struct pci_dev *pdev)
>> +{
>> +	unsigned long index = ice_adapter_index(pdev);
>> +	struct ice_adapter *a;
>> +
>> +	guard(mutex)(&ice_adapters_lock);
>> +
>> +	a = xa_load(&ice_adapters, index);
>> +	if (WARN_ON(!a))
>> +		return;
>> +
>> +	if (!refcount_dec_and_test(&a->refcount))
>> +		return;
>> +
>> +	WARN_ON(xa_erase(&ice_adapters, index) != a);
>> +	kfree(a);
>> +}
>> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
>> new file mode 100644
>> index 000000000000..cb5a02eb24c1
>> --- /dev/null
>> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
>> @@ -0,0 +1,22 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/* SPDX-FileCopyrightText: Copyright Red Hat */
>> +
>> +#ifndef _ICE_ADAPTER_H_
>> +#define _ICE_ADAPTER_H_
>> +
>> +#include <linux/refcount_types.h>
>> +
>> +struct pci_dev;
>> +
>> +/**
>> + * struct ice_adapter - PCI adapter resources shared across PFs
>> + * @refcount: Reference count. struct ice_pf objects hold the references.
>> + */
>> +struct ice_adapter {
>> +	refcount_t refcount;
>> +};
>> +
>> +struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
>> +void ice_adapter_put(const struct pci_dev *pdev);
>> +
>> +#endif /* _ICE_ADAPTER_H */
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>> index 9c2c8637b4a7..4a60957221fc 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -5093,6 +5093,7 @@ static int
>> ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>> {
>> 	struct device *dev = &pdev->dev;
>> +	struct ice_adapter *adapter;
>> 	struct ice_pf *pf;
>> 	struct ice_hw *hw;
>> 	int err;
>> @@ -5145,7 +5146,12 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>>
>> 	pci_set_master(pdev);
>>
>> +	adapter = ice_adapter_get(pdev);
>> +	if (!adapter)
>> +		return -ENOMEM;
>> +
>> 	pf->pdev = pdev;
>> +	pf->adapter = adapter;
>> 	pci_set_drvdata(pdev, pf);
>> 	set_bit(ICE_DOWN, pf->state);
>> 	/* Disable service task until DOWN bit is cleared */
>> @@ -5196,6 +5202,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>> err_load:
>> 	ice_deinit(pf);
>> err_init:
>> +	ice_adapter_put(pdev);
>> 	pci_disable_device(pdev);
>> 	return err;
>> }
>> @@ -5302,6 +5309,7 @@ static void ice_remove(struct pci_dev *pdev)
>> 	ice_setup_mc_magic_wake(pf);
>> 	ice_set_wake(pf);
>>
>> +	ice_adapter_put(pdev);
>> 	pci_disable_device(pdev);
>> }
>>
>> -- 
>> 2.43.2
>>
>>
> 

