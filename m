Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B099D8FC281
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jun 2024 06:01:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FDC881E30;
	Wed,  5 Jun 2024 04:01:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RteobPyjXHZg; Wed,  5 Jun 2024 04:01:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1865B81E28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717560076;
	bh=kPDJWxNzMUeBdnD9amJxR+gAEVpJTIujhQd5+1WfHSs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kMhYj+E5Fx4FK8vFqQipj1spkRacGOABpbxHwfMkX/GMkbPOaxmTwVR9jp4p9/cUg
	 voFKPTIfZl9x2C8Zm5htRbJI4+i+8x4izf9MGGHKKozPR3uEKSiBBQN70xFUF2Rn+1
	 DiFXzaiEQn2t+S0qfy3QXC0LM3dFYAgDpXV04+f9ccbwOib1FBP1qe4n97Uzn2E4sl
	 aZNWOIFrSGU7PgozcBeNcKPV/tVm5/T4KF0O7ChhBs2R4Lp6WH4j4GJBzqHTJIR3wu
	 B9ZLeX81klNb7uiZFtCjGC9qwJOdZ9MwdmXYbxfn171KTkDJUUgkcXdopYSkS/l5Vf
	 jS83evVG2jXcg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1865B81E28;
	Wed,  5 Jun 2024 04:01:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B5E831BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 04:01:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A880160AA0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 04:01:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YW91i4NnXmcy for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jun 2024 04:01:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 943A86064F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 943A86064F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 943A86064F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 04:01:11 +0000 (UTC)
X-CSE-ConnectionGUID: rQEEhHqmTVm5cKKWYZA05A==
X-CSE-MsgGUID: mIF3Y3uwQhKEvjH90Li0rA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="17080959"
X-IronPort-AV: E=Sophos;i="6.08,215,1712646000"; d="scan'208";a="17080959"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 21:01:11 -0700
X-CSE-ConnectionGUID: jdA0EB+aSMecvntr6W9v8w==
X-CSE-MsgGUID: v3aOuxgeQdefMSG2sVcxDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,215,1712646000"; d="scan'208";a="60641765"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jun 2024 21:01:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 21:01:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 21:01:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 4 Jun 2024 21:01:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 4 Jun 2024 21:01:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q+wr+eXkjdGj45NJcFSijD/mMxCEx4x2HzR+4pYhtCWELkJ4eKiR2xtBjXZRPhKMtvHjhNQ+z/6bfR57EXfN83uUpHz1BnqFPRMUX6ftJfFOWtk2oQmgnID87DPNi1H8r4Mtiz5wYavb30V+0mai7aiiQXW7NJ3O74G1ZnxfcVpKXRBr8Pf+mYvAPXxg8jmHjdDv4RjxWPdfP6wKPYWELOUGIckNrQ+GNGdFEKLmG6C5PSczCoWUe31dcm/tKKceir4ZQ8PQsbiBhYBFrBN1UpbaMtG4mmmUpSXIXSoPj2OzCJ3EA5u5Ma5vO0en5m/XTSuOwv+Es+y5wMrO2AF28g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kPDJWxNzMUeBdnD9amJxR+gAEVpJTIujhQd5+1WfHSs=;
 b=YGGhNAkJe2+bEVVnA11IinMRoJq6AFL/uTlwv43AlucLcUT/uxBC29EQmNWQoDgbJY7SdPX1xjO8SyEUvf6dTRNwfnYrA/qlKBGvMD3sUeYSBuS2KjgBAviBqGLNRCtNhU84Z8UIQFGIUZll2fkO2+6f7Us9nqbeMWSfS/mtqmGJVibeVzbnBFTgre9+gNOdl5/mSSzAl3kVFVqzpqxNvrZbqPK2AqVJ1doY9Y4Z0VW5z64ve19J/4a3kx8DdGtXFq/ff5E06nmkk72tyGe/gj6JP5oK7xeq5+528X6m2ZKQOVRJ2MYh+VYhMmob6Cqcj2alSN5SdleN3fBduj6RuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MN2PR11MB4728.namprd11.prod.outlook.com (2603:10b6:208:261::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.26; Wed, 5 Jun
 2024 04:01:08 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.7633.018; Wed, 5 Jun 2024
 04:01:08 +0000
Message-ID: <5c19f080-8ad2-4e9a-b664-b5e3e45a852a@intel.com>
Date: Wed, 5 Jun 2024 06:01:03 +0200
User-Agent: Mozilla Thunderbird
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240604221327.299184-1-jesse.brandeburg@intel.com>
 <20240604221327.299184-6-jesse.brandeburg@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20240604221327.299184-6-jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P190CA0023.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:2b::36) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MN2PR11MB4728:EE_
