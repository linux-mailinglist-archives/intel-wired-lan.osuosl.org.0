Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qL8ALjBq/WkndwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 06:44:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A874F1B43
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 06:44:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6D5884032;
	Fri,  8 May 2026 04:44:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 21kQgKtf_ck4; Fri,  8 May 2026 04:44:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39C8A8402E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778215469;
	bh=nzwLnUwIzj222R0zsxHm4mdj0D9zyyk7v17xnw+Um6A=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2jHj0upAibIHkKPO2jQbyvWSZ3r5GX+oC/Mfl3sWgVJxbJTuY6UOgkzErF2XZ3sZj
	 W5YsYq5Vqi9OcqqX6fnasxF9U1iiNkDsv5b5Om0nrdEm49YrBucTrnzHaNjs3hAGaX
	 Ti6lrnmGq6tpAbQOycNyfAyJuwNAJc9gLmqfFw9nu4EPf9pUzK203v1m/1Mqj1jUJa
	 uFY9ibfqqKtM8nxkvpmKclpcG7AEcdfz7DqoPeDbJbVC2dL5M2cZmteYffXLB3GkHW
	 NRHSLvg1rHoG6/FN5VPBKU8mbXiMzYQV/LXevszXcYp08vnemY5WGk4ImxsaAD+fyI
	 wTDAMxBv8DxDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39C8A8402E;
	Fri,  8 May 2026 04:44:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A123272
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 04:44:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8C02F612CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 04:44:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rg2YpDt5YjF5 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 04:44:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9B2A4612CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B2A4612CD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B2A4612CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 04:44:26 +0000 (UTC)
X-CSE-ConnectionGUID: 4np4RKP6TuCvK8q4mqUZ4w==
X-CSE-MsgGUID: opMfHcXdTFCiy8k98sWScw==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="78199737"
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="78199737"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 21:44:26 -0700
X-CSE-ConnectionGUID: 5tv8DaVaSbeo0QsHbmnCRg==
X-CSE-MsgGUID: B2ZvURomTmaWnjmVXVIHTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="238449639"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 21:44:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 21:44:25 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 21:44:25 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.13) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 21:44:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fnrSPt9stzUpa0SUH5pl5TQ0Hie0VHyTevCOb/xMFSLoeNdSQp9ywc6wehtdzGik2bVMhICxGzS5dHekpaRBUDqqYtoA0ovp/xbq2ZeCEGSBnU9Qp9mfvyev280RZoGYrCZGwKEL4TWqE0iQA3BXlfbZignTHX3fNK19F0PstkUU4qmY7sVZ0BlcsJ/ngiOBXMuJBR5g2SSyR1uVEAlST8ZBL4OPMZK0VqYYTi6gocBkyTTyOqpsWVicLHxLo1UXp+5MO1qthFPkPgr6F0usa4lkwsHJdTdTmE5uiFcLPOAdc/yntAYaYCaCM7UczYHGgICby2/s0cKlZRjcy+c9uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nzwLnUwIzj222R0zsxHm4mdj0D9zyyk7v17xnw+Um6A=;
 b=ncgy9gox0NZHAY/7kUvq3DmFeJsFdhmLPDQJmAD4Gttz10JokToUXot+jCv3ENmW25ELSsw0MFmXyQvDGvfhgjfHMpbBDFqtQ4larHQ4CQ5E1UbxrWhry6nT6XW9E2B0Eq4ijcC6WRnvDYmN6Bfb/0GE9DxmIe3PsNJpf/rS2F9FgEMt+/zNscMUpn0J7HJjA4OR53zfnMJxypAvpOQZ2xhtMauvqsS4uMZ6Mx5No4URqke42cW71bJsozMPLv871GfRO2Xzc88E+Qhkd8j2dEnWUUyXxyIz4kX35LF4JcufKXsQxFb9ZFk3EUB4PqolYKRVTfm3SODXwCEvF1SKbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS0PR11MB7577.namprd11.prod.outlook.com (2603:10b6:8:142::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Fri, 8 May
 2026 04:44:17 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9891.019; Fri, 8 May 2026
 04:44:17 +0000
Message-ID: <dd912f90-9087-4a85-8676-852679845f21@intel.com>
Date: Fri, 8 May 2026 06:44:13 +0200
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
CC: <netdev@vger.kernel.org>, Piotr Skajewski <piotrx.skajewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>
References: <20260508031226.3601800-1-aleksandr.loktionov@intel.com>
 <20260508031226.3601800-4-aleksandr.loktionov@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260508031226.3601800-4-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7P191CA0024.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:54e::16) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS0PR11MB7577:EE_
