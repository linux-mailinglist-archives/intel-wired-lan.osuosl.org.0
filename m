Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 128E3A40303
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 23:51:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95CA5607E3;
	Fri, 21 Feb 2025 22:51:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KbQgHUjIg4Hb; Fri, 21 Feb 2025 22:51:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A2FB607FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740178305;
	bh=Npo/oR1l/THDMPcaspkxI3PbUHL33M0GHnaWqvG4y5g=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WOhnHZXl7aBKz+OudZMEvnAq0Mzp7B6DhmIgfn+UKU25WNQ2kKZKawQ2+lJ3Jf9w3
	 +O/xZYrF1jDWvQ4ET3niLWXaPjLf9Q3L5Iacf7Rzca8DNs1qp0BsnO01+iusT2C/Jd
	 66dhqPpxaA2x+knEHKpAwDGaUS0WlSkvZY4nCACbBRZJgaJhjkB7JcqI8DFeQhjidi
	 SuKE23+izuKDQ+gWFkp1nvReO00xTYQUymmXf2mQmIz7S3B96z1uFBRSKjcvPaAFqQ
	 erbs9MQtQPEiJMNOjeyrklC0HJuEcx548+CcziFDRENuva2x6Wpks7jp0wMnUWzjEu
	 4/Cht4aE9ILZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A2FB607FC;
	Fri, 21 Feb 2025 22:51:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id EF9E1194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 22:51:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D387340B8F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 22:51:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vR5iwS-ZM2rx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 22:51:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 72A7C40B78
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72A7C40B78
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72A7C40B78
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 22:51:41 +0000 (UTC)
X-CSE-ConnectionGUID: UPOrexUrToKgGuK+AajhIg==
X-CSE-MsgGUID: agFKCOGqS1SxojhGlu2FBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11352"; a="44922432"
X-IronPort-AV: E=Sophos;i="6.13,306,1732608000"; d="scan'208";a="44922432"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 14:51:40 -0800
X-CSE-ConnectionGUID: TzlbptibRyajDsGmtQdIfw==
X-CSE-MsgGUID: 2aJbAWB2QrOk8QqBOAdCNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115993463"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 14:51:40 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 21 Feb 2025 14:51:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 21 Feb 2025 14:51:39 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Feb 2025 14:51:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oj1HP8U+LB8znGqkVXFq7ALNORYelg3nm7JTkRiy6E63A6IVDkVUX3ghHWrUogkob8I+RkRqDqb0bkMPlIFRP9bn6kujTrAt1s02XCBxQ/3tVHXtDWv1XyebU8NnkWI7G3ENrNuXMJeA6mgY15sObkT+5R0pcn6BWnfmPT4SWgPpLn7aNU7sNCgcvufYHUZu3K8+b1XJzA35ShMfSMrvyyd8zpE97V4PITckI1Z64bkF7aC1sMdcaicSfirXWLEWsdGOvrLuEmLEJ4HV6fl44yxBTDoWZbBtXVGQpQKosMVX78EwZcHm2hy+Sl2e6dhNSdFElubIVXEWmG1Bk8mK5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Npo/oR1l/THDMPcaspkxI3PbUHL33M0GHnaWqvG4y5g=;
 b=xcm5SuQlyW/etekAtaMzUuUoXEQR7HsXLhWSCnZ8JsSVoQzR/2AnXKn19aFSRgYm9YExQ4eAcUkUJILN4+rzeaQYKo40FH2KteNutB8sr677tOsNmkc59rZ74AoPL75LzcuwhrerJxmuBx6cUvVDPQf811xOG1+M9AZUpk98zVW7Niv3BKU3lt1ZNyjHPryDgCi8raVgutxZ05e4sogI7zaKFnSSRicuT13wa+CHruLaNXA4O9GacS2Y75qgT2qjGJoPgSw9exYzy0SMCe/XI6pQyojbbazYXbAt+40tJ6WtWZkem2O3jD1GUPZSmTzzE3TzY84Mdv5ZBWGowGaPew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by BY1PR11MB7983.namprd11.prod.outlook.com (2603:10b6:a03:52b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.14; Fri, 21 Feb
 2025 22:50:55 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::215b:e85e:1973:8189]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::215b:e85e:1973:8189%6]) with mapi id 15.20.8466.016; Fri, 21 Feb 2025
 22:50:55 +0000
