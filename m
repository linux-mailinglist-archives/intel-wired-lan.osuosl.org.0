Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3F08D298D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 02:43:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F97181F5D;
	Wed, 29 May 2024 00:43:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id izKyv15JuAyT; Wed, 29 May 2024 00:43:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F4ED81F43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716943424;
	bh=M7ohMQVzcD8uPwkGr+G9rfn9jjScZHlOdabW6DpdYJI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=10wE8/IOwS0XVEXM0wqtSeoqvN0/uMgW6ALA/mCmYLCBWPc313jrzcGQn1PwLfpEE
	 GTlDyBzc7ZUlAtMH4Saet9VC8Ua4wX8kbiHB1IbIGvId3F18wew7kOt0/LwXH6cuaP
	 A3cbxoTUmdp+MC1R5MnkQnVsXUxRAZ4zC/JfIf4dNj9OtUb3g5cENe7RBrWtv9qWio
	 z7b7HU9zfnEeempT1yd84S+9bCGmpJVfhKdc+nng+rgDKT5xkZ8B3ZOoz14H5WdJa8
	 prFzS+u4FKxI6tMnoe10xWUnqouc/usiMeO8lDs8me1TKcvNfR1BAbzqDuKdIHlZtV
	 jO92yloNHNaEw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F4ED81F43;
	Wed, 29 May 2024 00:43:44 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA59C1D2EF8
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:43:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C553140215
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:43:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z2SxzM0AHJAJ for <intel-wired-lan@osuosl.org>;
 Wed, 29 May 2024 00:43:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F09AF401F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F09AF401F8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F09AF401F8
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:43:38 +0000 (UTC)
X-CSE-ConnectionGUID: 7mbUQQXNRDm80cEGhS+4ag==
X-CSE-MsgGUID: pvjjF3UcRESbQObKVV2sWw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="30847719"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="30847719"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 17:43:38 -0700
X-CSE-ConnectionGUID: +51MRhk8TtyVImOCa4glBw==
X-CSE-MsgGUID: O8RoCV+ORu+Jru5p/gpePg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="72693734"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 17:43:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 17:43:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 17:43:37 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 17:43:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RFvQi4Q2tV6hk/eHJ84s82b4B6ggC+09GtX29Or1RER7+uSixSlrHky3wumcDSeyHUUUe2IIfMDQtOokN88cbKJmFXOQuAmSDqf6JCO/nOTAXuEV6mDBqU9MI74BaZXdTA+zmZv0SDs1g+BDenN5CWLNsnDnkmxjQ/JcYLTfVwTXesGjmjV1BiQOLXFzbsnTJe1Sjs4WTeZ7NUMCO1wfnz3bMqwzqCQf7H8DsGmvL9v5Q/o44kQwg/zIr4tHO7tnIHt9GDuBIJS4nTOXt5V3pQFZtxj2bzvTGCWvceVN7LqCrQQ+KIk8nCIfffjc703M8hKQBFjPUzJfeWBnXvFL0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M7ohMQVzcD8uPwkGr+G9rfn9jjScZHlOdabW6DpdYJI=;
 b=XOBzow+FQ/rSVbaFwEeSIZCywBowCPCeYDqJVF8RwwHPHl/4UdjtyTghCuAs15jbLVW+em+otlGPdcApcBeCfPp4b8i7dxgcvv7PEH4Cd079KkxQtTcchILjtF/9AuSiOm9hX4gkdOI/x81SLXAGyqB9H0qWf2SRkhe8oasBLLBq7g7H5BxVmVxir0HCKCzz32yVmrWwZ9jUdIey/GrNzPAJ13YaRDV5/9+dApy1eUnZRs/aPx0rZmzXwACZAbLDxyQ8w6zUQKMT1iWLxPgthGdjmnojPQT/CRkLEaSdxIN0qb7CSJDcNd28Uzc8N9o+Mh61zjBGXmUf9ZJteSvTEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA0PR11MB4575.namprd11.prod.outlook.com (2603:10b6:806:9b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Wed, 29 May
 2024 00:43:35 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 00:43:35 +0000
Message-ID: <b25cab15-f73c-4df8-bfca-434a8f717a31@intel.com>
Date: Tue, 28 May 2024 17:43:34 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-6-aleksander.lobakin@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240528134846.148890-6-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR05CA0014.namprd05.prod.outlook.com
 (2603:10b6:303:2b::19) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA0PR11MB4575:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e75c7d3-c452-4af4-a5ce-08dc7f785f90
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QVBJN2FZbCswa0pWVkx1VmRRcjVwdTMyWEhZNU85WitxLzQ1ZU11Qk1FT3ps?=
 =?utf-8?B?eE01OGR3YUlzZDlmWXFINHRELzN2VDgxd2VHRjh4WEZUb2YzTkpRemxBVlg3?=
 =?utf-8?B?SkJzSTBuenJENzBUdzB1MmJUZUxSRXhyZFRBRHk0L3dzWlR6ZDRxSW5WeXM5?=
 =?utf-8?B?THZvQk5FS1ZkL1ZRM0thdlVXT1ZmYllzcFVpNDdTMUtQRUJodzNYd1N4aW5H?=
 =?utf-8?B?cTJyU1AwQ1dQSUhiRUJGVWlCUjJ6M3RaaThmS2JvdmNxdjc3N3IvSmgySEpL?=
 =?utf-8?B?Y3BuRUdUK2Q0VEU2dWdRUlpBSGlSalM2bFd0LzVtejRYdTVHOXQ0Y0ttUjJz?=
 =?utf-8?B?MWk4MisvZUdHRFNtb0cxeTI4YzlaRnIvUkdYRklPaSthZW1HR2Z6UStKd2ty?=
 =?utf-8?B?MyszN1BJMmp5Y1ZnSnRWKzMxTlg4cWJ0bGJyZXZNQ2pQOEVDRERFUmZPUlVT?=
 =?utf-8?B?Qkk1dk1IV1VDaFY4Q1hCTWNBcUJYN2lrNHAzRlVweTFRbDU5TjFsRkpTbm0x?=
 =?utf-8?B?SXpzWW0zOC85MTk5aU9peDVCdEpUZkRSTloxazRIVHY1YlJNbzh5eW9rQ1ln?=
 =?utf-8?B?ZWFzSUt6SEd1eXJjK0kxSU9Nb0pmdCtDdHJ2OFc5SkN4NFN3ckpDZHRrYXBO?=
 =?utf-8?B?NDdEZzM2cG9seUhBSmtGMlF1UXZBVHBneGR2d1BoUmozUkc5cVNoK1FyS0Zp?=
 =?utf-8?B?UFdTeDk3QkdyYUJ2alRhcGxhamNzSFE0L3luaWlmN0IyT3J0b0htaHBVaGw3?=
 =?utf-8?B?Y0xneFhobTFoQ2svNkdKYTFWTGVWTUFpbzRuVGxOT016bjdDb2xnSHBWVTVu?=
 =?utf-8?B?cmVXVVJKMmE5eUwwUDAyeHNxV29SZVJJZW9VTnhpeEtkM2pQbkhRRERrU1hM?=
 =?utf-8?B?QXo1ODgzMUpSOVd6K3dmb2FIODl0UzZHYW02Q3BteC94citCNDloNldzWE9t?=
 =?utf-8?B?eCtieDMxUTE5bUNReXFaeDdTamJrUVRySVorWTdUNHU4T21mcWMzcWo3VHNt?=
 =?utf-8?B?V1Z4bzlFeGJmc1AvQlcvc1JDNjJabHZiZWtsTWtsa2tOcE42NGpla21uZUZh?=
 =?utf-8?B?V3p2Z0V2M2FzVkxhd211ZTNpNzJIRXh5U21IdXhkYkRwVCtIcTE2Vjd3cG85?=
 =?utf-8?B?ZVhqeW1nZk9OMlJUWS9FbkxlOGxNUXA0WU9aQ2wrbFVHclljQUJjVWVBRVpl?=
 =?utf-8?B?SzVSQm8yalF2ZjN0VkZUdGF6S3FYUDUxL0JyRzRmdmxmWWhOdUNZRzFlUmtW?=
 =?utf-8?B?Tm5qRWFlZ05MR3lOejhtYjNwdXpIQmJkOWVKbVk5aDE5WmZqR21JYkdIeVI5?=
 =?utf-8?B?TUdZaElTbE5rKzNPREVBUTc0SkxLTnU0blZnZk1CKzJ5MnVZcjBUTzF0WG16?=
 =?utf-8?B?TkNtMERFSGhjR1FZc0Y5T2ZvZ0libUFsekFOSklsd29qUSt4MTBVUlZIMVpG?=
 =?utf-8?B?QzQyS25qL1I0MVhzMGpadjFVWEZvbFpiRXZ2MEovRGdveG8vczlIUkJLNVJC?=
 =?utf-8?B?RHZmeUtPQksvWWJzM0t2Z0RVb1ZKbGgycHNsRXgwZlVBL3MvdEVhblMvMHhr?=
 =?utf-8?B?WjV4MmxKVTFPZTB2TmxBRmJSZCtHZDBrcWRFYS81WHhlL1dCeGRoNWgwd2pN?=
 =?utf-8?B?NHpyMU5XdjBFQU9vOWh6NW92b3NEbzdOZDB0ZWp3UjJlMmtSTnM4S2Z2S3Yr?=
 =?utf-8?B?NnN4RjgrWnMzWlNvQmFFMzRqZGo3K0ZzVU1vbTFFV1RFRVgxcGhrOURRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEw3RUVvY1NmMlhPUU92eTEwS1RMVnNuZG9VOGxUOE9uY1VFc2tEZnRvc3Rh?=
 =?utf-8?B?WnFnVTBoWFZ0OGZqRVNEYzVhckdDU3Q0UmFHN2l6cnhYd1QydE41eUxTZ3U3?=
 =?utf-8?B?QklPWFFhWlpGUUFOVHRDcHg4SG9TV05rUkd1a3RwcG45K3g5UzM1K0Ziajdz?=
 =?utf-8?B?VUR6V1ZHRk44MlZucnlmbTFvVjMzSEpkL01PV0FLeGRLL1B1U0k5WStUbWlK?=
 =?utf-8?B?TE85YUU1TDZSbHJzSE9NVnBmVEZYOERESFVSZUZoQzNWMEF0ZHZFZFJhSjhP?=
 =?utf-8?B?WXEvc0pibGswUUpRMjBhc0JkYjdydHF2SWRqTDlUVFl1UGxoSXpBSFd2YThr?=
 =?utf-8?B?anhlTUViY0w1aStiNWV2VTByL1Qrc0g1dEg4SzlCSkQ3dGhlUThqZWQ1anB3?=
 =?utf-8?B?TnBlOHhBVXhQbWNua0VmR2hwdFhyS2ZyNmJ3eDIxakZtc0dVb0dyUGJxYlho?=
 =?utf-8?B?M24zK0svZjVxMGRJTVp3djV3V29GVFo1OFBFVUN2aVZFdjFKNi9qLzR2bHFU?=
 =?utf-8?B?VGFXTjNjWDBoa2ZsTElhS3FPTEI4OFNwOU93UjhOWm9BVzVtNEgzTU5Vc1dk?=
 =?utf-8?B?bHhGeVNtbmxFTzhOcWh4dVQyeCtrSGNyQnR2dkdTRGVaZXp5M3JyZndldGdp?=
 =?utf-8?B?QzlLaWdteUtsNU9jRmpyUVlVV2UvbExFeUZKRCtHOUZhNS9UOHc4OVgrdHFR?=
 =?utf-8?B?cGZOYldwRzVJNGE2QmNWeFNNbkdhOTJLOERkZExCREMxZVptMG45ODJsTEk3?=
 =?utf-8?B?ZkxxVzBDZG5mcStyOXc0aTk1TnNYNndwa0t0aG03S3dod3VNbXgyb1o2Y1dv?=
 =?utf-8?B?WndLbGRJVkFJSDVCQ1p4WDh1OFFQbi9XRVpHemRZbHNIWk5lRXJxZExCZ0Qw?=
 =?utf-8?B?RWJpTHpsd1ViTEtmMUdDYmZJWUQ1NUZ0RjRRV1BITVJCdGtoaElwNkp4MkM1?=
 =?utf-8?B?NlAzUFFHWmVmcUNrU2N3b3NDZUE1UmdnNHBkSVJXbWhONXpqK0haTzlRbTlK?=
 =?utf-8?B?QnBYUGVKcDRTZVNhZThQSkl0eEZUZ0NoRWRMZCtTdVRzZnVrbUpzMDgrM21n?=
 =?utf-8?B?NnI0cG8vR0ExekNMVWZ5ZTBybWhxS1J0QWR3RDJlQVQ3RTdiK1pJNWJCSjdZ?=
 =?utf-8?B?bnZpZW9Pb2pXWlAraTcwL3BlUDh6bDEyWUxVNWNtQ0RhSjNrYzJmUDM3Q0ZQ?=
 =?utf-8?B?cEp4UEdmTDU0NFZHdm5neEFyQXlRZkU5ODVFZjJOdzE2dGcwRy9zUkV4am5R?=
 =?utf-8?B?S1lOaTRISE91eWJPMDk2aC9GUUhRQWtzZmF5QTFYQWpGTGNBaUZYd0xBZTJM?=
 =?utf-8?B?bDNEQmZ4YjZSSzVZN253K1BFVFhRQTVNczlqUWVVN3dJVy9GTldiZDI4UEdk?=
 =?utf-8?B?SFFFbEFJcDZOYnNCY0liT0c0ZkdnREhmcTQ2dWMxbU1EU0JUanNFR2l0QS9W?=
 =?utf-8?B?OGR5aGJxbmp6MS8wclNmNzdNQXRmZ0hFS3NweXlUOUpxU1FDbURxd3FDZzU2?=
 =?utf-8?B?YS9BZ3lMN2V0cVNlSzh3aWw5QXBIMldTSy9COXRtcFF4TW93MjZsSmpUTVpt?=
 =?utf-8?B?SkFBOXFPNVJRZStRVThDaEM0WTRhK0xoZEFMNUoyYnFlS3ErdERNbHFpbm5Z?=
 =?utf-8?B?SEZ1NG5WdDR5d0J5RVhvWUFhdnUzWmJZZU85R1FPR3dtWGY4RU5PMzR4YVhh?=
 =?utf-8?B?Z2xodHpkbVZKcDBqUHRINC9XbHpXbUpGNXlVUTZqU2QybnFKYUxMeGhYSEpI?=
 =?utf-8?B?RGhJWkxsY2hZRkh0a1dYVWFLZDYrZXBmOUhmNEVrYkFObE1ERzVveVliQ1dk?=
 =?utf-8?B?WWpvazk5OHk5cXdjTzh1dVlvMWFUMmd1MzRablAvN016aTdxL1FxakJ3TUty?=
 =?utf-8?B?M2tsbkZBbVdNL3VVTER6WDkxM0ZReTN5WVd3TkFuR2pQbTloV2hoN29LT3px?=
 =?utf-8?B?RS8zVVBqMzA1UGljb2prWG9GWm9uczdSM1ZhSTV0aXdnTTIyNzFaUHVkc2tm?=
 =?utf-8?B?Rms0bjhxWlhmS3FGbVdQS2ZtU2JSNUxCc1k1VEgvYkR4eE1NTmlQdUJpQlFT?=
 =?utf-8?B?TnNnOUFCaW1YZ2lyTktZSWMvMXhEWWlWNmZvRnhmbTZFckpROGdsQzRydXRC?=
 =?utf-8?B?KzU0Z2djT0pwdU9ReHpNRzZqVEtNemhXZmp5N1JVM2pNc1RQN1ZicGIxN3FR?=
 =?utf-8?B?NlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e75c7d3-c452-4af4-a5ce-08dc7f785f90
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 00:43:35.6915 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PoKd/h0+Vu/5GxSdluklOsUSyKfvAvDfNNaZtJmMrArJzCi4QPq0CLFsX8tG/gaHWutgYv5Q8ZOcL1KzcMUdu1oWW7mND9Abe1pigouuBqI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4575
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716943419; x=1748479419;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TnnWspj+i7amkpXv5kDxgaGBvgQOtjUnUhqF+NK2nTA=;
 b=iIQ+Z7HIukiFIV9g/K47GsB8NrfcSIGAkOCawqfCEEzkWZGNw8+Q6JPD
 4yoiBG75w7Blx+vBl2LGxQteyEm0sZMLIcmBiCok6dw//BNX6M/xcASQ8
 7za4H09p4yLwhe9/+CYS0vDePAK4nsSJ+p/NtHevBvMe6jS458Pe2d4XT
 8LfrqJ7D74VWm6PIo3qvt/acMIZZoZeK8sULfFkqrh2eGfiDr9POq5s7R
 UJ/p0idQOVZWFZIFY7TGRFpKWnW/pmGnGYlBtV0hOdlsTWvseTQPLxwBs
 uVb/Cqla6vNRUcqdQzKeLs0RfcsOusKR8lheRZQy6my3/fke7Er5cgVt4
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iIQ+Z7HI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 05/12] idpf: strictly assert
 cachelines of queue and queue vector structures
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



