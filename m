Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEFF8CCE66
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 May 2024 10:44:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0141040BE2;
	Thu, 23 May 2024 08:44:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SB4vjqmVWWRy; Thu, 23 May 2024 08:44:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6CBAC40C1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716453865;
	bh=4fvHwBYwerwsXEc8KmiO/8HEvzkkVjRggj/MXcmoRQU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ATsSQWV3BfGFhz4S5hp/WfWSi7kN0KH1B722Ij4a8LvYv6Pcz7j+FJInUDIzl7wPt
	 m31j2A2rj6RM0cgwhcNpsH8MIocL37yf7QNA2s+hm9F1dAjWSPANdJnsir8TrJRheW
	 KZ1rYiLhoIr5drof+zSSLBhtJ8u0BIn01BJuoRs9ApCthsr9CPf5SgKoew4dnW5RCJ
	 3FDOaIVPV2aAQL7kZ9QDXBNwOisFk1Nu9/pGge31+DqJC0OLOuXuAwMIywfrGTiSur
	 3WeXKzkHTTN5Z4lxBcloxwCMdNl7wgirYi1ANptagDV0wbp5tOXJHnPreZCoDjcNmd
	 KaBh7iA7H+jXA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6CBAC40C1F;
	Thu, 23 May 2024 08:44:25 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2CFCD1C6513
 for <intel-wired-lan@osuosl.org>; Thu, 23 May 2024 08:44:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 17893405D4
 for <intel-wired-lan@osuosl.org>; Thu, 23 May 2024 08:44:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J_mhPFCo-OaD for <intel-wired-lan@osuosl.org>;
 Thu, 23 May 2024 08:44:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BCDF8401D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCDF8401D2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BCDF8401D2
 for <intel-wired-lan@osuosl.org>; Thu, 23 May 2024 08:44:20 +0000 (UTC)
