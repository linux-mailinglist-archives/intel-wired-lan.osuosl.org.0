Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 269703C8507
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jul 2021 15:11:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5912083BBF;
	Wed, 14 Jul 2021 13:11:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yrQVwUJdocIn; Wed, 14 Jul 2021 13:10:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EF7D83B32;
	Wed, 14 Jul 2021 13:10:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 364491BF947
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 09:06:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 18AA04021A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 09:06:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=fail (1024-bit key) reason="fail (message has been altered)"
 header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ATfTCxjVq-5l for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jul 2021 09:06:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 73ADA40233
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 09:06:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="208496918"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="208496918"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 02:06:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="466029942"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 14 Jul 2021 02:06:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 14 Jul 2021 02:06:00 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 14 Jul 2021 02:06:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 14 Jul 2021 02:06:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 14 Jul 2021 02:06:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ioWIqrGrco5zh3thAJ6AaQoBi6Ai+CNf9vn4LXmmvGBUpdJ2U2Mi6/z/8J17Udfm5MqbWntq49+U9rpO4zInEyg83fGYaILdTYIn+WNf4s5AIPMDVk6HAcm4YaeJU+CZ8XjFKiViIRC4q3CGof3cIyNgJ0XvTC9S8xK/PjcAJ8LGnC0bWuMQ0zePmR2XIPiXXtCSm9rsK25H2FkHL+q1Q5uxEp49QTXXulJHtuOtzhYTSHhUaoLTUsDwXv9dGctMHFLG4MYVgfupufnmlLhjJj+PXXUR6zY4I5shyk+9KyBqEHp/crlq7ClckwkCj6JLCGW7WBoQiZod5WO7/BAxIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RdJL6c3wbn2cpFT++P4j/WDHageavgRiekpG9bZhzkw=;
 b=YTMu+3bChpPw0wt4+FLwxx5vVqwyGxuG2PNNGdZ2IIFaruVwsAJp5AyK5jClN9xIVc0MN1MYDkvvh4Yw5zP609vBTyYN21FE0u3UR1KNCw/fGV5dlQtb+HYPagjEnPujbzSotT55lni3uCHe1CJSb2EtcFnuVmOom6qrA3Sn82O0vU91sCNbapup/8aaU9vS8UR5j+Sps8Vg8SGnnyJF/TxdFjfIYia07DPct8mkpe4atC6V+GDrW06aIWsSGJ8fTfnEMzTH4C/eZlUfAE09j01CDUJu2GVQrc95OXo7BBGNjcBbDnOA5qO4su05tEt2V/76hs9u/SJl4fGQn/JmOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RdJL6c3wbn2cpFT++P4j/WDHageavgRiekpG9bZhzkw=;
 b=mETxJGYL8XQddB0kpEC2Si6UOeQa4wbsF8PYMqLmEz+ReXgRNRvVcTLEQqKpyPrOoYwoK5hcvN11Te2Y+JUNPvl00e6lZ0Rp1R0l4t5+F5IxpkiqbzBFu109KLZel7Wh+yFxYUthEc3gLqpQC0af+/P7YXXS+tXiRJr3ki430B8=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3162.namprd11.prod.outlook.com (2603:10b6:5:55::27) by
 DM6PR11MB3561.namprd11.prod.outlook.com (2603:10b6:5:136::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.21; Wed, 14 Jul 2021 09:05:58 +0000
Received: from DM6PR11MB3162.namprd11.prod.outlook.com
 ([fe80::10e7:c9b:7541:aa95]) by DM6PR11MB3162.namprd11.prod.outlook.com
 ([fe80::10e7:c9b:7541:aa95%7]) with mapi id 15.20.4308.027; Wed, 14 Jul 2021
 09:05:58 +0000
To: Kai-Heng Feng <kai.heng.feng@canonical.com>, Sasha Neftin
 <sasha.neftin@intel.com>
References: <20210712133500.1126371-1-kai.heng.feng@canonical.com>
 <20210712133500.1126371-2-kai.heng.feng@canonical.com>
 <3947d70a-58d0-df93-24f1-1899fd567534@intel.com>
 <CAAd53p79BwxPGRECYGrpCQbSJz8NY2WrG+AJCuaj89XNqCy59Q@mail.gmail.com>
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
Message-ID: <16e188d5-f06e-23dc-2f71-c935240dd3b4@intel.com>
Date: Wed, 14 Jul 2021 12:05:51 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <CAAd53p79BwxPGRECYGrpCQbSJz8NY2WrG+AJCuaj89XNqCy59Q@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: MR2P264CA0130.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:500:30::22) To DM6PR11MB3162.namprd11.prod.outlook.com
 (2603:10b6:5:55::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.126.210] (109.226.49.158) by
 MR2P264CA0130.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500:30::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.21 via Frontend Transport; Wed, 14 Jul 2021 09:05:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 46d6dfc3-3e24-44d0-b25b-08d946a69870
