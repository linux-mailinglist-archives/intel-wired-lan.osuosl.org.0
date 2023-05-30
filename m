Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E7245716FC9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 23:33:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47F2A4175C;
	Tue, 30 May 2023 21:33:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47F2A4175C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685482389;
	bh=u7eUH2FY1l6VXYPZ5OivCPcLzboCQkGxj0aUr+5qVQ8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dM2JTM0UxxSjG1WUwXEaoCN5xeC8HUajjs54jxs2jipo6Mbt2qdeKrm9YOgfOpGvA
	 eP4IppGs38bLGIWjb9DvWy80uccrh/QzELVkK0ppG7/TD/1+pIGL+2FDt0wpBMpidJ
	 tKApr16BBN9VlujtbVrffggDOftirLOR9xThupT1qc+B6MBC19XRMtigPnprvy/Ij8
	 Sf0RgPirvswFQcroBj9/fXjBHw+hzouSXEL1Q5los7AJ8EFlteVUpEe8j4UBh+UaiM
	 ATpGO6Zfi5FlrgcR4Vvks82p7iNGJ1G+R/7U1m48gE1105CAKHHZIcWZJM4Voz/1AF
	 W/RS52swM9vDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qRYzBGoX9sLj; Tue, 30 May 2023 21:33:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CC72415C9;
	Tue, 30 May 2023 21:33:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CC72415C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 535DA1BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 21:33:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2140A82132
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 21:33:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2140A82132
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lPir5LSDIY9B for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 21:33:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A4F48210C
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur01on2045.outbound.protection.outlook.com [40.107.15.45])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3A4F48210C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 21:33:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nBwCCThBf7Yo9uQ5veERtBEgULP0trIRZSPM0YhfHTq5frELzEGAmwEVgL1u50GRoapHKf1bSLY75zTDEbMKzn1JGoIMfGIfU3GMUaXShvp4IR5Kq41gqgt4zXmapHVZlRxSrWSzCcFbNGem918q9xOGVoYAhooo4ptrrzzDo5PgTO1wXTdQgaefoaEhm2pD4mUwiYT2q3lXqLLFGf7izq32508ttg9UM/ej4MKAG5M6FNEukdNi/3q7DyImi4ZjfXGH/pODGVaR/sO3EPVMQ/96lcsSAv2FODqOl5IhvVP1SQpMZIyyRVaZDOhItWNkJXyfYHdz6LwMV0ZgZQp5aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ylZyePCCTjMbSoCPQZhVlAHOBxRVv1JrYxv/O2WWfMU=;
 b=Qsj+g83VjONTNzeVhqn7+bM8q6Q803SNG1YP/gb5ADzfnZwx3haa46GJ8q5swZKYDQSILvuVPoixQtAhDSAIsheAW6mQjPByo+QDD3PvbUg8nkPqvjPvIYgNMXnpdazr0Hn3W/WxGtO/om8XyxpejKXmvie8NHg8+y2Q5P0bwmPhlNrAeJvYlsQ/b6U+swP4UoOmbNWIkNpGSoj5IjdYhMy4MKKJT5mbRQQEqRQWVwh1Blrgt1LOkEplVCAI3vLeHn7KYHaA2onBK82av76YRu0f5mzs7FVa/CyyA+CtsbJEYbFfLr7NuBkITCdR3Lhlu4ykB5sfZaqxgoMZPeRj/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DU2PR04MB8838.eurprd04.prod.outlook.com (2603:10a6:10:2e1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Tue, 30 May
 2023 21:32:57 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea%6]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 21:32:57 +0000
Date: Wed, 31 May 2023 00:32:52 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20230530213252.pddrmwgppneawmht@skbuf>
References: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
 <20230530091948.1408477-2-vladimir.oltean@nxp.com>
 <87edmxv7x2.fsf@intel.com>
