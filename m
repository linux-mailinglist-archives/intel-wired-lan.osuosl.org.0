Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE70127610B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 21:28:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4262E20437;
	Wed, 23 Sep 2020 19:28:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 23IlfaASXMt4; Wed, 23 Sep 2020 19:28:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 82F8B272AB;
	Wed, 23 Sep 2020 19:28:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5926F1BF331
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 19:28:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4F51687391
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 19:28:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jiHt6pNav+l2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 19:28:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A907987390
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 19:28:25 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
 (envelope-from <andrew@lunn.ch>)
 id 1kLAR3-00FvEk-HY; Wed, 23 Sep 2020 21:28:13 +0200
Date: Wed, 23 Sep 2020 21:28:13 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <20200923192813.GE3764123@lunn.ch>
References: <20200923074751.10527-1-kai.heng.feng@canonical.com>
 <17092088-86ff-2d31-b3de-2469419136a3@molgen.mpg.de>
 <AC6D77B8-244D-4816-8FFE-A4480378EC4C@canonical.com>
 <79f01082-c9b1-f80a-7af4-b61bdbf40c90@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <79f01082-c9b1-f80a-7af4-b61bdbf40c90@molgen.mpg.de>
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Power cycle phy on PM resume
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > > How much does this increase the resume time?

Define resume time? Until you get the display manager unlock screen?
Or do you need working networking?

It takes around 1.5 seconds for auto negotiation to get a link. I know
it takes me longer than that to move my fingers to the keyboard and
type in my password to unlock the screen. So by the time you actually
get to see your desktop, you should have link.

I've no idea about how the e1000e driver does link negotiation. But
powering the PHY off means there is going to be a negotiation sometime
later. But if you don't turn it off, the driver might be able to avoid
doing an autoneg if the PHY has already done one when it got powered
up.

      Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
