Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A5041955B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Sep 2021 15:47:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E05F4036F;
	Mon, 27 Sep 2021 13:47:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nG8foRCMxgUK; Mon, 27 Sep 2021 13:47:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA84840160;
	Mon, 27 Sep 2021 13:47:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D9751BF28B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 12:20:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2AB1780FF3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 12:20:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NIAOnxTquKjo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Sep 2021 12:20:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2070c.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eae::70c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 155BA817C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 12:20:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DiFEr884XeBlvlIR6ocDlc2616hGMt9AVPpkzET8qrhiAa+xnbcDUfq5O2MfDW0iNWLLKHTb7jbcKOyam8oEomeut/lzi715qTjq9flFbfR4eEPPAtFz4dYsxpdPBQe0goVmrNM2Jhu+J1D6uZroycXvZXawc3/lx+gQHRbpic9lJeTxGMSmibEEnlki0akdDsOAJlanjsnVcX0xZfQ045/zAeraNnVhnxzM6oRalxbyLtbjc5swlQ7u47ZVAlHuHqYo7mdoPB6uuZ/nYusFjyT8c8hxuTFNtRRX88Ew5Q7BqQSxaV5YUpi3LFzk0I7ewjIlgnw6vYMgrsf569QZSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O7e0fUKbKjWbWIQDOZlq+edoH9nwRJ8FJ1ng3AD9X2w=;
 b=eR3yrZNhX/b2ZKqCZD1n85+lH3FkpLbo58Vbx/Rs+kUuZ8J9HT1HVTNt/jng5AI04PijkdFj+VZb2/IepbNyJXKYHQYE6YQYpe1by1KwPS2dMD3UVg2vSK4tHJRXRjAhT3j+SY1NmFzJ6TXanXsepuKR28AQLPMNEw6HubnnNtI3tCpW1pnvy4l+L8yOWPKxbuNQDXEK0RwY0f9bHYScwBIzj2/lNGX1P05A7jw56Wi0tzUt5di+qrvUHTphL9VR+wGshYT8Pm1wKz2Dbxl9Bh+8b+Ho87rN5bXGBjiM4noaQaZeMr4/uzUHTKHX/Tl5gR80FPkrSEXT4ulMmx5j0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O7e0fUKbKjWbWIQDOZlq+edoH9nwRJ8FJ1ng3AD9X2w=;
 b=kY6ZN8HNHKBuCvUH67wFVpFJ8x84sXkfikkOwciDF3ouV12QaF6B6g/0YQejaICd+yTuBwllC0mhWBbBBDXCfJVkpzuijfAOz0kyS9dgmHVDZGdaBrw0WUiUNE/dVglVcfpp6r5w6Ju8/MOdBG1+Ypmjv6wUKbwAKYzWlBIPmRo=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=corigine.com;
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by PH0PR13MB4777.namprd13.prod.outlook.com (2603:10b6:510:7a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.9; Mon, 27 Sep
 2021 12:20:55 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::e1d9:64d0:cb4f:3e90]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::e1d9:64d0:cb4f:3e90%9]) with mapi id 15.20.4566.012; Mon, 27 Sep 2021
 12:20:55 +0000
Date: Mon, 27 Sep 2021 14:20:42 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20210927122041.GA12315@corigine.com>
References: <cover.1632565508.git.leonro@nvidia.com>
 <f393212ad3906808ee7eb5cff06ef2e053eb9d2b.1632565508.git.leonro@nvidia.com>
 <20210927083923.GC17484@corigine.com> <YVGwtNEcWSgYvyyV@unreal>
Content-Disposition: inline
In-Reply-To: <YVGwtNEcWSgYvyyV@unreal>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: AM0P190CA0010.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::20) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
Received: from corigine.com (2001:982:756:703:d63d:7eff:fe99:ac9d) by
 AM0P190CA0010.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:190::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.14 via Frontend Transport; Mon, 27 Sep 2021 12:20:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 39345651-ba2b-40b2-854f-08d981b1410f
