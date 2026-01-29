Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DEjHsE2e2mGCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:30:25 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CF4AEB2E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:30:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E2BD60876;
	Thu, 29 Jan 2026 10:30:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iW_5TTcBJeB7; Thu, 29 Jan 2026 10:30:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDBB060872
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682622;
	bh=X5ERw36LoO30ZiRVfjEL/CPKuB7FdYwyUdEjAXHXLpM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OvYQcfQltk+BQ5c2A6hTVjluEevkfzJI7lZPQ8FUpe/n++j/EVMBBbB4zcpMBmiH+
	 nD+ZJp9bsjk83IE44cYbGyskdQXgVjWbm9YSsaHCyoa2dviuX3GNmQ0XT0iWWBn0WN
	 T982UFjkKWWqS0G4jutB/KjnY7vQCkdpaWlsFzPznncTv9pmg91+naPksopjD2Q+0u
	 HNg+PhStOR23W95EQqf8CLZUnHwUT5dELsTAVAhevgdxMiHR7rL1NcMjTNvcdNLzku
	 nP+fgrkQRfkR7yPP35YDsYudQxvFnymopm17OOKBkz/DQohl/xDRAXtmHsnv9R6jWk
	 fAs5HkIJdPvdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BDBB060872;
	Thu, 29 Jan 2026 10:30:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id BEFC91AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:30:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B904840AAB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:30:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4YJ_TKTLwiGT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:30:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9A72D405C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A72D405C2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A72D405C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:30:20 +0000 (UTC)
X-CSE-ConnectionGUID: mfa6Su9rS8WK2gmuIM+6yw==
X-CSE-MsgGUID: KXzy8MT2TkqY3zDDJyLp+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="93578777"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="93578777"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:30:20 -0800
X-CSE-ConnectionGUID: RxaBDbhJRwiCKU1nLSA3jA==
X-CSE-MsgGUID: ZF9YCXr3TvGiZPChgWwSHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="207657160"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:30:19 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:30:18 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:30:18 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.1) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:30:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k8rso8NOF+y3LONnzD3S6mu4DmBCneAqyBbKhs4xhP0hSxzXx5wGVEqjj/64/4QG/xJ1MWiUqIVr7y62bT59xSuaQMRlEsd9+QsA80QQi4V+Yqk7UfBBnThJu9XZM28tyt27Izq8B1b/dH4XcXxF6+Pzth9myDCzo9T8vhIJxg5xAulXaq/p241tD3diMwEwUt8bzktgz1qVgTNXDWti0YdRXsEPPw9A0Cska7idn8BUNiMn169nmu+Y+qdwrlOHfXJe7vb5YWzqUwbeEaKRR4aVywqB2URA42kyzvrzUBqBAWAsU+RliLgydkjN1BmqTYIyS+BMZJXNidxNYwkvJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X5ERw36LoO30ZiRVfjEL/CPKuB7FdYwyUdEjAXHXLpM=;
 b=T3IZe3hpNFqbu0u0VJ33G8VoiUZjpUQK06VxhJ396W+54GZ8fMvt5l6syotApiCVG6G1jDmzIAqkjqNixWKvsBEXSQ/4R12qdGwKQc/sGTs7FCt8SrDH8Yi+G43r4SNPOzC6Ofjp/92zuwZQ9DnxfjrCv11KvLEfUafJOqjGZX0q6yzUUeQo3bvDfRQ/L6dIbksTnswDwYT+G4D+jm4b9jNHEN9tNiv0vNbDA3awTF5ShtJoaBxu1Ir2jruK5MAoW/i31jUcZKyf9ego0znvG9Ry6vych2Ww8s8RZkmgAMBNSTVBHe5bN4DoylWuikC/c5lzTcaPjuGis92wsFvd4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB4956.namprd11.prod.outlook.com (2603:10b6:806:112::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Thu, 29 Jan
 2026 10:30:16 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:30:16 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: Randy Dunlap <rdunlap@infradead.org>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-hardening@vger.kernel.org"
 <linux-hardening@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Stephen
 Rothwell <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v3 12/30] docs: kdoc_parser: ignore
 context analysis and lock attributes
