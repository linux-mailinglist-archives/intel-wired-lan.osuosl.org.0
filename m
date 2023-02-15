Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE60697A52
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Feb 2023 11:59:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D966A40499;
	Wed, 15 Feb 2023 10:58:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D966A40499
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676458737;
	bh=mHtmWzihHn4PJwn+xCRzL+WLtyR7sB1IwBbjBOxAud4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nbr59IBUiEuRp89dYn0f6bZOe4RMnUpZnKVMi6a5IW0l4p1kd5bmiZJuQApn6ObE8
	 1jAfJj4qHp8Oc2y8cigBpvdQanTcXsA2TxHHI5fM/e82aNej1J0ABBJpT0t+RQBjd3
	 6soWWSP+9Hkb+cijlvVfsOjfo5Kj6u5+7XlYtD+ZvDzGfao3G4y3w0GHGSuTWeLJz0
	 DpiKYgwQf07R8QPkubdpv78ZQ2NuJDGRHO+sicFDikTtf9EYeMwHk7xhfkhBF+MVJZ
	 z+NRiQm0ApIzX8xrQt8D5DpiL2kukDswtTBZpaKqe46OcU1HsbQZUsuwMBYNH9ox63
	 f7dPFI3XcKjQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pp2DCXBPO5vm; Wed, 15 Feb 2023 10:58:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD404401A3;
	Wed, 15 Feb 2023 10:58:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD404401A3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 009801BF315
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 10:58:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D588380D9A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 10:58:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D588380D9A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ziNkxS4f_MFu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Feb 2023 10:58:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5688181095
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5688181095
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 10:58:51 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-247-_tHePesBO6agGi7ci4R_tw-1; Wed, 15 Feb 2023 10:58:47 +0000
X-MC-Unique: _tHePesBO6agGi7ci4R_tw-1
Received: from AcuMS.Aculab.com (10.202.163.6) by AcuMS.aculab.com
 (10.202.163.6) with Microsoft SMTP Server (TLS) id 15.0.1497.45; Wed, 15 Feb
 2023 10:58:46 +0000
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.045; Wed, 15 Feb 2023 10:58:46 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Arnd Bergmann' <arnd@kernel.org>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Martyna
 Szapar-Mudlaw" <martyna.szapar-mudlaw@linux.intel.com>
Thread-Topic: [PATCH] ethernet: ice: avoid gcc-9 integer overflow warning
Thread-Index: AQHZQHcTjgyLfxurwEKHiQFStKAE+67P1n2g
Date: Wed, 15 Feb 2023 10:58:46 +0000
Message-ID: <abc3ba4b46f942d595b6c5fa164bc4f8@AcuMS.aculab.com>
References: <20230214132002.1498163-1-arnd@kernel.org>
In-Reply-To: <20230214132002.1498163-1-arnd@kernel.org>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] ethernet: ice: avoid gcc-9 integer
 overflow warning
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arnd Bergmann
> Sent: 14 February 2023 13:20
> 
> From: Arnd Bergmann <arnd@arndb.de>
> 
> With older compilers like gcc-9, the calculation of the vlan
> priority field causes a warning from the byteswap:
> 
...
> 
> Fixes: 34800178b302 ("ice: Add support for VLAN priority filters in switchdev")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> index 6b48cbc049c6..e9932446185c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> @@ -1453,10 +1453,9 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
>  		}
> 
>  		if (match.mask->vlan_priority) {
> +			u16 prio = (match.key->vlan_priority << VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK;
>  			fltr->flags |= ICE_TC_FLWR_FIELD_VLAN_PRIO;
> -			headers->vlan_hdr.vlan_prio =
> -				cpu_to_be16((match.key->vlan_priority <<
> -					     VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK);
> +			headers->vlan_hdr.vlan_prio = cpu_to_be16(prio);
>  		}

Is there something that will do:
	unsigned int pri = match.key->vlan_priority & (VLAN_PRIO_MASK >> VLAN_PRIO_SHIFT);
	headers->vlan_hdr.vlan_prio = pri << (VLAN_PRIO_SHIFT ^ (le ? 8 : 0));

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
