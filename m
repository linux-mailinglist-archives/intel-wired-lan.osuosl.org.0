Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C5D72E782
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 17:41:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14D7B81E9C;
	Tue, 13 Jun 2023 15:41:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 14D7B81E9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686670899;
	bh=8oqJWxGceUaFct6s734y+ZBotu8kuunpIVMF0xSBYIs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T7z2Qi/axnFr2ER8SuuGjAqmmhe5rrriI7Ll5RBHU442UmTF7jnQlvnu+kvWoGv80
	 jPc9mjh9rucZwzWVrfW1NgNa1zh0JD7hHhzGKszPZXhC9yu73tI9cIe3qnSSXuxuLN
	 gjHiUyl/4vLiUdqz/k1VAsviSO1nhDf0sp/gdDcaYbEKk4Qc0/+XKtsImgSZRBhdbY
	 TaQAsjSltbI1BWVS5/+MvehkMcZPKTxgMAaPH5zJ4joNAs9vtoW44WqhfOPCZe/MXH
	 AxTdvtcK819QmR3uh/AUulYh/Cg8KY2erig/Ww4JnS7StNXRONC8OAUwJm7LywKOI9
	 F6HO7Z0TSY+xQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9npK8cmPAFMe; Tue, 13 Jun 2023 15:41:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0BA381E97;
	Tue, 13 Jun 2023 15:41:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0BA381E97
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C40D91BF3A3
 for <intel-wired-lan@osuosl.org>; Tue, 13 Jun 2023 15:41:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9A5714029B
 for <intel-wired-lan@osuosl.org>; Tue, 13 Jun 2023 15:41:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A5714029B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4FqtMCNIpeL9 for <intel-wired-lan@osuosl.org>;
 Tue, 13 Jun 2023 15:41:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D22294013C
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur01on2074.outbound.protection.outlook.com [40.107.15.74])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D22294013C
 for <intel-wired-lan@osuosl.org>; Tue, 13 Jun 2023 15:41:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z7ZspFh1Rd/b/7ZmeHF2H+7SzxUbi7VN+3iCFoA1/yXekUl0p1l8lTYzpC4ZYU/8AIkdvf02WjcXifrsAPAbqCmm3jzXdPhkEYvCPdhocwvWreMtuWKie2sRueSjXYESjriSkVJRwQYTMIBb09tlptB7zUvMdu5XYRi8uE8PzUxihVWmj6WUkFpGg67tVhVSdqrg8Q9YLZAi/VUzK5e8tBLGk3Bvc7YXI84Gp3gxsEchWcA1Wf1YRCu9Up5FBOtrinaxF3PMnEVHZu+UfJ9dLbr8EzpTvbojq1ChbCR4ntEwHbIc3PKFy8luZZ/PeGKEYrcp1ykc1OlsJRpNdZ06oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cf6cnx7k2FAf61XrPtg1FKf+wJsxnX84CvohNvnrCJo=;
 b=PoKh7H9e7w+svsly2h/iBVryG6wHUqJgsuxuJR44gIpi+TllahcOqUTrg/EnyQ7ve/d/i69iQsg1Uk7dHONEbykhe2rW8I+VYhCT0GAIaT6MtqbXKEzMFbLAK/UCMwdn1yvcuuX/ZoIMsomgaiO5kAvA2eBX6LV/jHU8RpBOSaHfTEMaweWwI6jTMY7B36A8evneocEYQeCmQoGDzsE1fxoqoT9oiwXPhUY/xsxpSANtYSxNNj8pRAYqsufzEWKN3vL7t5LqoEuQAI+5V7Nk4YVZvCiIhBY9OKAOlJ0smRRMThX5+YVu3/Q/TaP7SHo4Zuyz9+iYovWPhKVlIgkO2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AS8PR04MB7590.eurprd04.prod.outlook.com (2603:10a6:20b:23d::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.38; Tue, 13 Jun
 2023 15:41:26 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%4]) with mapi id 15.20.6455.045; Tue, 13 Jun 2023
 15:41:26 +0000
Date: Tue, 13 Jun 2023 18:41:22 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20230613154122.d75fclckvwxlapwi@skbuf>
References: <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
 <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
 <20230606140230.dyglrbenr3geu3ha@skbuf>
 <SJ1PR11MB61804C9DEFF8D2843E1B10D1B851A@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230609173838.vtki6u5kk6v6gtr5@skbuf>
 <SJ1PR11MB6180B613324BFB5C5395DAF1B854A@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230612142800.76xkh7bshgb6ttwb@skbuf>
 <SJ1PR11MB618092B287B39503DD2C5873B855A@SJ1PR11MB6180.namprd11.prod.outlook.com>
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB618092B287B39503DD2C5873B855A@SJ1PR11MB6180.namprd11.prod.outlook.com>
X-ClientProxiedBy: AM0PR04CA0061.eurprd04.prod.outlook.com
 (2603:10a6:208:1::38) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AS8PR04MB7590:EE_
