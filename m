Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E894FB4174A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 09:54:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CBF6848C7;
	Wed,  3 Sep 2025 07:53:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7ZtKxv4F6lEB; Wed,  3 Sep 2025 07:53:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76A0A848C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756886037;
	bh=9MJcc1vpk6PRoFHtxrZ2YJZOrpyd2UXFcVblnCpq4IM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bxHsD14OoAVq5RowEC8R/NT8oFHW+tNG5Af5avRhlOVAsi33D81iSIzMgCtzhwj9q
	 CLpwF4SIyGXHO9z9gyKgBw7uBxN41ykqzhtYYdqCrewP2WsU2S+ntKCI8tU5n/AhFn
	 AzwbPzQjUnQ/37J33hhy5qgVauDlk6n+yRcAyJifvlOtbcog1fxF9KC4kvn9VLmuDp
	 2qHGTgOf9aS7NgpOdWnBQdrOh8vXV/CACj/GXv5GGPbXuote9AUxqrNZDN9G3g50Qn
	 tFdE93zWTszZTx0MAuz8Vq8/LEwsUEfVzYe+NzOlOg89AXJx83DGkURdThPS4YHcUF
	 uq4bVaxC/5yIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76A0A848C8;
	Wed,  3 Sep 2025 07:53:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 353A92BA9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 07:53:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 26FC46E336
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 07:53:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rMoH7jsxehIs for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 07:53:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=priyax.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6B197614BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B197614BD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6B197614BD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 07:53:55 +0000 (UTC)
X-CSE-ConnectionGUID: KL57+dk9SIOvtNw1DWxxEg==
X-CSE-MsgGUID: 9WH3zJfNQLCdyrNRok28tQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="58219755"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="58219755"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 00:53:54 -0700
X-CSE-ConnectionGUID: zP+m3md+RqS4GiPz56GPtg==
X-CSE-MsgGUID: bXPu43OVTZeIqvntBP7NkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="171075713"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 00:53:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 00:53:53 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 00:53:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.70) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 00:53:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hbZXQTB0NrBB3EEbYxfywTj7yWmMlqjnJaciuKSdz5l/u7RDOGdKClCL6cfwmNTXhtoz1WGtq7xniP2lG8OMFwQzC5O2m6ha0Nvy/Gf+pA8jL94igiBQ2ufwY1C5kIqy1xX+ztrdMpPL8fX+nq1/Lipy5MtnWt80g9jbbA2MuvoHZlSvDGifbH7UyH8CQhVTE89/wPGvi759SI87FPR/t/ByNfHO2XRVciXYT2Ft8gEtPrsQrQUb4GA8TRbyQOXM3ls7C9q9ClxzE2Sa05ixkWRz5rHcg6qKYWYL59vTl2O56MUE/Ol0WLfiigm7gUKlzuD4G1S8uPOxxhXvukFnaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9MJcc1vpk6PRoFHtxrZ2YJZOrpyd2UXFcVblnCpq4IM=;
 b=WP515JAcdeESr1dm1IMzkTKLJEN5ohWxo2mr6Bds7+9vigCqLRZDtag9ORaI764k2UBpVYxvaZmP+0VuEpOohge8qcq4eycGZHQhODkA7RZyZ0/MQMKLFQOrEjnXQXBcThLBatSX6cxEmwg4tuXwsn+89GymBAD70KQw+q4OOyEWYdbnizCh6P4ahFno8y6VygKJynWEKUFsAHJb230FKRoVCtGexQneEzUZtzTXOPiCcnLItJYfmLZFugbB0hPnu8XvybfUbCa9MHFNO8cN6S1ouVb1HUY8FzADCGSf516JuOHBDTIMtLI2SOqdBsvIJagmm03y02aFOu0waiJp0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPF67C992ECC.namprd11.prod.outlook.com
 (2603:10b6:518:1::d28) by PH3PPF37A184CA6.namprd11.prod.outlook.com
 (2603:10b6:518:1::d15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.25; Wed, 3 Sep
 2025 07:53:50 +0000
Received: from PH3PPF67C992ECC.namprd11.prod.outlook.com
 ([fe80::8435:3b39:7eee:480]) by PH3PPF67C992ECC.namprd11.prod.outlook.com
 ([fe80::8435:3b39:7eee:480%7]) with mapi id 15.20.9052.021; Wed, 3 Sep 2025
 07:53:50 +0000
From: "Singh, PriyaX" <priyax.singh@intel.com>
To: "intel-wired-lan-bounces@osuosl.org" <intel-wired-lan-bounces@osuosl.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/3] ice: drop page
 splitting and recycling
