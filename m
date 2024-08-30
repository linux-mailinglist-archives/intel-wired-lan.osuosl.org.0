Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 150AC966B4B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 23:31:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70C176145E;
	Fri, 30 Aug 2024 21:31:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NwORWGLmFd4Y; Fri, 30 Aug 2024 21:31:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F1A361461
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725053501;
	bh=UhMBDMiJfj/s6X6Akco/z1x58BuZ4jet3HE/tMYzaNo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YUPVtk29dhTs4U5H5xHYw4c/q9LQ5o2CkyQ7QyRecvzRg9HT+4xTNU+DauK7iIzU1
	 VPStkrGL07Hr8BCWdr5JO48qWp78aNd4U44eCKNklfROKqX4AOq6g2qrECG4lunyqr
	 kdpnqQguny/D2993hhz2kzMstk0C3ycwVSMala4+88pJNWt59J0aFO/tJCYUpv0JCW
	 VaMTytQfYXf7X/ys6E1uR0Aw/8sjWrjWWOAG9qFL7eG+U8UJzDiM3eDTYpthxh0tzh
	 M+p7+fdCCAw/oAu/9YbOl67xWlG0i2BHtvTTBzJifWCg85VB1vvGEdukJ1fnLKNIeo
	 sqGL/ZBcxkTKg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F1A361461;
	Fri, 30 Aug 2024 21:31:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 82B821BF295
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 21:31:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6E43D4016F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 21:31:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nnlyZrqGV5if for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 21:31:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2FC2940129
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2FC2940129
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2FC2940129
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 21:31:37 +0000 (UTC)
X-CSE-ConnectionGUID: /ldOjggOQFympEsl9mryaw==
X-CSE-MsgGUID: 3EHkzg5aSxWg871APaEGQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11180"; a="34324932"
X-IronPort-AV: E=Sophos;i="6.10,189,1719903600"; d="scan'208";a="34324932"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 14:31:37 -0700
X-CSE-ConnectionGUID: h5kV3LCeRXq8EOYhNzkg5w==
X-CSE-MsgGUID: nwFGWca+QIWPz/g563izLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,189,1719903600"; d="scan'208";a="63822074"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Aug 2024 14:31:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 30 Aug 2024 14:31:36 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 30 Aug 2024 14:31:36 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 30 Aug 2024 14:31:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oRL0vqAisWE1vyg0l/YEC/+Rk3qFTlfFqCgidAg1+Q5Jj5N0uPfEUO55d8TaGvR57NUXZxobdZBtf/AnQvO3sd/fx6m19NIs+dDbZq2xq1Il+VnOpHlsE+IbHUjiWKYSo6CZT+5g2JI7xGFGieQRLE5BfFuN49jzKmzZqUItu5WfugLLyiWM1j7iZ2Uhct2zjFcJpl3pmrZvKAh8yUasH0DNj+x6ugf20dSPMOixANRRxwjCUvmAdKO5hLhHAur0azDb2qS+V8Ld58C/F4s8X/hEDphiTju/RcJ5gBTXJSNKN8uADbBdfek0zUF3k92p77mKnUi4k3O1zSBMKBstdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UhMBDMiJfj/s6X6Akco/z1x58BuZ4jet3HE/tMYzaNo=;
 b=zIvsInt6x/iNg9KM+UeWOobzJthN2j22aLh73npq2o69i6zMAMqQK90DEu4WCR4HZp5t396y7jbHUr7jUMdYjz4sLpWnvxeXCREtgiW/ZXIIqt4sNq1fFvrKMyaNLvClpoUseEX7svalpuZj6jUZn2dP3rQ3U0AMRtgNICk5vbA2Gpuu5kUWzODVRvGpqTM5mDd7yMWD05wTjEhJ3dqAGEbDUJIZP2h3AbFQiHth6w5XKidniXqtB6fmq8INS7A5h49wDMi3umca6IKlIO4U3Xts+3VznJsBzHYfOBdxVc0JXqovMfRJBleIV8hkRTRuH/Z4Ja9FXA8+l1p9aPfieQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB5141.namprd11.prod.outlook.com (2603:10b6:510:3c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.20; Fri, 30 Aug
 2024 21:31:20 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7918.019; Fri, 30 Aug 2024
 21:31:20 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [[PATCH v2 iwl-next] v2 2/4] idpf: Acquire the
 lock before accessing the xn->salt
Thread-Index: AQHa9+Nhofu1fTmltU2M5HO874x2TbI9MwcAgAIiOoCAAQKUUA==
Date: Fri, 30 Aug 2024 21:31:20 +0000
Message-ID: <CO1PR11MB508997256C0176768082DFD2D6972@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240826181032.3042222-1-manojvishy@google.com>
 <20240826181032.3042222-3-manojvishy@google.com>
 <e2fce229-34b3-4877-8019-63dd3cad001d@intel.com>
 <0b5a2906-0018-4a6b-9837-56c8a2786f02@intel.com>
In-Reply-To: <0b5a2906-0018-4a6b-9837-56c8a2786f02@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH0PR11MB5141:EE_
x-ms-office365-filtering-correlation-id: 48290c67-1182-40e7-1fd1-08dcc93b16f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MUgxNnhmcHNuZDNxWitxWlVvbEhPcG02NStseEJHZzhTNndNbUl1Qyt0bWpB?=
 =?utf-8?B?TTJ2bW0rVmtlYnkyOUJHdG5zRHdNb0IrVVZjK09Gb2FnemNPTk92QUVobWhu?=
 =?utf-8?B?Nnk5c2dwa1V6UGxzV1RaRUFKMGV3ZEhLa1dqUnVlUW5ueGpaamY4azRoajBs?=
 =?utf-8?B?U0dWbVltVVNFZFRRdXA5Mlc0aXFQU1Y5YnJMRUtGK2FJUFg5a2NYcTl2UlVa?=
 =?utf-8?B?WnBaeXFiU1ZiTy95MUc1a2R0ZVhTTUlKa2kvYVA2SUNPR0t6NlpPaG5Cb0No?=
 =?utf-8?B?bTVIQnBFVGFva1k5Q2Y3S3BwRDh3NHdnamdZRnVzZnFkWGVpSFcwYkdTWTN2?=
 =?utf-8?B?UkM4UWNtZExabjdnZ2RmbDZyUXE2QzlPN2tha1E3Q2VQczZnK09ObmdCUGV2?=
 =?utf-8?B?ZlFLT20rVkFESGNDdzhHc25DU3p0Zm1meVFtZlNVUHNBemc4YWNFcmxkZE11?=
 =?utf-8?B?ZUE2RXZ3a0psVGc2VFgrODREV2lZbGNzSDQ0WTkzMUxVRCtEakt4YktIUDc2?=
 =?utf-8?B?NVNwWUNpWExvLzNCT0JudWk3TGhTTm43RDdFMmhVV3picDlQU2ZNdkZ2K0tS?=
 =?utf-8?B?UjNUWHRDclRlcDFMOW4xaWlzU2ZXWVlLd3lNWGRBRDZSZmI2TG50clFGcWJk?=
 =?utf-8?B?b05jTTh5NDN5eFdZanhmeVFsNEFGcWFGWW9WdmZLazFmdHdmSGhHUjJTRGFl?=
 =?utf-8?B?d05vS01DVDFlcHU2QXcxWFpzR1ZYUmQ4YTVaRm5yTmc1TmRoT2FVWXQ3Rjlx?=
 =?utf-8?B?a2prOG85LzgyaU1qV3d2Tm81dW5ndmZjSkZWMzBaWlhJNnV4Y1hpYlNENWxH?=
 =?utf-8?B?TGlLS2xTM3BJdzBoYmFodGllOXM3SXhyTldFVnQzcVZBV1AyMldIalg4YWox?=
 =?utf-8?B?RTB1ZmZRRkgzK2hNNU5nYmFieFZPY1J1UWNvM2VPanp2S25rM3ZqeEVuV3NP?=
 =?utf-8?B?REpXVnQwVEt2M08yRU1GSTZFWm5sYS94UCt0RmZuQ0VYVVVDaUx1OTk2SjUr?=
 =?utf-8?B?K2FZMmJBOGhYeDNkV0h6ZGVLUjcxWkpQejVyWW1YNkowWGlSTVJaT1dUTlBT?=
 =?utf-8?B?Y1dpblZHanFXbUMvU3ZRSEVTZVJDdVViQXRaTzJFSmpVUjdJaURzSEJIUjUz?=
 =?utf-8?B?N2VoQklwWjNpSkhlK25yZi8wc1d6c0c2dGMyS0gwOHAxUVN5bFZzcVByaU5P?=
 =?utf-8?B?SytvNFdBYllGam5JVXR1bkJQTUpRQ3BxWjZzZlc0YmJxa1ZVdjI3R1lHdG5I?=
 =?utf-8?B?dWtua0t6bXA4ZmZIcmlRQXRmcU1TUkpYUEdXWENVc2VCVkxRMkFHTGlNTnp5?=
 =?utf-8?B?S1JxTEM3ZCs0dnNlYm11UDI2NnY4ejZlNDUyZ2VOaXdZUlYvbERQSXFFVmdC?=
 =?utf-8?B?d1RnWnRzZzJ6bjlmZVJZTEFLOFlML1dGcDY2RlBSbVRQOHJLOFJ0SGJMLzRk?=
 =?utf-8?B?VXpwbnAxNmJxTW00Umh1MkN5bk9Xa0EvK1hHSVcxak5qV2hMRGgrZzJuNHJJ?=
 =?utf-8?B?c2RNVFAyQW9ab1hubmlwMFJmUlpjQngvL3FuRVczWU5rUmN6b05IU0kyZ1Yv?=
 =?utf-8?B?bXZJYStwQ3dINGM5dEs4bU9id2paRGFCbktkQ05maHJkZXNpMzRiNjl1SUJw?=
 =?utf-8?B?MzlrZEtYcUNBUkdvL2xmZmJoNFNPVWZING92ck1razY5SmkrZlFiNllUSlgv?=
 =?utf-8?B?dTBJclY4OGdVMUppUkZtNGlSd0RROWYwY0dGOFRndGRlN0lCeVR1cSthczFy?=
 =?utf-8?B?dmJWbmRzK1cwSVc1V0d1RlN3ekRVWXJpVXJuVEVwa0pSbWU1MjFVTG8xZHlW?=
 =?utf-8?B?TXBoWjgrVzFnYkhmek9HMGZ3cFhWR3BrOUo1bnRsYU5CYjlUTElWN0xjRjNT?=
 =?utf-8?B?S2VlOGdxbGJxYlFaZnBRaXVvRWI5blJGSWNiVEpHUmdzOHc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SDY5cDJ3ZVI5dDh2VUMxN2xPdnNTeXpJdkdJY0tiazdDU3ZSZ2YyWjNPQmJT?=
 =?utf-8?B?aWxEUFZleUJsVUp3ZytpNDE1ci8yUTFzcXdWVVhWQjZIcHZpTzhiSkg5bUNP?=
 =?utf-8?B?U0E3amxXMk12UHBXRHltczF1YmxsL0VlZ05zZExYMHFPem5sbzI2bmpIWmpr?=
 =?utf-8?B?MWo1bmJQUXIxUzJuMUxVUWNmbTBYMUI3aEhVWnRDb0J1SldCVXBXdndadDU0?=
 =?utf-8?B?RkN1eVVseGxxc0U0SWU1d0J5dzlNNEpQOUxGWXppR3JYNWV6UU5aRmw1V1Nu?=
 =?utf-8?B?K284aHVxUks5UEVhZ1A3ZTZEZklhMjBGa3hHZVVPcDU5b0pyN1o5QlF6OCtr?=
 =?utf-8?B?c1RPaW1JVWtUZUd5Z1ZLYmNVNllPZENFVEZpL1BwM0podlgwNGhjRDllWmNQ?=
 =?utf-8?B?NXAvcUc0R3B3QlVWUnVTZVNYejlNdHQ5Y0tFaTIwRlkyaUFScUxYd0hVUHh1?=
 =?utf-8?B?OHVJUHVSOG5NWEh5UERzWlhCUGRudUNwckh1aTBoaXFhTHo2UktSVGNLMnJi?=
 =?utf-8?B?VlFZUlNIWHZVdFZtUXFYSjRlVWdhSnYxOUh0TlMwY1MzQU9FLy8vVEFDOEd1?=
 =?utf-8?B?cU14elZmMHV2YjBOZC9HRml1cERRVnNMbnZMK2J5TjlqZEx2NHo5Umd6OUdw?=
 =?utf-8?B?MGlkUC81MlZtMnd3cnZVRnNQZFM0UFJOY2VRZmpYTTRRRS9GK3ExUndCUC84?=
 =?utf-8?B?UWpJaTFsQldWRitWMkpoRndydmdaWUIwYUlhRXpyYzVldzl5cHZvaVVZalB1?=
 =?utf-8?B?aDY0ZzBkcXVqZmdsU1NFaVZGNW9vbE85VklsM0pTcjU1aFZuTURBWkJVay9H?=
 =?utf-8?B?am1OK3VNcFFVcEprVmRtK2FNZDFMQWp5VUlkdlB3dnZOblg3eGFXdzNmV2RT?=
 =?utf-8?B?eGFZUmhjMDZ2SjBPMFhZTlVFMTExR1Jrd0QvMVprTFJPNjhRUEJha2NjZkNu?=
 =?utf-8?B?S0JWWmJWTjlydTJzdVZKbHN0Ry9SQk5hS3Q0ajBkQzA1YU5RanN5NzY1cnlE?=
 =?utf-8?B?UlBlVjdIOEJtU25BSVZNRk5iYVdJeXMyQmtGd25TT2dQbGlYTTQ4dEZWZllE?=
 =?utf-8?B?YTZFcGZnMGNiRnQyNnY1WWJweW9tdE9hWHFKdkdkd29oY2xDalFxUmpyS2Qz?=
 =?utf-8?B?RHU1TVZCVTJYdGNFaFpIYjRpcUVxeFBUL3JGZHp1NUhQRXpDdDJkMzZPM3dJ?=
 =?utf-8?B?d2cxL0JKQmdGa25EU3dHRTB1VkttclR1U3BOZVV1Snh3NVF2L253MTJLc1l3?=
 =?utf-8?B?Q1NMSzdTNjg4ZjdBSlo4eCtiK1dvVkFRaWVicUp3b2doL051Tm9BVW1iYTJy?=
 =?utf-8?B?dEp4U2lydHVrbVV0dmRpbHFsWm5TaXhxaEV5MXBsdTJPTFo1aE5FWnNQaW9V?=
 =?utf-8?B?R3FybEFraU9mb3dVbXdGVUxGWkFHSVR4dlBFcUVMMGJ2d3pjZ1dVbEYwQVlN?=
 =?utf-8?B?SFFRaHdKM2ZnSGxoSGI3SUJCSm1uRENkcFdkZ0xJZWpBL1ZnY1pDam50dGo0?=
 =?utf-8?B?bXQrMEprcGNRb3dzWTNHQUQ0WkZMdFF3WEUzaTNLRDY5cVR3dEtTN2Yzajc5?=
 =?utf-8?B?ZFhZSytOWHl0dmMvWGdqZlNQUHBqaUppZGZPVlRZWmpPTTJUUnk1cTdHUUsv?=
 =?utf-8?B?R29kdDVMNzFJT0xaczJBTVlVWmZpajZhQkVpdC9pS3Z5WEo1TUR3QjkvdWE0?=
 =?utf-8?B?YmdjeHBFSDVsTXlvT2ZRU01VYU9OM3UyT3NEWjVhSkE5OFE5SG8zS01KN2pW?=
 =?utf-8?B?NTgxOXlJbTYxdGtlWkNla2I5TFYzRXcvYU1SdXBjYlkvbk9EQkExeWMwVnE3?=
 =?utf-8?B?S2RBQUhYZ25IWFluUXhJbThNb3MwVG16OXZ6UmVNNU84NFZodExMWUpLK1Yv?=
 =?utf-8?B?TU9zQ1h1c0FlUk9xd2piRUdrbkpSZEc1WXNBMHRtRkRaTUtiSCtheVhUY0Jr?=
 =?utf-8?B?SDhCVkFUT054UWU3L3JMeERPQnUrbnFGWlRWaU1UckJDL216TmtRdnR0TnVl?=
 =?utf-8?B?RWZPVHdwQi9mN0RKWUU5NlR3VVJaZ3prNjNqRGVnLzNjbDZsUmlnTHZCQVZN?=
 =?utf-8?B?ZzNZVjd3N0I2LzlmSk9EWkMwMUdaVkpzS1FVSzhQTG1yUDl0ZlVHNlIrcHVO?=
 =?utf-8?Q?aYnzQ/RyaS+pQhKWIIiG+asb5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48290c67-1182-40e7-1fd1-08dcc93b16f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2024 21:31:20.4953 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SXq/Ehqq1muudxSNrptd5tneQSErwqmY/UbVJcIaQv2ZPcDioHTl7IuIalRbJmZStCM1J+eRAlri93DRjdLScI12h4dYw1Zot+X/heurxYQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5141
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725053498; x=1756589498;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UhMBDMiJfj/s6X6Akco/z1x58BuZ4jet3HE/tMYzaNo=;
 b=c8OLP010vQ4DVuBstylRgUD7gfFyZAGGHOx5Ae/ltmSPQcUnkslJUwp3
 jZFORcsHtizHfHdIXseLdMKOl8GAPsH3tjew/K2uKTeTuMfKS2pEUzo0C
 lSpcjaZh9kQzUW35DL8gKSRYvzejQJR1Ly60KFyXV6pUkHZJ6OjrglYyW
 G4lkIZEkZrysW1RpTkoNJCPp4uOxIv2ivD4Dw4+ZTZGVhJDJjaMi0E1aC
 HigkqeWx0DjNZ7SeYisq1Xu9Bl70RWE5YsWOPIsqBWR6let/+aCdqwozK
 bNTPK4LejylldVg4T0v5x7rUeIgiciSZ4e7Eh6jwDPlib9mFrkByM5Tjd
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c8OLP010
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [[PATCH v2 iwl-next] v2 2/4] idpf: Acquire
 the lock before accessing the xn->salt
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Manoj Vishwanathan <manojvishy@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "google-lan-reviews@googlegroups.com" <google-lan-reviews@googlegroups.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2l0c3plbCwgUHJ6ZW15
c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEF1
Z3VzdCAyOSwgMjAyNCAxMTowNSBQTQ0KPiBUbzogS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtl
bGxlckBpbnRlbC5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBp
bnRlbC5jb20+DQo+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnOyBnb29nbGUtbGFuLQ0KPiByZXZpZXdzQGdvb2dsZWdyb3Vwcy5jb207IE1h
bm9qIFZpc2h3YW5hdGhhbiA8bWFub2p2aXNoeUBnb29nbGUuY29tPjsNCj4gRGF2aWQgUy4gTWls
bGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0DQo+IDxlZHVtYXpldEBnb29n
bGUuY29tPjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gU3ViamVjdDogUmU6
IFtJbnRlbC13aXJlZC1sYW5dIFtbUEFUQ0ggdjIgaXdsLW5leHRdIHYyIDIvNF0gaWRwZjogQWNx
dWlyZSB0aGUgbG9jaw0KPiBiZWZvcmUgYWNjZXNzaW5nIHRoZSB4bi0+c2FsdA0KPiANCj4gT24g
OC8yOC8yNCAyMzoyOSwgSmFjb2IgS2VsbGVyIHdyb3RlOg0KPiA+DQo+ID4NCj4gPiBPbiA4LzI2
LzIwMjQgMTE6MTAgQU0sIE1hbm9qIFZpc2h3YW5hdGhhbiB3cm90ZToNCj4gPj4gVGhlIHRyYW5z
YWN0aW9uIHNhbHQgd2FzIGJlaW5nIGFjY2Vzc2VkIGJlZm9yZSBhY3F1aXJpbmcgdGhlDQo+ID4+
IGlkcGZfdmNfeG5fbG9jayB3aGVuIGlkcGYgaGFzIHRvIGZvcndhcmQgdGhlIHZpcnRjaG5sIHJl
cGx5Lg0KPiA+Pg0KPiA+PiBGaXhlczogMzRjMjFmYTg5NGExYSAo4oCcaWRwZjogaW1wbGVtZW50
IHZpcnRjaG5sIHRyYW5zYWN0aW9uIG1hbmFnZXLigJ0pDQo+ID4+IFNpZ25lZC1vZmYtYnk6IE1h
bm9qIFZpc2h3YW5hdGhhbiA8bWFub2p2aXNoeUBnb29nbGUuY29tPg0KPiA+PiAtLS0NCj4gPg0K
PiA+IFJldmlld2VkLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4N
Cj4gPg0KPiA+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl92aXJ0Y2hu
bC5jIHwgMyArKy0NCj4gPj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pDQo+ID4+DQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZHBmL2lkcGZfdmlydGNobmwuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lkcGYvaWRwZl92aXJ0Y2hubC5jDQo+ID4+IGluZGV4IDcwOTg2ZTEyZGEyOC4uMzBlZWM2NzRk
NTk0IDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lk
cGZfdmlydGNobmwuYw0KPiA+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBm
L2lkcGZfdmlydGNobmwuYw0KPiA+PiBAQCAtNjEyLDE0ICs2MTIsMTUgQEAgaWRwZl92Y194bl9m
b3J3YXJkX3JlcGx5KHN0cnVjdCBpZHBmX2FkYXB0ZXINCj4gKmFkYXB0ZXIsDQo+ID4+ICAgCQly
ZXR1cm4gLUVJTlZBTDsNCj4gPj4gICAJfQ0KPiA+PiAgIAl4biA9ICZhZGFwdGVyLT52Y3huX21u
Z3ItPnJpbmdbeG5faWR4XTsNCj4gPj4gKwlpZHBmX3ZjX3huX2xvY2soeG4pOw0KPiA+DQo+ID4g
Q291bGQgbG9vayBhdCBpbXBsZW1lbnRpbmcgY2xlYW51cC5oIGJhc2VkIGxvY2tpbmcgaGVyZSBz
byB0aGF0IHdlIGNvdWxkDQo+ID4gdXNlIGd1YXJkIG9yIHNjb3BlX2d1YXJkIGFuZCBub3QgaGF2
ZSB0byBsaXR0ZXIgdGhlIGV4aXQgcGF0aHMgd2l0aCB1bmxvY2tzLg0KPiANCj4gb25seSBzY29w
ZV9ndWFyZCgpIGZvciBuZXR3b3JraW5nIGNvZGUNCj4gDQoNClllYSwgbGVhdmluZyBpdCBhcy1p
cyBpcyBmaW5lLiBJIHBlcnNvbmFsbHkgZmluZCBjbGVhbnVwLWJhc2VkIGxvY2tpbmcgYmV0dGVy
LCBidXQgaXQgYXBwZWFycyB0aGUgbWFpbnRhaW5lcnMgYW5kIG1ham9yaXR5IGZlZWwgb3RoZXJ3
aXNlLg0KDQo=
