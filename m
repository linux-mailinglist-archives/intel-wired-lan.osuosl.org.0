Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7827284C5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 18:22:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D039F61508;
	Thu,  8 Jun 2023 16:22:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D039F61508
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686241371;
	bh=OiizY8ibLaK4Awgm0QXqDewOD61WUDal/QIFt4eaksk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L7bhH4CmDjkX3VNyGJr07vi5Tg43dSl0/ZxzHb1RmFbcHbU5K4qg2zEuirFU9qVab
	 aQSZfNN4PmRuQlVrOxSPmXz4I2Y/mKgcmpuHpGMH0pGaBl/Hf5r4ldJnVOhdyQsRXZ
	 XtSsxKfGNx+J4DVMpilhWL/MZVd9cFi8elQ0lAKRsgEp8Fqb0b64PNWvpVwwbk6bFb
	 iXayxoV7RfWFIzBFUTbb3oVXM3Hw3ggSi5bvl+P+4ZcXMaH+nga5Lp74Ilw7V0Ev9j
	 IYi7woYJsAjgBGSImVeJUz43fd9FABOLsGwGnoG8eDsay3kRV147vyx3R6LdQLdyuG
	 TZ1J4zAinTLkw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cBlt0UKz30fV; Thu,  8 Jun 2023 16:22:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE2B5614FB;
	Thu,  8 Jun 2023 16:22:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE2B5614FB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 964D11BF39D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 16:22:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 766AC40B67
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 16:22:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 766AC40B67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1cdZNh7QTDve for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 16:22:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2FC440469
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A2FC440469
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 16:22:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="420934679"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="420934679"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 09:22:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="660448359"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="660448359"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 08 Jun 2023 09:22:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 09:22:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 09:22:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 8 Jun 2023 09:22:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 8 Jun 2023 09:22:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gWx6kh1fQWgFqHFxp6zcHBneGtbqcTxfu7/iRKEZ4ejCcKQ/r1OVBst5176O/AurcLKMpNfT0Xtv6OzCbDROUA0D7CrWuQM/rqgQp1R/qZbjHcTYtlE+REmnrYqZFOAILQlLf5uuhvHO+eu/ogBLQ2spztg+2y9TXeG45cAZtqM5b2a6UAsYm7MEfdnhsSafDkxK+pC8xjIVCEIWrUUh6Z0cYPO40d0bSqEmUZ0gb2u5x6Lfx68S5SU429fscE7yszkCvLY1kY8qGSi+1gSukRcLcSPjXAAEFCmvG40fyRM/ZM4K42NVaFJhJxLpPGDVSHXPG98MdYzPmGf3MNV/RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gGwk/+mnJw4og3yKVNigEA46DUXiYjQJcc35zlEzkEM=;
 b=JNnhGAqgucriefQDvBAVA4DXU9vsM37nIehoa7tcf/JhrBGuYq0XeeQlJMWjKifWBe9uWXeH7Nj4Nnxbkj/D1azSQRPRIA053yXVf0jWQmcQ+ncZ43uNFcXp4QyBndCzpXi7mgva8w661/quSSQo1y1L3EPKj6Pda5VraUrWjboo6LX/SrKT0dYwdvYkmm59ySYr5Dsn4BRRWAXkmZMGf5nUYguQCi2GFpipz72EPevl94lZWKpYSMcW49nuhiBN/VpLYCdfHM6cs+RbvjDPPx5ApmuCLEDPnJlCR+B41YvBHxjd54QJ9gHM/T1nJXerN6kdBDAZhZjILXcxe4jMdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MN0PR11MB6183.namprd11.prod.outlook.com (2603:10b6:208:3c5::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.19; Thu, 8 Jun
 2023 16:22:02 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%7]) with mapi id 15.20.6455.039; Thu, 8 Jun 2023
 16:22:00 +0000
