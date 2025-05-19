Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54803ABBBF3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 13:07:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8AE3E7132D;
	Mon, 19 May 2025 11:07:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5iA2w7h78t7C; Mon, 19 May 2025 11:07:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCB7971314
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747652826;
	bh=uzWyq9sbEKc2hA8GEhgbgUGGij0Iw24lMTj3nMvtvy8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SMIpL0UL+bD9CDvhsX5xlVCPhgGkWyNQUuVrvSRrHpQQ+PN1VQytICmgneOrpjliS
	 hjixEFkNXHOXoKVrnUMeVcVBdO914mP9L2C9QbJ6YnIn3HURrakHmCrgIi8PAHeyeP
	 LUuWagM8CNCbD6i9FQk3e/bIDIaWbxj9vfxdbVWpNtp+DcwNhXj4qN4Oa6viYTrZVQ
	 HE3VQQq9YSSNMmctCjDSQXN4U5wB0iKyeA6Bf9ITproVkZNZfvUKg5/Ne/VWd6wzDz
	 G+UzNfv7QpT80AEEivSK8j4PChSUpakV2QSybuLjkwR0eI6LcIsJO62WvBhBUYhX9U
	 0Z4NfA6intjgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCB7971314;
	Mon, 19 May 2025 11:07:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C1EFE4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 11:05:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0CD8140526
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 11:05:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FR0mGh6VEH21 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 11:05:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=sarithax.sanigani@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4A9874058C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A9874058C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A9874058C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 11:05:15 +0000 (UTC)
X-CSE-ConnectionGUID: VtEdsG5zT9aRr3Osx9asmA==
X-CSE-MsgGUID: fZjGmWdqSRSo5BAfW5C7ng==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="74947931"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="74947931"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 04:05:14 -0700
X-CSE-ConnectionGUID: IBeI3XXgR4KooXXrwZNkSg==
X-CSE-MsgGUID: 1HrmgdqFQU2o5Hv2pryBiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="176453536"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 04:05:14 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 19 May 2025 04:05:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 19 May 2025 04:05:13 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 19 May 2025 04:05:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gj7HLQ8i8hK5gfXZN8m57+zbzicaq3oWdAAuq+OiKQk78AJJKUOQfunJ2Xnyp54xIlIsHlRyXG5WPbpXsgDyKQU8KQnZhgb2bVb6ZDdfC4Ks5VHmH8CiUpZWiB4AlS8Ec8oVcTvFrH9z6mpx3IUJy3OBavEkYIjLJLd0O6kk4zw7TbWBlGcGOphg73Lqi/mvsJhLG5H20xzfbUlS4u83g0oMqjYGkbB5qwXpMvYu5p5vuLGt7Dm/P457yizTCT+RhNkvctu4Q8ipTUNg770sxbatvWBW2k/6Jb7vp6yKQy/gEMpGNdc3kc4zO+fRF/Mm4yhg6CN1lTLmnUlpUQmOMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uzWyq9sbEKc2hA8GEhgbgUGGij0Iw24lMTj3nMvtvy8=;
 b=L/mdUg6XufHDgn/dS6q4TJ+jZEg2vpR8HB5bmzQQZeprNZn1HMg6Y4AUKCYWcYAlMFf9fubp6UPiSaBsoc/9S0QOC9Ujq+HBXqtIOmoerb4AXUz1GjvuuZAh6sH+QmEqLWHQxMRtADOtyN075VCGf7lWFWeyoikr59YYL7+5xcohwcJ8UsAX3K5JPGJ55QpI4fnf1XAArjZrt8JgDTTvWc3+b6Sk2e+QAhHOvLV2wivxipbuqDFtOtv7RGM+eUngPnNL0l/g281/aiD2OawoLaWKgNcn1xUWcr8GQbOE71Qkrxkfp5u2kWGI/lDli1gFtBVAx8hXTY44pLXlVPwwyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3542.namprd11.prod.outlook.com (2603:10b6:a03:b2::15)
 by PH7PR11MB8551.namprd11.prod.outlook.com (2603:10b6:510:30d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Mon, 19 May
 2025 11:04:40 +0000
Received: from BYAPR11MB3542.namprd11.prod.outlook.com
 ([fe80::ac87:1b07:7cfd:dee4]) by BYAPR11MB3542.namprd11.prod.outlook.com
 ([fe80::ac87:1b07:7cfd:dee4%2]) with mapi id 15.20.8722.031; Mon, 19 May 2025
 11:04:40 +0000
From: "Sanigani, SarithaX" <sarithax.sanigani@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "Kubiak, Michal" <michal.kubiak@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 1/3] ice: fix Tx scheduler
 error handling in XDP callback
