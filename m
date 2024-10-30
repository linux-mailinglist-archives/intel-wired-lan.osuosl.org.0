Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9496C9B5CC0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2024 08:19:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19C946088D;
	Wed, 30 Oct 2024 07:19:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fkX2nWhnMZod; Wed, 30 Oct 2024 07:19:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3FC796088E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730272778;
	bh=JvcjP3ZWVWxS5x0bBUAw1O5KMbk38yZAUDxsnKfJX1Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8EwUcj/P6A87br2BthYEv8mB67XOwZFb9VWCgpP7XRBZOA32wI9yDsnG4dkTa5ASZ
	 YFEflqKXctgMgMzXZiLV98xvgBreqMeXEZnt+pe1ZCpwjruQS9v8Y16Vbm25CvyHoD
	 NxxDMQsrhOxADcoDL4hr9MIHWNFOeLLZIFb4gBkb+07tD0EidyX5U/og0u2Z8NFT9A
	 5x7c2qGfu6IaNHfcIs6nf0t/HLG5MN4NlHHakEEWot2q0bxk9njEkR5FCHUHlciRVz
	 lkWi+JN4q/ZlpPnYDHCVRuLyEyLulgcjnNi8LNGrZuRaVfRJHy002AkLSr3biDXN76
	 I7n35uaHnd/WQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3FC796088E;
	Wed, 30 Oct 2024 07:19:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B90695E4F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 07:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9916F4056D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 07:19:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hLSYuIrnN7hU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2024 07:19:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3B60B4057E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B60B4057E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3B60B4057E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 07:19:34 +0000 (UTC)
X-CSE-ConnectionGUID: lmC38RMkTgqMBQs+PBFkPQ==
X-CSE-MsgGUID: ZPyuJS56SZyTJxVo9k/LSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40490572"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40490572"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 00:19:34 -0700
X-CSE-ConnectionGUID: 590tp578RJK+CDxL6ekVLA==
X-CSE-MsgGUID: rXyc6K//RFWXKqXzF8493w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="82134427"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2024 00:19:34 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 30 Oct 2024 00:19:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 30 Oct 2024 00:19:33 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 30 Oct 2024 00:19:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ERNsoV/WFDaw7DYrsBMt/QlfTqQLy/N8QsnVZcTZUnqkOPADw8Ia6ZO5JF59teuNmGZecqzcFBXq67MgQ2EgaAkcJqT9uc9tF+2TCCru0he/K+VVdeU0/YFbZ4vublw9Blz/oAFpjxVrm6q+rNGR02BBytQWh3//4r/DjUH9pmDT6kg2Mis9+OnWMyo97coqSLZgclDdzbMwkTCY6tAg2HD/D/XWWDZkTasNhJwqbQZOa0tEKMRAjxE1ffzADIrnsttHm9vnrBH6kJM3GADodiIKyTjrvpPaiyHWmuS4Drfyu7HB6Q9K+yy3oeCa1KjsxkPT19Ew5eiqkV+lMNn35g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JvcjP3ZWVWxS5x0bBUAw1O5KMbk38yZAUDxsnKfJX1Q=;
 b=KpsSih6wtIhDIy0Si9OYfhCjIYQuhOKtS/cy0qRROO5NhYvt1SDjuEG4Azpmr2prm6D9VazdNuJDJ1cjVH+rldkBkiS0xUEp1miwptiiPaB3E5pX3xPQY3WDo0ZTFyBuWuK9XxfCGK7IbftyAihfX3eCJ4bR7neG+BJBpkQ+m1WafLU4gQ6sWnpXRdTmXYX1QBPoOicvLkx8cTCeoI7TKaP8cyWK0FnCk8zOyACWaUru+a3Pj3c8fkR8ZpssQvx8FOMjyaOjzIchVKCrXDYbCNZAH4sXhtf0rsLuX49GsdQAB46lycd+m+l/cTO5klrhHLChr3hSauxF0a+V7YfRYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CO1PR11MB5123.namprd11.prod.outlook.com (2603:10b6:303:94::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Wed, 30 Oct
 2024 07:19:26 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 07:19:26 +0000
Message-ID: <38770d64-1a9f-4f97-8e10-95dc16e1d9b9@intel.com>
Date: Wed, 30 Oct 2024 08:19:20 +0100
User-Agent: Mozilla Thunderbird
To: R Sundar <prosunofficial@gmail.com>
References: <20241027141907.503946-1-prosunofficial@gmail.com>
 <ca4f7990-16c4-42ef-b0ae-12e64a100f5e@intel.com>
 <e9a89d87-d1a7-44cb-aab5-07a61d578c3c@gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <e9a89d87-d1a7-44cb-aab5-07a61d578c3c@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA2P291CA0031.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::12) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CO1PR11MB5123:EE_
