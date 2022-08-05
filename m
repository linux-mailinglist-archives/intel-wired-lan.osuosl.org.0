Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 088BC58AF24
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Aug 2022 19:48:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D414560B63;
	Fri,  5 Aug 2022 17:48:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D414560B63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659721691;
	bh=xpoRneUIgTqRV2+IrwFkfwIRjClGmjQJd7qJYII4h3U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mxb2t+Pa4OPXATkIXcJEdpQp36nYDut7hsSB4rioa6IIXCiFsB7tpIzjPHsvdWD+7
	 6Twz3/9WN+s9C82yqkT1GUdbloh2p2+M4a4Vxghi7jD9Usdc45L1BagrB29PIXDWGC
	 cB59Efjs3YpZrhlSzx4GH4NPwisvJbtKE++Fiy9ErCiyeRaXdyGB1BPMpCTA0WTCRv
	 gEwS7OiBnEghHHujUTt/6BHBqt0DRQrXAdhCEwJ72dcSU8BFgT4eN0BJW1p7Yf5Rr9
	 Ftxo5Gin8CT4jpZ6UmQUhqZRaQEl4kfHIZ3NuXGoYpykpxS8J+wTUy8HNzG+Ayzh12
	 CWB8f3SEbw+CQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nVMwGYXHUTDr; Fri,  5 Aug 2022 17:48:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7195E60B5B;
	Fri,  5 Aug 2022 17:48:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7195E60B5B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E1D641BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 17:48:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B4E4C41CCE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 17:48:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4E4C41CCE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DmDInPTkw6sT for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Aug 2022 17:48:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDB5E41B59
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EDB5E41B59
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 17:48:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="277177758"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="277177758"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 10:48:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="607196504"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 05 Aug 2022 10:48:01 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 5 Aug 2022 10:48:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 5 Aug 2022 10:48:00 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 5 Aug 2022 10:48:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nMp2gBpL+nf0nk5E/QB185bd175PtR3XHYJRrlzb+1FJrRA8Ct9mSbqBdwlnT9rRUiQViXZkyJ5TFoqW31fA96+qZ5ktPduazJJqtr3I2huB36kO/37+oFktISkiDT9kth9t7eQPlj9Jo8i1Hn/eYxru216vMLhwKthrKWOslVamltnCjwa9ZyaWjjVCkWxbKo6TRxDIawjm4OCMQrcE2klIdT8VcCejdnf8m0EuGnKPG4T5juMys+9sTEGpE4xx+L2oFaPpEqND9H6DAHIgsXevX5lOElke1OW5vzyU3+XzniVOHYVRZsDE2xe9ZzeJjS8c6dy7HoYqUhYZJ8vWzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AK18KJcBPmpUcX43r5xrbeVa35Kd+9aGJVh5p0SspYw=;
 b=ePxZFpfTdGSwaLl08QR1pnrjW6Fri0nqH9oFijDI10ROrB379pJ9zfqcRp3ayi4sn+z7I76DUpF1td9j0VExMMM14QYuIRyc9E7xaPHFBOn/UdIUekEdOaUiYkPCFdNr3BurWgdWkz/NlKujCBRrczR9v7SKRBERl5y/CQg2V1vqW+0YRbxiEDgjyZBWU6TkuUqFuUPzV+FsJkNTHeY5fCi2owTj+xjg7N1y81g9C41ryO2hJrILoM68LOkCYg8+ion52Fj2AfaepzC3H/qgpWr0KOSKdfzcCBo4GptlmajZrf3XTayipxvQ5FSJ2KqPsjqyqWcxC9+xcqrM8UXNYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CH2PR11MB4310.namprd11.prod.outlook.com (2603:10b6:610:3d::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.14; Fri, 5 Aug
 2022 17:47:58 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475%7]) with mapi id 15.20.5504.016; Fri, 5 Aug 2022
 17:47:58 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Staikov, Andrii" <andrii.staikov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: add description and
 modify interrupts configuration procedure
