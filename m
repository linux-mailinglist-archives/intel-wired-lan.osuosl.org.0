Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BD97E54BC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Nov 2023 12:11:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24D0281D47;
	Wed,  8 Nov 2023 11:11:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24D0281D47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699441876;
	bh=2X+2HMOGL+QRO95ni5atpHiAU8tsvESF2k556CMGYag=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GcccojGgw3G66reSOb+v4cDoZnB7EiSWogjJ5UyvsYAwhUrK6GG7WFRWp3UQFNTmW
	 ReoDY68nLYJtxLVdoh7lVEpS2sRIlwENsVbUo/rollMmIl/41V0rGx0kH35pDN/Haz
	 82dXz76fbyb+FBLWBJvF//xClnRsPRfJn0ZlCg1avwWDUGCEYDkyHQlZm2XSMrfUHj
	 GICwOSyQuLCudwCTUnF/cOD+ZF5CFAmh7PccrUSjidzhDDjNhiSptG/UlJFzvt7Fxr
	 aWh5duVkS9msjAGek0BOXkl6azkMR7oisYZ3NR0P1Q3R5EX4i78XDtKQzcUN7Qr0zE
	 8KYAGjOIN4xjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NKKl1og0vj_G; Wed,  8 Nov 2023 11:11:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3CE981490;
	Wed,  8 Nov 2023 11:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3CE981490
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 17DB91BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 11:11:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E2C3341675
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 11:11:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2C3341675
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oGVVpWHy2Kml for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Nov 2023 11:11:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D1480415FF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 11:11:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1480415FF
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="8393269"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; 
   d="scan'208";a="8393269"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 03:11:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="739463661"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="739463661"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2023 03:11:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 8 Nov 2023 03:11:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 8 Nov 2023 03:11:03 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 8 Nov 2023 03:11:03 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 8 Nov 2023 03:11:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DcQhkOGTA08fARSpI5RP5X4+EqyueOE04cgo6lfEI+DY+VzLzflIZkgto9URgEvjWR0I3/mUPJ4wYmfVxpwonUPxxOVkUEebMHhwELIIWJYzP+1/wjvpigvGICY3CkaCOZJwflzW3+9PuZs61a9BcYGZHDJQPEVNF4Wup7F6wCwOwmDvcvV4MxAnexrzidtKgtYrViHwrZMf5rvCMPTKPzcyk1rAGPplGPAntcBrYWuSXxys1UMsyOLrqbwlLhYqucT3Wt5UU8s6pqWZgghFQYlew7Gr3Xk1MywaiX5AAtYjZk/3qJBktC5VH5gbZroQNAvfiBam9CDcXEn7Iug0HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lkkd/kLPe2QAwbTnHrqVNcudkhnmgUp6fWr+QCjrtIs=;
 b=Ge4ZfkuzQfFwCG6qnsnVHlRJa19+QEPB4xtxh4NP88fegCjLV5qnTfBJzuEhOGiK6eE2pDQttiYNIfK2tiyZQHpAsZK7XCoYJeDKGAVIHiO51spZfN4agiK5Kd00vpG8j8gFS1iQrM2GDJu82uREmk6dWlqcMLNFpMlo+q+TzMleNjnNwSRYhOJhp+MzAbNuGkmCRxUIRQRM33K7qRTPu6RxKg1caMua3sL3k3xkfq6uKDl8KuvW5KGI87u/ay6SqA8mI7Zbi6tWRBg+QhxdPLa65ypHtZWszK+n6zxni1cLmXEleSTmOXJE9BueT7O6qY88/DUy4XrJ8myhxo8/mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SJ2PR11MB8345.namprd11.prod.outlook.com (2603:10b6:a03:53c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Wed, 8 Nov
 2023 11:10:57 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::4bff:ef3:3532:d7eb]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::4bff:ef3:3532:d7eb%5]) with mapi id 15.20.6954.029; Wed, 8 Nov 2023
 11:10:57 +0000