Message-ID: <2a8a5ef5-af9f-4c16-887b-514b614b8c80@intel.com>
Date: Fri, 21 Feb 2025 14:50:52 -0800
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Jiri Pirko <jiri@resnulli.us>, Cosmin Ratiu
 <cratiu@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 <netdev@vger.kernel.org>, Konrad Knitter <konrad.knitter@intel.com>,
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 <linux-kernel@vger.kernel.org>, ITP Upstream
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, Carolina Jubran
 <cjubran@nvidia.com>
References: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
 <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
 <20250220174512.578eebe8@kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250220174512.578eebe8@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0197.namprd04.prod.outlook.com
 (2603:10b6:303:86::22) To PH0PR11MB5095.namprd11.prod.outlook.com
 (2603:10b6:510:3b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5095:EE_|BY1PR11MB7983:EE_
X-MS-Office365-Filtering-Correlation-Id: 02bb06a2-0ba5-4834-871e-08dd52ca3321
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V1BzVFh3ZC9UUjVRZFdteVdROVN3bU5tV1F2bDlsSnJyVTJLWG51NFdONjFJ?=
 =?utf-8?B?Ylc5a2VwNFlQRFozNlM4ZkFrN0F1ZlMxTlJpdWFSc3E0eXV5WCtPZTdVb2Z3?=
 =?utf-8?B?MDhmbVhWbnBOMzM2TzBPNVlaK3hrdVd5VWVHZmZmZGRxRzI1VllmejlkYytI?=
 =?utf-8?B?d3lYaWErbmgrdTVOeW00by9ibHBDN0FiY09aNGtSZVdydnRPNzZyVHZhVnBl?=
 =?utf-8?B?MDUxeGFrYlQxZlVMOEdldXhnM0gyVzU1UFlyZDExRzkxdEFHMktzVnpYVnRm?=
 =?utf-8?B?dWVKLzNPcTl5TFdJZzVVWFIvb3JENUVRenZUamZVNmxhVWg0Wll0VlNrOHBU?=
 =?utf-8?B?ZTdtWlpUWDArRjkyc3RnRWl4YVJ0dzF4QlBjWXlBYnJ6alk4U3JETzJWU3BY?=
 =?utf-8?B?K0R6Snp5M01jZmFDcTBTSHVVTFdubHlrdWpyQzZCVFoyOWpSdGlSR2NiVi9l?=
 =?utf-8?B?enJwMkVvT1J3anBxMFJNb1lJYjNZMlFnSDArRVBHdTBSVmd3Z29FZWZzQVNp?=
 =?utf-8?B?WldzR0RTbHNDM1NKa1NpSEpPUE1QYm40Ti9QTWN5Q2FCZVZrcGFybWE1aEx4?=
 =?utf-8?B?emsrMHJjalVFV1lvNzVIWHZkOE9IcnlpcnJyb0FuZFVCVFVoc0hiYWxBMWg1?=
 =?utf-8?B?OVlDdmN1eU9BcHdpaTFBUmxKbkpZdXZUK1dETUR0RFZudGVrUkNlM0Z1aThF?=
 =?utf-8?B?WUJFWXNjOHZIeFZZMm1mc21JNlVwRkxVT2ROeEFUN3NVOFkrTnZIL2ltNmdu?=
 =?utf-8?B?eXpBeDVyRUpWS2VQZ3R2Sm1DOG5LdkJRcXNuNW54NEk3ZGJrZzRBakQ4YStu?=
 =?utf-8?B?NkV2WTVlWHpNeS9qUUhlMzJNd0lyVGdUcW9pYkpDY2tXdjhkVmZVK1V3VTlC?=
 =?utf-8?B?RFlrREs5ZnpweHJ1ejJLNk5HRHREZVo3VlorbUkrZE5ndVVvOXIxRlRhaEp2?=
 =?utf-8?B?S2x4VFBFK3BXbXM5VWdqdWRkN1FuVGFkSVVDTnBzYlFCY1psL2sweVowSSsy?=
 =?utf-8?B?MVhOZ2x2QlU3eTRJT1ZOOHhWeW1XUFNUZTV3d1RQbW5aYkVod2FHYitNSHVK?=
 =?utf-8?B?a0lzV1RmdGIzczJHbFZSbm1xcjVPTW43b0VZZTBFa0k2eE1IeXJGelZvTEFV?=
 =?utf-8?B?RlZWbWoxLzZtUFkxOVo4N2dXK0ZxOHVzMlh3amJ2d2NYNk10VkROL0U4V2pG?=
 =?utf-8?B?ZWJJcU9laTV6WmFjckZKaEc4TDRJWjVodHVyYmRpd3I0dUFLWmtmQlhMSWVW?=
 =?utf-8?B?S0puYWNFQXlySVY2ZlUvZytrU0dXNWhFelNEVGZwQjBBRWJvN3IvZ1g5WHhB?=
 =?utf-8?B?b21lSDl4VjFqM2J2TytBMUxaVVpRYW9NaUtzditBQVk5VTh0NjNHOEt5R0dE?=
 =?utf-8?B?UXNqMHBoU0FFQk9LMWxMUC9pODlLNFJxZGtwYmo0QnhSaDQzc0Y3YXUzUzJn?=
 =?utf-8?B?Z3VKcXhNVDFheDJuR1drREF0THJlNUN3QnJFSGxxK21TTkhTbXhTa2ZFc2hM?=
 =?utf-8?B?eFhsZEtRNjY4ZmgwVDhOMThrcUJRYkh6SE9acVNkV1VneTB5ZUI3d3NqVnc0?=
 =?utf-8?B?WTRLNzJraUpwUlRYWVBKZWFranlNR2VJMjZSNHZCQXdyOGFKc0I2ajZsTGlt?=
 =?utf-8?B?SGhJdFpNcnU3clVMcGJSS1o0Z2xWYWhoTHZkQ2JYbE05ZitOUkhjZnNBK3c0?=
 =?utf-8?B?aVJCRFh4dFJ3aE9nNm1XaU0vdSsydGkzT1lFSkFCTTBCa2RVbWIzQXlTaC9G?=
 =?utf-8?B?cy91WnJqaS9uUlBldUJFNHpaQ1BPdlR1Y2pBdDkybkk2bHNBUzdKMHFBQ1Q4?=
 =?utf-8?B?K1I4aDcrR1k0ODY2VXNpcDdURHd0dGFkVXdmamE2bEdvdFVXMUpGN3JCWU9l?=
 =?utf-8?Q?NVZexbsX+xQjk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVdNWUUxcXNDMk5oeFA2V3ZYVXIyWUFISWQzRFBwQ3BCWEI3amFsR2M3YjZm?=
 =?utf-8?B?eFNGQXJlRlF5NGI0MDlsbzNPYnJ6VG1rTHVxRFhQUDRoMUZzYjhvdnpWSWNr?=
 =?utf-8?B?Vkh0ZnBXNG9TRUFJcEFOK2Z5bmx0VjF4MjFDM2pnNlMrVkVwZFg1dTh4ZitF?=
 =?utf-8?B?Q0FGRGpKcWNIallrNSs0MktmdnVpaEJnekZMSDdIYmZ1OC9wN2p1Y3I0ZVBl?=
 =?utf-8?B?ZDdUWmNMT1NVOU5jd1I2aXp6eWRMR3lNK2RYVVZzS2hLL3RVbmRIeTVjUVNN?=
 =?utf-8?B?T2tiTTNhOUhiMEdvVTJNeldGRkNUQXZPN3oyQlh1aFQrdTZNbnErcUJuTzVN?=
 =?utf-8?B?emJjSndOL2NKQlNyN2g4ZHVhWmw3SHNHVlFjMm9EUEx4YkkxNkdCT0RxU2l0?=
 =?utf-8?B?YzN1U3FrS0lic0IyVFA0V1Y1VCswZ3JWbnc5elVqZWpoNm1Nd2k5MGNLQXBN?=
 =?utf-8?B?Tm15Sm9JcWhyYTVZTElheW9NK0VyNFhaVlFXbkMvdUhmUVFCS2IxQVBvaFNC?=
 =?utf-8?B?ZkpCb01UOHMrc2pnWG5LTDdZOVJBT2F4Zk5VQjBpbzZzZ3lVampwdnpkdkxO?=
 =?utf-8?B?R0crYXF0SXZaSEMxYjFvcnRBL05TQUlrWW1icGFPblVDYmVqSjlnR3I5Zkhp?=
 =?utf-8?B?TW5PN3JGeU4rWFY1SG5ua1FmTmcwSDg2NEp1Z0RCcDM4VmtsV1R3VkpXNTBy?=
 =?utf-8?B?a1RmZldtTGpmVzFNTFA0djFkWHNBL1VhRWdZV3RzU1JET2cveHlILzNJWlgy?=
 =?utf-8?B?R211RGZOSjV6VkIxL05DVlVPUUtYWVpkaWVYcHlOOWE2SjNLTDBRUGZVQnNF?=
 =?utf-8?B?Wi8yOEllVTgxOW15bnJlU3ZOTWxKTWxLM25neXFJWHRJMEFrSHRlNFgzWmJh?=
 =?utf-8?B?Vmo0SWREbzBsRlRrUC9HMFNGSTltazl1S1lHaTRJNmlOdkFGb2EyeWYzL1Yx?=
 =?utf-8?B?QnFWQ0x2VWZLL2w1QVZwVUxlQXdjMFB5SFNoMFMwTGhDczNZNEJ0L3JNcGhV?=
 =?utf-8?B?QWVuTFN6Yy9YNlNjeFYxTTNBZkNKUmJvTGlmbEJaaGs1SzVKNlNqZ053RjhI?=
 =?utf-8?B?Y1JoVFA1S2NmMGpGb0dGR0dzTmwzQmR6cU9HNlMzOElGRkg3VmM4TWhIVkJp?=
 =?utf-8?B?Y2YxVGtmU3BQSDVnTldqTmFZZWNaaGFtY1JQMThBZmkxa1pBNW5CNTJJcElz?=
 =?utf-8?B?SHdqdVpqYXA0NVYrb1RlRDF1ZDhWL0lYK3BPQ2Raa00wYnRQV2RlcnRJMlc4?=
 =?utf-8?B?M2cxWFBYYlgvTkZocVZJLyt3WmFQU1hoS1NZYmZyWERGQWROMzhMNmtCaVh6?=
 =?utf-8?B?aEp1M3VUNEZWZkxKMWwvYTNzTnZ5NVB5YW9idVVyeUxwRTdyQko0QWZCdnoy?=
 =?utf-8?B?b1pyWSt2TlVxWHF1ZWl2cG5SbVFCeVJZRVVJMDJLL2o2MnlKam5CZ2w4Vjgw?=
 =?utf-8?B?eDlJcWdVUzlJYW5pemRXRFVIaG90ZjdrYUkvc2lYbmM2OEdDR2ErdUttSlgy?=
 =?utf-8?B?NXoxTUFvbXJBTEtpR1JQUUpNL1VBeHFVaStJUjlpSXEvYzBqTXlMN3k4RE5r?=
 =?utf-8?B?TTNNVHJibDA4YTNQMUV2TmVubFJUeWxhbW9uTlo3UkdQTTlVWW9kTWpVMm1k?=
 =?utf-8?B?cjlnOXhBdXZMODBGbER0RnJkT2prQzRWL052YllvbVQ0UW1NKzVWUEZJS2RF?=
 =?utf-8?B?MWU0dHg1dVl0NG9rN1NTUDFkUit1VE84V0lvSzFlV0l5VDZtNVpVKytSM2t0?=
 =?utf-8?B?bEFDV3Z6NVRXVmRMRTdPRGVwT2FoM005dEVMSHB5VVZRN2dwT24yak9JK1RX?=
 =?utf-8?B?dmhDOWRxenF3ejRaWitEK1ZqbEJlNU1ZZjJRVnFYbEQ1eVphVUVnQm9lMzly?=
 =?utf-8?B?dXBiQUtUVk0xV2JpZEhBV0lPN0NUUld4QW54dGRablhlZUMwMjJmaE5QbDJi?=
 =?utf-8?B?M1NWWlRmcHlaZUdHV0RJbXBGRUZYQkRKaG8rOU15blF0cUxGdlhWZXJlS2wv?=
 =?utf-8?B?MDBmOVYvKzZGUzhYOElWZC9pZzBSTmZBeFJVR3VidFA2SmcxYlgwdms4VVdT?=
 =?utf-8?B?VkwrYldUZkM2MVR3SFhaakVvWElpTkZPOVNqNTYrQ0JXbkVzTnRQQmdjL3o1?=
 =?utf-8?B?OWZqbXlTS2FaWjNSNHpoc2UvemZLV3B2emZMdEhtV25tNy9RRDU2QVNnZ1Rl?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02bb06a2-0ba5-4834-871e-08dd52ca3321
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2025 22:50:55.3376 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X+UYpOY3snstG/Ua7pdjSxWZlJyCfAePNgO5IMOkj63+Mwm2mtWTemYanLiXdBj2JtCGB3gUQQyFoGffgGj1GcSzbMBUM5GnAAfSm3+6TL8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB7983
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740178301; x=1771714301;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M0HhJjnUidXxEYpNO1uaP5Tr10kHC92xNqiSmsqa708=;
 b=iSVdUx5ME1ay1Rj5oXaVA3PGWwQpgXJuSsHUvgApxKeJT6NjorgQDsJF
 znyuzDUvO4VIHNkBEYLbzeeyP/6q+vw1eK4MywWms7ePnWvD25/oemDxx
 UUXqv1JdEhtr83DwsVHTFdNTupLnZEA9cj/D/PIWiK47QjAmSDZ+mK/oW
 BUd0pXl5XNRBcD2r7aKLCARQEEIOYj3+2Ip9fJazcvmu5PSPvSEIo5bmd
 cKVe9EqE4x0jR++FIlgvuXPuIUVhbu8X0NbbD8zgR3VZIMxDtTtQhwTDD
 rDaVk5bj0o51s6JkTFNNSAzE8a5F0I+PeDrIdgvIK+X4b83ff8W+EKvwR
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iSVdUx5M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next v2 1/2] devlink: add whole
 device devlink instance
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



