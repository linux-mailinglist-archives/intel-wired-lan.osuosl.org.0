Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C236C948D
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Mar 2023 15:37:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E164A60ABA;
	Sun, 26 Mar 2023 13:37:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E164A60ABA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679837843;
	bh=cwYzfekOQXmVgZ/wLHuWghvu/ZV3yCJoA87dsx9hEJA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MQ1cHcWI+JJ2qrZQxMQz1XBgA3O9TAUaClLL23mHfoGLDcPv+id76laP86YwzF6vO
	 eY72NBoCRp11HVq9PbEAUGkilX+GAemrtXSWtMNeh4YZvmUIS1mIr3KBgwpwxO5Uhm
	 vGeNKuj17p41Y6kXxjrhT1EIrJXXoHiNu6BCNi06UJlr4UZjxYI8HUYFymEmkNLmLu
	 ouebzkznYEX6rEpHZjpHLM5G/3EyKqdcbJbDWJrustHkCCGU+6qaTcUeYHNHK2Sbne
	 zWb0SYPRBTTR1O2EXFS3GoZSHwWSrVJpxaU67lSuheTB5YwEWocvUOKCqJC26yRvdO
	 zHIJE6PBaO//g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uTGEhLtHjfyS; Sun, 26 Mar 2023 13:37:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D32F260A9D;
	Sun, 26 Mar 2023 13:37:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D32F260A9D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 05BEE1BF578
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 13:37:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CF81D410DB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 13:37:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF81D410DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3uO9-77X3q1g for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Mar 2023 13:37:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00965410D8
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2094.outbound.protection.outlook.com [40.107.92.94])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00965410D8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 13:37:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WOZJ2NSKtmaXtD9o4YOOcgOOWzHyq2k/YstTZFvjykz6ke3kWNDwOXIHveaU1JABn3YjFN8X0XjNy8UAq9z7IjB2Z6FbX0M8BmQ9Atu/n9rUOi1bLCffiptXOysMkMdqefbn6qNBjjBEvTzkAt/QKTh7mdXm8iF2NfXsdtEX62tdHO8ioOmAilu3WTVtPnNoNEvCbJqt7M09Dd0+juoTdCuYZ97fEBiO9ZfNmSIS2AAxMs1ntl4MEw6LRAmdwNbwPtqJSPmYWRV1Opq0FC5fGcu1KxL5hXFf3Sb1Sv1OU9NWcFP4HdBDwMEcI8BD33mokVLolEdFzyZd4rJrwASDtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v8odF34GT3qmmgTHeBpD3fawgj3f97POvprQV9Ljygo=;
 b=OJhRCcO3DtYmy14bjGIfzDBAb2ddycE+l+yu8rweQeA2xO2AoIMhHtgm/lTEo8+z0gJab4s9g/dbyb0ILSSYFqse48ZfbzN5BmfO0AMGqH0ieCp/V2sWfLV/fUOfdesaS1bEnHYyvhnmzwhcHqnruedWms5NEOaXlblU6Yt/uR+lZYgyxuD/FxILK+ART3MAWEAFADxapLYWeim5kUvlWITx3IHqoPKwiWdnBg8M1J98dHSuCfZu1oGFBHjUjCvAYYie9BbW58snNtR6SUuJnlFA9UC25d7tcSULDsiLAZT/gLSGE/xlegSitVvNUqX+yNWQJXEClQDeYFlrmHvqiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CH2PR13MB4428.namprd13.prod.outlook.com (2603:10b6:610:65::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Sun, 26 Mar
 2023 13:37:15 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb%4]) with mapi id 15.20.6222.028; Sun, 26 Mar 2023
 13:37:15 +0000
Date: Sun, 26 Mar 2023 15:37:08 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Piotr Raczynski <piotr.raczynski@intel.com>
Message-ID: <ZCBKhOs5Ios301mk@corigine.com>
References: <20230323122440.3419214-1-piotr.raczynski@intel.com>
 <20230323122440.3419214-9-piotr.raczynski@intel.com>
Content-Disposition: inline
In-Reply-To: <20230323122440.3419214-9-piotr.raczynski@intel.com>
X-ClientProxiedBy: AM0PR07CA0007.eurprd07.prod.outlook.com
 (2603:10a6:208:ac::20) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CH2PR13MB4428:EE_
