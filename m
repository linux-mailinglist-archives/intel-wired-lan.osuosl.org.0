Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D3185290DF8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Oct 2020 01:05:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7787889062;
	Fri, 16 Oct 2020 23:05:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id njZ+uu9U5llO; Fri, 16 Oct 2020 23:05:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D34289066;
	Fri, 16 Oct 2020 23:05:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CFD5F1BF29F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Oct 2020 23:05:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C6FDE88BC2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Oct 2020 23:05:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l9ogz6CmHQN5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Oct 2020 23:05:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A0EA588BBE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Oct 2020 23:05:30 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD19220874;
 Fri, 16 Oct 2020 23:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602889530;
 bh=QisPMfxsCS0Q/9ORktOr+4PYFXO4fpG+jUWVvR3fQTY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=z5vRTXwCskbxWBhUyLa4AX5qsD3j57QimkRshWTzQMT4wQZ7Hh0VAW365zZCdjVRp
 LWjufbhr2YtApGdVwaQym4LoAtWxJA8u0cadNs/gEjKcx8Gr/hgiLERpx4s/qNMz9V
 JjNiLxWcv2itMinTohAdA7IMjXifFdeNblz/qr5g=
Date: Fri, 16 Oct 2020 16:05:28 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ian Kumlien <ian.kumlien@gmail.com>
Message-ID: <20201016160528.0b5f849b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAA85sZtGt0ZbhGY8+96G9TY+cE+tgmjb8rHmiGT9Js+ZbjKJeg@mail.gmail.com>
References: <CAA85sZv=13q8NXbjdf7+R=wu0Q5=Vj9covZ24e9Ew2DCd7S==A@mail.gmail.com>
 <CAA85sZs9wswn06hd7ien2B_fyqFM9kEWL_-vXQN-sjhqisizaQ@mail.gmail.com>
 <20201016122122.0a70f5a3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAA85sZtGt0ZbhGY8+96G9TY+cE+tgmjb8rHmiGT9Js+ZbjKJeg@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] ixgbe - only presenting one out of four
 interfaces on 5.9
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
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 17 Oct 2020 00:39:11 +0200 Ian Kumlien wrote:
> On Fri, Oct 16, 2020 at 9:21 PM Jakub Kicinski <kuba@kernel.org> wrote:
> > > > You can actually see it dmesg... And i tried some basic looking at
> > > > changes to see if it was obvious.... but..  
> >
> > Showing a full dmesg may be helpful, but looking at what you posted it
> > seems like the driver gets past the point where netdev gets registered,
> > so the only thing that could fail after that point AFIACT is
> > mdiobus_register(). Could be some breakage in MDIO.  
> 
> Humm... interesting, will have a look at it
> 
> > Any chance you could fire up perf, bpftrace and install a kretprobe to
> > see what mdiobus_register() returns? You can rebind the device to the
> > driver through sysfs.  
> 
> Do you need a difference between the kernels?

Nope, we can safely assume that it return 0 on kernels where things
work.

Looking at the changes in this area now - it's gotta be:

commit 09ef193fef7e ("net: ethernet: ixgbe: check the return value of ixgbe_mii_bus_init()")

This should make things work again for you:

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index f77fa3e4fdd1..ac5bfc2b5f81 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -922,7 +922,7 @@ s32 ixgbe_mii_bus_init(struct ixgbe_hw *hw)
        case IXGBE_DEV_ID_X550EM_A_1G_T:
        case IXGBE_DEV_ID_X550EM_A_1G_T_L:
                if (!ixgbe_x550em_a_has_mii(hw))
-                       return -ENODEV;
+                       return 0;
                bus->read = &ixgbe_x550em_a_mii_bus_read;
                bus->write = &ixgbe_x550em_a_mii_bus_write;
                break;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