Thread-Index: AQHckPaI55nbEaybGUGTJri29n0kyLVo8o5g
Date: Thu, 29 Jan 2026 10:30:16 +0000
Message-ID: <IA3PR11MB8986C0CEB5C55C242A799FA4E59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <d044cc9f026908fff95e8ee6dddb0fff65152bcc.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <d044cc9f026908fff95e8ee6dddb0fff65152bcc.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB4956:EE_
x-ms-office365-filtering-correlation-id: e8d918e3-1b8e-45f3-791d-08de5f2164ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|19052099003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?ZEd3cGQyK0IvVDhkaDVuaVJqU0NxZzh2MjBGNU1MdlBMeFgrdTVQMzFZTE1L?=
 =?utf-8?B?N2VJNEFOaEJ3b2dnRFVQM0t0cVJibkdkT2NPcFNXenVodVNBTFNib0J3VWpk?=
 =?utf-8?B?UnpkZnRkUWZVS1RQcnorZERYMGx4T0c3UXIzQ2dDcGdJNC81T0gxaXZHMWo0?=
 =?utf-8?B?SDhYWnBDZzBzTFB1TDFQZXlpd3R2VURqT3YvbXY4cmc2cEs0UWdmMU1yYXFj?=
 =?utf-8?B?VzlKMDRKN2VNbTI4U2xBQ0RDbWo1d1FHak93dGdseDlQOHBYTHFwN05YNExu?=
 =?utf-8?B?blRPS2dkc2ZkTWxFNWY1SXlnK1BSdGZqblM3bjFyYzRVVlY2U1pYYzIrRzZT?=
 =?utf-8?B?aU11Yms4T2UzdlhjejRzRWF0bjZHWWg5SFBKUkhXUWlFL0g0TVhpbCtVQlN2?=
 =?utf-8?B?ZHM3MUQwQ3d2cHc2bllUTDN1UUtGY0krNW14bHI4T1RneTkvOVhHMlIrY3F6?=
 =?utf-8?B?cm5YZ3pCeFBZWEFUM1lPeWFOblVIZmNxd2xyZkxRaVV6azJXVDBRM2xFWEJq?=
 =?utf-8?B?WmF3UWxVMjZrTGlEdFNzakozSlBWZ24vQ3gwRkNuKytjVEE2MFRQNzhFN0tm?=
 =?utf-8?B?ekdZd0MwYTdQempIR2MrVTBHK0lxa1Uvd3E3NUdrR2pNZnZrZVkzdTdGS2p6?=
 =?utf-8?B?SDBFRnhWZ3huV09pbWhUU2V3UlJVQ2J4TzdzVlZNVFkyaHVIZC9yR3VOc3l1?=
 =?utf-8?B?NlQya2NRWmI5dzZQdXhYQXU1b1FlWTdPdU5hQk5BYnJTaWZGQkFrQkJqQ0ZE?=
 =?utf-8?B?UnRRdlVJZUlEVzVVTlpsWkpBZm0vTnVTY25WVEJWcmQ0MmlRSVN1L0U1K014?=
 =?utf-8?B?MGE1eVZBTnVOWGNLRnYzeFlFTXoxVm0vZFpTSEQ4WCt4WGkvVnRmMVFJMkxt?=
 =?utf-8?B?TjdST2VEb0xCMjE4cjd6c2RwMDdWbi9JUFByUGhJSEErd1NQWklBQjh3akJv?=
 =?utf-8?B?Qzh6b2txYnY2aHcycnd4dlFtZFR3WFFGcWY3dnFuZlZtWHZsSVErOG1Ib3lj?=
 =?utf-8?B?K1RHWWtCMWhmK1UzZlpVbW10UlYzdTAyK3UyRitNQnRsaGpONjFLa1VOYXow?=
 =?utf-8?B?SHp3UmI4ZWJscHFqVEk4UCsrZG9nY20rVlBqeFVYdTBQNkNNUmlkMWV0OENo?=
 =?utf-8?B?TlhXUkdhbi9ZbVJ2YkFlTnE2STNCcUFLekRaRDdxSjVuR2Jadkl5MzBOdGtw?=
 =?utf-8?B?ZXZIR1lVZmdWWjZhd2RSQzJFT1gzNloxNVo3Mm9QTUNjdERiWEZqRU9PeEFD?=
 =?utf-8?B?UkZGalp6T1d4M2N2UytodkFHaVoyS1U2YjYyeTB1cThTcWF2TGF4WUxmYnNY?=
 =?utf-8?B?RHgxVVNhbDJWK2lkckc3ZlNjcm5Pclkwd29rbWlJZUFicWZwc2JHTDQ1RHMv?=
 =?utf-8?B?MzNld09pYmJmNUJRVDlkSEpoRWlWeHdYS0ErS1VEZTNuckVucnRKQjBJVHpQ?=
 =?utf-8?B?S3pFa21JeUNoN2dZWjRvdlN4NGdrcWFTaXJMd3hTUWxjYmZKWXlqc2NEZmVV?=
 =?utf-8?B?QUFNMkcwVWdlalZNaXZTc2FjbTNRSWJSMW1KTGN6a3JkRDNsU29nV3BsRzlC?=
 =?utf-8?B?SXlPLzVBdE5Rek1GKy9rMTQzeTN6bnhudmNmNzhraHA1U1BPNjRtKy9sNTZr?=
 =?utf-8?B?N2dxYVp3YTMvTjNBM0RVWXZZdXI2RUtaRTl6U3JHWEVKc2owS2p5TDh3Mlo2?=
 =?utf-8?B?eDRHVG83bU1uSWwwakFLcE5pejFnbUZ6VnJLSVN3ZSt3MGdMTzlTcU5PTGZx?=
 =?utf-8?B?amdQdmZvWDdaT09VZWpCWkcxdy9OOWFTT2Y5WExNTFNaWmsvSnZhMnU5RW4r?=
 =?utf-8?B?QktDV1Q3aU43bHhxK0FXeUNubHVaTkRTby8rS21mRE1uQmZuZWp3T2FEMHFZ?=
 =?utf-8?B?V1hNWDBrOFMrQUQ0UlFTNHB0QW1Lem11MlBKRmtyTHZ6SGhvS1FTYUtIdk9r?=
 =?utf-8?B?NndzczVmcEVVRmtDd3pud1I5VDFPcWNQYjA2TXdrRnJKTUZwOFA2aEVmK1Jz?=
 =?utf-8?B?cHdvOEpLS1A0K3RLU3dLU29FM0RKMXdxZHZGY0ViUVpBdG1YRjdmQWRmVzdq?=
 =?utf-8?B?UnhtZ3JCYk0wVW15ZmJ1cDNFWCt6QnB1b00zb0duVDVOSHgzSXJDTmp1ejhM?=
 =?utf-8?B?RFJXSEZ5RitMK1lsZWtKdkY3MmZWVTVwbTNSTUtkckcxeGtEa0xEcnBZM3pV?=
 =?utf-8?Q?2Jvpt5EfHzgJ35GemTanoJQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(19052099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MS94dW1nWU5QaWJMaCswV1d6MTZmU09ELzE3YUFLd2IyNEowYXl4dndWdk0w?=
 =?utf-8?B?QnZPREZLSnVxaEd2aS92bDdpK0pkTyt0Zko5Q1NvRXZ5ZjhaOURwRjBNWHUr?=
 =?utf-8?B?eVpWbGpQOFZCOWVZZWMzM2FjaXRGb2NCaEwyTjJ2LzZCZ1lrU3ZYa1hEQkNI?=
 =?utf-8?B?YVpEV3RXNHF1QVF1N2p6VXFkdzBiZkRBcm9xSEZiYksraTlReVBzZFhidXRX?=
 =?utf-8?B?NXNibllsNUNnRldkYzFyZlgvaHMxbGVDVjZ4MFA0NDBVays2K0hENnhxeUxR?=
 =?utf-8?B?bkNKZEJ1UGcycEtVNTBzVCtUQ3hBU2E0STdRSG9rUExTVU9iWWZpLzRvbHdi?=
 =?utf-8?B?aW5vSTE2WWJuUkFzZlNDWHNpS0djaitaR2trM056THVBaFF6VFhjRjVEbC9U?=
 =?utf-8?B?WXVEdVpHSWxobitDK0FVRHNxUnVwQmR1Zml1QmpaNVo5L2srQU9YRnRzc1Ir?=
 =?utf-8?B?RWpLa1ZmRGVRZGhMdWI2cXI5WTFNeUZTWVk2eElvR1R5WTVENHFUb0g4ZytZ?=
 =?utf-8?B?a21nR2RTa0FOWFl6RlU1UGJaY1RZQ1ovQnB2OWIxbGxiNUVwNFlNV0ZVa2Fr?=
 =?utf-8?B?dTEyT0M5VGtGZ2tTNmhGWWR3Wm0wZFNBbkRVaVlDQVVFQzAvVG5tanpWR0t1?=
 =?utf-8?B?NExYNGxUckM1aGlNYlkvVW1pcWZhYkxhYVJjMkJ2bk1MQ3RkdkFzU1RxVW9P?=
 =?utf-8?B?TlBJTWFKU29KcTlGelpSaVBzeUlESFVjM0FOWWhVVUNybTZVaTZ5djM2d09v?=
 =?utf-8?B?bVNZbE04V0pMMW1XeHAyUVJ3bW0wQjQvYld3MGNhbElsK3ZRb2xPRzRsMnQ5?=
 =?utf-8?B?b3lBRDg4cldvY1poY3FycTlqMzZST3YyVEdTY2FIMzIrejBNYjgzVzY0b0cy?=
 =?utf-8?B?dVVtK0hPcU1CZ0kvSEtTL2VaRk4vQ3FzY09WMzhISDl4K0g1WkRQbm0yQ1Rw?=
 =?utf-8?B?Z3hxWHBtQVpqWC9NZ2JMc0hmVE16TWRFYUpzcGs4MUNNL0hxanNNRnRUS3Rz?=
 =?utf-8?B?TW1FbmwrYWJ5V3RXSXk2MmNCVWpaTzRFMVk4YzUwVlNxYWVpRXM0SGg0VldX?=
 =?utf-8?B?WWN1T1kvd3RUT2Q4c012a0Vvekd6V2I3enVNVUVDS2VaTGMwY3JhclZRYzZH?=
 =?utf-8?B?THNuYXcxYVIxMWo1TEZmS2tYcXlQeUtncDhQR3RhWDJmbFVpb3ZBQzR6cDRK?=
 =?utf-8?B?Zy9Fd2VBMVVsU1h6RlZWNzZMUUdua1FhZE5XbTdhMVZIM0NKRUdnY1gwR0s2?=
 =?utf-8?B?OTREZW1ReGIxWE1ONVAxamZETlZJVGZZTHExWXZ0dkF6YkF0cmZVUmxwVnZj?=
 =?utf-8?B?NmlVZ2JpeUpYY0hHVGpXc2FaR3k2YUJtSTVqNW9VbTNmTVByZkJESkZvUzFF?=
 =?utf-8?B?Y0I4cGg4Q1ptME9NUE03YUw1bU5qc2tHdEhld0p2ZXVWSEIwbS9jb0h2N1RS?=
 =?utf-8?B?RkY5cHdoeFFObjZzZkhtV25DSDdqeHV4eHJCSUJNNE9Kcnl2VW1QWGF1N3Rz?=
 =?utf-8?B?UWdBQ0RNSXYxb3RzUFFMa1pTMmF6SXBZOEREZzg0SUxyaUlpZkpMV1Nod3RM?=
 =?utf-8?B?cmxLWGIzRWtpMmM5d1dLRXI0MTRoS3A3STRiU0tIMFpkK3RrNHBFdDJEWmpN?=
 =?utf-8?B?K0VxRExGU2dxaUJ4MjJOZlRDb1lla3FRSGo3ZVBsTFJXS3hKK0NqRnRmTk1L?=
 =?utf-8?B?c21YbDUweWEwa296b1EwdUFGeUI2YXFmYTFkQm9QNU5EN0Z3aWliN1ducHZ5?=
 =?utf-8?B?TUpXU3hFTnZrUWRXaHQyeHd4aTN4bDZPTTZ1cEJWNWtweUFYcWJ3elc2K3V4?=
 =?utf-8?B?N2Ntd0JtVnl6aTAxWUJuM1NCZFh4YWIwa2g5OFovY1MvY3FhajFodFRWY3hW?=
 =?utf-8?B?YWRvK2NWZWNmMlNjelRiVUJQVnpFN1hWWVNoeVR5NllqdnRHN1JMSzA0czlv?=
 =?utf-8?B?K001ZU5QQytjM1BOWW9YRzdXOHRzbkkzUnlOcHVSNm5mZXhLRDZYSTI2TGVI?=
 =?utf-8?B?dHJnWTlPOVRoSXAzRGN6T2tiemVBb1gyNC8xajZjU1FlK3hWcExLVlllbHlk?=
 =?utf-8?B?ZUpueGpQT2pTZEJNQVJqUndkaHhxdGl5cDNkMTVCdmVvYWdTTzRiZkxESjRZ?=
 =?utf-8?B?WXpkaGZ3ZFZ3YW82bnJPdVE3eXVMdllsQWxrc3BZWlFURU9TSWE0RnpBVUdt?=
 =?utf-8?B?RTVqZG9PSlk1M3dBK3NNajVpbEhFUGZLdFJzdDU1ckNPOTltYXBZbm1QdU1K?=
 =?utf-8?B?SFdZdnFabVdHZzNvU1B4RFNUWWVXc3lCTzFDaUFSMVRmQVlpUlAvMzVmL0U0?=
 =?utf-8?B?SXU2T0RkaGxDaVdDbklPZndLSlBTSzBaamJPZDc2SjlPMG9RY2xjaVEvZlJ5?=
 =?utf-8?Q?GY1WaYRHEhlnGh6c=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8d918e3-1b8e-45f3-791d-08de5f2164ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:30:16.4563 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X/5UUUyuBReHAl+4VSlECU2BdLBx9XaChjczdgmu3PhHox+toIwQlZ6ZvWyicPVZxDCZrCEp0Phq/nHaX4GrPjQrC70I1y/v/P7d//y5TXI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682621; x=1801218621;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X5ERw36LoO30ZiRVfjEL/CPKuB7FdYwyUdEjAXHXLpM=;
 b=erI2N9Fmb1AvyFgbzJqqyoXwvDFLfSndno+YZcm0Ovt037blCUP5cZd3
 0R1EQmNg7xPb82r3xkTS5fmu099vdkiKsb58UuN88+nnMadegjHMm/XfK
 MSBHR4dVHCmZ5oWATBcieODYzuUFUxL9DecYjCbQta4EZVnJjLq1y1DZh
 gHL5l0Eb1j3JJgEDf4Pm1rnf3UHZZp1cLFnsSqG8uh0UgWH/fIYk7t5PB
 HAqT1bU7M27OP5AWJn7l+JJyb3h+F6M1zsha8o/uy3qGz52sU3V0BmCxa
 FZVdY7KQ9LOa4Yhgxv4TRl4RkFf6OGjIZxBf9EoIb90vRMsqA7RBcTkHJ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=erI2N9Fm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 12/30] docs: kdoc_parser: ignore
 context analysis and lock attributes
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
X-Spamd-Result: default: False [2.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:rdunlap@infradead.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:sfr@canb.auug.org.au,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,lwn.net:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 05CF4AEB2E
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDI5LCAyMDI2IDk6
MDggQU0NCj4gVG86IEpvbmF0aGFuIENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+OyBMaW51eCBEb2Mg
TWFpbGluZyBMaXN0IDxsaW51eC0NCj4gZG9jQHZnZXIua2VybmVsLm9yZz4NCj4gQ2M6IFJhbmR5
IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPjsgYnBmQHZnZXIua2VybmVsLm9yZzsgaW50
ZWwtDQo+IHdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51eC1oYXJkZW5pbmdAdmdlci5r
ZXJuZWwub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIua2VybmVsLm9yZzsgbmV0ZGV2QHZnZXIu
a2VybmVsLm9yZzsgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IDxtY2hlaGFiQGtlcm5lbC5vcmc+
OyBTdGVwaGVuIFJvdGh3ZWxsIDxzZnJAY2FuYi5hdXVnLm9yZy5hdT47IE1hdXJvDQo+IENhcnZh
bGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz4NCj4gU3ViamVjdDogW0ludGVs
LXdpcmVkLWxhbl0gW1BBVENIIHYzIDEyLzMwXSBkb2NzOiBrZG9jX3BhcnNlcjogaWdub3JlDQo+
IGNvbnRleHQgYW5hbHlzaXMgYW5kIGxvY2sgYXR0cmlidXRlcw0KPiANCj4gRnJvbTogUmFuZHkg
RHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+DQo+IA0KPiBEcm9wIGFsbCBjb250ZXh0IGFu
YWx5c2lzIGFuZCBsb2NrICh0cmFja2luZykgYXR0cmlidXRlcyB0byBhdm9pZA0KPiBrZXJuZWwt
ZG9jIHdhcm5pbmdzLg0KPiANCj4gRG9jdW1lbnRhdGlvbi9jb3JlLWFwaS9rcmVmOjMyODogLi4v
aW5jbHVkZS9saW51eC9rcmVmLmg6NzI6IFdBUk5JTkc6DQo+IEludmFsaWQgQyBkZWNsYXJhdGlv
bjogRXhwZWN0ZWQgZW5kIG9mIGRlZmluaXRpb24uIFtlcnJvciBhdCA5Nl0NCj4gICBpbnQga3Jl
Zl9wdXRfbXV0ZXggKHN0cnVjdCBrcmVmICprcmVmLCB2b2lkICgqcmVsZWFzZSkoc3RydWN0IGty
ZWYNCj4gKmtyZWYpLCBzdHJ1Y3QgbXV0ZXggKm11dGV4KSBfX2NvbmRfYWNxdWlyZXModHJ1ZSMg
bXV0ZXgpDQo+ICAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLV4N
Cj4gRG9jdW1lbnRhdGlvbi9jb3JlLWFwaS9rcmVmOjMyODogLi4vaW5jbHVkZS9saW51eC9rcmVm
Lmg6OTQ6IFdBUk5JTkc6DQo+IEludmFsaWQgQyBkZWNsYXJhdGlvbjogRXhwZWN0ZWQgZW5kIG9m
IGRlZmluaXRpb24uIFtlcnJvciBhdCA5Ml0NCj4gICBpbnQga3JlZl9wdXRfbG9jayAoc3RydWN0
IGtyZWYgKmtyZWYsIHZvaWQgKCpyZWxlYXNlKShzdHJ1Y3Qga3JlZg0KPiAqa3JlZiksIHNwaW5s
b2NrX3QgKmxvY2spIF9fY29uZF9hY3F1aXJlcyh0cnVlIyBsb2NrKQ0KPiAgIC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
DQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLV4NCj4gDQo+IFRoZSByZWdleCBpcyBzdWdnZXN0
ZWQgYnkgTWF1cm87IG1pbmUgd2FzIHRvbyBncmVlZHkuIFRoYW5rcy4NCj4gVXBkYXRlZCBjb250
ZXh0IGFuYWx5c2lzIGFuZCBsb2NrIG1hY3JvcyBsaXN0IHByb3ZpZGVkIGJ5IFBldGVyWi4NCj4g
VGhhbmtzLg0KPiANCj4gUmVwb3J0ZWQtYnk6IFN0ZXBoZW4gUm90aHdlbGwgPHNmckBjYW5iLmF1
dWcub3JnLmF1Pg0KPiBDbG9zZXM6DQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2
MDEwNzE2MTU0OC40NTUzMGUxY0BjYW5iLmF1dWcub3JnLmF1Lw0KPiBTaWduZWQtb2ZmLWJ5OiBS
YW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4gUmV2aWV3ZWQtYnk6IE1hdXJv
IENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz4NCj4gU2lnbmVkLW9m
Zi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnPg0K
PiAtLS0NCj4gIHRvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weSB8IDE1ICsrKysr
KysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykNCj4gDQo+IGRp
ZmYgLS1naXQgYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gYi90b29s
cy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gaW5kZXggMjFjYzRlMTlhMWU4Li45
MmI1NTAxODk5ODggMTAwNjQ0DQo+IC0tLSBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3Bh
cnNlci5weQ0KPiArKysgYi90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4g
QEAgLTgxLDYgKzgxLDggQEAgc3RydWN0X3hmb3JtcyA9IFsNCj4gICAgICAoS2VyblJlKHInXHMq
X19hbGlnbmVkXHMqXChbXjtdKlwpJywgcmUuUyksICcgJyksDQo+ICAgICAgKEtlcm5SZShyJ1xz
Kl9fY291bnRlZF9ieVxzKlwoW147XSpcKScsIHJlLlMpLCAnICcpLA0KPiAgICAgIChLZXJuUmUo
cidccypfX2NvdW50ZWRfYnlfKGxlfGJlKVxzKlwoW147XSpcKScsIHJlLlMpLCAnICcpLA0KPiAr
ICAgIChLZXJuUmUocidccypfX2d1YXJkZWRfYnlccypcKFteXCldKlwpJywgcmUuUyksICcgJyks
DQo+ICsgICAgKEtlcm5SZShyJ1xzKl9fcHRfZ3VhcmRlZF9ieVxzKlwoW15cKV0qXCknLCByZS5T
KSwgJyAnKSwNCj4gICAgICAoS2VyblJlKHInXHMqX19wYWNrZWRccyonLCByZS5TKSwgJyAnKSwN
Cj4gICAgICAoS2VyblJlKHInXHMqQ1JZUFRPX01JTkFMSUdOX0FUVFInLCByZS5TKSwgJyAnKSwN
Cj4gICAgICAoS2VyblJlKHInXHMqX19wcml2YXRlJywgcmUuUyksICcgJyksIEBAIC0xNjUsNiAr
MTY3LDE2IEBADQo+IHN0cnVjdF9uZXN0ZWRfcHJlZml4ZXMgPSBbICAjIHRoZSBzdGFydCBkZWxp
bWl0ZXIuDQo+ICAjDQo+ICBmdW5jdGlvbl9uZXN0ZWRfcHJlZml4ZXMgPSBbDQo+ICsgICAgKHJl
LmNvbXBpbGUociJfX2NvbmRfYWNxdWlyZXNccypcKCIpLCAiIiksDQo+ICsgICAgKHJlLmNvbXBp
bGUociJfX2NvbmRfcmVsZWFzZXNccypcKCIpLCAiIiksDQo+ICsgICAgKHJlLmNvbXBpbGUociJf
X2FjcXVpcmVzXHMqXCgiKSwgIiIpLA0KPiArICAgIChyZS5jb21waWxlKHIiX19yZWxlYXNlc1xz
KlwoIiksICIiKSwNCj4gKyAgICAocmUuY29tcGlsZShyIl9fbXVzdF9ob2xkXHMqXCgiKSwgIiIp
LA0KPiArICAgIChyZS5jb21waWxlKHIiX19tdXN0X25vdF9ob2xkXHMqXCgiKSwgIiIpLA0KPiAr
ICAgIChyZS5jb21waWxlKHIiX19tdXN0X2hvbGRfc2hhcmVkXHMqXCgiKSwgIiIpLA0KPiArICAg
IChyZS5jb21waWxlKHIiX19jb25kX2FjcXVpcmVzX3NoYXJlZFxzKlwoIiksICIiKSwNCj4gKyAg
ICAocmUuY29tcGlsZShyIl9fYWNxdWlyZXNfc2hhcmVkXHMqXCgiKSwgIiIpLA0KPiArICAgIChy
ZS5jb21waWxlKHIiX19yZWxlYXNlc19zaGFyZWRccypcKCIpLCAiIiksDQo+ICAgICAgKHJlLmNv
bXBpbGUociJfX2F0dHJpYnV0ZV9fXHMqXCgiKSwgIiIpLCAgXQ0KPiANCj4gQEAgLTE5NSw2ICsy
MDcsNyBAQCBmdW5jdGlvbl94Zm9ybXMgPSBbDQo+ICAgICAgKEtlcm5SZShyIl9fKD86cmUpP2Fs
bG9jX3NpemVccypcKFxzKlxkK1xzKig/OixccypcZCtccyopP1wpICsiKSwNCj4gIiIpLA0KPiAg
ICAgIChLZXJuUmUociJfX2RpYWdub3NlX2FzXHMqXChccypcUytccyooPzosXHMqXGQrXHMqKSpc
KSArIiksICIiKSwNCj4gICAgICAoS2VyblJlKHIiREVDTF9CVUNLRVRfUEFSQU1TXHMqXChccyoo
XFMrKVxzKixccyooXFMrKVxzKlwpIiksDQo+IHIiXDEsIFwyIiksDQo+ICsgICAgKEtlcm5SZShy
Il9fbm9fY29udGV4dF9hbmFseXNpc1xzKiIpLCAiIiksDQo+ICAgICAgKEtlcm5SZShyIl9fYXR0
cmlidXRlX2NvbnN0X18gKyIpLCAiIiksICBdDQo+IA0KPiBAQCAtMjA0LDYgKzIxNyw4IEBAIGZ1
bmN0aW9uX3hmb3JtcyA9IFsNCj4gIHZhcl94Zm9ybXMgPSBbDQo+ICAgICAgKEtlcm5SZShyIl9f
cmVhZF9tb3N0bHkiKSwgIiIpLA0KPiAgICAgIChLZXJuUmUociJfX3JvX2FmdGVyX2luaXQiKSwg
IiIpLA0KPiArICAgIChLZXJuUmUocidccypfX2d1YXJkZWRfYnlccypcKFteXCldKlwpJywgcmUu
UyksICIiKSwNCj4gKyAgICAoS2VyblJlKHInXHMqX19wdF9ndWFyZGVkX2J5XHMqXChbXlwpXSpc
KScsIHJlLlMpLCAiIiksDQo+ICAgICAgKEtlcm5SZShyIig/Oi8vLiopJCIpLCAiIiksDQo+ICAg
ICAgKEtlcm5SZShyIig/Oi9cKi4qXCovKSIpLCAiIiksDQo+ICAgICAgKEtlcm5SZShyIjskIiks
ICIiKSwNCj4gLS0NCj4gMi41Mi4wDQoNCg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9u
b3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
