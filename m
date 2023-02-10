Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 647DB6921ED
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Feb 2023 16:21:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCEDC822ED;
	Fri, 10 Feb 2023 15:21:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCEDC822ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676042475;
	bh=7KtWaRM1WuMU5pbqSxoQUzUloi/vDIXOpTaVCKlAsss=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=87WEBFh/9pXlEslcw+5dlgzaOOsgBbIWRKxtS8cp2ak8U6Yw+zC7tqNJdJnt2+f/d
	 7u9Zp+wa7S0gVjR3di7NrrNyTYaiuwoRg1+n/1+FcQkAeD2CN6iCdAJ1Y1Cjf/w9Ej
	 PvRqYeoHv3GiYVKjQN4GPbzmgYZbooYLs+QUFskXsVulMonJyeFgb8JRDzqcz+pO6f
	 t2C1q/Ucjpi+1GpSescCq9vlCzReIQvhVDglZGGn7z1w+ky6G0OEg1ODf+1VriWRHB
	 joE1+gsDlwGC29ZLhaz20TrS5IofFHsuJfqB1BE/2lYR8qvEYXvDgXVoc1OTW5JttL
	 mAS/v4irguyMA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0LjtlNlb2CfO; Fri, 10 Feb 2023 15:21:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2048822E5;
	Fri, 10 Feb 2023 15:21:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2048822E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2675B1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 15:21:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E7BF1822E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 15:21:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7BF1822E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id caHQ4r8pDHy3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Feb 2023 15:21:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C34B3822F0
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2082.outbound.protection.outlook.com [40.107.22.82])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C34B3822F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 15:21:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QnYNmEGBbr59KuclY/nhp9h1Z3TduoHoi0TZCSceDrFOfogfKJIz6qNdkwIdT7rLSCsKRhymQExRdid+CJsmpUibG2I5Oif5IKipG35K2lKfDmcjhlpGV2wIZeSF94u4Csz7um0GJyWavCzDvHCBTPl3jcvT4eN4gRQyvdnUipIa+VKPdce3Hu7xSgMa6VZBZ+8LHM5Zfk5qigfaMHLEo4X//PNJHZsuGDHO+c6/N0DNbeZJeP3Sm4sg1fBtLh3vNeqUn9PrArJLW3D1vIJHILlbLCffDzJ0SONhz83Z4jaev8KsnbuDjFzWRZvvR72gAv9XsRK7Yn5k/tddJSqP3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HqoHB3rhBEZpsnjI0HvCC/hdIq/R8OfFA+/DGsfPx9E=;
 b=V6y7tNqU0IuFDAbYVh0Vmq3Tg7oSQTaMaVUbwuqYS5aj7YvW+o84wNVNSCr5GMvX8lJG5mDkPf2U4o5DZLMOPreuXcShgT4rjN5K75w4lDwhk6cJ4YQ+1zeGWKvcSdWKlCGf1gm8Gwxj56sfz64JNPwQ4PXkR1YM8k32YbOa4E1GDBsuypCDDmrt1N0i+z4b4EWWq9OEp0UrmaDgn8RKPXgvdERufzkLmLqihPcWwcektI+/+QbFGg89b0OikpjfsiEVzWYHniTE5s+EXqOSbW9RwJPeApYafYaBEHOMJ2nxEcUz15e+2pO1AssL83gIp0o2g5HtWA9aAAF71tQxhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by DB9PR04MB8447.eurprd04.prod.outlook.com (2603:10a6:10:2be::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.19; Fri, 10 Feb
 2023 15:21:03 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3cfb:3ae7:1686:a68b]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3cfb:3ae7:1686:a68b%4]) with mapi id 15.20.6086.019; Fri, 10 Feb 2023
 15:21:03 +0000
