Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 7sHbNwxMemmd5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:49:00 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3668CA72DF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:49:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D32DB4060B;
	Wed, 28 Jan 2026 17:48:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2IBbJkQz1SPX; Wed, 28 Jan 2026 17:48:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3792340642
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622538;
	bh=SfStgqTlP6NCjHCGWi4wY3D3kp1+jKtEX1OpJE66kWo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G++lDl69bOZO2MHTCn7J4M38gMJeuUEkqOqB69EAYbGHbdcAKpknxKWLmfHzRtoTF
	 V4ok5hjeHlPlGWOXMXAWWrAXmYvoO9GySch1EtCCJzLIzqZUcYsNGNm9HtfjV7P078
	 Mj02Dcwp9RhFlkWP60OdeiQ+mSR6zL8aRi4Q9GMw0tiNp9Oz3bQxHdVTFvlxI3Ty4B
	 ZDevs5hx1SXQtzEI5/e3u3b0FCetA+PbhvlB94JJBnT95b5lQUFXHDoS0ulUclL+vt
	 hXKjUM651DMeAIypjxOYagk4Estf76obyvuuZH8NViHzP7k7MVWWKCEdElzfGU4u4H
	 rWeD2EtWTTGrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3792340642;
	Wed, 28 Jan 2026 17:48:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8EA62118
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:48:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7CDF940600
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:48:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KiYPZ5WTP8Z4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:48:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1D62E40510
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D62E40510
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D62E40510
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:48:54 +0000 (UTC)
X-CSE-ConnectionGUID: jXkgLAy3RyCKf8Q7L2H52g==
X-CSE-MsgGUID: Dz7txhYhR9Ol2AWbG5FM9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70898132"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70898132"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:48:55 -0800
X-CSE-ConnectionGUID: gwc6KGnWQ8yE7yxbPw08Vg==
X-CSE-MsgGUID: wamHfJsYQdqZeK8M+M/Rrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="213197133"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:48:54 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:48:53 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:48:53 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.54) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:48:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EZg6wNzW5AzRiU803L2fStbJchMO/w+M5xAzB5rhnqeSuby7TsVCi/+sPXDWt0Z0hmj5cY7KWzM24FSEdxGwKZLHyCxL/xIU8gtAUIoDHT1p3BUzYhNCKgolb2w+38lySJGe5vAIvUlWBIQoZz7qsQma1o66/UitT2CMW67ipFt540lNrV0tfBLpgUUk0q7WFz87JJt7qVkEPWqBBpz7mW+X2BZbzI7qHhPjNM6gxvkvoL38oMeKP9CLvDx4Rdm+sTrRa5Xj4YtXuS5YRnSQ2c32aeA+/Aewox27piukQ74CAcwnOl3wYOQbBTyT6OczboTCZAp4jN03iLGywWBfOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SfStgqTlP6NCjHCGWi4wY3D3kp1+jKtEX1OpJE66kWo=;
 b=blz1TVaWaEvU5FIcZO0eNNcrfB+VoRx3+VHAT/AujtuAoPkGe1AkxbLlyloRIibLObvBCy6UrW79gheZkPR/hz8Rp+lF7CpyyL/RkZ2P4GdPXiNcTGVk+R2t9kuchPPyyEVJAFBZc+we89SDM+ZysZ9TfdWGb06T3NUITXkm8FnPKzW3lHEop+vhF9QTRmWDLz1TD+DxbDCUqIRgizSsPFLNIDaupGppN9G//iG3mwy3yjh1TvcWtz+MvOtVlN+WSndejJffZEzBF80TVrOVH50bQyKiAmsLsiIjPSmjgCBXuyYsaR+OUamaPTKCHPWCIKv5UbUCF3bJb/nKF2MUrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA3PR11MB9160.namprd11.prod.outlook.com (2603:10b6:208:57a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 28 Jan
 2026 17:48:50 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:48:50 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 18/25] docs: kdoc_re: Change
 NestedMath args replacement to \0
