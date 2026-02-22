Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHLIOmIpm2kjuQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Feb 2026 17:05:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E654916F95A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Feb 2026 17:05:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C533C822E3;
	Sun, 22 Feb 2026 16:05:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8BLzcZB0swOv; Sun, 22 Feb 2026 16:05:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88ACD82232
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771776346;
	bh=zxx2cPlo60q4snzFFNZhAsGKy7oopY7uPgULiBn+ggY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Wf9TZ81A4Sp+R7IYW7Tq7dl7F8daiIlcibi9X7LFARyQr9jSCu3KzPXk2PhGkgjAN
	 NAYslQI9LBiIfMSEeNCTHgUIPPrhkgeJhR4/kNsFGIaBI86tIOE0LkTEEhro0Md1na
	 PWXpew9zmYFkQF8CDL9aj4jfYEKsReYlx1jupCXw0a7T00stk7hGoQGffW0iHkn0cJ
	 wTTc9VpGiN+Cvf0bYK20voVZEu1nEcLeK6cn7Lg8N7h4vD1I57VKwZ/aKruvNrQOx7
	 IZTVWtTr0WWtTWj+2GE0xG//59ek6PMjTQ6s0i5YjSTq92tBOUhk1nyxiWIXE452WN
	 YaBGmaoOcpI/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88ACD82232;
	Sun, 22 Feb 2026 16:05:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D1711CE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Feb 2026 16:05:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8E50740273
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Feb 2026 16:05:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e5Isk2n-q1oj for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Feb 2026 16:05:43 +0000 (UTC)
Received-SPF: Temperror (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3F5E040234
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F5E040234
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F5E040234
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Feb 2026 16:05:22 +0000 (UTC)
X-CSE-ConnectionGUID: gqG65h3nRze5gtQ4BbzrgQ==
X-CSE-MsgGUID: 9sccDmZuQZKMKsTxdaxpmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="76400138"
X-IronPort-AV: E=Sophos;i="6.21,305,1763452800"; d="scan'208";a="76400138"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2026 08:05:21 -0800
X-CSE-ConnectionGUID: Qz1Xo/j0SgW0iyoH4adK4Q==
X-CSE-MsgGUID: oflwK2kNTbiLDcKpNyy9ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,305,1763452800"; d="scan'208";a="214564473"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2026 08:05:21 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 22 Feb 2026 08:05:20 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Sun, 22 Feb 2026 08:05:20 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 22 Feb 2026 08:05:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HDnw0I2k4c2fBDD9scpfLKcSeK3wPtVl90/NkHqgjpRMtNH5KDGrqeOaZ4YZ+Njj306eHSvErP1mAsdERitTBSyTkU+j9J0zv5NIO49RBtlahE2XRBAOFExGph6oRBuEBTF7AVrWOalR5iJuVjVp9F8ZuzSrqK26rl+MWi6n2i/uCWsI9qfQFTFFNmXKv/bRcAzURPsJN1Vhy3Yrsv6qflxNA4uhXnl3idy0Up8RwoLRlFsuLkPBW0TcPcj5S3FvKQRQreXNl/UXCM3s0J9EfGmU0TjdfxOlvw8wB9Gilup+Y+vDOGhj+LKdnL4/77DM0gbZ7hYkYvzT9fh02Rpf8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zxx2cPlo60q4snzFFNZhAsGKy7oopY7uPgULiBn+ggY=;
 b=gCo/Xm30hzw3Mct7eQloO+Ih5i/pDxPaHag9sA6HUu/3hTdO5abpyM2dgGCocUSre6D2+XxAcyJSocOl0kNWC2Z1xVctrEtTcsVIGJDE/wmWA0Oc2naFFBRoAOnIteCVf8iOZABkGagSSWIU4Ko1/WncZPsAwZe0gbQPJQFVrWrcGhcr4p0XdPHNiajgvbtc31+8vy+WJhdcUnWQXI4ZA8KkROmhcZW6ErEDXVFJCY/jKyKTOC4IA+fetdxqwGyLVcFRHIQO9N8VKGa3kIS7qugCzsRRpm8nSdvinSePqZga7EF+UtQs4nlSiQwfNPCUgU6pUER5mDo8GSODIiEajw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6067.namprd11.prod.outlook.com (2603:10b6:8:63::20) by
 DS0PR11MB9453.namprd11.prod.outlook.com (2603:10b6:8:298::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.21; Sun, 22 Feb 2026 16:05:19 +0000
Received: from DM4PR11MB6067.namprd11.prod.outlook.com
 ([fe80::3a56:fd55:d248:592c]) by DM4PR11MB6067.namprd11.prod.outlook.com
 ([fe80::3a56:fd55:d248:592c%6]) with mapi id 15.20.9632.019; Sun, 22 Feb 2026
 16:05:18 +0000
Message-ID: <29b8a4b4-66d4-47e5-a316-b88a03b3882c@intel.com>
Date: Sun, 22 Feb 2026 18:05:12 +0200
User-Agent: Mozilla Thunderbird
To: Timo Teras <timo.teras@iki.fi>
CC: Vitaly Lifshits <vitaly.lifshits@intel.com>, Todd Brandt
 <todd.e.brandt@intel.com>, David Box <david.e.box@linux.intel.com>, Len Brown
 <lenb@kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <marmarek@invisiblethingslab.com>, <jeremie.wenger@edu.ge.ch>
References: <20260202103257.1972097-1-vitaly.lifshits@intel.com>
 <20260210131158.1055ad48@onyx.my.domain>
 <745b1cd3-3e02-4d50-b1cb-0463ae6a9dd3@intel.com>
 <20260212111506.16bc402a@onyx.my.domain>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20260212111506.16bc402a@onyx.my.domain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::15) To DM4PR11MB6067.namprd11.prod.outlook.com
 (2603:10b6:8:63::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6067:EE_|DS0PR11MB9453:EE_
X-MS-Office365-Filtering-Correlation-Id: 78a93f9b-1045-48f2-ff5e-08de722c2c99
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?KzgxTHdsV3p6RGhhQUlmL2s5cFk3V0RVUDFYbzBlQkhBRHJQZ0xWVXFFMUJ4?=
 =?utf-8?B?MDhCenFuSGdqdVEvTldhYmk1eEtGbmJKUHRBcnRNUHVUbFpNcklXclFzczNT?=
 =?utf-8?B?R0FOMXp5R1AzcUZ6THhOdVdNcGU1YkNzZU4rWHVGTVFSKytKSUtyMmNDSVZW?=
 =?utf-8?B?emFqbys5UGRTU1owZVlvUGhJNU92MXNpNDFFU3dOWTRzNVdLSWMzQjB2WHBO?=
 =?utf-8?B?QXNoYk8rWFpjUnplTUtLblpHSlY4SVQ4dHV5NmZUZVc3U1ZlMEhaK01HNXFI?=
 =?utf-8?B?bkIwREVIdGJNaGtvaFpIR1ppZDROazB2K1dSMk1yYVp6UW9ZNjU2eE9CbE1Y?=
 =?utf-8?B?QTNuVlRUbXlnSzNwVUx4ak1YWnphMnlFK1FyQml2V3JrUWhCVkFoZ0c4RTlr?=
 =?utf-8?B?VVBtQTJ3YmkwN25Eb1ZjdGdqNDJ6YUp4TTdrUlFuOTExYU5DL1pFYkhyU2ZL?=
 =?utf-8?B?MXZhU1hpWUc3YTV2dUNXZE0rWlFFZlB6MXF4cVdXMktQNUJad3NheHJRSnFT?=
 =?utf-8?B?NXoyRW1hREpMVzg5enlPb0NHdDhCQkpEYnQ0TnpYVjkzQmFnRitkaEZwNVRV?=
 =?utf-8?B?ZVVTd0xVYTB5OFhUSnZ6RHl1V0gxODdpVlo1ZW9peWZUQjBXeEwzWGpsWHhC?=
 =?utf-8?B?OGVFSjZtUDQ4NzN5SWw5OGo4VE9TM0llVytzVGN2L2tSTE81MDQ2cEwvYlpZ?=
 =?utf-8?B?anBxeVZiQWVINWtFQ0hoTGRNd0orQVl6bHc1R0dpU0JhLy92ZmZKS1FGendQ?=
 =?utf-8?B?cTRzL09SaktQODh4OG5CMEpab1dtM0pzbmlnODh4eC8vS3dQZlBDdFo5RGpH?=
 =?utf-8?B?alQ2VU4zaUJvUGx0dUxEK2VtU2FBZDFJcVJualAyZERjNjlVTEJtTHhrM2RO?=
 =?utf-8?B?V3kyTDdLZVo5M01STDhMSmVnUzZaUk9XNTRCVnUwK3lhVWRVTG1Ec2VqeHdm?=
 =?utf-8?B?d0grWjZqcXRCZGhUR1hCeCszV3FoM3diQWFJQjVFS1pmdDRRd1VWSUFNWEZZ?=
 =?utf-8?B?U2w3aVB2MzZWQVc5aUUxYjJlQmcvbEpzKzExUFphVGRCTmEwY1M0dkN0R1Rp?=
 =?utf-8?B?UHYxR2NJekFFc0xkOUNHaEZ3SXBnK2lPdVJpU1FDUXliUXk0YmxQZkZCQTda?=
 =?utf-8?B?Wi9TVmppZ29aRkVrRHZPRjJ2RWpxTkNQbWpCc2J0TFJVaWRvT2c1ZkdjQmFP?=
 =?utf-8?B?bFJUSWJCb2tvTzc1SGJHTExNNnFUTTZ4RStKVW5hWWZ0U0IrNFJxWmRHNHRP?=
 =?utf-8?B?Q2Q2RElldkxMSmo4QUVkN0tUWlgwUmE1bzlRTTU4eTVBTjEvOXdnQ1c1NnU4?=
 =?utf-8?B?eEV2cHlUK2RLMWZWbmdQVzdOSFRjNGpzWWl5RHd4TTNMYnVxc1pWdmo5a2lQ?=
 =?utf-8?B?WGdadlN2RVVYR0U1UGxQQmR4aW0rZCtpbUZvTTluSUd0djc1bDN2WlNJYVFN?=
 =?utf-8?B?Z0JjWjhGeGhnVEd4SkdrN3p2N3dZOHVaSHBtM0hMN0NJVjgzbTZIaStVTTFl?=
 =?utf-8?B?ZXNuRXJaTXd1UldZYTdueS9wMi9Ob1I4RlN3WkdqQXRyMjcvMHRrV2ZSV0JE?=
 =?utf-8?B?dk8xV2xBRW9DOVBXQng4cUc2cncxSzBzakJldDloMU5uRm1kNTdBNjFuVitx?=
 =?utf-8?B?VTBZZ2FaOG9BcElpbUFIWnBoQTRKanhOVmhwQUdSWVRsSWFtK1RlRmQ0MlV0?=
 =?utf-8?B?ZUdTQTRWOWxmcGt0dk9ZeWpmUXNsbzZrZkx0VGl2emRaaUMvYjIvWUt3dklv?=
 =?utf-8?B?ZDdxSTJuU0wwZHBQcXhKYW5ybWpmQXF6Sk4wRUJiRGZKSFc5NVFsemg4WWJL?=
 =?utf-8?B?Tk9pMFpTbXYzQWxPYUtUL3N3ZksyWHVzRGJMZTExTGxGaWV2czdReTFGb3dX?=
 =?utf-8?B?VlE5UkIrVGZqYjJGb2J4TUp2dXY3OXYwYnNubTdSSG9RUVA2TmNIOEw1VWFW?=
 =?utf-8?B?VXNzVXpCY0lpOHY3UEwrN2FSUXBlb1lNbUlXenRoRXg5N3ZpUGJVRHdiZUVN?=
 =?utf-8?B?MnVWNU50ZFBEZ1V5S1dXanA3VmxhUzgrMGhlb0J3WEJvK3lacVZmWHh2QTh6?=
 =?utf-8?Q?K7nrcn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6067.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFROdjFqSEc4NDRZOTNneU5RM3luTEMzeGFGQ1V1WU9reFBFRUJWY2MzeWJm?=
 =?utf-8?B?dkZSU1VIVUVTQkJzUDNtS3NHUFZZQWdNdFRaNjV6ekxEaFJMWjhoUXdRSFQw?=
 =?utf-8?B?OThZZ0l1VGxDN2ZreElHVFVXbXQvdHk0dmtKQ0o1UzA0a3ZOd094VDY4d20r?=
 =?utf-8?B?YS9UYVg4QnRWLzVzaWJaR0JlVjAzVzhwamc1Y25hSjVOcHVxUDgwMHdHNnAv?=
 =?utf-8?B?UXc0K0ZYeVF5RkZDQktuNjJYSG1jQjRQY1JCTDdBT2hXWU9ZWllzT1g5MXM5?=
 =?utf-8?B?bTRPRjN6d2FhcWRQbDFwVnBpUHoySDJzOVFRL1R5amN3bmdZREhrNzJLS0tD?=
 =?utf-8?B?cnRJaSt5V2d0QUZ4YTkxUUhrVjRicVFUUytJM29CWnNIenFHaGFyZFlUWFRH?=
 =?utf-8?B?R2ZPNXZmbnhDWVlZTG03UWxGWkN4WGNFWmpTbFJuR2JkcFd5Q0J6b2M4OG5D?=
 =?utf-8?B?dVhkOEZwWDUveDZDbVNGS082VkVBb2NzdUFpM0tXQ0s4NlhHNEhMZzY5SUZa?=
 =?utf-8?B?Lysrb1VYYlNJMjYvL1paOE50RVlseUU1dExNTDc0Vnc4WVhVaFpoSmM1TjRl?=
 =?utf-8?B?NStuekdmRktXVXRkS2J3SjFva0NIV2prcGhad3llUlFGaWFGTU1LNlRKMC9R?=
 =?utf-8?B?bGNHOGl0b3F3ek96STdkOUF2OXpiekRpbld4Tk5qempXRFB1MEZVZXJqbFpi?=
 =?utf-8?B?czM3SThUWkRwdjdsNnFkTHk2SGlmVVlsOEI5aTN5dzlYUEdoME9vdVF1RVcy?=
 =?utf-8?B?dGFOT1ZlYmQ0ZHoza2NkdVByV2dyKzUyQnhaZ2NISEgwdG4xZ0gxd3k5a0Fv?=
 =?utf-8?B?MlFHNjg5VEdtYUxSc1ozbnVhT0IxNytiV0xRTVJTbUlVb1lIdmZaSmoyam14?=
 =?utf-8?B?TGFrZ3EwMDM2QW9MNzV3NXFhUjZPQjJrb0w1UUZqZlpKREtpbTc3dU9UcU1u?=
 =?utf-8?B?ckszbWhLcXhxTkNobkVCRnRnZVBsV29BaE5mZ3NrREdSODdCK0pab3RLaTNU?=
 =?utf-8?B?QlBtQURBem5YL1cwdmtFcVdsWEk2eHZRYXpxazVIRTR0UFprb0cwTDI2YUJw?=
 =?utf-8?B?SXc3QzJ2OG5pNmVGVnV4K3dzK2grZktNYjFxWURJbnE5Q21UbXI4TzFxS1M3?=
 =?utf-8?B?RkEvQnBteGcwVGZhQ1hVQTZ0a0pHS0ZjSWFlcHlXSWZWTXM0WnZCOHVsZDAx?=
 =?utf-8?B?UkxnYkZTTWlmaEIxNCtObmQvb3EwTmNyYVhuQndoUE40ZEFwM3E3aHVuNkRW?=
 =?utf-8?B?TGVzSFVlTTMxTmc3K043ZlhCTnNJWEo0T3BtZ1JwTUR1NVF1Nm0zNEJSSHNj?=
 =?utf-8?B?eDRiOWltOWM3d3RLMFd5TzNOd3VRV3dNUDZhbExFWHB1VG1Wd3RMUURjRFpH?=
 =?utf-8?B?aUlKSVVWOWhIZUVoRVF5aTJzVjRyeWtQVFR4UGdrYkdvd1JVU3FFKzBOL2d2?=
 =?utf-8?B?cnZ2MGhKWktidW9LaTZoZnhZQnVIbStUYy8xRm5oZFNJVE11bVdYU2hKdzNG?=
 =?utf-8?B?ZWdoT3ZqVngzc2RiZ2ljNXl4ODNIcHZnZ3UvNFI1V3dlbktoVTh2NFExc0hZ?=
 =?utf-8?B?MVAyZDBoTHJiZnFDeWx3Q3NoZXN0b0FGV0x4ang1WlhscjNObW5XelZ2cFJ6?=
 =?utf-8?B?SkRUVzJjWUgvemx3dnpTZVUxRllOc1FYUFU5V2U0TEU3cWxpdEs0V29FSHpD?=
 =?utf-8?B?anU4aFpjcHgvMUhtV3FOUktWSEJCMkZFUkd4dE8zd3BTbXJrcmh5Z1djMVZK?=
 =?utf-8?B?OEsyVVNDYi9yRFNJcTJBRDNRdGRJRlN6L3F1K083WHlrb0NmdjBiODFoRW5Z?=
 =?utf-8?B?L1Y3ZGVBRkZ4REx3NVdFT3pyT3RPZkloSm5BVjMyenRzem9LQzNYajZUWDEv?=
 =?utf-8?B?NzNJZVNGZGhheGdxdzZmUm8ybjV4dDl2YjVsZHkwaHZpeUxwb3djeDBkRWZW?=
 =?utf-8?B?R1Y0cktuSk94b2hFSWR6ajdYUW0vWmVYUWlpL1F6N1l5bTMwb1pGUmF3Q0Jp?=
 =?utf-8?B?Z3hSYzhHWUZoMUdCcUdJR2NDNnFVS05UbFpQTjBSK1BKaTVpcE5IRFFoUjMw?=
 =?utf-8?B?TGpZMHNwaGJ2bk9wMkl1eGZ3WGdXOWMzVFBmNmxSMzdVaWhXaVJmWndZUzNC?=
 =?utf-8?B?V0xYLyt4NlBnYWhvT24yektZdXk2NnZaMllnT3d0bDFrQjduQ3BFd3FIRTk2?=
 =?utf-8?B?M2FDTW9YTlE2WGtFSzErNCs0QWJUUVJiYjI3b2NBdEk3d0twUkVKbGUxNXRa?=
 =?utf-8?B?bzZEMm9pOUErYnRTT1FYY1BHakx5RndlQm1JYTlESncyVmc4aUlvNno5b0Rs?=
 =?utf-8?B?NUJpTFNhSXBDMkV3cVR6aEdWdGVodmEvV1VoWkx2c2l4aU9qTkhtZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78a93f9b-1045-48f2-ff5e-08de722c2c99
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6067.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2026 16:05:18.8383 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L3sgw/SBUPJYbYpFZwEmARrMhqnb7BemI4Z4SEUSP50hc4zdmAlVr1Vf4IQB9yQc2uUQkOmbgrfvlvvl4YoBcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB9453
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771776343; x=1803312343;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pyjGwQyfX5tTf1OvKYUXjy6JJ8PWhk0QPfElgMGCYkg=;
 b=WaRYVgWZ72ByBqHnhC9DsUGyIlLr+qVcGSHppmDby01eVCs291TE/ixm
 fxb9x4a1YkzxD37z5TDpWIuL4wPZsrqvBsEXQto3o89/a2ZWVlj8BNQzx
 CKIToHQ7q7SBblVWpgJJfvfE9IuisBaFPnG/LtJMeXFnzXgpbirCN+yY2
 EiLrwC2UN4waf37HFSY/Bo33a7uxdnozpQR6oKgKm+n0V90xYvAI5n8hO
 Onj2Ni004/Dg63RsG4hSkkPwkH9Tmyo2PsDnJyuh81gfAIVneH7CN+3SM
 JjWaE46Fug9dj+D4gLsTEiNUQAZwJOuxaPJAmhOg03b6jO/fJCz95WVh2
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WaRYVgWZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: reconfigure
 PLL clock gate value and re-enable K1 on Meteor Lake
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:timo.teras@iki.fi,m:vitaly.lifshits@intel.com,m:todd.e.brandt@intel.com,m:david.e.box@linux.intel.com,m:lenb@kernel.org,m:marmarek@invisiblethingslab.com,m:jeremie.wenger@edu.ge.ch,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[patchew.org:url]
X-Rspamd-Queue-Id: E654916F95A
X-Rspamd-Action: no action

On 12/02/2026 11:15, Timo Teras wrote:

> Is there other PLL timeout value to test?

Some preliminary calculations we did suggest that raising the value a 
bit further - from 0x1D5 to 0x226 - might be worthwhile. Beyond that you 
may run into other issues.

If you can try it on your machine and report back, that would be great. 
Currently, the only similar system I have is a Pro Max 16 with a U9-285H 
CPU. It is the same SoC generation, but many components are different, 
and I cannot even get the original issue to reproduce there.

> There was also never reply to the question on how likely / large issue
> the potential Rx packet drop is? How many units it may affect?
> 
>  From the earlier discussion we know that the "network does not work
> after cable unplug/plug" issue this causes is affecting multiple different
> vendors and is a *major* problem.

I do not have exact numbers, but it is definitely true that multiple 
system from different vendors have suffered from it.

> If you end up changing K1 default, please add a mechanism to add
> quirks on how to disable it on affected systems without needing user
> space configuration. I find it unacceptable that userspace needs to
> be modified to fix kernel driver behavior on known bad devices.

I have been pondering something like a DMI quirk. These have been 
proposed before for various issues, e.g.:

https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20200319052629.7282-1-kai.heng.feng@canonical.com/

Back then we found a better solution, so this approach was dropped. The 
basic idea can be used as a mechanism for a table of "known bad" 
devices, which the driver can check against to determine the default value.

However, I do not have the capacity to maintain the table itself, or 
even validate every device someone might want to add to it.

At one point there was a proposition to introduce such a table of quirks 
to a Realtek network driver, which was also ultimately rejected from 
upstream (note specifically the comments at the end of the thread):

https://patchew.org/linux/20241208191039.2240-1-guyc.linux.patches@gmail.com/

Thanks!
--Dima
