Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB4510F62
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 May 2019 00:53:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0648E22794;
	Wed,  1 May 2019 22:53:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B8qcdEpn7b-E; Wed,  1 May 2019 22:53:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E3D6D3019D;
	Wed,  1 May 2019 22:53:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D6DA1BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 May 2019 22:53:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 17DE522794
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 May 2019 22:53:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bZsNZ2SRvVVM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 May 2019 22:53:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
 [209.85.166.177])
 by silver.osuosl.org (Postfix) with ESMTPS id 08D5E221CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 May 2019 22:53:09 +0000 (UTC)
Received: by mail-it1-f177.google.com with SMTP id l10so181644iti.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 01 May 2019 15:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lCEGcM9PnIt5DAYHqfDvg1iDBkVs7Z1DrSbtLd5SG2M=;
 b=ntOlckQi4iR3uGuDC5pJIo3d5523IFnSuj81ISLxfzA3r4xxX+etQ4zuELBvLRjKre
 JDeIZpfWH3a8qB4AvTEj0aW9GkmH0nonNaueJbPUJK8uK7HfHKtOmk1qfcrmtxrXNyh8
 fX0XfC+0rDGoTL/0mAcupssVxaVSvf5P0NR41UeWM2bcLIJeV5DUaWcmU0Px51R6k8pp
 4PRSQU6AFZv55KwPpnmJieSl62W7dcrkkjNDsMxzvZGkEtLxNpSrwxjqkc+tTDa+uvDl
 3KAfHnohf3JO/afDYCAbsadnB2cuGekSqZBMnDKgOht7jAFPuva80/48DdPZwR5yVeN7
 j5dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lCEGcM9PnIt5DAYHqfDvg1iDBkVs7Z1DrSbtLd5SG2M=;
 b=DavPV7MHh8N/r8rckye5ZWQ5ybRj/RODtwT51HrOmBqf8lxdqpGD6jianlCfFigxgB
 PrvLrKHGodEyfJz6VHFhaUqF1/tJHwphVFp+bPumDtg5VCEmWQzluR1O/GoNU6vmAXGI
 6NgAbUWoeGmfoFxPnV8iydGppTT9UpdqEHswrIhaoFeLQPSlqoIs/nL2HNfrrWIRY/XH
 JGlt4fnibL42l/PX27769gAHbzxUQmjFAt6O1lH3cLur5VzTOdbd49GUtFnRwwOhrkVG
 NULOHh4naowfdul6RTcYLykllS66t2U9bPRu3oZYVPFTfI/8t5B8UCXgJslrpdEDtAlo
 INFA==
X-Gm-Message-State: APjAAAXjDl5NH0qSjCSthwkOk64ahaj/oGuppt6x346gYapvweP7kdPo
 JbwrKYioSHKhD34RMR5cNRS67efOjaYKbfM0enA=
X-Google-Smtp-Source: APXvYqyHYnoL+gFdKKiqsyQ2eMdhe4z44cQFYnBsLQVPQYlTyAkoFVh4+N+atg7Zjzh/SfjkuofB7GR6P0BdkkctBJI=
X-Received: by 2002:a24:ce44:: with SMTP id v65mr91304itg.146.1556751188074;
 Wed, 01 May 2019 15:53:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190501205215.ptoi2czhklte5jbm@csclub.uwaterloo.ca>
In-Reply-To: <20190501205215.ptoi2czhklte5jbm@csclub.uwaterloo.ca>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 1 May 2019 15:52:57 -0700
Message-ID: <CAKgT0UczVvREiXwde6yJ8_i9RT2z7FhenEutXJKW8AmDypn_0g@mail.gmail.com>
To: Lennart Sorensen <lsorense@csclub.uwaterloo.ca>
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

