Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C61FF3E1AAB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Aug 2021 19:43:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DE1560A7A;
	Thu,  5 Aug 2021 17:43:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TQDVd-hKzLvA; Thu,  5 Aug 2021 17:43:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B4B360A3B;
	Thu,  5 Aug 2021 17:43:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B6A541BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 17:43:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A30F660A7A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 17:43:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GA86tGH8UW3z for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Aug 2021 17:43:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8338E60783
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 17:43:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="236184205"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="236184205"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 10:43:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="669006439"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 05 Aug 2021 10:43:30 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 5 Aug 2021 10:43:29 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 5 Aug 2021 10:43:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 5 Aug 2021 10:43:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 5 Aug 2021 10:43:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lqrvndwjrttLe/aAJid9XqL0qEHkVf67u/mYMimVChVsFdWlEaSF505DfLhM7vFLDu7FocgVXnKwPg6Kx3/Z8LPLFGBGED9lfCAFWQDAzRBdrvNpkJsLivlQgsOwPTMJND/VQ8bQ0LaEbRivB4ew9XiqvpdMwlcH6UENu2M/Fe/g1gvOXJ35DL32SU+Mkx0XAYE2ykDr4BPfScJcSfTtz3GBODeb9+Qjga8JJTKmAoK9/yyuRSNqcq32kIgJ0L9cCFfrteuDuxVcqz2ZeFn4Rpv3nLdoIv3U3GulzptvCPRhYyjpol4aLHT/BG2Fgd55vBBRq/oENDuh+YVExH1h7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VWDiU2MqeKrUzoQYX8DzjqI4DkjnMD3mf9xX/ELDwew=;
 b=Em3rJRsHRZspDQisrAzo9P2vsQsp+RsO/PsUxv6811XdIcgPie8FZgHggOXNL3yqPkFB+H18FYXVRK1A3mXS3YwNL/l4I47D9VMc6gWdZRL6wzCQlZlEBt7d2BxsOE7twcm97MfO0vS9ENpXzG8M9aGxw7fcLB2ff0uvwYlUFLwb0dK0h84ccjxvz6IsBXvKGlfkY3IUn2RnJ5wuDKHqU9uiHE2PBxw+uP2O0RADSFT14tuiw97t3N0Lo4PX5CNcCgU/VkUZnUTFNf3mYINlv0kNViOQsIg+7im5Bm4yOrUYHRdLPDigpHqqnDJ9gjXNTVZYyreyLjmuwLj0+PikNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VWDiU2MqeKrUzoQYX8DzjqI4DkjnMD3mf9xX/ELDwew=;
 b=wOLsENP+FWPGzdtBxwGDLMrfn7Pd8LLy0tepcSHncCpLmPwUNIuHyqWmt3VTo2qWuA+JCSzM2pi5O5koyuVFsZHEZ9tP08xHUQVzPummXcxFakIimAiYUMguS8X9MfHKbo0W1XO3ERvQPfeIgE+zGhCaF3dx0xMRcjvLN8e2Wv4=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW3PR11MB4571.namprd11.prod.outlook.com (2603:10b6:303:59::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.23; Thu, 5 Aug
 2021 17:43:22 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd85:7a6a:a04c:af3a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd85:7a6a:a04c:af3a%5]) with mapi id 15.20.4373.027; Thu, 5 Aug 2021
 17:43:22 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Arnd Bergmann <arnd@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [PATCH net-next v5] ethernet: fix PTP_1588_CLOCK dependencies
