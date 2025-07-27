Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A732BB12FFB
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Jul 2025 16:47:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5494040E54;
	Sun, 27 Jul 2025 14:47:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CaOoJTcULpAr; Sun, 27 Jul 2025 14:47:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B6BA40DBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753627656;
	bh=TV8h+JtSDWFhLg4gcTmbsoFnl4A1V9vt3AmAu/mhsd4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QjUxmaGAkQcTx0oab/VuSqUTqEI/NfEidniV7xw63Um9XBwoxjYM4XQWKn7S5lO9E
	 iyJ8ov8jhoT9t8k3VRriExJFNZ6dOeEaOE82bz4PNcHvzckb/ETb9STuLglNW7p3Y2
	 HYe/gaWsWzM43VxVBD5Y285C2VgQRZUuXip2TsX7PnmOdmvz7XH92ADExCmebkHfOY
	 Fy+DHmhHkSxEaXFsolg9uh69lvHB5Nc9JAu9VnwG6ZdIAsitO8IjU9z9P9tddQ21N1
	 C8Xxhbbj48jp89TCJyi/B26V9o/7fZvmOtpEO9sE69SIH7M2+a1y8DmuIXryLEu2vB
	 F5bhTmAbV4GlA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B6BA40DBF;
	Sun, 27 Jul 2025 14:47:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 06A08231
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 14:47:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E155F407FA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 14:47:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4AxR2VLF-gmC for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Jul 2025 14:47:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CB44D40D8C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB44D40D8C
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CB44D40D8C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 14:47:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 76B07A54478;
 Sun, 27 Jul 2025 14:47:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5ED6BC4CEEB;
 Sun, 27 Jul 2025 14:47:29 +0000 (UTC)
Date: Sun, 27 Jul 2025 15:47:27 +0100
From: Simon Horman <horms@kernel.org>
To: Jason Xing <kerneljasonxing@gmail.com>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, larysa.zaremba@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Message-ID: <20250727144727.GY1367887@horms.kernel.org>
References: <20250726070356.58183-1-kerneljasonxing@gmail.com>
 <a8eba276-afbf-456c-943d-36144877cfc0@molgen.mpg.de>
 <CAL+tcoD3zwiWsrqDQp1uhegiiFnYs8jcpFVTpuacZ_c6y9-X+Q@mail.gmail.com>
 <20250727135455.GW1367887@horms.kernel.org>
 <CAL+tcoBUKmt5mCq4coLkbqT5Ehb+V6NFDcjOErg_8AYHG4fgcg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL+tcoBUKmt5mCq4coLkbqT5Ehb+V6NFDcjOErg_8AYHG4fgcg@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753627652;
 bh=qERj7svUyfRmSz0skHDB6WOw//9NG3XK0/7JHhL5ej8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MeUvHq/5XaTAmVz2TBwWQOcHno/7Cdqcv4YRsesaIYXnF88Q5Ke02RpU78Mb8RWmr
 7PnjNBtozMUJZLvefUk6GCmOlfKEU4xF32eQDNayj3COrUDtm/tvUAFv3OPSYmc9rz
 WC9+qA3RS3C/F1mkWGOTzbRUsnY3mKjjeyG9aR2+sw98J2xbOfB3+KXR60BYiSIEWI
 vjZuYgnFvt1YP+s+n+NHL3cnXiOpKab6jgi1BvSwys6OZHxsGY5JVx+D+IPEHWz0QI
 OmKnJARRRJlnFKknctseqKvSqanrlV5J1IIVh2tlV1s1X+YrtbRmiVgO7kR5ndO76N
 VEwNf2gjE0pBQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=MeUvHq/5
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

