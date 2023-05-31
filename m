Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E787718828
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 19:10:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F334281E07;
	Wed, 31 May 2023 17:10:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F334281E07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685553045;
	bh=zmNpXvZ0mSbmoZpyY4Hr06AaxdIHNyxXqzp5lJbu6aI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d6PouuVdka53DsNWVGgKIDLZks+Dh7ISA6n6kBq6UH0hAEugVKn/ry/TKENMOnj4z
	 eW86htWKzT0m4tCusaishNrkuRuq8wczgTQFAX3ynr68pavd+bswHiZV5JAPeLj5NS
	 RU/xN+RzMuSD8snSPArDcS1qqXJV3Ni9RMgb43a0PgIQocf4P5xf/lmkPUiUgKp3Jl
	 y3ikjNPm5TA3HEbd45685e8sp+0sPB7fuUjpddKSiJbwOlDNAVaXHYTFKukzC4+ajP
	 5Mu4WKdbiOOMRlURM6g3bHB/dN07MMWZcjkqHviH4TYtnWSWCMVYDe2rt7tDup6XU4
	 JofTt8pMGqvsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hyoRFpr-abhy; Wed, 31 May 2023 17:10:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BFAC581919;
	Wed, 31 May 2023 17:10:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFAC581919
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A2761BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 17:10:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D17C0410C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 17:10:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D17C0410C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PgDLPw1n3QTZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 17:10:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56F7F410C2
Received: from EUR02-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur02on2056.outbound.protection.outlook.com [40.107.249.56])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 56F7F410C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 17:10:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dvUylGGBTJizAIwrVUXEo6PFeICFu9XOTm5pJLavorw+sYXPrRGehgkJBpHCrjkM4MyHxWaqwyNXkQuqRrMXG64h0+qfJIR60/S5bvthaxLoRnP+vELsNsh2TO8d8mQwZUD0mAZ5IcXz4KYOdhB9L6H/dSC+EhEuzRR53v2WuqHU34VttThXzGUv9GjqKGbYfsdCj7HGakv/m1LZ4Q1lJ3WMdpmS+vIHZ/Yi11QMOmqfRmHi9OAJEgRlgvO+KhTYAR3lt3auNA5SsUzhY/o8A2wPAWhc1zUyqGcRZLfw9Ne8G6YGEfEUgAPaxzrkhhvyOlTNcOKSrOdO7YYzS9EQ5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q+TOmyqzygUUeZ2RtGadNzmdyCeYOkCP3ss3LdNkM0M=;
 b=A47DbGNitd3CmsySmDhnFIs5fYtn0xrIx9DM+rO/1eEagxRTbTCqr7B9A49sXo4IidjxbvVHhDStKUP0VxzYuuWfj0Oegdfizzmyi6yfybtVtFTvaV4Vk0229XjF7YG29USs6n/BGogRdviR9CWfp45K9wbiPTQWJvzdGpigplyAzszxS9mSBbv4qU9Bzlr7Iv0qKpGry/Ck533KRf2qJFqgdhlqnySZfNReQXi+63QOO10xZb0Nxr2kjne+iQHVZ0+vdff53bviCzVIgSUOa9m1A/3zKAVDKqDR9aeBjmHiOq6lkFgidCjL4nrlF3OFNAKWg/ZDZ1PTA2fXD3qAag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DB9PR04MB8395.eurprd04.prod.outlook.com (2603:10a6:10:247::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Wed, 31 May
 2023 17:10:34 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::47e4:eb1:e83c:fa4a]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::47e4:eb1:e83c:fa4a%4]) with mapi id 15.20.6455.020; Wed, 31 May 2023
 17:10:34 +0000
Date: Wed, 31 May 2023 20:10:29 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Simon Horman <simon.horman@corigine.com>
Message-ID: <20230531171029.gxi3um3bvmjjhvqk@skbuf>
References: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
 <20230530091948.1408477-3-vladimir.oltean@nxp.com>
 <ZHd++lqP8EQocWQC@corigine.com>
Content-Disposition: inline
In-Reply-To: <ZHd++lqP8EQocWQC@corigine.com>
X-ClientProxiedBy: VI1PR07CA0229.eurprd07.prod.outlook.com
 (2603:10a6:802:58::32) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DB9PR04MB8395:EE_
