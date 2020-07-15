Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03834221725
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2020 23:40:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9A37B26BD5;
	Wed, 15 Jul 2020 21:40:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fFzfbfPbCc+k; Wed, 15 Jul 2020 21:40:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7BE3B262BC;
	Wed, 15 Jul 2020 21:40:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5D87C1BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 21:40:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5652C8AE76
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 21:40:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D1x3i+aty7n8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2020 21:40:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DD6A28AE6B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 21:40:27 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F7C9205CB;
 Wed, 15 Jul 2020 21:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594849227;
 bh=pTGMvpWO4qBv0WekCapu47P+G88DdYFxoAxgWCYoJTk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=YbmZAOhs6SRL6UBtWoE5qPSMGJY02lQRbnyEswaK2fC8wlAPT6P05o/Z+x3I24Xo4
 7hWbaQ6pElTAY3Nj6SK44ywoNCYzOdnuQLLkRXlGVBGpOzBCGys6C8oSRM3jelTqr0
 RQ7HqdTFMk2DrWILvTfi5Q7xbhcVZvRf8iIfP9Ao=
Date: Wed, 15 Jul 2020 14:40:17 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ian Kumlien <ian.kumlien@gmail.com>
Message-ID: <20200715144017.47d06941@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAA85sZtjCW2Yg+tXPgYyoFA5BKAVZC8kVKG=6SiR64c8ur8UcQ@mail.gmail.com>
References: <CAA85sZvKNXCo5bB5a6kKmsOUAiw+_daAVaSYqNW6QbSBJ0TcyQ@mail.gmail.com>
 <CAA85sZua6Q8UR7TfCGO0bV=VU0gKtqj-8o_mqH38RpKrwYZGtg@mail.gmail.com>
 <20200715133136.5f63360c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAA85sZu09Z4gydJ8rAO_Ey0zqx-8Lg28=fBJ=FxFnp6cetNd3g@mail.gmail.com>
 <CAA85sZtjCW2Yg+tXPgYyoFA5BKAVZC8kVKG=6SiR64c8ur8UcQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] NAT performance issue 944mbit -> ~40mbit
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
Cc: Linux Kernel Network Developers <netdev@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 15 Jul 2020 23:12:23 +0200 Ian Kumlien wrote:
> On Wed, Jul 15, 2020 at 11:02 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> > On Wed, Jul 15, 2020 at 10:31 PM Jakub Kicinski <kuba@kernel.org> wrote:  
> > > On Wed, 15 Jul 2020 22:05:58 +0200 Ian Kumlien wrote:  
> > > > After a  lot of debugging it turns out that the bug is in igb...
> > > >
> > > > driver: igb
> > > > version: 5.6.0-k
> > > > firmware-version:  0. 6-1
> > > >
> > > > 03:00.0 Ethernet controller: Intel Corporation I211 Gigabit Network
> > > > Connection (rev 03)  
> > >
> > > Unclear to me what you're actually reporting. Is this a regression
> > > after a kernel upgrade? Compared to no NAT?  
> >
> > It only happens on "internet links"
> >
> > Lets say that A is client with ibg driver, B is a firewall running NAT
> > with ixgbe drivers, C is another local node with igb and
> > D is a remote node with a bridge backed by a bnx2 interface.
> >
> > A -> B -> C is ok (B and C is on the same switch)
> >
> > A -> B -> D -- 32-40mbit
> >
> > B -> D 944 mbit
> > C -> D 944 mbit
> >
> > A' -> D ~933 mbit (A with realtek nic -- also link is not idle atm)  
> 
> This should of course be A' -> B -> D
> 
> Sorry, I've been scratching my head for about a week...

Hm, only thing that comes to mind if A' works reliably and A doesn't is
that A has somehow broken TCP offloads. Could you try disabling things
via ethtool -K and see if those settings make a difference?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