Content-Disposition: inline
In-Reply-To: <87edmxv7x2.fsf@intel.com>
X-ClientProxiedBy: FR2P281CA0042.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:92::15) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DU2PR04MB8838:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b2e2069-b931-4070-1289-08db61556f2e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: plHa4AmhraxAvXixGV1XgiQQ5lfEtbGPFMvlL5SbNp+tZf0Vp0ifkCePJHDvI5QeVk61TOXbnNcUAfnLpTMHj9t8Btz5hE1alIbESbe2L+uCmOr7oR/G6vWQCy8ubjVdm2IYsInMbJoNufOcnQZB/9PIZUl1bJ7ERqyz+3MkMPhtzYeWcFEswhxmWvRChzxoVQ8yNJFgVga+yVjh5ty9NWBqkq+z9OysHEg0rDKPyU1EiqJeOnVI68jtx3bS61UohU3YGk8EtIC8paM6QffHkRU/j+eM7gMIbZU3FMWwW9Esn1Lr9XcxhilnffZ3T4EIAx2GK0s3IgmE+H+UZfZjXggkOPXdFUJbMK+oNLXMC9By/VeYnEHC0AwxkKOF+ZH1tYzwH09I43pTOiuwAcyNxFzYJIU0f8fcV5oJ2eXiiaXa0njO/s9EZqe4VNRax45jM+w3E4shRptP63ZskO6RdUrlSLFQIonycXRaqwulIaNxoShPGVE1HhOJVoff4q5glxim8l6H57QCJHiTOYZWgav6M0Tm3mDdWnJvPSf9J1ZifAYresUAkWcbXXbM4Rzj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(366004)(376002)(396003)(39860400002)(136003)(346002)(451199021)(38100700002)(41300700001)(6666004)(6512007)(316002)(6916009)(3716004)(4326008)(86362001)(8676002)(8936002)(6486002)(2906002)(4744005)(7416002)(66946007)(7406005)(9686003)(66556008)(66476007)(54906003)(44832011)(6506007)(26005)(1076003)(478600001)(33716001)(5660300002)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IE9XI14G+gn/IJvtCEyGxzsmFrd6F2vjHurKZk1YtXIngYo3lAGwiSNpzzZK?=
 =?us-ascii?Q?c0qzmF8Kp44c2XcbU/wG42mmWvS0bWI4mndv0ntTRXBMbt02AWE9w3KnuQ9i?=
 =?us-ascii?Q?SadeIwz0jR7JsXlndn9vo112upXIZDM5WAs7fYn/1Y6d6e1qylgxhtp+CazX?=
 =?us-ascii?Q?e0YHaMe77D2EeTrPJPJWRsM4KVqI04OiIeuWOzaqeDlQVmB8Yjoi8JTS4IiC?=
 =?us-ascii?Q?gUmhvoFa8MUFhxrLEW61iSApDRcYrRIOjpRUSKepwvXPYLTCyKxQ81OPQ7iL?=
 =?us-ascii?Q?qjbp9HWZkFPgnqTsJvJM7WueWZaXSy73LKwCC8gpWWesqwOnVj/coi24QalV?=
 =?us-ascii?Q?v2698VOxCkiUj/V9fFGhL9RxEu4k+z5Qwi2ffwyAveEVKL1LNRqIjmdCej4A?=
 =?us-ascii?Q?5NB9c6ecKkuFQ9bfynd5NIxHLaqrqH0+aXqfEn1MGEJCsfErX1k28FQrNvMg?=
 =?us-ascii?Q?tmxxwwDYqRyE0OwRx1ayW/kIBiSeRyFGigSWVXqLBc2xRQPIVEWqOBQ5jLsa?=
 =?us-ascii?Q?S7KrbEhr6HURzGAMa7QS5HWNBpgsNvaxtYVcOlUcG6Iz6sE4S0BpqwX+qKpn?=
 =?us-ascii?Q?q2rqAlZ5ISOIwUW/wZp596L4tu5KlIqa5LpV/Sc1v+vp6/K6R+39SpZoA0+0?=
 =?us-ascii?Q?sWwwjjUiylZANMNMU3/01Tuqti/+6aQ7skfc9REGvRmtlKaSRkt5eaeqRwy+?=
 =?us-ascii?Q?4S4mbwn9FFn+FfGWfk82ncplUrZFec+pEu4puNWT80emXD4ERLXH5njn22bA?=
 =?us-ascii?Q?fXDX91mEN4TVw5DZOKqYZX8PY0HRrCNipyUg/tfQ0ghSBmN2pNW3OnypZo9S?=
 =?us-ascii?Q?ssitUV3khXe92Tiu8JnPr6ijc9UUGrSBkCN/SqKFurH2WFlkig1gy80Y7ysj?=
 =?us-ascii?Q?YMK1LzCEkSG8dVsyiGVeJjxRvyy2DuEz19wPEMU7+kzPyXgViAFrdVzgLBaH?=
 =?us-ascii?Q?Tbjp6upFtJShud1hHXsQ2c7gRoYeB4mvaoW+CKgwj+d73IiqKeBuUpwYs6K1?=
 =?us-ascii?Q?rq5N3J9fj8wh3oLP2SiWYKSMZCA9Ty64ZQsED3Xm+icJrFDRETvS1e0eUTct?=
 =?us-ascii?Q?NiQr56IxQ1wXOg18ALx1DnxjhFZH4epiJMAo2ZJyiGjBtLRC4AdRGBBIOau2?=
 =?us-ascii?Q?/xTeiXyfwiAtqh68RkSrJivUCILULMFNjnuiddca7YwwzRlI12+0umFnFXF+?=
 =?us-ascii?Q?u3Vs4t6c9GUlUQek9hbpgv12g430+iGl7JvLASrNcDyZ35kSkU+tDQ4rRxdn?=
 =?us-ascii?Q?N1mJ98o6Cj3fuMHAf17VnIOrGmwPkaSXQ3Dc1XS8burI3lsw/TtKTRiHtHEp?=
 =?us-ascii?Q?uZzjaoEhN5+upadgR+E5JACFaioTG5ZHB9zigFTod7i1ecz3MMvV+y5wDZYf?=
 =?us-ascii?Q?VDUbFnd+d7WbsA+R/68Vz7MAHLLpqN86v4CDMaw57J/MWewpP0sibH07lc32?=
 =?us-ascii?Q?XX1gOdu+/7V7US5Xdw+vQSjB2RHVULT9jP4KkqgWV0oWtM2BBnk+hcIGrJzg?=
 =?us-ascii?Q?AqpBHnm50DNHaGcYPTKHaoCAjg9cQwGLUBpdLPw32Ug1p7yq0Bqbp2+LxLkf?=
 =?us-ascii?Q?SAZHPOuIHflJcGeVBCde5L0N+4rDHyhbydR7NikSHO2kQhTQDAyphA7Dzy4j?=
 =?us-ascii?Q?xQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b2e2069-b931-4070-1289-08db61556f2e
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2023 21:32:57.0645 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xL18dFdIK19zvuC1WTLCUcMj9l5TAerdzCwzHWTcuhjPvK43J+Md7SunVlFSGsbNDCKP2UQZgxQmc2SN+TQwKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8838
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ylZyePCCTjMbSoCPQZhVlAHOBxRVv1JrYxv/O2WWfMU=;
 b=er+ofbeoQ+2xMFP6rXorCm29gOKpFnjDU4H3HYIVduLpqPh9v4BVSStuJCM5HSv+cq3efCKAblcuDNlan3ZYF7g1o1V+EPd+qIVuljSksmlXMhfpvORES/PqdEXE+obRVHEYvshZ2bg3QyXfDsRzGFrYpC0+HpjcAdfkIIHP8NM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=er+ofbeo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/5] net/sched: taprio: don't
 overwrite "sch" variable in taprio_dump_class_stats()
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

On Tue, May 30, 2023 at 02:14:17PM -0700, Vinicius Costa Gomes wrote:
> But I have a suggestion, this "taprio_queue_get() ->
> dev_queue->qdisc_sleeping()" dance should have the same result as
> calling 'taprio_leaf()'.
> 
> I am thinking of using taprio_leaf() here and in taprio_dump_class().
> Could be a separate commit.

Got it, you want to consolidate the dev_queue->qdisc_sleeping pattern.
Since taprio_dump_class() could benefit from the consolidation too, they
could really be both converted separately. Or I could also handle that
in this patch set, if I need to resend it.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
