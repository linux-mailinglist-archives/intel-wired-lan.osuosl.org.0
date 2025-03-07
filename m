Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E2FA56800
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 13:41:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0154560AE8;
	Fri,  7 Mar 2025 12:41:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pkD6MN-oNzf0; Fri,  7 Mar 2025 12:41:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0370B608FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741351263;
	bh=7nGhCYAGI5WrAjMfSCPaH4vGX6SRUXUuK9j3IKrjRWY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8H1oVEpWiAlpy/j9WhUIu39q31ONoHlXgqAbUmSUs27B36tkaF94vp3RCuxxUbC7C
	 kcxW40D0zM0YlEM2+Cj7REDzyIkHmTps43JvwbvK+XzwtaWhcISNVk31VXtDgeboSM
	 pADuFhCDX31moYOzRQWATMcUx3kDSdkayMGU3pQsLv4Y7L8m3YJrls96q3ZmPE9v1y
	 MApoUrYFLiedsaSF1Ty0aHAwAEYuKSSI13IYh9TxYEUB2gIU2/JQ9Qj6EuXXCoJjsb
	 FQ+dxAWNajPMwXQk9pzfPi5P8tTBLZdtG/IkrDH/Lfj9KW+0DspMLs/2xh4jGquir5
	 BMKfKKMqkNx8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0370B608FC;
	Fri,  7 Mar 2025 12:41:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 14E01944
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 12:41:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1007D413A5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 12:41:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZHpinJHIfqc7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 12:41:00 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42d; helo=mail-wr1-x42d.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 278744123B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 278744123B
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 278744123B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 12:40:59 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id
 ffacd0b85a97d-390fdaf2897so1799784f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Mar 2025 04:40:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741351257; x=1741956057;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7nGhCYAGI5WrAjMfSCPaH4vGX6SRUXUuK9j3IKrjRWY=;
 b=INNLRZyeDgr9y7uatDLJXmK8exhJZYbzr5v31iNKjk5bw218XfdP91F0fFSt5clBQC
 yZ4DxKFsg5ESm0KDzA5t6D0KokjrQZ7yqlsbjsd63iSmmbl3K6GPqHdXN1xMBJa924m/
 HDeNes5CoYyYq3BN0xjC6qDDq4PMWflWjR+0M9j+lXFy0W0g/Bqhnk0HTW9JFjIduK+W
 A/AaqXFHRXtqqAfgcdfAmrs27nQ0LhPkir4rjIoVEwTTE/iwDmluk6PUerl3EWk9AgDX
 mlmPhH1gXYUomkbtTHzxbfjNRJsrquOVdR4PXO52p9AdGumA92rceEAUkCFF6aOdXfwT
 f54A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWsrN0y5ohz3o7uJ10tlhv76zkIP8yTbH8k0w/J1lQrSokDstbFZRagKTeMafvgmc4/ZbXhstZrPI1Nr/uq1e4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzMEWzJOVm/+0+NMcM7q9PQlOLlDKAgoVaqn1FqjG+kDwJjb0a6
 CjIr417XilKeK7oJUIwq60aBvtz89iGUX76ecXU5SzPPztgx5RiRbEr5Slomuro=
X-Gm-Gg: ASbGncvdYMWyTsqc54QeY8pn07pJu0ANZ4g6bvWms2fu3GfEjFT18ZUyGBE7Ta4jXBf
 JvaG8uU9xG2xLazOXPk06VYcTIZd+B2m0ja3GQ0/Z0/4WDNywlA2e58IcKwH4j/6H7xq61BVAdx
 K/g2w8YrVcPeS9Ms0lDHI1F+9gsqEWoKSokZ51kgRIig3yzmdq3xrRyN7LsINTvXpNwrJzXGZWt
 4bzCVdxikgQzR+iE0YVHmJMYd8sgZiCUUE0EYI+HmpB5elWNloxhJJJ61kffZaLdN9j74Ke6Zfa
 x7Rhx4ky16XT6BP2ucdfk1LNgvNp+UIC+386gfiLHWjPDNVd6mI0l+3j4/Yalim0DPtekEI=
