Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CE/wIQQl/WkuYQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 01:49:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8F64F04AE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 01:49:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61BAB406E5;
	Thu,  7 May 2026 23:49:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z320QqlE6H65; Thu,  7 May 2026 23:49:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE002406B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778197761;
	bh=dqS8pXhgwqGoAGCcTQE1kHzU/QfBPlYxJKFaNGFcM8Q=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hy58l40BUJQoK1r0x7zn2AkukYQkAhBDBFoyNyyQnto0F3HBq+lV0Er6RS10NeGpj
	 GR/TTK/05scQpIJSJCyb98owCYQKJLHh/K/9fDt0zePRRiTGuGBZaU83xHGKTCc8Xy
	 6UcHwLqKk2RomYjNP3hTDQSif2+UcjOWmgbUhGrmnj1dG3i79qqMWbh3IxMKC32DRJ
	 xhZgB0SYpnDo07iDaKkR0406/8OvDzKimb8w4PiCYjmVcsRuZujD0pEis9JHP/+y2K
	 OJRUuctDy7AyJLEWBSvhi73o5fTHTFzSsX4xwblkGgJ/YbyOhtbT4laM9zBp3GG5Ti
	 COVcXCc/U8/7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE002406B1;
	Thu,  7 May 2026 23:49:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 85531358
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 23:49:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6B3E640895
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 23:49:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SkIgwCO-QVtf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 23:49:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5382140892
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5382140892
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5382140892
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 23:49:18 +0000 (UTC)
X-CSE-ConnectionGUID: FjhIguOET7Om4Xyl4Q41Sw==
X-CSE-MsgGUID: yjtzFAvFT82TWmKFOhv79A==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79015759"
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="79015759"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 16:49:17 -0700
X-CSE-ConnectionGUID: 1guhKE6ERL+5UgKDJKOANQ==
X-CSE-MsgGUID: zLdmq8sfSXWolyzFj2y6nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="236541571"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 16:49:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 16:49:17 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 16:49:17 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.6) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 16:49:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SYtPaVcDPNdAwZq8xBEQck/oUUeyT2D5RAx4TTKmHPfhkr6QL49z+pN15s+TwyTC1+V2ymS9Bxi77emthJc0WdbIG9fVO1p2AQgkKFcRb65tsQsSrAh8NZ1hGrsh4yF+XHo2g8qT1IMeKI6qvNpfOngm6GK8dql3tgcvraQkZyYiPXEm6mbd8pZFp7wYiat2OBMUdQgqD7DQHaYyuC7gizgTRXsDuaC+nXk+KlxvXN//j0PR1c5RJseXQALkYjIC0r1lh9s3slvLL5U5e6cZbViakolv6cw+euZS6NanwfgcU5lo7LeZEauRJEijVPC52BCSJfrBsfLBMkK8/v9RXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dqS8pXhgwqGoAGCcTQE1kHzU/QfBPlYxJKFaNGFcM8Q=;
 b=GJNKkTdE3MsWDQVpaGp9uFGCgAhXDDcAEuRZZxaVMBj+Hjm04gOIzIjZJZz23A2C7NxgV645Cp4Ro1G7kSV7sFiGgbR0J4Ri/VTupDW02oV3w+K4MtLHDxY5mfpQ4c5Q/dtAgrd56CiwiZYfzVxp0nh+V2PPI9jRea5qBNy8kkRsW4Y3qDkH4Z+V1jgi8xNvlh/e/J89Nv6eLjN6ReEdpG0IcWgZa2QdyZy9MNaoRqb6V01oFzDOrGcXLdjCsJPcEJ/y4IKU9Re0/+kkL8nzuDAM7Enb63j3Sp5Oxy/BsPDk1wa2M/y2+dXjimKEyk4Pw/DOeDUxZsWHrlSHOkZp2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by SJ5PPFF8B526086.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::862) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.16; Thu, 7 May
 2026 23:49:11 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9891.008; Thu, 7 May 2026
 23:49:11 +0000
Message-ID: <0a4fe042-bab5-4f92-9b3f-9315101412c5@intel.com>
Date: Thu, 7 May 2026 16:49:09 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Jon Kohler <jon@nutanix.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Paolo
 Abeni" <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
