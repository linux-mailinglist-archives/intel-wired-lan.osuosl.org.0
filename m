Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F207511FB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 22:45:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFBD541F83;
	Wed, 12 Jul 2023 20:45:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFBD541F83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689194746;
	bh=7AXKt2l4R1YFHvtE/7AucRQihbFdzr6AIb0L2utBEW4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LKFZV8HRFqtUmzClwO/VsC1KZgMFFnutZ3Ka+J+jx1CxUPdVEig3igknxxN4A9K6I
	 /0glEfzcpMprNpepfoI0ZuULoBmg8l2pz9+A8Uf6hF1Wp2O9tniSXlAVFkJUZtvwMw
	 bm6vyr26NQ/DN6U0C7G987d3Rhe/p7rA7Zwu82wZXBqO0rCoKbC9plsWHN1LvJZfKw
	 ioPoRTiUpu8jyw5gpbOZXBjPuaJr7G+D0YT4uOIXqnFwxAXGj5JvcZdWXESgdlqNjD
	 sOV4Axl2Lx1WADdOUD9VIxVW0l1VdU0GH0mfLBGctpte4OIpSt8YrbckDDqojD7Fy7
	 1DwsVp2UQEUhQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YSqn6yM-v71U; Wed, 12 Jul 2023 20:45:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BD3841F7D;
	Wed, 12 Jul 2023 20:45:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BD3841F7D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C7491BF400
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 20:45:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 538DB400FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 20:45:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 538DB400FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0lrQ1sAo5HA1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 20:45:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 291AE400AB
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 291AE400AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 20:45:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="368536867"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="368536867"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 13:45:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="787174824"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="787174824"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 12 Jul 2023 13:45:37 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 13:45:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 12 Jul 2023 13:45:37 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 12 Jul 2023 13:45:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RzQMEeiWEBq4P/LNl9VBGZtheEO6Z61RXniCLq8JoDqydDnKMjYlMhmaZOKFuUsgdvAeVY+WXqrLsCsIHQkla9q0HEqy/A14NMjsWf8k7w/+hZPxbCcEIbtItqP8CcXn5G9XmDtZLwujEyI5Zx2cTjjfvY/LJa6TLo7bR2/7yXMgjbCXgXGnCWZVShQu+IwclO95hxZ6tpjfnHOc+KVJnCq1GOsA76OSb3MUBLTqTyzf3yXiXDfWEzaOAtik2LQt2VM8ApQ+ocfseAcP4X4s/YKykAtiGY3VdEUC/rxLs3bSXk/zUxumUBrxNaEJ9Q15WEijzQkGmFy5n6EXNGt70g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LOOvWF8KpeNDK9igtRwRYUNbRxo5VNRxISJLxrPxF2U=;
 b=ZfAAmws18F0uP3mN07qjfNfSsXHl9cNQLzV0QWpGgLqrxH9dLOc1vakpS3+5uZGbmoEYQVOzy2fV0rb+xLD01cM6zrRiNTqE7CUkB8GHjSjuBoiN1K5AoG4QAVFncKQ/bpEdaQqv5RMnnrGXKS9CqgTs6UVm1SuOlv+qNg9VlIN7wbWDEffVCj/sta4rfgCN9Ei4jJokjA/A7XInos37vGnf8+PZUuysIwJmFpOSRjUvmK+ORRNwB34wYr7LBl6kmxO/CvViBqRLSfhR3KYsnLfjE7+kNNLLyWCvGtsnIlVufFwWMRZGbCwFwRxm9eQEsrvtxVpZcBHE2c19ZmPIlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY5PR11MB6113.namprd11.prod.outlook.com (2603:10b6:930:2e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.31; Wed, 12 Jul
 2023 20:45:33 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bd89:b8fc:2a2f:d617]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bd89:b8fc:2a2f:d617%4]) with mapi id 15.20.6565.028; Wed, 12 Jul 2023
 20:45:32 +0000
Message-ID: <14eb96d6-751d-f1c2-7019-1e1b9996bbd7@intel.com>
Date: Wed, 12 Jul 2023 13:45:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230711122741.780900-1-jan.sokolowski@intel.com>
 <20230711122741.780900-2-jan.sokolowski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230711122741.780900-2-jan.sokolowski@intel.com>
