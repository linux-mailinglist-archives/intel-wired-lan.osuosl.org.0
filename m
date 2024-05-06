Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 907338BD1D4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 17:53:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1443A608C2;
	Mon,  6 May 2024 15:53:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C-vDXVwhXd5R; Mon,  6 May 2024 15:53:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 391EB608C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715010810;
	bh=v1XF2rWyW6BcTWtzN/SodE+Vs8C/ul+evcjJwvjzVgI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RwuiDpssIgN45xB//2EyguHJ4jQuhZwmdhlHIDCs6NPr5p0GdzEDrMrl7ZEw47gZk
	 Qb9azFOtGkbWJ+WtpRQ3z3NvNOLd1UVYiC0x3rwW7ZcNnd8tLPVBSDjGq7TlGZ7DGc
	 F/JRH0LHw+vkoMhF5GKyynAnWQ86AEvUM4U1BeW7ssuqSZCo/q8mLMJbq3gUDb/X8o
	 0ILk/pxLgkeWiX1aiEWgn1SHcOkdd/YODh2fL1lyNchGn4ATMB/A9bj8X4DF3CrBAL
	 HKEOfcDODjUeFosk0KC2jsS2Lf3axaRzh4X+2BW0jNNL3LHjfccI+HMOWlbptJ8urp
	 zBrPqHQQTseJA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 391EB608C6;
	Mon,  6 May 2024 15:53:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 001B81BF471
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 15:53:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EA17B81D02
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 15:53:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fNCyx0vSoG5x for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 15:53:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 266FA81CD0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 266FA81CD0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 266FA81CD0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 15:53:26 +0000 (UTC)
X-CSE-ConnectionGUID: LuyTywenTsuzAmNcqedQnw==
X-CSE-MsgGUID: BcsXcyvTQC+t45O8EnDfNw==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="22166926"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="22166926"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 08:53:25 -0700
X-CSE-ConnectionGUID: GOUXvTVPQI6AnjJwpHQrrA==
X-CSE-MsgGUID: a94xEw8aRWK/xpqtlDfdDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28790668"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 May 2024 08:53:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 08:53:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 08:53:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 6 May 2024 08:53:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 6 May 2024 08:53:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zj0XaMci5pto8I9IK2ZKZ5hdyxc2SBYvIQXEJH6YMprS7iB+LTqta19iSYN6uSz06bebW3/rf4OWCUErBYh8xfqqDtjapjKXHsVfnhmbj1GI/40Qn08t2nPKoPMoGKTKkQSjKlQlojeyFOyH5WnAsXPlagFgDjio42n/y72bs6QxoXmHjnRHesvbmVK3yMYfzbricSWRPekwLnFaHpmiheoGe3yrMAE0tyjV73eOh3St7QrjehHu4eRov4v7g/yELtLibEgV4Qi8mSfkJe1gGvsmJAbtEaTfNxtpb7LGLYRrpS/assUDM5TmPR1eM4HT8BCNT3gQoyICljk8oWWCcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v1XF2rWyW6BcTWtzN/SodE+Vs8C/ul+evcjJwvjzVgI=;
 b=Z7JAZ0TadMrPhLvB23jOn5ftCtclWs1SHJIN0LEP8xS/rkOESHyXNnBCdeuY21etsvU1Kd6CBHPAEEBvTT8F7quYoNdY4nYXRkQToQvUFAE7wmcsrmP/C4ioHr8WgOEuqbPbzXCI1I3wgFL+qs4VP0PqRj0+m3LCsMoaq2HDD0hILD9WNcLpVy3r1dOmJ0cd4FCIDLvCV1kI69TTpxlc/wuQ5XyV0kuSWX/rE7SfSZdIxsZai5CDZw6nDSVsTX3r/fIln9I5zI47kRp3fxeW267I0gjOknKBc9oWF2bBIdFXAP9k++CHi24CNbjHnWxA9TZoqxuL1xrRuzNaLt86Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by DS0PR11MB7443.namprd11.prod.outlook.com (2603:10b6:8:148::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Mon, 6 May
 2024 15:53:22 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::f174:29be:e20c:113f]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::f174:29be:e20c:113f%4]) with mapi id 15.20.7544.041; Mon, 6 May 2024
 15:53:22 +0000
