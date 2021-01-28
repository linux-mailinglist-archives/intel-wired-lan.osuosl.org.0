Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 488783080B1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jan 2021 22:45:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8AE7873E3;
	Thu, 28 Jan 2021 21:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S4O7zXMudeUA; Thu, 28 Jan 2021 21:45:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B0471873DE;
	Thu, 28 Jan 2021 21:45:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 69D441BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 21:45:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 64CC686268
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 21:45:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1a9Q2iQcIN9B for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jan 2021 21:45:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 463BD86191
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 21:45:08 +0000 (UTC)
IronPort-SDR: ftQ7scmETyDtgfd8uidx7+ZsBTsKYjtYVqg/vCL526S7Pc6vQH3yvpASiWRC6n5CDWEmqrB6Gr
 9MplQu7wzVSg==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="167988626"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="167988626"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 13:45:07 -0800
IronPort-SDR: 2PcdfOAN6lXfd7RVpdzoxkOzDFMqtXYH7XoRD1gQMjF9xmR1R1ozq7GS4RWj0UXl1v/yWF8QLJ
 6KDxfK42+LCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="409308231"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga002.fm.intel.com with ESMTP; 28 Jan 2021 13:45:06 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 28 Jan 2021 13:45:06 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 28 Jan 2021 13:45:05 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 28 Jan 2021 13:45:05 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 28 Jan 2021 13:45:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fs3zVj6gqekRLtI2PKS15baP22vLfmYLgLWunWH3BuAyIS2HjILu2S49wANUProVxkCtpZcWVASGlhwHdpRsERydsN8cG0YcxWBsSM80pzBfpjjPjx16aTk64B0z0vr29rZurWWDbyhsbnTwCmbSIA+YEDN5xN3NtyIshn/Rf837DZZwUxN8jFuViVU1ttrYOsaOOunX6y5iGU0a0wpZV+0RqFKRHUvuk3ZmfuLaS1cjHO6nCUrG+v23SF7+rf3L0s89rC+KaF40+35lgYpLuYTxZ9qLi8fNoprqCyi+WSh8ZEOAz/SkK1TeMcJRPjlFHbfXPWrKPzmJDjmruUvCYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pseyb+eDeHDuwzPeEfXj8EbAc0uCLwDPtulY8B6N5MU=;
 b=Xq4SqvSV3eGK0+LrupooCxNoOyUlHqMj9vEXSRWyxmry1lt7LtueJprI5hKG9Shr1KzaIMHxkNG0N4pLx7Wm74fMGXWs9hCd3ZGwu8hoiN55frzARKiX9YQckDZOm7ul8ehQo9zEvBN9Czbi+cz0i0MiCqSqO4X8z+3k04l8IkPO8sMmLiyHuPc8mB3cbs31klAt9hpEi+U8fAz2xonMyX3VLKg0IQZhsLQRifLePtveMnEXGtswAlnJepvfPiBa5BmkNonlXSeY6ZngX5dSK2CW4hwsRs1mZ2fb/q9dexLbtIrRsF1gr3m5o2i05f2fdJ2z8tm9tirF0K3j2c8EFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pseyb+eDeHDuwzPeEfXj8EbAc0uCLwDPtulY8B6N5MU=;
 b=FinmJUAiAXTX8vkbX1ijW5C3nYry/aL/yVRSfPXEn5heWSqKzZyqpl0TsLX606GAt42M2lSGkBfjieU0yCCnSfUz9sqL0eFJg905g45gp6toqu9IcVD1QfOoR1CnQVWymCy04zB/C9LQMcSJwjN1q4unHYFe/k/XJe6xpejaaws=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2846.namprd11.prod.outlook.com (2603:10b6:805:5b::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.17; Thu, 28 Jan
 2021 21:45:02 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::fc53:e004:bade:6bc6]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::fc53:e004:bade:6bc6%6]) with mapi id 15.20.3784.019; Thu, 28 Jan 2021
 21:45:02 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "christophe.jaillet@wanadoo.fr" <christophe.jaillet@wanadoo.fr>,
 "davem@davemloft.net" <davem@davemloft.net>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "kuba@kernel.org" <kuba@kernel.org>, "Brown,
 Aaron F" <aaron.f.brown@intel.com>
