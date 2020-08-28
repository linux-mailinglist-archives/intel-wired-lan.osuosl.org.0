Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AD1255E44
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Aug 2020 17:56:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E767120378;
	Fri, 28 Aug 2020 15:56:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xpyd0wFtOV2I; Fri, 28 Aug 2020 15:56:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DEAD022E3F;
	Fri, 28 Aug 2020 15:56:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 11DAD1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Aug 2020 15:56:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0A86E22920
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Aug 2020 15:56:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SP6svYVqwsHW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Aug 2020 15:56:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
 [129.97.134.17])
 by silver.osuosl.org (Postfix) with ESMTPS id C3F4020378
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Aug 2020 15:56:17 +0000 (UTC)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id 4D92B46052C; Fri, 28 Aug 2020 11:56:16 -0400 (EDT)
Date: Fri, 28 Aug 2020 11:56:16 -0400
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Message-ID: <20200828155616.3sd2ivrml2gpcvod@csclub.uwaterloo.ca>
References: <20200827183039.hrfnb63cxq3pmv4z@csclub.uwaterloo.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200827183039.hrfnb63cxq3pmv4z@csclub.uwaterloo.ca>
User-Agent: NeoMutt/20170113 (1.7.2)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Subject: Re: [Intel-wired-lan] VRRP not working on i40e X722 S2600WFT
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 27, 2020 at 02:30:39PM -0400, Lennart Sorensen wrote:
> I have hit a new problem with the X722 chipset (Intel R1304WFT server).
> VRRP simply does not work.
> 
> When keepalived registers a vmac interface, and starts transmitting
> multicast packets with the vrp message, it never receives those packets
> from the peers, so all nodes think they are the master.  tcpdump shows
> transmits, but no receives.  If I stop keepalived, which deletes the
> vmac interface, then I start to receive the multicast packets from the
> other nodes.  Even in promisc mode, tcpdump can't see those packets.
> 
> So it seems the hardware is dropping all packets with a source mac that
> matches the source mac of the vmac interface, even when the destination
> is a multicast address that was subcribed to.  This is clearly not
> proper behaviour.
> 
> I tried a stock 5.8 kernel to check if a driver update helped, and updated
> the nvm firware to the latest 4.10 (which appears to be over a year old),
> and nothing changes the behaviour at all.
> 
> Seems other people have hit this problem too:
> http://mails.dpdk.org/archives/users/2018-May/003128.html
> 
> Unless someone has a way to fix this, we will have to change away from
> this hardware very quickly.  The IPsec NAT RSS defect we could tolerate
> although didn't like, while this is just unworkable.
> 
> Quite frustrated by this.  Intel network hardware was always great,
> how did the X722 make it out in this state.

Another case with the same problem on an X710:

https://www.talkend.net/post/13256.html

-- 
Len Sorensen
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
