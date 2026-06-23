Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9LyIDOlVOmqB6QcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2026 11:46:17 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1F36B5E68
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2026 11:46:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=IEHYPjYg;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EAE978132E;
	Tue, 23 Jun 2026 09:46:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dJVLqY5FFzSy; Tue, 23 Jun 2026 09:46:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 465DA814C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782207974;
	bh=wyzAvgb50q9tXlQZkt1rTXcqMsE9v5r8FK7anXpcoQs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IEHYPjYgSOelRKZfC10Pp0dldJqLT6NfiMyWexyTJgSMYxRu5jVBGt3Rbd8tjH2Xq
	 BsKi8WjEaJRJKL6CN/eo0sk0QZLQK3UdH1aAbMM5UuYt94A37Scu202DxFrs73c6yf
	 1Llf+CRc4R63ysJgIOtokBm1hmVhGcNv/07UI3LXdA+6XOM+8VEhcbsxJttLWKFqwp
	 U9GTYvXINDzCSocmrHjAMmQuZyNHNn837CVQSoaOB4R5Q3VUwWDAUCUWINOqAouzUQ
	 OGdfYQPkb99i7GaPnWJs5fo7Ox6r5pEuu1iVKx0rjG1iI208a1P5A2Y7UW3qNhpMhJ
	 VJICh5D9J4JjA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 465DA814C0;
	Tue, 23 Jun 2026 09:46:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A3DD1157
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 09:46:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A15568132E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 09:46:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QB3LysUolurL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2026 09:46:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 625AB806B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 625AB806B4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 625AB806B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 09:46:10 +0000 (UTC)
X-CSE-ConnectionGUID: pAYwN43yQcOZPMIsXICg6A==
X-CSE-MsgGUID: ZBe5+fgFTRam8lxAzStzLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="82050868"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="82050868"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:46:10 -0700
X-CSE-ConnectionGUID: W/trr8FNRL6fY+5eE8W5LA==
X-CSE-MsgGUID: LqdR/YmQRFOZOWgMTMhtPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="245111013"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:46:10 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 02:46:10 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 23 Jun 2026 02:46:10 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.35) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 02:46:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JCEKMqD3w1ZPpZS5kOGNasMaDobOgKLIbrTmX326qJYpHD3EOZmlCmCusZKyl66W8gscOKsQW97m7a2DhVeHeH+7APmiQASbxT5S7+SwnJOJh1DzjV5qXSwol63Ci/1zTgH/iuNiYAa4GiJRsqgg5mfAbJYCmLTex++qinIBNC4VGZxaCnd8iK/0Ow4XHoWZVqK5zUHkwW9iJRdG+PY+y61FSBFVe7Rzl7L/6ALEnVB9ap+ayu6LjlvTp0UFllGBDsA00KDeVAri3BF6RYZenmhUAIwiAW8QlGM8WQq4/J01eKvLVw1yc3lxBbKV2028SUMXY5er4aibaiGxim6SmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wyzAvgb50q9tXlQZkt1rTXcqMsE9v5r8FK7anXpcoQs=;
 b=I1T+3jXimZZRAhyjhs9CfTffdEjlIFmK1lSdR5KX6/Uub1l4GE4gvWq9rlMM3F6tZzVOvQ8ZERNxcc2svKAChc91vdJ8g27XgZBo9wr+qFI64JPpqZXnEvOITgtaVtKn+Y+gWXMtPMVJNDL8yLn7oP3HnhKBRt9jIwvOjJ9lKeRbzglvrzB1KeGK07PR6ggp5neEzYOawkX5EhMhhWiUTThgQ006i2Qp/ck0+bEcY4pLBe4qGBaWwW2mKBMWlWGx4ZRiVzLwxScp8FZbO2O/zMuV3r2WJ3JECXnVPvmy6N+jKZXHdCaooXkNNNwPZelvQxdGJES5yDBPRmCqctG6wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by SJ5PPFE62D2CE76.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::85b) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.21; Tue, 23 Jun
 2026 09:46:01 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::246b:dc12:ea88:b19c]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::246b:dc12:ea88:b19c%4]) with mapi id 15.21.0159.007; Tue, 23 Jun 2026
 09:46:00 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Ding Meng <meng.ding@siemens.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Kiszka, Jan"
 <jan.kiszka@siemens.com>, "Bezdeka, Florian" <florian.bezdeka@siemens.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "wq.wang@siemens.com"
 <wq.wang@siemens.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] igc: Fix RX HW timestamp reporting
 when NET_RX_BUSY_POLL is disabled
