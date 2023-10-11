Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CED7C5E35
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 22:19:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43E5F60D79;
	Wed, 11 Oct 2023 20:19:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43E5F60D79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697055550;
	bh=FuoZ1Q8nwliq/d27aH9jCsm4/K/8bAVsol0YMpNFP68=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P2AeFfrgPwjASXGO/z4oH3XCQEz8wiTBCEwQs+P/iRDLZikiKiOAxxgE/cG0hOF7k
	 glr5Y+JDmYJMxkoxa5yOFyKNH3NundrI1URWS/JB/trUIhklIJPyt5RBw3JysRHDkY
	 VXo/3cAn8VOpohsc9EGqThUF0k40mWV1lFbil67eex8LUUSLnTnDcmKj+L99Gt1bkI
	 knj6iTlofeafDtlKJkZglBsgrImX/omLPH+HiWwp27Omj+JsNvDPdxewdglznSBpC2
	 2u4hf4qQi2EUPH/U15yqDgso6yUhyLeknwrKpSjktvrGjNX3qCdzUPzVmG+6NDDGUR
	 koVXdMN7vsLfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3buhLwInub0F; Wed, 11 Oct 2023 20:19:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B41B60B57;
	Wed, 11 Oct 2023 20:19:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B41B60B57
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 23E871BF31D
 for <intel-wired-lan@osuosl.org>; Wed, 11 Oct 2023 20:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F1B2160B6C
 for <intel-wired-lan@osuosl.org>; Wed, 11 Oct 2023 20:19:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1B2160B6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SKoxZEGcQjIL for <intel-wired-lan@osuosl.org>;
 Wed, 11 Oct 2023 20:18:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F9CA60B57
 for <intel-wired-lan@osuosl.org>; Wed, 11 Oct 2023 20:18:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F9CA60B57
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="364124900"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="364124900"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 13:18:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897784092"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="897784092"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 13:16:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 13:18:42 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 13:18:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 13:18:42 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 13:18:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fxQ5K1mDuTgBMbeZw7E7EFci+xHxYYuRMSbQeuPwJU/EYaT576hb6uNoGabcO8YvE5xDtlxjextp1yVvEQ0ZqwLd9Dj2qs70uHqcKRtuBzqGJUGLoBVyAtnVH8pCcWJMb6CbyKQOAtZasVVFu3q7nxTtQ7zgVa7q8woE1bIQQ6AKzLfN8l6SkPh5PUGZ0OtQnanVAwAIv2nAyfWdwYCWh9ahVxlrmazjpqb3LcKOLFQ9cM/oJ4PQNYP3Czubt3YMr9iPU9347d9v9z9GZV1PU73ja5XSefEy3bYgsmRk7tP+b7imukt403pYLmKLaclynFrDTsjVCgmLK8vmkNcZTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ob9SBjNQeJZl/pBEQlD8/2XpEV5N68Vbm5Eo/qoV2Qs=;
 b=AleTJWCvLszHWE/c4o4ClEn/TcY5vFsbBJuKrwlDAi3JH65gLxOqk5CvrAIXbxCuMfOEX4oJSyrn7Ww2pZv4YBdfHTraSKkIkG3Huc4S2ld+n4/A6x7AToUZMGg63b9KPDOF50cjk4rCPMcLWroPRujbmOXkpwNbu8XTgeKHf54pupKQ5DZjBQ9/C0zkdiK1fuwdUITEPAhAW2NvZ7+TqfY5TVnksRJM367dKDAG3uUWngeQhqTzYk2MJLAS63tN7khtn00tG4+mSkzlRFnFZsT5l2gAmDOjPWth1XM5sds82UNXYCcvVaxemmqh5dGilmXMZcbhLEZQSMeIOArTOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CO1PR11MB4979.namprd11.prod.outlook.com (2603:10b6:303:99::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.43; Wed, 11 Oct
 2023 20:18:40 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%5]) with mapi id 15.20.6863.043; Wed, 11 Oct 2023
 20:18:40 +0000
Message-ID: <0b25fcfe-1590-666c-ba81-a9d3ed533745@intel.com>
Date: Wed, 11 Oct 2023 13:18:38 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: <intel-wired-lan@osuosl.org>
References: <20231011110411.204700-1-karol.kolacinski@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231011110411.204700-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: MW4PR03CA0035.namprd03.prod.outlook.com
 (2603:10b6:303:8e::10) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CO1PR11MB4979:EE_
