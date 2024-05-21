Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC01D8CB563
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 May 2024 23:26:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DCA381BD9;
	Tue, 21 May 2024 21:26:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jewG-7AWCfVA; Tue, 21 May 2024 21:26:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D66781ABB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716326816;
	bh=pcGgiTJELecv27VTZCBpmDo+NGtFiDSPSy4UmCIPobQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9oAoj6pawjKr9TgVfYI3LkFd6n5RcTIi/4WLUFeqZrl8GBIDRPNpH+DOyAXLgoFXT
	 tXVhkzmQ6ngCZie+BJu9go1V77kzT8sn0o2WF+eK0iUrqnmgw0PrwkEPko1sThA+Nn
	 JtVcUZmp4Fr0bWsfaEqeawT3usRZbxLMQMmoppe1ulR79FftcnpVFkAhIv1Mif9LSF
	 cI7Xb6R6O8t934XVIixctdKkV8bxd0gucoa6Ev6xOA7xfLFDoaLp2LK4BjXl7g9ExE
	 OQVNrgzbJj1Fk6s6pBDA8Dab/cGHLDbF+3AH80AEv1X2wUIpczKON5k9PPzSBTMf1B
	 2CyanOLz1LodA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D66781ABB;
	Tue, 21 May 2024 21:26:56 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 999BC1BF414
 for <intel-wired-lan@osuosl.org>; Tue, 21 May 2024 21:26:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 80B5460A5C
 for <intel-wired-lan@osuosl.org>; Tue, 21 May 2024 21:26:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lx3C4BW0Q2dK for <intel-wired-lan@osuosl.org>;
 Tue, 21 May 2024 21:26:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6C18A6090A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C18A6090A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6C18A6090A
 for <intel-wired-lan@osuosl.org>; Tue, 21 May 2024 21:26:51 +0000 (UTC)
