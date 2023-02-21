Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9999569EB8B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 00:58:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 193C9404E9;
	Tue, 21 Feb 2023 23:58:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 193C9404E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677023894;
	bh=KFLzbbGiWFIosGHwEQQ8MAbUkeeTUtdVgNP1Svz9bzA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T0GKRR8GIf2gjgVrRmZUi7C+t5nofDCr8VAXCT+1HlBVyXz2kIdB1HQQa573ngZ0t
	 wv5t0c0FZ9Gi2lMfsUM+/qsQBSAx+/HNZFuk6FL4BNRsWo54brGNsuTCAT4xoiD95v
	 LZYqh7j4fV9CjYYT1eTfUchDD1uaKjM75EWekNv1cnoKHJwC2P4TO9arH1OiBmCtBu
	 OzO5/010ABtoh4/0pQZawZYIHMHGYZ1rUaoTleN4mLdhZ3AIlsa91W2PXzSs8zQcDv
	 nKWNuTutZRdbAHdViyEjbYOabDEQcw1t1tp8iwhgAGJPmsOKPKgG+GTN8VqGv3ZSdq
	 MqrQ2zOZ5rzBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id euzdWzo9YGOp; Tue, 21 Feb 2023 23:58:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 081C7408E3;
	Tue, 21 Feb 2023 23:58:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 081C7408E3
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B287F1BF350
 for <intel-wired-lan@osuosl.org>; Tue, 21 Feb 2023 23:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 814EE607BC
 for <intel-wired-lan@osuosl.org>; Tue, 21 Feb 2023 23:58:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 814EE607BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id It2Ns6V0Jsc1 for <intel-wired-lan@osuosl.org>;
 Tue, 21 Feb 2023 23:58:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 430D960ACC
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 430D960ACC
 for <intel-wired-lan@osuosl.org>; Tue, 21 Feb 2023 23:58:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="334983184"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="334983184"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 15:58:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="671857328"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="671857328"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 21 Feb 2023 15:58:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 21 Feb 2023 15:58:03 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 21 Feb 2023 15:58:03 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 21 Feb 2023 15:58:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=muJoI39d/mnRb1hJS0UZBvfUfuV6JGRReIZWkhRzBnfEt0wBGD2OjbRFeztcpqI9VUFRvC5YLY3qJ3HiBI1iAhLe3z0TH4LGV8VaF3SBE77xaKAh6zQNvCLjfxGR1nbxAc9Hj1U0bIXvlcPP9OUz4LC18gzjQIGoNrcoJoBh13ILXxjPwar14widUr4rqzP8maDoc2U1xe2SRFtfRAuOgjpuNTHka/ltq1eBbQu+cykw0LiKaqfwSI6QnXFZmd63UOkdc1y9oaA+omeNBLvJaZxAIco5kSJ1MTA9GceibOQb9OQ6q9BXkBGAGC45ladnJdH4gSSjmxx9D9CAdKnjFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LDmPRp0WKdM9uD4uVkHlcSUrMR3vJg3rzh/l3mg3iyA=;
 b=Ukbrzr00a4QZ5TBj8dztggr86SnGxlLneFVHACvrEyj1pC80ZHE+sXvUTU9V9QfOtf/koBdw4QLhVPlXlZcaxwkPsuxHHNuHsQOa6rMGLhSFY72qti4SnRA/rKdJ6iGd9iJ+3rN3DOLncQXTK7oO1eYpggEpxjqEIy5bkjnm+tuEc1PckPMR93XcFDg2+vfLirMy9cff8s7Jr9gOiLFXw8kMhIYaPmA/OaAvhWD2TkdwxR/L3W10G8L01YpbCa2qwocrtFEuoccPL9oP0A3CenOp8Gt7wcF7zT6OlwxwNqHLKMWXSPP1KNmAhMsMPzjhyfnOXnl1QIyoT57x0vJVKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by IA0PR11MB7281.namprd11.prod.outlook.com (2603:10b6:208:43b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.21; Tue, 21 Feb
 2023 23:58:01 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::8905:ba85:9f03:8e2b]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::8905:ba85:9f03:8e2b%5]) with mapi id 15.20.6111.021; Tue, 21 Feb 2023
 23:58:00 +0000
Message-ID: <82d38e5b-52bb-d8c5-1bf8-6129c8813869@intel.com>
Date: Tue, 21 Feb 2023 15:57:58 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, "Zulkifli, Muhammad Husaini"
 <muhammad.husaini.zulkifli@intel.com>
