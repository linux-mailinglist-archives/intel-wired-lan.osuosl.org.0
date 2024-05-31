Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFF28D627E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 15:11:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE76961134;
	Fri, 31 May 2024 13:11:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MqHBKOH-Y47K; Fri, 31 May 2024 13:11:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EEC26075D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717161108;
	bh=w0k6iv5heIvIEvsl1IPV4tbwTiNf/oihC32EQLReS1Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lg1/T8R/NTwMfxcr546cS5ehZbEdt9RPkxrQBtC3jaqcxgmCqmRjVg+r9rWsi/1XM
	 8pjPfxI5nRc2yaT37W8GO8aDHTxlL+Q16PmbK3RiVJQwpsNl6ZKB8pkbe+4UfuDT3f
	 +/phzqi3hV5BA3V7saO4bKNYJAPEaoJB3OW0AjUMfPfc8I5AREX/p++JjETKSfePgJ
	 AYiTmU5ErMms3YFjh4NmoizZWYgTHoUNGztVJ5emLF8RMeDcgh43/dbLWHOfBZOcrT
	 EGoQ60KfPFRBCVIAO4jAT2QFl452UNJNzMlNIAwAgL0fsoXq8N4pJw0xCWXGj8HoKq
	 2Jc9NzLLUZ37w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4EEC26075D;
	Fri, 31 May 2024 13:11:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DBFE91D528A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 13:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C41E140547
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 13:11:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tXu1yhoXlt-a for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 13:11:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C573340564
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C573340564
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C573340564
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 13:11:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9BA4962415;
 Fri, 31 May 2024 13:11:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A2E3C116B1;
 Fri, 31 May 2024 13:11:41 +0000 (UTC)
Date: Fri, 31 May 2024 14:11:39 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240531131139.GD123401@kernel.org>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
 <20240527185810.3077299-2-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240527185810.3077299-2-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717161103;
 bh=+RxMHhYO/X4eUxC++M6brEN8NylFcxLydIy0tUrLLHo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QWktP+cA9ArMwKmdhpAPp+xzW+J6qnw7HK6IaT5DPMGQKTdhtQ9svUid06xCLX49R
 UPHcQa2PCDTeoaf9c1E1OmOwlxroOQfkMZPqQ1ezCoCO9wXax8Z3LYaX4roHdGJdF0
 RdWeCfuHNZNAJBKwQDa1ictEr6nGRmQltAf/zJAS5m0/6ZOaiLlnaSNMZJvT8BliEY
 hjG69xo3g+g6NRcxv/NIxSPyfaGVnpW7wD4JqJQ7E5drnBcv2fa/jiZa1NK3N0cqXL
 74eVIE/5G11pM2lfsZkHq3MOdbTaHEjd38KTjMCgppa0RFAbO8hYBs+KH9+zyFeIxf
 Z1x4VfKPG1N4w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QWktP+cA
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 01/13] ice: add parser
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Junfeng Guo <junfeng.guo@intel.com>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 27, 2024 at 12:57:58PM -0600, Ahmed Zaki wrote:
> From: Junfeng Guo <junfeng.guo@intel.com>
> 
> Add new parser module which can parse a packet in binary and generate
> information like ptype, protocol/offset pairs and flags which can be later
> used to feed the FXP profile creation directly.
> 
> Add skeleton of the create and destroy APIs:
> ice_parser_create()
> ice_parser_destroy()
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
> new file mode 100644
> index 000000000000..b7865b6a0a9b
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> @@ -0,0 +1,31 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (C) 2024 Intel Corporation */
> +
> +#include "ice_common.h"
> +
> +/**
> + * ice_parser_create - create a parser instance
> + * @hw: pointer to the hardware structure
> + *
> + * Return a pointer to the allocated parser instance

Hi Ahmed,

A minor nit from my side.

I think that in order to keep ./scripts/kernel-doc -none -Wall happy
this should be:

 * Return: pointer to the allocated parser instance

And perhaps it would be best to mention the error case too

 * Return: pointer to the allocated parser instance, or an error pointer


> + */
> +struct ice_parser *ice_parser_create(struct ice_hw *hw)
> +{
> +	struct ice_parser *p;
> +
> +	p = kzalloc(sizeof(*p), GFP_KERNEL);
> +	if (!p)
> +		return ERR_PTR(-ENOMEM);
> +
> +	p->hw = hw;
> +	return p;
> +}

...
