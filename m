Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6DB6E9AAB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 19:25:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BBE44061D;
	Thu, 20 Apr 2023 17:25:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BBE44061D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682011551;
	bh=ayKWbogW0MY0W0l9mbBINXGu95ZkCX1Va59OKK3LeEU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xf82oqE8aL0P4Kk5YXz8/TabIiLw/6szBs2Kum6yYdAKNRl/MxDVWFGk8aFrQR412
	 Z54I3GwQmyRehR4QW46AGng7+tq8PB2BVDjH6QSxfX3KkIGk5meEtpErHvv5HhzeWY
	 wge0ylEAt9XqDmeD+i8xd2qDuFhh4uJ7aiq4nBnEIe+ylaMCEkefcJXdQQVzwANjsE
	 42rJqaVfXxniXxQvrJslonxO93Bb0Vl7cu0zhvKikurWcyKUWjAgMz12JvrI0CL3Jt
	 sEHVb82ltcqA5v5Er99TBsdl/RbKTtK6+wWGnEaUAO7hnzTHrDnr0ZQdfone2ZT4FH
	 5Q7DXHsPs2qZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ku5Jko3ki2yp; Thu, 20 Apr 2023 17:25:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E2A440549;
	Thu, 20 Apr 2023 17:25:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E2A440549
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6CB9C1BF361
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 17:25:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 43F5881DF0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 17:25:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43F5881DF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TJkeeUESakA9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 17:25:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12BA981CAF
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 12BA981CAF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 17:25:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="347684727"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="347684727"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 10:01:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="835819511"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="835819511"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 20 Apr 2023 10:01:00 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 10:01:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 10:01:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 10:00:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A548iijYFXeE0jonEz1ia5s36wNcC0hZmYriZZ0NT5EJ5fpc+JUsFqiCwnLMidmVgXJn6AlqlvIEeIZnKS5yVOwwJ7Uo2F5LlhppZahkclpuXiHdt5X2GW/nPiZt7nAqzGAqoBbjP6YbyF8sNMzvK0yI3qbza9T2chAYO6Adsttu5dDz11sSwkL1jNP5Own3EYT4iHJIHXtbc90amySrGaV6dzGnoLsComSaBch/HbLtZrD3ioBftaaUYxAEx0zCkEsasSWp7qfKG/NRImtUOvaLK05hg6cgO3Dxitxm2H7ETcQB3Rqnup/TnKs5iIAW8frvVZ6B8/d1zcYnVxa2sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lah6vilca9WJaeiXqhJnRS31ThWS6xnUHoqXYIlS+c4=;
 b=FBkNXVtYaOzMUhglteUvfjWQ/bhn4cuwnK4HWKNA0syWXhBv1IoTHW/7J8e77CbvznplRKb59dQt4q5YVaVi/gVjIlZgd/p8+7Mcxdv+6en3XtP9CW8Bm8YF8bHSkkKJBfewEd3+kpsMQoe0UEPXg7Tm6AvgeV1V+EmqF1VR75GWU4WP6GbQcaXE8h1JBiWLgSZfxs69ffZ4T7kytzhl7zpFTVpMtRwRiH3pz4SRf3q0i3rfiAFxxYnVh9vLF/07XBH1ndBfFzt90x4fcw4AsTWt5dVv3gYQ+K7+FdjpWinwWCA37kvsED4mMlmyjsIFe+WsqYeJSVIyyeIlEyWVqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by BN9PR11MB5372.namprd11.prod.outlook.com (2603:10b6:408:105::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Thu, 20 Apr
 2023 17:00:57 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4c38:d223:b2ac:813e]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4c38:d223:b2ac:813e%5]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 17:00:57 +0000
Message-ID: <92c09efa-7e47-f580-4f60-19f9bb0f045d@intel.com>
Date: Thu, 20 Apr 2023 18:59:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
 <20230417093412.12161-6-wojciech.drewek@intel.com>
 <10045539-91eb-cdb1-0499-1c478d87870e@intel.com>
 <MW4PR11MB57760F836B7714BC22A26FC7FD639@MW4PR11MB5776.namprd11.prod.outlook.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <MW4PR11MB57760F836B7714BC22A26FC7FD639@MW4PR11MB5776.namprd11.prod.outlook.com>
