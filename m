Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBECB252CA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 20:09:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8C494298A;
	Wed, 13 Aug 2025 18:09:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oZZ2Z_esXIPA; Wed, 13 Aug 2025 18:09:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9563D42982
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755108550;
	bh=eU9nI/p284pRFRLV/pHiQDmsEA731k78vBlkmMBEsts=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gXBSfHNgdPUJaMh62QDL/jjwNqXi6Gmkw/BI4UPk9ln+GbnHX/6xzw1IATp++sURO
	 vdUN6Y/o0Ic5Mav+nqrBLZKrT9v9OMl8Ya6QHp7A1h/yzx86PiB4ne7RNtJD/llJSW
	 sEavQEBFNV0ADYEhiOaIE9woi/owdqVcFJn/MgTFpTDNXMUrL31NjGZnCYhjALYSwK
	 C3V5ta3MMkDakb4WzBInuXd6AI7cSXLdd3TcXTd74SOv3ZmFIoR03ArXvPeZ4Vw/Na
	 D/LP4eMbbIsEGIGPAJTMjOR/Cr2PvfTyQh+EJU5dEI1/R2rYczpzMWTOmV8Jl3ZU7z
	 9Xg1UcCizcdcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9563D42982;
	Wed, 13 Aug 2025 18:09:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 208491B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 18:09:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 069A66154A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 18:09:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p0peodlXcZfT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 18:09:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E4F5E60714
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4F5E60714
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E4F5E60714
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 18:09:07 +0000 (UTC)
X-CSE-ConnectionGUID: wGgTSt0gR8G3EdcsntV02g==
X-CSE-MsgGUID: xxjrPbI/TeGJAM6AiJUNxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="79987406"
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="79987406"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 11:09:07 -0700
X-CSE-ConnectionGUID: Nr+K0iCrSLSkwbcyXodbpg==
X-CSE-MsgGUID: E+DPzdlyQp21kEDZvnL5EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="166449648"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 11:09:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 13 Aug 2025 11:09:05 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 13 Aug 2025 11:09:05 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.60) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 13 Aug 2025 11:09:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J1si12pwtFBDvCJZzws6VN1ZnysBoc8a8aXyE63hA7d+iXd1icZgj78dEGG43VICRs1jkWyuJh3p9Hwf+Gn7E/HlFVJhhlkDG824aUhU3QXkzm4hvWfR240VByKAhTPJTiYnfRRcZrMI9zsk9ME6rAHQIKkI5dXpW2rPZcNZSJEcZyHTdSiqMc2usCiyIDeCLRX1e3nBASj2E67W6J1Nenwy2b7xeoAINnz8r07zlJQPytz+AoFdDJjAQ6Nai2OMgd/jhKo3JFaM+URojemcbdqmzXeL7WzYZS0ApKz2R7vNV/sB1v+0y3/sH1Hyp5wjoYD/ruhPLw1gqvBcTIwH1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eU9nI/p284pRFRLV/pHiQDmsEA731k78vBlkmMBEsts=;
 b=k8szSloMEHhKZKVdlUsPUwL7gtBY7fqTXpHQGQ5LqiBtcKnySBxNMU8prNKQTohiigYzwi/DHp/Gu26syhy9ygpp4H0/YtIHwIwOs6UYtZ89FGlrB7lm2P62y7Ii/3uVy4C1S9519H/eJT4ynql13H4PWdEkQpByyVFe6Oge93htdNPUn3irnvjxi9OsBmrWktb8UnCB/Z1bD8SpL+kzWcDmIL2D3iTZzF/KLmTkInTnUtlB/x8/vKyZr+YTH+OGQYBXRpZQj95cQKCJbAGpL/3kyWz+IvhOhmBvltASpvJJqUX0okrHTELu3nKtwZAWqFn5mhKXtlAShoy0vVKswg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DS0PR11MB7309.namprd11.prod.outlook.com (2603:10b6:8:13e::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9031.15; Wed, 13 Aug 2025 18:09:02 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9031.012; Wed, 13 Aug 2025
 18:09:02 +0000
Date: Wed, 13 Aug 2025 20:08:42 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jason Xing <kerneljasonxing@gmail.com>
CC: <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <horms@kernel.org>, <andrew+netdev@lunn.ch>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <sdf@fomichev.me>, <larysa.zaremba@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Jason Xing
 <kernelxing@tencent.com>
Message-ID: <aJzUqg5m3sKPWDe0@boxer>
References: <20250812075504.60498-1-kerneljasonxing@gmail.com>
 <20250812075504.60498-4-kerneljasonxing@gmail.com>
 <aJtg0gsR6paO22eQ@boxer>
 <CAL+tcoAGq1DhjF42qYH_yVPf9PqmMknn79WF2SncXFJmP0fDhg@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL+tcoAGq1DhjF42qYH_yVPf9PqmMknn79WF2SncXFJmP0fDhg@mail.gmail.com>
X-ClientProxiedBy: DB7PR05CA0069.eurprd05.prod.outlook.com
 (2603:10a6:10:2e::46) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DS0PR11MB7309:EE_
X-MS-Office365-Filtering-Correlation-Id: 0828aa1d-4446-4b21-40e2-08ddda947bb4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R24yejdkV0V6U0JRZEZMY2lGeVRIS295dFJ6bjhtUDFQTkUwdjNGdmFDNkg0?=
 =?utf-8?B?L1NKeEtqK3ZCKyt2RmcxajNRMzJGbkdJOTNlSzlQSlYzNDk4SjBuZGZ4Y3VX?=
 =?utf-8?B?emcrOVhwR1pZUDR3Q05LK0ZHV2l0Zk9qa3J3Z0lyWjRYaU1jbzFkeFJzMmYw?=
 =?utf-8?B?bXM3bU8vbkMzVktrQS9ucjR4OTZGcEQ5OXdUa1R0OHhHaUJscFE1TW9VeGtF?=
 =?utf-8?B?NnhMZFRSakxQaG1iVnBjWURQMXoycy96RVI2NzlYNEdVOVNyM2xjcDFlMWxY?=
 =?utf-8?B?c0I1N1YyaFpYVmliSWJwU2NSUnRGWkVtZ0VUaWtIZWp4MGtjd3c3Nk1pQzV4?=
 =?utf-8?B?RUZ1Q0hMdDByMm42TjJmU3NNR1BWU3l0OEZYSjBSN1FaRzNoWEZqSWlUM09J?=
 =?utf-8?B?cy9VYVdmNndqdmptUHgwdHNNTGhEYTNCR0ZGVm9pOWZ1WjdoRkh5ME04K1ly?=
 =?utf-8?B?Tmc2YXRWcGRsU014cWREQ1NwSFAvODRQS2d1YjhOaFNtOEtpQkRZcEwrUWM0?=
 =?utf-8?B?MmV2N21XYUlrZkRTUUxrbWN4WXZRN0UxVCsrSHZ6bkJpaTMvUWJ1SDJ5TmFW?=
 =?utf-8?B?YzNQQVljUHdqcjJiRFBUYU5RNFhBK2NabGsvc2RlY0I1WDRELzV4WUlSeHlX?=
 =?utf-8?B?eHR6eXRyc3RvZGNMUWN0azFYYlI5M3o1VENwSmx0STJUMXB4SStiUXd0b1Mz?=
 =?utf-8?B?U1hHWHlDb01yRHN2V0RxUmFlUm9xcTEyVFQzM3hxMkFhTTdIQndxT01SSVdl?=
 =?utf-8?B?UEUxNk1rbUFDRDI3N0VJY05NRHRjbEppblhNbGt3VXp6TEh6VDlxWE16a2k0?=
 =?utf-8?B?dnovMXFvblFob0VtdWhHQy9wVkE3UmRFN3hPdnJQZ2VnMFhiWkRqeTAwaUli?=
 =?utf-8?B?WnRxNkprM1dKdFFWN3RLOGFLeGUwN25xV0xRVDZEdjdPbWxVMDVpL0o4bWhJ?=
 =?utf-8?B?cEJXa1llWDdRY0I2T2JZaTNqR3hMaFVaVGxPcllCeHVSRzNCL25vanpxU2d5?=
 =?utf-8?B?bzNWZ1YzZVByajdJcE9QOCtDaEgvN0cvSzJ0REVRL254SVFCdXA5RDBnL2xs?=
 =?utf-8?B?OUFvTG5qSlp5eUZTOWo5amdtQVIzdExSd3dRSzJFWjNVcXk2S05GMitVL2tK?=
 =?utf-8?B?ZkU3MmlUQjNQcUtsSytFWHNFQXRvZXVyVUVYMnUrN2JRSUhaRUhZRnlsM3Y4?=
 =?utf-8?B?TU1rM3Q2VlVZRVFJRGdxM3pTUUxPLzMwZ3Rmdm12V2wrcWw0MkdUZms3M0xZ?=
 =?utf-8?B?YnczTmZrZTJSOERTcFB4Zk5OaVFvUVE2SDNWTjA2S24rUVYyc3g1M1B4MWxM?=
 =?utf-8?B?T1M1bjlOWWdQcXowVVVsbDdad3Q4NStjbXdSWmc3ZXkzM1VwT3RFUExnYXYv?=
 =?utf-8?B?QUNsaEtNMExBdE0xWnl5QkxVeWU4VGlSVDNSSmVGR2ZrNHgrTmRlYW5WTEF1?=
 =?utf-8?B?WVF2cy96RUkvNXBQZEdYeXowVWZoRUdVR3c2cUNPSzJkcktqSGRBaXJZNFox?=
 =?utf-8?B?c1ZUbHNLbVFVUEtmRUFoUFFqZjlCaDdSeXdMWWJ6UzRjU1N2RThtMmpScFFZ?=
 =?utf-8?B?NTlOblZmREhnOG1uQmt4cnZCd2xnNHVXVDQ2N1NsU3Juc01rL0ZiczZSTDF3?=
 =?utf-8?B?cjR5MjBoaFFwampZVWtBZ0c2a0M4QU10SG1HR2VuZWhhZ0NSbFpPQ2x2eWU5?=
 =?utf-8?B?c0s0eU92bC9obVJETnBHODl1clduMHErZWVnRU5qM2swOXNpN2VkT1pua1dp?=
 =?utf-8?B?QmtlMG1UcExqVFdudlJLMlA4RkxYRDRoWUI1T0htZFhpQm5nVzlYOHNhOGtQ?=
 =?utf-8?B?d1ZNVnpKaHFORVlvNzJ6RjR4SU9ZbWRXZFZvTVBIT05LS0tNR0pIYmRzeC9v?=
 =?utf-8?B?SWxKWUlyT1o4RXdCRzI0blJFcUpsMlV5Uks1VE5uVW9SaTVSdkVSRW5SRk5K?=
 =?utf-8?Q?az4r/yCsUoc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHNrQVdOYzd5VXB6cXlvN2VJR2MxVW93cWZISTY4bE9vVlMyRlB0bUQ5Uklu?=
 =?utf-8?B?VEQrR1pJOFhoanlURG9zQ0ZHRm5tZ3dBQWF3emcwbGk3dnZxeDJwU3p5NWJG?=
 =?utf-8?B?ZzFOamVGbzIzRnE1bDhDbzh4SzU1YXF2VDlvVkwwR0pHQVVVcjFVMk5sT052?=
 =?utf-8?B?SXUvL2pYdnBubThZUDNaMU8vM0VoVjk3QzAybmMvMU1UQVhudzhGOXptUk9V?=
 =?utf-8?B?T1BTUkl3Ujd4MWU5L0FULzZPQ2M0RndRKzBMTXJTN2JFVXZVaXlkV2kwQzBF?=
 =?utf-8?B?c3FwOE5wamcyYU9WNzF4SVV6QzVJWjFHVWk4NDFYd2tVQmhJcllCdmlSdXU5?=
 =?utf-8?B?aWZ6OVpHcHlOWnZkb1dmZzE3SmlGMWFhNkx0ZU8yVXdrc0dBSkFzTUlrbTBS?=
 =?utf-8?B?RlBPbHJURWk3VFA5YUhvTzNoNWN1bFNNR2JlOEpReFgreVRRcWZWWU94MVpI?=
 =?utf-8?B?UVE0azdIQ3BnZHM3UENKdGgvL0Q5VVljdkgwVnpUbUlZRDBxNCtkU0owUG44?=
 =?utf-8?B?QkxlMEdQbkxGcjlDRnJwTDI0c3RuTmhMVnI2S21yMk5PS2VOdjJXMDBaVEJR?=
 =?utf-8?B?NEtTenBaZkRSNHFTTnNIaU1ucmkzVG5IWXBLb3hqTW1MRkljVEtyVXR5MVlT?=
 =?utf-8?B?bGQ2bzFvQWhwOUNsVWxqOE5mZ1VKQno0Qlhxd2lBZVlmT3lkVGhGdlpvdGIy?=
 =?utf-8?B?aVVEbTVXWTZJVDd0L0h3ajdzSUY3MmZNTkxKdDZFczN5dyszcFl4NmdVU0VM?=
 =?utf-8?B?TWsrVEVsTms3NTI0RFZlQXVkM0ZyRnlCYklxb2YvMk9WSXBBakp2amJPS094?=
 =?utf-8?B?cXZLTDhLMGxmUlp4OVFmU0dYaWlrQXZBUGpBY0p2M2t2YzJoMklhbE92dVh5?=
 =?utf-8?B?VHpobTZtSEJEcnBaWkxHUmxXd0g3NzNOV0YwMEFqekhnUVVFWjJZSW51c0tU?=
 =?utf-8?B?ZWR1amZ5dCsyVXliTitNWWVFekp1RWpFcDVmSHZDZ0tFR1lJS0xyZ2xJTExF?=
 =?utf-8?B?SEJ5d253azZ1VWxTRDNuQkd2MnZKMUFoYThjdFF5MStjTjc5ckhySC9SalQ5?=
 =?utf-8?B?dGJPbHA4blZoM2l2UjBQZ1lHSGRBVzhRQU91b3E1THFsS0JvWlJIQ3o4Y0VH?=
 =?utf-8?B?cFRIa2tLWFdRQWhxSTZ6eWdYcElTSmhxMHIyT0w3anMrbUFiczhFR2diUkZK?=
 =?utf-8?B?ZmJpY1pXMkFVbFZmbmY3cUtPcWd0bXVXWEE5OEtYeDVEc2luSTBBaHlWTWls?=
 =?utf-8?B?RzFrZlVxTEtxVEpBM1Q0VjlxbUZSMWlueURFclhZNExpWGJBYm5rSUwzLzh6?=
 =?utf-8?B?VkYyZHpTRmFhaEhQb1k3WWNkNmhIcGRDWEIxU3U1dTQrMXRXNFJxNHErVE1S?=
 =?utf-8?B?WGtqU3NPQUxKR3VEeWxjdFJ5MmZUTlNCeWhZM3BoSE9GWFgxVkF0N2llekti?=
 =?utf-8?B?dDVQR2p2NElYZWtpQzdEN2hPZ0pDazlDRWdXUzhSaktsRC9EcEZ1dGk5dWYw?=
 =?utf-8?B?WmMxYjhhdFhDVHlrMzdaRDNEZDFMYmlRSU1JQUk2RExnUjFSNnFyTnpndXkr?=
 =?utf-8?B?OGd4eXlKN2lYcmp0RmE5eU01Y1FHc1A5UjR3ODYyczYyMUJRMXBBNTA0bUdL?=
 =?utf-8?B?dlIwZS82ZGZFQWxXbmlSdnNVd0h0NndyeThWN0RvWmFiOHJZUTg0cnhVWWMy?=
 =?utf-8?B?NFcvNVFCNkFMOUhpMDJwb1N6UFFmQkplc3NBd3hEMnZPYTZTUllralVuWDJ3?=
 =?utf-8?B?YzRMeGVFelI0d05zeEJLUHdtSTNvR0tsS3pTcWRFZGd3Z2tUV2JoL2RFU09R?=
 =?utf-8?B?eTIwTU5lbWpqSFRWNUVxQmJQeHlrK3pLZGRlOHNhTG5neFBLNnVwU3RQWE9Q?=
 =?utf-8?B?YXFVYzZRZ25zZlF6RkFQNm5JeTN6K0owdHByZ0YrVHhNcGpTS1ovNjNrOXpM?=
 =?utf-8?B?VlgyRWx1N1dHWG95bGhOdE55amdreGVld29HcFgvblVDcC9hTGVVWERKa0Qw?=
 =?utf-8?B?RFprS0F4YXliWVJ3bUh4dC9lY0Rac1dHcUdqRFNueXpSVVBDNDRCT0ZrSHpp?=
 =?utf-8?B?MEFsL0o3UkFwMEwyZmRxRTZsOE80MC9iUGZzeDJvWElGc1ZPaVAzQ0NGTm5Z?=
 =?utf-8?B?ZTRkeFl6Mk5ERkxtVFVWN0JTTGhubGRxb3p3R2VPbnhOUS8wU2hXUDc3ZURa?=
 =?utf-8?B?bkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0828aa1d-4446-4b21-40e2-08ddda947bb4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2025 18:09:02.3998 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mGEjC8YvyotngWGktxp/ypsoPIkodpyNvSzhpYabOmDZRzznAhrapNkkKIQPh5C0PjAB1+LO0YwRgyqrWvOCV6Ud/B01K0CMol3OjYQUos8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7309
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755108548; x=1786644548;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=3aKOKBPoVaFGPKVbSx/NInjoPwo2MRoykM2Xc3SDoJk=;
 b=ICH683YKzA/FxyYbd+TZRMe3g0IC6YV772yhfETS885NkdyG8H0S25EQ
 6CXjbzOo+VywVaSHph2aMTqJZR2PjUHs81KmoCVlUMrG1bJ6rnXvqGAEU
 SnM0HCRwkUcL9+xn7JkwlPTuW+aVWzr70CH30kLJsjuC+7jN/06D3XSna
 BylcziXNMY4ZIYZLAWfN4ozTP+dhYNRWSVcnIx8+poyf3CVGCiKT3OlIK
 O8gHWpGLo/ORFUoQo4PkNLds9VWHxGP16GxkYrs5cIa57hOHBVlI3ecPp
 rVUlqbumKOYT8MBjCC2ETuX57L6Kr8fifA1O21LRx63zEEtkry+oODHt6
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ICH683YK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/3] ixgbe: xsk: support
 batched xsk Tx interfaces to increase performance
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 13, 2025 at 08:34:52AM +0800, Jason Xing wrote:
> Hi Maciej,
> 
> On Tue, Aug 12, 2025 at 11:42 PM Maciej Fijalkowski
> <maciej.fijalkowski@intel.com> wrote:
> >
> > On Tue, Aug 12, 2025 at 03:55:04PM +0800, Jason Xing wrote:
> > > From: Jason Xing <kernelxing@tencent.com>
> > >
> >
> > Hi Jason,
> >
> > patches should be targetted at iwl-next as these are improvements, not
> > fixes.
> 
> Oh, right.
> 
> >
> > > Like what i40e driver initially did in commit 3106c580fb7cf
> > > ("i40e: Use batched xsk Tx interfaces to increase performance"), use
> > > the batched xsk feature to transmit packets.
> > >
> > > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > > ---
> > > In this version, I still choose use the current implementation. Last
> > > time at the first glance, I agreed 'i' is useless but it is not.
> > > https://lore.kernel.org/intel-wired-lan/CAL+tcoADu-ZZewsZzGDaL7NugxFTWO_Q+7WsLHs3Mx-XHjJnyg@mail.gmail.com/
> >
> > dare to share the performance improvement (if any, in the current form)?
> 
> I tested the whole series, sorry, no actual improvement could be seen
> through xdpsock. Not even with the first series. :(

So if i were you i would hesitate with posting it :P in the past batching
approaches always yielded performance gain.

> 
> >
> > also you have not mentioned in v1->v2 that you dropped the setting of
> > xdp_zc_max_segs, which is a step in a correct path.
> 
> Oops, I blindly dropped the last patch without carefully checking it.
> Thanks for showing me.
> 
> I set it as four for ixgbe. I'm not that sure if there is any theory
> behind setting this value?

you're confusing two different things. xdp_zc_max_segs is related to
multi-buffer support in xsk zc whereas you're referring to loop unrolling
counter.

> 
> >
> > > ---
> > >  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 106 +++++++++++++------
> > >  1 file changed, 72 insertions(+), 34 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > index f3d3f5c1cdc7..9fe2c4bf8bc5 100644
> > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > @@ -2,12 +2,15 @@
> > >  /* Copyright(c) 2018 Intel Corporation. */
> > >
> > >  #include <linux/bpf_trace.h>
> > > +#include <linux/unroll.h>
> > >  #include <net/xdp_sock_drv.h>
> > >  #include <net/xdp.h>
> > >
> > >  #include "ixgbe.h"
> > >  #include "ixgbe_txrx_common.h"
> > >
> > > +#define PKTS_PER_BATCH 4
> > > +
> > >  struct xsk_buff_pool *ixgbe_xsk_pool(struct ixgbe_adapter *adapter,
> > >                                    struct ixgbe_ring *ring)
> > >  {
> > > @@ -388,58 +391,93 @@ void ixgbe_xsk_clean_rx_ring(struct ixgbe_ring *rx_ring)
> > >       }
> > >  }
> > >
> > > -static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
> > > +static void ixgbe_set_rs_bit(struct ixgbe_ring *xdp_ring)
> > > +{
> > > +     u16 ntu = xdp_ring->next_to_use ? xdp_ring->next_to_use - 1 : xdp_ring->count - 1;
> > > +     union ixgbe_adv_tx_desc *tx_desc;
> > > +
> > > +     tx_desc = IXGBE_TX_DESC(xdp_ring, ntu);
> > > +     tx_desc->read.cmd_type_len |= cpu_to_le32(IXGBE_TXD_CMD_RS);
> >
> > you have not addressed the descriptor cleaning path which makes this
> > change rather pointless or even the driver behavior is broken.
> 
> Are you referring to 'while (ntc != ntu) {}' in
> ixgbe_clean_xdp_tx_irq()? But I see no difference between that part
> and the similar part 'for (i = 0; i < completed_frames; i++) {}' in
> i40e_clean_xdp_tx_irq()

	if (likely(!tx_ring->xdp_tx_active)) {
		xsk_frames = completed_frames;
		goto skip;
	}
> 
> >
> > point of such change is to limit the interrupts raised by HW once it is
> > done with sending the descriptor. you still walk the descs one-by-one in
> > ixgbe_clean_xdp_tx_irq().
> 
> Sorry, I must be missing something important. In my view only at the
> end of ixgbe_xmit_zc(), ixgbe always kicks the hardware through
> ixgbe_xdp_ring_update_tail() before/after this series.
> 
> As to 'one-by-one', I see i40e also handles like that in 'for (i = 0;
> i < completed_frames; i++)' in i40e_clean_xdp_tx_irq(). Ice does this
> in ice_clean_xdp_irq_zc()?

