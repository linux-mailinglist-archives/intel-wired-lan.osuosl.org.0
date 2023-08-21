Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111DB7835DA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 00:39:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 76D89404D0;
	Mon, 21 Aug 2023 22:38:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 76D89404D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692657539;
	bh=89Kk5hL8V5XthDBp7jx76TL+xsrjHDdME+ZB3P3N8C8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K5dYL3D9Dn3FGClplMYomUkXaP2fQvi/D2N32PSjiE4PDPlDhFscJMxyXYBl03l2z
	 MgGDd/jmlE3XgHhW4z3gmhdWmF75kMfx+N0QBIty34ktjPl9APIS7UtDmw+1SXmrVF
	 VMCYF3EnNWW/qto0A1uGtwpwGexa21Ppj6QCj9OhckX7TSNjM0GS8RHcs+tHLLPrsl
	 0pc6sFY7QoCli/FK+rskP7mnK6Y08k6WFAhyzZFS6NAFyS6boJ3WpmbPooFaAbHPl2
	 RcCrzNCCFsAUYLuA3TNou8tkJ0D9iIlIymmBYn17Lahhbx6TfyYpho8E6a0pnpfW3K
	 8sDdCfykBjWNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O-pL1DgMBwYB; Mon, 21 Aug 2023 22:38:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E86F403A4;
	Mon, 21 Aug 2023 22:38:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E86F403A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6944E1BF35B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 22:38:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 40CC981402
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 22:38:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40CC981402
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JM8GMEpPNZGG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 22:38:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 574BF813E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 22:38:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 574BF813E6
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="404716452"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="404716452"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 15:38:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="801432288"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="801432288"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 21 Aug 2023 15:38:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 15:38:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 15:38:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 15:38:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 15:38:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EQx72RQ15Tr0jXXSuRLs2DfQ18t/odayiBnl5jgvWHb2m+LLMwBtQk9RRbLk9V+53diXE2Dt3WSWzSvXH9h/GqE/XZHZGpbVZIpaimihzHn+1Y0TgetAoC4gu/ZHUy5mkUEVkpPEWcOSJRLAW7NBAUIydVbGkdsQYQLu2ZF/8MwfCY0vpCs6Sg3Fd2T2uu9pfLmMJ1HIGv1FSdvsO9Gnr2xUA4LHgkcHM0tphhOdu0360zz9f63dH2J35Bd6gTHTC9Tnxp0kw0VG0gLSjo3o+t9alCn3cGkOFtY2dmAav0bRp/nu3M0PxpL0ROhhUgeLtXBv778U9GqCtSD/hLFiTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q4Xt0sQbw9rjo+OC1CpCHUUjbkbGUu3beZdwKFaL8yo=;
 b=OitZOi9tkZ+DfFXOHYf8R4ZW3VC9jZapYb24+d11n7MxQJR+u41GoCj6mCbE8foWOKAL/ZeYZ789kQVYUyGFOImRTEd8kxXAmotBo2x92thby9IWyduPiI1dpdQkR3gR178JXUEAsoycmxn3cl3ix9nr4mUX9JVWlrDdLsrYRJ8TCsNVgDIWzmRh4+Cc9iXM9MqRkUp+1pv2PsXpEoiRY2KlY5FxifIFzuUL5hPUXDlsnVPYJcK+ltsfrErGEgQ4DcIGs8VcekXUy51Y7jAiePn+BwyFbuV4UztFe+aAHTIt6vtSjLZ7EIUnuCoFaMj9FggwTIHJsyB+bo5mvqWF/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CY8PR11MB7827.namprd11.prod.outlook.com (2603:10b6:930:77::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 22:38:45 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3%3]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 22:38:45 +0000
