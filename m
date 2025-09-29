Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 372D5BA92AD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Sep 2025 14:13:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B983A40A2D;
	Mon, 29 Sep 2025 12:13:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id og0BaUFJo4Pv; Mon, 29 Sep 2025 12:13:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E624E40A47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759148035;
	bh=hFuaQ+EIZVDLKlMw2NE+EWbdsXrdGxFQynhqqxPN+LQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SDZEwWm6nb+u4r23rwX7czIWaK/toif/i4e/Nt0FmqYyeu8e8b0yvzbKS2SBJKmSL
	 wZU/G+yCFEbPftKUi0wKyRThbmToBd/P/kB6kmtYJ4YEdCNkO22tzDI8Y35SEHMHH7
	 Mcm6EA1u2MGkzgMJP5Tb3pWpOhwXMhiYNzz7brai4ybny0aizGgQ42CCOaSomVH67W
	 kE5URpa9n95lxHc6qCp6yGPktchfOgG9ZzB5wTLrvenVLDyLlumxngK7C4VLtoj1O5
	 OeKCnSlVbB+yV2BnGQqN/F0S5eE/hkRrNwOu7QxbfndINsLLOkpYJCQnXho/ZQ5JS8
	 cVWIlThvF6PXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E624E40A47;
	Mon, 29 Sep 2025 12:13:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 27E66111
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:13:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E0FC405F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:13:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I-JAram3VBMp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 12:13:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 64A66405C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64A66405C4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 64A66405C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:13:52 +0000 (UTC)
X-CSE-ConnectionGUID: giPQur1DQ0KC+l+ZZ86Kxw==
X-CSE-MsgGUID: CNAzVfMHTr+5zNWDLAtjtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11567"; a="61275421"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="61275421"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 05:13:51 -0700
X-CSE-ConnectionGUID: 1Z2oyqysR6SNo0QqJj1rhA==
X-CSE-MsgGUID: YPeOh6kLRkKEWBX9iKoUvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="177830912"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 05:13:51 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 05:13:50 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 29 Sep 2025 05:13:50 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.25) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 05:13:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mK+XbFpm6mywS4wRrpR/fwl5GsiKy5G927Y7qHRB4QkffBMEHiNEJDE0jod6L9x3M6u4frfGor/kv8i492K7KMpjPTc67vtpqUQOeH1R9Vv7l4/nhB4NShc5VkDmvWwRDrvDpV7/DZHQbp0jvWIKh0J7KuCVW+eX843q3PfWMcycc7Lq3CBb0sRPNO/5jpuU7j0GvjKjOv/XV2NJvY1xh8FVVwP9BrXE3ZdQvavA2sYgLY30lbG3oZZ9Xs7n0GxPtqQbrygZs8w/ksi5ryN5P9JayJH3LjNoPgzvi4yM2y6uA5LASpy4q3w5xcAHNiNBbUo4QCoQrz7B9K+fdrv6Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hFuaQ+EIZVDLKlMw2NE+EWbdsXrdGxFQynhqqxPN+LQ=;
 b=w+3BgQzOGxYqINDbYNbggjMZOk0d8LJl+G595crUdCNaK/3GEI61rPLnzBxkKNf/AwrRZsP+m11ycSvT3avbudN2o1cCQOhu63Gn/KqF+TkdoKvxFyxWPW9TPklB9YsvcQStWjp67YzApYCIWjjtNfutZAlzB6AMENImjFjD/h3UYq/vYb41alXKCk34NM4KZIwrJwcN7U6WHXcvH8/iYubCKMmke9ZEHhytj+gZEOlAi6Q8ZNrHQNt+g1VYHAD0eFQG/ZtNT1UQ5Qyrw8lAYyo8NJ7JssH5rPSH2HX+SPzJbvypFXVAMAXC+KqC1TKlvX6BDmqec7BtPyLOL02oiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SJ5PPF1611BC49E.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::812) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Mon, 29 Sep
 2025 12:13:44 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9160.014; Mon, 29 Sep 2025
 12:13:44 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/9] ice: enforce RTNL
 assumption of queue NAPI manipulation
