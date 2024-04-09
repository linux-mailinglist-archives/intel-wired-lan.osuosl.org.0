Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2C289D76C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Apr 2024 12:58:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BD5360706;
	Tue,  9 Apr 2024 10:58:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pmiv8C6yCuLs; Tue,  9 Apr 2024 10:58:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB18160719
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712660327;
	bh=OsNW3H704rSIqhSlBrVKfNm1dsPDCpc60fnt7V3eoJU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cPuFyrghulh57p7DDsk/cjWTMuJrzIyNPjC08sAL3II+btzojzYF1wAF4YPLq2Fsc
	 NDabGauT6mbWm5h2kNsxACCghbEeRNWok3ezAGo0EK1389etLqgbIRk5+QDoWVa3mu
	 jv4dWxO89oQPXPFQe2l2mmyv+VR6L9XQClhuOaV+3+GuGeICyBr5Q8OSYu5v23Szjt
	 oLOCU+jDiYN7rH9zXEEmHc0ofCNsGhHOlJkMCb01EXyZJASKquQRQFMhZorve9o59E
	 qu0GbdT2DCz4F3UMVYBSSiN4DFNZ0b53psThDdv8+MmAK2vEc1OmhvS8Ru3KPsuWo4
	 UXDAw9fiMjtFQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB18160719;
	Tue,  9 Apr 2024 10:58:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 03C841BF395
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 10:58:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E2FB9812C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 10:58:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CIyZsm_16rgq for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Apr 2024 10:58:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EAEE881062
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAEE881062
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EAEE881062
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 10:58:43 +0000 (UTC)
X-CSE-ConnectionGUID: IwyoKbgRQRe+JRVt70i3pQ==
X-CSE-MsgGUID: 4zPg77pcQbe3QPAW/TJDUQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="11763525"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="11763525"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 03:58:43 -0700
X-CSE-ConnectionGUID: Cl3V8PrSSCypcFfEI/DHvQ==
X-CSE-MsgGUID: tsl+h+B3QBGOyPQH9Skrgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="20082229"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Apr 2024 03:58:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Apr 2024 03:58:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Apr 2024 03:58:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 9 Apr 2024 03:58:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 9 Apr 2024 03:58:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RAvXzt2RGbtp/uW6njiAmpc0brLeXdzuFHWBFtAn8zYjgPG9BQJTBKhf/zP94Ctc1v/ESNIV3V+gVYx2HlX8BB0M4br/BXHVHDeEXJCrsAU3Myk22JpiIFwuaP8MQV9YHqxyyGrOIJNGV6BAp0VR/PzT8XA3KGOXV7/MLsFmPJ29OHcNGlS5rZ/8hMCTd5UtqGypbGlwSwWO0fl7HWKTl8KoOj0DhAGJNPRVys8jI9/NSZAs7Ir2Nm2xGIYfeO09yastknhW92eklZKeM7li9JA24JVCchoj5djupKQk9GM1Xd9WlOuHVs/6gTCUE2Rrtu9SGE2vSW82uHK/MzZpLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OsNW3H704rSIqhSlBrVKfNm1dsPDCpc60fnt7V3eoJU=;
 b=NEjDi+gk9Lh1qugkbNhuiJ8J6w7uho4WZ2AOHBLPM1KTh08Ftn+FzKOYf9Uvc5Bwxdo7GRzGbx1z/ltghieJghfZNmVTW8Jr9A2/gNKVH0/wzqldDQeWiwc/U8vtKb984DuxJp3Jq+XeB+zeVhZyse2qEd/JwAxdvIOex+Pt3ltdraH7AkJ/vsVd/e5FTtI131nqpQmB34IJoA0rDI5rcVS2jhQFGjS/7pKwNxrfIRbNB8ON8W1xCx52jo5IMs2fVN18/02RGTmJxBP3/0dA4KC9KQdgRvaT7TJCsmbxCwN9GNNVQB4tV1WRn8BcULbdgqb//xmx0B1OwZEIfh2qJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by LV8PR11MB8770.namprd11.prod.outlook.com (2603:10b6:408:202::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7430.46; Tue, 9 Apr
 2024 10:58:39 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::5c8:d560:c544:d9cf]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::5c8:d560:c544:d9cf%5]) with mapi id 15.20.7430.045; Tue, 9 Apr 2024
 10:58:39 +0000
