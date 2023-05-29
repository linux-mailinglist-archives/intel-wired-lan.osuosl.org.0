Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2565714EF5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 May 2023 19:34:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 628FE82308;
	Mon, 29 May 2023 17:34:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 628FE82308
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685381654;
	bh=uoAVLgtLlz2fghW17QB65p7xAH+ag9mBxelM8UdSL5s=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VAWY9r+4JHlbL+DF7Gn/yXfiek4AzJWU5cmSXR+jyJvbZg/6cubioMpcshi9nh+XI
	 Slt5BWMeMRWpJAiKR6SzWzPGQm4uUMpziI+0MjZPY6sju6qBTiniYdQww/i+aCBZXA
	 qbeLmp9GgjF0r+VsdLYUakJadgT7OmBTHb87Uy5Wu+LiLMX4ax88aV+Ny4n5Hzl/A/
	 8dC7pNjAbCn+MJYoUjIxUXI0Fs6zbnbl1NKfQU1eGwy5pm/k+CBKDtihI3E3ROVbFt
	 TKftMWSh06PiSlrGKNw9eClcQn495/ICleN9DznKoasgpUeCSnXWWYqIL15/VgdU3j
	 2zzqXFYrCqF1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hRHZHLncvY4O; Mon, 29 May 2023 17:34:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECFB0822D8;
	Mon, 29 May 2023 17:34:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECFB0822D8
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 083F01BF2C3
 for <intel-wired-lan@osuosl.org>; Mon, 29 May 2023 17:34:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B93F441CA7
 for <intel-wired-lan@osuosl.org>; Mon, 29 May 2023 17:34:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B93F441CA7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9SsJGikOYjlE for <intel-wired-lan@osuosl.org>;
 Mon, 29 May 2023 17:34:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B31241CA6
