Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FF7524DFE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 May 2022 15:14:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D77D5405C8;
	Thu, 12 May 2022 13:14:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OHHUORc3OglI; Thu, 12 May 2022 13:14:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DBA874048E;
	Thu, 12 May 2022 13:14:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B9F81BF373
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 13:14:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1420883ECC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 13:14:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t-9PBH8tgmoU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 May 2022 13:14:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC5D583ECA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 13:14:09 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-309-NQr6Qan2NXefqjFdfy2npw-1; Thu, 12 May 2022 14:14:06 +0100
X-MC-Unique: NQr6Qan2NXefqjFdfy2npw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.32; Thu, 12 May 2022 14:14:05 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.033; Thu, 12 May 2022 14:14:05 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'xiaolinkui' <xiaolinkui@gmail.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "jesse.brandeburg@intel.com"
 <jesse.brandeburg@intel.com>, "anthony.l.nguyen@intel.com"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH] igb: Convert a series of if statements to switch case
Thread-Index: AQHYZRhZ2eSEIJ3KUEyq6EVycQYB9K0bOTww
Date: Thu, 12 May 2022 13:14:05 +0000
Message-ID: <3a5a6467b24a46ce8e05fb8a422baa51@AcuMS.aculab.com>
References: <20220511092004.30173-1-xiaolinkui@kylinos.cn>
In-Reply-To: <20220511092004.30173-1-xiaolinkui@kylinos.cn>
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
Subject: Re: [Intel-wired-lan] [PATCH] igb: Convert a series of if
 statements to switch case
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
 Linkui Xiao <xiaolinkui@kylinos.cn>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Linkui Xiao <xiaolinkui@kylinos.cn>
>
> Convert a series of if statements that handle different events to a switch
> case statement to simplify the code.
>
> V2: fix patch description and email format.
>
> Signed-off-by: Linkui Xiao <xiaolinkui@kylinos.cn>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 34b33b21e0dc..4ce0718eeff6 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4588,13 +4588,17 @@ static inline void igb_set_vf_vlan_strip(struct igb_adapter *adapter,
>       struct e1000_hw *hw = &adapter->hw;
>       u32 val, reg;
>
> -     if (hw->mac.type < e1000_82576)
> +     switch (hw->mac.type) {
> +     case e1000_undefined:
> +     case e1000_82575:
>               return;
> -
> -     if (hw->mac.type == e1000_i350)
> +     case e1000_i350:
>               reg = E1000_DVMOLR(vfn);
> -     else
> +             break;
> +     default:
>               reg = E1000_VMOLR(vfn);
> +             break;
> +     }
>
>       val = rd32(reg);
>       if (enable)
> --
> 2.17.1

Are you sure that generates reasonable code?
The compiler could generate something completely different
for the two versions.

It isn't even obvious they are equivalent.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
