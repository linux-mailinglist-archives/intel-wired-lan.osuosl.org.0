Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8B47C77CD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 22:21:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C30540A40;
	Thu, 12 Oct 2023 20:21:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C30540A40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697142080;
	bh=ASTXe7aF2ZiS7bnZ1tnp1smpYtiYR8cVs8gMxf8ZAqU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tiT+MVprJyo/hbv3ZmIBXdKCRf9qjNGyO+qCzs1QuugecjBI5XDhiB2UTlHXKI9hV
	 p4nEfii7R4zPHslMCWuPtn3rOlZOB0gMcdFkECVaVgvit6b4Ps4MNqEtSfT+Chc2Wn
	 ms8Vz8UCkzJBR8S4fGM7U/g4FiFXqum8Lvv3X6/MVjqrafqLxIZhbK0anhBJpP3hkr
	 rNfi/qigdr+zvEpibDQQBT97MJ0wbYQ+8yXlq31oJe0oqld22Ppa4frmEluRo07Soy
	 hA2Z+viO4FASwQ3KJ6GVl/RakpY+0u3I/sRp5w07datc2/3vYrdyRt0qjCWVT7eary
	 Nbk9hZIC3fISg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HlzeNnPbabYY; Thu, 12 Oct 2023 20:21:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1611140575;
	Thu, 12 Oct 2023 20:21:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1611140575
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DADD21BF846
 for <intel-wired-lan@osuosl.org>; Thu, 12 Oct 2023 20:21:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AFD67417AF
 for <intel-wired-lan@osuosl.org>; Thu, 12 Oct 2023 20:21:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFD67417AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VE370n_OsrMs for <intel-wired-lan@osuosl.org>;
 Thu, 12 Oct 2023 20:21:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 42022416A2
 for <intel-wired-lan@osuosl.org>; Thu, 12 Oct 2023 20:21:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42022416A2
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="416074520"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="416074520"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 13:21:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="820290658"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="820290658"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 13:21:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 13:21:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 13:21:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 13:21:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 13:21:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SQmOpoxGfX+2N5xLh+mMttUEY9/PcEboUMjoG+6K2ojup9GdNnHN/r3p5GRjRJXHOjG1Z/ss/wN1XPHr+malwUcdETvOMaH9oSLIVbG19LzBG7l3DZLqr4Y8j4Q22N7hpsLcoWh/s/yJQoNCc73QInD3scIeEPSRfuqIno2PW8ybIvQGgTi4byMc+MU+45qzUuBK1uS/csyQBre0Kyo4E22Mm5qOCJxf59XnwlmhYBlVgA39dGbX6G8RWlbCCIZWRZ5+/SbPvqr5RaDD8x1QImnvwPTKtezHtz512uov3oiMZE2OLSqR+i+l8fRnUsB4/vY0lihkoGHQHm4ZhhcIhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fDIxfzJp8jsDY95Oc+WrXeDUJ7YTzpS/BzQWFaV9qQw=;
 b=Ocdk0FLcMywD3CdqJRE9Gk4YzX/PUFsE6sphW1K0QJyYVimITyjF/YjAdsLsIe2tmGQI2H1XT2p5B4tUy/UoMxet/LK3k4CNRsjJDL6HPP3ja79OO2H6jRt7XqqTtL9FPqeqfx1mfnbhfYflEamjG4cXL0dp5nWPJ5HrWlfsbaKvkntMMwCpiq88wibARg9n1MO4ihhBvL/EuLstAZzng0Hl1M4qwkhXuw6rE0nmC9FSAeG1F1YrMiyk3/v5NBSrpQjMQO6G5X7XdQX09iYgOQ3IIMjIZb4Bm/xllwE6zZhoIHIlFNWBhB77yAuQxXGkv9xUWPx5fQWmGjnDRADSEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB7155.namprd11.prod.outlook.com (2603:10b6:a03:48d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.43; Thu, 12 Oct
 2023 20:21:03 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%5]) with mapi id 15.20.6863.043; Thu, 12 Oct 2023
 20:21:03 +0000
Message-ID: <75d321c2-c2d6-40f7-ac1a-2b7000133923@intel.com>
Date: Thu, 12 Oct 2023 13:21:00 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20231011110258.203770-1-karol.kolacinski@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231011110258.203770-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: BYAPR08CA0041.namprd08.prod.outlook.com
 (2603:10b6:a03:117::18) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB7155:EE_
