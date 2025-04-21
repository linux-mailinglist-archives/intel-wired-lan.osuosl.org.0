Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 118A9A94FAC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Apr 2025 12:58:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE07460AC9;
	Mon, 21 Apr 2025 10:58:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yf-t5qrx6_oI; Mon, 21 Apr 2025 10:58:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35D2560ACB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745233118;
	bh=dnqZrDq4vamnT+97dy38FS0PUdMBt/aJ+22fn65T/Rs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jX1YzwJO4tqay/jzS59I1fu5wIkYHMhtAJx9yzggsWH1pOe4GnNowg7o0j7oxPjrd
	 1KcPROjnEfnZJ5zcTkCFRBfTJkXoE1z05DInJ6y0FEU/M8gqlGyMe9hXVdp/DV3vUX
	 s+bp+ryuCr6RTFS2deK1PVVHBwKJoYJb248LoED3dSma4Nay14wtzG8sEjhIx56Pkx
	 fIrTRzw5Zz/7ZKDqs3EC4pxnUK6oWWlGzj3/bOwdcmPjfdPCxFTjd1ZncCNALidABw
	 fII4c3oCSfXsTHhq3TWKWpL9WOn2cLO0fMk/pkLKUTYB5PjeaDW63t5txoNuXJVdt2
	 I1fCWWeLFxVKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35D2560ACB;
	Mon, 21 Apr 2025 10:58:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7ECCB68
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 10:58:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 705C740645
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 10:58:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bdgm91q00Dz1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Apr 2025 10:58:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C2CF54062E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2CF54062E
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C2CF54062E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 10:58:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8B0B35C5784;
 Mon, 21 Apr 2025 10:56:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 583D8C4CEE4;
 Mon, 21 Apr 2025 10:58:32 +0000 (UTC)
Date: Mon, 21 Apr 2025 11:58:30 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 aleksander.lobakin@intel.com, przemyslaw.kitszel@intel.com,
 piotr.kwapulinski@intel.com, aleksandr.loktionov@intel.com,
 jedrzej.jagielski@intel.com, larysa.zaremba@intel.com,
 anthony.l.nguyen@intel.com
Message-ID: <20250421105830.GD2789685@horms.kernel.org>
References: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
 <20250410100121.2353754-2-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250410100121.2353754-2-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1745233114;
 bh=o3qSXBKHoFNb19EBZyzvNZY5zIc0ddO/T2NkzS6psQI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Am40bPKs8Tqzv0i9cmf3PdcA1uz/65iaEFe1vnpktfcuQQMdBcX2JN6rwNX9wA92a
 jkSTSXGiAS2UnUKMFkCHRpamaQ7HTuaT2JrnZeyEqkCVtNRExVtAXhppS/XFSg0t0w
 9uHIaggtILfAgzwqZAXi/8ntrq+VRodLMnEriXGiwmzozn/LZTaVPR2KsEUMNz+iJ7
 NtSlm/VMUJxa60L/joZpL6utN8TovK4JPgOnXkWoyhCiByjUoUUHLMegVmlTuft8L5
 rvYDOwzEF3QcdmBg09JuIynlRYM79Dphb+jZHUMfTJ4r3ivLJGlcf/65fMwtH2Ejui
 W5+r4au10vf+g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Am40bPKs
Subject: Re: [Intel-wired-lan] [iwl-next v2 1/8] ice,
 libie: move generic adminq descriptors to lib
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

On Thu, Apr 10, 2025 at 12:01:14PM +0200, Michal Swiatkowski wrote:
> The descriptor structure is the same in ice, ixgbe and i40e. Move it to
> common libie header to use it across different driver.
> 
> Leave device specific adminq commands in separate folders. This lead to
> a change that need to be done in filling/getting descriptor:
> - previous: struct specific_desc *cmd;
> 	    cmd = &desc.params.specific_desc;
> - now: struct specific_desc *cmd;
>        cmd = libie_aq_raw(&desc);
> 
> Do this changes across the driver to allow clean build. The casting only
> have to be done in case of specific descriptors, for generic one union
> can still be used.
> 
> Changes beside code moving:
> - change ICE_ prefix to LIBIE_ prefix (ice_ and libie_ too)
> - remove shift variables not otherwise needed (in libie_aq_flags)
> - fill/get descriptor data based on desc.params.raw whenever the
>   descriptor isn't defined in libie
> - move defines from the libie_aq_sth structure outside
> - add libie_aq_raw helper and use it instead of explicit casting
> 
> Reviewed by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

...

> diff --git a/include/linux/net/intel/libie/adminq.h b/include/linux/net/intel/libie/adminq.h
> new file mode 100644
> index 000000000000..568980ddf4c1
> --- /dev/null
> +++ b/include/linux/net/intel/libie/adminq.h
> @@ -0,0 +1,269 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* Copyright (C) 2025 Intel Corporation */
> +
> +#ifndef __LIBIE_ADMINQ_H
> +#define __LIBIE_ADMINQ_H
> +
> +#include <linux/build_bug.h>
> +#include <linux/types.h>
> +
> +#define LIBIE_CHECK_STRUCT_LEN(n, X)	\
> +	static_assert((n) == sizeof(struct X))
> +
> +/**
> + * struct libie_aqc_generic - Generic structure used in adminq communication
> + * @param: generic parameter
> + * @addr: generic address

nit: The struct members documented above do not match those present below.

> + */
> +struct libie_aqc_generic {
> +	__le32 param0;
> +	__le32 param1;
> +	__le32 addr_high;
> +	__le32 addr_low;
> +};
> +LIBIE_CHECK_STRUCT_LEN(16, libie_aqc_generic);

...
