Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0786BBC58D4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Oct 2025 17:21:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B76C060E2A;
	Wed,  8 Oct 2025 15:21:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SF3v0FHu2GkR; Wed,  8 Oct 2025 15:21:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10BB960E26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759936891;
	bh=Oh1vmFdEf2+yAct5R+jutMjKEQ/MfzL+oxKkPNyP+6o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AgXikraNdpJs9WO/nap/Pq0/T1itW3h/oJqKqhLaryyToqqQSOukTcLQmgd18COGW
	 fLZmaUkGUTDhzmohoVBdGyqpJahO1ve7WXjy9duAGpQ2cLGbPa6nlBkOfRxgKjmE6q
	 H10DRWlFNh5Xj3ubIYQi9OxN7yUCVwDxKxD+Hj3c8f+Vn6c4TmEqbJOl7JqDWPcm75
	 LVZYUT4nJVTEBLMurMInYYwN/l+6PVXU2seFqeEToIkSyCa6NP4ka7zBsgerdcAddu
	 7VHVVVx/ycVWjZHpHGMxXJprd//NijOpyLvsU3yEUFtIeOSuNSKfRZJZpHvxH2q/hq
	 Z+erKMHbV8itw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10BB960E26;
	Wed,  8 Oct 2025 15:21:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 006419DA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 15:21:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA78540519
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 15:21:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z4i2Cjsf-zDO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Oct 2025 15:21:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D1AA240415
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1AA240415
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D1AA240415
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 15:21:27 +0000 (UTC)
X-CSE-ConnectionGUID: W6eTLLY0R+2g29Z7KkZQRA==
X-CSE-MsgGUID: zrFX1PzTQpSq8P60rRP0bQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="79570743"
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="79570743"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 08:21:24 -0700
X-CSE-ConnectionGUID: XjXkukq6QSeGQgzxmerZyQ==
X-CSE-MsgGUID: 3xTBE9wPSbCygKpPmHHwGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="211407567"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 08:21:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 08:21:24 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 08:21:24 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.11) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 08:21:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iFeY5xWlJvbOD3VoSf3QZQ0of+cu2ivhf6lGyZNZJCyb+kFGKNO9hZ7FS98UOguoPOqETkEkn84uIE4vH7oEbWFEvgCykDpHIxr8ZV8P5VuGUvhvPlJip6fZbLuN9bEjKuFl6cfygTpj1/ov/BPYSKKRzTF+bs80U4ysScScy+XfjWplBUtPoA0QPr5RJhG3p+E+a94zd/raU1BMhzWNfznNZalnU5zNN0z7yB5H0JCbpRLjRH6DGb8XB8ekhmzhNYQWPn9FoMI8+qQu29K1kUE1QRxORXTSsFmQfF5x6SIt/7ui29C1VAT27kynNJ1oFiDMTR1EP71pj4CLgCw0LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Oh1vmFdEf2+yAct5R+jutMjKEQ/MfzL+oxKkPNyP+6o=;
 b=PHXUWe0auNqqjqseao895jjAhSTrqLVriBL2HFquki6wwWrAPa1e9myyvoXVi5T7iSWQF+lxbVTCKHPmO2Jq9WQsIh2bRY2ldfSSrUJEeOIk4t96/RDgjXh2BzzrEepTRugitoEEI6g96vjbHVPTiLgA3lXL90jERn4r2QGwxfqBYCmz2u1//Z4wmrhXF7/mp3waaNKiwkyP8khfRQpUd0Sz7k3p6ANg0FWUhEMnz444EHHFxRBnA6VPQz8zmx83J9rQw6POLBTbJdpKIs2IiIV7bwk2kTMbd/zNrd6HFaw9KN0V7Dp+WGwQDKcUw1oRlQBC9/3cdg1LSyfX10UqEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by IA3PR11MB9111.namprd11.prod.outlook.com (2603:10b6:208:57d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Wed, 8 Oct
 2025 15:21:21 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%3]) with mapi id 15.20.9182.017; Wed, 8 Oct 2025
 15:21:21 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-net] ice: fix PTP cleanup on driver removal in error
 path
