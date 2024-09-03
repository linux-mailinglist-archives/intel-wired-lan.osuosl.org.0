Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B7796A4D4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 18:49:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC13680B2E;
	Tue,  3 Sep 2024 16:49:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T6Xt_djhoIVq; Tue,  3 Sep 2024 16:49:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61C9480B30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725382192;
	bh=3KBdxxJGfDHT+ZsX7lsmaHFN11MUP0q9mNOzvT33q7A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PaYRXgsbiEy/ZcHUbeM5rnYoq0qZqO5bm8l9YBQYEep6hl2ds9SZIj8WlVn68f5H4
	 9beIEfwXP95SH7j3I29Qr/oaWRizitosc55onH2KmU1HA3syCI5gREkYk04/50MlPv
	 8fYPNS+wfdqw7BTDIE3jLBrE977aMqRTCMayOTP5cuL+twyM9aBAiUdhH9YV7o+lbt
	 +pop8QOLAXZk6Qw4ywVQKuYXLZmoOJ6xXwTO7NRmdPNIB96RlZEFU9abiQCckh0JuL
	 XzHH924ZzmbvQ9+a8TOYdf2tMLK3K5zMvD1TVqvSuDra8qq9LOcOFGwQXG9dq4HzBb
	 hLAB1s9vN10Vw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61C9480B30;
	Tue,  3 Sep 2024 16:49:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E6C91BF421
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 16:49:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5817140267
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 16:49:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bmRR_oBNt-Gr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 16:49:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CDDD04022B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDDD04022B
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CDDD04022B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 16:49:48 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1slWio-006S5l-Rz; Tue, 03 Sep 2024 18:49:38 +0200
Date: Tue, 3 Sep 2024 18:49:38 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Takamitsu Iwai <takamitz@amazon.co.jp>
Message-ID: <3ef52bb5-3289-416a-81b6-4064c49960c8@lunn.ch>
References: <87af1b9e-21c3-4c22-861a-b917b5cd82c2@lunn.ch>
 <20240903104642.75303-1-takamitz@amazon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240903104642.75303-1-takamitz@amazon.co.jp>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=3KBdxxJGfDHT+ZsX7lsmaHFN11MUP0q9mNOzvT33q7A=; b=6JoMw6aviMYKU7HqXk8exNlZro
 nqw3+22UGi5Jerd2WeXvIhsEFdj2no72cAY06r0UnEVVv7nuzemysNEPkznlyv6igwVAjhE7FHEYM
 uTm/2wPwaMl1eyH5YRYyblPwBMOZOw9HBB1nJLhkNSgEO49L9HzdN9mWP98k2gvRYr2Y=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=6JoMw6av
Subject: Re: [Intel-wired-lan] [PATCH v1 net-next] e1000e: Remove duplicated
 writel() in e1000_configure_tx/rx()
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
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Sep 03, 2024 at 07:46:42PM +0900, Takamitsu Iwai wrote:
> > Did the same sequence of read/writes happen before 0845d45e900c? Or
> > did 0845d45e900c add additional writes, not just move them around?
> 
> The sequence of read/writes happened before 0845d45e900c because the similar
> writel() exists in ew32() above the writel() moved by 0845d45e900c.
> 
> The commit 0845d45e900c moved writel() in e1000_clean_tx/rx_ring() to
> e1000_configure_tx/rx() to avoid null pointer dereference. But since the same
> writel() exists in e1000_configure_tx/rx(), we just needed to remove writel()
> from e1000_clean_rx/tx_ring().

So you have confirmed with the datsheet that the write is not needed?

As i said, this is a hardware register, not memory. Writes are not
always idempotent. It might be necessary to write it twice.

	Andrew
