Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 337912D458E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Dec 2020 16:39:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E9A0386449;
	Wed,  9 Dec 2020 15:39:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dgK2mQEW1nCw; Wed,  9 Dec 2020 15:39:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6064686493;
	Wed,  9 Dec 2020 15:39:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 803C61BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 11:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7B3F787374
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 11:52:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DWqSWGzUsmu3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Dec 2020 11:52:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DCBDF8735E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 11:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607514763;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Bn51LdHRNaBLMGJFIDHKNY3UzL8ceDzRM+1UkGzDc6U=;
 b=KipTP6H6yodaqE5G3wyB7O63G7JSHwZxgOwni73HJr/c9eFPxgHjrfjXvcvVsy+tmkEFst
 Gj1XYhi5irtfVOZl/B/sJTbAIqLgew+i5RoR+3vtHuGnXjmMjsXN/AE1/9j66H6AboeaAc
 ST7z//4U6pvoKYcana2oDDJO3TiG90w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-572-Cg46o7bWOtyId69R_7_9DQ-1; Wed, 09 Dec 2020 06:52:39 -0500
X-MC-Unique: Cg46o7bWOtyId69R_7_9DQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5B9AD107ACF8;
 Wed,  9 Dec 2020 11:52:37 +0000 (UTC)
Received: from carbon (unknown [10.36.110.55])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3DA3B1002393;
 Wed,  9 Dec 2020 11:52:28 +0000 (UTC)
Date: Wed, 9 Dec 2020 12:52:23 +0100
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20201209125223.49096d50@carbon>
In-Reply-To: <20201209095454.GA36812@ranger.igk.intel.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
 <20201207230755.GB27205@ranger.igk.intel.com>
 <5fd068c75b92d_50ce20814@john-XPS-13-9370.notmuch>
 <20201209095454.GA36812@ranger.igk.intel.com>
Organization: Red Hat Inc.
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mailman-Approved-At: Wed, 09 Dec 2020 15:39:30 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 1/5] net: ethtool: add xdp
 properties flag set
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
Cc: maciejromanfijalkowski@gmail.com, andrii.nakryiko@gmail.com,
 hawk@kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org,
 Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>,
 ast@kernel.org, Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 9 Dec 2020 10:54:54 +0100
Maciej Fijalkowski <maciej.fijalkowski@intel.com> wrote:

> On Tue, Dec 08, 2020 at 10:03:51PM -0800, John Fastabend wrote:
> > > On Mon, Dec 07, 2020 at 12:52:22PM -0800, John Fastabend wrote:  
> > > > Jesper Dangaard Brouer wrote:  
> > > > > On Fri, 4 Dec 2020 16:21:08 +0100
> > > > > Daniel Borkmann <daniel@iogearbox.net> wrote:  
> > 
> > [...] pruning the thread to answer Jesper.  
> 
> I think you meant me, but thanks anyway for responding :)

I was about to say that ;-)

> > > > > 
> > > > > Use-case(2): Disable XDP_TX on a driver to save hardware TX-queue
> > > > > resources, as the use-case is only DDoS.  Today we have this problem
> > > > > with the ixgbe hardware, that cannot load XDP programs on systems with
> > > > > more than 192 CPUs.  
> > > > 
> > > > The ixgbe issues is just a bug or missing-feature in my opinion.  
> > > 
> > > Not a bug, rather HW limitation?  
> > 
> > Well hardware has some max queue limit. Likely <192 otherwise I would
> > have kept doing queue per core on up to 192. But, ideally we should  
> 
> Data sheet states its 128 Tx qs for ixgbe.