Thread-Index: AQHcOEslUVNix7+kc0S4ZmfPYsXHRrS4QSwAgAAZf9A=
Date: Wed, 8 Oct 2025 15:21:20 +0000
Message-ID: <IA1PR11MB62194EE66AD471C23925643992E1A@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20251008115811.1578695-1-grzegorz.nitka@intel.com>
 <4c3f7f4e-a77e-4862-843e-4f96afd406e0@linux.dev>
In-Reply-To: <4c3f7f4e-a77e-4862-843e-4f96afd406e0@linux.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|IA3PR11MB9111:EE_
x-ms-office365-filtering-correlation-id: c5eb4ede-a770-4f02-e97a-08de067e55f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?amZGbU9mVklJUEpGZDBtYkNLWUxDN0Iwd01uOFVnT0pYMDNXVTBFNlZVN21Y?=
 =?utf-8?B?OHovUGd6Smx1N25GTUo2T1pPK2JFNStxdFB1cU1STDhpdHluSFN1ZGtNMlBM?=
 =?utf-8?B?UHpoLy9jYWhSajlIdlhBMnBZbE5vTVJiTFc4dTBERFZBTzViK3RUcWtuVkI4?=
 =?utf-8?B?NndPWFlDNGdRZjNLMXBUS3dDQTRRVWlLQXdSMmhiY29yaFdJemJGZHZxcmJH?=
 =?utf-8?B?YS9vZ3Roa0ZVaGpvaWxnNWloVzhTbG9xY3M3OS83cHhFd1lYaXArbGVvMkpv?=
 =?utf-8?B?R3FWL1hmTVc5YytxMDU2MmV5VXJvV0UwTitCM2paV2JnNUJxQ0ppcUQybmhp?=
 =?utf-8?B?R1RTa2paRXZ1WElGRk5NWU9OT2tTRjJ0Tkp0M2hFVkloNG90QW0yNk1YZk5t?=
 =?utf-8?B?NndiNXRhUEV4TlR1YTZuaXg2eTljUW1ZOXhRR3E5OWI0dVdsZ1VWTTdlUWp4?=
 =?utf-8?B?WXU2SnBXbmNpWjFNQTJnaFBUbllDZHg4ZDhFVDVtai8rMStacHFkU1VGZlFZ?=
 =?utf-8?B?NFU4dVB4OFVxditoblhjdFJEL0VVZDZqV0VYUTdBa0thbXhxK1cxcXg2am0v?=
 =?utf-8?B?WXhPR3QvcUh4STR6clhoNlo1NHRXakEzMWkwTXBUWVhJRlh0Q1RVaXZTWWtQ?=
 =?utf-8?B?WGJheEVRK0NTWkJZOEdQU3FJNVZYMVExS1ZXSzJOR0crRzZyZVdaRzV0SlNR?=
 =?utf-8?B?YnY0bWdML3FwQzZnd3Zxemd5QTE2S2hRMXpUdzJicDdUcUgvK0FqL0xRM2F6?=
 =?utf-8?B?R010STYvVVZFejBSeURZTUdqZVlhMU02MDUwYUpDNXJqbTcwaTlRUXdKQjN0?=
 =?utf-8?B?SStKUlAvMURHbWx5d0thS0xXOEpCQmFIK2d5YlIzdW9GYlNlRDRaS21aNm9B?=
 =?utf-8?B?OFN5aDBxNC9UeVUyQ0ovNGJyYzFWY2QzQm5FalV3bDRIWGd3S1hKbXJmMGpP?=
 =?utf-8?B?SWY2ZEN0eTRpeUhJUDJ3VmIzUTRadVNocWlLVDljQ1YwZ21uRVhwZjIxQkN2?=
 =?utf-8?B?VmhxeFhFZXFUUkdpUEZ0T1hnYkNhRFF1NnF0M3NpMnQ5aTVmYTI2YzBYNnNG?=
 =?utf-8?B?cmhKWGhmb1FHaHdnbGNXMGlydk1obEUyQ3IyenhQQnJtR3hMVWVlRld3YUtP?=
 =?utf-8?B?VG1xLzRONG96TTlFWkVXbHFQVVU3T1JrZWlWS3J4UE5udkpkQ0pkbEVFNnVh?=
 =?utf-8?B?ckdqeHQwSkhwa1NEMlZOcXRYd2o4M08zRTlzRUNsaFpRSlU5ejRtZVRzTWUx?=
 =?utf-8?B?TlVjb2plRUpRd0lzY0RaQS9ZRlBpckhJUTJtSWNtcTVNeWRsOStvUzBrSHF2?=
 =?utf-8?B?Z2pOSGpjYm9XdWJDZitiYU43QWFpTDFCY1BJV1pHYjJaemtIM25XdHFnODRx?=
 =?utf-8?B?VVJCMU1KYjhNWkhUdWh5NkVWZGY2Zmw2N1dwYysxbUlPaXFPS09rWlZQS2lG?=
 =?utf-8?B?c1BWemN0em9SRkR4Wi9xQXc0L2gvcUUwemhEQUJOakdOT1JKa3EwL3RVVHl0?=
 =?utf-8?B?bFJHdkhnejVDanRZOFRGVENneWN2U2xkVWNvaUFIRzgvSWQ5WDV1RXZRV0VC?=
 =?utf-8?B?N2tNQUJRM2xMeUZsdHhReUtjVFRONFhYK3hnZXpLNkV2K3VCRkgxSS8vYXVI?=
 =?utf-8?B?SGs2b1dZVUVJSHVGbUFBL0ljc1Fpbk5CbDNoYUROOGVvVVFLc0FZK0x2eTBZ?=
 =?utf-8?B?SjR0bkZDcSs0RWt0RXBaNzB5RU15cUc3a1B4Y2hud2JpTXhwbjIvYkhZbFhv?=
 =?utf-8?B?d0Voc2FSSUxNMVJSc0FURWN0UFFnM3lKYWpUbUZJc2lKS2N0RVRBYWVNLy9D?=
 =?utf-8?B?SWpzQmFSRHBzZzM4VlFGZWwyd2RBSWVEc1kxbnovTFNFenhxSnArZ210UU5K?=
 =?utf-8?B?VnR2QkhMMkJMSGc5T1JpK1RiUVZDSEhqbTRCUlNXZ3RQMFE1RktEVHcyd2JR?=
 =?utf-8?B?U1k2VlVtVFZyUnZoU3lDUG8raW45WFBDSzJVUjhEYmVSYkRUWW4vU0crd1Ni?=
 =?utf-8?B?VWE0blRQMXF5TmNOMkpXckJRS2x1WGZuYlZ1WkhnS0x2SmNobUx4ZFdLTzd3?=
 =?utf-8?Q?tl5TCN?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UERuaFd2SnUwVVloK0NjbFU0KzlTSmh4TitTMTR3QW9YcENrWkltSkVqYnBC?=
 =?utf-8?B?SHpYM0o3OWlFVUxrSHdQU3hrMFdEZmFaY3VkZkR2R0k0TkJ4ZThncVpiSVZ1?=
 =?utf-8?B?NjQwK3M0R2dkd0c0MUtmWGtvTWU5Q1RveWNOSmxyNktZNHdqN2NIK3VlaXZ5?=
 =?utf-8?B?WVZKV0hTV2NwY21QNGx5WW82NW9ZYmF6cXVHTElnRHRCMitjdktiSnVna1hl?=
 =?utf-8?B?OVAzMW51NVBqVlFlWGdkeTgxYk1TWVVaY1lpSlVPaS9SdlUwUE1GWGU1Vkd4?=
 =?utf-8?B?NnVINnc3NDRuODdUaUlKTGhlSTRkdkJTQTY2Lzhzd3BBcnBFdGdNQTJBWW12?=
 =?utf-8?B?Q0JsZDQ1eVAvVDVtOXZqbkUzWFo4eVJnNDhvRFdoWnNTdHI0aE1GQzhPalow?=
 =?utf-8?B?MFlHamdTb2Q5dTFPSU8xN3ZLM3NVK0drcHRoYVl6bFhRY2hKbEUvRmwxVHg5?=
 =?utf-8?B?UE9wQzlqWElHZHZnLzVZSnNKNmlDTHBhaVpCUngveUpxbVlPaFlZRVgydUtR?=
 =?utf-8?B?YzVhMng2VVhOeVozcTJLQmFBRC9EWGx0VUZiaXZob3crRU5vTzBmb3FodlFY?=
 =?utf-8?B?NjFSOHltQWkxWlI0ekxkdkRGeDR3dXNiSW9XNm9Lai9kTTNFa0kvSzZIZ2xa?=
 =?utf-8?B?amlnd21CQ1VRNVNVREc2NytiM0xpNUpJdk5FZzhQNVFYVE84VmV2R3pPY2hz?=
 =?utf-8?B?TlIybldXdEZxUDE1SXZYMWh4b09oUTdUaU1IM3lqdXJMODZUUDJZT2NiQ3dO?=
 =?utf-8?B?NGEyWjBiL0xxa0czb3pnZDlUQUNDbTArMW9FazRwdXpxSG5SR3NPTkdxZlQ4?=
 =?utf-8?B?aFpuSGYwblcvb09HbkpWNWhHK2JvR2ttUXNnWVFPanN3Si9SRTRyUmJxWXdi?=
 =?utf-8?B?dkdab0o4SExhcUxaV29QSVdodGg1bjNlU0JIaXhZbXNZVXAvYmlNbkovZTNr?=
 =?utf-8?B?QXB0R0Vaa21FdGYwNENEYm9NRmhHM2pObmpGZFEyWFpRVGZac0plU1ZyMWc5?=
 =?utf-8?B?MTM0aE9WcEpxZit1eml0R3Yzb01iVFc0OGgrbHB5NEJHVHBKK1B1ZjBCMHJv?=
 =?utf-8?B?c0VvRVM4THlyREpScFFwLzZDRXpyenE1S0NRTnlWQitNSk9ZTW9uM2RXbEdF?=
 =?utf-8?B?eFg0MGtvUFpXM09rRVU0eTB1OEN1RlgwbjQ0ODJHaXFYaGszdXI1M2JiMXY2?=
 =?utf-8?B?Q2txWUpaME5GQW96SVVMbUxCajF5TkhLNUR1cVBtbTdTQkNsR1NzNjNIcjRI?=
 =?utf-8?B?RDZHTjBWVloxTk10RDlmZzVoaG5jRVpNUnc2RytiVVhOZThTSTgrYWNpbW5B?=
 =?utf-8?B?cGFPQVl2dTdUUlN3ajF5Z2plMEpWQmFZWXJCTi9XeDBEb25hT0V6a3d6RnM1?=
 =?utf-8?B?S3JCMDMrRlFMd3BVOGFwVDh4eWMzU2pESHBrekcyTDV1SFJYQW5tTjlsRjZG?=
 =?utf-8?B?d1Yra2F6dlZOZUhYTmpzVTdyWVJxTkNGaE8yTnJoa2NpaXBVMEh2Z0sxa3pB?=
 =?utf-8?B?VFpJcXBzREtQZE13M2NrL2MrSXIwRk9QVkVSSzZlcDBobHpLNVJYc2pQbGVa?=
 =?utf-8?B?eEF4UmwreVRZQ0ppQjRZbEJwb29meVNqUlZxUnRNOStUT1RiRU5rYUV5VHh5?=
 =?utf-8?B?cFhaUDVSVEF2cEtSMEI0OHAxU2NSaHE5Z1BGTVdJdkFQSmlvOWZteTFiRjdp?=
 =?utf-8?B?R2NCMHljUUpJejN1OHU5eFhCaVBmM3dzTUlkbklNYnJUTlRyMnAxbGhvc3ZN?=
 =?utf-8?B?QisxeXltSzNJN2VOMEJpOTYrU3dXL2hiVUtWVUptRkFXWFg4VEFlZDJZQWxu?=
 =?utf-8?B?MjJ6RE9GenN1a1hxQmp3c0tlTVNGdVFLc2d1WHd3Sm5BR0ZUZkE4N1BsWlMw?=
 =?utf-8?B?TGV2Rkl4RlBGSUxLamJUYkcwaUhteXozMktKZzVodUdya1VqWHJzOGdheVFv?=
 =?utf-8?B?azk3ODRsbElTeGRVaVAyckZUa0x6NEFZZkxhK2htQXQ3c3pNZ084a2VhRFFa?=
 =?utf-8?B?WE43MDJuSDhMdTcvMURod1RKUXd1NVBTKzJhUTBCVG1IbllvUGlIU0haTkl0?=
 =?utf-8?B?aFdFRXlhZlU5TkF6V3F2RlR5ZHVDaW1DYVppRHRTbWJ2aFJka3J6VlVhMXNi?=
 =?utf-8?Q?UpikAQ1BfDUCyALY4p8nU1ZO7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5eb4ede-a770-4f02-e97a-08de067e55f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2025 15:21:21.0571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aVVGFw9hb/STGFrFVm9amltFZdLVwLwC8lItxHDdnHmzX1mRtOogGJlk0XUStedH3hYQxHp9/taMHSD5FdC8KAp1NSp7bHK2D5nnBwmuEpI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9111
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759936887; x=1791472887;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Oh1vmFdEf2+yAct5R+jutMjKEQ/MfzL+oxKkPNyP+6o=;
 b=NDlJllEG6UIqjBa9vZMpSfzirdwM00w1dh+OHLq+O8WRDu45dDvZGShf
 XwHSFcw3e3Jt4sGAvLjBstpRt4wLxEq+PvHESQTz/V8dMfB9O2e72vhVf
 B8q+WJqypZPEh6aHviuYBSIWw5g0vw6GIk1iAaXApTFT0HHCiS0TIZQJT
 D8Ws0FrdE49UbU24euIp0jqvP+/TUBPN/1b07OBzvtLc36YXS/iCOGt0Z
 r/ie9sOkdtcyw7iTF+aTH0KS0zLoygywJhiawM1BUetQ+gQI3MlSPYIQY
 pAcSeinmaaS1ETKQuQw7hahwmyLM+Y2v9rySyfysoABcRCDiKObHpPrv4
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NDlJllEG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix PTP cleanup on
 driver removal in error path
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWYWRpbSBGZWRvcmVua28gPHZh
ZGltLmZlZG9yZW5rb0BsaW51eC5kZXY+DQo+IFNlbnQ6IFdlZG5lc2RheSwgT2N0b2JlciA4LCAy
MDI1IDM6MzkgUE0NCj4gVG86IE5pdGthLCBHcnplZ29yeiA8Z3J6ZWdvcnoubml0a2FAaW50ZWwu
Y29tPjsgaW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBuZXRkZXZA
dmdlci5rZXJuZWwub3JnOyBMb2t0aW9ub3YsIEFsZWtzYW5kcg0KPiA8YWxla3NhbmRyLmxva3Rp
b25vdkBpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6
ZWxAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXRdIGljZTogZml4IFBU
UCBjbGVhbnVwIG9uIGRyaXZlciByZW1vdmFsIGluIGVycm9yDQo+IHBhdGgNCj4gDQo+IE9uIDA4
LzEwLzIwMjUgMTI6NTgsIEdyemVnb3J6IE5pdGthIHdyb3RlOg0KPiA+IEltcHJvdmUgUFRQIGZl
YXR1cmUgY2xlYW51cCBpbiBlcnJvciBwYXRoIGJ5IGFkZGluZyBleHBsaWNpdCBjYWxsIHRvDQo+
ID4gaWNlX3B0cF9jbGVhbnVwX3BmIGluIHRoZSBjYXNlIGluIHdoaWNoIFBUUCBmZWF0dXJlIGlz
IG5vdCBmdWxseQ0KPiA+IG9wZXJhdGlvbmFsIGF0IHRoZSB0aW1lIG9mIGRyaXZlciByZW1vdmFs
ICh3aGljaCBpcyBpbmRpY2F0ZWQgYnkNCj4gPiBwdHAtPnN0YXRlIGZsYWcpLg0KPiA+IEF0IHRo
ZSBkcml2ZXIgcHJvYmUsIGlmIFBUUCBmZWF0dXJlIGlzIHN1cHBvcnRlZCwgZWFjaCBQRiBhZGRz
IGl0cyBvd24NCj4gPiBwb3J0IHRvIHRoZSBsaXN0IG9mIHBvcnRzIGNvbnRyb2xsZWQgYnkgaWNl
X2FkYXB0ZXIgb2JqZWN0Lg0KPiA+IEFuYWxvZ291c2x5LCBhdCB0aGUgZHJpdmVyIHJlbW92ZSwg
aXQncyBleHBlY3RlZCBlYWNoIFBGIGlzDQo+ID4gcmVzcG9uc2libGUgZm9yIHJlbW92aW5nIHBy
ZXZpb3VzbHkgYWRkZWQgcG9ydCBmcm9tIHRoZSBsaXN0Lg0KPiA+IElmIGZvciBzb21lIHJlYXNv
biAobGlrZSBlcnJvcnMgaW4gcmVzZXQgaGFuZGxpbmcsIE5WTSB1cGRhdGUgZXRjLiksIFBUUA0K
PiA+IGZlYXR1cmUgaGFzIG5vdCByZWJ1aWx0IHN1Y2Nlc3NmdWxseSwgdGhlIGRyaXZlciBpcyBz
dGlsbCByZXNwb25zaWJsZSBmb3INCj4gPiBwcm9wZXIgY2xlYXJpbmcgaWNlX2FkYXB0ZXIgcG9y
dCBsaXN0LiBJdCdzIGRvbmUgYnkgY2FsbGluZw0KPiA+IGljZV9wdHBfY2xlYW51cF9wZiBmdW5j
dGlvbi4NCj4gPiBPdGhlcndpc2UsIHRoZSBmb2xsb3dpbmcgY2FsbCB0cmFjZSBpcyBvYnNlcnZl
ZCB3aGVuIGljZV9hZGFwdGVyIG9iamVjdA0KPiA+IGlzIGZyZWVkIChwb3J0IGxpc3QgaXMgbm90
IGVtcHR5LCBhcyBpdCBpcyBleHBlY3RlZCBhdCB0aGlzIHN0YWdlKToNCj4gPg0KPiA+IFsgIFQ5
MzAyMl0gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tDQo+ID4gWyAgVDkzMDIy
XSBXQVJOSU5HOiBDUFU6IDEwIFBJRDogOTMwMjIgYXQNCj4gPiBpY2UvaWNlX2FkYXB0ZXIuYzo2
NyBpY2VfYWRhcHRlcl9wdXQrMHhlZi8weDEwMCBbaWNlXQ0KPiA+IC4uLg0KPiA+IFsgIFQ5MzAy
Ml0gUklQOiAwMDEwOmljZV9hZGFwdGVyX3B1dCsweGVmLzB4MTAwIFtpY2VdDQo+ID4gLi4uDQo+
ID4gWyAgVDkzMDIyXSBDYWxsIFRyYWNlOg0KPiA+IFsgIFQ5MzAyMl0gIDxUQVNLPg0KPiA+IFsg
IFQ5MzAyMl0gID8gaWNlX2FkYXB0ZXJfcHV0KzB4ZWYvMHgxMDAgW2ljZQ0KPiA+IDMzZDI2NDdh
ZDRmNmQ4NjZkNDFlZWZmZjE4MDZkZjM3YzY4YWVmMGNdDQo+ID4gWyAgVDkzMDIyXSAgPyBfX3dh
cm4uY29sZCsweGIwLzB4MTBlDQo+ID4gWyAgVDkzMDIyXSAgPyBpY2VfYWRhcHRlcl9wdXQrMHhl
Zi8weDEwMCBbaWNlDQo+ID4gMzNkMjY0N2FkNGY2ZDg2NmQ0MWVlZmZmMTgwNmRmMzdjNjhhZWYw
Y10NCj4gPiBbICBUOTMwMjJdICA/IHJlcG9ydF9idWcrMHhkOC8weDE1MA0KPiA+IFsgIFQ5MzAy
Ml0gID8gaGFuZGxlX2J1ZysweGU5LzB4MTEwDQo+ID4gWyAgVDkzMDIyXSAgPyBleGNfaW52YWxp
ZF9vcCsweDE3LzB4NzANCj4gPiBbICBUOTMwMjJdICA/IGFzbV9leGNfaW52YWxpZF9vcCsweDFh
LzB4MjANCj4gPiBbICBUOTMwMjJdICA/IGljZV9hZGFwdGVyX3B1dCsweGVmLzB4MTAwIFtpY2UN
Cj4gPiAzM2QyNjQ3YWQ0ZjZkODY2ZDQxZWVmZmYxODA2ZGYzN2M2OGFlZjBjXQ0KPiA+IFsgIFQ5
MzAyMl0gIHBjaV9kZXZpY2VfcmVtb3ZlKzB4NDIvMHhiMA0KPiA+IFsgIFQ5MzAyMl0gIGRldmlj
ZV9yZWxlYXNlX2RyaXZlcl9pbnRlcm5hbCsweDE5Zi8weDIwMA0KPiA+IFsgIFQ5MzAyMl0gIGRy
aXZlcl9kZXRhY2grMHg0OC8weDkwDQo+ID4gWyAgVDkzMDIyXSAgYnVzX3JlbW92ZV9kcml2ZXIr
MHg3MC8weGYwDQo+ID4gWyAgVDkzMDIyXSAgcGNpX3VucmVnaXN0ZXJfZHJpdmVyKzB4NDIvMHhi
MA0KPiA+IFsgIFQ5MzAyMl0gIGljZV9tb2R1bGVfZXhpdCsweDEwLzB4ZGIwIFtpY2UNCj4gPiAz
M2QyNjQ3YWQ0ZjZkODY2ZDQxZWVmZmYxODA2ZGYzN2M2OGFlZjBjXQ0KPiA+IC4uLg0KPiA+IFsg
IFQ5MzAyMl0gLS0tWyBlbmQgdHJhY2UgMDAwMDAwMDAwMDAwMDAwMCBdLS0tDQo+ID4gWyAgVDkz
MDIyXSBpY2U6IG1vZHVsZSB1bmxvYWRlZA0KPiA+DQo+ID4gRml4ZXM6IGU4MDA2NTRlODViNSAo
ImljZTogVXNlIGljZV9hZGFwdGVyIGZvciBQVFAgc2hhcmVkIGRhdGEgaW5zdGVhZCBvZg0KPiBh
dXhkZXYiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IEdyemVnb3J6IE5pdGthIDxncnplZ29yei5uaXRr
YUBpbnRlbC5jb20+DQo+ID4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtz
YW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBQcnplbWVrIEtpdHN6
ZWwgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jIHwgNCArKystDQo+ID4gICAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4NCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYw0KPiBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMNCj4gPiBpbmRleCBmYjBmNjM2NWE2
ZDYuLmM0M2E3OTczZDcwZiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3B0cC5jDQo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9wdHAuYw0KPiA+IEBAIC0zMjgyLDggKzMyODIsMTAgQEAgdm9pZCBpY2VfcHRwX2lu
aXQoc3RydWN0IGljZV9wZiAqcGYpDQo+ID4gICAgKi8NCj4gPiAgIHZvaWQgaWNlX3B0cF9yZWxl
YXNlKHN0cnVjdCBpY2VfcGYgKnBmKQ0KPiA+ICAgew0KPiA+IC0JaWYgKHBmLT5wdHAuc3RhdGUg
IT0gSUNFX1BUUF9SRUFEWSkNCj4gPiArCWlmIChwZi0+cHRwLnN0YXRlICE9IElDRV9QVFBfUkVB
RFkpIHsNCj4gPiArCQlpY2VfcHRwX2NsZWFudXBfcGYocGYpOw0KPiA+ICAgCQlyZXR1cm47DQo+
ID4gKwl9DQo+ID4NCj4gPiAgIAlwZi0+cHRwLnN0YXRlID0gSUNFX1BUUF9VTklOSVQ7DQo+ID4N
Cj4gDQo+IGljZV9wdHBfY2xlYW51cF9wZigpIHJlbW92ZXMgcHRwLT5wb3J0Lmxpc3Rfbm9kZSwg
d2hpY2ggaXMgaW5pdGVkIGluDQo+IGljZV9wdHBfc2V0dXBfcGYoKSwgYnV0IGljZV9wdHBfaW5p
dCgpIG1heSBmYWlsIGJlZm9yZQ0KPiBpY2VfcHRwX3NldHVwX3BmKCkgaXMgY2FsbGVkLCBhbmQg
aXQgd2lsbCBrZWVwIHBmLT5wdHAuc3RhdGUgPQ0KPiBJQ0VfUFRQX0VSUk9SLiB0aGUgY2xlYW51
cCB0aGVuIHdpbGwgd29yayBvbiB1bmluaXRpYWxpemVkIGRhdGEuDQo+IA0KPiBJdCBsb29rcyBs
aWtlIGl0J3MgYmV0dGVyIHRvIG1ha2UgcHJvcGVyIGNsZWFuIHVwIGluIGljZV9wdHBfc2V0dXBf
cGYoKQ0KPiBvbiBlcnJvciBwYXRoIHJhdGhlciB0aGVuIG1vZGlmeSBpY2VfcHRwX2NsZWFudXBf
cGYoKS4NCg0KVGhhbmtzIFZhZGltIGZvciB5b3VyIGZlZWRiYWNrLg0KT2YgY291cnNlLCB5b3Un
cmUgcmlnaHQgZm9yIHRoaXMgc3BlY2lmaWMgZmxvdy4NCkhvd2V2ZXIsIHRoZSBpbml0IHBhcnQg
aXMgbm90IHRoZSBvbmx5IGNhc2Ugd2hlbiBzdGggbWlnaHQgZ28gd3JvbmcuDQpJIHRoaW5rIHdl
IHdvbid0IGF2b2lkIHRoYXQgY2xlYW51cCBpbiBwdHBfcmVsZWFzZSgpLg0KQW55d2F5LCBJJ20g
Z29pbmcgdG8gaW1wcm92ZSBpbml0IGVycm9yIHBhdGggcGFydCBhcyB5b3Ugc3VnZ2VzdGVkDQph
bmQgcmV0aGluayB3aGF0IGVsc2UvaG93IGNhbiBiZSBpbXByb3ZlZCBpbiBpY2VfcHRwX3JlbGVh
c2UoKS4NCg==
