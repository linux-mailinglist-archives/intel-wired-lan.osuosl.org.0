Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F40C810FD9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 12:25:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB09D80C62;
	Wed, 13 Dec 2023 11:25:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB09D80C62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702466726;
	bh=X3PK9W0TOnaanQoxtc/Nd2NP0kJ+jKoIfIJRZJvmuus=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CtVMQ2vE4uABZFmCnRcL+z5yRcAclo9EGGx9izE1Io7SwXmoLOhHHb3qx3+HUuz3y
	 F5xwrzE8hYoHDMKFGEyr88+09WyiTjMoShamYUysou0KbAMmbSRTycarb/BbKlrgQj
	 U8egrtcCeQsAcma8LisoSFA2iw5miw0jvXoaGdyaj/yYtgOu9yqmln/lZw8TN7xZwd
	 SrVWgqIfOUNp5r4X9Im/jZuahVdoHgHqluA75MDrAAQ++a7jfFNFrcFcimVD9Trofw
	 7jhKn9iGCERm4swdi319r4NseI4Y0kpnCgUePjJZDas1C+7aG5l5BUDgE41rk6SYBl
	 OIn5Kq4ZumVnA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eQsXmejT0BP4; Wed, 13 Dec 2023 11:25:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B795280DAB;
	Wed, 13 Dec 2023 11:25:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B795280DAB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C22F71BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 11:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 99D3D83323
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 11:25:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99D3D83323
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f8l8-_Ko1o1z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 11:25:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54BC6832E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 11:25:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54BC6832E6
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="394701233"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="394701233"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 03:25:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="897300775"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="897300775"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 03:25:16 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 03:25:15 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 03:25:15 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 03:25:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TCS5YtAZZsX2yY3BiDF02ZayflwMONFHfK5w+wYELXgYydEfVScG6I6mN6N1UZlTlye3GPnywYlqxx4E+caiFKj/4AeXT5bDSBnhl2biqksQpOFXMCPOMe6wjubdT2sxqxdCWBE2OYodp1HV+iKTAXjW1vB6iDte1yi786sFJwCio3vu+tff/NyypMhevXaxxz+ot64LaJf4+2n7DnulHLi0K0Boby214NtAwEyPTz8IrcM/QclFJ+ALSXyCYCPvpnnu8SgXsMjJRHbl7CuHQx4tF7cVyyjp23bQTo/40HAlt8fwKnc3YrKk5cMQ85UBrUiXyLyvC7fhAq2/cgzSsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9nnKzpd3YWVWQ5jFouTjKJtzdbWt/OjslR1lz2RgQ3A=;
 b=LndqXf29l3J9pSpd8t7lAZx2WbfqiXlI6FMkTeETjEndNBSPdS8t5j0/AVS9XQuYbs4Pspb/+cnEn/WCrIow2iA8yovCMTUsYEwIMjOimipoA/k+Ql33obBHXILZ63LQUG4bvQ5Z0SpJKmLnzf+osCy9pO4Yuam8Uy0Z+kt0RAdSO1VjMz4XZ7RsPgD+rBLAVFwEcWL1ivzgYNOARR3z0FuOjT3IV9JOsvubbEN/iE/I23Ae5yeKXfolT991IDPUBirmNNuCyZsR3rlMawJmMCpn7gX4GRw7r7V9L4hzMX6cvTycroa5jXjsa643Sl5woNS11mCxNKn3apqjW3ckug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.33; Wed, 13 Dec
 2023 11:25:13 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4ef8:c112:a0b4:90f2]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4ef8:c112:a0b4:90f2%4]) with mapi id 15.20.7091.022; Wed, 13 Dec 2023
 11:25:13 +0000
Message-ID: <6431a069-6fc5-47ad-9519-868ae84b4a1a@intel.com>
Date: Wed, 13 Dec 2023 12:23:43 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20231207172010.1441468-1-aleksander.lobakin@intel.com>
 <20231207172010.1441468-9-aleksander.lobakin@intel.com>
 <1103fe8f-04c8-8cc4-8f1b-ff45cea22b54@huawei.com>
 <03d7e8b0-8766-4f59-afd4-15b592693a83@intel.com>
 <20231211112332.2abc94ae@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20231211112332.2abc94ae@kernel.org>
