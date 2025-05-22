Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 272DAAC0DCA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 16:13:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE8D880B81;
	Thu, 22 May 2025 14:13:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KWXZ-ySndEpL; Thu, 22 May 2025 14:13:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C3E080F33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747923196;
	bh=lK0hqdd9mISejy6jvlAj32E/onEmACiIpSOqvX2MUps=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PV/eBhnCaAZZ7mxMSBhM/uIdkrc/iltRS+JiasvHjjY8ylxbvyo581PpM/0Xyn3hb
	 4OoX2/dzgx3ak3YljXnRJHMBrcVM80NZFnIpIJ053L/yMaemb1eOuk3pQSQV9tgpHD
	 d0hsCfjynbsprje73sIbKNAS+DOcEvWq1tM5mm99Hkxhu33dpcxdpOu3g0RsCk7jx2
	 VrmwcWZr4mQPRfxiZbWdlr0TX02y2W0CgEApErjHUS1fQdIQOXJPby6aBIPWcsAI/0
	 dGId/tMD8YCZr7qbaGMPPyI5llibqS2nxusI7UmZyA9MFR3aPgU7yT92uCOWTZvC85
	 j26df4L116WHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C3E080F33;
	Thu, 22 May 2025 14:13:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9443669
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:13:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 864A080ACD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:13:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SZlu_A6h8iGa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 14:13:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B9270805BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9270805BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B9270805BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:13:12 +0000 (UTC)
X-CSE-ConnectionGUID: joVd7FmcTmyQkYSZlHyGMw==
X-CSE-MsgGUID: LQm7IJm3SGyql+ZgX+FyEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="50112336"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="50112336"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:13:12 -0700
X-CSE-ConnectionGUID: pyz1TdtyQRmsgcmTM+fbiQ==
X-CSE-MsgGUID: 6RNTqytbS5uRXL8tAmALvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="144581324"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:13:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 07:13:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 07:13:11 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 07:13:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ES2OS+IolK5n31JBXAFecQPvWrDR4D+Xi7mVL9+L2KvhnaWcXSi1d39si6Du6L67ZAcoe//tAlfVgAu1VI9qsDvOUuuWkdVbYOaI97TevbApCbIqQ1eALLmxo/Gv8t741ErErv3kWJr82YMJT2e7qN85kNIRVe4x6r8KbWI7pYl+frrsAa0kUR4iVzuHYdNUSOJ1iv6S5z5Wr8n6yQzjX6ygX8rQIT+kjN0uQgg86Vh03U7Vqatu8ZhPZgxdPd+kJHoRH6CK4M/vEyjHR37KQjcUHvks1ZHJcZsaC6XKiWYwnRcO97m4x5OkGXE5XuXj20m8W7m/FWv8oTZBOWvJNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lK0hqdd9mISejy6jvlAj32E/onEmACiIpSOqvX2MUps=;
 b=a/fCbj5j+c/RXx6dpnwNNBGYpA69qyfBc7NfnbhjamrPy9uqigmEvNX/WSEplm56ziYvBD3nMeManWXH4D51cf7G8bkkDdcNwD6A5cm17AiKq2vqBRCIZrPJkdlg0F040rxDRJFBRZ4S4DrfMrggUw4JfBH9q639N94ccnyfh9UKepV420bfVcUdG+70Rjsk6B2Vw5QoQqM6cf5kOzyUlQA9WeHb1LJ05Gs1i2MHNIOEfxj0AfQl9hd5RpRiavEehR4pb/I7NdhyEhP2sUczjgEBRoFmf/InYlZ0oNJr+2D4TsRHkS5UJVMc9slLzbZPQNWcUYiFoWn3FFuHrkp4ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by MW4PR11MB5935.namprd11.prod.outlook.com (2603:10b6:303:18a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Thu, 22 May
 2025 14:13:07 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 14:13:07 +0000
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
Thread-Topic: [Intel-wired-lan] [PATCH v4 01/15] ice: move TSPLL functions to
 a separate file
Thread-Index: AQHbuuwkD5B4qqQSNE6MmSrKV/JRI7Pe0Epw
Date: Thu, 22 May 2025 14:13:07 +0000
Message-ID: <IA1PR11MB62415B7C8B9E1140D1AAA8FF8B99A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
 <20250501-kk-tspll-improvements-alignment-v4-1-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-1-24c83d0ce7a8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|MW4PR11MB5935:EE_
x-ms-office365-filtering-correlation-id: 27a4c171-ac8b-4e6f-cdaf-08dd993ac68e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SDdRQWtmNEVTeGZVME02VXVpZ1FnaVJIRGRSZTNBR00ydU9GbWdKeXNvczZG?=
 =?utf-8?B?K0hLQmk3LzJGNUdtUWFlOENETWczUG1lK2l3N0tUK2pKcXY0R0NNTUh2dHZ5?=
 =?utf-8?B?bWp0TjFWbXFZbkRnZWZpV0hlTWNnM2FVTkplUFhsVDg1SjR1MFZ3S0FPWENR?=
 =?utf-8?B?UkdjUVVEbXFFUGFPckkweDlIWldram5tWWF1Zk1Da1JZbUxEWHpnMTJidjND?=
 =?utf-8?B?V2ZvaWtxSXh0ZlM2T01tSDlkZDBEVDA5VHpJcGcxUFgvdm5DUWVBV2h2b3RH?=
 =?utf-8?B?VDlBMlp0ZGR0b1Q1RmtBclRubUU5UzhPOVJXSGR4eGVyZFNMVm1KRXRzL2I5?=
 =?utf-8?B?ZXhlZW5US29iSGFDMlNlWmxBNDQ1NnJ0MDJrZ2ZEdEYrQkIxQWxwbWhTd1I2?=
 =?utf-8?B?S3NJeW1Cc2cxR0RvQVJ2YlhybFVwbXUxVkpMVmU1czV4Szlwc0d0T00wbmZQ?=
 =?utf-8?B?VE5JZ2xWdjZpQVdUMWIxako5cnlPamFqaUFtUHlVVTdYNUFtNFlnRTZJVzUv?=
 =?utf-8?B?MzQ1aHIwMkpFK3k3OGlvTDMrUXJnOG54ckN1MTJRMDJKT1hjRmsyVnhzN1VN?=
 =?utf-8?B?WEtiKzd3dG9CUmMxTEYwdUxQa0hWUnNoSUw0eG1McTBwMXYzalV1RExWZVZ3?=
 =?utf-8?B?bS9NempnM3JmTzhxU1ZWdDFLVFY1TlEyY01mWGIxRjZuUUdQZFE0U3ZTWTR6?=
 =?utf-8?B?TzhBazhpUCtpNy8yVUQrTE9CVXBpVStHMmNnazlQdnJqcGhIdk5mTjBhQ2pQ?=
 =?utf-8?B?bk5DRHc3VEI1alZleVBaNnFOME1nUTdXTDVkeFNkc1A1WGNQSGlTaDhOa1lH?=
 =?utf-8?B?REtqWWw5ZndFb1l6b0pMQjNObVYzdS9uUy84ekZyTnNUVXJBWktJeWJZVHJT?=
 =?utf-8?B?eXpvbktyTm5vYUNQQitnMVBnWklvN2YzbWxFTWppQThHU0thbnVFTXV5QXla?=
 =?utf-8?B?QUdYM2RYamhxTWJrRVl4bG93YitMcTFvU3dzcWVFNFRjRGRBajRQWndWVkRN?=
 =?utf-8?B?VjBkTFM2bWthVzJWSjJvNDB0TGdITVI0Rjh5OUkwVzlRUlNQejZ4ZFJuVTRW?=
 =?utf-8?B?QUFBQTNnRFZkUTZoZjVEdEtJQUZSZ0V0TXQ3bldWZlc4anhOQXUxMmVFWlYv?=
 =?utf-8?B?S01td3VlUzhKc3djd3RDV2srb0Nnajc1UEUyM1VTU3BTWis2bG5EaFJ0OTRH?=
 =?utf-8?B?aXUwMTNHOVhLMmRwVVBaWXpkMGNoWFBRZ2tmb1lMVXowYi9XcVMvK0dJR1lU?=
 =?utf-8?B?MnhhSFRyVnBpTE1sQlAxcGZGdGk5VXIzRms5QUk5MXREdTNYYlVNOC81ejJK?=
 =?utf-8?B?dE56L2pXRFdtOHVkUSsrb1ducjRORzI0dHVmRWtMR2svYW0xNTRLVnpQOTZQ?=
 =?utf-8?B?dkdnTXowWllNMnpsL1JCN0puMDU1dHc1UXovdmhSYUZja1dSeXZMQ0ZsWGoy?=
 =?utf-8?B?NVYxZnNPV1ZPQ1gwYlFzeGdqQm9NOWFsZEZ4TCtDU0VYRzh2UUJmU0xPWFRX?=
 =?utf-8?B?NStubDhRT3dCSVdFSHcyamdlMGNTeXdUZ2lxUkVGOUtEZFRPQ0F0OUpFMVIy?=
 =?utf-8?B?aXNuNkN2RHlQUTRwazVhWjN1TEhmYVYrcDY5NnFadU0ycEE5ZldFNzN0L2Nq?=
 =?utf-8?B?MFN4aFBXN0s4N3hBa2ZoQUZScUJBTUtCbDMybzNvVVVKdGpmandmdHZSV1FF?=
 =?utf-8?B?YmRxeW9YTVJON0htVldnVzhQbmZ0VUt4Rm9LS2k0UHJiNjlXeEw1ZFFtWmZa?=
 =?utf-8?B?WWVRSTAwRmxLanl2YjFOZHZONmwrSnEvdVJaaGZMd0hCamEyQ09NNTNKeWdX?=
 =?utf-8?B?dW5RSWFHcHBIcUMzaU5tRWU0dUNobk5KL0U3bUl1Tk10ZE0wS3d2SDdxL3hy?=
 =?utf-8?B?RTlaNUF2SFp6N3pSaGszOG9uWkNSK0lsZWRYamZxTDdmYlE2WVBOMzhGZjFN?=
 =?utf-8?B?UGZ3aXU2UXYrTjlkSlo0eEpqdkVoS1hGemMrTnBWU29hZEQ4VnJGL1VjRUMy?=
 =?utf-8?B?TGpMYk84SGdRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2xTMk1LY1h4dGk4SHJvMmdWSFNFNXZUNHA1c0hkNHFRZVpxZjArWENQbVgr?=
 =?utf-8?B?RU40RitxMkxTaDdkdTNibXphdGFDSHVXVkJIb0lZd2w5SHhpSCtsQzFqdHBq?=
 =?utf-8?B?bE1zVDVEdkdyb0xuRUROazQ2WW44dkxGN1UrOUx6QXVtaHVncEMvWEk1OHZZ?=
 =?utf-8?B?UUdORUJiczlNb1RkbGtyenlsOEZMdGMvYWdtelkxVVo2VmlPeTR5aDZtRVhY?=
 =?utf-8?B?VnpRaHNEcUZpR0hPV1l0UnZGaHdaOWpKMU9RMGxqOVZINVpYU3FhQzJGL0N5?=
 =?utf-8?B?SWJnRnhZdVRiQzN2OXV2Z0pmYjVTeFprZ0hEQmN4Qkh4a0JlUGh1RXdnK1pn?=
 =?utf-8?B?RGtzVDN4Y1JMa1BmKzVENHhGekRWL0F5ZmlMTUo4VGhpT2dQdmQ0b2g5NGZm?=
 =?utf-8?B?Um91UTJWSDVka3FmZStTSzVzcDZuTDd5OEFjaHhINmRDTTRaR0o0NzRDakI0?=
 =?utf-8?B?ZjYzME5tSHNFZ0F6KzJ0VjlObTV3aHA4bDE0c3RnOGlNVjdOc1BoWmNlWDlx?=
 =?utf-8?B?Y255QVgvazVCTER6dXc0bnVsVHdsYnRST0FtRjJtQS9kZmpMSy80SDErL1Zt?=
 =?utf-8?B?OVBNWU9PR2lTSklSbzlFTlpnQUNNMllWdThYSEZTTjVqaXpGMGJzVCthUTcr?=
 =?utf-8?B?bktWK0FtMmlmWnFwNTB1Mk9rMVJXNWlCOFQwMnlzVFZ2MXFPOENJaldPM0lS?=
 =?utf-8?B?a2NVMWNjcS9rR1ZHdUd1VGxJZXlKWGtVQUxFaHpySzdGSE1LdWhMb0g0bTFX?=
 =?utf-8?B?VUFUR1E2TmlmdFc2SXpKOWpqVU5YQ0tWMExkM2FzRjdLUnNRYVhCa0ZvS1VO?=
 =?utf-8?B?c2dKTmt0TVdHY2hMYzBMaER4aXhKQUdhWk91ZjBleXpoSTRpNEVsZHdxbVo0?=
 =?utf-8?B?UFBObVVYQnQ5Y3o0L0FYT0FkamxkUThPeVV4V2RRM1U5clg1c1RTQWVyR1dW?=
 =?utf-8?B?a05XY3Mycm0wY1BXamRaOFdDaHFGY2ovMUpuUmR5QzlBc2Vkck1iVkUwcnBr?=
 =?utf-8?B?NStEcnIxejlOWFRrTy9lRmcxOUYzamlqYWZFYTUwTmlCNmR5V1pDWll3TGlq?=
 =?utf-8?B?RFAxYWxzTjdVaTVDVE5hM1FOeDNMWlpFUXJxZ0VGOVdON1JQRDliN1dXYXdP?=
 =?utf-8?B?UWRlK0UrTzUwWGZqRXZYckNyS3pqa2pObU8wdFhyb3dRTlZveTNFa09mY3ZV?=
 =?utf-8?B?eS96MHhPODFrUWUxYmx5bGY5eGxiTlpoa0VHcnBMK0JqWVpQSlNOdXhZMEkv?=
 =?utf-8?B?d24wb2F3c09wZ3B6VE5QT29jZjhuckFCRkluK2ZhRFMvTm9GZlNwZko5WFpE?=
 =?utf-8?B?T1Yra241OERUNy8xNTVLZHYxTnRqa210c0tkMUI1YnZDN0FlNnUzdkJHMm50?=
 =?utf-8?B?L2J5THc1R3hPNDFnTlVGVGtJZzFobWFvdnRLM1hoeGZ6WnoyeXBFb1djbFlW?=
 =?utf-8?B?anY4SWU4emtqZkliNGRiWjV0ZnVQMHFoSmhYVFNmNmVXZkpaeTRkd01FMk93?=
 =?utf-8?B?cXM0a1dBbXVRRHVPSWNLVGlhUm1jdFZkcU5YYm9LSml6V1V4Rm84RVNhRFpt?=
 =?utf-8?B?SlNKV0hZOHpuVWYyYmg3ZTJRZnNoQlorNEVtN0JoRWhCSkNLMnNEQmM5Nllm?=
 =?utf-8?B?ZUR2UUpNZEQrQjVxRkREcmRtVWR0dXp2endRLzBUOUFwRG1OL2JBRmg1eUNt?=
 =?utf-8?B?MHBMQ3RDeUwzRWtNZzZ4c2xRMGRLeUZMVkFHcjU5VHZCa2o5YjVQYzlMMFlK?=
 =?utf-8?B?ejdJS1dpTEZ1aG9EZzgyY1VRLzAzTHJrQTdOdkt1RWdzSkYwSU9vUVQ3ZDVH?=
 =?utf-8?B?VzVGbGJCSzJicGFCZ2ltNUE4WVJFeDJiN2hScHJJaEIxbi9Udm0zczVMbDFs?=
 =?utf-8?B?aldEakp1dnVnYWFONHZreVhGSVdHbUNJa2VGcks1SFRhTHhGdmZYSkxtNzNB?=
 =?utf-8?B?ZndsaVdVbGlLQ0tlYjdKRzJyL2sxbFliM1VEUTdGeCtwMVFpZFRKMUFGVWo3?=
 =?utf-8?B?eGJHRGJxM1hXZFBibWRxc05UVXhsR3dCL3RFWEZMcDZEWnhyL05vTDBSUzcw?=
 =?utf-8?B?MUxYaGZyRGhHenlKTGN6YU4vR2NzZXBlaTh0V29EMzJhbmIxcTd0b2xYaXdT?=
 =?utf-8?Q?pRTGGoUAWOiADU5yYrNaGV5ku?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27a4c171-ac8b-4e6f-cdaf-08dd993ac68e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 14:13:07.4445 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mgyOoR/ROFbRfAYpQpnkO0KR8bde/EKJ8jD5agYpOeFFF83esGfQSlYD5Spt3uLDiPxgJQkSoYJuyh3vSVWvoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5935
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747923193; x=1779459193;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lK0hqdd9mISejy6jvlAj32E/onEmACiIpSOqvX2MUps=;
 b=jewskKsUXs5jbBdh7t2e0P1WUDgVFyKTIo9D/qpGRORKZ8OCYDAkwg2/
 85yzrAUgahnUAPwQXELvBmH0izY5o+bnkRIw8LnwylQSBj9vLw3PvGlRB
 SwU2KV5Ed3CN/rddXUv2B6PTD1zX4uop5xbxtII7li35ECdfJ7NMWJ3Od
 x+75gmEkWxcfcrs32UAkKUwgQkPq9MUNpcdcJG3GLu+XDjfSg5edL4nBF
 u568lhopn4sscruZ54lbxKwjfKSxPOA1TMw1AyOEVKm51Q/LOsOhuLqje
 TN5zjNfVGhv6VdO1pTQe/1FDRAKIvy0+UvZUVVf5CuXf1P4QHCBWK/tYZ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jewskKsU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 01/15] ice: move TSPLL functions to
 a separate file
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
b2xhY2luc2tpQGludGVsLmNvbT47IEtpdHN6ZWwsID4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5r
aXRzemVsQGludGVsLmNvbT47IE9sZWNoLCBNaWxlbmEgPG1pbGVuYS5vbGVjaEBpbnRlbC5jb20+
OyBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPg0KPiBTdWJqZWN0OiBbSW50ZWwt
d2lyZWQtbGFuXSBbUEFUQ0ggdjQgMDEvMTVdIGljZTogbW92ZSBUU1BMTCBmdW5jdGlvbnMgdG8g
YSBzZXBhcmF0ZSBmaWxlDQo+DQo+IEZyb206IEthcm9sIEtvbGFjaW5za2kgPGthcm9sLmtvbGFj
aW5za2lAaW50ZWwuY29tPg0KPg0KPiBDb2xsZWN0IFRTUExMIHJlbGF0ZWQgZnVuY3Rpb25zIGFu
ZCBkZWZpbml0aW9ucyBhbmQgbW92ZSB0aGVtIHRvDQphIHNlcGFyYXRlIGZpbGUgdG8gaGF2ZSBh
bGwgVFNQTEwgZnVuY3Rpb25hbGl0eSBpbiBvbmUgcGxhY2UuDQo+DQo+IE1vdmUgQ0dVIHJlbGF0
ZWQgZnVuY3Rpb25zIGFuZCBkZWZpbml0aW9ucyB0byBpY2VfY29tbW9uLioNCj4NCj4gUmV2aWV3
ZWQtYnk6IE1pY2hhbCBLdWJpYWsgPG1pY2hhbC5rdWJpYWtAaW50ZWwuY29tPg0KPiBSZXZpZXdl
ZC1ieTogTWlsZW5hIE9sZWNoIDxtaWxlbmEub2xlY2hAaW50ZWwuY29tPg0KPiBTaWduZWQtb2Zm
LWJ5OiBLYXJvbCBLb2xhY2luc2tpIDxrYXJvbC5rb2xhY2luc2tpQGludGVsLmNvbT4NCj4gLS0t
DQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaCAgICAgICAgICAgIHwgICAx
ICsNCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jZ3VfcmVncy5oICAgfCAx
ODEgLS0tLS0tLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5o
ICAgICB8IDE3NiArKysrKysrDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
cHRwX2NvbnN0cy5oIHwgMTYxIC0tLS0tLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3B0cF9ody5oICAgICB8ICA0MyAtLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX3RzcGxsLmggICAgICB8ICA0NiArKw0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2NvbW1vbi5jICAgICB8ICA2MSArKysNCj4gZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9wdHAuYyAgICAgICAgfCAgIDEgLQ0KPiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jICAgICB8IDU0MiAtLS0tLS0tLS0tLS0tLS0tLS0t
LQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3RzcGxsLmMgICAgICB8IDY0
NiArKysrKysrKysrKysrKysrKysrKysrKysNCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL01ha2VmaWxlICAgICAgICAgfCAgIDIgKy0NCj4gMTEgZmlsZXMgY2hhbmdlZCwgOTMxIGlu
c2VydGlvbnMoKyksIDkyOSBkZWxldGlvbnMoLSkNCj4NCg0KVGVzdGVkLWJ5OiBSaW5pdGhhIFMg
PHN4LnJpbml0aGFAaW50ZWwuY29tPiAoQSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg==
