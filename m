Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9B5A7665F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Mar 2025 14:53:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60AFA40902;
	Mon, 31 Mar 2025 12:53:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mAtkAOtxDxuM; Mon, 31 Mar 2025 12:53:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B848F4091A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743425619;
	bh=OdZaelWlBdjq5oVVjgiHWhT0yAL/ojXBhOZdnY0yYNs=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SaGrBOauvuPYbfIcUBoQ9OLJR6pt+EuP5a1+xZZgL0CHRB2uMiaAMgW21arxZNzVH
	 V7KiCLbzOBFyC+t8GB19pOzidlYmx12BHxlVLz9FKvsQ3EscmBPrBs1ySDlxkWWbma
	 BVdNQhcF0MdDwIVv96+ikuZKD8cFwgN+epfEt6n8bey4ETsfW2BKqg4DM9qVC9mmyR
	 5VmOTMl0ZpQmOzYjsQ21rK+8J81X25J59SdyEocIEhqX6uK3rGsMcOiSFqHximSh0w
	 pvR2ebjIJjGB+dXJBJsCroyiL32heMPrrNkcbbg4KOzats02CMeQNHnHc1u9WCu1QI
	 eFdrEH5rMmkiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B848F4091A;
	Mon, 31 Mar 2025 12:53:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 13C7FD0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 12:53:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 04EDD81E0D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 12:53:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o9ell4lBnsic for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Mar 2025 12:53:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3A14C80F42
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A14C80F42
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3A14C80F42
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 12:53:37 +0000 (UTC)
X-CSE-ConnectionGUID: R9CnSJ90T9GgBCIMg53faQ==
X-CSE-MsgGUID: CZ1yzg50Rd20CV1m/xIeWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11390"; a="44423235"
X-IronPort-AV: E=Sophos;i="6.14,290,1736841600"; d="scan'208";a="44423235"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2025 05:53:36 -0700
X-CSE-ConnectionGUID: bCKXgS++QxC7ii+Omon2iw==
X-CSE-MsgGUID: XV4KRd7/QXSdRpmHCXl4Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,290,1736841600"; d="scan'208";a="131191585"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2025 05:53:36 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 31 Mar 2025 05:53:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 31 Mar 2025 05:53:35 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 31 Mar 2025 05:53:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CinPu2EO6lD07NXxhE/i0Qszq43gtpgxYDBFm8QoUqOQCSSQOGK7C9B771uzQk4ixbx4m2v4cvl1+SfOGy4arliqHiYnGyNa26BxMC743FeQqXvHMQxLR1UMl4Qyig4aN70Rc2xHqWEG/cIBVkJLoGqwcJHoRENM5zrulYLF2JQEVn8G1s7YZNJWqaGqtqOEbJc/ThEx9/JrKO6UP6bMy0PWSoaNiPBFIiwKP1AXixI/Y/7Gykwn/4JYo8NP9mirYfUkeyLQaz+uBh5fnIvqUY/X7KnLB/tzlJYOvg+GQelOmb1BFqG+sULsVy1dgY7zu1p/JmHE8LeXFAQyGkFdlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OdZaelWlBdjq5oVVjgiHWhT0yAL/ojXBhOZdnY0yYNs=;
 b=e7G8XhH2hP+Lq/higOYHB7dIR6FrAkvpK16eYcRBhcNfJ/BLyeasOFySXWif7/Uv9bW2PLy4XHLWW8izhipRsziDLCcT7kFqadBas1FwXvg5LUsSYTcWZCSzO4mRHNc2tgNl5TIUnIhwJRDNx14UhX3lT8a/d7Ncd0Zkp61tgGxbKUisKVLU6EcKSFDAIS0XNaWmIwdz+Jz3P+AAMBoH13RhUngrKI+iaSJA1r9oy1zryhdV+S9qS0aA12v5BquKROksM+R8JAMBrLDAA82xyNbUESnOi3lgNdQBhyxvgYXKeRmkiVLb5FgrZGhiDfdgne67q7njqMd9ou9xVxZzuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by CY8PR11MB7362.namprd11.prod.outlook.com (2603:10b6:930:85::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.50; Mon, 31 Mar
 2025 12:53:05 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%5]) with mapi id 15.20.8534.045; Mon, 31 Mar 2025
 12:53:05 +0000
