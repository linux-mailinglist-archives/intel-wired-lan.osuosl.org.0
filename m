Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKJiDedyxGljzQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 00:42:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0274632D6EC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 00:42:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D554A60837;
	Wed, 25 Mar 2026 23:42:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j5j5kJe8j5BD; Wed, 25 Mar 2026 23:42:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A2436085B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774482147;
	bh=fPO3cEuilIh32SALg9bnu5OwhLuPECvy41SevcYw0oc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m9Ac9l9zNcheIJ3boKEiGxPXCqVG/rkEDzcL3eo0aBGzrCsKUbvsjwOyOOGLcfS/h
	 JB5hUn96oNEffKFF5etZwE9KAUYZvSbHjLaQfaHfDFKWyoLHW1nj2Z93+t+lDSO0wf
	 h8u9RJTOV7zKttPSJA4nrLdzp1o5NDLxMBGRxHV1Yyx8L7y5gShFl6ockoDAR35bMP
	 EFp7Oqheien3ovaTBatTxkriHlTZMREy13yNCiXXha8jCLL5MRqt03lrGzHT5/UQFS
	 6Q3GwCvJrbi2n8lssY1n4pVfhgrshHPoY0L+p4F4OkolNOSyGYKgGGvR4meE94sfUp
	 TFoWRYjMSGSRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A2436085B;
	Wed, 25 Mar 2026 23:42:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 026EF353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 23:42:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E24E940A5D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 23:42:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GKjBs_4kwiqb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 23:42:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E438A40A5A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E438A40A5A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E438A40A5A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 23:42:23 +0000 (UTC)