Message-ID: <4af3cb36-ca4b-f1be-8a48-5d3697a7c7cf@intel.com>
Date: Thu, 8 Jun 2023 09:21:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Shekhar Deb <shekhar.deb@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230607074824.2090720-1-shekhar.deb@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230607074824.2090720-1-shekhar.deb@intel.com>
X-ClientProxiedBy: SJ0PR13CA0093.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::8) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|MN0PR11MB6183:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e161e00-baf9-4cbb-dc8a-08db683c7c71
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Hcs6jzO7s7D4o3+kGyBO4AZSBrrdPNJSk0Cgbi/vjFyAUXB8rI/PW60cBIO26gsmXJaIhQSCU3PebFXiAHKgwD3ZuMkiDxPBQzoH0ks3v+iPzZvhaCzuDETQr256R+sra7SQus22zXG5Zaur+byO9dMUTIO0Jqppk1+3ksKOnpiPdcwHghvefyvdh+Yv8tahP6z8JaVFS+Nih8v4eNhwWFQftT5zu0TTiERHlsskDApvxtvMiSYzOhkmxzcLHSqcx+kF6dN9OZgJiXcUlfqGz/BqEHkpt4Y5lchU4bP9Dtd46Vv9Wup0pZSuIiLRfavnDUVSi6+f3wvyIDV3GNTu/B4Qp/xsUYkMNeKR10Vr6hVa5lb8qqASqxj/IUJNgmIhxRtHGIrZ88rIv0532QYE9A+4fdjHeW6xMAL3n8cNx785/XfQ5mHclG5BznUdN3MZQSyTr9Z1ZRJn15CxQd1uJyyMJ6b3YD0Jcn3DQ42uohnBj9ZEqVidYBHWoPf8nESexLurK7mJHZFypJIgiDJepIGTkWTieIhtdT+0Qu3Kb7DsrIFz1Tc9oH7sFQ+ng6hSdMy7/VR/ZW1CGuFusZ9pmUfXaW9pBsqmoOBVHQIw3cOVY9FbfVRwcysWiZjZQogsxl4wJ9DIO3NgV5n3tnioRA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(376002)(346002)(39860400002)(136003)(451199021)(6486002)(316002)(15650500001)(36756003)(66946007)(66476007)(82960400001)(66556008)(5660300002)(4744005)(2906002)(41300700001)(86362001)(38100700002)(8676002)(31696002)(8936002)(478600001)(186003)(6512007)(2616005)(6666004)(31686004)(83380400001)(6506007)(53546011)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzBvWEV0TTI0RXpJVW9OdWNBQmVTSkJoS25QdFFwSEdBR251MFJyYnV2R094?=
 =?utf-8?B?eVc2MndwUkoyYVRPOG9mNnpESVVJVWx3Umx4aWF3b2xOUjE1ZHQzTzFpOHJO?=
 =?utf-8?B?SW8xRFFsQ0dWVUl3c2VLakJpSDRmNmFHbWVvYjJndlFjeHhTTGVIUmlDL210?=
 =?utf-8?B?bkJOT0JuZ0ltOXBFS1BxYnp1WHFCOTdiQzZ4b3pOTjBMM25NUXRUY3Izd2xT?=
 =?utf-8?B?YXlxTlYwTU9iOWtua1EwRDJsdzVwSzZyODJ6NlVtMHRSdVZYaGJSL3poTFRD?=
 =?utf-8?B?bFlDanB5dUk2dTloa1RKSFQxdi9rY2Y5OXpNNmFTWXpLYjNuNTVsbkRIYkNh?=
 =?utf-8?B?OXR2TndKNFdBZVQ1S1krT1VMU3diNis1TXpsUnhtN1JhVzRQQ2hSMERhWXFi?=
 =?utf-8?B?M093UkpZMFpxWlJiZ3BSdmNHbTdpR01vSWFqRzhaL3NwUzVzV1BDYmpSQ3Qv?=
 =?utf-8?B?S0dtTEZ1OGhoYnNCanp2QnFsZGJxaWZoNlk3VVRBSjlUZExjYnYxcnRvQXVT?=
 =?utf-8?B?RkwzV2ZSbWxibDJpWmxzNzFDOTZpMnVRZ0o0eTdJcTFtVUJJMzZLZFBpeDdu?=
 =?utf-8?B?VC84QXA0S3RRQW9MUHpQVHlWZjQ1TVlyWnJWZnN0TXozb05ELzFKWEVHMW5a?=
 =?utf-8?B?b2tzS1N1RDVSY3grd2tHa1AzaDlRdE5nYTVLTmFyZ1h3VXpaRmcxQUt3eGsx?=
 =?utf-8?B?a2Yzd2NlS2daaGRJQk9XSW5GVW90TGZZYVhmZEVjeTQ0N2p6SjJ2dkg4cjMv?=
 =?utf-8?B?Tk1iaXg3ZDd0aXFmcExwNCtmN09HbVNmY0xRbHJHdktXVUF6R21tWEhJdDll?=
 =?utf-8?B?U3pyZzBaY0pOaG1yNjdrYzRBR1VXQXNQZUZkS1pHbExmU05hcG9PN0JTYmpT?=
 =?utf-8?B?ZlhOemVVUEowN1BMOHVGeUZsdzBYMiszYUptYlJ3ZjFaTUFZQ2lJTElJTnpm?=
 =?utf-8?B?TUs1RkVlR25FUXB4MkxaUTNuS05DcjFyVFB3UGJJRVVyeWI5dUtWN29RRURH?=
 =?utf-8?B?d2ttaXFDV1ZHRFJwSjVpcUlRRE5aNElTTWdLN3Y0NXVuOGJyQTNwQllDc0pE?=
 =?utf-8?B?N1l1aXlaVXpTNkhLODFjUitJM2JuTldsY2wwOXdNTjdyWVQ1TERqdEhIQ3lx?=
 =?utf-8?B?RlY1aEJQL3g5UU1QZU5LL01XOHVOU2NvVWgyelprdkgzajV3KzNnNUd5ak05?=
 =?utf-8?B?akhxQm1mOGtyT3IzTEpDM1VKTjIrTFpCUlZDYmV4cmhJalVMNkViU3FQNkls?=
 =?utf-8?B?L2NqNUJMMm1jMFR4V0E4SE96Wnd5THd3UEZOaXhtaXR6a0ZjVmdVdTljMVl3?=
 =?utf-8?B?dklkZUxLeEpXS3NnbVJvYUVNQ01pN0dHUGtnVUprOXU3SkwxRFh6NGtnMGJ2?=
 =?utf-8?B?dmhhdzV3VW5lMGE3d3c1VmxhczY3emwwY2k2ODhsQUQvOVk5cFhzOXdaai9D?=
 =?utf-8?B?MU1vNUtpT3lTYVkrUXoyRTlLTWlGSElVNUlsRmlBT1JYMzY5OUhQTks3NlJl?=
 =?utf-8?B?cFg2TUhCQmxVcUlqZXJ2RENMZUpSdHJQQjJ4SmdUcGtCT3JIdk1QcGFvb0pL?=
 =?utf-8?B?bE9qTnRIVXE2Mk1hNHoxbXpaNUx4eWZTclltSndrYnVocUVZYkVVcm1MdmtK?=
 =?utf-8?B?eTZkSUg0eXR6SmFjRWcyYkJySk1zVHJDN3QxVmZMakpmNHFKVGU3eUg3ZzZC?=
 =?utf-8?B?dkpIWkJPWEtxbHF2ZWVxSlhCcXZKU1pNSnRJMCtGT1ZwVnIrSllhcmxqVis1?=
 =?utf-8?B?T3pCaDZ6V1B6WFlORkQ4RlBrVTY3YWtnNm5rVUNKL3JpWTZaSUY4cXkwZkNa?=
 =?utf-8?B?Ukg4WW02cFl6Nll1T2NLWkJFUHZMdGtYVDNwa2R0RUtJODFmYzV2dlUxa2hw?=
 =?utf-8?B?VWYxaUpkTTJuNW5NS3JxZ3FHRkNYWFhHZGVrQi9QOG9XNkVyNkxNNy9Kd25O?=
 =?utf-8?B?YnBhb0dtVXVLV3phUytLWnB0ZklWVWFMbS8va0ZJSEc3MjZvU21qejFQcjJP?=
 =?utf-8?B?QUE5dFdUWHloTmF5UFR3VHRHVWNTVDZ1M0NaNjJQeCszeW14OE9jeEgyY3lt?=
 =?utf-8?B?bVRLdDJHMlFOb0V6MGQ5TXVnT3JYNVJ0WjlGUjhLTEZEWjdXZ0RvY1gwWi9V?=
 =?utf-8?B?Ry9qQmlRZnY5cHhRbVFOMHZQbXpSZStpYjlrdk1ld010b2NnSGYxNnpUTno0?=
 =?utf-8?B?cGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e161e00-baf9-4cbb-dc8a-08db683c7c71
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2023 16:21:59.9980 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MmPUr/eltMvhZXMM3tHUldiASlA/F+yWaQEOF5Q98JPHnlpYqAGNFXEyqtkqbBcHdonGQmVtKc/uqV7npUsCWs5lIfxivIALOuj47Lqa5Lo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6183
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686241364; x=1717777364;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OyOL/UUpNDLOafI2dyJUiFWScai/RVhmMk4cjPuv6/M=;
 b=BG4FRvlpVG3cQRU/AjwBvIyr386D8iGhNQGK86Yyh2Azg+EyDIWCRwcw
 2s+FzTJ4IsZVUVm2D1V1Mm7gd+QAzxT2SQB2+4VePFtuNLPqVblSN190S
 bu5KMx29tHLPLVEKg+k6P1CAQS8EEfP8ngjJ9EGiHmp3e4WvV7Yde/6qT
 Mu6xYbpDW5LS3aVpueJNN4sKmeOzzAFLj06pPmtb9jlBsIPES0FAAxnlc
 xzV8GbYSQdFj7VtOneVdxlB+LkiiPprLWmwRH6UVaaDynZRipZguoNaMO
 ZOVO/j9NwIeBciD4w887P4Dzu/DW+z06yvrPVEDZc/h9ZjDVBKRm4QTKh
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BG4FRvlp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware] ice: update ice DDP
 wireless_edge package to 1.3.10.0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/7/2023 12:48 AM, Shekhar Deb wrote:
> Update ice DDP wireless_edge package file to the latest version: 1.3.10.0
> 
> Highlight of changes since 1.3.7.0:
> 
> - Provide Separate IP Fragment Packet Type Groups for Receive Side Scaling (RSS)
> - Add support to allow Receive Side Scaling (RSS) and Flow Director (FD) on Multicast packets
> 
> Signed-off-by: Shekhar Deb <shekhar.deb@intel.com>
> ---
>   WHENCE                                        |   2 +-
>   ...7.0.pkg => ice_wireless_edge-1.3.10.0.pkg} | Bin 717176 -> 725428 bytes
>   2 files changed, 1 insertion(+), 1 deletion(-)
>   rename intel/ice/ddp-wireless_edge/{ice_wireless_edge-1.3.7.0.pkg => ice_wireless_edge-1.3.10.0.pkg} (77%)

This doesn't apply. Please make sure your tree is updated.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
