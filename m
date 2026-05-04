Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gO9uCLGe+GnlxAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 15:27:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A654BDDE6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 15:27:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65BDE84481;
	Mon,  4 May 2026 13:27:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vZ3VGz1HXijs; Mon,  4 May 2026 13:27:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84536844CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777901229;
	bh=EaQxipK9C6EvDpo2509CPeR36yjC97SZVwUwzFW2x6M=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nf3vsYCihWn51n+sJSnl0YpO/aMMPE3S9h6G9qj9cqyIpTbADEjYem7OJ4qRDW945
	 +YaBBn4DkJt3Gqlnf8BkY31xb5JrKoVHiAzmEhmNswOsqXwH+0gSwk10AByI/XDaLS
	 8LqCMDvd2EpiY6hNo4LihXIGzpDOm0t9f8+hM/N/fu8lIOMU2eUSSbUB12mPB0Drlk
	 2RRf6wCD3YGA+yzJ8YS0Vn3bNTF1t4lzdxDOeCWR+gDDSL4ahucCZvls+Gql1BX5nT
	 8aB1NLPgwuVsnD7OcNPmVRaF16EkuoGE/B1ORt37i2BAGX9+aiV9feiFBYBbYQWwek
	 79sFAS03Nk36Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84536844CF;
	Mon,  4 May 2026 13:27:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B037D190
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 13:27:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E14F843F6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 13:27:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9IWkBcm0IUIV for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 13:27:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7F1F7843BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F1F7843BC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7F1F7843BC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 13:27:05 +0000 (UTC)
X-CSE-ConnectionGUID: hnDiRhGsRwSidRtipINxXw==
X-CSE-MsgGUID: utSiukAqRyevMzzDVtK6pg==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="82605294"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="82605294"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 06:27:05 -0700
X-CSE-ConnectionGUID: s7fgqNWpRE2YnkjkI8FuCA==
X-CSE-MsgGUID: Ty28PwSXQWOzUYDWfv5SbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="230926057"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 06:27:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 06:27:04 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 06:27:04 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.61) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 06:27:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PQB/NvJvx2DmOcBZnXvH6GV0B1nBOGe7QviDxD+xylDoASx9wDBFg0oye+66Lv8ngoB46CpnTvZp/hJe+8+Dmc6r0WEvwBNT1SoC3Ck4IOgV+YAzI9SOwlJeN9YvsCDehXGYki62aLhcqvDhchmNTzL9cPHLI358O0hc6LItQX9KVZOlXGeNSE/MJoxnaLy+xs4gqaDkq/yUs1Ji09IP2hsxy4XXLV08aW7ty1SwIY6jQBTDj1lSZEjS0Ojgyf6XMlsRZHD51wVAOI7t1rCk54LVnTWGtq8zLRa4sXrvNqgETO0Ai5GO09I5y6uyJSYAF8k/cucfCh3q/PG1ngvQCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EaQxipK9C6EvDpo2509CPeR36yjC97SZVwUwzFW2x6M=;
 b=W3E/DN2JVukBLq74/qOyZd9broBW22oKJzkRbGFCKwsiTCfSTtv1sgXZwRcV+QTZLRVatUBEjwKiTL5I7QpqctqmMk3PoeAEDlE9Hh3TodInAiQtyvYP2UiyqNvwlUKm5kXD9Kvm4//2m1mpi58GHDUsspXzARaLT1mQhjYVv2Rth7NeNJliMfxjuPyCYrt5dL4WAk1ycPjk1T/akTMQNuAFd43nWFHz0iQwDM+HUw+fZP5Zuz2gQBOEGKP3ayO1nbN6AK00xdlYXiXxM2mUy1wTcpDOk4XCYUL7+UeVena/4/6AeMM8b4nXseKMHzEl56TilkwigPAWu0aAwJr90A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by PH7PR11MB6545.namprd11.prod.outlook.com (2603:10b6:510:213::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 13:27:00 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b%6]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 13:27:00 +0000
Date: Mon, 4 May 2026 15:26:51 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Joshua Hay
 <joshua.a.hay@intel.com>, Willem de Bruijn <willemb@google.com>, "Alice
 Michael" <alice.michael@intel.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <afiem5uwBus61bLb@soc-5CG4396X81.clients.intel.com>
