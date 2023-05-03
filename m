Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5956F5F0E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 May 2023 21:22:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C8EB40577;
	Wed,  3 May 2023 19:22:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C8EB40577
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683141751;
	bh=yKXLhQgq32FNjoKQbCHjY5WqjB60HihkEL55yxr/qmA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sZaAgX3IudTgAMMP1JSU7rDmoz5Y1QtM80HMmT89FAM/i9mUiRrJeiTk3cukmQHc9
	 4RQ9GKbo/GkMfxttwp4m2Q3fj9NJacwBtibq68BlRawGxwTfKNoeUO4AIkXaFsDzFJ
	 u7xRfa5n/YsgS0VvrsCFGatHCstRN1E3D2n/+W+x1NekDF3rRav32bfZuSW1yGQa8H
	 lMFL69MfuLrjIxY7CsMcgY5F9LOsGrN/Ud3iu39zUy9WuxrEI4W6We8XFRd863iLEG
	 /viTfRZwhr3SyFoseWuHXf4WWXdrqSNRij3G+sGwNJDf7DP9knqb8yU3JWK+76KgGs
	 UtxO5b2k3GbHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PJWhLP3PkBdR; Wed,  3 May 2023 19:22:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15210404AB;
	Wed,  3 May 2023 19:22:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15210404AB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3BCEE1BF31F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 19:22:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1251740577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 19:22:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1251740577
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eHV-dSyuP743 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 May 2023 19:22:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0ADD3400FD
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0ADD3400FD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 19:22:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="347569476"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="347569476"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 12:22:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="820875359"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="820875359"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 03 May 2023 12:22:06 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 3 May 2023 12:22:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 3 May 2023 12:22:06 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 3 May 2023 12:22:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HInDUdhAdRIU+vEZyQDz0qJqZ3k1SI6djkyy9fHGMXyet3MBGACA7NdJ4E5/9l8/xqZCRJi70FK3oXMinenad/nJFPevJPr5k3D+bWD0TcUU2uS4sjCL5vZi9aK8/0fJrLl63MFbk1Q3Ymw2EoM3uPc3J4v195HFxgEhwaz+8koKjfmaTx+WaXGk2TZiFR7LjHWgp4RAkJjuGsFD4FIHyMl8X9u3023EoAj3LNq3OojogpsDcE8YNFt58janU0ie/R37H2kmkgxTYjEfZi+XQhf8DsI7oeC77muvkDAaOzU6VVFb6RE7ibzdzH5G27YNnSjr4b0KsxGvZMIiP/f4uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oayL738y9JjTeM+U+aoM8eN0HSDBlUhGTPeqnYkAU1I=;
 b=YAS8XwD0N6xH7ntgzuQxGP6Z5b0t6RMTzpRw4dqZPK8wXfBp+ybTBCGlIZXKGS/qBXHxz88MczfqmQMP0PD8txpH+b8rzZq0y5BLzHo4EZ4wVspxZpWQa5lwtK+KqmBsAikf/C1pCa5btjA8jUDuqLas0hqsypRbXbjFZZSWdH6YyDz+91RfdrfJMWJ8fdeB4kgBKv9bu+6/Ook7vpvA6I2HSmJDzChN6C2dX8dY41IN2TQ2NIOsAPJQplFkqOrp9S85Cfr0JU32LqYwo0fW51r3XONzSIzhNPlF/o1cgvcC8QBbJ1i+Naughib9QVs6/2pmMppcCQ+9/OJK1+9niQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5042.namprd11.prod.outlook.com (2603:10b6:303:99::14)
 by DS7PR11MB6197.namprd11.prod.outlook.com (2603:10b6:8:9b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.22; Wed, 3 May
 2023 19:22:04 +0000
Received: from CO1PR11MB5042.namprd11.prod.outlook.com
 ([fe80::503:fbbc:de8b:476d]) by CO1PR11MB5042.namprd11.prod.outlook.com
 ([fe80::503:fbbc:de8b:476d%5]) with mapi id 15.20.6363.022; Wed, 3 May 2023
 19:22:04 +0000
Message-ID: <941ad3cc-22d6-3459-dfbc-36bc47a8a22a@intel.com>
Date: Wed, 3 May 2023 12:22:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Leon Romanovsky <leon@kernel.org>, Ding Hui <dinghui@sangfor.com.cn>
References: <20230503031541.27855-1-dinghui@sangfor.com.cn>
 <20230503031541.27855-3-dinghui@sangfor.com.cn>
 <20230503082458.GH525452@unreal>
 <d2351c0f-0bfe-9422-f6f3-f0a0db58c729@sangfor.com.cn>
 <20230503162932.GN525452@unreal>
From: "Chittim, Madhu" <madhu.chittim@intel.com>
In-Reply-To: <20230503162932.GN525452@unreal>
X-ClientProxiedBy: BYAPR05CA0031.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::44) To CO1PR11MB5042.namprd11.prod.outlook.com
 (2603:10b6:303:99::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5042:EE_|DS7PR11MB6197:EE_
X-MS-Office365-Filtering-Correlation-Id: ef8a49b8-c6c7-4b14-a224-08db4c0bad3e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /T0tarBsBZVYFx8vYrWHrQU5zAa6d77aEawID3eDtYlz5h0pUWImLMKrS135jenfEMPJTGy8qIfK9Lflr8+QZt64RnXAl95eLz8TYsy9YDZdZvX9xoIRdd2TK/8o/Q6oa+W0Ot32tCYBYEy076XKwDVY9KdWH/u8zh5DHt6oeO8ss5CLOUnxTNzRIVES5912fNl+RhiEzewD+SabidN41m7AkcJfAntkkV1TtGhiMkqyHwwkJ+iv8zj4TanhDMQC7UdkMXUpW6k1lzTqP4P8ddBY8gq4ejdYqIB1vP4xK3qxdwMeXfkhgVO3sd9VxITtCO7yBjyow4WTFO2lL3nE/wwgUB0V8MiI2n+m1SzvyoZh83jZegjBFrjgcz2jBYqX/dAgJoX8NLxhRy8q7brx5PAWBzPU1Qqh8YOL2IkG7fAZXluSQuE/12ilBrx6VAKODBdNnTdGgnBxKgBPEQZgVdBOjBYJeiFYgFHNiqy30r9unfPQIFGhYgwUhefRirMkDgWiTRmszG/uMBMc3BUM+OXJyu/uUEVUQLqHbnuzY68qErnkG/nmyyONpP4vKea9QlwRMJPDdqNvgJYNm2wCv3Nvf/TENvtLA7yVvmhUaC/BpVlnnYm/MaI7JUOzayfynhTaQRcV3v7H1NocV0BtMQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5042.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(136003)(346002)(396003)(39860400002)(451199021)(31686004)(2906002)(5660300002)(7416002)(36756003)(8676002)(8936002)(66476007)(41300700001)(66556008)(66946007)(478600001)(6666004)(110136005)(86362001)(31696002)(316002)(4326008)(6486002)(38100700002)(82960400001)(186003)(53546011)(2616005)(83380400001)(6506007)(6512007)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnZzMkFlRU5mM1Y4RUhPbEJ5eDEyWExXeUJ2V2RDR29UQlo5Nlk5NUp4Rkdn?=
 =?utf-8?B?bC9MVng5SnVNWTM3cDlmRERUUjRoZE1sT1YxY1hHVGlDdlRIV2g2SnZrak5I?=
 =?utf-8?B?SFl4NTBXb25lSGtmMlR5eEpDYStibUZGOGk5VUNQQittVGNDN0hHMVArS25G?=
 =?utf-8?B?d2J4cjdTRXdVWTlDTm0vQjRkVXpFRk4zQUhQOWZ0cTNVeTBTeG80VVliamNs?=
 =?utf-8?B?S1BFMFZmdTJpNDBYU0NCaU5PRWsrTXlQeUpjRTgwZFptM3pYQjN6dFI3RXFl?=
 =?utf-8?B?MVcvTitIVUk5U3RqY3RpeStsZTNzTCs2anNqa3NtNkxJNnpPd1JFOElUOTNN?=
 =?utf-8?B?a1hycys2c3FEbmtuTTVWL3U0VDU3T1VmYkdlLzlwcllrRVBFTndxUC9wOGgz?=
 =?utf-8?B?dWRkL2FKVDdwUFRwMDRreUpHSXVSdnRwMktucnJZdTZFYlhRaU9RTEpXRUZp?=
 =?utf-8?B?bUNOMkF5YUVMRzN4bnpqUjhGd3lMcHZPZDNtMytjc2NYemFSb0srM1QzS00z?=
 =?utf-8?B?R0tsVitUbHFoSENYUnFSQ2ovQWR1cGdXaUV6SzFEUy9oS2FwQmE0c0FxVUEr?=
 =?utf-8?B?eERjeHRrYy8yTkc0STg3eGhLRjIvNEVzdUVCdGxXMGI4UFF1c053Wk1xTndM?=
 =?utf-8?B?Z3VKTXFocWpNdDhMY2RVM2RIUWQ2N3VoT3gwcnBQNGRxb2dpOVZaZnNXUTAy?=
 =?utf-8?B?WTR6THJ5c1pMRlZOamtHL01rNDVkM2NINEx6WDJqZzVGNksrbG90QTkwVytk?=
 =?utf-8?B?MEVqTC9leW5lN0RFTThDS3Y0dlVQQzV1eGNiOXZmSndyR1czSm90RzlHazh6?=
 =?utf-8?B?Lyt2SVdTUk8xaG9VRDhObmhtM3I2eXRRTTlIdDVHdG1JUzAxOEhYUCs0bXQz?=
 =?utf-8?B?a1AxNWhhS29VcVo5eno5NUFIdkxwd01nQzhJbTJuY3RGbHl5ZG9lVDJVNE1E?=
 =?utf-8?B?dFlSMGVEZC92aVg4Ynh1R1lUN1FYK3RqaUt6S3dUdEt3cEZJTXJzRlZqOFZ4?=
 =?utf-8?B?ZXp0TFM3UlZESDRtUTdNTkZHNWo0bndtMTh1MW9TTjkvU0Iwa2V5MExuNlU3?=
 =?utf-8?B?Y2hPRzlzOG9saGRvaHg4VVhEN2NzcTdoWk5sRzBLSlF6VGpkeXF2SGRvcjNL?=
 =?utf-8?B?STk4b3V5cHZmRXlrUWhuQURoMlo3YWpEWHNuWmlGZzFaeHF4UnhNN1NILzJW?=
 =?utf-8?B?aTF6bXgvR29WdHc0dUFuWGk2T08xOHE1MmdIYkFEL2JOUEZwZFc5eStzZWIz?=
 =?utf-8?B?OWlPbFFsVDQzNzdmcTEzQy9KZE12RFBaeVJwQk1GNjFzSEg1RVg2V0gzS2pT?=
 =?utf-8?B?V2xGaG1zNlp3cGU0dlVISUdUakZ0d1BpdHNJTGNMT2hwbXJqNlpXUEltemky?=
 =?utf-8?B?dDZjcVR4NlZ2WmVKVGNFS20vR0xGS3ZJRFBjRG9FaWVmcmRmQnppTTJ4d1ov?=
 =?utf-8?B?MVdhRGRvbjRIMmJSSHI4WmlCUG4rRDlyaXZBVkd4c3BzM1lsNlBLVGdtZkQ0?=
 =?utf-8?B?ZlJQQXU2bEZsSmRGaUJzZ0lOWU40NmQxRDR6L1QwVThtRG1QTHIyb0JYSlN6?=
 =?utf-8?B?ckJnbHJac1d4VG5aS1F1QVlLTUFwVWszeFJmVWFpRDZURmgyekxhMXM5bXpu?=
 =?utf-8?B?L1VnQmU1TStaOUdYNnphbUxRY2JkS1dRMGRydDRuS0lSQkNYc0wwaDVCT1hG?=
 =?utf-8?B?ZWdXaHJJSW1FUXpyc1FTZEhhUnNDdFh1djBkOFAycmtXQXVKR01Zc3Bhc3Y1?=
 =?utf-8?B?UDJFWTljcHJrQ0NiUXFLVW5iUW5EZWVQSXpuSEZMNlhvY0NLRHpYeWJUY0NR?=
 =?utf-8?B?RDZST3c5WFBBa0ZsVjJ6LzdmR3JDUjFZWVlxZENtcWdadXY2ZTQ5NFR3ZCtj?=
 =?utf-8?B?MUp6TGZ2ZUxPQ0xWQmwwOElzVjljUWo2QVN0SVcxWTdIOXEwdTV5WTA1V0Yv?=
 =?utf-8?B?NHN2SU1nY3EyZG1vbWkyVkVPNGhrTmh3ZzROcDJtOGNNTFhMZWF5aTZ5NVFm?=
 =?utf-8?B?YTY5UC9Tcyt1ZHNXTUl4ZVh0dUdLSXBDSVNnUzI5aS8wUUN3bjM3cVNXNG5n?=
 =?utf-8?B?RFRQMHRXdlE0SGZORXhNNU1OSlBDbkh3czRwWVd2bkRpUEpUbG5YR3VpUWtP?=
 =?utf-8?B?U2NYTnlEK2Z0Tmt0VlpMdEJzSDdPUllvemdWRWx4Rkw1R1Y3d3VqRFM1WFFl?=
 =?utf-8?B?RXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef8a49b8-c6c7-4b14-a224-08db4c0bad3e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5042.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 May 2023 19:22:03.9940 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rtZ9Va7/Kr9X0g0yD8XiLKdi7+z6YhuYsQlKY1cRiN3C/BRteb6+7Ul78QJL+t7OU5CJRpu6D0c64+sEi4/HdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6197
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683141744; x=1714677744;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mbxUNr/amwtYWWtVyYEILwu4sQI8UEyL8hSebdQbCo0=;
 b=IXRjJyMf/ih3bXFpZZFoGsOb1Xp/PWxqMzZhDV4+E4Qj94uCu8WCcykY
 h/ejagG/m245cFsxQ9yufoW7haO7oGmXMcU9YFadRU1iAA0QMdqazwAGx
 AasqtOBnXwcFrtezQumJr6+5fFE17daTuIcUSN8Yv0i8xXjw3bRjtSXR/
 yKW37YkWsAn5DTZTbhebSolabRsVJwptA/8K+dJKaaPKwBTexi9A1shnG
 sECJvBTTb78+m2Zlz126506jpNgNDPd+JuV30X13jsJdUMBNZyAfjOlu0
 e3tHXKKLJExpMvtfzpLryGfq2rSoDKgSzSDQA+/pLmVKN1HY2d/8DZgql
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IXRjJyMf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4 2/2] iavf: Fix out-of-bounds
 when setting channels on remove
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
Cc: pengdonglin@sangfor.com.cn, keescook@chromium.org, gregory.v.rose@intel.com,
 anthony.l.nguyen@intel.com, mitch.a.williams@intel.com,
 jesse.brandeburg@intel.com, huangcun@sangfor.com.cn,
 linux-kernel@vger.kernel.org, grzegorzx.szczurek@intel.com,
 edumazet@google.com, michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com, simon.horman@corigine.com, kuba@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net,
 linux-hardening@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA1LzMvMjAyMyA5OjI5IEFNLCBMZW9uIFJvbWFub3Zza3kgd3JvdGU6Cj4gT24gV2VkLCBN
