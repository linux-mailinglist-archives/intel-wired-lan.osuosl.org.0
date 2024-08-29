Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 770BC964888
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 16:33:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24ABF409F4;
	Thu, 29 Aug 2024 14:33:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ohCgjAQnCOAt; Thu, 29 Aug 2024 14:33:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA3A540B67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724942008;
	bh=rzeCW0/pq6QswHxzjuG5N/KbfRLw5V9JV8OISbtVvKE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0g4VOyptT+AlBLdwnoIk0zqwL4RLZqlvDnzc0g2zP/UjjVpc8u8eL4Aj44P5TlJ/e
	 /cGJPXMKgxixD1PZndEcKFnxbAU8A4f/wamnlNHPMjyM2sEaEOwSjrej71invJWUfK
	 Cmhh80cAn0wp6D7tkZ73qpdqA7os3yNtIxh6dZoD9CFDczDZCtV+cGzIY7uH12sFz4
	 DEwZ9t9DGo5YQsXNL5dnOC20SLOedmetWmh6i5RO82HcKaR3aF3kUlOaEcV4X/fi7r
	 GfJN8gRKqCjxzeFvPaSLA8GBogAdjWGEI2KV5ASYg6PRMBAQCCIg4ZvHjLLt30TgOV
	 +f+XGUeSIYKYA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA3A540B67;
	Thu, 29 Aug 2024 14:33:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD4A41BF31A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 14:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9E1A60680
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 14:33:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id anRRMfpgC7zV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 14:33:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E5A4A6061E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5A4A6061E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E5A4A6061E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 14:33:24 +0000 (UTC)
X-CSE-ConnectionGUID: nDlMglMRRyGZ3VtTUvICmg==
X-CSE-MsgGUID: 4Fhp4yefQrKOQgc1BBAIIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="13281714"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="13281714"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:33:24 -0700
X-CSE-ConnectionGUID: lRXYAr1QSXWC+TwNcKbcaw==
X-CSE-MsgGUID: 2kDXnKlAQ9G3nj6HVyez1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="68411769"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 07:33:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 07:33:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 07:33:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 07:33:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 07:33:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rp8n7kC1ugDYrs6HzQ3wVy1s5sEeOQMR8n9YYN4FCntlLI9DZyq7GLgog4iH/jflyTKEJNU0x8dx6J3kB2UC1/swfOMMwJILVggTwYfubp5jYDxnS2ofCM6ZOUPmC5xWNLIydkAc3OlqfYdiJAou7a0CtiJQSFJMUEu+9EnMN1lyLPkg5aYt+5OVaOvlPRM2EpcuLGcGx8DL/8v0dJEvgOnLgJFbfQidvINdrGgrmDK/ShlOQTPZsy2X0ev2XoYzUP/Ym68n4EpaeAKiZJBjgYzccjGDXEWetmOxw2H8oxMzC0RjL2oZfwBbcgogT1ssOB2qz1ck76kjM6fYRu+XkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rzeCW0/pq6QswHxzjuG5N/KbfRLw5V9JV8OISbtVvKE=;
 b=GOj0VdlSu+Ykpq1r9slqkCUv00AHQR6KKevAAyEWP4d/yfpnTzYezXI6rgGAK2ojgWxO04iLPkJ7C+UCOiuaISSPD/7R6wAZs98p1qmMnKI8a8KqLanOsx7Lr98kP7hOhZWIt6IvaTykJ1qAYe5l4E5WCOr3aIseCzSiz4gF2AF5mPmFT+ZEEGuIjWftwoAcoeTFmoK5Yn9IAWeKkutOqVymWf0epTWxvKWqTc38s1xvP2zSmVsgWer1xPmvEwconRGu9dZG08rY04V82L2oSBgqQeBFxsaK+7VRHZqEhP1ejMy853R81bLjseC2ToGLp6+WAyNoEYpyzYc+bLGuIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH7PR11MB6450.namprd11.prod.outlook.com (2603:10b6:510:1f5::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.20; Thu, 29 Aug
 2024 14:33:19 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7897.027; Thu, 29 Aug 2024
 14:33:19 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Jiri
 Pirko" <jiri@resnulli.us>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 4/6] ice: add Tx hang
 devlink health reporter
Thread-Index: AQHa889l6cTaE7t4a06xWgqyXFGF6LI+WNpg
Date: Thu, 29 Aug 2024 14:33:19 +0000
Message-ID: <CYYPR11MB8429BA7B2A5169EA992F5BCFBD962@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240821133714.61417-1-przemyslaw.kitszel@intel.com>
 <20240821133714.61417-5-przemyslaw.kitszel@intel.com>
In-Reply-To: <20240821133714.61417-5-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH7PR11MB6450:EE_
x-ms-office365-filtering-correlation-id: cdb1c26f-598c-485b-5ed6-08dcc837871c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Nx2xzdkLFqs41BpsitJVjXw/pC5c617S2zrne5IKfMwqWWOhyo4uT/y2/U3m?=
 =?us-ascii?Q?kbXGID5DcouIXKQSAUlPRZ+T1tBPZtBG/2E5CQxpocH7OndYBsaRbOC5uIYy?=
 =?us-ascii?Q?gdF8TmpLZlc4lMC7BTiHdJvWPLv4e0SOZHfWPp768jjHtmqrxypruJHFh1Tq?=
 =?us-ascii?Q?3q/F+ZNJPmXbWOr9L4YV3yMlRgSiwyTOvhiaSxt+oBRS0r8DvV4MXIzec1S5?=
 =?us-ascii?Q?f3gR76DCms+jEl5msk3bLHC3GCHT0R+vZl7b3VSCt3Ya1hBRYLL5ScoP3cyO?=
 =?us-ascii?Q?PfjlysJv6HLDIaP5SsbdQmskKVtAhqBJQztYELWs5YSfdO/QUXFInKbpCLi+?=
 =?us-ascii?Q?dd9H+QdRD1fNmXrLbHEqJ+B5FY6Q8dADm9zMM36JSAcMyWYnccyVy5gc9vVL?=
 =?us-ascii?Q?FXeS3jjL/+aUQ2Vu8wslPkhFlbIxxne4YVTAIiwM9Mjd9RZ5UHwbMy/SSpXi?=
 =?us-ascii?Q?4FhRm4+/qtST4leoS+QkXBbNIC++vFfU2drKBXWVpLH/YIMRPxsCUoW3BBIX?=
 =?us-ascii?Q?RfxGKGK5ht35C6HW7halyE5jyfv284o/mVPGUHvzbJhHjb6RDfBDFoJwurNn?=
 =?us-ascii?Q?KqzzKtxDB0EUk/w6Rgnth42rruk1zrTDndrpeIpToi56Gmv1IoH90+bmNYtE?=
 =?us-ascii?Q?whyq8rkaAFawBeYnsoRDzwv8zjEAT84U6vicMhlDrau/EiurUWo4DeOamsoQ?=
 =?us-ascii?Q?RyOn7Z16/DPY+qTtAOy6jkaxUEN0z7dFKUrQe6u7yNoxhwe9knlcQTah+ARi?=
 =?us-ascii?Q?4ZJ95XrruilWcpD1hnDpK/Dgy50YqA6zz7R+8nkKimh0eWJ744FAotIn5/d/?=
 =?us-ascii?Q?XsaiIdg9lRNbMFa46Hg/816DEx+XkUw4AB+6YyEF5NFjq1AZj+io2xX4VhwK?=
 =?us-ascii?Q?VoaZQBso9LYU+8Ih7mEmpaa8rKxOZCJuBIVE/oHXOEyxSxTt9U4DVgSKnkIX?=
 =?us-ascii?Q?CdbJWF4dFLZaVrQTmuEBadCE4xuCdSUk59BmpFrSE1eIizjXv/qzUOp0VS7b?=
 =?us-ascii?Q?LxotuyPcDkb9xTixYU2jNXlG1wbRr7BSNba+hfKm1tpxvDes7xvVH/gp0YxD?=
 =?us-ascii?Q?/ksWU5ceCOC+uxtpj+26Dt0bvuF2I/+/avKq4o6/vlHXg/aLVR5/dqLDGgxf?=
 =?us-ascii?Q?4gfLkek2rMsCML5gP51by+9MpGGmU4AdPz4eWqcwKvmzWtXCJw6QcjcvZ8IR?=
 =?us-ascii?Q?Wmh8nzRkfZw+PZd1SihiA7Dg5N36rYhPou7RaKDsSw2xU+quKI20Yu/vN0P9?=
 =?us-ascii?Q?HDd9J7XgCRQLZKnsKT5aoyVqVzEJiv1APRSS3t3nqdddGrzXfr124CsjPMMM?=
 =?us-ascii?Q?jyxNfOnC+Mt3YN+zojIz0nVhFLLy7hkfjEKEihO3z52or0Jy22FDBfvkErFK?=
 =?us-ascii?Q?0NJBs7Sn2hMChLJ8mIqM1A3AyYSz/MJOEv3PiRI01a2iDbTwaA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?a2aAb5dns1L9GkdkzqelBr4cXha1BboU8N+1IBLLWrG/WCr5pp0iItohHDEL?=
 =?us-ascii?Q?dVzD+VhCnpYI5SDinSYoupH0cjFwbz1FOS3gIlKoXdkLr4NBYAsigWY4XKiR?=
 =?us-ascii?Q?pi+gS6qUmnsnqls0sGfsx8tRWDt10KWpcv05fFkDVSEwRnhzAqcJPL+PoSoR?=
 =?us-ascii?Q?S4Cw9nLS/SVAPXwFmsWVIZ+E7AB+YNj1MYGEg9r4l5fkveX2pu/puRUOseph?=
 =?us-ascii?Q?nQ+2G9PJPesm5g0a2prDrOhs23KdlOQfnk4PbptAT6MC4QSXfu407xmc0d3c?=
 =?us-ascii?Q?N4BaFG33MMnJTZVbwh2p2Y1CO7xZWYEx/1GW7fmS/KipFXvJ057i4qCGcjbs?=
 =?us-ascii?Q?GIdITgmuJOAnPoEzj+lPWZjuYPhIJJIFMNAlYQ7z9n7j6fVl/xHqd+eDC1rk?=
 =?us-ascii?Q?7qIaKB0f2wp+yW/DcBGIowDVVKTqKMp8nRhAL+inrgjxg/kWlk1vHXE6ag6c?=
 =?us-ascii?Q?cq+qYdGHoHT5I36TVC7SYyFXtID7fbhD/M3vjdgsggcv9VF4/tfGrwmlzM29?=
 =?us-ascii?Q?IYQfiPORsuyADEIPD0SapyU2GKzQnzaMtjcyy0SHDE8jNzCZANQEFdaUG03V?=
 =?us-ascii?Q?Ee4sw7pCCmM4Ppq+JXZCXCJIeLgmG86NfXb4DeW6PF5GqMet5Kus1m+KDddK?=
 =?us-ascii?Q?veZyL49kk2iduunFxLt3e+0VEiiG02WBog2l3p0Aeqqs65jn1e8bW1FZiwdp?=
 =?us-ascii?Q?fN84CbbpZzil1GNpE3ynB0dSkWgdHB0tqyfCx6AFeLGiyvs9IP2M1HHHP6ch?=
 =?us-ascii?Q?ZO3OktYo8yn6cUNMcq5hbOVoRj7CegOaJqiuBMjU6462NYco+CCpcdctR3t2?=
 =?us-ascii?Q?Ral7rHvXvbDZtVwjgqn3JZUDocSwLE5kUR1EYb/Jk8gk1jeUUQXKY/IRe+ti?=
 =?us-ascii?Q?rmxNykcc4+6efn/uhpI7mqyYT+Zq6gP++/1MnbSkh25Sw176j+VWJkjQMMYV?=
 =?us-ascii?Q?Ke3y4XfzCnklQ8Bvers0U8Cs4mt5Zu8PyG3m74s85ARgbSnttxXEwDz7SU18?=
 =?us-ascii?Q?1CK9eDhGkuvD+Vx8INlHlWDNOdkKVWfQeV1Cfciej8smEih3evUrpI8s9RQr?=
 =?us-ascii?Q?p6QuSS5b4tmy64pBTLCuYlgJQtFc+5bxmNpnXFoXd5aOEZPHAazsBP0v6r2Z?=
 =?us-ascii?Q?qxBRKzONDjSpm7UqcID8Dt0TJFclNHcnBPkQq1jrQ3NNZYg7HzhgYiV0LeQx?=
 =?us-ascii?Q?Fu2oBwuTJXsnoIGFMb00NOpyhwTQR78SwRdaVS7zyuTHXRTX0V7ycPOzVTKG?=
 =?us-ascii?Q?6duTFLJeFv/Ph9NqnxyYeMgtKc1p/ocrUmEiSAsOGkFf0R8cF+WitdIxf/Rj?=
 =?us-ascii?Q?zwopDfWiYK9qAWSmepgrRAmIsQJWpAkbFn+r0wjkeT64lIrGycL/gn/pyqC8?=
 =?us-ascii?Q?eHZ2Ivk16USwY1mjs8bIsIOsKJrOdo+Vdft6YNvSnATgmFpTXxdUyDWhPhox?=
 =?us-ascii?Q?Tb0wC1NJ7mTROciblcJ2/UiQyFE0buNjh/ZusMjWfCGGrb+DB9NtaY0/k3Ou?=
 =?us-ascii?Q?YOUCIqCQ+5JOmlO/mi0P4U+twfZWfc8g9pRaN6phBujZ0+HQHSLh/Yv+8AAl?=
 =?us-ascii?Q?40vl35zuQjNkhkrtpUPQ486ZmPyZSp7XhArD0QTht0rvSu5id/s18GRU07tQ?=
 =?us-ascii?Q?hA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdb1c26f-598c-485b-5ed6-08dcc837871c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2024 14:33:19.4828 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bfSnNWco5rL7HJbCc0m1gt0CoGlwP/s9PrDE4TDPEj+M+N2/KrTPdZ5rS1lpMtYt2n553o5dVlO3Wg2sS0j04uoehwD06o618hBRWedqoxm6YSYkCdhzvWERRlkJeuCI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6450
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724942005; x=1756478005;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=erBSd2hBvdwts9igT1/6Dm7/xVmrZZ7QS7/Ecugm/dk=;
 b=nRqQThy0CBC5rJSIsxKHRNKEAQYNIlZes+/E7bJbPAitSOFCWDxNRf3O
 Huj7YM84T0QM1qmAy44ww6KzJiWzZSrp4DnoWjMTAXX2lRnZaGLf44aFL
 hPaxuk+S88F2N2TmFFrzt//IJiJw1J7MHhf5qJ6DqEqEoemBVRb3OZYQ4
 EMTOEddRwxOHdfa4WjErB1D5gP8igDepMhp6+f22djbsLGZzPLFYhe/G9
 yGTiUea9MDUwAfFf2d1nyscEGy6ELR//FBVYP0b2LzJnWZld1gL2LkfQf
 A2NKU8XGxEk/GIRhvszMjdVRxZTc+FTOfaDoXrillB+BVz0DUZhdrkKUf
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nRqQThy0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 4/6] ice: add Tx hang
 devlink health reporter
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
Cc: "apw@canonical.com" <apw@canonical.com>,
 "willemb@google.com" <willemb@google.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>,
 "dwaipayanray1@gmail.com" <dwaipayanray1@gmail.com>, NEX SW NCIS OSDT
 ITP Upstreaming <nex.sw.ncis.osdt.itp.upstreaming@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "joe@perches.com" <joe@perches.com>,
 "lukas.bulwahn@gmail.com" <lukas.bulwahn@gmail.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 Paolo Abeni <pabeni@redhat.com>, "Bagnucki, Igor" <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: Wednesday, August 21, 2024 7:07 PM
