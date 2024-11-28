Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E06B9DB311
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Nov 2024 08:15:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E01840796;
	Thu, 28 Nov 2024 07:15:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xf0Trte644Vb; Thu, 28 Nov 2024 07:15:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF1A641992
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732778120;
	bh=TEcMI1Hg/IGr0OqiNPH1ZiBwiV4Ywre+Rise7LHMqms=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XQpluSLGI5MtC4jVmWZtPrid19pXZ7Q8DbF6s/OhkS2qWE6r+V8slVFk6fAQ9y3s8
	 NpiXcxCdr005rVsIpXHAS24GMoMnoNLS4AxE2vuYQtMk4RrFirnluuZ/VkfY4Gw2iW
	 PVTJbha/1QXk9hASVOJdBzQantntpbEjoDX1cHRiJSg8xwbuT2bvYnvrUDECMqZLmr
	 YyMXGt4p+0zO9Juy7f7pPyjisLFWYzLs+rI3poSKlYKiKTCmXMCGrled1tnDoKaHfi
	 7yktDhdIWvDl/S3px2C2gXLw6YbUrJDwq1iPh3bAVyIKtolzvJNwKIHz8X4RvTQSYY
	 zheoCIU2juzIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF1A641992;
	Thu, 28 Nov 2024 07:15:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4A9901DA8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Nov 2024 07:15:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4514C608B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Nov 2024 07:15:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4NKacjq_JDHw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Nov 2024 07:15:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2D2ED607A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D2ED607A4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D2ED607A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Nov 2024 07:15:16 +0000 (UTC)
X-CSE-ConnectionGUID: NtQk6SvWTVa8BvFT9mU8Ig==
X-CSE-MsgGUID: mVf6HJp8Sa2VC3rL5WTqmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="32860372"
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="32860372"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 23:15:16 -0800
X-CSE-ConnectionGUID: Q86YKTDyToqxRxuO2tnpLg==
X-CSE-MsgGUID: gEMzgYzMR1ye/hiXh7umxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="92550498"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 23:15:16 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 23:15:14 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 23:15:14 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 23:15:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gq5LG29GzTIFn5Di+7EJK5YJNunzPqNX2gspytgCct/w8MaTpRMatbwCz39dHsEA/of+iWUKu/luNHnWabkiv2p1bzRKraGSaY/6A6oIPBsUihebZGr4cESdzo3l99LYc0mh8veYmxOMYSA2yNMMn1aOxq0/UJPXnENVhla34n4/thQYf1+kRig4HfYAKQy977UWV44LF6EbTukmAro8F1ovX8B89v9UxJHIKPvQzc5NImE9eBtQIWthzV7xVil5QXiJKFUIxc5Sg6Gm3rEMrvPkZ79vt2s+cxwI0qZe+9tibtq4L/xaM7IGh+UMYQyFVgGM31ea9LU/pb+tlIH3oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TEcMI1Hg/IGr0OqiNPH1ZiBwiV4Ywre+Rise7LHMqms=;
 b=eS5gv0Na3QIdc63cqHPHWmpDA0HktR3PnyEAwZHdsbaxvibYWGnlIZmVaToam/x4uvfjJas3/cFDaffaFJPsoLibLkpLiz3zqvCUVjYwnJdGMTfEh1+6GJjVun283rvtpfzm/41WyqJIM8r8bnUO24mjJ0UBRfbfwCV+L91yo7/odJ10h5pt7nhbmTJAbK2dCjTnbh9VrOGUfyxVN6kiDPOL+PsFjcUorgHwO1GL9RhBjgiRFY6GJH++X7YimdtxnbUQ7wnBitOmM4OCT8VcG+9bIm6fQ+KMxShTfi37UT/1mslv68yGwY8/dWM6gUraJSeVo0ZBqLAMfSZnQ6D2Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA2PR11MB5051.namprd11.prod.outlook.com (2603:10b6:806:11f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.13; Thu, 28 Nov
 2024 07:15:12 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.8207.010; Thu, 28 Nov 2024
 07:15:12 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v4 iwl-net 1/4] ice: Fix E825
 initialization