X-MS-Office365-Filtering-Correlation-Id: 50e1642e-d231-4f1c-ea83-08dbcb60c195
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y4j0mQgM0PDWYxBeGaHdF/+VFVctj3cYMZidqIro08Jq6ctoq/BJoBUJqYl02Ej3c43oSjjZ+Up9Ci6uuBUuUt8732dfm0mFsfezzvREZbZiIId7kHc1VFeGcNKKVxKbdVrQG2HI/kXKhp7GLEkamIoLt00r6JMmXMIDn3qM9ppw4PGQfb7IEPZpsp37VN1/U488A33AqGslqPJwOIrPkXGxXnSVFfP84wF6K4oVgdbL3Rl8N2dwMRCi/FDQN2KgXAp3dfxYD77hoDWaZyfxP2gxW/0GyxmbUcW80MnSj4gp80l4BcateXHrKY8z0m2ulIEGCXdzogNMC7gETq4JBB83F/Br6jHhYumshbQCgecFZgoSsWJelY7KAguPUIJFb9AHGc3wKkVXOWXsKFjzZndjKhx7UduCFwiiHURd4+7+bZemGEz85DzatL3wizk0UTAa3lbt2kOC9U4iQgoGbVI+5musb9AspcBavvLOE038LsgFEKl/ED6fRqDFXd96Xihjqh25+lOdFs9aHj4eD3F8QnzsTOSIQhWMhu0F3NZAO4a8Ko+KcugZP4iZJj5d3Au5YuR7McN4RTX5dg257F3vKHmmTsct0I1MdOV2J9b6iXlZn93FDeacPK77X+WmG4CEOsZZF1Avvgudv4gCWQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(376002)(366004)(346002)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(31686004)(2616005)(83380400001)(26005)(82960400001)(66556008)(6916009)(316002)(5660300002)(8676002)(8936002)(66946007)(38100700002)(66476007)(2906002)(41300700001)(478600001)(6512007)(6506007)(53546011)(36756003)(6486002)(31696002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eW9hRC90OXpvUVRyd3JzL0cvQ0Z6KzFHNHRSckVpZDhKS2xvR0tMRkhKcUJH?=
 =?utf-8?B?YzFMYlJOenh2alA5T3lONThuT2kwNmo5QkpaZzg2T3VIYTRGa29xVkd0TjhS?=
 =?utf-8?B?eEhXb3I0aGtwSTdTakJyRXcxem1yc2ZEa2JDQUFkandZWm5VZGpsTk40NXpP?=
 =?utf-8?B?dWNUZjhaSWgvb0k4ZXZIRkdUZVRrRWVydnNjdDZYcE1mRVhXd2JjOFZyMnpV?=
 =?utf-8?B?anI0ZTVrWHd6cWhMMkhvTWxZSTRPQjM4N3NQVWFBK1NTSWxJRitPZFRTOWF4?=
 =?utf-8?B?VkFWWHNQckJGc0hvc1lNMTNoV1c0YXEyQmdZMk9JeGFhQXcyRWZYZFpNejVp?=
 =?utf-8?B?d2pnMTdvZFkvbXhZN3NucnY0RW4yb1lKV09NT3lFRERDb2s4RWtTNWg4MnlC?=
 =?utf-8?B?ZDF2VDZQUGI4anJpaVhzcEZsWEdMT1dHNFkrOGFHVXI0M0VhdWw3V2RyNUVO?=
 =?utf-8?B?Mm54Ny81N0p1ZDcrNGhpejk0Z2h0WFNLWlZFWmRCWVp4TWlQdkdkSW5ZTEpG?=
 =?utf-8?B?NmVodXhxSDNRN1lwcG5oMUduUzIwQmsvTmxnNGhvYjF3NEpLSVZqU3NTTC95?=
 =?utf-8?B?RzMxM2VWSjI4bmJYbGdoL2x3OTB1eGhzT3E2MWgrelJ4bTkwTVhvZkNnb3BL?=
 =?utf-8?B?Tk9HanB5QTNVUjFFaFNtc09DWjJHUi8yZ0krTG5ncmxhVzhkRmVLbGhqREEw?=
 =?utf-8?B?RVdza1NCMjRGYVdJZlRsWWxaTys0WFNHS1d5MEJuUVJyVzZ3TlM2YWRRRUVi?=
 =?utf-8?B?OWVTK25pY2RZaTIrczdiWW1SRGZVQzFKeGwyL2lJMkpHUjVvS3JIckdpcWhH?=
 =?utf-8?B?ZXIxSzA0aWtnamp4cHpiWnlTK2laanJpWHFQSWkwV2hKTVJhbTAwTjVXN0RM?=
 =?utf-8?B?ZllFUGx3Lzh0WlR3aXNJbGhHN3BlMVJ0MzhVZ1NwamlSaG8wOFJvblhqVURl?=
 =?utf-8?B?RnE5TUZJMDlXN1NhQ1p5cHkxRnpGUldWc2pEZUxyY1RPdXU3YnZBVmZYTGli?=
 =?utf-8?B?cjBER0YzdElHR0htWU1OditKNTh3MXA0aUFBQXNqazIxQW04OU14T1NZbE94?=
 =?utf-8?B?REF3QVBHbHU2MnRja2pZeVNUc2VjV2xIUXVoMUw3cDlNZUxvaXNqZkFNTGhW?=
 =?utf-8?B?WllzVUtNWWpYcGY2YVU5ZkdIaHRRTjFWUnIzY21HT1Y2cWZ1ZzBROWV2UU5I?=
 =?utf-8?B?WnVGMmlzUzV1N3gvSWxUSXV1VVBiNGw0OUswMUFlUXoyUkdMdHlpRjJ6NWQw?=
 =?utf-8?B?RVhtd2ZiSXEyay9TZHVpazJZT3hxL0RvbVRpTlZHZ0Fwc1dTS3ExREtlTUlW?=
 =?utf-8?B?eEhxMGlzelhodjMwazFweCtoeXlZWldJOUNkVDRZT3VpYno5MXQ1TlN5OFVL?=
 =?utf-8?B?VEdERGdtYjdzekZKVDQ4akxHTmZVWDR5SXpvWVV0RHIrYkVmdGgvM3VjQWxq?=
 =?utf-8?B?ZExTTUJXbUdjd05UVk45b2JHZlRWR08vcEhtK00xU2dxRHduWHNwcFB2VHVv?=
 =?utf-8?B?R3owcUlGNWQ3QnZmdTdQWWFQLzJWMVBrT3pYWFNIUlFuaWRkR0JIVXYwN2Ez?=
 =?utf-8?B?MUdSb3dDK01ROWs2SFNUMUxGQ0NQTnFxZWpteHI2MHcxRVJuVGMxUFhvM3RR?=
 =?utf-8?B?bDdrZU9VbnRNWnJnL1d6dENzVDRmVkZoT3JCMk1EZkVTT1RrWmNueEQ4bUF1?=
 =?utf-8?B?SWxIWlk3OGs0TFVtR2k2TmVYYS8zaXNLMFRLOCtQL1YyQmRXak1VRGxXQytz?=
 =?utf-8?B?SUI0QnA2VjBURVY1ak9vNzBjeEd2bWRxQko5Qms0OUg5c0lrVGI2K2hqQW5I?=
 =?utf-8?B?cXk3VHQ1elRHbWNDYjlIUURtMlhVVkhMYmUvNUZOZ1BIZ3dJWTNlZFVIemxj?=
 =?utf-8?B?TnNpUUVzSEVSRXovRVFwRUZKNlFLNkpTM1hTQnB0Zk1PbC8wdUpCc3lFMld3?=
 =?utf-8?B?eFh0SnVibUZVekt1amZHcS9HL2pOeVMrQjlMM05rVEFobXhsV2FBbTZ3aXRO?=
 =?utf-8?B?TUd2RUllYVFNT3RIVVRVbkU3VldoL1BXUy9OazZ2S0o0Q3BkRWtMTElsSlpr?=
 =?utf-8?B?K2tXMHRaTm13Nk1SaVhGL1hGYkdub3h1WFRsMUJ6QlNCaStoNEg4YjZmQUg1?=
 =?utf-8?B?SXBCMVRRM2N0ZkFRUjVpb1B0WURtYzBMZEtsc1JkWVJvREpuUVJ1ODZKTkRE?=
 =?utf-8?B?a0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50e1642e-d231-4f1c-ea83-08dbcb60c195
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2023 20:21:03.0786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CZ64o4112vTrUUrmUWVfchgLUX9qR0vF7Yzn2K2yxEXjLjOhq+bSH02H0DEZi35tnhZshxCP2QxK/uuNTRn4ENSZQRdK5SgwwNjmC4Yr2VA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7155
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697142072; x=1728678072;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7uuzt32b95+Uvir5NKjIyx29eamqi+/hEytwF3DwfHk=;
 b=BUQC2a+tplCyUvExLz4JrtGVUNXvr9iX7316Xj/6oRja14MwfbXz6p9M
 olGDcBus9/ewtfkCau9vU+NXj3HW5i30wMVtfCjGxVLse9oLPti6XbrBc
 csDG0UejtZYGkbukvPeWbqIuwvMdmgzg1laUp63gNhyo0ZU9tv73hDgxw
 BYJ79kEfakXMbDuHXB7viWARDtMXEUXxXn2QWh0Lh8QbrLD2pYCfB8x+p
 47K7fQVdGiHTlnVzSw/AvMIqjAChFvekpi7yRkyJ734N+ZfBmbxJPwncG
 SzcgWawNKul8DpmcQxHx0AI5r0z0T+NfJMhyKCnE0B2f6q+qvdciDBMu0
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BUQC2a+t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Don't disable PHY
 before settime
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



On 10/11/2023 4:02 AM, Karol Kolacinski wrote:
> When settime is called, the driver tries to disable the PHY to avoid
> PHY clock running and giving incorrect timestamps during time change.
> PHY stop procedure takes more HW writes than just marking timestamps as
> invalid. After settime, the PHYs is recalibrated and timestamping is
> reenabled.
> Change disabling the PHY to marking timestamps as invalid.
> 
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c    |  7 +--
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 49 +++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
>  3 files changed, 54 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 1eddcbe89b0c..50ee90fd77d6 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1796,10 +1796,11 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
>  	int err;
>  
>  	/* For Vernier mode, we need to recalibrate after new settime
> -	 * Start with disabling timestamp block
> +	 * Start with marking timestamps as invalid.
>  	 */
> -	if (pf->ptp.port.link_up)
> -		ice_ptp_port_phy_stop(&pf->ptp.port);
> +	err = ice_ptp_clear_phy_offset_ready(hw);
> +	if (err)
> +		dev_warn(ice_pf_to_dev(pf), "Failed to mark timestamps as invalid before settime\n");
>  
>  	if (!ice_ptp_lock(hw)) {
>  		err = -EBUSY;
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 6d573908de7a..5984df8cb942 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -2323,6 +2323,36 @@ int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
>  	return 0;
>  }
>  
> +/**
> + * ice_ptp_clear_phy_offset_ready_e822 - Clear PHY TX_/RX_OFFSET_READY registers
> + * @hw: pointer to the HW struct
> + *
> + * Clear PHY TX_/RX_OFFSET_READY registers, effectively marking all transmitted
> + * and received timestamps as invalid.
> + */
> +static int ice_ptp_clear_phy_offset_ready_e822(struct ice_hw *hw)
> +{
> +	u8 port;
> +
> +	for (port = 0; port < hw->phy_ports; port++) {
> +		int err;
> +

I think this is based on some missing work since hw->phy_ports doesn't
exist. Was this meant to go after your other series to fix timestamping?
I think I saw phy_ports introduced in some patches but not sure they've
been queued up.

> +		err = ice_write_phy_reg_e822(hw, port, P_REG_TX_OR, 0);
> +		if (err) {
> +			ice_warn(hw, "Failed to clear PHY TX_OFFSET_READY register\n");
> +			return err;
> +		}

I think you want dev_warn(ice_hw_to_dev(hw) here.

> +
> +		err = ice_write_phy_reg_e822(hw, port, P_REG_RX_OR, 0);
> +		if (err) {
> +			ice_warn(hw, "Failed to clear PHY RX_OFFSET_READY register\n");
> +			return err;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * ice_read_phy_and_phc_time_e822 - Simultaneously capture PHC and PHY time
>   * @hw: pointer to the HW struct
> @@ -3505,6 +3535,25 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
>  	return ice_ptp_tmr_cmd(hw, ICE_PTP_ADJ_TIME);
>  }
>  
> +/**
> + * ice_ptp_clear_phy_offset_ready - Clear PHY TX_/RX_OFFSET_READY registers
> + * @hw: pointer to the HW struct
> + *
> + * Clear PHY TX_/RX_OFFSET_READY registers, effectively marking all transmitted
> + * and received timestamps as invalid.
> + */
> +int ice_ptp_clear_phy_offset_ready(struct ice_hw *hw)
> +{
> +	switch (hw->phy_model) {
> +	case ICE_PHY_E810:
> +		return 0;
> +	case ICE_PHY_E822:
> +		return ice_ptp_clear_phy_offset_ready_e822(hw);
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
>  /**
>   * ice_read_phy_tstamp - Read a PHY timestamp from the timestamo block
>   * @hw: pointer to the HW struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 36aeeef99ec0..813ebc254135 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -208,6 +208,7 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time);
>  int ice_ptp_write_incval(struct ice_hw *hw, u64 incval);
>  int ice_ptp_write_incval_locked(struct ice_hw *hw, u64 incval);
>  int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj);
> +int ice_ptp_clear_phy_offset_ready(struct ice_hw *hw);
>  int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp);
>  int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx);
>  void ice_ptp_reset_ts_memory(struct ice_hw *hw);
> 
> base-commit: 2318d58f358e7aef726c038aff87a68bec8f09e0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
