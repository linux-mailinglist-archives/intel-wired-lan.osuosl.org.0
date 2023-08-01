Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C91A76BB8E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 19:44:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 027D44055E;
	Tue,  1 Aug 2023 17:44:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 027D44055E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690911857;
	bh=3c/P1W6H+sD+DwTXO4wZV37TpUJTKyYPGwq1U3eK2yc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UlaaSg/zr1dxb7hKub2u5svkaVP6nC8FnB2oAfvidVn67dwBo6+Fya07S6pUGqWhM
	 7QYjSmvOCBnUJFvBtX/4Jz1sGFouHwnh/At0Q6AhYZ7RqTHevHDeegf8w7BrL67qsG
	 QY03PZxtQ15vDrP4/B3mcCJjxLxgWYrb8WqceUXVRTiCIj3rTO3GyHMz4D4FlF8mKC
	 xBYhAvp8KOYdSw3DecP3CzduoDR6eb7dmW+QOpfnPPMjC8DdWgLjXUDzKrHv+DpXhD
	 UyGl3A6fgQlK0tCfiWc9/shp5sW6xUN6Na3cVBtLPhk+0C0w1kgvgSkSXByXD+URs5
	 Ywq3MbiJmCY3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QO92XNRXTBRR; Tue,  1 Aug 2023 17:44:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CCFAE400DA;
	Tue,  1 Aug 2023 17:44:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCFAE400DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 601DB1BF964
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 17:44:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 036CB402E1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 17:43:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 036CB402E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PlNVUohi1jlR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 17:43:56 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur02on2066.outbound.protection.outlook.com [40.107.249.66])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C20F34031B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 17:43:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C20F34031B
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LuL2ljoJV+e0b+Ps9IQBeIv0HxkPF9k/waDV4mgFX7D94qikkJznhPvettEYcdtw7Q01OCNokcy+pEIC43TNzcbdGBoA73mngILO0zjdI9ByHC/gxuHHZ08wv3MXKOm/25p2K9SYwnemBnStkhZwodJkgNlbQawqh+5KAZaqeaMCR6wB4RhmU8ZtBgts9XAts17ypKLxy83dGhi9mLKNIkJ796gYq14Du4i7oP1P3JzyYVw0pUwAl5TNgJTDQMV9BBNk7f23d+QJZnBl2CHxOgePVDkDEHcbfwnE8FHyov4FfPJFR7C1J42NFvIyWa2FcWi60QKOzavvjvr/l7NxpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dtgFwdlvpu1qFEWGg8cWgAuxSONCDTzPRmtmiZsq2rg=;
 b=LYIdTf2NHohaWz0F+cgwV9AaDwy33qdLt+3ZXf/nQkSCGXEiR8jJAkliRIfJceb3e/SkIYRSphTyz/p3Y04An8dNRPMoMAfYN9Q+oLcRScurUg1rfoiOElkxQp620f4yQPHlavIiaIE86/411k063p5eIgmXPL7CJw09FF+sYUyK8+EFj/IyibOYlpF872PGsMkIGrBEBWFgeM6KDX8z2769mSEBTXnoTpwUiHLMb6nFH82ibL7EBoEFye2tyVhlrQTHQ1ZVFCKPwPClCP0hvnD6HobQ+RcKcPz/ibFM7aBgDpUKpWxgF7KVR5A2WczYR4RyGYzcIdXg8dZBpM7vLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AS5PR04MB9941.eurprd04.prod.outlook.com (2603:10a6:20b:67c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.43; Tue, 1 Aug
 2023 17:43:51 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194%4]) with mapi id 15.20.6631.045; Tue, 1 Aug 2023
 17:43:51 +0000
Date: Tue, 1 Aug 2023 20:43:47 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20230801174347.gtmxoqybhvbbl2rg@skbuf>
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
 <20230613215440.2465708-8-vladimir.oltean@nxp.com>
 <877cs5twqn.fsf@intel.com> <20230801164534.2nklcql2nh6x6p7y@skbuf>
 <87o7jq64s4.fsf@intel.com>
