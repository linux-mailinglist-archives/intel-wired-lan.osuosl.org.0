Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B288703026
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 16:39:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F10F08219A;
	Mon, 15 May 2023 14:39:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F10F08219A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684161579;
	bh=gDxYkVogcA05Kj8Xo4qZmNspFNgfwNJ7qelhXjWPmys=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DfgFDrmwA+9LoU6KT0fSzky/HffkwBrP5TeXFwbXrkUDUa5no1B6I4EZzrJZi1897
	 +2u64QHekt0H3sGyFOUurqy2qpB/s6JYfW3vZMmJQfbwoMDpPPQbASMpbPhahGADxS
	 vD6Ga+q5sIa6f80CBPzuEufmaN8xakCX6CUuLmJLbThAq5X5rci7HjBnkRMZoV0+9x
	 Y/h8K5LoljsOL67izjKX0guFWLNeawpu5aijycKjOBpWGK7HEg8p5S5oMcHk5/fz10
	 eJNKZa0PFVtia90rz0PhoLTqfXSdF7dhHBsQZ0RDUzHYU6JpQ6tRFn3qv+AJCsj8bq
	 htPhjTeTFvVRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kCyxilGC2czf; Mon, 15 May 2023 14:39:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C86681E63;
	Mon, 15 May 2023 14:39:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C86681E63
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 671AA1BF575
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 14:39:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B26681E40
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 14:39:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B26681E40
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M2Umwu2PQFyy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 May 2023 14:39:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3769F80C19
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2103.outbound.protection.outlook.com [40.107.237.103])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3769F80C19
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 14:39:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l5BF4YXNxR/x9ujU5ri1TZogXLJFZhOHD1KILHUhdSky9AEI3TPFxAzU/2XDl3m/F28IKkpjN/2Nz/FdEwr/gHcOKlawD3GjBhMqCuE20EZdzNAOp434ZLc1CjUq4MHR/fz07hRe5PFh7HcMyJfohVlOmUozOv55shHYFc/GqON11KeLWWPNIYVc8GaG4bkoF9nm5asp7zgtKso9/23FO0U9Fg31awMMxktrpIBuc44758XbBbrKp79VsNi7ClEJWCXsR1j0gmHroSUShD6hFWsUCZJAKrOnaH4OyqFFitG5baZV7c664YPlf4ATY0m8tIOQjywSavktAqL1nI9Qjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T7jIWEruEvWt+NEyGPOv0syxPcHB7oPoMNJABmkTjK0=;
 b=R7ByT6bObMMiY9sznpjxlo0iLizKZ47UEkmOu91FpqbCRQLC2xDux27ubV+CMt2dcllB9khTjr+kLeUnP1JzMNM9Bgzy+Hm0lDoiEO7hUbraHpguOEmW0no9Ox6GI52/2wi2Ik0968lVtfUJHGMjOrTrqQKiS3BV7vPyVBP5NIBH1Wh6FiSsmzVahgo2NDcfGom/RkPwfBY+G2Ci9Kg8/G2Dr11PF3jPLtxnaEdMbkO0/Wk3qMwTllzutVkzWApGeSj5oGGpkCvvA4i4PBgkwwis1FEIoHABDPwvOy2q/fcZ78/MBU6+I991Y4CJstpBZ/zJBbPjY0NdwE3bVG3okQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by LV8PR13MB6376.namprd13.prod.outlook.com (2603:10b6:408:18b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.15; Mon, 15 May
 2023 14:39:28 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::f416:544d:18b7:bb34]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::f416:544d:18b7:bb34%5]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 14:39:28 +0000
Date: Mon, 15 May 2023 16:39:22 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <ZGJEGr+ZgBqOhjDf@corigine.com>
References: <20230512132331.125047-1-maciej.fijalkowski@intel.com>
 <ZF5dQ/RHROwLxJQC@corigine.com> <ZGIw7fN3Xz4rmzkA@boxer>