X-MS-Office365-Filtering-Correlation-Id: 1fe231c6-d1e1-4570-c128-08dbca974250
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CUeIGGt/z7jBeToMHpy9VOwm4+u8QwY7n2xf8ih8u6up6DIJC41EZfC3Tw5vd1VdqKDDxKQZGl/u97tcEUEzh7lztXsBVy8peLvRbpFT7uViOhL3paC+OLM0AsojZMoM2gqSRWBtMPE+a8dZjF5K/la3y/isuH9iuujmH6VPm1I0bm+cHbSnFMjGPqD8mFRUoH1cYLpmz95GoCAllpACuSQtYjmLaD/q+72afOf4vHHJOUna7C2oBVHti9cwyLbCYaPlj7ST15cOODu8K2ydyuCtCaUeZvVyu+c4Yt9NEyJ0INDMTRssh1ME//R4yz71JpU304czGshTk/vksB/sBNbj2ikN/F5IfyvqnbipmdDT7XZKXA2ks8qoF7gLY89/M/Z6XkKvHZP/GPGONLJ5HddRExk+WxPyJnvFq6cBW0eFDu5IB1GBdgDWH3osHAGyKCgjoXLzdAVYiFotCGLa3W6qR9WRJ+LdPHd/sSB/FKiN4I5IixSRhKYHGty+0K/i0ZwemtiaJqtN+mELXuB0QODb5/eIGy7fHEFeOxYtQ1Y8/0PtMEQzVN4EcbhCjmTA68MCvmU/CIjaxHqXtyunThDHD7QRQ6qmjQAL/Gv9cvuZ9OhHgm899Gycw3T6n1x20qlWpjyBXLIidKbt/03udA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(396003)(39860400002)(366004)(346002)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(26005)(6916009)(66946007)(66476007)(66556008)(316002)(2616005)(5660300002)(6506007)(86362001)(53546011)(31696002)(478600001)(8936002)(8676002)(82960400001)(6486002)(31686004)(4744005)(2906002)(38100700002)(6512007)(36756003)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmI0bFBDcEl4MXJCdmYvUWZjZmU5QUdnTkVHSWtBV0lmS1VobkdwSDVUK1ZX?=
 =?utf-8?B?SzI0K0dCSG1QbUhPQ2trbExoRWI0aG81Q05kcDV0d0ZTQjRrbkNuRFE2UUxy?=
 =?utf-8?B?OHdSeEV5Qk1NVW1hdzJrYUV3K0ZEQ2JJR0t3NXV5b0pWZHRhVlFWRDlNQ1Jo?=
 =?utf-8?B?YnhTSEZWa3IyRlNKbVBrTUdlYSsvUXN0RW1FNGZtRjNkNDBHRXA1TE9VODB2?=
 =?utf-8?B?ZEhsUE5FZFdsOHFRUENFODIwL2dlTkhqaUNYTWI3TExJVGxBbmFvUlBpZ3Vp?=
 =?utf-8?B?ZEt2UnU0WUxZRjlEMHcvNFM1L1IwaXp2MDlFVHo0b2pjVlE4YmFlWUozQ1Q4?=
 =?utf-8?B?bmdEaDhoc3JScWhkdzJUSk92ZWJ3ZmVMeUt4c1duYUJNak0zN0l4TGxLSU0z?=
 =?utf-8?B?bEE0c1lJOStnQjFocU9QQ05EYVI4ZU5jcmZFZ1AxTGFROWp2N2NZYk5PY0Iv?=
 =?utf-8?B?eS9ycWRKdGx4elk4eEFyRVBPM0k4VGczclpXUmhCUnJ0VDNsb2xLKzVWTkRn?=
 =?utf-8?B?Tnc0b2RzMDhmRTZ1SmhhNzJUU2FUVkswZEVGSGZqYmo3WGhjL1BxN3NlWTVE?=
 =?utf-8?B?dzZIUnlXK0lqSnZWUEtObW9MbU1vQ3JOaUtRclZpZ0NYWkRQY0kvLzBEejlN?=
 =?utf-8?B?UVZFeFpzSVlIaTVBcUdsbmZOeHBvdmp0eEJZRDB2WnVZZzl2TEZ0bTdQcXBl?=
 =?utf-8?B?WWRTVXJSU2ZMSWZFRDNiZWcrVGw1YUtwdE1SSWdxZjRTcjkxK1RDbzdXNmV2?=
 =?utf-8?B?azV2TjNlZHpFN2ZUeStwRndlUy9tZkVKSVhkN29DNng0RWJ4elJ1V2pDeXh6?=
 =?utf-8?B?SG1XNVhWYWJTa1RMK1JLNm8zRXl1SmphZ1BPc0s4bFpTTjlJMnNoazFrN2xl?=
 =?utf-8?B?emhGYjNWSVpwSi82UGVtaWR6UU4xUU0vd0ZPVkx6SGM4M24zSmVHeDVmUysw?=
 =?utf-8?B?UVRSMGZ5aCtBS2tqeTJyUGI5ZEtkK3FUZ0lqbXZkZjFmWW9mUk45a2N5NlZW?=
 =?utf-8?B?bmtmYWlrRHdMaGJ3T24vOWN1WVo4Q1JWNkQ0TUpVVkZLUkxja25PcU9odEwx?=
 =?utf-8?B?b2ZzOE92cFp6dXVtTlVEN1M0dUJQam85TGJ2WUFTV2NReHg3OHliK3RMckNI?=
 =?utf-8?B?TnhPTmVEaGtFc2tGbnp3SVBLSE9waThsZS8vdFl3MG94SXpCVVF1Wm54WDBz?=
 =?utf-8?B?NWpnMjV6dG9NRm5vYjNvRzRqSWRyRHVKUEpqOTEwbUdJTGhpaFZCMlRVOVNW?=
 =?utf-8?B?SG1TcXZPUXRtZXA5UnE3V3UxR0w3R3QrMVlLMXFTQWl5blVTM0dCbU5BT3pp?=
 =?utf-8?B?NGhuWHZJaXEyeGdiK3BCd05SQzJ1Q1hVUVROZGdEMEZZOGRtcyt1SEN1YTJM?=
 =?utf-8?B?SUwrYUR2QjQ2ejFaaEI5WG9BUzZteURXZmxrUjJRVmEzU1pPd0VsK3BPRVc2?=
 =?utf-8?B?aFJMRWc4aW9pdGszaGxHQ0J1eEJpNnlVMFQ0OXZ0NCsxNlEwd3RWWUVlQ3NE?=
 =?utf-8?B?QXpqRW9vNE9wYkZBYjdRNFNVbnFKOGRtL0pNWmFwYjgrZ1BRSWM3Wk1hcmJX?=
 =?utf-8?B?R25mWnI0QU8wdkVjMHgrQS9yMDd5dXhIWktJVzkyWEFwVjdwMkRZQng2L3JG?=
 =?utf-8?B?OXdCNkZHSk16QjBsQmlqVW0zNTBTYTg5SnZyditqa2hBWjltbEdFZlJpZHd1?=
 =?utf-8?B?MWlTMHUrcHR3aDNkWlZFUTFkMUVKeTJCRTlNUm9IWVlwOE5Id1hoRTBHUk1k?=
 =?utf-8?B?Nk9TS0M1L3VXMG1ITXFZMjYxOW9abG1kUmpYdVN6UVBYL1U5MVcwQjMvZThm?=
 =?utf-8?B?bGV4bkR0ejdGWXBscDRQYzVZVDA2MXhQZTZjYzF5UisxaWFLeXc3RFVlWDE5?=
 =?utf-8?B?T1RwcjhURFJ4dlZtUEk5anFyTWZpNVNHbms2eTZOU2wzODFKaE5GUTRvTUV5?=
 =?utf-8?B?N3BYWUUyc3FuaXZVRCtSZTU0QzYxWkM0Q21FYjMyL0ltUkN6bE5hK1JnR2xi?=
 =?utf-8?B?Y1hkbkoyMVFNdFJ1aXoxaHAzUnVEeCtleUNFK3pZcHpRSnpqcjgxeGpJSWcr?=
 =?utf-8?B?Wk5xODlGZGRhb3YwTUdjby9FbFFiWi9ZdDlnMGVwR0hWbDZJVm8rZkgvNlpR?=
 =?utf-8?B?VGExeWx1Z1dYaXZPckFlbnduUnlVdmhjK1R3djRvenp6bEFIeU5uNENkeXQx?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fe231c6-d1e1-4570-c128-08dbca974250
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 20:18:40.5591 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b4z4c//gP0p+eV3OFIhmShTC9k1tS9Ax14uJfeWKSjofb+kUbksFiAxLLXTJUDFFe0fJoQ2uef/LqmAEVt8e2TWdJ5OVwgbiQJgleFxeegg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4979
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697055537; x=1728591537;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ob9SBjNQeJZl/pBEQlD8/2XpEV5N68Vbm5Eo/qoV2Qs=;
 b=jpEDay+4C0sgjDpTf2MhxQ+K/6Sga871l0Ck6XUk6no28UFTJaWf8FEX
 tVrm97EOMBzI5I/nryf31WVnSD4z9CP7sh0dd0AE33wrRCuhgb27E8p00
 aGxxreox3aJg6sOSW4bnCctolgqmjid67YnYqXWhhw0hoZImcIUPQPa2x
 mrTxmhMyFUdR0lZ4x5JDC/Wdn/7JqViNfq+li8ogWEm2ZpV1pF/Yrcq3M
 gbjKzIK13F64h74A9X5I06esgJ8WXUmruaLPlFEgYx+3lrVZbhc5eagNP
 Q66T4M/K3wxpg6CfvQGv2UG02kOeYH4nwEpUhFzBBThEQx0O2f/8KJ5Zx
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jpEDay+4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Re-enable timestamping
 correctly after reset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/11/2023 4:04 AM, Karol Kolacinski wrote:
> During reset, TX_TSYN interrupt should be processed as it may process
> timestamps in brief moments before and after reset.
> Timestamping should be enabled on VSIs at the end of reset procedure.
> On ice_get_phy_tx_tstamp_ready error, interrupt should not be rearmed,
> because error only happens on resets.
> > Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