X-MS-TrafficTypeDiagnostic: PH0PR13MB4777:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR13MB4777CD8C9ADCCFBD547CB97EE8A79@PH0PR13MB4777.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:525;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EyhxYIJIuUVdVD9OZFra1Jk/tmWIUKd+I5tMoPJw2p2blAepXkwL6VUeD1gYzb0wbeHMHb7KB3U93m8+StceA56ovEGuSMPUFNau4arAje/is9BtSA18NGERUlZ6mLjbcW9J+T/6h24tdWE9+W5M4+wJZRuV6wO4glatd4vk3iUTNMK8lkB+y2Vnp6iVsHhX0YvXFcTl4lFbz3/uqBAFfqOt/uKsl8cpXO31sDSQvA5G4ZO59tsRQsJ4PPOcUhIhzYDhCg5TY3rmNIQys3nkOsY097DUrLry3ZD2q8hyH1wGO5qo9wT5/bCW3BhiDjWaEG3nYxUkbYobMgJrrmPv6TgQdhHDJZWmnGuAdxgqxNi+2LpZvhK5iNMzJ0ve64B4d6pFBi7T6+NiA4elM2c2Q0aLl2nAmB96PulgMH5QpgrqP4rifZWfoXGdFKXZruXRI/dlFna6iub54sOc4ygTqGbrB8UUzsBeASxvlu0yRfsOqC5E6sX4aOfmy+SNcaJ/oTVfm1cZ4KvL0+tBOUmVUcjWSV/J82G9IH4FmFtg/WNBQRCXrgxVOR8VavYrGGTkva4+4deoukiGfuAqYLHiwdrzWsX3s6Ui5e2JJN/BsU26FIJI4aqlCr1qPcfS09iCoNoAYfk5ltIXAt8yOd+/19IqzbrBA3sXiYwKk4Axctywbt+9jOeuzaJ/Fi/PhA6EieqLvBHKxBGe7jYB4l6rWLiBVTFlJj8fe+3/BB6fAjw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(396003)(366004)(39840400004)(136003)(2906002)(7696005)(186003)(52116002)(508600001)(33656002)(6916009)(5660300002)(316002)(36756003)(4326008)(83380400001)(55016002)(8936002)(8676002)(7416002)(6666004)(54906003)(966005)(7366002)(8886007)(1076003)(66556008)(66946007)(66476007)(38100700002)(7406005)(86362001)(2616005)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Kb8KYVmr60hFAzEw/zQxnfcvfo/BbO44vGlVApIexPmrejJow74QdWPGq5j6?=
 =?us-ascii?Q?t7E6+WkkQkLBT/Ow6yppzAI1AvEFJKjvwcfhFCZHYA43si464RQJOTgsWFa7?=
 =?us-ascii?Q?yTTmTQ6YRtH9f8Z43+D8k2HGQLaiIJ1hBJH5H6fu1jzJUegQT6+0/FkBYgvm?=
 =?us-ascii?Q?imnvPixke9sWAFfFLPzpI13I5HUFTJLSNAGL4UxYGHbXqfr+X0b6t5krxqLm?=
 =?us-ascii?Q?0WOPNg7nMRQhbWF0WsnTaYHAHpfXxsa3lo6cfN2zJErBF2yom/y++z3Dj89Q?=
 =?us-ascii?Q?f2nUBbkOVffqA6JdGS+yzeEZLhP8zaUrZBg5DEPhjmnp950OZXiJCC05EBjV?=
 =?us-ascii?Q?l3vjergtfFhZuJ+i1KyMwOVWOPuhNY1KaJuVYOCAJ3WznZeA/KUeQimjzLT3?=
 =?us-ascii?Q?o8kQopFLoq66OauErVSqiPhGtGMlEe1/+lgZfnzJGSgvkbn4n+ms2jSZFQbg?=
 =?us-ascii?Q?yRTbu+8dWoWoJCvRVeK9PaqHph1cxBP4BLzJD9UWVhF5Q0dgU1fs9SM9FjcN?=
 =?us-ascii?Q?/AIOUSgR+0yTLcYUbM7uOyJPTZDS1G6daGDNZEn6KSItEzLfj5PR/2ivuRIU?=
 =?us-ascii?Q?zhfKqz5EyqpE5FJgM5+XDHUkUhijZG791zAP53LaPKWpYnmGhDtHbPEK4+Qt?=
 =?us-ascii?Q?sh6R/O4sAb1IP0b27UPV1D9ujoZ42nB2MevfD6ch4PPypS6T25NnpdTlxPnf?=
 =?us-ascii?Q?/Zw6PLJuFJtss53lGQni4qei/IZqMitx4uJlPJo1O6S4lrMBDy7e+NVdtxWd?=
 =?us-ascii?Q?NVfAtV7Yi9o73FBrj4b063WhH62cKnLh+R4lb/6X1M7r8f2tGbsLwyrfn+9S?=
 =?us-ascii?Q?5//XOz0AhqUhlrdKthlcfCcUvQgEIlTgGXtFfXNQORGBQYlZwwFl94etEH6O?=
 =?us-ascii?Q?978soaVbYMhiZp5pDOyPFvyIZzz6Px2KSSeWaLoeelIUDdXeiIqsl2UTnGio?=
 =?us-ascii?Q?/sza7X5Z+FxwBVpWZHRRj4y5dnbqS1fvwnLa7ZiMDN91PE+8CpT3ThR2UOC+?=
 =?us-ascii?Q?ByQ6tGernrWRdsQzTWG6KWGG1ZpmFntnGvYJLNkv2cOwzoWCN9mpBmuo0jOl?=
 =?us-ascii?Q?ahvkPQ9xooFTznbLr/dF2nrrJMJ6NUiz+/VKRXibtR+6++ptV5nJxLD4hGXh?=
 =?us-ascii?Q?l/UkZmV7KEIq44yIKgyy87GDu34uEfzhyT+KDY2P2vjpx2Cvgs+fC4tr7Kd1?=
 =?us-ascii?Q?oscQ5ngLlOAdZ/V6L1E3GDJHz/n/djNyP25RDro8u30JTq8BoMjNffBYuLUL?=
 =?us-ascii?Q?KXXAqb7I3rRdLBfobZxXPWwhydj/0UL3opR+pH01RFMSENL7A2uDNOpk3MJv?=
 =?us-ascii?Q?fiffuQJD3vI2p23pH7uAlZFDrTtGIVWbSV0FUDiNhvKBs3zJ4WPnZeSVjTBn?=
 =?us-ascii?Q?M8axTsHD5p0zMYx4ArMdApz15Psj?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39345651-ba2b-40b2-854f-08d981b1410f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2021 12:20:55.2825 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ul8ACsjmDCk49ktQ7Hl6PGtdQB2D0mmJBNzYOWn2DsR/jppM/pMUyhwtazg/GprcUE/tgSzpEKfCaGN1QJRL+8v+pXlUSvv49Y1ja2K7WsY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR13MB4777