Content-Disposition: inline
In-Reply-To: <87o7jq64s4.fsf@intel.com>
X-ClientProxiedBy: AM0PR10CA0080.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:15::33) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AS5PR04MB9941:EE_
X-MS-Office365-Filtering-Correlation-Id: 24fbe469-1f0a-4819-acbe-08db92b6de26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BGjzjREk5thEWEvRAo8R6xMyv0txo6/9Q1bqTA/zfeSywxFX77kjfLiB/TLEBZcfF6jVc42CBt/vzmqd4XhvFfcGrh+cUY7XtTMzJ7xx+75j+9Dc2dfCD7hiq6AVyHevJPliLlc1Gs1PsVqHGT16TzJt3D4rSxJFDkNs6Habrh07OVGFyxgg/N/I09GVvO2Gn/88nKzulxftF8xTOTaxuCu7+Zz4Uoot9DpYKC2rKyWNRMXX6GQ0sbDYLkPpm3o7wEFpmWquZyAJyK2v1YAe/jPout9KzOf08fKnoQvmIdAY4lRMzRodaIV4zv1BrxV6JvbDCDbF087Y2ONWuiLTEqs540asfL69QMfOJ4BHnj8gAIstHBhz/5lMSMr0v+hxg0SHlb1YWg3a0yY9W/0byf9wJyfw5clpCRPjS4RLubHNUggN89ThosJS3mvBHgPl3qlqe3DVsogYQOgkydf+Z2VaNftKkVx2Zxt579Okftd850QdEqZn+8+a7t9GQTG0X2cJ04Qn/tqXe+emCsN5P0GbHVrJ6xr4PtxFJhqbbz6OkHB+k0fkmy3lRnaUB4iP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(346002)(39860400002)(366004)(396003)(376002)(136003)(451199021)(4326008)(8936002)(41300700001)(5660300002)(6916009)(66946007)(8676002)(2906002)(54906003)(66556008)(478600001)(44832011)(316002)(7416002)(66476007)(6486002)(6666004)(6512007)(9686003)(33716001)(38100700002)(6506007)(1076003)(26005)(186003)(83380400001)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?L6deT84znxjLaSE6CfN+SClEo3JpCrTxPEmVXCveyHcyVRDeOykv7LQwVZ6y?=
 =?us-ascii?Q?/QbzWPgd9KtW7O/S/KHm0xPkETzOrrgXuShNZKsreOlxMTzElewP7KgvD1Y9?=
 =?us-ascii?Q?J1A+YbZBBL1zVb+IldD6W/xVXg7On6s7HHlctOI5KwlaBFsCxnBaI6WrM9TX?=
 =?us-ascii?Q?eJLwWKY70yrPSNJTrX4HAAejbFox/1pyoPrmLspXQSciyY1ytKRUEZSRwbYS?=
 =?us-ascii?Q?ZZuZClggXHCDEenBgVB3+e+TczEijjc3Y7eczEQaMYzsRhIahBXWBdHyhT8I?=
 =?us-ascii?Q?9S6TDZHbMh8iOYQFbf2H0xF7mtn9r47ZqSrW09dw5V5kVRr59L8krIOftMCv?=
 =?us-ascii?Q?vL6VJZ1Uc65/lNmW65H9tei07qXbjd038lp4V3GKq9WCXa0ZzEw8YgjuQytZ?=
 =?us-ascii?Q?+02Kj5K0I4R0ZP/6/yADMcq32rlVA11kC3M1lNShGCT/uHTBOyY1fWVw+lWV?=
 =?us-ascii?Q?/+5OybBlVg7HpfuX58yF4nyihi5u7d+4KsjqhYqke5wNIiLoHJ6FLaQGA8of?=
 =?us-ascii?Q?MnAR6qTmOT+QRo1VwyYMM62+EyiGPhHOb/hDqcwr2Mc/l3b/oiKFuJowFUV7?=
 =?us-ascii?Q?QsSF+lDD3Vj4+TIY0ANHrr3CIL91Dv1xH7fXb5vxwwvB9fRnEXNDcqT3Kwny?=
 =?us-ascii?Q?0ajIG77r04nGGRauEzrPJReBv2nM15ffeBBcZuAMWen0zz9hO6K/B28khPGH?=
 =?us-ascii?Q?chbG0SQi90Tt8T66gIvA6ovXPUcmVk3zR8EaOftK5r2Qgl8aLnUsTNGYjcSX?=
 =?us-ascii?Q?kYrW0v0k+AOYjNoG8U4Q8wt+I883KRMi+62MRiRVWCyNWUn0YqK/7eDXEvOz?=
 =?us-ascii?Q?Ubjovl/IKjXXggdTlr78W4x3e57YBvggunIcj4YK24d68k88TPXKzt+we60G?=
 =?us-ascii?Q?uczeduCCQfI1RdAj/oh6X+dRvOWLmajb9yai3WoZ42KEj93rjGFjW80I9MZp?=
 =?us-ascii?Q?+fdX3bRb8r2Mlt/A7FyR2RI7RAukvl2EoA+SsdWI8/rZVufMa/SbnNK8P5A6?=
 =?us-ascii?Q?aqv/ekYB+UgaNOpT2uu10eQFcgWFOCFwtg4Ki/yFmViCWfwUmZJoTf1YhDxO?=
 =?us-ascii?Q?fdOzHCs9ZmMy8F6NJQhiZ75FnyNcb/9nbHdDhQwPvHFI09t0kE+4/fpTG2QW?=
 =?us-ascii?Q?u++omynhViGwncjeOWuaE31VxpkU5bEfY2FAMY2oyURoRakxsvbERFFK+hRN?=
 =?us-ascii?Q?FAar06cKKsxBtRlgNRKXlEF+tb8MhdriKNOyCS6myWwz0e4t7FyXyIbNWfq/?=
 =?us-ascii?Q?FDbnivi0cgypmARcCFjU4in+xkFmGo5sv40RnjQ4PW9v9Yq/d1BBNZkGPOuO?=
 =?us-ascii?Q?xKkAr8jkUTYAnchjWH5Jr0ZE5rEsMQg8xtIF9Whbimbl1irqOXxmB/anMsgP?=
 =?us-ascii?Q?HUSrxBjX+rfMoRdkqsB42BRzzs2w8SrlgLmkqJ5ml8GUUnuN80kZmtctOEyJ?=
 =?us-ascii?Q?cLNBQb3KT5BGf/LgekCqIzjGLH8hwhbs2ymHCisR7Mfay249+pF7cJbh8xqN?=
 =?us-ascii?Q?wkyLgPNxonhjp/ECr3jkAV6d0Z/eCDjeQqEWvDJoLv26+YfLCvYqZSGisoab?=
 =?us-ascii?Q?ArAAS6rGE5VVcGX5ZDiOytzVnK9Rd6REg2+Pqrn0Z+hLRUfXmNpAhmURrkQ3?=
 =?us-ascii?Q?+w=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24fbe469-1f0a-4819-acbe-08db92b6de26
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 17:43:51.7032 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2rITiI4JU1QEoqbE8LAqv5/NonCH4G6YA8X4GUjJbgi91xAOEnmKlpRV93X3rpXJArb+r6NYsmy8hUM9QfGBSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5PR04MB9941
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dtgFwdlvpu1qFEWGg8cWgAuxSONCDTzPRmtmiZsq2rg=;
 b=WwJ5oYaccp38/MWJ8zky1AG+MGXxhNcU5DBWgu6o5RmDt0bDA0XDoOnxKsTrMJgdiFI966DzNRxLJUYTlCJ4Ho3yLh4pfYzZSaGo7UHikZ2DiKkek23K0Z+KU60F4IxlcgylVKVYu8C/+yQtCwUd9gBI/4Q+g0uIaOt49Jnz0is=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=WwJ5oYac
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 7/9] net: netdevsim: mimic
 tc-taprio offload
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
 netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Maxim Georgiev <glipus@gmail.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Zhengchao Shao <shaozhengchao@huawei.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 01, 2023 at 10:39:23AM -0700, Vinicius Costa Gomes wrote:
> Hi Vladimir,
> 
> Vladimir Oltean <vladimir.oltean@nxp.com> writes:
> 
> > On Wed, Jun 14, 2023 at 05:06:24PM -0700, Vinicius Costa Gomes wrote:
> >> > +static int nsim_setup_tc_taprio(struct net_device *dev,
> >> > +				struct tc_taprio_qopt_offload *offload)
> >> > +{
> >> > +	int err = 0;
> >> > +
> >> > +	switch (offload->cmd) {
> >> > +	case TAPRIO_CMD_REPLACE:
> >> > +	case TAPRIO_CMD_DESTROY:
> >> > +		break;
> >> 
> >> I was thinking about how useful would proper validation of the
> >> parameters be? Thinking that we could detect "driver API" breakages
> >> earlier, and we want it documented that the drivers should check for the
> >> things that it supports.
> >> 
> >> Makes sense?
> >
> > Sorry, I lack imagination as to what the netdevsim driver may check for.
> > The taprio offload parameters should always be valid, properly speaking,
> > otherwise the Qdisc wouldn't be passing them on to the driver. At least
> > that would be the intention. The rest are hardware specific checks for
> > hardware specific limitations. Here there is no hardware.
> >
> 
> Trying to remember what was going through my mind when I said that.
> 
> What I seem to recall is something that would help us "keep honest":
> I was worrying about someone (perhaps myself ;-) sneaking a new feature
> in taprio and forgetting to update other drivers.
> 
> I thought that adding a check for the existing parameters would help
> detect those kind of things. If anything unknown was there in the
> offload struct, netdevsim would complain loudly.
> 
> Perhaps I was worrying too much. And the way to solve that is to keep
> active attention against that during review.

Ok, so I'm not making any change to the patch set as a result of this
comment, would you agree?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