X-MS-Office365-Filtering-Correlation-Id: 358c849e-45b0-4ec0-9fff-08deacbc764b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: fF2P7F3J0Se+iRKMNAMbezeUgkbl1MPXSbjzG+em2qG3bO3j5980WT8MFm2EkJqXWxQTMg/yHca/yCMAfMPe0vyvl1qbVIJvjjnbfCbNf6T015heL6gCNBxrRxTf1iRBJ+2gsY8dORU2jWerDU+VEH93V9F828xPxT3+P7Iwjlb5jejMA4x0cQdAIND2X6bXlA0IVmZePCwsyOj3oo6fWURYYvjQhDd96UGl6McNjw4kIAhyJXoY4NfnDWR0qzh784WYXebaPa5UJcT19cDWHYHK+A1XeZ3mLsMYbMoH72cYrLCITiyxmwQ24vwPOTAmW4wpb8TrzdkBgq3iCVp/h38qOvDILgT4B3sPI2+uDBwmrMSne2UWSErO2ilnCY3FtwSI1MoZ8j0D+KshkCrEMKm8TcS93h2QGT4B3kXEr1fAUCNIBkeoa3qrd7gT8qhB61fyFvmXGv4K5jd7tJAm6JqFrIECf7G0wOKPf24r/kJKY16AQ6g8LltkpMpwiuwFgkWRVbTD32tEhSHIAHVviEYvP/zoooi23azgdDKrRfzRBepOOxf7ICJW/9kAxWT0rKkyT7tPhHarymHp+Ur4JurjTY4no9sUa0pQIetru+DrUZYkcTO/Hw/F+suGV9MmKwoYhE2BEpchUt9z2Q1Pf82qsq1/ITZPjr10qW2kZrF1V/ZtaSRirGOn7dK9loM0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aml4QStLYURiaTl5blliNGNoWFp3cHRRSEhUa1VRRmNuOTdsTUFZbTRFVFl0?=
 =?utf-8?B?bC9uSWFjaTcxb3NnLy9rVkYyTWluVTdpVVlIZjFmWlk2dzRkaENiM1ppQnpI?=
 =?utf-8?B?OG9rMnR4eFJBOEF1aUtwUWhpMU9BejRTRnJCWmx2eEVybE9pMjd4akMwNEdr?=
 =?utf-8?B?cjRNMlBlZ1dpNkdmNy8rY2F0RXBZV0RBcnc3cW9HTzdSemlSeS9qYjNtMFhL?=
 =?utf-8?B?WUw5N1k3dW1GeFU3T1FZQnh4dExCT1d3OUtnR041VVp2d2FEckE0aUFwN1d6?=
 =?utf-8?B?byt4QVNHc0tiNThtOXZ6QVpxU0JyK21lV1dyR25uZ0FBWHJFdDE0dEJpRnln?=
 =?utf-8?B?U1BvSVdSMXMwL1l3SUpabFNDQ1B1blJTOWtGWXNES2FWYkxqR3d6cWh6TzV2?=
 =?utf-8?B?YUhPRFRVUzNBSGpoYlY0a2xnTkwyM2pNdW5PbS9MUEpZUnFsY29OdTZqUmVF?=
 =?utf-8?B?ZE96Y3N1Mnc4U2M3eW43WC9vZkVrMWMyM1JLMTg5M28vRWZMenJBR085QXow?=
 =?utf-8?B?S1FvYnM0dEppd2dhZEtwZWw2dTBWYlFlRzIwYjNXaS9oSnFRMkM0ckcvSDk2?=
 =?utf-8?B?b2NIc2R4L2YwSkdjb051clY0WGkwc0pJY0NLK3FpRWJxd2tGVXgwZlhaSUhC?=
 =?utf-8?B?UUpsN21SaTBydVhobHNoR2VXRzR3UHQ5bVlYTjBRWENoaUx6dFNucDh1cjZV?=
 =?utf-8?B?TmJ1Y3hkaThiOXp0N0F5dlVqdzV4ZXRkN3pvOVlYZnlyK0E5WEpEdUY0N0lJ?=
 =?utf-8?B?S3BXdll6SU9HYkpoWm5QZjcydjUycmFWYzdZZnlDbjdua3Z6RWFFNnZlN1Z1?=
 =?utf-8?B?NU4vWERlYnRuT3YySFcyNGdqTFU3NHJGVXo0QmF4NFFXdStOVDJVc29tZExh?=
 =?utf-8?B?ZzczR3cyU05QOVZPNEpJY2ZyMWY5MU5PZ1dyOEVKUUlMMjFKSFlqTkU0bm93?=
 =?utf-8?B?ZU9ad0Z3NWQvWkQwSWpWaFJ5ZFcrYmcyVFI1ZC9TYTU4YlZHRHNZTktmbWpP?=
 =?utf-8?B?bTltU1FCL3NpRjlkMUxyWWJ6a2lzd3R5d0NkU05rNHRSTDJGVDJ5RUx6ZmhY?=
 =?utf-8?B?QXY2aEpNVGZRUE9vKzJpUzd3eHh0T29WdzdnRVhvandhMmlFMkRWMWFkY1Fz?=
 =?utf-8?B?S0ZBSmMwOXhITWpFbGxHSm0vRklvVlBTdWRkREhIeEZFVTM3QWRERlVCaWVZ?=
 =?utf-8?B?RFRqT2JFNUlsbUlSUDYxRFpSa2lqL1lNWHFKUWpGSUdOdytWWXhWWFFHcnlK?=
 =?utf-8?B?djFqSzIzZFhlUnFOQ1p0WGF5TU1mbk1vRVJ2cjlPWU5VWStOR3FZSEI4M3ZU?=
 =?utf-8?B?dmVnQUF3M2dSS0hySGU0U3Q1ZnNkNUViZTg2V0Fia0NwejFHeWpKaVhLZ3pz?=
 =?utf-8?B?VXBBV3liNXdoT2htNXJKM1A5TThrSU85Z1RuTVVJbGFZRi84RENTWjBQUC9v?=
 =?utf-8?B?OVJIYjlKMjREK05xOG5OUFlNYUtORFozd2NGWkRtbHFaMTg3Y2NGVDBTWTNv?=
 =?utf-8?B?T2MxRXJPcW5vWE9BTFBOSEtmMyt4YUpVRy9BMVh2Ritpa29oak5wWXY5YU1H?=
 =?utf-8?B?aXMrVFN5SmdjN3FseXkxcytYQ2tneGx3bjdCcS90NjNnVUdjYzB1M05mTkpx?=
 =?utf-8?B?OFljd0xZek1Dc3BBcUhGMDhlc0w5bzJuVXJVUUQ3TUJhYjlKbDlpRGhmc3NM?=
 =?utf-8?B?VUVPRVJUYWJiUjBEK21MRGFrSlkzeDRrL2JTZ2FHODdOVXNrbU95YWF3dVZZ?=
 =?utf-8?B?UTl3QkZCYlU0a2ZnSkF5azR4MU1vU0xveElEWStrdzN1SEJqQWllSldRTG1T?=
 =?utf-8?B?WVl5UWoxUVR3YWJDb2F0WXVtM3NUckx1RzN5Q0RUZHgvSDRDRW96aEpLRFc1?=
 =?utf-8?B?cWtLS2NWWUZXR3A5bCtHUmNpTnU2cHBMRm1VSGtPNWg0eXZlNzlSd3A3Y2Yy?=
 =?utf-8?B?K3NQVHNhUWVMOE1lbWRkZEVldXJWTFBucFdvaE5HTzYvTmtpVmpiL2tWVDdL?=
 =?utf-8?B?Um5CdndBYnJlYS9NTU5mcURpYjdEcWtSZUxTUFZkVUNIViswWmRydEVneWJG?=
 =?utf-8?B?bDJ3T0JVMWcxbGowK0lTeE5ISEhKMkZOWGRVOWdnWjhvT1Z4aHJHZnE1cDdt?=
 =?utf-8?B?ejJLeXF6RmJiSU1xN2p6bWxBNGdWZ1JTUHlKdkEvK1pnWThXTFViYVM5VGkx?=
 =?utf-8?B?b252SVRrVVZjNmN6RDJteVdxM1dHNFNSaGV5SWQyZ1JCV1lOTUNjdlc1aGZD?=
 =?utf-8?B?TlpWcEpYSHZKZWd5SHZRL3h1aEpxNmI4SFVtdXVoc3Z6OWVNTUVIRnhFVXox?=
 =?utf-8?B?TkNiRnlnSlBpcjBMc2p6VmZaUjBkUlJTQnBvRUNaeFNBL1pwZHI3dVN2dnor?=
 =?utf-8?Q?Wa6I3RccbvOnwp04=3D?=
