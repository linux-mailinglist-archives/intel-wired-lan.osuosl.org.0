Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A08A959F48
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 16:06:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2660C4056B;
	Wed, 21 Aug 2024 14:06:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FOE4QGoEn3Dy; Wed, 21 Aug 2024 14:06:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B42254025D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724249178;
	bh=h7C+HxQjv/dBCVVUdSUBp8TRBPT4tKGY6Y1hflvQv4k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ilAIvoCg0CEpog36A4sQXjTEqZHQBhUhqCiVEkiTzt9lmWIUHml4/p2ieHOLIOnHN
	 MdN1317E1293rahPmsob2lzBwDYnwG2plFXSfYbqOxP/ZjJ9Q1OEBKNnml0eMBiAbK
	 stA+7pjenboAOniTrNPMZPrHLblxAWz2lzZxxyFz6fc9RePY9Zfpj2aa/MgIUJk0xp
	 aOyjl0UJ9EIsJgFkvLeeYQY3q5bpxtbK2omCh5t2kgq2rh3CwHoJnMw5XrG8QViZNm
	 JzFxEnc9cttX3tMaJTeVB52v27DS3AKm40d3gw9VlE9qQMt3U3tDQjvdC992nujJ5C
	 blBzA1V711SZA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B42254025D;
	Wed, 21 Aug 2024 14:06:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6472F1BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:06:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 50F7E60633
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:06:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Xn5L_lmikdy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 14:06:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D30FE60622
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D30FE60622
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D30FE60622
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:06:15 +0000 (UTC)
X-CSE-ConnectionGUID: vx5e89/iQYKEkG0bL+IdXQ==
X-CSE-MsgGUID: +Y/Km86VToyGPd64F+yE/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="40123190"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="40123190"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 07:06:15 -0700
X-CSE-ConnectionGUID: jS/mH/K6QVKqF/W5X9qqgw==
X-CSE-MsgGUID: 9i2DGrmtQPmRwJUBXYvVxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="60758145"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 07:06:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 07:06:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 07:06:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 07:06:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 07:06:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xt7kJivGnJFjM1SlwsD1dh0z7IFGAXyXukHDLUIreUmS8nflgvuKLFrAByrCKosahbz7wsvufYgLQoFSHyhzjsro2w7LnhsQzz/e6YQ+fgm79PVSs/xEo4L3MbitusjLYHtOSLsGNeeidkaqUzvWUzGS8k9SjLauPkTukv77SupxiFx9tVdir6yC7Vve7DSshFrLGZ6emyUAm+5DPf50H08nM/dNpmc8qRkBIS5XFTDBQlyW+ZrVDlG4tZWCirOkZB44YqeDqCDPiKEB7D0RA0tp3CfKGPMd++VRobRLJvVqjkgt2AIar8ngR8sGrhD8n56FLb+mbC9VnCizLb7Tzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h7C+HxQjv/dBCVVUdSUBp8TRBPT4tKGY6Y1hflvQv4k=;
 b=qDOh3/a5iXyiRnfBe7fiiiz8szFqM4XBxxhLyBgkQxsIdEy5vBEcNlhypU0LqjrdTSg5w4OFMpNOxZ1pocgRH8Q5/50ZespxKqG7DnJAFUJGH08Pb+OtXpahCY6hoBnZAg+gv/7ADK3lXMGwHRv7e3hamnbTDgn7mLqUxj8y/wVi72RQ9Ml+DfZZhh7OHRNNQEKBesDd/2QffVW/G5N7q6mrh1Dt1AMpDC5r/NObE2EoWVWKVsr+pU7ocisxQ2hBAq4b8H2jk5HNMB4z3BzRHO3wJgz88YgeD3tER3Yp6xck63lHr8tanmZyWzm7r5YhWraeedflE86tguPdvS9FGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA1PR11MB7811.namprd11.prod.outlook.com (2603:10b6:208:3f9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Wed, 21 Aug
 2024 14:06:09 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7875.019; Wed, 21 Aug 2024
 14:06:09 +0000
Message-ID: <7e832ea6-2036-4112-9b63-20f4475e7f8d@intel.com>
Date: Wed, 21 Aug 2024 16:06:04 +0200
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-6-wojciech.drewek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240821121539.374343-6-wojciech.drewek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0056.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:21::7) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA1PR11MB7811:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f81efaa-5188-457c-bbc4-08dcc1ea6817
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VFNoa0VZRmlndkkvQmUycEFxb3QyRjVlbis1L2ZBOC9ER211QkNUZGYwRDlV?=
 =?utf-8?B?OCsyMmg0RkJDVStGZVdBRFdnSzl2YnFDaEViRldBZkdTQlJJNmhKMFJub1Fa?=
 =?utf-8?B?NFNmb29YR3V6SmF2QWdFRnNlL0RzanAzc25MaElrK00zdjVralhRNTRRbVNk?=
 =?utf-8?B?WmlOMjRJQ1JncUVzRzdCVm5QNExOK0tRMUMzcGFJcXdzK3NjQnRIM09ucUhJ?=
 =?utf-8?B?Mk5hRTlwVmpXQk5VYnlucHBYSEVMU1FQeHhtaFF0YmhUMnptOUEweEp6Mjd3?=
 =?utf-8?B?RUdicWZUajY5K0N3c0k5bGVFVTk3U1VIOWRxaGNlMmF5NTUzSWZ6dE8xd2Z4?=
 =?utf-8?B?SVdTRUFENjNQYlV5SWd5K1RBcStWYVVIUGtON2xYTS9FK1JoVjBIcEZudk50?=
 =?utf-8?B?d0tpSGsxZGFMZkZnUm02MmMzeEhNV3Q0WmVKKzBZSldRSmVEeWJ2SWFzKy9T?=
 =?utf-8?B?b2xLS0diN0RFZFhwWlAwWlpQNE5aaDhFdUZjTmhVSmEvYVBVREU5MUR0QUNT?=
 =?utf-8?B?NFJNVmZ0ZDdLV3kzeFhobElJWnBtNktWNjBGdjljSnNWUUVRbXdwYjlmN3BQ?=
 =?utf-8?B?ck9nb1k3U24zTmNTK2FDWDR6QmlWaGxNUm8yV1E0aWc3ZWNHa20zd1VvQTA4?=
 =?utf-8?B?WDljd3ltRHM3V0JsSGR0WFVTcEZ1WllLR1oxYldsVnYrdzNSMWRTc0M1S2tG?=
 =?utf-8?B?T2FhQmtEb1ZWQ3RZQ1VMM0VESXMxRnc5VExRMU9YQTQzL3Q1NHp2UnhRZnZN?=
 =?utf-8?B?L3lYUk1jSUkwUldIamNQNTdtSmYveGhsRUIyS1haY0E3RC9Md1hpMFFsL0wx?=
 =?utf-8?B?OGR0cmdYUzI3cFNEUExneWc3azNWREhwbU92NTg5QkROZlBtM1ZFS3pHdHBj?=
 =?utf-8?B?TjNORFlRM3dqZUl2MUtjUWhPZ004THdwT2t6YTFsOGExZ3lHTTRqaENxRzBX?=
 =?utf-8?B?SWQwL1p1WUpLM3VPeEFudUgvTlU2cXdyN2c1aDhqaFY0VFpkemt6RGVvZEJD?=
 =?utf-8?B?Z2xvQlRFMmVhSGJxYkNROFAxaGdwYmhOUnRkZXM5MzhiQUgwbTlLK2lIK2da?=
 =?utf-8?B?MUwzaUlKVGpVYnhDemxuY0Q3Z3JKbGpSVlNBelRES05SOTE3emNFYWMrZ3Jk?=
 =?utf-8?B?L3pPbTBkUkNPMDRFdE5XRjIwc3JzcFVBRTFBdjFkYng3Y0pSRkZHaEVvQ3ZD?=
 =?utf-8?B?QWRJTGhhdVFxR1UrNFlRMnFvcENmTUwzV2o5U3ZDc2tzMEhEVWVFOGdva0h1?=
 =?utf-8?B?YmhsRklXY1dOdDBqOHRlSkk5SzRqS1NuQnd5N1R0S0ZhbGdKejUxRlR5MzIz?=
 =?utf-8?B?MEVha1dBN3FEK3JJRE9EekV1QXVIUVJDcHVQMUNmcUFuclhjSFlCRW9RQ3VT?=
 =?utf-8?B?MnJUS0Rma3diMkFNOHhuSmV3NFpuQnk4L3htZCtDeU9pL1VHaUkzdjJ6dzEz?=
 =?utf-8?B?UUtYbzVBakV1eDdNdnpvOTB2NDVtS1BJRDUxaC9qdVlnUWZZRTllY1JoSnpQ?=
 =?utf-8?B?Tk56VThiMHlscEp3L0NJNlk2ZTI0YytZVEoxeEFvMkZtR1ZHcG9LSjdtdGZs?=
 =?utf-8?B?T0pZUjhLeTc1MGZuYmE0RGdrU1l4c0FkK3NsV1BmdVY1aENkMU1NNXZ5Mm9X?=
 =?utf-8?B?QkZ3TjEyVUF6WXBoVjlqT0Q3eHovcG56K2phMzV4anF2M0pjMFVNUlJZWnNR?=
 =?utf-8?B?WkwvdlRQVnlMTUVTRXhnVnZsMVdsQ0V6NVlNclRqRDA4UHdCRzJPenlmZ2RV?=
 =?utf-8?B?aWhOQ25xZ3BGVUZRYjQyd2hZWFB3dnBhaGVFaW96RXJOWFF2dmVvTjJlbkNq?=
 =?utf-8?B?Mk5lb3g5Nkxsb3ZJQ3Jpdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVdxQ1ZxN3FGV1l5Z1k4T3lLS2RNQzRFcXRCY05maWVjU0ZVd2hXWUJzWXcw?=
 =?utf-8?B?bFRkQlZEajFlZThFUmM4WFZYMDJDQmRTU0VMc2tXQW9LNm1KdWpvWWRaeThD?=
 =?utf-8?B?Z2F3d1ArUHIvdUlYODVKdVlXZFFycXVuOU51NTFzckZaeVFrS0tFN3RWckV3?=
 =?utf-8?B?VG9LeS9UNThockhYeGpleFJLbkFEVHlOem5WNWs5RkZXdHZ5K20rMjdBa3hB?=
 =?utf-8?B?cEZsVUpmLzlnT2I2UHVZbGJXVUpHdEZVOE4wVXBpeGpWOUV5RUNkYmI4WEZ4?=
 =?utf-8?B?VzJML2M4SjQzbXRXK1RJUnJyREtLa0tsdHZER1NaTUtDSnlhOENFUmNHRTBX?=
 =?utf-8?B?YUptUWw4b08yUldEZWJpdm1mL1ZjWTVDUEpLWm1VSHZ0WSttWU5mU1dTYkRs?=
 =?utf-8?B?VzBvSXFXNnIwYWg3YmhpYzhYRi83aG5kT3A0MnVPMFN4aXZXeDVHaUdtQ0Zj?=
 =?utf-8?B?WUNqWExwa0xMQ1FveEFuSmw1b3NrbmlnOGpZQjd2TzE5K2pnWjZ4SzY4ZXZW?=
 =?utf-8?B?TDNFc0l2Zk1lSjFzcGZra3Jzb1REczZ6anFZNkZlNGdiVjdnVTQzWkxqaVBy?=
 =?utf-8?B?WWk2VU5RbitnZzV1TzA3b0tXY2RJZTU2R3JMZFpWam41SEpYZFBzd2pYUUQz?=
 =?utf-8?B?Ylpia0pwMTdyOTd5RG5uL2VEK2VKVFJjbDFFU20xaWJ5OC82aC9iRUFmQnMw?=
 =?utf-8?B?c2tpUGp4Qk1CcTJGMmtQeHRPRU41ZGlFWFl6YllpVlFLSWdBNUdoRGVONlBQ?=
 =?utf-8?B?VTI3aytWblhDMitxZEtpTW5CV1NOYTl0eCtiQjEvZzhCd3RxMkU0aUUxeHhi?=
 =?utf-8?B?Tm9HM1NidFd2eEZSR0NWZURVT2g4NklNckFQTS9WbEZZNlJIdDVhc1IvNzhP?=
 =?utf-8?B?QUJmZHVVcnF1eUpDYU13S1R2VjArYnY1WHIxam1aNyt0SmlKRDRVZGlLWGFO?=
 =?utf-8?B?N1dWVEhUczBjbDkvS1JITDhFWk9PSURYR25sRGxBOHlpcGhBKzgvRmgzNUU1?=
 =?utf-8?B?US9mbWJBbkNDS1M5ek5qQ0xodE5UNCtJTmRCaXNjVCs5bEppY3c1NW1jcXJ6?=
 =?utf-8?B?OUNLOEMyd2lnRlU3clphVitUZlZnYmROYlQ2T25SRFcxYkJ5VzFtV2Z3SGZu?=
 =?utf-8?B?ampySWxXbitxL3o2Mk9vOHdyOGlZT2JsMjZOelNJU2o4bWQ0WHdSNTZHTkxw?=
 =?utf-8?B?ZERJN2RXV3BCbTBJMUtNUmVRNzZmOXNHYjJKS002K09YT1M5VW42UUk3ZlJH?=
 =?utf-8?B?S05nYnlOTDhtRUdKUU4wdmdiSWMwNHIyNUd4enVmcEVndjZYeVlpTWtpVkZK?=
 =?utf-8?B?Z2dXZTlOMEJZVlR2MDkrNVRxUjRqQTg4S0s3ZDZnVnYxYXFRWTUzUklkWHFp?=
 =?utf-8?B?SXdRSnhHNXlBeUN4NkZjTjhHTzdQSk45eWhTTko0K1JGQ0wxUWxrZWdiMkk3?=
 =?utf-8?B?NHVKY3VFcGE1MFVFbGxxVUF6S2VXYXVEVldMQ043MWl4cGV4eEltQ3AvaWRS?=
 =?utf-8?B?MUJBRzMyMXUyMnc4bGVJV1VSeHpLQTBOWTZKSjJ6bCtKdU92QzJ6MmlGVExq?=
 =?utf-8?B?eU93NFZ1WWVXUHNHWkVjS1hEVGZOTXJQTTlOdTdZSVl3TFA5Q0gzV3VlUnBB?=
 =?utf-8?B?WFlDZnJkWjVYNzBFZGtDSEpsTmIvanI2YnFTKzUyVjY0TGNZYStaSGQxWUw1?=
 =?utf-8?B?TG1vSUZwMFQvQjBkQVhMeGcxTHNUT1Z0NWdxekJnWEs5UFZxVktLTktHWDVr?=
 =?utf-8?B?bVY2LzRlbGNOcXMzSWlJMnlVbFphRG8ybkJjZjd0RXcwMGl6ZzZ3MWhxYW5H?=
 =?utf-8?B?QkZUcEJhcklJU3JxM3QyVWE1OG5jZEV6Qm1xYkpmNmZuR0NFSXU0V2hsVFhV?=
 =?utf-8?B?cllnQU9QNGhJZk8wajc3SFpIVFNvQjNEVkVLWEFzZTgyc2hLRk5YbTcxSW8w?=
 =?utf-8?B?dEZ2TWQ1dmNYU3duUkFLb1UvdVc1RjFtZ3FxNjdMN3BBUExxRExFK1ZnN0x6?=
 =?utf-8?B?SkwvbkpzdmpiZWRaRXlBWVQwV3BCRHRIVFZ2QjhXY2ZTamJJSXVBYzIwZkY0?=
 =?utf-8?B?SnF5ZnV4NFZnMGl0alhOYkpwdjNhT25FYUlBRW1mSkwvR0VwV21TQ0Jod1dF?=
 =?utf-8?B?SkpYQm1yaXJmQ2luZWp1MzljTDVBVUpkSTBrM3kwaThFMktDZkFLVXk1UFZr?=
 =?utf-8?B?a2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f81efaa-5188-457c-bbc4-08dcc1ea6817
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 14:06:09.4557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LnOkgOPnyK7uR7SWPvDZu/k/YU04W/iorSaryIoh4yKFgY+EJ90e/0aIJt3sI5NJq9q0oJo3/q/4JAlW/ZsweNNUD9uLO4casKsdgKtd2rw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7811
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724249176; x=1755785176;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lAXQ8yp2m2iUAvuRmEzuHm4PpKk1ZGzypvwcXokMIec=;
 b=f32b/2zwFFBR4F4/rJSVCiq2QjBWjy/MudksgQGS/aAgvD3Y5Qd9mGEC
 gmVSn2Pk+Se/8CgCHmpTCsT7esQ0Wgs+PN6vQVctt/5MfrYKnG7UeHFuG
 MHy7WAUlpiQoNERkwggWgRSFCy0q4nBMWYCEwGWIHGnbEhNjk9jBuGGII
 qPYbB1V78I3xjaBSua1LHJDPOHcHFQ6T6AVKRETduDBzhblyr15zxkUTE
 mjKrw+aXSpX0P4+WR56Oj1rpz51qRD00QbQxJQuM+DyHxPFcsY3esKmsz
 73lnVT5i73Z35vujnNZAZhkf6GtBJsHEZbz+NBZH7eVZTygPFCZ35Ll1z
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f32b/2zw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 05/14] iavf: negotiate
 PTP capabilities
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Wed, 21 Aug 2024 14:15:30 +0200

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Add a new extended capabilities negotiation to exchange information from
> the PF about what PTP capabilities are supported by this VF. This
> requires sending a VIRTCHNL_OP_1588_PTP_GET_CAPS message, and waiting
> for the response from the PF. Handle this early on during the VF
> initialization.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        | 17 ++++-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 60 ++++++++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_ptp.h    |  9 +++
>  drivers/net/ethernet/intel/iavf/iavf_types.h  | 36 ++++++++++
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 72 +++++++++++++++++++
>  5 files changed, 192 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.h
>  create mode 100644 drivers/net/ethernet/intel/iavf/iavf_types.h
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
> index f1506b3d01ce..871431bed64a 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -40,6 +40,7 @@
>  #include "iavf_txrx.h"
>  #include "iavf_fdir.h"
>  #include "iavf_adv_rss.h"
> +#include "iavf_types.h"
>  #include <linux/bitmap.h>
>  
>  #define DEFAULT_DEBUG_LEVEL_SHIFT 3
> @@ -338,13 +339,16 @@ struct iavf_adapter {
>  #define IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION		BIT_ULL(37)
>  #define IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION	BIT_ULL(38)
>  #define IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS		BIT_ULL(39)
> +#define IAVF_FLAG_AQ_GET_PTP_CAPS			BIT_ULL(40)
> +#define IAVF_FLAG_AQ_SEND_PTP_CMD			BIT_ULL(41)
>  
>  	/* AQ messages that must be sent after IAVF_FLAG_AQ_GET_CONFIG, in
>  	 * order to negotiated extended capabilities.
>  	 */
>  #define IAVF_FLAG_AQ_EXTENDED_CAPS			\
>  	(IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS |	\
> -	 IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS)
> +	 IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS |		\
> +	 IAVF_FLAG_AQ_GET_PTP_CAPS)
>  
>  	/* flags for processing extended capability messages during
>  	 * __IAVF_INIT_EXTENDED_CAPS. Each capability exchange requires
> @@ -358,12 +362,16 @@ struct iavf_adapter {
>  #define IAVF_EXTENDED_CAP_RECV_VLAN_V2			BIT_ULL(1)
>  #define IAVF_EXTENDED_CAP_SEND_RXDID			BIT_ULL(2)
>  #define IAVF_EXTENDED_CAP_RECV_RXDID			BIT_ULL(3)
> +#define IAVF_EXTENDED_CAP_SEND_PTP			BIT_ULL(4)
> +#define IAVF_EXTENDED_CAP_RECV_PTP			BIT_ULL(5)
>  
>  #define IAVF_EXTENDED_CAPS				\
>  	(IAVF_EXTENDED_CAP_SEND_VLAN_V2 |		\
>  	 IAVF_EXTENDED_CAP_RECV_VLAN_V2 |		\
>  	 IAVF_EXTENDED_CAP_SEND_RXDID |			\
> -	 IAVF_EXTENDED_CAP_RECV_RXDID)
> +	 IAVF_EXTENDED_CAP_RECV_RXDID |			\
> +	 IAVF_EXTENDED_CAP_SEND_PTP |			\
> +	 IAVF_EXTENDED_CAP_RECV_PTP)
>  
>  	/* Lock to prevent possible clobbering of
>  	 * current_netdev_promisc_flags
> @@ -423,6 +431,8 @@ struct iavf_adapter {
>  			     VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF)
>  #define IAVF_RXDID_ALLOWED(a) ((a)->vf_res->vf_cap_flags & \
>  			       VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC)
> +#define IAVF_PTP_ALLOWED(a) ((a)->vf_res->vf_cap_flags & \
> +			      VIRTCHNL_VF_CAP_PTP)

Bah, should've mentioned that where you introduce IAVF_RXDID_ALLOWED().
I realize that the macros added previously are indented with spaces, but
it's not sorta correct style for the kernel. Maybe you'd indent both new
macros (RXDID and PTP) with tabs? You can also break the line different
way if you want, like

#define IAVF_PTP_ALLOWED(a)					\
	((a)->vf_res->vf_cap_flags & VIRTCHNL_VF_CAP_PTP)

Looks more clear than breaking it after the '&'.

>  	struct virtchnl_vf_resource *vf_res; /* incl. all VSIs */
>  	struct virtchnl_vsi_resource *vsi_res; /* our LAN VSI */
>  	struct virtchnl_version_info pf_version;
> @@ -430,6 +440,7 @@ struct iavf_adapter {
>  		       ((_a)->pf_version.minor == 1))
>  	struct virtchnl_vlan_caps vlan_v2_caps;
>  	u64 supp_rxdids;
> +	struct iavf_ptp ptp;
>  	u16 msg_enable;
>  	struct iavf_eth_stats current_stats;
>  	struct iavf_vsi vsi;

