Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2789AB3A760
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 19:13:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9A7383D5A;
	Thu, 28 Aug 2025 17:13:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XCVSFNo63ox1; Thu, 28 Aug 2025 17:13:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B55A83D51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756401235;
	bh=dhP1ls2QQ0fq5bbkWZYJ+vOup8VSZkvCrFBL60rQKAw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e8E9qf/VoIou0AHCcL/UWwSv6AM9ep1idffrHskROl1tHpWJjkIhvaNYPA6KfYQBq
	 ZBY4lOC45oN5Hd2K/W5d0n5CUwCU1dmhB2Jn1pfBay8Jl0HIVKvGnMAnAleaGiBBhz
	 9bHLWLWjRbcRIgygahn70eQlfN3cTOGVBAtMkSmej8//BLWUUaHN3rFgGpSwo+UkPQ
	 KQaApSuuuerz1llQWGxrUaVMDUsOzyKcuf/sH89AEb8+/0fCeue26EAX9pUzZt1PCu
	 j8UPnMcsF7v/3O99cWa852JSNweg28nXDRQCR0lwmKzge4rEl+WnvONCvdjVDeS0YJ
	 xOeUGDwEx4gyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B55A83D51;
	Thu, 28 Aug 2025 17:13:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 08F4E17D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 17:13:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E393F60DEC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 17:13:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gyx1Ctf5W0CR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 17:13:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 61D5A60610
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61D5A60610
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 61D5A60610
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 17:13:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A9E90441A1;
 Thu, 28 Aug 2025 17:13:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FAD8C4CEEB;
 Thu, 28 Aug 2025 17:13:50 +0000 (UTC)
Date: Thu, 28 Aug 2025 18:13:47 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250828171347.GC31759@horms.kernel.org>
References: <20250827185338.1943489-1-aleksandr.loktionov@intel.com>
 <20250827185338.1943489-6-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250827185338.1943489-6-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756401231;
 bh=ABcHVBvetar4+CQuBoP+z4v1K9+yhwTD3xNRdLwXNNg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dIpLehisJjYx0Lj/McQSPOg5WYFlFmtpuGDn6+A9rLzJSTmXLwBvNz1ht4cak3Ces
 eJiQPBnLt45hTqXneaVCvn5I9WhGpj3uMTq3qGRyvJIvreuNlvP3U6Q4zMGkRD9R4V
 0yc5vojg0u0NfLJAENDz9HF5769lmhs3tlzNDxSPdr2+Y1fhe/7xKDRS/uHgYJSCSB
 BVSPNks7YVwnPbWQKKBprQcRXHl+v5qCdnq+BEnoCnehCCcKzFieGzbl5IQkJrxxeS
 InKlBOjbmAujqnfY9le3a/9bpldAkPgSg+CqeouNLrTo+5DNH0GExxNacWvhD9XxsY
 N5AXs4je+OAQw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=dIpLehis
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 5/5] iavf: add RSS support
 for GTP protocol via ethtool
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
Cc: anthony.l.nguyen@intel.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 27, 2025 at 06:53:38PM +0000, Aleksandr Loktionov wrote:
> Extend the iavf driver to support Receive Side Scaling (RSS)
> configuration for GTP (GPRS Tunneling Protocol) flows using ethtool.
> 
> The implementation introduces new RSS flow segment headers and hash field
> definitions for various GTP encapsulations, including:
> 
>   - GTPC
>   - GTPU (IP, Extension Header, Uplink, Downlink)
>   - TEID-based hashing
> 
> The ethtool interface is updated to parse and apply these new flow types
> and hash fields, enabling fine-grained traffic distribution for GTP-based
> mobile workloads.
> 
> This enhancement improves performance and scalability for virtualized
> network functions (VNFs) and user plane functions (UPFs) in 5G and LTE
> deployments.
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

> ---
>  .../net/ethernet/intel/iavf/iavf_adv_rss.c    | 119 ++++++++++++++----
>  .../net/ethernet/intel/iavf/iavf_adv_rss.h    |  31 +++++
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    |  89 +++++++++++++
>  3 files changed, 216 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c

...

> @@ -211,6 +274,16 @@ iavf_print_adv_rss_cfg(struct iavf_adapter *adapter, struct iavf_adv_rss *rss,
>  			 IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT |
>  			 IAVF_ADV_RSS_HASH_FLD_SCTP_DST_PORT))
>  		strcat(hash_opt, "dst port,");
> +	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_GTPC_TEID | IAVF_ADV_RSS_HASH_FLD_GTPC_TEID))

nit: Perhaps this is an artifact of development.
     But IAVF_ADV_RSS_HASH_FLD_GTPC_TEID seems to repeated on
     the line above without effect.

Flagged by Coccinelle.

> +		strcat(hash_opt, "gtp-c,");
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_GTPU_IP_TEID)
> +		strcat(hash_opt, "gtp-u ip,");
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_GTPU_EH_TEID)
> +		strcat(hash_opt, "gtp-u ext,");
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_GTPU_UP_TEID)
> +		strcat(hash_opt, "gtp-u ul,");
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_GTPU_DWN_TEID)
> +		strcat(hash_opt, "gtp-u dl,");
>  
>  	if (!action)
>  		action = "";

...