X-MS-Office365-Filtering-Correlation-Id: c121432c-73bc-4b7d-f1b1-08db2dff3613
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mCz7w9f5Ir6QE/IDEFSiAabH1sJWI4cT2aGryxBdFlkg+Nl9nHh/ZPb6kiRQEM5qwLlWN27fAWPSaIw8tiA0aN5ZKuLK2n3N2YdZBvLF7b615sx3IkOMLcE3ESBNn9lQEoXJRMM0VsajNK+7OHDioSzYA8z2DKwB7ZiIrtuFhz9CPSxFm2ONxkZd4UhOf+Xa+OMhaEdcDjHkQLArr9J6xpl7WVpea2mLtpUcKUD34UExeIRb+CCBbw1ckVXp6DK92hEboPQa5+moNjkzEqdskYPOfpk2FXbW4LDepLv6cAg+T1vzwewEAyxHD+md3h09QAHrnWfH7GHnt34f7Zj2qsY/sEJs2KGlWjLJvwAS8fKdTnTwm7qFFTxwZuFcORBxdbicgAAu0RrlbBkLg7Gsm2dr3x0X3y7sZjedtNTK6gjN4m7CHOPByUkTgrCovfJfHk3rG/7Ao/SNh/dU9VA9Xf/6/cEgRjZXruDmKkTmFMX8NpKqB8c3Xm3AzCukrQifVKhWHPjYbD+eKVZA3UXGWqlFFszyZNgP61NNHQ0wwIIGiTfaMPf7DIkuEUt1AhK3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(376002)(366004)(39840400004)(346002)(451199021)(186003)(6486002)(316002)(6506007)(6512007)(6916009)(4326008)(66476007)(66946007)(8676002)(66556008)(41300700001)(478600001)(6666004)(2616005)(8936002)(5660300002)(7416002)(44832011)(2906002)(83380400001)(86362001)(38100700002)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?j5D56DgK0eQQ6YcSlK32/7/FdKA8z4oMEXirA4Irwhcedw54b8ROqmACHiZD?=
 =?us-ascii?Q?OuH1tfiOFIeFMQbqe/I5qLUxKoH5vxAlP59H3C1Y6y+gVR/Sxda8HYspYsn+?=
 =?us-ascii?Q?7UK7tgHhg6dfI47K9ddEiev6Cy0+JYJsJRT1bxh6Fzkl77n4I2A2kkCh2FUF?=
 =?us-ascii?Q?ojAh07yvJM0GF5oIFI9+XxJLAbPcT6hyFtnJyHTgbKcYIKotna9pVVuBGitG?=
 =?us-ascii?Q?oME+HZYGKkIRD6t/jqqypzseoCoeIMB5L1gnOyLRhdfglCbOQ3koFhmfXtPG?=
 =?us-ascii?Q?RpulwIJputW1FHJIOsycsBG9fg9y1LKFTarVFTWity6+vGvoQV4+cL5uTadM?=
 =?us-ascii?Q?mdLQM/4+j+th/b/jV9yDMbQuQ3pmxdCo0nY3BrS9m5dpjxDFzZ5Ev1cG6Bwh?=
 =?us-ascii?Q?B2S93WXDx6lxutV71L+CWJKos/JLUy50sOXM282fYX6TncFwPSaKEAnLYAwZ?=
 =?us-ascii?Q?CpqebmaLmQ9UWY18buarGK2BoxQdw10CbUWFOjuBM2Tn1kioBoKL91mlh4x/?=
 =?us-ascii?Q?f1ugpUsbE0x91IuW6dnLFUMiOJLefVfRRCAfuPYccLIew5LfW98nLURWPGf5?=
 =?us-ascii?Q?OJcFYVV3SCzmGVq3T15nxsjEF/9cBLlfLnNe9UGkh8YGmdvzu5crkR5Fx0aK?=
 =?us-ascii?Q?zhpEUQpdjk59Jk2mY9i0kI8QePIHd1bhXoO6ow2IXR+uv+4xhOPNSgoU7C82?=
 =?us-ascii?Q?wXH+9zkOXAcs8nLINtERWn8fBnAZfWtXsxd9Bscqe2o8PK5PPGK7SwqlFsDy?=
 =?us-ascii?Q?yBp1bm70yaTa7bTN5Ml4FIOGVqT+oFAs+c8FjkN+Pg+dcJ8FkrlfRsTzQLP5?=
 =?us-ascii?Q?vKmd+UDL9yhlOTd8jooNn+SAOqN0ONarZO/T8KSwyRga3nWgoiZ3MFFtJZVr?=
 =?us-ascii?Q?cZwsnsURdCybni77FzBFRV4b3Gpy5iUB+0OBOBay7OHuIk9ziWFE6rF0sHi/?=
 =?us-ascii?Q?O0aL4WaNBG6T0yMRTlUaxxLL+zZuP42II1p97k3L290QKTWU+gPzxQ2aJcFl?=
 =?us-ascii?Q?o4Nb7AGx3mDnOh6KgAIYjS2UwG/uSEWQzSOIj5PIb+Vo3HajeZZmuESv4BGf?=
 =?us-ascii?Q?A5InDXsJof5otjA928e8NbayadNXdUwmTuLfH2QbSxICbm1gibxs4hwy3f3L?=
 =?us-ascii?Q?Y2HKNGlBVePcjuhhe7IzwWR6JNmReLIs2sVU7lODqDEKcRAXbbArKhWbMXZu?=
 =?us-ascii?Q?2gsiT/Re7vVZXyrryD8P4ziehOpVKYQ5fgPih0TScDsmRILpxDZATbZxfTTI?=
 =?us-ascii?Q?Unan71bMtqMVsx4Lz8vQDyaVcX4ZvgiBOEfkk0OQOKeYmQ652CRhnzA9h8YO?=
 =?us-ascii?Q?YMhfvUw6VcacD36HAuNbdV3OsDBeRnqYIg+d84vX1KGnJWxx8H45yhFcaAiQ?=
 =?us-ascii?Q?CwDdZVUUCe61IO9PiSO9epoxB3q/gCHr+MB69Eu2SsxT3VROKpQjxxqJ3u8Q?=
 =?us-ascii?Q?gs1139y0wf+gsBvmxogeLanZ+gX4593G1Gs8mwe+AHQb0d2A7ZwCBfB0Kuiy?=
 =?us-ascii?Q?S7tsbykYoneg4gmgnfnCCVFQijgfRADYJw5pmmPvCiu+sZ0Bm/ygf0YpDF+0?=
 =?us-ascii?Q?s++hYefkFB2ue9Jc6g/7l1XhMdMWJhnCUGLmc8d0g1SRrN6q1f8a8S/+XXGX?=
 =?us-ascii?Q?2cqoQ/2Qm/FZmtvNwggz17A27trLzgO1ivcQtJy6R7kkrjibTUaVy0hk4NDH?=
 =?us-ascii?Q?/XyP7w=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c121432c-73bc-4b7d-f1b1-08db2dff3613
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2023 13:37:15.2058 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0i21sH3gKOMGYFLJyc6/eXswWwsg2U8dpE3LOClaebg+tuGCdGLHm1g3CXqIw+CrKuj0ARrOsiH85rETbSnKAX4+yQppMc9Yj1vKmVx6i7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB4428
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v8odF34GT3qmmgTHeBpD3fawgj3f97POvprQV9Ljygo=;
 b=blYq98a4Enq7SA2jq/vXWj+cg2hw42FFsYPe24VZGxtRAxWpgujZ+h5PxBS5sDbmtObvuCcypdsIkcCup1qAhdDsF9Aq5waOVMcOJe9fWwry6TUr7ivUhokWzTMWTGJEdiw25e/BbmwRkDiG58RAEQSl2jZ/e9EH/Uu+EIJSpyE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=blYq98a4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 8/8] ice: add dynamic
 interrupt allocation
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
Cc: michal.swiatkowski@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 23, 2023 at 01:24:40PM +0100, Piotr Raczynski wrote:
> Currently driver can only allocate interrupt vectors during init phase by
> calling pci_alloc_irq_vectors. Change that and make use of new
> pci_msix_alloc_irq_at/pci_msix_free_irq API and enable to allocate and free
> more interrupts after MSIX has been enabled. Since not all platforms
> supports dynamic allocation, check it with pci_msix_can_alloc_dyn.
> 
> Extend the tracker to keep track how many interrupts are allocated
> initially so when all such vectors are already used, additional interrupts
> are automatically allocated dynamically. Remember each interrupt allocation
> method to then free appropriately. Since some features may require
> interrupts allocated dynamically add appropriate VSI flag and take it into
> account when allocating new interrupt.
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
