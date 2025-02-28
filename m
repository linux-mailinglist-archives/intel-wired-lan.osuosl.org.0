Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D592AA4971A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 11:23:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A9F081096;
	Fri, 28 Feb 2025 10:23:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LrsziatyNcok; Fri, 28 Feb 2025 10:23:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A430A81274
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740738218;
	bh=lyGFlGyjRUP1lzZw8o5LDKFO0gvlbVmA1jV8/Gd2ytU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GODTsmCrY1L7uzP4geiUJ0+ytqvoNWvuc/mWcDUbQLbccjmk2cAv/7hhrY4v+loMI
	 x9Ye1N4L+GLjdUEfyuyKqyDPtXMuiSPmgC2qIJAB8Iy/7Lw40GFyBIYEgVzq0PHUIw
	 s4WDEw/2TJDqpK3buHDJYKYDvCuBKu76N4EG63AS0WR18VcELVbkf4Y9uGH7DayJB3
	 HnIfHTJP19Z4y+GfNipCYqT9xSrxyrUfoFzvT4r3sadO3MfY7YUFIZxzsff++dHAgP
	 mBTdgHFLRHjtFvkvIzlHgz8wDOeJLFWGyWeaEPaf0NWS5wPjIo4OfZ/+PxaVkGBkxH
	 LPXIC1zHg21UA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A430A81274;
	Fri, 28 Feb 2025 10:23:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9AF0168
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 10:23:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 871DB4013F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 10:23:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dQ9HNnEgcC4z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 10:23:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 532AD403F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 532AD403F8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 532AD403F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 10:23:35 +0000 (UTC)
X-CSE-ConnectionGUID: ThheZUUDRdCxk3VbNef3ZQ==
X-CSE-MsgGUID: G9g2sxoNTGOwDYZ+IkDolw==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="52306242"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="52306242"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 02:23:35 -0800
X-CSE-ConnectionGUID: ra3KiTiuRyOzFHJQ70+Vjg==
X-CSE-MsgGUID: 33tEoG86TL6RsVFp04mNuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="117801021"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Feb 2025 02:23:35 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 28 Feb 2025 02:23:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Feb 2025 02:23:34 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Feb 2025 02:23:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wBkOcL0WjOdx9kuEPV+8p36uetPBFJYhsa5bhqqXSbAb28T/w0S0f/EkP+YGX5QIMMAHnkdwCJsRatxJipgI8wVSutj3huhbdpHUwNQw+mrHFZsLV7+9/ZmFHvau1HRcOQfF8Je3L1iqMbp7E5/azVAJQZMFFSDvajBxp0m1gKQDQh2bXOtD0/b3A17Wzd4YjsNNaZCBDmO4mLBPSAUoFslXqcR5Y55R6vvpv3g11CwocffYbqttw0RhQNFm5lelL52ScOJvsJG+hLP7B954PVhgdx/RzIsYRcIJRfe5mzFh7VXkOtA1GplUlQTMvFSdC3sbcE1GcGrvMmI5G37a8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lyGFlGyjRUP1lzZw8o5LDKFO0gvlbVmA1jV8/Gd2ytU=;
 b=W+b4QNnF7LT7WVTbenKZGhrSOALaxU7MyEUr4qpEbbWvVC6RbhUd2cSv+JQrRqBd31qrIJmHZby1kkihmRdm9CWJqAEYW4ls4pYvKOZQ3pFAMLsAa0pVuU2d0HD2drNuAlzMtmjZ+ESkOe6FBTve1WzjEhC7tBV86JqKTEljlX6AnckTmB3oNTZKksanV9mZrRSli6tUMHL1prWyr1lsPstn1lMhNg4FCq2qWnbAwB3n6e9usQGm+UIBxPp45TIGaLDjwBANTUbKOrSH9KPGui2UDHJidICkR8RhNTVaFsFz789XBCgZTMeeARAGitHNN5KX4Um6WZMb6Tf4OrX0tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CYXPR11MB8710.namprd11.prod.outlook.com (2603:10b6:930:da::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.22; Fri, 28 Feb
 2025 10:23:05 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8489.021; Fri, 28 Feb 2025
 10:23:05 +0000
Message-ID: <90835c4c-aad6-4c37-ba0f-cb6b6b689b40@intel.com>
Date: Fri, 28 Feb 2025 11:23:00 +0100
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
References: <20250228083739.209076-1-jedrzej.jagielski@intel.com>
 <20250228083739.209076-4-jedrzej.jagielski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250228083739.209076-4-jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR06CA0098.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::27) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CYXPR11MB8710:EE_
