Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F39826A5EC0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 19:27:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 869E181ECE;
	Tue, 28 Feb 2023 18:27:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 869E181ECE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677608840;
	bh=NFrcMJFxORrg7mVSA+mFtwtx2ZP3Ex7OyI+DzP1RCuA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hVKGvVP6e8vfy1pC9So7jGLDHB63QsE3q4YtSa9iDOmC/EjWq5DUgnKvCKm7Ak6q4
	 H7shdBphA7hkqBbQLlrvchV0zR00k5eAZLKt/X7xMK+cE3ghLJN6opxNJ/y3aHjwPl
	 e5bvinIYiIKfxqMUqSaOQus0zwzEq7jKxsbtsZha/RMc+dnc6Z53OFoARpUPIcU2Xz
	 YRnZqxX4PoVqtwvXuP7h2thEX+uCHh6+ATCwJjdFzCrVN3ciShdshD38jXoMSdMS6g
	 4VpM8Nc6zZj7OPTKd9VPqEBreLhPt8zi1Q3ZNR1vMzfKXr2yEsZ++60JkRjdoAkR38
	 OWjzCeweYanNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xDLH0Q1b_2S0; Tue, 28 Feb 2023 18:27:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67F3981ECC;
	Tue, 28 Feb 2023 18:27:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67F3981ECC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C8B5B1BF420
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 18:27:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9053840BEE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 18:27:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9053840BEE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v0Ztk73AI9Qe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 18:27:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C87A6400E7
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
 (mail-dbaeur03on2053.outbound.protection.outlook.com [40.107.104.53])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C87A6400E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 18:27:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VosYR4qtJjTFpldMbOt+dB54FzQNB+YwP6DqlTsuJfpIic+A0xAQFbD9b313padMRlqbRWMLUz6tB9Lcmxbw2z0EOwCZLs4FGhCNKTn4O/yb8TWriuvWg1jdNlyO4gbpwpUXTDUcRweOuZoy82l1/Q2E6ezuIJbpzoq8r1Mwt92houdWB3qzaokCyw6HI27yErcPY3QsPoxVAlHt16NO8kEdHUq/l+HGmoZJ47oOfVeG3HvtUD1dtMCUEuTeS2el3g73fXO/o+18sTL8Ua5rDA8WaWYmcLao6v4q6TGJu8+nZ3lxp4Edam38SeJZWLsi0GoQFeJS8ihZ7F4POCjRiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oAqViIWg7Xsd7HkMbeU4rgaBFvAzKXyXtuc7id72Lh4=;
 b=m9hPKntwlmZRJu3eV4YZUBmN9W4yjEpTVLwvwMdGfb9YSK9NluJgjfkJLhiLnh00g+MHZ+fxJHafatlvrAr6gXc8igA5K5ektOXevX/lCeghuyA6KOBWGe3hrhbWU3DPaiui0jsl8wHfXi3NdNKbv7+6pdA4nvWLu1l0Y7Q4tF50yVijlVTWMmpAyBZMtYivdouiFpgVhZMdAZ/fj5V/saYx67KYqs21g93Ne4NakzbJ5M0MWU5QIdjOxNXsiqIL8OkiE7BxxBDUU4QUEbsNK6L0OjE1LMODcSGIBp2aLsZLTreBdXWtVnve9nH8yEPvLKx6wuJOnYtH4oCPiMdUjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DU2PR04MB8903.eurprd04.prod.outlook.com (2603:10a6:10:2e2::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Tue, 28 Feb
 2023 18:27:11 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::29a3:120c:7d42:3ca8]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::29a3:120c:7d42:3ca8%4]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 18:27:11 +0000
Date: Tue, 28 Feb 2023 20:27:07 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20230228182707.iajakkix4mcer62y@skbuf>
References: <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-1-vinicius.gomes@intel.com>
Content-Disposition: inline
In-Reply-To: <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-1-vinicius.gomes@intel.com>
X-ClientProxiedBy: BE0P281CA0017.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:a::27) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DU2PR04MB8903:EE_
X-MS-Office365-Filtering-Correlation-Id: bc4742d1-5be6-45fb-3a12-08db19b96821
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tyLPmf3Yn0eeEhlmBxL75wAVRwduj1IWegBbgP40EBxHfJ6GAVY2UfPMQ3gJpsqzaagE6N9E4lKMYZx2yCto9Il4b+63FXtBfDUuChBWHd9na/NRe0CgxCJrSgaAAKqTKOBHWwm8G7L0iTWu320rkOP8XKf5BeTTemknqBaVtGcV4o87G6MTgPwtdy+2DjX/kpTd3LDSdOEIRUqAvuPX8vsCuN0XJcpYIiSVZ6BOex+XXdnjMng3u38tjpMioSAlWxu0s+ZfDRp6HJyMflA4CFgUfG2mdTMcy8PgS7ZzNFGlqQM33m6oBpjD0/aJJA113eKWoI8Eo0TMxJX9EliEHqCHjnXQelYlkQYIANjpvaD4HpwEh9zjAu6L2sbys4a2+JE/e9zfoTJQqDeajyabIB/xKMKYC9Ot/XGL1zhZGlqPaALz5ftyKPgULhqgzyEcV3jWv+xwr1oIsBeOvlohLI9W7qJpBkkoh6uRC4VeySulvdbQ7gYOZ7lCTwTNlQntW23X6CKQ9ofFvVSO8utRGNOYx5g3vLrbKdPdJtqQUmWiHnfAvgUE6cK6uXV8GM7IiI1VS7ib+OFolAfsuHZwqb7bCqvfrUSceZeLTHyTD6rKU97DKqqYYPBGG1pDV42H2/eqE7l3PDRE9GQnLze6+A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(7916004)(396003)(136003)(39860400002)(376002)(366004)(346002)(451199018)(86362001)(66946007)(8676002)(66476007)(41300700001)(66556008)(6916009)(5660300002)(8936002)(2906002)(44832011)(38100700002)(4326008)(6666004)(6486002)(478600001)(316002)(33716001)(83380400001)(26005)(186003)(6512007)(1076003)(9686003)(6506007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Q+y8AYkNooU/ma08R2p2143U4tk4rYV4IFksODJjdWQMMdf3md54iq3+xfGs?=
 =?us-ascii?Q?OfnoJzWBx1PF1OnFlfEgP/BpLfGBSdEncGeKKTPqUlfzV//W4LMHqslBvncQ?=
 =?us-ascii?Q?xcCM7CPfqjjhXioWoEyOaJGluVtw1Mz9jZUb1GfiG3DxmlnUE+YuLF2utxyN?=
 =?us-ascii?Q?afHV6kvqL4jZEDjaQdQSNF5/hzr0EVwlbNfO3zgP75JzuwZwy/WuknSseDlW?=
 =?us-ascii?Q?upnK/6efdkCM/7u+ar3HBkrYiEFNtKoLwCEowFwbJZfsmLu7jnF2TsD91k2q?=
 =?us-ascii?Q?e7PlGsLJ3Fth10WQfXTjTfxGkCH0SDnAkP6lHdkniOB2e745ogEQpjfAPQqL?=
 =?us-ascii?Q?zxG4/gv/AK7h+Nl1dkQpCmj8tXq5KETLe4sCSD1PcvF1d4O6VXeEdkPBsoY9?=
 =?us-ascii?Q?89JriFwsKs3xtOnCR+GVKfVC92OSTJ6fU9a+tGpXIT5XvJWDfWgIkZzHRTFy?=
 =?us-ascii?Q?epUO3ZmQYIMNIxgdydpoPyNDb/hHu2m38NUBRgnh+1rrpciB9KTaW4kfmvHv?=
 =?us-ascii?Q?LzL81a0jtGek3boIk23wveqX7yubmGJmWA67pKoxEnePFc/Px7oo2l9rx93l?=
 =?us-ascii?Q?A5Jyphwh4NFXDchHdI3SjP3Y+y/OUrX1TRcxLNf4iXC9BpDF+h8rBnH9JoEr?=
 =?us-ascii?Q?TnyaMJNVLt+zz/CNw4fquCT2UDXY6Rj/5ZKMh27deHW+YOSvbz7gWYMdSOTm?=
 =?us-ascii?Q?4Ms7igqwfrpvD+vTbpR0nyyDmuo8yTQJzToegmwvGORfPDXmtxahIS0cqyUh?=
 =?us-ascii?Q?cTKCclCPXgt9S7+SeKVDyFoYZz0JvYpQiFOYrFSHtEztHQ6no7nbW2dm44fp?=
 =?us-ascii?Q?fc6wcuiFslTFj4hmJ2G8N4hM6z7kuaXKusdcUeCY4jLkFUHin9I6C4OQWQpK?=
 =?us-ascii?Q?v2WG0jkehx+Qo2Paaib5EjT0QGkKIErMWRUgbVkQjy4JOI3YUSBfTkeSNGwk?=
 =?us-ascii?Q?NNsrn04TA0jW0BCPOYku24CuKPJDzWvHIYJxzaOdTWDKXGMpxlwLBe0qeomM?=
 =?us-ascii?Q?j/IEIqzVS4REgKDQtNsKhQuC0H/ZlEMvF5MR5jvXTsPP5R+De4YpFyWZNGv+?=
 =?us-ascii?Q?/sCoaKHQ2fgwKKZOA8H2Z27etkTK4U9C2PeMF8wBZ/EnLFqCdEvSEkpssq05?=
 =?us-ascii?Q?9ORPLKo1c3OKCs9ZaW/mABO0vOBqw2IAcb3J0wCNJrD1Lt3C2vOgPAu518/n?=
 =?us-ascii?Q?qBZd/SK43dJ4Idqz+YMTXcUDtjGwUnprB0ygm3er64ApH++66w5X2YnR0DFq?=
 =?us-ascii?Q?SQ6tkM1CB2r6BlIekq2vMGoNFNiAZryKVLC+DRL4VrPEnR0WqhHg5G8YMmXn?=
 =?us-ascii?Q?BsY+xyteJMO7LiD3uErnCCkuOdND1BJNiVtdrf5dp9tzwaP/73BbASRwmUAy?=
 =?us-ascii?Q?TKXg5D25oeTJcMVGn3B5WeBGH+cK8/eYsWj4HVKarYq6C4hIpen8KfCFlCPd?=
 =?us-ascii?Q?+PiCAjEJG0oXnVCqPjFzwYo6QJ5YGmQIaMOq2/Vzpl2Az6ME4jHh+2AxGyRq?=
 =?us-ascii?Q?vYC008tv4zXuPSRLgEHPj0i815gtixQ+wfFPrx5PPqwLCg09yFJowkaSHjIo?=
 =?us-ascii?Q?lDp4Z3msoopRl24QY0hM7UOf7bRQqdw04W61hun1eKWteJCputrL1mH+KCAR?=
 =?us-ascii?Q?BA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc4742d1-5be6-45fb-3a12-08db19b96821
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 18:27:11.1115 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A0LXUS1iQbAVjzD5/MZ1STQkDmoY2mUsQLbAk75lk2G3Uk9MOAenQOOknkfhcnBarln5DzCehPOgj8GOeh8U4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8903
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oAqViIWg7Xsd7HkMbeU4rgaBFvAzKXyXtuc7id72Lh4=;
 b=saVUOtfDQXSUdUxzw2oBYYK+pq+S9UVsSqGqsjNxX29nSYbkVIkyOQLdOClgccBpK/8YGWRyKwDV4erdrJK7n2z+hSxBE3m9JVNeZOOvVfX2/N6uG3FtTgWjeW3QlzzLEG9MQ1rdPaV1zbExkjoEKeN/EWw2jtQcXFf2hEthPNw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=saVUOtfD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 0/3] igc: Add support
 for multiple TX tstamp requests
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
Cc: kurt@linutronix.de, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 27, 2023 at 09:45:31PM -0800, Vinicius Costa Gomes wrote:
> Patch 3 - More of an optimization. Use the ptp_aux_work kthread to do
>       the work, and also try to do the work "inline" if the timestamp
>       is ready already. Suggested by Vladimir Oltean and Kurt
>       Kanzenbach.
> 
> Evaluation
> ----------
> 
> To do the evaluation I am using a simple application that sends
> packets (and waits for the timestamp to be received before sending the
> next packet) and takes two measurements:

If the application never generates multiple requests in flight, then
this evaluation is only testing patch 3 (and patches 1 and 2 only to the
extent that they don't cause a regression), right?

>   1. from the HW timestamp value and the time the application
>   retrieves the timestamps (called "HW to Timestamp";
>   2. from just before the sendto() being called in the application to
>   the time the application retrieves the timestamp (called "Send to
>   Timestamp"). I think this measurement is useful to make sure that
>   the total time to send a packet and retrieve its timestamp hasn't
>   degraded.
> 
> (all tests were done for 1M packets, and times are in nanoseconds)
> 
> Before:
> 
> HW to Timestamp
> 	min: 9130
> 	max: 143183

what margin of error did phc2sys have here? Tens, hundreds, thousands of
ns, more? Was it a controlled variable? "HW to Timestamp" implies a
comparison of 2 times from 2 different time sources, kept in sync with
each other.

> 	percentile 99: 10379
> 	percentile 99.99: 11510
> Send to Timestamp
> 	min: 18431
> 	max: 196798
> 	percentile 99: 19937
> 	percentile 99.99: 26066
> 
> After:
> 
> HW to Timestamp
> 	min: 7933
> 	max: 31934

so the reduction of the max "HW to Timestamp" from 143 us to 32 us all
the way to user space is mostly due to the inline processing of the TX
timestamp, within the hardirq handler, right? Can you measure how much
it is due to that, and how much due to the PTP kthread (simplest way
would be to keep the kthread, but remove the inline processing)? How
many reschedules of the kthread there are per TX timestamp? Even a
single set of 4 numbers, denoting the maximum numbers of reschedules per
timestamp request, would be useful information.

> 	percentile 99: 8690
> 	percentile 99.99: 10598
> Send to Timestamp
> 	min: 17291
> 	max: 46327
> 	percentile 99: 18268
> 	percentile 99.99: 21575
> 
> The minimum times are not that different

right, probably because the time to do a context switch to user space dominates

> , but we can see a big improvement in the 'maximum' time.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
