Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CADB494A5ED
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 12:42:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCD528122A;
	Wed,  7 Aug 2024 10:42:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HKMnPqjynumg; Wed,  7 Aug 2024 10:42:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8A6A80EA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723027345;
	bh=fDniCdmxOESUyyjN+GOE0tryrIMB5es4551POZ1MqVg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ICeRFOiFl/P5nwggVV6qenw5WF60wTxrta23pYkA3W943Dwax5o6fLimmD8qWEvBh
	 gZH5YEkCH3WMtNgtz/GORhnUnYrNP1I38VvHuXEsbFMpZ/9kRDg9TqRQu9yOf3Cx4F
	 M42aTWMKXKqot/9E21xbbc+Urgg+sU6lAm+QMi79d+U27EbUZtCPXBik1xQMo0dbvf
	 YwPEldGWIYayUk1jTTtNHNQT23V38zwBLoNAbcbq5sDB5xF/pONyF5ec3+1zyCxEjI
	 IxFQGsxvir4m8XbOusanzsileYgoQfAFBOcTHGdJDvo7Swkdo71Vpn0iDpbM0EQeBo
	 6Rf60hJ14OLpg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8A6A80EA5;
	Wed,  7 Aug 2024 10:42:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AAE481BF97F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:42:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3D82606A2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:42:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5OOWDHXuzqNu for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 10:42:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C9F296061D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9F296061D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9F296061D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:42:22 +0000 (UTC)
X-CSE-ConnectionGUID: oQ8Naq4tTRGcrUtrvT9xug==
X-CSE-MsgGUID: 0Mlpl+k2SomJIB8OctSfEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="32235337"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="32235337"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 03:42:22 -0700
X-CSE-ConnectionGUID: 5Zgt37iDR7CeN56ROBjWbw==
X-CSE-MsgGUID: ei95PUWuTp+BA2khwK3mKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="80067982"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Aug 2024 03:42:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 03:42:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 03:42:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 7 Aug 2024 03:42:21 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 7 Aug 2024 03:42:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xSSoLwjNkKaEKiY7Ag++QZtnPYOc2+4cvre4wq9vT7Dg0F8lZwsHtucLZi0BF3piFMUUIIP3AhxaJE7/oA1u02EVv1OGOSZZCtHTG4+L0Ln6m/a/xWhCfG+ijgZo/REMO063goKuQoNL9Q6z/UQkcU6tgI0jA6plJENIx9HHlDifBEuWpH6ii/E8VIciysuqjhU6jyXy9eD/RnlUqaPqEbNATyavk5SJ5TJ+xLUSwW3sWo37z7t8XTo78wC6+h0j2/CvpMqKgOGPbbdIjIQa8ZVdCXL+x8/QSNsHWOQHZTJ9RSl79hzf4aOEaf3fVt1EkBMm5nwAviNLIP1u3WorHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fDniCdmxOESUyyjN+GOE0tryrIMB5es4551POZ1MqVg=;
 b=BenO53Iui0bxywl+UEHl253R+toGiRNikcMu+ac9eX1TiX7n4UUZs1ywnz0qqBAbpYCJiT2ElT6Cb2Sj3sWL9gRy4k0zqZbm9Fk+bD7NHw1x6c4PKaBOUyJQMUWazOHRlkWpyEe4/Gy0gtSQyTEgIGXyMDOS7ATE00AD0raYPg5Z4fBb0BU0Tt1D4jEnlp4GrR3tzCx/4VqYfgZkkUveAhCyLrWcWrZRJJwBySCOeGQLIhTX43uMB2NIMsh5aXP+ZFo4xs4kSWnnSZ7uCE3DdeRcSpr3Ca+sk8vR6qlN1h+UrJhn5/Cu7YxN7cvxqnCloRRjURz5emHA4+pnAOukjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SJ0PR11MB5917.namprd11.prod.outlook.com (2603:10b6:a03:42b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Wed, 7 Aug
 2024 10:42:18 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%6]) with mapi id 15.20.7828.023; Wed, 7 Aug 2024
 10:42:18 +0000