Date: Fri, 10 Feb 2023 17:20:58 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Eric Dumazet <edumazet@google.com>
Message-ID: <20230210152058.kvn74av2kyzr2sxq@skbuf>
References: <20230207135440.1482856-1-vladimir.oltean@nxp.com>
 <20230207135440.1482856-11-vladimir.oltean@nxp.com>
 <20230207135440.1482856-1-vladimir.oltean@nxp.com>
 <20230207135440.1482856-11-vladimir.oltean@nxp.com>
 <CANn89iL=Z8TOymdaBJ8WUBh8pXOgp_tKM3KVsQZ05uT3orOj4w@mail.gmail.com>
 <CANn89iL=Z8TOymdaBJ8WUBh8pXOgp_tKM3KVsQZ05uT3orOj4w@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CANn89iL=Z8TOymdaBJ8WUBh8pXOgp_tKM3KVsQZ05uT3orOj4w@mail.gmail.com>
 <CANn89iL=Z8TOymdaBJ8WUBh8pXOgp_tKM3KVsQZ05uT3orOj4w@mail.gmail.com>
X-ClientProxiedBy: AS4P250CA0010.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:5df::7) To VI1PR04MB5136.eurprd04.prod.outlook.com
 (2603:10a6:803:55::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB5136:EE_|DB9PR04MB8447:EE_
X-MS-Office365-Filtering-Correlation-Id: 56f2dabc-5a08-4fde-43cb-08db0b7a6c28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W+7S8LDeSt8chSOQymq0mGndO2ct9cijx+XATHLpHobtoQMWmyHVh0fD0ykZEjwowBLHpbeWoAZ3LPlhrEr5OxUJK9nXM5VLDD0NaodKGiCOpZoSHnS9cHS27rwaH0NDcnk++oXmuwnkRMoBXo/UiGY5f1rdXcEnDrGyreMoHCO2EaNufOaRY1YpUrHvcRJAgZBT3Np7Nf6MiWi5o5Hi+pZrZxv1T+qMUXxqhvnVrMaXmCKrZ8nRVOl+D+/lSSSf3SxOWsCw2SO2JTwlhcBVfCFWe56D0tL+K6BAa6faMN+O4EKnUxMX1pA2KIQ9kc+pM3LhynApmbElzzRYeoN10jNrKeEMgXzORBlZdyCGC8/DpaOffXf41btLjNAbiIqUxAZ6YUO8CZvWIFJ9LJhoO3BhKtGsCYRfeW1NflUYi7//zx4Em/Ix2jSjHlZ4qVvinsDoMoFuOGrQwgEBMgPjh5C5F54o4OWH6XavgcXBjMqXxLCj1tB4nxmoo43K6VOmWVFy/y/S3GTkHI2GqOBm36cCeGS2vWQoeCgRON/z1pIG8g7zM87q8ER9+zprAoL7gFf+jtFRhlNnhWKKtj9G7/+4QziYKqEKeutDM2H4EIflmFOxydCZ6vz8CdpSTiXap5euSD9W4irrIuhkYMV8UQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(4636009)(396003)(39860400002)(376002)(136003)(346002)(366004)(451199018)(33716001)(478600001)(7416002)(86362001)(83380400001)(44832011)(2906002)(6486002)(53546011)(6666004)(6512007)(9686003)(26005)(186003)(1076003)(38100700002)(5660300002)(41300700001)(4326008)(8676002)(66946007)(66476007)(66556008)(8936002)(6916009)(316002)(6506007)(54906003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?moDNR+zD3Ddf3gy0r5zrAOT42pokZ0dEIAkEaJIzLSnGblLyQL1PL3M+Whc7?=
 =?us-ascii?Q?kWHSQbJDnmFDRHCYDf9uBaQyccOmzPfvd77WzBXzA2v7T5fqLqehbveN+ODL?=
 =?us-ascii?Q?sYvvAD3bprtl3JkiEBep5heOz0f3eqwUYBEvt2+IYwez61WfbWDubcLuGi1V?=
 =?us-ascii?Q?De7gEZAsn95F4lwpcHJKIbkV103vGYZumRHeXM7L6XR76UeCOAF64M8Sva0d?=
 =?us-ascii?Q?W9kUCxfRI0pw0u9kZj8Es4A8iv7Cj0tPDHafVe82TOZ8GcrWEscmGdJ+R8dJ?=
 =?us-ascii?Q?vlDqjOB5R5zxwMCxjPrmqxHoBTQiKq0q4IVo6MXCjlG3eQyzlXsf7u8QsKKM?=
 =?us-ascii?Q?fklRD7NP9aWaWMiHVstzUun3TjB8L3a2T3Up7vXTyixtmwfntMtiP+8jJDMG?=
 =?us-ascii?Q?lZjEWFq6fY61bMLGT+lBPwYs69w81u+pbEFc4irJvo8DMqcGH0+GYujsE2mb?=
 =?us-ascii?Q?qqhO4o1NP6+HxT9hq80N5nbg/oa2B88mj5rbYUX7BzozCq8B62TgPXkbWF7y?=
 =?us-ascii?Q?OUWyihOClxA7kAW/umi1P0dvmp9w1gV1mmURpneUfEtjiT5z8EYQCIF8Afby?=
 =?us-ascii?Q?WKlJ6J32HL4lFc3jYLSIm6J4BVZiDm2ShIT0KH552iwvRDp4+LSeCJ4EmYtJ?=
 =?us-ascii?Q?WSfrNobxJWnavZ3MdtMCyqSc2gtxwT9Avb/sdadOOCKicjJGgoiwT3ef/oey?=
 =?us-ascii?Q?8KsFs3I/ih/WmpaR/wN4PT40dHOvzELsDZ2XceFUxDB+uFhCNgsjU5LmOx4P?=
 =?us-ascii?Q?yM2DFm01IP7VVxEViwVgWxIXEtDU8xTNzF0tHu/x63Rc6wjmI72+cGqdioIB?=
 =?us-ascii?Q?JPBkiVZ5IscXo5OkcoHUzVskkTkEEkhGdE/aSBEwB8uta2IqjYTCpuI1CVU/?=
 =?us-ascii?Q?MmIgDlF6zjaaMfH5hWfxMXsxBATATgRf5MrA7p6nsV2tvnkFERZfTA5kkseD?=
 =?us-ascii?Q?h3ltkHXvaFI9kJ8QU3ASb66o9zHhHLnT9PH7AgcAPh7jrISDiOCO8884alMo?=
 =?us-ascii?Q?hcSiKO2GrzAfyV2uWOyYJmR0LH9amiV2jAgacKGVNfLH77uhxCHfaEgF3c4v?=
 =?us-ascii?Q?lweqtr1ylzedIxe6oY/8PnpTlunfAXd+u3Nnp2wGbbaYFYuu5IbBgvR3mvy8?=
 =?us-ascii?Q?Fl+kPLYbAVaj5HltZL6WUFFJykOZWMbp82uMhwbo5nXED2KqVf/wDg0sFOcP?=
 =?us-ascii?Q?XKnaVV+JDJaLxfMAc3WADFFu+4GhLOEjQ6aFNK6aNPG8LRwfUw1U3GiNPLQm?=
 =?us-ascii?Q?yCbWHJC30mnVVilYuMGyXVE39Qw4rc8ZHQo1Q1CclrsR/gJlbJjPFFxkvOP/?=
 =?us-ascii?Q?poBrjtgk1un2tVQRQzdOaOUgKRqv9idrye6jBP7kWLueRYTTfubiz0GAaZ/c?=
 =?us-ascii?Q?O+fum6kkLILKSqYPmhAr8GZcew7b9qOhww20KOjv5biasVW5m2D7xx+BA10F?=
 =?us-ascii?Q?lRqxPGY24i92q8eeB6Vm9qjgibqCO1bW1JrjDlLZk8qjIt65oVpTyglmOXO3?=
 =?us-ascii?Q?OVXlYiA6CqLsPc17Jt1yp6Dd6UWM+ci+4eq5lL94Lg2arD/iF14hdAAt3Upj?=
 =?us-ascii?Q?YkZSV9U+Dy+bUt8hC7Ek1p/pzkKwnaDKprZK2zVAgB68aVuKAOcHgAZJEyCx?=
 =?us-ascii?Q?HQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56f2dabc-5a08-4fde-43cb-08db0b7a6c28
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2023 15:21:03.3425 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bepvSUocE/cwKKCme4huXawf03a1IIMSwu1Rte5HXr4sAu267uOq+rY+UKq3TER4PXil7vMFjdvT9W1kTLmYqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8447
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HqoHB3rhBEZpsnjI0HvCC/hdIq/R8OfFA+/DGsfPx9E=;
 b=T6QT4k/+EMfkOqxNqrpO2/Xg7xPtTbJfls9uK6tOeIy3mp0dljzPIc3n3x0stISExxS80lgeTJNBMrH5hxCYi8/GP2zY0lxXEPkpW6t2pCyQE/tzL2Z+NwdM8G60dpH7pKiDOMF409SACb9lGBRHqNFVexBnB7Hypy5I6dB5Boc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=T6QT4k/+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 10/15] net/sched: make
 stab available before ops->init() call
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Kurt Kanzenbach <kurt@linutronix.de>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Feb 10, 2023 at 04:07:42PM +0100, Eric Dumazet wrote:
> On Tue, Feb 7, 2023 at 2:55 PM Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> > Move it earlier, which nicely seems to simplify the error handling path
> > as well.
> 
> Well... if you say so :)

