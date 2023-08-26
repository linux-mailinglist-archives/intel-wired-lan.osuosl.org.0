Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5895B78C855
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Aug 2023 17:11:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC0F541763;
	Tue, 29 Aug 2023 15:11:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC0F541763
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693321911;
	bh=CjOpTN7dv0t64JYB79WPDuj/896u+VWh5zH9I16JY0k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=njh7v0RmQYnMm2Rhj+2hG6oBjfrLNdlIxDYdNsfZ8/oPv4ivxIxj7KObNI6x6NmU/
	 p5+WfTCgFLJbr2740Mqodqgll/MrY3FHry55ZKV6IKUrwEUSLFsYoPb3xVqiOnn9Rw
	 eRC9tkyAskKSg7XDfCxih1Ozyq7mYrj17ujLDb3calXoCcnk8R9u1gvw2DfC7Zq0WF
	 tyLfeW1aMNtXwTS/r6OdbKmuvBVy9zBHuEWsQi88hGDS0U3K0xedeLjYTOfZs5YIKE
	 X9ydhLnoP9jAVQsvJvS9sDJN/zX3FXDB4//0G/mdUCA8bV209c98T2t+CPEHS2RyZS
	 81TFUgBi4TPpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JF9ma6KSpP0x; Tue, 29 Aug 2023 15:11:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8614A408F2;
	Tue, 29 Aug 2023 15:11:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8614A408F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F2A141BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Aug 2023 10:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9BA2832C9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Aug 2023 10:35:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9BA2832C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 77Yer-rVLoth for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Aug 2023 10:35:32 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2077.outbound.protection.outlook.com [40.107.20.77])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F41EB82BA7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Aug 2023 10:35:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F41EB82BA7
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GcMAAycrodhHxcc135WGkgqQFBwhN1wzQVSq7dRyGcQpi6DTAk3Okg4P7UJcjlMxrR3ytIH7J8RkoxliYVsMmDYQAsDqS0BdP6rw7Om3UY21JDsQPuAaS4DDvd1XY1EHd80LNsGDWX8ojB/6JlM5Ls1pcYhL+m6jYWYAfMXBY0dx96u3/4kpoV3s/zoHe5gee253M0u+xYGY3C0tptoZqRnuTcUoS61k/caBa6DhNBmaklSIXBU8KTe4AaSxiNx3nhr4QR+OkGipFr1tJoWQXNA1wVTAqdUc6z6++LPBiyx7d+FljOXCM8veNEm7MYbadyjvpBDquZU+JsGPHrHlIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0o0+YLu2UMjYu/Dfm6fPm6urMnKRJKOWOdSY7ZJMHFo=;
 b=hE4qH2C0JHhv3VtJTtojKJR7K1c+Dx2EKcYQdbb7qgGdfH7UYbkX3TKLy366DRpYxkbnkUFQQjFEyky3lVHppxDTjB3emsAuBZYS/8YqnkAscrNoD7WgJIK69nFZJH+nsqVjSh0YgP+xtLDxYpSUFurgmA77JDfj7YQilICwujtEP34S8p4Af/uaYHUZMhtAP5wsH/O/ccB3094bNCWjqs1rcPkRQ7X18H2+b8odGo66gI3q6zRC6fwu6bZtIkkL9EhP8lisgmrfUmzeJU99qsFT6DwnHnMlU52rGlc0XZZpDxQsxOfzjmc7wCJEpU83403irltkPA9OaQ96TvizWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
