Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2A6AA61FA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 May 2025 19:03:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3679183D08;
	Thu,  1 May 2025 17:03:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hp2Az7DgsJYL; Thu,  1 May 2025 17:03:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88DA583D0D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746119037;
	bh=1UtD+43q3w7GqvbOkkcvIfpWtzQ735pbJiu2YhYdviE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vsMD5hSVOVksgUTrQ9Te0YpID/1mYbAf33ke+fYz+uYA5Lb3Sw5sZ8GPOF9/+ZEE5
	 MK3mPxj4L5vxOzqQ6ftUOP4OyU47qm6YvK4MdeEQl6u1xYooVB+L6Dx6jVf//QBF+g
	 1l3tqrc4y4CT8rCYdTyGPwhG2qxyqO+us2zOcVXx76LMhwHbfZ2tlZaSWgC9NGY/5u
	 +jvJ8nMQBsQBxf3sIvPfvhpiY7poGuBlqJFQTorqrkuJGbDXvIkUld/sQYRmP9IsP6
	 qiuJJA+aTJ9o/KJi/dld7P0ihJD/UbpLJlhrkoKXw2Nzs96gofprWuSMWqnGZl+cuw
	 9zIkXt3ThxrDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88DA583D0D;
	Thu,  1 May 2025 17:03:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A3DBE4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 17:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7BD1E83D08
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 17:03:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MINuFh0WTUwK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 17:03:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F38A283CFF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F38A283CFF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F38A283CFF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 17:03:52 +0000 (UTC)
X-CSE-ConnectionGUID: kWk+f/hBStqHwU4vZUBe9Q==
X-CSE-MsgGUID: kzHwhFXiRQqd50+YK9dFDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47706773"
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="47706773"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 10:03:42 -0700
X-CSE-ConnectionGUID: l5xB9I/EQoeLFrSu5LF5rw==
X-CSE-MsgGUID: erR4+iF0Q8GqwMB8hOjcpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="171671858"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 10:03:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 1 May 2025 10:03:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 1 May 2025 10:03:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 1 May 2025 10:03:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iQM7Soc4BufPRNAzoxO7qTl5Op27N3PwPsNZe3ki+mVkHOLrBiD9NBawuxsZfz8RvwoDUbtM35BR4Xp87Jq4/AMIb9nJqar/ztj9BFMljZ2emouGt0pqed7//yL/NVh96jM9qg7JnO5II72xNzBz+3GGnsi/u2outZ4cd/MnnNi4m7LRFtoxz80zEy0hgP6gzehCxd7Id5dULlgSNTpkgM85wSOyPznomUj7L3kNhg/KEE8fCh/SZ26hZkt6lDT+kRabBk0NzMDHmWu9dZhSj/Ggs7M4oe2OAHZCMNndRNeNTzrOm+lPvv3KVJfFeAqJbOICtjW/EJJmAXWnP6hS2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1UtD+43q3w7GqvbOkkcvIfpWtzQ735pbJiu2YhYdviE=;
 b=Kjealz6uF7OTFlvWI/v4UdUwFCOkzP/xMN80NJNx5I9kA6eIJS5+jHP8v9eSlAjJ6+jWgVH0wEV15/F4IhYZBIMd83Nm+JWeJJzjZV6eEih7Cmw6rYXMCC8XgOm5LDZaZYOP7ELt/+6rl8qO37CNZm5JE5kP9DeO/YMMFRIM5/Zmx6JvmBUTb371V2jgHowkZX32Ov68z3hHl/7C4K2WmHT23HXw0c/RrjN9AT4BiitgvVQcJwlNF1m0oEqGwL4yV8aRHifxi5S46l5s7+11Suimcqj+DDdG9/g8c8kn0K4RmVvSA2/FqWVFnXejphIZB4ZBHN/Ho156y7J6OJaYCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CH3PR11MB7939.namprd11.prod.outlook.com (2603:10b6:610:131::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Thu, 1 May
 2025 17:03:24 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%4]) with mapi id 15.20.8699.022; Thu, 1 May 2025
 17:03:24 +0000
Message-ID: <6539d296-7f3f-462c-bb30-895320bde855@intel.com>
Date: Thu, 1 May 2025 10:03:21 -0700
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, netdev <netdev@vger.kernel.org>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Milena Olech <milena.olech@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, Karol Kolacinski
 <karol.kolacinski@intel.com>
References: <20250430-kk-tspll-improvements-alignment-v3-0-ab8472e86204@intel.com>
 <20250430-kk-tspll-improvements-alignment-v3-1-ab8472e86204@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250430-kk-tspll-improvements-alignment-v3-1-ab8472e86204@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0021.namprd16.prod.outlook.com (2603:10b6:907::34)
 To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CH3PR11MB7939:EE_