Message-ID: <911af9ad-0b0d-4ac1-a2bc-da0dfc29b87e@intel.com>
Date: Wed, 7 Aug 2024 12:42:12 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240805124651.125761-1-wojciech.drewek@intel.com>
 <20240806145531.GW2636630@kernel.org>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <20240806145531.GW2636630@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0343.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:7d::12) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|SJ0PR11MB5917:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a3109e0-0974-4fc6-501e-08dcb6cd9c12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UCtxU0JEa2xGYjZLWDlUUmZmbk5KQnFHTzFTUDZjaFM2cnhrMVFEYk1NSHVH?=
 =?utf-8?B?NU5ST1g2YmZ3ekxkM1E4VlhWODVoMEozcldVT2V0V1VqUGVKQXBySEY2bUlZ?=
 =?utf-8?B?bnA0TTBOcHVTdkdJTWlHQWZhMlZjSVNZZHI0Y1IzRG1tYWRtZkN1alN0dDhD?=
 =?utf-8?B?NENaU0MvYjlvWWhpVXdYLyttdkxNZEowUDhkcUZMYmxUYXRlM2JhbWFZNXNE?=
 =?utf-8?B?eWxGZzBHNm9Ld0p2VjNyYzM5SDVBb2dmUHMrRzBzVnJLV0xPcUFKU2liRHB1?=
 =?utf-8?B?WmI1TllnbUpvYks2S0l5T05OU2JITU1hUjNaMWd2V1J4bVNKUnhIT1NrdWdl?=
 =?utf-8?B?c3lueEdSdUtlVDNoSFhRZFlYMVZyUVBNQUJVSkx3WUZ6NVhwWWE0MGwwTW1w?=
 =?utf-8?B?T0tFaXJnMDhWeUhrR09yaDVWNWZHL0k5S2trcFpkSVlkS3V6a0lnUVRUSVNM?=
 =?utf-8?B?WitaUno4TjlQYmFHNHJlUE1sNGUvSDhCWk9lRHAwTkRXV3orUWcyK01TanBl?=
 =?utf-8?B?M2lqaGZLbEk4V1hFWU40M2RNdkVQalU4YTZyRU9ENWJGQm9BNWVBR2FiYVdz?=
 =?utf-8?B?Zm1ReWlwQ1hsZFpJOXRjWlppMkk2R2JIOHZFRjcyUlY1TTFQZDlQL3NDT0h4?=
 =?utf-8?B?UFQrbGtrdDZaQkUwakZzaFYweXR0QWZjYklMT3BENWNNUTlzT3M0VjdmeXMr?=
 =?utf-8?B?cHRiZjl2SlpVZERYNUhDZUEyR3NQaGVIeHF6TTZFRTgrMHV1WUZCMTlueTZK?=
 =?utf-8?B?aFprUENVcmVlcHpKSk9WT2VaaTA5N1puSHJVSDZuWlJRWE1vWUhZK3hvR3Nk?=
 =?utf-8?B?RmpCOUwxMVRDcXUxQjZ2SFlXSzRZRlVSQ0V4MktvVDEyY3dLQkFvOE9JRkxI?=
 =?utf-8?B?MzZqUUxvNVY0WkpjT2dwMERSNXY0VzRXZHltTnE2WXA1RnFNQWpjdHB2OVJT?=
 =?utf-8?B?dGN0YUhTeWUvbDhqU0p1UEVxbGQwMWp4WDZ0TUNuT3VRem1vZ3FNY0tUaTJy?=
 =?utf-8?B?L00wV3JRNXRXY2FRc0VnZVpFelk4ZkZxQ1U2a0wxL1VEeE5OVlo4aVpaSXNw?=
 =?utf-8?B?N2hkeVFXc3pERmJ1UzhmNTBzWnkrYUlKNHVGaHVUeDVtMmRaS2p5ZFJsNXU1?=
 =?utf-8?B?ZTZqNFllak9xdFFFanQ1MERMVmpiMkFmOHhBdjhncnFBK3J5TWlMM1RlRDVt?=
 =?utf-8?B?dGo0bElPZVMrd1ZYajcraC9zM3lZalBKTEpBUVNncVJyQWlxZDlVZmFqbzJt?=
 =?utf-8?B?QWtwVXJRRktPNmo1ZnkwWC9od1ZkNkV1UnFsMWJVUlpqbkJwRW1DYkdwV2g2?=
 =?utf-8?B?M2NyL29rT0hqMG52NkhiOWhYcTYrSUlnK1lTZlBvOUhxcGF0Sy9rMms4cUdC?=
 =?utf-8?B?VWJYdy9oVFZOSTh6RVAwSGZIb29zT05sWWozaldEMVJhZVRnK3JqaGN0Rlh4?=
 =?utf-8?B?Y09mT2FiaW1vUk9nTVkwUnM1OEZQWDM3a3cvS3V5ZGsreisrYk9oS3RjbzFh?=
 =?utf-8?B?Y1R6UGhGenRFOVcrMEp1NHhvdDhXTnUwbnp3REllYm4wdkpVK3V2b2dFNStN?=
 =?utf-8?B?b0dIN29RRE5UcXdFUDZOMUlibjNuekRNekhqL2pIZ25pYjBIRE1vWXBmeW1z?=
 =?utf-8?B?UStHQ1JTWnpEejUyMGNWL0VVczJGTmJoSVo4Y05tREt6Y2RuQzhZcUlsTjFr?=
 =?utf-8?B?RXA1SWVrVHZnSUY4bVA3OWpLY25NbDRjZk1kcTU2cXdIWlhFVFdnVDRIcjBk?=
 =?utf-8?B?TC9lV0V2UWZOb0FNQXFYSHVOTmpMUU1hSE5kbHZnOURneGo1MElJbnNCZmZV?=
 =?utf-8?B?ODFrMUF4QzI2eEdQZ0xlQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NG5qL1BkSFFyZXJSTFEvNWdWSVZ5Y241Yk4rL3R3TGZMM1ZFaUo2SDVhWjMz?=
 =?utf-8?B?dlIxelhvWVUyODl1M1VQWnVMdkpTdm5zVi9BbDhjeVZBMWJaU0tOOXpWeG5q?=
 =?utf-8?B?SzRsbDBubitQazRsZDU1ajlLYWFJM0N6L1Rubm9sKytLd2ErMHA1dFhsNDd0?=
 =?utf-8?B?Wm1NaDRkYkkzd1pua1JvdEdaUEVMb3JOa0ZqZGFLeWpGdFJ6cHk5eW9yTHM5?=
 =?utf-8?B?bFFmOEd3ei83QVdadTV2UVBqdGU4bzNNakZVcnFLVmVLd2RIWE51Tk1GUkFL?=
 =?utf-8?B?RFYvdTQ4NFlzRHRUV085aHNPekxEaEI1Tkp3M3N3Wm1IMy9jeWQzb0p5aDdx?=
 =?utf-8?B?MmxzNnkyOS9BOG1xVjY0bWZ1ajhhZ0tnTUFGY0hJWngrNnRsK3h2bjJOekJO?=
 =?utf-8?B?WVdHTGwxa2xzZHA3VXRKVjRMNnVjUDJYN2ZvWEo2clRLVE9tZFkwVDVhU1VR?=
 =?utf-8?B?SG5va3I3YmZ2cThCNnhmR1pPVEpuRzRzYWMwVC81K0ZscURBNkFvTnM4OGVX?=
 =?utf-8?B?UUJUOUszeDVTaXJwOFlNd2hZbkxYOFZVZ0o2eEpqMjBialNHVWhiM1pjc0Z0?=
 =?utf-8?B?bXVaZHBQVkVrZXlBb0d5LzVUUjNLbVJRdzM0VEhueXdVZ01VUWtwQUM3ZS9O?=
 =?utf-8?B?WTVGdTNwc2g2QlM4RnZ1akFpNU9JRHVDNktHOVYzTjZha0JkeDF4T1E4eEVi?=
 =?utf-8?B?dTU2STRoRkQ5cHFhU0FYYzFlQ25LcGIzVFFYOTViRmNxa2NaTmp3UjhBbCtu?=
 =?utf-8?B?MXBqM1RUdDJEU2oxZ3U1QnduNm5oaG9wL2p3SGpWL29taG1kc2lmT2lwWlNn?=
 =?utf-8?B?KzlzZWhCSk0zZUsyQ3hZb3dWMlVuaDFsQXRtblNuWFR3cHlXRFcxRDlOZVdl?=
 =?utf-8?B?bHUwMWJ2WVFNMURZbDdrY0RYd0MzRDVWUXhvREEzU1dDU1lqd1grdldBY2Fa?=
 =?utf-8?B?bVlCbFl3REszalV1RWpIZkI2YS8rMGNaSms0N1pUclBVOGxCQU1USUFWK1o5?=
 =?utf-8?B?UUdTT3QxK3ZnY0NaQVBaajRadVpHdUltREVhZFI2WDhTbkVka0RNajhDT0Rn?=
 =?utf-8?B?VmtBd3B4OEpZYkpzM2NMQ3c5WUtDR1o1K09kUHhkQXYyZW9XakNvOGFRcFFs?=
 =?utf-8?B?bnI1M05sbGpqWHpyYzFNV2VNU05Fd3lYd3pDWWdHV1J2SEJoM3dybzJUdzRu?=
 =?utf-8?B?b3ZrYll0YktuVWliSTlWMjQ1S0FlQnVXVjJaMVJySVhnbStpWVRzWndBWWcv?=
 =?utf-8?B?RXlmV2dYbkJGSUZPOUg4QkhBdGhWTVk0aVhLd3I4RFhtU0JDQ3V2TWsxMVVm?=
 =?utf-8?B?cDlwSjNJRUgwYnAzWUI5NGRqN0xLbU5WTlJDbkw3ZllxbHNYN3VwOVpFb0JZ?=
 =?utf-8?B?QnpyL3NCU0pJQjlidjd4cy9jME9SbDBCQzR5dlI3Qmloano2elFiV1ZIbUtl?=
 =?utf-8?B?Q1hvTnN5WldrNHVra1BYZFlkZVpnRzh0N0FIUUtnbXZraENkZWc2c1czaitj?=
 =?utf-8?B?aklEQlpLNjlMd2R0bVU3emRhajRhcUFNbUZwdm83TDRjaE9sT0oyeXpQZVpp?=
 =?utf-8?B?bk9RTkxHaldGU3Z4MUJ5M1pwaERTVlhhd3FKL05Cd2VkY042Znh0dEJRQjB2?=
 =?utf-8?B?eGt4NW90Z1JBdlZQK3ZhNWhaSzUwUUNHRGczTUhpMHBnSW1Hb0Vxek5jMS81?=
 =?utf-8?B?cHZEYU92Nm1pMFprdUMzaGtPR2FwbGd3U25YZGpubnVweHZyRDEvc2tJV1NC?=
 =?utf-8?B?UFFsRXN5YUxnQ2I0Ni90UUs4Zy9oTWNjN3dtVDhPVEpDMkpuSm1rd2FjbWVp?=
 =?utf-8?B?QTIrYVJ5eFhXTWdMZTZydDFtUGU1OThNTUVXSExQL21jUUZRU0VkUWkzQWhO?=
 =?utf-8?B?VjNDZE9WbzQ3RFVwMUVZZnBWVjJMYU5xejBSb1Uya2RRTXZjNmxsZ1hzVHc5?=
 =?utf-8?B?cWRRK3R1Zm1SV21UeHpqb1hyRWRYOWN2MElrbGhlMjcvYmdMektxN0hqUVlm?=
 =?utf-8?B?K1paTHJwR21pZ25YblQyZEp5VnVUREkrUWo5MmhVbkUxb0lrOHR3ZzNtTWxD?=
 =?utf-8?B?OFFMU0JqNTJ0OTVsQ1diVkdnb1JVM1d4clNIMWdZbjFObUEyd25aazNFQ09D?=
 =?utf-8?B?ZHUzQ2ljVHdjandneHc0RGYwU3kxd2tWN2lJcnA2Ulc2ZHRRUzlVd0VvUC9k?=
 =?utf-8?B?R0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a3109e0-0974-4fc6-501e-08dcb6cd9c12
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2024 10:42:18.5056 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PAc5ig5UWXZNaCTrso2X/e8zgf/Z6yg8FbENW616xDPkkAs/386DJrRxGVNDuMqgRn0t+oKwQQ1eM279OlXLbFg3g5KQWsvGgwOudC4h4/w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5917
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723027343; x=1754563343;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G/UneuexohItCzlsTZbXZMft1CyKx4f9zJS7fFlQVsU=;
 b=G4Hl1zZSc7s8ZmA9zyYldZFDh+dh6MwP0GRlRtSREuZFmHt1cWHKXtOL
 90Zu+qwLjM41ISqbDk45jiKvjl/c/36PoqErjTf6aPxsXlL89GjzUX4uy
 sQf0KY3ZIEsuwTcDhG4DARBRfyhVZBx2fjjqsrPTWxJmt39ZHBID2aOAF
 KSLrzVPU3Szze2Mnp8yKOreEb2eyWJ+5TmHwYDSn0ExQU9TB8MSNMNdpd
 7EkYjNXX1ssGez9FRH/XeX1vbG+Ej2SthvMb+tY8oMjGYB5yACuxJ3zOK
 FULkQMVfvmodVnqRe6HSXWBl7nacxrac13YRw9zieG5YLoEU7UF7PJS3i
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G4Hl1zZS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Implement ethtool
 reset support
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
Cc: netdev@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 06.08.2024 16:55, Simon Horman wrote:
> On Mon, Aug 05, 2024 at 02:46:51PM +0200, Wojciech Drewek wrote:
>> Enable ethtool reset support. Ethtool reset flags are mapped to the
>> E810 reset type:
>> PF reset:
>>   $ ethtool --reset <ethX> irq dma filter offload
>> CORE reset:
>>   $ ethtool --reset <ethX> irq-shared dma-shared filter-shared \
>>     offload-shared ram-shared
>> GLOBAL reset:
>>   $ ethtool --reset <ethX> irq-shared dma-shared filter-shared \
>>     offload-shared mac-shared phy-shared ram-shared
>>
>> Calling the same set of flags as in PF reset case on port representor
>> triggers VF reset.
>>
>> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> ---
>>  .../device_drivers/ethernet/intel/ice.rst     | 28 +++++++
>>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 77 +++++++++++++++++++
>>  2 files changed, 105 insertions(+)
>>
>> diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
>> index 934752f675ba..c043164bfacc 100644
>> --- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
>> +++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
>> @@ -102,6 +102,34 @@ rx_bytes as "X", then ethtool (hardware statistics) will display rx_bytes as
>>  "X+40" (4 bytes CRC x 10 packets).
>>  
>>  
>> +ethtool reset
>> +-------------
>> +The driver supports 3 types of resets:
>> +- PF reset - resets only components associated with the given PF, does not
>> +  impact other PFs
>> +- CORE reset - whole adapter is affected, reset all PFs
>> +- GLOBAL reset - same as CORE but mac and phy components are also reinitialized
> 
> Hi Wojciech,
> 
> I'm not sure, but I think that Sphinx wants blank likes between these list
> items.

Thanks, I fixed that in v3

> 
> Flagged by make: htmldocs SPHINXDIRS=networking
> 
> ...
> 
