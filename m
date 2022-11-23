Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FBD636AD0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Nov 2022 21:21:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F4F340C44;
	Wed, 23 Nov 2022 20:21:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F4F340C44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669234881;
	bh=IToPTEEbKRoUCv5di6nsDSz1D0CY5nvMj9HugFL7pOs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PhU9usnVhqSbmoaOgLV8xWKq44nckTEdE1DAvKZ5yc0d6vEOLvMkIsTvcaHM5tCk7
	 EUcQXcslSs3IA6mu/58A9iKE5fcb+P63eMLPeXPlnmeUaM9b7pWUJ3YbFMFaEH9HcP
	 No5Xdi/ZnfFv9FQBPnMvDM/eT1JECdg2IAb/K5h/wy9nXX+og14IClh8vKX9FOGsvY
	 TtFaHDN3x2CIbWuaUmGeEvr4Hu9K904tyZiEpBDh2wDEbk8+qQR2EALsa20Sdkdq0k
	 4cYyfCKOaJHldX/nCRxdndl4Q1MRe+VCclENvXgiWPyc2vIpNl8nyVAEIhX6BfpkR6
	 9Q389FwpbbSPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AZ50x-AcaTkp; Wed, 23 Nov 2022 20:21:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8828940147;
	Wed, 23 Nov 2022 20:21:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8828940147
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D9B541BF59F
 for <intel-wired-lan@osuosl.org>; Wed, 23 Nov 2022 20:21:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ACAAD41904
 for <intel-wired-lan@osuosl.org>; Wed, 23 Nov 2022 20:21:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACAAD41904
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wkqQyItP9e77 for <intel-wired-lan@osuosl.org>;
 Wed, 23 Nov 2022 20:21:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35F9B41893
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 35F9B41893
 for <intel-wired-lan@osuosl.org>; Wed, 23 Nov 2022 20:21:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="301714090"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="301714090"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 12:21:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="816605839"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="816605839"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 23 Nov 2022 12:21:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 23 Nov 2022 12:21:12 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 23 Nov 2022 12:21:12 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 23 Nov 2022 12:21:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UujWf8UFu/dNpYQw0VtygnjExbY/4LUlFvzSDonKbhWjMMflcd8RZ+r4Plj8XWVURX+8fF9LdWhO1/vhRGa9Kp8zKJaQLntjKmqiR+FZA26qjH/lXRRrBIChT0SC2zVvIsJ7gA0InQafO/hMwJc5fm9JsCVieNkA18JbtotRcmzVDBNq8+QOoKziphp//3z2H9fdIEahu2Fe7sgByBbY4Rk2F1+WdqPxZtBvG+48Uy7uJZShU6i+At29legeBZnBBrLsqbZDqfcJAE8XlF7ECg2ELSAP8az0TyhUjTiy4/7glcn0jW8bcxnvleDNZhAPuAqnaR7GWOi+E7epuWol+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OOcdUucXvTGppW358texWdAs/auzuEeqk+IecDNewHU=;
 b=leNbmZHsmW8rnpprFCpX7C2405/2NILxTiY6xyYqIe04Xurm9dF9sPOw134Eb6OtA91qP1+NMPRBzsJs/jVhVR6rZtKwMA8Vt5C/IW7JuzFeDJw1SaST+YVOQkqbvZg31JYoZ1ca3cAvpkNcGXOc0DvgbT1LkBohCHW9MiGR9S8AiiI1uws0eMWqR/OyomI5/3qGuulEDAdoFUOK2A0ybAMsaLI5wJY0Hr9rNBpTgD/iEZw7o0KG/AnqT5HttKj/UZyX75cTZdDRXPdCYylWTzu+pWa3jto+df/MmHjxS+TPXcGf9UdaRZZzF388+w88+Uzd/IAkwpii4k7IPkQ+SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16)
 by SJ0PR11MB5814.namprd11.prod.outlook.com (2603:10b6:a03:423::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Wed, 23 Nov
 2022 20:21:09 +0000
Received: from MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::d585:716:9c72:fbab]) by MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::d585:716:9c72:fbab%6]) with mapi id 15.20.5834.015; Wed, 23 Nov 2022
 20:21:09 +0000
Message-ID: <133d405a-2bf5-0690-5145-9061b6d441f7@intel.com>
Date: Wed, 23 Nov 2022 12:21:07 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@osuosl.org>
References: <20221123155544.1660952-1-przemyslaw.kitszel@intel.com>
 <20221123155544.1660952-2-przemyslaw.kitszel@intel.com>
From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
In-Reply-To: <20221123155544.1660952-2-przemyslaw.kitszel@intel.com>
X-ClientProxiedBy: SJ0PR03CA0239.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::34) To MW3PR11MB4764.namprd11.prod.outlook.com
 (2603:10b6:303:5a::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4764:EE_|SJ0PR11MB5814:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b26f579-0649-4f76-575d-08dacd90422e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y4MuXG3GHNvMUPUMkQf7u8Fh9JsdCRrORIUWlTWYEpZwCxEBOCPXwXEM1SWwdwta84W6y/ei+huVgsUwoJX/RVKUTGcKG7zNSGtuCMNvLDQ3/3qrxDXQ5t5rzejmZDUtG2EwDzWmE4k1neYK8CssCAfdliUAjM8+wBBMjC2l7tx6om3LYAkVS1x8QSxVaw8hCJJBO7GjhIAvTdC261uECYf/vl+aw7bgoP/xIPkPQ6jrNHDVZxlZdVvh8yvoFKUvReIcqu7ghGWBApjrD5oJ3mmsvLVJiXg9IZZdaa7Yc7KZW8VkJ6HzYuribo4HFoMVbVkLbOJ1SwpGe85N0e1w0myEo/vfhlJiec7nPvJ5/gHDyWbQFJa37eBz9qjJYuJzlJHYc2WL191mrlMrWwsAhdoj+fs7VOzb1cTFEQJPkZYAhLU65v8nWp9iCkEc+rBkiIU31laRlB90I0nYa/8N5DbG6q6zUQ5CfRNByfHw+fzsBDvmT9jGhN3XWd+VvelmA/LVKIwbPuDN1JpE1lOKcXl8ChN/HmS4zYYW+sgthCSPjarozrUCjzLB2MuYbfvwioYyCbFWLb4rqSuinOypbbjoeLGcYXoQgJkAPbMFjPDqeYhFqXGPe77tPaWVe3Z4ivRNXUtaickjK1OuMAgmze4eGWqff6RCYa6DYTlvpNCuqwgQVI35f1ekWEs+qMG+ZJ6NiTS5w/ml8R6kp22v6V2+x2UHEvWs693MabkxoHU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4764.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(376002)(136003)(396003)(39860400002)(451199015)(4326008)(44832011)(8936002)(4744005)(36756003)(66946007)(41300700001)(82960400001)(31696002)(8676002)(107886003)(6506007)(5660300002)(6512007)(26005)(83380400001)(2616005)(186003)(316002)(6486002)(38100700002)(66556008)(53546011)(478600001)(86362001)(2906002)(66476007)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?alZGWC9TUzdlWFhsLzNuVzFkcUN3cmVZZXBTbzZ4WXl2dytXdHZQc3M1WWxZ?=
 =?utf-8?B?SkRUUHYwdU52eGhZc2tQTmJSdHB1Z3FGVUVZMzY0Ry9kL1p2S1NaMVh4bU94?=
 =?utf-8?B?RWtObnZYeWsxbnB5bnoycU5uRSszT0JOM3cvOVo5TDQ3V0dhajY0N3VPL29i?=
 =?utf-8?B?NXNXa1MxOGN0VTNHQys4R0c2VEdKZjBHdEg5ZXpvMXA5ZjRpY3kwVEhPQitr?=
 =?utf-8?B?ODJFN2JYQWR2allNN0ZERVpoa2FhYUduZEU5djNjZldJQXlQb3JxOTFoVkFY?=
 =?utf-8?B?bTJ4NkRrampZVVB5OHJPR1RlKzRpMjFKRENwdldCWitvWjVyRmJDajN0eHBz?=
 =?utf-8?B?M2pZUDE2Vk1iNjhSMEVhQ0ZObjR1UkQ0TUd1RnZLek5ORGxnRHNjYTFsdXdQ?=
 =?utf-8?B?cXl6dTlNVTBHeFBadFdzMGQ3aDhiOEJYV1RENFgwZkNIbXpkcTNCOVRxQkhV?=
 =?utf-8?B?MWtYYk5KeWViMk9LenR6anZMano3Sk1wUitrckd0cC9wV2JMWGFpRlhDd0Zw?=
 =?utf-8?B?UmczbTdXVkZzY05LZkgrTWZtcmlPQnphUUErZWpNMnpPMmtEY09FZWNGcnRR?=
 =?utf-8?B?Sy9tcUtIcmczM2JIMmlDTG92QUFIWWl3ODVleUhrRXlYM25HVDNIUTNkd3VT?=
 =?utf-8?B?UkhQN0NJemVEZ1lDZGZVT1Erd3M3TWZKR0lCa241MUtrMy96VHVpSEdVUEo2?=
 =?utf-8?B?U1Z1QkZwNmtyQnJCNE5sQVdObGlrTTZFNmRhWTFzbWFFYTR5Q01vWEJoc1lq?=
 =?utf-8?B?S2NISDVQNUlaSjRIVnh0ZXlaZFB2TmlKRzdCdEZZRE1QbUgydUJJTXNvbXg1?=
 =?utf-8?B?eStVR0FtaE04KzNmVU9iV0hKVC9rRHBNVmpiaGs2VG1EQlVza3hpUm1EY3A0?=
 =?utf-8?B?WkhyTzFLL0lVRDBXU3g2WEFqeEFGR1BIVndGSVRRR0dJVTY2dnRHcFZqVm9M?=
 =?utf-8?B?RVFKdTVUT0duQ3NscjlKZVlhVHRTTnNFOEl5bWYvem1rWGNOTlg1WE5RbCts?=
 =?utf-8?B?a0lDSk4rN0JsZjNIeHpqbVJkR3cvMWxVMHN0WkRzZW9DcGlDV2pUcWtjY2Zt?=
 =?utf-8?B?dWVhK0dneGxqdVBXQ1BSdCtPa3d6ZWVhMDZMTjNKTmhubTRDMXhEUkFqcXBM?=
 =?utf-8?B?aVVRb01oSE5LbGdWS0ZDU1hrZ0t0V0RYYmNneUxJb28xdC9WajlGR2ZSS2Qz?=
 =?utf-8?B?TTlQcXhhOFdZSkpDYkxkTHBjbzZSRnJtajY1Y09WUmdqM3lDRUlQMEhiU3Nr?=
 =?utf-8?B?bXk4VEw3YnZETzQ4Tnp6V2kxVXBaSXJYQWlXVDMrZWxWUXNGS3JhU2tZcGky?=
 =?utf-8?B?RVBjOE10QWZNZTMwSjE2QzNvM0FqWjVIMUkyMkhVWGJjZ05kNSsvd283L0p4?=
 =?utf-8?B?dHdRRnFDSCtsN3JibHl6S2JIOEJIcFU0N0k2VHRrUEM0a3ladFhVaXVneDQ5?=
 =?utf-8?B?RmxkNFhIdmVzUmc1em1ramVxUFBjTmU3WjJ5SW5Tb3VtWU9xY1RmamE4NDBI?=
 =?utf-8?B?UFJRcC9iaGF3MURoQis0OUtSTVQ4eG1ndjZQR1dxYkFabXArSnU2cHpaSk01?=
 =?utf-8?B?Q1BXM1BqNWdXYVdGWDRRYkxwWlR3bk9BMXlWKzR4dHN1MEZSL2FseXFKeisx?=
 =?utf-8?B?dVpTVGZhOEpRRlJBYm9XOVpCRzA5dWdnSWpzMjlCUy84UWlNNkg5Z0RQajZP?=
 =?utf-8?B?Z1JNbHVMUnJsbzRFaVBtTGVpdEk5V3BmbWN2NHAwMlYxMldCSWR5cEZINWc4?=
 =?utf-8?B?MnJXak9MRnJsQWRTMC8rNDMxTjJJMCtQaUlBWlZGTTd0K2RTbFdaT1ZUNG5V?=
 =?utf-8?B?c25xWHJocGtmSlBLbmFEOGU3eFdMcjhrNlhMV3B1a0djamN4QVJ3NlMrTzNX?=
 =?utf-8?B?TjAxQTFiS0FjckRUcm9QMUN3RThKc0pRUHNYVTdRREMvZDJiSFdOVGM3U3Jj?=
 =?utf-8?B?L1ZiaGZ4ZFpOaGkvNGJBVUFacXhEYkpEZDZSdGpDVTlidUhSeGYxTUdZdURW?=
 =?utf-8?B?OUV3WjJrTlA1MkFmRjFWd2U3TDR0M1BnTzdrRFBMaGh2VlBiTm4zN21qNW0y?=
 =?utf-8?B?dGk2K05yQk5OeVoyemUrZThzUVBpa3RxVHZoanV6MFN3bEliRzRYaWUrczRD?=
 =?utf-8?B?SnVwdXl1a1pCZ1V1b3FJQWhJNE5wMDEzd2pCOFViN1dKY0FwN3dKUktrcGth?=
 =?utf-8?Q?ADmlM7syYcbma2mXdut2pQM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b26f579-0649-4f76-575d-08dacd90422e
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4764.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2022 20:21:09.7382 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HR2XRmzmJMbrFyGYcICHXipkgZrKX789tifVGs9hkgmsb+27c7XWwZTj69cWZX0wt17FAegfVTAlKDqd90iwZOd3m1bzZ7rtg37YO/DbggQBkTmCu7BelS+CIrTjGgQT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5814
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669234874; x=1700770874;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Fx/gopgXHPpwVIfIDApiwlDHuIH/lx8zoXE8RHilfGY=;
 b=jeEpzJbPdeRz28ThW4LQVdwiUkm6HQEYVbMqg4Yglw19OJRPuZ05i97H
 qPAvaFW0HVAbvSjPXK073pGAe/JbmFEaEz8uoM5BgIqakttmm7dcBeVOA
 tn5cEUAe9oXNnl0dwGVVVozfEZqKfkQTb1zs/x3hQisLl4kMsTOR+fycn
 aUwWc6vObBYL0QGB62r2IbpMrXVLrfBPN6OIneTvpNtAb9pfnrzybO4sc
 WnA0ysgTVdZIAX1XgPXkmxOc+ARHWQ8DTG6cz1g5sIXV9Pm7kvfJtvkaK
 fhaNJ5r/LaQzc3XoWLBloUPQdAR/XeT0uWNvDhG+iLGEBhQvVMLhVPR7s
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jeEpzJbP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] ice: combine cases in
 ice_ksettings_find_adv_link_speed()
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
Cc: netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/23/2022 7:55 AM, Przemek Kitszel wrote:
> Combine if statements setting the same link speed together.
> 
> Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ethtool.c | 20 ++++++++------------
>   1 file changed, 8 insertions(+), 12 deletions(-)

Acked-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
