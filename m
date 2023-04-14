Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB326E2353
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Apr 2023 14:32:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0744D42B1C;
	Fri, 14 Apr 2023 12:32:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0744D42B1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681475562;
	bh=4sIonJ+a/uKNvZ21EJ3IR4/ns6mpes59HkLt2HS6/Cw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OWesG/3QyQ2IeLjVQuQLS+zvoUoyCwIArd2w/QMtN4059sz+4qOlrVreCXnejzrd+
	 EAH8zxAB6CbnqbFNkxY00ZL5wtJlxDGuXIlyXaOkAzTVTAb1O3N+XVUH0W8osp1/cB
	 L3/UCqm0aEWXE3esJPqvo3ay+ptanluQC1PWmdZaOyAA+x5CoQRcQmHbtWbpJvn+bM
	 E6g63ZAvWoJEztrvqmhZfhYZd2p7+1z5OTnA6orfxLanHTR+TKBPvrIwopUBEiig9G
	 pXlGrWIY8AXFomJ5nwc1nRVIeSlfWElWyuyrwRKJTxwhHi6bSAh59bWJ0LaxcGZqyj
	 WwdwoS770OP/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6uMFeZ5pFaKY; Fri, 14 Apr 2023 12:32:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0D65342B12;
	Fri, 14 Apr 2023 12:32:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D65342B12
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 070211C3EA9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 12:32:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D2490842C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 12:32:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2490842C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id art3ZFauMWFr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Apr 2023 12:32:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AF9A8434F
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3AF9A8434F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 12:32:34 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-185-VqRPGaRUPQWesYHLYOoMpg-1; Fri, 14 Apr 2023 13:32:30 +0100
X-MC-Unique: VqRPGaRUPQWesYHLYOoMpg-1
Received: from AcuMS.Aculab.com (10.202.163.6) by AcuMS.aculab.com
 (10.202.163.6) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Fri, 14 Apr
 2023 13:32:27 +0100
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.048; Fri, 14 Apr 2023 13:32:27 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: "'Song, Yoong Siang'" <yoong.siang.song@intel.com>, Jesper Dangaard Brouer
 <jbrouer@redhat.com>, "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "Jesper Dangaard
 Brouer" <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, Vedang Patel
 <vedang.patel@intel.com>, "Joseph, Jithu" <jithu.joseph@intel.com>, "Andre
 Guedes" <andre.guedes@intel.com>, Stanislav Fomichev <sdf@google.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [PATCH net v2 1/1] igc: read before write to SRRCTL register
Thread-Index: AQHZbnY42u7Gz9ET40eYzbfYWKvVVq8qkCGAgAAQJMCAABqMIA==
Date: Fri, 14 Apr 2023 12:32:27 +0000
Message-ID: <4dc9ea6c77ff49138a49d7f73f7301fd@AcuMS.aculab.com>
References: <20230414020915.1869456-1-yoong.siang.song@intel.com>
 <8214fb10-8caa-4418-8435-85b6ac27b69e@redhat.com>
 <PH0PR11MB5830D3F9144B61A6959A4A0FD8999@PH0PR11MB5830.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5830D3F9144B61A6959A4A0FD8999@PH0PR11MB5830.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/1] igc: read before write to
 SRRCTL register
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
Cc: "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Brouer,
 Jesper" <brouer@redhat.com>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Song, Yoong Siang
> Sent: 14 April 2023 12:16
...
> >I have checked Foxville manual for SRRCTL (Split and Replication Receive
> >Control) register and below GENMASKs looks correct.
> >
> >> -#define IGC_SRRCTL_BSIZEPKT_SHIFT		10 /* Shift _right_ */
> >> -#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT		2  /* Shift _left_ */
> >> +#define IGC_SRRCTL_BSIZEPKT_MASK	GENMASK(6, 0)
> >> +#define IGC_SRRCTL_BSIZEPKT_SHIFT	10 /* Shift _right_ */
> >
> >Shift due to 1 KB resolution of BSIZEPKT (manual field BSIZEPACKET)
> 
> Ya, 1K = BIT(10), so need to shift right 10 bits.

I bet the code would be easier to read if it did 'value / 1024u'.
The object code will be (much) the same.

> >> +#define IGC_SRRCTL_BSIZEHDRSIZE_MASK	GENMASK(13, 8)
> >> +#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT	2  /* Shift _left_ */
> >
> >This shift is suspicious, but as you inherited it I guess it works.
> >I did the math, and it happens to work, knowing (from manual) value is in 64 bytes
> >resolution.
> 
> It is in 64 = BIT(6) resolution, so need to shift right 6 bits.
> But it start on 8th bit, so need to shift left 8 bits.
> Thus, total = shift left 2 bits.
> 
> I dint put the explanation into the header file because it is too lengthy
> and user can know from databook.
> 
> How do you feel on the necessary of explaining the shifting logic?

Not everyone trying to grok the code will have the manual.
Even writing (8 - 6) will help.
Or (I think) if the value is in bits 13-8 in units of 64 then just:
	((value >> 8) & 0x1f) * 64
gcc will do a single shift right and a mask 9at some point).
You might want some defines, but if they aren't used much
just comments that refer to the names in the manual/datasheet
can be enough.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
