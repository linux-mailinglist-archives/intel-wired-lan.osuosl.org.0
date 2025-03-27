Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E58A732D0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Mar 2025 14:00:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 444CE812E9;
	Thu, 27 Mar 2025 13:00:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0lZ5JMH8b8av; Thu, 27 Mar 2025 13:00:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99AD9813C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743080429;
	bh=H+sTwFxbyw+tO26cqu+qgHNx+cQKjLTEiMxuJi4dcxY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U/Az+NP3uC0FEK//4DVl/3zle1bV5XJI4DB3ARnUbQdp8CM90CgmQ3pLumex0PHR5
	 Xoh07EGi0YQR1oSqsV/mCjAkIvHxb+/hk3aDfwzH6SQG7so6aXfRfL4rSOzF5lqagc
	 nSyyZKilPvBDYNj9Atp9vGWg3WwUk3BVzq3JKd3NYPNbW7lBuoQEKebw06E5uXa0RU
	 GKBGZ8UXr0i0RF8W6rqbrpJiGHpV6JjCFAExzcxA+wqH+DKFazEq1hMK2vJCrsMGIh
	 riAGRp2aUVfXnU9lcOgVWMIoqXu6Yto8O1f2u3Ra2rxcRdRM/o+4X4gS5qEqaFKFic
	 dSxaBDvEJRlTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99AD9813C3;
	Thu, 27 Mar 2025 13:00:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 033D81B7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Mar 2025 13:00:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DDEF36090B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Mar 2025 13:00:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6sNOiEfiIN2b for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Mar 2025 13:00:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1A9E2608CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A9E2608CB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A9E2608CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Mar 2025 13:00:26 +0000 (UTC)
X-CSE-ConnectionGUID: aWaCQ6QdT0KNYEomS1aAxA==
X-CSE-MsgGUID: rvR7siZQThu8TSD9PVJ1pw==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="48067338"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="48067338"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 06:00:26 -0700
X-CSE-ConnectionGUID: xVqqDMVzTC+z90X98NTW1w==
X-CSE-MsgGUID: +wpg5VkqTbiisUpsb6EKkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="124932561"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 06:00:05 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Mar 2025 06:00:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Mar 2025 06:00:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Mar 2025 06:00:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nd298wFDwUPS1ZaBjZodDN+FEznMkygMfMApyFY3DZPoKxH+d5iUTArmGTncTo3sSXCVPl68njrpUB8IcU/oqlm0Amz5YhuH0kyCWn964DvgHzFQJGCZN4TrL1E7eBVb9BXJJZElPbVd41kiqpoJFKF0SDN8fIQEJhDMRt+U1AyqD+JQ+K/+EnaZ+524sUahWLcbYKezncaUti+PMd42LX2IiL1FmvAn2jQb9S+hAu6g44j1Mf/RPDOwlnKDAGMveAcV0LVZ2mgZ7m/0LI4ZkAc6CpG0h5Yeap62v6NPMA7jyvVWC0C08xgCkm214ddjVmYfSmZvLfvxpSimp8I7YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H+sTwFxbyw+tO26cqu+qgHNx+cQKjLTEiMxuJi4dcxY=;
 b=pLY/cKPyVJGg4I/o8yMnymHbVFXp8AEP+Chn2P5Tmad6GMvj/PIi9X4E8lc73yVrq4SclHbAPdt3W+K+rUXE0TaRyNbOSINrLDbWdQ+i+0A898Yefmh6O34u3fbRXZxDGItcKzGXZsZXJKRgDAJmLxJCZDy68cW4+UZOZo5w04qga7+lYZSSL5ELbNzJa7OJsbiEIWnCp0xzhYsI/lZ++aT5gdonu4yg8jLOZCBrmqVBYoIlt3RdxHyB/Tw2M3cHUHvU0hdS0jHe9deinEqwJ6HtL4NrVnXUYbWqLA+ZiWGeHzaC9vXj/HC740T0SOIzcyrXWw5iNBhfIQjP8/8dMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by DS0PR11MB8719.namprd11.prod.outlook.com (2603:10b6:8:1a8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 27 Mar
 2025 12:59:47 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%6]) with mapi id 15.20.8534.043; Thu, 27 Mar 2025
 12:59:47 +0000
