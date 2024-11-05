Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E52C9BCD2A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 13:57:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2ECA40538;
	Tue,  5 Nov 2024 12:57:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3rEnqlQf_JPJ; Tue,  5 Nov 2024 12:57:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1AD840554
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730811474;
	bh=5rxe2rzl6fkhjaiKsY/DdYStc58TaCrIU1ooYttZXME=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ksj1hEP2L4+pwZIIgc02YoXxEwmx1MO3MKCloW39CsXBynmqYDpdkZndvOxwRoQqi
	 0PPGwy027V2Hab0+N7le2EcTHGCJH9KZT2utoU1Qv+e2fbM4emWwCNNPbZn1mdakPg
	 wLpJvCkOHGpN3NyjGuGJE0yTAkI+GLsbBk7VNKH3PDem2gYLLXViIPGkFePGMjRlr+
	 /4HkRoEHEi5OuJ8DfxeaQMWUXzs8ftYQ4SCYmoX8NM2H+iQE1A2uqGfJfQg8SKvDbo
	 7uNnJ7euW15w3Vd5EfipLc10EBrvpY1cibFKwVguik95AEXZkZ9c3a96zt8pj/KNR4
	 yYrmP2m7n16KA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1AD840554;
	Tue,  5 Nov 2024 12:57:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 56BF5723
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 12:57:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37DFD80EA1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 12:57:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c-i3ETSK561Z for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 12:57:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6F7F480E94
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F7F480E94
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F7F480E94
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 12:57:51 +0000 (UTC)
X-CSE-ConnectionGUID: au1lpai4SVS/OT1A4kzNNQ==
X-CSE-MsgGUID: y/UqU+AzQN+WSHsKozKP2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="41927515"
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="41927515"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 04:57:51 -0800
X-CSE-ConnectionGUID: rZ2GpmSNQVGxVUKWeVKPMg==
X-CSE-MsgGUID: mEzn+AJOQcqE5xdD728xpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="83950979"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 04:57:50 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 04:57:50 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 04:57:50 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 04:57:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pq8dYsvMFz6/2W7sbzkBYV3Uwcwgqx3FdOceuaEwmSO6KPX6hCuTcoN2G4WZFwBRXOtGCf4tWusZA0asTn5SaSyDTxpzgIlTduCiCTGVvoPv3OJsOZgvr58d1iLiFOVlECzVKurbvKDxnt3kKAC3tmVLNvesAFStzwmPxP+49KRk+Cfam4piMibTBIoN5sYtlkjhBF17jfQYmkPQiRzj/10etsa3o4HoeeEyEndU7cXkImmla0JARDWpuFnrTIM1UTIwNKtopg8rll3nRbd/uifOBDU8tmwHZXFovR3HR9/E2edgqYFsmkgToC5p4QSUp9tOQdPTP4bFwTFgfdoUMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5rxe2rzl6fkhjaiKsY/DdYStc58TaCrIU1ooYttZXME=;
 b=BrMWlh7pOVSYpjB0r7gLtikjC/Zm+UIo0CkFhJXC80kFqIArdic7jEocbRp94qg5IZNSiv0GxYGeco9aS9K1OGf9OJBp4awPcy7NKifsaGTtPQZXTOUQfMPabXpCLriiReVHdr8269kgrtscoAeeuXYHi6ScThIwdpsPXREafjsG6MZ58JaUhN7W93zb4Fy04X7829M3YuR5Gh9E+wRKKnxzOIn5p3GYU4RBJOnvQBww2osFPtMQ7JkyVLUewpM5PY8YLp82CG6rQV1z5oMRBUXM7ITUjvGKfWkNs8Fec5bBtSFqOKm/hvN0cdeYRoicJEMvBWTxNEUwlyj6Ga1QGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH7PR11MB6979.namprd11.prod.outlook.com (2603:10b6:510:207::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Tue, 5 Nov
 2024 12:57:47 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 12:57:47 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Knitter, Konrad" <konrad.knitter@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Knitter, Konrad" <konrad.knitter@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 2/3] devlink: add devl guard
