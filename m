Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7FDACC305
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jun 2025 11:29:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48FE6615E1;
	Tue,  3 Jun 2025 09:29:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OaXOe_bfVSud; Tue,  3 Jun 2025 09:29:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C410861140
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748942959;
	bh=y6nic61dUc8FNcE3Omm0hP4aO55dPsjcBuoJq7BoeY8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9H1Y0agXMXY806zD5O4d4gN/BDVE/XRsNJiu2LdHzMimfdvE2KkpmboTF3Z1U+vAg
	 DMqZhE68ySITFZtaeZlXoXydz+GX+xHIhZsnV7Add3t1QPA+5HvK3xaCJRWfZASoBu
	 YG2mlXvE4hZeRbY5QLSlcLh9Hm3Kja9C4naCctKSlhswN3Eh+ATHBogDW8nepol/HC
	 faeay/7/0Hoe9Upbi0Kadz8THuGHwlwLFbWfWHOfUoxWnG3DYxevCgJi2CUXiuxPzs
	 wyEWVdFWLTeveN9OzFNBTQl9ssxsznGx7XWaoCBZLWoFVVMr8AVJKnsDpVpEAzG363
	 5qcwvwIb9VSlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C410861140;
	Tue,  3 Jun 2025 09:29:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B8EC9DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 09:29:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA34761066
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 09:29:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HU8133oE48Ei for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jun 2025 09:29:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 00DDD6107B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00DDD6107B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00DDD6107B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 09:29:16 +0000 (UTC)
X-CSE-ConnectionGUID: zC/wZbthR5yLcMgwMoawjw==
X-CSE-MsgGUID: LQgGE8wLTjuAmigL5f6lLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11451"; a="68527190"
X-IronPort-AV: E=Sophos;i="6.16,205,1744095600"; d="scan'208";a="68527190"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 02:29:16 -0700
X-CSE-ConnectionGUID: mzHM9WZwRbCGLjI0v/IkAA==
X-CSE-MsgGUID: L0cp38kWT9GnBSFfA4nB4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,205,1744095600"; d="scan'208";a="144686987"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 02:29:16 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 3 Jun 2025 02:29:15 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 3 Jun 2025 02:29:15 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.53)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 3 Jun 2025 02:29:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K3V0Hy1mDlM0rrMEKFN0BgAzMbDP8Yao3svRxaJquUH/uD2NjVlkNNsfTW5OsuC41IDURe7zrIki4NcSYNzx6Y6RYj3EBt1WYv93e+CY+8SPZKbpF1CdexhphxuJH7shI2PbyeWFzU2eRyK/QUSe6pd6kSIMhRFLUx5Tug/bAG3fvWZX6GYDZ350nvWdABb3KCMdnT/pKuDknCd9axwmH54eILKKZzQShIEMyMiszghmuUIxKDvAuliEaKBy58Vp9tpNHsZHVrXnAEYB4Pvq1y4VvwVZ1eiY++iuyc++rWk7YuCBnsTvE2ag8MBmnn+Xm3t3heEO8ePyN9qlqj2pLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y6nic61dUc8FNcE3Omm0hP4aO55dPsjcBuoJq7BoeY8=;
 b=dWMoxr735jzVX74/O0ltVisySBOJSCgHeFZ2cOV2DQs3usEzA41mT17dkx96h3hODGtguw/6ofQL0+1LKm24CtbXIPGN3NVeWFUbvZi0VsudU7v3FdP6WJIRgr1cvwG3ROHn+zRf6P2Lb2wsV/2tz8UmmPYIhbM8sskS8pUVaX0lLrgsosxiNHUnmFAvnWPeLIMPUYZGpl/IGlHhOdKm3e+bqrhySxlUQPsaRbo7LRGoYRBX4a0v4TEgyUtFdwn0RtslEQGfbFdaoPeBJIpdSC5hK7TRyXPeUUnMXYHcpKWvli5sPUbwmAVwd3VJCI5eVFXjX9Fp97fH+f6znqeehA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by BN9PR11MB5289.namprd11.prod.outlook.com (2603:10b6:408:136::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.37; Tue, 3 Jun
 2025 09:29:13 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%6]) with mapi id 15.20.8769.022; Tue, 3 Jun 2025
 09:29:13 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Stanislav Fomichev
 <sdf@fomichev.me>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 0/6] undeadlock iavf
