Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 788699C1CF1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2024 13:28:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3ECC61187;
	Fri,  8 Nov 2024 12:28:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3AoevcTPx0Aq; Fri,  8 Nov 2024 12:28:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47AC061140
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731068916;
	bh=LMKq9rkoIyFUohSyOhYK7G5byytQGxxY6fPL4Wtg9fc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xlQxKsU/T5tYRbncELX0QCoKs9fei5Lnpw5oXN77UHNwIFRcNfyHmaWpKS6acLgXT
	 WbbpCsneZCS9R7jUmeJkIE513TlZ1M4F5NRuR5i5U9tH2O9uwr7YKHz6xsjG5+8Uco
	 nd3no0tHf7WkpndrCSFOwqdOtU+KO4QiqE6WvTxzzqhiJ+KGm4Fg7VGBL7rjNNofNz
	 Y4eOf6rxTqTDKRuVuuDtJHcBFqSG1KdqjRvajuGbyutwkMdoSDqmALD3y5m645MLNQ
	 EePkbXAzAWwGBxkaI7aV4lcUOwEY8HlhnnII2kQYKIRwR5XSs3/RZHaG1IBLe+FhLA
	 kiYv8LxtPA1vw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47AC061140;
	Fri,  8 Nov 2024 12:28:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 904FBC0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 12:28:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 70E6F61140
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 12:28:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id drArUJ545S7Z for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2024 12:28:34 +0000 (UTC)
X-Greylist: delayed 18502 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 08 Nov 2024 12:28:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B3B4660E62
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3B4660E62
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=bigeasy@linutronix.de; receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B3B4660E62
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 12:28:33 +0000 (UTC)
Date: Fri, 8 Nov 2024 13:28:29 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Wander Lairson Costa <wander@redhat.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, tglx@linutronix.de,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Clark Williams <clrkwllms@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:Real-time Linux (PREEMPT_RT):Keyword:PREEMPT_RT"
 <linux-rt-devel@lists.linux.dev>
Message-ID: <20241108122829.Dsax0PwL@linutronix.de>
References: <20241106111427.7272-1-wander@redhat.com>
 <1b0ecd28-8a59-4f06-b03e-45821143454d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1b0ecd28-8a59-4f06-b03e-45821143454d@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1731068911;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LMKq9rkoIyFUohSyOhYK7G5byytQGxxY6fPL4Wtg9fc=;
 b=vvqwxkyeETXOKX8tiQbGG+Jamzv6OxZx29ZXDDfKOspUYXrrNPmz1V9akEQbkDxvjjhete
 y7YoONWe6qSITvVLQT2YHpJnIDq0B3BP/HM3WuOsKXbGt5Q3HWSauLBV1oodOtxyIdmRKv
 SshSCD1xzV4Da9sml0NyxmQLZZtVAWcgbZbPnRgCwStaajHraqrujW4e2IkmEi2O8PvxuK
 S63aG3v5+IbqF5P8/cR4MN93eMLH+Gi5RdWGAqKi41NLTumvvg6S4xJQ0RUCyO8I0R92Lw
 MZACFP8NXJkDkBRrcq/cOmXxfqyCoM3LApbWfful2bBDHFaJNLiREPs9DB/t0g==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1731068911;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LMKq9rkoIyFUohSyOhYK7G5byytQGxxY6fPL4Wtg9fc=;
 b=wXLeRF8EToVc+MUy+lWHA4Hotrwr2ftAsmy/WbW1Am/ZdzwTBJ+ggNsAQJErKk8ZAtWugu
 H4ItCQVzXu+XBFCw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=vvqwxkye; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=wXLeRF8E
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

On 2024-11-08 13:20:28 [+0100], Przemek Kitszel wrote:
> I don't like to slow things down, but it would be great to have a Link:
> to the report, and the (minified) splat attached.

I don't have a splat, I just reviewed the original patch. Please do
delay this.

Sebastian
