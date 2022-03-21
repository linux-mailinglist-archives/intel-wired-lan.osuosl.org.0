Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF434E2CC5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Mar 2022 16:47:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A78E41477;
	Mon, 21 Mar 2022 15:47:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9175Np-WeZwo; Mon, 21 Mar 2022 15:47:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6737440939;
	Mon, 21 Mar 2022 15:47:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60C961BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 15:47:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5CB4940939
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 15:47:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FMStD4uG9rC7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Mar 2022 15:47:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.85.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 42301408C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 15:47:37 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-246-Ub5TnyEPOam9cnZmzS-F3A-2; Mon, 21 Mar 2022 15:47:34 +0000
X-MC-Unique: Ub5TnyEPOam9cnZmzS-F3A-2
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.32; Mon, 21 Mar 2022 15:47:28 +0000
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.033; Mon, 21 Mar 2022 15:47:28 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Alexander Lobakin' <alexandr.lobakin@intel.com>, Wan Jiabing
 <wanjiabing@vivo.com>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: use min() to make code cleaner in
 ice_gnss
Thread-Index: AQHYPRqWSkYKaVGfxkysTLMqXUCuZazJ+yGQ
Date: Mon, 21 Mar 2022 15:47:28 +0000
Message-ID: <ff90ebe7eed741829dc03b2bf92a41f7@AcuMS.aculab.com>
References: <20220318094629.526321-1-wanjiabing@vivo.com>
 <8822dfa2-bdb8-fceb-e920-94afb50881e8@intel.com>
 <20220321115412.844440-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220321115412.844440-1-alexandr.lobakin@intel.com>
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
Subject: Re: [Intel-wired-lan] [PATCH] ice: use min() to make code cleaner
 in ice_gnss
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Use `min_t(typeof(bytes_left), ICE_MAX_I2C_DATA_SIZE)` to avoid
> this. Plain definitions are usually treated as `unsigned long`
> unless there's a suffix (u, ull etc.).

I suspect they are 'int'.
And the compiler will convert to 'unsigned int' in any
arithmetic.
And the 'signed v unsigned' compare warning is supressed
to integer constants.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