Thread-Index: AQHbL37YU0vjpjpDcU2M/zlo06o+rrLMa0Cw
Date: Thu, 28 Nov 2024 07:15:12 +0000
Message-ID: <CYYPR11MB8429FFBCCD56571645705BA7BD292@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241105122916.1824568-1-grzegorz.nitka@intel.com>
 <20241105122916.1824568-2-grzegorz.nitka@intel.com>
In-Reply-To: <20241105122916.1824568-2-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA2PR11MB5051:EE_
x-ms-office365-filtering-correlation-id: 03ed5f45-c32b-48d1-2a49-08dd0f7c6631
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?tkqp/dK4koRSwjj5lXzsBiRzMk7OH8OHfODhE0gqqhuVwEXpuYBd2Q7O+G7j?=
 =?us-ascii?Q?T/rocPIfOBHNUHRK5Kx4kcsX863zkZ08zqhdtd25cRvll1f4j6j1iLw4zkRB?=
 =?us-ascii?Q?rH6Wv1a7CerRwimOGu7olY7pwQNiscdsnXxqLnRhjdxXawkh+YIUDUb+M2xA?=
 =?us-ascii?Q?jpV9Pri6h/DI/ZTb9DhV8vWSYbmAclFjuGoz6MyWR2XPQy4w2GklW+sRdQeV?=
 =?us-ascii?Q?C3EqHcKAukxjVcIitnqAyW5lh4mpXh6B6gL+mGfSiJ1Vxk/l68qwUiZaqtGE?=
 =?us-ascii?Q?EGqM8gKmcnLds+K8iorDmmGoLiVwSOYIKxQErJ5J/Fip78ogXMfmRII1X7uO?=
 =?us-ascii?Q?JUmngT2y2ks6qF/qdq8Eb16hbAIEWiDvbMXOenjMkv2RTBrnNY57DVVEME05?=
 =?us-ascii?Q?gKxWUamMvtXoLQED1v56rl8q1eo7wLjEIvntIOB0btT6JuZlGp1Z7gG3pjOn?=
 =?us-ascii?Q?qHQLV84jGBs/Of7rLkdFFASUbVfNwt78NfyrnlKdhkzsdvPLAyfyiUCdi9ek?=
 =?us-ascii?Q?8WDZzy0EPiOT6EbGODVkU/v5Mg1isjnd/72r60Juha8oJx8xTb/aNBeQfrqs?=
 =?us-ascii?Q?v21cwWM5MBVpslJPXfoTlpRRibhgGRRsqDEggBdDSmcWo4q3fYwv4jBxE2pO?=
 =?us-ascii?Q?FUO7+o4d8MKVTu3cbLRf6a8zZCGbyEHiwSuySXWQVuTb+s7e5Xsruh03VM5C?=
 =?us-ascii?Q?0RFLoL3NyNvKrJYyPl+hW1h5NyEFkr7SsjlysWkB0FNxtupjuy9oQ0yI11Wy?=
 =?us-ascii?Q?nmOLfdx2V8MQiZ1+Oui1Dn9x6ZJkBdOJJO/spkxanPj+q1MkqFeyot1roe0K?=
 =?us-ascii?Q?7YfMawyof3Q1zYe+DI+Ao5+AL2Iua5NZ/PeHDJIlu5zLwCBYG2uP8LEaTpEa?=
 =?us-ascii?Q?eIwyRNHaYUzmGHwkxHWIs9A2L2EyEaDYVkCtleyOXPyVI74n8fGWmOk2iHN5?=
 =?us-ascii?Q?5Up5GcmAYkNl4haPyG1wqDAtAK+Gq7irdsRs0gu+DJWdoUTfKvZC9AbTCV1g?=
 =?us-ascii?Q?t4/H0sDIaZUnMxKUHWb7lKEifI1AXKtJQtYEaFMaBvzWdtedzWQGlSMb3bsx?=
 =?us-ascii?Q?vMoTlbbvbx1kHQoa3RQXRXNYo0l39LD3E23RU+GTdrFUt/Rm1Z0ViVdHhx1+?=
 =?us-ascii?Q?0bF36goHW9jUX3wWLmYoEecppKBpRoJvzbS+KkxTVHS+L6bK/b4REdrctbUf?=
 =?us-ascii?Q?xzLovTjBbpDpXOOoj7y/GEAhx3BfpGdAjT9oNwNKE8UAEGQmt4Tq8ueR2SVz?=
 =?us-ascii?Q?ao+p0muupSh9MyXbFDh2bfXzaeNpDok4pybgoclwfuCjBLqYJxsD8584f3u3?=
 =?us-ascii?Q?HWH0vqwBMgL8AjlIxgOI0QsSPo12TU7TL3MYARRzTCUHVsnd3Bqq1bP3gift?=
 =?us-ascii?Q?w5l8litjNKi8VJEguUapurCQyhgZ3ugkQVM4IZQ7NS2C+pMRrA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?93D8shA2fvnH4q9WNWZtOcUB2C8a31UGQjiA5HLbky+z8h87qWipTApftVk1?=
 =?us-ascii?Q?6VL8FehCNgP9vlRsdHrOHzmDjbvyP3CorDETFBmEmUMkbKReyDVG3d9RuuE2?=
 =?us-ascii?Q?iEqBP0cfVAoB0uyaqDlAaTy4KLvoN5PvW/6I6IGoqOCgkFEkzNmNN8hk3Pav?=
 =?us-ascii?Q?Vr14QMmBqBgJ3402K6zZlA5+CAzDrKXNEAYdGtPZwgai7E69749RIM7i34NQ?=
 =?us-ascii?Q?b0qwt2GjmC4cLNVPm2idHXTTZjrf6VnjtGLCMPBTV7tJ5vfFYsSxZMgtT/Ti?=
 =?us-ascii?Q?5Ua1oPliGt78OUAYuKbC8eBcpPs+mk/7CLj9gbWsXWzGDsCN/ygqhjTbFPPf?=
 =?us-ascii?Q?kLVRe2Ucv79oB0b10eMU8HbBsYefCZm67Xauz5n9AvieBtnhlkY+dnQdFE1K?=
 =?us-ascii?Q?63XLqCXKPH7vqV3wcalhCSFR3sMnzlw7/vgGjEsAhadTUvb9fqqJnJtZrnxG?=
 =?us-ascii?Q?fN3GxlxNeavhnTdX6CffkTR702NyJJc5io0VJMPx8voSVNX1Rv0pxTNlmC8I?=
 =?us-ascii?Q?hf9ij5YqLe8aIUeXchVzT+59dxEXGcmRShHB1DNjuQuqfBA+dSsdG7K9CYbt?=
 =?us-ascii?Q?s2EHNM1eaWxKdwvHN4JLWlYeSIR5qia5uk+p6vE37ZWkPiERhYWCNTUpqsdV?=
 =?us-ascii?Q?fgYkts05pua36f0wOrYxxE50CNjocBOJoDANb87dIppQzHKQEK/IdbfAKk8N?=
 =?us-ascii?Q?udh6IKNewKkhG4rTshi6en5RWTNPX+xEhZPv2E7it6RWpwsce6epT3GvvnPw?=
 =?us-ascii?Q?jKV6LnDd85IjgjeigbbOk/m6ZeEaJWZuhgR8C2vgU4a5gh5xlVBhYhqBObFP?=
 =?us-ascii?Q?yJ+3hVSZQfCSqTMuJ/6JmBHj5YiEdgw105y+hUihx4EiSjK4+fodQK8b7lpq?=
 =?us-ascii?Q?v6HWpRrmAkFXvJ/vuVwwj3fdP+lopnWRNRZZwMD+Q9M9SRVyHA2I5ILtx2mv?=
 =?us-ascii?Q?A1j9DrhpUgN49RcXar+VZJcCdK4cY3/COtyo6SI0BrJ/We36Y+tNP3aWrwNg?=
 =?us-ascii?Q?c76q0AsBGRRn7/e9I6EEKHSXwsSMKm3a5RwQ43sZ1myvuuhBHpeZfOLMBx9v?=
 =?us-ascii?Q?QsJE18UBfLDhvZ83BF9/n1OmWx6bTA/IHkFBOAk69mOPlbZ7lJwy1NDYUiMX?=
 =?us-ascii?Q?4ED2yPRhNAKkqUW3JfsUpyukhAT/ZxVNfZJgbc6mZepj+pz8g5dOOJHkrxBu?=
 =?us-ascii?Q?6M3oGaraJdd53cyH3pY3hsE/r2Bo4q85pgc1WuTJR6V1y1NDU8qlLAzk3bJs?=
 =?us-ascii?Q?ajStNZOUuLXPgAAizcbH0hz7vToYcyoUvzH5o+TIcCYrl4bXWYb9jeRvMpt/?=
 =?us-ascii?Q?6tRkOnNWjH/YNJPsCBEFGzVoafXxT6oyXzXBu/MBQlh5yJdf4SR2HBGx9MpP?=
 =?us-ascii?Q?glzEPY5ZaKWlqaTCu//TUnTm8SK8X7fEO9qtujS9JNTQDrzRNR29I7qZzuaZ?=
 =?us-ascii?Q?Y2Qum/wfCjwR00SZkDIQRiR1ITUE22vnpwfp0L8Gv5H0j2iOgCIXMHso2jKJ?=
 =?us-ascii?Q?MfNhOn3ns1hYwPTmvykgzPJ1xjEamcJ5u2Tec8QZ0zwZ7oxk8CteJ+jhAWba?=
 =?us-ascii?Q?dg+4CwTcTfJl3FKG6ja7lEQLylryzkbdczyJzlMAyYp/yuaA3e+4WpO/YZ1T?=
 =?us-ascii?Q?uA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03ed5f45-c32b-48d1-2a49-08dd0f7c6631
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2024 07:15:12.0899 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i/WFP0PY/yuOBDRVPPyx3Mld4MdpV1978Gv62BF0UxE3i7MuGgHIzBJtog6UkAn1AFJuZ9iqSHmNNIO/7poJ4h7Q3khITjSy/H9y3Pis7tMd3oDjttu4Uc//uVx3ZAyD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5051
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732778118; x=1764314118;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SYPoNbEjPrzSUQcYs4Q7q8BYISiAbgUEoPzw7InZpKY=;
 b=KWLkpDd8ZzMhWyAJ/xTcE8tfs8ll4sR58rNSvc03w61TPLtXyo7Z1NI1
 Oxc2yT4yCt3b/laPrhI04Mp5+FYq8AIKrhRe31SiPT9Y6JQ9bxYH1mELW
 3g4ORe2CoaYLSHMp08y3uItTVo0qTAVvd9BUYV4W947JYgqdtJKYvzx7S
 64epdLgqo/tTR5sU7iTWvuYyk/YpPIAmGZNikAnP4xCovoNQ8AnC5S29E
 hH43yW3pxgZchroP+rYtyUWki8dn1XiOdMW8U6P/Ql28MWut7sQoqSLb3
 3t9g4kQ9JoZPYhYt+SCRkXOR9nEBLSaRWrNqGCd3DdVr0S1QEqD06vUqD
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KWLkpDd8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net 1/4] ice: Fix E825
 initialization
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: 05 November 2024 17:59
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony =
L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@int=
el.com>
> Subject: [Intel-wired-lan] [PATCH v4 iwl-net 1/4] ice: Fix E825 initializ=
ation
>
> From: Karol Kolacinski <karol.kolacinski@intel.com>
>
> Current implementation checks revision of all PHYs on all PFs, which is i=
ncorrect and may result in initialization failure. Check only the revision =
of the current PHY.
>
> Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products"=
)
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
> V1 -> V3: Removed net-next hunks,
>          add 'return' on PHY revision read failure
> V1 -> V2: Removed net-next hunks
>
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 22 +++++++++------------
>  1 file changed, 9 insertions(+), 13 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

