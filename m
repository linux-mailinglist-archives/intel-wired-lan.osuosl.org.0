Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EF5845A19
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 15:22:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29B5684508;
	Thu,  1 Feb 2024 14:22:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29B5684508
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706797357;
	bh=mU7lJP3/hV01YysetgJKyPtSuSQJlALHgYt50iT5hPg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FoGykVs5ONYjVTQgpNqSGCuXhhL9W7pAXbu17jcgD3zKmq64MzA66+GNOUmFC7Rpq
	 W9eAJvwoxvM4abOeg5MGJ5TZUQ3FHUOF53RQlcvk+lvAUP/EwNBEaREiRS8KeKA+Gf
	 R7S23yHZ9EpcTaRmRYR7IYESjbHCmH2VsR1Cm+ldeVOCMzs80ejW9urPiY1a1rxKPS
	 tA65u+cNTUPRzZkD+dF5ypWCh8j9jSouLVo51NwBAJ2csUR1GODzKHMN5ycGDM9vYW
	 t0jAYPf8PN90JHfM6kWI7QgbC6xo6bNF5kHq4sPgAjJR/5RpLEz0Cx783nEPHtTYBH
	 AbhAkXTvBRq/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RYPUDbvP-Y6Q; Thu,  1 Feb 2024 14:22:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6D6E83EC5;
	Thu,  1 Feb 2024 14:22:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6D6E83EC5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D92771BF41F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 14:22:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BD0DB421E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 14:22:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD0DB421E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pLmpxDMWmqpm for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 14:22:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2DF4441F67
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 14:22:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DF4441F67
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="401034134"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="401034134"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 06:22:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="1119948354"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="1119948354"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.246.35.198])
 ([10.246.35.198])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 06:22:23 -0800
Message-ID: <043361a1-bb11-4d0c-bbc2-d31b38deb4dc@linux.intel.com>
Date: Thu, 1 Feb 2024 15:22:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Takeru Hayasaka <hayatake396@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>
References: <20240201033310.1028154-1-hayatake396@gmail.com>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20240201033310.1028154-1-hayatake396@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706797349; x=1738333349;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=vZ0f9QgMh/MLNXr5IM6uI3bSgBD+ttKqdlYxHv7Mncg=;
 b=jT1rDvCrz5D/cb8uTfk7jMVm1Ts0E/jFCMyiRAlV1/mi6dGVMYwoai07
 Ha/zRcXq1nZz9L+RVJoFv8xLDs6EdrdjsIpfz0rAIsYeAksdc5o1KOIM3
 DCz509FDTR5DDuWU4LA7GX6TgwUyizVs0NMpBX7H8xVyRmG1JkhQKdqac
 qOBZDp9x1f4iMtyRSF/5hkdjf/zPT2FThYPvgmHZKqgxUhSFlRmO0ss2A
 p5K6+yac0VbzvhCoz9By3aiG0J5mXMhpFSAKhZRjARpv4/SLE04i8EQ47
 Bx7H6ReHJNo3n2csuPWhUMrDcDNulRBKtdIHxR0VQn9pUXTghJsBmw8yt
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jT1rDvCr
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 1/2] ethtool: Add GTP RSS
 hash options to ethtool.h
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
Cc: linux-doc@vger.kernel.org, vladimir.oltean@nxp.com,
 linux-kernel@vger.kernel.org, laforge@gnumonks.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 01.02.2024 04:33, Takeru Hayasaka wrote:
> This is a patch that enables RSS functionality for GTP packets using ethtool.
> 
> A user can include TEID and make RSS work for GTP-U over IPv4 by doing the
> following:`ethtool -N ens3 rx-flow-hash gtpu4 sde`
> 
> In addition to gtpu(4|6), we now support gtpc(4|6),gtpc(4|6)t,gtpu(4|6)e,
> gtpu(4|6)u, and gtpu(4|6)d.
> 
> gtpc(4|6): Used for GTP-C in IPv4 and IPv6, where the GTP header format does
> not include a TEID.
> gtpc(4|6)t: Used for GTP-C in IPv4 and IPv6, with a GTP header format that
> includes a TEID.
> gtpu(4|6): Used for GTP-U in both IPv4 and IPv6 scenarios.
> gtpu(4|6)e: Used for GTP-U with extended headers in both IPv4 and IPv6.
> gtpu(4|6)u: Used when the PSC (PDU session container) in the GTP-U extended
> header includes Uplink, applicable to both IPv4 and IPv6.
> gtpu(4|6)d: Used when the PSC in the GTP-U extended header includes Downlink,
> for both IPv4 and IPv6.
> 
> GTP generates a flow that includes an ID called TEID to identify the tunnel.
> This tunnel is created for each UE (User Equipment).By performing RSS based on
> this flow, it is possible to apply RSS for each communication unit from the UE.
> Without this, RSS would only be effective within the range of IP addresses. For
> instance, the PGW can only perform RSS within the IP range of the SGW.
> Problematic from a load distribution perspective, especially if there's a bias
> in the terminals connected to a particular base station.This case can be
> solved by using this patch.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>

