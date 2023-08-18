Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF87178062C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 09:14:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68218421C5;
	Fri, 18 Aug 2023 07:14:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68218421C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692342866;
	bh=qgmFWtFVqPa5OLq/9W/+//9MIU8aWink+NGl6V/CMVY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9Wfm/Nx5b6AL++g6gsesglXORke/8yaQyBamcVHuJ8st/nUdTMMaPkS9s4GcRvJ4B
	 SeVkYZW3Xhy+G1+TuQGt2rbafi+daSmgybbsXSg/qqWIGrCAgBtUBBdVbLFg7c5mFv
	 o24AJ+dfo4GNjnLzz2VPsF1+aoJta1syWoy1iA8etZ5t6dWsoBq4V1IBzeDWLQUN3I
	 aVBMMkvbCpMKX+JTUPFVTbfXl8Kdl0c80bLj2lYyT2ezk0hF5UQSydQrmrAuXBmkMV
	 C890bX3tbCUvpYcrYIDM63tUUEh4pI8KcVTamM+9YawzRxLcBcS6kGtvbC2urz320D
	 5RJ/i4Q4YEvIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BKRUDc3_3pJO; Fri, 18 Aug 2023 07:14:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7FE641B80;
	Fri, 18 Aug 2023 07:14:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7FE641B80
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D32C1BF378
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 07:14:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6424A60E81
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 07:14:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6424A60E81
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8C2Btes3-9bH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 07:14:18 +0000 (UTC)
X-Greylist: delayed 59926 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 18 Aug 2023 07:14:17 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1B6760E5D
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.85.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E1B6760E5D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 07:14:17 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-74-ikIsBU2DMkidrrqivs1qkQ-1; Fri, 18 Aug 2023 08:14:14 +0100
X-MC-Unique: ikIsBU2DMkidrrqivs1qkQ-1
Received: from AcuMS.Aculab.com (10.202.163.6) by AcuMS.aculab.com
 (10.202.163.6) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Fri, 18 Aug
 2023 08:14:12 +0100
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.048; Fri, 18 Aug 2023 08:14:12 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Kees Cook' <keescook@chromium.org>
Thread-Topic: [PATCH net-next v3 1/7] overflow: add DEFINE_FLEX() for on-stack
 allocs
Thread-Index: AQHZ0EteSw2XTdntxkSn8fWObNOCVK/uiVWQgAAd6ICAAP4u4A==
Date: Fri, 18 Aug 2023 07:14:11 +0000
Message-ID: <e8e109712a1b42288951c958d2f503a5@AcuMS.aculab.com>
References: <20230816140623.452869-1-przemyslaw.kitszel@intel.com>
 <20230816140623.452869-2-przemyslaw.kitszel@intel.com>
 <1f9cb37f21294c31a01af62fd920f070@AcuMS.aculab.com>
 <202308170957.F511E69@keescook>
In-Reply-To: <202308170957.F511E69@keescook>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/7] overflow: add
 DEFINE_FLEX() for on-stack allocs
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
Cc: 'Przemek Kitszel' <przemyslaw.kitszel@intel.com>, Steven
 Zou <steven.zou@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kees Cook
> Sent: Thursday, August 17, 2023 6:00 PM
> 
> On Thu, Aug 17, 2023 at 02:35:23PM +0000, David Laight wrote:
> > From: Przemek Kitszel
> > > Sent: Wednesday, August 16, 2023 3:06 PM
...
> > > +#define DEFINE_FLEX(type, name, member, count)					\
> > > +	union {									\
> > > +		u8 bytes[struct_size_t(type, member, count)];			\
> > > +		type obj;							\
> > > +	} name##_u __aligned(_Alignof(type)) = {};				\
> >
> > You shouldn't need the _Alignof() it is the default.
> 
> In the sense that since "type" is in the union, it's okay?

The alignment of the union is the larger of the alignments
of all its members.
Which is what you want.

> > I'm not sure you should be forcing the memset() either.
> 
> This already got discussed: better to fail safe.

Perhaps call it DEFINE_FLEX_Z() to make this clear and
give the option for a non-zeroing version later.
Not everyone wants the expense of zeroing everything.

..
> > You might want to add:
> > 	Static_assert(is_constexpr(count), "DEFINE_FLEX: non-constant count " #count);
> 
> That would be nice, though can Static_assert()s live in the middle of
> variable definitions?

I checked and it is fine.
(I double-checked by adding a statement and getting an error.)

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
