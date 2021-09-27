Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1134419F66
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Sep 2021 21:47:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DB5E81000;
	Mon, 27 Sep 2021 19:47:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VoF40_6niUDc; Mon, 27 Sep 2021 19:47:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C15A80F29;
	Mon, 27 Sep 2021 19:47:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 44E001BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 19:47:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 324FB80F29
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 19:47:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tf7LyPnh87yD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Sep 2021 19:47:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5E3E480F20
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 19:47:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="310102080"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="310102080"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 12:47:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="456362058"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga002.jf.intel.com with ESMTP; 27 Sep 2021 12:47:15 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 27 Sep 2021 12:47:15 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 27 Sep 2021 12:47:15 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 27 Sep 2021 12:47:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jV/VMgYHuunIsUmJ2xA8oi15Pnq9OYTYy0cLpqXmeX794Jtvs3dUFxSknMOou2Q2kkJjP0CbQ1YSpKixffcKzbaElV0sYMCyKGzbVgXlRyRzlVSD96JC9sjwfDnpFtuFXSvMgYmvA4X7Vo0FiKcVXGjLutwg4cH1FlTgtEispkb8HcFqHap2OKDp0585hRsEiIrGzDSMDxAIL+YTmvTM4vZajeRhQ+tECNaFBS8oWaSxXjpR60SDZhtpTlpke4o8sIZCOpyo4k0mYVTWiwDu6isqRz0GcLPgOw7uYWXg6mvlKnpFRpS/xAm4Lp1i55yoSGPfr70riNEl7B9M3c1iag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=RvpHZqMAarHv3a756j8FCqzWacPsnPVIBmHkdszyymc=;
 b=NOtkdDrRkShsBN0e+4ijMIKSWxiBi6rAxDeja4CeRYruq10st95mJX1/ewLILGz9QbW1Mh2eJd/AH5+qb/L0rIkUx0/PQU+bu0J4E9lw1divA6IvbMLenfBq0C3uivA4K5b47rVwSuK/V3G1RMNSYZpsq0PxoUqusfAQAav3OvJmp/8Nbpm6IX2MT6SNZgzUxE4vm4rZxhUyAh4EEyRYKiZsn9wdDwnwaj8eCMygiOIrDrmvi7Rz7cJipIlOIPNeRVJZaNFSWpxff/tsM+/9MevIunGvHVTiCMUJGbTOw1KmLZ/JIWDpEaZ7hjomPJZkVBatQ7OQ6gcnAzdHCHDFDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RvpHZqMAarHv3a756j8FCqzWacPsnPVIBmHkdszyymc=;
 b=Kisqi0KOZYzkpKBtBwWw7aEHD60PNQAtihJonGl7Hyow/jUeIZGOjfcOuM2j3VnL+j88XnbSRlF4svMnmDfniiDLqHlQC3FgXK97H/0P0FDYf0XWkcJnsF8LBRJX5tsXUtv1YbUnebTdkUJ92eIruqhjiv2331ACb4w2HS0Zomo=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MWHPR11MB0079.namprd11.prod.outlook.com (2603:10b6:301:6b::38)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.20; Mon, 27 Sep
 2021 19:47:04 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::cd0a:aadf:cf9b:f2c3]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::cd0a:aadf:cf9b:f2c3%3]) with mapi id 15.20.4544.021; Mon, 27 Sep 2021
 19:47:04 +0000
To: Leon Romanovsky <leon@kernel.org>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
References: <cover.1632565508.git.leonro@nvidia.com>
 <23884bb7be2cc08ae00c551a6bb7d200a75b5117.1632565508.git.leonro@nvidia.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <fcea987e-742b-23b7-3219-c490d46e5597@intel.com>
