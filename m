Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E64C730A7D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 00:17:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8C2141E8F;
	Wed, 14 Jun 2023 22:17:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8C2141E8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686781054;
	bh=rnksSxJj49g7d0itBepmfnFRdWw2r3KWf9fGI5NpbE8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Iz61pmXdfo+R+sG4vm9TTxMjz6/gZl6vuDriqqLPyyItfF5dnu69k3GUAYaBbAFFL
	 vhDiOf7Xg5/PweBaDokfOjr3Px+aAvNz8RZnqS7E6DnJbgiTWFzbtRPeMGKNnZmnHW
	 k7VcQOWjwRpdXhpMJhRW9o1bz1yVH82TwvDyJjUqqDknrdwSd241JJ2zUlogp36iBu
	 2Cn98bN53eXOoXC2nkpL22KADfH2R8mVDNHqPXJZTYRzU4c69dbre+WUwt1AD2YY7h
	 c7Igo/B1Yq4Qe38r093mvVEnlc38Q6LItH9IOjONv0zORIuxeCI1KIb/5QJ4EWKTfR
	 1DzNlIHKL3onw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6gyjzNciDsmC; Wed, 14 Jun 2023 22:17:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F18AC41DB3;
	Wed, 14 Jun 2023 22:17:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F18AC41DB3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B4131BF29C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 22:17:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 636D341DB3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 22:17:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 636D341DB3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tzNn7XcwCF_N for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 22:17:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3973941DAC
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04on2082.outbound.protection.outlook.com [40.107.7.82])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3973941DAC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 22:17:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QBUigyxq7u/5/lJg/yszUZg7iOQljI+xmdg7Fko7b727nbng1flVcypVNycHG1hokXRniP/wTKVpOLOkfEE+yqRwSb6IlqLNYmA1uHAYy76/JO3PqSJGt4SltFpfLKAAKrIkJArO/xOxY8KnkYuXxdtAV/5DpPe8vZPf1c1EwD5QAh1pdnmy0b0pT1IR/zGaFJiqKfn6JObx3JhJcFSPW5YPefVxnMi9Og0SIi9y8ZAWZCO1sOMFJPVgAWv/3g94eMr8dC38fOfHVbnc3vk07nAzO1SpSJ8RgOm7LB6reg41WFvT8ms7fs+nOC1HF8bYeRa5d8gE3D2sp1lls7Ra6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PD6bHiewSN3Ci+VbGmOoIp99tKqbzeYQt6uCW9FkYdA=;
 b=lMqxZe8+UZZBbyezVs3UMudwrSZ0WudRDbpLiMxf6MORuRdXcYswFeGK+AkjXaeNrfF4TrBdYetRZYmvzVB45bzQ3mxkBhxUx8pspLKpgXyI0h3IvHyTpVNCv+f10aFHHpQAAmu1NNkPbK3+BfvHEPUtJQjjGUHH9LUK0giUNit6TMXuNDSlhC3rL09KiZo0UHP9zpUvB7o5CIhuXGnu/AfDpF8Cjbkys8VqqP4SQuAz7yMZw15YfsRR8QceBBGJHFrWis7NvyooNRglPJJH6nvmvQ1ggY8em4PCXWv39QosspiOGrpRrOi+W75DHP9GNMSkmyD6AR2aaDA4t5fsKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AS8PR04MB8372.eurprd04.prod.outlook.com (2603:10a6:20b:3b3::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37; Wed, 14 Jun
 2023 22:17:22 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%4]) with mapi id 15.20.6455.045; Wed, 14 Jun 2023
 22:17:22 +0000
Date: Thu, 15 Jun 2023 01:17:18 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Simon Horman <simon.horman@corigine.com>
Message-ID: <20230614221718.cx6yjiwrpik4iesw@skbuf>
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
 <20230613215440.2465708-7-vladimir.oltean@nxp.com>
 <ZIm8kK7plae8CLvV@corigine.com>
