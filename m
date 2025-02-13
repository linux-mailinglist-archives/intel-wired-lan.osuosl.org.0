Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 740F4A347AE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 16:37:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B7526067F;
	Thu, 13 Feb 2025 15:37:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h-XM1JDHmFCU; Thu, 13 Feb 2025 15:37:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0B2B6066D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739461052;
	bh=nDTj51Ls2pLCQPDiYQTjAhpPU1wpGsEtzedElhosqU8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kxjSIH99sVSLs+OaBoSOJCQoFbtG+sra0s/Ot1EbE/DAJ54Kvw7pSqfelkCzfeATv
	 +Jl2m9Kcg4Y9RhGs4n0hh8ppJZnOhzDZhqDsOrxFvEHtTBscjli/0n0zci26VOqK4N
	 aYpcnwl/qc+QcsSYHDva41T0V/NcXd0q4Ar2naXfBiYRDYRL+iaVITLDwQe3YdiBEI
	 ZA0/dnOpZCHSBZQyuZS9Bl9Gh2y0AcWN8dpA/9UvXlgqh41rasEP6FVF+/LSzN8Dba
	 HJXHocjl3k0KaeODTGS3tYOxteXrSgDZ/VOBr4MDPzDXlZpJS8kP4Pv36uAsuSnqfr
	 Y96xW2EL0uhCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0B2B6066D;
	Thu, 13 Feb 2025 15:37:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 069EB12D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 15:37:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 00F43829FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 15:37:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G776gkqYqgfb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 15:37:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ED8FC829DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED8FC829DC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ED8FC829DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 15:37:28 +0000 (UTC)