On 2/20/2025 5:45 PM, Jakub Kicinski wrote:
> On Wed, 19 Feb 2025 17:32:54 +0100 Przemek Kitszel wrote:
>> Add a support for whole device devlink instance. Intented as a entity
>> over all PF devices on given physical device.
>>
>> In case of ice driver we have multiple PF devices (with their devlink
>> dev representation), that have separate drivers loaded. However those
>> still do share lots of resources due to being the on same HW. Examples
>> include PTP clock and RSS LUT. Historically such stuff was assigned to
>> PF0, but that was both not clear and not working well. Now such stuff
>> is moved to be covered into struct ice_adapter, there is just one instance
>> of such per HW.
>>
>> This patch adds a devlink instance that corresponds to that ice_adapter,
>> to allow arbitrage over resources (as RSS LUT) via it (further in the
>> series (RFC NOTE: stripped out so far)).
>>
>> Thanks to Wojciech Drewek for very nice naming of the devlink instance:
>> PF0:		pci/0000:00:18.0
>> whole-dev:	pci/0000:00:18
>> But I made this a param for now (driver is free to pass just "whole-dev").
> 
> Which only works nicely if you're talking about functions not full
> separate links :) When I was thinking about it a while back my
> intuition was that we should have a single instance, just accessible
> under multiple names. But I'm not married to that direction if there
> are problems with it.
> 