Thread-Index: AQHXif7rGSsHV68jEkSarT7sgNvVuqtlLnOQ
Date: Thu, 5 Aug 2021 17:43:22 +0000
Message-ID: <CO1PR11MB50892BAC1A4F74EBFF6D9C21D6F29@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20210805133615.1637246-1-arnd@kernel.org>
In-Reply-To: <20210805133615.1637246-1-arnd@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a81ddc6b-1738-4fe8-8670-08d958388529
x-ms-traffictypediagnostic: MW3PR11MB4571:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB4571B4CDEF8CFA5D40EFFACBD6F29@MW3PR11MB4571.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3BydATGyoXlGyz0PFPrGzvAPO6PkbMmekLSlCMd8v7vhL6DwGCq7fdCHaW7jCicagPtvAeVPzXLkIUXXzxry3a8EzuJCP4gZrpOkA7Wqny4xWolcXuoASEoTggqqYxF2vLPMWQyQH5LmFo8odd3QupSoUu/XPuXvG59vjnz2jmuL1s4YpcUoej309cQfNUl5JQ0i34tsGgDNDTJuspKR2zEMw39MBJcLFsbSVpPOdi1Y1ZG7Jvo/glPSjEv6NsQMMxJ85odmb/DaoSj+UerR3sJiXs4+y6vRafTgOq2PX2AW8bhF8ITj+j8RuF5icXethEn5m+cIE1YDofUQnkpCWm3a5DPLCvX7+GyamadELCOMzN1hd5d/L4zMKybtIexesoj53Hol5udBMYJTCvVXItpfs9R7RD+nQG2OU8+qDbAscnN7YY7MZwpw6pyN2zL4+kbwFDUqMjxaaFSeKxI8ev8OcFP01rWgyCHeSL+iCwNg0zOe5sYC6J/OTsHEGcwoxnSMqgSmF4Z+AhktSFv5qTOnnUG9iyzvJxT0kw9hM5zvSWoKQFuSVLge/3ncuQWv2atwmntS0Fgchp8ZBjpjrGv+h2q+gwDotzq0KdgvMcc+0cUVXfgO6xWqQDxGlN7ifLrcDCcOCOPN9vPW8oXOsqFoKJ4A1wMAAvdAo4vp/AUOjeEuPMA5dkJOM2WnOtE91L3P4jZ8g5RelOXBQMgw3i9kzwKYQ7nD5RsTr+2piL6TwccdaPCgXNrkFz/E44Mliq2zC2ndDLcnnOq4IHanIR+ir0zjHCyI1xd4FUea75gTg5iNFCSFz4dWspC1BCklL1U8f+WfE0YwkKtUUkctPg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(8936002)(8676002)(186003)(6506007)(55016002)(38070700005)(26005)(38100700002)(122000001)(83380400001)(9686003)(4326008)(53546011)(5660300002)(2906002)(33656002)(52536014)(54906003)(498600001)(110136005)(966005)(7696005)(64756008)(66556008)(66476007)(86362001)(66446008)(66946007)(76116006)(71200400001)(7416002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yoHsMzKK84nzJMGeVXBYr3lguG2DZw+tnpqNqkfa48PapEXzWtf5Fqq4L5hh?=
 =?us-ascii?Q?1euPAhaG29BcRUSeIvV4mDLnqmaBEkKNYpwrbbEcg831GowEjGgCoBDyqL2K?=
 =?us-ascii?Q?seEZZ8UUxcIiNsC7qz2cm4zJoqfLNc9Eej3sCSbR9sRj4Mp0449UvdA/RBmV?=
 =?us-ascii?Q?8ky4DXWaGNDUL9OZbzeRsRa8+Ctz6DgTRLxavwcd/IKV3QBYNbMpdVieTMMi?=
 =?us-ascii?Q?vPxThQCUi/zhNsYCIT8+hj3nICFXdYXooQhznnrCsSu2fFOYyC4AC06W17di?=
 =?us-ascii?Q?i4pDs8LRiOzq9UNi3ER7EpY36a8jHXkkGzvv69zXcumu3EnrWr6Pztqliiug?=
 =?us-ascii?Q?VdoLAfgfhDy3Lszqig4hs5ufPq5erH1BCiWaq+Ezmdg/Ihkeob9BKWxMq3e8?=
 =?us-ascii?Q?GUGGNp1VPABlpWTNkawzYY261r1hyZ0Eq/ssPKmXob/wHaM16YfQnGecMteB?=
 =?us-ascii?Q?5G67CflVNYRyncKcc2aSb0w51pptUhXeLmWQ/tIwUya8bmwUNdtoaf9tC5dG?=
 =?us-ascii?Q?PGrgPh+KkQz9szZ8CBHoGxCcG4OfQi5jZoZh876eYCS1lzZXjL4tJTPtZv/k?=
 =?us-ascii?Q?M9VH+N1hSfFrFlk3jC20zIkJuKvguJy/57qn9xz/BoS8hXQuoLVQ2dvIX9am?=
 =?us-ascii?Q?pZs0U8KJ3E009kxpktx7EguWVqVdoBvT4Uod0WkYluqxTypYMAIZA36OgMYC?=
 =?us-ascii?Q?vyl7JJtPskwtBBMpy3LLl5MBqZzKq11pKj6mK6qB1bddoAeqY+A3jpcd5MCB?=
 =?us-ascii?Q?LU/ERAtm4GTrMVdNDSMyYAVebpD7bQW0F97qy8PUed7tYqWiEzK1uNawwMeK?=
 =?us-ascii?Q?gtf5DVeDsMD4O55OXeeWL5wOo6zPCMl+Ab5X1Dl+pzYR0Uc7XPqsUhPjagvt?=
 =?us-ascii?Q?1GDW3AhIGYmogCeyiBrE2ItRMLHJR5k1Vbfl/oJpsCVt4TY4DoeIOO/q8MzE?=
 =?us-ascii?Q?1xL2Lm5486kzKqnJ6PIHdYTXKqqZihvPIrqub7ZwOqlFY+qHZIGLxQtkWEa+?=
 =?us-ascii?Q?FVppgL+Y7ZX5pB/9dFsZK7jyDGGTGLQUttNkfsuhFCoQmqjnnUxHqoK5kM4C?=
 =?us-ascii?Q?2sub8nIX44NuqCSaH4KF2YQc2EanOor4n5ZZD1kGh2tLcsVjOzyDR0pF2aox?=
 =?us-ascii?Q?1pYoy83t2/9gkS7PS2bXBkhEUrW4L09zPwwbHuZOs05mSbdb7LcLCKSiVJ1e?=
 =?us-ascii?Q?KyyLVq+6zVk/AIGD0C6MMpn8g/9Q2JWlzBDmgAomgA0APouT+HDVvgIJcu8p?=
 =?us-ascii?Q?Q2RPblFq4bw9X0PYbDQfuVwTw6npd3EUTsBO+52m4IPLYFuNvQybqfe8/Uvg?=
 =?us-ascii?Q?6HU=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a81ddc6b-1738-4fe8-8670-08d958388529
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 17:43:22.4014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oFLGFS+CIetJHQkT/pweotqFmxo//x1+GANfYyahOP0jCFd8sr/mQzXRrwsahpLkHed+ehCsljFhGOYfk4fqGqmJmWrsTVGriTKCygk2jmE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4571
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v5] ethernet: fix
 PTP_1588_CLOCK dependencies
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vladimir Oltean <olteanv@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Claudiu
 Manoil <claudiu.manoil@nxp.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Shannon Nelson <snelson@pensando.io>, Yisen Zhuang <yisen.zhuang@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Arnd Bergmann <arnd@kernel.org>
