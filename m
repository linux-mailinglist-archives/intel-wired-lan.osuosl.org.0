Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC255641B2E
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Dec 2022 07:23:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C77C840321;
	Sun,  4 Dec 2022 06:23:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C77C840321
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670135011;
	bh=PVS3OzWLx4R1di8LICeChQNP49+VdYh4g2ME9JEQnNk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f59kp7f3U+1HHgCmtLnu//3x+aM5O+jcycxk/xLL2Z3S/O+w1VOkNtbRvFCryeeSZ
	 od/ijE0Ey4ovWw86zjJCqag+RqcmkXp4XjU/NrlegYiHA4Gjjw6Rx7yJM5aADKj24/
	 8YTW2my80zZHcjbDvOFVTqvlBFDkXBxbzWecANsrxuDSVJ+hrN2nNsqZCdm7g9Dfa3
	 y6ZNvpkTH6ggOM+LrhXa72mqcIRA0ay0hrKKhL7gcq2+cL6nVGfgxiuCfXHzl2/lse
	 6o9pJTcCTCJcKGyxF2322S5incJY84vPsuc3bSiLP5xUbx5MZ6Du9Z1HNf+hIg2T7C
	 T/bsa91/hAI+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2kCxaPSX1JqP; Sun,  4 Dec 2022 06:23:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7679D40302;
	Sun,  4 Dec 2022 06:23:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7679D40302
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A4A1A1BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Dec 2022 06:23:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7D6B040338
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Dec 2022 06:23:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D6B040338
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4NNzpziiCYd8 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Dec 2022 06:23:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 445854032E
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 445854032E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Dec 2022 06:23:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10550"; a="402447085"
X-IronPort-AV: E=Sophos;i="5.96,216,1665471600"; d="scan'208";a="402447085"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2022 22:23:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10550"; a="639145693"
X-IronPort-AV: E=Sophos;i="5.96,216,1665471600"; d="scan'208";a="639145693"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 03 Dec 2022 22:23:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sat, 3 Dec 2022 22:23:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sat, 3 Dec 2022 22:23:22 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sat, 3 Dec 2022 22:23:22 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sat, 3 Dec 2022 22:23:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U6zsXIXAFcdQ6kLkfu/WsqGLXaKwpUTyLIb/sZgP6KRrQzr0jFfDh72li3dS/+kT5dmyiP/locOOjIlGb47FzBEFPlflEh73zgCl6YTF3KttIzhBBuuL7CzysEJD7qWcypBDGHx8xxEltCZPq4X6yFlok0GePYYNKp0ckSqy5CL2+c8qE9OAOJF08FadUFfZcPaEi70EzG7O6weiC+sYZ4EDnbVUxjrEqJIMqGQhcidxdiYDhO05de7hvyg2Gcz14psM+NNz1Jm5fHdUgBw0ipv4rxr3nWe76RSkNmfdtWsB7Ef3nURHr691ZFD8f2KMPLY2iuitOk+CvNfqduyynA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pukwizHt9sSVwtwG4Oi9rlWqgBP1ciRoMVMCV9B/V2E=;
 b=GbJiv3x2mqd5YVDJTirY4L8UED1bNxKUw6FNIJur1U4hI5TSPivBV00TNXBA6t0XPYxNGQFxw/4jvwisGe60P13IKKpbLSMS8inDQheajKlu0ZYWJ5VapiWi9N/6nve9Lcq/geiw+beumNAI68HdiBSLRdbxcNU0nt/Vfhh0cdV6rQtY4pH4R2cum3PPyvQp8iQ73wI1X95PnZwzxdMS71qwwlQ8+oW8gYpdxFXPgI0olV2kSxg/PmoJ6uivms9BefDkNS+PRpfdyywfE+RayZhwiNKT30buVtzJkqbmmSfsg1QgQBB9HC1DGHOB+HJ7v9z0f7mUTjINjoxuJyAw4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2231.namprd11.prod.outlook.com
 (2603:10b6:910:1f::19) by PH8PR11MB6778.namprd11.prod.outlook.com
 (2603:10b6:510:1c9::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.10; Sun, 4 Dec
 2022 06:23:19 +0000
Received: from CY4PR1101MB2231.namprd11.prod.outlook.com
 ([fe80::9269:1d9:e4ff:a7ee]) by CY4PR1101MB2231.namprd11.prod.outlook.com
 ([fe80::9269:1d9:e4ff:a7ee%6]) with mapi id 15.20.5880.013; Sun, 4 Dec 2022
 06:23:19 +0000
Message-ID: <c3ae687b-a77b-51ee-a0b0-8002dcb1cc27@intel.com>
Date: Sun, 4 Dec 2022 08:23:12 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
To: Gilles BULOZ <gilles.buloz@kontron.com>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Avivi, Amir" <amir.avivi@intel.com>, naamax.meir
 <naamax.meir@linux.intel.com>
References: <c8159652-4214-c608-2a4e-0b77ff598317@kontron.com>
Content-Language: en-US
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <c8159652-4214-c608-2a4e-0b77ff598317@kontron.com>
X-ClientProxiedBy: FR0P281CA0093.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::7) To CY4PR1101MB2231.namprd11.prod.outlook.com
 (2603:10b6:910:1f::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PR1101MB2231:EE_|PH8PR11MB6778:EE_
X-MS-Office365-Filtering-Correlation-Id: 00231a87-46a7-474f-6de9-08dad5c008ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z2YDpzecmKup068Viy+n4G1fc2YThvhpIeJ55yrPpikgNPjuSTmC3WKsncBsxnPuKyBOXxd3KyJSxcV1RElWpjU30iEpifIGQuJpFdrwATv4q2MF0QpGqyFQNkJvFhrUmNl/ZS4kIa5F8WhS+V4CJLU3t4kcBNUaz6aDy1lKwLzG6ed+YxQZcfw8ugQ5ue7RZak9lpqhbRnovSCQDQeDKnO/Gb6jqeZdpnNlkohq2y1/2rWsMIy3o6B6xblwqHIq7xf7GvvSkrpQnzeheKEV0N4viRAMv/4YY0OxoZvxXk88kXq5W6hzQISn4qMIbffc954U3W3m1vA7emtp+kt+uNxS1AEztzPofBSHPmf3/rUKhJC8zBixKQZI7WT3SCQOvtUIyVGaFtSCf6gxXcQmXT4K7hmdgNmdxTMSAkJCiRmCm8kEspEcXnrD6jge51cZcbTX2yS/Pw9W6B4llKGECv9hAjgyVlwP/O5quNY/Y5C9Bf40OHmihX6/KCjam5XfST4YGN4nZY0k24ia671ZSyKMAk/zyEaEcwsciT8QGSYergCL2gFGM+vuoAt8rOMCHRVnciFWZ0PVC1C/dbQMUAZIhVlYjJcGfhHUSF7ZNRdkBUvmf2d6+NZ0MiLqhFXPRFFOF5y3bxTMGZ11OiQsZKp7MRW1mwO05k81yU/aqAm406E0cPLIWbz+oZ1O+/1t/0/q2vgzITfJIAuZodnY0IhhwtUlBGP1E8KtwegINR+g3gA+te6t+muRIbiDgMzv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2231.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(396003)(366004)(39860400002)(376002)(451199015)(41300700001)(31686004)(5660300002)(6666004)(2906002)(110136005)(82960400001)(8936002)(2616005)(36756003)(4744005)(316002)(66556008)(66946007)(66476007)(8676002)(4326008)(6486002)(86362001)(966005)(26005)(478600001)(38100700002)(53546011)(31696002)(6512007)(6506007)(83380400001)(186003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eStHOEFEVThRNVRWUDZhaStMUksvR2lJN2svaHp2a21XYU5NZTI3RUR0VTVn?=
 =?utf-8?B?NVhkZUxiajFRbXNSMTVxMm1VczBGQnpSUEkzNXJwOE5YdjJia2ZUNzdNMzcy?=
 =?utf-8?B?NXNoNW9hL1FjT1BsWXdCNnZVRStlQUlaZjdpZXI3eEZDREI0c3pmdjg5bXRa?=
 =?utf-8?B?YnVlcy9xV1JOVktLQnkvY1RNOGhaVG9nWHp5R2MzMnZUN3hDcnNwUkVwcGYx?=
 =?utf-8?B?dzhvS3hsMUpkZ3AzZjVOazJVRjZnaWpyOFVobmx4ek02dUxROHRrQ2RGQWQv?=
 =?utf-8?B?Ym5uZ2ZMTmRPMEtrczh0Qkc3WFJmNDZsSHhSZDd5ZndIWkprMlVFY2pROHVF?=
 =?utf-8?B?YW9JQzNwRzI1S3ZhaTBiSlNUNTR5U0lVRFR2cGVEWTJ4MEN5aXdSVkdJbGlM?=
 =?utf-8?B?ZWxQSTczeGFkQkNOT2ZrelMrSThJdXYxNlY4ODlhcXl1NlhjRjROSldnRWt1?=
 =?utf-8?B?dHlOVkx2Tkl6WWJHbGx3cnpPek5XbHl6OHhuaWRSNmcyVmhHRS9IZ05zdXlj?=
 =?utf-8?B?TEQ3Y1ZDamdFYVhOUG52MkdnaEdaYm5POHowL3Y1NkR4TG16VVFzeHNteEtS?=
 =?utf-8?B?UU9USkVJcVlJdFo0Zlk5Z3ZEL3BYU09PR1JlMnFOSGtBNkZhZk1SL0RzZXVu?=
 =?utf-8?B?NGkwVHNnNUhRTkRDRzM1L0hEMDU4UG1zWmR0Q1FNZm9BbW9kMlIxT1NpOUJF?=
 =?utf-8?B?TlBEWm5vcFFvcjhqOHduY3p0cThDU1VPdHhkbkZTRzJjbGc4Zy9Pc2tPQSt3?=
 =?utf-8?B?am5OOTM2NmxGeWFJWlpxd0xRZDdhMUFhSUJkN2tqdEdMSVJpT2tzR0pGWmZV?=
 =?utf-8?B?VjFoQS9DNXdzTHJyMURKc2NKaTVXemxFRlQ5WFFJOW5TOWt1a3dycTBLbURE?=
 =?utf-8?B?dUJWUjV1REpYeWJNZ2VIak9GK2pBVnF5aGY4L0JncE1mSGhXRFNkL3VXeHQy?=
 =?utf-8?B?em1OSHZldytwQUdzZElCQm81YTRES3pFaDBSdG5oZERXa1l2U1YyUmkrR1Ez?=
 =?utf-8?B?VG9SeGticURsR3dtM3Vobk4yWGpFNEVIYng1c284cElvL3A1akVaK1FFdGlJ?=
 =?utf-8?B?Rzh2aUJudlRMeHgydUxLeGJWYVlCQkxTUFNjamlnS1A3QVJ1cGdJWGJaTTNl?=
 =?utf-8?B?MGIvKzdqR25qcndTT3ZyVlJ2TkpzNk5yOVFSVlpTQ2czbElvNHJyKzFJTmcv?=
 =?utf-8?B?Y2FEbmtJZGk1WmNheDllaDJSMCt4MkNzbDlLM21KaHFCcjJKaFI4RDJkTjU4?=
 =?utf-8?B?akRvYUxEb2lRZUh0MjFGeEhxWWl1SnhXdHplQVdLSzRzWDVSTHQxM3dSQWNH?=
 =?utf-8?B?R3NwQ1V1c0diTkFHR3I1cW1jd0RpSjlUS3V4aG9hRk81SzFqa0JDY0JsZHRY?=
 =?utf-8?B?dUJjMU03UDJoTW9NMmEyTEtEeW1qckFRWU9tSlduV0F0WU1XUTJSSkd3YUV3?=
 =?utf-8?B?Q1YxYUhNd3duT2ZIeDFWM0o0SHNEK0xhNUU4REZDZDVYcitUWklPNzFqQ2Mr?=
 =?utf-8?B?TjVyZGgyQU55bk5oVmxKdEc4cHpEdnRBeHl2UTFFd25hTUsvTGtteGxmRis1?=
 =?utf-8?B?d0w5VmwxZUgvbUxXYktKQkFQcHJGeUh5TFN0aVRvTWNOWlZVVzdvc20ySlRt?=
 =?utf-8?B?azhuYk9Yei9zNTErcnUzem1NOGVBS3cxc3QyZ28rUXRSa0R3Y05qQlh3c2xD?=
 =?utf-8?B?b05OR1ExRERHdDk3WUlDRStkTzBsK2VuNDNFRnRpS2liS0szc2NWb214WVhI?=
 =?utf-8?B?dmJORTFvZWNWSzFaT1dBNlM4NWpkMDhLUlFXWWJZUUJOTkphMUhyQ1hjWWk4?=
 =?utf-8?B?L3dKWkR4N1B2bnI2UGJQUWRGNHA3dVVWRnRwQjFYckpZb29KTlNZQWJtQzJx?=
 =?utf-8?B?TUw1MmV1WG55VW5JK1p3YVUwQmdPd3I5RVNTMG9iVTBtcXFrdkxXRy9QUnR0?=
 =?utf-8?B?NnVSbWQzVEo1VVN2MTVJT2h3Z3BCeXczZzdRSGZtT3dEcE80Qi9wMVluNEpI?=
 =?utf-8?B?aFc2ZDBaUEdrTjdveTl0QVN0bTV4Ylp2RE9OaUxmdkI5cnNva2VpbFpEMnBC?=
 =?utf-8?B?UU9DRUJyVWlBdVIrWkFkU2xOTEVycmlMZW82dkpQb3Bpb0FwdTBWaVdRVFdH?=
 =?utf-8?Q?CmG4wi9gDSGT3oKvN1SmYv76J?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 00231a87-46a7-474f-6de9-08dad5c008ee
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2231.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2022 06:23:18.9908 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pp5eGwul5d6nDC+MHmM23aWIOMccIx/7ET5+n0qh7IOvqAzqRZYXZUDHlF6D3aVwrjv5vVkbbBTGD1zCpTwQaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6778
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670135004; x=1701671004;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+z8x0Pr5XGCOrtieYP/lhTcjjyBf/7sPDDOMwCUPMBU=;
 b=J6BZSHJIIhIKiYjyWWWZh3qn3fx689lq3Dhwj4Jfbx3PjARk2XgOLNpb
 vVQnzK37cxhLqoEd7Y0UK4BFKR6+5wi3auvAw0I/NRs+4vH9uYgBHvVxf
 iXGsnturomhoMmAjCa/1rwe/DR62qvUxfwTYMcccarvEmIqSYrPYdDNQq
 qb/1pnsqkGYa7ePqJ8wHvCZfBjzzcoI5Dn1rZGRZotztlfZjSMywvGbre
 agljK4w2M7sL2a9jv/sBJtTFsDkCM3WxDSbWczqg3nAbQRql+VkhKPw8d
 NB2qLwXMG7w9J52Hgzj6GbgS+Z9MAqDrqj80NHjbqBQ0IvbtrdQZWx51l
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J6BZSHJI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] XL710 / i225 / E810 : get temperature from
 Linux
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/2/2022 16:25, Gilles BULOZ wrote:
> Dear maintainers,
> 
> Is it possible to read the temperature of the XL710 / i225 / E810 chips 
> from Linux ?
i225 parts do not have embedded thermal sensors.
> Is there so demo code somewhere ?
> Our "Intel Premier support" did not help on this.
> Thanks a lot for your help.
> 
> Gilles Buloz
> Kontron Modular Computers
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
