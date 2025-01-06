Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D19A2A02485
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 12:46:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BBB0404B6;
	Mon,  6 Jan 2025 11:46:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wdXeeDmycRcD; Mon,  6 Jan 2025 11:46:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B24F94049A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736164008;
	bh=2kfWNAHcCOHi/DBM0B37XoBD1xlJd9n+HLWnl4Qy07s=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S06nuZ/tGZOW0ER4jLhXg8p/r1WumtoGegz1v0dk/V2luWJTd7AK8nukERVvOfVTY
	 Zs6uRmDK+q2G4xpDWiGkqbIVJAVY5mwh00NX/6dFwXdQg1jwQOp4UoIVp8ohPnaF03
	 W38UIn0b4ZsPmfO/dNzH8/Qk4NcpmFR9/u3CKn6uLpRokZiQfVoRZ2YuQaqRQXdBo2
	 LslZ8LWpWN++vEezFSXh4dU8XJHQlvnPTBK8r7qndnVH5n9HRZ/f1AAaOlfQheIZdl
	 hhJ0c3KX2P+lQ+sy9MhTecJiFvBlFzkpz4CC1TknNH7fr2soY3GRzlSncrssI0SW5k
	 X7TRT2CcJBTNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B24F94049A;
	Mon,  6 Jan 2025 11:46:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F810DB4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:46:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 304BD400F9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:46:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pmZf-CmyJDMx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 11:46:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 474EE400B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 474EE400B9
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 474EE400B9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:46:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 689115C581B;
 Mon,  6 Jan 2025 11:46:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5AC4C4CED2;
 Mon,  6 Jan 2025 11:46:43 +0000 (UTC)
Date: Mon, 6 Jan 2025 11:46:41 +0000
From: Simon Horman <horms@kernel.org>
To: Paul Greenwalt <paul.greenwalt@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 netdev@vger.kernel.org, Alice Michael <alice.michael@intel.com>,
 Eric Joyner <eric.joyner@intel.com>
Message-ID: <20250106114641.GI4068@kernel.org>
References: <20241218091145.240373-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241218091145.240373-1-paul.greenwalt@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736164005;
 bh=5ZSPwqoLzQxrvlYZ22fMOJZBbUCBFLwgI7F0pVMEugE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UzguXv6MyGcNriC4c7uI8/fljcWS14cKvGVSfQoHV5Vo1/ao5lHtLguur1fih2V4V
 vPxeGrOdjZruVQofcIqCXS8r0DjcznKO0FU0UK+xDif47xRKn38aFLHI4GW0wZdAKA
 lC+In8fkyH/AHip6CW9cnncC1fQkWOGzs2IpVCTRS0NLPhxSdghGuzbNSTnfrd/R9q
 n4BCZ1hBbAjB1iYoLvt3yXapQXa+par8MirE8Vau/5XAjZFk1qFk87/eLY5/RyhmX5
 8zv50TZFdAe/TiUbcU4zszZxzVhKDXRrFra8FW7B3Hx+DMRVbWseNnLJZG6Fo/FG3Y
 iwLPXpLuR+dyQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=UzguXv6M
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6] ice: Add E830 checksum
 offload support
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

On Wed, Dec 18, 2024 at 04:11:45AM -0500, Paul Greenwalt wrote:
> E830 supports raw receive and generic transmit checksum offloads.
> 
> Raw receive checksum support is provided by hardware calculating the
> checksum over the whole packet, regardless of type. The calculated
> checksum is provided to driver in the Rx flex descriptor. Then the driver
> assigns the checksum to skb->csum and sets skb->ip_summed to
> CHECKSUM_COMPLETE.
> 
> Generic transmit checksum support is provided by hardware calculating the
> checksum given two offsets: the start offset to begin checksum calculation,
> and the offset to insert the calculated checksum in the packet. Support is
> advertised to the stack using NETIF_F_HW_CSUM feature.
> 
> E830 has the following limitations when both generic transmit checksum
> offload and TCP Segmentation Offload (TSO) are enabled:
> 
> 1. Inner packet header modification is not supported. This restriction
>    includes the inability to alter TCP flags, such as the push flag. As a
>    result, this limitation can impact the receiver's ability to coalesce
>    packets, potentially degrading network throughput.
> 2. The Maximum Segment Size (MSS) is limited to 1023 bytes, which prevents
>    support of Maximum Transmission Unit (MTU) greater than 1063 bytes.
> 
> Therefore NETIF_F_HW_CSUM and NETIF_F_ALL_TSO features are mutually
> exclusive. NETIF_F_HW_CSUM hardware feature support is indicated but is not
> enabled by default. Instead, IP checksums and NETIF_F_ALL_TSO are the
> defaults. Enforcement of mutual exclusivity of NETIF_F_HW_CSUM and
> NETIF_F_ALL_TSO is done in ice_set_features(). Mutual exclusivity
> of IP checksums and NETIF_F_HW_CSUM is handled by netdev_fix_features().
> 
> When NETIF_F_HW_CSUM is requested the provided skb->csum_start and
> skb->csum_offset are passed to hardware in the Tx context descriptor
> generic checksum (GCS) parameters. Hardware calculates the 1's complement
> from skb->csum_start to the end of the packet, and inserts the result in
> the packet at skb->csum_offset.
> 
> Co-developed-by: Alice Michael <alice.michael@intel.com>
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> Co-developed-by: Eric Joyner <eric.joyner@intel.com>
> Signed-off-by: Eric Joyner <eric.joyner@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

