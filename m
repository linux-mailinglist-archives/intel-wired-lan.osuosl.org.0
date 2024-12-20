Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E0E9F94E2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Dec 2024 15:51:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4DD776061B;
	Fri, 20 Dec 2024 14:51:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M4S_4E_-NExU; Fri, 20 Dec 2024 14:51:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A94466060B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734706287;
	bh=W4qY1+uSn5sxqERP2Dd9/JHXUM5w5wBHczE18ybakwI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YhakAhWAE/odO0tam3Vu6l/1QI4DBRjWDvYp3sCbARsZ9yUUvCD8rHx5sbw8G7kZE
	 7h64xWVeDaX+xbpAt4GfHdBXG1iqDFC4uoREk9gVVlBUm0UfVz1gVjZpnYla/6oJnw
	 zkA3X8Ozl7fy0LKbbgyWFT1BF3AsMYRY5UGO1uTN9ZqCP30Bh6If196fQzkH3H2JAQ
	 KWNufWRv4CXd1ik227enhqMokemRZYxhsaCgWbNNG5Z8Le0nDZdA3e7SV3fgehRa1D
	 DOvLT0HzTllVUR5SbXWNV53AFiw8Jheriq6hQuov/FD+x+QbPWSmpkhRr4++gOuMQQ
	 gaqp8WCI8s7rQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A94466060B;
	Fri, 20 Dec 2024 14:51:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id BC9446C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 14:51:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AACA560659
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 14:51:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sur2UhYHMSzI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Dec 2024 14:51:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D1EC66061B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1EC66061B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D1EC66061B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 14:51:24 +0000 (UTC)
X-CSE-ConnectionGUID: XCqCc2ZkRxCyBbSwwp9+Zw==
X-CSE-MsgGUID: lxF944slQqWc5cr0cUDJmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="35147685"
X-IronPort-AV: E=Sophos;i="6.12,251,1728975600"; d="scan'208";a="35147685"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 06:51:23 -0800
X-CSE-ConnectionGUID: 6d4LZs7JQ3ySxHntjJZJLg==
X-CSE-MsgGUID: cQd/QTfMRfaIzfDohqRNSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="103518023"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2024 06:51:23 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 20 Dec 2024 06:51:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 20 Dec 2024 06:51:22 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 20 Dec 2024 06:51:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dDe+KSao7nH3sFKA/6Dw/7/UfZ62RPm0coLR0q+MwsrTWygtELNOXqeHvdJfM8UwbzTToCfa/uTb85oB0w2gTb2aaBjEhC2eZRaLDPeXPjhYpFKAJNy0IIr1MHhXtsWRbqkpw5UoLX9u17PDzGy5YZhI8GNRSo4jIw+Lkaz8aaUfaLVG02pLJ4h9ZMsH5qS8vqxos3KpqEpbzhnG0lOFeXjMoNGf/btmH0Prro15wPAelb8wl41D6DX9KNjORUBV/Kfol17fTeJ+mSZ//R/cuFWqvUCzIMC96caTjXGSLm0imTZgSFRoKaAJUQekf2fvZoBzpxC59tpYKLwlcXtIFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W4qY1+uSn5sxqERP2Dd9/JHXUM5w5wBHczE18ybakwI=;
 b=c3BckdR6S9C74wo2b6wAiCEUrLmmdgb6AhgAuXlEbFvbuAoVzaBW1gze9hUe3kteRDjLY9D1Ae958uPv0dsureTCT5MTxaxot89ueW92Wp+agoIxut8IyztKB9k35NB3RbIJteQmY6GxJlkWfJhhKMoDHs6x5qRQ8g+JlCJMOmxYPlQiHd4ZcdvXOC7vT2oGvECnitpYE53ulklDzZyGvjNxybewPIeinXrpAhDICj8ldsPEzF8d6uEcmtTkSj5DY6FUc2S2ganWARruAw7ctyw4UZ0Ai2p1QypjhRccV4gsuTMamETUPYCP+i1KX16Al+sOzIZMhjAqsMT+S3NS3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SA2PR11MB4858.namprd11.prod.outlook.com (2603:10b6:806:f9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.16; Fri, 20 Dec
 2024 14:51:19 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%7]) with mapi id 15.20.8272.013; Fri, 20 Dec 2024
 14:51:19 +0000
