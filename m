Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA36909691
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jun 2024 09:35:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7DCCA40520;
	Sat, 15 Jun 2024 07:35:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WlS1JUNNqnbW; Sat, 15 Jun 2024 07:35:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24D03404B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718436918;
	bh=YSGrvwhV9EykiHptoImmLVet3+K9lnCCUivP7LC9nCQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7HW0yn/wLgjqXbvWhhoCEK+IHjpG+Tk6mD0Ht0T6Wuiu4+fPYDtxOYVCfPTQ8ncu2
	 fvUauYXsxyGo/QIztk9PhVtXxQE5uIx6dKsVE6KHb820SZts65pm1lun1xgB26ZPDo
	 Nkn0W7fab1670b5QNQp7aJYuU8bhqOt4wIsIGweq6YvjWG1WJTNpRr6zJNtAjeK04Y
	 HoJiQ3XbK7UQo5CnnX4WRyr6UsF1xJVHGIxlZ5vKAZXCnjTMMGJXbba7CtDZCAMIqE
	 f5lyO45Yd+tDxe+IVPdK5QTeptZyAr0Qzf6ggrHyjr7I/Ep/fSYtiRwql+V/queh7o
	 sFpr1rGljnh8Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 24D03404B3;
	Sat, 15 Jun 2024 07:35:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A142C1BF30C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jun 2024 07:35:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8CEEE81678
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jun 2024 07:35:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sAzJZDflXOr2 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Jun 2024 07:35:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 839FD80C08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 839FD80C08
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 839FD80C08
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jun 2024 07:35:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B355860B50;
 Sat, 15 Jun 2024 07:35:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EDAEC116B1;
 Sat, 15 Jun 2024 07:35:11 +0000 (UTC)