Thread-Index: AQHcCH0wIKVwiQnJSUel9OyxNh24HLR/f+UAgAANGoCAAaZeUIAACpXg
Date: Wed, 3 Sep 2025 07:53:50 +0000
Message-ID: <PH3PPF67C992ECC0B4A37DB80F8D88270609101A@PH3PPF67C992ECC.namprd11.prod.outlook.com>
References: <20250808155659.1053560-1-michal.kubiak@intel.com>
 <20250808155659.1053560-3-michal.kubiak@intel.com>
 <PH0PR11MB501328DFC538260A11368B499606A@PH0PR11MB5013.namprd11.prod.outlook.com>
 <PH3PPF67C992ECC2AD31E5DB372B564E20A9106A@PH3PPF67C992ECC.namprd11.prod.outlook.com>
 <PH3PPF67C992ECC42A31833C78908719A7A9101A@PH3PPF67C992ECC.namprd11.prod.outlook.com>
In-Reply-To: <PH3PPF67C992ECC42A31833C78908719A7A9101A@PH3PPF67C992ECC.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPF67C992ECC:EE_|PH3PPF37A184CA6:EE_
x-ms-office365-filtering-correlation-id: 54f4d261-605e-4b44-0896-08ddeabf055a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?7qf9SCqIltx3hkoXvu6GRreXqb+6CTnb1r3YRMbh7BTtslU8dTm1ODC90jO6?=
 =?us-ascii?Q?pmzidex4XHOLPoHsUz6bbpmscMwAI2d3cU+GepchprCLOmldKqCX+RfCOOCG?=
 =?us-ascii?Q?Xl+rKHeIFp8+CiZZ6bS4ySawb0pDr1+Xt2ztlSw6v1klCHgLlAyDJD0i/b7d?=
 =?us-ascii?Q?bvlIxAbtbAgPa2F/LgD7DrycBpZ7jsb7WTqxwUBLuSRju3T3LIHiJ02bbefc?=
 =?us-ascii?Q?BAsZL7Qo4JhnjttrWtZ7u3AUCHgOyb9j8bRraVyNJPMuZYMx7T76BedVMwlj?=
 =?us-ascii?Q?iDrjhlyEb3GjF0Mznf1eVhwLWn677KNLzm7FaT5sqjTwUX6Vq0mdVVq6Diu6?=
 =?us-ascii?Q?8t24PRcB8LXvIb4GMfN1nqq6QpezC/XWRaT4TJPA/VzVR+reimiHh0zdkT2C?=
 =?us-ascii?Q?lK1ZTCmJXe/+DxHzzaY1Ss0x6Ax+tnXHt71F5i9ADchFZ+1YqGyrwlgym6Qz?=
 =?us-ascii?Q?svWqiIG18BijzK7V+7ctwCbQ26Pvn60ixz1vMEZjuY3mEFEL549HOw0Ecag3?=
 =?us-ascii?Q?2jQUdr5lI0OAVRiVxY/7Y6CoWQi7wYeVB/FBkeEfGwCYtefA3sKEGcT+AGHA?=
 =?us-ascii?Q?QXs5Oc+XGsV/Es/RoZZshl2hZRdeM3iQxdItgYTVnG7e7AyMsSWhcMtPsnk6?=
 =?us-ascii?Q?gCHzA3tt2tOq7uEVoapiybigkWu4HR+MjfmLvZe8Q12BZLO2GO3rmSDj+6/b?=
 =?us-ascii?Q?uQedjIehBpfvMNAXJHLiQ/rV1UeLmD+4/Hap1DmfCMTMQ99DkQAW2LVur8nR?=
 =?us-ascii?Q?TAYIGxQ9PGoJyjcU1WVcOdeY2sIv85Mj+TCzpyvij/kT/EuP7revYHUHW1vr?=
 =?us-ascii?Q?LUWR7HyZ7JVCTzKW3l/6gwsb5UqRA6gUdSF4W3czNB+QXK5oxif1QISBzks5?=
 =?us-ascii?Q?xaPYX0U4ZMw/TQ1X7mtq2QABV2p22YKM6sLOvlfs1dOfaOPgFGcmlhrd5z9V?=
 =?us-ascii?Q?tvhkH+9XnQ++qBbZgCyEbLBsuvxSle03kBbsNpxyOxLiBXcOUrm53eMdMoy4?=
 =?us-ascii?Q?dUOW+zbdyZSdou17dw9ULE7nnJxntMiFs2DRkwyXJQX/Kl7Xwutux2Sj/Rey?=
 =?us-ascii?Q?avlA8xQYRIUKRNLxf5R6u2s0nfsxK3kCGU7WuaJLS9mWsT5xubz6vx93xneO?=
 =?us-ascii?Q?T0uwnMPIL5lIIVWJNQHu1Zh/LKb+IqXxhPmPKmiiP7ra6KvwtRavl7MRlh2k?=
 =?us-ascii?Q?VXGb2vn+dyIri+8xhTynBbM7SEKUrRI+hpbIzFnbAYFNm76GfW5uvwBLHFIf?=
 =?us-ascii?Q?eirKEOLAKvOKOVWskCBbR00bZbSyNUt3fiUgSG09qM0M6B/0t7d1p4egBDex?=
 =?us-ascii?Q?JPqpk97ArzGC35//Od/VYfIB5+50xLgU+f8K8UWo5Fjjivg858F0BZaeWJ4P?=
 =?us-ascii?Q?HHJ0LaJbrp/TBAyGR1q2rgIuou3MA37U9hxwRC5moMUySd/PTOS2CBMVmWIf?=
 =?us-ascii?Q?GedefzXx9V0Uqp0VWOP9FLsW5nVmyx8zK1edWLZ3u14XD5ua3oTni7ZQhWIt?=
 =?us-ascii?Q?rhUIc+FYrTRjJ8M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPF67C992ECC.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xnxgXW/MLzgXekoGnQuCoeUg7KTzv70D4xKVMyBFzOglyrcGwv8s7z2aETDv?=
 =?us-ascii?Q?ozzr5QQNmoMuPiWbgt6lJoyxMXLwAX6IuqCODrqdte3H32W3i9kzO+C/6rF3?=
 =?us-ascii?Q?qdtal2upUnqy7EjrsgvfCI1IFJ3XOWAv+Zmc9FTm2y5o+v017ohWwpHuxerD?=
 =?us-ascii?Q?uOHvm92rDMJvSv1Vd+FW0RWQpMZdD9R8DvneBPvWJzsI+gXcRoKatqg5iYDh?=
 =?us-ascii?Q?ONroCctNF10j1CggyE+JuRLrrww14sd5v0GnZmqhQ6flG6MsRSErHmFtP5Xj?=
 =?us-ascii?Q?fxgvHCsvhUWzEM0sbSqz6VU6shmIWq8HyV7y1H5xbUWxRUFTNkXilAPoDfSK?=
 =?us-ascii?Q?Vp99iNQNe6z4j7C1ggiOkLJYJU/TjyfgdUWaWdtGfQuhr/JkSyNFwWFJbzJf?=
 =?us-ascii?Q?uPyBhziDidESED0pCY8IHAyrDggQHhg0lqb5gyLzrC9/JonRYIzjvHCaSg6v?=
 =?us-ascii?Q?LFYI2P/XWpZYmxgtvHwgClPzIAbRvbNAN5A8y4wWnMFkWQQBPN+nPFpou4g+?=
 =?us-ascii?Q?wlQzPh+bkZNwYYc6iS1cq+TMQahiWYbumSO10DbGXFckck35ejQLRnilmVgP?=
 =?us-ascii?Q?WzMaZqvj+jnkggwbpPA3/kZ8WOSfSQPwtYwJGYRzg3lVeGaPU2UEGp2YcGyA?=
 =?us-ascii?Q?mtqmSmpvo8pjQOjpF/XC39xLLXMuoy5W4/EAA6BoKrtlU9kA6dtPjXQgeceB?=
 =?us-ascii?Q?6kNBIffFiOXmweejvyP7hLFN1/bwYOwbIL5N8uDF7fj2e1/UJsd1feJTRFE/?=
 =?us-ascii?Q?ZCCu1ESWaYiX9A7Om6Cq4Kb5QepWYxYKylcIXgIkROdt9oUBfnt0ozi5pf5c?=
 =?us-ascii?Q?NhErzOuaNj+rJQ4Q6b26mMmSicQkGnGRsVxgAlrz8hA+B43qZtzMnFf0EhZ5?=
 =?us-ascii?Q?qij4s0abu80nCPSHRLF7Qn+C69r+RB4+kJpU+rTzr0xJ+THAcg9uz7apMrnG?=
 =?us-ascii?Q?74k7wUWVW72d13/ehkvP3nw8cy3M6YQURd8XJbbJhHLj6vWiUG33Xj+nTrkC?=
 =?us-ascii?Q?mI17sAlpcyi2afm8iUCoT3dgsxSCSpQkXMF0q0QJ1PZwM5yu5/6oC7Ri0z8b?=
 =?us-ascii?Q?7wFbKNMckwXfYhPBmXO21kC7s8gLUUp69H8HBWwBBoYfwOdw3a27DAI/vP4n?=
 =?us-ascii?Q?oyWh/VkLr3jqIq8IlHeC34n0r+8bFf2mzQULkGVfo84oOEt/sW9SRRLCTYAy?=
 =?us-ascii?Q?lxKIc8DoJwXbOGVKF9Pt/VhsO31flCE5KRBdkmsPVvBStBe5QZrDXTmbRovw?=
 =?us-ascii?Q?ZI9bAZ3Dp/GN5mb0vB2bwC+QiBtMZEBotyadEs97Bspc7EDEqSVG93MQFqGR?=
 =?us-ascii?Q?VoLaBzUqGCvEYeV04E1BWgI20q2jXmXKTyJT7yN6SZoJ+4hVFa76XF/u+QGO?=
 =?us-ascii?Q?e8RPzWVJUY6xfodZZZc14+SKpoAK9ZwZlfhg1rIDahWnXE0tW7WI7CdKQaTU?=
 =?us-ascii?Q?6GN+rxv0Pjw1nXjPqnKQgZhxSVOxtnFq1yT2HWgbyaLksfw934h1yr5eY4Ke?=
 =?us-ascii?Q?zPLGdNsa89GOJe+HMA3sZZs8afwPZOP8CBdB3MsIz5ETbalWoJZeKZNQd6ox?=
 =?us-ascii?Q?vQgDt93xahKLiZBkQ0BKqKIzFxztTEw7MS9wPhzk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPF67C992ECC.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54f4d261-605e-4b44-0896-08ddeabf055a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 07:53:50.5454 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 29qKCM2tnuh62gN4NDdisUOHUAPc5w2sUzHACEseXOtPeDmJeBkuyseUFE7iGj9CRuBGJRczIRmsOkMVO5r6vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF37A184CA6
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756886035; x=1788422035;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Couf9uWp32FtbjSh5ZkgKwBV0PxWrgeDj6ISjA5UVTA=;
 b=Ba1F5h2ZFc+/ckstPjnjzp66PPhhKkCRQTH9CnIqv/S+OcdNWCD+FuL9
 /6vAnQCYZ1vC5ELM8OnxHcF5zba1Loz9YG7pIuFZ9hdBt+8WGLa58pAI1
 Wf4zTMqwRnOZ/Xi6LGl5IippHBpwVqy0sfijRNEaik4DnqyFPlsKb+lCw
 0NEzlE8t8a50YDJHDlzNFBYKTKR6smH4Dl711lIUglc+YS8YTt0g+ZMfN
 zhe0cmtCpQpmxuaQW5oPvzU8vxXu6l424fxbzjoh7QzY1yVFimEjDIKoX
 am/ou8+b0i3No+f/07dPXMv/TNiSspgcI713O0UnT27Txff3YX7voDX0A
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ba1F5h2Z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/3] ice: drop page
 splitting and recycling
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "\(Meetup2\) MTR-FM1-AVLAB1" <fm1avlab1@intel.com>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Lobakin, 
 Aleksander" <aleksander.lobakin@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> As part of the transition toward Page Pool integration, remove the