X-Exchange-RoutingPolicyChecked: KXPhvsa5xKyuyzPOygb+h6y9d1bY8bvTvwZYXdy54zZYV7lCUFNVXpSMji0qdbqdDkYN41h8oDSwz4As3hlK7eTdx0Ccp1dANRmL4GgACTTeon6zWLQDuPgcc7m/dhfB5CSjomR8ct6GJvoe65GxD1ThwJ2Y6wBjSqjXofyQvfV15wuLEvuNvU+yv5Gbr8hIEiVHb+uoy3NqLvXfC/BSC1IZKi8+HnQoHZ/3264A/j7ycsSG94n2Tym6lkHIGGooydFKT4hHr9pBIX/3cgo1oaXmaR5aKFE7Hs55JqFnN5JDxGFYNlucP/9noLeOnfb354/DxxzWAXZkCbocvriGFQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 358c849e-45b0-4ec0-9fff-08deacbc764b
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 04:44:17.4243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V6/eEOOw2GIYKoHgK6smvFIq3sdNdUnMLQhZW5DtlNSmZnCufuOyvin0hW+wBUs5A1YhmGmOLYFD1WKmA/dPyZLq8GT42Uj1RiVIGpHaGjE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7577
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778215466; x=1809751466;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e+m9hm53+Yximi2Sdne9yTATmDd0xL6Ms1Pw4gJR2HU=;
 b=UJPtVGxtnn6UqlBehz7q7cHF+gGJOxFgilhvhMLQ2VHhT3t8LQvoqX2Q
 7EYUQ/WYiaUh19iUYLiP1T/ke2PvHkLKHGm4q2O9PsufkmABk8ua3d9aZ
 dJ1cpP9E+ew/ja+eZcOlopcCtMng1tUfu4wtXN0MnMPUv4BavI4NEMStq
 2rM+sqBVDvBNlasZo5C9OFxDt+ay0awxK6onBBmtD2RhitCZh5+UhcnIh
 L8Ct2BAZOOjAmMay5kHiJB7eiEXPYo/kWPNFXUoW4WMtj2JUXDqAl8Rhs
 r+GOXry86qEsOmvLvs3RDcl8avPxLIk+vkEFz8O1FfWnd7dCy3rU0d7n0
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UJPtVGxt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/8] ixgbe: prevent adding
 duplicate FDIR perfect filter rules
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
X-Rspamd-Queue-Id: E0A874F1B43
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:piotrx.skajewski@intel.com,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action

