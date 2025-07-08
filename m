Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A1BAFCE5E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 16:59:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF56E60DDB;
	Tue,  8 Jul 2025 14:59:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8po9icsU3mll; Tue,  8 Jul 2025 14:59:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F7D260C15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751986747;
	bh=Xoa5rNITR4G2zHN75ptMOyRLuDtww9CqILYUxWFzPDw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9FRSIngVk6bI9D2Z0PWAziadmZDpPVbtbm8YT++3wlZ9NOrmxYvU9+oxNdePTY51U
	 wT63SnCr6CY0aKnf9y1xg0oRPoRlCEhPp/kF9BsSsDNxvxGG8lYd9SPP5596HVbld3
	 ulmlwKwVgBInV6TGnKPBKtSU5NrVclvMhTAXNjgNiSGb0LWYtO8Vq7pTB4qLHIUuXq
	 4M5GU327kYiXOH9VJaWRvfejp7PVLcTqsFoy+XwDWj9Q649CpppaPy0AoT2WaFwGrr
	 mll2Pj46C4qXuZvAAiLZkjw7NouZlZ7Mc66ik+ZsxKwx5L3UwsUKck4mLjy0B7HBQf
	 bf1kJJiN1ADew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F7D260C15;
	Tue,  8 Jul 2025 14:59:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F2F6712E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 14:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E4E8A40A18
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 14:59:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4IWKF40SrAoQ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 14:59:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2BA8440675
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BA8440675
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2BA8440675
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 14:59:04 +0000 (UTC)
X-CSE-ConnectionGUID: eDxRpMl3QGCWq+pYe7PQcg==
X-CSE-MsgGUID: sgzcG5qjQRa4h5iN7PCDdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="64477588"
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="64477588"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 07:59:04 -0700
X-CSE-ConnectionGUID: 168DXNMxS8GIBwtwUq5ozg==
X-CSE-MsgGUID: bX6y9hC9SdqyXCuuQUGkxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="155608790"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 07:59:03 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 07:59:02 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 8 Jul 2025 07:59:02 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.71) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 07:59:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wm+bp4bsfR6X9z3zAA/cfhNDqUD+XeS+Y5/sRgbgO/H0fAMIxmKL/fRz5mRIf0Oo6dgjwHzhG8KB9uhX7Tqo1J3/4It4C43lB296WICky94d5xpF7uF7KgIVWpCewBHq8SN3+fXX634dRumSet2050q+B6E4wR6z3yMgovfoOKztfu3EoKgv/F27keA8Sm3ga+FEBeT+5VUKJ3K1saA20bTiLhnBoodImy4FQgI6WTdx6c0LVXpFzrIxiRxnL7CXhGGbj1VIX83mYoUf8QJBsgR2QmN96yPhNubmGNB1Ln/KoVoJ30kdjRWgyuLwI4Qiyi3LT23vDHH0n80ie2kN9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xoa5rNITR4G2zHN75ptMOyRLuDtww9CqILYUxWFzPDw=;
 b=gZpJPYlvEUEAT2l7Kk519LRjoRs2pDOKoO8OFvkFy2EUvnzKs9elJ6dEO/vp5OVYJ92ocNQEEzzELAGBQej/PoE9fMd/6SlubXkV08c2ZOfvM1kqK8YgJzgZpHQieDZSxrZ+Eqkz6iVHU/Cz0FYNEpX1bQ8vMXREB5SYROue9j+rYninC+Aa8pIV0xjofm7/RS/PbyGeg+VSuurO2IHK2sVuAk6KqZnIdBCFijPpldaPxiBamAvCyIelbjWG2KlPDdv7iFEbhEQBHyRutUJA44LvC6NUkDyOdcLdv/N01td1ABad07CAFr/S+96OnePOOIU4U8Zi7+jQ1f0tFJb0UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by CH3PR11MB7300.namprd11.prod.outlook.com (2603:10b6:610:150::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Tue, 8 Jul
 2025 14:58:30 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%6]) with mapi id 15.20.8769.022; Tue, 8 Jul 2025
 14:58:30 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Chittim, Madhu" <madhu.chittim@intel.com>, "Cao,
 Yahui" <yahui.cao@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 8/8] ice: introduce
 ice_get_vf_by_dev() wrapper
Thread-Index: AQHb4J/xImD+ld4V2katoxlqGOUyh7QocDfw
Date: Tue, 8 Jul 2025 14:58:30 +0000
Message-ID: <IA3PR11MB8985A1C87B18F619A28872CC8F4EA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
 <20250618-e810-live-migration-jk-migration-prep-v1-8-72a37485453e@intel.com>