References: <20260504154823.2535612-1-jon@nutanix.com>
 <20260504164901.7b3a737b@kernel.org>
 <6F0C5872-0388-47AF-8CD9-1D116EA13224@nutanix.com>
 <20260504180656.62539d96@kernel.org>
 <D670011F-AA11-4AFF-A70B-4DFF03C5F049@nutanix.com>
 <20260504182635.39e1b7a6@kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260504182635.39e1b7a6@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0072.namprd03.prod.outlook.com
 (2603:10b6:303:b6::17) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|SJ5PPFF8B526086:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a136244-6dcf-4cb3-97ee-08deac933cd8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|3023799003|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: JsgyfOAY1tEndeL+aLkTcwyVV0w54vtinl3UE1cxfYHZtZQUNH2+mVxlty5D8KhFhHoEEtJ7GgpoG/YuIsP6FC6IW7ueERsUrP5U1kJbC/RXPHgSEU7kE2+BBTdp+1VneuBGNVpjKW2UtUfv9mX5kqjqRZT8LNTNM26wKjY+gllbZl7Y8IitwKte+2c8vLa00ICQY7jMywqGgJXqzhkAu20xtH/EqsreWqnQZNzUxsmU//OKH4xpCosvtjIIDgUD0numi/L8Zcoihdn0usIoySeBRsJlVKQHtTs+HGaMjF9OSsqIqW/2bb2ymbFsDEdO6yYfXI1x7Q3NNLlSw5GTUqAel9wyoUmhHlKaoYrdLSS8OgkhWBu6HCkGGahd1v9Tm/1nhAR6AWMSBAjridGGgFPuKwMnluFUlZO4drnrn833JIM3H5TGs63Q8aq7D/cf5GfZfTyoplDq1RvXcs5OTGHpxPWAaOhwtcMjx5pC883KeAUfIt+xAeNzKDVMwVyMEqpGCCFiEq5QjiWisSutKJmqlNShW/W5PWEn8Ml+pPt9sBjv9nGwdz4hUxW8j9kZeTTT04qHQyqKt+rWLbwZjsfoGnVCJk5hA47essAYyjAZHIwfdagSMRm+XK5WXDZIbR5IOYuMmnbY9EEUI6fgNrONfOpHp/t3W6uYEcTjvzSqii1CZ63sEoEdneM3jwgc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(3023799003)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eFBOeEk4cm4rZkNpRkRBbUVnRm9nZXVsaGgzaUI1RUJva1ZFR1VyQTJGbGFs?=
 =?utf-8?B?dUtGM2xlM21oWTE3U2k3cUQxVlpzb00vL2dCNWpnREM5cXgxdDV6WVZMdGE0?=
 =?utf-8?B?V1VvRHFuUVRNWlZJSG9vbDh3d2U4UUFOQUUyS0lGMUxNMDFHUGJBZlAzNk9r?=
 =?utf-8?B?WnRjblpDNWNtNDRUcEdRZnNvMWxsUEFsZVZHcFF4VXEzMVpPWVUrSTZmVGgw?=
 =?utf-8?B?U2JXOWJIT2pFdmo3WDlUYXJURlFOVXAyMytXaHAxOEwwc0ZhMkhuU2IzNXJh?=
 =?utf-8?B?SlNIL1FOSlNqZWZkQUVHWE05cXA4QXVhNmpLOVhLUzV4aGFQZkExNHh1ZEtX?=
 =?utf-8?B?alRUYm1tMkpQUnpMY0RGWktYVGxZQi83MFZ2L1QwUStHSmdKQkZGMThRQkJX?=
 =?utf-8?B?K0VjU3hCZU5QRkhPWUZkejhLSml1UUU4ZjhhS09aUmV3Z3FBZ3RkSDVqcVJ1?=
 =?utf-8?B?SStpa1RuakN0NWduaVl0WS9CR1I4Z3ViYmFGMTBnYlRFd1B5SUpEVjd0UC90?=
 =?utf-8?B?QXRRcm1oa05WNnpVRUdwZmZ0YVQ2RmQ4UUVSV1o4OHMwQ2NBMEtTTlpVamxl?=
 =?utf-8?B?S0lLazNJbk9neGhZWmFSYTllanl5YmdoYmlhS2lXSWVzYjdjSGQrV0JDMXJk?=
 =?utf-8?B?RHZrYWpSYitBamt1V3hmcitFTk1uNy81ak5hVTdoc2VpQm1OcjV1aXI2WWFO?=
 =?utf-8?B?R2NKbnhnWmFxWThFOTlPUGx2c0JyM0hwMVIvSnhrakxCYVFTWGMzZ2FwbzVJ?=
 =?utf-8?B?dUc0RWhLeHc0WmNROUU4MkdZQWFVaDIvRGlodEJwVGNzdlVEbnMrWUVWaWti?=
 =?utf-8?B?ZHVWVHZ6VEY1UW1rZ1R5YVhTWlZBZzcxQ0FKQklveFlYNW9aWTlxRWZvTmZ4?=
 =?utf-8?B?ZC9TSHFBZDBGSENQcGZJT3FmTVo2ZUlic3IwcStSTHVtMmdyd0Z1SGgzVWFC?=
 =?utf-8?B?ZkFXaFZaaFdScG1WZUppVG5WczBmdjEvNlJMalVoSjNQbGUzSHlqdXFId09m?=
 =?utf-8?B?UmMrOTZsRjRIOXU0ZG1YNVk3V0ZLVm9ENjV0ZEs1aS9HcUVHd2VFTGxyZFFy?=
 =?utf-8?B?djBYUzJUREVwd3pnUnF1aXh6N3RsZElDdGl4d2NOZXdQWnh2cHZ2anhMZklU?=
 =?utf-8?B?eURreTFsMmdzamZjOEFKMFRMTUlIUk55ajk5MnpXVmU0Y1NTR2NCUlZQUjMy?=
 =?utf-8?B?Y3hlOElkaXR2cjhZek5IL0h1KzJiYVAybW41TzNFb0tZeURrKzlwZURKdVcx?=
 =?utf-8?B?MUpiQ0dRYis5ZUhJQVBIMUc2bFplUFM3WmYveFlSaVZ4MnVabmk2cWFnSy90?=
 =?utf-8?B?clhacGhDTHZCbUttWkNLVlROUi9ydSsweGtCV1creXM1NWZZT2xldTNtYk5x?=
 =?utf-8?B?a1h3eC9lQkE5dkp2NDFTd201b3J2eGRBWGk3THBkc2syZm5JRlluQ3BHWDRN?=
 =?utf-8?B?U2pxejF6ZkhrbERvcDdoRTh5V3hMTTFtcFE4VDRYd0U4a0tDMFcwYS8wbCtC?=
 =?utf-8?B?THlNZU1Da3FNOFJ3WHhlVGdhRmpLb1JlYm9hWWxxOER4UllESkZQOEc0OWx6?=
 =?utf-8?B?My82aVIxTXZoeEUzYk9vMDhIK010bnRkWE5TdDBCNEt6NTdLellQTnVLVGh4?=
 =?utf-8?B?ZXhkU1U2Y0NPRGVQa3FTdWI2N0VuMC9CdHliT0xYQmZOdDBhaW9makVIcnRU?=
 =?utf-8?B?WU0rdlNZZ2JQalVQNmdQOWlSWXhBQmQ1amR4V0hNeVlMZjRKRTJ0TG8vM283?=
 =?utf-8?B?cExyRGtZdnRpN3VJYTYyajBGSWFRTHpUN0ZUUmNaUnNUT1BCN2VUTGZ2NmZJ?=
 =?utf-8?B?b3NDRUZXR3VoVjArYTc3aGZiVUlhZXF4TnF2dW9GZDk5ZUxKUm8rMnZ2Tkgz?=
 =?utf-8?B?TDdScm5NQTFLQWJrMXpPalgzRldUNEZXNXM0MHArTzhvK1NpR0ZKNmk2UTc5?=
 =?utf-8?B?ZnRHQVpoKzVQVkVQUlVrLytyUlBOSDdsQ2paNWR0ZkM4TjF2alpxZ2JYOVZG?=
 =?utf-8?B?bTFmS1NrckkvK2FLdzBySnhDSWxFOFFCT3BBeEFZcXUyM2NRUDh4OEZiZHI3?=
 =?utf-8?B?cmVUcUNka2FqSFB5aHRJemlRWTZmWHVCWTVRUUR0dnZKdEQwNC9WL2Q3Y0RT?=
 =?utf-8?B?QlFrdkZud0tMWklKTmdBVGp6eEJLekVrYnRCeFVBd3ZiMllNYVFpaGlZVFkx?=
 =?utf-8?B?d1ZUc1NWc0VhWnlYODdpVEp2WW9nYm5sNmgvMUdPWU1YWTJYeGZwem1CMkQw?=
 =?utf-8?B?c2R5a3cxMzN6aDd5ZlhnUWtyZnR1WWdlY0RBc3RmNnROQzlBY0tIeWViQ1pi?=
 =?utf-8?B?RkRRMy8xNWZsK3Vpbi92cy9wVWVLdFRsZWhDREoxOWZYZjNMZUdoRzZQdUZo?=
 =?utf-8?Q?QAv8SFfW4yAnFb4E=3D?=