References: <20260429074232.180528-1-larysa.zaremba@intel.com>
 <dfa0c54b-393a-4671-8531-13cb454b872e@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <dfa0c54b-393a-4671-8531-13cb454b872e@intel.com>
X-ClientProxiedBy: VI1PR0102CA0012.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::25) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|PH7PR11MB6545:EE_
X-MS-Office365-Filtering-Correlation-Id: 42e8e7f8-74fa-45f7-fdba-08dea9e0d200
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 2WM5TNAZvDzphJg9vT6EJf6eTdKIFO377RTjHk2klUt1aklSxa6og8Qgo3TEv6BTb/MA3sAzpHe7LkIVjqOJ/JkANvjKSM+hwehN7N34QQPMbB6TuZcB/X81l3THai3WB/HdCwnIDF/T/0fo5lcbJG57ELwH8MMcM3cty8MSKtDRx3b/90tT5fNKbbgzCIrh6VjzBvxbm04zr7YJ+tp153e65gLWSfM43hO9d8qclvQx/QMJMGfdaKZcHIl8sV+F6luJAVoEaD3sPGo75qcstvQhQ9fBf+OweXV1P9Kxhcy2YLRFghsBE0IDwA06cpScxu4eBjigk2N+SF2yC2mShJ6pHelUxDIw1q/jqaA3FH5oJHZq34uSrld1utk9Cty8Gu9m80AEFm+1jZeC5l0QwuAHFZU7z6bRU1TWgTTh0e2f9FKB5RBssnGoeLROf1R06WhrHlp6c3gBVGru03SzzNvFDyHOMJB08vhBp5MhFXJPnF+08DL2mu0qtQKN9OsxIG7eep03cZt2E7KCbkPuIlsSugH+W1o195IqJqgglgeuJeyJluHXYb12NvhnfSc+UXO0n+jLalG8b9WADcOi1uImYqODDQszuhg+ME/6MlyRWUY8KwoKroNcp6Vurb0VSfnv5qP7A7499LGEiQ/VCg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qhL9iR2gbzY6VW5LdtpWqzwcNoWkHpZStOVxWzhcFU7/Y/ua3k4z4UgjjZGn?=
 =?us-ascii?Q?V9ioRH1cBGB9v8tm1b/Ea9qMDfRg5WGB+GVksY2H6XETBvC0y+3s8lU1is6+?=
 =?us-ascii?Q?3NdO9YWCG3gAsg/hhs7WyA2291MOl/YdMWqNJjpJq4hmmcQZr+ZgLr7hnwVF?=
 =?us-ascii?Q?HFifNnAo8FcKQJbqHHyFsCSzNhdHinsX7xhMY/VYrlzDKOwF6sD8QEzqkzV5?=
 =?us-ascii?Q?+EvmyrLKMEYnjvGoExNoVFKLINZMFNsqCIU1KS3FGLjXPX3x8kSgKVyIssPn?=
 =?us-ascii?Q?qGi19GnKjDnkqSnRyk4PoE4xFPAgu4WAd8+NfxKMr/A0F6OEIio+ehU8pj4N?=
 =?us-ascii?Q?4uEdfgoIgeO9WFuw3IFSQAn7KR2MCTOG5i8tlmJ0INTDzsSGf5sFUGzgX/ML?=
 =?us-ascii?Q?aIGR3PA7pUtSWmCVC9aKdjyA0fbcygP6/9KWgJDHhe4mcsJWXq8nFaVLM4s7?=
 =?us-ascii?Q?cc06tn4hQIdR26eTD2ZKJHf9Bsmu4Ud8NPCpxSuIf9MQm+CLAIB4BK/0UqpH?=
 =?us-ascii?Q?vAKncbNq+0M8bG79Lgh9rIg8L+ippVNUtmyyccehSBa6eE3oPQIx5sgw8JAE?=
 =?us-ascii?Q?D+HJhPNm1FApduoD6FKDeKSZbclXgF5eGftnT/eU0JUkFDvDfbpcdHLXQ86R?=
 =?us-ascii?Q?OgumSQThWfZl5edTFaxEEa1GHm9EvHsa1NydGmOBmyeJPJXZMGOMy9Dv/wTN?=
 =?us-ascii?Q?EbhogQvI+Q45ILWLd2eJ15EM9AZFMqx8OdgCnwBN274QjNfiWqVoDb4ADskz?=
 =?us-ascii?Q?gsUc8ERN612uk1lrmgPszrBI/dFTJcOElCvf3v/tY1KO1KB5BeBWs5gc4n+M?=
 =?us-ascii?Q?BiSsluFg9eslac3kS/kp30z6pdbHuRZqvEvEcPtDu5Po9RSYRUb69tbRZM7z?=
 =?us-ascii?Q?Up6+lQl8Pz2/CstAnxg6tPiVQRgZ0m0j49spSEjIJstkuxjnop72silVa7Ye?=
 =?us-ascii?Q?oT7uq+1Jpw2WFlAZKT7Puam28tNGGAQvznlqh75KjHYJRQ/eeLNrXSbSbYml?=
 =?us-ascii?Q?WIPgoP/m014PVL5CIES7bKb0YG7CN1+u8eP5qyPFCIr2g8bzhjewEAotXTn7?=
 =?us-ascii?Q?4ULMzzwpSbTt4FNCaPI5tWGYXmW8gGedQlniK1pGmGHVRFEbbpHkJ3BhgFEu?=
 =?us-ascii?Q?zxcVZD9sV3LFtNjh+/tRLXPdobg37u5EGf01zSJP3wH8EbgJfo1nSSFvNfJC?=
 =?us-ascii?Q?BLVWYRaGZveKS1ydD5fm3+/K8bx+KpPhYpPhAAxpExc9S9CdkAonL1CXKmq1?=
 =?us-ascii?Q?9PuqQCSIgDOwJcbjexXNUXrNHDKM3t56HBjhMgwkXtHSwJAXosKlp9LV6lCH?=
 =?us-ascii?Q?f6TSY85VIHQndsMLbL7KCHG8jKpK+KMDKXcsPBZepy1haGsvMZPXEvm4p3/8?=
 =?us-ascii?Q?O8rxA+dmb0hETvmErb3jOR1dUAiG4PbpHtDBJQ+cc+75ZijXnRqztkuz1C1G?=
 =?us-ascii?Q?Ofvv9HmZxl32noSJIqKauqI7wgLjKlEehH+5NJXChG89emcJGX/EL/ZVh+pD?=
 =?us-ascii?Q?Mv43JmkmZRI7/Ps1v8Ed2F06CiqW2aqbJEBgsG6EH6fikPWelmNj+OdXWkH4?=
 =?us-ascii?Q?Kl8EdNlIPBC9fB+ITfWC1m3JZ8Ea0isILeyCWXEdD8S3BgoxECNFKMkKducd?=
 =?us-ascii?Q?g1vP9FL8DOrLxWJ5f2pb4W4BN4FZNwAgL5CcCqpSQ4bnWCzf3sV+LQyCDh5e?=
 =?us-ascii?Q?PPjdH8rfwx6PHjWCqMckkhbROwtrRjgkSLKq8i+WoFwqi67o8zogv3s+ZJNq?=
 =?us-ascii?Q?GqYBIr+VgPlYRpxypmFjjAE91AguqbxhMfma0+I4W/n4vop5S9cOgztp/Obl?=