X-CSE-ConnectionGUID: dLrO73coSjO3VIi/ujCAqw==
X-CSE-MsgGUID: jIo4o1vAST6Kr7IIep9AKw==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="23329682"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="23329682"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 01:44:19 -0700
X-CSE-ConnectionGUID: kymLWPhjSaCC43lMZudXAw==
X-CSE-MsgGUID: Tdnp3tFcTbu1O6ZwuJIHlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="34133321"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 01:44:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 01:44:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 01:44:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 01:44:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 01:44:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=odCT/ZGGypn92KQCQ/ylC4ixEH/LTA7HjPJHFkfNYFUNmMavDwv+xEvS8ItUsM1i3QuV08scIEgW89ZXT3OeMUDfINPoHbvsGZNfb/40635JImMhSozqH2HVeYCIkbyUGeWqrU+7ZybCZcOdGJczxGikmv2DpvzVzmL11OJ3NWuOM2h4xlBsBLNJ0xq6ohH4zjBTA6bkbf5Kf0fXpBfZuZotegl/n1198WASp0kZ3OTn2q8Z7kpnj017MQRbi2ZOaQRaRY5GDeQ7kBYGJKk6aowUuSczPYGVfMmacx1QXI8Q6G8Wnbq5T3qTrDdMxmXV8X9SWdiLRrxdySGjYGT9KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4fvHwBYwerwsXEc8KmiO/8HEvzkkVjRggj/MXcmoRQU=;
 b=C7rQmXP4W5oHlgidigyNnXCWYEz/KeDXSwnYQaiCaMiesNW1nnR4IeSvdU97LakaD0H9XETBiROtsdH36QgOBFXgB4fKKhtlhZg7DykHxTZiSjZRfgJ7K4LZkCRgCfIQO1qwc/bocs7lmOV0vjDD2zxV8Bsq10+XReYNDZiZrTG5I6OGVHcYDtkOB5osOL3ug+5STRPnvAcxu3LmuZGGvVcdT1CSNh9yWWXROaArjyf/i+2IVFUTjMtRWlPXUP0jfukhMgZr6eW2Um3fE+1uYVfkLPZ/DajHjd5o0gGVMWPeE3xH2Z4C2kDm+Q3ic/7nZSHNSRS9N8zdoBXXWTF+Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by IA1PR11MB8221.namprd11.prod.outlook.com (2603:10b6:208:451::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.18; Thu, 23 May
 2024 08:44:16 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.7611.016; Thu, 23 May 2024
 08:44:16 +0000
Message-ID: <7fea6eeb-6174-4192-99f6-acc450e1fba4@intel.com>
Date: Thu, 23 May 2024 10:44:12 +0200
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>, <intel-wired-lan@osuosl.org>
References: <20240522091911.2862403-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240522091911.2862403-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0029.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::29) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|IA1PR11MB8221:EE_
X-MS-Office365-Filtering-Correlation-Id: 90c0e36e-aaa7-4f3b-b314-08dc7b04878f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WkY4UE9aYTJHSm8xZjFmMkFVT0lxKzdXcVd6USsrMjVLUWpZckVYM1g3dnJV?=
 =?utf-8?B?eVpaVmc3K0lMSnNSellnSytKMlFYOGdBNlREd3JEbUtwdEM1bThhbytZdW5H?=
 =?utf-8?B?dkV6VGxxbVRMNmpUR051YXQxWW9VM0xaOHMvUFlxYTJJZjdHbGxMRG85c0Z1?=
 =?utf-8?B?cGZYVDRYMGdleEw0V0hBU1o4R2pBUHN3WVNTU2hxMldGblJCd2VxVkI4MXZs?=
 =?utf-8?B?MkRmMFJBckFIeXJvUzVVNDhDQmh3RzNMaHZESlZEdVY5UFprTWdxbzc1bUJ4?=
 =?utf-8?B?Z3NKcEhXTG85TFhJRittenlrODJxeXZzWTdXS1VsME00Y1M4QzZHclkvWmJG?=
 =?utf-8?B?a3hvV2RyQzlzU1c1ME5UdUVZWnA0UENsc3c0dXkraUh2ejJaWWpNcWt5R3M4?=
 =?utf-8?B?b1UvM0xyanlESzVhQU0wZTJ6clNVWHB4NDVzRVovNXppQkFraXdLVkZoTmNK?=
 =?utf-8?B?SXYzOWRjdk9jaS84YnAyZ0JCMXh3b3VSUkIrWGdiUVNSeDlucDU1bnR2MFVJ?=
 =?utf-8?B?L1NXeGIvWkk0aHcyZFJwK0V1TkxiVUltY2FmSHo3bVdyQ0dKZjJVK1U0UkRP?=
 =?utf-8?B?bTZNbzZBTVpoK0llMWE2ZFpMWTRmeW9pMWQzRkV3VWJueUhnSlc2eERFUm5T?=
 =?utf-8?B?SkdheG1HMzRYVmc2bFlIK3dLOUtPMDhodVBLS2ltQWVkQ0VjN3JITXFXcTB1?=
 =?utf-8?B?eVB4MXlZc2w5ajcrTXdiY2JPVFNPM0wzTzFiMGFxb3BLWVZvY01tZ1d2WjN4?=
 =?utf-8?B?Rzh0OUlPUGFhUkF0N1g4WGRZVkJhQzBZSy9EUFJIY3dIZ3A5bURPNHJGQVV3?=
 =?utf-8?B?eGFXRm56RTI3b3kxQXdiRDJUNVNnTkNjK1I3SERPbktLbVZFUXVhMzM4a0p1?=
 =?utf-8?B?aVdoSDh0Q3g0MzRnMmxDUnRtZnUvUWdlMGJJUmpnZzNMekpMZjEvVkxON2Jq?=
 =?utf-8?B?RXcxQmVxbUNvc3N3V0U5UjZpaHdLd1FEY1lRTXVYNHE1Y3diajNoSzA0NnUx?=
 =?utf-8?B?a0RjY0k2VVJOdTdGWXordzNoWW5VeTNsS09oODNaQXVYMlhidlpOeUFLYmpM?=
 =?utf-8?B?YkVOMkFpK01HYk94elIwLzRWSy9leGQvaUo3TW4zaFdsY2RkZFNiZlYyQlRR?=
 =?utf-8?B?aTk5bEZWUVdqWlF1UEZlTHA5TDF2TlRUUGVQcVFDMWFZazFCVFVyRkhqWFYv?=
 =?utf-8?B?bUVWMysxdFZHUGtqVU80SUdyNWJ1dkRHUGhWQVREVE1VNGt3V3ZyaU9paUFR?=
 =?utf-8?B?TkRjUWpBS1FqRHpMM2lrRTFQZ1A5MkoyMFVRR09nc2VnUFV0U3BmNGltVFZo?=
 =?utf-8?B?T0JhelMzTzJyZGwvcGtIRnFMeUNtUzRBUXMvWkRBQXlVU1ZXbnVud1lza3pF?=
 =?utf-8?B?NWM3anpDWlF4amVoTEZoSWtqaG1DSlRNbVkxSGlNZ01vNzNnYUY0TmFjaGJh?=
 =?utf-8?B?TzNHaVdMUk9MM3JGYkJhYWlrNHZOK3ZVYnpHNWpLNU5kdkVZaDdlY0YzRDBV?=
 =?utf-8?B?a1dTZ3pMUWNZNWZXWkRrclJJTktyR1ZYT2pBU0twdXpjOXZjNHM3QlJCYjFp?=
 =?utf-8?B?dEFINDgxRWt6L0VLSGlETzUrR0NiNnAvRjd6ZUxlS21jejBZQ0ZtNGlJTlZK?=
 =?utf-8?B?Ymo3dEZXVFJ4TU5tcE9tcEgzT3pldUE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SVUvUzdpaVRmZ3o2S3JjTGZxRGVHb3dZZ0U0UUlkV1JuRTBHRmV3YnNmMXFj?=
 =?utf-8?B?Yks1NHRpVFdZM2lUNzVYMmxDT3pZNDB4WTJrNWNGR254TWlXUTlwZU1TTW1S?=
 =?utf-8?B?cjJNQTY2M3BlbGxIaWI1NFlrZ21CR2YxZlhOMThiTHFxenI0cEc5QWZPR2Z6?=
 =?utf-8?B?OFQ2MW9VNGVBY3NRWStQR1NTK215WUhEbzRlUlptMUNtQ3ZQNFl5a2pRK0V0?=
 =?utf-8?B?UDBDSlcwekRuVngzcmRVWlkyY3BqUXJMZnJkS2ZlclpOT0JVQmdDWlhad1NW?=
 =?utf-8?B?TDV4cTJQbmI5TStYKzJkYWlGOWtBbW5jZm91QVFhaXVmM0t0VlhpdEt1WFpy?=
 =?utf-8?B?RHJERjBuRE8wRGVadlZxVFJ5WTFkSmhpY1Z5REVvakF5bU41dzJrdHRkSGpw?=
 =?utf-8?B?RnBjU3J4cHVXWWNJM1ZkZGZ5ajM3b2dQWk04YkJHWlhaLzMvL3VaNkdvOVZD?=
 =?utf-8?B?VEpvUU9hRmFYS1gwSEJoajlvUWVBQmFrcjlaalBXWkZyRWN5OGNvVHlOZXpL?=
 =?utf-8?B?cGY5MGJMdXo1UXRRa0VCRnpNUVpVaDIxRVI2VGFuSWZJZkk4bStiU2x5Nlo5?=
 =?utf-8?B?bnRWd0VlQ0VEUnovRXhveDl4TzRueFY2U1p5c1BuQkl5RXVFNWtERFp1RXhw?=
 =?utf-8?B?Szdpd1B4c3UrbGszSHlISE41bis5ZXVDeFZLamt2NWNmWHJBeE4yRTVWMkhN?=
 =?utf-8?B?WFdjYk5DdEhZclNnUzAwYzRxcGJMQ2c4amNHalc0bWhtUlREZ2JMUURuekE0?=
 =?utf-8?B?ZTdmS0JhU3RFUGNWZSswZXo1bHlnV3YzN2FxdDQxSS9XSWdTTkpvbjlZYlZJ?=
 =?utf-8?B?RlpIdXJKSFBKK1BQZy9ST2FuK3YxQktOZDFZOFR2LzRSL2s5RzcwTURTRUNp?=
 =?utf-8?B?ZHg2SjVCQ0Q1MzVFNVNQaVpIK3UvVHV2K0phMUZhTjhyYmo0OVZHdUZFYnQw?=
 =?utf-8?B?RTJ6S0tqZUV5eUMvbkxrSG9Xa2JKamJocVRyNjVRdVdacVlNaXVNcGdhV2RE?=
 =?utf-8?B?b0JuR1BkVWdXZUFaZ0JHSEFkVTF3KzBmbjFYT0R3eEM2R2h2YjN6WGxSaFZB?=
 =?utf-8?B?WXFUZGlUWmRQZ25INUI5NGdUdVpmcE4wZlFtSnRUK2dVeUZQdUdDNUJxVGF2?=
 =?utf-8?B?SFhvY0FtUmpjclRJajBRb3dnSmpWbzZWOTZ3N1oyZzZpaE1FTldHMXBHeVkw?=
 =?utf-8?B?OGRKYUh2U3FvbFRpNTdsTlgvR1J2V0xXWFU0YndRRGYydk1ydHh6bTJmSlVJ?=
 =?utf-8?B?aE8vTXRiZmhvL0txcnZPU1FNNWhKWnBBQ25MMi8yWGYyd1lhVE1mTWtha211?=
 =?utf-8?B?VVVwWFZyK0NFSW9pRllmZlB0c3p6eVpubGVwaW5nT3lHWDFuZHEvbHNHL3Y2?=
 =?utf-8?B?ald2a3NzLzhnNDRWLzN3TUhrODBvOC9iREhIbkVkVzl3UHowZ3pXVC9IYnQx?=
 =?utf-8?B?cU1raDNXdEpxcG0yNHRaaGpnZFpRVlc3TnRzVm9tSkErdDh3dmJNVWpNQUUy?=
 =?utf-8?B?NHJndmIyUTBPRG54Nm55Qk5UMkF4ekJiRW40UFlrV3lYT1VUMGxiNHkxSnVL?=
 =?utf-8?B?czhsVDNSVUF4eDRsZkR6Rk9RQWIyak05Uk1yVWZRUmZpVkZKbEJJYTkxUEpn?=
 =?utf-8?B?T01iYmtKU2s2eXJJMTBzRmZqRHFMWVNZNlZGanZraVpFRjJES1Q1RUhCNWw4?=
 =?utf-8?B?eEhxSVF5WEVxblNLRWVzYlBEQkpoVE02T0wvT0hSUGk0MXo1QWlkelpad3Nr?=
 =?utf-8?B?eGxiNC83a1VQYjR5TVVSd3N2eFhRNkorUWQ1WUpQbEdoOGg5RStWMTFLcTJP?=
 =?utf-8?B?MGhsTVlVdlNHc3dtQ3JjUFVYNmw3d1V4b042K2VQQ2luRWpzM2dWMzRkdHBG?=
 =?utf-8?B?Y2V4d1VLUUY1T2Z3WWwwQUxTWlZqcVZLRWgzWEpkaXJNWjRjb0FJblBlNlBK?=
 =?utf-8?B?dXJIcFdUTFI5N2pOamJpb1lxRnZJS0F1ZDVIV3dTMVBpQkZjaWFHWExwcHlR?=
 =?utf-8?B?ZGRzM2huYndWV1VLUlVRNWo5MUJFWFlBMDBpbDVlVUZnYm1JWFV1NTFvRTJ4?=
 =?utf-8?B?VjFtMm9DOFJlQ1F4TVpld2xyQ0dNRFBoV2ZVS0xxVk9DekZLK3hLRlJoOVl5?=
 =?utf-8?B?MmV4QWl6RmZ5V0ZIQUxjVkt3Tlo2NlJ3eW5jUWRwUy9sN29CTWwzMG9tbDFk?=
 =?utf-8?B?U2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 90c0e36e-aaa7-4f3b-b314-08dc7b04878f
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 08:44:16.4976 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Av8zgOjVVGtrX833oGh1OzGSVdpy2tG1kca18Vex+AHEg/tiWKiSUSH5GJ71u3Vu1nR0UKP26keyUz2xLIOkyKepx8Xn+c6SeXCLIce5Z08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8221
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716453861; x=1747989861;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/aVTf1FnSCqLkohWL38RQMAtQAyb08IyaMFqPQSc2Yo=;
 b=hmucQIdQmibgXcY6fb9dASp34aEz8nUbFcKB3OQrUh67j0yhcFrp3vXb
 Lkzsr2T9x1sTg0X3rxAj+GwyXeXEDH3k4iRGaaefFPTAVcjeoLDG1US4m
 MdTY19PdIXLRGqEW47bIk6fSfZF45dPa6r9z7trepEjjD4+okq6HB8Ter
 geFkYrUZ8rtUE4j13azU4SZVKPpcrlKPlyM3xHhf3YLNb/J/1WY/J+ZvS
 ooBChveOZ8k6iSS063IsL/uSYeV5H6Z1xmy7zQAc6zI4iC3HqFzfr0DKv
 nL75QdCfoDRoYqDWs6i9+mgHdl7CnpSWtYk16QYUbAeTR9ExZWhWmyBTj
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hmucQIdQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] igc: add support for
 ethtool.set_phys_id
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
Cc: kurt@linutronix.de, Menachem Fogel <menachem.fogel@intel.com>,
 lukas@wunner.de
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/22/24 11:19, Vitaly Lifshits wrote:
> Add support for ethtool.set_phys_id callback to initiate LED blinking
> and stopping them by the ethtool interface.
> This is done by storing the initial LEDCTL register value and restoring
> it when LED blinking is terminated.
> 
> In addition, moved IGC_LEDCTL related defines from igc_leds.c to
> igc_defines.h where they can be included by all of the igc module
> files.
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Signed-off-by: Menachem Fogel <menachem.fogel@intel.com>