Thread-Index: AQHbJTGsEuOtLlnL9k2+zX/gBgoDFbKouW2Q
Date: Tue, 5 Nov 2024 12:57:47 +0000
Message-ID: <CYYPR11MB842936AE2E3ADEBFF6F7CC35BD522@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241023100702.12606-1-konrad.knitter@intel.com>
 <20241023100702.12606-3-konrad.knitter@intel.com>
In-Reply-To: <20241023100702.12606-3-konrad.knitter@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH7PR11MB6979:EE_
x-ms-office365-filtering-correlation-id: c1b5ef9a-5083-463d-78ba-08dcfd9972bb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?HevcSm8wf7grKo+SMiaClzMs/GSivzCOptdXBnkpLG9FwOMFXdR88RmvwKWB?=
 =?us-ascii?Q?L1GQrp0wLdA+hJI8lUYLl7yIsszjId805R94Oxo/tZ7VH2Wyw0O3NQG92IB3?=
 =?us-ascii?Q?1Z7o1Dv4fHYV8mZa6DPXuHAPkCFitAojZ2O2S7pPf2EQB2ZtplZNhZo/UFXS?=
 =?us-ascii?Q?7FxlDjx95Ar9gXDO/1yZjT3KvWSTZIhmzO/5gkvghSu714Jl4hwlY4TCGMEQ?=
 =?us-ascii?Q?h6E5JxLyJaKWimM05mdNRyUJK7mJieguwZKRirzPMoBnDjKyBSZv4+I4w0QB?=
 =?us-ascii?Q?Dpa7pxNOyRjLmSBUcbJwjPIYo5u295F81OovZiAG5IVIoDVCD+cT6SzOmgM7?=
 =?us-ascii?Q?EsoCMviPKFKEkmhKZZk3X7tDN5MVeoD666QigDb2ndOIIL5VHgWweSkta/28?=
 =?us-ascii?Q?5E14WdyujfjDEMkBJ79BySpFpnri4AN3ota/WQOOS+PmfcKh6GaCQOBGxUI8?=
 =?us-ascii?Q?Db6P6ZGkTXEsG0Cuog2GymoHiRZ1d67juVi9noSI4nrG4Q6QQCt1fe91v85Y?=
 =?us-ascii?Q?UJ2ANuPF0Is1qM/VOTcfOjK3QN1qrwzxUjXIJgBn6mJe3W4VB7iyWfeHWosz?=
 =?us-ascii?Q?aqwZzQqwGoOUlt/3fHfjpgoQc4ftrBYcwelDklE0Y0O9SPr9lI12sqtgChOy?=
 =?us-ascii?Q?X2HMrwbzffusAu19ajiCow8xhzR2kikFaH5M55PT7ZMGW4GSS/ZmcGpYHmWC?=
 =?us-ascii?Q?u2RBh8mRDREV0JxJ3W4l0gvFVI+yOiFnbtnO+76oCYJ6TekIu3qhvrB2j3X+?=
 =?us-ascii?Q?452beu7FOJvy0rpUQ+b5n758nTjFtbVQ+sPuH70KSWoYI+tGJnQQvCMOMqrk?=
 =?us-ascii?Q?nn3PussThx1kA5mJUwFaT9Fq4nPLgpvdhmn2Y9E46ePD/oaXVazcZdSQ3qoe?=
 =?us-ascii?Q?s2qrRn2gqT2L5t7h6u97n+9lta0vcRH2BK6ga9elfK6MwoOufAG50Xj93E86?=
 =?us-ascii?Q?yf4oAIDu3mTeG5hNJSJxIwCbzcPoZ5XoVJPgbRmLc+5r6JT+Alja4ohnUc0k?=
 =?us-ascii?Q?A2Yd4rAYKvvJ1eeKBUrgWg02uUZwJqKkYScL82ZMdYWJega4w1DYIehl/iCL?=
 =?us-ascii?Q?HLxCS1eiJ0wo2SXFGhz5Bzp7w6DFVsSkEdZjaWxUEdNvureFEba84c4nCs+g?=
 =?us-ascii?Q?fr+INxrVKzC0XS854fgrUfM+/lzepvheJrwIGGX6bjYcYjFVH1iC3WDf25co?=
 =?us-ascii?Q?+hXl3ni3dB1/fOQdcEEO7BSkwwgxNbjsv+2v6HN9u/7a++HBhwzo7bZs+z4c?=
 =?us-ascii?Q?S4R1kAfs9C5iYj90LKeD4I78GgsWxUlFEgdCQOq9QKxcea0qXMW2aEdVp8MV?=
 =?us-ascii?Q?ivaYBfka177uGmLEJOS3oKUIMg0r+MOjm2mJ9a/CLYCHDGQ+CWlsTkB5YwDp?=
 =?us-ascii?Q?KWCvokk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8Eg5GncLGJxEoQDZ+fz96uvOYi5dOPZX3Uag1DFlqf0q13MLxljOtxoxkuTX?=
 =?us-ascii?Q?ewfx1SYAjji0bbDI4yeio/AtyZYAKxO/bJUviTHNO4/SsZEWQ1zvt7xnerxC?=
 =?us-ascii?Q?aMG55mZvG6s7ugnuI2IINAbdybQ0oMhmFvj5jgcsgkSMiFY8Odtjf+jWjO8z?=
 =?us-ascii?Q?+hpmfq550eKilpnZ8u3/NCn/Jwjp0hCpYX9yKRJJ+rtBM+hT6dqgik7yuphL?=
 =?us-ascii?Q?u7fM8PFyloqfFVJt3sddQQVrBEmt1SV1HOcTNEDmU5Tdw2qC3ZTgbelu3mwY?=
 =?us-ascii?Q?7zv+RP4mOfD6HuZMF6J6af2TB/WZWCXi1wMkWwjkaE0VJztQklvDu/3LkDMW?=
 =?us-ascii?Q?vDZwU06zxnUqbYtaHE/9dkpq+xRNr4FsddD1gVG4YcrUtRwrfULWzNDJ7d/c?=
 =?us-ascii?Q?+UMEt3AJbSOUFIPJ5vVkOSI/c9AFUbkR46Q0ZZSG+eLecj2N3/PMb/7EkjOQ?=
 =?us-ascii?Q?aMuPiCV5uyxnkcQ2A4NEkqu+bRbKsbrn/cNBgNS+HxAJxrlQb5xa3jC/ZKLX?=
 =?us-ascii?Q?bXE6IK/OMswq3i/qsG5rTzAwH/DL69DFiQaNCIzg40QKauCmVXX9Ko9+ErkI?=
 =?us-ascii?Q?mdZJ90Qnwg+wJOjd788si8NYOTcLhwFFCdywr3qyhvqSuWTglgpzVw1c/0bX?=
 =?us-ascii?Q?IgrDUHyoF0yQKI+h4g9I6M+FbFOEsBEGCe90rYpFS3mp6Pbny6/8YWeJgxkf?=
 =?us-ascii?Q?ig/ZgQdTd8E0Rpt1sz1mrDl89ES17Lzr8TL1Jzg1sBhitJ1YlAHI/upNQI3s?=
 =?us-ascii?Q?ixHvfH3BnwkZ+OyqNefPK0IZns3uhf+vaBkjcJOwCSps8TlMUMErAsceil07?=
 =?us-ascii?Q?UvfuyL1wEu39iAG/8Mb+hRlYXvgDVm/yqXfnDm9USB5agLXA6zG+HUVfypmc?=
 =?us-ascii?Q?QxxQ+pEpcSS4DmYyKuGCBewKkJo+Ei8TDe2rDqK2C0EL7TQ25hlSoei/B4Nd?=
 =?us-ascii?Q?QZ28ZH6hC5iVzuMwo2wuOBUGbS3pFDNv1dCg19D1kIxNXo+Z2KmGtEk06UvQ?=
 =?us-ascii?Q?zBIxBoZFkx17rDmP/Qf3aFwsW1rXudIg/gDKtw5gCI06Ru6gtGBvyr8CZKIa?=
 =?us-ascii?Q?UBbyPWjCrU4Ybluw6An+Z6bkB6z5oGm+QR4KcLDPt2HFnhsq3C7BO3gju4Xl?=
 =?us-ascii?Q?PbYTc1Cnp3ZjD8lIY3rVSAUZENePFve/luZPpnf1lgdlrnvHSFfn0wI1A6m0?=
 =?us-ascii?Q?26lXfmbSzUTN13RXR5GjOKaJmStSc8PClsi/kdLkqWEs/eBmZRMZGLI0eeFM?=
 =?us-ascii?Q?LJl2fO4z81A2yqNHkHiZSKXPpqBtMWpj5pIBTcnBFX2bblzBDFAIxnwNGFe8?=
 =?us-ascii?Q?7Ul2ocdnJWhwiP6d6st6VTc8xQ9W67kvfY1801t5vQSiRlaAX7BWWxuyg2fA?=
 =?us-ascii?Q?1zd7tKp4iETV+BneeaQrrHYduALQT3YCoiOp/ot18zOOQhXfDf0/d0BLWvr+?=
 =?us-ascii?Q?3N/O1X9zip4jM7W2l18j2S9OiI0V5fCYU87a6RcAC5npXZiYqJbyf1TACNOJ?=
 =?us-ascii?Q?ZJFK3++id0Sb3+OBiyDVIdE2AN6Kb+PwLtqCmds2NmzCrdrZZYgoziAYknc7?=
 =?us-ascii?Q?Hx6qjapazrixFLJ6YpQI9PPcbzM0PSBQeHl6SIekQw++kgwQdFaE6kURHdNq?=
 =?us-ascii?Q?wg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1b5ef9a-5083-463d-78ba-08dcfd9972bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2024 12:57:47.6248 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ze6yTEi2eA7ozfVjd6sonfYHTSKFClCWUS45b+5Ho8/KzwFx1nDecZqnNG7+6LUMyLrDbpkjeEemIo5XZn+Z0PGzEL106okzNHAX/SEwlScbIOiwt2QJPXaW2MoetKrA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6979
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730811472; x=1762347472;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=91mRhjIftVte1cWV473TIIge8GEKRmRL+BbZlqjDq9w=;
 b=WENJTYoWEBmGfQWiIxIZhs7mPX4MntYl8v7vvwfSqoN1YRvyE3X7PGcM
 /kNJHs+SnYpsyffGGCjCUB/2fCDdmHmyFq09yGYdGakhFQiFuCqOwCVvx
 /HBKe9nFHelQVTkpBigOEdu2jIILEvXE2i3cRDSRWLAfZzk2FsOv7CFq8
 XipxuCqKidVRLfuti6xZ6KN+XHcATF4Xrt7bpgGtSFK+PYX4XGBAMV7/b
 Ok9z/EVLc4OLmzkTxUZll/yI8sajE0xE988VER1aDLy194I5A1eHaPU5L
 6WzB45Sg+PR+a/JXQhYv1dEUj7gEB0SzT0ABlhPjuH7GSWLEm2KsAWcyq
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WENJTYoW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/3] devlink: add devl
 guard
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
onrad Knitter
> Sent: 23 October 2024 15:37
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; j=
iri@resnulli.us; davem@davemloft.net; edumazet@google.com; kuba@kernel.org;=
 pabeni@redhat.com; linux-kernel@vger.kernel.org; Nguyen, Anthony L <anthon=
y.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; =
Knitter, Konrad <konrad.knitter@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/3] devlink: add devl guar=
d
>
> Add devl guard for scoped_guard().
>
> Example usage:
>
> scoped_guard(devl, priv_to_devlink(pf)) {
> err =3D init_devlink(pf);
> 	if (err)
> 		return err;
> }
>
> Co-developed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Konrad Knitter <konrad.knitter@intel.com>
> ---
>  include/net/devlink.h | 1 +
>  1 file changed, 1 insertion(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

