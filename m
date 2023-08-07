Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7C6772E7A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 21:06:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5A4881E9C;
	Mon,  7 Aug 2023 19:06:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5A4881E9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691435177;
	bh=yYlmzuyXVl8QQ8acAhhgpmkvInDCLE+MbWhNOHfh+cI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=isp0duxFRGI5SlqY+YshNLgg0xLLdV1MrvDzSByyE8uzmbkWGDDjL6hkGXDgHM9hI
	 Ulq28O+NMElhADW24fRRcNKVra39cWhAShPwIp1RnL9feyEKVr9yWwl5frIEZSq8oz
	 WCIWg3MXHM5g5i0E/KSF04VlhgpI2eU9sbfpg7nOiwlL0CV7LBQ29CSzPx/EwiwIYi
	 Rb1ugtHAVHKp2lJwajFr61v0abntiQiz9T45MJpJcU2yV81IbuM5nUHTzoF8CVmAZ9
	 fbDFO2zsmO0PA/lj3igTc5GuKlOd/zGFBknVGJ9JhoKj65z8iKxKdswedIQBKsDh0P
	 Kh5iiGDe93/pw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p7nO1IkyD9ZX; Mon,  7 Aug 2023 19:06:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC77A81E1D;
	Mon,  7 Aug 2023 19:06:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC77A81E1D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 059B81BF284
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 19:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C3B1860ECA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 19:06:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3B1860ECA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QoASNmvMHn_o for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 19:06:10 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur02on2073.outbound.protection.outlook.com [40.107.249.73])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 73A4060B04
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 19:06:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73A4060B04
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GuR0uVSM5T1b1U3aXxPMK1fk/SryiuQKJxtoUy9jlqBLLvmVdcbIoFRFH1oLA8dsQyrVrKLbH9RBQDuja7UouNvpFCz+mArozcViLyIfqrMHkk05Q9K1K34X6KMXEtBXZHXLoonxO7NTLJJbueNVQ4tVu09CCEYUvQrm6/yr+LMZLRtYs16J14E4NZa8tfKXRODjrnM3LeQ9WoXoHdrHFRsDwH+tEGwXk7SFXCYlV/SZ9AWNjmzSzJgcBX/LNLd/nZp2q2xyakcPzHPgw8NYUKLSTYIYOtitKs8TIgjtpljZPHjtiDiFrJIAMqTpy6tQQmB23Wnd1HmvS2kfoO4KyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Dqf4HRgcux3PzTjNBlftMebs/+ELRfef7a/FQIiPXA=;
 b=QaV3jUeUctxMAgvVowrT3vfj23KmTNNdt9npO4Jh62lOQeTgioRaEWuxzV6eYt5jv5nfYZxV5Vqmjk4r8z3T8AfSLz0LEsxkYD3ARFcF1cBd5hJdlPfNo08xmbdsQuSztV5sh035WyL2/zR5xG5yxivwt/hXw1V+MTYY5wnITMwuv9v6rsIdRwzUUaiuDwSwxqmIllKpxYNGstWIei752tF2m98tVzcLK28Iu8NBEx17ihpE5R8plCFWLZRKnG6KxbF9y9qdHliI6pT5ps2Rdr/e8VoqaHKrzxSmZ2R4HCPnJ0fkMR3JHJcMmoLAy5gcAEvOCmzogRO0ZLLcAYECFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM8PR04MB7396.eurprd04.prod.outlook.com (2603:10a6:20b:1da::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 19:06:07 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::d4ed:20a0:8c0a:d9cf]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::d4ed:20a0:8c0a:d9cf%6]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 19:06:07 +0000
Date: Mon, 7 Aug 2023 22:06:02 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20230807190602.pvforrful3zmqiv6@skbuf>
References: <20230801182421.1997560-1-vladimir.oltean@nxp.com>
 <20230801182421.1997560-10-vladimir.oltean@nxp.com>
 <87pm4510r0.fsf@intel.com> <20230803143347.7hhn27hzjymdvvw6@skbuf>
 <87il9w0xx7.fsf@intel.com>
