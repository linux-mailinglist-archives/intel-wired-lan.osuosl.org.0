Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F6772FEE3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 14:40:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC55741C53;
	Wed, 14 Jun 2023 12:40:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC55741C53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686746434;
	bh=dUEDHkYU6JO1XFjqaEncJUjM59/D0Qv+01BmXd6ton8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dxBi07t/n0kgl1yBAA/UijJJxW8D/Wpu96v5Ni+bSKLzRXOHaVA9S9QxerII+nEb3
	 U0vEBxuIKe717Z8Rxmc498F8yCG3o3ZaprbJWOpf/PjkP+9Ycz33DZ2vX20zLoIuBI
	 VlTzC/3Kb0nHYSWCxtaB/vuiUMplPxe3XqwnGZz/0Y2Zi6aRjirWRImkHZT7LcLonH
	 msV9Tpo7tev373KQ55d/aKHU5hl5l8hh369q9XJ1OQbqx+nOK8z7hnxiuT8b+GQSwT
	 1zXMmjVUhyyLHYmq0tQnoOxGknmOY0O9/xx2hfMCYmF4eSSt8Qcx6o3CSbUgskKo8B
	 1l4KACc8coN7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P9bWbriGsNJH; Wed, 14 Jun 2023 12:40:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E33640069;
	Wed, 14 Jun 2023 12:40:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E33640069
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 66ABC1BF329
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 12:40:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B4F941939
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 12:40:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B4F941939
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ST_4qFxGkTkh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 12:40:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0BB540069
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F0BB540069
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 12:40:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="343297118"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="343297118"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 05:40:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="801890910"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="801890910"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Jun 2023 05:40:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 05:40:15 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 05:40:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 14 Jun 2023 05:40:14 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 14 Jun 2023 05:40:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ck7GAU8SlFMVar45Xo+6nwXO4hMKZjaVNsHOIksakZHObhWXDJtsXCaYD+y9rOaawo0yzVQKfB2I45NCZ1vqBg+yPgCnxuU2H6eZmqsOLQQCH0QCk4+EsBu0Jxx6M7+60S4PyEup0CN/15+tr+ZyksrlgB3Uc7MI6UR3bgp4nbEmuTTnvJY2Fe2DEPvyg96GxmDLwVfs8POoHM/ZnnXgtv9bQAp3ynqsdWTGyVCMrEr6VHAOcMLspA5Tq+Peblkf2VHlhYXS4IGG5bpitRi6KH18kPkOnNEMyh7CQCJ6d29ZRTGA4FgMHGlsD0PTncmd81SUUW2+Ro+nSqiHDuNMCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=256YPNonNCGQ8Dkhg+KXukjmAAlea/TZOZTPe1wttOw=;
 b=EHOw4QE/gDIQ1mLWBx+N8fQMcDrkXsFalZz6G5B/9bmVsKQHBud0B0zrcHcNkm7RIqaLgox+TVC533Wffsp39uQJxELBT7xeS0QYZ/cKeSZAoGGD9cwnvz4HUGwg7GrH2ht6Sr6zhQeKZ/DKh704bvVebtkzDZpfoiNioZNPwQ7qcq4GLl+THEX4LwQSdJuoCt10WYJpZFVb1gHNk3SBgo3LtQaCqdZrDKI4VpbA+gXkDGgTydxmGLFD9tmEuMfKKkUrGdL/tzF5CU7CJzM8oYmTy+5YMvigvCFOkmnn7RRdToVgPUaKdNU+6edNXh5y7jn6sJEwW1KNsMR2+DdQDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by DM8PR11MB5573.namprd11.prod.outlook.com (2603:10b6:8:3b::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6477.29; Wed, 14 Jun 2023 12:40:12 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325%6]) with mapi id 15.20.6455.030; Wed, 14 Jun 2023
 12:40:12 +0000
Message-ID: <16f10691-3339-0a18-402a-dc54df5a2e21@intel.com>
Date: Wed, 14 Jun 2023 14:40:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.1
Content-Language: en-US
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@kernel.org>, "Maciej
 Fijalkowski" <maciej.fijalkowski@intel.com>
