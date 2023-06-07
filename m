Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A1C725B4E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 12:09:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0CC481C6F;
	Wed,  7 Jun 2023 10:09:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0CC481C6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686132556;
	bh=dw3TDKXw37O2Hm9m5VFTcc+MsQjq+xAkQJ9Qx55Z76w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wcbEw1MdcQo9NSjb5LWM6Ezyhd+9OY1dss4Mvlmg75gaduKfZ4wgHtlujPDf1XWnB
	 fQEHvbnUnOimUkS3ZTSyaFGgKlY4KscyYvHR28GYCy6UYXX4K9vIZB1zaXFKqcXC/K
	 gqgxPEFFDZT2KNT2PwWIG83quQRdwdfI/1A8Bh+ls6oBn8DYugI9i6Z22lUHNioon6
	 +CTGSKsM7Q2Xs1TZXcgk+OJCVEJVMXW5/pky/Nt9Eo63hzR02+RkEm/usbTrAfceAF
	 FbgrWIXHUxwXfmc4AqeKlUcyIgcCqhAyGqeJNekltq4/62l/+FBTzNEOhWQ/NFzuB2
	 IxubHS2+yUSsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g0v6EvuMKDr0; Wed,  7 Jun 2023 10:09:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9723681B83;
	Wed,  7 Jun 2023 10:09:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9723681B83
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5DAE21BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 10:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4240A60BF8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 10:09:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4240A60BF8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G0bzvbsa7KXn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 10:09:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B0AC60BDF
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2067.outbound.protection.outlook.com [40.107.22.67])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4B0AC60BDF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 10:09:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RH2ouwgEsDchCPp/EB3hHv5qhqzh4Wg0NCKTyP5UoUsKB+15jDgwakyx1CUFWXKJcVfRF4cHcm7lz/N5tiUQgiW014CZJvauPMhqQbiflTDrjZIm070oKc3TbV22JjJbfHs0mPuhyXq02F3+mXvRV8+7kIL52LDEzJpzvb5Npy8XpLXETXVUmRHUoS1JLxLS5VtI1LRJuZ9eyhA1VIVZ91qKrdCw2saf+6NDi+Umw1b7COCPibVjph4T8TKfvesAk/WVcyEgRpVP2SghWtfljNNcNeJ/P9KNHzj+Q2VU72dIDsQX8bw6sRpp4XmefmG3iRYNS7zOzTx4Wqa1Hm/W7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SvqoDWocQ6qtUzWbPQv4oi+RzUCN0aUab5OyA80W2q8=;
 b=dFhmsVFHW5H7+yZIot8TMHesCkIM9z9WwJfV7SzVyFjc5vWewk8yaUiz0K/yAAygPZkyWHjwg4gfQntU6/gKSAf4SkpSLSobDJ9qde685BsV0LifQ/BPmUuvekgItIVfQU416hPZwVXh9Q/bbZvbbbMQ4akxFMKVWFteF+q7PVFycxMAsb0kHm/q+cU7cCfe827OsSwUXBhnTLBT8+9wXn2Q/wJXjaDhvq+IwJGjofJlh2bhvuvOkN8l4cdRHjSqY8DllXyinT1Lu3o+OL2Gb5epnAPvt+aarE5zYF827mmPGaFikpdGizzIqEW21w+Rg4qDtAybhzu/Q0Mu1VUb8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AS8PR04MB9173.eurprd04.prod.outlook.com (2603:10a6:20b:448::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Wed, 7 Jun
 2023 10:09:05 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%4]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 10:09:05 +0000
Date: Wed, 7 Jun 2023 13:09:01 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Jamal Hadi Salim <jhs@mojatatu.com>
Message-ID: <20230607100901.qpqdgv6nbvi3k6e2@skbuf>
References: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
 <CAM0EoMnqscw=OfWzyEKV10qFW5+EFMd5JWZxPSPCod3TvqpnuQ@mail.gmail.com>
 <20230605165353.tnjrwa7gbcp4qhim@skbuf>
 <CAM0EoM=qG9sDjM=F6D=i=h3dKXwQXAt1wui8W_EXDJi2tijRnw@mail.gmail.com>
 <20230606163156.7ee6uk7jevggmaba@skbuf>
 <CAM0EoM=3+qwj+C9MzDEULeYc3B=_N=vHyP_QDdhcrNsyaQQODw@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAM0EoM=3+qwj+C9MzDEULeYc3B=_N=vHyP_QDdhcrNsyaQQODw@mail.gmail.com>
