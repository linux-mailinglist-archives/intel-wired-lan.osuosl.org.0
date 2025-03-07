Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B48A566F3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 12:42:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BF30607C4;
	Fri,  7 Mar 2025 11:42:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8YMEQFqHCjwF; Fri,  7 Mar 2025 11:42:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0057860710
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741347752;
	bh=vyIro4ttA5gWBjenj+cLBLq1E2tfNgIVhEAVKY0xRTg=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uIwXZrcvs1iQxWDVxsXjhyKo9mQzjhBzfxeTJLqdrR3wVt/ZiqrRvArVMQvLVvzM3
	 1T2TzxBqYvTmoTz2QGLaeqeE8Qll5NTytcofGCB5HyU8QBqfUnJmn3/scZMJ61d8Tb
	 kvpKuV2g5FybnN0lY0UZVVy7bUlOpkJ6oDAdAUOr93oICzjc9MouBtL/pKA/20qj9u
	 eAad76REiggbF3VSzlDSyqe2MFJeFSwEutSDoFKy8RdRMban2aIvDLQAMXkDaQnzGd
	 kB823g282HR9C2TkxWgNCLIUVAUFVEZPp/ahmQYOJNDnlsJIvQ6xFGdAwd5zTdat9/
	 2Ymy4NV063hKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0057860710;
	Fri,  7 Mar 2025 11:42:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 551E81C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 11:42:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3234380C08
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 11:42:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8hKrE38_Z7Wi for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 11:42:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B20CD811FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B20CD811FE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B20CD811FE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 11:42:27 +0000 (UTC)
X-CSE-ConnectionGUID: VWngvE8jQDG5rq3du5Tddg==
X-CSE-MsgGUID: VmEZehfPQ8OU4cbxkcC8uQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42591986"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42591986"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 03:42:26 -0800
X-CSE-ConnectionGUID: 4yBJq30JQniplNWw6wLvqQ==
X-CSE-MsgGUID: Ay++ARfHQfCWoREJriTL6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="142533103"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 03:42:26 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 7 Mar 2025 03:42:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 7 Mar 2025 03:42:25 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 03:42:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j269/BXOnmB3pjr1pzjxTSWxESEqg+qjl+3toshSNCnJNAB48Ek/CNaaDR+eU02tD9RaoOYes7oWpz3EUhhNPschc2Ac9jQzNu8RIYR7IPWpAG81fyt83jQ0KqFQ9USH8ufJpA5ER+6a49RnTzgP0X49rNfB+eThcOAtJh9XpuM7S0nvkeEbVtH7x8jEhoXDI8WQa6puxsyaiuVdU92lAwe7zwbZgJ0HpG/L5f+Y9/xNWvgcoSLtZL/lZx28Ds6+iRozxiowcEME/HlP4b1DFQwvGaYKpTZDiyMQYl+QKLAaRAOXIQrlpdjHVfO+/u3CTw1NNC29xB2Vp4Q7J7T1HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vyIro4ttA5gWBjenj+cLBLq1E2tfNgIVhEAVKY0xRTg=;
 b=rUliOBn/2tlJ2xOAGgK+etX/YAar7Ra8kBNBngFSHo6vsGVbxaBm9CboZegwT7TwlmjCiAjHeHtpJo0cuQXLosnxguHM74FspR4zJQZCzuSGboNYpZ4UUVZTUWcD5fOdq8znAMEWOxv/YhbTUOgJTvo2By1pGk9xdiHp3lb9BxPnbmof2vj8MsLNQPZxl6w/2yHNKleu45XN4c+1PQ9q14h1tuB5RJ5WHkjvLJ5GxbuoUABnzMZfqr7z1Y150une3f4Jfefb1sjGcZ0q6ItugwRTemOrzkmQyuUpb/lc9KxPGNw8d3HdNREZA69sI7agbLS5/uqjFxkU0UYk3N4Rrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH0PR11MB7472.namprd11.prod.outlook.com (2603:10b6:510:28c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.18; Fri, 7 Mar
 2025 11:42:22 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%3]) with mapi id 15.20.8511.017; Fri, 7 Mar 2025
 11:42:22 +0000
