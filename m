Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7794463E69C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 01:40:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8873F81FA2;
	Thu,  1 Dec 2022 00:40:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8873F81FA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669855210;
	bh=eRxsRyIRcVpe0cseJeo2hKlFMKQ/1UUzBPCHHnH+UGc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zagILiCiZr0o31JH7+9y4dGO6xeYybOpVZD4feZndqcPyZ1TuViArHDf/DWyW3lNc
	 9JZEqs3y/dYSoEezBUAX6YpesllnwXO2t/XzB+W0k8Dz9MfzC4wZBnOmnc/58s5B0v
	 rf7k0nqTaVTyavGh3q0GJGDmoR6DErmvJKGqwUwQipdTZa7S+fzO3lJn7RCoq3Q7+j
	 CDoR98Q6s6rlYduTU1Cg8A7oiHnjYh0o8Ac3iHjfkfK4Llk1ZYtWz3vEn6huyQf+FV
	 3veHntNYxAOqSR/uTIM1YyINuK31i3CQpJMRjXF/jbpe3vPNn5fmTvpONVcOU0OHyk
	 EDj2z7+oFgECw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pzy0ijJdcBXQ; Thu,  1 Dec 2022 00:40:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC03D81F76;
	Thu,  1 Dec 2022 00:40:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC03D81F76
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 51BDD1BF968
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 00:40:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 29544410E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 00:40:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29544410E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gZhFyEPwBDlW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 00:40:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 24E80408FB
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 24E80408FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 00:40:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="295243235"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="295243235"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 16:39:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="622089300"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="622089300"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 30 Nov 2022 16:39:47 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 16:39:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 16:39:46 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 16:39:46 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 16:39:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y7xSzMforBD24PIioUWvB6gD1SBFmJa4sOkFlVtDBrBMmHRylNcgA60XGT4rTEnvt9bB+55FrCuLcLkOAUsDW8BPxAmVtZQsCQrwskFmYpzu0djSofc5p0QYlKsfFT/QMzEnhTCiMsLr/Wj0zWh6NrHYgXgHajnEbBwutjoxxzEkv7+WZA4nytjSF2HtPfOF5kymMRFjR8DC6DQ69Nwnwf3aj1hg8gTiTF72Q8MQTcNROToF7KylpQ13YgH4Euvut7Cho1TFovxiL0DxTyp9Mb7EWE9+r5ZcwvUsUhCCMXKkmzK6ho2+8sGA8aTvoCEV+lWi4A3ubIXfKA18giU5IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ru6SjWGv+cSM87u7kHatfa0rmaNC3ojnl81l0BP1/eM=;
 b=ZdYSjQheLgSm07znw1syK09gltHa8LQSfnAZP+qJ2tpXqcNsQOtLEdAePfDc13erSnR+oP37XP1TEy/vwKHa4W4tgXufilOWLIB2EpUKJ+XuD8CYev44cBDWzDcndXspDnObcPcTMw+nQ8iIAF17dENs2torxlyCQhnVh6zIzPCfuo/8tFHrf2RW7UKOgztzebmXahWsEvnwR+aENuChFgfCeC468vz5QVQsmjVUFJIerNxPJZU5VOX1PEo25PyzZyQu0BBpSOXyXKT0eSGyFe1W4fSCteBeNzWW7zFYhPli01/qQxt4oP7AU9SDAXuT3RRNBfvb09l/TK3DC+em8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM8PR11MB5623.namprd11.prod.outlook.com (2603:10b6:8:25::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 00:39:43 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 00:39:43 +0000
Message-ID: <e3fac33b-e9c6-4dfc-95b0-71fb03db0d51@intel.com>
Date: Wed, 30 Nov 2022 16:39:41 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
 <20221128214749.110-3-paul.m.stillwell.jr@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221128214749.110-3-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: BY5PR03CA0010.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::20) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DM8PR11MB5623:EE_
