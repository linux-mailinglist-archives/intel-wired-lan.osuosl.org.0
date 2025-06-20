Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DA5AE22B4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jun 2025 21:12:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B95F841759;
	Fri, 20 Jun 2025 19:12:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vYj3P0efUwJw; Fri, 20 Jun 2025 19:12:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC51C417C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750446752;
	bh=iqOgg3KyHLqT13TS0Iit7df5tyPVGPO7X5CBYCMA2XI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HrmddYkb4xn1CW4O7yL6leb283JayBoOBnTj+WWIoPIxrJHqo1One8rxqdHNa/4i9
	 ASx5TjPht6Jwh24+mjIIv6LG4c+oNvnfzOuzMZBSb//jTjpbFhB9BE+K3x/MRLdXf7
	 ZXF5irZtt2ZKvYS7sG4vkHBjJc+U4Ankm2/OVd8s6a+IEjuIyl26CRngvT22irXs+v
	 PGxyLs9aVVzLLfFkE6qeUptOFAdceWNADTWw8n/d+N9HCSshS016td4sZd5yGCZPG+
	 SkGiX5QXUppVR7XimcgF+VGSKAJhGgP2pCEiKYr4zKMT420TR/n4iTBgd8ozZnZqFP
	 GH/LUbKNkWybw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC51C417C1;
	Fri, 20 Jun 2025 19:12:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 65180E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 19:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 55E8383D6C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 19:12:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xtf8YydV1AOX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jun 2025 19:12:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9808B82156
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9808B82156
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9808B82156
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 19:12:30 +0000 (UTC)
X-CSE-ConnectionGUID: AaUPjsiERpydFgD5cKPBwQ==
X-CSE-MsgGUID: vP8ot3nhSoCdmBSVWtb46g==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="52423976"
X-IronPort-AV: E=Sophos;i="6.16,252,1744095600"; d="scan'208";a="52423976"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 12:12:25 -0700
X-CSE-ConnectionGUID: CEx2iXHoQ6mVTtAjhOQYPA==
X-CSE-MsgGUID: uphGwwT3Q+a81jINluaVww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,252,1744095600"; d="scan'208";a="150419209"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 12:12:25 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 20 Jun 2025 12:12:24 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 20 Jun 2025 12:12:24 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.89) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 20 Jun 2025 12:12:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PwVDh4wfXIExqLUxgdtDmZk4AvR0BPUQxCzN1UYVyu2OTRgYa/LfztUTwY1Rbq/cA8D5P/+M+mZo1k8AtmsgDlAMbKpqKzANttLfJjHJQX1hO+kSDSnM728SSAgj1H5/8HkkxNtEyPyZUkKAEOJxSvgIlM+ZjqK4MLMfQ/KHn5dby4S38wH9F13i7su71WlgVn1pFVODsr4PkJcc/nOGQ8gtyT+JqFwGns4/GxBYuuwZMzuspb94pDpbYJ+RmIIhor6/R0F9gVMnCINhxwXWmUhcIQ06e59gcuT+igcV5kHnJ9coKjEhRooQIIXnwUKb8QlVxkyF6LKXRycMZ+ysBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iqOgg3KyHLqT13TS0Iit7df5tyPVGPO7X5CBYCMA2XI=;
 b=ryVFXqCD/dcu21Iz7/FCYwTYfXyaWehd0S14w5OI4vUDfH+MEy7dBJ6ZZ3f4G1gBaQTBtmSK2z6yt1i6vedRcml8Ju2DNAPUsHSriL5c3kD3mO1HayAPi+UPbIbFGOxxdgyMyMlCelccLeimLLiWd1g78klHgDm7BTEgfP29XM/fXr75ceYGvS2NrSbp1aJ5G186yA49uSO8eJMwo+inC9k5lOba8vh/ofvtkKJepIkKC75BNDzL36rbmcTiWjKeImegMwzNgRWrcEwtiVjqHQGlV3JeUXZOgy4/78j1uaS0DDmHZyQRrUG6h6jfKkfUculihSCK6prMuXAwYcvyCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS7PR11MB8805.namprd11.prod.outlook.com (2603:10b6:8:254::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.30; Fri, 20 Jun
 2025 19:12:20 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%7]) with mapi id 15.20.8769.022; Fri, 20 Jun 2025
 19:12:20 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Arnd Bergmann <arnd@kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: Arnd Bergmann <arnd@arndb.de>, Simon Horman <horms@kernel.org>, "Dr. David
 Alan Gilbert" <linux@treblig.org>, Dawid Osuchowski
 <dawid.osuchowski@linux.intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Mrozowicz, SlawomirX"
 <slawomirx.mrozowicz@intel.com>, Martyna Szapar-Mudlaw
 <martyna.szapar-mudlaw@linux.intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] [v2] ethernet: intel: fix building
 with large NR_CPUS
