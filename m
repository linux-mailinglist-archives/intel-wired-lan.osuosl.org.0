Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B5D193DA4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2020 12:09:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B6D488DE8;
	Thu, 26 Mar 2020 11:09:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iWypsqDcRWNC; Thu, 26 Mar 2020 11:09:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A018288E0B;
	Thu, 26 Mar 2020 11:09:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E8D611BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 11:08:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DFC8788DE8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 11:08:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FQ36b4vEVdJn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2020 11:08:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 315A788DDA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 11:08:57 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-14-CLALoYrLOxepDcGv6nVzGw-1; Thu, 26 Mar 2020 11:08:52 +0000
X-MC-Unique: CLALoYrLOxepDcGv6nVzGw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 26 Mar 2020 11:08:52 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Thu, 26 Mar 2020 11:08:52 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: "'jeffrey.t.kirsher@intel.com'" <jeffrey.t.kirsher@intel.com>, "Network
 Development" <netdev@vger.kernel.org>, intel-wired-lan
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net 1/1] e1000e: Stop tx/rx setup spinning for upwards of
 300us.
Thread-Index: AdXxfY9+FmJkPOq/QT2LrEdhM24vhgA0bfSABEOl6KA=
Date: Thu, 26 Mar 2020 11:08:52 +0000
Message-ID: <ed99e7c34aab4b0fafa20fc449e77510@AcuMS.aculab.com>
References: <6ef1e257642743a786c8ddd39645bba3@AcuMS.aculab.com>
 <c84d4055e13f30edf7b79086c9ed8d7d1fe6523b.camel@intel.com>
In-Reply-To: <c84d4055e13f30edf7b79086c9ed8d7d1fe6523b.camel@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Subject: Re: [Intel-wired-lan] [PATCH net 1/1] e1000e: Stop tx/rx setup
 spinning for upwards of 300us.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jeff Kirsher
> Sent: 04 March 2020 18:04
> On Tue, 2020-03-03 at 17:06 +0000, David Laight wrote:
> > Instead of spinning waiting for the ME to be idle defer the ring
> > tail updates until one of the following:
> > - The next update for that ring.
> > - The receive frame processing.
> > - The next timer tick.
> >
> > Reduce the delay between checks for the ME being idle from 50us
> > to uus.
> >
> > Part fix for bdc125f7.
> >
> > Signed-off-by: David Laight <david.laight@aculab.com>
> 
> Added intel-wired-lan@lists.osuosl.org mailing list, so the right
> people can review your patch.

I don't see any sign of anyone looking at this.
Is the code so bad everyone has buried their head in the sand?

Am I right in thinking that the actual hardware problem is
that PCIe writes are 'posted' in the hardware and then lost
if the ME does a write while the PCIe write is still pending?

In which case a much simpler patch that does a readback after
every write and retries if the value is different will solve
the problem without ever needing a delay().

The only 'problem' register would be the interrupt mask
which the hardware appears to change itself.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