On Wed, May 1, 2019 at 2:03 PM Lennart Sorensen
<lsorense@csclub.uwaterloo.ca> wrote:
>
> We have hit a strange problem with RSS on the X722 on our new servers
> (S2600WFT based).
>
> The RSS hash is distributing most packets across cores quite nicely, with
> one exception.  ESP encapsulated in UDP is always going to queue 0 no
> matter what the hash key is set to or how many cores have queues assigned.
> So if terminating IPsec tunnels that are using NAT-Traversal, all packets
> arrive on the same core, which clearly isn't good for scalability.
> Other UDP packets are fine, TCP is fine, ICMP, ESP, etc have no problem
> that we have seen, only the ESP in UDP packets.
>
> Given the packets are UDP packets I would have hoped they would just
> be distributed using the source and destination ip and port values as
> other UDP packets seem to be, but they are not.  I vaguely suspect the
> UDP tunnel handling support the card has for this since it claims to
> use the internal packet's values for RSS rather than the UDP packet
> itself for certain supported types of UDP encapsulated IP traffic, but
> not ESP in UDP, so perhaps it sees an IP packet inside a UDP packet,
> and decides to try and parse it instead, doesn't know how to handle it
> and stops without assigning any RSS value to the packet at all rather
> than falling back to treating it as a plain UDP packet.  But that's just
> guessing based on the documentation of the hardware capabilities.
>
> Here is an example of a packet that always hits queue 0:
>
> 14:48:09.014360 54:ee:75:30:f1:e1 > a4:bf:01:4e:0c:87, ethertype IPv4 (0x0800), length 174: (tos 0x0, ttl 64, id 3312, offset 0, flags [DF], proto UDP (17), length 160)
>     1.99.99.2.4500 > 1.99.99.1.4500: [no cksum] UDP-encap: ESP(spi=0xac11cadf,seq=0x480), length 132
>         0x0000:  4500 00a0 0cf0 4000 4011 6494 0163 6302  E.....@.@.d..cc.
>         0x0010:  0163 6301 1194 1194 008c 0000 ac11 cadf  .cc.............
>         0x0020:  0000 0480 901d 3b39 e884 0616 fed4 3e37  ......;9......>7
>         0x0030:  bb67 bca2 adac e519 c7a9 ced9 00bf 263e  .g............&>
>         0x0040:  28a6 ba38 1e8c e6e3 bbf9 e093 1c49 8154  (..8.........I.T
>         0x0050:  0d66 c1d5 2416 f4d2 26ec f5a1 773f 4ae2  .f..$...&...w?J.
>         0x0060:  8e26 0ed8 0e5f daab 06b2 aa51 2f2f e16e  .&..._.....Q//.n
>         0x0070:  22ca dd94 f499 027b 11d0 de7b 4d9d 7af1  "......{...{M.z.
>         0x0080:  f468 ae0d ad41 5c96 577d 7b44 1cc4 0ba3  .h...A\.W}{D....
>         0x0090:  9ff7 142f b159 c9d0 38e1 c460 120f f4bb  .../.Y..8..`....
> 14:48:09.014439 a4:bf:01:4e:0c:87 > 54:ee:75:30:f1:e1, ethertype IPv4 (0x0800), length 174: (tos 0x0, ttl 64, id 43796, offset 0, flags [none], proto UDP (17), length 160)
>     1.99.99.1.4500 > 1.99.99.2.4500: [no cksum] UDP-encap: ESP(spi=0x47f5919c,seq=0x480), length 132
>         0x0000:  4500 00a0 ab14 0000 4011 0670 0163 6301  E.......@..p.cc.
>         0x0010:  0163 6302 1194 1194 008c 0000 47f5 919c  .cc.........G...
>         0x0020:  0000 0480 106b cafb 14ee f75b 3533 16fb  .....k.....[53..
>         0x0030:  87f5 9d90 a73b 8daf 481f 22b7 2b30 b482  .....;..H.".+0..
>         0x0040:  a330 1fe4 59da a394 b48b ac77 5a96 dfac  .0..Y......wZ...
>         0x0050:  4798 793a ca7e 1af2 a9a8 2f7b 9327 d5b9  G.y:.~..../{.'..
>         0x0060:  f8d0 e761 c7b3 a85c c843 ec25 62b2 e083  ...a...\.C.%b...
>         0x0070:  f0d5 1097 736b 051a b15d e7de 7f0e b5b7  ....sk...]......
>         0x0080:  209b 4d1d af37 c1a1 09a0 a6c9 71cf 7d54  ..M..7......q.}T
>         0x0090:  55c3 2797 e622 581f 09cf 9483 2ba5 e64a  U.'.."X.....+..J
>
> This was done on 4.19.28 kernel with the i40e driver in that kernel with
> libreswan for IPsec using netkey in the kernel and nat-traversal in use.
> The packets are a ping echo and reply pair.  NVM version 3.49 and 4.00
> tried so far.
>
> No other network interfaces we have used have had this problem.  RSS has
> always just worked until now.
>
> --
> Len Sorensen

I'm not sure how RSS will do much for you here. Basically you only
have the source IP address as your only source of entropy when it
comes to RSS since the destination IP should always be the same if you
are performing a server role and terminating packets on the local
system and as far as the ports in your example you seem to only be
using 4500 for both the source and the destination.

In your testing are you only looking at a point to point connection
between two systems, or do you have multiple systems accessing the
system you are testing? I ask as the only way this should do any
traffic spreading via RSS would be if the source IPs are different and
that would require multiple client systems accessing the server.

In the case of other encapsulation types over UDP, such as VXLAN, I
know that a hash value is stored in the UDP source port location
instead of the true source port number. This allows the RSS hashing to
occur on this extra information which would allow for a greater
diversity in hash results. Depending on how you are generating the ESP
encapsulation you might look at seeing if it would be possible to have
a hash on the inner data used as the UDP source port in the outgoing
packets. This would help to resolve this sort of issue.

Thanks.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
