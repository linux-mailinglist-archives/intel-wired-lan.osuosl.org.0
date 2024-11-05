Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 067E69BCD42
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 14:02:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 518E560763;
	Tue,  5 Nov 2024 13:02:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DdE6l_bD5gFA; Tue,  5 Nov 2024 13:02:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E9A760769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730811722;
	bh=jJq682YHVl3k0g42GP8hnQc/ObxSfqL/R3vTTWG1eMU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sJDI1W2VxGFYg/+GQp83y16qhzdWtlh613HwXjkrsZpms8LsrnZ0PD8yVCnHmHQ8w
	 0ZJg/D8lbb01PLrdhvQkhDqh741lyCjJT8mSK6IIyrY5PaJD7bBCaeDZr3/PzqJGFt
	 3/oTKNFd7Ms3FpR06IMKHz6DA3Uj13MVee52+H+fbtugcV2yNlGwNSKlt72jTxJv8x
	 GItT6RiuMILwKtPXHiZnCpy4q+v6S6GnoVDPf2VQbwHHVlfqyfTZf/OHksxrNfv0a5
	 T+ysFt598TDL1Uhys9jB9nosYwDWB2f/mqfgeoPr/L52gj3BgUURkGJ8Zh8zDeJwDa
	 h4DWCecihzTXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E9A760769;
	Tue,  5 Nov 2024 13:02:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E7B1723
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 13:02:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 703D9401FD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 13:02:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Txvq3YuK7nki for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 13:01:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 66F394018C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66F394018C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 66F394018C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 13:01:59 +0000 (UTC)
X-CSE-ConnectionGUID: omBP0skQSram1yB9dP7JiQ==
X-CSE-MsgGUID: wNw4O9ETQB2XuhWLZ7OzPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="41928306"
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="41928306"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 05:01:58 -0800
X-CSE-ConnectionGUID: poTC6hPgQbeld8kpowmb3A==
X-CSE-MsgGUID: QzBBiFK1QJejJ9pd9y3t0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="83953471"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 05:01:58 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 05:01:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 05:01:58 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 05:01:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dZ1QbzGB5NIItle7baO7vz3Aw+LpSwvNie1Le81DVaijh9exTCYeI6LaLnNb5BlO41hyMUYK2rMA/sqwatd0A54pCcwt0RHhqWqm2Hd8Ka1Tw2I3gaSbVFBMsblKxfagrWO9mp7z6iJ2H8itMymbaS9jJmAJ7Eq4UF/lafOKRAKGbtlQlsvvXIfUAxG6dLhmkbSEpQJkZTcGV7rTxAvbnYu/DK5wyz8i8OqaJa94kC1RsaceQVJbcL2MaBkX3/X7p3VMXyVUsyMFvRpWqe74Z6dWRGFrkCgxyw1yJOH2QGbMt+BZUDTD8DHre6dcQ2REHHuxEZrOytj8v5gCpIKHKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jJq682YHVl3k0g42GP8hnQc/ObxSfqL/R3vTTWG1eMU=;
 b=zGn+cKb2PE5ZMtNQIz5Y7yZV0NLIQ1EegNTbYj+lyI//Qk9f8GLVC99XEyNTmcZFeUY3S8JcjZQhulKb8fec31EUUvWDmQF25ElwCvgt6s7hFlrCU/bgQ+Ng0nLYDFYWwaMGC67a07AZ6kftIOvBri+Fg5hkTqgBNmdx3zDdauymKI419bEDrtNRIkSkyYB5/3cEwFnmgtWOPIXHrXOG3ss9aKt4sFus2/F/UmvkwYe/L5mcPMVfsB52flWgIO8bnyxONFVq1hfEYZ7M2dfN9dMrv478uykf25UfcXSivtOjaZ+71rn2uFaQgLSsE78P0RTTZoJtQqP2DwytuVLBzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB5077.namprd11.prod.outlook.com (2603:10b6:510:3b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Tue, 5 Nov
 2024 13:01:52 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 13:01:52 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Knitter, Konrad" <konrad.knitter@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Knitter, Konrad" <konrad.knitter@intel.com>, 
 Marcin Szycik <marcin.szycik@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 1/3] pldmfw: selected
 component update
