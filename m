Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 389A772A1B6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 19:56:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB937842B8;
	Fri,  9 Jun 2023 17:56:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB937842B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686333401;
	bh=rh66silFfHE/qGMmucSSyQM0wp/Jyzvd6f3ts70Yn5g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Dqb7b/WptYez50ndsSy555Ha4lmjXN+Y996OoslLDDKmCLVipQKZ7AvrSol5XC0iv
	 mwgR/afM3KI5jHWtYfr4jXnXqO+RpbStf47pDKD/WHB0sn0ex2gEV0+1rR3IJla9Q8
	 OB92upPZmniOiyYh7mipBxHIEa/kAdzyE2QT2AqxSPFp9cJ320SZmnwYq73AqQlqif
	 oHG78vNh1uZBguOiXMTqf4nNJouVVPfC3Mww9KQ4dCLI5UNIMoStt57zzuyC2FI2Av
	 3cP048/n7G0ZlV35W07thD1AillJH8TbD2e239j+vTJDcjJLLl0cdifuMXtwI3E/ip
	 qdcFgCr1vxgnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aA-TRS1bTN0R; Fri,  9 Jun 2023 17:56:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BC03841FB;
	Fri,  9 Jun 2023 17:56:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BC03841FB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 481BE1BF37B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 17:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 11FE3841FB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 17:56:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11FE3841FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DVDFR7tLAoFG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 17:56:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BCAA841C1
Received: from EUR02-AM0-obe.outbound.protection.outlook.com
 (mail-am0eur02on2067.outbound.protection.outlook.com [40.107.247.67])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BCAA841C1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 17:56:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E9rmT8oBThZujBNBZLyB/oLSJVV23c4VIRHDhxPCfWPVdnAdcG2JC18zaPBp91hFdcUXoIogwDvOySr9dxiYA9mS5frg7fcfNPOOBama40ykbuKFixav2SBikESKnC6wq1wRIyJtqp6U5f+N7OWiogCEmt8L0uSnvvBhVXTE4dHdqsDUc0k1GbBsRftFYsV+COg8QsGapCAxfVhWLEFa1yJi9MkywnQVZVU6J389ZbdGDuTGKI2QGBM1hhJVVew7n4NDObfZUophb3qxxl7za8jErp5BiGeXTSWgwTpGsSXUEJl9x7ZitIFVWXle7MdNhnJz0Lqzy6gCKTjPPmTzAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aO+jXWPh7p1L91lGUjgBNeiLl7E2NA4OJUCosBLPgH0=;
 b=mM+cS4rp1zOHZsPYfgVN5/q05ZKItT6wIBAMdVfBHA+ZBPXBWCazS8/jVGUQeWWprvBw/amuHWQUpX/AOZ5QMJq+ovbjVTV4R4YkeHjKYQHsZy1oXT3UYsLY5OHUDrKNfWJsdlvY809DRpRjxzec3BICz1SzOZCwfNZpWKvMPayfadzFrgP8KJYJyjbKkWlE3a/xEmOVtfkMJtGnVXQ+dO9JKmXh8zLHEAUMV41SGhqlodxkSiAexecbXmFOLf4cu0tNSiGgDkkXX3o9luwdVk4gWrZOmpOg6YYsDB9FJ5DKP0vW32ZEUJsAD6Rbv1wlbk7uW9PpHDjNFu4R5eWszA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by PA4PR04MB7629.eurprd04.prod.outlook.com (2603:10a6:102:f2::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Fri, 9 Jun
 2023 17:56:30 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%4]) with mapi id 15.20.6455.030; Fri, 9 Jun 2023
 17:56:28 +0000
Date: Fri, 9 Jun 2023 20:56:25 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Jamal Hadi Salim <jhs@mojatatu.com>
Message-ID: <20230609175625.444p6q33xq5dmwfw@skbuf>
References: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
 <20230602103750.2290132-6-vladimir.oltean@nxp.com>
 <CAM0EoM=P9+wNnNQ=ky96rwCx1z20fR21EWEdx+Na39NCqqG=3A@mail.gmail.com>
 <20230609121043.ekfvbgjiko7644t7@skbuf>
 <CAM0EoMmkSZCePo1Y49iMk=9oYKR8xfVDncWF0E4xRhp2ER2PRQ@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAM0EoMmkSZCePo1Y49iMk=9oYKR8xfVDncWF0E4xRhp2ER2PRQ@mail.gmail.com>