X-MS-Office365-Filtering-Correlation-Id: 702e482d-a478-49ca-cb43-08db61f9f26d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7QopltgeaiDWlkymjxDQxyrqSaI8nqOhM5O3c3xGc9yAZ1dZK8PqnC/I7THidMpUEmWuD95Pe2kjwG+QbYRTis1PMLVAnfa975oU1YGwec5fbnVNQAOFzzLgY2fHwXuozlCXxH2nHxkraGYUrayd2HFoa8yRPAuUwvh2ErMBuX9GbATVYqSGYTsJ0WLPD84vtGJMQFglycHMQe2UH3gGq2NLX19bcBGSyybxCWA7009CxOe7pidQHTNK22a/n9QL/UC9lOnexrr/OMyHR7BBLoWVusaH4U4U6x+7Mw+Waru8uxlRqCK3gxxCA4PnJUJ8NiCB0gTGrwoIQUYUnbkXPmCiZbfH7W+KUFFe/ilcLMPXJ8L8VISMvfOqgVmRlMEVKMbM88jdOt2RcX6NMVOl+QjVgbm6KMcovFN7xCqxZ86NbNK8SAWPBhpweYtvgeTLcTmbvOtT5toG/CkcgbfYDaeejPsDOM/CVt49oNsIxV4VUQA4llAgR4nBOutBFg0lvLhefU64KZ9b6LzswsKMc+lqAnr+6F1Cn8uEJv9fB4ddRopOdN/rZRz3FZuwJf1Z
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(136003)(376002)(39860400002)(346002)(366004)(396003)(451199021)(186003)(38100700002)(41300700001)(83380400001)(9686003)(6506007)(26005)(6512007)(1076003)(6486002)(6666004)(478600001)(54906003)(66556008)(66476007)(66946007)(6916009)(4326008)(316002)(8936002)(44832011)(7406005)(7416002)(8676002)(33716001)(86362001)(5660300002)(2906002)(4744005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6VUgJzcbJTrvCBd/J4iEAX+3AFXQQVUfi9+fxPhUkwIABQnuhQKzjk0gEUft?=
 =?us-ascii?Q?P48xB1tFIhw513CjF61fW/5xhtd3YoxDBPuiCo4QbJd4i3LNNQNotWSZVOLE?=
 =?us-ascii?Q?WC0T+6ZIYQI79FIF3eyi7kFTu3zLjJgsyiq3k1/BprcXz6XT7vu/39unklRT?=
 =?us-ascii?Q?LDEDIJFTbg9FqFNfot3BiRmK3etKxDB232TOMWxw/1/jFq5oWr32UE/xxmmr?=
 =?us-ascii?Q?GQJl4q8uhX/kkwSap2P56NaTW+ghoU3Byl7wyMVjV46E9+zZpqjOgNKpSS1K?=
 =?us-ascii?Q?m3MigZzh4v0RnSOkIXHsdOnGHnApuo9H90rtMi1i9C8Q0Wx9I/kWGFoFvNSb?=
 =?us-ascii?Q?dTr3mXbe82ABZdIAJUKDIkHtEbyPkVNbW57Zu9zY4QaDBeNeBr8jflHwP7BJ?=
 =?us-ascii?Q?mIc58P7u6cgQ+YGlGGoJntifsAzukUQ398E2c/lgrEv721FPsme6QN/GSsL0?=
 =?us-ascii?Q?eBWJ0t7YUNhODS21d/hm7u/9PLnSccWWZKDono+VfRIRAr/BQiNV1WZHirHy?=
 =?us-ascii?Q?FfJASKbSzZapBKlnT7oCGZXUjl/xuCTXDF4iwWfx84jd14x3qhEcsDQL0NnW?=
 =?us-ascii?Q?1rQ6Arj/23eTwpeWDuW4ydsPGMKXMinZIdY0sMoUZkZrYTcVOevmD1GxswCU?=
 =?us-ascii?Q?phEEdAg4eTw56CzhFh3V2jFqc7oXYhA1U87qJLPhmwgJdwFRonIBzFp3Grx0?=
 =?us-ascii?Q?L/xoJGrOGd4j/j0w5Bn5zCDntiq/egMW863maBSDM1iZdcelInR5Q6COFGUR?=
 =?us-ascii?Q?0ewv1dDJvoz9NnW063ejHMex5YZqaY7sOJeXOUGyOSfDOo3LnQkmBujh/2pJ?=
 =?us-ascii?Q?5gBSmN33Cmtk+vV3XVAe7mNTHzp8ooSI816/dibDiNT+7siODinWxjoWgMEh?=
 =?us-ascii?Q?3rH99CfCBYFBLP5CrSm2AuQDIVT6CaB7Y0U38xWYS9aGPNS37I6n2FqRL9Wm?=
 =?us-ascii?Q?c4D9oPWFu8MtlzJD8c8qQ/br2yap7Pv+Enhtb8Nc81hdICH4a4ybfdPRKJ3x?=
 =?us-ascii?Q?odfQStx5li3HX5+0F2A88Rp7+gfJHRY3hUI5+uAU1rgBH/nYKMO+IYoVubHj?=
 =?us-ascii?Q?eDq5GB3tX49valHqOwqw7FXeffxEijvOhljF5nRgSt/rKExvbpQMdAqjixni?=
 =?us-ascii?Q?5QPVqaAWwIx2jA5WsU3hcKcgIKXkAdAhkTj5+xXqO3nWFVxZz0bycPTVFlQo?=
 =?us-ascii?Q?qr4EQRyXXMAhXZcM+c12m/XijoLk/n7yl/8bcw0d3u+yRqqxHXqv4xs7VmK/?=
 =?us-ascii?Q?8eED2EUrkDycZG3dvqPhb7zuvWewOa4TpPVWYXcIbRZ+nGwGh3tJygp8jpYd?=
 =?us-ascii?Q?+P7qKAjTfFu7LXO5v/HGLcbxoFFq0Sm3XoT7ZVwWx1tG85btuPVt1RHzOhUr?=
 =?us-ascii?Q?DZhFgrYg6wZFGpUa6zShteHCeeWSWb3i3ro13SszILKKDfSxR4pITKEczvGg?=
 =?us-ascii?Q?CPeQrTFxtShQ5bkCQMWUE13juOjrZPDcjELjbizYAnt+cJGkCJZ52PnWXrEV?=
 =?us-ascii?Q?4iZfoLn8soMJ4D4Oz9ndiip26Y/mj8fMZLv2Qwkg+QtyljIDVbpQNEHYETYJ?=
 =?us-ascii?Q?9BwkafTSWkPdOzzMMaw0UIxv9ni0qYQ6g2Up2hh8Lf9ZhoteFVwCYxuhsfpp?=
 =?us-ascii?Q?Fw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 702e482d-a478-49ca-cb43-08db61f9f26d
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2023 17:10:34.6490 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RW3CrJTgBCu2cvRKuR+3ck72V0ncHUGx3ccLDEzjSn6iJi+KrGo//vp2f10kYOZaysTMGSzDNj3tAqU31sql6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8395
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q+TOmyqzygUUeZ2RtGadNzmdyCeYOkCP3ss3LdNkM0M=;
 b=YlMKgi/VD6KENC0Wqvme5aC4qfGngQlyRA+XrjCJeJOUdjLuP0PokakwWh7rjBg3alxyCV+7svdDASETMOGm0B20EivmTb5QzFSzG4iiH1npLytDAOEbW6UbRjpZh1itXNwqzVLQbTHskyofs81z5Qr1as/6kaOQ1OGGrhVC4C4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=YlMKgi/V
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] net/sched: taprio:
 replace tc_taprio_qopt_offload :: enable with a "cmd" enum
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
 Ferenc Fejes <ferenc.fejes@ericsson.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Cong Wang <xiyou.wangcong@gmail.com>,
 Gerhard Engleder <gerhard@engleder-embedded.com>, UNGLinuxDriver@microchip.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Xiaoliang Yang <xiaoliang.yang_1@nxp.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Mohammad Athari Bin Ismail <mohammad.athari.ismail@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Pranavi Somisetty <pranavi.somisetty@amd.com>,
 Jiri Pirko <jiri@resnulli.us>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Roger Quadros <rogerq@kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Michael Sit Wei Hong <michael.wei.hong.sit@intel.com>,
 Harini Katakam <harini.katakam@amd.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jose Abreu <joabreu@synopsys.com>,
 Oleksij Rempel <linux@rempel-privat.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 31, 2023 at 07:08:10PM +0200, Simon Horman wrote:
> > --- a/drivers/net/dsa/ocelot/felix_vsc9959.c
> > +++ b/drivers/net/dsa/ocelot/felix_vsc9959.c
> 
> ...
> 
> > @@ -1423,6 +1423,8 @@ static int vsc9959_qos_port_tas_set(struct ocelot *ocelot, int port,
> >  
> >  		mutex_unlock(&ocelot->tas_lock);
> >  		return 0;
> > +	} else if (taprio->cmd != TAPRIO_CMD_REPLACE) {
> 
> Hi Vladimir,
> 
> Do you need to 'mutex_unlock(&ocelot->tas_lock)' here?

Yup. Nice catch, thanks. I reviewed this a couple of times myself but I
missed it. I'll send a fixup patch later today, hopefully.

> > +		return -EOPNOTSUPP;
> >  	}
> >  
> >  	ret = ocelot_port_mqprio(ocelot, port, &taprio->mqprio);
> 
> ...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