Received: from EUR02-AM0-obe.outbound.protection.outlook.com
 (mail-am0eur02on2073.outbound.protection.outlook.com [40.107.247.73])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2B31241CA6
 for <intel-wired-lan@osuosl.org>; Mon, 29 May 2023 17:34:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EmxGpEvb2H0b950vk2cbuRtQ11TZ5POIYNemqlKXJe28h8dZU2I0zU3DM9Yf0H2JIPHBgRCfH2HqtC5sOvqzB5vgYmDK4IHomFMr0Yh7oKr6d5925hmCW2d47fTRy2IY6FCuuHCa6McVXItaozdP19fjHa8lGr4Tq7lV83nVOlmvoYfe9DjM9TYefoq0MsMgPwTZfqUqHerLYOn7tDCG2Y+ZHVaepPjZdGsCFtovyuzDtqAbDdw8kXfQqnPI+tBlE+NhHlzSdxMocOqDMSi+kfD/ISE4iKh3pUEQrDYDe3e5Ot7hkyJgqp3VfPeErNjvQGkWm9VIeXR1g+i1vJiwow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R0H4EjJYTfBGg53wvJVJjAcWFPC/17buEekiJ0dsYIs=;
 b=ZbQtQ/R/OJD78OsfvRHTaCBhlB/Sdw1cAO+ioWUwwRwzvpkihjxQ+ohXF6KTjgS7lzxGbwf5NgMSgRULg/nGF0+uZUMaLTLgqPV4NfauUweqdE9o6Aq8BAs1vV9Z+2FppQsQDS5VLIacb4mK3cbY00LxrQRy5F44gsGoCbUBrpn/6zLwn+b3SZ7tOVMSopAQ/HfqB9NuCCD4cdkSNWGPdhlcfTjhBR7zbwa72kEwgXKfAiza8+M93os18l2M0Ei6PjfwP4m1oBPXT9Ir19DvwN1pmNeULiPcasrR0c+VMqfZ6jHrodFJBsStwYTjyXQvyOXOu+zgolyba8mbV2odlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from DB8PR04MB6459.eurprd04.prod.outlook.com (2603:10a6:10:103::19)
 by PAXPR04MB9667.eurprd04.prod.outlook.com (2603:10a6:102:242::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.21; Mon, 29 May
 2023 17:34:01 +0000
Received: from DB8PR04MB6459.eurprd04.prod.outlook.com
 ([fe80::5ca3:2022:337:7c40]) by DB8PR04MB6459.eurprd04.prod.outlook.com
 ([fe80::5ca3:2022:337:7c40%7]) with mapi id 15.20.6433.022; Mon, 29 May 2023
 17:34:01 +0000
Date: Mon, 29 May 2023 20:33:57 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Message-ID: <20230529173357.jpqun5o2z7lebreb@skbuf>
References: <20230411055543.24177-1-muhammad.husaini.zulkifli@intel.com>
 <84acb1a0-f51b-cd2d-d42c-5133767a6698@intel.com>
 <20230418171904.2d01642c@kernel.org>
 <SJ1PR11MB6180117EC9550B1993944DE7B86F9@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230502082734.0f2f88b1@kernel.org>
 <SJ1PR11MB6180A8759928896BE0C04A0CB8459@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230529135949.wfrcll3t7nkgna45@skbuf>
Content-Disposition: inline
In-Reply-To: <20230529135949.wfrcll3t7nkgna45@skbuf>
X-ClientProxiedBy: VI1PR07CA0292.eurprd07.prod.outlook.com
 (2603:10a6:800:130::20) To DB8PR04MB6459.eurprd04.prod.outlook.com
 (2603:10a6:10:103::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB8PR04MB6459:EE_|PAXPR04MB9667:EE_
X-MS-Office365-Filtering-Correlation-Id: 837b793d-ed77-4b45-a8a3-08db606ae3e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +xu7LoDRF77qlWpiG+dGhAP88QBJMjNExgc4sMdDvbzcW45eDXaoQ5cF3dnK6Dd+b4rFtOYUkh4aeC0N0fGtdzimf+EBm3f++oqAiQBsTnj6fqvKN05ob2GPFwjCw7ROkR2XStBpRZNOB8ADPYGupa8hZC18C4funnFHchgxuXUf5VS7rjZREqV5mNhQ34T4Ppe5ic/35femuU0oSPCCIg8QD8XYqOX5Fy/KYrE5qsnYsb28qmYKqXlCABbytJja8nvrlkwvyj2/Unq2uqKiMzKZfRyOK/0BNFVzqnc5KYqQ3JJPQMko0wHGHNlEEp/PsENJIsdba8ANvVbOYz21YeDmXqpK/mKXNkaJU/5cfXe9n+DTSEN0va+0WxxumVYh0V2KRI7i6USzdj25FjwnrNuLARFtZn/+mCIPli6oHgkfYZegh8b2e0hWTxHBN6ZgMvS5xeB3+kAGD2zTpHrCnSYd6Gz8RUgfuQQiJ/IFEW4abh8KYe++oRgpgC79vjS4eNtsW90EMVgTpgqDZGVnMTvBnXuLSSNosJLm80Xlh43Ddiqi6ZriZ0kCkR11tVkhYQuYI+YzByc3wAJGMqhf1w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6459.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(366004)(376002)(346002)(136003)(39860400002)(396003)(451199021)(478600001)(2906002)(186003)(26005)(1076003)(6512007)(9686003)(6506007)(5660300002)(8936002)(8676002)(54906003)(110136005)(38100700002)(83380400001)(966005)(33716001)(6486002)(41300700001)(86362001)(316002)(4326008)(6666004)(66946007)(44832011)(66476007)(66556008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cE+8d+IHBwaCQA/9IosNEr9g0uwQmq4azjG1uP8c/+ebmbt0oDljCLSvXkPb?=
 =?us-ascii?Q?aSODhmhpkG/ndAsteV1pQUMeH0G9YC/XJTZ1P6fK0MHRBv7zqxKEs6ekvRNb?=
 =?us-ascii?Q?bdG67kzvRB/qtYKCQec5Ts0wGC9Je+ixGKSjLcv0wvmrtiEJb9rVcS9vFOdS?=
 =?us-ascii?Q?W3jzrtYgly4b9NKQXQW0fItu1npSMdJE+WPp6n8gOrPjjhjPXhHZ4OXuKnt8?=
 =?us-ascii?Q?lK8LdxLzwJgxUjvuDI/v2XLf6G1shEgddfxiDUDmPcaygMtC5W4es1uY04VL?=
 =?us-ascii?Q?G0zBuxzysQVozciEdxY+S1dx7N87EHPO8niU3Zq1O1tAYnyN5OMGZCEDU9S1?=
 =?us-ascii?Q?sDrRql7c0j7Fru9CKQTSExS6QbmCKK5VmANhYoDgZ7bdlIpYBIkJzYgLnqiJ?=
 =?us-ascii?Q?W+Tz3OtgTmOoeLgk4O5Xaf47ia0Ro9tSVPjNo7x6WjDCl2n8vLRW9WifgaGy?=
 =?us-ascii?Q?BtYnRdfdAuF253+AMJeeNMm4ogaKxF2K98mLyvpKbtGCmaP2UdiALOtJnGs6?=
 =?us-ascii?Q?ZpAL23DXn1VhvLdiob4rGuamiEhKxhgIa6NALd3LYNiKw3phPglywmPFz3Ag?=
 =?us-ascii?Q?WdXNvxhAWS/h7OQCl7KyVQNtoBYoyoew1f2IpZocGACe/JJWXNCzZ1eHo08w?=
 =?us-ascii?Q?P5L7c4vPiiMOfmE1PbIbAVwPuuDAjgZeNbdNfnhbYtu4O03HF9EqTMRf/HSE?=
 =?us-ascii?Q?kqeXzdiEteagot88WQzSbcaYtBHCU23K9i+0hawegHKM0GUF20MGFOz1N7LL?=
 =?us-ascii?Q?CH/egeV124hXs7D0n3lvYdLAfLMtf8uX99YJD5LU19bnoh+Tg2GNhyK8BzTA?=
 =?us-ascii?Q?xiKLDK5B+AAgaKto1knpm9jLicUGgCUhZpHeqL4x9u984ed6Bkw2Bparm8ct?=
 =?us-ascii?Q?Lx/ll/CB7DPaiWDm7MvY+IK4WnnG37gB8u+WwbvHJOj9M01wiA5I+aCj3c2M?=
 =?us-ascii?Q?C41JExR7DmjlVITdV4EgvjzrqB8Yht69zmDvZgQY6D6jI8akqnUfi7dy1cnq?=
 =?us-ascii?Q?MaFmJe2Xurrg+zexhyap4pjPHu/ffrz1pnOYMPNV9xnuge6JANntjQL7I+QP?=
 =?us-ascii?Q?mbGMPUSWBwmflpfmfQpvXxm/Yk/dzH69C3s4cMDbyhbTCKHG6Jj7xnyvYFBo?=
 =?us-ascii?Q?fOBGM2Aw8ax5i/bRQUrcO8ragVcavj/xllpcy30PkCXjjRoB/i8ArL9JsLQN?=
 =?us-ascii?Q?TRa+yKARCP//hV68DvE9qREEBXmvcPM6hsekWLWSEoAVenEVhEeCZtEV/et6?=
 =?us-ascii?Q?FcGBEI9bGcYgydSTUxZB5/W+Z7HRkEw61Je+M7XKaYB0TIJtv0CvCJK6TqIH?=
 =?us-ascii?Q?QoMTNLWOBKA+1XPYV3AHxCa56+o36xAKPzFZ1OBA+Qs2A8FzSTLx9zku7d8Y?=
 =?us-ascii?Q?Uc1QVSh2DNtvGG3eb3nG1fYOjupsVvXulHHQlPDQw3qrIeNJuVYErA92YROc?=
 =?us-ascii?Q?Vjf8I4fjHiruPekyOmqxRWYpEiQfnfdC9ob2ywmNkMFNOm2LpW7QOtK3gX+1?=
 =?us-ascii?Q?6cedadB2MLqk2mKRXEwwWe+MQVbKAjnxEC+IkCUByUc8pYSGR6r5Yvzdj4lp?=
 =?us-ascii?Q?gU6ZZS1JYkTT111SDXlvKZjNDd2JJ3oU9xbXYsso+Sek0CsTAo9C5/7jrlSp?=
 =?us-ascii?Q?Yw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 837b793d-ed77-4b45-a8a3-08db606ae3e8
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 17:34:01.2545 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JnwYSbirI0324JuAQPMTLhqaOSjtuE+EXxErFZyMBJYVWgSxadguXIwt5nSr449tWbgvRdT79LdyKIxa0ztdCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9667
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R0H4EjJYTfBGg53wvJVJjAcWFPC/17buEekiJ0dsYIs=;
 b=qEJIEvCtYrQhW9AOXG7flTFpeu7b1vaOQDElTxkj/b1RNBBpPYNIOfangKRsJX5eklefO53gbv0NOKL7DbHOZ9RLZO3ByqwlhHEIxYZAJ5rSy+GQPQbghBXPta4SeDZDiVe4GHbkK/+4Zt4sLgVsoSTE15a2N0k2uqvZtH1JwI0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=qEJIEvCt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] igc: Add
 TransmissionOverrun counter
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
Cc: "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 29, 2023 at 04:59:49PM +0300, Vladimir Oltean wrote:
> On Sun, May 28, 2023 at 10:10:18AM +0000, Zulkifli, Muhammad Husaini wrote:
> > Hi Jakub,
> > 
> > Sorry for the late response.
> > 
> > > On Tue, 2 May 2023 01:47:30 +0000 Zulkifli, Muhammad Husaini wrote:
> > > > > Seems like something that should be reported back to the qdisc which
> > > > > configured the gate.
> > > >
> > > > May I know which qdisc stats that we need to reported out? Is it
> > > gnet_stats_queue?
> > > > IMHO, gnet_stats_queue stats all used by SW QBV and not by HW QBV.
> > > 
> > > Yeah, definitely not gnet_stats_queue, the qdisc used to configure the gates can
> > > have its dedicated super special stats.
> > 
> > I'm not sure how this super special stat will be link to qdisc. 
> > I'm include Vladimir in this discussion to obtain his thoughts, 
> > as I feel this will be required for other vendors as well if we can come up 
> > with a generic approach.
> > 
> > Hi Vladimir,
> > 
> > Do you have any input about this TransmissionOverrun counter?
> > 
> > Thanks,
> > Husaini
> 
> Thanks for the question. I guess Jakub is talking about qdisc xstats
> (root and per class) which can be reported through the TCA_STATS_APP
> attribute of the TCA_STATS2 nest. In fact I've started working on a
> prototype of this (some infra will be required) and I'm currently
> debugging it :)

Okay, debugging done, here's what I've got:
https://github.com/vladimiroltean/linux/commits/sch-taprio-stats
https://github.com/vladimiroltean/iproute2/commits/taprio-xstats

Jakub, is this what you had in mind?

$ tc -d -s qdisc show dev eth0 root
Warning: sch_taprio: Size table not specified, frame length estimations may be inaccurate.
qdisc taprio 800e: root tc 8 map 0 1 2 3 4 5 6 7 0 0 0 0 0 0 0 0
queues offset 0 count 1 offset 1 count 1 offset 2 count 1 offset 3 count 1 offset 4 count 1 offset 5 count 1 offset 6 count 1 offset 7 count 1
 flags 0x2      base-time 0 cycle-time 1000000 cycle-time-extension 0
        index 0 cmd S gatemask 0x20 interval 200000
        index 1 cmd S gatemask 0xdf interval 800000
max-sdu 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
fp E E E E E E E E E E E E E E E E

 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
 Window drops: 0 <----------------- this is new

$ tc -d -s class show dev eth0
class taprio 800e:1 root 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
 Window drops: 0 <----------------- this is new
class taprio 800e:2 root 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
 Window drops: 0 <----------------- this is new
class taprio 800e:3 root 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
 Window drops: 0 <----------------- this is new
class taprio 800e:4 root 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
 Window drops: 0 <----------------- this is new
class taprio 800e:5 root 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
 Window drops: 0 <----------------- this is new
class taprio 800e:6 root 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
 Window drops: 0 <----------------- this is new
class taprio 800e:7 root 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
 Window drops: 0 <----------------- this is new
class taprio 800e:8 root 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
 Window drops: 0 <----------------- this is new

ENETC (on which I tested) doesn't overrun the taprio time gates, so it
has no reason to implement the TransmitOverrun counter that's being
discussed here. But it was a good opportunity to move a (non-standard)
counter from ethtool -S to the Qdisc layer :)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
