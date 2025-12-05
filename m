Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D12BDCA698E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 09:05:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCF5240A70;
	Fri,  5 Dec 2025 08:05:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mzpvv72Ia3EW; Fri,  5 Dec 2025 08:05:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F6C840A75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764921916;
	bh=Y5yVxxAIo32Ec6LVVw1KVDeckGlkN9wd3reB72KBMXQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RQWRXD2Q9CbfKT0DYnmkcASkVQgc9fD67wjH4rfzQ1vXljV4mt7rcAvfac3G7r8Z+
	 6CXpqIQeS2gU8euuljqyIrtDs+WeQk/9di2cG83CPgHnu4rV3OmZ9Di7vMma6VUybq
	 NktTAYgSWiUAvTGBQp3gwVFqu7e55yewX/JkU4oNGKqV2UkdUZdef7D0gtFPjFG30S
	 y6uLnKm0hYypCVj/OLrgzrC3q3pAVQUu6eeuwa86ggKjypokM1vgDMfJA6dtgEYk0I
	 EzyceJGRueC4igPwYn8zNZut1cpp5LSmG1UiStD5iUbmRCesti+B0CIo5j5+AuERSF
	 UeGvWNPDMMp6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F6C840A75;
	Fri,  5 Dec 2025 08:05:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 522B9199
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:05:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 388EA6086A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:05:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1PdRFQ8e46u2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 08:05:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3E80F6076F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E80F6076F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E80F6076F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:05:13 +0000 (UTC)
X-CSE-ConnectionGUID: Ox6waNqISjy6yWBDbAj8QA==
X-CSE-MsgGUID: XoOVR5sQSveRovwohNNoYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="66990242"
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="66990242"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 00:05:13 -0800
X-CSE-ConnectionGUID: Cs4x9uI4SceoOU2RsMV34g==
X-CSE-MsgGUID: bgJ1RS75QQWj8jP/PRRVJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="232598100"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 00:05:13 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 00:05:12 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 5 Dec 2025 00:05:12 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.13) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 00:05:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tVUfqbFaLX64pP+IyE4gZYXZFbmbxVWY37eN2xJ4ACcOjh+NpUN3RhqnUDm3nXT/y1AStBR3R3FaSX+Vi30xbdEy1F9tIb4sEmATHmBGgd5edwUQDJom22XXcRxqN7ISqiSyybckxRGe31rsjYKoA5Tfpzg7s2u+wgjrvfAJc8OrMmJ0j30P1IJVyLRuZ60uggQgcY5NSGxv80XwumIzn91FnG5ONdPquTc2t8ZwUHyoRIkoauOazR4U7vTeOZ4cZqaBVwixlD4GeT3rxY3pXC1S/lnz1nGVEAvsOAx7xIr3CYXOnQB9roKwQHyexcyNkrdZTB/MaMtTYLk1e6832g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y5yVxxAIo32Ec6LVVw1KVDeckGlkN9wd3reB72KBMXQ=;
 b=a6wAbq9OCibL3imyyu5JRMo5szeGH8B5zRNydWXq7QFH28E7YlvQ5y8SEuYnQW26/58w1tNs+EMRRbNLCTWeMt7JGJShNxTV9NVJUP2XL43Ro9j90GBPNKwvp+Do04iUiiow7u00eTJ7PR/1nfvQdfnDcZAEUvn2Z7K1K2ZGu7ABIbdR+ePj36Ubets8i7Jd7y1sWwgTHCNCy5k55wdVOn5EUx+3mj8+5qftAJsTjGv4mrKEYiNFOhKFR/nKZyska8ybT0TqYKwcwp+9c0GIpmigEnADPrD2HFiu87eBVhUs/BfB/zBlhDApiRdVPRWib1+Lkw12QygLtrmHazvgNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH8PR11MB6952.namprd11.prod.outlook.com (2603:10b6:510:224::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.9; Fri, 5 Dec
 2025 08:05:09 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.011; Fri, 5 Dec 2025
 08:05:09 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Aaron, Ma" <aaron.ma@canonical.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/2] ice: Fix NULL pointer dereference
 in ice_vsi_set_napi_queues
Thread-Index: AQHcZZEB+Q4u3sE4H0e3BVkVM6zPC7USoaUggAAL0QCAAAKrEA==
Date: Fri, 5 Dec 2025 08:05:09 +0000
Message-ID: <IA3PR11MB898663E108AB393828E468B9E5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251205023757.1541228-1-aaron.ma@canonical.com>
 <IA3PR11MB8986E3F5CD6666035875A112E5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <CAJ6xRxV41ijkGmQycdiK4Miu8sQGvo3sQt17azCqZFJOQv5fVQ@mail.gmail.com>
In-Reply-To: <CAJ6xRxV41ijkGmQycdiK4Miu8sQGvo3sQt17azCqZFJOQv5fVQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH8PR11MB6952:EE_
x-ms-office365-filtering-correlation-id: cf5976da-7339-4a67-cb24-08de33d50275
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?Q29OTmZUYmtyanMreEI5VTJEelB5d1dWdG5aaEJCT3o2S0x0UndiTGpIVkpx?=
 =?utf-8?B?MmNJbnRoYnJVL2lBRUl3bXU0blZPYkJZUWx0ZHE1ODJsSWFwcCtJbUZpZnpZ?=
 =?utf-8?B?UCtYeWJPVkxaT0hxaHRKTk5XbVcvWGlnMGlSeVpTNGRuaGVaWWYxT0xicnhJ?=
 =?utf-8?B?TThlTHdBTVZkRFlMUjVCSjRKM0NZR0RVaEphTkpoajUvS1RNNWNxaFdHcHlt?=
 =?utf-8?B?SitNZG9taUVXQ2E2TXN6cGc2RmlrTGYrdTFLZmR4aFZHcDgxZWxWSE9PZExj?=
 =?utf-8?B?UStFN0xSclFHbVRzTTR6VExuRGUrdGdja2JkaS8yL3ZXTkdkRjhYMGdTQm85?=
 =?utf-8?B?RmhIa1VJZHE1aVR5andvemJ3b2NTcWlGR1FGeUM0VXhCWUxUMGNkUWZOYWt2?=
 =?utf-8?B?bEpLYS92b0pzci9CWTJqRXVOaXN3ZkZadkZuSGQyblh4aTNmL3ljVDJoNDdi?=
 =?utf-8?B?RlE2TmZaL2RXQjZmb0dsTEwzRVN5aEN1TXQ5YkJZMVcyTWJuaGI4WnFaMEVL?=
 =?utf-8?B?WFo2bVFlVG1JNUFvQjJtM053bHpkcUtJYmN0TzBQMlNSNURqdnR6eUxtNWU3?=
 =?utf-8?B?RHhoV2RYWjdUVitSRmVjNjY0MUpReVRBeGxOLy9henhiZEpianF3OTFtZC9n?=
 =?utf-8?B?Z2FDU1FrZCtUZy80WUZQcHZvTnN4NW9EdWhmYkdUN1JRbHYrTWVjY3pKTHVv?=
 =?utf-8?B?bXhqWHBRbC95TENGeW5Xa3hvY25lYzRFeldjU0tUUVdjbkVZKzB1TUhIMHEv?=
 =?utf-8?B?b1ArZzJwNGNwdGR6WVdKajNySHh5bzZvV0kvUkFFcUlXZjNJRkpMN3hkYmtV?=
 =?utf-8?B?RDJENC8vVkd1YXQwTWlCSVdpdlN0UkF0cm9sY01SQWFab2FoaU4zbzhaN2RR?=
 =?utf-8?B?VDZyd2lMKzJSOENwMXh1TWlwcm51MlFEQUc3VGV5WXdaWjA2UzgyTzdHSmox?=
 =?utf-8?B?NENWK3Jhb05kczJ6SW5zL3NiMVd5Z0FvbnZqNDVqcVc1UFVKZXdWeHJ2RWNq?=
 =?utf-8?B?dzJzWUllTjFvMFk1Q2I0dk4yTU5IVzg3RmFnUWxvT2g2aDRsZEhRV3ZsQytx?=
 =?utf-8?B?YW9haU0wRjJodTRxWEx4NkFzYnFrbFNBWjJaMDAwc3hxK3F6WlJ3Wm5RemZH?=
 =?utf-8?B?UTMwTXNVdkZHcE44aUVnRzM0WjJ1WW5neWlOVEpEbCs4Rm15Wk9LTERlOWpn?=
 =?utf-8?B?eWVsWjRxb2RhbW9qRnNGNkZhTzRtZlUzYzNmaEI4ZGEyMklKZForU0JsdVRO?=
 =?utf-8?B?VGE1YUltWjRycGU5UkRaZXFKU2tyd1JJamtKdGd1NFVLVUNyTUxOMThoQmVX?=
 =?utf-8?B?SHNsNHRQV05MQkxHbWNHQ1lvWGpCL0Zwbit5YnZuTjlETE0xVnNqcGN1Q3l5?=
 =?utf-8?B?dUpvMm9vR2p2UEcxcXlaWHBhYWNzZ3FEcldYNWxQb0NrY2hBeXN5cGhmTkFI?=
 =?utf-8?B?Mm5iaUhOdWdIcm05MlpNMnlCNnJVa3Jsb0I1M0NVWklLYVh2MklEUHROZVdU?=
 =?utf-8?B?YzY2LzkyRVBBNWVHY1B2amUzRzdmdDZWWW1ZaUpRYjdiSlk3S3I5NTNUc2w0?=
 =?utf-8?B?QnBHbGkwRHVYZkFTYktOMml1T0pCUDJEaUZVS0RZcllUUnZvbDE4MVFRZ1dU?=
 =?utf-8?B?cmlML1crK2VON2cwa2NSM0FSblZteGFXNWFCQnI1ZkVCc2lOUXJFZEE3TFg0?=
 =?utf-8?B?TllZRDg0SnoybmNaZzY1UUJ3TGtOOHdLamZydng3NnVpTXk1SytlSzNEb0sv?=
 =?utf-8?B?MUg5TFdhcmtoczdMbE9hQXlMTHpvcTFYdDNVOUlZUWF4aGk2ZSs2ajhOYUha?=
 =?utf-8?B?M0FMMk80clBVWUNZV1FxakNoL0NaNHNqL3FBYU9nSWRlMSs2SWFmM2dsV0Fl?=
 =?utf-8?B?TUJWMTBIYnM0NVV6aDJ1OW1ENU1TNWNobjJBcGJRMXBVK09JSWFNMjZEbEdF?=
 =?utf-8?B?ekdpdmszblNCOFdaZlNzTzJpQW1MME9FY3ZjYXNEWjQxV1lWK1FqcTJIak5B?=
 =?utf-8?B?ZnF4YmNxZTZJUXhNVGoyVnJ3QXJpakpuMEF4ejgxUnlDRFFxZlNGVkczaXp4?=
 =?utf-8?Q?NJ4Efp?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TnUrMWJGM2kxVTFHd3B1Tlp1NjZGNTVDMVVIbWt5K3c3TE1idnhXaEpudGN0?=
 =?utf-8?B?R3k1bW9MYlhBd2ZwMW54eTVKTTRvTkhBTUV6M043UE4yZEhmZ2taaXVqeWFH?=
 =?utf-8?B?REdoakdzTDduRjBZVGlzVkRZeXVXQ1BTR0x5MjF1c245bFY0SzVlZ2hmdnhp?=
 =?utf-8?B?SHpjcTdRK2NVVy9KOXhWQ3J2ZEJsaFdZa2lubmlDZ3I1RHE1N3VPdmFQSUsw?=
 =?utf-8?B?VEJ2S0YyMXgwbnRnUzM1c0NweHJ5WGkvb0xzWlJGQXE5S3hpKzFtLy9sUFli?=
 =?utf-8?B?TmgzQ1p5aXlqd2hRY2ZrcHl1Q2hsdkJHOXpZNWtxaGZzemVCc2M1dDN1ZXJk?=
 =?utf-8?B?ekJUQ2hsbWpsbkpxUVVybGx4K09QZ2N5eDFha0JpQkJLc0pmN0Ftb1JzVTZL?=
 =?utf-8?B?M1Y2VURNODFtN2JXaEMreU16L3pSWkJ3am5oc3diMmJtZ2pRUFQ0ODBqSHk3?=
 =?utf-8?B?cERHYlRSZnJqYUxaTUgxNzZoZm9LK3QxUkhvV21YSFNLVnZRYWI0TVR6SVJJ?=
 =?utf-8?B?aVZ1NUpZTElvK3VpNHgzeFhWZFVzT3hSQnErdnFrU0VHZlowR0VzeEtudGFJ?=
 =?utf-8?B?d3g0Vm1TdFF1MGZuWnFkbk5SaXdTcFVadGFwOGQ1TlBnOTNNV0VkdzQ4Y0xh?=
 =?utf-8?B?dFdURVZVUXhlUTNUdWl3UytjZVR5ZCtYMWZzbEcwTmZxd0Q4ZkpqRm93QWhk?=
 =?utf-8?B?TEJEYVpiNk9oU28yQ3E0K0kvcitFUU8zWHZPSTY1SHJzT2ZLM0EzVitFMzNM?=
 =?utf-8?B?Vzd6bHdSMktJSjJmQkVpcGt5d3pqRkxOTzRvOUQveE9UOS9sWUFqR3lvdnpI?=
 =?utf-8?B?dVVIQlMyVlVzQzNiYytVU2RON3lyZW9UL09qWi91RVJQdXhUQnN6eU5uQzNl?=
 =?utf-8?B?VGx2V1dkVHZublR6c2hldnhqclFNT01DN3Jra2pmclRFRGdLeFNHeUJOSnNV?=
 =?utf-8?B?OUZiaGQzbGdKOVlORm83VTV2dWpUNnlscDczS3Z2RFNPU2pxL3BySDZXVjRn?=
 =?utf-8?B?RGphNGNubHBlWEhwbmtEZENGV1hyUFNWczFwcGxPOFBEamZqeTJYV21aQUFq?=
 =?utf-8?B?clg4Z09SQzRVVTBZOTBOMXc5UVNrRFJ3RUdwWURtek5pcDNFNGhNSkY4bUlt?=
 =?utf-8?B?OHp0LzJQNFh1M1NxclNLZ0tkSCt2MVIyQjZqcGFGRjN5cUdkQ0JWZndNSFlv?=
 =?utf-8?B?YmJVcVBoakRSRHFvSENQaUdDdGg3OFV2R0QxNzFYdWJpNWhZTVU1bWdiODR0?=
 =?utf-8?B?VjYzRlczNUxGSHNPOXI0cWVJRlVwTUZXa1dkU2xBcStydGltZVpuaEcvT3hj?=
 =?utf-8?B?R1ZSRDUxdTQ4NEpEdXJPTUIvNUZiZk5JcFBkaHJDVDlncFN3N0hVSnZXVzJH?=
 =?utf-8?B?Rjd6dlUvV2pUT1BNcHBDeElrdzN0VzRoRFV1UEJOb3F4OUc4TzB4eTdQLzdW?=
 =?utf-8?B?L2owNWh3c1lGcHNtcG8ra1IxMHZIYkcwbmRZdU50aFFNbWZhbEljQkpZTEpX?=
 =?utf-8?B?NU5ubFJ2U0IzUHNsbWN1WXRuckhjUjdYM3Jnb2lBSmF2MkNpWU1pcG4vakFD?=
 =?utf-8?B?Rk5YempPd2duUGkyWVNQdjVOZjB2U2pXelRUN3A4VGJzZjR5WndSdTV1RGJw?=
 =?utf-8?B?Q0lYdVhTMlY3bVNmY3VLSjZXY1ZISzdWM2VrVHQ3dGRjOHdZNmRSZE9NaXQy?=
 =?utf-8?B?TEQzNVVOQnFTVWFES2lISnVKOGcwY3BsR3I2emVxSmRPZGVtL21QSTNjNlUy?=
 =?utf-8?B?aVEyN2ppL1BnUDdxMFZYT1Q1L2RnaUZ2dDhDcHBscStWRFFKeDVhNUo2S3BP?=
 =?utf-8?B?bVI0bDFjcENka2J5VklmRVRvUnloM3prMmdzM1g2anBqcmcrTUR3QXB4bU90?=
 =?utf-8?B?SjlVdXRGL1Faa2xJY2hoeW1qRkZYQzZxUUtNVUcrQUxCK3pWVXRaanlXNmdv?=
 =?utf-8?B?dDY4RllkcTBjUlhQNWhhWjVsd0RtNDh3ck1oMm1qOSs3bm4wcTI4dER5L1kx?=
 =?utf-8?B?YkxRN1A3QTQwUU5UR0RQZklGNXdSM1JBWWF4SnpaTGtqMEJxT2FLblhTU1l2?=
 =?utf-8?B?eDY0UFkvWmlBWkY1V25UR2FWc0R4TmJwZUcwcDlmeSt5QTIxM1hkYkh1VDVk?=
 =?utf-8?B?TjNtbmxBKzNTaWxuY1FVLzFnaFo1VmdKVkZxZ1dXd3ZuUDIzQTBrVFVkdmRy?=
 =?utf-8?B?d3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf5976da-7339-4a67-cb24-08de33d50275
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2025 08:05:09.5493 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4/5KF/NQxbekd/kILRmRgUeD4pNz/wTc+sftBrVveook+OVfWR7cIyHKfr9hL/YTb1lONXjwZuUzdgkFMVUi6t1rukBksQlSaXyg32IuJWY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6952
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764921914; x=1796457914;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y5yVxxAIo32Ec6LVVw1KVDeckGlkN9wd3reB72KBMXQ=;
 b=TZG68oJdZvfv2nzWLD0v4njmYuk0DpAcBX01t7wzd1BTqqW2a7nL8J9e
 EFMERqLHa8l1DgKADvMCIraXW0xu08CIZpa+xKk35ZWN7ak9rxMMEoAEq
 CoXGqaNxga4Bm5rCx1BAf+62unQJ/QxRp463LcjSwEksL9rTWBofPnNCB
 dgvn8o9p+/GFzb5M8QHYTZQ1Iy0VeLpD+n6ifid7xwdTSJ0dK2GyQZkqB
 Jjs1ThOdoDR4/b4Xgf0pcEMDgu2i4V7Q31hHqdE+MhDkadHowsQ9t/Tnh
 PMSLTQbSdgfNan3Hrl+qGAhE3ltFLQOU8nuy93FpowO9D+a4U6qGMeWiD
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TZG68oJd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/2] ice: Fix NULL pointer dereference
 in ice_vsi_set_napi_queues
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQWFyb24gTWEgPGFhcm9u
Lm1hQGNhbm9uaWNhbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIgNSwgMjAyNSA4OjU0
IEFNDQo+IFRvOiBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRl
bC5jb20+DQo+IENjOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5j
b20+OyBLaXRzemVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29t
PjsgYW5kcmV3K25ldGRldkBsdW5uLmNoOw0KPiBkYXZlbUBkYXZlbWxvZnQubmV0OyBlZHVtYXpl
dEBnb29nbGUuY29tOyBrdWJhQGtlcm5lbC5vcmc7DQo+IHBhYmVuaUByZWRoYXQuY29tOyBpbnRl
bC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsNCj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsg
bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVk
LWxhbl0gW1BBVENIIDEvMl0gaWNlOiBGaXggTlVMTCBwb2ludGVyDQo+IGRlcmVmZXJlbmNlIGlu
IGljZV92c2lfc2V0X25hcGlfcXVldWVzDQo+IA0KPiBPbiBGcmksIERlYyA1LCAyMDI1IGF0IDM6
MTPigK9QTSBMb2t0aW9ub3YsIEFsZWtzYW5kcg0KPiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+DQo+ID4NCj4gPg0KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCj4gPiA+IEZyb206IEludGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5j
ZXNAb3N1b3NsLm9yZz4gT24NCj4gQmVoYWxmDQo+ID4gPiBPZiBBYXJvbiBNYQ0KPiA+ID4gU2Vu
dDogRnJpZGF5LCBEZWNlbWJlciA1LCAyMDI1IDM6MzggQU0NCj4gPiA+IFRvOiBOZ3V5ZW4sIEFu
dGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVsLA0KPiA+ID4gUHJ6
ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IGFuZHJldytuZXRkZXZAbHVu
bi5jaDsNCj4gPiA+IGRhdmVtQGRhdmVtbG9mdC5uZXQ7IGVkdW1hemV0QGdvb2dsZS5jb207IGt1
YmFAa2VybmVsLm9yZzsNCj4gPiA+IHBhYmVuaUByZWRoYXQuY29tOyBpbnRlbC13aXJlZC1sYW5A
bGlzdHMub3N1b3NsLm9yZzsNCj4gPiA+IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtl
cm5lbEB2Z2VyLmtlcm5lbC5vcmcNCj4gPiA+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQ
QVRDSCAxLzJdIGljZTogRml4IE5VTEwgcG9pbnRlcg0KPiA+ID4gZGVyZWZlcmVuY2UgaW4gaWNl
X3ZzaV9zZXRfbmFwaV9xdWV1ZXMNCj4gPiA+DQo+ID4gPiBBZGQgTlVMTCBwb2ludGVyIGNoZWNr
cyBpbiBpY2VfdnNpX3NldF9uYXBpX3F1ZXVlcygpIHRvIHByZXZlbnQNCj4gPiA+IGNyYXNoZXMg
ZHVyaW5nIHJlc3VtZSBmcm9tIHN1c3BlbmQgd2hlbiByaW5nc1txX2lkeF0tPnFfdmVjdG9yIGlz
DQo+ID4gPiBOVUxMLg0KPiA+ID4NCj4gPiA+IDwxPlsgIDIzMS40NDM2MDddIEJVRzoga2VybmVs
IE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSwgYWRkcmVzczoNCj4gPiA+IDAwMDAwMDAwMDAwMDAw
NDAgPDE+WyAgMjMxLjQ0NDA1Ml0gI1BGOiBzdXBlcnZpc29yIHJlYWQgYWNjZXNzIGluDQo+ID4g
PiBrZXJuZWwgbW9kZSA8MT5bICAyMzEuNDQ0NDg0XSAjUEY6IGVycm9yX2NvZGUoMHgwMDAwKSAt
IG5vdC0NCj4gcHJlc2VudA0KPiA+ID4gcGFnZSA8Nj5bICAyMzEuNDQ0OTEzXSBQR0QgMCBQNEQg
MCA8ND5bICAyMzEuNDQ1MzQyXSBPb3BzOiBPb3BzOg0KPiA+ID4gMDAwMCBbIzFdIFNNUCBOT1BU
SSA8ND5bICAyMzEuNDQ2NjM1XSBSSVA6DQo+ID4gPiAwMDEwOm5ldGlmX3F1ZXVlX3NldF9uYXBp
KzB4YS8weDE3MA0KPiA+ID4gPDQ+WyAgMjMxLjQ0NzA2N10gQ29kZTogMzEgZjYgMzEgZmYgYzMg
Y2MgY2MgY2MgY2MgMGYgMWYgODAgMDAgMDANCj4gMDANCj4gPiA+IDAwIDkwIDkwIDkwIDkwIDkw
IDkwIDkwIDkwIDkwIDkwIDkwIDkwIDkwIDkwIDkwIDkwIDBmIDFmIDQ0IDAwIDAwDQo+IDQ4DQo+
ID4gPiA4NSBjOSA3NCAwYiA8NDg+IDgzIDc5IDMwIDAwIDBmIDg0IDM5IDAxIDAwIDAwIDU1IDQx
IDg5IGQxIDQ5IDg5DQo+IGY4DQo+ID4gPiA4OQ0KPiA+ID4gZjIgNDggODkgPDQ+WyAgMjMxLjQ0
NzUxM10gUlNQOiAwMDE4OmZmZmZjYzc4MGZjMDc4YzAgRUZMQUdTOg0KPiA+ID4gMDAwMTAyMDIg
PDQ+WyAgMjMxLjQ0Nzk2MV0gUkFYOiBmZmZmOGI4NDhjYTMwNDAwIFJCWDoNCj4gZmZmZjhiODQ4
Y2FmMjAyOCBSQ1g6DQo+ID4gPiAwMDAwMDAwMDAwMDAwMDEwIDw0PlsgIDIzMS40NDg0NDNdIFJE
WDogMDAwMDAwMDAwMDAwMDAwMCBSU0k6DQo+ID4gPiAwMDAwMDAwMDAwMDAwMDAwIFJESTogZmZm
ZjhiODQ4ZGJkNDAwMCA8ND5bICAyMzEuNDQ4ODk2XSBSQlA6DQo+ID4gPiBmZmZmY2M3ODBmYzA3
OGU4IFIwODogMDAwMDAwMDAwMDAwMDAwMCBSMDk6IDAwMDAwMDAwMDAwMDAwMDAgPDQ+Ww0KPiA+
ID4gMjMxLjQ0OTM0NV0gUjEwOiAwMDAwMDAwMDAwMDAwMDAwIFIxMTogMDAwMDAwMDAwMDAwMDAw
MCBSMTI6DQo+ID4gPiAwMDAwMDAwMDAwMDAwMDAxIDw0PlsgIDIzMS40NDk4MTddIFIxMzogZmZm
ZjhiODQ4ZGJkNDAwMCBSMTQ6DQo+ID4gPiBmZmZmOGI4NDgzMzM5MGM4IFIxNTogMDAwMDAwMDAw
MDAwMDAwMCA8ND5bICAyMzEuNDUwMjY1XSBGUzoNCj4gPiA+IDAwMDA3YzdiMjllOWQ3NDAoMDAw
MCkgR1M6ZmZmZjhiOGMwNjhlMjAwMCgwMDAwKQ0KPiA+ID4ga25sR1M6MDAwMDAwMDAwMDAwMDAw
MCA8ND5bICAyMzEuNDUwNzE1XSBDUzogIDAwMTAgRFM6IDAwMDAgRVM6DQo+IDAwMDANCj4gPiA+
IENSMDogMDAwMDAwMDA4MDA1MDAzMyA8ND5bICAyMzEuNDUxMTc5XSBDUjI6IDAwMDAwMDAwMDAw
MDAwNDAgQ1IzOg0KPiA+ID4gMDAwMDAwMDMwNjI2ZjAwNCBDUjQ6IDAwMDAwMDAwMDBmNzJlZjAg
PDQ+WyAgMjMxLjQ1MTYyOV0gUEtSVToNCj4gPiA+IDU1NTU1NTU0IDw0PlsgIDIzMS40NTIwNzZd
IENhbGwgVHJhY2U6DQo+ID4gPiA8ND5bICAyMzEuNDUyNTQ5XSAgPFRBU0s+DQo+ID4gPiA8ND5b
ICAyMzEuNDUyOTk2XSAgPyBpY2VfdnNpX3NldF9uYXBpX3F1ZXVlcysweDRkLzB4MTEwIFtpY2Vd
IDw0PlsNCj4gPiA+IDIzMS40NTM0ODJdICBpY2VfcmVzdW1lKzB4ZmQvMHgyMjAgW2ljZV0gPDQ+
WyAgMjMxLjQ1Mzk3N10gID8NCj4gPiA+IF9fcGZ4X3BjaV9wbV9yZXN1bWUrMHgxMC8weDEwIDw0
PlsgIDIzMS40NTQ0MjVdDQo+ID4gPiBwY2lfcG1fcmVzdW1lKzB4OGMvMHgxNDAgPDQ+WyAgMjMx
LjQ1NDg3Ml0gID8NCj4gPiA+IF9fcGZ4X3BjaV9wbV9yZXN1bWUrMHgxMC8weDEwIDw0PlsgIDIz
MS40NTUzNDddDQo+ID4gPiBkcG1fcnVuX2NhbGxiYWNrKzB4NWYvMHgxNjAgPDQ+WyAgMjMxLjQ1
NTc5Nl0gID8NCj4gPiA+IGRwbV93YWl0X2Zvcl9zdXBlcmlvcisweDEwNy8weDE3MCA8ND5bICAy
MzEuNDU2MjQ0XQ0KPiA+ID4gZGV2aWNlX3Jlc3VtZSsweDE3Ny8weDI3MCA8ND5bICAyMzEuNDU2
NzA4XQ0KPiBkcG1fcmVzdW1lKzB4MjA5LzB4MmYwDQo+ID4gPiA8ND5bICAyMzEuNDU3MTUxXSAg
ZHBtX3Jlc3VtZV9lbmQrMHgxNS8weDMwIDw0PlsgIDIzMS40NTc1OTZdDQo+ID4gPiBzdXNwZW5k
X2RldmljZXNfYW5kX2VudGVyKzB4MWRhLzB4MmIwDQo+ID4gPiA8ND5bICAyMzEuNDU4MDU0XSAg
ZW50ZXJfc3RhdGUrMHgxMGUvMHg1NzANCj4gPiA+DQo+ID4gPiBBZGQgZGVmZW5zaXZlIGNoZWNr
cyBmb3IgYm90aCB0aGUgcmluZyBwb2ludGVyIGFuZCBpdHMgcV92ZWN0b3INCj4gPiA+IGJlZm9y
ZSBkZXJlZmVyZW5jaW5nLCBhbGxvd2luZyB0aGUgc3lzdGVtIHRvIHJlc3VtZSBzdWNjZXNzZnVs
bHkNCj4gPiA+IGV2ZW4gd2hlbiBxX3ZlY3RvcnMgYXJlIHVubWFwcGVkLg0KPiA+ID4NCj4gPg0K
PiA+IFBsZWFzZSBhZGQgbWluaW1hbCB0ZXN0IHN5c3RlbSBkZXRhaWxzIGFsb25nc2lkZSB0aGUg
Y2FsbCB0cmFjZToNCj4gPiAgIC0gQWRhcHRlciBtb2RlbCAoRTgxMC9FODIyLi4uIFBGL1ZGPyBT
Ui1JT1Ygc3RhdGUpDQo+IA0KPiBBZGFwdGVyIG1vZGVsOg0KPiA2MDowMC4wIEV0aGVybmV0IGNv
bnRyb2xsZXIgWzAyMDBdOiBJbnRlbCBDb3Jwb3JhdGlvbiBFdGhlcm5ldA0KPiBDb250cm9sbGVy
IEU4MTAtWFhWIGZvciBTRlAgWzgwODY6MTU5Yl0gKHJldiAwMikNCj4gICAgICAgIFN1YnN5c3Rl
bTogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQgTmV0d29yayBBZGFwdGVyDQo+IEU4MTAtWFhW
LTIgWzgwODY6NDAwM10NCj4gDQo+IEJvdGggZGlzYWJsZWQgYW5kIGVuYWJsZWQgU1ItSU9WIGNh
biByZXByb2R1Y2UgdGhlIGlzc3VlLg0KPiANCj4gPiAgIC0gS2VybmVsIHZlcnNpb24gKGFuZCB3
aGV0aGVyIG5ldC1uZXh0IG9yIHN0YWJsZSBiYWNrcG9ydCkNCj4gDQo+IFRlc3RlZCBrZXJuZWwg
dmVyc2lvbjogdXBzdHJlYW0gNi4xOC4NCj4gDQo+ID4gICAtIFJlcHJvIHN0ZXBzIChTMyBzZXF1
ZW5jZSwgdGltaW5nLCBpZiBOQVBJIG9wcyBhcmUgY2FsbGVkIGR1cmluZw0KPiA+IHJlc3VtZSkN
Cj4gDQo+IEJvb3R1cCBhbmQgZXhlY3V0ZSBzdXNwZW5kIGxpa2Ugc3lzdGVtY3RsIHN1c3BlbmQg
b3IgcnRjd2FrZS4NCj4gDQo+IFNob3VsZCBJIHNlbmQgYSB2Mj8NCkkgaG9wZSB5ZXMuIElmIHlv
dSB3aWxsIGVtYmVkIHRoZSBpbmZvIGludG8gY29tbWl0IG1lc3NhZ2UuDQpZb3UgY2FuIGFkZCBt
eQ0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZA
aW50ZWwuY29tPg0KDQpUaGFuayB5b3UgaW4gYWR2YW5jZQ0KQWxleA0KDQoNCj4gDQo+IFRoYW5r
cyBmb3IgeW91ciByZXZpZXcuDQo+IEFhcm9uDQo+IA0KPiA+IEl0IGhlbHBzIHZhbGlkYXRlIHRo
ZSBmaXggZm9yIE5BUEkgcXVldWUtdG8tSVJRIG1hcHBpbmcgb24gdmFyaW91cw0KPiBwbGF0Zm9y
bXMuDQo+ID4NCj4gPiA+IEZpeGVzOiAyYTVkYzA5MGI5MmNmICgiaWNlOiBtb3ZlIG5ldGlmX3F1
ZXVlX3NldF9uYXBpIHRvIHJ0bmwtDQo+ID4gPiBwcm90ZWN0ZWQgc2VjdGlvbnMiKQ0KPiA+ID4g
U2lnbmVkLW9mZi1ieTogQWFyb24gTWEgPGFhcm9uLm1hQGNhbm9uaWNhbC5jb20+DQo+ID4gPiAt
LS0NCj4gPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jIHwgNiAr
KysrLS0NCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX2xpYi5jDQo+ID4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfbGliLmMNCj4gPiA+IGluZGV4IDE1NjIxNzA3ZmJmODEuLjlkMTE3OGJkZTQ0OTUgMTAwNjQ0
DQo+ID4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jDQo+
ID4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jDQo+ID4g
PiBAQCAtMjc3OSwxMSArMjc3OSwxMyBAQCB2b2lkIGljZV92c2lfc2V0X25hcGlfcXVldWVzKHN0
cnVjdA0KPiBpY2VfdnNpDQo+ID4gPiAqdnNpKQ0KPiA+ID4NCj4gPiA+ICAgICAgIEFTU0VSVF9S
VE5MKCk7DQo+ID4gPiAgICAgICBpY2VfZm9yX2VhY2hfcnhxKHZzaSwgcV9pZHgpDQo+ID4gPiAt
ICAgICAgICAgICAgIG5ldGlmX3F1ZXVlX3NldF9uYXBpKG5ldGRldiwgcV9pZHgsDQo+ID4gPiBO
RVRERVZfUVVFVUVfVFlQRV9SWCwNCj4gPiA+ICsgICAgICAgICAgICAgaWYgKHZzaS0+cnhfcmlu
Z3NbcV9pZHhdICYmIHZzaS0+cnhfcmluZ3NbcV9pZHhdLQ0KPiA+ID4gPnFfdmVjdG9yKQ0KPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgIG5ldGlmX3F1ZXVlX3NldF9uYXBpKG5ldGRldiwgcV9p
ZHgsDQo+ID4gPiBORVRERVZfUVVFVUVfVFlQRV9SWCwNCj4gPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgJnZzaS0+cnhfcmluZ3NbcV9pZHhdLQ0KPiA+cV92ZWN0b3ItDQo+
ID4gPiA+bmFwaSk7DQo+ID4gPg0KPiA+ID4gICAgICAgaWNlX2Zvcl9lYWNoX3R4cSh2c2ksIHFf
aWR4KQ0KPiA+ID4gLSAgICAgICAgICAgICBuZXRpZl9xdWV1ZV9zZXRfbmFwaShuZXRkZXYsIHFf
aWR4LA0KPiA+ID4gTkVUREVWX1FVRVVFX1RZUEVfVFgsDQo+ID4gPiArICAgICAgICAgICAgIGlm
ICh2c2ktPnR4X3JpbmdzW3FfaWR4XSAmJiB2c2ktPnR4X3JpbmdzW3FfaWR4XS0NCj4gPiA+ID5x
X3ZlY3RvcikNCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBuZXRpZl9xdWV1ZV9zZXRfbmFw
aShuZXRkZXYsIHFfaWR4LA0KPiA+ID4gTkVUREVWX1FVRVVFX1RZUEVfVFgsDQo+ID4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZ2c2ktPnR4X3JpbmdzW3FfaWR4XS0NCj4g
PnFfdmVjdG9yLQ0KPiA+ID4gPm5hcGkpOw0KPiA+ID4gICAgICAgLyogQWxzbyBzZXQgdGhlIGlu
dGVycnVwdCBudW1iZXIgZm9yIHRoZSBOQVBJICovDQo+ID4gPiAgICAgICBpY2VfZm9yX2VhY2hf
cV92ZWN0b3IodnNpLCB2X2lkeCkgew0KPiA+ID4gLS0NCj4gPiA+IDIuNDMuMA0KPiA+DQo=