X-MS-Exchange-AntiSpam-MessageData-1: e2vVYTqgDuQ39YJABHVnDo0nt+KgYiI4aN8=
X-Exchange-RoutingPolicyChecked: QhQvcn1vQ37i/vtpZggQFIqHkC2Zf7c4VD93fpYjrXrurbzOUau76d1RrLOVIxXWsmCYjlWnFfKMDg4G0y9pH9goR72Va8QUF5PZnl77mGhahaolilKQgoKTQGRDFOfQVVHHPcpjsXDwTGd989cpeQgYohFg+Qo7YqPXU9gQv/vHvrkM7MrxgRG3I4RyBgppIoH8BN5BM7AHkMfzNzVhLwXmObSgUtBKFUagzK6WhwTFhoBWWzN0PjFRTuC0aUVNlqPxI0s2CmqZztLE4Q9rgoH7UQokgW/1mGjfTOf8AnLZMNqdKAcIpTkVcHf8wxlhutPVPBeRMMQlEOrfrPf+mg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 42e8e7f8-74fa-45f7-fdba-08dea9e0d200
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 13:26:59.8698 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FLDnVzPmGo63QiB2q5uDqwFfIolxNPULWTEjc5kz/sNjSbcwXzoyAAEade/UwG3zrSthPhyIh2pUsTG5AyTb+M76UNjAlH2nkpwrJVM4QdU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6545
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777901226; x=1809437226;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=iE8Dat1MVu8SLRgwFO2vPh6DuadlN72B9QJlyU+0rro=;
 b=RPn0WDCWHWMx89Vk20ozdxdjSTgyaxsmpH1WnJ3eXgItpUIQbRvh4mhW
 8Ni9n7Fk2EGxPOk5A8Lrfb42kTwt7E5ei41ysLcNKD9arEuqMeM3UBUkA
 taROQjdkPJOYN0vIx4Ow+YCQb257cpwYIrb5fxfi6qBZkdx+YUf6scqOr
 CI1dOc7+Mjf1JQzhw63OikwptuPxjDaNgwSCHTieB//kPzlqguOTfOZEk
 CZ8s5dIrg4w14utm65Tuv1ezLCr7JXxwElBaLJbsxVnHxehErxZVxPvbN
 /gXSY+EeNapqzYolOecnea2ODZUUKmHtvMbMllfYPR6+anQwanLGveumv
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RPn0WDCW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix RSS LUT memcpy size
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
X-Rspamd-Queue-Id: 66A654BDDE6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:joshua.a.hay@intel.com,m:willemb@google.com,m:alice.michael@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sashiko.dev:url,soc-5CG4396X81.clients.intel.com:mid]

