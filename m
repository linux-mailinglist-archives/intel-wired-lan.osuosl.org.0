Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6009915F81
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jun 2024 09:08:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F8D960EF4;
	Tue, 25 Jun 2024 07:08:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sMsbQKdAkNrx; Tue, 25 Jun 2024 07:08:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C42460EF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719299289;
	bh=/q6QG0YklfWluJd1DsncI/UEkPpz0DwXNRyueuw2ixw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4bFq2mIi7KjWIarL5pvZeEQEA7p7errGMU3vXoP4yNI3JiGvWYoC0PYsO6gT1TNxY
	 nqHKTVuwIffcDzuSJDdRg7zue9Cfy8eAc9tk4FvdU2bwU57b6wWl3vamf/bQvI+M4m
	 zYzgl8IYNqTrkeEPwKfDkUvev0IYJ0/JcYD50L/qd+WbnyvmVL/8i+u9knneBmTITi
	 GeRBiwfSK0lALuy3lKQQK3EJ0ZFgy8S5PR6vl/fn9Qa0TBwsQRNjBlx2W8YdVDf4bV
	 gFnSXJjjJDLhpt6CiRJ2wr9d8RU7zhhrMFbPpujNbb7Svfpy1YAsC8wsccfiZdvM10
	 Smmbm2CII/1/A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C42460EF8;
	Tue, 25 Jun 2024 07:08:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 887BC1BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 07:08:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 75A3260EE8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 07:08:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uBJKl-pvUrZx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jun 2024 07:08:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 038106059F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 038106059F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 038106059F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 07:08:04 +0000 (UTC)
X-CSE-ConnectionGUID: CzCMZp1lSOmFk24LQHWlzg==
X-CSE-MsgGUID: fNYNOgx0QwWKZppz2BTQ1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="20177159"
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="20177159"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 00:08:04 -0700
X-CSE-ConnectionGUID: EuWkp4drR66AB4gQz9b9CA==
X-CSE-MsgGUID: do5MKn9YTyWE1i+QHxk77w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="43537400"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jun 2024 00:08:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 25 Jun 2024 00:08:03 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 25 Jun 2024 00:08:03 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 25 Jun 2024 00:08:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 25 Jun 2024 00:08:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RPeOQxHCFfzmp0vXNtE+WSUmGy+6yPEu/UcsaSoyT0rmw7wDjg8JU6SoPk/T4efoHWByaBHAxXJ/Lku0+nuz/yT9pSRdWd2z+sPSYZKgnJ9NiK2CwSUbSfNGBpQJsYRIH3nfO+FejsWmLMZ/SlG3LTs9JqE7WMP6rGs2STlrbpInqiQkUXDuhKLqiz+9gEB4qs2pQ7/GupZ3bUr5P24W8kn2bH/8CTTn+oM+8G43fJzIpBZfX5/2Qd4wWPikK/ulF0lQK4Ylkk//F0h4oY7Tmgq1eVZkE1K3qlqnyH1MAG6nL2IMO4kMFt0B3YJy+65OOEs8RyQWDjuyNvYfXYCR1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/q6QG0YklfWluJd1DsncI/UEkPpz0DwXNRyueuw2ixw=;
 b=fH5cwfiqt0JxnPO80NIKLG1ch+AB1KkmJ+VcyqBrOz1HBYxd0adneopCkX2AyxPI0s8gGFMOPiwZAVwCEHdWv0BCWMffhOKwzbRo1BzH23GsP43Ex6N879mst5K2s+0nbFNTFrA4bovFcfVtcw6nmmSDOYyP39bEdGei5SXBWzBfPzYpuAm0P56neJtWY/L5zzZGGmdGNTsaybxKTOAZif9PHwWTbFXnuVCOcDBl0D3am+Op4+sbQvh4srjRycTwg61erDtiWsC+EwyaSDfjH9zr8fL5v/FMaDKrxp49UOr7i72euxltZckzwFReNszTicpLOtX2Vc9rKFoLYQcGzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by LV3PR11MB8482.namprd11.prod.outlook.com (2603:10b6:408:1bb::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.29; Tue, 25 Jun
 2024 07:08:01 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7698.025; Tue, 25 Jun 2024
 07:08:01 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net 2/3] ice: Don't process
 extts if PTP is disabled
