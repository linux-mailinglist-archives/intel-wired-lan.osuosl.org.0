Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A7AA1505E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2025 14:20:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A029883696;
	Fri, 17 Jan 2025 13:20:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vqZhtTMH4A-Y; Fri, 17 Jan 2025 13:20:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A61580D11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737120003;
	bh=cMt7H4uJupL0n7CmNDQGQgqsD0sjSTEnlM24sJ8421I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jwiKrAe2+NgNQivCZaQlbje1NDKipNgLQCXUJ5akbjnEWN65xliRxMz495y6MJuic
	 sW39VKERpcc4sclYiXJbssQDwrNbuRpk6Ug7vKtEcnCLZ4d/emLafjw0pA5otYxlE9
	 1FYwBikGL0dzLNKPAtGZbPSMY9sWRUNv2mYBJEm0ypf/96b2FP6QsBaRYO/MZhXq+N
	 1bmieUWXLq8z/PG6bY++KMWHC0dHThec8NSewJ51aiRSMeHLXEVog7/SxyEeFj6oL7
	 d74a1gHT6OXchpp+aRu5phelFRpkgVHNIdOLDl1XzxAwoA7BZ/UAfcv16jAP7TNVGU
	 Ojyn491/lR2tw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A61580D11;
	Fri, 17 Jan 2025 13:20:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EDDBCB89
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 13:20:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA4FD8366E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 13:20:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kUKwHNjO7ZWI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jan 2025 13:20:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=wander@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8D82680D11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D82680D11
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D82680D11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 13:20:00 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-147-4YfPpel6PlyvLf1pr5dEYQ-1; Fri,
 17 Jan 2025 08:19:56 -0500
X-MC-Unique: 4YfPpel6PlyvLf1pr5dEYQ-1
X-Mimecast-MFC-AGG-ID: 4YfPpel6PlyvLf1pr5dEYQ
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 13E32195606B; Fri, 17 Jan 2025 13:19:53 +0000 (UTC)
Received: from wcosta-thinkpadt14gen4.rmtbr.csb (unknown [10.22.64.120])
 by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 9D8F719560BF; Fri, 17 Jan 2025 13:19:46 +0000 (UTC)
Date: Fri, 17 Jan 2025 10:19:44 -0300
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
Message-ID: <givxfwonfer5kgowuxuz4bezxkhri4ottnmlmh3duhan3viznb@ic5sscp2twit>
References: <20241204114229.21452-1-wander@redhat.com>
 <20250107135106.WWrtBMXY@linutronix.de>
 <taea3z7nof4szjir2azxsjtbouymqxyy4draa3hz35zbacqeeq@t3uidpha64k7>
 <20250108102532.VWnKWvoo@linutronix.de>
 <CAAq0SUnoS45Fctkzj4t4OxT=9qm9Bg8zu79=S3DUL_jcoLbC-A@mail.gmail.com>
 <20250109174512.At7ZERjU@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250109174512.At7ZERjU@linutronix.de>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1737119999;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cMt7H4uJupL0n7CmNDQGQgqsD0sjSTEnlM24sJ8421I=;
 b=KNNgW+MLqTMpvBOAajWxMhC9433O9tW+ws6RC88ScHVpaM3NDRzlJxiJjlqv6pbcbVvAI8
 ux9IDHDJ974Xufnv5ZAkT16IZav+8mhoUsHPfz7Ji9ktZ1L65mrSE0IFHlsp0/a9MjxZas
 jLANITCyL7PvQY+R1Xw+RJYB8ZfHYUk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=KNNgW+ML
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

On Thu, Jan 09, 2025 at 06:45:12PM +0100, Sebastian Andrzej Siewior wrote:
> On 2025-01-09 13:46:47 [-0300], Wander Lairson Costa wrote:
> > > If the issue is indeed the use of threaded interrupts then the fix
> > > should not be limited to be PREEMPT_RT only.
> > >
> > Although I was not aware of this scenario, the patch should work for it as well,
> > as I am forcing it to run in interrupt context. I will test it to confirm.

I tested with the stock kernel with threadirqs and the problem does show up.
Applying the patches the issue is gone.

> 
> If I remember correctly there were "ifdef preempt_rt" things in it.

That exists only to handle the case in which part in which the ISR needs to
partially run in thread context (because the piece of code calling kmalloc),
so I need an sleeping lock for that. For non-PREEMPT_RT, we don't have this
constrain.

> 
> > > > > - What causes the failure? I see you reworked into two parts to behave
> > > > >   similar to what happens without threaded interrupts. There is still no
> > > > >   explanation for it. Is there a timing limit or was there another
> > > > >   register operation which removed the mailbox message?
> > > > >
> > > >
> > > > I explained the root cause of the issue in the last commit. Maybe I should
> > > > have added the explanation to the cover letter as well.  Anyway, here is a
> > > > partial verbatim copy of it:
> > > >
> > > > "During testing of SR-IOV, Red Hat QE encountered an issue where the
> > > > ip link up command intermittently fails for the igbvf interfaces when
> > > > using the PREEMPT_RT variant. Investigation revealed that
> > > > e1000_write_posted_mbx returns an error due to the lack of an ACK
> > > > from e1000_poll_for_ack.
> > >
> > > That ACK would have come if it would poll longer?

