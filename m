Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05980B310D2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 09:52:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BD9860A5F;
	Fri, 22 Aug 2025 07:52:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E8QUCkh9_BFV; Fri, 22 Aug 2025 07:52:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6DCC60A62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755849129;
	bh=3LuB0wIddnbP+4zjopaUMUbU6sgEHQXPmThsbxHG7WQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M6cphlU+W0EL4kEGwIeuByM4oAvZ5+rW7zu5oU5WjWyXJ2YTgu0D5ckxS/jy1n5dG
	 h6ekULCSIKwuMuiOmcz32BxLHyS2HIOQD2dKdXM9QEwjjgTI5JJEAOAF6ofs/vd2Wg
	 xw5NCDKmSzfXofbJt8aWUUYYyOTguofL4RByw2yr7/Iaa0gn4vapwfusepC/cnZqdq
	 NIZQ6C7pny99P5TLKWGkrVyki0fSg9YnuDflSxUC+nDjJ2EPJLDTR2ilGjCE3OOiPf
	 Bn+VSGttHkrgAJDD/zKtevvhxCyJu/OKkjKNf3ReTfAQfhN4pXTgY+tO7LDA/BybPY
	 HPBEkSbEHYRrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6DCC60A62;
	Fri, 22 Aug 2025 07:52:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C30C31C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 07:52:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A97F660A5F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 07:52:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4ttWC_cK8xIj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 07:52:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=bigeasy@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B3C3860A58
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3C3860A58
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B3C3860A58
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 07:52:06 +0000 (UTC)
Date: Fri, 22 Aug 2025 09:52:00 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <20250822075200.L8_GUnk_@linutronix.de>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1755849123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3LuB0wIddnbP+4zjopaUMUbU6sgEHQXPmThsbxHG7WQ=;
 b=qkaneJXR0AeJbNnQHzhsHKRGhvmpqJpjl6ywTM23njyBMQvjPR1f0Sktqz7VXrzDP5ACQy
 LRrzUREWYwsPxbW4zgdK51+3TmqqShveFhcNCXCrsvmZtUOucBZkA91TZ3Qq0JVpe44RRd
 iQqUWj+kJq72GayNgzQvu8GcK0JKXHHqJDfOAEVilx5NXozLpmFpOD1Tc8zIjmanlOKXqw
 DgIbDW4/FqR9Y+tEGA/wSuhl7Az5YcWO1MxnNrPwTCRonrqAthahgZlTDtNQLeYDwwbISP
 UNn9PTdoe3KTnfRNAx0c/teXFtJ+WxV3QuuEnUjRi1p/NVWlvFrYe3ybXtiNAg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1755849123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3LuB0wIddnbP+4zjopaUMUbU6sgEHQXPmThsbxHG7WQ=;
 b=y3Ny59KPPymX6RcDmJyk6NBNM+AlVWcS/5X9okbyYSna7fWunP1sU1E6kl3kyC8bnaUM+V
 PlPmd6ED/pK7SiBw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=qkaneJXR; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=y3Ny59KP
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2025-08-22 09:28:10 [+0200], Kurt Kanzenbach wrote:
> The current implementation uses schedule_work() which is executed by the
> system work queue to retrieve Tx timestamps. This increases latency and can
> lead to timeouts in case of heavy system load.
> 
> Therefore, switch to the PTP aux worker which can be prioritized and pinned
> according to use case. Tested on Intel i210.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
> Changes in v2:
> - Switch from IRQ to PTP aux worker due to NTP performance regression (Miroslav)
> - Link to v1: https://lore.kernel.org/r/20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de

For the i210 it makes sense to read it directly from IRQ avoiding the
context switch and the delay resulting for it. For the e1000_82576 it
makes sense to avoid the system workqueue and use a dedicated thread
which is not CPU bound and could prioritized/ isolated further if
needed.
I don't understand *why* reading the TS in IRQ is causing this packet
loss. This is also what the igc does and the performance improved
	afa141583d827 ("igc: Retrieve TX timestamp during interrupt handling")

and here it causes the opposite?

Sebastian
