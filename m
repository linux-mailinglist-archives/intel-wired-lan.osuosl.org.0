Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 982E2B28403
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Aug 2025 18:42:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B9E740D48;
	Fri, 15 Aug 2025 16:42:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RmyqdoEe0al1; Fri, 15 Aug 2025 16:42:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3A9D40D4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755276124;
	bh=SuO9hWRB2tZu87vohsl77fbUrl0oo/RQH6y79VVI59I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TlE3R7NyiUVgx6yJrH1BcYKIJ+SnRPEn4ZHaRCmxCbuHx1opOUPU1dnpR8ifCjf3j
	 UJcUxrUF95jpNDXYM8ZaW4ZBPo+IzXTmNovHh+TN7byAMlNDGBwTKURB6pJ+MC3YBO
	 mMDZcIvJT9pZ0TgBxOcMM7EnCTlKDuw1J/cHewwAQe9GZ4kZ6J7NHQLVVYmnn4nh+L
	 4kKrE4xFX6OkeB4pDA34MMAGum1mdMnHIj8yW+Oz9V/uqt1U7ThVJ/f0/2E//eUCXD
	 vBe/MPgp8DIdER6m871mnm5G/nCkZJipDcK9LebQ5a9OznI/BCf8Etjb/PtC7xIYxd
	 j2HV0TwREMY+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3A9D40D4B;
	Fri, 15 Aug 2025 16:42:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 21058196
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 16:42:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 07E0B60E41
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 16:42:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qx5gd3V4OzSe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Aug 2025 16:42:02 +0000 (UTC)
X-Greylist: delayed 30704 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 15 Aug 2025 16:42:02 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4867D60E78
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4867D60E78
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=bigeasy@linutronix.de; receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4867D60E78
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 16:42:02 +0000 (UTC)
Date: Fri, 15 Aug 2025 18:41:57 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250815164157.jIKm3gdS@linutronix.de>
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <a1e9e37e-63da-4f1c-8ac3-36e1fde2ec0a@molgen.mpg.de>
 <87y0rlm22a.fsf@jax.kurt.home>
 <ad66d19c-be7b-4df3-8e4c-d57a08782df4@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ad66d19c-be7b-4df3-8e4c-d57a08782df4@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1755276118;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SuO9hWRB2tZu87vohsl77fbUrl0oo/RQH6y79VVI59I=;
 b=jk8kTtoj0lR4im/1aitRimBk1HHrBhiokfmlw1OPnl/4eDcnsnBTFRZmlvh4fJwr6IRII7
 KbDzL1xoEaL3GT/qx5AX/4tsR522CyvqoHsoqYEVrdlxLW6f+1EzSlMddA4CEaJFg7/XMU
 HG/UiDx3R5gI9I0O1ZuHhrHLqXI+KBzlJBMB41DtGC6n7yanfbpo55f4CMkh26p+h/Z1in
 O433iMSjtJYlMdvrEXBxiSlYphug8d/yfFbiy/SfRPN6ni+ZU4pTN555RBX/GSntO6DaQw
 oHQOR/brruiWxpaALt9md0yOTCtSq1+7WCHTFJTRZY6WgTfp2QYrrEalvhZlhg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1755276118;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SuO9hWRB2tZu87vohsl77fbUrl0oo/RQH6y79VVI59I=;
 b=agMEzjxMF9CFD7nDwflH12aIGhmn+a7w+1cz2P9BbvK8f5GiYKADO4oVIfCABvQc4aVw1r
 pfsv5CRPSY/tYpAQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=jk8kTtoj; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=agMEzjxM
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igb: Retrieve Tx timestamp
 directly from interrupt
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

On 2025-08-15 14:54:16 [+0200], Paul Menzel wrote:
> > > Do you have a reproducer for the issue, so others can test.
> > 
> > Yeah, I do have a reproducer:
> > 
> >   - Run ptp4l with 40ms tx timeout (--tx_timestamp_timeout)
> >   - Run periodic RT tasks (e.g. with SCHED_FIFO 1) with run time of
> >     50-100ms per CPU core
> > 
> > This leads to sporadic error messages from ptp4l such as "increasing
> > tx_timestamp_timeout or increasing kworker priority may correct this
> > issue, but a driver bug likely causes it"
> > 
> > However, increasing the kworker priority is not an option, simply
> > because this kworker is doing non-related PTP work items as well.
> > 
> > As the time sync interrupt already signals that the Tx timestamp is
> > available, there's no need to schedule a work item in this case. I might
> > have missed something though. But my testing looked good. The warn_on
> > never triggered.
> 
> Great. Maybe add that too, as, at least for me, realtime stuff is something
> I do not do, so pointers would help me.

If you ask for an explicit reproducer that you would have to have task
that does
	struct sched_param param = { .sched_priority = 1 };
	sched_setscheduler(0, SCHED_FIFO, &param);

and let it run for to exceed the ptp4l timeout. But in general it does
not require a real time task to trigger the problem. A busy CPU with a
lot of pending worker will do the trick, too. You just need "enough" CPU
work so the scheduler puts other tasks on the CPU before the kworker,
which retrieves the timestamp, is scheduled.

> Paul

Sebastian
