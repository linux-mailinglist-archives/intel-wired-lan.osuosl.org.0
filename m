Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9454A97DBC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Apr 2025 06:18:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F5CC61030;
	Wed, 23 Apr 2025 04:18:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qRmqapF3i3uv; Wed, 23 Apr 2025 04:18:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CC1C60901
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745381927;
	bh=nQ6HnEZzuleji6oEfHmMwhSpdlxrlPJa2zsmcpkk97k=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WDfG0wMPkQoI2zwFVNfgmVqLafUUdHi5BYkw2IXzQt6t28A9NPSRxe70YX37CV9bu
	 I2tNdBNAU5AWlcc+sPJB8v7fMRoCcDkMAffXG62329gLfwFZ/4rxlJ/woAvX2d6dYB
	 3pNdOHatn2vG5d3lyin8DYlaHIR0HjbE9+xF2XUXgDQivcd5fI0OuUcsgeyWvn++aX
	 63t/gyYB0yQSkkZuGacnrZoFvOmA3RQkRur44+BzcskbjmUmWdcaT9tM2Q6dF6qjef
	 0LnDv7z/lbPjsRcE9WCbYVoLGX9ZBuLsdyc9W5Rj+xyqNlsJmxw7/HviZCaYlX7EeR
	 +he0ib2+UxSIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CC1C60901;
	Wed, 23 Apr 2025 04:18:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D24601A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 04:18:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C38EC41420
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 04:18:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dJdH82J_mRB6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Apr 2025 04:18:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DBCA840A1F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBCA840A1F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DBCA840A1F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 04:18:44 +0000 (UTC)
X-CSE-ConnectionGUID: MmGowAM5Tx+FUlAMZurFzw==
X-CSE-MsgGUID: V/Xy+iVHSLitAJ2DFvyKXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="72342881"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="72342881"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 21:18:44 -0700
X-CSE-ConnectionGUID: FM65tGnhTH6pSpXuqmTEag==
X-CSE-MsgGUID: JGW33jVtSNGaWA6J4yVnJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="133077154"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 21:18:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 21:18:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 21:18:43 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 21:18:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wFjeFoDvQWDNXdO3vQANMlGIkcJhekN/GOudQHOnvHbPKFgwIPPNls1DbHBrca8sybVCIIPuRm0Hh+H9ZckqEj1V8SW70baV6ggvqPGK8uKQ1oaIqvHUs4GfI42aK33lw3ydmvNhOE9wzQkqBQWAgLhq3wuHOSHfXcDvrINwpyRxY1EVDM5P8DQFE0P1E4R99+wJ3+fik0/nxs8wF1wrmclUa9jJz6iW0djzm/kG66WMGM4P5tjut/kzFhS8LSM6F2nlw+KWKx5n45yasAcQqFcwnzPUBzzy94yxjoTBSdFOw+50M+XbSRFN6upsayQ2KZDm27RjiFZtq7fLt7oxbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nQ6HnEZzuleji6oEfHmMwhSpdlxrlPJa2zsmcpkk97k=;
 b=PdXYdRxZt/rqoyRTuWyFDRql4FhO08nrm0WXtCuf+MytHeHfGEG5zP8uwoVBaiwHtiWaqQNhcf36u8l7Tl27FECgyObTSQuxCe4pGZQ/RJ4X4Fkcp2tdjvqz9CFuvDB2X+E/UajrjpIBlVBBFCJLC9hztuEPk6a3m1g7uKhEwtJ0LctPw9xvjmFDTeFuB8zD7/nV3msmY425y+KpwbuRhDTlHcBa/MocOshyL6snEiK1BrTmuxegBXXfxfV4yf5pnLXdkimoT4RWPRimXhP3fnEyxazmWb2cGgwy9M8t6De7rSb2YMenv22H8cK6V4C0EdEix5MlnqWVgn4PERXhtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ1PR11MB6300.namprd11.prod.outlook.com (2603:10b6:a03:455::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.34; Wed, 23 Apr
 2025 04:18:24 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8655.033; Wed, 23 Apr 2025
 04:18:24 +0000
Message-ID: <e424e81e-569c-4d35-9ff3-3286f5b14f62@intel.com>
Date: Wed, 23 Apr 2025 06:18:19 +0200
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
CC: Dan Carpenter <dan.carpenter@linaro.org>, <christopher.s.hall@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20250422210309.1474002-1-jacob.e.keller@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250422210309.1474002-1-jacob.e.keller@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P195CA0028.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:5a::17) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ1PR11MB6300:EE_
X-MS-Office365-Filtering-Correlation-Id: e470a957-f1e3-48e4-ab62-08dd821de3a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cW5NMXNiek16ZkFKZTZJVW0yRmRwV3l6aFcwVHR1ak1YQmRtOGc1d3lNYmV4?=
 =?utf-8?B?a2RWWUllaUNwdGpLbEdHRWVmVEtwenZBNmxmazIrNzVqT3FWY2FkdDV1TVFn?=
 =?utf-8?B?YjBzVlk1UGl1eFl4L2lDaHVGdHErS2IrRVhodlo2bnlWUUpEWi8zTHEzTnk4?=
 =?utf-8?B?b3ZML3hVVWE5SXAvbVJjTGtzM0NqTnVGMzQ1RGJzK1I0WG8yQllOSXlJN01T?=
 =?utf-8?B?QzN0S0EySlpKZmU2N2grRXQ4ZzVvRlJXcnpSbTVLM2N1MzBNcVVBZWlUWUpv?=
 =?utf-8?B?WWo2b1hoZW9BRHBabit0dGZlSFdIMGN5TDNJWUtvc2JtWVdmREtzR28zOUww?=
 =?utf-8?B?S2xYZ2hWV2t1YkdFbnRVN3ZmRVc3cXdUSHZPbWhjNktkUGdUMkExNE0rUjZs?=
 =?utf-8?B?bkp6U0haeStJRCtWNElEUmVjTVl1S0tVazJKYmJNTFBoVWtOMjd5UklzV3dF?=
 =?utf-8?B?RWdHb3BWQTltVjN6bklhSXhGNVg2L2xhdGxmcmVmdThLcmloY3M1KzFhdll5?=
 =?utf-8?B?cG5mSUV0Ti9kMDh3bVNOYnMyNDNJUFhld3Z3all4QlZoSjhDMHpMbVlQOVdT?=
 =?utf-8?B?WnpERkRHUE1uRmFPYkRFSUdQTldsamFobnJsUEFDS2VjRGNVb1BoNUZVblRu?=
 =?utf-8?B?ckVQVjZaWlRWZVBURUd3NTdwMEZ2b1RuTWZpa1RmR3VGL3VmMElyU3kweTJq?=
 =?utf-8?B?clZzOXoxNHJZTHloMjRIb2lHUkNuZUpyRTBoUitHNi9CSzFKTkU0bE84MFFw?=
 =?utf-8?B?RDZLUEg1TmpFOHVxMnpGWFI2eDdaT20zaVYxTHJMWHRNRWFVOHd0OHFDRUR0?=
 =?utf-8?B?LzduSGw2U0QyTXlsamZhZHZ5VXhmR2c2RDVTaUI1TG1qNXhDSjZTTWlQc2tu?=
 =?utf-8?B?T3E3Ym5sMFVPZXNPak55WEdoZmtDano1ZjJsQmlkOERyOGVlVXdHVXVUemI5?=
 =?utf-8?B?UVZpSnlaOWQxNENWb3Q5ZUpTYUlJdUZPdUttZ2JlZG1PV2EwQldVVnVZc2hs?=
 =?utf-8?B?emVIVWNIRjFjakNZOTBtcGVWK0p0L2daMWIveG9FR1BIbTJXT2pyQVE3ZTRS?=
 =?utf-8?B?eVZibnlPcHM3V3BNMkdsa0dyY1lYVlI5dHZtdmtwQzRJV1hwbEowTk1CMm1z?=
 =?utf-8?B?VzhpMXJ5RWRuZVB3QThPREJhQ0d5SW5XVHo0eEFNaHVONjBCTkw5SUFVUUJO?=
 =?utf-8?B?cE1Lc2FPcHNiSVB5WnZETTVyWnhaVmZvKzZ3M2puWnZWMVFYVi9DaHJqZ1NW?=
 =?utf-8?B?TEtPa0VQSmhFY1Nhd0Z2R2hzdit2ZmhHRTU1UTBjMUVBYytYaWlLVmlzc3py?=
 =?utf-8?B?eTN6dGY3ZUQyMVczbVhXb3BpZUEwb3Axdk9kS1pIanhZRno0QUQ3RWliU28x?=
 =?utf-8?B?V0JEby96b0U1TXpLZ2wwU29LZjRYYlZhUi9MUGJJVUl3ZWFxb0pGOXlWVEda?=
 =?utf-8?B?NUxscXZwNVp6N241dnM1ZHFRWDJJK3U1SjJBcTJUcGtoUERrWXFpRXNsYytx?=
 =?utf-8?B?WW5DM2FaODlsdkQyN20raDFhdlVEMUczYWZLVFFHb2tZVXhkdzJIck5JcGtX?=
 =?utf-8?B?Wkt4ZVlOQktIYit6dkV3ZkhmK0FHUnYrdWdiR3Y4eDRxdUFlcXh1MHJYditw?=
 =?utf-8?B?VWpNcXFWTSt5QTBrOVhKbXNZU0dWL3ppSkJGZ0ErZ29mL2VlRFo3MzNKVjBs?=
 =?utf-8?B?NzF1bFdkUXVMYndMZTdtTDRxcllvSW9EV1pSN3VNRVFvdjIxUXJZaXBhdnNu?=
 =?utf-8?B?K21MODh6YUx2RGJRbFJQV3Zrb1BWV2JKd0NGaXNMYnVjd0hGdWZ6S1UzQVpP?=
 =?utf-8?B?bElZRmc3NkJLbkhXdmRPSlc2M05WbUhQN2dCd1UxRUVWTXBKZGRaYXpwb2Fm?=
 =?utf-8?Q?fj0/RyiDN7SKg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UHliZno5ME1RQTE1UWFIbEg5cjJ4bG9TWk5yampodVpMREUxUS9NRGVRTEQ0?=
 =?utf-8?B?RndaS3k3MGZ3ZjJlTjY3MWVNdnJxZWxuYll0RnNLR1pORUdvWlFIamlDQXJv?=
 =?utf-8?B?MWZ5QlZhWkZXMDV5VjJYM0gyODV5Rk9QY2JTWkd6TXp5QmFvU0Z6eTRwamln?=
 =?utf-8?B?VndmelcvZmZEK3ZoSWQ4Y0R1L2FLWnFoUVYyUEk1VlhhdW9Rdkxid2J2ZFBr?=
 =?utf-8?B?SVVCa21mV3ZFNHkyWE43Wm9IZ0JNWEZFRDV2L2RwVDFVd2JZNWR6S1N3VFNm?=
 =?utf-8?B?RUJYQStMRlZPdzlsTndwekVRSzV2YkFuSWc1dXZpTStVa2oyVTIwME5ra3FK?=
 =?utf-8?B?RzNxb04xbE9ybEo1OEFKTTUzVndja1cxUkplZDRIRG15aWRhbDI0UWFrY21p?=
 =?utf-8?B?aG5UR0ZqcHZHcU1wWmNGVFNJbW9SUUJKQlBrRUg0N3hsQ2Q1RzhWU3JiV3M3?=
 =?utf-8?B?R1docjZ4cjhncndVaGh1bzFrMWtBV1E3M3RSTUhDL3VWYWtLa1NIa0MzQTdz?=
 =?utf-8?B?L3liQ1RiZWc3YlhNdTdKa1I4N0RMZVJzdm5VRjBpNVVHY1dnUHVldm5pWk05?=
 =?utf-8?B?dmNEZjNOYm5qOXFYZWEvOXMvd091cmNZMzVmblBVOWw3aVR3YkFDWVpZQXA4?=
 =?utf-8?B?RHRYZFJtRjdzSWdWV2RqeWR5azVyelh2cDFCd1NLeXoxZjRSWm5uNmpmZmpn?=
 =?utf-8?B?RUpXS0VMaEpiMkVTR0hpNSsweHEzaFdEdlY4Z2ZzbzVkTEhra0dOelRyNEw1?=
 =?utf-8?B?RDh1L1lzSDBvbHVHSittNStqTnh2TTJBLzZRV0RkcFp2NlplQ09ncW1CZVZ1?=
 =?utf-8?B?cHQ4SjBDaEFLL1Z3aWllb2JjOTJUUDE4YmxNSmZjRlNicUtmYzYvM1ZHM2hZ?=
 =?utf-8?B?SlA2S3RualNqSy93TEN4MEtyaHNVTnR3cXZJcWZrc3hkWlMrWlhxYVIraTgx?=
 =?utf-8?B?K2xpM2JJSjB0bitYVmR5emtDUzRjbitJMUZhb1NZekxzUVZ1cHJSQ3BoOUdV?=
 =?utf-8?B?eEpvK1V3THZyR0RYZGljUVIyUW5Uc0RreTlrNi9QdFl4UVFRZE1iV1hzaXNO?=
 =?utf-8?B?THI4WUV1NlQrL25GUVFpem14THpTR200Q21jU2twSkxHclBNeGtwbTdSem5U?=
 =?utf-8?B?c08rTDg3WmM4aGltTnJMZmp4RWZza3dWVkllZ25EWnlGZ1NiU1p0UFJ3b0tV?=
 =?utf-8?B?RDhmM3BVR3lWNnlWcjlpRVd4dElIVzNZYmhUYTBFOWhWTngyem9YVStIUkZY?=
 =?utf-8?B?RXpkSnQ5Wldmd0NpNXpJMDd6czdiU3Q4Y1A3bzJ4YzhHRzdzdW5ldk5PR2ZW?=
 =?utf-8?B?OVNBYll4aEt3L0h2TmtaOHMyc1R4Z3N0blFhcHdYaFJxejY2QU5HTGNtYW96?=
 =?utf-8?B?TnpYR0JPWVo3VFJoNXhyYVMxRGRMRFpXNXFPQTBxMDhqNHAzcWw4MENmdGx6?=
 =?utf-8?B?M1Rla1FBY0hwOHFxZGErcUNoQlFnaXVPVmFjT3p3T1lqQTBDOFVOZ1NnWVc1?=
 =?utf-8?B?L0FBKzV6UjdpMUYva0VvdVVTQXJDaG10RWdIdlptVUJTZ041SllGYTU3OU4v?=
 =?utf-8?B?WlZxeWFSbUo2NlNXeld5K1dZMnpKbFE3S2lQSzVSVG93bHk2ZlZIWWFQQUZ2?=
 =?utf-8?B?MTRSY0V0WTd6TkdoVGtTN2dMUmFpMmdSdmF0MzNwS3gyZnR2VzQ2NjgxRlFO?=
 =?utf-8?B?NVIyOGVtQTkzK2xIWHliUklQSmhxVUcwT2hpM1J1K3poZTJNZEw4N1VmK1Az?=
 =?utf-8?B?dGJqRkl1Rm05ZGwzZ1NRRHJ3cUR2YktTY1RwTG9xTnBWeE9YYUtSZ3BRYjVk?=
 =?utf-8?B?b3N2OUZOeEJhdWFaaFpEd3VNRnVROHlWWHNMdGVBTWxiT2Q5U0hJdFlqUjZq?=
 =?utf-8?B?NlE3dXp0ZVZRVmpvanpQcWh1VHF6YXQrNWh0azltMjhVRzdCdWorYjhTU3Fz?=
 =?utf-8?B?WXVEdFlwMld1UjZJeVBIaWtTbFl3cCt4ak1QY0VyNEIzVnFiNmh6TGxhT2Ex?=
 =?utf-8?B?VnpVcFJBQXVtOGFKODBobzdjNGZZY2pqNGRzVEh6bVk2TTEwV1d1anhzbkc0?=
 =?utf-8?B?dHYwSkgvTklmRmxyOXc0eVlGNzhDM1BxelcwMWZNbUYwYWdDWnlBbjVNTUlq?=
 =?utf-8?B?RHdUYk9EdUtqZ0N0TXk2VkFhZjlEWnZZVS9yQlZCRTdMWkE5ZC9VdldhOXgr?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e470a957-f1e3-48e4-ab62-08dd821de3a4
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 04:18:24.3237 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oITiF6AQ8bteXToXhfwtQc7FjpB6KIsWdwW+RneQ4Q+k9/vDMV8CRbwAxLwwiI+vqcu4bhitG4N/llseiqZKnsXDwGjPQsy3rm9SAy2fLvk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6300
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745381925; x=1776917925;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tfd7jWY237BvuYGRMhXleGhPHUvHsdkW2rmGFBjZnzQ=;
 b=EV3zYvGYj0+vBdslsWNaWzya3CSr6Q6soLKL583WrT/Kd1/0306oTJXz
 PHz48j0y8Lme62LcXrtj0kqvTDwmGOc/fvXYVbUnFW399Pl+GZ7sWjrHm
 e9EIfCFgtAZEMZvmyZr3eOGoaxIn/P5Skla3bP7uF/2QaTCw0lcJL9Q1Q
 h5aosILjJ7uQCIKbBBxkj4qFn3fgDa+Uy0hcRJRVXoBRr57PadB5YwGHM
 tc9RxPC5xloT6N7zMYoD4LgxYVoJaEwpT40O/b1xKz1TwK3STQ6gLieq8
 Cx2BOLpiEMAbZvLIxBE4M3crVLaFtx8fBamGgFot/QH/adAZWR2EqNceT
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EV3zYvGY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net] igc: fix lock order in igc_ptp_reset
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

