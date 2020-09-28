Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5092527B0E3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 17:25:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F40A836A9;
	Mon, 28 Sep 2020 15:25:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TtH-K8HT982p; Mon, 28 Sep 2020 15:25:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D2F8284C36;
	Mon, 28 Sep 2020 15:25:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED4691BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 15:25:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D8066204A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 15:25:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CHJ0YBEq0Mjp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 15:25:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by silver.osuosl.org (Postfix) with ESMTPS id 7C8F620460
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 15:25:20 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601306719;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2Z3LDaOJB556mNdnYqLMmB/vOKHZUuSYoVPJERvS9AY=;
 b=Bnkcv1jkot97kBjwFpynMBHU4lzKDgLjtClUwtxKvW1Gd0LSUhlfEMrCuCvWS58tmxqVrW
 7LU0rcALbW+LMjProooZ9EX7vpDawNRspbVE02slC9nfflJArYnvaH9n6ftzQwFs72Sqsi
 UzWCmQA5KfMQc5k1OlXc1pYd2Ih2QN4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-27-PbjdKbOMOPqHw65r-iHUTg-1; Mon, 28 Sep 2020 11:25:00 -0400
X-MC-Unique: PbjdKbOMOPqHw65r-iHUTg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E467E1005513;
 Mon, 28 Sep 2020 15:24:58 +0000 (UTC)
Received: from carbon (unknown [10.36.110.30])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8FC765576E;
 Mon, 28 Sep 2020 15:24:50 +0000 (UTC)
Date: Mon, 28 Sep 2020 17:24:49 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: David Ahern <dsahern@gmail.com>, Sven Auhagen
 <sven.auhagen@voleatech.de>, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <20200928172449.50a3e755@carbon>
In-Reply-To: <5f7f5056-d1de-737b-2d76-cd37e4a4db8e@gmail.com>
References: <CANDGNvbX+BwA_ZUmw2rxH5FGLFsCVH33Tw3RCk3e3Qo69J+4qw@mail.gmail.com>
 <87lfh7fkqs.fsf@toke.dk>
 <CANDGNvbY=8XEJP=S3e+5V2RU6u0zjRE3YDo62bhV-Qaje=++2A@mail.gmail.com>
 <5f7f5056-d1de-737b-2d76-cd37e4a4db8e@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: Re: [Intel-wired-lan] bpf_redirect and xdpgeneric
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
Cc: xdp-newbies@vger.kernel.org,
 Toke =?UTF-8?B?SMO4aWxhbmQt?= =?UTF-8?B?SsO4cmdlbnNlbg==?=
 <toke@redhat.com>, ThomasPtacek@gmail.com, brouer@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 18 Sep 2020 14:27:45 -0600
David Ahern <dsahern@gmail.com> wrote:

> On 9/18/20 12:42 PM, Thomas Ptacek wrote:
> > The setup is pretty simple. There's an eno1 (igb driver), to which our
> > default route points. On the same box are several VMs. There's a tap
> > interface (for each VM, call it tapX). Traffic for a VM flows in from
> > the Internet on eno1 and is directed to tapX; the response traffic
> > flows in the other direction.
> > 
> > I'm deliberately simplifying here:
> > 
> > eno1 runs an XDP program that does some lightweight IP rewriting from
> > anycast addresses to internal VM addresses on ingress. eno1's XDP
> > program currently XDP_PASS's rewritten packets to the IP stack, where
> > they're routed to the VM's tap. This works fine.
> > 
> > tapX runs an XDP program that does the same rewriting in reverse.
> > Right now, it also XDP_PASS's packets to the stack, which also works
> > --- the stack routes response traffic out eno1.
> > 
> > I'm playing with XDP_REDIRECT'ing instead of XDP_PASS'ing.
> > 
> > I have the ifindexes and MAC addresses (and those of IP neighbors) in
> > a map --- a normal HASH map, not a DEVMAP. Using that map, I can
> > successfully redirect traffic from tapX to arbitrary other tap
> > interfaces. What I can't do is redirect packets from tapX to eno1,
> > which is what the system actually needs to do.
> >   
> 
> XDP_REDIRECT sends the packet to a devices ndo_xdp_xmit function. tap
> implements it hence eno1 -> tap works; igb does not meaning tap -> eno1
> fails.

There is clearly a real-life use-case for adding native-XDP support for
igb driver.  Sven (cc) have implemented this (v6[1]), but something is
causing this patch to not move forward, what is stalling Intel maintainers?

To Thomas, you could try out the patch[2] and report back if it works
for you?  (I think it will help moving patch forward...)

[1] https://lore.kernel.org/netdev/20200902054509.23jbv5fyj3otziq2@svensmacbookair.sven.lan/
[2] http://patchwork.ozlabs.org/project/netdev/patch/20200902054509.23jbv5fyj3otziq2@svensmacbookair.sven.lan/
-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
