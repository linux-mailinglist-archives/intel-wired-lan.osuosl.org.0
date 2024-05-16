Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E8B8C7B1E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 19:29:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C096B402C6;
	Thu, 16 May 2024 17:29:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1mx63kRMEYJX; Thu, 16 May 2024 17:29:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4408141D77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715880591;
	bh=/gqqF96vgJv/n4B4RwS9EMB5bisecVV0EU9Dt2v5sbY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ElHm8LDtProjJp0qu4QSBC0a7/fk/76Ohk1pTuVQV5qIewcpZhiObIEEmPDlodcYR
	 Ls1Y6o7BD86lmyXdWmcMpV1X2srC+9JFmDlCRSh5KPl/Cb53VebtjJ/ytHBhL5gAbq
	 JhgOtHm7WecAuh8SHqZeyHgXtfwl7X2CaVrsFUM1RcgvfzEZBVmFT8DGtF9i8k4pa9
	 Ss6cNMItBQO6Tet527e10g74IuwtJwgy6HHga9s9sDBCGYwiMHuwMUUAWJm6uCNHA1
	 HOYopSr3bviGdxE2Q8UGROxA1UGgS/BDadAyfL3u1EfDvNKbPmW0BWzShkbfJuROCH
	 R1FF6XVtlSBaw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4408141D77;
	Thu, 16 May 2024 17:29:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9B04A1BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 17:29:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 869D160799
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 17:29:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fg-TB6qJndCG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 17:29:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ACD6360759
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACD6360759
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ACD6360759
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 17:29:47 +0000 (UTC)
X-CSE-ConnectionGUID: dNzQwwFkQjiVtzM4BRNbFQ==
X-CSE-MsgGUID: UKKex+GqTput6sNoHYq2Hw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="37392701"
X-IronPort-AV: E=Sophos;i="6.08,165,1712646000"; d="scan'208";a="37392701"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 10:29:47 -0700
X-CSE-ConnectionGUID: KbmsaTPgRBqxHts5SnygNQ==
X-CSE-MsgGUID: q2YH9O5GSISf4OAC/+0Mjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,165,1712646000"; d="scan'208";a="36280638"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 May 2024 10:29:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 16 May 2024 10:29:46 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 16 May 2024 10:29:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 16 May 2024 10:29:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 16 May 2024 10:29:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B0OPPPsVS0OWQbKBawXlD55Cpo6hj4AwUYfdEE+cQlrO8vL7ggTpPQj5LXFKKnxocUq/SGcVvv5VxhHJe2l1/DRyxtAg+hiRBN1Y27KkP19cqRwDMtSDpXSNv2k0G7bfIbCnUvRPM3MlDYgiDOb1Ecg5aM9QH1nOjQolUL+e+p+1j1h8riKfUudOMOtpCC8TCMWpBJRVA5WEzbxff6N/0dz+iWJnZ/EImA7t+C0QPZq8Fn9BSpc96tCD5UObHfTn1KBp3GvWKTw0AjU7L1BVIOBNl7Of9JxXzsl8PZ21EhUtgxHJ1Q890SyPILYN1sXE/4SQIT65a/bV4+wVnwGj1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/gqqF96vgJv/n4B4RwS9EMB5bisecVV0EU9Dt2v5sbY=;
 b=mvNjnvFjlxuYp2wjgx0l7dwyaIZpYe7jIFwcZSVQ2DF3YV7yh+F/rtHl08zIQSnChmk9GKTZH7Albmuolju8WN88pDDTHnNNoOaJzIpoWwMERUthRZazvcXsSo2JLnMUFtEuO5+tUd20Vbkx7Kd9BXcla/FLYJi/fn4RcbM/+hNqzxnkr4M6vVzwfbpc8C54Ki+YMIXF2zY//67LFDHt8AdFazCeLtTpLlabrv6g3pziennGKFlS9YS8+16xJAtgR5HkVTX0FgNpaFCMwGA1GHxf+1DU5mjl160GwlN13Z4o3Z9QnH8b5I3n91sTOswgOulttQQNXKWSjbtF+6KzQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CYXPR11MB8689.namprd11.prod.outlook.com (2603:10b6:930:d8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.28; Thu, 16 May
 2024 17:29:43 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7587.028; Thu, 16 May 2024
 17:29:43 +0000