Message-ID: <cf836232-ef2b-40c8-b9e5-4f0dffdcc839@intel.com>
Date: Fri, 20 Dec 2024 07:51:09 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <andrew+netdev@lunn.ch>, <edumazet@google.com>, <pabeni@redhat.com>,
 <davem@davemloft.net>, <michael.chan@broadcom.com>, <tariqt@nvidia.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <jdamato@fastly.com>, <shayd@nvidia.com>, <akpm@linux-foundation.org>
References: <20241218165843.744647-1-ahmed.zaki@intel.com>
 <20241218165843.744647-5-ahmed.zaki@intel.com>
 <20241219194237.31822cba@kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20241219194237.31822cba@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0322.namprd03.prod.outlook.com
 (2603:10b6:303:dd::27) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SA2PR11MB4858:EE_
X-MS-Office365-Filtering-Correlation-Id: 23ff4631-72de-4759-5943-08dd2105c342
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U016T3FKUTFjdGZ0UWdXRzNaZ1BHZ1dQT0dMM3VrOW5pd2hQeExHazVsanFE?=
 =?utf-8?B?akx0QUgyWWpoRHNwWjFHaytnQWQvb0x1NGFrejhrc3ZLcjlFY3hSMU5zRks3?=
 =?utf-8?B?Qlk3Zzl0K3VHcURCYUJkcmVLVzA1Z3BmNFdRZkdJRHM1SkdTQTM2YWpvb0Jk?=
 =?utf-8?B?V1lRc0Rzc09OQTgvM3RWSUIxVVRZVndVaFBqT20zRnNibHNwcWZ4UTRzd2ZC?=
 =?utf-8?B?RWlMNXV1Zk90TGVPZm1zZUFjLzhTRFJBUUp4Q3FURjlSaUxhR0Nlb3UvWDNx?=
 =?utf-8?B?dGkrdTNPM2JxOUNKVm5VRzI0ZDNmT3lOL2xtc3JIS084bWY5UzByYkhXQSta?=
 =?utf-8?B?QTNoTFhDazd2ZnFlL2xkaGl4L3c5Q1RSa3pmckJwNGN6amZnOTVWSk5MaytE?=
 =?utf-8?B?bnc4NGc0VmVodU1IUTl5UzdIRW9udm1LSkpobiswckxsMlVVeXBFZloxempL?=
 =?utf-8?B?UFJ1elFZTDZLVGVvZDd6WGQzYVBYMkdwZE9CUWNLbVVua1AvWWRLYnhmbDlS?=
 =?utf-8?B?UndTdEloTkROTktOaldkSVV0WGg0bW5CdmJmM1dnQkJUNy81Qjc0QS9NMVJN?=
 =?utf-8?B?UGFTMUdYQWpkVWRaUXFTVlhCbnhFVmlRcGs4TDhGZ28yczFSSFlHeXlNSTVl?=
 =?utf-8?B?RzNZQ2RDeGZFeVpYS0VWTjFYYWlZYytpZ0xRN0poU0g0bSszR3dFNEtadHgw?=
 =?utf-8?B?M1BEeS9hSUpIY0dNdWNldEcxcVpkNjZnSDVvamNHdE9nc3ZTN2FPSXM0ZHp0?=
 =?utf-8?B?R255bjhIUU00VitmQ1hqREttUno3dGliSjE1Q0gwQXlWdVJUWUNQR1k1RmNt?=
 =?utf-8?B?UTNMNHBnTEV2eEVOKy9LOHY3KzRjYmI5YUM5TUdRcytmMmc5TE95TjVyelBS?=
 =?utf-8?B?ZkQ3MHVxWjFveGthNm1ZcHppTi81aWduR01DMHpsSTgxV1hJSFNmRTFDcFJx?=
 =?utf-8?B?U2piTzhMY1FLVG1GdUdCZkZRTXk1dVQxV3FMY2tCSDJ6UUJjNFZ0SE9wdFRr?=
 =?utf-8?B?UmphS1hzYXR1SEYyZFd3R1N0S1Jwdzh4Y0JWMTNqZUY5Uk9MOFROREh6Q0da?=
 =?utf-8?B?UE15blpFdWJ1SlFNUkl6VWJ2S0F5aGFHUzR6OXlvdDJYclE2MVZMZjcydVc4?=
 =?utf-8?B?ZW5tY3pxRFlaeUF5VSszY0c5SUtPUWtNWHE5VlQyU01DbENLRjNRZEhsVGFa?=
 =?utf-8?B?UWJxbGZvUDZHdThxYm5ya3FIUTc3Z1ltc2JoaVFZNmYrOGN6aFdwcUFmQm8w?=
 =?utf-8?B?R2xTV3owazdtaXdnVHgrNVRrWGVCRlpTbWRCZEZRcEw2UStLTVh0VW9aY3dC?=
 =?utf-8?B?TzBkSTkxNDV3dTBWaWNyaEk2aytpbVV5cEZMamM3UWRZQUZUOThoaTdXZ1Jn?=
 =?utf-8?B?bkVENkhqb2pGR25BcjBFdHVnK0RSWEdwRmV3Ung3QlJZckdDU0hwVkxsbHlJ?=
 =?utf-8?B?Uy93d0lYMC82Y29Pbk1VMGJPZ05qVGN1MGpRSExycTUwenl3SHoxZlprNlA0?=
 =?utf-8?B?SkZ4RUxmUXhBOU9ETUdSNjUzckcwNjBHVXdYelNzTm9CWHdMMmE5UERSRmFq?=
 =?utf-8?B?OEYrUzlHMHIyWWtTZHM3bzVnNDZrenhiRXNNUUx0ekNadmMramNTc25uVHFH?=
 =?utf-8?B?NUpaL3hjRThzTytYcncwVG00NzNnakthbTBlRUxDT0RGYzFiYTZKMUxzM1Rt?=
 =?utf-8?B?NHA0dHIrWkM0SUVYQTBJbVVrOUZZZUdYdlhlc1IyWDAwcWtIK3pENll4NW9E?=
 =?utf-8?B?VUZqUVM1TjdYbGxmUE5lQlFDdGg2WmhURXl4bW0waEpuekdaa3NaSjJ4WnBy?=
 =?utf-8?B?NjEwMUpNZzNkK09jMjdEb3dRZU5vUURwZldZSjJiTllleG01NnBxdmNPNWZm?=
 =?utf-8?Q?YrJWSuqKMhqRI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NjN2YTk0MnhuL09KNWNFV0pod0xpRE9UZ3lJOEVCTlF5aG0rMU5Dekw1Rnl6?=
 =?utf-8?B?WCt6ZjV1KzlIc2twNjd0VTZYeUhlUTdvaEgrcll0aUVBaklhS09meEN0dlZF?=
 =?utf-8?B?TlFQM2hQTVFXSEFQMGdUVHhCeld6MHM0elh4bDJvay9lbzE4eEJhZURaN2N2?=
 =?utf-8?B?dUNNalk1MGdvR0psTHh2S1lSZmtNREQ0NFZJRjMxY0hRTEtaQWlZam5Gcm9W?=
 =?utf-8?B?NUdJM3lLaHpPbEE1RDh0dUloSy9RWHoyQm9WZG8ycmRTRHA1T1laYjhIOXdJ?=
 =?utf-8?B?OVlNQkVmOVlYWWU4cVlmK1puSWxId1IrVktIWlBpM1ExdEtpSjNBcmZXS1JJ?=
 =?utf-8?B?MWpIV1BaenRZR0RrMVQ1bEJSRkF0ZTZ1Q1oyNzdhaWlBSHZ6dUo5bVVqbEdE?=
 =?utf-8?B?WG9wNFIyVU0vQU5pb3ZOQ1F1YUFrVDQ5OHRPUzV3Mi80cWVFM0NOV3dqNmpB?=
 =?utf-8?B?V295WWJBQmozdzJVZCt5K3g0Sy83Ris0VWx3RmNqYWwrNTRUVi9XSFpicmE4?=
 =?utf-8?B?Wk03MXYwdGREUTVsS2xMM0o1cnJWTE1NaDd4VmVIdUxscjVLMFVxQW83NjdM?=
 =?utf-8?B?M3Z1VzF5SHRhSHBXNkNXaWJpNDFiUzdrN0FaSHQ3VXkxaEZWc2Y4YnkwVm9H?=
 =?utf-8?B?anBtN1U1ZDVabk52SGNIbERuTXVIMmp6eEd4NTU5eHYyTjI3SHlsTmpEVU92?=
 =?utf-8?B?L0J0SGoxOFFHbUN3amtxNHdzSGxnQVRvZUhRVWpWWFo4bFRzak0vZGhxWGFt?=
 =?utf-8?B?djcwRy9nY0oyZytsN3d6NDAyOUo2ak5EKy96aFhRckVZNTJwQWU5MVRBb2hP?=
 =?utf-8?B?THZudVNLNG9ZTk5HUGIwZGZlSUhRZUlhRnVaZHFJdFpOS0V1K3RlWmdlTlBv?=
 =?utf-8?B?RXJTdWtnVGp0Q3RmeFZDQ2FmOW9IV29uTmZCazFzcVlDR0R3bXNpZlNWdzcy?=
 =?utf-8?B?QkltdkxiT1BoZUx6Q05qSG5Td0pjU3AvT0ZtMDY5bXBITnFpeW1mNy96SmFQ?=
 =?utf-8?B?dFdqNnpQYjBmc21DOEh4N1RhWHRVMkZXVnBzNTJ3UXJFWldhRmtuV3RGaCtq?=
 =?utf-8?B?b0E0QnBwUnVMRmUrQ3ZRc1piOW42U0w2NlhJOWlsM1ZUNDZWUm95YzF2M0dq?=
 =?utf-8?B?ZExDZE9IdEpGWGRNbFVsN0xSdjlGZG95N21OL2phMnVwb2MvSk1QVmdLNnVy?=
 =?utf-8?B?MVdjRGsrNTJ5dmlzWmpENFJSYWNMWit1dCtxOU5XcktSSE9TK250L25KbVdp?=
 =?utf-8?B?NW1KY3Q3aEJmd015QUc4Y2lyOHJkZEpva1I3RTN4QnBXMisxZDJRZTN1Ukly?=
 =?utf-8?B?YTR4UGJQOXZINGNGVVhveUFyNVpqWEwzWlV0OElQUndRRmljZ0pZN2srUURZ?=
 =?utf-8?B?OGtHNUdYMzVod09MVU9vVXQxc3RINm9tRW90VElURmp0aitKRlVrV1BNTW9N?=
 =?utf-8?B?ZVd6RnpTUHRsSUVBTlFvWmFBaGg1MEFhaC9temVFenlQdFgyNUdRSEJtVmVo?=
 =?utf-8?B?N2NKLzlhWm5lWkhSeW54RlMxZDc1Q3RKaC9saU5JeDJOeVYwN3E3NGVITnJP?=
 =?utf-8?B?T2dFcEgzdXRyUnA2RW1FbFNjQlpIWlBZR1R0UVJLTk45dFd1QklzcEdPUmw5?=
 =?utf-8?B?Z2FpSXpzcUo1Y2ZHZmlCUUpOTzdtZk9xOGJ1UnlpZXROWGg0V0ZsM2d0bTVK?=
 =?utf-8?B?c0FVcG0rdzByOXYvSEUyWXk2QVBuSEJyNzNSM2prZVdLNjhMM09PTUwzbnRv?=
 =?utf-8?B?dWM4WXpoVkJiUlE1Q1BGS2cycHZONTZ6OTk5NjVXSytVSk53Y3paSzF6UDBv?=
 =?utf-8?B?d082M1piT1ZkR3hYVW5LcUtZRG9OM0hPSHMwZzV2TFNoRzV2SFdBN0pJN0w2?=
 =?utf-8?B?NGxnVVZ1YWFqeU9uTDdrdmNodmVnSkEyMmFQaDNHQjJzMFUvaitWSXY3V01W?=
 =?utf-8?B?SCszOUg0MUlFZ0RaeGZUOVIwZThja2swYXBQTmhBbXg3c3BsL0hPd2lkc1lL?=
 =?utf-8?B?cHQ2ck9jMFpDWHNyQmxKN3M4WWhvRlJvZVVoQlhkU08vQlpEaXBxZUhXdXFC?=
 =?utf-8?B?ZjM0L3c1ZzNMOTZuVHBqbjRXbkIvQ29ZanZVeFRScUUxUy91VEp6c01Zazd5?=
 =?utf-8?Q?FMRymgihv1M66M+VvCpYW9KiV?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23ff4631-72de-4759-5943-08dd2105c342
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2024 14:51:19.2470 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mDf6vusviT2Zh/YNLstg/SrXihE3VX8C8o0bnvf9aDSktTy5b12kL5cIkl6XzLwpB3aoNb4MQ+8QQzt6aBk+rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4858
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734706285; x=1766242285;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ofaOX/9mgrRohPb2cmNns8QQu/XzHIPxfhTmiw9UA1U=;
 b=LPZXFxZHnQOfZO6YCCyHnVyStAcO529nWW77NyUm9P6fUV2yF3Ffu7iM
 IjhH67WTURYGygPJfMGK8q8sjEECeJs5xRRepptezIg1fbHJiFDUXp0dM
 cPvkNzfrw+drrh9MCFUw895OEPiyHMmrv2Iq4qM4sgvDA1xDEHW+ibedJ
 MLSAsZ8UGnumZUmHKimVkwXki+Y/32YhuiTrpgSL4/ixluTvCRxcOLE0a
 J0RZtOSv5V4AemidKakVNuZYFHT4ByCNBBIdTSJLXlb4diS9d+hxg4thi
 bMEduPQS3+yRIWBEV9J43mBO32U4cOm/5TgYPNjaI8UUQOth2M32C/lqf
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LPZXFxZH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/8] net: napi: add CPU
 affinity to napi->config
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



On 2024-12-19 8:42 p.m., Jakub Kicinski wrote:
> On Wed, 18 Dec 2024 09:58:39 -0700 Ahmed Zaki wrote:
>> +	if (!glue_created && flags & NAPIF_IRQ_AFFINITY) {
>> +		glue = kzalloc(sizeof(*glue), GFP_KERNEL);
>> +		if (!glue)
>> +			return;
>> +		glue->notify.notify = netif_irq_cpu_rmap_notify;
>> +		glue->notify.release = netif_napi_affinity_release;
>> +		glue->data = napi;
>> +		glue->rmap = NULL;
>> +		napi->irq_flags |= NAPIF_IRQ_NORMAP;
> 
> Why allocate the glue? is it not possible to add the fields:
> 
> 	struct irq_affinity_notify notify;
> 	u16 index;
> 
> to struct napi_struct ?

In the first branch of "if", the cb function netif_irq_cpu_rmap_notify() 
is also passed to irq_cpu_rmap_add() where the irq notifier is embedded 
in "struct irq_glue".

I think this cannot be changed as long as some drivers are directly 
calling irq_cpu_rmap_add() instead of the proposed API.