X-ClientProxiedBy: FR2P281CA0093.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9b::18) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AS8PR04MB9173:EE_
X-MS-Office365-Filtering-Correlation-Id: bf4b17a8-dfd0-401c-a4c4-08db673f39af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hYjQ47TFpJc0EuCZJWFszJ66AEfOf6LaoDdfVn91BbXaxIWBMNgdP8RUlLQqWQqjt+Cd1cWxIs73bg+knMbz51a7/HxLLN668Ug4QKlu9HU8ePDXuzqj6d7RXAqZxSiFrFRLe875JhvgAZXhT2VC1VUweuqOd//0n0V8BUSJeFXIfO9G/xVPSCOtI7UTmzpnZial6ODNK0vFN0ADNhRc8dUxS3+rWGick620s1dmdZzz6EECfilcf7s90Tre7PdiFg865I9Q9WhJ7Lws7eCwXps+uRZ7Dog/pP31JAOs4Dl8Cfn2dHGTXL6FpekIj93VCHO1CUfU79eNUI5SBtsi+asJef0m0iCmJDaxFLeefB10RmKdWGPIx5y1+PiDBsN757tgyN+MpzHyb2Ivvf92HmYThEFnIXNuqb8wQCOO4vaRE8abuWuFYHLOxIcnJ5LbLdMloTrdt/TGiK5Es0uvOKdZppyqfxX5u115iGeJw3KBC2WI9BfgLptSr0W+GMm4+JeAPu75NiflJm2dt2KFWY6lijsxslUfq6yNorzWy2AyKownUQP2v1jZGW4V49pf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(376002)(136003)(366004)(39860400002)(396003)(346002)(451199021)(478600001)(38100700002)(4326008)(6916009)(66946007)(66556008)(54906003)(66476007)(8936002)(7416002)(44832011)(5660300002)(8676002)(86362001)(41300700001)(316002)(2906002)(83380400001)(6506007)(26005)(6512007)(1076003)(9686003)(33716001)(186003)(6486002)(6666004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PuTso/DNwVmWsegB6voWc5B6+v4VPHIqBdRPfsOSEs8mSDpNv6Ev7d7DI11P?=
 =?us-ascii?Q?+YdLR+a+BcVl0yW0arw2TOqRHiOli9JeMa3LgKX2pYIKL6w45E9AgzVA4YNs?=
 =?us-ascii?Q?zxKo0KLgRRZQMlu9L/fiwhT5cLQxaUY3VI3RgVAV2H4dzbcM6D0XeBlT1vn6?=
 =?us-ascii?Q?r47oUluSoQYNGBP/u3fzIJ+0r1H1STwm6L8wMqrW8IUWFl8x+jJLJcoOBX+O?=
 =?us-ascii?Q?GAapeJcPNA2VAr83FK4rpoSVZqaAqDfdIWdH8mJZoiHHbFioqXv+mbCfmV+S?=
 =?us-ascii?Q?19aZwrhrNbYiJwKSsiZPszeVr2gwW6K35ManHmraRk9zShpxByEhaPKka6Z8?=
 =?us-ascii?Q?4oTye2pUW/xTnwuAPPRGzx8EaLj4LUIW5aOPuGOzCkincL8ahzfwDI1n3XLS?=
 =?us-ascii?Q?ReHopCCm7AcXU8ME/nloXDmz0H5nMub1d8WVHuSUayAKSeFxzFbl88XwnsJb?=
 =?us-ascii?Q?uH3R7zf3mOWH5DPE6R/1d+2Dt+mMJagVg9112qP7IFs6+luzPQqxzxxG7+qK?=
 =?us-ascii?Q?Sl8US6hpi+ObgKsueB1KP/2p+dpsOJNbgHdya+cVeTDkl1VgblVCFnGhxn8u?=
 =?us-ascii?Q?SeRZk78ygDP3hEuMbwRpnzoyrLBwt/dxC8VhILayws4tvR3GdNZ0mbaNVY7E?=
 =?us-ascii?Q?IU75sn72hZMoT92KDn0kHT961ed2dLuYCm22GXmoGw0i+TEi6vQFvg0GosAI?=
 =?us-ascii?Q?KV+BYTdXITbbRSssjcj7vOnywHHRPyp6Q0bkU+UHW6p2cjD/Jl3yvDo2oI5W?=
 =?us-ascii?Q?Xp+JZYzJ+ELxK2fwOlAHP3iDELiB+HnBJhRI0scHVXlgtp/8EA8RFqyeuQR5?=
 =?us-ascii?Q?fBy+cPe3P037rNm5gHHH47WLyEGahfwujzcRrUp1PCqpPpBW9szBpJFAniqn?=
 =?us-ascii?Q?xR7mEtZN0Wky1iZTD+i9pwCYnvxEFmB/tt0jpTvOL42tAy/e6EuKgLEWl6rw?=
 =?us-ascii?Q?KnyswCgiuUsF3v3hSK8qRGvClUNoyFUEt5pnPTVOQKvbe5YbqZGg2UKfXuaB?=
 =?us-ascii?Q?T3aomyOptskWRaTd+yyiCARG03u/fUTbCwP7AU77Qw6nI0b53Aw1z4lf/jah?=
 =?us-ascii?Q?dXhRWmiCKDy7DD7AoJu8UhRn8PT27uRnLNV3Ob8BOEzAwmq8/ztPy6XItgtZ?=
 =?us-ascii?Q?u3F30rFJwnR/JNkwXpmcKswHkOxikp4PE8P3ezEVKy//AAudRKbw6tgBj3tN?=
 =?us-ascii?Q?hSk1WK5VJI55/Qy83fR2Q9b/GgWCYfZowBpOatEN+Q26sjLXFcZ2zLRQQ3AH?=
 =?us-ascii?Q?HwxMtIrHP+t5tNIaOSmmk6+CxtyrVv12gHZn3pY8MvvGFGkIBdU07xjlb60o?=
 =?us-ascii?Q?57A31nDsN213l+qsduqhebFlF/lGMeQIygcEaTcsvoOaFjMNAJDqBizB4Qjq?=
 =?us-ascii?Q?Gq3Hph4jmyJ8m1QFYNkDfwmhT242ZJVbmehKE+YrXWTknDN+lczTOOW7mLqK?=
 =?us-ascii?Q?qFVH7JjpwNJG7LWYgmXimVsUaxXT19Iny/ugym+gBMLjH6fFICqyuEBKGzSm?=
 =?us-ascii?Q?jRKF18B1QAqmpJ4TysiBw9cJOvtcjnsfew67P+nxOy+hpadbrn7IltnIWxaB?=
 =?us-ascii?Q?/pfEavQcZnDu0aL8nIDyZlRlr1iaSDQaX1Xk9b68twUgxfFVA52FaivE5kvq?=
 =?us-ascii?Q?2Q=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf4b17a8-dfd0-401c-a4c4-08db673f39af
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2023 10:09:05.3056 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u5RcjxrP/ttw1zimQOudeA10aKbyt/Lambnz2W8Ca986hk6vr3QW/noqpfOyA5B1K1g5x72tg23LCbAADTx1xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9173
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SvqoDWocQ6qtUzWbPQv4oi+RzUCN0aUab5OyA80W2q8=;
 b=s3La49lY3Pq2LmY7tvGUwZ4nUpef7N7IXhLjNvx/L1kvTFSDk65c2uZpWEX2luHF7/tpE1/qcMh3zZcQVpvGXAI6tGJYEK+DELuFzJDjjWxXwuA7Vteux7muJPUahL1YGOoKbcnkf4O5V2yRi8tBCowPkX5x+d71lYhOL1uNx48=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=s3La49lY
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

