Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C63D8C815B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2024 09:25:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45954612B3;
	Fri, 17 May 2024 07:25:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0OEG_XIpCM0Z; Fri, 17 May 2024 07:25:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87456612A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715930720;
	bh=QUiyp2uLgOcMLYNYtncKxHUokc+KI4E9WRdx7nmza20=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zv6x77UbObhzMwzfCxTfNbJWV9INLXH4uhKo7x6VeyO7DQTb/s5JNHHjHuZNhj7rd
	 RaTUR+dASznSASy+Tk32MyaGTTsbRgdBeOhIYIN0MGvkZjqtB9vF6VAAPgraMoN8k8
	 LDTzaULsW558J4M8KoDanu7cJcB5WQ+pj8pUzMSe6bmJIaN8+/n8s1Lsb6xvv09Y+P
	 hkf29KPlByYsFHD9HKbLIhWMTOBqDNlnNC1lT1pcZJ/3hmwJ0tody9VdCeUxLjWdlw
	 tOlR9Wak3VmnFKz3SWmItTSMVwsPK+Bcl6lXpOlNwxVd+P2E32lfkCi2rUSmxJ+5cm
	 wN/xCeuEF4+Ag==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87456612A9;
	Fri, 17 May 2024 07:25:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E6231BF990
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:25:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3896B83B9A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:25:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k3Wf49kWssbP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 07:25:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2E7F583B93
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E7F583B93
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E7F583B93
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:25:16 +0000 (UTC)
X-CSE-ConnectionGUID: Bnn98wUcTvOb8XisMsNj1g==
X-CSE-MsgGUID: SW9wjyWWSbSVsvnvHmPvTQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11932720"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="11932720"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:25:15 -0700
X-CSE-ConnectionGUID: 18mdfl0vQ+CiGMVGW32f8A==
X-CSE-MsgGUID: EE6PzTwZS1K3W5SaVtJ6hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="32302232"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 00:25:15 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 00:25:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 00:25:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 00:25:14 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 00:25:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dOslYRSiYqv3fuSa5DuaP0AsZqzT+TyveKyCxvNy6et1l0gLbOlyGCvX98W7xfmJj0wNOhE6jAfwpvyhLcxgibHadP88IA30pp71jzZbCk8SWVV7Q5kvXbzQmc7LQN4fkFbigQ/kMnKUr+tvyePTtj6oLKGRTtbSHZRWYVZKmn7OqdbWQ8zfRZXMH43V/ggl8CGWaNxT5vZaOqBM6izwIddd1Qzz0HCffCib1FZCjYF6kFN9PP6FSuKzWO/1Dt/pxaLwXFETxx6aHn/mQ36eoQucRr5+6Bf88YxQGW8Pcg0I0pq3brOXk2oKL/5biwXUFKdPhdQYP2W7lrtSgPGnGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QUiyp2uLgOcMLYNYtncKxHUokc+KI4E9WRdx7nmza20=;
 b=UnfeFzNkpZ/gW12w9zmf9OSpJcjHgZkVW7V5rZSf5ejoQwXfNLYorsrVO4Ip/L/nVE8cz1EnHObMePMN9WhN1HzQft0ngVC4c0+m8mAy/fcUoNP778EN4JMrhWFwyvnP2WhbiAmpIWot0PyX1RZVRFT9COvDMbLR4R3zIstjc0fRjf8ID5OEgnfuBeyLP6dn1XZrTpPJI96OCE4SQRpzmGuv1gBlHWDfUpH5zWH05vur3ITsQi6kR9GXNPiJy7AnnEnnD1Jm0Ma4VL6I+cKVQ331p+wNNXCcMhycuPiedXhLlRvtXrrekDGHrfL+Xy8tuASAEdxSysT8Lm+zRI0WIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by MW3PR11MB4668.namprd11.prod.outlook.com (2603:10b6:303:54::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.26; Fri, 17 May
 2024 07:25:09 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7544.041; Fri, 17 May 2024
 07:25:09 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v10 iwl-next 12/12] ice: Adjust PTP
 init for 2x50G E825C devices
