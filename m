Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4A274F577
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 18:33:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E4CA612A8;
	Tue, 11 Jul 2023 16:33:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E4CA612A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689093212;
	bh=Hy7Fvfg9LW+DxEn1LjTWxsvnlhXi4eAEgUvq7rFmGtY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=siOE1lvkQ+8bN+pNDhNtLfL0Qk11FwfD3SxG8szON/86O73YSCZN1Lmm9sgFcnLF9
	 eyOebQEpV/Bbb4DzwKEMV4W4qeShySwGTvAGIyBcjW65Q2LVT+p9ncFsUrT9JcvE/d
	 QDbyr87yaAgOxVUqACiI/XJ6sJWyWlt0l5SaKMVxmRrUMry0OyBbboTiisKsaFkW5o
	 gkcVE9TdgCljHrikRv+aZbPCVsh3VHcH/4fgTPn3gO8bujo1YM0OHh67Zo0YKoG7tO
	 n8xEYc+oiF1kCNL9Egx0SJfjZOfEq9gCNS6x4nCqlqoRNicA4p4Rp2IUipNgCspwLE
	 9mz4pJY5mfSjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QtR71jZT54f7; Tue, 11 Jul 2023 16:33:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44213610E3;
	Tue, 11 Jul 2023 16:33:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44213610E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E6EF1BF426
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 16:33:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2744541481
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 16:33:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2744541481
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zXqH1kfR9uY9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 16:33:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1245741495
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2100.outbound.protection.outlook.com [40.107.236.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1245741495
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 16:33:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AB/3H9Y8DNw4CC/Uc3OUtrLVzkaX72MBD6okrjFOllMp2Z/JKtze3L7L2mNL2+jwe4SGIliBcqVLY7JQkbPsta5yDxoYjfMRLPXEUtws1muQMOl5PhuMNu8lkkQZSJ84M23QdASCz1m+peroCmQdP8EHyV3W9STx2P29vwLVX62rTUsbbmZ6Ne9BzlWHsHfW9Etl+DqN4PFM9ZxfAZ2RMH04LLQhw9w82FwURtsQdsLreI9Uq/v6wxVKgZWraR/3HDvu4AGaFb7SMa2YKRQJa920zdKetf0cbTh7ysOAfG8ladcZraIgPEeG5Y1r91xewnd9sP9ahaK6BIhnNjtunQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cfIegLM/b9d0c4gCjsheGSBunvBdy7M9ygjGPKRwyEw=;
 b=Bip8kUQMojiKh+GrNErpC4h0oXzto6aw6imy99QPFhMW9yESDzub1IHBu6QzT+Uo9FprrjpC1VGm7vYTzUtA3hDaEXdiBRayyKj/Q2XHo4jTov1K7wa+f+dEPE1d4uu9JzvsgnLYy674JkFKQLA0Q5mMl3VpAcyFmUyeik/cYZQ4yoLVFHf5ymWrhLsKso6Z0Tw33SXxUB6uODQayCIFOaXYRFQ8FV6O3HzAGZZVXBWbULcQakvLEdTsxY7AFOnjRYm3jZE4R0nOqfKi+r4A3gslvRuOMMs/iBeFN4KVFmqKPQFxxdPUHfWbWC2PY9gN7QId7yJ3eyYN0/EE0kIUPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by SJ0PR13MB5546.namprd13.prod.outlook.com (2603:10b6:a03:420::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.25; Tue, 11 Jul
 2023 16:33:20 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::d23a:8c12:d561:470]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::d23a:8c12:d561:470%6]) with mapi id 15.20.6588.017; Tue, 11 Jul 2023
 16:33:20 +0000
