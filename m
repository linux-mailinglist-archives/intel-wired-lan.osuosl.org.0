Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17ACD731C1B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 17:02:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D9E741961;
	Thu, 15 Jun 2023 15:02:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D9E741961
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686841357;
	bh=BaEE4qC7l5fKb6WiQUsV5P4gawDZ56+p9pPneeHgfTQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RKAx81P9CoG0bOPE4vILoE4HjZdK+TjOirxcZ39M5UMt0uvs4Uom47oFYFfrBcpkp
	 Y8reYFsFEo61hGjMr65SDIRP0b9OEt31fXdB44ma9Sph5ts/H90+LS6WrBfs7ffpS2
	 hHrOCH6FKS6HrWOLH5sfZHUD2YXKon8qBHJTKq/3Bj2ssUxPWMsJ8e8H164iYSIG8i
	 Fb6gi7hpeng8QmMSJtGJs9bgoYZXhDGUzxVm+nbUsH/4aY9qfKtHQd77N2tblPG5Od
	 g9OPVziuPwPrrq6ymXUXphRiSYRcCS6P/85xyuNFKFzYtZAYdNPzabZwCkLLQllL36
	 9ID4h42VenCDA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jrWaItLWLOBR; Thu, 15 Jun 2023 15:02:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F10541938;
	Thu, 15 Jun 2023 15:02:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F10541938
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C28581BF276
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 11:27:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B18740549
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 11:27:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B18740549
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yZQ0Gn08YvkF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 11:27:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFE01403AA
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DFE01403AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 11:27:55 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C6209626B2;
 Thu, 15 Jun 2023 11:27:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1756C433C0;
 Thu, 15 Jun 2023 11:27:50 +0000 (UTC)
Date: Thu, 15 Jun 2023 13:27:47 +0200
From: Simon Horman <horms@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <ZIr1s6KHVGh/ZuEj@kernel.org>
References: <20230615-igc-err-ptr-v1-1-a17145eb8d62@kernel.org>
 <ZIrgEVVQfvJwneLx@boxer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZIrgEVVQfvJwneLx@boxer>
X-Mailman-Approved-At: Thu, 15 Jun 2023 15:02:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1686828474;
 bh=U9pbntIrNXfG7wu+B1aeTFIpvtosIyr2h3tcLbTgri8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i+umpez4rTb0T0Gfhbn1Qo6jRT/lDlcLnZC7hndaemOrDSx8FT43ipPhAi8TbNSlz
 ko/kbrXg7ZgjMbc3Ww0yJSQS4654qIk6cQm5XGz7rrslKJxFEmXmUqRzE+G7GuH7po
 UpVW4AgzAIxJPPiEbyrzMb5QSBY14r0vC2PNNuUsiaXpOr8pt6aDnPBmLE7GSmiyp8
 rLDmXJajhvT70ygSb91xjfZeA2s1JwPjvJrxZMdcaGNUKUwcXHyKrRfPXq7XhrUUNk
 wucQFjr76cOeHQd03uhwET/usUzGdIi2SIthQpUbPuhz+wSYEbplMPm9euq3gUc9SJ
 UKcwpzQ/mOLVw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=i+umpez4
Subject: Re: [Intel-wired-lan] [PATCH RFC net] igc: Avoid dereference of
 ptr_err in igc_clean_rx_irq()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Andre Guedes <andre.guedes@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jithu Joseph <jithu.joseph@intel.com>,
 intel-wired-lan@lists.osuosl.org, John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vedang Patel <vedang.patel@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 15, 2023 at 11:55:29AM +0200, Maciej Fijalkowski wrote:
> On Thu, Jun 15, 2023 at 11:45:36AM +0200, Simon Horman wrote:

Hi Marciej,

> Hi Simon,
> 
> > In igc_clean_rx_irq() the result of a call to igc_xdp_run_prog() is assigned
> > to the skb local variable. This may be an ERR_PTR.
> > 
> > A little later the following is executed, which seems to be a
> > possible dereference of an ERR_PTR.
> > 
> > 	total_bytes += skb->len;
> > 
> > Avoid this problem by continuing the loop in which all of the
> > above occurs once the handling of the NULL case completes.
> > 
> > This proposed fix is speculative - I do not have deep knowledge of this
> > driver.  And I am concerned about the effect of skipping the following
> > logic:
> > 
> >   igc_put_rx_buffer(rx_ring, rx_buffer, rx_buffer_pgcnt);
> >   cleaned_count++;
> 
> this will break - you have to recycle the buffer to have it going.

Thanks. As I said I wasn't sure about the fix: it was a strawman.

> > Flagged by Smatch as:
> > 
> >   .../igc_main.c:2467 igc_xdp_run_prog() warn: passing zero to 'ERR_PTR'
> 
> how about PTR_ERR_OR_ZERO() ? this would silence smatch and is not an
> intrusive change. another way is to get rid of ERR_PTR() around skb/xdp
> run result but i think the former would be just fine.

Sorry, there were two warnings. And I accidently trimmed the one
that is more relevant instead of the one that is less relevant.
I do agree the one above does not appear to be a bug.

But I am concerned abut this one:

  .../igc_main.c:2618 igc_clean_rx_irq() error: 'skb' dereferencing possible ERR_PTR()

If skb is an error pointer, e.g. ERR_PTR(-IGC_XDP_PASS), and
it is dereferenced, that would be a problem, right?

Perhaps I'm missing something obvious and this can't occur.
But it does seem possible to me.

> 
> > 
> > Compile tested only.
> > 
> > Fixes: 26575105d6ed ("igc: Add initial XDP support")
> > Signed-off-by: Simon Horman <horms@kernel.org>
> > ---
> >  drivers/net/ethernet/intel/igc/igc_main.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> > index 88145c30c919..b58c8a674bd1 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -2586,6 +2586,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
> >  
> >  			total_packets++;
> >  			total_bytes += size;
> > +			continue;
> >  		} else if (skb)
> >  			igc_add_rx_frag(rx_ring, rx_buffer, skb, size);
> >  		else if (ring_uses_build_skb(rx_ring))
> > 
> > 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
