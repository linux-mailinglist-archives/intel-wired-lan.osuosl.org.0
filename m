Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eH6rF1QYn2n3YwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 16:42:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DA5199D3C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 16:42:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9D8B60FEE;
	Wed, 25 Feb 2026 15:42:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d0ESFn-M-cWz; Wed, 25 Feb 2026 15:42:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC6F060FE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772034126;
	bh=iZDqo9Htf0TSZlEpLnRma/8qjLWDAe/gqvQRZdOYp0o=;
	h=Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=uKSOUrCHwSgs+O9rUOpa7UoAK6IALA/p3Fs2Vex/MlrxMETqJmTCSq5QTbmY8BF99
	 KuF/HvWjq4ObxKMELiwKcUhS/2SptdY46gigL65DviL9QYGWq8NZslcx4PQKOp+qws
	 5SVeOkS6L5VbkuFTNimJq6ZlcPOX6sB0vZdU4vRjFMF/5mU08CieXEgva7RJgigDeL
	 TDIT3NGF4DfezpaJRlkJHciHJuExUiSDehQjtSqeCL/RQEmTeW4TLYeeNzZvyEvj40
	 +CU/ZkFurKMYaERnxv3k9I/DxFXo+l7Qxjmr9iB4l/wtCQoRSOYjWupb7k9KneAy0M
	 YMojA+hVaHOaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC6F060FE6;
	Wed, 25 Feb 2026 15:42:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 82382204
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 15:42:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 73AFC8101C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 15:42:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6cNDZ16b8zVX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 15:42:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.208.23;
 helo=ph0pr06cu001.outbound.protection.outlook.com;
 envelope-from=ynorov@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7B2E180FB2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B2E180FB2
