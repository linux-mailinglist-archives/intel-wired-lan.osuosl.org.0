Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAB2C7BBCD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Nov 2025 22:22:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63DC942B98;
	Fri, 21 Nov 2025 21:22:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a8KLDtyBE-vo; Fri, 21 Nov 2025 21:22:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C558242B94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763760153;
	bh=iofjAx2zrlLxhqJI3IBhGd/fsCLh+DSmqvr4XY0zimc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PeJj0L7M2DOqvW5rG2zvg656sJNxNCRFM+/CvSeUkLJynFAdcB+0c6R3O69St+x2u
	 2bHRk9ZjkeDlIWHKEEzuS4gmZBceC2AX56y4HlEYt10Y0wiwAVW/TFo9f5UXlOVcPW
	 MzP/onAC1axBwCdQ8kpcNEKXMQfchUHeo4Z2vRWVzb1SIaxeVvfyN0KBmO50L5YJez
	 l2ZXRw00rqUa+grMDNnNs1ZAr98Jbw6xpKFTKKb5jppZVpYHMz6lk6uJlx0ggh3GHD
	 XFCpVXzG3HomubbHG9pkgUFVsaQ5AR0YF3TxJWqS9GjKzHp6Jwqcxe8GOf00JulWAX
	 KEuGH0eqcEiNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C558242B94;
	Fri, 21 Nov 2025 21:22:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 783A21CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 21:22:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 107F6803A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 21:22:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YpZEd9L6MCdw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Nov 2025 21:22:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C7A2C84F56
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7A2C84F56
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C7A2C84F56
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 21:22:28 +0000 (UTC)
X-CSE-ConnectionGUID: dcLZJ7FnQiadSe93dRC5fQ==
X-CSE-MsgGUID: SDo/T6slTNaTKeV+gCfOyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11620"; a="76188946"
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="76188946"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 13:22:28 -0800
X-CSE-ConnectionGUID: jCv7w+gYQwaHp3WHxD7SLQ==
X-CSE-MsgGUID: UQBD+ThCSwewBas0gO1a1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="191825588"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 13:22:28 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 13:22:27 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 13:22:27 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.17) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 13:22:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J206bSEoRxqzWZdeKfgcQjcR5imN+y/X/+KsYrWVD3n8PtzfMdlIh687i2DpCQ/fvDJtf2qh72AwORc+eU08YXX1Rv7sv6xQZodYZPNLlTnM7/aUQhvtc0tr9EXiaAHBRgeg43PQY2oKthj2QYtaYR2kKEBeyYi0euHAvQrccrvSdYg14R7uEJMAC84C+Ay5add0jbRHvc+9K15/P5I74GDZOAH/m+hhS73aVskCGlAvrGWjxFDY9h7hcIvvq4o1O7E01ehdE8qcFfam70HMqcc+ShTeaLDxQtmYFoQzxrFXS4rsfkvW3PrvJaj287KoR6ndY08dL/gz8AXWUJbWqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iofjAx2zrlLxhqJI3IBhGd/fsCLh+DSmqvr4XY0zimc=;
 b=IaE0o7C4l34aflOLjD1lNjJ6bTztXrW3/GtIONhSufSn4e+lymg0QP1gO3vtoCLhqQFBE+T3ZAvz9FkCtqPUjH6no60vO19/nHLomV94edfdIAsEj38VgdRdba2KnWiYPgINSx8WpkQuieEBL8Z8V1o1iP06wK6Zu9/mteg1jcqXRzCUVVDGJzWDNSiWM6W7fIv2ikz8DNqWAPyysHoKwVTGLHd9S68JB8IYoDo4db79j/OBLM+BZvhf5vGf65elHSGAdEdZIA14NtBrUUp0KHvB12khfdy5d7DsvBP4SDqLq1/BInMb+alXDY699um+yuBMJLTswCjtSSPyci2GwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA1PR11MB5873.namprd11.prod.outlook.com (2603:10b6:806:228::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 21:22:24 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9343.009; Fri, 21 Nov 2025
 21:22:24 +0000
Message-ID: <32e83b3a-a803-4464-b57b-a39fa45a2220@intel.com>
Date: Fri, 21 Nov 2025 13:22:21 -0800
User-Agent: Mozilla Thunderbird
To: Sreedevi Joshi <sreedevi.joshi@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Sridhar Samudrala <sridhar.samudrala@intel.com>, 
 Emil Tantilov <emil.s.tantilov@intel.com>
References: <20251118042228.381667-1-sreedevi.joshi@intel.com>
 <20251118042228.381667-2-sreedevi.joshi@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20251118042228.381667-2-sreedevi.joshi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0129.namprd04.prod.outlook.com
 (2603:10b6:303:84::14) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA1PR11MB5873:EE_
X-MS-Office365-Filtering-Correlation-Id: 98cbb62d-fa5c-4c47-0641-08de2944105c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OVM2SWFIUnV5WkhWYitWMlV2azJydnVGem9zdW5Xekw0UHJvZHpPelFacTRH?=
 =?utf-8?B?YndKTkxuQVV1Q3NhVnNLWGZpRDZCTkdwZ0NBWVEwdG5CbElCNmVkUDlCUzB4?=
 =?utf-8?B?OXF5U0VkejlnMnBPRloyZU1XRlAyN0JSTG52WDZGVTlVd3V6WlNmQkxka0tC?=
 =?utf-8?B?NkxqdFBkVEg4RzZpL0pBRTV4cTNmUHpnL0xDd210UEpMRmJEMkNiQVRqZUI5?=
 =?utf-8?B?b3d2NDN3RDlqeHdZL2tBVytEdnFMR0RvQWZ1ODdiS3lhNzFxdGZZMzA2aE1V?=
 =?utf-8?B?ZmdJUjkrY1daNk1pSWo3NFV3dCtKYloyRGM2K1dZaU02M3U1OXJCdkk0RkpE?=
 =?utf-8?B?b0pHL1hrbmVSYXMycDduVUcwMllTcUx5RXB4VWVJSGZ4amFKOE1waVBQdTRk?=
 =?utf-8?B?ZHY3cERUblJzMG1sUVRqMC9JQ2xyalBuL0tXWmVHZUI2cE5jKytMZG1Xb0Jp?=
 =?utf-8?B?ZGljZjl0UEo0eko0cWdVd2s2MUFKcVpVeC9vaHgxZG1XanZqT1hTVm5WTUV6?=
 =?utf-8?B?T2ZRMkRmUE8vaENxWU1vR3VSSmw0U1ZrMU1nTDFLcGNzMWlqcEMrZmhuTGxy?=
 =?utf-8?B?d3RPaXdYS3l2K3p1UnJXaHI0dUVRRGpqdkVFNEVWQnBaVXJOU1dkVkgrck9Q?=
 =?utf-8?B?ZTFhUkRyYjhMdXF1SnFJamlWa2Q5TUhVV25aWmVBQ0ptd21BRmFkQUlzaHhT?=
 =?utf-8?B?dWRXVDI5QTNjU1hPeG1TdUhJemkxclNoREE2NXQ2U0JQNC9jZ0pWa0ZVY2tW?=
 =?utf-8?B?cS9uclVZMlVNY3pPVW5XbHY1MWVOWjZkSUdOUHBhWUx4MVlpanovL0x2Zy9m?=
 =?utf-8?B?NEIxbytDQXhqck9MU3pUSURnNGd4MG9HQTVGdjl2ZXlBNXpKc1FHbkJ6WHls?=
 =?utf-8?B?bnpabng3d1kySFo2ZWJuQjJHWUJXLytRZ20vazh0cTNPS3BIbDV2U2tGakpq?=
 =?utf-8?B?QVRtc3h4WENQSFU2VU5aWnliL0tnNmVOQjJDRCt1OWEva2tOUEhuRElIc0dM?=
 =?utf-8?B?c2p6NGtocmJhTGwrRmNvZFJoekgxYmdOa0NVZEJxQW93QlFLYXJJbXBzYXVX?=
 =?utf-8?B?UmNmNUxiQjVpRytxai9PNUpLbEJKYW5JdUV6SVBjNnNrSE8rS3E3c3BMSzdj?=
 =?utf-8?B?cVNBc2dKTkI5ZHY0OTBRRGxYUGZEVkZwZmJZYzBuYTVvNnpsbmlmNjUrc1lQ?=
 =?utf-8?B?L3o5bHg2Y0JiUy9CdE9CblFRL1Q4N3lQbG9OODBWTFZzU2tsb25kQ1VLckJL?=
 =?utf-8?B?K05QK0Vwdyt3OElWZGdyNTRsd0VqaDUxdi8zWXF4WWRkRHpmU0VqN1lJTFhN?=
 =?utf-8?B?MyttN1FTRlN1UGU2MTNtRktTRW5FVzNnL096N0xnYlp3WUV6WXZQeGtiNUho?=
 =?utf-8?B?QTIwMVMxTkRvR0dWa3NuanV6eDlBamxaYXhyU1dETmVHWDlBbXg4K2dhTHJp?=
 =?utf-8?B?a24yV1U3VE1xRFJPOGJDNmJpSXNiZlg5dkszQ3YxNitYTVF4dDdyWVRBK1JS?=
 =?utf-8?B?VlJhRWJEUm9YSUN0UDArVXVNMy9pTUlFYjhRQll4OXJRWlUxOGxKampQRGdt?=
 =?utf-8?B?NXVTTlozQWowZTc2Q0ZYZDFQZ1gzNm9jMWk2a0JPeEdrNmNEUngrekJkYkhp?=
 =?utf-8?B?TTJMaGRVSkNld0RZbUVLandQc05RYVFwajZDWnZGQTZlUEdlT2ZRMG44OU12?=
 =?utf-8?B?ZU5MMWV6ek02T1FWLy93Zk1YZVo4cmZzWnZrR2UybWZtTTcxV3N2cVRzY3Jm?=
 =?utf-8?B?eE5FejNaNUdOZHZBU0hvZk94amdMMUd4T0t3RGVhNXl3STkrUkJTN1FJQWNi?=
 =?utf-8?B?dUxGcHM5dWZLVlNsNU9VMnNTSW1WQ2RadGRUQkx3b1p2ZHhlckhOenhJTHhX?=
 =?utf-8?B?dmRYYTJNUkIzQVVKM0xzS05tQndrM3RjSXNyR2FaWWVCT0tOYTNxdWxYZjZE?=
 =?utf-8?B?TmMvUEpvMHBJNWd5aG9CemJ5TGVjVFJVVjBxallCbDFnWDdsQWhKNFl4QWNT?=
 =?utf-8?B?VzVqMkhIWitBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b09LY3hTcWt5K1V1czJ4ZjZhR083UWcwOW9OSFlNRTlNNzRjVVhKaXFlbXFU?=
 =?utf-8?B?RnNQOXN3R0htNXlvcU5WWmtpc1BYNGxvRC9FWjBPcFIveTZtYmlzeHF4WGEx?=
 =?utf-8?B?ZU1pa1BKSzR6bEVSZ2hWczFUeDZoa0M4SktxZWVJeUNPR1haYzZrK2czaDNx?=
 =?utf-8?B?OFdGWEFEK0l1M3JkNWdEeUM0SVBJd01xZkIzeW5pUmZ1cUlYQUZ4MTV2aHNH?=
 =?utf-8?B?cHF2R1RkbVpKaHRHOVgxNDJOMndwVW16OEVPblI4Um9veWE4TjJaWWY1b1lv?=
 =?utf-8?B?dXhPTGZpUkZMWWVZV25hVUYyMWpKdnpDVmhpUXZEVlprVUJSV1l1R05Oc0xu?=
 =?utf-8?B?STlFY2lqQXZuSWo1QW9RVWZKeUROZTZVWHh6Qjc2TkluZDllM3J0dDBvaWlM?=
 =?utf-8?B?NHZnQ1FESDJpcWtkdlJxOG92Ky9zelcxa3B6bFRRZmoxVGZtMjZBVFhmS3dK?=
 =?utf-8?B?R0NzWCtKWXZWZWsvTHloT1gvRjNiZVdwTlBueHgwSkxSaVFpZ2IxOG1KT1Y4?=
 =?utf-8?B?UzhLSENEWVdDT1lqSG4reEtITTJ6OEEwaEVKTDdqd2QxSFNSTTkwQklrbDJW?=
 =?utf-8?B?UzJLSVYyLzJSR25PUFA3Z3owQXo2aDJFMElweVFoTVRzYzU4ME9rWkFTUHdp?=
 =?utf-8?B?dFg0QW01dU45UUZyM3EvZXpWY3NMWStGUmRMb2R2ZnBWYTdPUFFicnZCSVdS?=
 =?utf-8?B?bzc2ZlZudTVNL3RUWkpaNHNES3RmQVlUMzN4MVRCVXQxM2k0cjd5Yyt1V2Na?=
 =?utf-8?B?Uy8wM3BDSytBQTNXMHZsQVh2dlhza3ZiNlRweEJybFV5dnd1TzJVVzRHQllQ?=
 =?utf-8?B?cFE0eEgwM3N0Zyt3aGdDNWJuQmFiY1dxT2VQSVJIaGZwOGZjLy9TVjg3eXNh?=
 =?utf-8?B?RndYaDZSUzA1VVJTYi9yUnYrRHZIT0ZxSVY4ODRuejZKaFJyZFVRcEpWVVRD?=
 =?utf-8?B?Q2I5ZGIveFV6M09kbGtPYWlZVFNDendBZkZ0UEdkZTZxajduL2dlczcxSTBm?=
 =?utf-8?B?cXNCaEZ1by8rd29YbWZGb2pGTkVYTlIva1FvcHF1Zm5VTitOWlV4eVlPVXNi?=
 =?utf-8?B?bWk0aS9XZFNkOXV2dEhYbXNkdzZnRGxFMDRpcTBSWjRFQndGSkd4VjNEVHdU?=
 =?utf-8?B?ZGJaL2ZtWDVhRVFsVW1hK0ZyMXdhbGRzTGNadWVEQU1JVWMxazNObmRFcjlE?=
 =?utf-8?B?SmIrUEk5T09FZjFaUmg0eFozSGNXbEZoMm15RXVOa2NZdFhvNXdydEl5QzV3?=
 =?utf-8?B?bGc2czhvRmpCT3dzTjB5K1oxckhlbkF4T2tDa1BWQWNKMER2TU5uL0FZMFhp?=
 =?utf-8?B?RFVtZlFuZzRScmVlUGFiOHgzWEkyMkg0c29rallrVXlWMFBVMnZwbEhTT040?=
 =?utf-8?B?YnRiWnlZSksycVA5V0MzV01lbHYxclRhR3U3TXB1R0N2K2pnOS9ZVFJWVU9W?=
 =?utf-8?B?R1BSQzNHS3N6RmJRbGQyWUo2UmRRcU9qSmhiRENYUHcyWUR1UjBPazd0Kzkx?=
 =?utf-8?B?MHo2VGd2MFBYSVhLam5xNUNPUlY2OFVMRmpHVGV5S25PaFlxTkdCMHJYUEkx?=
 =?utf-8?B?czlydlBkQ0M3NmNlcERXQjRUZTRBTkFuNWVMNVpNTHpBKzNiNURMajVFaEhy?=
 =?utf-8?B?QmR6clhKclhpZGdwUnMxdXdUYzlIUGNwVkJZb3hMb01IWVhoWm1QQUJyd05Q?=
 =?utf-8?B?cEljTy9MRXE0Mzd1UnA3WXAzWG5NUFN3SnBWaml0a2FmNUFrS0hZZ0RuRlMw?=
 =?utf-8?B?VHM5MnVRU2Y5SXpxN29vdGZnbWQrV1JxdkVEWHV2MzFVU2F3UWpQY2tTeEJD?=
 =?utf-8?B?YzZwUEtwTTd4ZjdwMWxiN3Z4VmphVFpBbjkyT01BY2o2NWdLWk5NVmIvWkhy?=
 =?utf-8?B?UVFlbmdxeG15K0w1Vk9SdzZmVmdSNnAvRGxORW5qbWh6VS82bmgrSmlaUXNs?=
 =?utf-8?B?TUhpTWM2Y0gveWc5c2phdWZMZHE0SWJBdXYwN0hPazJKV29wLzc1eVgxNmRM?=
 =?utf-8?B?VGlyemJ2MlFlZmwzck1UWC9xbWtaSk9OVEdKY3YxZUsxWHdaOWZtU3ZmcU0v?=
 =?utf-8?B?dlVIbFdBSkVSZis4MjhDaXFDNjU2ZDZTVDZCTWRvOVlsVm55YTJldDF4OGpQ?=
 =?utf-8?B?bkR1cGlHczJoUFE4eUVVSnNNOFNjUzVvT3psSU54MG1MQXRWVXJhNGMrQmUy?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98cbb62d-fa5c-4c47-0641-08de2944105c
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 21:22:24.3701 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V5GEfQb/j5kTucSBvs1PKZBzU4thzuwdoNt0W0PExiHsVpvHqRmOL1iERuQF4fisGFB0seJ9xVX7jZz9oEmfA6t9XDNbW55zQOXBXCq0kfc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5873
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763760150; x=1795296150;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ul57Vo4dpaJAQGFxcrMPGIWoS2Ur+dzwUlcVdWa5Wt0=;
 b=Hiiydu7imBMtil7ptGkjmnUwEHpfzHm1abrxLFofFUi039zpOXtW/v1/
 K91MbhmTRuEAs7+azly0Lo9uqMxZidreeNbF6lvAYheWPByRpTnBBGH9S
 VmA3xi2aS0lE1RIrg8ADc8u1FXjqtQInbF00fxhEdgHbCjMmZitzJZu7G
 tP/ftnhuNw3VFVZTwjOIewB130RaYTvJmXmZmXV5Kf3aaEyUCDLz4T3WY
 cAZqK6Ehl6pMCvAX7WnZsvQNdzYdB6IlMltQmEn4oHwPW6Z7r7wtz5HBK
 m9w0nJbg6yx3AE8GtXvBNPHrzWcLfzrJFEMIqgFXz6VESXMkSn4MJVLnr
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Hiiydu7i
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] idpf: Fix RSS LUT NULL
 pointer crash on early ethtool operations
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