Content-Disposition: inline
In-Reply-To: <87il9w0xx7.fsf@intel.com>
X-ClientProxiedBy: AM8P190CA0015.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:219::20) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM8PR04MB7396:EE_
X-MS-Office365-Filtering-Correlation-Id: d0d10adc-35bd-4d3f-dac9-08db97795ab6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TTxda9wZJZZKaxIEsrPVRJIHlqzJPVgymQ7w4N/MKs8X5tgSJEd4WDUo00ILsTaJFEV5wa8z86Jc6g1JPLuPUhOywa1bOlhWnKWBEXQ7rIEVgWRhGEUgWUMObvTjXLDc+NHBjFOALmIgYBx7IuiZ54Xf7QxvAAAP/eCsDC5c/H3/cemDsVvY+9tdQXkuPQKTOXOURxXQA2KjbdYX9wJ4Pvlgz/vOLM8M+ayzbAjL3BeJQ2i2MNbjoEqLNS8ALLSXIc6wVBJdDpVnFSDuStFjHSlJqhGVr/MVn2crG3L0li8eIw/UNIbuKMdUscSmCH2WvGpn6zhLFC7wFNxIwZRqMNukompx7cSlC6wOnFADaJ/Q4p2pu9DDEV8adIZsQ4EYxXRPK08GJnCWSBwAgKpoYmcHppxo2J8EWwZF0AYLyGjhDHs7NHI65VoTU5CTuuKXa0VeULvIDCzSOeXn0h1Vn1S5rAfJ8NjQkGH/XNNBj4+gqFpodHPTxUa2dGblOV/opKBu3pz55VCuDpdGnEhTH0sIjlpTDkJxA413LaB7Lzg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(136003)(366004)(346002)(39860400002)(396003)(376002)(186006)(1800799003)(451199021)(83380400001)(4326008)(38100700002)(6916009)(2906002)(5660300002)(316002)(7416002)(8676002)(44832011)(8936002)(41300700001)(66946007)(66476007)(66556008)(6512007)(33716001)(478600001)(86362001)(966005)(9686003)(6666004)(54906003)(6486002)(6506007)(26005)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8Cbl3zqOpLkHkCiFKJht0+CUxdzTgUYGdLJ1gOCVRyE7fLdw2384kCF0fxxT?=
 =?us-ascii?Q?VvMtweN+UEDUfJB7p6Pj4Eq+SZtIMc/qKGry/RgyadnQhblp86YbRWT0b3XN?=
 =?us-ascii?Q?IXwfZykjsEydpNGvf2LFPHTf554Gyu2AzZs2FMSTpQChz3J5PbZkFjtkmgIJ?=
 =?us-ascii?Q?OjEP3w6x4FwjKWHYJ7WTiKig8bqiAO2XF7pZIBCKn9RAuJK6iyswkpPHE/Ho?=
 =?us-ascii?Q?TlHTKX/VfyJOKfWJF1YxBPVu3sjwCejFa+RlXCOC4hCBoypuK/R/6vMfStK/?=
 =?us-ascii?Q?Ubq1Q2dJFrHJWyjSeip9LLeSQ60xRnCKE5vhdwWa5Hb95YBaEm6Trts91BgP?=
 =?us-ascii?Q?W8T8urp5o33sp4xmC3/ypY/KNWsU0pr9vQ3TZYLKatkZObz5PZ6bYGcSDl9G?=
 =?us-ascii?Q?tggxWj6++2AQTP6UCoOftfRs9Lg+Serd+hjUTEW1h/fuRC8VcPTGZbQAjkry?=
 =?us-ascii?Q?p2iawHROzZ238zIPjeoj+r3SN0/2kmKQu45x2bmY0BTu7363rQ+qP0uiq2P+?=
 =?us-ascii?Q?QLXu5hQkJgGsTNsyYnQYcKKR78GqgyRgvoUJ+PuDftTgdOHlDuY7UsLxNg1d?=
 =?us-ascii?Q?oDeTM5N5i1I83pTyecEX2bTis4LLA3OfcWyKscPRO7d3najqoQM+Ln7p8Nt7?=
 =?us-ascii?Q?PIJjAgMj1q0gcC/GadDhkFCwFcZg+ZlQqw9r+y9lBs6WQ0sQlGtz2zkCU0/d?=
 =?us-ascii?Q?yPz0vwVaRiN3c8VujZUi87hTlSs8V2yyrLzltvpMv+Gnvw5MId79hqc+t6ZL?=
 =?us-ascii?Q?VgmPhdYrVbmqwz/kNTmrwFug0xOHyXrgkn9gM4ligQivGZ0LqeVm94s0aL0C?=
 =?us-ascii?Q?naKYi5xfHxBXukeW9+CcZ9WNdMpfPnYnLwfDw1I2n0OqL15zefU9c3jPw4VK?=
 =?us-ascii?Q?VPgI56rS8El9VXyV/i5wjGLaVuab6YuMCsDJS9Flh8hyQcX+5R9g9AGT9avI?=
 =?us-ascii?Q?1z1dY0BCvcwp3Y6GeY8z5FLs/gbgqD3/2N+NtgaQVT84Iqsf2/IJ7ClzYstR?=
 =?us-ascii?Q?r+5CX0y1WF7jWV6nAFGL9tf98U272LDOU4Ifmo9M3jUB6lKh2K60SO8qoF8o?=
 =?us-ascii?Q?dHXujZ1pwlOIkZR+wDxq7nkI/DSw1QJhFRX/JLUEWWwuFJwYp+N0QXhU5bFX?=
 =?us-ascii?Q?Own3Vnhk57SZwGbZRA5wqG8Q5GXTDK+GVtoDfzj5UPJ0Fpkvhqj/ZKgOg00i?=
 =?us-ascii?Q?DOB1gUR3GaB/jQaISGUB9cMcJTQxaEYBq04FXShEBgLnjIj93OutJxZE4tJQ?=
 =?us-ascii?Q?tJn/ZX633X1HOpxoVHBLLJcZDepOsE54lljqo59nW+Ip2NvnaMSFAAR68WYZ?=
 =?us-ascii?Q?b3VZx7M7rNTeKhMqokhLYXIUi4aABePmyLIMtrPSsOz8KpKg55IQmFKyAQpK?=
 =?us-ascii?Q?Wv/3fBS2o+Yz59AnigN0M76W81np4dGrdINRLKRbyjPomUUj7jN0Xo4NUs4i?=
 =?us-ascii?Q?9D0eRdmLBdR3He4vpATwNFsyBGKyNM7WACC26nULFuhw+lmrGVYM+06LIhXX?=
 =?us-ascii?Q?lw2sTl1axi85K+4ZvGdmKaGjhBil9+wuNkYeffHkbyjpja20nl4BFpKU9ohx?=
 =?us-ascii?Q?3o0kpqb8J2Tl1+b6WNKeCp6tB0T1le/cy2CFjYZLK8QoSLu4O3BXUH7ot/CG?=
 =?us-ascii?Q?Cg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0d10adc-35bd-4d3f-dac9-08db97795ab6
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 19:06:07.5559 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UxLMcfKO+LV0siMlf34QPscrjanUEjKsKFCSZsd1zZRbYNdoBIXcgCu5d9+Vl/bVat0c4UMj07ODQLxE/eu6xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7396
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Dqf4HRgcux3PzTjNBlftMebs/+ELRfef7a/FQIiPXA=;
 b=d18JwfkRWux7vmSpD6i3o74TEGsZz1ZKbWi5vR/JKxRwjeON2be9lMAKqumHhL6W+hfe/IPVpWZTu3hH0dXAY9rRV3ajIermz7MoAePz+9xbkZEfdBsTCEIuy8h6PUL485j0gLyiRqp/v8Xkvfn/XiRb9i21tEgo0qrl4YNUArA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=d18JwfkR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 09/10]
 selftests/tc-testing: test that taprio can only be attached as root
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
 netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Maxim Georgiev <glipus@gmail.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Zhengchao Shao <shaozhengchao@huawei.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 03, 2023 at 11:43:16AM -0700, Vinicius Costa Gomes wrote:
> Hmmm, I think that this test discovered another bug (perhaps even two).
> When it fails here's the json I get (edited for clarity):
> 
> [{"kind":"taprio","handle":"8001:","root":true,"refcnt":9,
>   "options":{
>         "tc":0,
>         "map":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
>         "queues":[],
>         "clockid":"TAI",
>         "base_time":0,
>         "cycle_time":0,
>         "cycle_time_extension":0,
>         {
>                 "base_time":0,
>                 "cycle_time":20000000,
>                 "cycle_time_extension":0,
>                 "schedule":[{"index":0,"cmd":"S","gatemask":"0xff","interval":20000000}]
>         }}}]
> 
> Thinking out loud: If I am reading this right, there's no "oper"
> schedule, only an "admin" schedule. So the first bug is probably a
> taprio bug when deciding if it should create an "open" vs. "admin"
> schedule.
> 
> The second bug seems to be in the way that q_taprio in iproute2
> handles the admin schedule, is just an object inside another, which
> seems to be invalid.
> 
> Does it make sense?

Yes, it makes sense, thanks. I've sent some iproute2 patches that fix
the user space issues, and I'll soon send a v4 which takes into
consideration the fact that the admin schedule may not become
operational right away.
https://patchwork.kernel.org/project/netdevbpf/patch/20230807160827.4087483-1-vladimir.oltean@nxp.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
