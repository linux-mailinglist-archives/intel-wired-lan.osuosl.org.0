Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1634CB43A8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 00:22:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4295D40B5E;
	Wed, 10 Dec 2025 23:22:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j5xA16u3V56F; Wed, 10 Dec 2025 23:22:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B333A40DBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765408921;
	bh=uc+W13BHhECD7OP7vjnBFgTR2rDRFr0KkTmncPGhQtI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OyBUEtzxMKaYOiphcfw0bmVOUqxrHlBngyzFUV01NuAecC+cQI8nN02DYUope77gt
	 Gqd5WSEUIx/Ar88siBOMmgZmk1MoFUkI4QHHqurfvRNcRC0PkZA2H6t6kDUUW4Twxb
	 AG9CmR81nQaXRDBCHccOrQW3Oi9WS2jhQ7/Hc7ooKldZajkRUs+IwRmHUeDb7wIceO
	 XDDZjf66uYju1DprTXytD6lMVpKxkDfSbH/75FBvky0b4Yhgm5IGwfuG66J9hPfhmR
	 JXf+Eu0aLiZ754/rc3CTIQKbn7OX0K3ZOIqDbKSenGJcHe22rCEvUMcwic66EWJ/dv
	 BAnLRPTJfyizA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B333A40DBD;
	Wed, 10 Dec 2025 23:22:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B6C22C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4885C61722
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lKvH1seolzh7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 23:21:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A35D36070E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A35D36070E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A35D36070E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:21:59 +0000 (UTC)
X-CSE-ConnectionGUID: Wg+1syc0RXSPgF0dMZogrw==
X-CSE-MsgGUID: NJlmKDF+T+CV0U76KwqhTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="71236360"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="71236360"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 15:21:59 -0800
X-CSE-ConnectionGUID: mu7dIOUiSNmNriFmuweCOA==
X-CSE-MsgGUID: 3HlT84lnQCi7z3gRZdXZNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="201566887"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 15:21:59 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 15:21:58 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 15:21:58 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.46) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 15:21:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EfP+4sqVLS1wP7pdwF+4pjCOrzXcadTT9Y/uXclj6yFKjwhj/MSAfafuokP4xUOe53ErdQ8hZRIHwVuH3zOsrmwMoOWnOD55+Z1M5P5/34n0IGtwfByZZc7df/FppTRD5daVi45QSquvCHSBPIZJsKQmVHONv4Abrx3gR31Lo0G1g6akT2guhClGwjCtm0rj4QBcZ9zqWgBNXIzXBXeUNkvOjZJEMQo29/KgITC39XFQEuF+auufo08LcQgkiYm/aWH+gYBeWBkpzS6bhGX0PpNg5ZMIbAlqS+yvSw18sOkLeuXRWU/V57A2FH0l6+yplD+RqW8zJyx4Ct3OgoDVLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uc+W13BHhECD7OP7vjnBFgTR2rDRFr0KkTmncPGhQtI=;
 b=k48K5DHLYPYba2DBDG0fNAzKDc/5Tg6GKeM0oiWwLPTbuhCarxgM8KHcZSuO1bjkiLpTOfug6KAjuk1f4XQPCAfD5UbF160iuEuuCjzMUWcgcYvFoR9h4PCF/C2ZJ1oO9/Vt91OprkFxNjSMzII17mGcgpqP+cuS9fvuYtlD/SwcFw2Dpljos10pIxroZmBmK7RUO9/zDb5EhVqbTMB+Dau5z9lS872jpUed8cO4V87fJI3HdQlOIzAT9ncGz2VXRMK8E+/u/oh2bCv2wLjpbcekxxzjBJLhZ40dukWE5vUr6v113AVA2A6wnwLck6G6GMAFZ5XnJf9azg361UGKQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SN7PR11MB7510.namprd11.prod.outlook.com (2603:10b6:806:349::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.7; Wed, 10 Dec
 2025 23:21:56 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 23:21:56 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v10 10/10] idpf: generalize
 mailbox API
