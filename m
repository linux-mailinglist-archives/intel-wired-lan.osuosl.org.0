Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3D5B39D22
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 14:23:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DD7E60AC2;
	Thu, 28 Aug 2025 12:23:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XHeB4qABMPpK; Thu, 28 Aug 2025 12:23:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 714FD60D70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756383784;
	bh=IhWgslEnDXLZk5NyX/llyFL9wLHyYuX3bEk08FhfC50=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LEswkL3EjmegCGZIj6i1BfsnbDpDhqdy9OmQkgtFaTMrJLLgERSZEtu04jLdaxmgs
	 C0xrTPKegQt8JKVv0zj6FcJibGyC3iPWsp4JgfWIiS+StiGyhTRV/c3jxYAspBpmyL
	 fKOP+BQBl8N9xZmHI1ACbae18lupxTDNyxGXZ78b1g94CpeBzFVW3yhRKbnz4QjMB0
	 yT8s7uFp2QY5ZUTvTxgRuSjzE8Nemml26loAScS+2KjR4msPNkx4bIxFdTvanPCn0J
	 vF4oYEaSp263wsRTpaNjjkwoUokj18hLAA2aSanYHMj7EPfE7YBHm9X4auDmlkeTo3
	 OnAPWXimdGeTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 714FD60D70;
	Thu, 28 Aug 2025 12:23:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5AB8C17D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 12:23:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 43C6640C8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 12:23:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x0cAQ43xJSfW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 12:23:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2E74A4028B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E74A4028B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E74A4028B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 12:22:59 +0000 (UTC)