Message-ID: <1dbf5339-0566-ffb5-ced0-51790999dfeb@intel.com>
Date: Wed, 8 Nov 2023 12:10:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Sachin Bahadur <sachin.bahadur@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231107224040.494924-1-sachin.bahadur@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231107224040.494924-1-sachin.bahadur@intel.com>
X-ClientProxiedBy: FR4P281CA0188.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ca::13) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SJ2PR11MB8345:EE_
X-MS-Office365-Filtering-Correlation-Id: 52e18418-ffe1-4558-96ee-08dbe04b6153
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jYJi66iBCB2uiHD2WAMeMrfZH6IdoMgYtaNu6+bTKRatrB60c0bX6IyLAukjZHZkQu5EX3VB3OeP+EbTvW7WMJ2ySXEqZvgJ9so2EVl2gY3MSA+8gJZJ7b4g/OFjc2oVCH+iS+FRCgHpxiqXo8lswAHo9Rayf7flAJqxGhrFPvDmBr+ZiffmiDcPKwWhs4hC83na/XkNQWEYyFhAaVhyRRxVlkLBBpg7LnlEurt5OAVH56OQ4q9BG/Gxh3X2yeV7jp0BRmUPqAdJA2Z0YrccqX82i3C7UJWkiJlpZz3JVDiPYywWaxN1d0TUZWMEFAkc1tclNfwLb2ADsF7sSDWRBvjv6N/rCRslOT7A87wBIAzGpflzoH0wtG+F+YLk3TvYBxikegrilrVsR8U3PuuAuKI27P2UkKePbkzxTu5MEe9lt2ZcfDPnZoFbYyhs72F5X34S3TPOB9rTs0kOaQnNnm8YpShk0UVVoK68fvUtyKZPE5Q76V3wJVmDgC5JF7ZEXzcywGYoBq5TKc2NVI2s/hjMFBgjE+EblSiaGbNQmTaokjag0qVMf69Os2jz8NY67/MHoeoAztHouvPXdlq2vJWkIna1i/G1F/p3/L9UlCW/lGzpsJwPmjgCqB+yrybx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(376002)(396003)(346002)(230922051799003)(1800799009)(64100799003)(186009)(451199024)(66946007)(6666004)(6506007)(53546011)(966005)(6512007)(2616005)(6486002)(478600001)(5660300002)(2906002)(26005)(66556008)(41300700001)(66476007)(316002)(8676002)(8936002)(83380400001)(38100700002)(36756003)(31696002)(86362001)(82960400001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TURWek1LOFovMHlDWER1ODJodTdXK1hJRGdrZDFFaWtKMVcrNWY1YU5QUVN5?=
 =?utf-8?B?ZHFScndDdU9ySmlYMW5HUElhRnhIM0syMmxMeFh4cm5LK1JUVlEvT0pmaDJz?=
 =?utf-8?B?OWVTa1hLTkg3aVZKbnk2c1VlSUYzQzllWFBZaGJIMVJvQWhaM3JUMEIwVmtn?=
 =?utf-8?B?TldJUEE5bXNKUTRxUk1ja0taS0NBbm5pdE5JdWlsWE9zQWpxcDNWREsrQ05E?=
 =?utf-8?B?RllZcDJlWVlYdnpSdDZjaXVrVWFRSWh5SzhyWUErV0lFSTJ2QjBGcEowMUc3?=
 =?utf-8?B?Q05NY2dKbThUaFRWWjg1aXl1b3I2dVNTZ25CNjVQQndZVDRWME1MV1RUcFkv?=
 =?utf-8?B?NC9SQ3J0RjluTXBLbEM0YVNER2NmVGdCc3ZoQVhIN2h0aElBakc0Z1ZkcG9l?=
 =?utf-8?B?T0hIRm5pdUNYbXJjRWpjWGNpY2FvbGI2S3FiMGd2S1o0ZkFqN2RQQkRBUjhq?=
 =?utf-8?B?bEN0QXNqdEowY0grSWV0NkV1Um8zcVFzTHBSSjY1K2o4RmNMNkJHNEhrMWtF?=
 =?utf-8?B?SHhBOHpqY0hya0ZBbm5FR280WUIwQnNsc2xXRkxpSnpFTFhub3VjUnV5OGRu?=
 =?utf-8?B?OGh0NDNmZWM1bU5UZHd5RjRHaTlNc0cwbE4vTlBaeUdWTEtrR3ptaU5NdEZM?=
 =?utf-8?B?WG5RWjhYMHRZR0RrTXZCUmxnZWR6ZERUNFBmZmRPd1dOY3NQd3V1ZDF4UG12?=
 =?utf-8?B?TWhwVDJCcmVYb0lxNW9JaTF6VDRPUGhmbE5MYjdNSGRYaEVQcHZjRUxTbzlD?=
 =?utf-8?B?Mkg5d2NFdFd2K3VTWHc3VEF0cjh5NlE2ZjFJVGZUUDFuNUlrNFloOVRjNDRr?=
 =?utf-8?B?M0lwMkR2b0FiMVJDbDdRUUc2b1VJT3NFdFJuaXYwdDVZemMxTVNUeS9WaWhI?=
 =?utf-8?B?UHhkdU84MUhTWWxQdUZRMysvcDd1VEl6c2V0Z0pTS0JpeWxvMHQ2OWl3QjVT?=
 =?utf-8?B?ZUFDMTFhWkNackZjTUFVTzhVUWwyejk1VUFydmxkWUgwT2tHSnZwTnlWQmpN?=
 =?utf-8?B?MFF5cGROa3V5cFZOUi9tT0owRW00MEZnOUlUVnY0cVpsckhVRkVHeHV0c1Ba?=
 =?utf-8?B?NnVDMGZ1VnhmaDRnTk9ja2ZlcjBWYStRR08xb3Vad3ZJV29SL2xGVU8xQ3U0?=
 =?utf-8?B?N1pHakgzZFg1N3Irdys3SzVUeDFscVpPdFZFMEFwUlZ4dTBTSTNBaFNkekhq?=
 =?utf-8?B?N2lUaG9NVENVazBBbHRPOFRUOCtZYnZ5NnhNLzc0OTd4eThjTTJwV0tPb01v?=
 =?utf-8?B?QmF6NjBLeHFURjdJdEJLOXlXNFI2QjlyMk9KQUtVeFEzbTd1aU51VWpCUEx6?=
 =?utf-8?B?MmxKc2pzbHFWbENKT3FBRzJlVGRvODVvbFhkNi9DVjFnWUdIN0NoTittN1Bl?=
 =?utf-8?B?VEhrc3NYaCtvcGFLNGVudzY0MVVDWHpNTGVDMll6b1lMSkJiSWVHY1lSdXBH?=
 =?utf-8?B?R1ZlOUtLSnM4NnkyV1BOaVM3UVZoa0RrOGdIOHdaV3NiZU40RUdBTGppbjZM?=
 =?utf-8?B?alFVTU8zelNkVkcrYW9JT1lqVDVSd1NSODdRcHNCSDBuSDN0aURTODRsaDNB?=
 =?utf-8?B?WVpYb2ZhbHRwbXU2R2dOOE9xcU5sVmNHQ2VYMHpqdndDekFKS1BRa2xxWFRO?=
 =?utf-8?B?REkzU2VTUXpreTJUU1M0YkZyYjNxRXplWDJ1Qis4dTVLdjhHY1ZyYXB4ei9z?=
 =?utf-8?B?YjF3bXJkcUU5b0tlTThpam9vaHdPWlQ1Zk1ONktkR1lDRUR5TytmUFJXajFq?=
 =?utf-8?B?Zi9jbzVKMkJRY2pESEgvY1d1ZHhjVVArdTVLTjNrL2MwOVdmOW83SVBqOTNw?=
 =?utf-8?B?aU5rNW9ibXl6VkdBdzZpUVFrSE5URThoNE54bHEvVVdCaktodktObGovdGtQ?=
 =?utf-8?B?UzZKd094MHZ6YnJLbU5iMEdVTk1IQ0dJOWRyN1BTUlRQYzNGQi9kWmQ1Qk01?=
 =?utf-8?B?bTZBdGVDd0pCenRVMm8weG5XR3FPaWZad0tId25JaHFwb2tlTzFwOFFRa2xl?=
 =?utf-8?B?aytRUkxDN2tXL0J0SFRSTko5WEFIWlh5VlhUb1ZjS1ZtRUx4cGEvSUlvQXZU?=
 =?utf-8?B?Y1lUQTZMTFB3OENSN1p2S2FEU0RobzNYRmhsZkgxUEZ3MVhTb1k4em5adHJW?=
 =?utf-8?B?c0U4NXBkd2dEdk03clpRMzd5TXdvWmJVS0hUc0ZxTjQzMzhtaFN2K29SUTRP?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52e18418-ffe1-4558-96ee-08dbe04b6153
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2023 11:10:56.6113 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4yBk1CEHY81u/PIz6FNxzUReHNrtE06E1HrIl3gPEwhhnVvNjdRw9cA1OI6pm3Ot+fSFXkPxhxXb4Wf1gC3p3jZfwdYxYvsE+90jMY+72D8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8345
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699441869; x=1730977869;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rmrzLBZ4GDks5sDVr+9qR70nSaQ4Jzm/aAlqgDEuzdE=;
 b=W8sGCDG7v5dDLlzHkK1b5NQmRruPoFPHmQ4MEm4MeavOuT4f0tNnLyM5
 NNU8LOFnqp/aXCUWCsjpjlD3jo8pxR/+TApU7bagKOu8CL35aWD3YMT4v
 WkhLeMt14JZr0UUJne8HjUgB7KX6pqHcKNdk062B+jLWA76ZMJ/GHBH8F
 TOhAlTsN0GLsjGLXprPxYF1GXV0DPP4r5VHRB+sQIyhNQ0QLEwhZlz+H8
 FcU01lThNajZIqF9/MXiO4TfmblnLFWUiUxURBtZ6zUBG2PmIv75cCU9e
 tJZMGul1W0ECPtUAs5KMOkZcmmBNkaa4iWGhA3YWBM1uu3robnpDR70o1
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W8sGCDG7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/1] ice: Block PF reinit if
 attached to bond
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

On 11/7/23 23:40, Sachin Bahadur wrote:
> PF interface part of LAG should not allow driver reinit via devlink. The
> Bond config will be lost due to driver reinit. ice_devlink_reload_down is
> called before PF driver reinit. If PF is attached to bond,
> ice_devlink_reload_down returns error.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Sachin Bahadur <sachin.bahadur@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_devlink.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 80dc5445b50d..45e40b587e82 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -457,6 +457,10 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
>   					   "Remove all VFs before doing reinit\n");
>   			return -EOPNOTSUPP;
>   		}
> +		if (pf->lag && pf->lag->bonded) {
> +			NL_SET_ERR_MSG_MOD(extack, "Remove all associated Bonds before doing reinit\n");
> +			return -EBUSY;
> +		}
>   		ice_unload(pf);
>   		return 0;
>   	case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:

When you will send v2, please make sure to CC netdev ML and main LKML,
do so only when the netdev window opens
https://patchwork.hopto.org/net-next.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