[...]

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> new file mode 100644
> index 000000000000..65678e76c34f
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright(c) 2024 Intel Corporation. */
> +
> +#ifndef _IAVF_PTP_H_
> +#define _IAVF_PTP_H_
> +
> +#include "iavf_types.h"
> +
> +#endif /* _IAVF_PTP_H_ */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_types.h b/drivers/net/ethernet/intel/iavf/iavf_types.h
> new file mode 100644
> index 000000000000..6b7029a1a5a7
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/iavf/iavf_types.h
> @@ -0,0 +1,36 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright(c) 2024 Intel Corporation. */
> +
> +#ifndef _IAVF_TYPES_H_
> +#define _IAVF_TYPES_H_
> +
> +#include "iavf_types.h"
> +
> +#include <linux/avf/virtchnl.h>
> +#include <linux/ptp_clock_kernel.h>

Oh well. I initially asked to introduce iavf_types.h to not bloat
iavf.h, but now types.h includes big ptp_clock_kernel.h :z
When I was reviewing PTP for idpf, I proposed to make this iavf_ptp in
iavf_adapter a pointer and allocate it dynamically, so that iavf.h
wouldn't need to include anything PTP-related at all. This way you
wouldn't need iavf_types.h.
What do you think?

> +
> +/* structure used to queue PTP commands for processing */
> +struct iavf_ptp_aq_cmd {
> +	struct list_head list;
> +	enum virtchnl_ops v_opcode:16;
> +	u16 msglen;
> +	u8 msg[] __counted_by(msglen);
> +};
> +
> +/* fields used for PTP support */