Thread-Index: AQHalkzh8g1CdPL9WkK/bkqtWi0+TbGbKaHQ
Date: Fri, 17 May 2024 07:25:09 +0000
Message-ID: <CYYPR11MB842975C2FC5598593A117D70BDEE2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240424133542.113933-16-karol.kolacinski@intel.com>
 <20240424133542.113933-27-karol.kolacinski@intel.com>
In-Reply-To: <20240424133542.113933-27-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|MW3PR11MB4668:EE_
x-ms-office365-filtering-correlation-id: d5bd0c80-cbbe-414c-28ac-08dc76427ba1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?xKzGQNwCuE1mfYiOhBLP3GBG0B83zUOV2LcRUuDPTHUJGScjHoFUnOtXTiLn?=
 =?us-ascii?Q?mG5bbj3IBfJxLCI75YcrLutxHT0420SxhN3y1ZluFfQ6wtEhFEDZCWYtl5V8?=
 =?us-ascii?Q?Nov0fDuYIdifd+bt7BejqdCrpsKM2BRk7N0qF4+PlMy9uonc2Z94tF/ADkUe?=
 =?us-ascii?Q?HxWso28ZySeh6U1YDH0S0bV9pfvmnQTIHdLLd+kPw9iQXk3ON+cw0ozj0Dqb?=
 =?us-ascii?Q?mKYieF8N+UV9QbqmVOXu6nxqmzUqwXQTjXHk6an7OETMdtpL9soQQd5Qdwsb?=
 =?us-ascii?Q?AdU6lVnIDnIABxnJe8tcBahIQPgnLjQJjYzRfLw1SKryMkaP+1xZ2dO9Khob?=
 =?us-ascii?Q?NtyvvaLiGDSUvrhbXqDfm+5wRY2pFC/D9IuFNJ4YTyO5xd4igmfcrTRY25gm?=
 =?us-ascii?Q?OaDirDh0esAwqNCcrvELa+UO4UAlOfsH1gnCJ6o3oU8cwkcM54sHnqednNye?=
 =?us-ascii?Q?091eEPQImedHvH1emIHy86xiCKKPA3KTskDYj9zWhmGC9i14ZxRuwo7PsA3P?=
 =?us-ascii?Q?lN9aq85Gwqh76OEWdzKjYkSOe1UQGoR3R7cmqATCztU/UbhUMVUMY7lUw+88?=
 =?us-ascii?Q?mLc4ndcC41Tge1sg1Ds+QZF1TMg9Zq02ArtAujMdrNUqn0CMTXAh9NneNwXH?=
 =?us-ascii?Q?o8+kBhy0h09ajI5D7XfOL0lcuYmV2f2+kMEVWgryS5Z/5vs68TYID2BDsAKh?=
 =?us-ascii?Q?3yg/GEVMYayhwIsmR02JM3IEDjRUUvADAESisomAwtfI//3a4pHM7sUGTn3U?=
 =?us-ascii?Q?OPJMLEehUJZeC8nHFLnEjUH9bhZ+0SvqzTrtzNOLsgQZlqiIcdqjQlh3iHHB?=
 =?us-ascii?Q?CdyyK7TFA29hDlrOiHECxMk+1etDFDcOKPId76ffYu+kOhDQDjNkmfT7OyBl?=
 =?us-ascii?Q?6YFeZ7XpN4V+2+Rj+rgldUm/u9B0p5qufLYQ309xcUxak0vgQNvd3DN12vQM?=
 =?us-ascii?Q?RW8Lxtj5SxgaWGqLx5oKvJsa4MzxHj/aAKpWMEQf0arxvC2vwNXVlMDdRIGB?=
 =?us-ascii?Q?rfaIDEDMOyorR1q9FsMMna1z2xETlUwfsQ+/lQYpOontqWbix2znnr2hoo/U?=
 =?us-ascii?Q?wDwJ+FwZtVjT95PZnyJXysXB9voh9sJ9J3ZVP2mEdbKQ0+V9y0esjrYpWUAl?=
 =?us-ascii?Q?9bghCDpqiXgeZiLf5/JOJpXQjxDz/UpocB+VqGFjdH2dpI7tY9UsIcvXUwXQ?=
 =?us-ascii?Q?bLZG9ZeHMdTxSI+N81w5IfVstp0bDoltsFCfo3L2fbnE3eISh6OYK59Y22uy?=
 =?us-ascii?Q?pyAt1o5jcZdgfsapc2Ul0Hjre+Wjc5mEMtwtFn5a1n0kN5nfZvYEIlevfI83?=
 =?us-ascii?Q?eeO3Lk8J+qk06JYvS9X6Z35E+bg8mQHtPAp8Js9+foTwOg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5IRB3ae0tMuDuTq2iD9R5seL5lGdKyJIsLvSoQBiln7stOmPpikLlPJzC9Pj?=
 =?us-ascii?Q?7q42gpfQPi0cclLxK2H7NM9tJ8wztiqTlpWuKj34Gira5BvIDpFki1x7xqPU?=
 =?us-ascii?Q?XKrzIO2IacyObmw24eqYhPAX1GW+zqGjhT2IdRyRtZPuCg5IUTIKyuwqk5HB?=
 =?us-ascii?Q?jpVpwpQXc7YwohXDKaNfN7b84QjOcwIJWccoKvA3OoOaw/RiQzkmtE/vKpbi?=
 =?us-ascii?Q?afGZh2ghueon5rX9EXXeqERZP8LZDHU61wunDIwUuWWirI5j/RwjiN9WQ2bQ?=
 =?us-ascii?Q?L2ePNwzoIrkC8D3PBzLmCeuoNXv5+x4WNAUq4DEw4RltxnwKLfo0Wk1V+COy?=
 =?us-ascii?Q?NYvUQDl9MirzH8MbPgmPCPcdEnGSzz3JSxznFoE9BojcSmMhNsR7o4wl1hkK?=
 =?us-ascii?Q?56xPPMJXrC0Cr5jlajulDTIDzN5HMTF6oBaKTLyctusYitI3KCT4x0YEy8Ai?=
 =?us-ascii?Q?gH4H2tRIs3l9b/4aDK+pA6qGhsVNGjc2PcIZIvntsGpLdDAvi+xFoEcSeDt+?=
 =?us-ascii?Q?Z2yCP8TAs54Et36if8ojdoXp/kZlSJRv39Oi1cKSpH1iG26w33yf8j3ptq5r?=
 =?us-ascii?Q?8uK1J9TlrVfFVk9JriCpSnBU17vOyB19NCnfY4a6ynRDSswlhd7lMCnav8Bh?=
 =?us-ascii?Q?kd/6JZv1wL/lGtjE3PqrR/SZNELD93VCPl3TRMw0pxY6nU5nKeVj0sCO7hxm?=
 =?us-ascii?Q?LIDVAXYnepsnfF4AMwekBvReUDQi+0BKHftN/gvLsGN8tgmJ1cPq4ZPn9XCR?=
 =?us-ascii?Q?QEutQxQ0ONy+SyLwKVqLq4ptVldstRZ2ecRLbC8sMFbKVDxdmfI61OuqE/S9?=
 =?us-ascii?Q?r5BRdlCljGA4LpXk0AhbNuaM/yqC9GDC6vSPdrN03S78b/qruOslx6nXJYCF?=
 =?us-ascii?Q?IjQBc3koIeCsJUTVke+70dR0BXH9OsbDFZ7E+MM3DK13PBOP2Nf3pTiEoWJM?=
 =?us-ascii?Q?wc9z1ij1pxvJG/Tg4SqrLAASIa5cSVgOtrtFq5lVR1BiJXHNk+uDzc5T3SDJ?=
 =?us-ascii?Q?BeNtInqaZ8bmwHCM9MTNsc92qzaXthG5L/kLk+T2m9y4Idkia5PnMrSyAGIZ?=
 =?us-ascii?Q?XLZwssS4z77TFe7OcoC7zLtvcsB999nI+FHJaTSPITHo5L0rWM38yH2gPh4s?=
 =?us-ascii?Q?irfE+2heDnS7zx+eWWrSKCPFU67E6GGTNrUckD19z995mD8ms8yMNWH4a1FP?=
 =?us-ascii?Q?howcKwjFmh55qjRApYg4eRWO24bFZq570h+vXy4gszSWnCToXqHRNlMzBwUa?=
 =?us-ascii?Q?FGHV24cCrfUsky5cOAGiAbeFt5ScQ4ManM4KX9H22fOnyHm33hrTTgKU0rb9?=
 =?us-ascii?Q?Lt0CV5vIH+Xi11sfnnLygbUWuRZ0k7IGaZeTEQ9RxbYL3ebsBl5YFT3k7Xzt?=
 =?us-ascii?Q?XJozzHNxe3IUYZqTf794O6Opl2613PrUw8UsB+VNwKUnbXVXgCT8OY3dzEmB?=
 =?us-ascii?Q?BcOMF/N4b+EHnew0wAHTLYMfNWsKTYBJ1WIhIlRVEqIP4bs/gCgR1uvkymPa?=
 =?us-ascii?Q?AmC4qZnQvqcHl/McigciiUFpQ4wE/MAOoNFlbF970jIGit43++9pnLdz6n+b?=
 =?us-ascii?Q?m2/vYk0qBgQsPy6eWfeQkHHhuJanbWaGT3OxKR35i2zMC0stNqQpV28iLmle?=
 =?us-ascii?Q?Xw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5bd0c80-cbbe-414c-28ac-08dc76427ba1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2024 07:25:09.3616 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6Rahppck2m4kMaRuadWx9ragSFo38rdnysITe/YkU9ocrDfBAPbv08ToQQB302Cz4eA573GGZiwmbR7XJoALxwcIrUL4b79TH3gGsCw70Lk6AzX/mb8pqEDvBO9tJ0Oq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4668
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715930717; x=1747466717;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Mi0nUnn2vsLARj3PNwdUdB1jYbfIIuVthpOuOcJ1qAI=;
 b=BRTCby67ZFSQqS1xJgom2le+8VnQE1o6qIlnqXsXM65SU5y/YK3DbmGI
 VLjjWb3yTSFfNuGH21i4kDayFJd0kj9WthsuIvAVyE2aLnFgWSeu4vIAQ
 ybhXn8xb8Zyli7vaXJrJHBGj5WfUaRNE5gBT2tXgdtc7tAZHYuc4iH0UE
 Qo+CZ5+vf4+S1WcJKATa2OyPO9bd2qgdMIJdgEBYmKul85p5KpcHcLEdY
 l5cQxU5HfbkdJyOB8dIGxfd9hRPTwEMDADaWF42vWS4p5OwlF/zYXr1CL
 7jBOjr4vHIdtvTZrRyswb3bj+LX70uiBV28PdWJz/JIUlWaSqnbxVNth/
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BRTCby67
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 12/12] ice: Adjust PTP
 init for 2x50G E825C devices
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Wednesday, April 24, 2024 7:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony =
L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH v10 iwl-next 12/12] ice: Adjust PTP ini=
t for 2x50G E825C devices
>
> From: Grzegorz Nitka <grzegorz.nitka@intel.com>
>
> From FW/HW perspective, 2 port topology in E825C devices requires merging=
 of 2 port mapping internally and breakout mapping externally.
> As a consequence, it requires different port numbering from PTP code pers=
pective.
> For that topology, pf_id can not be used to index PTP ports. Even if the =
2nd port is identified as port with pf_id =3D 1, all PHY operations need to=
 be performed as it was port 2. Thus, special mapping is needed for the 2nd=
 port.
> This change adds detection of 2x50G topology and applies 'custom'
> mapping on the 2nd port.
>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V4 -> V5: - reworded commit mesage
>           - renamed GLGEN_SWITCH_MODE_CONFIG_SELECT_25X4_ON_SINGLE_QUAD_M=
 to
>             GLGEN_SWITCH_MODE_CONFIG_25X4_QUAD_M
>
> .../net/ethernet/intel/ice/ice_hw_autogen.h   |  4 ++++
>  drivers/net/ethernet/intel/ice/ice_ptp.c      |  5 +++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 22 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_type.h     |  9 ++++++++
>  4 files changed, 40 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