Content-Disposition: inline
In-Reply-To: <ZIm8kK7plae8CLvV@corigine.com>
X-ClientProxiedBy: AM0PR10CA0088.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:15::41) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AS8PR04MB8372:EE_
X-MS-Office365-Filtering-Correlation-Id: 6cb55c63-7b23-4a8d-0d8a-08db6d252015
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VOtfXrx9bzg8tsOs1Cm2qiymes3hrixhjYXTNdIUBFhG7bmjsULogVeH8MkGo9rLvoXhGsi2dKimZHCMq8xTKUcga5pEVpzqnjorD76X2eOwh8oIy0jJBOLAxJ4lMv8Pa5kc8tLe+fJj+CmGzjADz/o+Hg2joXqvZC6/aWgWC8MEnByjegnupYzuJJyaE5y2WyNFKQuqQvJqHmlfidAycq319YMdPPAZlUaDyUkjXxw9si/2kjTbrR6l56Q9JeEns0yegF+ODD2ihllhFQJVaEsJemk3rBgR26NNPtNHDztpWziiYXZIL9ralZGm4j3U5AKa/98McN6gpRlw4WcYTToscoXW1qUtWoEVOT0CCc4Ju9v9ix/9GCjp7mb61UzhffBdna7yh949VTI2sW4rqwGH6sjU/ziIyLqsCkhd7IWEOvc56RVsZZI9Mwrdbm75UN028TJqofoeJaD4Opx1J/vyb7o8OsUDidC0vqlwDky9DCxU9Pz1J3dC9adsAHs+GZC2FqgMWm05EeYmfmttZWdAiUuQgY1AaaTZhEvfWiAIMu7V4g2EnqYMK7hgq+Cg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(39860400002)(136003)(376002)(346002)(366004)(396003)(451199021)(44832011)(2906002)(33716001)(86362001)(7416002)(6486002)(83380400001)(6666004)(186003)(6506007)(26005)(1076003)(9686003)(6512007)(54906003)(6916009)(66946007)(66556008)(4326008)(66476007)(5660300002)(316002)(38100700002)(8676002)(8936002)(41300700001)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QQ7LnsJlyIZW80hC4wfNq099jmrHEto2pdL9qfOJAKc2ULn3qb34nooKUF/R?=
 =?us-ascii?Q?04FafX4KNyJiG036XiZsKyTlvICBApJIDO0KktLCnhVhGc6QK2cZxKhOrilq?=
 =?us-ascii?Q?dlskHjoXt/wCCnPaanmIEV3i9OBqxUi/5hSqHANLHkYbSLvoyr3xpVBXljAH?=
 =?us-ascii?Q?EoiSk9G2tDE7qoWzyAF0dynVjrICYa09/++/6c63NLB7nx9E7F/dGog7EXl1?=
 =?us-ascii?Q?qJaQijpvR2Gu4PbaZ1lK1sXtka5gUQvMeyL4SMcJsbChCY8/fjtv5BICC7P1?=
 =?us-ascii?Q?LZm8nRRKV6KkCu/pVSh9iqkQnBeY9V81Btmlb+Wx582djhLGl3p+51i5T7Nb?=
 =?us-ascii?Q?lVXGgFcbD8iKi68U6m1FIqJwkPPvbSXqtGFJqQJ5Hq3MugfyDfHRD5Cbh+pf?=
 =?us-ascii?Q?8pi7FahAEAJKmUcCU6c42Ym57b43eUQzhu0fLvL9QFLH3cHMRbdWY/Mu99tG?=
 =?us-ascii?Q?fgVA7fjOMPcZZHUBxL6lf1gUmUI0L/gKlAy8+8qZf7sK09u2kFFC34KS3q9n?=
 =?us-ascii?Q?+xJQMpl24n5wIsJcMtLRqbZM+Xp/V4RSdZRulOJg93N+abFvkTjbwh16kBJo?=
 =?us-ascii?Q?/PZjiFkdRfCVMD7l2Ng3jDUBvOCXZmDkJPHJZp6a/SBZBi+StDiy8YXp3rhr?=
 =?us-ascii?Q?Q5yTWki8+zOCGCnz690SNsVfSC1tDBb0iQV8s7op69aWbscSZo3NOtOkya6c?=
 =?us-ascii?Q?mZPdI2/CU85gDCbg0ByYxWJAuup6kgKY9KjPdxIOAoXucgmCNzB/uQhPazLB?=
 =?us-ascii?Q?QUvND9DmMKMC2qSwB5kjNy1WrB/91jL7h7Ej1h/e1uSKsDVmxnOwAwSzDBaW?=
 =?us-ascii?Q?yb/KIZfWJBrmYmuCvRZYZ9GOLEOWWw0ZDQUAivxBAJKPLklAjGNSBqvcbZMf?=
 =?us-ascii?Q?oPx3VCyZyjekccREhjEsmtksCqrhyJcFSgDLsbwLpDSPxSc2HGvqGBGxduaM?=
 =?us-ascii?Q?yCQuTmjCW5/OnKdCYgxLYUV+9ZkNJE+9SKG0zti19nSWFQhTYjmKeBfdUqD4?=
 =?us-ascii?Q?geWHAfqqXHp9G+tGj8/nCEsJs+NrRqRI6sz8hOODohbsZwvoBdV4IEYb5RHA?=
 =?us-ascii?Q?noXgdnlp6BN2RPIOOiNcMmHDQMZWnYk4tmcJwgPepPjaBnuBsvAyo0p5YZc6?=
 =?us-ascii?Q?dW+Hr1Rx0t7gTdZCx/IiBECotJkoCvvMBCurdo8kP2w9d1MpRSI+LMvo4nuM?=
 =?us-ascii?Q?KCEP42My1qDuF62+0dc7NXf+oc0tdOEjF7d6AtFHBznuOV8ZvpMXtYMQR9Q8?=
 =?us-ascii?Q?OkiV6zjgGdwjg50La2Pj8cKpPiOz7O08vhPXNwkK2ASkpYyFgkFWYyuo8Ha2?=
 =?us-ascii?Q?T5sL1KdiYRhDyRLbzCEzfyB4fbTzlgXp2l2ATIvz7tna+0VZ/WNoJl5fXrpo?=
 =?us-ascii?Q?p2Fzjzt/TOs+cByMn1WvhJ1+IZtpvzUZu1bmqpkCMOeCjAgcnJ+TywytOv3m?=
 =?us-ascii?Q?iwC1GWN/ofKmR9xXPOmX469VHgbhyiEemYqrJ6HgezAmNl9RY0AOsdxY0V4C?=
 =?us-ascii?Q?yzI7KYvGLCcplaU2fT+j11rdiUy071J7wHPHVVLk1GZ/NTzoj/YAb6ISxJKQ?=
 =?us-ascii?Q?rHVgXBDuMBt6lupDNpzRLvOqrQTPE+YSokWa5CZWYawwG9oNcu1djOWCF+bP?=
 =?us-ascii?Q?HQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cb55c63-7b23-4a8d-0d8a-08db6d252015
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 22:17:22.4560 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ExzT80Kpz3B94+iSKnAF4ukZgFK/OvJ4hc2nbWicNnJ51ZzypSyaYnE6hRWjZCPiwuKCQE3TJJUgbzDrAemI2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8372
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PD6bHiewSN3Ci+VbGmOoIp99tKqbzeYQt6uCW9FkYdA=;
 b=RgIxq2gDu6xtnASz1Lw9fBz4bLfSsam19QQL9khc3lSALRuWdHC74mMQCkRZ9N8zYa/h4yAiXPKhCye4rtTKPcg07S2yuBM9vBjZsKfjL8+lLEojpjPbzBNOA1hrP09MaE8T3pbuzKeSEs7uqwHRL84DWLtsV/Z0xWahMM/Zt2M=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=RgIxq2gD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 6/9] net: netdevsim:
 create a mock-up PTP Hardware Clock driver
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