In-Reply-To: <20250618-e810-live-migration-jk-migration-prep-v1-8-72a37485453e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|CH3PR11MB7300:EE_
x-ms-office365-filtering-correlation-id: 35a3b641-4f18-4a03-da05-08ddbe2fe6fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ei9zQmRHbkJlamF0QjdFUlRITjZEN1BLMyt5NzJLTm1TelYrK3NPZXVhVUl4?=
 =?utf-8?B?TWNMNndaSzBLRWY3alRHL0pTRE1BVGFQQlpFaGpkbEt2NmdTUTVqa0JiNDJZ?=
 =?utf-8?B?elhBeEVyNnFjY09BY2lyOE11QVEzNi9qVldCdlU2OXczSmYyZll3bDFSeE9n?=
 =?utf-8?B?cjhpS095bkMrak1adGdPd1pqQ1hhS3Z2SWE0T3daRlNmeXh2eWJ5bWhhbms0?=
 =?utf-8?B?UTlqdUJERW1GdmNzVllML3ZvZ3Nkb0ZwaDQ2ZGRiY0FObGtoY0hVNHk3TDFz?=
 =?utf-8?B?aFhhOXc2MmVhSDBaTDAydFkrZDBwc0owbHhzZ1NnZUZoTE5lWVlIa1dEWXVN?=
 =?utf-8?B?bm8xN3hraStIRzYvZHVQaWhiSVVKWlhPQ0Y2YVo4azFJNFhrL3ZReDlxMXRi?=
 =?utf-8?B?Mk9HL1pWS3JjQVVIVHNQQTRCd2NBWWNlYklKVGt2K3BMWDlPS1Z1UFBDQkho?=
 =?utf-8?B?S0lyODNRSm9ubjZXTHV1L29zVFUrRHNPclFRK1RraG1jczRDOXlHMFZEa29I?=
 =?utf-8?B?YWZGK1JKSmpTTElzVGdGUWZjR1c4YmdwdEdKZDdXTkN4SGU3cU9aczlEZzZ2?=
 =?utf-8?B?cmlzWHllOWVIZmFVdldyVW9LdXg2WThhZVZodVBoNHFISDcvcFJYS2x5SVR5?=
 =?utf-8?B?bmxyUEpGZlFweC95NE1qY0NKcVRkd3BYNE9TbktYZ2wyKzN3VkZPbWM1Yi9Y?=
 =?utf-8?B?SWs1Z3hQVGZCa1FaS29XR20zL0ZKWjRBM0hXQnJlcmUzdTBpTE9nb0xSNmVh?=
 =?utf-8?B?YkVCV2RJdWVhSElJZ0ZHblpLd1c1aURNTmVjU3RGdzl2VnBsT0lqTHpEa282?=
 =?utf-8?B?Wk1tMmtLUnBiUHpDdXJLMCsxUGs1RzZWOTAxL1A0elU2N24wWWRDRmNHVE5Q?=
 =?utf-8?B?aTJYK01rYUlyK2ZaUVFLNFQydjdEM3ZWcWI0UzRIV200WExnczFGdDMzSFVs?=
 =?utf-8?B?RmR0bjQ5UFlYZ1gxQkl3aDJpeFJsMy9TVStaZ3pOTzJMOTM1TE5EbE1nKzBw?=
 =?utf-8?B?aEZSQlYxZk13R0tuaW8zNm1tWWRXN01hZzJPUmdzQ0xKbU5rakhxS3RmVyty?=
 =?utf-8?B?bkJDTXVKL2RzajFSbVdFb0pDWEp3QjZpbHVIeHprVnAvNzdGVnJuTnZ2dWo5?=
 =?utf-8?B?ZVdiTFVOMndRdTZhYVpHeE9lRndEdmNUQkZRZ01lS1dZRStrNnphdzBBK21h?=
 =?utf-8?B?aGllN2FVb3lLMm5QNWtZZFJuQ2RxOUxEa0FLeGRUZHZIZmljcUJYSFRBY0Rk?=
 =?utf-8?B?cjBSY1QrbEJDQmxpZDk3Sit5dktLN2lMbmsySzI4YkxQK2lreXFzM09RMU52?=
 =?utf-8?B?MDg0SnVxc1RSYngrM2hGTDFhMnVaUUdvKytiR1BnRy9kQXM0dlF6TEdPQkZC?=
 =?utf-8?B?cUxWL1VsYzhVdndzWGhHRFZCVndWOXphazVQajB2Y0hhU3FWcVpqMU1Tblht?=
 =?utf-8?B?Z3NJdnJDMGlpV3RoZGdoaHlXSWJWR2FWdEhadWY1MUhWbHp5NHVPeEZTUmZ5?=
 =?utf-8?B?cTNWT1kzcS9PTUZ3L3hNdnVwMlNJWWgwZ3JCMkdQWmp1YlY0c1JtVHZpTE9s?=
 =?utf-8?B?d3g5UjVEWXFxcDNxTTB5bWFmODZpL0I4Yjgvc2VIZzE2MnNkU2I2SldmRnVx?=
 =?utf-8?B?dW1pM04rOGlUVks1S2pUeU5HYUJrZ2VlWlBWK29oSnk1MnhzTHpJWkVLS0NG?=
 =?utf-8?B?WWl1WHl4SW83Mk15cm5oTGZwYm1ES3NsaFhpdkFmM0JwQUZtc0o4OEpVZm5B?=
 =?utf-8?B?SHFVemM2NFRpZnA5UTZLVVlJQzBIM0orQ2U1YUV3b3duMXlBTjRMY0ROTzNi?=
 =?utf-8?B?ejVUQ0FiYlFISzd0M0wvR0o5czRIMWhUR29Gdm5JNTcxNHdpdThpb1orUlZU?=
 =?utf-8?B?VEt6UzJMQVl6Q2RBN3A4UzZGaFhWMEhPakw1N3I3dzhqb0VDWWUrZmtibGdJ?=
 =?utf-8?B?MzVlY01kWnc1Y3ZueC90eldVLzR2N1JLQTNKa2lOYWMwUkRWWktqSVl0YjRy?=
 =?utf-8?Q?FMexordn4gEA1wQWE07aMjU07TBDJk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SkZMVGpFSUdzRUFQQ0QwQ1VlNUFiSHIxWG1UUzk0Z3N4MURFTk5KMXhXRzNV?=
 =?utf-8?B?KzdSbjhBQUdxeWRMTEpsRlZLZms1ZVBPTHkwVUtQd2tIOE5XdWNMYUVab3lq?=
 =?utf-8?B?Rk1YY1ZjWVU2R3dtUHBsVFAydGYycXgwMnprK1ZlRVBMTWNBTXRzN2ovTDMv?=
 =?utf-8?B?Ujc4UWY5aGJpSWlsTnNwN3ZnTmpmamorUUZ2WmdZbVhCemlOT2RMVFlEcyti?=
 =?utf-8?B?ZVIySlNYLzNVOGI3U3RrSVlseE5xKzUxWXgrM1BaT1Y3a1J3cDFleHlSNFRv?=
 =?utf-8?B?TTZjUUdVMWhlVFdvUXNlZXBUYlZIL2M3aEs5SHlWckVPNTFBbkZreWJPdmJx?=
 =?utf-8?B?T0VpMm1mcFkwQTBKNTRTbSt5ZXZHY3h4eHFQY0dTajRXTHZEanMvNERGNHFz?=
 =?utf-8?B?YU5sWmZwVlF0ODl5NWhkSXlWeHlIRHNJVjZNOVF5dERoTGlYejdwZ2JVWXJ4?=
 =?utf-8?B?YzFDZUlDeVIwVzdSd01YWmJxaDJqdWRGSXF4em9rRlRVc1QvNWJCbzVIeE1V?=
 =?utf-8?B?eWM4UVpSUkgwU2VabGtLT1EzeW1Rb3VuaXRQbmphQ29VSFV4VFo0ekRxVFlS?=
 =?utf-8?B?TVRrQXpuRitNWUZwUmZIUjNpQkNnTERlQWwyRjZqN0hJQWUydlJBMWQ1dmlQ?=
 =?utf-8?B?OG9sTjlJS0pIQjUxZ2RySzNtMG43VDRIbU5GQzFRRUM1VFlQWEJCdS9rUWJj?=
 =?utf-8?B?MTFkc3plZ0dFUWI4cTIybGdPN1pTT3Qwejd1OXF4cmUzZzRrT0dHUnZuSjhN?=
 =?utf-8?B?Y3AwUmpzK1B2TjBlS1JoV2puQnZ6VlZYOXh4Ym00RVlsT3J1VzFYQmhXbVo3?=
 =?utf-8?B?T0Jadk9kL0l6bEM3UVI5QWM4VUJTa2d2RVZVb0NQaXNVTnliTXA4ODZMNXJH?=
 =?utf-8?B?Sjgzd0h6Q3I4bnFVdVpRUjFBeXgyeDVUbWdmeXRWd1Mrc29KRllHR2lBZVc4?=
 =?utf-8?B?VWdLaDBhMXkybGhGSGFFaUd6NnVqTGFmVTczMCtCNzljL2wrUVdUWVNicjVj?=
 =?utf-8?B?MHI2VC9xc1kvc2djSnRJdW9SVUN4MzBXUzBwVGM4QzVQQUlFWTVrVndhcUhs?=
 =?utf-8?B?M2VxL1ZRS3l0eHMrRzRLTDFCL1d5My9ZQlVWcVFDVnNGQUVsL20xZzk3WTQr?=
 =?utf-8?B?Q2Y2bFUyL1hzT1lRc2Y4Tm8xRmRlREtoYko5WXV4RDcxb1NtaFJUc0JDOXBG?=
 =?utf-8?B?M3l0M21uU2pPeWtmTUhWcnJzUyt2bmpRRU9lS2hHVGFwRlo4aUlyTUpub1Iz?=
 =?utf-8?B?WXRGQnk4REVYQUQ2N2F4YzVQS2FMNHViQmhoMkFzZmtrYVVSYjZNTFRpL3ZW?=
 =?utf-8?B?WGprVG53MnJjbnVITi9pekFEZkF3MDY1aWc4WWtUQjhqeGw1aVFyM0FZMHpu?=
 =?utf-8?B?ZW9ldFFKcXVZNzY0MlZydkJ3ZTUxSExYc2dCUFlWK1dNdGdjakprTUFJemxr?=
 =?utf-8?B?blhjRGpxcFgvYUEyRitqcU0xYmtjV2xQMEdldnYzcjFNdTNIQm15bUJYRTRz?=
 =?utf-8?B?MDh2N292djIwMFhmY1hrSmpFWVA0Y3ovclJwZDdBV2I0UjhWODAzTXNBTWx1?=
 =?utf-8?B?ZTVEaHNUajRUaWk0b1lVeFpUdmZpVk9hK1hDR1VXWUt3TnkxSzk0WEdLL0Ey?=
 =?utf-8?B?NXVjMU9STzRDa2w2bS83SHV2dmVDMWx6UktoUEg0QVdXU3dIYzQyNkhScTBo?=
 =?utf-8?B?QUZ6c2FCTEdrc0lPcEJYVUV0MkttNkt3ZHREdytxcXlGUy95K2RFSzF6eGpq?=
 =?utf-8?B?UGsvN04vczhuTkFPRDhnQnQzWjQ5dmpRLzE0T21ZVnBCZHJKeE5QeXVLVVRR?=
 =?utf-8?B?ZlBwdUFua0hwamJWMUllenJ4Sm9CL3F3NHNkY2JUQWdYNWs3TkY3d0c1YUtt?=
 =?utf-8?B?a1VkbnNxbGRlaExMVEN0bktiSFVNOUVlNWJBZEtLVUxlQXZ0UHZHclVtWnoy?=
 =?utf-8?B?cDlMRVFIUmtCdDhVQnF5b3pQVUphSGw4S0Nackxma0s3YXY4N2dCLzQvZExK?=
 =?utf-8?B?SVZkM09iWUc0UWRSWWY5S1VxS3lVTTI5R1VxbGhzMG1SWXdHbFg2M2tpdmdo?=
 =?utf-8?B?LzNLd0hrWVdHTEtHY0wzaFlNbitKYloyUk5lQWhrZjZaN2VFSWY2WTl6aGZB?=
 =?utf-8?B?cnVrcXVjd1J4UkZTQmZDWEdLVkJXSndoL2ZBTDNFQzRZZXFUcW10YWxhbWor?=
 =?utf-8?B?ZHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35a3b641-4f18-4a03-da05-08ddbe2fe6fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2025 14:58:30.4014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4oSxJGfoLDGFHwszivgRTKAIzzAublghYwhA5UlCpfCGMyGESBHy5Uxd0y66fFe4dHKVcN9s094IL2GrWH4hRHYOrhNmPmAEhQ8qU6IiiVw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7300
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751986745; x=1783522745;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xoa5rNITR4G2zHN75ptMOyRLuDtww9CqILYUxWFzPDw=;
 b=bCunJ+jE9pJ9lFEQsYuZkOEMf3j8iQbeN4sugLlRJMoX+kPN3NsP+wzP
 uQyDP3LXoW3dSjRXP12hpEDt14CpSRYlmo5ivEGlH+L1t6Fp8aG7ushmX
 m06QPfE99r1UDiiB/IjsooAKfJADpvKYTt+NaRFPLvYdTfHFy3oHRn0jv
 +8B5v78hnmy49xemFP/5d4QzKuxlzcu8LyP41MVIXoedwyZaCD5XXywFz
 HQb5a2pqTeySHYpqHPlfW/qHnPh6QvHJ3/Slg99xSwRCz/HyR9H0cFeO4
 IMxMGUY2S4FtVfBK/EJJot13i/MRjYqyWpO7Y6/4AwAeyBZqOr8SoHCXP
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bCunJ+jE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 8/8] ice: introduce
 ice_get_vf_by_dev() wrapper
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBKYWNvYiBL
ZWxsZXINCj4gU2VudDogVGh1cnNkYXksIEp1bmUgMTksIDIwMjUgMTI6MjUgQU0NCj4gVG86IElu
dGVsIFdpcmVkIExBTiA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+DQo+IENjOiBL
ZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IG5ldGRldkB2Z2VyLmtl
cm5lbC5vcmc7DQo+IENoaXR0aW0sIE1hZGh1IDxtYWRodS5jaGl0dGltQGludGVsLmNvbT47IENh
bywgWWFodWkNCj4gPHlhaHVpLmNhb0BpbnRlbC5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50
aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+Ow0KPiBLaXRzemVsLCBQcnplbXlzbGF3IDxwcnplbXlz
bGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFU
Q0ggaXdsLW5leHQgOC84XSBpY2U6IGludHJvZHVjZQ0KPiBpY2VfZ2V0X3ZmX2J5X2RldigpIHdy
YXBwZXINCj4gDQo+IFRoZSBpY2VfZ2V0X3ZmX2J5X2lkKCkgZnVuY3Rpb24gaXMgdXNlZCB0byBv
YnRhaW4gYSByZWZlcmVuY2UgdG8gYSBWRiBzdHJ1Y3R1cmUNCj4gYmFzZWQgb24gaXRzIElELiBU
aGUgaWNlX3NyaW92X3NldF9tc2l4X3ZlY19jb3VudCgpIGZ1bmN0aW9uIG5lZWRzIHRvIGdldCBh
IFZGDQo+IHJlZmVyZW5jZSBzdGFydGluZyBmcm9tIHRoZSBWRiBQQ0kgZGV2aWNlLCBhbmQgdXNl
cw0KPiBwY2lfaW92X3ZmX2lkKCkgdG8gZ2V0IHRoZSBWRiBJRC4gVGhpcyBwYXR0ZXJuIGlzIGN1
cnJlbnRseSB1bmNvbW1vbiBpbiB0aGUgaWNlDQo+IGRyaXZlci4gSG93ZXZlciwgdGhlIGxpdmUg
bWlncmF0aW9uIG1vZHVsZSB3aWxsIGludHJvZHVjZSBtYW55IG1vcmUgc3VjaA0KPiBsb2NhdGlv
bnMuDQo+IA0KPiBBZGQgYSBoZWxwZXIgd3JhcHBlciBpY2VfZ2V0X3ZmX2J5X2RldigpIHdoaWNo
IHRha2VzIHRoZSBWRiBQQ0kgZGV2aWNlIGFuZA0KPiBjYWxscyBpY2VfZ2V0X3ZmX2J5X2lkKCkg
dXNpbmcgcGNpX2lvdl92Zl9pZCgpIHRvIGdldCB0aGUgVkYgSUQuDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZmX2xpYi5oIHwgMjYNCj4gKysrKysr
KysrKysrKysrKysrKysrKysrKysgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
c3Jpb3YuYw0KPiB8ICA3ICstLS0tLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjcgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3ZmX2xpYi5oDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV92Zl9saWIuaA0KPiBpbmRleA0KPiBhNWVlMzgwZjhjOWU1M2Q2ZTVhYzAyOWI5
OTQyZGIzODA4MjlhODRmLi5lNTM4YjRlY2M2Y2VjN2Q4YmQyNmINCj4gN2QxOTgxOTdmZDVjM2Vk
MmU2MCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92
Zl9saWIuaA0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZmX2xp
Yi5oDQo+IEBAIC0yMzksNiArMjM5LDI2IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpY2VfdmZfaXNf
bGxkcF9lbmEoc3RydWN0IGljZV92ZiAqdmYpDQoNClRlc3RlZC1ieTogUmFmYWwgUm9tYW5vd3Nr
aSA8cmFmYWwucm9tYW5vd3NraUBpbnRlbC5jb20+DQoNCg0K