X-MS-TrafficTypeDiagnostic: DM6PR11MB3561:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB356159E5C2FBCCA8B73BFDF8E8139@DM6PR11MB3561.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HxXRK7OV6U8xW5MD2uFdEVrBVo+WnN0LH8JXm6WoZyVkUdgBVYsb2f82NMZQnhZ0QOA5xb6tXmKscJ6YxLr2UR1PKsF5UyIMKXEbuOpkPFScKWmd7mNdccMpt6Mp+YNHdRBlHb2f7tvAiG4E3+pGL6ygoGWVEmkAWi7fNmzPRVkI+IYB0OTb3Kxuv79icTvn0oNHKkGzrGDgQrDBLUKlxCMbGWVr1r+jD3spSr2Zj908MAHZ7D5Tn4Wg53SnpkK5wN+T4AsT67SUmGdb9v1vy3t9HcKamNoRZKsb/Oavi+fTPFgyTjx5vT+YsY+AfTt9pJnQ/5udQZRGwfUkruddyQxvMsJ1uwwFoTftC0ccyv24RnqiQBinWTGGgZNGte3l+CBrDq71s+UQLMHNEuWLdo04LYaRbiBWlq4Qrdr+h2B00q1spCmUkf0irTiuEN75fVMk6NKdlMHIuAqSvSVe7nU/Y9oiXERT1BfEqdjYnNa+aMaFC3Uxzc9jlb/uShIyvaNwMT1X07jFR0y9rZ0s3aKnAqv6yjyPxlB7zf9ghD0Pu5KW9eC6h7f29dGPG5kXrl9pXDDsVJJ0LZSKqwAyWToMpUFgos4G+eDM9cmtD3oqsqGVc21oAXND6VylkwwXLcSpPrzEMCF2BKipg93vzHqYB8zuU6Lyzj4P+fFmZXtJtSWWZ/hn8f5lPGFB6FAwAzdUz45jttV62jMiRBEDbruzfZ/rOaFDnQck7Uje47YnPp2XQDiVF8etdtNivgoV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3162.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(136003)(396003)(346002)(366004)(31686004)(6666004)(4744005)(86362001)(36756003)(5660300002)(6486002)(478600001)(6636002)(4326008)(107886003)(110136005)(956004)(54906003)(186003)(38100700002)(2616005)(8936002)(26005)(31696002)(2906002)(66946007)(16576012)(316002)(8676002)(66556008)(53546011)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0Z0MkpKcm1iWXFjK29taEcrY0pISHpTMmJwS0lIbzhxdnFUZ3duSnFwOG1T?=
 =?utf-8?B?ekdScjNoWUt4ZmpiODlvclM4czJOSGZhcFRqL0ZnYWNPR1VDdnVMRjNSTVBF?=
 =?utf-8?B?a3FaMnVqVHU4dDNqeWlYMGVQS2xZam1nYkNFUDZaM204NXFHdkFDWnRadkc3?=
 =?utf-8?B?YUdBOEFJSlVodVJnMkQrNFVPM3dnQmprT3V4MldFUHVXUU5rTWFvWFdXRnVG?=
 =?utf-8?B?WUtSYkJaR0F3NW8vYlhvODJicWFYUFlhRmdqR21iU3lyZGM4dWFDYjg2V3hV?=
 =?utf-8?B?Y3Z1bUhJS3NrZlo5WVJ4MHo1azlxS3gzVHBBUDdhTGY0K0tnMVRsZGJMOFcy?=
 =?utf-8?B?b3BZS25GNFozU1I1WjFvbG0yWVJpaXJya2FNS2hDMjZhQWVWU3dlTFhUbGlN?=
 =?utf-8?B?NDhMMCt6TmxzS2pRT3VaOTBId0FLZkhsM0cvaUl0YnJpWGlmZ1hxRXhPSHR2?=
 =?utf-8?B?dFpwazFpaGszbUk4SFJORk5RN0FoODhDVzA1aG41a3VDcTVqczJKZy90Snd6?=
 =?utf-8?B?QkxWRGU3MStTcnBrVEc2Q3BGSGJSN2RZOXBaUEV5dGI4cGR3UkxpejROMmFP?=
 =?utf-8?B?eHRSVlNJMFY3TXlmdGUyalA5L1NrcllDcDFEcjM2VCtVYW9kNStDb3hGZGNo?=
 =?utf-8?B?S0ljNEFoL2FvRDJhYUxXNW5yWWZYa3dOenV2ZDRqTXY3SWtnTC9CWGN3ZkZK?=
 =?utf-8?B?b293TWw0aVJsRUZTeVFrQVgzdzdEMmc3dmxOQTZ3K29aUitXSXYrQVBMWUox?=
 =?utf-8?B?dGpNcjh6RjMrQUN2NHVmYUVjK08xeUpuZ1gvWmJLaURGNGl0QVNoK2pZQVJo?=
 =?utf-8?B?RDdNenFlbmgxSGlheFRpTjNxQWdxSURTcm45clFYOGhjYWtGN1cxbTg0b3Bs?=
 =?utf-8?B?QjFaSnNZS0RhM0VwTmI3elFkeHRGRm1JTUN0bHZDTFhXM3FXOGNES3ZKS1Bt?=
 =?utf-8?B?bk1qM1V5NHVQNDNBdmlqZkJDdFFPS2MveEl6OUJSdzJHakVyd3EyRy9iNVlm?=
 =?utf-8?B?UkQ3OUNmMFpzMUx5UXhVLytQMjRDUWRFYUpvUEo3Z1BuOUk3cGpWUnV2TGJi?=
 =?utf-8?B?TUlwelZ6T04xMTh6MHgrUVN3ZW9abnF2L2FUTjZLU2dLRjdra1Jldng2V3E5?=
 =?utf-8?B?NVdKT2xCNzlTYUNScDdQNy9MbU16NjgrcHljQkVmNjBYb3IvUUNuM1FQalZN?=
 =?utf-8?B?NHpMak5EcDdyTU9WNk1DTVFYUDI0ZmEwbmNLMkdJT0dhcGVIaVZNV2xRbTIv?=
 =?utf-8?B?cWlXWWtaUVdzQ0hXVEFjclNsVXU3U0NrcU1kUHVHWEdUZ0x4UENISDNTSVhM?=
 =?utf-8?B?NHZZbGNudGV6amorSXAyUkhIeCtUVExVa0loMlIzaTJIZDJnc2Z2N2k0eU54?=
 =?utf-8?B?Y1ZXWDFmVTdJTStmVXI3ZHc0SG9lbEQ1LzlGbGpKNEhMZVpKQ2R4dXg3T0NM?=
 =?utf-8?B?eHZwL3VZWHYxRzhkdldvaWcxMC9HTHFHbFl4NHZBQ0xpWkNVbGJOL0RHdHZJ?=
 =?utf-8?B?WU1DM2o2aEtkc01FQm5ONEVRbEZ6NGQxMmVZNmtIdFd3RTk1cWU4NVRQdEoz?=
 =?utf-8?B?emhiZnM0U0FEZmQ2YXRuV0MyajBFOGRpYUFuR3NrN01xV2JRQ0hnRVlIL2Ix?=
 =?utf-8?B?SUJETWdWRWJoWTcreThTakFRbmc5NnBtUGJVS29mbXR1KzI5TnRjQmZOcHor?=
 =?utf-8?B?NFdSTGp0Q2p3VEthMnRQV3BWMWpoTGhmOWU5OHhMTVNiNndIL3FlRGovMTVr?=
 =?utf-8?Q?Z7HMS/6I8DVdfeFA1H7Zz4HQO7iryfWjr8X3C3M?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 46d6dfc3-3e24-44d0-b25b-08d946a69870
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3162.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2021 09:05:58.8042 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5QiuuEBWvA8t3cgEwGCRAiZcL7ERwHbtwi1fjh50QBRyqI1ImLU0phrmlUW2aBoJcSXFRKWhfCOQGD1PqHXPWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3561
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 14 Jul 2021 13:10:50 +0000
Subject: Re: [Intel-wired-lan] [PATCH 2/3] e1000e: Make mei_me active when
 e1000e is in use
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
Cc: devora.fuxbrumer@intel.com,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 alexander.usyskin@intel.com, open list <linux-kernel@vger.kernel.org>, AceLan
 Kao <acelan.kao@canonical.com>, Jakub Kicinski <kuba@kernel.org>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>, "David S.
 Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 14/07/2021 9:28, Kai-Heng Feng wrote:
>> I do not know how MEI driver affect 1Gbe driver - so, I would suggest to
>> involve our CSME engineer (alexander.usyskin@intel.com) and try to
>> investigate this problem.
>> Does this problem observed on Dell systems? As I heard no reproduction
>> on Intel's RVP platform.
>> Another question: does disable mei_me runpm solve your problem?
> 
> Yes, disabling runpm on mei_me can workaround the issue, and that's
> essentially what this patch does by adding DL_FLAG_PM_RUNTIME |
> DL_FLAG_RPM_ACTIVE flag.
> 
> Kai-Heng
Hi, Kai-Heng,

If the goal of the patch is to essentially disable runpm on mei_me, then 
why is the patch touching code in the e1000e driver?

I agree with Sasha Neftin; it seems like the wrong location, and the 
wrong way to do it, even if it currently works. We need to understand 
what causes runpm of mei_me to adversely affect LAN Rx, and for this we 
need the involvement of mei_me owners.

--Dima
---------------------------------------------------------------------
Intel Israel (74) Limited

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
