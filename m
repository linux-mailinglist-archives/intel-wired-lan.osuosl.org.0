Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7B1670D37
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jan 2023 00:24:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEBCB60E14;
	Tue, 17 Jan 2023 23:24:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEBCB60E14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673997848;
	bh=TQCHcNgFSbH3R671SuP+P9Fqc9+ath44wAWQ2GaJKLI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=faZj38SiGO1gQNOwi9oi3gRYy4lda/Yp4QNVrWIpBzoCMQ/qmbqE37NbzurvorPSs
	 m34755YyL/I2WXH1CY0dKZw1gNGOhQdOTg+Rsnyg8Q/XR3wv020gNHn5ALFZq2ipBt
	 MpJywF+JSlDLHWLwx6cTcz3Ncrd7vouwbgh2TmMi64lDtTc2jB1K6Q8LqSAuCnLCdT
	 m+/oqzYVfynNMb2MUqYtBFKE6aSkzPhxeWmv/L5rntfsOPeuZFcoW0xILQrKHOSea8
	 m1EERxsgCe37D8IEBxsF449xDBa3NMs6PZ/XdZbM+8yS8hU1HEAbv1rYm0mage8Kp3
	 6r22KiWUb1SOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id peslte7kav_A; Tue, 17 Jan 2023 23:24:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9845560E2D;
	Tue, 17 Jan 2023 23:24:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9845560E2D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D3F91BF47D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:29:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7383781455
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:29:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7383781455
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6QFl7ojnuBVx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 22:29:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE8458143C
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2100.outbound.protection.outlook.com [40.107.94.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BE8458143C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:29:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bgXiTybtsnqxh8/vcDN1rQuSSi/r3SeDP5ELGZvmN/GlaApHjpdB6oZvLuu91+sUb3zrwJVBMLPBRL4zAUofz5ECdkj3Crb2yfaAp3A+IynKgpQ5fyJLUO7OXh+arnAehpt4nrDI1o9YbFL+2d30iO+iIpdCq4oqTlI3wr9ka6efGvBJnpnCd9Lm3bW3+kJGUeRXEPqGMfEI220U91QCXitV4mrfvN3ZUgDQP3ggeCtLSafPJlErQJZeJgiIYNdvh3eXNriGWiMzK6q/MxQXlY87qnBaakoY/DKQA+0EyrZ0M09OJeFxzyBTg6tXv+qG9jLZABO/YEOLUF2srF6pJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g8suO+jaYdvyQIC2deS4jzeSVlmMLAw8cGX2C21REbU=;
 b=bLhpG8QTM/qudTrJMCROwrNDSzEM52OpeF0PIhMy43e40Z2RUQ9Zh9kZjAJzXV0rDAqO8RbPxRGqxBKEY9cHuYWgtOEkJwGY+P1/QSFYmktaFIRt6SaRVPJj2tAqMuqq16uzyz2RSiP0kmj8nKUWHS0g9V3CzeXobCf5Ldz+IRParVF3h+5KGqp6zsnG3vHFlDZXEVoF6mqj6n/jrJwX16mPSNjNHFeKmw7j3bXrsxUQdIt2mQ6/trgiyHvXW6ZyCeKwIz4jqfpZKDu4BCyhF4qvuM6n4739Cw1cBPsQuKreltCr3Jke0IVAvne06eNB8o8SLQFY8fs5xwEjZbWGRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from SJ0PR13MB6037.namprd13.prod.outlook.com (2603:10b6:a03:3e2::9)
 by CH0PR13MB5084.namprd13.prod.outlook.com (2603:10b6:610:111::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Tue, 17 Jan
 2023 22:29:20 +0000
Received: from SJ0PR13MB6037.namprd13.prod.outlook.com
 ([fe80::a17f:495a:6870:18c0]) by SJ0PR13MB6037.namprd13.prod.outlook.com
 ([fe80::a17f:495a:6870:18c0%9]) with mapi id 15.20.5986.023; Tue, 17 Jan 2023
 22:29:19 +0000
Date: Tue, 17 Jan 2023 23:29:07 +0100
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@corigine.com>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Message-ID: <Y8chM32w/ZWsOOT+@oden.dyn.berto.se>
References: <cover.1673710866.git.lorenzo@kernel.org>
 <b606e729c9baf36a28be246bf0bfa4d21cc097fb.1673710867.git.lorenzo@kernel.org>
 <Y8cTKOmCBbMEZK8D@sleipner.dyn.berto.se> <87y1q0bz6m.fsf@toke.dk>
 <Y8cboWSmvoOKxav2@oden.dyn.berto.se> <87sfg8byek.fsf@toke.dk>
Content-Disposition: inline
In-Reply-To: <87sfg8byek.fsf@toke.dk>
X-ClientProxiedBy: MM0P280CA0087.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:190:8::33) To SJ0PR13MB6037.namprd13.prod.outlook.com
 (2603:10b6:a03:3e2::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR13MB6037:EE_|CH0PR13MB5084:EE_
X-MS-Office365-Filtering-Correlation-Id: c979ee4d-9acb-4c71-84bb-08daf8da4684
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 75Tw9e6DObOou5NeRHn0SAbyqo/64QFkUsGG41vyRZDdZE/NoA3RtacGPfu8wOJ0yGHXqeUhL/FTpdT9nxMJryhBIhhGfnaWhP2Pnivh8HX7H3dYIVSShRA6ewF7KRispl+y4+r0YWZq0dG1DujeTz9Zrmb1KhcNvpk50JPc/pXQ6tZp3YR+sZUcDkuOymnjduUibl0uZ8NQS8TItwlEO3v39eww7+Dp6EwAqy5hbrhjQN+xTlHL738Bes74FGt/JqgoqsuM62tqOQ4oIqVipggPMZD4qPZnCSggUxvo5bLy9EbRMsuoUxAyt83I++PlDV8H1/4RjbXqkKwMtMXNPSG5KOhPtfWeOWQ2Fb6lKiEEM9jsql1W1BupCZAcOq0K/WzaqGAIJT2cnYAFws8cw8zbmiRbpWQ9Anfoapxnlex9jlKXcAmGkbbK/v/0hSG1bNB4hV8aNZX8xzrTYNpPEeurztF1ZUwDtjmYBVdLw6jFV55GfutxaW/vwtgCASEffU8iF6t0/jb/miB3ol0NKcoMcYBbG9LUFSCEZ4RggkXWT2qFHxCPzmcAYKklZC5eh8vy5ZLJCwEC5RWH8O7p1kjOBJakPf//xb+k9c+7AQukC3/u8ZS+8vnB8mFoOKurWPBQsnj/5H6yrKNTkGz+fDOYyFq29Gs4AyBa5QsnvFw0Sa9D4Xa4bMtM3qSqimqv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR13MB6037.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(136003)(39840400004)(396003)(346002)(376002)(366004)(451199015)(6666004)(6512007)(6486002)(26005)(186003)(478600001)(6506007)(52116002)(9686003)(53546011)(316002)(6916009)(4326008)(8676002)(66476007)(41300700001)(66946007)(66574015)(66556008)(5660300002)(7406005)(8936002)(7416002)(38350700002)(38100700002)(2906002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?PcHZNWH4e1wcMnSIupPGQDNV5qN8K5BQAj0WLAii+FoF+6WS1Ssmcmoh/z?=
 =?iso-8859-1?Q?zG1MYftznUc6gESPvVMXLynhJYD07QXg0XZw0CasK9ApkrKLRV+H4nV5Cx?=
 =?iso-8859-1?Q?Bo1gC+kDQryoP393GzIhZreA1EAARLf1Vym8cD3cFyOlq+5NOtDrmOUdVJ?=
 =?iso-8859-1?Q?Hj6ZxhwbNLHwpMa7krvhQwxk3Kw/4ewEj1WL0sZsY7XDtlq9XGPrYDHyIy?=
 =?iso-8859-1?Q?G/OexiDFwM9COPvzcdhr5nKHas43CpV+H2TMOEVQ0j8/W+VvgPt8REQPYf?=
 =?iso-8859-1?Q?Pj32U//11mRa/nL+Rtio4ovmBEAvf5BENJ4ju+NaJ93/9k1tFx3df93Pl2?=
 =?iso-8859-1?Q?4QniWeyoU09DVD5GndEkQ1i046q4/DSbte0lhH0i6oxPd2kKEaezx4qXUs?=
 =?iso-8859-1?Q?DYi3wGs1RVziaAxFou0P1n1LO4eB0jh8nj4baROFcM4r9OhWVZvLmsCLZT?=
 =?iso-8859-1?Q?c9t7jRbdOVj+RFapgEBOpfP6EGL4aKQBwLXkS8oYmPlwd74TmGwji7Pqws?=
 =?iso-8859-1?Q?afneihYnxQ6yfT/X1YvdxWv0LBS81D88/Et+WZeh3Gu270F3nH+7iU8j8j?=
 =?iso-8859-1?Q?+vW5ROM7KI2Ggt9AIH5Nt/Hn2PN7T8pFzGvDwH0oOdLNcVdQxDuuyu75on?=
 =?iso-8859-1?Q?buribHocMFnH0cD8fDfdaCaYI5r+mowFWPEFSQCN+KEZWPvSb8MdmGNtMQ?=
 =?iso-8859-1?Q?L/X5LKPTgm3rcvZfMAJpI3qaEWd/Kop6PHHWRDQMW4e1WkuWydGzBZBDQ9?=
 =?iso-8859-1?Q?+36usAkDEeg5CVvPsIVBzVeGQTTk2xTqueIgVJEUbhY7dtPPFJ0ONU+qhI?=
 =?iso-8859-1?Q?o8OWZCk5dN1pQ0r/zrJLLr2DAMB4hQRW2kjO/kdJ9ZVovS00uIjkC+/UDe?=
 =?iso-8859-1?Q?mto+ewoxnBQ5EaabSm4pecp7TWKCQg5VsnpmGWO+Dd5x7JTuBFi05d6AP+?=
 =?iso-8859-1?Q?V2szJWCnXr521i6S9YuDdeb3uWGpr0pspfhKTLVNU16WSDvdE8KtnJhI2R?=
 =?iso-8859-1?Q?1HAx5AItcM4N2qMDv/oSE5pdvVt5YOtkbv/DAEd7S28YINdMeU9JeFIBL7?=
 =?iso-8859-1?Q?obv8eHrEO/dRkun9j8yiVxNd/QPssjrKE4xKtcUPkP8wCWSvYm4UyWv0Hz?=
 =?iso-8859-1?Q?Fi6pdBUicCjuY/fzrvBOq/NBb2UfAQhxSOIBmHQoFxCULpTiy+GSPPJyxi?=
 =?iso-8859-1?Q?d8Oi5e6LFy5KT1VUnybYSpRBjPcMzvFLafV8pyAmZ21KRSmKvLEKIaCzMe?=
 =?iso-8859-1?Q?Sr4+mxqO0bv37zE5H3ewY/jbjff58xNnCvgjxlUI65tVZX7GrU9t6Vv3Sr?=
 =?iso-8859-1?Q?UTPRqnxytLvfpF7m+ZXl4N+jCVmprbzHGzj3t1Q4PLZ4uThnjXa0mMt3cT?=
 =?iso-8859-1?Q?yEFueTifbPqoGlgPkmRYwIBEQJsvQN2S0VNmEM3pV9Y84Iz9JUG07IjdYO?=
 =?iso-8859-1?Q?5SyHFiVD1oi7Kh0ZfRerpqciEulyE2+xUMh1+F5RwB0xFt01OPOBz2Jyfn?=
 =?iso-8859-1?Q?omQs0413+OQghzQMuV4WXYxVrdv1X1haaVQebXbXk+f8j3EwwK6/FfNqIO?=
 =?iso-8859-1?Q?1+ketWYrHlsVawi30zjKkqsYJYD4bJpycxCZWjPx1S4uD+lT7tL+GcWbUm?=
 =?iso-8859-1?Q?s9A3HjqXfujFhuSQJQm+FOsTXNS69HDsLD6u2Xk0it37YNjxXUY8piQg?=
 =?iso-8859-1?Q?=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c979ee4d-9acb-4c71-84bb-08daf8da4684
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR13MB6037.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2023 22:29:19.7869 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xJ9lmMpgg3eZ7aS2kzg1tmq0ykhyte7dkGkWzZQ6SKRJPyaCt+lWmuIfEpL5ZJ+CkHp1NRLLerH9q8F62slJbCanDKBoPzAhqRhwp+IKWV4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR13MB5084
X-Mailman-Approved-At: Tue, 17 Jan 2023 23:23:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g8suO+jaYdvyQIC2deS4jzeSVlmMLAw8cGX2C21REbU=;
 b=wnBI21MpVql3EkOIPTJ/XiJ8hC9eJ/JqJ28yWirKKLLZmIanrdER7XxdWhkatQApH/BRcZ5HbFD/iqc+QYseaxs2fUWRta7Fq/2sPAvxg4UlilhiTt4Dxdu36HUTgvD5sX0aEzbecrYdioaNTINfw5aStbGFxM1xBsJklIZnZ4g=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=fail reason="signature verification failed" (1024-bit key)
 header.d=corigine.onmicrosoft.com header.i=@corigine.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-corigine-onmicrosoft-com
 header.b=wnBI21Mp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [RFC v2 bpf-next 2/7] drivers: net: turn on
 XDP features
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, Lorenzo Bianconi <lorenzo@kernel.org>,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023-01-17 23:15:47 +0100, Toke H=F8iland-J=F8rgensen wrote:
> Niklas S=F6derlund <niklas.soderlund@corigine.com> writes:
> =

> > Hi Toke,
> >
> > On 2023-01-17 22:58:57 +0100, Toke H=F8iland-J=F8rgensen wrote:
> >> Niklas S=F6derlund <niklas.soderlund@corigine.com> writes:
> >> =

> >> > Hi Lorenzo and Marek,
> >> >
> >> > Thanks for your work.
> >> >
> >> > On 2023-01-14 16:54:32 +0100, Lorenzo Bianconi wrote:
> >> >
> >> > [...]
> >> >
> >> >> =

> >> >> Turn 'hw-offload' feature flag on for:
> >> >>  - netronome (nfp)
> >> >>  - netdevsim.
> >> >
> >> > Is there a definition of the 'hw-offload' written down somewhere? Fr=
om =

> >> > reading this series I take it is the ability to offload a BPF progra=
m?  =

> >> =

> >> Yeah, basically this means "allows loading and attaching programs in
> >> XDP_MODE_HW", I suppose :)
> >> =

> >> > It would also be interesting to read documentation for the other fla=
gs =

> >> > added in this series.
> >> =

> >> Yup, we should definitely document them :)
> >> =

> >> > [...]
> >> >
> >> >> diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_common.c =

> >> >> b/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
> >> >> index 18fc9971f1c8..5a8ddeaff74d 100644
> >> >> --- a/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
> >> >> +++ b/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
> >> >> @@ -2529,10 +2529,14 @@ static void nfp_net_netdev_init(struct nfp_=
net *nn)
> >> >>  	netdev->features &=3D ~NETIF_F_HW_VLAN_STAG_RX;
> >> >>  	nn->dp.ctrl &=3D ~NFP_NET_CFG_CTRL_RXQINQ;
> >> >>  =

> >> >> +	nn->dp.netdev->xdp_features =3D NETDEV_XDP_ACT_BASIC |
> >> >> +				      NETDEV_XDP_ACT_HW_OFFLOAD;
> >> >
> >> > If my assumption about the 'hw-offload' flag above is correct I thin=
k =

> >> > NETDEV_XDP_ACT_HW_OFFLOAD should be conditioned on that the BPF firm=
ware =

> >> > flavor is in use.
> >> >
> >> >     nn->dp.netdev->xdp_features =3D NETDEV_XDP_ACT_BASIC;
> >> >
> >> >     if (nn->app->type->id =3D=3D NFP_APP_BPF_NIC)
> >> >         nn->dp.netdev->xdp_features |=3D NETDEV_XDP_ACT_HW_OFFLOAD;
> >> >
> >> >> +
> >> >>  	/* Finalise the netdev setup */
> >> >>  	switch (nn->dp.ops->version) {
> >> >>  	case NFP_NFD_VER_NFD3:
> >> >>  		netdev->netdev_ops =3D &nfp_nfd3_netdev_ops;
> >> >> +		nn->dp.netdev->xdp_features |=3D NETDEV_XDP_ACT_XSK_ZEROCOPY;
> >> >>  		break;
> >> >>  	case NFP_NFD_VER_NFDK:
> >> >>  		netdev->netdev_ops =3D &nfp_nfdk_netdev_ops;
> >> >
> >> > This is also a wrinkle I would like to understand. Currently NFP sup=
port =

> >> > zero-copy on NFD3, but not for offloaded BPF programs. But with the =
BPF =

> >> > firmware flavor running the device can still support zero-copy for =

> >> > non-offloaded programs.
> >> >
> >> > Is it a problem that the driver advertises support for both =

> >> > hardware-offload _and_ zero-copy at the same time, even if they can'=
t be =

> >> > used together but separately?
> >> =

> >> Hmm, so the idea with this is to only expose feature flags that are
> >> supported "right now" (you'll note that some of the drivers turn the
> >> REDIRECT_TARGET flag on and off at runtime). Having features that are
> >> "supported but in a different configuration" is one of the points of
> >> user confusion we want to clear up with the explicit flags.
> >> =

> >> So I guess it depends a little bit what you mean by "can't be used
> >> together"? I believe it's possible to load two programs at the same
> >> time, one in HW mode and one in native (driver) mode, right? In this
> >> case, could the driver mode program use XSK zerocopy while the HW mode
> >> program is also loaded?
> >
> > Exactly, this is my concern. Two programs can be loaded at the same =

> > time, one in HW mode and one in native mode. The program in native mode =

> > can use zero-copy at the same time as another program runs in HW mode.
> >
> > But the program running in HW mode can never use zero-copy.
> =

> Hmm, but zero-copy is an AF_XDP feature, and AFAIK offloaded programs
> can't use AF_XDP at all? So the zero-copy "feature" is available on the
> hardware, it's just intrinsic to that feature that it doesn't work on
> offloaded programs?

That is true, so this is indeed not an issue then. Thanks for the =

clarification.

> =

> Which goes back to: yeah, we should document what the feature flags mean =
:)
> =

> -Toke
> =


-- =

Kind Regards,
Niklas S=F6derlund
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
