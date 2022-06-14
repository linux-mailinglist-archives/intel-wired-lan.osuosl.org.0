Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B3654BA15
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jun 2022 21:09:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B9B981396;
	Tue, 14 Jun 2022 19:09:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kggAwb0e2GVn; Tue, 14 Jun 2022 19:09:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB9CF81391;
	Tue, 14 Jun 2022 19:09:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 542D11BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 19:09:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 412A8409E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 19:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HVJSgcW3vj_R for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jun 2022 19:09:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CFCE84056D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 19:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655233749; x=1686769749;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WjagMKBBEqloKhoaQejvXkTW87kLWk+RS/4Z2RS5KH4=;
 b=QUELrmujsM3HTT4EID9y8i/OnpUeyDXajeblhHRDQQ5B01gGL0N/9jNQ
 GijOg6FeNvclcSjJu+x5bdsDug4FKxyZsBSerO78vtejMN3OCWRNByApK
 lK5rACq9wKHjP7sEKylRMyU4GQ213pOK+/5aczpTldQXfeH/PzS/7bKS2
 uosxw/Nzlky773O1+lXj4f4ZTMf6T/plH1jZRJvP/8hUjUPb2rKtN1Usg
 0e1E+tcBWncBM3Iz0jfoIAO3N/E31hZdqtEWL0H4D0PurXAepTbdYqsFE
 AAqSQfndhz8PMTFSZwlVnusVyvXTYZgxUrztRFzLJRtwIxB6a2AOFTLHN g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="365058891"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="365058891"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 12:09:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="762092413"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 14 Jun 2022 12:09:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 14 Jun 2022 12:09:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 14 Jun 2022 12:09:07 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 14 Jun 2022 12:09:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EGS2aGgrFlLQb4ihu2XjADXq3BSbDs02iHkEOlCDN+84ze1LnMGtXGKJVGdUGScWWQn5WV1al8e4cx6zIGZGxMgRGKMjdYLGFIgXoyZA2xyE0am2yxjixw1osEfVb+8CemR8CCF8cV9HqZClilBYlRgIcIkpP2XyUFy/eqN9k1GyUxINw3kIAPUjHL4B82QLwGKm/c5qzF5Ynuwd9f7hKRHKt+FR7sWWUw3wOx8LN+I4DIR2Ee84LXwD111ZLE8BkudrmdTTz6LZKKEIFrfpkG7l9eSebqqSobFv4B/uK1PuYTHT+uAAtneiW5pBQUJ/nQIO53UXbnpS3HroSfV+Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zd0tMUQhBjDlX4LsQOSJQFIYsJeZxM8TcEstEGFY51Q=;
 b=mVm1XZu79nITTn0PGE66evUKqQfepoqznwvxV/gIdymoelIMieKMw4JCasbVreRKTjzUYxI/XElsiEeJS2/3J/gI2BwAKRb0aZss6vBbG4wfxXPtcwDwV0IBfKKjOwoz6I1N1A1MQNiLq/2yHGWp5D2yGyIl+gqMv82zLOTf4Unn0uj4aZDv3aRFhDvomDwRqCXfVr302TQbbFnbNlVm5qAvIyk16QWdUHJX8IwDBd+v7vX5KYdf8aCER6hFODZmfj1rqP+NgM/ld4agj/GenqJ7RyyG9NmhzuVMoA6Ocnn5SnEVNdCYu+gkd+bFJfT6EWgs4RYXhzDR7Jv874y35w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM4PR11MB6119.namprd11.prod.outlook.com (2603:10b6:8:b0::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.13; Tue, 14 Jun
 2022 19:09:05 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5332.022; Tue, 14 Jun 2022
 19:09:05 +0000
Message-ID: <cbfb5d1a-dadd-efe5-b5d9-de9f483e44b2@intel.com>
Date: Tue, 14 Jun 2022 12:09:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Lixue Liang <lianglixuehao@126.com>, <pmenzel@molgen.mpg.de>
References: <20220610023922.74892-1-lianglixuehao@126.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220610023922.74892-1-lianglixuehao@126.com>
X-ClientProxiedBy: MWHPR17CA0063.namprd17.prod.outlook.com
 (2603:10b6:300:93::25) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 69e37a0d-6f84-4b06-b790-08da4e3959da
X-MS-TrafficTypeDiagnostic: DM4PR11MB6119:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM4PR11MB6119A93B26D7A9330C4F1039C6AA9@DM4PR11MB6119.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AeutkKHwMWzGVG0HwyNNLwbKTMbM3aEEjgwY9/K31eALQ8f4FZWgYkF8jRQrnp3gJkZDLT8KXTAf6MFvQ6uSWcCnFxDgS/MeB9RO8qtw8Eo9F8Kgw7zybnAD0dyt5HjydjDWtfAEN6rTHNXqXbmQkLyKIyfnFv3BiGtSB3ENNHWSihzkNMYhRezVSLrFtO59YKjtGFGjEC9N8wIls0OMr+zLYiE6K8ifexVaJRF59mJExTOJms6wcCd3jAwcg/DlFXHKxtBVbcvTRJTJNMAD2PuuaEC++kYLcruKJ0KSPO4C/zIofD648F+ve9nVZhWyFYgQ+JKXi0GDvfg6wvhsOZzZ1H+rDqhjCYuXK2mtMwC20p2ymDAiAL07JiI7xaYRCbJpqNdojES3/+GjlWLmQZxyjqRy/739+DB+0zdk98DAVevuKzg30RcfqTxdSpO7s9k3qFNa7XkVf2o/mIaP8Ievlq4ob8lzSuJeto6dKMTnOBsAsgLvB+MNP+TBEeiGCwcLwAldZVgYfpXrJngXdbaA828/+O/zl5WV1ac64UXd5d3/IBYl/5mtMK3Kq7OVgkQ3kCAFzRY8rPwT2BIwQ62/jh6ReQWqA4k7Bxjxzzk4khMQDon/CICFXdjo/hNDMnjKj0oDHILhQoIE8ZbXBKqIwDOI96wHEZWk+YHB9am3b1lGOgsGrZN+jTx9f6mSzA4Gb0RlcJq7YmH1yRdWMq6G884HYtYAxQFeD1TMPfuWIJ9uqbXhaZA53cGzSvu1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(316002)(66476007)(86362001)(6666004)(31696002)(8936002)(82960400001)(107886003)(66946007)(508600001)(26005)(6506007)(4326008)(66556008)(38100700002)(5660300002)(53546011)(6512007)(2906002)(8676002)(83380400001)(6486002)(2616005)(186003)(31686004)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YkN1ekFlaHk3T3FKZTI2NmZYZ3ZYaDV0a0d5cEdsZXRDOHN0SFVkVGllWjZG?=
 =?utf-8?B?MG5nMFkzQS9TUEo5SXRjOWRwWTdPV0ZSNkExSExMMGVMcFNPU3NqN0Y0aldW?=
 =?utf-8?B?c0hsOWtaUkw3V09OTzMrRXFkYndpZE9NSUkzOEdxbzgwYTFGMEo2SllVd3Vw?=
 =?utf-8?B?Sjk2THhEM3NsTXVic0hyaWY2QktFekh6UVpxQnpUMUZQSElodDU3bEF1U2tN?=
 =?utf-8?B?TkxkSXMyM1FmRDkvNU1wY2pFUWxCL2hEcEM3L0NKR2ZVdTFaWVJsWHRmOTl2?=
 =?utf-8?B?RVFvZW14MUxkaTF3SXhFV3N5U1hyK1lRZGF0TkRoamdqd2ZhQUkyZHVaWGli?=
 =?utf-8?B?eWJ6K2lXY3l3ZmhaRWxmcUNkNUlLbVZaTnVuR2k3bVdFS1JWSTcxSlVrQjJ1?=
 =?utf-8?B?MmtVV1NXclZoWndGS0FZSTVxL0VhRjM2WTNzOXplNlcvV2N6emNTMDV2UVJP?=
 =?utf-8?B?UjdPZkp3VlYrYm9YUUpBQ2NJOHJwQUppZzdudjF0WFRuSXgySUlTQXdjL1hs?=
 =?utf-8?B?Z2ZXTHRJKytNS2IzcEw3UkxSbVdzSm8ra0ZTZTQ2djg3eWJtMFQwRk93LytW?=
 =?utf-8?B?eWF3MzIwaEl3RnJaZ3JVcmdXNy9FcDI1cjZkcVk1TnhYMThoM1d1YkRBb29q?=
 =?utf-8?B?azMraXlLSWV6MUgrZmd0M3YzODBoTHF5R1RqcGlIb2VDbTR0dHdMcmloeEFT?=
 =?utf-8?B?VFpnUzYzTi8xYndvcTU0SUIrRnhuaVZHZ0F2Y1g2aDdBdHdXdXNPUFpGRDVp?=
 =?utf-8?B?ZkFHSXBNcktqVDk4WXdzeXVXQ3ZnVUR4UzNra1Zya0RxaDA3VVp5LzhyRmZ5?=
 =?utf-8?B?bFhQdkZEajlodVYwajVCbVV3MDhYMGN1L1VtK0FlTnVQVStUT2w0WEZJd0Fp?=
 =?utf-8?B?bWswRjdNMmlwem5tbjJ1cEYzT0x6Z2hZNVVxdExpcG5IQWhjVDc1RjZRL0VD?=
 =?utf-8?B?ZVl5WlNqVzdjWVZpSExNR2JyMTBIOW5hUWRyc01CRzdrc0NCTGVrU2xmRzNR?=
 =?utf-8?B?Y3MyUVRXZVdkc0tXTFdEMnYvanllSUd5QXJ2bEZDb1c3NFdncHNGTXpHMFZN?=
 =?utf-8?B?NUtaNWZnb2taZzdWcUl0bW5zdE5lQkNzYmc3S3doYkYzR2JDdG5tcFVqc2k4?=
 =?utf-8?B?UVZkUjNFUjU0clg3bk1TS0RINkk2V2h2TWkzanZwZ3dJbE5MeHNsL2d2azBC?=
 =?utf-8?B?MmpKNmxESVdFTVNHTFh6NnFyZGppNGs5K0M5czhiUS9rUUppa0gveHhsUlIr?=
 =?utf-8?B?R1k1YnJLeGpyckZ5QnlTQXNUZERJdERVSlhmdmVkN21NUVE2eGx6cGtzUTFH?=
 =?utf-8?B?T3YyUVJFRC80b25VNGI4R2dkaWVDa3QwMFp0bEpiL0NnRjBXTjk4RGdVQnpw?=
 =?utf-8?B?Tk5GZ3JvZGJ2Y0JuVU1MZEJKNHUvSVE0K0xOamI5bmlDZ3MyK1dyYnhyOTdO?=
 =?utf-8?B?Q1VLWUJGZXE3eGQ3bjRhNmZTRzAwOFdqQWd1dUMvUUFPYTBrNGFnMXNPQ0No?=
 =?utf-8?B?NmZubllMa2VZeFdNamxPYnBwTGw4ZXliMnlxN0JTMWRlT2U5bEF2Wi8yci9s?=
 =?utf-8?B?d2FIUXViSTRxM2ZWQlA2dnF2aXhOazQ5S2pxMzRnY1hHWUFUV1dTbjJWU2Jj?=
 =?utf-8?B?YWtCdUpWMXhGVk1pL1pOK3ltUXdkK3BkMS9jZngzRzAzZWtTUmNqM2ZBY092?=
 =?utf-8?B?RlJPSEluSFFISFhCZGhOWUdQVXFsQ1JyMXIrbHdXOW9CSEJ0RVA3TVZMaFpU?=
 =?utf-8?B?OE5jdXNpSWk4YnJ6MG1pNjI1VFBTT1E5UDVPY2R5N2M1N1BJSlR3alNCNzRT?=
 =?utf-8?B?MUNsYnFPOVc2K0NTZjc4MG43ckdnaWx2VDJWS1AyZVU1ZzRKRGdQL3VrMkR5?=
 =?utf-8?B?OFQxYlliVEgraHhrVGk2OFBSdGNwV2tzWVhmS21mOWU3L0hIY3JUMUhmNDlP?=
 =?utf-8?B?T1d3ODV1RDZMdThBc1dBMGROM2lPUCtmUTkrQ09FazNpeG80bHYyelhFK2k5?=
 =?utf-8?B?M0lNZXFXcGRYQVRFTWxEMVlSM2dldmVHZm56VDlxZzJiMnEvMW4zZDlrQmRZ?=
 =?utf-8?B?b0lUUjQxd01UdWp1UUFhTyt2NDhFYkp2MUxVU0g3SjVhOHoxV2ZtZkM3VFg2?=
 =?utf-8?B?YTBoNDVoOFlYNWUzVFM1UjhOZXVOM3dTY1JmOUpRcHUxUmZDbFh5K1RreHJD?=
 =?utf-8?B?WjF6V255cm5XV3l1MUNTdTNSa3RlVkx5WldZbjVhdG1VNDIzaG8yTU8wRm9B?=
 =?utf-8?B?TnV1M01wcW1Nd3ZCTkE0SkY3dmNxc3pkNU5BVFJOSCtuYzJPdCt0dldLNWNs?=
 =?utf-8?B?MkU1Y3pxeUtzVnJJOWNES2NXa3pETUc0ZnFyZklJUStUcUdFd3I2SmRKSDBL?=
 =?utf-8?Q?42CmPorLf0saeiOE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69e37a0d-6f84-4b06-b790-08da4e3959da
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2022 19:09:05.5829 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OpmZjWTBl3yEIjjrGVT4x+Q528Sduce05hPe5/2wLZagV7g+RWo6GMBkXMl+RePJ8/I8MGaNCW34duD63dh6aHnhD4iILGxh8HhbTybfNEQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6119
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v6] igb: Assign random MAC address
 instead of fail in case of invalid one
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
Cc: lianglixue@greatwall.com.cn, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/9/2022 7:39 PM, Lixue Liang wrote:
> From: Lixue Liang <lianglixue@greatwall.com.cn>
> 
> Add the module parameter "allow_invalid_mac_address" to control the

