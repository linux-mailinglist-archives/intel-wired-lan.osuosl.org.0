Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7586D721793
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Jun 2023 16:01:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E12160E59;
	Sun,  4 Jun 2023 14:01:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E12160E59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685887316;
	bh=5ykAGvsq0Ak0kvOssz7lI14x5uYxEMb5mctkEYh5LmM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HOHvGigcNJ5F6GoWsYTt8eFWVic1MIL/U9qom4q4J/Kg/w1We4bebv7yf022f07kq
	 VlUIZncT6V1Es/aRD/g5cXrrks0IzWDzsf5VKsHo2O4DPEaDK6Aqpdbkle3EbLWchU
	 TvCGBnEu4am/HLl1yB5KYvOu1kuHMxqVV4t6h5VF5FcJcRVT0MU+NsJ4Yj/eeTNFZq
	 b7Q+H0Hsn5oCT79sNCz+XLUqHGkwDDlIAz1bdBZNmnbhMm8f2aGxRr8EWp51oFKhqB
	 pdqsk+CdUArNqi64f3DwpQhNsnBZebPZUZ6aZSObBTOyHe17tqRw4QXFdEw9FFn5VQ
	 w6tqBQ3ltxIBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kIKb31g-lIjC; Sun,  4 Jun 2023 14:01:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2555960C14;
	Sun,  4 Jun 2023 14:01:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2555960C14
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6DFD31BF46D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 14:01:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4348C41BA5
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 14:01:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4348C41BA5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i5sAbErOwmPe for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Jun 2023 14:01:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8474041B9C
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam04on2129.outbound.protection.outlook.com [40.107.102.129])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8474041B9C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 14:01:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l20k1WiY+3dcBJPOW/a5oYjpz8VbxPrYWmuDa7Dv4cOGHlgXnw80RmL8VW7YWuKleotgFtItFm0IKHhFOE2OEmrZd1fDBHvoTQ3FtmJQCTomtYwIsmplby8iliV3Vfa1orIk6huFguxEclhJ6DWBw6hRWih77C/FYP/G1gg+fwKeZ88z8E814TNecXuRK5HgInrGANnDa++QcFmlSlkuhpJ+UQgeONusfaQ1UDES76VW9VK6HiQq63SS90ynhFlOEWuxGtjpQ2ILme1zjogOP+w/L36FoNetX6pMNTGNTt57mU9SD6HG2ENRCYTc/Eo484XSPNru+eApJyC2bbZoZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KzdqVrVb7S5qMXPo+vRppG95rSyKfGbAiEDBBmYtpSI=;
 b=ZhnJduCyfjOmA+4p8l2yqx32D8M7GGAYPIdo8xsh8HhwF1qWaYShZeK9nGP7kVaKvjcVobaXl28whkQpqFube0Q4sRfEHa/xAvJnfeHBY5/HNCkkkjs2oW15M7PyoOrVyKixaEAjIn2pkPJI1PA4b5qLRScILTY6twa1bmfoW8WFSqkX/s89UPUq97DIFKJwRhv6hh7EHhahhrCREYmcfnUMO+jzWPkLRwIEVGXne3aRrvzjHB43tqUKHMEOVpxmnIdbbUNU4UC+mqbNGjkj1bJXq2EadAK5u9L3nTebCQVK8lq2UewVhrzXmS66QKCKUUHEs40GjFnZnji6fU7TLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CO1PR13MB4887.namprd13.prod.outlook.com (2603:10b6:303:f6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Sun, 4 Jun
 2023 14:01:47 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6%3]) with mapi id 15.20.6455.030; Sun, 4 Jun 2023
 14:01:47 +0000
Date: Sun, 4 Jun 2023 16:01:41 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <ZHyZRQb7y6otLXcE@corigine.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-5-wojciech.drewek@intel.com>
Content-Disposition: inline
In-Reply-To: <20230524122121.15012-5-wojciech.drewek@intel.com>
X-ClientProxiedBy: AM0PR03CA0072.eurprd03.prod.outlook.com (2603:10a6:208::49)
 To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CO1PR13MB4887:EE_