X-Mailman-Approved-At: Mon, 27 Sep 2021 13:46:54 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 13/21] nfp: Move
 delink_register to be last command
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Michael Guralnik <michaelgur@mellanox.com>, oss-drivers@corigine.com,
 netdev@vger.kernel.org, Jerin Jacob <jerinj@marvell.com>,
 GR-everest-linux-l2@marvell.com, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, UNGLinuxDriver@microchip.com,
 Michael Chan <michael.chan@broadcom.com>, Linu Cherian <lcherian@marvell.com>,
 Intel Corporation <linuxwwan@intel.com>, Tariq Toukan <tariqt@nvidia.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Manish Chopra <manishc@marvell.com>,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadym Kochan <vkochan@marvell.com>, Jakub Kicinski <kuba@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Bin Luo <luobin9@huawei.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Loic Poulain <loic.poulain@linaro.org>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org,
 Felix Manlunas <fmanlunas@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 M Chetan Kumar <m.chetan.kumar@intel.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 27, 2021 at 02:53:24PM +0300, Leon Romanovsky wrote:
> On Mon, Sep 27, 2021 at 10:39:24AM +0200, Simon Horman wrote:
> > On Sat, Sep 25, 2021 at 02:22:53PM +0300, Leon Romanovsky wrote:
> > > From: Leon Romanovsky <leonro@nvidia.com>
> > > 
> > > Open user space access to the devlink after driver is probed.
> > 
> > Hi Leon,
> > 
> > I think a description of why is warranted here.
> 
> After devlink_register(), users can send GET and SET netlink commands to
> the uninitialized driver. In some cases, nothing will happen, but not in
> all and hard to prove that ALL drivers are safe with such early access.
> 
> It means that local users can (in theory for some and in practice for
> others) crash the system (or leverage permissions) with early devlink_register()
> by accessing internal to driver pointers that are not set yet.
> 
> Like I said in the commit message, I'm not fixing all drivers.
> https://lore.kernel.org/netdev/cover.1632565508.git.leonro@nvidia.com/T/#m063eb4e67389bafcc3b3ddc07197bf43181b7209
> 
> Because some of the driver authors made a wonderful job to obfuscate their
> driver and write completely unmanageable code.
> 
> I do move devlink_register() to be last devlink command for all drivers,
> to allow me to clean devlink core locking and API in next series.
> 
> This series should raise your eyebrow and trigger a question: "is my
> driver vulnerable too?". And the answer will depend on devlink_register()
> position in the .probe() call.
> 
> Thanks

Thanks for the explanation.
And thanks for taking time to update the NFP driver.

> > > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>

Acked-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