Message-ID: <83b83fb5-bd4a-4830-902e-8ac255d77021@intel.com>
Date: Thu, 16 May 2024 10:29:40 -0700
User-Agent: Mozilla Thunderbird
To: Hui Wang <hui.wang@canonical.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <kuba@kernel.org>, <anthony.l.nguyen@intel.com>,
 <vitaly.lifshits@intel.com>, <dima.ruinskiy@intel.com>,
 <davem@davemloft.net>, <pabeni@redhat.com>, <edumazet@google.com>,
 <sasha.neftin@intel.com>, <naamax.meir@linux.intel.com>
References: <20240508120604.233166-1-hui.wang@canonical.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240508120604.233166-1-hui.wang@canonical.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0166.namprd03.prod.outlook.com
 (2603:10b6:303:8d::21) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CYXPR11MB8689:EE_
X-MS-Office365-Filtering-Correlation-Id: 721f6b15-3bf1-455a-0bfb-08dc75cdc63b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007|921011;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eXlUM213WVV4c1NFdWNKTFlJbzNta3Fyb3ZpOXJmdkozVWI5UThNQk1NUU9q?=
 =?utf-8?B?Y1UwMDBTVmdjZ0cyS2dkZzk4MFNacHRlTEtHSkJXNzQxWit4MFlLQ2U2R0s3?=
 =?utf-8?B?V0Y5eWRZU0ErS2JSc1R4V05tOWNEWENMZWNSb0tsbkE5Z095K21RRTN4Z29q?=
 =?utf-8?B?OVhnaFozK250Vzl0eGYraEJQZ0xtQ0s4Sm1JNmI1OGVJY0c4amRBdWc2T1Jr?=
 =?utf-8?B?b0dXM2ZEM1lWckF1M0dIZFEyNkl4NlZQR3AyaEEwWGd3Q2NUWHB4YXFkSVF4?=
 =?utf-8?B?SVE2ZW1ZaCswalpwMGsyM1ZNaGpJNDM5cVBacVFtMjdHYXhIOU5yL0VwTDNZ?=
 =?utf-8?B?OUhCUW51Mm9laU1oY0FWNHRmSzdsZGJjZ3JrQSt5R0dIc1VpT1prc2x6bTVl?=
 =?utf-8?B?d0FSK1gybHMyZk5ta1FSWWkySVFaaFE5VU0rZnhwNjdCeXMvMnN0WFJJa28y?=
 =?utf-8?B?b1MxUFVxWlB0Y2tuWUl5OStIMWZKaDNNVTFlaVJ6WXdmSVp0MU0wWEtMaDgw?=
 =?utf-8?B?U0dVUXM4ajhLdzBPVElENEI1TUQ1YUM5Y25VSzBPNENja2NXQ2VmTzdRR09s?=
 =?utf-8?B?RVo5aUYvTjh5N2M5eFkvTjhENkp0dXhhekkyTWtTOVVOcUt4K012VXYrRTlO?=
 =?utf-8?B?TjcyNml6dkg1V0hIemNlNjF3aCtNYjRMdi9BTTZxOUx2bjFXdWF3QTdvOW45?=
 =?utf-8?B?MUdyL0UzSXQ3UUgvSFF4U3RjcitNSjhJUmhVRlpQQzlzYjNQcXp0eDcyd2hM?=
 =?utf-8?B?Qm1yNlZGWTRWaEFWcnVQWFdZQ2dkTW81VHEvSU1nSGRGMUdjRWZkeVpCb3Qv?=
 =?utf-8?B?Z1FvSERLR1VYbWVkS0cwU0NrbVBqdGpwclY0N2VLM2ZCY2V1VUN5UTJwZXZU?=
 =?utf-8?B?STdKZitsZlUxZ0JCMStLRk1iQmlhcG1kcHhKNkJHajVrQ2hXd3N6RHlXeTBE?=
 =?utf-8?B?Y3UyazR3ZDR6OURvYTJzMTNYd1Y5bGVKMGhVZ3N0WFZ0aVRENW9YYzVoS2E5?=
 =?utf-8?B?b2UybzQ2K1FHU05xQmRTMTNXdlpFdjh5bFcxTVUvMm5rNDIyNk9XbVV3bGhh?=
 =?utf-8?B?NWhMMldNM0ZrcHZYRlZhdHBNMG90VmZnOHVyZ3lMOHAyR3hIQkYwLzEyck1p?=
 =?utf-8?B?ZE9CUGVLblFOYU9NQ3lWd2ZXU3FzZEdrcnArbWZPNmlyWVJNWWVpUzZQMUhm?=
 =?utf-8?B?VTFRWVpvWjB1QzJHSCtuOXlxYjJEUlMzNGp2U1UrWkd1K29Kd2tUcmJscHM3?=
 =?utf-8?B?TkRha0hNNDU0SEpFYnF4eVMvRi9vaXE0cEJ1TS9ldlF2dmlUVjFrSGFEN2NV?=
 =?utf-8?B?czhrL0VCV21rM0pTR0t4S3QyengwTkJMMVhqU293dkpSWjV3NWdRVTM0a1V2?=
 =?utf-8?B?dlZjQW5XN2p2SHRCdkZFd3Qrc2o5WG9UcExacU8wZGlNN1YydEdrQkVoWnR0?=
 =?utf-8?B?bEdlY01BUVJPcFlRbklrcmd1bkJNRlArLzVVcjdqUzhyUTRHdU5WajBNNzQ3?=
 =?utf-8?B?d2tsQlorSTJ2NDdsNytHVGVrS0FVUFdnbDFDM0cvYlFMK3ljQUdzQk1COXUv?=
 =?utf-8?B?bUxhYnozYXVPM3diQ2cyT2tPOVQveXR1L0ViVEx3Q3d5M1IxYlMrYTNURGdj?=
 =?utf-8?B?aHdEN3RIdXZIRnl0TWVibTEyWHNjVmE1T2x6NFd2bkZkeWE2V29XdU40dGEr?=
 =?utf-8?B?cEdLaWhaWGI1Z2hmT3QyYzVUTzJUd01wS2hjNFd4Vm1rVVpiMXhoNzhBU2dk?=
 =?utf-8?Q?HOGlkreuQhhMF4SkT2LTzz6g8pKwqqw7Z8892Jd?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(921011); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UU44NjR6clhIS1BMVWRDZTkvOS8vbnM2S3JKTVNmZU5idzlJOEdZQmJTMEEv?=
 =?utf-8?B?Rnp6cGRmOWtsMXRsUmhBR2dCbUk3bHRVWG1aZ3kxU0hqVllsREtxd3ptUlkv?=
 =?utf-8?B?bnUzOTRRbVhnN1JhNGpOc3dsOW14MGZWYUw3YXNmUzZUand2NVhXazNqN2Q0?=
 =?utf-8?B?NnByQ0dQcHRLWktUWHkxbFk3eTlDU2RKY3BFM2dNdDVYbTQ0UTYyZnNNZTdG?=
 =?utf-8?B?eWNrNUVpcU1vWTAyYXQ0d0VBb2x4ZmJMUGMwZHpiWklNUHdsamFYdFBiQXlC?=
 =?utf-8?B?M2pvUU5HT09wS0ZmWGpiY1F6V2RqbVFHNTNYNUlqclVxWndZeW9MREpyZEgv?=
 =?utf-8?B?ZjZqUXBML3Npb001bnRSd2RFd2RZbFV0VGRjSUlsU29IazdHNlVta1BvVGc0?=
 =?utf-8?B?VTZObm5zMWppZ3lTa0JVMmdyd0VMMEVjMGVYYzgzRzkzMVE4TXZTWEM1ZmNP?=
 =?utf-8?B?NW53RHpxTnJ6bzVsWTVsWDFYSHpWbzNMbUpNRm5FLzZrV0RzM3RkZENQeHFS?=
 =?utf-8?B?d0FIOWliOW5OYTJwMzB5SE0ra2RDb3BHR1pnMVlFaDVGV2VJWHljUnR6TzBD?=
 =?utf-8?B?RkpiQXBrMmwxbXBheElZSXpHVGpPZWJVM1Z4dzkveTA0dGJDN0pBeVRxNm5W?=
 =?utf-8?B?UjZkTjE1Vkdsc21jdkEzblcrbW93OFBKR3ovejFZeVBhSnFYb2RPNitSNFR4?=
 =?utf-8?B?SFNnZ0M3bkpNNUVOVGJGckdWRjFnTXFiZnpscUQyNitDZnNRTzYwSVdESVli?=
 =?utf-8?B?bkFVR0g0ZUUrK1lhWWpod1JQN3dUWnF6Z29FUmJvQUw2M09SeHl2bFpMb1M0?=
 =?utf-8?B?WHBXQ2N6eWZRa1BxL0xueTJsTzVSVGhFdWFUNUZ2WkJ6T2E2Y3M2VzVHNUV2?=
 =?utf-8?B?aHhjcFYzQWFDVUUzTldBNll6YkVhQVp1bEU0UFV3bTRTSWFjd1hiMk95cUt1?=
 =?utf-8?B?N2tkOHhybDh0VDM0aGJqcVZOQlovYWFxV0FnWUtMVEw2elIxcFA1WS9zaFNU?=
 =?utf-8?B?QUlPckYzNEJMeVFPRm1PeXFBY0xQeC83NkhSTnVqRks5NHNjQmNLTnUyaGdN?=
 =?utf-8?B?WUJVUHBySjg3VFdmdEtKbm5OYURaTTY0ekt0aGRVWDljYkdUTEpjTStmNmJV?=
 =?utf-8?B?QTlCMjdxM29udUdjcnh4WVRYQTQ2Wkdob0ZGNklsVG12OEc3YkVlTXc2QWkx?=
 =?utf-8?B?YTQrL3BLYlN3MmFjb3Q5VDI4YnBCWGlXRDVNNTVHOUxwRnNiZms3RWpyREdz?=
 =?utf-8?B?WnpQMG1DYnZIYXVFNVhRcnRUOEUzUzZidFpCcTcrakp1QlhKczQ5MnFmbHJZ?=
 =?utf-8?B?dnJlV2pZL0RJQjM0aTNZdWYxVDlYSmNQYkk1TW1LRmduajl6UHlLNWJSR0tN?=
 =?utf-8?B?bkx1dnE2L3phdTBtZ2YrY0pad2dUdkRhbE83Rit6elFLWnJhOFQ2TlhZMG5P?=
 =?utf-8?B?d09pdFppVUxjMFRiOGJ5eXBDbFJSWVU4akpGUFRSMEVBNlRKdXBNZkNBZmRS?=
 =?utf-8?B?d01ZRWlsc2orSzcxalNKTy9aSGFVdXlzaDhrQ2l6WTh6M244YkE4QnIyQTFw?=
 =?utf-8?B?d0NndnN1Tmo1bmJ2OE5hRjlVVmtLODdFTDZ3WXBKWW1BbG1samFuV3ZpVDda?=
 =?utf-8?B?OE9jbVJ0eklrV1hNeDJGMmpSNWhqa2RaVWFtd28wVE04REJSQStZd1FXNnl5?=
 =?utf-8?B?MjFFWVFWeVVYZjdyMlFLa1gyZ3RBbE1oM3NNWWd6OWdkVVBOY0VNTUx0ajlR?=
 =?utf-8?B?WTBVVE9seFlpekJkWm53Qk43RmptVTNidFdiVTlPY2lqVXlYUHh5Snh3SWlR?=
 =?utf-8?B?UU85SzVYK0MrWERwRExXN1RhUE1tZzRUL0JyZkQyWnZLZGJBODRwMzkya1lU?=
 =?utf-8?B?aWdKR0cwZytXWXVhRlBuSGlFb1I0RmxlZWdxZjJCc0JGRnZsYkdQbHRrcGVW?=
 =?utf-8?B?RThVMnkxazI0ajEvZC9ITnJMaVlvU1R0cTZ1encrTW5NS2V2ZmVLNnh6em9y?=
 =?utf-8?B?dU9mMzdkZ3o5a28wd3hMaEs2MjhCM255aWNpekV4cGRSNjVQa1pWZndLTmgy?=
 =?utf-8?B?ZlYybWVWZXZ0eXFxTmlsQmdXRXRiWjdjWGVTYlFicUFsVzRjTlRlM3RCdk9B?=
 =?utf-8?B?dFZ1Z2F0dGZWQU1IN3BCMlFHM1ZRQXZ1NktXbkhkcVc2VFRwUEVaQ2VNczZW?=
 =?utf-8?B?cXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 721f6b15-3bf1-455a-0bfb-08dc75cdc63b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2024 17:29:43.5161 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IGCyTGHsCJWFtaos5gtrDGtG/Ec9Q8AoNyiLmmD8mVC+oJLtwrY4oUCyhzVw3eO24VQCDjwtrbQoQoz2LqmOstU1YP+49xCgWixyb5Kc2fU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8689
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715880588; x=1747416588;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5K6jDi14lDPgLfqwhf75/dysjMv+4uD0IdXHHKSw7ak=;
 b=UPJEc0rn4cZyVdJrZhW2aSc0606iv/pnYx0/J9uz/8cSrEl1yMpdBFYV
 aYXJroFYJDnlrIPDvDrzMznAMzv2BLZmfd+y6ZaTfH9rcPAfu2Hpk3n5M
 HR2mQHF+g8PEtSvEmJo0tSchgf1x4pyF2L8UjasuQdTqUgaM44dmpd1na
 dMlJ1DjaCiGfPB3VMKDJp38w2MBXtLj+052t0iUImAJ1Ke4mwFrWuP6LM
 B4ypmE/i88JlO7mmU5W4nVQ8xVnQhCokHXMrXPf40SaxpOx1tkudg8rB6
 Sy8gtC4TH86FAKYjbrnmIG+ba1CBGY/MLpeXOR5BK2Zwt9Yn9DJXJ1Kga
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UPJEc0rn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: move force SMBUS near the
 end of enable_ulp function
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



