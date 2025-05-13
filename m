Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52163AB5145
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 12:12:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09FF04062E;
	Tue, 13 May 2025 10:12:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zZ-dDEdr1eZg; Tue, 13 May 2025 10:12:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CF1040543
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747131121;
	bh=ZZSVLon4QLXDcvZmYwWFKxnPpLFciY/3lSiOMd2/yTU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C4vJVbz+Ck41MUDcflm4zyvlyr5Ohh+OZkttJSszlOaI5+yWqYziAMklLUe87c8pe
	 8sryBFO5lshyKOzuvXTKJCGZdAzYgsOvCqLxkJfHO3p3XaEh/K6GQ3A4rZ7yeC3ICW
	 RpYMKpwCbB07By5FBw1d/RKVDZKuWOdHHL4ckOmXDWx8BoP4Z2V3akdqpX4GntFxob
	 IA1L/j/c7XUqI9z5eGD9heOfR807Q9HrZhjelSchoKJUqkqaKEaNX43cYkAXL21vQj
	 WPJxUtpiikfGr3+f9GHbR+MGtK+Yyx71nJk19rbVoSi4lysDZGkNDPw8BuCuQJhcKc
	 q9mj61Hn80//Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CF1040543;
	Tue, 13 May 2025 10:12:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2439C150
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:11:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0A23340543
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:11:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0wzuTTJ-3_0B for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 10:11:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.21.73;
 helo=eur05-vi1-obe.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2D9BC40585
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D9BC40585
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2073.outbound.protection.outlook.com [40.107.21.73])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D9BC40585
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:11:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sL+JJdLve2wkyc3LX5lfDM3vpHj0qcFBzuEqmYyIIKwtWyaO3hWc0xGiAYlf8CtRZzRBhGPHt498gAIx7OpxKNA8IwvAeYEwfsUaL02F0Mfv4SEbntEW//n1IbZrr7r38MsSWxhXEEEPa+BdJzd35GV152doBuNZ7m02XQnSUCGg/lN6s+Lx7TBWKVMza03IOE2C10DJCRQ9+3fCN/UgMFHbl2kzJmZ2SXw4ZP87olTi/CIQYiRCZZrzhTdvPzVA90eYvtzJD3bozT181Fdyv22HT/ewHsU/3ntLkUmxIZbpECUN/kYGSYxOSolyHXtlDCOtE/ULhjfjLcEq7Fqmfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZZSVLon4QLXDcvZmYwWFKxnPpLFciY/3lSiOMd2/yTU=;
 b=EZZ+5KHLzjcPkm2NZhb2+uOSWHTSv7ZLqeSYxtbFWMw6UMqARl7k7SK1WVD3uj6AWCw+Klfwip+fFSWoQId27WnbN8e03YLxLSep8DPTYhou7X5dx8Leech4YTL8dPoqe/KdyHMWLlqzZuemvONOGOKAKkJ7m3T4P9uSHv9cj4/4M18INAClV3DndOtNeNkCiCL6ChBwZXX978+7nVk7Kb6hVmTmcFKOS4MLA5KKa0qv/0+QxCpUcvwoxHRyGSmbTJcfJFbqBrIIVxrcDihhFvv4MIqsAl9xpeiAZTeNyAGaCDGjyb2OanOO0cyYDnOOrQl+wH0PbStRAi401vmUwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by VE1PR04MB7342.eurprd04.prod.outlook.com (2603:10a6:800:1a0::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.28; Tue, 13 May
 2025 10:11:52 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%4]) with mapi id 15.20.8722.027; Tue, 13 May 2025
 10:11:52 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Date: Tue, 13 May 2025 13:11:30 +0300
Message-ID: <20250513101132.328235-4-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250513101132.328235-1-vladimir.oltean@nxp.com>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0502CA0019.eurprd05.prod.outlook.com
 (2603:10a6:803:1::32) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|VE1PR04MB7342:EE_
