Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0F58CD9BB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 May 2024 20:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E24734183D;
	Thu, 23 May 2024 18:17:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YJB94EJR-FXs; Thu, 23 May 2024 18:17:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FC7D41846
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716488244;
	bh=118VvUWhI2nYPbO6Pu+fjwrWwLfXhCfS2m9A0dP4xfI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1JW6e3y2byMzdrkcrC5NclGGV6Y1dywmXbSbzqA2zbq9YK8V6BtssGbIZ5fymk20l
	 1sfXW6OHgbBjFfPEGs6rX1ng89WkgzBs2Zrck8DHHCgJMOyYWCfJh2w5QmscMFtONh
	 L8dfaPsqwdVP9YIFk28gz32G5vGxSrQeleqPN3KK21KNWqYZt6oI2o/jfbCyWyQ3ta
	 0kp8o9jSGMNeLKWKE69+YL/14Nm8YS22MvzGRC0OXWCGh6LnTBe0zv5kEPwSP2/MrM
	 JlcY2EaeZFFpf8oN5dQmHEX5L6cvkpidJyvLDr6xIjky4tPkka2kiej/IDF2DTthJk
	 AVXRmABT6hF8Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2FC7D41846;
	Thu, 23 May 2024 18:17:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 387991BF405
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 18:17:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2180D824E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 18:17:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LYyvRbddTbC9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 May 2024 18:17:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 247CA82181
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 247CA82181
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 247CA82181
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 18:17:20 +0000 (UTC)
X-CSE-ConnectionGUID: 12ScJnArRq6nnrjAbMI7pg==
X-CSE-MsgGUID: J22L8ojURMmWqgndqd8L3Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="16659691"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="16659691"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 11:17:15 -0700
X-CSE-ConnectionGUID: lZWqPdsaToKAwbAQo6bNWA==
X-CSE-MsgGUID: /eki8CRCSn+7n57wDex6YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="38735338"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 11:17:15 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 11:17:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 11:17:14 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 11:17:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ROUUHqAM48VNVIvohwrlZV7D8007FjSERIRrOiwpkvUyinhznHQgpjFZvB4oqM4qwHTkqJ9ePqkv6mU7+Lf2m+fKz3zYUIZAPx/EqjG4/XVZOgPGlwyUpRXGuoMW5h5ToZAmTRx4cf5uiSuADXvUdfioYz2/RDR767LRrYlG/uhZerUs5ZE/9pDaRdEKcBbN0deXwSB2E0UElhO/zT1S4UNV4zwIA1tuarI97xV4TMnEKPRYU3QdoA9yxO6t2lO+mQS7JsEfWySz3SJe/lbMdVhLz6w+YOqrELId3hUWtYtrHYOrN1XONhOUhfml0fJIMCvGul/opqgtYrLcuJB0yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=118VvUWhI2nYPbO6Pu+fjwrWwLfXhCfS2m9A0dP4xfI=;
 b=D04y5+X1uFv3uSwEoaLysb8cTE1nIm7vsUKF8WyGBZBqmqechVzDoG0lcPOQznRRIAv7ChnnRzW1ySzK5AfAoGkPFiggQfGBtk0eqH9kFvJ7InEGqMkDqGji1J2MVvptDyT2TaxNJsejTRD1sfDJv+HXb7FD8D5Yhg/nGcZo9omqZ/9k6yl5xIN9XWkhw3nec7F0p6Ly0aFWvxvMzpeD3rm3s8MucTBZNalrqMlQhJqhHB7mKNV+Us2KA+j5/vJObDTueR7EhI326ZhGRFEKbtdsIS+cGlVTd/9gzmXF9lR9Me3qL6rwxd2N/wdvqENIbAV8ZqzVrxat6bsj3FjoQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CH3PR11MB8518.namprd11.prod.outlook.com (2603:10b6:610:1b8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.30; Thu, 23 May
 2024 18:17:12 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7611.016; Thu, 23 May 2024
 18:17:12 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix 200G PHY types to
 link speed mapping
Thread-Index: AQHaknCXH8yekXzmPUyQGbdlcEIva7GlVbxA
Date: Thu, 23 May 2024 18:17:12 +0000
Message-ID: <CYYPR11MB8429F8DCAB45F7C5EE7A2677BDF42@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240419153523.1617216-1-paul.greenwalt@intel.com>
In-Reply-To: <20240419153523.1617216-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CH3PR11MB8518:EE_
x-ms-office365-filtering-correlation-id: 4eba16bc-dbe5-4aba-9739-08dc7b54911a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?B/KtFt1GGo86JBIbi6bXshznWMgZfE/LXELsgyL7BU8zgRyYP8hVH/UAGo6I?=
 =?us-ascii?Q?Mz+q/qBDDDLgue71qY1K1PAiT0zgMOWwnsuKCNZz4VZSZnNaChHVUui0ZeNn?=
 =?us-ascii?Q?LUFjyymxacb7ZWbEmewX1P0Ehx4Jiz63pfBq4RkxSTI7O2Lq4hu3fS5bKJsX?=
 =?us-ascii?Q?3Ao3XoJySuKgDl+mo7A4WGDwlkrYGsF9flTMzc9oQwRIFGW5OqGwIlIouh1f?=
 =?us-ascii?Q?Hp5RUc1Uh8LsNWJWql+7NQmtl0w1lqANos7yB/C8YsXSnmbsvJZglRLB9qyr?=
 =?us-ascii?Q?co2IN/NEo3x1iVAIcSV78bWef+0arvpjAARX5TqxjcX9T2SzFJWXRbpMgxlZ?=
 =?us-ascii?Q?7tK5Ls/DnjsZPjzn7txPtXMLbFOaoi0vCad3ZeKu/pPQWM2owT0ATrLDCQiK?=
 =?us-ascii?Q?ZXwBQ8O66FMA9nnS3ufkXjyqm6WGk46WpbgElLZ+qq5KAvankQnJ11FFCKZ2?=
 =?us-ascii?Q?vk6gC8Dn4UehVlOAh3cWXyutETNrXMjnpjZluxTKfCocjGxToIYNcXVnHfG5?=
 =?us-ascii?Q?EoWcyxw/rTzF+8F56/zLYntSRhp6XLblOqUhEk7Lz/gFVpbYctDFpKdZuyN+?=
 =?us-ascii?Q?XWRAiziz6KMFGR0FcbXFuvBRdnmzwkAcN1I1fVDpQ423fM0wXLmsp6oKZJ2N?=
 =?us-ascii?Q?De2MCuUWiHtHL9NC76XmjtEidwbqtFNy+qRL2KMzBVgjMFIrMfSmK41M/nEe?=
 =?us-ascii?Q?zINVwR4aUM13+ryAFsCW1dAzAG3EWG8AgQy/CnazTV9DLpLPD1tf4Oa/RfYA?=
 =?us-ascii?Q?0Dp1waoOWuM7ooom/SyQKbdI/vlrN/J8d1mgeXkluUcGypuD5zGfKiCjTTYt?=
 =?us-ascii?Q?J1IAsuR2xNciW3WL3R8gSuGq8BraR+Pg5iT3R1JXiZSuVlQezw1LqlAFumd/?=
 =?us-ascii?Q?0YiexqZ70Ef0tInQyFUSgtIgR4HEiuZkhj/FMtFsUMAMgX3q+lZh+Tf6oQS3?=
 =?us-ascii?Q?M5RR8EVKiDG7N2rf+ALZo5EOROQVwArNy1tu0tK6oPAZnIkp4o/asC5cBPFo?=
 =?us-ascii?Q?o2AhYSBMShpWcD475gn1l1Bsz+RjNFUVbwr3xaHIlIQqAph64G5V80JNX/Vz?=
 =?us-ascii?Q?VthkbrtXfu12HyXlNqRMYaTIHsMAryc32Pswd1HAqSgB7YglJpP6UJ5tuYJO?=
 =?us-ascii?Q?ln+HV9MnEjOforqRkRtOA5X1lEpqPrUz822RJbKrnRK7d9h/Z+jHysY3hfXs?=
 =?us-ascii?Q?V2joaxNWe2vbQ4UdClpJvs/hYi+FShQay2wcQcVyQcIYP9254NRnpRRt+jU5?=
 =?us-ascii?Q?jrv2hIFcSipppf9oqQeZBqfhUti9mFPsL1ubNsuklC33/jOlmmr5rRKL/Jzq?=
 =?us-ascii?Q?V7HtiOcj7zWjdV9lbT7CBkccVGs9wN6DcE91i3yP1B3OaQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Z5cnYAa6NKcAao3A7a6dgrRPagF1w5vS5zwMIOEV6C+0eheYVwiffZTkA1pG?=
 =?us-ascii?Q?1UTCiGRLsJpF4K+0Zm1pwpgGDDLr10W+0tgJcz+ne1vZRyH9En20HphLSK+V?=
 =?us-ascii?Q?mYkJVYXyLxjLyXZGDx/856okfmiq7CFqyEZN7NbDjS+JZCfY1CK55NcTD+NE?=
 =?us-ascii?Q?2cWIUdWWWOgdMTTZ5A1V2JNuFEHZ6y/ALqODLKDb0gzLm9KlgZh6lLiK32yY?=
 =?us-ascii?Q?tRVrINCqX5581hA8vekCIzP6WXreO3UtGLBc8QJ65tBbHVDgFf+lF99Bct8/?=
 =?us-ascii?Q?D0yJq22TvyOxQLH/RRid32vjYzg4ltf4ZY0bI/vsS17n/76cndmX/E+nJnoR?=
 =?us-ascii?Q?xdOL2ImOQKZRGd0i/lybVXUj6gc0FDpy06rStoZW/9JPitbb0gEr/T0vC2ku?=
 =?us-ascii?Q?d+xcMdWrTP0SqVl58KgtNcn5aJAe+0vL/6jg/gGtMQAe3USispn2y5qonjHI?=
 =?us-ascii?Q?wnV9hSdbXlTQeLBNWexxuVwV1J7konKeajObIVlUHpLB8QPwCTtGssxwQHPe?=
 =?us-ascii?Q?qcg3euBbi0+vdxWKQjYL48qFHUeV9XSF6rYqAZDFcyQszcWdFqFfuwXKYdkp?=
 =?us-ascii?Q?iKijhzFVHto5Hpb7TKl4OGwnKQqrmb9OOn71ySuzxpCKBr3D2+BdgOs/W5dj?=
 =?us-ascii?Q?qV5pHXdEYnHa6Mz5B/twKT7zdlpN8h+i3i0HCnp4zUOmp/K0xAmM59zScVfG?=
 =?us-ascii?Q?SvLD1n5ZUjv+wq/omgfIcd8WLavqhnZDjh09EOO+OEeuseJW+BnK7ijY+r9o?=
 =?us-ascii?Q?82Ff7cz4wo7S5UzWwZWrLwbVqhuSKa4dphgMFlUHvJMUXZe166xl/YirRlol?=
 =?us-ascii?Q?wNy410r8MGw9kyIdkm/f9JwGihE4JtyRF0WlGZC8g8t8UKl8RL1Gu+LAW6JG?=
 =?us-ascii?Q?X8lNb7u0R1vnEDAIekybqlU6wDz1XdC+cOFyKUKEj5efuhhLt9vEKSnPZ65/?=
 =?us-ascii?Q?h3HJhCOI9EsSDW6dPLRDCHPNHoMvzBmoBM973LVhOiU1dm7HMwMp0Y7ci52U?=
 =?us-ascii?Q?U79SFm+OA8zTjZpVGPHIAb04I1a0OqNOJF1LBmj9lNfS/6s+hDJsXYF8q/vc?=
 =?us-ascii?Q?6vRFou3+oytgfnv4Yij4noJ3Yu9LKusoit6hgKCn0xqdWsSyfqXm+2ZZOaRn?=
 =?us-ascii?Q?qTKCscrvMTFeDrs50DJKt6OFgVKMg+v+kIDqBA2UIDVnCshXs4g/nObGUyQd?=
 =?us-ascii?Q?JxOSo1A2BnhPl8J8a1ifSg8PUYB0htIhLPJbH7aw87Ar0zZe+2/7lKDNYxJj?=
 =?us-ascii?Q?nNf6HOd2NJB+099ZoMNFLPiw3HxSuJeHg2Gpxvp1T/DETeEFp4HymiVLLDSU?=
 =?us-ascii?Q?qEHC8aBJn+nYGUVRiFVZuL2wPv6SoNhN/PI9zR2Ubwl12puSM9OkbZjSdI5S?=
 =?us-ascii?Q?weR1H2KxiFudqUld6Bv8MPjVjwpAWzC0okBAa0JFJbVry5YbkFhD68zbi4zJ?=
 =?us-ascii?Q?l5oEzm+fMJHX2O8j3F9daJMHRn9LKd6s++a7SoL5NgHhj/ZomIVMnNKc/2bV?=
 =?us-ascii?Q?cAPo5W3UNrviqPQ9DwyBzZIcGIpHXyZWzN1W/6dhurc6PEm4frf0H9/i5/9v?=
 =?us-ascii?Q?z7j91znwDxSd4yyB2A9Z2mGS9cCe4m9S2tFoRILioE2zAf/IKtLpD7L395aY?=
 =?us-ascii?Q?jA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4eba16bc-dbe5-4aba-9739-08dc7b54911a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2024 18:17:12.1230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KQGjTqiNuqkp3y+P/59IKHoqwHaEU3dURN7EpC4yVBQ5Bu1SkLAyajRTRcLnaHk2hcxo5nr7Nn8zZqQgY2PX++WH2uh10tIyfAejaMiTiDP+pNru6lQQjNfaSl2svjYn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8518
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716488241; x=1748024241;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hATk6s8o5U1p3xOrTMXqsZaQyJ/ty1GJ4nsybEL+GCc=;
 b=UxxgB8UuDBbf7RNDzNJ60SMHD/exv2UMvY/kKgiV61NXPOWPWIIX2iJE
 g0l9afT92RXRAKphGPthkJ0TkFCtWv5iGVIeEeav0kBe3S4FSmAhqZJf5
 MLT+oClgzldQfaao6pLnljas/7toxRj72FuPZCeI7BJQwVcr4OKfZDRu9
 92Jwc56UKMMCuVEBxC/QwxAagoCGJa8jWPu4NWHdlCa4D7e/urRxa2Xtf
 57lxI644dWNaJ5iYW1aePTiI/H6VlbLgl2HKIdyhCaCz8+rhTJt6Nf4z6
 sXwB5UlW2gAvPTOqRixGP3yRpniv3NszjCIdA8AE62eYVjikcbwURxrHz
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UxxgB8Uu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix 200G PHY types to
 link speed mapping
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Greenwalt,
 Paul" <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
aul Greenwalt
> Sent: Friday, April 19, 2024 9:05 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Greenwalt, P=
aul <paul.greenwalt@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix 200G PHY types to =
link speed mapping
>
> Commit 24407a01e57c ("ice: Add 200G speed/phy type use") added support fo=
r 200G PHY speeds, but did not include the mapping of 200G PHY types to lin=
k speed. As a result the driver is returning UNKNOWN link speed when settin=
g 200G ethtool advertised link modes.
>
> To fix this add 200G PHY types to link speed mapping to ice_get_link_spee=
d_based_on_phy_type().
>
> Fixes: 24407a01e57c ("ice: Add 200G speed/phy type use")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


