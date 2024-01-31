Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 136BA844578
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 18:01:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 943EC42042;
	Wed, 31 Jan 2024 17:01:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 943EC42042
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706720508;
	bh=STdNsgw75jKvPI35W/01PTP+iKtqBa0KrOgoAJQDz6k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2fY2+R5Tl+fbB8AjOxYzAXsyR6wWJMXss5JDSCuNsK0ji3mNVqjsg6cg6rNOUNkR6
	 9ZeHWjkL7IS7W7gOBFfDvr2EGm6O9kTtxz42tGj9xTk+RTe8kPFGlqbQdH88nH4WkB
	 6C1jQ8P91Xg3OBYSktLp3Zh4CayW8EW3y2xe3oQGYklD9TJ6dNWFfuJQL0Hbvg7Rf8
	 /KPqSV6OdShz33DLjs5CTWnh0nxTRlLJNLFchRzP6vhEl7DSN1Uu4YH+X+/JgdD56a
	 V0sDwN7xQJoxlOebm3oiUGgAlo9ypYcEPtBMfIfDLU198y58Kb2LFZLoLAI4YmWEkc
	 Jp8qZWvmCna7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e2YKRKUxmZgS; Wed, 31 Jan 2024 17:01:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3542641FB6;
	Wed, 31 Jan 2024 17:01:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3542641FB6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 210221BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 17:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 03A3F83D64
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 17:01:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03A3F83D64
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c7uhjNRcwa3g for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 17:01:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B5EF983CBC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 17:01:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5EF983CBC
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="407376274"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="407376274"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 09:01:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="738158035"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="738158035"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jan 2024 09:00:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 31 Jan 2024 09:00:45 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 31 Jan 2024 09:00:45 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 31 Jan 2024 09:00:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sb3wCm7RJpQwy+iW+GBVVEp8Mx+AvD1AwShKZ8DqizkOj3sSR1acPPcGV07/1uAbWbijvXDwytJGkSmwguODt6f6AZvykB3cVu2mAW7QkOJe4/1aegnUDgrAf3Qg+RoLJ6gza/qXp7/v97/Dpux6jeHpV40Hy0YzT5P83Q0ljNrNzS2KmrBSecBcp38vOPRtVhtaQNZ82Mz4hBFmSf0z5TRJJhvvWJNSvXaFUbLH8fGHZJZaENebfp5P6iFy8QLhOdpl3+VToPk9hEbmfbjBiAJjfnGBmLPE7RbZF1+eJTDVyght9NO2gp7gKOQJBtccHJp4e0fB366aHrr1VM2u1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=STdNsgw75jKvPI35W/01PTP+iKtqBa0KrOgoAJQDz6k=;
 b=c4PDVlS0NERCXxwFX6R8HO3xdHx0/46gAO5M59K6SrwZjFio5EGagTGc6U0ieg36aAqISEF1klttSsZyATPTvr4sU3L5d6JRexaPV0ikeDVvsLDV3FJYDL0fScll/g4N1Lr+sYtIjTrCxmIG0rsu0c39zXYtKkSIF1SFKKxTxwwGDpjdcKKJamDHLHWkTnvD6pz0Oi79z7KDOBu8ZDiGbIeyJEunBFpukuQDNRsKdQt5KyczHR++7+yALlaBJZKALNp0Cjndr9ShdqbaUFdW4cQMG+mTXk+Ds/Z6rMHxCAzta1n8eNNJIA2WbmTgO6oY3aBFlK2oZ76txrTUfXVsdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SJ2PR11MB7671.namprd11.prod.outlook.com (2603:10b6:a03:4c3::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.24; Wed, 31 Jan
 2024 17:00:41 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769%6]) with mapi id 15.20.7249.017; Wed, 31 Jan 2024
 17:00:41 +0000