References: <20230208044536.10961-1-muhammad.husaini.zulkifli@intel.com>
 <9b1b9cdd-eb6f-183a-8e3f-9116a03f27a8@intel.com>
 <SJ1PR11MB6180D0D59EB01AD1E8FE4991B8A39@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <SJ1PR11MB618086DCCAE226FC19FDCF54B8A69@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230220142017.1c0b57be@kernel.org>
 <ba4f9ac9-e8f5-3930-ef76-c51bcecfaf36@intel.com>
In-Reply-To: <ba4f9ac9-e8f5-3930-ef76-c51bcecfaf36@intel.com>
X-ClientProxiedBy: BYAPR07CA0007.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::20) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|IA0PR11MB7281:EE_
X-MS-Office365-Filtering-Correlation-Id: 8cb2a802-32e7-4feb-6c9e-08db1467767b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YDc0Bx0C6WfcTVQCErd4KKmJ8oLziG8Ow5E0HRzqqdGlqs7+TQFomZYJGqUWBwoJI0nJf0nPorO5dav7e9bSTCD8zfM1SRK5KuFJPdXXknZNgpwZ+LWA2hJLMr6SqZUBuwFMF03JMVDPQD5t8Hds8t908Q9UhX5emJ0n/C31c89z+uLwc6dwwmftvPvcrPFNYMDyN/dll7SlH61v1yS1Zc0yeMg2Dvq7lhvDxIZMDfwGOIcbMXu1j59wWV6INlQI1PdTt2MHoZt+S1JEsc2W4bRxlSAGV6imnIUOROb+9g2LpCqKzXpW3HXkIJ1l5fp/PmIEJ2GvQyB3dAXnQRXT6N2SJM3BVn4Z/Uzxj0RH/uqbEgYey/cOUpkDALtPxL+xmkYczHUw5MhBRt6ZIiLBCBhsZrweoH45vYhfGgoN0wBzz887HKCz/R8FH2bl4Xx5pVrFRvUUHKEqROlBq7W/lSwnlJsp8HRjV6hcrpJYfnP1X7AYiQYI6kIEeBaoFXF2dv0kAQSsoiD0ltsTdJANQfcSAGSnZHDij7M4/EfsSTNt3QRDfSYdS78cQom/hA2r35pRQmW2plwfS1tnT/RjmUKrTqAA++Cw4EooZt57BhLyLcqKVz+6JSi4cFCTAN/CI3TGjHUw6nNrgC9iyPRA6ZNiFWLLOMEj+Rly4KPPDs4dfWLJ55dgrKrbRiOwWlkpQ9f9W+4WcMSHPGW8ZcAFFkZ0Pby8wXJj7BwW0eR1YLs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(346002)(396003)(39860400002)(376002)(366004)(451199018)(83380400001)(6636002)(316002)(31686004)(86362001)(31696002)(82960400001)(38100700002)(66946007)(107886003)(2906002)(8676002)(66476007)(4326008)(66556008)(53546011)(478600001)(8936002)(966005)(54906003)(110136005)(5660300002)(44832011)(6486002)(45080400002)(41300700001)(36756003)(2616005)(6512007)(186003)(6506007)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODRIMERuakFhVXpPZUdWdytac1BndVpxTS96UERTU3lLMVFBd1JyZ0I0T09i?=
 =?utf-8?B?T09xcGVwdDhUb0RzaWlRYWRxTXNjR29kV3FtT0I5MnhsQS9zd0FBdmp3Q0ZQ?=
 =?utf-8?B?SU53d1gvWEhJemlmZXBVSldReEx1S0RUdUJmQnQ3VFRKd2Y5UGpxMFNkanE3?=
 =?utf-8?B?b2VLR1dyV1pxUHU5L0FXZXRPUWFqU2hQd0RJSXdTcnJ0L3YxMVlsQzc0MmhS?=
 =?utf-8?B?K2Z1K1k5alFudjBpWmhnQy84M3FrRnEvU1ZOOE91SVppeXhUOW8xM05qRDVn?=
 =?utf-8?B?WkREYmlxN2xXRkF2S3Z2Yk5ZYkdCS3VKUnVGY1pCcS91UzhJbGxJUzhIZWZP?=
 =?utf-8?B?TTNWM0tPeXhyRHdqOFp2bkpwRC9Mb3dUSDdQZWVJekl0QytYU05ESmxSRERH?=
 =?utf-8?B?dG0xQWRvK3ZNYnVUcldLUG1BcVNQeXc2MEJrVzErTm9RYU9PL2N3WCtmMllj?=
 =?utf-8?B?RjVxTFVtcWZVa1E1aXJhQ0dUeDkvSWVUZWt1MkFzcnhlWCtWNEFFZkhaRmhU?=
 =?utf-8?B?akxKNHN4TDQ0SUVyd2VoVWFYbkVrdDVuN2lDV0prYmlVWHlIV1lvaHFJeVB6?=
 =?utf-8?B?QUI3V1JKU1V5b2x6bmIwVWxicGFyTVh6VW1PeUhuWHExUXJOY0ZTOXhwRmNX?=
 =?utf-8?B?M3JLdHI0MThsZXNXM1RZM0FPTWtIM3NRVzdWUlR5VGw4WGhqODF1RVNmZzd3?=
 =?utf-8?B?NU0vaWxGNnEvdjY4NUNiS3M2b25iNkViSjFSNWhuOXBCbEJ6bjk3Z0poQ1gw?=
 =?utf-8?B?MWQ1Ykpndkd6SVMyUDdmbkNERElwZUFESEMvWjErbVoyYjh6TG5VNzY5Z3Fs?=
 =?utf-8?B?RC92ZWtxTEdMUkJ3djh4aG4zTnJXNndTaWVzaDNWZG9vSkc0YU1IeVBSTDli?=
 =?utf-8?B?WGZ6aER0MzRKUEIycWJPK2c5amJ1NTBFWnRaYzdmL25zb1NBYjdlSXErYXoy?=
 =?utf-8?B?cnJUVStadTJFTVRiTlZjdzUveUlqU2toYUpYNGtyN1N3T1NpQmJVamFtVlY0?=
 =?utf-8?B?UktpKzdPbVRBdk9xNTEyRStXYzYwc2tKSVB1WEx6am1DQzVXeTdUYmdnTWs5?=
 =?utf-8?B?MGdqTzNIZDNTbDJLUmxIWDhvU3c5b0lDNzUrS3JqTytZMHZramwxVE9RelNs?=
 =?utf-8?B?a204TzVtVUJ0bGxnbU5HMmljcmZzZHk2cnhDS2cxZGJhajdZeWxNUFNrV1VV?=
 =?utf-8?B?RlZyeStTaWtPSGNNbkdWejVaNVQ5MDNPZ1UvSitDY3ZwR1lpbVloZzBvOFdN?=
 =?utf-8?B?UzFrZExFSkZzUFVGN1dieFJiKzUrOTVjY3N6YWd3SmtXMmpPTmdjbktsZC9k?=
 =?utf-8?B?NjlSa2Z0RzdybDIwcWZ1ay8yMGV2aTEweGxtdGRUc3cwRDIvOW1JZUVnNysw?=
 =?utf-8?B?d2ZoS1AzeVp0Z3poMzNLUVpHSlVneGEvbWlZWWxwd2JZUEpZZHBxckg5Si9p?=
 =?utf-8?B?OFFYbkdvblVQbUsrVTNkL1hsbnJ2UGMyWEYwZzB0d1lZMkRhR0lqWS9CdytM?=
 =?utf-8?B?cUpJekNUckFJSDMweDVRZkFxV2Vrc1ZGVUkzWlNoZEprcVVhVDc4VUwyTEZE?=
 =?utf-8?B?Y2FUTlRnLytnQ1pBcmZGOFVzWGhHWTU5Qm96U0I3RlI2bWREdGVoNjJCQzlT?=
 =?utf-8?B?TXpoS3o4bi9JZTF0TUpCNU9XaWJPN2hHYkMyWkN3aXRHaUNJc3VpdkwrS3Uy?=
 =?utf-8?B?ZlFvU2RQYnFiTms4YW53TXFITTFySnU4M0ErekZXTjBscU1XVjFoQkhXZ2g4?=
 =?utf-8?B?TmlrcHNJbjNpR0FZcTZlWWNNUmhYU29UVnVzcWMxR2FCNzB3eWdvNmlTNitn?=
 =?utf-8?B?V2JySjZuRmdXQk9temtycTdvODg2K2tPR1V5eHBIbXVMM0JqN2ExeFJReDNX?=
 =?utf-8?B?TmRXNm5mUzFGRlhJVWZBc2lEVVZVMVJyOXpSMTJ6MFFCTFYrMjFtRTdQNjdD?=
 =?utf-8?B?MWYweVBzbmRscHBqSTNiZkhjQnhtQXNNUGFxWGQ3NWQ1ODQ3L0hOTkU3amVQ?=
 =?utf-8?B?aVRxa3NhalRVRHdJSDdTZEsva2F6d0RaV2tmdXdvTEhqK09rU2UrYnJIV0xG?=
 =?utf-8?B?WFlVbVFUZ3dsV1owME9vTGlJZzZiUHNTRHJPeUN4c3BkWHpPWnVSUHh6MDlh?=
 =?utf-8?B?VEhqN2I0dGlTbzBjeDBXOGhxSWFtOGlsdEdORkdxNGZFV2hVVWlhNmdBanBx?=
 =?utf-8?B?NUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cb2a802-32e7-4feb-6c9e-08db1467767b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2023 23:58:00.8020 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7H+Tw5sAFu1r06nOxN5ZtPEHqFkQbGqTRZkveSUlYek7EgtocQ9z7kInaEaEqZXYpMatEolslOWI7rGp0vNr0OBF/ycyuODH0WygmXyW/Pk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7281
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677023886; x=1708559886;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FyqiBrTqj4i6kFnwZPKdxaEVbwRhb6gJFvqrKICAULY=;
 b=JWt3VPNhvT6MjGA8GXcjyHCsWv3fsNNgHS2QLYhXoObHx5ZjyEENiZsk
 FtK5gnk7xa2KTXXe8pBqxFdBjS6pTYW7+9bamRXsAs5Bxh7maJUZ6pd1t
 6Vp2o9rNZ6MCtyajxWAdN6m1vgAHDLJsd3izHE40wDr7B5HzzQceq64zN
 p7pxlgTYRmX3h+kXLQVmbFQsji+Q6hx0aF+cHCl7PO/hpDnZGeZjHTbkM
 HwHVJz2EA/qXYRNf1kD1xfCQ9dKtvUrl4VQf64CfhjI5V56vIJRaot94u
 4Z9nVvzhKbCkmPDDcp11CGUUIVe2m3GZy5A8+QmLYHrz5g+ID/+LBEnno
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JWt3VPNh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igc: Add transmission
 overrun counter
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/21/2023 3:11 PM, Jesse Brandeburg wrote:
> On 2/20/2023 2:20 PM, Jakub Kicinski wrote:
>> On Sat, 18 Feb 2023 06:19:31 +0000 Zulkifli, Muhammad Husaini wrote:
>>> Hi Jakub and Vinicius,
>>>
>>> I would appreciate any early feedback or thoughts on this patch submission.
>>>
>>> History of the discussion:
>>> https://lore.kernel.org/intel-wired-lan/SJ1PR11MB6180D0D59EB01AD1E8FE4991B8A39@SJ1PR11MB6180.namprd11.prod.outlook.com/T/#r8db595a7b40067d2315def91d41c9695454d6c9f
>>
>> Tony asks very good questions. Driver specific counter always reported
>> as 0 would be odd for Linux. The counter is of no practical importance.
> 
> Maybe too obvious a question, but it looks like your patch, Muhammad,
> forgot to add the code that increments the counter?
> 
> If you add that, then the patch makes sense.

Oops! it was pointed out to me that your patch had some comment in the
middle of the code saying that you'll never increment this value.

But I still don't get it, since your commit message said:

> Add transmission overrun counter as per defined by IEEE 802.1Q Bridges.
> The Intel Discrete I225/6 does not have HW counters that can determine
> whether a packet is still being transmitted after the gate has been closed.
> But I225/I226 have a mechanism to not transmit a packets if the gate
> open time is insufficient for the packet transmission by setting the
> Strict_End bit. Software counters have been created for each queues in
> response to the IEEE specification. Thus, we can assume that overrun
> counter is always "0" when setting this bit.

Generally if a counter isn't reported it's presumed to be zero.

I think you need to do a better job explaining why userspace needs an
"always zero" counter, and can't just be told that the counter is not
there (so is obviously zero)

and if this app requires that every vendor implement a per-queue stat to
track this item, the code to track the stat may as well be added to core
kernel instead of for each driver independently.


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