X-ClientProxiedBy: VI1PR0202CA0030.eurprd02.prod.outlook.com
 (2603:10a6:803:14::43) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|PA4PR04MB7629:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ca01f21-3757-435a-cd88-08db6912d9a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +YtfU0wOqf/QAfmJDAQHTYEm13cueIpCQiGQUyWOouYQW83pMRovXQ0WgwQSAqBvuk8QIpJ79p6WHJqTFghRdGyHJTKaGYzLiU/gtiNxxMNj4rC88Lnq/J0ql8mDNx4fmtP/s/meTDvysQf6cVrl6LQAMbjGT7k5+8qaJ9+hA5dHUsgKV2U6bpeWIRJTO6lmblU57KMn8yqxsJ4RDTRKaaB2xQtQrOE8NIbRbk48IgIUAm2iD5GXCL60Ld/J4nQqGCMgCFMUErg978CxKisnVJkpliSWo7qDSspL0NKwzb4tGnE1FM/sVSTkmFU0u3q+Ms6i7BRbmStwerTLuS0Rbl/HXMVhZ1K0Wyv1baSWfIAZllUkUdKDnKZoe9cZ1DN/HwLxHByXFbEOOJrRRvNguKn+BSEFktwNVK4/Z6DAL+DDuI2CFoqDx2sM5geqOHF0TYpT5EOOrd+TsvqaTJSbepBoKms4yhHVKEWTgvg2UJUsV2uqs4i7xzMxDY+MQ7kzQBtXYeT175YIMrssZgOi//64jt8HiULwuR2VYf7DPm5kVuwZb5ijjT+1CJ0wYjsV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(346002)(136003)(396003)(39860400002)(376002)(366004)(451199021)(9686003)(26005)(6506007)(1076003)(6512007)(83380400001)(86362001)(38100700002)(186003)(33716001)(41300700001)(44832011)(54906003)(5660300002)(478600001)(66946007)(8936002)(4326008)(6916009)(2906002)(8676002)(316002)(6486002)(7416002)(66476007)(66556008)(6666004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GPFNndP7637i8a23tAX/l1VaM3WKs1xgNZiReIusfP2JyE9Mkubkh+HT2ph0?=
 =?us-ascii?Q?PiQyH4B80RGcQoedqH7oHYltJ2xkHyYwzLBruqXT4eGjd1e3ybS2Jrm0Cfjq?=
 =?us-ascii?Q?4TbUN5ZXpDSeJIXvd1z16IFCZP1mbep/kN6lxaJ1yOWBNm7CLRNPeheGgPHG?=
 =?us-ascii?Q?paPZufifabZBhGvgc1gyOjQdtdiR9f9kddJlspCEJXYwBS/jHIGz9Eb5Y2FQ?=
 =?us-ascii?Q?Qh3w2ZjTirH0NSq5Szpgm1NDU83ymVRKEhfnuAMU5TAQhUfALJqRmN7OByu6?=
 =?us-ascii?Q?MRMt0bhlbHvPXkuFgZUnoUO6uBjt+bhkTIWrC1ICnIw99PeyrldV0LPTjsBW?=
 =?us-ascii?Q?OwfuBYFPIG72xXo+mZZKj1aop+Uh2AaDiReNo933cfySHGSmhhW4p8p9/5ak?=
 =?us-ascii?Q?mzddsspDAgmTD5UNcu+n0brQTLrEMhgD+jLdCYaE6Xpl9Fm7F9nt5+bvEyYt?=
 =?us-ascii?Q?gfQLKxU9H7vlMVCUOiWTx3p6u5mnEKVf3Iz1kzAlqreH8iqLVsFfnIldSk3T?=
 =?us-ascii?Q?U1RyQ/SNf/P2P0O9cg70loLEOzn7qtNr8UVU/1G4frqjQ/RAOr4GmBxxFXtp?=
 =?us-ascii?Q?qyVMbZJ2joxIEx3eIyatXF1a4KXfwJ1Y9Szl2AAzktoLFhneoOPIgV9yvxcm?=
 =?us-ascii?Q?WtNdHrN9FljLAI5Nq6nxV0gWOCO7QM5Drc4WMsWT3WNL0NjrlAMwX9488Ila?=
 =?us-ascii?Q?2vj/GWWQKqbE/VPMKUXz1DVqdhERThHDaNKfpPN8Q3NMDt9iuDsd+EFQKAGO?=
 =?us-ascii?Q?SIHRldkGWl/ns0dvLYiynTofk8CNeb/ZEb/ky/dYR7c/csuGJRZAl9JydZtm?=
 =?us-ascii?Q?CKqxWAcIYvUsepQy11RAMuvy6gpROepv429vTn5iCaQ281MabmKNQHmJ56OR?=
 =?us-ascii?Q?EbbxSG1Gnfa4+e1Ub1NtMAL9/49vH66xB7n3EWAyi7+ZKNXhAi6kaLnRGeHM?=
 =?us-ascii?Q?cF3ej/OwNbUVkDION/SNHVFGy7raZ8ig3tLOGDKootnn3m+wdIS2tvkkvQHN?=
 =?us-ascii?Q?uez5lc6+WGaetylCBxEA+sMl16KSqQ1QXjRQ9UVMyqIXeQIvu6X0vJmUI+bc?=
 =?us-ascii?Q?6QZSp4ujcSpR6BoS1iK01PEne4XUNMooGA/6Nr4bz698/UgaropAEYtVy9Wh?=
 =?us-ascii?Q?r+XYM2afByrG8W3fiaXoI1eSUZo+cRyRV9xtCfGlYNeL5wOSDj5FcN5ULP0O?=
 =?us-ascii?Q?hZQ34y5rGgpl4GZQCoMxj2OVI/rus4q4wSwzXWGgl/bkPx3S9hRcgGMUC6Ff?=
 =?us-ascii?Q?vuZUWm+uSs4lvFjXV2psfCRbfP1xqgqIpLv56rZld686KlkPE2v0JV9Ikxju?=
 =?us-ascii?Q?YbOgrnV71yc7uzouBFMMj64txGeIliZTCck5XV0TDk77E2AmMmBWKVXtYP/i?=
 =?us-ascii?Q?aGmNePm8qE9smDX9n8SwHIBCzuclpp27E/dK2bqp28nEZH1py5a7f8o1P7pE?=
 =?us-ascii?Q?BnWkT5F3pbcYlrSsrQwmXEe6xOvVItMoenIOgslfNfC/7wbXIkPBoqqaJCsr?=
 =?us-ascii?Q?dSCNYRV6bo9MlTkCxELCmcI3+45MlpoUyT8xTc3GXytvAYmVpg4xL7DLWGWA?=
 =?us-ascii?Q?qsKumx+W4PptV8sWoyKCeLOMOe9nNpJb5AdZXjfoK8YTrjiu7y6pKR8W5AwS?=
 =?us-ascii?Q?Bw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ca01f21-3757-435a-cd88-08db6912d9a4
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2023 17:56:28.6247 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aMNtDY4NxUdFJGgSqpe6Y0L/GPYVKCOIR3xKPVa8jrFD7xteYzAtReP33HM+3fTKsqoOvh002AByj7dSonBnmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7629
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aO+jXWPh7p1L91lGUjgBNeiLl7E2NA4OJUCosBLPgH0=;
 b=H6HM9FlhpgWqFXn+eKxOmbMjGX99HUXTLeaAkhO1ZkMiw0hpGKOpzCjD4dh+pLtnZnAcyIVaMEYX7XXH4doquotwuXyklBi4u+wmsd6FTATrDZ3V9C0u1+y0xt6tQaoUkfjmi78l3fYSpRyxidFqUHFo7gdOuxQ5caMYFrB3nFI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=H6HM9Flh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND net-next 5/5] net/sched:
 taprio: dump class stats for the actual q->qdiscs[]
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

