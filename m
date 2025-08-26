Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C45EBB36F15
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 17:58:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E2C080997;
	Tue, 26 Aug 2025 15:58:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8ZfNeQGOxUcD; Tue, 26 Aug 2025 15:58:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC11E80A9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756223885;
	bh=vo3QMyjE0KIgs4vwdyzGaxYHH2gs7pc1+dzmt/NhlhA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l9QF4afza+ah6QmxvOjc6146DLzzEl+ResGqSMXyJxldO1fs9EbEXUhJ6kuxPdIWh
	 gS/GwA06kcQtbyAjq6k1mguo/RO/KVXWIs1OTTFi0fB24iKi09RXqlcT0+Jn7vWQ56
	 FxT8faVlf3e2Ywg8f0MLKseqU38rLSln9eFXhJcCATPJn8q6BmdECG9r3II7xq0OEq
	 szdCuHUyhsgXkA9jWCpzBqMgTWX5CSfXjO94h2I/dFE+PRAwWsFHhK1U5iu8tweMz5
	 /DIzxO5rmSRFWfY1rxzgu0pXXA0zUh0i5z3bXomwWkCbxxybarmrdLtUFV0DhqEvcj
	 O9k9B2NTDhOJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC11E80A9F;
	Tue, 26 Aug 2025 15:58:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2868ECD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 15:58:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F543605B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 15:58:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Dr1kOdN051W for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 15:58:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 72C8F605B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72C8F605B1
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 72C8F605B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 15:58:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B3AD5439CA;
 Tue, 26 Aug 2025 15:51:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8591FC4CEF1;
 Tue, 26 Aug 2025 15:51:34 +0000 (UTC)
Date: Tue, 26 Aug 2025 16:51:31 +0100
From: Simon Horman <horms@kernel.org>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Kohei Enju <enjuk@amazon.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 kohei.enju@gmail.com
Message-ID: <20250826155131.GB5892@horms.kernel.org>
References: <20250813075206.70114-1-enjuk@amazon.com>
 <20250813075206.70114-2-enjuk@amazon.com>
 <9b44df93-acec-4416-9f32-f97d0bfaaa7b@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9b44df93-acec-4416-9f32-f97d0bfaaa7b@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756223497;
 bh=XjEHAiQqDs5s/HRQ2adlt14ljpMwMHqgW9H3L3VQpUg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OEhqFXnNyibelsZJnXJwAuS+wUdvcv+KS2qxW0e4MRKmhaugKSqqN5f9Y37HM+TMG
 aU8OJ0rbNO5UC9hZ267XpiwAuzoITTXEOfFczGXsk1/04K73p5OUR78G+Knucbmgnh
 Otrrycvt4JJnAw4022C7XAs70oyQPbDmgbJIIXszHxf8Md9udagD1kltw5bogtbSJb
 ratITwoXGpXaO/UgMglmCqBYH4X3S7wueaTzi5DOXMf9cG7yBEPzCQsM5CS5d5BVXw
 MYOj1PYXHV2rfbEfEBHzk5Thl0YkRuGTGG8WgDjPdxx5bG50QrWs+2CDD5o97d11EP
 I7Zyq240Sy2/g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=OEhqFXnN
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-next 1/2] igbvf: add
 lbtx_packets and lbtx_bytes to ethtool statistics
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

On Wed, Aug 13, 2025 at 10:18:29AM +0200, Paul Menzel wrote:
> Dear Kohei,
> 
> 
> Thank you for your patch.
> 
> Am 13.08.25 um 09:50 schrieb Kohei Enju:
> > Currently ethtool shows lbrx_packets and lbrx_bytes (Good RX
> > Packets/Octets loopback Count), but doesn't show the TX-side equivalents
> > (lbtx_packets and lbtx_bytes). Add visibility of those missing
> > statistics by adding them to ethtool statistics.
> > 
> > In addition, the order of lbrx_bytes and lbrx_packets is not consistent
> > with non-loopback statistics (rx_packets, rx_bytes). Therefore, align
> > the order by swapping positions of lbrx_bytes and lbrx_packets.
> > 
> > Tested on Intel Corporation I350 Gigabit Network Connection.
> > 
> > Before:
> >    # ethtool -S ens5 | grep -E "x_(bytes|packets)"
> >         rx_packets: 135
> >         tx_packets: 106
> >         rx_bytes: 16010
> >         tx_bytes: 12451
> >         lbrx_bytes: 1148
> >         lbrx_packets: 12
> > 
> > After:
> >    # ethtool -S ens5 | grep -E "x_(bytes|packets)"
> >         rx_packets: 748
> >         tx_packets: 304
> >         rx_bytes: 81513
> >         tx_bytes: 33698
> >         lbrx_packets: 97
> >         lbtx_packets: 109
> >         lbrx_bytes: 12090
> >         lbtx_bytes: 12401
> > 
> > Tested-by: Kohei Enju <enjuk@amazon.com>
> 
> No need to resend, but I believe, you only add a Tested-by: tag, if the
> person differs from the author/Signed-off-by: tag.

+1

> 
> > Signed-off-by: Kohei Enju <enjuk@amazon.com>
> > ---
> >   drivers/net/ethernet/intel/igbvf/ethtool.c | 4 +++-
> >   1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/igbvf/ethtool.c b/drivers/net/ethernet/intel/igbvf/ethtool.c
> > index 773895c663fd..c6defc495f13 100644
> > --- a/drivers/net/ethernet/intel/igbvf/ethtool.c
> > +++ b/drivers/net/ethernet/intel/igbvf/ethtool.c
> > @@ -30,8 +30,10 @@ static const struct igbvf_stats igbvf_gstrings_stats[] = {
> >   	{ "rx_bytes", IGBVF_STAT(stats.gorc, stats.base_gorc) },
> >   	{ "tx_bytes", IGBVF_STAT(stats.gotc, stats.base_gotc) },
> >   	{ "multicast", IGBVF_STAT(stats.mprc, stats.base_mprc) },
> > -	{ "lbrx_bytes", IGBVF_STAT(stats.gorlbc, stats.base_gorlbc) },
> >   	{ "lbrx_packets", IGBVF_STAT(stats.gprlbc, stats.base_gprlbc) },
> > +	{ "lbtx_packets", IGBVF_STAT(stats.gptlbc, stats.base_gptlbc) },
> > +	{ "lbrx_bytes", IGBVF_STAT(stats.gorlbc, stats.base_gorlbc) },
> > +	{ "lbtx_bytes", IGBVF_STAT(stats.gotlbc, stats.base_gotlbc) },
> >   	{ "tx_restart_queue", IGBVF_STAT(restart_queue, zero_base) },
> >   	{ "tx_timeout_count", IGBVF_STAT(tx_timeout_count, zero_base) },
> >   	{ "rx_long_byte_count", IGBVF_STAT(stats.gorc, stats.base_gorc) },
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>

Also +1

Reviewed-by: Simon Horman <horms@kernel.org>

