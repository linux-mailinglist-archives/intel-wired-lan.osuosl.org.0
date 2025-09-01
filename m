Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 481EBB3F0E7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 00:13:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1EB8414B6;
	Mon,  1 Sep 2025 22:13:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hvlKceGMeC8s; Mon,  1 Sep 2025 22:13:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60313414BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756764801;
	bh=iAn/M/2ucy/8Lh/WFBw3kIMvkZg2yrA5U3RNBpGf4FE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=daxj/S01yawUxJi3EXhcaHM23WNNYlf/S0NjRE8XbU2RgOIjxG2S2/3M90VCNUGdJ
	 2RaeFZ/bWKfnUK3quAjBrrBYKocARX06N72bbkwUTOhrscbY6jJ5eoSNgPDLTmpKt5
	 RgTVKtKgK3JUazXX8x9G/syxvD3EZGePNEgYvA/8i850cZffAvYtK6WvtgpmrHPYai
	 UfC4FlQIELq3+4hnlH7APRBQykw8/XSRpVHJtQXkzK8CbXbgEIn40Tc87QdjQWpkBi
	 iHZzEftOsAR/pe9twbV2/tvxcZ/kOZGNPeZI8E5flMiM85jN76ssUzraNMP1Kjfi8s
	 k77vieLS4qiUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60313414BA;
	Mon,  1 Sep 2025 22:13:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A972CD2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 22:13:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E53840B1A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 22:13:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Qllaxp-IUFG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Sep 2025 22:13:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.188;
 helo=out-188.mta1.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9069740B1B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9069740B1B
Received: from out-188.mta1.migadu.com (out-188.mta1.migadu.com
 [95.215.58.188])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9069740B1B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 22:13:18 +0000 (UTC)
Message-ID: <e13abc99-fb35-4bc4-b110-9ddfa8cdb442@linux.dev>
Date: Mon, 1 Sep 2025 23:13:05 +0100
MIME-Version: 1.0
To: Brahmajit Das <listout@listout.xyz>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, kuba@kernel.org
References: <20250901213100.3799820-1-listout@listout.xyz>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250901213100.3799820-1-listout@listout.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1756764795;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iAn/M/2ucy/8Lh/WFBw3kIMvkZg2yrA5U3RNBpGf4FE=;
 b=WnjL1/ItZhqaTB0PEP7mrbcPFRjcmo8EezPjX3VC2Al1+490dkK6EQvoxQ+wI2vE757tT4
 7UM94bu4scxY7QSY67gKOvY+/6aYw3CU4bdfYGrC14n+ROCg5zjRWcLcZx6fKXyPcDPT6s
 fDeIJOfphiHa4PHwGjTjxgVFgRGLtkg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=WnjL1/It
Subject: Re: [Intel-wired-lan] [PATCH] net: intel: fm10k: Fix parameter idx
 set but not used
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

On 01/09/2025 22:31, Brahmajit Das wrote:
> Variable idx is set in the loop, but is never used resulting in dead
> code. Building with GCC 16, which enables
> -Werror=unused-but-set-parameter= by default results in build error.
> This patch removes the dead code and fixes the build error.
> 
> Signed-off-by: Brahmajit Das <listout@listout.xyz>
> ---
>   drivers/net/ethernet/intel/fm10k/fm10k_common.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_common.c b/drivers/net/ethernet/intel/fm10k/fm10k_common.c
> index f51a63fca513..2fcbbd5accc2 100644
> --- a/drivers/net/ethernet/intel/fm10k/fm10k_common.c
> +++ b/drivers/net/ethernet/intel/fm10k/fm10k_common.c
> @@ -457,7 +457,7 @@ void fm10k_unbind_hw_stats_q(struct fm10k_hw_stats_q *q, u32 idx, u32 count)
>   {
>   	u32 i;
>   
> -	for (i = 0; i < count; i++, idx++, q++) {
> +	for (i = 0; i < count; i++, q++) {
>   		q->rx_stats_idx = 0;
>   		q->tx_stats_idx = 0;
>   	}

All callers to this function provide constant 0 as idx param. The better
solution would be to remove the parameter completely.
