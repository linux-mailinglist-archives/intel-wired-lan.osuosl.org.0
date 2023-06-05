Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9224722760
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 15:28:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49C4882BD6;
	Mon,  5 Jun 2023 13:28:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49C4882BD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685971690;
	bh=9c6d0CjzHE6SSh1jGwKi2ISKuz84zisZpt9rpEtuFBA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iuy/gI+Ad4MHnI54pi4zuYbjIGKHjiCPGReqZp2juGGQ6x6DV9x7PDmXP0SlEfQjl
	 OU2ZBoTHr2cau7J+C5nuGdXrQD8zCLXsBUzhiJomR2Yo68UssA17veezIazlCbWZ8j
	 6Hql6NAl6wW59sEeIivRGyesztn0HlwgLosfBW2sDUvsBuDY7fysfwt9kX3MsYtuX6
	 z7VbeDy8NyV0Hh5TCj7jmE0gNY7bQaUGjl2TK69UpyWMY9QgTk8SqcbVO6z8YpeYQ4
	 A8YhB+XwE4mGoBIFT6aATZ2i+nktuYQ4alU92qcS9OE5ZLaexAmIN7b1SpQb1Kg1Ik
	 mK22aByLGgQLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cZB5csyHYQCx; Mon,  5 Jun 2023 13:28:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F67282343;
	Mon,  5 Jun 2023 13:28:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F67282343
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B25D61BF475
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 13:28:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8453740580
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 13:28:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8453740580
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PAd7fEY4FA1T for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 13:28:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3798C40577
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2093.outbound.protection.outlook.com [40.107.237.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3798C40577
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 13:28:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=li04Q5iHRLZuyui0KAPqEE9dkBNr1HPArD78aGrecHa42j4XQGER4BhUahx+iFijzUdRIV3Dv1pX8fAUEz9R7GJqo5l+cDmDdjGjDfleU0GznQlnMTGGXBTDU7y886vvLLopEfP96emi+R6ERmbjJtgdw5+yA7d/5pY5s/NNoHHs/aPxXTSTl7OMKiJn8gRCbj723bKPkITU/pYWOxWULHAsZQTIDzN3LglG+Iq8xvJswL/ZNYdGDEdWHhjxWoyzoUkdGEbDt44YKSpiaers60snUUgAv04qQYhxfPO+iSTFsevGsXY769M0Ofvuv/rt7nHl8MwjnemAIAn5j0lZgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jPnH+FAuA79ba/hXAMpGfrhV9frIggEEKdLSGFTqJz0=;
 b=A3iVi4LvHaRbgFSYcXwV5kbkorDBkyIbupczheoDK3JOdxfI6gJL+7RFgg04e2QHFroPpvY/OWoiC+dPmnrt8OEt7DoVn7O7USAi/iASDmP8FyiW65YhYAipaIhCn9e5Zd1wJtEQGUFUif9gqygM21u2K+yYy6Wq/VdF8OoHugf7JVfXGWVZlmMrrRiNnk2TtZr0mlF+yGTjIgbDwgh+UMvTG4jcnhgLSsdFrDPasHqR+0b3mMb7eV5ZKxfKPaY6ffIEj9cA9TxFG3Mdf9JRhEsiDF4fhIJhlqYgoQEvRT3TGTP0CXBDVlh/i/76Pmk+FCfFbnlTNR5qfTdbEOY1Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CH0PR13MB5098.namprd13.prod.outlook.com (2603:10b6:610:ed::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Mon, 5 Jun
 2023 13:27:57 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6%3]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 13:27:57 +0000
Date: Mon, 5 Jun 2023 15:27:50 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <ZH3i1hxWOuynkbxk@corigine.com>
References: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
 <20230605125042.lx6ng5jcsxp625ep@skbuf>
Content-Disposition: inline
In-Reply-To: <20230605125042.lx6ng5jcsxp625ep@skbuf>
X-ClientProxiedBy: AS4P189CA0030.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5db::17) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CH0PR13MB5098:EE_
X-MS-Office365-Filtering-Correlation-Id: 544b0370-653d-438b-5237-08db65c8ad1b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XXGq5wxsDGglAS921gM9duQc00EvAWyScVxMc8MlAEd1andO9341ZmwLw3e9n2+ThBCrk1GBIdOUC3OucdnvCwRFu21xyaSINSyfux+S6+QlkXqkGZ1KykRLcCxzFMF3GMi4G19mPB8KzBMG5HCSSOACqTKEVfgF4ZxVXib+NYv9uMNY3r9sE7CkYrY/thZPQck27hSdkzwfLoGRJzZGd9NmZp7hMqGimRh/+m6BQPN5CEKEeuGvdHnDAYbE55qO4qtzaZo2edQ2+JsAXEKS3lR+GV24oeKsg/azvz3ADykfXYX4bNV5SnyiJHnflG5PCzworH0UDBFj+2kr4qUgpNtRqViweIHeQ90LOmLZs7mV87upJzUJbOxfx6lOSC+VkqigcB5e1lOjQVRCZ94LKpc7XXSD4dMpmFZVyqsptjHwyvD5GbR3t43nkwrD3B0VFmFec0Ikhm/IkkgmWSrZeQxmBRa4GLRV5gB7WXX8ddGrBe2bXvhTUqsVBVCYCkicS/zxCteXt/R57+oV9U+lAWX1/LMecAxS+dMFpfSKEOg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(346002)(396003)(39840400004)(366004)(136003)(451199021)(54906003)(478600001)(5660300002)(8936002)(8676002)(44832011)(7416002)(36756003)(2906002)(86362001)(4326008)(6916009)(66476007)(66556008)(316002)(66946007)(38100700002)(41300700001)(83380400001)(6506007)(2616005)(6512007)(186003)(966005)(6486002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xsXJ5RrpcHwOGmQ09jPxH3iEnEy6b2KArrJtHVUERhzqHbSh6r2N3wFdqquW?=
 =?us-ascii?Q?+qLNrwabKFdegHoZf0VzgJEI63YP/4DICurIU0ZsSK6Lqkk9NTqYyl7f9ZZ4?=
 =?us-ascii?Q?mwbvtPP76/IMF+eDF0B85QXsUNkh/drZCJJnfhUtRWxqw84K3cfgaamvgw8u?=
 =?us-ascii?Q?gt/nMaGuaqA8lp0VXekpqFwZbDMJPn15f8Hs8ykxQEiPV8+Pym32W3QUlNeG?=
 =?us-ascii?Q?yyULo4pDUCrCml4ec6cSembl5zq7I4d9GsF6X69XiSGL8QGEoD+jdVwDKUbK?=
 =?us-ascii?Q?a30Vqj6zP2B7aDVc77iIVM4+UFli3sELtKyW1d2Q2gvQ9O6B54E5mqRtkZ7Q?=
 =?us-ascii?Q?X55wifohzfjDNVjDxP940ZBl26dGpVKiEOzIoHgaJINLlY3roOU4RlL8fXzB?=
 =?us-ascii?Q?YqpKzMd/cV2/k1Pb10YeD063e3e4g3XNOxT/P0KY2S0EKvJdqHFSXFQNdr5J?=
 =?us-ascii?Q?FCqLPedu3DxqIaKwfPVik/Th3BhoCe555w3096tA+EhxbaF4TeLoP6JYX+dT?=
 =?us-ascii?Q?3K7NcsgD+kPm/wvl+b+wtoFY4Uyaxr08nvGvFu5p31oB1yesoVuqlwv2RE0o?=
 =?us-ascii?Q?1opHgvwcNbLLqXXXE64SU4ZZR/MbbRg8gSXkG3S0R3nQKimvqS/WgdwaM9KF?=
 =?us-ascii?Q?S+YmQJEYmOijSW8dBFxlCwCGg9VQkNYLCWRLJIv0dCluRvxrmhLT+alV1rlc?=
 =?us-ascii?Q?YmFq7TyshBYuI+qU5b0ca29kI/SLpO+bZO9B0HQc829yjfjoDeqH5ECwh62r?=
 =?us-ascii?Q?MOD92MiE8IPQ38SWTK9z3AYpGNeXnsHcnIv/shaL9B7oOemCbQNl3PbOQ3dP?=
 =?us-ascii?Q?Sjh7XiBRQA7ENosURoOYflPdvanmmb87Ns5MXNcvNn6qsTkFLW+9aghA5hck?=
 =?us-ascii?Q?8ymu9zUQ9wOOWuKDACv6dO5vb3Xh/kKAEwAjv7aNfdo0n9l8ISIE63J7lV7G?=
 =?us-ascii?Q?HXxZqVLHW0Fxe79+9Hkw0kXlHYYJswdZ3WC8pgony2eNxrGHgNHl6ZCBJ8e3?=
 =?us-ascii?Q?83xXDb4vThTUaWk9VFBdiYNBl8xtqm/WC3a9SVw2UWcOIl3FosHDOYBQsXFg?=
 =?us-ascii?Q?rOeBZ/57K8I6NTyOfI45N7WUkmsLokvPnlfxbDwBsJfoBN1Po91amj3zW17B?=
 =?us-ascii?Q?+xlRl3JQBP9ad/ZQU4rFcYeKebBg6KHGcDRt+tnXPQASh0ivs9V96OSTi+36?=
 =?us-ascii?Q?hKAMhzvQajlws2ZaxYMWCInV/9UWnBVJyeqm0EO3t4ySyCBXyOw5ROEIIPaG?=
 =?us-ascii?Q?k/QHFWFYXlHxH6TdR7AAkFD70LE8Hhirn/MuyNDRpmDdjT6bsq3miVLSlu9j?=
 =?us-ascii?Q?2fpFst/6FMEUWoPFxKO4IHgb3eJRyVawTrG0/Rvd12K28SEIHBIpj2CrkjeM?=
 =?us-ascii?Q?Ax/urLzmheCk8ugRWTsuMRbyyhX3FOLFVmcjNLCmV4cgR/JFjPUihZU1XNqs?=
 =?us-ascii?Q?d0aYbNUvmzx95nm35nr6//TSUKE8xPeDa4Jk67dGVWpYcSvVRqPJ/fc6gGIS?=
 =?us-ascii?Q?m+rja6hPynGyzEXW3AINSYn2NDU+cjsjOk6whWnL348g4G1K7AkYq0murvsy?=
 =?us-ascii?Q?17yG+5tmfiqpaGHblIYwygvxz+vHec+l6hGbPZ6J1HyVBTBo6hd01kZqOF79?=
 =?us-ascii?Q?w+tkf0R3i0gXEoArK6arcKWb/EHAsHPLRgDVe08ATU18jKh1uQaGXxIALdvd?=
 =?us-ascii?Q?IoRg9Q=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 544b0370-653d-438b-5237-08db65c8ad1b
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2023 13:27:57.6767 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GvyPOLxgM9/j7KYDLtgm6IYJRW56iS+Jqo6nmy6Li5c5W26KcYgTxPeSXKslkCO+hyfVb4J2Y+AY9b17OkuKwBQRID/Ag1sAtd0+qTjCt38=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR13MB5098
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jPnH+FAuA79ba/hXAMpGfrhV9frIggEEKdLSGFTqJz0=;
 b=XW7OmpeiTuAcZsv8Dh5ojDqf8+tN+YkUxccTRsZilziVEpQXBu4iyiHeGx6MMAm983zWDnWpw+b69tIV8REkj0kAaS7krQt1kGqknVXAl6qeqse3z1nW3b4DgWbNz13aC1po8I/5OTO+aclqjAPKSI7dhs8du6ah6tNzkpjBjP8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=XW7Ompei
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND net-next 0/5] Improve the
 taprio qdisc's relationship with its children
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 netdev@vger.kernel.org, Jamal Hadi Salim <jhs@mojatatu.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Cong Wang <xiyou.wangcong@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 05, 2023 at 03:50:42PM +0300, Vladimir Oltean wrote:
> Hi,
> 
> On Fri, Jun 02, 2023 at 01:37:45PM +0300, Vladimir Oltean wrote:
> > [ Original patch set was lost due to an apparent transient problem with
> > kernel.org's DNSBL setup. This is an identical resend. ]
> > 
> > Prompted by Vinicius' request to consolidate some child Qdisc
> > dereferences in taprio:
> > https://lore.kernel.org/netdev/87edmxv7x2.fsf@intel.com/
> > 
> > I remembered that I had left some unfinished work in this Qdisc, namely
> > commit af7b29b1deaa ("Revert "net/sched: taprio: make qdisc_leaf() see
> > the per-netdev-queue pfifo child qdiscs"").
> > 
> > This patch set represents another stab at, essentially, what's in the
> > title. Not only does taprio not properly detect when it's grafted as a
> > non-root qdisc, but it also returns incorrect per-class stats.
> > Eventually, Vinicius' request is addressed too, although in a different
> > form than the one he requested (which was purely cosmetic).
> > 
> > Review from people more experienced with Qdiscs than me would be
> > appreciated. I tried my best to explain what I consider to be problems.
> > I am deliberately targeting net-next because the changes are too
> > invasive for net - they were reverted from stable once already.
> 
> I noticed that this patch set has "Changes Requested" in patchwork.
> 
> I can't completely exclude the fact that maybe someone has requested
> some changes to be made, but there is no email in my inbox to that end,
> and for that matter, neither did patchwork or the email archive process
> any responses to this thread.

I concur. Let's see if this sets set it to "Under Review".

-- 
pw-bot: under-review

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
