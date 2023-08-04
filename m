Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8149770AEC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 23:30:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4269E41EFD;
	Fri,  4 Aug 2023 21:30:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4269E41EFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691184607;
	bh=o7YbGrWO9b0iV2fl+ZI/m+o5M5Fq8wV7uj5pKkXy1SA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M9T44X849iWIqFjMHmMqPtyODX7cs3PCdcIvECfSsGgwftgjkpMriF9A6uD9TJP1n
	 Tcp2Ed6xKa2cvLHDUD/kIjr7nR3jrTrKOl6mCA/wQQPUlVpRjSUrsmfaqwk1iK3Es0
	 pSwt3jewFRGcPBGpT2LU7mp8JoFfxYZFIp0njh2m8S2+wyitq6FnMS3tFPFLaHgR2z
	 onK6Sy0OCEZUd5qblIgq8NyDMFV9tg3cBHyexrmDjy733gLLuZEG9yOwrrbHRd4hLr
	 OLzGmL/N6WRjw6/DXtfr8FvUrcy7/jMJtmxYmvURKVFXPK+bLFY2aapXUofUiaEssI
	 GHtzcnK6JP4WA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4M9t2kYI1zfP; Fri,  4 Aug 2023 21:30:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CEFC41583;
	Fri,  4 Aug 2023 21:30:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CEFC41583
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B6DC1BF31C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:30:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 81E534053E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:29:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81E534053E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JYFql2S-3G4o for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 21:29:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44F5040481
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:29:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44F5040481
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="349844822"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="349844822"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 14:29:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="853941747"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="853941747"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 04 Aug 2023 14:29:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 14:29:40 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 14:29:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 14:29:40 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 14:29:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=al9H6nuSdk/tFQ+JJnLyNeljnpHanIthrNkWz6GQBGIw7W0MIv7zYn05KlG0mpHvOzI/s643qLXbOT93mM9SBzrO5AvceENcSlGQwbYnDtCBDrJOKJ2YgjTyRPkd/vfUNCnNenYXr/RalVMNgF08N9CycHSTuhKbrZZVE8bZOXZf8F57NpD64y63atWni8XksD/tpFEPybpu+qzVb6xbPF79xGFDKPSpoZlKVg8tsDI+v+DNv5kY1hoaBRVL6/brSQ7c0HxxoESfx+kn12HIf3anUAn7T2JFSXDo+qos2dVRXAUPk98e/YbCDqACJpCk5+42ynoyq4AZpICm5OSfNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vABK0xAeIITN44hWBf36Kyk9jaKmS65xeVefOmUAez4=;
 b=EX3m8Egsq+b+YnYmEGTVE20Q536sIXbc4ZYbv7b2z7JpsOEBwPqqy3o3heVtIOsDFKL89Vw2EOvp3COy6MAG3bd8ANnjVL2SK6JgSpxPq2HtIMGzAjWYuw6uJt96r7m25CcYzkAX8j4OPkKbkX8kbo3v847pgw0SIoMbG2oBx60oCjFMLpf+iXOUjUgXcsUgVjrAV9gPXn9fWu5NQWeChtFIVWjMsAGS4Lw+SDwhyXYmexDB1U7vBrvt04BWj8eBWdkUZNqTMopeuEFYE8E+FyUagA26guSb9hnFUu33i7+3YHEkfFKTWZWDr9wP2kjncJkeRq0f2ayF7PVqXeLycw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM4PR11MB5293.namprd11.prod.outlook.com (2603:10b6:5:390::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.21; Fri, 4 Aug
 2023 21:29:38 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6631.046; Fri, 4 Aug 2023
 21:29:38 +0000
Message-ID: <cb5555ae-e829-68ce-7afc-4f3e2498f327@intel.com>
Date: Fri, 4 Aug 2023 14:29:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Andrii Staikov <andrii.staikov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230802074840.3650208-1-andrii.staikov@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230802074840.3650208-1-andrii.staikov@intel.com>
X-ClientProxiedBy: MW2PR2101CA0013.namprd21.prod.outlook.com
 (2603:10b6:302:1::26) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DM4PR11MB5293:EE_
X-MS-Office365-Filtering-Correlation-Id: 171e7790-f7f1-401a-1d78-08db9531e826
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hHz9OBym4pzxIofTDFaRExTu8XvR1xjL8Nzb2A9pBJd7fHyiQfOZ62ETbia3lXWCkh6G9k8GdhONCq7/1eNaM6+ujLwg5IOKtEYpIKQC3zrATlimFF7wxtYsG72b9/XUsZgkRID3EcZJl2CWv8MOI/k3BfqB8bF6sTfLtF8JIyACkw5dREirYKkBOPRG0hkyk2xZHoYjA1gtcPrZxaRgEY8KSmHy+z3h9WtobU/YF9z7yYRL74UOTGPRhr6XGGOFMNK6RWSQsqaXVBHeoECw/dmIoKWJeb1FLDT0Y+go2u14O7HC7gO7DkNaiq9p91fgpymJBPsUC8uL61lyEh9vNgJeGOVAcaNxNgqilJ4gv/hVuf5iYSNdDH0zg1za77es+amCYa/UtfXmRzFbW6AM+KLd/8Y12xotmKWxYplQPM1QuvDKAa/8Q59aBSxIMS8LW+j9rBd57+MJV3+qP4fXrKsRjopU6p76gCM1YtcUzmeEgvOCElA5IiUi/iPpXq3lCbTMVz1xsIcn4b06NoynRxFCUVX6s0q1HvZs067ZB4c0IrPMIl7VBLdsMNU4NiG9hOFC/ojAaydya7XRj9EwldbtLKti8Ib27p1WgdnjJ0hDUqQWmEsLW25Q30a/2loXZGbmMrrWfHYBDNVziLXJjw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(376002)(39860400002)(396003)(451199021)(1800799003)(186006)(41300700001)(4326008)(2906002)(66556008)(8936002)(8676002)(31686004)(82960400001)(5660300002)(478600001)(66476007)(316002)(66946007)(86362001)(31696002)(6666004)(6486002)(6512007)(38100700002)(26005)(6506007)(36756003)(2616005)(53546011)(83380400001)(107886003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aW50S25sY0lLMzZzaGJXVERyVzhFTmt0SEdIZTVEZDQwZlpSUEdjbG4rb2l2?=
 =?utf-8?B?VENteWJyb3dtTFNJMGd4UkRzOWwzOXdEMDBjcjB4MUJlMTVsMDhxekJLNGNP?=
 =?utf-8?B?SklJNTAvOGFUUnZPNVMxRWZJM2lBQmx3blo1WGxDWCs0YmVnN3J4RkdVYlN2?=
 =?utf-8?B?QmE5Z2t0TElLRVNuQ2hwZzhUV0lGTzUxMjBBTTZybjMyVFFoa0tsNHcyNjN0?=
 =?utf-8?B?Uk1tN0hYSEV5NVNlWFcrWkhib0VDU20rc2NDTmdYN1Z2VHA0em9aUnpSbVhx?=
 =?utf-8?B?ak1WNjZIc0NxeVl6WGppek4vckdwUkV6WUZsdlZyQ3cxYzUvVlRuNEVlQTF6?=
 =?utf-8?B?bGNoLzA4Wmp2U25ueFdoT29RanZ2Z3NEQmxaaFZvL1Z1M3ovQTdrOUFqZSta?=
 =?utf-8?B?dG84TG5qUHVuY09SZWZaZUMvTCsrNllzVUdTdk1YUmlza2pINHpDY2FnL1pC?=
 =?utf-8?B?RXpHRzg4eDMzcVpwSzZpYzVwaXBMZnlLU21hTi8rcVZEM0N3NmRoWmRXRHZB?=
 =?utf-8?B?VEkySXZiL1RhOUduSVFYQ3E2QndPYXVkbDUvKzc5UDdVVGNWQk1QK3hLRUdD?=
 =?utf-8?B?aGRFOTQxOXhSK3FnMmZmbTZwT2FCaktRb0QvSmtTM3ZOL2R3L003RmUrL1ZE?=
 =?utf-8?B?N2YrR0JPZlR3MzZwbzdHVU8wR2xCTjdyZmUwY3QvaGpQUXlDWk9Hd3lwT253?=
 =?utf-8?B?Nm1yWUhvcVhsQ0dBOGdMMnNURTN4QUlUbTNxY2ZGYmpzOTZ0NnlwaC8wZ3lR?=
 =?utf-8?B?dHVEWm56S0NSSVFRZEJ1YjNkejlxWUpta1FsWW81ZXJYTkpRaXNaRVhzQmJm?=
 =?utf-8?B?Q0huNEkzQ21hdVBZRml0dmZ2akxTbi94MXBUaFh0Y0ZjdWpGeEM1UGwxc2VS?=
 =?utf-8?B?ZmZzQml6WEJuNjZXUjNMWldMM0NMQ2E0eTltS1gyUHV3VnNiYlVMZ21BYlFa?=
 =?utf-8?B?ZW1CVEd6cGs1YVNFcnpIZWxmdVJFdUs0MTZXNnlONk42Yng4anhjSDRWZzRQ?=
 =?utf-8?B?bXdicTBPQUpYNTZXQWNNM3Q1Zmpic0wwTHBtS2hVZHAvL2NKakJqM1Y3R2U3?=
 =?utf-8?B?YUsrNWRUY0JXWk9xUVJEdW00VktKK0dXTjUxcDJCOVZLNTFFWVhMazBFRzNP?=
 =?utf-8?B?YVYyZE5VaXdXUWVjS1V4Q1FuTGlMVDJUUlZENlk0ODdwdG5jR3BoemE2Rlhu?=
 =?utf-8?B?UHd2OEJyTFNIMjI1dStGQTM2Y25XRm5OcTczRGdGeVR3M2I1Nk5QLzlJY2hT?=
 =?utf-8?B?UC92QTZ2czJ5MDltL050WjJyUFJUK0R1bVI2UUN6OGxsd3I4WGxYMHoweTdy?=
 =?utf-8?B?VTM3d3NLZlNCZUFYS2RPdVVRMUZ5ZDNwaE42ZURtN3JaOENxMEtlVE1QUndY?=
 =?utf-8?B?RXlMT0VqL2NjREw5QXZaVnloaWNaaVZZUXFsVU9oU0tteHZGdmZKTXZXT3M5?=
 =?utf-8?B?YzhpQ0RQOVA0SkpXcS9aTFBNV3RSVkFYVXUzSUpIT3pPVWdseU1pK0dkQ1lW?=
 =?utf-8?B?WnpmeXZOUTdaRncwZXBvM2wwYmpvMWJGbS9jZ0J3aENOSmlMeWlhQ1RBeUlx?=
 =?utf-8?B?bklpNnFUWlBNQ1hPb2Z0TkdKSFM1YWtjYW40TlQzK2FuKzdBdnJ2WHBubWxX?=
 =?utf-8?B?Q2VVcTF1emhCL1lSWnp4S2ZrTVg4YVRDa0szd2YxMjZYd1ZTRGJwejlpM0hJ?=
 =?utf-8?B?QTdCRDVCcU9CcGJPSXpaZEJzRUF1bzRLWDFEc2FOT1NhTnI1UW9NV05KdCtl?=
 =?utf-8?B?Ri9ZN0V4Sk5wcTA3ci8wYWg2Q3JFZDk2ZXpFdWJxTTJBZGpwK2lueUZmTWhr?=
 =?utf-8?B?cEQ5YmRSUkFpZTY4cEtuT2w3bFpKVHZwR3Z0c2V5d0FycjZwUHlFKzZVakcy?=
 =?utf-8?B?Wk13OCs5ZHIvcXo2QlNCVkZJZGV1NkV2cEt3V2ZSV2U2Z1BBeDBZbHBvNTcy?=
 =?utf-8?B?VnVrVTBHTTl3MC9xTDIyOUp1OGhKQ3BveWFYTE0xYmxxeDZIM2JPTEZKWHB2?=
 =?utf-8?B?aUhmTzhuQ201dnI0UCtTZ05NZHNMcUsvNUZSMW9jVys1c3FaRFFDZHFmd3VG?=
 =?utf-8?B?cGl5SThqaVpoYTkwcW11WCsxbk91cjdFRStLcldZdFV4TUlkZWV2anFuaTZw?=
 =?utf-8?B?TDJVdHo3bW91aG1ySENtbXNvUTRuUURCcjkwbWZNZ0FZZzR4K3JiWWxOR2dC?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 171e7790-f7f1-401a-1d78-08db9531e826
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2023 21:29:38.5461 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: COuEHU+0uxNH6AGjPX7axIKQyvabd8FwZGrwiOeHSVB8XoV6Le25nXGoNbZ2A5fQ9iw7Gnum/fIrPiwbWGRPkB2xP5Q6/lnFyklqno4PyrQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5293
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691184582; x=1722720582;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MjWV9imX1mzOKkPyqbXN5n7V1XMRexaZivtlVQYYdHE=;
 b=hwk2tcJcBgFMMiZKA5xErbE+BcgYSIBmo4lSxXgS9DI59Nfypbg7D1Ek
 30+fjq5nuy9X6tgcHqraUQexmJ3h7by6eePTfHpKSj/SMpCN7tGYpF7Ne
 hmiPN5guDxscM34NkffLhbHUeHK7g7bhXLO9sHVerRxEDWoKn9AZ2N1F2
 AralwPWpJvO6LhIsZfFRSUXHbv1/TvwzNeCE8l3Mh7VL7MZjMjSYM1ZCy
 zce/HElPfiFB1RZSo2WAca4YeKEpqgQMMvTv2apATLxNdSWagF1h36q+a
 efWjdimHrGNCN0GpvUAR3SzAoKZYCVl518wvPeWZh/gay7w1SMao8tAyO
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hwk2tcJc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix potential
 calltrace i40e_sync_vsi_filters()
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/2/2023 12:48 AM, Andrii Staikov wrote:
> Add defensive check for pf->vf != NULL before referencing pf->vf[].

Please add more info on how this can occur/Why are you adding this 
check? How was this found? An actual call trace, static analysis, code 
inspection, other? If a call trace, putting it here would be useful.

> Fixes: c87c938f62d8 ("i40e: Add VF VLAN pruning")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 29ad1797adce..a86bfa3bba74 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -2609,7 +2609,7 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
>   			retval = i40e_correct_mac_vlan_filters
>   				(vsi, &tmp_add_list, &tmp_del_list,
>   				 vlan_filters);
> -		else
> +		else if (pf->vf)
>   			retval = i40e_correct_vf_mac_vlan_filters
>   				(vsi, &tmp_add_list, &tmp_del_list,
>   				 vlan_filters, pf->vf[vsi->vf_id].trusted);
> @@ -2782,7 +2782,8 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
>   	}
>   
>   	/* if the VF is not trusted do not do promisc */
> -	if ((vsi->type == I40E_VSI_SRIOV) && !pf->vf[vsi->vf_id].trusted) {
> +	if (vsi->type == I40E_VSI_SRIOV && pf->vf &&
> +	    !pf->vf[vsi->vf_id].trusted) {
>   		clear_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state);
>   		goto out;
>   	}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
