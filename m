Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D4472A162
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 19:38:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0F2A8219D;
	Fri,  9 Jun 2023 17:38:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0F2A8219D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686332334;
	bh=I3zMDM1cTWrpEUxCuBYHtkexfIK+peeQC8JsHjyNOew=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M1dUyHx4zNHpDkDa6A7ZrD5HwG6+lUw3qULMw03UdiuN7+jMrZld8RE7y6OhKZA/i
	 ltmkrXW0e2iRNh/HXFZ2p+GjGOgH7ll0pl2tukbV4Rb2Hc4kHwZntXVworKF0lhc8T
	 PQgBgH0Bn2g2dena3bq5NIfucVVTpy6XR5nz5YqRKEQNv8Dg1x7uwUw1voC8LRqdsr
	 2sd3gIRwE0ArmaxOL1obp8TVrjFK/lvNXBbnAex7BWQvP7WPlR7LUHuDwerhTFbtxX
	 k33R0T16Lz5vlYAYlwVUAhin43naZg6J2Gtrl2tajInZUZC0fM1b0FCzIhYrXNGE+4
	 LYtmGsS+6XwQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rPy2W7DpK50r; Fri,  9 Jun 2023 17:38:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4D938207C;
	Fri,  9 Jun 2023 17:38:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4D938207C
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 81BC51BF37B
 for <intel-wired-lan@osuosl.org>; Fri,  9 Jun 2023 17:38:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6414341F16
 for <intel-wired-lan@osuosl.org>; Fri,  9 Jun 2023 17:38:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6414341F16
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mADfPLGHZWaG for <intel-wired-lan@osuosl.org>;
 Fri,  9 Jun 2023 17:38:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7DF441F10
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2043.outbound.protection.outlook.com [40.107.22.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B7DF441F10
 for <intel-wired-lan@osuosl.org>; Fri,  9 Jun 2023 17:38:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cBvWWI7ohQr0VRqiL7t8hVkS9/uSBgWzK4w+1Ao+34/ANLe9PfP66ap5yDnsXOSepcXEJe3lVf5PMdUvgefGP7sjhJk0YLdTmvhEQjEC/heisGWGtzsQmBo/gPD5rTDcrX8WjTxf4bEdAJ1GWshK5pTWq2tGFwNz9ZkPYQNz84uJF8YLcrSUt725qAaLm/c0N/BotRMas50Y/1TRNSsgb4zlyMNtsUJMJ5qG0AXAxX/CBCGArMF7809IVb98lJscehyyNhHIvNADOShX1WGjnoDtZzPYlN0zLZcWWbVRrhrJ6IY/xMRsemZ7wOHZvQXmnQB/reemhM6IaO5zJtWAaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Llv1EO2Nq0TgSiS5E9s1apCz5yACwt5epi7o8Zm4TP4=;
 b=XZ1KJp7FfgQkauhhMM0oKH3hRh10jLRLtgAA7fwLrflwzrQtTp5bd6Lyf0N466iGXAAIC4tzAHjX5Bx9ymF/QAI4nEcS1wwsfi2W9RCIUXB5LWiz/qQQ//hvzEfU78UL95EyyYzID5zsbs4xeIhvt6XZzT0ifpMyv1LO1wLXrplZy/ldokIZiw02vTCOWtO16fhisE1t2rRSSraWXVCBX9hf0C85whArTU3dQ0xo+DsQfztyHUviNvgFHyqlwH0TCBGlx/ZmfVsOHPTfDNMaR2OREMiXY3T6MW6e1mYVGygWGyfc8eJaC4bV+UcnK12Q7uvlapAiVwRYnxgzLja9yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DU2PR04MB9132.eurprd04.prod.outlook.com (2603:10a6:10:2f7::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.19; Fri, 9 Jun
 2023 17:38:42 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%4]) with mapi id 15.20.6455.030; Fri, 9 Jun 2023
 17:38:41 +0000