On Sun, Jul 27, 2025 at 10:16:10PM +0800, Jason Xing wrote:
> Hi Simon,
> 
> On Sun, Jul 27, 2025 at 9:55 PM Simon Horman <horms@kernel.org> wrote:
> >
> > On Sun, Jul 27, 2025 at 06:06:55PM +0800, Jason Xing wrote:
> > > Hi Paul,
> > >
> > > On Sun, Jul 27, 2025 at 4:36 PM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
> > > >
> > > > Dear Jason,
> > > >
> > > >
> > > > Thank you for the improved version.
> > > >
> > > > Am 26.07.25 um 09:03 schrieb Jason Xing:
> > > > > From: Jason Xing <kernelxing@tencent.com>
> > > > >
> > > > > Resolve the budget negative overflow which leads to returning true in
> > > > > ixgbe_xmit_zc even when the budget of descs are thoroughly consumed.
> > > > >
> > > > > Before this patch, when the budget is decreased to zero and finishes
> > > > > sending the last allowed desc in ixgbe_xmit_zc, it will always turn back
> > > > > and enter into the while() statement to see if it should keep processing
> > > > > packets, but in the meantime it unexpectedly decreases the value again to
> > > > > 'unsigned int (0--)', namely, UINT_MAX. Finally, the ixgbe_xmit_zc returns
> > > > > true, showing 'we complete cleaning the budget'. That also means
> > > > > 'clean_complete = true' in ixgbe_poll.
> > > > >
> > > > > The true theory behind this is if that budget number of descs are consumed,
> > > > > it implies that we might have more descs to be done. So we should return
> > > > > false in ixgbe_xmit_zc to tell napi poll to find another chance to start
> > > > > polling to handle the rest of descs. On the contrary, returning true here
> > > > > means job done and we know we finish all the possible descs this time and
> > > > > we don't intend to start a new napi poll.
> > > > >
> > > > > It is apparently against our expectations. Please also see how
> > > > > ixgbe_clean_tx_irq() handles the problem: it uses do..while() statement
> > > > > to make sure the budget can be decreased to zero at most and the negative
> > > > > overflow never happens.
> > > > >
> > > > > The patch adds 'likely' because we rarely would not hit the loop codition
> > > > > since the standard budget is 256.
> > > > >
> > > > > Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> > > > > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > > > > Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > > > > ---
> > > > > Link: https://lore.kernel.org/all/20250720091123.474-3-kerneljasonxing@gmail.com/
> > > > > 1. use 'negative overflow' instead of 'underflow' (Willem)
> > > > > 2. add reviewed-by tag (Larysa)
> > > > > 3. target iwl-net branch (Larysa)
> > > > > 4. add the reason why the patch adds likely() (Larysa)
> > > > > ---
> > > > >   drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 4 +++-
> > > > >   1 file changed, 3 insertions(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > > > index ac58964b2f08..7b941505a9d0 100644
> > > > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > > > @@ -398,7 +398,7 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
> > > > >       dma_addr_t dma;
> > > > >       u32 cmd_type;
> > > > >
> > > > > -     while (budget-- > 0) {
> > > > > +     while (likely(budget)) {
> > > > >               if (unlikely(!ixgbe_desc_unused(xdp_ring))) {
> > > > >                       work_done = false;
> > > > >                       break;
> > > > > @@ -433,6 +433,8 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
> > > > >               xdp_ring->next_to_use++;
> > > > >               if (xdp_ring->next_to_use == xdp_ring->count)
> > > > >                       xdp_ring->next_to_use = 0;
> > > > > +
> > > > > +             budget--;
> > > > >       }
> > > > >
> > > > >       if (tx_desc) {
> > > >
> > > > Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> > > >
> > > > Is this just the smallest fix, and the rewrite to the more idiomatic for
> > > > loop going to be done in a follow-up?
> > >
> > > Thanks for the review. But I'm not that sure if it's worth a follow-up
> > > patch. Or if anyone else also expects to see a 'for loop' version, I
> > > can send a V3 patch then. I have no strong opinion either way.
> >
> > I think we have iterated over this enough (pun intended).
> 
> Hhh, interesting.
> 
> > If this patch is correct then lets stick with this approach.
> 
> No problem. Tomorrow I will send the 'for loop' version :)

I meant, I think the while loop is fine.
But anything that is correct is fine by me :)
