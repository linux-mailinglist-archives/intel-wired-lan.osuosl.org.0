Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2127EAE5813
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 01:36:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D08E82A7F;
	Mon, 23 Jun 2025 23:36:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aUgQ6NsgOUP1; Mon, 23 Jun 2025 23:36:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15EA1820F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750721796;
	bh=qi3Je94JvuRKx7/dzrdX/DtFfUrTdgSLlg+0FZvNCgg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=trqvtzdDapTEsYOVL5WMLVAFf4bgRgbwAIb/FZr46QTDES7ZvBSR/UF55PlFn6G0K
	 ps9+u+kbETHmlNQAQpdTMaaMZIS9542FhmvhuavBuMuAWwRVwLFFqKY8QlQYlj3ELr
	 C+P4sB8YDrULNBJPKdfJ9mCS9efJNhXTanDEPJbusGwWwJGSD3+CyIu3+UIxWBlgk4
	 o7tznaJWHcoMY2jrYQpOVUsFgBuc683s2v9KkzWQpK2N2ST/2MVOdpi+kBLphoxXjF
	 6szUNZQQMWEP30PrlUF6p0xFHAJHDrR8wZYM3l5oafIbNSMdkDmVjjOCap2PaiMZ1Q
	 ZnzX4LOzNhzGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15EA1820F1;
	Mon, 23 Jun 2025 23:36:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 76FF4154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 23:36:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68DF540597
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 23:36:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wi52KJ3PgFz7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jun 2025 23:36:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 643D340119
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 643D340119
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 643D340119
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 23:36:32 +0000 (UTC)
X-CSE-ConnectionGUID: +Ced7cFjRMSL0B+H6JyrZw==
X-CSE-MsgGUID: ekJXM8TwRHir6Sb+dILQZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="70512799"
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="70512799"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 16:36:32 -0700
X-CSE-ConnectionGUID: GbO862i3Tu2ZOEzp5zN30A==
X-CSE-MsgGUID: G0gaUOZPTn6UPD07JLg3Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="157521709"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 16:36:32 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 16:36:31 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 23 Jun 2025 16:36:31 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.62) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 16:36:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=csCrkd5ROECBnqwEkBQlZT1E81rJMzYaPihYD4oba1GF4d03Nh40fH+0cM2Eaf5dbg7EGREcNQhJDfZCQIZN/weOcUvDo1BRNxqkfS2w3qwmiWUjJ1OhHqwhbu13cw9sNfnFrbeCKM5T00D0NKxrF5+kgY8RVCFVUiLO5wucPAbmoC25NL38zDNk4pGsbMhqKfaLUaW54SsWfOGqiha4N64J0GIm+hrdL4lSpXPn9Cs+MShUjjXJyzBWl8BVSxgDheXjgRSVMNC5rIKMu8tENMMKyimXor133eoOF9BqCYAWsp4ZzJpKo5xW5kiPI/kpRHX50dxksBOhK0PgbnHGtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qi3Je94JvuRKx7/dzrdX/DtFfUrTdgSLlg+0FZvNCgg=;
 b=kzcpKCDtY6SohrB+ilneLKmQaz6IByVeYtbsZA+XRpQvV2BUcmCWjUZCxCXc9JoBe9SDbu3ty00zRa1BNWxJ0sT1y+nKBGde0shJh8K5R+v9IfWcN3mkiJzSVNCy4hHAMomrVF590ixKNpPNpVXhNL4Ma7OL4BNYBAodFs8GQQlviPfrenPhE2GB2kJl4aTQHG3YM6gJcV6V+9sfl4zgXKfXhGZKycAsYNCRq3HAkRdT7sASX9f5s6qAqf3kHACT1gL1dSCN+uxPITacFHpSPCrGIrgTjnyGA2qFlfXYbWcUBdqnZpz3rvD+hm8VIVxxJfsuZtUudw3CcFVLwQ7tNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MN0PR11MB6034.namprd11.prod.outlook.com (2603:10b6:208:375::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Mon, 23 Jun
 2025 23:36:29 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.8857.026; Mon, 23 Jun 2025
 23:36:29 +0000
Message-ID: <29c8cd2f-58e8-4cc9-a3f1-a114d8dca72a@intel.com>
Date: Mon, 23 Jun 2025 16:36:26 -0700
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Chittim, Madhu"
 <madhu.chittim@intel.com>, "Cao, Yahui" <yahui.cao@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
References: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
 <20250618-e810-live-migration-jk-migration-prep-v1-2-72a37485453e@intel.com>
 <IA3PR11MB898669A877442CEE90396753E57CA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <IA3PR11MB898669A877442CEE90396753E57CA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0246.namprd04.prod.outlook.com
 (2603:10b6:303:88::11) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MN0PR11MB6034:EE_
X-MS-Office365-Filtering-Correlation-Id: 77536191-81ea-4b34-fcf7-08ddb2aec701
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NUVKVnBRMGI4WnRMVUFmUE5qSGZPYUl1S2grcHZpalhvOHhvaDI5Sll1MVlQ?=
 =?utf-8?B?aGI0VThndHJrZDV1eUU1bWN1Rm5MZnVEcU1BTXBCRGJGQUJvV1d4OUdOYkxx?=
 =?utf-8?B?N1NNeHE1NG9sRFdacDFLM3VFSVJWZE44ZTBhY25uZGpLS2laNlMzZU1NM0ZG?=
 =?utf-8?B?bS9PRURqL2VqTURVVWRNTGFHeVVYN0s0alp4ODU5dXVHdnFYZU5wemxsV081?=
 =?utf-8?B?WWgwOTYrYzRCaDkrY01tL3NjR0E0MFZOSWdTN3p1S0NSYXcrZ3hpc1U3N3N2?=
 =?utf-8?B?RlVGZGR3WjZuYzBRMjh0eUNpRGREcVB1ZFZSNUVZeWxveEhVd2VXTHE3aStQ?=
 =?utf-8?B?eEx2RjFxTHFHbmtVUy9hb2lYTmhEdy9NM2d2OHdjYkRDYm1ncmdRTzBxNngv?=
 =?utf-8?B?NFpId214bk1KSmVpTG56NExtNG9iY1Q3SVFCazBFQmlZWVZzMDV0UzllVzds?=
 =?utf-8?B?dFFRZDZTUkRlemdNS2N5N2lXN3c3VkUrUXlQMHdHcmFyUjRYRGZNdUV1VUpH?=
 =?utf-8?B?dEl6NjBkZHd1MkptczBRL2JwMlBZSDRLZ3pBQnlqbitRblozM1Z5V0RtSnBZ?=
 =?utf-8?B?QkV4dWc0WUNZS3pXVHpaTUNDVTRWazNNdFlIVFdocHRRWER2WSt2Y3MyZGhk?=
 =?utf-8?B?MzZlc2poZy8yd3NvT2JGY09DYlV4bHdJSEgrOUlmUFg4ZDk1aDJxZ05aWkx3?=
 =?utf-8?B?OFlsV2NKcm9WQ09hU0x5eHpEaDNBeHI4QXpvNnZ5cFhsdU9qeFQ2djhqc0Rv?=
 =?utf-8?B?b21tWFBHVWFaZ3cwRm5wbFBBRk8raG11aGIrdjd6L3lTK0k5Y0J4cDg1RFA0?=
 =?utf-8?B?SXk0SG5rdGN6YytBSER4VVNOeGZKK1lsNXRvMGVyTDM2anFPVW0vUFpyWGNO?=
 =?utf-8?B?dmh6YWtDUE5ZOVBOeTdZMGE1RnVlWHpCY291aVAxdDdoKzVqNGdGQWJTVWJG?=
 =?utf-8?B?OTVtWjBpSm90RWdtNUF3RlYzOW9iQmFkckc2VUo0ajBESlhMRlhtMGJ1MFZu?=
 =?utf-8?B?SW9qVFU0Rm1Ed2R4SFpqdU5pWVNTaFNKTENkMUNKcmJsbkh3cWxXeEpwV3k4?=
 =?utf-8?B?YmRVbU1XOTVKT1Z0NHcxem10YWNMTmprQXhYeDRGeS9aTUVrMFJEcTdlVHR2?=
 =?utf-8?B?NStZem5vTkVuQTF4M3pUWkRoZ2VxUXpxRFZtWGU5Q3dKSUZlRU1hbFVoZUpn?=
 =?utf-8?B?dFUybEloMTErVFRCNVR4MCswRjFsYWVmTUlvSnhJYUZHYXV0ZE0zY3FCa2s3?=
 =?utf-8?B?N1htQ0QzUDFIaktjai8rMTc0U2xJYjlLdldlMXl1dHVLRWxUK1FOaGh5MDVv?=
 =?utf-8?B?MG1ndGx0TWpvdWF1aDQzUTdYbVdhcGVscXFvOXNYT05VV3AxcWFydjBqL3hz?=
 =?utf-8?B?WUQ3ZHdIVWgza3NLbTQwMktKQXd1akwwQnFHTi9YU2x5UGJLN0kzd1dhcGdY?=
 =?utf-8?B?eGRrRHZ0cnZydWdTd1c3K2FUcjhLM2ZxOEh5N3hVZVZiektJZ3JPa29IbW9i?=
 =?utf-8?B?aHQzYVIxZmYrTzhyVU9DbzM5bDhTRC9ET2p3UFU1MTdWalY4QUZzM1VPR0Zm?=
 =?utf-8?B?VkU4YmJqNXhOeElLbk9GdHVISjAvWkU0Nk5lM1UvZVFUWE54V2ZJdGM2TTRa?=
 =?utf-8?B?M3NOLzRLSlNISEVmUjZPSExFWGdPbkN3ZHpRdzRuUW9sUDJzRUl2K1R2dUJH?=
 =?utf-8?B?MWRyNzlsRGI2c1ZyZTMya0U2VnRPMHl2MzVhNE8vVjFGd29FTk9yWXFiUVFG?=
 =?utf-8?B?cWhIWDNwM0YwanpVSDVqVWpvSUtDM3FGbWIyWlIzTTl3MnlDVXJtVUxkWDBW?=
 =?utf-8?B?Q3d3VWlpRUYxMU5ZZGJHSzJpZ0NpdU5qajA2cElUQ0ZuQjRQSit3bklkMktP?=
 =?utf-8?B?K1BwY0tGSzJqR0ZOVDVRTEh6RzlscS8zaHQ2VWNLSllJNnc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFljYUpSYnEwTzBWK3JlZ09RNjRnZ2hNVjVVNHlGcFcxT2VuNnZ1MG5yT0hk?=
 =?utf-8?B?aXRYajcySFNoaWkzMFMyYmp5SkZoWDNJOUp5dWJEbXdtdEpYQzM3dC81OUxk?=
 =?utf-8?B?WDlTa3FFc3gvblJraHNUbUlIZnR1T1VRRCsyL1I2Z1VjS0VQTURrZkhlSmRK?=
 =?utf-8?B?bjY3L2hvbXBwVHUrZnJzQzJ6TkVjLzJGRkM4bmxmdm5VeEtnNy81dGVMVzYr?=
 =?utf-8?B?bkJ5N0F6WEtXUStUVzNDR2o5N2cyUllXWS9xZ1dNek5Nd2U4T2crV2FFMTNr?=
 =?utf-8?B?eDBIeFlLUWxQckY2VHREUDVLQXJENG8raGc4RG1kZjJqeDlnU29mV3dtS0VG?=
 =?utf-8?B?aHB2OUVNSldjdHlwc3Fna0FyNUJmdkMvS2lWVWtHaHhjQURqU1F4V1NMa2w5?=
 =?utf-8?B?WjZwalNOR0RVL0RSaGl0dDJteXhXenUyWk5mSUdVTUlqZGVDQXJQZUlHNjhh?=
 =?utf-8?B?bmxXNHFsOUdUNXRPbjgvaC96U3hNRDltWEF4Wmgyc2xOQzlyc2xwWGIrM2NC?=
 =?utf-8?B?YWpzUVNlNldpTUJMaUFLd1N2TDRqdDB5VGY2Y2k0UWpLVGhZanBabkRzemZs?=
 =?utf-8?B?U2NBKzVZVnFKV3k4Ujhtb1RNKzQ0NXVJd01tQTNCbTlnSGFkdSt3WDY4SVNL?=
 =?utf-8?B?UDNNek5MSVdGKzQ4S05BL1RIWjZmUFMyOEJRcGVQSE9xVlZBUXE0RGR3S3dM?=
 =?utf-8?B?TFJ6dVFIZmpUb01MaVUwZmk5cHppSmQxbHBvTy9nTS91WGdabWV1MXlUK05X?=
 =?utf-8?B?N0o5VnJiOE1wVVovNndIZkF1NFh5WVB6Q3lkMEwxWFFGTThlcU4wR2cyQVVP?=
 =?utf-8?B?ajVvQUl3eVV1WFFZVmR4Q0xQamp3TW5nZ05zdlZydjYvbERLd3M5Vzk0VHRY?=
 =?utf-8?B?ZStZdXFaSFJMdE1qWFI3V2R3SEM5cy9taUVKS2ZsQk1pRUI3ZHMvd0kzZkZp?=
 =?utf-8?B?ekdvYzZSLzUzSHU0aHowanVyZ1VZdVhKUGhZYURIQmViVU8rc3RFNDRVU3JF?=
 =?utf-8?B?cThOc2hJMDBuclFOYVkrM1R0VXVKbC9BeC9RblZUMkZBcGNlYVRIbTlKRTA4?=
 =?utf-8?B?QlNqSFdQSjVpU3d0RTV2d3lvdnNoVkw0MjY5SDlhKzE1NTFIMGxmdDFyK2h3?=
 =?utf-8?B?MW1zTlZUZE5VcHU4YXhZS1dWTThURG5wUHR1UjU3dnFtSXFmOWFlYmhaaEd2?=
 =?utf-8?B?VTRzKzZrbmhqVmVFd21KMm0xbkREMlBPMk5kRncya20wQW9nbkE2MlpiOVhB?=
 =?utf-8?B?WUh3aGw5d1ErWm8rYVlsU3dHd1QrTFlxRTBHUWp4VUYrQnltOUJNUkdHK2NM?=
 =?utf-8?B?OUtJODJab0NXOUpsL3RlNVN0SW42MnpsYXhvV1FhdUprRVA1NE5GNFlPc2tS?=
 =?utf-8?B?bE50UmIzcUVqRmNyZnVPRG5oMmwrck82TkZTK0wwQ3loV0U4V0pzNFA2WlNX?=
 =?utf-8?B?QUIwN29YN2ZYMXlMS2o0MUh0VWNEVUZNbU9QTitqV3FYb3NGaDBIL1ovQkVT?=
 =?utf-8?B?YnNSaGE0UVYvRTRwMWRzS1Y1UFlaS2ZZVDljZ3l3bHd3allZazhQUkZsUFpx?=
 =?utf-8?B?SXJQSFo1Qk5KY21aYkZBbmZiVTFYclMrZ2hKR0VBRUIxMGxUSk5GZW5hVFZK?=
 =?utf-8?B?NTlOaFRDakRlSjhjRHQ4M3k4SWZDUUdUSStpNzdIZEVoWUtsYTZkMnhGZUJI?=
 =?utf-8?B?QzBPbmpFLzU5SUg5Q0RIQVI3ckIxTzNvbWJueEhuTHIzN3Q1cGUxdGRYTFh2?=
 =?utf-8?B?NWZxcWUzQ2xaWTJuRWh1TklyMjMwanpWZjRYVDl3b1lEYzRTQjU3Nmg1Wkdt?=
 =?utf-8?B?TUU0OGE2UFRJQTIxSCt4WHFRN1pHT24wdjNJREFydmoyN1FXaVVvQVE3VWts?=
 =?utf-8?B?VlN4VTlFM1B3Z2QvOHViT0UyVWdKNkV5Zzc1L28zWkR6MUNodlRTR2Z6Kzg1?=
 =?utf-8?B?YnY5Mis0aFI3UXhmc3YvV0NLUG50cFM1bE9ZTlA1aGpTaEowRzh5M1Zua1U5?=
 =?utf-8?B?S1FRVE1xNnk4VlZtYTdYVUJlYndocW5yK0VHVDRwV2dvN045cm4wRUNqQkg0?=
 =?utf-8?B?NUFuMnl0UkdmV3JBOXBLNkl1enJJSHhUeDBocHJubW5pY0YxcExRL3N3ZzNL?=
 =?utf-8?B?elUvdmJ1ekM2bkJCNEM1blB4YkpxcFRlb3BEeWltZ3dWdVZXcEJEcHAzM0w0?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 77536191-81ea-4b34-fcf7-08ddb2aec701
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2025 23:36:29.3350 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jnRrZsK/1pbKgzrtGmvX7xfyHfqGA2OltiVppWCHjFJ1t1XhB5sxDJCnnlrsuVCxKRsCg67JWDE9Thsmhx5pu5A3G/ngAqsUwu+4vd6oJBI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6034
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750721793; x=1782257793;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QrkY1vFD7z5+ZsKD6u89w7AZEHfk8BP25F8d8MG12H4=;
 b=Z0XXEb8YooHyK46APCqeb5NU7z9r0sLTlfuNDSRV9OqKqkHBlYEG1O9g
 M/tzGBhYlWmUG5OMvkRfvlbGresVRlccMQsYGqns1nVQZIxFBQeXJxQb9
 8dUP2cwEtFmmKOYwUBD2ii5x6IQdpSxQ3JmD8KgO7ReoJY7FkzE2G5x6J
 fD1xjjgJv7xeQ3f9lL9XOE1eXOWp4vyCOPZXCljc4Ej5Esp77kPVxza9e
 TN84lDcC/IJ5QQ+tu9zHC3JVDkgICdFXvGvs6pJmImNCsQVBY2y2KzrWr
 /DAEHOWhwUh9dAG63sRShGydZdymgEyQqIajFFatEtfENWqutGcv1AWim
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z0XXEb8Y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/8] ice: add functions to
 get and set Tx queue context
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



