Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0DA844AAC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 23:03:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C09B381385;
	Wed, 31 Jan 2024 22:03:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C09B381385
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706738607;
	bh=rPmjxGDedi6EbS0M6UHGuAdtZPueRYPDJA/tojcVSQw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KDBryQABooHuL+51fAM50xJHyhXgH2ztzCHTO+sU7UTkfHWAH1owuuDgZElMlFc3e
	 EimXgTx5PUNxAWPMUB7R4d/H76PuQTw0lcEvJrSvS90gtoOvKpd/G24k+f7HO2CEzV
	 kBqrWef2LG3smJT4YmwogAlC9hn3FWNcvOXLYjGgWhCFVDYAunVCo3R/bmswjhR3Vk
	 kWZtGk7rmMJ2adbDbQsnNjS+roCwaNYn5STpqtFC8rq+dHXlGCuy33PgK4b/YUFW2F
	 BxvX0NymfBV4tMLPhREgw8ovFl3xYgtrXNr32OXq41zZGaDNXStaTQda1Y86LBOrdW
	 TTC+rhBx2QcsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JxZxzhOlXVuN; Wed, 31 Jan 2024 22:03:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D27AE812F6;
	Wed, 31 Jan 2024 22:03:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D27AE812F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C3191BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 22:03:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E471683709
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 22:03:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E471683709
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oRDXHR8i7AiB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 22:03:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2250483D08
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 22:03:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2250483D08
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="10392433"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="10392433"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 14:03:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="878913560"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="878913560"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jan 2024 14:03:20 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 31 Jan 2024 14:03:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 31 Jan 2024 14:03:18 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 31 Jan 2024 14:03:18 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 31 Jan 2024 14:03:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jo5iedvpji/KYOvxAKA8KM6zG7djG9XDoKtZaErdvCQQqrxugk4F30CV3g3dKCyFl0IKX29QurF+K70YHibresr2F6ijHipeGWQyd4pn+iP8T1IXqovlQCug3zmcJHwKnbIsMY0K0pVmAwwXimmQ/s83RT2xhuA778jzV3AW/Bbxq+Tz2A6sPeN39xWkJmwFlbjG4hYG6k8EW6JhLiUOdNmBjbbBhc00286FySQ59hq1U6sbUWb+wLimBgVjFBQavs0zu1vsnhStF6XqgrK22L3DSViUDvuqRO5wAYokY1o98YcO/ozxnjzGYMtqBMtUA9tAwdrdEKXt9zVZPVZzZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rPmjxGDedi6EbS0M6UHGuAdtZPueRYPDJA/tojcVSQw=;
 b=kr2aZ669snrw2M7aql7Cl2K0an0iZhcflVoTr7VAbmrQunn0yUs5xwUSPamtMLeBF7ClJctaBARe7voMKe+GxQzmAEFlIuhJh6bPtnsoKDiP+BjkSiDpVZ+5ndiWawVeX7SnoAe/6tJw7OAlquhGPAzdOGF/fSJwvvmcAlmSVZDZtmUnGHh/2AK7i81sZ6wDHVvnD2ucnfvFWSbBtMS0zGxVPW07LIVjmzU2qbUW5fJUP4Fs2p6LxoC18cYQVYimPMBkM6MSB61YPGvllrV729NdlVLMnt4b4HsjfKT3bSTZo0EUIszIYhK/jMtkVJhHxLYJpigKRgjjH52PVpqIKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:9b::24)
 by PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.24; Wed, 31 Jan
 2024 22:03:16 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::bf2:91ee:5ddd:6f77]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::bf2:91ee:5ddd:6f77%3]) with mapi id 15.20.7249.024; Wed, 31 Jan 2024
 22:03:16 +0000
Message-ID: <6db9c94a-efd2-446d-a9f0-8cfc7d126f13@intel.com>
Date: Wed, 31 Jan 2024 14:03:14 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240130005923.983026-1-alan.brady@intel.com>
 <e27bd484-f79b-4bfb-95bd-6f24518d1cbe@intel.com>
