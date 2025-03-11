Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 862A2A5BDC2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 11:24:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35E3040623;
	Tue, 11 Mar 2025 10:24:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VR0pWmTFb1Cf; Tue, 11 Mar 2025 10:24:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C7FE40638
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741688688;
	bh=8OfS0tFk2V71NcmwKF10PVQB0pXkQ05az8GRrCeIPbo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zp++pg41zrlRFCEVIXa/6MnqPLyJtvN8azIZXo+9zDJ5uwrxuJFsrvxBTrNGXnro5
	 DfuigrEMg2J8nHIAE9UoX7ctN6Z5BBkiXWE3UyiOp3YNkRPmXCJtebJ/cNKzPTDNLY
	 WMCxiVT14hREmPQD4AQLflnT07j2w+DFlRtyvuqogHTDqU9r5OKds4N4eglx8BFknE
	 FMnoUQDE2q1/FtxPqOAFgCCivIY3nZZPPE9axtc+MulOrpmWDVwXMs8LeYAFHc15jU
	 g9oh+bT4gtYOVQ659whcnE7c7osGPGiGKGfYSfTzKdoDEZOHoR0u68+9Xzzh0Bx7z5
	 hxtlMmsFrnrWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C7FE40638;
	Tue, 11 Mar 2025 10:24:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 15E941DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 10:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EDA2360B7B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 10:24:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KQ-DbTIXpJsY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 10:24:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2F1B960B72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F1B960B72
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F1B960B72
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 10:24:45 +0000 (UTC)
X-CSE-ConnectionGUID: 1HLSC4hlRcubBDLMql0yQg==
X-CSE-MsgGUID: p8AfnBFcQvOX0+Oqu2WKsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="52925383"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="52925383"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 03:24:45 -0700
X-CSE-ConnectionGUID: txjzo+3WTjq0lZ0W4p4jMQ==
X-CSE-MsgGUID: uwtWy47lQeuvAEO1gv1ENg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="120765910"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 03:24:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 03:24:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 03:24:43 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 03:24:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZeSKlCxI/P6Y3S3IGMMLCmuI8OGxn8C+9ds24bxtO7LEXhasq8+Wf3CVvc4ypdyCe326ulAyg81lVe2OwRtUyTAtocoSuwk473r1n4xAG07rJY652ssl+6NxZrYVIswh9gSxvrbRT0ZJTIhxC0WKPFVKXDpapZCEW09mdluha+bxsUOGYi5eJFTiapL9WrdUr6e+Grs6HVzNGiG+FJA5u8z6wlsl0I0kM6MQXmOUNQ/J48PbAv4DlBorsOwkZCkzHKiZnWjdVM48XA/wbNATQ62Bz4ZebSb9cil67srAsBKmFp4EwPuQXH4dtSdhyfQYrO0GBAYyULmudfIde9b81Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8OfS0tFk2V71NcmwKF10PVQB0pXkQ05az8GRrCeIPbo=;
 b=G4msG8cXz4cu4PlgFXJ+EnJj+sggHuXE9Zi1PQzXJlNQ2xfk0vmisuV35AJPWewdamrcgkdI2e12Ib2WKaC3reJJWRYJdn77vnZEqk64XxbuHQIV31nKMF/SJA1d7KlNqO4ccPddS7vnjYYcro8kyi676wxHSG23um9Xzk6U435xrrtnExkhC0A8tOlotBf4X/1cg31DAmGXfWrwfgqZJ5H8qCHryoX7gM9ldGB8PYXIE2yYVfGlxIjZbMF/v61yEVUsjjqV7nBoMHfe4wK2wcp/lPPq3aRvdYjZubwuBtvyS3rfPAur4Gq5XuspdtQ8dafAnfOKZ4mj2Qt6c2fN4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA1PR11MB6807.namprd11.prod.outlook.com (2603:10b6:806:24e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 10:24:41 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%6]) with mapi id 15.20.8489.025; Tue, 11 Mar 2025
 10:24:41 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Michal
 Swiatkowski" <michal.swiatkowski@linux.intel.com>, "Pacuszka, MateuszX"
 <mateuszx.pacuszka@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 2/6] ice: do not add
 LLDP-specific filter if not necessary