X-ClientProxiedBy: LO6P123CA0037.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:2fe::9) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|BN9PR11MB5372:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e19919e-4cd4-476e-c195-08db41c0cf1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RvNiArn1HPaFVK+gE+Gj04j7ttyi/g3tcAGwgOhpCyLO3znaemofm8XA98e4ccHbWG56HXowXBdVm4r0/a0PFtHZWKXtoxnC7ZPuYtyVSTQHXVJhwI8tigmjOxAO3+3pWiWMdpEWjbMmZVVzM6s7F6RJmt74UAU6eerH7kXTSiCU/Tw8W9JVW+gmX+ahRYJgO5ta2coJq4k1mLsYV3DxXUKji55aExRHQdTjt5H+sjwDfG3ZULw7kUfTdK8kgs2LoYe+mI6buQWy3z5jjqkbjxEHOIgdqYNGpFRRwEIqBNUkMK2QKlE+7JR8oo9iDU3EKgEWujwQP4fDxXYOGVpo1mp2cSFQ28tSpjt9YuvZxBj9kPVl5YYneQwEKzEtyxnAt5UjnVpY9TKOjvUbPMxGOI2Uy+fRDUlMAm2gz21bYI0fwuIdARxDHQdFBlhI3JJNWSGBXt7TNtt3Xn6L5PFaShnJrv4XIeYI7tpDAvOhBuRVVUBZptCO2Lm1A1Z0fGNNQKirvKyH8evXWYlNtUtO7E/PUAiwYw+bhXM6RnESYwFd2OBLMHSEdFT09PoXMnoQSyNQbW3507fCxBGm+yUHmgZx3qhKm50Z8d7ce7wqt5AAIrog5Xa9mm/g0VcrG7a0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(136003)(376002)(366004)(39860400002)(451199021)(2906002)(8936002)(38100700002)(6862004)(8676002)(5660300002)(36756003)(86362001)(31696002)(6506007)(6486002)(6666004)(26005)(6512007)(966005)(6636002)(54906003)(478600001)(2616005)(31686004)(83380400001)(53546011)(186003)(316002)(37006003)(4326008)(66556008)(82960400001)(66476007)(66946007)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M0VQeEUvKzdZZnN0L3RvSXdadVN3NVRQWDZhYmdpcHlhdERER2ZqTHVVSzUy?=
 =?utf-8?B?NW1jeTBId1VmdWtNL3Zkc2JNNE9rRHNNOUxITEFiNWVyQ2t1L3hlQUxTb0tt?=
 =?utf-8?B?d2wzNDlsN2tRUGtSM2lZN2N6UmdMalpzb085S1cxMDFyMUI1anF5eUYrOXZX?=
 =?utf-8?B?aGtzd1NwUWVVQXEwU1duQ0xJUDhWaHU0Tk94eHhuUmlBSERWa3BPeGNTMEdX?=
 =?utf-8?B?VWYxQ0I0T280Yi8xMk9DR29RL2FJUmprcHpKSnhBUDFNTlVORjV0Z2ZLaXpY?=
 =?utf-8?B?b1VIK0FWUTYvd1d4cmNvMExtNFdHVitmRlJFOE5LVFVZTGV0Lys3d2NmUS95?=
 =?utf-8?B?QjkxTndzdGcxOFNCcjQvVmVBQXYzb25DUncvUmJ2ZnFvRFhEN2xxamszb3FS?=
 =?utf-8?B?Tmh5bmJmbGVCQ2J2MzRXT2ZJalUrcE1NM0dHSW8xTDBvQ09HQXBVSmJJMCt1?=
 =?utf-8?B?SmZzTkJCamN5OFVVZXNDTmNtTExBVXNlMm5pWTkvL0JEN1lTT0FWbXJrUU1E?=
 =?utf-8?B?NlVFZ1c3MnBjUDNQMngwREJKU3diSXFCdU51VUxzMG1PbGhVdzV0cTBYUTZv?=
 =?utf-8?B?cjFmVE5uVG9iY2phcmpVeHJqQjBITjBWN0QzZ1NKQWo0LzY3ay9QSHRxREZH?=
 =?utf-8?B?cERCK2Nhc0VhcEd3YmhHa0hGMXgvY1o5WVBmdEYrRGM5MzlyanpORm5ML0ts?=
 =?utf-8?B?U3BzSzF5OW51WThjSE1ldnRITkt0OXRhSXhrUzVUb0tJSFFqaVdwTlhqMGJ4?=
 =?utf-8?B?OUpxZ2crV0NqdzZRV0NBakpic0hja1JZSEh5Q3NvWWNrZDRmV3l4VWZlSzlw?=
 =?utf-8?B?dG1jY2hkKzlDWG1sNGtheEFRYWF2c3FMQ0NtSUczTElDenNjd1FDTXFmOVYz?=
 =?utf-8?B?cUwrNHVmTm1MaGxQNHc5c2JXRnVHTldlYjBmaHIwT0ZsZVExRExDSy85eHZU?=
 =?utf-8?B?QUt4Z3ZJR1JzUTZmcjJRei9rS0lsTDh2T3JwS3hRc0xrNFBPZkJBekRjU3po?=
 =?utf-8?B?eFR2V2c0MzZnYTRsbmwwWDFjdVNjSkx1TWFYUVpsMXRCWktxVDB2cEQyK1N1?=
 =?utf-8?B?UTRJL0dUMmJLeUUrY1FUekhMcEpEd3JhMTV2ejd6MVV4Y3dzRVdDZW5pR2d5?=
 =?utf-8?B?L1ovckxRUjd5N0tDU0ladkpDalQ4dUFTUXFtbnp3Sklja3hEZktuUjhBajdP?=
 =?utf-8?B?enJBMTFSNkJIOEVxLzJEdWUyOTVVZXJ4OHBQU0NOZitSU2xpdlNlaUNTTTBz?=
 =?utf-8?B?YUo3aDBMWDI0SDQwU0wrNlZWVHFaaCtRN24xT1JuYmN4eWl6SDdhQkpTVDMy?=
 =?utf-8?B?Q2Voc05HNWEvNnVRYWhvTTZFS2ZBY2swQTFIZDhuUUcwMjkwUWdXZ0psSU81?=
 =?utf-8?B?bUM4OE42dHZNVTd3K3JUMjM1MG85N3pQdzlCaFN1ZnNQMEdvbWcvNGNuTmRj?=
 =?utf-8?B?S1R3VUNjWVF6VEZja0hlZEJRam5FVjVjbmh1cWlJUEFwVm8yZmxPc2paWjNV?=
 =?utf-8?B?eUJkcUxrWW5uZzE1SXM0RW1vRDZEOVJDUnhSSzNSakRGTjYxdlpnTWhWTm9U?=
 =?utf-8?B?M0J0MWlpUnRJcTJRM2FJajFHYmdmS01nY2FDdU10UUNHNndlV0o1RThRZDJy?=
 =?utf-8?B?NmdsamJOMUNJUWMwL2VWSTZnbXQvUVFsVUVPeFJrU2h6Z1RLZEdLRWpMYXkv?=
 =?utf-8?B?VGM3ZHJUUWFLc3BNcGN6YmpZNHFCMEpGeFBseUlEV1N1cHUvQjZhaS9ydVNk?=
 =?utf-8?B?ZnNmTUhoYjQzQ1JTZU1yaWwzbjgyOFdMWXN2YzN0QmRmdUR4d2dURzQ3UHBS?=
 =?utf-8?B?RGh3MjM5dGs3Q1oyK3hBQ0F3SkZmKzFSRXFiSllsOTZCV0R2b1hCczc4YlQ4?=
 =?utf-8?B?Z1JXT1crbktTdnVyeFg4b2EwMVBXUU45NjZ5cmYwOUJLd1M1N3lyTjBqRWlk?=
 =?utf-8?B?Zm4ralUvbWc5YVE0bVFGbVM1cVVrSDBQNzZQdk1pSUprWXZYYStVY2JDa1dZ?=
 =?utf-8?B?eGw1UUFZRE5QMEN6dWhaT2daOWZvMHlMU25Yd2ltRTUwanIzZmpGL2hyTFRD?=
 =?utf-8?B?V1UyQ2N5SmtueEw3K3BIUXhJc2YrWU1VVDV1bHdsS0FyV2FqUGhCOTErWVpG?=
 =?utf-8?B?dXFEeU1jSURpbTBmcXdYVGFVNG5uZlRmSmxhNkE3WjJRQytXNm1BT01hbW9s?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e19919e-4cd4-476e-c195-08db41c0cf1e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2023 17:00:57.2415 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fCLqHyOuQR9mqFs5MUgBIcfh//GjQzx6Mrl1fwC18E2O4ZdwR/4nX9ypk2bQst7UNyQGzjiQ9TlT2+sUS4Xd3oikfob0ErfAamNa9DLqUJU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5372
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682011544; x=1713547544;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mcunzA1v/2Vr5BJE9cIVt/zoZaPDrtHRP9xhzWJY6ao=;
 b=IiIvAnhdt4LqQdCxSHk5S9fZm3EoglTClLsxBXmSbt5lxrlP9E5MsuiY
 W7lIJlEdnl0PyK1s46/FasLrFjwSbcGWdpLWx5+CWuERB7LWFHU2RK4mt
 YpGn/gSuHqzqaxADpCAOkzeAB6+aW02OeqaMMQl4KWKqtaxjhz7ZDyaWt
 71cbIr2q+YShO+tcfhokB6ReOaZ4q8BxswHLQu/PTfgBF+OmT6l3VNRWH
 FawuXYnMf2nGH67N76K3uitB+06aJr5t1GYuziTQ4G50U8OXE09c8piXk
 PB8B0sCYzUZIi/3G8dtEOkHieuYPSik7hBJ75FlNlwl1D+RnIFDEIqOpV
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IiIvAnhd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 05/12] ice: Switchdev FDB
 events support
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogV29qY2llY2ggRHJld2VrIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPgpEYXRlOiBU
aHUsIDIwIEFwciAyMDIzIDEzOjI3OjExICswMjAwCgo+IAo+IAo+PiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+PiBGcm9tOiBMb2Jha2luLCBBbGVrc2FuZGVyIDxhbGVrc2FuZGVyLmxvYmFr
aW5AaW50ZWwuY29tPgo+PiBTZW50OiDFm3JvZGEsIDE5IGt3aWV0bmlhIDIwMjMgMTc6MzkKPj4g
VG86IERyZXdlaywgV29qY2llY2ggPHdvamNpZWNoLmRyZXdla0BpbnRlbC5jb20+Cj4+IENjOiBp
bnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsg
TG9iYWtpbiwgQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT47IEVydG1h
biwgRGF2aWQgTQo+PiA8ZGF2aWQubS5lcnRtYW5AaW50ZWwuY29tPjsgbWljaGFsLnN3aWF0a293
c2tpQGxpbnV4LmludGVsLmNvbTsgbWFyY2luLnN6eWNpa0BsaW51eC5pbnRlbC5jb207IENobWll
bGV3c2tpLCBQYXdlbAo+PiA8cGF3ZWwuY2htaWVsZXdza2lAaW50ZWwuY29tPjsgU2FtdWRyYWxh
LCBTcmlkaGFyIDxzcmlkaGFyLnNhbXVkcmFsYUBpbnRlbC5jb20+Cj4+IFN1YmplY3Q6IFJlOiBb
UEFUQ0ggbmV0LW5leHQgMDUvMTJdIGljZTogU3dpdGNoZGV2IEZEQiBldmVudHMgc3VwcG9ydAoK
Wy4uLl0KCj4+IChubyB0eXBlcyBzaG9ydGVyIHRoYW4gdTMyIG9uIHRoZSBzdGFjayByZW1pbmRl
cikKPj4KPj4+ICsJCQkgICAgICAgY29uc3QgdW5zaWduZWQgY2hhciAqbWFjKQo+Pj4gK3sKPj4+
ICsJc3RydWN0IGljZV9hZHZfcnVsZV9pbmZvIHJ1bGVfaW5mbyA9IHsgMCB9Owo+Pj4gKwlzdHJ1
Y3QgaWNlX3J1bGVfcXVlcnlfZGF0YSAqcnVsZTsKPj4+ICsJc3RydWN0IGljZV9hZHZfbGt1cF9l
bGVtICpsaXN0Owo+Pj4gKwl1MTYgbGt1cHNfY250ID0gMTsKPj4KPj4gV2h5IGhhdmUgaXQgYXMg
dmFyaWFibGUgaWYgaXQgZG9lc24ndCBjaGFuZ2U/IEp1c3QgZW1iZWQgaXQgaW50byB0aGUKPj4g
aWNlX2FkZF9hZHZfcnVsZSgpIGNhbGwgYW5kIHJlcGxhY2Uga2NhbGxvYygpIHdpdGgga3phbGxv
YygpLgo+IAo+IEl0IHdpbGwgYmUgdXNlZnVsIGxhdGVyLCB3aXRoIHZsYW5zIHN1cHBvcnQgbGt1
cHNfY250IHdpbGwgYmUgZXF1YWwgdG8gMSBvciAyLgo+IENhbiB3ZSBrZWVwIGl0IGFzIGl0IGlz
PwoKQWgsIG9rYXksIHRoZW4gaXQncyBzdXJlbHkgYmV0dGVyIHRvIGtlZXAgYXMtaXMuIE1heWJl
IEknZCBvbmx5IG1lbnRpb24KdGhlbiBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgdGhhdCB0aGlzIHZh
cmlhYmxlIHdpbGwgYmUgZXhwYW5kZWQgdG8gaGF2ZQpzZXZlcmFsIHZhbHVlcyBsYXRlci4gU28g
dGhhdCBvdGhlciByZXZpZXdlcnMgd29uJ3QgdHJpZ2dlciBvbiB0aGUgc2FtZQpzdHVmZi4KCj4g
Cj4+Cj4+PiArCWludCBlcnI7Cj4+PiArCj4+PiArCXJ1bGUgPSBremFsbG9jKHNpemVvZigqcnVs
ZSksIEdGUF9LRVJORUwpOwo+Pj4gKwlpZiAoIXJ1bGUpCj4+PiArCQlyZXR1cm4gRVJSX1BUUigt
RU5PTUVNKTsKPj4+ICsKPj4+ICsJbGlzdCA9IGtjYWxsb2MobGt1cHNfY250LCBzaXplb2YoKmxp
c3QpLCBHRlBfQVRPTUlDKTsKPj4KPj4gWy4uLl0KPj4KPj4+ICsJZndkX3J1bGUgPSBpY2VfZXN3
aXRjaF9icl9md2RfcnVsZV9jcmVhdGUoaHcsIHZzaV9pZHgsIHBvcnRfdHlwZSwgbWFjKTsKPj4+
ICsJaWYgKElTX0VSUihmd2RfcnVsZSkpIHsKPj4+ICsJCWVyciA9IFBUUl9FUlIoZndkX3J1bGUp
Owo+Pj4gKwkJZGV2X2VycihkZXYsICJGYWlsZWQgdG8gY3JlYXRlIGVzd2l0Y2ggYnJpZGdlICVz
Z3Jlc3MgZm9yd2FyZCBydWxlLCBlcnI6ICVkXG4iLAo+Pj4gKwkJCXBvcnRfdHlwZSA9PSBJQ0Vf
RVNXSVRDSF9CUl9VUExJTktfUE9SVCA/ICJlIiA6ICJpbiIsCj4+PiArCQkJZXJyKTsKPj4+ICsJ
CWdvdG8gZXJyX2Z3ZF9ydWxlOwo+Pgo+PiBBIGJpdCBzdWJvcHRpbWFsLiBUbyBwcmludCBlcnJu
byBwb2ludGVyLCB5b3UgaGF2ZSAlcGUgbW9kaWZpZXIsIHNvIHlvdQo+PiBjYW4ganVzdCBwcmlu
dCBlcnIgYXM6Cj4+Cj4+IAkJLi4uIGZvcndhcmQgcnVsZSwgZXJyOiAlcGVcbiIsIC4uLiA6ICJp
biIsIGZ3ZF9ydWxlKTsKPj4KPj4gVGhlbiB5b3UgZG9uJ3QgbmVlZCBAZXJyIGF0IGFsbCBhbmQg
dGhlbiBiZWxvdy4uLgo+IAo+IFRoaXMgaXMgcmVhbGx5IGNvb2wsIGJ1dCBJIHRoaW5rIGl0IHdv
bid0IHdvcmsgaGVyZS4gSSBuZWVkIHRvIGtlZXAgZXJyIGluIG9yZGVyIHRvCj4gcmV0dXJuIGl0
IGluIHRoZSBlcnIgZmxvdy4gSSBjYW4ndCB1c2UgZndkX3J1bGUgZm9yIHRoaXMgcHVycG9zZSBi
ZWNhdXNlCj4gcmV0dXJuIHR5cGUgaXMgaWNlX2Vzd19icl9mbG93IG5vdCBpY2VfcnVsZV9xdWVy
eV9kYXRhLgoKTXkgYmFkLCBmb3Jnb3QgdG8gbWVudGlvbi4gSWYgeW91IHdhbnQgdG8gcmV0dXJu
IGVycm9yIHBvaW50ZXIgb2YgYSB0eXBlCmRpZmZlcmVudCBmcm9tIHRoZSByZXR1cm4gdmFsdWUn
cyBvbmUsIHRoZXJlJ3MgRVJSX0NBU1QoKS4gSXQgY2FzdHMKZXJyb3IgcG9pbnRlciB0byBgdm9p
ZCAqYCwgc28gdGhhdCB0aGVyZSdsbCBiZSBubyB3YXJuaW5ncyB0aGVuLgpIZXJlJ3MgbmljZSBl
eGFtcGxlOiBbMF0KCj4gCj4+Cj4+PiArCX0KPj4+ICsKPj4+ICsJZmxvdy0+ZndkX3J1bGUgPSBm
d2RfcnVsZTsKPj4+ICsKPj4+ICsJcmV0dXJuIGZsb3c7Cj4+PiArCj4+PiArZXJyX2Z3ZF9ydWxl
Ogo+Pj4gKwlrZnJlZShmbG93KTsKPj4+ICsKPj4+ICsJcmV0dXJuIEVSUl9QVFIoZXJyKTsKPj4K
Pj4gLi4ueW91IGNhbiByZXR1cm4gQGZ3ZF9ydWxlIGRpcmVjdGx5Lgo+Pgo+IAo+IEkgY2FuJ3Qg
cmV0dXJuIEBmd2RfcnVsZSBoZXJlIGJlY2F1c2UgcmV0dXJuIHR5cGUgaXMgZGlmZmVyZW50Cj4g
VGhpcyBmdW5jdGlvbiBpcyBtZWFudCB0byByZXR1cm4gQGZsb3cuCgpbLi4uXQoKPj4+ICsJc3Ry
dWN0IG5ldF9kZXZpY2UgKmRldjsKPj4+ICsJc3RydWN0IGljZV9lc3dfYnJfcG9ydCAqYnJfcG9y
dDsKPj4+ICsJc3RydWN0IGljZV9lc3dfYnJfZmxvdyAqZmxvdzsKPj4+ICt9Owo+PiBbLi4uXQo+
Pgo+PiBUaGFua3MsCj4+IE9sZWsKClswXQpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51
eC9sYXRlc3Qvc291cmNlL2RyaXZlcnMvY2xrL2Nsay1mcmFjdGlvbmFsLWRpdmlkZXIuYyNMMjkz
CgpUaGFua3MsCk9sZWsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