X-MS-Office365-Filtering-Correlation-Id: 44fdbfe8-79d4-4c9d-87f2-08dd57e1e368
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q2dNemhGT21yR1M1dnFWWEc2YmhwREpkbUd3NCtDN1BYRUFJYzNIa1o3ZmY5?=
 =?utf-8?B?cHhpWFUyY3ovbFhRK0VaMjM5NklpNlRYazhaTlFEdDVnZVc2bFFKTW1MWkpV?=
 =?utf-8?B?ZVkzbnlhM29taVpacW1ZU3ZXdVJ0d3JkTFQxV1NhU0hlT1puRW0rb1BBNUdI?=
 =?utf-8?B?MFJtdUxoa3ZDRUZqbVczWXVvQlV0ODVHdTRaQkcybUFmT0c5a24wSUpzRHBF?=
 =?utf-8?B?a01PWEpBOGVidmdKZFNvSXJoMEI3cEJub0VDVHBId29YdFJ0bHBRTEpvU2lB?=
 =?utf-8?B?bk8rbTZVOG1zSVlvTlJmb3pYeUc3Q1VDbktNRWhva0pERElqRjdheWdTLzBv?=
 =?utf-8?B?SCtmbVJlYi9wQlZQQWg4QnhuUWRIYW1kUHlNdVRoYW5wYkp4VkdIZ3pIVlor?=
 =?utf-8?B?ZDZ0MHVuR3c4bm9uQ1ZkL0d5ckcyc0RxZzhhTGIxQmlWY1NhWXlDSkNUR25U?=
 =?utf-8?B?ek5qRFk2blE2eXh5YUpmZTBrZTNRbW4yQnFDY25xQm1rZnM4TFYvUVVyWFhI?=
 =?utf-8?B?TVpINmtZQlF2UEhCVnBxU2Q4RWtJRXVNZjRhdHNPbzBjaEI0RzIxN0NwTnVZ?=
 =?utf-8?B?eGlmTHBYN3BiVXF5bDVGQkpzeHlieUw2bmZNcjdROXhqMStWYUtuOVZzL1JX?=
 =?utf-8?B?dGpwTUpZTlhRdE95MU14bUprSy9PRkkyWE9RY1U1OExaSWZlNWhaNkh4WVlj?=
 =?utf-8?B?Smc2MDRoNUc5bGZUc05lc1M2c08zZExuWDJGVDkrYmY5S0YzeEViV044Ly9I?=
 =?utf-8?B?QjdYM3I0K1czVERZTGF6SFE2SE5NWGJUaFBGRGdxRG9SYzA3L1phL1BQRkxn?=
 =?utf-8?B?V3laMXVYNDdwb0FqbkpmWExDc1phWEZGeGNMM2d4bVM3bkVjUmJDQmc0aGxn?=
 =?utf-8?B?MDVuRytQdnZkVlJEZ2ovWXUyb0c1dXBrMm40RWpPZ0tObmtQTC9yUkhCNysy?=
 =?utf-8?B?Ui9XUE8zUmRxUEREUmV6cDJEOFpGZXdKWEI1U0Y1eUR4SVQwL0UxdGdmVkxB?=
 =?utf-8?B?dFhtanJ1T3JFbXZLR3VZRlIwelpGdmpuT0hSZ2lkZUFwcFAvdWVHUFBqaFk0?=
 =?utf-8?B?OTE3bStTNlNORnFjdi9KRExSbHBLaVY3d2V6UHp6VVRNQjBhT2wzcUNETzdN?=
 =?utf-8?B?bE5LUFVEMnJVbm96NkI5aXZGYysxRmNkWVdyeXRzMEh4YXYzSGVwMG1yWHls?=
 =?utf-8?B?RStCVVBXWTEzUU9WTDJyZGVtaTBOOTlzOE5JaHR6bmt4MmxXNVVjWVZCWi9Y?=
 =?utf-8?B?TkRMYlJKeHFISkxHYVFaQmt1bjM1ekkwVDltbVlQUTNWYTdXMkF3Tzh1VnRo?=
 =?utf-8?B?bmhzQ3NtUnRWSjFmRzZMS0JUT2xpbjljOVRzZnhiYXEvcTVTVkgxZWZBZlVk?=
 =?utf-8?B?SWFkd3hCU1kzSEoxOVdCamhBNUhjRTRRQmdTVko4YnFKTjQ2Tnh2RUpPQTgx?=
 =?utf-8?B?c0NLcXVKVDNNZjRESmx3eXlwQllZM2orZ1R5NGJ6SWt0RnhWN0xKQlVQY3g3?=
 =?utf-8?B?MnduV01mVko2V0NjYzJCcXlFME5SUmxOdkR5VW4ycDdJNCtSdmpkbngvUWJ0?=
 =?utf-8?B?MmVoQXRlaW8vT1poSUdHNnVSNk03VlF0ZkVFNkVVOWNvTDNPN2ZFNFRYbnVm?=
 =?utf-8?B?allEZWZIekZLNWptT0FBT21taTVuQjlJckVnZTVBTURoeVRSWEFuazIyNHRw?=
 =?utf-8?B?OTBpb3BYVjFnMTZIdTBwOXNCNGhDU3d2N0dPeU9NVFArV1k1emplcDU2NEZy?=
 =?utf-8?B?ejZvcUxxUExPZU9zN3gyY3c2RlJad0xEazl0MUdVUnBXRUx4QlpFaU1kTHN0?=
 =?utf-8?B?M0lXQUpmZHRaSExDM0RTTXNmVkc4RjhEcnU2T2ZObzRZcDRMdWtGSFlzN1RV?=
 =?utf-8?Q?dJ91VaXnESjhU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cndqVU84VWtpZWxrVytrcWROcGlZU0kvZnpwQjVieFhjTGZWWWpORFhKZ3hR?=
 =?utf-8?B?dG4zNi96ajFlRHNCaFBlV1FzU2FFT3V2c3UxeDdxSmdiNzhvdHJLdVR3cnFH?=
 =?utf-8?B?d3lQdVZYTlN6ZlpsUE9SdVJCRVJsaG9rZFI1dXMyRHpiL1JYekhERnNML0hK?=
 =?utf-8?B?TThzL09Ea0VoV0tXUVJSSHB4SDdoSzEwenkrM1BWekMxcVpxOVBMcGRsR3hY?=
 =?utf-8?B?b3ZzUG9mMmVRN3k5WUlFWmVIVXkwcDFkZDErcEtSajRscitlQlRnTjBhT0ho?=
 =?utf-8?B?QnpWeU1EeWpQQmdTVisrYldIUmdCakhaK2duWkc5YkVHR0o4WGtpUElENEJH?=
 =?utf-8?B?ajlTWkZudlV5Z2RlMDE4OWVmUWRxUnBwb3FaNXFIK1ZzYnJtYk1qMzJrRllu?=
 =?utf-8?B?ejdmOU9uVnRtNTVXQWNQcVVBbkZKS3k4Q1QxbXlhWTNtTEJSbzdPaWtGMkQ5?=
 =?utf-8?B?eEZ3QUtWOUQ5M1FMcklweFVGSG52elZlb2xMZ0lnZCtFZUc5aFhsRUhFVExl?=
 =?utf-8?B?QjNBY0tMR1ZlUE5jczVPVk1EcjY2R2NVenB3M3FlQ0puNDUyWjJIZlY2Yk1L?=
 =?utf-8?B?SVZqL2VrbzBQbVhnLzUxenVtUFpQSXhKUDArV1FIY0pZZGF3R2JGaFlYblZO?=
 =?utf-8?B?UmYrb3FOM0gxR3VNWW80MUxiLy9NcnBPczk5c1F1a1FJYkJKcHdydmNUcWxR?=
 =?utf-8?B?NDg4Z0hCWWxoc2o2Tm5yaklFWVZWMDltSjF4dXB0ZmVHWFduUktZSlhzWE9k?=
 =?utf-8?B?bkpPbTgrTnA1TmxBTDY5WDlMa1h1TmsyVGRsbUU4VnQxQ1BTS0UvVzlCQzE4?=
 =?utf-8?B?YWtwb1h3d2pXaU5ZOWJRcVNPMGVTT1Y1dUxRcS9JZXNWUUQ2eTVWMmk0T1VN?=
 =?utf-8?B?WmdnVDBtTXJaOTlNb3ZBQUJEcXAvODdOMXdIWlVScmliUGdJNys2aDlwK1l0?=
 =?utf-8?B?UElFdDNNMkozd0gyYXF1YVp5WGt4eFM0RmdXODFGWU1XdWdMempCL05WK2xN?=
 =?utf-8?B?V2xKVUZ4Qk04YXZCQjBxQk94OGx3eDNxVUtudG1aVThqa1Nra2RJdHZmcHpN?=
 =?utf-8?B?c0JtcE51TE9PRWNieWswTUliZEpzdjBvYWJESUNlSmVxRUQ2NHdkT0thNGlO?=
 =?utf-8?B?UUNQQVB4eVRTQ2FyT2xkOFVjR3ExVVYwdkNEMy9OYnNhUXo3OEN2c3ZMVWZS?=
 =?utf-8?B?VFRYK2JqMHorZEVyVVVnTU5DVHBMcU54bVRmY2hMdkd2SFplMU1yU09nMGpE?=
 =?utf-8?B?MTA1WVZVQkJaMmxseVhEUVI0d29hNWxXZ2swTm9tYk9HTzFuaWMrTGh4V2Vv?=
 =?utf-8?B?dnBtcjZIMFY0dnl4RGtUOTNpUEo3bFZXNXVCSlU2NTBvR0NuSGVjWHZ4VW1S?=
 =?utf-8?B?NVJweTZUMzA3aUY5eFFVRm1JNTBLOWVscURDbm5lWkZ3RnhBc0w1QkJzazd3?=
 =?utf-8?B?U2RwbTd0aFUrQUNNOHJacW9Ta0I0eTlsK2J2Um4xV1lpRElMeDlET3V4c1h5?=
 =?utf-8?B?eG81eWkvb2FvOUtoYlVmS0dGeEo5amZSSHg1UUlucHVWVEh3Q3AwMFgrMkhM?=
 =?utf-8?B?dkRXSHh1ek51amNJVWY1Uzd0bUZ6aXJ4djJnM0NrZzZnMkY3OWk4Y3RmU2N1?=
 =?utf-8?B?NDk2aTZXK3VjTE93TGhHcnkra0pXTGxFZGV1QS9BYlhhS2djdlZlWjNIL3VL?=
 =?utf-8?B?aHBOblBEbnh5dzkyanFMOTJaUS9LWTFQSnJwOWliN2RkMnNNaGhDSTZKY2VO?=
 =?utf-8?B?ZjBaR1h6ZkdXbGs2Z1NJZ0NJdXc3UTdlUUgzd01SbEo1WUVxUzJ5a1hibTVD?=
 =?utf-8?B?WDlqdjJDQ21VdjlsWFJ2aHFXRzRKdmZlTVEvM3E1YisxclJMNWdmbGRidk8r?=
 =?utf-8?B?VkhXRHpaVTFoVWUvaVJ4SjRiejVyWkI5QndHeGJQUlZvZnJva3hJRnF3bXlG?=
 =?utf-8?B?VUhjTm1OTTd3eFB5WjE5MDl3blRnTG9vcUFId1Erc1lRMEg3RmhUSXZTNU42?=
 =?utf-8?B?RGRnQW9CTVduYnIrbmFybW9lbHgrNEJIeDlFNnhJRGlPMXZpeklPNUg5OXJk?=
 =?utf-8?B?SEw1REVpZ2ErTnhTZjNBVlFEU0h2bldFRHJ0ZkRyYjBoeGVoZHFUMlkzWm5s?=
 =?utf-8?B?U3Y4bDJGRU9QVW5MR3RhY3VQdGo4T0p5dEhNNFlOOEFhaXlZRGtPTEhwSHBI?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 44fdbfe8-79d4-4c9d-87f2-08dd57e1e368
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2025 10:23:05.1844 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 31bc+aXjXhU2ISMDfdAKSb8tJq6OnGhB8SZJjGFfxzWd35xuBtjTkblPkp23zq/aesddN/xaAJp5R9uYdwSOhIu1CLh/fGmBnPNDZzCfAB0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8710
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740738215; x=1772274215;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ci28DFwZhj95cqOC6VqYWLddFzKuAWJwnkyFmlxtEHo=;
 b=Eu0ptoMwMzVyNn8GVvoSb1buGrSpUdK4iIamgZsWBIgmXkVXjaDtEiD5
 r9/hd7w9ZdXXXDkYam1DBvnb/tRRMJZYuUAVi8xzXDwx/tMOnG8gPlppE
 WZIHTaOhzyLKIacxuQBly0YS2Dhpc0nBolaOcy6Kp84tG+jlciQa/dfeT
 wX9a7Igc1neWChPbVSICnQxIvCCQjwRp4K039VFD+ZRR++HJX0t4msh4a
 UN4MyMzlmaghGPQsO38r/On5BRqk1W3rnBn9huhC39aBYKNf1YYaFO1cw
 QrGU97ibXNfe7CLqdvsUc5h079ZEDCgQPtdtfgGN9uD6Q1ucvNvOAp9oT
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Eu0ptoMw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/4] ixgbe: add E610
 .set_phys_id() callback implementation
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