Thread-Index: AQHbfsAksFzyVztPJ0Sa/Q6qLfFfX7NQUc0AgB2QOOA=
Date: Tue, 11 Mar 2025 10:24:41 +0000
Message-ID: <SJ0PR11MB5865713C7AFA4CA620780E9D8FD12@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20250214085215.2846063-1-larysa.zaremba@intel.com>
 <20250214085215.2846063-3-larysa.zaremba@intel.com>
 <20250220145642.GZ1615191@kernel.org>
In-Reply-To: <20250220145642.GZ1615191@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA1PR11MB6807:EE_
x-ms-office365-filtering-correlation-id: adad3de3-be7a-46e0-d445-08dd6086ef37
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?d/jsJevUWy/6pdPerDRKkggb3IzrxWenTon4ymVETg3TN1lAwx95BSg5ealn?=
 =?us-ascii?Q?UIyobUJ7vHOAo99BaVRBqV0xKTbCHb3qHjUZ0nXphzTv5Xe0Jbo1lqHwymL/?=
 =?us-ascii?Q?5Ij+tU+5rP/WqkTi/cg6m4SY33ooCM2F7gDEA5nf1tXHCgulV4tq9SWCVBTQ?=
 =?us-ascii?Q?QZHmLd94faRSOYigryqeh7wHK86dqN1TLeNjZhfIBB5UhCdkMrONAKjR0CKa?=
 =?us-ascii?Q?BYtzBDmVbyZe5SSYrNlkPEu4K6iv/5xC+G0LMgBo70m5lSa3XBwtn8ViVUo9?=
 =?us-ascii?Q?HMRESezH1tZhC472EVSONRcTpa+b0SHiS+o7dmD/Xf0gLVQbjKqcMfKPwEnU?=
 =?us-ascii?Q?0MSUPUBpMGG2iiumb5c7DpJTQe56k1czgsokbaCeQsBIWg4GgZSZtBwKTjon?=
 =?us-ascii?Q?MMlGaF/JaNWpZv1svAp3JB8MpvIwTCeO8+dBYI35iUXoaaNKOFzIJGRLRhn8?=
 =?us-ascii?Q?6Gpr65mtQ5Ex7kaYCN5NiU5c8FkbGqjKjVm4GZYHkw2bpK5m47i2MKvquTj7?=
 =?us-ascii?Q?Uy9RBrCUH/oiZht4wspIIIMonwgzg0t9ZaNaWhb+uDodcuF0DtRV7j13vIX6?=
 =?us-ascii?Q?xNPiOxlP4Qs/NsOKEbDBT174PeLyno4Wc3tG6dTuwH6sIY8PE8rwet6Xq1L/?=
 =?us-ascii?Q?+wZXBQZ7mSwO57u6+8a912wtZP8lEu1j9rjW1+E6MxKzZQ6ppr1lExIMoAk1?=
 =?us-ascii?Q?BqRNbTDQ/++8Ly5fd4FKU5fWTn9li6nzpYxwuRtVp9kEuWnHog8wpy9DSNkh?=
 =?us-ascii?Q?s1PZq+7zAazjvJ91TctSXUtRcKcZfp6vV9Y776SYQwnpBV2s9Hhxx9Al3zjn?=
 =?us-ascii?Q?dzGZdi6BQ+BSTVDfgipXEcVoAsgz5hTfOLidXvS4FvaFDxEp8Fb+4Sp7sN9X?=
 =?us-ascii?Q?Xoj/Wi0QFE2npp8M8KveSRmvzuCxe7S5b8GgmZ/clh9fZHyPUf16wTQfIobb?=
 =?us-ascii?Q?u8kz4DTz7HsFX38iCvDIJXE2rUfuI5qaH6J3ON5Ef02OxeGid2vVdMt2SLzD?=
 =?us-ascii?Q?57C/00VpT3nBXrG2jjBEcxIUBKfIU5fIgtdjnR0biYDQpMhxcQ3SLZCZ5z7F?=
 =?us-ascii?Q?g87DP4kRgzzrqaVf8siii4qWZSHAPclIKDQRe0xaCbSPW5CCLY5hoObsEGWp?=
 =?us-ascii?Q?2BHIyk+d/nV+dVfXtS1MuP2ZHeLxgH3SFEZCIB+IqwIYieBiy/mXfLzvhQo3?=
 =?us-ascii?Q?EwhWHMiAXaBck97lA4mhyPNV2d7LiRTxyCp5drR7lEnoiGBPUOExkLJDq1N5?=
 =?us-ascii?Q?ZW48i5a8Nq3bNhll+kyK6z10vuoLUXIA9CW/v2yVqOHonqPCuCpsqI/Rv6sU?=
 =?us-ascii?Q?ZsfoF2Mu2mjZhJisvgjohPRIvT51gdgsE5ej/OWXw9gXPH2LdEmhwPtGk55p?=
 =?us-ascii?Q?YFw9A0Y57mVMCgqBS8xsa1rlFjQLAiRlS6CjZ9qINvGRPs9RNV+9vWKv6T51?=
 =?us-ascii?Q?MJqDbAY1HDhh6bm3nJBN0bCmo+uWxDAg?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gzKdvjFfGY/YhDVJiW992FTlBtro+KSp5jN7YD/e8BrIsxAbGyKueX7njFk3?=
 =?us-ascii?Q?+BWuCrVDlCVVHN5jiXM+jACyi1dCJR38+t16BSXo0xf5mqXXjAJ/AlcI/df4?=
 =?us-ascii?Q?XH3OxIm3F0t5K+/Ug5HtGBg5oI/uLhnmuW+HHvjHmwMp8G6Wz2PoU94wU6ak?=
 =?us-ascii?Q?PeZzH47jVPPodn1jzt3pYnbzJ6jEicH0YGBx+lTyodQy+hLwg23ZMFA4rGV7?=
 =?us-ascii?Q?3MjiKGVRQvVuq1DACUx0Hr8CEm+RJ9x+GbdnOY8ehEdhrDwZbLRt6RbPMvjh?=
 =?us-ascii?Q?UMi2apOCsDGqyp4PjseBAMzNepavlnDSiPvExJzlboBfmsLuEsnnT2oOnfp2?=
 =?us-ascii?Q?LTQectsYAROPiVpxtpyCvvQyPraUiISwRA24TfKnKD84OmW/blwkf6QFYIpW?=
 =?us-ascii?Q?2jgUir+qwkTVD+JZtu4gwZ8cp/Faqg5oRxvXIxLBaeDO9SQf/VOuOA7xSkJ2?=
 =?us-ascii?Q?f5IBxbc7nt0yb9LAZNlFl/paxnnN9mNnHSrlXOCONoZ6XnDUN/SBWno9URaM?=
 =?us-ascii?Q?ok3vlwXZE8HPjplWw+2WmYQT0YTLalozMbkoWQxfzgFQNh5/6wiZB/yl1d7y?=
 =?us-ascii?Q?EIaDwCHxTzlhsXg2STxMOZ+Su0EsECtywAb+Qnufr8ekun6Ovmw4U/dhOgHx?=
 =?us-ascii?Q?0fFPBL/pFxeD8Qpy1L5BQuCAPrGxa739ng7C6snPMvDe4VLo9TIRBt8yK4oH?=
 =?us-ascii?Q?BvlUoDuYeIbHzcyH7cWbmINp9Wxa6pZcDtof5mqKLYnRSpqyIZegyF3SbaYC?=
 =?us-ascii?Q?yszkq6tNfg8/O/GoTtk8hnt5WcP0LXpyROkvyo35LmadqHUDXAMYVMKuM+zp?=
 =?us-ascii?Q?fm/I/RN8uH2kFSbBOuJh/pR6ZJWe/LQ+eabf2kQjwA2LnI3CPXNJ36gwzo/0?=
 =?us-ascii?Q?uBksGOJ9/ptMEJjJ3j3sEFbz8VE7FNPVw+YHQ4C1fw6BkFBrKC/2oHLNSpLX?=
 =?us-ascii?Q?8DglIiWD7QMZzz5+TB6hrlEoqjpZgDZ6UEd9OSHrzn7wUtDTT2xesgSkdWzW?=
 =?us-ascii?Q?6xKooLmFNOPLKubGiK/H20yWYVzTYm86udKig+odLCy4Hp7Z0T0oCpCb/Nvm?=
 =?us-ascii?Q?Pz2saiGqaNeZvOB5SSOVRR0oMJNgC37a1bu4A3QzwofGzstmVSQGIbzTV2pX?=
 =?us-ascii?Q?962U85p7I+T90t2WTIDEp2TVYbctij09zK3ZDDPBeHmsDz3BYPm0EruEd2rW?=
 =?us-ascii?Q?gqeMg1aT3uI1TSAORH0vJ8qgtFDy3GX6KnmYZHflozyI+ft4nhwHHjDphuOW?=
 =?us-ascii?Q?XOheQ8KxklrVK+YJbhy0V5SxlNUZk7Uf86FU1/gePPfhFy9bVO3uKSe8nce3?=
 =?us-ascii?Q?H8c+VkQzW2D1tm2ezmCI50CXLiWrudA7+ULzTqZII+gNXHH7FnwQ/sEppLEa?=
 =?us-ascii?Q?FOfUVFa9RZYeKv47723HXPET6Cm4ayL8JD+RTUyco9t9V8gdhYRAvh1wLrsD?=
 =?us-ascii?Q?J2PgzWIh8CGUl5ug5+X9crFyHVpw1KaolN/vt29o5R1A6/LVonOz5T5lTmXD?=
 =?us-ascii?Q?RFY85PTuuViKnKU30soNlkzuqFI0WX2+5V2OVX2rNQgPHz98o5Iy35CIWWzO?=
 =?us-ascii?Q?wjfhAnk9h0uLjiWD0LChXpATn94nIBWHZ3K6i/k4hEkXUrc3aRxr2Sh4k/mr?=
 =?us-ascii?Q?iA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: adad3de3-be7a-46e0-d445-08dd6086ef37
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2025 10:24:41.1191 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rwt2PsKCAAISwCvt+PBRk8n2lKOJ5recK2j4Bpzi2i5kpJbTByBgBDkA+ycJMphkphe0PXyhUZ6i+T9loaPWJP8EqwmgJBM+mEpk40mJK4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6807
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741688686; x=1773224686;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8OfS0tFk2V71NcmwKF10PVQB0pXkQ05az8GRrCeIPbo=;
 b=gdVxY8M51EgRKXBZSO7LV+DJnQRCd37VX1vfNH00urGdyztKgRBCICHH
 JPwvcFOczisnmWNDkiPQmpdIOz7MW0Rfb3Jlp6jkPN3ow0g4g5ZjWRcpv
 Sjr59KBb4ZeLbgvyanLtYKeo3BvMuYef5YmCR+er4OpI5y45T0nb8Jznw
 e49bvi11Angbvk4WByLupoQIdyBTd2rTVHlOhxI18dJyuIh89kRD4Q0d0
 Hbppx4IQz++4A9ITQzkCJtv2rVM7aTB5oQrloZkWo8GzusN4lth1Jx2mw
 hU1y+nsTR+4jbIugyGgjLkKLNv4WA4ZJovp8ByfromT2iZDuoOQxtJQ52
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gdVxY8M5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/6] ice: do not add
 LLDP-specific filter if not necessary
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
> Simon Horman
> Sent: Thursday, February 20, 2025 3:57 PM
> To: Zaremba, Larysa <larysa.zaremba@intel.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Pacuszka, MateuszX
> <mateuszx.pacuszka@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/6] ice: do not add LL=
DP-
> specific filter if not necessary
>=20
> On Fri, Feb 14, 2025 at 09:50:36AM +0100, Larysa Zaremba wrote:
> > Commit 34295a3696fb ("ice: implement new LLDP filter command")
> > introduced the ability to use LLDP-specific filter that directs all
> > LLDP traffic to a single VSI. However, current goal is for all trusted
> > VFs to be able to see LLDP neighbors, which is impossible to do with
> > the special filter.
> >
> > Make using the generic filter the default choice and fall back to
> > special one only if a generic filter cannot be added. That way setups
> > with "NVMs where an already existent LLDP filter is blocking the
> > creation of a filter to allow LLDP packets" will still be able to
> > configure software Rx LLDP on PF only, while all other setups would be =
able
> to forward them to VFs too.
> >
> > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
>=20
> ...
>=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> > b/drivers/net/ethernet/intel/ice/ice_common.c
> > index aaa592ffd2d8..f2e51bacecf8 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_common.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> > @@ -6010,15 +6010,21 @@ bool ice_fw_supports_lldp_fltr_ctrl(struct

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


