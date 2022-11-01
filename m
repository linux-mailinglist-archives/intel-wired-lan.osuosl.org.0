Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1ACA615396
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Nov 2022 21:54:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A53AE400C4;
	Tue,  1 Nov 2022 20:54:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A53AE400C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667336055;
	bh=kc9qAJe5/17y8J7sNhx/ZTLKRPCJLZ2S1iS3e2pcU7g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zgIh8/DV+gNjIyZw4nK3Ler0BEdqP1s1AriBPiy1+jb3NtIpbOnBxqNF4isa0+yPT
	 YTyzU/rGswqLVWc3y+H9RFOkI5Ql0gBhbIguLACOTPLo2dVZ+gdBC55PNk2hhHtDoU
	 3dVjxX8M8mEzoMI/ENSW5b5yYPnLQfjPAuxxLJ8OXWp+ie1kM0PIydNXN4IYWgB2rQ
	 rLNaWzOq5AVBqL3kCBb6QE8RZoE5/yRx2xm6aNyHsPnp1haffDj6dxr6yzKYviOkP1
	 7cTGb3KJWIDeg0tNmfn6Y+bxC4LnMn/FE6uA3bQQO2OzNPcWuN97h1r2a64c6+oXLo
	 tpQPilu8vt/gQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JIIbiRFQ5swX; Tue,  1 Nov 2022 20:54:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 742754035D;
	Tue,  1 Nov 2022 20:54:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 742754035D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DBF771BF834
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 20:54:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C26644035D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 20:54:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C26644035D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9w-OFMzJ0Xij for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Nov 2022 20:54:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED010400C4
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED010400C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 20:54:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="289627290"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="289627290"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 13:54:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="585141030"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="585141030"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 01 Nov 2022 13:54:08 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 13:54:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 1 Nov 2022 13:54:07 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 1 Nov 2022 13:54:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NKGUUidDVo6uRw0qlreY97lvrQ4XFmr/53jIXLrnb+95nhrK/4oSqkCZzbGArc/iEgvKR60i7Rj/8fbieRm0Hdn9t/B6IWo+LGxTlj4xZsH25v5U/3tIAT33J2RBmQb5eVxwa14/oyONKQaLe4vcsfhijQUfBoYHofFNfGhyJHO1GjfX9kFXSGPzIPDVSA0IJFVe0oA/VMK7LwABdZUQ+KY8A8IllOkykK91giZwfRPJsU0Wjj0uhLkfZsCmVwoSoYlNPPwkF9LnKjHBqxGNl0DO8SLaRZfAxuw/Mvigckj0AY14GDc1BKLtKGePFdRvLtswSZkqOIGg6q0mBhtrYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gpmWfr815LaXhe28vakKzxTO5KrvflCGZsQPF7Fz2Oc=;
 b=Y1tgBjII/YcwKHmc0JIA2GbZBWtee/zxdRR5S5d39c9U7pAmGL0ZER7mazLDV7A2Ma33FDBrTzZJqeIdcJbKlZWhuESzx5fn7WpunauWWNHvKxf9cKac9OzPK86LLiyY1FoEIdwMlxulAAfoQ5lGijq4zdFGU5SaogrYdqG1w5G0QAL4zZSWGeodNj5ViWcOZK7xkYnIwWBt4y3Oe1P6ZfVZkT71iO4Kg1nI/wLD3hNnIls/jOxXuwheY92sJ6Fq7uTI9GYvxS4AmsJFD8nUBYFREjgOnP5jMAaGv+xgOUBgbGuPW1NzfyHkkws0T1Zsvl2G+zuRgHHbiFGuIzd+pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CO1PR11MB5185.namprd11.prod.outlook.com (2603:10b6:303:6e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Tue, 1 Nov
 2022 20:54:05 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb%6]) with mapi id 15.20.5769.021; Tue, 1 Nov 2022
 20:54:05 +0000
