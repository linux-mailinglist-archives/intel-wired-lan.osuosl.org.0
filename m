Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 333D1B12EB6
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Jul 2025 10:37:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2DF382572;
	Sun, 27 Jul 2025 08:37:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VSucfkgiMGgQ; Sun, 27 Jul 2025 08:37:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96C71826B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753605425;
	bh=rDVQbame8olUazimEVAfaT0nlqLuSMuLYSxlU/AA8+Q=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Jt6rcK/nQIXI/Nyn/BeYu2tpSNGmhe5GS2VF+eHTAJb7vVfJHg5BKew3xHvAL8cFB
	 1MvIxF12Lwvo0ZyOMYH1QF0H2ZNoSScs3Su9m/ev2ohFdp123awJY2wAYQvyH2LG93
	 VVVE9uG1uTmY0SLSpsH74zacpuq9UZkxPkiFq2XJDgnt8KETWQz1vvcR5KrZ+yG27N
	 UgqlNWPNnY7x4u+EbkwDYTl4HPSpRcSZ6xw1RnEWKC+o7mamQIou3aS/DNWknHhwxn
	 d0xEBk9bFBp1C2AQ+PRlTd4kopQk91+fMld4ljv1X41QA1L1OavJeLJYpyCDb1+b1L
	 NW8Xz64KGcrpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96C71826B0;
	Sun, 27 Jul 2025 08:37:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6322BDA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 08:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 491E360886
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 08:37:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4PEkfs5AS8Gb for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Jul 2025 08:37:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1B42F6082D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B42F6082D
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B42F6082D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 08:37:01 +0000 (UTC)
Received: from [192.168.2.202] (p5b13a0f7.dip0.t-ipconnect.de [91.19.160.247])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id CECEC61E64849;
 Sun, 27 Jul 2025 10:36:26 +0200 (CEST)
Message-ID: <a8eba276-afbf-456c-943d-36144877cfc0@molgen.mpg.de>
Date: Sun, 27 Jul 2025 10:36:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jason Xing <kerneljasonxing@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 larysa.zaremba@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
References: <20250726070356.58183-1-kerneljasonxing@gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250726070356.58183-1-kerneljasonxing@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] ixgbe: xsk: resolve the
 negative overflow of budget in ixgbe_xmit_zc
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


Thank you for the improved version.

Am 26.07.25 um 09:03 schrieb Jason Xing:
> From: Jason Xing <kernelxing@tencent.com>
> 
> Resolve the budget negative overflow which leads to returning true in
> ixgbe_xmit_zc even when the budget of descs are thoroughly consumed.
> 
> Before this patch, when the budget is decreased to zero and finishes
> sending the last allowed desc in ixgbe_xmit_zc, it will always turn back
> and enter into the while() statement to see if it should keep processing
> packets, but in the meantime it unexpectedly decreases the value again to
> 'unsigned int (0--)', namely, UINT_MAX. Finally, the ixgbe_xmit_zc returns
> true, showing 'we complete cleaning the budget'. That also means
> 'clean_complete = true' in ixgbe_poll.
> 
> The true theory behind this is if that budget number of descs are consumed,
> it implies that we might have more descs to be done. So we should return
> false in ixgbe_xmit_zc to tell napi poll to find another chance to start
> polling to handle the rest of descs. On the contrary, returning true here
> means job done and we know we finish all the possible descs this time and
> we don't intend to start a new napi poll.
> 
> It is apparently against our expectations. Please also see how
> ixgbe_clean_tx_irq() handles the problem: it uses do..while() statement
> to make sure the budget can be decreased to zero at most and the negative
> overflow never happens.
> 
> The patch adds 'likely' because we rarely would not hit the loop codition
> since the standard budget is 256.
> 
> Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> Signed-off-by: Jason Xing <kernelxing@tencent.com>
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
> Link: https://lore.kernel.org/all/20250720091123.474-3-kerneljasonxing@gmail.com/
> 1. use 'negative overflow' instead of 'underflow' (Willem)
> 2. add reviewed-by tag (Larysa)
> 3. target iwl-net branch (Larysa)
> 4. add the reason why the patch adds likely() (Larysa)
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> index ac58964b2f08..7b941505a9d0 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> @@ -398,7 +398,7 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
>   	dma_addr_t dma;
>   	u32 cmd_type;
>   
> -	while (budget-- > 0) {
> +	while (likely(budget)) {
>   		if (unlikely(!ixgbe_desc_unused(xdp_ring))) {
>   			work_done = false;
>   			break;
> @@ -433,6 +433,8 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
>   		xdp_ring->next_to_use++;
>   		if (xdp_ring->next_to_use == xdp_ring->count)
>   			xdp_ring->next_to_use = 0;
> +
> +		budget--;
>   	}
>   
>   	if (tx_desc) {

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>

Is this just the smallest fix, and the rewrite to the more idiomatic for 
loop going to be done in a follow-up?


Kind regards,

Paul