> To: intel-wired-lan@lists.osuosl.org; Jiri Pirko <jiri@resnulli.us>; Nguy=
en, Anthony L <anthony.l.nguyen@intel.com>
> Cc: lukas.bulwahn@gmail.com; willemb@google.com; Drewek, Wojciech <wojcie=
ch.drewek@intel.com>; dwaipayanray1@gmail.com; netdev@vger.kernel.org; Polc=
hlopek, Mateusz <mateusz.polchlopek@intel.com>; Bagnucki, Igor <igor.bagnuc=
ki@intel.com>; joe@perches.com; Eric Dumazet <edumazet@google.com>; Kitszel=
, Przemyslaw <przemyslaw.kitszel@intel.com>; Jakub Kicinski <kuba@kernel.or=
g>; apw@canonical.com; NEX SW NCIS OSDT ITP Upstreaming <nex.sw.ncis.osdt.i=
tp.upstreaming@intel.com>; akpm@linux-foundation.org; Paolo Abeni <pabeni@r=
edhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 4/6] ice: add Tx hang devli=
nk health reporter
>
> Add Tx hang devlink health reporter, see struct ice_tx_hang_event to see =
what is reported.
>
> Subsequent commits will extend it by more info, for now it dumps descript=
ors with little metadata.
>
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   1 +
>  .../intel/ice/devlink/devlink_health.h        |  48 +++++
>  drivers/net/ethernet/intel/ice/ice.h          |   2 +
>  .../intel/ice/devlink/devlink_health.c        | 188 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  18 +-
>  5 files changed, 252 insertions(+), 5 deletions(-)  create mode 100644 d=
rivers/net/ethernet/intel/ice/devlink/devlink_health.h
>  create mode 100644 drivers/net/ethernet/intel/ice/devlink/devlink_health=
.c
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

