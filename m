Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38728939C1C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 09:59:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B928980ECA;
	Tue, 23 Jul 2024 07:59:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kME04GMOl9fM; Tue, 23 Jul 2024 07:59:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBBB380EB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721721542;
	bh=0X450Ne55fTXmVlQJJRQgtWwy1uUeUlJ5sHWpfdP0LQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SOx26g4Fjoiryg5/1+ItS7oN/PnNjoGPsOTDvQGfcAky2QykI01IxRJQ/cgAaRTcl
	 34oQ1OBKUfypamFm8unmachRr+RwZaH1ZZYDmUh3u+EvsoZGzPcSMjW2K8w6wpGz44
	 aQC1GTZiPN33mcRitlJStdSEciA2Cgmy+jrCfoB5sOVZ00o14azz+Z1OGsGE9jhCjj
	 6DDF1vEFOYV7+S28sHXSaneShIIDO8JmJogQ2RSd5mnaCDq4gdlt4oXs3Mkq1PLIDH
	 o9XRbmV6zmlo0V2DNv+pNhSFnqmXHfEtHb86P9u3GmuTAVLV13XTaUM1q3QZ16JRBa
	 GnvNyc3+x8O8Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBBB380EB5;
	Tue, 23 Jul 2024 07:59:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B7F11BF296
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:59:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5574E6071D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:59:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FwDYRGkW2Koz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 07:58:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 780F460715
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 780F460715
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 780F460715
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:58:59 +0000 (UTC)
X-CSE-ConnectionGUID: +Z9vAK1RR5SFwDNrX058pw==
X-CSE-MsgGUID: zdh7YJg6RrW/H6g/d/6lig==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19512757"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19512757"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 00:58:58 -0700
X-CSE-ConnectionGUID: LvX+HEcWTIm2wLsg3rZlPg==
X-CSE-MsgGUID: 964y0bQTQk+KafMwioxW6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="51858394"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 00:58:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 00:58:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 00:58:58 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 00:58:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ACJFcvnNhk3qqltOULM/RlCywU3cgHQ0UjenMWHxoNoOoLR/UUfykGEJNk4LC4DGzpKDZLRPYBWaCyagaAy7us1Z/37mo7CqxLvPBBvN9a2H0CfqovX9PAWsvnTM+X5e5b14UwI9rz/sLNGF92qUlrQTLXr1JMbEGtimtV9AkuQAO9UwjEtf3nWBygkdVBIKKmndB25JuLPCep5fG0F2HxHEEz8FyUqi+aafnGeKD3ypGcbJecx6ufuWcwJFV6ui6zaHff/5/Zuq6z3ahdlR5U5Kdn3GWKCYoKzcVjtZKA8dcjNFxNTcJHkJuQGMtweBI3x8sOkWP81BXNRbQr+oaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0X450Ne55fTXmVlQJJRQgtWwy1uUeUlJ5sHWpfdP0LQ=;
 b=JTJd05OYcUPiULx6qXUS9pu/w/kwmTQ1Tc3FGwet16KEVZvzUCI8g6v2xr54yWYDOUJCtjYROI2bAVHbGNRrB+67LgEtU0AdNTWnrNBPRSZrJzYQGtA12GWV9fsKFFn2Q1Z2JtWe4FUCHwExGJTToIfBzzNeFEWD4YqeMnrHEa4bTughfqpMu5H0/wGZQTJptzb0gIs8yW2wjFLbER9DHiyBuJp27mjEBpQI8FlVAyeWhVhZthI7dyraMj+VrRzaIR0t8kZRw88nR9dN2p4jfQa328SnCMbOc2u6UqUXglqhmfWhM4/FspTfbCPudIN81xG/gII06A8yXvuCFfLH4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DS0PR11MB6471.namprd11.prod.outlook.com (2603:10b6:8:c1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Tue, 23 Jul
 2024 07:58:50 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 07:58:50 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 05/13] ice: add parser
 execution main loop
Thread-Index: AQHasGgCdUA1B2B3IUSWKdWLyPGvmbIES1ZA
Date: Tue, 23 Jul 2024 07:58:50 +0000
Message-ID: <SJ0PR11MB5865A262B51FF90659BACE748FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
 <20240527185810.3077299-6-ahmed.zaki@intel.com>