X-MS-Office365-Filtering-Correlation-Id: 77511756-9a56-45b9-47c6-08dd92069510
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|52116014|366016|1800799024|38350700014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HnvfhJf0RjFYJkmx3WCFFyOcYTsLNTEk1oKNXE0Edo7uwyVajuiHYf9okYRd?=
 =?us-ascii?Q?PqBnxGQOsIQnakfKtTAD8cagLxmxntjiHPtEGjvGA7TS7uvyCCo6yNVviZad?=
 =?us-ascii?Q?p3/hFciYxG5gZF8txbC9gRrzlprKHU8656t4MbnbPaopo3CWjhYbgg1ghhRU?=
 =?us-ascii?Q?Rd5BVUV0R4B/jVTqEnFdFTrkrM7UWzY1wq66q0eZPllA8CPF7x2SDKbvudSp?=
 =?us-ascii?Q?tlyZbqDkgL5M6tauTVe8Nw5OQcYx5XS0S+NkR5ZooPjzsWAS23SJ8Ds0pBjd?=
 =?us-ascii?Q?0Egtl13AHMr/cuxjGgPmTnfrL5/VAz2MP43wCyaQnC4snyT1h+RFmB+EDmc4?=
 =?us-ascii?Q?Up8Iu0ths0ycXmFPpFFY7vlsLbSzbau+bsi48SPAoMUmIdRq26O+qg0vhAUT?=
 =?us-ascii?Q?+XsyvtZrrqwlffJ6EiwWEfBC6CslaJDmK7e1BNtLAlLcJrAP/dTP3YttkENq?=
 =?us-ascii?Q?G1ZGg0G09TI9NTfdlOz0/LJWdGS/MMrN7TIpP0nazP6ec3swa0E1ViEk3G08?=
 =?us-ascii?Q?MIzJJUQGVo+obbcICU1lNyKhFoGsmRIobY1kn4TDl4yPpEWKXiwkEoBzTeXH?=
 =?us-ascii?Q?IkJGz7TbqeHSHV0bJ+lGGHQv2rlt7YuGXzZV34CXq1s5j/nT4dREehwgRPie?=
 =?us-ascii?Q?u1x5xWb04r0m0yeA+PCzwJcY6L1m718VNaP7+3iRNBX5EZlUIi2OYBnxOiGT?=
 =?us-ascii?Q?2EiWA54+eMYNuw9n2k+g5uohkweMQDZb/5PQg3T99aiwSjGszuIOolm3hgJN?=
 =?us-ascii?Q?gz+Ydecp8EappErRVSKqaIDeA5ckFj+pADbWSTr+z23X0vU7wYjwv4NFrOmO?=
 =?us-ascii?Q?UK+Nda8bAy6Hc9IL3HzZFmn2BcrJzQ9O5M1FxbkcscoYuoNd+Qg02TequPHB?=
 =?us-ascii?Q?H+clErv7PlQFpSOezqVlg2ZzXNEHbw5JGENt+uGrCCHNlQ712JGk1fY1YqbR?=
 =?us-ascii?Q?bx97ITOhlqpdsMSxNt2LlaXvqzilHZdsoj/TKPdiEelPrD3DWAJttPAr/frb?=
 =?us-ascii?Q?0AJ6tcZ5oVfFSQf7kEUqfhSUaPGLgDFni6FPZGS7VXl3dRoii7DnoK2srlJZ?=
 =?us-ascii?Q?L/uiSWrb6qDU8zMi0fCQ/IqhR1c+IIcO1KG9nJ2Gue0/QhmXdHFTcN1TtdG6?=
 =?us-ascii?Q?9m5GUsBFHJYSiOLckuCkQvlGOvyPdmOcETtIfR+cIDU0fN07ulFVWB95uAC7?=
 =?us-ascii?Q?VZ28LlZFmCvj16/qvDrSV4QCXOngEzAWPmEpc5NcdpZyrgPmfaBR/INCLWHV?=
 =?us-ascii?Q?aPJxF6RmaQsqZQIiBunIliDa33Trmc3OBUes31by2qN6C3AVPw1K5OTu9slm?=
 =?us-ascii?Q?D70StIy20fq2RIniRGNU9AB1aai3ixSN8pcWGidDK4jtiz6TsAthQs8Pw+wu?=
 =?us-ascii?Q?FNzleZ/4FXFM69Nl91Dti7fttWHWxixzpzMAIF/RoVR0TpJmAxi9uAVETpW/?=
 =?us-ascii?Q?vInWUS4EpqQ4msMP/8FPFwwS8AbFD/1yVNnU5AppFb6HNKLvryTP2Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(52116014)(366016)(1800799024)(38350700014); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DC5D4Co7zh891EaJzRq0iosODDW/aoUV8TciL1OAWGAjgMo//Lwe4gv+ozGM?=
 =?us-ascii?Q?yAbvbU9hr7Iyrm6tf4DjjOaUygAjgbs/LSaaGvQ9W7qbwuC8g1ryAUGfuruz?=
 =?us-ascii?Q?zxGE2Es7yg8I51LONi2+id3Jp6GiolJuO8AzgZsWAGzqZxfb+CuJwKwbke0n?=
 =?us-ascii?Q?JGXmxFLDhUf35ILEUzTHED2VtN4QBC2rvJsViB5k6nGAHOELuYgOEeZYjS93?=
 =?us-ascii?Q?jR4DO2G3fIyKNFe8GfnCpbmLc2Q6rRbPGPqo6GKiLCFDKyWQECe16pLbxxRD?=
 =?us-ascii?Q?/boDD/I9U/Zb2+EM969z+Y8hdHbnRIMVNO1bfQ0vag6yaB1SYUVg1f2Xe887?=
 =?us-ascii?Q?W9+s65jJxY2Y8vyYE9B/xFWfLwf9y6hNDq2kiFeT2cAMeHqMq5vrzWC8nGFC?=
 =?us-ascii?Q?rBRf87hH2/+bhiYH0IQk600uQWRJz7Jkud4yzPDaX3pCep/+izmt8igyas+Z?=
 =?us-ascii?Q?3IwdnJ4YYC8VQGWOl0pUW/asr0kdgcXWbVd3lfPUTunu9gCEivF5CZyc80i4?=
 =?us-ascii?Q?+Q1ptf4h/ecHNZRKL48F2tw7WtP6Dm1sEAw6PTUqJ4x4eNkvXrs/sBGRtjwQ?=
 =?us-ascii?Q?iaQfL4QJpe1CVJ4WSEA5j7vkFZFEUzOdRqttkHV1ZCfY1fKHxO3RvlnEHlnx?=
 =?us-ascii?Q?YQO9WUd5/A49mh2KTEBuorU3bpxZggRigNgiBYROuJbp3VLAgT25IfJuumHH?=
 =?us-ascii?Q?q18WLWzdKGUo0+4CYa7ZfCI/u6Osi+03cBH0U1ZGRRYaPoxVzl01pfD2x6Qz?=
 =?us-ascii?Q?4t+tVSCBQQHggujIYbj6E1WB3gvBjXwMkdKeplMpnqxu8ZSfyNsVMU68Vm4u?=
 =?us-ascii?Q?UTuV/BAVcACdKNx2dVF3vdXKe2GymfoJap5EKeMJ/m2boAyHXO1JYqVQK0rT?=
 =?us-ascii?Q?r2Oh4EfTTNa+FdBqmzN0i3mc0YOEvaD6xNb1LQ29jMt8mtxgEWlHUuERcXh2?=
 =?us-ascii?Q?7Z40PsAearh2ne31L3h42Zbo/z+9nVAsvyfA1p0YZZTkclEVYOdDR2VBN4TE?=
 =?us-ascii?Q?dfGxuBzhqzPuljRx10aHGo25dGf1aebqOq3f71muuInAd0UJh+JGiu7OnDdO?=
 =?us-ascii?Q?FyMtFJxVnWrjEnGgl18aJwFh7B0ggtKrhefyDLMftt3I46JeGttxSzSAALnK?=
 =?us-ascii?Q?dN+0BPKYxzLdHODzXKtqfkjcPE42moCXDWkul+jp2OO46QQSY6bVw81h244j?=
 =?us-ascii?Q?h9WmEhUj6qRWzAt4Kd4NYzD319rtQ3866WNPSl+19uetufU9RNKGFcYsd6by?=
 =?us-ascii?Q?ozDWkr4kS2jzkiYsk+AD/CKuFzSkz86HQZRc5wwGQc6IWRo9kaXuaGcd1xH0?=
 =?us-ascii?Q?kzmrhHebJpvNKtr03SYZDgk9o+ZBr05M4hapKimZUAICFQE3x3zE52hmaVs2?=
 =?us-ascii?Q?4ZZ+n4t9dBRHJ6xhUj8RXBTdPtGOPjCxUN5XqEqvK3CapDv1mNWW8UjzJbzH?=
 =?us-ascii?Q?P4R4W0zPhBcda9bLPmOVVVgvlWCaUOMqqz1f66vphqe07g+Z4WMCqFtMGvph?=
 =?us-ascii?Q?d5ZsvGF4eET8moAgGBpYWqUVqIFrrNh5owLpA1hxDRf+4NIzclrT4uOTe3Yb?=
 =?us-ascii?Q?5B+s5EmrXCB46Evf4sfQ8jGn364yDQKqONEBGV3BGfjlb2jihPPqyWY/dScH?=
 =?us-ascii?Q?Sw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77511756-9a56-45b9-47c6-08dd92069510
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2025 10:11:52.6180 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SY9HqWvimkL0zd9QDgpF9cXfZdN9uqUb3/86n7Mdr38w0jHpxFKlGsK2QHQqgJPaWhnGPwYvCqdRQ5t7MjVFaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7342
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZZSVLon4QLXDcvZmYwWFKxnPpLFciY/3lSiOMd2/yTU=;
 b=PFNtcbIUixW0XAtXp/TZQ5/vJoaqUEeyTMl5asZs/20hC9o1rF3p7vSJWKLIVTjC/W17tLFG3SBLPIEyYlP3y39Ugb/MxMJW0KDfTsSqu9K/DLuKkrfbw+i+d130E+XzNDWqiKnUCPTbB726N1ZP8+nZyJq1OBO2CttfnxrXJDLyYytunxNzmG24DigKFQngy/lUYsbvXG8H3gviSnroh1IB3wzpFNmn1qWT9nOoNNBGPgOhev5lhdaubdO6VYa+k7oCXhaf8Sv8JTqGJPXzDAz8bxWKE8nkrEKZFdl5okqDL0CUQLszs5m4+tYitQOrnvifLoQ3GKENf1F/kT4G8Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=PFNtcbIU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH iwl-next 3/5] igb: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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

