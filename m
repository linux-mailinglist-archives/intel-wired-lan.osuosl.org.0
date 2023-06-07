Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A84725B60
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 12:16:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DCE18229D;
	Wed,  7 Jun 2023 10:16:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DCE18229D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686132997;
	bh=aODIUR7edlRc3B9AfLzdJtdGG8XDC6Xp0gqBTUfKa28=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ho1TN6y6K+voD8nyS/6B8amD9ZzBJpCrkQ2wAecphkuJfLwL+i15Dlb8f5F95qVdp
	 eoWks3W6KD3tNJ7wbntnBohVBCkoVyvqIrh1MY853XbwoJVBOTo5hjbzfDfx7TmRd2
	 41mWXNp3nwJXcwcLAfhln42IZVBokjfZKmUixtmalvfTO6+1ChnH2h5/7gS6IGdyu0
	 aF0xt7FhHrbMo5OACOTkDJFisaS6IWg1MiwDnEQi8MIq7H0gYswqbhhqUsodtvEJOB
	 rsClwfaIK6sSKUXcWFelV1XOV9qSBlafdRUHnNxEUDOksi7zY0GAZU5NNg+Emscmd0
	 rTJtJmoCeXj1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E1dR0s9N8hac; Wed,  7 Jun 2023 10:16:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44A9182299;
	Wed,  7 Jun 2023 10:16:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44A9182299
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 26D781BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 10:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F10D460BF8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 10:16:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F10D460BF8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LXjgEN2ylPet for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 10:16:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8ED6460BDF
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04on2048.outbound.protection.outlook.com [40.107.7.48])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8ED6460BDF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 10:16:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a3uIh0GwaQFwDT4TtPIM+Fh+bNsmsWrLWNduViGnyDam9BymF2fc3JhxUdsaK5SrrsQFJVaziVb2gyJP2sAQUoqVLbdMXpJqJ4/zktSQ3SUl9ZVSt0QWq5lsKIAaiwDsJWhr8EACURLxU9Qo6Q7zt3vsZ5OrVO3kyC2tdJD2Q4JtGzjvW2ZWlO5cDtKI/sXJcCC1b4KREHc/5IV/zQNAhY3LAr7MaZ1yzAUURFnv/Ecdg99mgvtugHUC7JXHeWwOU+mGjpGBn/8uTYZtcDP06A9VZzfDzaO00IXRfcWDk+fIYduIanrSTqGhWnhAa2Q4ztpbUfkkolFACDjdXqO2hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RSb3PKzChW554Ch6ABdqJBFrMx5ecsPnPwVkgO+rYHs=;
 b=D1XPeHCcT+dnY0ImwYrUd09W0pOTB4pxppo6Kky0IV0TBOgBBN/1VHw3wNdDkSYg6xRdTrcPmuJC3WWX1FU6BHp+/DWRwevGogXF40rvhhUXma4BJ4hOFPPzoGXcHCKChAf4m/zDsAXlgA9atpR79YPejZ3jM0PFh7QeOMRtqpe8F8zk6wnaYJyxiK03knAewZCbmHjlC6UcEVsVChwQQrScV/omLglrWbuJs+4s2K3e+z2Pco1FOrVQS37JDbglQ5RIyUnb7sRpupgKyf1SRC8htLwLm+nT/xbqzOoGA1lpaZnjB1IRZXp+vJZQAyD1Gzqik7MkI399qXsLviQO8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DB9PR04MB8075.eurprd04.prod.outlook.com (2603:10a6:10:25d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.36; Wed, 7 Jun
 2023 10:16:25 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%4]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 10:16:25 +0000
Date: Wed, 7 Jun 2023 13:16:22 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20230607101622.bhrentqv2y4c5ewj@skbuf>
References: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
 <20230602103750.2290132-3-vladimir.oltean@nxp.com>
 <6bce1c55e1cd4295a3f36cb4b37398d951ead07b.camel@redhat.com>
 <20230606155605.so7xpob6zbuugnwv@skbuf>
 <c4707459ac2cb0b48cb9552e83ad4057ae5b9300.camel@redhat.com>
