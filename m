Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B53E724856
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 17:56:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C97661293;
	Tue,  6 Jun 2023 15:56:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C97661293
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686066983;
	bh=Ec19nGbkYD+KxLMTBDr1key1FX9u+BFRjiGQj+jnhQw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ReX7n4ZVJS64mrUjm6gY2rc4t6erzXLcKJLQsWhiwqrbfmfPy9HCx3azZvihLgN2Q
	 gkNaBrmtCosBiJB2JOFu79Icjx7fqzbOydGF96DooPfjrivic9myjXkV46yiaSsFGW
	 Oc8N8Kb1jauABgvTXU5E4WpOUPAexWyv2lh/V1h+OKj8D11ROkGr0azMIbpu+Jh1JT
	 lKj/FWEyAoUKSSx7lr2WrxwYyfPzgiZbmJRgma74wc9gbJ6iYk6aoL3ieF/PyVe/I8
	 dNt3hQOeM61flfF6vimvNQS2fEXDnNg0SnwW+AobX1//em0k7OSUEiD28SBhkfnMw0
	 aZlF0hIu5jayg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m7_ejDdUhWHr; Tue,  6 Jun 2023 15:56:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95C7B6128A;
	Tue,  6 Jun 2023 15:56:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95C7B6128A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C190D1BF36B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 15:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9184F418E3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 15:56:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9184F418E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tIdmaoxxFjfc for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 15:56:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 105CB418D6
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
 (mail-dbaeur03on2053.outbound.protection.outlook.com [40.107.104.53])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 105CB418D6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 15:56:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mqzMzdF0CcvWJm5OBReAoA7x5+W1Fdh0X2TSWsU/UvHVRRqN2fzquscE8MZpM4samZvSCl658K/rD9DZeSgpF3xZUmODbwWXj/d9D5C3mRaXqrZ2gpM0917faJfSueHMVjOoNGCUafJRE4kX0pzNw1lwhflmPoWeC/R5o8G7MTkZVO6ylsPOnuOECgO8J7A6tgPwfd0hrdSMVYUC5rkQiDQs/cvX84AEZHFy1YBpOmgL/eClNailkA93f7WC3UvAw0bJ/3O7yCgzzXxnEdVuOkM9SE/YXQNRcOZB8ezFm3BF8lPhKzLFVjrwiyzyY5txMniuunIVoheDj4nwfdKLEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=StPWFbvQRCC58TB134SLDh42/K5iPmHHW8Uo1f5WOIk=;
 b=kd01yazIPoBjgRcoZsMscsg7tY7WNqZyYCIbrj7wGrF/H7o9u23A1K9eWLRx+lmbjScJL3bD5u5qV/f9t1Ss3e7NWQU0SHWtwWC2F82CWoYXkgT+uqvkHX7vlzQR1Ah8P7DGZOmxvwY2yOu2afp2zZTD1C0WM8LTFdrrJv9n6KQUQhtbZugCvEmoqAK+UerP2PeBlO6AlHOJsDeMdtureJ6kKCB+2Vew7H2Ed+KDu+4vvoqPB7+EBvbujtPF1P4uvxWZcDZq8j8qUxAPH4YG9zFON4Bd9nKXs8c/L1Am962i4OOkPfxsxTkvpfcrUnT6sr7oko/X7JCwEhkysbx7Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from DB8PR04MB6459.eurprd04.prod.outlook.com (2603:10a6:10:103::19)
 by PAXPR04MB9400.eurprd04.prod.outlook.com (2603:10a6:102:2b2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Tue, 6 Jun
 2023 15:56:10 +0000
Received: from DB8PR04MB6459.eurprd04.prod.outlook.com
 ([fe80::5ca3:2022:337:7c40]) by DB8PR04MB6459.eurprd04.prod.outlook.com
 ([fe80::5ca3:2022:337:7c40%7]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 15:56:10 +0000
Date: Tue, 6 Jun 2023 18:56:05 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20230606155605.so7xpob6zbuugnwv@skbuf>
References: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
 <20230602103750.2290132-3-vladimir.oltean@nxp.com>
 <6bce1c55e1cd4295a3f36cb4b37398d951ead07b.camel@redhat.com>
Content-Disposition: inline
In-Reply-To: <6bce1c55e1cd4295a3f36cb4b37398d951ead07b.camel@redhat.com>
X-ClientProxiedBy: FR2P281CA0151.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::14) To DB8PR04MB6459.eurprd04.prod.outlook.com
 (2603:10a6:10:103::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB8PR04MB6459:EE_|PAXPR04MB9400:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f1b6329-da10-4e72-bf7e-08db66a68bc9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 94aKkGAadypOI/EWTUNw0LZpo3ZQq4eyLbs+LO4vbDMkZWDOCMLO6YNR1k2pjftHlLkoJmpMINwjkI7gt0LXd+fdMwX64cKuNXLzWrcGrVLBJy5WpsdZIN3IYRLi0wbHTz0q5xeAVMnYoxIa/2yuZz6+iaCroVpEXqsaMwAR5rUnlgZtU2xZJgdZb82rra+E5CchJBtDlvzXzqLmBJGmPSHQFoJbxhuMpdwLsfEf9eZSXTtHTpGRaQ9lrgiQ204Hvg27r12SfDRf2/Sl8uMvp1ecO7dqxWkfwq9r7f2v5tnuPZ4btY2Z3iFg8XFEhw6c0bw0vpWPSgHRybFvWBTPhLUh6g56LwYzGPL+lU3ZwBzMJyx0apHQNM+swrCrGTAWCHZsJMHB6TV/9rxnm2FfEB0JfoDRE1VgANgKAUCmpv6XRuATOAetEcvrRMlk6rQ0bHdFMIRu89t0xIL969NIjs+9lY2AaR6L4QYeoQkuKl5K7TagqttgoqF7SM8MHHVF2NdTIKCLvs8kG0M3GjfXjgXfv8W7Fr2a4WhJImdVGl6lz3ewOSK77xk/ZVlExDyS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6459.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(376002)(39860400002)(396003)(136003)(346002)(366004)(451199021)(2906002)(83380400001)(86362001)(33716001)(38100700002)(6486002)(41300700001)(6666004)(5660300002)(316002)(8936002)(8676002)(54906003)(478600001)(66556008)(66946007)(66476007)(4326008)(6512007)(9686003)(6506007)(6916009)(1076003)(26005)(186003)(7416002)(44832011);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GYb0ScFWStHPdnzEP+xBfuDX57Kh1leo+Db38NdDP7nnIuYHRk9HZdHGPC/h?=
 =?us-ascii?Q?wwlpoGZrDfRwoz8+t1Jz51h1tctTen37HUtfhni8yyEbBdRl+f0sK77qV1pl?=
 =?us-ascii?Q?mQrUCsAW06cFRWA9nuqLGhsT2B99P0z/JW36pAgbJULBeceizI7s+p4ZGt1O?=
 =?us-ascii?Q?n/AaU5X2SD+qT/4jmH5+gPorLxbav8+lju8VZATi/P0BzLHdLyN3CYNAEc23?=
 =?us-ascii?Q?EcJ7yCvj4U5s9ioqfsFN0KDC+eGvFDNlLoEqc4K7WXlQCuagnxD2AnHvtQ08?=
 =?us-ascii?Q?anq6FCveXr5xp8GKrUH7Iar/yX8c8Rj7LDBrMCYrDAnhOyyjY7Qr0SN6V9y+?=
 =?us-ascii?Q?ffwMhJNup3iDWzGU86UDdiL+1lPdNySAld2MUFq4Y8jS6cvY7Tfblv8iKPqj?=
 =?us-ascii?Q?T4/QDFjhVQpAb+Pm9x4u1Fkx3KGKZ6RlrNh6zlF7+VR15uUbXueCzM+L0izD?=
 =?us-ascii?Q?TFtMJxuNkTpmpp3v6/4Dwi2eUyJJFQ2yuOPqxlY3HZNPhl8F3ZPWJIyWEhJX?=
 =?us-ascii?Q?d89K5MgE+8BD+hcG+jC3HDcPfjqeuot7uTmKjC2jcjF8jnSB2Ec/qJudp5H/?=
 =?us-ascii?Q?TDx9SOfAcT+r9PuDlnkft6FYYhpGT2e0xsYrh27+W7FFxDR2BzEaFtIyp44l?=
 =?us-ascii?Q?8jzDQCduGs8yDXZ0Z2Ybk0dIejnPpbX7YK18wql9YTvVS56MS3R+NAbxlpTH?=
 =?us-ascii?Q?79JKxMu+9is3vAEHHNtuuD3HrQPMYq5Dp/tk0+aLyJ/HeesTbIYgxMvzky2L?=
 =?us-ascii?Q?A2Ai8xUPHieqgL7RkyO/PzentchoH0O3IA1FRfvkm/jqnKlxkr7PpYxephhY?=
 =?us-ascii?Q?KQdhmWslphg1pIsoE78qKI20Mr2J26OlycAMlUafPK6Hh68LtObEwqBG8gW4?=
 =?us-ascii?Q?IYrXG4gm2XIGV9felMbi++OEq7P6DuwBLPc8UBhtn9TOZ8lZT+BftIUgvebw?=
 =?us-ascii?Q?8FIXyKf1umIjzgNEE6ch+nOPgfIVj7MACZKY5cI3n0hhkINX/kYJSEV6op/U?=
 =?us-ascii?Q?G3jyWyxcY/DmAE2iYp3h7UWc1NCV5oSNtv5jJvdZQDmafz/6VB9H/nEzsDKb?=
 =?us-ascii?Q?Y7TxYesMGD6CnfNJ9NWoYeC9PoNEA2LxU6zg8ZaH+HZzNEVcCmEktomiaNtm?=
 =?us-ascii?Q?2eM0BUktUnGKuVPGLsBHhmrVL9NB0nEv3Fqe+UM32ZsBAHsn9Igo1zZg5FiM?=
 =?us-ascii?Q?cTF/+LrI2ABFIN5usU0U/knAPItQeylQ3L6ttZ9vWtcfi3VIK0F3ELN+N8bM?=
 =?us-ascii?Q?Hs23c6SLdaGxDU18JKh7G9WE93FyUdc0zHav9hZAn+f/BMFuxo8CH3f7jtjx?=
 =?us-ascii?Q?3aeyTxbWaHnT0wLtHc61U4jwr0cfJryihKEN05GLqlZP62GqGCcLkrCZdoVD?=
 =?us-ascii?Q?l91yTtokM63dUdKdrzgXd0Ck77jLrS9HKQ5yB7yOxOWiAVu5U5KKdHAAoqtr?=
 =?us-ascii?Q?3WXK/Ivr8kztDFknYuXrRLZYoGsLg5akb9r8vqOES5ph5mnfO9d7IYk+jPkm?=
 =?us-ascii?Q?gq+bTlsTiY/rI47wr/Ku0yoTD1YEPrzf92vgMjsTj/XX5wQKBkwzj592nFtY?=
 =?us-ascii?Q?nvIytitiJsw4o4zLBUBeshxEtb02B/GYpoXc73dhLHxcWE+QrWBL9/CUSdSq?=
 =?us-ascii?Q?qQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f1b6329-da10-4e72-bf7e-08db66a68bc9
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2023 15:56:10.0627 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ss8XIYG4PIBnWs3Z+OVn5mrNmktB00k7wNZJNmqU8rYuUm2WtrhIz6VlwGC7C7CTHcumfWB6o/uhV2vtpjHNfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9400
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=StPWFbvQRCC58TB134SLDh42/K5iPmHHW8Uo1f5WOIk=;
 b=SntJ7B33+zy9Yg6wcznXR+o096WbL/y6X6ZsAmUF7rCDJhVyGpgmmIN30HnsAFp5sAQBQ43Ae2jbgIVk8U/mwFiIKXhBjTQs17UvcPGB4M5wRSdY7+O9XB3BtCwH5DH5okRJMVeNmAzukIYPP9QY5MxdrK+/reRg5cRRXG3R8xA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=SntJ7B33
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND net-next 2/5] net/sched:
 taprio: keep child Qdisc refcount elevated at 2 in offload mode
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
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Peilin Ye <yepeilin.cs@gmail.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 06, 2023 at 12:27:09PM +0200, Paolo Abeni wrote:
> On Fri, 2023-06-02 at 13:37 +0300, Vladimir Oltean wrote:
> > The taprio qdisc currently lives in the following equilibrium.
> > 
> > In the software scheduling case, taprio attaches itself to all TXQs,
> > thus having a refcount of 1 + the number of TX queues. In this mode,
> > q->qdiscs[] is not visible directly to the Qdisc API. The lifetime of
> > the Qdiscs from this private array lasts until qdisc_destroy() ->
> > taprio_destroy().
> > 
> > In the fully offloaded case, the root taprio has a refcount of 1, and
> > all child q->qdiscs[] also have a refcount of 1. The child q->qdiscs[]
> > are visible to the Qdisc API (they are attached to the netdev TXQs
> > directly), however taprio loses a reference to them very early - during
> > qdisc_graft(parent==NULL) -> taprio_attach(). At that time, taprio frees
> > the q->qdiscs[] array to not leak memory, but interestingly, it does not
> > release a reference on these qdiscs because it doesn't effectively own
> > them - they are created by taprio but owned by the Qdisc core, and will
> > be freed by qdisc_graft(parent==NULL, new==NULL) -> qdisc_put(old) when
> > the Qdisc is deleted or when the child Qdisc is replaced with something
> > else.
> > 
> > My interest is to change this equilibrium such that taprio also owns a
> > reference on the q->qdiscs[] child Qdiscs for the lifetime of the root
> > Qdisc, including in full offload mode. I want this because I would like
> > taprio_leaf(), taprio_dump_class(), taprio_dump_class_stats() to have
> > insight into q->qdiscs[] for the software scheduling mode - currently
> > they look at dev_queue->qdisc_sleeping, which is, as mentioned, the same
> > as the root taprio.
> > 
> > The following set of changes is necessary:
> > - don't free q->qdiscs[] early in taprio_attach(), free it late in
> >   taprio_destroy() for consistency with software mode. But:
> > - currently that's not possible, because taprio doesn't own a reference
> >   on q->qdiscs[]. So hold that reference - once during the initial
> >   attach() and once during subsequent graft() calls when the child is
> >   changed.
> > - always keep track of the current child in q->qdiscs[], even for full
> >   offload mode, so that we free in taprio_destroy() what we should, and
> >   not something stale.
> > 
> > Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> > ---
> >  net/sched/sch_taprio.c | 28 +++++++++++++++++-----------
> >  1 file changed, 17 insertions(+), 11 deletions(-)
> > 
> > diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
> > index b1c611c72aa4..8807fc915b79 100644
> > --- a/net/sched/sch_taprio.c
> > +++ b/net/sched/sch_taprio.c
> > @@ -2138,23 +2138,20 @@ static void taprio_attach(struct Qdisc *sch)
> >  
> >  			qdisc->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;
> >  			old = dev_graft_qdisc(dev_queue, qdisc);
> > +			/* Keep refcount of q->qdiscs[ntx] at 2 */
> > +			qdisc_refcount_inc(qdisc);
> >  		} else {
> >  			/* In software mode, attach the root taprio qdisc
> >  			 * to all netdev TX queues, so that dev_qdisc_enqueue()
> >  			 * goes through taprio_enqueue().
> >  			 */
> >  			old = dev_graft_qdisc(dev_queue, sch);
> > +			/* Keep root refcount at 1 + num_tx_queues */
> >  			qdisc_refcount_inc(sch);
> >  		}
> >  		if (old)
> >  			qdisc_put(old);
> >  	}
> > -
> > -	/* access to the child qdiscs is not needed in offload mode */
> > -	if (FULL_OFFLOAD_IS_ENABLED(q->flags)) {
> > -		kfree(q->qdiscs);
> > -		q->qdiscs = NULL;
> > -	}
> >  }
> >  
> >  static struct netdev_queue *taprio_queue_get(struct Qdisc *sch,
> > @@ -2183,15 +2180,24 @@ static int taprio_graft(struct Qdisc *sch, unsigned long cl,
> >  	if (dev->flags & IFF_UP)
> >  		dev_deactivate(dev);
> >  
> > -	if (FULL_OFFLOAD_IS_ENABLED(q->flags)) {
> > +	/* In software mode, the root taprio qdisc is still the one attached to
> > +	 * all netdev TX queues, and hence responsible for taprio_enqueue() to
> > +	 * forward the skbs to the child qdiscs from the private q->qdiscs[]
> > +	 * array. So only attach the new qdisc to the netdev queue in offload
> > +	 * mode, where the enqueue must bypass taprio. However, save the
> > +	 * reference to the new qdisc in the private array in both cases, to
> > +	 * have an up-to-date reference to our children.
> > +	 */
> > +	if (FULL_OFFLOAD_IS_ENABLED(q->flags))
> >  		*old = dev_graft_qdisc(dev_queue, new);
> > -	} else {
> > +	else
> >  		*old = q->qdiscs[cl - 1];
> > -		q->qdiscs[cl - 1] = new;
> > -	}
> >  
> > -	if (new)
> > +	q->qdiscs[cl - 1] = new;
> > +	if (new) {
> > +		qdisc_refcount_inc(new);
> >  		new->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;
> > +	}
> >  
> Isn't the above leaking a reference to old with something alike:
> 
> tc qdisc replace dev eth0 handle 8001: parent root stab overhead 24 taprio flags 0x2 #...
> 	# each q in q->qdiscs has refcnt == 2
> tc qdisc replace dev eth0 parent 8001:8 cbs #...
> 	# -> taprio_graft(..., cbs, ...)
> 	# cbs refcnt is 2
> 	# 'old' refcnt decreases by 1, refcount will not reach 0?!?
> 
> kmemleak should be able to see that.

You're right - in full offload mode, the refcount of "old" (pfifo, parent 8001:8)
does not drop to 0 after grafting something else to 8001:8.

I believe this other implementation should work in all cases.

static int taprio_graft(struct Qdisc *sch, unsigned long cl,
			struct Qdisc *new, struct Qdisc **old,
			struct netlink_ext_ack *extack)
{
	struct taprio_sched *q = qdisc_priv(sch);
	struct net_device *dev = qdisc_dev(sch);
	struct netdev_queue *dev_queue = taprio_queue_get(sch, cl);

	if (!dev_queue)
		return -EINVAL;

	if (dev->flags & IFF_UP)
		dev_deactivate(dev);

	/* In offload mode, the child Qdisc is directly attached to the netdev
	 * TX queue, and thus, we need to keep its refcount elevated in order
	 * to counteract qdisc_graft()'s call to qdisc_put() once per TX queue.
	 * However, save the reference to the new qdisc in the private array in
	 * both software and offload cases, to have an up-to-date reference to
	 * our children.
	 */
	if (FULL_OFFLOAD_IS_ENABLED(q->flags)) {
		*old = dev_graft_qdisc(dev_queue, new);
		if (new)
			qdisc_refcount_inc(new);
		if (*old)
			qdisc_put(*old);
	} else {
		*old = q->qdiscs[cl - 1];
	}

	q->qdiscs[cl - 1] = new;
	if (new)
		new->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;

	if (dev->flags & IFF_UP)
		dev_activate(dev);

	return 0;
}

> BTW, what about including your tests from the cover letter somewhere under tc-testing?

I don't know about that. Does it involve adding taprio hw offload to netdevsim,
so that both code paths are covered?

To be honest with you, I never ran tdc, and I worry about what I may find there,
unrelated to what I'm being asked to add (at a cursory glance I see overlapping
TXQs in taprio.json), and which has the possibility of turning this into a huge
time pit.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