New timestamping API was introduced in commit 66f7223039c0 ("net: add
NDOs for configuring hardware timestamping") from kernel v6.6.

It is time to convert the Intel igb driver to the new API, so that
timestamping configuration can be removed from the ndo_eth_ioctl() path
completely.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/net/ethernet/intel/igb/igb.h      |  9 ++++--
 drivers/net/ethernet/intel/igb/igb_main.c |  6 ++--
 drivers/net/ethernet/intel/igb/igb_ptp.c  | 37 +++++++++++------------
 3 files changed, 25 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index f34ead8243e9..c3f4f7cd264e 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -626,7 +626,7 @@ struct igb_adapter {
 	struct delayed_work ptp_overflow_work;
 	struct work_struct ptp_tx_work;
 	struct sk_buff *ptp_tx_skb;
-	struct hwtstamp_config tstamp_config;
+	struct kernel_hwtstamp_config tstamp_config;
 	unsigned long ptp_tx_start;
 	unsigned long last_rx_ptp_check;
 	unsigned long last_rx_timestamp;
@@ -771,8 +771,11 @@ void igb_ptp_tx_hang(struct igb_adapter *adapter);
 void igb_ptp_rx_rgtstamp(struct igb_q_vector *q_vector, struct sk_buff *skb);
 int igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
 			ktime_t *timestamp);
-int igb_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
-int igb_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
+int igb_ptp_hwtstamp_get(struct net_device *netdev,
+			 struct kernel_hwtstamp_config *config);
+int igb_ptp_hwtstamp_set(struct net_device *netdev,
+			 struct kernel_hwtstamp_config *config,
+			 struct netlink_ext_ack *extack);
 void igb_set_flag_queue_pairs(struct igb_adapter *, const u32);
 unsigned int igb_get_max_rss_queues(struct igb_adapter *);
 #ifdef CONFIG_IGB_HWMON
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 9e9a5900e6e5..abed0704ed04 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3062,6 +3062,8 @@ static const struct net_device_ops igb_netdev_ops = {
 	.ndo_bpf		= igb_xdp,
 	.ndo_xdp_xmit		= igb_xdp_xmit,
 	.ndo_xsk_wakeup         = igb_xsk_wakeup,
+	.ndo_hwtstamp_get	= igb_ptp_hwtstamp_get,
+	.ndo_hwtstamp_set	= igb_ptp_hwtstamp_set,
 };
 
 /**
@@ -9315,10 +9317,6 @@ static int igb_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
 	case SIOCGMIIREG:
 	case SIOCSMIIREG:
 		return igb_mii_ioctl(netdev, ifr, cmd);
-	case SIOCGHWTSTAMP:
-		return igb_ptp_get_ts_config(netdev, ifr);
-	case SIOCSHWTSTAMP:
-		return igb_ptp_set_ts_config(netdev, ifr);
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index 793c96016288..05d30aba66db 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -1094,21 +1094,22 @@ void igb_ptp_rx_rgtstamp(struct igb_q_vector *q_vector, struct sk_buff *skb)
 }
 
 /**
- * igb_ptp_get_ts_config - get hardware time stamping config
+ * igb_ptp_hwtstamp_get - get hardware time stamping config
  * @netdev: netdev struct
- * @ifr: interface struct
+ * @config: timestamping configuration structure
  *
  * Get the hwtstamp_config settings to return to the user. Rather than attempt
  * to deconstruct the settings from the registers, just return a shadow copy
  * of the last known settings.
  **/
-int igb_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr)
+int igb_ptp_hwtstamp_get(struct net_device *netdev,
+			 struct kernel_hwtstamp_config *config)
 {
 	struct igb_adapter *adapter = netdev_priv(netdev);
-	struct hwtstamp_config *config = &adapter->tstamp_config;
 
-	return copy_to_user(ifr->ifr_data, config, sizeof(*config)) ?
-		-EFAULT : 0;
+	*config = adapter->tstamp_config;
+
+	return 0;
 }
 
 /**
@@ -1129,7 +1130,7 @@ int igb_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr)
  * level 2 or 4".
  */
 static int igb_ptp_set_timestamp_mode(struct igb_adapter *adapter,
-				      struct hwtstamp_config *config)
+				      struct kernel_hwtstamp_config *config)
 {
 	struct e1000_hw *hw = &adapter->hw;
 	u32 tsync_tx_ctl = E1000_TSYNCTXCTL_ENABLED;
@@ -1275,30 +1276,26 @@ static int igb_ptp_set_timestamp_mode(struct igb_adapter *adapter,
 }
 
 /**
- * igb_ptp_set_ts_config - set hardware time stamping config
+ * igb_ptp_hwtstamp_set - set hardware time stamping config
  * @netdev: netdev struct
- * @ifr: interface struct
- *
+ * @config: timestamping configuration structure
+ * @extack: netlink extended ack structure for error reporting
  **/
-int igb_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr)
+int igb_ptp_hwtstamp_set(struct net_device *netdev,
+			 struct kernel_hwtstamp_config *config,
+			 struct netlink_ext_ack *extack)
 {
 	struct igb_adapter *adapter = netdev_priv(netdev);
-	struct hwtstamp_config config;
 	int err;
 
-	if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
-		return -EFAULT;
-
-	err = igb_ptp_set_timestamp_mode(adapter, &config);
+	err = igb_ptp_set_timestamp_mode(adapter, config);
 	if (err)
 		return err;
 
 	/* save these settings for future reference */
-	memcpy(&adapter->tstamp_config, &config,
-	       sizeof(adapter->tstamp_config));
+	adapter->tstamp_config = *config;
 
-	return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
-		-EFAULT : 0;
+	return 0;
 }
 
 /**
-- 
2.43.0