Message-ID: <7f533913-fba9-4a29-86a5-d3b32ac44632@intel.com>
Date: Mon, 6 May 2024 18:53:14 +0300
User-Agent: Mozilla Thunderbird
To: Ricky Wu <en-wei.wu@canonical.com>
References: <20240503101824.32717-1-en-wei.wu@canonical.com>
Content-Language: en-US
From: Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <20240503101824.32717-1-en-wei.wu@canonical.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0027.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::11) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|DS0PR11MB7443:EE_
X-MS-Office365-Filtering-Correlation-Id: 8015a659-ab48-4bbd-64f6-08dc6de4a7fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?elNqeW5ZOC94a3pEcmYrbnFTRE9JUFNhZFdHOExDcGhBSmlERGNkOXIrZTBT?=
 =?utf-8?B?ZC9pSkJGOWFQNzVvVnUybTFod295TkRrVVFRUUh3NExna21Bdm5HYlc4T2ts?=
 =?utf-8?B?azJjdnl6Y0hRblpCSHBRTGFwaGVyTHJyWDluQUZVVDhNRkZ0WGw4RzF2Q0Rm?=
 =?utf-8?B?K3F6QW02NmVTdWJweEZaTzJLcUNETUY2VVh3YU9YZ1g4Qzh5V1RKYURPamU0?=
 =?utf-8?B?UHh5dnVZeSszazhFWnZFVVBnUXcyT01aWmJ2cmJYdE04WCtiZ0hnMzBUeVVO?=
 =?utf-8?B?QTdHY1ZoSFZXYnhydmxRck1Lc2x0aysyZm05KzE4azdNV2djelFEMWVYSHdo?=
 =?utf-8?B?dm1PeFVKOVh4MU5QYU9seHl6V2ZidkFOcFNxUGZ0SGpSU3had0sxZzgvUUhH?=
 =?utf-8?B?ZXpOQWxWK2lNOVBoKzdUQkNTSmw5SUlJcmRoUnVpa1NmNWc2d25ObkUrSkpy?=
 =?utf-8?B?RHAwbU5Wa2s2RjlNa3REOUVjWnJ2MWFJaGlYT2VPc3NqYWFmUmkvRUNqVmdx?=
 =?utf-8?B?S2tINkFTOWl5Qk8yb3UyekoxMUNJYUQrRHZvaXNISlAyeEVkRkJaM1FmdkM0?=
 =?utf-8?B?SjFta2h5d3pTbDdlSDNZbldIbW1mNytFajZSM05QcSt1bUtHTXJ4ZUlSeHph?=
 =?utf-8?B?bzBqckhzbGs0T0JWREFrS2NDcnhVN1ZNMm1HNjJ6b3JDbnJ4ZERoWkROM3Va?=
 =?utf-8?B?UWpjdHd3clZFU0ZvaVI2MHRpQllidE01TlJoY0xnemhlWlpodjFENDlQWG5Y?=
 =?utf-8?B?eXkva1Y3NW92OTlIZGlDSitnV2VIZ3h4a3ZLUzlOTURIeFZKNllZNWt5dkdt?=
 =?utf-8?B?bXd0N3h6MmhQSFZYU0VnOXJBeGowd1dIUFBFdWNOSjFFckN5UFRhNUpYVG5R?=
 =?utf-8?B?MForaDJJTTJFK01ER0l2eXhsa2lXWjBKMDlsMnB2UzdSbGxLWUoxZkdsNitS?=
 =?utf-8?B?VXd1S2JDSjNyUnM4aWtNbDczdlU4VzZDSWVHRjhsciswWW01VythWGxpZXhm?=
 =?utf-8?B?NTVJb00zZUFueFhRWEg1L1IrT2lMSkFyVVpSbURKajc0aG9BSkc4UlM0WjdH?=
 =?utf-8?B?NzlkMEk0U2RtTXkvY3RNbmlST0tqbXA1OVhzQ1pOSzRCcmViaVBQR1R3M04y?=
 =?utf-8?B?VEE3WmlIc2x2RE1iL0xmWTBqdHBpRzdyZSt5VWl0ZVh5TWZuZXRrNFZtalBF?=
 =?utf-8?B?ZXh3REpXTHRFMHoxd3MvamoremM4UVNsVEs5TzNTeHlDVWVOSjVRTjA3dk5B?=
 =?utf-8?B?V21nbmJ5QW5NaWF4a3hqajFTWUpDKzl0RndNUjhEZVFsYWdVc2pGZ3QxY1dX?=
 =?utf-8?B?SW9RbVZMWWJMVE5tazVLMVY5S01aTG45blVMY1RXWnBZVlZPOG5RcTRQMEQr?=
 =?utf-8?B?QmNKVTk1VnpVem51RG9QTEx6UDNwU2xmbG42b0R4T0ZXTmFicU1yYTd4NElG?=
 =?utf-8?B?S2F2ZnhjODgrY1VUdm96N2wrdUNyN2hzQTBFaEtiU2RCSFA5OTQ5a2ZTL0k1?=
 =?utf-8?B?dmJkSk1LOVFaMnNiOXJldlZ0eG5pMXByanJlcVRvN1RJVEo0akZHWXdiZXoy?=
 =?utf-8?B?eWg4b29HVmJEV2d3eXFTMXBaemVMWnVoSE1IQmhmdmRmVWR0SkNMMjdsWFNp?=
 =?utf-8?B?clFOZlZkaHpUK1BzMkZPOTE0V3k4eDRNbisrNGxZaFdyaVhyeEo2M21MSURB?=
 =?utf-8?B?eWpSNUh5MjBYeUprYUNubituY3ZOQnVRUzlTcE9ScnpsR0tUN3hPT3p3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SHVINTdVWHVTNU9UZGNvS29UWlVFcklFT1RDaUVzbVBkcXVCOG5VS1hHaHRT?=
 =?utf-8?B?RVkzc1pVYVRhYTVEZFJsOUk0N3gzY211TDFYQmZHOWxjQUFWRVB6d3lVa2Z3?=
 =?utf-8?B?a2VQL1RkSDQvU2VXOEtWSzY5OGNFVnczdG1udXZUaERDaGJvaXZUZ0crdXhU?=
 =?utf-8?B?UDhicmZJaklaM2FWTzZ6SENPdzRVemw1eUY4bmdUMFhpN1RKeTRJYUpoQVRJ?=
 =?utf-8?B?MGsvTnhsMGZvTUNwenl0U1laWDdheGt3VVhsdXU4UHJlMkxJWExyVXNrenYr?=
 =?utf-8?B?RUFXdlZQaHA2TzBPUkNOVmhXZnk1UG5SQktGSTUyRGRpVjVpSHdpbkxtREcy?=
 =?utf-8?B?RW0rWlVMQlo0SFhzSWVncmtydUF4V0dOOE50bXFVYkNDL1BVV1BuVDdMQVFk?=
 =?utf-8?B?VXdicGt3MFRmMHhUdGVBYWU4Zmt0ZmlIRlRsTmZ6N3NBRU10NXpQZWJ2dUlU?=
 =?utf-8?B?K2h4R2E3OVY1KzNCN1dqNDJPR2lEQkwwekh4MGJpVVphNlYrYmU0TWZKajN3?=
 =?utf-8?B?dDBzcWppUys3aGNSYVVxT3B4bFhKemdjY2d6eDVSaURNSU1jSDV3bnFTT0NX?=
 =?utf-8?B?QjVkaC9CczNHN0MwQ3RNNzVnOFRXM01najFiVVVwemp5dHN0MzVoN0UxUHYz?=
 =?utf-8?B?bXptSHBLQmpEQXlIaWZrK2w3c0ZXT2xLL0h2T2NJZ0dJTy8reVNwQ050a0FF?=
 =?utf-8?B?cDJVaktMZEdIb2hDT3ZSb0lXRGd2Y2JrV1lTRTgrVTdMVldxTW0vaWpHNFpV?=
 =?utf-8?B?K2N4YVZIbFVrekkvYnozY216aXZDYkE1ZnJnSEJrMDFJRm40NDA3RUllalFv?=
 =?utf-8?B?YXJJdkp1YStBMXJnZkF6L3BtRGVFbXJYa284a0ErTkJXdDFFcTVWSFhaSkQ2?=
 =?utf-8?B?ejRjb29sWkpNWHFvajJ1Q3ZaV2plMCtsQXVxeVBUYk5BWnJEdWVwWHI0TU1l?=
 =?utf-8?B?S0ZDMGZJWmRmYm5Qc1U1RGoxRGIvcnJldThRT0NBRHBsY3hJbDZBNzlGQW5y?=
 =?utf-8?B?cGwwTGdvNVRiR1FZMGNjNFkvTmFrSmtwRmh6ZmFSRTBLVXMwMG0zMUpVTXBF?=
 =?utf-8?B?bG5wQVhBOUxpMkd4TnViYzRyNFUwYWk3S2lURHM3SlpaZWtnSGxIdkkwVWw1?=
 =?utf-8?B?U3dMcmdPWGRCSkVjbnlTRFo5OFNqZmhQeWVoN1Y3TEgxUE9TUmhNNTFmZm9a?=
 =?utf-8?B?Q3JLWUg0UHp0MW5kWm92MXNGeWhzRzdObEZ0S2hGOEZVL2hlVjY1UllvSURY?=
 =?utf-8?B?SUxLYVBYbVJhVFJ5Skk5bXBTTm9Oa3QvL2pteWNaR2hlemVvd1FDZEdVWUxk?=
 =?utf-8?B?ZmFYVm5IZFpieVA0QXRhdFYxbTZaL01ReHBPMHVTbEY1S2dVYXBvaEtmY3Nw?=
 =?utf-8?B?L1ZsRVF6ZEVEcVRiTE10ZG1EREVTcStTeWRST1o1YnZZL1M3TkxDUFJkTjhB?=
 =?utf-8?B?aDdSSDZ6MStsSFY5c0pXUmVSSklOdm1nS1RobEtxYmg1NVZqQThLdGJ2S1Iv?=
 =?utf-8?B?NGVpVzVQTEdCZXBMakhXUm9xS0Y3WTlLTnY3SEk1VWR2T0FSZGx5SzVrU0Qv?=
 =?utf-8?B?dmZDN0RFOUZKekVDeWgxRDA5Mi9ERlVaTEJpUzJxOUloQldrQStsVk9sVmNi?=
 =?utf-8?B?UkRPTDM3TEtVWTZ6NmxySTdtQUJCcmlwYlViVHlweWVuMkpscm5RSzZJVWJh?=
 =?utf-8?B?K292MEw5ZUlEak1hYUJIZVQycExwa2VJTHp3cXZ6NlBMUE1nbnNtd2FxaklD?=
 =?utf-8?B?RTVTQnB3RkdMdWdWelNEV3RRQTZDTWhnRlJDLy9iMlJsTEx5RnVveWQwS0Fr?=
 =?utf-8?B?bzVsUWI3bFZsbzVZSFNIV2kvOFV3MVVzZENrd3NhTnlIOUo2cGFqT2JGcDBv?=
 =?utf-8?B?aXh3WndnNnVJZ01zZUFIajJCZW9lTTNvNHNoNHJnMUNHdndmNFZpSlBTVjdL?=
 =?utf-8?B?Y0dHdnhaYy9pVnlIWUNyY2lTeWtYV2hXaUJhVlJXSmlCZ1laaUlDMlZzbEQ2?=
 =?utf-8?B?VjE5d1cvZ09VNEMwTStydy85WExoeW9YMHlzdm5DTlUwVVRiUEc5UmF0NGUw?=
 =?utf-8?B?U3VLb3lZTityaFF0bUo2ak43Q3BSVVVleXlUUWdPR1YvVnpjRjFYMUtDUVVN?=
 =?utf-8?Q?pqgMo1hrIUTIjmHzKT3PjhILi?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8015a659-ab48-4bbd-64f6-08dc6de4a7fb
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2024 15:53:22.0960 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: APSkA+GQTmaZ+R+KjT3OBXVWlTUSb+zGvMC0qBrHZgaBaqpL1m8DwJYH7XoxES4iXkTX+GtpV5XBv7Q+AUXy1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7443
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715010807; x=1746546807;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MgP47ccRyiN2YQozNqKM60jOI6a1fHlhiwZooKu6XX4=;
 b=QMQumWUSxrkRZOrNq6eqM5p6a21kkAIyoCmntNDzOkqZirsP2sEf1aFq
 ouN34yAXpR3DHCYlgXPx35fXmVoCsIhqKtevMGaJPx3G/BXVo8FCIFs51
 AegQ8PkhDbKIFNrwjRSQfQFWd0sUL2CvrGmLPQcIududt1DeLZoXN++TQ
 0gWfWJKLOWJvxumdmpoUDdzgrbBjOrTPmauVD4yCF/KL7Hno1CyN237sj
 xG9x4l7l3oPlG61nKmHDDQi1iBOIgTpW29wSp4V3mzTgPpU+JlxEA1kjW
 8/ry2a6YgDKEUSyZmOii6zcPbThsY5zL5BX6fk8hZthyMIbN/6OCi09bV
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QMQumWUS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/2] e1000e: let the sleep codes
 run every time
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
Cc: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, rickywu0421@gmail.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 03/05/2024 13:18, Ricky Wu wrote:
> Originally, the sleep codes being moved forward only
> ran if we met some conditions (e.g. BMSR_LSTATUS bit
> not set in phy_status). Moving these sleep codes forward
> makes the usec_interval take effect every time.
> 
> Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
> ---
> 
> In v2:
> * Split the sleep codes into this patch
> 
>   drivers/net/ethernet/intel/e1000e/phy.c | 9 +++++----
>   1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
> index 93544f1cc2a5..4a58d56679c9 100644
> --- a/drivers/net/ethernet/intel/e1000e/phy.c
> +++ b/drivers/net/ethernet/intel/e1000e/phy.c
> @@ -1777,6 +1777,11 @@ s32 e1000e_phy_has_link_generic(struct e1000_hw *hw, u32 iterations,
>   
>   	*success = false;
>   	for (i = 0; i < iterations; i++) {
> +		if (usec_interval >= 1000)
> +			msleep(usec_interval / 1000);
> +		else
> +			udelay(usec_interval);
> +

I do not understand this approach. Why wait before first 
reading/accessing the PHY IEEE register?

For further discussion, I would like to introduce Dima Ruinskiy (architect)

>   		/* Some PHYs require the MII_BMSR register to be read
>   		 * twice due to the link bit being sticky.  No harm doing
>   		 * it across the board.
> @@ -1799,10 +1804,6 @@ s32 e1000e_phy_has_link_generic(struct e1000_hw *hw, u32 iterations,
>   			*success = true;
>   			break;
>   		}
> -		if (usec_interval >= 1000)
> -			msleep(usec_interval / 1000);
> -		else
> -			udelay(usec_interval);
>   	}
>   
>   	return ret_val;

