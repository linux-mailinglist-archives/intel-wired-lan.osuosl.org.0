Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4DB8A0249
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 23:41:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 325D960EA9;
	Wed, 10 Apr 2024 21:41:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FAFrohWkssWk; Wed, 10 Apr 2024 21:41:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87FBC60EAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712785264;
	bh=mI8DZLtq/6KYAq9eac57pE+q2ddBVI9tGNDKtqOXnSU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cARve/WNrlV7SGaZ216C7z413j8jps+o9niVfRuLHYeaKYvCUM+TfT6YKCL4EeNCG
	 cWuFK6ZIqyIeiL3tuPYFTQFkVJanSBnklQWjbRtKaWfGYgSKT6fCCuZaZY3u0xbw0g
	 l7Zj89MEkGuneneK8gfftYaZyGi5gWWSrdEBSZJ7ch2SU4uxQux0UBqB17P2MK434t
	 K2GWQEWg8mky1Dv84EL2c0o3xUfNQIyhLc0plSxoceKF0l3fJwfL/+pmPakd6iFc+K
	 6ByT89GxvbLjSC2SLaOOvvnpGsu0L3fbXAmWnffZx5aOqdETe37NUdsHgNcQg5zyUQ
	 CSC5sin0Hx6GQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87FBC60EAD;
	Wed, 10 Apr 2024 21:41:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 774851BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 21:41:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60DA280F3D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 21:41:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l6avWlivxq-Q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 21:41:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B39CC80F22
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B39CC80F22
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B39CC80F22
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 21:41:00 +0000 (UTC)
X-CSE-ConnectionGUID: G3l5H6EwRGKDi0z3LOtL9Q==
X-CSE-MsgGUID: 6J3oAmFbR9CMgIp1ECSgow==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="30659238"
X-IronPort-AV: E=Sophos;i="6.07,191,1708416000"; d="scan'208";a="30659238"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 14:41:00 -0700
X-CSE-ConnectionGUID: FS3KNmt/RzaSS/j71k3T6A==
X-CSE-MsgGUID: wLMucYvMTjCb8fO5gxQ1RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,191,1708416000"; d="scan'208";a="58117199"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Apr 2024 14:41:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 14:40:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Apr 2024 14:40:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Apr 2024 14:40:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n68BqnxhlBPOvZSaAlyzNPq58UbfK1Pjup34NAd5cd6riyi0wGa1NVuB023mTZy9dP0hAluSFY26/DVvMij4V1xmf/Ddd7Yu+BrrCnlDd8gXqMfJU1ETsej5LIduM638gQA+69mSgp71CKXoGAk8NDanWG++anK4lVTr7JT4I42aAcs/qOGGfJmKErFdMKtS5xroWadaiMeB1HNDzITZ+FKAZXQle19O4RHPVnDGN7TRAhtYOJix/zmisTqMMmXyXOuOH/xTXF5ZqPOpaaFwN7wnaGC1JqtQTqp17VPFyMUrHvcGmMTWtlR7H75bAI8es56dm36dVtAmFxQPtB6+mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mI8DZLtq/6KYAq9eac57pE+q2ddBVI9tGNDKtqOXnSU=;
 b=b53olBKKN+5qirm/QoRlX2FucISSHL54CwiCshX+LeLr0Oz7gd/Ywn2NJT6DwKzNkRtrKcZuT1z4hNBFRDEJOhRUrLBHm0uIu4JOONiyAfof/fJMb0tpA8eUkh4FwR7S2GIAuLMzcVIKvBP1JxpKxIj3ze1k9DtdUXJv3uDQ0nzVvK6ya3hHQvf0id9VaPxnj4LDA6AFtLxUMIyNvFsCyjssbWss4b+ds4gQvhKqfXeP+CIKO0gYqom0WZ05ZcrXEsCkXIiKzBsxzs2maRdoyph68ubUPeQgfK4xVwa4Iab2+0xc6uS/4gE071cp/UFjb0BZeivYWt3TsXJxb+jsRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DM4PR11MB6333.namprd11.prod.outlook.com (2603:10b6:8:b4::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7452.26; Wed, 10 Apr 2024 21:40:50 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7452.019; Wed, 10 Apr 2024
 21:40:50 +0000
Message-ID: <0eaf238b-0d00-51d8-9bf5-f9fb875277e7@intel.com>
Date: Wed, 10 Apr 2024 14:40:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Buvaneswaran,
 Sujai" <sujai.buvaneswaran@intel.com>
References: <20240312105259.2450-1-michal.swiatkowski@linux.intel.com>
 <PH0PR11MB50130FD5A519919523197C7C96362@PH0PR11MB5013.namprd11.prod.outlook.com>
 <ZgZ6/6/R+5EfQvbb@mev-dev>
 <PH0PR11MB5013EC7967F8B7694B2F5C8C963F2@PH0PR11MB5013.namprd11.prod.outlook.com>
 <Zg+5mIUtMruFRck0@mev-dev> <ZhZio9Kc0FrgNwnN@mev-dev>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <ZhZio9Kc0FrgNwnN@mev-dev>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0003.namprd03.prod.outlook.com
 (2603:10b6:303:8f::8) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DM4PR11MB6333:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fSHC29OV29xBLW93A9pydqzB+9HsKJOBhavdsSDYbneunxpVms7RMR5ji1J6W/6ju90N3CSmkYYzQUXv59Djf2T7YFarnkvWecU1jtnRwWqBUTUJUVex+UdAY9GAEVgy1RVE1uGbb7IPzzQrN8GVAHhy7lNKceTgwCz2EA+TLeYtd7brpDH1PDnVRR+O1mEaRifCENbOyD+8A0wRaEnJnP9IUVlholBlPFopaeyKDpdwaz9b3viMQ+vPQT1chnyic+QHODxaDOIu26/CgOFU5Ub8N4UbD0msMCZHzT5vsMVL0UgPnwUxqu/Jf6HkemX2AZokqtBXHAr7BeU775K3PkQtnzxmdtDBjkaNBUDZXYJVFRi+3Zgt3q87feaX7hQ9Vq6QFRY2lqw+u9MB5olYzaTV1d+se5DgARdn7YDgnqcLS2lefRzMjbxotoADqmBQB4Jt3EmIQCrEsTVbmxrizYKqObilQ16kBoUcLYdWp5NoDSON265adnEwyJT2dghNmmtvR4xXw64dNxncN+gxqwn+WpvSzG8dDJYL7s9VkKhKMTg2OREYk4pc0z8OZJbThK/MFwLp14P34KIykFpnkgwO2WL0zujuAsuNzQxrr8cfJ3bnZdW78Ulc6TspanQTou4bH1jSSjAbdP1ATdQStMj8U5k1IRfpsq2Aj63qIMI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aFl2WmQ1MmhwelMwOFRtNmtYdjJLNWxqZEZuN2kyRmdCNXZuM0ZmUUVhMTUv?=
 =?utf-8?B?dW9ScnJndzM0SDFaUWpTaE45NHg4d0VWV1k4Y2xjL1JLQlpDL0dGMXZ6WXNw?=
 =?utf-8?B?NDgzaStUYlJRMFVrNVdXSGxPK1I0VzM4eHF3cVNCNE9vN0NVVWtCeGNFZ0VY?=
 =?utf-8?B?a3U4b2lMZFd6bVpUUDdDNjI0ZE5aWm1pbG9SMDVBaWMzOWppNW5hcEpiVHhN?=
 =?utf-8?B?UmpCVVJBUlorbEN4NENpbmxZakRhQVRsanYvVGtpV0MzRmorS05QeDVUSHU0?=
 =?utf-8?B?VHIxQ3JhR1U1enBFZERvVXY5TC9HMDkvQmRwRGhRVW8vTnRYTFNGdTQwVEZ6?=
 =?utf-8?B?Z0lMQlRHNG90UmhwMmptcTFLb0NqUkZXc0ZPUFlUSHdFM2VwUjJTU09aa25X?=
 =?utf-8?B?TlpXN2gyUktVNWJ5V0ZZWUNqb3pWQ2VjLzJFN2RWUHVacnRvM0NxZytqMjNB?=
 =?utf-8?B?MGdLTWlZNGp4N3VOeElKbGhkMEQ2My9ub2JsQm5iUnhuZWR6cEtNNlg1bVVW?=
 =?utf-8?B?Qnp2NXdTTHpaMDFVZXhXWk5lRkNCK2xMaHAyQ1JheXJZRkdGYTk4R1lQLzQ0?=
 =?utf-8?B?dVNQQWVUTnkvVXFpVkIxS2MxUE1BakRmYkVIOXI0dWJSOCtZVUJmb0g5Zk9B?=
 =?utf-8?B?MGQ3NWhSYnRuc3JVelZsbFJMdjBEL1JWVXpJaVAvOFAwUWIyaHh5RUFzY25W?=
 =?utf-8?B?Nmc2amlESWJjUmNWK29ucTIvSUtVbGkyU3RsaGtOa3NxbjJ6VnhXZlR3M2hu?=
 =?utf-8?B?OVFla2x3UHBNeDNUbGR1SUY5MitEOUFtT1lzVTlnVHhSSVdodndyN0NIVU01?=
 =?utf-8?B?N1VhRzRCR0VOdmlBNGx0M25IekV4TUk5Tjk0Mm9NTWdNeDJITlpKcGZzMVhZ?=
 =?utf-8?B?eWVSeEpDUmVRNDFDS1o2eStkVDdGRU4rV3hjTWU2bUFIeGZnZGV4U01Sc0xE?=
 =?utf-8?B?ZHhiblRGZHdhZzRXZEdiMWcraUdNdUVzV3l6cEFVck9BZnVtWkErdCszR0Er?=
 =?utf-8?B?a0pMeHcyYjhyNllHMDBYNXIrNXFRRXVLSm4vS3UvMzYzeHlBV2V4dlQvTSs3?=
 =?utf-8?B?QkVGdE9SaSszb3FNc1JwSHhoWVEwdVM5Y1JBeEsrNGlibUJYNzFydzVJdVha?=
 =?utf-8?B?b0t6Y2tiL1Nic1paY2c1OURxWEpIKzJCYnVNSnpEa2NRbUdlMys1SDJwV0FF?=
 =?utf-8?B?MWp1MlJvU0dRTlRUWVNzWWFsdHFkSllJSytPWlMxM3ZXemU5T0UySlg3azJD?=
 =?utf-8?B?VU9KcFlVeFBtWTh1cm1vejI2V2djenZhTFpySmp3T21pL3RFZ0hOTHJDNDJE?=
 =?utf-8?B?djl4L2kvWnRDQXhTQkRRblE3OFJCNVJDNFBMT0xxMVNMSlBxdWRGZTFpcmww?=
 =?utf-8?B?TnBzYlk4M2Y4V0orOEV4dDQwaEYxTE5hK05HaCtaRWhPblI5cUlVY2l4YUox?=
 =?utf-8?B?VUprVnlyWmh6Z280M1NQR3JLVnZCVTNnSFJTVWh1bVNiY3E2emxxdnZ5cmti?=
 =?utf-8?B?cE9PaENiRXl2VlRBV3pUMGpnb2V6OVRkSXdHMHd4bzB4b1BzamNMZTA3RnJm?=
 =?utf-8?B?TTM4Sk9NVXBZTUs4eFM3L2RidElOZ2VlWCsyZ1BkbEFGSTF3YytWWVRSS3ZB?=
 =?utf-8?B?K2Qrdkp2RCtpdGZ4WXB5MjFGSlI1NUQ3ZXpSd1ZiQXlpY1I0eldBTHQ0eE5Y?=
 =?utf-8?B?UTZHUmdtYVFLUlRxRldGOVVrbTBrWGFSUkx4R0Y0R2ZtYlhVWnZFK203YWU4?=
 =?utf-8?B?OVFyK2N0VkpiOUJncVR0ZVBJNUVTU25HNE5LS0ZKU25rZVgrcXRsK1ZxQWJx?=
 =?utf-8?B?bjZRNUdFVFFEdjJiTDYrNXhqeE84ZGdkb3RBaFFRekVncjlUZjFqL1haOG42?=
 =?utf-8?B?aklSYm5vTHg4VVJQdS92eW5ZckZ3VHJROEpxcUhFaUxkRHZIeHlPZmZmTUdI?=
 =?utf-8?B?QXVTbFV5UHVIVU1aOEdKVFhwZ254RXdqMXZrMmZNaVY1czFUMTZmTlNoQ0xB?=
 =?utf-8?B?K3A5aWtBbDh0d2tsMDdxeFY5d0F0U3pUTXFzSytDZkhqN0JsQnVKSGxzNFN6?=
 =?utf-8?B?cVhwN2dKUXVtMG8vZDU4T1lDTkRVdmdIYWx2L2JjU0FlOEFoRDZjMldtWlFs?=
 =?utf-8?B?M3N5QUdaamZkUjBBbWRwRVJBRFNzSXJlYklzNmE0MitmTFhkNDJCREl0akZr?=
 =?utf-8?B?Tmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c6fd76a-3de7-4ab5-f59c-08dc59a6e418
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 21:40:50.8175 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tfTdl/hGNGOR8gAw19Q0SMj80pnYslTubSIedqnztlUgXb8JlVt7kh9mFbyPI793wPo78QjMEv4RAxKIr7jwRPbLYCUTN4YU3Q0vMPR15Ec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6333
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712785260; x=1744321260;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mI8DZLtq/6KYAq9eac57pE+q2ddBVI9tGNDKtqOXnSU=;
 b=XNCJ3vRDIgd8ZzIeX8DB29t9l+pbsO072VqGUpj5tkfsYFu5nHiEKBlf
 8A5LJ8+Agy37Ozf2hhpY3xNKAhRm1fSHrYvujayacBnpfd1w8we5yxIZQ
 lxmbuqALSZ36a+WAm6WLHp+ftwfT+Qw86hQN5ERPinw0WJnG9xYTm27ux
 9KermYl8DOs+mP/WX79OTSAXrlHtVSs8dpD9DI9h511TiIXmqJumuiAHm
 9K3CGxoGtWMlK11cS/5R50bSCATxKR08hdhsnUljVRkksy8sViI6lCJ16
 qqDOEYpjq3B8TNbTlsG4fuEnXDswcf+NELgmxvuTKuSM4sflhYzRx3udj
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XNCJ3vRD
Subject: Re: [Intel-wired-lan] [iwl-net v1] ice: tc: do default match on all
 profiles
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Kubiak,
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/10/2024 2:57 AM, Michal Swiatkowski wrote:
> For now please Tony remove it from next-queue. I am trying
> to figure out how to implement matching on all profiles using less
> indexes. If I find the correct way I will submit new patch.

Patch has been dropped.

Thanks,
Tony
