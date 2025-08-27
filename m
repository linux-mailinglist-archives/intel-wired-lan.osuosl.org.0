Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EF6B3847C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 16:10:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D280A60E13;
	Wed, 27 Aug 2025 14:10:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BhCWv7h8Hq9w; Wed, 27 Aug 2025 14:10:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5ED6C60BDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756303855;
	bh=Y1/rB36gFRz4cGhzwVkpuf1gnit+WsPGgV7ZUSfXYlQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P3QVhlu9jLqnZXkT73HiX9nwcdZzAV2gU9fBIVYu6ItH6G0Z+2NQn24LBoE9ZAUgm
	 lAGATDXYtyZuSuIpvMcRIrsT4V9/+5NHsXN2WWPDATPeYUhbFjLaoZ7K2+K6I6lqzg
	 U95kQp9R4JVMi1LZ2elSY3X0DQmg809vLbeWk3aN6Po042BWxc73aE51eOrkTy9Vo3
	 D8+v6z5jkTLjkekgaVxCWm4F5gzW8OjwRK8iaz0nQCQAQgtjOFeDJCzd0+7rkxsgpi
	 JdSuSJGHe69ndkvCx6J7OAZg2xXTydrxd+6aFlhSprqKkrG85cmTD0zdHsvjK50RUL
	 7RB2ArhYpzf/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5ED6C60BDB;
	Wed, 27 Aug 2025 14:10:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 41FF6B8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 27557811FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:10:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id clVL7zrT6YR2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 14:10:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=bigeasy@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 65439811F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65439811F9
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 65439811F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:10:53 +0000 (UTC)
Date: Wed, 27 Aug 2025 16:10:47 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Miroslav Lichvar <mlichvar@redhat.com>
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250827141047.H_n5FMzY@linutronix.de>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de>
 <87ldna7axr.fsf@jax.kurt.home>
 <02d40de4-5447-45bf-b839-f22a8f062388@intel.com>
 <20250826125912.q0OhVCZJ@linutronix.de>
 <aK8OrXDsZclpSQzF@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aK8OrXDsZclpSQzF@localhost>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1756303849;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Y1/rB36gFRz4cGhzwVkpuf1gnit+WsPGgV7ZUSfXYlQ=;
 b=jv2w2fcLRUeeqildzoVNn9P1lzXx9cze3i9Y45mv8LPoir3FsafXsViwFO6kGZQbGXPy2w
 ekYv7VCmE3yX4LyUCAPWyJ0hyH0kRKcN0JaeicnUeyFJvWyXrqvIB7aAr+/QpQgErc6sKD
 GpfbmOrQiQakQPq+YhZyBoMdEUathcp2q6614ASavFhygC9kbHJWwehE17dC/gCSqcANhH
 1BsqsCmcP47dyT1rcbfCr4DzbTk2NSTQuN1M2wspiQ4llSJqOJDKTYkxgYIqQaZ41zLUTz
 1Fr4KqFYL2KNIdjPkViaQvBOkShCXsVhEMu2umM67u/RNDQRvnWSR3WsrWX8yw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1756303850;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Y1/rB36gFRz4cGhzwVkpuf1gnit+WsPGgV7ZUSfXYlQ=;
 b=bPgclxatJ1QrCdAS+TVvNgo5bkUBCdpCjmgm/i8Ly/gBLuBHL5UupaQ3egaj+aqK6k9DYo
 24OXid91KGppigBg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=jv2w2fcL; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=bPgclxat
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
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

On 2025-08-27 15:57:01 [+0200], Miroslav Lichvar wrote:
> On Tue, Aug 26, 2025 at 02:59:12PM +0200, Sebastian Andrzej Siewior wrote:
> > The benchmark is about > 1k packets/ second while in reality you have
> > less than 20 packets a second.
> 
> I don't want to argue about which use case is more important, but it's
> normal for NTP servers to receive requests at much higher rates than
> that. In some countries, public servers get hundreds of thousands of
> packets per second. A server in a local network may have clients
> polling 128 times per second each.

There might be a misunderstanding here. You can't receive 1k packets a
second and each one with a HW timestamp for PTP. This does not work.
SW timestamps more likely.

> Anyway, if anyone is still interested in finding out the cause of
> the regression, there is a thing I forgot to mention for the
> reproducer using ntpperf. chronyd needs to be configured with a larger
> clientloglimit (e.g. clientloglimit 100000000), otherwise it won't be
> able to respond to the large number of clients in interleaved mode
> with a HW TX timestamp. The chronyc serverstats report would show
> that. It should look like the outputs I posted here before.

How does this work with HW timestamps vs SW? I can't believe that 1k
packets are sent and all of them receive a HW timestamp.

Sebastian