Thread-Index: AQHcI+eZE56EP5R2ZUCa20H4/UpU37SqFEfA
Date: Mon, 29 Sep 2025 12:13:44 +0000
Message-ID: <IA1PR11MB62416EE1C34A051C07FFEAA88B1BA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-2-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250912130627.5015-2-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SJ5PPF1611BC49E:EE_
x-ms-office365-filtering-correlation-id: 8a3b0832-ff74-443d-6a3e-08ddff51a2b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?tfzBnw7xth4RlG7CoehjaGdnNEspItLOXjhDtHOZ3DSfAG+tGCkwz3B48Kng?=
 =?us-ascii?Q?QM8jqoXnxHycHGj/OwC2AciWUTZd4ErwKpEgAumnb0B7X3F3JmnJrIz8EqKx?=
 =?us-ascii?Q?aFdZWU++87VGzVZpQSz5x4AfLCXhcFK0XyR259zkDu5KPe4Gi3/taeeVolMn?=
 =?us-ascii?Q?CigiitAUnhWpKsejvCODaYYffEbcyuqMOB8ETR/LvoZqFTlkipRsxyzEfEIC?=
 =?us-ascii?Q?CYHhFs0ew3yukCNPq2P/4YqyCNSe1J50SFESLNC8Zxo/tEM+HTfNuUIuvZYM?=
 =?us-ascii?Q?CzHKiKXhwnzT7UrvqvUGvGeKo6uJFdSRD0+slu5pRF3zugjcEjMr1hp46I37?=
 =?us-ascii?Q?Nt2HgeS7LqyASCCZdB2cbPOJpWnHlKejMeNWO5m9dVS0lUXpvbP1DYeL5NPT?=
 =?us-ascii?Q?uUXeSs8/rYkCpsYejnzK6dyqESj5awaBhi2E0J708wCkjpcwOybssY29D9ui?=
 =?us-ascii?Q?rDUURKDQsm19m0KspGn7UP9EUty0ektR7AJGroxduniJnDlK266yMRLj5804?=
 =?us-ascii?Q?9ar3LvI7UhkcebEMhwgh0yeG2Z011RywR6YUT+axIJVDWeAGwHNuaJHTGGqK?=
 =?us-ascii?Q?Co4wnIqGeUt5DZho2O8SxLq/cn9/OieCDFc2oXDo3qETE6pOGsua0GblaVD7?=
 =?us-ascii?Q?H6qsMlGaZHy9QN4cfoNoa4eQ+wPe4pGZiwsVd45NsD6iex/9ywwOY3qymdVB?=
 =?us-ascii?Q?Mf0yFtOBFPYo2cC5V/RhaiBTDZxdb3ftvUAfGK3NWUXmm5VAXGJjgX3yM2u1?=
 =?us-ascii?Q?MftZp35vIhTNez3xa3DfU5t8VmnZxRrIRoCcWoDkQ7ft/3mbOuPDpPXJ/O1O?=
 =?us-ascii?Q?VEITH870XhzYAgBJ5QUhFCJ0kXn/qViN+p+27lzVPUSlWoMlFs3NSNeoTkaE?=
 =?us-ascii?Q?cU6b0gZX0nib5G1Tf54i1z2JJb2cKclx/PDBA1Wp2rD0cQgj5xY4dAT25bxM?=
 =?us-ascii?Q?tiJhDLfjyl1b0h4ZtXQ5ky+OZz8156EdqEPiWm1EGPVSybOjj3j0GADseDdZ?=
 =?us-ascii?Q?Nnwz2ysK9WTESo3hrTnjNcEKdT26F07et4Af8fPeWnLV15otORDDT6Eu9X+/?=
 =?us-ascii?Q?UBrQ4tsFR/IIXHxFj8CfWJHRzwe3qSQ3d0W083y/Lvfw3J319G3+v9tX+daI?=
 =?us-ascii?Q?SnQVUJdUkgRFdAnrsDC67EBA7OvKYYga+2/zAy4O0ULRRmhWYT/HY4EcPiJP?=
 =?us-ascii?Q?EqMaf1kE5hscirlsp5fldaBqH+q8/5nsOhBFmCMe1mrfaNVs7ZH7hsACgGjc?=
 =?us-ascii?Q?RQ3DEeM/bCB4hS1SSFaeVjj0Kn9P/mO7Vj1EhYBHYh4867GkBTXy3ibMTpK7?=
 =?us-ascii?Q?LHZRt/FOvVr+ojD0ZqmnX1bL53taztqmTMSXf467p28Fo8alXyj7YwuMU0ku?=
 =?us-ascii?Q?K69zE1tG8hYj+Z+fuC5WQ3fodDYh1+8T5hf+tGa6QeaLDwtVWtEq6f0zSc6Z?=
 =?us-ascii?Q?nCJ102wt1bRni6ZZ8tigcwovCu1+oqeODlgjs/6qymzNX6ALOsSruDTq0+XP?=
 =?us-ascii?Q?kJhiMxNI4QL7GTl/hxA9nJ5PSyZGqJqtwebp?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yxZP6VxNXcOR5TIChQJq7oPP1U7yyZ2rcSweC6fCTnAE8+49dG+otZ6xLvWL?=
 =?us-ascii?Q?ioEeuntgpdb/PgiN7lrB9xTveNzsJ24WYsNQXLpXmEApNdilvpJszW8/DGXl?=
 =?us-ascii?Q?LmfeXItgU2XbRdeCh4d89nyEL0fVGrMYcs4BKpLJDTaPUaEkgBL7YFOYSyYH?=
 =?us-ascii?Q?7lGJ83SUe2bsXY3cWgiKd9C/9WC/7fh5ckwW+/ZyOJ16iX/hGI2v3Y1GAR1n?=
 =?us-ascii?Q?oFTTPt713qpcR4GkfdCtYChKjRSuh1Ha1OECBnl83lo7Oag3xdMIVPD5lABy?=
 =?us-ascii?Q?oJmRLyWvasIr8lozwmJjjJzMQRdPQiYqjqHxMEjhU1BVCdxrrAwKA0cCmHxS?=
 =?us-ascii?Q?ChqbR2aZeB3/q8rFqnukBE9RyuqhZtlnNBiHX+fFWg4GgB3oOEDDHM8tri5D?=
 =?us-ascii?Q?0McWlOA4CDAuOioYrFZCRxGSNr4AvX/Cmio/NIaq22uFLYnCKR41yekKntP9?=
 =?us-ascii?Q?PDuUmhK9dLBA1X3BLwcUHhW96AX+tv+mG1t7JNZKpvXZKaOHQj1tXd7HqOYg?=
 =?us-ascii?Q?lRD8BI4X1paPQPbxHmONEaZQQf7Z16eFRifRguIj+iFo8vUhRZNw3bPZswaG?=
 =?us-ascii?Q?06QSXWpF3vz4vHMgXjCTTX88JVpTj/0LxkgqnAhmNzvS9pNH26ajVhgU1dFK?=
 =?us-ascii?Q?qOkcaVky6L0A8K0MXLHLCfL2mk0zlzYDakfJ+RMG4hsgWxSTsdrDEfYZsurd?=
 =?us-ascii?Q?b43vxVhbluHtnQsdUD6ZkvgL0IvMboNodFa6B/54mKs4vabLsQUNfYax98W+?=
 =?us-ascii?Q?FBfMWck7X8YVruKU0VqIUm2a7ZEFyYuQblQk/Dey2eF8Tu4eP8hWKEPHH27I?=
 =?us-ascii?Q?tUNXhU7ehAMTmsLHioz/q0WM6vEgE8jWHv9MH7kN0Gf9sIelldlEpy8cRux/?=
 =?us-ascii?Q?DqxQv1o9Ipui48+m5BtgY/ltcu4/azU7LG5V4LQfgD7NYEqiaLIP08H532HH?=
 =?us-ascii?Q?HjPr9XoU08wUoH4f7uSFSHxLb7FWTsRMvycW/m38XSUZUYwWB19cOEl2rwXH?=
 =?us-ascii?Q?QemgLYjt2XzqyUOAmQHPdxHEI9l9KdYu4Phs99NnTrSRrOHn5JYCuCJxh6oa?=
 =?us-ascii?Q?2kH+mYJiGBxe2fPZ2IxsZgUQQl7mEYguwH41/AuJBcHZlnuxyrN8G4fECYqq?=
 =?us-ascii?Q?VNRs6vYIYkmRvRFoYaIVAaCH24RoDMRNqyqH1uRZsbTYCeFWLvmqsKG0PnF5?=
 =?us-ascii?Q?BB8vUir9Z5yOGm2+umSn81pB7BKRJ91vbWEqxLCaew/AP4bTPeVHh2W7s9QV?=
 =?us-ascii?Q?ASdMIx593RVm+SObpnDiYOhnIjP+jIeNlwhSH0tb50M4ypEZgj6AiJQIvDis?=
 =?us-ascii?Q?dEjGavlomsAHAw8IaSpIjPYnKQQ2Gl9UMi9HQsq2/81lL1KxPGC2AZpIuMO5?=
 =?us-ascii?Q?6CH9g5C/dknyXE3yM1SyEocukhJw+89ahzbm3PJL7bTo7gi0QmGzkpKZ6Abd?=
 =?us-ascii?Q?VBu1PCWfti/UQZM9ukRb3bzHtsIdR5qMo/Ywbco3avUtu5zMxXpOQ8AiZ9nR?=
 =?us-ascii?Q?NuzLVBvBJosKegG/2BtfXBlWNwcEBrXqTjy/8pHHx92P9w2kM+ERxEiRd9+3?=
 =?us-ascii?Q?JRpwyaYKalPpYvmQ6XmfkfduE8xF1+GAdhbb7GPr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a3b0832-ff74-443d-6a3e-08ddff51a2b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2025 12:13:44.2996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FNglFuv5wR9S0V9TxywgRoGd1zgAJ5AOB7ZzRdDU5wSPNEwU9A7LEg7Kt0UH5xyp+It2/RL584WFHyhZZIemvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF1611BC49E
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759148032; x=1790684032;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hFuaQ+EIZVDLKlMw2NE+EWbdsXrdGxFQynhqqxPN+LQ=;
 b=nH/QzUbtJ9cVUiD903pxYrnLhUNI6cFEE6jWuqE/WloP0qdvaBj2N22+
 zBM+ntniy83xVyfqf0zT/lkDzgMfdVo8cqRCd8nahGmDgXzS/gSUMeEoF
 APK6qPub5jsqmG7J/eJHfkWsAmqM/YRUBuYEHF5vPJNEa0rLbVDjMv7cN
 uwTXku4tvOWDJyufY8SgbxY6Ai9RQD6dP4HD6oFTfQXPCObtR3EkLcFcv
 6RcuzkQ8ka6aLpvjbINzzvweHhneYrAjjPPPRvjua58X33WQLzM+wDFbJ
 TpC9u64rWODQKqvK8CtPPRlVY7CYctxpOE/i0/MBOXwj6m+AUAx+o+BKD
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nH/QzUbt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/9] ice: enforce RTNL
 assumption of queue NAPI manipulation
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: 12 September 2025 18:36
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>; Kitszel, Prz=
emyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@int=
el.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 1/9] ice: enforce RTNL assumpt=
ion of queue NAPI manipulation
>
> Instead of making assumptions in comments move them into code.
> Be also more precise, RTNL must be locked only when there is NAPI, and we=
 have VSIs w/o NAPI that call ice_vsi_clear_napi_queues() during rmmod.
>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> CC:Larysa Zaremba <larysa.zaremba@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_lib.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
