Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA88972C875
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jun 2023 16:28:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53AEA41176;
	Mon, 12 Jun 2023 14:28:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53AEA41176
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686580095;
	bh=GtC/Vmxv1J6GlxuJ8MlhSbo08X0n/F2UBTyksGzWp3A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8bHqoHZEkGXexmu3P9IpmyBWNeac0R2zfPrRISMU0pyXcqxan6sdfFqxOgzN7PnEn
	 oSXljYBnf+XYuy0kvzAIW0LUatARYulAQoXEBnoOkXRg1u87UTP0In/Gty37rjEtVc
	 5mfGO6niTVwV86iR8PeG1ALRV51GsU8fNllqlomqHJgle0LxQoqKqt3X9sJQWDOFx+
	 P6ojeut7dSgR6W9sjtsMTWEuSzr+t8ovZ90DQndkXMz9IiGKy8Sw6XjT/Pae31y673
	 2CYCUG+nwCljng4S0rTXTRQ24RPCdezENVs5lDreDwyUtbfAYJYRuAfy2fCbWWepx3
	 FJGjjtzFwhQFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d_GaDn3jLZZe; Mon, 12 Jun 2023 14:28:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 327934116E;
	Mon, 12 Jun 2023 14:28:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 327934116E
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 499DF1BF2BE
 for <intel-wired-lan@osuosl.org>; Mon, 12 Jun 2023 14:28:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1422E61307
 for <intel-wired-lan@osuosl.org>; Mon, 12 Jun 2023 14:28:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1422E61307
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ukLRz4RsEkkw for <intel-wired-lan@osuosl.org>;
 Mon, 12 Jun 2023 14:28:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26990612F0
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur01on2085.outbound.protection.outlook.com [40.107.13.85])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 26990612F0
 for <intel-wired-lan@osuosl.org>; Mon, 12 Jun 2023 14:28:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZoUPhNTbIisWGEXzOwD/hEQCd7Nr03dfmpefVpZRrfAH5hYzAv+Dpzye1GPgP8xQzGA9BOLifqDqWxs0wv5/8uuU5Dw6Zm0NUX6WJS3+MoO2iQNJOYdiP2gR7r73qaJG8euBjsstqHvc7T0Nf5XJ02pOw3Glw3bfxNMJp6ncMi9QxZA4yoQj4RJXi8zMf9r+ynLUgJdAZZ1VzqEvCbAlgx6xiq7JaBL6fuo8QPUfgh6oPKB4e6Rfs/ju1FtwCl7dTT2FwsUU4cqOFEcXe5RfrQf5jzjKwmaIm5ZVPXg5ThUpDpxYpmn5dWQ85zKT4Z+NCs1zJKMzy5c2irXgyNOiWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mB01244eHBlRenhlLKyxrlf/FNsAmoaA4erikXRST+E=;
 b=QnWm+m87ygbS7ubDtv7Lwfn/HATrCOVo2gknVxa6keKSHiCn4DoFeUZt1/OIOLTLQu5n/oSGoY85kjZ95YMKirxiQaK9gFvOD9kVqoS0hfqr1BRf6UtuweRX0poHhokxY4S1WQwJL5iDfPmNJxTWYYN80nl6qqatEkAYweoszB0qP06nQoHo+W+GQ3QbL0shG8NvBmayVsmUyTdjKstIqyzQY27NK/dXnxwDmYtxRdyxi1B3HDb3qpFn6oVdEwoFjKLYVuqNO4k8iGVNwwt1TP3UmS4hhIhe6N6TTZ2A2rRb7JwQ5Dyganu2Sihv7XM12TJocobXz/HIYS2jOz6UlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM9PR04MB8340.eurprd04.prod.outlook.com (2603:10a6:20b:3e0::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Mon, 12 Jun
 2023 14:28:03 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%4]) with mapi id 15.20.6455.045; Mon, 12 Jun 2023
 14:28:03 +0000
Date: Mon, 12 Jun 2023 17:28:00 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20230612142800.76xkh7bshgb6ttwb@skbuf>
References: <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
 <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
 <20230606140230.dyglrbenr3geu3ha@skbuf>
 <SJ1PR11MB61804C9DEFF8D2843E1B10D1B851A@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230609173838.vtki6u5kk6v6gtr5@skbuf>
 <SJ1PR11MB6180B613324BFB5C5395DAF1B854A@SJ1PR11MB6180.namprd11.prod.outlook.com>
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB6180B613324BFB5C5395DAF1B854A@SJ1PR11MB6180.namprd11.prod.outlook.com>
X-ClientProxiedBy: AM0PR08CA0030.eurprd08.prod.outlook.com
 (2603:10a6:208:d2::43) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM9PR04MB8340:EE_
X-MS-Office365-Filtering-Correlation-Id: ae6136bc-6aaf-4b4f-2ba7-08db6b513b47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8jWmEiZdw1lb0PCF0v52/w9DdGGLTP65vyKUZL2ifbjl4PsxOlYlMABZEv7Dwwq0BdloHIchQursMlKm2/hQ6ImyNQERgZ4bHCzM+6l2yLOEy+FX6Z8H12SZA+xAJRowaOG0XSXMCgK61jdvdiYwGbw1YLHp0co6SpNAd0kZpaHDuc8EkaI0xtiLnRogzdJCweCXS95+EzvGvYF6w1RBqprCU8dNq8s26uzVEQ9fHnJy6I5PnodXAq4M+w9N+lGFHRpYtTeur6dskOI4WeGh9MjwHbV4bY5iwBpT6LHW92ZsQheXw1iZOt5HOwXj6wzZkSYfITlHn0wf+H0hiLGsKmwCU4ElUUb4ecWvCEMoRZFgE1xKHBtVTrSi7aDVojKus07WhIQKSuYV2uc2MmbsCzH7x+ElN1ugLWgb7ElQBRG7Uie0SzZR3yg812PDiekus7/nX1L87NqXiNJjDw9TJGhdRZHZCxbDanq+ZRdEHZ94nHRq0+5w2ZQTTHy0GO6nD6jqwIpjXAQMmKRJ3F+5AO5kDOTmKNqob5ZQTj1IOCwJPqJSalWNQf5ZPgnn5QVs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(39860400002)(136003)(396003)(376002)(346002)(366004)(451199021)(6916009)(4326008)(66946007)(66476007)(66556008)(186003)(478600001)(2906002)(54906003)(33716001)(8676002)(316002)(41300700001)(86362001)(6486002)(6506007)(1076003)(9686003)(44832011)(8936002)(5660300002)(26005)(38100700002)(6512007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mGNYvHkWxjh5TIH77GiPHP4PRiy4vVT2vsZHA5bkGgukfqJ0UB9pf5ieIuQF?=
 =?us-ascii?Q?7x7kgi/5gxXYwPo4hjQrUhaYzSuWCK88y38w65j9uwNnDEPuDbf9Aw8a1oDb?=
 =?us-ascii?Q?bT2RiRh4xTErKbBTI1v18sRxCGwtVwFZksZg1JjmeKc8qJhpweD7S19AlZfs?=
 =?us-ascii?Q?xjkylrL4UuWMbl7choxmT64df/g94c+AJzvCadhH/QtwD749YwNFGBhVQao6?=
 =?us-ascii?Q?qyIPBdD9+/UxdYxcrt9xJ9fY0imgJMpWjO5WeLKK/RjiPcSAZwTiVNugR4ih?=
 =?us-ascii?Q?tOPbg3ERPYBAbozPDqWOTQgQFMdJEfFHJCUB2n653n/QRCI4KOvKGrCFQLEr?=
 =?us-ascii?Q?cC1fzeTTrvI9QnVRaZhtBOv/dyXfSHOGXG/7lVJvA6i9xP0mjT/Zb58qO9Ow?=
 =?us-ascii?Q?aBvcsRPsZUnkwpBkyzJ1IFq9Ut4AMudP4DZQ0fWsPdSMbBB3O9XwEvOKf17y?=
 =?us-ascii?Q?04TK2Lz43szdLVoobqw5qAyoR57kNhN8oVtUPDjX/RYCOOdbrHcg5omjWR3x?=
 =?us-ascii?Q?V8VzkqpmtzlQVFhAVwFIfzpXDLPNUJrE1k5aHSuXs0MNELZz8bV2RuPsZpTq?=
 =?us-ascii?Q?ihW0C5vQUF9PUdwLxEYkV3edyevMkkE6rJYhXdJjCvXcPwe3bBOzzRylogoR?=
 =?us-ascii?Q?sYMRb3B2dMz/FqnK8s9904GpS317b9zXN2B+61jESRlyGfmRt5yJ6oap6HGG?=
 =?us-ascii?Q?Rd+SDCc6bOj8cYaPQHhEg8zXwH0bL5JYYjwVEK7M3e3Re5ItpS1prH/xFQrd?=
 =?us-ascii?Q?GcSQIm+P49rj6ltybkzpLbwE/FdX/1C4fT/TEo0q3/gTwfYW/wvvazN9CL2n?=
 =?us-ascii?Q?GCdLx3nYw/kaGdQSuA7GufdZBL54ILUPbIRt4qzmM+PQKVoV+Gs2FALxaTHH?=
 =?us-ascii?Q?ObTunrdGiN6pr8pzAougAG32qjaKeU1FylifDSht83GdAOfV1Zy2JPu0xwT/?=
 =?us-ascii?Q?ldMw7Tc5lNVmG2DcJjnL0OWTXJAuU99dGcMb+LNdSZJY88S6OYNA8CqIi2Q+?=
 =?us-ascii?Q?d4qze3cgF5iM/AzP2/QFoKNJpZGs1uXBOS1AR+INcOkCbwzZqFkDNtxzAELA?=
 =?us-ascii?Q?pR7UwI23mAo13zhDRIDXvT+xqZXw2k9z400TmIfok6pBkOv4S0dBh+7TKQAX?=
 =?us-ascii?Q?SFEUqg2XZ8nbTvVW5pLzPJUrlDGxWr8lPC74o8w8Nc0FgxVp7+BhLncsmsYI?=
 =?us-ascii?Q?irJRk/+20JvqEwl3ww2LngA0NnS7X2NVd33H8M99UN+lUePB7IZlldlJSmbZ?=
 =?us-ascii?Q?nNyVXlD2NbM2D90lU72HW4jDUnC67jooN9CwqUhbFd8wlUgO157huLMyHsLG?=
 =?us-ascii?Q?HHLD0SMAw5R3cqo6X+k2pAAZCDB5s34mmasNQi+3pIi/D/ey1wWI1KfVBVvS?=
 =?us-ascii?Q?co3QLjuKaLx2/UysXIHsgVEBCLk9+eOl6YhqTWVCYm+fWhkO+AuxjtF/MmWG?=
 =?us-ascii?Q?OS6cbVCzD4nLURXhzuPt5MZytaJb9nEBcvUn9drEsaM5QJ8qVrkqaDbQ92Qz?=
 =?us-ascii?Q?fkuZo0EpfM5MaKyioV+UFt91hxChB4QWrytm4wgAgAY1N4tookeghrpZzhnS?=
 =?us-ascii?Q?FMIRbMWd8RN118BNJGpKDLk+oepKmJ6SYmQtGDsj6lWGim706rdtZ8ZcZsEK?=
 =?us-ascii?Q?7Q=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae6136bc-6aaf-4b4f-2ba7-08db6b513b47
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2023 14:28:03.6929 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ebCJ2xjdVb9usvO+fGkJT9Xr4wG4+NAdHwG5F4K2acbqr6erqjjup2F0SWgQTletUh/i7Bvrcypqnlp4dZ2TDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8340
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mB01244eHBlRenhlLKyxrlf/FNsAmoaA4erikXRST+E=;
 b=jZaBbzIBNpADif9sFmAdU3znTSOX6w5II3YPKfp1BkJUOOBwQDS7pM1+SxI8DoJRen9Uu+lGEzFwMLy8prwjIP5AQnXfv0zKi5W8lxP96y15fgCj7AtD1QBozyG/Bk5nNWdY0UPA8+3mzwx3O0HDTEmSOK0O6L6JJYm4YuQkK38=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=jZaBbzIB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igc: Add
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
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 12, 2023 at 03:50:19AM +0000, Zulkifli, Muhammad Husaini wrote:
> There is no HW statistic count for transmission overrun. 
> I agreed with you, when this bit is not set, there should be non-zero value. 
> 
> When setting TSN mode, we now make the STRICT_END flag mandatory for QBV 
> operation in the driver code. So that the transmission is only enabled inside the QBV
> time windows and obeying the STRICT_END parameter of the queue. So we can expect
> "0" packet overrun when this bit is enabled in our case. 
(...)
> 
> Yeah. Only HW could know for sure if the transmission is overrun out of QBV
> Window or not.....But HW does not give any HW statistic register value for this.
(...)
> 
> I see what you're saying. However, because I225 HW has this STRIC_END bit option, 
> we can at least guarantee that HW is handling it where packets from the queue can be 
> transmitted only if they are expected to be completed before the window of the Queue 
> is ended.

Are the people doing the certification testing aware of the fact that
your hardware does not monitor and report transmission overruns, and
thus, that the counter of "0" that the driver reports may be confidently
wrong? Are they ok with this?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
