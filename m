Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 475EF8FF312
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 18:56:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B29E184675;
	Thu,  6 Jun 2024 16:56:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oh9FSuihKw-l; Thu,  6 Jun 2024 16:56:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D6768208E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717692978;
	bh=NZ/daOLr6ATh3VRRK36CaScFCXRGx+3/J9AFSAhRvY4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IsV18hbMv6lsp6icALntmqcZKHXkIMPCckRlASGFW1jkZyPZIVPJxAse668If5fPg
	 KIfoYV1uQCaLdKxJ+sOtrMyyu4IfdAqKf7QA7FPbGPn18BJnqaGZxakXhiIaq0Rtwc
	 EMYuzh6RDM9dYz0MczVCqinqHRQpbqfWgUdCyw3IG9t+79jffPkYwV1gVTlrqfN8fS
	 fKaPQVX3PMYIiL2jbZrTo9Z1+EMW6N+aImDCcLO70Q3js1AJQHXwKiD3BYbJPcYlU7
	 qVU+QlAktYo6AmFVmEZaz6BuJQqY7WETfxIDFt26aQ6V5DvdO4+yYi/R4Y7ZoByMOa
	 8bDrm0M3XJqHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D6768208E;
	Thu,  6 Jun 2024 16:56:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 041A31BF580
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 16:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EFA9D4238C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 16:56:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fUxsiZr2fzmI for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 16:56:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 98B7D41A6B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98B7D41A6B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 98B7D41A6B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 16:56:14 +0000 (UTC)
X-CSE-ConnectionGUID: bOD4iQAKQA6hUFn7H7pLuw==
X-CSE-MsgGUID: DXwn4pXkTZq8Nap/zUk4RA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="31924783"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="31924783"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:56:13 -0700
X-CSE-ConnectionGUID: qHPwDb05QEmzfKPD2TCipg==
X-CSE-MsgGUID: S3rrMkhzSJa7M0SDyyBemw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42494433"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:56:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:56:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:56:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:56:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MtsRTck85S3jwTu1Dbw9ZsMRumDrBGX2HGJUBzv8TTV1Vi3wFi/9kDPsHrKKmSne8FnhxycArX/ObdZGwhxChrbXKVWsMDiUeYXEQM6sVGFnRF9t9gHOQ4T9RbCZVoq0b7u7KdnDBl6wHOP9X/QJGfWKiXcXn7eRZXHG+i9DurvYsEAf+2L2CAhruUIFHeMZRVIbzGhZrQYaZKQ2zYoWyD4t6FZUhidmcEksAdhqlvPJRhpF1H65ly6l0vhcoFDlohHk9uqCFKkoYHX4zy33PBS2PrSf38dIjQDswH5P52JFzsMge/ykLavs4f0FQuaCNl4hjj3V6jvm+4kMqUox6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NZ/daOLr6ATh3VRRK36CaScFCXRGx+3/J9AFSAhRvY4=;
 b=KpES6iYTDyYmZn3i33+ZnF3lW47x5NlzsbkIpV1dtOpq2zPTq1Zd3jqIx5uv0Wp9npL9k2BWQqxgYe9ME+64V/cdWcwQsnSoxDmKZU1t/tK4svSWXaarL0Qd1XWI+Q9FhDg8SWW8dgKNxy+YZu676vJeAYqLfGaGHR/QqC2DRU5sbxRhjkLOMtCRxt9uNXxhgT2gneilPUZuwffft+8gmhaXRCT8qqtIZPqUX5z2sA4t2oBGGeErETe5d4UKJ5rKBdevSoNHIKkYQgELwfwoLkhsIk5hHOju77vaWCPShO5NMMjcdpsgeZcULk/SU7dzGdwtzavwqcq0kkLA2NkG3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB8270.namprd11.prod.outlook.com (2603:10b6:a03:479::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 16:56:10 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:56:10 +0000
Message-ID: <c12ffb8e-0606-442b-810a-69bf65624bf9@intel.com>
Date: Thu, 6 Jun 2024 09:56:08 -0700
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
References: <20240604031020.2313175-1-jackie.jone@alliedtelesis.co.nz>
 <ad56235d-d267-4477-9c35-210309286ff4@intel.com>
 <1dbb8291-9004-4ec2-a01b-9dd5b2a8be39@lunn.ch>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <1dbb8291-9004-4ec2-a01b-9dd5b2a8be39@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0183.namprd03.prod.outlook.com
 (2603:10b6:303:b8::8) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB8270:EE_
X-MS-Office365-Filtering-Correlation-Id: 2605a6bf-08a1-401f-9b8e-08dc86499109
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T0RWUGdhL3M1a21CMHErdnF4eWRSWGVweXV4Uzc4VXgzMFQyYlNyM3hVK2NK?=
 =?utf-8?B?UWF5cElPdks1T0xic2xlTVFhR0dSWW9YRVhNSUhYbkVBYUNBVUY2U3N4Z0R2?=
 =?utf-8?B?WmEybnhaNXN4NDFBSnUveGh6M2lIWXlBU1hFNmFDOWx5OTN3RHRodGQ1Rit6?=
 =?utf-8?B?MGdjbklUQ0U1Z21JUUlhY1YySmpiMGQ4dWgrVlBNeHRPejBxRU1QL2dLSWpL?=
 =?utf-8?B?UGp5UUVCdDdTS1VnT0dJOGZqVFhseTFNVmRobldBTW9NSjliMmd6OXBhVHJE?=
 =?utf-8?B?WVArcndGMG1UdWVpZWZwMXI0VGJ0d3NtYVpCU29NbHI2c2xudTVKL1g5ZDhO?=
 =?utf-8?B?WlRhamhGS3VRRjdudDUvekpWYmcrd3BpcUNrcXVHeEdqeGlpc05kaHg0ZVV5?=
 =?utf-8?B?d1dmZjl3RzdXOGVpTFJvdDlPdklUaW1iWW1WVk4weW1HdS9vd1ZJUEY2b1dT?=
 =?utf-8?B?eU9OMXVhRUZ2Z1J4dTNHZWIwTk9PZTdpWEN1ZTZGZUVMZnlJeFpLaW9vZHY0?=
 =?utf-8?B?ZjRJWUptU1lXUXkxRmNLK1ppdndKclI4U3drTG1IMTJ6NGY1c3BFZ2gyZGVX?=
 =?utf-8?B?bDNjZGI2ZW00dGtXK3NQSWMwbkIrQ2tRU1dTYlEzQTlmSTFuYTFtMTJZemtz?=
 =?utf-8?B?NnpNU3Q4WHUzZThLMlUxZnRBckVyaXEyU3p1d21KSVF4T3FWQWVRakxqbjZQ?=
 =?utf-8?B?MzJYN1NxMy85Z0RmY21XdUpaLzg4cUwwTGRvTjZKeUlwdy90ZjgySktZZWlK?=
 =?utf-8?B?QTdsM1NLN1N0bU9WcTJici9WSnZYRmVNSUI3YU9vSmxoOFQrTkhaY3JpZWJN?=
 =?utf-8?B?d1lYMmR2Z0dGNTVROE9meGVwNFRPNTRWdG1FTGF2eS9EWEtiRlFVV1k1amlT?=
 =?utf-8?B?dEVsTDJEK1FsM0RWSjcrM3dCNlpNWVRabUVsRDBsbnpYQVIyNVNSMzhzekZX?=
 =?utf-8?B?bENoRThaK3U3bXJUeGdBUm5vMXdmKzdwaVRtYzhzaWQ5d3JqNWNsR1gzWEpm?=
 =?utf-8?B?OUNXY0ZRVTR2R3pZUHNqa3ZWK2grNUNHNDVUWmFQb3ZuTE1aSVRPUUppVW52?=
 =?utf-8?B?a0JUc1FDMTlSZGVheld1RGtnOGtPc3djd3dxcjRlcWhpOC9VY1BTU1hlaG1H?=
 =?utf-8?B?b2YzR21xTWdyZkhiMVo0UGx3OGJDTU1MWDZSbVFVK0VadWpTVWJrSVVBbGFv?=
 =?utf-8?B?VndIR2ZHR0w3b1BLUHJFSHJrcUtQVERvd1N5UEFVTUR0MjhwT2NQRHdhRkdk?=
 =?utf-8?B?RVRIVERiYS8wL1laMmgwK3p3QXNVMmd4SkhvbEY4cnF3SE00TW5oTklUSWNR?=
 =?utf-8?B?VkRtY1l6UkVtdHFOeS9KbzlkM3d5WEI3WjJ6dGZRL2hrZUdXZkJKUEd0a043?=
 =?utf-8?B?VGtFK2RjUUZnZ25tbUZ6d2dFekFDTDJHZ1FOMnBqSWF0a2ZOdHB6V2NwemVG?=
 =?utf-8?B?Ti9iRzZ4OEtoaCt1aTJkNnM3WWJmLzQzYkM5ZlpKcTVROXlNNlAxMlE4Vi9Z?=
 =?utf-8?B?YUZQdUUwZlBnSmlnWUx6UUx1c2luMTZHdFM1d3ZJNVI0UStGQWVCeEVJSE9V?=
 =?utf-8?B?dElLYzA2V0cvS2hSQ1VKK2MySWtyR2wzV3FFZXVGeEJRem5Oc00rQXpXcXZY?=
 =?utf-8?B?RFk0cGZ2VE1FcUY4UmNsT0s0Mlpja09PUXhjQkFpK3N1Tkhya2ZudFZtaHhN?=
 =?utf-8?Q?L93VIWGpyydsNw99+y8W?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVhaOERYTmZ5bDFxV0hGajZDa1lxdkNsWXhZM21TK3dScWRSMzh6a1RlTjJR?=
 =?utf-8?B?L3Y1S1ZrR0cxVERvbk1vTVdpY0loaTdqRTdGSXllaXVCSmEwbHNFaVRjeFJJ?=
 =?utf-8?B?VmlkVXhIeHVzRUhCbGJYcmcrNjNwVFYvU2g4citLanpoUkoxc3FCOHZLdnBa?=
 =?utf-8?B?VlRvbVdETTFLWE0wV2t0cmJQT0k5YzR0Z3dISVA4N2tWSkFxeWdSS2xPNnhq?=
 =?utf-8?B?aHRpRDhQWEhRVFUyYkVRb1pYSVdLUVlLellzbE5zTXM0UGN3bXF1WHMxejJH?=
 =?utf-8?B?UTVSR1dIbmRoZERsTmZHM1RSUDVHUWlYQXpkVlJzV3pzK1dVeFd2bnFHTkNh?=
 =?utf-8?B?UkVwZndCSGVkVFlNaG5OOVJXOXFEOGlLNVB2NXlFb0d2TWFvR3ZvTWZDUlFI?=
 =?utf-8?B?ZmRkWTVqWDdXVlIwalczMk5SSkJ3T1NwRmVGL3JvWXloQXowemNQc3YvTEZR?=
 =?utf-8?B?a0owejM2RHBuODNDYjFuS01DYXpEZ3B0dDNWQlBHWnNaZW1NY01IeHNURTla?=
 =?utf-8?B?WVVRTzFjT2lNRFl0U0Jub1l0TG5aczVzT216Z3VrQlNEZXhsMU9mWXlRUFBD?=
 =?utf-8?B?YnUycVgyLzF5Mi9vZWt2QlJUNFp0STRnbkNsUVFFOXRLVkJpOXZ0TzIzV29k?=
 =?utf-8?B?bzI5SHpvNUtBbTFwcnBpMkZ1Y2Z5TitCdlhIcGR2b3RVeFRvYWc1ZXFZOWpN?=
 =?utf-8?B?cWc1L05Kb1c1MVFUK2dFTkZld3cyVzVzYmkyWW50aUh6c2lkcUdWU0NmNERR?=
 =?utf-8?B?ZFBabldIcitneW9RdEZ3T3dFdkppUnk1bjN2b3JrV29UTmwzNDF1dSs0KzVX?=
 =?utf-8?B?bnV6a2svT3Q1TnZtbW1kcmxKVlRYaGlMWnd1b1o4THplOHBCa1M0d2VoSXp1?=
 =?utf-8?B?WFVMQWZVemZGeSt5c0E1R2JhT2NPZEtoZHIwODZaaHBOVkRHT0ljSEJDRFdD?=
 =?utf-8?B?UXQ0TmQrREtKUXBMc2ZxVEEvaW1YYThWN01mN1oyYjUrd3hLaHhQYUh6VlMw?=
 =?utf-8?B?MDFHdlRXU3NVS0lnbzB2N0JtNzZZQVF2bnlPcnBOdTBoRUx3NCtNZkxlbHBt?=
 =?utf-8?B?L3FEOWZYczF0dURGeGlSVWFHRVUxenBQeU9TQWhEV3N4anA3WjdZVStmTFp5?=
 =?utf-8?B?NkJBUnVUSTdJUU80d0JnckFmVS9YSHRKZW5OUFhENm9HQ1FUNVBGaTlzUUNr?=
 =?utf-8?B?dFlqYnRIRVpHb3ptczFHY1FDc3g4ajF6WnZtdXRndjF1ZzMyRFRYSWhlRzNF?=
 =?utf-8?B?OC91YndZMEN5anZpR3V6a3RRSHVndklrQ25uOGFqZzlwM3YyZUh4N1F1ak10?=
 =?utf-8?B?QlJqRm9oMzMrSEc1Y1c5NDBpeGRiaXFRN0RUaWNCZ2UxMFRnRGJCR20zMXhM?=
 =?utf-8?B?YTlsNXBETzVwUjhEczcxY1JGR3h3TWZQcmdCZTZjODVxOGNGV09LaGorR1Zw?=
 =?utf-8?B?MFh5cTVxYVliUXAyd3hPZ29Nb3NqcmN2RFNQUDBZVHJtQTJ3eS9oMUYvVU5l?=
 =?utf-8?B?UExwbnNUNzhFM2luOE53dHNtRkZiQmZGK2xOWkw5blErWDFGR3VXeHpaVnFq?=
 =?utf-8?B?cU9SSWcrMElpV2NidmFvYkU2UEVyYks3Y2pxNlNJQVRVSDhINDBSdHVxcVJR?=
 =?utf-8?B?cjEzNzh6YXY1ajNHeFhITFBPUysrM2dlQjFaVFJiaHB6REc1V0Nsc1pFbW16?=
 =?utf-8?B?bGozN1VnbDJzMCs0VmpmQ2FxczA2RlRMWGJ4V2RBdzk1bnFTSU55S21zaWdX?=
 =?utf-8?B?ME1rZ0JkaVVrSWIwc20xRmdROTQ3bnYwQTVFQ3JIVXM2T1ZWVENSNkJ5c1Fh?=
 =?utf-8?B?b1BZTWNYR3B2bHBybW9hTGQ5N2hqNFFEdWdUT1V4Rnk4TE5wRlFsaSs1UUJj?=
 =?utf-8?B?UTdUQWFmditzTmxteGgwOHFjc2hUTFJTVVNrZ3R1NmMzd3Y1MTBxaGxQLyto?=
 =?utf-8?B?Qmc0UFdaWXFMSTRyejlqVmdGa1ZNdzV2QUhYQW1OeGd3TjQ3YmNPUnZYazho?=
 =?utf-8?B?TFpXRVoxQUhhaC8rdTF3ZW13OEw4UnB0YXZ1SFJjNmpzQ0VRbENTZExuUVVS?=
 =?utf-8?B?T2NlY3NpZHpSMFg1aDV2dVk2RDRYcURwRVpOc3lTQ2wzMnNlM3lsWlpSd2Fu?=
 =?utf-8?B?VE9PenJ3bDZIVFNmd0pFQ21ydEpmSXg2TUY2K2xiMUEwbUhqUjdNcitCWU9N?=
 =?utf-8?B?ZFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2605a6bf-08a1-401f-9b8e-08dc86499109
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:56:10.4832 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PjdJwcXc+j167o7Os+e4hN6VV7n4tRblL08h3LT4YGy9JvNwNvT/u5FRf+TqN/fDeqJfB7AY8k84FNd6DEd5/3udMJYatj83LGMrVZpMgd0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8270
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717692974; x=1749228974;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lcWXSTHI2Ds84ZPg1R65hHzT1wVCKAXmKrl8ywULgOo=;
 b=kpPWG5CtQkVL46Z7Ov3g56YXfHk7lmTL9fJOeOgWpLaHZv+cB5H/5kav
 tT0G+z9YAv1TO4Qwj5omaUuWrLcCEzvLLVXXXg6gOf4v0neYE/rFNduJg
 +JwLVJ4fky1jtBcHoB8VF5W4sNjSopsyFf1x1OvYUL2Hgfl6D6Jv+ae/8
 eqcvzr2dRfAoHmOy7Gf8ryjsHVMVP/iccvCvs0I9LH5k1RtRwSGXPMrei
 tPQ2Qiia7ENvftPwMTQny6Z/l8ThkpjW0ADEpNb4G02g8TlphBHAlX0mY
 l0MkzfBB0MkD8hZOl4zXDk164MxAjwz/YlGMY5JXnLNIYFKr7oaHmaRKx
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kpPWG5Ct
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Add MII write support
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
Cc: jackie.jone@alliedtelesis.co.nz, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, chris.packham@alliedtelesis.co.nz,
 anthony.l.nguyen@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/6/2024 8:41 AM, Andrew Lunn wrote:
> On Wed, Jun 05, 2024 at 01:51:24PM -0700, Jacob Keller wrote:
>>
>>
>> On 6/3/2024 8:10 PM, jackie.jone@alliedtelesis.co.nz wrote:
>>> From: Jackie Jone <jackie.jone@alliedtelesis.co.nz>
>>>
>>> To facilitate running PHY parametric tests, add support for the SIOCSMIIREG
>>> ioctl. This allows a userspace application to write to the PHY registers
>>> to enable the test modes.
>>>
>>> Signed-off-by: Jackie Jone <jackie.jone@alliedtelesis.co.nz>
>>> ---
>>>  drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
>>>  1 file changed, 4 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
>>> index 03a4da6a1447..7fbfcf01fbf9 100644
>>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>>> @@ -8977,6 +8977,10 @@ static int igb_mii_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
>>>  			return -EIO;
>>>  		break;
>>>  	case SIOCSMIIREG:
>>> +		if (igb_write_phy_reg(&adapter->hw, data->reg_num & 0x1F,
>>> +				     data->val_in))
>>> +			return -EIO;
>>> +		break;
>>
>> A handful of drivers seem to expose this. What are the consequences of
>> exposing this ioctl? What can user space do with it?
> 
> User space can break the PHY configuration, cause the link to fail,
> all behind the MAC drivers back. The generic version of this call
> tries to see what registers are being written, and update state:
> 
> https://elixir.bootlin.com/linux/latest/source/drivers/net/phy/phy.c#L325
> 
> But you can still break it.
> 

Yea, its extremely easy to break things if you don't know what you're
doing here. So its more a question of "are we ok exposing yet another
way root can brick things?"

>> It looks like a few drivers also check something like CAP_NET_ADMIN to
>> avoid allowing write access to all users. Is that enforced somewhere else?
> 
> Only root is allowed to use it. So it is a classic 'You have the
> option to shoot yourself in the foot'.
> 

I don't have an objection to enabling this myself, but I do want to be
cognizant of the way it is viewed in the wider community.

> For the use case being talked about here, there has been a few emails
> one the list about implementing the IEEE 802.3 test modes. But nobody
> has actually got around to doing it. Not that it would help in this
> case, Intel don't use the Linux PHY drivers, which is where i would
> expect to see such code implemented first. Maybe if the "Great Intel
> Ethernet driver refactoring" makes progress, it could swap to using
> the Linux PHY drivers.
> 
>       Andrew

I remember this coming up several times in the past. I've always tried
to push for it, but so far unsuccessfully.