Message-ID: <9d389192-63c4-44e8-b863-6323b45aec0f@intel.com>
Date: Tue, 9 Apr 2024 12:58:33 +0200
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
 <20240404154402.3581254-8-aleksander.lobakin@intel.com>
 <45eb2bf1-e7b0-4045-82b3-93b9f81b7988@intel.com>
 <bebf1a1a-e4ec-4ec0-9d01-57a51bcf14ca@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <bebf1a1a-e4ec-4ec0-9d01-57a51bcf14ca@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU7P194CA0026.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:10:553::23) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|LV8PR11MB8770:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H8N4Sb8e7DokwMxTgqCdfr58NlgGsVjcWmaFgx+ZxrDCPMsZfXSxKSTesqYp57t2fcVSio5J8H4yOud65ZYyT5PU717acECoGM80xP5QqOKWLAum0uzesTO+EX4RZ725+PBp/Ut76ijK1+AQKYb9HHUgfKo6VDMd3ZNtdAILNjSnII9QwMH1IbBTIQhooPlQsmlV8RjACYAY+5Hq04mYAbLYVcVSd30bUHYD3Gt7HA82WgpeM03peEM3V3cGX8MWygqgXumEkzwKwW4IxGKxoMvTC3qXPuTKlHu0zOLYoj2LAQA55nfp+FwCLkbzXF7CKjd//DG6oMT9rBlfaPQLu4NjmvtUDoMIwFb0wIH4IQ44XWe4qoJKwWkIgNia5gInDoOQtcmCcDtjgVFn3wDIGjUH1PsLNliWUHrRg2g9L2gjgRue6jTNCjg5yAWnwGBJjobziLuucLaWf/78HIgqAWOLg5AID2tWaF+QMqjrAp+GwsukpcAjUuCLOR2ti2+h2PRd460Ki8WetXpjATZG8gaQHn2JY8i7doKWjCjTP0v53RZmR+a2tfhe0bnddeVrYgSzwm27wKp40S9qu7FhRYtaQXGBFNpxnAOdkfuUEI8BcrqXo3QhTpDiX5jL0HiFqvHxN31KatfXsr5urYSex6wziMKDHHxQdaIiiP17crQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(7416005)(366007)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Yll1Risxd1lDdVhNV05OZy9NT001eU9IbHdVbzJYRmNtUVl6b3JUOXhITTQ2?=
 =?utf-8?B?Tk9oa1VmbHNCV3VPMkk0NzdpTGlDQTRTaWx6R2paZUoyYjE0bDR6ZTJvYU1P?=
 =?utf-8?B?SjFCajJIdkxycUQ2WThrZEdVVTlzazJXTElzSjR5SDA0M2hiemMvdng4Mmd1?=
 =?utf-8?B?TjlLTS93R0cxWTAyUFRRZFBoQXZCU0syWTFKRjB1UUpmdnBHQk5qOUg5MVR3?=
 =?utf-8?B?RDB2aXgvdGV2M0VIQkVJNkVmZ2FxMmcwaEVybVFzOFEvelJHNUFDVTRiSHZE?=
 =?utf-8?B?NU5JQWtCVU9mMGRjWGlGU29lUDZQU0g4OUVQZWxTUWFKVVJDQU9DYzdiUFdG?=
 =?utf-8?B?QmRpS3ExY3QvYWE3QktoUHRwNCtyb3VRQ2xBV0pIdmNydjZlYmVjQll1WG9H?=
 =?utf-8?B?OUFRdUxISllWazFUV3BLM251QndoZDBNLzM1djRWZENjMi9waWJlVWI4SFhp?=
 =?utf-8?B?WHFlbUdsV2FESkhCczZ2ekN5T29JNHdQSi8wU2RGZkFvT0tPNVBZTmoxSm03?=
 =?utf-8?B?cTZ0ZmRsYlVTb3ZoTC84Zmd3RXJlVEllenI1TG84cXkvMkdsaXpPV05iVlhq?=
 =?utf-8?B?STZVUTlWWUpkSmw4VTBDWjI5a05XVGhyVVZEKzUyNG52WWY1U1BiRlpXRmpo?=
 =?utf-8?B?WjFzdmRoY2ZGTXBHTzRCczFLWENRckRFc2MvSjZUN1FpWjUvLzNuZlpPeWor?=
 =?utf-8?B?TjJ2M1c1MHFvK2dPcHRjMHAvbG9wSGdyeXdHeUltSTVobHdxNzRJbmV3eDB1?=
 =?utf-8?B?dGZHUkhaNWIxRjQ3QjAxbGtTWXlOUVY3M2VuN01ON0ZRNVkxYnJiOUxzVkZk?=
 =?utf-8?B?a3g3M2N0cGE3MXlseVJPaklodGJqclhZZ0gvQzVEbnM0c29BaFRza2IvMUVk?=
 =?utf-8?B?TWsybFdBTjk4MXFJMUlwbEt0TDA5M204ZjNpZDIwUkhJN2QwTVRrdEptekNi?=
 =?utf-8?B?bDdqSHduaXZHNFhkV24yTmd3T1hnMXYwVjdZUUJkT0tWdEYrMndNQ0pVWXRk?=
 =?utf-8?B?YkRacEN5eHBINlcyVjBYd3RybWRFcjBsNDRyRzVkdGdLSDZuQjkyMk9rRTlS?=
 =?utf-8?B?WlNBU0NmancyQzFPVG9vdVpnVFRwOUNYZlZPdEdxM3BpSUh6RDI0Tmk5TlVh?=
 =?utf-8?B?V2hhQ1BiSytFc014b0dWNUcyc2JFYW50TlRYMWNkT0JBeWlOZjgrTmdPVGpk?=
 =?utf-8?B?Y2xqMnBPd1hsM2FsTDBuenNJcWhWWnY5V2ZFVUk0Q2ZqemdPa1lmditEYzZJ?=
 =?utf-8?B?ZllOdVpabDc1d25OOUlTUEVWeTQ4Ylc4RUs0OXREVzVXcXlDTzRlVUtYVGcx?=
 =?utf-8?B?TTJtaVcxVkJFR08wTXM0bitVelBjcVU1SUNUcWpUOXNqL1hhZU1mVmNjWGY1?=
 =?utf-8?B?alBpZklpdlNiQXFFQWt5T2ZUSmRQbWIzOERhSlFaLzVFSzlmZ2JnWUZRT25z?=
 =?utf-8?B?UXZyMGt3VlpPUkpiaW8waWI5c3RKQW5vTU14dkswNjVaVTljQlhCYWZmY1kw?=
 =?utf-8?B?RG1zc09RK2pLRHVSUE1vK2czenNwbjFWRzRCblhHbTBKUmZJS3NyZFhRVWhS?=
 =?utf-8?B?M3ZNU1BZSFJJdUdrd3JsdnlKUHIwV3lJUnlvR2F4d2FLTXJiczFlVUd5bkQv?=
 =?utf-8?B?VVBNUU5CTXdLMWRmV3lvR1ZSOGRVMmIvU2IrdG9JcTdYN25xc2ZYY2tBNHNi?=
 =?utf-8?B?cGNNNGppdmlXUnJsMGNpQzFvSU5LUkxON1N1bXVXKzRVOFBjak9PenJSQ2RB?=
 =?utf-8?B?T1V3RVQwSHhDZHVIM1c3YU1hK2twYzhoMmw2cWhZNUw4cW9tdkk1UGRQa21j?=
 =?utf-8?B?UXl4SUpxMkpRYWM1Nnc3aDVUaUpiVHFQQmUvUjRJMy9JK2RsUndDcXJDdzZn?=
 =?utf-8?B?ajdUaU5QT2xWMWVNK0hpRUZPaDVackJwM092MnVWbGlFNEtSSFFGdXRFbzZX?=
 =?utf-8?B?TndvN1RYS0s3STRGUmx1YlRhenhqL290RHI3Z1FlS3RKVnpsdDg4TWlqN2xl?=
 =?utf-8?B?djlUWlM1S2l4Y2JuaStKWnJYT09pZ1E1c1REMFlpUGNnWExTTFMyZmo3R3Fs?=
 =?utf-8?B?djBFa2JGYktOMWtuV3IyY3FGNjZqUlBBVWl1Q1lxdVBSMll0dXMyMTJSMDZu?=
 =?utf-8?B?NTlyK1EwU3dQcHM5RzZhUmFkTUkzZ2xKd0RLdGt2TGc5ZDRZcnAvcXJPaU5W?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc0fb801-486f-4c0e-78a8-08dc58840360
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2024 10:58:39.6902 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ry0XP7iV9JslJmY4pUGFZcKfVuUoTrf+zratjQTQryQOEtyQWNv1zUa76LFWidXaGVHmn1HJstwy33uXk9pDot5DQ44l+xwr/+PZiMQgzQs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8770
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712660325; x=1744196325;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IEjYMJmQKerwtw+1zankp8cn6NjIFNhy+YVMKJCp9zc=;
 b=M351zSlOiW8ZG04MIADw8HW6wvwGpK/ODHoDQgVyZhs7P04DcG6oL3yA
 u5RT9qa+Xk17QN2hJL8UZrSNKjXP9xuFAMTxHw+E10jMhPirHKCtEuxgz
 5pCembjl0zVpkIBAthNfZ/pha7u534PnX2S/dX2CUmcNMlu1K37Ex34HM
 CGOaO5q0SNlHWtHNQe6yRFZmpg36oYWGqqD5rILcXVQb9ySricgP37mov
 Ca+1j/TfYklHYTx+jM1mpQR48MuLu82VBKJkWYjLdfm1V1GJTW/MYI8uy
 eGxUnMfDWrXHNVUzojw5Sb7tviOyxlc+7z1/nc30LOp7eMJGi58bS/7h3
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M351zSlO
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 7/9] libeth: add Rx buffer
 management
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, Yunsheng Lin <linyunsheng@huawei.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Christoph Lameter <cl@linux.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/8/24 11:09, Alexander Lobakin wrote:
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Date: Fri, 5 Apr 2024 12:32:55 +0200
> 
>> On 4/4/24 17:44, Alexander Lobakin wrote:
>>> Add a couple intuitive helpers to hide Rx buffer implementation details
> 
> [...]
> 
>>> +struct libeth_fqe {
>>> +    struct page        *page;
>>> +    u32            offset;
>>> +    u32            truesize;
>>> +} __aligned_largest;
>>> +
>>> +/**
>>> + * struct libeth_fq - structure representing a buffer queue
>>> + * @fp: hotpath part of the structure
>>> + * @pp: &page_pool for buffer management
>>> + * @fqes: array of Rx buffers
>>> + * @truesize: size to allocate per buffer, w/overhead
>>> + * @count: number of descriptors/buffers the queue has
>>> + * @buf_len: HW-writeable length per each buffer
>>> + * @nid: ID of the closest NUMA node with memory
>>> + */
>>> +struct libeth_fq {
>>> +    struct_group_tagged(libeth_fq_fp, fp,
>>> +        struct page_pool    *pp;
>>> +        struct libeth_fqe    *fqes;
>>> +
>>> +        u32            truesize;
>>> +        u32            count;
>>> +    );
>>> +
>>> +    /* Cold fields */
>>> +    u32            buf_len;
>>> +    int            nid;
>>> +};
>>
>> [...]
>>
>> Could you please unpack the meaning of `fq` and `fqe` acronyms here?
> 
> Rx:
> 
> RQ -- receive queue, on which you get Rx DMA complete descriptors
> FQ -- fill queue, the one you fill with free buffers
>    FQE -- fill queue element, i.e. smth like "iavf_rx_buffer" or whatever
> 
> Tx:
> 
> SQ -- send queue, the one you fill with buffers to transmit
>    SQE -- send queue element, i.e. "iavf_tx_buffer"
> CQ -- completion queue, on which you get Tx DMA complete descriptors
> 
> XDPSQ, XSkRQ etc. -- same as above, but for XDP / XSk
> 
> I know that rxq, txq, bufq, complq is more common since it's been used
> for years, but I like these "new" ones more :>
> 

Thank you, that sounds right. If you happen to sent v10, a bit of code
comment with this info would be useful ;)

>>
>> otherwise the whole series is very good for me, thank you very much!
>>
> 
> Thanks,
> Olek

