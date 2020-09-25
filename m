Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6916827898C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Sep 2020 15:29:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE6A686BB3;
	Fri, 25 Sep 2020 13:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ud5_EfaXyIyN; Fri, 25 Sep 2020 13:29:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2154786BBC;
	Fri, 25 Sep 2020 13:29:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D5531BF616
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 13:29:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 72A87874F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 13:29:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aK8WnqTWbzPf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Sep 2020 13:29:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 98BB287475
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 13:29:16 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
 (envelope-from <andrew@lunn.ch>)
 id 1kLnmZ-00G9vu-4n; Fri, 25 Sep 2020 15:29:03 +0200
Date: Fri, 25 Sep 2020 15:29:03 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: David Laight <David.Laight@ACULAB.COM>
Message-ID: <20200925132903.GB3850848@lunn.ch>
References: <20200923074751.10527-1-kai.heng.feng@canonical.com>
 <20200924150958.18016-1-kai.heng.feng@canonical.com>
 <20200924155355.GC3821492@lunn.ch>
 <8A08B3A7-8368-48EC-A2DD-B5D5F3EA94C5@canonical.com>
 <2f48175dce974ea689bfd26b9fc2245a@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2f48175dce974ea689bfd26b9fc2245a@AcuMS.aculab.com>
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Increase iteration on
 polling MDIC ready bit
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 'Kai-Heng Feng' <kai.heng.feng@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 25, 2020 at 08:50:30AM +0000, David Laight wrote:
> From: Kai-Heng Feng
> > Sent: 24 September 2020 17:04
> ...
> > > I also don't fully understand the fix. You are now looping up to 6400
> > > times, each with a delay of 50uS. So that is around 12800 times more
> > > than it actually needs to transfer the 64 bits! I've no idea how this
> > > hardware works, but my guess would be, something is wrong with the
> > > clock setup?
> > 
> > It's probably caused by Intel ME. This is not something new, you can find many polling codes in e1000e
> > driver are for ME, especially after S3 resume.
> > 
> > Unless Intel is willing to open up ME, being patient and wait for a longer while is the best approach
> > we got.
> 
> There is some really broken code in the e1000e driver that affect my
> Ivy bridge platform were it is trying to avoid hardware bugs in
> the ME interface.
> 
> It seems that before EVERY write to a MAC register it must check
> that the ME isn't using the interface - and spin until it isn't.
> This causes massive delays in the TX path because it includes
> the write that tells the MAC engine about a new packet.

Hi David

Thanks for the information. This however does not really explain the
issue.

The code busy loops waiting for the MDIO transaction to complete. If
read/writes to the MAC are getting blocked, that just means less
iterations of the loop are needed, not more, since the time to
complete the transaction should be fixed.

If ME really is to blame, it means ME is completely hijacking the
hardware? Stopping the clocks? Maybe doing its own MDIO transactions?
How can you write a PHY driver if something else is also programming
the PHY.

We don't understand what is going on here. We are just papering over
the cracks. The commit message should say this, that the change fixes
the symptoms but probably not the cause.

    Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
