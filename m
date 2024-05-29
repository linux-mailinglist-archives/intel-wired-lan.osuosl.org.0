Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B718D2979
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 02:37:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D0F08214C;
	Wed, 29 May 2024 00:37:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z8EcotntXlqA; Wed, 29 May 2024 00:37:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93A7B820B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716943022;
	bh=XrPjOaVGi2HYXtYJ7vzY0VkB/VEBJLPjQ347EnLUaLw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H5FB5qsm6rO+AjhNBbHrBwJF2vnxuuwa+YHoUeqeo68lvUPcvOWsEsGksUXOZ1hF2
	 tPjMH2NXlqtDEK+JC7S3g73nis7qAUEP3wmjVtVzp2hymPT/44l4YQbpH+oQodCJzA
	 qFRtMzs7hrXWgJ3dgp3PNew2PAKtVWDsNNlDYAQ0+AXZhBEHYgPe19EdZmUEA+raoF
	 cD16ZB+/14WJEoJ4xNph0p8wdqxOchB/N7I/y4Av0GZpucVCByNei7Yc2lrZFm/eh+
	 /XjGIT/KIfjf/pPoswt1UBmELbMIXo8QgOpwCPlVlys2wiSUugfoqB1zvFB7ppDjgi
	 aFb/Z/VWhTehQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93A7B820B8;
	Wed, 29 May 2024 00:37:02 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 218621D2ECC
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:37:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0AFD64087B
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:37:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RU2YDdHTBay7 for <intel-wired-lan@osuosl.org>;
 Wed, 29 May 2024 00:37:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DDA084086C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDA084086C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DDA084086C
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:36:58 +0000 (UTC)
X-CSE-ConnectionGUID: cDU6E+uHT9qrP4nMx+8yoA==
X-CSE-MsgGUID: 3gKTNdHJQB+/6AIfeLxF7g==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13142917"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="13142917"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 17:36:58 -0700
X-CSE-ConnectionGUID: 2EXNz/uvRvePkTAeQjURXQ==
X-CSE-MsgGUID: csk0IkFgQr+q1souQuxtbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35229472"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 17:36:58 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 17:36:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 17:36:58 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 17:36:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TdJbZ0zr3Ag9fOcUCTHAlO4gjjXfWb7W2DvRiFx45gBrWrduZmV3H+T6UMTjCh4hl0sQlAZsnx37h/dv36wUFx18dB4cHQGUWoSjUlVlbc0wXN/bNVw+XXgCitPYMah4rG9WqhooCe9TfSHiIW1qD/OHJ6EiXGZdzomRVSWhQKUYN8b9yb/tPy05NnkMiKEy+Q0i4yWSilLB5HUgX/nLw+iG7mpZD+K9BuNjJf9qstnlxI665FosXxl1HFjRu1BHFVTfZyHbgCrJSbSkdy4QyBvU8ho2JVlBLqY9FQWUfCb0h0qGZ8zm80YnUgwMfB+MKhF1M0QNqrsWe8/maVQOhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XrPjOaVGi2HYXtYJ7vzY0VkB/VEBJLPjQ347EnLUaLw=;
 b=V1rKm3CPr2yBqFwKqYoP3L3WO8vEw0gNywXny8R5RqMRLWG6Z1YkGtv5r5OMyjBsdbQSw4oh05u7lnIsmRKm9YQiNm4UvO5yOSoR/Zoa14S74x7Jzlqrtt6uRhcmLBVGMa8b2ZmtUdZBj3hyu4rp//0cEauCODF0AA74e+bbsWMCZX1tNEcga8aUhv+z9FjcQrh8DIm1pcyoV9POCtLt546pGl+QfZUW3Tz5MWBD0rnwF6rvue+aHUn+0Mko/9yLrRpDh3qK/AeoSVTskAVtyK7KmdYSWLyBHOkJIVPaAq/5gJjpFZ4j9ou8egnkstH+QuExhhXrHleGCGA+iDCZtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH8PR11MB6802.namprd11.prod.outlook.com (2603:10b6:510:1ca::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.28; Wed, 29 May
 2024 00:36:55 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 00:36:55 +0000
