Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9935B9C3EC2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Nov 2024 13:53:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13E98402E8;
	Mon, 11 Nov 2024 12:53:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G2ILdsHrKTyy; Mon, 11 Nov 2024 12:53:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38A04402DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731329634;
	bh=w7z8yhXRBnlRYKfyfn4Xe3Y3OGC88TCWkSEzDPuPxNQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=txA8p0/7L+ZX0BEUMWwwbkocCPImSootjOhPe13UFSuXY1tMiiYVdvKWZDtJyR7Vf
	 ghZqIfqo7x6tl3S85wul5xDukhJU1BHVmCSa5GVTSWp4q30/W834hDUAKs6TzZno66
	 MjxOq1lcDRGR1crnAPzYPHh2NEIYi/inkSZiImwGwSgZpn661JgQVC1Tspafk71F6w
	 G6IDsHvMpvJdksJfM41/ZByxU+HiB44CWCmWbweMZFXU4bRNL4+A7AiL0TLQQe6345
	 a1INGCNh2p7gbA9sfQOxcedT8drjhfCx0boT4l6oA2UQkBQmJtWeWXtzpnLGxHJhiR
	 KEcUmxjT2X3NQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38A04402DB;
	Mon, 11 Nov 2024 12:53:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E8545D8F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Nov 2024 12:53:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C2AE1402B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Nov 2024 12:53:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AUxUbfWTYrfz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Nov 2024 12:53:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=bigeasy@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5CD19402CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CD19402CD
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5CD19402CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Nov 2024 12:53:50 +0000 (UTC)
Date: Mon, 11 Nov 2024 13:53:45 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Wander Lairson Costa <wander@redhat.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, tglx@linutronix.de,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Clark Williams <clrkwllms@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Simon Horman <horms@kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:Real-time Linux (PREEMPT_RT):Keyword:PREEMPT_RT"
 <linux-rt-devel@lists.linux.dev>
Message-ID: <20241111125345.T10WlDUG@linutronix.de>
References: <20241106111427.7272-1-wander@redhat.com>
 <1b0ecd28-8a59-4f06-b03e-45821143454d@intel.com>
 <20241108122829.Dsax0PwL@linutronix.de>
 <9f3fe7f3-9309-441c-a2c8-4ee8ad51550d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <9f3fe7f3-9309-441c-a2c8-4ee8ad51550d@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1731329626;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=w7z8yhXRBnlRYKfyfn4Xe3Y3OGC88TCWkSEzDPuPxNQ=;
 b=dtv0b8+aCLwhVivvFUjFNqplSCPxGWFTtHuKMDvxFHL34tKWExWlHHNyW10RM/mrjJMI8f
 089D2TK1AQ7sdF73yWg0qz0vACWNAENLY/QEQyRYuDTnwhNjzdyGccp1zYHtp0epqFcTky
 U/Y0Q5SMvLKYQ4zAYI1SO3PKEYD2dZ4Vc3RWNarc7vJ8+OSFhOlQhTr8atuPRInTizsNdT
 hUabpL8xT/N43Yya3ER6WSfvOoBQqJjQg5zaBA+LWBysOPwA1mdxCKsKtQpTgAN7lEIVsg
 V2WPFmskshbU4nieE/3UMDrNexHbqdABCxsutrdzg3IdHiAImLC4UaFmC2vMTw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1731329626;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=w7z8yhXRBnlRYKfyfn4Xe3Y3OGC88TCWkSEzDPuPxNQ=;
 b=t5hwhBcysw6sr0uejWOPe0jN8ijZp6hxiaMi9xUsvaQ53fESoFBjWOSwjJQXUj2QkJp+lK
 w4qAM5LVRIo4O/Dg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=dtv0b8+a; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=t5hwhBcy
Subject: Re: [Intel-wired-lan] [PATCH v2 1/4] Revert "igb: Disable threaded
 IRQ for igb_msix_other"
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

On 2024-11-08 15:00:48 [-0800], Jacob Keller wrote:
> 
> 
> On 11/8/2024 4:28 AM, Sebastian Andrzej Siewior wrote:
> > On 2024-11-08 13:20:28 [+0100], Przemek Kitszel wrote:
> >> I don't like to slow things down, but it would be great to have a Link:
> >> to the report, and the (minified) splat attached.
> > 
> > I don't have a splat, I just reviewed the original patch. Please do
> > delay this.

this clearly lacks a `not'

> > Sebastian
> 
> It will definitely splat on RT kernels at some point, if there is a
> spinlock.

exactly my point.

Sebastian
