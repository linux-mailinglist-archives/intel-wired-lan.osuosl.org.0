Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBD2B17F30
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Aug 2025 11:24:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20E8D41017;
	Fri,  1 Aug 2025 09:24:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nkOKOaawWpU6; Fri,  1 Aug 2025 09:24:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A24244106E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754040257;
	bh=saqpvw24vClmfSUPH829r25VpuMcYYmd/Y7GQbgkiW0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bUfN1/TrYmL++4ZW/FkQjNsCTWgDX5spc5PepwwfhAdoVj68Qoltew0wc+mqWh9Om
	 WWuh0dqKKI/ofFoeNyUMn31RQIIOmuHHFIG7nJ84B7H344wUAAeCdUcz+OXKjw5YLT
	 UVVrytvnwE6I4Ck4blMPFnfHP0WScqEHeIdY6gPwtU/p+vd1VxiUOUQYeCDP+2hOoK
	 t6Ip1A7A0cWQpaZPPQ2vThMaZA6UZ6W6BlaHrhj5gjkovVIPA0BNQSy16TpXp23GQL
	 eaBEHmeAnkVAVyk5hANgP44kggh4R6DFt7HCPevxeFide65FSDQclSm8p4IU5T459r
	 pU7Z1k7po+V5w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A24244106E;
	Fri,  1 Aug 2025 09:24:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 02A5613D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 09:24:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E86BA61B7F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 09:24:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3uW5F2h_vRZa for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Aug 2025 09:24:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5F6F960A80
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F6F960A80
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5F6F960A80
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 09:24:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id EC017A5576F;
 Fri,  1 Aug 2025 09:24:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75CC1C4CEF4;
 Fri,  1 Aug 2025 09:24:12 +0000 (UTC)
Date: Fri, 1 Aug 2025 10:24:10 +0100
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250801092410.GD14753@horms.kernel.org>
References: <20250731124533.1683307-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250731124533.1683307-1-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754040253;
 bh=ZROP4PCFq2T7DW/ZWlKWmKghuDi4tEmByvOd8mH4brA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J5C47LUKujpSv8f+oTbYNiCQiRcIF5EO61YX0RV76mOQJRwY+G5ultxJAlmz6n0Gk
 qOs3SUTpjpp7H6khGrtHX3u/Dt1Jr5s+JMPp/Nso7oN05tbmILs1kxNd3cX1gngty5
 er+FHoDWzdFJ598zC1f/CaiCG3WX6mrCLQWPyw1GSOeEl2mAqt+4Sx1SEK14IJyXhe
 dDWxRTl4wPj5GS8d0sPzB44LNsK+0cu8KePIIpeIV45sj6W+97voNuWy93k3JgVp2z
 d7tsRa6U79xXZkCnTtdngNUMzOwa0ljB94oe8gdtqVcI6uBdNTf+U2rIYIYU2fOtyk
 KYbb4REoeNTJw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=J5C47LUK
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ixgbe: fix
 ixgbe_orom_civd_info struct layout
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

On Thu, Jul 31, 2025 at 02:45:33PM +0200, Jedrzej Jagielski wrote:
> The current layout of struct ixgbe_orom_civd_info causes incorrect data
> storage due to compiler-inserted padding. This results in issues when
> writing OROM data into the structure.
> 
> Add the __packed attribute to ensure the structure layout matches the
> expected binary format without padding.
> 
> Fixes: 70db0788a262 ("ixgbe: read the OROM version information")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: use get_unaligned_le32() per Simon's suggestion

Thanks for the update.

Reviewed-by: Simon Horman <horms@kernel.org>

