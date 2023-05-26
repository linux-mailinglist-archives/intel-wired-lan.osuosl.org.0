Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C9B7122CC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 May 2023 10:57:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0687342CB4;
	Fri, 26 May 2023 08:57:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0687342CB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685091467;
	bh=StEFdsaPRi5ajCJVwTYgIalUHws/T5lorWLLc+pRoDw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V60hMU1QiNiqGQaYAxrkXoH/OzyyXP43xKYfPPHZrKIDd4ZhoTsd/44T1vlCUYwWx
	 ZYMElKNO+JfE3wmlSQn1Hc0aNe3oimuRsZF2UpxrjwRqhYYCmetaUQLFniq06wIXWt
	 Z6lEvXrc19/97GLRVRMutaqogDe84By8jwKgLWQwPodWm6fwG3y9tz3LPUSxUArIGJ
	 TP57mKFLPRscoNtD6Jx0fiefwaoyN5YrG/ZSDFvkcelGEbnSD8SgaR2gtoNgWLSHIX
	 G+zW82jAiIlux+DlVRJXa/UvtzUjU3MXm7LNknSfyNMb8ilGl3/CBvxXmZayxJNOYM
	 2+SiVHP714RaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dsRRytHJ43Ih; Fri, 26 May 2023 08:57:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2FA2142CA7;
	Fri, 26 May 2023 08:57:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FA2142CA7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C53D1BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 08:57:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E1D52843E8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 08:57:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1D52843E8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uexPtSc_gGc9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 May 2023 08:57:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2AE6843E5
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C2AE6843E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 08:57:38 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-273-LeFxhf7FOqaUSuK7fsXyyQ-1; Fri, 26 May 2023 09:57:34 +0100
X-MC-Unique: LeFxhf7FOqaUSuK7fsXyyQ-1
Received: from AcuMS.Aculab.com (10.202.163.6) by AcuMS.aculab.com
 (10.202.163.6) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Fri, 26 May
 2023 09:57:31 +0100
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.048; Fri, 26 May 2023 09:57:31 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Alexander Lobakin' <aleksander.lobakin@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Thread-Topic: [PATCH net-next v2 05/12] iavf: always use a full order-0 page
Thread-Index: AQHZjwj6Ca95rmUXrk6PtFqkdUejnq9sPxhQ
Date: Fri, 26 May 2023 08:57:31 +0000
Message-ID: <9acb1863f53542b6bd247ad641b8c0fa@AcuMS.aculab.com>
References: <20230525125746.553874-1-aleksander.lobakin@intel.com>
 <20230525125746.553874-6-aleksander.lobakin@intel.com>
In-Reply-To: <20230525125746.553874-6-aleksander.lobakin@intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 05/12] iavf: always use a
 full order-0 page
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Larysa
 Zaremba <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Kubiak <michal.kubiak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Christoph Hellwig <hch@lst.de>, Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin
> Sent: 25 May 2023 13:58
> 
> The current scheme with trying to pick the smallest buffer possible for
> the current MTU in order to flip/split pages is not very optimal.
> For example, on default MTU of 1500 it gives only 192 bytes of headroom,
> while XDP may require up to 258. But this also involves unnecessary code
> complication, which sometimes is even hard to follow.
> As page split is no more, always allocate order-0 pages. This optimizes
> performance a bit and drops some bytes off the object code. Next, always
> pick the maximum buffer length available for this %PAGE_SIZE to set it
> up in the hardware. This means it now becomes a constant value, which
> also has its positive impact.
> On x64 this means (without XDP):
> 
> 4096 page
> 64 head, 320 tail
> 3712 HW buffer size
> 3686 max MTU w/o frags

I'd have thought it was important to pack multiple buffers for
MTU 1500 into a single page.
512 bytes split between head and tail room really ought to
be enough for most cases.

Is much tailroom ever used for received packets?
It is used to append data to packets being sent - but that isn't
really relevant here.

While the unused memory is moderate for 4k pages, it is horrid
for anything with large pages - think 64k and above.
IIRC large pages are common on big PPC and maybe some arm cpus.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
