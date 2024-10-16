Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEF89A11EE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2024 20:53:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A718E80D71;
	Wed, 16 Oct 2024 18:53:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bExSJbl30YIY; Wed, 16 Oct 2024 18:53:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12D1B80D6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729104824;
	bh=EXmHnXVOK4Y7EhMlf+k5z1kYxSQlAqDDVV1QsQZOm3I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EFJ8upQXQuDIRl3OH8O7+ZRk8h0ecW+g4yMnkJMz5lgpJ+pjBtuWiohXPLpSXRaFq
	 pHAm5B2YqNK8rweZrsYCUbohpUBRTI9O7nfJ7ujJSjrHDMrJGteBU29SvBLK0SQaKf
	 SfBEkhiP06R6N67vG6pNFLMNarCdt96EgCmO1TK3kJcWo+u2vlafInHMcUQI98iXVK
	 L1lrMmOUemMX0c6e4xIdP7jcXXbcZXEFZeG2yv3YdNiqQN74sEEqZKUZmIeM202gnR
	 xJwR6nGZJkP9KrCnX32W2F0xcYzp3rvj0bwb595hKzPaS4p0bFXBMBlssb2aWlRifC
	 uvV1FcnOraqzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12D1B80D6D;
	Wed, 16 Oct 2024 18:53:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 41CC6712
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 18:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F8A560639
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 18:53:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wls8YG26UZjz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 18:53:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B3C216061A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3C216061A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B3C216061A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 18:53:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 250BE5C56DA;
 Wed, 16 Oct 2024 18:53:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97651C4CEC5;
 Wed, 16 Oct 2024 18:53:35 +0000 (UTC)
Date: Wed, 16 Oct 2024 19:53:33 +0100
From: Simon Horman <horms@kernel.org>
To: Yue Haibing <yuehaibing@huawei.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, vedang.patel@intel.com,
 andre.guedes@intel.com, maciej.fijalkowski@intel.com,
 jithu.joseph@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Message-ID: <20241016185333.GL2162@kernel.org>
References: <20241016105310.3500279-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241016105310.3500279-1-yuehaibing@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729104819;
 bh=Y/Vqjn7AS4QmH95MO8AvZCxoQ6XG93780zk6JPh7v0o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aWmGtJLBhHBuC2eGL/nM5trZ/bmISrffOYX6BavdrXMmlINXDYuD7mD1Tc6pesfvQ
 dsATNy1gjXju1TWzmTfXDRxjUHZCBmo2c8I2CrNi1KwaA6Awlzvbdl8MXH1iHoPPEX
 BBaZOkz0l6JoFNo24aP9x5NjSLK8NirkDhEboWCIMzDgam8Hby11CTM4OYB/00+bp3
 L4K4o6ibNgOA8v40bJYnnZJi5mJoZ6hjL20Uv6vboGNcBA+J1CNiU/E12sVnejkNKC
 1mox9Ytacs1U8LlFVAcPtAF1qEfUReXUV42WYuqkRIxugf0FoC1nScQToQ2jrZT48i
 aHEuW0W9yHvFQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=aWmGtJLB
Subject: Re: [Intel-wired-lan] [PATCH net] igc: Fix passing 0 to ERR_PTR in
 igc_xdp_run_prog()
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

On Wed, Oct 16, 2024 at 06:53:10PM +0800, Yue Haibing wrote:
> Return NULL instead of passing to ERR_PTR while res is IGC_XDP_PASS,
> which is zero, this fix smatch warnings:
> drivers/net/ethernet/intel/igc/igc_main.c:2533
>  igc_xdp_run_prog() warn: passing zero to 'ERR_PTR'
> 
> Fixes: 26575105d6ed ("igc: Add initial XDP support")
> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 6e70bca15db1..c3d6e20c0be0 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -2530,7 +2530,7 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
>  	res = __igc_xdp_run_prog(adapter, prog, xdp);
>  
>  out:
> -	return ERR_PTR(-res);
> +	return res ? ERR_PTR(-res) : NULL;

I think this is what PTR_ERR_OR_ZERO() is for.