Date: Fri, 7 Mar 2025 12:42:10 +0100
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
Message-ID: <Z8rbkpRca35brvij@boxer>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
 <20250305162132.1106080-10-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250305162132.1106080-10-aleksander.lobakin@intel.com>
X-ClientProxiedBy: WA0P291CA0023.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::10) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH0PR11MB7472:EE_
X-MS-Office365-Filtering-Correlation-Id: 226a5db9-8dd5-42ab-43d9-08dd5d6d1fe1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KMyJbWERXi2pLWIEbXYM98/ziMIamT84cvlelbyYZhkIBJIs20sUMM8ZnQxA?=
 =?us-ascii?Q?lS5ULZ3skYweH5dGPA9WYuDOErAI/XIupEsoWU6sGwM6BW0ps6ibiFBvvQGw?=
 =?us-ascii?Q?W4LPumRQ933Fm7GSxjBZL54CApDzosLIC3JRJ3Ocpseq1s039AtllhPWnx9i?=
 =?us-ascii?Q?+flTqJVeOIR/L40qMXJFYPG2+dDJqZcrGkpoWLBkgAg5NumXd8Cwzs71gF25?=
 =?us-ascii?Q?DcVm1f4MWEoEagF6yTzR5OAa8kZeyUmGmbaZVhP/5L3oqyjr3+XuIf36FwxX?=
 =?us-ascii?Q?kUBZ7sHgmp91XYFmg9f/ATQpSvjzTO6OBOcCrWrUZ96dpRfuzR0X7FwVzahT?=
 =?us-ascii?Q?G68kNmxeVv8WeBf8Ml7TdSoYoqpIBi8/O9JsqaL7VUbEy0CTRBw2OVeHnTjH?=
 =?us-ascii?Q?A0hyx2Lzkoo/v39VSdMP2Xb76rMuPg4py5R1GqYddHGQAFUknHqsXYzqvhzR?=
 =?us-ascii?Q?52hzteseENeklmJRsQwlTkrPOQiMN9KBOi9Sk/IAF6eh/TInLQZqmDjt+Q7M?=
 =?us-ascii?Q?Dg0UOkOXxpItwDbb98VtIPSuocN4mCv7osWp4aPNCHZ5LtPHvk6n/JmBkdyg?=
 =?us-ascii?Q?h2igDeCrEJbivPLQSuBha8JMzq227KbvVpc6Op+xM/+0VuBkJh1zdALQhuvZ?=
 =?us-ascii?Q?jn3FCqyvn8+tNNVSssbQ0GQYNy9FndZS+Z5zeRt9DImgCYXlo0sUQVVkcFjH?=
 =?us-ascii?Q?rZXhgiJccMRsEwx1rYtnHILPeJ0R6uZ1Lnnp6qvOYi5ZcJxlB1zU54UFdYHg?=
 =?us-ascii?Q?qLgagHluNAhPl5Rhryn8+zfw6L1MM9n0R2I2Pid4GWNHLyRzM3aCSRLzNnEZ?=
 =?us-ascii?Q?8YgxutD0NPY1FMogdzPNJ3iGNFd3sTBoFBd4RKi00yDeqWGFy0v//9uq99Uc?=
 =?us-ascii?Q?BTKQ3HOwA3IMMq7gtm9JElIRPfKqMIbpOdCs9nFpiEvzqCSUtUGi1GcIdvEg?=
 =?us-ascii?Q?96vGl3mSWFAo2cqWraqhlshLMFqM7D5xFjVZNZ67EYyZTk1gTRfxadbKZjWE?=
 =?us-ascii?Q?h4Mxzse182NLlOlm5zRA+Hh0vEBG6HVo4UBYRcvAp/tIWeqh43PGi2NWgDbb?=
 =?us-ascii?Q?VfKMLevIcc9pgLIEmmPqAk7oIZ6v3U9fuhD7qdDv8VCflGeH9utjppVoXo5B?=
 =?us-ascii?Q?FQaiciITxgh8UO0aCeDqcMDuAr1V9pscDn+jOCWtP65VZ3LQvmzbwx7GwHBg?=
 =?us-ascii?Q?mtw1uUXg3vWkuGC5lOuwDKpmMw7yhNeK/xu4T42+NjoPPo3sH57RSrQcyIcj?=
 =?us-ascii?Q?sSoIvZpZL/cvke7vOm7WdxCvxYeSE8wNmPu7+Pp0u4D8MjRpxseVSG0QlZiY?=
 =?us-ascii?Q?OMyhtZrG8ikF1/mjH7iI9jOlx9nb2SncnGWPGLYDqEdlDKhR2JYKXK6gStqD?=
 =?us-ascii?Q?tLzqsJPFBvbtpmbm1jV8drADnmr3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?akMUndgXDXOLziSeiWrTlmj2QUQM5BdbctWXcR7+/BzbQx9sZm2456MS205l?=
 =?us-ascii?Q?UG19Ju5U+hyUIUwvlu8WWzD882qzjcB1X0mLfqqzYypLthIBe0NVCxH/l6n6?=
 =?us-ascii?Q?Yt1DO7LlvfAwTdcQyRXWD6sYuD+0T2yV+3ifcn9FDugrivZOSM65E3Kn61eE?=
 =?us-ascii?Q?H5ilC1aPw7tPeBMbDTZLPhn8PL+kJo8omxb092GpStnlgtjgLcBQj73/4WHF?=
 =?us-ascii?Q?XSltQW6zigmCDSFtIxZVkjCxE8sNt7SzDq8k4gYjIQcRacXlPjDf8oFja3bR?=
 =?us-ascii?Q?IWCYSzA8m/O15/a7x1uZ73G2vAiFDMcFwsOP8rcevmPQwrx9skwf0Tzmcs1b?=
 =?us-ascii?Q?vT5A/TXJDrPwBN+WQ5ICpl8GzMehLEY4Tcpap6iWDnzWhwLmnfo7xM8s+Cwe?=
 =?us-ascii?Q?MwYRtQFxwOoRQ85bnzGGq+Gz4ynWpO1f99ofP4KofGcbHYE20LqyisSxuETB?=
 =?us-ascii?Q?egTzDLVFiSkcX9MbFNIIeM+cZJPCf2NzIPBfocBd/7U+NpyIpw886BFe2uY7?=
 =?us-ascii?Q?grM3bIuWGGxcyeQ59+TgLbyS9xOcNrFX+FM8C1T0xCC0qOrDlxcaEWYjqzP7?=
 =?us-ascii?Q?jYaZPB0KHqmMTc6Ns+pU0F5Jk+WWdb15Zd8IDfUOXBvwxkKKU97nDdXKTmK+?=
 =?us-ascii?Q?Cvo9PahBCirSBEX+rZUdelZ84u8WLK3w8bcgjAESLDkvDGSg+5vjBOT6AzcC?=
 =?us-ascii?Q?rHLSYL0vyC5149NAoIDjnDKqzQ1rYdTg9glK474J5h46s33+JXUJx6oOtbK8?=
 =?us-ascii?Q?huMK8urDO1507TgZXEu42R5rOkry8rLNC+CyiiGDD7HAhapchyMMREbYic2l?=
 =?us-ascii?Q?BohKFR2OX6AM5r9W+cOdwmTc6Yti3Twr6UksjRI5mfnrmQlUfbobYW0lQrfi?=
 =?us-ascii?Q?i1XB0w/saHDRs6GkhkZhV2wuiPmhixFXuUuItrAefL0Bhj8uBoGoKHxucDTj?=
 =?us-ascii?Q?zEKkaz4Lx9vmcLBJ1/y9felqLlLBY74WjqYm/OqXBuUP0v/ExQtq4ZlaocF5?=
 =?us-ascii?Q?473uffhqtq0VWci/8UVJ+ZtSNfG7jXrjzxAw2CAxgZtjQ+XbmegTbzLyO8I4?=
 =?us-ascii?Q?h32QuPu6VOnpxtk+JBVGI+55z9iar9l58buTvizIx5tY444e2I6uo5VfZXj5?=
 =?us-ascii?Q?QZvY6LJdL3UKKtz8dzfNU/LBfCRISXvogw0HYyLS8ij3bh4MmBA5Kvh53dqU?=
 =?us-ascii?Q?pP7EPCxwo/lt03bNwdsSU2YIUdMQ8LNRtM+1bG1W56UiqD7w9bqWD+5TnUDN?=
 =?us-ascii?Q?uXFp4si7mO2MfISIdf+sVm3n9vKVsqgZ5Xfwsq9Wii1U3A2LzrefK5/BA/IL?=
 =?us-ascii?Q?JLaf8ftRNl93IpXx50BrzUaJg+4LP6WFbDelHvNlt57Z+7aHMfDbwzn3JnYw?=
 =?us-ascii?Q?T8ZP+u0Pfi33eELdO8JMQqxFa7d9qP/XAwBrjTMGf5TVkrRQHX6gAvr5/Mcy?=
 =?us-ascii?Q?HbL14BZCLLFhhc49sA5kiEIn1cd/0SOsh04vinfDcYHvVn5WrHUIR2FUEuRa?=
 =?us-ascii?Q?Sa7REAnq6LKyh6X90J6iHSgbkdJhyrqxtpGcFwd7uM7UPRJLR4XgqldkmYKv?=
 =?us-ascii?Q?DKEyzS1+NwxrRJOMpM98M/iSdwlR/QKsa+t4qVHRa1/0cLAo5yf/voDpJvfI?=
 =?us-ascii?Q?qw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 226a5db9-8dd5-42ab-43d9-08dd5d6d1fe1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2025 11:42:22.5425 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rWvZl5gd6yg+q6JQmxh5ulQ++AldvKvfuDrXGhzv6AOUuuCK3QXcz74ywo7PypycCfLrYdJJXzoeMDsbKY2gk/nhRf4uPnNFQMfaDXkBUxs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7472
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741347747; x=1772883747;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oSlCl4YnmAkhlidJdZjnmOyqDwyCjfzvW6Q2TltR910=;
 b=Eeh1RG0Nck924VgtbCEslweXsYIFbo4QPwrLQUhlkkDP/2An3scjiuo9
 1s8HdlAgGwYPXKdlRCS5t5ghA7RD86spyt8fTdwZwaO1gui1BFm5dgVrd
 ExGeisi7qPmxtPMXOgCMkLSclXWB9oRQ38Rt4Hi34JFiclqcKITQZdO2r
 d/sj4XvmSd6TJ8ifrmnMv6+lPIN1kU8N+7i1aLKS5Xk/5ORNiqlNMKk0C
 S4LNoosB3IfcfISBoce6+G/tah33spK08ytxfXZ69leDeFbj+vSmw+bos
 bzI9hzG+LDwPxSysP0Reb84gTbjr1ZHyuTqfxKnelApXc3lKcR1Y+slHl
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Eeh1RG0N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 09/16] idpf: remove SW marker
 handling from NAPI
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