> legacy page splitting and recycling logic from the ice driver. This
> mirrors the approach taken in commit 920d86f3c552 ("iavf: drop page
> splitting and recycling").
>=20
> The previous model attempted to reuse partially consumed pages by
> splitting them and tracking their usage across descriptors. While this
> was once a memory optimization, it introduced significant complexity
> and overhead in the Rx path, including:
> - Manual refcount management and page reuse heuristics;
> - Per-descriptor buffer shuffling, which could involve moving dozens
>    of `ice_rx_buf` structures per NAPI cycle;
> - Increased branching and cache pressure in the hotpath.
>=20
> This change simplifies the Rx logic by always allocating fresh pages
> and letting the networking stack handle their lifecycle. Although this
> may temporarily reduce performance (up to ~98% in some XDP cases), it
> greatly improves maintainability and paves the way for Page Pool,
> which will restore and exceed previous performance levels.
>
> The `ice_rx_buf` array is retained for now to minimize diffstat and
> ease future replacement with a shared buffer abstraction.
>=20
> Co-developed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h          |   2 +
>   drivers/net/ethernet/intel/ice/ice_base.c     | 26 ++--
>   drivers/net/ethernet/intel/ice/ice_txrx.c     | 136 ++----------------
>   drivers/net/ethernet/intel/ice/ice_txrx.h     |   8 --
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c |   5 +-
>  5 files changed, 25 insertions(+), 152 deletions(-)
>=20
Tested-by: Priya Singh <priyax.singh@intel.com>