X-ClientProxiedBy: FR4P281CA0394.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cf::12) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CYYPR11MB8429:EE_
X-MS-Office365-Filtering-Correlation-Id: 134237fa-f14c-43c4-c2c4-08dbfbce2c83
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e5E5Pf2R+ZM8ribKN8egjAe3DfsZRrXXMF1Za7m6pf5AEvQMLRba4XPysV6IHLDoegP5u3Tct3DchFX/aufF6I3q5v8ZEI5lsDZ2V9o/VFIHBtB51pLSkBO3aPGFKNgMusrFMzpJpPWH5bvxp1QX6JrkNRlK5lepwzGWemn7dogx1szoYSaeFcP4kSnFaB8Co0PosCrnJfee7yyp1K5sm/THAqj37yF2876eVQOTwUnBVaoFOeP1/dl3owXN4zoA53TXKgYi74P3hmbvsE0YyeepCHk6bdDHqXBiTkSuCmnS91SUpqYhY1RtlLmGIXfXYvvzpyPcyCuXsJ4pUgQNn4Pfk0fn14o6V4f7IucCJeErdOiit3yf0lZqbvwaF2OvhvtgD5opECY5rfK10C2RDyLGhcAS3XdKRZ3lgQF25dqlT2ItDQMx8QLwZS9suxlhsUcXVPf4mowbtAr7q2HvF44RWskTZKONJ0bpq6/VP4DI+6GPn1YfaqARWC1ziVv8lK8eoVDObivrCXMxNUaEmuKENu9mk7bK794V8TryBVhwFmpj++M/BhRZ6VoRhMzT6jW4pvtpJYRF+njCCYffb0kJ8ZV0/ksQNtkGoS6hqlgQy8byirI552UU5gsOiepfs7wi+goPeNCrUjoIvyZd/A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(346002)(396003)(39860400002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(8676002)(4326008)(7416002)(8936002)(2906002)(5660300002)(6512007)(478600001)(6666004)(6506007)(66946007)(66476007)(66556008)(54906003)(316002)(6916009)(6486002)(66899024)(38100700002)(31696002)(31686004)(36756003)(86362001)(41300700001)(82960400001)(2616005)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHVsL3d4RmVpd1VFTnpyK1QzdXJpZk5kZzZpenhUb2JIK3JBbTRkZFMzemxq?=
 =?utf-8?B?V0szWWtEWmZlaysvU1hhVHdwamZra3I2eDlORXJCK0dIQ1pXeXc0NXZwZFVq?=
 =?utf-8?B?a1dDaFZjVy9DRENTY24zU3JYU2dFMTF2d1Ewd0lRbzdHQ0laUVg4eHhqOUNq?=
 =?utf-8?B?bEVsWWxjK1I0bEtsZ1R0em5WRmJVV1R5aHNzZHhSaU1Ka2VFS2lyVHJrY1dB?=
 =?utf-8?B?MGpWa01qS2N5T3l3Tk9DSkxSNmVGNlVEeUZ1K09rV2sxUE04NkllNTVnZnJE?=
 =?utf-8?B?TUlzenN2Z1JJd1ZlWjVwN01VRDVBdXNYem44OXBvYXFhVXJGanJGcm1zSllu?=
 =?utf-8?B?OGhHOTRaSmMyQnpJTzNvWkdTM3U4NFMwQmV1RE5PS3hkSk5tNGExTDNiZkVa?=
 =?utf-8?B?STUzdmxwU1BLSCs2NnAreURBTmdnbjJ2WFpJQ3lPZ3BncXZyUHoyVFdJOWxs?=
 =?utf-8?B?NEpFMDVPbGtwMjRzT0lGcU5Jcjh1c053M21jMVUwTWswVGFOT29STHhzVXNw?=
 =?utf-8?B?aXdhUU01YVkzTlB3WGN2Vk40dUVOeUpXOGRZeVh1RnhZNnc2NlNLNU9zUlF6?=
 =?utf-8?B?MDBaZkdaWnZzaWlVMWtNS3FCSlFuT1ZUdXdHaS9kU2wrSk1NeGwvMzNidXFW?=
 =?utf-8?B?WjVQQXBPejk3TUVOQXEyM0wzakFibFYrWUJiNXFBWVpuVGFYYXVmYzIrbThw?=
 =?utf-8?B?a3BiOVNicUtheFRqYXNIbDltV1VCaUpReGNoQ1NJQlNiRkdzZjR0TXROZFJG?=
 =?utf-8?B?R1VJWWJtSkRyNEJndjF5cnNQSDhBS2ZkN0NZMVFRZ3A3OVZGZllxRktpLzZZ?=
 =?utf-8?B?dkVDNUdCNlNCVUNMQ0RUSVdGdXVqdm53VDRHUXRoYlRZZkx0R3l5dzlFRSs5?=
 =?utf-8?B?Zm9RbHhRSTJ1VkdRRlR0aTRGaEpZOEVWdXRZNGRUa3hVRktlZlRYcWJXN24r?=
 =?utf-8?B?bEludTUxQVZnZldFWGtVT21FQTcyUy9pQzg3SE9sY25wL1FhU0ZDdlp3TS80?=
 =?utf-8?B?UFpUdkordHROTDBCMDBJb0VzWUl6N1RUMkRzNFJXdFhtTU9YaUsxZnYrV2dl?=
 =?utf-8?B?U0p5c0lhTnN6cFIrdmo0djdtWnovbVFCV1pXQnBTeDR4ZjhSSko4UjdBRmFG?=
 =?utf-8?B?bjdhWTljb2lJdTFDcFQxR083dGpwT2YxeEp5N2MyUkU5cTRFU3ZmUEI2b3F1?=
 =?utf-8?B?SGZKVDFHVEd0VU9mT3FYODYrYjBKdDhDZW1SVWdLdzkyL2thVGhyTlBFK0dO?=
 =?utf-8?B?d1JsYmkrSTZVeWIyOU83ZVJ1cC9ZYWdVWWZZU2NDQjhlK21JR0F5U3VhNHk1?=
 =?utf-8?B?UHZoenZNOVZFSnB5d2N6TDFGbmN0Z3RXa3dycmVTTnpFTCtPQ0pXTzlBOXpw?=
 =?utf-8?B?ck4zcVdGaEg0aE9CMlVRQ0MrNFluODJKREVYOFFCakVobG04WXU3bjlGMlVw?=
 =?utf-8?B?OEVzNDhqcnlYTEozTnBOTlBHMFdGbk1aT2hIeFI0YTQxUnlYa0NNNmdMb01q?=
 =?utf-8?B?TUVXSFVwZytOWjhsTmdidXFOMkZtdnhnNzFSSjk3TmVybWhlMG9CL25XM2NP?=
 =?utf-8?B?SGF3bTFqUGEwelgwTVYyVU1OM2Z1UHQxbXowNElMUHV2OER4V0tJTXIrYU9H?=
 =?utf-8?B?VlNWYVpUZzdrQW9SdGNRQWZQNnZLOUpCWFhxazE0OTVocW1aQkJsTEJZQnZp?=
 =?utf-8?B?UzQ4cTRkMFcrcXZJSEpkVFNONU9YcXJJT2ZDejdXVlZHaEF1c2ZIWUZGT2lk?=
 =?utf-8?B?NUFXL3NRQVVRK0h0ZllmMnV3SzBQTmxOTm4xRDIrWTY3VTBWV1dOVUh4YXZw?=
 =?utf-8?B?TlJlbU5QWm9jWU5mOGNEdi8zSWRLVmtRdmlTcDNoWmdEaWNqdHhlMEtPVVJn?=
 =?utf-8?B?OUV4Y05xdzEyTkh1MEJVM1V2Y2RGMFl4eEtwVnpjanl6QmZVNUVzV09STWVL?=
 =?utf-8?B?VDlBZHAzMjZSREc4ZTJCMDQrN00xbFBtbTkvTTY1eG1rbWhzVmVwbXBudkJo?=
 =?utf-8?B?RWNrTkpTckV0NzdqN1lqVG8zMkF1V2czc1hvQ2dSMkFoQlQ3Z2FOTU11WHNn?=
 =?utf-8?B?YkJWYjJacWszUER1VFVOSjY2ZWNYalpucUxEZDE5bVJmbUdDK2R0QUJSOUpR?=
 =?utf-8?B?U0FvUlU2OHZvOW5zMmh5c24yT0Q3L2lLS2cxWlRBRUkyM241d1AzV2R2RDFx?=
 =?utf-8?B?NWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 134237fa-f14c-43c4-c2c4-08dbfbce2c83
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2023 11:25:13.3863 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g35Zax1fuikIgOafaiVVnIKoRzaDoGWfOyl2/rVfzqzvk8fTRU33CD78TVhvWtGrc2Uu2vvCCwkYSJSF869pK+zVGlHmjWC9YxcqDw23mE4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8429
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702466718; x=1734002718;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h7DCA4dK5LCDesJqzXxP2MwxfuxOlrIU1/O31hpbu1g=;
 b=Pw1J5rZagf08HrwwnehcA7yF3gnWdU+cCBh3m+QagHXJO2ejUGQ04tts
 pdAsiDwpO9MIEZq51zTGaQWKIrB/EDEfMnHjvbH+jjJvDUR3/xrhG8wL+
 C48MNJNOSiL0/oMEljEjJocstXWQCw8MpsXhwmoK1jKWjKpsoAufAdBw4
 bvPmlkSjhvFXE37YSshLYNOvJ+b6m/osUZuvONnslFVkiyN+2wuyj6Tzj
 AQfgU04vFNurWgD79r5ZqPBX7vG1vpsfTE+8jeOXysWK7iX7brtJTJzwP
 Y8Fl2g9uGGkq1h2AmauoafSOdCCtlu6rK5kG+FIFaFY1SGj99oANsZgmV
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pw1J5rZa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 08/12] libie: add Rx
 buffer management (via Page Pool)
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, Yunsheng Lin <linyunsheng@huawei.com>,
 David Christensen <drc@linux.vnet.ibm.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4KRGF0ZTogTW9uLCAxMSBEZWMg
