Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE8CA097C5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2025 17:46:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 619A483B23;
	Fri, 10 Jan 2025 16:46:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W2ojUXcZphJF; Fri, 10 Jan 2025 16:46:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47B1C83B24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736527582;
	bh=d6GuqtOu5CXDS2F0NITqXLmOJPAW+xVvKULaiUH1w2k=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U3JN83HaaGSo6qqPggr6cAs3sIbb6udYr/ZG9OOwvoVrUc8A6uVzArWF5b1F+V5qt
	 9gYejvccm64tlHsSUhnn/5ZdNrLG2gTEmSFO2tTxtJlTr6bK05sw66wYS4aiWVXkBf
	 JKCpqRPi1s0vYCfMimH9WtuFeoBSZeZv28jb/vr+JImEgCrylnupzX+NMR0Tjj4Jo6
	 NRlgJgSX4m2UiPXtRN2dbonhpDv4o3L729zKiiBtu8o6vtMxgV661hF9WmIEz5R1K8
	 e0BLcv4MeRxRNolr0dcOZR53sARtZ1FM4XEDrPkIPYIVScrbvT7lPwtCM1KX2dzIBi
	 1RFmWz6/XtCjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47B1C83B24;
	Fri, 10 Jan 2025 16:46:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F256940
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 16:46:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7FA63410E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 16:46:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WWBjYfiSb_NJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jan 2025 16:46:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 78193410DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78193410DB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78193410DB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 16:46:16 +0000 (UTC)
X-CSE-ConnectionGUID: rjlwLE4fSuyM+/PtUCw39A==
X-CSE-MsgGUID: r+rSyu5LRsGF70apR0IqTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="47400122"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="47400122"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 08:46:16 -0800
X-CSE-ConnectionGUID: 1DQUy35lT7mZJIq95yQD1Q==
X-CSE-MsgGUID: Ri+XD+n+S4i4mtq8SokVLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="141078838"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2025 08:46:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 10 Jan 2025 08:46:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 10 Jan 2025 08:46:15 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 10 Jan 2025 08:46:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UfJ8NP54HrA9noDNd4l7QhCh8KFDU6LguNx9pGzf9Ag2tcU5ZXTr6ufvdbb+LAttkn6MSdHSn4ObQo9rxic5LWKpHMCyauZIuhxJ14JoD5A0My6k79ZS3XRpFZiAd41RVjhaVKquT0mJ1YjidnC8N4iOKaWy+zHOKZ9onnD2Ht0C/CAX59URYZ1YSza6iYJjLb3QJcw0S7ojJyrqqaIU6KpbgeAZQLcuSvgPyqGJBkxi/argHlLAcCEPcixXlOmwIL0U8G/FDzuaFqkpxl6g0aas5vzSNAqq1WBH6yXVU5OnMwCLTEonnOCtpDr+CkDPUHUeoAxAwnPOaea1maOSjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d6GuqtOu5CXDS2F0NITqXLmOJPAW+xVvKULaiUH1w2k=;
 b=VWk1TGmimNw2EBujp1IidsvLydtHSjUOn/XmNBjZJ69BHin3WZV/xs6KwCfJD/9dR+fvfMtdrDyYa4GRoHr8QAIWn/O38hQUM/ywtU/xQzo9Cxrb1BaxkpMBpbag5/aLPEulXRnDknvGw63WkaMjX5QDJA23VPzgCw2IOOcqRDYM+x+FxncKaLNMPXwL9+4CJnbEz8iuRrr1qaXUihi2nsv+3lNLkxxkKbn7LW02TPwMTyc2UBGo4h6Zd92SLIHo2zEGWlErprCrbtx2rmKVFV+IBlOZuHcYbRP7exoboCGmtjlZGCCL+ZTAxOy6tbX+9f1QV2ydxyAvjYMPFMqMQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5889.namprd11.prod.outlook.com (2603:10b6:303:168::10)
 by CY8PR11MB7779.namprd11.prod.outlook.com (2603:10b6:930:77::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Fri, 10 Jan
 2025 16:45:30 +0000
Received: from MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073]) by MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073%5]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 16:45:29 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>
Thread-Topic: [PATCH v3 iwl-next 08/10] idpf: add Tx timestamp flows
Thread-Index: AQHbUfssNx3ceTOrgUysh+e3sx/AfLMLhEcAgATVSTA=
Date: Fri, 10 Jan 2025 16:45:29 +0000
Message-ID: <MW4PR11MB58891AC5F86EFECEA76B58D38E1C2@MW4PR11MB5889.namprd11.prod.outlook.com>
References: <20241219094411.110082-1-milena.olech@intel.com>
 <20241219094411.110082-9-milena.olech@intel.com>
 <677d4042a293e_25382b2948@willemb.c.googlers.com.notmuch>