Received: from VI1PR07MB4080.eurprd07.prod.outlook.com (2603:10a6:803:29::11)
 by DU0PR07MB8882.eurprd07.prod.outlook.com (2603:10a6:10:313::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Sat, 26 Aug
 2023 10:35:28 +0000
Received: from VI1PR07MB4080.eurprd07.prod.outlook.com
 ([fe80::60a1:ad65:dbb6:89d1]) by VI1PR07MB4080.eurprd07.prod.outlook.com
 ([fe80::60a1:ad65:dbb6:89d1%6]) with mapi id 15.20.6699.034; Sat, 26 Aug 2023
 10:35:28 +0000
From: Ferenc Fejes <ferenc.fejes@ericsson.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "sasha.neftin@intel.com"
 <sasha.neftin@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "anthony.l.nguyen@intel.com"
 <anthony.l.nguyen@intel.com>
Thread-Topic: BUG(?): igc link up and XDP program init fails
Thread-Index: AQHZ1pDnT3XCDiBRvUOy/mSJk2l2Pq/7oYGAgAAPbwCAALL9Ew==
Date: Sat, 26 Aug 2023 10:35:28 +0000
Message-ID: <VI1PR07MB4080544E3ED0E53A6C9706C4E1E2A@VI1PR07MB4080.eurprd07.prod.outlook.com>
References: <0caf33cf6adb3a5bf137eeaa20e89b167c9986d5.camel@ericsson.com>
 <87ttsmohoe.fsf@intel.com> <87o7iuof4b.fsf@intel.com>
In-Reply-To: <87o7iuof4b.fsf@intel.com>
Accept-Language: hu-HU, en-US
Content-Language: hu-HU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR07MB4080:EE_|DU0PR07MB8882:EE_
x-ms-office365-filtering-correlation-id: e719b75e-f832-4ee8-bc44-08dba6202a3d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gsao0E8FXe69sfgTd9FIZArgwRR9L1CaFdiXSewXumVOfhTR7+hAoIdLp1s4z2nt48BQ8sp8u5Eg1ilX3eVL8TXgtjMIZ/4DIYeAeEz3XN8PIPg6IBzfWJJifbV1QGueoOnZwmdD99mhwW91LiuWogbieoVkQeywKFMbZLnxBF3efGcyg+8WOeejkNEqsjw0CAFvAeQjZ80kDTW/uKmlby6B+b9MDzbTDdT6BO1Q5y6NjO/edjzFthgmkbsR/RWrd8lkqaP5dCnAb9hoGACLpDFAmpg5Ia9qe7idVRPvzc7YjQ6UTe3prNJbssO711LztK7LUZyxswSMh4hRj2EZ5Nu8Lvt+kjwEv/JzgcaKkacsjErMb8YaajZj/1auGZWR39pt3v+QGyBgsZuDEHlBk+b5537CNAfxJsRnNPB0L8AwTAL1G6dDXEHYIklsUDy4HXubJGp3s7nk+zGctfJlXgHGQ5yr53ERHhAFW9JBJEK+vDfhQMkmw1EErfFp5+RNp3PuKE2Q8Ykv92F+E1whKe/Y884eAlUHAUq3GGKTdN1LZQOKS2laFGLEWCGUrGmVRSTHm3SyEdEwGMPuFRL04n+JPWToZcdzH+nn2ooaEtkKlKNGjJbntIC8LAjTPJ/MQtqJuHYldDRlPXtS7wwWCQk5pHvj+7cwJN+wY6OT5xhXpf3MAVAGZAzOV8RvCiEQ/UZ96FL5yeQIJ9RpeUP1eg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR07MB4080.eurprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(396003)(376002)(136003)(451199024)(1800799009)(186009)(52536014)(8676002)(4326008)(44832011)(5660300002)(8936002)(12101799020)(6506007)(7696005)(71200400001)(9686003)(122000001)(55016003)(478600001)(38100700002)(38070700005)(82960400001)(316002)(91956017)(110136005)(66946007)(64756008)(66556008)(66446008)(66476007)(76116006)(86362001)(2906002)(33656002)(41300700001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?dr95aYINkFKJUFF6fj+/+Ago8xaGBwKZGkMCggbvu69G6wvThP3CHLGU7Z?=
 =?iso-8859-1?Q?eSYvjK0l2XGms8AJhAXsVBuS0MZpn7Aq4dRZ2AJOAQ448qcsNDblpFc12o?=
 =?iso-8859-1?Q?7IfsYILa+L6Otl3QJEkKobjTmZp6L8nhWkDfmWLuSZW+/76FYXfGkz3BG2?=
 =?iso-8859-1?Q?M1ZaSkzhjKqvLLYJfMlOTYVU+YdEVEkgfbjjNwHIkAUs/xYjZ+toTSEA6y?=
 =?iso-8859-1?Q?V8BJrVnkE2jUwJbdDbcsjXBbAvbXk8T/UEjLynEF81EC0cAkNSs3Sp5wqT?=
 =?iso-8859-1?Q?rR9wQR22MVfuopUkI6UAQaCymMBEaHmK5+N+M2iN8ErSwoklqcrFbwzcOY?=
 =?iso-8859-1?Q?ONLbMctxmWRt/9v0tRGmZ9NlhIShMflRACyTjzNdNvH0IEIQ1GLQYOtBQs?=
 =?iso-8859-1?Q?WlO/gkLFLT4BxW3uBL+IEr6ozkezw8gbua6gstzrQLxWXdqIMKFZianQso?=
 =?iso-8859-1?Q?W9LHmh1zV3bx5B36cTqQRyMF3GdeZpnMye8nqJDYeCEWfD11QY/5pqUuxN?=
 =?iso-8859-1?Q?vihG8+Js7mzUk/NhYIH35a4sePsbZkqC5yGsQdGKMxUI081q9a8WlHJioi?=
 =?iso-8859-1?Q?QJNWRJLFvKBF8FzJfENSN+bY51FTV/dLGP+xCWgt/9Ye5fKzMBFC5mLBop?=
 =?iso-8859-1?Q?5/6EES4e8eafUafeuMEzyWsOrpDt3Y9URwjwsC2C1yE3gS5sSQp+yOg7i3?=
 =?iso-8859-1?Q?DfhOcL9+5N9gQZ9JdseIEu2aU6j1Znojz5R+H/UXwgAK3kHQfTDmfREy+k?=
 =?iso-8859-1?Q?B8TzkcJhoX03u4rid8O6Y4Faki0kOn/qcVoGu7ToGC5gtxTvgkpP4Tq41u?=
 =?iso-8859-1?Q?NOv4kKjm0cXXX2zS45hFajKcrBwM1h7Lb8Z3qXQl6cNEpFQuZE/l9gd+G4?=
 =?iso-8859-1?Q?Z1CiG5xZb8IOW6iCKgcXBYRaXEnbEO6M9JaRA0l22t1uwbvhDOzEqJVYM6?=
 =?iso-8859-1?Q?VUMLZuJQ3rSHix03sUBrighY8BSf6oek9teP6ZlsaoBmkmkD++kvq3FH0E?=
 =?iso-8859-1?Q?tXdhRAiBBazLwPqJOlpRFW3Z4xzZduyLBFfPoX1Ppih0LGKoEoxrLaRbCK?=
 =?iso-8859-1?Q?mu9qV9EYY9rzzaXrvrzQGUZsabehy8nEdfSc8ctPd2Q/3KQ8A23ySaX0ZN?=
 =?iso-8859-1?Q?zSELth+awUYgDZLjejRh0rkNcHTAdQZ4nJxIhavZ/XEWCjsyMcioqBMckY?=
 =?iso-8859-1?Q?cvSApX+X9W8jbAXBeQScKie1QtSMS5xgaGvdk0eVeVz/Gcxm7P+0kkMoex?=
 =?iso-8859-1?Q?rquEiZ9Ry14fN67QMgPK7x4dUMBBazAxGjBylAwWQZckZtr/X+RUakTOvy?=
 =?iso-8859-1?Q?gqQP3WpwQ1EWu1vu7ve62lRid6XaYcmHxBh24KehIB2hm5MlG6YwEu+QMZ?=
 =?iso-8859-1?Q?vtjkJ93vGhgafh8cGgic08LDmG75IJBcDKal7ENvNM8AcWF4j0GfiLshk/?=
 =?iso-8859-1?Q?UO9DEaYEV1ZByM2EzNwp7DfGKhlHhAnvHEmrtMYCDI8ecyAGKA8z+IlkwH?=
 =?iso-8859-1?Q?jK286Kp6SPA8N4+y9f3m594azca959k4zUUdO+1MCq9ilAw8Wc3ImKCn2a?=
 =?iso-8859-1?Q?Pu/noBHwlk08Ebh7/vcZdlegrY+TRzjVDffRBDyin3+NF47oIXmZCl5O+W?=
 =?iso-8859-1?Q?IcQHVt0o3pg/geE2o+ZNnikJBh4Bn1kcJ38ypLxms3My1jlmY3vSSJTEot?=
 =?iso-8859-1?Q?Am70ITDb7fCqEjLS1ljS6hB3mM8qA8++/33Dy+DC?=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR07MB4080.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e719b75e-f832-4ee8-bc44-08dba6202a3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2023 10:35:28.0574 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cvpQuLemU9exJpQ1EDfFMvg9XzCiNSyNNfSTJKgduxUMVKMYXesFAqJ65nHohspHceMhYcC7I2bzLe1JFDL9YY5+xJQMkF+qpo14MeHv8Ow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR07MB8882
X-Mailman-Approved-At: Tue, 29 Aug 2023 15:11:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ericsson.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0o0+YLu2UMjYu/Dfm6fPm6urMnKRJKOWOdSY7ZJMHFo=;
 b=vPh8h8iFBBH+m15GNKOJ7gXvKxlmEH/BRLyiXwSw3IEEzfYUsad+F7+BjTCe/bSUsqka0MkBnlKALgellMZFsWbqZLjvA2DTO0SlV1sfZ/CM/+QJhHij7pFLMFNTUhMM7LHpFZSxnShodesA5qw3xGSbUsO5U2utsP/h/JOADBA=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=ericsson.com header.i=@ericsson.com header.a=rsa-sha256
 header.s=selector1 header.b=vPh8h8iF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ericsson.com;
Subject: Re: [Intel-wired-lan] BUG(?): igc link up and XDP program init fails
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
Cc: "hawk@kernel.org" <hawk@kernel.org>
Content-Type: multipart/mixed; boundary="===============3073122881402517645=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3073122881402517645==
Content-Language: hu-HU
Content-Type: multipart/alternative;
	boundary="_000_VI1PR07MB4080544E3ED0E53A6C9706C4E1E2AVI1PR07MB4080eurp_"

--_000_VI1PR07MB4080544E3ED0E53A6C9706C4E1E2AVI1PR07MB4080eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Vinicius!

Thank you for the prompt reply! I'm OoO right now, but I'll try it in a few=
 days when I'm back.

Thanks,
Ferenc

________________________________
Felad=F3: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Elk=FCldve: 2023. augusztus 26., szombat 1:51
C=EDmzett: Ferenc Fejes <ferenc.fejes@ericsson.com>; jesse.brandeburg@intel=
.com <jesse.brandeburg@intel.com>; netdev@vger.kernel.org <netdev@vger.kern=
el.org>; sasha.neftin@intel.com <sasha.neftin@intel.com>; intel-wired-lan@l=
ists.osuosl.org <intel-wired-lan@lists.osuosl.org>; anthony.l.nguyen@intel.=
com <anthony.l.nguyen@intel.com>
M=E1solatot kap: hawk@kernel.org <hawk@kernel.org>
T=E1rgy: Re: BUG(?): igc link up and XDP program init fails

Hi Ferenc,

Vinicius Costa Gomes <vinicius.gomes@intel.com> writes:

> Hi Ferenc,
>
> Ferenc Fejes <ferenc.fejes@ericsson.com> writes:
>

[...]

> I don't think there's anything wrong with your setup.
>
> I am considering this a bug, I don't have any patches from the top of my
> head for you to try, but taking a look.
>

See if the following patch works. Doesn't look too bad, but I have to
think a bit more about it.

--8<---------------cut here---------------start------------->8---
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethern=
et/intel/igc/igc_main.c
index e7701866d8b4..d1b3c897c3ac 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6462,7 +6462,7 @@ static int igc_xdp_xmit(struct net_device *dev, int n=
um_frames,
         struct igc_ring *ring;
         int i, drops;

-       if (unlikely(test_bit(__IGC_DOWN, &adapter->state)))
+       if (unlikely(!netif_carrier_ok(dev)))
                 return -ENETDOWN;

         if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
--8<---------------cut here---------------end--------------->8---

Cheers,
--
Vinicius

--_000_VI1PR07MB4080544E3ED0E53A6C9706C4E1E2AVI1PR07MB4080eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div>Hi Vinicius!</div>
<div><br>
</div>
<div>Thank you for the prompt reply! I'm OoO right now, but I'll try it in =
a few days when I'm back.&nbsp;</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Ferenc&nbsp;</div>
<br>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>Felad=F3:</b> Vinicius Costa Go=
mes &lt;vinicius.gomes@intel.com&gt;<br>
<b>Elk=FCldve:</b> 2023. augusztus 26., szombat 1:51<br>
<b>C=EDmzett:</b> Ferenc Fejes &lt;ferenc.fejes@ericsson.com&gt;; jesse.bra=
ndeburg@intel.com &lt;jesse.brandeburg@intel.com&gt;; netdev@vger.kernel.or=
g &lt;netdev@vger.kernel.org&gt;; sasha.neftin@intel.com &lt;sasha.neftin@i=
ntel.com&gt;; intel-wired-lan@lists.osuosl.org &lt;intel-wired-lan@lists.os=
uosl.org&gt;;
 anthony.l.nguyen@intel.com &lt;anthony.l.nguyen@intel.com&gt;<br>
<b>M=E1solatot kap:</b> hawk@kernel.org &lt;hawk@kernel.org&gt;<br>
<b>T=E1rgy:</b> Re: BUG(?): igc link up and XDP program init fails</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi Ferenc,<br>
<br>
Vinicius Costa Gomes &lt;vinicius.gomes@intel.com&gt; writes:<br>
<br>
&gt; Hi Ferenc,<br>
&gt;<br>
&gt; Ferenc Fejes &lt;ferenc.fejes@ericsson.com&gt; writes:<br>
&gt;<br>
<br>
[...]<br>
<br>
&gt; I don't think there's anything wrong with your setup.<br>
&gt;<br>
&gt; I am considering this a bug, I don't have any patches from the top of =
my<br>
&gt; head for you to try, but taking a look.<br>
&gt;<br>
<br>
See if the following patch works. Doesn't look too bad, but I have to<br>
think a bit more about it.<br>
<br>
--8&lt;---------------cut here---------------start-------------&gt;8---<br>
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethern=
et/intel/igc/igc_main.c<br>
index e7701866d8b4..d1b3c897c3ac 100644<br>
--- a/drivers/net/ethernet/intel/igc/igc_main.c<br>
+++ b/drivers/net/ethernet/intel/igc/igc_main.c<br>
@@ -6462,7 +6462,7 @@ static int igc_xdp_xmit(struct net_device *dev, int n=
um_frames,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct igc_ring *ring;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int i, drops;<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (unlikely(test_bit(__IGC_DOWN, &am=
p;adapter-&gt;state)))<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (unlikely(!netif_carrier_ok(dev)))=
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return -ENETDOWN;<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (unlikely(flags &amp; ~=
XDP_XMIT_FLAGS_MASK))<br>
--8&lt;---------------cut here---------------end---------------&gt;8---<br>
<br>
Cheers,<br>
-- <br>
Vinicius<br>
</div>
</span></font></div>
</body>
</html>

--_000_VI1PR07MB4080544E3ED0E53A6C9706C4E1E2AVI1PR07MB4080eurp_--

--===============3073122881402517645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3073122881402517645==--