On 5/28/2024 6:48 AM, Alexander Lobakin wrote:
> Now that the queue and queue vector structures are separated and laid
> out optimally, group the fields as read-mostly, read-write, and cold
> cachelines and add size assertions to make sure new features won't push
> something out of its place and provoke perf regression.



> Despite looking innocent, this gives up to 2% of perf bump on Rx.
> 

Could you explain this a bit more for my education? This patch does
clearly change the layout from what it was before this patch, but the
commit message here claims it was already laid out optimally? I guess
that wasn't 100% true? Or do these group field macros also provide
further hints to the compiler about read_mostly or cold, etc?

> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---

Having the compiler assert some of this so that we can more easily spot
regressions in the layout is a big benefit.

Thanks!

Although I'm not an expert on cache-line layout, I didn't see anything
wrong here:

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  drivers/net/ethernet/intel/idpf/idpf_txrx.h | 443 +++++++++++---------
>  1 file changed, 250 insertions(+), 193 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index 9e4ba0aaf3ab..731e2a73def5 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -6,6 +6,7 @@
>  
>  #include <linux/dim.h>
>  
> +#include <net/libeth/cache.h>
>  #include <net/page_pool/helpers.h>
>  #include <net/tcp.h>
>  #include <net/netdev_queues.h>
> @@ -504,59 +505,70 @@ struct idpf_intr_reg {
>  
>  /**
>   * struct idpf_q_vector
> + * @read_mostly: CL group with rarely written hot fields

I wonder if there is a good way to format the doc here since we almost
want read_mostly to be some sort of header making it clear which fields
belong to it? I don't know how we'd achieve that with current kdoc though.