On Thu, Apr 30, 2026 at 09:38:44AM -0700, Jacob Keller wrote:
> On 4/29/2026 12:42 AM, Larysa Zaremba wrote:
> > Based on the following feedback from Sashiko (received for iXD phase 1
> > patchset, but valid for the net tree):
> > 
> >  "Is the bounds check xn_params.recv_mem.iov_len < lut_buf_size sufficient?
> >   Since lut_buf_size only represents the size of the array elements, should
> >   this check instead verify that the payload is at least
> >   sizeof(struct virtchnl2_rss_lut) + lut_buf_size?
> > 
> >   [...]
> > 
> >   Does memcpy copy the correct amount of data here? rss_lut_size stores the
> >   number of 32-bit entries, not the size in bytes. Should it use
> >   lut_buf_size or rss_data->rss_lut_size * sizeof(u32) instead?"
> > 
> > After inspecting the code, it was concluded that RSS memcpy size is in fact
> > 4 times smaller than it has to be, since a single array entry in a u32, and
> > rss_data->rss_lut_size is clearly used as an array size. Required Rx buffer
> > size is also too small, but this is a common issue in the idpf code.
> > 
> > Use a full buffer size (lut_buf_size) instead of the array length
> > (rss_data->rss_lut_size) when doing memcpy of RSS lookup table.
> > While at it, increase required Rx buffer size to a whole flex-array
> > containing structure instead of just the array.
> > 
> > Link: https://sashiko.dev/#/patchset/20260323174052.5355-1-larysa.zaremba%40intel.com?part=8
> > Fixes: 95af467d9a4e ("idpf: configure resources for RX queues")
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > index be66f9b2e101..a97d2e9b54d4 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > @@ -2916,7 +2916,7 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_adapter *adapter,
> >  		return -EIO;
> >  
> >  	lut_buf_size = le16_to_cpu(recv_rl->lut_entries) * sizeof(u32);
> > -	if (reply_sz < lut_buf_size)
> > +	if (reply_sz < lut_buf_size + sizeof(struct virtchnl2_rss_lut))
> 
> This feels like it should be using struct_size or flex_array_size...
> 

struct_size() does not really fit here, as lut_buf_size is needed later for 
flex-array-only memcpy, but flex_array_size() I can use.

> >  		return -EIO;
> >  
> >  	/* size didn't change, we can reuse existing lut buf */
> > @@ -2933,7 +2933,7 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_adapter *adapter,
> >  	}
> >  
> >  do_memcpy:
> > -	memcpy(rss_data->rss_lut, recv_rl->lut, rss_data->rss_lut_size);
> > +	memcpy(rss_data->rss_lut, recv_rl->lut, lut_buf_size);
> >  
> >  	return 0;
> >  }
> 
