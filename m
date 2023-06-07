Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B861725BA3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 12:30:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A28C82122;
	Wed,  7 Jun 2023 10:30:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A28C82122
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686133815;
	bh=Pd1fwfyuTDcSD1ngNjERZvH319miDyKTm7B5Xljsr/8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5nCW/R4MuwlSZqYwtLZvKwQ1wDDfhpeotUTMmO/8EHOxYYASl5cEQhP7vJru1PXiA
	 o5oIXM6/XIYw1+od4YjzWSukkMxnkmF8rI9RdP+18Xn83WYOubbnIKuxuocncvSJ/T
	 w8DgQd4jQa7i7BdFceU1Bb1H/mZxCxJHFHP5gE0hCkWrGK8FnjWiFeHLokYja/xC8N
	 NrC/TJ1CNRuvw/7t5rDGCb3WnKwC6EHCd+7LomIB5Or2rCxggYjRUjes5ur0YnFOXt
	 eDG+EIj2HT/MLd/WMoOF4PYxA9LiZuTAQYxCaGXH5Y1KUgb094wJC0FojtPa7xGj4P
	 4LFlNKPWHAoTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DInpOmNxrFai; Wed,  7 Jun 2023 10:30:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B80B8212D;
	Wed,  7 Jun 2023 10:30:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B80B8212D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 999481BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 10:30:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7E5DC60D77
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 10:30:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E5DC60D77
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G4YwnYw0WUqk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 10:30:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B378D60A8C
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2052.outbound.protection.outlook.com [40.107.22.52])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B378D60A8C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 10:30:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UokrlG2+gKK01Tk1RZR3sXN2mFsfc+pykTywuDcRa/jlwu0zhEIy63x9VWSdb+m+17orTuiZSX8amQL5srCM0u2yoBJruzf0Yui7Sf1cfiKEUVuhV8kXCeRnHnYWYQArnMvEKnIaNs2gDW4K9AHpzOQe7RS2eRj+bNhy8Yw3EWY9W32W93pLvlXNV5qFaCqyM1GM1/vmFj5aG0wjXRjyhleWGpyACapWQ1e0a8HJONWCTCKJYJcy1VHZWAR/m6lK39Ev+V2gPpLBHb6P4QjnlSnJEj81H9jl8kluD+2Z1FEFaJPYd8f1xTAD2n7ZNLMjr2I5TrC0zCObnEwQdURDOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=16FEzq1b0AE5tBouwKjRHNaPltVo4vyz9yyvIq30tMQ=;
 b=LO4m9hY2+d3gWa4LKmKHsatz5LurYddvpmHnxL1nEfUg3RPPe1B2KFhs/ER9O1HF1pouiVxTNkfCMZAc7YFj7meL+PrjwST8KIvRqkQQy/7DpvPHD1WuKzDST6r0qkhdiiq/tceRZoePwClIcCfi4w0eBQDWGkU8YZI/z28qtYPXUm8U49OiMlEIEKF2/JETysfzu4AsAghGTlSOUmwk+gzm6nAW8DzyM7ckP37n8laQ94W1sQK+JeVuCQ1kmEs0O6rDmJ4Y8FL+pMZHC7kQgsoGuRVXmVegTXgRRfytGXDBOk3dTfcSKLz1JYsLofysiQx5gASPtcyUrh0jTImLbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DU0PR04MB9561.eurprd04.prod.outlook.com (2603:10a6:10:312::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Wed, 7 Jun
 2023 10:30:04 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%4]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 10:30:04 +0000
Date: Wed, 7 Jun 2023 13:30:01 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Jamal Hadi Salim <jhs@mojatatu.com>
Message-ID: <20230607103001.p62au4e2cztv5xut@skbuf>
References: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
 <CAM0EoMnqscw=OfWzyEKV10qFW5+EFMd5JWZxPSPCod3TvqpnuQ@mail.gmail.com>
 <20230605165353.tnjrwa7gbcp4qhim@skbuf>
 <CAM0EoM=qG9sDjM=F6D=i=h3dKXwQXAt1wui8W_EXDJi2tijRnw@mail.gmail.com>
 <20230606163156.7ee6uk7jevggmaba@skbuf>
 <CAM0EoM=3+qwj+C9MzDEULeYc3B=_N=vHyP_QDdhcrNsyaQQODw@mail.gmail.com>
 <20230607100901.qpqdgv6nbvi3k6e2@skbuf>