Thread-Index: AQHckHZbrFZ212APmU2vf2CbxJys0rVn28FA
Date: Wed, 28 Jan 2026 17:48:50 +0000
Message-ID: <IA3PR11MB8986B208F98E659DD598FD4CE591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <323b4c67ae7fd241670ef0b5ff6eeb10d968415e.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <323b4c67ae7fd241670ef0b5ff6eeb10d968415e.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA3PR11MB9160:EE_
x-ms-office365-filtering-correlation-id: 6028c278-e563-4165-e039-08de5e957edf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?dVArajBFZ1AyUElCS3ZvakZCTXc3SVZmU3lTUE13MzBGdkVWdWswNW8wNkVq?=
 =?utf-8?B?NzdWRVFaNThtVVMyOVlOdVcvNnRQaWx5ajc1NktmNmlaREFFWk1YeWFVS2pP?=
 =?utf-8?B?ak5WUC9YMVFJRk1pWE5BOXB1WUh1SVh3bGdSUC9pUnhEWjJyUi83bzhCU0V3?=
 =?utf-8?B?djlKQkI0eEY4MWs3ZENyd2lJUThYK1FvUHBhQ3JjVWJLUkRmZThoWUJWOXVi?=
 =?utf-8?B?TEFUUGdtNUN0c2JHNlNaMUpkVjE0UVRSMHJCY1RXdWpNRDdjNzJlOTlNZ0tz?=
 =?utf-8?B?Nm8rTzhURFdTYkQ2cHg5RFl5c0VyaTRqV1FaL00xSTRLMnRjb0dGbzhiVExN?=
 =?utf-8?B?U25IanVRZWNPWTEySHNhTkRYYUZhYUd2dHdPaGFpbjNwNWZZSUJCMldzNHVZ?=
 =?utf-8?B?ZEFuS05wN05EMU9sajB3RTNISW9GeVhyeis4OEZWQ2F0Q0ZWaW1sWnArKytL?=
 =?utf-8?B?VU1tMkEycGtaMWxwZDRyU29YVW1kejFXeEkxNmg2dlVjRElIaTdVOFZXY0lK?=
 =?utf-8?B?aUF1eFg3OThQQktBRGNLZDhQNXliL2tVVmt3eEdWcnFtRzV6WCtEU0VyWE1V?=
 =?utf-8?B?SG5DNG9jM0hGRlVHdUg0cWJOdmdSd1VSZW0vRlRaWUlmdmtSTnVFdlN2Sllk?=
 =?utf-8?B?UHpuMCtJYUlDdmIzaXhIVkVValliTHh1Nnozb2taWG43N29wR2UvOWpmcU1r?=
 =?utf-8?B?akN1YzgxbnpFZnpYNHpmR1Z1ZGpWV2lsd05TbFBjTEwvZFd1OW5KMW9ndGh2?=
 =?utf-8?B?RHZJb1hBMnZ5VktEWm9rdlhJZEF6Z090SGxLTVpNUEJMZmNPcXV3bjZrV1U4?=
 =?utf-8?B?V3IvVU96aCtnTlZXQjhkN2R3cU1mTHhTS1QyckE2RE0zMzFVVVppdlJoZVBU?=
 =?utf-8?B?M2NQSTZ6YW5vNjVMamtVaUYvQjlLYWpGWFRlbXNZRmtvSERBTzJHWCtqR3di?=
 =?utf-8?B?R0xzRjdpeUVNWWhqM3ZoLzU5V00yTEdCN25nb25CTXpibUU1Z2hYYmlRL25w?=
 =?utf-8?B?YWJ1eXN0c0poYjg5QzZ6N2sweGs4c3dzYzA5Z1ZNUmF1QStpTTlSdVRlOHFE?=
 =?utf-8?B?TUJadUJDWUU3L2ZzZDFOUjhMS2dEVGc3QUxCTmxvNUhCazBVcWhNazRGNkhu?=
 =?utf-8?B?QkU0SUQxYXJNTjBhVUFwRmdLamtDMXFEa2hRVy91akxSUzJVN2F1b2hoRC9F?=
 =?utf-8?B?YlE2c3hHUkdqU2dralVVczhMLzROdUl0SEV1QktjVEM5UkpXZ3VwejJMS09v?=
 =?utf-8?B?bDY4S2wzUWhxRzVTTE5OYUdPREU1OFdyY2J5eGpzZzFReDJuR0d2OU9xdkJm?=
 =?utf-8?B?LzVVRUFvSmg5UEpybWlpN05nU0Z6REYyOFRtb0N5aEZrL0VNUlB0R2EybWhN?=
 =?utf-8?B?Z1JHVmJyUnFFV2c2bW1XbVduUkNIL3VWdy81Y1U2bU81T3dtM0JuSGxnbHFR?=
 =?utf-8?B?bnk4UjFQSkMxSGtXODZWMEgwV1ZvZ1htNFd4d1FFRXZYeGdMK2Jxa0VxQ1Zv?=
 =?utf-8?B?RGFSc203M3BJVFNSR2s3TUdud3NjSGY0QklkbHIzeFU2OXVOeDFpRFBkcWRp?=
 =?utf-8?B?ZVdLdHFmNTJXOUlMeFFjalEzdTl5anEzbFNUeWsvNjNtS2ZBL0ZHVWZPVmlU?=
 =?utf-8?B?NTJXMHJ0QklVdHlCVGVVNFBaYVg4cHBCQm9Ob1FHVzkzL3Z0eWE4UHhRVkdt?=
 =?utf-8?B?cGtTdWNNZ0xmY2MybFZvV1FvYi83N0gvOU9lK2NWZUJRMlV1S1Qwd2JRYUpQ?=
 =?utf-8?B?WU9jMHlseUpKd3NSd24wOUZISk5DQS9SaSs2SUdwazRxcytKdGlOWTNnVFJa?=
 =?utf-8?B?VDErakJnNUxTT2tqSHBUTUVrR1RRbmpXRCtjRy9qcW1zN2NqaFovRFowZGRm?=
 =?utf-8?B?dWlOVVZycng0bTQrY1hndloyNTZlQzE5dmt2MmtqdGNWTzFHeEZXNVZoa0Mw?=
 =?utf-8?B?QklrLzR1U2pIVk9DQTIvaEIyS3owUDVraE5PY2Q4ZlMxcmNERU95b0J2cDhZ?=
 =?utf-8?B?TnlhdzhWYUgzQXhIeTJOeGJYc2QyNW91RWVFaVFEN1hCNHVyQzE3cDhVcXQw?=
 =?utf-8?B?dVQzeFFsamJ2TEczck5ncXkvMjg3V09FRTF2U1UzR3FzV05GYythQXMvNlRS?=
 =?utf-8?B?WUpzTXBwTk84bnhiRlU3c3g1dUJOV3BHRnpWaXB1TVBTOGcwRE1vNXVYZk5q?=
 =?utf-8?Q?xKQpIomR1Rsnzht+f1JH1Hk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N3NicjNHcU5MdHRkV016S1dXTURrWkJ5Y2QyaGpxaVV0VGI1ZlhDcEszM2Fr?=
 =?utf-8?B?d3pjOEdTVGoyRU14aTNQTWhiUy9GSnZOL3QvZXE0aWxESGV5R2hUTmZPTnRS?=
 =?utf-8?B?VjZwVys3eWhlZkxTUDlnV082aldHRndLKy95YVVsbVUybjlSblBtbit3a0NW?=
 =?utf-8?B?QTdRbU5rTnVhRlJPTWJDMDZCY05UN3ZSL1ZoMUVXb3ptNFBGdEV1bDlsTVE4?=
 =?utf-8?B?b1pqSU9iK3h2UHVIM056eStWMTFHVEFTNHVwTTIzanoyc0hmQ0F5V2JNamta?=
 =?utf-8?B?dVQvQjRjZ3dkQVB0QVcxSUdVeFZsNlV6NUhjTmMxaWRNTUJESW5QektKNCts?=
 =?utf-8?B?ZGZLemx6QVdickxqQ2xnQkg5NlhXT2ZGc3BTL0lFT0VpakIveHFPei9PUXNU?=
 =?utf-8?B?M1piSlU3aWJwTTc3NmJxWU1HTTEyNERkS0dnc1VvK09lZUZ6c29DRys0VUZm?=
 =?utf-8?B?YTBseW0xQ21vUjJjcDhYaWx3MGxnL3pMaUtDQjZhUzBvczVZQ0pkVlJqUUNi?=
 =?utf-8?B?UWFIeXJiZ1Mxc0dvMTdrSTFuNkhZOG5ycXU4L3J6NFZwbkRpWTdzYVA5NEcr?=
 =?utf-8?B?MjBtM3RveEhicFlFdEljVnZLb1E5QTE3OXVKanIvSjFvVTlWTTVSTkE0Y1l2?=
 =?utf-8?B?a1NGRTRqRm5EcC9WNjYrR2twaVhKNUJTclJvSzRzODBNclkyREloWmFuTElk?=
 =?utf-8?B?aVFTVE9vMkRIMm1OdWZaelpnL3l6ZG1EL0o2SUhhbktpTGtlM2pDdTJlaDZJ?=
 =?utf-8?B?NysvSk1ITTA1NDVuS0pHN29qZDVQTzgxaUJYanhKUDFYemJqbHZEaTREWVFz?=
 =?utf-8?B?Sy9FWXBJeUVTdW1McUFPc0NjeHBQajZjVUlnRkNwcU9mSDliU3A1ZjkvdmpZ?=
 =?utf-8?B?VGRJeUpOVzFpZm91WngzR3J6a2E1T2tsV0k2QnBQMGdJN0Rwc3pnbVZtZkY3?=
 =?utf-8?B?dUxLZG9QNjdaUVNBRTZwZXdGaUo1bkFhZkFXSm5QZ0xxeC9zdlpOSEpxYk1Q?=
 =?utf-8?B?Q1JRTWFkNGNMS2FlUTdEMVNDUko5L1RmUFUrZ2tKV0l0eXVGR2F2dFkxNjhP?=
 =?utf-8?B?OTRpc2wzYnpxakFwQUZtZkVocWpEcFEyZEJKRUU3ZDlDbW14L1FHTDBKT056?=
 =?utf-8?B?bTNHckxWRkVCZ04rYnJSbFVYYSt6K2YwemNwV0J0UmJWMmZjR01FTVNiTUNB?=
 =?utf-8?B?MXR0Q3pvU1hSaFMzQmZvcllwdk5VM1doZVlYQmxoWUV0Q1NYc0diYXJCQlJI?=
 =?utf-8?B?QXZIREZoYVdsT1l2NkRzYUQzdndSRTlvTzcrVEZlaERIaXZXenJzWEQzckR2?=
 =?utf-8?B?M2RUUFN3bCsxeWFScWVydGtrdHJuWVZMTEtOYnJUMTNjTHFMWm1rbmJzRVNG?=
 =?utf-8?B?d21NMjFhbUxWMUZMY0Z1d0JHUytVMk81ZVViTGRUVjBEMWEyd3c3QXZWYmFR?=
 =?utf-8?B?R1JQcm1xcGVRTDZJVFU4QnR4S1E0cUtqbEpPdmk0SWVYaFBTM0pYbXErUFNp?=
 =?utf-8?B?cVo5N2o4MUkyTkpQOVZTTDlxWkVSd0h0MXkyYkJ4RlI3UlB1aGNrck05RkEz?=
 =?utf-8?B?S0lGdTdkaEFiSG9JYTZZUVNPREJNK0xIZHlXU3ZyTURoOVNwdFZrVHk1QVdW?=
 =?utf-8?B?ZWh5THQvODJDM00rQTk2OWczQUwxcUt1eTMvanpXNHoxYWZpUW1XTjg5N2Nw?=
 =?utf-8?B?eDBOSy83UUV4OVJwVUNHd2g1THFqSlJlQUNFTzNJUE1aTWNVOGxyWHFYZDJC?=
 =?utf-8?B?VW9SVzZPSFFVbVlydHRNVjZoR1ZXdGNVZ0NubDdCY2paQ1JRSXo1cmJqMmdi?=
 =?utf-8?B?b3JsSEtXME03MUc0emdrb3llTGI3SURxcExpWFRoci9kS0VjWWVVTS9LYldN?=
 =?utf-8?B?K2tSZURER3ZoM1dZWWtMdmVhdnpveWk1TFJXOEJkcTBYZW9CWmlLV0d4aTZS?=
 =?utf-8?B?UG1yZFRjeU9NSnFuV0VFVUFoOWxSUU9iQ3Z1MnlqRW15aFVKT2dWTFhhODhk?=
 =?utf-8?B?bmN1WEdnWk1jTkJOdmpJMUhabmZwSDFkTXNrWDFsQVdJWFVVWUs5NndNSjNs?=
 =?utf-8?B?RFV2KzliRmZaSUx2UGp3MkI2RHpCUHpaMlBYQW9PS3VwL3JjQkdIT1RtYmxW?=
 =?utf-8?B?Ky9XT291K1NoTEprT2JEbk5XRkU1dzlWcGNyUmlpL1YxWkRxeEU4SkN2R3VQ?=
 =?utf-8?B?L0p3dFdYU054dnljL1ovemlEcEFobklWbDdhR0ZIZXpER1NVdlZFVmVZQi9F?=
 =?utf-8?B?NUE1S0NsTCtuWjNKai9lWUVyczNxUHc2Z2YwZlBqNGFVV1ZWTVJscGNSZG45?=
 =?utf-8?B?ZkNYQzVjdHhRZXNiNDNqTEpNVVpWRDZOMGRTUVNRbHkrUGJvR1FMUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6028c278-e563-4165-e039-08de5e957edf
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:48:50.4571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wdppXquyFuFGNzyQ+2jeHdDnf4+Juw8+XCUiyGrTAx3v3xObkSxx0RqhHUcWD36tUUQ8AijSksyTHMjZfVZZxqQvn6zVyMWHUAI80/RpBH8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9160
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622535; x=1801158535;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SfStgqTlP6NCjHCGWi4wY3D3kp1+jKtEX1OpJE66kWo=;
 b=Rqf8E0MoYrwXaSfHfV/E6HuWa6hRn8vozYNOi4GiXqIyULFmhs8OSJPH
 uk1AvVAGm3KOcl48Jymb0GZ9ZM14VWql4Un0rGry2AeArxoLwg2pLaem9
 A5/3Z2uYEnkv0LpYpQnB39btQIoT1YB5a6dRzfMkYK0LOSGucrhsCpwjO
 C3IUXTcop5dKMefiQE04rZXuOCF9Ulx0349w66SlcCErB3DE+bFtNKxEQ
 sjNFi6yKLK9+Y1icoNxyeOiIJgA/SLNszgB3DWIy/FhK+4UoE61LofuUE
 o0yTh7Tm85cxox0nI55zX6F+KUOembLh9nSpcVx3y2F2Huvu5hXxasMT1
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Rqf8E0Mo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 18/25] docs: kdoc_re: Change
 NestedMath args replacement to \0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim,auug.org.au:email,infradead.org:email,lwn.net:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 3668CA72DF
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAxOC8yNV0gZG9jczoga2Rv
Y19yZTogQ2hhbmdlDQo+IE5lc3RlZE1hdGggYXJncyByZXBsYWNlbWVudCB0byBcMA0KPiANCj4g
RnV0dXJlIHBhdGNoZXMgd2lsbCBhbGxvdyBwYXJzaW5nIGVhY2ggYXJndW1lbnQgaW5zdGVhZCBv
ZiB0aGUgaG9sZQ0KPiBzZXQuIFByZXBhcmUgZm9yIGl0IGJ5IGNoYW5naW5nIHRoZSByZXBsYWNl
IGFsbCBhcmdzIGZyb20NCj4gXDEgdG8gXDAuDQo+IA0KPiBObyBmdW5jdGlvbmFsIGNoYW5nZXMu
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVh
d2VpQGtlcm5lbC5vcmc+DQo+IC0tLQ0KPiAgdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFy
c2VyLnB5IHwgMiArLQ0KPiAgdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcmUucHkgICAgIHwg
OSArKysrKy0tLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3Bh
cnNlci5weQ0KPiBiL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBpbmRl
eCBkYjE0MDM2MzEwNGEuLjRkNTJhMDBhY2ZhZCAxMDA2NDQNCj4gLS0tIGEvdG9vbHMvbGliL3B5
dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+ICsrKyBiL3Rvb2xzL2xpYi9weXRob24va2RvYy9r
ZG9jX3BhcnNlci5weQ0KPiBAQCAtMTYwLDcgKzE2MCw3IEBAIHN0cnVjdF94Zm9ybXMgPSBbDQo+
ICAjIGlzIGFsbG93ZWQuDQo+ICAjDQo+ICBzdHJ1Y3RfbmVzdGVkX3ByZWZpeGVzID0gWw0KPiAt
ICAgIChyZS5jb21waWxlKHInXGJTVFJVQ1RfR1JPVVBcKCcpLCByJ1wxJyksDQo+ICsgICAgKHJl
LmNvbXBpbGUocidcYlNUUlVDVF9HUk9VUFwoJyksIHInXDAnKSwNCj4gIF0NCj4gDQo+ICAjDQo+
IGRpZmYgLS1naXQgYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0KPiBiL3Rvb2xz
L2xpYi9weXRob24va2RvYy9rZG9jX3JlLnB5DQo+IGluZGV4IGI2ZTExZWUwYmUyMS4uMjhjYTUw
MzJmNDBjIDEwMDY0NA0KPiAtLS0gYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0K
PiArKysgYi90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0KPiBAQCAtMjcxLDggKzI3
MSw5IEBAIGNsYXNzIE5lc3RlZE1hdGNoOg0KPiAgICAgICAgICBJdCBtYXRjaGVzIGEgcmVnZXgg
dGhhdCBpdCBpcyBmb2xsb3dlZCBieSBhIGRlbGltaXRlciwNCj4gICAgICAgICAgcmVwbGFjaW5n
IG9jY3VycmVuY2VzIG9ubHkgaWYgYWxsIGRlbGltaXRlcnMgYXJlIHBhaXJlZC4NCj4gDQo+IC0g
ICAgICAgIGlmIHInXDEnIGlzIHVzZWQsIGl0IHdvcmtzIGp1c3QgbGlrZSByZTogaXQgcGxhY2Vz
IHRoZXJlIHRoZQ0KPiAtICAgICAgICBtYXRjaGVkIHBhaXJlZCBkYXRhIHdpdGggdGhlIGRlbGlt
aXRlciBzdHJpcHBlZC4NCj4gKyAgICAgICAgaWYgcidcMCcgaXMgdXNlZCwgaXQgd29ya3Mgb24g
YSBzaW1pbGFyIHdheSBvZiB1c2luZw0KPiByZS5ncm91cCgwKToNCj4gKyAgICAgICAgaXQgcGxh
Y2VzIHRoZSBlbnRpcmUgYXJncyBvZiB0aGUgbWF0Y2hlZCBwYWlyZWQgZGF0YSwgd2l0aA0KPiB0
aGUNCj4gKyAgICAgICAgZGVsaW1pdGVyIHN0cmlwcGVkLg0KPiANCj4gICAgICAgICAgSWYgY291
bnQgaXMgZGlmZmVyZW50IHRoYW4gemVybywgaXQgd2lsbCByZXBsYWNlIGF0IG1vc3QNCj4gY291
bnQNCj4gICAgICAgICAgaXRlbXMuDQo+IEBAIC0yODgsOSArMjg5LDkgQEAgY2xhc3MgTmVzdGVk
TWF0Y2g6DQo+ICAgICAgICAgICAgICAjIFZhbHVlLCBpZ25vcmluZyBzdGFydC9lbmQgZGVsaW1p
dGVycw0KPiAgICAgICAgICAgICAgdmFsdWUgPSBsaW5lW2VuZDpwb3MgLSAxXQ0KPiANCj4gLSAg
ICAgICAgICAgICMgcmVwbGFjZXMgXDEgYXQgdGhlIHN1YiBzdHJpbmcsIGlmIFwxIGlzIHVzZWQg
dGhlcmUNCj4gKyAgICAgICAgICAgICMgcmVwbGFjZXMgXDAgYXQgdGhlIHN1YiBzdHJpbmcsIGlm
IFwwIGlzIHVzZWQgdGhlcmUNCj4gICAgICAgICAgICAgIG5ld19zdWIgPSBzdWINCj4gLSAgICAg
ICAgICAgIG5ld19zdWIgPSBuZXdfc3ViLnJlcGxhY2UocidcMScsIHZhbHVlKQ0KPiArICAgICAg
ICAgICAgbmV3X3N1YiA9IG5ld19zdWIucmVwbGFjZShyJ1wwJywgdmFsdWUpDQo+IA0KPiAgICAg
ICAgICAgICAgb3V0ICs9IG5ld19zdWINCj4gDQo+IC0tDQo+IDIuNTIuMA0KUmV2aWV3ZWQtYnk6
IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