X-CSE-ConnectionGUID: jKyuDCMURfy4GcfKJFK0dg==
X-CSE-MsgGUID: Dy92VizcSmmeMZq0Gw9T3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="70023690"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="70023690"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:58 -0700
X-CSE-ConnectionGUID: HeeekDjnQTuSOw6fDYxCSQ==
X-CSE-MsgGUID: RJna+I5ESqW+NU+XbDCqeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="201016940"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:59 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 05:22:58 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 05:22:58 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.68) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 05:22:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FqgeYrp1W1Rww9CAwHQLiCZCT6DryuwdV13p+eZELYWoNC5UyzkvEkQi8HXX7yb6HfKCgjSCi8mZosunKIu8MPl21yObM5e6cn8hCVFLNSvK62xE0qBmVy+9RCPLlvuKLODfmZSfjYMGZ+oyvi3Dnezz4v/7NYccchBi3F/LNgfkLf7R9psuumueJwXQ/NXlbjr4Dmt3jJ/qp2PPVmKlhCv5Ms5PnbgfzerIFt97AL/wB21yohq1xATUU+lCQ6ORFydjg5LK1eaX7a0xwfSZGPeKBUOcBNukSMsWajPGuONtdNtmy3yoJ7DaYPlys97QQ+zr22wuJjlU/mfvLtXXVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IhWgslEnDXLZk5NyX/llyFL9wLHyYuX3bEk08FhfC50=;
 b=fij/yrVP25mlUtyzczvenV4TQp5z1JC9txNzqxQdX04fvjLbNDZCSejZwvYinA/b4JXlYpCCQucFLqRWVaAL/PaTOFxybsEyUMBe9twliEOFMAJt+LC6A+MG7s9F1zdPD7mRdOPTQhCCXI2Tvb3BfZ8oan815He+GPzkST1spOW2gfZhCQywXGBZcwKTij2KAsyTpgMPJJXoNHFZWAHG/X2R71/YtfCCKond+7kETH7/WKuhRtsMgwsdoPOnGTA02rzMnHLlh5LouVcWrpG3VrWRQqe3uS2wQ+eGJ5zF719BuPxxXHRf4VwcC76K7xjdIUkm6dk9mdRTKWgH0akjCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY5PR11MB6186.namprd11.prod.outlook.com (2603:10b6:930:26::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.20; Thu, 28 Aug
 2025 12:22:51 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9052.019; Thu, 28 Aug 2025
 12:22:51 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix Jumbo Frame
 support after iPXE boot
Thread-Index: AQHcF5ghakFm4powjEWvoPKCrmzxjLR3+uQQ
Date: Thu, 28 Aug 2025 12:22:51 +0000
Message-ID: <IA3PR11MB8986CC2D4EF48CA3678C668AE53BA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250827-jk-fix-i40e-ice-pxe-9k-mtu-v3-1-14341728e572@intel.com>
In-Reply-To: <20250827-jk-fix-i40e-ice-pxe-9k-mtu-v3-1-14341728e572@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY5PR11MB6186:EE_
x-ms-office365-filtering-correlation-id: 86168be8-9529-4634-8e8d-08dde62d9b7b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UndVWTBBNVU4NzVvZjFxYjh3N0VJK1pzUzczMFI0NmxMSmkzeHE3RUVVcmNE?=
 =?utf-8?B?ZXNhNGdqa3RxWFJseFBoNTR5MU1hYUo3eFhrd1BwaXJySm1yczMwSXN1cFpp?=
 =?utf-8?B?V2E0NFYwNm4wcU1LUjVubEtvYUJGaGhjVnQrTDlzSWJiVWVSUnh1NDdFRW1W?=
 =?utf-8?B?SHpFd0ljYi9WWVphelFBVzcyWmlRSWRkdlpUd3U2WHFCQlowcG1Lb3FXazJa?=
 =?utf-8?B?UnJOeTJaVklrMmlZQkJSWmxBWnRlWlZtTjlCWHIrSTAvbUhySFVOdTJ1a3Iy?=
 =?utf-8?B?d25kb2VLT1RkN0R5ZHpXUTBPdFVBVWxSZmdNUncya2V2d3J3d2F3ZFF6SzN5?=
 =?utf-8?B?TS9pN040YXJqakV6QUlqaDVFK0RMc1d0d2FKMU5VZ2svc1ZFMGlBL01VVnpO?=
 =?utf-8?B?OTE1YWEya3JvOXlMZW5sR3NLR1p1WlU4K2thQXNyRlJmdDl6MHBWQ3JVaHJN?=
 =?utf-8?B?bldDTEsyS3NPYU9pNjBJbjVOVytCQVJiYnM1Z3B2RWgzVkJrMDd1Mnh5am9r?=
 =?utf-8?B?Y2RJQ2MwbFBWR3Rzb1AySG5YZzE5QUJpZHRKNm5ycTJ0RWoxNll3RGpzRFdX?=
 =?utf-8?B?MXJZQXdoa2VhY2U1dmVzZXRUeHJHWHJTS0J5WTRKVVFVaVRUVkp1a0tnUWlr?=
 =?utf-8?B?dnZwUzRRYWZIZmRVYjNpTkhGWEx5YkVCdlBtTlYwaDczOWRuR2diUDEvR0gy?=
 =?utf-8?B?K0Z5bm5HSWs0ZjBmUDFGcDdOd01QRUk0UmJmdUtvbnZObXpEazEvemcrVWxq?=
 =?utf-8?B?ajZZcS96V1Jtb0ZSY2d3OVBjYVNESlRob2taYS9NaEhFeU51SnNma0lNNGRw?=
 =?utf-8?B?cjBjOTN5QS9lQUgxTUtIK1BHMGJ6VytZS2NuVXhNS1ZVU0xGTHlUbVlSZTZE?=
 =?utf-8?B?UWF1ZWE0aXpXOUhwOXhUM2JXdUphN3liRVVuNkJ3NnZDS3V4SDZiYVZHSENV?=
 =?utf-8?B?WEl4ZERJZlpLOU5iclpYZ0hjOGFJSE45dW5WS1BnVlJPOTZoVFI2UDkzcng3?=
 =?utf-8?B?dnJtcmRhL3dRNVZnWW5QSFY0bUtiSkh2Z2tnR1ViTTFjOUM5cE9RMFNwMlVJ?=
 =?utf-8?B?aGlmRXN6eFdBdEMvd3N1YkxGTHovejVRSUlOMEdoNTBHRUpab2JuaDZ1M1lW?=
 =?utf-8?B?clA2RzVEcFJhb3NqcmNnWExSTW5KMlpyTFhsZzBvelVyUmJsaU8xQ2ZnY2pa?=
 =?utf-8?B?cUgzTElFMFlCUVZnTFJWMG5VelF5U0dlSERSd3dJL3hLSE5QYWF4NUkwb2xo?=
 =?utf-8?B?cUhGOTE0aEl4RGQ2YVV4dElrOEhYaWdvQ2ViTElHZHhXR1Y1MWcya21TYmlB?=
 =?utf-8?B?ZVY5NHNGdjJEUjh1VW9VMHZrN3RINjg5ZUVkT0kyTmJRd1VabjlTQjU0V0pD?=
 =?utf-8?B?NnE0c1U3a21CbTM1OWh1SUJiMWVyWnFKT29weUduSVNpdVV4SUlkbVlIdUd0?=
 =?utf-8?B?SEFFYmUybGJvU0Vrano3NnRNQkIwa1ZOazBDdWlDeThDa2x2bVhkNWpuNWx3?=
 =?utf-8?B?V3g5cldSOCtTNkdYSXU5enVrWHNMNjhvaUlrL2lKWndxQTJGdVhjUnpRc3Fj?=
 =?utf-8?B?UExOQ1NxSHBoMVdBZmh3UmtFcEtMTEpuOXk1NlFtcERpN3ZpSDNzSE1xWExi?=
 =?utf-8?B?cHZmSFd3ZzZpeDRxZEk1Z01UTks2VTF3SFNiL0xRUjFrelVqS0NxczhnRHp2?=
 =?utf-8?B?ejUxU2g1Q1VqYW1BN3dPSTUyK3h0UHRtOTRDS2tDdm5MOTFlaU04U0NRdGF5?=
 =?utf-8?B?S1U1WHBwNU9vWjFkZlN3SlcvaWhBVENmS2E1cTJXczNSNEYyZElNdG5pZUkx?=
 =?utf-8?B?SGkrTlVJSVhjWDJkR2FJeTBWUjJZeUI0MEVoVVl3Y1dnaWZ3OW1CU082OERs?=
 =?utf-8?B?WHpuVzBhYktOWlNPbGNnZ0pKU2ozR2lqL2NQTUtHR0NyUEZrM1hSNlUrbkZT?=
 =?utf-8?Q?XqSMGTxQayfxzuignNUUpENjOvlzQsN5?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZDBIcmRFdW9CTjgvSWw1YW0wandFdlozUXJTY3h1RDFLZ3hYck03STNVK0Fs?=
 =?utf-8?B?N0o2eVZ1REg2c2xUZFBxMXhBRzdwS0ZNQysvOUYyYXJ0ODhoZHdFcFlYazA3?=
 =?utf-8?B?Q1FqSEhKOHJ1Z0ZFdnRCVGI0ZlFiTDdYMUxISEMvZFJJS2Q5YmJ2bldEVzlL?=
 =?utf-8?B?RWlndEtRTm04VjdWci9rZ0VDN1d4NUFMMy9GbnpLMkU2WWdOb3NpMUxWMGJG?=
 =?utf-8?B?SE96L1M3dGtkV29ucU02K1NJRS9QK0g3cnAySitvWFlRaWRpa3BVTHZ2OFlU?=
 =?utf-8?B?cUlmNk80VnowZ2hwdGlyOHFYbFkyUjd1OUoydnlSejBXejlrSHdBV0FCTXdV?=
 =?utf-8?B?bmF5OHVDWCsyTzlXWit6cXFMK1RmOUNkdUo4NFdncC9ma2hLeDhkeXEzY29E?=
 =?utf-8?B?TS9DVktkb3g4VS93VjJ1SGh2S0VLWjF0Q05WWlFONFVyS3VSL3JjR29sd3FQ?=
 =?utf-8?B?WjNCdVZqVFhXRVpUcEVWdC82MzRXS1Y2Q0VCWUlRZXdieWNDei9NdWdYMnZ0?=
 =?utf-8?B?dWo0MzY1ZGQ2OHQ4VHdUc1pPaVo1Mm5naVhkM2pwVXlXRHNPVHk5WnQzZFl3?=
 =?utf-8?B?OVY0WGI4alRlSDVDODBVaFJBQ2Y3R0lqQVZheDJyUXU1cHc1amdJQVB0Y1RX?=
 =?utf-8?B?N3ovVGdRVkVSOHpZZkJRNE81Mm1GYVo4MDdsbGhtMEhxKyt4U0ZNMHFlaHd3?=
 =?utf-8?B?TmdST2NJU3dIcjQ0eUVqNXFRL0pEL240SDFPSmpxdk9paEFQeE5xd1cvVUp1?=
 =?utf-8?B?aG1OYVpPZmV1OTJRbU5IM2RvbTZNeFFYNnBxeURSMDEzU01acnNRZXUrZDU5?=
 =?utf-8?B?ZmJSWk9jWmFBZmU0dGdxem9OSzhxVEZFakNyTjZ6eXR5Nm96Mm1RbVNVOFB3?=
 =?utf-8?B?QUNmMVNQYVd1RStXalFhbEEzTmZrUmQ3d25PK3pFN3dVSk9maDhzY2x3WmZW?=
 =?utf-8?B?UWlPTlFuMHBDOFBScmJYRENUQmFUQ1YvcmpkeGE1Y0Z4KzVjYzRZbHBrblcw?=
 =?utf-8?B?WHBhdWRKZ1QvTE9xREhlU2tyVHRRcVRtTnhJaGd6Wk42bDJ6Y2NUWkdhWVZu?=
 =?utf-8?B?ZXFiQ0tYazZSbGU3VTFsRXZabmVlcDJra3pBazZ2Z1EyNmt0NTM0aENWNUw4?=
 =?utf-8?B?OXZKNVlQNHAvS2ZvMW9YS1kwc1lzcXVqc0tNTWQ1a200bkxZN2xXQTRza2ZS?=
 =?utf-8?B?ZDB0bmxPTjk1cmJPanc0RE4wZVFmMUdkeVNNU3UxaHhPOWFQNFFPb1g1Rkxq?=
 =?utf-8?B?OCtSUUg4dG5OL3YvUGRlV3NMTG5YS3ZnNHBZT0M0WFB0a1RsNENTa1B4QUFT?=
 =?utf-8?B?L3RZZ3VIcTVoZHdYNndTTkY0dzEyZ3gvbkFSc2M1UWpHNHkzVkVaUVpleUdN?=
 =?utf-8?B?Q0NmQmJwekx5UytIV0pSYlJQaHRGbEZSaTUxM1N2OVZqM1VET2UyN01OMDhJ?=
 =?utf-8?B?RGRBVzE1MjVIRUtDRjQ1ekxKVGdvbmFKbmNvdjI0VmlmNHA0Qms4TE5nSjJG?=
 =?utf-8?B?eVlSUVpuSXRod0dZTkNFcFVSejZsYkg2SGd1eFF0NmdFK2Jud09LTUxKR3pm?=
 =?utf-8?B?aUlxaXY3V05GbzVBSmVmYmZsY29mT0I1N2U2a3pGUStUVytPSm54dEdMMk9a?=
 =?utf-8?B?cHgvd2VJWnBLVHlLK0NSSnczZVJFQ0JsaVVQSnJWQjhhbjJaRXpQMXFTdmZo?=
 =?utf-8?B?QStNRnhhcVZENlVYNG93Z3JtUmtyVGRaSFlUWXBKckN1c0lSUnpEN0FIZTdi?=
 =?utf-8?B?TzlkbStsQnhnMFhvZXQ3U1VOUStlWWpoQmR4V2NKVE83TCtQcTNlRmdDTDRv?=
 =?utf-8?B?MEkreVlzVjZnMDJkUUplS09sTU1ReWgraFRMVHBQRGlNamZvcXRhQjJqU0t1?=
 =?utf-8?B?S2VIUlVRUTBBM25aQk1Ha0lWZ1A5a21ZOElWZEM1dzFxa0cxOHdlanM4cVVa?=
 =?utf-8?B?TUYwbXNxNFcwbDdhb0YweWJSRnFjamdlWFNLQ0NSbEFpdzZVZWdWMWY1cEFX?=
 =?utf-8?B?UXNkSXZqbzdnZ3VabzgweVZxMHZNSC9xRk1WL0EvNXlyTDVVRXZNaXV4YXhz?=
 =?utf-8?B?Q0VpNG1NNjc4c08xNkZVZURCNWNrMzV4aXNBZEZ2NnJGRnAvWll2K2owTU9F?=
 =?utf-8?B?eDRQenQrdXVZUHdBNzA4RnpJQktqcDE3WTNYMXJIVzZmZlZzQUFJRlB5ZG4v?=
 =?utf-8?B?Z2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86168be8-9529-4634-8e8d-08dde62d9b7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2025 12:22:51.2506 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XV+L54A3bbrU8oSc78c0fRS2G0coaBOduZkwnk2Ff6LmL4J0mTFnNZY0XdoOogAP+OvO0SFSubMXPtfPARMn+upR5it/OUlOjRj4nYJ2FRE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6186
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383780; x=1787919780;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IhWgslEnDXLZk5NyX/llyFL9wLHyYuX3bEk08FhfC50=;
 b=aLKbuIM4VYciKQsRyNE+6McsJk72feATggaNx5L0jIeheT4SnxbYsXD9
 63RTMN98XKknAAKiHdo+zPf+ysJvbO8LX4jh6teaTXBhZKWq/maB/q/DQ
 MPeRJ/9hk/gh7PjkRZLWcxqXKPdxw4yTsp9668vxwVmA0n9HnSXIrgY32
 3nQq3+SDjVpp8z03xLyLYgs5lFye139y5XYxtj+oDskoCtaJ1MMvYz3vK
 QblVmf2ultC5JpZ9hjjgBm7c8esGdzJwgGvnPmYQAinfdmqau6uFOiH3V
 xUtmuZCfyzYVQcH/zxnvo0dwqyhhYBMI0Fk+mH+LrQ1SIl50a2oIhXvYP
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aLKbuIM4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix Jumbo Frame
 support after iPXE boot
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgSmFj
b2IgS2VsbGVyDQo+IFNlbnQ6IFdlZG5lc2RheSwgQXVndXN0IDI3LCAyMDI1IDExOjE4IFBNDQo+
IFRvOiBJbnRlbCBXaXJlZCBMQU4gPGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsg
Tmd1eWVuLA0KPiBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgbmV0ZGV2
QHZnZXIua2VybmVsLm9yZw0KPiBDYzogS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBp
bnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0IHYz
XSBpNDBlOiBmaXggSnVtYm8gRnJhbWUNCj4gc3VwcG9ydCBhZnRlciBpUFhFIGJvb3QNCj4gDQo+
IFRoZSBpNDBlIGhhcmR3YXJlIGhhcyBtdWx0aXBsZSBoYXJkd2FyZSBzZXR0aW5ncyB3aGljaCBk
ZWZpbmUgdGhlDQo+IE1heGltdW0NCj4gRnJhbWUgU2l6ZSAoTUZTKSBvZiB0aGUgcGh5c2ljYWwg
cG9ydC4gVGhlIGZpcm13YXJlIGhhcyBhbiBBZG1pblENCj4gY29tbWFuZA0KPiAoMHgwNjAzKSB0
byBjb25maWd1cmUgdGhlIE1GUywgYnV0IHRoZSBpNDBlIExpbnV4IGRyaXZlciBuZXZlcg0KPiBp
c3N1ZXMgdGhpcw0KPiBjb21tYW5kLg0KPiANCj4gSW4gbW9zdCBjYXNlcyB0aGlzIGlzIG5vIHBy
b2JsZW0sIGFzIHRoZSBOVk0gZGVmYXVsdCB2YWx1ZSBoYXMgdGhlDQo+IGRldmljZQ0KPiBjb25m
aWd1cmVkIGZvciBpdHMgbWF4aW11bSB2YWx1ZSBvZiA5NzI4LiBVbmZvcnR1bmF0ZWx5LCByZWNl
bnQNCj4gdmVyc2lvbnMgb2YNCj4gdGhlIGlQWEUgaW50ZWx4bCBkcml2ZXIgbm93IGlzc3VlIHRo
ZSAweDA2MDMgU2V0IE1hYyBDb25maWcgY29tbWFuZCwNCj4gbW9kaWZ5aW5nIHRoZSBNRlMgYW5k
IHJlZHVjaW5nIGl0IGZyb20gaXRzIGRlZmF1bHQgdmFsdWUgb2YgOTcyOC4NCj4gDQo+IFRoaXMg
b2NjdXJyZWQgYXMgcGFydCBvZiBpUFhFIGNvbW1pdCA2ODcxYTdkZTcwNWIgKCJbaW50ZWx4bF0g
VXNlDQo+IGFkbWluDQo+IHF1ZXVlIHRvIHNldCBwb3J0IE1BQyBhZGRyZXNzIGFuZCBtYXhpbXVt
IGZyYW1lIHNpemUiKSwgYQ0KPiBwcmVyZXF1aXNpdGUNCj4gY2hhbmdlIGZvciBzdXBwb3J0aW5n
IHRoZSBFODAwIHNlcmllcyBoYXJkd2FyZSBpbiBpUFhFLiBCb3RoIHRoZQ0KPiBFNzAwIGFuZA0K
PiBFODAwIGZpcm13YXJlIHN1cHBvcnQgdGhlIEFkbWluUSBjb21tYW5kLCBhbmQgdGhlIGlQWEUg
Y29kZSBzaGFyZXMNCj4gbXVjaCBvZg0KPiB0aGUgbG9naWMgYmV0d2VlbiB0aGUgdHdvIGRldmlj
ZSBkcml2ZXJzLg0KPiANCj4gVGhlIGljZSBFODAwIExpbnV4IGRyaXZlciBhbHJlYWR5IGlzc3Vl
cyB0aGUgMHgwNjAzIFNldCBNYWMgQ29uZmlnDQo+IGNvbW1hbmQNCj4gZWFybHkgZHVyaW5nIHBy
b2JlLCBhbmQgaXMgdGh1cyB1bmFmZmVjdGVkIGJ5IHRoZSBpUFhFIGNoYW5nZS4NCj4gDQo+IFNp
bmNlIGNvbW1pdCAzYTJjNmNlZDkwZTEgKCJpNDBlOiBBZGQgYSBjaGVjayB0byBzZWUgaWYgTUZT
IGlzDQo+IHNldCIpLCB0aGUNCj4gaTQwZSBkcml2ZXIgZG9lcyBjaGVjayB0aGUgSTQwRV9QUlRH
TF9TQUggcmVnaXN0ZXIsIGJ1dCBpdCBvbmx5IGxvZ3MNCj4gYQ0KPiB3YXJuaW5nIG1lc3NhZ2Ug
aWYgaXRzIHZhbHVlIGlzIGJlbG93IHRoZSA5NzI4IGRlZmF1bHQuIFRoaXMNCj4gcmVnaXN0ZXIg
YWxzbw0KPiBvbmx5IGNvdmVycyByZWNlaXZlZCBwYWNrZXRzIGFuZCBub3QgdHJhbnNtaXR0ZWQg
cGFja2V0cy4gQSB3YXJuaW5nDQo+IGNhbg0KPiBpbmZvcm0gc3lzdGVtIGFkbWluaXN0cmF0b3Jz
LCBidXQgZG9lcyBub3QgY29ycmVjdCB0aGUgaXNzdWUuIE5vDQo+IGludGVyYWN0aW9ucyBmcm9t
IHVzZXJzcGFjZSBjYXVzZSB0aGUgZHJpdmVyIHRvIHdyaXRlIHRvIFBSVEdMX1NBSA0KPiBvciBp
c3N1ZQ0KPiB0aGUgMHgwNjAzIEFkbWluUSBjb21tYW5kLiBPbmx5IGEgR0xPQlIgcmVzZXQgd2ls
bCByZXN0b3JlIHRoZSB2YWx1ZQ0KPiB0byBpdHMNCj4gZGVmYXVsdCB2YWx1ZS4gVGhlcmUgaXMg
bm8gb2J2aW91cyBtZXRob2QgdG8gdHJpZ2dlciBhIEdMT0JSIHJlc2V0DQo+IGZyb20NCj4gdXNl
ciBzcGFjZS4NCj4gDQo+IFRvIGZpeCB0aGlzLCBpbnRyb2R1Y2UgdGhlIGk0MGVfYXFfc2V0X21h
Y19jb25maWcoKSBmdW5jdGlvbiwNCj4gc2ltaWxhciB0bw0KPiB0aGUgb25lIGZyb20gdGhlIGlj
ZSBkcml2ZXIuIENhbGwgdGhpcyBkdXJpbmcgZWFybHkgcHJvYmUgdG8gZW5zdXJlDQo+IHRoYXQN
Cj4gdGhlIGRldmljZSBjb25maWd1cmF0aW9uIG1hdGNoZXMgZHJpdmVyIGV4cGVjdGF0aW9uLiBV
bmxpa2UgRTgwMCwNCj4gdGhlIEU3MDANCj4gZmlybXdhcmUgYWxzbyBoYXMgYSBiaXQgdG8gY29u
dHJvbCB3aGV0aGVyIHRoZSBNQUMgc2hvdWxkIGFwcGVuZCBDUkMNCj4gZGF0YS4NCj4gSXQgaXMg
b24gYnkgZGVmYXVsdCwgYnV0IHNldHRpbmcgYSAwIHRvIHRoaXMgYml0IHdvdWxkIGRpc2FibGUg
Q1JDLg0KPiBUaGUNCj4gaTQwZSBpbXBsZW1lbnRhdGlvbiBtdXN0IHNldCB0aGlzIGJpdCB0byBl
bnN1cmUgQ1JDIHdpbGwgYmUgYXBwZW5kZWQNCj4gYnkgdGhlDQo+IE1BQy4NCj4gDQo+IEluIGFk
ZGl0aW9uIHRvIHRoZSBBUSBjb21tYW5kLCBpbnN0ZWFkIG9mIGp1c3QgY2hlY2tpbmcgdGhlDQo+
IEk0MEVfUFJUR0xfU0FIDQo+IHJlZ2lzdGVyLCB1cGRhdGUgaXRzIHZhbHVlIHRvIHRoZSA5NzI4
IGRlZmF1bHQgYW5kIHdyaXRlIGl0IGJhY2suDQo+IFRoaXMNCj4gZW5zdXJlcyB0aGF0IHRoZSBo
YXJkd2FyZSBpcyBpbiB0aGUgZXhwZWN0ZWQgc3RhdGUsIHJlZ2FyZGxlc3Mgb2YNCj4gd2hldGhl
cg0KPiB0aGUgaVBYRSAob3IgYW55IG90aGVyIGVhcmx5IGJvb3QgZHJpdmVyKSBoYXMgbW9kaWZp
ZWQgdGhpcyBzdGF0ZS4NCj4gDQo+IFRoaXMgaXMgYSBiZXR0ZXIgdXNlciBleHBlcmllbmNlLCBh
cyB3ZSBub3cgZml4IHRoZSBpc3N1ZXMgd2l0aA0KPiBsYXJnZXIgTVRVDQo+IGluc3RlYWQgb2Yg
bWVyZWx5IHdhcm5pbmcuIEl0IGFsc28gYWxpZ25zIHdpdGggdGhlIHdheSB0aGUgaWNlIEU4MDAN
Cj4gc2VyaWVzDQo+IGRyaXZlciB3b3Jrcy4NCj4gDQo+IEEgZmluYWwgbm90ZTogVGhlIEZpeGVz
IHRhZyBwcm92aWRlZCBoZXJlIGlzIG5vdCBzdHJpY3RseSBhY2N1cmF0ZS4NCj4gVGhlDQo+IGlz
c3VlIG9jY3VycyBhcyBhIHJlc3VsdCBvZiBhbiBleHRlcm5hbCBlbnRpdHkgKHRoZSBpUFhFIGlu
dGVseGwNCj4gZHJpdmVyKSwNCj4gYW5kIHRoaXMgaXMgbm90IGEgcmVncmVzc2lvbiBzcGVjaWZp
Y2FsbHkgY2F1c2VkIGJ5IHRoZSBtZW50aW9uZWQNCj4gY2hhbmdlLg0KPiBIb3dldmVyLCBJIGJl
bGlldmUgdGhlIG9yaWdpbmFsIGNoYW5nZSB0byBqdXN0IHdhcm4gYWJvdXQgUFJUR0xfU0FIDQo+
IGJlaW5nDQo+IHRvbyBsb3cgd2FzIGFuIGluc3VmZmljaWVudCBmaXguDQo+IA0KPiBGaXhlczog
M2EyYzZjZWQ5MGUxICgiaTQwZTogQWRkIGEgY2hlY2sgdG8gc2VlIGlmIE1GUyBpcyBzZXQiKQ0K
PiBMaW5rOg0KPiBodHRwczovL2dpdGh1Yi5jb20vaXB4ZS9pcHhlL2NvbW1pdC82ODcxYTdkZTcw
NWI2ZjZhNDA0NmYwZDE5ZGE5YmNkNg0KPiA4OWMzYmM4ZQ0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNv
YiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gLS0tDQo+IENoYW5nZXMgaW4g
djM6DQo+IC0gRG9uJ3QgZGlzYWJsZSBDUkMuIE90aGVyd2lzZSwgVHggdHJhZmZpYyB3aWxsIG5v
dCBiZSBhY2NlcHRlZA0KPiAgIGFwcHJvcHJpYXRlbHkuDQo+IC0gTGluayB0byB2MjogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDgxNS1qay1maXgtaTQwZS1pY2UtDQo+IHB4ZS05ay1t
dHUtdjItMS1jZTg1N2NkYzY0ODhAaW50ZWwuY29tDQo+IA0KPiBDaGFuZ2VzIGluIHYyOg0KPiAt
IFJld3JpdGUgY29tbWl0IG1lc3NhZ2Ugd2l0aCBmZWVkYmFjayBmcm9tIFBhdWwgTWVuemVsLg0K
PiAtIEFkZCBtaXNzaW5nIGluaXRpYWxpemF0aW9uIG9mIGNtZCB2aWEgbGliaWVfYXFfcmF3KCku
DQo+IC0gRml4IHRoZSBLZG9jIGNvbW1lbnQgZm9yIGk0MGVfYXFfc2V0X21hY19jb25maWcoKS4N
Cj4gLSBNb3ZlIGNsYXJpZmljYXRpb24gb2YgdGhlIEZpeGVzIHRhZyB0byB0aGUgY29tbWl0IG1l
c3NhZ2UuDQo+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDgx
NC1qay1maXgtaTQwZS1pY2UtDQo+IHB4ZS05ay1tdHUtdjEtMS1jMzkyNjI4N2ZiNzhAaW50ZWwu
Y29tDQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlu
cV9jbWQuaCB8ICAxICsNCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9w
cm90b3R5cGUuaCAgfCAgMiArKw0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX2NvbW1vbi5jICAgICB8IDM0DQo+ICsrKysrKysrKysrKysrKysrKysrKysrDQo+ICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jICAgICAgIHwgMTcgKysrKysr
KystLS0tDQo+ICA0IGZpbGVzIGNoYW5nZWQsIDQ4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX2FkbWlucV9jbWQuaA0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV9hZG1pbnFfY21kLmgNCj4gaW5kZXggNzZkODcyYjkxYTM4Li5jYzAyYTg1YWQ0MmIgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9hZG1pbnFfY21k
LmgNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucV9j
bWQuaA0KPiBAQCAtMTU2MSw2ICsxNTYxLDcgQEAgSTQwRV9DSEVDS19DTURfTEVOR1RIKGk0MGVf
YXFfc2V0X3BoeV9jb25maWcpOw0KPiAgc3RydWN0IGk0MGVfYXFfc2V0X21hY19jb25maWcgew0K
PiAgCV9fbGUxNgltYXhfZnJhbWVfc2l6ZTsNCj4gIAl1OAlwYXJhbXM7DQo+ICsjZGVmaW5lIEk0
MEVfQVFfU0VUX01BQ19DT05GSUdfQ1JDX0VOCUJJVCgyKQ0KPiAgCXU4CXR4X3RpbWVyX3ByaW9y
aXR5OyAvKiBiaXRtYXAgKi8NCj4gIAlfX2xlMTYJdHhfdGltZXJfdmFsdWU7DQo+ICAJX19sZTE2
CWZjX3JlZnJlc2hfdGhyZXNob2xkOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX3Byb3RvdHlwZS5oDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX3Byb3RvdHlwZS5oDQo+IGluZGV4IGFlZjVkZTUzY2UzYi4uMjZiYjdi
ZmZlMzYxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfcHJvdG90eXBlLmgNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX3Byb3RvdHlwZS5oDQo+IEBAIC05OCw2ICs5OCw4IEBAIGludCBpNDBlX2FxX3NldF9tYWNf
bG9vcGJhY2soc3RydWN0IGk0MGVfaHcgKmh3LA0KPiAgCQkJICAgICBzdHJ1Y3QgaTQwZV9hc3Ff
Y21kX2RldGFpbHMgKmNtZF9kZXRhaWxzKTsNCj4gIGludCBpNDBlX2FxX3NldF9waHlfaW50X21h
c2soc3RydWN0IGk0MGVfaHcgKmh3LCB1MTYgbWFzaywNCj4gIAkJCSAgICAgc3RydWN0IGk0MGVf
YXNxX2NtZF9kZXRhaWxzICpjbWRfZGV0YWlscyk7DQo+ICtpbnQgaTQwZV9hcV9zZXRfbWFjX2Nv
bmZpZyhzdHJ1Y3QgaTQwZV9odyAqaHcsIHUxNiBtYXhfZnJhbWVfc2l6ZSwNCj4gKwkJCSAgIHN0
cnVjdCBpNDBlX2FzcV9jbWRfZGV0YWlscyAqY21kX2RldGFpbHMpOw0KPiAgaW50IGk0MGVfYXFf
Y2xlYXJfcHhlX21vZGUoc3RydWN0IGk0MGVfaHcgKmh3LA0KPiAgCQkJICAgc3RydWN0IGk0MGVf
YXNxX2NtZF9kZXRhaWxzICpjbWRfZGV0YWlscyk7DQo+ICBpbnQgaTQwZV9hcV9zZXRfbGlua19y
ZXN0YXJ0X2FuKHN0cnVjdCBpNDBlX2h3ICpodywNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9jb21tb24uYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2k0MGUvaTQwZV9jb21tb24uYw0KPiBpbmRleCAyNzBlN2U4Y2Y5Y2YuLjU5ZjVj
MWU4MTBlYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX2NvbW1vbi5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV9jb21tb24uYw0KPiBAQCAtMTE4OSw2ICsxMTg5LDQwIEBAIGludCBpNDBlX3NldF9mYyhzdHJ1
Y3QgaTQwZV9odyAqaHcsIHU4DQo+ICphcV9mYWlsdXJlcywNCj4gIAlyZXR1cm4gc3RhdHVzOw0K
PiAgfQ0KPiANCj4gKy8qKg0KPiArICogaTQwZV9hcV9zZXRfbWFjX2NvbmZpZyAtIENvbmZpZ3Vy
ZSBNQUMgc2V0dGluZ3MNCj4gKyAqIEBodzogcG9pbnRlciB0byB0aGUgaHcgc3RydWN0DQo+ICsg
KiBAbWF4X2ZyYW1lX3NpemU6IE1heGltdW0gRnJhbWUgU2l6ZSB0byBiZSBzdXBwb3J0ZWQgYnkg
dGhlIHBvcnQNCj4gKyAqIEBjbWRfZGV0YWlsczogcG9pbnRlciB0byBjb21tYW5kIGRldGFpbHMg
c3RydWN0dXJlIG9yIE5VTEwNCj4gKyAqDQo+ICsgKiBTZXQgTUFDIGNvbmZpZ3VyYXRpb24gKDB4
MDYwMykuIE5vdGUgdGhhdCBtYXhfZnJhbWVfc2l6ZSBtdXN0IGJlDQo+IGdyZWF0ZXINCj4gKyAq
IHRoYW4gemVyby4NCj4gKyAqDQo+ICsgKiBSZXR1cm46IDAgb24gc3VjY2Vzcywgb3IgYSBuZWdh
dGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUuDQo+ICsgKi8NCj4gK2ludCBpNDBlX2FxX3NldF9t
YWNfY29uZmlnKHN0cnVjdCBpNDBlX2h3ICpodywgdTE2IG1heF9mcmFtZV9zaXplLA0KPiArCQkJ
ICAgc3RydWN0IGk0MGVfYXNxX2NtZF9kZXRhaWxzICpjbWRfZGV0YWlscykNCj4gK3sNCj4gKwlz
dHJ1Y3QgaTQwZV9hcV9zZXRfbWFjX2NvbmZpZyAqY21kOw0KPiArCXN0cnVjdCBsaWJpZV9hcV9k
ZXNjIGRlc2M7DQo+ICsNCj4gKwljbWQgPSBsaWJpZV9hcV9yYXcoJmRlc2MpOw0KPiArDQo+ICsJ
aWYgKG1heF9mcmFtZV9zaXplID09IDApDQo+ICsJCXJldHVybiAtRUlOVkFMOw0KPiArDQo+ICsJ
aTQwZV9maWxsX2RlZmF1bHRfZGlyZWN0X2NtZF9kZXNjKCZkZXNjLA0KPiBpNDBlX2FxY19vcGNf
c2V0X21hY19jb25maWcpOw0KPiArDQo+ICsJY21kLT5tYXhfZnJhbWVfc2l6ZSA9IGNwdV90b19s
ZTE2KG1heF9mcmFtZV9zaXplKTsNCj4gKwljbWQtPnBhcmFtcyA9IEk0MEVfQVFfU0VUX01BQ19D
T05GSUdfQ1JDX0VOOw0KPiArDQo+ICsjZGVmaW5lIEk0MEVfQVFfU0VUX01BQ19DT05GSUdfRkNf
REVGQVVMVF9USFJFU0hPTEQJMHg3RkZGDQo+ICsJY21kLT5mY19yZWZyZXNoX3RocmVzaG9sZCA9
DQo+ICsNCj4gCWNwdV90b19sZTE2KEk0MEVfQVFfU0VUX01BQ19DT05GSUdfRkNfREVGQVVMVF9U
SFJFU0hPTEQpOw0KPiArDQo+ICsJcmV0dXJuIGk0MGVfYXNxX3NlbmRfY29tbWFuZChodywgJmRl
c2MsIE5VTEwsIDAsDQo+IGNtZF9kZXRhaWxzKTsNCj4gK30NCj4gKw0KPiAgLyoqDQo+ICAgKiBp
NDBlX2FxX2NsZWFyX3B4ZV9tb2RlDQo+ICAgKiBAaHc6IHBvaW50ZXIgdG8gdGhlIGh3IHN0cnVj
dA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21h
aW4uYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMNCj4g
aW5kZXggYjgzZjgyM2U0OTE3Li40Nzk2ZmRkMGI5NjYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMNCj4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYw0KPiBAQCAtMTYwNDUsMTMgKzE2MDQ1LDE4
IEBAIHN0YXRpYyBpbnQgaTQwZV9wcm9iZShzdHJ1Y3QgcGNpX2Rldg0KPiAqcGRldiwgY29uc3Qg
c3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkNCj4gIAkJZGV2X2RiZygmcGYtPnBkZXYtPmRldiwg
ImdldCBzdXBwb3J0ZWQgcGh5IHR5cGVzIHJldCA9DQo+ICVwZSBsYXN0X3N0YXR1cyA9ICAlc1xu
IiwNCj4gIAkJCUVSUl9QVFIoZXJyKSwgbGliaWVfYXFfc3RyKHBmLQ0KPiA+aHcuYXEuYXNxX2xh
c3Rfc3RhdHVzKSk7DQo+IA0KPiAtCS8qIG1ha2Ugc3VyZSB0aGUgTUZTIGhhc24ndCBiZWVuIHNl
dCBsb3dlciB0aGFuIHRoZSBkZWZhdWx0DQo+ICovDQo+ICAjZGVmaW5lIE1BWF9GUkFNRV9TSVpF
X0RFRkFVTFQgMHgyNjAwDQpDYW4geW91IGNvbnNpZGVyIHJlLW5hbWUgTUFYX0ZSQU1FX1NJWkVf
REVGQVVMVCBpbnRvIEk0MEVfTUFYX0ZSQU1FX1NJWkVfREVGQVVMVCA/DQoNCj4gLQl2YWwgPSBG
SUVMRF9HRVQoSTQwRV9QUlRHTF9TQUhfTUZTX01BU0ssDQo+IC0JCQlyZDMyKCZwZi0+aHcsIEk0
MEVfUFJUR0xfU0FIKSk7DQo+IC0JaWYgKHZhbCA8IE1BWF9GUkFNRV9TSVpFX0RFRkFVTFQpDQo+
IC0JCWRldl93YXJuKCZwZGV2LT5kZXYsICJNRlMgZm9yIHBvcnQgJXggKCVkKSBoYXMgYmVlbiBz
ZXQNCj4gYmVsb3cgdGhlIGRlZmF1bHQgKCVkKVxuIiwNCj4gLQkJCSBwZi0+aHcucG9ydCwgdmFs
LCBNQVhfRlJBTUVfU0laRV9ERUZBVUxUKTsNCj4gKw0KPiArCWVyciA9IGk0MGVfYXFfc2V0X21h
Y19jb25maWcoaHcsIE1BWF9GUkFNRV9TSVpFX0RFRkFVTFQsDQo+IE5VTEwpOw0KQXJlIHlvdSBz
dXJlIGl0J3Mgc2FmZSB0byB1c2UgaHcgdmFyIGhlcmU/IEJlY2F1c2Ugb2xkIGNvZGUgdXNlZCBw
Zi0+aHcuDQoNCj4gKwlpZiAoZXJyKSB7DQo+ICsJCWRldl93YXJuKCZwZGV2LT5kZXYsICJzZXQg
bWFjIGNvbmZpZyByZXQgPSAgJXBlDQo+IGxhc3Rfc3RhdHVzID0gICVzXG4iLA0KPiArCQkJIEVS
Ul9QVFIoZXJyKSwgbGliaWVfYXFfc3RyKHBmLQ0KPiA+aHcuYXEuYXNxX2xhc3Rfc3RhdHVzKSk7
DQo+ICsJfQ0KPiArDQo+ICsJLyogTWFrZSBzdXJlIHRoZSBNRlMgaXMgc2V0IHRvIHRoZSBleHBl
Y3RlZCB2YWx1ZSAqLw0KPiArCXZhbCA9IHJkMzIoaHcsIEk0MEVfUFJUR0xfU0FIKTsNCj4gKwlG
SUVMRF9NT0RJRlkoSTQwRV9QUlRHTF9TQUhfTUZTX01BU0ssICZ2YWwsDQo+IE1BWF9GUkFNRV9T
SVpFX0RFRkFVTFQpOw0KPiArCXdyMzIoaHcsIEk0MEVfUFJUR0xfU0FILCB2YWwpOw0KPiANCj4g
IAkvKiBBZGQgYSBmaWx0ZXIgdG8gZHJvcCBhbGwgRmxvdyBjb250cm9sIGZyYW1lcyBmcm9tIGFu
eSBWU0kNCj4gZnJvbSBiZWluZw0KPiAgCSAqIHRyYW5zbWl0dGVkLiBCeSBkb2luZyBzbyB3ZSBz
dG9wIGEgbWFsaWNpb3VzIFZGIGZyb20NCj4gc2VuZGluZyBvdXQNCj4gDQo+IC0tLQ0KPiBiYXNl
LWNvbW1pdDogY2ViOTUxNTUyNDA0NjI1MmM1MjJiMTZmMzg4ODFlODgzN2VjMGQ5MQ0KPiBjaGFu
Z2UtaWQ6IDIwMjUwODEzLWprLWZpeC1pNDBlLWljZS1weGUtOWstbXR1LTJiNmQwMzYyMWNkOQ0K
PiANCj4gQmVzdCByZWdhcmRzLA0KPiAtLQ0KPiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVy
QGludGVsLmNvbT4NCg0KU2lnbmVkLW9mZi1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3Nh
bmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQoNCg0K