I would also prefer to see a single devlink instance + one port for each
function. I think thats the most natural fit to how devlink works, and
it gives us a natural entry point for "whole device" configuration. It
also limits the amount of duplicate data, for example "devlink dev info"
reports once for each function.


The main things I think this causes problems for are:

1) PCIe direct assignment with IOV

This could be an issue in cases where someone assigns only one function
to a VM. The VM would only see one function and the functions outside
the VM would not interact with it. IMHO this is not a big deal as I
think simply assigning the entire device into the VM is more preferable.

We also already have this issue with ice_adapter, and we've seen that we
need to do this in order to make the device and software function
properly. Assigning single functions does not make much sense to me. In
addition, there is SR-IOV if you want to assign a portion of the device
to a VM.

2) locking may get complicated

If we have entry point which needs to interact with ice_pf data the
locking could get a little complicated, but I think this is also an
issue we can solve with ice_adapter, as a natural place to put
whole-device functionality.

I have also investigated in the past if it was possible to make the PCI
bus subsystem wrap the functions together somehow to represent them to
the host as a sort of pseudo "single-function" even tho the hardware is
multi-function. This seemed like a natural way to prevent direct
assignment of the whole device.. but I was never able to figure out how
to even start on such a path.

>> $ devlink dev # (Interesting part of output only)
>> pci/0000:af:00:
>>   nested_devlink:
>>     pci/0000:af:00.0
>>     pci/0000:af:00.1
>>     pci/0000:af:00.2
>>     pci/0000:af:00.3
>>     pci/0000:af:00.4
>>     pci/0000:af:00.5
>>     pci/0000:af:00.6
>>     pci/0000:af:00.7
> 
> Could you go into more details on what stays on the "nested" instances
> and what moves to the "whole-dev"? Jiri recently pointed out to y'all
> cases where stuff that should be a port attribute was an instance
> attribute.

I suspect this is a case of "we have separate devlink instances per
function, so we just put it in the devlink".