X-MS-Office365-Filtering-Correlation-Id: bb5456a2-e6db-4c18-c88a-08dad3348a09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3VbtRsk0Ts5bveTF8ZNw0lY7fAZktLtVJUXTgPUNdRbc5wULagwQh4eqwlR1dNf27tSJYiC2fLMVVotTTBD+8j42osO9Vbhu98kWeuh+5gffJMVVE0zriAgKVsnn3Ntn0T8Z/EtqsiOQ/5UFgT0wfgkuxeVRWiHQBY6xNJjcs2Ur1j51+ExULzH4QNajx8Vy4bXy9BU2kvCo0Cvk99LwC/mhKQ7yxhBV2rJMQLJmOE1R9ow5tbOJDLVjE06aqiEY6DI73IwQ1QWVnmkW002RbKnDojkGR8p464kQc6thB50hA3GtxjRCb0T/h13HHxQL7ynWOBTVZkiCJ2AUy1q3MzC1isLmSE1roIx8E1GfbzBJEWD/fjRjaMTwxHUUdpIs2oxw4+KQDej72FOu2R5bZ21LeNasY4hK8CIHkc6/9U24bfF5K/BqlMi2feT7Wj/aj55fmaYDjZCkvW+dr1ysde8M+z+K3JQoWJWxMMUgRtprPO4rICf3PtOIQoeRldRn+diq2AO1y7fG4D/hYI6hECHqW1SU5KqxOC6o/nkeCp2TuDltFhrpi2aWA6OoMzGjsrDiyIeLTCoqL/pvgZdA542jyZ2pshrdBtNKT2Ljn/5H8SCQ3xAw9ZO3Ox4nIrolLumB4xsgerUjR0Jl6ABOias4Ckkiy1aIGhaFezke3DdU5ZJEOoykckYSNoe+MrkITuGWoCVeLSh2O9aAn4YBwCshT3ssyn2vBKLXup14Ha4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(39860400002)(396003)(376002)(346002)(451199015)(6486002)(31696002)(86362001)(6506007)(53546011)(478600001)(31686004)(83380400001)(2616005)(6512007)(8936002)(41300700001)(316002)(36756003)(30864003)(5660300002)(66556008)(38100700002)(2906002)(26005)(82960400001)(66946007)(8676002)(186003)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHNkd1A4eThNSjRodHRJN2FucU0xZm1qYmtaY2ZpclFxU3hsdmpNNnJVNUd3?=
 =?utf-8?B?ZW1SaDFOMlFCWWlKbTZ0R01yRG1abHZ2NEhRcjY1M0VKSFo4UnJhSnRhQmFG?=
 =?utf-8?B?anpSUkhvR1J6UDJ2QldQOFdmWUtlUm5MWWtSREZhNForZjZLd3NwSTVxbmhX?=
 =?utf-8?B?ckwvN3R5Tk03WVd6R2t3VXl0RXFFcXpPOTlkUWYrSmlCYno5N1Mvc1ZpaDFT?=
 =?utf-8?B?ZVRtSjM2ci9KS3JXWHVuZHIvSEgvSVNQYlJIV3ZaeGFpdDhlL1JUOGVpSWRy?=
 =?utf-8?B?eHJpeTZURFluU2I0UFh5OVdtdGF3U0lkckFHK2FkOVZyUXAycEdtRXFOQTdW?=
 =?utf-8?B?MjJxdVZCNlZXYk5nZmt6V1ROeVM1Y3QyVi8rbGJmc2VWeDFVUzJwRGV6b0hE?=
 =?utf-8?B?TXZFcUF3TVZvdHRkaDhySHk4anZCYnBHWExkc3ovSkdDMmd2cXVKYUdxeWtZ?=
 =?utf-8?B?dkU2QVFCNVV2ZGVnbFBITUowVUEzYkc0czRCWjdQdktieXRVakxBVUVoSy9Y?=
 =?utf-8?B?SzVEM2pJUEJURU1Xdjloai85RUY1OFcyNnZWZCtLM1ZRZ0hGSzNZcEx3eWlD?=
 =?utf-8?B?bVRqbElwdzBzck1wRVJUaGdjUUhKb2wrNml4SmdiVkhqVjcrcE0yTFVxd2Ix?=
 =?utf-8?B?c3ZBcHpJUUJaRDhTbDQ5VXJWZEFobWFDWHhaaTR6VXVHRmt6OVFUSnJpejdZ?=
 =?utf-8?B?K0NkMEJPNFNYWkNzV2RQazEvU2tNNVVCU0E3MkJWMVk0WkYzRkdDMzFzWWp1?=
 =?utf-8?B?TG8zdkc5b2lrTGQ3bStCdHQrWThiMnJDbGZNYy95czlVcTJPT2ZMNU5OT2dH?=
 =?utf-8?B?eHVPNjR3Zldxa2tVMWNqQi9rYzlySzBIZUNWVEFKdGpCUXJoc3g2M0UzMUlX?=
 =?utf-8?B?dTQrZEJlRVZDTWdybHdIeklEaGswaWhIQTFLNVorcHR1NXQ4cHlMdmhud2ZS?=
 =?utf-8?B?UlYyM0V4dXRlOTVXaVFXdGlNNGdjS1l0NHROTjFHbTducXZKRUxFbzllMW81?=
 =?utf-8?B?QkJqYjE1UlpsVlJ6b1hteFRybEQ2ZlFubVBSbG9JQS8vekdnQ0kvQWxMNi9r?=
 =?utf-8?B?akduN3FsSXpsNnNBLzM3UTlVZUdoT0xubHVLYWhnYXpFL0dHWmRjeVFzL2k2?=
 =?utf-8?B?Y3JYYXJzMmtVaFJoNXdRTXh2VE1OZGUvclpjUzVYOGNMcVdtOG84SVd2bDFw?=
 =?utf-8?B?Q3ZlRmFvSG1kcUtkNzRzQWdkd2NjcVBKbCt1ZDhDRWNDdHBkZ2VzWjFFcTEz?=
 =?utf-8?B?Q0E5UHA2WlF1SnhQcFdubkJXVElhQ2NxWGRybWRWdDRaQjlwTnVQUjN0RlRV?=
 =?utf-8?B?b1B6UWFhK1lSeW9RaElPWXRIMzVWOUcrUGVDREVkbFFoOFpUWGxEdER3eW5w?=
 =?utf-8?B?a1lCemZhV1Vremhya1BMdXQ1MDBvRVNrVExyMWdwWUNvMHg0bExpeEd3MTRl?=
 =?utf-8?B?dDZWdjZNWG5iazQrTVgrQVdEYWIrU1c5dHZ1WDZBUVVoOE5VWnJUYU1iWGtL?=
 =?utf-8?B?VTVubDMxb1dIVmZYc0UxVElBckJWNFovN21mdnZGNTk0OEZuQnNDM2NwYVc1?=
 =?utf-8?B?NTJ2NEFEN2F4UkhXRkJkNzNOaFhUMnZjbHd6bXNseXozcmltdkdIUjNmd0dK?=
 =?utf-8?B?MXcvaUJaY09zN0xBVXY5dUdkWTE4MEZiMU5DQWI3Nk9Zd0RzMW1PVUFLcFBi?=
 =?utf-8?B?MG9rUUlRckY0SXphMVRGY1FwWVhlVkRsTDVabGY3MHh0YThUUlZwMDdiWDB2?=
 =?utf-8?B?d2R1NDNxL2pVSUlOL2pMN1ViVjdDOUZvMFpxT0s0aTdPbkZKVkdyTUtkVFNs?=
 =?utf-8?B?dFNqdWR6STdXdUp3a1ArQWpOcFBZR3JlQUpJS0dtbkt5Vy9QdTZyOGl1TTVk?=
 =?utf-8?B?SVYwd2NHYTVra2psUllERElZWWxic3Q5ZW1LMjd3eXFZcXpRM040V2NlbHRZ?=
 =?utf-8?B?UjJjTVk5dHNyWW1zOER5bjVaY01IOW03blh0dTFVZ0h4WkVlYjlvMlVPN293?=
 =?utf-8?B?REZNR3kwemQzYzF1V1AwWWRUdC95NmkwelJTN2pRNDJTbi9malhFQ1d4dTg0?=
 =?utf-8?B?MHdrdTk0N1hJNHR6Nll0N3V6OGVPRDZzU1ZGVTlxWUhBRzhCK0VPbWZIY1NL?=
 =?utf-8?B?dWp5aHVSa1ZsS3Y1NXhXKzl1QlpVNW9rYi9kSDZBdTlXVFlHNzhVbHc0dWY2?=
 =?utf-8?B?T2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb5456a2-e6db-4c18-c88a-08dad3348a09
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 00:39:43.5565 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JZchF9YOD9AN/mxA1mcKIcppYBHj/OaCwtJLGEwOFgZn+qE4U669KuRef15kXmcUXcZIvhjFE4WuJIiKIiX0q45+tFvbnF6ATm6vMVV2RGw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5623
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669855202; x=1701391202;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=djBn3+YL1rFjTkf8grthR9VxphrJ2XU+UBsPJG2ybj4=;
 b=cYo4shqorcvRMSidgaX6pCipBf2tvHX6K8/tLQd7Rhc95t/1EeHS9KhE
 nZanuEKkT77HNgTFTJmk+oDZSst97TG6ljyOYxD9PNOE2Ksq5J+2l0icf
 D4mgi2lqrkD0DKLzlhHdJXXZ6g71dHPD5tNlfiASddbqsMWhUqel2OiQd
 pYJbv0H57soiPQfB/mu+qfuKM7up3dmAIP8gRZEaGgNyL56fiul5TQ8YY
 hv2XuvxVbmr+e+J1AgvzQ/8dV8lBsmWq8dzPWEoHowPReW6yUvChRt5f5
 waLQQHB76TYxSsOZWrA/p+W9qiEiVFKMbu9gV2nOQt8pfJQH0gjvUEc2n
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cYo4shqo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] ice: enable devlink to
 check FW logging status
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

