Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B481A565B9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 11:51:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7BA2607A7;
	Fri,  7 Mar 2025 10:51:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gS1VkTuRUSrY; Fri,  7 Mar 2025 10:51:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7514607E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741344700;
	bh=BAmYv35OkCyx4uvc/U7JZ0Kc4MkQKAkdBCE91aOdkjc=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W4ZW+UQlHUwfolvYXZn3Snusw6fIZV1OLHKAAOJTnl3ReWu2mcV7EidumUssBvulU
	 bF8ApckTQcegHHHO26WaZrgB3ya6+8tQEQb0QtMuPA6jpqMa7RuZS4C7fY/blqj5s5
	 SY8/U3xSqJs4184oTumP16QYdVzg+9T8bizbtrbz/D1Wf3V3E9vkL9tRFfnPEKVoL5
	 2JKI2nc2J1z2P14faSexkXKYEgM2Fw4mg4vUKqdYpvvyqHaiTME/H8ezMElFog2ffC
	 sSv4HqErlvViK5hpvAJe/tR7O8XZMw/XrYS/gw/eae+J2UqtfPWgLjB5wIlb96XYpU
	 7bmh0gfE/0JnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7514607E9;
	Fri,  7 Mar 2025 10:51:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 01D5B71F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E541240025
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:51:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V30YXWFw2y6e for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 10:51:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6417A400F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6417A400F2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6417A400F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:51:37 +0000 (UTC)
X-CSE-ConnectionGUID: Xsmc6EUPSJyN4GjhpUKT8A==
X-CSE-MsgGUID: YTm8wCaCT1iz5FrsVBR9wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42618331"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42618331"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:51:37 -0800
X-CSE-ConnectionGUID: +OVyz3w2RgSFS9vmhTgtNw==
X-CSE-MsgGUID: Rxm+QdJaSwmyQPmvSMXyFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="124385259"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:51:35 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 7 Mar 2025 02:51:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 7 Mar 2025 02:51:34 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 02:51:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vHhBf6PvwHVVWzm8Wt1rywTzA9vGTXopEPHBhhiubxeJ2qFFhCo/1j/lu7o7tkKrYCH98XSN6b7sgiWJJo6uCdZSO+iZbD07bh9UxTIpXLlmT7fes1BK6Vy3DQ2pn/LmoZqKZw4HUtpcxvFPwpqch35GU9jsq232/TICuWROSgJVkkp7zh3N4tBIPUnaksZklzGpUZ8BXy4Wild2r4JrDWVJUIHXsReefEat9O9JLLI32+d3v4UAU3SCqESaDtcSMxaMqRKRcwnnxwxDgqWimBM1Ksr6CmQraOSsUtbSRm8EcQCZ6g3XgLEaahkDYuVTL+ZskcGyO4ONas+1CGNtoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BAmYv35OkCyx4uvc/U7JZ0Kc4MkQKAkdBCE91aOdkjc=;
 b=hxDEMCfUGLoQeDbpoap3XD6i3lKBcr0F8E7yU7Ds6oJzzyBRtXKeYY9AU+MBYwHmobXotOugB+gfBlZ3vRkouv40zI6bAsJI5wa0Fy1y6zAbmiSKqm1AXDPyDKO/FswOIU+MXJAf4ckVD84htlh+VNlf7i/6ZKx7ai0u9W7JazSqV6Didr5QZbC0ZUeM198FvT/AHrW1nGxgAHx8J3+gAlopqCW7qGVrwIwo6/SizrrELVQ9JlgsCmLbUs6awlOQkuuw09ozbe+xPaD1+MleBgtSzXNyuzoTqgW1FUV3cqnuHV55yw6OhDDqR0/vROCUW0jrx0KeUugspjsCJc+cCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 MW4PR11MB6572.namprd11.prod.outlook.com (2603:10b6:303:1ee::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.18; Fri, 7 Mar
 2025 10:51:29 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%3]) with mapi id 15.20.8511.017; Fri, 7 Mar 2025
 10:51:29 +0000
Date: Fri, 7 Mar 2025 11:51:18 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 <bpf@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Message-ID: <Z8rPpsAbm9JXOCxZ@boxer>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
 <20250305162132.1106080-8-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250305162132.1106080-8-aleksander.lobakin@intel.com>
