Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B2F8C7E07
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 23:30:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4ABD541DB8;
	Thu, 16 May 2024 21:30:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y5ZGRZ9CUHTl; Thu, 16 May 2024 21:30:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 455CC41DAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715895019;
	bh=sxi3XWTLvLmvb2AupimYUfa94OxnvVk1ZbglFWWrWIg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V1UtzEOdhRSGNaoCugNQbl4Ow6SARiF04oaoR7wL1ZioB5xKDEWPaD1NZbeBRbspY
	 vjgdIXCb+1MCOSMFs8fIwuVTIS2GSilo5qElF/Ng5Ak6ZSeTLcsndDok3PrAbO88MS
	 HoAZpfR0xMsvTYAo0tAZ/CZabOkKiCj5Z+RMqiogdu7V96K89UL+igvsoBEx96a6Cw
	 66VVm2UNVa235xoOWg7Wecttf+5jDTsg/EHrLMG0SKNA0ffO4mcpfgYS7fKPXgr8oH
	 4XM4OR3QSFp7xfYyFbi6qJrd07B4n+osmtraHSohTSefHNN7PadU2gqTs3yw1MEf5b
	 mDQ6vph6COE8w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 455CC41DAB;
	Thu, 16 May 2024 21:30:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DBF9C1BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 21:30:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C2FD3404D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 21:30:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kiQobwNKv_sa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 21:30:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:780:45:1d:225:90ff:fe52:c662; helo=ganesha.gnumonks.org;
 envelope-from=laforge@gnumonks.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E9925400C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9925400C4
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E9925400C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 21:30:12 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
 (envelope-from <laforge@gnumonks.org>)
 id 1s7ifs-00FLNt-Ly; Thu, 16 May 2024 23:30:04 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.97)
 (envelope-from <laforge@gnumonks.org>) id 1s7ifo-00000004ZaZ-1Qrr;
 Thu, 16 May 2024 23:30:00 +0200
Date: Thu, 16 May 2024 23:30:00 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZkZ62F_iCCOf4nmM@nataraja>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
 <ZkSivjg7uZsA20ft@nataraja> <ZkXjfeLhB9T5MLfX@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZkXjfeLhB9T5MLfX@mev-dev>
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=gnumonks.org
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 00/21] ice: add PFCP
 filter support
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Miller <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Michal,

thanks for your response.

On Thu, May 16, 2024 at 12:44:13PM +0200, Michal Swiatkowski wrote:

> > I'm curious to understand why are *pfcp* packets hardware offloaded?
> > PFCP is just the control plane, similar to you can consider netlink the
> > control plane by which userspace programs control the data plane.
> > 
> > I can fully understand that GTP-U packets are offloaded to kernel space or
> > hardware, and that then some control plane mechanism like PFCP is needed
> > to control that data plane.  But offloading packets of that control
> > protocol?
> 
> It is hard for me to answer your concerns, because oposite to you, I
> don't have any experience with telco implementations. We had client that
> want to add offload rule for PFCP in the same way as for GTP. 

I've meanwhile done some reading and it seems there are indeed some
papers suggesting that in specific implementations of control/data plane
splits, the transaction rate between control and data plane (to set up /
tear down / modify tunnels) is to low.  As a work-around, the entire
PFCP parsing is then off-loaded into (e.g. P4 capable) hardware.

So it seems at least there appears to be equipment where PFCP offloading
is useful to significantly incresae performance.

For those curious, https://faculty.iiitd.ac.in/~rinku/resources/slides/2022-sosr-accelupf-slides.pdf
seems to cover one such configuration where offloading processing the
control-plane protocol into the P4 hardware switch has massively
improved the previously poor PFCP processing rate.

> Intel
> hardware support matching on specific PFCP packet parts. We spent some
> time looking at possible implementations. As you said, it is a little
> odd to follow the same scheme for GTP and PFCP, but it look for me like
> reasonable solution.

Based on what I understand, I am not sure I would agree with the
"reasonable solution" part.  But then of course, it is a subjective
point of view.

I understand and appreciate the high-level goal of giving the user some
way to configure a specific feature of an intel NIC.

However, I really don't think that this should come at the expense of
introducing tunnel devices (or other net-devs) for things that are not
tunnels, and by calling things PFCP whcih are not an implementation of
PFCP.

Tou are introducing something called "pfcp" into the kernel,
whcih is not pfcp.  What if somebody else at some point wanted to
introduce some actual PFCP support in some form?  How should they call
their sub-systems / Kconfigs / etc?  They could no longer call it simply
"pfcp" as you already used this very generic term for (from the
perspective of PFCP) a specific niche use case of configuring a NIC to
handle all of PFCP.