Thread-Index: AQHb4glJAd9PQbjaJ0OxOtPb4m9jlrQMaliA
Date: Fri, 20 Jun 2025 19:12:20 +0000
Message-ID: <IA3PR11MB89862A2FCD832C087823D3FEE57CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250620173158.794034-1-arnd@kernel.org>
In-Reply-To: <20250620173158.794034-1-arnd@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS7PR11MB8805:EE_
x-ms-office365-filtering-correlation-id: b8c084a6-f4dc-4397-1ad9-08ddb02e6158
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|921020|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?aUhrcVd5N2J1K0ltNXZHY0RIQnhDWWlwNGpCVFFVRm9tc09UeUtRRTcvYVpy?=
 =?utf-8?B?cytBOGtnMVVuM2hVZVVCZlJyc3krTmZsOU9uYk9sU0lncENmbTZULzhxelNi?=
 =?utf-8?B?dUdldjkzYWxqc01JOW9EaHF5U1ZxaVY3VWpzS2FGY1ZIL2RlM3k5cENNenM2?=
 =?utf-8?B?OVg2a2F6VVdYMi84SVhsa1pKTjZ3dlBRZUt1VGo1S3RtMHZRQ1I4QUtFNjVi?=
 =?utf-8?B?Q01kV2taZEVJc3pYd3VsMmNxaDZMbHVnaTB4MkdRN0laZ1U0U1dveS9wTDMr?=
 =?utf-8?B?TGl6UmVPSDhrcWM4TDUrSmkrYmJPdVBOWG5uWEtUdVB5WjNPelJSSUFTUVhj?=
 =?utf-8?B?Q09BbUxJRUtzOWE2bDFkYmhid1JoSUNMSkluRXpTNG41bkdWN2ZIYzI1QXZn?=
 =?utf-8?B?VXJyKzI2MFA5MDNoQ3lLSnFaMktjVFF1RUtkbklCaTRuYjJhTWhBeTlwellQ?=
 =?utf-8?B?QjdXWU5PYUhBUkk1RG9JWFFOeFlpalVkNE1IeFY0RWM0OTlkSnBnMGk2YnFF?=
 =?utf-8?B?STI5N2hvNkg2SEV1S3RHdThKN01DY3dvUG01eFVaS3JiTzlMdCtVOUZhK0Ra?=
 =?utf-8?B?TlE3L3BaNm9tWWVGMFEvakVmV2YzOStGUWFkM1puRXVjR0o3SHVvbFBQcDVL?=
 =?utf-8?B?aHc5OEwwTXhxTW1LREVZamxqbkRkSCtRbitxaEE0cWsyVVBhaytEQ1RldmFP?=
 =?utf-8?B?cE54dUVJRDkrNnNWb0VGcTlPbFQveW1NTUdXWnpLTW1LOExzRGVZU3k0cE5T?=
 =?utf-8?B?UlpYT2xuTFM1U1dyUU00RCtmUVNhdlJrVmkzMUhsUjArUmpPelo0VTVzRnMr?=
 =?utf-8?B?NlNXL0VraUhPSk43bi9tWTcvK1Y0RkQ2UXpicUNJRmc0RGk4RS9JcXRrTUNa?=
 =?utf-8?B?U0JXVWNMTzRNYXJYOFlUWnhNY1pYTnl4K0ZWSmNncG54OFVaY2RRdkowMk01?=
 =?utf-8?B?RCtrMFZkRzE1cTNMcEtGQXlXaXJPQmdabmRSR2cyOXhhZUhLRzBsTm9HSkwx?=
 =?utf-8?B?RzFVQUFVYjZNUkdPdm1BVEJwYjhzQ0IzelFKR2Q5RTVCUGRZSFV1L095UkUx?=
 =?utf-8?B?Wld5d1hHMGs5M3M4ZXdidE40SE9YMkxraGNTYWJYNU1GckNKdGVtNnZLZlkv?=
 =?utf-8?B?RlJkd0dpOVZybDBsM0duckpkMjRPYnBIcjh4aEVQVjNMSjdiaE9pT1hqZTlr?=
 =?utf-8?B?WWY1Yk5uUkVhL21TQ0Z6UjlRM2hHTmtrUXY0aFozTGI1clhpQ24zR3llaEVr?=
 =?utf-8?B?R2JLNTJTVHB6a2lHSmw0MlNzVzdZTjBOMk9iRzlPTVRET3YwYnQ3SXZWeE1T?=
 =?utf-8?B?SVp1S3F1bGY3em1rMjkxUmowbHlMSTBYaU9EeGNtTXg4cVZSVWJLUld1YVNq?=
 =?utf-8?B?aHZQaVJtcGN6aDdqNjkvcmpvM3g5MEMweVdqSjljeFN5OTRlaDVVem43aDQ5?=
 =?utf-8?B?RU1neW9iSUF2Z0o2SlFheXduaUhhQS9jc2dOU25veG1palBYNjFGWWdiWk04?=
 =?utf-8?B?eFV3dXFDMWZXUUt0TTQ0aXBwczhyWWxUT1dVRklYZEE0Z2VMdUY3a1A5WFpW?=
 =?utf-8?B?TU8zajh1ekEvZmhZZlFuYW1rWGE0QnpKVG1rbFZlamJlcFVkUHpkeUtKTmt2?=
 =?utf-8?B?aEJOck9jL3p4Wk9Fd28yT1kySlp4VnZ0REVmcE5nVVVEVXdRTWJ0cjVzcjZx?=
 =?utf-8?B?QitzRS9tNmpodkg5d1IxeW1xZGVaTEdheXpVbHRmQVpJcDM1dUx3bHFJZFVW?=
 =?utf-8?B?THh1am0yMXJyUXYrZ2hzeWhTZkRoUm9QdWlGWXI4c3FzOG9iZEJLQ2xKVFRO?=
 =?utf-8?B?VDNuWm15SjR2YVdJSUIwaExodzlYWkVhL0c1d1JpbVRxZ2dac0xEMWdEaUg5?=
 =?utf-8?B?dmdhYmlHUXJJUyt1OGdRbEFVV2xDcDV2YkJLNUJhVkxiQlB5MFRZaWJBZk8r?=
 =?utf-8?B?V2FqeXBlcjBsbHMxT0NaZGVoTElJVmZmTnJHbFMreFlTaW5JWkdta0NPSi9j?=
 =?utf-8?Q?mL2VXKsCgqri8B21H1OgfSdF1IZt7E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(921020)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?em4zUklSaGRjRnhtajVjc3RaN2xkbFBiMEp6eG1EblV1ZVlDbWNicjRYc3RG?=
 =?utf-8?B?RkNrbU1JRkhQS0RPejZkTEZPM0dBQmpPUlpmMVRpeXdsSTNCSTJidTU2ZGVP?=
 =?utf-8?B?b095NW1XbUZXNU9BNnNaOUlaSVNHQVVscTZER0Nqa0F0V3NwQnFuRVdER1NB?=
 =?utf-8?B?bDM2V3FMZHhiQkkzRXkrK3dyU0s1UXBHUWtoSDJ5czVRMmpMd2hVbEZad0hF?=
 =?utf-8?B?aENtUTZMaElKZjRta2JNUUNOb0poTDlBeXFBa0JFelhUVnd4bUJOSzMzYU9n?=
 =?utf-8?B?a1JjRFRzTU95L0VFWU9uY3FjQWRvMXhCNDdneURoRkhvYlV4RG8yTkw2UGxk?=
 =?utf-8?B?amtNbTBqUEcwWDlPMS9vSWFpWVNxVzFtUUR5SjQ2K1dUWVhoS2JpNDlRSTdK?=
 =?utf-8?B?MzYxMlkwWk1MTitWbFZaQVd1TGpTNSs4cjZBclhEcHhFMFAyYy9OaXNBOHlR?=
 =?utf-8?B?dkZiNjR3V1k4OWhTTTZaanFnNHVUMDl4UzExejBwTFpuM1BUYU55STN3UEJF?=
 =?utf-8?B?RVQ4RUpkLy9kY1NKaTN2ZmJBU1ZLanFaZXh4YVB6dHR1R2NUNU5FSFdGQWJh?=
 =?utf-8?B?RU1UMzFON01KOGkxa0ZtSTErWDQzcjJXZng3U0xmYVMzdmtEVnlCbmYxMzYz?=
 =?utf-8?B?KzNDY1ExMjV1aStVazEvb01IQkJVQVRKaXZCKzUxbzBaWUdOV3dKSEdUSkox?=
 =?utf-8?B?ajdRU2czMjQ1bU9ranA0MjV4bXJxbzZ3aXZzZmVpaFl6SDg2WmpuRmdlSGpi?=
 =?utf-8?B?NDNVU2liMm45M05ObmdqVVJrOW5QZDlGajV0VE53dUY4SnRwRHlWbnYwZnRi?=
 =?utf-8?B?UFhobVNSMGVnSWljS015WHVud05Rd3dPdElTajNlcHZCRXJ2U3pJWWJ5cDlI?=
 =?utf-8?B?a2QvMjZuYWtkUTJ4MjZGbTFMM0V3ZEFyZDN1L293VTVsdWNTNjgyVmRSVWZx?=
 =?utf-8?B?NFVMR1MrN3JwVDFSTnFVa3gvaW5IMGFMcndnK3FudEFZaGlzUVhEUldBRjE5?=
 =?utf-8?B?eENDM2ZjNzZOTDhMeVRjSGs1RXZSMzJRTUVKczRXLzhSZDhWeWZWd0NXdzBv?=
 =?utf-8?B?cjRXeVh0RlBIU245WXZKOFc5K25tTEdkU1UvV2w5SnI3Q0FvRFR6eEl3S3Uy?=
 =?utf-8?B?aUt1TjQ0d3UzUFJmZk9udU1mUTF3OVI3TTF3SUhIbFg4b1ZFVzJRdEh4bDZL?=
 =?utf-8?B?d0lHSmQrbWNGcHh6YXlHamJ5aGJRbERIb0dySjhiZGMxWGh2di8vZ2J5YUFI?=
 =?utf-8?B?QlRMNEVodzNIWVpSSTN6MUMrcVFBclZwUWg2c0tiWEdhK3N1SDVHZVVtK3hN?=
 =?utf-8?B?ZmpYbVhCT29teDk4eVJERzlmWExRbU5oWXhjWUl1cGErbFFTWjZTYmV1OXd6?=
 =?utf-8?B?WDZ4SHpsSzBJV1hOMFpDYVB0MnNqVmZDUWpheW9zb2x1emFVTG95OWZ2bDAx?=
 =?utf-8?B?REN2a09rQTZZRjRUQ2VvWFdwaW5BT1lVK1MxWDBuSG9zdmZETm1UZmRkTzJN?=
 =?utf-8?B?UjA1VVZqa2tpaE5teVdVMHV2T0VINGYvdlBXd2JWL1VTTHV5RWdveVk5QzN1?=
 =?utf-8?B?Qkg5ekJwNnZJanZ5U1A2eUZKTHhrTGdVemhndUZRbVdER01OQlZSSW03eE1X?=
 =?utf-8?B?QVYydnQzdHQ2V0JUekFnNi9mUEhlS05neUcxUHVJb0k0elNJSHQ2blJDa1c2?=
 =?utf-8?B?VlRHRjRWSXl6dzB5MXN2ZzBha3lhRnJjOFhIczFsQm5BelRwTXBRcktzc1hG?=
 =?utf-8?B?TloxbGJCdm1YUFdVb0o0ZW5YREVFd0dmZFVqeWM0M25EZzVEQjFYYzFrai9N?=
 =?utf-8?B?bjEybEl0Sk8rcjhINkFGeUNBZTUyeTNtWmFjU0g1cS9vVkJxY1dHZUpVc25P?=
 =?utf-8?B?OWhod3J5d21jeUJ3azg3aUl4amd0U00wN2ZMNU9ndTBrZHFEUjE5WGExaWMx?=
 =?utf-8?B?VE1OYVphNmFNb0JsM01TUTV3YjdCaG41TkdZZWhyUjluTVBPL3VSekxoK0FB?=
 =?utf-8?B?SzJaSlRtajREODQ2WDdVNVNucE9adUlvNjRJVDlDMzdXdm0wbThYdFREN3Zt?=
 =?utf-8?B?QmU5RDFCVC9oSmhZcjdiWjdaL1QzSjdNdWsralJFK3ZIei94MzNoUDZjQmlX?=
 =?utf-8?B?VEQyT1dPNUV4aVdaeW5EK01abGExK0F6RkI0MHRQakVKTzdNZTN4eFV2UGdI?=
 =?utf-8?B?MVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8c084a6-f4dc-4397-1ad9-08ddb02e6158
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2025 19:12:20.4040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 90fYQOKGEV1EtY3X+j2dlfiNR8a0BU6vtaV9JX2UVrVjS4lZAC2qZOK9C6mCPnvqq7oOsklc9q76+sNRBtvFAxUalf2ACHrmT5IfFKmsgac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8805
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750446751; x=1781982751;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iqOgg3KyHLqT13TS0Iit7df5tyPVGPO7X5CBYCMA2XI=;
 b=jEudg9N0iEn2ivAggMUEw1RIsl/OsPXF+UuuOuygwrAusduKhyBVBAov
 8GQEy6RhtTepXn0U8rjV0KbCZyXg2Y/EMtuR7yg1HugAbOdd7DYme1XLG
 SvWRylMjzRFXa9S9FJvi7JBPsp9jdNMYqGK9/jQfpmyNslf8Q/t1fIQR2
 5li++q4t43BPg+rCqbNVhATuNAthBT65QhXIjTD1Nx+4VORwr5ZykGA7s
 qk1u+xOwTrK2iC0wsWo1V0IE+UZ6/mKwag4EloWRwFHDmShnUCHWEuqUK
 d6HB9QVobdIb4aQ3p86KegblkomCrslNuxt5mgsps48EuqExqq5BbbETb
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jEudg9N0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] [v2] ethernet: intel: fix building
 with large NR_CPUS
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQXJu
ZCBCZXJnbWFubg0KPiBTZW50OiBGcmlkYXksIEp1bmUgMjAsIDIwMjUgNzozMSBQTQ0KPiBUbzog
Tmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwN
Cj4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEFuZHJldyBMdW5u
DQo+IDxhbmRyZXcrbmV0ZGV2QGx1bm4uY2g+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVt
bG9mdC5uZXQ+OyBFcmljDQo+IER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+OyBKYWt1YiBL
aWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsgUGFvbG8NCj4gQWJlbmkgPHBhYmVuaUByZWRoYXQu
Y29tPg0KPiBDYzogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT47IFNpbW9uIEhvcm1hbiA8
aG9ybXNAa2VybmVsLm9yZz47DQo+IERyLiBEYXZpZCBBbGFuIEdpbGJlcnQgPGxpbnV4QHRyZWJs
aWcub3JnPjsgTG9rdGlvbm92LCBBbGVrc2FuZHINCj4gPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50
ZWwuY29tPjsgRGF3aWQgT3N1Y2hvd3NraQ0KPiA8ZGF3aWQub3N1Y2hvd3NraUBsaW51eC5pbnRl
bC5jb20+OyBKYWdpZWxza2ksIEplZHJ6ZWoNCj4gPGplZHJ6ZWouamFnaWVsc2tpQGludGVsLmNv
bT47IFBvbGNobG9wZWssIE1hdGV1c3oNCj4gPG1hdGV1c3oucG9sY2hsb3Bla0BpbnRlbC5jb20+
OyBLd2FwdWxpbnNraSwgUGlvdHINCj4gPHBpb3RyLmt3YXB1bGluc2tpQGludGVsLmNvbT47IE1y
b3pvd2ljeiwgU2xhd29taXJYDQo+IDxzbGF3b21pcngubXJvem93aWN6QGludGVsLmNvbT47IE1h
cnR5bmEgU3phcGFyLU11ZGxhdw0KPiA8bWFydHluYS5zemFwYXItbXVkbGF3QGxpbnV4LmludGVs
LmNvbT47IGludGVsLXdpcmVkLQ0KPiBsYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIu
a2VybmVsLm9yZzsgbGludXgtDQo+IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcNCj4gU3ViamVjdDog
W0ludGVsLXdpcmVkLWxhbl0gW1BBVENIXSBbdjJdIGV0aGVybmV0OiBpbnRlbDogZml4IGJ1aWxk
aW5nDQo+IHdpdGggbGFyZ2UgTlJfQ1BVUw0KPiANCj4gRnJvbTogQXJuZCBCZXJnbWFubiA8YXJu
ZEBhcm5kYi5kZT4NCj4gDQo+IFdpdGggbGFyZ2UgdmFsdWVzIG9mIENPTkZJR19OUl9DUFVTLCB0
aHJlZSBJbnRlbCBldGhlcm5ldCBkcml2ZXJzIGZhaWwNCj4gdG8gY29tcGlsZSBsaWtlOg0KPiAN
Cj4gSW4gZnVuY3Rpb24g4oCYaTQwZV9mcmVlX3FfdmVjdG9y4oCZLA0KPiAgICAgaW5saW5lZCBm
cm9tIOKAmGk0MGVfdnNpX2FsbG9jX3FfdmVjdG9yc+KAmSBhdA0KPiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jOjEyMTEyOjM6DQo+ICAgNTcxIHwgICAgICAgICBf
Y29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwgbXNnLA0KPiBfX2NvbXBpbGV0aW1lX2Fzc2Vy
dF8sIF9fQ09VTlRFUl9fKQ0KPiBpbmNsdWRlL2xpbnV4L3JjdXBkYXRlLmg6MTA4NDoxNzogbm90
ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvDQo+IOKAmEJVSUxEX0JVR19PTuKAmQ0KPiAgMTA4NCB8
ICAgICAgICAgICAgICAgICBCVUlMRF9CVUdfT04ob2Zmc2V0b2YodHlwZW9mKCoocHRyKSksIHJo
ZikgPj0NCj4gNDA5Nik7ICAgIFwNCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX21haW4uYzo1MTEzOjk6IG5vdGU6IGluIGV4cGFuc2lvbg0KPiBvZiBtYWNybyDigJhrZnJl
ZV9yY3XigJkNCj4gIDUxMTMgfCAgICAgICAgIGtmcmVlX3JjdShxX3ZlY3RvciwgcmN1KTsNCj4g
ICAgICAgfCAgICAgICAgIF5+fn5+fn5+fg0KPiANCj4gVGhlIHByb2JsZW0gaXMgdGhhdCB0aGUg
J3JjdScgbWVtYmVyIGluICdxX3ZlY3RvcicgaXMgdG9vIGZhciBmcm9tIHRoZQ0KPiBzdGFydCBv
ZiB0aGUgc3RydWN0dXJlLiBNb3ZlIHRoaXMgbWVtYmVyIGJlZm9yZSB0aGUgQ1BVIG1hc2sgaW5z
dGVhZCwNCj4gaW4gYWxsIHRocmVlIGRyaXZlcnMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBcm5k
IEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9u
b3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiAtLS0NCj4gdjI6IG1vdmUgcmN1
IHRvIGp1c3QgYWZ0ZXIgdGhlIG5hcGlfc3RydWN0IFtBbGV4YW5kZXIgTG9iYWtpbl0NCj4gLS0t
DQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9mbTEway9mbTEway5oIHwgMyArKy0NCj4g
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oICAgfCAyICstDQo+ICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZS5oIHwgMyArKy0NCj4gIDMgZmlsZXMg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ZtMTBrL2ZtMTBrLmgNCj4gYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9mbTEway9mbTEway5oDQo+IGluZGV4IDYxMTlhNDEwODgzOC4u
NjVhMjgxNjE0MmQ5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9m
bTEway9mbTEway5oDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ZtMTBrL2Zt
MTBrLmgNCj4gQEAgLTE4OSwxMyArMTg5LDE0IEBAIHN0cnVjdCBmbTEwa19xX3ZlY3RvciB7DQo+
ICAJc3RydWN0IGZtMTBrX3JpbmdfY29udGFpbmVyIHJ4LCB0eDsNCj4gDQo+ICAJc3RydWN0IG5h
cGlfc3RydWN0IG5hcGk7DQo+ICsJc3RydWN0IHJjdV9oZWFkIHJjdTsJLyogdG8gYXZvaWQgcmFj
ZSB3aXRoIHVwZGF0ZSBzdGF0cyBvbiBmcmVlDQo+ICovDQo+ICsNCj4gIAljcHVtYXNrX3QgYWZm
aW5pdHlfbWFzazsNCj4gIAljaGFyIG5hbWVbSUZOQU1TSVogKyA5XTsNCj4gDQo+ICAjaWZkZWYg
Q09ORklHX0RFQlVHX0ZTDQo+ICAJc3RydWN0IGRlbnRyeSAqZGJnX3FfdmVjdG9yOw0KPiAgI2Vu
ZGlmIC8qIENPTkZJR19ERUJVR19GUyAqLw0KPiAtCXN0cnVjdCByY3VfaGVhZCByY3U7CS8qIHRv
IGF2b2lkIHJhY2Ugd2l0aCB1cGRhdGUgc3RhdHMgb24gZnJlZQ0KPiAqLw0KPiANCj4gIAkvKiBm
b3IgZHluYW1pYyBhbGxvY2F0aW9uIG9mIHJpbmdzIGFzc29jaWF0ZWQgd2l0aCB0aGlzDQo+IHFf
dmVjdG9yICovDQo+ICAJc3RydWN0IGZtMTBrX3JpbmcgcmluZ1tdIF9fX19jYWNoZWxpbmVfaW50
ZXJub2RlYWxpZ25lZF9pbl9zbXA7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGUuaA0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZS5oDQo+IGluZGV4IDU0ZDVmZGMzMDNjYS4uYzQyOTI1Mjg1OWQzIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaA0KPiArKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaA0KPiBAQCAtOTQ2LDYgKzk0Niw3IEBAIHN0
cnVjdCBpNDBlX3FfdmVjdG9yIHsNCj4gIAl1MTYgcmVnX2lkeDsJCS8qIHJlZ2lzdGVyIGluZGV4
IG9mIHRoZSBpbnRlcnJ1cHQgKi8NCj4gDQo+ICAJc3RydWN0IG5hcGlfc3RydWN0IG5hcGk7DQo+
ICsJc3RydWN0IHJjdV9oZWFkIHJjdTsJLyogdG8gYXZvaWQgcmFjZSB3aXRoIHVwZGF0ZSBzdGF0
cyBvbiBmcmVlDQo+ICovDQo+IA0KPiAgCXN0cnVjdCBpNDBlX3JpbmdfY29udGFpbmVyIHJ4Ow0K
PiAgCXN0cnVjdCBpNDBlX3JpbmdfY29udGFpbmVyIHR4Ow0KPiBAQCAtOTU2LDcgKzk1Nyw2IEBA
IHN0cnVjdCBpNDBlX3FfdmVjdG9yIHsNCj4gIAljcHVtYXNrX3QgYWZmaW5pdHlfbWFzazsNCj4g
IAlzdHJ1Y3QgaXJxX2FmZmluaXR5X25vdGlmeSBhZmZpbml0eV9ub3RpZnk7DQo+IA0KPiAtCXN0
cnVjdCByY3VfaGVhZCByY3U7CS8qIHRvIGF2b2lkIHJhY2Ugd2l0aCB1cGRhdGUgc3RhdHMgb24g
ZnJlZQ0KPiAqLw0KPiAgCWNoYXIgbmFtZVtJNDBFX0lOVF9OQU1FX1NUUl9MRU5dOw0KPiAgCWJv
b2wgYXJtX3diX3N0YXRlOw0KPiAgCWJvb2wgaW5fYnVzeV9wb2xsOw0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmUuaA0KPiBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlLmgNCj4gaW5kZXggYzY3NzJjZDJkODAyLi4zZjk1
MjFkNGU4OTkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2Jl
L2l4Z2JlLmgNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmUu
aA0KPiBAQCAtNTA3LDkgKzUwNywxMCBAQCBzdHJ1Y3QgaXhnYmVfcV92ZWN0b3Igew0KPiAgCXN0
cnVjdCBpeGdiZV9yaW5nX2NvbnRhaW5lciByeCwgdHg7DQo+IA0KPiAgCXN0cnVjdCBuYXBpX3N0
cnVjdCBuYXBpOw0KPiArCXN0cnVjdCByY3VfaGVhZCByY3U7CS8qIHRvIGF2b2lkIHJhY2Ugd2l0
aCB1cGRhdGUgc3RhdHMgb24gZnJlZQ0KPiAqLw0KPiArDQo+ICAJY3B1bWFza190IGFmZmluaXR5
X21hc2s7DQo+ICAJaW50IG51bWFfbm9kZTsNCj4gLQlzdHJ1Y3QgcmN1X2hlYWQgcmN1OwkvKiB0
byBhdm9pZCByYWNlIHdpdGggdXBkYXRlIHN0YXRzIG9uIGZyZWUNCj4gKi8NCj4gIAljaGFyIG5h
bWVbSUZOQU1TSVogKyA5XTsNCj4gDQo+ICAJLyogZm9yIGR5bmFtaWMgYWxsb2NhdGlvbiBvZiBy
aW5ncyBhc3NvY2lhdGVkIHdpdGggdGhpcw0KPiBxX3ZlY3RvciAqLw0KPiAtLQ0KPiAyLjM5LjUN
Cg0K