Content-Disposition: inline
In-Reply-To: <c4707459ac2cb0b48cb9552e83ad4057ae5b9300.camel@redhat.com>
X-ClientProxiedBy: FR3P281CA0010.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1d::9) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DB9PR04MB8075:EE_
X-MS-Office365-Filtering-Correlation-Id: 697d3234-6f47-472a-0b6f-08db67404040
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uWSKIJ7g6JWzQJk0Gu3r3fXq7eiJtVBeEVLaojKNknnMXbYilOCtUsnSau/n8BfUNGcw0Mdj1SfSHDk8naR+GXjYBJ1iy3Ihwj3gXXav1rlmSRp/hrdV/UxoZB1QalmkdkCGKyienoBVjatH9UK3LkCVv/kJsqPBSEfReolVbqINvEQWROLX9CwZoh2vKCuK+jdS8vnWqRn+URcnrR2QqraXPzzw8TFvs2EWB89ZzQX1SOo1DAbXVN2AYe/UnZzpyYjqENOrP0Zcz6dvhfAsxeCAhzCIZuXoWnx2wy8y8fiC+V6chKt31jhgbVPNU9Z9JfwAUsFiauiabxrfmBlmPTjeOrhgrNFFJtoJ+O0zjcC5Z3i1pnVLpdZGjDy6u10VA1z8VimWdxg7emcw14m0kemAdUxBG7y0Q6SjQ//YF3UXg5VRuaQCFhp3AEPg1XiaWEvIkAq57/vzHw04I6HbmhQKOrJjVLBCIZEAE2B34g7Ab6u6a8i/uu1QR1n2cbyNlccc0lNII/DJqFIZ4PFMXFOwjFvZa+oVT3lDLZs8DFA81xUSo5LAJju6MVd7ls+I
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(39860400002)(376002)(366004)(346002)(136003)(396003)(451199021)(6486002)(6666004)(2906002)(4744005)(66946007)(66476007)(66556008)(54906003)(38100700002)(5660300002)(7416002)(8936002)(86362001)(8676002)(44832011)(41300700001)(6916009)(4326008)(316002)(478600001)(26005)(9686003)(6512007)(6506007)(1076003)(186003)(33716001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vBePksbl2uPqg2suEQxqbk80kOTRR4o9QiwaVnYf2DB47hRHTBt6IQs8NuBk?=
 =?us-ascii?Q?Cc4xDpwR5OOI6hBFJCdBvL8v33oS1oPWmrfzCUgLmuXfjBIXuFCqlmRRKJ//?=
 =?us-ascii?Q?xnyGvSMLyo319C8KneXXFSJ4Uo4Yq8Xw1dNlqUBNUc6+0d7DDV9g7DMLXqnT?=
 =?us-ascii?Q?n/qu7lw/RsyIiyWxFbMf/1j+U5a5KxRjYtwWVLNbMZ8G7994HWtw0Za4B+KL?=
 =?us-ascii?Q?H8jR3ALbPx2Zvflqqp6RRwrqv9PuEeXlbttfoiL525/pJW5Wi1iigakXJt4A?=
 =?us-ascii?Q?5D6mTvghWs31X64M586/VIkE76S1NnrWyLqC3HIuxd+slnhjjedRVspQB6JW?=
 =?us-ascii?Q?O80G9pOi17ZR6iPFKIPqIK4xkFN6bkQsyMQ414La/KdRJtCjBjtsUHvOqynR?=
 =?us-ascii?Q?FoQFMZwn9n/gsqw2vvtd++otGlM9jvPZOSrwNSZymR/1ACOZtDlFK07KbTkO?=
 =?us-ascii?Q?dJk91yn44QX6qFjS/27kjKX7fVuO3PmJNXRpXQTacqZQBY6Fq6Bb2+5xR6IK?=
 =?us-ascii?Q?Ltkzou3U3hnucd2FgpZ8FjvGFJqk0g482yhfY1YEUJuvMxdsO5YZZfnoX4D6?=
 =?us-ascii?Q?VhP8KJMXsmNdFZmRhNG/mL9lQVMpa+np1salWrpn/tEeUnLTtxjzdach2HKI?=
 =?us-ascii?Q?y1wguJIbsshgD7LQWi5txgFK8IX4tlXJ5pj/qcm5wBkSCYVZmwBHnAeLvnk2?=
 =?us-ascii?Q?p7A/zt1E7eq7QMHZTSXlRVnGZH45HzWf5dqsKTnJ/6dVMqbeheFeMNPVLYhV?=
 =?us-ascii?Q?uNU8g67ya1FE/egIp9huCrU6l9KrDA0Qlg+ajdMk+BgrRDsDWllGOO4oZh4W?=
 =?us-ascii?Q?euu2ZDivwCBUKthSvc9b1fuYlEczMRDgH+3bUZW+RjfTcacMu1cUbYLD8Z/7?=
 =?us-ascii?Q?aFmQ8CmvGs4fU2pWGO64xJXi9as3B1FjM81RhtHZXk+8QijzopAxv9uJkoDp?=
 =?us-ascii?Q?7XwW4P4aw7lLWrtvOlkKWmH6fGke/OyJMhDUNy/6rc81oiMcFkDJyIDzVUdg?=
 =?us-ascii?Q?+3Gca6ELDfUgxSaf9bcL2pbYVaqnJvJiLU6oXj7XhnQhbAFx83yYgifqYn6A?=
 =?us-ascii?Q?55X87i4ygc5D1P88dUD1Fwqc6X7/QE+zJIhTbymzPrIUiKt2KbFmjmeWXdrz?=
 =?us-ascii?Q?qsdqLye1pBqJichxw/EQX4O4Dx+KNFRdOLzW/AMTHrKG2MJ5VjobnX4gxq2j?=
 =?us-ascii?Q?jbBGI8UXA+7UsAHDvfQhonJLuoosrzCMYZ0gZRLzutFzMSAKebhACahYfRM6?=
 =?us-ascii?Q?RKvf2aK49MqzTcvExrLlT3DpXYBteRkG/HVdYFRmcQsvRAm1Mva0X0HVjNYc?=
 =?us-ascii?Q?+hNllyAJzBRCQCk2DTwiF8jp9fexQyRFW5McGWUJPXW9K57Vu91iBVLWXbLf?=
 =?us-ascii?Q?bEbgyEJwMCArWfhTlPP0kLNGhEz8TLhJOQdGNK66E/s9zz03z/z8AxqvtNvy?=
 =?us-ascii?Q?P/T9HfpypKW6CMKePJNycGm0kxdbRbgb4D7oftQ7uQBTxSSJPLErvgHJIkRr?=
 =?us-ascii?Q?KGcLXRmzG+kUwQumGSzmYECscyneRuU5BGnA9pcFXkDA5zYZoES48UbXefBi?=
 =?us-ascii?Q?7D8ARW6PQFU2PuocQYNtjlQyBmtq5AW/HD4kqfAE+gUK3lLcSEUMVtmqlRZX?=
 =?us-ascii?Q?YA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 697d3234-6f47-472a-0b6f-08db67404040
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2023 10:16:25.8309 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J1y4tsb3a82b3cp8um0dgUUfWwU6mhP7jJaetCD1P6As3RRQ76a7iI/dsTPot0tkrV4nf/P7AE4U1NhY6czvIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8075
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RSb3PKzChW554Ch6ABdqJBFrMx5ecsPnPwVkgO+rYHs=;
 b=EZqgXttHyNXlRXIiwYqo9Xh2f6j+9kFvh8m0mJyVEOA9F5QsCo4lFMjs2LspIQepH8y5kYXeHPQCw1PVWqYaDKPngJxiRdYpYiERzdTFjIMEdDMQPuNR5weKNX5p2/3vIOvDzi1t5aNTPDw95E7ffkc0NOsmC4rLqyQhNTjhX2s=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=EZqgXttH
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

On Wed, Jun 07, 2023 at 12:05:19PM +0200, Paolo Abeni wrote:
> Perhaps the above chunk could be:
> 
> 	*old = q->qdiscs[cl - 1];
> 	if (FULL_OFFLOAD_IS_ENABLED(q->flags)) {
> 		WARN_ON_ONCE(dev_graft_qdisc(dev_queue, new) != *old);
> 		if (new)
> 			qdisc_refcount_inc(new);
> 		if (*old)
> 			qdisc_put(*old);
> 	}
> 
> (boldly assuming I'm not completely lost, which looks a wild bet ;)

Yeah, could be like that. In full offload mode, q->qdiscs[cl - 1] is
also what's grafted to the TXQ, so the WARN_ON() would be indicative of
a serious bug if it triggered.

> > > BTW, what about including your tests from the cover letter somewhere under tc-testing?
> > 
> > I don't know about that. Does it involve adding taprio hw offload to netdevsim,
> > so that both code paths are covered?
> 
> I guess I underlooked the needed effort and we could live without new
> tests here.

Let's see how the discussion progresses.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