In-Reply-To: <677d4042a293e_25382b2948@willemb.c.googlers.com.notmuch>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5889:EE_|CY8PR11MB7779:EE_
x-ms-office365-filtering-correlation-id: ce8f20e7-7847-46eb-44a1-08dd31963152
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?o0rv9/fp1OjiwF3l5Y2Zd9btTMeGbrZDP1x1YYRFQ80U324S4T5dagJQTnBH?=
 =?us-ascii?Q?E1kb8ztyrER630uW4/Wx2xeXXWszWj+0MAMgA8Xtdilwm6cikns2XYWhxRIe?=
 =?us-ascii?Q?Y/xBf8nuAOtjbnyuOQQsrONwwplxogo1cRPHaMisNLjVYTNk+VCY4z/WVNEm?=
 =?us-ascii?Q?1MfhW6EyRA3QgWdEDGM6T4hD3NR/h8Wc0jk+63Gz1bw3jt7SO+MspU8QhY9j?=
 =?us-ascii?Q?D9b0hjM4RoDiEAlLd79/yZnhppVx8BVjG5xn32VDFnFIA3aRIorZCMartft9?=
 =?us-ascii?Q?OGT2ZVLaPwCGrmYOscByhoaRikGKckXWoPmsKOSFyidYqn7qUbvusl0QUmxM?=
 =?us-ascii?Q?u5J3JTP4/hKvZEetKknP9uz/skajWHv/exsjWvFmWO5C8Y/xvQcU2KqyrVb7?=
 =?us-ascii?Q?L9rBmGiO4rYVOjwp7tRH/L9x0FoAxuY42kidup3G9FMhxdrl3Z6OfBdWYo6O?=
 =?us-ascii?Q?783WvDnGo0PKGGcNQMi7md1CcitedCe0blYmRqjxL59iJ5Mki7w87wVEjCa0?=
 =?us-ascii?Q?T1JH/FhHz5AXwnYBD4Cb6RyEm5npW5flQ7UlFf5PsLhfC0947RqhjnyjmWjs?=
 =?us-ascii?Q?/hyq0KTtwigVHISz03URqddXzGdHTJpxJzq9Ev7Z60PVZm8aM5GKDVZmqgMx?=
 =?us-ascii?Q?7c8TFyUN7fg5NRVoMx5Sn4OkFFzFTI3pugtBENV93zlyF832dhdD5Id2mR2L?=
 =?us-ascii?Q?ll2g2wHB5CWUth0XtBtUl7KVc3qqOR+G6F/rvTxtOdj1UeXoJJpQZtNUKJen?=
 =?us-ascii?Q?ZpfRUCIohHy77lDYv/B81Y21VAHp1ORPpfzNq2Td+CUAw/0CJn8OktuPklEw?=
 =?us-ascii?Q?lVs75L1+NFhQHYYs+46s+Mn74Y9tXJpfmvUt7H3cdskZD2ey5lIo4fBLUlSk?=
 =?us-ascii?Q?U7xVo0HJMZ1UIQ6hU5yaKYGUzzPDs4AAfjPpWma6qahsnIXCpnkXfr2dOx+s?=
 =?us-ascii?Q?Nd5HMEYuvpmcjfQjt3WeMFkbOVVzCgSMEm7sSi2GK6i+H/X9jMZbHmbupmVr?=
 =?us-ascii?Q?y/s0l84Qa4pyINrODsuqgwhpiIW2yryJHRf65JDBuAkWQXxNQe9q9MGjEAjg?=
 =?us-ascii?Q?ZY7fimgUWDcAWqiLIs/u8Mj1fl+sRy+cScXXuFK26siOIjUO3TOGMKg/j06n?=
 =?us-ascii?Q?S7THgZbWTTxXYNGUQXavBuxePMn76SVLY//fEDJWoxY/bddiqdu7rOqmykit?=
 =?us-ascii?Q?OzK7NvzHadP/5w0EnRSX8or7wXZuDkd3MU36dZqQv7d75rjS1cbFr8wIuqGO?=
 =?us-ascii?Q?L5ZqiQzhwePAOOhsbzzhMVIVUqCzVMjDKPeh6mCkXzRT3sHOGiCf8EaHxvVY?=
 =?us-ascii?Q?cq5zw6g9eEyoHlZoG0WqrafNd4Yi4WhP+DZLksvjP7s8b/8ukPK67WsYzHc7?=
 =?us-ascii?Q?ezGPV7OxpPXsNjeM32FOwVLSrePqbeDhyZJX5ecC2lBxa57nzPlcCqk+xhv2?=
 =?us-ascii?Q?Buo4kOeUZeYvQUW+Xr8p9ms2N5W/Q+Gu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5889.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RqwqEMsicK8WCMzj06W4FnnBuyR0MCQurh148sT7icsaRb58YIYuB6rOKguk?=
 =?us-ascii?Q?g9/HulSJ4NQBe6J2mf66J7P0aYcMIxky9paulkbAu4JSzfXZ7F0hEAqV17Dt?=
 =?us-ascii?Q?hOkbOTa+DV6jcSYDxXFCJK8Bik6N9RMtsRXTaHWEM4zf3SLJlcRtaTtH3kw3?=
 =?us-ascii?Q?8yWjptOf0OGysDyUlYq0Fi1AhG0V35ngLP3uh8KhEVcYNB/IwFEcv1rthfoO?=
 =?us-ascii?Q?26W2ssEAFZAomLEniaW4LqeaaIqkod/3jK+o1J0VtdGLDYki/6rWAgj+VrFt?=
 =?us-ascii?Q?d7jK3dwDF6I0FK0XWR5x8Yd73ErmGXxuV8RMiNmgvNq0o9od6URhopoLVZHq?=
 =?us-ascii?Q?KGlZ4PjbB4IW4256sE0NKlV3qrZBrTZXvyKbplsk2AM57EZSRYfR8QKHBnUz?=
 =?us-ascii?Q?2dPc5456RjdJmiAPvpGf7nfCzPhZKYK62fHQ2NH4vQSERXTzr98c3cXk6KWx?=
 =?us-ascii?Q?QWJJJS17+UqoDSemKeooRieTcDvCQNvJLFNH2s7C9PWi+e0kG7sjPSid22pT?=
 =?us-ascii?Q?3y1C5GPUiD+xGBF9heL536U83qGOU3/1nriB0J+uqx4kyqFWuFft1fevi5XR?=
 =?us-ascii?Q?C2UprkTRPovIlPSD9t0rwRoclOo69pPd61rBkPMrO6zqVojLE0VaFumPUXzU?=
 =?us-ascii?Q?3WwJROSgUpTYr1e8W5hAT4m0Hl/58N3DkjE72WzxS+OznsadV0jLbUXhhF4y?=
 =?us-ascii?Q?/3tRK9j0GylZMRJIHOMvvUPIESxSlOxKF+UDvdKi0ZmAJx0JterwgShUKClD?=
 =?us-ascii?Q?xvNf3t8FKndTYaZ1r/12e+O37czwxl6cUhFcMA51Rv2N+JnZJyaxPYAEjxnP?=
 =?us-ascii?Q?WeqoFeFD2L0k2hM/MwOZ6dDCYplRBsahMelYtPgNitQrBRk/7/c87iHdg1b6?=
 =?us-ascii?Q?EDK+sY7EoA04N09vguUJSHPHrlZghkZaYn5Ce7v9lhvWKVFEHTbv1jLH3o/3?=
 =?us-ascii?Q?TdJ2Lv4WbWOnuNK+4c25sd/RNtiuF2VG2837OCXFtroM2oLeisn/ceAFzmtY?=
 =?us-ascii?Q?Me0Ubnr7jxBA+hjdqLxS+rAiPkXI28PnpzuLAuof491Wcxm2Mz7eMv3520VL?=
 =?us-ascii?Q?0h/K6RujDoG7hr9+Q2LrX6YVgE1P6gIuYTGvfnp5BmamixRTVcfb01V+/cl3?=
 =?us-ascii?Q?Q2rZ6yQQG7c4FtnTYWstDUXbv11faIa2B4Y4l0xVb9DjT4enJ3+N4xgOjnKF?=
 =?us-ascii?Q?aOotVZPg6+FSdtrnxBL6DCJDMwDv0lRJ04RTv4rmaug9xB7kOjv7SpYKljWM?=
 =?us-ascii?Q?i6ia2GHImsj3MrZvOmcC5wCoF4HEtEs9oFo6IF8LLy9ZBU6jgsGhZ51RkMuJ?=
 =?us-ascii?Q?1OxmwDo1rKZltaCqjBCBdxMRYEuT53yh2gFxuYD9YBYrh8pA4+I2FkhYxygG?=
 =?us-ascii?Q?zu9iYn+Txs7ii9vQTxZlPFrrZWc8iZJOdR1/Gq/Gx52mn8FlskG1LcUroiPp?=
 =?us-ascii?Q?MZIldMrtT4NhQ8073erIkvToUQG8YnEUPg/OMzdGMFiTtrNVqi3KiDHHt1Wv?=
 =?us-ascii?Q?kqCIemT4aguxovcha+NT9uL24eyDNiTag0qG2usJQncuWRsCxTYrgFqg/vos?=
 =?us-ascii?Q?bsSUOHYeeSKvyikYP0CPOGT2rtkwH0t3V10w1X4T?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5889.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce8f20e7-7847-46eb-44a1-08dd31963152
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2025 16:45:29.8766 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lzteA/4bp28aU/I3OqyIA/x4hKKCCsm2FaGO4vMDGPYD5B3JDmHIjtIfvCf30I4ZllWHtwlajiu8jX4PAfHNRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7779
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736527577; x=1768063577;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MjekqhPGP1c5GqYxXfwyVZndPtC9mu/kmpdpXR6k4Hk=;
 b=B5N3LO24e5j/l5Z9OJv8d+KptkEwD+DJXiQZQj5mQMLTb/he5IeoAFk3
 u7sP8GhiTR0kgaZke2QLjkFQ5S7FQOdq6Ak6fR5bAjcni+ALhY4g02mmk
 1WjP7KplgT2nI+WUQ2MFDqTWtw6/RSoxrPuX+BYaIjFlcbPAHKRaL2Fh3
 +5tNkMPJ73/IR+B/U+u50yOrii8BJz7li93MJ7VdMXVtLowj9SCDK0LRZ
 oM5tCB7tMCy/ww4i+s458JLVsciZGecUudDJg1OPv8YD0gxr8O+egOrsE
 kzQd/VubpLpr2R3h1chABLm2ikRdtXdx14tNJt337Zf0+1326u9GR4urn
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B5N3LO24
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 08/10] idpf: add Tx
 timestamp flows
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

On 01/07/2025 3:55PM Willem de Bruijn wrote:

> > Add functions to request Tx timestamp for the PTP packets, read the Tx
> > timestamp when the completion tag for that packet is being received,
> > extend the Tx timestamp value and set the supported timestamping modes.
> >=20
> > Tx timestamp is requested for the PTP packets by setting a TSYN bit and
> > index value in the Tx context descriptor. The driver assumption is that
> > the Tx timestamp value is ready to be read when the completion tag is
> > received. Then the driver schedules delayed work and the Tx timestamp
> > value read is requested through virtchnl message. At the end, the Tx
> > timestamp value is extended to 64-bit and provided back to the skb.
> >=20
> > Co-developed-by: Josh Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Milena Olech <milena.olech@intel.com>
> > ---
> > v2 -> v3: change get_timestamp_filter function name, split stats
> > into vport-based and tx queue-based
> > v1 -> v2: add timestamping stats, use ndo_hwtamp_get/ndo_hwstamp_set
> >=20
> >  drivers/net/ethernet/intel/idpf/idpf.h        |  20 ++
> >  .../net/ethernet/intel/idpf/idpf_ethtool.c    |  69 ++++-
> >  .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  13 +-
> >  drivers/net/ethernet/intel/idpf/idpf_lib.c    |  47 ++++
> >  drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 236 +++++++++++++++++-
> >  drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  52 ++++
> >  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 139 ++++++++++-
> >  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  11 +-
> >  .../net/ethernet/intel/idpf/idpf_virtchnl.c   |   6 +-
> >  .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 235 +++++++++++++++++
> >  10 files changed, 814 insertions(+), 14 deletions(-)
> >=20
>=20
> > +/**
> > + * idpf_get_timestamp_filters - Get the supported timestamping mode
> > + * @vport: Virtual port structure
> > + * @info: ethtool timestamping info structure
> > + *
> > + * Get the Tx/Rx timestamp filters.
> > + */
> > +static void idpf_get_timestamp_filters(const struct idpf_vport *vport,
> > +				       struct kernel_ethtool_ts_info *info)
> > +{
> > +	if (!vport->tx_tstamp_caps ||
> > +	    vport->adapter->ptp->tx_tstamp_access =3D=3D IDPF_PTP_NONE)
> > +		return;
>=20
> Is making SOF_TIMESTAMPING_RX_HARDWARE and SOF_TIMESTAMPING_RAW_HARDWARE
> conditional on tx_tstamp_access intentional?

Hmmm, good catch.
I guess I will change the SOF_TIMESTAMPING_RX_HARDWARE to be not
conditional.

About the SOF_TIMESTAMPING_RAW_HARDWARE - it should rely on the
tx_statmp_access.

>=20
> > +
> > +	info->so_timestamping =3D SOF_TIMESTAMPING_TX_SOFTWARE |
> > +				SOF_TIMESTAMPING_TX_HARDWARE |
> > +				SOF_TIMESTAMPING_RX_HARDWARE |
> > +				SOF_TIMESTAMPING_RAW_HARDWARE;
> > +
> > +	info->tx_types =3D BIT(HWTSTAMP_TX_OFF) | BIT(HWTSTAMP_TX_ON);
> > +}
> > +
> > +
> > +static int idpf_hwtstamp_get(struct net_device *netdev,
> > +			     struct kernel_hwtstamp_config *config)
> > +{
> > +	struct idpf_adapter *adapter =3D idpf_netdev_to_adapter(netdev);
> > +	struct idpf_vport *vport;
> > +
> > +	idpf_vport_cfg_lock(adapter);
> > +	vport =3D idpf_netdev_to_vport(netdev);
> > +
> > +	if (!idpf_ptp_get_vport_tstamp_capability(vport)) {
> > +		idpf_vport_cfg_unlock(adapter);
> > +		return -EOPNOTSUPP;
>=20
> Should this return an empty config and return 0, rather than return
> error?
>=20

I'd prefer to return NOTSUPP, as the feature itself relies on the CP
policy.

> > +	}
> > +
> > +	*config =3D vport->tstamp_config;
> > +
> > +	idpf_vport_cfg_unlock(adapter);
> > +
> > +	return 0;
> > +}
> > +
> >  static const struct net_device_ops idpf_netdev_ops =3D {
> >  	.ndo_open =3D idpf_open,
> >  	.ndo_stop =3D idpf_stop,
> > @@ -2383,4 +2428,6 @@ static const struct net_device_ops idpf_netdev_op=
s =3D {
> >  	.ndo_get_stats64 =3D idpf_get_stats64,
> >  	.ndo_set_features =3D idpf_set_features,
> >  	.ndo_tx_timeout =3D idpf_tx_timeout,
> > +	.ndo_hwtstamp_get =3D idpf_hwtstamp_get,
> > +	.ndo_hwtstamp_set =3D idpf_hwtstamp_set,
> >  };
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/e=
thernet/intel/idpf/idpf_ptp.c
> > index 04e2b3b258f6..56920db8bec9 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> > @@ -317,6 +317,37 @@ static int idpf_ptp_gettimex64(struct ptp_clock_in=
fo *info,
> >  	return 0;
> >  }
> > =20
> > +/**
> > + * idpf_ptp_update_cached_phctime - Update the cached PHC time values
> > + * @adapter: Driver specific private structure
> > + *
> > + * This function updates the system time values which are cached in th=
e adapter
> > + * structure.
> > + *
> > + * This function must be called periodically to ensure that the cached=
 value
> > + * is never more than 2 seconds old.
> > + *
> > + * Return 0 on success, negative otherwise.
> > + */
> > +static int idpf_ptp_update_cached_phctime(struct idpf_adapter *adapter=
)
> > +{
> > +	u64 systime;
> > +	int err;
> > +
> > +	err =3D idpf_ptp_read_src_clk_reg(adapter, &systime, NULL);
> > +	if (err)
> > +		return -EACCES;
> > +
> > +	/* Update the cached PHC time stored in the adapter structure.
> > +	 * These values are used to extend Tx timestamp values to 64 bit
> > +	 * expected by the stack.
> > +	 */
> > +	WRITE_ONCE(adapter->ptp->cached_phc_time, systime);
> > +	WRITE_ONCE(adapter->ptp->cached_phc_jiffies, jiffies);
> > +
> > +	return 0;
> > +}
> > +
> >  /**
> >   * idpf_ptp_settime64 - Set the time of the clock
> >   * @info: the driver's PTP info structure
> > @@ -347,6 +378,11 @@ static int idpf_ptp_settime64(struct ptp_clock_inf=
o *info,
> >  		return err;
> >  	}
> > =20
> > +	err =3D idpf_ptp_update_cached_phctime(adapter);
> > +	if (err)
> > +		pci_warn(adapter->pdev,
> > +			 "Unable to immediately update cached PHC time\n");
> > +
> >  	return 0;
> >  }
> > =20
> > @@ -402,6 +438,11 @@ static int idpf_ptp_adjtime(struct ptp_clock_info =
*info, s64 delta)
> >  		return err;
> >  	}
> > =20
> > +	err =3D idpf_ptp_update_cached_phctime(adapter);
> > +	if (err)
> > +		pci_warn(adapter->pdev,
> > +			 "Unable to immediately update cached PHC time\n");
> > +
> >  	return 0;
> >  }
> > =20
> > @@ -465,6 +506,162 @@ static int idpf_ptp_gpio_enable(struct ptp_clock_=
info *info,
> >  	return -EOPNOTSUPP;
> >  }
> > =20
> > +/**
> > + * idpf_ptp_tstamp_extend_32b_to_64b - Convert a 32b nanoseconds Tx ti=
mestamp
> > + *				       to 64b.
> > + * @cached_phc_time: recently cached copy of PHC time
> > + * @in_timestamp: Ingress/egress 32b nanoseconds timestamp value
> > + *
> > + * Hardware captures timestamps which contain only 32 bits of nominal
> > + * nanoseconds, as opposed to the 64bit timestamps that the stack expe=
cts.
> > + *
> > + * Return: Tx timestamp value extended to 64 bits based on cached PHC =
time.
> > + */
> > +u64 idpf_ptp_tstamp_extend_32b_to_64b(u64 cached_phc_time, u32 in_time=
stamp)
> > +{
> > +	u32 delta, phc_lo;
> > +	u64 ns;
> > +
> > +	phc_lo =3D lower_32_bits(cached_phc_time);
> > +	delta =3D in_timestamp - phc_lo;
> > +
> > +	if (delta > S32_MAX) {
> > +		delta =3D phc_lo - in_timestamp;
> > +		ns =3D cached_phc_time - delta;
> > +	} else {
> > +		ns =3D cached_phc_time + delta;
> > +	}
>=20
> If using s64 delta and ns, no need for branch?

To make it more readable, I'll change the condition in v4.
I'll check if the phc_lo is greater than in_stamp.

If phc_lo is bigger, then tx tstamp value was captured before
caching PHC time and case 1 will be applicable.

>=20
> > +
> > +	return ns;
> > +}
> > +
> > +/**
> > + * idpf_ptp_extend_ts - Convert a 40b timestamp to 64b nanoseconds
> > + * @vport: Virtual port structure
> > + * @in_tstamp: Ingress/egress timestamp value
> > + *
> > + * It is assumed that the caller verifies the timestamp is valid prior=
 to
> > + * calling this function.
> > + *
> > + * Extract the 32bit nominal nanoseconds and extend them. Use the cach=
ed PHC
> > + * time stored in the device private PTP structure as the basis for ti=
mestamp
> > + * extension.
> > + *
> > + * Return: Tx timestamp value extended to 64 bits.
> > + */
> > +u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u64 in_tstamp)
> > +{
> > +	struct idpf_ptp *ptp =3D vport->adapter->ptp;
> > +	unsigned long discard_time;
> > +
> > +	discard_time =3D ptp->cached_phc_jiffies + 2 * HZ;
> > +
> > +	if (time_is_before_jiffies(discard_time)) {
> > +		mutex_lock(&vport->tstamp_stats.tx_hwtstamp_lock);
> > +		vport->tstamp_stats.tx_hwtstamp_discarded++;
> > +		mutex_unlock(&vport->tstamp_stats.tx_hwtstamp_lock);
> > +
> > +		return 0;
> > +	}
> > +
> > +	return idpf_ptp_tstamp_extend_32b_to_64b(ptp->cached_phc_time,
> > +						 lower_32_bits(in_tstamp));
> > +}
> > +
> > +/**
> > + * idpf_ptp_request_ts - Request an available Tx timestamp index
> > + * @tx_q: Transmit queue on which the Tx timestamp is requested
> > + * @skb: The SKB to associate with this timestamp request
> > + * @idx: Index of the Tx timestamp latch
> > + *
> > + * Request tx timestamp index negotiated during PTP init that will be =
set into
> > + * Tx descriptor.
> > + *
> > + * Return: 0 and the index that can be provided to Tx descriptor on su=
ccess,
> > + * -errno otherwise.
> > + */
> > +int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q, struct sk_buff *sk=
b,
> > +			u32 *idx)
> > +{
> > +	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp;
> > +	struct list_head *head;
> > +
> > +	head =3D &tx_q->cached_tstamp_caps->latches_free;
> > +	if (list_empty(head))
> > +		return -ENOBUFS;
> > +
> > +	/* Get the index from the free latches list */
> > +	spin_lock_bh(&tx_q->cached_tstamp_caps->lock_free);
> > +	ptp_tx_tstamp =3D list_first_entry(head, struct idpf_ptp_tx_tstamp,
> > +					 list_member);
>=20
> Racy, as list_empty is tested before taking the spin lock?

You're correct, I'll change it.

>=20
> > +	list_del(&ptp_tx_tstamp->list_member);
> > +	spin_unlock_bh(&tx_q->cached_tstamp_caps->lock_free);
> > +
> > +	ptp_tx_tstamp->skb =3D skb_get(skb);
> > +	skb_shinfo(skb)->tx_flags |=3D SKBTX_IN_PROGRESS;
> > +
> > +	/* Move the element to the used latches list */
> > +	spin_lock_bh(&tx_q->cached_tstamp_caps->lock_in_use);
> > +	list_add(&ptp_tx_tstamp->list_member,
> > +		 &tx_q->cached_tstamp_caps->latches_in_use);
> > +	spin_unlock_bh(&tx_q->cached_tstamp_caps->lock_in_use);
> > +
> > +	*idx =3D ptp_tx_tstamp->idx;
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * idpf_ptp_set_timestamp_mode - Setup driver for requested timestamp =
mode
> > + * @vport: Virtual port structure
> > + * @config: Hwtstamp settings requested or saved
> > + *
> > + * Return: 0 on success, -errno otherwise.
> > + */
> > +int idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
> > +				struct kernel_hwtstamp_config *config)
> > +{
> > +	switch (config->tx_type) {
> > +	case HWTSTAMP_TX_OFF:
> > +	case HWTSTAMP_TX_ON:
> > +		break;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +
> > +	vport->tstamp_config.tx_type =3D config->tx_type;
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * idpf_tstamp_task - Delayed task to handle Tx tstamps
> > + * @work: work_struct handle
> > + */
> > +void idpf_tstamp_task(struct work_struct *work)
> > +{
> > +	struct idpf_vport *vport;
> > +
> > +	vport =3D container_of(work, struct idpf_vport, tstamp_task);
> > +
> > +	idpf_ptp_get_tx_tstamp(vport);
> > +}
> > +
> > +/**
> > + * idpf_ptp_do_aux_work - Do PTP periodic work
> > + * @info: Driver's PTP info structure
> > + *
> > + * Return: Number of jiffies to periodic work.
> > + */
> > +static long idpf_ptp_do_aux_work(struct ptp_clock_info *info)
> > +{
> > +	struct idpf_adapter *adapter =3D idpf_ptp_info_to_adapter(info);
> > +
> > +	idpf_ptp_update_cached_phctime(adapter);
> > +
> > +	return msecs_to_jiffies(500);
> > +}
> > +
> >  /**
> >   * idpf_ptp_set_caps - Set PTP capabilities
> >   * @adapter: Driver specific private structure
> > @@ -486,6 +683,7 @@ static void idpf_ptp_set_caps(const struct idpf_ada=
pter *adapter)
> >  	info->adjtime =3D idpf_ptp_adjtime;
> >  	info->verify =3D idpf_ptp_verify_pin;
> >  	info->enable =3D idpf_ptp_gpio_enable;
> > +	info->do_aux_work =3D idpf_ptp_do_aux_work;
> > =20
> >  #if IS_ENABLED(CONFIG_ARM_ARCH_TIMER)
> >  	info->getcrosststamp =3D idpf_ptp_get_crosststamp;
> > @@ -540,6 +738,8 @@ static void idpf_ptp_release_vport_tstamp(struct id=
pf_vport *vport)
> >  	if (!idpf_ptp_get_vport_tstamp_capability(vport))
> >  		return;
> > =20
> > +	cancel_work_sync(&vport->tstamp_task);
> > +
> >  	/* Remove list with free latches */
> >  	spin_lock(&vport->tx_tstamp_caps->lock_free);
> > =20
> > @@ -552,16 +752,21 @@ static void idpf_ptp_release_vport_tstamp(struct =
idpf_vport *vport)
> >  	spin_unlock(&vport->tx_tstamp_caps->lock_free);
> > =20
> >  	/* Remove list with latches in use */
> > +	mutex_lock(&vport->tstamp_stats.tx_hwtstamp_lock);
> >  	spin_lock(&vport->tx_tstamp_caps->lock_in_use);
> > =20
> >  	head =3D &vport->tx_tstamp_caps->latches_in_use;
> >  	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
> > +		vport->tstamp_stats.tx_hwtstamp_flushed++;
> >  		list_del(&ptp_tx_tstamp->list_member);
> >  		kfree(ptp_tx_tstamp);
> >  	}
> > =20
> >  	spin_unlock(&vport->tx_tstamp_caps->lock_in_use);
> > =20
> > +	mutex_unlock(&vport->tstamp_stats.tx_hwtstamp_lock);
> > +	mutex_destroy(&vport->tstamp_stats.tx_hwtstamp_lock);
> > +
> >  	kfree(vport->tx_tstamp_caps);
> >  	vport->tx_tstamp_caps =3D NULL;
> >  }
> > @@ -578,6 +783,27 @@ static void idpf_ptp_release_tstamp(struct idpf_ad=
apter *adapter)
> >  		idpf_ptp_release_vport_tstamp(vport);
> >  }
> > =20
> > +/**
> > + * idpf_ptp_get_txq_tstamp_capability - Verify the timestamping capabi=
lity
> > + *					for a given tx queue.
> > + * @txq: Transmit queue
> > + *
> > + * Since performing timestamp flows requires reading the device clock =
value and
> > + * the support in the Control Plane, the function checks both factors =
and
> > + * summarizes the support for the timestamping.
> > + *
> > + * Return: true if the timestamping is supported, false otherwise.
> > + */
> > +bool idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_queue *txq)
> > +{
> > +	if (!txq || !txq->cached_tstamp_caps)
> > +		return false;
> > +	else if (txq->cached_tstamp_caps->access)
> > +		return true;
> > +	else
> > +		return false;
> > +}
> > +
> >  /**
> >   * idpf_ptp_init - Initialize PTP hardware clock support
> >   * @adapter: Driver specific private structure
> > @@ -618,6 +844,8 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
> >  	if (err)
> >  		goto free_ptp;
> > =20
> > +	ptp_schedule_worker(adapter->ptp->clock, 0);
> > +
> >  	/* Write the default increment time value if the clock adjustments
> >  	 * are enabled.
> >  	 */
> > @@ -641,6 +869,7 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
> >  	return 0;
> > =20
> >  remove_clock:
> > +	ptp_cancel_worker_sync(adapter->ptp->clock);
> >  	ptp_clock_unregister(adapter->ptp->clock);
> >  	adapter->ptp->clock =3D NULL;
> > =20
> > @@ -662,11 +891,14 @@ void idpf_ptp_release(struct idpf_adapter *adapte=
r)
> >  	if (!ptp)
> >  		return;
> > =20
> > -	if (ptp->tx_tstamp_access !=3D IDPF_PTP_NONE)
> > +	if (ptp->tx_tstamp_access !=3D IDPF_PTP_NONE &&
> > +	    ptp->get_dev_clk_time_access !=3D IDPF_PTP_NONE)
> >  		idpf_ptp_release_tstamp(adapter);
> > =20
> > -	if (ptp->clock)
> > +	if (ptp->clock) {
> > +		ptp_cancel_worker_sync(adapter->ptp->clock);
> >  		ptp_clock_unregister(ptp->clock);
> > +	}
> > =20
> >  	kfree(ptp);
> >  	adapter->ptp =3D NULL;
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/e=
thernet/intel/idpf/idpf_ptp.h
> > index 642e875a5798..55e61cf5ddb0 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> > @@ -131,6 +131,7 @@ struct idpf_ptp_tx_tstamp {
> >   * @lock_in_use: the lock to the used latches list
> >   * @lock_free: the lock to free the latches list
> >   * @lock_status: the lock to the status tracker
> > + * @access: indicates an access to Tx timestamp
> >   * @latches_free: the list of the free Tx timestamps latches
> >   * @latches_in_use: the list of the used Tx timestamps latches
> >   * @tx_tstamp_status: Tx tstamp status tracker
> > @@ -142,6 +143,7 @@ struct idpf_ptp_vport_tx_tstamp_caps {
> >  	spinlock_t lock_in_use;
> >  	spinlock_t lock_free;
> >  	spinlock_t lock_status;
> > +	bool access:1;
> >  	struct list_head latches_free;
> >  	struct list_head latches_in_use;
> >  	struct idpf_ptp_tx_tstamp_status tx_tstamp_status[];
> > @@ -155,6 +157,8 @@ struct idpf_ptp_vport_tx_tstamp_caps {
> >   * @base_incval: base increment value of the PTP clock
> >   * @max_adj: maximum adjustment of the PTP clock
> >   * @cmd: HW specific command masks
> > + * @cached_phc_time: a cached copy of the PHC time for timestamp exten=
sion
> > + * @cached_phc_jiffies: jiffies when cached_phc_time was last updated
> >   * @dev_clk_regs: the set of registers to access the device clock
> >   * @caps: PTP capabilities negotiated with the Control Plane
> >   * @get_dev_clk_time_access: access type for getting the device clock =
time
> > @@ -172,6 +176,8 @@ struct idpf_ptp {
> >  	u64 base_incval;
> >  	u64 max_adj;
> >  	struct idpf_ptp_cmd cmd;
> > +	u64 cached_phc_time;
> > +	unsigned long cached_phc_jiffies;
> >  	struct idpf_ptp_dev_clk_regs dev_clk_regs;
> >  	u32 caps;
> >  	enum idpf_ptp_access get_dev_clk_time_access:2;
> > @@ -181,6 +187,7 @@ struct idpf_ptp {
> >  	enum idpf_ptp_access tx_tstamp_access:2;
> >  	u8 rsv:6;
> >  	struct idpf_ptp_secondary_mbx secondary_mbx;
> > +
> >  };
> > =20
> >  /**
> > @@ -234,6 +241,7 @@ int idpf_ptp_init(struct idpf_adapter *adapter);
> >  void idpf_ptp_release(struct idpf_adapter *adapter);
> >  int idpf_ptp_get_caps(struct idpf_adapter *adapter);
> >  void idpf_ptp_get_features_access(const struct idpf_adapter *adapter);
> > +bool idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_queue *txq);
> >  int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
> >  			      struct idpf_ptp_dev_timers *dev_clk_time);
> >  int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
> > @@ -242,6 +250,14 @@ int idpf_ptp_set_dev_clk_time(struct idpf_adapter =
*adapter, u64 time);
> >  int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval=
);
> >  int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta)=
;
> >  int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport);
> > +int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport);
> > +int idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
> > +				struct kernel_hwtstamp_config *config);
> > +u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u64 in_tstamp);
> > +u64 idpf_ptp_tstamp_extend_32b_to_64b(u64 cached_phc_time, u32 in_time=
stamp);
> > +int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q, struct sk_buff *sk=
b,
> > +			u32 *idx);
> > +void idpf_tstamp_task(struct work_struct *work);
> >  #else /* CONFIG_PTP_1588_CLOCK */
> >  static inline int idpf_ptp_init(struct idpf_adapter *adapter)
> >  {
> > @@ -258,6 +274,12 @@ static inline int idpf_ptp_get_caps(struct idpf_ad=
apter *adapter)
> >  static inline void
> >  idpf_ptp_get_features_access(const struct idpf_adapter *adapter) { }
> > =20
> > +static inline bool
> > +idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_queue *txq)
> > +{
> > +	return false;
> > +}
> > +
> >  static inline int
> >  idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
> >  			  struct idpf_ptp_dev_timers *dev_clk_time)
> > @@ -295,5 +317,35 @@ static inline int idpf_ptp_get_vport_tstamps_caps(=
struct idpf_vport *vport)
> >  	return -EOPNOTSUPP;
> >  }
> > =20
> > +static inline int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport)
> > +{
> > +	return -EOPNOTSUPP;
> > +}
> > +
> > +static inline int
> > +idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
> > +			    struct kernel_hwtstamp_config *config)
> > +{
> > +	return -EOPNOTSUPP;
> > +}
> > +
> > +static inline u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u32 in_=
tstamp)
> > +{
> > +	return 0;
> > +}
> > +
> > +static inline u64 idpf_ptp_tstamp_extend_32b_to_64b(u64 cached_phc_tim=
e,
> > +						    u32 in_timestamp)
> > +{
> > +	return 0;
> > +}
> > +
> > +static inline int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q,
> > +				      struct sk_buff *skb, u32 *idx)
> > +{
> > +	return -EOPNOTSUPP;
> > +}
> > +
> > +static inline void idpf_tstamp_task(struct work_struct *work) { }
> >  #endif /* CONFIG_PTP_1588_CLOCK */
> >  #endif /* _IDPF_PTP_H */
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/=
ethernet/intel/idpf/idpf_txrx.c
> > index 942f9a4eb0c2..8773683af96a 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > @@ -5,6 +5,7 @@
> >  #include <net/libeth/tx.h>
> > =20
> >  #include "idpf.h"
> > +#include "idpf_ptp.h"
> >  #include "idpf_virtchnl.h"
> > =20
> >  struct idpf_tx_stash {
> > @@ -1107,6 +1108,8 @@ void idpf_vport_queues_rel(struct idpf_vport *vpo=
rt)
> >   */
> >  static int idpf_vport_init_fast_path_txqs(struct idpf_vport *vport)
> >  {
> > +	struct idpf_ptp_vport_tx_tstamp_caps *caps =3D vport->tx_tstamp_caps;
> > +	struct work_struct *tstamp_task =3D &vport->tstamp_task;
> >  	int i, j, k =3D 0;
> > =20
> >  	vport->txqs =3D kcalloc(vport->num_txq, sizeof(*vport->txqs),
> > @@ -1121,6 +1124,12 @@ static int idpf_vport_init_fast_path_txqs(struct=
 idpf_vport *vport)
> >  		for (j =3D 0; j < tx_grp->num_txq; j++, k++) {
> >  			vport->txqs[k] =3D tx_grp->txqs[j];
> >  			vport->txqs[k]->idx =3D k;
> > +
> > +			if (!caps)
> > +				continue;
> > +
> > +			vport->txqs[k]->cached_tstamp_caps =3D caps;
> > +			vport->txqs[k]->tstamp_task =3D tstamp_task;
> >  		}
> >  	}
> > =20
> > @@ -1654,6 +1663,40 @@ static void idpf_tx_handle_sw_marker(struct idpf=
_tx_queue *tx_q)
> >  	wake_up(&vport->sw_marker_wq);
> >  }
> > =20
> > +/**
> > + * idpf_tx_read_tstamp - schedule a work to read Tx timestamp value
> > + * @txq: queue to read the timestamp from
> > + * @skb: socket buffer to provide Tx timestamp value
> > + *
> > + * Schedule a work to read Tx timestamp value generated once the packe=
t is
> > + * transmitted.
> > + */
> > +static void idpf_tx_read_tstamp(struct idpf_tx_queue *txq, struct sk_b=
uff *skb)
> > +{
> > +	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
> > +	struct idpf_ptp_tx_tstamp_status *tx_tstamp_status;
> > +
> > +	tx_tstamp_caps =3D txq->cached_tstamp_caps;
> > +	spin_lock_bh(&tx_tstamp_caps->lock_status);
> > +
> > +	for (u32 i =3D 0; i < tx_tstamp_caps->num_entries; i++) {
> > +		tx_tstamp_status =3D &tx_tstamp_caps->tx_tstamp_status[i];
> > +		if (tx_tstamp_status->state !=3D IDPF_PTP_FREE)
> > +			continue;
> > +
> > +		tx_tstamp_status->skb =3D skb;
> > +		tx_tstamp_status->state =3D IDPF_PTP_REQUEST;
> > +
> > +		/* Fetch timestamp from completion descriptor through
> > +		 * virtchnl msg to report to stack.
> > +		 */
> > +		queue_work(system_unbound_wq, txq->tstamp_task);
> > +		break;
> > +	}
> > +
> > +	spin_unlock_bh(&tx_tstamp_caps->lock_status);
> > +}
> > +
> >  /**
> >   * idpf_tx_clean_stashed_bufs - clean bufs that were stored for
> >   * out of order completions
> > @@ -1682,6 +1725,11 @@ static void idpf_tx_clean_stashed_bufs(struct id=
pf_tx_queue *txq,
> >  			continue;
> > =20
> >  		hash_del(&stash->hlist);
> > +
> > +		if (stash->buf.type =3D=3D LIBETH_SQE_SKB &&
> > +		    (skb_shinfo(stash->buf.skb)->tx_flags & SKBTX_IN_PROGRESS))
> > +			idpf_tx_read_tstamp(txq, stash->buf.skb);
> > +
> >  		libeth_tx_complete(&stash->buf, &cp);
> > =20
> >  		/* Push shadow buf back onto stack */
> > @@ -1876,8 +1924,12 @@ static bool idpf_tx_clean_buf_ring(struct idpf_t=
x_queue *txq, u16 compl_tag,
> >  		     idpf_tx_buf_compl_tag(tx_buf) !=3D compl_tag))
> >  		return false;
> > =20
> > -	if (tx_buf->type =3D=3D LIBETH_SQE_SKB)
> > +	if (tx_buf->type =3D=3D LIBETH_SQE_SKB) {
> > +		if (skb_shinfo(tx_buf->skb)->tx_flags & SKBTX_IN_PROGRESS)
> > +			idpf_tx_read_tstamp(txq, tx_buf->skb);
> > +
> >  		libeth_tx_complete(tx_buf, &cp);
> > +	}
> > =20
> >  	idpf_tx_clean_buf_ring_bump_ntc(txq, idx, tx_buf);
> > =20
> > @@ -2296,7 +2348,7 @@ void idpf_tx_dma_map_error(struct idpf_tx_queue *=
txq, struct sk_buff *skb,
> >  		 * descriptor. Reset that here.
> >  		 */
> >  		tx_desc =3D &txq->flex_tx[idx];
> > -		memset(tx_desc, 0, sizeof(struct idpf_flex_tx_ctx_desc));
> > +		memset(tx_desc, 0, sizeof(*tx_desc));
> >  		if (idx =3D=3D 0)
> >  			idx =3D txq->desc_count;
> >  		idx--;
> > @@ -2699,10 +2751,10 @@ static bool idpf_chk_linearize(struct sk_buff *=
skb, unsigned int max_bufs,
> >   * Since the TX buffer rings mimics the descriptor ring, update the tx=
 buffer
> >   * ring entry to reflect that this index is a context descriptor
> >   */
> > -static struct idpf_flex_tx_ctx_desc *
> > +static union idpf_flex_tx_ctx_desc *
> >  idpf_tx_splitq_get_ctx_desc(struct idpf_tx_queue *txq)
> >  {
> > -	struct idpf_flex_tx_ctx_desc *desc;
> > +	union idpf_flex_tx_ctx_desc *desc;
> >  	int i =3D txq->next_to_use;
> > =20
> >  	txq->tx_buf[i].type =3D LIBETH_SQE_CTX;
> > @@ -2732,6 +2784,73 @@ netdev_tx_t idpf_tx_drop_skb(struct idpf_tx_queu=
e *tx_q, struct sk_buff *skb)
> >  	return NETDEV_TX_OK;
> >  }
> > =20
> > +#if (IS_ENABLED(CONFIG_PTP_1588_CLOCK))
> > +/**
> > + * idpf_tx_tstamp - set up context descriptor for hardware timestamp
> > + * @tx_q: queue to send buffer on
> > + * @skb: pointer to the SKB we're sending
> > + * @off: pointer to the offload struct
> > + *
> > + * Return: Positive index number on success, negative otherwise.
> > + */
> > +static int idpf_tx_tstamp(struct idpf_tx_queue *tx_q, struct sk_buff *=
skb,
> > +			  struct idpf_tx_offload_params *off)
> > +{
> > +	int err, idx;
> > +
> > +	/* only timestamp the outbound packet if the user has requested it */
> > +	if (likely(!(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)))
> > +		return -1;
> > +
> > +	if (!idpf_ptp_get_txq_tstamp_capability(tx_q))
> > +		return -1;
> > +
> > +	/* Tx timestamps cannot be sampled when doing TSO */
> > +	if (off->tx_flags & IDPF_TX_FLAGS_TSO)
> > +		return -1;
> > +
> > +	/* Grab an open timestamp slot */
> > +	err =3D idpf_ptp_request_ts(tx_q, skb, &idx);
> > +	if (err) {
> > +		u64_stats_update_begin(&tx_q->stats_sync);
> > +		u64_stats_inc(&tx_q->q_stats.tstamp_skipped);
> > +		u64_stats_update_end(&tx_q->stats_sync);
> > +
> > +		return -1;
> > +	}
> > +
> > +	off->tx_flags |=3D IDPF_TX_FLAGS_TSYN;
> > +
> > +	return idx;
> > +}
> > +
> > +/**
> > + * idpf_tx_set_tstamp_desc - Set the Tx descriptor fields needed to ge=
nerate
> > + *			     PHY Tx timestamp
> > + * @ctx_desc: Context descriptor
> > + * @idx: Index of the Tx timestamp latch
> > + */
> > +static void idpf_tx_set_tstamp_desc(union idpf_flex_tx_ctx_desc *ctx_d=
esc,
> > +				    u32 idx)
> > +{
> > +	ctx_desc->tsyn.qw1 =3D le64_encode_bits(IDPF_TX_DESC_DTYPE_CTX,
> > +					      IDPF_TX_CTX_DTYPE_M) |
> > +			     le64_encode_bits(IDPF_TX_CTX_DESC_TSYN,
> > +					      IDPF_TX_CTX_CMD_M) |
> > +			     le64_encode_bits(idx, IDPF_TX_CTX_TSYN_REG_M);
> > +}
> > +#else /* CONFIG_PTP_1588_CLOCK */
> > +static int idpf_tx_tstamp(struct idpf_tx_queue *tx_q, struct sk_buff *=
skb,
> > +			  struct idpf_tx_offload_params *off)
> > +{
> > +	return -1;
> > +}
> > +
> > +static void idpf_tx_set_tstamp_desc(union idpf_flex_tx_ctx_desc *ctx_d=
esc,
> > +				    u32 idx)
> > +{ }
> > +#endif /* CONFIG_PTP_1588_CLOCK */
> > +
> >  /**
> >   * idpf_tx_splitq_frame - Sends buffer on Tx ring using flex descripto=
rs
> >   * @skb: send buffer
> > @@ -2743,9 +2862,10 @@ static netdev_tx_t idpf_tx_splitq_frame(struct s=
k_buff *skb,
> >  					struct idpf_tx_queue *tx_q)
> >  {
> >  	struct idpf_tx_splitq_params tx_params =3D { };
> > +	union idpf_flex_tx_ctx_desc *ctx_desc;
> >  	struct idpf_tx_buf *first;
> >  	unsigned int count;
> > -	int tso;
> > +	int tso, idx;
> > =20
> >  	count =3D idpf_tx_desc_count_required(tx_q, skb);
> >  	if (unlikely(!count))
> > @@ -2765,8 +2885,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk=
_buff *skb,
> > =20
> >  	if (tso) {
> >  		/* If tso is needed, set up context desc */
> > -		struct idpf_flex_tx_ctx_desc *ctx_desc =3D
> > -			idpf_tx_splitq_get_ctx_desc(tx_q);
> > +		ctx_desc =3D idpf_tx_splitq_get_ctx_desc(tx_q);
> > =20
> >  		ctx_desc->tso.qw1.cmd_dtype =3D
> >  				cpu_to_le16(IDPF_TX_DESC_DTYPE_FLEX_TSO_CTX |
> > @@ -2784,6 +2903,12 @@ static netdev_tx_t idpf_tx_splitq_frame(struct s=
k_buff *skb,
> >  		u64_stats_update_end(&tx_q->stats_sync);
> >  	}
> > =20
> > +	idx =3D idpf_tx_tstamp(tx_q, skb, &tx_params.offload);
> > +	if (idx !=3D -1) {
> > +		ctx_desc =3D idpf_tx_splitq_get_ctx_desc(tx_q);
> > +		idpf_tx_set_tstamp_desc(ctx_desc, idx);
> > +	}
> > +
> >  	/* record the location of the first descriptor for this packet */
> >  	first =3D &tx_q->tx_buf[tx_q->next_to_use];
> >  	first->skb =3D skb;
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/=
ethernet/intel/idpf/idpf_txrx.h
> > index cd9a20c9cc7f..418a99d5c4e3 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> > @@ -142,6 +142,7 @@ do {								\
> >  #define IDPF_TX_FLAGS_IPV4		BIT(1)
> >  #define IDPF_TX_FLAGS_IPV6		BIT(2)
> >  #define IDPF_TX_FLAGS_TUNNEL		BIT(3)
> > +#define IDPF_TX_FLAGS_TSYN		BIT(4)
> > =20
> >  union idpf_tx_flex_desc {
> >  	struct idpf_flex_tx_desc q; /* queue based scheduling */
> > @@ -445,6 +446,7 @@ struct idpf_tx_queue_stats {
> >  	u64_stats_t q_busy;
> >  	u64_stats_t skb_drops;
> >  	u64_stats_t dma_map_errs;
> > +	u64_stats_t tstamp_skipped;
> >  };
> > =20
> >  #define IDPF_ITR_DYNAMIC	1
> > @@ -619,6 +621,8 @@ libeth_cacheline_set_assert(struct idpf_rx_queue, 6=
4,
> >   * @compl_tag_bufid_m: Completion tag buffer id mask
> >   * @compl_tag_cur_gen: Used to keep track of current completion tag ge=
neration
> >   * @compl_tag_gen_max: To determine when compl_tag_cur_gen should be r=
eset
> > + * @cached_tstamp_caps: Tx timestamp capabilities negotiated with the =
CP
> > + * @tstamp_task: Work that handles Tx timestamp read
> >   * @stats_sync: See struct u64_stats_sync
> >   * @q_stats: See union idpf_tx_queue_stats
> >   * @q_id: Queue id
> > @@ -632,7 +636,7 @@ struct idpf_tx_queue {
> >  		struct idpf_base_tx_desc *base_tx;
> >  		struct idpf_base_tx_ctx_desc *base_ctx;
> >  		union idpf_tx_flex_desc *flex_tx;
> > -		struct idpf_flex_tx_ctx_desc *flex_ctx;
> > +		union idpf_flex_tx_ctx_desc *flex_ctx;
> > =20
> >  		void *desc_ring;
> >  	};
> > @@ -668,6 +672,9 @@ struct idpf_tx_queue {
> >  	u16 compl_tag_cur_gen;
> >  	u16 compl_tag_gen_max;
> > =20
> > +	struct idpf_ptp_vport_tx_tstamp_caps *cached_tstamp_caps;
> > +	struct work_struct *tstamp_task;
> > +
> >  	struct u64_stats_sync stats_sync;
> >  	struct idpf_tx_queue_stats q_stats;
> >  	__cacheline_group_end_aligned(read_write);
> > @@ -681,7 +688,7 @@ struct idpf_tx_queue {
> >  	__cacheline_group_end_aligned(cold);
> >  };
> >  libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
> > -			    88 + sizeof(struct u64_stats_sync),
> > +			    112 + sizeof(struct u64_stats_sync),
> >  			    24);
> > =20
> >  /**
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/=
net/ethernet/intel/idpf/idpf_virtchnl.c
> > index ad2135a9ca48..12e7e80b090e 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > @@ -3163,8 +3163,12 @@ void idpf_vport_init(struct idpf_vport *vport, s=
truct idpf_vport_max_q *max_q)
> >  		return;
> > =20
> >  	err =3D idpf_ptp_get_vport_tstamps_caps(vport);
> > -	if (err)
> > +	if (err) {
> >  		pci_dbg(vport->adapter->pdev, "Tx timestamping not supported\n");
> > +		return;
> > +	}
> > +
> > +	INIT_WORK(&vport->tstamp_task, idpf_tstamp_task);
> >  }
> > =20
> >  /**
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/driv=
ers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> > index de741910b79f..efdc9adc2f99 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> > @@ -382,7 +382,9 @@ int idpf_ptp_get_vport_tstamps_caps(struct idpf_vpo=
rt *vport)
> >  		goto get_tstamp_caps_out;
> >  	}
> > =20
> > +	tstamp_caps->access =3D true;
> >  	tstamp_caps->num_entries =3D num_latches;
> > +
> >  	INIT_LIST_HEAD(&tstamp_caps->latches_in_use);
> >  	INIT_LIST_HEAD(&tstamp_caps->latches_free);
> > =20
> > @@ -425,6 +427,9 @@ int idpf_ptp_get_vport_tstamps_caps(struct idpf_vpo=
rt *vport)
> >  	vport->tx_tstamp_caps =3D tstamp_caps;
> >  	kfree(rcv_tx_tstamp_caps);
> > =20
> > +	/* Init mutex to protect tstamp statistics */
> > +	mutex_init(&vport->tstamp_stats.tx_hwtstamp_lock);
> > +
> >  	return 0;
> > =20
> >  err_free_ptp_tx_stamp_list:
> > @@ -440,3 +445,233 @@ int idpf_ptp_get_vport_tstamps_caps(struct idpf_v=
port *vport)
> > =20
> >  	return err;
> >  }
> > +
> > +/**
> > + * idpf_ptp_update_tstamp_tracker - Update the Tx timestamp tracker ba=
sed on
> > + *				    the skb compatibility.
> > + * @caps: Tx timestamp capabilities that monitor the latch status
> > + * @skb: skb for which the tstamp value is returned through virtchnl m=
essage
> > + * @current_state: Current state of the Tx timestamp latch
> > + * @expected_state: Expected state of the Tx timestamp latch
> > + *
> > + * Find a proper skb tracker for which the Tx timestamp is received an=
d change
> > + * the state to expected value.
> > + *
> > + * Return: true if the tracker has been found and updated, false other=
wise.
> > + */
> > +static bool
> > +idpf_ptp_update_tstamp_tracker(struct idpf_ptp_vport_tx_tstamp_caps *c=
aps,
> > +			       struct sk_buff *skb,
> > +			       enum idpf_ptp_tx_tstamp_state current_state,
> > +			       enum idpf_ptp_tx_tstamp_state expected_state)
> > +{
> > +	bool updated =3D false;
> > +
> > +	spin_lock(&caps->lock_status);
> > +	for (u16 i =3D 0; i < caps->num_entries; i++) {
> > +		struct idpf_ptp_tx_tstamp_status *status;
> > +
> > +		status =3D &caps->tx_tstamp_status[i];
> > +
> > +		if (skb =3D=3D status->skb && status->state =3D=3D current_state) {
> > +			status->state =3D expected_state;
> > +			updated =3D true;
> > +			break;
> > +		}
> > +	}
> > +	spin_unlock(&caps->lock_status);
> > +
> > +	return updated;
> > +}
> > +
> > +/**
> > + * idpf_ptp_get_tstamp_value - Get the Tx timestamp value and provide =
it
> > + *			       back to the skb.
> > + * @vport: Virtual port structure
> > + * @tstamp_latch: Tx timestamp latch structure fulfilled by the Contro=
l Plane
> > + * @ptp_tx_tstamp: Tx timestamp latch to add to the free list
> > + *
> > + * Read the value of the Tx timestamp for a given latch received from =
the
> > + * Control Plane, extend it to 64 bit and provide back to the skb.
> > + *
> > + * Return: 0 on success, -errno otherwise.
> > + */
> > +static int
> > +idpf_ptp_get_tstamp_value(struct idpf_vport *vport,
> > +			  struct virtchnl2_ptp_tx_tstamp_latch *tstamp_latch,
> > +			  struct idpf_ptp_tx_tstamp *ptp_tx_tstamp)
> > +{
> > +	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
> > +	struct skb_shared_hwtstamps shhwtstamps;
> > +	bool state_upd =3D false;
> > +	u8 tstamp_ns_lo_bit;
> > +	u64 tstamp;
> > +
> > +	tx_tstamp_caps =3D vport->tx_tstamp_caps;
> > +	tstamp_ns_lo_bit =3D tx_tstamp_caps->tstamp_ns_lo_bit;
> > +
> > +	ptp_tx_tstamp->tstamp =3D le64_to_cpu(tstamp_latch->tstamp);
> > +	ptp_tx_tstamp->tstamp >>=3D tstamp_ns_lo_bit;
> > +
> > +	state_upd =3D idpf_ptp_update_tstamp_tracker(tx_tstamp_caps,
> > +						   ptp_tx_tstamp->skb,
> > +						   IDPF_PTP_READ_VALUE,
> > +						   IDPF_PTP_FREE);
> > +	if (!state_upd)
> > +		return -EINVAL;
> > +
> > +	tstamp =3D idpf_ptp_extend_ts(vport, ptp_tx_tstamp->tstamp);
> > +	shhwtstamps.hwtstamp =3D ns_to_ktime(tstamp);
> > +	skb_tstamp_tx(ptp_tx_tstamp->skb, &shhwtstamps);
> > +	consume_skb(ptp_tx_tstamp->skb);
> > +
> > +	spin_lock(&tx_tstamp_caps->lock_free);
> > +	list_add(&ptp_tx_tstamp->list_member,
> > +		 &tx_tstamp_caps->latches_free);
> > +	spin_unlock(&tx_tstamp_caps->lock_free);
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * idpf_ptp_get_tx_tstamp_async_handler - Async callback for getting T=
x tstamps
> > + * @adapter: Driver specific private structure
> > + * @xn: transaction for message
> > + * @ctlq_msg: received message
> > + *
> > + * Read the tstamps Tx tstamp values from a received message and put t=
hem
> > + * directly to the skb. The number of timestamps to read is specified =
by
> > + * the virtchnl message.
> > + *
> > + * Return: 0 on success, -errno otherwise.
> > + */
> > +static int
> > +idpf_ptp_get_tx_tstamp_async_handler(struct idpf_adapter *adapter,
> > +				     struct idpf_vc_xn *xn,
> > +				     const struct idpf_ctlq_msg *ctlq_msg)
> > +{
> > +	struct virtchnl2_ptp_get_vport_tx_tstamp_latches *recv_tx_tstamp_msg;
> > +	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
> > +	struct virtchnl2_ptp_tx_tstamp_latch tstamp_latch;
> > +	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp;
> > +	struct idpf_vport *tstamp_vport =3D NULL;
> > +	struct list_head *head;
> > +	u16 num_latches;
> > +	u32 vport_id;
> > +	int err;
> > +
> > +	recv_tx_tstamp_msg =3D ctlq_msg->ctx.indirect.payload->va;
> > +	vport_id =3D le32_to_cpu(recv_tx_tstamp_msg->vport_id);
> > +
> > +	idpf_for_each_vport(adapter, vport) {
> > +		if (!vport)
> > +			continue;
> > +
> > +		if (vport->vport_id =3D=3D vport_id) {
> > +			tstamp_vport =3D vport;
> > +			break;
> > +		}
> > +	}
> > +
> > +	if (!tstamp_vport || !tstamp_vport->tx_tstamp_caps)
> > +		return -EINVAL;
> > +
> > +	tx_tstamp_caps =3D tstamp_vport->tx_tstamp_caps;
> > +	num_latches =3D le16_to_cpu(recv_tx_tstamp_msg->num_latches);
> > +
> > +	head =3D &tx_tstamp_caps->latches_in_use;
> > +	spin_lock(&tx_tstamp_caps->lock_in_use);
> > +
> > +	for (u16 i =3D 0; i < num_latches; i++) {
> > +		tstamp_latch =3D recv_tx_tstamp_msg->tstamp_latches[i];
> > +
> > +		if (!tstamp_latch.valid)
> > +			continue;
> > +
> > +		if (list_empty(head)) {
> > +			err =3D -ENOBUFS;
> > +			goto unlock;
> > +		}
> > +
> > +		list_for_each_entry(ptp_tx_tstamp, head, list_member) {
> > +			if (tstamp_latch.index =3D=3D ptp_tx_tstamp->idx) {
> > +				list_del(&ptp_tx_tstamp->list_member);
>=20
> need list_for_each_entry_safe when calling list_del on members.
>=20
> > +				err =3D idpf_ptp_get_tstamp_value(tstamp_vport,
> > +								&tstamp_latch,
> > +								ptp_tx_tstamp);
> > +				if (err)
> > +					goto unlock;
> > +
> > +				break;
> > +			}
> > +		}
> > +	}
> > +
> > +unlock:
> > +	spin_unlock(&tx_tstamp_caps->lock_in_use);
> > +
> > +	return err;
> > +}
> > +
> > +/**
> > + * idpf_ptp_get_tx_tstamp - Send virtchnl get Tx timestamp latches mes=
sage
> > + * @vport: Virtual port structure
> > + *
> > + * Send virtchnl get Tx tstamp message to read the value of the HW tim=
estamp.
> > + * The message contains a list of indexes set in the Tx descriptors.
> > + *
> > + * Return: 0 on success, -errno otherwise.
> > + */
> > +int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport)
> > +{
> > +	struct virtchnl2_ptp_get_vport_tx_tstamp_latches *send_tx_tstamp_msg;
> > +	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
> > +	struct idpf_vc_xn_params xn_params =3D {
> > +		.vc_op =3D VIRTCHNL2_OP_PTP_GET_VPORT_TX_TSTAMP,
> > +		.timeout_ms =3D IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
> > +		.async =3D true,
> > +		.async_handler =3D idpf_ptp_get_tx_tstamp_async_handler,
> > +	};
> > +	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp;
> > +	int reply_sz, size, msg_size;
> > +	struct list_head *head;
> > +	bool state_upd;
> > +	u16 id =3D 0;
> > +
> > +	tx_tstamp_caps =3D vport->tx_tstamp_caps;
> > +	head =3D &tx_tstamp_caps->latches_in_use;
> > +
> > +	size =3D struct_size(send_tx_tstamp_msg, tstamp_latches,
> > +			   tx_tstamp_caps->num_entries);
> > +	send_tx_tstamp_msg =3D kzalloc(size, GFP_KERNEL);
> > +	if (!send_tx_tstamp_msg)
> > +		return -ENOMEM;
> > +
> > +	spin_lock(&tx_tstamp_caps->lock_in_use);
> > +	list_for_each_entry(ptp_tx_tstamp, head, list_member) {
> > +		u8 idx;
> > +
> > +		state_upd =3D idpf_ptp_update_tstamp_tracker(tx_tstamp_caps,
> > +							   ptp_tx_tstamp->skb,
> > +							   IDPF_PTP_REQUEST,
> > +							   IDPF_PTP_READ_VALUE);
> > +		if (!state_upd)
> > +			continue;
> > +
> > +		idx =3D ptp_tx_tstamp->idx;
> > +		send_tx_tstamp_msg->tstamp_latches[id].index =3D idx;
> > +		id++;
> > +	}
> > +	spin_unlock(&tx_tstamp_caps->lock_in_use);
> > +
> > +	msg_size =3D struct_size(send_tx_tstamp_msg, tstamp_latches, id);
> > +	send_tx_tstamp_msg->vport_id =3D cpu_to_le32(vport->vport_id);
> > +	send_tx_tstamp_msg->num_latches =3D cpu_to_le16(id);
> > +	xn_params.send_buf.iov_base =3D send_tx_tstamp_msg;
> > +	xn_params.send_buf.iov_len =3D msg_size;
> > +
> > +	reply_sz =3D idpf_vc_xn_exec(vport->adapter, &xn_params);
> > +	kfree(send_tx_tstamp_msg);
> > +
> > +	return min(reply_sz, 0);
> > +}
> > --=20
> > 2.31.1
> >
