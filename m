Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD7758301E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 19:33:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9648D80E55;
	Wed, 27 Jul 2022 17:33:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9648D80E55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658943217;
	bh=h5GhIsoOdzcvZfnAal/KQQLNgqyRwqdFNnZggHMrjNw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B+GQ9LvRffBahvDDYLlmnqqCDd8+4gB2bonMtf3Sw9b86Y8BgqH2t2SOiXeYswcj4
	 fHnniys2fvlADq75Yv788KMa+gcQqLFXSrF+rXutQOSJI6ppqOudxd+yQlFFqBrig4
	 AFMr3viUlXgaNJ9/Ci8SEwp0gYV8Ho6lAiM/vC/N45WagRiAd+hZt4Yp9HG7vwls+h
	 oTdNLP+RODoymq3FyykFSdq4v3ioGPv0vDwWyfQ6Kx9yOZnc6oLF9QD/x6pefyOSyz
	 uzD5/DHF3jEu/Lh/jCaNeawPrvqfHvkYFB1gbvUboQIQjC7ijM8yg58TLEEXV+1zjB
	 +taH5gJqNsO2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MYTq1fZKEfqr; Wed, 27 Jul 2022 17:33:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 863CB80D74;
	Wed, 27 Jul 2022 17:33:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 863CB80D74
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 864BA1BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 17:33:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6B0454028F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 17:33:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B0454028F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3WXTJv-DWA_3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 17:33:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B6D840270
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0B6D840270
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 17:33:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="268066359"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="268066359"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 10:33:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659298796"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga008.fm.intel.com with ESMTP; 27 Jul 2022 10:33:29 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 27 Jul 2022 10:33:29 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 27 Jul 2022 10:33:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 27 Jul 2022 10:33:28 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 27 Jul 2022 10:33:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AI2yc1qFkDJiXtfven29+070mv482IX8l3/L0leuJ14V2oTFbvUqS0Z4vSu8502DhTL7LFTEsoz+cqunABbINSxtBRMmSItD+szkMIirfzOUBITFaJZQYBjHiVRCxSCZKeK1xuhNcgtSWgJ4AvsVXLzKs8hilgeMAJAO2GcW1B3cKIXYd8ppLCWtW4Qub1h8DoTz1B29GJqOcqz37ssG7r2ZgH3oJvnlZZxVLlYRIJqIsLFaJC6Yj3FFoykkzW+B3ektzCLfczxLc/Qxv0XxfGkvJp/aYV3YSJ9GVClK7KY1+Ips56tl4EXg+krEpNwMPfrm+x2gRPRNw7VXdZgb2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UmwlEE1WR5knnHJl8RwoaI7235Ai4JAO4OBlpo1wQL0=;
 b=ACyGXnVIXv+SAXCPEyVyuzWDSj3iYK0Eame4GWzO8BFCaGq4ETKQZylfW79rPMHhDzcqFM17ZrLx1VMES9jyF006HDDqN52xYBiihNC2o3OlxR2McTbK1xo0cwSAL7MsTKDccX8/psrKdu2H0CIfxYkxp+1w2UVPJ/bk2ZfrdBHMpgJ9QQwMKWENWM60EufnrsqtHGzRVAV/AkjtQF68NqtfkBEr0YGWdt0Tbpuo9YOm1I4w/Szgpj+ziWl98ZlNxGC12FpsY3I4+Lj/rGzC31me0O7c9czgCjOaGs6JOZgECGunsVUqveIO74YKtRJwBd1VwAN40u1UfRLTdhZV1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MW5PR11MB5786.namprd11.prod.outlook.com (2603:10b6:303:191::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.25; Wed, 27 Jul
 2022 17:33:26 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 17:33:26 +0000
Message-ID: <bdb8953e-50d5-783f-e8cf-504e0563a38e@intel.com>
Date: Wed, 27 Jul 2022 10:33:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20220726234357.50610-1-jacob.e.keller@intel.com>
 <20220726234357.50610-5-jacob.e.keller@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220726234357.50610-5-jacob.e.keller@intel.com>
X-ClientProxiedBy: BYAPR07CA0083.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::24) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 685445fb-d92c-4385-3aaf-08da6ff61d0c
X-MS-TrafficTypeDiagnostic: MW5PR11MB5786:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /0AZcUBIEK3mCobpk0XprBklbKlf9ODVGZnE2t+3kdtTJSQdCN52EPb2HAzc8gu6EkdaCH+G4LyISwXpk7H7Vbv/qCsqGDxiP9AwlQLwmtjYO3hEhCNMAN4G90/UkoOI2XXGXN12CphnDlnNieMx7N0gF+4Gp7W7RnAWp7ALe/EbSv05xnFyIrmAsdr2w0ysXd2bjrwzRn3eot8z0i0hNA1I4vIna75oSQ3sSRpcAmkMXsIK+s58+STsqpBJBX/KPfK8A9+fGOJ0pTekcoxNxzmxcwT2/5SDn5OFYziQiwexgjMgVkWVCH7y9hp9gOGA7ozyIQcdeJCmPoZX1psqOI62GdF1ak3Sp82xK7gmLx6EFTzV+yhiJEW61ouwiIYDsxXiIenZdd1n2OdRb7/9WXwpXBn0Pf+YGe645GUEbsXnhVk0XJ50OFhjCE0S6ZIX15S+TU9GfJSIPUaGSVvmN3Eax7tnyMpU6WLzS5vfO6PQnN9kHdS3fX5KAOTxMUH6Ms8tTAZyVV0cLXrH+jffEbsEgrOJdZNOspPzIiyBsQ3h4JSHYrMPrqwE1m99mHepW2rG01VrwoTMKrjXsz2g72jP4+r6MvPnN+yAPMPeFgF0kWRqmBwecPZn7DN3RM8TBO3SKLKy/sZSHlMCMOBjQQob4DQTFOFEbBXA42PJf5YGQbFdzVGH8jxLi9dI+qmOgR57//qxGCFmxQKebaIdvQGLniAhkjPlcODxVH4Vml8+ftO0JozsozruH+gkQLlB+l9SrfenaFtiZNTxDlPye5fKALlEjLhG3u/4KNLULsZnhO+VYeN1rTbtl/AgftqbXfpATvfaFxsmZqHSWP32EQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(39860400002)(396003)(366004)(376002)(8676002)(6486002)(38100700002)(66556008)(66476007)(8936002)(478600001)(66946007)(26005)(186003)(5660300002)(6506007)(82960400001)(6512007)(83380400001)(6666004)(31696002)(36756003)(2616005)(15650500001)(53546011)(2906002)(41300700001)(110136005)(31686004)(316002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YS9EZzAydHE1c0U4d3R6QTBSM0dxaU9UZHRZT0gyVFlGMTAva2FNbW5acVNI?=
 =?utf-8?B?dFc5ME5Nc1l2YTIyN0FKeUhVNU1qd0IxZWlaNlF0azh3YkpuU0JuUG9udmk4?=
 =?utf-8?B?NlhjNWl0K2ppNzhtWmJxZnQ1OVIzWnhxZE5qeTFZM1FsMkZrSG5lQWl4SVVG?=
 =?utf-8?B?UlB3bXM5WW1oa2srUEZlaTVyTXBaQmtUcFFDZFp5TlQ5MUhTcXBLS2N2VlA4?=
 =?utf-8?B?dW9FY2gxTHlZaXZwSGpCR0ErbGdtSGpiK21BcVFHZUk5enBwd09MNTFwSE9n?=
 =?utf-8?B?bHFtZU5kQkhLcWxPamhEcmM5eUpqcXFtaFk2c0t1YVErUXV5NUk4RlNERTNu?=
 =?utf-8?B?UHQvcDhYaFNmaldxcW92QlRSWExRRmtoZUJlb3JNNVhqa3FWSzY4MUwzdTRn?=
 =?utf-8?B?UEJVZVdoM0E3aXVNMVo4a2hOMSt0RkJTTTNZVzJRKzlOeERNOTdUR0luUFBz?=
 =?utf-8?B?azFIOUlDWnQxdTJNaEVyL2NhR3ZjZUszSjdxSVR2UmdQOXZ5cXVvTXhkbFZV?=
 =?utf-8?B?WFFoSUM2MkY3NExESHlFRHlRZG9EcXEwbW5zdi9nV0hEUkhWaVRHUWhJNEdn?=
 =?utf-8?B?bEJKTGNsWGJQdUJmVHlQQWw2eVVPZzZFclZjNEF6dENhSnBqMU9DbmVqYVlX?=
 =?utf-8?B?LzhXVnl5UGU5a256MjYrNVJaMzRNcXFpdVRjYVBGeEM1ZFNLQkp6R3RBeFpH?=
 =?utf-8?B?dDU2SldMbElvcHlBUnI3T1R3ZFJFT1ptQ2tQUnpQejE3NUUzei9kVnZHcElK?=
 =?utf-8?B?VnN6VkE2bWFxZXFaWjh3dWdPYVhOWE5NVmZUcUNieFdiZzV3K0hpTTVvZjM0?=
 =?utf-8?B?VGQzTUhsNEk5R3FxaTlmbllHZkFWdGt3M1pFZldaMXFCZ2VFcTFGdXBNaVNX?=
 =?utf-8?B?bVYrbGxNeFc0b1ZDK3BGRkVpVUlKYmREU0pFcnYvdVBVRTdBaHA4V25VRUlM?=
 =?utf-8?B?MkFqQVhWVXJVOHl4VmpDTmNXVVltSVpkbFdtNHc1NDAwNVh0QVU3UnlIemNH?=
 =?utf-8?B?YkhOMW5PVDcxTEd4NWtzU2hQSlVOR2ZOMDdGemhkWDdwS2xLVkVHWFRQRFE0?=
 =?utf-8?B?cmtpOXFqQVdCcnpjWnNTYWw1aUZ2WjlEVVdORGVBQkVGc1ZDbXR3SHMrRDRr?=
 =?utf-8?B?QVJPa282bmt2OTlvYkliRk8vUlR0d3l6eGFnTkhHU2Zwb1FOSlFQVlZxb3Y2?=
 =?utf-8?B?QVY5dDJ3WjVzYnYrbWlZYjJGaG1WUm5laWlwOEdueDBmYklNck1GRXpHZjN4?=
 =?utf-8?B?cmpJRm13Wlhzak4vOEZSMm1zai9BdWdZZ05FejVaRHF4RmFTQkVtaWUzbkdT?=
 =?utf-8?B?Q1U0UEhuUlREVHZCVXdaT2tNZmdEM1hvOVFtODJ2RXg3TUl1bE5lb3lwOU8z?=
 =?utf-8?B?cURmd1pYZlBVZG5kUzlUOE9WdmVxOGczRW9aNU1HRTJrYXB1MExlTFpXQm1u?=
 =?utf-8?B?THdhdmdVRVZyQW1iL3QwTHlVV05Ua1c2YTZSTyswLzRNeVdMWG9DY25CWmVI?=
 =?utf-8?B?Tm5ZR3pRMm00Z1VmczVveUhORXZqbnZsdUNJbnhFSy9GZjQ1dFI2eTFVakVO?=
 =?utf-8?B?V21xalRrRXlJY1l5eXlyQWlJamZ1QmNCR1cvMTlWVEZDZGM2MWlYWDBpTld0?=
 =?utf-8?B?WWxndFVqdFJZN1FETVVwZDlIdXJpc3pHOFcrVzlDbldUbzZyY1N1UDFzOGJo?=
 =?utf-8?B?MTk5eWtpU3VCNG9FN3ZTaGVTZHRJRHgvNkRZZ0pZZ2J4dnRYWGlkSGdpRkZh?=
 =?utf-8?B?aU5HNk1LUHhLajMrSldVUWUwS2NUT2YwQ3NQU3RXRTJtcnYrMGc0L2JFdmRS?=
 =?utf-8?B?emVCL0lLOTA1VkIzU0lUSUJBajdEZVd1VUZrcDg3NFdIYldsN2FKU0E3N01n?=
 =?utf-8?B?VmtpZHdHbFM5eTBRdG9Xb0x1aTJmMnRFdlN3SmNKbnZKekpUaFJNTFFkeUNz?=
 =?utf-8?B?TzhzcUtOdThIRXhrQnZ6UUdwZXQ0TFdtdVVsVEZJMGRxUGVoVjdSbmhqZnRa?=
 =?utf-8?B?RytHN1hjeVVOT1RQSXlZaThvSVZpV3VrUE0yS3hUR0RZQ1hYTWRJa2RSSTlz?=
 =?utf-8?B?SmsrK2FuOFdoTXV0WTFobjBGaFMvazcrVkM0ZlArNHRhdkNDMlFwdTFhY0Vp?=
 =?utf-8?B?UCtabldNQVR5R1VjNjYwTG9peHVaaDY0bDJacTVBZ2NxVTN3QXZQdU5HaElM?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 685445fb-d92c-4385-3aaf-08da6ff61d0c
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2022 17:33:26.7731 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6WLVRSIdWErbpUdpYixZkJjsXidXiZbjulL1+NsFqQYNvv7PMHv9xfLENH7BwhOYkNiKzi8WnsX7fx9yS0jpfMa8eq/8FoWJHEAGK6YR2qk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5786
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658943210; x=1690479210;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lF25W5AaxzQmO5nVCBz6u9ONFvJx3TAVwz4DbB/c91w=;
 b=en4VvlaPs3mQwVEm5prW/N67fGzBxTHpF150vna1BsHP4qLun6+8TSR/
 fpDNWGByIMSoiUUHkaxAPk4SOkFyakK4ubFNs5tIaHHM59kSiiR1rhbri
 eYkftacbvwrDE9gPFXMF4DXCzvOSFwXvBAvYMvB0lFZyOOZqBRDmJHzMA
 CSZpPAz8+Eyxty4vkzCzyKaKkCjCicGCMREfj6Wajl4iFJaOnbA64oKAk
 qeLhKnaYAzASVsPnDxRmxGzOxHtjXkURVhWL/mQl6jv/anHpASi4bQmzL
 XAw9K3FL5n9BhgCp47ihhc3J60W8D9ZiK/efdCDv/xbUnU/tQu/4zhrfq
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=en4VvlaP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next 4/6] ice: track and warn when PHC
 update is late
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



