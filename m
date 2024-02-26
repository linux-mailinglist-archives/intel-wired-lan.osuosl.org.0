Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67326868150
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 20:44:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7148281EED;
	Mon, 26 Feb 2024 19:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8lmstAP3ifr4; Mon, 26 Feb 2024 19:44:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B43A781EF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708976640;
	bh=VrzggAeOPjlPkk8cNTRlYfthpRGO7Z+V5VUy+rZHe3I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qu7qsiqUBcOdNZ+t0wGoEKKM95r0XIZVjoW7S7DNF0GaR7Hf1CGE/Ia/BJyLsq9+k
	 mtLv+60UrRCO0PsIzJjbhh90iYSBBefb42GSDa3AfI7VCFwNkCp32dZhGDE2poivtl
	 F5PW8GnTZkFHi/y7hVLM2CN4R2jUKiMW7gpgGwaMutYzm7O+Kxk3A0+HWCbTPi0xdA
	 Trvk9ei9RlrqqxTcsFT/bewH9yv1eyyRXWsHxUi1tVyhkRjGdTned6ajmSqDPs1iXJ
	 SS+pOeLRLH1dZ8W5CpgVYu3uVEnKGmZFk+2tSu5L70fb1AawS3jz61W9lV4QIN6JYU
	 1EHjr2wlSsyyA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B43A781EF6;
	Mon, 26 Feb 2024 19:44:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E0B261BF337
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 19:43:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CB20B40448
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 19:43:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6w8G4GP9_03H for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Feb 2024 19:43:58 +0000 (UTC)
X-Greylist: delayed 425 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 26 Feb 2024 19:43:57 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E8A57400B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8A57400B8
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E8A57400B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 19:43:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3132621"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3132621"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 11:36:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="11401347"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 11:36:51 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 11:36:51 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 11:36:51 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 11:36:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TuYyV7Zoohyn1KTzbGNRWO7o2XhzHeStGflclOgO2eqUSCbXClpGymkOPElVPdm6FR6oRSgVmGCydadlpyr9131sUZctQO+rwDh5LA5sWN+YBEnYrCkR1W67qyuwGbutYSGnOwT9gclO3SmSmMVI4LVcWgXgd/GdWf2xAVUmwFVf8d6QBvUXPLS8HxbwguVBXcZnfrUZ4jUmGLAJpgJJF90MXgzYUG61G9y3B7ZEXsAnOiAbv7YRCRu3dY5ABuZUg809JO2WZ8O8WLdNBsFSkH8aUnouWC4zRwGkbwv800hUttvG3akzEXu6DkLLpe9jZK6fFYLOZGMyWkYVIhBthw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VrzggAeOPjlPkk8cNTRlYfthpRGO7Z+V5VUy+rZHe3I=;
 b=VdFnJ7eJbX7uPJdNzuyGvzYg4l+T8hizmndFM8KU91ROx6GCVuhvBtz6Mp/6hSKv4gX6S18mTTc5nxJeYdL2Tp7oj6eTePtOtECP8kD+wHvOtR//4tydAqruuJbHhrL+Ly0Wa3vf7puYuieBg5U8fByeLK1GdvYN8EcCgfeshQNe61ImvkcyzNnS/77xQg1jxWwDkPXBXqGe1kVVd0SY+54N7NaawQhrVzbm3EAfd2WHyD+x8upa1J/0tG8f/Hw94P51kVAZiVNMo7aYUd6I6T7xxAnhPvDmXDqNx3N1tcAZVNhV5F9GVkAKbqECafK1W1a2jvF5jfAs4aD/AyVJmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BN9PR11MB5228.namprd11.prod.outlook.com (2603:10b6:408:135::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.23; Mon, 26 Feb
 2024 19:36:47 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a%5]) with mapi id 15.20.7339.007; Mon, 26 Feb 2024
 19:36:47 +0000
Message-ID: <0ea688a3-f8ee-4383-b98e-82b84b791886@intel.com>
Date: Mon, 26 Feb 2024 11:36:45 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Michal Schmidt <mschmidt@redhat.com>, <intel-wired-lan@lists.osuosl.org>
References: <20240226151125.45391-1-mschmidt@redhat.com>
 <20240226151125.45391-4-mschmidt@redhat.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240226151125.45391-4-mschmidt@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0077.namprd03.prod.outlook.com
 (2603:10b6:303:b6::22) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|BN9PR11MB5228:EE_