X-ClientProxiedBy: LO4P123CA0357.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18d::20) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|MW4PR11MB6572:EE_
X-MS-Office365-Filtering-Correlation-Id: a3dac5b4-d9f8-42de-59f6-08dd5d660403
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?XX7e6WYnh0rOXnNb9FmXeyEOtsQDIQfeeG9JLMIjiiFTDR/KkYY3ZbsEFPxW?=
 =?us-ascii?Q?NgaiYlgnesahtqSdnjCTeufOiDBN3z9eHt2xJoKjlSUOZX6wTJPe6fBwn/gZ?=
 =?us-ascii?Q?CKGLluQEypVSvaQGhvlzCc9q3Lz7JUpSk71B7eQSmx/JSS24zymayiOdPeOV?=
 =?us-ascii?Q?eQu3MbFJw3KP1sigDyOaTUELxCCiKGH21pLyEARccYmFuryPgXmgT0fou+jC?=
 =?us-ascii?Q?R6qcnqarLmNRe9QrNUQjOHGV12TO/AJUEAt4fVxZH87q+rybdBD108XPs31q?=
 =?us-ascii?Q?Y3EqosDLutQ5wdkYGtB7117tTA5vufe7kOVtLb1qyfgvllR/M2XE0vOPmJIY?=
 =?us-ascii?Q?lp2v95IxnQuz91e/a8tZxojQ3N6XYNq4UqtlwN7Z8O5xtUZO+IDcpNFSO326?=
 =?us-ascii?Q?qHp/PROG1FykZsnB5nFu0T/nZwcNeSq+4uOzv+SWblK1TPIj5dv225ymWVnw?=
 =?us-ascii?Q?mwZuMTJkPOi1x9ZmXpZHfpzlDrJ7ti9ImHZabja1088xT2xvHHnwcnGwd329?=
 =?us-ascii?Q?JMfbNH7wxje7OHsdP4+V8d6A3qGh6dGJOlgwH2SdwOySSS+81S1Y3Bn86w8u?=
 =?us-ascii?Q?07DeoXgggFOmWqs7sMhdt8xWz17vfX9t3qzljZ7i9gMt1yaKbXmLcdy/njAz?=
 =?us-ascii?Q?uAe1lfXdLAFjNjfwtyXyLmpqZcma59w5hv6+Y4tccV5rVi21Q8KKPGSVKnwl?=
 =?us-ascii?Q?zfwefxFO9Lbrdi8tbEGWBhwcm0aCYRcpE6QB3NHMfFdC1Ps2Fq6CRLo363ph?=
 =?us-ascii?Q?5b/WH+Hg3Lyan53mkr/34oK8vvmwDS+kuA6XibaTkXJhVGPNrUdrMEJ6o/ae?=
 =?us-ascii?Q?PUZTzJh8axEYSDDCkfoB1gRPl9OOxCvmx55ZqmIe/BhTO4sKq9bJjyiRXh2C?=
 =?us-ascii?Q?7fmd2EPfu3G/jyzWpiSvGU7TWGY+9C9a47SYoj/X94gRlx6c0jpts7OU4dqW?=
 =?us-ascii?Q?AzkUOIHNOBcK2scjY3fs04jA/JPj5tJv9JhMY8pa29t2VD35HWVIM27Tf03Z?=
 =?us-ascii?Q?IckSPFuyZ6YY6C4DXjBARJ4JFIXcXkm0xPneDXJ7c46kqoLq8YKNbvyVoBEB?=
 =?us-ascii?Q?TmIzqG4sgf+xHsg7i3iWEdaqZIlK5dBf+m6sV+Dh8Jn2huYTz+QWAc7i3baH?=
 =?us-ascii?Q?UuBlmIBmyHIJP/er+016Agm0ovs1WzCFxiRiKv932tHWdyLZxrAKGWRtrTLL?=
 =?us-ascii?Q?AbXjmEgd7jz5Ldniyg8nlt6fXMi3pwKipHOljUVkmIDPkfapfJ0yrTdqU3Bo?=
 =?us-ascii?Q?TgUuLA3GLNcBKLBJ/8OUsOgAdirhAOykjfUFj71cKsuqakQej2Qu5n05ind3?=
 =?us-ascii?Q?CQ1XKGX1hE6nuvyjleZYnFm4npH/lVkHijuvfZ4uefNAqet3ZViAd2aDIY54?=
 =?us-ascii?Q?uCiyNIni96qc9y1/jAKcmn3Vr0rk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0gcuRLEURkeNSnukZx2rnGVnnR2Dlm1Caringg5H/GaVJUKQhEZ3q6HdwNZY?=
 =?us-ascii?Q?bvRVFAA/v/vfHbJyUfQsWB2t1vK5nrSP7OSJYvnXwhmq6wKDm0vr/YjXgAaD?=
 =?us-ascii?Q?Aka9/cLWz3CDcC6XqoSGJSVHMqTuMhzsytjGkFsu1O23OyXl8UCi+CSoRn5e?=
 =?us-ascii?Q?vOLWgWq/v8eTtBJQZDF0t2TYHK7fFAQyrH/eOYfPh6SLPY62KN8xNbyv0lmn?=
 =?us-ascii?Q?Ff5WT32K4vdh7GR9OLmGppuPrgD3qeNKjSXmw6cUTq7a9e9t3ho6xNoXfZU4?=
 =?us-ascii?Q?PYcPQcqw6uQu7XwhST1YmyD3pOeD96Qa8NJ3NWhmZl7rJOV51j5t+/v2aM79?=
 =?us-ascii?Q?3yZgtc0KmOtmerKtiwOjrQuKkQ8zYQouF357dY0PShKA2QZrBYmUZDFz6oCI?=
 =?us-ascii?Q?+kkqTV1GWvuL3yf8+soTdfKfTLlPGa3aGZQLqaYXmzQg/v8JhDOvd0cNZwzX?=
 =?us-ascii?Q?BNkTFYXOwJw6hXIaYSbE6pdWR8mFfVN7bk7fiBHtPRITRuKayGL9mHXIigzK?=
 =?us-ascii?Q?IEpdWv6c3OTdKDRm2LjHcvc1G5F5fBhNmsfi58nrYBGhUZgj2rrSXzmBUmT4?=
 =?us-ascii?Q?bOQ0BDna5nyeJvHBW8DMz1CS0bAyVrCBEb/hHeUDe1K+wX1BlyOceXiRJmaC?=
 =?us-ascii?Q?nTDZXQ/cBkJb8v5vg+GJnVtN/pTcvJTp1DHhja9vFQ9hg2BcgpTRSh7zXmxV?=
 =?us-ascii?Q?JAalOlgvmtyE83fVSETQ/ZDFjcjgE1FjezbLTQllGv/gUZqEGyB0yw3c+g5n?=
 =?us-ascii?Q?isDXr7jARv4o5az1TJrc+FapDU5QRZrSKBuFNlbMoxECsMr/cLnldCile6Fv?=
 =?us-ascii?Q?sw3LTkL05nn99FWouxewvVyjuo4RgaNChZaiy6nOyAsnpCw1zMxBr5mEbcEO?=
 =?us-ascii?Q?1+SFWIvlBstsDQ/gpCIm8bv7yjn9xOFBkQj0VSof4tRrU8qq74i/+8JkITJD?=
 =?us-ascii?Q?GUgI8yu8jrmFFHjY5EpEQQrkk+BjLGbfLVT8T9wb/M7i95/8HFIq89YQLKVz?=
 =?us-ascii?Q?z2QY8yZ5upXRDgRFYJZnwudz5DG80Oio8NkFYUCi75rgjdLA8vCzW9qvipLI?=
 =?us-ascii?Q?rXBJUhCii4q97uK6zUEb4XCP/3vZ+P7aCmyznP+Qj9A+WFy2T6Hqf83nqUT0?=
 =?us-ascii?Q?iiR6x6vosz+/ibQOq8rrOqLxadiL9TGAcCqQz1cPIJDI7pbVhc1l0b+ZDRQe?=
 =?us-ascii?Q?O19PiiuYY/gKw9aFIpkpe7BNecL6UGK2ZYH1LZnqOO9E7S18PR81wBidxhQ7?=
 =?us-ascii?Q?PSITi40V9M1RJf14gmlk/t+9fJ+NmwZ4OruihAnCJHdVlmAFR4W3SJ+LzN7F?=
 =?us-ascii?Q?U2wcBhQ3VYm3GVzTGlWUCEzFDgVfEa0W+b/+OYeWyFwo0Hno+okEJSn9YeiZ?=
 =?us-ascii?Q?zGhqr0z53g4kAfYeIXHcwLG+oKUCzNXFp7Q6lV/1KAE4K/ygBfMZofM+/rD9?=
 =?us-ascii?Q?MXUtt1KQNoG86IWRS2et8xiymiSU7ayGEdJOaWtCthj8wvUyjzOaPjz8U14F?=
 =?us-ascii?Q?swpujn59L/NQ2a1qa5/hTQh80lNusWky1GWwgaERYnwrFZHul6qk/A5s8vnK?=
 =?us-ascii?Q?t0TU1iLAWPHEBnRSm5B7Jn4xWcvLektCxSr9skDtwAUJ9rDovIzlosMI/3cu?=
 =?us-ascii?Q?CA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3dac5b4-d9f8-42de-59f6-08dd5d660403
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2025 10:51:29.3129 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pnvxfZOesmyGa5CWJH8nHzeCNnAK75tSXeDdyaz1PQY34L00lUNB2LU6oNzVtYufZ7gbxrg3ApUVOgmRMGuG3q7rQjZFhI/u/aO6p5qaMAw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6572
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741344698; x=1772880698;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Qr2M84vBJ9UHs9hLPpR7yX4ookOO+8OP7upCMZTveos=;
 b=EXbezgdozcEohUkejPfhd0tQ+EUlEPB77Z2Ebkdp04TabUSkgEjyKoC+
 ShuP4EgYPlDWXyh04fHwDrRwZjRle3LTxoTaMcc1eKUBlZE44pzc9JXwB
 RgeaDgPVQ/kYVE6VYkhyDRZD9tPts+2K5uyAeuJiGTWmIDsFNxf+jfP0W
 Ggq2ij74cvlWAEg4fd3RWhOR0li2tdiZH2e7g0kSES13BF5/WKT+oLTom
 HlV1sZHZqHVOPKnUMHajuYmfvXGEVP4fVaRfOrVyJWvIGmuhpCOIy9YBl
 kIDVqlpc9uUvDhqnzCEpCXe80CKnxxhgxd/CvnpMq+euhtHnExoaaOLFP
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EXbezgdo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/16] idpf: link NAPIs to
 queues
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

