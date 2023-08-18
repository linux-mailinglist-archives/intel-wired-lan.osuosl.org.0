Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8642780A79
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 12:50:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7198883051;
	Fri, 18 Aug 2023 10:50:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7198883051
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692355815;
	bh=1WdrK3x7abWnCEzBB7gAzjBf9/oWTp1FaGyFGoeGjko=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zA3tExUznsDhMUZVNzviQeuNLemomk914JBunnnNtjgZup1BtqrIpRANRwwOaLl6o
	 E0sQ4hNqPOwCrGXJLkn3Qzi2GAKULRMr0xv4LeDYcdfi2Etg3v5ME8RBEkSK8lvpwX
	 YlgJL1u6RSOUeQL0gPJJUCGLJwiqnR8J1E3rVtp6FvHwrAJrTx/M1ZAUj5SiRr8EpS
	 H1yXLiN97SmdGaiTouqODqQxP/gzT9pKUg8PXRXGjlroiQvVGafdeRYCeuTlu/Xtuy
	 DVizIc7wCk/XFjTAe0AWA5Nqwvsokmg8ZcxHXy3orAH0ZjDw6KrhRBUIyjxEbDk47B
	 38obydMwskItQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f2vtWkeFyUKU; Fri, 18 Aug 2023 10:50:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67FA582E29;
	Fri, 18 Aug 2023 10:50:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67FA582E29
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F2621BF364
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 10:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E59041866
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 10:50:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E59041866
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GHUmn5L2ZbO6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 10:50:08 +0000 (UTC)
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8436841809
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 10:50:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8436841809
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-155-VhXJfEBVOJyxXJ3mZKyu3Q-1; Fri, 18 Aug 2023 11:50:03 +0100
X-MC-Unique: VhXJfEBVOJyxXJ3mZKyu3Q-1
Received: from AcuMS.Aculab.com (10.202.163.4) by AcuMS.aculab.com
 (10.202.163.4) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Fri, 18 Aug
 2023 11:49:59 +0100
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.048; Fri, 18 Aug 2023 11:49:59 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Przemek Kitszel' <przemyslaw.kitszel@intel.com>, 'Kees Cook'
 <keescook@chromium.org>
Thread-Topic: [PATCH net-next v3 1/7] overflow: add DEFINE_FLEX() for on-stack
 allocs
Thread-Index: AQHZ0EteSw2XTdntxkSn8fWObNOCVK/uiVWQgAAd6ICAAP4u4IAAJp+AgAATRuA=
Date: Fri, 18 Aug 2023 10:49:59 +0000
Message-ID: <8c5fcd66086a4354b30f15dd488a9fe5@AcuMS.aculab.com>
References: <20230816140623.452869-1-przemyslaw.kitszel@intel.com>
 <20230816140623.452869-2-przemyslaw.kitszel@intel.com>
 <1f9cb37f21294c31a01af62fd920f070@AcuMS.aculab.com>
 <202308170957.F511E69@keescook>
 <e8e109712a1b42288951c958d2f503a5@AcuMS.aculab.com>
 <3f61b3bc-61d4-6568-9bcb-6fd50553157c@intel.com>
In-Reply-To: <3f61b3bc-61d4-6568-9bcb-6fd50553157c@intel.com>
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Steven Zou <steven.zou@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel
> Sent: Friday, August 18, 2023 11:28 AM
...
> >>> I'm not sure you should be forcing the memset() either.
> >>
> >> This already got discussed: better to fail safe.
> >
> > Perhaps call it DEFINE_FLEX_Z() to make this clear and
> > give the option for a non-zeroing version later.
> > Not everyone wants the expense of zeroing everything.
> 
> per Kees, zeroing should be removed by compiler when not needed:
> https://lore.kernel.org/intel-wired-lan/202308101128.C4F0FA235@keescook/

Expect in the most trivial cases the compiler is pretty much never
going to remove the zeroing of the data[] part.

I'm also not at all sure what happens if there is a function
call between the initialisation and any assignments.

With a bit of effort you should be able to pass the '= {}'
through into an inner #define.
Possibly with the alternative of a caller-provider
 '= { .obj = call_supplied_initialiser }'
The 'not _Z' form would pass an empty argument.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
