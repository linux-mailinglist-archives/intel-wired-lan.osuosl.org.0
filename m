Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D314A14FCA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2025 13:59:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE891412AC;
	Fri, 17 Jan 2025 12:59:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FjRp_q5LkMsS; Fri, 17 Jan 2025 12:59:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA723412AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737118747;
	bh=D4k8YMPi7CReel8Ri2UriUpWzVvQpE+/y6WHTsxdXA4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l1xmkRDVNFGcwCjWyBU55jdZxob7EwHvWuaN32wOiPr94wLM1YuINTZLn+skg8rf/
	 fH473EJxm8kMB84qHvhI8XV2hZjJqK/y+JxWdiu9fW2AzrIBm5dCcqqmtZ6c0CByxB
	 oe9Deezl1D+STL5RQSc6SS0n1IBYZ9RMxigjy8stB3sv0qmdB5fDJHHBJ1Vl/1hp5o
	 CpMtq7W+nhqJA0uOOCy+fRtmHKHITAJpgwXtSu3fAAKa26UMB8ukbrG7Snwvd6Cym1
	 lWI3MOblbNzqbOSyza4ss02Iy7Dzad/4SFCWkr8B/18oqIjbBjJs6kiEBqIgztmcMd
	 c4DYLZjfcL2mA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA723412AE;
	Fri, 17 Jan 2025 12:59:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D54D31
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 12:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2D624606FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 12:59:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1RjRwwFnoEAs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jan 2025 12:59:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 41A16606E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41A16606E9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 41A16606E9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 12:59:03 +0000 (UTC)
X-CSE-ConnectionGUID: 8ffsLps+QQmiUcbo7jUQWw==
X-CSE-MsgGUID: JegXvLSARxWhDlks04m9/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="48134739"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="48134739"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 04:59:03 -0800
X-CSE-ConnectionGUID: 1rSSBbJqR2WRMOc4ukPF0g==
X-CSE-MsgGUID: MnXu9npOTgWW9NMiWLW5aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="129059960"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 04:59:02 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 04:59:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 04:59:01 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 04:59:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R8cLhX8xoMoQkiqAKcFjfA1RBad+a5/ajErq+ANZOmwAmaZsbbzsNOXs1TFB9VTNW9gtgb27O6L6gdMeECHvEIkIMuJRwTgQyunxjzbQ48cxoIe94UyivN8VfAfTDQDrP7KOyjZqwJQhBl6rCx9TQ4Uq2sN0mrcvkdkx6MpJfI9fU3KaBMUfde+RV4H5bM2dm0ZhxBjPg6F1ST605ODBH9QrjHNq8GH0ZwDK4ZB2dVaBBl8t6lunKDjr2MiNhjw0VGdvGwGlEedDDyWXQUUMHEdYEJwTVr2IOeTHYtZnNbTts2OgrSlQw0pxY6EWde0kB9elFVydCA9djGyzqeiYJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D4k8YMPi7CReel8Ri2UriUpWzVvQpE+/y6WHTsxdXA4=;
 b=llFvke54Aw9Fue3c17/LGVF7nLCwojYSW3FJKiva4dJnZlUT4o0792uE6uk4Alf21wC5OQu1ZRiqT2xmcl6p5tqWYaBBq2U/GUdYJ9SvzmWGTgAE5fLDYHBfhLlv4fw9uzx+huF293l1YSD9ksz8jrDR1LNpaFbW2WMG5lVuMdFM7lDroQwCuY8Z+yH6BHbMUno15i8mApCDgUeHq7btlsj2iJCKdW+koloqEDmU0LIIvpkQmX0F0alfclx+0WDQqPFWxTEohZVmEexorF16j0WEv1eHmDfwm10RIKRhLU480xEBUntkCia1Hy8BZyEbMMT9H9FDgHmXD7DHfIgERg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19)
 by MW4PR11MB7152.namprd11.prod.outlook.com (2603:10b6:303:222::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.14; Fri, 17 Jan
 2025 12:58:18 +0000
Received: from DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c24a:5ab8:133d:cb04]) by DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c24a:5ab8:133d:cb04%7]) with mapi id 15.20.8356.010; Fri, 17 Jan 2025
 12:58:18 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "dan.carpenter@linaro.org"
 <dan.carpenter@linaro.org>, "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-next] ixgbe: Fix possible skb NULL pointer dereference
Thread-Index: AQHbZ14bWKYCX/t0rkaDA0Jnf2ITOrMZmT2AgAFVhfA=
Date: Fri, 17 Jan 2025 12:58:18 +0000
Message-ID: <DM6PR11MB46104CB6F3B87512417DB71AF31B2@DM6PR11MB4610.namprd11.prod.outlook.com>
References: <20250115145904.7023-1-piotr.kwapulinski@intel.com>
 <Z4k0M6v3Pl8ozDvK@boxer>
