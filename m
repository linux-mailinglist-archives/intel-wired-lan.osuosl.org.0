Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 606E08C5A19
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 19:11:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C69C415D1;
	Tue, 14 May 2024 17:11:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 52TL3MKKNugh; Tue, 14 May 2024 17:11:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05F3141596
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715706700;
	bh=JIYOnc+gc/Vr0hHsdP+Meao0vRanQZoh9Vo2Ory+gto=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0ZKVbE9AaqSiKkJ4FTJkFYWt03+OCwzLvq6bj8N+IB2SDbZCpCtIQ/FzP++LukNX9
	 QTD/u6knrbRb2Rd3Zraz+8ENCcBYKTNgYgkss2scR3shikd4GH8hC0+KogkOLSYbXV
	 J9wL5XPTxaDcCyGfHJU4J5vVNOhXPC/FtWyCBRSp8VKXLxbDXzpFo5TN9Ofexekm/U
	 tU6yiPD0MPW9m2N70styt1UIEre/2bhbs0PIYbl700+e0KA1y9gQFVGLSU3J2w697I
	 g0QdwBOC60UI/yyzgKRU7YLD/hgym0QxU+2L0WkVaBCSwB7a5Aj7GUkn4XBvkL4+UF
	 LAo3w/vk1Tmsw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05F3141596;
	Tue, 14 May 2024 17:11:40 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8A5BA1BF232
 for <intel-wired-lan@osuosl.org>; Tue, 14 May 2024 17:11:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74AF84152B
 for <intel-wired-lan@osuosl.org>; Tue, 14 May 2024 17:11:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a_e8Mho1qA5W for <intel-wired-lan@osuosl.org>;
 Tue, 14 May 2024 17:11:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6F18240194
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F18240194
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F18240194
 for <intel-wired-lan@osuosl.org>; Tue, 14 May 2024 17:11:36 +0000 (UTC)