X-ClientProxiedBy: MW4PR03CA0355.namprd03.prod.outlook.com
 (2603:10b6:303:dc::30) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CY5PR11MB6113:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ce06e3a-a555-4c46-3e52-08db8318ef9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KkCa/vo8HK1T0QydjGWEv99aEciIHyByDv+6xBpxtc5UEZYZWaNMpwdjoLO7ixBAhAlkyRasTBMzm2gORI9HJff5Ba0/mL8R0Ntq4NIyI0/Qe4Tu0HvUoYqXWJn5IRLTGksGl0jAZGvMF2Q8nD8ixfxEDMgkF0SDnb1d7oCNLgIGRN3rjHZztCs39Yaeksm7NGLTOknQ2/0X+d+ollTvv65EKJOFE7XO/5QkxUOKxecnn/y6fA6R2lscdDVvn1tmiwrpkCHJ/ulMf1E6/yZtmrmbzPzbCqdRJWqz0m2cuB+CB1dXEi3rgiF4BqCe/51nyWIef87OfTKp2hr9Xbr+Xj/kT+06ai4kMDTqChgVGC9PPz+JU7ziGVDWeHgbQLm1tatnfTrjnypliVLRYp2aCGMLpEuTL0UCj95r/pFNTLq0eAOuXHr1MDBXHdR3Bh8M8rqyF4xrUg7PY5V8jEosyO48hVVu24k4OyuyF4Q/PcAaAPnUSgEy3TB4ZwbRUhXDhX12SGV2GOK8B8KIhWGL4VqrnV+UhIh5v9dCv4JGd/qxnuAjHWei2+y1T8QsLHnvt9qvaKOEZ/YLfAIDkNT/OtDDWxPq3s4DpA8p60tryAeJAd4l4Extqo+VzkKwmLH4YUWCGT7uuUyVuRzcs+TgXA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(376002)(39860400002)(136003)(396003)(451199021)(31686004)(6666004)(316002)(8676002)(6486002)(478600001)(36756003)(66476007)(31696002)(66946007)(86362001)(66556008)(8936002)(41300700001)(2616005)(186003)(26005)(6512007)(6506007)(38100700002)(53546011)(83380400001)(82960400001)(5660300002)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nk5WUWc3YzBOV1Q5RXl1bC9mLzY1MFE2eWxpandmaWI3bzlVWmdBU0M5UWJy?=
 =?utf-8?B?UlhRcDM0dkpIbm40Q3g2Z29iTmZsQmo0N2JnVG1RMGc3UDRqOTFqbmNXS2xR?=
 =?utf-8?B?MTNJRUdXaXptNkJ0NGRSNGh2U09ZWFFVYW96MFhrQUU5NWJaNy9SKzI1dXc0?=
 =?utf-8?B?Vi9ieVBrUmFwSXZMbFQ5eHRnSGt2ZXh2UzBDejZtTlFmaWd4SnlyWnFwb0Vv?=
 =?utf-8?B?WnhIb1RyOXVqR1l0Wi9zd2tueGNtVnpPSTY5L29Ub1Y3RE83aHR2TENRMVZ4?=
 =?utf-8?B?QWZPbm1seVByNit5MXN5cDVsR08rT2RtekZPb25qUjBVM3ZZRmlBVG1LWTRn?=
 =?utf-8?B?cE01NFZsTUFXZzc4UmdZWEhRaGZVcjFXMElpenloaUxldldvY29nanBZcDNE?=
 =?utf-8?B?YmpQQ0FybzNxSU5xM20xRThhYy9Bc0FoejJ1cFpqWm50eHRFNUtJUy9yT2l6?=
 =?utf-8?B?eERlMjY3cGJKdHVWR2VBN3VBTy9hMUZOZk5SdEJ3dGxqWFFOT1BFRU5BVmhn?=
 =?utf-8?B?N01Qc0VId1J0Z3hpTVBtQkxDVlVCMWgyNTBFK3VtREp0cTZNTk9Ld2JyVHVq?=
 =?utf-8?B?WWZuVFhyelo0WjIwWjg3ck5jMVRrNlVhSjVNU09OTk5PdThxQ1hxeDMzWmZo?=
 =?utf-8?B?SkxkNG5OZnlPSUJFcG5iSzlBbWZGVjd0dXdPbjRxMzBXcTA3M28xVkhxbHl1?=
 =?utf-8?B?WHF0NUFheWFEa1A1VlJhLzk4ZHhZTnJPTk9jcXRrbVVTQStRcDVQVk5mNllt?=
 =?utf-8?B?eENuS3NjK2dPNTJGS1htSTJ3alNrUWNtMnowYTJOWnBEN3JKajhVeTNEQkhh?=
 =?utf-8?B?Szg3aTFHbS9HMng0N0IzUHVVaVU0d0VZODd1RkhRMFRrVFd1bXVmcGgzbjVE?=
 =?utf-8?B?eXlWdFErVjR1dEpjemQ0bWlwS0lXTmVNYjdiVDNvY2JFc0ZsdG9Xb1lDN2hD?=
 =?utf-8?B?S0VWN3BGNXNtRnFacUpmWEJaU3FkT3VISE5HZnlCUno3WjcyNVZlUHA4Z1lS?=
 =?utf-8?B?TENlZHU2VHNIZmxyUjMzR25HWGp5ekRVcHordjlBdjNYWkV1cUR0RU9lSTNY?=
 =?utf-8?B?djBXN3lnalp6eEF0bDc4d0JkZHRHdWFldTU5eDVhQmRYN2hkVGVXLzB1Z1d1?=
 =?utf-8?B?SkpaRVhWc2cyeHRxMGFMUEUxdUNReG1DRDFrTHpIaCsrR2Flc1VERmhDaFJ0?=
 =?utf-8?B?am9QdlY0TGNlZmtLUnRYWXgxVlNSTEFrQi9BNW96blUxd3RaSXBkL0U2UE9R?=
 =?utf-8?B?VnpwRXhzdndta2VlcjhxVDVxNlNrbStpT1o4RUkyMkVJNU5XVzhnSHg3empU?=
 =?utf-8?B?bkFSdWo0dVB4TWhNVU5UUjhCbFhHcmwzWGIwQVd1NkQvMjhnZ1krRXp5V293?=
 =?utf-8?B?SCtsSGlsZkVCby8vaHBkV1krdm1aSFlTY3ViNHRnVmRqY1pBZnFtVmlSeWdn?=
 =?utf-8?B?U1hpYjJGek5reHRHZTNnR1hoRjk4M3MxRWdEbmdxNWprMlM3Vmx3cEVPaTFm?=
 =?utf-8?B?ekNRYzVSQkpwenArRXMyR1RHbGRlblBOeXp6LzJ3MDd4Y0hXdi9hVFY2T3lH?=
 =?utf-8?B?Q2tqRmUyOXlvbWlTU3NNUXExNWZ1cVNMaExWYldVcTNUSE9IVzE2K2hHK2lE?=
 =?utf-8?B?Z2lhblRNakZ1dmpmZVp3cWFzeUNpUWxkSGZqWll6c3d3OWp2QW5idTNZU3By?=
 =?utf-8?B?dVVHSUF1ZXlJK1AzRTVoWnVRUEtUT0FrRUpXUTJ6SFpSa2J5L2NSYlJiUFZW?=
 =?utf-8?B?VkR2cUVEbFhrQk5IYWRJQUVVblJpNWNWM2VNN3hkQVRIQWJxTTd6V05PODZY?=
 =?utf-8?B?UkF2VnF1T2s5dDNhaDdhNWZhRjBFOXJ5ZFJHajNTSzBCaWtnU2hITXZYazJN?=
 =?utf-8?B?blYzdDRtNnlyeG95SXBldTBtM2owOHAraTRQTHZXeExIU29IZmVZbmhiUytk?=
 =?utf-8?B?ZXo5V2I1QWRaVDdkUmF1RW9BWU5KTVJXY0MwVlJoRlNFQnVJc1UxL1RuM2d6?=
 =?utf-8?B?WnpqUkFHWmZZY2pjSlF1UkdNTnFIdTFqYmJyM1lFSWNNUVNzUnRKMTFMSDE0?=
 =?utf-8?B?UCsvV2dPZGhzenNWZnJkaTgvT3FKczVBVzE0dmU0R2Zrbm1WR2NOUlJXZVJi?=
 =?utf-8?B?aXVHcWxBak9LYzJUejJHVjVkc3JUbkIyVlVQcXFlY0NHTndxZHZqNjhhMFdj?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ce06e3a-a555-4c46-3e52-08db8318ef9e
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2023 20:45:32.7437 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VjxQI2mwsWMjJltoOwkNJNNRGQwgLU4WkvYNVz//uAzwZW4gsd3Em/K4NLP0sJ7auLXyprOxReyzy3ATm5m8lgtxOrt5WSlwaxSZ3yUq/sE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6113
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689194739; x=1720730739;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TetbyTIrocvNAcIiT0jJ4C9oF16B6QosFEZeHB20K/I=;
 b=kjDHFM6RgZt1OFhPpkhd/ZO0QuIrakRq4exymP4R68spJ3cX8NnE5SLf
 +1grUM4t8B0GTSb3I06ldZRBAc+DNTKRoCKpBchsDxxdeUnBilwuW8ijt
 NF0bwcDUaloSz+okDthECJVwtXwPTuIDpSO9a2n4QUA4SNwI7Glw5cRLL
 wJdadCilkWZZXC66puyUPz11OcxNpHAdcfmjZ4qLPNJydIxPZ+onMYGXa
 pBoChPveooeHailsZUzXF/ZsQhfSzSCOZvwHOzkaU65RyRCur5Nm4oILl
 3kA52ZnUsrqNjUVrOP83kYBokVXCmZ0/BuukGe3I5PK1/xzerl6h87VRv
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kjDHFM6R
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] ice: add FW load wait
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