> Do you have better idea for that?

I am not familiar with the use cases and the intel NICs and what kind of
tooling or third party software might be out there wanting to configure
it.  It's really not my domain of expertise and as such I have no
specific proposal, sorry.

It just seems mind-boggling to me that we would introduce
* a net-device for sometthing that's not a net-device
* a tunnel for something that does no tunneling whatsoeer
* code mentioning "PFCP encapsulated traffic" when in fact it is
  impossible to encapsulate any traffic in PFCP, and the code does
  not - to the best of my understanding - do any such encapsulation
  or even configure hardware to perform any such non-existant PFCP
  encapsulation

[and possibly more] *just* so that a user can use 'tc' to configure a
hardware offloading feature in their NIC.

IMHO, there must be a better way.

> > I also see the following in the patch:
> > 
> > > +MODULE_DESCRIPTION("Interface driver for PFCP encapsulated traffic");
> > 
> > PFCP is not an encapsulation protocol for user plane traffic.  It is not
> > a tunneling protocol.  GTP-U is the tunneling protocol, whose
> > implementations (typically UPFs) are remote-controlled by PFCP.
> > 
> 
> Agree, it is done like that to simplify implementation and reuse kernel
> software stack.

My comment was about the module description.  It claims something that
makes no sense and that it does not actually implement.  Unless I'm not
understanding what the code does, it is outright wrong and misleading.

Likewise is the comment on top of the drivers/net/pfcp.c file says:

> * PFCP according to 3GPP TS 29.244

While the code is in fact *not* implementing any part of TS 29.244.  The
code is using the udp_tunnel infrastructure for something that's not a
tunnel.  From what i can tell it is creating an in-kernel UDP socket
(whcih can be done without any relation to udp_tunnel) and it is
configuring hardware offload features in a NIC.  The fact that the
payload of those UDP packets may be PFCP is circumstancial - nothing in
the code actually implements even the tiniest bit of PFCP protocol
parsing.

> This is the way to allow user to steer PFCP packet based on specific
> opts (type and seid) using tc flower. If you have better solution for
> that I will probably agree with you and will be willing to help you
> with better implementation.

sadly, neither tc nor intel NIC hardware offload capabilities are my
domain of expertise, so I am unable to propose detials of a better
solution.

> I assume the biggest problem here is with treating PFCP as a tunnel
> (done for simplification and reuse) and lack of any functionality of
> PFCP device

I don't think the kernel should introduce a net-device (here
specifically a tunnel device) for something that is not a tunnel.  This
device [nor the hardware accelerator it controls] will never encapsulate
or decapsulate any PFCP packet, as PFCP is not a tunnel / encapsulation
protocol.

> (moving the PFCP specification implementation into kernel
> probably isn't good idea and may never be accepted).

I would agree, but that is a completely separate discussion.  Even if
one ignores this, the hypothetical kernel PFCP implementation would not
be a tunnel, and not be a net-device at all.  It would simply be some
kind of in-kernel UDP socket parsing and responding to packets, similar
to the in-kernel nfs daemon or whatever other in-kernel UDP users exist.

Also: The fact that you or we think an actual PFCP implementation would
not be accepted in the kernel should *not* be an argument in favor of
accepting something else into the kernel, call it PFCP and create tunnel
devices for things that are not tunnels :)

> Offloading doesn't sound like problematic. If there is a user that want
> to use that (to offload for better performance, or even to steer between
> VFs based on PFCP specific parts) why not allow to do that?

The papers I read convinced me that there is a use case.  I very much
believe the use case is a work-around for a different problem (the
inefficiency of the control->data plance protocol in this case), but
my opinion on that doesn't matter here.  I do agree with you that there
are apparently people who would want to make use of such a feature, and
that there is nothing wrong with provoding them means to do this.

However, the *how* is what I strongly object to.  Once again, I may miss
some part of your architecture, and I am happy to be proven otherwise.

But if all of this is *just* to configure hardware offloading in a nic,
I don't think there should be net-devices or tunnels that never
encap/decap a single packet or for protocols / use cases that clearly do
not encap or decap packets.

I also think this sets very bad precedent.  What about other prootocols
in the future?  Will we see new tunnels in the kernel for things that
are not tunnels at all, every time there is some new protocol that gains
hardware offloading capability in some NIC? Surely this kind of
proliferation is not the kind of software architecture we want to have?

Once again, I do apologize for raising my concerns at such a late stage.
I am not a kernel developer anymore these days, and I do not follow any
of the related mailing lists.  It was pure coincidence that the net-next
merge of some GTP improvements I was involved in specifying also
contained the PFCP code and I started digging what this was all about.

Regards,
	Harald

-- 
- Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