Date: Sat, 15 Jun 2024 08:35:09 +0100
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240615073509.GA8447@kernel.org>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-13-aleksander.lobakin@intel.com>
 <20240601090842.GZ491852@kernel.org>
 <2c22ba85-2338-4f16-b3c2-70c4270cd96b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2c22ba85-2338-4f16-b3c2-70c4270cd96b@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718436914;
 bh=WN8+1EL5UU20JLPnEmj/YfX8PA8TXVtuZSlPbt7LRgU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PdlVeB4ShSbOhokm7RlReaIj/d08///o7evtBquGRbIY93rvTR3IUon38wSe2V/pa
 dBeBksMfLaotA+C/FuEzEvOzTQyk9vqfVVjRRtE0SNl02ehowuEtXKsrPEYAUutOZD
 Xc7tCTL1gVVg/NpEqTVScaYozOEb9mEZu9ruis3CG10FkjJFLW0C0BwONaLHTPszuF
 VwK7tvR68yWoL6bMZf8ekl2EEgUTaLSj2qnJMbeye/WCk3JLeS5CJV5zAs5E9HQRaf
 /soQUXs7CN5kOPxHJ1hCFIIf+VdnNKMC3ymnkYlioY1S/HO7ABxLB1DlNvb7o3OxS1
 kUS+qGBkKYFTQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PdlVeB4S
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 12/12] idpf: use libeth Rx
 buffer management for payload buffer
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
Cc: Mina Almasry <almasrymina@google.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 13, 2024 at 01:05:58PM +0200, Alexander Lobakin wrote:
> From: Simon Horman <horms@kernel.org>
> Date: Sat, 1 Jun 2024 10:08:42 +0100
> 
> > + Dan Carpenter
> > 
> > On Tue, May 28, 2024 at 03:48:46PM +0200, Alexander Lobakin wrote:
> >> idpf uses Page Pool for data buffers with hardcoded buffer lengths of
> >> 4k for "classic" buffers and 2k for "short" ones. This is not flexible
> >> and does not ensure optimal memory usage. Why would you need 4k buffers
> >> when the MTU is 1500?
> >> Use libeth for the data buffers and don't hardcode any buffer sizes. Let
> >> them be calculated from the MTU for "classics" and then divide the
> >> truesize by 2 for "short" ones. The memory usage is now greatly reduced
> >> and 2 buffer queues starts make sense: on frames <= 1024, you'll recycle
> >> (and resync) a page only after 4 HW writes rather than two.
> >>
> >> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > 
> > ...
> > 
> >> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > 
> > ...
> > 
> > Hi Alexander,
> > 
> > The code above the hunk below, starting at line 3321, is:
> > 
> > 		if (unlikely(!hdr_len && !skb)) {
> > 			hdr_len = idpf_rx_hsplit_wa(hdr, rx_buf, pkt_len);
> > 			pkt_len -= hdr_len;
> > 			u64_stats_update_begin(&rxq->stats_sync);
> > 			u64_stats_inc(&rxq->q_stats.hsplit_buf_ovf);
> > 			u64_stats_update_end(&rxq->stats_sync);
> > 		}
> > 		if (libeth_rx_sync_for_cpu(hdr, hdr_len)) {
> > 			skb = idpf_rx_build_skb(hdr, hdr_len);
> > 			if (!skb)
> > 				break;
> > 			u64_stats_update_begin(&rxq->stats_sync);
> > 			u64_stats_inc(&rxq->q_stats.hsplit_pkts);
> > 			u64_stats_update_end(&rxq->stats_sync);
> > 		}
> > 
> >> @@ -3413,24 +3340,24 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
> >>  		hdr->page = NULL;
> >>  
> >>  payload:
> >> -		if (pkt_len) {
> >> -			idpf_rx_sync_for_cpu(rx_buf, pkt_len);
> >> -			if (skb)
> >> -				idpf_rx_add_frag(rx_buf, skb, pkt_len);
> >> -			else
> >> -				skb = idpf_rx_construct_skb(rxq, rx_buf,
> >> -							    pkt_len);
> >> -		} else {
> >> -			idpf_rx_put_page(rx_buf);
> >> -		}
> >> +		if (!libeth_rx_sync_for_cpu(rx_buf, pkt_len))
> >> +			goto skip_data;
> >> +
> >> +		if (skb)
> >> +			idpf_rx_add_frag(rx_buf, skb, pkt_len);
> >> +		else
> >> +			skb = idpf_rx_build_skb(rx_buf, pkt_len);
> >>  
> >>  		/* exit if we failed to retrieve a buffer */
> >>  		if (!skb)
> >>  			break;
> >>  
> >> -		idpf_rx_post_buf_refill(refillq, buf_id);
> >> +skip_data:
> >> +		rx_buf->page = NULL;
> >>  
> >> +		idpf_rx_post_buf_refill(refillq, buf_id);
> >>  		IDPF_RX_BUMP_NTC(rxq, ntc);
> >> +
> >>  		/* skip if it is non EOP desc */
> >>  		if (!idpf_rx_splitq_is_eop(rx_desc))
> >>  			continue;
> > 
> > The code following this hunk, ending at line 3372, looks like this:
> > 
> > 		/* pad skb if needed (to make valid ethernet frame) */
> > 		if (eth_skb_pad(skb)) {
> > 			skb = NULL;
> > 			continue;
> > 		}
> > 		/* probably a little skewed due to removing CRC */
> > 		total_rx_bytes += skb->len;
> > 
> > Smatch warns that:
> > .../idpf_txrx.c:3372 idpf_rx_splitq_clean() error: we previously assumed 'skb' could be null (see line 3321)
> > 
> > I think, but am not sure, this is because it thinks skb might
> > be NULL at the point where "goto skip_data;" is now called above.
> > 
> > Could you look into this?
> 
> This is actually a good catch. skb indeed could be NULL and we needed to
> check that in the same condition where !eop is checked.
> Fixed already in my tree, so it will be fixed in v2. Thanks for catching!
> 
> (BTW I fixed that in iavf when submitting the libeth series, but forgot
>  to fix that here lol >_<)
> (Also, it was implicitly fixed in the later commits where I convert skb
>  to xdp_buff here, so I didn't catch this one)

Thanks, much appreciated.
As I mentioned above, I wasn't sure about this one.