X-CSE-ConnectionGUID: 3k8FkBalRIG9UjQoj4bPrQ==
X-CSE-MsgGUID: cKsHGkk6QmqyBfVR/4qt6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11576584"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="11576584"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 10:11:35 -0700
X-CSE-ConnectionGUID: Vba0sbHVSoaBQ7gPysrj8A==
X-CSE-MsgGUID: IyLbooFOTTO6GJBfAxkkKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="31303549"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 May 2024 10:11:35 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 14 May 2024 10:11:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 14 May 2024 10:11:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 14 May 2024 10:11:34 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 14 May 2024 10:11:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TprgE8yrPuHXqk6815FqDzIgM8O5KqJfPnsHsMl92L0usXFO3F0G0VvoCHx0q8mLOz6I0BWpAjAbftWkXgSRuCHP+ednzNJEXTk2Ufp6fI8XGqK/wegndkP4JMz+oGRZC/tPYm0Owdr/uYbRIrERJHyUtfum6jxBbstUEabQvq8RMv15E7f+8WGv3EiPaejY0on8xZ+uQCTBNbDDDl3NQZkPO0NFODPceMEaBgqYtKpzuHNDTjz1fnLFQxpddKDGPtnukBCqO6JRH23ZfxSykIVlS7heOztrJPqcbOtm9xQYzLhWvmKj2roltRVIRXyOVy+X6nzSo/84MjhreA9dUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JIYOnc+gc/Vr0hHsdP+Meao0vRanQZoh9Vo2Ory+gto=;
 b=AzL5NPD5YiFsXuILoOAaJ6xTOZA65Weg9BoGQ149YOkvTZn6aVarTUAvMLY/7wtTyQ2Oj7cKmkTCsM9xKiVMB0H9d5EYbObidEoQD3bnXkUviNJZnc70k3AvC3yzeMJD13G720m/tB4mpk0K7fFij38LVoppE4mZJfKxGwGKqHp0CZ6ybTedqtQwMOCrfjtMcaUFc4uj3bgGnggW6NKR958OAX3xFDwWbMX7C/CqUzX+keAmlKMJQ6BuJjm00je5Do+xCg+k/1oI6VphAuol51Z1309Lp80umVJMf0nAFLV/Tx3tccckGMtFLIGRnFzL/D44cLSZ9ICeC0txr+MgCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB8541.namprd11.prod.outlook.com (2603:10b6:806:3a9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Tue, 14 May
 2024 17:11:32 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7544.052; Tue, 14 May 2024
 17:11:32 +0000
Message-ID: <7dc92a69-0ccf-43de-a506-ca9ab6b1bc6f@intel.com>
Date: Tue, 14 May 2024 10:11:31 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240513175549.609-1-thinhtr@linux.ibm.com>
 <20240514095505.GZ2787@kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240514095505.GZ2787@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0332.namprd04.prod.outlook.com
 (2603:10b6:303:8a::7) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB8541:EE_
X-MS-Office365-Filtering-Correlation-Id: 28fe8e89-e5d4-4c3d-b294-08dc7438e731
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RFJkOTlnNmw4aWtjRStOcGJVM0tDVnVDS2lEVEM0ZkRKMVVZSDdGMUlqVXB6?=
 =?utf-8?B?elYrMURGanZhZStFWHpIcEViMEFidC9oYmg3L1d0RUdFVEtkOWdZdXZrOVBw?=
 =?utf-8?B?Y2ZYZHBjWG0zMWN0ZXprYnhaT0RvVlYzbzhhR0N4VkNFd254WWY4ZWZ4QUN5?=
 =?utf-8?B?K3pDaGJsQ1NPcU95YWY5VWRocisxZG0wbFc2Yk9ScWFGd3lZMFJqNDBjL2I0?=
 =?utf-8?B?OHMrSFVxRVZLUlBYbGMzQ0dlZmhYc2QyNXdkNGQ0WE5sREJnbzdJd0w3VkR0?=
 =?utf-8?B?OGRBYjhydjJ0UU9QMWpLdytNS1RCQm9CeHB0K1RjR0hucnFzQzdnL3FTKzc2?=
 =?utf-8?B?TUlFV0tQc3RDc093aFprMUVuZHpBT0dWWjFhQ3piVEcrVFZxWERobXZQSzBy?=
 =?utf-8?B?MDZ4VWlOQnlDcVNjUDM1N093VnZFR21BYUlNcHZUSUdGbWd3OFdERE5UZmNw?=
 =?utf-8?B?aUFYUk5BNXhYSzE4TTBRc1YvcTRzWDZnZjJHVG9jbU9scWF1bVdyTXZEd2Y1?=
 =?utf-8?B?YmVXVGRWN1FuSGE3OUNac3ZmbFpXMXc4Y1NFTzA5ajdVMDN0QXBRdkhpblM2?=
 =?utf-8?B?SVNMSGI0c3lQaUpzUU5ETXVRb0tQQVRUR1dtOFBKUXJCejJuaFN2eGJ0cmls?=
 =?utf-8?B?NHlRNFVjdzVsaWozTk9Gajdzbk9XRVQwb1QrYW83bStDaGpqc0Y1Z2ZNTlFm?=
 =?utf-8?B?a2FsZUg2Qkt3Ny9Jc1RYaTRhMWwremJJT0Voc1RFSjJPLzc0amtmMVBVamsv?=
 =?utf-8?B?RkpnZmFpZ2F3c0R3Z2VQMURsM1VGLzdFMDNsTHd2bW4zcGEwdG5vVFZoS1BR?=
 =?utf-8?B?OVY0a2tSejdjNFlUV3cvbnkyMVdCbmlhc3N5eCtrc2E4TExZbW5ROEVXMVJJ?=
 =?utf-8?B?ZlNXSTcxUTN4cHRQeUJCazdGWWpMWnhXS295ZTE5dEVTNmxkRzh2RUtLaEVa?=
 =?utf-8?B?QnZkLzdOZmNwUUVsMngrL00wTENNdFJhdHNsVHMxMUpKNEw0VFNWUWRCWHNq?=
 =?utf-8?B?eVRGS1lFZnNadmJsSU9BSk5PemNjbHF3RnJ4Mk5SSE9RVzNWSnJpK1pySlJo?=
 =?utf-8?B?M1VxaUpSQ1RrZ2dtcDdpTmk4cTc1K2U1UGNJakJqOWtLZHhteDRjS0VXM0V4?=
 =?utf-8?B?YkZZVFpuOHEwMTlReHk2V3hvdWx6Z2gyVitNTVhqTVRQMHJFcTIzY290dE82?=
 =?utf-8?B?bkk1WWVYbWtDYnQyak9GUHc4am5WaXRsVnZuMEozdjBJbDRBZllRL2tMMHpv?=
 =?utf-8?B?bVFtQ1NRTHJJd3dSNUREdEEvOUlLVk13S2lJK2lLVXkrZStIRi94Ti8xNTRh?=
 =?utf-8?B?R3VSa2tpSnZVY2lSYm9sT3VQczA1Wlo4ZmRYaURkS0pPeGxRR2FoMm5FSjE0?=
 =?utf-8?B?SUEyVUhabmE3eVpUTmlJd2hpM3VIN0tyekJGWGJ1alZ3emhPQlI2SzljMWpV?=
 =?utf-8?B?aUM4ZE9tK3EzYmVXSnNNLzhGdFR1UXdLK0x4aytQSHRLNU9wQ0ErM3lPRnZw?=
 =?utf-8?B?alFRQXdkajJTTWs4STRKMmRxU2F2cDlVd0VRZXZTaHI1WXV6T2pEL2RzdnZ0?=
 =?utf-8?B?Tm4zZ28ycnFqd2YyZnFSNDNXbU9ZdW9EWFIyWkdoRU9BTlNCZURselF2VmQ3?=
 =?utf-8?B?RDZLZnVDZzlML2F5akxOamRnY25tR1BJT05EYUo1NEo4aGcxRWczcXpQL1lQ?=
 =?utf-8?B?ZkdQNVNNQmFZTXMwVEhmb0Y1NXN3RlVuT3BwZy81bkVSelozSERkUEx3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0ZWRjhwTzFRM2J0ZzJyL25ZQ1hZUk1VZXNuUE1jK1ZZbjB2dFBZT3grcDhB?=
 =?utf-8?B?UlRKYm1vdHNnczJzSkJIcm5vQ3lKNkRka1FEUUhVSEUrQWY4WjNXU0ltVUNq?=
 =?utf-8?B?cTR3anFPbkNCTTA3Ynd2eEhrdnVBZy8rcnMzcXVrcnVvMllyOHNia1VDVVd5?=
 =?utf-8?B?S2ZxUTUxd29RUDlWSHVBQzQvTnpwVjlRSHpUL09KZ2UxcURNRjVCOEZMTjRt?=
 =?utf-8?B?eTk2MWxWZWR5b2pKWTRCSDBZK1BZYlRyMnoxTWJRdVI5WmcvTmNjTkV3WFVW?=
 =?utf-8?B?Q3dLL1VmdWgyTG9ZQmkxb0dGLzg5dTBUdkxsaGJsNk1Td0VpaG01MEEvNFQv?=
 =?utf-8?B?bmJTVklNRGloOTc4UnhPWUlsaDdFMW9xZmFZdjBKall4WVpOTGx3L3dDbGs5?=
 =?utf-8?B?NFdzVTlpeUhCTTNiK2FGOWlCMWJlekRMMm5pbXpuWnIwaktxdStxWkE1MTEy?=
 =?utf-8?B?anFYa0RpcDRudjB5WG5FR1I5V1BJTVlLNVJGUFNZbHZCaGNMd1prTS8yS2ZP?=
 =?utf-8?B?ZUVNTENZSWlyZXZ4bWNxV0dwNE1Pb1JJbnJNVTlQbGhxaGZJdG5jOTdRWDVk?=
 =?utf-8?B?c0VNVk93bTVtUno4VnQxTktxUzl2YW55MUlFdHRpcnlNRmZOY1YwYUJpNnE1?=
 =?utf-8?B?cnpYN3p1MkpML0ZJbzJxZFAvdzlveGpDNmhwMFVITEZiN3RYSENyVW1NczNO?=
 =?utf-8?B?WGMvVDh6N2ozRGM3bVQ5bWxuTnVhbGpJVW9CSUJQVXVrMS9rc0ZrM2ZxU21F?=
 =?utf-8?B?Yk5waW9JV202S0xKNXc1OVBYZWtza2hrV3czNjh4YkN2dGZyS0YwdFhlVDA0?=
 =?utf-8?B?TnRtOEk5dlQzcXp5TlZ6NWtKaXVFWnY5S1gwbnY1aTZVTUsxVExJTGx0dFRv?=
 =?utf-8?B?R1Vhdi94SWE5Y2xlLys1dTI0UG1vZHRGYlFqbk1sVjcwSjNkVW9sU2hSMFQr?=
 =?utf-8?B?UUZyalhrTForWG8rNncyT2c3eDFlUkI0dWRETTNHOWQvVTBYZGJxVTJwbGox?=
 =?utf-8?B?QXpCc2Q1bWJUZysxa0Rwdjh1YmtJM0kyZm1zUnkvVGJESGVPeTJZcWVZbU1G?=
 =?utf-8?B?NjhkRWNVa1RqZlY0Z0xsYVlmNlBiNXhXbEhsdThpWUo0WjRJa0xtMEhwRFJk?=
 =?utf-8?B?bDFIdlljZFg2MWI3R3loaENRbkZLNkVzbGxDTnZ3azcrVUtDNStBK3owTGdJ?=
 =?utf-8?B?OGJxemFHK1JpV1MyVEZoa3E1aXp6WjBjU09iZnVCNFEzdGh0V2pwOVQzc3Yx?=
 =?utf-8?B?bm5DU0xWZ1RJUUV3UUVYUmQzbDNYbjc5Sk90SS9taHgvUUs4d01qU0RkTnhM?=
 =?utf-8?B?TmxYb1B5RTFnWkJ3QVZWVVdab2ZqOElsNTFkeGJmcjdGZm9zTWZtVFJ2Q1Jp?=
 =?utf-8?B?eU41ZDV4WlEzR2ZrY2tkWHhUamRNcW9jS1JuTVByaGcySzJIZTNVTkVpOW5W?=
 =?utf-8?B?aXNMWVNPY2puaVdPWWIzT29Xb29kWlJnUDN3dkpSTDhPY2dtS2N0cFIySk9U?=
 =?utf-8?B?SDhGald6V1ExaHVZbzB2ZU0rMkExN1ZoMVlaK05hQmhBdnA4QXhWanZyaHg0?=
 =?utf-8?B?aFhJRFR4VFJVY1JjTUJXNWVHdmFsZ3NzWlRPMVp5QTlRVm9ER3JkV3FCMkg3?=
 =?utf-8?B?cVVTUXdLTkZMTUxIck8vTXc4QVd0cnpXUU5IVEpmQ0dNTEZ3RExYL2R6bWcx?=
 =?utf-8?B?Yk5UUnpWQW1vN3BZTmhibXhsQ3A2V2FFWHRkNENOOGNiay9aelRtczRUTGpE?=
 =?utf-8?B?Z2ZHZ0VWMzJNMVdpSmMzY2JqT095N1VsSElZeHhEY2pKZmd5cWxJVEhrUkhY?=
 =?utf-8?B?SWZOVUdOSHU3cUZyeUMrUitSYjN2aG9LQkVFM0FzZ2dNUkJ4eWtXYUJJRGRh?=
 =?utf-8?B?b0dHYjF1NmNraDFMaGxUcWpBNEVLckdUU0RZYU45Q0UvVmx4bm5PNVhNWi9n?=
 =?utf-8?B?SUlMeTRVOE9wdkpaeEJGZExtUENKaUNDUTFYRHNPOHdYSFRpZHNzL2c5bW1E?=
 =?utf-8?B?ZjMvNjlRcjJRVXlROXU1NEJ6NDlrQzY3M2tTbGFMNGhkOUNtanlYNGZBcG03?=
 =?utf-8?B?blA3Q3NYK2xWOEkwY0VwYVJwWjc0K2pwdGJFSnNJdFI2b2xSQXVXWkw4L1J1?=
 =?utf-8?B?YmhkNjFtSnIzakRqNjNBaS9yYkJqUXk2MlNNTWZTd21GL2tCTzNydnRyTjZ4?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28fe8e89-e5d4-4c3d-b294-08dc7438e731
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2024 17:11:32.7283 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xGXBHzvGGbWPDTiYNM474fp8ogw7ndWYDb3qFB8bvwTZO6ABsQBd5SBNyP6QWol/bgyB/BtTcrzpOHxuufCkD8/sGDlBZ73MLQdxnX2b840=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8541
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715706696; x=1747242696;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WSM2xc+LfPazhlJLF4qJAtNX59ScP+qIyhoG/5CkZj4=;
 b=ELRVqi8iWV6def6diabnwnCON/2UKi3piRdy6bOFfajfNRWRvebBtYnT
 FoqTBAhTpDHj3y6k0P0gLo9HS/SIv+rKtHXcDAgtS7JNN061cla6xLtVD
 XQkWcf6WHx2syljfkjR3Uzz/6YlUljwe4dtZnEo/N5pfIgveRcl9JQEQh
 aBGBGkBIU3nyTz7zNtaH9R9J9QEbIl+h6jAuqPdRiC3I7SWmNvKg65OiC
 Rbypq1v7JDH3UDAa57+1fvRFCe1VTbd0jaXDvVZv05owF5VNhGegn4Eq5
 qxod/QA1Wu968R+fy4HZzxh/FSDzE6zDmnOO2lk4dM4nZJ2mcCcwf9f80
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ELRVqi8i
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net V2,
 0/2] Fix repeated EEH reports in MSI domain
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