X-Exchange-RoutingPolicyChecked: tSwbfTIm2P6B7YtGAyA3pI8Uhj0iZZhfGrRLvF2q8MbgLjdjXJxBtHQEX4+mvoYavG4Qi0n3r6NzQ5W0nSGRWugfehtjKVf52A7McncpHeWfSUbzZdS6+UXjtB1Zt/mMZAYhkMbXae2qhgrfwDtXbQniN7pvCDiEA4rrfWb3xWj0gg83LehL1iBtB6LNkADZ8hqFqZvsmLVA7aXbnxgrhCBVIEVz1sIoLENjLWxJewO/OohFF8oWf8PxTLScVdZ5ydnZu1oznHvKmPgE4oedZOWPn2xexjWStN65vPyKaXePHrKvqql2adf1tI8ev/Lqi4HqDU+m8DcjWbN3omalag==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a136244-6dcf-4cb3-97ee-08deac933cd8
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 23:49:11.5829 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IJryeJnBRM1hAYDI7VtqfGG3xDBLMnQ2KPaB4cdJ2oUR4CBUqPnClJnxlXOveaZ8poJNaDDppb7nZbgnXacjtHz/C9docRBeDLZTYtxchVQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFF8B526086
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778197758; x=1809733758;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TJbLmEjSb9qHkiGypWf2aqytEz00V0IYmXqzu54ZAz4=;
 b=Uh6BzBgYbdPd5nEexg4RLARSpeq5Uy4H38ccn5YS4T+nj5mrUCHglZXF
 nNbsgbiZ2jlXHKH2hj/ZUgRFyttWOK8EWSrDWoToGF5BJbronwrU54lqS
 AUXi9k6zf7s7rwu1GtPeZscI00uKs2qLKH53USN70Z+dn7hBM3kq9OCYm
 ZRKNywnPIsVGHk82HFzrnAZ0FMTHnYcydepUABNa3NDteFcynFekDDpdL
 qF/XAemS0Grv2mVEYCd2/0OCmC5d0uxKF4LhtmJpnPwjw9Z+gnGJfeHDF
 ++znIXcXVHma4pPS55PplYrUu0xXfBk7AwcfKSA0Oto9HBaDpKE4Jh9Xp
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Uh6BzBgY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] e1000e: ethtool: add
 get_channels support
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
X-Rspamd-Queue-Id: DD8F64F04AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:jon@nutanix.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Action: no action