X-CSE-ConnectionGUID: /qfGFFzjSNGZpvBnX5MU4w==
X-CSE-MsgGUID: g5tyNXdjQWe/Fymxolmc9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="85840989"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="85840989"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 16:42:24 -0700
X-CSE-ConnectionGUID: W5hexiWaSpe7VnVQWqR3Fg==
X-CSE-MsgGUID: UZ9PApiMT7aKVmAE49/F1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="224845940"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 16:42:23 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 16:42:22 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 16:42:22 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.18) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 16:42:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gZT6pBN97d96won+lxF3aupk8KIufkl9rSf8GJP/G+m0B3v1cveE+TNMT0y0fzAvsCErBJu0M2cJ145lS7JoA05grPKv7u0cA2w/c+An7EEVxJ9P1dS+elecTH70S07pqx/DyKDQwQAp+UfthSe/u8OzS29f+bpV4oSBA8TVDjeS7ltwrqmoI2TOo3vsdOnscyP8/Re5fBkS8GC6EJfnSk0WHLV93j58V7BCrhkqCm1LVKmn22G/QkyEDRjOk/xpMcs71Pzg8pgMYaFVPNtClbYFiPGftp5+kNZc+liZfu04IFVhfSmYkTneYASTes+l5DRw41dLcAQd018exa1tyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fPO3cEuilIh32SALg9bnu5OwhLuPECvy41SevcYw0oc=;
 b=M49EzLLt+nPwaa+XnDqhObbxtd0bIUa5Pl4RSbQmuzq6Mcvu31mQeYH9s8XvbsJJLFIKYqWHm4ITxvfUYljQ+6sdcux0Al2RWa/pEafpjL3Mj8lWFA35GnDJdAsyr0csIcGYstJBZmSO7aS+dAo0EkDmTx8f0qQhl14ca6B3ZGaunmHxz0dSzFba/2Aokwg8PL1LQUHrIyMu/QqideO3qsr2E+fG/zQhLFD7M3yNlXtrg2WPIFLLQ0YzfcloysOTu/IVuvdqllbraF1ovSbAPR1MsWe1962/iwlM31WNwfSKevD/6jeasf6fiLajmXZTDptY4av0flFxzMqbDmLLsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 BL3PR11MB6433.namprd11.prod.outlook.com (2603:10b6:208:3b9::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.14; Wed, 25 Mar
 2026 23:42:19 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9769.004; Wed, 25 Mar 2026
 23:42:19 +0000
Message-ID: <dbe4af5f-b8c6-4abe-bd55-8f970e18add9@intel.com>
Date: Wed, 25 Mar 2026 16:42:17 -0700
User-Agent: Mozilla Thunderbird
To: Przemyslaw Korba <przemyslaw.korba@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>
References: <20260319111659.551039-1-przemyslaw.korba@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Content-Language: en-US
In-Reply-To: <20260319111659.551039-1-przemyslaw.korba@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0255.namprd04.prod.outlook.com
 (2603:10b6:303:88::20) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|BL3PR11MB6433:EE_
X-MS-Office365-Filtering-Correlation-Id: 45fe9c7d-6225-470e-8501-08de8ac8275f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: LqKCB15Nx8fNHcxMWR+RlwxwJFnJFC7Ey/8Yc1uZyzPv/BAqjbCNdg6E29z4o05SIZrm87b7VfQcc/KlvIhGyR3PN2dWClqJ7/Ycf2JHEqG7/eakAb9J58Q+6gMK/9M6zuCR+O8S8adCP76YKBQ3M7dOFeaEPxiWsYi8ByaF9fpWDf2aHsA9/aaapYFTCk8uCF1fb+yCkfyeUVYBnlsM5RjERKmJYZVYrhi08HCBnk2q7RK/c7pdbsbh5f3novM/S9Q+FyrQ8fCuWPlGzm/Bq813qQZZL4dz+V7Rego/Vm2X9tx2lAZRf5gi1Vl/iAUd7jl9dP+VXa4lY7S4Y3j0deSVGMzs2EDmn9B2wkt514+jO2yHtzlwbYkjoU0JWP26TG6TzMI7NTtE3PF8Y3HgVnx+fHx3OnHpERHeYTWQcfy67O5mv/T6aqqVJD5JC7ycInv2dr95M592WwtQ3Qk/wEuS3I7HGbsjmhjHB6GP2K0G0M8LirMNdo2q0DtLf0f/+8P+5a6OhTYfRfvTV6Nj3yvnbpTxforgXJpBu0/FU78sXGMz2DcSJeoGAEdJiiQKCqd4rXiTKAtLEyz3AW6iJc5vMgMvpa3GvV7euOBLKLQM/ZrKAvUgAQbFbLFL/WNtIa8auV6+1g9TdfFp23T7zx/sU5+OTDTcag1bavziDRjZSCXxxjAgdTKlSgQWKLGIx48O7qlLdIJ6V/1+ZWZkkfo+YI4R/2vqCoQlQOSunOeb9PBF9iVewq71j8sE9p9k
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZE9LSjY2bWRYRjloemN1RXRSU1BLVFp2REdxYWZrdnZaZjBzUys0NFJRZHNS?=
 =?utf-8?B?NWVKVWZZV1Nha3YxczB6Lzg2VW96U3FER0l1UWFnNkMzRTRmWlJ3eTVPV3Y5?=
 =?utf-8?B?MU5pZXRNclE1V1Jrd0VrN2Y3OHRPU1VEZDBwWkcza0FCOG5CTnpEcUZmWURG?=
 =?utf-8?B?WFZTVnBleXJXNlpJd1JQTXhTdUdDL2FVT0phNmlHcnhKWGJNU2pTYXBlSFRC?=
 =?utf-8?B?aGMxT0Jyb2JCZlpueGZiOWFRSlN6SGxtalNWdE4wVWlIcTlNSGZRUFBJTUcv?=
 =?utf-8?B?ZWllWW5sSnRtMWYycmNEZEFsNEVBWmVjNmZLaFJHa3hFOTBncjVIUnBKOEhJ?=
 =?utf-8?B?Q0I3RHR3dGRzZmQ5dzJvemFZd2Q5MXRlUDlOTHd4VUZwQVY5bVhjQVFZM0o3?=
 =?utf-8?B?cnV4NncwSHZ0TUdGVVBsQitUTHY0M244bWE0ZGhLZUlzYTVMK09jeUIxei94?=
 =?utf-8?B?VHh0aUJNdzcwVlQrb20rdlo1dmpTeXp6emwvOHJQWjVQMTR2R3BpUTdrK3Ev?=
 =?utf-8?B?UWhEQWMvTXJKOE5LOGlFS3dvTDVLRXFNMHo0TzdNVEFCbnhpbTRrd1NOL2lF?=
 =?utf-8?B?VlJDUVlOc05wTjFxWGdMaTFKejc1aWdISVd4WG03cXhCaEF5RkJnSy8wVHA0?=
 =?utf-8?B?NlJOcFVPVzA3ekRJYXJBOTZVZDU3aWxheHpxUEJGd0VrWVN6K1h4bGZ1R3NQ?=
 =?utf-8?B?UEpQS05rM1NPMmJwSDJ6MGw5MmoxcVBrMHF2Szc0WTlEdmdqSmlwV1AyOUxQ?=
 =?utf-8?B?V1B4c21DYkxoUm9pRnJGVlh6bHh5dU5PNWFRMmhUSlAzcnVzV3g2VUFVblc1?=
 =?utf-8?B?YlQzUFhXWWxsRlBobVdkR0VTakFtTDRqemNOUXE2MHk3Q21OZFBXclBFWlZC?=
 =?utf-8?B?L1VHUWZZQjl1TkxnTjNBODNmdHFmRmM2SElxYlY0UWtZSEZLUENhWkYrakRm?=
 =?utf-8?B?TktkWm5GU1Y5UWdlV0VEdDRZYVBsMzNyeFBBTXdmSGxXcGowYlpSWjhOZnky?=
 =?utf-8?B?OGFwS011KzgzL2cwRnBhSnJwMjRDcy93TU82bzZER0NRb3BsbkpiZndsVUM3?=
 =?utf-8?B?Z2tYVjEvWTVXWXlxeVl6bEJicmhhUUh2aDZrVU5KZzhGNmYyd1ZrTzVHQVRJ?=
 =?utf-8?B?VnlmbTJ5ZnZNcU04OHorT1BsSG00WmdEM3dDd1U5cm5FWVZIQjFnRFFMMnVX?=
 =?utf-8?B?bnJ5ajJNWkQ3QzQrK0RQSnYyRnFuT0s3OVVuV2tkT0NTM0p6ZmlSbGN3bzg5?=
 =?utf-8?B?TlZzdGFuNDFxdDBvVWxBdEpXVWZKOHFXV0hQOHg2dmlWVkhVcWRiSkRoT2tK?=
 =?utf-8?B?enVCa05NTWpxYmJaMHcwOVpyR1pqa2ViV2gxQlM3K0FkbEJFWk1RZkowQ3gw?=
 =?utf-8?B?Wlk4eCthbDA3VDBVd1Y3c3RHVHRFcHZjczl1S2M5dDRlb0kyTTdmZE5xc0M1?=
 =?utf-8?B?d1phaThMZkVaY1BwYTFqd2xEQVVoV1dRUVN1ejd0VlVBUGUwaThiOGpEc2Rq?=
 =?utf-8?B?dENHZDdhMTR5a0FRKzBpYWtVemNXREdERFZ4WkJ4WEMrUXppeHZtYnRKa1N3?=
 =?utf-8?B?Y2s3OFNyYVdSU2dmMlNXTy9sOUFnQUMwTzBmd3lrdEpQZFpOVUtTUVJSRmlL?=
 =?utf-8?B?c0JWaDdhWCt2aTBRMnFrdUdxdm1MWWFIVkJHRDh4azRrVUF6aHdlWlp6a0lv?=
 =?utf-8?B?d0JWRHNlTE9yVk5wbEdHMjVqUFJPNU45WnNVYlM5RFR2dEFjQzBPVG9GdGdy?=
 =?utf-8?B?Q2ZQVnMvNWRDOVNtZ1NJaDJXNjJic09EOUJVMDFCdkh0VGJBM0oweXY5NmxU?=
 =?utf-8?B?RkhEemxJbFVNZko0SURkOWNxM1FaYXNLL3FSbFE5MnVWK2QxMzJyMm9BVk11?=
 =?utf-8?B?YW4xSlc4VEtLVUdHSjdJWC9ESGFyQloxeEZiZHd5bWI5YWdiZEU4Q2U1Tk96?=
 =?utf-8?B?VnZIOVBJMndHU1psZEZTamtyd3pQMFdIbmNIekhwOEEySzlJVDlwZTdqSFU2?=
 =?utf-8?B?V0ozcnVkbGxoQXJWQmtweG5oL3VweStVclBWckVpbXpuQitNMXBUZU5qZW1W?=
 =?utf-8?B?VzVoQXVZOXpWMEhES0NGM0RhSm5Jb3FuU2tPZXJ4U0ZUcmpKRVVrQmxLWWlD?=
 =?utf-8?B?QzV6eWJYWlVlRTJIcW1DdExCZ0Qxa2ZYMHZJM2RFcERSUzVOaTM4YWc5M1dN?=
 =?utf-8?B?TXk1OTVscU9tUnZDaE5OdWJQdWFBeUJlR0M3dy9ESlBwOENzLzVXYmJZUjVM?=
 =?utf-8?B?dmxWRVpjZTNIVTRYVUlEaTczWEVKWkkybGMveE1KemRXcEZyUkR3bWlJcEEv?=
 =?utf-8?B?Ry9pWEI0RzM2NEpNZ2xmZDFYRHArbTVjUjlRV2xZUXZBTGhyUlM5QkhhY0do?=
 =?utf-8?Q?RVOjUERTS7hY76Pw=3D?=
X-Exchange-RoutingPolicyChecked: lAh8Fx3Xnc+KazxAaqJQXMXe7F2YHqg9bMvKgJxA8c8QanVEldidE76zoZgrjjiAJ8KXSZXHaDwGyowLlAJLjWDWXzAML6qMiwjVF+nDlhZB9hAQZhNnhLSseco/pHv7sweUXImAPGskXzofadiuCi0u+Cmmj5egy5FkqS02jRQUrcR8P632aBvMrMYDVQ7/fiMHZxxxoPhxHrgKieHnW1T4PDq20KBlGoQwOvn0jtvhjeybKD7RxyRhewoXxQO++1xPan53PO+XdQchsVleRiXQFx+AGgrajiNmN3tgApE5LAa65c9Y+LiMq30CfsB6E2JxIFQN12ueFfSAd6JlOQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 45fe9c7d-6225-470e-8501-08de8ac8275f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2026 23:42:19.3514 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /s6i9OqEQ3ssFSqOWoHnFhPciK0H1cuQBw/Ks6FiPwgjC+MdbPuaLrHAo02myuhBhosh/0co68z8ih0YolWbTrJAaiXZVg1RPU+Tjyc4IbY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6433
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774482145; x=1806018145;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y3s+4pl05JfS+qKdJGIpjs7VHegIffbIWD69Zc/0K6c=;
 b=WNnDDJUzFiu3ptwN185C9FNmOZEIIsgLfvU6Zdq6qiM+RJ62xvhu+5z3
 m0ug3EP/Rd+C0FuwfDZzGpc1JF5fmyZGqYsRkILwiVDQw8q3In4XKhx/W
 lS5YNdga8JCVC4pnOfZv5LQWhHHsAvIPQKEE2Xa1n75y4YwmHC8szjhKz
 iRaOG/1bTg2lbBQPBYUb7vU/72l+WsJbsJRyk9eycwSurXRzrBA73K9Kf
 gbutuwFJlr1KcXn3P2x8UE0rEZaqsaHcARRHbkIXJfhLjlS1Ohge1dPmu
 VLOGhjBTZkDwkk5JTz/8msvgpBbwfgeBR47ivcwY+gXQWSuBYFIp738II
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WNnDDJUz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix posted write
 support for sideband queue operations
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 0274632D6EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/19/2026 4:13 AM, Przemyslaw Korba wrote:
> On E830, PTP time adjustment commands sent via
> SBQ don't generate completion responses, causing the driver to
> timeout waiting and return -EIO, when trying:
> 
 Hm. Is this really for E830? I didn't realize that device actually
sends SBQ commands for PTP?

According to ice_ptp_adj_clock for E830, it says "E830 sync PHYs
automatically after setting GLTSYN_SHADJ".

Did you mean E825-C here? Can you confirm the device type affected? Or
am I missing something?

> phc_ctl eth8 get adj 2 get
> dmesg: ice 0000:1a:00.0: PTP failed to adjust time, err -5
> 
> Add support for posted mode not to wait for completion response.
> 
> Fixes: 8f5ee3c477a8 ("ice: add support for sideband messages")
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
> v2:
> - change "postpone" to "posted"
> - init struct with {} instead of {0}
> v1:
> https://lore.kernel.org/intel-wired-lan/20260310110700.345904-1-przemyslaw.korba@intel.com/
> 
>  drivers/net/ethernet/intel/ice/ice_common.c   | 7 ++++++-
>  drivers/net/ethernet/intel/ice/ice_controlq.c | 4 ++++
>  drivers/net/ethernet/intel/ice/ice_controlq.h | 1 +
>  3 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 8866902efb91..c89c6ca1281b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1765,6 +1765,7 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flags)
>  {

This affects the ice_sbq_rw_reg function which is used by several
variants including the E822 devices, E825-C with ETH56G, and even E810
devices.

Do all these devices not provide completion? Or do we simply not care
about waiting?

I don't see a single call to ice_sbq_rw_reg for E830, so I suspect this
is correct but for a different device, and the commit message is just a
typo?

>  	struct ice_sbq_cmd_desc desc = {0};
>  	struct ice_sbq_msg_req msg = {0};
> +	struct ice_sq_cd cd = {};
>  	u16 msg_len;
>  	int status;
>  
> @@ -1785,10 +1786,14 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flags)
>  		 */
>  		msg_len -= sizeof(msg.data);
>  
> +	if (in->opcode == ice_sbq_msg_wr)
> +		cd.posted = 1;
> +
>  	desc.flags = cpu_to_le16(flags);
>  	desc.opcode = cpu_to_le16(ice_sbq_opc_neigh_dev_req);
>  	desc.param0.cmd_len = cpu_to_le16(msg_len);
> -	status = ice_sbq_send_cmd(hw, &desc, &msg, msg_len, NULL);
> +	status = ice_sbq_send_cmd(hw, &desc, &msg, msg_len, &cd);
> +
>  	if (!status && !in->opcode)
>  		in->data = le32_to_cpu
>  			(((struct ice_sbq_msg_cmpl *)&msg)->data);
> diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
> index dcb837cadd18..a6008dc77fa4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_controlq.c
> +++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
> @@ -1086,6 +1086,10 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
>  	wr32(hw, cq->sq.tail, cq->sq.next_to_use);
>  	ice_flush(hw);
>  
> +	/* If the message is posted, don't wait for completion. */
> +	if (cd && cd->posted)
> +		goto sq_send_command_error;
> +
>  	/* Wait for the command to complete. If it finishes within the
>  	 * timeout, copy the descriptor back to temp.
>  	 */
> diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h b/drivers/net/ethernet/intel/ice/ice_controlq.h
> index 788040dd662e..c50d6fcbacba 100644
> --- a/drivers/net/ethernet/intel/ice/ice_controlq.h
> +++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
> @@ -77,6 +77,7 @@ struct ice_ctl_q_ring {
>  /* sq transaction details */
>  struct ice_sq_cd {
>  	struct libie_aq_desc *wb_desc;
> +	u8 posted : 1;
>  };
>  
>  /* rq event information */
> 
> base-commit: acd2abc52dea91c3bc3d1b6dd8a92b9631d48bbf