In-Reply-To: <Z4k0M6v3Pl8ozDvK@boxer>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4610:EE_|MW4PR11MB7152:EE_
x-ms-office365-filtering-correlation-id: 637781be-bed4-4b96-8894-08dd36f69d1d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?HjwOB/Zq4y4QSzAGu6c/3uU5dJVn164/amHdko7hdH3I1YDmHgSRs5/Va7Ek?=
 =?us-ascii?Q?21DC3m2yL3V3mCq6m0KG6zaXxkzS4bQOj5rtqgBJV+jFxF+sdPq7MiBYibS2?=
 =?us-ascii?Q?bBIvvcYTD55pungyidn9F8rVMn7qUJ97ECgVluKxhlfEAcX9ps5Y3t4pIlNq?=
 =?us-ascii?Q?QOsj3htAqYsjIVF/2FPOEDnfDhm1kh7XXUuQ0lmEDwv3WbqFTbb4unq0ipai?=
 =?us-ascii?Q?I/VVHz4qaWQ94DefrfbGiWw42vvYbHa/RPlxClP+uPBUWZ1grt9qw9V3HbRM?=
 =?us-ascii?Q?yFCBu9Tp5D9Q5v/PDXbpJhHZPrrQs0GLRghtzDHA2SpYaw403gHULzwhr//f?=
 =?us-ascii?Q?DxYaLXiq1Op/NjM+cCQRjlFXIoheTi8ICCva8r8y4rKlTwHiBasBpE/A6y4D?=
 =?us-ascii?Q?8RmMKS/u/T0vvcN8MEE/qn9uNR11b5rmBeXlZvL1cmy/CubZruEoa9xUg5W2?=
 =?us-ascii?Q?rde8sXFuE/8hGyoy30dIhiXMfCn68xYwNFb7QpkipCb+HNOuinWHNUW0QqvF?=
 =?us-ascii?Q?hkydnrxDbwdWqgLoht9zU2pcZQVUJPgndFDPEddrcV9BgEH/yo/V7dcFpeUH?=
 =?us-ascii?Q?AZceX3U3j9UMdCDmiUP+hAYtneun1Z8A1CZQa8UHq2CqDg6uV94eZd+xRHqq?=
 =?us-ascii?Q?7VcDe2lUGnHb6cuIOScplMghE4DYW7MxDg/I0uMRdZJigcEYt5p1Qsdnvy7b?=
 =?us-ascii?Q?CnljDDl1sutK8t1eju2mT5szU2O9F6sIHGvCtbtNkK91MS7dEJ14KqVFJ9E7?=
 =?us-ascii?Q?XaB6mn1rCcNagWS7+TV5pCfrAH0yQZJCRseUZuO6oDD0gtjxZupbX1q2i/t9?=
 =?us-ascii?Q?RGKymIWpXePDVjDIRKMaU4DWHuse8OJnj4JqcjZOaXt8P5cjbDUrNCHJWiB3?=
 =?us-ascii?Q?J/J9jl0yT8Y6SOUp7D4cH7SuGoIlGioC7+XkpftZ9tT/C4qbxArGcRf9+8a0?=
 =?us-ascii?Q?T46J+9IwFDcYve8gZ7LQSL8NiJO+d3CMHZdEYLgaKft6ny24NBV9E62H0Jf2?=
 =?us-ascii?Q?KC9wwAqElRRzfIiUh2kqIn8tEHR6n79mvQlNRJlcUlQu8YLCQg3XcuSlwJTo?=
 =?us-ascii?Q?kx9C2GW/PmWNM101cf+snIaUVWPy0dCVZhaetPNgUJQ14qTeNRkpNBCvBEug?=
 =?us-ascii?Q?SDvl5qaCtk/X59zhvn3/BtUPqXIQUIqh8z8h5aeYvqS+fFk+Bj4DywmCZf1R?=
 =?us-ascii?Q?lVXFLRThqQC1ElbALDMRnzqVJU12FE+mRL7hHGewxo9rhZDBrtp5OzoX4H87?=
 =?us-ascii?Q?QoWsOLsBdGMr8FidR4J0ED6/lsVC7s4TQVBSz/PFXR+LZS6NnuwAiM1P6mem?=
 =?us-ascii?Q?s+bShSLgf5fyb7bJ5jsIyK3js9ixkwccHhLxSspllxeBZZhcis6SiVqbniM5?=
 =?us-ascii?Q?A9wMnP5pHcO854+iADVRyYqmfuUMxr0mRnxfCF5HcXXShRxmGOolg7RXUV7O?=
 =?us-ascii?Q?4fdmhM6vrb7zBFkAfz5hW9aUf+26CiFU?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4610.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nzOd8z68u3ppsjoSvdP3NJKuFvDx6VIzdhkGNcY0J9pMEdwCgrSPJvNDWc/h?=
 =?us-ascii?Q?HQwcw9fThIQtPAWFScvtfFJM4PrkA93t/LyUo/RZ3SmHnuvMVjfFaWUP1NKY?=
 =?us-ascii?Q?LeD5TI2oqe8u6LHhzGe0s8B8+hEkj2v+HenIWBLiSDuQlXS1hV3hB7ksDfep?=
 =?us-ascii?Q?dVlkUAQXoIjBpPj9aPBt75Sa8h7AnpBfkpzUVZhVWTZQlLQJfJFtpoUVH5sn?=
 =?us-ascii?Q?y85yigC7Bf/+wmAw31y3VYr/cq6UvIn48y36ePWIk93MVb/JI9PUgvdnve4p?=
 =?us-ascii?Q?pmO2s5MBsgJ21W376qXtTUyy2rZ7xe4N/6A+khsjG3VlaXjq+jn1/aVtOLOh?=
 =?us-ascii?Q?uqaxGTXynMJUtUVIiM8g1DHyfIU5XD2j32IWWeURBGMc0jYmlZIzEPfYnGdZ?=
 =?us-ascii?Q?DVoFOEgtK1Q9u3BRpHoZjYVDOtcmt8Zx/DyUi6BzochZoQvHt3pYQZ4hHfJm?=
 =?us-ascii?Q?HN6yaIVS/eDqjGYAGhzPO7du81tPXEVtoN1EWhSUlvehr5UvDOp8vuMr7S9D?=
 =?us-ascii?Q?sBSOq2x7oCpGLkTIiGAPjHE87sL4JbwX5C9dQ7C9YjL5WNHnMt6LVi8K1X78?=
 =?us-ascii?Q?/UKKMhoN2bzDYsfWN+w1dmdbyz77R3dA/+GzDb4IRLOt/4KgwjkENoJYjZzR?=
 =?us-ascii?Q?LPUIh3aFhUOmrSMJwD60AL+RLclzueRKCdIPMKtwr1i3cmotoi6sQhHPUAEi?=
 =?us-ascii?Q?oufzLDGE7nm96jfMoj6R4KrdJ5x29+967l1tUpJWf9+2xNYmLCZ3VPros2uE?=
 =?us-ascii?Q?PXNKRZCw60X4N5aTj0aooTBgx1aXns4L29WIawtzrJZnryi3o89nDezdn/P2?=
 =?us-ascii?Q?WE4j6LcX5NXzXbNFyYfNmXAlvaxIkrbbGHBRFatt9jWTILasEEeTm6HZqzp1?=
 =?us-ascii?Q?8ye2aPruF4ZKll2+j6QjMtv7F1iMtLHpSAyI2UGJ/+OupT/f/Rx2Imp3wEwz?=
 =?us-ascii?Q?qlZo5cfHoBs30dsMl59icJZgUSBK1a5sIJrrr+qIwFSLwXddvbmUIbaHlOCh?=
 =?us-ascii?Q?8E5VwDmIQVSpoV8dDmXKKWaQFwiorIPUNx5C1C5HtLQvmRAAUZDPkPkedXI8?=
 =?us-ascii?Q?qluLskso5EynvtAqDGW+b9QWJZ7wokTJWpmqz9cw9quYOqYSpgyewB/z2j97?=
 =?us-ascii?Q?ggn8389K3pFM6jP+QjHlMOycC3Idg3bmk7oPBdDmTK37fkgd9G92uIhPoaPB?=
 =?us-ascii?Q?ACWI6kEO9+EE2I2B+EhH2k8yCiGB/c8bpohD0aSmGj4jHSyA58PhrPNdV0ok?=
 =?us-ascii?Q?pAya/QgAVeUK28swN+hBo5yHbW9zmkIVEzwR/XTHGabDfvyVKbdqdP464QGD?=
 =?us-ascii?Q?Dzc9SXAxvGVGcHAoBH02pUL4JflIr3BRc/00oz2AeA2vmsL5gt3sphi3nu9E?=
 =?us-ascii?Q?SrVMx0JeW2pObsllUivzd5Av9P1WvAEFnYq3LpKgLyE0+690tzJo3W616ymx?=
 =?us-ascii?Q?34X5CCoXaJVigxIvUVEPYzmxeL3MiQF8lthjQ6y2wUs1Dzre68WQn89ZGhaI?=
 =?us-ascii?Q?+zZsaE5rhESUru+PRVK/WGKKFsLsw0oqch8Ms4jimMeVCVzDHNeLnFg4y8S/?=
 =?us-ascii?Q?jxk1cvP/NZWXfPzRKq0RL7KMxc/Wv24clCMesxk7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4610.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 637781be-bed4-4b96-8894-08dd36f69d1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2025 12:58:18.1672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /b/2Wvv0nBPjSQHYyA+AN+cVUqrO7aFOPttBEGcVGsLRftlCr3UDfaR7nJgrggGVmcVDEJb39/e0epFPP9NOV3TUf706q47E7NEV1w+VApc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7152
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737118743; x=1768654743;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O7cHM0BonJ2DeJbSm8CKKo+fc5CJbIVNsz3CCKZ75PA=;
 b=fjD+dq2HHJ8D8D5r06hS0qw1Ri5VoiPGTbDOTko29MzsU0L5T7euoRJu
 bIL3iAvSCrKwxz8bbCNGaK6mfsXmRENueXYRdBg2iN3+5ciJJSIZuyB5F
 htKC54/rWmoCect13eC0bLEFNA2pV1MAW2BO+QD+Zmc+wD/gP46PEBVoN
 anS0+N99Klh65CvWL/sELdjkptQ7ogDWrN/xPrQcq+evHvj3JX8RY2jpK
 93FzhDmDezoBmI4pbv/CEPhr0N/twIPyCoZMQcDwA/qKwgiT0jTwN3mTF
 bn8u/WZIN9jaBFBwBI1/jDcMp5WX+cVjuApUWkuLts98HlNAE9FiMMsoE
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fjD+dq2H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: Fix possible skb NULL
 pointer dereference
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
>From: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>=20
>Sent: Thursday, January 16, 2025 5:31 PM
>To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; dan.carpente=
r@linaro.org; yuehaibing@huawei.com; Kitszel, Przemyslaw <przemyslaw.kitsze=
l@intel.com>
>Subject: Re: [PATCH iwl-next] ixgbe: Fix possible skb NULL pointer derefer=
ence
>
>On Wed, Jan 15, 2025 at 03:59:04PM +0100, Piotr Kwapulinski wrote:
>> Check both skb NULL pointer dereference and error in ixgbe_put_rx_buffer=
().
>
>Hi Piotr,
Hi Maciej,

