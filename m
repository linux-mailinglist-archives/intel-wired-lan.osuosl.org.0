Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D864CBF091E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Oct 2025 12:36:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1AA2D419C3;
	Mon, 20 Oct 2025 10:36:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ExRtNMoOGXmP; Mon, 20 Oct 2025 10:36:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BC9641963
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760956571;
	bh=mshOZg9rENSGiKyslcYT8HEkGIRUj76poXQFN5UKpGU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mX1BnXJJRci5bxeA7W2UHROSVYCCAiK2wjzU863Otattp2S6naK2qFsdmW2WeNOPK
	 K5ZpVmzrPx4K0TMGFp5ODHs5zN4SMFt+fbNH46IZZXG1tTHJt0k2vCgZQ60qEcBTpd
	 2UsRHcwOLY/f9qL70wt4Pw3joTfNB7+NgSNP1ewJbnunP8WUay/kkUr7LFkEm8Epib
	 vdDMJ9c3yzHnI2O025Tq/ukGYygfOmzu0/KoA6yihfZwGOAHlB0x2+58JZBr493FLf
	 mY4O5FXsGcppjgtvzuILSDr2vk3B9XpZaFEzPzN4a4T7/V+8xG6Aoi+bJKEEcMLc29
	 ylmPIJBSSyaCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BC9641963;
	Mon, 20 Oct 2025 10:36:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5C6751CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Oct 2025 10:36:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 421A761446
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Oct 2025 10:36:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ioydUxxF3Y-k for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Oct 2025 10:36:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4B7546143B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B7546143B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4B7546143B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Oct 2025 10:36:08 +0000 (UTC)
X-CSE-ConnectionGUID: doffSg7pRYeQaogIV0UYug==
X-CSE-MsgGUID: 7k10TshETBWJy4p4MF0D+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11587"; a="88538402"
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="88538402"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 03:36:07 -0700
X-CSE-ConnectionGUID: Iy5NusTMT26820bmmZYU8w==
X-CSE-MsgGUID: eSaMygs/S/iv5qNTQLZJhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="182487289"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 03:36:08 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 03:36:07 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 20 Oct 2025 03:36:07 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.69) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 03:36:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=slP5yG39mNrl6K8VUD8eNcHR7XDxDdjAWJb23qzbA5fpWReg1FkBTL6M08OvvkcF18w6UCr3uOapCFDWr2Gy5YY2mbCPp2wDiI6uKKaimZq7QDjY2fvebdZhLE5P4rGUXt8eacKSrJniUUpamU4KW0NKAJelNBzdhF5C2LtK48p76l8eXTNY/+pFADzwtvN/9ntm8u5OmCHm1PJ4YOWHet8sgHnYVonRu0+WWD6dl8znsLsmWzXPWG0oetwaMxtEJ7M+YBxPLQE41rvg04umeGh41rM1eYWjI+TKTYAvNiO0d6cy0hkJPhnO2UhrQU4SsOBJzqP9YaZ3mTfuhcluhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mshOZg9rENSGiKyslcYT8HEkGIRUj76poXQFN5UKpGU=;
 b=U0pje0VJcLoIT9Rn29yXtfqd7esos/a8NP8Ue1QIiy9UmnbgPzz94oInxxyCVP+z41pIhxm5NJpMW1DB0RGY1F8agCP2SCxRfiHh+X1teF8mCRUMsP32cgXOOks+8W72RM+QsvVBdmQsKywMGlD+yPVQV1x30TFj9VrVTiARrMXIn9qmOm53gmkBjvFXUjeC/sM5K1lfekuyaCAcLbAV0/NdcmsVARCK4BVCrAIxqnQpdOkfsd/j88UfyXuXe/VJXAGMTHCRAtFAVi6NqqIZu3l40o4oE1qJarwa93vtkPpyF7SZ1VBIC3YMt4hB0b1mIoeSULKaOMUnE8/cgNGd5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.16; Mon, 20 Oct
 2025 10:36:04 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9228.014; Mon, 20 Oct 2025
 10:36:04 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Wegrzyn,
 Stefan" <stefan.wegrzyn@intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "kohei.enju@gmail.com" <kohei.enju@gmail.com>, 
 Koichiro Den <den@valinux.co.jp>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leak and
 use-after-free in ixgbe_recovery_probe()
