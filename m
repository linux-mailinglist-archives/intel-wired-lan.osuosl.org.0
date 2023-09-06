Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73556793A57
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 12:50:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C03A082083;
	Wed,  6 Sep 2023 10:50:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C03A082083
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693997418;
	bh=OX189h7QqEGXM66M3I+3QvrBjPcdTfc8+nUgISPMdVc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SB93v5SMC9Zcr7aEwSf5G3Z9uOsvTNihEwhOc/bJ0DmvO/OCGs7t+FfJQoXTEnsGi
	 4EbuDs5cF1caw5iD20ItbcWxK/1W0UumI6Tf0v7nMaSCH0RIEJp3tirwuLtA0/O6xW
	 qF8n9PIwdKMNrc8LcMoguOfaN2bWj2mrQue1ImTy1zdon4ZajDq4VvfXxQkHeiqA2x
	 Wgydp0bscaVWBe3L0c0bQg29R3ScGDpIzeKQs0hEmiG/x9Q/E1qWfqeRd3ye6NBj65
	 OL+nkPh37z8/ES0RR1tOxkfWzeV+XBc5wz+keMtHg7LcbWBDrlyTQa0NOHU6rRWm4k
	 9CXB4FJt8xFow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id St5lrDZ7oT-1; Wed,  6 Sep 2023 10:50:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC4E1813EF;
	Wed,  6 Sep 2023 10:50:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC4E1813EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 211E01BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 10:50:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE8154021C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 10:50:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE8154021C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fairL6nGVI3F for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 10:50:12 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3BE574011C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 10:50:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3BE574011C
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-679-J4KMKev1Mn6HoNSGpIug-Q-1; Wed, 06 Sep 2023 06:50:09 -0400
X-MC-Unique: J4KMKev1Mn6HoNSGpIug-Q-1
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-3fef5403093so3899325e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 Sep 2023 03:50:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693997408; x=1694602208;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mVfJZ1KNOctMNmCT4yWOhTYMFTvh1ErzEkSv6o/Mdyw=;
 b=T2yuUcoB/PhQs+5zQhlwsfXwP+qADDtkpv/DPosF8+bpsMnuxBrPNKTSDlLjIt0mXw
 KybULQ17qoMejo2wnjEKfdO8T1rmoUSRqe+3acCVMTBjb8RkzJi70OL8TqGLC5li/Rxe
 Jm4q+6OlcZaXobLjmpFHn6/2RWsJKn/8R2UK+ATEK8moJy5ZhUBPs1A8Kjzp+67TM90R
 2AyGYkLGmm96TnWV604UGmZHIh1ZXEoeFHJQ6gsnh/raCn8RSxfyuUw+eDeYZpU34JfY
 cJVNegxFuseNaQhbikhEFlo9dM0GPGuQvEY/ZtM76tXm2mNsGa3FiC3lPnSJNk7FuXs0
 IhaA==
X-Gm-Message-State: AOJu0YwHRQ9pXuEcW3Jun+qAPkQVspE11+Vj3CUDza+66vOEL2xvG6fQ
 MEhyoCP5uw30Xdtdxh9/M8zZcYSilK/g6gWz/2clt4VapoKcKFLr6MlFYMwxb8NUG4j+wL82LcI
 RkaldqMBkCXx4Z2Khtl1MpsNkKtrF9w==
X-Received: by 2002:a05:600c:2283:b0:400:cc2d:5e02 with SMTP id
 3-20020a05600c228300b00400cc2d5e02mr2239727wmf.17.1693997408495; 
 Wed, 06 Sep 2023 03:50:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7+IIUgjcHQguYQhWTUWOCXmevt2F1a5khKhPdN7WPbANS/uZ47N35PoinLuW3PZE/QYTgzg==
X-Received: by 2002:a05:600c:2283:b0:400:cc2d:5e02 with SMTP id
 3-20020a05600c228300b00400cc2d5e02mr2239706wmf.17.1693997408172; 
 Wed, 06 Sep 2023 03:50:08 -0700 (PDT)
Received: from [192.168.1.227] (85-160-57-38.reb.o2.cz. [85.160.57.38])
 by smtp.gmail.com with ESMTPSA id
 l16-20020adfe9d0000000b00317e77106dbsm20022067wrn.48.2023.09.06.03.50.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Sep 2023 03:50:07 -0700 (PDT)
Message-ID: <7a1e8afa-5b01-4081-9961-18c6e4b00be4@redhat.com>
Date: Wed, 6 Sep 2023 12:50:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Junfeng Guo <junfeng.guo@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230904021455.3944605-1-junfeng.guo@intel.com>
 <20230904021455.3944605-3-junfeng.guo@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
In-Reply-To: <20230904021455.3944605-3-junfeng.guo@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1693997411;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mVfJZ1KNOctMNmCT4yWOhTYMFTvh1ErzEkSv6o/Mdyw=;
 b=JeqOaWikK9pOT7S7C8eviOxykcahtv3EnByaF3Yg85lWqov0Qsw7iRqnw6Q3842pxRyBBX
 e5jI1cNIvGzbBOyx7NTg1EW3UJh7yIErzDuADWY0o6KVBWljSS7yK8sgm2WfGfz7LrP7a9
 tmrQRTSt9k6mM/HV7UT/CqPdTmlfg7k=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=JeqOaWik
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 02/15] ice: init imem
 table for parser
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 qi.z.zhang@intel.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dne 04. 09. 23 v 4:14 Junfeng Guo napsal(a):
> diff --git a/drivers/net/ethernet/intel/ice/ice_imem.c b/drivers/net/ethernet/intel/ice/ice_imem.c
> new file mode 100644
> index 000000000000..005e04947626
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_imem.c
> @@ -0,0 +1,324 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (C) 2023 Intel Corporation */
> +
> +#include "ice_common.h"
> +#include "ice_parser_util.h"
> +
> +static void _ice_imem_bst_bm_dump(struct ice_hw *hw, struct ice_bst_main *bm)

You have a lot of functions whose names start with an underscore. It's 
unusual. If it's to indicate that they're only to be used from the 
current source file, it's already implied by them being defined as static.

[...]
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
> index 747dfad66db2..dd089c859616 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
[...]
> +/**
> + * ice_parser_create_table - create a item table from a section
> + * @hw: pointer to the hardware structure
> + * @sect_type: section type
> + * @item_size: item size in byte
> + * @length: number of items in the table to create
> + * @item_get: the function will be parsed to ice_pkg_enum_entry
> + * @parse_item: the function to parse the item
> + */
> +void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
> +			      u32 item_size, u32 length,
> +			      void *(*item_get)(u32 sect_type, void *section,
> +						u32 index, u32 *offset),
> +			      void (*parse_item)(struct ice_hw *hw, u16 idx,
> +						 void *item, void *data,
> +						 int size))
> +{
> +	struct ice_seg *seg = hw->seg;
> +	struct ice_pkg_enum state;
> +	u16 idx = U16_MAX;
> +	void *table;
> +	void *data;
> +
> +	if (!seg)
> +		return NULL;
> +
> +	table = devm_kzalloc(ice_hw_to_dev(hw), item_size * length,
> +			     GFP_KERNEL);

Use devm_kcalloc.


Michal

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
