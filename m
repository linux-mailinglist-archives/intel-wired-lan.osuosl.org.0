Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D2D8A525E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Apr 2024 15:54:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2E715409B5;
	Mon, 15 Apr 2024 13:54:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A5058zaDK6Rh; Mon, 15 Apr 2024 13:54:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39D0240ADE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713189256;
	bh=7/WZq/8bAV2ty7aVrpMWCn0oCl0hHcOFIFP+E3T3NoA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TVSgNT3IDYKVc+6aoOACLGvBFKY3dO4qpuoX+XlEeMWl1DMY27lL4VQHDfuOq+san
	 5NS6Ef+Yop7Oibg2GG/XxRVj/EW0F0VullkJMUBVsSpEq5tmVKPxmOHt8HuF34fUE3
	 TwEVX4+ymFOJo0eJE3cG5XsNmdqHU4471ky1f6y3t8ZyD+6OiPAmjTyOTdAW9hEOki
	 0Oga2QA44Z1EGLTWTDT7LIeecMmeMpmBxiTqZaKD2ba9nD0xJ/MvGJ7TtMHn3KQcUs
	 ya06v8vZ3rs6mx9zY5C2WCz+QpfWZoAEEsW9KUvbN+Tv6wHYJxvCKyu0xaeNEuWqaq
	 0KEEnzTf7aU3w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 39D0240ADE;
	Mon, 15 Apr 2024 13:54:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 461AC1BF285
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 13:54:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F95480ED9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 13:54:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XRUhGRU595-x for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Apr 2024 13:54:12 +0000 (UTC)
Received-SPF: Pass (sender SPF authorized) identity=helo;
 client-ip=2a01:37:1000::53df:5f64:0; helo=bmailout1.hostsharing.net;
 envelope-from=foo00@h08.hostsharing.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6310980EAD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6310980EAD
Received: from bmailout1.hostsharing.net (bmailout1.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f64:0])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6310980EAD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 13:54:12 +0000 (UTC)
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
 by bmailout1.hostsharing.net (Postfix) with ESMTPS id 5801A300037E5;
 Mon, 15 Apr 2024 15:54:10 +0200 (CEST)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
 id 32D6E1BD9B; Mon, 15 Apr 2024 15:54:10 +0200 (CEST)
Date: Mon, 15 Apr 2024 15:54:10 +0200
From: Lukas Wunner <lukas@wunner.de>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <Zh0xguaCQB-V8ckO@wunner.de>
References: <20240411-igc_led_deadlock-v1-1-0da98a3c68c5@linutronix.de>
 <Zhubjkscu9HPgUcA@wunner.de> <877ch0b901.fsf@kurt.kurt.home>
 <87zftukhxl.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87zftukhxl.fsf@kurt.kurt.home>
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wunner.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Fix deadlock on module
 removal
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
Cc: Andrew Lunn <andrew@lunn.ch>, Sasha Neftin <sasha.neftin@intel.com>,
 Roman Lozko <lozko.roma@gmail.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 15, 2024 at 01:02:14PM +0200, Kurt Kanzenbach wrote:
> > > I would have been happy to submit a patch myself, I was waiting
> > > for a Tested-by from Roman or you.
> >
> > Perfect. I was wondering why you are not submitting the patch
> > yourself. Then, please go ahead and submit the patch. Feel free to add
> > my Tested-by.
> 
> Scratch that. I've sent v2 with your SoB. PTAL, because your original
> code snippet didn't have a SoB.
> 
> https://lore.kernel.org/netdev/20240411-igc_led_deadlock-v2-1-b758c0c88b2b@linutronix.de/

I created a patch yesterday, as you've requested, then waited for 0-day
to crunch through it and report success.  Which it just did, so here's
my proposal and I guess maintainers now have more than enough options
to choose from:

https://lore.kernel.org/netdev/2f1be6b1cf2b3346929b0049f2ac7d7d79acb5c9.1713188539.git.lukas@wunner.de/

Thanks,

Lukas
