Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D27543FC4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jun 2022 01:11:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58F9A60FDB;
	Wed,  8 Jun 2022 23:11:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T1x1OUcBhScS; Wed,  8 Jun 2022 23:11:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72C2D60FBF;
	Wed,  8 Jun 2022 23:11:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CA4631BF318
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 23:11:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A9E0E60FBF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 23:11:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U6X-PEg-hKCp for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 23:11:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 804BD60F83
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 23:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654729907; x=1686265907;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bVoa32Qm3xUw8ZHJiju9oP8/PCA90TG5wuJkCXpQl84=;
 b=gwizInFYsXyJ8AzUj0R1CAYsKtJ5UReqU+x6HNcerpLS8BEyl75+MKBT
 3S3uTxwmRhsoKTdiZeMgZ9hTBFqfkO/kcKjemTquZ6cBW/E+dIUjB3/D8
 F1Fx9F4Z+xc8Pg8Nuh4zMXt21XvS79U4a9/JlXbnVxI/tfXXWoi95rxbB
 diGQTO0uIse3qaAKW9peWPjfGhWBSbXpjsjijTa4NRwrrdqBfPoOWwN4Q
 Ff0w4MCNlNkdOgtRiW2ASbG2SHTHnI86pa7ZnmYeF+OJ/zmMMvHgqjKW9
 vQpzAvjbo2l/jk0iEXA6/9M/nQ+ESHzZGin1gitCwRD69Vs4DPNIimSFo w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10372"; a="277102787"
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="277102787"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 16:11:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="648896370"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga004.fm.intel.com with ESMTP; 08 Jun 2022 16:11:35 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 16:11:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 8 Jun 2022 16:11:35 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 8 Jun 2022 16:11:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bw4rpf2riJw83sn+vaX96SakRHggaHXI27nZnzKg8hTYR2MCx8MEo4uoZPpjvnMqLIzasE+VHO9n2KZ2T87bwt4tiGQSnrUQdCGjR6jZeEepf8o1QbDGkOYAhQ+XywgQrPVIXnkwAXO80VfsSguwx2Y3xUmkiEOw3kJZL2Huk3B2UKXsSFBDzlROzgF9Lvzyx5/3sHavcnxlc0LUc4lA+dTpD2xRAy1oxgpqpR58sJJFUOeB7PYYrzmf46jbhjFu3rpqjFJy+LDknoMyCsqUQ0xsJ/xXVzhhcjyGnZpIlpDc1upr4Eat+Qm04ynvSB/Sp7kdDCxXKxwP13BgXfjcTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b+5x1hyMYvJdXBCzLxlhoNtgTF7fgJnzaZNOxMjXaGU=;
 b=Fq/8vjJcKkOc1a6iAZ1C7cUM2c3JBmihROLKWvMQFxN/6Q0r3cV19TiBXSJRl3o17JhRgvUOQxSGFIuPVAIPQSpY/gl8Pdl0jdNEj+aVLiwvufVNH1MUOBh+7exAOKLpEPG+aiSNQiE657JiW7ANbXSw2Lk0E8w3eh0rDu/wL0T3lIc+tA6bomkD6IrSVdVzlmuglIFWYjJetogpQiCqJKbMopxJXqvhKzI16mr5FeJtqKJpEsfKQQKpEyYQGIA+JHmOqD2yd29A/JgNLJZmiIargaFeXJKfKuaFlK7bY2UKld8C09x93T+NKEakR2FB2g81PpRNa85UjLYESjOl/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB5959.namprd11.prod.outlook.com (2603:10b6:510:1e2::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.13; Wed, 8 Jun
 2022 23:11:33 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5314.019; Wed, 8 Jun 2022
 23:11:33 +0000
Message-ID: <d46258e2-21b1-ad14-423d-a8edb0cb5c44@intel.com>
Date: Wed, 8 Jun 2022 16:11:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jun Zhang <xuejun.zhang@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20220607232546.3429846-1-xuejun.zhang@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220607232546.3429846-1-xuejun.zhang@intel.com>
X-ClientProxiedBy: MWHPR01CA0040.prod.exchangelabs.com (2603:10b6:300:101::26)
 To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a3439f36-0543-4359-153a-08da49a43a53
X-MS-TrafficTypeDiagnostic: PH7PR11MB5959:EE_
X-Microsoft-Antispam-PRVS: <PH7PR11MB595948E42690F622EFC02CEAC6A49@PH7PR11MB5959.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7fpcNAwIJKqYElPJzdxwph5B2RgoM2Rpw4vWdTRCiSeJqLIouLZhpVeNxbTVwmugddFEA8/Sb0NND0n0VoQoGbHykPiklzg6QCshbc0IBarovr6CWE5UrbLuxpxtHoCrjO7L3To2WP7eMcuZSgBYYCfaVomp8mFNYMSjaSGhVhC5/sYxt5ZQhwdf4FQDVdx6Dl5NtqHMTfTBUV/kGw2OLW+SEklFLnOMsyUdiJkTyi9REochLGZk/EYGUfzW4vaCiCGNFUsITH2rEgPpWV8jyD2mQVFo9CnzIru/AKQT8vvd3HWwysAgSNOOKrDVTMKdfFqZ/z35WLoWsuos9WVabJ93D+4GOluxLGVaaUOnL0Yi+X5EdfSLj1SLqpjhKkfGQcaM+VC5Dqk2OyCMGLf0IZOWePa5tG/rU1PIN+y0m7Vx+phN20w3ZCfdREx6c4roRoI5K25gWkKGOdI3ry4ndTGNb97/U9OLeNaeviAmsMSp2bZ9GX5Aw9iCozELEv4J7Zb0kQw8tAETBonORcoPxbsswnxjupeXRNXSW73fxXKr/oEnYQZS85QhagH0Mv8XMiTF+yMe8aGY4go9/JCA0sEa7EleRCShulZ4CiAODLKaBdEfQxhwY0k6PHvL7bqYxt7ioGK6vChwh1t0WiudBF0DOWerjdXZ0qG3FLRrGgmUuiut1IC05KnYeGulBD8fVN4XPv5u/2D+p4y7MZv4xfaDHWrnyVBL0/VkQpljfKsC5/SpggiqtQh7gYYp8ukatYLxYnk8Xznti6eIQpTMDTpA6tsfQyKprhk/hWvzpQLoRoVL8QM4eOXyQGjUqmZd+5pMAsmUI7pmQ9yet0xSwQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(36756003)(82960400001)(38100700002)(31686004)(86362001)(31696002)(26005)(6512007)(83380400001)(107886003)(2616005)(6506007)(53546011)(186003)(8936002)(5660300002)(6486002)(966005)(508600001)(6666004)(66946007)(66556008)(66476007)(8676002)(4326008)(316002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RjhoUmFrL3RCT2w4ZnJ3ZmhzV1habitqTnlUaVBNNGFJbjBURnJxRGdla3RE?=
 =?utf-8?B?Q2k0UWdyVys4aE5EdXRxUUN3QTFVYUw0MExLeUFqSS9wckxFOGtvUENScit3?=
 =?utf-8?B?TGhaVEtFVG41WUpYWXBTV01lQVdhcDVkOTdrWGl6UjErRVNDRnJvbTVMNS9r?=
 =?utf-8?B?SHNmNUFZenViVXhlblBEaVM4YTJHN0hpZnMybU5yeldPcGpaN01YN3ExTXF6?=
 =?utf-8?B?M2x4Z05OdW1IbUJRSjRXM1VwS1JYSWlGM0ZEUGhIU2FBYlV5R1M5Y0J1UDlP?=
 =?utf-8?B?S0tCcTc4bTBtZndBSUJnb0dQM01LaDIyaXp3ZEY0ajBQN0IxOEJ3eHcxNFEy?=
 =?utf-8?B?Mm5mSlBXejhJQlNvcWNXTTFnK013TUFUSDRFVjduL2NBRTBML21abldNVXhN?=
 =?utf-8?B?VGgya280SlEwbjc1TSt3eU5pcWNNRzJvODlCanMvTy9GdEplK2pVZlA1VFZt?=
 =?utf-8?B?QWwzcjdkQmQ4Y3MwelVPYlliSEU0Ny9hYXF2WTVIb0R0VGpUM3o1LzNkTDRr?=
 =?utf-8?B?T0szN1JoQ0dYYVJ4ek44TFZjMmpKRDdGSi81dUhyZUxMZml4SitlY2xoaVJS?=
 =?utf-8?B?Vi9xRWxCQXNNcEZMN0cyZ0tmeTc0ckthSWZHYUJvQWtVc3BwV1VwZXViVyt4?=
 =?utf-8?B?OERIS3AyczJubzhWV3VQcVlJMTdaeWlrQ3dzRkRETHVvT0tmK0pDelphdkRy?=
 =?utf-8?B?UjFTMGtmbEtYQ0VmK1JpRXFlK2czbmlTWkhxT0p3R09ONE9iZUpycG1jQklH?=
 =?utf-8?B?bnVxZWVRdjVjN1lGT2xiRmExOTZKU205aXdRSzVBSHNIaUlic0oxQkZNTmZw?=
 =?utf-8?B?RzU1RUhjU3o4dnlkYUNZT25wNXJZd3lrWnk1NHc4L0M3TjY1N2pmTGU3bnNK?=
 =?utf-8?B?bWZWWlQ3bTV4UTJ4Yk5MZC9ISFZ1cWtFMGYxRHBoaUhJcW5uOGljVTlTTTNQ?=
 =?utf-8?B?ZjNnU3dJSTM4eVZvMFFqWVMyQ00rZHNhc093WkhyVlNVMlUrOTVENmFNRjJ2?=
 =?utf-8?B?eXNHU3FMYmdVNC8wcUQ4WGZHMjJISDV1TVZQWG52VEFXcWd2cEZLZXVpWExr?=
 =?utf-8?B?TXU3SmpIQlI2eVZQSW9SR0M1QzA4TWtacmNlRmV1OENKWER0WUkyanpmd3Zh?=
 =?utf-8?B?Z0Nrd3lwSEdBL0s3bmpNQkR2NE9JS2p2N2NUcjdxenhhSW5yNGxWUmIwSzRU?=
 =?utf-8?B?Nko1Y2ZiZEhPM0w5elh0VldIMGMyekYrMzUxSFdqUmZOd3NzZFVMNURzZzVC?=
 =?utf-8?B?ZU1NMUk2T2N3WUJVZDNsaEd6b09kbkpWUWFEVnhEQm51QWhGbmJOcmphUXV4?=
 =?utf-8?B?b3hKQUtTb2pvVEVwcHJMWXFBREhZRTNGU3Z2c3RvTXA2QU5KVTJmVlI0TUtX?=
 =?utf-8?B?SVhZQ0RjMkxZS2p0aG1QYWdaNU04V2NjQWNORGJaL0ZleGwxOGpCbExlQzc0?=
 =?utf-8?B?YnIrRGRXNkdXUCszNXFQY21qbjJLcDRvbEpGa0d6Zy9ocHVJK3crR2FkQkNP?=
 =?utf-8?B?c28yeXdab3Z5Q1FKZ2RYUGRlaGMzKzF4aktlUm9iWjQrYU84NzRjc1A1MXM5?=
 =?utf-8?B?VUdkRFdpTHNxYk1ZOGJLc1EwVVVrUEpJTmZVWWIybmtudnhkSUU4ZnMvTmIx?=
 =?utf-8?B?cm1tRHZkdnJBbzdRYW9TanB4QkNQZ0IxeGNCUzdRaDhhdTVqUUxpUzhmV1FP?=
 =?utf-8?B?YWtHcStEZjBib01pYlR1RTdXdEpockpEVm0xSFZ6REtWQmF6RWJHYkU5d0k5?=
 =?utf-8?B?ZG11NGZtbkNTVHo5VXdFWEpVaVVIaG1zRFBvbDcyT3VINHo5MTNON1JkTUZk?=
 =?utf-8?B?TTdXd3dKMFd3ekw3elVzcitqNXNLZXFhWSs4V3F4ZzJ6VzY0aCs3RHp1clRJ?=
 =?utf-8?B?NHIwVVBJZ1Iwd21QQ0VQMUN0MmI0SDNTTTQ1RjBZVHJDZzFxUEoyRVp0ckUy?=
 =?utf-8?B?VmlGRW1Zb2tSWk5BeGZZbWVsOEowVXBxaVFqS0N2RVhlR1RhUG5ReVlGMjVU?=
 =?utf-8?B?dzRIWlIzUnMya2NjY3BlS2V6OTlpcnJ5K2kwYWQ1YncyaXF3ajhNYnVrZUpT?=
 =?utf-8?B?M2kvN2JTbm92d1Y4N0xHeUY4K1R5QWN4ZmJ6V2hUb21mald3aGhrRTBzTENq?=
 =?utf-8?B?M2VmLzI4VHRoN3NhWWxUek5KOFRLN1d1TnFYYjNKd0FPOGwzTllISEVTblZU?=
 =?utf-8?B?cjRGbDMzMmxKOW56UTg5L0l4TDNLRVJVQXNaOUtDWDY4Q0RLbUc5WFJGb2hI?=
 =?utf-8?B?bmhETFJDaHlBS3VUQ3I3YStyR0FKUkhzSm5hVDd2czlKUm1SMUFDYWVZSndO?=
 =?utf-8?B?ZnBycysrSjBXUGxuK0pwdWpUbmtzOWR6TXNhNHpsRk1tVUZJM05EVmZDdm1Z?=
 =?utf-8?Q?Qkgw/yKhKJRzx4/E=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3439f36-0543-4359-153a-08da49a43a53
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2022 23:11:33.0209 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ftGBWE+rE4zSFMgBn/VcvqeTvfa5/ys1TgaQuGIRnxyYLr/1fMUcMOrxv+DzXJfoaegkfc1daGPhQGzyUEIV+6Vt3gYrwN1zOGDFNs3wBlU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5959
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Disallow changing
 rx/tx-frames and rx/tx-frames-irq
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/7/2022 4:25 PM, Jun Zhang wrote:
> Remove support for rx/tx-frames and rx/tx-frames-irq as it is
> introducing counterintuitive settings and is not stated in any
> requirement.
> Remove from supported_coalesce_params ETHTOOL_COALESCE_MAX_FRAMES
> and ETHTOOL_COALESCE_MAX_FRAMES_IRQ. As tx-frames-irq allowed
> user to change budget for iavf_clean_tx_irq, remove work_limit
> and use define for budget.
> Without this patch there would be possiblity to change rx/tx-frames
> and rx/tx-frames-irq, which for rx/tx-frames did nothing, while for
> rx/tx-frames-irq it changed rx/tx-frames and only changed budget
> for cleaning NAPI poll.
> > Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>

Same question/comment on this and for your other patch [1]. Please 
either fix ordering or change author based on which situation is happening.

[1] 
https://lore.kernel.org/intel-wired-lan/20220608170540.3463098-1-xuejun.zhang@intel.com/T/#u
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