sender's SoB should be last.
Should, by any chance, Menachem be marked as an author of this change?

side note: we should CC netdev and obey netdev rules, like not sending
-next content during window being closed for new submissions
https://patchwork.hopto.org/net-next.html


> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h | 22 ++++++++++++++
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 32 ++++++++++++++++++++
>   drivers/net/ethernet/intel/igc/igc_hw.h      |  2 ++
>   drivers/net/ethernet/intel/igc/igc_leds.c    | 21 +------------
>   drivers/net/ethernet/intel/igc/igc_main.c    |  2 ++
>   5 files changed, 59 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 5f92b3c7c3d4..664d49f10427 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -686,4 +686,26 @@
>   #define IGC_LTRMAXV_LSNP_REQ		0x00008000 /* LTR Snoop Requirement */
>   #define IGC_LTRMAXV_SCALE_SHIFT		10
>   
> +/* LED ctrl defines */
> +#define IGC_NUM_LEDS			3
> +
> +#define IGC_LEDCTL_GLOBAL_BLINK_MODE	BIT(5)
> +#define IGC_LEDCTL_LED0_MODE_SHIFT	0
> +#define IGC_LEDCTL_LED0_MODE_MASK	GENMASK(3, 0)
> +#define IGC_LEDCTL_LED0_BLINK		BIT(7)
> +#define IGC_LEDCTL_LED1_MODE_SHIFT	8
> +#define IGC_LEDCTL_LED1_MODE_MASK	GENMASK(11, 8)
> +#define IGC_LEDCTL_LED1_BLINK		BIT(15)
> +#define IGC_LEDCTL_LED2_MODE_SHIFT	16
> +#define IGC_LEDCTL_LED2_MODE_MASK	GENMASK(19, 16)
> +#define IGC_LEDCTL_LED2_BLINK		BIT(23)
> +
> +#define IGC_LEDCTL_MODE_ON		0x00
> +#define IGC_LEDCTL_MODE_OFF		0x01
> +#define IGC_LEDCTL_MODE_LINK_10		0x05
> +#define IGC_LEDCTL_MODE_LINK_100	0x06
> +#define IGC_LEDCTL_MODE_LINK_1000	0x07
> +#define IGC_LEDCTL_MODE_LINK_2500	0x08
> +#define IGC_LEDCTL_MODE_ACTIVITY	0x0b
> +
>   #endif /* _IGC_DEFINES_H_ */
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index f2c4f1966bb0..82ece5f95f1e 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1975,6 +1975,37 @@ static void igc_ethtool_diag_test(struct net_device *netdev,
>   	msleep_interruptible(4 * 1000);
>   }
>   
> +static int igc_ethtool_set_phys_id(struct net_device *netdev,
> +				   enum ethtool_phys_id_state state)
> +{
> +	struct igc_adapter *adapter = netdev_priv(netdev);
> +	struct igc_hw *hw = &adapter->hw;
> +	u32 ledctl;
> +
> +	switch (state) {
> +	case ETHTOOL_ID_ACTIVE:
> +		ledctl = rd32(IGC_LEDCTL);
> +
> +		/* initiate LED1 blinking */
> +		ledctl &= ~(IGC_LEDCTL_GLOBAL_BLINK_MODE |
> +			   IGC_LEDCTL_LED1_MODE_MASK |
> +			   IGC_LEDCTL_LED2_MODE_MASK);
> +		ledctl |= IGC_LEDCTL_LED1_BLINK;
> +		wr32(IGC_LEDCTL, ledctl);
> +		break;
> +
> +	case ETHTOOL_ID_INACTIVE:
> +		/* restore LEDCTL default value */
> +		wr32(IGC_LEDCTL, hw->mac.ledctl_default);
> +		break;
> +
> +	default:
> +		break;
> +	}
> +
> +	return 0;
> +}
> +
>   static const struct ethtool_ops igc_ethtool_ops = {
>   	.supported_coalesce_params = ETHTOOL_COALESCE_USECS,
>   	.get_drvinfo		= igc_ethtool_get_drvinfo,
> @@ -2013,6 +2044,7 @@ static const struct ethtool_ops igc_ethtool_ops = {
>   	.get_link_ksettings	= igc_ethtool_get_link_ksettings,
>   	.set_link_ksettings	= igc_ethtool_set_link_ksettings,
>   	.self_test		= igc_ethtool_diag_test,
> +	.set_phys_id		= igc_ethtool_set_phys_id,
>   };
>   
>   void igc_ethtool_set_ops(struct net_device *netdev)
> diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
> index e1c572e0d4ef..45b68695bdb7 100644
> --- a/drivers/net/ethernet/intel/igc/igc_hw.h
> +++ b/drivers/net/ethernet/intel/igc/igc_hw.h
> @@ -95,6 +95,8 @@ struct igc_mac_info {
>   	bool autoneg;
>   	bool autoneg_failed;
>   	bool get_link_status;
> +
> +	u32 ledctl_default;
>   };
>   
>   struct igc_nvm_operations {
> diff --git a/drivers/net/ethernet/intel/igc/igc_leds.c b/drivers/net/ethernet/intel/igc/igc_leds.c
> index 3929b25b6ae6..e5eeef240802 100644
> --- a/drivers/net/ethernet/intel/igc/igc_leds.c
> +++ b/drivers/net/ethernet/intel/igc/igc_leds.c
> @@ -8,26 +8,7 @@
>   #include <uapi/linux/uleds.h>
>   
>   #include "igc.h"
> -
> -#define IGC_NUM_LEDS			3
> -
> -#define IGC_LEDCTL_LED0_MODE_SHIFT	0
> -#define IGC_LEDCTL_LED0_MODE_MASK	GENMASK(3, 0)
> -#define IGC_LEDCTL_LED0_BLINK		BIT(7)
> -#define IGC_LEDCTL_LED1_MODE_SHIFT	8
> -#define IGC_LEDCTL_LED1_MODE_MASK	GENMASK(11, 8)
> -#define IGC_LEDCTL_LED1_BLINK		BIT(15)
> -#define IGC_LEDCTL_LED2_MODE_SHIFT	16
> -#define IGC_LEDCTL_LED2_MODE_MASK	GENMASK(19, 16)
> -#define IGC_LEDCTL_LED2_BLINK		BIT(23)
> -
> -#define IGC_LEDCTL_MODE_ON		0x00
> -#define IGC_LEDCTL_MODE_OFF		0x01
> -#define IGC_LEDCTL_MODE_LINK_10		0x05
> -#define IGC_LEDCTL_MODE_LINK_100	0x06
> -#define IGC_LEDCTL_MODE_LINK_1000	0x07
> -#define IGC_LEDCTL_MODE_LINK_2500	0x08
> -#define IGC_LEDCTL_MODE_ACTIVITY	0x0b
> +#include "igc_defines.h"
>   
>   #define IGC_SUPPORTED_MODES						 \
>   	(BIT(TRIGGER_NETDEV_LINK_2500) | BIT(TRIGGER_NETDEV_LINK_1000) | \
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index b5bcabab7a1d..97d195853818 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -7070,6 +7070,8 @@ static int igc_probe(struct pci_dev *pdev,
>   			goto err_register;
>   	}
>   
> +	hw->mac.ledctl_default = rd32(IGC_LEDCTL);
> +
>   	return 0;
>   
>   err_register:

