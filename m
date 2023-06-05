Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F394772265A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 14:50:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B716829A9;
	Mon,  5 Jun 2023 12:50:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B716829A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685969457;
	bh=5H+zvsgW+FOdj17NZed5YHa2D3z4/M+VaGy/kAANMkw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gpE9o2XVjIdf8v4CK6K6/ApDxyjN5Hc9J9joTnBnh3VV/2Al5XQPVwTNDsWgoXhsx
	 U28c9jfOZ1j/20KmrcYik69mdfyYbwXOhroapbXx3hnub3Q+9hYvB1VtZ4chr29HFP
	 ETheTBUlzGw0CbZU5QnTeI0E4Vf58d0XCGJTTv5mC4ISLh+6CoYlUtULLtmEIIDZkJ
	 adkdrQ6Bpi6n3/mZOIxGp9pfQV5a78GyzydLWDWWzYeFea4NUXUf18eXCrkhf7ECeX
	 Pdbn3Mkj9T84jWjB2x0NAs7q2eKSjzgKcDvRKdu8sLgfzH3Dj4JUxyTRgm7bBEXBoL
	 vSpLU5ibZDRVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mA5-REdn44k1; Mon,  5 Jun 2023 12:50:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4898482348;
	Mon,  5 Jun 2023 12:50:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4898482348
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4EC321BF342
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 12:50:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F8E560D9D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 12:50:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F8E560D9D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZoSbqYXXc5ky for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 12:50:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0863360BBE
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04on2044.outbound.protection.outlook.com [40.107.6.44])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0863360BBE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 12:50:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bO1laLGxFt5G7G59sXlMQxhccr0HPyrpnXc12BujEr33xsb2SCgIopiH+oLugdGrb2nK4szsyCLG8uR+nhh4XX5ggD19EQUkjcPL6gwO6K+zPg1t00AGe8VL3bY3aKeApzq5Np8BQuSP2ASJS24rRYMub2XSyLrB/wxnG6JHkkmX/I9EKWCqrBBC/hPRb5pdfUBKY4d7cvVUNoo+aONCZoBezFDooQlV9CPhlVG5J3d5fNp8jyQGS1ApHYrliwlloOUKhYixrIuSpoOd7buCW6KOhqKOEEiVITukM7NENDaBFlDRyXgMwlxPchO7PgfEvNUqXddTDh/Bjbkfacudow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ACbil9qtNKyxc/52fzyUNJQmp8y7pLktl0plKURPPpQ=;
 b=ffKIe+0tP7jUwnwgglrcB2fOVxKDRtwvD/n6uMPv7lQiH+3n6i3KVuzyZTwRkUqGOEfCTldI5PmRssdMrKE7gZOeF19dRlAaGn0P51xcech3jul5nPK8CKsTaClHAmWugFlz5hpo4kvnfMZiXgxVQbFMhtZ3JJoNQdCGlweLxP8SEYCnKC1OC/yBkQG0XmkEka+v3T5cmQYUyN5J1AO98Nz6jClXjZuVHwL4C+GaEpfDIcX6Owy9aJTd8CKfE93G+KPtfIWODpj3wLcKIE+RQsP5qNUiWyOTGrB2CjiF4B5sTb5iPIRtpXioPyX4SsgUlj3jz/5hoa13hoHGo6XsEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AS8PR04MB8103.eurprd04.prod.outlook.com (2603:10a6:20b:3b3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Mon, 5 Jun
 2023 12:50:47 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::47e4:eb1:e83c:fa4a]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::47e4:eb1:e83c:fa4a%4]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 12:50:46 +0000
Date: Mon, 5 Jun 2023 15:50:42 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <20230605125042.lx6ng5jcsxp625ep@skbuf>
References: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
Content-Disposition: inline
In-Reply-To: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR08CA0189.eurprd08.prod.outlook.com
 (2603:10a6:800:d2::19) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AS8PR04MB8103:EE_
X-MS-Office365-Filtering-Correlation-Id: 47f283c7-e6aa-4690-65b4-08db65c37b53
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TPP9NV09U2CQgU37NWu7XL+HV2Stf+7lYHsZ3H5E/pj6EXzteozebBjgj8kKjHpg1P5qVDlwGL8n4yP1d92RWGwvkePf23Vwr2eSk48ZQFMhLBAaEMGHHUEhc3n9lRPJrnvgL8Fvqz2B7qADKtO9IgyY8Pz1Ri/N7n0Jv5GRU1DOgtsYrAmTTPzjOoYFKItXe9NjQLIJomv4jCp4sKFYKuldQnO4UgjpeTqUU2aNvjKR8i6Toa0uVTmjU1Cry/kbvzeyUQjb1MZuAYrwi+lQPGIpeFBSlUhqclz5BHqxrP58zPupGhfK2HEFn0BBrxrkUBFLVb++FZlRJaaa5aTYy8bOtK4A/YDbemRPNvyU6PXImaVJ1KoJ3yXoRlLv1ZaSTYZFGSkjktRe7sSpfc8QJQOUCuIoKnUAFihu4lIyOS9XOq9HVOj6uju9tlw2ZSjwgoTH2zY/dME1wgeM8eP01AtBqb+TK/CCBPRGJxPuPLawRAvMQPaDQjTYdmiCqoZgJMOREA+QEzaAGSE6kILSrIj0Ldb8ZJiiHR8uyTn9Yj0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(366004)(376002)(39860400002)(136003)(396003)(346002)(451199021)(66476007)(66946007)(2906002)(478600001)(316002)(4326008)(8936002)(8676002)(41300700001)(54906003)(110136005)(44832011)(66556008)(6666004)(5660300002)(7416002)(6486002)(6512007)(6506007)(1076003)(26005)(9686003)(966005)(38100700002)(33716001)(186003)(83380400001)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZyasNJfnddlkqMtmmjQtzSZlK4M4212Prff2/AyeANtyHeGiVR6DaZP60L9d?=
 =?us-ascii?Q?VzOOd1y/Jl+uNhevSRfz3pyVSIp2u9uUsk4exeUDD4EGnoeiY9z35VgWFPd5?=
 =?us-ascii?Q?DlMzL4hDj5pIKPZSd/le11/4bpFGol52iT8YlDkwCJGh0ORR/iYcvteS4NDS?=
 =?us-ascii?Q?xc1V0AbXsaDtBx3i8gMaMj3a/JH6oCVYT79VMS8rce2asZ7rq6tmI+ZhMvC7?=
 =?us-ascii?Q?Ru3f/MpWRxAaRPmQSvVP9bei5B35/P/QVPiBYmzSnOnYssW3sapQ9ijGE/sX?=
 =?us-ascii?Q?nl4nnNmloFOpc6SoQD293JN/mt7zagnzquqPBm0azNYwaN+tMA0N69AT1Suv?=
 =?us-ascii?Q?1CLghYYMKKu5O1oh5Z7KV/04xFVx4zitNxJIkX8KgRhyZkxuN4sJ3eo8WRmL?=
 =?us-ascii?Q?PlPPah9/EFVOA4XvYz0fGuKS0vmMe41UWAcVvMA6vqkOkNWRs4kOP0a9ikT+?=
 =?us-ascii?Q?E30vVWmk2ia0Md8R6RaYoWXJW4vAATU7AyDvFAQQu0+lRhj3nH6Lv9FhGdAn?=
 =?us-ascii?Q?eGzp2/L2vlrI3FnJ8EAisOeBqC6iswwbcN3s60PQDRUZRyG5wG8+o2LYkQEt?=
 =?us-ascii?Q?tn4yZV8NOOHb2+z0XCS1UXLU26kwCl+tsJMPGH/8glUNeFzRx+44h2O+CEFG?=
 =?us-ascii?Q?RnCrLZr1gOfmgkpWEGRt4vXPkKLZKFz/ZCwK0Q5tXkvhKeCLfwogbf0YMX20?=
 =?us-ascii?Q?YDouPLS4n53Ked7nFAPOF+jJwWFe/1H5WKK5Yhkx6/8/GdpFTp2ghjHu8AGn?=
 =?us-ascii?Q?t/Ri3sFgcsUZnTcHY40yw6VZjVrEVRKQ0t+Yzvdl0jrtQBTrHTMjxdIVWVDP?=
 =?us-ascii?Q?eJOjg9iXrW0xd1f0ZZVrLhkiUOM9lnAWAw59j/fFD3cHkeTkskNcOfRpsxER?=
 =?us-ascii?Q?E7x8mXgR6kYg48sY2rkMJZUMazRJbrx1ZX4mMBxTsxL0dK+Jo8k5IrLKOreY?=
 =?us-ascii?Q?alksY7SfZjeYq3ZApwTyo4EZIOOw73BbqMz3+xf7TOhl+lb0IUUHlt6kOjzd?=
 =?us-ascii?Q?ki36qvTBz0+QVaXCSCpAJnFhfh++9XjXDM7+3wg+U6YttKOADJ0BIjFipkDs?=
 =?us-ascii?Q?gTAJgVL0QGIE05KOVFvM9VUnZ71OCAR0yZD2OYV5ATqJzNVzbEvvC6229t3o?=
 =?us-ascii?Q?RWK3Vud2JzpHSaawcYJ2lE9BJD76dYyry+eGsld22gfxw6D2n8lpNUX3bCMk?=
 =?us-ascii?Q?Fv9OF8IVAjXiUsRUfAB1GQEXq5i6PMROMck+ZKmDdycY7ouVPRd6yvOHYCIv?=
 =?us-ascii?Q?oD+UqdM9tX+zFWZGAAbIhm7qDTeYEUi9VbuGEakRVv1yT1AQU5zCqyqGexCa?=
 =?us-ascii?Q?TPbNChK5AB/5lBD7yQor0x0E8gdP1UNajIbbRLIK9bSbJCt6L/zzQA9NPAQf?=
 =?us-ascii?Q?Kjfih7biqqY2NVVUJfwfWZa7oRywrEYZZ6Obwojrv6Ee7THFYIqF6n+rGOAh?=
 =?us-ascii?Q?kwqhiEacWpfpwobHhjP56ofwhEI44Ft8e4IVyKZVaSEEcS+4fUPJyBU2ACNn?=
 =?us-ascii?Q?L8e6Qndwbi5eXtqm6RJoWjPM08fqBUrurPPd6fT9KYTowIf4D6TEAU+WIIbs?=
 =?us-ascii?Q?k7dgYpP8aEIKiv+HHLWQwe9jlhtHhQhB4Zk9wL5GcvI+DLK5UjtJ7TBxHbEs?=
 =?us-ascii?Q?og=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47f283c7-e6aa-4690-65b4-08db65c37b53
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2023 12:50:46.7609 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X79p2IcbnWppc7uerCQ114IjUTJkWCF0B3PM4EgMRv+NWBKc7PGbzkmjDRG+orsXHpjzvrDX0yUPRoFimTD6Qg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8103
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ACbil9qtNKyxc/52fzyUNJQmp8y7pLktl0plKURPPpQ=;
 b=Cq0gw0IuQQ5DFFp6bX2pR19YeUeGN78ghLCeqHR0QSqBl3cw4YylDdOsVCP6OGVExR4DOu2jEEomBC8CoVoneB9a3+wWhV1DUc6bN4ubE4yxfB7e2Bi0i1CbZsD/KoKiHO5hN7wY7hSdxbbW8P6/677imeFLicyPFGnUMKUUsbc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=Cq0gw0Iu
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
 netdev@vger.kernel.org, Jamal Hadi Salim <jhs@mojatatu.com>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Cong Wang <xiyou.wangcong@gmail.com>, Peilin Ye <yepeilin.cs@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On Fri, Jun 02, 2023 at 01:37:45PM +0300, Vladimir Oltean wrote:
> [ Original patch set was lost due to an apparent transient problem with
> kernel.org's DNSBL setup. This is an identical resend. ]
> 
> Prompted by Vinicius' request to consolidate some child Qdisc
> dereferences in taprio:
> https://lore.kernel.org/netdev/87edmxv7x2.fsf@intel.com/
> 
> I remembered that I had left some unfinished work in this Qdisc, namely
> commit af7b29b1deaa ("Revert "net/sched: taprio: make qdisc_leaf() see
> the per-netdev-queue pfifo child qdiscs"").
> 
> This patch set represents another stab at, essentially, what's in the
> title. Not only does taprio not properly detect when it's grafted as a
> non-root qdisc, but it also returns incorrect per-class stats.
> Eventually, Vinicius' request is addressed too, although in a different
> form than the one he requested (which was purely cosmetic).
> 
> Review from people more experienced with Qdiscs than me would be
> appreciated. I tried my best to explain what I consider to be problems.
> I am deliberately targeting net-next because the changes are too
> invasive for net - they were reverted from stable once already.

I noticed that this patch set has "Changes Requested" in patchwork.

I can't completely exclude the fact that maybe someone has requested
some changes to be made, but there is no email in my inbox to that end,
and for that matter, neither did patchwork or the email archive process
any responses to this thread.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