X-MS-Office365-Filtering-Correlation-Id: 7cd67927-c7e9-4894-7aee-08dcf8b32f72
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aitUc3p3Q3ErSjZzbTg2OGlCNElzWWpidnh5Z29aOUYwR2hyRnRHdjk4Q3o4?=
 =?utf-8?B?ZWdCQ3dQQ0NjM21rb1gxWFA5dVhlelpiV29oSE0wcHc5SXZpc245NkJjTWpZ?=
 =?utf-8?B?cWRXK0RMRE9Fa0hpSi9kRURwaC9CY0pYRGVSREsvMWtFcFp2NDlrN0pOdzAw?=
 =?utf-8?B?U0IrWm5lMWxtQTgyL0Z5bG10cTJDbnRHdmFiZkQ5NDdjZ29pQWdkVWtsK0N6?=
 =?utf-8?B?L1hDRUN0WW9zK3I2ZHg4MStkS0ZIYm9uUjFTUUx5YzNtcTlKZXZ4dGhxMkRQ?=
 =?utf-8?B?SlV5bnQycG5USWxEOXFNVDBhQW9ocWpvbytCaUdtVHFaY2ovMFhTZ1hLdUI0?=
 =?utf-8?B?M1JrNUhYMnVHYVJOc2lRZTVoMHkrMmVLdnY4T2hqZ2dUKzRtbFF3bWJLS3ZI?=
 =?utf-8?B?TSthd0hTRkhZQVNQUndkYVoyMm5oU3NIOXFTYkU0NXg3SnVRaXBTSW9MWU5i?=
 =?utf-8?B?T2psTFczbk9HV3FVOXRjbHdaV3hwVnI2VFJaaWQzbGREL0NBQUhCK0RodWg3?=
 =?utf-8?B?Q0FmSXRldnNzZE16Q2U4cnJRUHVPNGpNVkMveGZyMFg5L0N1YWhvK1Y0M3JT?=
 =?utf-8?B?UkxhcVpPQktCWDBPZk5vakxwYndHRCtrR1BzK3QyVFZLd29hUkF6ZkNZVVVs?=
 =?utf-8?B?QTVIYmloS2ViditwU0pwSDF1bURXU2NudDlBRkM5UnpGSm1KbDBjUzdnRWhh?=
 =?utf-8?B?UVpDc080M1VKSlFTVWpVcE9uK0RBM3pjNlpxWVRjc1l1YjlWMVZsRnliblQr?=
 =?utf-8?B?NW1lSXNFMDRmTTJPKzh0WlhVQnQzNW5Xd2RlOUtndk1iZFhXNTJEMFAvdWhR?=
 =?utf-8?B?K3JLV1d3TWN4dDVKRC96cCtCLzNyNHVEZ2IvVU9NSlR5M1ArYUZlM2ZRdGtn?=
 =?utf-8?B?bHJzMm5SQXhnUVBrKzgrT3FDV2FXYkV0OEJDZGJZcnllaGZHdFVPdlIrQ0x4?=
 =?utf-8?B?amNicVdnNDFCQ3NTbUN2MUpMZ1NZMFpuM3ZDYWZhaWFmWkZldUNOb0RoNzFB?=
 =?utf-8?B?K1NaRTBQWG5EOG8vd096eVczUDRNNE4rUnh1VGU0YVVQcENXR3U4MGlvaTRl?=
 =?utf-8?B?V2lEZFUybkQ3Z2lpUEMxeGlXSzVkNzQ1TjZSODRUQjNrOFhaUXk1a2ptWWp2?=
 =?utf-8?B?Y1VCV1pjeFVxbXRRZGxNdFFYVWVMVlg3TDEyU05ianNtMlNxOFYwWmgwVTAr?=
 =?utf-8?B?TE01UndnbWZPVXFrb3Q4ck5FWkV4Z1lWeG5LQ2lRSkw5dkwxbGdYdkFaMmJv?=
 =?utf-8?B?SG1XRUxHVlREL0IvM3pTV1g5YkJoRG9TdWlmQ2NaV2tvU0NJeVRyeTBMVXpt?=
 =?utf-8?B?dGI4eWpDN0ZqcjNWU2tMU2tTa1h4eUQ1NDJXa1JwdVExZXZ5MGZkb0FuZUox?=
 =?utf-8?B?SnpMSzcxYkZDb2FKUWFSNUsxbzYzRE93aC9TV1NXdElEVU10ZU1OMTJGNG95?=
 =?utf-8?B?NG1PNkwyNjM0ZWtqUWFvK2JvK1V0ai94YkZTcGRTTFI1bUgwaUdxazRLV3Bj?=
 =?utf-8?B?clBzT1hXdzZ1VHZ1SUV4Ti94ejBwb05COWtaR3dsVU5UYUNsZG1jcStsZmpE?=
 =?utf-8?B?REpyZ2hRSkliT3lSZEZ1cmlSaHNiY3ZKQWVwTlNwbTFJN25zdVgvbHlFN2Qr?=
 =?utf-8?B?R0hkSmQ5aGdsa3NsUUE2Y0lJekpJWXFwY2hNdlBQaW4wMmx4VUNmTVQzVjRH?=
 =?utf-8?B?RXFnYjMwSDFjbU55UThHMW4yWXRLK1diWmtxT3NaRU9QdEZla08vUHozTnFD?=
 =?utf-8?Q?66k3Yekx7DybGJQIZ9SYoDpEHcTtjF2Vqg0Oofo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0Q2MGFZQWFiblIzM2FLZXBJQTdrL0JiSVhocUVyOTlxVHBDQkE5TlUvZHlu?=
 =?utf-8?B?RWN1a0gwbk5JVitOMG9mUG50OG9vK2RPUDRnd1hNeDVzTExQZGNxUzlwM0Fy?=
 =?utf-8?B?cWszVm9YZzBmTWhmcVpzQ0IyOGUweTlxSXVaSHAvejZRZFNFQ2xYcUdVZ1RG?=
 =?utf-8?B?OUNnMEhyVUZnVmQ5ancwd0JPdmxJbWlTZUEvS2dvL0NweWdMcmpTSnZzUkRV?=
 =?utf-8?B?VkdRZUh4SE5NckdlRHE0MElNNHJSajFEc0xabkdEcERsRzdUWm1QK3pDUzFB?=
 =?utf-8?B?RDd2UGxzcVhlSS9vaEVadXZCZWRQcG10WFdNaHBwUXpRN3BDK0xNNitZSHR0?=
 =?utf-8?B?a0hWbW1MZFYzYTQya3liTTFVTjdxSDg3T1dWeXB1Rnd1Q1NnaGw3eXpBczc4?=
 =?utf-8?B?ZFF6NWNkZ3BFM1hhR1pldEg3VEJ4ZnpKMVN0M1FxSm1BU3lLTVdscnpJd05Y?=
 =?utf-8?B?bXp0TmIydWJMMFVyQ1FWanp4NFVtNmthZXVuWDlxeW5YQm9zTlpldUFzQTZr?=
 =?utf-8?B?L3JZU3RaUjQvUTZXdWxiL2lVT0VndHZYQzh3K2ZnS3VLdnBDcDdaNk1DVUJa?=
 =?utf-8?B?MVp3QklSaHFDZ0lDRXJFTUxNUlFRL2xBemh6c0llUGpuSzdQbWRDdkQ4WDZH?=
 =?utf-8?B?M1M3bTAzKytnQUFKYzVxcStGd3JlZkFOU2pRL2dtQlA0VXBNSFZNc1lOOWdS?=
 =?utf-8?B?MmZ3dFBZK1pmUEdQTzZpY0FDU0tnODJTV3VISktIQUlPaFVLbUhnL3NMdmhu?=
 =?utf-8?B?RXZrZS9lTmtuYWFhaVJZWUxmd0hSM3FuOUgxZzZyNUtrb3RleTA0NzhCa3dJ?=
 =?utf-8?B?K3B1R1JhblU0dkgxQ2dFdDIxbGd2elNTTmdBanYybkNDMFBVV3pudUVtUHRz?=
 =?utf-8?B?RXFHUnVrdWlpMXNvaVh4dW9iSHhzTG9GeGY1c3N1V0cwOWtSTWdhcGNHTnlM?=
 =?utf-8?B?WVBvQmJzYXFZN0hBVEZFRDJ3VFU4OXllSXpEbDA1cTJsQUhRZnRuRkFqaC81?=
 =?utf-8?B?anRjWURZT2x4aVJpZmxOSFpTMXlycVkyUlMzMUJFb3FMVng2Snh0T0YzQmhJ?=
 =?utf-8?B?eGNKVkhWYUIvWHMyRjE1Vk05YnZoR2RkZkFzY1EzalRwUHZLYWhOWVdaUlYz?=
 =?utf-8?B?UU5QN0o4aTJFYmx2Ym1GNE5MQjdhT3I5VkVoSERvd0YzZ1IycThPcktwTStw?=
 =?utf-8?B?aUFaaDZoZHNZVUNWZGtzSEk5WUlvdkE1ZzBndzdGbWk4MTFQZDBaNW5ka1RG?=
 =?utf-8?B?SHpzQUs3dHh1cEhTTnZaYlpqblVmWHg0Z2hGWjdwbStURkxmU05LNEgwa2hj?=
 =?utf-8?B?c01CbS8wT09vUUVLYkdpaExwa2J0QzEzcGFHZjlaVDlHcExSTHJDTGxiVHRV?=
 =?utf-8?B?QURUdllVRWh0dlF2YlV1K2ZJSnRZLzY0M2JCZ0N4MTV5ZGk3ZGM5NnZaSHp0?=
 =?utf-8?B?c3FSZkRlUUtRTHk4ckRhdStYUWlGYmJnVTY0QUZ6OGxlODFPMUdlL3lCUkFT?=
 =?utf-8?B?dmhuYnB0ZENFajNmb0kvMFpCMWdUem41bjR2K0dQZlA2aWE3WVFNT0VGOTdN?=
 =?utf-8?B?OEtVcHdQTVR6QjZJa2R1S0k3VEUzQzlRc3ZwamNwaU91SG8rQnNyaXNENzQ0?=
 =?utf-8?B?NWg4SjZvN2xxcFFpY2RseW8xNUxkYytOVEcvOEY3REdJVlV4ZG9uTGxVK3p2?=
 =?utf-8?B?azZvbzJnbzlnZFZIKy9XamxYaUhEVHAxTmtYdHZsK1pJbVFkRFBHTE1GMnBQ?=
 =?utf-8?B?U1QyT0RWQWFWSjE5NVVaeklPUnRiMkdFdzBIdm5GM1RYQjVSZVE0ZzlEVnk3?=
 =?utf-8?B?aG0rZGVuTDFXZVlERTVvSEQ1UWtWWCt1YVArZDVoaXQvY3R3MDl2cHVaU2lj?=
 =?utf-8?B?RlZ6ZUx4T0dhUHNrZ1lWQTcxQWV1MGhQcTE4dk11VGMvUGl1cWsyL2FQc0Iy?=
 =?utf-8?B?UHVIbVlPdkRGYlBUbHM1UEtWNENzRnowWTY3aDRubTJCOEJZMTZqRERmcDM4?=
 =?utf-8?B?RGQwVFdyN0xodGpTSlBqTjZUTWxETjdLbk11cXovSkpxNkVvQ3hhWE1TUGdi?=
 =?utf-8?B?ZFVTNWwyeFN4SGFGZDlWNjZPRU9uTjlQcWdwZzNPamt5cmZReGxnbW9YZkJL?=
 =?utf-8?B?UE04Umc0ejU5YlNEdHZVdlVSS0xvYWZxZ0FUWGZFQm1rS3cvWElCT1FDTWJ0?=
 =?utf-8?B?M0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cd67927-c7e9-4894-7aee-08dcf8b32f72
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2024 07:19:25.9907 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rsCR/+pRvCj0jJi6jN7e3fRFnJ+ip3zipDv1FZMilyG4lwCC55Igcu170G9phJKIRWqM204CfGcXwN2X/zJsyt98iLktTUYfaAebCvcbPs4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5123
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730272776; x=1761808776;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ca04b+LpmgcRQTCnkr2mnGpLk4rxUsRSQAqXLvTV+Ys=;
 b=GSTvTX2vZb5rVM5SWWt5bhL0OXG4bO57kuNp9dTyqXA/IVvwHzS4AVDH
 VHDxYWh4Tk4yvnH5pqxadRxK5kx0U867XInmcUcr7amJ7izh7F6mzPz1l
 peif2gD1t5dsVhogVOxBwE/cuMJsLffOA/YwUhRGhJ/zU+gp58XVdb187
 Qwl2Cbo5kvoFANmjYyfL/5BuUzZVnoPqZiHDi5Dp9Wamp0sI9O8MmmbFR
 sFiznJk4LtKAqE+9blRdi53Komi6HuVadn0PrPsxYd7s/cDE5sJaMcalh
 MMGq1uB9SDXBxKDvia8YX09ONgUhb3GwDWgF7u9AoVFG/S2oC+NG/fivw
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GSTvTX2v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-next] ice: use string choice
 helpers
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 arkadiusz.kubalewski@intel.com, Julia Lawall <julia.lawall@inria.fr>,
 Andrew Lunn <andrew+netdev@lunn.ch>, karol.kolacinski@intel.com,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/29/24 17:37, R Sundar wrote:
> On 28/10/24 15:24, Przemek Kitszel wrote:
>> On 10/27/24 15:19, R Sundar wrote:
>>> Use string choice helpers for better readability.

>>>             bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
>>
>> perhaps locked/unlocked could be added into string_choices.h
>>
> 
> Sure, Can I add locked/unlocked changes in linux-next repository and use 
> suggested-by Tag?

sure, that's way to go
but please first check if there are any other users (despite this
driver)

> 
> 
>>> @@ -471,7 +471,7 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
>>>       /* Log the current clock configuration */
>>>       ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, 
>>> clk_src %s, clk_freq %s, PLL %s\n",
>>> -          dw24.ts_pll_enable ? "enabled" : "disabled",
>>> +          str_enabled_disabled(dw24.ts_pll_enable),
>>>             ice_clk_src_str(dw24.time_ref_sel),
>>>             ice_clk_freq_str(dw9.time_ref_freq_sel),
>>>             bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
>>> @@ -548,7 +548,7 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
>>>       /* Log the current clock configuration */
>>>       ice_debug(hw, ICE_DBG_PTP, "Current CGU configuration -- %s, 
>>> clk_src %s, clk_freq %s, PLL %s\n",
>>> -          dw24.ts_pll_enable ? "enabled" : "disabled",
>>> +          str_enabled_disabled(dw24.ts_pll_enable),
>>>             ice_clk_src_str(dw23.time_ref_sel),
>>>             ice_clk_freq_str(dw9.time_ref_freq_sel),
>>>             ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
>>> @@ -653,7 +653,7 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
>>>       /* Log the current clock configuration */
>>>       ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, 
>>> clk_src %s, clk_freq %s, PLL %s\n",
>>> -          dw24.ts_pll_enable ? "enabled" : "disabled",
>>> +          str_enabled_disabled(dw24.ts_pll_enable),
>>>             ice_clk_src_str(dw23.time_ref_sel),
>>>             ice_clk_freq_str(dw9.time_ref_freq_sel),
>>>             ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
>>
> 