:)

> If TCA_STAB attribute is malformed, we end up calling ->destroy() on a
> not yet initialized qdisc :/

Right. Sorry, I didn't pay enough attention, and the old structure with
"err_out4" having a "goto err_out3" confused me. Because I was trying to
match the old teardown path with the new (linear) one, I was trying to
keep the order between qdisc_put_stab() and ops->destroy(). But I forgot
that I need to *reverse* it, since I reversed their order in the setup
path :-/

> I am going to send the following fix, unless someone disagrees.
> 
> (Moving qdisc_put_stab() _after_ ops->destroy(sch) is not strictly
> needed for a fix,
> but undo should be done in reverse steps for clarity.

Right, and it's a net-next patch, so a larger fix which brings the code
into shape should be fine.

> 
> diff --git a/net/sched/sch_api.c b/net/sched/sch_api.c
> index e9780631b5b58202068e20c42ccf1197eac2194c..aba789c30a2eb50d339b8a888495b794825e1775
> 100644
> --- a/net/sched/sch_api.c
> +++ b/net/sched/sch_api.c
> @@ -1286,7 +1286,7 @@ static struct Qdisc *qdisc_create(struct net_device *dev,
>                 stab = qdisc_get_stab(tca[TCA_STAB], extack);
>                 if (IS_ERR(stab)) {
>                         err = PTR_ERR(stab);
> -                       goto err_out4;
> +                       goto err_out3;
>                 }
>                 rcu_assign_pointer(sch->stab, stab);
>         }
> @@ -1294,14 +1294,14 @@ static struct Qdisc *qdisc_create(struct
> net_device *dev,
>         if (ops->init) {
>                 err = ops->init(sch, tca[TCA_OPTIONS], extack);
>                 if (err != 0)
> -                       goto err_out5;
> +                       goto err_out4;
>         }
> 
>         if (tca[TCA_RATE]) {
>                 err = -EOPNOTSUPP;
>                 if (sch->flags & TCQ_F_MQROOT) {
>                         NL_SET_ERR_MSG(extack, "Cannot attach rate
> estimator to a multi-queue root qdisc");
> -                       goto err_out5;
> +                       goto err_out4;
>                 }
> 
>                 err = gen_new_estimator(&sch->bstats,
> @@ -1312,7 +1312,7 @@ static struct Qdisc *qdisc_create(struct net_device *dev,
>                                         tca[TCA_RATE]);
>                 if (err) {
>                         NL_SET_ERR_MSG(extack, "Failed to generate new
> estimator");
> -                       goto err_out5;
> +                       goto err_out4;
>                 }
>         }
> 
> @@ -1321,12 +1321,13 @@ static struct Qdisc *qdisc_create(struct
> net_device *dev,
> 
>         return sch;
> 
> -err_out5:
> -       qdisc_put_stab(rtnl_dereference(sch->stab));
>  err_out4:
> -       /* ops->init() failed, we call ->destroy() like qdisc_create_dflt() */
> +       /* Even if ops->init() failed, we call ops->destroy()
> +        * like qdisc_create_dflt().
> +        */
>         if (ops->destroy)
>                 ops->destroy(sch);
> +       qdisc_put_stab(rtnl_dereference(sch->stab));
>  err_out3:
>         netdev_put(dev, &sch->dev_tracker);
>         qdisc_free(sch);

I applied the changes from this patch manually, and the result looks good.
Thanks (and sorry)!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