Content-Disposition: inline
In-Reply-To: <20230607100901.qpqdgv6nbvi3k6e2@skbuf>
X-ClientProxiedBy: FR2P281CA0117.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9d::7) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DU0PR04MB9561:EE_
X-MS-Office365-Filtering-Correlation-Id: aa3239fa-e388-4008-f58c-08db67422846
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d0lhu6jK3jB5qGGMdkW3QBwNUNzv4cBmpLgqLDtnwUyF8s0xgk0e4p3IBeyzQfZxvh6kSBgycIqlqFbnbCxRVbX9uOVhsJxfFwryMxFki2k0ugGv6eFPShCwrKei2N64Whm5X39qqaJuJQgM04NKt2IA3917MbgT9jbFNxlZbJ+Tb43ONfnrV26N975H+jIeyzCrKtoW+bunYS1PbRVsQtvVSIcqOVKCqljysyZMH3S9drj1y+hZuu7uf/4lKKSpDsNsIve6qAlnL3rKbQNCUMI/g9Z3UDPfhHa1uBRhAPitwgUgJS4onwQqtIIhY3mZXs8w+Rzybp6KOaZxmNbx44F1s7mKqtKPE2qYKajrQ43cs7m18dT3hTA3RqVZzzNvFsTxPrsvOw3c1pi+Zl+wcRlDwmepLSsQCcWziEIg0c4JdfC3qLzko1Fkbk8I96CsaPve3m5iGq5fnGWhKKPFpb6APi79janjaWPeoBqADjBuHle4MjM61AR1rbbAUvpLO4W9aMmaNcI2bVCW02Htw8RiFBPB6IxFWWP4EKF7837aM9cQ3FCKfOvLUU40SB0e
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(136003)(366004)(346002)(376002)(39860400002)(396003)(451199021)(8676002)(8936002)(478600001)(54906003)(41300700001)(6506007)(5660300002)(6666004)(316002)(6486002)(1076003)(26005)(44832011)(4326008)(66556008)(66476007)(6916009)(66946007)(9686003)(6512007)(186003)(7416002)(2906002)(4744005)(38100700002)(86362001)(33716001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?P9YEgFi69oaA912wzZ5PWCD98hZHZuKjUNIVUE4328ZLi1QokVUye82YF0B7?=
 =?us-ascii?Q?IrQgkgsr4AX3spvrCTkby5A8nC71BK4lKMDQS0VVa60PWl/eYJCL1SMLzqvU?=
 =?us-ascii?Q?PX4kRhk+fgq5Bh145AewfEiJUbz/VQOIfpgPybdZf6+uOqx57bTNyLCAobsa?=
 =?us-ascii?Q?2pHyh5QkfgGtVs3XI3D2zkYsZ5nVsP4Pey2SN8C9tA+2gpiyBzRi3TgSQUd7?=
 =?us-ascii?Q?vFwnhGqlH6U89iDmaAEJ8PCDZfP5BHekCe/gEg9SthU1AsNNuQyzGmWmOUif?=
 =?us-ascii?Q?fzNX//NQZN+vDOdLrlZoAaWEoL05AtsP25QEHo6makjeAkd7xFxBDWVckeWb?=
 =?us-ascii?Q?uP3jcdVg5hjzB4B/z4+YJbzSVX2XCrK8NmOdI8IgtW7/zmKjddqxS0R4fLaV?=
 =?us-ascii?Q?jrSkQVo7LO+Oy2d4zWtXwB3lclnp4yvu5QbdPWi/K2UbZu2PPTeoStaaL7oP?=
 =?us-ascii?Q?5qn6vWqHitw5WoWq/ehgKqILDjNJH+QrXtcAycx3OtYrx1TG8ZH2igfkyD9A?=
 =?us-ascii?Q?VowZYQzFFnFQp45GZPwK4j/92AdeJQfDHNMl1uBHppS/4VkUW7MX7e6+uO/1?=
 =?us-ascii?Q?qyHnZyIH0MfGXkbAK0a98AuVo/pqxOjQ8sI/Fgshvqi4jZMK/2YOpr+b7iUB?=
 =?us-ascii?Q?WRd0JR+4922luoDIDb/HVvq1OKBAHGJUluqiyq7vrUsXVgL3iZFrS0xDaOyw?=
 =?us-ascii?Q?ubsz5ZGNtP/mv42VWAQ5Xuul3yjIM+qky/pOANLW8J7jZAJxbJzpLUp2EnTY?=
 =?us-ascii?Q?ayDp/DbN7beAM2aQBok4j7radLHkJbwu35CatJB/+4lbFMG34H1tbscpUFFI?=
 =?us-ascii?Q?K5kQTRvmHctovp3+y3l5uL89ZkHde7FCJPvaPBW1UTWYs1up76UTb869N7Yr?=
 =?us-ascii?Q?tGmSOACNDP0xPt1Hn9l6Gv/iMBO0RIYLsnAMFOPN80xsln9tXTearpFrNscj?=
 =?us-ascii?Q?NcWHvSdKJiLZniU31aOwTJkgxw0mPUFW+jeGXWh8A4fElmD8r/L6b4P15QZY?=
 =?us-ascii?Q?8UtCVbJ9LKVOkM7KuX8WKbEx2UcKbYC1HGJZUB/+sLcCzFUUGOMF3hzHy1te?=
 =?us-ascii?Q?c/XPaA8VdBASHiyfK+BoHESzlb7CCB10bO83pToawUDUehxsUgnvg7Xw9xkP?=
 =?us-ascii?Q?D2IIRlnrAmEgkts/9egiB28YPazSflqrGDUbXCxQ0AyWZU5C0qu/uLzahm2R?=
 =?us-ascii?Q?aG7hzBZVDbopPdJhZwSMCGiqpslH5uCriMFxqfy4c7VqnQU+QX08xjnk0xMg?=
 =?us-ascii?Q?OE1uMy2VRzvVojYv62LW3VUzQm1AfNrRRwh3JpKoMgo5FrWmE7uEMgwlcg3E?=
 =?us-ascii?Q?Odj52aBjIth84ie7EN1prHs04hws6ft4gg1o9gEj/2gXInsbwuzHzNw0LunX?=
 =?us-ascii?Q?5qEDE3FxFdO5l3Y2UyjxtDswSmwzhSNadPdlXS/bjOFMuF2r1Ck0FKBFBAo4?=
 =?us-ascii?Q?pf2W4+DMEAdVScBMSoO4y5lWD5bQdVhrc50fou2gB7+M1nS78WN90EzlQHUB?=
 =?us-ascii?Q?rwnguifSyr8TO2yBoEIG86r8CLvPVm36R4C10nJb1uHI1hTfvOaglhjYEcAS?=
 =?us-ascii?Q?1RzY8LSehEP6aH7z57KGK7Mu+8g3KAzXhKyoeNJq1TRUzVDHlaBQNdSRb2Ms?=
 =?us-ascii?Q?vg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa3239fa-e388-4008-f58c-08db67422846
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2023 10:30:04.5899 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QA6dZ27bOxM+oLGfCzVbrK8r17N15mqVYcUhFCWqMkY56TjNU5yvH+GhEgq8ZkPWNNyKKpvp31vu+WcX/t314g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9561
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=16FEzq1b0AE5tBouwKjRHNaPltVo4vyz9yyvIq30tMQ=;
 b=b9OLP8NItVElrZJ2c4hzVE4MOYx/JJjZj8BEKkCizFTPnYGBvAyPMwgflZ9k7cqnl/OKPrVQlhyXqMuR1nLcOF2+tgLIvB9zWoreyH6/IY4IrW+ipUt9sqzYB9goMTir30gDKAMQI6Ly2qvLS05tl0cMwdxOwgR5/9lFTcmBp6E=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=b9OLP8NI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Peilin Ye <yepeilin.cs@gmail.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 07, 2023 at 01:09:01PM +0300, Vladimir Oltean wrote:
> That being said, a non-offloaded cbs/htb will not work with an offloaded
> taprio root anymore after commit 13511704f8d7 ("net: taprio offload:
> enforce qdisc to netdev queue mapping"), and IMO what should be done
> there is to reject somehow those child Qdiscs which also can't be
> offloaded when the root is offloaded.
> 
> Offloading a taprio qdisc (potentially with offloaded cbs children) also
> affects the autonomous forwarding data path in case of an Ethernet switch.
> So it's not just about dev_queue_xmits() from Linux.

Ah, no, I said something stupid. Non-offloaded child Qdisc should still
work with offloaded root (shaping done in software, scheduling in hardware).
I was thinking about the autonomous forwarding case in the back of my
mind, that's still problematic because the shaping wouldn't affect the
packets that Linux didn't originate.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
