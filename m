Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2674E45C1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Mar 2022 19:12:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A117141850;
	Tue, 22 Mar 2022 18:12:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eSDDvWcyHLQC; Tue, 22 Mar 2022 18:12:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4ABB41832;
	Tue, 22 Mar 2022 18:12:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 79BB51BF27C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Mar 2022 18:12:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 604FE84828
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Mar 2022 18:12:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KyK_Kf08Gere for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Mar 2022 18:12:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.85.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D4B4084827
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Mar 2022 18:12:11 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-116-Y9JyBsN6MQCkC0PcUTDBfg-1; Tue, 22 Mar 2022 18:12:08 +0000
X-MC-Unique: Y9JyBsN6MQCkC0PcUTDBfg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.32; Tue, 22 Mar 2022 18:12:08 +0000
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.033; Tue, 22 Mar 2022 18:12:08 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Alexander Lobakin' <alexandr.lobakin@intel.com>
Thread-Topic: [PATCH v2] ice: use min_t() to make code cleaner in ice_gnss
Thread-Index: AQHYPSxszwX/VYzTWUmJ1ZXJKTtOx6zJ/3twgAGw2QCAAAVpMA==
Date: Tue, 22 Mar 2022 18:12:08 +0000
Message-ID: <af3fa59809654c9b9939f1e0bd8ca76b@AcuMS.aculab.com>
References: <20220321135947.378250-1-wanjiabing@vivo.com>
 <f888e3cf09944f9aa63532c9f59e69fb@AcuMS.aculab.com>
 <20220322175038.2691665-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220322175038.2691665-1-alexandr.lobakin@intel.com>
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
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: use min_t() to make code
 cleaner in ice_gnss
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
Cc: 'Wan Jiabing' <wanjiabing@vivo.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin
> Sent: 22 March 2022 17:51
> From: David Laight <David.Laight@ACULAB.COM>
> Date: Mon, 21 Mar 2022 16:02:20 +0000
> 
> > From: Wan Jiabing
> > > Sent: 21 March 2022 14:00
> > >
> > > Fix the following coccicheck warning:
> > > ./drivers/net/ethernet/intel/ice/ice_gnss.c:79:26-27: WARNING opportunity for min()
> > >
> > > Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>
> > > ---
> > > Changelog:
> > > v2:
> > > - Use typeof(bytes_left) instead of u8.
> > > ---
> > >  drivers/net/ethernet/intel/ice/ice_gnss.c | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
> > > index 35579cf4283f..57586a2e6dec 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_gnss.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
> > > @@ -76,8 +76,7 @@ static void ice_gnss_read(struct kthread_work *work)
> > >  	for (i = 0; i < data_len; i += bytes_read) {
> > >  		u16 bytes_left = data_len - i;
> >
> > Oh FFS why is that u16?
> > Don't do arithmetic on anything smaller than 'int'
> 
> Any reasoning? I don't say it's good or bad, just want to hear your
> arguments (disasms, perf and object code measurements) etc.

Look at the object code on anything except x86.
The compiler has to add instruction to mask the value
(which is in a full sized register) down to 16 bits
after every arithmetic operation.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