On 2/28/25 09:37, Jedrzej Jagielski wrote:
> Legacy implementation of .set_phys_id() ethtool callback is not
> applicable for E610 device.
> 
> Add new implementation which uses 0x06E9 command by calling
> ixgbe_aci_set_port_id_led().
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 29 +++++++++++++++++++
>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  1 +
>   .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 22 +++++++++++++-
>   .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 13 +++++++++
>   4 files changed, 64 insertions(+), 1 deletion(-)


> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> @@ -223,6 +223,7 @@ enum ixgbe_aci_opc {
>   	ixgbe_aci_opc_write_mdio			= 0x06E5,
>   	ixgbe_aci_opc_set_gpio_by_func			= 0x06E6,
>   	ixgbe_aci_opc_get_gpio_by_func			= 0x06E7,
> +	ixgbe_aci_opc_set_port_id_led			= 0x06E9,
>   	ixgbe_aci_opc_set_gpio				= 0x06EC,
>   	ixgbe_aci_opc_get_gpio				= 0x06ED,
>   	ixgbe_aci_opc_sff_eeprom			= 0x06EE,
> @@ -808,6 +809,17 @@ struct ixgbe_aci_cmd_get_link_topo_pin {
>   	u8 rsvd[7];
>   };
>   
> +/* Set Port Identification LED (direct, 0x06E9) */
> +struct ixgbe_aci_cmd_set_port_id_led {
> +	u8 lport_num;
> +	u8 lport_num_valid;
> +#define IXGBE_ACI_PORT_ID_PORT_NUM_VALID	BIT(0)
> +	u8 ident_mode;
> +#define IXGBE_ACI_PORT_IDENT_LED_ORIG		0
> +#define IXGBE_ACI_PORT_IDENT_LED_BLINK		BIT(0)

please move the #defines out of struct definition

> +	u8 rsvd[13];
> +};
> +
>   /* Read/Write SFF EEPROM command (indirect 0x06EE) */
>   struct ixgbe_aci_cmd_sff_eeprom {
>   	u8 lport_num;
> @@ -985,6 +997,7 @@ struct ixgbe_aci_desc {
>   		struct ixgbe_aci_cmd_restart_an restart_an;
>   		struct ixgbe_aci_cmd_get_link_status get_link_status;
>   		struct ixgbe_aci_cmd_set_event_mask set_event_mask;
> +		struct ixgbe_aci_cmd_set_port_id_led set_port_id_led;
>   		struct ixgbe_aci_cmd_get_link_topo get_link_topo;
>   		struct ixgbe_aci_cmd_get_link_topo_pin get_link_topo_pin;
>   		struct ixgbe_aci_cmd_sff_eeprom read_write_sff_param;