Date: Tue, 11 Jul 2023 17:33:13 +0100
From: Simon Horman <simon.horman@corigine.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZK2ESQIcppzGDa80@corigine.com>
References: <20230706062551.2261312-1-michal.swiatkowski@linux.intel.com>
Content-Disposition: inline
In-Reply-To: <20230706062551.2261312-1-michal.swiatkowski@linux.intel.com>
X-ClientProxiedBy: LO2P265CA0306.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a5::30) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|SJ0PR13MB5546:EE_
X-MS-Office365-Filtering-Correlation-Id: d8b3edad-a810-46a6-221b-08db822c8955
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VdqvJlf9pcOqCg9fytlyZyTNvRLOtwjX2izgABQviSq1W7W1aPuYiVmKxJ1kvgI7pIxhS0LKYeS9W+S+z9YVYoa2AhfJLr/aiJ/nb6/8eBpRtLzIdgKm3tJoR/Dpw19JlOmjyDN2eZR8cjz7HVnGWT8rav7X6/1sKmTZMI3sRfKwRI7pqnnR6ixioHhWJs9tZ4EbmZH6J4tZK7lxv82HHgO8G28OHGg51Mkw/+klmIswbglzWEendElUtPwlUW2NsrA/wb6GguyWRrckJMkskgNsyXcRyk6flSj6bhPzMdNOgtxKbsomC2ohNE20Eze+AUHBSdq1l7Po6e4smyx8Bafi7TuJDA+HrFqhfGPl6g+KuidFGKJZ6Ihmf3yq01qNf4pgM/sFd+fhN6Tzzjk/Qd5lAIKfF3NmAwCamuXYI4GLJ8m1IanXAg+NJVxAEax2YU8k7z2xbcHA9Dms9/GaEnSXTzx+uY0QHBUOg3k4myTrCjPy20K0fpp3MjdO7DBIO/8SsAuFP1qq1x1GUxbCKA4+PSTQ1Tpbzy4KEEhvt1VAqGijmTpQSN2E1lom46wkjfpE1Kkf7WSNQhbe6yDF80kItlngmv26UxAVmFZgyyo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(346002)(376002)(366004)(396003)(39840400004)(451199021)(316002)(8676002)(83380400001)(2616005)(2906002)(66476007)(66556008)(26005)(66946007)(6916009)(4326008)(6486002)(478600001)(5660300002)(186003)(44832011)(41300700001)(6512007)(8936002)(6506007)(6666004)(86362001)(36756003)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+QaxUOVYAWaT2ZR8Nm3odJuEA4hdrCsYz3PM3hyS4p96s+1XdryQm5yraeBh?=
 =?us-ascii?Q?AKbfhlsQWK9wr9f64+N7AjrRieGyDS/DZ9xB146l/h9Bhr0xoWpvcLGPIri5?=
 =?us-ascii?Q?1UbnV6mxmkogD8hF+iM7l2MVl3F9ZSwEvUCv/yDl8T7fkgqpHd9gcI7ghJXb?=
 =?us-ascii?Q?hsk7JoIPV9cA9yf8iTjD1RuuZRntjh2a/1ovc+vIOaHO5as5XXdqp1TjBeDN?=
 =?us-ascii?Q?mXstZz9JnQpYcwv8xzhHXnCZT1OjoeSe3d0jGIZLePHsoOx1F7YiTPra9E3n?=
 =?us-ascii?Q?WgstMw6RVRl2Mde5EWy4IzEHxeIzls+xU3Sx6SRPRh+XmMVIHO5m6OsQNOeU?=
 =?us-ascii?Q?zIrjTajehTplXoGXg6ltej4RQC8nenKXt6kvQvoPFjIEabTSGNcBppQWafDl?=
 =?us-ascii?Q?eN8FetWFrtW6bLgn8wg1iv9+JD8pfyHeM8O0wFtigugTpLt1eg2USmZm8Zxi?=
 =?us-ascii?Q?vNbnGijKpkzr5FRtjV+Fkh/KbwrdeDHvaEwGGrnYm9ltsO3r27911wbHYhzz?=
 =?us-ascii?Q?bhtKEMj6dUTjjs6qiVpcircT0HQYUqhsveHr3nKv5AeD1xcGOY3b2313OXik?=
 =?us-ascii?Q?f8KoggWRdFi7yKIxN2XPKRP7VSAIhRvQdLOW/XB+J/t2gTrIIvs/dG6NgA/a?=
 =?us-ascii?Q?utkFKkhPJp7yE+DZ+lCTzxVzZCJRUheQo3TfmUojQDO2OcTLwBd/05Sqc+kK?=
 =?us-ascii?Q?tMAI0RQUGOMYbiUfi227/MKeztxFqb9YdvLz80oZhYIYJ+0HfYn6qkP8oUcT?=
 =?us-ascii?Q?g+BC5at9sDZFRyBVOvYV1oqwfyvM3zmWPXf6U9GZa+wwem9C+KvTIpDvTpaP?=
 =?us-ascii?Q?fg5SDuOLf0nOhxaFPYxJhQnwRwT4fYpe9SwukttgH3fTEyFsFneGb4uVLLOy?=
 =?us-ascii?Q?hmkKOU+pDhooO/gVhF4UALj1XVzKlYj4/jHcsO0dajiL0ttJZvWbW4ukrMXA?=
 =?us-ascii?Q?uJCLRE9IKS0zetz72TaJUpjMjwV1VgzwqQ7MP7K7NiEsuH1A6WprI5Pc0DUA?=
 =?us-ascii?Q?7q+IZ4j7QSE2+4kSA2RHRxxrUpN4ONt5relxtJvvhqCLU9nvrLWwp3iN3LWV?=
 =?us-ascii?Q?EhGUmD8erhU3FIyLnrOUdSn02JR11AtZidIs4+9+tuZVyWs3M38H5DU2OUi9?=
 =?us-ascii?Q?mVsKFr+Jq+sfCdEITUWonJLmfUt2sKoRHoNO4AwCnPIUmqeATIclmaXn6wTj?=
 =?us-ascii?Q?de2lIAb78EmPiTKo/mKCQ2wai5945fszZlcU6C0r894v+aUNoOnOfB8yOus/?=
 =?us-ascii?Q?dfGsBOck+g02+bw8JoCPfauhUh6WBDZ1zpoBsch96KgITZPWgO4SgQmXblN0?=
 =?us-ascii?Q?8EDMBsgyL3oVgkbyQnXsYWO1NIbkZQocEEQlM5qtuyIm233dpRbWEZZWP0GB?=
 =?us-ascii?Q?9WmTgO8Q0zR9tHSa6GPl5ZVDty3raLbg5SuEMCEU5PmzXOBnI7ZZO8jEqTX3?=
 =?us-ascii?Q?DEbzbq1e4hT0DaLFnrjiUmOx0gzmZvPIGlYxz7h1CCR/x1erUpQX4lQw5g13?=
 =?us-ascii?Q?oCMZKxYSY5xI2Og/xunMrnLqhvLvFwARvZ6E+wc5+cxSZHCHJHgTO0EWkBwH?=
 =?us-ascii?Q?s8e6haCKJIpLeiUK7OpaZzN745V55gonxS6wEkiQrxD0hE77+g02WYTHxfL9?=
 =?us-ascii?Q?Vg=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8b3edad-a810-46a6-221b-08db822c8955
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2023 16:33:20.4389 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9icQ1D2lvhwQ78kASmV8IQPIZ224rfwNnvuu6BndoNX8BpMe/XqPh72t/GTudef0dQYCR6FyHrs1f0KCS1Ah5wAEJvT6nBXjTe01CoacK5c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR13MB5546
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cfIegLM/b9d0c4gCjsheGSBunvBdy7M9ygjGPKRwyEw=;
 b=Ew0E+yziSdSLxgoQ55VUZI6w9GubsVFsSgbImCzWVPKLt6Z7KEomh0RvlnLS8m2AYRBPCIj5Q8yk6kvLEXx26Mw+lzSqTH4zI+zFZADScc+uI7zzRjZ4qYUYNzESjRH+cGb9h2jUj81ys+TnHreiPihbSffyhykknREKxe5iuUI=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=Ew0E+yzi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: prevent NULL pointer
 deref during reload
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
 intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 06, 2023 at 08:25:51AM +0200, Michal Swiatkowski wrote:
> Calling ethtool during reload can lead to call trace, because VSI isn't
> configured for some time, but netdev is alive.
> 
> To fix it add rtnl lock for VSI deconfig and config. Set ::num_q_vectors
> to 0 after freeing and add a check for ::tx/rx_rings in ring related
> ethtool ops.
> 
> Add proper unroll of filters in ice_start_eth().
> 
> Reproduction:
> $watch -n 0.1 -d 'ethtool -g enp24s0f0np0'
> $devlink dev reload pci/0000:18:00.0 action driver_reinit
> 
> Call trace before fix:
> [66303.926205] BUG: kernel NULL pointer dereference, address: 0000000000000000
> [66303.926259] #PF: supervisor read access in kernel mode
> [66303.926286] #PF: error_code(0x0000) - not-present page
> [66303.926311] PGD 0 P4D 0
> [66303.926332] Oops: 0000 [#1] PREEMPT SMP PTI
> [66303.926358] CPU: 4 PID: 933821 Comm: ethtool Kdump: loaded Tainted: G           OE      6.4.0-rc5+ #1
> [66303.926400] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.00.01.0014.070920180847 07/09/2018
> [66303.926446] RIP: 0010:ice_get_ringparam+0x22/0x50 [ice]
> [66303.926649] Code: 90 90 90 90 90 90 90 90 f3 0f 1e fa 0f 1f 44 00 00 48 8b 87 c0 09 00 00 c7 46 04 e0 1f 00 00 c7 46 10 e0 1f 00 00 48 8b 50 20 <48> 8b 12 0f b7 52 3a 89 56 14 48 8b 40 28 48 8b 00 0f b7 40 58 48
> [66303.926722] RSP: 0018:ffffad40472f39c8 EFLAGS: 00010246
> [66303.926749] RAX: ffff98a8ada05828 RBX: ffff98a8c46dd060 RCX: ffffad40472f3b48
> [66303.926781] RDX: 0000000000000000 RSI: ffff98a8c46dd068 RDI: ffff98a8b23c4000
> [66303.926811] RBP: ffffad40472f3b48 R08: 00000000000337b0 R09: 0000000000000000
> [66303.926843] R10: 0000000000000001 R11: 0000000000000100 R12: ffff98a8b23c4000
> [66303.926874] R13: ffff98a8c46dd060 R14: 000000000000000f R15: ffffad40472f3a50
> [66303.926906] FS:  00007f6397966740(0000) GS:ffff98b390900000(0000) knlGS:0000000000000000
> [66303.926941] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [66303.926967] CR2: 0000000000000000 CR3: 000000011ac20002 CR4: 00000000007706e0
> [66303.926999] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [66303.927029] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [66303.927060] PKRU: 55555554
> [66303.927075] Call Trace:
> [66303.927094]  <TASK>
> [66303.927111]  ? __die+0x23/0x70
> [66303.927140]  ? page_fault_oops+0x171/0x4e0
> [66303.927176]  ? exc_page_fault+0x7f/0x180
> [66303.927209]  ? asm_exc_page_fault+0x26/0x30
> [66303.927244]  ? ice_get_ringparam+0x22/0x50 [ice]
> [66303.927433]  rings_prepare_data+0x62/0x80
> [66303.927469]  ethnl_default_doit+0xe2/0x350
> [66303.927501]  genl_family_rcv_msg_doit.isra.0+0xe3/0x140
> [66303.927538]  genl_rcv_msg+0x1b1/0x2c0
> [66303.927561]  ? __pfx_ethnl_default_doit+0x10/0x10
> [66303.927590]  ? __pfx_genl_rcv_msg+0x10/0x10
> [66303.927615]  netlink_rcv_skb+0x58/0x110
> [66303.927644]  genl_rcv+0x28/0x40
> [66303.927665]  netlink_unicast+0x19e/0x290
> [66303.927691]  netlink_sendmsg+0x254/0x4d0
> [66303.927717]  sock_sendmsg+0x93/0xa0
> [66303.927743]  __sys_sendto+0x126/0x170
> [66303.927780]  __x64_sys_sendto+0x24/0x30
> [66303.928593]  do_syscall_64+0x5d/0x90
> [66303.929370]  ? __count_memcg_events+0x60/0xa0
> [66303.930146]  ? count_memcg_events.constprop.0+0x1a/0x30
> [66303.930920]  ? handle_mm_fault+0x9e/0x350
> [66303.931688]  ? do_user_addr_fault+0x258/0x740
> [66303.932452]  ? exc_page_fault+0x7f/0x180
> [66303.933193]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
> 
> Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