Thread-Index: AQHbw/Wh9JHE7E7nDUebunR/h+/9SbPZuqqwgAAXzvA=
Date: Mon, 19 May 2025 11:04:39 +0000
Message-ID: <BYAPR11MB3542C644AF13A4CBC0B91736F99CA@BYAPR11MB3542.namprd11.prod.outlook.com>
References: <20250513105529.241745-1-michal.kubiak@intel.com>
 <20250513105529.241745-2-michal.kubiak@intel.com>
 <PH0PR11MB5013AB5E0AB451527E3F8E9B969CA@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5013AB5E0AB451527E3F8E9B969CA@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3542:EE_|PH7PR11MB8551:EE_
x-ms-office365-filtering-correlation-id: 1e44b796-1085-465b-ff41-08dd96c4f380
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?UJa8Ah/SZxXTyqxgVMervQIrRPIX90eWVUXZ92NJ08h9FsI4YxfB4SXiOP43?=
 =?us-ascii?Q?bBgIqUKypsxnOgBS8IiQDWzg9PC78OSF0kuy4MBWjg1IarGE+cxlzHxJzRnX?=
 =?us-ascii?Q?CJgZR50lfC/Oyq4vXasQR4tyfAerYFVTl0j9C0wqTeDzn6Du4bcPTcgheD1s?=
 =?us-ascii?Q?58JfruGIrHTDSnM7NMZZhGFzx9Pnv5mjCtIlFPB54FzOeyLg65D0/c7tt0y3?=
 =?us-ascii?Q?1wWj2O/p4Lp0vBjCRVxB3TZbQLsec8BIAXKURO9chmwWa6UG5s0sPtVcFh5W?=
 =?us-ascii?Q?Q94Z7ipQXPNCIRnNztjaD5QuLKEuXwnRlgldh5zb1B+HmuuzTTR4L96LbUZs?=
 =?us-ascii?Q?dGNvA+WmKEhqVoRfMJPIWzFmmBdtUZ39UJea8DM+vzd/TxdB0ZLLvc7ztw+h?=
 =?us-ascii?Q?O0ul7Y3rIzjU6YZCmPgB6lNEe2oVCSh2/mCWQDugiLpxZccGC4GFIsbkfeOd?=
 =?us-ascii?Q?DrEZylwikzfJZqMBskoDN7R7XOgLjXmJfILes2u7ABppl6s3EcM5bDynXw76?=
 =?us-ascii?Q?05lnrUfex/mnPNxcw2V5VVIOkPflUGRSp0Rc7jndNS6+zoU4kw1cVROfQGlA?=
 =?us-ascii?Q?hHKKZseSRnFWwO9icd3G0GjTD7OVKlIWHzrJqbGSI5fpqX66JTe+1eKw9WTo?=
 =?us-ascii?Q?+6cH/CJdGygUB4xKZXIEvX/j6+zjtlrzC+GFDxe0AA625scTDtOElduZDSgm?=
 =?us-ascii?Q?+CTikBl/H2DII5rbBXI0KgvsD/JbwZ7Yc8gZm5EzhmHYZ0p9JbRNEb/One36?=
 =?us-ascii?Q?3FmWT3rK1fOk3zPE9V2okKBxycqpeS7bFYREql0UKHO1RBwa143LQW0W9en6?=
 =?us-ascii?Q?nCdIMB70TWlNfyHuSKrd6HbMfXL1+67Z2xG7YZkMR+6qVWIiMrUSNot1MDbB?=
 =?us-ascii?Q?mVVVeSHeHEyXHtAiAOTVC6P/egqhq9Qq7dLVRmPKnLkK65iR08NuKPp0M1u/?=
 =?us-ascii?Q?JpV6a3xxzJ8VlzotJINjC4JVl9+c8jjlS8rXRuJFw2qwOVnti9whhb3gXulq?=
 =?us-ascii?Q?nC65XlCzLw5vB9TpsuGaayUnQdOTQUW8TXV0kf4S3XrCqpqOJN0M3bHkUruy?=
 =?us-ascii?Q?WyTBdlpDh9KKfYhfHo+hRNotZyHSR7E1VafUOVAu803C/1vCmCXlf2Sbc1uj?=
 =?us-ascii?Q?8+oZ02FeWwWuJWqZoaWZsDjB9pOhnr9ruiUKIxCF5/9/AXwdFsUgldTcT8VK?=
 =?us-ascii?Q?eiHujtqhrGwH94XSATgqphJWrwqNaV0zFHEe+vcdlC+qaxQjm40NnW+ZuNxH?=
 =?us-ascii?Q?7hclchVM5fwdhvGXk8zVr0joPvgG9oXJ7ZA4S4OSLay5JDjNdaYZak4Mk6Gm?=
 =?us-ascii?Q?pMVLU3S+hlrAOp0KDPPQBBDvdX5ot0o12uLSOIAR5jOdSouw+YP/MIv72eB1?=
 =?us-ascii?Q?ueDTPXC+bpuS4jFFN+IX0QKo3KdD2uOYRRKkFoEIr+gx3ejL47rVQTRUZtG7?=
 =?us-ascii?Q?N8fL04ke2akQrg23XZyDqOXKFlJpSwXJkpWdvWpYwNM24Vd8OWu+DKzBrCCp?=
 =?us-ascii?Q?7ob1sBQypbv8cF0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3542.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GV31hgSPgdq52T9KGty+ii4yM4mf1ji5It0vrxCfXZCFIqVp+jHCbv2VtatZ?=
 =?us-ascii?Q?W5VuvuFI5IoS8j2DYJ4PAsfeKF3srUnH2IkBR6V1EXOCs7f61HLeNDCuL2fi?=
 =?us-ascii?Q?M1oaZsjAuSRindFCau3zsvHWeEOuc+c8HZS/SySn/mzbEah/8eDGJWtRArml?=
 =?us-ascii?Q?piUUwzCtTYn/eBFi1IOt7vOAcg8JiA+K9lk9O2bWxn/KBfi49NZ49y7tU8XE?=
 =?us-ascii?Q?6jS1prtJJWrSgbB6o3H5cC6ZXLwPxPT5ujG9LtZxLcMdhfHqgm84Smle3YQD?=
 =?us-ascii?Q?UoXZHuZugiHBZ1TK9W+NTNT2vbMjQjVPiEB6F7cDOk74FEeYXajN1SqVyakw?=
 =?us-ascii?Q?YZkqW5XXf14MX40PP1YVC8FRZ8jxAQRb0qvjvhd7EDOXKYNTQm1/wj7LVMwF?=
 =?us-ascii?Q?FKqKpP16nfoAwWwlEHT7v/VMD8m1K+wRtslApm5U1T7eUtCrMtv4P7JlmFJN?=
 =?us-ascii?Q?IiCwPIoJmR7YILmVwHvK/4AXzdeBuk1t83vs4KiAl5trVc5tTABOiA0gjgTE?=
 =?us-ascii?Q?V6hkbEbBk98ItOdMEchcOfi9eGWXaVweVXnm/NV/nWjXlsuM+X1Yy1v0pxdu?=
 =?us-ascii?Q?bpLdGr8yKyFoilFr5TSEpsqaVK8HhgMZFMUsNl6Z98Nu0jcIV8x4t9MCYrMB?=
 =?us-ascii?Q?FuQQWYNovYJ9j79mwJpo0U/sASB+GsaMqfd/1fAE0FIeF+2Qb4tNJVyVEYCL?=
 =?us-ascii?Q?2w32d1XgAtbbTDocLvG5lfwx1H5xbyBGVEiZw9uS+xG6PkPsO1HcHTzuzQfu?=
 =?us-ascii?Q?NUF/UEjEHmDW+r+dIePqzsc8xTxWf57r7UYRDvl6PPuwO6C/5OVnJgpcdV+F?=
 =?us-ascii?Q?UzaKbiG8nooEOpDJUDKBmTwvevsez4oRdt9rr8B1BUFBqV+9MIS44LMXtA94?=
 =?us-ascii?Q?wZVdnyvR1ukjFYYdSSHHiblEd8636BlCSIfdFz+WNBXpkqlTR9Z2juS/JcPK?=
 =?us-ascii?Q?Gb0EqOL4HkKX3fk9yvir79M3+o7IVPXFPzfsKwsviK1IL8/QfLHzKG1HNqb4?=
 =?us-ascii?Q?Pz98wuS7tsSQw0Cxeuu/yL65PDYCOjsnCsl6GcomJ4HAuCNS88wVd5+0b61u?=
 =?us-ascii?Q?Lp/utlsjlCOFsiafGaom5Dfr290MScKt47Qo3iPC2PkJvdXGqHQxmGZjymVs?=
 =?us-ascii?Q?npIQAHxp6KPV82F1o/6sqYCAAt5XSlQWk7qDuFTu3IVSN5OJn0oY51JMOwk+?=
 =?us-ascii?Q?NZUVhP3VHtCyxPFmBQKkQ9mDwXV4HVqnkmjrTAr4t4vRp3HrviggGG8AFrN0?=
 =?us-ascii?Q?SIKT0KnQ7nDIicJ44tc8NfIkqXMCzYQVysqzUGsjX2G9JV1Ww9joqrd69fWN?=
 =?us-ascii?Q?uWNdijp6gK+RYymSKGtfyiLqpueto8j+1dTv/vMZO9+RRjXLFsFdK9n9HkGL?=
 =?us-ascii?Q?enLQSFmpCH4Ct+lvQK84tG20vXzJwDT9nFvdj/ErHO0ByJkY/TO6JUZ6FN9e?=
 =?us-ascii?Q?dBIhvMGRC5O8LB+Zu99O3UHP5NjokoKmjUXqeKJsEaTBgDPFB2BUS5wRwU+/?=
 =?us-ascii?Q?0LFAMFe9WhEjRP+28bLdCk/ApUs4XmUr9I4wOth1UoGR8WeYbbSfFS6T8x4c?=
 =?us-ascii?Q?HTM64KfIaHYSlnzFnx8hL/Afo8n4GcPSzeDkJ5gdmjWmf7jV/ejKgG/9peDI?=
 =?us-ascii?Q?iVVrUM5GdPKs03FwemmXpx7Pxcs+hC9Je6Jx3U+cP0HgOgoS0yHnMSH5ZKp+?=
 =?us-ascii?Q?e21dDQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3542.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e44b796-1085-465b-ff41-08dd96c4f380
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2025 11:04:39.9388 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xt4x3Blv65+jYyo8ODTbmJEtdYQ1AHIP2mnxlRtTh4eehGAen//IvJt2ytX51LCJzAKPISDC+T9rGoMzh+8foFNvvOi7hKNFEEC9E1HBqiM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8551
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747652716; x=1779188716;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xx4i5Es7/2eNPIPo33bE2fqdlyvf/3DkyMkgFXer90k=;
 b=DC0EMnTRH7Aei38hgDcNmzrSkW0VXH8/PJRsUS4JTo1DTIuPEoCv1xMF
 8rhNiFfrk4Li+RiA+nLP9CYxR8tlbuqTl4WzyEWt/sHVA7VBrh3SmyUUn
 lCfmtnjWJzzyGZkXnCXuFVSS/4+zeJh/a4qwbfYvLby10rgqjAmqWALlD
 2Jod/nNo8KMZRMTh8qAeFfh57wjChHdC90Plal9SVsq+Y0OMawj8USB6O
 1nGhK+oeB1ENoBu/rqN0diDgRics1eomaR5feJbnjbGk67ZGYxe4FfbjG
 2lz5G+4MXQ+1mXhHh3fAm4DFcItM/Qrn72fVz1IZjpjhiPWaMNWyu1iNp
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DC0EMnTR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 1/3] ice: fix Tx scheduler
 error handling in XDP callback
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
> Michal Kubiak
> Sent: Tuesday, May 13, 2025 4:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Lobakin, Aleksand=
er
> <aleksander.lobakin@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; dawid.osuchowski@linux.intel.com; Keller,
> Jacob E <jacob.e.keller@intel.com>; Brandeburg, Jesse
> <jbrandeburg@cloudflare.com>; netdev@vger.kernel.org; Kubiak, Michal
> <michal.kubiak@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3 1/3] ice: fix Tx scheduler e=
rror
> handling in XDP callback
>=20
> When the XDP program is loaded, the XDP callback adds new Tx queues.
> This means that the callback must update the Tx scheduler with the new
> queue number. In the event of a Tx scheduler failure, the XDP callback sh=
ould
> also fail and roll back any changes previously made for XDP preparation.
>=20
> The previous implementation had a bug that not all changes made by the XD=
P
> callback were rolled back. This caused the crash with the following call =
trace:
>=20
> [  +9.549584] ice 0000:ca:00.0: Failed VSI LAN queue config for XDP, erro=
r: -5 [
> +0.382335] Oops: general protection fault, probably for non-canonical
> address 0x50a2250a90495525: 0000 [#1] SMP NOPTI [  +0.010710] CPU: 103
> UID: 0 PID: 0 Comm: swapper/103 Not tainted 6.14.0-net-next-mar-31+ #14
> PREEMPT(voluntary) [  +0.010175] Hardware name: Intel Corporation
> M50CYP2SBSTD/M50CYP2SBSTD, BIOS SE5C620.86B.01.01.0005.2202160810
> 02/16/2022 [  +0.010946] RIP: 0010:__ice_update_sample+0x39/0xe0 [ice]
>=20
> [...]
>=20
> [  +0.002715] Call Trace:
> [  +0.002452]  <IRQ>
> [  +0.002021]  ? __die_body.cold+0x19/0x29 [  +0.003922]  ?
> die_addr+0x3c/0x60 [  +0.003319]  ? exc_general_protection+0x17c/0x400
> [  +0.004707]  ? asm_exc_general_protection+0x26/0x30
> [  +0.004879]  ? __ice_update_sample+0x39/0xe0 [ice] [  +0.004835]
> ice_napi_poll+0x665/0x680 [ice] [  +0.004320]  __napi_poll+0x28/0x190 [
> +0.003500]  net_rx_action+0x198/0x360 [  +0.003752]  ?
> update_rq_clock+0x39/0x220 [  +0.004013]  handle_softirqs+0xf1/0x340 [
> +0.003840]  ? sched_clock_cpu+0xf/0x1f0 [  +0.003925]
> __irq_exit_rcu+0xc2/0xe0 [  +0.003665]  common_interrupt+0x85/0xa0 [
> +0.003839]  </IRQ> [  +0.002098]  <TASK> [  +0.002106]
> asm_common_interrupt+0x26/0x40 [  +0.004184] RIP:
> 0010:cpuidle_enter_state+0xd3/0x690
>=20
> Fix this by performing the missing unmapping of XDP queues from q_vectors
> and setting the XDP rings pointer back to NULL after all those queues are
> released.
> Also, add an immediate exit from the XDP callback in case of ring prepara=
tion
> failure.
>=20
> Fixes: efc2214b6047 ("ice: Add support for XDP")
> Reviewed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 47 ++++++++++++++++-------
>  1 file changed, 33 insertions(+), 14 deletions(-)
>=20

Tested-by: Saritha Sanigani <sarithax.sanigani@intel.com> (A Contingent Wor=
ker at Intel)