On 5/8/26 05:12, Aleksandr Loktionov wrote:
> From: Piotr Skajewski <piotrx.skajewski@intel.com>
> 
> When the same flow specification is added twice (same 5-tuple with
> different sw_idx values), ixgbe_add_ethtool_fdir_entry() silently
> programs the duplicate into hardware using a second FDIR table slot.
> This wastes a scarce FDIR entry and can cause confusing behaviour
> when deleting rules.
> 
> Add a helper ixgbe_match_ethtool_fdir_entry() that walks the in-kernel
> filter list before programming hardware.  If an entry with an
> identical filter (excluding the sw_idx) already exists, the new add
> request is rejected with -EEXIST.
> 
> Signed-off-by: Piotr Skajewski <piotrx.skajewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 27 +++++++++++++++++--
>   1 file changed, 25 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index ba049b3..a2009df 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -2938,6 +2938,23 @@ static int ixgbe_flowspec_to_flow_type(struct ethtool_rx_flow_spec *fsp,
>   	return 1;
>   }
>   
> +static bool ixgbe_match_ethtool_fdir_entry(struct ixgbe_adapter *adapter,
> +					   struct ixgbe_fdir_filter *input)
> +{
> +	struct ixgbe_fdir_filter *rule = NULL;
> +
> +	hlist_for_each_entry(rule, &adapter->fdir_filter_list, fdir_node) {
> +		if (rule->sw_idx == input->sw_idx)
> +			continue;

this if makes it possible to add rule with the same filter AND the same
sw_idx

> +		if (!memcmp(&rule->filter, &input->filter,
> +			    sizeof(rule->filter))) {
> +			e_warn(drv, "FDIR filter already exists\n");

return code of -EEXIST returned to the user is enough,
no need for a warning here

if you really want a dmesg entry, then make it info and of not alarming
wording

> +			return true;
> +		}
> +	}
> +	return false;
> +}
> +
>   static int ixgbe_add_ethtool_fdir_entry(struct ixgbe_adapter *adapter,
>   					struct ethtool_rxnfc *cmd)
>   {
> @@ -2947,7 +2964,7 @@ static int ixgbe_add_ethtool_fdir_entry(struct ixgbe_adapter *adapter,
>   	struct ixgbe_fdir_filter *input;
>   	union ixgbe_atr_input mask;
>   	u8 queue;
> -	int err;
> +	int err = -EINVAL;

RCT

>   
>   	if (!(adapter->flags & IXGBE_FLAG_FDIR_PERFECT_CAPABLE))
>   		return -EOPNOTSUPP;
> @@ -3050,6 +3067,12 @@ static int ixgbe_add_ethtool_fdir_entry(struct ixgbe_adapter *adapter,
>   	/* apply mask and compute/store hash */
>   	ixgbe_atr_compute_perfect_hash_82599(&input->filter, &mask);
>   
> +	/* check for a duplicate filter */
> +	if (ixgbe_match_ethtool_fdir_entry(adapter, input)) {
> +		err = -EEXIST;
> +		goto err_out_w_lock;
> +	}
> +
>   	/* program filters to filter memory */
>   	err = ixgbe_fdir_write_perfect_filter_82599(hw,
>   				&input->filter, input->sw_idx, queue);
> @@ -3065,7 +3088,7 @@ static int ixgbe_add_ethtool_fdir_entry(struct ixgbe_adapter *adapter,
>   	spin_unlock(&adapter->fdir_perfect_lock);
>   err_out:
>   	kfree(input);
> -	return -EINVAL;
> +	return err;
>   }
>   
>   static int ixgbe_del_ethtool_fdir_entry(struct ixgbe_adapter *adapter,

