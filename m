Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6136D1222F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 May 2019 20:53:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0FBD122DB0;
	Thu,  2 May 2019 18:53:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lbuwhwULxLgJ; Thu,  2 May 2019 18:53:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CDE802291B;
	Thu,  2 May 2019 18:53:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A338F1BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 18:53:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7192587A12
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 18:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NjqIxV1r0GGr for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 May 2019 18:52:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
 [129.97.134.17])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8BC4486FAD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 18:52:55 +0000 (UTC)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id CB101461D3A; Thu,  2 May 2019 14:52:50 -0400 (EDT)
Date: Thu, 2 May 2019 14:52:50 -0400
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20190502185250.vlsainugtn6zjd6p@csclub.uwaterloo.ca>
References: <20190501205215.ptoi2czhklte5jbm@csclub.uwaterloo.ca>
 <CAKgT0UczVvREiXwde6yJ8_i9RT2z7FhenEutXJKW8AmDypn_0g@mail.gmail.com>
 <20190502151140.gf5ugodqamtdd5tz@csclub.uwaterloo.ca>
 <CAKgT0Uc_OUAcPfRe6yCSwpYXCXomOXKG2Yvy9c1_1RJn-7Cb5g@mail.gmail.com>
 <20190502171636.3yquioe3gcwsxlus@csclub.uwaterloo.ca>
 <CAKgT0Ufk8LXMb9vVWfvgbjbQFKAuenncf95pfkA0P1t-3+Ni_g@mail.gmail.com>
 <20190502175513.ei7kjug3az6fe753@csclub.uwaterloo.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502175513.ei7kjug3az6fe753@csclub.uwaterloo.ca>
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

On Thu, May 02, 2019 at 01:55:13PM -0400, Lennart Sorensen wrote:
> Here is the same packets as before with the link level header included
> (I forgot to use -XX rather than -X):
> 
> 13:43:49.081567 54:ee:75:30:f1:e1 > a4:bf:01:4e:0c:87, ethertype IPv4 (0x0800), length 174: (tos 0x0, ttl 64, id 21783, offset 0, flags [DF], proto UDP (17), length 160)
>     1.99.99.2.4500 > 1.99.99.1.4500: [no cksum] UDP-encap: ESP(spi=0x8de82290,seq=0x6a56), length 132
>         0x0000:  a4bf 014e 0c87 54ee 7530 f1e1 0800 4500  ...N..T.u0....E.
>         0x0010:  00a0 5517 4000 4011 1c6d 0163 6302 0163  ..U.@.@..m.cc..c
>         0x0020:  6301 1194 1194 008c 0000 8de8 2290 0000  c..........."...
>         0x0030:  6a56 72da 0734 52f6 406e 9346 f946 c698  jVr..4R.@n.F.F..
>         0x0040:  a38c 280c 94da 53e1 91e0 35bf 812a 4500  ..(...S...5..*E.
>         0x0050:  6003 ca7d 6872 a50b d41a 5c4d 7c22 3fb8  `..}hr....\M|"?.
>         0x0060:  56d8 2a0f bc3f d3a6 5853 682c 914c c1b1  V.*..?..XSh,.L..
>         0x0070:  c5c3 94e8 4789 d8b4 4ab4 e5f9 d20a e5ef  ....G...J.......
>         0x0080:  de1d 05dd e98a 996b 5c11 6657 b667 6af1  .......k\.fW.gj.
>         0x0090:  2a97 694b 16de 74e2 f8fe 13a3 d45e e3e9  *.iK..t......^..
>         0x00a0:  f0b1 b83b 99e3 55cb b40b 5ba8 9c23       ...;..U...[..#
> 13:43:49.081658 a4:bf:01:4e:0c:87 > 54:ee:75:30:f1:e1, ethertype IPv4 (0x0800), length 174: (tos 0x0, ttl 64, id 44552, offset 0, flags [none], proto UDP (17), length 160)
>     1.99.99.1.4500 > 1.99.99.2.4500: [no cksum] UDP-encap: ESP(spi=0x1d4ecfdf,seq=0x6a56), length 132
>         0x0000:  54ee 7530 f1e1 a4bf 014e 0c87 0800 4500  T.u0.....N....E.
>         0x0010:  00a0 ae08 0000 4011 037c 0163 6301 0163  ......@..|.cc..c
>         0x0020:  6302 1194 1194 008c 0000 1d4e cfdf 0000  c..........N....
>         0x0030:  6a56 28ca 4809 8933 911d f2be 4510 e757  jV(.H..3....E..W
>         0x0040:  3885 7d26 5238 8c58 38e3 6c07 2f8e 335a  8.}&R8.X8.l./.3Z
>         0x0050:  6d48 2a72 4619 e8a3 c421 bc54 48b2 6239  mH*rF....!.TH.b9
>         0x0060:  5e07 7e89 a68e 0161 4e6a 5b6f 8b89 9f53  ^.~....aNj[o...S
>         0x0070:  4c40 1c6c d159 60f8 68e7 24db 8b21 2ec2  L@.l.Y`.h.$..!..
>         0x0080:  4b67 9b83 643b b0ac 6e2d bf4f 1ee1 9508  Kg..d;..n-.O....
>         0x0090:  d1bd dcd4 74ee e4dc 78d0 578a 5905 1f4d  ....t...x.W.Y..M
>         0x00a0:  74be e643 910b b4d3 f428 8822 e22b       t..C.....(.".+
> 
> I will try to see what I can do with netperf.

Hmm, maybe UDP isn't doing as well as I thought.

Playing with packit doing this:

packit -t UDP -d 1.99.99.1 -D 32432 -S 4500 -i enp0s25 -h -p "0x 00 11 22 33 44 55 66 77 88 99 00 11 22 33 44 55 66 77 88 99 00 11 22 33 44 55 66 77 88 99" -c 5

I have played with the source and destination port numbers, and so far
I have only managed to hit queues 0, 1 and 2 (mostly 0 and 2).  No port
number I have tried has made it hit any other queue.  That is weird.
Making random changes ought to distribute more than that.  And changing
the hkey certainly ought to make a difference, and so far it doesn't
seem to for these packets (I know I saw icmp move around just fine before
when changing the hkey).

-- 
Len Sorensen
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