On 7/26/2022 4:43 PM, Jacob Keller wrote:

<snip>

> index 2cabdecbb23f..f39605ffed46 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> @@ -163,6 +163,7 @@ struct ice_ptp_port {
>    * @work: delayed work function for periodic tasks
>    * @extts_work: work function for handling external Tx timestamps
>    * @cached_phc_time: a cached copy of the PHC time for timestamp extension
> + * @cached_phc_jiffies: jiffies when cached_phc_time was last updated
>    * @ext_ts_chan: the external timestamp channel in use
>    * @ext_ts_irq: the external timestamp IRQ in use
>    * @kworker: kwork thread for handling periodic work

and a couple more here:
drivers/net/ethernet/intel/ice/ice_ptp.h:198: warning: Function 
parameter or member 'tx_hwtstamp_discarded' not described in 'ice_ptp'
drivers/net/ethernet/intel/ice/ice_ptp.h:198: warning: Function 
parameter or member 'late_cached_phc_updates' not described in 'ice_ptp'


> @@ -179,6 +180,7 @@ struct ice_ptp {
>   	struct kthread_delayed_work work;
>   	struct kthread_work extts_work;
>   	u64 cached_phc_time;
> +	unsigned long cached_phc_jiffies;
>   	u8 ext_ts_chan;
>   	u8 ext_ts_irq;
>   	struct kthread_worker *kworker;
> @@ -190,6 +192,8 @@ struct ice_ptp {
>   	u32 tx_hwtstamp_skipped;
>   	u32 tx_hwtstamp_timeouts;
>   	u32 tx_hwtstamp_flushed;
> +	u32 tx_hwtstamp_discarded;
> +	u32 late_cached_phc_updates;
>   };
>   
>   #define __ptp_port_to_ptp(p) \
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
