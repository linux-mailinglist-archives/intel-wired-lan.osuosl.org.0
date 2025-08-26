Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D41B0B36050
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 14:59:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F1C96F8CC;
	Tue, 26 Aug 2025 12:59:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kSQrBCs7ulAB; Tue, 26 Aug 2025 12:59:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D5C86F7D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756213161;
	bh=MPc1xQ3MG9F8V4FvVInAEdZJbomL1gv6VNdFmefEsRA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sxCrZS3vgEE8gV9ajRz4GEv++o4n5LVyBBHOCJYoNvIuFLyz9o0+VVY/cUjS0TSJD
	 hInbFb7hJvj9wtblTzfLec1zU0aHGoVdvDBwQNrKVajskKl05ayY0PZMfRKNejUbUp
	 /4opsWeHMauVRVNvft11UBg+Ff746rB37ULPAMqV68tPUdexy+y3wOHsxk/FN34atw
	 eGVbbjNZHqT9l0h8xq906hmlIwLnpQ9WKiXEZa/y/GV/3fSP+G3ryr/h+gWwrjLq7F
	 cTjubFeBkFfFe59T7X0LIP5c6CF9K7OH9cpfAxXmybSHONmWMxwnz5HbdTjBjxLP/p
	 yFKPqOEFpZ5CA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D5C86F7D3;
	Tue, 26 Aug 2025 12:59:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 67ED6CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 12:59:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E9FD41298
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 12:59:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XZmcsctyhCvw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 12:59:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=bigeasy@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9B3C940CC2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B3C940CC2
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9B3C940CC2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 12:59:19 +0000 (UTC)
Date: Tue, 26 Aug 2025 14:59:12 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20250826125912.q0OhVCZJ@linutronix.de>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de>
 <87ldna7axr.fsf@jax.kurt.home>
 <02d40de4-5447-45bf-b839-f22a8f062388@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <02d40de4-5447-45bf-b839-f22a8f062388@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1756213155;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=MPc1xQ3MG9F8V4FvVInAEdZJbomL1gv6VNdFmefEsRA=;
 b=M9vhwE/+EXdNr5po3h6bwj/jPS5CcELKATe9TkamzTdl8MoUWC+UX0eqKmHdU6LKb54utp
 cm1+d9wiQjIuHXbZSZhzL4P13j1M4be2Q+tVw5RPzsmkzgwAJKMcqVp1cFOsMq53HE4Ve6
 b6STfFBnGXSXJv6IQf+jbWYL1EfRfRth+sngAc2DvOVzm9hmKlLyldkmE4TG2eemCSOT6I
 9ZXxc3N7bqHgrmJxbTyg1ihGIu+O33ZBV4vkrGYRZHL4DSd4YaHq50mzMiXpffk7yY+Gz1
 IWFZuhXvdlsM5eXazJlZRYjAOqYTzZABspEbQcop4Jw9FKTQ+Qaf1AsUPHzvSQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1756213155;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=MPc1xQ3MG9F8V4FvVInAEdZJbomL1gv6VNdFmefEsRA=;
 b=1tuaFlXAmr7mfqnmj3swHVz+vSwSFM6qmSV+2tcjOkPGrxmZWGlh68qlM+DK+5DqB1rL0r
 mmw2pL7TCzlmScCw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=M9vhwE/+; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=1tuaFlXA
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
 Kurt Kanzenbach <kurt@linutronix.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2025-08-25 16:28:38 [-0700], Jacob Keller wrote:
> Ya, I don't think we fully understand either. Miroslav said he tested on
> I350 which is a different MAC from the I210, so it could be something
> there. Theoretically we could handle just I210 directly in the interrupt
> and leave the other variants to the kworker.. but I don't know how much
> benefit we get from that. The data sheet for the I350 appears to have
> more or less the same logic for Tx timestamps. It is significantly
> different for Rx timestamps though.

From logical point of view it makes sense to retrieve the HW timestamp
immediately when it becomes available and feed it to the stack. I can't
imagine how delaying it to yet another thread improves the situation.
The benchmark is about > 1k packets/ second while in reality you have
less than 20 packets a second. With multiple applications you usually
need a "second timestamp register" or you may lose packets.

Delaying it to the AUX worker makes sense for hardware which can't fire
an interrupt and polling is the only option left. This is sane in this
case but I don't like this solution as some kind compromise for
everyone. Simply because it adds overhead and requires additional
configuration.

> > Also I couldn't really see a performance degradation with ntpperf. In my
> > tests the IRQ variant reached an equal or higher rate. But sometimes I
> > get 'Could not send requests at rate X'. No idea what that means.
> > 
> > Anyway, this patch is basically a compromise. It works for Miroslav and
> > my use case.
> > 
> >> This is also what the igc does and the performance improved
> >> 	afa141583d827 ("igc: Retrieve TX timestamp during interrupt handling")
> >>
> 
> igc supports several hardware variations which are all a lot similar to
> i210 than i350 is to i210 in igb. I could see this working fine for i210
> if it works fine in igb.. I honestly am at a loss currently why i350 is
> much worse.
>
> >> and here it causes the opposite?
> > 
> > As said above, I'm out of ideas here.
> > 
> 
> Same. It may be one of those things where the effort to dig up precisely
> what has gone wrong is so large that it becomes not feasible relative to
> the gain :(

Could we please use the direct retrieval/ submission for HW which
supports it and fallback to the AUX worker (instead of the kworker) for
HW which does not have an interrupt for it?

> > Thanks,
> > Kurt

Sebastian