X-MS-Office365-Filtering-Correlation-Id: 585bae32-fa82-4436-6529-08db65043cac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6ZMPL5P69c+l44nqcanoo1Pwu1xr7El+gm8NaiAeI65dmV2zZYd61X+dNdwDXXeNkFPBZCgU5TtKqpXC/nFHLXB5geCxEg9onfcVTn8zZO9T/mqVBsNFoXo5h7rN9kjI+yoyaWWHn81wj/T+4yHlrHeOhOaF8UCBHa4JKDY9uztmwLRoljbfK5Nb1CoPlGbQ2s3muXFpN5gKAtyLMRKLdvvNGxecwkjqczHKc4qLXAjkCWGZo4azog12scASFH3ZAbbvgu/rbs1P7yTEzlCbTIl9wkBqHAtoxURVi4qqMuPABmShMB4mpTL8dWP/6L6Q0YyCK92ZVVvy9NEYXYY2cMGm18vkF6uYFV9D5ygHYNRb4l21r2j0cvrRyvG/7mhCv2nXbBrlOrPkhysJxHKVZwqnWo8fK+sUoLe2GSbSXib6h6iSne/kgtsWUcLxLkaAKtu2KYv3kc9VNixbTLFJLAmx2Oaatq3IQzrcEArs97N3YL8Srjj21tIm/NxqJqDJTNNWEvhoCiulgVyy5Gr3riWQUYR1Bb6ZXl9/p+tYfB9EOzePhO6Ep2zGC6RpvoNURt/k4l8iTswFLLwhgFucFxs0FZwXWYhR0HnVE/tOleg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(396003)(39830400003)(376002)(346002)(136003)(451199021)(83380400001)(7416002)(44832011)(478600001)(8676002)(8936002)(41300700001)(316002)(66946007)(66476007)(66556008)(5660300002)(38100700002)(6916009)(4326008)(86362001)(6486002)(36756003)(6666004)(2906002)(4744005)(186003)(6506007)(6512007)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?X8cbUpVNUbm6bnOrBdGvJvRlkk91F60AJT497BmWwGqX2Xc+8tYWC7iYxgSr?=
 =?us-ascii?Q?gZVugAfe+hnFV13ZlepHsVi5xyCSofiTCpclWzCN412KOxWPib7T6Audv5C6?=
 =?us-ascii?Q?TwuNYOOOyYEii+zq32P0G2ibtaCxjJs8jStbmOOSf1VB3E/AJBgXU6TyBd53?=
 =?us-ascii?Q?Lgv3Ntfltu8nYSa6Zb7kd/f2ZAP8t7EeOf7h4ApufXIJe6rY95xFVAbjEgU/?=
 =?us-ascii?Q?+A2p/IEzZ2i1UJ3xZ1QCZxkyMuRvdh2jzv2Vcb0EIG2Cjestxt7DOs19svPy?=
 =?us-ascii?Q?cm+Ayc+n9mTYcJn3KHe1W/84a1UdgBbmfsmrsIr9lERbwgbBrZF3p56LHzCz?=
 =?us-ascii?Q?b4i6ibt/KZZAyJ3onZcD0ZR3hgfFzAV8hxrEYuKo/o7vualodouKVplDa3bw?=
 =?us-ascii?Q?nLh1fkCKYxQUWMc64AmTmMcMf20DwfaywDSY/2HaWCPRRI6rZGKtLDnwxWXX?=
 =?us-ascii?Q?pIeKtL+6p5wQFBVBznEiM7U6NSX6eG22cL40PWznqnsjkobquz/CI6PWI2MX?=
 =?us-ascii?Q?156LXNH8uInG7lI19Hh6HKyZnSpMoWrMePEbRu75/r1b0B8fYaXLkfSHH4lq?=
 =?us-ascii?Q?m8AmY5jPvQeIECRBDNppJ3IMwHKrU99ex2ra3g02IM6hq24/RYhEhHOeHtW2?=
 =?us-ascii?Q?QKSIoru96hOyrNx6OY9l2+Aef2LrtEGZrZtSvZvBoSg0ezec5i8pyZPrUE5+?=
 =?us-ascii?Q?IwcZWrdEX4g+vMuj0apjycxnl3zXsE2tv0hyCY+ViEhILZxjaRo5jTa1b2vL?=
 =?us-ascii?Q?FwCRsmVsn+CJ7T1Kco2Z2gk4kPoLTKfR7Dc6YNT76eCfXRPohQmDVlFW3RNj?=
 =?us-ascii?Q?vHHVLmkLuVBDBtNfVEm94Qn7fBAvwh3OvboY377IrEJA/EX9c9gBuHSDyF3H?=
 =?us-ascii?Q?RXo4ccAB8vO/e95CBntl0gdAZOMhmUs3GW/NJHWhuUHdZPUDur//9a9YEi7l?=
 =?us-ascii?Q?wlaiN7eIW+JmGXNyRkptAmjjj4yckWD59yasLBctGM5wjv+96rlfuWy+X0cf?=
 =?us-ascii?Q?Sl2hyZtQZzqmWjHS8AFmVwYSYnYYavNnu3pIb7qf3UuGQe+4QBOfsM0ku1ho?=
 =?us-ascii?Q?sfqlHIt/nzo5bjIpWqvxbuK73U2l2FaGwJpSTvnJEGFD6+l8mbKrB/wKbEO5?=
 =?us-ascii?Q?3bUWmoVm1NOmkUvAWQYvgZ8WO8EsHMwBHoEt8jEHuPQfLWO+PcNhFV+iZuDP?=
 =?us-ascii?Q?tGm4W46eTsF15ldrG+pqITLI3UJ+ulI8v9FbP4Mzj5rLG7IKGI0cqtPonQzv?=
 =?us-ascii?Q?b/mhQgeuaW0SWZ6Ciz6VS8l5Z9mQN7yHds88JMB8cZ7R59HiBmcVVDHVubfb?=
 =?us-ascii?Q?sJxZDKJdJxJS73feYRTSvelyVKMqVJ0fFMoSifYXDGUXUk1zhTSMkic98vTx?=
 =?us-ascii?Q?+xROtWE1Dp69V6DhqkMoLHUy2lIZH/8vq2wfGxUGQQhhJT0C8GaL8eiP2FZi?=
 =?us-ascii?Q?bwpPI05R99S33HyAID8a32wH0y4Tx7BBxDODY8L2P4hY48r8XlIy7UMjO59G?=
 =?us-ascii?Q?e5I/zbJuiGgYohLvOBJA7RQ4oM6KjS4r+za2Oxd0F37Z3+easQBn5zz7nt5+?=
 =?us-ascii?Q?xTs8LMsNaHfrz2+BP2iomkysLE5xSfwuUiuBxl3lX5sLGcm7tdpjW78ELD2n?=
 =?us-ascii?Q?aB6lEYDtM/FZGykHeSZiLl1GsJVk3Lq4qNlpuSCZ6hzLquh4o6GtS+UL4Eyw?=
 =?us-ascii?Q?Hb76SA=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 585bae32-fa82-4436-6529-08db65043cac
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2023 14:01:47.6617 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NSHHRve13XlbnCDlN0Jyfru6baVTB5pYbBzXsrpDL3mETvJXehZnBKlO7WozEEFIX2tG2kiuhyagfKqpIoQC6bhLbuhQLwifNIb8SMHl+no=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR13MB4887
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KzdqVrVb7S5qMXPo+vRppG95rSyKfGbAiEDBBmYtpSI=;
 b=KCgJDd27FFOjTa89KK/OqkwQS5bWbkC0q9RD4UYemrGIkHdfA61eyrJdoey6xN1yhtlWTWnR7/wJoifWKJSWeGtjO6GNq5yIqL3E1jPnX+2nD+lz6mc5gFa1jgoi88snBD9/tr3RPHitW7iLlqWAgpQk+fU4b5JArj7nEyPM9jU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=KCgJDd27
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 04/13] ice: Disable vlan
 pruning for uplink VSI
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 24, 2023 at 02:21:12PM +0200, Wojciech Drewek wrote:
> In switchdev mode, uplink VSI is configured to be default
> VSI which means it will receive all unmatched packets.
> In order to receive vlan packets we need to disable vlan pruning
> as well. This is done by dis_rx_filtering vlan op.
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