Received: from PH0PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11011023.outbound.protection.outlook.com [40.107.208.23])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B2E180FB2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 15:42:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZEfrNoDs3eOeCBJ4OS/tnjKJtuMmjnzeyk9uiuTshI3vkvU7vy3EZFHcLZSbx/Qiq0/1LvKeAtmHuQuZvpoYU8+kCXtRRkgrwoiSBRewORsqaKniGIPxSL6og2Myl471JhKmwz/WaLbiLWtMw+LSVdbh0T4MCqmTa0RgBFy3W7JsCuz+PHEu9J/rWWA4puNhfuVWZFjjsEwVmx8mQJKy8rTvUSNtTcnx/JQsuGf6DNpoBgh1mXSV2Vvo+2zynizWf3oQw/qaFO2uKqxjRs/e/T5U3PJwZgXD55QB1kNgVpY53j9Wf6TnCkElf+NnS/9yNFABbhyDq2X3pREtVPJj7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iZDqo9Htf0TSZlEpLnRma/8qjLWDAe/gqvQRZdOYp0o=;
 b=WNeK8WQbMdVqRIM/ZLdVEsJb4St0+OtL1NgfUwUyCZZHvAA7fAniajTz7KTiNCpF1F9DWxXUmwoJ4vEmU3Ppss/c066jQWvb40rN2oKUqCwzc2RRFSnbXudA07gGBdmfXCOWrdLchAupciaRQtS/j0jO1oiOTN7Dt8A6+L6YoMXXVMKAQ7dF7oNzEDS362kNA4znuM6RuTJ3Ec5QdI7GnhnlAvRKiKuEEYwlUhSaghv7KGKEap8f1/ykueVByj12Wvf4PI7Z69ZZ2YpMEacmVZu9ML8n+/A4PQxDgPkahLqf5S37chdCiDhaLbSBB37ksOXCNjve0WmFRaTHNfiCAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from PH0PR12MB8800.namprd12.prod.outlook.com (2603:10b6:510:26f::12)
 by SJ0PR12MB8089.namprd12.prod.outlook.com (2603:10b6:a03:4eb::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 25 Feb
 2026 15:42:00 +0000
Received: from PH0PR12MB8800.namprd12.prod.outlook.com
 ([fe80::f79d:ddc5:2ad7:762d]) by PH0PR12MB8800.namprd12.prod.outlook.com
 ([fe80::f79d:ddc5:2ad7:762d%4]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 15:42:00 +0000
Date: Wed, 25 Feb 2026 10:41:58 -0500
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Andrew Morton <akpm@linux-foundation.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Brost <matthew.brost@intel.com>,
 David Laight <david.laight.linux@gmail.com>
Message-ID: <aZ8YRsdcRDcEUHmO@yury>
References: <20260225000007.255837-1-ynorov@nvidia.com>
 <7e4e207b-e839-4cfd-941b-5bec7a9ebff4@intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7e4e207b-e839-4cfd-941b-5bec7a9ebff4@intel.com>
X-ClientProxiedBy: BN9PR03CA0771.namprd03.prod.outlook.com
 (2603:10b6:408:13a::26) To PH0PR12MB8800.namprd12.prod.outlook.com
 (2603:10b6:510:26f::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB8800:EE_|SJ0PR12MB8089:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f0a683d-2451-4074-5fe4-08de74846a5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|7416014; 
X-Microsoft-Antispam-Message-Info: OJ7ZHWrR1eJKEf20NVqgusgH3eHBlwQoP5qp3KHxwnNB1YWwXsrka4kH17jFt4Fv2eDknacGNk+AHDAx34M6175xKTBt5tcynjrvbZaooYXx4U2T3gz8kxof27DTOWvc/BiMYHMj1pPSFfkwOaSCppmXwwMCTR2ggS0zEAvFKW9xhoOgGK2ljSzKzbCksgRAbLPhlpCxR2JDngUO6k8gwrmf3t0ZtXrMUCVKzy8FPd1VpQ0Eorf683OqVkCMJgCPlDai3JriTCFFUG3SYUXpeuqmBMys+OcC3PQBoyLi7FP/atEL6hx0ht/fdG782Efp9v9PuIu4ho7SckiKfDWJjkgoqreyG2hSebtnayv78yn7cFDIIq2dikxqkjuGxH+xzlnbIrr6soK0s49hHKHBVlXeX4QDPiGRBJ5ap+687phszeM+/rGWaal6d8/mk5RTpw1rlZS9OsdEPuvX6ivFSv8zT8YcuKMD9DMaD9Cd0pk7xusGFJfoEA6QN9Dg8VPweitcp3qdIiSzRj6bkwY2482F658hYVj07SGvzQtlOaxrDujbIq8C9nYfX3NxbKDIjmicxMzqIYu8/JzrqgS9kIo2dnMgBOB6qKlBSc4Vu6rgTYHMRzrIr/aLGYqN0mUcVR8X9+ipCJewxoItk+HzvLO3edNWuvgpJZEfwz4d0ZusAFtFtV6N+2RlKODTdkngIIGdMmL7gQQK8epvpNgqKrgqO+A1wU0VTUygzjx4+O8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB8800.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(7416014); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LKqocfCvW6RV0Kkc9UNRmyHNE3eCqExGfBrHTylKNU5H5b/MjFMLjLocekr/?=
 =?us-ascii?Q?LYL+G7pPWX5yjTdNhCKLJPyCWfAL/pIJQnuEKWpyYIp8B9zeauTmNEVvdZaJ?=
 =?us-ascii?Q?Yh2A2rRwnijYcULcbEEwW+5/7YCgoPCNe/A9ThX6EdvwtQdWI2lGHpW2Parp?=
 =?us-ascii?Q?Tf4hBk4hEH0QrfrwHnSznu4RaZ65M5C5QmCcF2prlrwXixaN61uPXLprVHZV?=
 =?us-ascii?Q?wIJD6E7bydjMWeGnsgpssq9OrKPmftjbFy9jw8250InhHZE9iT6btEwqk280?=
 =?us-ascii?Q?LJcp2Z0cWRLYt1U9MYgPexl3Q242/C4j5SLmYtI8N2f93u5+AHrhJ5slRbrj?=
 =?us-ascii?Q?MCykqJKFveEoJWtFN/U6b/CiULqMDMT4QohtOVdYdxERFXiTdzAKbCHyqFDN?=
 =?us-ascii?Q?rNiuHjS+Z9Uz/ddaTqOu0bFmQB2Bl3wriTBkxayYGOzix4li4n3Xvb4yPKjI?=
 =?us-ascii?Q?HoxoHotCUwecWXTtJBjID4DPyf9p8j36KAk3LLvO7NpqYxYvFplfcn4oOLhT?=
 =?us-ascii?Q?KKkIYqjer9dKy2yoCj27yAVgAac6KK/LAJZbXRR14C9uB2k8gdpmy1WZ/VE4?=
 =?us-ascii?Q?J4PbZT4PECOoqKoak+T14ytTyUAFvrk69YL40Y41bextXQaO45iD1Sif9kW5?=
 =?us-ascii?Q?vI9P5q/ePCMkfWErECk4FyxGe1ZeklnV/F9ru3BCHYOo6+c2499BTCJyAtoA?=
 =?us-ascii?Q?7o4Q9xX+spF9bENz5CH0/0LN50OUNuq6DomxENnBM0xecChUGY39sDDgZ+oX?=
 =?us-ascii?Q?gLfvvPPhqHIh9UnicV03NjegjtN5cH5EYQh4q2RrBcenV2+97E60cxz4FLtk?=
 =?us-ascii?Q?V2TOl7sv7LZABcO3owwX91Z6zgSqZLrIxQgJHj/JjJGKBHSgyZySJlG/odkP?=
 =?us-ascii?Q?CNlTW78Ua5N4J2hwmFW17kUl9cZcK+FhLYJtuN+XWJTxjhOwP0mqs1bpL4qy?=
 =?us-ascii?Q?KGp7L9dJ3UvVBBPgLzDXEShlGwXMIcFHu9qvCGYBZvjYzvZqZcXodxESemD8?=
 =?us-ascii?Q?dZewMfsfx3qnPkDJkuZx6BGg6V/PspGz5djjeSwV4KnkzFSsd+1NY/YPevHx?=
 =?us-ascii?Q?kX3/AtR5J8ZOb0L51jrjZw4ZDOWXs5hdUDtjMclMwBFfjl6iUzJTtGHTPqx5?=
 =?us-ascii?Q?+yPE6c6JFMZazv6yMcChkIRXnMl1LCOp3b/RyrtrVzw6YcnsATmPKZ7ufah4?=
 =?us-ascii?Q?7zLBEabeirW6lnS2Ob7+44H1FPYS0yHjy0GuVrpEyVUwZ2R4AJQ/p7rhoI53?=
 =?us-ascii?Q?CzJWwT/zRCiYugM0xsdMHRTfFm8j8bAgB/cLMcI7kpor2M99bvcMUgPeYmLM?=
 =?us-ascii?Q?ADw45i98PDwjf0VkedQ/DxyAM+O6i1q9mc9qEBdAnTaDBdPVYhiDxzr7Cd6o?=
 =?us-ascii?Q?M+JuRdalotwVuyYjX3FveKFErIgOuxs49PfX6vcdvfbFnpZLjaVNyyj3sU8m?=
 =?us-ascii?Q?vb/HthHFa/eaEa5j4h9o0QMM6dL382QGUi5CAxarOiYYiGij2sA+5n+zJKNe?=
 =?us-ascii?Q?gnzndYnFUJLSgEBeneM1nXYjJPsjMrwitI1bqvsLLlTMPd/JuVCyfGcU60XR?=
 =?us-ascii?Q?i7O0KFva/Cd3Rfn2/sBI5DLvK6ci2C9P7S2x+5JZuzNYL84UgvJnuckFtqJF?=
 =?us-ascii?Q?ZszSFddkO7CHJXLL2/i4psay4ewL8wMjsSjqbgBG2C4KoNJruchTnjJ/wKiJ?=
 =?us-ascii?Q?G9jn1Iq3vGXb5Q53n5QOjO12VVt5EWPBtILvD+ZKSkC+bc+CitwLMpGu58UK?=
 =?us-ascii?Q?8xhfIwDtnpxaDu0Hwf6SBOINTWcVOmv557yxy5vG4HaiasBz+WFn?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f0a683d-2451-4074-5fe4-08de74846a5b
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB8800.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 15:42:00.5480 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QqfvfHG6M4oGMz2omV4f5IaEFufprBpPu9RkBCAgYR/rAu2EPpqdm58iLtdKE3I7Hy8jgei9d3R0TBmDpMNqew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB8089
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iZDqo9Htf0TSZlEpLnRma/8qjLWDAe/gqvQRZdOYp0o=;
 b=WxTeL4HM0T8yOgXqPV4H41uOe0ojdHgF+QkFwpB+Jyx1aQ/WJMd2YX+EQ4kcb5d6pn3TjK4lg/VoKIGwvoDNorgLqxK4/jebgz3UDm2SnmOvD9X91yfxHUjJ7aX/7hfrodk0MFcmwUmdhVdJkkfWc8X0rJOtIE79aNuvfqQ+u85mN1TDb4ePpzF7Z0HlgWoR3v0gdGZaAFLnNt7kyKFL6yGLUhywc8slNvxHvBKpPfgOthJNvkjogfWIzhwmreBRWU8m6duLpXtyE0b57rpiW693CNamkc3o3a32DqCwMK4XRUZg2yhUJuhs9GAr1gSc4wklSGcUZVxbCal9BnqcXw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=WxTeL4HM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND 0/3] ice: use better bitmap API
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
From: Yury Norov via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Yury Norov <ynorov@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:akpm@linux-foundation.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:matthew.brost@intel.com,m:david.laight.linux@gmail.com,m:andrew@lunn.ch,m:yurynorov@gmail.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:replyto,nvidia.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[ynorov@nvidia.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.930];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,rasmusvillemoes.dk,linux-foundation.org,lists.osuosl.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D7DA5199D3C
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 01:02:35PM +0100, Przemek Kitszel wrote:
> On 2/25/26 01:00, Yury Norov wrote:
> > Use better bitmap API where appropriate.
> > 
> > Original series:
> > 
> > https://lore.kernel.org/all/20251223162303.434659-1-yury.norov@gmail.com/
> > 
> > RESEND: rebase on top of v7.0-rc1
> > 
> > Yury Norov (3):
> >    bitmap: introduce bitmap_weighted_xor()
> >    ice: use bitmap_weighted_xor() in ice_find_free_recp_res_idx()
> 
> Thank you for working on better API.
> Do you want this to go through intel, then netdev, tree?
> Likely that would slow any future user, if you have already one in mind.
>
> >    ice: use bitmap_empty() in ice_vf_has_no_qs_ena
> 
> For unrelated reasons I have one series that will possibly conflict
> with your patch. Would prefer to not wait/block each other, so will
> be best if we (Tony) just take this one (in case you will proceed
> with the first two patches via your tree)

Another trivial user (recently added) for bitmap_weighted_xx() is
xe_pagefault_queue_init() in drivers/gpu/drm/xe/xe_pagefault.c, but
it's again the Intel's driver, so it will go with your tree anyways.
 
I'm not aware of others, so I believe Tony's tree is the best route.

> >   drivers/net/ethernet/intel/ice/ice_switch.c |  4 +---
> >   drivers/net/ethernet/intel/ice/ice_vf_lib.c |  4 ++--
> >   include/linux/bitmap.h                      | 14 ++++++++++++++
> >   lib/bitmap.c                                |  7 +++++++
> >   4 files changed, 24 insertions(+), 5 deletions(-)

 + Matthew Brost

Attaching a patch for xe_pagefault_queue_init(). Feel free to append it
to this series, or let me know if it's better to send it separately.

Thanks,
Yury

From 21804f4ae1674aa166e3566fa898996806ebd3e3 Mon Sep 17 00:00:00 2001
From: Yury Norov <ynorov@nvidia.com>
Date: Wed, 25 Feb 2026 10:02:22 -0500
Subject: [PATCH] drm/xe: switch xe_pagefault_queue_init() to using
 bitmap_weighted_or()

The function calls bitmap_or() immediately followed by bitmap_weight().
Switch to using the dedicated bitmap_weighted_or() and save one bitmap
traverse.

Signed-off-by: Yury Norov <ynorov@nvidia.com>
---
 drivers/gpu/drm/xe/xe_pagefault.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_pagefault.c b/drivers/gpu/drm/xe/xe_pagefault.c
index 6bee53d6ffc3..c4ce3cfe2164 100644
--- a/drivers/gpu/drm/xe/xe_pagefault.c
+++ b/drivers/gpu/drm/xe/xe_pagefault.c
@@ -285,10 +285,9 @@ static int xe_pagefault_queue_init(struct xe_device *xe,
 		xe_dss_mask_t all_dss;
 		int num_dss, num_eus;
 
-		bitmap_or(all_dss, gt->fuse_topo.g_dss_mask,
+		num_dss = bitmap_weighted_or(all_dss, gt->fuse_topo.g_dss_mask,
 			  gt->fuse_topo.c_dss_mask, XE_MAX_DSS_FUSE_BITS);
 
-		num_dss = bitmap_weight(all_dss, XE_MAX_DSS_FUSE_BITS);
 		num_eus = bitmap_weight(gt->fuse_topo.eu_mask_per_dss,
 					XE_MAX_EU_FUSE_BITS) * num_dss;
 
-- 
2.43.0