X-Google-Smtp-Source: AGHT+IHwy26XZuyfyXGzpCxnGPSO4xxd3jD+CcFND82dAITnC2g11Nui5sQcKS4dw6ZFLY1BkWDqXA==
X-Received: by 2002:a05:6000:1849:b0:391:158f:3d59 with SMTP id
 ffacd0b85a97d-39132d21141mr2984080f8f.15.1741351257010; 
 Fri, 07 Mar 2025 04:40:57 -0800 (PST)
Received: from jiri-mlt.client.nvidia.com ([193.47.165.251])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3912bfb79cfsm5270772f8f.10.2025.03.07.04.40.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Mar 2025 04:40:56 -0800 (PST)
Date: Fri, 7 Mar 2025 13:40:49 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <vt6wnwcje727xv4agzhkpe5ympcvhtgg7qbaq4hlvw42roji2r@3kwjm4togc7m>
References: <20250306211159.3697-2-przemyslaw.kitszel@intel.com>
 <28792ae2-bee7-48c9-af5d-2e1ba199558a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <28792ae2-bee7-48c9-af5d-2e1ba199558a@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1741351257; x=1741956057;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=7nGhCYAGI5WrAjMfSCPaH4vGX6SRUXUuK9j3IKrjRWY=;
 b=cp+YIpf2R86H0pDzFoyeVnQZrMkG18nsG/HALV2x50f38QREiCwDjQGXpnoYwpGZBe
 zMcV93aCvG8TjM0ShMdi4QLLKlPt1j+s9WFt8bwSwp9DpkYgK7wmTQbWAADgubI3t0it
 pgRT1/pBj5srz8ZXvDxD+AY7EPtX7Woyg4WaXrZJ6aijg467UyUAtMxNZS6n3JO31t7M
 vFavcBA3yxs1FpmjGG2r657OLkwCG13WvYbp2t8HNYI7y1mKb4b2sVmvLV9tqytE3Ela
 p8djs8+lu+0ErMM0h/8BI4XCQj1NDrMB7kTx8Bmen+5NP2lrgimNvKeTkpyaXtI7ax9h
 feHA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=cp+YIpf2
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: use DSN instead of PCI
 BDF for ice_adapter index
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Mar 07, 2025 at 12:53:05AM +0100, jacob.e.keller@intel.com wrote:
>
>
>On 3/6/2025 1:11 PM, Przemek Kitszel wrote:
>> Use Device Serial Number instead of PCI bus/device/function for
>> index of struct ice_adapter.
>> Functions on the same physical device should point to the very same
>> ice_adapter instance.
>> 
>> This is not only simplification, but also fixes things up when PF
>> is passed to VM (and thus has a random BDF).
>> 
>> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
>> Suggested-by: Jakub Kicinski <kuba@kernel.org>
>> Suggested-by: Jiri Pirko <jiri@resnulli.us>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>
>The only caution I have here is that we might run into issues with
>pre-production or poorly flashed boards which don't have DSN properly
>flashed. This shouldn't be an impact outside of early testing or
>mistakes by devs. I think there is a default ID which is almost all 0s
>we could check and log a warning to help prevent confusion in such a case?
>
>A couple systems I've seen have serial numbers like:
>
>  serial_number 00-00-00-00-00-00-00-00
>  serial_number 00-00-00-00-00-00-00-00
>
>or
>
>  serial_number 00-01-00-ff-ff-00-00-00
>  serial_number 00-01-00-ff-ff-00-00-00
>
>
>In practice I'm not sure how big a deal breaker this is. Properly
>initialized boards should have unique IDs, and if you update via
>devlink, or any of our standard update tools, it will maintain the ID
>across flash. However, during early development, boards were often
>flashed manually which could lead to such non-unique IDs.

Do we need a workaround for pre-production buggy hw now? Sounds a bit
weird tbh.