Thread-Index: AQHcGraWxpP5XDedcUuXXroPaR1Em7TLJSKg
Date: Mon, 20 Oct 2025 10:36:04 +0000
Message-ID: <IA3PR11MB8986FC39FB0656584B181F8FE5F5A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250831203327.53155-1-enjuk@amazon.com>
In-Reply-To: <20250831203327.53155-1-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB7605:EE_
x-ms-office365-filtering-correlation-id: 6672c2fd-0005-409d-73ca-08de0fc47880
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?XbN3OmptWQv5cLjvHj9jcEJUfKtcNVPhKoBcMKhoRzRDnwcGk2mJTUao/Xnh?=
 =?us-ascii?Q?xBmtB/YqAFx49stNF1eoLjDxutT4OerczvjCnXIjtSB5pAFHAZugSt8r1fw2?=
 =?us-ascii?Q?DLMwWPRm6e+pRbnSi3tXU5+Q60fyUzebJPm9r2/7svqQIIYeVJf/wmRIJ+2L?=
 =?us-ascii?Q?30AsGz+H7KAEjNXKEBfYV1+lyMD3p43/kFj6x5DbwU9DzzyLU173EAdbOb3J?=
 =?us-ascii?Q?wfoC24MLp4qRj6LXLB2rOotg/jjn28QURe/uKc93xN07BdXRkN2FyQn2kdZu?=
 =?us-ascii?Q?Z235uI8jXDTXHIcOXPlsrmMVfyoshPLkpb8WrsIwlukm3xzOu75bQL6w9+wQ?=
 =?us-ascii?Q?o+GzyPAFecj+UgkpKk8XLQszkuj91Ze9wr++zUwQ0ZaRCgMd7IsXMNpWlcZp?=
 =?us-ascii?Q?Dwy5FjV+ncFgnm5IEih0yRaKaRg1CS5tA+raP/K9edFkVpVVvL1BxjPc5pLy?=
 =?us-ascii?Q?+vQ7m7xBBbVoATRzxtNVL+4LurwJYBCLHGfISPfGRq3HduzFuTF5oXA3DaJj?=
 =?us-ascii?Q?TeHVQnLYhSGDayQ0Ouc963QRb0Vi3P+sHFJwKFMKxTQFetX9DQo8jb4sEmmX?=
 =?us-ascii?Q?HqgMQ4R0rA7NZtZ0Ki2HOFXzcSLduCMdG+6gorfogP7tcDWjgEkJK8OkkGyx?=
 =?us-ascii?Q?+B/uZVbeag3BaSU7kxuISQoQzZPeSKad2/HLttY30hdoeH/SNo8dibEGUJD1?=
 =?us-ascii?Q?svLJLlXkn6HTw5l0yHCttMYDtAPCDRjBv5OSfyQA4eF1PzaDyGTMz9QGaYTa?=
 =?us-ascii?Q?3Egq4FeNLJVUzFjnsfNArMw0hUZoEvZdayt/qtgNpVk+7teR/Q/l1lbfczgf?=
 =?us-ascii?Q?uVU0T+2ZXKPacmVuTnKms0WeJm3OgrorvLYYZQ13YGLz2FZAix2hEmnw0kjn?=
 =?us-ascii?Q?OdmFFCWNw9on6fnZ6Nqko460IgpuLIc+OGCaS9wPOepmdOEnfh5CAE4snuXg?=
 =?us-ascii?Q?pMwnpEmYvk/fEDKa9saHS9glbD2pg+YaP0q9WjmZtxQdtLJU7dNGy12N+5Ff?=
 =?us-ascii?Q?EcdmhjSAZvFr2jHAazpB0d/67G1cnUnsbzbCNDpILFkdGsxdFrA4qT0ZA0bJ?=
 =?us-ascii?Q?RFDxEkiNod17hLFtpB4T5ozteXl8k8peVh7hMAYaIwsAv4MXX1Xjkd8stZFT?=
 =?us-ascii?Q?jC8t5OCHWOqxBRCzk75j2GDgPrUU5Cs8LTYDmTdNEGhXS8WfIjVCwA9n8o+Q?=
 =?us-ascii?Q?r84235AVJbmlV7TGV70spJCjBL/mejWaqUa+OR2qX50qf5zGsWJ9aurrQg+B?=
 =?us-ascii?Q?D7iCrcz3U8Rn2PFMUkMp8aH45Axrq9IoflafKwR8FIvgtE7dY2Sgeq8UiNg2?=
 =?us-ascii?Q?p8hCaTOPthiivHkKM0rfbIPe5+0+pwPMOJ+T2OWJHrsjxEabgUlDeyuoi31m?=
 =?us-ascii?Q?cbQUWodmhkXFrmQBwfI3b5+Ns5OGdtbT5MI2xaU9U4ZoDSog3vqoXSrEx387?=
 =?us-ascii?Q?N+/f8c3oPmS1NVIENJ/oCPoIxmV6T0TGfjOicAKD7LZJAiSw6gs4DbpbGfW6?=
 =?us-ascii?Q?YnfsbpiRhLkcEHsYqtct1xFvdIRAItVxq0QP?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RKJ/DNrhKhvh1Sh6ajVHSpxWovkA3PIzA9ZgOH0B4VW6qxTxXr5pGC5vn8mf?=
 =?us-ascii?Q?WWjf0F+YpFiM8Iwk1voXZw4387NpBogfwOTmIC17KrKVBJgeOBSW2LCB6A/g?=
 =?us-ascii?Q?z5IjvVS84WkuuMos3NkrboHShu+Y0nJ2CQabceOG1CAXRLNKnCztZA8s01p7?=
 =?us-ascii?Q?kLYcYN5TkoRK9UNUrOvQQLOGEbG9xIDQKVVBU4PjJ14cU7VtOFU8OYu3dO9O?=
 =?us-ascii?Q?y/P4ghqsLUqjZA0gqug654Ync1vN9ggPm+7BJhbui51yXSpr653w62txc5WU?=
 =?us-ascii?Q?T/b9u83StXc/0OJ+d6PSzNQvpS59TkOlGbOsJ/psvV62TIN6sif6WiZEAD/L?=
 =?us-ascii?Q?d+X3ZJkzCEGnPsJ96BqI4WuA5I7Z81UE++06qsORNBUXkBfvfXnE8S/BZEKy?=
 =?us-ascii?Q?I13A1/Ls3MTwXucdNI5S3UEuhkQ+Q2+VDihzvfz+trDJC6GgqA4dNQPcf9n8?=
 =?us-ascii?Q?Be9ZzZFCbsS3Q+XUSixF1D4b8RRDkZ77CWhCyu7ashGt0k4cXHxr24ZmsmQx?=
 =?us-ascii?Q?eyA6dCvFuii+1zpWh/XJ/ljmz+tELag3DyOpOzu+2DX7RFTF9kyeqfQhq2HK?=
 =?us-ascii?Q?ZrbDNQkRMY6xm7xqMyPiTtW6ezGgszuo5yY+T8Wz7ETlw1vlu0ghxjJh35C1?=
 =?us-ascii?Q?rT+OKxQu1VMcFx//Kp4eHDBCol7liCp+q0OT7x76HxnpaaI8k3Vp731eAQpD?=
 =?us-ascii?Q?gqBEp1+Q85LC2ZBl2tbX30BXd7TjhKpW4q4hkQFXOjf3L/7encuCcnhnG7wz?=
 =?us-ascii?Q?v3Y7xXOc+wdcOwniEEYVvIPXX1uO/PzwqkfmfsDJD1nkJfbZ6tO5y+t+6QTs?=
 =?us-ascii?Q?Jt3GIgl8doRJyiea3dw6y3zYM/IkHJIBeViIDEL1hWTSKwKDUTe1nBcfP0DL?=
 =?us-ascii?Q?kU9mzxRwtuDQRwjQhhl6QpjZiSHKA5tRkUae64rQ6H4RLeEiBTmnL13GdQYF?=
 =?us-ascii?Q?8R0qYjXP6HGWmDfR5Z3BJF66gquSIFqov52FOKFNaKpzKVadwV9FNP14nmV5?=
 =?us-ascii?Q?/PJQETBOdDu55tnF1azcXrSOqT/LEht/jgJZl3N49HKfhgB/2XP3koJzCAgL?=
 =?us-ascii?Q?wi1D9wC4XtSKH+91w+RaK/UT0uCXwBpiLmD1rrCKMo8lyHOCecw54wDZG0XI?=
 =?us-ascii?Q?JJaEaMvQMYsdAEN2fxTk84eU56GIm2cSzHxnMrWhLrVfqzkeAz7Ijz67bY2n?=
 =?us-ascii?Q?Nk6OdOVVGtoMTAMCvno8OdBNXb8sftzu4z7yo04LlJbmZfyntBZ6XYWb0c8/?=
 =?us-ascii?Q?ljJykas7wnIX+JpW5GxfVMnW5H8akp7+54BMf+CtLKV0ueGg/bFpzKLZkwyi?=
 =?us-ascii?Q?OChIVytw5p+IXod0bSAy4jx4o1rS2F2EgjG31oSYvgsdy8d4sXLh5G2ugnkQ?=
 =?us-ascii?Q?PY3wNMMbE9ROUXAyRAmh+f6eAuriQKjJSgWjUK/RRg9PwrYnNVp2gd8D010U?=
 =?us-ascii?Q?QYme58KIdmPc//TqpGlsD9cbSSVnt+d8U1dB4nhWliIPKoYOvup6H1U/WirW?=
 =?us-ascii?Q?prfLdySRFD/tBJ3H2vFjVqNeIHGAFavrgERvzqqaEmAgPiYR7VPkr44nOjRy?=
 =?us-ascii?Q?n7Cj3KhTf/zvUpmJ2CbyhdvJ3o0BdUw28t8Ag4+1E85S4DDWddWfrm5oj2N7?=
 =?us-ascii?Q?jw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6672c2fd-0005-409d-73ca-08de0fc47880
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2025 10:36:04.2660 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qivS4L68gyOWYBxa++N8C1Dsahv3WpDwcSaHm0uMx4/AVhh3ONONYaf4aPI1JjHYBTQ983J1gg8U5m+iuWGfL/XEOCLU8+BS7JgrKlwTxd4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7605
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760956568; x=1792492568;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1GxOYM2VO0Ip3BvG/m50n6eUyuADJ7nhXm4d5jUQAj4=;
 b=SiQyPKN4EF45IS9z7rlAYNEOltgPKwz+V2UlZ17Go7Ukqy22q5XNaGZg
 kcRJ/4a5Tkrqf/MM2ivvPuiVibWxVyhoBGTWXXc/I3ndGwT2AE4L1Kimy
 mrsjTCs2rHbBibtDBxqPaUuIsMjjHfRxJzi/ddYw43BlH8E97Gx3WHb1a
 CJbpXpLeEWTpe1mQ15qSjPklabhf0lGOiceTLpCjcXVtVlBv1HIwJj/rJ
 ee/0i2rtNlDAik8VuzqQto+EcMhfhlGi2WmpXF+17HdlDk+XvTfP54/IV
 svWCM1F91MlXuidkWNdR54TlXMIE4xkLExHTKm8CFwSpiQCajzY+BDpws
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SiQyPKN4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leak and
 use-after-free in ixgbe_recovery_probe()
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kohei Enju
> Sent: Sunday, August 31, 2025 10:33 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Wegrzyn, Stefan <stefan.wegrzyn@intel.com>;
> Mateusz Polchlopek <mateusz.polchlopek@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>; kohei.enju@gmail.com; Kohei Enju
> <enjuk@amazon.com>; Koichiro Den <den@valinux.co.jp>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leak
> and use-after-free in ixgbe_recovery_probe()
>=20
> The error path of ixgbe_recovery_probe() has two memory bugs.
>=20
> For non-E610 adapters, the function jumps to clean_up_probe without
> calling devlink_free(), leaking the devlink instance and its embedded
> adapter structure.
>=20
> For E610 adapters, devlink_free() is called at shutdown_aci, but
> clean_up_probe then accesses adapter->state, sometimes triggering use-
> after-free because adapter is embedded in devlink. This UAF is similar
> to the one recently reported in ixgbe_remove(). (Link)
>=20
> Fix both issues by moving devlink_free() after adapter->state access,
> aligning with the cleanup order in ixgbe_probe().
>=20
> Link: https://lore.kernel.org/intel-wired-lan/20250828020558.1450422-
> 1-den@valinux.co.jp/
> Fixes: 29cb3b8d95c7 ("ixgbe: add E610 implementation of FW recovery
> mode")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
> Cc: Koichiro Den <den@valinux.co.jp>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index ff6e8ebda5ba..08368e2717c2 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -11510,10 +11510,10 @@ static int ixgbe_recovery_probe(struct
> ixgbe_adapter *adapter)
>  shutdown_aci:
>  	mutex_destroy(&adapter->hw.aci.lock);
>  	ixgbe_release_hw_control(adapter);
> -	devlink_free(adapter->devlink);
>  clean_up_probe:
>  	disable_dev =3D !test_and_set_bit(__IXGBE_DISABLED, &adapter-
> >state);
>  	free_netdev(netdev);
> +	devlink_free(adapter->devlink);
>  	pci_release_mem_regions(pdev);
>  	if (disable_dev)
>  		pci_disable_device(pdev);
> --
> 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
