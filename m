Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3824653D036
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Jun 2022 20:01:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0A1140BCA;
	Fri,  3 Jun 2022 18:01:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8sTt4x49ze9L; Fri,  3 Jun 2022 18:01:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AAD8C40516;
	Fri,  3 Jun 2022 18:01:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4DE881BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jun 2022 18:01:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A36940516
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jun 2022 18:01:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3wfDuCP4PBxU for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jun 2022 18:01:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E9146401B1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jun 2022 18:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654279292; x=1685815292;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wTVJK8zVJsEWxlWbmGt42Wj4bjo1kXhJPVgrxjTSIa4=;
 b=IFlHfDzUH6jrZPsm3Wz2uecZLfKYWgP1UN4vsj5xHUimnLcMnTEhgaOK
 ieulqPih8NBzTqA1aWaVnGrUiUjBWCCkcuhFWo5RTrRRx8OkA28ZPjOdS
 PSbJ5ymK7Stsr8zdoxjqxY5ADJMQuYiHaiTvXnQv9cTWNG5zViAyIrp6n
 2SIvk07aUB+myoopSDF9iyKndP7EmWqqELWgx0TZTqpbXQK0Ra1Bwe+i3
 7VihfGdybyYmM1HqX3m34JPjvVytvRqciVfG1RUYkSIA/J274Ud4h65Lc
 y1w2BEw4loeheuJein25wTkKes7lAhsbQN+5tG7NtIV9UN6S2h90N58tp A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10367"; a="336974061"
