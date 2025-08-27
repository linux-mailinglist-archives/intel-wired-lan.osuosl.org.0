Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E26B3823F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 14:27:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F26E760D4F;
	Wed, 27 Aug 2025 12:27:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id agzkK54iUC_R; Wed, 27 Aug 2025 12:27:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DEB260B8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756297641;
	bh=HROsz58CAng/MwgRoyNjLHnm1N4IV8UAZOPCdM9tmLQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6fwAt74UW5rOi/yhEtLY4KCo/SKrKyYk2G+TYZRc7J874S2GFh1VZu/ZzRJ0nnbtt
	 1yqcISG2I2qj1zvymwga7JYJ5Hz6Hqw0BRyCp75CM4C+vgkY9ta5rsaZgajhFkiTw2
	 M5uPhdMNhHgWnyxnTMoIypURRiGlLSy6uKsPEpde11QNZcDYLslxAg3ZS90OcRCdR3
	 RpKcSpJWDEF3j4jzrA2CTeLrOPE93OlOKRQ1ozVosBaalt7TbfP3Prs8YyMUf+0rBc
	 wT+WHzHgzpnK6ytT2G61LgOrqdax7bnt6rZM594CbN5TUZfoCzOyl36h0xh1txHyja
	 KRAdibqW63EoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DEB260B8C;
	Wed, 27 Aug 2025 12:27:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 64F41B8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 12:27:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4AC06404AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 12:27:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j78C-2kARHQT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 12:27:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BC7B840355
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC7B840355
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC7B840355
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 12:27:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 14E1360267;
 Wed, 27 Aug 2025 12:27:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A949C4CEEB;
 Wed, 27 Aug 2025 12:27:14 +0000 (UTC)
Date: Wed, 27 Aug 2025 13:27:12 +0100
From: Simon Horman <horms@kernel.org>
To: Kohei Enju <enjuk@amazon.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 kohei.enju@gmail.com, Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <20250827122712.GA1063@horms.kernel.org>
References: <20250818151902.64979-4-enjuk@amazon.com>
 <20250818151902.64979-5-enjuk@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250818151902.64979-5-enjuk@amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756297637;
 bh=fl4z7PN1ePnizUpqZSWphJeM1YqqPrxngBZ54KduYL4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H6cZ5VYKjRSj1gzKSvqD3MRGFfbztClbAA86vZqAXTF7ZzgH11BO+VkeLxsDILGcY
 VEVS+0nPeOpB/pBOQhE3sP91eOEcd6goccHDyOnHjoPYuxeLVBtclS1cuMOi2JaBxY
 EihZvq6sWvEdVGOQeIJfzJh12eN8tBY9BeZG5wMQ7JSk2lvwgycOuodUG2NdZwWF8Y
 tqVOeFdCorpEbERaAGhPINJLVFGP4vdeD5jhUJfTqc8AIkBua5iwdJ+v4t74d3K0/s
 R731u1sonuxCXjZZCkhVsjYqOVQC0y/w2V0PZxCKP3gfMxACsZ8N+RNXyj3nRmETf/
 Y5mRtRB13x/XA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=H6cZ5VYK
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/2] igbvf: add
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

On Tue, Aug 19, 2025 at 12:18:26AM +0900, Kohei Enju wrote:
> Currently ethtool shows lbrx_packets and lbrx_bytes (Good RX
> Packets/Octets loopback Count), but doesn't show the TX-side equivalents
> (lbtx_packets and lbtx_bytes). Add visibility of those missing
> statistics by adding them to ethtool statistics.
> 
> In addition, the order of lbrx_bytes and lbrx_packets is not consistent
> with non-loopback statistics (rx_packets, rx_bytes). Therefore,
> align the order by swapping positions of lbrx_bytes and lbrx_packets.
> 
> Tested on Intel Corporation I350 Gigabit Network Connection.
> 
> Before:
>   # ethtool -S ens5 | grep -E "x_(bytes|packets)"
>        rx_packets: 135
>        tx_packets: 106
>        rx_bytes: 16010
>        tx_bytes: 12451
>        lbrx_bytes: 1148
>        lbrx_packets: 12
> 
> After:
>   # ethtool -S ens5 | grep -E "x_(bytes|packets)"
>        rx_packets: 748
>        tx_packets: 304
>        rx_bytes: 81513
>        tx_bytes: 33698
>        lbrx_packets: 97
>        lbtx_packets: 109
>        lbrx_bytes: 12090
>        lbtx_bytes: 12401
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Kohei Enju <enjuk@amazon.com>

Reviewed-by: Simon Horman <horms@kernel.org>