On 5/14/2024 2:55 AM, Simon Horman wrote:
> On Mon, May 13, 2024 at 12:55:47PM -0500, Thinh Tran wrote:
>> The patch fixes an issue where repeated EEH reports with a single error
>> on the bus of Intel X710 4-port 10G Base-T adapter in the MSI domain
>> causes the device to be permanently disabled.  It fully resets and
>> restarts the device when handling the PCI EEH error.
>>
>> Two new functions, i40e_io_suspend() and i40e_io_resume(), have been
>> introduced.  These functions were factored out from the existing
>> i40e_suspend() and i40e_resume() respectively.  This factoring was
>> done due to concerns about the logic of the I40E_SUSPENSED state, which
>> caused the device not able to recover.  The functions are now used in the
>> EEH handling for device suspend/resume callbacks.
>>
>> - In the PCI error detected callback, replaced i40e_prep_for_reset()
>>   with i40e_io_suspend(). The change is to fully suspend all I/O
>>   operations
>> - In the PCI error slot reset callback, replaced pci_enable_device_mem()
>>   with pci_enable_device(). This change enables both I/O and memory of 
>>   the device.
>> - In the PCI error resume callback, replaced i40e_handle_reset_warning()
>>   with i40e_io_resume(). This change allows the system to resume I/O 
>>   operations
>>
>> v2: fixed typos and split into two commits
> 
> Hi,
> 
> These patches look good to me, but I think it would be worth adding parts
> of the text above to the commit messages of each patch. This will make the
> information easier to find in git logs in future.
> 

Yes please, I'd like a reworded message as well so that we don't lose
this important context.

>>
>> Thinh Tran (2):
>>   i40e: fractoring out i40e_suspend/i40e_resume
>>   i40e: Fully suspend and resume IO operations in EEH case
>>
>>  drivers/net/ethernet/intel/i40e/i40e_main.c | 257 +++++++++++---------
>>  1 file changed, 140 insertions(+), 117 deletions(-)
>>
>> -- 
>> 2.25.1
>>>>