netdev maintainers:

I know the use of module parameters is extremely frowned upon. Is this a 
use/exception that would be allowed?

> behavior. When set to true, a random MAC address is assigned, and the
> driver can be loaded, allowing the user to correct the invalid MAC address.
> 
> Signed-off-by: Lixue Liang <lianglixue@greatwall.com.cn>
> ---
> Changelog:
> * v6:
>    - Modify commit messages and naming of module parameters
> Suggested-by Paul <pmenzel@molgen.mpg.de>
> * v5:
>    - Through the setting of module parameters, it is allowed to complete
>      the loading of the igb network card driver with an invalid MAC address.
> Suggested-by <alexander.duyck@gmail.com>
> * v4:
>    - Change the igb_mian in the title to igb
>    - Fix dev_err message: replace "already assigned random MAC address"
>      with "Invalid MAC address. Assigned random MAC address"
> Suggested-by Tony <anthony.l.nguyen@intel.com>
> 
> * v3:
>    - Add space after comma in commit message
>    - Correct spelling of MAC address
> Suggested-by Paul <pmenzel@molgen.mpg.de>
> 
> * v2:
>    - Change memcpy to ether_addr_copy
>    - Change dev_info to dev_err
>    - Fix the description of the commit message
>    - Change eth_random_addr to eth_hw_addr_random
> Reported-by: kernel test robot <lkp@intel.com>
> 
>   drivers/net/ethernet/intel/igb/igb_main.c | 16 +++++++++++++---
>   1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 34b33b21e0dc..b61f216331da 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -238,8 +238,11 @@ MODULE_LICENSE("GPL v2");
>   
>   #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
>   static int debug = -1;
> +static bool allow_invalid_mac_address;
>   module_param(debug, int, 0);
> +module_param(allow_invalid_mac_address, bool, 0);
>   MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
> +MODULE_PARM_DESC(allow_invalid_mac_address, "Allow NIC driver to be loaded with invalid MAC address");

Lixue:
If the maintainers are willing to take it, I believe the convention is 
to group each parameter together vs mixing them.

e.g.

  static int debug = -1;
  module_param(debug, int, 0);
  MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");

+static bool allow_invalid_mac_address;
+module_param(allow_invalid_mac_address, bool, 0);
+MODULE_PARM_DESC(allow_invalid_mac_address, "Allow NIC driver to be 
loaded with invalid MAC address");

Thanks,
Tony

>   struct igb_reg_info {
>   	u32 ofs;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
