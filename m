Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BF476209C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 19:52:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D058610E4;
	Tue, 25 Jul 2023 17:52:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D058610E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690307563;
	bh=ttO/btpxkZnK4gby6YT3lFHXAnBKPqmwA+0Ts1fAz1M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yGlsc+3uSUTraQbZMAC1D22zLF0ucZmO3labTp6CVeziNrXJKG6zLo7+huWcTL0ng
	 O0KS5buAZ4HWHb8GCWg65eCNaXHvLtCpSqZFkOYiwHk5BpfeUq8jHOpelSn9lxqmK5
	 4kyI8cVaiKGZJ44BeHo9fhsxDbyGL2ujDuQA4IRUtkXiMSxGFFHaI2/xX66PVal1hi
	 M++rJrus+k+WILE9uGDN12C5Z3pdeuYCJ+z9+TjYDv0Uok+4Lz2L6g18Lk/ALXFJLL
	 p8UPeuV9wPA7fLwaoNKJhPAB6YlsYazuT7uD398Xl+uBCwT60xrdRye+D4DV4bJ6nH
	 xkbFslL5hsw6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VfyUbG6DxLr7; Tue, 25 Jul 2023 17:52:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E290760FB0;
	Tue, 25 Jul 2023 17:52:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E290760FB0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0DDBC1BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 17:52:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D9D4241577
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 17:52:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9D4241577
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OwTJWQnbU9pq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 17:52:34 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC0BB41574
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 17:52:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC0BB41574
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="357809669"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="357809669"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 10:52:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="869561405"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jul 2023 10:52:35 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 10:52:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 10:52:33 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 10:52:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fKdpN4nNV2A3gWVmaWkQ8vhwS2Ux82kRdspY0fhvyuZQ4zMTj8ZA6tLPh7nFilnKdzU/UqtRfebYaQN9Fr7+GZ3BFhWqApIcjoeMcEPb1pG8B9azJU37PuMmNo77ISHiJ/kr1Ii6IFRccRSQbjzLy3fkp5bDfw4r4p4W9EAUc6bCT1YPI4RkXVxuU4/nsK9MtiMtn42cLSh2qlg4m/UR4g7Qwl8aX5G5Z5kqizP4xhh1I9yH8zBgTyS1cBCAgVS5Qc299r+HK0MjWSlCxu43Q2fijM7oECYfHL29XY+2lYNq4GKC9vxWdU4Aa1DdkQzStWm/0kI/KEtggB6iDUd5tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q9yzzzYF0GvNKnm9XH4Ijeq+jHcBgqIcI8fyuHFxie0=;
 b=WVpNTuceaHgpaGfuJFF2MsXjlCrPoHonlBW5CNiA9QhNsqWZul+A5SVZVu2K6G2QhOeKNUKPy8mlZyDvDb/C+LrXMr+aFy/A9xfO+uH5zfuQMRfJRfwO0x14UwMCauhU+9OD/NX6nSeVeMH1AvRF08aP1Jd0eRA7BOzIPBEY7KJ0kIZ5hNqG+ZDGhGKGLzWbEdPSJu9TQ6V4fNQxMfxXaJhTm/Pvao0Ae0bfkDHjRZ3AMHadWlwfNPynlrDWf+SqA+S+omtNIUrvEuyqfVk+lL9ZHiILEj8wzNnW8jBI8i72oifPUghrgHdkFpLv0goncxy6lSPfjhkJW0fB7p4hvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN7PR11MB7440.namprd11.prod.outlook.com (2603:10b6:806:340::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Tue, 25 Jul
 2023 17:52:31 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6609.031; Tue, 25 Jul 2023
 17:52:30 +0000
Message-ID: <f70e62c6-da51-4bad-1e6e-cc7a9df274ed@intel.com>
Date: Tue, 25 Jul 2023 10:52:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Michal Michalik <michal.michalik@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230721154424.11834-1-michal.michalik@intel.com>
 <20230721154424.11834-4-michal.michalik@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230721154424.11834-4-michal.michalik@intel.com>
X-ClientProxiedBy: MW4PR03CA0298.namprd03.prod.outlook.com
 (2603:10b6:303:b5::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SN7PR11MB7440:EE_
X-MS-Office365-Filtering-Correlation-Id: de1562b9-f1c6-4e93-2405-08db8d37eae5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qIIoFONr8yuOq922qsabtgU6lJ9Hli7B+bA/peyn8ElqloESZG0ajVcjyDRc6R7EvQLJxunGtpmNDK9Tw34rk2OWRqDj0nywwWy19/Egztz4OU2lxt+i/+Pm31Xn2NeUNUoRwczzKlonE4J1ydnFQuH9QOZSzwjoTgPndfxTQBYBYwliWzM/fm+WUd+sBCEY8yJ2kw1ocAszbgHtz1oGUI1qGSqRjJHVMSixtxCtFI//FMvc1Pve6LRQWy5IijTLsiJ8rK8jFjQfzPizFuwmvLmNbRoxSFqLKmdR1Hv0+fNW6oW7FnpKId4LizfPoN0tWmsS2pGh3owLCWmFMpNmyQrecfQC9FZ+hfLbbpCZvHukqomaYPjvcdQYJep7bdGhF/GC77baVg71JdvdAyx0lyjtg4qbq/MFcZUvLBgMFavqJiPlPjaBnMsQqeV2SCxg+7NBPNGJUw4Gj6RaD3FoSenM7/nB/qXJNWwOdV3YmZOHXXQgCis06dTKdq/krW5mzapIuQGtAsJSHcwNxet0zEaiVOQY+2onnsIr828/oxz31b2IT0kE71NJqNerQL8yeSpWjX8P4GO/o6ZeyRkraOGf3ddBiFALEraH6gXiWkrJU7OBobnSgjkkP+vFBWgvUHj79D5G7ajKeY5XFD+Saw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(396003)(346002)(376002)(39860400002)(451199021)(966005)(31686004)(6512007)(186003)(2616005)(26005)(6506007)(107886003)(53546011)(41300700001)(316002)(36756003)(6486002)(66476007)(5660300002)(38100700002)(66946007)(4326008)(66556008)(8676002)(2906002)(8936002)(83380400001)(31696002)(86362001)(6666004)(478600001)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REJWUkxOU2xaZTFKaTJST2RLdmRyV0p6bzBKcU5KbEorT2xVamZQTW5CSkRa?=
 =?utf-8?B?SG5iNVJzMFlKdWRUZUdyUk5Gb3p4MDE3aWtwZm1na1hlQW9nYnhteWhDV2xn?=
 =?utf-8?B?K1h2RUlKcEMrNEY3VmJBK1Z0cUxBQ1E0Ty9KS0VxTSszR1JXK0dZSjY3QW9B?=
 =?utf-8?B?bFJvTHF0TCsvNmRxSzVHa29nVDVYWEFCdk9ib0hnWGlDSXZ3d0hQbUhLeTJk?=
 =?utf-8?B?Y1NkS0x6ZEJYRWdFOTlGSUFVMXN6Vi9mNFo4MlZyWFJoQTFtNjdVdTlYRUNo?=
 =?utf-8?B?QjV0ZStBWWRMZGNDdHRSOVhKSzcwaGM2MFFjU0xmdVVaQzBmS2pBcVNKY1E0?=
 =?utf-8?B?VmNFRFpDaHpkSFNMOEs4OHBQVlYzUkgvcjZSS3J1dUNRSHdaamtDbHNCVXlS?=
 =?utf-8?B?QWFSeVNydnhLQmNGdm9NUEhaNEx6OVJMY0JFNzRkaFdtV20wY3FIdXF4VzRJ?=
 =?utf-8?B?dXdxam96L1NUc2lzTzd1K2JzNnVoRWJlV0JOYWVBNWNtUXFoMmxmNWNLdWhr?=
 =?utf-8?B?UFVRR0d2a1VKdCtRZXFURGRkd2JCVHRITm9GM3FsNllWa1M4czBZU1FreTJ0?=
 =?utf-8?B?K0kvU1VRQlh2V2JMbXpSNGlNNlIwVDFEV0JhajBodFB4RXNzODdOY3grVTJq?=
 =?utf-8?B?YTd6QnlrTWM0WStnMkxWZCtBQm1MVGRZdjBUaXlZY3Z4N1pBeEdrWG04RVc3?=
 =?utf-8?B?S2wzU0FLSFBlQjhEQ0w5Q0hTb3h1Wnc3ZjltbERZaEVWcGEvMXpaT2RYWG5w?=
 =?utf-8?B?ZlF0Q2pFYjN4Wm0yM2xZK1ExNUNlT0NJSWc4STVJakNLSzZwcFBVUUsrRkxO?=
 =?utf-8?B?VjVzd3RLM3RIZmIrSUYyeWo5TlRnWGtqc0duWEEyaWc5eDd4YUVLSm0rcXhw?=
 =?utf-8?B?MDBwTWRPUEhnMXVCS3VXY1R5bkxNSDIrTEl4YVZBZWhGajNHbUVodEhSakxn?=
 =?utf-8?B?eDlJVE9rR2N5TDZvVDYyK1FmT2JGTHFNYTRFdFhxc1pGbGJWWGY0SU5zMmM2?=
 =?utf-8?B?NzZsYzlwUUt2Tkx0ZGlDR1B3SmcySTFLOUhaN3BCdFk0ckpSdHgvRmljamNJ?=
 =?utf-8?B?bW0zNjFNa1VmNkpxRmpEUStuNGhrYllXYmxxdW03cmEzaW96aHoyaW1jaFRk?=
 =?utf-8?B?eTlDK080RkY3ZWpSOHFlNkpRV0hka1V3YlM5aTVmL3k5UXFtNVppeU9jQVRa?=
 =?utf-8?B?L3hVM2w2SlY0QTNQZDBXbkxuV0Ezd1p6S0w2L3dtUFlVUmtlWkZCd1lkMmxQ?=
 =?utf-8?B?dnA0RXk0WVk5RmppMElYRldwYWRqMnZsRmFXQWtyc3AxaFpsQjRZVEtIQlpx?=
 =?utf-8?B?SU5rN1ljZEhWZHgvQ1lzdHlDWU9LNi9HdWRCSjg5NVlNMElmT0hTSlh5ODlS?=
 =?utf-8?B?OENhL2liZmlBNHpuT0JRWGc5V1dpRzZLdHJORDFyYnhLQ29MeE9jR3hRNmFQ?=
 =?utf-8?B?TW84OW5Wd0U0OEszT3h3RHY4NE5YRjd4dEQzQVVKdllkc3VwbSs2RG8xcnVh?=
 =?utf-8?B?a0FkeUlkOEdIREVkQ0N6MENVdC9lWjdNamppbmtJbzFLWVdTUWJhYVZ1UHZi?=
 =?utf-8?B?dGNOdVJWRnBLQnExTmRNSGtYUFJVN1dZNGpnRlMrTmI1bDZZMEYyK2lRcUlo?=
 =?utf-8?B?aDJvdjdVSDVBeXRZQU9OSzhWa2YwRkFnQ0ZWeXlMbVI0SHpSeDMxVnlhNXoz?=
 =?utf-8?B?NERmVzhJL2I2cmR4QXU2NDZVeXVSWThRMjJQMzRraDg4WWFEY0RvSlhmbnJo?=
 =?utf-8?B?dGp4b1g5bnRoU1ZYeEEzWDVzeE5FalB4N1VKS2hnc096M09UczI3c3I0RG5i?=
 =?utf-8?B?UnVrRGs3d1gwS0VZQ0YySXpiM2JZaEVIRjNlQzdCK3lkWS9vQjhuL1dvMFNR?=
 =?utf-8?B?TitOUnpKSGFtWjRsSXNvbkR3S011MmRVZ1dESVp6cWY0MmU5ZUNYbklrVGh4?=
 =?utf-8?B?WENtUURGdmF3NS8yY0w2YlVCR0tjMlowb21VUzFFOVgwZHhPQ2R0K0FwRHlP?=
 =?utf-8?B?UThCalR6dnRGNTE4NmQ1bFZxZVVxTlZlbjhnMG93ZE5FVXlWSTgxNFJEWVlL?=
 =?utf-8?B?emc1WTIvdjRjdE9IajRwdnA4dGJLTE9xcUpEWGJGM0EwS2xzaUFxc3o3eTRa?=
 =?utf-8?B?aHFQaXdXbFVLUXdhNGtsKzZxeTFVdWNHRmpER3k5cHBJaTN2bE9pRVRvZ3Rl?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de1562b9-f1c6-4e93-2405-08db8d37eae5
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2023 17:52:30.8455 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CC9SWskLJg8ZH32vJQPjqdxTqYyJy5A6UDr5eq2b+e9Dw50BJUURflCWHqVbtM6HMo5DO/mHvkVT/3w6FhR1J0Taqp1tluFEM1GXLyNZC08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7440
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690307554; x=1721843554;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iQB0kmE5wglnG/m2qcxdF1yPHRtqLcizRIEyFVyvd3M=;
 b=CFrrZ5agk960NfoZEJecICM27I8YbSGsHvUdgiW5p9tbd1t/O5Djt0iO
 PyR3SxK/N++Ofj1R4mYV9Dol4IustWdJD4QpyFnjtfFp2u1e58tAO0cVv
 VZQt6KGu54DBgN/lppwKXQ3cLtF5CT8Xh5SQUdo1VeP6CG7G3QvQfLkHQ
 9aOAAXqHl2w8C2XbQCZDGtMvgGuLeyo5AinwGN8vLAWmMayj+ZUDOPOOC
 ScWqjQe/p9ozvNOQn5Q7N6o0HrpST0pteCjDmhYiHwC3CfBsMNa050Zto
 13TV8D63+1ApTcbgNwaVBTalEOv5vKs65Jjb8d8S1xFXxRi071+Kfeph0
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CFrrZ5ag
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/3] ice: PTP: add clock
 domain number to auxiliary interface
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
Cc: karol.kolacinski@intel.com, jesse.brandeburg@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/21/2023 8:44 AM, Michal Michalik wrote:
> The PHC clock id used to be moved between PFs using FW admin queue
> shared parameters - move the implementation to auxiliary bus.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202307202358.6Djg24Ou-lkp@intel.com/

These aren't needed (or wanted) on new revisions

'not just a new version of the same patch/commit'

> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> ---
> v1 -> v2:
> * fixed the "static declaration of 'ice_ptp_clock_index' follows non-static
>    declaration"
> * removed no longer required 'ice_aqc_driver_params' params
> 
>   drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |   5 -
>   drivers/net/ethernet/intel/ice/ice_ethtool.c    |   2 +-
>   drivers/net/ethernet/intel/ice/ice_ptp.c        | 163 ++++--------------------
>   drivers/net/ethernet/intel/ice/ice_ptp.h        |  11 +-
>   4 files changed, 34 insertions(+), 147 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 8b1d2c4..0baa410 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -2068,11 +2068,6 @@ struct ice_aqc_driver_shared_params {
>   };
>   
>   enum ice_aqc_driver_params {
> -	/* OS clock index for PTP timer Domain 0 */
> -	ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR0 = 0,
> -	/* OS clock index for PTP timer Domain 1 */
> -	ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR1,
> -
>   	/* Add new parameters above */
>   	ICE_AQC_DRIVER_PARAM_MAX = 16,
>   };

Is this enum needed at all anymore?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