Thread-Index: AQHYqOGcm7pAJp95+EKYPJJsYDOJSa2gkRjA
Date: Fri, 5 Aug 2022 17:47:58 +0000
Message-ID: <SN6PR11MB3229661FC22539932B7EF656C69E9@SN6PR11MB3229.namprd11.prod.outlook.com>
References: <20220805113423.267941-1-andrii.staikov@intel.com>
In-Reply-To: <20220805113423.267941-1-andrii.staikov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df1f7cc1-1665-4092-6bfb-08da770aa23c
x-ms-traffictypediagnostic: CH2PR11MB4310:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vq1R2mo25E5PI9dj1NwWzYl+XIo743x4ZwF+y3gD45iI3LoYFHXXdHijiHN+xhZzorAcXoMv/UKD3+uXpgw63rg23eKCFK5vzIC9GPZIapRgDrGdlXEIuyNHwA9ROO7LRoMAvDuDtU2A/dCOlAM3sac5tK5JjtZ6ncwUKAmwjMS5UYVPPaqUGazzCuDHO3tG4inUIJvR0hN5bpaVYtKcggfLVjzqgTiOSkO9Fej/I6rFO3I+x0whZlGdnn4sIeNpbd1bU3nSCKYUUFugDOmrX+VTpoN9znZrf5X7txtURqUntMxhu+E3o6G/M8ohHy6e2NfMdTd9NpSGs4+EYnSkyIyKG38WY5wbJgZa9ibmiK4GFz7GA+AB1jBjmtUq2AMIGEEaWWu5fNbdDwtg6EeMbzu59aHFneSmMjrHvw6HHOL8l7qCUKT+/KEa+j9F12ggisjQSCYYlSQrQVQwGEdehLaDSs1rDxKTAt3ZucSz9U3QvkB74JeZA+dGrFfxWTn4E9hNMITePEDAqICdS6IlxNi9JS5hnc4Iw91SgK8w+VNTgvAbYxpfpe8KAwHZu5KbYXdSqE20YzjoF9f2mUutToFHbRO9l3ok0/VXesGz6P19sFsxTFcrTHFHAoLpdaF2diRaEpwo3jfYd9PrBAl3106MEYwHugtKf002fN2mAyJyg7RKTSKFEJh3ZD6GYiWfBcxIF2JF1P1szx2tZZZG66fHUyGEAvisAFaOTLZqDcoVYge4WCT9Es5s+Qta8UX/2dtfCNhCIfBkLXB5/Q6LwK32JicRu3xyBjIznT1Nq0IXcBr0NnvkJWXhR1a6S0ow
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(136003)(346002)(39860400002)(376002)(4326008)(64756008)(110136005)(8936002)(316002)(2906002)(55016003)(54906003)(66476007)(71200400001)(8676002)(66446008)(66556008)(52536014)(107886003)(86362001)(66946007)(38070700005)(53546011)(82960400001)(33656002)(5660300002)(76116006)(6506007)(83380400001)(186003)(38100700002)(7696005)(41300700001)(122000001)(26005)(478600001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NEJPSVF6UHRxeTFLTmNLS2l2MFhaTlk5Q2xwRHZrQ0tTeWMyU0prVmliM2d3?=
 =?utf-8?B?R2o3Q2ZhNmRuR2s3Y0pLTFRvdGFtQ2kyeG9abjlZWGU3RkVuUVdDcjZqZ1ZP?=
 =?utf-8?B?cHNHdi9EY3dLekJNUHhSM3VFYzUvcUV2a3BBZGlDamRoS2hzcEdnVnNNczl1?=
 =?utf-8?B?dzZuUm5EVS8xZjBhYTFJY1RXZ2dSRlpCdllPWHZ1ZXphdEFjMWM4UmxTZ0V0?=
 =?utf-8?B?QUlJM3Q5TVdGRGpUYUpUS0xGZWROY2ZsZS9iay9wRG1vdlE1cmd2Z0RYc3Uv?=
 =?utf-8?B?KzR1bFBEWTFFQmRnQ09mMXJrbGxIajVjaFlqTEJDQStWNE5idVNxK1FYRU4x?=
 =?utf-8?B?ZXhFZTRrRW5meUhYdGk4T01UNVNSQW9wdlBGNzlLbjc2QWd0SkIySEpEUDlF?=
 =?utf-8?B?RnRqUFVlejRIeGNvN005MDdtcHFCNm0xb29ZNHY5ZGJ4SWVTWUgrZFAvY2pu?=
 =?utf-8?B?U1VWdk9vRVkxUVhJU0pTVFZZK3ZIRkNwWkw5WUQrWkxmR25sRlFZbkU2MnJa?=
 =?utf-8?B?KzUzYUtoaStuTEtaUDR6QTZiUFo3a3UwR3M4b3YrM0NCQUZrTmY4ckM5eUQ5?=
 =?utf-8?B?Ty83VE5sRW1CaEtWNlRQQW1qOUhBOUZoZlo2K291eWxCTFNRTHA4b0lza1J6?=
 =?utf-8?B?THVHbUJjY1BIQjhCdzZpQnVJbXU4Rno5cFRlcEtPdUZCbWIzcnRrY1diT25x?=
 =?utf-8?B?SWE0cHV4N3FBTU5adWNOeWFIMCtiK293REY1c2tQUFltekh2QzRDNVJka2Ry?=
 =?utf-8?B?Rzd4Z2wwTkUyMWpSVGZMMFBhd3RlcjdnVWxYVEdGRG1PWTY3YjIrQTRIU3pI?=
 =?utf-8?B?Ti9PUlZBOUVINlBFYXRPVnppRWU4SVd0OVRGbkUvUHN0Mi9OMG9NMHQxdGQy?=
 =?utf-8?B?KzYwNE0rakE4VVJCdk5Pa3JEUTlhaTRRZEc1RzJZM2lBU3JUUUMzalg0amF6?=
 =?utf-8?B?U3VLdC9xQUxXUWp5aUZ4bE82REtxaWJFU25Da3d6NkdLUFFySUZUaFE4bjVv?=
 =?utf-8?B?N1QwVk9iL0JnazlER21XSlc3MGJMU1FLMU82d2lDSEdHbkw4Y2V2THBDV3pM?=
 =?utf-8?B?Z1diQldwUUorY0o2V0MvWWFXbjlhZitJV3lKNGdVZzU1c0ZBRjVQQnNhREJN?=
 =?utf-8?B?aVJqU3YvWm8rSDh6a1M0bGl5eHpldU01VmdGYjFWbnd0OVZ0eit5K2hJNC9E?=
 =?utf-8?B?WU9WdzRyYjRmbXIrd1kwYWZ4QUh1cXJSSk9BTk0xOG54T056MjVyRlYyNkJO?=
 =?utf-8?B?dFErU2tmSEsrQnFqWWh2b3M4cEhaQUdWZzFDUnNSTi9VYnVnazgwaTdDQ0dG?=
 =?utf-8?B?V3ROOUhBUFNQaUl6ZlVsdG1FU05NNmxGdytGNmdyS1grK1MvSjNEaDRqSU04?=
 =?utf-8?B?WisvUzM0RjVUbjA0YkduUTJIditNd3JPRTl0SFp6Mk5BNEx3NjNsYkw3QjFT?=
 =?utf-8?B?QnhBZStZak5zNlpTMVZiMm82UUlKWkEvOXFUTi96YkhJakY5WkhYaUV0bnNN?=
 =?utf-8?B?K1Y2RmVpdUhVQjVabDdjaGlMeVBqajltcW5qRjRDNnFUeUJlUXA1aG5xekZK?=
 =?utf-8?B?Z2NiZzZ2QUhmSkYvYUVCRElweHA0V2NnNStyUUp2QVh6SWpoWk11ejRtOHAw?=
 =?utf-8?B?eU5KK2k2YTRjV0xNT09UelZCNGMvNjMzR242WjRTaFlJTSt3UnZiMWp2bSsx?=
 =?utf-8?B?R2ZGNDZHMVFsOURRVUlBNXFlZndMbXRSYlZSQzByaGQwcW5xamJHSzNEWVZq?=
 =?utf-8?B?dzVWdHI1MTZPczlTb1ZtT21xbjdLQmNaUDVhalQzeFNaNy9Sd2pjU0hHcFVR?=
 =?utf-8?B?cUFITjg2MXRORzFRVUZHNzVKSmJvTUxYNWo0d2hSc0dNemFQU1FCNkJWNUZ2?=
 =?utf-8?B?MFlkZTNCV2hPZGJOUnFlM2NKT2tHOFo0V0dieWMzTkZ6VFp1S0JFUXpSdXA1?=
 =?utf-8?B?cUlXOXREV0ZURW9lclhMS2NmNGIxL3hHbmI2WGJ5SkllOUZNbHJ3amNCNG9q?=
 =?utf-8?B?V1RDZGtXTzI5YzVYZTZNenAzb3plcmFXdGJrUE1ac0szMWxJRi9ONHE2TG54?=
 =?utf-8?B?TGd0cUZXOWJpNnRjK3pKaHYwNUJIMHJvMCtWSVBoZ3NnWldQZmtXZDBBYldz?=
 =?utf-8?B?RW5uQmZVSTRhQ1A2REZQU3gydWt0R1pIZ3ppWTZOTFhhcnB4VGVRN3p3MDNM?=
 =?utf-8?B?UWc9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df1f7cc1-1665-4092-6bfb-08da770aa23c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2022 17:47:58.1281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IkvHurNglASjpRZoMMN8ZclNdMkSR+8J5mit67FRJeDDWGvr3mS9ekXjLUZP8XidpNPpXhn+uA5YZAxYCXOQkesxu1A4Vc6tsA+bVXowC9M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4310
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659721683; x=1691257683;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AK18KJcBPmpUcX43r5xrbeVa35Kd+9aGJVh5p0SspYw=;
 b=BfEwAP67YkU3jaH4SV0QbOQ2atGX6W3YNOykq1nyycF6lcjS6FLxPh1D
 2yUmo0CkRBa0MRa/tyuN6YX1i4Vu5EynVtCLa5nmDiVnyxLpylq48lSwz
 bwUryfQgZHidP5aV5PWauly2HGdft30Tyel9L4E7QciUghGmF4hPxG9nb
 56mRSheA3wX/U2zd1rkt81d5Dv0l6F9tdv9OiUZfIOKMGp0xDfmDFaDDf
 3VghNtnpNKeKnB6EE7PVo636OKl/CG4cEc7unlvkSfiJizzlTzOiXz2+d
 zzHtGlC6bsWC18X1WSEU5PrIv325HnTxj18Kz9Nk3f2rhor/ls16lV4jN
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BfEwAP67
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: add description and
 modify interrupts configuration procedure
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
Cc: "Gawin, JaroslawX" <jaroslawx.gawin@intel.com>, "Staikov,
 Andrii" <andrii.staikov@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gQW5k
cmlpIFN0YWlrb3YNCj4gU2VudDogRnJpZGF5LCBBdWd1c3QgMDUsIDIwMjIgNDozNCBBTQ0KPiBU
bzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IEdhd2luLCBKYXJvc2xh
d1ggPGphcm9zbGF3eC5nYXdpbkBpbnRlbC5jb20+OyBTdGFpa292LCBBbmRyaWkNCj4gPGFuZHJp
aS5zdGFpa292QGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENI
IG5ldC1uZXh0IHYxXSBpNDBlOiBhZGQgZGVzY3JpcHRpb24gYW5kDQo+IG1vZGlmeSBpbnRlcnJ1
cHRzIGNvbmZpZ3VyYXRpb24gcHJvY2VkdXJlDQo+IA0KPiBGcm9tOiBTdGFpa292IEFuZHJpaSA8
YW5kcmlpLnN0YWlrb3ZAaW50ZWwuY29tPg0KDQpXQVJOSU5HOiBGcm9tOi9TaWduZWQtb2ZmLWJ5
OiBlbWFpbCBuYW1lIG1pc21hdGNoOiAnRnJvbTogU3RhaWtvdiBBbmRyaWkgPGFuZHJpaS5zdGFp
a292QGludGVsLmNvbT4nICE9ICdTaWduZWQtb2ZmLWJ5OiBBbmRyaWkgU3RhaWtvdiA8YW5kcmlp
LnN0YWlrb3ZAaW50ZWwuY29tPicNCg0KPiANCj4gQWRkIGRlc2NyaXB0aW9uIGZvciB2YWx1ZXMg
d3JpdHRlbiBpbnRvIHJlZ2lzdGVycyBRSU5UX1hYWFggYW5kIHNtYWxsDQo+IGNvc21ldGljIGNo
YW5nZXMgZm9yIE1TSS9MRUdBQ1kgaW50ZXJydXB0cyBjb25maWd1cmF0aW9uIGluIHRoZSBzYW1l
IHdheQ0KPiBhcyBmb3IgTVNJLVguDQo+IERlc2NyaXB0aW9ucyBjb25maXJtIHRoZSBjb2RlIGlz
IHdyaXR0ZW4gY29ycmVjdGx5IGFuZCBtYWtlIHRoZSBjb2RlIGNsZWFyLg0KPiBTbWFsbCBjb3Nt
ZXRpYyBjaGFuZ2VzIGZvciBNU0kvTEVHQUNZIGludGVycnVwdHMgbWFrZSBjb2RlIGNsZWFyIGlu
IHRoZQ0KPiBzYW1lIG1hbm5lciBhcyBmb3IgTVNJLVggaW50ZXJydXB0cy4NCj4gV2l0aG91dCB0
aGlzIGRlc2NyaXB0aW9ucyB0aGUgY29kZSBkb2Vzbid0IGxvb2sgcmlnaHQuDQoNCkkgd291bGQg
c2F5IHRoYXQncyBhcmd1YWJsZSDwn5iKDQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEphcm9zbGF3
IEdhd2luIDxqYXJvc2xhd3guZ2F3aW5AaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBBbmRy
aWkgU3RhaWtvdiA8YW5kcmlpLnN0YWlrb3ZAaW50ZWwuY29tPg0KDQpJZiB5b3UgYXJlIHRoZSBh
dXRob3IsIHlvdSBzaG91bGQgYmUgdGhlIGZpcnN0IFNpZ24tb2ZmLiBUaGF0IHdvdWxkIG1ha2Ug
SmFyb3NsYXcgYSBDby1kZXZlbG9wZWQtYnk/IFdoaWNoIHNob3VsZCBiZSBhZGRlZCBpZiBzby4N
Cg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oICAgICAg
fCAxNCArKysrKysrKw0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21h
aW4uYyB8IDM2ICsrKysrKysrLS0tLS0tLS0tLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyOCBp
bnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaA0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZS5oDQo+IGluZGV4IGQ4NmI2ZDM0OWVhOS4uOWE2MGQ2YjIwN2Y3IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaA0KPiAr
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaA0KPiBAQCAtMzk5LDYg
KzM5OSwyMCBAQCBzdHJ1Y3QgaTQwZV9kZHBfb2xkX3Byb2ZpbGVfbGlzdCB7DQo+ICAJCQkJIEk0
MEVfRkxFWF81NF9NQVNLIHwgSTQwRV9GTEVYXzU1X01BU0sNCj4gfCBcDQo+ICAJCQkJIEk0MEVf
RkxFWF81Nl9NQVNLIHwgSTQwRV9GTEVYXzU3X01BU0spDQo+IA0KPiArI2RlZmluZSBJNDBFX1FJ
TlRfVFFDVExfVkFMKHFwLCB2ZWN0b3IsIG5leHRxX3R5cGUpIFwNCj4gKwkoSTQwRV9RSU5UX1RR
Q1RMX0NBVVNFX0VOQV9NQVNLIHwgXA0KPiArCShJNDBFX1RYX0lUUiA8PCBJNDBFX1FJTlRfVFFD
VExfSVRSX0lORFhfU0hJRlQpIHwgXA0KPiArCSgodmVjdG9yKSA8PCBJNDBFX1FJTlRfVFFDVExf
TVNJWF9JTkRYX1NISUZUKSB8IFwNCj4gKwkoKHFwKSA8PCBJNDBFX1FJTlRfVFFDVExfTkVYVFFf
SU5EWF9TSElGVCkgfCBcDQo+ICsJKEk0MEVfUVVFVUVfVFlQRV8jI25leHRxX3R5cGUgPDwNCj4g
STQwRV9RSU5UX1RRQ1RMX05FWFRRX1RZUEVfU0hJRlQpKQ0KPiArDQo+ICsjZGVmaW5lIEk0MEVf
UUlOVF9SUUNUTF9WQUwocXAsIHZlY3RvciwgbmV4dHFfdHlwZSkgXA0KPiArCShJNDBFX1FJTlRf
UlFDVExfQ0FVU0VfRU5BX01BU0sgfCBcDQo+ICsJKEk0MEVfUlhfSVRSIDw8IEk0MEVfUUlOVF9S
UUNUTF9JVFJfSU5EWF9TSElGVCkgfCBcDQo+ICsJKCh2ZWN0b3IpIDw8IEk0MEVfUUlOVF9SUUNU
TF9NU0lYX0lORFhfU0hJRlQpIHwgXA0KPiArCSgocXApIDw8IEk0MEVfUUlOVF9SUUNUTF9ORVhU
UV9JTkRYX1NISUZUKSB8IFwNCj4gKwkoSTQwRV9RVUVVRV9UWVBFXyMjbmV4dHFfdHlwZSA8PA0K
PiBJNDBFX1FJTlRfUlFDVExfTkVYVFFfVFlQRV9TSElGVCkpDQo+ICsNCj4gIHN0cnVjdCBpNDBl
X2ZsZXhfcGl0IHsNCj4gIAlzdHJ1Y3QgbGlzdF9oZWFkIGxpc3Q7DQo+ICAJdTE2IHNyY19vZmZz
ZXQ7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
bWFpbi5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYw0K
PiBpbmRleCA5ZjFkNWRlN2JmMTYuLjE3NDUxMWQ2NDYyNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYw0KPiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jDQo+IEBAIC0zODc4LDcgKzM4NzgsNyBA
QCBzdGF0aWMgdm9pZCBpNDBlX3ZzaV9jb25maWd1cmVfbXNpeChzdHJ1Y3QgaTQwZV92c2kNCj4g
KnZzaSkNCj4gIAkJd3IzMihodywgSTQwRV9QRklOVF9SQVRFTih2ZWN0b3IgLSAxKSwNCj4gIAkJ
ICAgICBpNDBlX2ludHJsX3VzZWNfdG9fcmVnKHZzaS0+aW50X3JhdGVfbGltaXQpKTsNCj4gDQo+
IC0JCS8qIExpbmtlZCBsaXN0IGZvciB0aGUgcXVldWVwYWlycyBhc3NpZ25lZCB0byB0aGlzIHZl
Y3RvciAqLw0KPiArCQkvKiBiZWdpbiBvZiBsaW5rZWQgbGlzdCBmb3IgUlggcXVldWUgYXNzaWdu
ZWQgdG8gdGhpcyB2ZWN0b3IgKi8NCj4gIAkJd3IzMihodywgSTQwRV9QRklOVF9MTktMU1ROKHZl
Y3RvciAtIDEpLCBxcCk7DQo+ICAJCWZvciAocSA9IDA7IHEgPCBxX3ZlY3Rvci0+bnVtX3Jpbmdw
YWlyczsgcSsrKSB7DQo+ICAJCQl1MzIgbmV4dHFwID0gaGFzX3hkcCA/IHFwICsgdnNpLT5hbGxv
Y19xdWV1ZV9wYWlycyA6DQo+IHFwOyBAQCAtMzg5NCw2ICszODk0LDcgQEAgc3RhdGljIHZvaWQg
aTQwZV92c2lfY29uZmlndXJlX21zaXgoc3RydWN0DQo+IGk0MGVfdnNpICp2c2kpDQo+ICAJCQl3
cjMyKGh3LCBJNDBFX1FJTlRfUlFDVEwocXApLCB2YWwpOw0KPiANCj4gIAkJCWlmIChoYXNfeGRw
KSB7DQo+ICsJCQkJLyogVFggcXVldWUgd2l0aCBuZXh0IHF1ZXVlIHNldCB0byBUWCAqLw0KPiAg
CQkJCXZhbCA9IEk0MEVfUUlOVF9UUUNUTF9DQVVTRV9FTkFfTUFTSw0KPiB8DQo+ICAJCQkJICAg
ICAgKEk0MEVfVFhfSVRSIDw8DQo+IEk0MEVfUUlOVF9UUUNUTF9JVFJfSU5EWF9TSElGVCkgfA0K
PiAgCQkJCSAgICAgICh2ZWN0b3IgPDwNCj4gSTQwRV9RSU5UX1RRQ1RMX01TSVhfSU5EWF9TSElG
VCkgfCBAQCAtMzkwMyw3ICszOTA0LDcgQEAgc3RhdGljIHZvaWQNCj4gaTQwZV92c2lfY29uZmln
dXJlX21zaXgoc3RydWN0IGk0MGVfdnNpICp2c2kpDQo+IA0KPiAgCQkJCXdyMzIoaHcsIEk0MEVf
UUlOVF9UUUNUTChuZXh0cXApLCB2YWwpOw0KPiAgCQkJfQ0KPiAtDQo+ICsJCQkvKiBUWCBxdWV1
ZSB3aXRoIG5leHQgUlggb3IgZW5kIG9mIGxpbmtlZCBsaXN0ICovDQo+ICAJCQl2YWwgPSBJNDBF
X1FJTlRfVFFDVExfQ0FVU0VfRU5BX01BU0sgfA0KPiAgCQkJICAgICAgKEk0MEVfVFhfSVRSIDw8
DQo+IEk0MEVfUUlOVF9UUUNUTF9JVFJfSU5EWF9TSElGVCkgfA0KPiAgCQkJICAgICAgKHZlY3Rv
ciA8PCBJNDBFX1FJTlRfVFFDVExfTVNJWF9JTkRYX1NISUZUKQ0KPiB8IEBAIC0zOTcyLDcgKzM5
NzMsNiBAQCBzdGF0aWMgdm9pZCBpNDBlX2NvbmZpZ3VyZV9tc2lfYW5kX2xlZ2FjeShzdHJ1Y3QN
Cj4gaTQwZV92c2kgKnZzaSkNCj4gIAlzdHJ1Y3QgaTQwZV9xX3ZlY3RvciAqcV92ZWN0b3IgPSB2
c2ktPnFfdmVjdG9yc1swXTsNCj4gIAlzdHJ1Y3QgaTQwZV9wZiAqcGYgPSB2c2ktPmJhY2s7DQo+
ICAJc3RydWN0IGk0MGVfaHcgKmh3ID0gJnBmLT5odzsNCj4gLQl1MzIgdmFsOw0KPiANCj4gIAkv
KiBzZXQgdGhlIElUUiBjb25maWd1cmF0aW9uICovDQo+ICAJcV92ZWN0b3ItPnJ4Lm5leHRfdXBk
YXRlID0gamlmZmllcyArIDE7IEBAIC0zOTg5LDI4ICszOTg5LDIwIEBADQo+IHN0YXRpYyB2b2lk
IGk0MGVfY29uZmlndXJlX21zaV9hbmRfbGVnYWN5KHN0cnVjdCBpNDBlX3ZzaSAqdnNpKQ0KPiAg
CS8qIEZJUlNUUV9JTkRYID0gMCwgRklSU1RRX1RZUEUgPSAwIChyeCkgKi8NCj4gIAl3cjMyKGh3
LCBJNDBFX1BGSU5UX0xOS0xTVDAsIDApOw0KPiANCj4gLQkvKiBBc3NvY2lhdGUgdGhlIHF1ZXVl
IHBhaXIgdG8gdGhlIHZlY3RvciBhbmQgZW5hYmxlIHRoZSBxdWV1ZSBpbnQNCj4gKi8NCj4gLQl2
YWwgPSBJNDBFX1FJTlRfUlFDVExfQ0FVU0VfRU5BX01BU0sJCSAgICAgICB8DQo+IC0JICAgICAg
KEk0MEVfUlhfSVRSIDw8IEk0MEVfUUlOVF9SUUNUTF9JVFJfSU5EWF9TSElGVCkgIHwNCj4gLQkg
ICAgICAobmV4dHFwCSAgIDw8IEk0MEVfUUlOVF9SUUNUTF9ORVhUUV9JTkRYX1NISUZUKXwNCj4g
LQkgICAgICAoSTQwRV9RVUVVRV9UWVBFX1RYIDw8DQo+IEk0MEVfUUlOVF9UUUNUTF9ORVhUUV9U
WVBFX1NISUZUKTsNCj4gLQ0KPiAtCXdyMzIoaHcsIEk0MEVfUUlOVF9SUUNUTCgwKSwgdmFsKTsN
Cj4gLQ0KPiAtCWlmIChpNDBlX2VuYWJsZWRfeGRwX3ZzaSh2c2kpKSB7DQo+IC0JCXZhbCA9IEk0
MEVfUUlOVF9UUUNUTF9DQVVTRV9FTkFfTUFTSwkJICAgICB8DQo+IC0JCSAgICAgIChJNDBFX1RY
X0lUUiA8PCBJNDBFX1FJTlRfVFFDVExfSVRSX0lORFhfU0hJRlQpfA0KPiAtCQkgICAgICAoSTQw
RV9RVUVVRV9UWVBFX1RYDQo+IC0JCSAgICAgICA8PCBJNDBFX1FJTlRfVFFDVExfTkVYVFFfVFlQ
RV9TSElGVCk7DQo+ICsJLyogQXNzb2NpYXRlIHRoZSBxdWV1ZSBwYWlyIHRvIHRoZSB2ZWN0b3Ig
YW5kIGVuYWJsZSB0aGUgcXVldWUNCj4gKwkgKiBpbnRlcnJ1cHQgUlggcXVldWUgaW4gbGlua2Vk
IGxpc3Qgd2l0aCBuZXh0IHF1ZXVlIHNldCB0byBUWA0KPiArCSAqLw0KPiArCXdyMzIoaHcsIEk0
MEVfUUlOVF9SUUNUTCgwKSwgSTQwRV9RSU5UX1JRQ1RMX1ZBTChuZXh0cXAsIDAsDQo+IFRYKSk7
DQo+IA0KPiAtCQl3cjMyKGh3LCBJNDBFX1FJTlRfVFFDVEwobmV4dHFwKSwgdmFsKTsNCj4gKwlp
ZiAobmV4dHFwKSB7DQoNCkkgZmluZCB0aGlzIG1vcmUgcmVhZGFibGUgdXNpbmcgdGhlIGV4aXN0
aW5nIGk0MGVfZW5hYmxlZF94ZHBfdnNpKCkgY2hlY2sgb3ZlciBuZXh0cXAuDQoNCj4gKwkJLyog
VFggcXVldWUgaW4gbGlua2VkIGxpc3Qgd2l0aCBuZXh0IHF1ZXVlIHNldCB0byBUWCAqLw0KPiAr
CQl3cjMyKGh3LCBJNDBFX1FJTlRfVFFDVEwobmV4dHFwKSwNCj4gKwkJICAgICBJNDBFX1FJTlRf
VFFDVExfVkFMKG5leHRxcCwgMCwgVFgpKTsNCj4gIAl9DQo+IA0KPiAtCXZhbCA9IEk0MEVfUUlO
VF9UUUNUTF9DQVVTRV9FTkFfTUFTSwkJICAgICAgfA0KPiAtCSAgICAgIChJNDBFX1RYX0lUUiA8
PCBJNDBFX1FJTlRfVFFDVExfSVRSX0lORFhfU0hJRlQpIHwNCj4gLQkgICAgICAoSTQwRV9RVUVV
RV9FTkRfT0ZfTElTVCA8PA0KPiBJNDBFX1FJTlRfVFFDVExfTkVYVFFfSU5EWF9TSElGVCk7DQo+
IC0NCj4gLQl3cjMyKGh3LCBJNDBFX1FJTlRfVFFDVEwoMCksIHZhbCk7DQo+ICsJLyogbGFzdCBU
WCBxdWV1ZSBzbyB0aGUgbmV4dCBSWCBxdWV1ZSBkb2Vzbid0IG1hdHRlciAqLw0KPiArCXdyMzIo
aHcsIEk0MEVfUUlOVF9UUUNUTCgwKSwNCj4gKwkgICAgIEk0MEVfUUlOVF9UUUNUTF9WQUwoSTQw
RV9RVUVVRV9FTkRfT0ZfTElTVCwgMCwgUlgpKTsNCj4gIAlpNDBlX2ZsdXNoKGh3KTsNCj4gIH0N
Cj4gDQo+IC0tDQo+IDIuMjUuMQ0KPiANCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IEludGVsIFRlY2hub2xv
Z3kgUG9sYW5kIHNwLiB6IG8uby4NCj4gdWwuIFNsb3dhY2tpZWdvIDE3MyB8IDgwLTI5OCBHZGFu
c2sgfCBTYWQgUmVqb25vd3kgR2RhbnNrIFBvbG5vYyB8IFZJSQ0KPiBXeWR6aWFsIEdvc3BvZGFy
Y3p5IEtyYWpvd2VnbyBSZWplc3RydSBTYWRvd2VnbyAtIEtSUyAxMDE4ODIgfCBOSVAgOTU3LQ0K
PiAwNy01Mi0zMTYgfCBLYXBpdGFsIHpha2xhZG93eSAyMDAuMDAwIFBMTi4NCj4gVGEgd2lhZG9t
b3NjIHdyYXogeiB6YWxhY3puaWthbWkgamVzdCBwcnplem5hY3pvbmEgZGxhIG9rcmVzbG9uZWdv
DQo+IGFkcmVzYXRhIGkgbW96ZSB6YXdpZXJhYyBpbmZvcm1hY2plIHBvdWZuZS4gVyByYXppZSBw
cnp5cGFka293ZWdvDQo+IG90cnp5bWFuaWEgdGVqIHdpYWRvbW9zY2ksIHByb3NpbXkgbyBwb3dp
YWRvbWllbmllIG5hZGF3Y3kgb3JheiB0cndhbGUNCj4gamVqIHVzdW5pZWNpZTsgamFraWVrb2x3
aWVrIHByemVnbGFkYW5pZSBsdWIgcm96cG93c3plY2huaWFuaWUgamVzdA0KPiB6YWJyb25pb25l
Lg0KPiBUaGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIG1heSBjb250YWluIGNvbmZpZGVu
dGlhbCBtYXRlcmlhbCBmb3IgdGhlDQo+IHNvbGUgdXNlIG9mIHRoZSBpbnRlbmRlZCByZWNpcGll
bnQocykuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsDQo+IHBsZWFzZSBj
b250YWN0IHRoZSBzZW5kZXIgYW5kIGRlbGV0ZSBhbGwgY29waWVzOyBhbnkgcmV2aWV3IG9yIGRp
c3RyaWJ1dGlvbiBieQ0KPiBvdGhlcnMgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4NCg0KUGxlYXNl
IHJlbW92ZSB0aGlzIGZvb3Rlci4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
