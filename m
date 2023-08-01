Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A608A76BB22
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 19:24:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3AD5440ABE;
	Tue,  1 Aug 2023 17:24:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3AD5440ABE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690910648;
	bh=+L4CY4IQSF3DfHMy7mBbrXE/5aSEpg1NpcALpPSqJnk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DkA3Ug9KYz5GkARhlvf7OO1Eq6QxjGz6M7B8o7pIRHdpq4Augqg25InyFcpOdb/2I
	 vmeM17TV3uERh3HV1ZPLkPUGDNQuwlJyGyaNJHH4FtjdqUsEtzlYA+cD2eodX9gTGr
	 +lzrLTX9K6cxbykRQmYmVM+TePaEiPYV3RwiJwqhCUA1tOxFU073uQce2Ow93dVZI1
	 ghAkRuwn/6cMS+OTCNgBLcBqtXaHnrDsUCYr5B+8+rHt3bAEsDDqHh59bWBEvM/N8m
	 npw2WvsheQ8C1Ut1QRBv6anRJBflfQF7678Cn5+FkIP2WyWWYjnVoWPh2e5gKFE41e
	 VYiQzq6NzT23A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F6-YGf7kFamZ; Tue,  1 Aug 2023 17:24:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 657E2400C5;
	Tue,  1 Aug 2023 17:24:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 657E2400C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B7EC21BF964
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 17:23:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7EB6360E70
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 17:23:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EB6360E70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 245QwSAaXOh4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 17:23:51 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A56061063
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 17:23:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A56061063
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="359410056"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="359410056"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 10:23:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="842813957"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="842813957"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 01 Aug 2023 10:23:50 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 10:23:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 10:23:50 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 10:23:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z1/SNHR3DpqqpeYmu2A91MddjwMMjPWHE71PgceIF04iUyEIgEBOcDMA1FWgEoO73030akflOyEB9QbzXZIwoXy2gBweDgHZmFb8iMz3G1pYTn2mf7Tl5GGrdb72ByNhQsUX2IoVm0LOoELy324eahtGa36vdR8frEHXmGVIDJbInEJOXkc+LS83s2EEyiEA1ZD+90Mfa5KyP47K16q2K1J8Yfxcht1E7Deecd/gGH0sqQiB69VNfOFB3G6idzqrp75BfScwo4MlAN4HH5rOOddxoXpMrJ5if2KIL8yTtTYLMfVa0thBIoCXWef2bkQKlvQ4qg12FHfouWghLrPFGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sTr09zR93vQUTgsE7qsxAUlcthOLMn5v75EuCK++F8s=;
 b=kz7VuydppmNyUu3qUbCQs2GTErmlvkvKcONz0NMWymTKSE4xOnwtcWPMVz1vgHK+XCYGaFcmfAuonMdxiavlght+CFcxDc7lUeBkopoE6DuRZoyLiqb0MR7IoDxu7ndj+baMkSqx5ZaKCWfJSmZFpgRNnHvRz1XXJglkVZcShrJX4waPq/aMs5tSILJ16IX2QxXDOT8TU4peMaL/lgcG7qQZcAFfdzlOFFWAXnlkSZPn/xtTREY5a4RPoGnLiYI3pl3KE2fWNjc4XSLiemoMclICuofC+fPyl43r6Hre4Wzuh2gsyuQsS6QqrAPYZrhU50ZnZaQbqfVJVVcbXD2o+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by DM3PR11MB8757.namprd11.prod.outlook.com (2603:10b6:8:1af::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Tue, 1 Aug
 2023 17:23:48 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6631.043; Tue, 1 Aug 2023
 17:23:48 +0000
Message-ID: <f18b3591-68b9-e375-1b25-810346d2304f@intel.com>
Date: Tue, 1 Aug 2023 19:22:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20230801111923.118268-1-przemyslaw.kitszel@intel.com>
 <20230801111923.118268-3-przemyslaw.kitszel@intel.com>
 <f68aa06c-c0bd-a614-914d-3e94ff8f4ba6@intel.com>
 <0ac9d86b-c659-d4da-0838-7e0e447d2e49@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <0ac9d86b-c659-d4da-0838-7e0e447d2e49@intel.com>
X-ClientProxiedBy: FR2P281CA0044.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:92::18) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|DM3PR11MB8757:EE_
X-MS-Office365-Filtering-Correlation-Id: fa18884c-c246-4446-4a09-08db92b4110f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uk4HuCvncNghgljKVu7E27HuKFIhB6HSM8ZtebHUDCnG13nP1pF3xvzuvuhubjOJhJuje0BcHwNQc3AzTtZiGTLC+778gk8kElyxRE8KAsvHU4WF+O+UbdsHn4J98NBxm9tpaBqYixI4nrglo57eW9hSUlfFoNbSuK6/ock385b5g0oflisPPxvuzm/Px+RREIXXFlb0H2u5nD93XJJ9EaCrg/ZuJOcqaedIrRlq/zrAvh0GczA/VCPlPtVjYGrGdrtDsh+aul/XELrkVZaLwo8rfrXsTBOf1E1lQBEQjlO2LhY4ywGexbgsIaW6pYX+k6b+6ZSi1VKRtW9MRj3UZaaeCdvpSodS3ViZ2ite7kBnFzo/F9iIXXOGE++8HugFJD7GSuqC0ZCj9rcJAX1kgnd6dJacaIOCLV9guIEPyyG7kG+mnmzBhgLcwwj0Ippj0q/fY+DpPLQIqwYFInMo+VGdriVIpGV9Q7kc339NkcgoOk+ZZQYONknSdbJJnhlbJqm5D2SpgObnneqyVkaf5tBm3Xrk06qKP/HiJ8GzhdStyb1WFNU2DrOP28dMjzt4MMFZ8d5u0TP+ZAwvb9U9lMfBiDYjcvDXD2G3dhoYFlK9B34K05fZWnlNXtt5BzG86QaUbiEaMrdgu3iusY87CA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(346002)(376002)(366004)(396003)(451199021)(31696002)(36756003)(86362001)(31686004)(186003)(53546011)(6506007)(82960400001)(66946007)(37006003)(5660300002)(2906002)(38100700002)(54906003)(6486002)(478600001)(2616005)(26005)(8936002)(8676002)(41300700001)(83380400001)(6636002)(6512007)(6862004)(66476007)(66556008)(6666004)(4326008)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NEJYT2VyelkxUXFvSGpqOXR6a1lZdkdmVGp4UnRlYzBkdjNla0l1V2tCcFhH?=
 =?utf-8?B?bkxJQ3BHSFFYeEtxRENJemgwVjQvM0ZRd0VldmtnK216QXEzQnMwaVZqajJr?=
 =?utf-8?B?WFE1bWlRbVpTVExOM1VRKzhGYU1JeVppbDltTHdwRjdLZ2dxWTRMc0pOakRL?=
 =?utf-8?B?bUpUU2prbUZ1ekF1WHFNdzF1azNPZUtCd0dVdDdkUzUxQ2hrZ2M5RWwxbE9n?=
 =?utf-8?B?cGFzWk9ZMGRmcjVxVDEwRGpxWng3NVFSekhtYkpYWWxybE55UUJScnlqemJ5?=
 =?utf-8?B?YmJRY1hBdzFhamgreXNrVnpySlBldG0zY2tSS3lrLzFUc01sR3o4aDdSYkQ0?=
 =?utf-8?B?MnYwd2d2YWdyRUh4QjNyREx2OFl2OXFNUzNnS2VyMzRMR2hIeWFoc2pTL3FE?=
 =?utf-8?B?dVhwNTZDSElVRkRhMHBRWXlTT0dFTWNlWGRCMUh5ZUVtNkUwKzRIN0EwUEZ0?=
 =?utf-8?B?WlFWNkZOTk1XNzIyWlBGUWV3bllVTVlnMk1ZYlFWWlYydk93NVl2QmpGSXhl?=
 =?utf-8?B?b3pjQm9uZE5SaHErOGZsc2gxY1FzUWpHbWZOdThsbUFmZENyc3N2SE1FUlRU?=
 =?utf-8?B?clBMaDhaeVFHYUh0SVBWRmpiNWdLWE9Fd1N3ck91eTBYNHMyd2hsUnVQME8v?=
 =?utf-8?B?OTI2cUxYQlNUSkNUWnVUcXRxUHVVT01EeVJmZ0N2ZFJUSjFZSW9NY0ZORjRH?=
 =?utf-8?B?dVozUU5ncXBiM09ocVBYUksvQ3NSdE40eVVIZjBCRmliYjltLzFGQ0t4TDRI?=
 =?utf-8?B?STNnWmoybG56ei9FWFVBVWN2UGR0bzJKNHJUM0h0Y08xSzJna3k2UnRxTG95?=
 =?utf-8?B?Y0lHUVJCdWtDWEpEdDh0dXFHVDQrR1g5eDcrdDFoekJDOUZ5ZDlUeE83N0pH?=
 =?utf-8?B?cG9vanVNY2M0NHJOeEdvcUlWUVFRMUdPZFNrZnpQcW9FOU1Xay9tRzBaSHpE?=
 =?utf-8?B?RHRwVzVsN1cyOXowdEJKYW9PTE9GaTdyNVNQTXlKUCtlZFdXeXVCendWMWV4?=
 =?utf-8?B?VUZFYnY3TDJtZkl6cHZTVVFlcm9kYmYxd2dVYTVWRXUzRjhVWVJxLzVDUjQv?=
 =?utf-8?B?VmU4Z3prTjJvR3RrZWczckVJYU81NkF3Sml2enBtTWlXUHIwaDFRdk1CNlp1?=
 =?utf-8?B?NU1ud1gzcUY2cW9KdW85MzRsa2h1M0wyNlpDTGFFSk1BNWxwc1JGYUFZajFO?=
 =?utf-8?B?aWRPb2loUnhBWk9GWVNzcituSkVEUjYvN0RVeXo1VXRRbDBaN3lMbW41M05B?=
 =?utf-8?B?OEFFL0JYaGxrU1hISEc5RWtnZjBOZExRNWVieGJ0b1dLaW55aEtzY2E5RUNn?=
 =?utf-8?B?QkZGVFVlNFcxaWdPVFhaeGdvN0xuR2E2QnpISmNRbXR0YXpxYWEzSU1Oc09H?=
 =?utf-8?B?MUovMXg3RkRnUWdCT2hVOTJwRHQwMDc4MnZsb1N6NHQvWUE5SFd0V1pFM2xR?=
 =?utf-8?B?Y1FNWlB2RG8rcnZBVnhsYnpZWmY4UUdOc3lLRkpxUHNqRS92Rm93eGVod21G?=
 =?utf-8?B?OHlyTTFFTDhSbjZDelU0am9WTGJ3RGRoczNseFpOL0hLMXBpbUxkb3ExRnRV?=
 =?utf-8?B?WmVkQVJOVkFtVWlHYVppd29sV3R4MGMwU1hzeXMwN3drS0RNSUdBbjFwaGxZ?=
 =?utf-8?B?TzVWR0U5SDBRQmdUVmR0clZtMVpMNy96L3QxZStSZVZhVG1ZK2UzelgvQlNL?=
 =?utf-8?B?TWNSOGt3UmhVYklXYUdUODhXOUpnYmwwVnYwWUp1UHo5QW5JNUdhR0t6ZTVz?=
 =?utf-8?B?T1BHNXZEYSsyY251Yi9XbEV4RWd0U2t2MW5VVk5PM3ArREswNGdqL1daLyty?=
 =?utf-8?B?RmVqaUlQK3hhL1p3ek5nZDBlcnBHL1ZueFMwVkw1Y2xPY01sN0pCT1pRVnI3?=
 =?utf-8?B?YjlZenlZaGZZbXNod2ZKVUl5VzJKTUZpTGdiRW9tMXJ6anhtSkVwYkVpa2Fo?=
 =?utf-8?B?S08yNlUwZlJVSEdHaHhRVVRtZzZHR0FGc0RUNFF5NWdnUTVoS2lSQ0FHOUFk?=
 =?utf-8?B?aXhoNG1HMHphWkVhQnpFWnpUN0pwcWxZeHl4RnlaeWFLR1VMMm50VDkvcWJ1?=
 =?utf-8?B?Z05PWkxNZm5ETmVoYXllMlhpcVFMM1h1WFZhMUY0U0Fkemswb1g3MnE1RkRC?=
 =?utf-8?B?RkFJOC9iTmh1OTRyZ1hNeEZkZ1AxT3k5YVJmV3lBWk1NYlB5eU1iWEZQOU1h?=
 =?utf-8?Q?IKy+ZxSweXfwvTcttTWkz1s=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fa18884c-c246-4446-4a09-08db92b4110f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 17:23:48.3674 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RsqdGIU4sCv/x7vOQX5ze7hZUUjs1YmKhU7dXU550X6363+Q8w0uhMdFLQS5f2J/BbhZHs+hVACDASrQigxzL3Lx+dTg7jtelwJoCpo6TpE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8757
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690910631; x=1722446631;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kl5oh7N3qE7T6nku3BE+F5b443Wn3IJv0MvBWW6qxV0=;
 b=cXrCClIwMRzeThn9h1JdY7r5v9RVW3UkClzN7OXS1FXBmWKbeobBQPoq
 xRvzOi+v7nVY0jtleba3B679iCbiYzTOeYMyxpu1zUH0LdzB19ItBvF1G
 8Mzrq4RgvK6HD/Sp72RI+tpV74U/sWsat06FSYUxVpNoS0uUNiEkla2hK
 aRxdkKg5cDtjgD3DZt6u8H2HE9PETHtsaDaBxxMqLPG3YLDPfhYpTYZ7D
 TWW8Jzh/eZOoY+oNa1RlRs0XanAs7GLr0ocM8wAHn3owxwlzlUBYlpheu
 a4DborzaJIFQwEQd4wG1FCJdSXIdtN/4eVAQCp/Rmhip/xodVZy37Bhgu
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cXrCClIw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next 2/2] ice: make use of
 DECLARE_FLEX() in ice_switch.c
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogUHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPgpEYXRl
OiBUdWUsIDEgQXVnIDIwMjMgMTY6MzY6NTcgKzAyMDAKCj4gT24gOC8xLzIzIDE1OjQ4LCBBbGV4
YW5kZXIgTG9iYWtpbiB3cm90ZToKPj4gRnJvbTogUHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3
LmtpdHN6ZWxAaW50ZWwuY29tPgo+PiBEYXRlOiBUdWUsIDEgQXVnIDIwMjMgMTM6MTk6MjMgKzAy
MDAKClsuLi5dCgo+Pj4gLcKgwqDCoMKgwqDCoMKgIHN0YXR1cyA9IC1FSU5WQUw7Cj4+PiAtwqDC
oMKgwqDCoMKgwqAgZ290byBpY2VfYXFfYWxsb2NfZnJlZV92c2lfbGlzdF9leGl0Owo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwo+Pj4gwqDCoMKgwqDCoCB9Cj4+PiDCoCDCoMKg
wqDCoMKgIGlmIChvcGMgPT0gaWNlX2FxY19vcGNfZnJlZV9yZXMpCj4+Cj4+IGJsb2F0LW8tbWV0
ZXIgcmVzdWx0cyB3b3VsZCBiZSBuaWNlIHRvIGhhdmUgaW4gdGhlIGNvbW1pdG1zZy4KPiAKPiBJ
IHdpbGwgZG8gbmV4dCB0aW1lLCBwZXJoYXBzIHlvdSBjb3VsZCB0ZWxsIG1lIGlmIEkgZ2V0IHRo
ZSByZXN1bHRzCj4gcmlnaHQgaGVyZToKPiAKPiAuL3NjcmlwdHMvYmxvYXQtby1tZXRlciBpY2Vf
c3dpdGNoLm97bGQsfQo+IGFkZC9yZW1vdmU6IDIvMiBncm93L3NocmluazogMy81IHVwL2Rvd246
IDU2MC8tNDgzICg3NykKPiBGdW5jdGlvbsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvbGTCoMKgwqDCoCBuZXfC
oMKgIGRlbHRhCj4gaWNlX2NyZWF0ZV92c2lfbGlzdF9ydWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLcKgwqDCoMKgIDI0McKgwqDCoCArMjQxCj4gaWNlX3Jl
bW92ZV92c2lfbGlzdF9ydWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAxMznCoMKgwqDCoCAyNzDCoMKgwqAgKzEzMQo+IGljZV9hZGRfYWR2X3J1bGXCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgNjA0N8KgwqDCoCA2
MTM5wqDCoMKgwqAgKzkyCj4gaWNlX2FkZF9zd19yZWNpcGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDI4OTLCoMKgwqAgMjk3MsKgwqDCoMKgICs4
MAo+IF9fcGZ4X2ljZV9jcmVhdGVfdnNpX2xpc3RfcnVsZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIC3CoMKgwqDCoMKgIDE2wqDCoMKgwqAgKzE2Cj4gaWNlX2FsbG9jX3JlY2lwZcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDEy
NMKgwqDCoMKgIDExM8KgwqDCoMKgIC0xMQo+IF9fcGZ4X2ljZV9hcV9hbGxvY19mcmVlX3ZzaV9s
aXN0wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTbCoMKgwqDCoMKgwqAgLcKgwqDCoMKgIC0x
Ngo+IGljZV9mcmVlX3Jlc19jbnRywqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIDE4NcKgwqDCoMKgIDE1NcKgwqDCoMKgIC0zMAo+IGljZV9hbGxv
Y19yZXNfY250csKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgMTU0wqDCoMKgwqAgMTI0wqDCoMKgwqAgLTMwCj4gaWNlX2FkZF91cGRhdGVfdnNpX2xp
c3TCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDEwMzfCoMKgwqDCoCA5
OTTCoMKgwqDCoCAtNDMKPiBpY2VfYWRkX3ZsYW5faW50ZXJuYWzCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAxMDI3wqDCoMKgwqAgOTUzwqDCoMKgwqAgLTc0Cj4g
aWNlX2FxX2FsbG9jX2ZyZWVfdnNpX2xpc3TCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgMjc5wqDCoMKgwqDCoMKgIC3CoMKgwqAgLTI3OQo+IFRvdGFsOiBCZWZvcmU9NDIxODMs
IEFmdGVyPTQyMjYwLCBjaGcgKzAuMTglCj4gCj4gTXkgZ3Vlc3MgaGVyZSBpcyB0aGF0IGNvbXBp
bGVyIGRpZCBkaWZmZXJlbnQgZGVjaXNpb25zIGFib3V0IHdoYXQgdG8KPiBpbmxpbmUgd2hlcmUs
IHdoYXQgaXMgYmlnZ2VzdCBkaWZmZXJlbmNlLgoKNzcgYnl0ZXMgaXMgdmVyeSBnb29kIHJlc3Vs
dCwgYmVjYXVzZSBzZWUgYmVsb3cuCgo+IEFuZCBiaWdnZXN0IGdhaW4gaGVyZSBpcyBhdm9pZGFu
Y2Ugb2YgaGVhcCBhbGxvY3MsIHBlcmhhcHMgdGhhdCBlbmFibGVzCj4gZ2NjIHRvIHNodWZmbGUg
dGhpbmdzIGEgYml0IHRvby4KCkV4YWN0bHksIGhhdmluZyB0aGUgc3RhY2sgZ3Jvd24gb25seSBi
eSA3NyBieXRlcyBhZnRlciBhdm9pZGluZyAtLSBob3cKbWFueT8gLS0gYSBsb3Qgb2YgaGVhcCBh
bGxvY2F0aW9ucyBzb3VuZHMgZ3JlYXQuCgo+IEFub3RoZXIgZ3Vlc3MgaXMgdGhhdCBiLW8tbSBp
Z25vcmVzIGhlYXAgYmxvYXQsIHNvIHNsaWdodCBncm93dGggaXMKPiBleHBlY3RlZC4KCkJPTSBj
YW4ndCBjYWxjdWxhdGUgYW55IGhlYXAgdXNhZ2UsIGl0IHNpbXBseSBjb21wYXJlcyBzeW1ib2wg
c2l6ZXMgaW4Kb2JqZWN0IGZpbGVzLgoKKEJUVywgcGFzc2luZyAvZGV2L251bGwgYXMgdGhlIGZp
cnN0ICJvYmplY3QgZmlsZSIgaXMgbGVnaXQsIGluIGNhc2UgeW91CiBqdXN0IHdhbnQgdG8gc2Vl
IHNvcnRlZCBzeW1ib2wgc2l6ZXMgaW4geW91ciBtb2R1bGUgb3Igdm1saW51eCkKCj4gCj4gVmFs
dWVzIHJlcG9ydGVkIGZvciBpY2Uua28gYXJlIHRoZSBzYW1lLCB3aXRoIGJpZ2dlciBiYXNlIHRv
IGNvbXB1dGUgdGhlCj4gcGVyY2VudCBvZmYuCj4gCj4+IFsuLi5dCj4+Cj4+IFRoYW5rcywKPj4g
T2xlawo+IAo+IFRoYW5rIHlvdSB0b28sIGFsc28gZm9yIG91ciBpbml0aWFsIHRhbGsgYWJvdXQg
b24gdGhlIHRvcGljLgoKTm8gcHJvYmxlbSwgSSByZWFsbHkgZmVlbCBsaWtlIHRoaXMgbWFjcm8g
d291bGQgYmUgdmVyeSB1c2VmdWwuCgpUaGFua3MsCk9sZWsKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