X-IronPort-AV: E=Sophos;i="5.91,275,1647327600"; d="scan'208";a="336974061"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 11:01:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,275,1647327600"; d="scan'208";a="578139129"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga007.jf.intel.com with ESMTP; 03 Jun 2022 11:01:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 3 Jun 2022 11:01:28 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 3 Jun 2022 11:00:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 3 Jun 2022 11:00:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 3 Jun 2022 11:00:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U80QGhW839QayvrEl/zuLvdvILorMHPOQ2itKEgIJCJvttAxCv4fnr/dlLs2FHStd4KjWD39x+L1lRGMxRnye+XnKRhbI+R3rGDt8uCJ8dT+kFb7h5dWunSrtav9F1gQsZZ6tU6aBD7XLbCWLQkNZgToG1uJn6B/3hcTj4jvndfrkJyNm5R4UpDg2MGWzNLeZvuy4eR5RXHuUo3AxEnlwSiSmOdt00ryNxshc2IyiKuSW9eoodt8ZslfcGpuH0aK+c1WlHbYwlNre/EwRglYIkQ9138dyV6Ey68/AW+6/ralZh9tC2YCy5DMHWeQp+CHwFsSTZurq9+EUw2CbCxFNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nc6S1BAAwhFpoVU5UdHjWFdzvBRWMMqbNoGx9juCW1s=;
 b=GGt5uElF2HPIBuvkanUircWN8nvTrsaCSx4Huc9cyZlDQZZL/grLXcxct0xqumtbqw3a0VCefQMh3erTc7D1wqLyll+sZ34FjCGjmY7avvOz2HmaYFnkKA5rqTDusMcQqe9kVf30jkDqJPGLBNSd45cXNONPC0qs5NsIAxNcUAFGVZ0Iqi2DVM2Vy+Wu5uo07Wky/Tk3Hl+JNj/x3f5NNy3JE9LlnHEekZZbqkTz0YfKb05JqMrJ3ZZvCgYx8ay+2hZ8UIOUfhvJE3LpIWItRkgsA144/bh+oa8t84bpa4zzDJHtAEwspe+XxzKLl2LRZQvJnftHwDRF8+RiPd41mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM4PR11MB6017.namprd11.prod.outlook.com (2603:10b6:8:5c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.12; Fri, 3 Jun
 2022 18:00:41 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5314.015; Fri, 3 Jun 2022
 18:00:41 +0000
Message-ID: <ef312927-bded-682f-95f5-e0d9e6bd770d@intel.com>
Date: Fri, 3 Jun 2022 11:00:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220603085210.2862148-1-jedrzej.jagielski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220603085210.2862148-1-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: CO1PR15CA0112.namprd15.prod.outlook.com
 (2603:10b6:101:21::32) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 29881b90-ffa8-4a0e-0dc4-08da458af8c8
X-MS-TrafficTypeDiagnostic: DM4PR11MB6017:EE_
X-Microsoft-Antispam-PRVS: <DM4PR11MB6017C442E140CE11C1BEEA61C6A19@DM4PR11MB6017.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kdA3bre9oL1ACHITdLIxX94x+RX1TdsJDlRJ2qesDjOqncbdvJlhpNmsOdrMwWT582fc1Zhn2OZ3lz+f7RlFlT2uVlW7B6kJ3OJokySN3SlUgt8tV8IM7WF8i2RYu5Z7C7LFsmIv/lxQ4lOh+1Xs16GbG5gs85vf72FYFS13xQftocV2Is8FAVUKRiP+qDi0mgb61vHtSGvEFiK3FzuMULamub6RNGY1KdjGl+fwSCCdy9bd5OfhOb3Y05uoQgRog3r5YaOviQRrIVFFuBv3QIf6Y1yXP/mMkvc/QnWMMpsXdxAHYzUQuGYhri/JriWAjoRR2RFZc/IIyUK+sFDmffFrYp+3IbhlWIKL4HwLdjADWw91xExuTDlKP0pdsEPMZn28NQqX+1EsyZQJu5AFcfpQpgk+GUOdPKzaOlKzHlCg4mbR8LO6RdqvV+fkI56B4yU5QHzt53DXjZEQlgS4lqTkDHbGySDzvJFroMYp8PUs2nXDyE3kU5Xd9fsSel+I0/BzRhfd09iV4lutBn5r+6RP3/YsEU39UAQDR3DsOFyGQljfvwWZzMenpMX87OEt7/ym1Bsm2nrQAX1WROsag3KYUAnGlAHrb0D10tlZZaSz8uhMnpdHjzP7sqSKNbdOar/0/KO6vuA4is/Jw3cAQQfKCpoXP/PIenwOFXJbfwnOmvKuOUCQNyppOskN2Q0KV6avrRxEuL+DFL8LgCWNQKO632p1ac2Ewkr/+yRcdCo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(2906002)(54906003)(508600001)(6486002)(5660300002)(38100700002)(83380400001)(2616005)(4744005)(31696002)(6666004)(86362001)(186003)(53546011)(26005)(8936002)(6512007)(36756003)(316002)(66946007)(31686004)(82960400001)(8676002)(4326008)(66476007)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bXYrQkh4dUdpTXgzV1dJMGRIQkRtNVR5RmlGeVFoU2x2eCtUNlpCWkEzR1I0?=
 =?utf-8?B?dzk0bEcvS25FLzQ2ZXJJcE8xbGs2MGwraVNPRFJ4aFl0RkdQUGx1azZlakx6?=
 =?utf-8?B?ZkFPNFZCNEQ3bnQwT1JXc29nSzNpQTN1TC9ZLy8rdm8rOVhDTCtFY3BpRUQw?=
 =?utf-8?B?eUNZMnFNbG1LT2lWbHp4RlVmelZuV0wyRDcwUG9BcE9saEx4UmM0Y3NpV3dr?=
 =?utf-8?B?QXFaRGJVaXoyWm8wSmwvdmhYTldpZnRTOFBPU001TkRsSUh3NjFkR0ltSmZH?=
 =?utf-8?B?eGdLR2tHY3Z6aXFZdGVOa2RyR1RTSFYyS1pLeFA2eGpSOVBzL2o3TXA3bXgw?=
 =?utf-8?B?bTVMVExHSUZRWHNqMldEc1BwR1pscjRta0hnWi82d3RvUVFBdXgzY1VvUSsz?=
 =?utf-8?B?aU1Qc05FSzR4U3M4S3hhdEZ0WFYrN2o1YVptaGJKKzJLeThibnJYcVJLQlRn?=
 =?utf-8?B?UVBSd1NnemY5OE40WVBGeUNDTTRWWnJ2cGhSRXlJZU9OWVFndTlxZFhFTU1t?=
 =?utf-8?B?eHFHYzN3SFJjTVBUL3YwUzNQSGpaend0TEFTMFlEK3Q4ZnhuNDJZeG93L1Nv?=
 =?utf-8?B?REFCTFlKVThlSTJ1ZjNEOTZnYjFLUEI2V1VLVlZ5TXpsb1BQSWFwaW9Ody9E?=
 =?utf-8?B?cHJudkxRWjgycHduUHVlSlJKZFdMMDk3SEM3dXdMaDJsaXlrczlYcHNETk9K?=
 =?utf-8?B?R3Jja0JzT1ZJRU00SHB6bU5PMEg5bVBpUmVLSUJDcmZuaGppY3dwcXBrckYv?=
 =?utf-8?B?anFNWG9CZ1l5RjkzOEVQaU1qbTFjN2lBUWJSZ1ZtSDZSbmNrenpYdXlKU2po?=
 =?utf-8?B?c0RMbVhWakN5WWoyYjRNcHY2Q2UyY0FzY3kxc0VwT3ZTSHpIaW1kMUpWUlly?=
 =?utf-8?B?RUtHVTlyWlExelplQitLSDdEelJIWE9jOHRyekdJSlN4MzEyTHFQYkNiSDNP?=
 =?utf-8?B?MHJTeDhuMVZnT1BzaWJLbmNBNE5hTVFMYUxqUDg5RUFpSURrOXphUmpMdFBk?=
 =?utf-8?B?dnQ4b1ZqeTNENzA1aEhTQTJwcUNxc0p5dEpRd3I2Q3B3UHFQZEY2M1A0aUp4?=
 =?utf-8?B?YVJXcmsyZUlmWXBTS2lJTytyMStvN2lWL0hOeEZFREJWZWp6VGl6SWE4K0hx?=
 =?utf-8?B?anpzMTNzSW1HVWhFVU9KRDM3eHVTMXhDdTVtNDcyQmVpcldJRG5uUVBuclAw?=
 =?utf-8?B?bk82N1BpVXhzTktUKytVMmpNMWVGVW8zeU03Wi9HWEhQMEQ4OTRMTjZSZ3VM?=
 =?utf-8?B?Y2s1WEtneSt6blI3Yi92QlVUV3p6YnRNRktnalRNMXpvdVFjMVpPaUp4WXMy?=
 =?utf-8?B?b3MwZVp4VkpXTEg4N2FTakNtczF3YW5MTHdpSzVMaTRrbWFCVmFTMlZ2VDZz?=
 =?utf-8?B?OGRQREN3aUp5TXZMY1JDSm5zSW1pM20wUEVXTGU5MTAyNldzYUtWZFVkS3Ja?=
 =?utf-8?B?Sk5lY2s0dE5GWldkWnJTblZMekJ2L0hJYXFoQTBVQ2JicEFYWWhGemk5bnZV?=
 =?utf-8?B?dnlXQnpuT09GVm5uSEFnd1pzU1A3aGM2MmgzYXNGWHFqOENMVXJBaXdudnA1?=
 =?utf-8?B?T2g5VFE1aWxrb3dZbEU1VW5Bd0NwdWhhSE9va091LzJsMmU0ZTlCYnhjUkds?=
 =?utf-8?B?QS8zK1MzcjlEZjlwSWlJd1BDbHhvNEZaTFBjOHlkWDcrZ3lQSEZKZmwxT1hG?=
 =?utf-8?B?K1N4cnhlZXFvb3dxK1pQWlJadWg2QXc0cmNpM05hSGM1Zkk0elFzSDZtRHBj?=
 =?utf-8?B?ZERVVURZOHJUOUVNejlKMzBJblhVWjllTDA4TitGbTZlNGxiWEU0OGwrYitu?=
 =?utf-8?B?ekdTZHFNOUpXejZacERmMU4wL0wrUUVwQm5aMG9HSENwanZWclo5bzVzWDJ5?=
 =?utf-8?B?MTBHc0I3VkxXd1UyK01uaDVNZjFOWGxxS21HcWVSTXVybktjaXU1K0VSUXJN?=
 =?utf-8?B?bmpMeGlaNW54Tndqd0pOejFPWFNmWkJFU2dNYXNVanFVRkFqRWUwTnR5dXdk?=
 =?utf-8?B?T1BsWW1lNlZJcFdPQVpXVi9yYTlrQUlnUzE4R0NzTER5RENieEw0a3BEaFF0?=
 =?utf-8?B?dWtaNVByb1NtWkdTZFVITGFiVlZObk1NZkhvUm9lQ3FsT2g4RndlVGQ4V2Jp?=
 =?utf-8?B?TE9YZm9lV2M5bW1SdEpQN1liN1Z0ZzFhanZ1cmFJY3J2NFZBZHVLTmdBVG9U?=
 =?utf-8?B?YjllUHdsZ3dVUUdXK2hxZC9MQis1K1NYN3VkcWg5OWpKL2J0bzBpZmM1a1dS?=
 =?utf-8?B?clhuVVFmclgwVnpmYWovd2JkaFJPMVZmRXJ2TFBZUW0zWGN1WlR6T25ob2h1?=
 =?utf-8?B?K3dXSHdvTTJaQjJFQWlaKzhpQVZkWXJHa3FXUW9uTjZXRmJweVJkQ1pUUzl2?=
 =?utf-8?Q?hbUaSyXzJAqtGdl4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 29881b90-ffa8-4a0e-0dc4-08da458af8c8
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2022 18:00:40.9885 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l1/BANOYUOpQ7vl4VDCDpp8Od8f3cAXEPvj+cq8bjXXQ5JLytvWbN0irWCftiTa/+q20V3qAz26pcKt3CLwWfF+vsau0Q83w2OECRNe28Gg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6017
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Add helper to check
 if iavf_remove() is in progress
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
Cc: Brett Creeley <brett@pensando.io>, Brett Creeley <brett.creeley@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/3/2022 1:52 AM, Jedrzej Jagielski wrote:
> From: Brett Creeley <brett@pensando.io>
> 
> Currently the driver checks if the __IAVF_IN_REMOVE_TASK bit is set in
> the adapter's crit_section bitmap. This is fine, but if the
> implementation were to ever change, i.e. a mutex was introduced all of
> the callers of test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)
> would have to change. Fix this by introducing the
> iavf_is_remove_in_progress() helper function.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>

The author and Sign-off need to match exactly:

WARNING: From:/Signed-off-by: email address mismatch: 'From: Brett 
Creeley <brett@pensando.io>' != 'Signed-off-by: Brett Creeley 
<brett.creeley@intel.com>'

> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
