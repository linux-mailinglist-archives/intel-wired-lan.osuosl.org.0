Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 615469F9AEF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Dec 2024 21:15:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1893615BF;
	Fri, 20 Dec 2024 20:15:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DOwTZsIrdiCx; Fri, 20 Dec 2024 20:15:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E02C7615C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734725712;
	bh=m5P1C+0PgaVnFYjTB50EA+svyfTwjEAIS8tYZu0GudQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VE6YvxYzR5eDAvGHbc27bSLUHAEKDZKTzLLMC6M1f/DEZyo9WN6xffPhiXZ8kGvQ3
	 Bp7MFJszpLLtCkkphsruRSr8xEuw89Fsm0c6WULSH1Kf6RLpb2krxLzPYOg/FTBbr0
	 dmCDfmcH0pOZVi0KgOF+GJ1Hxk5EAzaPF7QFmW22YJPEd6immk53VQ1iYMG0gEEnxO
	 +5GxMmumCBpMK2V0wifVMPY5sKxFe47+S+TSY93O2iD76GsmSz2d/dU8ar3Kp4m3Fa
	 x4Bh+u9h/1VJarSMBKJ5N62oYxxZrXrsgIIFNKbUMlAN3CtW2BL+1DD5vpcYGxJEiV
	 Eft+d6S2OI2nw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E02C7615C4;
	Fri, 20 Dec 2024 20:15:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5C6B4730
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 20:15:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 29EC483C2F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 20:15:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g4O0ASIzNh_v for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Dec 2024 20:15:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0B91083C2E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B91083C2E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B91083C2E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 20:15:08 +0000 (UTC)
X-CSE-ConnectionGUID: UqJHau4DQAuOlbx2e51xSg==
X-CSE-MsgGUID: SFykMJSvSkuDpwRQlUJviQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="45776346"
X-IronPort-AV: E=Sophos;i="6.12,251,1728975600"; d="scan'208";a="45776346"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 12:15:08 -0800
X-CSE-ConnectionGUID: oZUtGO7vTS+WByxnpy46sg==
X-CSE-MsgGUID: 2ereycyqQayOY5GMbxIDvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="103591250"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2024 12:15:08 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 20 Dec 2024 12:15:07 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 20 Dec 2024 12:15:07 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 20 Dec 2024 12:15:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tzcSVFSJp0qc713FiL3+dcFSQXYyt0LIqyqpXhQF6IjBF8tvfgZ2X2rOUvybDRskBWcIV8wFQ8Xc1mjsZEObT9X+xVDgxinzcCI+3oYkFoouuFxRtUTX4bYmigNMeaeHrdO5Hm+61QDsb+IN7UvRtHDvuVJmGTcH5BixbIa0w8HLKo7/6wpc7fKEw4hY/LtbVOotCXoxjxpp/3zCw3sYA8MgLeUb3p+TBCROyI42cGP1QeX6TnPsF90kxma5aVLkuRQ5kUqYY/rASv/XE1fW9pjCOhbLef5QfA3VEdFldjH/773CVVmYi7HPzE0QDf+1D4termTfeuKIe+5OhENSWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m5P1C+0PgaVnFYjTB50EA+svyfTwjEAIS8tYZu0GudQ=;
 b=AhprtgHUOXobKF5+qww85PFrgzYd9iKgbgo13gV2aj7SrJDd9ub76PmMSuris/wsldMLTtSDqtsdVr4v+YKhjSGOfmldIgefcfJ3FqMC9k6TpRAQuZkvR4PpNjgSemZ9w6QFfx0iuvwSeCZUWEBalzj4xjdPXDbdCmn3Sz+TqJRn4FRtfmJl5v3XYY3Dwm0sV4Zos90OP6lzXeI0Z8hSd0fB5tLjZo5n419SQk/5/Amy0GJdN5dSAMQyMOR77IXMMhp6DoB9uwNV3pR/G2vXXE/qT6YiZ5fIY3zO0ocQB1UHfbGbI3IDQ54ymjcA74lp181xLPwgPzmBSYvffdxZiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by CH3PR11MB8209.namprd11.prod.outlook.com (2603:10b6:610:15d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Fri, 20 Dec
 2024 20:14:58 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%7]) with mapi id 15.20.8272.013; Fri, 20 Dec 2024
 20:14:58 +0000