On 5/4/2026 6:26 PM, Jakub Kicinski wrote:
> On Tue, 5 May 2026 01:12:29 +0000 Jon Kohler wrote:
>>> On May 4, 2026, at 9:06 PM, Jakub Kicinski <kuba@kernel.org> wrote:
>>>
>>> On Tue, 5 May 2026 00:59:40 +0000 Jon Kohler wrote:  
>>  [...]  
>>  [...]  
>>  [...]  
>>>>
>>>> Perhaps, but I’m not sure that is a guarantee. A good relevant example
>>>> is when I added get_channels support to enic, which supports all sorts
>>>> of channels, so I don’t think EOPNOTSUP can be 100% consider reliable
>>>> in that case. Meaning, if it just so happens that the original author(s)
>>>> didn't put in get_channels, that doesn’t necessarily mean there is only
>>>> one queue.
>>>>
>>>> And in this case, there is an "other" queue as as well too, as far as
>>>> I can tell, so the output is at least semi-interesting.  
>>>
>>> Sorry I wasn't clear enough - if you have an actual, real life use case
>>> why you need queue count of 1 to be explicitly reported - please explain
>>> it and put it in the commit message.
>>>
>>> If you don't - please don't send patches for the sake of it.  
>>
>> Ah, ok, sorry I misread your message, this isn’t a patch for the sake of
>> a patch. Long story short, we’ve got a user space part of our control plane
>> that reads in the output of ethtool -l as part of some broader queue
>> management code. On systems with an e1000e device present, this specific
>> component goes into a crash loop as it expects all NIC(s) to at least
>> give it some sort of output.
>>
>> That crash loop is easy enough to fix to ignore unsupported outputs;
>> however, my thought here is a simply defense in depth fixup, especially
>> since the kernel patch is quite trivial.
> 
> Got it, thanks for explaining.
> 
> My concern is that if we are expected to always report channel counts
> we're signing up for a major whack-a-mole with the existing drivers.
> Most drivers don't implement it. The networking stack does report
> the number of queues the device asked for via rtnetlink:
> 
> ip -j -d li show dev $ifc | jq '.[].num_rx_queues'
> 
> but in your case I'd personally lean towards user space fix.

Yea, unless we wanted to modify the core ethtool logic so that a driver
without .get_channels would report a single queue.. but I don't know if
that's very accurate.

Still, I think in this case it makes sense to just fix the userspace to
handle EOPNOTSUPP instead of assuming it will be available.

Thanks,
Jake
