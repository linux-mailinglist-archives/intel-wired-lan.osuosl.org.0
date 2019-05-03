Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3C5130FE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 May 2019 17:14:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 867CD30FAF;
	Fri,  3 May 2019 15:14:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9E25FCrL0C2I; Fri,  3 May 2019 15:14:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 61D0422D33;
	Fri,  3 May 2019 15:14:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 31C471BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 15:14:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 28579883AC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 15:14:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wrnoZwnpc8rN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 May 2019 15:14:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
 [129.97.134.17])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 937288796D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 15:14:26 +0000 (UTC)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id 60E64461D3A; Fri,  3 May 2019 11:14:21 -0400 (EDT)
Date: Fri, 3 May 2019 11:14:21 -0400
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20190503151421.akvmu77lghxcouni@csclub.uwaterloo.ca>
References: <20190501205215.ptoi2czhklte5jbm@csclub.uwaterloo.ca>
 <CAKgT0UczVvREiXwde6yJ8_i9RT2z7FhenEutXJKW8AmDypn_0g@mail.gmail.com>
 <20190502151140.gf5ugodqamtdd5tz@csclub.uwaterloo.ca>
 <CAKgT0Uc_OUAcPfRe6yCSwpYXCXomOXKG2Yvy9c1_1RJn-7Cb5g@mail.gmail.com>
 <20190502171636.3yquioe3gcwsxlus@csclub.uwaterloo.ca>
 <CAKgT0Ufk8LXMb9vVWfvgbjbQFKAuenncf95pfkA0P1t-3+Ni_g@mail.gmail.com>
 <20190502175513.ei7kjug3az6fe753@csclub.uwaterloo.ca>
 <20190502185250.vlsainugtn6zjd6p@csclub.uwaterloo.ca>
 <CAKgT0Uc_YVzns+26-TL+hhmErqG4_w4evRqLCaa=7nME7Zq+Vg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKgT0Uc_YVzns+26-TL+hhmErqG4_w4evRqLCaa=7nME7Zq+Vg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Subject: Re: [Intel-wired-lan] i40e X722 RSS problem with NAT-Traversal
 IPsec packets
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
Cc: Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 02, 2019 at 01:59:46PM -0700, Alexander Duyck wrote:
> If I recall correctly RSS is only using something like the lower 9
> bits (indirection table size of 512) of the resultant hash on the
> X722, even fewer if you have fewer queues that are a power of 2 and
> happen to program the indirection table in a round robin fashion. So
> for example on my system setup with 32 queues it is technically only
> using the lower 5 bits of the hash.
> 
> One issue as a result of that is that you can end up with swaths of
> bits that don't really seem to impact the hash all that much since it
> will never actually change those bits of the resultant hash. In order
> to guarantee that every bit in the input impacts the hash you have to
> make certain you have to gaps in the key wider than the bits you
> examine in the final hash.
> 
> A quick and dirty way to verify that the hash key is part of the issue
> would be to use something like a simple repeating value such as AA:55
> as your hash key. With something like that every bit you change in the
> UDP port number should result in a change in the final RSS hash for
> queue counts of 3 or greater. The downside is the upper 16 bits of the
> hash are identical to the lower 16 so the actual hash value itself
> isn't as useful.

OK I set the hkey to
aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55
and still only see queue 0 and 2 getting hit with a couple of dozen
different UDP port numbers I picked.  Changing the hash with ethtool to
that didn't even move where the tcp packets for my ssh connection are
going (they are always on queue 2 it seems).

Does it just not hash UDP packets correctly?  Is it even doing RSS?
(the register I checked claimed it is).

This system has 40 queues assigned by default since that is how many
CPUs there are.  Changing it to a lower number didn't make a difference
(I tried 32 and 8).

-- 
Len Sorensen
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
