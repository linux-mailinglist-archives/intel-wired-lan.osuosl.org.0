Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6219A24BD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 16:16:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66A2860A66;
	Thu, 17 Oct 2024 14:16:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NrYurXbnQorE; Thu, 17 Oct 2024 14:16:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A53B260A53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729174594;
	bh=9+CJjJcHaYir/8yiIjsNyaXaqIf+iWtWOMEY4MOc3p4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tTj5CYPK4eZb0KRWOTlfTBExYrOpNZ9gEnUthjAygtDHumed+2xQPyig88b3+PHwK
	 0DcxDzvirILhPk1bMZi2Q3WzewSi+4HhodSIIwsbyaBDec3DwM+TLPzzBR/vdMQgWv
	 pC1qHvRvG9NvsEARl1MHMJCulq3ZuJXC+6lM7loLw7fLgd6AtXflzt8P2IpQNC6OST
	 BTKJcKwy3dZkaW4QyfCZ6FDIJXlA3G0w0Szym73LC2d+7F3r7+qojjmdRD4xuBHr9M
	 bUaXK2tzFYA/JGSEhyov84M6K8xTRwczxjNlRJ4t/IrINBRHZelT3Lf9/0oKg+IHie
	 kxX75o0v5StzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A53B260A53;
	Thu, 17 Oct 2024 14:16:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 44A6D972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 14:16:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F385812B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 14:16:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IMcRzKSCJd8U for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 14:16:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4198980E07
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4198980E07
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4198980E07
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 14:16:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id AAE2FA440A8;
 Thu, 17 Oct 2024 14:16:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B259DC4CEC3;
 Thu, 17 Oct 2024 14:16:26 +0000 (UTC)
Date: Thu, 17 Oct 2024 15:16:24 +0100
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Yue Haibing <yuehaibing@huawei.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, vedang.patel@intel.com,
 andre.guedes@intel.com, maciej.fijalkowski@intel.com,
 jithu.joseph@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Message-ID: <20241017141624.GO1697@kernel.org>
References: <20241016105310.3500279-1-yuehaibing@huawei.com>
 <20241016185333.GL2162@kernel.org>
 <8e4ef7f6-1d7d-45dc-b26e-4d9bc37269de@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8e4ef7f6-1d7d-45dc-b26e-4d9bc37269de@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729174590;
 bh=Gjd358NdN1FC5NF7qKwHKj4oavoCBNSLL7Qo72hpwmg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iEFDhw4QSPb/UP/iSVNDln8sDERMgECcDFGfbozJO3x3fYWOcTwHktH1Uy3TSilNx
 Lfh8vIZGIdwI5sNQMzGUS2LBtAybjWYldLWUX+79J27rI+eg1aKNZVinfvTDVrBVTk
 /tdSYD2SpNSTPK32H6D8gLsU92p72IN3v/TZEXSClLKu1rGBaycEzBl1+6MsaZ2qTI
 Qaw7iE25YEG7seXmuo0c3PYZ7s5VjuLIAwzjai9VgZl+4R6DrwsNx8p2D6SfvIMJDI
 cND52m8HtNrqHT+h1CghLurFWm6PukkfadjY0rg4OwVDfVJid2tG10ClYkZcyDbcG/
 2qvzQoztLzu+Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=iEFDhw4Q
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

On Wed, Oct 16, 2024 at 04:06:34PM -0700, Jacob Keller wrote:
> 
> 
> On 10/16/2024 11:53 AM, Simon Horman wrote:
> > On Wed, Oct 16, 2024 at 06:53:10PM +0800, Yue Haibing wrote:
> >> Return NULL instead of passing to ERR_PTR while res is IGC_XDP_PASS,
> >> which is zero, this fix smatch warnings:
> >> drivers/net/ethernet/intel/igc/igc_main.c:2533
> >>  igc_xdp_run_prog() warn: passing zero to 'ERR_PTR'
> >>
> >> Fixes: 26575105d6ed ("igc: Add initial XDP support")
> >> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
> >> ---
> >>  drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> >> index 6e70bca15db1..c3d6e20c0be0 100644
> >> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> >> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> >> @@ -2530,7 +2530,7 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
> >>  	res = __igc_xdp_run_prog(adapter, prog, xdp);
> >>  
> >>  out:
> >> -	return ERR_PTR(-res);
> >> +	return res ? ERR_PTR(-res) : NULL;
> > 
> > I think this is what PTR_ERR_OR_ZERO() is for.
> 
> Not quite. PTR_ERR_OR_ZERO is intended for the case where you are
> extracting an error from a pointer. This is converting an error into a
> pointer.

Yes, silly me.

> I am not sure what is really expected here. If res is zero, shouldn't we
> be returning an skb pointer and not NULL?

Right. I think the whole point of the cited warning is that it highlights
code that is often buggy. I think I may have tried to address it in the
past, but if so unsuccessfully. In any case, I do think it would be good to
dig into this and either fix it properly (or understand why it is correct
and note that somewhere.

> 
> Why does igc_xdp_run_prog even return a sk_buff pointer at all? It never
> actually returns an skb...
> 
> This feels like the wrong fix entirely.
> 
> __igc_xdp_run_prog returns a custom value for the action, between
> IGC_XDP_PASS, IGC_XDP_TX, IGC_XDP_REDIRECT, or IGC_XDP_CONSUMED.
> 
> This function is called by igc_xdp_run_prog which converts this to a
> negative error code with the sk_buff pointer type.
> 
> All so that we can assign a value to the skb pointer in
> ice_clean_rx_irq, and check it with IS_ERR
> 
> I don't like this fix, I think we could drop the igc_xdp_run_prog
> wrapper, call __igc_xdp_run_prog directly and check its return value
> instead of this method of using an error pointer.

-- 
pw-bot: changes-requested
