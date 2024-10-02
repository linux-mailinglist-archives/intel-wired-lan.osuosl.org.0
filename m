Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 735A398E5C6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 00:08:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 28E3440298;
	Wed,  2 Oct 2024 22:08:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w87Puhs6rXeQ; Wed,  2 Oct 2024 22:08:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6D784023C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727906921;
	bh=NHDbbFkqfde/Up54SHFUUXnzbH3hPkD4onwVtQ2KAWQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8IS/imcVpQ2/dr5eDC2LJjExPH53EvFqoxdLjTCoxaI6P55oq4ZHfgP/rtAapTW/Q
	 MDW5fjmXOUCMOf/sm+ziicneuQQE7C9NJURrr3Spz8WE49JQMiPUPw5fptdQV1t10r
	 fMW2gEqzjXCnkrPHA9uEXl5PAj9LDn6OmXy4XDyEQTFgG8TZpk5tMBYMRi9/d5Vagi
	 ZQ2DV8Oqnmfgnw0RbdQTVLsNY64QUaTU12LQbzPM3I9YlTRZ+kr1wwcC7nn1+OSfhq
	 5nYDui2J/vjSj5j0GmnvAGaeey4rBv94L9xPWUKHJiEICiehie6GIJLQxGeYFZxFeP
	 t+hF3NUet+mIw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C6D784023C;
	Wed,  2 Oct 2024 22:08:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 09BB11BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 22:08:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EAFFF60706
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 22:08:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CIOinY5uYkXI for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 22:08:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 016FD606F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 016FD606F0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 016FD606F0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 22:08:38 +0000 (UTC)
X-CSE-ConnectionGUID: x8av7Je5RZaaFTZkjBwy7A==
X-CSE-MsgGUID: dh9uTuOgTPKoMu9rRmuLbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="27265136"
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="27265136"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 15:08:39 -0700
X-CSE-ConnectionGUID: qxa5aan9S3Slkkd1Ruupdg==
X-CSE-MsgGUID: GIckyK2aSmaSmnwicUqiyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="79118269"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2024 15:08:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 2 Oct 2024 15:08:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 2 Oct 2024 15:08:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 2 Oct 2024 15:08:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mWXDC2LAhBFx1uOoatfDQ4Nistli3XH/dG1mIQwzq7tGvmVtOMEuQYlbrFtNH7+Rp+0s9fOKpB83RgSppEB/ZEEQ76SxsseOWvNdr9UWiDwDhA+Kdw27A9hNKNM5MKlNvHliIcGjDSgxDEGW6tp9dQlHT7AZLSCekSnF58KrcLkp8Oq2ad1rxnQJuaI33UfKqOU2/ODVP3TOnlUR+9vEqssw8srqx4QWl5ROwcavs+LipzWcyg4NYJtfAYnWjFDpK8bpkMOW5jFfU2jGDBu2jPIKPHhJRx07DGmsEJgCcSjoI5/d90km9FSi5c5GEVxE1s1nqjpwXax6bLfBQY/BzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NHDbbFkqfde/Up54SHFUUXnzbH3hPkD4onwVtQ2KAWQ=;
 b=It5wQXldHXFtxm4M1tsz73DW9veoTUW3MUezuP81uqAqiWKpTfLtz2NzsEobWCjmwbEFZdTyZ/zCcGFb2LsFlE/bU8l2fZZggMcUEuiGFJWhkrwV8vCAaG8l2HXAuVr8a2SKZA5lF5e/saEqcDX0klbDwWjb3nQHjQdgfw69025dPz1ol+PW9tyO05QsNPM+24vF2NLmE9SDYRhnZzWxmF3VDyXxQ6R03IiBbpnxYAscdM5fPGk2ySlt3XAFhhJnWQGyiBCJ5AsVdl+ZC+JWEMmjX5Lj5RDz4kn56V4Pjbsuqx+P2A05IbyqsVWVWjz9Jaj5aiOrvESP810FTK/hhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA1PR11MB8543.namprd11.prod.outlook.com (2603:10b6:806:3ac::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.15; Wed, 2 Oct
 2024 22:08:34 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8005.026; Wed, 2 Oct 2024
 22:08:34 +0000
Message-ID: <b27dd41b-04a4-1a33-84b8-c502a2157532@intel.com>
Date: Wed, 2 Oct 2024 15:08:31 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240930121022.671217-1-karol.kolacinski@intel.com>
 <20240930121022.671217-3-karol.kolacinski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240930121022.671217-3-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0P220CA0026.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::30) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA1PR11MB8543:EE_
