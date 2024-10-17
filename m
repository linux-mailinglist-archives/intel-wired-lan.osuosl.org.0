Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE589A2E9D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 22:36:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8215F4084A;
	Thu, 17 Oct 2024 20:36:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WyC0la4s6oLA; Thu, 17 Oct 2024 20:36:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B5D840858
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729197410;
	bh=03Pl8nOZdEo0SfLrgYNt/ksBu8FKB/1eCSAbBAbsEO8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HGREHJHaSE4fd7Fir5NpZjNKFkM+ZUb5cfkecsdywZegsEY9JP/R13VWn3IdVrLIX
	 Z3ssRSyDknwmvEzgDGrBcfVc3vBOvhCi/EJ1Q3QfZYwRzeyZZteJj1Na6dcSnfgsQY
	 LTRUFYC57fez7qCBCVukY6Z3Fy/DilpG29WsKqZWBUev1r87oImRopoIDrXKPagtej
	 pXyelxPtBtZy2WX+if/A/66lqBeReU/6uOFi9Wxz8xZofLUKaIO2c7dPz9CWw4ZiDL
	 KgE3lNlcvt/ENGhtA7se/GJ/jklj/EWetXvjLgmFapUvTA+ZGEjoVSey0mgAR2jrmW
	 6E0+SWkdIQ4bw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B5D840858;
	Thu, 17 Oct 2024 20:36:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F2A9972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 20:36:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 47AC281387
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 20:36:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BNqbW5wneJst for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 20:36:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0AAE7813D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AAE7813D8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0AAE7813D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 20:36:43 +0000 (UTC)
X-CSE-ConnectionGUID: fXSF6AD4RvmRAY/LYR9fvQ==
X-CSE-MsgGUID: N+H02lWpT1mBRguPrNBejA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39252628"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39252628"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 13:36:35 -0700
X-CSE-ConnectionGUID: nDLytUTbTmuAd2FgLG7MCw==
X-CSE-MsgGUID: XDD8EhPMQGGsckzS/7rV2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,211,1725346800"; d="scan'208";a="78563238"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2024 13:36:35 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 13:36:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 17 Oct 2024 13:36:34 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 17 Oct 2024 13:36:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KEZVvZjYxwxar6ZjF+ku2aJw4diyzFVkEAudkB4XjoUiHV+/q/M5n0/n8KA391s5p7cPYNv6p+gK+f7TJxgtFL0ON3oIaS/lkUtrJXY0C5NGDp06ytd7DwXMBUnL3vd7Xc6cVSgR0J9hthisgTI2D6ey+G43Xg9xXsviEZiFVMdIPePkNZZLBmKjP08TgdQtbCIHqr0wRamXTVnGusjENUR5eMybXg57BP9xdY4O6SzoaOBywIpXX7eTzJe6g0jDFV9tosz8kW3SxRXsiLWus2IfUtbf9YXyN/mYWPRTvOEJpnfVSiXtNzLxbKWfv+gt1bAXxuZOjA+o8Y0L6s5HAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=03Pl8nOZdEo0SfLrgYNt/ksBu8FKB/1eCSAbBAbsEO8=;
 b=CXlWqYlbGzMhEJOwvqjiK2/V32wMWdljzScs6gKw4DD710IUOIljUnySPbJGvaBgSma3tZCkD0Nq8DJyAWaK0SJ9OIMQaE+uZDJvQxydTF6nO3w505fLBTJxdQlutvgN47jYou6NrBWgO5yyia9LpLphvJnEHAUs+aRP1ZIS9SmPSaCi3/LNYa5WOksFwrWZe2SK3T0fnF1O5mDQvgujm/LwNXqavUn2uNXPKWr8MbDa2fKzP68Khv/lZi3RNd8f9bYNclOav7TsCzESLmJ4ikY2Vjmdj2hRXZAPYnuBEQUhTPhJeRGJ9Vt3D62DPbKmo1ENQf/9B5RAFOS4w8/Sqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA3PR11MB8003.namprd11.prod.outlook.com (2603:10b6:806:2f7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.20; Thu, 17 Oct
 2024 20:36:26 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8069.016; Thu, 17 Oct 2024
 20:36:26 +0000
Message-ID: <88e7ae89-27d2-4e17-8f82-f71f68bd26aa@intel.com>
Date: Thu, 17 Oct 2024 13:36:25 -0700
User-Agent: Mozilla Thunderbird
To: Diomidis Spinellis <dds@aueb.gr>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>
References: <20241017085851.1800065-1-dds@aueb.gr>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20241017085851.1800065-1-dds@aueb.gr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0004.namprd16.prod.outlook.com (2603:10b6:907::17)
 To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA3PR11MB8003:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d3ff9f8-12dd-4fb8-4d79-08dceeeb5f50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZkY4NitPSXVqWFIrYzREVGRtdVpVYzlodzJwWFNYV1lCejZKemw3SERGTEc1?=
 =?utf-8?B?MzJ3V3BYTnlhNGt6bDZLYXFUVVFEZ2FLVnd2ZWRSZTlaSERJdS9SNkd2VjdL?=
 =?utf-8?B?eXdFektEYVYxaWRRSmNZeCtramREVkZQVVpQYTM4UEhydms0ZUo3RkxZSTVL?=
 =?utf-8?B?M0xRZmVKRHJWSlN2cVNLL0QvQkVKOEJGaGtJT3NQa1lKc0crcko1cnlCVVpv?=
 =?utf-8?B?d2RLTVh6VkNVWCtzRytOVm1lRUFNbUhmU3JLUDJGTDFxQldmMmVRRjM3T3lZ?=
 =?utf-8?B?OTFGV2Y5aE5sQnFuN1BvV0ZWM0M1d0cyc1NqSEdldThkSGt3WnRuSDAvMDdT?=
 =?utf-8?B?dWxVZW5xQ25JaGo2OFI0VStOZFBYZDF3Zk91VmhrTTdyNFNBUHR1QWQvb2Vl?=
 =?utf-8?B?VGhHQ1hsOGF3dTRTZ1JUa01BNFFtQXZGOTVlVzhhUFNDVDdHeityYkZLVlpi?=
 =?utf-8?B?TDZHMUpYeVhyMHlwbmlDek8xWitSWDdXM3MzdDlqMjhBczlKWlVxbk1KWG85?=
 =?utf-8?B?dzRDSms5TzczbnJRMUJLK2pJVVgrV3NaL0grUjBmbVUrU1QzV2N4MnlPZ3pF?=
 =?utf-8?B?bmhJaUp4VitBQXNPK3FJMVlpUDd5VFJ4ZjRMc1Fjbmp2NURSU3dXY3Y3TXNT?=
 =?utf-8?B?MithUFB6WGlHNVgxZ21KNmJyMXJ4blNaN0VTeEdGN0tWdmZDY2VINWk0NUFT?=
 =?utf-8?B?d2RveHFGSittcVhSd21aQ0tmUzJzMGRxdDhLa0dHNkVWckN3eGxBOTY5bnpx?=
 =?utf-8?B?Q2tvcXhKRDd2OEVQcnJJOGJYSkRWSmJreSsvUDVuUlpBcEQ3SyszUHEzUXha?=
 =?utf-8?B?ZEhjaUpzb2dWM3pTc3gwZmVwd2NFSmFSdXpnOWZUQ0RFWUFpNjJKN1dyVTZT?=
 =?utf-8?B?MlpabjFGcWMxaGN3NE9QaHpUYXZDTlk2S2JCZFlzK0NENng4cFRBWTlKUXBw?=
 =?utf-8?B?THVRUld1azVGK005YlMyNjcvSUFjYWQ4YVp4bGdRVEl6RXg5RDZpNFZlZWJ4?=
 =?utf-8?B?NXFqNEZlV3ZUZXZyWVdlVmw2VGdkbUtIYmFxb3FSU0ozL2s0cVVCamRjTDBu?=
 =?utf-8?B?UlNiRS9WUGxmakJHMFdZVW1mdi92eS9Jak5zZC9yU1BYOU5lZCtsSkgvQmRj?=
 =?utf-8?B?aTlibWw2WkV6b1RQdDcwMlMzTjg3ek4zREt2SnI5eGNDTHAreERSSDh0eDRp?=
 =?utf-8?B?YW5LRW1VcXdNRlVqOERnaXJ5Y1k4aVh6b2Z4QU1zcVROUDZFUmxwVmJWdFRN?=
 =?utf-8?B?VGVGbm1FZXNvMUV6Q1BvRlFyTElJT1dTV3o0MW1keXlmWHROdTRRVElqZFpF?=
 =?utf-8?B?cUFmb3pCMDNvRE5UdTcwcHNOT0VCUFNObTRrUllqaDFvaTVQbm96bGFrNHI5?=
 =?utf-8?B?Njc1YmJLTzh3VG5oS2p3YVhleHRoSU9WZEhhMmcwRSt6bGV3WlQ1U254eEhI?=
 =?utf-8?B?bktVQndma0Z1RTFyc2VuM1N3QzBXYzJUM0FNQ3M5VjNSd3REck15Z29sNDh4?=
 =?utf-8?B?T2JEUGNMSmRvVDlZOEVFZk1SSENtK3FuMVN2TW9pRjNsTFFtZ2VaZDIwQjkz?=
 =?utf-8?B?TXVKK21LdWwwWmpCa1VIby9RQ3h6V1VzWTNUSlg1S3FzR0lpWDVDTFBiaDlO?=
 =?utf-8?B?cEpYWFpQNGlPa3ZaV1dWMHFjYXpqZHdqTHRZR2N1VE1pcHdwM1FKeUJJUVZL?=
 =?utf-8?B?ZkZsQVdKdEVhNzQ2VEZNdjhZNXo0UTRZSDRlVXlJQm1aMXcwZGptb0lJWUtB?=
 =?utf-8?Q?orTb1VqBPJWV7jlJgtH8iQnksj9OL7shpm3Nh4b?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QUlTNzdWc3NDMEVQbjlXWTVqVUVxL1h4RXp1cnB6TTYybXFtZktyQmhlSnQw?=
 =?utf-8?B?RjQ4djJJakMva2xjdmpXK2RUWFo3TW0wVEdidHpmbHJWK2RYcU9lM1FtL3hp?=
 =?utf-8?B?eFBTNXQvUVU2RmxoZktsSjl2R1dHSGVkZlkzMm9kaEJndXRMN3J6aUdjUTFy?=
 =?utf-8?B?RUQ5WkJvZGRqd1pkbUZpa3pXemtFQ0l0MktmMlhFb3g4OVMwcUFQUnNZUXdQ?=
 =?utf-8?B?eGg4VmhIYklYNjRoTkZaY0pZdXEyTWQrWTBqT0ZwTFpEM1NIY2NiNUQ4dWVX?=
 =?utf-8?B?L1RjZW1mOHg2T0Q1U3ZObXNFMXV6cWRHSlpTemRsWFpMbVR3M05ydmFaSmI3?=
 =?utf-8?B?RVZneklpaG5Xd1Z2NXIxR2tod2pZc0w4ZmRlSndCSmlXWWIzTVM2ejFOMVFN?=
 =?utf-8?B?aHNDUXlLUnZpWlIxYlJqWVBIWXFhUU82aXFkM1NYSjhyMXV0QW9HZDNzU0Nr?=
 =?utf-8?B?VXRUTXJrMUovdlpXS3R2UUl0aExmRVdXMldpUlNPUWhBRGg3aGU3S3hoNWVD?=
 =?utf-8?B?cTJSbGUzaXBVUGZ0S1lMbkFkU3NOTmhPa3Z1TmdBdkQ1UUZ3TktiekNPYmxK?=
 =?utf-8?B?dTZsKy9lTE5SYkZveHRjOGFZY2sva0xWYkhtNU4xOHdibzREdmROaThNYWFy?=
 =?utf-8?B?NVpwVW4yVWdmWHFMOVR1QjlDQ0t3SWF0VTM4NDJQZXFTZXBHVjUvVjhLL2RL?=
 =?utf-8?B?NW0yQlptV1Nrai9jYzd4aDR0V2NhQmhsTzRGOVdpNitMKzRKWXdzdEZVT0FT?=
 =?utf-8?B?d0xya3V3dkdEbUdlWCs3ZStUVGhZTVVNZDZYcG5aa0t0bGZMdHZ4d0JOeFFp?=
 =?utf-8?B?OXFpRkNYV3c0OGJEOVgxZVIwalM3bXZJM0VKcDMyNGtGQmREZ0NzTWZLSEt5?=
 =?utf-8?B?a2hNMjg2TEFoV05USDJLQ2FJcXF1bHR6N3E3Vlh2OW54RFpMZERKQVFCRXZE?=
 =?utf-8?B?bkh1cnJJTmRFa3lUSisySGtBTXBaWWFNZlQ1bStxTmg0L0RlUmhyNHEvNU5z?=
 =?utf-8?B?VEJjSzNUUzY1cnRITFBwRVJIVTFqMGNIT0xEdFZZOURBejN0M3p6R2RJK2M5?=
 =?utf-8?B?RWlVeFZnUUVSU3cvVDk2Vml5SkhQZjc0RTdzcWtlWlo0dlIvcXk5aSt2Z0pY?=
 =?utf-8?B?dmxzVU9mbEI1WkJWcm0xd251bHI5bHdtSzVWVGVuTHhWK09ZMjFXRDZ3dldk?=
 =?utf-8?B?U05UVjVkalhyK2F3ajJjYXM0Z3dqWERxZHBjWmZFbndrSFZhQnp1TjdLMkxX?=
 =?utf-8?B?MzdOQTdjQWdzR1VGcDFlTDVTYnoydzQ4cm9TbWpVRTRENFhlOVpJTDRUa3Zs?=
 =?utf-8?B?bmc2NkM0Mk5RR3ZYMHBPSXlpNG1UV0hJcnV0Y3dtQUs2ckwrY3RtMFY3ZVdU?=
 =?utf-8?B?WVRmOWltdlBhUnZjeE1scXF2SzVUL2RyU1A5dXE5dThjUkhQTGdGRHBjM3pw?=
 =?utf-8?B?TVF4S3pzcnZMaGJnS3hHNjFTUTdDaGh2K1gxaXd5ZEwxK3daRWx3clBsU3VZ?=
 =?utf-8?B?UUNoNkJ4WE9Ua202T3l6bUVoV1A0TjVrR1lzcUdERzZWVHNrSmpRUThmekFw?=
 =?utf-8?B?V2FNQVllSUlYUzJ2S2xZZ2FFdGx3MEZFM3pyZGU3ZkMrT3lOOU5HUjNrSkxW?=
 =?utf-8?B?SUZvUXQyWW1HT2t3dVNBQlBWTzc4bmlpVXN5OXdkbm1Uaml6SVordzNEdngr?=
 =?utf-8?B?VFdHWEg4UDRnZ0svOGZudi9aY04wU21xNEZibVpvNWlHeFVhdm9wdmR1eTQw?=
 =?utf-8?B?c0p0MVFKN3BOdkFQOUlWeWlUekJnRFMzUGZSVk5wRjQzeG5GTGc1a2U4TUNi?=
 =?utf-8?B?SlB3cE9BWUpjTmZMQ25pUHV6TDF6YjBqelZjSlRDUUUvckpFaFluc0tESHRR?=
 =?utf-8?B?QS9ZOXhPd05najBPbytxakRybzYyQTVkdVRVSTdCSndqVmFvWElheTFSZ21r?=
 =?utf-8?B?Qm9uTGlJZ29xWG1zL0IvL1Z1NzZDNnd2Nm9zS2h2ZjJZdlFjQWgvc2ZjcjRH?=
 =?utf-8?B?bDFhOWJUOGxNYmI4WW5mUXZUY1FudFd5dGdGR1hNcVFjem92YXBJUzhNT0ZR?=
 =?utf-8?B?Rk9Fai94NTAxWFZ2TUg2aTdHK1MvUHpGbEx4cG16aktqaStTdXVybFd5czJW?=
 =?utf-8?B?WFpsMUljRnNzRUF1QTZhS1hUTnNETWR4SlJxN2JHckFwbUdjQjR2cEdoa2RP?=
 =?utf-8?B?V2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d3ff9f8-12dd-4fb8-4d79-08dceeeb5f50
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2024 20:36:26.4654 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kljoqo7ldw7xc3Cg9nFYTJYcqhj7NW+lXHpya048+WG+pTywO/3hNNgcY7jyFEs6Qh6uxLwWD/QvGRmYRBuIeeQdJxpswepfuOStq+Nu/lo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8003
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729197405; x=1760733405;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=N46CdC4z+NV85jHS3OXrMGj9/udfIV+T0eydRgxKlYc=;
 b=WYEPyzm+a1Yin/LoEPkiizemEq2AjJf94J38s8jcINozCILcGgzsQF+S
 RCd0O1lfXVZSnjYgeqi9PlM9orX1ox7rxCBNEzWhIOxpZN41miKt83Wse
 cKbQaDnmzwAsQmUOsC83GyYyYOLe7zAOkC52/iV6EKAV2BYx/72fzbVD8
 VtVSjf+c3Fe/KK0Uz8ovRTZd9EQbYU1iyzl+E6RNM/5upXiJezK24UhOl
 X3EbmbAiFUT0w11epso6sSh4jvLtdJzS5pzQT1N6PTnD0H7R7O98Ntqj2
 6tvuIbkOD7J1nDz4UkWOIpriJ9PpoYkD62xC/5qJcKl41qDSa68jQk9Nv
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WYEPyzm+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Break include dependency cycle
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



On 10/17/2024 1:58 AM, Diomidis Spinellis wrote:
> Header ixgbe_type.h includes ixgbe_mbx.h.  Also, header
> ixgbe_mbx.h included ixgbe_type.h, thus introducing a circular
> dependency.
> 
> - Remove ixgbe_mbx.h inclusion from ixgbe_type.h.
> 
> - ixgbe_mbx.h requires the definition of struct ixgbe_mbx_operations
>   so move its definition there. While at it, add missing argument
>   identifier names.
> 
> - Add required forward structure declarations.
> 
> - Include ixgbe_mbx.h in the .c files that need it, for the
>   following reasons:
> 
>   ixgbe_sriov.c uses ixgbe_check_for_msg
>   ixgbe_main.c uses ixgbe_init_mbx_params_pf
>   ixgbe_82599.c uses mbx_ops_generic
>   ixgbe_x540.c uses mbx_ops_generic
>   ixgbe_x550.c uses mbx_ops_generic
> 
> Signed-off-by: Diomidis Spinellis <dds@aueb.gr>
> ---

The changes make sense. Which tree was this aimed at? I'd guess as a
cleanup without direct impact that its aimed at next?

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks,
Jake