Message-ID: <8c35a3f0-26a2-4bdd-afe1-dcd11fb67405@intel.com>
Date: Wed, 31 Jan 2024 17:59:52 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jiri Pirko <jiri@resnulli.us>, Michal Schmidt <mschmidt@redhat.com>
References: <20240131115823.541317-1-mschmidt@redhat.com>
 <Zbo6aIJMckCdObs1@nanopsycho>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <Zbo6aIJMckCdObs1@nanopsycho>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0100.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::41) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SJ2PR11MB7671:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a173e6e-0e7a-4f21-ca03-08dc227e27ff
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HO/M9ts0HreeZccgbXG9Ap1gL1muNqf5lsCWU+iHHj/0LyO2BHjnxWy8Ka7WOAx/ViUCGHJ0+i7yUyeULmz8falreB8N8H9N4doRDFUG3Xp2D2WiV29iJM1jS2vcEv6JBCcbbnI/MgeAI7XhFKiPAodndM86Nf2pZolC7tHU4w6IaGsYD3FLdE80IPhffymbZifsn38hX2J1ehKNCVhArYSottaxskiCgXtMeZnLB7ityJQAkw+iiZMDcyYRqooscq4wKRY4684eH0pm6o4HxFUB4IsN9s3piCK5ihaCGNEs4qCXZ0G7gjnHkmtZen0Z82MCrshq2GLkjYcfIKRQ5wDCNCSbIJ4k7qcAN1xsfh+AR3k+BpPqXeAtpFNqKXZ233PH6LY+RY/xxOeZHLUGIQa2P0MgqHat5qa6LwdPAFR66XBTI6jM2WfuLOQusdGjqlQYhRmn9lPv5D5CbIV7k4m6aCJFu7c1DHaigY9WlZ3Wx3HmGb4nXq42TkwJTpOc1V0rxfRLg2AkrtYtUaz40wbLT4mPCBWGKK62s8AyfXCEaGdh7JZ1wvw0RcWen8PPt0FxxB6+lKhcA5+hegJm/2IJt7zjDk799BHRQGm32vUOW4Autrrnk3hgcisSqLJEvley1SIQ0bxrMPHiyWhoXA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(366004)(376002)(396003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(66556008)(2906002)(5660300002)(82960400001)(31696002)(86362001)(36756003)(6486002)(38100700002)(478600001)(2616005)(41300700001)(6506007)(83380400001)(6512007)(26005)(45080400002)(6666004)(8936002)(316002)(4326008)(8676002)(66946007)(54906003)(66476007)(110136005)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0xzcWpRSG8zNXVGT1BwZlBueXdZZVNQZUt0MzYwZWRWTnY4THp6TDRUSDNi?=
 =?utf-8?B?ZkcvMjNyenJ5bExEY3VSQ1VLdlhZOUR4cldkK1BNKzlpWUdMSXBINmE1eG1x?=
 =?utf-8?B?aDBieGtKbS80QVVLMlhaNDE1QVVSc1JwMVVucXdWbzZRMEd3S0tMSkJ2eGVt?=
 =?utf-8?B?a0ZOY0Nvdm45b0pybkxrWFNVc21oL05Wb3A3dXlMRm9kUW5XVGpjWEQvbEVW?=
 =?utf-8?B?RzhPUFlCaEdUVFl4M0VTek5TMjBHd0lCeENKdWhYM0RNWDMzdTNaU0lvNU9Q?=
 =?utf-8?B?eFhOOXdxZUw2K3FNbnRua3dxNjVXWEZJcG03MVp1S0hPMWRpQ1l4c2RZWWor?=
 =?utf-8?B?K0dCQ1pPZXlXWUNVRXl6QXdwL0ZlN1hHaXFsNjd3c3dDVEhpZ3ByKzloNkxu?=
 =?utf-8?B?RVVtYzdWR3EvcWVJcnJMMVUwK0JoamVSWGZaMm5mWVN2cFhFcDB5QzYwM2dn?=
 =?utf-8?B?UnFtQngxa0JzSkRZdW5GTDJrdzdrMXlPZGZrdzhCNWVjRmFVaENDTUZ0enMz?=
 =?utf-8?B?eG9sVVBHMzZxellNYS9qdmJuUllwTCtOaVVYdXZncEVLcmw0NGR1MEp4c0tO?=
 =?utf-8?B?K3E2MFc0TE1TRHlWclVhWmJHbWNiNEJrcmxVQkgzODZGWlkzbG8rYUpZNGhM?=
 =?utf-8?B?YTFheXcwQm5QelBjdGI4emx0Vmh5T1pLTHlsNVdPelJwL1I0eDBzdkFTRUl3?=
 =?utf-8?B?UjBDb2hZOGtEcWJLa0MwQWo5UHJZbnQ1RkgwWldmY1V2cFlqMWlhRk9aODk4?=
 =?utf-8?B?dWxwRzJBOEJRTHhITys2bFF2QjZPb0pSZlFOVncxWXIzVVlGeS9FbVJWZVZV?=
 =?utf-8?B?eURiSHRoSFNuY0JOeHVBOFpQdXZhZ0p0ZUliazByMmRkSzFya2tLcGhVMEc0?=
 =?utf-8?B?T2ZHeFp1aklyWWNNTmZGSDQ2SDRLK0lSWnFDQjU2dlRNUkFiUUhLaGMxWndw?=
 =?utf-8?B?S01PMUNzVENJcGJHOE5CZm9zNnQ5QUZ1dk8rOXl4cmp2T3ZXN0kxV0VBb1Vp?=
 =?utf-8?B?OEp3K21UNENkdTd0QW00T05nMTAyWEh0V2srcVlBMUhWTzJMTUdNYlo3YmdV?=
 =?utf-8?B?enJWVTBmNEZUdnJzcVFkTXpuZk5PcWo1eURTTWl3TU5iT0pLeVd0TXBBdVZG?=
 =?utf-8?B?M1JNb3I5TklnTVdEL2RZY2k2WEo3eEEwT2QxWEdQb1JGWEhEcE55aDduZ3p4?=
 =?utf-8?B?L0ovUXE4dk1BN1V2S0FBNUZCeEhrbStHTHBzVldDd2t2ck03WWNUbWtXVUdX?=
 =?utf-8?B?cGYwYVhjcjVwK3NacHhzN2dxeUE4RFhqWElaMEhPdjBJa0lpSUhmM09rb0p5?=
 =?utf-8?B?Q2I2c1Bwb1I4aTM0SWErU0FDeG43WmN3OGZLcWRXbnpqTXdHVGR5QVVKd0dE?=
 =?utf-8?B?c01oc21RZjQ5S2p5UDBGWUQxdkRyZjNYaUowZlhYQnJURlBVWUtJeENlY3cx?=
 =?utf-8?B?WkR5TjRFa20xckJVUERjOG1BbWkzcHpUVDVmd1c0TVRERDlqVFI4S3NsQllj?=
 =?utf-8?B?MFdpU1lRNVRJZWkvUEZMRUJiV3JGZFhHMWtqSEJoeFFud1N6MXROVndOOVF0?=
 =?utf-8?B?ZmwrSWc4QTM0ZGk0ZjZLbitIRTNPWmlnNVJ6Y08xQXRaNVkrTUZtYW40UDRE?=
 =?utf-8?B?VVVyWGJOMDBMVzJwUTdIQXY0QmtLV3VHZmV2V205TGpwd0JuTVZBN0ZpMzhl?=
 =?utf-8?B?R0MvTWlaeEhPbjlURlF6QTBDWUJYSVdoTlhOOGNjS3hmRndNWmRUODR0dU1w?=
 =?utf-8?B?SjFjb3ZRUWs5NThqbHNxbjY0Wk1hVERycHNWOVFGbk8yOEJFVW5TL1haQUd4?=
 =?utf-8?B?U3czYUdUU3YxTng1bXJyQXdwMDV2L2IvRTExbFk1MG9laHlJZ2NmTEFLQjNh?=
 =?utf-8?B?TGJTSDF4V2x4T3NVSEczVkRCeE9uaEI1ZFkvclVqNUd2Yk4rZzFaWWFXcUth?=
 =?utf-8?B?MHB4ZURUYjBTVHIxWmsyNVRIQkJjMVZJVG1nUksvdDZyTzZEOG9QZzFZOGtX?=
 =?utf-8?B?NDh1Njh3dWZ5MnllZVRlaVBFT2hocjZYRVltMmVvajZ4NHc3alFhbjhHUUVp?=
 =?utf-8?B?TFJseUpUaEhoYU8zNTJ5dnFuVkNpUGdxTFJXZlFFVmRTV2RmQ05oMXpXaGtk?=
 =?utf-8?B?UmNjOWN4S1NTcFJrbkVFTlhhZEQyUnBsNW8yaFBtVG9TSTAxdWNndEJTSi94?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a173e6e-0e7a-4f21-ca03-08dc227e27ff
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2024 17:00:41.4757 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zmP6ToJSQMFoD12gaRTN//WadLWLXjctarXz5ru83cx2nL7upBspf93tifrjGOb261+OnoyplD1TdGeKScPD62vDdomtjQzBSXCp4VuCC8I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7671
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706720500; x=1738256500;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KkSlAOAHTo3OBkd/Iz+y69E8zfzk9pDCSrUx7zuEH+8=;
 b=EJTVd+6plz24ERUtBjwroO+348LSKTFxiKwqVGkZNnKJi2ICPxOte7eO
 BfLNQyeNlNoRHtuL3P+lfDHMMaUAoGJW6HX9wTnjuf6C1nQdrJsIspDU9
 ZKmp2/EIQPPCe7UBGOYegP+YHXdHBM22PiJxnpZBpu8vYg/UVtx2DdeT9
 Dxz6HwWSeWnpxn6sbCqftYss6snSjIVQHSPfD9Li1WIv868+TmCwGk0ty
 qGUNUKd29pMMzhsnkeFxbWTjvv2WWpgJgO3m+/NuI8PsK7+mgCUUHx86f
 s1Zigh/S3UhwzaiyLF2NVAbfrgLZSiMVUc2mN8aCHu22d1J97Xe+9zBiw
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EJTVd+6p
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix unaligned access in
 ice_create_lag_recipe
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
Cc: Daniel Machon <daniel.machon@microchip.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Dave Ertman <david.m.ertman@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jiri Pirko <jiri@resnulli.us>
Date: Wed, 31 Jan 2024 13:17:44 +0100

> Wed, Jan 31, 2024 at 12:58:23PM CET, mschmidt@redhat.com wrote:
>> new_rcp->recipe_bitmap was written to as if it were an aligned bitmap.
>> It is an 8-byte array, but aligned only to 4.
>> Use put_unaligned to set its value.
>>
>> Additionally, values in ice commands are typically in little-endian.
>> I assume the recipe bitmap should be too, so use the *_le64 conversion.
>> I don't have a big-endian system with ice to test this.
>>
>> I tested that the driver does not crash when probing on aarch64 anymore,
>> which is good enough for me. I don't know if the LAG feature actually
>> works.
>>
>> This is what the crash looked like without the fix:
>> [   17.599009] Unable to handle kernel paging request at virtual address ffff07ff9c6dc004
>> [   17.599011] Mem abort info:
>> [   17.599011]   ESR = 0x0000000096000021
>> [   17.599012]   EC = 0x25: DABT (current EL), IL = 32 bits
>> [   17.599013]   SET = 0, FnV = 0
>> [   17.599014]   EA = 0, S1PTW = 0
>> [   17.599014]   FSC = 0x21: alignment fault
>> [   17.599015] Data abort info:
>> [   17.599016]   ISV = 0, ISS = 0x00000021, ISS2 = 0x00000000
>> [   17.599016]   CM = 0, WnR = 0, TnD = 0, TagAccess = 0
>> [   17.599017]   GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
>> [   17.599019] swapper pgtable: 4k pages, 48-bit VAs, pgdp=0000080dd6bd0000
>> [   17.599020] [ffff07ff9c6dc004] pgd=1800083fffacf003, p4d=1800083fffacf003, pud=1800083ffface003, pmd=1800083fff9ea003, pte=006808001c6dcf07
>> [   17.599025] Internal error: Oops: 0000000096000021 [#1] SMP
>> [   17.599027] Modules linked in: crct10dif_ce ghash_ce sha2_ce sha256_arm64 mlx5_core sha1_ce sbsa_gwdt ice(+) nvme nvme_core mlxfw igb tls nvme_common psample i2c_algo_bit gnss pci_hyperv_intf i2c_designware_platform i2c_designware_core xgene_hwmon dm_mirror dm_region_hash dm_log dm_mod
>> [   17.599043] CPU: 0 PID: 18 Comm: kworker/0:1 Not tainted 5.14.0-407.el9.aarch64 #1
>> [   17.599044] Hardware name: GIGABYTE R272-P31-00/MP32-AR1-00, BIOS F31L (SCP: 2.10.20220531) 09/29/2022
>> [   17.599046] Workqueue: events work_for_cpu_fn
>> [   17.599051] pstate: 60400009 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
>> [   17.599053] pc : ice_create_lag_recipe.constprop.0+0xbc/0x11c [ice]
>> [   17.599091] lr : ice_create_lag_recipe.constprop.0+0x54/0x11c [ice]
>> [   17.599121] sp : ffff8000084a3c50
>> [   17.599122] x29: ffff8000084a3c50 x28: ffffabc4a6790f00 x27: ffffabc4a6200fa0
>> [   17.599124] x26: ffff07ff809e5c34 x25: ffff083e5f41980d x24: ffff07ff8610a0c0
>> [   17.599126] x23: 0000000000000000 x22: ffff07ff9fe894c0 x21: ffff07ffb771a460
>> [   17.599128] x20: ffff07ff9c6dc000 x19: 0000000000000000 x18: 0000000000000014
>> [   17.599130] x17: 00000000c3142fa2 x16: 000000007e77e163 x15: 0000000018c66856
>> [   17.599132] x14: 00000000b8afd426 x13: 000000007e8b3b19 x12: 000000004a34fdf7
>> [   17.599134] x11: 00000000a7cb2fcc x10: 00000000ffffff8a x9 : 0000000000000000
>> [   17.599136] x8 : 0000002000000005 x7 : 0000000000000001 x6 : ffffabc487a054d8
>> [   17.599138] x5 : ffff07ff9c6dc004 x4 : 000000000000000a x3 : 0000000000000000
>> [   17.599140] x2 : 0000000000000000 x1 : 0000000000000400 x0 : ffff07ff9c6dc004
>> [   17.599142] Call trace:
>> [   17.599143]  ice_create_lag_recipe.constprop.0+0xbc/0x11c [ice]
>> [   17.599172]  ice_init_lag+0xcc/0x22c [ice]
>> [   17.599201]  ice_init_features+0x160/0x2b4 [ice]
>> [   17.599230]  ice_probe+0x2d0/0x30c [ice]
>> [   17.599258]  local_pci_probe+0x58/0xb0
>> [   17.599262]  work_for_cpu_fn+0x20/0x30
>> [   17.599264]  process_one_work+0x1e4/0x4c0
>> [   17.599266]  worker_thread+0x220/0x450
>> [   17.599268]  kthread+0xe8/0xf4
>> [   17.599270]  ret_from_fork+0x10/0x20
>> [   17.599273] Code: 380044a4 f800429f 8b000ca0 d503201f (f821301f)
>> [   17.599274] ---[ end trace 168d79e2ecf9f7e3 ]---
>> [   17.599275] Kernel panic - not syncing: Oops: Fatal exception
>> [   17.893321] SMP: stopping secondary CPUs
>> [   17.897374] Kernel Offset: 0x2bc49c400000 from 0xffff800008000000
>> [   17.903453] PHYS_OFFSET: 0x80000000
>> [   17.906928] CPU features: 0x0,00000001,70028143,1041720b
>> [   17.912226] Memory Limit: none
>> [   17.915268] ---[ end Kernel panic - not syncing: Oops: Fatal exception ]---
>>
>> Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on bonded interface")
>> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
>> ---
>> drivers/net/ethernet/intel/ice/ice_lag.c | 4 +---
>> 1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
>> index 2a25323105e5..d4848f6fe919 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
>> @@ -1829,9 +1829,7 @@ static int ice_create_lag_recipe(struct ice_hw *hw, u16 *rid,
>> 	new_rcp->content.act_ctrl_fwd_priority = prio;
>> 	new_rcp->content.rid = *rid | ICE_AQ_RECIPE_ID_IS_ROOT;
>> 	new_rcp->recipe_indx = *rid;
>> -	bitmap_zero((unsigned long *)new_rcp->recipe_bitmap,
>> -		    ICE_MAX_NUM_RECIPES);
>> -	set_bit(*rid, (unsigned long *)new_rcp->recipe_bitmap);
>> +	put_unaligned_le64(BIT_ULL(*rid), new_rcp->recipe_bitmap);
> 
> Looks like there might be another incorrect bitmap usage for this in
> ice_add_sw_recipe(). Care to fix it there as well?

Those are already fixed in one switchdev series and will be sent to IWL
soon.
I believe this patch would also make no sense after it's sent.

> 
> Otherwise, the patch looks fine.
> 
> 
>>
>> 	err = ice_aq_add_recipe(hw, new_rcp, 1, NULL);
>> 	if (err)
>> -- 
>> 2.43.0

Thanks,
Olek