On 7/11/2023 5:27 AM, Jan Sokolowski wrote:
> As some cards load FW from external sources, we have to wait
> to be sure that FW is ready before setting link up.
> 
> Add check and wait for FW readyness
> 
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>   .../net/ethernet/intel/ice/ice_hw_autogen.h   |  2 +
>   drivers/net/ethernet/intel/ice/ice_main.c     | 41 +++++++++++++++++++
>   2 files changed, 43 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> index 20f40dfeb761..531cc2194741 100644
> --- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> +++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> @@ -335,6 +335,8 @@
>   #define VP_MDET_TX_TCLAN_VALID_M		BIT(0)
>   #define VP_MDET_TX_TDPU(_VF)			(0x00040000 + ((_VF) * 4))
>   #define VP_MDET_TX_TDPU_VALID_M			BIT(0)
> +#define GL_MNG_FWSM				0x000B6134
> +#define GL_MNG_FWSM_FW_LOADING_M		BIT(30)
>   #define GLNVM_FLA				0x000B6108
>   #define GLNVM_FLA_LOCKED_M			BIT(6)
>   #define GLNVM_GENS				0x000B6100
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index e3245ee635b2..48991c6e94f5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4561,6 +4561,35 @@ static void ice_deinit_eth(struct ice_pf *pf)
>   	ice_decfg_netdev(vsi);
>   }
>   
> +/**
> + * ice_wait_for_fw - wait for full FW readiness
> + * @hw: pointer to the hardware structure
> + * @timeout: milliseconds that can elapse before timing out
> + */
> +static int ice_wait_for_fw(struct ice_hw *hw, u32 timeout)
> +{
> +	int fw_loading_register;
> +	u32 elapsed = 0;
> +
> +	if (timeout == 0)
> +		return 0;

Should this check the register instead of always returning success?

> +
> +	while (elapsed < timeout) {
> +		fw_loading_register = (rd32(hw, GL_MNG_FWSM) &
> +				       GL_MNG_FWSM_FW_LOADING_M);

I believe the outer parentheses aren't needed.

> +
> +		/* firmware was not yet loaded, we have to wait more */
> +		if (fw_loading_register) {
> +			elapsed += 100;
> +			msleep(100);
> +			continue;
> +		}
> +		return 0;
> +	}
> +
> +	return -EIO;

Would -ETIMEDOUT be more appropriate?

> +}
> +
>   static int ice_init_dev(struct ice_pf *pf)
>   {
>   	struct device *dev = ice_pf_to_dev(pf);
> @@ -4573,6 +4602,18 @@ static int ice_init_dev(struct ice_pf *pf)
>   		return err;
>   	}
>   
> +	/* Some cards require longer initialization times
> +	 * due to necessity of loading FW from an external source.
> +	 * This can take even half a minute.
> +	 */
> +	if (ice_is_pf_c827(hw)) {
> +		err = ice_wait_for_fw(hw, 30000);
> +		if (err) {
> +			dev_err(dev, "ice_wait_for_fw timed out");
> +			return err;
> +		}
> +	}
> +
>   	ice_init_feature_support(pf);
>   
>   	ice_request_fw(pf);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