Message-ID: <a4e007cf-35bb-4d58-9195-0c1315af8033@intel.com>
Date: Tue, 28 May 2024 17:36:54 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-5-aleksander.lobakin@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240528134846.148890-5-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0230.namprd04.prod.outlook.com
 (2603:10b6:303:87::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH8PR11MB6802:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b87007f-53d9-4b44-01d6-08dc7f77711e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TDNOUDJ1SmJDL0xKVHN6SUF5Q0M2bUVOdGNhalFVaWcyN2dmOThlYjlXZlRC?=
 =?utf-8?B?SkYvN2tETW1xOFowMDN5Qk9hbmNoemJ1QmNPMU53WDJ1VXorK2lwa05PanZR?=
 =?utf-8?B?OGpkQmZQSFRNWXdLQ2VjOWhyejhxLzNCUHNzVjJGT1E4WWRHWHlyZGRQK1JJ?=
 =?utf-8?B?SFBQVTJnVEczbUxTQXE3ZUtySk1aWG5WTFBjRXpwbHlRL1ZtM3JnTnpkOC9j?=
 =?utf-8?B?UmIvMkRsbmkwVmhuUzl6OVNVaG9pMXAxVUc2TW5vck9mZWc0bEdxOTZIQWxV?=
 =?utf-8?B?V284TXVWcWJ5Z04zc1loNmNuV3hkMmhrVnFNR29ValBrUW05NFNJWDBLdjJ3?=
 =?utf-8?B?TEMvTkpPSmx5RGZ6WHc0SFNJN2ZYNHFWYi9kOXJGNHlnVVZsejBQakx4a29l?=
 =?utf-8?B?UXRQMGI1WE5NVnM2YmhHT1BCaUhmNFF4Z2tTQlRaZkF1MlhSWDJ4STRTWFdV?=
 =?utf-8?B?T0lmSm1SLzNtVlNxMlZCUVNoSXhYcVJ2am9kSDRmMFNDTkpjWXBjeDRQTzYv?=
 =?utf-8?B?M1ZNWjhIZng4VWVZc1pUaDRaY3BsNG5xM2lsZkN4YmRsalMvKzJ5N2ZSdHBh?=
 =?utf-8?B?Q25ka2hGaDBWNnZ3ekJoWGFhckFGaXZqa1BKQVRPdXM2UC9sWUlSQnY4MjJ3?=
 =?utf-8?B?amptVEljVGdZQ210aXd3Um1weDhZN0h1Y0x5MjBHako5S2daY2tWMk1NZldV?=
 =?utf-8?B?VEZ3dlpicXJyWU03S1JoblpzY3RPTEtLVmlqNU9BdDdpKzhqaWNRenFaVEx4?=
 =?utf-8?B?N0p4RzE0dmNxYkNZVFlTcGt0Ulg0UGJuK2dtaE5NSXJTSGMxZXpCeXhkTi95?=
 =?utf-8?B?cGtwVlAvdVdXQm9PSmJnNGgvejNkcjlZUTBOSzJYZ1JZd2ZyMy9qL0pvUVQv?=
 =?utf-8?B?amdsZVIvOVk3OHRzbzdRV005aWg3SWFBQWlmV0ZpYysrdXJrVUlxNTIrcE5Z?=
 =?utf-8?B?ZVhXOTRvdWFNK3ZtNlJ1aWlvaEJTSWk4K1Rsbzk5a3BTQWFmcStCbnpScDBE?=
 =?utf-8?B?RFB5Uy8rSDF6MkNHUFlwb1NqeWM5ZjZnS2czYlBpcWFYQlNJVkdGQm5ESVY2?=
 =?utf-8?B?NnpzYVJwWjRiRDVIYjZRRDMrbjU3d0VudHQyeFRBTzFrei82L0tSQlZrNnQ3?=
 =?utf-8?B?eFZubWE5b2Y5VW0rZjRKdVM4eWNXSWhrNGpDRHhEN0xpRndhcXFzT0NOSXBR?=
 =?utf-8?B?a0VTd2srWmdTOTl2bjZlRjVMV2ErcW9qRTFZeDVoVVBKRDBlajErNGxyVDlh?=
 =?utf-8?B?ejAwSXJzR1QydVpXZk04dnFOWmJxRC8yZnZ1OHZ2MHNQakozYVREZGhFQ0Ji?=
 =?utf-8?B?cGFsaUV6YzNtd09LRlY1cjYzWk5jWGhMTVVEL0ZrdFhqSXU1eHJNMEt0SUhy?=
 =?utf-8?B?WTVPdHZBcnhwZWpBWGYrRjBYNVlRMjhwZ3Nodmgvb0xWSit5dGQ4K09nYVF0?=
 =?utf-8?B?NU1YUFU5Yk5mUDVhdHU2VjAxUVhBbEduNFR5TWJpbkwwL25aYVVRUk9Td29R?=
 =?utf-8?B?cUV2L2xyaFkzZlgyR3dwUjJCNmQrNm5SVURxR2x2SElqR1JYalFJakdDUjZq?=
 =?utf-8?B?dVdXejhYWWVRUEtGejlpaTdnSVZKUDh1YlpuOEdLd1hWVjRvQ3RqbTNXRXVR?=
 =?utf-8?B?ZFc2eTlTNFUrS1VSMGRLcld2WWowcStvY1FQcWh2eW1hekJPWWxqTW4xNWtJ?=
 =?utf-8?B?N0RUNzR4NUlIVFR0SnlreHNXUXkxczZtTjhpVHFLRmFheXBPNVd4d053PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1pzSVVWSjc2NDBOOXhkL0h3U3pldjErbUxjSzZ5YnVnZmtnVmtITkFhQ0Zi?=
 =?utf-8?B?a0gwOHZPVit5NDFINTFsUHZTdWZxNVgyZWdoSUsyYjZGckM5VitrUEtCdkl4?=
 =?utf-8?B?bmhFVDQ5Nll3ZXdxZTZnTlRGKzhBWkhHdTB4QU9pRDBBcWVMeHdRa0ZwbUpj?=
 =?utf-8?B?Rmx6VkltbEhFS1Z1S1FmMS90eXh6dC9EeUljM1hzeDBVTlcxd1F0cnFoU05i?=
 =?utf-8?B?R0NsVXN0RG9zaHhlTzhwb0JuQnJ6SEptSTlTaTVFOWVrZ2tZa2NYTHBmSUlX?=
 =?utf-8?B?OGl0N0ZvUUNkZFdrdlZ1WUI3M0l4UXBoQXpMajNnUU5RNkszSjZvd0E0VUEr?=
 =?utf-8?B?UU1hZ2llOGpjZk9odmVZekNpL0NtaFFuRWxSbmh1ZzVXbGZpak96N0FSWTVV?=
 =?utf-8?B?aUw5WjRxSzdFTE1WU2ZPOVVCUHhVN2lwaW84TzZSK0xBRUpQazQ2NlJCc0xr?=
 =?utf-8?B?MjdaV1U3VmJ0UXpGTjJERDFLMVpXNXVXUVpZZzJlNVI2SDRYNmxEeHJkc3NU?=
 =?utf-8?B?NmI1blZJZjdjSThmR2hKTkxjd0txV0lNQ0RrNlNJN0dSTnhVMmluV1BUMlNz?=
 =?utf-8?B?dTBWY1hUOEVGMERFT2NzZnFRcUV3MHExUnFMSVYwTHlwd0l5TkVHaWxxVzhM?=
 =?utf-8?B?bVBzYm8rY3NkRVlGb2pVeHp6WGlDcS9EWjM2MGIyd1pRMjNoS0lZZ0RLenRz?=
 =?utf-8?B?bkloTEhmRWxncTRWMTNpREpEd2V5d1M0a2JuUEhSbE5UNTN5ZytqR3RFQ05n?=
 =?utf-8?B?bTJwVFRVWllTeG83NGJ2eHVCZGxUaU45aVdOVmFobHNGeFZrQkxXL0h1Z1J0?=
 =?utf-8?B?NldXV293cnVSWGZickJpZnl5N0lrNklFemdPTXBDMjZBU3VseDVobDlKN29G?=
 =?utf-8?B?TlRPaG1jRmp5blpYVUQyeTRQcHJaMzRZKzZPeUFnQUYvbUkreDRxaEVvQm1I?=
 =?utf-8?B?dlJKRFFWLzRTMUxhcW54Zm85eEVrWUJWczc3djF0ckhQd045MjlDWG9ORzRF?=
 =?utf-8?B?eWdQaElaREltQ09kbWZJOU9YUlppWTk2ZEZTMnpLNm9QdjFBbnVHZXk3aUha?=
 =?utf-8?B?bEZWTjNyRjc2aWxHVTBxV3VXTzlEM05GTzBvQkROU2hiMFhtaThhS2lBN21k?=
 =?utf-8?B?ZFRDVVlFU0dhbFdnN09mbHUwa2pRT2xhSTJ0S0RGaENBSDdVK1dEdmhMclp5?=
 =?utf-8?B?M0krb05zeW54M0Q2YkhYYlFSTFVkM1owOW5WcmFVOXBhR3BOT2VINk5wWW9C?=
 =?utf-8?B?aVBKb2JoLzRxQ2wrT2RXcHNVYU5QT2F2cGlCN2ZGVGd2U3Q0RjZEZWJ3cyt4?=
 =?utf-8?B?eW5WbXlTdDhoNE0zcW1lR3E3eS9OR1QvTmRHMjBhbm1yMTY0ZDNhZVhpeTBG?=
 =?utf-8?B?VzdSdGFKZWJ4RUV3Rldha1lKWldYbzk3ZjJ2azlacjBNbmdPVUlCdksyVUNW?=
 =?utf-8?B?dUdOanpwK29QRlI0aFEzR3V1L0RDbnlyV3RORFhaZFBWYlI4TVl4OXJ5NlhY?=
 =?utf-8?B?V1ZQdnQ2bk95TTVvYktxVytJNTBxek4yS3c0dmQ4cEZPQ0s5akc1YlhWb3R3?=
 =?utf-8?B?UnRsd2FKK1dtNU1XSXJQN25hTlVlSGxmSVhWVGtQTTkzNXNHUmNrTjNRRWZH?=
 =?utf-8?B?dlJDNzdzcjlJUW5qUllIYk5CZ0dXZ2ZOSWRQOS9Bc2hVMFhOTXM0MmorcHNO?=
 =?utf-8?B?TVNwSWw2cmowdlBVaWdsak4vSmhUem1HMURsSUlzRzVCZW05TC9DMjVpUUFp?=
 =?utf-8?B?Sk10RkJzcXRkSlNSSWJIaEhuWXdxd0V4eElZcTY1N2V1SElDaEczZ004ME4z?=
 =?utf-8?B?WHExbjl1TWJ2WVJPK3paeU52RjdVSGdVUm5VaW9ycGRlOWdubWdOSU1oVzJZ?=
 =?utf-8?B?SS9UL2wzcTVnV2pXeHNPNjdZbW5pdW9jT0RNOXFCRG5oUi9hVkJHL3N0eWND?=
 =?utf-8?B?eGF1aEtoekQ3djlhRXhUTXQzbk8xRzRWdFR5Qk9QQU5jR0FVTGkyTWQzT3VR?=
 =?utf-8?B?OUMvYm96WTBFNmVwMUYxQmw4MVhqbDN3b1dGRkptem53SURteHV4dnFPTG1Z?=
 =?utf-8?B?VlRrd2RQbXdkVkNIS3R6NFNGWFNPaG9uU1crbXhFQjByckNrUy9CU1FRbVkw?=
 =?utf-8?B?bW5DclphUTZwOFJaNm1NaVFEWmhURDl5bkkxUkhoUW5SSi9kNDMyV0hTVlNo?=
 =?utf-8?B?Q3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b87007f-53d9-4b44-01d6-08dc7f77711e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 00:36:55.6304 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SFyF/+usoRu0FAuXuWUys6ExPTS/vufGQrwbh8VjiVNY8yV2i+Uk3EBKPXVaPhGY5OcbH3kIH9EPrpcTXl3u0x2Libh9ViNzvVcyovmZwRc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6802
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716943020; x=1748479020;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iABdnUJFA9bg2cAghk0UHTA2x/6et7xBT0hAXTZ9OmU=;
 b=h9AGu5M7FjXIsy+Vo1ZmkWdcOZKJeLt4Ge/mNQvoMGgfYykzM0kEKSOq
 TvtHD6hDYHUOZvwGRUeBkhXGsmW2MZEMeh9BcNfo3boQ7qds+m+6I6jB9
 YzYb3UjNww6JnRKd4FGAAXUyxnPFGJhM/ayE8zGKMPYn8NWN4PgKTTrh5
 O3513Mr3TwCplmvBaRIPRmgIhLpuDvRh0EAmLPXabq4GvOH0tYw+CweGj
 o1fjyaVZWifkSs0QlX0nxl7bglTUpadNoMzdkL/fSwUNe9UwCyKbCLvXJ
 SQuOX1Ucuw5Q0jIeiPmBIpCIQuDUwJv8Dj0nVpD60r5L8x1oAOvtyn8Du
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=h9AGu5M7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 04/12] idpf: avoid bloating
 &idpf_q_vector with big %NR_CPUS
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/28/2024 6:48 AM, Alexander Lobakin wrote:
>  
>  struct idpf_rx_queue_stats {
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 3e8b24430dd8..a8be09a89943 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -69,7 +69,7 @@ static void idpf_deinit_vector_stack(struct idpf_adapter *adapter)
>  static void idpf_mb_intr_rel_irq(struct idpf_adapter *adapter)
>  {
>  	clear_bit(IDPF_MB_INTR_MODE, adapter->flags);
> -	free_irq(adapter->msix_entries[0].vector, adapter);
> +	kfree(free_irq(adapter->msix_entries[0].vector, adapter));
>  	queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task, 0)

I will say that this does not read very intuitively, but does make sense
when reading what free_irq does.
