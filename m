Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B82A67AA6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 18:20:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 127F140D04;
	Tue, 18 Mar 2025 17:20:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WYXsftysddPU; Tue, 18 Mar 2025 17:20:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4266F40BC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742318437;
	bh=WDtsXBrnQoxISfEfhVstgKuKFyKsFXQ++HZm6qihE60=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o47kaDyb1V4hXOE+cE9SJXeb2D0Hw93X+5jqr6dzKq0kvWVvHnvHT6w/9GzRPQxpw
	 VIHYgVBVG2zpHmWXpkebKk5SJS2Mjedyu7zA22032lXS+Zue9NV+9PvKiHAUbelLrU
	 y4YxkK9I/99d7XuyVdfI3jIXpI8huX2kNJRepA1u38VEKicub+u8tfqcpJz4fjjSUI
	 OCiSQ6Wl9xbhsjsloT9ar/ewCzXd7D+nZqDIRItLSDmtIxp2tt7WUcC9a9vazv30Y4
	 4/sXAomp04qdu3ZKqqCZzwI+7aO78FX/tWLp9o62ar7EE8z/FE9lw0zdZc5hq7Ch8S
	 CvipyhaJ+c31A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4266F40BC0;
	Tue, 18 Mar 2025 17:20:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EC8E216E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 17:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CF0CC6061E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 17:20:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2gXLSqGR16T9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 17:20:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.92.73;
 helo=nam10-bn7-obe.outbound.protection.outlook.com;
 envelope-from=jgg@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 11C3E605A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11C3E605A5
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2073.outbound.protection.outlook.com [40.107.92.73])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 11C3E605A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 17:20:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NCfecwA65wz9wGXMzlQhRzwWp95ywQSehD4lahkODTrYygX7bL0gEq4hgWqoxpLnn4npO5YVT8o38yAH2YyxqPVkR+o1hbDV5JxGT4qcDCf/dIubwkSnzZjkmHQVRXtwYW9TudXyUY/CaeKdymf7+/8YQVomJ89L1r0H0L8vrbIVjbcxsIduli4FDYhpXI3nawN5F54uEqEPcQoQLa5Oz0CsVrMNS7Ysh1dkox2TQ/l7+m7bFtBioP+zjLhXQBO7GpVbiQyZpxxnyogljfUOn1eW8bZMeTlw2GFl41jSZtVq8TG5eitFY2Xo9RDoNna0pahmlujC5WSgYJcki3StfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WDtsXBrnQoxISfEfhVstgKuKFyKsFXQ++HZm6qihE60=;
 b=Hcw11P8qsRIbg++unv/v85JbUU7aeqCuOELcxItc57j7yA2JNMWO8F01aK164YZXNR7t5C6YxV9Uxhsnbqg0VRHUcgoq7FjMnIrFuUvRyvpT0aThBkmF8sJB8KQyed9X6sFRxJhd+0N1S5UNf/E26F+C6sNfpl4NeX944jXcrWAJji5nIzfW9O48+T1DFniSYUv5lNF1uSKiyT+dN7iUpk6+vqBr33xfHbJaVEzooG259mHJewEmddUKBwV57aH+x5nb7MMZbytLQxOGtSllVdVU5CttCHEPiFcJz7biIFNrzmC8CTlKQAMtmKNNcqhjlICWk0skiW1fnBT+wBGenw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by BL3PR12MB9049.namprd12.prod.outlook.com (2603:10b6:208:3b8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Tue, 18 Mar
 2025 17:20:28 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%4]) with mapi id 15.20.8534.034; Tue, 18 Mar 2025
 17:20:28 +0000
Date: Tue, 18 Mar 2025 14:20:26 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Cc: Leon Romanovsky <leon@kernel.org>,
 "Ertman, David M" <david.m.ertman@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 "Nikolova, Tatyana E" <tatyana.e.nikolova@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Message-ID: <20250318172026.GA9311@nvidia.com>