On Tue, Jun 06, 2023 at 01:42:19PM -0400, Jamal Hadi Salim wrote:
> > > 2) It seems like in mqprio this qdisc can only be root qdisc (like
> > > mqprio)
> >
> > so far so good
> >
> > > and you dont want to replace the children with other types of
> > > qdiscs i.e the children are always pfifo? i.e is it possible or
> > > intended for example to replace 8001:x with bfifo etc? or even change
> > > the pfifo queue size, etc?
> >
> > no, this is not true, why do you say this?
> 
> I am just asking questions trying to understand;-> So if can i
> replace, for example, with a tbf would it make sense even in s/w?
> 
> > The child could have its own complex enqueue() and dequeue() and that is
> > perfectly fine - for example cbs_dequeue_soft() is a valid child dequeue
> > procedure - as long as the process isn't blocked in the sendmsg() call
> > by __qdisc_run() processing packets belonging to unrelated traffic
> > classes.
> 
> Does it matter what type the child enqueue/dequeue? eg can i attach htb, etc?

So in principle, the taprio model is compatible with attaching any child
Qdisc to the per-TXQ child classes - with tc-cbs in particular being of
interest, because that is a TSN shaper, but also, tbf or htb could be
reasonably imagined as children, and taprio doesn't oppose to any Qdisc
as its child.

That being said, a non-offloaded cbs/htb will not work with an offloaded
taprio root anymore after commit 13511704f8d7 ("net: taprio offload:
enforce qdisc to netdev queue mapping"), and IMO what should be done
there is to reject somehow those child Qdiscs which also can't be
offloaded when the root is offloaded.

Offloading a taprio qdisc (potentially with offloaded cbs children) also
affects the autonomous forwarding data path in case of an Ethernet switch.
So it's not just about dev_queue_xmits() from Linux.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