On Wed, Mar 05, 2025 at 05:21:25PM +0100, Alexander Lobakin wrote:
> From: Michal Kubiak <michal.kubiak@intel.com>
> 
> SW marker descriptors on completion queues are used only when a queue
> is about to be destroyed. It's far from hotpath and handling it in the
> hotpath NAPI poll makes no sense.
> Instead, run a simple poller after a virtchnl message for destroying
> the queue is sent and wait for the replies. If replies for all of the
> queues are received, this means the synchronization is done correctly
> and we can go forth with stopping the link.
> 
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        |   7 +-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   4 +-
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |   2 -
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 108 +++++++++++-------
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  34 ++----
>  5 files changed, 80 insertions(+), 75 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
> index 66544faab710..6b51a5dcc1e0 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -36,6 +36,7 @@ struct idpf_vport_max_q;
>  #define IDPF_NUM_CHUNKS_PER_MSG(struct_sz, chunk_sz)	\
>  	((IDPF_CTLQ_MAX_BUF_LEN - (struct_sz)) / (chunk_sz))
>  
> +#define IDPF_WAIT_FOR_MARKER_TIMEO	500
>  #define IDPF_MAX_WAIT			500
>  
>  /* available message levels */
> @@ -224,13 +225,10 @@ enum idpf_vport_reset_cause {
>  /**
>   * enum idpf_vport_flags - Vport flags
>   * @IDPF_VPORT_DEL_QUEUES: To send delete queues message
> - * @IDPF_VPORT_SW_MARKER: Indicate TX pipe drain software marker packets
> - *			  processing is done
>   * @IDPF_VPORT_FLAGS_NBITS: Must be last
>   */
>  enum idpf_vport_flags {
>  	IDPF_VPORT_DEL_QUEUES,
> -	IDPF_VPORT_SW_MARKER,
>  	IDPF_VPORT_FLAGS_NBITS,
>  };
>  
> @@ -289,7 +287,6 @@ struct idpf_port_stats {
>   * @tx_itr_profile: TX profiles for Dynamic Interrupt Moderation
>   * @port_stats: per port csum, header split, and other offload stats
>   * @link_up: True if link is up
> - * @sw_marker_wq: workqueue for marker packets
>   */
>  struct idpf_vport {
>  	u16 num_txq;
> @@ -332,8 +329,6 @@ struct idpf_vport {
>  	struct idpf_port_stats port_stats;
>  
>  	bool link_up;
> -
> -	wait_queue_head_t sw_marker_wq;
>  };
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index 9f938301b2c5..dd6cc3b5cdab 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -286,7 +286,6 @@ struct idpf_ptype_state {
>   *			  bit and Q_RFL_GEN is the SW bit.
>   * @__IDPF_Q_FLOW_SCH_EN: Enable flow scheduling
>   * @__IDPF_Q_SW_MARKER: Used to indicate TX queue marker completions
> - * @__IDPF_Q_POLL_MODE: Enable poll mode
>   * @__IDPF_Q_CRC_EN: enable CRC offload in singleq mode
>   * @__IDPF_Q_HSPLIT_EN: enable header split on Rx (splitq)
>   * @__IDPF_Q_FLAGS_NBITS: Must be last
> @@ -296,7 +295,6 @@ enum idpf_queue_flags_t {
>  	__IDPF_Q_RFL_GEN_CHK,
>  	__IDPF_Q_FLOW_SCH_EN,
>  	__IDPF_Q_SW_MARKER,
> -	__IDPF_Q_POLL_MODE,
>  	__IDPF_Q_CRC_EN,
>  	__IDPF_Q_HSPLIT_EN,
>  
> @@ -1044,6 +1042,8 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rxq,
>  				      u16 cleaned_count);
>  int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off);
>  
> +void idpf_wait_for_sw_marker_completion(struct idpf_tx_queue *txq);
> +
>  static inline bool idpf_tx_maybe_stop_common(struct idpf_tx_queue *tx_q,
>  					     u32 needed)
>  {
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index f3aea7bcdaa3..e17582d15e27 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -1501,8 +1501,6 @@ void idpf_init_task(struct work_struct *work)
>  	index = vport->idx;
>  	vport_config = adapter->vport_config[index];
>  
> -	init_waitqueue_head(&vport->sw_marker_wq);
> -
>  	spin_lock_init(&vport_config->mac_filter_list_lock);
>  
>  	INIT_LIST_HEAD(&vport_config->user_config.mac_filter_list);
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index a240ed115e3e..4e3de6031422 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -1626,32 +1626,6 @@ int idpf_vport_queues_alloc(struct idpf_vport *vport)
>  	return err;
>  }
>  
> -/**
> - * idpf_tx_handle_sw_marker - Handle queue marker packet
> - * @tx_q: tx queue to handle software marker
> - */
> -static void idpf_tx_handle_sw_marker(struct idpf_tx_queue *tx_q)
> -{
> -	struct idpf_netdev_priv *priv = netdev_priv(tx_q->netdev);
> -	struct idpf_vport *vport = priv->vport;
> -	int i;
> -
> -	idpf_queue_clear(SW_MARKER, tx_q);
> -	/* Hardware must write marker packets to all queues associated with
> -	 * completion queues. So check if all queues received marker packets
> -	 */
> -	for (i = 0; i < vport->num_txq; i++)
> -		/* If we're still waiting on any other TXQ marker completions,
> -		 * just return now since we cannot wake up the marker_wq yet.
> -		 */
> -		if (idpf_queue_has(SW_MARKER, vport->txqs[i]))
> -			return;
> -
> -	/* Drain complete */
> -	set_bit(IDPF_VPORT_SW_MARKER, vport->flags);
> -	wake_up(&vport->sw_marker_wq);
> -}
> -
>  /**
>   * idpf_tx_clean_stashed_bufs - clean bufs that were stored for
>   * out of order completions
> @@ -2008,6 +1982,19 @@ idpf_tx_handle_rs_cmpl_fb(struct idpf_tx_queue *txq,
>  		idpf_tx_clean_stashed_bufs(txq, compl_tag, cleaned, budget);
>  }
>  
> +/**
> + * idpf_tx_update_complq_indexes - update completion queue indexes
> + * @complq: completion queue being updated
> + * @ntc: current "next to clean" index value
> + * @gen_flag: current "generation" flag value
> + */
> +static void idpf_tx_update_complq_indexes(struct idpf_compl_queue *complq,
> +					  int ntc, bool gen_flag)
> +{
> +	complq->next_to_clean = ntc + complq->desc_count;
> +	idpf_queue_assign(GEN_CHK, complq, gen_flag);
> +}
> +
>  /**
>   * idpf_tx_finalize_complq - Finalize completion queue cleaning
>   * @complq: completion queue to finalize
> @@ -2059,8 +2046,7 @@ static void idpf_tx_finalize_complq(struct idpf_compl_queue *complq, int ntc,
>  		tx_q->cleaned_pkts = 0;
>  	}
>  
> -	complq->next_to_clean = ntc + complq->desc_count;
> -	idpf_queue_assign(GEN_CHK, complq, gen_flag);
> +	idpf_tx_update_complq_indexes(complq, ntc, gen_flag);
>  }
>  
>  /**
> @@ -2115,9 +2101,6 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
>  							  &cleaned_stats,
>  							  budget);
>  			break;
> -		case IDPF_TXD_COMPLT_SW_MARKER:
> -			idpf_tx_handle_sw_marker(tx_q);
> -			break;
>  		case -ENODATA:
>  			goto exit_clean_complq;
>  		case -EINVAL:
> @@ -2159,6 +2142,59 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
>  	return !!complq_budget;
>  }
>  
> +/**
> + * idpf_wait_for_sw_marker_completion - wait for SW marker of disabled Tx queue
> + * @txq: disabled Tx queue
> + */
> +void idpf_wait_for_sw_marker_completion(struct idpf_tx_queue *txq)
> +{
> +	struct idpf_compl_queue *complq = txq->txq_grp->complq;
> +	struct idpf_splitq_4b_tx_compl_desc *tx_desc;
> +	s16 ntc = complq->next_to_clean;
> +	unsigned long timeout;
> +	bool flow, gen_flag;
> +	u32 pos = ntc;
> +
> +	if (!idpf_queue_has(SW_MARKER, txq))
> +		return;
> +
> +	flow = idpf_queue_has(FLOW_SCH_EN, complq);
> +	gen_flag = idpf_queue_has(GEN_CHK, complq);
> +
> +	timeout = jiffies + msecs_to_jiffies(IDPF_WAIT_FOR_MARKER_TIMEO);
> +	tx_desc = flow ? &complq->comp[pos].common : &complq->comp_4b[pos];
> +	ntc -= complq->desc_count;

could we stop this logic? it was introduced back in the days as comparison
against 0 for wrap case was faster, here as you said it doesn't have much
in common with hot path.

> +
> +	do {
> +		struct idpf_tx_queue *tx_q;
> +		int ctype;
> +
> +		ctype = idpf_parse_compl_desc(tx_desc, complq, &tx_q,
> +					      gen_flag);
> +		if (ctype == IDPF_TXD_COMPLT_SW_MARKER) {
> +			idpf_queue_clear(SW_MARKER, tx_q);
> +			if (txq == tx_q)
> +				break;
> +		} else if (ctype == -ENODATA) {
> +			usleep_range(500, 1000);
> +			continue;
> +		}
> +
> +		pos++;
> +		ntc++;
> +		if (unlikely(!ntc)) {
> +			ntc -= complq->desc_count;
> +			pos = 0;
> +			gen_flag = !gen_flag;
> +		}
> +
> +		tx_desc = flow ? &complq->comp[pos].common :
> +			  &complq->comp_4b[pos];
> +		prefetch(tx_desc);
> +	} while (time_before(jiffies, timeout));

what if timeout expires and you didn't find the marker desc? why do you
need timer? couldn't you scan the whole ring instead?

> +
> +	idpf_tx_update_complq_indexes(complq, ntc, gen_flag);
> +}
>  /**
>   * idpf_tx_splitq_build_ctb - populate command tag and size for queue
>   * based scheduling descriptors
> @@ -4130,15 +4166,7 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
>  	else
>  		idpf_vport_intr_set_wb_on_itr(q_vector);
>  
> -	/* Switch to poll mode in the tear-down path after sending disable
> -	 * queues virtchnl message, as the interrupts will be disabled after
> -	 * that
> -	 */
> -	if (unlikely(q_vector->num_txq && idpf_queue_has(POLL_MODE,
> -							 q_vector->tx[0])))
> -		return budget;
> -	else
> -		return work_done;
> +	return work_done;
>  }
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 135af3cc243f..24495e4d6c78 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -752,21 +752,17 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter)
>   **/
>  static int idpf_wait_for_marker_event(struct idpf_vport *vport)
>  {
> -	int event;
> -	int i;
> -
> -	for (i = 0; i < vport->num_txq; i++)
> -		idpf_queue_set(SW_MARKER, vport->txqs[i]);
> +	bool markers_rcvd = true;
>  
> -	event = wait_event_timeout(vport->sw_marker_wq,
> -				   test_and_clear_bit(IDPF_VPORT_SW_MARKER,
> -						      vport->flags),
> -				   msecs_to_jiffies(500));
> +	for (u32 i = 0; i < vport->num_txq; i++) {
> +		struct idpf_tx_queue *txq = vport->txqs[i];
>  
> -	for (i = 0; i < vport->num_txq; i++)
> -		idpf_queue_clear(POLL_MODE, vport->txqs[i]);
> +		idpf_queue_set(SW_MARKER, txq);
> +		idpf_wait_for_sw_marker_completion(txq);
> +		markers_rcvd &= !idpf_queue_has(SW_MARKER, txq);
> +	}
>  
> -	if (event)
> +	if (markers_rcvd)
>  		return 0;
>  
>  	dev_warn(&vport->adapter->pdev->dev, "Failed to receive marker packets\n");
> @@ -1993,24 +1989,12 @@ int idpf_send_enable_queues_msg(struct idpf_vport *vport)
>   */
>  int idpf_send_disable_queues_msg(struct idpf_vport *vport)
>  {
> -	int err, i;
> +	int err;
>  
>  	err = idpf_send_ena_dis_queues_msg(vport, false);
>  	if (err)
>  		return err;
>  
> -	/* switch to poll mode as interrupts will be disabled after disable
> -	 * queues virtchnl message is sent
> -	 */
> -	for (i = 0; i < vport->num_txq; i++)
> -		idpf_queue_set(POLL_MODE, vport->txqs[i]);
> -
> -	/* schedule the napi to receive all the marker packets */
> -	local_bh_disable();
> -	for (i = 0; i < vport->num_q_vectors; i++)
> -		napi_schedule(&vport->q_vectors[i].napi);
> -	local_bh_enable();
> -
>  	return idpf_wait_for_marker_event(vport);
>  }
>  
> -- 
> 2.48.1
> 