On 6/20/2025 3:05 AM, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Jacob Keller
>> Sent: Thursday, June 19, 2025 12:25 AM
>> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
>> Cc: Keller, Jacob E <jacob.e.keller@intel.com>;
>> netdev@vger.kernel.org; Chittim, Madhu <madhu.chittim@intel.com>; Cao,
>> Yahui <yahui.cao@intel.com>; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>
>> Subject: [Intel-wired-lan] [PATCH iwl-next 2/8] ice: add functions to
>> get and set Tx queue context
>>
>> The live migration driver will need to save and restore the Tx queue
>> context state from the hardware registers. This state contains both
>> static fields which do not change during Tx traffic as well as dynamic
>> fields which may change during Tx traffic.
>>
>> Unlike the Rx context, the Tx queue context is accessed indirectly
>> from GLCOMM_QTX_CNTX_CTL and GLCOMM_QTX_CNTX_DATA registers. These
>> registers are shared by multiple PFs on the same PCIe card. Multiple
>> PFs cannot safely access the registers simultaneously, and there is no
>> hardware semaphore or logic to control access. To handle this,
>> introduce the txq_ctx_lock to the ice_adapter structure. This is
>> similar to the ptp_gltsyn_time_lock. All PFs on the same adapter share
>> this structure, and use it to serialize access to the registers to
>> prevent error.
> Is the solution compatible if different PF ports are passed through to different VMs? 
> 
No, but no software solution here would be. This should work if you pass
both PFs to the same VM, but without some sort of cross-host connection
you would not be able to handle this in software.

I think everything related to ice_adapter pretty much requires that you
assign all PFs to the same VM.

We do not have a hardware solution here so this is the best we can do
right now.
