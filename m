Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE70C1BB5C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2019 18:55:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C0F88550D;
	Mon, 13 May 2019 16:55:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hd8SDbAyDlQ6; Mon, 13 May 2019 16:55:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F92885507;
	Mon, 13 May 2019 16:55:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C5E201BF847
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2019 16:55:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AC62186FAE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2019 16:55:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lfle2pMM0c-A for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2019 16:55:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
 [129.97.134.17])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5F5D586F8D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2019 16:55:52 +0000 (UTC)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id AFB7A460F6A; Mon, 13 May 2019 12:55:47 -0400 (EDT)
Date: Mon, 13 May 2019 12:55:47 -0400
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20190513165547.alkkgcsdelaznw6v@csclub.uwaterloo.ca>
References: <20190502151140.gf5ugodqamtdd5tz@csclub.uwaterloo.ca>
 <CAKgT0Uc_OUAcPfRe6yCSwpYXCXomOXKG2Yvy9c1_1RJn-7Cb5g@mail.gmail.com>
 <20190502171636.3yquioe3gcwsxlus@csclub.uwaterloo.ca>
 <CAKgT0Ufk8LXMb9vVWfvgbjbQFKAuenncf95pfkA0P1t-3+Ni_g@mail.gmail.com>
 <20190502175513.ei7kjug3az6fe753@csclub.uwaterloo.ca>
 <20190502185250.vlsainugtn6zjd6p@csclub.uwaterloo.ca>
 <CAKgT0Uc_YVzns+26-TL+hhmErqG4_w4evRqLCaa=7nME7Zq+Vg@mail.gmail.com>
 <20190503151421.akvmu77lghxcouni@csclub.uwaterloo.ca>
 <CAKgT0UcV2wCr6iUYktZ+Bju_GNpXKzR=M+NLfKhUsw4bsJSiyA@mail.gmail.com>
 <20190503205935.bg45rsso5jjj3gnx@csclub.uwaterloo.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503205935.bg45rsso5jjj3gnx@csclub.uwaterloo.ca>
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

On Fri, May 03, 2019 at 04:59:35PM -0400, Lennart Sorensen wrote:
> On Fri, May 03, 2019 at 10:19:47AM -0700, Alexander Duyck wrote:
> > The TCP flow could be bypassing RSS and may be using ATR to decide
> > where the Rx packets are processed. Now that I think about it there is
> > a possibility that ATR could be interfering with the queue selection.
> > You might try disabling it by running:
> >     ethtool --set-priv-flags <iface> flow-director-atr off
> 
> Hmm, I thought I had killed ATR (I certainly meant to), but it appears
> I had not.  I will experiment to see if that makes a difference.
> 
> > The problem is RSS can be bypassed for queue selection by things like
> > ATR which I called out above. One possibility is that if the
> > encryption you were using was leaving the skb->encapsulation flag set,
> > and the NIC might have misidentified the packets as something it could
> > parse and set up a bunch of rules that were rerouting incoming traffic
> > based on outgoing traffic. Disabling the feature should switch off
> > that behavior if that is in fact the case.
> > 
> > You are probably fine using 40 queues. That isn't an even power of two
> > so it would actually improve the entropy a bit since the lower bits
> > don't have a many:1 mapping to queues.
> 
> I will let you know Monday how my tests go with atr off.  I really
> thought that was off already since it was supposed to be.  We always
> try to turn that off because it does not work well.

OK it took a while to try a bunch of stuff to make sure ATR really really
was off.

I still see the problem it seems.

# ethtool --show-priv-flags eth2
Private flags for eth2:
MFP              : off
LinkPolling      : off
flow-director-atr: off
veb-stats        : off
hw-atr-eviction  : on
legacy-rx        : off

# ethtool -i eth2
driver: i40e
version: 2.1.7-k
firmware-version: 4.00 0x80001577 1.1767.0
expansion-rom-version: 
bus-info: 0000:3d:00.1
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes


Here are two packets that for some reason both go to queue 0 which
seems odd.  As far as I can tell all of the packets for UDP port 4500
traffic from any IP is going to queue 0.

UDP from 10.49.1.50:4500 to 10.49.1.1:4500 encapsulating ESP:

a4bf 014e 0c88 001f 45ff f410 0800 45e0 
0060 166e 4000 4011 0b1b 0af9 0132 0af9 
0101 1194 1194 004c 0000 0000 0201 0000 
0000 4eaf 2f76 58cd aae0 4d92 8cb7 0835 
1141 7a23 9f06 f323 b816 1a2b c88d 322c 
5f16 d4a6 ba72 7c89 2258 9d20 085e d6ed 
c7a4 5cc1 3ef2 0753 783d b691 e9d6 

UDP from 10.49.1.51:4500 to 10.49.1.1:4500 encapsulating ESP:

a4bf 014e 0c88 20f3 99ae c688 0800 45e0 
0060 1671 4000 4011 0b17 0af9 0133 0af9 
0101 1194 1194 004c 0000 0000 0200 0000 
0000 4ec5 253f 27f1 7fdd 4d82 0697 bef2 
45bd 281f 8ecf ac4f 06ed 79ba 3cbb 5eaf 
494b 146e a013 8b93 1c38 8aef da3f a73d 
6f13 5f80 e946 82e2 7da7 21e8 9d03 


# ethtool -x eth2 
RX flow hash indirection table for eth2 with 12 RX ring(s):
    0:      0     1     2     3     4     5     6     7
    8:      8     9    10    11     0     1     2     3
   16:      4     5     6     7     8     9    10    11
...
  488:      8     9    10    11     0     1     2     3
  496:      4     5     6     7     8     9    10    11
  504:      0     1     2     3     4     5     6     7
RSS hash key:
60:56:66:39:8e:70:46:02:5d:33:5e:9c:5f:f6:fa:9d:ac:50:63:7c:ca:01:23:22:07:a3:8a:23:98:fd:38:5b:74:96:7e:72:0c:aa:83:fc:10:aa:6d:35:bb:8c:4e:eb:46:03:07:6a

Changing the key to:

aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55:aa:55

makes no change in the queue the packets are going to.

-- 
Len Sorensen
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
