Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 628F98C6648
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 May 2024 14:20:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B5E8C41A5F;
	Wed, 15 May 2024 12:20:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y_YBz_77Hx05; Wed, 15 May 2024 12:20:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9EFE541A43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715775646;
	bh=5gdxnNNc90LFgI4BQOkZuwRwsM/ENvTlh/dXZy4UcbY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Cr5A1FRfvaw9DVB06mkeji99S4rLppWZoBvRN/9wVbpuZcTx3vnQaBBlasf1PEUzR
	 YeEuCq9dP+CDt3A+ELIAkTJ4bDxCv+WDbEUaiQPaS7XsgKszRzOwt0ZNIQnHt5pt/f
	 aIHME9NGRZZe2g0X4PU10pPEFPUfV5MF4Ty5WG0B5k7KZT5YsYXMQqjijGLUMMGZsg
	 4MKEUlo9OkDarHhFKSSlkw2FW4VIZMIzGAnqdKCy++lMV7fN3YKFaWeUM6xg3Adbhh
	 4/lvoUjzQ/Pbdy9wTkUxGaUB0YsDou9k74AC+hElE1RLwhwt2h1ge0L7IYfEcYLRNr
	 SNp5f+u0pGp+w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9EFE541A43;
	Wed, 15 May 2024 12:20:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E3421BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 12:20:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 86A5340B76
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 12:20:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UpwwyDnLZ0e8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 May 2024 12:20:43 +0000 (UTC)
X-Greylist: delayed 1485 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 15 May 2024 12:20:42 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A68D840B3F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A68D840B3F
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:780:45:1d:225:90ff:fe52:c662; helo=ganesha.gnumonks.org;
 envelope-from=laforge@gnumonks.org; receiver=<UNKNOWN> 
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A68D840B3F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 12:20:42 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
 (envelope-from <laforge@gnumonks.org>)
 id 1s7DEb-00D1eo-Ak; Wed, 15 May 2024 13:55:49 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.97)
 (envelope-from <laforge@gnumonks.org>) id 1s7DEV-00000003YLY-056H;
 Wed, 15 May 2024 13:55:43 +0200
Date: Wed, 15 May 2024 13:55:42 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZkSivjg7uZsA20ft@nataraja>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
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
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Daer Alexander, Wojciech,

forgive me for being late to the party, but I just saw the PFCP support
hitting Linus'' git repo in 1b294a1f35616977caddaddf3e9d28e576a1adbc
and was trying to figure out what it is all about.  Is there some kind
of article, kernel documentation or other explanation about it?

I have a prehistoric background in Linux kernel networking, and have
been spending much of the last two decades in creating open source
implemenmtations of 3GPP specifications.

So I'm very familiar with what PFCP is, and what it does, and how it is
used as a protocol by the 3GPP control plane to control the user/data
plane.

Conceptually it seems very odd to me to have something like *pfcp
net-devices*.  PFCP is just a control plane protocol, not a tunnel
mechanism.

From the Kconfig:

> +config PFCP
> +	tristate "Packet Forwarding Control Protocol (PFCP)"
> +	depends on INET
> +	select NET_UDP_TUNNEL
> +	help
> +	  This allows one to create PFCP virtual interfaces that allows to
> +	  set up software and hardware offload of PFCP packets.

I'm curious to understand why are *pfcp* packets hardware offloaded?
PFCP is just the control plane, similar to you can consider netlink the
control plane by which userspace programs control the data plane.

I can fully understand that GTP-U packets are offloaded to kernel space or
hardware, and that then some control plane mechanism like PFCP is needed
to control that data plane.  But offloading packets of that control
protocol?

I also see the following in the patch:

> +MODULE_DESCRIPTION("Interface driver for PFCP encapsulated traffic");

PFCP is not an encapsulation protocol for user plane traffic.  It is not
a tunneling protocol.  GTP-U is the tunneling protocol, whose
implementations (typically UPFs) are remote-controlled by PFCP.

> +	  Note that this module does not support PFCP protocol in the kernel space.
> +	  There is no support for parsing any PFCP messages.

If I may be frank, why do we introduce something called "pfcp" to the
kernel, if it doesn't actually implement any of the PFCP specification
3GPP TS 29.244 (which is specifying a very concrete protocol)?

Once again, I just try to understand what you're trying to do here. It's
very much within my professional field, but I somehow cannot align what
I see within this patch set with my existing world view of what PFCP is
and how it works.

If anyone else has a better grasp of the architecture of this kernel
PFCP support, or has any pointers, I'd be very happy to follow up
on that.

Thanks for your time,
	Harald

-- 
- Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
