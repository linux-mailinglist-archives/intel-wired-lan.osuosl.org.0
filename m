Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF94B12FC1
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Jul 2025 15:55:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3F9D611D5;
	Sun, 27 Jul 2025 13:55:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sLh55dYyKzie; Sun, 27 Jul 2025 13:55:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61BA6611F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753624507;
	bh=q6VNmzrpOUtAwwVcZCWVjbM88APx2OpL4lQ5wzU94mc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wXH0onQSRhMTfXur8tN6wPomS5R2j5ul0wyGTOM7EBfsi/bEJtEjqa8/oFrE7wcZG
	 nrxiM5q/wM6bhv4hCo0eTvTq6YvpRZ5aRm9TiKt81IJLzRBhAkHGnP3s0DDIo+EvJS
	 ahDJwZCujKkdngo/hRGX5fEnFFBMqLNTCxwCH3swQldgzVOPFlYErWFVZ/TJ75FIMb
	 1sOe5yG/Spoe4xmNoFoNtpBPxv3qCZAK9Iia4aE5Yazj2Z9c+WVb8G6GlO+EgBA0EQ
	 h+Gs1P62/5qzXm9dkaZ7HvRwrRGuH9bkEgax3jutbs2d2nvWroi3LyucM2+ufh/Khm
	 bi/h07ThQuipA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61BA6611F7;
	Sun, 27 Jul 2025 13:55:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9BB0E1BE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 13:55:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8DD336115A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 13:55:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SlwCcDY3Cved for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Jul 2025 13:55:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CCF8461181
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCF8461181
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CCF8461181
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 13:55:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 0F6FC600AE;
 Sun, 27 Jul 2025 13:55:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 953CDC4CEEB;
 Sun, 27 Jul 2025 13:54:57 +0000 (UTC)
Date: Sun, 27 Jul 2025 14:54:55 +0100
From: Simon Horman <horms@kernel.org>
To: Jason Xing <kerneljasonxing@gmail.com>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, larysa.zaremba@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Message-ID: <20250727135455.GW1367887@horms.kernel.org>
References: <20250726070356.58183-1-kerneljasonxing@gmail.com>
 <a8eba276-afbf-456c-943d-36144877cfc0@molgen.mpg.de>
 <CAL+tcoD3zwiWsrqDQp1uhegiiFnYs8jcpFVTpuacZ_c6y9-X+Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL+tcoD3zwiWsrqDQp1uhegiiFnYs8jcpFVTpuacZ_c6y9-X+Q@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753624500;
 bh=VBV63q1aoWk9I7DKDbsgbXB12D2skcqyhUP3A3Znqjg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e13o1TjofSUu2+33Rj8v98FYFPhLBRjiUPY8/M9yqAbHmHcUbDqjjINQgKotQndC8
 t8iGZZX4sYj0ayE/LhVObXpdLfRyo34AGFD2St24K6+IHY1nR+HvPcUS/QJxXiIQ9+
 mZwgOzkomias7KOsMhxQW1mkAeWGt0mzyR9gN3D5r7CqfLHI+bEKy8bdG4R4R0JG+0
 SkWszvFgQUSWvAOlWHZ4mQgLrfxVZ8zziby+51GUTBESfiO5rvTphUDP0Z8un7Rz4G
 +qzpr6SDuW1P4d8Elc352ohHZLwspazWCLpI/J41RElps+eHiSBSja9fBJcA1+riuH
 TLdIqJ5ajfL8Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=e13o1Tjo
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

On Sun, Jul 27, 2025 at 06:06:55PM +0800, Jason Xing wrote:
> Hi Paul,
> 
> On Sun, Jul 27, 2025 at 4:36 PM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
> >
> > Dear Jason,
> >
> >
> > Thank you for the improved version.
> >
> > Am 26.07.25 um 09:03 schrieb Jason Xing:
> > > From: Jason Xing <kernelxing@tencent.com>
> > >
> > > Resolve the budget negative overflow which leads to returning true in
> > > ixgbe_xmit_zc even when the budget of descs are thoroughly consumed.
> > >
> > > Before this patch, when the budget is decreased to zero and finishes
> > > sending the last allowed desc in ixgbe_xmit_zc, it will always turn back
> > > and enter into the while() statement to see if it should keep processing
> > > packets, but in the meantime it unexpectedly decreases the value again to
> > > 'unsigned int (0--)', namely, UINT_MAX. Finally, the ixgbe_xmit_zc returns
> > > true, showing 'we complete cleaning the budget'. That also means
> > > 'clean_complete = true' in ixgbe_poll.
> > >
> > > The true theory behind this is if that budget number of descs are consumed,
> > > it implies that we might have more descs to be done. So we should return
> > > false in ixgbe_xmit_zc to tell napi poll to find another chance to start
> > > polling to handle the rest of descs. On the contrary, returning true here
> > > means job done and we know we finish all the possible descs this time and
> > > we don't intend to start a new napi poll.
> > >
> > > It is apparently against our expectations. Please also see how
> > > ixgbe_clean_tx_irq() handles the problem: it uses do..while() statement
> > > to make sure the budget can be decreased to zero at most and the negative
> > > overflow never happens.
> > >
> > > The patch adds 'likely' because we rarely would not hit the loop codition
> > > since the standard budget is 256.
> > >
> > > Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> > > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > > Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > > ---
> > > Link: https://lore.kernel.org/all/20250720091123.474-3-kerneljasonxing@gmail.com/
> > > 1. use 'negative overflow' instead of 'underflow' (Willem)
> > > 2. add reviewed-by tag (Larysa)
> > > 3. target iwl-net branch (Larysa)
> > > 4. add the reason why the patch adds likely() (Larysa)
> > > ---
> > >   drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 4 +++-
> > >   1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > index ac58964b2f08..7b941505a9d0 100644
> > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > @@ -398,7 +398,7 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
> > >       dma_addr_t dma;
> > >       u32 cmd_type;
> > >
> > > -     while (budget-- > 0) {
> > > +     while (likely(budget)) {
> > >               if (unlikely(!ixgbe_desc_unused(xdp_ring))) {
> > >                       work_done = false;
> > >                       break;
> > > @@ -433,6 +433,8 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
> > >               xdp_ring->next_to_use++;
> > >               if (xdp_ring->next_to_use == xdp_ring->count)
> > >                       xdp_ring->next_to_use = 0;
> > > +
> > > +             budget--;
> > >       }
> > >
> > >       if (tx_desc) {
> >
> > Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> >
> > Is this just the smallest fix, and the rewrite to the more idiomatic for
> > loop going to be done in a follow-up?
> 
> Thanks for the review. But I'm not that sure if it's worth a follow-up
> patch. Or if anyone else also expects to see a 'for loop' version, I
> can send a V3 patch then. I have no strong opinion either way.

I think we have iterated over this enough (pun intended).
If this patch is correct then lets stick with this approach.
