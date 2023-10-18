Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5887CE4BA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 19:37:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D97F42157;
	Wed, 18 Oct 2023 17:37:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D97F42157
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697650637;
	bh=UWuAaMnUzfWA4zsi65Cif11tlOj2BLbT11HtvEwT/Mo=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b465KiVXOvj/uNceGEsjxlkHY4qkWFBSUjbJuCWT6CPfsSZnpzRxE/xE6uUayZJuT
	 Rnj3BCz+yAsLpbdUy7Iw7QKIqROXkb6Q4EWXzVhMUf1q45aywfY1QSnaLe8a5fjbUs
	 NkWiruVk2u6pg2AHBSvuA8kXu/dH792bGjG3spS03dOlovQIEP8yMNu7vEzYLd2oUT
	 uQtuAo5A1P3gtFHE2GDf7fJsDMkQkzxd8z51/DSiI1fwPborN9IvG4hxfq5kviw1VD
	 v4WQkm9vvyEz19vZvF2BVmh9TJgHp7F/TnRkIIfrl7uTCYVPEW8ObPOYs5bd8EmjXr
	 GlJ7L3vIhyFVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DmHWuOT96BqQ; Wed, 18 Oct 2023 17:37:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC33A42152;
	Wed, 18 Oct 2023 17:37:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC33A42152
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 392ED1BF865
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 17:37:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 10BE6610F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 17:37:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10BE6610F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GtKPDHAlvCb3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 17:37:10 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49C8560AC0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 17:37:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49C8560AC0
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 0D40FB823F3;
 Wed, 18 Oct 2023 17:37:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24585C433CA;
 Wed, 18 Oct 2023 17:37:05 +0000 (UTC)
Date: Wed, 18 Oct 2023 10:37:03 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: takeru hayasaka <hayatake396@gmail.com>
Message-ID: <20231018103703.41fd4d9b@kernel.org>
In-Reply-To: <CADFiAc+OnpyNTXntZBkDAf+UfueRotqqWKg+BrApWcL=x_8vjQ@mail.gmail.com>
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org>
 <CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
 <CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
 <20231017164915.23757eed@kernel.org>
 <CADFiAc+OnpyNTXntZBkDAf+UfueRotqqWKg+BrApWcL=x_8vjQ@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697650625;
 bh=geOBo95O/K4ooFlTQc6NiW8YW2+mC1AuPcK2r9RbM60=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SXJfEeKWIEFL037wd9Kx1uRUp4vBF0hK+5pVBFk/LlLMQnkZgzbXWX/0iVZCFJSyP
 W7sTaRni2aOXaaP1bp9sZ/yR4HHmCvBAxxsNVcBx4OEsquhbG91/IikvmM+WTyW5l8
 /+g/dDC6FOZ7erRdJLiMMIocyKhi2BnvQWip987zLwn9qZMEQhwPy4MCdbtuyr4/La
 dtzuMIcwKRLG628usEnptkqlz5W1Y7Va6KsX563a6krV4cKmg5Gymp2yD/TUv6hywL
 G2cEeyg745JJ5zm3X34im7j7hiII8pxpWtcf+A1YRvyaKEdwWh05DBow2Ke0mrWGT+
 P3dyAc8SrFrFg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SXJfEeKW
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethtool: ice: Support for
 RSS settings to GTP from ethtool
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, netdev@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Harald Welte <laforge@gnumonks.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 18 Oct 2023 10:53:02 +0900 takeru hayasaka wrote:
> For instance, there are PGWs that have the capability to separate the
> termination of communication of 4G LTE users into Control and User
> planes (C/U).
> This is quite convenient from a scalability perspective. In fact, in
> 5G UPF, the communication is explicitly only on the User plane
> (Uplane).
> 
> Therefore, services are expected to receive only GTPU traffic (e.g.,
> PGW-U, UPF) or only GTPC traffic (e.g., PGW-C). Hence, there arises a
> necessity to use only GTPU.
> 
> If we do not distinguish packets into Control/User (C/U) with options
> like gtp4|6, I can conceive scenarios where performance tuning becomes
> challenging.
> For example, in cases where we want to process only the control
> communication (GTPC) using Flow Director on specific CPUs, while
> processing GTPU on the remaining cores.
> In scenarios like IoT, where user communication is minimal but the
> volume of devices is vast, the control traffic could substantially
> increase. Thus, this might also be possible in reverse.
> In short, this pertains to being mindful of CPU core affinity.
> 
> If we were to propose again, setting aside considerations specific to
> Intel, I believe, considering the users of ethtool, the smallest units
> should be gtpu4|6 and gtpc4|6.
> Regarding Extension Headers and such, I think it would be more
> straightforward to handle them implicitly.
> 
> What does everyone else think?

Harald went further and questioned use of the same IP addresses for 
-U and -C traffic, but even within one endpoint aren't these running
on a different port? Can someone reasonably use the same UDP port
for both types of traffic?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
