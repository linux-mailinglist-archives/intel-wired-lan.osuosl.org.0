Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4856C824AC2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jan 2024 23:15:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD36161579;
	Thu,  4 Jan 2024 22:15:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD36161579
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704406544;
	bh=v7Pf7uJfDzDwtZewtrvxHdpSYG4id9xyB/ZQrZsc0a4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fKsl1Sa9iz8EVuwI6m/Y6mUOJ9obhMrZKBzcTeyiOwEhP1taFSZivkXOF3NDJVv38
	 2t/v2HixRNsgjZe5WHli79t4BTgrUzgNvKLxtbY4HHWUt2kD9X+VAflf8OMd5hPvDj
	 yg5vx3UwIExKGZPsa+++PpPaUJx4FR7X3XB69XNo+Ob+qBSbT4g9sXPBZFqtFK0BMP
	 ZYAeEMGrqx2bG5+OmLMHhnYeXCvx2OWnLXCH6OXaukZHhqFSD9z6z+qMLLN+K41PbN
	 mVHT2fNdDedzZvfId3NoJTu2JlBdz8DylD744kxyvAECYuxsPlpdoXHaElToG4Z4ay
	 wk0uFKUKoOFPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7AoJ_D8RczED; Thu,  4 Jan 2024 22:15:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B60560AC9;
	Thu,  4 Jan 2024 22:15:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B60560AC9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB6561BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 22:15:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B94B4843AD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 22:15:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B94B4843AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Df4QEPb442R7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jan 2024 22:15:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D85484395
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 22:15:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D85484395
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="382353986"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="382353986"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 14:15:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="780558287"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="780558287"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 14:15:20 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 14:15:20 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 14:15:20 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 14:15:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GoSgCWF8XAbfF0GCCR0nx5oDkJROX4XPJTJT7yGuiUJXmmGTF0mEM4npaI0vMRKPwdjchgJOzF5b/hN1NhYaxV998tSwl6ysli0UQAGt22DlRSCGFixmJlwbmEunlWKXnoa7EXSQpILSWkh+Q+T3IAn1Pyu2VN5tPCxarlS7DhrJMey/KB303ywXrZp2vF45NCA9sKYVrvf7UBMtVc2b2PscONBDN4hAlFTRmBw05rTYU79LIEVd6r2yJibhmkl+mzDJwJFoDM1z+vU06sr4zZ/ZpNeAe0oAxqn5Gw668XZW27kOd8XtbOw5cDyEolLUzTtKy3VsW7/hBDBbIUlOsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v7Pf7uJfDzDwtZewtrvxHdpSYG4id9xyB/ZQrZsc0a4=;
 b=TJmketa/RXdEjJIspjNFYUU4BH2J/xrrot8SwDwIr0sdQmgAKzNY1S4ZJxOqg24nmm/9zEgyo+bnaLHlES/vYb0wPO2kwMRSb79BrkJByqZkcq0yCNjY3bKJFCkYIUlL9ozCK0rd5Qmn1j0FX1H6uoywqPmLU2JAqjcFi8MJFwB6oYR0qbXZVj0q3eRnO7VJnT0N5KVnlO5WBQHyb+1L7u2Z3DBcxWXpQ3xuAANZadBD21QB4tM83+IEc0nIHVIltRLuWqQxBivyr0jIjit3b2zuZDdW4iPmegZCaeYKHa0kDbfmBSbatv/LhqQErkq/QNpq+8MVD/idc+RAUE+jKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8431.namprd11.prod.outlook.com (2603:10b6:930:c7::17)
 by CYXPR11MB8662.namprd11.prod.outlook.com (2603:10b6:930:de::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.13; Thu, 4 Jan
 2024 22:15:18 +0000
Received: from CYYPR11MB8431.namprd11.prod.outlook.com
 ([fe80::9e87:7838:824d:df40]) by CYYPR11MB8431.namprd11.prod.outlook.com
 ([fe80::9e87:7838:824d:df40%5]) with mapi id 15.20.7159.013; Thu, 4 Jan 2024
 22:15:18 +0000
Message-ID: <097828bf-3887-431c-9327-8c91ced55341@intel.com>
Date: Thu, 4 Jan 2024 14:15:16 -0800
User-Agent: Mozilla Thunderbird
From: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20231227173757.1743001-1-pavan.kumar.linga@intel.com>
 <5ae1537b-73dc-45a1-94a7-669e63dc74db@molgen.mpg.de>
 <90ec9268-437e-46af-84a8-6ae8213b4f33@intel.com>
Content-Language: en-US
In-Reply-To: <90ec9268-437e-46af-84a8-6ae8213b4f33@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW3PR05CA0008.namprd05.prod.outlook.com
 (2603:10b6:303:2b::13) To CYYPR11MB8431.namprd11.prod.outlook.com
 (2603:10b6:930:c7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8431:EE_|CYXPR11MB8662:EE_
X-MS-Office365-Filtering-Correlation-Id: 7605a50f-d987-4135-5caf-08dc0d72a25c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6vxPVPjJ9St3KVmlcfmk8docgaW6dAgctJzI9HwZoRDJ8BdB9FCmTTiDz4VT1V0Z5w0G5vXiTCWMjClI9KW4u2KItmhcHJ1wejFF0IxReAycEupwDfVaLyz8An1dinfEQtG2unoA4PyYaQgdOSAUIcpPTsvFC57Zjv0LZDLgIsmWw4b0MxprFnMS3qpM27BvxQY3X/IgayZfpwZoJJxSqw9WLs+qEMpZW6kQtduWfyZYhKi96NJMRxHEOFtWLGFI0PBiquupnsLoBjzigwKnf71OMrOixygDzbTijOx4iU3HWSbGg5lVx/zezcr5IBbwZtkbX8bh/OttD2uexPgDyPo90VEnA1QTb7OFYBfiZ4hwtM7+83DMKIq2YVNO8nA3GjEFeNdE7suRUwMhOFlq7IMVjGAVaoE8Jr+cEyqtw8HDM1836OSy5xFHDfXQifjsnlDl8MhwWH6/vu9ckCSdRa5+3mGwzw1AvwWvz6tb2gbkCdKY/clSKfVkXETMYZpwrHKxG0xmedjkAn/Bi+gNuERe1Onwn9zaLPU0wkH0AZDMXDLkTvrwNQyF7Dk68HwcZoyWbnmrrUYOsum7CNEDGXbrHiD2Xm7AL6sW2yEvmLegzWU9n/7JWGAZ2mml6qJC0tkv+Zel0Mxt4L/MA4CVYDhpO4deoThWX7WuKlWJc9ZAnZxlal3rR9pPp8GJYDlH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8431.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(136003)(346002)(376002)(230173577357003)(230273577357003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(66556008)(4326008)(66946007)(478600001)(66476007)(8936002)(6916009)(83380400001)(107886003)(6486002)(8676002)(6506007)(966005)(53546011)(6512007)(2616005)(316002)(26005)(41300700001)(2906002)(5660300002)(36756003)(82960400001)(38100700002)(86362001)(31696002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzFVNU4xRk1KTDlEZ05FNkY0S2xrYjdLY21RVG02OWhBeC8xUm1NRE94cXlo?=
 =?utf-8?B?TldXdWdnWmdGUEJTNGYrQVZOcDBnbWoxcE1IUkN5VjIrK1c2T0xzblJkVi9v?=
 =?utf-8?B?Qjh5WWZqUlVORzAxcVNHL2VxdUc3UWZRRUt0RlFUUEdKQ085WXhBSXRmcGpD?=
 =?utf-8?B?OTcybmpTS1FlWWhIc2FaUVdiMk04ZGtpNkVFSXJsTU01WEtidXFjVW1COVR4?=
 =?utf-8?B?bmFhcGkveDVaY25weUJneTFiaWtJS21CL2diMWJabGw5dmo4Wm9LcnB1azZX?=
 =?utf-8?B?UTg0bWxKUkhBRTkydUdVaFlOekthSWZUczJrb2RtbWxHOW1rdTFQKy9LMVVT?=
 =?utf-8?B?MXlrQ2NPS29HSFlmOHZFMVg1cDYzcXZVd2UvcXRyeExaSGlKV3RUZ29Id2cr?=
 =?utf-8?B?SnM5dllsNlBKRXRYd0VNMkVudHF5cHhtbVpWTnZ2T0RmZ0wwNno4d1pTMEg0?=
 =?utf-8?B?Q1NLTmxtZEhkZ2d5TC9MYll4ZjdadEVGQ3JyV0tJanM1QlowUHlTeFVvUmNy?=
 =?utf-8?B?UGZQemlNSkZsclR3QzRZRDhsVGhTMlE0UG4vdHRQN0cyYzRzU2d5aFNNV2tW?=
 =?utf-8?B?cWpZQmV6bXg0Y25lVThFVUNZNE90Y0NHRWRlMFNjN0IwRUR5SkFPak5wZjNI?=
 =?utf-8?B?ejNudHN1WUxiUEc2TERVUjVON3hIU2lzU0ErMWpMOTBxZ2syQkJyY3NEZWRj?=
 =?utf-8?B?QUZFQjdNWTRBT1pUM09kdUk3V1dRWnhPQ01XRUlOZG9yNWsxWmRRSGVHMjNo?=
 =?utf-8?B?SHdhUFpkMWV6bzAvQmV6b0crb0t1MGxqcWt6bCtRVmJsNDMzWXQ4aW9rblNZ?=
 =?utf-8?B?b3dCeFlRaXN1WXdzOHg3QVN3TlVuaUJDYWt1bUVGK3VRK0lidWdlZjIyOThW?=
 =?utf-8?B?SlFMTHI3bldUcnJ4Ynl3d1JEY2xlYnpPK3Q0K1Izdk5kdmYyZHVzU2tiU1c3?=
 =?utf-8?B?Y2NkTW8xZEtjdUlrZHd1SlpQY1Fpb3MyM0Vsa2d1ZWIwTFYxYjE1Z09mOVNH?=
 =?utf-8?B?SFNUTEl3cTFranFlU1dncEFsSVp1bUtVampPVnJDQ0JZZW1sWWlBT3RucTc3?=
 =?utf-8?B?aDVXSHA0bTZpdnRRZk1KbWNiMmREd0RSSVZ4VUg1clN4YjRLZ1JyMk5iMFZC?=
 =?utf-8?B?djhnMjRZcXJaeWwzZ0YybjZZdVlwaTZONFh4Ujlqc0RESElDeUVrQWZNZUYy?=
 =?utf-8?B?enc5ZGN4a0tlUThmSjZiQXpmbVd2K1UyQzk2Y1ZZc2tHRC81NHYwdnNiZCtl?=
 =?utf-8?B?bHZxL1BLSFMxd2dZV0hQR09DUHpCMjhXVDQzWkFJeGpPSHVPbmRrWDBJSVM1?=
 =?utf-8?B?SGhGTE1FWVpjSEY1WnZrTUd1VGphTFZ0VEhsZGVHQkNON3hBUk1JYnVKVjFz?=
 =?utf-8?B?UGVkV2h4YzNNSkk1NksyYkhVZFF0Sy9menVacjJvOFRYTm5DdVdTT0h4WExJ?=
 =?utf-8?B?TjFvbC9nbXM5MVl5Y0NiNUdsODhmWmJpMUxINXVaYk44aXAyTXhoYytsckph?=
 =?utf-8?B?aitKQ2ZqMTM5QnFtYk50Sjl6WVh2ZXNhT3JaYVRMdm14UFU5SFFhMi9nMml3?=
 =?utf-8?B?WmdGK3BwcVZiR09mWXV2Q2Zhd3FsRGp6a2d1Sk1yYk9XZkNkQkZpb2lFalE0?=
 =?utf-8?B?STR5VmJDRkswUTdZRzNtd3RWQmJDNDZVNU4yd0JJZTM0eE9tWDNuaWt5SzRE?=
 =?utf-8?B?bzIxZktoeTBzamxDQnhmZTFTTkZNdWxzSUxFSFJjN2FGTVEyY294STR6T29P?=
 =?utf-8?B?aXZ2NHZhSFZ3Y0RGRXUyWTQ5YUZ2eEhOZ243MWNwTE9mOTYwYms5Q0dCMXNM?=
 =?utf-8?B?clhIRGVLYUhhV3BpcmFFZ2JhRmtLQUwwMmR4YnZWTWRPQXU0cldhRU51NXd1?=
 =?utf-8?B?citkVm5LOGREa3V3V3o4MjNXWnFjblBnODAwY1BOY3FGamRYdkQzdUpwV2Yz?=
 =?utf-8?B?aWZkNHhSVWc0MVRCMWJ1WldTTmhqaEpteHV0R2J6TUEvcWMwRVA3S3VHOVJx?=
 =?utf-8?B?WjF0T2JjaWtXRm4zR01pcHhDc1hYOGJGTSs5NGZ3ZCtKMm5Fc3dFV2NVN01H?=
 =?utf-8?B?dHNLVDRpeFI1dXpyMlpiSm5jZ0VKd0NXcDF0MkpKR1NPbXdiZTBweEpaQnRi?=
 =?utf-8?B?aldiZDNrSzN2UU1SU3pSWHZVNGdYK1hsekpsbzdSeE5nSkF3L2U3VTlZNi9x?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7605a50f-d987-4135-5caf-08dc0d72a25c
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8431.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2024 22:15:18.2473 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yXww3hXjn0gNqSNYZQj/b1tsQaFqnN/SlAIoYphrI7p6f2oyEGZZpoqBv7c1YJoPzvsWFyeAUWW2xBLzxem5keNwU9bbJT/pxQjUmlTBa6c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8662
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704406535; x=1735942535;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1A8QNne9C+hb6CWa4M19quApJikIDhfZQplgpT5G5m0=;
 b=jkCoxOgv2Pq6/F4UHkudDoEthA1c96wajKit1UcWvtJDpkq/xSes/vmi
 clTAvKRaWgqQjenXd+Te8uiRZQQAe2TaoS5PfHwwF0nMl9/8d1LhZcAks
 KOnGtrkb9zMLJhqf6DCR0wVbeM/AS8gz/MIU6lWlSiWok008W/mDkH+8z
 BSYsCXuO3OGaBin7knXS2Ju2/36bVT82O3BBEnPfpN8ST42TWgKid/F5V
 G/wXgcgg/RdMGnmWFjO7KbTwnSJvT7MCx6fGAn924+qMaTECr/0IMVR0c
 DlOjFT7c1yslJmYnou2483YGQkrnD82uto8VCV02S2f2FCHGM9QZ/wVPb
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jkCoxOgv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: avoid compiler padding
 in virtchnl2_ptype struct
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
 Emil Tantilov <emil.s.tantilov@intel.com>, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/28/2023 9:39 AM, Linga, Pavan Kumar wrote:
> 
> 
> On 12/27/2023 1:45 PM, Paul Menzel wrote:
>> Dear Pavan,
>>
>>
>> Thank you for yoru patch.
>>
>> Am 27.12.23 um 18:37 schrieb Pavan Kumar Linga:
>>> Config option in arm random config file
>>
>> Sorry, I do not understand this part of the sentence. What Kconfig 
>> option was selected exactly causing this behavior.
>>
>  > Apologies as I couldn't find the config option that was causing this. As
> the driver compilation with arm rand config was failing, posted the fix 
> first. Will debug further to find the config option that resulted in 
> this failure. Thanks for the review.
>

After further debug, found that the arm random config was using OABI 
(old ABI) which was inferred from the compiler option '-mabi=apcs-gnu'. 
kconfig option 'CONFIG_AEABI' is related to this and was disabled by 
default in the config file.

Static assertion check passed when compiled the driver with 
'CONFIG_AEABI' enabled. The check also passed on explicitly changing the 
compiler option to '-mabi=aapcs-linux'. I will update the commit message 
with this info.

Regards,
Pavan

>>> is causing the compiler
>>> to add padding. Avoid it by using "__packed" structure attribute
>>> for virtchnl2_ptype struct.
>>
>> Did the compiler emit a warning? If so, please paste it.
>>
> 
> Here is the compiler error and also will update the commit message with 
> the error:
> 
> include/linux/build_bug.h:78:41: error: static assertion failed: "(6) == 
> sizeof(struct virtchnl2_ptype)"
>        78 | #define __static_assert(expr, msg, ...) _Static_assert(expr, 
> msg)
>           |                                         ^~~~~~~~~~~~~~
>     include/linux/build_bug.h:77:34: note: in expansion of macro 
> '__static_assert'
>        77 | #define static_assert(expr, ...) __static_assert(expr, 
> ##__VA_ARGS__, #expr)
>           |                                  ^~~~~~~~~~~~~~~
>     drivers/net/ethernet/intel/idpf/virtchnl2.h:26:9: note: in expansion 
> of macro 'static_assert'
>        26 |         static_assert((n) == sizeof(struct X))
>           |         ^~~~~~~~~~~~~
>     drivers/net/ethernet/intel/idpf/virtchnl2.h:982:1: note: in 
> expansion of macro 'VIRTCHNL2_CHECK_STRUCT_LEN'
>       982 | VIRTCHNL2_CHECK_STRUCT_LEN(6, virtchnl2_ptype);
>           | ^~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Regards,
> Pavan
> 
>>> Fixes: 0d7502a9b4a7 ("virtchnl: add virtchnl version 2 ops")
>>> Reported-by: kernel test robot <lkp@intel.com>
>>> Closes: 
>>> https://lore.kernel.org/oe-kbuild-all/202312220250.ufEm8doQ-lkp@intel.com
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>>> ---
>>>   drivers/net/ethernet/intel/idpf/virtchnl2.h | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h 
>>> b/drivers/net/ethernet/intel/idpf/virtchnl2.h
>>> index 8dc83788972..dd750e6dcd0 100644
>>> --- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
>>> +++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
>>> @@ -978,7 +978,7 @@ struct virtchnl2_ptype {
>>>       u8 proto_id_count;
>>>       __le16 pad;
>>>       __le16 proto_id[];
>>> -};
>>> +} __packed;
>>>   VIRTCHNL2_CHECK_STRUCT_LEN(6, virtchnl2_ptype);
>>>   /**
>>
>> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>>
>>
>>
>> Kind regards,
>>
>> Paul
> 
