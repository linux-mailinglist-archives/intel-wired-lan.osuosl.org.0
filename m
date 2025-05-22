Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D82CAC0E49
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 16:37:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 162FA83D2A;
	Thu, 22 May 2025 14:37:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sjDbs1_YaVWu; Thu, 22 May 2025 14:36:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DB1D83D2B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747924619;
	bh=rYIbelOPHV8HoltV7lrgCDgOu/C99M8dvBimvH5dxRM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rdIFYpj1v2krJFgErKMcOFwnCcay0b1QnBJ3EpKvWtZ2ZcFfeVW+jFOfWHf/adFh0
	 Wwz5ClJpa6FFT5tTbdQDUetIylv48IGuPZk0+r2AvO71yuLSkgLp+Sf3IMgv5C0JqV
	 Zn0ioCeqMgv+zyf7mTaucqEKzug+h00qHMmWRrUEYwK1FmslcHtR1hB3VR8uRf8bXB
	 kVhTlf+UDCpgUE2mp3CQ8KcZjp0WJ2iaffuns3nMAnA9Dp2sDvNBenzK94bGC9UQYd
	 490Ftvw3uaGNJBsloyW3J62FdiNVF3fsVzxE98OOzGPy0xaiARHENo85xIrjAtQWSM
	 dxsKzZCW4vAIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DB1D83D2B;
	Thu, 22 May 2025 14:36:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 96F5C221
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:36:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7CD4683D29
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:36:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 37T8cfbV_ubz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 14:36:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C3BB383D28
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3BB383D28
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C3BB383D28
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:36:55 +0000 (UTC)
X-CSE-ConnectionGUID: B9XZ4jdIQcaSv1LG9cNSzQ==
X-CSE-MsgGUID: +QfIaz05QXKLM6JxeHpcFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="49872637"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="49872637"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:36:55 -0700
X-CSE-ConnectionGUID: wEmoL9L9S9GMVd6+FrAr9A==
X-CSE-MsgGUID: bdiNs2u7SxesMsnqMYzMYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="140508405"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:36:55 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 07:36:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 07:36:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 07:36:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D7QAt6Hpb9b0/U+z/rSXQRHnZ/cSfYsKWCQ87JEylJrvDyASgZJVZrOMk1aOtG04CH+bSi++Q/vIJP6a9BE2wZrDaRksFkx7jIbU1cRjA5VZOvXGPaEDjuGGz0GyqYgakwE3biZtHu0Fxwe4XJ85uamYeJv1KluFT6iva1EKZ/5ANg1f9zvJ8obisj27iEmdKOp7je8qg2Sgn4Xu5jnSXhQUXObMJbD1wAm7ie2NS+TSiYhkw/FZH8xMEj0tXSqHZl9tO8k8OXrWAKkbHKOBIVlTxYQr6q41MRbl4lXGaCAqRIudi2wCem4VZKK+txdrDDaVYNm+FJ7xbzogij7ECQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rYIbelOPHV8HoltV7lrgCDgOu/C99M8dvBimvH5dxRM=;
 b=yTXj6y17ItrTADxc3W9JKYXjYb3yQwrd6NdS/CJKBoVXdswVrKt62gTfrMRimhdE8I+j15Eg1vivu+pftqNHpjwvRfNY48hFj6ksQz/2pTMTc4Nj9lb/8z8SsN/e+oxLHJmMAF7PabP6lOMZ0J8pUd940/Ca2LqTEDne0/jcZPE03DnPZ4OM9XnBXYoVXNCE/0Yy5++ifaYwCdYyWsqLl8DF8S11ri9OE+U+0AaoYBGBOBLzFlLCm5Q6QdlkeQbVLXvxR/gfbde+tqkQsI0pTs4x8DnEbjcJ625nBLgW9aj4WCLMy4IChRm32YAOptNi+IiITNPniM1Nooop9n0QBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SA3PR11MB8021.namprd11.prod.outlook.com (2603:10b6:806:2fd::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.21; Thu, 22 May
 2025 14:36:25 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 14:36:24 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, netdev <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v4 13/15] ice: fall back to TCXO on
 TSPLL lock fail
