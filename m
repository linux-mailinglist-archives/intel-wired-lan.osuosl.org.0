Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76148B39E89
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 15:18:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 150028350A;
	Thu, 28 Aug 2025 13:18:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JAfhywafGMg3; Thu, 28 Aug 2025 13:18:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6ED778352B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756387136;
	bh=7ry9En1+c5A+U28mpyuIa4te1ntjO/Ol6s1tDM1CUBU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yPS3yI9NOFcKrgzLeR1mqiuezPxZMcu+nExvwt7OQ1WjlecGNNUyPltRmGTDfLiEI
	 QCcEai2DWSXV/IUy6Lmvy+Ce2vnDWF3+3ytcW+sxW6YS463WqJPSNhFhAZNAFkJgyb
	 DupevaFU+nYCdc0BCJgfhMhnthkkt9+1scDNYz1nEAFSpKiCZF+W9UoHdbr+AYeTBs
	 Pu2btI3X2IIawXbn1VB36n65uGbo5GISNgZ03ugw94K3+t/e78MTbyW+heTGlRZtSy
	 KOPUOkhgrQOFdoM8rGUPj8OV0dN61kaYHPOnD8xQkNdfYy0Ds2InaAUEgT6TPmw7Er
	 HtOreqFhBqiHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6ED778352B;
	Thu, 28 Aug 2025 13:18:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 134A4B8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 13:18:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0536C40D89
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 13:18:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6idJwyzD_6Sp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 13:18:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.182;
 helo=out-182.mta1.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BC36940CFB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC36940CFB
Received: from out-182.mta1.migadu.com (out-182.mta1.migadu.com
 [95.215.58.182])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC36940CFB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 13:18:53 +0000 (UTC)
Message-ID: <29cbde11-b7bc-4eba-a0ea-b20e4a9ecb79@linux.dev>
Date: Thu, 28 Aug 2025 14:18:38 +0100
MIME-Version: 1.0
To: Ranganath V N <vnranganath.20@gmail.com>, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com
Cc: linux-kernel-mentees@lists.linuxfoundation.org,
 skhan@linuxfoundation.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, edumazet@google.com
References: <20250828114209.12020-1-vnranganath.20@gmail.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250828114209.12020-1-vnranganath.20@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1756387126;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7ry9En1+c5A+U28mpyuIa4te1ntjO/Ol6s1tDM1CUBU=;
 b=p4x69p4L4rEm652q4nL6TBN+nI7ENQuX3ucJYGokT1ZfNGL3WYg1pluOS5LMmx9hgcNFCT
 c+/Hi2rvg/r5wtKbbV0LOn1OhHMj/rRxYnp72V7OR5AawUjTPLOG2XDaFUkFCRcUCw8mEk
 JmYk7oY+tcoJ1bAFqnbVlc6SCqxpZIY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=p4x69p4L
Subject: Re: [Intel-wired-lan] [PATCH] net: igb: expose rx_dropped via
 ethtool -S
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

On 28/08/2025 12:42, Ranganath V N wrote:
> Currently the igb driver does not reports RX dropped
> packets in the ethtool -S statistics output, even though
> this information is already available in struct
> rtnl_link_stats64.
> 
> This patch adds rx_dropped, so users can monitor dropped
> packet counts directly with ethtool.
> 
> Signed-off-by: Ranganath V N <vnranganath.20@gmail.com>
> ---
>   drivers/net/ethernet/intel/igb/igb_ethtool.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index 92ef33459aec..3c6289e80ba0 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -81,6 +81,7 @@ static const struct igb_stats igb_gstrings_stats[] = {
>   }
>   static const struct igb_stats igb_gstrings_net_stats[] = {
>   	IGB_NETDEV_STAT(rx_errors),
> +	IGB_NETDEV_STAT(rx_dropped),
>   	IGB_NETDEV_STAT(tx_errors),
>   	IGB_NETDEV_STAT(tx_dropped),
>   	IGB_NETDEV_STAT(rx_length_errors),

This stat is never used in the igb driver, what's the benefit of
constant 0 value in the output?