No, the poll happens while preemption is disabled.

> > >
> > No, the service wouldn't be serviced while polling.

s/service/interrupt/. Since we can't sleep at this context, there is
no way to wait for an event.

> 
> Hmm. 


> 
> > > > The underlying issue arises from the fact that IRQs are threaded by
> > > > default under PREEMPT_RT. While the exact hardware details are not
> > > > available, it appears that the IRQ handled by igb_msix_other must
> > > > be processed before e1000_poll_for_ack times out. However,
> > > > e1000_write_posted_mbx is called with preemption disabled, leading
> > > > to a scenario where the IRQ is serviced only after the failure of
> > > > e1000_write_posted_mbx."
> > >
> > > Where is this disabled preemption coming from? This should be one of the
> > > ops.write_posted() calls, right? I've been looking around and don't see
> > > anything obvious.
> > 
> > I don't remember if I found the answer by looking at the code or by
> > looking at the ftrace flags.
> > I am currently on sick leave with covid. I can check it when I come back.
> 
> Don't worry, get better first. I'm kind of off myself. I'm not sure if I
> have the hardware needed to setup so I can look at it…
> 

The reason of why you didn't find is because the interrupt in the igb
driver is triggered inside the igbvf code. igbvf_reset() calls
spin_lock_bh() [1], although in the cases I found it was already called
with preemption disabled from process_one_work() (workqueue) and netlink_sendmsg().

Here is an ftrace log for the failure case:

kworker/-86      0...1    85.381866: function:                   igbvf_reset
kworker/-86      0...2    85.381866: function:                      e1000_reset_hw_vf
kworker/-86      0...2    85.381867: function:                         e1000_check_for_rst_vf
kworker/-86      0...2    85.381868: function:                         e1000_write_posted_mbx
kworker/-86      0...2    85.381868: function:                            e1000_write_mbx_vf
kworker/-86      0...2    85.381870: function:                            e1000_check_for_ack_vf // repeats for 2000 lines
...
kworker/-86      0.N.2    86.393782: function:                         e1000_read_posted_mbx
kworker/-86      0.N.2    86.398606: function:                      e1000_init_hw_vf
kworker/-86      0.N.2    86.398606: function:                         e1000_rar_set_vf
kworker/-86      0.N.2    86.398606: function:                            e1000_write_posted_mbx
irq/65-e-1287    0d..1    86.398609: function:             igb_msix_other
irq/65-e-1287    0d..1    86.398609: function:                igb_rd32
irq/65-e-1287    0d..2    86.398610: function:                igb_check_for_rst
irq/65-e-1287    0d..2    86.398610: function:                igb_check_for_rst_pf
irq/65-e-1287    0d..2    86.398610: function:                   igb_rd32
irq/65-e-1287    0d..2    86.398611: function:                igb_check_for_msg
irq/65-e-1287    0d..2    86.398611: function:                igb_check_for_msg_pf
irq/65-e-1287    0d..2    86.398611: function:                   igb_rd32
irq/65-e-1287    0d..2    86.398612: function:                igb_rcv_msg_from_vf
irq/65-e-1287    0d..2    86.398612: function:                   igb_read_mbx
irq/65-e-1287    0d..2    86.398612: function:                   igb_read_mbx_pf
irq/65-e-1287    0d..2    86.398612: function:                      igb_obtain_mbx_lock_pf
irq/65-e-1287    0d..2    86.398612: function:                         igb_rd32

Notice the interrupt handler only executes after e1000_write_posted()
returns. And here it is for the sucessful case:

      ip-5603    0...1  1884.710747: function:             igbvf_reset
      ip-5603    0...2  1884.710754: function:                e1000_reset_hw_vf
      ip-5603    0...2  1884.710755: function:                   e1000_check_for_rst_vf
      ip-5603    0...2  1884.710756: function:                   e1000_write_posted_mbx
      ip-5603    0...2  1884.710756: function:                      e1000_write_mbx_vf
      ip-5603    0...2  1884.710758: function:                      e1000_check_for_ack_vf
      ip-5603    0d.h2  1884.710760: function:             igb_msix_other
      ip-5603    0d.h2  1884.710760: function:                igb_rd32
      ip-5603    0d.h3  1884.710761: function:                igb_check_for_rst
      ip-5603    0d.h3  1884.710761: function:                igb_check_for_rst_pf
      ip-5603    0d.h3  1884.710761: function:                   igb_rd32
      ip-5603    0d.h3  1884.710762: function:                igb_check_for_msg
      ip-5603    0d.h3  1884.710762: function:                igb_check_for_msg_pf
      ip-5603    0d.h3  1884.710762: function:                   igb_rd32
      ip-5603    0d.h3  1884.710763: function:                igb_rcv_msg_from_vf
      ip-5603    0d.h3  1884.710763: function:                   igb_read_mbx
      ip-5603    0d.h3  1884.710763: function:                   igb_read_mbx_pf
      ip-5603    0d.h3  1884.710763: function:                      igb_obtain_mbx_lock_pf
      ip-5603    0d.h3  1884.710763: function:                         igb_rd32

The ISR executes immediately fater e1000_write_mbx_vf().

[1] https://elixir.bootlin.com/linux/v6.12.6/source/drivers/net/ethernet/intel/igbvf/netdev.c#L1522

> Sebastian
> 