X-MS-Office365-Filtering-Correlation-Id: 33e58afc-207a-4aad-c265-08dc37024539
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vxSf9Y08H0q65NPsavFchghElc0YoI+W2/xtV58VPir4av4sD/iapQyoFYQp93noE63XnvUlsQAaT1TuCAwTXffR84rW2UtaExMFtMwxYGp6tEfRjc/KD5B/CNN3L/pE9D22P1OW1urRqOINyeusD2Rzv9NPtiC7ddL8XeKPDWy/IMr+djVdxnqn/3sDaFSf8BhAwQ/ZsCySiVzsQF0cn3nn9s4sOcK1IVf5OTQTaO6qpY2EDFEvy8aZRaFc+yEfkHRnLPSvZc7CeRgAPyeGjtM0yrxCETG1fZuR9MGWwWMXZsLTmo32YnIiJFFTAm0LfuyEbVOb8otzJJ8aCcZeUcW/NSAjpdZa5Z9ASLm95rlSGStIgajdmQ8bjW5kqUfuGFqtSOPE4xa7TYL38GT1r5BpLIzkKih8vDjVq0qteiPAiUgYy9hx5M54CiIPMZyj0yLPe+MbspCBZ6/rB6vVi+KEO+g3fB0PMokoqhTDMK9J8zDYmwB2xom9kLU5uChW1QHSyCo6f6nErzcY37eGj+phi9hsHfQPbXmoy4vB5ahIpOIn3pFMRKSR+JlN9hfpZqYltGxQC3TgFzeynmEst6kC/ceGKW1vKdZMcbomfbcAROaPSJ8w4ddLP0GjwS3+Uib23GNbVihSNxI+bYkeiQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0RhcmFIbngyMXFYMWpTdmdZT2VPWlBMUHVidnU1RUkyc3hUaFhmbDBBUWc1?=
 =?utf-8?B?bTBIWkR3b0FIMytBUXp2WjhaS05MSmxXbHRpQk1vdG9hVFRrbVp6ZFZYdFdT?=
 =?utf-8?B?di9NQ0ljV1NsdmgyamY5cUZ6cU04V1BxUzZ6aDRYakVmUmNRNXZPTktmOGt3?=
 =?utf-8?B?bXR2Y2Rtdklzc2tqSk95QmdVNEFlZWFNY1BxOG1QYlo4VVZ5eTlINU5QODUw?=
 =?utf-8?B?ZVJEVnY5MkR6VzJpdmlIRHpoUjBMazVRNjJUSzNrRWs4bXJwOUtKSEZFTkFo?=
 =?utf-8?B?bXo0MmUxZEt0RXlXN3BnYVEzS05Nb0ExbXdkRmJzQW5ZODBMWlF2YkZTbHZi?=
 =?utf-8?B?RU1MSXhtNXNmcmI4MFU1akdGc2tPQjQ4eDBzeUlsM25hUDlBUlNEQ2tOVkhV?=
 =?utf-8?B?Y0VVQy9LemZYRExZbzhPWnROTDZqWTJ0YmZOTVBEZ3ZWTWNXamxJMCtXblVX?=
 =?utf-8?B?L2V4US9uVmo4K0oxcVRSbnJlcEhoaSs1Z3pyczlUc3BTRzBXeVEvSjhTMjZ6?=
 =?utf-8?B?RHJSM3hjbVJkTTdHT01tSnh5SVd2Q0R3aUF4Z3IvS29xTjdPN3VTTlZLWFZl?=
 =?utf-8?B?ZFNCTlNIQkRlMnpBUHc0N1BrTXhhcG9pZUk4eHpCVHNiMnlJNjlqaG9kM0Rk?=
 =?utf-8?B?T09kd0p4SENCcE1nYUwyK2hkOGxYN1M3RlVnSFAwMkFWTHFTWlYzbnVmKy9W?=
 =?utf-8?B?UXhMd3pjbnFjTFVnZTVMTllZR3U5dTQwVWpad2czS2RPNGEyaVlPS0NUL0o1?=
 =?utf-8?B?ZkpGKzM4SzJHRTJncVFpY1VTdUlMTUdaeEx1Q3NWZkdFRWx5enNtUUJ0c0RY?=
 =?utf-8?B?Z2Q4R1NyZFMrSW9mMzd0WWE2MlYrOFJRTDRydG1TOE9DMllYYno3bDljTHd0?=
 =?utf-8?B?SjhXWUhrbFBnSW9ybTVVNnYybm9NMUF4RTNqOGcyaTlVVndlcVJmNENMd2Nk?=
 =?utf-8?B?SUY2QUZ6SE9iNWFoN0JWbnlzdkNnemduTzBhZExKejRkUnQ4bXA2c3dXM1Jp?=
 =?utf-8?B?clQ0c1BIblhNWnE0UDhjQUcvU3p3QVkwSnUxRUplTElkTXFidXZCVkwza01P?=
 =?utf-8?B?b0NJUlpqUUoweVB1TTJBODlZM1BqaDFGVkNRRjQwdC9ZQi9FZlhDanhnVGhM?=
 =?utf-8?B?dk5IMldRSUZFcmhtYVJLUmRYK292TkpPYnBwdG44V1BmR09rRlcrNmxQMFAv?=
 =?utf-8?B?WG1XNndOZmxvdXhoY1ZmWTZtbndaaUxSK2wyZ2lubHJ2djZ4c09mS0Y3eHQ2?=
 =?utf-8?B?MXBMNUhCRlEzY1JhaStIVE9URVB5SElDNTZxWmU0Tmo4NEVrYTQ5RWlacVhO?=
 =?utf-8?B?cGhwS2lMWVQxRi9QN3JKQkEyMTN5V2dXSE9yMS9DSTY1elFzYk1nZW1GVDk4?=
 =?utf-8?B?eDNsVysweHB1NTdkYmJucEtyRWpXaWRGR2VtT2lQZituSG1wTUxwdGNnZlBT?=
 =?utf-8?B?eW5TazRlUTVzbTRwZ1dtYnBiSFFhYm1QMEZKVE93eXdlc2pNT2h0eTFlUUFq?=
 =?utf-8?B?ejhUWkM1SDYzcmN3NENOSVd1WFNGeTJzYXV6L21LTnhydFJ5MUxKd3lmNHk5?=
 =?utf-8?B?T0FhZEREMGVSYk5kNG1NczZBY0xyazR2a3owM0grZENpNVJydHR6NkxEWTRW?=
 =?utf-8?B?SUxpMGhWTmxVUFdmRFRqNk1wZEdnc3IxeXlNL2Ixc1Rna3YyTEo1QWNRdExw?=
 =?utf-8?B?akdNb005dUkrTGovbkxISExhcEpxTEJ3bWNMbEY3S0V3NlVjeGJmQytLM1Fo?=
 =?utf-8?B?eTQ4S2ZEMmIvcEsxdTcvU3QwcWM5d203b3Z0WWdyeEZSZkkrM1YxYzg1Tm9J?=
 =?utf-8?B?Yk40S0hwWWdZL1piVU90TXFicVNGL1hRVkR6c0NVUGZOM1kzb0F3d0prcFFB?=
 =?utf-8?B?RWplR0YrNmlYNkVkY25nZC92N0ZIK3hjZ01kWjM5c2VTSlM4QVBFdEF1ODYv?=
 =?utf-8?B?b21VT2VWMkk5VzFWem1xU1hZOVNlcGRJaFdGUWF4UXJJQTM0SkdHNi9BV2du?=
 =?utf-8?B?NFhxRys0K052Zm1BNFdVZnFqaUk4Rk44OTNrV3JKUFFZTWxCT1RTL2gwVnhL?=
 =?utf-8?B?RFdDT3NZTXdNVDgvcFJNVUJIZWcyTFlSTTZnRkZpY3JRVm0wVWwxb1dnZkh2?=
 =?utf-8?B?dGhXRVRYY2VxcXdxVlpDYXRSeXhiK3dIQTh4UnZJeTVORlZHVWNrOTZGUnZ4?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 33e58afc-207a-4aad-c265-08dc37024539
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2024 19:36:47.1865 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YaQUDTZ3pRvtbgrRX6qLONnphBTUYoou4sTlI7VwDdZaEsTyvV3cRKuzxve3Unr4zI9cKAStEo+YyV2eUJ/qDSS1SVudGYgd+4DIOEbkGvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5228
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708976638; x=1740512638;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9F8wFJToIzeokpQLwgHcq8jtjGUoBoIn/gZsLIT3250=;
 b=AEl8/G2hH/SGEQ8tb4905UiDg0/LqLzHOEqUgkOgUeIPePbQ9XnACBC2
 IUOzVqIzplhbnrciOVue/Y25BdM6DWM8zxNtaGRgFE/Qd1EJDuCmOKMew
 fF9Jd106+x3Kh5O0DEDBO2bqCCDhCTb4HBCRMSIpdXBoqTsXGXz57aBU7
 68ptAfvOmbiDtzax0lue8qGKMiG/Kph64dBxSgrHwY5kNLkYsrgXVDqk+
 tqrCH9NTUL0EMKE30+oXOmtgO2QGSOq0EuA7uOn0dvmB9CkkzlWflhtaH
 uIkf4lUha+guXlLyaA8rm/cN0OE/h1coBzMHQj+4Z5ZoLCJ+GRy90x062
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AEl8/G2h
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] ice: fold
 ice_ptp_read_time into ice_ptp_gettimex64
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
Cc: netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/26/2024 7:11 AM, Michal Schmidt wrote:
> This is a cleanup. It is unnecessary to have this function just to call
> another function.
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Obvious cleanup, thanks!

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