X-MS-Office365-Filtering-Correlation-Id: af77a1ac-7589-439d-ba95-08dd88d2157b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NWZ3dEdtdlBLaUZ6RGNFZHdhVjErcXRwT0ozb0lQaUZpTEN6WjEvS1hSd1FK?=
 =?utf-8?B?cy8wOTUyd0FBaVZZdzM2ZnViUWp4eHQwRHNQQnQ5YUNSRWR0RjBWK1I3Rkor?=
 =?utf-8?B?NnU3YVpOR3lEc3VLSnFKYlloZVR3Y3d5RGs2TFdzcnFZV2FRamJFNlJzWVdv?=
 =?utf-8?B?RlJiODZxbmFLbzIvaEpONjFsRm5JcEhSQ2xOcEdYbkM3dlNlazhlejJ3cWNF?=
 =?utf-8?B?eE1IYnZMZ25rVjRpM2RGb080T1RaN2VpT0habEx5UUQ1S0hXSDhqY1pINXIx?=
 =?utf-8?B?WDgzQ2UzLy9zNGVPMUNLVklYOFpKclROa2Nudk8zMGhlVFFBVzVCMTk4UjY4?=
 =?utf-8?B?cEVjWjdsNzQ4YUlnOWRqUGNSeXpLS2YvVVpaV3BPK0NLTDdXeFJoYmFla3J1?=
 =?utf-8?B?NFdaY0FoN3N4WXgwN1pBTHhYU1IrdzhmcElQckx5WUNQWXBINE5YaEVSOXZ0?=
 =?utf-8?B?N3g1bDVhRldhNDdSNmJrTDV0cFBFVXoxdk9QYXllTXJ5YjJOb2ZVL0drSGda?=
 =?utf-8?B?UlhWYUJ4NFY0T0NGVEFyb3dOVHNodWlKbUE3eE9HL1J1RTNWazhPOFlCcEVZ?=
 =?utf-8?B?MDBEdCtwQWtwN21ZNk5Eek5EUVMrcGMzT3l2ZmRPSXl2dzd5cjZQNXVQZWJv?=
 =?utf-8?B?czZ6TGF5dEMvZ3hJalpvZVRZYkg1R05ZZjFITWhRNENIMW5POUc3c0QrT2Zt?=
 =?utf-8?B?VWwzTE1wcFVRUUFqZmU0bE05WmZhcDFhT1ZyZ1U5ZVlwOUVoNm4yVXNYYzZI?=
 =?utf-8?B?UTlydXh0MGNqTlZyVUlHQ09EYkZleGlUTWloc1g4SHhjajhPWWdTYXVKZFVF?=
 =?utf-8?B?Sk1zSExrSEtpVzVzOTdLOXJldDl4VjJONHlSWWxFMnpsTk0zNlY5eTdMMXk0?=
 =?utf-8?B?RWQ2VnQ0TGcrcVJCZU5IaHlFb0ZGYmZIK3p1M3Y2WlhONjJLS0VyT2FQREcy?=
 =?utf-8?B?a2c4N1lKTStLR0pCTnRraFpqOXdlazNNRTRyRXFzQUFQRE12S3VqNWFodTdy?=
 =?utf-8?B?dXJpSG5xLy9qUVkraXNTODFuOFQ0MElxSTVVTVoxK1daTG8zR24rQ2E1TFh3?=
 =?utf-8?B?QnZLMk44c1JCRC9BUHhMZFR4YWJXWVlPMGwxVnVzUVR4ZXpYUUdoOFl6QTgw?=
 =?utf-8?B?aTZXd3k2a0JqOXNRNUxJMFg2MlJMejN0UVN4MFF3Vm5aL1F3Q0l4d0xGUUtm?=
 =?utf-8?B?MFFDb3RFS1BFSytSK0IwR3RhekNuQ2x3RmN1dkVCRi90UlZFLzF2ZldXb0hW?=
 =?utf-8?B?eThrU212VThiMXNDTlJDNTIxYjZicVlONzhyY2YwMGtTeFBwZkh4REszUXNH?=
 =?utf-8?B?OGR1elJqZVVjczlBVS9ydkNvUkgveFl1WGdENU4rdjk3TGhoUUlVOS9KMDJL?=
 =?utf-8?B?VFNZZzBMWmwrbzRhaEtITk9UTWUwMVc0d3J3aU5KQ2M3M3ZaUGYwOW1ZcmNh?=
 =?utf-8?B?dEhSbXpjUmNFbldUWTJ2ekRuTDJlUTkzdS95ZHVmWC9zd29iZHlkN1RhODlv?=
 =?utf-8?B?TXRuQytYM3R6OHIvUFhwaitTK0pHOFMxOHpTNXNvYUljVVh6SlNqOWljckNE?=
 =?utf-8?B?UDIrcUtFenE3cWFLcTJNZ3hKT2ZRalNiT1BOSERYR3o0N0NmS1VWQXVpUU5C?=
 =?utf-8?B?NU9vcHFGUnZRRE4vR0ZpUFI4MkRWeFZic09DbTl1YVcrVnZPbzJjc3pidG12?=
 =?utf-8?B?eTQyeVlMS0FJRmNvYmNjeXhXNmZrTHVLNGMzQ3JFaWFha3NWdGhCZ1lZMklm?=
 =?utf-8?B?UllmNDAzZWVXVTNZZ2lLN2hzWmpUa2I2RlB2bmZNbk9sNE52RjRPMWpoaElG?=
 =?utf-8?B?c3Mzb0s3T0x6ZDh2NFR3cHErMUZ4aTFtcmJMb3dmMHR1TFdScW9qSHk3UnRq?=
 =?utf-8?B?Zk5Hd3NDUTRtR2NneTI2RTNEbWtuYjk4bnFycDZBT3JEOUE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aDNMTGNWVzBSd2VlRS9teWQxQzd0bjVoMjlwQTFvVHU1OVRXbm5ZcVVEM2dz?=
 =?utf-8?B?SUNuU1FmbVdVVkJKWkM5RkJib3k3QURzbEgzSjRCQktXbHhxcWV1T3R1SUdm?=
 =?utf-8?B?S3kyZE5iNkg5Uzd4NFVFSlNEZGJSdEFkQ1k0bUFCTmYrTGI1OFRnQmJESUFT?=
 =?utf-8?B?ay9pLzROcDhhUE1HTjBSa1REWDVydUtlU2tIUnZsSmN2QUZzM3hQWG04RUls?=
 =?utf-8?B?S2JjNHZaWStLVDIzWklrYjFDbHdHSmZyNTJKRWNHc0doTFBwVG44d1hnV2s2?=
 =?utf-8?B?SnVwWDlzajNRU2ppMVMzd0VMTzNEMjdnelZTa1BwalQ5ZHJzTUNsZy9LdENY?=
 =?utf-8?B?elFiaFJhTWdrWTIxY0VSVkhDelVkMmxieTE1YUkvM09zN2Z4NURhZ2xaSDRz?=
 =?utf-8?B?MGR3SkFOM1pPaDZuNEFuT0lvNVlXcjdnZE1JUzVjMitrb0NCYUx5YWNNZFJS?=
 =?utf-8?B?TFl0Qk1aMVg1OWRXUEhEdlFiOUVaNlF2RUFPc2VDY01XWmcza2tQM08wcHJC?=
 =?utf-8?B?OFM2QS9ZR3cyS1V4b1QyNHI1Slg1MWZlN0J1Q0QvYlVEcmwvUndPbkhWNVdS?=
 =?utf-8?B?eVlGQ2xWY28wcEpEZjNjWXh6aUNBTm0zRStJUXVaSlVjMU1NRktJTmpEdzBz?=
 =?utf-8?B?T2RhbktqZUZBbENmM3dGcUQ3S1c5bUNkN3NKZExwclMwbUE5ZjZLK1QzemJX?=
 =?utf-8?B?UGtzZDNjUXNWU1c2TTBnTGhJR3o1SCtFbFhBYWRvVGZTdS9yVVg0M2hCbHFN?=
 =?utf-8?B?a1NROHQzdmJwaHJIUkh2VjRXaW1JMDBncUMwWHF0ZnRVYzA3a3NFbFd2aTl5?=
 =?utf-8?B?TThKd0dSa3lldVVrTzlXSG9OM3AyNzI4cG9saFZPMjg5UCtZTnFwcUJaM2No?=
 =?utf-8?B?QXNHUG1UUFB1NVZ6K2tWOW5jd2xlaEVjOGRMaGNqUTV5bDJoN3hSRWJrdUoy?=
 =?utf-8?B?Z0lwVzVreFN1d2prbzlndHVQY2JBZkRndlA1aGQwL2VVb0JRelp0eG1PTkRx?=
 =?utf-8?B?Z2ViSFg5b3hUSTVqZ3RMRi9xYVNCamRVZUNGbU9kUmlUb3dUVWRZN29nYndS?=
 =?utf-8?B?VEtvRlpaWDBGbkVJMkliTnZPSG1vaFVvSVdmL09GMG11RGZhT245SWJSaFpa?=
 =?utf-8?B?KzF0REpseGpqbTgzR0s2RVlJNENJL3V2aTkycWJiQXp2Rk1uRWlzTUVXckQ4?=
 =?utf-8?B?Sk1vQ3dTMXA0M2tveU1RRG1uZk9hVXYyQlNRM3FTTE1aM2hWSUJlT1NqYkFK?=
 =?utf-8?B?WGlwSlU0a2JlazJCdjNmeXpLZXovTENKWVNEN01YUTFGUlJ1Ym1hbEpxWWI1?=
 =?utf-8?B?aDdQSHZMdjA1L2RlazJMc2dsZG9kSUJ2RVNwMkZCMHJGSll4UDdaUWZQRndU?=
 =?utf-8?B?Rzc1dUcxOFJ0RnU4MTNGeU5BTGtCcGlOdWk1UEZMSnV3NDMvVU91NkdQUkI5?=
 =?utf-8?B?OEVCR1ZjK0F5WlZLRUc3a3kxaUlPcG9ZRUhYOHkwaUQzMXp5R2dyWTFxZTc0?=
 =?utf-8?B?VTV0RlVPakRYSll2Uy95UkJXYUN3V1dXeVFwT2VHeUNFbTVLclZ2dTljVFNY?=
 =?utf-8?B?bXdrdXlCa1pBa3lzSk9WdXI5RnFzWUZiWTVuanJ3aW51K1Z0SlJDdjh0U0lz?=
 =?utf-8?B?a2tIc0hXRHkxdVlqWkx2MExsVWY1SVQ0SU50cUZtUTlxdGhYSFVRR2VPVlZ5?=
 =?utf-8?B?Uk9MaFp6SFRxTnI0UkRTRlgxQW9NY05RU01UcEl5ZmlGVHMvbGs0WkpRMXVi?=
 =?utf-8?B?U0xxUFF4RXhWY0tRMDNwem9OdDFaWTU5WHBRQVIzVEpTV0JuYXJyNUtRZ3N3?=
 =?utf-8?B?cUxDdWxzR2JObDdFSW0rSlF2ZEFNWFpFOXMycUR4L0RoUTVpK1dMU0duM1FB?=
 =?utf-8?B?cHRidnpscmdyN01tMkJ5bWpENHp2eFFrVW9RWUNzUGFSUVVHbnNjcXVQZWxJ?=
 =?utf-8?B?ODZYemNxSGhkVEttdDJiek9lSk5rMFR1QThROFlLUFlJL01yWGdvQVBrWnNy?=
 =?utf-8?B?L2s5cGNORUlyZG9DY2xOcGxIc3NZa1E0K2JvYWNpbWdxbjErZHRiQnQxU0JS?=
 =?utf-8?B?UUF5a3VpbnFHbWI4OVJkOUkxT1BaYTNncGkwK0tWQ1NrS3h3aGo0c0h3Y3p2?=
 =?utf-8?B?MHpvakFkaURhcnNCZGpuVElLRUR5aGZQc1BXOGJodnQrNnd5VWU5MU8xeGlo?=
 =?utf-8?B?ZGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af77a1ac-7589-439d-ba95-08dd88d2157b
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2025 17:03:24.4031 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4EFIM/36abswcamFbBXtKGBgRYlPPphJ5N+0/VpPapTxZI4sKg0Tb08BwMAOwfg/qgc/LZiAQwqX2e+qkqwwVITz73BKiNT2AcHFQUQ/gS8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7939
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746119033; x=1777655033;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7O0ZpZbwQWSSyEwlQkhtLgg60zBN7RNZFsMFl1J2zBA=;
 b=N8ADB0plOv5wleMXXw5TvDXx9Y1g+gkrtRygEu3oCl9WAKITEnT5UH4c
 n4VoSrGWxdvVaZE8GO4ZQhT30QbFwxzNmra4yDAxA/4k8OtcUVEogFAIE
 ZPztVzSLRIVHsuyBX7U+8sZ8O7D24EI/ghbQHvY3j0QM77Rkhi2jRCPpo
 e+f9m4z3HeuVFaN3r7Y3iihhZLhnWWLGQi4QhzujbENDPVTdEgQPTwFqB
 7rdRwecIVHVr4DcaF+M9uvawEvnZXLy2giBPfudv+lOFWinujry30uIxU
 PqCGOFXG9MTaQZKtblWIjbJZAhnJSD5vfma9CzQ4KnZsHCwAg2Qid5YnJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N8ADB0pl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 01/15] ice: move TSPLL functions to
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



On 4/30/2025 3:51 PM, Jacob Keller wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Collect TSPLL related functions and definitions and move them to
> a separate file to have all TSPLL functionality in one place.

I mentioned in one of the earlier versions that this lost/reverted 
commit 4c9f13a65426 ("ice: use string choice helpers"), we should 
restore that. That will trickle some adjustments into the later patches 
as well i.e. use helper over open coding.

Thanks,
Tony

> Move CGU related functions and definitions to ice_common.*
> 
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>