On Fri, Jun 09, 2023 at 12:19:12PM -0400, Jamal Hadi Salim wrote:
> So it seems to me it is a transient phase and that at some point the
> backlog will clear up and the sent stats will go up. Maybe just say so
> in your commit or show the final result after the packet is gone.

I will re-collect some stats where there is nothing backlogged.

> I have to admit, I dont know much about taprio - that's why i am
> asking all these leading questions. You spoke of gates etc and thats
> klingon to me; but iiuc there's some time sensitive stuff that needs
> to be sent out within a deadline.

If sch_taprio.c is klingon to you, you can just imagine how sch_api.c
reads to me :)

> Q: What should happen to skbs that are no longer valid?
> On the aging thing which you say is missing, shouldnt the hrtimer or
> schedule kick not be able to dequeue timestamped packets and just drop
> them?

I think the skbs being "valid" is an application-defined metric (except
in the txtime assist mode, where skbs do truly have a transmit deadline).
The user space could reasonably enqueue 100 packets at a time, fully
aware of the fact that the cycle length is 1 second and that there's
only room in one cycle to send one packet, thus it would take 100
seconds for all those packets to be dequeued and sent.

It could also be that this isn't the case.

I guess what could be auto-detected and warned about is when a cycle
passes (sort of like an RCU grace period), the backlog was non-zero,
the gates were open, but still, no skb was dequeued. After one cycle,
the schedule repeats itself identically. But then do what? why drop?
it's a system issue..
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