To: Jacek Kowalski <jacek@jacekk.info>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <c0435964-44ad-4b03-b246-6db909e419df@jacekk.info>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <9ad46cc5-0d49-8f51-52ff-05eb7691ef61@intel.com>
Date: Mon, 31 Mar 2025 15:52:58 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <c0435964-44ad-4b03-b246-6db909e419df@jacekk.info>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TLZP290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::19) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|CY8PR11MB7362:EE_
X-MS-Office365-Filtering-Correlation-Id: 6bf5e08b-c65a-4021-497a-08dd7052fa72
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dnJld2xMLzNYY0NhSjUwaFF0M3BYc0hETWdZYnluL2JBM0tOY2tPKzlaZC9K?=
 =?utf-8?B?eFh3RVJrYWVRUUVRMkswcEtROERtRE9ERGxUanN1Ny9GTGRWMUFTdVJDVStZ?=
 =?utf-8?B?eGczcHhZbmhQK3dBWXAvbUVsZDBqS1FDczhsOGc4MHc0WUhVbG9DcGFRTGQy?=
 =?utf-8?B?YmNwV3R1UDc4dFVwc2FBb2s1OWpTV3ljbnZtcHBWZzd2ZDhEK01jQlpsSmlH?=
 =?utf-8?B?aGw3QWsySUpjY3lDY1ZoU0NSTDRoZlhqY0xXUHZhajNJZEtoT0c0RVRvQWdU?=
 =?utf-8?B?UWM2Wmg4cDdBSUs0MlNNWVAxU1VXcW1aeHdycDErWFdzMm5QY3ZKb0VBUGg5?=
 =?utf-8?B?cXErdDdYYjVXL1BtbUdTbHBldlROM1AvSTN2VDBMeE5LbURVRWFNUzRGRmRU?=
 =?utf-8?B?ZWRabG51cjF2VXcrcW84aE5Qc0NLNS9hcDQyZ3RvWlRPWlc5ZUVmM1BxVDVL?=
 =?utf-8?B?VGJpRlhxSEhHS1ZPZ2lVU0JrWWU2MkxwMTNVNE9vZ2djZzlvdUNlR3p3YTdB?=
 =?utf-8?B?QnFGQ2hPMjVnU1IzU2N3U1FkM2FoMlZuVnBub055d0pXdjhXUXlCRjc4MU9E?=
 =?utf-8?B?ZjFidHR3VDYrMUpYRDVyaE5oQ1VwMmdsZCtZbVAxZTEvazhCN05YNWZ2SUJE?=
 =?utf-8?B?Z0c0c0xzSVVFVHNZZ1VPMlA3K2VJSzY3Sm9YTVpEcWkzNmk4SjBydzRyLzBr?=
 =?utf-8?B?N20yUGt0ZnZmcm9EV3luajR2ek5CNXM3WEQ3cUVQVGNPQ21TaFJzUmppbUo2?=
 =?utf-8?B?UFJ2eFhZMEFZbWdlSFh6R0lJYnBVM29tNjFBUWdQUG43VDNrRndWN01hMCtL?=
 =?utf-8?B?eStVaWl3Ulg3dmE1UVNYakNEYXBYdFlhQlgzRTg3WFUwTHNvQjFaYjd5bitC?=
 =?utf-8?B?T1ZmaGQ2NmY0YXNZMEZIaFQwWUs4WitnZE9sb1VJckNkYjdKRUtPN1M3Mzl0?=
 =?utf-8?B?WXB0cUxJUzBTNnN1YTlTZ3QvemppVWt3b2YrQUVjMEJZdkJwMFVDeHdpbXdn?=
 =?utf-8?B?ZXkvbUxHTDZuWHNiSHFaMlU0SnNoUFBUZ0lpN1lUZDR2dHBORm8vZUtjY21O?=
 =?utf-8?B?L0psMXdWbXhFL2pzNStDclc3TXZNc2lYT3NZZCtHaHdLaDEzMEVLakpiaTU0?=
 =?utf-8?B?RVdxNTVPODMxOTczKzBNOVNjQjJPZ3pMWFpXSHgxeUtrNFRHUjVFNENod1Ry?=
 =?utf-8?B?U29YVjhpTkM5Tm8xaDVIV1JVUWhkQmdUN1NiUXk4ZnEvYVY4L1F1T2hBVm8z?=
 =?utf-8?B?d0xUdVVyeUVyMEZjRHRnVUt2MGYxODQ2dEhwd244RFp2azVwUS93SVQ5Tmly?=
 =?utf-8?B?WjR2K3BpdGt6YTY0UXRDNXpNeEd4TWY2NGZ4VEdLRStvcVhsNVJlS0swd24y?=
 =?utf-8?B?bDR3b2FuakpmeE9UWE5Db2o2dGxQNUZ1cG1qbjVqeVgxYWMyMDFZR0k2UHo1?=
 =?utf-8?B?MkFBYW14a1dlOEs2SDVIMHJWWFpjcUQxNmozbmYwRHZVbGdaaTlKNm9VZGxV?=
 =?utf-8?B?cVUwNXFiNEJISVo2MGhJb2ZmU2FGQWFlVWtPR1g2UnVCd3ZReks2aGNPZ2Qr?=
 =?utf-8?B?TFlyVUk2aTEzM1VJQThPNXJncUdjZ2pvNGtJWXQ2cmpHNTJOV3d4NXdlTEhB?=
 =?utf-8?B?NmxJZU56VzZFeHdteWRiT3Q0blV4dzNkY3MrK1hYVEdOYXhOakVoY2I1dVV4?=
 =?utf-8?B?SG04SkExYmdpWlp4TFd1eEY3U2dnYzlsbEY3eDlyb3BtQWNBckp4RWluSk55?=
 =?utf-8?B?THhBUnNjalM1bkZjNW5teC94NkEyaFI0YkR3NGNnLy84MDdGTFJXeHBCVGl0?=
 =?utf-8?B?VmRtRWp4RnJhWjZTMHNRd2xmSGxUSjhJWk9KQUVRaDgrRkN0dGtjYjZPV3RZ?=
 =?utf-8?Q?Ez58mzVhnqkLV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UjZkYTluZC9mL2NIUDNxcGZOOU9rcHE5Qy8wcTNiVFk4MElsenFjMGVTQzFt?=
 =?utf-8?B?VVR2MGUzdktBZzlLMHBSUzZZYnVFUG82U0d4U2Izbksxc0NxM0kvdnZIMlI4?=
 =?utf-8?B?c05zdFFzZlcyM1VKK2Fsd29LeG4rMjBFSG1ZeG93c1NaVWdTUW1LQmxTdFla?=
 =?utf-8?B?eW90N3Vzc2o2alpZR2NvczdOOENWTlJLcytSeGU5eWZ1QWJTYlE1dW5TUUZY?=
 =?utf-8?B?M2pTUXhKQkM0am83YmV0Ukk3UHBsZE5wNFlNSzlOZnQ4alZoNE1mRXEzOW9H?=
 =?utf-8?B?KzlraVpjcUJFTzZrVzI4UC80VTM2cHowbXVtQjdGMi80ZVJpUk1EVyt0NmRu?=
 =?utf-8?B?a0dWV2pISDNLS3VDV1Q2T3lFeDYrM1Y4TEdCL1lmVWhCWStpNmNGM245QnJJ?=
 =?utf-8?B?bUN4WVpEWmtMYWh5QzU4ZWtaeHlqVW00RXlqV0JOZDBRcnh6aVMzV0tJUFpa?=
 =?utf-8?B?ZUNPQ3lmK3VyREV2SVBlbit1cWI0RUhyWWRqZEZvNEZwcnlUMVdBMzBoWWtC?=
 =?utf-8?B?RXBuMVpjYldaekprTjB2ZmpRcmhnT0FRb3pzYkJ3NW5ZczFaTzNTRHBBckoy?=
 =?utf-8?B?ZmhHV3RsODVSd1RsVlBDY1B2aVFhTlR6WDZKb2dISkFVZ2hSRlR6M0NHa0Zw?=
 =?utf-8?B?QktYak5CaTFyT0Zua3NCVWtybXJFcEdwK2lqVXJYOW1xeDdiMlpPSWhLbG9W?=
 =?utf-8?B?aDF4N3dSNEx0MjBFS2h3M0Z2ZWxDcUJET0V2YmFSMzJLbUFrZ1ZlMXBqTkpn?=
 =?utf-8?B?SWVGbGpkYnZ3Sy9Td3dDeHVISVU4dyt3YjZMNVFJMFhHbDhvOC9FMnJmQ2pi?=
 =?utf-8?B?VU8xWEFsT0JJaXhPZ09FVk5rcjFrNUc0cVNNME9uZ2VEaHV4NWxGZkxTenND?=
 =?utf-8?B?bVNtMGhaWUdzYndCNUhQbE9ZNXZkNHpNbzl1TllLVjBPbHNsejA2RWpzbWM0?=
 =?utf-8?B?d3FydkcvNHUrUFJqL3h2SDRvSGJRYU5SSEVuWDRPUHRGVm4yc0s2WVZnaFpW?=
 =?utf-8?B?REkrN2F6K2xxZFpWYVROWXJENjQ4dFVvMWM0WnJub1NvR1VQMFAvRWt1YmEy?=
 =?utf-8?B?dUJyc0t6WTdzeW5wV0FiOWR6RExDeWQwTG1NKzZWVXVIZ3VtUjZJQXJlOWNN?=
 =?utf-8?B?TkFiV1VCOUNtdnpQdFlaV1ZxMWJYZUd0a1FHZWk5ckR0Lys3V0sxTmY2a0dZ?=
 =?utf-8?B?QkVrZXAzWHZucnBjOERjbSt3NXBLckRsUFkrVEt1MysraFU4NHdaWTJ2ZDFC?=
 =?utf-8?B?L2crVitHRk5wQTBSdmpkQ1JZK0RKRHpPZDBXQzRGa041NmxwY1M3SmloY2hX?=
 =?utf-8?B?SmR4WVB6dUZyQ250cEFjSmRjRE1IK1dOL1lCRllRNGFHeDYyV0YrQTBBTS9o?=
 =?utf-8?B?bnZaQm5PK0dwdFdlODdnOCt3THdsUE1sRGtOc0JEQThFb3A1Ykp0cCtLZkts?=
 =?utf-8?B?VWoyRHJwTW50ckJwWVdmMUY4ekRLNnM3V0lDSGNuU3FxeDNTSk9YTi9yOU1t?=
 =?utf-8?B?cUZidzdNQVVRQTJQd3Q2SXJocXhPdkN0UXJmK2NOVUVicVZEMDFUbHNDYVZO?=
 =?utf-8?B?cFgvNU9NZmpUUkNhelR5eGFJTUVIVFR1T3M1cHRlcTg3R3NORG9tZ0lMcjdS?=
 =?utf-8?B?RE9kajdkOU5TdmpOdnJRL3NtTUlramtzcTh6ZUdCdTVrczFlbllDSjNCczZ3?=
 =?utf-8?B?c1pSMTRpcGxwaFhpY2JWRG9aWVkvcTVldUMwdDJCakQ4TTZJVng1TmlSbnh5?=
 =?utf-8?B?T0w5OVliZUNockdtVGN3RUZESjdMREFndFlDQ1VQQ3p6aXBmMDBQU1dnMTAx?=
 =?utf-8?B?ajM3Mi9IVis4Q3ByaVdqdjRqUzRRdWt4YUdqcjhYUDRnM21hREE0R1B4L3NF?=
 =?utf-8?B?V2dlOVFHRFM0VXFNc2h0ZEdRUWNUeTdBYmNWUVg0ak1xM1d1cVg2U3ZmNUo5?=
 =?utf-8?B?aG5UTVRBcEFnK3J4M3ZXWndTVFJFUkc5aVE4U1R3NlpaWEdGUnorUlR4bTRY?=
 =?utf-8?B?WUdUd3Y2Q1ZrbllIZmlxQnNNM0tPdUttUnRlSWszV3MraEdGNFFaRXZEY2hQ?=
 =?utf-8?B?bHE4NWZWRWhwcE5rclFiL3BEbklncXNLS1luQXV0ZGQwWEsyckEvcXhuajVH?=
 =?utf-8?B?UFFQRkFRa09XUEFRTk9xbUpTMFByWVhWY0NTS0VhOWR3dXdZV2dwTzhCOExt?=
 =?utf-8?B?Z3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bf5e08b-c65a-4021-497a-08dd7052fa72
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2025 12:53:04.9455 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vT9CLI3IwrS/+Cj1DUmfF0GotEzieTwTtVtBjsz+UIP78XyQPgCemWFnYE/SF0kFyqENH5hKicTdupy5iW/E7XM1zKW+OaA4gr1e4VkT6Ow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7362
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743425617; x=1774961617;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ffd1lt/ojr1W7nF3OctpEn/a05kDMtt3WeA6mBvvBnk=;
 b=gUx3vh6N6pp7GXd5nlQTaAmO8n5rNO/FBwGB+sWhRF2ivWZNqOaQtLyN
 JRxFpdl20bNHL0SRV5hfNA+dGItljGMPvBhZg90jpQmglYAZDIknqnw9L
 J349X1wvEbu6KXcKf4euVBvq5RkqreVrpHVEmiUSV44beqcQo/7FLc1F7
 SAFeDC9rKS0YA4p5vJcHirU+h+o3JoBfmixuvBDzT2C0wOgxHcLSv5ODs
 WhZwUc6ooAwxV3mI77isww1HzMizJ06WBFFcRF4pD2FEF7iXUb69OdeY/
 FKW7l20lWvgn/ZdXKhJ0UckAif2fxVIB80OJw+eWbcWTXBKsVyIBEqrk9
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gUx3vh6N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: add option not to verify NVM
 checksum
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