X-CSE-ConnectionGUID: 7aajugH/RXqbyB8HGRTIYQ==
X-CSE-MsgGUID: BRdqDVhJQGy+TRcIl7Lu8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="62638625"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="62638625"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:37:28 -0800
X-CSE-ConnectionGUID: yOCSOSoBT4yFMY8lRmdV6g==
X-CSE-MsgGUID: ieQ7FdDWTW2Tfy58fa5Sbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113043483"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:37:28 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 13 Feb 2025 07:37:27 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Feb 2025 07:37:27 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 07:37:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pws49/K82x0oEwmhf6Nsqjoe/c6+5HfbskaaTyTFU16jgzmQdbrIHLtNW2EDtCGw87HfKDMnr4xf8fzxMr4EN3wGstCNJ8Dy39RVqjGL4VtkpDNBjLM36yIKuwaMuPaWUnvek1DtTrE2NGX+V6f+IeZ2g/4bWIOCTTP6En/lpypsXTQojjhcDsFNI5B1HZSwSkEqrOZlr3khUKdcBWbAX4evOj5c7p8jN2MovmybxSY4SOm+L4LDETiB3GBGVMpR4S99uLQBWOnduY+4XQZq2mzvq8uGQ5oY+WKYsEe/mO75LYCjMsFXABbrwIMVCWFCgauGhK2jQF57QoLqPEJCGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nDTj51Ls2pLCQPDiYQTjAhpPU1wpGsEtzedElhosqU8=;
 b=r/6nywqvXuuo57noPETc7GytvzdMMwtNWI5sWER4ZEfSakNvX+UrMrDhAjzn/Yse9FOIkOl+42Z+QiIvTz1PpZkANRwVsbZdxcqaTn0EZ5/QYTdRCzVUads1q7rgigctPhy3Q6QkGRrceikDlRTXzEkXxDV488OTeIXV/TkcK3RFxKwRVacZsi+teC5DRch2Z1rMffA1mTkpPGKvLrOlICKP+GErflPiSZfuBbO8heQFeY9gbCpRfGI4VEnPLG+UoL7D9PuEmYJJEpoX1XDHV9cGxf0V3kuvKJJQ9bye8Zf0fOQDnYcS4TwOQFw6MmFtPdS+gfFER3ZcWz61FglTjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH0PR11MB7585.namprd11.prod.outlook.com (2603:10b6:510:28f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.11; Thu, 13 Feb
 2025 15:37:24 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 15:37:24 +0000
Message-ID: <d19211a1-b092-499a-aea2-d5addb263508@intel.com>
Date: Thu, 13 Feb 2025 16:37:18 +0100
User-Agent: Mozilla Thunderbird
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, Jiri Pirko
 <jiri@resnulli.us>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>, "Polchlopek, 
 Mateusz" <mateusz.polchlopek@intel.com>
References: <20250212131413.91787-1-jedrzej.jagielski@intel.com>
 <20250212131413.91787-3-jedrzej.jagielski@intel.com>
 <cmywoei5shisdjbt7ipv6rmfxx6jgafu2ccb4xr3phq3ealx3n@kxsdwd6u5bgk>
 <DS0PR11MB7785E7F829BFD1A59AF16048F0FC2@DS0PR11MB7785.namprd11.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <DS0PR11MB7785E7F829BFD1A59AF16048F0FC2@DS0PR11MB7785.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VE1PR03CA0010.eurprd03.prod.outlook.com
 (2603:10a6:802:a0::22) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH0PR11MB7585:EE_
X-MS-Office365-Filtering-Correlation-Id: 37a0be69-069b-47ce-f954-08dd4c444fe8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eXNMOTZnb2pRSElsTktkSGJpSWhRQUw2NXYzZmtHRFlwSkVob0haaVcrQWwy?=
 =?utf-8?B?K3RkN2ZhTnFHR3lnTkZScDNJT0xLdG85V2w3MVIyaU9SdHhwUzdLekYyTHBn?=
 =?utf-8?B?cGgvVmNmeWNJdVc3NS9SZ0pFQllxQ2ZkUlRaelUyZzBKdWEwckgyd2NLNml3?=
 =?utf-8?B?cHhRdDNybEdkU3Z3T25aeHJJOHdQMjkwbEpzcXhoMXdqd3pjVnlpRG9iVU9H?=
 =?utf-8?B?SlRXQW9zYnBvRGkvQU1ZOTM5YlRZeHVWWU1jRWRwTGJYcTBLbWlBY1NVcHls?=
 =?utf-8?B?b0szc0kwV25JZ3IrRlBFclFLbUtPUDV0NUdzMEYxUndvdmRnMS90S2ZKLy92?=
 =?utf-8?B?QVhHMHdFa1hhNWlHZTJKd1ZvSUg1K3RhdTZWYlhyTVJoSEJGQVFsYnNQNXBa?=
 =?utf-8?B?b3NtRWFNNTVtckx6TkQzSnFmYkZWek9hK1VrcTBZZEJ2cHh2Vk95Q1ZzbWZ1?=
 =?utf-8?B?bmZkZmRZUUVzeEtrNlVObUFEOVpxMW1zRUR6SmRrQkRRbWNydlF1SDRPUVBj?=
 =?utf-8?B?S2V5Mzg4TVFRVkI1ck03TUFrK2F6bkljdDhvWHVvOVhsSG5XbWJiWDhmOU1X?=
 =?utf-8?B?c0dERUs2SXZtWXFiMnU2YTYvVXJGQ0U3L0dTRDFUcTVMOWhMUXZ1NjlhdlZL?=
 =?utf-8?B?SnpmTCtxYTFLWEFPS3B4OGtTS3VZbkdiYnY2UlhXREI5L2ppUHgyeEszYUhk?=
 =?utf-8?B?Qk1LYjJpdWRzNUhUT0ErQm9iTWw0ZFFweDlLWmRYVmRzVzY0K3NhaXYvT0NE?=
 =?utf-8?B?WGRHMnBZTEFiVkxYUkJlbEtKS1lwVUY0UW0xbERleks3QktzZWlxY2hURWpR?=
 =?utf-8?B?Tjg5Wi9YdGZKYjRSOHovUmYwOVphV3dmbStEOGI1dnRFc3pwQzcyemc2N3Rs?=
 =?utf-8?B?RzgxZGpnRDhWYWtQbFhuNXdsUTgyYzBlVnZycHgwOGl6amRjVTVtMHkrdXNj?=
 =?utf-8?B?YVA0S3JQTlBxUmJPbDJIL0RZTjdObEw1TjBYSTlMRVAzeWxjUTNPeE1SNVNE?=
 =?utf-8?B?OHZQWFVTbjRxL0ZtcS84VVRqRTJiRThqUy84bmczaWJMTndKeEU4aTdYWGl5?=
 =?utf-8?B?Qm90WTdEMXRhYSt3dlcxaTJBTEFyY1FkaWdJRFh5dDhzV2w2UHVMdjJGZWlF?=
 =?utf-8?B?eTZsMm9nSUh3dkVUOFpyK0hubjM1ZkhXZDFsY0xCSEhwcWFNVXRMamxCV3Mv?=
 =?utf-8?B?cnZGcTV5dE1XUEZvQkpEdVhUQkJxUUhzZ2IzZ2JuOUVLRlFnSjFJVmxYZ3Q5?=
 =?utf-8?B?dStXTUJCWE9YMkY3d2lLbE04UjVtTmUzYUJVcDYwTFNPOCs2amVYRURLV0pT?=
 =?utf-8?B?akZCM2xVUzFGVTVMVWxZdUxjTXFEUkJ6SVdMMmd5WWhORTMydDdGQmhuSEJi?=
 =?utf-8?B?NDAvc3ZDNEZZdWZ3Vk9TSFZlY0xieW5NOUg2M1VyeFErelBKNWZ5eFV5Z09m?=
 =?utf-8?B?U0VuQWcrZEVqUlgwQmMzOGZpNldPVjViOEd2VUhvVW9TRDlYRkVDN3NwbDFl?=
 =?utf-8?B?WTVKOVM2WVR6UW1EY3JsdFl1cjlRRys4emVHNy9KN29TU1lzM0l0cjg0MXJR?=
 =?utf-8?B?NkxVVFpWR09IRnQ1bGE0akFLQVBpM204anUzcXdCUCtOZHF0RE1wUzRpWUVh?=
 =?utf-8?B?cVE5Y09KSDBrSVlMSEcvK2lOYkxtUUR4SVpVbE1YWUlaWm8xQlAvdlNFRkhm?=
 =?utf-8?B?b1Z6bGg3L3lZRW5lcG1hTnQweDFGUWdzOHptNTdxRGVtNk82dlVGYnhmcVc3?=
 =?utf-8?B?V2FLT2R3b0NQTkNuS3hYY0dNNVllMGpWNGlXSnJvM0xVTktHK1YwWkRadnpY?=
 =?utf-8?B?eUc5Q1g0UU1pR3FRL3pIMVZmV1VodTVwcFpKby8veGQzUG5QTmRtMlM0dklh?=
 =?utf-8?Q?WpG6XaptG6JlZ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1lwd2pZTk1sQlhUWXFza0ZIbXYzUlFtdjQxNGNFcUY5a2hiYUNjTW9JNzA3?=
 =?utf-8?B?aC9FckNnZ3RYeDhvMWc1Mm5tUytkZWU3ZXNYTGhtM3pPZ2Fjb0dJekhPa1RT?=
 =?utf-8?B?ejlPNmJ0VWlSK3J1dGdOM2ljVEtJRSt2T0wwWXdaZ2l2S3BIdlN2cUM1cURN?=
 =?utf-8?B?MmM2dXlJYlUwRXdVSUhjc0twSENzVE9WNERSL2RMT0ZXQjQ3QzFpOGtnQjlO?=
 =?utf-8?B?cmg5WUR5V3JGbXc1UkNOWFcxaHVRdWxhN0J3cURTMHIvVm5SMTZNaW5pMjlS?=
 =?utf-8?B?U3Z1UzR6Tnh2czFlM25SaktTQVByL3R1UjRDSEV1Vmt2REtpNVdVV1BiTmJB?=
 =?utf-8?B?aEFRT0hBdXhwUHR5TTNubVdlUkdrYXhOTjBkdVJBYS85RVd2SWtvRkEwcDgv?=
 =?utf-8?B?c0trZnFreWtOeDBNc3NIYjRobDFlU3kzUEF0NzZGaDYrOHJKQWljZmRlZXla?=
 =?utf-8?B?OElycFc2UGNxQmQ2aUFFb2w5WTVHTXp6eC9GL015N2FXRS9vZjlYSEYrVnVO?=
 =?utf-8?B?Nzdua2t1K2JReWhYb1A2M3l0cWFNUmtpSFozWlNuOUx3a1BEVTNRaldKK2Ex?=
 =?utf-8?B?WDBXYTZPM0dvVHNmSXpvbUxCM2s4aVhmNE1zMTNPdVByTldlODZxd3VmY0x6?=
 =?utf-8?B?clVBck9lSER5amcrMmFiVkZQZkQ2NG1oempXNFByOXpYYUp0Z3ZzQVVVbWx1?=
 =?utf-8?B?ODZKNXZYcldwSkd1dndLWVR3OHlyckhvdk9JZW9TWXdaQ00rRkJBYXRiV0Fn?=
 =?utf-8?B?Y2NaRmJZaGNLL2RCWlBVV1NPQWhUeXBLOHNlUlRDSDM4NGRtcmRvSHNnb21a?=
 =?utf-8?B?TEdhRithdEdFQ0VZQUpqeGdPQWVJZDRzSVYyVWwyUVgvTUEyVy82UG82RGMv?=
 =?utf-8?B?V0Y4TVNMK1V5NzhOa3pOUDhHYk5TWCtST1FZTE5KQVU0anlMSEcyWm5yRlNW?=
 =?utf-8?B?YnM3bU5IaEFnald6ZXRLOTFtbjV1YUM5L3BJbU9UZVJmWEVwVkRjc09JcDYx?=
 =?utf-8?B?MlVRT0RGL1Qrczl0YllMMUx1ZHR0VFhaczdSNHdXandYQ3BQcWIxUzJiUzR2?=
 =?utf-8?B?UEtNWDRaR0ltV0JFd1VhMHZCaExEVlM5TFpUaDhqdm9zaWZKaW13VXNLeEJG?=
 =?utf-8?B?aDJNYzI3a3RPc0xqMGdjT0ZzTzRaUWhiSjFVSlY3M01KMHovdUw3SDBHRU1B?=
 =?utf-8?B?YXpwRFhmNDdXTnBkdS9NUWlwaFdPUld2N29xa1pReVluRWhjRGxKb1RYc2FZ?=
 =?utf-8?B?dnQwUjVSZUpiU1MrcEoyVlBpTDZKOHpUcHVUQWtaSVl2MkozMlVVM1NyVStY?=
 =?utf-8?B?K3NmRkp4b3ZsbkVWdmdlYmd2NzU4NXdhUWp1eUcvb0Mzalo5YkJxR3pUV0Ju?=
 =?utf-8?B?Yndybjd0RXdHZ0hZL2ZZcHhjbjJ2U1lsWFJYSTJIb0I0WXVaOXd0L1FCZStw?=
 =?utf-8?B?clEzaFk3NGg4Qkw4YTI1S2VUakEzRVk4Y3FXaDJYUEduTlBwT1VrTWM5azdO?=
 =?utf-8?B?RURzbW04TFl4N3BucUlFUHhiT0dEMnJWSDVzUjEwdjFSdTlONnh5b0N1Yk5L?=
 =?utf-8?B?QlhYaWdYdmUyYmpVdjIwKzExZkpxaG10SU9hNzVUK0s0T1RBTkJ2ZnBCUVhi?=
 =?utf-8?B?ZjI5U1R2cWZlaG01WnlOdTVnSWtNVUQ5UG9YajVnU1l4eU0wTzgrQ0c0cDNr?=
 =?utf-8?B?OWx6SGwxNDA3K2h5MTFiR2FJcXRncmIxalB2L3FmN2o4YXpWWklSU2F3VUQ1?=
 =?utf-8?B?K1NMaTF5UGJBb1MvMlpmT2s0UFpjby8zYzB5TUh4T08rV0k4VnZGV21YejhV?=
 =?utf-8?B?MzZUeTNQUWJpVVoxejRpajczclhhMmE0bHRPa0lQZ24vdFdwMmF3S0VKRmxK?=
 =?utf-8?B?Z214UThPSCtickJRam5hdjg4ZWlBWVQvbFJueDhvTk4rZXNLZ0FEUFNSNFF1?=
 =?utf-8?B?eW1HZzRLcjBCUTRiNTlLQ3hQV1ZRc2NGU3pLREdJaGx3TnZ1Rk9yUEVSelN3?=
 =?utf-8?B?c2pUWGhHU0VrWVdTMGdCUUdxaGNiV3RCcVgxUWtlWHgzOGtxUHJlWjBIemZL?=
 =?utf-8?B?cmJsZFRETzJTM0hRRlRkdm5sUlJuSXBuM2FqOW9kUEhxRVFaU2xuOXl3bnMz?=
 =?utf-8?B?ZlpJYk9BTkx5Y1Irb2QwWjd3R0c2SlJSSGxoL2FURnRBOTdrSWFTQ2QyZTJW?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 37a0be69-069b-47ce-f954-08dd4c444fe8
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2025 15:37:24.0032 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jvHQ5DPD1u/iwTnW4kRI94EjmN8oyt+ZudIjoU8lsg+hqHiT46RPOGLW5rRIoyLHsYxQwk/1L6/SMuFBfPoLFw3U3iigONZe3XDftwlpzC0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7585
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739461049; x=1770997049;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t9GvZFVy0wWhT7m8PDF6Ed4wa/haeX+CHAFVQ9AiTnM=;
 b=brV04SI94y9wYqi3Vyfd9gGTULzatlShLIaZ63GTd4u56mMqqbSkyFjt
 OwXicgYV3A5x8HA2gHjZp8cHaKKpqN1a02lkxxVC62dPNOUVAEV7fFP4S
 21cp4Klw6WHLlUVhipxltAw6HzDY3/5ChdtK0PvZeXzTWOOCscQF9EBFy
 1bjo3gHE7NOPTNcxkiH1m1GaNs55KplCYS+hEdXnrh0yO9gAfcSbzxdVk
 1J8Nf/LrGNGMVD/o2PFJYt1CjMOm7N1W/Yq//2P9QpXFV2jH5gpLSyKIG
 jWGGeED6AnaQm8SnwocJxLuKkC4GmlkGexQhtMDlLK2JdO60Gw3GzYLdk
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=brV04SI9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 02/14] ixgbe: add initial
 devlink support
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