On Wed, Mar 05, 2025 at 05:21:23PM +0100, Alexander Lobakin wrote:
> Add the missing linking of NAPIs to netdev queues when enabling
> interrupt vectors in order to support NAPI configuration and
> interfaces requiring get_rx_queue()->napi to be set (like XSk
> busy polling).
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 30 +++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 2f221c0abad8..a3f6e8cff7a0 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -3560,8 +3560,11 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
>  static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
>  {
>  	struct idpf_adapter *adapter = vport->adapter;
> +	bool unlock;
>  	int vector;
>  
> +	unlock = rtnl_trylock();
> +
>  	for (vector = 0; vector < vport->num_q_vectors; vector++) {
>  		struct idpf_q_vector *q_vector = &vport->q_vectors[vector];
>  		int irq_num, vidx;
> @@ -3573,8 +3576,23 @@ static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
>  		vidx = vport->q_vector_idxs[vector];
>  		irq_num = adapter->msix_entries[vidx].vector;
>  
> +		for (u32 i = 0; i < q_vector->num_rxq; i++)
> +			netif_queue_set_napi(vport->netdev,
> +					     q_vector->rx[i]->idx,
> +					     NETDEV_QUEUE_TYPE_RX,
> +					     NULL);
> +
> +		for (u32 i = 0; i < q_vector->num_txq; i++)
> +			netif_queue_set_napi(vport->netdev,
> +					     q_vector->tx[i]->idx,
> +					     NETDEV_QUEUE_TYPE_TX,
> +					     NULL);
> +

maybe we could have a wrapper for this?

static void idpf_q_set_napi(struct net_device *netdev,
			    struct idpf_q_vector *q_vector,
			    enum netdev_queue_type q_type,
			    struct napi_struct *napi)
{
	u32 q_cnt = q_type == NETDEV_QUEUE_TYPE_RX ? q_vector->num_rxq :
						     q_vector->num_txq;
	struct idpf_rx_queue **qs = q_type == NETDEV_QUEUE_TYPE_RX ?
					      q_vector->rx : q_vector->tx;

	for (u32 i = 0; i < q_cnt; i++)
		netif_queue_set_napi(netdev, qs[i]->idx, q_type, napi);
}

idpf_q_set_napi(vport->netdev, q_vector, NETDEV_QUEUE_TYPE_RX, NULL);
idpf_q_set_napi(vport->netdev, q_vector, NETDEV_QUEUE_TYPE_TX, NULL);
...
idpf_q_set_napi(vport->netdev, q_vector, NETDEV_QUEUE_TYPE_RX, &q_vector->napi);
idpf_q_set_napi(vport->netdev, q_vector, NETDEV_QUEUE_TYPE_TX, &q_vector->napi);


up to you if you take it, less lines in the end but i don't have strong
opinion if this should be considered as an improvement or makes code
harder to follow.

>  		kfree(free_irq(irq_num, q_vector));
>  	}
> +
> +	if (unlock)
> +		rtnl_unlock();
>  }
>  
>  /**
> @@ -3760,6 +3778,18 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
>  				   "Request_irq failed, error: %d\n", err);
>  			goto free_q_irqs;
>  		}
> +
> +		for (u32 i = 0; i < q_vector->num_rxq; i++)
> +			netif_queue_set_napi(vport->netdev,
> +					     q_vector->rx[i]->idx,
> +					     NETDEV_QUEUE_TYPE_RX,
> +					     &q_vector->napi);
> +
> +		for (u32 i = 0; i < q_vector->num_txq; i++)
> +			netif_queue_set_napi(vport->netdev,
> +					     q_vector->tx[i]->idx,
> +					     NETDEV_QUEUE_TYPE_TX,
> +					     &q_vector->napi);
>  	}
>  
>  	return 0;
> -- 
> 2.48.1
> 
