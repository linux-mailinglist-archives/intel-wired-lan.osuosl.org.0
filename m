Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8EAB0BF7B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 10:57:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D7B561CCE;
	Mon, 21 Jul 2025 08:57:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xh8ThPtoA3mt; Mon, 21 Jul 2025 08:57:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D2C161CD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753088249;
	bh=hlYAxiYgVL3QXoXcfTichcPt8aTPoCfMbWnQALWh0T4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p8aeRYjXlWUMfm3wRaMRcGraPzAnJPi0xVexMsF+lBhLaSlbl/6k9tIrgoPDQyzns
	 VCdTajtlVrEQ/2oYxJZYHXDlYTFpq414M3/TmeapGlV8EZGpKJZ4b+WJQCXU7fx4JL
	 DVRlPm5506W0/z386B5zYYvujHFRqdIlR+1QnAopusHnDX0Rs4b/a31mBR1oeWzrdy
	 g+ia7DYULOPkm+9Nn/+a+xGl2iSHjUZI+fl3dMnb5voR1MrQowha+1hISzM0094gJW
	 +p2yoGnt2x97DedOiIwJgWCXlC33/CxCy3kx876xNLqs6u4tCmpbWffuvYXGHMcw7Y
	 hnqry/Wvsxolw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D2C161CD2;
	Mon, 21 Jul 2025 08:57:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 06BBB127
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 08:57:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EC12B83DC3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 08:57:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oCFaVKBXZVzT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 08:57:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6F73C83DB8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F73C83DB8
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F73C83DB8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 08:57:26 +0000 (UTC)
Received: from [192.168.2.202] (p5dc55eaf.dip0.t-ipconnect.de [93.197.94.175])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9118D61E64844;
 Mon, 21 Jul 2025 10:56:34 +0200 (CEST)
Message-ID: <8c9e97e4-3590-49a8-940b-717deac0078d@molgen.mpg.de>
Date: Mon, 21 Jul 2025 10:56:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jason Xing <kerneljasonxing@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com,
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
 linux-stm32@st-md-mailman.stormreply.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
References: <20250721083343.16482-1-kerneljasonxing@gmail.com>
 <20250721083343.16482-2-kerneljasonxing@gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250721083343.16482-2-kerneljasonxing@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] stmmac: xsk: fix
 underflow of budget in zerocopy mode
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

Dear Jason,


Thank you for your patch.

Am 21.07.25 um 10:33 schrieb Jason Xing:
> From: Jason Xing <kernelxing@tencent.com>
> 
> The issue can happen when the budget number of descs are consumed. As

Instead of “The issue”, I’d use “An underflow …”.

> long as the budget is decreased to zero, it will again go into
> while (budget-- > 0) statement and get decreased by one, so the
> underflow issue can happen. It will lead to returning true whereas the
> expected value should be false.

What is “it”?

> In this case where all the budget are used up, it means zc function

*is* used?

> should return false to let the poll run again because normally we
> might have more data to process.

Do you have a reproducer, you could add to the commit message?

> Fixes: 132c32ee5bc0 ("net: stmmac: Add TX via XDP zero-copy socket")
> Signed-off-by: Jason Xing <kernelxing@tencent.com>
> ---
>   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index f350a6662880..ea5541f9e9a6 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -2596,7 +2596,7 @@ static bool stmmac_xdp_xmit_zc(struct stmmac_priv *priv, u32 queue, u32 budget)
>   
>   	budget = min(budget, stmmac_tx_avail(priv, queue));
>   
> -	while (budget-- > 0) {
> +	while (budget > 0) {

So, if the while loop should not be entered with budget being 0, then 
the line could  be changed to `while (--budget > 0) {`? But then it 
wouldn’t be called for budget being 1.

A for loop might be the better choice for a loop with budget as counting 
variable?

>   		struct stmmac_metadata_request meta_req;
>   		struct xsk_tx_metadata *meta = NULL;
>   		dma_addr_t dma_addr;
> @@ -2681,6 +2681,8 @@ static bool stmmac_xdp_xmit_zc(struct stmmac_priv *priv, u32 queue, u32 budget)
>   
>   		tx_q->cur_tx = STMMAC_GET_ENTRY(tx_q->cur_tx, priv->dma_conf.dma_tx_size);
>   		entry = tx_q->cur_tx;
> +
> +		budget--;
>   	}
>   	u64_stats_update_begin(&txq_stats->napi_syncp);
>   	u64_stats_add(&txq_stats->napi.tx_set_ic_bit, tx_set_ic_bit);

Excuse my ignorance, but I do not yet see the problem that the while 
loop is entered and buffer is set to 0. Is it later the return condition?

     return !!budget && work_done;


Kind regards,

Paul
