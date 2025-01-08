Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E431A05E92
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2025 15:29:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BFD080E05;
	Wed,  8 Jan 2025 14:29:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H1oKkp53v_Hn; Wed,  8 Jan 2025 14:29:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E136D80E63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736346578;
	bh=UBdT4xTWIHth8baZkbmTe2t/H75DvleXPMx8AOzUMhE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kPpa/6pJTGIuW7eMZP80MipPORl+3t5fOHzKI4YPinu6awah2pD3SR/P3ZEBqtrmk
	 hkPKV79QSklww7coACAnFz7t1wCVZwSorKK4cSVtn/aq5IHdK7opgVCy/VGLV5h8kW
	 CPejxIMDJkKKCfOr67Bf7qPjsNE71hXSr1tR+7q3rTgfmAvQx5+m6SaRZm2Y6docDQ
	 If81dWWqi1fSlUkFZpYK0rJ7dPixdkpF1ae/d3iV/yINlHe3WzIQGrz+QtVAVnplEM
	 SPrN2cIV0AttXSEBzTCf68u0XMbE+v2+IfbvuG2RUxc4SkfmSYjBaHzclTsBQQ2s0A
	 TujjelULTGASg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E136D80E63;
	Wed,  8 Jan 2025 14:29:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id AC7E41FF7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 14:29:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 86BCA8058E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 14:29:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NmmFnZ7pfh5V for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jan 2025 14:29:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A114E80DF9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A114E80DF9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A114E80DF9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 14:29:35 +0000 (UTC)
X-CSE-ConnectionGUID: /mxNAeRjTqi/Gu6L0BKhJQ==
X-CSE-MsgGUID: yY3zALVRSFaVspUj6nsx/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36474770"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="36474770"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:29:34 -0800
X-CSE-ConnectionGUID: 09KJ/TysTaia0P2L7frF3w==
X-CSE-MsgGUID: gPLH/GReRcmOIQjs/wi/Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102979876"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 06:29:35 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 06:29:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 06:29:34 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 06:29:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pnGNoh0lzzGxjYlWLKozcL6/EIsMIixsDNxhlsd8b2kRQPjobRb5610IfLLpRi1bZ8rIp5VvSHvFc6uOpreGXF+okq2OGeHnNapgA3K9Tc7tKcS1nXT/ZzR4PRf7k//yB1U3VPWiYKNpvIVeRPSPxBF/fk07lDN5PU033ClUG+uLlHFwOBud4WkwJX6VmdI7A16zGBomSYt70tae6NqBRqf6lM+A9N92EvZPwxaYOMSPCZdq6CM1Hx0RR7ObF5nTgnXY26a85EPZovE3GW0kNMMtrwx2dTEJ8CWHhpXTWLcPyv5P0+vCXuVwyqbtRrZlZHtXTDxpzmL8ZYgR7C/HFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UBdT4xTWIHth8baZkbmTe2t/H75DvleXPMx8AOzUMhE=;
 b=OGLV75hiB43eyV2aBBwFNgaHT3xdzefkDtMxqAYJdraKYpymN1hT5OTU8ZZ91LNuqOM3sYxrZ8NECgyOX/HcI9d3o543Jz071jUviWXs5idVOEvaneT8dw5+L+6a+/rcx7VVYlTt5mxzN0Jck2oCmUojss0bmoJKnhHgK0oDKyBBPzhbtlSTmEIz0IzGMJlWdwQl0RUru8d4XXkl8SJyte75EN3vs1BTkYw8V19+sC6Cb102sJ5ZYOCJiUyB9sOCLmOiG/2W9aBJZ5USvvP+K7j0GJojFyZrrMGWZr1CQOkbBCey1PqM0nN9xTOWmk4WvbgkFPnmnak3w+uG70R7yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19)
 by IA0PR11MB7356.namprd11.prod.outlook.com (2603:10b6:208:432::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Wed, 8 Jan
 2025 14:29:17 +0000
Received: from DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c24a:5ab8:133d:cb04]) by DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c24a:5ab8:133d:cb04%7]) with mapi id 15.20.8335.011; Wed, 8 Jan 2025
 14:29:17 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [bug report] ixgbe: Add link management support for E610 device