Redundant comment I'd say.

> +struct iavf_ptp {
> +	wait_queue_head_t phc_time_waitqueue;
> +	struct virtchnl_ptp_caps hw_caps;
> +	struct ptp_clock_info info;
> +	struct ptp_clock *clock;
> +	struct list_head aq_cmds;
> +	u64 cached_phc_time;
> +	unsigned long cached_phc_updated;
> +	/* Lock protecting access to the AQ command list */
> +	struct mutex aq_cmd_lock;
> +	struct kernel_hwtstamp_config hwtstamp_config;
> +	bool initialized:1;
> +	bool phc_time_ready:1;
> +};
> +
> +#endif /* _IAVF_TYPES_H_ */

[...]

> @@ -307,6 +343,38 @@ int iavf_get_vf_supported_rxdids(struct iavf_adapter *adapter)
>  	return 0;
>  }
>  
> +int iavf_get_vf_ptp_caps(struct iavf_adapter *adapter)
> +{
> +	struct virtchnl_ptp_caps caps = {};
> +	struct iavf_hw *hw = &adapter->hw;
> +	struct iavf_arq_event_info event;
> +	enum virtchnl_ops op;
> +	enum iavf_status err;
> +
> +	event.msg_buf = (u8 *)&caps;
> +	event.buf_len = sizeof(caps);
> +
> +	while (1) {
> +		/* When the AQ is empty, iavf_clean_arq_element will return
> +		 * nonzero and this loop will terminate.
> +		 */
> +		err = iavf_clean_arq_element(hw, &event, NULL);
> +		if (err != IAVF_SUCCESS)
> +			return err;
> +		op = (enum virtchnl_ops)le32_to_cpu(event.desc.cookie_high);

This cast is not needed.

> +		if (op == VIRTCHNL_OP_1588_PTP_GET_CAPS)
> +			break;

Same comments as to one of the previous patches -- you can declare @op
inside the loop and also take into consideration that cpu_to_le32(const)
is faster than le32_to_cpu(var) on BE.

> +	}
> +
> +	err = le32_to_cpu(event.desc.cookie_low);
> +	if (err)
> +		return err;
> +
> +	memcpy(&adapter->ptp.hw_caps, &caps, sizeof(caps));
> +
> +	return 0;
> +}
> +
>  /**
>   * iavf_configure_queues
>   * @adapter: adapter structure
> @@ -2423,6 +2491,10 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
>  		memcpy(&adapter->supp_rxdids, msg,
>  		       min_t(u16, msglen, sizeof(adapter->supp_rxdids)));
>  		break;
> +	case VIRTCHNL_OP_1588_PTP_GET_CAPS:
> +		memcpy(&adapter->ptp.hw_caps, msg,
> +		       min_t(u16, msglen, sizeof(adapter->ptp.hw_caps)));

Same as to one of the previous patches -- I'd avoid partial copying and
check the msglen first to be the same as this sizeof().

> +		break;
>  	case VIRTCHNL_OP_ENABLE_QUEUES:
>  		/* enable transmits */
>  		iavf_irq_enable(adapter, true);

Thanks,
Olek