Message-ID: <6e1ee185-c7e0-4539-b8fb-fa6cb02571a6@intel.com>
Date: Thu, 27 Mar 2025 14:59:37 +0200
User-Agent: Mozilla Thunderbird
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Simon Horman <horms@kernel.org>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer
 <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Furong Xu
 <0x1207@gmail.com>, Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Hariprasad Kelam
 <hkelam@marvell.com>, Xiaolei Wang <xiaolei.wang@windriver.com>, "Suraj
 Jaiswal" <quic_jsuraj@quicinc.com>, Kory Maincent
 <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>, Jesper Nilsson
 <jesper.nilsson@axis.com>, <linux-arm-kernel@lists.infradead.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bpf@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Chwee-Lin Choong
 <chwee.lin.choong@intel.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Kunihiko Hayashi
 <hayashi.kunihiko@socionext.com>, Serge Semin <fancer.lancer@gmail.com>
References: <20250318030742.2567080-1-faizal.abdul.rahim@linux.intel.com>
 <20250318030742.2567080-9-faizal.abdul.rahim@linux.intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250318030742.2567080-9-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::13) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|DS0PR11MB8719:EE_
X-MS-Office365-Filtering-Correlation-Id: a5176a22-5de1-41fe-d214-08dd6d2f40aa
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?djVIUGpJVmxrL0swdHBudHFCVHkwUGNnclRQUExyeWl5cHpnbmRoRDlFSHVW?=
 =?utf-8?B?R1Yvay9YNXRtTm1PcEd6cFJBeGRlYzBZT3VlNCtOOThFSU9FNEJHSDZ3L3Ix?=
 =?utf-8?B?bTc1dWNRVng1TVkrZ3lLN1haaDVHTkJFOFRiVVFyNUZyZllZbXB6OTB3QVkw?=
 =?utf-8?B?azg5R3MvRmdCWkJGVDR4cy85a3pGQVFsN3g3WUlpb2NvVkZCdjRjbWRXeGQx?=
 =?utf-8?B?TVlVVzFBYStrS05Bb0p6VjlTaXkzd3ZIU0YrbGFWQXJYSGNDKytWN1hBSG1U?=
 =?utf-8?B?a2JqQXBZVlplV2c5WmJaZFVxdFlHUm1hcExsZXhTZS9WclgxL2EvZ2VWaTk0?=
 =?utf-8?B?c1FqTytWMlM5bXF6ejN3NWQ2dmR4Y21hQ2syWmVyYWl5Vjdld21vcXhOZndB?=
 =?utf-8?B?L2FuN3pIZExzNzdhWWVia25HbUY0WDRpbllsS3dqTGpiQjJoK25TWERKZlpK?=
 =?utf-8?B?eXMrYUViNjNZOENiZUpKY3BmUDE3WE01YmpnRHBVZWFFU1VmcEI4YUdSWVJo?=
 =?utf-8?B?d2I2UE9BLy9HL0pBZXpxb2FrNzRPN3Z6Ym4yNk1LdGdTWDhYbzd5QmdxQ1d1?=
 =?utf-8?B?WFdsSUZMNGpLSzVUQUJIRXg3Q0UxM0liTkxwMVUzQ295YUlqUENib0ZSRFZz?=
 =?utf-8?B?bk9ySGl1VUdVS1hwVWZ3MnpVRXdEVkFlTzByOXhhZzU5bTZkZGxESEpZYXQ3?=
 =?utf-8?B?aEdMYTk2NjZ6N3Q0VkxXK1ZZUi91ZjRvY1lsUHE5MFE0VUhVd1FEM3JHVUYw?=
 =?utf-8?B?MnRwSVl5bllDQ2tQVlhwb0pJbGpEamRlazNVMWdYeUhOYk12Y0JXNlRnNVpu?=
 =?utf-8?B?WENIR3ppRHBDTmFkMng2M3pSOUZpNUdqQkdNREFHaTF3NmZ0U1NkQUUxOCtv?=
 =?utf-8?B?Qk9EZGladC9IN3VwSEhKVnFJU0FXdUdSbnJtcmMxemc1bnhTWGM5bUdPZnha?=
 =?utf-8?B?STRTVG02SkE4MVFlRUQ4aTZIdm1uQy9uSzZxbmtCSkV5Zm9HUTUxSCtjK3dI?=
 =?utf-8?B?Vy9xNHh0R2RCUUIrMTZCZjRTbzkrU1MxTm4zUjlsQVhpd3NjVHhMTEs2Mmhp?=
 =?utf-8?B?N1luYUg5dDl5VWJUZVA1aDBWTDRpWTAyNnNJQkY5WFVCNlYwK0krR2x0TWxq?=
 =?utf-8?B?RDdET0QrdDlvU1JPczltVUh6NFBrVysrN0tyR1k0LzUxZnU1RS9qbyswRGhC?=
 =?utf-8?B?c1N2WmQ4ZnY2WHRNZU5Da1dubjRqYXlTdjdmamFJVno0U1ppTmlFaGowbTcr?=
 =?utf-8?B?bGw2RnZhUXhKZVFTWkw5eW9tZzVSYnpuck1LclVOY2tEQ1lraVVyTUgxVDZH?=
 =?utf-8?B?OEc2eGZlUzgxbnFnbHZCeDFDUlBnc0x6bGcxM1ZXcFZyeE9CbHZGaW9HVEVy?=
 =?utf-8?B?K3ZManhjdnBQc29zOGlPN2h6bmRDYXBOZUpBbWxJZ0hUMWMrMy9uMGtxaCsz?=
 =?utf-8?B?eEF4eGdUdnBzSUZ0anJjQ2pxOWFqWU81VkVoNkIxUVRWc3pXZkxvZFV0TFA2?=
 =?utf-8?B?WlZyNGk0bUc0T3kxeVcyb3doVEdhSU5uOFlUdkJVdm1uU2t2T1lDbG1ZVTls?=
 =?utf-8?B?QnpsNVZTZWdpTXNBTUJ6aXFnV0xUWTIvUVRybkRzVnZINDAxeEVyVXhDYllF?=
 =?utf-8?B?M3dkTEljblVBNzlLdVZPWTFJSUx0aW5iYlU0Z1JIcDZYY3pkdElJQy85T2FS?=
 =?utf-8?B?N1V1SWhobmkxc2U1czJxaDFTS1BLODdIVUFGdHJsZUw1YTdPZ0FxbnRDV3My?=
 =?utf-8?B?a2tLUTNEeFVxaGJIODVjdE5CdS9aVUllS0dpZXNzMlBMVWdxZGxDSDEvRlB0?=
 =?utf-8?B?SVJXdFlVSEkvZEhZN0tWbHg0dzc0T3UvKys0dkRiUUo2bk1GTmNjRmNiQW9J?=
 =?utf-8?B?ajg0MEh5QXo1bDdmNFU5aXY1YTB6bTNhS21tMXd6bS9zVlQ5ZGRxMkRKUzAx?=
 =?utf-8?Q?s9woj1Mp4WA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWJEcjJKYWE0a1Iwbk9WWnRsQ1gvT3l1UnVQcFJjY0hiLzdvUk0xN0dUazJD?=
 =?utf-8?B?QjJGS2pheGNiUXVHamJKVjc0enRpeTdDOXd5RjFMMWROWUhKcHl2dDhaMGV4?=
 =?utf-8?B?Rk9NQnFWNWwzeTZDaHA2TW4zWHl2a2ExV1VDQ1ZQcWJLT0RwdWlia1hJcTdz?=
 =?utf-8?B?S2xZbndYWWNZYnN0WjNnNkpuekF5a1ZENHRObmdwV2ZudEhiajYzYkhGc25Q?=
 =?utf-8?B?anVjamU4eWwzaUxTWEpZMFBFVVBUUExmY1dxVDVjcGNRZlRDbWpJMmVWK2g5?=
 =?utf-8?B?U3JjZHRHTG9reko3UWxTRHd5UVdKelJ4Z1BmbkVXTFZEVWVHc0ZzT3p6aWdW?=
 =?utf-8?B?ZHgvRmVkdkNrWnpadVAyQUl4aEErQTQ0NklOdE14MmZBMjBwV1NjaUlUTnRy?=
 =?utf-8?B?a0w2UE9sMk1kdFlHYWQ4SUUybXVIeVZDWE84eFRxbXpZbWlremZBN0FST1pH?=
 =?utf-8?B?U01pK1UyMEtQd3lqT2k5bnNzYUFDakVpWVMrL1ltNy9Uak9xdTY4eVpseVlu?=
 =?utf-8?B?b1E2K3ZGdnpvSGorZXhzaHVOQjZKQlVmUTVWZnRxQTNBN3l2b0RMZjJRNnhL?=
 =?utf-8?B?eXJPYXNiNmUzazhMZHRMTXI5WXAyM3E0ZjluOXRyT09qaytsREhQTDFLcys3?=
 =?utf-8?B?TWMwQ0R4RjRKbmZLd0N0K1ljQytkOWVrSXNJQlBaUUQzVElZb3hDUkI3Ris2?=
 =?utf-8?B?bGhndFhBZHNjRDFwSGRQQkpKWmlJdXNxLzQyY1ZhSWxsemxoWmM0MGxSZ1dD?=
 =?utf-8?B?MXFrNHA3bFNoajNKRURPUFBJQTdlSk5Nb3BTQXJWeVlWdTRQV0J2UVFzMzRX?=
 =?utf-8?B?eW9FbkZVRFQyT3dPNUJzMXRrTWwrWDVCcWNHNXNuaFNTMGIzdzg5aUVUQTlS?=
 =?utf-8?B?U2FoZVFNcXlwTzg1VEpWNFZTWUdHN2p0T1h5Y29COS8rSDNtK0l5WG1Xckw0?=
 =?utf-8?B?MXE3VzJZdUYydDNVWitwUzBJKy9SZlZHdTJNQThpQVdjakY5VHNsVmhFemo4?=
 =?utf-8?B?WUFYS3p2UVZyc0lFWGRDMWFXMXN5NEJ6TXd4T0gyTXp5aHdqdFptT0s0U2gz?=
 =?utf-8?B?TGtNdnlieUlRbTRMYW5NaVV6TjUwcXJNZTQ2ZmVoWi9sQXhxTGhaSEgyOUFK?=
 =?utf-8?B?enVEVlFMQ0tZQ1VLenlxdUZVVEZnWms0RFp3NWxCZ0IrSWpkYmFtdU1CTWFa?=
 =?utf-8?B?VDNBcEc3SlpXa2swcFJldXNnNlorblQ1eS96eUtWN1FZd0pXSU9HNHY3bUFS?=
 =?utf-8?B?OCt3NDdXVU15YkNKMHhNVlEyWWlUS2lRVHlyTUhnc0dNV0dnNmxqcWY3cThy?=
 =?utf-8?B?OXZmMWhUalE3dWZCVVN5djhURjZERVk3UUYvSDhwVjdMWGhhSlpGSzBPSVpF?=
 =?utf-8?B?akN1UXd4bzNLdGoraUJ1ZHYyZXhGQlVvN2pBUVdxbjlGYm5JUzVuWXozNmNa?=
 =?utf-8?B?allUUGF6ZHdhK0E1Tmd5dC9oSCtiTTl4bXRqZ01EbWt2UHhlS3kxYlQ5RXJR?=
 =?utf-8?B?TnJUbE9NR1ZCVVRlTzVPZi9IRWxva2UwNGl1bVZoRDA4WW9oVEoyUjNLdElm?=
 =?utf-8?B?SkhIMzh0d285Z1VyUU5uWENuSWl3MXdsVWMxVFlMeVJScXpVeGwxSzZjUXor?=
 =?utf-8?B?UlFtR1JhNkpVd2xXUUhJZ2ZQcm1XZlpxK2RwNUwxRjVyV0dSR05xVXVoS2FO?=
 =?utf-8?B?NVpOWkV4aTlaTW13S3c5MnFkeDhwSmQ1NU85M2VpRW0zQ1JNZndpUGlCUzlU?=
 =?utf-8?B?RHJRQVRiaEMyUnNKRGFNQ3ZPN2tac3lvWnNmWHB2WVh0NkZXdW1HU2p3R0Rx?=
 =?utf-8?B?UlpzWENDdWRGN0w5MnoxdGxCVTFYVk5tU3F2UVczc0s4R3ZuMnB1OUJJNUhq?=
 =?utf-8?B?RWpjcUdPVlRZY2J6Ni95bGl1dEFJZTliSjZDS2dTVXo0SDU3MmZEZmNQS1lO?=
 =?utf-8?B?aHNpekQwY3V0azI3TXl6eExhVVBjVFJxTXJ3d2srYWxadUVDWUE4YlRkcXJM?=
 =?utf-8?B?Y040YmI5YmhOY2hUWmtnbU43TjRnVVNpSVpqU2ZDYjFKaU5YbnQrd3VNdFdv?=
 =?utf-8?B?cWJKdmlGYVZjZjd0WUJkbnEwRmJnbzRPSEdvU3l2WDhud1psQzhKdTVQL1VV?=
 =?utf-8?B?Y29mUEtqV1lxZk5kbEx6UnBIZW1hbkgzQStwRXRIOCthSFgrS2VhYVdteXFr?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5176a22-5de1-41fe-d214-08dd6d2f40aa
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2025 12:59:47.4871 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2G+IOzYl5SxAW2hvOJV0NJibWEuXWZBD+Ss3B1m+KjEzqyEH56nDZtDdK3QhIoZ2DJMRehruM/dfqPXuztEo9rvvVNkImOZDK7Llan064B8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8719
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743080428; x=1774616428;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Dw4TGzeLZ3mNF6q6DUhXG3mSxQ0otaB9sowwrbyNO0s=;
 b=T5j0XqHhEra8WbIUSw2JHDVy0MgqFZ6ZZ+cAq1zIysvoeoW2cm85J8Il
 FzzVVf8B3qI5bw9LoSLHGu7svxAeTESTsJrwWRpI9BxornM1QVrqZrzIA
 LKs2Iw3DNOZgSPkJXsPKdZcBAsmR0jbEFwm3UgvgF1HhmemMhy3UL9kX3
 QmSjKEQErbptQFVorxHPzsOVZ+UuEQsiqVY33hqdpRxgjqVLGh4pKiDgO
 63BLmYA7FcB3bK632Qd4QurgkopYKgxX3L1JGvusrLsGn3ZrX2x8a7b8d
 z16//MvQcBmNT10ZdwlSQWO8TMSDE17kLpK70tKV8ZprA4OjI9t+2futu
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T5j0XqHh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 08/14] igc: use
 FIELD_PREP and GENMASK for existing RX packet buffer size
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

On 18/03/2025 5:07, Faizal Rahim wrote:
> Prepare for an upcoming patch that modifies the RX buffer size in TSN mode.
> Refactor IGC_RXPBSIZE_EXP_BMC_DEFAULT and IGC_RXPBS_CFG_TS_EN using
> FIELD_PREP and GENMASK to improve clarity and maintainability. Refactor
> both macros for consistency, even though the upcoming patch only use
> IGC_RXPBSIZE_EXP_BMC_DEFAULT.
> 
> The newly introduced macros follow the naming from the i226 SW User Manual
> for easy reference.
> 
> I've tested IGC_RXPBSIZE_EXP_BMC_DEFAULT and IGC_RXPBS_CFG_TS_EN before
> and after the refactoring, and their values remain unchanged.
> 
> Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h | 17 ++++++++++++++---
>   1 file changed, 14 insertions(+), 3 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
