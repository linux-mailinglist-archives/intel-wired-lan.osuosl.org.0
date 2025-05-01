Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B82AA5F81
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 May 2025 15:51:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C4644116B;
	Thu,  1 May 2025 13:51:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h0usALEhF224; Thu,  1 May 2025 13:51:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99CF3411B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746107470;
	bh=D/LhwSulbplx4MujZIjS8uJF/UjiS2uJdhEq1iXjEgA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gLjfM2zCxCFBB3ogr9ZVNRcWNeXgh2ZCOznDbBt8cE05zUPEJDaAkijvjKeVN/SZU
	 7W9teZkBsHMylk6fXdmf/R/lYSE3LKl0DEOOaRbMuW7b98fGt8aL6DgaAWd9Rjs5PH
	 z4vliNjqZfyDiMCxlxHX6TS4dusS3fePKXE9yNdfs8UOHMQEPO97BWOY/WXyl+cKK3
	 cy3y3pWmygFrYS60RG2Auuyp7CExlGSEfMcYmUV0FbDJ1YRwfV61jAl9I2pfCeodNd
	 JGajp/Atq0pLIP+OvMI2oKAeDrB6Lhvv3nb8aQI9e4QbLKnvAiyn31ObCJSOmY0Tuk
	 ZWSclNQfxutSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99CF3411B7;
	Thu,  1 May 2025 13:51:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A24B622D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 13:51:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 94BA240ABC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 13:51:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jO9yQ8InyZZv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 13:51:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 155F5402F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 155F5402F6
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 155F5402F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 13:51:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id B98E5A48580;
 Thu,  1 May 2025 13:45:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D76CEC4CEE3;
 Thu,  1 May 2025 13:51:03 +0000 (UTC)
Date: Thu, 1 May 2025 14:51:01 +0100
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: netdev <netdev@vger.kernel.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250501135101.GY3339421@horms.kernel.org>
References: <20250430-jk-hash-ena-refactor-v1-0-8310a4785472@intel.com>
 <20250430-jk-hash-ena-refactor-v1-2-8310a4785472@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250430-jk-hash-ena-refactor-v1-2-8310a4785472@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1746107465;
 bh=oXB04uqyKlgN7tbJfyRt02/1FDKJI/QaOt5ciFDSSiA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f7e00Q/Qsh0Pk/KpONhQU+viGjvpq6iEV08gxw5YQEVj1DAOG4xPxUx7RhyXUKpw8
 8+syULZgXwL0Yl+vV9TDizd3uubXsVlyxqluRlBbFvavQSReYIA5mw6dUq2B/dy6Ve
 HtM22IzQhIXnav1eFAIH+dfYbgqjV/O90WIVGANmvr9QXGR5PYz4pOs8sgTpESKzOV
 awMdWdnvPFIENgYnQ89Zjyitw/kRGBB+32lGu0wNDU8Gx4PB9i6z1CPKjm5MwIRLgY
 74gjfXxinjdYbp7Ny0tydJymW0lR4AX5Ex1Ab28g8D+cZCUQT7CyQol9wYVsbx2CMs
 h6loUxjPaJV4g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=f7e00Q/Q
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/2] net: intel: move RSS
 packet classifier types to libie
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

On Wed, Apr 30, 2025 at 10:11:53AM -0700, Jacob Keller wrote:
> The Intel i40e, iavf, and ice drivers all include a definition of the
> packet classifier filter types used to program RSS hash enable bits. For
> i40e, these bits are used for both the PF and VF to configure the PFQF_HENA
> and VFQF_HENA registers.
> 
> For ice and iAVF, these bits are used to communicate the desired hash
> enable filter over virtchnl via its struct virtchnl_rss_hashena. The
> virtchnl.h header makes no mention of where the bit definitions reside.
> 
> Maintaining a separate copy of these bits across three drivers is
> cumbersome. Move the definition to libie as a new pctype.h header file.
> Each driver can include this, and drop its own definition.
> 
> The ice implementation also defined a ICE_AVF_FLOW_FIELD_INVALID, intending
> to use this to indicate when there were no hash enable bits set. This is
> confusing, since the enumeration is using bit positions. A value of 0
> *should* indicate the first bit. Instead, rewrite the code that uses
> ICE_AVF_FLOW_FIELD_INVALID to just check if the avf_hash is zero. From
> context this should be clear that we're checking if none of the bits are
> set.
> 
> The values are kept as bit positions instead of encoding the BIT_ULL
> directly into their value. While most users will simply use BIT_ULL
> immediately, i40e uses the macros both with BIT_ULL and test_bit/set_bit
> calls.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

Please see comment below.

...

> diff --git a/include/linux/net/intel/libie/pctype.h b/include/linux/net/intel/libie/pctype.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..78723c8a33a084fb1120743427273af4b982c835
> --- /dev/null
> +++ b/include/linux/net/intel/libie/pctype.h
> @@ -0,0 +1,44 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* Copyright (C) 2025 Intel Corporation */
> +
> +#ifndef __LIBIE_PCTYPE_H
> +#define __LIBIE_PCTYPE_H
> +
> +/**
> + * enum libie_filter_pctype - Packet Classifier Types for filters
> + *
> + * Packet Classifier Type indexes, used to set the xxQF_HENA registers. Also
> + * communicated over the virtchnl API as part of struct virtchnl_rss_hashena.
> + */

As there is a Kernel doc for this enum,
./tools/kernel-doc -none would like each value documented too.

> +enum libie_filter_pctype {
> +	/* Note: Values 0-28 are reserved for future use.
> +	 * Value 29, 30, 32 are not supported on XL710 and X710.
> +	 */
> +	LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP	= 29,
> +	LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP	= 30,
> +	LIBIE_FILTER_PCTYPE_NONF_IPV4_UDP		= 31,
> +	LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK	= 32,
> +	LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP		= 33,
> +	LIBIE_FILTER_PCTYPE_NONF_IPV4_SCTP		= 34,
> +	LIBIE_FILTER_PCTYPE_NONF_IPV4_OTHER		= 35,
> +	LIBIE_FILTER_PCTYPE_FRAG_IPV4			= 36,
> +	/* Note: Values 37-38 are reserved for future use.
> +	 * Value 39, 40, 42 are not supported on XL710 and X710.
> +	 */
> +	LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP	= 39,
> +	LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP	= 40,
> +	LIBIE_FILTER_PCTYPE_NONF_IPV6_UDP		= 41,
> +	LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK	= 42,
> +	LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP		= 43,
> +	LIBIE_FILTER_PCTYPE_NONF_IPV6_SCTP		= 44,
> +	LIBIE_FILTER_PCTYPE_NONF_IPV6_OTHER		= 45,
> +	LIBIE_FILTER_PCTYPE_FRAG_IPV6			= 46,
> +	/* Note: Value 47 is reserved for future use */
> +	LIBIE_FILTER_PCTYPE_FCOE_OX			= 48,
> +	LIBIE_FILTER_PCTYPE_FCOE_RX			= 49,
> +	LIBIE_FILTER_PCTYPE_FCOE_OTHER			= 50,
> +	/* Note: Values 51-62 are reserved for future use */
> +	LIBIE_FILTER_PCTYPE_L2_PAYLOAD			= 63
> +};
> +
> +#endif /* __LIBIE_PCTYPE_H */

...