In-Reply-To: <20240527185810.3077299-6-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DS0PR11MB6471:EE_
x-ms-office365-filtering-correlation-id: 22e6be49-9368-4b14-9e08-08dcaaed49c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?4lBDTI3aGqjRWzA1CkP8UlveIcQT9f5pIQZsJob/NizshUvDIhLSr1uK0Pjk?=
 =?us-ascii?Q?BXe0A8Dlt3oG7sMYEMAna650/CIXFMk8Kr+ljjbCtmQRaIWpetemNiaqCaK4?=
 =?us-ascii?Q?EXLaxT/BnWt3G1n5Fgb32bku5Y80DljkIVq/Kg1JBlG8GXwUaKVZzWlEgJru?=
 =?us-ascii?Q?zI17TaI4P5Zwv0RZetg1XpxwE1618bwhjLznSybijX5EtE4xqCcqkigKVBfB?=
 =?us-ascii?Q?pNMc6JZs6o30pJ7RdY2h1zOd4pTvKklLwjQ7oYYaDh6R9NolIxTJWUNQkSjE?=
 =?us-ascii?Q?BRl78DMAX+OKOGLYVwX+ibVF6e05Qdhr0oFmWU0kfP0kIYbLufV/J2pUiRY8?=
 =?us-ascii?Q?HycCUXxfdSJSqCeQX+OogtVgfRzWUD+Cu6IXMZ8/ZL2kl69mAwoiCQFFOtUg?=
 =?us-ascii?Q?HQfbP5ZDKLZ4qxBnHDEWjXE1oppz/N3XHSGmU1LE7b/vutNe2c73DPT7Eu4G?=
 =?us-ascii?Q?Zf4XBlHYgERwikewPlmY2NZLxKjBDjR4vU3MgkjMU1LuaRD/+RvbvMuLnx37?=
 =?us-ascii?Q?KK7hVGq08lKfq3I55CIPOydejzs8rkRd9QqrC9KcuF3iOQnS6Gzo1fgJAlnp?=
 =?us-ascii?Q?BFygu+Oe/ahkh2exCW0XG7F7p5LQv2eW4uikSn4GQ/GbO2HRNlYq5YV+1a0e?=
 =?us-ascii?Q?WBTC+4aSf3V/YPif9QXHylKPp2ine5Vog/7Hw0Ga1ZVOAxqaS0pAh6UCMw+o?=
 =?us-ascii?Q?ChzQLiSSXVmDck7BvSUdK35iWpkYI1CMb4+A4NJ+Ba/y/X8BuWoWO1b98qTo?=
 =?us-ascii?Q?ldlFdIHb5Jf+PcNQ+XMmuM9hZUkTiYd2GsONrd7I48tn4kPdkaWtgpWeO30F?=
 =?us-ascii?Q?HH0LDx5XQcooKwUVsYol6zSoW7MKLEGfsi3BpDAV+RiT9vZ0bDBh+H3zuGbe?=
 =?us-ascii?Q?mZSH0xU9U2WhqE6JD9ieYv4d+cWpuFmH4oPuC3Nah3NR+IaymhzLhg8sx9JY?=
 =?us-ascii?Q?amnSlV7mPKPEXJs86ZofRw4IfD/hBhRt6GBg0Omgwnf5UxgaVP2Z1JWuhGiy?=
 =?us-ascii?Q?ibHyiOB+5HEWkRoN3du9OmN10a/SWqQSWW0XIZkZW9qkCa4TRckbo5VIyYKS?=
 =?us-ascii?Q?+nKZmyvVB9FvEM85PaPCwOjFFF83A4czhYEkQz1z0wNvIZ07TPyROn0bNCrQ?=
 =?us-ascii?Q?YCtJPrLdUtOyOrqHXZs9YEbhNEjKjhkj2T79Y7RELXXS4++T6YvuLaPT02Vw?=
 =?us-ascii?Q?E7KZUAd3SwgPF9qlrAu16RqR4KydtMlyZfAFRAhh2K6kJ3Er+ksNWUDQhaBm?=
 =?us-ascii?Q?2rITcNAfnNshnvXdH67HywdfVXFBXbKTpbhySRVtlsyh5owNOuER+llasJN0?=
 =?us-ascii?Q?FpaCvDnOrkxkiD6ThTySfkdb0px/wFbq5iddYe/rDBHAmyRR+0+Ci5aqu+8F?=
 =?us-ascii?Q?7wsB2XH/j3gY58N2Co2LDGGytX+vG89MRkCn+FoJVF5F8uhzRA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XnuuQ2ho6da3y36NbfXEmCzQluLdd4zZSqDfZY+3SZw1tbMg1MFikJusJnDS?=
 =?us-ascii?Q?iB4emCKr83nKixQWZVqi09kJQORiT1Tkf+1QmOn3a5z1nJtPehBwQ5DkG1j2?=
 =?us-ascii?Q?ZpZJQeNrRHBCWJusymPyH3iRxkTC7lrnca1Leqg1dbna6B6dGOm10ajCI28y?=
 =?us-ascii?Q?2hMOXW/KAkgoA/uI5zBz+WmQ03PyjXSDIDf+huiEObAqqAahPMZqBCq+ExK7?=
 =?us-ascii?Q?MjlogZf4nxB9ctjI98VeGBw/5cv0idJHpNH8IRRcR3riQpe/of+bOFilrcva?=
 =?us-ascii?Q?K2TViD9DqxuKCq5ncOWKPaprGEUfWtU03k8WgGsCJg3Z+gJtggUAK67Isv8f?=
 =?us-ascii?Q?1kXudBeEYoy9vCUUBmLXg//s+b0++pIJCvX2UxXiiV+smMf6D09fK+8XPgqW?=
 =?us-ascii?Q?anARGMUztjHrQq/csjl1b1UU2eT6TsOTuNa6w6C0dscIDzRj1TocGYeYPCKY?=
 =?us-ascii?Q?rMoiVGHZ9xUbzDGUM1FkRrWtq+UgniBAxxPlmEeNE9Ml4wjPtDkXM8EHRUzX?=
 =?us-ascii?Q?FKHUkVJ2H2PCqatK4pknwDZjQv5pFximrU7/FFmESpaUbcO3phw/S+QzwK+8?=
 =?us-ascii?Q?Paus1HXW0PZHK1qvfwMflKqs5bUU2Wc1AXPN6bSU4uB2UDi9dbdr5FNOh2ou?=
 =?us-ascii?Q?9vpEAZNBhYCg0rELKeuvBk3eMe9wGVzl+qe06T4nbTDS8kJ0qjaQKP5/XiBi?=
 =?us-ascii?Q?GkqrycFy1KJJtLjtw6LqpOneby3SYE9uFofBUUL5i7CJbxtsH96CbaHqjTs1?=
 =?us-ascii?Q?K11JpiJP2znj2bOUQk6IxIq9tI9Ov9hUgskZgdEWQM8I5cy19gDI0U10eeiO?=
 =?us-ascii?Q?nGB+RJp0b/hMyV+JUd66ZskxIp+uoIN8fdxqXZAP9u6bQgao7ZqqqeluKZC1?=
 =?us-ascii?Q?vtGaWbUKhXvOmqWWs93P+vYeYUwZwbmn4Z6pwn/m5ZUbggen1OO6AeWgkV9c?=
 =?us-ascii?Q?saRgP5mjUSX882kQTWMAKRmulOgavCnkUot7VE7GQXszHWfjlRu2HBGCWSyz?=
 =?us-ascii?Q?UiZFzai+vBSNxJiRbqI08pUUIDVc3nLFofYoOVLs7+Sn15c+s0Qh7IyRXnyA?=
 =?us-ascii?Q?V2Oso5Y58LHZ/AIjeFABO7KDHSW/auqt5r0PhVsmbOcHvpcCv7JE6TEisMUx?=
 =?us-ascii?Q?emrAffhh90VnL1lkxRRhvBetZImkvEmYR6oftlEQY9YYHaL33C9sLL2qZ98y?=
 =?us-ascii?Q?0jDtiq0KM8OCFzoryS1I8Yae02obxag+B8afGSYxDw1iCLNXin9k+BvDgxii?=
 =?us-ascii?Q?unKmJ7ieQdoEWMx5wWsgenhd6lvZIgbWgSbSBb3bA3um6dB3uF1e2clHOc/Z?=
 =?us-ascii?Q?gEGWs7oxNgavICB/Tg+h34gjtI0DffUTUfOnIvP+TdAKhpuNPGoGlvJg5Ftx?=
 =?us-ascii?Q?UGCkUChANOJyoC9K3tVtvn9iY4A6dYN4WWvOB5H+JnQN01oHD+ydjfM7mNyW?=
 =?us-ascii?Q?DjBtkpEj6TkLAUJSkYKlwi9F/g38tziTOkjGZTRd6wWnd1nzOEejNEWrJoBf?=
 =?us-ascii?Q?ibqmkeRxBorqKcrTKMqmZfghrS3DZ0Bv74+MRuHSGJlcl0AtwONO/AvVS7d9?=
 =?us-ascii?Q?AulBWpRUNIZZAWboLvX+djqReqDnocHB9cVynYBjMpgUNHg+ZqXYwphlVPrS?=
 =?us-ascii?Q?AQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22e6be49-9368-4b14-9e08-08dcaaed49c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 07:58:50.0892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i5BU3Av7BaiDdQAQsS+FNNcUf89fjRBNz8OG5i/nbIwlYjrqb7PUsxpWbWzIFd167bOC295q5qbX78i1WnUUX0DixA9c2kHTpE41kUUDVAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721721539; x=1753257539;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HU+/uGpwRXcmgTF25jwGzqVVW3uTWOyIM1RzElfS88I=;
 b=oGWS1/ES9NiWaep5IeyaDzU2yYoSrLJSlkt24WspbYF5F1Wu0kv/O+U/
 36MrYYKDh4hTnbO2xzC8aZCRoPbIxUPNp5zkGEDKsKasLO2EMcHK9WrfB
 00sjgRBYF2B2R628+97HmMnp3/8ix978FMlGKywHZ3yRCQh9rgLzW9JsC
 OkZTQLnFTsEQ0U5f3oVezx8Flo8MLw91T/cttqqNXfDwH/xcUWSbeLTjt
 HPhkFK8Ten9VFgaZ/s97TkEy9TCQ4cPLmb58M+7Zdqe7MxPSPd/1KGlXp
 0oslIVb8PlWOh+Q/SYLSban09j8rqWp3HoJrQ7yfXFZW2/Gl3QlM7NX8R
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oGWS1/ES
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 05/13] ice: add parser
 execution main loop
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Marcin Szycik <marcin.szycik@linux.intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Guo, Junfeng" <junfeng.guo@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ahmed Zaki
> Sent: Monday, May 27, 2024 8:58 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Zaki, Ahmed <ahmed.zaki@intel.com>; Marcin
> Szycik <marcin.szycik@linux.intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;=
 Guo,
> Junfeng <junfeng.guo@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 05/13] ice: add parser exec=
ution
> main loop
>=20
> From: Junfeng Guo <junfeng.guo@intel.com>
>=20
> Implement the core work of the runtime parser via:
> - ice_parser_rt_execute()
> - ice_parser_rt_reset()
> - ice_parser_rt_pkt_buf_set()
>=20
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   1 +
>  drivers/net/ethernet/intel/ice/ice_parser.c   |  39 +
>  drivers/net/ethernet/intel/ice/ice_parser.h   |  91 ++
>  .../net/ethernet/intel/ice/ice_parser_rt.c    | 860 ++++++++++++++++++
>  4 files changed, 991 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_rt.c
>=20
> diff --git a/drivers/net/ethernet/intel/ice/Makefile
> b/drivers/net/ethernet/intel/ice/Makefile
> index 23fa3f7f36ef..b4f6fa4ba13d 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -29,6 +29,7 @@ ice-y :=3D ice_main.o	\

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