Thread-Index: AQHbJTGgsZXWxNYqTUO3ZjXxx356k7KoumAw
Date: Tue, 5 Nov 2024 13:01:52 +0000
Message-ID: <CYYPR11MB8429A51A3A1D723632BE0644BD522@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241023100702.12606-1-konrad.knitter@intel.com>
 <20241023100702.12606-2-konrad.knitter@intel.com>
In-Reply-To: <20241023100702.12606-2-konrad.knitter@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB5077:EE_
x-ms-office365-filtering-correlation-id: b3321a57-5e9a-4559-fc11-08dcfd9a046e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?GTvzNgD6S1nWqRuqvZTc6wwAPR+rIjPLtY2eTNwiOsjL3kKrtE4q1/BN6wzl?=
 =?us-ascii?Q?OwUKtv3Kbia3n5sapjfawXhZ5vI95K3bmcXs6ZjSuSzU0uyvE9fOFm/mS7iv?=
 =?us-ascii?Q?dtsFHQzkmd18y/c5Ez899KpLcf4GrG0DSTaM4o87bOOXR5q1mxaUPEXFlWu1?=
 =?us-ascii?Q?VlrP3geYt1hLQQS7uNZtIISM7Iu02wGK1YLItY3c4QVjB355cOogMSv+VODz?=
 =?us-ascii?Q?kShOENoFqVGefzUTqpEpejEUN58awMzwzuQ2SScK6RLH5z6vAXgmcl/A/a0f?=
 =?us-ascii?Q?XaXdqJMdGKUMmZ6Qbhsa0TuaF4rc8f+PYoeyu/xfLnqZsWJJIZKDfbN8qLA2?=
 =?us-ascii?Q?AeCP5l23umWTjRm4IcNg9/qfxSyxhvBEYJhw/EY7xVJTY7NLHx7w3QmMG8kY?=
 =?us-ascii?Q?tvFaEsH2IcYEe+84/MaHbpju38IRgXxexuwI91xTgqvkIFp1SpZ2/D6L9M9z?=
 =?us-ascii?Q?Pa+DzPzT9ulRlw77qPppo25zitL358ZmsN9XGioYE7/XkpkYWcPXCy4NNnxP?=
 =?us-ascii?Q?zKtXw8kIGKh8CEED2aydBj1o4exQj/fl8c8jqfCCz4O8lJTdot47e0p/BfeV?=
 =?us-ascii?Q?aFPdAtD7W7g6dGVcy0KzRdUvL1NGMlv3P0CVhI2oSP5EBHYWa0LR/7x9wHgR?=
 =?us-ascii?Q?pgTSnWE1EncpDstPJKrSXF8lO2P588/c8cDgKy9JYqByAMpzaLqy8ppONeYd?=
 =?us-ascii?Q?PHmx6lOZ74oQlgfPUUYI0G+opXpM4Hl2cM008PlGobevvKOX94A+oESV30gl?=
 =?us-ascii?Q?wnwE2yBKPn/uy66URbHMJ0ZJ3Akbx2rMX4kesbi/sUYL//BLcmxMZnAb0jW6?=
 =?us-ascii?Q?oN8AvkPhMs9Czg/m4lzqdRQl4J+qb4o9E4e1xfVEsuFPOCJIJVIZT5JJQoiM?=
 =?us-ascii?Q?onVlarmdaV+ePyGG2YPzOMBrw8+7DR/VYRnhX4HstqMFTbL6A2jc/D3zvRSP?=
 =?us-ascii?Q?9bOz/Qe+y0qhiDXrrG/8deLgO1+tvhk1NuvooAxbfOytpsB6QJ6mhHjsoQDF?=
 =?us-ascii?Q?yGmBJNz0BXi7N6pc/PoscTs0q9AwIMkmYmQPeRxmHhzxvrfuRXsheD7RmRYe?=
 =?us-ascii?Q?6tz2o9Pvd6x4EpBs/jFx3l6WqKwm1TXyb1ENA/rZlYIDeE9EHr4Yvj58lyPI?=
 =?us-ascii?Q?LJmwzdDRil+KqdtH4Y8QyBhNfn9nHfixrMnEryjXyg8zkkm4cMPgMxKfgnhj?=
 =?us-ascii?Q?DMxAp3HVhGz021AVYuIWQoOVL/0uha+PipJShGrUBk41UPfNkh/WbKfxIjQa?=
 =?us-ascii?Q?3AIh3G0yteOnLukZr1rM1MomsQ6DNZ+0mIP0QtroBI4xEVWGtq2B7pDFiGfi?=
 =?us-ascii?Q?wezq7AEPSFVI7eQarQn1/X0g4iqvkrjC36c6MC54B+GChOd5WITC4tfsFhQm?=
 =?us-ascii?Q?q7d26co=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qWGzs/oqRGLi0a+YI97nOVSmfWnrGCtfCinYx0SmsH1CGK/yakIHW2IypS/V?=
 =?us-ascii?Q?HhjrCN0gSo18prqZUwZhAaiMaZqAzrC7OpSscjsvqZ4pVYR0eItRsiQbamSp?=
 =?us-ascii?Q?T6hwpOxaQYbE0k7h2C+VKRoAPRXfxr9+sldgCq19bGWCKGFrNv3iJzsNIutZ?=
 =?us-ascii?Q?N9/ZMCcEAV+XtKt4BAnLZLQ4ECFO3cQCZ+El3/kKYqoBqiol6kIFGECjIlA9?=
 =?us-ascii?Q?V+UkQnbfWto0llPUnUlLBwIbvg8khQt2zjY1jnRd9FhJJIeDQbHiF7U2J+GG?=
 =?us-ascii?Q?MH9rXzJCx4dNh3CID7Yk4SSQupKaxZSV3Crl/fDmoBGhfUoJmuGhMosJQKY3?=
 =?us-ascii?Q?lsQBB336JO/gwmEe01j+IHw6QYqKII0WL82L5DUoB/BgZFjMxzDgYKakORNX?=
 =?us-ascii?Q?li8T5A0kckM8QaJr0REkkpQBEKmWv8fKSjePKB4BR/6tzLujj+GGYaGXxngP?=
 =?us-ascii?Q?y+oUN8l3ntEjwYLMtr4VklLpth/ggZkH19GwCxHORDALbf80mMUm7caDcZE/?=
 =?us-ascii?Q?tBboyJHgWa/fAbfZnpGZ2uKEeATKbhoFuvbPK4c3rFnf4NOEG+gcbp/vT8QI?=
 =?us-ascii?Q?Iuk1VFh1lhx9KzyL16otgPzEYUPnklBtCeYq0bPntQUU+PIoXOcssxaazyFd?=
 =?us-ascii?Q?Py75H2pGQbpN9zHSs0HFctPBvjVFwKg97tnmUCSPzMfBVr3b10609vWYlUWC?=
 =?us-ascii?Q?YYjAQGvVQvZPWv58arJximjnHXVcYgwlwvcRpKKuWCdfr392WahRFAYJ4onx?=
 =?us-ascii?Q?ITfdxO8jMXFlSjLPlklYxAYL6lX713X1Rjteb8L80l5qT86nkOlH6lb5xU7O?=
 =?us-ascii?Q?8hqDU0Ofn7G2+uKldbIEvvA9r+CJDpsLVSoP/r0DYtqp79VjAv7QzU0ICvth?=
 =?us-ascii?Q?aLczdAY/GE7xP5i0K7eZM1I+R1y06mrx3Y6q6ksIFNOwf3I+VBTEIH4jAZti?=
 =?us-ascii?Q?CmgGBUu7xBjFcb581MT+iME3S4SwTb1uiJacjJielkm9Ge4lPYTiUjb1M4/J?=
 =?us-ascii?Q?lzJsZ1X0uZ6Pw89hHR9w9fmlROaCVOuo8g6W81aeEhIxbTDrshKtmKCeq5on?=
 =?us-ascii?Q?d1jY7XzOjoj70xxie+hD+xXFRbntVZYh3Bf6ERIURv3JvOFHFvQJqWLaULgy?=
 =?us-ascii?Q?1UEaNVlXc70Wov4Zs2KZTaT3jmzBamSqVl5dIDKLRIOYBOs1An0fzWAcRRky?=
 =?us-ascii?Q?OhXuzo75ZRDs7rkw+ASIA3z6hXduiEUJkZiSs1aqDNt8eEuUr610DKdhR0qI?=
 =?us-ascii?Q?lGVhV7WwejF/YrQK5yawPtaVPEjeke5cI+K06zdUBTSij7zTF/ku//DVoHO3?=
 =?us-ascii?Q?j9zLRC4jH4CWRRAkZYjUD1ghqiyBGee6VK4ZerWfN0aSX67B09XPHTcXX6ym?=
 =?us-ascii?Q?aqcMJKq7Wo+l4/IadVzaePq5YGhhNAFOQMHD9qMSjMO0qvTiSty5sjOFguXF?=
 =?us-ascii?Q?0coln7vbOta7X6H1YcREtFvGJ73uJbro8hfRCfzgY0q49KrIJw28OvwHmerB?=
 =?us-ascii?Q?PkoII78iOyEZg6wqpODX/9WVzzcpxIBAb91p46hlpz2iF4B0NtjD+7R1pPVw?=
 =?us-ascii?Q?zxNQg5EB4zZ/8di0z+XQT6zudz6/zQEOKyf1TNjWAd9YYeRdf3goMtEiiL2Q?=
 =?us-ascii?Q?Ow=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3321a57-5e9a-4559-fc11-08dcfd9a046e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2024 13:01:52.0691 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0uvz0EvnAwfbeXo2sM2uPcmrdvJe5fp3SUVItftZT7bMgOIStD0n+uryrE6eBv5Vk3UlxwSdOaKzgVY2ko7b63ZWIgVhBdUcVfxDn0jE7N7Nixf41ekmlV2mtkIjVcDg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5077
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730811719; x=1762347719;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B1SYEblXvmfI+4bU7v9+FS+9ozXDMdqUW9UgZb/iTkA=;
 b=JIgRMbmvyqVK91/gYJJjYJTT/4wD1aJYS9cRjJma1fm6+W6kcCId0rQX
 +II3mcEbJsYsOV52+1DlspVQkxG0ooN49ern1KMGZg+CK1LwXrL9VrUSa
 R/3KG6d7JBZvs6eKlL95zeRa95/ODbe5a7vWu8iPdfoFlMQtUjT845CoL
 1dQLgfcnao8/sMwqCz4cB5Mc+gWtWhHHqjI9+ciwl3HG12MME0yM4YsFD
 9HPtuK4yI+19lcvB+ZXSZh5LUAC7IZk0kJw80HvbQn0+wiONw8SMsSCOb
 UsYH5F5Vsq9tk3aIqI3ub45KU+3SxfXr9YusxKhCtn2K78WNnP3gvHqnU
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JIgRMbmv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] pldmfw: selected
 component update
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
onrad Knitter
> Sent: 23 October 2024 15:37
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; j=
iri@resnulli.us; davem@davemloft.net; edumazet@google.com; kuba@kernel.org;=
 pabeni@redhat.com; linux-kernel@vger.kernel.org; Nguyen, Anthony L <anthon=
y.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; =
Knitter, Konrad <konrad.knitter@intel.com>; Marcin Szycik <marcin.szycik@li=
nux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/3] pldmfw: selected compo=
nent update
>
> Enable update of a selected component.
>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Konrad Knitter <konrad.knitter@intel.com>
> ---
>  include/linux/pldmfw.h | 8 ++++++++
>  lib/pldmfw/pldmfw.c    | 8 ++++++++
>  2 files changed, 16 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
