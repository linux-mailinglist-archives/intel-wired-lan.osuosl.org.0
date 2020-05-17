Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E73A11D6BCD
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 May 2020 20:45:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4CEAA884DD;
	Sun, 17 May 2020 18:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dnVL56m+d4CP; Sun, 17 May 2020 18:45:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C08C0884D0;
	Sun, 17 May 2020 18:45:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5FD41BF387
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2020 18:45:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E17E687C20
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2020 18:45:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K7PrR-2xdLoC for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 May 2020 18:45:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D4F7087C16
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2020 18:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Om2ihcIcTTCsJd0V7LPMZGBDdv56p7fhVEVGIu/z1NU=; b=OMXPGZuN2DUGWDOvdepI0drpje
 t0J+q5DXzijClPE7jaWI2Sf3cBDPuyovR0ikl/G2EuuBXnb1Gld/gCjnmJBySqz55xZU4CFf7AB2j
 mWTPjiAJG3RkRwknMC0NxDHZLvwlSOX7qO/IJZCe4pE+75yG2DfHl8UspU+y6i9GtCMQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jaOHi-002YO6-5d; Sun, 17 May 2020 20:45:14 +0200
Date: Sun, 17 May 2020 20:45:14 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20200517184514.GD606317@lunn.ch>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516.133739.285740119627243211.davem@davemloft.net>
 <CA+h21hoNW_++QHRob+NbWC2k7y7sFec3kotSjTL6s8eZGGT+2Q@mail.gmail.com>
 <20200516.151932.575795129235955389.davem@davemloft.net>
 <CA+h21hrg_CeD2-zT+7v3b3hPRFaeggmZC9NqPp+soedCYwG63A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+h21hrg_CeD2-zT+7v3b3hPRFaeggmZC9NqPp+soedCYwG63A@mail.gmail.com>
Subject: Re: [Intel-wired-lan] [next-queue RFC 0/4] ethtool: Add support for
 frame preemption
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, netdev <netdev@vger.kernel.org>,
 Po Liu <po.liu@nxp.com>, Murali Karicheri <m-karicheri2@ti.com>,
 intel-wired-lan@lists.osuosl.org, Vladimir Oltean <vladimir.oltean@nxp.com>,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, May 17, 2020 at 01:51:19PM +0300, Vladimir Oltean wrote:
> On Sun, 17 May 2020 at 01:19, David Miller <davem@davemloft.net> wrote:
> >
> > From: Vladimir Oltean <olteanv@gmail.com>
> > Date: Sun, 17 May 2020 00:03:39 +0300
> >
> > > As to why this doesn't go to tc but to ethtool: why would it go to tc?
> >
> > Maybe you can't %100 duplicate the on-the-wire special format and
> > whatever, but the queueing behavior ABSOLUTELY you can emulate in
> > software.
> >
> > And then you have the proper hooks added for HW offload which can
> > do the on-the-wire stuff.
> >
> > That's how we do these things, not with bolted on ethtool stuff.
> 
> When talking about frame preemption in the way that it is defined in
> 802.1Qbu and 802.3br, it says or assumes nothing about queuing. It
> describes the fact that there are 2 MACs per interface, 1 MAC dealing
> with some traffic classes and the other dealing with the rest.

I did not follow the previous discussion, but i assume you talked
about modelling it in Linux as two MACs? Why was that approach not
followed?

   Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