Date: Fri, 9 Jun 2023 20:38:38 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20230609173838.vtki6u5kk6v6gtr5@skbuf>
References: <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
 <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
 <20230606140230.dyglrbenr3geu3ha@skbuf>
 <SJ1PR11MB61804C9DEFF8D2843E1B10D1B851A@SJ1PR11MB6180.namprd11.prod.outlook.com>
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB61804C9DEFF8D2843E1B10D1B851A@SJ1PR11MB6180.namprd11.prod.outlook.com>
X-ClientProxiedBy: FR0P281CA0211.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ac::6) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DU2PR04MB9132:EE_
X-MS-Office365-Filtering-Correlation-Id: 5972d046-e751-4d75-6afd-08db69105d44
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: glYMSS2SdeAnWhyqyiz6e6hWI21mZjcCdttPAsbcdBx5tCv7CapasZY1uCI88j91hn0D3mq+nPMdAYKI3HMhrJDjq1UVFaJ+aaVDE5il/8rLtqDCC5jDLJrGay6D3PGTNKqIG06sGJoXkd6ATObv0RA5d9E1EpwXBnbsAp1DcH3a57eMOPgK+qJ7LNXEzXjx9i1yU/a4RMKtBp+CUZjOLI86TWhmOgHa1P8vJzNOr3yTuFPpz12hbo4Jdvcc4z9jBnrhRz3snFadB6Rh6tQb7ailsmeu0eQmkcSGsmXROFBQXHLxKOGt7ep1v60tWkadsdmZita3eu71DWSEQulHH//6WjopgdfaLv79axvtsBz5c5lQxFMTZjugVJGbrAjSt/y45zcDHrVJk6CL2fFooWrQRVNV42qhpZP2Rf3pflm7mcS2hBDR3lZY4LLvLxAQ/HQ7oNJRayNeNA8wNDrXjm+nnZhQVsU99miKHslsTxKDUplpU/+oYjS5cI8EZkOvUqFjqaU7CILZu8CpvxEwyiMVVCIRJ2zV9k0B2hs9EezGuH8XM7ZKejyKS0DNHQlT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(396003)(136003)(39860400002)(346002)(366004)(376002)(451199021)(66946007)(8676002)(6916009)(4326008)(66556008)(86362001)(6486002)(8936002)(6666004)(66476007)(41300700001)(316002)(44832011)(5660300002)(2906002)(478600001)(186003)(54906003)(38100700002)(33716001)(9686003)(6512007)(83380400001)(26005)(6506007)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rd9B2L2q7fuIMDYrYCln+CGoLnuAQfZVt1Q75oMcB6/Y/w6zEycJf/KXH9ow?=
 =?us-ascii?Q?W0Ak7EtBuet7EGFoMRhfk1GLHfYMoGj7mINC6Wvdla1AxeBdvi448jYOOnRZ?=
 =?us-ascii?Q?Lj6Va4d1TEEisA63ldnhVfwHi4BuWc/kMU6GXAs11oyz0QMZsKtjShRN38KU?=
 =?us-ascii?Q?6OMxlicrdhlJE/S6P/+AYTEuzYHJQATaFq21PznJHHL8BsUudhdqMj32Ccjb?=
 =?us-ascii?Q?QWPbrv//kRgK8pJPm1bbzA9G8VXbv/qw6VGTG+1E5kEFRgDqxC4OB522Lgdj?=
 =?us-ascii?Q?nMR1HCKX5SLTlNQuDLgmS1tdPAl7kNTfflnmhxqnbfUiIcz9/a3PeEhU2EDK?=
 =?us-ascii?Q?e/MVHK4llmi9Qz4z/8JXI/0MqIebmyvETGTPmAjiul6DCoONCToq1xUFxocg?=
 =?us-ascii?Q?JDl7XyVK8Ocw3FixPraJjex98DVmoo/AhYU1a84yZOJR8R7OkVxJJzTOWnFx?=
 =?us-ascii?Q?lHXl/9tcVvzgbkQWNQa6QIof5x7/2BpKcC+Ov9jKjzLBRU+v3GEnG/QF+ONx?=
 =?us-ascii?Q?VryaUq21VPu8/HYImlZBmlUDBsHvKZ5Eva3zosSz8HgDaREz+5qDxiwEybKi?=
 =?us-ascii?Q?j1TETRD7XFmuU0TNp6AUdOm95MNynMP4PNuMwic26/I84vOcTJjee9Xhrukm?=
 =?us-ascii?Q?KJzkfvbFa10VI7AdzEuHP2LhhKqFqZkGAcXhI4pPJgDbZn0lzLu4GP78zlVG?=
 =?us-ascii?Q?IH6BfbPW9MO4JM1Aqwd69mDAG7JlN3dnEDmldBdcHWD3NLr0qOLVFtPDMLh5?=
 =?us-ascii?Q?K3+OUj0u/Dj6SvXoPcKyGWLJ9SsubH3vOrYJ9vtHwCzcXT3MsLcVFmK0KQiZ?=
 =?us-ascii?Q?dqxtww6gQ9HTmy54ooQOtfrKh6oLPBtEa7vaP1pUJVDAxf4Dmq3LqvqKbpHZ?=
 =?us-ascii?Q?xMRIz9iIjjZLxGjpOuPamtYnXgSRsd+x/JlbyOvNPEbZGChdjTIChr4svmS/?=
 =?us-ascii?Q?WSnWJXZIa5HebCrjALvRFwnmMGS/EM7DXtQumvgpbN/1pmXSyNIY3XRZSLZX?=
 =?us-ascii?Q?pA+cnCO2JuAIcDLGAsRPIO7RO6Jmzc4THLeE3Td8auVqVs8M8sm8dxPPw/MB?=
 =?us-ascii?Q?HBWHkdHw9TEyEpDttnGMFzX3QFXWwY4UFq53AAtnSO7MOwYUclpDBXUOxKB+?=
 =?us-ascii?Q?p47PBGyngYrTN/amuTvpXSDM73TXNDMfJ9dpJe2ZanZ0ETKK09EgyzfKNzuw?=
 =?us-ascii?Q?SON2sY5FIDNoL0Cg9VTu1idERpzFPuIaiiqD2YqnEUyfBfp/uFXLekZjFR0j?=
 =?us-ascii?Q?fChDdZt/LlKK1xx1HzwmXdRnRHEvzpY5xpSWvgB+ZpInQSfiJVUdtcW4G1a5?=
 =?us-ascii?Q?7KLBvyArVMSgiWUjzKoenJkn0CdhfvusZcfzsOhTvBzgAKVn3nuA0lMjwMZA?=
 =?us-ascii?Q?QDW3qYXGjJXnodKAox4HugBRkNm9yd9Wk4EtYTH2vvB78tmbJTrDAAad8Q1W?=
 =?us-ascii?Q?1kjLFea7771L2sxHNZVWe9lSexNw8+Afks0MyQ8Cnk/mtiAAFQFUYWMtO1UM?=
 =?us-ascii?Q?HC93Nsz/gQp2i00c7W9VDJCyainfUQ7xNUvbLWpXQ5nPtJO9g+RHV2L6Pb6r?=
 =?us-ascii?Q?Ua9j9laaVoahQ3xf5JdRAHZB0l87p1Ju7EZyQnFBOhSyaNiLeueGAezc5N70?=
 =?us-ascii?Q?Vw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5972d046-e751-4d75-6afd-08db69105d44
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2023 17:38:40.9942 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 33jgc+RQ5h1orx56+RzIEc2zJSGYBTbr5Qu5qjVudlYS+ZQHaL76YCnA4jCo1KhZlm72/GAQrgswRwcK/KrmrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB9132
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Llv1EO2Nq0TgSiS5E9s1apCz5yACwt5epi7o8Zm4TP4=;
 b=NsPRZAbHZxpOJY7CWMWPG+3KJkOsq6wnOoYbpoNVf4Gp9Kkxdt+gcPoT9lKKDudsr8rWxLiNISs87IPcqbOkoe5NQ3ILlhHJBhstjIo/rWJuKbKBYcyktemoamn3wcxMI2wnB3Xo630FVf4b4u/Z7smTl6SnzNiMKoF0xdgAgQo=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=NsPRZAbH
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

