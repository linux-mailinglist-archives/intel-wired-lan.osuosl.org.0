Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA17AD5C70
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jun 2025 18:39:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEBD260A9C;
	Wed, 11 Jun 2025 16:39:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2RLuwsNloNh8; Wed, 11 Jun 2025 16:39:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8CAD60AA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749659946;
	bh=4uDHSKKkJPErGs0m/th6Q5+CwwWkeTLPAHn4+TjzoMk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sMghbrFEHO7QURqpfPqKubUp2zPZqt2aJpchOX7DO9ZJyff954SdDEiwZUpuxvxR/
	 LYBCWmWa243uuwr/FaXe0ruPyhHFRCOuAkI/SXOa+g9fBtxYDlMkIlpTS6rAGMICLt
	 L33lH3TxcG2NVI39i7dGR1tWCEQMnwVjSy1lLqQdWlcCyHNBvom/ojk1qwG7GYdS6n
	 QV+hF0nM8B43B8JHupCjTU7lJ6PHQUquTIp41Bouim648ixlWyddZ6xWnXpF79p7vo
	 f+YfZ3CS6CtoIeJkNyhwQXAyH45hO73GHX58PU6uRjWTMV95JnEceC6CdFUF+VuMKx
	 Wm3tZqj0J/WHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8CAD60AA5;
	Wed, 11 Jun 2025 16:39:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 060ED237
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 16:39:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC152425F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 16:39:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0pAkV0aKeIK0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jun 2025 16:39:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A40FE40BFE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A40FE40BFE
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A40FE40BFE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 16:39:03 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1uPOTZ-00FQV8-W7; Wed, 11 Jun 2025 18:38:57 +0200
Date: Wed, 11 Jun 2025 18:38:57 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Khalid Mughal <khalid.mughal@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Sridhar Samudrala <sridhar.samudrala@intel.com>
Message-ID: <83e44167-43eb-4abd-b536-c2e290ab4382@lunn.ch>
References: <20250611155402.1260634-1-khalid.mughal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250611155402.1260634-1-khalid.mughal@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=4uDHSKKkJPErGs0m/th6Q5+CwwWkeTLPAHn4+TjzoMk=; b=BXeNDlcBYR6bll7NfoIECM9ODt
 izTiFlZKr+f2PR0u6hqkVtqcGB7vOOTLHNrInnGyUAPYvLXeKmBqbvqME4IyvWt78GgADdyFAhgc3
 wkBF+HG7dkSqUGw6USbbc7UGWiz/ifh6pkyNP8zMMXHattsDJJef3VmibTLXgI6i09tw=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=BXeNDlcB
Subject: Re: [Intel-wired-lan] [PATCH] net: Add new iccnet driver
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

On Wed, Jun 11, 2025 at 08:54:02AM -0700, Khalid Mughal wrote:
> Intel(R) IPU ICCNET (Inter-Complex Communication Network) Driver:
> 
> The iccnet (Inter-Core Communication Network) driver enables sideband
> channel communication between the Management-Complex and the
> Compute-Complex, both powered by ARMv8 CPUs, on the Intel IPU
> (Infrastructure Processing Unit). The driver establishes descriptor
> rings for transmission and reception using a shared memory region
> accessible to both CPU complexes. The TX ring of one CPU maps
> directly to the RX ring of the other CPU.

https://www.spinics.net/lists/netdev/msg1000950.html

I suspect the developer was a student on a placement at TI for a
while, so it had the typical student code problems, and he had
problems thinking about the big picture, a generic solution rather
than a solution specific to TIs use case.

Please could you read through the comments i made to various versions
of that patchset and see what applies to what you are doing. Two
similar systems within a year suggests we need a generic shared memory
solution, or at least a shared core library which can then be wrapped
for individual use cases.

> v2:
> - Fixed issues highlighted by Marcin Szycik
> v3:
> - Fixed internal-kbuild-all build warning
> v4:
> - Changed iccnet header padding

As far as i know, these never made it to the list, so don't exist. It
is good it had internal review, but please don't pollute the commit
with stuff nobody else can see.

     Andrew
