Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBB4AD18E2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jun 2025 09:12:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9680E80D16;
	Mon,  9 Jun 2025 07:12:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zkqGotYXN43R; Mon,  9 Jun 2025 07:12:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F138280CDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749453170;
	bh=XZT8a2GCfFuEtS8U/aHjD/DGiHxwDEDJVEAVEb5YEBc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9WxEt1ZI1r7ii/+0SNmnMGSqy4Uj4jl+rD8Ksp/SBu2RpGEXSoBpBIHWw3Il0kj+8
	 FVUuWo/u5STs09adjmt3Qn/awdRDYV5bPq+JvhCTyuFdpg8+Wu7Yum0IUxNwwgEYgW
	 VHrqaTE77BtC8tmsZzpRJVwBCJa+06n5P3vs1qzJhgudmTLiXM7Yb/2m6tKrtCPEeT
	 WUAodBXouU5TT4+gFdFtcyHOglT/pJpNnL/RFQjkHdO0dqwpTbNloVvB5TqQAtJZoz
	 xbm/u76SlPVmAl3a5wMMl+xlaQ3nv2pywKEghnpSBuVvDhdUDRiwj8DN1xTxe5NMGd
	 zJj9+o8GiYmqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F138280CDB;
	Mon,  9 Jun 2025 07:12:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CF5D1F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 07:12:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2E9BD4157C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 07:12:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ve05oN2os6w0 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 07:12:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 78E68412FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78E68412FA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78E68412FA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 07:12:47 +0000 (UTC)
X-CSE-ConnectionGUID: l7NBw1fhTMOph/spgnn0gg==
X-CSE-MsgGUID: y1eyXNDTQ9unYQmYT832RQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11458"; a="50632558"
X-IronPort-AV: E=Sophos;i="6.16,221,1744095600"; d="scan'208";a="50632558"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 00:12:47 -0700
X-CSE-ConnectionGUID: ktYfSPwzQP63rPMOBNXWqQ==
X-CSE-MsgGUID: PNpcx0UESKKATHMqgJ7IzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,221,1744095600"; d="scan'208";a="146318262"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 00:12:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 9 Jun 2025 00:12:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 9 Jun 2025 00:12:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.69)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Mon, 9 Jun 2025 00:12:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MedJngOSVpWHP1xu2Svutkk5QZWq+yGIi9Qyd5vohdgNRDRJb1Qlo3sxXsbhDyPBuYEiJ2SK6R5WX0dJaOg2K5i6cAnm0lj4jPHR4UZscAUT6t5XsbNXGgaNfjVnKI2aPdll8JnRiu+ZmvFBjZa/Y8iM/PvsV+IGXVlmVG4UkDxtUAm+vYhU/9X0ZC1XpUGzyIeWYWDbMVnzvHtz0B4hE6aCiKwvXU9kz8BPbl5L4LHvsisgJIDYvZAfWsMZTMkYTRCOqJI130jWjkAjRYqCYfhSEg6bPYgha3vbz1xeyiTbH1U/1HRJp1qNbmUqAyJ+eU1R5s4BCGdE0m9wn32cgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XZT8a2GCfFuEtS8U/aHjD/DGiHxwDEDJVEAVEb5YEBc=;
 b=uEwsdlpbOKOb7Tq/wswVrUIKOW63w0ne5TCtYd56jZcB0Oy8LnIXb6qOX2yic/jIHNKaHFpJD83Z+mhGn/nJXsPyWtj58xknymsuFuYyAnuRvEbZkJrsfBvQugMMhvOPZm7DTs3hNhXHoFYbwXQMC4M2Mn4xOFRSVlms8iRIoHhx4WKLW2qSzU50hNoEBHoP5ZRFfD+WEUzxrutl5fkuqdYwEkrV+QlTQtjxQ/JxsDadnGJtH4EAms/HSXWEA1toJ6XcKJ16hFnRr5LODr/WtscQoUjPT8G7O/QQz5s7s9D0boFcbpbX3XIdfV5Uf+WuROpBfoy/kS+56oD9260UTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by PH0PR11MB4855.namprd11.prod.outlook.com (2603:10b6:510:41::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.32; Mon, 9 Jun
 2025 07:12:43 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%6]) with mapi id 15.20.8769.022; Mon, 9 Jun 2025
 07:12:43 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Robert Malz <robert.malz@canonical.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "sylwesterx.dziedziuch@intel.com" <sylwesterx.dziedziuch@intel.com>,
 "mateusz.palczewski@intel.com" <mateusz.palczewski@intel.com>, "Keller, Jacob
 E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v3 2/2] i40e: retry VFLR handling if
 there is ongoing VF reset