YXkgMDMsIDIwMjMgYXQgMTA6MDA6NDlQTSArMDgwMCwgRGluZyBIdWkgd3JvdGU6Cj4+IE9uIDIw
MjMvNS8zIDQ6MjQg5LiL5Y2ILCBMZW9uIFJvbWFub3Zza3kgd3JvdGU6Cj4+PiBPbiBXZWQsIE1h
eSAwMywgMjAyMyBhdCAxMToxNTo0MUFNICswODAwLCBEaW5nIEh1aSB3cm90ZToKPj4KPj4+Pgo+
Pj4+IElmIHdlIGRldGVjdGVkIHJlbW92aW5nIGlzIGluIHByb2Nlc3NpbmcsIHdlIGNhbiBhdm9p
ZCB1bm5lY2Vzc2FyeQo+Pj4+IHdhaXRpbmcgYW5kIHJldHVybiBlcnJvciBmYXN0ZXIuCj4+Pj4K
Pj4+PiBPbiB0aGUgb3RoZXIgaGFuZCBpbiB0aW1lb3V0IGhhbmRsaW5nLCB3ZSBzaG91bGQga2Vl
cCB0aGUgb3JpZ2luYWwKPj4+PiBudW1fYWN0aXZlX3F1ZXVlcyBhbmQgcmVzZXQgbnVtX3JlcV9x
dWV1ZXMgdG8gMC4KPj4+Pgo+Pj4+IEZpeGVzOiA0ZTVlNmI1ZDlkMTMgKCJpYXZmOiBGaXggcmV0
dXJuIG9mIHNldCB0aGUgbmV3IGNoYW5uZWwgY291bnQiKQo+Pj4+IFNpZ25lZC1vZmYtYnk6IERp
bmcgSHVpIDxkaW5naHVpQHNhbmdmb3IuY29tLmNuPgo+Pj4+IENjOiBEb25nbGluIFBlbmcgPHBl
bmdkb25nbGluQHNhbmdmb3IuY29tLmNuPgo+Pj4+IENjOiBIdWFuZyBDdW4gPGh1YW5nY3VuQHNh
bmdmb3IuY29tLmNuPgo+Pj4+IFJldmlld2VkLWJ5OiBTaW1vbiBIb3JtYW4gPHNpbW9uLmhvcm1h
bkBjb3JpZ2luZS5jb20+Cj4+Pj4gUmV2aWV3ZWQtYnk6IE1pY2hhbCBLdWJpYWsgPG1pY2hhbC5r
dWJpYWtAaW50ZWwuY29tPgo+Pj4+IC0tLQo+Pj4+IHYzIHRvIHY0Ogo+Pj4+ICAgICAtIG5vdGhp
bmcgY2hhbmdlZAo+Pj4+Cj4+Pj4gdjIgdG8gdjM6Cj4+Pj4gICAgIC0gZml4IHJldmlldyB0YWcK
Pj4+Pgo+Pj4+IHYxIHRvIHYyOgo+Pj4+ICAgICAtIGFkZCByZXByb2R1Y3Rpb24gc2NyaXB0Cj4+
Pj4KPj4+PiAtLS0KPj4+PiAgICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZf
ZXRodG9vbC5jIHwgNCArKystCj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lhdmYvaWF2Zl9ldGh0b29sLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pYXZmL2lhdmZfZXRodG9vbC5jCj4+Pj4gaW5kZXggNmYxNzFkMWQ4NWI3Li5kOGEzYzBjZmVk
ZDAgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZm
X2V0aHRvb2wuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2
Zl9ldGh0b29sLmMKPj4+PiBAQCAtMTg1NywxMyArMTg1NywxNSBAQCBzdGF0aWMgaW50IGlhdmZf
c2V0X2NoYW5uZWxzKHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYsCj4+Pj4gICAgCS8qIHdhaXQg
Zm9yIHRoZSByZXNldCBpcyBkb25lICovCj4+Pj4gICAgCWZvciAoaSA9IDA7IGkgPCBJQVZGX1JF
U0VUX1dBSVRfQ09NUExFVEVfQ09VTlQ7IGkrKykgewo+Pj4+ICAgIAkJbXNsZWVwKElBVkZfUkVT
RVRfV0FJVF9NUyk7Cj4+Pj4gKwkJaWYgKHRlc3RfYml0KF9fSUFWRl9JTl9SRU1PVkVfVEFTSywg
JmFkYXB0ZXItPmNyaXRfc2VjdGlvbikpCj4+Pj4gKwkJCXJldHVybiAtRU9QTk9UU1VQUDsKPj4+
Cj4+PiBUaGlzIG1ha2VzIG5vIHNlbnNlIHdpdGhvdXQgbG9ja2luZyBhcyBjaGFuZ2UgdG8gX19J
QVZGX0lOX1JFTU9WRV9UQVNLCj4+PiBjYW4gaGFwcGVuIGFueSB0aW1lLgo+Pj4KPj4KPj4gVGhl
IHN0YXRlIGRvZXNuJ3QgbmVlZCB0byBiZSB0aGF0IHByZWNpc2UgaGVyZSwgaXQgaXMgb3B0aW1p
emVkIG9ubHkgZm9yCj4+IHRoZSBmYXN0IHBhdGguIER1cmluZyB0aGUgbGlmZWN5Y2xlIG9mIHRo
ZSBhZGFwdGVyLCB0aGUgX19JQVZGX0lOX1JFTU9WRV9UQVNLCj4+IHN0YXRlIHdpbGwgb25seSBi
ZSBzZXQgYW5kIG5vdCBjbGVhcmVkLgo+Pgo+PiBJZiB3ZSBkaWRuJ3QgZGV0ZWN0IHRoZSAicmVt
b3ZpbmciIHN0YXRlLCB3ZSBhbHNvIGNhbiBmYWxsYmFjayB0byB0aW1lb3V0Cj4+IGhhbmRsaW5n
Lgo+Pgo+PiBTbyBJIGRvbid0IHRoaW5rIHRoZSBsb2NraW5nIGlzIG5lY2Vzc2FyeSBoZXJlLCB3
aGF0IGRvIHRoZSBtYWludGFpbmVycwo+PiBhdCBJbnRlbCB0aGluaz8KPiAKPiBJJ20gbm90IElu
dGVsIG1haW50YWluZXIsIGJ1dCB5b3VyIGNoYW5nZSwgZXhwbGFuYXRpb24gYW5kIHRoZSBmb2xs
b3dpbmcKPiBsaW5lIGZyb20geW91ciBjb21taXQgbWVzc2FnZSBhcmVuJ3QgcmVhbGx5IGFsaWdu
ZWQuCj4gCj4gWyAzNTEwLjQwMDc5OV0gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4gWyAzNTEwLjQwMDgyMF0gQlVHOiBL
QVNBTjogc2xhYi1vdXQtb2YtYm91bmRzIGluIGlhdmZfZnJlZV9hbGxfdHhfcmVzb3VyY2VzKzB4
MTU2LzB4MTYwIFtpYXZmXQo+IAo+IAoKX19JQVZGX0lOX1JFTU9WRV9UQVNLIGlzIGJlaW5nIHNl
dCBvbmx5IGluIGlhdmZfcmVtb3ZlKCkgYW5kIHRoZSBhYm92ZSAKY2hhbmdlIGlzIG9rIGluIHRl
cm1zIG9mIGNvbWluZyBvdXQgb2Ygc2V0dGluZyBjaGFubmVscyBlYXJseSBlbm91Z2ggCndoaWxl
IHJlbW92ZSBpcyBpbiBwcm9ncmVzcy4KClJldmlld2VkLWJ5OiBtYWRodS5jaGl0dGltQGludGVs
LmNvbQoKPj4KPj4+IFRoYW5rcwo+Pj4KPj4+PiAgICAJCWlmIChhZGFwdGVyLT5mbGFncyAmIElB
VkZfRkxBR19SRVNFVF9QRU5ESU5HKQo+Pj4+ICAgIAkJCWNvbnRpbnVlOwo+Pj4+ICAgIAkJYnJl
YWs7Cj4+Pj4gICAgCX0KPj4+PiAgICAJaWYgKGkgPT0gSUFWRl9SRVNFVF9XQUlUX0NPTVBMRVRF
X0NPVU5UKSB7Cj4+Pj4gICAgCQlhZGFwdGVyLT5mbGFncyAmPSB+SUFWRl9GTEFHX1JFSU5JVF9J
VFJfTkVFREVEOwo+Pj4+IC0JCWFkYXB0ZXItPm51bV9hY3RpdmVfcXVldWVzID0gbnVtX3JlcTsK
Pj4+PiArCQlhZGFwdGVyLT5udW1fcmVxX3F1ZXVlcyA9IDA7Cj4+Pj4gICAgCQlyZXR1cm4gLUVP
UE5PVFNVUFA7Cj4+Pj4gICAgCX0KPj4+PiAtLSAKPj4+PiAyLjE3LjEKPj4+Pgo+Pj4+Cj4+Pgo+
Pgo+PiAtLSAKPj4gVGhhbmtzLAo+PiAtZGluZ2h1aQo+Pgo+PgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