Thread-Index: AQHaww3onf0MIoGQ1UeM/p/jS2KE2bHYCvOg
Date: Tue, 25 Jun 2024 07:08:01 +0000
Message-ID: <CYYPR11MB84297DAD3012B096DFDA1FC4BDD52@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240620123141.1582255-1-karol.kolacinski@intel.com>
 <20240620123141.1582255-3-karol.kolacinski@intel.com>
In-Reply-To: <20240620123141.1582255-3-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|LV3PR11MB8482:EE_
x-ms-office365-filtering-correlation-id: a67e710f-6e5b-4e8f-ea49-08dc94e58d3d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|376011|1800799021|366013|38070700015;
x-microsoft-antispam-message-info: =?us-ascii?Q?axwQFgr3hHprbbDsl8orgUUgUZqyG+jgszyPe2DWVQncGZo0PJA3oOuVxE71?=
 =?us-ascii?Q?Yp62b64CHjrJGEm4t7siBaV4IBW8GTgNvHBGJF4O/M+TM1TZsrZ9dBgn+Ck9?=
 =?us-ascii?Q?A99ZKVFVA24PyHBLQCPMpCnD7KlB759srdSmFh+q7Ev7zDUZhXyRNXoWh9bl?=
 =?us-ascii?Q?mQWBIKMbBuruI0ATWdyBXTpbDWo4F1V6/GrviEBmvsBbn1zw4IiY6DR3KVyp?=
 =?us-ascii?Q?kZ+QraNH0OUraIdEl5vSyHwq3Nf9CRiM3AWotSDhgzf66AkQY8r/lE9iehAr?=
 =?us-ascii?Q?faXf2RPsV/l5LFVLEGgEGq/jh7GLSnUATbRkuPcUR+/14RpW/L1xKSSUhcn7?=
 =?us-ascii?Q?EhdT9DKYQY2i4c7c0LtACJ/sjv2O9PE5ISPgcI76ZQR+mqZvm8dkve8GngeI?=
 =?us-ascii?Q?viZekOu0yDiHDTSlymSBMUXXTGnVVDf2UkTDDrC74hclewsktPgsJzHC8JeW?=
 =?us-ascii?Q?m6FDxYVUguSndoMkFMrv7/5cG15X9v/axxJe8TrBQKYx8CG/Mh9EmAPhisnl?=
 =?us-ascii?Q?9K+F+3w7WXXN5kjt+wgrAur7Jdjrkycx5fyK9HdJyUBua3glGj3R9eCGCCOF?=
 =?us-ascii?Q?f+gU5bYcDQpOTaHcYDSFHG/RmgDuFOi33cSC+mtsG/9S6+c4f/uBP7eVFoiS?=
 =?us-ascii?Q?U/0jPuaTngs8SGNMWMDcTU3O6tJss+/xHTu14sQM8DvD3gNxQoNj5tfU0xDM?=
 =?us-ascii?Q?Kna75pKZ10wyNXF+Ae+ueJixxX1Hn95EptmS7I+ZUf+FwrCJ6xw9CfEZnILD?=
 =?us-ascii?Q?20hRlfXQpZOU8VTPEG8ZYI1ZEWJfO9OgJZJotwpS5aOT8YT5F8ksS2cMu+p7?=
 =?us-ascii?Q?QPskc5Ddymg5cr2qt2bTlbyIr9o4LGfK3bSs3c4xi7LOc4127psoRGOgi1SP?=
 =?us-ascii?Q?2o3uMW0+ZbUbZT4E11ZUuuqO5+9MrE2MBN6LP0VSiYjMtLbcTvtcomjKKws3?=
 =?us-ascii?Q?dsY578/2J34XwcLsfPZ/FCCJj2XDjVxjGHYGEom9XWtnwEYd+dPAwI737LgX?=
 =?us-ascii?Q?WopAEdNnJzwYWD4cl+57zqQbwZIXj+bz4ysoYEyVixTESxP3WiRwq09nAUhs?=
 =?us-ascii?Q?8jkQvnC89gHIV91HGBReBm1qfkFvjYW6sXQXdR+Hm9ezGHuaMt8x/YngkRol?=
 =?us-ascii?Q?PS2DzlOV3MfjbYhUz/BU7pq5liRYkSf9MQLNVeCYPx1JU9IQMhda81PIJ6m7?=
 =?us-ascii?Q?r3izC2RuEB0l/guDdSjFX7rMp2MwswqqRAL1JALH/fs1kMLxsciEJWGVhus6?=
 =?us-ascii?Q?YTjn45dg5GqUAK/wNDrfLS33FX80qLG6R72D6sk7rgCZCVZfEoj/UnQafNut?=
 =?us-ascii?Q?ytufxZmK8hLwu8kPqXje92ZtfOPD9QGuDagvqVG/WRbE/QAOxWAWk5wZPF/2?=
 =?us-ascii?Q?KRrWNNk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pOMe6YwSKZKyDCsqtM5+9dSyyMNGrx9KPEOi231ElXyXHg95TZ0n6WzjtcaW?=
 =?us-ascii?Q?dhcqiw8dCyoNuJQAuygF7XztPKA3MoF74cuxl7tr/25rjh0h0HhKN+v3QgV/?=
 =?us-ascii?Q?rs0V2+tP2knoJJpmzgzQAe3gQPsNCMbJAjZ+1kmmiMcw5C4JRE5VBDoHhh8f?=
 =?us-ascii?Q?vTC4xka1508qHyk6qgjwWQqn8XylIkgXbqoWl5T73zWwoZ2BVHFme91aYFCV?=
 =?us-ascii?Q?CZ4Gmw0uwQgwLgbPpSuCvlID7opMRc7l1zCGwhRwqY8W3ZZja2COSHLqAcg2?=
 =?us-ascii?Q?WGwPBEAXB0IWQV28RfNjZnS2lOv1ipUFJMd/13RlfDJAh/lF9Tv3/RY28JwU?=
 =?us-ascii?Q?4xGO2/PHFz6HHioqK2mnu8P4USdVTNBcFBY9FnD+IFCJdjSGoRwKLOE46y4+?=
 =?us-ascii?Q?rU64kvtmUEWbfaGa2HCd0FvIc+4G47jSmmHyqeQfNIZNG7qhpAfNM/h/aEGi?=
 =?us-ascii?Q?ZFP6+360N3VjVXzcYPH64HIYLHzv0q/5i/28Y7pDZh+moRNtFWQGZJc9viXU?=
 =?us-ascii?Q?nxFijcW8o77QzbRmQrBkBgo5VCT6a+4F2KKjHTJxWgaU+A0zmrlo0+//DLv2?=
 =?us-ascii?Q?dwmccZm721BKMsOCk1rjXpiWdMbf9FciScefpwHptnoXmZtXT6fEP4ZLkSSo?=
 =?us-ascii?Q?IY1A890MYxM+pSMFs/4oKNIc/s2QbnEj3t+pycTNQ8mI42wZtoNF7Ft7noaO?=
 =?us-ascii?Q?QijeQUjf2KtW6w3epmq16ljGYT4tKZqjEgMHWfuSNRCw1ZxJu9F0ur50iomy?=
 =?us-ascii?Q?W2QTmn/E0ARNxv5MxuTrS9nl3wDLCQYpqui7GeAP0+P6ONcax5IoT36cyX81?=
 =?us-ascii?Q?K5WE0E5gbR6lhMlvAT4ja9BDrlRIH00ecXFrNESzrN8EeHKASKxHCniB4DXo?=
 =?us-ascii?Q?BIichaD8ZOx4KvPNThbBSKv0n/CMs86EXPCrH7TbC9y9QF1RhzTrM2U6nKo7?=
 =?us-ascii?Q?VbTCMDpBbkIcpZxlBm0rEY6hlsbJwcXhgJ//ZkFHKmnJwL9xNyvztUt21t3C?=
 =?us-ascii?Q?wnze4UTS+ItRDBhzpETAKmEpFrsJK2br+MVkEkyEMrIUVJ/EhAWjRtdef+yv?=
 =?us-ascii?Q?fjzixJVe9g9nploNeCDXXSGrLUkxY4wv5n6/7hyaQYHxMHTgAbg35OP8AmI/?=
 =?us-ascii?Q?K6vdd/pRPNndUGbexmxXR6b+WJBDNO30yIrjPtfh2GNy3b65W9CW8ury4hUG?=
 =?us-ascii?Q?f8ha09SWqkjmOmV8RzT2BsyYgAlrSf2+dTjVZ4He2JwGCWuM3lKTpIDp0QoE?=
 =?us-ascii?Q?fvUg3K+AGOiWSNAZYfWEE3w1SpEf6ZEbOtpBfBsSX4d5Q0gFm5TaebFjn/QM?=
 =?us-ascii?Q?mBD4lST8YqTpYiiBhb3csf0SnRBijoXZ60zH0G/Ww8kVwjuRpQXiTKk4vn+6?=
 =?us-ascii?Q?TE/VsN9B96sQADIllH4zlYdJVWRlwfFSStw3WqeLNzazW4nh+Dge8VjI5KSp?=
 =?us-ascii?Q?N8qaweaycIaQ3rIJoTHPKZdcUoQEm6dDjjaxlqGDB8F9BLA8JQor3i4gvJ1u?=
 =?us-ascii?Q?tr3IKeN2al6Tjcl1Bz6ciUrQnwqG70GkvgUYR44vAcPJDb/32p84AgFFkhEl?=
 =?us-ascii?Q?8IWw2+Db3MnKy3vDBXP+JT55UCu9DEhl3M65qYZIjlQpiZWXON9i3dtK67vY?=
 =?us-ascii?Q?CA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a67e710f-6e5b-4e8f-ea49-08dc94e58d3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2024 07:08:01.7770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GYq6jYT1oVyFW85Os6SavEFLko4NEIId81uXwR7Vba6bEUfqHud1UOYaE/9gJaqdnJWG/uHUgYUFJErW7aPYSPNGjqZg7scxzsA0GKN+IHF7pQaiGvyQbvQsNZI59e4Z
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8482
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719299285; x=1750835285;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8Saoq/7kmgGRimGGgCQDexsjtySww3GphedY3uAusfs=;
 b=jR1Xj5Av/3LnYbcPrC4Fk+Hs3YnmtCflZdLt4ws6Edodptmxc5f8UolT
 kKJgIWHp9plFNIxJQ5bv52PGgbpJ2kJ7eDPwGIb03UJt53w42LFS3HAkA
 c0yD539SWpfN+C9l4DxfjwCfCMCjNgYKwMU5b9eE/vMYgAsNRK0uDecTs
 GLywclI2s4M7ynAWYYn7x7cNgIRN/tu+Bw+95sRmO7qFtqNcxQhyqNtR/
 bTZ/tpFlvXUy3MZLc+17JSlKyEWE9EgmJa1iHnf9Ilch7DEVybnQI2+9f
 +sjh6+T/G4Ziidlc2BqfkE5OBm0V7XGPWJddVCMYNdC/cnkfbz81WBkdL
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jR1Xj5Av
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 2/3] ice: Don't process
 extts if PTP is disabled
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Thursday, June 20, 2024 5:57 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; K=
olacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l=
.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 iwl-net 2/3] ice: Don't process extt=
s if PTP is disabled
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> The ice_ptp_extts_event() function can race with ice_ptp_release() and re=
sult in a NULL pointer dereference which leads to a kernel panic.
>
> Panic occurs because the ice_ptp_extts_event() function calls
> ptp_clock_event() with a NULL pointer. The ice driver has already release=
d the PTP clock by the time the interrupt for the next external timestamp e=
vent occurs.
>
> To fix this, modify the ice_ptp_extts_event() function to check the PTP s=
tate and bail early if PTP is not ready.
>
> Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V1 -> V2: removed unnecessary hunk of code and adjusted commit message
>
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 4 ++++
>  1 file changed, 4 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


