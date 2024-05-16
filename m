Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2536D8C74CD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 12:44:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BCAAE41C9D;
	Thu, 16 May 2024 10:44:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V-S7Aj8SH9uV; Thu, 16 May 2024 10:44:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 571AB41CB3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715856294;
	bh=AL7s2inOepTg+/a+2RTky/+fXO/Vp/y9m8QnnDWibcs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Rck9OOChHlZL9IIyGkHei4ea5E5ibC+MqEU0vgQXScsOaOo9h6tjyVhs4jaC7Etat
	 IZWuHRjByiJJxLthp+yiBtc3isv2ZnZdnTpOGNrTcb/KOfODonfokDvlDyqsN+zLg7
	 q+zaWdzcROPgmIU2EkadwsPisdDKGTAp/DqRx9aLOyxpC7b9RQi3/g4BeB5CVo/GG1
	 Iaj4HQOZ5xSSrjxveK6JP61eE0JP4Xd1YnId108Utguv50VsBpB69FpJb6zs2mbiyW
	 hhORmtSifUsTTLLfFGcgEmR2/IhZYswk6u9zfFSwleUrFb5L5cv3GWvPJFa6n3S0HT
	 fZOUQJfsaKw/g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 571AB41CB3;
	Thu, 16 May 2024 10:44:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C39F1BF292
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 10:44:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 62F4E40585
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 10:44:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id voJ8sshc7Chi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 10:44:50 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9076E4056C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9076E4056C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9076E4056C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 10:44:50 +0000 (UTC)
X-CSE-ConnectionGUID: jlOzl4tZQ8eeno2N3C9x5A==
X-CSE-MsgGUID: rSGoFbJ0T3+0N/ehlpspIA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="23359554"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="23359554"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 03:44:50 -0700
X-CSE-ConnectionGUID: wjKu3xKkQ3yH316fiCEIWA==
X-CSE-MsgGUID: cNzrnd0JQN2kqljDpR/TxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="35822114"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 03:44:48 -0700
Date: Thu, 16 May 2024 12:44:13 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Harald Welte <laforge@gnumonks.org>
Message-ID: <ZkXjfeLhB9T5MLfX@mev-dev>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
 <ZkSivjg7uZsA20ft@nataraja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZkSivjg7uZsA20ft@nataraja>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715856290; x=1747392290;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qS3BQVM65ikytVxg+vUaAJl6zot53RNMbcABisDLmAo=;
 b=MWCFE3h/HDtechq24Sd3F51aeTUVLTAScDhey8TcWbuu4a/7UxiISxml
 /VBSpCaJY00wOEyKMmB8dCRnicEZN8c/YTPNmPtP7gkjdeU4OcDmn1Nhr
 y7blHJrm++KhAFN34nvnD+L5N9WhCeFw3bsIQLegu8QSV59/vfZ+tZqbC
 0XGd36gRHBdsK/07Q/wpqxDs/M5VKj3xRvwuE4TKqUR+Vh09/zfACuhBH
 B1nmaiX+Uv61IbayaIw8IkTmRFDvG2ePK8iJYQz+MndjOsx/UZLYnIsvv
 HHlh1mfEd5qPL/6A5ima1Tp6DFIRooFjvhskXfz1KUVMBqGZX+vUc1g32
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MWCFE3h/
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
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, Wojciech Drewek <wojciech.drewek@intel.com>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 15, 2024 at 01:55:42PM +0200, Harald Welte wrote:
> Daer Alexander, Wojciech,

Hi Harald,

> 
> forgive me for being late to the party, but I just saw the PFCP support
> hitting Linus'' git repo in 1b294a1f35616977caddaddf3e9d28e576a1adbc
> and was trying to figure out what it is all about.  Is there some kind
> of article, kernel documentation or other explanation about it?
> 
> I have a prehistoric background in Linux kernel networking, and have
> been spending much of the last two decades in creating open source
> implemenmtations of 3GPP specifications.
> 
> So I'm very familiar with what PFCP is, and what it does, and how it is
> used as a protocol by the 3GPP control plane to control the user/data
> plane.
> 
> Conceptually it seems very odd to me to have something like *pfcp
> net-devices*.  PFCP is just a control plane protocol, not a tunnel
> mechanism.
> 
> From the Kconfig:
> 
> > +config PFCP
> > +	tristate "Packet Forwarding Control Protocol (PFCP)"
> > +	depends on INET
> > +	select NET_UDP_TUNNEL
> > +	help
> > +	  This allows one to create PFCP virtual interfaces that allows to
> > +	  set up software and hardware offload of PFCP packets.
> 
> I'm curious to understand why are *pfcp* packets hardware offloaded?
> PFCP is just the control plane, similar to you can consider netlink the
> control plane by which userspace programs control the data plane.
> 
> I can fully understand that GTP-U packets are offloaded to kernel space or
> hardware, and that then some control plane mechanism like PFCP is needed
> to control that data plane.  But offloading packets of that control
> protocol?

It is hard for me to answer your concerns, because oposite to you, I
don't have any experience with telco implementations. We had client that
want to add offload rule for PFCP in the same way as for GTP. Intel
hardware support matching on specific PFCP packet parts. We spent some
time looking at possible implementations. As you said, it is a little
odd to follow the same scheme for GTP and PFCP, but it look for me like
reasonable solution.

The main idea is to allow user to match in tc flower on PFCP specific
parts. To do that we need PFCP device (which is like dummy device for
now, it isn't doing anything related to PFCP specification, only parsing).

Do you have better idea for that?

> 
> I also see the following in the patch:
> 
> > +MODULE_DESCRIPTION("Interface driver for PFCP encapsulated traffic");
> 
> PFCP is not an encapsulation protocol for user plane traffic.  It is not
> a tunneling protocol.  GTP-U is the tunneling protocol, whose
> implementations (typically UPFs) are remote-controlled by PFCP.
> 

Agree, it is done like that to simplify implementation and reuse kernel
software stack.

> > +	  Note that this module does not support PFCP protocol in the kernel space.
> > +	  There is no support for parsing any PFCP messages.
> 
> If I may be frank, why do we introduce something called "pfcp" to the
> kernel, if it doesn't actually implement any of the PFCP specification
> 3GPP TS 29.244 (which is specifying a very concrete protocol)?
> 
> Once again, I just try to understand what you're trying to do here. It's
> very much within my professional field, but I somehow cannot align what
> I see within this patch set with my existing world view of what PFCP is
> and how it works.
> 
> If anyone else has a better grasp of the architecture of this kernel
> PFCP support, or has any pointers, I'd be very happy to follow up
> on that.

This is the way to allow user to steer PFCP packet based on specific
opts (type and seid) using tc flower. If you have better solution for
that I will probably agree with you and will be willing to help you
with better implementation.

I assume the biggest problem here is with treating PFCP as a tunnel
(done for simplification and reuse) and lack of any functionality of
PFCP device (moving the PFCP specification implementation into kernel
probably isn't good idea and may never be accepted).

Offloading doesn't sound like problematic. If there is a user that want
to use that (to offload for better performance, or even to steer between
VFs based on PFCP specific parts) why not allow to do that?

In your opinion there should not be the pfcp device in kernel, or the
device should have more functionality (or any functionality, because now
it is only parsing)?

> 
> Thanks for your time,
> 	Harald
>

Thanks,
Michal

> -- 
> - Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks.org/
> ============================================================================
> "Privacy in residential applications is a desirable marketing option."
>                                                   (ETSI EN 300 175-7 Ch. A6)
