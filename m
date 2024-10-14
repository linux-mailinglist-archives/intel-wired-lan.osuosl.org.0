Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A74199D6C3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Oct 2024 20:50:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55B7B8118D;
	Mon, 14 Oct 2024 18:50:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1viQzaJfaQ91; Mon, 14 Oct 2024 18:50:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E96981190
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728931848;
	bh=3d+hQ4bONNz8K41pCZj5KNRXstz+c+20+WsxAinLHi0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=I96jgDX1wBJkdX0/rqc9YlZcI02aZmp+qJtXEcfqFCcDNRxwN+w/DCkrg9N8A90XN
	 rOVdV/+r1ax0qStx1w0aUeXtjyIU4UDc09x0pXAZgKE0XocfvgCSX8CifF7zo9RSFL
	 3mmcSUVtKLGT0X4TFBoCygoASKlQoN7EKbjbdTxwIRRcpiExz4/fYxgo5ziyvRBGnB
	 l7YDapoJ0SXcwratV6hJg7yXCsbvxHC9bmQNeeL4kreAqYW+b4W8KfwAOq9dMz0T4k
	 4fcyVxBisSDb3SCzoLl9p2h/7S73VmHKpA6xfDsWZhVktJ7kewHmmQg1zSZVbN8wsn
	 l0Gym6sEZoSFg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E96981190;
	Mon, 14 Oct 2024 18:50:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E5C11BF341
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 18:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4B4DC40388
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 18:50:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KIav0PMKz8IE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2024 18:50:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 12F3C40354
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12F3C40354
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12F3C40354
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 18:50:44 +0000 (UTC)
X-CSE-ConnectionGUID: 9C8yf6KgQ1qA8y4BMo8sgw==
X-CSE-MsgGUID: 7EthblGpQAW1dc7yn60K8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="45805463"
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208";a="45805463"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 11:50:39 -0700
X-CSE-ConnectionGUID: SCQktBgZQF266ZneTuuvZA==
X-CSE-MsgGUID: lOUKVnZhTuqjmTo7mGhKPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208";a="82219424"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Oct 2024 11:50:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 14 Oct 2024 11:50:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 14 Oct 2024 11:50:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 14 Oct 2024 11:50:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Of8JSEVhK0Ea7/L0/F4o+GRtBbYGnPaBndEXSXDmW11Owbr6IooFY+K1p8PjoVPddlYokh12bEz2bL1lOkaVib9Vf6yKjX/kgR4jlZWd9zBZMS2y7bbpKzXIHUm04Kfgv9S623I6fIDZvgy+nPsUOnPFcIVkbqqUwGwWd1qAjkyx6vlo64Ct4vGbaY1zSSNNx5RTo9lRWSfqTQQvN28rcq9MDnCoOCGa6PyGrdGeFpO7py3ociLBAwXZqOVrP7I9WAzGHMSuJ8sjlFFzpyGXGmaIrUCV+CJUJdoO937A3jEJF4e4WHCrdmJIhKWu5LROu6vM5jtlsI8TRUS5RtZLsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3d+hQ4bONNz8K41pCZj5KNRXstz+c+20+WsxAinLHi0=;
 b=aHrF7ORS949+GSuAcdHYz0x9LWGiiffcQThYgmx4ewAGl8zAhLKZbzMZqzmjbjyOILscYOc/d6s4ZedACHVD9vkF0BLksiO71nmVSpXwn2EyRqfucXfn1WDtKXesgsTlKsoLgTlReB/KsuGglXBzDP8RbNLUn+ZwkuK3MzKhZoj9eMlW6yxbbyjeVTB5+QKDIIUMyExVWc6zjt1QcC4S3v3179J3yk8aP3Y3Hz9cJOjVbJ/NQ1BPtb8RZnyeZ0mhdu89nak/47WcrUW8zQZtV+dF/QkQ1ekzZ2+gSQvexEtBX5hP0Uhex/GeEO7wg6VAfcLEfO8ahuGsqPokWYvOsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM6PR11MB4643.namprd11.prod.outlook.com (2603:10b6:5:2a6::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.27; Mon, 14 Oct
 2024 18:50:36 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8048.020; Mon, 14 Oct 2024
 18:50:36 +0000
Message-ID: <636e511e-055d-4b7d-8fdb-13e546ff5b90@intel.com>
Date: Mon, 14 Oct 2024 11:50:33 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
References: <20240930120402.3468-1-michal.swiatkowski@linux.intel.com>
 <20240930120402.3468-4-michal.swiatkowski@linux.intel.com>
 <20241012151304.GK77519@kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20241012151304.GK77519@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0082.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::23) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM6PR11MB4643:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f8b6a2f-a0d6-421f-720a-08dcec811706
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N0wza1duc3dqbXZGc1E1emlaK2kxWFY1RHZVTlB1ZUpOWDJXNU9tWHg5aWdI?=
 =?utf-8?B?dEFPZFJjTEZpcXJ3R2J0M29rK3NCZVV2RDM4dU9EZFlCV2xHMmJ4RGNjdFUx?=
 =?utf-8?B?U3ZBVGdmUmF2K3VmVHpoMW1hSzV1b040ZkI2ZkZsMlJmVkFUeTZTRmt4YlFQ?=
 =?utf-8?B?YUtIN0wxQldUL0R6Zk1DZUsrMFJEQ0hLb0pqQUxIK1hjMnkrL0NDclZEZDJ0?=
 =?utf-8?B?S05FdktiSGtHMzJFVnJOZit6ZnBTbno3dVgybkY5clFsR3RIUkFCbDRnMlZj?=
 =?utf-8?B?WnZlQ3pYYkppTUhGRVdQbEgvQW5RZXo2ZzBQdTdhVkZsUUFpZWxPOFhzd1BW?=
 =?utf-8?B?d0JYVENhUU5Xd0U4VzlTUHVQWTJzd1IzK05XanBpYklic0RlTU5pVUVYc2po?=
 =?utf-8?B?amkreWRZenNSaFJSSnA1S0RhWlVwQStEWHdPRjIxSkhvaDZUY3J5V3BiUXJX?=
 =?utf-8?B?VFZCOFVsM3YvTEN2d29rNy80Q1I1UW9SajV0aUY4bE9VUldEbjFxaTVkVVdv?=
 =?utf-8?B?K1AyMThLdmJNR0pYU0RMc3BzZFZWeUNsWkhEUktRSnlqY1ZQVTk0UlBtWHlN?=
 =?utf-8?B?Ry9xMnk3YWptcHYybGYxeTJTRk5qdVBDL0dYWFRFV3pzcmh1RTNPbmQvRXZ1?=
 =?utf-8?B?cG5KUmdNRjZzY05GcUExYkxzeDdQNTA3bWFXd09obXZVczFZWjdnbk1ObGFx?=
 =?utf-8?B?UkY5K1dnLzdsZzExSmc4RHBFTXoyK2xoQ2hNbjRtcUxvbnltbnBvT0kxcXQz?=
 =?utf-8?B?ak0zMGNuckFQZ1hMRjNJNG85SXYvTElBMWZnZVQzMVVtZ0kxTlJySFFHb3BV?=
 =?utf-8?B?Skc2dUJRKzNnVHpuYWx4bm13eldpTHRyQ1Q0bmNlU00xQUIwZVVuOUNFM0dx?=
 =?utf-8?B?cWg0VXBjWVRzSytsalpCVVdTNUJIVmE4RUw4TkpiRTM5dmxKaWt2ZGdUcnFZ?=
 =?utf-8?B?M21OV1Fzb0xvbUUycm16VUphZHgzNUdsZHRDczEzRTBlR2tOZk5aekpyV3Zx?=
 =?utf-8?B?Vm8yQ0ZJVS93Z0Zobk9xQ05ac3BhNWs5R3owUFlVSnpUMFJ3TXlFUkN0RkNq?=
 =?utf-8?B?N1VPSUExc2d3MC93OXd5NlNLTnFJaEJ6R1NJN0x6NWs1d3NwRUx5dTEvandE?=
 =?utf-8?B?UWRlUmVHV0NURWJuckpVWkxVMThOZFFqemR2U2d0Zk50TitacS9KS1FGeFgy?=
 =?utf-8?B?UEJNc2lwZ1ZSZHAzbTAzWm82enY2RE9HeXYvYmhVbVBCeXNrS2R6a2dSclpy?=
 =?utf-8?B?NVFLNkhiaFBudi90U3BtaitvZG8rUmQreklTMDdZM0ZZMVRhS3dXRHlDbElE?=
 =?utf-8?B?QUlVckI1VTlmZXk4eXRsdk8xUWFhekoxVHhXeFZMUVdUWjBMSlpSb1NORTc3?=
 =?utf-8?B?dkczTml2VTNUcmpyQnZPL2Z0NnN3V08ySlhXOWhpL1h0N3JWMEVSSVlMaGNL?=
 =?utf-8?B?NVBZZkVEQkNpcmlXQTFsRDhjTDJLUGFrUWxra2NEZGg4YlNxM2RmbjcxVmM1?=
 =?utf-8?B?QUtiNU1pS3gvR05temNuWnJ2dnpBLy9DNEZpVFIreTJNWUVVYkFhb3gvY3BP?=
 =?utf-8?B?WERhOEt6MEhTbE9sTXQ2dlFZaVVIU0ZiMmFOMEVSeTBuazZzamdtZTVsMDNV?=
 =?utf-8?B?a05VU2lpODJMeWZtZ2YxSmNNUjNZbHRCU3NicHgydWdxMTN1UTJuSTloQkVT?=
 =?utf-8?B?VkhaYUFNRnNOZy9JTGFRTHgrOG5hU2hsK29pelVOM2ZQWVFTdW5UOW53PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnpTUVhDTkpvV1cyemV4RkdzTFhjMHVEWW04SkdNaS83Wlhxc3VqejBaUDZq?=
 =?utf-8?B?amdnd0JEUWRYOTFTaW5xajJQMjhxWTJ3K2hHVExrWmdQS2dFRlZ2MUNDb3FN?=
 =?utf-8?B?Ym5ZelBGNmkyRXV4VmxBM1ZsSDl4Sml1Mlh6QkcxRU9QZldjYVVVREtJWXJM?=
 =?utf-8?B?b2JFTE9ONG5jdEZMOC9yQTZabDloaGsvb3hmc3dTZzFrbXArQXRzZGxMeUpm?=
 =?utf-8?B?RkFwc0J5ZFZvZjlRR2ljbUx3LzIySmdsbUdFQVN4VmpOaUppRmxWSUxTM1ly?=
 =?utf-8?B?ckMyOG9US0hVK3RkZmxIbG1xYVhKZEd3blZCbFFpVlF5bW53TFY5TXRWQmF1?=
 =?utf-8?B?R2pINmdHclIxaHZmZEUvalZYOG1sT09OY0ZUWVdOalN6UVhxbi95MFpzOW5W?=
 =?utf-8?B?d2N4MjJwcHQwRHFiOWdRaDZiT215ME5JcFRkMVorVUhwRnY0aWQreHJJd0do?=
 =?utf-8?B?RFlrR3E0aDZ5NTExUjB5bWg1SjZkUG9jdUU0cnVCNWtNU0Y1WkRHTlkvL3NJ?=
 =?utf-8?B?TW9IekRMWDRwMHFMQStRMlFuMTZTSDJPUCt5WnEwcVlWMEEvWmNQODhvejl0?=
 =?utf-8?B?YUJpV3RMT0d3cVY1anNpMDZBaXRSWER2ZGNXSE16UG9IT1dmU2hLL0RmUHAz?=
 =?utf-8?B?S1ZCZzNwNkdiSlhONHpNRVByNmUwZUVTc21kV2Q1KzUwWjk1L09uM2p2ZnNa?=
 =?utf-8?B?cDdISzk4dkRVNkVzUXR3SjB6dEszdGUvNy93Z25HeFlyMzVXZWhvbVNUbGt0?=
 =?utf-8?B?TS96SC9yQ21mTTAzNkNTMjFHOStURXM5SXM0eUZvZmJEYVhiYXRhNXB2WHB0?=
 =?utf-8?B?MlAyN2QwZ2wrUndhN3QwWjZFWlR6dlp4ZkZuTlh6c3FaSTBZeC92RTEwOTR3?=
 =?utf-8?B?dXJBS1ZWbldRbTRBZjEyZmI3aVZjMHJoV3pBTGM2OUJSVGpmV0tZbHd0NkQ4?=
 =?utf-8?B?QmlQYStWSW9ZNjJaazE2TVo5RUpmcmlCS3pZZ2ZRMmxoN0V1Z3crV09pL1ov?=
 =?utf-8?B?aWtEV1Y1SHlxMk16bjIxVDBtUkZNSGVwWTJsYXVPbVFnVjhrT3lWSVVyUGU0?=
 =?utf-8?B?VzYrdnNpYndBN2RRV3ROeGg2aG1XczFGR1JXOU9ET0dUWEs2V1Y3ejlGS1hQ?=
 =?utf-8?B?dGIrQkQvUk1vZ215SVU1N1NlMG1uVFAwSFpqbWFiNWpCVGlrZE95cFlWcnh0?=
 =?utf-8?B?TndGV1VnMG43MThKVHZtejc2RHAzWU5zRHphYlZla3RDK0ZoTTVUbVRKS3FG?=
 =?utf-8?B?ZDZqOXZvRHBucHNESEVDMFJBK1gvb0FOVzcwaThSVy91dXhuL2UxMXBWZGow?=
 =?utf-8?B?QVZPNlE3U3k3dE50V1RURjA2VDNmY1hOcG1IQUJ1WldqZ0Z5VWJadUVnalZL?=
 =?utf-8?B?eUpTRzBOc0lrSWt1dmR5ZEVQcGxESW9ITlNtODV4VW5PSG41T001QTdEMnVY?=
 =?utf-8?B?bkU4RGNZa3dKNERmYkFFNDdLVEQwbWxhUVZsVi9GNm1HRHhrWlZFWlBRN095?=
 =?utf-8?B?Q2tJY0VWS2dxVUdMRDhtSytkODRMQnAzc0dvN0kwb0ZKT01GNlhvTVZib003?=
 =?utf-8?B?UTlNN1YwMmhLckpxaDlROG9TaFkwMDFOOGNFR1JRT0NRTWVHTzV4bS9MN0g2?=
 =?utf-8?B?aHl1aDlaK0RTNnRLOEZFbFNqc1ptU3FHNmZINUZOS2pSNkNDWUJIbVFJUjho?=
 =?utf-8?B?cVZ3UGhDSE5kZ2V0Ym5sNDdmM0JmWGlEekMzTVBKd0QxWHhVQlNvbzBJWklY?=
 =?utf-8?B?cEdvYlZUeUlsT20wRDZOaC9wUDhMaGk1TW41VmV1UkxMRUdjZzFPQ3AxUllT?=
 =?utf-8?B?cC9CYm9Cd00xZVpFSFVML1l5ZU9HWk9JZHlmcGFxeUJCVStmdHE4cnJ6RUs3?=
 =?utf-8?B?MDJLcWZoWEpCOE1RcVArMWR2N2Q3WkVSYitOZlVTU0J2L0hKdHFuRXZZVTJK?=
 =?utf-8?B?amRmbEJmTVRWZWhCYjdwelZlRzFzaVByNFFnZ000N3hTVWx1RWVLclBVeGs5?=
 =?utf-8?B?dHBKZjNPWEpjYnRIMmV2VTJxNlhMRzAzZS9Fak9XZm9kSDVhVzFGUmhWU3dE?=
 =?utf-8?B?SW9iZ3g1aXBxYVdhbEI4dTlvMm5GUnlJRi8vMmFIVldqZWI0UUUyRUE3ZDB6?=
 =?utf-8?B?OTEwWUxiVHZNZlVubnY0ZHhqTlhRVU01T1JLdXlvcFNmaENSRjFxRzUzSUNY?=
 =?utf-8?B?RVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f8b6a2f-a0d6-421f-720a-08dcec811706
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2024 18:50:36.2590 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Aa0w9fRnPRATtICb4IMK8ISjy7oRPRCblTy0iSf6DyaMGmqBCmYg4b6IJwR/2qia5AlSehLqfoICokgMyIsL969Hb60G9abhRP4o9RfWTVg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4643
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728931845; x=1760467845;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=03mBcGlZCAOfh67WIbH5WkNAYHnOZdpEhfayHrsYReM=;
 b=O9RyJXwrLEq2ZHZojxap1azQ4P4PX7NjHKL1qRGwwIKsUu+vqBVXfFqW
 PsZoIKDKJ8xiDVxJhL07LzGQmRXCWaSjds1D6+EpPsTV1OynEPDUjDZmV
 +G4CZuXrvm1mpif1bprEPUtgwpIsv9pzIneCK1+IzIZpxoNXBUPt5tB3e
 DSFRb4j1Iu8PSQqfgKsV7hUZ86Iis4nAqv39Pqnuebl551iWffg3pwIc9
 ZBwznC3K2boKLrQxcqOIM6ylqys7XzXJS+oq+Ill0zn8rvKhkE+148Ens
 r7NDxhlMxjhQUfHxPAlmPlTUhraCZANOURK6zfQ1U6p9y6iLUzbbyvYH5
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O9RyJXwr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v4 3/8] ice: get rid of
 num_lan_msix field
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 David Laight <David.Laight@aculab.com>, intel-wired-lan@lists.osuosl.org,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jiri@resnulli.us, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/12/2024 8:13 AM, Simon Horman wrote:
> + David Laight
> 
> On Mon, Sep 30, 2024 at 02:03:57PM +0200, Michal Swiatkowski wrote:
>> Remove the field to allow having more queues than MSI-X on VSI. As
>> default the number will be the same, but if there won't be more MSI-X
>> available VSI can run with at least one MSI-X.
>>
>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> ---
>>  drivers/net/ethernet/intel/ice/ice.h         |  1 -
>>  drivers/net/ethernet/intel/ice/ice_base.c    | 10 +++-----
>>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  8 +++---
>>  drivers/net/ethernet/intel/ice/ice_irq.c     | 11 +++------
>>  drivers/net/ethernet/intel/ice/ice_lib.c     | 26 +++++++++++---------
>>  5 files changed, 27 insertions(+), 29 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>> index cf824d041d5a..1e23aec2634f 100644
>> --- a/drivers/net/ethernet/intel/ice/ice.h
>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>> @@ -622,7 +622,6 @@ struct ice_pf {
>>  	u16 max_pf_txqs;	/* Total Tx queues PF wide */
>>  	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
>>  	struct ice_pf_msix msix;
>> -	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
>>  	u16 num_lan_tx;		/* num LAN Tx queues setup */
>>  	u16 num_lan_rx;		/* num LAN Rx queues setup */
>>  	u16 next_vsi;		/* Next free slot in pf->vsi[] - 0-based! */
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> index 85a3b2326e7b..e5c56ec8bbda 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> @@ -3811,8 +3811,8 @@ ice_get_ts_info(struct net_device *dev, struct kernel_ethtool_ts_info *info)
>>   */
>>  static int ice_get_max_txq(struct ice_pf *pf)
>>  {
>> -	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
>> -		    (u16)pf->hw.func_caps.common_cap.num_txq);
>> +	return min_t(u16, num_online_cpus(),
>> +		     pf->hw.func_caps.common_cap.num_txq);
> 
> It is unclear why min_t() is used here or elsewhere in this patch
> instead of min() as it seems that all the entities being compared
> are unsigned. Are you concerned about overflowing u16? If so, perhaps
> clamp, or some error handling, is a better approach.
> 
> I am concerned that the casting that min_t() brings will hide
> any problems that may exist.
> 
Ya, I think min makes more sense. min_t was likely selected out of habit
or looking at other examples in the driver.
