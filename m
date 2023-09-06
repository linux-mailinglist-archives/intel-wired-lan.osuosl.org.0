Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B49B793A56
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 12:50:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD4BA82071;
	Wed,  6 Sep 2023 10:50:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD4BA82071
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693997412;
	bh=CAQE7Sz8seQqwShRZllY7XHWLKZAKCeakLRbNBunWuQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EFF2AEieCPzmJgaTg/U4gptNVXNGYaPLk8x8tBddqm2uWxKCPxKAABBVgyIBd21n0
	 IuEBRCn0r6KiyAN3xjJSjj15rB92e1HPegjIIKAmFStg2BTwxMcHm+qWV3s+tDLto4
	 BPMERdpE5gOUsS61XKjF48a0p4GgI/HXFEhFv/BgWLeYtbQdsW6f5adH6+xbW8wX7j
	 o85T/Td+JUPrZZbLr50bxBjSN4Eg4WNG08dj0wf6KtRhzDS515MhGOPlLYj3xdUBoF
	 iKN4OJ8WPVUpOKjbWN3PPnxblKBg10KhLGf30PSCxX5yZINO++x8yw8mqC3q9vMkyv
	 35JdpXse2NIsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YqQFi01iYweA; Wed,  6 Sep 2023 10:50:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A382581755;
	Wed,  6 Sep 2023 10:50:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A382581755
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 843841BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 10:50:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5C2CF4021C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 10:50:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C2CF4021C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eStdSd1fer4e for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 10:50:05 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F10A4011C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 10:50:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F10A4011C
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-60-47mtysDsMOuAauooXhziqw-1; Wed, 06 Sep 2023 06:50:03 -0400
X-MC-Unique: 47mtysDsMOuAauooXhziqw-1
Received: by mail-lj1-f199.google.com with SMTP id
 38308e7fff4ca-2bce272ebdfso41455771fa.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 Sep 2023 03:50:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693997401; x=1694602201;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YZAYCQnIx8VYUXPhMIqm5qe9D2E5DAw27dX5/PsRdyM=;
 b=KCrAo/O9i/kuhs53vyL7PujXYfOkrTSs3YntEHfTTlmvjy56DMVTQNyVrcwIwBimEV
 YzRz0c0GgRB6S6vIF9OE7wDNmYxfnemKi1t4obHPnaHTIrCSAYpFwkhA6cjP8TBvz50b
 b6iPH8HBf+UYdg786G82LLVF7IuVeSTEdbcDOcL0m06u2dUWyxjLm7EAv31ra/kt82nn
 +Ati8gC84aKdhkU2EZU70y5kXlCEf9mjfpS65aI6NQouYm78USY33JuC8fgEXue7Chxs
 9NKUePpYEDL5QR0VwRAdCWFNmcGtE+Kp3+arf23aIa1sAKhgtMDIctNZ47XMs4kgvgZS
 EhxA==
X-Gm-Message-State: AOJu0YxbZIN8LBvisdJV+al4CrjGoyJrDXh3cCufdSje8Lqu3v7lGNwn
 rph+Sc4h7B0B4VcQKCAjlJ17oThR9ZltR44Gh4ypOHTkkZPPXY6aWIwwGsFB7mcWlr6KFqPMFRj
 UVZM61JRycHLig6k7AzuZRasi9RhgkA==
X-Received: by 2002:a05:6512:282c:b0:500:c5df:1872 with SMTP id
 cf44-20020a056512282c00b00500c5df1872mr2262919lfb.44.1693997401708; 
 Wed, 06 Sep 2023 03:50:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGaujWEXFgE2OIDX6wjHeyNjoruf3vnOJmQJLyfAbPvMDR5QYWGRKZovQPyGwd1eVgm7tcDxw==
X-Received: by 2002:a05:6512:282c:b0:500:c5df:1872 with SMTP id
 cf44-20020a056512282c00b00500c5df1872mr2262885lfb.44.1693997401315; 
 Wed, 06 Sep 2023 03:50:01 -0700 (PDT)
Received: from [192.168.1.227] (85-160-57-38.reb.o2.cz. [85.160.57.38])
 by smtp.gmail.com with ESMTPSA id
 l16-20020adfe9d0000000b00317e77106dbsm20022067wrn.48.2023.09.06.03.50.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Sep 2023 03:50:01 -0700 (PDT)
Message-ID: <72beaab3-1f88-4f46-a451-2af9da8caff4@redhat.com>
Date: Wed, 6 Sep 2023 12:49:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Junfeng Guo <junfeng.guo@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230904021455.3944605-1-junfeng.guo@intel.com>
 <20230904021455.3944605-2-junfeng.guo@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
In-Reply-To: <20230904021455.3944605-2-junfeng.guo@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1693997404;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YZAYCQnIx8VYUXPhMIqm5qe9D2E5DAw27dX5/PsRdyM=;
 b=g4a5FpDe56JoJbQYzfQJEk4/72cKzCpf7PstPFnyNIms/bvd+jwKjc9y+vuLCy68kG3CkC
 jW45FivKdRNNi57SFde/X9/oqNGws7fUR7rGSKu9FikfL1KW2DscZImi1qe9YvdZKN0Stv
 d3Z/9hyaXmkVY9IBsg1q82vBaleoILU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=g4a5FpDe
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 01/15] ice: add parser
 create and destroy skeleton
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
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
> new file mode 100644
> index 000000000000..747dfad66db2
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> @@ -0,0 +1,33 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (C) 2023 Intel Corporation */
> +
> +#include "ice_common.h"
> +
> +/**
> + * ice_parser_create - create a parser instance
> + * @hw: pointer to the hardware structure
> + * @psr: output parameter for a new parser instance be created
> + */
> +int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
> +{
> +	struct ice_parser *p;
> +
> +	p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(struct ice_parser),
> +			 GFP_KERNEL);
> +	if (!p)
> +		return -ENOMEM;
> +
> +	p->hw = hw;
> +
> +	*psr = p;
> +	return 0;
> +}

The function could just return the pointer directly. You can use ERR_PTR 
to encode all kinds of failures.

Michal

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
