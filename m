Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 015497181F4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 15:33:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D916381FF9;
	Wed, 31 May 2023 13:33:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D916381FF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685540003;
	bh=BbPxZxRfeF87g0su0+jHkRblLWYHw2OXcPf7BWo7Jrg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=x1aZ0n1XgXpqGZp3bYtbO+9+MDjywKgg2eqNgi3VAJ/0ROotbSAMHtTrwsz0F+TiP
	 sVEn/7I383sCn/1furSIKJaFu0VwA8x9uU1ku1ecWAZQ/E8x51QMee0nKoXwZeeeFU
	 33+xL31Zuf4HT1qZxrRQj4dLyVGSNFBWrU8D+iqCWQh5jKJKY0kH4rdTV8V+NjU4ZH
	 J2O91Cn1RaLXIuWXLLd/iqpGksQTnd1FaQ34GXjHfpD/siAyCTdoh/f2o+h7+pKe0f
	 QCo5m23bKKavsNpm6blbyfT6c4wgh2V0/hXu99eYWoYVHHiQddDJbPCzKScjBDqI3T
	 TFXjZ+c+CDjJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8I-GzmgOwAtL; Wed, 31 May 2023 13:33:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C003881FBB;
	Wed, 31 May 2023 13:33:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C003881FBB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 833AB1BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 13:33:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 523F560E03
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 13:33:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 523F560E03
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id izEhG9hBQKTZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 13:33:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5993860B48
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04on2048.outbound.protection.outlook.com [40.107.8.48])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5993860B48
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 13:33:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eAV7kPIU+pOAREyRLpKhj/I4mNUMQaa+oxtDQHud5Lgtg0k9pZCUpo0G7HYMz57ycncMGfzAX+YlrbcggUjNvVJb44iu+D8jN5pnBu7sTxXanxztD9Im2Pq7iRtm8Jg3i1VBXKFuYShTSGzyj12HoDl0E2hw+IvD2X6f4vH9duBSb39NHBHXBiZwBg+L2ymDyA7Sb/W9nkkP1eG91NRkGdWy+cBLum5MsCHZJ5tSJc6FujisIISg8XmGBSQCgCo+XR4ykLNSbZSn48jLWEuKeuRtuphbyhS3RcbDNz3+so5WuOl46mdyL37UYhRPJPwekAtBRcor9Pe79A2dcwWAaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X44B0+oaLCLoMFOifjPww2MgmC7i0QP2U7mKyJMvdPw=;
 b=d0qZ3371jUDMdExaj92l6dnI+90Bm09QtMnVQy+VJlp1Iw3Bh8TuBpoZ8uYq9cS1hjwtUNSX/MkgMdzfdfkFQFOhvuQqSDn5I1X01p4+tbCvJOurI95HELlUg5S/AXNceKj7xRuyk9zIk3lXsDdlOOwnHBD8yKBKbW9v+IFL7jR3aXfdpbYytkBCO5V6wJRAU2HklOUp1Y5XSAD6Ca9bneqoerDcLNo2j28u5mBPK8bfKq22G1zFXDjxm5oo9CVs5dpD4M4iwgNby+toy2iSE5Eof22tVhIgwBiiwmkyUOi3hAjYrvXgglDT6VqN5nMLaVyorI99PpXBqPrHEQY3XQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DBBPR04MB7498.eurprd04.prod.outlook.com (2603:10a6:10:20b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Wed, 31 May
 2023 13:33:12 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::47e4:eb1:e83c:fa4a]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::47e4:eb1:e83c:fa4a%4]) with mapi id 15.20.6455.020; Wed, 31 May 2023
 13:33:12 +0000
Date: Wed, 31 May 2023 16:33:07 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20230531133307.7oqrcujtqhw7olzj@skbuf>
References: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
 <20230530091948.1408477-4-vladimir.oltean@nxp.com>
 <87wn0ptota.fsf@intel.com>
