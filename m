Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E70BE5EB88F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Sep 2022 05:17:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 639CA4181F;
	Tue, 27 Sep 2022 03:17:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 639CA4181F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664248660;
	bh=CvG2R9RXIH0cfEl+iKBderd67LRvZ/ZTX9q+gTMGbiE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NwmuZtDS9+QZmYoZ+v76QAlEfkoRalLQVlvxSbZEbjmPmgAKbg+K3gjZN1U9DY3HD
	 jsjuHyZD4M3ZvAu3BF47BVLeMVc7NCT/ctEHCtL09yZwNbhG+u8sFtMvODZprIjrbv
	 aHUdE25kt2d+BFBT1UwoxF5LEC6mPPtB80zXs0T7nfwexGX4nb8gLdQm9kQ1iA7V+6
	 pnvk3pCMiYcIcj2gHi8E5YECnRUKYrI7xWq8iyoWFddMXy78fewgxv7RBNx1ktjs0M
	 J3Qym8VDylCgyKZpk0kD6wA37tVFxqhlQw33Fk/DtoKNNRbZefyn8jK13IQovGBlrl
	 MZ70l6taTVVVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f3R1BX4Px0Y1; Tue, 27 Sep 2022 03:17:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03A614182D;
	Tue, 27 Sep 2022 03:17:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03A614182D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 778471BF29D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 03:17:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E73382A56
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 03:17:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E73382A56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TdyaIbSKhlSe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Sep 2022 03:17:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFEF182A0B
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EFEF182A0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 03:17:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="363035113"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="363035113"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 20:17:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="654557951"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="654557951"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 26 Sep 2022 20:17:30 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 20:17:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 20:17:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 26 Sep 2022 20:17:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 26 Sep 2022 20:17:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JiyAvJSsNKxiRpikgtbeWHAVKfaXsoU5WelXf9LHbKSB7o8zunddq9FSYy2Eg29x3Rd9jDptZBucewgQje0HM0GgBvxl8qPLSZ9E8/EjT1GdzNredMQGMb/xXlyLFptxMmd0Ib92Jl82mDWyUGPmLrHHvx4gbQAP6zOgOsWgchfv2fdwsBVEQDwy2UxYiW9W+Zc5J2Vt1t2P0NGlwCk8vE7hT4kg9n5LgBuDhGj6/Hcno2/VPoeBx1EX2t71YP52tnpLJLzKhLgEFzVXzILrPE9rBn7R1z4ajPa9O8gC95YX1e9om2c6Pl/56hoMAMRi0qmvECdwRehczsvcsHETSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mpOvNVumzMqUabE8MDQgttbePmgrsMK5MZY/f/CYHDI=;
 b=KJKCkhUcyA7I0K3aLBNYFtbIuY+kJ512TqoNPrPmQ78jN+ZKZtfujmV4ObOqk4QBtzbg2DHOdqB0sumIkZDhgRWCpf67ioIGx9/5vvEb19twNwJ8oMyKiWTV4pAV4+Y0vPlbuKKNTv0BzhjOtwkiGnncriwCH6LimjoIQSmCZvIyyttux+zX9fjsJcObL1JcUX4LmYMmj7qNuHarjAO64QhR3G+CzjU1PixHzjyOkufLxyWyjOXCw8xBbCrCqbMMurtx7+8ZymKmXSmskNHFET84VP7gEENBbStjrzLHWRGFSV0JsUo2QTfh4nQotJ6FfZ2ke006444fQiV8QHXJOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4045.namprd11.prod.outlook.com (2603:10b6:208:135::27)
 by PH0PR11MB4823.namprd11.prod.outlook.com (2603:10b6:510:43::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Tue, 27 Sep
 2022 03:17:26 +0000
Received: from MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::8943:7a27:bfb1:329a]) by MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::8943:7a27:bfb1:329a%7]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 03:17:26 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v5] i40e: Fix DMA mappings leak
Thread-Index: AQHYznuxpkrMwV+cs0+pSjGzcYfiJ63yoPqQ
Date: Tue, 27 Sep 2022 03:17:25 +0000
Message-ID: <MN2PR11MB404513DF6FA77A6180A2637CEA559@MN2PR11MB4045.namprd11.prod.outlook.com>
References: <20220922120743.1937-1-jan.sokolowski@intel.com>
In-Reply-To: <20220922120743.1937-1-jan.sokolowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4045:EE_|PH0PR11MB4823:EE_
x-ms-office365-filtering-correlation-id: b18c9204-ffbd-47e0-a947-08daa036cd59
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A7iv+ZetZ5Z5iWMpi7XnrqMhQ+EhMK2sK3ytyOVHxAWHrBukaskoR2zd/TAbEK8T5kkUQkl1oS2OyrTH2c0y5HoC0/xxtTGmfMP/JhDcVKSQlQ+B9ESGJUXwFC8vyRYfVfP76Z8+/eQ4pwmc93I3HS+VfQs6v7Yz8NmLBBIn51bhS6Gs5OyYu4nZQR90b0qhjVa3OG/F/h9S7I37dm/+GxSav4IF1S0Oxedpn5GToMpNcJLoWc4Ap5tZ5u2Q/b2OH8lz5+HQcFO5cBWSdI/C9hlPswBanLBU/fg4T74mvsF4RvuGHosFEKDiiSFfg+Ing5VaWMG8HQIh3bi0G6CnyHEvxCkJL6rkrLMWFahFBlJPBRXWG/Jp9ieNg2wKFA3FkHXwsS8IKmVRBfskvpEpnVzwlDGHDZDkMtYEweWIxSKFuJ120QPfTBGJGYD9FiwgpfUDLQP390G21REoAna86we6O6AUkpRlHeSK6syFvgkCPTFhhcc1684ddcgMEhm/0nCXiTw1e/aj4oaG8NMtSEoTPt01bjs6o39Fq5BQwRaz/zyHvqvkzSwKYQNrKS/t6Ytk4bfNgWJm52icVTK73sxHhch9KHTr0lOBtbplZAq3ohSPRaHmCTYqP3JjqEV/p4Tv3JoKozEhd+B3lSgWa8+daFJCrUBsglOGQZzyczuzgJeApy3ZLP5l1IuTDZc0Wnes3UxmdKH16JF39iEn7a/99kVdNsTS3Xzml6SwJwclC3ygV8ELov44rJgdXHZh2Cte6e+BOCB+TLVcX9twAA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(366004)(376002)(136003)(39860400002)(451199015)(38070700005)(71200400001)(478600001)(82960400001)(110136005)(316002)(66476007)(66446008)(186003)(2906002)(64756008)(38100700002)(66556008)(66946007)(76116006)(41300700001)(8676002)(26005)(9686003)(55016003)(86362001)(5660300002)(52536014)(83380400001)(33656002)(122000001)(6506007)(7696005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hhlnY/VPcjJsNd8TrvHBCarJR8kc5Aep7bPKESF8yyjK3zGAw2HO/VImoK02?=
 =?us-ascii?Q?pA1YCpNldhnXtkfRqTxMpvJzZOkJdoKhdVu5As3wxo4mGh4qEIwb9Tcs3mro?=
 =?us-ascii?Q?WCcNstgfTsboqJ85/So9uVOeoFvaMvcvXgCZUC1ZyM1eg2q9tectGCSlPAhn?=
 =?us-ascii?Q?h8g9TQKRK/eXuawFwLXgqpySHfNjgWcK+Li3vaY69iA6iZADKCdRUbh+Foou?=
 =?us-ascii?Q?bhhSra66Ccr8iOWuFCfxriViOgWKr1vCjG/Vx4OOQP6xpBFKl8MyVoaywl1M?=
 =?us-ascii?Q?hqI2yceYU1MIRANKSVydMmmrLsKG93Qlu2dE9kKO+8ssrkT+4yWHmAe0TinC?=
 =?us-ascii?Q?N2tul2WcV77A266/Yw8GFMFmu67yN6POVoDNZVoX8jHca5Sb6E/wjX7gfVZs?=
 =?us-ascii?Q?2qMU8AuYzuzOOLURfzcVhMEFf7iZUPEUtF+jLM6zoSg8QsbDRP2gyhMPJenR?=
 =?us-ascii?Q?IQ83la0bjYD7n7MQjzeMJV7X61//SZSd3+0RwU7PvMFK4lJw+xBO6sRXxZWh?=
 =?us-ascii?Q?OhyREt5sk5jotkt7+HPQ/mdkiRbRmZdQkTOsBfSe8qFZRB9AUJXiTWhMRijc?=
 =?us-ascii?Q?T6ra9LxjVWvKNKAJtiRrMbcERuswFtGHINqRbSQIHe+rialCQDvuko+Bvbzu?=
 =?us-ascii?Q?ooS8nM27X9nCT+ANKKcSbSQJx9QN7dWaW81kvi7MeAl+mMGtLftOAysZhXZ6?=
 =?us-ascii?Q?ozbsS4/JqI/Vc6Jey04ysWsapyDF1tSljgrSaP2is02ou5qfUwX1s/gQTXkr?=
 =?us-ascii?Q?a4W6WWYRUzLmvuRkXcEV7dXohyPouK+FkPM335FmVPn6RlrfnR7/39a2mtqH?=
 =?us-ascii?Q?BF/A0h4Ok/ePV1OINNw0tHKsdSNGKfWMZc5yDvIWGCHJMEwn+FG+/xiMDDwd?=
 =?us-ascii?Q?LmfwdxmMgGnXTexTlmI0keMaqZl4GFmgal/w5+1/fr+MuMnwhJZk8ffr1RZs?=
 =?us-ascii?Q?sTxe1yZpPgcgzwKnr4uUgyquuBGixW+/JRZuJGiVT+pMKQAbqeIUFQBKO8/r?=
 =?us-ascii?Q?U2mO88PJxYPzJS2pX+8xl6uCG/XffKMxByTxDIFqjko6FQuSuCXasjFxIGqE?=
 =?us-ascii?Q?WQ3aW0vYNkeRdXkCeGidWtifnfR/Ps5wWqTTg2viKfraAijUMiInWYafUQBB?=
 =?us-ascii?Q?55pAuLtw6smm0fxm6P+xqH3XoMteVrtwuRvvFue9IpCtqdRpz0Mufz/PxYMM?=
 =?us-ascii?Q?5hC6DnocNSyb6mZWKsFiuRw9Sw6JG8qmQnHY0rSU5Ro4+I0FvuaU/nZ+kvWM?=
 =?us-ascii?Q?CnAgmijiLd+pBrnZFJT+Xst6dlpM5T6e5PJYk09pOSOZLc1c/1hEz4q64AX5?=
 =?us-ascii?Q?QKK/JwqE0VMkEJA1XD/Tgg9TMSlrUTFJ+pfl4r06OGCxHYnSzvYoNFjeZmvX?=
 =?us-ascii?Q?gsReZ2xxgkn42iG1WPzJ2W4NgczwPCJovQCeSv2Uoo/hLaXwoBcpAeIl+Ka1?=
 =?us-ascii?Q?A5F2g68S2u5owaqv3pUsOMSO1J4yZU3kit51a/knFNakZtG1A8emDAtIkCWG?=
 =?us-ascii?Q?tHgY/lOAJ3fr8mYpne4Hdv+pv7WFX0k34ozezpMYJo7PySolnEsuy3kIsHEn?=
 =?us-ascii?Q?yAQHalDdpq9Zc5PKiLUFTDD3qx5bkyg1vX+Q9fQx?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b18c9204-ffbd-47e0-a947-08daa036cd59
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2022 03:17:25.9604 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sLhiUUjVo455BqE55l4G1yUGg7vJyRCC6jiERcPupkpQfTwrkxbKpqwOX8cLRPWKDuX+M/ANK7VzgJRA64ByrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4823
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664248650; x=1695784650;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eDImMJCzaqKen+Zx8YywbyIk4wdydyuuMbgjdyVmCVM=;
 b=KN70/4RpkYZzFTrczjD3HZCFheazAHkRkERZjbvkgeGI4ogWLuNgCjVm
 h4gbqD3Xj++XqZUQpC7q7wkCc+hU6ql16BumDAFLvBtERS5dgJVuozoKd
 1cJSg3W/KwNXcGMzq7X5zh4r/qHq7St2GGmIyRl+iz9pD/Hnntg++Pkms
 9nHWjSOvqsncawna0T1mDh3zDudLG1tv/5e8HZ4juTjAiZ8lnaMzyg2VE
 MM1qFbswNbEattkGpYh5YNvsdKC8JNPXIgMDPgiorMwOYxtPE1g590RrC
 QocNcxopBcgA43bGWDISsaSiY0YV7TA/YG0N1irkDA96jK48ArNbS4AXh
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KN70/4Rp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5] i40e: Fix DMA mappings leak
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Sokolowski, Jan
>Sent: Thursday, September 22, 2022 5:38 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net v5] i40e: Fix DMA mappings leak
>
>During reallocation of RX buffers, new DMA mappings are created for those
>buffers. New buffers with different RX ring count should substitute older
>ones, but those buffers were freed in i40e_configure_rx_ring and reallocated
>again with i40e_alloc_rx_bi, thus kfree on rx_bi caused leak of already
>mapped DMA.
>
>In case of non XDP ring, do not free rx_bi and reuse already existing buffer,
>move kfree to XDP rings only, remove unused i40e_alloc_rx_bi function.
>
>steps for reproduction:
>while :
>do
>for ((i=0; i<=8160; i=i+32))
>do
>ethtool -G enp130s0f0 rx $i tx $i
>sleep 0.5
>ethtool -g enp130s0f0
>done
>done
>
>Fixes: be1222b585fd ("i40e: Separate kernel allocated rx_bi rings from AF_XDP
>rings")
>Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
>---
>v2: Fixed improper kerneldoc that resulted in a warning
>v3: Applied commit msg fixes reported during a review
>v4: Applied code style and formatting fixes to i40e_xsk.c reported during a
>review
>v5: Removed WARN_ON as it was an artifact from a previous method of rx_bi
>allocation and is no longer necessary (see commit 27b6b5c9a79c ("i40e: warn
>on double free")
>
> .../net/ethernet/intel/i40e/i40e_ethtool.c    |  3 -
> drivers/net/ethernet/intel/i40e/i40e_main.c   | 13 ++--
> drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 13 ++--
> drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 -
> drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 67 ++++++++++++++++---
> drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  2 +-
> 6 files changed, 71 insertions(+), 28 deletions(-)
>

Tested-by: Chandan Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
