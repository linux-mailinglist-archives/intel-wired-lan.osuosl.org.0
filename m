Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1556EA0499C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jan 2025 19:53:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B52C96078F;
	Tue,  7 Jan 2025 18:53:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0yefVNJi7hYJ; Tue,  7 Jan 2025 18:53:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD99E60758
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736275986;
	bh=nweBwiQ4x8uvN5jQ4KfKWDvicEgXxH48zPPJEyuktZU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ug3hOXhp3/pJxx6uJeVjt7yIgnUHvKtrKJR78xE1YXd/Egq0ViTYtyILXadxqo01W
	 6Wjtq23WIgDyqYVlOHX2s1bNDE2GC2HnhtzjINaGMVd0sxtAlvysduvYnpgu9SOR8L
	 AwKQ1DoQIDOebVkpuVUf8UKT6ZFQRk7yDkq/kWVu8CQkAMgoyLudNYSnN21ZZfE+r/
	 AwnQ3m65vLiIDLYtnj4DVEMMbF/cgVvfysvjzL5iBzghOex7jY3cPRROC7wynnaNpJ
	 R6u9gyyW9CW//phJ3dy2xfBS5tsSQbhGlb+X2RXNkKJCWgQKA3aHRg0YFycLyFjA4l
	 hLAotMJmfhykQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD99E60758;
	Tue,  7 Jan 2025 18:53:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E841D7AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 18:53:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D69ED80899
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 18:53:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gc64xItIhOlu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2025 18:53:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=wander@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EA94480529
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA94480529
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EA94480529
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 18:53:03 +0000 (UTC)
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-511-hDlqxUtJO9CBeOq_TN9zdw-1; Tue,
 07 Jan 2025 13:52:58 -0500
X-MC-Unique: hDlqxUtJO9CBeOq_TN9zdw-1
X-Mimecast-MFC-AGG-ID: hDlqxUtJO9CBeOq_TN9zdw
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id E650619560A3; Tue,  7 Jan 2025 18:52:55 +0000 (UTC)
Received: from wcosta-thinkpadt14gen4.rmtbr.csb (unknown [10.22.88.156])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with SMTP
 id 3E1C51956053; Tue,  7 Jan 2025 18:52:48 +0000 (UTC)
Date: Tue, 7 Jan 2025 15:52:47 -0300
From: Wander Lairson Costa <wander@redhat.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
 Jeff Garzik <jgarzik@redhat.com>, Auke Kok <auke-jan.h.kok@intel.com>, 
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>, 
 open list <linux-kernel@vger.kernel.org>, 
 "open list:Real-time Linux (PREEMPT_RT):Keyword:PREEMPT_RT"
 <linux-rt-devel@lists.linux.dev>
Message-ID: <taea3z7nof4szjir2azxsjtbouymqxyy4draa3hz35zbacqeeq@t3uidpha64k7>
References: <20241204114229.21452-1-wander@redhat.com>
 <20250107135106.WWrtBMXY@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250107135106.WWrtBMXY@linutronix.de>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1736275982;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nweBwiQ4x8uvN5jQ4KfKWDvicEgXxH48zPPJEyuktZU=;
 b=XgSksf8fJagTPKpXUMdh2YmIFVwk5aqCprrinSUtpiwfnvc5B+JwbjLehwCxiUw+BHYdb0
 TfzwKtbNfSOaVw+IW7WLhzLvdORBVi66aXOM3JPcmAXgmGXrEEi9c22AxeypioP9ZXDc4O
 gukCfiRb43jfypa71ozl++kowN8FYhk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=XgSksf8f
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

On Tue, Jan 07, 2025 at 02:51:06PM +0100, Sebastian Andrzej Siewior wrote:
> On 2024-12-04 08:42:23 [-0300], Wander Lairson Costa wrote:
> > This is the second attempt at fixing the behavior of igb_msix_other()
> > for PREEMPT_RT. The previous attempt [1] was reverted [2] following
> > concerns raised by Sebastian [3].
> > 
> > The initial approach proposed converting vfs_lock to a raw_spinlock,
> > a minor change intended to make it safe. However, it became evident
> > that igb_rcv_msg_from_vf() invokes kcalloc with GFP_ATOMIC,
> > which is unsafe in interrupt context on PREEMPT_RT systems.
> > 
> > To address this, the solution involves splitting igb_msg_task()
> > into two parts:
> > 
> >     * One part invoked from the IRQ context.
> >     * Another part called from the threaded interrupt handler.
> > 
> > To accommodate this, vfs_lock has been restructured into a double
> > lock: a spinlock_t and a raw_spinlock_t. In the revised design:
> > 
> >     * igb_disable_sriov() locks both spinlocks.
> >     * Each part of igb_msg_task() locks the appropriate spinlock for
> >     its execution context.
> 
> - Is this limited to PREEMPT_RT or does it also occur on PREEMPT systems
>   with threadirqs? And if this is PREEMPT_RT only, why?

PREEMPT systems configured to use threadirqs should be affected as well,
although I never tested with this configuration. Honestly, until now I wasn't
aware of the possibility of a non PREEMPT_RT kernel with threaded IRQs by default.

> 
> - What causes the failure? I see you reworked into two parts to behave
>   similar to what happens without threaded interrupts. There is still no
>   explanation for it. Is there a timing limit or was there another
>   register operation which removed the mailbox message?
> 

I explained the root cause of the issue in the last commit. Maybe I should
have added the explanation to the cover letter as well.  Anyway, here is a
partial verbatim copy of it:

"During testing of SR-IOV, Red Hat QE encountered an issue where the
ip link up command intermittently fails for the igbvf interfaces when
using the PREEMPT_RT variant. Investigation revealed that
e1000_write_posted_mbx returns an error due to the lack of an ACK
from e1000_poll_for_ack.

The underlying issue arises from the fact that IRQs are threaded by
default under PREEMPT_RT. While the exact hardware details are not
available, it appears that the IRQ handled by igb_msix_other must
be processed before e1000_poll_for_ack times out. However,
e1000_write_posted_mbx is called with preemption disabled, leading
to a scenario where the IRQ is serviced only after the failure of
e1000_write_posted_mbx."

The call chain from igb_msg_task():

igb_msg_task
	igb_rcv_msg_from_vf
		igb_set_vf_multicasts
			igb_set_rx_mode
				igb_write_mc_addr_list
					kmalloc

Cannot happen from interrupt context under PREEMPT_RT. So this part of
the interrupt handler is deferred to a threaded IRQ handler.

> > Cheers,
> > Wander
> 
> Sebastian
> 

