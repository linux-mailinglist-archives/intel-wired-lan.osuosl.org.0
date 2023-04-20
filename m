Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A226D6E98D9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 17:57:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3845B842D0;
	Thu, 20 Apr 2023 15:57:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3845B842D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682006234;
	bh=klEKipigPVa3Eu9CFv08nh8wMKWG/pJnYdiCBXZhYDY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FmxomSVgTpCYm7SqsCvA+WP1H4I9XCwGfz8RhZkrn9DY8sjrSH3iCCd6uo7m3hB7b
	 4TX9OJsFbBtwA7ZmIb81ua3/5nmJaRuIY84lhUQpqrN4UB4H/Eqjqiev7sKRRRbajZ
	 97QCkwtuRzqkkU38CTBit1+yh0UxE7Teaw+9XTEYOAAvNydG+0m9Yu3AetUg+WdJPq
	 tPJo/tEErx/OCdcN/35pKY5MawqSBtan/WnQ9utXwIaytF18PnG2fQWg8WDfkzeUgV
	 Ff/oc2K0llkgLsVgfirpzQdAEzCj1A49L0Nzu2FteXdIVivJ95T4EtEAvKNUDhU3S5
	 sjufi5+m1Ugrw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jb7sdM5W3s-u; Thu, 20 Apr 2023 15:57:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1554483ED2;
	Thu, 20 Apr 2023 15:57:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1554483ED2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5619E1C437F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 15:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 29F16841F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 15:57:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29F16841F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dKc8QtYoKWp5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 15:57:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C69A83ED2
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C69A83ED2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 15:57:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="326102287"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="326102287"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 08:56:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="866321910"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="866321910"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 20 Apr 2023 08:56:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 08:56:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 08:56:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 08:56:33 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 08:56:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kLaA+ePoFVy5pmZHI9cVHpHr2P2nDPFTDxvncRt4rt11BS1g08gc9ER+iZLAWlf3BXRGg4zOWEATnDd/hHoyB1tHuuOhyAqdHAR/YVx4AMM32TMAjQ9f5zRYFB+fQ3sEHQgXk+nuGQXybVNrFAxA9UHvUO24VPQrry/JxYh3cGodUXNiwNayUFcaALuo3fP2xDtUMRyOes5223Fbs8hVDaJa82tJo2KnBYRyT9o5lhLvb/TzyORYEVcCgdY+yxx5HU3m6aYojUj5C/aM46h3bFLIzVqzo/2a2cFFA3u5o8lP725ldkqYvQsdsa4mubPGIP/HVKQMa0GirqrFEUCAwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nbzZKcQ0AiPr9GyLYO9Jt4KFP7/ZJY4z+CIf+M7YkuU=;
 b=LO/xcPy8etv+wU5O1qcw4kCiLmy+eJ4dRCLgD6iRr/vcUvoIDFZL7JfaHgkduhIn2wF+zpc3vm8d21mj2X0isOwY3VP8ATzRMUPVO0wg2+VOpNp8QxRHPEvr8bqi21br2xAjEphZdFE3OPhIqU8ER9SymKp4z8RFQb24qcDZBKp1zFCzR3xLJijIcuIbVo5uv8OPh/YPNH1DUkRO9v6xY0bzX0qBtdV6TMvdUFTF9u0pEfp/tOEh2N6/Si6uDkn1yH4QP+rnrdBAE20U2JT3kvClg0WSFjIkJZOEDAf7J/grLeW5+ohLw8feKUYT0np8Qhr8IoW1LH0RHlbWxTD8Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2937.namprd11.prod.outlook.com (2603:10b6:5:62::13) by
 DM4PR11MB6430.namprd11.prod.outlook.com (2603:10b6:8:b6::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.45; Thu, 20 Apr 2023 15:56:31 +0000
Received: from DM6PR11MB2937.namprd11.prod.outlook.com
 ([fe80::f56d:630e:393f:1d28]) by DM6PR11MB2937.namprd11.prod.outlook.com
 ([fe80::f56d:630e:393f:1d28%3]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 15:56:30 +0000
Date: Thu, 20 Apr 2023 17:56:22 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Ding Hui <dinghui@sangfor.com.cn>
Message-ID: <ZEFgplaRuxaBRxlB@localhost.localdomain>
References: <20230419150709.24810-1-dinghui@sangfor.com.cn>
Content-Disposition: inline
In-Reply-To: <20230419150709.24810-1-dinghui@sangfor.com.cn>
X-ClientProxiedBy: FR3P281CA0131.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::14) To DM6PR11MB2937.namprd11.prod.outlook.com
 (2603:10b6:5:62::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2937:EE_|DM4PR11MB6430:EE_
X-MS-Office365-Filtering-Correlation-Id: 26af0e0e-bb8a-48c5-f67c-08db41b7cea3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2YznzE3/QyiErifX/FQLqcLnQiKiEr6K96IMt+aBKe1gFoLFoWBSQdAlEGTbHWOuNGD+TMxRx37tz8mCenAdHA5KUEADhHBqbqkJXd7SoCJfkBsCWMWa3yTbbV5xPiw5zrG7JXDjCEyti2EgoMchc9gooa1ILjaaqqwV/y/0E+TlQpml9BXrXq96k3pVghlW+/zSQiJzMyzozdQurhAQOFFQlRY+ZqogMFbsj8tjfO7kPx8fD9/ITmb40UImH0x1w/g9j1VnniTfRWZSSMaffAoxqJh8iEhetjDZMf1FbvSSnciGRHk7QZuFtOMe+Jm/aTFzUQe0lZRnOKtEbzqSl1Qp0pSzcZCP1l57tMFTJetmZc03Bx3i9UcBtWrksltqJj+tZl25xnwncyr+Mfqy+VLMKAx7guAeOdoO3nr3L1LZG/SeC/0vuaBup5MRd5ZL3ND1JWMZ3gWkX7j1Rw6cv1uQoGtzeUXGUqm53DvTzzIhBH5GODP0zus5wK/rty6oaMA22buxsaimgScHQ3it4lONZSgGIol0VAxeFXAf1y/FBX1WCfBftHCytP/KKdJi
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(396003)(366004)(136003)(346002)(451199021)(66476007)(478600001)(6666004)(8936002)(8676002)(316002)(82960400001)(41300700001)(6916009)(4326008)(66946007)(66556008)(38100700002)(186003)(2906002)(6512007)(83380400001)(26005)(6506007)(86362001)(9686003)(5660300002)(6486002)(44832011)(7416002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iavcOl8pcEXfk9Ic041PpMD9D7wBdBmCBlqGZYzziCabJQfEMvkJLqy1aUlC?=
 =?us-ascii?Q?gJ3on8Fo8yvrMHOy2cBGsIfKqqcj/KD0z0YnOtamW+KMF3vnlv9rpirEjci4?=
 =?us-ascii?Q?kmGtnu4vd0eeqOVdIUNGXfAtWYd1cBEGpVO1ydCWmmud0jYDDd+7O6qwdPCJ?=
 =?us-ascii?Q?BNY/1lndSwz1OmA2JMtqRw/Kun2L32JV2XZr9faRfTOZsDeuoKK9lZX+IIVi?=
 =?us-ascii?Q?eD/BF7RpWO4j411IX/gNpZFCm6weO7blaoAZDvqB0sa43lsJYg5sdBMU/Fox?=
 =?us-ascii?Q?24w6no1SBXU9UVvdiTqeWuw45wzdsuAykV8WwPnj4Jn9VN/zhTqJMx7PHfQU?=
 =?us-ascii?Q?OmsVJNUBQ2+BxZTj1aI/rXo0bJwwyGfv1bW1rLk/AtMlDxOpct8LCLtIPuQM?=
 =?us-ascii?Q?1OS7RkCyVZEqPf5UdzFqI+tSemapS476YEx1qve3ttui2zhPZ3C50DilviRA?=
 =?us-ascii?Q?8bl/KF0Ov1d96Xuh3sfd265lwOlCD65+j+Yd/2sinTxsvaxdze1f/DB90HqA?=
 =?us-ascii?Q?Y2bwcxoTSFwZnCh4CS3ooo1NtDubRLpFcrtzYAC9QgdyMt4cs1emy478vFHT?=
 =?us-ascii?Q?OkMOeS6w3xf0H1JLxhjGvFjTA0e+47c0CJykGVC4qHhiJhasRFUSsSKi3ubE?=
 =?us-ascii?Q?4RNESSLbR8uTd/Ln8Rixn6QVuxZklVlvkyxR1irOCSjgxpIHq/cu6q4b7MfE?=
 =?us-ascii?Q?oaL6ZgDLkxPXcdkoCd86VM2nS9ggUS5LgWKfgBlRDyL+yxY9ZjZK0GeDG0tQ?=
 =?us-ascii?Q?0yCEDJT9PTis4K4tQqSBhC7lgRBI20di2ydcufx4T9wVWV+2XKQAp9UzRtZO?=
 =?us-ascii?Q?7rJE2lFBlj7ytybbQh5/wxNhpWmTKLB9NKDzTyAt6tfKc6RniJ7FFMJhd5eB?=
 =?us-ascii?Q?KhGobkRGxNdWjRJZgK5dwxUgrwcmu+DGjrTUMfJnkl5d6nEObCzqxuLaLvf5?=
 =?us-ascii?Q?xpjB8lHyGpTkfwsww2JQPORpjrh8ulGclHgwuA3u0m4Wg0mgIQM5UHbNqskM?=
 =?us-ascii?Q?/RZZzqVGtXH/8Ka0qQVUpkv9IXEWG7lrB9OqgrJDF9Xc5pgWHJx5s4JwHvbm?=
 =?us-ascii?Q?kEuh05iuIIGk8bIsoIsbS9dq+wwVgHlXRP+RM+oeig17w3qd9xwV78zSOL17?=
 =?us-ascii?Q?7WyWxPsahYxpXqe/mDG3yMPWSA64dONL+VMJbB4XAJaV+OWcjgc3/ZTP1ZnD?=
 =?us-ascii?Q?gPr1se+CYCreCxz5AYSBSFf8b/s+sf+WvB8CiOVyN/k7P3/wekSELnuPopd4?=
 =?us-ascii?Q?9pDZlNiY4+Hezg7avwgXEq6SDf/7J1R7oInNSDw4IHLI8cQJ6RtwI1t4LBqg?=
 =?us-ascii?Q?HVd9fUfSNGcjWC7cYze2BaaQKIvBXNXLSusW1tAfyB89rjooFLz44sgM9YEK?=
 =?us-ascii?Q?oS0FKvJQ9fG/4aHeYT3ENAorlXZxx1opEUe5Z55LTkzjiJxHxeDVDiGD+lsH?=
 =?us-ascii?Q?IsXzDgRgErh7KdcuOqay23FtZ8i/JaCa80tIwSQPYKzbLqcNkZr5Dq9QBq/I?=
 =?us-ascii?Q?q/otNNypYo5xrXTTWjhiYjFnvxPuxgfSqJnmfqDHyrqBtFvUKDhCbm90vSAv?=
 =?us-ascii?Q?NVtjvDv0cMvLyhmvyqMSjFNOUj5v/hXf4Y7miQ7JNQGDOcVMmIgdLTn4mA4/?=
 =?us-ascii?Q?kw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26af0e0e-bb8a-48c5-f67c-08db41b7cea3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2023 15:56:30.7060 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 28bkG/1+T7CbNRksu2IP7I+IxI0Q1K5LhVDAH/HSzlt2KjIhaVgwiE2uNCxwMBjcsQnT72a9oqHqZ+XYSSceSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6430
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682006227; x=1713542227;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rTjKuhHXyqtn2EtHGxv6lP07PVw11e5ytCk0NUci9Tg=;
 b=dGMJ6H3HSl1uBvVOSLR9ZX8Y1e196csl+TwjlPPJHlu3b+U5vhlDDmGO
 nsMULmcNkRrHGqGLJfzjdM2AzlEO8ioy8BBTM1C+UN4UbhJj2PQYIyDr0
 byT3u8UBpXj9jbXuYrMQ5qaEHK0Xq3HBbWbRgZZOk7FKpsU1ZugLBmt9W
 hBv+8v0lvRWMwQS1Wa5g7gGYfECLFZHb+aMIDV+IG53rxUagSi+MGg7T1
 Ujx6jsL1YLYnF4MfbklNFC5wjc3TsNNceHBb6hx/gyFMcnAQ8R49dYBmq
 ZO6bI8CWj1MbeCvJfq/jz1NcxWB82/viY0VPQoFrVBzepY4k9m77ZZp4t
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dGMJ6H3H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/2] iavf: Fix issues when
 setting channels concurrency with removing
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
Cc: pengdonglin@sangfor.com.cn, keescook@chromium.org, gregory.v.rose@intel.com,
 anthony.l.nguyen@intel.com, mitch.a.williams@intel.com,
 jesse.brandeburg@intel.com, huangcun@sangfor.com.cn,
 linux-kernel@vger.kernel.org, grzegorzx.szczurek@intel.com,
 edumazet@google.com, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 19, 2023 at 11:07:07PM +0800, Ding Hui wrote:
> The patchset fix two issues which can be reproduced by the following script:
> 
> [root@host ~]# cat repro.sh
> #!/bin/bash
> 
> pf_dbsf="0000:41:00.0"
> vf0_dbsf="0000:41:02.0"
> g_pids=()
> 
> function do_set_numvf()
> {
>     echo 2 >/sys/bus/pci/devices/${pf_dbsf}/sriov_numvfs
>     sleep $((RANDOM%3+1))
>     echo 0 >/sys/bus/pci/devices/${pf_dbsf}/sriov_numvfs
>     sleep $((RANDOM%3+1))
> }
> 
> function do_set_channel()
> {
>     local nic=$(ls -1 --indicator-style=none /sys/bus/pci/devices/${vf0_dbsf}/net/)
>     [ -z "$nic" ] && { sleep $((RANDOM%3)) ; return 1; }
>     ifconfig $nic 192.168.18.5 netmask 255.255.255.0
>     ifconfig $nic up
>     ethtool -L $nic combined 1
>     ethtool -L $nic combined 4
>     sleep $((RANDOM%3))
> }
> 
> function on_exit()
> {
>     local pid
>     for pid in "${g_pids[@]}"; do
>         kill -0 "$pid" &>/dev/null && kill "$pid" &>/dev/null
>     done
>     g_pids=()
> }
> 
> trap "on_exit; exit" EXIT
> 
> while :; do do_set_numvf ; done &
> g_pids+=($!)
> while :; do do_set_channel ; done &
> g_pids+=($!)
> 
> wait
> 
> 
> Ding Hui (2):
>   iavf: Fix use-after-free in free_netdev
>   iavf: Fix out-of-bounds when setting channels on remove
> 
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 4 +++-
>  drivers/net/ethernet/intel/iavf/iavf_main.c    | 6 +-----
>  2 files changed, 4 insertions(+), 6 deletions(-)

For the series:
Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>

> 
> -- 
> 2.17.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
