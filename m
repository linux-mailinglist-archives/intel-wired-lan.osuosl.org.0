Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CA1A05817
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2025 11:25:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22BF5403B5;
	Wed,  8 Jan 2025 10:25:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1KvmoyCCqEBE; Wed,  8 Jan 2025 10:25:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34B6A403A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736331941;
	bh=wDnajRGAKSDjhPvwubZBuXDZ5LOIoIGh7ZTlin0DXQc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TMRbvxZdcWJAgx4p0L/nmH9h6TqVMMZ6bc/DIc/Vqh6Vb0dSm9B7XljTOFrO9yQdw
	 47o+/FTcvXhbvV9sNGvNmiIJVM/gyp3v6wWYcKBQD+LVmwmYfbGGLt7AWuwKDZteMB
	 xMBh5iK0XGUiS16tw1gd72tBKZWSGzE3IK4LVRRkEUlQB8R89ZOjMbCE568sZ2dfxn
	 b31zddVzdHDECNjwedhKnGIqbLgB1kq1sXmjiFgust39xUslgc2iRoQds1xoRb4tmE
	 EzKGTRPAiHJOZD5cselFLrqXWSLOUARGuoXJZDTCyuGTHHWykHvQzrd1Z5IDrvK+M9
	 FuIfjucQs/MKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34B6A403A6;
	Wed,  8 Jan 2025 10:25:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D07477AA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 10:25:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B199E80E00
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 10:25:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zxNSBoUfu5Gc for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jan 2025 10:25:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=bigeasy@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AB39080DD5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB39080DD5
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AB39080DD5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 10:25:37 +0000 (UTC)
Date: Wed, 8 Jan 2025 11:25:32 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Wander Lairson Costa <wander@redhat.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Clark Williams <clrkwllms@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Jeff Garzik <jgarzik@redhat.com>,
 Auke Kok <auke-jan.h.kok@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:Real-time Linux (PREEMPT_RT):Keyword:PREEMPT_RT"
 <linux-rt-devel@lists.linux.dev>
Message-ID: <20250108102532.VWnKWvoo@linutronix.de>
References: <20241204114229.21452-1-wander@redhat.com>
 <20250107135106.WWrtBMXY@linutronix.de>
 <taea3z7nof4szjir2azxsjtbouymqxyy4draa3hz35zbacqeeq@t3uidpha64k7>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <taea3z7nof4szjir2azxsjtbouymqxyy4draa3hz35zbacqeeq@t3uidpha64k7>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1736331934;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wDnajRGAKSDjhPvwubZBuXDZ5LOIoIGh7ZTlin0DXQc=;
 b=fLHf7FbT3jWUtCXukcFugRf7ux0GvEBZXQ34F2GvVNuc6jEJ6rXMIk/0gbPcnh0QRsBBik
 ZH3ffOAdXx+jQw2l6IeTrNWgg4FU5MHoOEwT287dgYnqqSJWIUTD6cRPVO8UKO9Ufn9J5w
 ehxwrnAXOzEB4s0xNBLeeZ+okyETfb/JnSQV19TJaCce5Bq5qkWXtx2N/HoXaQVPExCWYd
 DUXQZDkYJeGLmv5kowwshjtQfXIdKuSNEVCe4Ous4tlx5uwjYq7uwCF4OeMMgd/JaA+Tgk
 YgLrZEhseffjCsdUyTy2iZPW94HHqYtGQXu6L9dZUOuHXkgk5UdJ8XYS5SEBxg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1736331934;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wDnajRGAKSDjhPvwubZBuXDZ5LOIoIGh7ZTlin0DXQc=;
 b=d+X1qumv8hLSPmGBE0V0HlJlSOVx7RABGGcSIKPjRWBa0lKe6iTmFw0d4lqxcYHkZ+W+MA
 ZAWAW8hRoCIhoXDg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=fLHf7FbT; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=d+X1qumv
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/4] igb: fix igb_msix_other()
 handling for PREEMPT_RT
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

On 2025-01-07 15:52:47 [-0300], Wander Lairson Costa wrote:
> On Tue, Jan 07, 2025 at 02:51:06PM +0100, Sebastian Andrzej Siewior wrote:
> > On 2024-12-04 08:42:23 [-0300], Wander Lairson Costa wrote:
> > > This is the second attempt at fixing the behavior of igb_msix_other()
> > > for PREEMPT_RT. The previous attempt [1] was reverted [2] following
> > > concerns raised by Sebastian [3].
> > > 
> > > The initial approach proposed converting vfs_lock to a raw_spinlock,
> > > a minor change intended to make it safe. However, it became evident
> > > that igb_rcv_msg_from_vf() invokes kcalloc with GFP_ATOMIC,
> > > which is unsafe in interrupt context on PREEMPT_RT systems.
> > > 
> > > To address this, the solution involves splitting igb_msg_task()
> > > into two parts:
> > > 
> > >     * One part invoked from the IRQ context.
> > >     * Another part called from the threaded interrupt handler.
> > > 
> > > To accommodate this, vfs_lock has been restructured into a double
> > > lock: a spinlock_t and a raw_spinlock_t. In the revised design:
> > > 
> > >     * igb_disable_sriov() locks both spinlocks.
> > >     * Each part of igb_msg_task() locks the appropriate spinlock for
> > >     its execution context.
> > 
> > - Is this limited to PREEMPT_RT or does it also occur on PREEMPT systems
> >   with threadirqs? And if this is PREEMPT_RT only, why?
> 
> PREEMPT systems configured to use threadirqs should be affected as well,
> although I never tested with this configuration. Honestly, until now I wasn't
> aware of the possibility of a non PREEMPT_RT kernel with threaded IRQs by default.

If the issue is indeed the use of threaded interrupts then the fix
should not be limited to be PREEMPT_RT only.

> > - What causes the failure? I see you reworked into two parts to behave
> >   similar to what happens without threaded interrupts. There is still no
> >   explanation for it. Is there a timing limit or was there another
> >   register operation which removed the mailbox message?
> > 
> 
> I explained the root cause of the issue in the last commit. Maybe I should
> have added the explanation to the cover letter as well.  Anyway, here is a
> partial verbatim copy of it:
> 
> "During testing of SR-IOV, Red Hat QE encountered an issue where the
> ip link up command intermittently fails for the igbvf interfaces when
> using the PREEMPT_RT variant. Investigation revealed that
> e1000_write_posted_mbx returns an error due to the lack of an ACK
> from e1000_poll_for_ack.

That ACK would have come if it would poll longer?

> The underlying issue arises from the fact that IRQs are threaded by
> default under PREEMPT_RT. While the exact hardware details are not
> available, it appears that the IRQ handled by igb_msix_other must
> be processed before e1000_poll_for_ack times out. However,
> e1000_write_posted_mbx is called with preemption disabled, leading
> to a scenario where the IRQ is serviced only after the failure of
> e1000_write_posted_mbx."

Where is this disabled preemption coming from? This should be one of the
ops.write_posted() calls, right? I've been looking around and don't see
anything obvious.
Couldn't you wait for an event instead of polling?

> The call chain from igb_msg_task():
> 
> igb_msg_task
> 	igb_rcv_msg_from_vf
> 		igb_set_vf_multicasts
> 			igb_set_rx_mode
> 				igb_write_mc_addr_list
> 					kmalloc
> 
> Cannot happen from interrupt context under PREEMPT_RT. So this part of
> the interrupt handler is deferred to a threaded IRQ handler.
>
> > > Cheers,
> > > Wander

Sebastian