i40e does not look up DD bit from descriptor. plus this loop you refer to
is taken only when (see above) xdp_tx_active is not 0 (meaning that there
have been some XDP_TX action on queue and we have to clean the buffer in a
different way).

in general i would advise to look at ice as i40e writes back the tx ring
head which is used in cleaning logic. ice does not have this feature,
neither does ixgbe.

> 
> Could you shed some light on this? Thanks in advance!
> 
> Thanks,
> Jason
> 
> >
> > > +}
> > > +
> > > +static void ixgbe_xmit_pkt(struct ixgbe_ring *xdp_ring, struct xdp_desc *desc,
> > > +                        int i)
> > > +
> > >  {
> > >       struct xsk_buff_pool *pool = xdp_ring->xsk_pool;
> > >       union ixgbe_adv_tx_desc *tx_desc = NULL;
> > >       struct ixgbe_tx_buffer *tx_bi;
> > > -     struct xdp_desc desc;
> > >       dma_addr_t dma;
> > >       u32 cmd_type;
> > >
> > > -     if (!budget)
> > > -             return true;
> > > +     dma = xsk_buff_raw_get_dma(pool, desc[i].addr);
> > > +     xsk_buff_raw_dma_sync_for_device(pool, dma, desc[i].len);
> > >
> > > -     while (likely(budget)) {
> > > -             if (!netif_carrier_ok(xdp_ring->netdev))
> > > -                     break;
> > > +     tx_bi = &xdp_ring->tx_buffer_info[xdp_ring->next_to_use];
> > > +     tx_bi->bytecount = desc[i].len;
> > > +     tx_bi->xdpf = NULL;
> > > +     tx_bi->gso_segs = 1;
> > >
> > > -             if (!xsk_tx_peek_desc(pool, &desc))
> > > -                     break;
> > > +     tx_desc = IXGBE_TX_DESC(xdp_ring, xdp_ring->next_to_use);
> > > +     tx_desc->read.buffer_addr = cpu_to_le64(dma);
> > >
> > > -             dma = xsk_buff_raw_get_dma(pool, desc.addr);
> > > -             xsk_buff_raw_dma_sync_for_device(pool, dma, desc.len);
> > > +     cmd_type = IXGBE_ADVTXD_DTYP_DATA |
> > > +                IXGBE_ADVTXD_DCMD_DEXT |
> > > +                IXGBE_ADVTXD_DCMD_IFCS;
> > > +     cmd_type |= desc[i].len | IXGBE_TXD_CMD_EOP;
> > > +     tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
> > > +     tx_desc->read.olinfo_status =
> > > +             cpu_to_le32(desc[i].len << IXGBE_ADVTXD_PAYLEN_SHIFT);
> > >
> > > -             tx_bi = &xdp_ring->tx_buffer_info[xdp_ring->next_to_use];
> > > -             tx_bi->bytecount = desc.len;
> > > -             tx_bi->xdpf = NULL;
> > > -             tx_bi->gso_segs = 1;
> > > +     xdp_ring->next_to_use++;
> > > +}
> > >
> > > -             tx_desc = IXGBE_TX_DESC(xdp_ring, xdp_ring->next_to_use);
> > > -             tx_desc->read.buffer_addr = cpu_to_le64(dma);
> > > +static void ixgbe_xmit_pkt_batch(struct ixgbe_ring *xdp_ring, struct xdp_desc *desc)
> > > +{
> > > +     u32 i;
> > >
> > > -             /* put descriptor type bits */
> > > -             cmd_type = IXGBE_ADVTXD_DTYP_DATA |
> > > -                        IXGBE_ADVTXD_DCMD_DEXT |
> > > -                        IXGBE_ADVTXD_DCMD_IFCS;
> > > -             cmd_type |= desc.len | IXGBE_TXD_CMD;
> > > -             tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
> > > -             tx_desc->read.olinfo_status =
> > > -                     cpu_to_le32(desc.len << IXGBE_ADVTXD_PAYLEN_SHIFT);
> > > +     unrolled_count(PKTS_PER_BATCH)
> > > +     for (i = 0; i < PKTS_PER_BATCH; i++)
> > > +             ixgbe_xmit_pkt(xdp_ring, desc, i);
> > > +}
> > >
> > > -             xdp_ring->next_to_use++;
> > > -             if (xdp_ring->next_to_use == xdp_ring->count)
> > > -                     xdp_ring->next_to_use = 0;
> > > +static void ixgbe_fill_tx_hw_ring(struct ixgbe_ring *xdp_ring,
> > > +                               struct xdp_desc *descs, u32 nb_pkts)
> > > +{
> > > +     u32 batched, leftover, i;
> > > +
> > > +     batched = nb_pkts & ~(PKTS_PER_BATCH - 1);
> > > +     leftover = nb_pkts & (PKTS_PER_BATCH - 1);
> > > +     for (i = 0; i < batched; i += PKTS_PER_BATCH)
> > > +             ixgbe_xmit_pkt_batch(xdp_ring, &descs[i]);
> > > +     for (i = batched; i < batched + leftover; i++)
> > > +             ixgbe_xmit_pkt(xdp_ring, &descs[i], 0);
> > > +}
> > >
> > > -             budget--;
> > > -     }
> > > +static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
> > > +{
> > > +     struct xdp_desc *descs = xdp_ring->xsk_pool->tx_descs;
> > > +     u32 nb_pkts, nb_processed = 0;
> > >
> > > -     if (tx_desc) {
> > > -             ixgbe_xdp_ring_update_tail(xdp_ring);
> > > -             xsk_tx_release(pool);
> > > +     if (!netif_carrier_ok(xdp_ring->netdev))
> > > +             return true;
> > > +
> > > +     nb_pkts = xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, budget);
> > > +     if (!nb_pkts)
> > > +             return true;
> > > +
> > > +     if (xdp_ring->next_to_use + nb_pkts >= xdp_ring->count) {
> > > +             nb_processed = xdp_ring->count - xdp_ring->next_to_use;
> > > +             ixgbe_fill_tx_hw_ring(xdp_ring, descs, nb_processed);
> > > +             xdp_ring->next_to_use = 0;
> > >       }
> > >
> > > -     return !!budget;
> > > +     ixgbe_fill_tx_hw_ring(xdp_ring, &descs[nb_processed], nb_pkts - nb_processed);
> > > +
> > > +     ixgbe_set_rs_bit(xdp_ring);
> > > +     ixgbe_xdp_ring_update_tail(xdp_ring);
> > > +
> > > +     return nb_pkts < budget;
> > >  }
> > >
> > >  static void ixgbe_clean_xdp_tx_buffer(struct ixgbe_ring *tx_ring,
> > > --
> > > 2.41.3
> > >
