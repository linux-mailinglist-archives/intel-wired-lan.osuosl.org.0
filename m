Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FD63691BD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 14:06:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F4EF843EA;
	Fri, 23 Apr 2021 12:06:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U2lABN6twCFK; Fri, 23 Apr 2021 12:06:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06C0C843D1;
	Fri, 23 Apr 2021 12:06:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19C451BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 12:06:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 06F2B843D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 12:06:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id orYVsgm1v3LS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 12:06:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F8DA843B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 12:06:44 +0000 (UTC)
IronPort-SDR: H9NTulXL125AR4YVHexBK/KdD+rP1eLUMr5DaVM7XLIsTy7Dp66qe8WMVwFMnlUEAO157c1JYb
 c0pg0LwHxa8w==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="175542385"
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="175542385"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2021 05:06:40 -0700
IronPort-SDR: jHLdHp/7cZWAzZ1xBF+5GdsV/b6RbTdlmh/DqV+zeClSdXidxRdGp++38iezLl8Zeplu2s/KMb
 CZ2Wso0VxfkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="464302721"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga001.jf.intel.com with ESMTP; 23 Apr 2021 05:06:35 -0700
Date: Fri, 23 Apr 2021 13:51:50 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <20210423115150.GB64904@ranger.igk.intel.com>
References: <20210422052617.17267-1-kurt@linutronix.de>
 <20210422101129.GB44289@ranger.igk.intel.com> <878s59qz1b.fsf@kurt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878s59qz1b.fsf@kurt>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net v3] igb: Fix XDP with PTP enabled
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Alexei Starovoitov <ast@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Lorenzo Bianconi <lorenzo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 23, 2021 at 08:45:52AM +0200, Kurt Kanzenbach wrote:
> On Thu Apr 22 2021, Maciej Fijalkowski wrote:
> > On Thu, Apr 22, 2021 at 07:26:17AM +0200, Kurt Kanzenbach wrote:
> >> +		/* pull rx packet timestamp if available and valid */
> >> +		if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
> >> +			timestamp = igb_ptp_rx_pktstamp(rx_ring->q_vector,
> >> +							pktbuf);
> >> +
> >> +			if (timestamp) {
> >> +				pkt_offset += IGB_TS_HDR_LEN;
> >> +				size -= IGB_TS_HDR_LEN;
> >> +			}
> >> +		}
> >
> > Small nit: since this is a hot path, maybe we could omit the additional
> > branch that you're introducing above and make igb_ptp_rx_pktstamp() to
> > return either 0 for error cases and IGB_TS_HDR_LEN if timestamp was fine?
> > timestamp itself would be passed as an arg.
> >
> > So:
> > 		if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
> > 			ts_offset = igb_ptp_rx_pktstamp(rx_ring->q_vector,
> > 							pktbuf, &timestamp);
> > 			pkt_offset += ts_offset;
> > 			size -= ts_offset;
> > 		}
> >
> > Thoughts? I feel like if we see that desc has timestamp enabled then let's
> > optimize it for successful case.
> 
> Yes, this should work as well. Actually I didn't like the if statement
> either. Only one comment: It's not an offset but rather the timestamp
> header length. I'd call it 'ts_len'.

Right, sorry.

> 
> >
> >>  
> >>  		/* retrieve a buffer from the ring */
> >>  		if (!skb) {
> >> -			unsigned int offset = igb_rx_offset(rx_ring);
> >> -			unsigned char *hard_start;
> >> +			unsigned char *hard_start = pktbuf - igb_rx_offset(rx_ring);
> >> +			unsigned int offset = pkt_offset + igb_rx_offset(rx_ring);
> >
> > Probably we could do something similar in flavour of:
> > https://lore.kernel.org/bpf/20210118151318.12324-10-maciej.fijalkowski@intel.com/
> >
> > which broke XDP_REDIRECT and got fixed in:
> > https://lore.kernel.org/bpf/20210303153928.11764-2-maciej.fijalkowski@intel.com/
> >
> > You get the idea.
> 
> Yes, I do. However, I think such a change doesn't belong in this patch,
> which is a bugfix for XDP. It looks like an optimization. Should I split
> it into two patches and rather target net-next instead of net?

This was just a heads up from my side as it caught my eye. For sure it's
out of the scope of that patch, but would be good to have a follow up on
that.

> 
> Thanks for your review.
> 
> Thanks,
> Kurt


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