On 11/28/2022 1:47 PM, Paul M Stillwell Jr wrote:
> Customers want the ability to debug FW issues by retrieving the
> FW logs from the E8xx devices. Enable devlink to query the driver
> to see if the NVM image allows FW logging and to see if FW
> logging is currently running. The set command is not supported
> at this time.
> 
> This is the beginning of the v2 for FW logging.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
>      pick bfdfb2dc6192 ice: add ability to query/set FW log level and resolution
> ---
>   drivers/net/ethernet/intel/ice/Makefile       |   3 +-
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  82 ++++++++++++
>   drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
>   drivers/net/ethernet/intel/ice/ice_devlink.c  |  73 ++++++++++-
>   drivers/net/ethernet/intel/ice/ice_fwlog.c    | 117 ++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_fwlog.h    |  51 ++++++++
>   drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
>   7 files changed, 330 insertions(+), 2 deletions(-)
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h
> 
> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
> index 060d8f2b4953..750fed7e07d7 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -32,7 +32,8 @@ ice-y := ice_main.o	\
>   	 ice_lag.o	\
>   	 ice_ethtool.o  \
>   	 ice_repr.o	\
> -	 ice_tc_lib.o
> +	 ice_tc_lib.o	\
> +	 ice_fwlog.o
>   ice-$(CONFIG_PCI_IOV) +=	\
>   	ice_sriov.o		\
>   	ice_virtchnl.o		\
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 5cac5a73c66b..d0026161a2b4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -2065,6 +2065,86 @@ struct ice_aqc_event_lan_overflow {
>   	u8 reserved[8];
>   };
>   
> +enum ice_aqc_fw_logging_mod {
> +	ICE_AQC_FW_LOG_ID_GENERAL = 0,
> +	ICE_AQC_FW_LOG_ID_CTRL,
> +	ICE_AQC_FW_LOG_ID_LINK,
> +	ICE_AQC_FW_LOG_ID_LINK_TOPO,
> +	ICE_AQC_FW_LOG_ID_DNL,
> +	ICE_AQC_FW_LOG_ID_I2C,
> +	ICE_AQC_FW_LOG_ID_SDP,
> +	ICE_AQC_FW_LOG_ID_MDIO,
> +	ICE_AQC_FW_LOG_ID_ADMINQ,
> +	ICE_AQC_FW_LOG_ID_HDMA,
> +	ICE_AQC_FW_LOG_ID_LLDP,
> +	ICE_AQC_FW_LOG_ID_DCBX,
> +	ICE_AQC_FW_LOG_ID_DCB,
> +	ICE_AQC_FW_LOG_ID_XLR,
> +	ICE_AQC_FW_LOG_ID_NVM,
> +	ICE_AQC_FW_LOG_ID_AUTH,
> +	ICE_AQC_FW_LOG_ID_VPD,
> +	ICE_AQC_FW_LOG_ID_IOSF,
> +	ICE_AQC_FW_LOG_ID_PARSER,
> +	ICE_AQC_FW_LOG_ID_SW,
> +	ICE_AQC_FW_LOG_ID_SCHEDULER,
> +	ICE_AQC_FW_LOG_ID_TXQ,
> +	ICE_AQC_FW_LOG_ID_RSVD,
> +	ICE_AQC_FW_LOG_ID_POST,
> +	ICE_AQC_FW_LOG_ID_WATCHDOG,
> +	ICE_AQC_FW_LOG_ID_TASK_DISPATCH,
> +	ICE_AQC_FW_LOG_ID_MNG,
> +	ICE_AQC_FW_LOG_ID_SYNCE,
> +	ICE_AQC_FW_LOG_ID_HEALTH,
> +	ICE_AQC_FW_LOG_ID_TSDRV,
> +	ICE_AQC_FW_LOG_ID_PFREG,
> +	ICE_AQC_FW_LOG_ID_MDLVER,
> +	ICE_AQC_FW_LOG_ID_MAX,
> +};
> +
> +/* Set FW Logging configuration (indirect 0xFF30)
> + * Register for FW Logging (indirect 0xFF31)
> + * Query FW Logging (indirect 0xFF32)
> + * FW Log Event (indirect 0xFF33)
> + * Get FW Log (indirect 0xFF34)
> + * Clear FW Log (indirect 0xFF35)

I don't think I saw the 0xFF35 op added anywhere. Also, the 0xFF34 looks 
unused (more on that later in the series)

> + */
> +struct ice_aqc_fw_log {
> +	u8 cmd_flags;
> +#define ICE_AQC_FW_LOG_CONF_UART_EN	BIT(0)
> +#define ICE_AQC_FW_LOG_CONF_AQ_EN	BIT(1)
> +#define ICE_AQC_FW_LOG_QUERY_REGISTERED	BIT(2)
> +#define ICE_AQC_FW_LOG_CONF_SET_VALID	BIT(3)
> +#define ICE_AQC_FW_LOG_AQ_REGISTER	BIT(0)
> +#define ICE_AQC_FW_LOG_AQ_QUERY		BIT(2)
> +#define ICE_AQC_FW_LOG_PERSISTENT	BIT(0)

Please add a newline to separate the defines and the member they are 
associated with.

Also, I don't believe I'm seeing there persistent define being used...

> +	u8 rsp_flag;
> +#define ICE_AQC_FW_LOG_MORE_DATA	BIT(1)

or this one.

> +	__le16 fw_rt_msb;
> +	union {
> +		struct {
> +			__le32 fw_rt_lsb;
> +		} sync;

I don't think I saw sync used either.

> +		struct {
> +			__le16 log_resolution;
> +#define ICE_AQC_FW_LOG_MIN_RESOLUTION		(1)
> +#define ICE_AQC_FW_LOG_MAX_RESOLUTION		(128)
> +			__le16 mdl_cnt;
> +		} cfg;
> +	} ops;
> +	__le32 addr_high;
> +	__le32 addr_low;
> +};
> +
> +/* Response Buffer for:
> + *    Set Firmware Logging Configuration (0xFF30)
> + *    Query FW Logging (0xFF32)
> + */
> +struct ice_aqc_fw_log_cfg_resp {
> +	__le16 module_identifier;
> +	u8 log_level;
> +	u8 rsvd0;
> +};
> +
>   /**
>    * struct ice_aq_desc - Admin Queue (AQ) descriptor
>    * @flags: ICE_AQ_FLAG_* flags
> @@ -2141,6 +2221,7 @@ struct ice_aq_desc {
>   		struct ice_aqc_add_update_free_vsi_resp add_update_free_vsi_res;
>   		struct ice_aqc_download_pkg download_pkg;
>   		struct ice_aqc_driver_shared_params drv_shared_params;
> +		struct ice_aqc_fw_log fw_log;
>   		struct ice_aqc_set_mac_lb set_mac_lb;
>   		struct ice_aqc_alloc_free_res_cmd sw_res_ctrl;
>   		struct ice_aqc_set_mac_cfg set_mac_cfg;
> @@ -2325,6 +2406,7 @@ enum ice_adminq_opc {
>   
>   	/* Standalone Commands/Events */
>   	ice_aqc_opc_event_lan_overflow			= 0x1001,
> +	ice_aqc_opc_fw_logs_query			= 0xFF32,
>   };
>   
>   #endif /* _ICE_ADMINQ_CMD_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index b781655ee805..ecdc1ebb45d5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -879,6 +879,8 @@ int ice_init_hw(struct ice_hw *hw)
>   	if (status)
>   		goto err_unroll_cqinit;
>   
> +	ice_fwlog_set_support_ena(hw);
> +
>   	status = ice_clear_pf_cfg(hw);
>   	if (status)
>   		goto err_unroll_cqinit;
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 5c030e89ac18..8843ff492f7f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -1484,6 +1484,56 @@ ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
>   	return 0;
>   }
>   
> +enum ice_devlink_param_id {
> +	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
> +};
> +
> +static int
> +ice_devlink_fwlog_supported_get(struct devlink *devlink, u32 id,
> +				struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +
> +	/* only support fw log commands on PF 0 */
> +	if (pf->hw.bus.func)
> +		return -EOPNOTSUPP;
> +
> +	ctx->val.vbool = ice_fwlog_supported(&pf->hw);
> +	return 0;
> +}
> +
> +static int
> +ice_devlink_fwlog_supported_set(struct devlink *devlink, u32 id,
> +				struct devlink_param_gset_ctx *ctx)
> +{
> +	/* set operation is unsupported */
> +	return -EOPNOTSUPP;
> +}
> +
> +static int
> +ice_devlink_fwlog_enabled_get(struct devlink *devlink, u32 id,
> +			      struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +
> +	/* only support fw log commands on PF 0 */
> +	if (pf->hw.bus.func)
> +		return -EOPNOTSUPP;
> +
> +	ctx->val.vbool = pf->hw.fwlog_ena;
> +	return 0;
> +}
> +
> +static int
> +ice_devlink_fwlog_enabled_set(struct devlink *devlink, u32 id,
> +			      struct devlink_param_gset_ctx *ctx)
> +{
> +	/* set operation is unsupported at this time */
> +	return -EOPNOTSUPP;
> +}
> +
>   static const struct devlink_param ice_devlink_params[] = {
>   	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>   			      ice_devlink_enable_roce_get,
> @@ -1500,7 +1550,18 @@ static const struct devlink_param ice_devlink_params[] = {
>   			     ice_devlink_txbalance_get,
>   			     ice_devlink_txbalance_set,
>   			     ice_devlink_txbalance_validate),
> -
> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
> +			     "fwlog_supported", DEVLINK_PARAM_TYPE_BOOL,
> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> +			     ice_devlink_fwlog_supported_get,
> +			     ice_devlink_fwlog_supported_set,
> +			     NULL),
> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
> +			     "fwlog_enabled", DEVLINK_PARAM_TYPE_BOOL,
> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> +			     ice_devlink_fwlog_enabled_get,
> +			     ice_devlink_fwlog_enabled_set,
> +			     NULL),
>   };
>   
>   static void ice_devlink_free(void *devlink_ptr)
> @@ -1596,6 +1657,16 @@ int ice_devlink_register_params(struct ice_pf *pf)
>   					   DEVLINK_PARAM_GENERIC_ID_ENABLE_ROCE,
>   					   value);
>   
> +	value.vbool = false;
> +	devlink_param_driverinit_value_set(devlink,
> +					   ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
> +					   value);
> +
> +	value.vbool = false;
> +	devlink_param_driverinit_value_set(devlink,
> +					   ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
> +					   value);
> +
>   	return 0;
>   }
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> new file mode 100644
> index 000000000000..67e670c62091
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> @@ -0,0 +1,117 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (c) 2018, Intel Corporation. */
> +
> +#include "ice_common.h"
> +#include "ice_fwlog.h"
> +
> +/**
> + * ice_fwlog_supported - Cached for whether FW supports FW logging or not
> + * @hw: pointer to the HW structure
> + *
> + * This will always return false if called before ice_init_hw(), so it must be
> + * called after ice_init_hw().
> + */
> +bool ice_fwlog_supported(struct ice_hw *hw)
> +{
> +	return hw->fwlog_support_ena;
> +}
> +
> +/**
> + * ice_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
> + * @hw: pointer to the HW structure
> + * @cfg: firmware logging configuration to populate
> + */
> +static int
> +ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	struct ice_aqc_fw_log_cfg_resp *fw_modules;
> +	struct ice_aqc_fw_log *cmd;
> +	struct ice_aq_desc desc;
> +	u16 i, module_id_cnt;
> +	int status;
> +	void *buf;
> +
> +	memset(cfg, 0, sizeof(*cfg));
> +
> +	buf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_query);
> +	cmd = &desc.params.fw_log;
> +
> +	cmd->cmd_flags = ICE_AQC_FW_LOG_AQ_QUERY;
> +
> +	status = ice_aq_send_cmd(hw, &desc, buf, ICE_AQ_MAX_BUF_LEN, NULL);
> +	if (status) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to get FW log configuration\n");
> +		goto status_out;
> +	}
> +
> +	module_id_cnt = le16_to_cpu(cmd->ops.cfg.mdl_cnt);
> +	if (module_id_cnt < ICE_AQC_FW_LOG_ID_MAX) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned less than the expected number of FW log module IDs\n");
> +	} else {
> +		if (module_id_cnt > ICE_AQC_FW_LOG_ID_MAX)
> +			ice_debug(hw, ICE_DBG_FW_LOG, "FW returned more than expected number of FW log module IDs, setting module_id_cnt to software expected max %u\n",
> +				  ICE_AQC_FW_LOG_ID_MAX);
> +		module_id_cnt = ICE_AQC_FW_LOG_ID_MAX;
> +	}
> +
> +	cfg->log_resolution = le16_to_cpu(cmd->ops.cfg.log_resolution);
> +	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_AQ_EN)
> +		cfg->options |= ICE_FWLOG_OPTION_ARQ_ENA;
> +	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_UART_EN)
> +		cfg->options |= ICE_FWLOG_OPTION_UART_ENA;
> +	if (cmd->cmd_flags & ICE_AQC_FW_LOG_QUERY_REGISTERED)
> +		cfg->options |= ICE_FWLOG_OPTION_IS_REGISTERED;
> +
> +	fw_modules = (struct ice_aqc_fw_log_cfg_resp *)buf;
> +
> +	for (i = 0; i < module_id_cnt; i++) {
> +		struct ice_aqc_fw_log_cfg_resp *fw_module = &fw_modules[i];
> +
> +		cfg->module_entries[i].module_id =
> +			le16_to_cpu(fw_module->module_identifier);
> +		cfg->module_entries[i].log_level = fw_module->log_level;
> +	}
> +
> +status_out:
> +	kfree(buf);
> +	return status;
> +}
> +
> +/**
> + * ice_fwlog_set_support_ena - Set if FW logging is supported by FW
> + * @hw: pointer to the HW struct
> + *
> + * If FW returns success to the ice_aq_fwlog_get call then it supports FW
> + * logging, else it doesn't. Set the fwlog_support_ena flag accordingly.
> + *
> + * This function is only meant to be called during driver init to determine if
> + * the FW support FW logging.
> + */
> +void ice_fwlog_set_support_ena(struct ice_hw *hw)
> +{
> +	struct ice_fwlog_cfg *cfg;
> +	int status;
> +
> +	hw->fwlog_support_ena = false;
> +
> +	cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
> +	if (!cfg)
> +		return;
> +
> +	/* don't call ice_fwlog_get() because that would overwrite the cached
> +	 * configuration from the call to ice_fwlog_init(), which is expected to
> +	 * be called prior to this function
> +	 */
> +	status = ice_aq_fwlog_get(hw, cfg);
> +	if (status)
> +		ice_debug(hw, ICE_DBG_FW_LOG, "ice_aq_fwlog_get failed, FW logging is not supported on this version of FW, status %d\n",
> +			  status);
> +	else
> +		hw->fwlog_support_ena = true;
> +
> +	kfree(cfg);
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
> new file mode 100644
> index 000000000000..d7371253b8e5
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
> @@ -0,0 +1,51 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2018-2021, Intel Corporation. */
> +
> +#ifndef _ICE_FWLOG_H_
> +#define _ICE_FWLOG_H_
> +#include "ice_adminq_cmd.h"
> +
> +struct ice_hw;
> +
> +/* Only a single log level should be set and all log levels under the set value
> + * are enabled, e.g. if log level is set to ICE_FW_LOG_LEVEL_VERBOSE, then all
> + * other log levels are included (except ICE_FW_LOG_LEVEL_NONE)
> + */
> +enum ice_fwlog_level {
> +	ICE_FWLOG_LEVEL_NONE = 0,
> +	ICE_FWLOG_LEVEL_ERROR = 1,
> +	ICE_FWLOG_LEVEL_WARNING = 2,
> +	ICE_FWLOG_LEVEL_NORMAL = 3,
> +	ICE_FWLOG_LEVEL_VERBOSE = 4,
> +	ICE_FWLOG_LEVEL_INVALID, /* all values >= this entry are invalid */
> +};
> +
> +struct ice_fwlog_module_entry {
> +	/* module ID for the corresponding firmware logging event */
> +	u16 module_id;
> +	/* verbosity level for the module_id */
> +	u8 log_level;
> +};
> +
> +struct ice_fwlog_cfg {
> +	/* list of modules for configuring log level */
> +	struct ice_fwlog_module_entry module_entries[ICE_AQC_FW_LOG_ID_MAX];
> +#define ICE_FWLOG_OPTION_ARQ_ENA		BIT(0)
> +#define ICE_FWLOG_OPTION_UART_ENA		BIT(1)
> +	/* set before calling ice_fwlog_init() so the PF registers for firmware
> +	 * logging on initialization
> +	 */
> +#define ICE_FWLOG_OPTION_REGISTER_ON_INIT	BIT(2)
> +	/* set in the ice_fwlog_get() response if the PF is registered for FW
> +	 * logging events over ARQ
> +	 */
> +#define ICE_FWLOG_OPTION_IS_REGISTERED		BIT(3)
> +	/* options used to configure firmware logging */
> +	u16 options;

I believe the other structs put the define below the member, this seems 
to put it above.

> +	/* minimum number of log events sent per Admin Receive Queue event */
> +	u16 log_resolution;
> +};
> +
> +void ice_fwlog_set_support_ena(struct ice_hw *hw);
> +bool ice_fwlog_supported(struct ice_hw *hw);
> +#endif /* _ICE_FWLOG_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index dd064b297d77..10b78faf0a32 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -17,6 +17,7 @@
>   #include "ice_protocol_type.h"
>   #include "ice_sbq_cmd.h"
>   #include "ice_vlan_mode.h"

newline here please

> +#include "ice_fwlog.h"
>   
>   static inline bool ice_is_tc_ena(unsigned long bitmap, u8 tc)
>   {
> @@ -860,6 +861,9 @@ struct ice_hw {
>   	u8 fw_patch;		/* firmware patch version */
>   	u32 fw_build;		/* firmware build number */
>   
> +	bool fwlog_support_ena; /* does hardware support FW logging? */

IMO this name is a bit confusing as the ena makes me think it represents 
enabled not whether hardware supports it. Why not just 'supported' (and 
the other associated *support_ena fields and functions)?

> +	bool fwlog_ena; /* currently logging? */
> +
>   /* Device max aggregate bandwidths corresponding to the GL_PWR_MODE_CTL
>    * register. Used for determining the ITR/INTRL granularity during
>    * initialization.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