Thread-Topic: [PATCH resend] e100: switch from 'pci_' to 'dma_' API
Thread-Index: AQHW9bmpuW6anwN/D0+vVxQdnsKIc6o9kjWA
Date: Thu, 28 Jan 2021 21:45:02 +0000
Message-ID: <268fcfd4dbd929948e8cdb58457ede1efa3898c6.camel@intel.com>
References: <20210128210736.749724-1-christophe.jaillet@wanadoo.fr>
In-Reply-To: <20210128210736.749724-1-christophe.jaillet@wanadoo.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: wanadoo.fr; dkim=none (message not signed)
 header.d=none;wanadoo.fr; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d7792ba7-1fb4-4cf1-7663-08d8c3d5f7bd
x-ms-traffictypediagnostic: SN6PR11MB2846:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB284667332461CF44DE3F7DC4C6BA9@SN6PR11MB2846.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hWAWmqFhNszJLL2LlYjbUNIzKlFRv9g6VZciTKnVat2XGb2G0C1j/PHmFC/kVukxqHTM0yU+S8BRoJUXs4+khHBaUAxlPDILAxK7J6+5yYdQMClOZxhnpDpvrDqvA6i/4y4nJVtWeFyn1mPqOA6hKByhYDAPLu0LjgjEeqHbpQ6qSap0MQxiyFaULYxtHdx5m+VQIW5JsY0++jqdME4Zk+77fNyRMNVlIJsRMVfKY+sYMO8Kh/Hbl3oq5hVAwZGBCAvg8k5RTYLKDcu+Ggu7vRQNOPXlEq8PqaU7IP+VtSUeKgTmovV1rTEozZXgza9/5ohl/tlzDhXbIs/ADcGRTt3bIWaSg9o3ZkTj1JVk5zbmCqb9JzwaC6EGCHBS0DQSEerpyHpeGpIeDmfY0awQGamBFilZR3yjw6eX+hzKR6Rrv5nIAOZxkkC5R26P/Bfh2WRfiKHph9Y3XKITV1RHyqYHdhJW5IQOX4fv66NdDKnxOMaWqRCq8JZhFAlTrOZItMSD3CQ4CyR/UfWaefvV/norHU590bKWSCTBGZLs73B9rOp0naq3k+WFt+JGaZXq7wyhfT6M6J6TyD/pO+E35Bfmo7EScA9hqmFVeQDdMSE4e+n9EQl8xTB+x74VQOpwGlKUYO3vIukEakcezJ7QUL7z5JRJ++qi+QBF1Khpkgw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(66946007)(66446008)(66556008)(45080400002)(498600001)(66476007)(26005)(966005)(6486002)(8676002)(64756008)(186003)(5660300002)(86362001)(76116006)(91956017)(6506007)(8936002)(2616005)(6636002)(4326008)(36756003)(71200400001)(2906002)(54906003)(83380400001)(6512007)(110136005)(99106002)(6606295002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?VzNXMktTOXpNbHd6ZW0rdk10N0ZkcXVkRWhSTDNGdlZNY1JoMXBmc0VqUnEy?=
 =?utf-8?B?cXJjR3JEczljTFY3S2NkclVlM3JHK25WQ0kyUzA1dHlDVkwvWSs5VmdpSHRR?=
 =?utf-8?B?MkMrOHRPVWhkVzdaNTBYZzNzWllMaWNOcjNMRklkdU9rTStYNU4zd3k3UklU?=
 =?utf-8?B?cStncU8wZGI0bWZGcStVYVhoZEx0aWxXSEFaczUyZVRpc1VZZWVBRmhEK3lQ?=
 =?utf-8?B?R1l1UkpnVk9ibmtwSVBQaGZ6KzVYbVdLZDMzZCtQejhWRFZDNzJpU2FpM2VG?=
 =?utf-8?B?MWZSS1p3bzY2aGFBMWJlOFlsZFhHZ0dTRHFPTExRS3VzbEJsaVlNNE42YzJO?=
 =?utf-8?B?TFZ5RjBVSkZIZzA4cnZHUkcxaUFlbWozZTVSaG5UcGlMVnUrMGxCcFlIQXJK?=
 =?utf-8?B?YVU5NWVXWU1MK0xGUjVIVXNIZ2lFem9wbUxLMVJKcWdFNVhYalN6azFIMTRG?=
 =?utf-8?B?bHpzMXo2dFdSWVB5L3dpNE1xYnpKdlc5dEYrV1dDSXRyOHM2YW4wY1V5bHIx?=
 =?utf-8?B?ckJURVV6ZjZucEk3WVQzTi9PUUtOYlBDdnJWQXV5S0g5V2E1RVZteGtiWGpE?=
 =?utf-8?B?ZkRyR0JLdWRFcUpxei9HcEtsMFZydE9MMExFN0dqY3Fhb2JuY1BKWGpnbThK?=
 =?utf-8?B?NTZPK0F5SEhIeXhxSGRCU3ZRV05SWHhEM29JdWNMMVhEcGYwTW9jQ1BNaTFt?=
 =?utf-8?B?S0VtZzFOQmxNMFF1OTVoOHNMZHVGMjNETFlMRVd5Nm1DT2pSZ2ExRUJZK1d6?=
 =?utf-8?B?RE9mWlBXL0hmM1BTbGxQb1FNVHNzaGxsUHk1QjFQNzFMR1phUmVPTDRUL1Ni?=
 =?utf-8?B?VDBWYXhtUy96RW9saWR4Z1A5UlpYeVY1WERGcjB0NGFHOVhJMm5JeER6S1VW?=
 =?utf-8?B?Tytid2pnRGdLQktEUEtvWWtvNFV4MXNQZHFsQzZEcmxyWTNIS3hwOEZGUit0?=
 =?utf-8?B?aXR1V09uaVA1d3QyMmVTYmVqbmlxYjc1ejVPOVhFQVpPMC9uYTZsbVJ4VkpQ?=
 =?utf-8?B?N0FFTWFuUU0rdnRsaGN2Z2lpZXRWcjUxNitidDRjSWhiU21kbWhOMmkra3ly?=
 =?utf-8?B?TGpKbTd4NDlud3diaEErS1UvSWRhOUdBMHpMblFoUkRjU1RUdXZ0V0d6Mi96?=
 =?utf-8?B?KzE5ODhtSU9JMXpaNGNQM3haQi9xTkl5SUNHSkZ2ZkJkWUptdkpuMStRVjNO?=
 =?utf-8?B?aENyeHRGTktUR0l4SDQ0aWRTOFdWNDQ1Tm1YeVBnOVBnK29vRHBxMDA4ZCtB?=
 =?utf-8?B?RDBzd0ZrYXVQeDl0amkrTXBPMDNod3ZLVzJUWmpiQjV3NHlYcDljRGg3SUE2?=
 =?utf-8?B?MjVXS2dWb0FQTjZpOERyVWNHOUZBc0d4dEpTZk50dG5YTkk1KzRFZHljNmxW?=
 =?utf-8?B?QzFnUlBxbDNjN1BQNm51emhOTW9NSThEUVdvTmVQMDQyR1hRZnpvL3R5VjFm?=
 =?utf-8?B?OVhxSGhRMjFSU0dLbW1XczZTd3ZmRTlPbHIwbzRRPT0=?=
Content-ID: <5F5F8B549290B14F8647DA0630B2EACB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7792ba7-1fb4-4cf1-7663-08d8c3d5f7bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2021 21:45:02.3195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RdsAFwTsdk1i2esDQULCmxQh3ka5eB32/gn4+RxdL5wMvkaofnzztY5LzV86lUisIbKP7YDS6Fiuvz2IU2yuJ/3DcvSxBnwWYWjd0Xf0eBY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2846
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH resend] e100: switch from 'pci_' to
 'dma_' API
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
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-01-28 at 22:07 +0100, Christophe JAILLET wrote:
> The wrappers in include/linux/pci-dma-compat.h should go away.
> 
> The patch has been generated with the coccinelle script below and has
> been
> hand modified to replace GFP_ with a correct flag.
> It has been compile tested.
> 
> When memory is allocated in 'e100_alloc()', GFP_KERNEL can be used
> because
> it is only called from the probe function and no lock is acquired.
> 
> 
> @@
> @@
> -    PCI_DMA_BIDIRECTIONAL
> +    DMA_BIDIRECTIONAL
> 
> @@
> @@
> -    PCI_DMA_TODEVICE
> +    DMA_TO_DEVICE
> 
> @@
> @@
> -    PCI_DMA_FROMDEVICE
> +    DMA_FROM_DEVICE
> 
> @@
> @@
> -    PCI_DMA_NONE
> +    DMA_NONE
> 
> @@
> expression e1, e2, e3;
> @@
> -    pci_alloc_consistent(e1, e2, e3)
> +    dma_alloc_coherent(&e1->dev, e2, e3, GFP_)
> 
> @@
> expression e1, e2, e3;
> @@
> -    pci_zalloc_consistent(e1, e2, e3)
> +    dma_alloc_coherent(&e1->dev, e2, e3, GFP_)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_free_consistent(e1, e2, e3, e4)
> +    dma_free_coherent(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_map_single(e1, e2, e3, e4)
> +    dma_map_single(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_unmap_single(e1, e2, e3, e4)
> +    dma_unmap_single(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4, e5;
> @@
> -    pci_map_page(e1, e2, e3, e4, e5)
> +    dma_map_page(&e1->dev, e2, e3, e4, e5)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_unmap_page(e1, e2, e3, e4)
> +    dma_unmap_page(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_map_sg(e1, e2, e3, e4)
> +    dma_map_sg(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_unmap_sg(e1, e2, e3, e4)
> +    dma_unmap_sg(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_dma_sync_single_for_cpu(e1, e2, e3, e4)
> +    dma_sync_single_for_cpu(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_dma_sync_single_for_device(e1, e2, e3, e4)
> +    dma_sync_single_for_device(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_dma_sync_sg_for_cpu(e1, e2, e3, e4)
> +    dma_sync_sg_for_cpu(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_dma_sync_sg_for_device(e1, e2, e3, e4)
> +    dma_sync_sg_for_device(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2;
> @@
> -    pci_dma_mapping_error(e1, e2)
> +    dma_mapping_error(&e1->dev, e2)
> 
> @@
> expression e1, e2;
> @@
> -    pci_set_dma_mask(e1, e2)
> +    dma_set_mask(&e1->dev, e2)
> 
> @@
> expression e1, e2;
> @@
> -    pci_set_consistent_dma_mask(e1, e2)
> +    dma_set_coherent_mask(&e1->dev, e2)
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> Tested-by: Aaron Brown <aaron.f.brown@intel.com>
> ---
> If needed, see post from Christoph Hellwig on the kernel-janitors ML:
>    https://marc.info/?l=kernel-janitors&m=158745678307186&w=4
> 
> First sent on 18 Jul. 2020, see:
>     
> https://lore.kernel.org/lkml/20200718115546.358240-1-christophe.jaillet@wanadoo.fr/
> It still applies cleanly with latest linux-next
> 
> Tested tag, see:
>    
> https://lore.kernel.org/lkml/DM6PR11MB289001E5538E536F0CB60A1FBC070@DM6PR11MB2890.namprd11.prod.outlook.com/
> 
> ---
>  drivers/net/ethernet/intel/e100.c | 92 ++++++++++++++++-------------
> --

My apologies, this patch slipped through the cracks for me. I will send
it in my next net-next 1GbE series or Jakub you can take it directly if
you'd like.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