> Signed-off-by: Takeru Hayasaka <hayatake396@gmail.com>
> ---
> v2->v3: Based on Harald-san's review, I added documentation and comments to
> ethtool.h and ice.rst.
> v3->v4: Based on Marcin-san's review, I added the missing code for GTPC and
> GTPC_TEID, and revised the documentation and comments.
> v4->v5: Based on Marcin-san's review, I fixed rename and wrong code regarding
> GTPC
> v5->v6: Based on Marcin-san's review, Undoing the addition of unnecessary
> blank lines.Minor fixes.
> v6->v7 Based on Jakub-san's review, Split the patch.
>  include/uapi/linux/ethtool.h | 48 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
> index 06ef6b78b7de..11fc18988bc2 100644
> --- a/include/uapi/linux/ethtool.h
> +++ b/include/uapi/linux/ethtool.h
> @@ -2023,6 +2023,53 @@ static inline int ethtool_validate_duplex(__u8 duplex)
>  #define	IPV4_FLOW	0x10	/* hash only */
>  #define	IPV6_FLOW	0x11	/* hash only */
>  #define	ETHER_FLOW	0x12	/* spec only (ether_spec) */
> +
> +/* Used for GTP-U IPv4 and IPv6.
> + * The format of GTP packets only includes
> + * elements such as TEID and GTP version.
> + * It is primarily intended for data communication of the UE.
> + */
> +#define GTPU_V4_FLOW 0x13	/* hash only */
> +#define GTPU_V6_FLOW 0x14	/* hash only */
> +
> +/* Use for GTP-C IPv4 and v6.
> + * The format of these GTP packets does not include TEID.
> + * Primarily expected to be used for communication
> + * to create sessions for UE data communication,
> + * commonly referred to as CSR (Create Session Request).
> + */
> +#define GTPC_V4_FLOW 0x15	/* hash only */
> +#define GTPC_V6_FLOW 0x16	/* hash only */
> +
> +/* Use for GTP-C IPv4 and v6.
> + * Unlike GTPC_V4_FLOW, the format of these GTP packets includes TEID.
> + * After session creation, it becomes this packet.
> + * This is mainly used for requests to realize UE handover.
> + */
> +#define GTPC_TEID_V4_FLOW 0x17	/* hash only */
> +#define GTPC_TEID_V6_FLOW 0x18	/* hash only */
> +
> +/* Use for GTP-U and extended headers for the PSC (PDU Session Container).
> + * The format of these GTP packets includes TEID and QFI.
> + * In 5G communication using UPF (User Plane Function),
> + * data communication with this extended header is performed.
> + */
> +#define GTPU_EH_V4_FLOW 0x19	/* hash only */
> +#define GTPU_EH_V6_FLOW 0x1a	/* hash only */
> +
> +/* Use for GTP-U IPv4 and v6 PSC (PDU Session Container) extended headers.
> + * This differs from GTPU_EH_V(4|6)_FLOW in that it is distinguished by
> + * UL/DL included in the PSC.
> + * There are differences in the data included based on Downlink/Uplink,
> + * and can be used to distinguish packets.
> + * The functions described so far are useful when you want to
> + * handle communication from the mobile network in UPF, PGW, etc.
> + */
> +#define GTPU_UL_V4_FLOW 0x1b	/* hash only */
> +#define GTPU_UL_V6_FLOW 0x1c	/* hash only */
> +#define GTPU_DL_V4_FLOW 0x1d	/* hash only */
> +#define GTPU_DL_V6_FLOW 0x1e	/* hash only */
> +
>  /* Flag to enable additional fields in struct ethtool_rx_flow_spec */
>  #define	FLOW_EXT	0x80000000
>  #define	FLOW_MAC_EXT	0x40000000
> @@ -2037,6 +2084,7 @@ static inline int ethtool_validate_duplex(__u8 duplex)
>  #define	RXH_IP_DST	(1 << 5)
>  #define	RXH_L4_B_0_1	(1 << 6) /* src port in case of TCP/UDP/SCTP */
>  #define	RXH_L4_B_2_3	(1 << 7) /* dst port in case of TCP/UDP/SCTP */
> +#define	RXH_GTP_TEID	(1 << 8) /* teid in case of GTP */
>  #define	RXH_DISCARD	(1 << 31)
>  
>  #define	RX_CLS_FLOW_DISC	0xffffffffffffffffULL