From: Alan Brady <alan.brady@intel.com>
In-Reply-To: <e27bd484-f79b-4bfb-95bd-6f24518d1cbe@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0177.namprd03.prod.outlook.com
 (2603:10b6:303:8d::32) To CO1PR11MB5186.namprd11.prod.outlook.com
 (2603:10b6:303:9b::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5186:EE_|PH7PR11MB5983:EE_
X-MS-Office365-Filtering-Correlation-Id: 6be2f67b-e31e-480f-eb31-08dc22a86d30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TprqR6IZ69CTXXD3K2rSAmwM6yHDdw6pi2e+a1UjN8GOGlLQ5atL6OPq4C7o9yLa6JpE9VxDpbtueB/37CNVGnfCsFtMbrLS5EjADYrtd8TQ4bstf8eVLfhUPOOKnX97kMAr5kFgThXZtswOrZ1c34bFSkL7XQ/PdgeTu+keb0tkU8QwMY2ywVI9b7WH1TVJg6lRlevyTw68b/pGyPGT2kyPho/vzfuXqTZjwtABNwmAA2UbdGg2NeNTODsHUfWhGMS2I0aP/mwvutWNLhJwWkd+EiNY6OsWdWF5DXmY6QL3Xhd+lweyzQEtFnPFTVUU5HkRuQP615hE3vYXFLGw1+fOHiPlEY8NlAPjG0rNJclqX1lsqnmzxYF1yaYrEj8pudBZhSct0f5TogUfm+OwJ8mWwP2VZdNxiyCc/wDwR17+foEjNHaKshl7FAIjoDcYYtUie+3bhYBBrgkoI47RJpBj3jxCmLK6pCd9JFg8sEe78hlqLO9zGYufY1lbxKKbsZbSGtmn+oLi0EvDL/PGoe81+56dMyAQXdavFOJh05cLceu9iwIFsAHm5XmTm50Z6femTSMkzEZ6nfcN0KiSNQvaF+HmTfd0+Xd5V63P6qh0JRiIyKpxNhj+0DW9wvBHLoAG1WFYZExEqd75ETzxTA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(396003)(346002)(39860400002)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(44832011)(4326008)(8676002)(5660300002)(26005)(107886003)(2616005)(6512007)(6862004)(6506007)(53546011)(83380400001)(2906002)(15650500001)(66556008)(6486002)(66946007)(478600001)(37006003)(316002)(6636002)(8936002)(66476007)(31686004)(82960400001)(41300700001)(86362001)(31696002)(38100700002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUpkSGtpUHMwSGFYODdoN0VJUktLV1RvMU91cVBCczhyY29nV2tydSsvZ28v?=
 =?utf-8?B?MysxcU41clYzRGNzcmJ4bEdxQy9ySjNrN1UzdXllaUVSRk9RcUU1V1YyYU83?=
 =?utf-8?B?WkVhM2lDUmlTTE91YXlCWGpib1FEVk5JTno1ZTRkUHNJNjZDelhMT0wzcmds?=
 =?utf-8?B?VWhXRGs4Wk1MdFFQblhKSGdPS0M4NkpLaVFQRnJWdHhkSEErYkpPNnJTTlp3?=
 =?utf-8?B?b2VGTjMvWFRlNDRlMnFkcC84eUltOFRlQldZSzR2ZWw1SVlzckFLcTBxT1dY?=
 =?utf-8?B?NC9yTHlLNkpxOUFKVGdwTHMxZ1ljR1VOS1FzcTZsZEtkRFJWdnFWaDNWNzlR?=
 =?utf-8?B?dGQzeW9aTjU4dkRNc0FkZ2tlWmFmQkZQcmk5OHdiSGtLTmwvM21COFZoaVJw?=
 =?utf-8?B?SUFyNVlJQ2JaMlJPY2xFQXByeDlEUXFaR1NSSFE0Z2NJZkpFUEZ3aHhrdEJG?=
 =?utf-8?B?bmpFekIybXhsOUM4Wm1ubE5IZUZNMDhxSTl4Mi9KTFYwZFR5Um5KMU90R3Jr?=
 =?utf-8?B?eVR0NitVRjJBeUFLWTYraUpuNkx2eFlWSTREaU5GV0pKcC8ycjZYQ2hKbkk1?=
 =?utf-8?B?UUhObTlCRi9Gekp1aGtzZUFwSE1oTHRqRHd1OG96YjE4MGtWZ3hiQ3dlKzU5?=
 =?utf-8?B?UWdRM0tGSHlJUU1PTnlRZlNJelN5Y1NsWFkzbytsTUp1U0FpMGNzYzJncjJD?=
 =?utf-8?B?aTJidkZ2bFgweFluYTBpdlpEWDNVUG1MSjJEbWxsUTVLOFNxeHFyRTVOcXM3?=
 =?utf-8?B?bjEzUWdHYnd2VVFFaVU4c0RlU3l2UWI1ckZScHNJenZLSWRwZDB2UXBHb2Rv?=
 =?utf-8?B?VnNCSGc3T2x4Y1JLNkZQWkJDamhZZXdGdkhURmxyS3dIMHNLNldrM2dXMURn?=
 =?utf-8?B?Ykw3MUFYNlBKdHdPWVBxZWx6UXhsRDd4T3FkNEJFaE82Y0Yrd3dzakJ2cEQ1?=
 =?utf-8?B?bGZSbzFPN0lEVC9WSzVrdVlHTTJuV1V3K0F3WGVEQUp5RzY4c3JSYzc3dG43?=
 =?utf-8?B?cUVvUU9iYk5QZ0tnYmFIcVBja3ZGWnVHRm0zUGVMcFNGajAvZFYva3Z3ZGRj?=
 =?utf-8?B?Zk1jaTNBMThnaUtac2V4eUgwbTZBMFJabUNmZWQ1dStqMUdqNlMvemhSZk1J?=
 =?utf-8?B?NXpTN0YwRGZ2NXJKRC9MaUJFOXNtMWZNWGY1SkZpeVZoSjBKY3g3eVBjYkdn?=
 =?utf-8?B?U0JmQkVkY2FNTllvOWxyc0paWngxZWMwVUxPaFZzT280c0M4clQ5aEtmZjht?=
 =?utf-8?B?ZFBtZVFDeG1xQWQ1MlRPQkMwdDR1TGhkSlM2NS9xaUQzeTZSVlo4a0VEa1dj?=
 =?utf-8?B?Tm5jVlFuQksyWmdQaGtFZ1FzMXFEaWN2YVF5YzVXd2pIempJYWxoWTdkUXQ0?=
 =?utf-8?B?NWxqY1ZVdit6aUlLaDRkL240bmZSbzRuV05wYkhxT3krejBxamhlaCt4SEdU?=
 =?utf-8?B?NVdHSy9QbnoyVndLQ3pJTTJYUk5UN1NUbm13SmlQMkFyL3BtMlYwVHpLVUZB?=
 =?utf-8?B?VS9uTDNaTjYxVDdkTlJOd3pyNEhNbEdCLy96WUEyeUJTNUVValg1RU1tZkNT?=
 =?utf-8?B?cFM5cDB5SUJLdGZGYmpCcWJ1b1dneEFKTUV6U0cvZld4SVhsU0hmZUdhMWxO?=
 =?utf-8?B?K1hoWHhrZzdjY04rR3pPdjFncUpKamU2MVFwSStsYkpIMjAzdVJXWlJqZk1M?=
 =?utf-8?B?Mng1SkhJbm1xbWRxMWNCR2hpSHhtOUxsMkdDVnBIeDd5RXlkUGl6TDZleko2?=
 =?utf-8?B?NEc3Wk9aak8yV2s0SXU0QU43TXpqRFRwTE16UzgzQ3I5ajVLblo4OGx5Q1Q4?=
 =?utf-8?B?R1V0RlZJOW5IYktCTXA4Vm1BcnMwOWY2ZERoSEJ4RW9GWk1uQ2YxM2U1QkxV?=
 =?utf-8?B?bmdscVdaWVZHNk43OU9kamNxSTVUVkptODQrRGpVNDVCeUJhMVNCbGM5SUkw?=
 =?utf-8?B?L2lzSWE5UlBzSndIRVc1M1ZrbjQ5R25TTkMwYmJ2b3c2NTBCUVNRU1VBSjJq?=
 =?utf-8?B?Z3liSkQzUklwbjB6aEZkT2lYblJLQ2JENy9ZcmpIYjUzZEF1bWdRaGZWbEpY?=
 =?utf-8?B?S0VZVDNwbzhnazJRbXhieURDTXhVT3BHRXgrOFM4cDdSRnNYVXlOdnBRZjVt?=
 =?utf-8?Q?HsfRt+N0bGvnxG+O3yS0nZCPw?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6be2f67b-e31e-480f-eb31-08dc22a86d30
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2024 22:03:16.2975 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t4xCCdTNXg4WLs7qVdYwdtDdUWx2btd6iVzpFRZujOw90yBWYqQrDbsGR4ncuwZVlwoDdPxzAAAVrAM8+6AR8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5983
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706738601; x=1738274601;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5tvjGc0wOjdnUqoUAoF/z2ppMsblrTLCLnrfF1eF7Nc=;
 b=GbqfWgSZJEni1590bZzsjyIVMDkhRxKjiH3IOy4dP4GyZpxyb0tZ6DOJ
 J2WbUYTzSJboAkReqYl0z97RF40Z2IEunisAFO+7SeVI0fe+eXtHiHt69
 1yAyNYVL0PyhLtFAAwMqK4dPUutRBx3dUpg3v/zMRXGQ2/G+6RBwcA6cy
 dv2J1824jRzluEV8dYnCc9LNrVRw9x4MX152D5LGKX/lW7t/QMDackAcf
 ugA8rSbyYPZBkODXEFnhxLQ8wXFXsGl89WU86uIa1gq6OpCAHPTBRa6NC
 ND62rWJ372QPFrCppAhE6D3KkWH731nPyIBPJEeJxMrfyTG6waUIxyxUJ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GbqfWgSZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 0/7 iwl-next] idpf: refactor
 virtchnl messages
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
Cc: netdev@vger.kernel.org, willemdebruijn.kernel@gmail.com,
 intel-wired-lan@lists.osuosl.org, igor.bagnucki@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/31/2024 10:33 AM, Alexander Lobakin wrote:
> From: Alan Brady <alan.brady@intel.com>
> Date: Mon, 29 Jan 2024 16:59:16 -0800
>
>> The motivation for this series has two primary goals. We want to enable
>> support of multiple simultaneous messages and make the channel more
>> robust. The way it works right now, the driver can only send and receive
>> a single message at a time and if something goes really wrong, it can
>> lead to data corruption and strange bugs.
> Have you tested v3?
> I have this on my system (net-next + your series), no other patches applied:


Mea culpa I have made a grave error.

We did test the vast majority of change and it was all fine. At last 
minute I noticed it looked like we could clean up idpf_send_mb_msg as 
well. I had confidence in the other changes weren't a problem so this 
seemed innocent to me. I was very wrong. There's some complications here 
with how idpf_mb_clean works that I think need to be worked out 
separately before we can do this change to idpf_send_mb_msg. I would 
like to revert the change to idpf_send_mb_msg I did in v3 and instead 
investigate it further in a follow up series that attempts to address 
all cases where automatic variables would be a good idea. Apologies and 
thanks.


-Alan


> [...]
>
> Thanks,
> Olek