On 11/17/2025 8:22 PM, Sreedevi Joshi wrote:
> The RSS LUT is not initialized until the interface comes up, causing
> the following NULL pointer crash when ethtool operations like rxhash on/off
> are performed before the interface is brought up for the first time.
> 
> Move RSS LUT initialization from ndo_open to vport creation to ensure LUT
> is always available. This enables RSS configuration via ethtool before
> bringing the interface up. Simplify LUT management by maintaining all
> changes in the driver's soft copy and programming zeros to the indirection
> table when rxhash is disabled. Defer HW programming until the interface
> comes up if it is down during rxhash and LUT configuration changes.
> 
> [89408.371875] BUG: kernel NULL pointer dereference, address: 0000000000000000
> [89408.371908] #PF: supervisor read access in kernel mode
> [89408.371924] #PF: error_code(0x0000) - not-present page
> [89408.371940] PGD 0 P4D 0
> [89408.371953] Oops: Oops: 0000 [#1] SMP NOPTI
> <snip>
> [89408.372052] RIP: 0010:memcpy_orig+0x16/0x130
> [89408.372310] Call Trace:
> [89408.372317]  <TASK>
> [89408.372326]  ? idpf_set_features+0xfc/0x180 [idpf]
> [89408.372363]  __netdev_update_features+0x295/0xde0
> [89408.372384]  ethnl_set_features+0x15e/0x460
> [89408.372406]  genl_family_rcv_msg_doit+0x11f/0x180
> [89408.372429]  genl_rcv_msg+0x1ad/0x2b0
> [89408.372446]  ? __pfx_ethnl_set_features+0x10/0x10
> [89408.372465]  ? __pfx_genl_rcv_msg+0x10/0x10
> [89408.372482]  netlink_rcv_skb+0x58/0x100
> [89408.372502]  genl_rcv+0x2c/0x50
> [89408.372516]  netlink_unicast+0x289/0x3e0
> [89408.372533]  netlink_sendmsg+0x215/0x440
> [89408.372551]  __sys_sendto+0x234/0x240
> [89408.372571]  __x64_sys_sendto+0x28/0x30
> [89408.372585]  x64_sys_call+0x1909/0x1da0
> [89408.372604]  do_syscall_64+0x7a/0xfa0
> [89408.373140]  ? clear_bhb_loop+0x60/0xb0
> [89408.373647]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [89408.378887]  </TASK>
> <snip>
> 
> Fixes: a251eee62133 ("idpf: add SRIOV support and other ndo_ops")
> Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf.h        |  2 -
>   drivers/net/ethernet/intel/idpf/idpf_lib.c    | 89 +++++++++----------
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 36 +++-----
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  4 +-
>   .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  9 +-
>   5 files changed, 64 insertions(+), 76 deletions(-)
> 

...


> @@ -1289,6 +1291,13 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
>   	/* Initialize default rss key */
>   	netdev_rss_key_fill((void *)rss_data->rss_key, rss_data->rss_key_size);
>   
> +	/* Initialize default rss LUT */
> +	err = idpf_init_rss_lut(vport);
> +	if (err) {
> +		kfree(rss_data->rss_key);

Can you move this free into the goto path? In case anything new gets 
added in the future, it'll already be there.

> +		goto free_vport;

The previous error/goto goes to free_vector_idxs. Would this goto leak 
q_vector_idxs?

> +	}
> +
>   	/* fill vport slot in the adapter struct */
>   	adapter->vports[idx] = vport;
>   	adapter->vport_ids[idx] = idpf_get_vport_id(vport);

...

> @@ -1593,7 +1612,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
>   	return 0;
>   
>   deinit_rss:
> -	idpf_deinit_rss(vport);
> +	idpf_deinit_rss_lut(vport);

Since this patch moved init out of open, should this be moved out too?

>   disable_vport:
>   	idpf_send_disable_vport_msg(vport);
>   disable_queues:
>

...

> @@ -2839,7 +2845,8 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
>   	} else {
>   		rl->lut_entries = cpu_to_le16(rss_data->rss_lut_size);
>   		for (i = 0; i < rss_data->rss_lut_size; i++)
> -			rl->lut[i] = cpu_to_le32(rss_data->rss_lut[i]);
> +			rl->lut[i] = (rxhash_ena) ?

The parens don't look needed.

Thanks,
Tony

> +				cpu_to_le32(rss_data->rss_lut[i]) : 0;
>   
>   		xn_params.vc_op = VIRTCHNL2_OP_SET_RSS_LUT;
>   	}