Content-Disposition: inline
In-Reply-To: <ZGIw7fN3Xz4rmzkA@boxer>
X-ClientProxiedBy: AS4P195CA0016.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d6::18) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|LV8PR13MB6376:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bf161f0-eefc-496b-6918-08db55522fa3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Nbrca/cbi+0/CBC4Wzq7LKHzLzsKRv+UsABjx06hwckDk2f0XT0NWXxfqCdciC1JeUYfdGoVspdglUyo0i2CaA/ypOu1nHCEO1Zwzcaxolu+4cb/EI6jUiSeyUWWUknZ6+KNgLzNSODoisFyGDeb9JEXWWVmTi8u2AXUWECRDEBNhcW6X14URbCIReOdSnGiP+2OdUa5TsYXT4V9DmSy00D44xJxTyIu8uh0tQw4WedbVnrRC8f3FAVEP2+MyN6EVCRxlZ3ssSi84gRbQDptdAqMIRPLxV1vylQ6pfm/8Q3hZvimBAu587CXZgTUOI6qxMZWM2udxSPDwGzQUofa4uypn0tZDjt4L8nbjoNvlg3w1OWoH+4dDOAWgMRVeXPJOflPDjQFvpYWl32GsBmAF27pniN0Q4abTg/rhc8nqDeY2+8J48Hw8PIE/LIeNgeHonybAq9nOkIcK/0l4AfkD87AHM7wvpackrveqLq3V9HSBKeqaV5SJX7CGkEnliacOrgN0LO4WuKl8ZvcKHrCUevFUTFzuDgGObPf9hNZH5vIzoFGXajfdgca6bsJYaN5XQbN2SRlf3eVmev/BsY36ocmau+1Aw724B7006PUtg8MPX87dUFNuUrsHvkiPV3FFoO73dPrhG9rFnuyD7VrfKY2rDgcnpQeRPSA+FVgDd8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(346002)(376002)(136003)(366004)(39840400004)(451199021)(36756003)(478600001)(66946007)(66476007)(66556008)(6512007)(6506007)(6486002)(6666004)(6916009)(41300700001)(4326008)(316002)(8936002)(8676002)(44832011)(5660300002)(2906002)(38100700002)(86362001)(83380400001)(186003)(2616005)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9lw/LeR2vZ+HFkvTrYM44l0KT6P+N2gmgVI4g3b3elvsWKZE3Bz6r0clILeh?=
 =?us-ascii?Q?tgUooa7fcUej0673JN+vGEw+FCBVpmaFdN5ugbotsw+QAj5sg1onhTebhQ/i?=
 =?us-ascii?Q?FAEYsvCukXOv+Yo7d+VwwS+Fz+ApNage4cGrpZO8xLoF86/zxG0IX51o389U?=
 =?us-ascii?Q?n8o40UfIICScrcPjRxWrpVlAVjbm1x+BD1BLfX5twvLR93FrNtLJtk4Lqpyz?=
 =?us-ascii?Q?mVlYhQSEzC1SEikuEFXlKjahcP4+wujX65kIYHd2NOmlFIM62tyAAHOlSOUw?=
 =?us-ascii?Q?ciyYHm2DJ0AHUxMzjBkEhB4zXwhOg0s9+1RnsION/33UelPfmwORoEfhejef?=
 =?us-ascii?Q?AukDcP17dicz61xMS0oCbzpKcjvSxk1nb1se0NPVOgtDO5f6ZM1l4cd0r8Xc?=
 =?us-ascii?Q?H7yJ3A5pBA3QDA9KMrzqKGL+WsTwGHzYdBsEBR0u0pjqWR6+JwcfP1+8lCbG?=
 =?us-ascii?Q?vBziuy+/fH8ZIkpNHXJ7hJGNx5i40JN0JzCKVMLNhTevxim4rvujlROupL5+?=
 =?us-ascii?Q?WOQDtaq296EmgLsL7RDhmrPqT7G93xZeliDYXhSM2ZbyoRWz5WW4F/WEZtig?=
 =?us-ascii?Q?DKm+a2gtZakf+H5pj3O8ISrQtXw7E79iNVAaBSDq7eT43eDARae/Z3mYtb8h?=
 =?us-ascii?Q?732bnje33B7xUF0OpOULBcoLU4qHr9DcdQC1kg6xuxSn3il+zXI/el7BVpcl?=
 =?us-ascii?Q?DW04+6C/EreeAOruXjRCZUpz4jTttzIfPsf3n/5xdOq+xYcOLhOArAm7lBRR?=
 =?us-ascii?Q?mL4OgGprm3a1wXiooXH4Uvb3/AD3TG++VolS1Wodq60AlLpWzUa4EfBySXG4?=
 =?us-ascii?Q?NsiIfwimwXg0Dzo/bDfqfHAuPZAHDN3MvnEMZfm6cF+FmdpqMxvTzRrCc5po?=
 =?us-ascii?Q?8btQoolQaO98sdg+cdKqJcHeGdPNcsHUcapt7BieiT4hHrWAyc/eU8wNkdJD?=
 =?us-ascii?Q?oLxdjAzN58sJr8MnciQlO0+aywRLONeRBzYF6S4itkHJnRpc4Q1008q3E0Ah?=
 =?us-ascii?Q?oA9fTmetKv/BV67n+pBXxXK7nAZClAGF0RME4vb6EPBjTxHKVQaVasIs5/m3?=
 =?us-ascii?Q?ve6x2MZJ0UNyC7nEhnxVxCKzkqXyIybsyaSECKKuwiHzYRq75bNNWtbbxon2?=
 =?us-ascii?Q?Qgi5KGo4il5HgiqUPj/Vp9Eyyrc/EjqZXnlgAkPo54uKvW313G2pZmKSqpF2?=
 =?us-ascii?Q?XoDH1v1RBHvsIQ5ZrpxvKoFObezoO8i8FugE94H8gOlLL/3J9zMgZgXC4ppQ?=
 =?us-ascii?Q?LreHXivgKUzPPsfj+NDOpCCuJX0Pq7LVsVWZdIjW71C/mhs6/onrWMhJ9Cs9?=
 =?us-ascii?Q?Ea/ac+LdVJGHog4YnQtv+XvdwifuJ6dDkeNdQqosHfJvWUpi6petx6U1NJjn?=
 =?us-ascii?Q?dWvaog8o4RLRs0HH2P2M8yNL0BoKBkrPMYGdFCAJPbxkd+pkqE4JLRKW1qrV?=
 =?us-ascii?Q?yVdEwcVUQ8+6Bn9VTHrGQBR7fy/3QXk1dhVMFhHaU6lGcxgEHK3BC+yxGMI0?=
 =?us-ascii?Q?lCCGImRv0fXBGPWAatvki4sR4TTPvrsKQBprIzRuopoA3e1a7eC6Zx71HkTx?=
 =?us-ascii?Q?KpeVBDuh/7/IW9Glc9nQV+gQ5TswiHLbzo46P9BZduYGCqTIThSlFeioLhqd?=
 =?us-ascii?Q?/FRqkD8NErUQZVdw9/r6nmWg3+Ge3fJkJMKSoYxTpGUoKLGsoOjfyfMFPOcA?=
 =?us-ascii?Q?kWSvbg=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bf161f0-eefc-496b-6918-08db55522fa3
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 14:39:27.9258 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4vU6c7OXd/haGB7ZLelMhdetPkdQBS0ABNSxmTCruvqd8GeondpEI1k9MFJm4YNutBva34KEVxk1CW3n3eSpZ0QL9E6LoHthVuUwVExlyyg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR13MB6376
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T7jIWEruEvWt+NEyGPOv0syxPcHB7oPoMNJABmkTjK0=;
 b=GFFVCaN62wla0uqB8f4CRNVYxRwo7JqaYuoNhu6Thidn8jywyEeT9K52elTzVURQ+pDZaGEvxUtdDVHxmtn8e0Ey7dx1bTHOftwl3+rwkWZ9Fs0RN+kHbJ2VresgsEbHb2FBRJDvt6q92E//XkzrJx1py+qaLnlB2/b+FYeIKdA=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=GFFVCaN6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: recycle/free all of the
 fragments from multi-buffer packet
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
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 15, 2023 at 03:17:33PM +0200, Maciej Fijalkowski wrote:
> On Fri, May 12, 2023 at 05:37:39PM +0200, Simon Horman wrote:
> > On Fri, May 12, 2023 at 03:23:30PM +0200, Maciej Fijalkowski wrote:
> > > The ice driver caches next_to_clean value at the beginning of
> > > ice_clean_rx_irq() in order to remember the first buffer that has to be
> > > freed/recycled after main Rx processing loop. The end is indicated by
> > > first descriptor of packet that the Rx processing loop has ended. Note
> > > that if mentioned loop ended in the middle of gathering a multi-buffer
> > > packet, next_to_clean would be pointing to the descriptor in the middle
> > > of the packet BUT freeing/recycling stage will stop at the first
> > > descriptor. This means that next iteration of ice_clean_rx_irq() will
> > > miss the (first_desc, next_to_clean - 1) entries.
> > > 
> > >  When running various 9K MTU workloads, such splats were observed,
> > > mostly related to rx_buf->page being NULL as behavior described in the
> > > paragraph above breaks ICE_RX_DESC_UNUSED() macro which is used when
> > > refilling Rx buffers:
> > > 
> > > [  540.780716] BUG: kernel NULL pointer dereference, address: 0000000000000000
> > > [  540.787787] #PF: supervisor read access in kernel mode
> > > [  540.793002] #PF: error_code(0x0000) - not-present page
> > > [  540.798218] PGD 0 P4D 0
> > > [  540.800801] Oops: 0000 [#1] PREEMPT SMP NOPTI
> > > [  540.805231] CPU: 18 PID: 3984 Comm: xskxceiver Tainted: G        W          6.3.0-rc7+ #96
> > > [  540.813619] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0008.031920191559 03/19/2019
> > > [  540.824209] RIP: 0010:ice_clean_rx_irq+0x2b6/0xf00 [ice]
> > > [  540.829678] Code: 74 24 10 e9 aa 00 00 00 8b 55 78 41 31 57 10 41 09 c4 4d 85 ff 0f 84 83 00 00 00 49 8b 57 08 41 8b 4f 1c 65 8b 35 1a fa 4b 3f <48> 8b 02 48 c1 e8 3a 39 c6 0f 85 a2 00 00 00 f6 42 08 02 0f 85 98
> > > [  540.848717] RSP: 0018:ffffc9000f42fc50 EFLAGS: 00010282
> > > [  540.854029] RAX: 0000000000000004 RBX: 0000000000000002 RCX: 000000000000fffe
> > > [  540.861272] RDX: 0000000000000000 RSI: 0000000000000001 RDI: 00000000ffffffff
> > > [  540.868519] RBP: ffff88984a05ac00 R08: 0000000000000000 R09: dead000000000100
> > > [  540.875760] R10: ffff88983fffcd00 R11: 000000000010f2b8 R12: 0000000000000004
> > > [  540.883008] R13: 0000000000000003 R14: 0000000000000800 R15: ffff889847a10040
> > > [  540.890253] FS:  00007f6ddf7fe640(0000) GS:ffff88afdf800000(0000) knlGS:0000000000000000
> > > [  540.898465] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > [  540.904299] CR2: 0000000000000000 CR3: 000000010d3da001 CR4: 00000000007706e0
> > > [  540.911542] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > > [  540.918789] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> > > [  540.926032] PKRU: 55555554
> > > [  540.928790] Call Trace:
> > > [  540.931276]  <TASK>
> > > [  540.933418]  ice_napi_poll+0x4ca/0x6d0 [ice]
> > > [  540.937804]  ? __pfx_ice_napi_poll+0x10/0x10 [ice]
> > > [  540.942716]  napi_busy_loop+0xd7/0x320
> > > [  540.946537]  xsk_recvmsg+0x143/0x170
> > > [  540.950178]  sock_recvmsg+0x99/0xa0
> > > [  540.953729]  __sys_recvfrom+0xa8/0x120
> > > [  540.957543]  ? do_futex+0xbd/0x1d0
> > > [  540.961008]  ? __x64_sys_futex+0x73/0x1d0
> > > [  540.965083]  __x64_sys_recvfrom+0x20/0x30
> > > [  540.969155]  do_syscall_64+0x38/0x90
> > > [  540.972796]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
> > > [  540.977934] RIP: 0033:0x7f6de5f27934
> > > 
> > > To fix this, compare next_to_clean with first_desc at the beginning of
> > > ice_clean_rx_irq(). In the case they are not the same, set cached_ntc to
> > > first_desc so that at the end, when freeing/recycling buffers,
> > > descriptors from first to ntc are not missed.
> > > 
> > > Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
> > > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/ice/ice_txrx.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > > index 4fcf2d07eb85..4d1fc047767f 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > > @@ -1162,6 +1162,9 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
> > >  	bool failure;
> > >  	u32 first;
> > >  
> > > +	if (ntc != rx_ring->first_desc)
> > > +		cached_ntc = rx_ring->first_desc;
> > > +
> > 
> > Above ntc is initialised as rx_ring->next_to_clean.
> > And cached_ntc is initialised as ntc, i.e. rx_ring->next_to_clean.
> > 
> > 	u32 ntc = rx_ring->next_to_clean;
> >         ...
> >         u32 cached_ntc = ntc;
> > 
> > So in effect we have:
> > 
> > 	if (rx_ring->next_to_clean != rx_ring->first_desc)
> > 		cached_ntc = rx_ring->first_desc;
> > 	else
> > 		cached_ntc = rx_ring->next_to_clean;
> > 
> > I wonder if we can simplify this by simply initialising cached_ntc as:
> > 
> > 	cached_ntc = rx_ring->first_desc;
> 
> Thanks for taking a fresh look over this, indeed this can be simplified as
> you pointed out :) being stuck on some problem makes us sometimes unable
> to see such obvious things ;)

Indeed it can. Happy to help :)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
