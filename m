Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1A611C50
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 May 2019 17:11:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E62F1866B0;
	Thu,  2 May 2019 15:11:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1es6OuHcGGbV; Thu,  2 May 2019 15:11:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D0F9866B2;
	Thu,  2 May 2019 15:11:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2CF271BF574
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 15:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 27D78880E0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 15:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 39f5pc5vHNan for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 May 2019 15:11:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
 [129.97.134.17])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E9EBA86A07
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 15:11:44 +0000 (UTC)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id 3485F461D3A; Thu,  2 May 2019 11:11:40 -0400 (EDT)
Date: Thu, 2 May 2019 11:11:40 -0400
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20190502151140.gf5ugodqamtdd5tz@csclub.uwaterloo.ca>
References: <20190501205215.ptoi2czhklte5jbm@csclub.uwaterloo.ca>
 <CAKgT0UczVvREiXwde6yJ8_i9RT2z7FhenEutXJKW8AmDypn_0g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKgT0UczVvREiXwde6yJ8_i9RT2z7FhenEutXJKW8AmDypn_0g@mail.gmail.com>
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

On Wed, May 01, 2019 at 03:52:57PM -0700, Alexander Duyck wrote:
> I'm not sure how RSS will do much for you here. Basically you only
> have the source IP address as your only source of entropy when it
> comes to RSS since the destination IP should always be the same if you
> are performing a server role and terminating packets on the local
> system and as far as the ports in your example you seem to only be
> using 4500 for both the source and the destination.

I have thousands of IPsec clients connecting.  Simply treating them as
normal UDP packets would work.  The IP address is different, and often
the port too.

> In your testing are you only looking at a point to point connection
> between two systems, or do you have multiple systems accessing the
> system you are testing? I ask as the only way this should do any
> traffic spreading via RSS would be if the source IPs are different and
> that would require multiple client systems accessing the server.

I tried changing the client IP address and the RSS hash key.  It never
changed to another queue.  Something is broken.

> In the case of other encapsulation types over UDP, such as VXLAN, I
> know that a hash value is stored in the UDP source port location
> instead of the true source port number. This allows the RSS hashing to
> occur on this extra information which would allow for a greater
> diversity in hash results. Depending on how you are generating the ESP
> encapsulation you might look at seeing if it would be possible to have
> a hash on the inner data used as the UDP source port in the outgoing
> packets. This would help to resolve this sort of issue.

Well it works on every other network card except this one.  Every other
intel card in the past we have used had no problem doing this right.

You want all the packets for a given ipsec tunnel to go to the same queue.
That is not a problem here.  What you don't want is every ipsec packet
from everyone going to the same queue (always queue 0).  So simply
treating them as UDP packets with a source and destination IP and port
would work perfectly fine.  The X722 isn't doing that.  It is always
assigning a hash value of 0 to these packets.

-- 
Len Sorensen
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