X-CSE-ConnectionGUID: 8+ZMtX7aRCuWq086QErHxA==
X-CSE-MsgGUID: HF2U3vlyRjuoJh0d4PkQRQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="23961654"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="23961654"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 14:26:40 -0700
X-CSE-ConnectionGUID: BRi00SXnT8OC+vPjAQVDyw==
X-CSE-MsgGUID: tSze/dX6Q1WsSkA7pHKlnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="33661488"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 May 2024 14:26:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 21 May 2024 14:26:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 21 May 2024 14:26:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 21 May 2024 14:26:38 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 21 May 2024 14:26:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mSC9zYvyb9/lE+oJ6K+3bwbb+EcINcz3jlGx7ypJVJ3o9AGvvRcNlNnw0/3zSeTT5bYh80IH84fnLvinqTM//41eebuhBACl0OeLcte/uFzXwiUKVgrJi8hwr0ZiZwOGJjpz/UPEERbQOiNnHw1LUSFMgQqnLNgNAvF6YIIe/kMofCjYmmz1Vxz5WRZ+CWSRJ0z3eVQx1aR3M3mRN0MaXgeNdi5sXOoNwWXHrb6ht74JnqG5EB9PUvHSSAYK0LMopakVLADFBZOcprIL+6BM3AYB6QuPnG0b7jsMjm4D0tpO8v8bf9TR4AzzDvMMlHYpAZ5rcXinsTM0s637PkUSKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pcGgiTJELecv27VTZCBpmDo+NGtFiDSPSy4UmCIPobQ=;
 b=dnIEfeSeqo2q6gS0qu88mRWyCbdhKWzOpD9/OA3pk5r2rTfZ+sMWB7mUZnU9SWX1QQxgs1lVXj3vQzK+E8qGDyhXnpU63Q1LiIGor2DeiCPYjZvYtnNyjmpkyNVi0Oe0DVgBSG0i2dJpsV34+II+D1hqeAzBwAp/xuPBklDCk2tGSakbqlsGl0oL1yqdVJoxz94A9c7mnHLZ+OeHWWA82XLJVsiToAzbAEU1w174z4wfWJRWtnPVyZSPTDyvom8iDVMseafT7j6bAj16Y3ZjIlgk7HK/qSQPLkNstW1sLRk/6+qcd+6qBVqLKqIWb0Z5UG57UJ69vqkbX2AMUsz7EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA1PR11MB6121.namprd11.prod.outlook.com (2603:10b6:208:3ef::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Tue, 21 May
 2024 21:26:31 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7587.035; Tue, 21 May 2024
 21:26:31 +0000
Message-ID: <2fb592d2-2153-4d48-97e0-4b0515afc4c0@intel.com>
Date: Tue, 21 May 2024 14:26:28 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240520222011.2852799-1-david.m.ertman@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240520222011.2852799-1-david.m.ertman@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0275.namprd03.prod.outlook.com
 (2603:10b6:303:b5::10) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA1PR11MB6121:EE_
X-MS-Office365-Filtering-Correlation-Id: b51b1a40-f597-47f8-3b9b-08dc79dcaeb1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z1JqT2diVFdNeTBFcTg3WmpLeFBVeDRvNHNmSU9VTzhsMzR1cUJqWEkxVG5X?=
 =?utf-8?B?YU5BeWwzcDdYUTFEYkMvdlBpcERrQ0tIU3ZBVTZvbU1VOEdLS2lNMklCeFFy?=
 =?utf-8?B?YlIwNG1KbHZ1Q3NkWnNmMDlXUkpjdE1SSnR4b2pJTy9KUklydTk4aUJ4Nm5H?=
 =?utf-8?B?dzlGems1a3c2OVlnYkQ2WjZIdmJtMFB6bXF0TDdySExwNWd3dXVSNG5hYkoz?=
 =?utf-8?B?ZkhUa3VOdHZNTHR1TmtPbzRxbDJCWU5SSVlnZHBkdmpaSXluU1JKd2UvdHgv?=
 =?utf-8?B?TUNOaFlMYnpnbnJTYXhGNXl3TnA5VjU3WkZReHhTN0Y0ZVl6bFZGOHlFTVlq?=
 =?utf-8?B?WGgwaVE4d1BGb1kybk1NMG10ZWNzUDhaTmdSamVoSnhwQXJ3a1ZuWTdNaE9C?=
 =?utf-8?B?dUQ5VG9PVFpHbzdRRTVWTyt0RU9sY2RiOUZYemVxajJyOHBsZGh5eXZFV3dz?=
 =?utf-8?B?RTdHbFdjR081MU9Tam9ZQVllK2N5MDIxdWdrWTlncU81eFgwcnhnRHdMTnRX?=
 =?utf-8?B?UjNHc0wzQXAwSXprejFpb2QxMENnbjNmc1phVnZ4Mk9abjZqaEhKOEMvYWx4?=
 =?utf-8?B?NDhyS0dxbUMxRkJlbUQ0Q1pqaVp1aVEvQ0wvUGpDdUZzci9oM0xFdG14ZHp0?=
 =?utf-8?B?cmhjQ2FVYzVKNU9RQVlPYVA2cEpDY2ZXZlcxWjNadFJuTnE5L3ZqRXQwMjlJ?=
 =?utf-8?B?Tlg4eCtGWXhXZ20rOW1OQWtJeWJnN0ZLOGp0cExOenlvME1XdnNCaGRTRDNq?=
 =?utf-8?B?Ty9FekZSaCtaZmpaT25OT3pjRHdyS2V3THNSdTZla2RzUjFuTEtwWTd1dFo5?=
 =?utf-8?B?c2FoZzZzTUMvV2p5enI2S1B3MjczNHdzdUdXSi8ycDBaSGJTamREeVExVW45?=
 =?utf-8?B?WEtwK0xnam9NS2M0OUtwVXJndUh2dmdqVG5GV0dXbCtmVHg2dkZxY1B4eUUw?=
 =?utf-8?B?dFU0TDBZcVZ4S0t3bXJHbXpJNG5Fb2lNbVpsd3puemRiYWZHMnhwQStMeG5j?=
 =?utf-8?B?UmpBZkhENmhUNHM3dStWbzlYSnZEVVAwdUxUZDBPMzh4N2dkNVN5VE45bnlX?=
 =?utf-8?B?S3M3d01DQVdYSkFRem1iNXd3cHdtdSs5SXBPSVFxbjNtbTJBMWJRSFBzNFl0?=
 =?utf-8?B?TnJOY0V6Q3VpMFQ1OHlXbU5vUHg5ZWJ0NVZXSHkzUzZSYWJ3WUU3UjBzVWYw?=
 =?utf-8?B?aDgxTDZ5QkJvRVAwZ2V0RkJKZE1rVEJVenBtck0vZGNLREpEODZTOFBGbFA2?=
 =?utf-8?B?MDJvTmE4VGtHYitFdVhFbjdtTHFnaTRvRTdjY3dxOS9kUkN4K1ArWm01b1pL?=
 =?utf-8?B?bTk2V0ZHM0E3alBkanprRnpYU25HNWhRQzUzWDV4T0crdHEwc0k0MEJEZEgv?=
 =?utf-8?B?WFpkK1QvRHVyM0Q5N3Y4TXRvdXVmY3FCQktieGY3dGRVR1dsZHhiTlRNaGFO?=
 =?utf-8?B?ODVQN3lVNjFmNVBaV0JNcllpQThvQnZsRWVVN0ROdk95MXJld0YzL1k5YnNu?=
 =?utf-8?B?ZGp3SmRwQlhpL0xSemd6VWloRHBad3RlWXdZUm5yTWtZTDlEOGRud3pyNmdv?=
 =?utf-8?B?MEhKOHdLMkZEMVRUTmR2ZlVvVzhtRFlMVmFoRytwVHg4S295OXBrWVRtQ2hR?=
 =?utf-8?B?M0hhcS9PVFRTMXFjdWVHQ3hXOUVWdVRoMms0enlHNVNhL1E1VHh5NGR2dVkx?=
 =?utf-8?B?ajd6UEJnMTQ5SXhjTnFUd0VBcGlxL1R4ZmdWTDVadmVNZjRUT0JyNE9BPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VTgxWEJvREI0TUZHQTUzSHFkTVBRTkd6M0szNDBpZ0tXekZwaDFObmVpWW5V?=
 =?utf-8?B?TVJTaWUzWUhaRGJUdVQ2WUxsbERrVXUzc2tzTFRDU0JzNzRnOTJzbUpmRDY2?=
 =?utf-8?B?OHRnbERiRGtWSTVtSi90a0drcnRiZDNUZEkzaWthOEcyM2FYQnVCVXFuYXBq?=
 =?utf-8?B?WkFTaTFYVFhMa1pidFBJSmhBUFpCVExWYjR6UnBxN2RTaVNZRGUraytpNTQ5?=
 =?utf-8?B?aHJpdmIydlhrbFpldU5PckdHMlZBa09pRFlYVXRXWmFsSjhqUTN5NTlVYjY5?=
 =?utf-8?B?blhTKzR6Snk0b2VBbmxIYitpMkt0REpSYUhKZDBUYkNMQXArT2tGd2pnTktN?=
 =?utf-8?B?cTA2VmtXZkFnOXR5Rk9FU24rOUppaFZXK3QveG5GRmU4MTBlWVBiZGxUUzB1?=
 =?utf-8?B?T1BqL09WVlR3ekJDTmV4TVhoWlM1U2Q3N2tUUSt3MnA2Z2YvNzJTWVFJZ0VC?=
 =?utf-8?B?QzZhU055V1JUZUlRdFRkOENYblhobUZJV3AzVkpLQzk5NUY5RkdUZWRDdkdR?=
 =?utf-8?B?ODhQVVk0Ym1DSlpZL1gra1hBSUdHRjcrcUJYamx2V002elJRL24rWWxRMHJr?=
 =?utf-8?B?TERPRmlLZDhZQ2s5eWtlb1ZuOHRWa2lVOXJXcE5IY3BKUldZakEvdEhMSGU4?=
 =?utf-8?B?RGRNNlowZU9hNnd3UjFjT01zbTVjL1dHbmpoTVcrR0ZSZmdRaXhaazJiZUVu?=
 =?utf-8?B?YXZQVVF5YjdxMENaN3ZETU02dU9MRU1xT0NpcGVONEFLdVN2M0FUbWt0eHJw?=
 =?utf-8?B?TzdIUENWVHpDQUFTT2xxWEZsb1RCWDQ0OGxhUTBXbHRXcGlScHJXcitoTWli?=
 =?utf-8?B?L2VXWUFLdHd0Q1VsZEJ2ejV3ZlVGVjBFRFUxL1RUVitiZG03VVpNTzM1Vjl3?=
 =?utf-8?B?ZDErWkI0TnZRT2lia3dyNk9qUWZLWWRjS3djN3N0OEFzSUd3d0YyaXVZcVI3?=
 =?utf-8?B?MkJ1MzcwWGNSNGZGUUlZWUkxU1pyWDZKSXUvMGlnaGQwcHdkYWdrT25sVGY4?=
 =?utf-8?B?ZFArNjRFT0Jnbkx4WVBHa1NBR0lpcUdDQUhmQkpMOHQwdkNSQ1pPOEdoVlFz?=
 =?utf-8?B?SjR5cFltVWIya0Zlelk1NC9wczQ0Sk5jS216Tm5iaWgrblRtQXNQdUp5b2RX?=
 =?utf-8?B?Y3c2emZQUG1tMHN3MHpuc3R4ODE4dS9jaDJZVC9xZUZ3WUVUSkdQMkkrRU1K?=
 =?utf-8?B?N0c1cjR6ZWgraHhqZmVwcXhxNExzcXhUdndEc1hna0xsaU40cDdrM1FjYWhB?=
 =?utf-8?B?dHowNW4xV09SeUpPQVRqSUp0NWlXakJ6WkRodHV5TE0zc3E2aS8wdm9tem5z?=
 =?utf-8?B?bHFvZzNDU0pocVI5bUlWTStEYjFFclRqancvUkRmNElEQzVBcyttaWlqUjJp?=
 =?utf-8?B?MGdCL2wxUk5KTHcvMnVwVFgzNGRwc3BhWS9JWE0yb1p6a25OYnVscEFseXR1?=
 =?utf-8?B?elFBZWtUL1Q4Mm5ZSXpCS0FmR0lkeUFDUjJkcGcvOG9Zc0s5TUg2QVdOZEU1?=
 =?utf-8?B?c1hjYThNWUFkRE5XN1hxU3crYlhqeUF0VVlhN1NQSk92Z2Qybm93KzMvcitL?=
 =?utf-8?B?UGx2a2NyQ2ZUZ0dHVnZBSHRLMHMxbnJhRHdiNk84NzhLaHUwdXQzWFM0WGtz?=
 =?utf-8?B?cDNsUlR1QVMwanJ2ZVh5Z3oxTHBtMEk0aTI5UWlkMGY2aUhGUEgzcTZMMXBz?=
 =?utf-8?B?U3ZwSWYzTkJOTGhpOXdxaGNwWWxwWjREUE16T1FxbHorMXRyS2I0Q2xyRmZl?=
 =?utf-8?B?c3VFWmY5UU5rc1Rob1lZOTk3TkJhdndmTTV2M213bjBPaC8zd01BOEFDN05O?=
 =?utf-8?B?VGZKWHZLN3lRNXN5NjlIYkxWeEwxdHFERllDL0FhTEppaWhWVDdGZnMvMUZn?=
 =?utf-8?B?Q3UwQmwwK3hvVzFFaEpKZlV1cFRZNURjWHhZUEY0NFdaWGJKbFRndlk4MWZl?=
 =?utf-8?B?NnNDV3p3K2pzZlQvMFZJbm1UTmIzL2UySnp0dnVtaXBVcysyaUFsM0NrdGtr?=
 =?utf-8?B?R2tYYTlqZkhWNll5ZllYZ3g2NlVWQngwbnJjV2hERllwUFlhbmt4SUE1cUlB?=
 =?utf-8?B?YUdtK1pSSkEyNHAwcFVONG1CVjlzaFNBMUhnVWRpTElrd0R4R1MwenZHeE1K?=
 =?utf-8?B?MUlxUzZ2TlVKR1NCMFhCVGxsU0hjWTRkRlgzTzdDemhkakpVUzN0ZzdjanJj?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b51b1a40-f597-47f8-3b9b-08dc79dcaeb1
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2024 21:26:31.1344 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AhtGNX+oBpvupkPnRaPWEdPFTRmzB+DUGgLhhH6qji+n79e7I/ytwuNL+L4f5rDWQY01LCcV2ASdfh1R74XXOZH1aZJhQDM7SYwFVbQnEK4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6121
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716326813; x=1747862813;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/04C8Axy/dhZZAtxZw/bqJACZqvvapWjLGY9ca5D9bQ=;
 b=bNeVgfGCyB14cMVHE0UTm3p792Z2EZIVvZ5c3HA+j3JnoV+bKg5wT8GK
 cisPhlgW5fI5ru31spCLQY1R0W+R48DnK/9WWsIvkbSpAjfLxJOdojp+r
 /Ow9O3IzIlh2K2BvhVKXINKE/qhSL0b5R6GIqlH7K4rhSztX3MZvZW+gt
 cd12o8AuLYuekYdyrntGNDWzM0UVmX1bAOf+YmvCZZmpLgdwxochiEMwY
 htsHKLoAtNvFjGte6HJrMjgGzxQ84rdgWlfwtqboiHUC302hvUBv4s5qD
 rB0O4/WpIMyksgG62NIFw6uK5pVWUKWsu1kvmJipW4Ch+Ibzvlfzd8Jc2
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bNeVgfGC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: check for unregistering
 correct number of devlink params
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/20/2024 3:20 PM, Dave Ertman wrote:
> On module load, the ice driver checks for the lack of a specific PF
> capabilty to determine if it should reduce the number of devlink params
> to register.  One situation when this test returns true is when the
> driver loads in safe mode.  The same check is not present on the unload
> path when devlink params are unregistered.  This results in the driver
> triggering a WARN_ON in the kernel devlink code.
> 
> Add a symmetrical check in the unload path so that the correct value is
> sent to the devlink unregister params call.
> 
> Fixes: 109eb2917284 ("ice: Add tx_scheduling_layers devlink param")
> CC: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/devlink/devlink.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> index c4b69655cdf5..94ad78d2d11e 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> @@ -1477,8 +1477,14 @@ int ice_devlink_register_params(struct ice_pf *pf)
>  
>  void ice_devlink_unregister_params(struct ice_pf *pf)
>  {
> +	size_t params_size = ARRAY_SIZE(ice_devlink_params);
> +	struct ice_hw *hw = &pf->hw;
> +
> +	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
> +		params_size--;
> +
>  	devl_params_unregister(priv_to_devlink(pf), ice_devlink_params,
> -			       ARRAY_SIZE(ice_devlink_params));
> +			       params_size);
>  }
>  
>  #define ICE_DEVLINK_READ_BLK_SIZE (1024 * 1024)

What? This makes no sense. Just separate the Tx sched parameter from the
list and register it separately based on whether the flag is set. Then
only unregister it when the flag is set.

Messing with the parameter size list is brittle and requires us to be
extra careful that the Tx sched parameter is last.

NACK. Please fix both the registration and unregistration to avoid this.

Thanks,
Jake