X-MS-Office365-Filtering-Correlation-Id: 2579d8e2-3f81-4d13-f6c2-08dce32ec200
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UWxxanE0cjg4SHVBQWd0b1c1N1Q5VCtYNDJJTnpRRGppeXd6cEdEeWNWZm9E?=
 =?utf-8?B?TERhYUVKeUxSSTlTYWU2SkdFZURBaG16NEdoUlhSZlZac1owNW9hWlpDb3Iy?=
 =?utf-8?B?SlJEc0c0QmlFbytWMzNrQUlmSG9CWWJOd0NHZGV5Q1RYRDBRM3l2TXpsaEho?=
 =?utf-8?B?bnFrVnlZSzQrQ0pwajNXcjlDYTJyRTVCeWlXWVZqU0JHQkUwR0JGMUpLQVpn?=
 =?utf-8?B?WjR3RzFBQTl0VlcwSVZIVHp3ckxVVEd3SmQ2S1pZa3phcWhybkx0WTRCejha?=
 =?utf-8?B?OFdpRTFkNFVWeFllTDVGRllmTzVZVzFuWmNzWHkwaWdKRnhMZFE5SXlZd3RW?=
 =?utf-8?B?RUlFZjQ3cGxjWUw3bDVqQjFqQlZHSmhpN2h0RGhSQVpnb0owUGMzR25LM2VE?=
 =?utf-8?B?Z2REYXFrbncrSWgyWFROM0d5eVVmSU84dElMZ3lwTVlEMlBPbk1US1ZoaVBi?=
 =?utf-8?B?Q0lXaFVNVUcwNHo4SFBURWQzbkpmTVkxY2JmeXhjRFRtQm5SZkRGTHQ1OVFK?=
 =?utf-8?B?TEt0NFB1RHUwdXNqbmxXaU9YZHZMbXdlZWxXVDRoQ1dMdnNiZTZ3djF6a0wr?=
 =?utf-8?B?MklybFBEY241bi9LaEp3ZXJnbmN1ay9PV3p2dlBLd0pES2ZYY1VFeDBEMWYy?=
 =?utf-8?B?Y0wvY0QyQURYY2IxaG9DTE0vK3pQYzc4eW9WeEMwQ3pFdVlLaUlaU2xIWUw5?=
 =?utf-8?B?Ykhjc1N3MGlvTGxsdWE3eGF0RVBQa2dZSlhVcDRmaVpNK3hieU52ckZBYnNV?=
 =?utf-8?B?SUFWc3YrVGszMElPSWdJQ2RTMVhFY1A4TWNpZXo3Y1d5WlAyZGE3bWs1blFC?=
 =?utf-8?B?d3U4dUJGbHplU3BacUsya2Z4OGEyblRMLzduWkdpeU5iTWtZdnFEaVdkNER4?=
 =?utf-8?B?RTV0ZUlYWVZwK2xjMXF5U0NXbVJ6MVF0WWFPd2FOQnNiWFNEQkZFV01pWCtN?=
 =?utf-8?B?MFQ5TmFxclcvVjRJK0kxVlpEeHVDOGd0c2xtTVN5WW9Ldi9MZzdEQS9jdDJX?=
 =?utf-8?B?SkhreDBISncxK0VFb0RKTmZvdUJ0aU0ySzdsTDNPVFpXb1NBQUFQZWF2WVhJ?=
 =?utf-8?B?Q0NJM0hQK1FPak1sTHdkd2t0T0lGRmRqYkExeGQvREVYOG1KUlRxeUIzN211?=
 =?utf-8?B?TDh0TkRiTGMwRXF6WkJ2d0w2Q3hNakxlNmNCeVFyNFNXS2dMNUtOZFRlbnBv?=
 =?utf-8?B?ZjBYbndtMHJxcDJsVzRYZS92NzBMU2YySTAyTmN2NjQydkdpZDFkTStUU0h0?=
 =?utf-8?B?YzN3NnA3ZStVRmI1YjlvNnFFaDZEYXQ3STQxWkovcUFuTFVSS0xUVjlzT09T?=
 =?utf-8?B?aUFaZWNJK1RHbDgzd3JpOG5uMG1vRmFGM3lWK0FTcEk4K3U5V29Ld2JGbnA2?=
 =?utf-8?B?RzE0Ui9QYlZIOC90NzN5VFd1RjlQRFRvTzhKWTlaSWlSWGlON2VjTHJsc0s5?=
 =?utf-8?B?TVdwS3FPZHBJWGlZZklKUk1nSWYxVktVZ3Q4ajA1Y3grNW9VS1JHQkt1UnFh?=
 =?utf-8?B?anRMZ2l4amZBWmpWcmxKNzhIV0QzeGFmcmozUERSQ2ZEakRkQ1lLcHR6U0Qw?=
 =?utf-8?B?SVVjVmcxckxhb1RlZjhJRE9SM213R1R3UXIxNEJwV1g2azVaN1c3Y3BrRGZk?=
 =?utf-8?B?VFJCZjZXVkl6MzFNYzl1SEZJMHQ2NG1LNjFRZ2dqRzdJRkNobEdlMmlCdW9l?=
 =?utf-8?B?L0JiTDd4dnQzcjZFaTUxNGk4bVFlWFlGVllwdGZId0drNDNjYWJsc3RRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cEppMUtqM1JlZVpBNXp1SjZvd250RkpkYi9UaDZOOWYvbnpjdUFINVl4eCtW?=
 =?utf-8?B?c1phRktWY1JIaDQvVlNMbS9XRmRONVhCak5tMVMrdThpUHA3cjNSczNIVTRR?=
 =?utf-8?B?RTVwQWZIaXBPcm53NVhMSjJiYkZkb2ZYZVZQdldPajlhMUVYSTkzaDZyL014?=
 =?utf-8?B?RGNxVkFva1c4bGxkNGMvRTNiUUFXWWQveUY3d0dmS2MwS3NWMnhjU0QxZDNB?=
 =?utf-8?B?MjZ4OFRueC9TSDQ1Q2pZTUZ5c215SDRETHM3RmR4ZkF1aG5XNW5tTTlhTmVW?=
 =?utf-8?B?eU41eUhZa3RIbDJJc3pGRFcvQU80WkRERzlZSmxOSFFVTURyOWRVZGlUUmF0?=
 =?utf-8?B?OE5hWjhzRENFeHI2U2lsU1lPSEp6b1V6SFVuemloSnZBaGc1ak1USjRZYWdC?=
 =?utf-8?B?M2UyWjdodjVldUZpVXJqTkVQMmY2SDFnakNhYnNEbUxWYkRKLzNhUHpRY2Jt?=
 =?utf-8?B?L0hzODdxaHM3bXZZUnVKVS84U0lqSEhQWWE4V2IxZzhXa1c1TUZ2cXQrVFJ6?=
 =?utf-8?B?WU9SNEpnSmZTc2V2TkJlVXFrQ3RtcjU5OTBvNWRSVS82aWN5KzRaeTdBMHBj?=
 =?utf-8?B?dSsxQnVLcnl6YWJ3ZXpvcjdRMDdnSFl6ZXlwdHdwWUo3UGRiUHg3OWthWHgx?=
 =?utf-8?B?Z0t6cWFCYVNTZkpqVENVc1IzRkxTZENOVE82SXlKUllDdDhHU1dBR2VmdVNy?=
 =?utf-8?B?TGFrYUFCRU10NTk3bFdxT0w5MGlTc1NmUnJsSTVyV053VHU1R3FpSW9ld3NN?=
 =?utf-8?B?UU1DYkpUYWl4blh5eDJqZi9BU2hON1lqR1ZSeVpselB6OVdNVEFCYUx0TlBB?=
 =?utf-8?B?WGFEdktmQUtCSEtJNGJUVWVCMC83QnUrbDdEK1NSVkg1S3NPc3B6SzJQbERI?=
 =?utf-8?B?OW9YK2dnVElkdEhob1dPZWxjdnZWUVJkNHE3UjlKQjIrWTZ1b1h5VGw0VnhJ?=
 =?utf-8?B?ckNQYTUwQjFNL1lBL1E0RSsvZFZ5M1lXUldkQmZHcFVXbGRRaFJuWENPNmRh?=
 =?utf-8?B?ajVIbnc3ZlBuazJFYUY3UGFubkpLL1hzTmorL2F1RzdORCtGZ284L0wvL2d6?=
 =?utf-8?B?aUc5ZzN3WjdaUEFDYzVCMU5HUm5EbDB3b0oxU09sY0N5dTdOaklDZDlHS0pS?=
 =?utf-8?B?VitXMTdSNzJqMmpUT01JV1E1eDFVY2kxYUV6YXg2dVpuOTlPZUx2Umx5MC9U?=
 =?utf-8?B?ZmNPRTRKMW1ocHZEbllSVHplcm1zQXM3MnFqY2Nod0xLR2FrNVBRR205SExt?=
 =?utf-8?B?QUdvV3krd1dmalR3RGtXQU9XbmpocDF1NkNta0hlK21TZGhNaVZ3VC9kdkNX?=
 =?utf-8?B?NVZwQWc5TGFndWlMMkp2aWJyNi9PSlh2NjA4MUk0U25aUDNRMWVFbHc3K3Jj?=
 =?utf-8?B?Q2N1RmtBNGhBODMrcWt3N0xOUnJjQjVUN2d3UmxwZWMxemFkTVMxWnZqNzZG?=
 =?utf-8?B?SndyTC9EdVZHczVkTkpnV1VZdG9aQlZQL0ZBcWlvTm9nL2xsSG1oajRrU2lX?=
 =?utf-8?B?cjlORUVYRy81SXg5ZXNvRWY2L2d1dldOektUU0VXSUxDeXhwY2dqM3J3MEtN?=
 =?utf-8?B?NURDMzEzcmtHOEZ0Yktndll6R08zY1prWmpDaXRUKzRPZ0xVUWtzYm53SG04?=
 =?utf-8?B?MTArOHkwdUZBZ3NIUlNiV1ZqZ1BsOHlsSXJHY3ZBVDgrZWhyd3NkS3UxbTdC?=
 =?utf-8?B?UzFGSytYaytiSzhxWEk5czI4L3F0cHVhM3hWaEZndkJwb1RRdFZ5ZGFxL1NN?=
 =?utf-8?B?elJLNFM2N2c1YTM1cHZCUWtScFFZNWl0WkVlNEtYWWZ5V1kxRnhYQlFidE5S?=
 =?utf-8?B?MzI1L2lLRmlIYW5TUitTcjhpMll3MEhibWQ0K09FTVRUL01kMmFUMnpQYWZ5?=
 =?utf-8?B?dTlidU1nUkxGT1ZqZkxkWU12blhjWUVIanowWS8waElPV3JJRXV5dWc2TmhW?=
 =?utf-8?B?RGs5TWxOTGkraDdWQXk2MHBRdWRFVWVXY1ZhVlRMaGJLbHpwZjFLbXN3ZjNH?=
 =?utf-8?B?eEJ2K09yRzBVeTJKWkZIcFpYWnA2SUdMNEJLWHNxZXloMEx1aHZHNkVnSDU0?=
 =?utf-8?B?RmpSbWVPRFhiMVhjVzFpb3pDaWppb1QwVEh2M0NTTTdHOFFYRDVYZVQ2aG1P?=
 =?utf-8?B?bTlyb21seXVJTnVaNHdNb0liL0lMK09VVU91bCt1ZkZzaC9zRXZFRjZkSG1N?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2579d8e2-3f81-4d13-f6c2-08dce32ec200
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2024 22:08:34.4454 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JuZVTEfTStw1E6JzkjLyykt17KnGQGLP8t+T6Xd0bnJ6ruEpUphVxijbCJYOM/DzrqERciRB7q+fEbH8QgMuJfFyEMqVxniUrLXQ5LarX78=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8543
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727906919; x=1759442919;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9DMv0EFAY2mvPxIBoN9hz+eFRCTn3IJ5p2a/7HVKO+g=;
 b=UIVmEZoZxoKxfhHY2I6lHFtws/Uti9AmlcInpoP57BmHTCLQzamIvHwO
 m+Hpl1JoHceUCNuwjQpTty1Kp5TrXg/rAys5II94wpJSETXPF6sjoncZ2
 P6V4UpdMx5NuQHKnendibcKA8ALQjH4nVzff6fF0UuG5SnZ6Pf22Yi6Ug
 XcxIZLODyv543gji11z3DIe6chl4w5+D/c7A2KquhJfNthl7J0hIkFW6J
 KQbTtP24jsHP4bR/PgwWO7jpIUoZWilab9YbLI/JNV0l1kJJmmNcW+ky7
 DIFPr+Y+HtbRzsU7yOqbTdCCGSB/ZByPl85+xV5irTGiEotdJBv+ZMVVL
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UIVmEZoZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/5] ice: Fix quad registers
 read on E825
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
Cc: netdev@vger.kernel.org, Arkadiusz
 Kubalewski <arkadiusz.kubalewski@intel.com>, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/30/2024 5:08 AM, Karol Kolacinski wrote:
> Quad registers are read/written incorrectly. E825 devices always use
> quad 0 address and differentiate between the PHYs by changing SBQ
> destination device (phy_0 or phy_0_peer).
> 
> Add helpers for reading/writing PTP registers shared per quad and use
> correct quad address and SBQ destination device based on port.
> 
> Rename rmn_0 to phy_0 and remove rmn_1 and rmn_2 as E82X HW does not
> support it. Rename eth56g_phy_1 to phy_0_peer.
> 
> Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

There's a bunch of kdoc issues being reported.

Mostly missing 'Return:' but struct ice_phy_reg_info_eth56g also needs 
its kdoc updated.

...

> +/**
> + * ice_ptp_get_dest_dev_e825 - get destination PHY for given port number
> + * @hw: pointer to the HW struct
> + * @port: destination port
> + */
> +static enum ice_sbq_msg_dev ice_ptp_get_dest_dev_e825(struct ice_hw *hw,
> +						      u8 port)
> +{
> +	/* On a single complex E825C, PHY 0 is always destination device phy_0
> +	 * and PHY 1 is phy_0_peer.
> +	 */
> +	if (port / hw->ptp.ports_per_phy)
> +		return phy_0_peer;
> +	else
> +		return phy_0;

smatch reports:
drivers/net/ethernet/intel/ice/ice_ptp_hw.c:920 
ice_ptp_get_dest_dev_e825() warn: replace divide condition 'port / 
hw->ptp.ports_per_phy' with 'port >= hw->ptp.ports_per_phy'

Oddly on a different patch, but it was introduced here.

Thanks,
Tony