>
>> CC: Karol Kolacinski <karol.kolacinski@intel.com>
>> CC: Grzegorz Nitka <grzegorz.nitka@intel.com>
>> CC: Michal Schmidt <mschmidt@redhat.com>
>> CC: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_adapter.h |  4 +--
>>  drivers/net/ethernet/intel/ice/ice_adapter.c | 29 +++-----------------
>>  2 files changed, 6 insertions(+), 27 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
>> index e233225848b3..1935163bd32f 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_adapter.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
>> @@ -42,7 +42,7 @@ struct ice_adapter {
>>  	struct ice_port_list ports;
>>  };
>>  
>> -struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
>> -void ice_adapter_put(const struct pci_dev *pdev);
>> +struct ice_adapter *ice_adapter_get(struct pci_dev *pdev);
>> +void ice_adapter_put(struct pci_dev *pdev);
>>  
>>  #endif /* _ICE_ADAPTER_H */
>> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
>> index 01a08cfd0090..b668339ed0ef 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_adapter.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
>> @@ -1,7 +1,6 @@
>>  // SPDX-License-Identifier: GPL-2.0-only
>>  // SPDX-FileCopyrightText: Copyright Red Hat
>>  
>> -#include <linux/bitfield.h>
>>  #include <linux/cleanup.h>
>>  #include <linux/mutex.h>
>>  #include <linux/pci.h>
>> @@ -14,29 +13,9 @@
>>  static DEFINE_XARRAY(ice_adapters);
>>  static DEFINE_MUTEX(ice_adapters_mutex);
>>  
>> -/* PCI bus number is 8 bits. Slot is 5 bits. Domain can have the rest. */
>> -#define INDEX_FIELD_DOMAIN GENMASK(BITS_PER_LONG - 1, 13)
>> -#define INDEX_FIELD_DEV    GENMASK(31, 16)
>> -#define INDEX_FIELD_BUS    GENMASK(12, 5)
>> -#define INDEX_FIELD_SLOT   GENMASK(4, 0)
>> -
>> -static unsigned long ice_adapter_index(const struct pci_dev *pdev)
>> +static unsigned long ice_adapter_index(struct pci_dev *pdev)
>>  {
>> -	unsigned int domain = pci_domain_nr(pdev->bus);
>> -
>> -	WARN_ON(domain > FIELD_MAX(INDEX_FIELD_DOMAIN));
>> -
>> -	switch (pdev->device) {
>> -	case ICE_DEV_ID_E825C_BACKPLANE:
>> -	case ICE_DEV_ID_E825C_QSFP:
>> -	case ICE_DEV_ID_E825C_SFP:
>> -	case ICE_DEV_ID_E825C_SGMII:
>> -		return FIELD_PREP(INDEX_FIELD_DEV, pdev->device);
>> -	default:
>> -		return FIELD_PREP(INDEX_FIELD_DOMAIN, domain) |
>> -		       FIELD_PREP(INDEX_FIELD_BUS,    pdev->bus->number) |
>> -		       FIELD_PREP(INDEX_FIELD_SLOT,   PCI_SLOT(pdev->devfn));
>> -	}
>> +	return (unsigned long)pci_get_dsn(pdev);
>
>Much simpler :D
>
>>  }
>>  
>>  static struct ice_adapter *ice_adapter_new(void)
>> @@ -77,7 +56,7 @@ static void ice_adapter_free(struct ice_adapter *adapter)
>>   * Return:  Pointer to ice_adapter on success.
>>   *          ERR_PTR() on error. -ENOMEM is the only possible error.
>>   */
>> -struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
>> +struct ice_adapter *ice_adapter_get(struct pci_dev *pdev)
>>  {
>>  	unsigned long index = ice_adapter_index(pdev);
>>  	struct ice_adapter *adapter;
>> @@ -110,7 +89,7 @@ struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
>>   *
>>   * Context: Process, may sleep.
>>   */
>> -void ice_adapter_put(const struct pci_dev *pdev)
>> +void ice_adapter_put(struct pci_dev *pdev)
>>  {
>
>A bit of a shame that this needs to be non const now.. Could
>pci_get_dsn() be made const? Or does it do something which might modify
>the device somehow?

Would make sense to me to make it const.


>
>>  	unsigned long index = ice_adapter_index(pdev);
>>  	struct ice_adapter *adapter;
>