I likely remember wrong, maybe it was only ~96 CPUs.  I do remember that
some TX queue were reserved for something else, and QA reported issues
(as I don't have this high end system myself).


> > still load and either share queues across multiple cores or restirct
> > down to a subset of CPUs.  
> 
> And that's the missing piece of logic, I suppose.
> 
> > Do you need 192 cores for a 10gbps nic, probably not.  
> 
> Let's hear from Jesper :p

LOL - of-cause you don't need 192 cores.  With XDP I will claim that
you only need 2 cores (with high GHz) to forward 10gbps wirespeed small
packets.

The point is that this only works, when we avoid atomic lock operations
per packet and bulk NIC PCIe tail/doorbell.  It was actually John's
invention/design to have a dedicated TX queue per core to avoid the
atomic lock operation per packet when queuing packets to the NIC.

 10G @64B give budget of 67.2 ns (241 cycles @ 3.60GHz)
 Atomic lock operation use:[1]
 - Type:spin_lock_unlock         Per elem: 34 cycles(tsc) 9.485 ns
 - Type:spin_lock_unlock_irqsave Per elem: 61 cycles(tsc) 17.125 ns
 (And atomic can affect Inst per cycle)

But I have redesigned the ndo_xdp_xmit call to take a bulk of packets
(up-to 16) so it should not be a problem to solve this by sharing
TX-queue and talking a lock per 16 packets.  I still recommend that,
for fallback case,  you allocated a number a TX-queue and distribute
this across CPUs to avoid hitting a congested lock (above measurements
are the optimal non-congested atomic lock operation)

[1] https://github.com/netoptimizer/prototype-kernel/blob/master/kernel/lib/time_bench_sample.c

> > Yes, it requires some extra care, but should be doable
> > if someone cares enough. I gather current limitation/bug is because
> > no one has that configuration and/or has complained loud enough.  
> 
> I would say we're safe for queue per core approach for newer devices where
> we have thousands of queues to play with. Older devices combined with big
> cpu count can cause us some problems.
> 
> Wondering if drivers could have a problem when user would do something
> weird as limiting the queue count to a lower value than cpu count and then
> changing the irq affinity?

Not sure what you mean.

But for XDP RX-side we use softirq NAPI guarantee to guard against
concurrent access to our (per-cpu) data structures.

> >   
> > >   
> > > > 
> > > > I think we just document that XDP_TX consumes resources and if users
> > > > care they shouldn't use XD_TX in programs and in that case hardware
> > > > should via program discovery not allocate the resource. This seems
> > > > cleaner in my opinion then more bits for features.  
> > > 
> > > But what if I'm with some limited HW that actually has a support for XDP
> > > and I would like to utilize XDP_TX?
> > > 
> > > Not all drivers that support XDP consume Tx resources. Recently igb got
> > > support and it shares Tx queues between netstack and XDP.  
> > 
> > Makes sense to me.
> >   
> > > 
> > > I feel like we should have a sort-of best effort approach in case we
> > > stumble upon the XDP_TX in prog being loaded and query the driver if it
> > > would be able to provide the Tx resources on the current system, given
> > > that normally we tend to have a queue per core.  
> > 
> > Why do we need to query? I guess you want some indication from the
> > driver its not going to be running in the ideal NIC configuraition?
> > I guess printing a warning would be the normal way to show that. But,
> > maybe your point is you want something easier to query?  
> 
> I meant that given Jesper's example, what should we do? You don't have Tx
> resources to pull at all. Should we have a data path for that case that
> would share Tx qs between XDP/netstack? Probably not.
> 

I think ixgbe should have a fallback mode, where it allocated e.g. 32
TX-queue for XDP xmits or even just same amount as RX-queues (I think
XDP_TX and XDP_REDIRECT can share these TX-queues dedicated to XDP).
When in fallback mode a lock need to be taken (sharded across CPUs),
but ndo_xdp_xmit will bulk up-to 16 packets, so it should not matter
too much.

I do think ixgbe should output a dmesg log message, to say it is in XDP
fallback mode with X number of TX-queues.  For us QA usually collect
the dmesg output after a test run.

   
> > > 
> > > In that case igb would say yes, ixgbe would say no and prog would be
> > > rejected.  
> > 
> > I think the driver should load even if it can't meet the queue per
> > core quota. Refusing to load at all or just dropping packets on the
> > floor is not very friendly. I think we agree on that point.  
> 
> Agreed on that. But it needs some work. I can dabble on that a bit.
> 

I will really appreciate if Intel can fix this in the ixgbe driver, and
implement a fallback method.

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
