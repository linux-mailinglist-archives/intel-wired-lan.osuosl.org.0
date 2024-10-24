Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 339099ADF5A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Oct 2024 10:41:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7231F40637;
	Thu, 24 Oct 2024 08:41:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KSav0LvNMZax; Thu, 24 Oct 2024 08:41:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F10B405BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729759302;
	bh=Gf8EBTsxLqLLm1BLFmaife01rDvINRr+QASuhP108ZU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pezZbQb30yo/TmEvoQXBkJklTRqkf4NJs/GQBZBTDbuWj5SlrUwVsbbRfeyx2FL6R
	 kUsnJ9R7b+tinYnuuMCFyXUxsIGDC4l/HwJdRmxjCPMHE8Vx7eWsuKRj3GyH41Mqro
	 oiwM7pE5w1tpNlFq2YlycLpswswgtyNMWrMslgvI9+QXJqLpaojwmcxF3OjqxTWY7I
	 1fBbefPo67RSN0083BNgLLwVxEL1PRzFeFyou+nSPy6T+s0Ui2PcSl27zt6B0fzcr0
	 uOJqzsAXzM5GWH82fkES3TkxcwIUzMWBufVwV9jsAbj630cHop8h5rZxdpD0n7F40V
	 IoV3n61X3Mjyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F10B405BF;
	Thu, 24 Oct 2024 08:41:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6313127ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 08:41:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3C25E40193
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 08:41:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JBpBBDW7vLk1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2024 08:41:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9B8BD400FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B8BD400FE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9B8BD400FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 08:41:36 +0000 (UTC)
X-CSE-ConnectionGUID: jNYcTDwJSiiyUVVMD/Udug==
X-CSE-MsgGUID: 58opNGYFTHyyVqTH1qMolg==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="32238561"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="32238561"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 01:41:35 -0700
X-CSE-ConnectionGUID: 1GDXl7teSRqoVGO+g/9g4w==
X-CSE-MsgGUID: U81GgLaxTBCqpalOCjJ+8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="84497774"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 01:41:35 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 01:41:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 01:41:34 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 01:41:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dOyUrnPQ8n+GrQNXkGDzTIXJl2milpX5YHgClzRW0+ipP7VWM+SrkZYjqvT8ONzNck4U9v9JF5/KfFL8NIVMsh+K5y4QQXcM/d0Ga7I3gqyKvUvXXO0h8naAVYmX01vopKKtjWpY3qb4AqfFGcMQeIYRhEusQ9g6fR/7qCityOq5lcL9gF+E8I4d2hrgirloaJeiTOxTjcxd3xjTfnMp0o26XB5uTbcdGo6R6fvP+NB2f2UVjNNEtcHj19THhGCm+BU6YHwI6TiRtpjs+bSOuvBgly5PJwqMNj8w4Grun/xRmdEQRgsBJdaijrgEcQYfFZM10FB3T3+7h1nsxcjbug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gf8EBTsxLqLLm1BLFmaife01rDvINRr+QASuhP108ZU=;
 b=qNGvoHuyiT3EUZ8EJ0R7dzUo5RWIruir+uXp+tkIsuvs2O4dkcbegoRE96cEFZTdKwSx1AKp/v8efTQz3Bui/S8Aj+nMVNnoNrPEWBs5GWnYaSATkkYSzzbtsMSfZtZoSF6jNrDgysg7FsixMnZJ8W+ipY3EbdPSvHYpZ+GrxUs4pZ5s2cGrQUw2+StmfVXG4wTSqjuQwDfRaDh6q+fsOmPHDL/Rojw0tp7rzhKrLiirJfdGxgYbr4ybm+Ev5zPkEcBw+fJ44aGAPuEE1r3FPT6OxRRItwJcHZtvp3vZHa2S31abTFei12xG6TSqMKXTlzz/HFfJXgoXlCchbSXYyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MW3PR11MB4604.namprd11.prod.outlook.com (2603:10b6:303:2f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Thu, 24 Oct
 2024 08:41:31 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 08:41:31 +0000
Message-ID: <91005d18-37c7-483b-bda5-2fa57a884a17@intel.com>
Date: Thu, 24 Oct 2024 10:41:25 +0200
User-Agent: Mozilla Thunderbird
To: Johnny Park <pjohnny0508@gmail.com>, <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <kernel-janitors@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <andrew+netdev@lunn.ch>,
 <pmenzel@molgen.mpg.de>
References: <Zxne9hBl5E5VhKGm@Fantasy-Ubuntu>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <Zxne9hBl5E5VhKGm@Fantasy-Ubuntu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0170.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::12) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MW3PR11MB4604:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f8e6ad4-692f-427f-b61c-08dcf407a8c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?STRCTU5iVy9vdEZDelpSR0JjTGtjQzVTZ0M2MTc1anJsS2p5dnpsRXFFOElF?=
 =?utf-8?B?SS9TNkUrWGN3cHRyMWlvaENtWFRibDNNTVRXbWMvNDU2SzR6N2ZaSGxFZ21T?=
 =?utf-8?B?NS9LNEhEUi84bUFsbUpWZ2RZM0JNQ2gxUEZaTGpFdVEyMXRqUlk4YXRtNHZt?=
 =?utf-8?B?enpodlRJTGZEd1Y1QWtkc2haUHIrbk9OUjBOcHE5djZYbTJnbWlNR0pEYnRZ?=
 =?utf-8?B?T1RwYXBERWgzUUNnOXJYNUplRTZSdC80cWdrUzJidno2TmlLK21SNGZLYkFB?=
 =?utf-8?B?SFFkNkRYWmpxUmZZbGM0cisxYk9sb0lWYlo2YW1sNmZ5aGNHYUVrSmdOcUpr?=
 =?utf-8?B?alBEUG9vQnZSTlVkWk0veTRnZ3k3eHBSVnZzTm95QlJxZXNDZHFnZ0hoUUor?=
 =?utf-8?B?dWFURXMzSnVXZVFIUFhUT1VXYTRzbkRyRHJnNElhQnM5TUJkWVNvNTZqcnIr?=
 =?utf-8?B?TExlOFordHJ0RHYzVGsxeDFhZXZHNmFMWEFoTDZnUG82dFhMeU5RT3BhdDNy?=
 =?utf-8?B?blJQY0NnTU0xSG4rRzRRbWIwNFFSWEVQbEp0SXRGTS9JOUZFL29ySjJZWXNu?=
 =?utf-8?B?bDFZUW50ZnY1R1RKUHUrRnRJN2VCb2FBZjBOalE4MnFkbmN6Q0FRVExuTTZC?=
 =?utf-8?B?S255RVRsZzhwcUFhZGNOcnpJZ3Q0a0p2TWg1cXRHMFR6ZU50N1kxMjR2M2c2?=
 =?utf-8?B?L1JxOUw0QUpIdTdrM3BNZnBLaUM1ODVWTUZKNGFUNmRYZE1BWS83cGxva1Zx?=
 =?utf-8?B?Y3Rrdzl0Y3dMbnI1dG5tRHcwbVY1SVIreXJua01FTnA5R3o4QURaNFBXMkxU?=
 =?utf-8?B?SWR1Sy9yYWt3c1RtZEQ0QU05azdQYTJER2U1MzdpalAzMjExWlZZMEQ0WW1Z?=
 =?utf-8?B?ZS9iZUpUaUpPc0NPdko2SitUazNjNEJwUCtNcThCY0Iya29wSnMxNDVGblFD?=
 =?utf-8?B?SnA5VG1STXFlYk5NY1Nwblo0VnRob1Y5WFlrNGxXZjhQaDRndTNPUi91bkp6?=
 =?utf-8?B?NkJXanlxZnNpRjYrbnZqMEVJbENtSkJZaHBRWGNERVM5UVprU1crTEEwS25l?=
 =?utf-8?B?RHdrOC9EYmlWS0I0aTBnczdjTW4ycTJBa3RsMTBVaVFJaVZsWmNocllCY00z?=
 =?utf-8?B?cCt1ZnVYNkNVMHAzWXJLY2Q1SkhpRms2MEZSNExGYmxEOWIyYTMvVG1rcXFH?=
 =?utf-8?B?cHdYb0t5cWRSb3F6RmkvYXVHRmp4bU52U1FFT1QzK2hsMFJRVENIQXZWdHBR?=
 =?utf-8?B?akVlTzM1SC9CN25JREJGcjZNQlkvMHBkU093R2xJWHFRSzlmRjJmOUJUdHV5?=
 =?utf-8?B?eU5OMGx4Z1prQytZK01ocnA2Y1A3dUJHa0FicXlHMllzSEk4eHBUdWVWTm9B?=
 =?utf-8?B?aFlEN2tqVkdpUjNCRVN2T3dOemRQOG1tNDJxOUhqV0hwNndBTllwd1Raa0cx?=
 =?utf-8?B?eDZwL1grenN0Wmx0eER5dGJKTndrR0RXanhNeHZiN09yOHhQaEhzOVVDbisr?=
 =?utf-8?B?Y2N1cS9nMTk5SkI0RDk5VUFwclhvL2M5ZjZ3NUp4UXdUckxOaHZPUEJBTklt?=
 =?utf-8?B?cERXb3AwbDdDTGJyOXBOYWRTbVU5NVIvb3RGOHNPdU5EY2RkZ1hqQ0RNRkFp?=
 =?utf-8?B?M2dOSElIYzBsR0FKLy9jMWVpRVEyQ2o4YW1HQnpUOVh6eXMwZDZkSmtlcytn?=
 =?utf-8?B?OThkTkdPank2RWxGNC9kbVFwMkdQMzdhVURQdmozdnY1Wm82MEE0YTkrNkQz?=
 =?utf-8?Q?v3Oq53ayiXMcO3xp5+tlnnNwOTsOS+2acqQ6RqK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aEVTSTFRTE9peVozc0F3d3NFMGVDMkFaZnFZV3FJejVtNVBRZXNYcjUzSS82?=
 =?utf-8?B?aGoxVG14cFBIYmd1a1ljSWVtTmlRZWJwaTEzRUl6QklaWWlBWEt3UzFudzAv?=
 =?utf-8?B?U1JtUnpPdmgxRkxubDdydkM3Q2FFTWJwWTU3TGhSTEx1Q0ZoRzVhakVaMDB0?=
 =?utf-8?B?N2NNaFNvVysvQkFhUWVyTnh5UTJiY2ltakNSc05MbGJTcUlHYmJZQXorR0pt?=
 =?utf-8?B?NjlGbzMyaGkrQnpwVnVKT213dGlMdE5MTDdyMFV2L1BCUjFsUHdXZnZ2T3Vp?=
 =?utf-8?B?WUFUSWQ3cUMxZVQ1SjM4S29vYVdtUkk0NFZZeGtxQ3BRSjhkQldacVZxSmRt?=
 =?utf-8?B?NldaU25Ba1JVTGZadG13ZlJRV25oVmE0RjNVK0pqZ2YxLzhOMjV1QVBZRm1s?=
 =?utf-8?B?R1poU2k2OFk2ekFydjhBOWVPdkZYOUlaNGFmTUhQVTZiSHF3YTZUbUtmRDIx?=
 =?utf-8?B?WE1abEY1dXdXTUFNSFQzd250ZFBkR2kyOWVVR09aNEtYeGswOCtSZ0ZVY0hE?=
 =?utf-8?B?QW5ZcHJzRjZFNlRYUVh5N0dzdzBrTkRwS3ByczkydkZCWkRwTkhGS1g5TEtI?=
 =?utf-8?B?OEQzZjF1Q3pkRjN0aGJINm11TTArcWlZM1pYTFZCczRCQmJyMGY2ZVpVZDFv?=
 =?utf-8?B?ampTY2hGdlhBUkZzT0hCTnJUWFp1WmV0a1h6QWJtMStUdW9BbU5MYmpZemFT?=
 =?utf-8?B?UGVYOU1DV243am94NjB3QnhuVHYvSzhRUUZtTUdEYmttY3lTZHNpK1ltSlM3?=
 =?utf-8?B?TllTbmRJUGJOWXBXZlp3NkJwM0N5SmF2QmlvTmdmeDVGYnM5cWs5L2JFMkQw?=
 =?utf-8?B?dE5rQ3l6eEpXZW14dGI2Zml6b3ZVWUVQVkUzY1lDUWtHVkZMTnYxRXZEaTN3?=
 =?utf-8?B?SnhVMk0rbDljWi9BVThnY3l3ZTZVYlZpVFQ0emNvWTFkbGE2eHBRNlBuV05D?=
 =?utf-8?B?Z1VudDVvamg2a1F1VmdPTjI5QXFtcWRjWFl5VTRZU2ZDZDhQa1A3NE1IUk1u?=
 =?utf-8?B?R2I4YTc1NlB0b085Zk1Xb0lQRkwrM3Q1Wnhpa1ZNWnhMdFhPVW5HQWg3bldD?=
 =?utf-8?B?VW1VaU1BaVRKd3krNzBpWDFxMHhSTTB5UGkwa0RzdE53L0xVQ0V3VHAvVFd4?=
 =?utf-8?B?U2F5SlhUOUd2Zk5JNE1KTDNKU2RsNHk2d2Rxd3kwT1Y1Yk5SWGRRZVBvTW8z?=
 =?utf-8?B?M0dIL3R4enBrWThpMUtmU3lSSFB6b25OdVlYQisyMmc0d00vV0ZSRDMwVjU0?=
 =?utf-8?B?MDBKd2JiSFpaQVlKUlhxYU10VzhOT21ZdmhleDdxQzl5dzRKamJiMERwL05R?=
 =?utf-8?B?ZGMxKzRKRk44TE1PbEQ2VzBkRzVBWXFaWTFKZ3V6MU40VCtUc2ExblZZbml1?=
 =?utf-8?B?Z2llRzdiTUs2ZFBCd2RoYStVUmNxZTkzU3hJYUt5SDRjT0QvbDdVdDRyZ1k1?=
 =?utf-8?B?MGkwMjdsdUVnbWo4bnovOWVlOUVvRWY5bDgvMGlYdFNHQVliZ3ovcHNxNGQx?=
 =?utf-8?B?OExkL082cDJUS1hTU0F6OEVPcm42S2VjYnlBcjVvanJlUWJsV2doRjNzNS9Q?=
 =?utf-8?B?aXJhS0lFK3d2Vm5XTXNERnVIUmdmWWh4SkQ1SUJ6QUh4Y0UvY3daT3ZxbURw?=
 =?utf-8?B?dEFZV0xHa3Z5dDNjeE80V2VkVzBSOGx1Z1IreG9GSFpza2o3cDBMZEhaMFgy?=
 =?utf-8?B?cytVZVB2b0pYOEdndUlFa3F2WXpna2RudVpyN1l5ZHBNSVRnU0Q2bzVSZnhR?=
 =?utf-8?B?K0RkTVRkU3dQSmZ3ZEtYaTBVVkd6ZW5nSFZIYnNIYmxzWkIvdWdFeFB5QnBU?=
 =?utf-8?B?OEc2bWM0MTdTcVExT24vTkNMWUFvYkFTQmFjemQ3UzJPV2I3V3lKQndTNGxj?=
 =?utf-8?B?R3BoTGMzcUVXMFdhdjV4a0JnRUhhdU1Ha0RuNlNJT1U5YTlqRFJaVXc2QW9O?=
 =?utf-8?B?WHFVbDJobnNoUk1JdkxocDB5TlRaNzBNSFNsTDNsQ2t0dFhJVGtFUmRKcEZk?=
 =?utf-8?B?bjFhbW1hQUpsRGc2Z21oS1liUmg5eTRVNWptdG8yUFpPS0ltOSt4U081S3ln?=
 =?utf-8?B?eVZGdjZlaDJhUG5MaHRWYk56M1ZUSGc2S0tZNmdqTVJTN2hnbWZsdzRmTVJL?=
 =?utf-8?B?NGpmbkZoZmZkaU8xbFA3TjVmQmtOSDRoR1pYWEJyWm5iQXloOE9RR082OEJ5?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f8e6ad4-692f-427f-b61c-08dcf407a8c3
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 08:41:31.4097 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5H5mLw/zGbnMGWEfM6ycWMVbJUQpaY8I/qtdsakESmRblLT7IO61aBeddOyYbN23HmQTDENl/UAsXn70Fb1Q0MEwPLEy7lNSe4LtzsJnCgo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4604
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729759297; x=1761295297;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rJKXPBooodT326pT/ES8y9qesyFtIHrJ6sIRwinUfwY=;
 b=QMGkdPQGLxxCl4U/XF5I0Q0Ct102xlfYSzzc5okC1nzQADeFGYrXAkN6
 TWzacGrIycbswPLYyFlnsDI41EmcoI+NiIYuBTS2CRYTYCheJ9Z6Ou+ol
 +e0tzEvu1aWT3WPWVOyNCUPegzPIRGeQSdPDZLQncvTQ4GBksYQYZ0uHw
 8qutMvKphysHM2CfVbePu/6eaWOsgkuUYHT8MMvvStkQBhqkDo50aCTXM
 2d0RWswikcxxONmUCuEPWRRrdzEHc38U+JCdxVnkTLGMb5ylQGAQjIyk+
 +DPe1lUTwUwiHjUXrJeh/AfokGcWfTroJhbTVzFkbx6BQPXcjhYug3cLU
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QMGkdPQG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3] [net-next] igb: Fix 2 typos in
 comments in igb_main.c
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