Thread-Index: AQHbYa3ic5k9pakc5keuYtUjLPJf8rMM7tPA
Date: Wed, 8 Jan 2025 14:29:17 +0000
Message-ID: <DM6PR11MB4610B342AB5BDE47263EE84CF3122@DM6PR11MB4610.namprd11.prod.outlook.com>
References: <e7d73b32-f12a-49d1-8b60-1ef83359ec13@stanley.mountain>
In-Reply-To: <e7d73b32-f12a-49d1-8b60-1ef83359ec13@stanley.mountain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4610:EE_|IA0PR11MB7356:EE_
x-ms-office365-filtering-correlation-id: b8c82c00-c445-4292-e180-08dd2ff0d587
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?7ZQ7aksD7SjKrXTM4fHbDCkOYWeCwt9oocoEPdEuhGxNTqOLM8K2m4GbHmpy?=
 =?us-ascii?Q?+Civm5NhHOzfAlvUJmehd3JmD28J+I7RI/k6K7YXKSEYp6yj2COIN3JVYbuo?=
 =?us-ascii?Q?x0mRQbqQxAp1E5TQLpKde2EHdmkSHhwChrzee6QFHHqzhUR9M9lDkjMQFu8h?=
 =?us-ascii?Q?yTsrJvX74LTfC5PuQhM3XPEMgzVfkrC47vXm/pSgkRxv3ujj+PyOtFCD+ufI?=
 =?us-ascii?Q?XOSgTNSS+VjsVD3usQfPwaWoZOosko5rVLVYJ/2jroR6fuAXi2tV1WgxXGmd?=
 =?us-ascii?Q?PGZaaqsFR8BvDCcSAaM0KZMewmlWBp13i0KfNPSfPQuNwJadAb/a1xnXgprN?=
 =?us-ascii?Q?J+OttuphClgP7CULZfZkxguk8HW/+GumjHLwMUKmUaIM9SClNVRhXE++elyx?=
 =?us-ascii?Q?EovZOORqGZNWzKJg+uOD2fKxnMPYTqZnQLUpvRlnY3BFDs4tCzhyCcr44KSS?=
 =?us-ascii?Q?sSdODKa7iRiG1Chk5m9dWexKNS7gKO4uBrrEVUxfd7kcQMeNUmV0g1KkFuIA?=
 =?us-ascii?Q?DYysb3XQzwu2x0HRyi76MiRSWf5RVYomciOFCHE50K+ctwg2qQK+F5qAUysO?=
 =?us-ascii?Q?wtoV15TKo31zumc5hsIzej/IZP0cnXxzXSkplrGDeWGJFldi734IGO8dvj+X?=
 =?us-ascii?Q?1MQVHb+m75PDm+YgcGw7ZcOZNxNlBReWuDRwXUG5S6avuzpJ1LCejs/Ib7m2?=
 =?us-ascii?Q?ZsrMDSS/uWb2o3fXwLDkDIq1S4vQT0y3e1rso1ZsrYQKvvUjLcQvbSOYJNIl?=
 =?us-ascii?Q?ZDawPpo5qw0jtlYBaikxB+R8YKdJDIdgdr/0JIhme6EpVltzxrksYl1Am7T/?=
 =?us-ascii?Q?PxfcNvxkd+OAFDLP2GzHMh6PQD6jwqembWxWtPcSwNNOs0AMg+CQgo9d8QG/?=
 =?us-ascii?Q?Nke766zQ5aeebc82aN8tP07vc7WcrvEVUisEakG8+U/XbTObc+k75fh/Up4e?=
 =?us-ascii?Q?zWl6qeXcHaYRYxUCnJpHTxGnDM+tWxeKdZPtHo173kqOVmILHm2nb5bBOAUD?=
 =?us-ascii?Q?GjSV1QxNIB5/w1JQkGxw96UeiIc90CoNYTbp7JwscW2V8ZJvqIRvkdEMDBb2?=
 =?us-ascii?Q?AHyL3aQPFkXrxX+S27I9Gu3izEGyBmejXK35KQ9YMJWsuUinzgsehYwn1GIA?=
 =?us-ascii?Q?MxcT7DzTwHFjWQo9mxAYTHZ2RAD5TK4oR39d4mMkimoW1EkZqtt+tfIwt5y+?=
 =?us-ascii?Q?bkze0al2t9SoRWWvSB+OtY2Alk0tYF3iCpuHDF/X9tZu7ZqAKzdA7OpBo+d3?=
 =?us-ascii?Q?asKyd50+OvrjMQV0UIfdiCeVSILQvbNYZCaSPuj6hrT9GVYhbuj1alzhEZXb?=
 =?us-ascii?Q?4pwQn9Ze1UtaFXFo0rL1gccy8gGMy8RscG77Gi30GzduieLlrudk/hh0eGLd?=
 =?us-ascii?Q?/IVg3lV9T0sXMl9tbEhgnGR5vT4zzMdWhRwwlJ9zglNgeN78+c+3PcLtjWFw?=
 =?us-ascii?Q?Y2jTTuIzfDAhzDl2JdwN2lmVpx1623yJ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4610.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?K+00zkYqUqyLO92AwbyLHg/SASB8el0eMwZEspRzlDCGQ8yZJPiwXVDXSZDY?=
 =?us-ascii?Q?HtOZEWiojWugdaYMGvcLL1tL53UuaCjVHzKnni/oCygJaMvSPB1zvlZZNG4w?=
 =?us-ascii?Q?dkilbr65wFYO2UXkWyaHHvy9fNkGVVSzpeT530aHFCOoaHHTyi8m+7NyOygf?=
 =?us-ascii?Q?GxF4TyKzjDZME4Tzam4C3qcotc7LZi5QjIOTb2voO7H2srjkCUfA4x9K4LXD?=
 =?us-ascii?Q?U5dgCAjWzFfP7D8Y8S3xCRwKXIIdHI/Gt+tlkm6w/ChHl//GFjL3wtta5DsW?=
 =?us-ascii?Q?W0TMFRS/MwIgz9vC93IYFh2ptoeDngKAbvEhX014bDOCWdV+Uk20JOIt+0Yc?=
 =?us-ascii?Q?rUNh+KyltlYUvaTNge3Zy++XQH5H+utCkZsTJGDCtdMLmF8rRyimwHj4I/7f?=
 =?us-ascii?Q?OIM1+mm+QEWFurBE6sugFD6T5V9sDbqlqvLl/MSNU0XP8k88e+ALcdb5oOJz?=
 =?us-ascii?Q?fkfOFw+tkO4oAPe3qBjhScCYZPR6uilfuHtONYkQf+UgxQHKPrS5TOXYCvFh?=
 =?us-ascii?Q?03XqcpSBuw0k/FRjVs3GzTy6wvS4ka5CJE8v1b6wgxLci29T7i29Oh+ACC6M?=
 =?us-ascii?Q?VV6IHex8DPmWl5Vu/Fdzqhe70A0XtRnVIuIww0UPu9JptuLGX+iHbEU8dcVO?=
 =?us-ascii?Q?WuE0TYBQ4yKYLW5udnYZbwp/EqMTnMzLalar8JPFkVAzYkTZ08kPnBMoLvG+?=
 =?us-ascii?Q?yCcydkD1WTXivIO+xFsNa9cQEqrPlnRsIDdjNDyjNJ23F4dN1HK8j41o2A6z?=
 =?us-ascii?Q?BVeKWghe8tHEG2G2Qt7oRISwVVwRrmN5V7nIYJfeuKjMaeshPiOsCtua/xNK?=
 =?us-ascii?Q?98Ps+QgbWh2QF8MaWCGN+BSckxwmVZ46B8PGVaAoeBoFbwMbx1ZiPsEVHLCF?=
 =?us-ascii?Q?R0rPa2z2unJd1klVeJv3CRrN267UwvR/Py9xawpvgV6DVaqz6YxcM1MKUB3r?=
 =?us-ascii?Q?kju1NMItGYmfsRyZdQX/ETOZpgLmdZkoM0mYNIZ6grS74tXG7ZtYJwWaGFFE?=
 =?us-ascii?Q?9s9V3UEiBg/9Skr46voxECdvILlq7moyZZS6uMXUv8VGLHT6ru0qwc+tFD1v?=
 =?us-ascii?Q?2XaV91SgkfXphlO1+g4wCN2aSxDqq3NUjhcKn/CXRv+TgWpWLZrjYzFAXo5/?=
 =?us-ascii?Q?Mzrx38MjtZUaz1oXsWVzk9FzVGBUGS8j85PlR6DLubs6VHDa5bi+53MZ9bRi?=
 =?us-ascii?Q?fGrxglMMA7jjj1L2db+WBlQGO+TX118tMOTDvmeoyAPyNcBx4i7Tg54Ybnfa?=
 =?us-ascii?Q?9f81WyMXufpDLum3OfvA52l2ZeOBEd5uery60YtCPMezI9XSFThmBx1a9O2+?=
 =?us-ascii?Q?G4ipiTWk2IIBag9Qx+VPvrzW+b2g04soNjFI1Rhj4EpEYxP2+ZL8KKdIo7MQ?=
 =?us-ascii?Q?Xu5XlM1QsMQtRUjgqdGcU478vzr1h5hCHmb+/eR+sKbn49E7lzhLt0dUONbU?=
 =?us-ascii?Q?Tsw+YBqD19xRMdLOp2DuVX2pYc22HqydFU+ujMao1VzSGE7MWtwkQP98hTag?=
 =?us-ascii?Q?rNqKAcRp3Uun43A7Y/kbuPL55jfHWZoeVhtSCBCN7uDuH7iLgWy5I49uD0TO?=
 =?us-ascii?Q?IPX79m0jOLWMca5hSs/OieCQZgofpD/VKpUoXzte?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4610.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8c82c00-c445-4292-e180-08dd2ff0d587
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2025 14:29:17.7252 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dn9K1swIHOvCagm2FqLdRw5td/ot6IbxMvqE5Hl+Z7CbadmbKRSq2gyrIHXVSGMdu8WGI6n6i5IVYPTgspG9Zsrk7vQ9HnMU7xGruZSBwW0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7356
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736346575; x=1767882575;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7yeh9oyBrJvzPtCd9TU4mz8Cm0G8grfSArxLbNdx3n8=;
 b=mPmi0FJ0o8lwqv+uwsRXneQHmiyVeeMeg0Vd0BPcdeAT7bDm0X8fytWQ
 9IWeIxLMKSIS2LZqASsxXwPLyzRolIKUDUxhHzq+M7pnBnvKQpsWLfyiu
 jqxb6KQpZn2PTd54ginO+5zQeCgoQpqv1U9gZPStyEnvWj1TnvY3a/agT
 0qVNh3wz3eAi2CiwdeHokeIfn+FEMg8UXVAD5ZKXWIQuMLFnxMce+p8hH
 a4+jdIe0qD5JBaA8ItALnjrB8fQUEYC0l4+NnTe6UiXcuypL5BBUf7aWi
 MGcHsYf0ndpdfokhYIQobN0FCw+tEI42xiLqJ4OhU6W9yKUcVCXcrG63+
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mPmi0FJ0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [bug report] ixgbe: Add link management
 support for E610 device
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