On 2/12/25 16:47, Jagielski, Jedrzej wrote:
> From: Jiri Pirko <jiri@resnulli.us>
> Sent: Wednesday, February 12, 2025 4:09 PM
>> Wed, Feb 12, 2025 at 02:14:01PM +0100, jedrzej.jagielski@intel.com wrote:
>>> Add an initial support for devlink interface to ixgbe driver.
>>>
>>> Similarly to i40e driver the implementation doesn't enable
>>> devlink to manage device-wide configuration. Devlink instance
>>> is created for each physical function of PCIe device.
>>>
>>> Create separate directory for devlink related ixgbe files
>>> and use naming scheme similar to the one used in the ice driver.
>>>
>>> Add a stub for Documentation, to be extended by further patches.
>>>
>>> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>


>>> +int ixgbe_allocate_devlink(struct ixgbe_adapter *adapter)
>>> +{
>>> +	struct ixgbe_devlink_priv *devlink_private;
>>> +	struct device *dev = &adapter->pdev->dev;
>>> +	struct devlink *devlink;
>>> +
>>> +	devlink = devlink_alloc(&ixgbe_devlink_ops,
>>> +				sizeof(*devlink_private), dev);
>>> +	if (!devlink)
>>> +		return -ENOMEM;
>>> +
>>> +	devlink_private = devlink_priv(devlink);
>>> +	devlink_private->adapter = adapter;
>>
>> struct ixgbe_adapter * should be returned by devlink_priv(), that is the
>> idea, to let devlink allocate the driver private for you.
> 
> Using ixgbe_devlink_priv here is a workaround which i decided to introduce
> to mitigate the fact that ixgbe_adapter is used to alloc netdev with
> alloc_etherdev_mq().
> This would require general ixgbe refactoring.
We will try to do that, pending a retest before for new submission ;)