Date: Mon, 27 Sep 2021 12:47:01 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <23884bb7be2cc08ae00c551a6bb7d200a75b5117.1632565508.git.leonro@nvidia.com>
Content-Language: en-US
X-ClientProxiedBy: MW4P220CA0029.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::34) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.214] (50.39.107.76) by
 MW4P220CA0029.NAMP220.PROD.OUTLOOK.COM (2603:10b6:303:115::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.13 via Frontend Transport; Mon, 27 Sep 2021 19:47:03 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 909a93d9-8a8d-4065-1b31-08d981ef949a
X-MS-TrafficTypeDiagnostic: MWHPR11MB0079:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB007998400B6367FE99E9A0B697A79@MWHPR11MB0079.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /P7vfOkt80phWIil51QJs6mHGSclkHXWTsF9885Vt6KgdBGUyMTCIVnd1RAvdKVzxPkZj5WxmIIt8cAU0BDz9niw59cmXnMvVWRDII44U51l4ZZHp+4Y1HtYGrmcDrfURb/pmmn5AQ+/AW5EcUbflntyIpVjmX41fbJ+YncXT24+P4kENJWKC9Q1KLlb7WRZ0KifYGfHq6tVHfLrnCRqshXIxxCHj8MWQD0yaLc9VNAfWb6HIw6abSZrm4UQnTTgX6KpAyLNeLB+avz9I8l0cHFflPclRxyUqOqsdA4F8+bwuOEI/P+EuPxinVMQA6bEptDmJ2LBk6LRu3x7cCbwH1dSaQdqGZQgnhze9ju9WkVUG74c0hXfuJ5bX2fMVsGsQkUAKYD9sdVY18wxOaEIRYYIJHHF1nK9JMBS3vI0/GPLDKnpy1e8nwTDcRMTkyL7tNsBWAhHtmVfc11SWKHHo8DofFfSKW3kbcPm8WTYcmgghmlr0zPle4v3AVVsc7BYdVo6PsU5c0l0oCaQ2CdqJsNiMJ2sXfJXZ6lhR0nM7glpEx3AjfLtGYTUpR3vBzyKj24KyFteOfqAURWBYBrWI7hTP9hYa6G6QqGiE2KEvDe64yuvLWT+kOcBaervntpGn2PkX3jL+aOGPsM52vFshl+MhmXBL+c1wZnL2XByZcFZkEzbGRzEcve1e8iiLsPeeJlvskdCDrVMDxwQvoLDbOwo84xwblhXjl8SsIC3+NU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(6486002)(54906003)(31686004)(86362001)(26005)(66476007)(8936002)(66946007)(7406005)(7366002)(7416002)(16576012)(44832011)(5660300002)(316002)(66556008)(31696002)(36756003)(38100700002)(4744005)(186003)(4326008)(53546011)(2616005)(110136005)(956004)(8676002)(2906002)(508600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXpBdXBjbC9TM2lhck53T3FBY253YTlNdHRpTE4vb0EyVkErSjZLSmFCbHlt?=
 =?utf-8?B?cHZkRFA4d0ZwME53ZzhLelh5SEt5cWc2U2Q3ckx2cStFUjloQVlBN2d5T2w1?=
 =?utf-8?B?RmU3T3JtUkthYzU4V3htamN0MGZrQjJzTjQ3OGZMT1ZDbWhYdnViTklCODR1?=
 =?utf-8?B?OCtzQmxFNVp1SGRoWnFhdFVGVmtWbE5UTkVBSlh4UjVTSmtmZllhSHNxZXE4?=
 =?utf-8?B?amZQeGVnRDhUMGlPcTBOamk5VEZ2TnorRUpueng3bStEWXZoNXpaMjRSOVRq?=
 =?utf-8?B?ZjArNndiYkRrVmt0eDlFR0hpeTRKckJGK3ZOV29lZFFqQTFGUDgwdkppbDN1?=
 =?utf-8?B?S1lncVlBWGVxcXJaSGVtZXV4WFVHZzBZMGJBU2ZSOHpFRnIwdzkxZXUwNFBT?=
 =?utf-8?B?am8vU2NCK1g3eXlveHI3a0d0c2ZweDhqdjg5eUZxVk9MRURtdFlPUitENkxs?=
 =?utf-8?B?NDhad2NGaEtzaStyU25wdmJVZDQzTWhiSTlrL3VNOWE0dUhpYk1HUjdjVTN5?=
 =?utf-8?B?bTZkV2tuMEo4Z0xsOE15S0hkeFJlUU14TEFnUGgzV3B3c1NpQnpwMWxzRkFo?=
 =?utf-8?B?Q2VTTjhqZE9zU2JkcGxnMEgwWXlTaFd2alNLd0RUdHBCVHlBSWJYdW5nbkpL?=
 =?utf-8?B?VC8xNk1EUi9hcnJNVkxRNmF3bXhOSzV6U1VNTVh0RkJ0Zkl4bzVqUGQzMWpY?=
 =?utf-8?B?M3ZLY0ZMZHNxd1FTWUJLaldLUjIrWFZ1MzZRWmlwZjhTWWdtVVBDcXhYT0JL?=
 =?utf-8?B?OEtGSW1scjdlVGI1cThDTmZERWovN1JBclBnaHF1VTFlS1NtWklETGpBNTRp?=
 =?utf-8?B?QWRJd2kvMk5SWVRQcExzNmh3NFNrSDRKS3pwelJuTE1HUTJxbmdmWHFZU0FC?=
 =?utf-8?B?S0tYUWJCM1JrQ3d4V3hiTmFUdGdBQ2YvNEhDenhFZk0vZ2tDZkJSSHJ2UEJx?=
 =?utf-8?B?NmJuL1g5Zm1pcFJYc1JMRWh3ZWxQaElUeWx2UlVFSld6bkdvNGFhS2pXQ1Vr?=
 =?utf-8?B?WHlDMStWRHhMVHFNRFg1YjFROXQxNStzcTdhYVV0YVkwNmRTVHNIeWJVZUdP?=
 =?utf-8?B?L2toS3c1TU1ocnNHSkxPLzBwK2V1WldPUVo5RTE2L1NNczVDdk5Pa3paYWNn?=
 =?utf-8?B?Q1pLT0JONUFTczlZUG1abDhxcjZDNDV2akNkSXZOMUZtR0dSUVVrY0UwaW9r?=
 =?utf-8?B?YXQyWm9DazB1Y3I2eVVXSHJkRTBmSEtYRVRMS1B1NGJqVGR6aDJKR1dRT1RH?=
 =?utf-8?B?Tk5jRFk5Mk5KUXNqRFRiVjJhYVRlRElnZUhFcSt2eisxeFVoV1pYSGJGVThU?=
 =?utf-8?B?UWF0Mm9sZ2dGeldsZ242UTdWTWpNN0VvU28rdExCTEg3amxVOFE1UXVreWJl?=
 =?utf-8?B?K25KZEx2S2ZWeWdYNjRVU3M2aEFNSFB2V1NpVDdCSDRrZlo0QjIvb01TV1Fw?=
 =?utf-8?B?b0tHcjFIaEJnV1dDaEJGNjhyYjNSTXl5THVMdlNYSlhSTlRJSGJkbEhRWkMv?=
 =?utf-8?B?ZitaVmlTRmU0cVYwVE9qQWI0dHZUaW9tdkM2bDBuRjdCb0g2eGdwSUIrSUpO?=
 =?utf-8?B?bEN6NENjaFZpQWg4UmFOVWFXaHFVUGh1RVV0TzJFVURtQ0NjQnBjR0F3VEVK?=
 =?utf-8?B?TUFlU1RBbDVtby9La1V3c2lKekdQNzlucFNlbUtHZVFVRjZrVVhCYU5RRU1o?=
 =?utf-8?B?QWZ5ZXY3N3NDbDJRejFzQnRUamliaVVYRWl6MWxoREN3T0x0QUd4MmE5Yjlo?=
 =?utf-8?Q?u+JPJ6ubT0zbTXewPaMVqQ9rUvN+eF0Udgph6dk?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 909a93d9-8a8d-4065-1b31-08d981ef949a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2021 19:47:04.2459 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iSvPCsCvjJTzlnxROXYH5KDXxjGzANPVvlYyrLbn0TBCsGplGE4EH/eXN1mblyBsqtXadB8lMfmS2JqgX5Z+V5pfdZ8gC4KoDAgBD7FX0yU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0079
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 06/21] ice: Open devlink
 when device is ready
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Michael Guralnik <michaelgur@mellanox.com>, oss-drivers@corigine.com,
 netdev@vger.kernel.org, Jerin Jacob <jerinj@marvell.com>,
 GR-everest-linux-l2@marvell.com, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Leon Romanovsky <leonro@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>, Linu Cherian <lcherian@marvell.com>,
 Intel Corporation <linuxwwan@intel.com>, Tariq Toukan <tariqt@nvidia.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Manish Chopra <manishc@marvell.com>,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Simon Horman <simon.horman@corigine.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Loic Poulain <loic.poulain@linaro.org>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org, Bin Luo <luobin9@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, Vadym Kochan <vkochan@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vladimir
 Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, M Chetan
 Kumar <m.chetan.kumar@intel.com>, Derek Chickles <dchickles@marvell.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/25/2021 4:22 AM, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> Move devlink_registration routine to be the last command, when the
> device is fully initialized.
> 
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>

For the ice driver, thanks for fixing it!

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