Thread-Index: AQHbpUyKcJWVmjW2nESrmhdgKZCWPrPxiUcQ
Date: Tue, 3 Jun 2025 09:29:13 +0000
Message-ID: <IA3PR11MB89856149EF29166460C01F0C8F6DA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|BN9PR11MB5289:EE_
x-ms-office365-filtering-correlation-id: d023af71-73ab-4ded-0f38-08dda2811a5b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?8NqWf7kL7dXonkgkww7E27nIv21Afxgz9LUvBmNGRanc1s6pMMz64a9FsL6K?=
 =?us-ascii?Q?fzt1PknP48v2KV9C6lqHCP3rdjJk7TA5D2WrspxBArgY25jOrjvpfXHSAHB1?=
 =?us-ascii?Q?zL05tAGx9/3ZeT4HESNNXfhfRhvkAYalQpz1UoSigUBHGgo/8lbhLJBY19Jf?=
 =?us-ascii?Q?ygofbgJrzbcd0kUdwdeyPrhb45yuMMVD4C8K6xmxidVc+jki5RDfT2sC9xKc?=
 =?us-ascii?Q?TWXgxuM1uex21A9jOBGY0k0M2nF/Q5VR1PuFXCFi9tH8rMxNtBaCTynrvbi1?=
 =?us-ascii?Q?bP3k/5e1RkD/9IQnObreUGlwDtkCjazig9pWvV0mGeK5nUHUz+pnfYNbZizT?=
 =?us-ascii?Q?FKBJidvx+STcrlnQpipI3z+3IaHIjEPML4hQD8+NwxZcd6DL2gUHHPA1vaLS?=
 =?us-ascii?Q?luL1BD1Xzd0zfpzZoCRXAL25jPSBSSY5lzOoXsIZfHLIGVW0Jog+25RGCImM?=
 =?us-ascii?Q?sWMagYaGI/QDS+RuD49SzvrcKqu6ellTOx1VttQ/PNbC6t31aQ4mZzolaTXq?=
 =?us-ascii?Q?7byKoJundPSiUzDN88g4VB5aAk+nOwNF+3xAzG7BZPGH+w1uYgcBaDjJQjS5?=
 =?us-ascii?Q?CuwWEwOfNGtYpaUC+gTA6ghRRsQYWLHxQ7rkAgFFMxHV7x7pjux4xR9OeZB5?=
 =?us-ascii?Q?Dsc/ewuFvEMFutjkKj81wVvvh4WRYdEnKC9fXp0WQmlK8AQhHDT8pqrosEXz?=
 =?us-ascii?Q?/uVsGbCM6/Wv003+YFTiRQjlV60xbBWWBue+z43BAkx3iAJuLCpMyYCV3Rwe?=
 =?us-ascii?Q?el//VFPVaLJQhfFXtCiwhkj77HPYTsKkQkTQS9okW1W60hK9/K4DFx1y2ghu?=
 =?us-ascii?Q?qTkyoBTZJ+xuufBg+iDgs5MEuixA0+hN40SBiOpwqtd5hKJZCq56ivgZPiUV?=
 =?us-ascii?Q?OnH4JdoHJaA26nIT7E3K1EfAGBNOIteads4b4X16vu7Lg5lu6YsG+Qc3hP+J?=
 =?us-ascii?Q?fXmYhsPL2ULZ9FQR6a7ya82KH176G80xEhmGIqNbI04E3tG1eqGsxEW2D5p1?=
 =?us-ascii?Q?8iJke6kcREF/QxW6yx8pdVnMZm8nHPaeF0oSu/wJHLlSGq2O4zkrimo21vbn?=
 =?us-ascii?Q?mQO3dA3FbmmMBIQxjGZ3WB785wd8cppcJ5aKouO0srCjfKZdOpz29hxnUd46?=
 =?us-ascii?Q?TP3XeQ0j1G5xzFQXDpYz1LQl7woQSX4lysCV4ip97clf+4SJZ5XZbzetveFs?=
 =?us-ascii?Q?PHqfKWCWK8lATbUqjwPETjpiSBdcPGH/PSJvFIkj6Rz+rtAXCNUJluLrPeKX?=
 =?us-ascii?Q?llhkWakIgYosND95/u6VgfcgDwf5Ggndm4E1TDMGyXoapXXkX9nO2jBYjbjq?=
 =?us-ascii?Q?ksYkfMuQXBTPehYHu2YOBSocq+AoDI0P0aEqUrE3j67MV5XF2yW+1Lsqn5Ha?=
 =?us-ascii?Q?GylmE956bMHKq/B3/lPf9ELlt9QEJvY0JDn6lu9satPapEZvLjtNl53ziAiw?=
 =?us-ascii?Q?4cARCCIbtZXAoYYtl8ZgXm3lPulljXC8zu1xalJVmWn/55gC48fA29J/ElI0?=
 =?us-ascii?Q?8N3np16jEydYdfM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mlZuRIvls0NSSPwvzQ9XjBBmZdqDYuvyGjmmKpmEvY48GgQVmdulBV1jdvDU?=
 =?us-ascii?Q?j0qV9ZbCeMbcAOhLz2bWa5+5LCVTiBx7DTBQabNhl/MVzCCyLCvPMlSmMLk0?=
 =?us-ascii?Q?vXZjjbHC4IAogEyTHZ5sXgcQ+nq3Z8jdb+iWt+VdHuuOYmJrI3jsa58yQrDY?=
 =?us-ascii?Q?CNCJMJnZA696TKEwxsHsks5IBT6A9+a9X1uN3Jd3Kh6yhHdX3ZvtzT9gh2Hc?=
 =?us-ascii?Q?cUPEQ8icJr5ei1gTPaHE4X2QwAq4C1AZaOBKS54S0KywAI6s5GswwyApIMSl?=
 =?us-ascii?Q?PduEWG0rrHZEkcrqmaol2BlYL5DNzwSpyApsdPBOA4StX6uDDbq7n381NnGG?=
 =?us-ascii?Q?OTSrsw1P3ROLWp9AnLlqk9QnHh+ihgl/tM3IV8g5kzJEqcnJpIzula+NZFvK?=
 =?us-ascii?Q?p4AhD0vgwfQx1lORurovat1yI6SG+HNXfIvn4q6Ok24pCej7IcXYccrkdiIJ?=
 =?us-ascii?Q?QktDbQvtimoCm6R93xQsoohTjh3ElLdNsTz3m4UuN0cSADkrCNynF9cFv20U?=
 =?us-ascii?Q?Qb8vK56388/ociXX5ix/EnKGj7Ck485cgkWccRq0iliCP4aIj6cVr1kKkeVr?=
 =?us-ascii?Q?rA+QmuJkGtq/DL90809ruxH1ggUpj67cvE5oTH/abCph8PGa5BhRww1WRIS2?=
 =?us-ascii?Q?J748J1WEUKys5pRSvtdBQ5I0gGnGRAOz1FRkoloJ6S3jlTEhKbgmk2e0h6kX?=
 =?us-ascii?Q?62+MeW9q4Yc5lhH+Sqd5bRXjvg77FHo4S+h7XQesz/Wbo0I2i/MbmnsLuHfD?=
 =?us-ascii?Q?es0/lVvSBgvhEzGPncPa7Y/B/CjGheir2Q2OLaTewEpwFDg0ouZbTbg86Ag2?=
 =?us-ascii?Q?8n1hqWAiphVjp28m3EL9yo0Tc1UTu0Tl6BWibuDqiLxLdirTq0t2rohlirXY?=
 =?us-ascii?Q?e/lMhuEC31Pd1UWKGGEs4mugj6LqThbrEd6AY44FD64xOCBciBvOfRHADmH/?=
 =?us-ascii?Q?FedOg7YFTxXwRKM5jDQnzHZi3N2zJtAhGZvXle7abry1whIeM4kBatsbNN4I?=
 =?us-ascii?Q?4ajIgHRWyKE2ejUJecfDS/ZfJFdVoou6dV+F9dbpijN+dJIryOK5VpkdX9s7?=
 =?us-ascii?Q?gw65+L0bsCSUi8UFeRAmyl3YfEdUJG8AxUUPSnVzvYOrjVkPeOrSJS0OznWo?=
 =?us-ascii?Q?fzUXt9foXNc3etGhSme84MAkkyCVN+RymubiHwVEeaUZbMLJf/Ho7ZsEpOAJ?=
 =?us-ascii?Q?uYmV56ub11M53G718OlQImlclwYLmBx4Hu6Gy3c0l5f3+UsFT3dVaVeToOtT?=
 =?us-ascii?Q?ROL7OQSolzUPecYT4IG9FGcu0rATW6WAi53IYevYgCLbpPtCcW87jlAZ4p/i?=
 =?us-ascii?Q?dwunr93PPfyFo/VfPYSiwUcgSqelWO+S0LXjp3KUCDBP/1SA/oZk28iRLEOY?=
 =?us-ascii?Q?/vrlAOkyp2ZMi6rCwMqjD2pHjMcBPvLr1bM77F5wBZ9dajNH2aAD2zxnU3aU?=
 =?us-ascii?Q?AB0ZvDMMRGCQ6Wtlaz5p7C/vCwl8Yhi9Ip+RJOyrqRjloNc/1oNKuekICB1X?=
 =?us-ascii?Q?HodR937fKF/NpYxhJ5xsWNftqJNXaM/ElOnVETKsVykTd6CVtbKSMQdoiNhg?=
 =?us-ascii?Q?XJvU/Zc7y5mCLHvTKISg53PXuo5nWfdMnoGBjgmUaa7CUN51ydjjfX2pUlXJ?=
 =?us-ascii?Q?tw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d023af71-73ab-4ded-0f38-08dda2811a5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2025 09:29:13.2972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rbaXdYKLsSvDmmf1XVpO8imbm7S6SDSINUsfPdVacuOHw+p1uVJfgdB9Xd2+bEBrLvROC+5Gu1t8xWPr1rQ6F9yijhH6gFxLeZ5BgtsOwmE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5289
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748942957; x=1780478957;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Bsy81WZmfotd3QiJrNJ9gV2jK1msofYJ+z6dLvXeuiM=;
 b=cdL6tj/WZGZ9RYa2q4YIn0hbP4V+mUEa4/BOGegoq1xl81KUYomID+7t
 FPZtpkWfdOSBfo8K4QkO7a4SZaU2GfCmoFQ/L0i4++B1FP0im4R9+bq1N
 rLmVgdWqEjWcqsvV7DD1r5eaBbczrfSZ7d09KPbbssNKMb9lwf8v+lQKb
 sZHBp9bCB3GvJP8pVi3VxdIc0E/BqDqRgR9Dq8XLcjLyoUtiJHhD5eBNr
 ETU0sSBiGkJBbwjHt3T0LelA0qmXTlXapnL4OiljchORjK2NjckMNOUa3
 bvgw058rF+26Qn9amFIJVxXhRC+oXqhA2Q8XUKMQz2h3g0Nz16US+mc90
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cdL6tj/W
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/6] undeadlock iavf
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
> Przemek Kitszel
> Sent: Friday, April 4, 2025 12:23 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: netdev@vger.kernel.org; Stanislav Fomichev <sdf@fomichev.me>; Kitszel=
,
> Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 0/6] undeadlock iavf
>=20
> Fix some deadlocks in iavf, and make it less error prone for the future.
>=20
> Patch 1 is simple and independed from the rest.
> Patches 2, 3, 4 are strictly a refactor, but it enables the last patch
> 	to be much smaller.
> 	(Technically Jake given his RB tags not knowing I will send it to -net).
> Patch 5 just adds annotations, this also helps prove last patch to be cor=
rect.
> Patch 6 removes the crit lock, with its unusual try_lock()s.
>=20
> I have more refactoring for scheduling done for -next, to be sent soon.
>=20
> There is a simple test:
>  add VF; decrease number of queueus; remove VF that was way too hard to
> pass without this series :)
>=20
> Testing hints for VAL:
> whole regression set, both against ice and i40e.
>=20
> Przemek Kitszel (6):
>   iavf: iavf_suspend(): take RTNL before netdev_lock()
>   iavf: centralize watchdog requeueing itself
>   iavf: simplify watchdog_task in terms of adminq task scheduling
>   iavf: extract iavf_watchdog_step() out of iavf_watchdog_task()
>   iavf: sprinkle netdev_assert_locked() annotations
>   iavf: get rid of the crit lock
>=20
>  drivers/net/ethernet/intel/iavf/iavf.h        |   1 -
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    |  29 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 289 ++++++------------
>  3 files changed, 96 insertions(+), 223 deletions(-)
>=20
> --
> 2.39.3


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