>
>is this only theoretical or have you encountered any system panic? If so p=
lease include the splat so that reviewers will be able to understand the co=
ntext of the fix.
No kernel panic or stack trace.

>
>Generally after looking up the commit pointed by fixes tag it seems that w=
e got rid of IS_ERR(skb) logic and forgot to address this part of code.
Right.

>
>If that is correct then you should provide a better explanation in your co=
mmit message.
Will provide,
Thank you,
Piotr

>
>>=20
>> Fixes: c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in=20
>> ixgbe_run_xdp()")
>> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>> ---
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 9 +++++----
>>  1 file changed, 5 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c=20
>> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> index 7236f20..c682c3d 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> @@ -2098,14 +2098,14 @@ static struct ixgbe_rx_buffer=20
>> *ixgbe_get_rx_buffer(struct ixgbe_ring *rx_ring,
>> =20
>>  static void ixgbe_put_rx_buffer(struct ixgbe_ring *rx_ring,
>>  				struct ixgbe_rx_buffer *rx_buffer,
>> -				struct sk_buff *skb,
>> -				int rx_buffer_pgcnt)
>> +				struct sk_buff *skb, int rx_buffer_pgcnt,
>> +				int xdp_res)
>>  {
>>  	if (ixgbe_can_reuse_rx_page(rx_buffer, rx_buffer_pgcnt)) {
>>  		/* hand second half of page back to the ring */
>>  		ixgbe_reuse_rx_page(rx_ring, rx_buffer);
>>  	} else {
>> -		if (!IS_ERR(skb) && IXGBE_CB(skb)->dma =3D=3D rx_buffer->dma) {
>> +		if (skb && !xdp_res && IXGBE_CB(skb)->dma =3D=3D rx_buffer->dma) {
>>  			/* the page has been released from the ring */
>>  			IXGBE_CB(skb)->page_released =3D true;
>>  		} else {
>> @@ -2415,7 +2415,8 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vecto=
r *q_vector,
>>  			break;
>>  		}
>> =20
>> -		ixgbe_put_rx_buffer(rx_ring, rx_buffer, skb, rx_buffer_pgcnt);
>> +		ixgbe_put_rx_buffer(rx_ring, rx_buffer, skb, rx_buffer_pgcnt,
>> +				    xdp_res);
>>  		cleaned_count++;
>> =20
>>  		/* place incomplete frames back on ring for completion */
>> --
>> 2.43.0