Content-Disposition: inline
In-Reply-To: <87wn0ptota.fsf@intel.com>
X-ClientProxiedBy: VI1P194CA0047.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::36) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DBBPR04MB7498:EE_
X-MS-Office365-Filtering-Correlation-Id: dbb73503-82cf-47f8-0f73-08db61db947b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: k1X1yjkHopOWZhzGc+unsiGWK/WFfvKZJETBx4paMXQaKwG3ub3AcWDyTWlU9ASXDbVTcsGUS6BUCd340a3ysJsMTFljASRxTTjEwoIJ5rtqUUd2fLyA8Jy79jWqRFFTHeqn963Yqc3nwvzxtpKSdTEHujnP5s2yDWgAptjNvHt55Sy7b0+q5LqWzinDbdagaxOdmJxqHPPaTe2yr46wGCcaZaL0myArEyz8HhGEF0jiUXIKTicp1DOVkirDWNRyRgT0gLWNLbFHrW14F4nAAB5FEH2YOrotMJrYUYvDMZSihODQQerGq8HFI/S00U91zp32li4p5nRtVQ6efYKVUEslwxK3KZNze0cw2znG1O896a2acddk+lgbXeynGHNbapPWZpf/NJX6k1g/UqfSr3ex21LmfYg1aSlVWxoYNnYSSaTQLbeBCILLOaGVSG1s/hBOfpF235m2b1Zi0QBKnPJA0N1BwKcBLMc+JplOSxry1RIwbO8/HDpe4SHN/Z0AaIr6A7kCsJGJitaJdYMSZMlOhdKhHQdgV/KgrJovZOAFqar/TolNZf8N2IjWTz/q/glpCZJChjSOVvfBFkG3kbLNPVs9SXPVvadPkAX5h1A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(39860400002)(366004)(136003)(376002)(346002)(396003)(451199021)(26005)(1076003)(38100700002)(41300700001)(6486002)(6666004)(186003)(6512007)(9686003)(6506007)(478600001)(54906003)(6916009)(66946007)(66556008)(4326008)(66476007)(316002)(5660300002)(8676002)(8936002)(7406005)(44832011)(7416002)(33716001)(2906002)(4744005)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CTON53mXeU59Jteqi9QgeawZsYCO7NZQZNR7VhjENjrjABBe6gUHxxFZwOX9?=
 =?us-ascii?Q?ncaXSlOG0SKALEyPAFNhRk/tEv5uLNdrv4wPSp2eH3wSjFRTuhBU9gEPbqL3?=
 =?us-ascii?Q?ab00MprnyB8v7EzJRJZaDxN7AntY/+1ETVHcIiS1jOPN8pQ7FTKyqMmTmcXM?=
 =?us-ascii?Q?6vMn3gRDTjV9vESFidYBpeCXoxIEsuZ57bh0oqJUmpGO4XdB6D5Hb61BbZzD?=
 =?us-ascii?Q?CiB6hoU8u1XeSbtCf25ZAxbfyZEtFDRfjKU5wjLfadwIqadyyNLFgUYtGVg8?=
 =?us-ascii?Q?laP6yYx/4eEPNT1ukfrq33Rx8uBcOQNUBuziiKsE5Io6rGD2O8b5J8rReUFl?=
 =?us-ascii?Q?u/0eCP3T661SHI3dyjXToKPo5FcBmL9bdJ1NYrYsmD6FRK7zJZ5kJZzlTI4r?=
 =?us-ascii?Q?sOiofpme0CJAVhLHENrRHQ+Gc9uaW0a2SMytQkRDmwBefZoeriRG+pJTzppl?=
 =?us-ascii?Q?6EDVuOCYcyUnNGZlXJzW+rGj8Y70KZ1NL9BYvfj1cCrXcw884/cMgpCM/kT3?=
 =?us-ascii?Q?IbjkJzmHYRlr+sqjT7C0EgMeCU6/hC0ngvPMvOfhTzGr5pLyaUsPCAIbRZ2z?=
 =?us-ascii?Q?re3kBJI1PetbvFpmuD/p7C69x2qez2ez9mioawWuW7J8rOJUTywoFGWiJDFL?=
 =?us-ascii?Q?pJ9FYcmK3iH5PcsIPvq4avTe9YGtoB3PkB9/kTRNONyfPY04SOh8pr3jqa73?=
 =?us-ascii?Q?SWXXeqNqCUdCoK3a88nY10ozUgI0S0FlxbsYZPZ4+a0N93pQfb7pL9AsEJoq?=
 =?us-ascii?Q?mAeGxPTXRj6UtoowYxRzgPoGB7w8ZaYMtuvZYVjYXeVbG1VS2Uy/aDw8QmCk?=
 =?us-ascii?Q?5EOCHHSL/wYUXFk4Eul9CRBApk+P224YhYBt2jD/eBpQk9VJEt54d2fhxM4w?=
 =?us-ascii?Q?m7uR3srP5RzflDtZAV6tHzf7t4/T5pf3A88KKPN4SVT6qadYJFkwuLv9jkhV?=
 =?us-ascii?Q?Hu8KHgaOFbcfws9KsGLOEwY72R5VTgyadViBFuce4qiqwlxsXar2U8y7Tu7F?=
 =?us-ascii?Q?I0aTn1EkQ0lYQruFefFLAbIlqqKZ3fHXxe8ygJpGlSeSReYbrisS9JtKaIFA?=
 =?us-ascii?Q?OFVJKz0t7U4jXe1H+lSbifYji2Pfvp5hxKumm28C/sCX7uMjziUHBNzY8U0U?=
 =?us-ascii?Q?J6+GBvi+k+pt8ACjNYIgRWER/+CshN4Ore5NU3vCMKF/B+4o48OgoiVQcQrF?=
 =?us-ascii?Q?cRhIuicrJU86CBVyNClFx5bzxcLmVgkb9TyKIVFYR5rl+21YTS9tMaWeeQj3?=
 =?us-ascii?Q?1/uk2ZnvAApLXEQuQxt8xVQhEO5Bx2b1NQa3KF1MhNPhcB2oY1iEib1lGYWP?=
 =?us-ascii?Q?HqbNWUTf2xoEm5ImCxiMB08ooHOZE1AGkCpxXUBN0Igec3c7rmw6QmxA0C3Z?=
 =?us-ascii?Q?nqZIFoDUumS32fgvuu3/Mcy8TovFiD2HpBGj7kJgFFG/AI52BGchEm+PT1II?=
 =?us-ascii?Q?6Gsk8fQjHTPgJ/yaIGoIMhp+6VVTro6XywiJt5uRbTbimqYcRb54VnpGfiP/?=
 =?us-ascii?Q?RVXRFgb3O0kcCddzyRpZ/8UfiYG/LHumsvoLJBH7ESmLbAb74i6qQZRu7a9A?=
 =?us-ascii?Q?NDsVs/QW28Kozp2zngWvIqcT7dDrokmtP+TzLbvweD6MYvKrAjOpLcJ2JLeX?=
 =?us-ascii?Q?Xw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbb73503-82cf-47f8-0f73-08db61db947b
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2023 13:33:12.3233 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FyrMwy6MEUK2G9UQJ7xyfLxp382KJFCZcFJF6O299fJUw+7a93bFF6dMgnjZ8ZPs/QzU5A1EAFGlcdy0ZUL0hQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7498
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X44B0+oaLCLoMFOifjPww2MgmC7i0QP2U7mKyJMvdPw=;
 b=D++5wz14HZTAvbnLNK4Lz2h5qFlWAV+sIPVJXhmxNF4vdSNNASl2gRInphiDHhUDlGjtHWNd+L5on/nyKCrnupfeax74dAIISNUsz6QC2pDm2MJ1/qAmVPdidqxKZcUyyqJQt+O9pj2KzI/m+AEfPp7uB6xiGsiZNRsK+/AgcOQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=D++5wz14
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/5] net/sched: taprio: add
 netlink reporting for offload statistics counters
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

On Tue, May 30, 2023 at 03:52:17PM -0700, Vinicius Costa Gomes wrote:
> > +	memset(stats, 0xff, sizeof(*stats));
> 
> The only part that I didn't like, at first, was this, that the
> initialization of the offload struct is divided into two parts: one to
> set the command/tc, and one to set the "invalid/not set" value to all
> stats fields.
> 
> I was thinking of adding a macro to do initialization of the stats
> fields, but it has a problem that it won't complain when a new field is
> added. Your solution should always work. I don't have better
> suggestions.

Right, it's no coincidence that it's where it is and the way it is.
Again, I drew inspiration from stats_prepare_data() in ethtool.

> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Thanks for the review.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
