Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EFC3BC5A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2019 21:01:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CDDA287634;
	Mon, 10 Jun 2019 19:01:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RbPBZlDdaapx; Mon, 10 Jun 2019 19:01:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 465AA879C3;
	Mon, 10 Jun 2019 19:01:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9894F1BF489
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2019 19:01:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9085E83204
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2019 19:01:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aahbFUAwqkRu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2019 19:01:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
 [129.97.134.17])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3BF2D8306B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2019 19:01:43 +0000 (UTC)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id 8D9FC461162; Mon, 10 Jun 2019 15:01:41 -0400 (EDT)
Date: Mon, 10 Jun 2019 15:01:41 -0400
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>
Message-ID: <20190610190141.77k6gbrefm2mr6lb@csclub.uwaterloo.ca>
References: <CAKgT0UdM28pSTCsaT=TWqmQwCO44NswS0PqFLAzgs9pmn41VeQ@mail.gmail.com>
 <20190521151537.xga4aiq3gjtiif4j@csclub.uwaterloo.ca>
 <CAKgT0UfpZ-ve3Hx26gDkb+YTDHvN3=MJ7NZd2NE7ewF5g=kHHw@mail.gmail.com>
 <20190521175456.zlkiiov5hry2l4q2@csclub.uwaterloo.ca>
 <CAKgT0UcR3q1maBmJz7xj_i+_oux_6FQxua9DOjXQSZzyq6FhkQ@mail.gmail.com>
 <20190522143956.quskqh33ko2wuf47@csclub.uwaterloo.ca>
 <20190607143906.wgi344jcc77qvh24@csclub.uwaterloo.ca>
 <CAKgT0Ue1M8_30PVPmoJy_EGo2mjM26ecz32Myx-hpnuq_6wdjw@mail.gmail.com>
 <alpine.NEB.2.21.9999.1906071343460.809@chris.i8u.org>
 <9B4A1B1917080E46B64F07F2989DADD69AFBF090@ORSMSX115.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9B4A1B1917080E46B64F07F2989DADD69AFBF090@ORSMSX115.amr.corp.intel.com>
User-Agent: NeoMutt/20170113 (1.7.2)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Subject: Re: [Intel-wired-lan] [E1000-devel] i40e X722 RSS problem with
 NAT-Traversal IPsec packets
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
Cc: "e1000-devel@lists.sourceforge.net" <e1000-devel@lists.sourceforge.net>,
 Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 07, 2019 at 10:08:31PM +0000, Fujinaka, Todd wrote:
> Just a quick update with the response I got and I'll make sure this is in our internal bug database.
> 
> Here's what I got back, and it looks like you guys have tried this already:
> 
> Have they tried these steps to configure RSS:
> 
> RSS Hash Flow
> -------------
> 
> Allows you to set the hash bytes per flow type and any combination of one or
> more options for Receive Side Scaling (RSS) hash byte configuration.
> 
> #ethtool -N <dev> rx-flow-hash <type> <option>
> 
> Where <type> is:
>   tcp4  signifying TCP over IPv4
>   udp4  signifying UDP over IPv4
>   tcp6  signifying TCP over IPv6
>   udp6  signifying UDP over IPv6
> And <option> is one or more of:
>   s Hash on the IP source address of the rx packet.
>   d Hash on the IP destination address of the rx packet.
>   f Hash on bytes 0 and 1 of the Layer 4 header of the rx packet.
>   n Hash on bytes 2 and 3 of the Layer 4 header of the rx packet.

With potentially 10000 ipsec connections, we don't even want to look at
creating manual flow entries.  There isn't enough room for that.  We just
wanted RSS to do its job the way it does on every other NIC in the past.
After years of using mostly intel NICs that just worked, this one has
been quite the surprise.

> Also, looks like the driver needs to be updated to latest version:
> >>> 1.1767.0 i40e 0000:3d:00.0: The driver for the device detected a
> >>> newer version of the NVM image than expected. Please install the
> >>> most recent version of the network driver.
> 
> Out of tree: https://sourceforge.net/projects/e1000/files/i40e%20stable/

Already tried with 4.19 kernel which is essentially identical to the
latest out of tree driver (I diffed them and found no functional
differences at all) and it didn't help.  Well it was essentially identical
to the latest out of tree a few weeks ago.  It seems there is now a
newer one with some changes although nothing in the list of changes
sound relevant.

We do not want to use the out of tree driver and even trying it out is
a lot of work.  We used to use it in the past for some NIC types but
stopped due to the hassle of maintaining the integration.  If any problems
exist in the in kernel driver we will patch it, but so far that does not
appear to be the problem.  The tests we did so far indicate the firmware
isn't applying an RSS value to certain packet types.  Even mapping every
RSS value to queue 7 still saw these packets arrive on queue 0 which
should of course be impossible if the firmware was working.  Now if
there is anything in the out of tree driver that you think can explain
this problem, I will look at it and consider trying it, but so far I
see nothing that makes that worth the effort.  It just doesn't look like
a driver problem.  If someone has access to a S2600WFT board (or some
other C612 based board) it should be simple enough to try replaying
the captured packet and see what RSS queue it hits (with ATR disabled
of course).

The message is because we tried installing an NVM update to see if it
fixed anything, and it did not.  We could put the old version back,
but since neither version works I didn't bother yet.

-- 
Len Sorensen
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