> Sent: Thursday, August 05, 2021 6:32 AM
> To: David S. Miller <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>;
> Richard Cochran <richardcochran@gmail.com>
> Cc: Arnd Bergmann <arnd@arndb.de>; Shannon Nelson
> <snelson@pensando.io>; Keller, Jacob E <jacob.e.keller@intel.com>; Andrew
> Lunn <andrew@lunn.ch>; Vladimir Oltean <olteanv@gmail.com>; Claudiu Manoil
> <claudiu.manoil@nxp.com>; Alexandre Belloni
> <alexandre.belloni@bootlin.com>; Yisen Zhuang <yisen.zhuang@huawei.com>;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>; netdev@vger.kernel.org;
> linux-kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> Subject: [PATCH net-next v5] ethernet: fix PTP_1588_CLOCK dependencies
> 
> From: Arnd Bergmann <arnd@arndb.de>
> 
> The 'imply' keyword does not do what most people think it does, it only
> politely asks Kconfig to turn on another symbol, but does not prevent
> it from being disabled manually or built as a loadable module when the
> user is built-in. In the ICE driver, the latter now causes a link failure:
> 
> aarch64-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function
> `ice_eth_ioctl':
> ice_main.c:(.text+0x13b0): undefined reference to `ice_ptp_get_ts_config'
> ice_main.c:(.text+0x13b0): relocation truncated to fit: R_AARCH64_CALL26
> against undefined symbol `ice_ptp_get_ts_config'
> aarch64-linux-ld: ice_main.c:(.text+0x13bc): undefined reference to
> `ice_ptp_set_ts_config'
> ice_main.c:(.text+0x13bc): relocation truncated to fit: R_AARCH64_CALL26
> against undefined symbol `ice_ptp_set_ts_config'
> aarch64-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function
> `ice_prepare_for_reset':
> ice_main.c:(.text+0x31fc): undefined reference to `ice_ptp_release'
> ice_main.c:(.text+0x31fc): relocation truncated to fit: R_AARCH64_CALL26 against
> undefined symbol `ice_ptp_release'
> aarch64-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function
> `ice_rebuild':
> 
> This is a recurring problem in many drivers, and we have discussed
> it several times befores, without reaching a consensus. I'm providing
> a link to the previous email thread for reference, which discusses
> some related problems.
> 
> To solve the dependency issue better than the 'imply' keyword, introduce a
> separate Kconfig symbol "CONFIG_PTP_1588_CLOCK_OPTIONAL" that any driver
> can depend on if it is able to use PTP support when available, but works
> fine without it. Whenever CONFIG_PTP_1588_CLOCK=m, those drivers are
> then prevented from being built-in, the same way as with a 'depends on
> PTP_1588_CLOCK || !PTP_1588_CLOCK' dependency that does the same trick,
> but that can be rather confusing when you first see it.
> 
> Since this should cover the dependencies correctly, the IS_REACHABLE()
> hack in the header is no longer needed now, and can be turned back
> into a normal IS_ENABLED() check. Any driver that gets the dependency
> wrong will now cause a link time failure rather than being unable to use
> PTP support when that is in a loadable module.
> 
> However, the two recently added ptp_get_vclocks_index() and
> ptp_convert_timestamp() interfaces are only called from builtin code with
> ethtool and socket timestamps, so keep the current behavior by stubbing
> those out completely when PTP is in a loadable module. This should be
> addressed properly in a follow-up.
> 
> As Richard suggested, we may want to actually turn PTP support into a
> 'bool' option later on, preventing it from being a loadable module
> altogether, which would be one way to solve the problem with the ethtool
> interface.
> 
> Fixes: 06c16d89d2cb ("ice: register 1588 PTP clock device object for E810 devices")
> Link: https://lore.kernel.org/netdev/20210804121318.337276-1-
> arnd@kernel.org/
> Link:
> https://lore.kernel.org/netdev/CAK8P3a06enZOf=XyZ+zcAwBczv41UuCTz+=0FMf
> 2gBz1_cOnZQ@mail.gmail.com/
> Link: https://lore.kernel.org/netdev/CAK8P3a3=eOxE-K25754+fB_-
> i_0BZzf9a9RfPTX3ppSwu9WZXw@mail.gmail.com/
> Link: https://lore.kernel.org/netdev/20210726084540.3282344-1-
> arnd@kernel.org/
> Acked-by: Shannon Nelson <snelson@pensando.io>
> Acked-by: Jacob Keller <jacob.e.keller@intel.com>
> Acked-by: Richard Cochran <richardcochran@gmail.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>


v5 looks great to me.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