Thread-Index: AQHcVDTgqLUxipoKC02W0Z4a5NXOzrUbrvoQ
Date: Wed, 10 Dec 2025 23:21:56 +0000
Message-ID: <SJ1PR11MB6297AAF67FF931AE50DF69419BA0A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251113004143.2924761-1-joshua.a.hay@intel.com>
 <20251113004143.2924761-11-joshua.a.hay@intel.com>
In-Reply-To: <20251113004143.2924761-11-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SN7PR11MB7510:EE_
x-ms-office365-filtering-correlation-id: bf7ff564-91ea-4a00-ca40-08de3842e952
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?i5p/YRj6sETtOTEAM6nWMn4/sTLGEWSVn4sP2AzeZu7KNyK5EBROhIpmWzRl?=
 =?us-ascii?Q?zj6QySipt8hE8Exd1LVU+wqS6hgtLbQl/7Gu9YC8hJu7df6qO/aW2sWkIslT?=
 =?us-ascii?Q?7rr2q7WeM570+NzbTu5fbu0UpxIrpdq14UdtcZZTzs6AawmbSOTG8+YLMyGS?=
 =?us-ascii?Q?/yzBKPYg5T3m0Y7Y9avQeJ/yCFpqiXyim++8znNzoPNf7WP/OmXeyDvdSdxm?=
 =?us-ascii?Q?JQ9peZYTsJo8PWZLoCWrVjMY8Omg4FNfvaYYfUK8Mol02iazcx+oVydohq3c?=
 =?us-ascii?Q?RujVd2u7kkkmQFmewJ7mw4vhk4TpM7/xel6F1XAuhbSuakbYnqkGt6i4409b?=
 =?us-ascii?Q?L3a0XI2I+zjLaoPHmYveywhI2eNut+5en5ZL1ganSEKo62UMIPYEi6+vMDca?=
 =?us-ascii?Q?YxtNRg80k0lvGiY/o8U9NEQNZVP0U4U0vRO47CXA49+UBdLc07i4vhvjWp3a?=
 =?us-ascii?Q?CL880pHqLgj21zmpDdFTxh3RT9CxhvXHuQXPRFRMnO5ktIhloT/VltbEcRuT?=
 =?us-ascii?Q?FcPw647FfHgZnHgxcinq7qKDzz7ymNDMe+fvHlvlVA0FB98DK9edyuz6Ijyo?=
 =?us-ascii?Q?66uluLOkmbrrI1rneTBNl6RjAfi77E5Lkiy41jpT0Hg/2WhIW28CpuUPQnEm?=
 =?us-ascii?Q?NZhN+sp5auVd80AMLGbsI4Yf3uwwQlxTWdmJu1QQzpN6L6KVsoM00ZZRmCCo?=
 =?us-ascii?Q?S5wG2AJLvmKkmzgXh1CHsLe3+xy8B0QJh6p8wwwS1uv975lBWahj5curQJPI?=
 =?us-ascii?Q?Lz7Rzi4CF+dnpTubCM2Pt+JRnoGxF1Oe1N8air0u/QsABBIatepLvJ7wIklX?=
 =?us-ascii?Q?z8TakMDBDRu6mlpxZ+PMkOt6amwrj6uyEyAslfVGg3AVMvWJVG08ZdOGakDA?=
 =?us-ascii?Q?gPYnJeqy1gb9uuOjLOZ5G+eXXNsUWbbn5sbmWoMmM3gMs/77d+VMOoCDk0Oc?=
 =?us-ascii?Q?E4qElmnGvHCvoJMvKCbldtqbQz/4ceHdDh15mKHxt4hVxOlgzWXJW4kQYuDM?=
 =?us-ascii?Q?Vg5qknAX3rxVTPFvbNr3V91ZdYnn1Au9Z8dD1vaELFopWPTapz/xeQoAAPzy?=
 =?us-ascii?Q?Et0eim2mCoR2Zs2tf4vIXbMgTBtsnPr4x3GkPG05oR6eQ4QyAOpx9qf0CB4Z?=
 =?us-ascii?Q?93I5UcRAsjYMaTTB5jLvxBQLsdIe3+nC3MLoffpQLD1rmtVKvLW+mCF1eNu4?=
 =?us-ascii?Q?AzwrTrAge2ZhAVzkZsRqwNZYlILgBOsx925w+HSvTD/3C+RdnVqWICr38S/d?=
 =?us-ascii?Q?+IGYSVSCDFXpIKJ/T02xcDTamTuuBaj5ktC/WM2mC7j4NYd3z3bSkZ1+wsn4?=
 =?us-ascii?Q?TXHI2R+xs3qqWV4xdbqaGa1uKDJkTU3bWSVQuX148t1gHRGDkBT5C8b7oRFN?=
 =?us-ascii?Q?Vuya7a0zwkWm2IQiRb5imfNzO+RUKYoE5vIl9RTjPkuMbqgvZH7KH+bYWiNq?=
 =?us-ascii?Q?Lpg1hxHnfN9MRLsST0awDN9XyK1ZVmPQ+lLi6DVJLtDxZyOkF7A+iQFZIRMM?=
 =?us-ascii?Q?yT0m1zCl7c+kXwqcBt30w2B6G/LIMyRYgKo2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KXBAagyIKJ8/YNVNvc7IdCQ09JFgosiydeDAT/0XnzCT6TqPsoZfiBxmDcis?=
 =?us-ascii?Q?pLl6umngWhAisMmeQkAn31uPIt0IXHLKM8NWg2FLmImF0aOeGkk4cPWSaCjy?=
 =?us-ascii?Q?4EoA9rLFKc9KaN+Ezcw9XD0Ya+VQjmBfl1tC8fmtkeV1dufqzSmTbIsC8uvw?=
 =?us-ascii?Q?Gavj2jkaWJesKR5wcGIoIztmtWlwtC13vQjEkpG1dxe0o5oydmqbNYMDwH4q?=
 =?us-ascii?Q?DIBVK7R/XNhRlefcCIgGi07SjrmOOb0ijdp2yOjgHOpiFAkhn58IySYUUpn0?=
 =?us-ascii?Q?CA7JfiF0PdWMUkvuKJeVNlaUwwqx45Vo9EsYFcKifbHwr2kr3gfL9NZD67YY?=
 =?us-ascii?Q?8NzJpXgai/dUt9GkuZcXhx0ZRTRxlyRjrVfBjR8UItkMrgYuj4haLLyw1ixh?=
 =?us-ascii?Q?sW4lG7nJgtVWvR/5FT6Z20TWa0IFjF0Nn3sEa5OjDlJscnoF3HPB5le/vzTK?=
 =?us-ascii?Q?nHE93SnZjO5/ul4t0HSijONaiET3hx2tsvm5Hm5e8E45VAvsVgODq+f01nsq?=
 =?us-ascii?Q?Asnwq7pO0iAIAzJs9gz99kKMgy/+38REfKn/nyeSim5lS0KlJK56FfzM6y5X?=
 =?us-ascii?Q?SdSZ1mgmWr+3RcCECjuxc1miyHyF1Ny3ssk3ADC/qAewX5f7I9a0kvjYswEq?=
 =?us-ascii?Q?UjUAj2aomrMROaVZJ9hetusP3aBkilPIvdey9wPnfabrA2hO99aHoNVdewx0?=
 =?us-ascii?Q?theCuO1Zf7aU0/7/U4i5bifkBmiLmfd4uKKVoEwOzrxYd67Vt+ESppQA0xgg?=
 =?us-ascii?Q?hclXqmnMbwMA1uji1NmvxjXEoLuH8BKcpzeTFAUBfS29v5tdLQ5/3zMOqmtT?=
 =?us-ascii?Q?2Z91w152fU41pFu3OgUQfxXCZZpBUPVpV5EVR/OKilECekumyEAREA4Wit9M?=
 =?us-ascii?Q?N4PdC03h1MdYPbRGkbeT4dz3uww3+FPaeUiw6VLPF4Hrp+EcHpa8IXTXDEDs?=
 =?us-ascii?Q?kvg2AFX3behFAnnrWpXwgqjpSVJCOIKuwUAmNOzGmEYgaH2UnQrbVaVxlOqx?=
 =?us-ascii?Q?Vcz+qomjsD+i4eusTL65iDAI64MYLdEdVuRcBSQUvctolomlIJW/66Fhok8p?=
 =?us-ascii?Q?/kbRWhk890uMmFblJNmgNC4i+XV7h7TGpiIdBME1536c2XxsBRQGlgD4bUzO?=
 =?us-ascii?Q?OwhoJjkdqEzVxZ3GHLb1dL0N1Djr0/BsBQgR2hdu71y2sVyNB50urif/pnZI?=
 =?us-ascii?Q?rmMCCKetJ8DyxNiVMGwZJjtC5P6KQb1YLa3E8XQmE0+HxBa8Npp6pubBPmSk?=
 =?us-ascii?Q?7RbOMAJf3ALP9tpluwO4GMEJyYtcEVIYD47KXfj5Sj/RyyJOaiIA4TW8dMOK?=
 =?us-ascii?Q?35nn4+dh7YllRzJ2G69TwQBicbhfTSOcXIAI6GNF8F9rCxLAL7Aw+Nz4FCS1?=
 =?us-ascii?Q?c0of+smmqrpbNxdIKIj5AYlKgKur7TeY1rxfRqak9XfGInmEezAxBa7DVGhg?=
 =?us-ascii?Q?PN0BTtnqYi4IZtWC8P6Bd/CKQMotoCnhDSjcivhrg4UA2oIJbjsBXebylj6i?=
 =?us-ascii?Q?jJ9Q4ou9pN+/LLNA0ujJ+62Ryz3zc0VIg2UGt2n8BRqGvmWb88qbcANjqAcz?=
 =?us-ascii?Q?AzGNN0hvoYv8i833tTbH5lFMAG4kQmtkX2D89000?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf7ff564-91ea-4a00-ca40-08de3842e952
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 23:21:56.6313 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pd8wNxJ2+JmJ5ai4EvL5cALMtT7CMnqcXMdOUaOSRRVQqDBpfO1MVad41javU4lCcijNfNnAU8PuXYxoq/Y5vQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7510
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765408919; x=1796944919;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uc+W13BHhECD7OP7vjnBFgTR2rDRFr0KkTmncPGhQtI=;
 b=G4xYtjEGWDLoSDgmYVYoec3eLQlFirMKzu7oeuuymOoLa0DQh6i9EPkm
 HzBGot4Q/4UTJhiZi8DHEaTb5a49/sMoccMNoWvDbnwOHFAl/3C3jmUX2
 ZBBsFwl13JkmCWsPafeF4p/MsvOn2YKc0bGVA4hqmI9RfWtg4qbEhVuve
 90XieTTcio7jaeU8txk0rd0+GMVoRTLq6qti+szEMQPJ2tn44OdyfH3Uj
 dMCW7pn4lyjNhGKGOQjr44bINWFAxywtZqVE0ougozgx7aX2zB++2SWxU
 F+eO1aiiQROehedtoDrUAHtk7XPy8WwWxZr7C+07G9C9GB0Ypi981Lf7E
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G4xYtjEG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 10/10] idpf: generalize
 mailbox API
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Joshua Hay
> Sent: Wednesday, November 12, 2025 4:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v10 10/10] idpf: generalize ma=
ilbox
> API
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> Add a control queue parameter to all mailbox APIs in order to make use of
> those APIs for non-default mailbox as well.
>=20
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v8: rebase on AF_XDP series
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>
