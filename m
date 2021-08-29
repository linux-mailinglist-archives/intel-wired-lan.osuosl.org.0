Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F083FAE60
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Aug 2021 22:16:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDA39403F7;
	Sun, 29 Aug 2021 20:16:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CxUFq_rvEi1v; Sun, 29 Aug 2021 20:16:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EDED403FB;
	Sun, 29 Aug 2021 20:16:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2D1201BF31D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Aug 2021 20:16:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 11A75400E4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Aug 2021 20:16:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=lunn.ch
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C4uJ3A46EpPv for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 Aug 2021 20:16:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C1D32400BF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Aug 2021 20:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=KDIxZT3/x9fPJ4BS6ZWjlTZ+Byifs+nCTwd1Hh1ZsAs=; b=zSefzRrafQTgHv4eUQcqLniEoX
 gKbsJvwawQ5ewEJGXc8/D0hg9QWOQEE260nLVImqRbY8ko9tca0a6i28fUFKXQ2RZzv0TaW9t8bU3
 0TA2ooFeczh8f2wsE4JfeRsg5O4B5xDmSrFnoBJpLUHypw28mzjPteSZqUSfNfMel0hU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1mKRDq-004Rrb-D3; Sun, 29 Aug 2021 22:16:06 +0200
Date: Sun, 29 Aug 2021 22:16:06 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <YSvrBvLJ3IRTn9FR@lunn.ch>
References: <20210829080512.3573627-1-maciej.machnikowski@intel.com>
 <20210829080512.3573627-2-maciej.machnikowski@intel.com>
 <20210829151017.GA6016@hoboy.vegasvil.org>
 <PH0PR11MB495126A63998DABA5B5DE184EACA9@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR11MB495126A63998DABA5B5DE184EACA9@PH0PR11MB4951.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [RFC v2 net-next 1/2] rtnetlink: Add new
 RTM_GETSYNCESTATE message to get SyncE status
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
Cc: "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > I have nothing against exposing the DPLL if you need to, however I'd like to have
> > an interface that support plain Gigabit as well.  This could be done in a generic
> > way by offering Control Register 9 as described in 802.3.

Are we talking about Clause 22, register 9, also known as MII_CTRL1000?

> This part of Gigabit interface is a different part of SyncE device. It controls Master/Slave
> operation of auto-negotiation.

This is controlled using ethtool -s

      ethtool -s devname [speed N] [duplex half|full] [port tp|aui|bnc|mii]
              ....
              [sopass xx:yy:zz:aa:bb:cc] [master-slave preferred-
              master|preferred-slave|forced-master|forced-slave]

      Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