On 5/8/2024 5:06 AM, Hui Wang wrote:
> The commit 861e8086029e ("e1000e: move force SMBUS from enable ulp
> function to avoid PHY loss issue") introduces a regression on
> CH_MTP_I219_LM18 (PCIID: 0x8086550A). Without the referred commit, the
> ethernet works well after suspend and resume, but after applying the
> commit, the ethernet couldn't work anymore after the resume and the
> dmesg shows that the NIC Link changes to 10Mbps (1000Mbps originally):
> [   43.305084] e1000e 0000:00:1f.6 enp0s31f6: NIC Link is Up 10 Mbps Full Duplex, Flow Control: Rx/Tx
> 
> Without the commit, the force SMBUS code will not be executed if
> "return 0" or "goto out" is executed in the enable_ulp(), and in my
> case, the "goto out" is executed since FWSM_FW_VALID is set. But after
> applying the commit, the force SMBUS code will be ran unconditionally.
> 
> Here move the force SMBUS code back to enable_ulp() and put it
> immediate ahead of hw->phy.ops.release(hw), this could allow the
> longest settling time as possible for interface in this function and
> doesn't change the original code logic.
> 
> Fixes: 861e8086029e ("e1000e: move force SMBUS from enable ulp function to avoid PHY loss issue")
> Signed-off-by: Hui Wang <hui.wang@canonical.com>
> Acked-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Tested-by: Naama Meir <naamax.meir@linux.intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---

You didn't add a tag for which tree to target, typically for patches
picked up through Intel Wired LAN, this would be "iwl-net" or
"iwl-next". I presume since this is a fix that this should go to iwl-net
and will apply it as appropriate.

Thanks,
Jake

> In the v2:
>  Change "this commit" to "the referred commit" in the commit header
>  Fix a potential infinite loop if ret_val is not zero
>  
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 22 +++++++++++++++++++++
>  drivers/net/ethernet/intel/e1000e/netdev.c  | 18 -----------------
>  2 files changed, 22 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index f9e94be36e97..2e98a2a0bead 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -1225,6 +1225,28 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
>  	}
>  
>  release:
> +	/* Switching PHY interface always returns MDI error
> +	 * so disable retry mechanism to avoid wasting time
> +	 */
> +	e1000e_disable_phy_retry(hw);
> +
> +	/* Force SMBus mode in PHY */
> +	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
> +	if (ret_val) {
> +		e1000e_enable_phy_retry(hw);
> +		hw->phy.ops.release(hw);
> +		goto out;
> +	}
> +	phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
> +	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
> +
> +	e1000e_enable_phy_retry(hw);
> +
> +	/* Force SMBus mode in MAC */
> +	mac_reg = er32(CTRL_EXT);
> +	mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
> +	ew32(CTRL_EXT, mac_reg);
> +
>  	hw->phy.ops.release(hw);
>  out:
>  	if (ret_val)
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 3692fce20195..cc8c531ec3df 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6623,7 +6623,6 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
>  	struct e1000_hw *hw = &adapter->hw;
>  	u32 ctrl, ctrl_ext, rctl, status, wufc;
>  	int retval = 0;
> -	u16 smb_ctrl;
>  
>  	/* Runtime suspend should only enable wakeup for link changes */
>  	if (runtime)
> @@ -6697,23 +6696,6 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
>  			if (retval)
>  				return retval;
>  		}
> -
> -		/* Force SMBUS to allow WOL */
> -		/* Switching PHY interface always returns MDI error
> -		 * so disable retry mechanism to avoid wasting time
> -		 */
> -		e1000e_disable_phy_retry(hw);
> -
> -		e1e_rphy(hw, CV_SMB_CTRL, &smb_ctrl);
> -		smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
> -		e1e_wphy(hw, CV_SMB_CTRL, smb_ctrl);
> -
> -		e1000e_enable_phy_retry(hw);
> -
> -		/* Force SMBus mode in MAC */
> -		ctrl_ext = er32(CTRL_EXT);
> -		ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
> -		ew32(CTRL_EXT, ctrl_ext);
>  	}
>  
>  	/* Ensure that the appropriate bits are set in LPI_CTRL