Thread-Index: AQHdAlp6FSdMqx1O502VN7rhNWsvRrZL4pbw
Date: Tue, 23 Jun 2026 09:46:00 +0000
Message-ID: <BL1PR11MB59796B99C5A7709B07000D68F3EE2@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20260622041718.6106-1-meng.ding@siemens.com>
In-Reply-To: <20260622041718.6106-1-meng.ding@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|SJ5PPFE62D2CE76:EE_
x-ms-office365-filtering-correlation-id: cdf881f1-0757-4e63-0d3d-08ded10c3bf3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|7416014|376014|1800799024|921020|38070700021|18002099003|22082099003|11063799006|5023799004|56012099006|6133799003;
x-microsoft-antispam-message-info: ykCkkGS1uO5m1APbZdMQOyD8EzlMbf7TaGu+tev3Q9yjnS6zf/Ia5vgbsaNmJmJOUQqkpAsWUrQo6y2Se/ei00LftRHP3u6RzV4jUjZ1c+xNlJ9JcF3y0meRpedcOycNbaA6BrYbw1AmFwDlXlT/JOkq3ATtCTE6cz0CNmj9Ujuv4Uvl0lIKCJtE0dpPC1vZQQ4rGQ0IZlETlFbRicVhuwBiNfj3mY8F5H9t8LrdhRryMTU1b3QWoD/65IXRmX94zrLJQIB5y0INTwhRHDYmbSrG1NWr4VFRYokx1X2KA3hCFTKL9YJd8LK8RoAoTS0DQvAQUR9MbC/g/jDEd4A61FgwDM5Js+PyPp2PgJtzoMSThzzq0vPMjx4LeYFwMwgukahi04M2lR5sSyo+9jiuBBkEYTp5tEf1vETnOiWWgg8IOjVbqMDmYPbqh8BYd6Rlh/rNX6gPsLfuL4Lqn8EcxBcY5FA5pRJrDXKnU/ev7LXkd8wf+uY4LZ0z/53cLICavz/K90bLs7KBu5vdVatDVBG//51ZixCb1jSeSmjuwU0F90a+5Z0SOJxKHZfgdjlDLgNzdxpCkZzeoyJOfDftIW3sTlFE3mbI0xvRWwqJaAUgcChSVlSrp/VLp4/S8B6Ivg2HNQ/XLtuhwD+EPiNgMPrQMDTTo/aG6y8nTNkFYjT35Zp+0UN0bytJwg03xJpvDEebmKCtm01llZppa+9EIAOdPL/cMR3fEQ0fMjtg3eDSn2aPvszqw6QEPWKDydId
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(7416014)(376014)(1800799024)(921020)(38070700021)(18002099003)(22082099003)(11063799006)(5023799004)(56012099006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sbupd4kL2s5tX4UXq8motreAFK7oe6jM8pfBfRM6+5h7tdigufZZwhF1QbMX?=
 =?us-ascii?Q?UL39+h+B8J6vg3OcEO3CS3A/pmkEbok/A5bH1yH8Dstpe9VvGhowevnkMzok?=
 =?us-ascii?Q?qRHCdAGkLVSqkocBp1WIvX4r90TedM+j7A45neq9JEUToblgUA7LISzPRdUj?=
 =?us-ascii?Q?G9ZOdtNoeLP+cSGArO3ia5GEgNqjZfjmMnxM4Uo1WXsaBwOLeDRUNuVXPvmZ?=
 =?us-ascii?Q?Ki9ZX5fc+MaFdUhq22D6nr/GtwO7XFL12DfplhNm3MT2tOs2gUWls4fytfLk?=
 =?us-ascii?Q?IcByxqOsjPAPdRW1Rmhaj+zrHra8AeEy7gK+Ta5EYpJ40ah3BaQbJN5eytU2?=
 =?us-ascii?Q?mmSbSiXY/VblBgTEwV/0irzkt8aFcYcWd4drenbF6//lmXC4x56SC5I0+a3i?=
 =?us-ascii?Q?JzFCMD5NYdsbxZ5BOTTenvyPtDhK2D/GwsdVVxNDpUvWOzjE+o7Zr316/DGf?=
 =?us-ascii?Q?6raAnG/jxm81RgcTaD48yftnB6v0rKGIJFNd0SMdDsjzFBFiLI2kpSZljZtP?=
 =?us-ascii?Q?mIV1oBulNjhQLcZSWWX1ahExm5vB1sGjh8gATN45lDGHPG6NSaUL1EA4yIc8?=
 =?us-ascii?Q?21DXGtuTCVlAOMvJf5VNHKziNiuZLCTWEzfHtqpWOHHbQL9h/QXBC+8BMSWp?=
 =?us-ascii?Q?yEuB1adF9fCa2hqLUBVdgh0JfzWiLVdVwVkyIohu6GbJu7ji2H/DfaU3IMVH?=
 =?us-ascii?Q?sON0wHNdvTksK+yEJPxAhQi9A/+4ODxpI8STe39kyvpi5Y9KmIA9TCE2Q++s?=
 =?us-ascii?Q?6JPGtM/DmWMUZp+UvJ4WHSw3OhyIIuMoTkK+sQN/9sZWc24nAERfLS6r4phV?=
 =?us-ascii?Q?7itmAhOhPMN/s6+Z0zvNH/Fmd4lNi8RQudp5Hjq+CoofdlWeHBsVxNKeGoHC?=
 =?us-ascii?Q?cpg4zbEF4ngLhxq7AoWVUOSwGl3E7KsqxLzKtgpXwydGvg7BKl5/Hemn8ybc?=
 =?us-ascii?Q?A8ubUoHepH1ZMSzOmkpHwAa+j8/Bv9PsUyQS7N4++QHSTmwpyh/kyAkezhGC?=
 =?us-ascii?Q?A+/Sli8Zdh9cyeVu+NKyRzi91bHAAtIVrygtPEPj9hA2dzK6F5iuC3T6okgr?=
 =?us-ascii?Q?8QYL5vAeu+Mw5TXVYlYZwIgTFIwsYQPq6LdLIvCO9K0Su17qbsbdiDOV68eP?=
 =?us-ascii?Q?uglL7Pidx2vZGrBUp6zHIYdELYOGHO0VIkZIRFXDv4EjNXpKptHuW5Dnl5oE?=
 =?us-ascii?Q?ZQyl7JajiMhuHy8sEAY627fkBjkbu3dn3bh+D97ito2PJwYeeFLM20pmS3rY?=
 =?us-ascii?Q?AWQyEcpiouKziRJ1geY3R2iRWMHtc/S3zRRiWeqg1Lrte2+GRF2NhhmCTcOw?=
 =?us-ascii?Q?ruW6TRfnW6NEvDOMqIVjmQ7JbcwHknuXXPjOiiPffLa/yBdUWCxPsqt2us9o?=
 =?us-ascii?Q?ODmDavmfhKM6NbAgOevjEP02eKqWdqB6MGJnhPMb4nY0MuHbLEhJMJpqfA0f?=
 =?us-ascii?Q?Eat7UhloukZJ46qcJ51uFfKUSVBPIBrirvSu7bEiIi4PmaSNJ6y5PiBwC1zM?=
 =?us-ascii?Q?KK4ULchrQTjuNA/nfwRn1GPrzfFSZBqffByHzaeaAN3fXsqFGkFGCwzWetys?=
 =?us-ascii?Q?4JY2UP6WFIK/BR72rIfqnarhnvhoVKJxUQUCAodwJRqLfy6SfpPFbo7tMG1q?=
 =?us-ascii?Q?qp6XqXL33sP9iGJWPUcLE5c6O91p1CL65tM/UBHf2wUuWFJYHfLGwtrOJTJh?=
 =?us-ascii?Q?ZWx0jHuMQFhK1ieLQhtuVff9vABlgek5YhHzkcfYMCV5eFEsyI86QMOaoN2/?=
 =?us-ascii?Q?I+Y04/HKvQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: fdWnJKNokSkHQ4H/tyIwcskCKpAwOVk7BFtHmMxb8UEBO75E8LpEvrJSOTOVVeJyjlumI2lDi4ZE2ranqWepR+zo60EhGH0xecnSXWTmu98BnJgrB8Xpy0jl/iURXOHTkHMBqWuPlqNutKdbjR+woo2p8/QrWieyefkrXLfBi4M0+avRikG58aaqG8LFVZwZkr1nn6Qshi04PEMOLxfU5MB5/Z/x0kY/EA2HzRaJBlf1GpTQQycITQWETqUPuuC2vs2GnIXw8Hh6c3n9Ie9vUgG1JAgL0L9turgarH6iPyG6ZfiSd38TZ9QL8UxwxmylcoAIZ2d40bx9s3vhwZWUhQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdf881f1-0757-4e63-0d3d-08ded10c3bf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 09:46:00.8170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BHLwbikm1fNfxnkRBZ4/EmbH+mFTsOgwskqKffvM6a5E8TOybVeFx5Ih91d9BhPcBU65toPfDLuTo9S/stY/NfDjHUO2Q2eNV9Q5Poa73rQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFE62D2CE76
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782207971; x=1813743971;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hZdGjvbccixmhTAdrrjr6sa8OmV5WA/6bxjvEqv1Sis=;
 b=FpfO9EjtJF752+eMdRtMcWPquiY1kveeMg0jmIKk3PTY4lMQn9qhAhcX
 jaH+70R+TcjVqjPqeupC2KPpTC2T077LdtgZcENHEBrzxxcf66/YpFvZf
 QJHrTDv6fPsfrh341gY7SRtbr22khmCQWVMr8O0XAdyi5wkz+xH0H28dg
 vHkIIuMgxhqlSqQUIPCOdjIqNmRcSlI1MACEgsrqygm18l/HaXnxTRzW0
 jgmbE0GVvxgX62/FLCJLoB5336zVqEGHdoPqnQuM2jQDb/qzaSVgin6jj
 +qqQfnVPVJYnO/aowSW4/LDvkoZwUt7OPDY5Mv8DyMY4hI5+NStH9yps3
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FpfO9Ejt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] igc: Fix RX HW timestamp
 reporting when NET_RX_BUSY_POLL is disabled
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:meng.ding@siemens.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jan.kiszka@siemens.com,m:florian.bezdeka@siemens.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:wq.wang@siemens.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4B1F36B5E68

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Di=
ng Meng via Intel-wired-lan
>Sent: Monday, June 22, 2026 6:13 AM
>To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <p=
rzemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch; davem@davemloft.net; e=
dumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Kiszka, Jan <jan.ki=
szka@siemens.com>; Bezdeka, Florian <florian.bezdeka@siemens.com>
>Cc: intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org; netdev=
@vger.kernel.org; meng.ding@siemens.com; wq.wang@siemens.com
>Subject: [Intel-wired-lan] [PATCH net] igc: Fix RX HW timestamp reporting =
when NET_RX_BUSY_POLL is disabled
>
>When CONFIG_NET_RX_BUSY_POLL is deactivated, fetching RX HW timestamps fro=
m the NIC no longer works as expected.
>
>This occurs because disabling CONFIG_NET_RX_BUSY_POLL disables the SKB NAP=
I mapping in __skb_mark_napi_id(). Consequently, get_timestamp() fails to p=
erform its driver lookup, and the igc driver's struct net_device_ops::ndo_g=
et_tstamp is never invoked.
>
>Instead, get_timestamp() falls back to use shhwtstamps(skb)->hwtstamp, a f=
ield that the driver has not populated.
>
>Fix this by populating the hwtstamp field with the correct timestamp in th=
e default timer when CONFIG_NET_RX_BUSY_POLL is disabled.
>
>Fixes: 069b142f5819 ("igc: Add support for PTP .getcyclesx64()")
>Co-developed-by: Florian Bezdeka <florian.bezdeka@siemens.com>
>Signed-off-by: Florian Bezdeka <florian.bezdeka@siemens.com>
>Signed-off-by: Ding Meng <meng.ding@siemens.com>
>---
> drivers/net/ethernet/intel/igc/igc_main.c | 38 ++++++++++++++++-------
> 1 file changed, 26 insertions(+), 12 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ether=
net/intel/igc/igc_main.c
>index 8ac16808023..1da8d7aa76d 100644
>--- a/drivers/net/ethernet/intel/igc/igc_main.c
>+++ b/drivers/net/ethernet/intel/igc/igc_main.c
>@@ -1992,7 +1992,26 @@ static struct sk_buff *igc_build_skb(struct igc_rin=
g *rx_ring,
> 	return skb;
> }
>=20
>-static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
>+static void igc_construct_skb_timestamps(struct igc_adapter *adapter,
>+					 struct sk_buff *skb,
>+					 struct igc_xdp_buff *ctx)
>+{
>+	if (!ctx->rx_ts)
>+		return;
>+#ifdef CONFIG_NET_RX_BUSY_POLL
>+	skb_shinfo(skb)->tx_flags |=3D SKBTX_HW_TSTAMP_NETDEV;
>+	skb_hwtstamps(skb)->netdev_data =3D ctx->rx_ts; #else
>+	struct igc_inline_rx_tstamps *tstamps;
Please move at the top of the function and add:
Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com

>+
>+	tstamps =3D ctx->rx_ts;
>+	skb_hwtstamps(skb)->hwtstamp =3D igc_ptp_rx_pktstamp(adapter,
>+							   tstamps->timer0);
>+#endif
>+}
>+
>+static struct sk_buff *igc_construct_skb(struct igc_adapter *adapter,
>+					 struct igc_ring *rx_ring,
> 					 struct igc_rx_buffer *rx_buffer,
> 					 struct igc_xdp_buff *ctx)
> {
>@@ -2013,10 +2032,7 @@ static struct sk_buff *igc_construct_skb(struct igc=
_ring *rx_ring,
> 	if (unlikely(!skb))
> 		return NULL;
>=20
>-	if (ctx->rx_ts) {
>-		skb_shinfo(skb)->tx_flags |=3D SKBTX_HW_TSTAMP_NETDEV;
>-		skb_hwtstamps(skb)->netdev_data =3D ctx->rx_ts;
>-	}
>+	igc_construct_skb_timestamps(adapter, skb, ctx);
>=20
> 	/* Determine available headroom for copy */
> 	headlen =3D size;
>@@ -2686,7 +2702,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_v=
ector, const int budget)
> 		else if (ring_uses_build_skb(rx_ring))
> 			skb =3D igc_build_skb(rx_ring, rx_buffer, &ctx.xdp);
> 		else
>-			skb =3D igc_construct_skb(rx_ring, rx_buffer, &ctx);
>+			skb =3D igc_construct_skb(adapter, rx_ring, rx_buffer, &ctx);
>=20
> 		/* exit if we failed to retrieve a buffer */
> 		if (!xdp_res && !skb) {
>@@ -2738,7 +2754,8 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_v=
ector, const int budget)
> 	return total_packets;
> }
>=20
>-static struct sk_buff *igc_construct_skb_zc(struct igc_ring *ring,
>+static struct sk_buff *igc_construct_skb_zc(struct igc_adapter *adapter,
>+					    struct igc_ring *ring,
> 					    struct igc_xdp_buff *ctx)
> {
> 	struct xdp_buff *xdp =3D &ctx->xdp;
>@@ -2760,10 +2777,7 @@ static struct sk_buff *igc_construct_skb_zc(struct =
igc_ring *ring,
> 		__skb_pull(skb, metasize);
> 	}
>=20
>-	if (ctx->rx_ts) {
>-		skb_shinfo(skb)->tx_flags |=3D SKBTX_HW_TSTAMP_NETDEV;
>-		skb_hwtstamps(skb)->netdev_data =3D ctx->rx_ts;
>-	}
>+	igc_construct_skb_timestamps(adapter, skb, ctx);
>=20
> 	return skb;
> }
>@@ -2775,7 +2789,7 @@ static void igc_dispatch_skb_zc(struct igc_q_vector =
*q_vector,
> 	struct igc_ring *ring =3D q_vector->rx.ring;
> 	struct sk_buff *skb;
>=20
>-	skb =3D igc_construct_skb_zc(ring, ctx);
>+	skb =3D igc_construct_skb_zc(q_vector->adapter, ring, ctx);
> 	if (!skb) {
> 		ring->rx_stats.alloc_failed++;
> 		set_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &ring->flags);
>
>base-commit: 4549871118cf616eecdd2d939f78e3b9e1dddc48
>--
>2.47.3
>
>
