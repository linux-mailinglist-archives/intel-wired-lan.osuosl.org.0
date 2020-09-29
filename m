Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE2727D23A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 17:11:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 436428704B;
	Tue, 29 Sep 2020 15:11:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k80B6b8Em3FW; Tue, 29 Sep 2020 15:11:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CD5D87093;
	Tue, 29 Sep 2020 15:11:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C5BE1BF868
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 15:11:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 53A9820449
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 15:11:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q6MK3DZ9ye-d for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 15:11:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by silver.osuosl.org (Postfix) with ESMTPS id DAA4C1FEE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 15:11:41 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-28-peFoqWncPGeZcDYPQGIbZQ-1; Tue, 29 Sep 2020 16:11:37 +0100
X-MC-Unique: peFoqWncPGeZcDYPQGIbZQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 29 Sep 2020 16:11:36 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Tue, 29 Sep 2020 16:11:36 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Kai-Heng Feng' <kai.heng.feng@canonical.com>, "Neftin, Sasha"
 <sasha.neftin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v4] e1000e: Increase polling timeout on
 MDIC ready bit
Thread-Index: AQHWlnJo3jkmQwoppkWC/w40eQtvY6l/uKNw
Date: Tue, 29 Sep 2020 15:11:36 +0000
Message-ID: <f8bd6a07276a4289b102118a132bd793@AcuMS.aculab.com>
References: <20200924164542.19906-1-kai.heng.feng@canonical.com>
 <20200928083658.8567-1-kai.heng.feng@canonical.com>
 <469c71d5-93ac-e6c7-f85c-342b0df78a45@intel.com>
 <30761C6B-28B8-4464-8615-55EF3E090E07@canonical.com>
 <345fffcd-e9f1-5881-fba1-d7313876e943@intel.com>
 <3DA721C5-F656-4085-9113-A0407CDF90FB@canonical.com>
In-Reply-To: <3DA721C5-F656-4085-9113-A0407CDF90FB@canonical.com>
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
Subject: Re: [Intel-wired-lan] [PATCH v4] e1000e: Increase polling timeout
 on MDIC ready bit
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Hope we finally have proper ME support under Linux?

How about a way to disable it.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