References: <20250225075530.GD53094@unreal>
 <IA1PR11MB61944C74491DECA111E84021DDC22@IA1PR11MB6194.namprd11.prod.outlook.com>
 <20250226185022.GM53094@unreal>
 <IA1PR11MB6194C8F265D13FE65EA006C2DDC22@IA1PR11MB6194.namprd11.prod.outlook.com>
 <20250302082623.GN53094@unreal>
 <07e75573-9fd0-4de1-ac44-1f6a5461a6b8@intel.com>
 <20250314181230.GP1322339@unreal>
 <8b4868dd-f615-4049-a885-f2f95a3e7a54@intel.com>
 <20250317115728.GT1322339@unreal>
 <dc96e73c-391a-4d54-84db-ece96939d45d@intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dc96e73c-391a-4d54-84db-ece96939d45d@intel.com>
X-ClientProxiedBy: BL0PR0102CA0025.prod.exchangelabs.com
 (2603:10b6:207:18::38) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|BL3PR12MB9049:EE_
X-MS-Office365-Filtering-Correlation-Id: 93495db9-4cfd-4f4b-a57b-08dd66412d70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+hVG8IUoz+DSdVaWgDcH75XktKrFUKcbvuz3HXAduvCFp//oakDFki5FTnWa?=
 =?us-ascii?Q?tWkUqL8NmV29+h/Tg3U19ExZxN67GY9E+HwAhKONI/7cDPJ4c8tpvvuPJyZp?=
 =?us-ascii?Q?gaWCl48epn0BlhvDgS1704CiLPqgMsGkEYNK3ecEehQEZJxBC+WZAV5/+ZHp?=
 =?us-ascii?Q?dhkDpggsFidjTV664gulQdt6s5VK3DJ37NPRAKfPBDpzIw35WWCkAIxGzFz4?=
 =?us-ascii?Q?gVPgvgu0GmrzPhY2CFEaC4m8o4FqQT9zClYWIpXZ/n5uyqRe2N5mFgAZzDwP?=
 =?us-ascii?Q?kQmqcU1PdGYKnhYTkgpraYfx0VU3Alhew7sMVyfaGS2j4rKjTxOY1Jf3P/+H?=
 =?us-ascii?Q?Z7+HynwRMo2Ukddcf/iVRs4Z8bmOKnHX6bHorbH3Fj+y05nvS51Ep6vph3kc?=
 =?us-ascii?Q?2NVBjLGJ7jBR955pRjk10iog629qGPv7ZPZQdAOAutUgNAGq6DeF9IMnsWGt?=
 =?us-ascii?Q?NMwHp6u1tZi6izQXJKe+eOhEmxKdydIyqHaodI9LW/hVkvBDhQ7hVLEs8+JE?=
 =?us-ascii?Q?vdXqY1QOMmdL0LBLLJT+i/D2XFqE9T/bqL6hO1xIp0l1E/oADsjYzGnbEMMn?=
 =?us-ascii?Q?+erxXRGXhXu17lvwROY3n/NhLyYAJungw7ZCAPt/G/2lB+zazHnIdn6s7yea?=
 =?us-ascii?Q?MzzH/BAoMBp50v51x+VV0SSZ6hGDW5x1MeKCOHoyUcveVsEX928IADOZ1y9p?=
 =?us-ascii?Q?tCDMtCOMpeWcITa3KcmeCjxcu58rmUADZpx42zyAxiEIMDOO957VCLOaNyKJ?=
 =?us-ascii?Q?+7OeoTfiW+ldDFMwYdedITCM/Bb7uxt/4MpPcZbRrmz2p9BpPSlHBbEwLpRE?=
 =?us-ascii?Q?9sayHLg1LOWBKqwLS13HbmrGDHlDZvSAgyobYmy8X8vgxjMyMOQfmL+fSU7c?=
 =?us-ascii?Q?zXOE3lFsp6CKdznW4Ej5fwGwRwG3CQshXb3vTFB4I6bf/H5bcXxEdc5mmAMr?=
 =?us-ascii?Q?Bz8cWHKYbTm233sZZu7qdFBK8MHd1Z/9SBBdyI7U6PRXdL3wDB9SBcIcjgG2?=
 =?us-ascii?Q?hibSye4cw4Q3LD+iYun68cRXmje+gZCuRvrWweEFnQLK2wMTShUSiY0GeStJ?=
 =?us-ascii?Q?3g5nRD8Jz1K15Va7qAYitp65DF98HL5xGTI9WPTvYt3qn4Lii+f76949n7Mx?=
 =?us-ascii?Q?oDPZAKInw9a7X2lF01mPR4wT7YJVPOPy9PDs9i1tdZNdrl8P58/KyrWPRTZD?=
 =?us-ascii?Q?5jcSIlJQHGmOBGUQRLISJH7zde1TMwB0vqHQIWcjLD879RX2FtIrJLW6UMBN?=
 =?us-ascii?Q?dl1DZWMfRuqSJ0eEIQAOh0I/Rvc00q9mqKkd+uTqwf7IIbVsa27Qo6ZxsAYj?=
 =?us-ascii?Q?HaWPbZw/H4wFIbvPXR7ohbEWDAutmInjZD6FrELU9/f6I1mR5L1qpmqQYdfT?=
 =?us-ascii?Q?vZIYlHFcJKP/g4RMsCvEi8kZHGJk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR12MB8659.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gxdKKAJ/7crKuynNZmaV9sixHYwkOOjJKbBIYuKgMOvSbq17TkLE4utnfdFa?=
 =?us-ascii?Q?T4lernfiGqR6WtLyhj+WD4Qhy+OB0uQGMP8Fa/qlaCb9Yc+MPUsp03nhQrWz?=
 =?us-ascii?Q?Qut5LbQpSDxZSBvfylbKdVEzEINsxRkBarmrET8kTzN3N7brt7UvVfvzyMYb?=
 =?us-ascii?Q?ARkC60d05JosTCTBpL3le9/74VeaF5c+k1ZMqFfpvE1t+NmyZabOCrHaH1j5?=
 =?us-ascii?Q?HQPCKnMKR3mo03CQQb2xMvvWRjgPFPdaa5P0/ygjPhFGipPC+h8qFNxd/46N?=
 =?us-ascii?Q?xWr/wnm9x6hdUo/7F+1YIDv0z8NP+/ORw8L3SkffrPbY13/95vFcaF5B8QtL?=
 =?us-ascii?Q?+GJ5oq5WmUtzLHHI9huCA/7BoXyb1Ke/UzrlnHEAqz7hC1G1v+yU+dmnAR4k?=
 =?us-ascii?Q?ojQhAwZs2q6MrVUCylNDGfxN8e0Tkv3GO27Tl8rgfcyVbsMczCGsFv8/6tUF?=
 =?us-ascii?Q?RnNNp8niFqF9LJlS0kkCnMAArmxbRIK6/JWL/7Kt9XRJvgT/Dgo8GUYF0Hng?=
 =?us-ascii?Q?JZR1zKlHxrVfagzlBrQN9uuTErsR3xvd23FgGY9gavL0f6mQXS9n0uuwTU2V?=
 =?us-ascii?Q?W8VR+wLdCd9HZj+NWFUkrtnD2zLCDlotvbkjxN+PLkEzxWzRynuwmw0HfYJ1?=
 =?us-ascii?Q?N8U8+18a6NFgIRJiCoC++gKQCX7umUc3fHmaHySQGqZ886y/VfzUFMRolAk2?=
 =?us-ascii?Q?L2zW5GUJ0LhroBQ0trg8hU5oJ1Q0nQuVjaDQ65IYfMuziXHmmUIwTQFZkRrI?=
 =?us-ascii?Q?PLq/RrzkrDJArZlvX6seV46CepZbsIFJk/22vsRl3mmziY4V5OT8kOmE3IYF?=
 =?us-ascii?Q?+qwlZCSjQVm5ajuqGgWQWO8t7F+disJcNjNIz7fqT7VzKu5CSgPHDswUJWc7?=
 =?us-ascii?Q?qGxLBpBDTZJ9DQCN3E+Mz4uuPn3xiToA96D4ZfxJlnErS/4JeLf0epZAQHgi?=
 =?us-ascii?Q?58/H+PuxZxg50CS1DaxN11ypaoSat15fviUFmyE0vHmG6yZ+zJ/KrKAbnF6r?=
 =?us-ascii?Q?E1m+6RYg2GzgOzQGR8bJYAS8DVSeOJ54jjcqzqmvssbDz4LBYkA2OZidEL2a?=
 =?us-ascii?Q?88MCRPTqga2EmuAeg15LMosC58ptu0Ua9HG51jQRJFBmvEHhFZlEJMky7Nx0?=
 =?us-ascii?Q?OEwpCsoXOwr5okadAfRLwH/kCidp8xehmRxWQaznAbj9yX/l4lcAnoMwzRSY?=
 =?us-ascii?Q?OKJ/rTB5UERg+hfXs/V/Ai77/vJsz1rrNTqxEJ9VOmLYliCYISXrzowKe3rs?=
 =?us-ascii?Q?J4NgoycCUqGtWE1CJT34nxAlAtXeI3/fTCCFJdSZSAr5QoNMRiWZqH5bI0hr?=
 =?us-ascii?Q?ehHP2rgBLL/r3fUwU0+o0xJaum2J4m4MXJG6eMoBQw+GzfRX3z4morFQe/mE?=
 =?us-ascii?Q?BBnTI/JrpZrYBJpjjV7GkbUd0e0n7uSFLJccrQ0/kgzdPz4qXFI1RiK3pphF?=
 =?us-ascii?Q?E7ySRj0Zgq7Qr0+RfaJ9HElLsBRvluY8CU+FcZwdnLaNgk58suye+PFvHURy?=
 =?us-ascii?Q?dNis4zVma5PM27DrJL7wazIbQAIT4xMUaMNjvHMmLtZAZ6zP/frUrZO0AN33?=
 =?us-ascii?Q?CIyi9ypPnBg9mlQ1ZYoeO/iRNRoaZOyPmjl8QUv/?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93495db9-4cfd-4f4b-a57b-08dd66412d70
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2025 17:20:27.9179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ykHVns5WEK+Q88Hj4gyoLc7+Kbkk22SY+PAqKRuuDB5WZnAdFtvSGw5ODxNpFh4x
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR12MB9049
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WDtsXBrnQoxISfEfhVstgKuKFyKsFXQ++HZm6qihE60=;
 b=Gf3bZ5VZmWUm9hwDmGxWM+1HXmBYvrtfb2Cvf4Uia+FZxZSOkHMtODKIZQQrirra73tOTLtrlOgaV41mUNJUba7pXAc5mGyeAicCpNVQGM7M6lvRdjksfqxySqLukFSLc3kbLCev5UIKlsjNGuYLEh2q7MzFmAhvi9+pmn3WPgqx0EowDcnuogJ9MoxRBWxnuTG/Bt0UfqjvT+GWCHbgQgcspY5PSI8Lq2b7SYDspsOIlnnt6nqhuAtBfeaD0fjlEuRESuM/oHY/enYKnOzXML8rrkK2FqvkZqgNAn3unHUIdsJ8GDEZd9wlYEi3m0iEG8E1Qow632d1QV47z8Kp7Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Gf3bZ5VZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [iwl-next v4 1/1] iidc/ice/irdma: Update IDC
 to support multiple consumers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 18, 2025 at 10:01:36AM -0700, Samudrala, Sridhar wrote:

> Yes. Today irdma uses exported symbols from i40e and ice and loading irdma
> results in both modules to be loaded even when only type of NIC is present
> on a system. This series is trying to remove that dependency by using
> callbacks.

If you really have two different core drivers that can provide the
same API then I think you are stuck with function pointers :\

It is really weird though, why are their two core drivers that can
provide the same API? Is this because intel keeps rewriting their
driver stack every few years?

Jason