Message-ID: <ee73169c-0060-e997-8661-c0e76cff12ff@intel.com>
Date: Tue, 1 Nov 2022 13:54:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
To: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221031071430.5998-1-anatolii.gerasymenko@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221031071430.5998-1-anatolii.gerasymenko@intel.com>
X-ClientProxiedBy: BY5PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::39) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CO1PR11MB5185:EE_
X-MS-Office365-Filtering-Correlation-Id: 6de106cf-83e5-46f4-ec3e-08dabc4b36d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VfudJhqLZE6A2zeYWTkVz660cvQgyxTPc4hvpQh9TQJ7rc4m4sjfFVQIp/gt9icvFE2c65g1+qAczH3NCy3x2pScNty/g3xWnIE1uEjsnwyNThmbRbzEKP4Yps2Bjs7tJOdqLuTMjFeh7EYC3aN/2EH2wmcBctNVhmg56bJGc+WGP5F9RZ4ui6Ed6A0hDnI5NZHUYVtmu9dOnYouvPlg1JwpWMX3HB2YetPNOX5UUeHfeYkt69iTwL7Ssek6UJ6fJK6tAsXcR2HK3s5ALRXgKZbGYmhI3DNIbH/uLi1QEBSg6ephy+6ov0h2BwFJh9t9Sr0hTmWRNaRwWKHnmHD3HGyIJiQEsDV4l1MElDLrVEHt7AwocRfKvA3T/z/0DWDY2o3mm2cBRVezXyx4UrZfsZGhH8gnKvxCRv0/OUK5cqi+2uULaz1vDRjRbQuUXgEVUTV4c7ElQ+nClnT7mFbKKMtyyotX61COTyudpE43yPrS6/Vpq/3R6a8fPruRSbAXhxtr08E4DO9pUWyOcKP1DSFtwIAo6oEq5nA1p2RJOkGZTLLxg6mp6BkA2HAasx9EPpV+cwOLYzxscsU72tXKiMOIsIW2513y9YfG6ZFUIy/K+EAfCxEJNmqG4T498SoH/NovumDJSdnkBb4/1XdLL9NfZ/vbUuqRbFgwqTWDfbSbe5KqCiKML8SFh5RZz+t2cAlSPCrCcy3S8gFo3UfywditFG1NXf9H0JxPFt5uNRzbf/Iuq+onCk8Os/QfhYgSLTi8MEtazxNm8Ey0SVKrQMM0fHMn0sdoBVlsoiL9Jcc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(366004)(376002)(346002)(396003)(451199015)(31686004)(83380400001)(86362001)(31696002)(4744005)(2906002)(6486002)(82960400001)(38100700002)(36756003)(186003)(53546011)(6512007)(6506007)(26005)(2616005)(66476007)(66946007)(8676002)(478600001)(316002)(41300700001)(8936002)(5660300002)(66556008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnhIYlNzTjVlbmQwblgvSTlJZE9jNGUzZWxyRUdrajEyYUw3MmRJcWxYWkZK?=
 =?utf-8?B?Q1RpVE5CLzZnbjcvM2xCR3FKdHZ3WFYxMmxkYXlhVlBVSVNIa0NNdXRYdytZ?=
 =?utf-8?B?NDlDNVdZbzF6dnhUdnJIUXhLVkY4QXAvVDhoUHlkb1lOMENKak43REdCVVgx?=
 =?utf-8?B?TjdUbHJQT1dTd00xTERSeG4wek5xZjhDTGtZMDFIdmkvSU1sZ3NJV3BwWGJX?=
 =?utf-8?B?SFJDQU1uN2dtWFdrWW9DeGhnZFN0OEtLMVZTT3hXRXpVdlVBeURtS2ZQdHkw?=
 =?utf-8?B?djNXVnhJQzNOWXVpWW4yS1FwVURKdlViZXBjUWVmZzVmaEJDL2E4Yy8yY2pR?=
 =?utf-8?B?THVDUytTTk1QWVF5WVdxQWIyMFJSVUlESlRkS0lrS3gvUlVraTBwemJDWS9N?=
 =?utf-8?B?dzVjTEFKK0VYWjdDVzRWN0p2bVJ2eEtodmdmV0VxMmlPanMvVXFJbmxGK2to?=
 =?utf-8?B?REw2YUdPUU5EdzFYbnA3RkZFd1loZkp3dXNNVytBdGtHN3F1Y0xKSkxMNUFa?=
 =?utf-8?B?UHFldTBTUjhIWFJ1ZGNGOXhHTmFvK2MwN1FUenhvRnBhZzNhK25RV3pKK2xB?=
 =?utf-8?B?azZkTi9yZ3lnQytMaVdtYXZDM3c1Z01jZ3RMU3Rxckg0T2NuSjk2R0FGSllr?=
 =?utf-8?B?bWtHOHR0eEJwZFN4M29YSmxxTDhLN0NzN0JnVDg2MlBUY29jdDNOZEFaejJR?=
 =?utf-8?B?NVg5VzJYZldUbWpKUklDOFFSKzdvZFNiYUZiWk1mSmxxNk1FRmw2Sko3Mngz?=
 =?utf-8?B?eFVmOUZsTHVrMjhTQkRxUWlhOG5GWEU5MThIai9MK3A4L1JoMmZDODJGelND?=
 =?utf-8?B?S0dFTldVcDhBUjVaN21FUGEwWlBndGhMaEx3VitXQS9MZ1p1M2xVc3kyb1Z4?=
 =?utf-8?B?TktyU2tKTTZrbllFV3E3RW8xM0dVdENlWllVcVNERTdVN1NaUHdZdkZmYW5o?=
 =?utf-8?B?dTQ2ZFFtbklRNjFJS0R6U096ZnNNTnVlZlRIVnFsMWtjc1VmYWxPU2ZUa21w?=
 =?utf-8?B?TFczcGRuRXNkdENEaGl3a0VKcVNzeXVOQldEbWlodXI1MEdQd3VURUdKbVlv?=
 =?utf-8?B?eG9aWC92Ukw1QnZ0TFlLKzAvYUpPdjI4VG1sQ2JXSkFEeFBRdVkraXc5dDZl?=
 =?utf-8?B?M0tlWEpIUDZXUThJY2lGVkpDaytKTEszSTRpVzdZRmFwRitPTXdZRHRpNmJo?=
 =?utf-8?B?SnZ3ZGY4Z2IwbHFaVUhINlEzV0FiamlDeTdTWTFjVERROEJ4dDB3Z29oQWd5?=
 =?utf-8?B?VktxKzQyTnFiU1hVY0xYWHphRDY0dnMwT1dNU0R2RlIrK3hrb0Irck5sRVVm?=
 =?utf-8?B?TVVzY0VYL1FKcGhTck13VklwcEJBTVJ1VXpzZkFYV1VTdStaK1NFQkFlQWs2?=
 =?utf-8?B?eExVODJYWEQ3REZjWmltYWo3TGtqWkRXZUF6aVMwbTVuSWxRbmxnZFBJd3BY?=
 =?utf-8?B?QlBqdzM3WGR6emRqVTl5K0ljbTV0T1dSc1FhUnUweEkwcVRndEJwNTIvZmtL?=
 =?utf-8?B?SG1leHRKZDFNQmM5c0l6UWxPNFVoeU1JNEltQUFMcm9jcjJFRG5ESDU4blcv?=
 =?utf-8?B?MWUzUmJKbFFmRWZVMmpzUjNKYTduMnlQcVpCRisyNnl4K3ZFMlRVUXl5SThm?=
 =?utf-8?B?T0UzSlE1Nk5jemxsNHEvdk01Ny9hVEZVQ3IvdjdERnpYYmdDYXcraFlydlIr?=
 =?utf-8?B?djhhQmc3Q0g0RHUzMjdCYUo4UisxNGVxUUJJSWZWNWxpWnZYQUhSdFpVZmhy?=
 =?utf-8?B?MjI3TDlBTjhpTytDK2tKckg3VXlIVFlZa0VjWGZNY3dDQU55MVZhajViQyth?=
 =?utf-8?B?NmN5dU1TM1NDQ2ZCRTBZMmdkUVBnZ0hjZDFNanROVzFCb3M1OEMvRUFrS0xL?=
 =?utf-8?B?RSt5SmNlTEl3T0VHUGFmcHY1SThBU1o1WHlSdW1sQ2dPZTFGajY0aWE1Z01Q?=
 =?utf-8?B?c3ZaeHp2RytjRG8xK2J6ajN6Z2dUZWNRcnRrQ3BMRm52RFpEY2NBYUZPZTB1?=
 =?utf-8?B?UzJuRC9zcUR4ckpwMHQyYy9HM2pmNDBENVR4OS9XblpscUpER3Nxa3A0WHdQ?=
 =?utf-8?B?YithN0R6dVZuVXZ1c2Jaa1dYVFpySGRiYWI5a0Q3TTRYaURxOHluQVI4aXgv?=
 =?utf-8?B?cXh1N01uVjRwdWdNeFRvc0QvTnlqWEUzMHZsaEhnekN0UlprVGpDTXpiQ3U3?=
 =?utf-8?B?TFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6de106cf-83e5-46f4-ec3e-08dabc4b36d7
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2022 20:54:05.6754 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U2wKptEH8bbyGpq5VA+5GhO6/efY/PpQiN7NDyoX3GsYiLoz2CI1u78Vicg6qT5TojIggmCUzfsHYaYGQd6Djgt4/5NCQd2VlCcMhGF3888=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5185
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667336048; x=1698872048;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4fOqqHF9bLTN2+sS9Juw6h4PdC788iDkDMnBIX8hCOk=;
 b=ZxYvYqWPMD9T2xfQSrVZaTHc5S2o2HohkcYJmslrkyvqv742nkjMXIe2
 NoRo/KWvqmevizqeamkgrujuiqQ+XlHYvrLuK5nL4fE6h/pUKFloBxMyw
 NHEik5b0YP3gtGoprJ1XZgT3jI6hnW4GwdyEmLef+mGOzn9K3dREt2PCd
 7ztb3BQ6zFXMzpXQe+jS+6cUX63qXjYrmV/ul9mFjmKu9BFZ3MszHyVJC
 4zvbt2cWGdlLexoZwi2CW2a0gt1azf7F8Q1yljEyid3qKIDpWWc1Qto65
 cOMfvtJdsKMcu6l5DGXTnL6p8B5/mk2hTvOaoNgr6oI+LzMGFAWy8VyS3
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZxYvYqWP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Create a separate kthread
 to handle ptp extts work
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

On 10/31/2022 12:14 AM, Anatolii Gerasymenko wrote:
> ice_ptp_extts_work() and ice_ptp_periodic_work() are both scheduled on
> the same kthread_worker pf.ptp.kworker. But, ice_ptp_periodic_work()
> sends messages to ADQ and waits for responses. This causes

Is this supposed to be AQ (not ADQ)?

> ice_ptp_extts_work() to be blocked while waiting to be scheduled. This
> causes problems with the reading of the incoming signal timestamps,
> which disrupts a 100 Hz signal.
> 
> Create an additional kthread_worker pf.ptp.kworker_extts to service only
> ice_ptp_extts_work() as soon as possible.
> 
> Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