On 10/24/24 07:45, Johnny Park wrote:
> Fix 2 spelling mistakes in comments in `igb_main.c`.
> 
> Signed-off-by: Johnny Park <pjohnny0508@gmail.com>

you should collect Reviewed-by tags, as the one from Simon on v2.
for future Intel Ethernet drivers series, please target them to IWL
(net-next in the Subject becomes iwl-next)

> ---
> Changes in v3:
>    - Adjust commit message
> 
> Changes in v2:
>    - Fix spelling mor -> more
> ---
>   drivers/net/ethernet/intel/igb/igb_main.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 1ef4cb871452..fc587304b3c0 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -1204,7 +1204,7 @@ static int igb_alloc_q_vector(struct igb_adapter *adapter,
>   	/* initialize pointer to rings */
>   	ring = q_vector->ring;
>   
> -	/* intialize ITR */
> +	/* initialize ITR */
>   	if (rxr_count) {
>   		/* rx or rx/tx vector */

Would be great to have capitalization errors fixed too, Rx, Tx, VF, not
necessarily in this patch.

>   		if (!adapter->rx_itr_setting || adapter->rx_itr_setting > 3)
> @@ -3906,7 +3906,7 @@ static void igb_remove(struct pci_dev *pdev)
>    *
>    *  This function initializes the vf specific data storage and then attempts to
>    *  allocate the VFs.  The reason for ordering it this way is because it is much
> - *  mor expensive time wise to disable SR-IOV than it is to allocate and free
> + *  more expensive time wise to disable SR-IOV than it is to allocate and free
>    *  the memory for the VFs.
>    **/
>   static void igb_probe_vfs(struct igb_adapter *adapter)

to reduce traffic, I'm fine with this, to go via any tree:
Acked-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