On 3/18/2025 10:46 PM, Jacek Kowalski wrote:
> Many laptops and motherboards including I219-V network card have
> invalid NVM checksum. While in most instances checksum is fixed by
> e1000e module or by using bootutil, some setups are resistant to NVM
> modifications. This result in the network card being completely
> unusable.
> 
> It seems to be the case on Dell Latitude 5420 where UEFI firmware
> corrupts (in this module's sense) checksums on each boot. No set of
> BIOS options seems to help.
> 
> This commit adds e1000e module option called VerifyNVMChecksum
> (defaults to 1) that allows advanced users to skip checkum verification
> by setting it to 0.
> 
> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Cc: stable@vger.kernel.org


Hi Jacek,
Are you certain that the UEFI FW corrupts the checksum each time, or is 
it just that the system left the factory with incorrect checksum?
 From what we know, the Latitude E5420 is 11th Gen Intel CPU (Tiger Lake).
Starting from this generation, a security change makes it impossible for 
software to write to the I219 NVM.
However, since in previous generations this was possible, it was, 
unfortunately, common practice by vendors to release the NVM without a 
valid checksum, relying on the e1000e module or on bootutil, as you 
mentioned, to “fix” it upon first boot.
By 12th Gen systems, this practice was discontinued, and all NVMs were 
shipped with proper checksum. It is possible that some 11th Gen systems 
such as yours “slipped through the cracks”.

 From a technical perspective, your patch looks correct. However, if the 
checksum validation is skipped, there is no way to distinguish between 
the simple checksum error described above, and actual NVM corruption, 
which may result in loss of functionality and undefined behavior. This 
means, that if there is any functional issue with the network adapter on 
a given system, while checksum validation was suspended by the user, we 
will not be able to offer support
