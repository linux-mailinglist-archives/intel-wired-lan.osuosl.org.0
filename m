Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F575B3060E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 22:41:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FE0584765;
	Thu, 21 Aug 2025 20:41:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NHpxuNFya220; Thu, 21 Aug 2025 20:41:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9630884767
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755808892;
	bh=6jpkE4DJrgB+/KZNp8SnkjcYWHlf/Yn0tFVIo2Y9oAk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LrPnZ64LLvnx8jKywKmioyArDwT8UUW9xNswVyRWVxGPDH69hVl6Fz4kfoSbBuLnL
	 ynHl4907/+WmVooVa9NcLvxxkgrYcSxjMdQmeXIc4xFGu3Hy/CkoOaPT71tnw+Qy5m
	 uDAPXqYh8rdKML4v2R6kn+7rxzGVRrpdtoU/h5BpZl8Dbiijbx0g2FiFucJU74jlbj
	 Cz9tlcM9Mp4qka6ZhkvGwv/KtqgS8IWO1MeYSM9UEIYeMcgDLRzFj9RCru7PjbM/p4
	 R/3o61X3X1ZMTqu/DVO98miAGJl+1/Rek3LGNo2M3c1Rr0WqykagHUc7B8lUzak+Yx
	 xCueXV6tVjrLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9630884767;
	Thu, 21 Aug 2025 20:41:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3F4861C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 20:41:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3142A61779
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 20:41:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bLZCjr0lmRh6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Aug 2025 20:41:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1CD3F61773
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CD3F61773
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1CD3F61773
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 20:41:28 +0000 (UTC)
X-CSE-ConnectionGUID: dKi86n0DTu2onsrw1fo7aA==
X-CSE-MsgGUID: JUpSrO4zT5asfL6ohohuJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="68710144"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="68710144"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 13:39:27 -0700
X-CSE-ConnectionGUID: UvoBhPT5SGynX+szm0fe1Q==
X-CSE-MsgGUID: sGFJ+AcHQsKo6AnddMrQUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="173785023"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 13:39:22 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 21 Aug 2025 13:39:22 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 21 Aug 2025 13:39:22 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.69) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 21 Aug 2025 13:39:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EmDHpwktlpmRi5uSSZlijxNBx5v5DE09X1NdoBq327GpnyqSW4NQBPZlvrl+LFQLUXlcfbovphQH6mWbYlnMks3qAs7lOD3mJ/FRZOKnuwlQrWAnQkW5vHgvlZBiAuvKiuNwRi7Js6QR634GH6kzN2qlqfqijF4Wjy6tBbK4pp1iCs6ARtmPF8JYFbZa9y1+/uIKID50oGYzOJgIa1OvQPC+Gk5YZkk1PIO97u7bAFV7CXnoD+Wlu0B40VuxhTjVWVHqN3OfmMbbVfp0jdnXeBB4FPSG6tYU4zf597gkbWSkSgCP9xJdF2yKTxDynxz2rmdiQXAntNIujd6pzdwIFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6jpkE4DJrgB+/KZNp8SnkjcYWHlf/Yn0tFVIo2Y9oAk=;
 b=g13CSB3sucEiDUanVQrfALdAOcuxqGX7PGQyhns8fKT29W5Z6HR2Bw+oBu9/ye0QyRw83L1JoAfeA1ze7GSW3pvuZu2Q0K4m7cyhmLjcHE0HP1WjslnGq9u36xCHtuJd/tHvZBV+0EhwU0WgST+Q+f8ocrX/xXfbh5NzEpjP0cT2mu/vzScsgYiKhA4iKJiKUTkt/cZRlwZQaG+rK2QMu6BHtiKH6NQiCIEjCS1M7eSpVfK3A3+wBxt1ofEMARkfsgV8EG866nqQ018Bh785YhS8z5unQn8dofD4lSi/+AgVVvEOQ7T+HkVAO0zz1yJOXgXAEBLeWeH1SVY+Qkm16Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MW4PR11MB6838.namprd11.prod.outlook.com (2603:10b6:303:213::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.14; Thu, 21 Aug
 2025 20:39:18 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9031.023; Thu, 21 Aug 2025
 20:39:18 +0000
Message-ID: <8f077022-e98a-4e30-901b-7e014fe5d5b2@intel.com>
Date: Thu, 21 Aug 2025 22:39:13 +0200
User-Agent: Mozilla Thunderbird
To: Calvin Owens <calvin@wbinvd.org>
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
 <CADEbmW100menFu3KACm4p72yPSjbnQwnYumDCGRw+GxpgXeMJA@mail.gmail.com>
 <aKXqVqj_bUefe1Nj@mozart.vkv.me> <aKYI5wXcEqSjunfk@mozart.vkv.me>
 <e71fe3bf-ec97-431e-b60c-634c5263ad82@intel.com>
 <aKcr7FCOHZycDrsC@mozart.vkv.me>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <aKcr7FCOHZycDrsC@mozart.vkv.me>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU7PR01CA0026.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50e::22) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MW4PR11MB6838:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e555a9f-ef41-4d7d-39cb-08dde0f2ccba
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RzJyWHA2TUJscU03cHZKMlNYZEtsOWdvcGtOTFpxaysyR0paSmVUY0lNQnVW?=
 =?utf-8?B?c01pWTJtVXlHclAzSDRMWXhDRGRXOFhBL0tuNzNkV0NSWlpyQ2RPeUtXUXpJ?=
 =?utf-8?B?WmtFeHpqVk8xYmVzS1V1eGFuSDBtZGNlR2d5MGxIVll4dkhCcTdKSUgzaXoz?=
 =?utf-8?B?WWNSWkl4RDZQY243dVFyQjFFdVhiRkE4YlBFVmlicG9sQk1GK2lzNXpkMFFN?=
 =?utf-8?B?QW1USmlIeFpKUXRWcnl3VnNJWFgvNjA5c1hBbFcyUisxY3haUnJzOVB6Tm5E?=
 =?utf-8?B?Q1BxaEsvNDdPVWliYUtjbklRSFJZamttd0szNnFiY2JYT2Nzb21qaHpvSGxs?=
 =?utf-8?B?QjJmNUdUL2hWZXo2dVZuaEFjdVREZTFOeE5DQzlkRjg0azFVdkpRU1pKZCty?=
 =?utf-8?B?T1Z1QVZFalIvaDJNWEpsZEpJZTZmRkhxSUJ4Z2J1eGFQYUVITU9zdGpORXVS?=
 =?utf-8?B?MDl6VEVQUEFQTG1rTURicC9lZmppanJoR0FQYVJaZWVPb0poM0pVVSt5VEsz?=
 =?utf-8?B?QmlvRVk3V1BQNVc4TjhaTS9Hb3JEdjZXZ0NuSUZJWDl5RjlaZWJaSnhuRTlC?=
 =?utf-8?B?WDJoRGZLcUxpY1F3SFcva0xDSW41U2h3N1RrbUQ3cnRqalRyRnc3Um1qSmJT?=
 =?utf-8?B?aVQxNzN1bkJMdVFFWlRVcUhRWWx1dHJlYUVRbFQ2cGVaZjFLUHIxaGhZOVZz?=
 =?utf-8?B?TUdERXFXc04rQXJseTBBU1dKVCs0NHVRSmx0T3AwcEV1K2psUzZwczFGQmlY?=
 =?utf-8?B?TUUwbXVGbkkvL1c3VjVrOGt2MHhrTENCalhFSy9mUHdZSmpFc0xJMnY5b1dh?=
 =?utf-8?B?UXRBNXBnbTFjNmNWU1BRdi9odHV6UzFlNmRKdUtyL0tudVJVaWZyZ2ZrWC9j?=
 =?utf-8?B?R3pmdm5sU0JWNjJrd0ZzTVRxY2tSY0UwbEo1TmFpMmcwS2ViUXV2TTE3K1Jl?=
 =?utf-8?B?L1h5aTJub0t0RjRMVDFlT2pockVQTjJ3ei9MclFSU25YNEZNZjNJcWp4Znho?=
 =?utf-8?B?eXBSYTNRMXJsN0Z6WG9kaldEQUNBdjgxR0xmOXptSC9PU0ZqL0NvK0h3dm5X?=
 =?utf-8?B?ZGZ3RUh3R3NOOElrM202cEUwWk83ZEM4UkFzbnlDTEE0aUxmVVduWDczaDR5?=
 =?utf-8?B?U1IycmRuUTdaL2gveG9qMTZnYzhaUXVENHI1TFg4WXhKT1AwdXk4dFhLK2pj?=
 =?utf-8?B?WlZqRXI0STBIMllmaC9keFNya1FLT3JVV2hkNjJNcnU0TXhBaUN3T3VTUU4v?=
 =?utf-8?B?UjQwSWQrN2lQWnUybDRyVi9jbGVHeGYvRWtBQlB5MjMxa1pSd21KU0hlbG4y?=
 =?utf-8?B?TlI4S0s4djE1aWZyRTNQdkdPQ1I2L0N0aXVvQmxndkUyRm9wUW5GcXptRFh3?=
 =?utf-8?B?OGNiOC9pek82ZDhQeTFUY2F4NXFIL0s1Z0QrSDRFaW14Uno5dGZJM3BrbGNk?=
 =?utf-8?B?d0FFYWNFb3ovbVFTRWhsMHREek4wT0hpMnRFWi9IcjNaNFRyWFlDOEkwT2h0?=
 =?utf-8?B?LzFTdGoySzFsYkZSc0tYMUp2YVZXQ05VNjNwNVRFR1FWZEtlNVVHUWFXdEx0?=
 =?utf-8?B?b0J6OEQ0WEMwLzZiRVpPWERyQXlFNDc1b015N05CSE52eS9KRzhlOGtQZmtR?=
 =?utf-8?B?VWkzZ1p2V21nN2tRN2Q0Uy9MU3JTWFQ1b0xUYWZVbUhuMVZ3QXlOZk0rcmta?=
 =?utf-8?B?NWE1UUR2Y1kzekJJWUFOd2o5TDF0aVdtWkcvN0ZXeDlQamhiTHMrVVNBUHFi?=
 =?utf-8?B?Zk85TTFuZ2g5SVBSeXNPaHdPb3g4SmxTSEN2SHViTzZsZVp2TklYMy9ORldU?=
 =?utf-8?B?NlBvZjF4ZC9VaFRtRy82VmdVc3RRV1c0Sm1ORDdETHUxZTIvY1EvektKVndo?=
 =?utf-8?Q?PIHnDsXGcvC7l?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWhtNVpSdUYyL3hFVHlZODk3cGpDMXY1UUtEbUtBMjQ3eWJrN3NBc1FDT2F4?=
 =?utf-8?B?Vk9LK2sySldpMnNheHZ2Q2N5NXJaY2JmUkNkMzgwbUtxZ2ZMR29KNXltalhL?=
 =?utf-8?B?N2RZL2N2aCtFUVRGRUNwRzZLRFZMb2ZUU21QdmJBMG43bnYrUmNaZXJpZE56?=
 =?utf-8?B?eC9BME1sWElON21VSkM2Q3ZBVUJRMmdBTEJGdWFLTDdULzlNWFhuVGhVVWRI?=
 =?utf-8?B?T0ZLejUvd0doQ3dUZHVSOEh6cW8yeDhuaGZrM0NQN1VYdnNHWk1oQ3BTU010?=
 =?utf-8?B?eGh4aXhjQVJHdTNLRDhyRGFJWHMwaXRTVXdKdXhrYitPKzlkNHRnT0FFbzR5?=
 =?utf-8?B?aE5CQnRDdGtBZElpRm9xclgwYWVMbHVKVm9lL0wzUmVDUjdSdzZSMzhHUTNS?=
 =?utf-8?B?M2pNNnEwaStTemxBS0RicWtUZTFwRDA5OW9KUkY4N01OMEtOalNzb29KRWxB?=
 =?utf-8?B?U05nZmpINW1EaTd4cy9uSEY5Wlg5cG95dTc4cFlkTFMwdUx1ZXZZL2tjZVkx?=
 =?utf-8?B?d0M0L3pUM3JaS0FFVjgwOXBNZ1lqelRIWTU3enVEZW42cDZQMHFQS1dRREZO?=
 =?utf-8?B?NmUrd3NWUFdURnZGR1JmdCsyQWY2Z3Q5WnUvN2JLUllUSXBQb1JZd1dLSVdq?=
 =?utf-8?B?RUxQTWkwZUhWNDBNekZtYXYxcjgzRHd5U2FEYmV3VlJ0WGdkOHh0b1BYeDhZ?=
 =?utf-8?B?NGFzY28xWlJQSWxkc3lTcXRBOFE2T09EVDZSL2JaRlR1dWJpeTlpOFFZUWpH?=
 =?utf-8?B?dUw5clNCNFpXRlYrQWdudHJPc0d2QXVVMUtDMElpRjVXZEJlU3ltR3drWDVr?=
 =?utf-8?B?YWs4Yjd2SVFYUk5kdkJVZzFTVXNSSldCajRldHlyS1M5SklvNHJaaXpEN2E5?=
 =?utf-8?B?a1V4djRhSjIydktxbk51SlJhVXZrNUlldVVIcjhNUzkyR0JhRDJsb2xITXd2?=
 =?utf-8?B?cEwxMnVWYTZrcEdwakt3cXUrWlg4Yis1cDBhL3k3R0thNk1PZkhKaTJhdFI2?=
 =?utf-8?B?cWNuMlV4N0FIVGRzeWx5QVlzQm92djdESlJmZjc4M09ZM0EvbHpvTnJXaUlF?=
 =?utf-8?B?RFVWM2J2bmNDM2ExU2Z3VHVLd3pZb3ZDbE5UeG8xeCtHaE4rVUliQkJsanla?=
 =?utf-8?B?UXRreWRtUW1MSmpGYnh2WDUxeGI5dTNNbVVxb3FGbmNteFY3YWsvWDJhMlhN?=
 =?utf-8?B?TEs4SXBiVUdrdzI1dUZoVjZkRTQwb3FSdWZXRUdLSkVFRWREVm9rOTRRQWdU?=
 =?utf-8?B?cHFMS1FiTVJCbDgrVDNmSWRVV1hnQVM3UHRoQ0lyZ1ZMZkxpMXFlbzZIWEg1?=
 =?utf-8?B?VGxzRXIyVDZoNFBxVnVZak9RZGdWUWIxRHhwTmo1VHJDRFAvSCtuRkNCaTRu?=
 =?utf-8?B?T1VEQ3I3anFxanF6bTZtd3RoZUZ5OXdZMWUyWU1HUWE3WGpKZS9NQUhvSmxx?=
 =?utf-8?B?M0wzbVFtODRMdDY4K3R5Tmt6cktHYWRTa2dueUNIMkc3eVorQzJhMlRGamwx?=
 =?utf-8?B?VVREc3FCajZpOFhGTHFPZFM4MEhNemUwYjU2T0FDSEFGSDVNWHJWRTRzVy84?=
 =?utf-8?B?OFlwbG5pZ3RQdDRZT2ZLdUpNTkp2aVp2VTZKSzQzYUVrTGFiTXN3U0JRZGhV?=
 =?utf-8?B?UkxDTHRmMDNMbGxKTXFXOVlORXQ4NzNVWllSVDY3cFprVytxSVo4dS96UzNQ?=
 =?utf-8?B?UHpzOGsraDE0Z2UwZWdQbXFDMG1iVWl4TlRtdVdETytoYTB4RzNKNlhtS3RB?=
 =?utf-8?B?OGdaMWFCOHVXdnBLd2tJRFlsQnlkQ24vUnVjM3duSTk0WGdLTWEwaHpPSVpM?=
 =?utf-8?B?enAvQjllc29YN2F3UDg1cVN2MzZ6d2VWekFQNCswQllCSGZxYmRZVTE4aEtO?=
 =?utf-8?B?Mml4VUhmekRqc0Q1WE00ZHpJZkU5dXcxeUYrVlFUZ3ZFckdTMkhZV1l3QXJ3?=
 =?utf-8?B?dmFqRkdobzg5c1ZKQlpZUjYvbVVaY0d0NE42V1RrSWd1Y25zUmJlZGx4Y3BX?=
 =?utf-8?B?YkpyNnk4cFEyenltRE45VEFTcmZ1dEVaOXo1TlB1NG84MVlWckl5QTlteDMr?=
 =?utf-8?B?RVV2NXRFdDRHWUZ4bG5GV1pkbVpZWmNaL3pXcytnd2EyMkpoTDJUVWJYVU9i?=
 =?utf-8?B?RUM1djFTM3dOU3ZPMmNvd292bFY4VDl2T2tWUjNhT0xCejAxTVBRV1ZyNnoy?=
 =?utf-8?Q?J8vOdvLGU2NuFZlJuDttHi4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e555a9f-ef41-4d7d-39cb-08dde0f2ccba
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2025 20:39:18.0785 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iP20P1fkuuHlK4ubzvRKxZ9QpT3toH7KfR78eudJTNju0MMNO0pFpvjN9oT0pbmD/IPcTM6CSU1alC+x/ZMT4psPbl+Bf6U9E/2ac8Cb9Uo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6838
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755808889; x=1787344889;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FczZ+0UsFZROEojNBWQlkfiPQzs+GPGQIy4Jh4N3k4E=;
 b=idFtU3q0vsrb5OV+dsJrEKMtrwbQgGdmcmS+3n8V00dfDdLvD+GGL5vZ
 MBHzVDQ6zjEc5JXoixRwzTV3Z8tihkkNOtPKBDjownxQjcTa0n9iqaVdk
 UuwKNSUOQ2KQ9ftwo0EPohMB1tjHBYMMyWH2wQTrMcAoR16bNeSMLMsjC
 C0pnPNUT4K7etwHwJNrvXj27CS/PuxWnyRG6jp2szeQn1ljGUF3TBIinx
 IliVTdGGtR8tyt8oQE8/hKYMkcHJU48clcxY0bGXjaPqekLq3u88Z9Ebp
 1QYuHumlr8fY4zq3gF955HtidHLpJVCQqF4IQmJ2KIYdP+TDF6eZTqqT4
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=idFtU3q0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted interface
 name changes
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jedrzej
 Jagielski <jedrzej.jagielski@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/21/25 16:23, Calvin Owens wrote:
> On Thursday 08/21 at 10:00 +0200, Przemek Kitszel wrote:
>> On 8/20/25 19:41, Calvin Owens wrote:
>>> On Wednesday 08/20 at 08:31 -0700, Calvin Owens wrote:
>>>> On Wednesday 08/20 at 08:42 +0200, Michal Schmidt wrote:
>>>>> On Wed, Aug 20, 2025 at 6:30 AM Calvin Owens <calvin@wbinvd.org> wrote:
>>>>>> The same naming regression which was reported in ixgbe and fixed in
>>>>>> commit e67a0bc3ed4f ("ixgbe: prevent from unwanted interface name
>>>>>> changes") still exists in i40e.
>>>>>>
>>>>>> Fix i40e by setting the same flag, added in commit c5ec7f49b480
>>>>>> ("devlink: let driver opt out of automatic phys_port_name generation").
>>>>>>
>>>>>> Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
>>>>>
>>>>> But this one's almost two years old. By now, there may be more users
>>>>> relying on the new name than on the old one.
>>>>> Michal
>>>>
>>>> Well, I was relying on the new ixgbe names, and I had to revert them
>>>> all in a bunch of configs yesterday after e67a0bc3ed4f :)
>>
>> we have fixed (changed to old naming scheme) ixgbe right after the
>> kernel was used by real users (modulo usual delay needed to invent
>> a good solution)
> 
> No, the "fix" actually broke me for a *second time*, because I'd
> already converted my infrastructure to use the *new* names, which match
> i40e and the rest of the world.
> 
> We've seen *two* user ABI regressions in the last several months in
> ixgbe now, both of which completely broke networking on the system.
> 
> I'm not here to whine about that: I just want to save as many people out
> there in the real world as I can the trouble of having to do the same
> work (which has absolutely no benefit) over the next five years in i40e.
> 
> If it's acceptable to break me for a second time to "fix" this, because
> I'm the minority of users (a viewpoint I am in agreement with), it
> should also be acceptable to break the minority of i40e users who are
> running newer kernels to "fix" it there too.
> 
> Why isn't it?