References: <20230613151005.337462-1-maciej.fijalkowski@intel.com>
 <9eee635f-0898-f9d3-f3ba-f6da662c90cc@intel.com> <ZIiJOVMs4qK+PDsp@boxer>
 <874jnbxmye.fsf@toke.dk>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <874jnbxmye.fsf@toke.dk>
X-ClientProxiedBy: LO4P265CA0218.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:33a::19) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|DM8PR11MB5573:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a32bbdc-b9ba-4ec1-37cb-08db6cd47ef1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NiZXt3Q33eAcVT/l04xbABflyAiyGWGi94fhC/+KSJNUdmJuWopFxau3k+jqmDrDuR62j0VTjaixe61ibm/gV+cvfMFiLzAzNLS0XnT5zoTQKTTHRigumDvYkW5QN+GSboj2MLVoK91gwMekxh3E1pTuFlpMSZr+mLd4iVear4r41AqEcSKud1jHmIBZfnrjxSCuy81GRe578hkgehBpJyxX9C+7cKlvusvt8HP4G0XJ0xOOx7dsnTA10+uUibtu1fkkURbg7Xet5znFHqvs7r+P0XrilTUraCD0pDJNgg7HM79fVJb2kBsD+Acq1y2jr9uBCMnlvaJ+juGuwPVGjdVUEKFAWNq8RzyE+XLpL0CXBXUpImagr0xLv7oJgNvIPPB8eotsP46HXOQJbCEvbBEvQ8mb9Pg/yvEBg7PZSwCRkNkNa2ug/T4qYaHFpNMjfXD1M7a5Tp0IjMqnpzlbqvCncn3Fjr1R0dTDbSO7m/neFLENMXzWsuOqT5rKr+suqxVA+DYAvRngdyWP5Uk88/FVTDjbD11VRrtnCH313DOAS7fSqwLU4Qad+vUT1xnsY5JO9qgZ5XoToVrA/g9jxFDte0O9ybwQHxanBC2dmMKhGv+yOw7En/mlcHs+krA7GcXWpVdaNuxK3LkOMq6dW0G5uGaEbfzXJjT0/cFG1vVexvBzHKH0V0s0nOsXt9pB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(376002)(39860400002)(396003)(366004)(451199021)(86362001)(6486002)(31696002)(6666004)(316002)(966005)(8676002)(41300700001)(5660300002)(26005)(83380400001)(82960400001)(6512007)(38100700002)(6506007)(8936002)(66556008)(36756003)(66946007)(66574015)(4326008)(478600001)(6636002)(186003)(31686004)(2906002)(66476007)(2616005)(110136005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDZha0VzUUNCQjhHTTkyVXNLZlE3SmtRa2syWFRaOHR5VStaU2c0ZFF5bGVq?=
 =?utf-8?B?b0xPVVh0QVJVQjQ3VVFQOWZMVC9TNDJLQ2V3MUF3akxxM3diRmxCbGlNTEQv?=
 =?utf-8?B?emNld1k1UncrczlKOHo3eFkrZHpESVREWnJlRmpScUtFYkJSdjErVXc0cGt0?=
 =?utf-8?B?QkxtYklaQkNPa2JXYnAzSUw4bUNVemxvWlJqekFqYUo2Q3R1QlNZMlhVaDNE?=
 =?utf-8?B?SW95OGpRSk1rSGwxbW5GZDBqb2N1dTBpSGFJSFduZmxJS2RDK2ZISHE2VWll?=
 =?utf-8?B?S1IrK3Z2MUtWK2FGVTU0YzJIcGlSbXRmWXd1NDE4ZmJXVTBIMk10MEVSaytY?=
 =?utf-8?B?YmVBTndFdGlHR2dEbVZCeFI3WXIvd1Qwb3djdXFQellNTWd2TGZNUkN6VXZU?=
 =?utf-8?B?UExTdWo4REFRK0krd1J1dUxVTGJuaXBpdGRYcUtGQ0tZUEo1NWtNMkhuYXh1?=
 =?utf-8?B?WmtuSTYrd1hGWGlBRDE5RzIwazczOEU1ZGxxQXpyemZWSnZiT1ZsR3FXVjlj?=
 =?utf-8?B?OGcrWTlXNjNmdy9qQTlZSVpERWhZMXR3a2Fxdm50Q3F1RjdNdmFtZFM5MjNS?=
 =?utf-8?B?YkpSZUVsVk9IVU1CUU02YW1uT3VibUJWSExHMUxkRmVvZDVOSXZXYTZTYjNi?=
 =?utf-8?B?VFJmZVFVTk4vLzhuNi9malAvT25rOEhYNGhyanJkVTVNazIxNnFhajBsNW9O?=
 =?utf-8?B?TVBEMklVZ0lqVXJpVm43SlJkemt3ekNOQVd3ODA3ckdZVmltQm5YcEJYdTR3?=
 =?utf-8?B?YTRLdkViVk9hUUgrcjZEWkVFR1NGZWg1WVhHT0ZFWUExbm1XTFlOUzBsUW1V?=
 =?utf-8?B?K29TVitheUZTNk9jdlNZQjZCZGNWbndXSzBvSGx5dzFneTFjMEdqbjFGekQw?=
 =?utf-8?B?VUxFWXB1WHdNUW5qdnR4d3N0TlJ0Qmh1UURSL1BJUVlMb0NxcGtHOXJ0RWtE?=
 =?utf-8?B?K2NJK2NvZ1BGa3pIcEh0VE5Ubm9ZS2t3MVNjVGd1TUhEZnVNR3dUMFBDTWNX?=
 =?utf-8?B?aEJqRVRiQ2ZiUlgvRmZLZUJBelFJRDNUVWMyU0FyL2ROYWdFSGVHQWltbmpm?=
 =?utf-8?B?NFA3MEpTNU03WHpsaUVGbVg2V3BVQUphNlk3d1NPb3R4UkwvVG9SZWw0b3JZ?=
 =?utf-8?B?U1BCNkJpYlZVb1pHcHdqalkvSVRCNWJWNGdYSm1LdklCRlZoWFVVZk1Yc3JU?=
 =?utf-8?B?eG5lNXA4VElEOUVPZDRJV3E2US9iMDlsN0JmSi9rSEVXMGZqRlRaR01GMGsw?=
 =?utf-8?B?cmlWQ2VCdkhKRkh3MHpHeUZ0bmZaaGZNNXNnK0RXN3FQdGhTL2g2OEZKbnQ1?=
 =?utf-8?B?aG5iUUJyL0l2Zi92dnNzdlpRbnl0YkNzazFWbVYrdkpjdUpHTGlLUkhXOWhp?=
 =?utf-8?B?dklxc3JqMUVkNWJzRXRBYVJFZXBGRUFpM0tYWWU1L2JGc3ZPQXRybkdqbnRD?=
 =?utf-8?B?WkRTaG8xeUV5elhJb1Z2anhvMWEwMFVFVGxtZkx6Q0wwUlVUZWdXK2NGWE0x?=
 =?utf-8?B?Y1FMNDAvV0c4TzZSdGVQcDBFbnBnaUlXT1JrKy9KSURZWGZNb0k5dkZMQUg5?=
 =?utf-8?B?L29XazJxNzFoemZ0TUZpak9ZOFhUQzlqREVLTERsdkNzSDRUQjlJc1N6a2lJ?=
 =?utf-8?B?QXQ3a2dHd3B2Z1k2S1pxWml2M3hCMXV2Q0NiS2tUKzhRN1I0VmRZSmk5R1ND?=
 =?utf-8?B?NTlJKzY3elpzVVB5V0x2SlJ2dEFWNm1US0duTm1XaTluUXlYRUVJSUpQN2Nt?=
 =?utf-8?B?NFRQNkswdkM4aUhqd3laYlpPMTl3KzcvVjRFbTdVelNBakxvUDFYV0tSMTQ4?=
 =?utf-8?B?RUptQ2RXSjlxVDBKYlNuSG1Ra2RZKzIwcVYvZjgrTzJrcG9pYUxWQTRHb004?=
 =?utf-8?B?VlBBM0wrNG1aaUVMeG05N1Z2cmZ3YmRLQ0tPSm9ndGhyMVNBMnZ4cXprQkVu?=
 =?utf-8?B?M211cnFyeHk3d29IL29PRGhuMDFTcTYydFVEKzg0Q25mTXd1UVV2WkVnUzdu?=
 =?utf-8?B?R1U0Sk81dzlzRmlXdFFFRUVYMnZQWUhaMjdReTgyL3ZFZkZva0NLWWVYcnZu?=
 =?utf-8?B?RmRDdWZaMWw5bTlsNlFQMzV2ZS9YakJxWElyUnpsakV2WlJ3bERhb1lWNU50?=
 =?utf-8?B?UUlwRHdHU0xUaHMycGl0TWgwZkp2V2pTOGxWZHIxQXBqQXFpbmEzQkozRy9s?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a32bbdc-b9ba-4ec1-37cb-08db6cd47ef1
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 12:40:12.4230 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t4r8Pef85XwVezzaOFHd8rTsYQiTpZl87bkd0nupbJa2/wAHQ8QZFH6T5ikh611KuulyDdaOiTqNcaYtR9uloR+XR1c+vnD00OQ+1qP8kj8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5573
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686746426; x=1718282426;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kjypBdnSATjEZQKrn6sm2aNubXEcTxTkrpRKLv4cMdQ=;
 b=EWdvp3fe49Rrufllpv+dB3hYw2jYeFfZKcg+djKD/x94HKCzvRu0Oy92
 B4thTVNMPRhMgoSBuWcE31+342kN8F1yLvdm1/ZdhoIMc8h7+ookB8KP+
 va3UwXnYMvQeu+2Ixa758kPlBIW8IUqet23B5az7BDh4/+FrnY3P7qJ67
 KR5SbwKF/9pCt7Vt5K2fmQPfATwso5+VjvFFZcZLCB2+sy1S+aBIwLzUM
 pvZSJqbDCgshk/Nyjb7GmOmL+kUkeDzqcA4JncxGA/aXGyAcr18AHkxCc
 W2FYO+xkQRYo5wxzq4BAVqKj8UjimtVlpQUV1UYoLB06j9UXmG+hCK0B0
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EWdvp3fe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: allow hot-swapping XDP
 programs
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, fred@cloudflare.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQGtlcm5lbC5vcmc+CkRhdGU6IFR1
ZSwgMTMgSnVuIDIwMjMgMTk6NTk6MzcgKzAyMDAKCj4gTWFjaWVqIEZpamFsa293c2tpIDxtYWNp
ZWouZmlqYWxrb3dza2lAaW50ZWwuY29tPiB3cml0ZXM6Cj4gCj4+IE9uIFR1ZSwgSnVuIDEzLCAy
MDIzIGF0IDA1OjE1OjE1UE0gKzAyMDAsIEFsZXhhbmRlciBMb2Jha2luIHdyb3RlOgo+Pj4gRnJv
bTogTWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29tPgo+Pj4g
RGF0ZTogVHVlLCAxMyBKdW4gMjAyMyAxNzoxMDowNSArMDIwMAoKWy4uLl0KCj4+IFNpbmNlIHdl
IHJlbW92ZWQgcmN1IHNlY3Rpb25zIGZyb20gZHJpdmVyIHNpZGVzIGFuZCBnaXZlbiBhbiBhc3N1
bXB0aW9uCj4+IHRoYXQgbG9jYWxfYmhfe2Rpcyxlbn1hYmxlKCkgcGFpciBzZXJ2ZXMgdGhpcyBw
dXJwb3NlIG5vdyBpIGJlbGlldmUgdGhpcwo+PiBpcyBzYWZlLiBBcmUgeW91IGF3YXJlIG9mOgo+
Pgo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9icGYvMjAyMTA2MjQxNjA2MDkuMjkyMzI1LTEt
dG9rZUByZWRoYXQuY29tLwoKV2h5IFswXSB0aGVuPyBBZGRlZCBpbiBbMV0gcHJlY2lzZWx5IGZv
ciB0aGUgc2FrZSBvZiBzYWZlIFhEUCBwcm9nCmFjY2VzcyBhbmQgd2Fzbid0IHJlbW92ZWQgOnMg
SSB3YXMgcmVseWluZyBvbiB0aGF0IG9uZSBpbiBteSBzdWdnZXN0aW9ucwphbmQgY29kZSA6RAoK
PiAKPiBBcyB0aGUgYXV0aG9yIG9mIHRoYXQgc2VyaWVzLCBJIGFncmVlIHRoYXQgaXQncyBub3Qg
bmVjZXNzYXJ5IHRvIGFkZAo+IGFkZGl0aW9uYWwgUkNVIHByb3RlY3Rpb24uIGljZV92c2lfYXNz
aWduX2JwZl9wcm9nKCkgYWxyZWFkeSB1c2VzIHhjaGcoKQo+IGFuZCBXUklURV9PTkNFKCkgd2hp
Y2ggc2hvdWxkIHByb3RlY3QgYWdhaW5zdCB0ZWFyaW5nLCBhbmQgdGhlIHhkcF9wcm9nCj4gcG9p
bnRlciBiZWluZyBwYXNzZWQgdG8gaWNlX3J1bl94ZHAoKSBpcyBhIGNvcHkgcmVzaWRpbmcgb24g
dGhlIHN0YWNrLAo+IHNvIGl0IHdpbGwgb25seSBiZSByZWFkIG9uY2UgcGVyIE5BUEkgY3ljbGUg
YW55d2F5ICh3aGljaCBpcyBpbiBsaW5lCj4gd2l0aCBob3cgbW9zdCBvdGhlciBkcml2ZXJzIGRv
IGl0KS4KCldoYXQgaWYgYSBOQVBJIHBvbGxpbmcgY3ljbGUgaXMgYmVpbmcgcnVuIG9uIG9uZSBj
b3JlIHdoaWxlIGF0IHRoZSB2ZXJ5CnNhbWUgbW9tZW50IEknbSByZXBsYWNpbmcgdGhlIFhEUCBw
cm9nIG9uIGFub3RoZXIgY29yZT8gTm90IGluIHRlcm1zIG9mCnBvaW50ZXIgdGVhcmluZywgSSBz
ZWUgbm93IHRoYXQgdGhpcyBpcyBoYW5kbGVkIGNvcnJlY3RseSwgYnV0IGluIHRlcm1zCm9mIHJl
ZmNvdW50cz8gQ2FuJ3QgYnBmX3Byb2dfcHV0KCkgZnJlZSBpdCB3aGlsZSB0aGUgcG9sbGluZyBp
cyBzdGlsbAphY3RpdmU/Cgo+IAo+IEl0ICp3b3VsZCogYmUgbmljZSB0byBhZGQgYW4gX19yY3Ug
YW5ub3RhdGlvbiB0byBpY2VfdnNpLT54ZHBfcHJvZyBhbmQKPiBpY2VfcnhfcmluZy0+eGRwX3By
b2cgKGFuZCBtb3ZlIHRvIHVzaW5nIHJjdV9kZXJlZmVyZW5jZSgpLAo+IHJjdV9hc3NpZ25fcG9p
bnRlcigpIGV0YyksIGJ1dCB0aGlzIGlzIG1vcmUgYSBkb2N1bWVudGF0aW9uL3N0YXRpYwo+IGNo
ZWNrZXIgdGhpbmcgdGhhbiBpdCdzIGEgImNvcnJlY3RuZXNzIG9mIHRoZSBnZW5lcmF0ZWQgY29k
ZSIgdGhpbmcgOikKPiAKPiAtVG9rZQoKWzBdCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xp
bnV4L3Y2LjQtcmM2L3NvdXJjZS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1L2Nv
cmUvZW5fdHhyeC5jI0wxNDEKWzFdCmh0dHBzOi8vZ2l0aHViLmNvbS9hbG9iYWtpbi9saW51eC9j
b21taXQvOWMyNWEyMmRmYjAwMjcwMzcyMjI0NzIxZmVkNjQ2OTY1NDIwMzIzYQoKVGhhbmtzLApP
bGVrCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