On 4/22/25 23:03, Jacob Keller wrote:
> Commit 1a931c4f5e68 ("igc: add lock preventing multiple simultaneous PTM
> transactions") added a new mutex to protect concurrent PTM transactions.
> This lock is acquired in igc_ptp_reset() in order to ensure the PTM
> registers are properly disabled after a device reset.
> 
> The flow where the lock is acquired already holds a spinlock, so acquiring
> a mutex leads to a sleep-while-locking bug, reported both by smatch,
> and the kernel test robot.
> 
> The critical section in igc_ptp_reset() does correctly use the
> readx_poll_timeout_atomic variants, but the standard PTM flow uses regular
> sleeping variants. This makes converting the mutex to a spinlock a bit
> tricky.
> 
> Instead, re-order the locking in igc_ptp_reset. Acquire the mutex first,
> and then the tmreg_lock spinlock. This is safe because there is no other
> ordering dependency on these locks, as this is the only place where both
> locks were acquired simultaneously. Indeed, any other flow acquiring locks
> in that order would be wrong regardless.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Fixes: 1a931c4f5e68 ("igc: add lock preventing multiple simultaneous PTM transactions")

Thank you!
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> Link: https://lore.kernel.org/intel-wired-lan/Z_-P-Hc1yxcw0lTB@stanley.mountain/
> Link: https://lore.kernel.org/intel-wired-lan/202504211511.f7738f5d-lkp@intel.com/T/#u
> ---
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 612ed26a29c5..efc7b30e4211 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -1290,6 +1290,8 @@ void igc_ptp_reset(struct igc_adapter *adapter)
>   	/* reset the tstamp_config */
>   	igc_ptp_set_timestamp_mode(adapter, &adapter->tstamp_config);
>   
> +	mutex_lock(&adapter->ptm_lock);
> +
>   	spin_lock_irqsave(&adapter->tmreg_lock, flags);
>   
>   	switch (adapter->hw.mac.type) {
> @@ -1308,7 +1310,6 @@ void igc_ptp_reset(struct igc_adapter *adapter)
>   		if (!igc_is_crosststamp_supported(adapter))
>   			break;
>   
> -		mutex_lock(&adapter->ptm_lock);
>   		wr32(IGC_PCIE_DIG_DELAY, IGC_PCIE_DIG_DELAY_DEFAULT);
>   		wr32(IGC_PCIE_PHY_DELAY, IGC_PCIE_PHY_DELAY_DEFAULT);
>   
> @@ -1332,7 +1333,6 @@ void igc_ptp_reset(struct igc_adapter *adapter)
>   			netdev_err(adapter->netdev, "Timeout reading IGC_PTM_STAT register\n");
>   
>   		igc_ptm_reset(hw);
> -		mutex_unlock(&adapter->ptm_lock);
>   		break;
>   	default:
>   		/* No work to do. */
> @@ -1349,5 +1349,7 @@ void igc_ptp_reset(struct igc_adapter *adapter)
>   out:
>   	spin_unlock_irqrestore(&adapter->tmreg_lock, flags);
>   
> +	mutex_unlock(&adapter->ptm_lock);
> +
>   	wrfl();
>   }