On Fri, Jun 09, 2023 at 05:10:24PM +0000, Zulkifli, Muhammad Husaini wrote:
> > What is the purpose of keeping a constant (0) in a variable replicated per TX
> > queue? It is a waste of space.
> 
> Purpose is for the Certification conformance test. 
> This is used to notify the application (automated) if any packets are currently 
> being transmitted on a certain queue during a gate-close event. 

I agree with you, but that wasn't the question. The question was
"why bother keeping a constant (0) in memory storage whose lifetime is
the driver's lifetime, when you can just report those constants in the
taprio callbacks, bypassing the driver storage, as long as you're not
going to read them from hardware anyway".

> Since we set the Strict_end bit, the value will always be zero.

Both statements are true ("we set the Strict_end bit" and "the value
will always be zero"), but the deduction is false. That's not why the
value is zero, the value is zero because no one sets it to any other
value :) If the counter actually monitored a physical event, then I'd
have agreed with your statement.

> > Also, if IGC_TXQCTL_STRICT_END wasn't set, how would the window overruns
> > be counted?
> 
> Currently, there is no log or statistics about packets taking advantage of STRICT_END
> not being set. 

You may have missed my question here.

Does the hardware have any reporting mechanism for TX overruns?
Irrespective of what the current driver has or does not have.
I imagine the hardware should have something like this, since
IGC_TXQCTL_STRICT_END is an opt-in feature, and there should be
something non-zero to count when that bit isn't set.

If it does, wouldn't it be better to query the hardware for this
information, regardless of the STRICT_END bit, rather than just assume
it will be zero?

Due to things like congestion on memory, I suppose it might be possible
for the NIC to start the DMA transfer of a frame in time for its timely
transmission, but nonetheless the frame transmission could still overrun
the window. Only the hardware could know if that was the case or not (or
a hardware TX timestamp adjusted for the frame length). So what I'm
saying is that there's value in reading this from value even if you
think that STRICT_END should be all that's needed.

For context, on NXP LS1028A, the fact that the hardware (ENETC) doesn't
report a TransmitOverrun counter is an erratum, even though ENETC also
has logic to stop sending packets early enough so as to not overrun the
window.

It's a bit of a leap of faith for the software driver to politically
report a counter as zero and for higher layers to trust that as
first-hand evidence, and this is why, at least in ENETC, I chose to not
report TransmitOverrun rather than be confidently wrong about it.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