>-----Original Message-----
>From: Dan Carpenter <dan.carpenter@linaro.org>=20
>Sent: Wednesday, January 8, 2025 10:15 AM
>To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>Cc: intel-wired-lan@lists.osuosl.org
>Subject: [bug report] ixgbe: Add link management support for E610 device
>
>Hello Piotr Kwapulinski,
>
>Commit 23c0e5a16bcc ("ixgbe: Add link management support for E610
>device") from Dec 5, 2024 (linux-next), leads to the following Smatch stat=
ic checker warning:
>
>	drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:1125 ixgbe_is_media_cage_pr=
esent()
>	warn: signedness bug returning '(-95)'
>
>drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>    1103 static bool ixgbe_is_media_cage_present(struct ixgbe_hw *hw)
>                ^^^^
>    1104 {
>    1105         struct ixgbe_aci_cmd_get_link_topo *cmd;
>    1106         struct ixgbe_aci_desc desc;
>    1107=20
>    1108         cmd =3D &desc.params.get_link_topo;
>    1109=20
>    1110         ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_=
link_topo);
>    1111=20
>    1112         cmd->addr.topo_params.node_type_ctx =3D
>    1113                 FIELD_PREP(IXGBE_ACI_LINK_TOPO_NODE_CTX_M,
>    1114                            IXGBE_ACI_LINK_TOPO_NODE_CTX_PORT);
>    1115=20
>    1116         /* Set node type. */
>    1117         cmd->addr.topo_params.node_type_ctx |=3D
>    1118                 FIELD_PREP(IXGBE_ACI_LINK_TOPO_NODE_TYPE_M,
>    1119                            IXGBE_ACI_LINK_TOPO_NODE_TYPE_CAGE);
>    1120=20
>    1121         /* Node type cage can be used to determine if cage is pre=
sent. If AQC
>    1122          * returns error (ENOENT), then no cage present. If no ca=
ge present then
>                                   ^^^^^^
>
>    1123          * connection type is backplane or BASE-T.
>    1124          */
>--> 1125         return ixgbe_aci_get_netlist_node(hw, cmd, NULL, NULL);
>
>This is a bool function.  Based on the name, it should return true for pre=
sent and false for not but it does the reverse.  I don't know the code well=
 enough to say if the returns should be changed or the function name.
>
>The comment says that ixgbe_aci_get_netlist_node() returns -ENOENT but act=
ually the only error code it returns is -EOPNOTSUPP.
Hello Dan,
Will fix, thank you for catching this,
Piotr

>
>    1126 }
>
>regards,
>dan carpenter