MjAyMyAxMToyMzozMiAtMDgwMAoKPiBPbiBNb24sIDExIERlYyAyMDIzIDExOjE2OjIwICswMTAw
IEFsZXhhbmRlciBMb2Jha2luIHdyb3RlOgo+PiBJZGVhbGx5LCBJJ2QgbGlrZSB0byBwYXNzIGEg
Q1BVIElEIHRoaXMgcXVldWUgd2lsbCBiZSBydW4gb24gYW5kIHVzZQo+PiBjcHVfdG9fbm9kZSgp
LCBidXQgY3VycmVudGx5IHRoZXJlJ3Mgbm8gTlVNQS1hd2FyZSBhbGxvY2F0aW9ucyBpbiB0aGUK
Pj4gSW50ZWwgZHJpdmVycyBhbmQgUnggcXVldWVzIGRvbid0IGdldCB0aGUgY29ycmVzcG9uZGlu
ZyBDUFUgSUQgd2hlbgo+PiBjb25maWd1cmluZy4gSSBtYXkgcmV2aXNpdCB0aGlzIGxhdGVyLCBi
dXQgZm9yIG5vdyBOVU1BX05PX05PREUgaXMgdGhlCj4+IG1vc3Qgb3B0aW1hbCBzb2x1dGlvbiBo
ZXJlLgo+IAo+IEhtLCBJJ3ZlIGJlZW4gd29uZGVyaW5nIGFib3V0IHBlcnNpc3RlbnQgSVJRIG1h
cHBpbmdzLiBEcml2ZXJzCj4gcmVzZXR0aW5nIElSUSBtYXBwaW5nIG9uIHJlY29uZmlndXJhdGlv
biBpcyBhIG1ham9yIFBJVEEgaW4gcHJvZHVjdGlvbgo+IGNsdXN0ZXJzLiBZb3UgY2hhbmdlIHRo
ZSBSU1MgaGFzaCBhbmQgc29tZSBOSUNzIHN1ZGRlbmx5IGZvcmdldAo+IGFmZmluaXRpemF0aW9u
IPCfpK/vuI8KPiAKPiBUaGUgY29ubmVjdGlvbiB3aXRoIG1lbW9yeSBhbGxvY2F0aW9ucyBjaGFu
Z2VzIHRoZSBtYXRoIG9uIHRoYXQgYSBiaXQuCj4gCj4gVGhlIHF1ZXN0aW9uIGlzIHJlYWxseSB3
aGV0aGVyIHdlIGFkZCBDUFUgPD4gTkFQSSBjb25maWcgYXMgYSBuZXRkZXYKPiBOZXRsaW5rIEFQ
SSBvciBidWlsZCBhcm91bmQgdGhlIGdlbmVyaWMgSVJRIGFmZmluaXR5IEFQSS4gVGhlIGxhdHRl
ciAKPiBpcyBkZWZpbml0ZWx5IGJldHRlciBmcm9tICJkb24ndCBkdXBsaWNhdGUgdUFQSSIgcGVy
c3BlY3RpdmUuCj4gQnV0IHdlIG5lZWQgdG8gcmVzZXQgdGhlIHF1ZXVlcyBhbmQgcmVhbGxvY2F0
ZSB0aGVpciBzdGF0ZSB3aGVuIAo+IHRoZSBtYXBwaW5nIGlzIGNoYW5nZWQuIEFuZCBzaHV0dGlu
ZyBkb3duIHF1ZXVlcyBvbiAKPiAKPiAgIGVjaG8gJGNwdSA+IC8uLi9zbXBfYWZmaW5pdHlfbGlz
dAo+IAo+IHNlZW1zIG1vZGVyYXRlbHkgaW5zYW5lLiBQZXJoYXBzIHNvbWUgbWlkZGxlLWdyb3Vu
ZCBleGlzdHMuCj4gCj4gQW55d2F5LCBpZiB5b3UgZG8gZmluZCBjeWNsZXMgdG8gdGFja2xlIHRo
aXMgLSBwbHMgdHJ5IHRvIGRvIGl0Cj4gZ2VuZXJpY2FsbHkgbm90IGp1c3QgZm9yIEludGVsPyA6
KQoKU291bmRzIGdvb2QsIGFkZGluZyB0byBteSBmYXRob21sZXNzIGJhY2tsb2cgOj4KClRoYW5r
cywKT2xlawpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