Thread-Index: AQHbuuwwtoJd+fCZi02XFc9Gyn19JbPe15Qw
Date: Thu, 22 May 2025 14:36:24 +0000
Message-ID: <IA1PR11MB62415694A917E46C2DA7BA518B99A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
 <20250501-kk-tspll-improvements-alignment-v4-13-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-13-24c83d0ce7a8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SA3PR11MB8021:EE_
x-ms-office365-filtering-correlation-id: d58ea8be-2657-4807-f307-08dd993e0735
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cEpMTjZ6YWdBOS81ZnNhdTA1MnJTNlR5UDZpR3M3K3Z4UlBhTHRsaDZJU3N2?=
 =?utf-8?B?YWFnSlYwN0hvY1FiU0VMQ0I2QTZGVERsZUMzVXNsRnBIMUlmN0xjSTFXWWUv?=
 =?utf-8?B?VzJFdEh2VC81aDltV1pqdkRSVVJ1V0djM1NKUzkzWXBJdFBUbCtvdDJZV1NB?=
 =?utf-8?B?ejk2OEdPemFGbE5GM2xWb2lRL0w3QXJLbTRTNnBaV2dTbjFwYWY3TXE1RXNz?=
 =?utf-8?B?N1Y5dnN5dWVSeUUrallpbFhrd0RDNkxQSzFtaThnbGJ1NHNoaVFHVHJuSTZ4?=
 =?utf-8?B?S1lNUjVobTUraWZIbW4yTWEzb3Q0ZnUzdmxxcUl2eC9DUkI0R1ZYeE9aRnJi?=
 =?utf-8?B?MGd5NGZQU2pNWEhBaGZ2TEZsdm12c0Y5UzdIWDZlcXhCQW1TVzFRL3ZDSy9p?=
 =?utf-8?B?VXBmK0RHNUFEeFMwKytzaE51bnRTZnlzeUd0eUVsYU9QWlIzYk9IN3l4cGQ3?=
 =?utf-8?B?bjFOQWtZTTRIN0VuOFJaditPU09DSFBsNW5KNWptaDVVMWRTcWtHYmw1WURp?=
 =?utf-8?B?Ti9BZDBYbHdFd2dwTWtpaE1sQlA3N3cxT2Nxdk9yemh0UjJoMWJiaVFObkx1?=
 =?utf-8?B?eE9HaUM4Qnc0VUxzK3dxMDVxUms1Y2hBbGpVS0Z3c2ZaeFZQcGFIa0swVzd5?=
 =?utf-8?B?VzFXTlBsY1hDczdkNWkyaHNkSkgzSFUrWFpkWCs5OVRyQnNRNmtlNjB3Q254?=
 =?utf-8?B?VWE3bi9NM0ZFQVVwL3RIYlJMWEgyUDlaRHhZQ3lrRGdHL0dDaDYvdlhRbWkr?=
 =?utf-8?B?VjJYaFpDRDdPTDAxWG5PczRaVVBSSVIveCtZenEvc0pnWlFMaXlocUt5V3Nx?=
 =?utf-8?B?TXZETlIrNU8yNmIvLzhCU2U0SVFPdFJTNktVWHpsR2VBZ2xxZDd0M1JQQ3Ix?=
 =?utf-8?B?V2paVUdVdjhyMnV5WnNvR3JaSVVveS81dDNrRENHRG00Q0xSVFRSdG81elJ1?=
 =?utf-8?B?cGdqc1NvMTNNVkhzeEU3KzVKa0xFYTEwNmNOeElGSVpzNW9lRzRDRGZjOHo5?=
 =?utf-8?B?aWpMa1hhMS9iaFMxWFlTQk0xNDdhZ0RhdkM2N2NFbXZiVEU5cmY2M0QvOU5U?=
 =?utf-8?B?L1l6cUM2YStHUUFQd2Jkb3NoL3hwUGNqYjBnaHhXZjlxdVdnOG9icUpVZjFr?=
 =?utf-8?B?Rnhaek5sY3RzSXpqcEUwYnRyRCtLK1dWZVZHVHA2NVZvaHJVYjh2dUx0dTZ2?=
 =?utf-8?B?MWZESGE5U3pCY1RsVXBaSUlsZWdEWnEzQ0JWMllwcTBGc1dLTy9HUlpBZUFX?=
 =?utf-8?B?Z1pnNE5qMVM1ak04cHkvZUhJck1obkRYeGJUT3ZWTnZOd1gxam5OenZ3Q3pQ?=
 =?utf-8?B?bE1SVHlieUovN29NK2NXUittY0NxdS9QQTZVVktrT2ZqN1A5d01JamFxcXg2?=
 =?utf-8?B?NnFNSEJ1aXVUQzVYTjlHa0llZjBYSjJOQUhMemVKaXZyTnJORUY1UC9McFZ6?=
 =?utf-8?B?VGxLcklNUHN6UU5WVVBnTTVlK01Qb1NLWjNkRkdwMUpENWo1NzVqRmZWT0tl?=
 =?utf-8?B?d0Zta24vQk01eVNadzdXRHBQT0xtMFBtWmZOcHVZUUFlMXZ5UkNLMEhpN0Jn?=
 =?utf-8?B?Z1hVcWVVa1lGTkNnOW1qNWxrSWUxalh6b1p0N0F5VmZaM3J4aFdOa1JtdEpH?=
 =?utf-8?B?V0cvQkNYM0cwbXR4Wk1rYlFpb3RGNzgyVDJmWVdWVUVOdG1kTXl0dUU5NEJM?=
 =?utf-8?B?L1dBMWlobk1FZXJtWHlrM3dzVWYzN0hxUGhMNW8zUnJZM1JENUJucGJHaVRJ?=
 =?utf-8?B?bTNobCtjTFdPUWtpcklTdGhMdWFCYWpWaFprVVRZcGJlSkErdUdua0h4R29D?=
 =?utf-8?B?OVhIcGhFZUprRzlzNFpaMGdoZ2NUNW1GYUhOK1JMeWlMNFoxSWpISWxFSUYy?=
 =?utf-8?B?V1NiRkpDaVhJczhUbGZhRUtteUx6YjlPZVBqbW05UkVvYUt3dDM1UitaOUF0?=
 =?utf-8?B?Sk9MTkVOaFhCcXRBdkUzVUl5TkEwV3lvZWozT2llcmIxT0ZxYk5nWVhFOWpY?=
 =?utf-8?Q?HeemU8+V/r5nsZjVBmCADkzxs8VLHg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OUZmWkVMeExUd2pCVjhqWHVDTGNCQlp5bDE4ODczVTIzSFM5T3U1d0JCZXds?=
 =?utf-8?B?TXQwL0t4bUdhcS9YUHRROEZQVkxGYXBmODFkcktGeTlrRW4wTS82N216d21D?=
 =?utf-8?B?WXlOdWxPSTFtd3ZhTWErTGFiMzJ5TWgwaEJka0NSVW83d0F0VFRHOS91ckF1?=
 =?utf-8?B?TFkyNWp2SlVjdk13bUxnSm1tdUVHWlYvWWRSeWJNS2xvSVBRMHcxZithNXdi?=
 =?utf-8?B?bkFDSUVUR28rdi9LeEV0bzhKSVVpaXlUZ0VNNlkrVmYxb05zQ01SL3JaaXdi?=
 =?utf-8?B?d1lST2R6ckpaYWdaWHgzbUhiRllObEtiUFNNNElSVWFiZlJBRExxYVpOYk8y?=
 =?utf-8?B?cWxkRnJTQVZOclN2eW5MVWdQYjJsZW1hK3ZqQ0xDSkxaTXdBOGdQQUdzeUJz?=
 =?utf-8?B?MDRYMldPWmRKejVPOVdLVS9mQ2lEeThubnR0a3czTm8wTlhlb0lwNDVNb1Vu?=
 =?utf-8?B?MEw1eEQxSHQ5VXhleFROQ2l6dm5pOWVSYko1aUc2VHdLdFd0bmdOK2VyS2Jn?=
 =?utf-8?B?cEtWZHJIV3VibEtXSjE4QUZtRHl4RS9OcWdFN2FwL3N3WEsxa2JRcUJqR1dr?=
 =?utf-8?B?Zk5JVFRORE04Q3lIckt2cU9PWXFZVC9BUks5bXU4VlV5aWpWY0M5cUoxamFi?=
 =?utf-8?B?QXlwOUpiRHFNY3VUTFFEVTJzMnlsWFR3aWh6SkloN3NhRnJOOEJrMWxYVG1o?=
 =?utf-8?B?TCtzRGIxdXpsUkZPZlhMZDVKZHZCYTdzV1R2SjloeDEyQ0k4WUNMSEl6c3Nh?=
 =?utf-8?B?RjU3MjZleFh2MnhUNzN3THd3QTdlRVFGT2hoSnpBc2t1TVAyOHMwNzJXSkRw?=
 =?utf-8?B?SW90ajRkSDM4T2JmaFVvM3Y4YUVhQVE0bFM3WnZkQnRMSktTbyt5QnNTTUwy?=
 =?utf-8?B?Mmhnc3dvcWxsVTRVNWpha3JwSEZmcnoyY3lpeGtyZHBjTDBuQmE2YTYzS29R?=
 =?utf-8?B?dmE5K0lkdHRqU0FrMW9rMEZDTGRkVWhwRUNtU2FNRkdnUE9sZUcvRmtkendr?=
 =?utf-8?B?UTVEMmRJV3pmVXZVUDQvTGJKWGVrdTdLTmFZeDdtNjd6Y3FLdlg3ZFg0aWF2?=
 =?utf-8?B?cUEvaE9ORUpQaTAzd1dBK0F5WnlyM3RhR2hYemxqY09DV3ZpUjNuSW01Rloz?=
 =?utf-8?B?MDk2OUdtdVFDN3VjVjJZRFV2VG9HUFljalpYcUhoNHZRV0dtaHlEZ0U1a1F0?=
 =?utf-8?B?dzN1MXo1K0trOEtscVNOQkF5TE1ndE5LWlNvaXBIRW04ODlVNFRGRWNrcGVo?=
 =?utf-8?B?RXd1RGFHdE1LWE40dGtzNmVaS0p6T3N1UWxhSDB0OW1RTjE4ekluSFpNVFBW?=
 =?utf-8?B?Y3U4eUhBSlpwbjZMRXdVWnoyVEFXSU52c3FaMHJsVlg0Uk01SmxWTVJpR25t?=
 =?utf-8?B?TG1ISjBML2J2ZVorTHVqR3BBM1hCZ2dRbXRJcWdiVDQzTC95U1FLcUJnbk5i?=
 =?utf-8?B?b2FObjVocHU5RkdQWkhZTVc5VzNtTWtSR2Rzc0ZJSUp1aDdQNHgwYlB3ZW02?=
 =?utf-8?B?TUg0bTZVK3dzWWduSTZhVUtzVlRKTGF3QWhRMkxPM01sSlN6T0RZWTFpTUM4?=
 =?utf-8?B?NE01dEltbFVjRzhlVnRvSHZFb3VXbE4zemM4WU1zMXdTM0g2QzhreXRpUXNN?=
 =?utf-8?B?OEFIQnRLQ2wrcWYwblZIMWQvTWxENkg3UTY5cEM1eU1wMGlQaU1Va3dZM3lo?=
 =?utf-8?B?b2VQcVoxSWk0cjduS05EMTdUZnN3ZU9vVDliNkE5NmozTC9GTWQ4OXBOTXkv?=
 =?utf-8?B?ODlwaExFR2dhSWNCQzBLbmxVUTBIVVMwSThQVW5TMjhRc0hJSGhkTFMvVDFL?=
 =?utf-8?B?V09CYjN3R2JOMnIxaXIwNXo1OWxweXJBV3hjZU4xUzNDOXNOelFjVFNXN2t5?=
 =?utf-8?B?cFQ1NVp3WDZWOTZYcXJIRDlOV1I1ZnNJK3BsQmRFdERDYm45emVuV0JxY2JX?=
 =?utf-8?B?bGhvSW0rSTFXN0tPYkpkckoyUGg0VERLZytuemJmeFR2anhBYVc3VHlndEM0?=
 =?utf-8?B?TFpjeHRCdnF3dEFwUTNSVVlPMVNCVXFuVEFCcmhod2pQVWc1TjFqZVV5bktP?=
 =?utf-8?B?NVlmQi9qeHVTa2JzZDNEbGQxQWtPV2kyd2FVYXZsRFhEQk41c1hWV3U3cmxU?=
 =?utf-8?Q?oro3Fjhh4noe37JDGppSZkiuu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d58ea8be-2657-4807-f307-08dd993e0735
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 14:36:24.3792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ixhAoVXMmm1gSktwHl5aVCiER6XJ12f+2DvODN3v+/nkkNJrdj/SrlJ/qSxPaXgaEDzzPeyB53d9vPjymZlv7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8021
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747924616; x=1779460616;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rYIbelOPHV8HoltV7lrgCDgOu/C99M8dvBimvH5dxRM=;
 b=exht6gqx6V/2BRkE+96bl72ZQOJvfgZCmFJZ25gDFWVobxEE7GIV1NvV
 crX7Ajy9BZ4A5Od5NybE/sLPbTl2RRyv2DMy6Xl/oxawGYEsQYLaeODix
 CrGxUv+7uPNcD0f/rS/bPNk2BiB3pOVPjNU+ptIvyMILZPHzStBbMhytN
 QY8M2vtRHCp5C4MlbQs/edgWvTKG9MbgOv1VUk+CTKpNWBIe6j+PqbUdN
 I2Misr6v794JmZPRRpoglpMii3JA3f5NMAzRzno+IyhXsVT0pp17hDUg9
 vjt4rnShmVSSVHxijp/NmBlMYmDrp6GZn/9476m9t/t9B9jfjtczIet4S
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=exht6gqx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 13/15] ice: fall back to TCXO on
 TSPLL lock fail
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDIgTWF5IDIwMjUgMDQ6MjQNCj4gVG86IEludGVsIFdpcmVkIExBTiA8aW50
ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+DQo+
IENjOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEt1Ymlhaywg
TWljaGFsIDxtaWNoYWwua3ViaWFrQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyIDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtvbGFjaW5za2ksIEthcm9sIDxrYXJvbC5r
b2xhY2luc2tpQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0
c3plbEBpbnRlbC5jb20+OyBPbGVjaCwgTWlsZW5hIDxtaWxlbmEub2xlY2hAaW50ZWwuY29tPjsg
UGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU3ViamVjdDogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIHY0IDEzLzE1XSBpY2U6IGZhbGwgYmFjayB0byBUQ1hPIG9uIFRTUExM
IGxvY2sgZmFpbA0KPg0KPiBGcm9tOiBLYXJvbCBLb2xhY2luc2tpIDxrYXJvbC5rb2xhY2luc2tp
QGludGVsLmNvbT4NCj4NCj4gVFNQTEwgY2FuIGZhaWwgd2hlbiB0cnlpbmcgdG8gbG9jayB0byBU
SU1FX1JFRiBhcyBhIGNsb2NrIHNvdXJjZSwgZS5nLg0Kd2hlbiB0aGUgZXh0ZXJuYWwgY2xvY2sg
c291cmNlIGlzIG5vdCBzdGFibGUgb3IgY29ubmVjdGVkIHRvIHRoZSBib2FyZC4NCj4gVG8gY29u
dGludWUgb3BlcmF0aW9uIGFmdGVyIGZhaWx1cmUsIHRyeSB0byBsb2NrIGFnYWluIHRvIGludGVy
bmFsIFRDWE8gYW5kIGluZm9ybSB1c2VyIGFib3V0IHRoaXMuDQo+DQo+IFJldmlld2VkLWJ5OiBN
aWxlbmEgT2xlY2ggPG1pbGVuYS5vbGVjaEBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEth
cm9sIEtvbGFjaW5za2kgPGthcm9sLmtvbGFjaW5za2lAaW50ZWwuY29tPg0KPiAtLS0NCj4gZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90c3BsbC5jIHwgMTQgKysrKysrKysrKysr
Ky0NCj4gMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4N
Cg0KVGVzdGVkLWJ5OiBSaW5pdGhhIFMgPHN4LnJpbml0aGFAaW50ZWwuY29tPiAoQSBDb250aW5n
ZW50IHdvcmtlciBhdCBJbnRlbCkNCg==
