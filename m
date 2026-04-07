Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJnaKUuK1Wme7QcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 00:50:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E45843B55C1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 00:50:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C83382202;
	Tue,  7 Apr 2026 22:50:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6kkCXjnIGKcP; Tue,  7 Apr 2026 22:50:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B048B821F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775602248;
	bh=PKqaiGAW3kL9psnt6O3/SErAJHoyRWecHdYG38D6UEk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=i54yihhAunxi6ImDe+cvfL+UcAYBC1A9pUcqpAfBWNFHgGu18kQIy1505FosUMint
	 U+QS6L82O36WKdFqhjOBrn+EmjXc+m2S8iQd9IwaRAojIYOoAS3wEVLJbswRiHc9AC
	 kuygAWPx7FYfNo8E6OFPffawfXfis/rv7LoCyTlSp4shpSJyCFv0uHj6wkuaO5Qniz
	 yulcYUMNomwkac4vhqGVhOfEiauCAxA2EBQCEbFcbwMSd3B8SiPoclJd73cImbwt/X
	 PYv7bnr6lZvWAunuZxVilOKnNVbXrQne8Ad8NZKFbukL3irJB2GRA4YKa132Nz5OUX
	 HJXOjjN/+ETdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B048B821F7;
	Tue,  7 Apr 2026 22:50:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 78165237
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 22:50:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 69AAA40ED4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 22:50:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hI3UeUs2NaDV for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2026 22:50:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8469140ED1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8469140ED1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8469140ED1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 22:50:45 +0000 (UTC)
X-CSE-ConnectionGUID: 4Ya0LqDbR9qK1C8QWaOJpw==
X-CSE-MsgGUID: zleI70lPQ3OJWiSOOD3QnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="64123146"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="64123146"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 15:50:45 -0700
X-CSE-ConnectionGUID: tVVt9YPrQNGR1qLYJlIfGw==
X-CSE-MsgGUID: wwV1LHtGT521tRqp9NT4nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="228197122"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 15:50:44 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 15:50:44 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 15:50:44 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.70) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 15:50:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OV2VHl8LUhv6smKHFrjBzvJ8WrEMXbF8TgB6dVsyq3AN0cZPlmYceoGmuyoDxPzZRmVYiLIEuh6CXRj0UdUC2hO91TlZwzm3Zj3gpsm9VTBtuPoTfUTk3D+6ya4HbJWOeaVaSzZLtDq6YnZW2gAGYFi2r1hOe9DS0u4CsGWyQQVBzGHhDyAnEj6jUW2Nw2lodjLiL+WP0rjlrPU7K4EStJ6FnJltw7oNv0Yc8ww7WsdZp9+Bah9TzGEuMAC5/5R4L6vg5bW9GaB1fELj+/ToIAISp2dtqAa1+4gR0w/Y4C1eaHMlp1Sel/YUmL4L/HF83MCOzFu9+NilZui2TwyzXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PKqaiGAW3kL9psnt6O3/SErAJHoyRWecHdYG38D6UEk=;
 b=llJhCx35J2rxZCvRiwXLL6u4YmRrdcs52ySo8Kw4Z71A9JnzurXOLxTqMJr7gBbxuEYrR22RNZzY6sb5nm4k+Z3SbgKYBZ7Ij3aXeL2Qu0e0JktBcrCODDzR6R0jcksM6iiCZ77VidwLV8Ln0V8G5oauW97m5AXl5jOLGGoTOfAc4a7b2HGS2M2U9Ghlys0Hw0mYcrbdzyLreAiNvKQ+nquCZgozEHuc9T4s5EEO7xKxml5Pn4RTA4jFz35nPk/5vmeyeB8JtoyNqiUP8usYszu0ZUhxcBQGllPGeRSLv4QqqaEgEyytv6ND3zUJQFPnHKiZBtlTgCum9dkMyRmskw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 DS4PPF1DFB73954.namprd11.prod.outlook.com (2603:10b6:f:fc02::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Tue, 7 Apr
 2026 22:50:35 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9769.020; Tue, 7 Apr 2026
 22:50:35 +0000
Message-ID: <88c37486-70aa-4109-a5b1-ee74cce23bc5@intel.com>
Date: Tue, 7 Apr 2026 15:50:32 -0700
User-Agent: Mozilla Thunderbird
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Dave Ertman
 <david.m.ertman@intel.com>, Michal Kubiak <michal.kubiak@intel.com>,
 <stable@vger.kernel.org>
References: <20260406145641.1020623-1-jtornosm@redhat.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Content-Language: en-US
In-Reply-To: <20260406145641.1020623-1-jtornosm@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0324.namprd04.prod.outlook.com
 (2603:10b6:303:82::29) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|DS4PPF1DFB73954:EE_
X-MS-Office365-Filtering-Correlation-Id: 193f1fac-0ca9-412f-4db1-08de94f81499
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: ur1yuX0sLwhyEvtKC83vfDPOW+S6jt/dwDaLkHUl7PO5n1lSRyqyVLPmn1klctOJLmQs8qFIHCpwFoAahowi72BEiEG4EImlGVhRk10L0inWlzE8dIznkwXhJbquxECB2CS4jVIWComi1hJDnM2TqaxEmgBjmuDvkAU7yQ6kWjoICEmN2dYptnvmsM4T9KCbDuzF+1RQPRSKwNbCNH5uNhGkbW/mMZB+4Y5kmXE+kpfblUQDHuJX0745axwYM6bNxGTQ31Lbk3F0WG9+HEQj0VSKziTmncPcctTdIldAnC66UeAfFoHMFBpiVKCW20QJDrNfBdFg2GrcV7n+V+lU5YMv4gapIPet/QCAlMmKxt5BP9wqtJvKYV+UoDnDTa9e4XDh1pOqme5faLRaDvOsDysuCBSho5Sf3FnpNbQCENc2jLbwU8TeRJkJaVF1zQnnjeqSFYzYpz5iFwmsJQH8Kp3Im4Sj7eUQVnLTKF0WPrue1Ja0hxigaEaPQNDLmA/S6CubI6kez82DmRaRKF4bS2GARFIkqtEcQEV3XDwTb176DxCj9dkMm/rwcj2+5I+wAmDzMiuKd7XeMuDZ+T2Ae8WTvkjID2GjnfZsEKo/s5VALdOE/cCMrFcmDK5Qtgrs/zbENUxMoo6TJqbAYSqwTCqsijPaeNnxTm9PPzk2FKW79FN82yvUVc/0WzWadwJnVjqXalaZfZeSzDFKwd6Cns6kdljunuZQYDzk1OriXDs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U0srSU9iRDRJT24wV3VORWkyNzJWaGpKWWFYQklhcENBaUh0TFE2STFNU3Zj?=
 =?utf-8?B?VXpteXR6WlpUWUtnZkY5a09lTnNPMXU4VVJSamNNcTFrcjRXUEswcHBPTjFQ?=
 =?utf-8?B?REJCMmdwQXgrM0hZVDJBUm9OKzdVaS9PTzlZbzh5ZDV0cmdDNnlOTEowZHN1?=
 =?utf-8?B?emxqWTNiaTB6TVJydTZaN29RVjR1YjlxdjBMSDJuazNad1V0aVBWOG5XVUgx?=
 =?utf-8?B?WDhkVG93R1ZBUmsxZnM4WG1tZ3BhWm1CTGRuUUplaktxNUdMTFVVcS9yaEto?=
 =?utf-8?B?anliK1ZRaFFXaTdvUWwyQWp2b1ZRSEJmUjFHVnBHajBYTmtvUGxROGJUSXgx?=
 =?utf-8?B?VWdINklFTmJzUGkyZGZTd25DWjNlWm9xM3d6K3ZiN2crbkVFMkQ4N3NtUGJt?=
 =?utf-8?B?TVJHY0tPNnA2ZXpLbEJKVXRYUGlENjkvQlV1OTVnTGZ1RGhLellnZ25MWGRM?=
 =?utf-8?B?ZTRvNHVBVHA1UXp1aWRFSExsRkZHbXlqQTNiTUJHWGpVdmNJeVgxV3F0RlRS?=
 =?utf-8?B?UG11VHBQa0dKZi9uMER1UHpvRDhldS9FVzJpU3VvUDh0MEdGU3A4Zys2VHF5?=
 =?utf-8?B?MFA0ZzNCMFJ1eW1IMVFxdVZKdWRvMnY1T3F1Vkc0VmpsWFdHRDh5eG1xTUJh?=
 =?utf-8?B?MTlvM3pBZXZMQUhmU0xsaUhuVDl0Rnh3b0syUDZ2aERqQUx1RGZjN1lxTkVy?=
 =?utf-8?B?ZG9sWXY3SlhJUEd1WjVVenhoSzY3TjljM2I2WEZKZi83cW15R3krejdzaEhW?=
 =?utf-8?B?NDNzTC9DbGNOVFF1SGpnY3Z0Y2FST3F4Nitmd3o5U0pXS1JkeFlsRVdxT1Fs?=
 =?utf-8?B?aXhpQjNrWUxZZ000Z2daUzdZN04wWXNQbkMrNE82RkE2U29wUlBubFV2QmJs?=
 =?utf-8?B?SGFQNXU1eWppaFE2OE5MSmtJaWprUEYzeERZWnJTT0h5MHErVlhwNEpRVk5k?=
 =?utf-8?B?Z0RoRDVRbVBNdFJ4Nkg0UytHeVNRQVR4RXZaaWN2d2FleEZpbnByKy9HQmdY?=
 =?utf-8?B?Tmo1dk5LeVJ1NzUyb0dXdSs4MEZaZ2I2K3FlMEpMc1pSM3VYTXhnTTdpZ3lh?=
 =?utf-8?B?cjFFTkdJczRCNHRUK0I0ZHczdXRPbFIrQThiM0JLMXExT1dUNjV4N3dZbFY5?=
 =?utf-8?B?NVZOMThuRzQraGpHOU0xc3dCVE5mTFlvbWF4QXZBMDk3eUltdTE1ZUlFL09M?=
 =?utf-8?B?YW9OcmxURXM2cElxOHd2MkNrQjIyTEdzVGZ4MkdhYVgvMjJRWDlEZUJxdmRL?=
 =?utf-8?B?M3VqNkdJdGRuenlrN0ZRaFNKZ3RkR0srdzFHOVc2ZzF5UktzVnlWZTVHd1JB?=
 =?utf-8?B?eDRTaUFtNmRmOVZGZ2M3RXNWU3dsQWdFWDd5cFI3a2t0cUVXbERtckRBd3VO?=
 =?utf-8?B?cnUrQ3c5T0R4NVNOK1ErUDlydXRsZllPRFpRS1dBN1BWNVNSd1lnd0wzbGJT?=
 =?utf-8?B?MHE1cmZFZUF6OVl6NHJnYWRQNnR4Y21JS0dhYVplVEdnTUxIUEZiR0Z5U0NX?=
 =?utf-8?B?M3VpUkxSbWh3UkRwdDJJZU5ieE9ObVBOK0VIRzc0MERwSjB4c3dES0xnRnhx?=
 =?utf-8?B?bGw2ejZJWXg5NG82NGF4Yk5sYlhHdnNqaFB2VlRpYklMVUZpNjQ2U3FBVlRw?=
 =?utf-8?B?a2ZOYTZDYUpLSnorVkErajVqN0xxeiswRXZjdTI0dlJ5c2hQZUl5Wmo1RnA1?=
 =?utf-8?B?RXlFMDV2SnZ2T3V0U0M0dG9mSlFUcUhaRUNOaklpTEMzN0VhbzJrcmFJT1I5?=
 =?utf-8?B?UksxV0FDQnY0SXYwZzYrSzNYOG1CQ0VNSmNVQ2NrbnNlY2lqcFpZR0xFdE0y?=
 =?utf-8?B?eTBQNERNdlh5eEp3K3gvSzR3bUh1ZG5lSHd6NjN0TEFWKzRVVnRsUUFZV2FR?=
 =?utf-8?B?bGc2bVpQRnVYNWdxUDhXMThSWi9FOTlIMzZIcC9RR1A5Nkw5YnZRNjV5a2tD?=
 =?utf-8?B?QkdXNmIxOU1KUXNKN2RRZGMrN210ajNjR1ZIQ0xYcDRTRjdnYUlxd3JZU1BC?=
 =?utf-8?B?K1RNcGZ1cWFDaktQcmZmUVVBaWpQQ040UWxIejB1Z2ZsNHBYS28zOXZJWTJn?=
 =?utf-8?B?Y3pDWUFHa1k3aVV2SXhtU1BWSy82VFU3VVhkZk9CSWdRTldiREdVM3NZd0ZE?=
 =?utf-8?B?T0Q4Z0RrOUFwb0crY29ocUlYTmdIc1FVNDRSOFpLejN5VFdQWGFwejBLRDlI?=
 =?utf-8?B?UVZPNE5Ddm9UellYMjloOXJWbHc1eWtLQ0ZEbExnZXNXaEQyVkExMHc3Y3Uy?=
 =?utf-8?B?QldnbC9BVmh5OXJ0cUVGNVpaKzlORE5uWVZXL1VuOHhiaGJnbUI1UEtzTi9I?=
 =?utf-8?B?Yk84bzlNdjM3TTBNdjR1cFA3eGV5cEVLczVCQmFMSjl6VERncEU5ZkxrdEV5?=
 =?utf-8?Q?md7XCd0fIiZznGJk=3D?=
X-Exchange-RoutingPolicyChecked: nhCKfuXpcNts7TY1lpE4zquSpLSZQ+GPnnghqvgBuOCwFHZ7NjBmrNU2Vtj+iAWFx5slfwFd6Kd2ZiXHfPRmLvteKjzRIg529OOX31q7RjRDgvUhJY/yWaDKr8HCrdsNZ4amdqPdPqztMSVjBS+fDOrhMAiRzbsU6Yi1JSacIONhmxh7i6G/jlIU83LUARx2U2DjRs72BBrH8WuuaqufMdOomKHFu5ja3RXnaOgLMGq3VpRgiRnmNxjIxnWGWK4s/4A1MmViao5IGhvnhZMaFKVuEOBTdDSasVp9+JlL+A5NnZltT6iGN+7/Gw8z6BDJyoZGumqZJpIQnKf6lShaBA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 193f1fac-0ca9-412f-4db1-08de94f81499
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 22:50:35.3150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +5x6F+hEIrql128Qrvk3dff8b7Ri+kr2YGWZotb7TW5dVVNUo8fSuiChm7wPWdF77ljJEWtdpzMHNFOo15/Xr/4H5CE9JON8TJY4vRGyVVc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF1DFB73954
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775602247; x=1807138247;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RQ/HCwORmJPfXv0upYSOJDN/XmKsp5Um15urElrRKEI=;
 b=EiyNdkacbrP0OL0GIatp4tSXULvkzekB93lDXUMQJ6oNTtkjMTtoOzQQ
 GwMknYGeqh+tXrDH3k5cU+Pmr+yXJVo6ZrpbQKffe+3fBFREYXKAc5+mJ
 26m19hqDGrA+Ma9AH7Sfj2Pm6tLAMe4VpyorMNWpdYdkhPA2zs2lz6T4q
 ramLOt4gPyvWfco9uDT+PK7zIchRrX68ICPAJnKsBmAyCcnr1fRu3hv+K
 6EuTiAKtzEOhHwksNpozzcA9d2+xx6TL8IZbXkm4G39jETuvFVeBoEYio
 jwAa+rMfdFk5tUzd1PFto5Tfaq0bnGrIVa3pfD5J+9BzUnKN0tB5JM9hF
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EiyNdkac
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix VF queue configuration
 with low MTU values
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:michal.swiatkowski@linux.intel.com,m:david.m.ertman@intel.com,m:michal.kubiak@intel.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E45843B55C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/6/2026 7:56 AM, Jose Ignacio Tornos Martinez wrote:
> The ice driver's VF queue configuration validation rejects
> databuffer_size values below 1024 bytes, which prevents VFs from
> using MTU values below 871 bytes.
> 
> The iavf driver calculates databuffer_size based on the MTU using:
>   databuffer_size = ALIGN(MTU + LIBETH_RX_LL_LEN, 128)
> 
> where LIBETH_RX_LL_LEN = 26 (ETH_HLEN + 2*VLAN_HLEN + ETH_FCS_LEN).
> 
> For MTU values below 871:
>   MTU 870: 870 + 26 = 896, aligned to 128 = 896 (< 1024, rejected)
>   MTU 871: 871 + 26 = 897, aligned to 128 = 1024 (>= 1024, accepted)
> 
> The 1024-byte minimum seems unnecessarily restrictive, because the hardware
> supports databuffer_size as low as 128 bytes (the alignment boundary),
> which should allow MTU values down to the standard minimum of 68 bytes.
> 
> I haven't found the reason why the limit was configured in the commit
> 9c7dd7566d18 ("ice: add validation in OP_CONFIG_VSI_QUEUES VF message"), so
> with no more information and since it is working, change the minimum
> databuffer_size validation from 1024 to 128 bytes to allow standard low
> MTU values while still preventing invalid configurations.
> 

I dug through some of our internal history and found that there was no
justification on why 1024 was chosen.

I agree with your assessment that the value of 128 makes the most sense
as it is the actual hardware minimum. I wonder if we used to always use
data buffer sizes of 1024 before the conversion to libeth. Either way, I
think it makes sense to allow smaller buffers since the modern iAVF will
request them.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> Fixes: 9c7dd7566d18 ("ice: add validation in OP_CONFIG_VSI_QUEUES VF message")
> cc: stable@vger.kernel.org
> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/virt/queues.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/virt/queues.c b/drivers/net/ethernet/intel/ice/virt/queues.c
> index f73d5a3e83d4..31be2f76181c 100644
> --- a/drivers/net/ethernet/intel/ice/virt/queues.c
> +++ b/drivers/net/ethernet/intel/ice/virt/queues.c
> @@ -840,7 +840,7 @@ int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
>  
>  			if (qpi->rxq.databuffer_size != 0 &&
>  			    (qpi->rxq.databuffer_size > ((16 * 1024) - 128) ||
> -			     qpi->rxq.databuffer_size < 1024))
> +			     qpi->rxq.databuffer_size < 128))
>  				goto error_param;
>  
>  			ring->rx_buf_len = qpi->rxq.databuffer_size;