X-MS-Office365-Filtering-Correlation-Id: 39714152-66e4-41c9-3a12-08dc85142131
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SDN0WFV2NDQ4ZzJVRG9LOGM0QnExOHdXZEEwQWxiWkhhZ3R0a3NGbTFlQkRo?=
 =?utf-8?B?UEUyUm84aExld1B6Mnh2a3dWWE4xY0ZBTzNwcDBOQlFwaWZBOUkzSndUYzJU?=
 =?utf-8?B?RG1rMjdrWUdpcDZqeWlVeUJPdzMxRzlYQzdrSjdmOFAvbG1HYVk5TlRmZ3M2?=
 =?utf-8?B?QSt2NGhPL3JldzZOd1VQbVV3MmV2ZW9ud08wMWdDVUMyam1BeTVwdWpMZCtB?=
 =?utf-8?B?US96bklBVnJKVjVRYVZLS2ZqVWRCVWdBQWFWTnhVdldEK2p1YURxSWdSQWhh?=
 =?utf-8?B?NFVCNDdrUjlwVDlzWW9OM2E5SWl2ckhuQ0x1blhNc1doU3Y2dlJSbHNKelhM?=
 =?utf-8?B?QmlJbUdYMmhtNzBwYU1OWi96NGY4MXZkK0pZcjdNQmhwYXRqZmFNMFgwSTUz?=
 =?utf-8?B?R1ZDUDBZVEVENDJwUEp6emNQSFM4R2Zjbml0eWg2bEtEaE16S29EMVg4Q1Bv?=
 =?utf-8?B?NjFKR3cva0M2WW9uMmRiRHdaLzhOZXdmSE9NZW56VDF4V2tGQzBRLy9Rbnhr?=
 =?utf-8?B?NHpZYUY2S3BuaDN5V0g5VUs2SkwzaitFSmkxL21EYTdSYTZ6TVRyZ0s5d3Er?=
 =?utf-8?B?b2ppSWdUT0txaG1rWjVYc2hCcEgrWldPQSs1d3grQ04yK2hxME9DaGJhNnI2?=
 =?utf-8?B?Y3Q4eGxqeEVrSFcxY0RLaUxEaEluazRiZTNETFVBaUs3dGsxUVpIcVpmSUE0?=
 =?utf-8?B?ZTNwNTZ5REhMWG85SE54TVBwZzQwV0RyTEx1WWcrQnZSeS9XenBZVEN0UVVt?=
 =?utf-8?B?UHpmKzBsUFhSQnRzWkdJeWZlUWJBbHRPQjNwYkJsTDVINjhxS0RuN2I4dFkz?=
 =?utf-8?B?Vm1RdWs3MGRnRXVCcEZpOWtqNXlzK1Y4TFdGQk9tVDdhWE9udEorNTJNL3hl?=
 =?utf-8?B?Rm14cmZGQ3BhNnI3Zzg3Mm5ZN3Bmd0gzY2FoaEV6SERGdlVUSVRGWnk3V0kr?=
 =?utf-8?B?ejhHN2puZFFUQ3VPM3dPM1A1RkFXdWdWSVpBOHV1cE9uYnMwUURaRmxQRWJ1?=
 =?utf-8?B?K1ZZWTBHS2R4VWRoajIySnN5SWF1UUkxMmZ3OHlQdmJQNXBoRE40NldUbU5D?=
 =?utf-8?B?Wm9qOWIwRUFlT1pwazJuamM0Um5iRjd4cUx5cy91a3dCUFF1ZnhxWU10eG9n?=
 =?utf-8?B?WVRLdWdBcklpWmxtQUs5Slg1bGVxT2gvRXA1ckg4dDJQUkt1d0ZFeXQwWWg5?=
 =?utf-8?B?eXZzdGtGbWNNczRYYk54YUgwVVFuMnloWjlnYVRjdVUvbEQ2bS85bW9MZjBF?=
 =?utf-8?B?NVlqQmxmWFZkaENVNDBvOWQ5VWZTVm5UMzhLSUtqTFI1QnQ0M0hMMEFDdXJU?=
 =?utf-8?B?am5jVUh0R3hpam1hakc4d3pMMzNzNWhKYW10V0phZGRhYmd6cU9kQzJMMmYz?=
 =?utf-8?B?Y0hEcFRPK0ZkaWxBQ3NqMXZvWkJVM3V6UHZTdUZFWkVIT2FON0dlUERXUWd3?=
 =?utf-8?B?cTZTclJYclJUTDgweGJSZEs1QmM1cWlYQXV1TGVxMmNvWXJMbndGUUNzMmZJ?=
 =?utf-8?B?b3I2dy9wZFBoMTIzaUo2VThNMGVHem5YYXlvZ1RKMXJlRG42ZEE2Rm5mRFVN?=
 =?utf-8?B?TkNqSENzYmJnTFpKTUVtL25jWEg4TWdralFBUFhwOXdtcmxnMXVIdlZSTnpN?=
 =?utf-8?B?YlNTbFhSTlU4YlI1THBHOUJjV01xL2FUMzVBVmtGRnhsL3V3eVY2WENTTVVv?=
 =?utf-8?B?Y2dIZndveDByQjl2YVpzRXl4WWxMNlF5c0pkWHpYMmQxMDBjWWhhU2JzVGFM?=
 =?utf-8?Q?x58UVRuDdR2jGOYDiWv5CN/rWlr9dSK+1OnBsau?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVVONW9NbG1lNzUvbVIrQlErS3ZVUFpvTy9FeVlPdWNOSEFWV1ZySFc1SmFG?=
 =?utf-8?B?NmFBM09uM1pDaysrcnhTaUV1Z3Nvd2E3UG5xRVZXK1c2OFdqMk5TWHJUSkVx?=
 =?utf-8?B?WUkzT1pGVVVaMnFKWURnRDRDcnBWbHRuSGUzbHlRdGxmRm91Qmh6TFNseDI0?=
 =?utf-8?B?S1BKMndqUE5XZ2FwUERKYWREUGJNWFVwTW4vQkhSeUFEMkM0VjMrODRmT3Vr?=
 =?utf-8?B?WVMyWFhhSWVZSHhZY1dOc0lxay9DRU5lNmtBb0ZPd3ZpL3d3V1R5bnRUZHoz?=
 =?utf-8?B?OE5iUHBBSnRnYm9KQ0h1b1VKZUZ6dGFzcVBSZXNvbisyTEgxM0gvb1ZiMEdE?=
 =?utf-8?B?emZBdnE0ekNWVVMwcmRHZ1o4NkRvZnNXV0R2cWxDK0RaZlQ2TkI0cnd3Z3Zp?=
 =?utf-8?B?U3dUbEE3bUZJWjQyRUl4RENtZmVWZWQ3MCs0NnZ5VEJLaTZCZ1dJMVltM1lr?=
 =?utf-8?B?bFFtYU9OM0hPRUlkYWJJRG9tMkZwWDE1R3grMFl3ZnYvTlJibmIxNWFaQllB?=
 =?utf-8?B?SkY4VlBXUG0yaFdMVy9UVlcyQlp6TGU3RXk3b3FzdnNFckk2ZldiVG9HU3ZM?=
 =?utf-8?B?c09CU1B0QnE0eHEweG5JTnNZM0FKeEhnVjN0b1YzNmdPUEQyR01IY245SExy?=
 =?utf-8?B?MytzV3puMnFEM0dvcnRubEN0RGZSbVdSVmM4ajJGM1BSazJJL0lUWk1WSnI2?=
 =?utf-8?B?MTRjUVhzeUtxMDNjamovWC9Ldm1GTk1tUjhZL1U4V3gwMDlFSEVrb0JUcDBZ?=
 =?utf-8?B?c21JNjA4NVd4OWt0aXVQdmJPL1pzRUlPajNsVjdLbGFjZTZHdWtCY0tZUzN3?=
 =?utf-8?B?VHYwT3JFeGVqZUNmTktsT29zK0VsUmx0NkRSQmVCbklua29kMDAyNStsTjlM?=
 =?utf-8?B?eXhCSGJEcDczRkJnNFdOaDBMTlZGdTlpU09SbmxaYXJzajNLZzE2VHdLQXkz?=
 =?utf-8?B?R3pkQnFMek0xcGpBaDFMNXA2MjlWazh3SWNBRFd5cjFqSjhnbVhYL3FhLzc5?=
 =?utf-8?B?RGRTSGVPY0Q4YVg5M1BwTmc1a3l1d0I3cXlGRDVIdmZsbWgyRytReURhV21n?=
 =?utf-8?B?d25KK1VtT2dWRUdlS1FZVmhxMDl5YnBUK0pVNUxJMDhpYVV3RzFPU3JuRUE2?=
 =?utf-8?B?Y1A4TXZGZDd5d3pIL2p2VVVoUFJGVEZyb2VBbHd2Ky9aN09qaVBKMlg1a0hk?=
 =?utf-8?B?ZCt4UjdUcGU2WU41REZLSFJFaTl0SkYweDQ2a0dncWFZNDB2SkRRcVZsZnFq?=
 =?utf-8?B?L1VDS2JqamEzV01lU2xXWEwycnpIMXhLeVZoWC9KUnFwajBTVnBUdzZ4K0hX?=
 =?utf-8?B?ZGlWZTNnRWVOOTM2NnBMTnFMOGFpSkM4b0JGVlpVSlViY3FFa2dXYnliQjZH?=
 =?utf-8?B?aEpSWWhoMC9oRnhWd0g4R1FCd0VqNGhoMlBzZUp4NEk0enBaVmMzOHAxcnRU?=
 =?utf-8?B?amY4TDlzMThRaDZpRERkSWlqOS9Dd0Qza2h5N0NNRTNOZ1RwaVoyN1k0QWUz?=
 =?utf-8?B?eDJZRUE3Q01tb0RyZitSMFJIcXRDbktYTUp6cGd0ek1MTTQ0MnRFV082R2dR?=
 =?utf-8?B?Y3R5WXU5bGlMNk9ZMEsxbHQ1OWN6RU96U1dPTUdaaFZ2VjFyVW44TkZxNkxp?=
 =?utf-8?B?dGVzdmFFekdQY2VEeHNvQXlVUVNlRnhhM3Z2WExOeGRvK0sxSEhyNjFURnJK?=
 =?utf-8?B?TmtuZzE5clVOTjFCbmJuRHJGZTRBVGdlakN1bS82dEZZTWpQM3pWUDR5Skh1?=
 =?utf-8?B?eGpVd0JhMVp4K1RROWxsUk1UQ1lSZmZwYnZ2cGlRUyszY1JFWHJVSXAxS0tx?=
 =?utf-8?B?dng1cFJQZkhjR3ZRaVhEbDRWKzJzZVJubXlDeEY0ZHg2NFlKT3dST1d1ZFBN?=
 =?utf-8?B?WFJFVjNlTDdGR3dobjArK25TcjkybzZpQjVOc0xZT3dRZWt6cUpYOEpGQ2Z4?=
 =?utf-8?B?Zm9pNTltVC9vS1lBa0hjK0w5YTRJR3pEWko5T1dCRDJvVlIvOFZnZSsySURD?=
 =?utf-8?B?THAzZHJwQzl0UEM3OHNYTnZuNXBTRTh2dTRmdTJhdTZiWDVWeDFNejR3cFFk?=
 =?utf-8?B?MVpORmRXUmUyclpNOXk0ZjlyOXhJakhEZTE5emRrdUp0akhncjdvU0lQYURm?=
 =?utf-8?B?VURMZWJobTdsN0NGZkppWFpPeC9yYVFkbEVaS0RhV2NrcEZ5ZWNtYVhTTzFj?=
 =?utf-8?B?eGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39714152-66e4-41c9-3a12-08dc85142131
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2024 04:01:08.4575 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fO/Y81HZl2g/ESkjIgaZA7K4lv4pkMss6af+Tf6mCVBK74qiYMguTGljvG+fhfz5/mX67j00MXGs3WKtHujWW/1n2e7twJLSnniGOqzN7JM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4728
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717560072; x=1749096072;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AeeOv/idnVScdICFPKfU8zauSu9Ho0kDhXEbHCSMLB4=;
 b=VCtNDo/A/mX9qyCXGcUN0toJizkodjffBrkFE0bBqqPS+bqEHJJJWCGq
 1nFHRIRKUwq4Zxar4fPhgFFkIRIwa76ska0ZUNgL9blClWaJIZPt2h3fj
 J42r9ujtXzHjh/uI+uokraldY/Ppu6Oge6ZyGBZYCkuAIKs6XI1NyzpV9
 UIwopVgyHUS5mJo9Q2Lyv5xEr/GZrIvMFw5KxnQpxzvEVf7gF3milWviz
 27Rm0r9n7twY6U9ZsnwFFujH+/ezdllNrNInXiiXuFY+nrOt+g19IB6m1
 4qwPjOlVPWNJ31rp8lHICsxK5gvbGQwE7XoaqKfKCuSldHQlEJs79B42j
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VCtNDo/A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 5/5] ice: refactor to use
 helpers
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, corbet@lwn.net,
 linux-doc@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/5/24 00:13, Jesse Brandeburg wrote:
> Use the ice_netdev_to_pf() helper in more places and remove a bunch of
> boilerplate code. Not every instance could be replaced due to use of the
> netdev_priv() output or the vsi variable within a bunch of functions.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ethtool.c  | 42 ++++++-------------
>   .../net/ethernet/intel/ice/ice_flex_pipe.c    |  8 +---
>   drivers/net/ethernet/intel/ice/ice_lag.c      |  5 +--
>   drivers/net/ethernet/intel/ice/ice_main.c     |  7 +---
>   drivers/net/ethernet/intel/ice/ice_sriov.c    |  3 +-
>   5 files changed, 19 insertions(+), 46 deletions(-)
> 

very nice, thanks
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
