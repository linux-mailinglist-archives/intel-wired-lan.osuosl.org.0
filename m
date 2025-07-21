Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0408EB0C0FD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 12:12:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51107413D6;
	Mon, 21 Jul 2025 10:12:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Fu7m-a79azO; Mon, 21 Jul 2025 10:12:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AB1241406
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753092747;
	bh=kmtHsaFUkiIqNnJ4wTahJseWKq9JpafineHQ7+nq/4M=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3J0dlrt3Q3cE9BP3QCVhzyzKqbUFT9X/ALINZoYTxtR1d9JSHOLdw1ALzjHzuwoo0
	 rZRpGVy8D8c72lntV348Hsb98TrQ7DXddhE34ZuPWuAciDLI74lUnJJny7afrr9ww3
	 cltl3MKNLdGa6Jx0PgCg6DU2+VmjYiy+UFJdWXBgBsh0in509CXhiL0MzAfbulUsyt
	 u8J6RJ3kOXYKxnq3l3c8/+Efn+5KwB5qbcjdqZQkhRhwSLu7fjuBWa6Bi750gf0zVG
	 XTXWCKzfc8OByH4MUPqxlbtw4MpB0x5KUwj3z7fizAKQGzzAOKh5+LLsWYytNbASFk
	 qOagx3cwDFkSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9AB1241406;
	Mon, 21 Jul 2025 10:12:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 12D52DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 10:12:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ECBBE83D47
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 10:12:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wWY2QOVTHUet for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 10:12:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 52C4883C4D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52C4883C4D
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 52C4883C4D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 10:12:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A9D22601E8;
 Mon, 21 Jul 2025 10:12:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AC5BC4CEED;
 Mon, 21 Jul 2025 10:12:18 +0000 (UTC)
Date: Mon, 21 Jul 2025 11:12:17 +0100
From: Simon Horman <horms@kernel.org>
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
Message-ID: <20250721101217.GC2459@horms.kernel.org>
References: <20250721083343.16482-1-kerneljasonxing@gmail.com>
 <20250721083343.16482-3-kerneljasonxing@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250721083343.16482-3-kerneljasonxing@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753092743;
 bh=dH+et4IVFehAoofbz4bjXr/dEXWhL6mRUcMkBd7PQ98=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EF83KfN0RR+kBLAAoTiFCigRniZfIBmzhofNXQtSRhe0mIc+mSmwaXLpSIeKFOTrA
 mmn2x+EnoGxkQK/rmulUujuDzayGk1EYz8CbEkTMMlZscPF/p/LpkR6Oiph/tODjtl
 r/AkOmZCVFFKCmzmBPMd0dxwjdMm1XaHscvOVFYQ/QrjPKpYJMWvOLxtgc3kVm7jUZ
 IO2CT8AOBAFLJhHf4843gZASPIUT8QWci9esovDs6sXmKSY7VrC0I8xN24r2q1611n
 +H4X9So0PKaKtjBzQBYKcoOvo3At/KLZRv86DxF+2rSI8J99LitFD4/mcgYMkBS7hH
 CyswzAJMYqjOg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=EF83KfN0
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] igb: xsk: solve
 underflow of nb_pkts in zerocopy mode
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

On Mon, Jul 21, 2025 at 04:33:43PM +0800, Jason Xing wrote:
> From: Jason Xing <kernelxing@tencent.com>
> 
> There is no break time in the while() loop, so every time at the end of
> igb_xmit_zc(), underflow of nb_pkts will occur, which renders the return
> value always false. But theoretically, the result should be set after
> calling xsk_tx_peek_release_desc_batch(). We can take i40e_xmit_zc() as
> a good example.
> 
> Returning false means we're not done with transmission and we need one
> more poll, which is exactly what igb_xmit_zc() always did before this
> patch. After this patch, the return value depends on the nb_pkts value.
> Two cases might happen then:
> 1. if (nb_pkts < budget), it means we process all the possible data, so
>    return true and no more necessary poll will be triggered because of
>    this.
> 2. if (nb_pkts == budget), it means we might have more data, so return
>    false to let another poll run again.
> 
> Fixes: f8e284a02afc ("igb: Add AF_XDP zero-copy Tx support")
> Signed-off-by: Jason Xing <kernelxing@tencent.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_xsk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
> index 5cf67ba29269..243f4246fee8 100644
> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> @@ -482,7 +482,7 @@ bool igb_xmit_zc(struct igb_ring *tx_ring, struct xsk_buff_pool *xsk_pool)
>  	if (!nb_pkts)
>  		return true;
>  
> -	while (nb_pkts-- > 0) {
> +	while (i < nb_pkts) {

Hi Jason,

FWIIW, I think using a for loop is a more idiomatic way
of handling the relationship between i, nb_pkts, and
the iterations of this loop.

>  		dma = xsk_buff_raw_get_dma(xsk_pool, descs[i].addr);
>  		xsk_buff_raw_dma_sync_for_device(xsk_pool, dma, descs[i].len);
>  
> -- 
> 2.41.3
> 
> 