Message-ID: <df42a234-f289-4be7-a698-54b645b0fd81@intel.com>
Date: Fri, 20 Dec 2024 13:14:48 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <andrew+netdev@lunn.ch>, <edumazet@google.com>, <pabeni@redhat.com>,
 <davem@davemloft.net>, <michael.chan@broadcom.com>, <tariqt@nvidia.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <jdamato@fastly.com>, <shayd@nvidia.com>, <akpm@linux-foundation.org>
References: <20241218165843.744647-1-ahmed.zaki@intel.com>
 <20241218165843.744647-5-ahmed.zaki@intel.com>
 <20241219194237.31822cba@kernel.org>
 <cf836232-ef2b-40c8-b9e5-4f0dffdcc839@intel.com>
 <20241220092356.69c9aa1e@kernel.org>
 <35441a41-d543-4e7b-b0dc-537062d32c9c@intel.com>
 <20241220113711.5b09140b@kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20241220113711.5b09140b@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0312.namprd03.prod.outlook.com
 (2603:10b6:303:dd::17) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|CH3PR11MB8209:EE_
X-MS-Office365-Filtering-Correlation-Id: 39b098ee-d79a-4e2d-b819-08dd2132f9de
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZmhBRTN4ZG41ZjN0NDNxVUh2QW0yVFpRQjRROEFqblJxWmg4T0NVT3dIOVhh?=
 =?utf-8?B?Umc0N3NabVlHaSttTFo0VDBKR0tZb0hkN3Vma0kxbWwydEVKb3BNb0thUVow?=
 =?utf-8?B?T3AyNkVSUmNmWHpra1VlRmM2Z3A3c3RtYUY4bmI4enNaY2lpaENKR3h6S0F4?=
 =?utf-8?B?S3RPUTFVSmhpUkJ0M21WSEpKTkQ0RFI1enF3Z1c1NlNId0pjbkE2TVptK25i?=
 =?utf-8?B?UU14cnBnbW1iakNqNFlXblN1YXp5Nlo2WStxcERzVGpYakFncy9TODlTWTJH?=
 =?utf-8?B?VURlOUhmekpHczAvVVBtMEZ6WTlHMVRUd1YzeTFWM08zM1l5d3NYNHcyRno1?=
 =?utf-8?B?anZjS21WTWVKakJaNk15SFg2V0h2SUNDMlljeGxpNkFlYkhnOXNvd1lYZm0w?=
 =?utf-8?B?VGNRdk1wRkFjLy9JUGNNQlZPSUJhY2lxY3Y0cFp3YmU5YlZ1aHp6Yk15d2V4?=
 =?utf-8?B?YndRdzhTWmUwRlp0bTJpUGdpZ2RYbGRSRHBTYTRxb3owRk93ek8vQ1Y4Ris3?=
 =?utf-8?B?V2ppdlJMc2VSOTBidHRvZ0loNU04TVJiTGdiQUErQ0o3TEhYZHhrNjNzT21T?=
 =?utf-8?B?RFg3ZlBaSTdmUm53WHFvRUNnaVkwa0h1SFdpa1llQ3ZTUWsyNUJRN2dENUNH?=
 =?utf-8?B?dzBsQ0dpQ2ozSld4UkZ4RS9QaXBZWmdMOWt4UGtDdm94UUVONFdkdCtUUkxq?=
 =?utf-8?B?RVJBcjJnL09EWEJaR1ZKcmg2WldoRlRBT1VnU25ESGpJV2lsQ0hVd0VqK3FV?=
 =?utf-8?B?bTd3UzRia3pJdzJ3QXdLV05HV0FxTjZwV2RGaHBmQ3dLb210dXhvN0RmUk5i?=
 =?utf-8?B?dk5xOW04dWN5d0VoY3FEV0orU214TnhqN0lreFMxcFlDVTZUUHVsUi9YcmRq?=
 =?utf-8?B?c21YUG8rOEVlOHRnOExzVjNtUzFRZ1dnVEZOTkxmeXlaa08zY2djK3Z2emcx?=
 =?utf-8?B?QmZacmZCY1BYN0Y4YWhrcHNnNFRuMDN6enBzZEovaVBCWUw4VnQ5VER0dlpt?=
 =?utf-8?B?NjdwSmZVbzRjZ0dSNTRYaDdnUHQ4K0Z6UnFEWnN1RGYzeEZ2NmgydmduQWw3?=
 =?utf-8?B?ZDhZL2cyNXNJbktyL0JXMGc1WFQ4VUpCWTVLdkJiTW5LRkJPWkd5Yi9PTVNs?=
 =?utf-8?B?UVN6UkJEazJDWndDWVc0aUxhdGJpNEZVMDE1TGhkYThyR2haRWpURUNvbHFD?=
 =?utf-8?B?NExOZzZ2QzlpMHdXbjNUNzVJVjhyL3c2NEhpemtpRHlBT0xUNzc4amlIQzRK?=
 =?utf-8?B?Z2ZncUc2YzFGYWIwYnlrT24rNWdVUDdya3l0UDhoWmgyTnhNQ0QydTRsSk43?=
 =?utf-8?B?MFhhT2krRDRkZWdMK2VCVzJlNjNxYVhkSjcvT2M4cFlCcWtiQkRaT05PNkFD?=
 =?utf-8?B?ekQ4MUJWSGg3eVhwSmxucnV1MGJFNFRNWW1DOFh6YWRJdkwweGY0SHczS2dY?=
 =?utf-8?B?YU1YSzRGYTlxTCtLcDlIRllpNzlucEhLczFBdVZHRXJiQ2NxTGd0czJFVktZ?=
 =?utf-8?B?ellXV0srZHUycEt6SG1qZ0xCRDZCTE1iTWE4ZFF3ekJpaVRHQisvcENhUlA5?=
 =?utf-8?B?elJTVFhiZzFWYWFOWHpoZVUzT2x0VTJ3VDFDekxKQ2IveHJQQ3RZQ1VvR1Fn?=
 =?utf-8?B?VzRlVGV4STluTVp0SHpiNG14RGZjSmhDQ3cxdVNENzhBSTMrd2pWM1FPbWNP?=
 =?utf-8?B?NFBSVFhSK2JlVWVDQVlIU3F4eWtnMS9ZTyt4dGdFOURoa0xzN3R6NmJKSkFO?=
 =?utf-8?B?RC9BS1B6cjlhV0tIS1FFTXcxUnVueldBRUtuMG5tSnB5TDROYUpXNDN4QlN2?=
 =?utf-8?B?Q1pBNjZ5QWh2N3BnMG14N0UrcWcvVktNL2tzNVZBbU85UGd5N1JLazVvMXdF?=
 =?utf-8?Q?61OEu8z/3DgI6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3JEd0tuZG8zQmE3c09CYlBYUE16emRIQzgzRkFhZUdpVUxRbDZIL3M3aU5y?=
 =?utf-8?B?R2o1WXdwTTV4cEFVVFVnT2dMdGJBL0tEUFB3QitEY2lvYlBRbDBLVitFWCtZ?=
 =?utf-8?B?UkxXWG1uVWxnNERaYk5KQjBxL1c3anJKZ0IxNUtiajVtZytQUHV4S1lwQW5G?=
 =?utf-8?B?cDkvT0FBaWM1ZUZFNXlhWXVUN0JHYSs3S05WQk1WSGxURXc1ckhhMXJYS0Jl?=
 =?utf-8?B?MTBkbzFKd2ZSdHUzeW5uZWVOTUI2V0dsV29VQk1iQURMUGNoaGhkSHpvZ3px?=
 =?utf-8?B?eVFOdVNpR1YwdXdkZldhVkJXOEQ4RnVqWTdmMWc1YTYrM1hMWnMwalU2R052?=
 =?utf-8?B?VnE4L0tjNDdNUTV2YUpJZE1kcHg4ZWNRbGNHUysxdEJzd3IwNVduaE5YSE5L?=
 =?utf-8?B?WUczc1VvK05aRE1CYzUrRFcrbVB0dTQ0RlZRV3ZsSi9MU01xY2g0YnA1RUNK?=
 =?utf-8?B?U3RvZkhXK1ZRVzd6QmVQd3JXZTBnUXI5a2N4UERZTXgvUnJ6L2JsRC9FNmtk?=
 =?utf-8?B?cC9SaUxkZU9Jd3UrMjdSUzNpWm9xcUwrdlFySmg2dTBCeFE1cHF5bjVPcGtG?=
 =?utf-8?B?YUJRUlJoOThLRFJGellmVUFJWkdyeU14dzhaV1dibSs1SHlNYkQvc20rZ1Rv?=
 =?utf-8?B?cWJFaEZIVEcxTVZlK2dJSlNkcmV0c05UTTFLOGJUNjhWK1p1b3p4YkVWY29q?=
 =?utf-8?B?LzBLVlRUVWZrQkxVb0FpaFp5Q0VPYkZ1ck5WMEw1dTZsdVNSNkkxL094dmdD?=
 =?utf-8?B?TmFXOE10NzZaWVl6aUNpa0FSZEE3NnFrT3lDVW1Gb2FBY1dLd3FnZWdzbGpk?=
 =?utf-8?B?eDVkdDV2Wk55S0JlZ2lCT0hrZFFMRkFEdktyckV1TzBqNW5Qb04xbDB2R0I5?=
 =?utf-8?B?UlhWdmVzUFBRdTRhbHFaM3VjUForSjJidHlhTWRHQ2RqL0F5cmU1QjJvRGUy?=
 =?utf-8?B?aFR3WDlySnUxdFRRcVBhK05zOFVLTGtnOElBOEt0ekhBSXlDZG1DbmYwODFw?=
 =?utf-8?B?T3IreGs4ek9LbzBhN2pISEUrbWNML3dvNmwwODJoQ1JaeFcxMnk0eEVybXZJ?=
 =?utf-8?B?QkZoRVJVVDYzZWNicW9KV0NuandHdS8zRUM3YUlsYndhaE5ibEJlYVRCVkpG?=
 =?utf-8?B?NU5jR1RNYzBHRlo5L2FKQ1lKVCtvL0dMM1g2Vml1RUU2T2FHdWd0QUtEdEZZ?=
 =?utf-8?B?cWluZzZaOHlZRFA4OC95ZU1oOXRGZVdCN21QQ1RucjlYRlZGRW5melVmSUxs?=
 =?utf-8?B?KytKb2s5OUdBR3hiTmtxVWRQWXRDbm9YMjF0REFwM0lEU3owNWM2dlIwaWF1?=
 =?utf-8?B?V0xzclk0N2t4TXJEZGZHVStPMkhaMVVwTmxhMVVqamZmUE9vVWVodHJQeXhr?=
 =?utf-8?B?VFR2NTVVV1p2ZjI0NGtidkh4MU1rb3ZoTjYrQ0U4VmUwVXNqaWw2VGFmUWtu?=
 =?utf-8?B?RkJQUjZTUFhhNTRnMXJqQW9JYS9GVnRGSVRVNEE5WHRvbmdJS0VzMGFQV1VV?=
 =?utf-8?B?L0V5M0NRcjZWQTRNQ2JWK2tOWVcyVzAxU1IwdndPUTdGZjExOW5MMXRscUhU?=
 =?utf-8?B?ejBwVWtUNnZ6ZDZXSXpDK2pmRmx1WFNQMlRHUUN2Q29oRzgwdk9aelM2YkNl?=
 =?utf-8?B?VnZJS3Q0Y1BHTllzQk90VkxINDBBRmJFUkQ2ZzNjSGp0RFk3dFRiMW5Ed2t5?=
 =?utf-8?B?SUlheXE0UDh4LytUYjVZbVN3WjR3aUZqUnRlakRiYlJFUis1QlVyWFdNNlU0?=
 =?utf-8?B?Q1RVK0NNcGhTcm9hYjFDV3FmdGtScVIrUUcwNFZpRHFZdFNlamUxWVkxQmU3?=
 =?utf-8?B?SDV2dWFMR0w0eEI1c01XT1hpMlc2S0JKOXZCeGFaT0tpTkM4dFk5bVlFaXNY?=
 =?utf-8?B?YjE5TE1Tbkk4M1BFUTBwamZ0VUFsSGwvSXBncEdnMHFsUmNoc0YrYTcrSkJT?=
 =?utf-8?B?MTRqQWllNU1sc05sdUprSlk0eElrOHkweXNZTEVpM0l1ZGlJNVpUOWlkODFY?=
 =?utf-8?B?OUtQdHZ4L1pTNlF1MXVGUFErUHVONWN1dVZzaUlnNWhCa2QwamN0Q3M3OXE0?=
 =?utf-8?B?ekNHeE9FTnBkbjJIajVSbUU0enAyOWRualo5R0F1cDh2VjNxeGpZdnNBVEM5?=
 =?utf-8?Q?vcQWF/oEl4TmOOfEfn39sbOjb?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39b098ee-d79a-4e2d-b819-08dd2132f9de
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2024 20:14:58.2200 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TG+6uQXmnjxWBRWe6BMeEgJTJNIx+P1d4LG89VO35F0//3qNmyTT/nMsQd5ZiT8hWet2cgeM+9yh/lBvRZtuew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8209
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734725709; x=1766261709;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=On4cUEchvst4R8sXbdNuwZ9fip6cV+3cooNgh3JsIOw=;
 b=KmJ9FB2iMe/LTVekMmYPTBcWmxMNWg/yoZSkmwJdD+S21WUaegMLa9Q2
 5CX+8mBipDHg4U18yX6H1vUrO377V3fOXvWW9rOCTEVX3NE2UzSmFrVX/
 mMDi6RcnbVTaJI62K7Nm79fV5j70iTW2Am8icXmYAjjJUAe+NaNznxZ7S
 3Yf6zpK8UJ+hH+6Bw8hOigEOYFqJRkARwST6IiZZa6Bk4K3l1nxkqWBUu
 1YR2yTlkZBNYr3W/UZF3tSMH3KN+hs0cOELatA6B4kF5kvfEO+O/P/CW7
 KA7xZOw3fmSrNJqyW8x67iIYnr1ftrP0THMe3HxTRJmG/VBSEJQ60Ohqf
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KmJ9FB2i
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/8] net: napi: add CPU
 affinity to napi->config
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