X-MS-Office365-Filtering-Correlation-Id: 638686b3-49c2-4589-4c86-08db6c24a5c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8Sk1wyxGxVoWxu4yyUBw7IT0UgKMuHiTFzCedpo6ETq+8JTvxdk0jYu6krIFnL/mCKyXzhReDA0OtSZ8rI6tIhIBByHHbqnkRVEJ/ljlUrYm+rpjEUhH5qNahEEju0avsWQYL/pG8xKoYUSzg2a7LjnSF/BWhdp+iBoWtnPYtEga3argiCJ66Xz8tLqJA8cNl53Kv2rFomxYOmzorxWvnQmt0dbUiql8iehFdTlG2Hp+/TYD7YW/aWnnZFAE2hqDfwcFpUItg/2x5g5chPWYv3SLilijvZpvSjJQIafRB7eI+VfX1UpFOfVKFvp3sR46jp3o2LFk2E3pFmpq48mjb0qIUlokpJYEmW1e6HzbDj0apKilE58uueH79GhIsMWp4a+DNVZ9oiycqZf6khxoShSfMFGG8d5pOKQk9Y8rSbyB+4BMQUN4YAahFg7RGvQlJAg4irzFL8vzWyrFCztEvnfQl9zUbavCgEpaTVcM/XOXN5znDidQE+E4/WFn9DnF2Du+Xr8gr7yL/ZWHpgsZTR9Bbqj/yw3GFZ/hJrIXJRzrIeOipbsYOywXwM5yWpAC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(396003)(376002)(366004)(136003)(39860400002)(346002)(451199021)(33716001)(2906002)(4744005)(5660300002)(44832011)(86362001)(6486002)(83380400001)(26005)(9686003)(1076003)(6512007)(186003)(6506007)(66946007)(6666004)(478600001)(54906003)(38100700002)(6916009)(66556008)(4326008)(8936002)(8676002)(316002)(66476007)(41300700001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GGCbv8S71aY7sNErXz0oA+RYJrgYjSaKWCJVNqKmDHPdWtWHJEJDGalsK5Wd?=
 =?us-ascii?Q?as4Vj8pg6JgbW87ELTeSnnY1NNE7RR2mBKkIy7uqtOiAASRqKIIMfRVJ4GLp?=
 =?us-ascii?Q?H+YCUR5FJ2XsrxFJXT2BAmfwiSoxNrkiR06lSA8Nb+Sx4Z3UQcElq1Do+ar1?=
 =?us-ascii?Q?kTXRIyCzGb5tQDS59VHpB3n2ETVQeyggdlP6R8qDX6+E2elduEST5bT/0Bht?=
 =?us-ascii?Q?L2ZLGPvk6Yl7gruNbAVSx9lvXb2bX/grQPsYQrGDPYQ6KZ6IGYr7c6rJT8MC?=
 =?us-ascii?Q?gNThWmOxf8ROXe9kxXK6CTiyei6QInHzjaHNuL3vFN06UWYnyKCc3s4klmf8?=
 =?us-ascii?Q?YrEEy3Sl6nlbV/ct2TLoMEEO0tofN1SAeFAdIKCG72w22OKXwqHstvKtbotn?=
 =?us-ascii?Q?Mvq4ANgOgveWaKFHrDzRWeEHHPEjAkay+S/DEIit71wrCqobAmLyGd2i8bDV?=
 =?us-ascii?Q?OqcVOCJjGZ8lLtA3jlmsC9F+NU3B9l8Q7JqX5hsfsvg05rypzKa3R1QOl/1U?=
 =?us-ascii?Q?SGFcroYsHNGJak0TDCp5ui8/ZMNTArC28kbzrfjTl2maGClGFIwRulBHV3Us?=
 =?us-ascii?Q?ojj1pcHGt30dMHJ4snr2gq4m4+B8d8ajkidwaoI3HK9DqVYJRU/LpErv9Ytl?=
 =?us-ascii?Q?/owB493zkb7RQFNUbWSjvoSpi1b4rg7SQ8S0c7CiIjONuMOtzB3wJixMLN5F?=
 =?us-ascii?Q?UOoCfRFX9Pc/xCUkTYq1PcJQHnspSFV+dX8rfg/x7Cv+oiZrg47FJjgHJUmM?=
 =?us-ascii?Q?DAWbHtgLgATnKCIeLroHSafM4dhzob17iCQYPExts40P2HwAG0bZQgdnGJDu?=
 =?us-ascii?Q?ozbvhIefdAPUMfBPwq70OQxR6pzKhc8d5xDw9hJ//ShjVfzi6+HH2kIuINmx?=
 =?us-ascii?Q?nd7mdIueeWkB5RrAkN8bMaAMmmxZ9wGD4rgdsfeduJ7l7Kx+/iyWv7iXI58X?=
 =?us-ascii?Q?MgCtj//lHYuUW3ZpX4Gp5HQX2R1JNbSA+mnadaNEkHF7pSijC57qeJgus0bB?=
 =?us-ascii?Q?uQHWzZShWJnfYXw05unwwsIMu1l+smPyqnTZYGkFjCsY2Ui93znUlls0ebp4?=
 =?us-ascii?Q?PkaC4hBIbGZv58v4WotBgT18XzT92uXi9mA1+pBE5kNZnm0S5Y4nUH9UYCgE?=
 =?us-ascii?Q?x24g80s4FT1REi5oAXcNQKwmZxW1uJMYWJvV84FD78cAuGhpOrr1+ZCGW4QX?=
 =?us-ascii?Q?M+Nb4oQuGURr4TR8gCqi2PDVLLQaNFyvnhYS/A7jaoVvtTfca953d/DVR1qS?=
 =?us-ascii?Q?z7/MmJ+W3rMMSmoSSS1h9LNw12qN6jtwljpG3N74oRiQLa+teUk5rzOy87Lm?=
 =?us-ascii?Q?svv9zqSjsAGxJpe6d3pqjA3g83H3bMdjQlUleJ/AM1Bkj3AxzhxKdwW9G7TI?=
 =?us-ascii?Q?RCu60CR95KTr5AF3qXWQVihV6Brw0JVuwm81Km/Hz9FZC0XtJ3xVgNy5yoDU?=
 =?us-ascii?Q?VYDas4xpqtsp2EFJ4m/NYtq7tdoeGRnofCTGIes5Klj24Z1DSpH8r+sNvxfX?=
 =?us-ascii?Q?ktRvkebnmkA42B1rRvLP/pFuKev3in8bFXaGjlrT0rIvmD6PYuOg3wkv1+3h?=
 =?us-ascii?Q?xwgRHsaEnJ16rLRP/hRZGi9j9pNS71CiRZWFwKZwQSyOzfQpUW+NPuuf1ad1?=
 =?us-ascii?Q?RA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 638686b3-49c2-4589-4c86-08db6c24a5c1
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2023 15:41:26.0159 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rk4a7qkoxkvH8i7qPju7EY7G8rSNOrSokfGa1++H4kFRH21L4HrfYI1KtAoGG2UlzOTWmzjShsXBrzJxZLpyRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7590
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cf6cnx7k2FAf61XrPtg1FKf+wJsxnX84CvohNvnrCJo=;
 b=l9v7qcnV16cEwzc15uJPg1ZcpDG2uxDq0FdqnVVPQtUOH1/UNh1QyQ2MWTtGoZArUg1yFn32kWSr30zQldhu/PSBsm745zFusRZI4Y/ezMQltByseN2oldPLgB7smMnJzfbc5+MjF0HEBO/8a8QKVMv7ijdb9QnnaW5hDMh41FI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=l9v7qcnV
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

On Tue, Jun 13, 2023 at 03:38:54PM +0000, Zulkifli, Muhammad Husaini wrote:
> No, they aren't aware of it. They will just query this counter to determine if the 
> value has increased or not. The test plan does not rely entirely on the counter.
> On the receive side, it will validate all frames for the traffic class involved. 
> Any transmitted frame that is not received or any of the received frame 
> does not fulfil the frameEndTime criteria will cause the test plan to fail before 
> reading the overrun counter again. Since our HW with STRICT_END bit able to 
> fulfill the criteria, we can assume that Counter "0" is valid here. 
> 
> Unless HW fails to meet the framEndtime criteria  and reports a "0" value... 
> However, in this scenario, it will eventually fail the test plan.

Ok, I take back this objection then, only the other one remains in that
case, with unnecessarily keeping this constant counter in the driver's
ring data structures.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