Hi Simon,

On Wed, Jun 14, 2023 at 03:11:44PM +0200, Simon Horman wrote:
> > +#define MOCK_PHC_CC_SHIFT		31
> > +#define MOCK_PHC_CC_MULT		(1 << MOCK_PHC_CC_SHIFT)
> 
> Maybe BIT()?

Sorry, not everything that is 1 << something has BIT() semantics.
This in particular is quite clearly just a multiplier factor
expressed as a power of 2.

> > +struct mock_phc *mock_phc_create(struct device *dev)
> > +{
> > +	struct mock_phc *phc;
> > +	int err;
> > +
> > +	phc = kzalloc(sizeof(*phc), GFP_KERNEL);
> > +	if (!phc) {
> > +		err = -ENOMEM;
> > +		goto out;
> > +	}
> > +
> > +	phc->info = (struct ptp_clock_info) {
> > +		.owner		= THIS_MODULE,
> > +		.name		= "Mock-up PTP clock",
> > +		.max_adj	= MOCK_PHC_MAX_ADJ_PPB,
> > +		.adjfine	= mock_phc_adjfine,
> > +		.adjtime	= mock_phc_adjtime,
> > +		.gettime64	= mock_phc_gettime64,
> > +		.settime64	= mock_phc_settime64,
> > +		.do_aux_work	= mock_phc_refresh,
> > +	};
> > +
> > +	phc->cc = (struct cyclecounter) {
> > +		.read	= mock_phc_cc_read,
> > +		.mask	= CYCLECOUNTER_MASK(64),
> > +		.mult	= MOCK_PHC_CC_MULT,
> > +		.shift	= MOCK_PHC_CC_SHIFT,
> > +	};
> > +
> > +	spin_lock_init(&phc->lock);
> > +	timecounter_init(&phc->tc, &phc->cc, 0);
> > +
> > +	phc->clock = ptp_clock_register(&phc->info, dev);
> > +	if (IS_ERR_OR_NULL(phc->clock)) {
> > +		err = PTR_ERR_OR_ZERO(phc->clock);
> > +		goto out_free_phc;
> > +	}
> > +
> > +	ptp_schedule_worker(phc->clock, MOCK_PHC_REFRESH_INTERVAL);
> > +
> > +	return phc;
> > +
> > +out_free_phc:
> > +	kfree(phc);
> > +out:
> > +	return ERR_PTR(err);
> > +}
> 
> Smatch complains that ERR_PTR may be passed zero.
> Looking at the IS_ERR_OR_NULL block above, this does indeed seem to be the
> case.

The intention here had something to do with PTP being optional for the
caller (netdevsim). Not sure whether the implementation is the best -
and in particular whether ERR_PTR(0) is NULL or not. I guess this is
what the smatch warning (which I haven't looked at) is saying.

> Keeping Smatch happy is one thing - your call - but I do wonder if the
> caller of mock_phc_create() handles the NULL case correctly.

mock_phc_create() returns a pointer to an opaque data structure -
struct mock_phc - and the caller just carries that pointer around to the
other API calls exported by the mock_phc module. It doesn't need to care
whether the pointer is NULL or not, just the mock_phc module does (and
it does handle that part well, at least assuming that the pointer is NULL).
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