I think we agree that it is ok-ish to sometime break setups for bleeding
edge users, then fix (aka undo). It's bad that this time it was with
effect equivalent to the first breakage (hope that it was easier to fix
locally when it occurred second time in a row).

But we dispute over change from Oct 2023, for me it is carved in stone
at this point. Every user either adjusted or worked it around [1]

> 
>>>
>>> And, even if it is e67a0bc3ed4f that introduced it, v6.7 was the first
>>> release with it. I strongly suspect most servers with i40e NICs running
>>> in the wild are running older kernels than that, and have not yet
>>> encountered the naming regression. But you probably have much better
>>> data about that than I do :)
>>
>> RedHat patches their kernels with current code of the drivers that their
>> customers use (including i40e and ixgbe)
>> One could expect that changes made today to those will reach RHEL 10.3,
>> even if it would be named "kernel 6.12".
>>
>> (*) the changes will likely be also in 10.2, but I don't want to make
>> any promises from Intel or Redhat here
> 
> But how many i40e users are actually on the most recent version of RHEL?
> Not very many, is my guess. RHEL9 is 5.14, and has the old behavior.

RHEL 9 backported devlink for i40e in July 2024 [0], together with undo
of interface name change [1] (this likely tells why there were zero
complains from RH users).

[0]
https://gitlab.com/redhat/centos-stream/src/kernel/centos-stream-9/-/commit/bcbc349375ecd977aa429c3eff4d182b74dcdd8a

[1]
https://gitlab.com/redhat/centos-stream/src/kernel/centos-stream-9/-/commit/5ab8aa31dc2b44fbd6761bb19463f5427b9be245

> 
> If you actually have data on that, obviously that's different. But it
> sounds like you're guessing just like I am.

I could only guess about other OS Vendors, one could check it also
for Ubuntu in their public git, but I don't think we need more data, as
ultimate judge here are Stable Maintainers