Thread-Index: AQHbyWG4UUel+I9jn0aq5aKqKjybL7P6iPDA
Date: Mon, 9 Jun 2025 07:12:43 +0000
Message-ID: <IA3PR11MB8985D1CF724D92AEFA5E0B2C8F6BA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250520083152.278979-1-robert.malz@canonical.com>
 <20250520083152.278979-3-robert.malz@canonical.com>
In-Reply-To: <20250520083152.278979-3-robert.malz@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|PH0PR11MB4855:EE_
x-ms-office365-filtering-correlation-id: 9136a487-8f8b-493b-9c66-08dda7250717
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?dsypHUrlOJDXZiZ3ISns1l6ROdoSMqG8ftH/DWKZRnbNj/f8k/0GDzxVEem3?=
 =?us-ascii?Q?sBPeVv8ahWbz4Ml50K7Z2ENlD1SwtYvYNUquTq+ZTCbwkAXQxar96LMCBRyV?=
 =?us-ascii?Q?rNmNGhVEwpt1hxqtd1TT1ikJun9SF927FSAik3xnMx1yd027e5G6eIwoi7wL?=
 =?us-ascii?Q?tS0cqEa0IOa+tD7duRu+VkGEbujfFeKqgPmp2keOoleHspY0eR6k2ISltti6?=
 =?us-ascii?Q?2+9iQeXHnJ/cnLkaHg8w+X/2RVKirs04zormkNocUkUh0c/+lhw7BBLJKznK?=
 =?us-ascii?Q?ho+2CRbDeQ1DBGs4tLssgXFsUJ/C3ccvKtNcZ4FQPQePwRIlvl1XjnaQEgg9?=
 =?us-ascii?Q?Jwx7koV2Zu5Ylu2YwoAkpyDuNCzsgi8Hcd5uQjdj2cxbcF+hQv43hJRXWhQK?=
 =?us-ascii?Q?fyFRUmSc6qhE/ATmstS36+4MRJt9PBr7FVJ1LIG+SFxhjK1O8EsisYClmFFj?=
 =?us-ascii?Q?6ELRclVk9JjNWoLac8a3hE+7nLnH8ex3oTDy9I3lVnxKGTCwdHAzKMe9yaUF?=
 =?us-ascii?Q?vxTrHhnG+YvwQBTXp/pLPDDjE+2cu3/VfCFC28nxc/J20DsjB+ke+lkikYdh?=
 =?us-ascii?Q?iB8Vq+I5pLRAMJmAdRmrnKgYAyasSCwb5AQ3gygJqiaGUac4REMFhM1MHQQ4?=
 =?us-ascii?Q?jP9tt5nfhfLQpSZOOJuryUbonLKas58VwQHZhflu2BIdZb3vEXC53H0mjoM9?=
 =?us-ascii?Q?rhzih5eUyC2tWIfU6nKKVeTQaDYxl14W8c1gxJkiopAYu/xCBm8yE7frX6A3?=
 =?us-ascii?Q?Jx94FUTl08U4h46XbABXEseJ5tlqhy4/TsaRNjSxULJ2qWHWSrqWl4piMNpN?=
 =?us-ascii?Q?sBMo+COiMcTuxPOI7BKeMBSWR+VAz6ohMAmFSCl6Dte8+r9cy+xhsA505PmP?=
 =?us-ascii?Q?ERz0HS/yhNvWryAupSTVRdpWP+vxJ5ATR9EtS7BXFpqfLGlbJAcsiwDBCQU4?=
 =?us-ascii?Q?VACUylVcbBOqlxzXzIAOXL0mxKpFU8yiQRSxy7qPQIjiSOZEM8fy0Ekw3rr5?=
 =?us-ascii?Q?fO2FVvaAW/SPPNhixXj/X1OqfU0rqnK0dQJDQYb3ZFP9E2BAPTsz5vZfiRHf?=
 =?us-ascii?Q?5uP3+m1gT0au32Tm+5X1LqIiBzhcd2Tje+S05zJ0VLNgMuxcp5l0Vxtf0mYI?=
 =?us-ascii?Q?NXXTDUNWOS0T+v0yK/o7fFg0hCenyn/ciQMl2qo+3LK7rePeq0XBK8x4JEoI?=
 =?us-ascii?Q?phrhYMuCzGv0NALLN850pI+7mlCmjH8hAzcDS8hNKKEoBbSckYq603l8HC5e?=
 =?us-ascii?Q?SARGotsU/hG9LLbwOms9FKXBvCiea3nF0/mCieRM3ATOos8gaO/vNJAIMv81?=
 =?us-ascii?Q?upzH1mFJeuaa8kEPvC/bVtk7j4sXivMx0fK12ifQcg5+28qr4m93oora4aW9?=
 =?us-ascii?Q?9b8kirEnXH4MA5Ydfc9+SoRrrkUavUy6NWclfraWTEQNjLZbaNodDLfCRUSc?=
 =?us-ascii?Q?kQXD11ZY1zrYdDKAu4hmXddqmvtxaNnvCJVYHVueaJT6k16yRdSEtEALSjAy?=
 =?us-ascii?Q?16/B/nPYCLgkf0k=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VMOUy/j2lWhcdudPcpaeqCBSMZDb5Y9bIvRjiqsAN8G9OtPpfA+fAmisII3U?=
 =?us-ascii?Q?Ysy0BlsQTS2vvgJ/Jo30G3vZo/SHKGUQ4ApPVNutqfoG/ZZE9OGWF1mpi55X?=
 =?us-ascii?Q?l5nHHqZrnidqiBJKVePBKQNKv/I1P5FBvW9vTTBEq10ivfECX8yqKsMdYjIk?=
 =?us-ascii?Q?LFtrvTWv/9op4LymM19ql4NnGCnXjloail0+b9jn5lKdhQUwsnbHPL6ADfKZ?=
 =?us-ascii?Q?XhjPm0qEHU47Ihul4ItNFb08O0uaREs7Da6PNynVPKtDIyaEUIVwDh634doI?=
 =?us-ascii?Q?ZeQZI9ZFCjnmuZoMDB87B3idRdayKbYzL/Kc1SUuUq97zVZbmgP43WZxk2Pj?=
 =?us-ascii?Q?b2q+znVVmOaJPrcn6pKEvFB3JGM35OceBWG1dpqyRMl0UmFnPIMiFSe6myxJ?=
 =?us-ascii?Q?2KAOOIM+OeBp+kqGqtsWFX6VN1rvFm2IQMZbbOmhwxJokAr5kXJbE3JMaXPC?=
 =?us-ascii?Q?kuPjwulvCFsIVcyTGou4VeDfjqdRFQ0eQVnncRxi9mQH8N5BIETgW8Wm6pNa?=
 =?us-ascii?Q?/6Uo041lxkokSwjF9o8VxCdGLBE7vJQZDPVlxo9b2hROdd50iXcBQD4XY7pY?=
 =?us-ascii?Q?YF08EuQ3yRZsZ3keckdcniilfPrScANObPAx7Vld8gKtOxUU5fCI5ZTwQ6tl?=
 =?us-ascii?Q?W0oqkx61TICnKIQOurhf65QvL/PvkATJkdGaC/eLPoU9QlajTgEBDgxfD0Gp?=
 =?us-ascii?Q?VfMrcXrpbbAlB5b/2WDg46oa6wOViAFWWIO/i7VS9T2i77eDRvgQSYQ051bX?=
 =?us-ascii?Q?gAWUxU9VsHyQTikSOzDiHPjbhI1M1thWkz7Cf0GbKS28XKbdz5X8Dl+ihZ4C?=
 =?us-ascii?Q?cSoyDhX7Wjknq4hT4k5fVMtTtGNxAZBjtbI8ep2cuiFWmDI0ahbPGKojpnPr?=
 =?us-ascii?Q?t2mueGiHCBFH+a1bvbAORDAG6P1DzdrEXnY+2ElRHKLKVqpUCRdqU0MQKP5G?=
 =?us-ascii?Q?nq+qH+drC4rmRszSZ0QxHZlja8GcvqE4ml6BnF7V066+qcPzJkf5tAQ3KTJ7?=
 =?us-ascii?Q?A3zPw7TZX7kEFSSZMugnWNHPIDB+0cNSzPe4D7bxkF9MT4PcErHbS/0C2bfx?=
 =?us-ascii?Q?lrM/GBEcEyQ6T/Zt62ZUaxU42nO6ZktCojMrOKWCO2tZ7g6CxaKr1mSha9gu?=
 =?us-ascii?Q?lhrP3Z1Dc1tGOdPuYfkHUB5aWn7gLmc8xr/zV0u4uhHZFMfT0kacz32UjEdn?=
 =?us-ascii?Q?rOMVucpq1Viyb95DDgygy1Nqf5Fx/zOd2uyLmdi9bxmnUsrtREomnk1eeJ1x?=
 =?us-ascii?Q?V764HFcWThz7zaMPnB2Tx2ALmIN6iAO0Xfx30TmrZL3rT3o1u5I6Af5fg4SU?=
 =?us-ascii?Q?KUkFQ+GOhHDuzShXdLdDLmyZiS4BYoYiCpFGZ1TBeb/iEmALuxxePTzuiAvr?=
 =?us-ascii?Q?wKn0mBECKF1SI8lukLa2ictfKaCRTvR24ZGgDCnpdL+btbW/WVJUbM3kePPY?=
 =?us-ascii?Q?gmAK3WPBD8m7nkITZRny+DK5UqszgkQ29piMTkvSEIUYuO0crcLY6ag0ukPG?=
 =?us-ascii?Q?P/r7Jtsv6gyoXV9Tj4wTpkqWRtF3hZjLmPsP1wprK/RFYai6qbVHlizdSOgK?=
 =?us-ascii?Q?hdhNykkdoIUM/FZ69/JdiXRbw+q+bQ+n94hfVGHEC29bOSiR4VZ1u++6c1+c?=
 =?us-ascii?Q?SA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9136a487-8f8b-493b-9c66-08dda7250717
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2025 07:12:43.0725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HotSB/AGqZIzAtDhNighOvuDW+JUYtrSmtwMKi5EaOt5/jVbZHlAMTP1qe7ADEJeL91OykJ8slCgh9WoViwSomaO51p8ogl2X70LxiWp+So=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4855
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749453167; x=1780989167;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iOKtg7uKEwn1EMzEtws6iJW7oH9zcuPgsxNdVFexWVc=;
 b=H0N2bq1CisOuUZ1Kf/Lm4cYGaumxnqMdClXj0IseeRpK7KyAwI+g2K4H
 Ft8mYfYO85xlS5Y+jIAPO59q6+RSdQ2+AL4pss1seR049fFdULRQ6D2fb
 xXCDm43tssxNwPoQnjW9+KUjh9O34RDFJROtVLdee9d3fgOk43h5jOcVI
 G/umRgfNc4lFTrB9gtVdrJET5dGnOUGseZu9U3DFLIyuFt2L7arpnOz0+
 O7tr+dwY3OVW8RX+06/nr07dbIoMhQwGPqHMWdap8JYYzMHgODSQs7VU5
 dv/0yFCpdFjWENk3Ayn4s2koRDA8Es05FyxI+BobuobcLvBgpM2uBqPrU
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=H0N2bq1C
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 2/2] i40e: retry VFLR handling if
 there is ongoing VF reset
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of R=
obert
> Malz
> Sent: Tuesday, May 20, 2025 10:32 AM
> To: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; Nguyen, Ant=
hony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; sylwesterx.dziedziuch@intel.com;
> mateusz.palczewski@intel.com; Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH v3 2/2] i40e: retry VFLR handling if th=
ere is
> ongoing VF reset
>=20
> When a VFLR interrupt is received during a VF reset initiated from a diff=
erent
> source, the VFLR may be not fully handled. This can leave the VF in an un=
defined
> state.
> To address this, set the I40E_VFLR_EVENT_PENDING bit again during VFLR
> handling if the reset is not yet complete. This ensures the driver will p=
roperly
> complete the VF reset in such scenarios.
>=20
> Fixes: 52424f974bc5 ("i40e: Fix VF hang when reset is triggered on anothe=
r VF")
> Signed-off-by: Robert Malz <robert.malz@canonical.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 22d5b1ec2289..88e6bef69342 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -4328,7 +4328,10 @@ int i40e_vc_process_vflr_event(struct i40e_pf *pf)
>  		reg =3D rd32(hw, I40E_GLGEN_VFLRSTAT(reg_idx));
>  		if (reg & BIT(bit_idx))
>  			/* i40e_reset_vf will clear the bit in GLGEN_VFLRSTAT */
> -			i40e_reset_vf(vf, true);
> +			if (!i40e_reset_vf(vf, true)) {
> +				/* At least one VF did not finish resetting, retry
> next time */
> +				set_bit(__I40E_VFLR_EVENT_PENDING, pf-
> >state);
> +			}
>  	}
>=20
>  	return 0;
> --
> 2.34.1


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


