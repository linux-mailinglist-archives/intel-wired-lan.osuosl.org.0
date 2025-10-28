Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 837EDC146F9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 12:46:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F109410A2;
	Tue, 28 Oct 2025 11:46:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8X_knSZ6lcwR; Tue, 28 Oct 2025 11:46:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B77FE410FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761651960;
	bh=ffz+xBa46D+c5SWp6Lx1HnJOWzhbEkEh9tNkycnKGpk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GlgFQyHQ/JGwIfywsMVohyO7y0zsdEZ3akvpXQQWRAFKGaKh4I81fgqoEFNV4j9Ol
	 Oy44fFlAXr6kXrvRglQk8dmDJhwmWS94gVNAqb4KwEcIDZVd2oU5F07Ngg0aJfW/I5
	 TBFgWK3SDRKi7M+JCzWXSX+Ntmb11sfIqotiBzH69ggG4OenmW6/KnW1Q1xwZoLMaT
	 jJPQUJrxYFgrjjyeKHMvvGyKvdRdtGHweTqPPV447G6pc0UODrWhtTKlR32b9hD52z
	 tI5364zk19l+OrQc5LUkyOJKYurKKx+O2TQRFQJzG82txP9OGAhdp1KPcM+72yyDvY
	 476nsY9c82tSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B77FE410FB;
	Tue, 28 Oct 2025 11:46:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CFF443F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 11:45:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1BAF46159F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 11:45:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rmcuj5kOZHZf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 11:45:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 663E361593
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 663E361593
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 663E361593
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 11:45:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 94B3D61E2D;
 Tue, 28 Oct 2025 11:45:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0063C4CEE7;
 Tue, 28 Oct 2025 11:45:54 +0000 (UTC)
Date: Tue, 28 Oct 2025 11:45:52 +0000
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, Dan Nowlin <dan.nowlin@intel.com>,
 Qi Zhang <qi.z.zhang@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <aQCs8CAj5Xz0blT_@horms.kernel.org>
References: <20251027093736.3582567-1-aleksandr.loktionov@intel.com>
 <20251027093736.3582567-3-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251027093736.3582567-3-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761651956;
 bh=f3X3nfeTiWH/Xuq9DwxayFrAf/Iofm6E+bfZi4+Yh84=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kHF7eotVV9kG1byr4kGyR1WcoAmd6AAPWejWcaWcg+NM5sjKvp5nMk9Hz6mtAPBtY
 yJW7H9lMoY6XkSRzNs8XQ4s4RWwBE2d6XZtOdNEq/xhML4LbjIKdUwgx9vCYaB+lW9
 i+1R5+O8LUH5YBcR7ojjA9GAXL2SwxqPF6AUFmCEQxaHF7+r3UfvcE0z7ilJputdko
 r6wOBvGJK9r+RU1l36+pbEznp3KZxhHUdQEBHhjG+psvvO4x6q8Vx2E52C1+ozLKma
 5Lm5PeeN/toHF95kmigaW4w4irAWn5O1qyjl2Dq8xqIyM7lq/Gy7a1ZKlACwe6y0Zt
 JiiVTkuW+cFqQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=kHF7eotV
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 2/6] ice: add virtchnl
 definitions and static data for GTP RSS
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

On Mon, Oct 27, 2025 at 10:37:32AM +0100, Aleksandr Loktionov wrote:
> Add virtchnl protocol header and field definitions for advanced RSS
> configuration including GTPC, GTPU, L2TPv2, ECPRI, PPP, GRE, and IP
> fragment headers.
> 
> - Define new virtchnl protocol header types
> - Add RSS field selectors for tunnel protocols
> - Extend static mapping arrays for protocol field matching
> - Add L2TPv2 session ID and length+session ID field support
> 
> This provides the foundational definitions needed for VF RSS
> configuration of tunnel protocols.
> 
> Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Co-developed-by: Jie Wang <jie1x.wang@intel.com>
> Signed-off-by: Jie Wang <jie1x.wang@intel.com>
> Co-developed-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Co-developed-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Co-developed-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/virt/rss.c | 91 +++++++++++++++++++++++
>  include/linux/avf/virtchnl.h              | 48 ++++++++++++
>  2 files changed, 139 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/virt/rss.c b/drivers/net/ethernet/intel/ice/virt/rss.c
> index cbdbb32..71d7db6 100644
> --- a/drivers/net/ethernet/intel/ice/virt/rss.c
> +++ b/drivers/net/ethernet/intel/ice/virt/rss.c
> @@ -36,6 +36,13 @@ static const struct ice_vc_hdr_match_type ice_vc_hdr_list[] = {
>  	{VIRTCHNL_PROTO_HDR_ESP,	ICE_FLOW_SEG_HDR_ESP},
>  	{VIRTCHNL_PROTO_HDR_AH,		ICE_FLOW_SEG_HDR_AH},
>  	{VIRTCHNL_PROTO_HDR_PFCP,	ICE_FLOW_SEG_HDR_PFCP_SESSION},
> +	{VIRTCHNL_PROTO_HDR_GTPC,	ICE_FLOW_SEG_HDR_GTPC},
> +	{VIRTCHNL_PROTO_HDR_L2TPV2,	ICE_FLOW_SEG_HDR_L2TPV2},
> +	{VIRTCHNL_PROTO_HDR_PPP,	ICE_FLOW_SEG_HDR_PPP},

This patch does not compile because, amongst other things,
ICE_FLOW_SEG_HDR_PPP is not declared (here).

> +	{VIRTCHNL_PROTO_HDR_ECPRI,	ICE_FLOW_SEG_HDR_ECPRI_TP0},
> +	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,	ICE_FLOW_SEG_HDR_IPV_FRAG},
> +	{VIRTCHNL_PROTO_HDR_IPV6_EH_FRAG,	ICE_FLOW_SEG_HDR_IPV_FRAG},
> +	{VIRTCHNL_PROTO_HDR_GRE,        ICE_FLOW_SEG_HDR_GRE},
>  };
>

...
