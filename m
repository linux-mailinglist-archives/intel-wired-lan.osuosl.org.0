Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE39C27983A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Sep 2020 12:09:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8BC1786C6D;
	Sat, 26 Sep 2020 10:09:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 65HAX+GrZUIq; Sat, 26 Sep 2020 10:09:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B036585CD0;
	Sat, 26 Sep 2020 10:08:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 071CD1BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Sep 2020 10:08:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E99A5873A5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Sep 2020 10:08:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bo3MwtLTqM29 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Sep 2020 10:08:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 77DE78733D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Sep 2020 10:08:53 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-239-y59-RWZIOgO1ecIgUYA2Aw-1; Sat, 26 Sep 2020 11:08:48 +0100
X-MC-Unique: y59-RWZIOgO1ecIgUYA2Aw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Sat, 26 Sep 2020 11:08:47 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Sat, 26 Sep 2020 11:08:47 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Andrew Lunn' <andrew@lunn.ch>
Thread-Topic: [PATCH v2] e1000e: Increase iteration on polling MDIC ready bit
Thread-Index: AQHWkox4cI4WCPtPmUq6IlIoeEXohal5Cn3AgAA/UYCAAWddMA==
Date: Sat, 26 Sep 2020 10:08:47 +0000
Message-ID: <1b4fadba2e204f6abd4ef6e02d84beed@AcuMS.aculab.com>
References: <20200923074751.10527-1-kai.heng.feng@canonical.com>
 <20200924150958.18016-1-kai.heng.feng@canonical.com>
 <20200924155355.GC3821492@lunn.ch>
 <8A08B3A7-8368-48EC-A2DD-B5D5F3EA94C5@canonical.com>
 <2f48175dce974ea689bfd26b9fc2245a@AcuMS.aculab.com>
 <20200925132903.GB3850848@lunn.ch>
In-Reply-To: <20200925132903.GB3850848@lunn.ch>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
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

From: Andrew Lunn
> Sent: 25 September 2020 14:29
> On Fri, Sep 25, 2020 at 08:50:30AM +0000, David Laight wrote:
> > From: Kai-Heng Feng
> > > Sent: 24 September 2020 17:04
> > ...
> > > > I also don't fully understand the fix. You are now looping up to 6400
> > > > times, each with a delay of 50uS. So that is around 12800 times more
> > > > than it actually needs to transfer the 64 bits! I've no idea how this
> > > > hardware works, but my guess would be, something is wrong with the
> > > > clock setup?
> > >
> > > It's probably caused by Intel ME. This is not something new, you can find many polling codes in
> e1000e
> > > driver are for ME, especially after S3 resume.
> > >
> > > Unless Intel is willing to open up ME, being patient and wait for a longer while is the best
> approach
> > > we got.
> >
> > There is some really broken code in the e1000e driver that affect my
> > Ivy bridge platform were it is trying to avoid hardware bugs in
> > the ME interface.
> >
> > It seems that before EVERY write to a MAC register it must check
> > that the ME isn't using the interface - and spin until it isn't.
> > This causes massive delays in the TX path because it includes
> > the write that tells the MAC engine about a new packet.
> 
> Hi David
> 
> Thanks for the information. This however does not really explain the
> issue.
> 
> The code busy loops waiting for the MDIO transaction to complete. If
> read/writes to the MAC are getting blocked, that just means less
> iterations of the loop are needed, not more, since the time to
> complete the transaction should be fixed.
> 
> If ME really is to blame, it means ME is completely hijacking the
> hardware? Stopping the clocks? Maybe doing its own MDIO transactions?
> How can you write a PHY driver if something else is also programming
> the PHY.
> 
> We don't understand what is going on here. We are just papering over
> the cracks. The commit message should say this, that the change fixes
> the symptoms but probably not the cause.

You may not have the same broken hardware as I have...

From what I could infer from the code and guess from the behaviour
I got the impression that if the ME was accessing any of the MAC
registers it was likely that writes from the kernel just got discarded.

I got the impression that a bug in the hardware was being worked
around by the ME setting a status bit before and access, waiting
a bit for the kernel to finish anything it was doing, then
doing its access and clearing the bit.

The kernel keeps having to wait for the bit to be clear.
These delays were long; sub ms - but far longer than
the rest of the code path for sending a packet.
But the code didn't check/disable pre-emption or interrupts
so the check was actually broken.
(If I removed it completely my system wouldn't boot!)

Thing is I don't want the ME.
I don't need the ME on that system.
The ME might be a security hole.
The ME breaks my system.
But I can't disable it at all.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