Message-ID: <a97503a4-9e96-a711-05c0-cc0c40eaa3cf@intel.com>
Date: Mon, 21 Aug 2023 15:38:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Piotr Gardocki <piotrx.gardocki@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230818164735.1152063-1-piotrx.gardocki@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230818164735.1152063-1-piotrx.gardocki@intel.com>
X-ClientProxiedBy: MW4PR02CA0025.namprd02.prod.outlook.com
 (2603:10b6:303:16d::11) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CY8PR11MB7827:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b671d11-98e7-479f-c539-08dba29760a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jNoNXV9b+ZZqIoKI6rW0ftyY82LvsGNyt4RJNuleNBCd5GbQCIxPlI2lKgOk8xLC3seTOA2SSjKDhXJA6qqMtNWRl2hmoVFdjcRkfmVcuMD64eArZ7PPloc+WaY/uQMNeRXInjDYIHDgOX1RjOE7I4F/6QrKXuBIrhL2OBIOzQzeKSqPy4oizqLuKD2aj3V3i5V27cRwrqOXei4h05/J08/VLQi2ulqxb9Py5UPtv2ck0gwaf1P6pGr2rWzzPPOo4/lAVcyWCMwmUqiV8hZWB+IsXkP4GmpbwdWEowHnirAXP0YtxUGydHmCJ0DPQwQG8n/e8q48mMUEvaOiYs3kwtfrjjy9CEXzab8WqLppG5o+O/Bm+oFXw4wM3IawTRpwCDBWDAOmfktPLMKd/NPNGN0LlXrH/8wDbf84Cushop4+BndM5HyLx8b2oh9AoBsrQtA5G15hxe/8qUQs/8bsZIOIahpdG0iJWMdJCVmDJmT3Jqzzn9O7hYRUnUyzJl6v7fFOYV6TJ4zGI6AE9ZCzTRMeqhFWdjORMvGJeZPchvFD5NDHohPfmXtPLIeJxxyuEZkmxp76xrGpH6su7X5wLlaXPayZfOQf24ku/R2o+c2FANDFdVNrQ36QIB9NC9uph8aBy63VRKxfx6Aiy5G8LA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(346002)(136003)(366004)(451199024)(186009)(1800799009)(6512007)(6506007)(6486002)(41300700001)(53546011)(2906002)(36756003)(26005)(4744005)(86362001)(83380400001)(5660300002)(31696002)(107886003)(2616005)(38100700002)(82960400001)(8676002)(8936002)(4326008)(6666004)(66556008)(66946007)(66476007)(31686004)(966005)(316002)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXNMOVJ5OVZTZ3drck1wZ2JiUG5lNXpDUHJHelFzVzM2R3FDYTUyeUNaRnIx?=
 =?utf-8?B?MTE3ZTA2cWJPTGQrMjZUOW9LV2RJUlZ0MVZrbDNqNEEyaWgwcEtuRW1QMUlX?=
 =?utf-8?B?S0tuNXlLWkwxZmUrZm8yZ3oxUU9zNGRYQ0YvMVhDMEVSdzNzOXZHdkxXVm4v?=
 =?utf-8?B?V1RFYmpOMDBYRm1kemJoNkhpT2pYWW5BaGxYLzlSUENGT0dFSkpjYkltWEFz?=
 =?utf-8?B?V1FHNGxnRjFmVDlpZzJmSGppZU1jRldEd3h4OE1BOUN4NmYyQjNsMnk4QW84?=
 =?utf-8?B?Y3QxRXBtSjdXTnJKd3M1eVFSTEhKT0QralR0MGJTR00vbUcvL3NwbTJtUUph?=
 =?utf-8?B?cE92d0NnN0xzSFRMSVA1ZkEzalRQYWl1ajBIVFFBMWRnM3JmOG5xMnpHak5D?=
 =?utf-8?B?U0FUUXBBRWx6Z1Z2S3I3K2oySlNFM0tmTkhJRm5HTXA0WWhHelNET2l4aitY?=
 =?utf-8?B?bnJaUHpIWWY4T1lDWHg3Z2plWTRJeXdOamlSci9KcUcwaFJqMGJlRm9rZVF0?=
 =?utf-8?B?bzRGYkovcy92S01wUFByTm9wNmpqcEgwWUZOeU56TWljQ1R0dW43SGI3Q0tr?=
 =?utf-8?B?WFl1cTArMUdKUGNrbGJGYmcxYUdweXliRFcwazAvNkF4dklEMlpETGtjd2xV?=
 =?utf-8?B?dkpURVNUWU9KSngwME9wUk9zNVJPUzdUVXpxYjBGQUN1WFF6aHVnY3VuaVVF?=
 =?utf-8?B?Zk9NS0R1b0xkVFdjNmxGZWJLQnlKeFRsYVkzWmF0QnlBc2xBeTNva0dvZ2o0?=
 =?utf-8?B?TmFSQWNsZE1WNHRwNTBUeDl3Nm5oeFJTSFhpRmJtT2kycmdFVTdzZ2dkdlpK?=
 =?utf-8?B?WnZoMXYwSkZ1UE9QN21hN294R0hXWTZINlJRSmlIRG5GT1ZOaDJvSUJQdTNh?=
 =?utf-8?B?ZEllSVRMbytYSjZnQXpwRmdjeVBaZXJlYldtTTRjL0laZnBuZWQzTDhiK2w4?=
 =?utf-8?B?ZVpTSys4TnFYVkczd2dHa0VyNGQ1ZUFwcHYxOGhRc0NqODlKK3Njc3VvbXAz?=
 =?utf-8?B?U3dTTVp3OElyVzdubWFCMGhGUnJKNFJhUm1PNnFFMDlKcU14ei9FbloyTjND?=
 =?utf-8?B?WnBJa1pLOVIvUGQvWHM5SGc2T2kxbEE2ZzlZVmRHTW1FbTNUWXN4WGVTbUUv?=
 =?utf-8?B?ZmRvOXpnaERoQ05CZ2w4WU1YNndOL01ONGk4bzNUZGdLamRFTTIrY2RHZGE5?=
 =?utf-8?B?THlGMHU5QTNRUzZYUTdXUkl4cUFwRjF0VVp6Y2J6aVN1c1VzdC9sY2pNa3Iv?=
 =?utf-8?B?YThYODIraWp0SzhPcmZqejJjQ1o2ZytjQ0lOd0ljOVpRZnhrMHJBY3BpVGhM?=
 =?utf-8?B?SHhEaWxpUGJuVGFTMzVKVmFWRElWZlJNb25RZk1vd1ozeG13NE1LNnRrQjhY?=
 =?utf-8?B?dmRZdTIvbUNsSldCQUgvQk9kSmQ3T1RLN1E2bU5OT2pxLzBpQlN3UkxzV2VR?=
 =?utf-8?B?OGlWa0tOTVMvVVJkMVB2anptbU9UQjdlVk12a0MvTkNNV2h1RU85N2FkWktM?=
 =?utf-8?B?Q1UyRUxueSs4aTJEWWVwNWZwakZNUnhpM0Q4emRBL3dEZ0tCcUV5UUgwSzZP?=
 =?utf-8?B?SldMWE5Tc0s0MTUxVWFrbitZR2pRTlMyT2hOc1J3UFQvM0MwdFNVdHlZalMx?=
 =?utf-8?B?cE5pb05KMXdYZGZ3bEhIOHNLMVdOa0xsbmo2NzljZ1R1R3BQaVVKUkEvYUFC?=
 =?utf-8?B?OXYrV0RoNnFodDVCOUZRMWNVMWNNaGV5ekovRHg1ekVBUC9JZ1RyTUNMSFIv?=
 =?utf-8?B?emw0T2tFb2ljYWU3NVNzWDVhWkh1R2lmdHJRSENyajE4V05LQm1sOGdhT3lz?=
 =?utf-8?B?STY2Yy9peVJmc3NiNmRzUXV1VGtNVGQ3Qmk0blFsUml3T3ZGWmpadXRsa0do?=
 =?utf-8?B?OVR1MkNrWHJKcWp1MldjNUs1R0FaOUQyMTJtcmc4TER5RllUR0J1S21LeUxp?=
 =?utf-8?B?dVk3NzFHbkJrRWlGUHA1VkluZjBkd2FLWUxJNkNGc1pNZHBYUWcwRmJaZXVY?=
 =?utf-8?B?RGd1eGw2cmNoNUM1bUtiUUdvZVdXZ1IrSURpSTc3eGxRYzd5a0JrbXJMRUpT?=
 =?utf-8?B?RlNweE5wSjVhQlNHVnpCeFJiWFFXR3h3N3FTb1FpeXJKSS9VYTErYkZWRkFP?=
 =?utf-8?B?OWhEbkpzeUVJNzlkVXo3bThtSy9LOFhKcmlPT1VybGJuOHEzUk04YXFCR2tT?=
 =?utf-8?B?a0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b671d11-98e7-479f-c539-08dba29760a4
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 22:38:45.1952 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eAMsOAKSk6QaAvLgwOZE19iNVelsiy7QgNG1v0gjM1HbrI1iluUJ1Kp1ua75cGw3AZtvn6k3LuJaVUqtJef6WPp9yCOPpf9BES7bdX0grQM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7827
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692657532; x=1724193532;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XPvs3DNSDPmLAdlyTA6gvf7JZMx7bqLplOJbzpGIXfs=;
 b=XgOZz2YpId5+8IOWZPlH5du1vcLjBNSXCPDF8Hp90DJgdTDgxhlkah5y
 HMP+DqZkV1+3drIKPywIf+63pljbiHK+17sFPFIhi5OcmqC7HXN/C0tOb
 lanesubqwoqvyng18Gs9UzJgaLM6UUXe9exjP8G2eEBrKhjtd/R8j9t7T
 4TP2Oh1HGMjwgxdK+vZGVD/1XHVrLo8NkQETu7aKDPoPgZBQyGymajBYg
 E/oriTEw2stv7gXggFk/lCg/5DqaGvP49qEuGTkd3oFdZfAi8KU5STkoB
 0PSlsnYvlawtV+7ea4MoqB/n6m1EaxhyWhlaAj8VTf/qG38rU8poULfau
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XgOZz2Yp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] iavf: fix FDIR rule fields
 masks validation
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



On 8/18/2023 9:47 AM, Piotr Gardocki wrote:
> Return an error if a field's mask is neither full nor empty. When a mask
> is only partial the field is not being used for rule programming but it
> gives a wrong impression it is used. Fix by returning an error on any
> partial mask to make it clear they are not supported.
> The ip_ver assignment is moved earlier in code to allow using it in
> iavf_validate_fdir_fltr_masks.
> 
> Fixes: 527691bf0682 ("iavf: Support IPv4 Flow Director filters")
> Fixes: e90cbc257a6f ("iavf: Support IPv6 Flow Director filters")
> Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
> ---
> v2: change zeroing of ipv6_addr_zero_mask, fix indent in one place

v1 was accepted by netdev [1]. If you want to make this change, it will 
need to be sent as a new patch.

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=751969e5b1196821ef78f0aa664a8a97c92c9057
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
