Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6D577F96F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 16:42:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B43F5418BD;
	Thu, 17 Aug 2023 14:42:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B43F5418BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692283338;
	bh=e5DyPqCTcTJxm5rb98bYfUKX3aCH/A++LsQBz3aSsdo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L27F6gfbrElmSpBQF36bkj3DrxoZGQmYKjGaJNje4H0BknS8URjbtFSPWlRwP2Nkp
	 bFOBJ/ixh7bMzSzOcr7I8FRE4o6t7GJEsucK423wY5mXMdCH/iXvlaV576ORxwZ9P4
	 SrmnrazWVMNnenpO+AlSIvyTBfMJ/GYDxCJVUwCo7phJyqDvx/EL59Y7YcyU4GMg1V
	 I7JConfxMnqjB2U7+TTJIT3bklQEikiWJLXS44k36ukDnz6POzZOBXwx+M2kcnW9aZ
	 sywHHF+3l4T18pWycTiaEia/nMmxHuQ0n0ANPBl+p3aRmkOTaNULAabnIyqK+kiqXS
	 RsDGW2AH8W9+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NrA_BxkFA8L8; Thu, 17 Aug 2023 14:42:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9819240591;
	Thu, 17 Aug 2023 14:42:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9819240591
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E79171BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:42:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C3DCD6154B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:42:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3DCD6154B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g4jHiMVucBWE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 14:42:12 +0000 (UTC)
X-Greylist: delayed 309 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 17 Aug 2023 14:42:11 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2402607A3
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A2402607A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:42:11 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-6-t1ZLIpC4P7uCuSrIMZoxRA-1; Thu, 17 Aug 2023 15:35:27 +0100
X-MC-Unique: t1ZLIpC4P7uCuSrIMZoxRA-1
Received: from AcuMS.Aculab.com (10.202.163.4) by AcuMS.aculab.com
 (10.202.163.4) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Thu, 17 Aug
 2023 15:35:23 +0100
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.048; Thu, 17 Aug 2023 15:35:23 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Przemek Kitszel' <przemyslaw.kitszel@intel.com>, Kees Cook
 <keescook@chromium.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH net-next v3 1/7] overflow: add DEFINE_FLEX() for on-stack
 allocs
Thread-Index: AQHZ0EteSw2XTdntxkSn8fWObNOCVK/uiVWQ
Date: Thu, 17 Aug 2023 14:35:23 +0000
Message-ID: <1f9cb37f21294c31a01af62fd920f070@AcuMS.aculab.com>
References: <20230816140623.452869-1-przemyslaw.kitszel@intel.com>
 <20230816140623.452869-2-przemyslaw.kitszel@intel.com>
In-Reply-To: <20230816140623.452869-2-przemyslaw.kitszel@intel.com>
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, Steven
 Zou <steven.zou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel
> Sent: Wednesday, August 16, 2023 3:06 PM
> 
> Using underlying array for on-stack storage lets us to declare
> known-at-compile-time structures without kzalloc().

Isn't DEFINE_FLEX() a bit misleading?
One thing it isn't is 'flexible' since it has a fixed size.

> +#define DEFINE_FLEX(type, name, member, count)					\
> +	union {									\
> +		u8 bytes[struct_size_t(type, member, count)];			\
> +		type obj;							\
> +	} name##_u __aligned(_Alignof(type)) = {};				\

You shouldn't need the _Alignof() it is the default.
I'm not sure you should be forcing the memset() either.

> +	type *name = (type *)&name##_u

How about?
	type *const name = &name_##_u.obj;

You might want to add:
	Static_assert(is_constexpr(count), "DEFINE_FLEX: non-constant count " #count);

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