On 2024-12-20 12:37 p.m., Jakub Kicinski wrote:
> On Fri, 20 Dec 2024 12:15:33 -0700 Ahmed Zaki wrote:
>>> I don't understand what you're trying to say, could you rephrase?
>>
>> Sure. After this patch, we have (simplified):
>>
>> void netif_napi_set_irq(struct napi_struct *napi, int irq, unsigned long
>> flags)
>>    {
>> 	struct irq_glue *glue = NULL;
>>    	int  rc;
>>
>>    	napi->irq = irq;
>>
>>    #ifdef CONFIG_RFS_ACCEL
>>    	if (napi->dev->rx_cpu_rmap && flags & NAPIF_IRQ_ARFS_RMAP) {
>> 		rc = irq_cpu_rmap_add(napi->dev->rx_cpu_rmap, irq, napi,
>> 				      netif_irq_cpu_rmap_notify);
>> 		.
>> 		.
>> 		.
>>    	}
>>    #endif
>>
>> 	if (flags & NAPIF_IRQ_AFFINITY) {
>> 		glue = kzalloc(sizeof(*glue), GFP_KERNEL);
>> 		if (!glue)
>> 			return;
>> 		glue->notify.notify = netif_irq_cpu_rmap_notify;
>> 		glue->notify.release = netif_napi_affinity_release;
>> 		.
>> 		.
>> 	}
>>    }
>>
>>
>> Both branches assign the new cb function "netif_irq_cpu_rmap_notify()"
>> as the new IRQ notifier, but the first branch calls irq_cpu_rmap_add()
>> where the notifier is embedded in "struct irq_glue". So the cb function
>> needs to assume the notifier is inside irq_glue, so the second "if"
>> branch needs to do the same.
> 
> First off, I'm still a bit confused why you think the flags should be
> per NAPI call and not set at init time, once.
> Perhaps rename netif_enable_cpu_rmap() suggested earlier to something
> more generic (netif_enable_irq_tracking()?) and pass the flags there?
> Or is there a driver which wants to vary the flags per NAPI instance?
> 

set_irq() just seemed like natural choice since it is already called for 
each IRQ. I was also trying to avoid adding a new function. But sure I 
can do that and move the flags to netdev.

> Then you can probably register a single unified handler, and inside
> that handler check if the device wanted to have rmap or just affinity?

This is what is in this patch already, all drivers following new 
approach will have netif_irq_cpu_rmap_notify() as their IRQ notifier.

IIUC, your goal is to have the notifier inside napi, not irq_glue. For 
this, we'll have to have our own version of irq_cpu_rmap_add() (for the 
above reason).

sounds OK?


