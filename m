Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA5AB1ECCF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 18:07:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C04960D9B;
	Fri,  8 Aug 2025 16:07:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WHJGU6GCB_rE; Fri,  8 Aug 2025 16:07:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D439C60DD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754669259;
	bh=4B7TbBuwyRT63YnhAYqREl3UuhIHd7kiw5DKmA6Ool8=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wmVFNqaDz+L+Y6Tzp2QYBZJNGsHi24RVEuaG5VmaNELiP/hXN1kDRyUgZyfi7rwnD
	 aV+RvOr2E0hgRyadKDH6UIx7U1JW+f4tsGT2AmEUU1FO80wy9Rv8bBMYVDCSHZsXdc
	 vuoKtEDJxnpXcMEF4T+BPj/21OkjwcxmngqSOfyvQFVMJ5LkXnRkdnblgwDUvvIhjI
	 08OgUoFbxveKs0G/b/LmurvvG8Myvj72f8W0HOkQ5a4x0WQA0oaYRaFuyZrcJyv8Rq
	 Vmk3KJSqqItaJIFn4E3RDADHwVkUY1x0QB4j3EFnsuA0SUkl2sBJRBI8olw6i3wNn6
	 lW29vdbFZjR8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D439C60DD3;
	Fri,  8 Aug 2025 16:07:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DE76B9CF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 16:07:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB41F60D57
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 16:07:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HYiKyOlOPKnT for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 16:07:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D1DB260735
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1DB260735
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D1DB260735
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 16:07:36 +0000 (UTC)
X-CSE-ConnectionGUID: 0P8L0A2YTW2hsHM04+iBKQ==
X-CSE-MsgGUID: lBhlJ45LSuqCwpY2OWV++w==
X-IronPort-AV: E=McAfee;i="6800,10657,11515"; a="67289776"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="67289776"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 09:07:37 -0700
X-CSE-ConnectionGUID: Qpie4O5DR9+htmKS/gZybA==
X-CSE-MsgGUID: eViVer/6SoO6YjXFlD7u+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="202534721"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 09:07:36 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 09:07:35 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 8 Aug 2025 09:07:35 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.86)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 09:07:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F+hVkRg3NKPE2UowEaZEs9ygTfw1dK2Ct13y+PVGS47FH48wBeFwzGsP9z84RGrWRbGjNKGMOfIcnLIDqlGO4ou31NszFe5P7Tl6BEiRoxQ+USb2bZhq0iWZj5ZkGGIG9AGEaRDfJ4inerEkhBfqwkbKxdgvmu5IehRKiv/8PgLA7u4rJ3yK3v324X67eHo8yxcRdMjEQdtVA6TuyCv4yJGdk25M9KNYW6QECZakbmKUzg/dYONMaXDkNy8tAyx5OjrY7E8CifDSdrUphJ5FeREQSS4f7k2OloHTfnxiPcwXGsYrrLsU9RJFF5YFX6EtBzwRlNtAkUYURfwOEaoUrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4B7TbBuwyRT63YnhAYqREl3UuhIHd7kiw5DKmA6Ool8=;
 b=rqXQJlfS6KUvsJZxkmDr5EtA6u4fPjlFKTwclKgYcLL5KK6QZ0ihTfXP5EWcerfmxeQn06aOQJbzh9HducH1qpJOZHFnga6A2yS6eElYdfVjSjzoxF+y7cWg6WCXdB47mHS+WfhGwvyba+QZmb2stra/UdYuPQD4tOQ3lrb0W923zFBjm7H9rr8dGdCvsCSPnqWRZiMePD1dyAtUzPPLPXkxWr38uSkbGdsbgWjwd1pjY5Qcyg0ZCf9f4OY07S7kOhFhjedTigPN2ZUUxxLUbJV6G+12CnRWgxilQD0m4Mn9FAWutp2PJAoNzogrRMWpnqKVd/GuXOVeXWNR4nlpvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) by
 SA1PR11MB7016.namprd11.prod.outlook.com (2603:10b6:806:2b6::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9009.18; Fri, 8 Aug 2025 16:07:33 +0000
Received: from DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955]) by DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955%3]) with mapi id 15.20.9009.017; Fri, 8 Aug 2025
 16:07:33 +0000
Date: Fri, 8 Aug 2025 18:07:27 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: Jacob Keller <jacob.e.keller@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <maciej.fijalkowski@intel.com>,
 <aleksander.lobakin@intel.com>, <larysa.zaremba@intel.com>,
 <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>,
 <anthony.l.nguyen@intel.com>
Message-ID: <aJYgv7QD12DblIwR@localhost.localdomain>
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <20250704161859.871152-4-michal.kubiak@intel.com>
 <53c62d9c-f542-4cf3-8aeb-a1263e05acad@intel.com>
 <aJXiP-_ZUfBErhAv@localhost.localdomain>
 <ee6af42d-b274-4079-8a8b-35ec8d500c1c@molgen.mpg.de>
 <aJX168tInG4tFk5j@localhost.localdomain>
 <62178d70-07c0-471b-b4dd-2e7523776243@molgen.mpg.de>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <62178d70-07c0-471b-b4dd-2e7523776243@molgen.mpg.de>
X-ClientProxiedBy: DB8PR06CA0011.eurprd06.prod.outlook.com
 (2603:10a6:10:100::24) To DS0PR11MB8665.namprd11.prod.outlook.com
 (2603:10b6:8:1b8::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8665:EE_|SA1PR11MB7016:EE_
X-MS-Office365-Filtering-Correlation-Id: 2941a31e-d5fd-40c2-cc36-08ddd695aefb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bDErVnlqaFlDUUdML2RVM1l0Rm9JbFFDektGN3ducWo3RU9sK3ErSlF3Mzg5?=
 =?utf-8?B?U1RLWHpBS1FSdHM1OW8vODVWekRTekJsMEFuWUJxbjFuK29EdzdUalAxaFdz?=
 =?utf-8?B?eGlFa1ZKMEY0V3k5MEVCeXhTZlpZZE9BZ0hZZ1Z4MGtjMFlya2FwMG5KWWtm?=
 =?utf-8?B?R2IxOXZVWVRFMHA4NUxicVhPbzFRT0srUUY4TGJsN1Jqay9xUDVoM2I2Y1di?=
 =?utf-8?B?NHV6VE12eDFFdkVMU21tYmtJdHJHOEVzTy9KZDAvU1BDVUIxeFVHMndsZGk0?=
 =?utf-8?B?UzVCSVpYaDdRcGF5TzkyRVByQkNuVVhsaWpZM1lZWW1XalNNT2RWY1ZZa0JD?=
 =?utf-8?B?ZVN0MjVnREtLYkh0ZHE2eHk0dERFTWF0Tk1XenkxblJVajFBZUJlVGxyMHlI?=
 =?utf-8?B?Rm1hVElBVGNLdElZdjR6ZXFGQWJHWlpsUzE3clZGVDN3UVF3STdUNlAvNXgz?=
 =?utf-8?B?M3V3VkZqb2Q4cVc0NFV3eW5MTjVKV1gvZGFaN1Jncy9IdzJUdU42NXNqcUx2?=
 =?utf-8?B?K1RCZmpIV0ViM3pMY2VhT1ByaVM2Szlra1VKbmNkOUtDS2JENFNDaWFvR0tH?=
 =?utf-8?B?NWwwdnpHd0NNYmx5T3FrZmZURU4vcUhmR29wVTlqWkM2elJGTWtpdXE5QkQz?=
 =?utf-8?B?c3ZLN3VwVDRLMTlEbGRncU5PbjljekQ5alJsUEtXbVJmWHZNdTdUQTdHNWov?=
 =?utf-8?B?djRodEZ0UTVrUnpJVWpSNy9wOFNNYkhkcWtDZnEwa3FTdEp5MzR4YmNLOFJ0?=
 =?utf-8?B?RkoxZm1tQW9nVUtKSzJMRFJOemVYOXNrVTVhUmo2N1JVT0thU2FBUDhvbUZK?=
 =?utf-8?B?VnY3Z2J6cGJPb203L0R4aWtUck9Ya0cyYU0yTnhGL3RkbUhEZEZmMlB1ZklW?=
 =?utf-8?B?ajdyUWNOaVptSmlGRW5VZVNaN3Btd3cwajZXUHRuQVdhaWsxSDQzak1uQmtR?=
 =?utf-8?B?Yjgzak1FNHMvOWlMelNZckpwbW1nWUxLT0lkRzBUWHpNZUFaQzVoNmZ6aUZx?=
 =?utf-8?B?SVNPZTVjdUcrYXgwU3lCLzdIUXR0SGc3MXJMQ2VDZXVIUlZiN0xIbk1CY1F3?=
 =?utf-8?B?ZW11dE1Td3VuakRXTFVia0s3SUJSaXg3WUQ3WjNjWTR6amcxelJqa3QxODFT?=
 =?utf-8?B?bVpicC93blpRdUlEdjdoM2RMbUt6RXpOZ3dhSlBycTZGWGNBckt1aFNrZDhk?=
 =?utf-8?B?dndHMkpza3gyVm9wTTVjWVNTNGEyMVE1ODdYekd3R1hrMmJoT0JkSzQzbmpC?=
 =?utf-8?B?RFlabkdEdHZXaEIyd3J2dFhHS1V3azJrQUNQYkxsa000Yk5yTFdZd0R3STZZ?=
 =?utf-8?B?VTA2T2E3eVpNdEI4OHovT0d0enRKM0JyRUxDd28vd01GeVNkc09ITWVMS2I3?=
 =?utf-8?B?UFlYRDR2OEwyM0lFelZsZzZuSllWUXp4ekQvUXcwaS9Uc1ZTSFFkeDE5SDBM?=
 =?utf-8?B?WWJDRWZYNGhPY2tNcHBXWVVjSnMySi96aVdNcjJpMTk3Yk56Zi9JY09IYzBD?=
 =?utf-8?B?M2F6MzVjNW1nckJyQWZIVnNxZkhhQ1U4WCtHRHVYNDhHSzZIUGNBKzAwOTV6?=
 =?utf-8?B?blpjNUtmU2lYOXMwMTRYak1UUkVlNzBhVkhQTXRkQXc5NjBVWlEyVzNXOTBS?=
 =?utf-8?B?S05ZTUFhS3VFRTF2S1lhQ2ZHVTRyUmtDTWM1ZDU3clJlWHNTTkFNYXhoaW1y?=
 =?utf-8?B?Nlc5VkUxL3NoNjdxMjZNN0kyTlJRZTdDYlRLSG5lQ2RLaFlzdDBkY2R0VVh4?=
 =?utf-8?B?ckJOdnZoTnNkNm1uZFhTNEZqd2dnbW1xUmVibUNudUVIelBvQ04yd2Z3WlJl?=
 =?utf-8?B?ZHB4K2kwS1FKbDBkOXdIQ1FVNS9mdE10Nk5TWm1aTkRMV0VwcUh1aFh3bHF4?=
 =?utf-8?B?OC9VUjdpdFpLR1kvZjdCUjB1OGJSdHN6Nk52VytwSGJwWUwrZTVKNjRueVFo?=
 =?utf-8?Q?CUApABlq+wY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8665.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVVQeStkU0hUQ1JOaDdCMzVTbFVnVU5RTTB0T1hsVHJSV2p0RkdaOThINHpQ?=
 =?utf-8?B?OWQraXBRYU9KRFBsSDV6b0pKU1lMbmhsK0F6M0lzY21zcEtUMlJXeWg5OWlO?=
 =?utf-8?B?R0UyTnBpTXRQUjhvNUp5ZjNXazFKMmVrNUpKc0M1bU44VnEwTTk2SU0ya2Ry?=
 =?utf-8?B?OHFyendhdXZnSmRCV3dyK04razNTRjVTSXJCTTJZMHJOSG5SWU1yUDZoQUNI?=
 =?utf-8?B?cFZsY1FpNnFJY0JZK1NzU2ltWkY2WmpvazNaSmgvVys1QjdsV2g0ZXlZdXdi?=
 =?utf-8?B?WXlPV0lmMHJ0NHhzRXdIMm9lc1lEbGdHL0tYSkpjK0hGVWpqejVSZUVKVEEv?=
 =?utf-8?B?d2ZBZ3RScU90S1paRVVqbnhyRGhxazJUMVZVemRZeUY3YTBFNjBWUkVTQVF0?=
 =?utf-8?B?S0Q4ZmJ5YmFodFFuME1CSzdzY0tGcHhVdUJFbFRQOXNHWEVXREJTSDB6ZExT?=
 =?utf-8?B?bXBxTk5VeElGRFJiM1c2SFJpUWpPL2k2UjVNRWhiUkIzeFljVEphYlF6aVlZ?=
 =?utf-8?B?UERRS2U4Q0NUdFJ1Z1F3RE5HaHBHSVh0bFAwSjlDampQOVoyT3lEb3BlZ1hK?=
 =?utf-8?B?QjlrcHFraDA5V1pVRmZzQit1ZTRBVUhRcXVVSis5SEF5TEtlSFY1ZlZwTFpF?=
 =?utf-8?B?M29KOW55bGk1a2ZUZnpvZVl0SzJha0E1TnRFL2t4ZzJKQ0dmOGo1azJmSXh5?=
 =?utf-8?B?RktYQ3pEN0JpYzgxT2JBcGUwUGFQV3ZOWDNmWGxWR0U3YVNJTjdCZXZmb1VG?=
 =?utf-8?B?OFNyM1oybVFsSTFUeUMvd3lOYllINndkSmdJeURBcEErVjNDMisvdlgxT2gw?=
 =?utf-8?B?cVhQd21Vd0drUVJ1MTFITHlJTkdITFY4WmlTWEtBUmZGTkhWU3JkaG9vQmJm?=
 =?utf-8?B?TytlQzVRSTA5QldNWUc0QXdzYXdmaW50bzY0TkVFSXZtMDY2TEZCZ3piUlpJ?=
 =?utf-8?B?Mzk1ZTNwOHA0bmpRdUxDV3FZeGpMM0VSR3Y4ajNzSEh4RjVWemhvK2NsUmRY?=
 =?utf-8?B?dElrMHNsRDI5TjltZXBobVFXdTFlV1dQS29qRm9rYktZb0Zab2Y3TWZOMGM0?=
 =?utf-8?B?MmlSNVgwM2FuZ3duUEl0Sm5SdDdOUmtZUTlkUXJrRmRtQTZWTUlMZHpWNkxx?=
 =?utf-8?B?aVNJWlJsOEVndU5QZDNlbmNwYXVuamRGbHRiQWtOVC95YXIzOTJVaDh1QlpN?=
 =?utf-8?B?SzE5UzZqSnY1dXFQUXhuWWNmZ1VSRExZMFJObUE0bkMvQ0RGem9xT3JHSjRt?=
 =?utf-8?B?RFA5QXdtYWdNUFdVZWJuVFRWWVM3RFYxSWZKcFZxTFFvcGg2OTlKNUluRjI0?=
 =?utf-8?B?bGpKWlBkUkZZZjkyanVtem5KMXJMU3ZPTmJoVUpDNjljbC9CZmdYaGFXYmtX?=
 =?utf-8?B?a1d1UEJhS0NKWGxEWE5JUHZrdWdtRHV3Y29KYStrZ3NHTDE0OWNpQW5EdlhO?=
 =?utf-8?B?cXVQSHFWb05QRXoyZUczelZ2VGptZGcyWHQrUjZRWkdVK0k2VVNqN0FJNVR4?=
 =?utf-8?B?SGxvbzY4Vmw3bGdtYzQ3Mm01MkgxT3l0WXE4OVNVV09SbEtzRkhYQzlZWElo?=
 =?utf-8?B?N0QvZEtURVptNzRoNSt0K2ZocU90dDBqcC9acFNvc1dRTVJxUDNBM1hvcFho?=
 =?utf-8?B?RC9rOUVBNHhsS0QyMlBNejlsUkxwb2lUN2piVWJNVERMUlY2UEdnOUp3ZDlv?=
 =?utf-8?B?TlhSTUFuV1lCMS9iYWd4eHZsWDY2UFFsSjMrZk5TcHcxWkx2V3VPZUFxQS8y?=
 =?utf-8?B?WGJObXNJemhsUmsyeTh1T2hMbmMwWlZ4TGdjaElkMTlDZURxcUtWQjdRT1Vo?=
 =?utf-8?B?WkNtdk95N2lmYWFVandXemh1UFkzRU8zOFFqaHlsOWpGdjMxT29aSTlnT0FX?=
 =?utf-8?B?d2dqYkNRM3Y2YkxJUW9MS21PTHpqTUNhbWVxTjNsb0tIWk5ocWJyT1drYjc3?=
 =?utf-8?B?b0hDSHpxOWErclA1Wk14VnovN1FYN3dMcVhCcHQxcllhOWJIeUZsTzNVdS9m?=
 =?utf-8?B?OFdib3R4MmhEUjMzUks5ZnlhVE4xdVNXYnVNY0htVVhQYndDRDlPMDZLeDdP?=
 =?utf-8?B?UVplcGVYajJCRWFpd3ZWSk4xSjR0NndMVkNRTExhdnhKbFZZcW1pREtNcUla?=
 =?utf-8?B?NklSZnBCajR0aSs0RFVPUGVGT2FiMTdEZUpJUlNsZy9aR3pXNW9GM2J1dlhs?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2941a31e-d5fd-40c2-cc36-08ddd695aefb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8665.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2025 16:07:33.4544 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6BTDHIgYLa1zOJYJcujmASElRT+Wf3zPEbG9puNUvOTTnhB9p6T9jqEc+R4f97Z7eoLLVTOTipBdNe5nRCqYOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7016
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754669257; x=1786205257;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=YobnUm5Zde+j4DnINzFFumuukMcfqDSB5Bd/p/cFWQU=;
 b=jrmyc4+CLrZudxc+FIR6Iw3cIRxj/CtWbJ5Kli/Ws2CY++r+TeXT1gaM
 Mc6SD7IGLs6A2rsD2JTJPuwjQOPab7EQOwKfhAtDtzAvK+j0MP9p3yJzx
 mvN2ubsCcsgdfe3+BUiHHwpsckB8OGkZbAY185PeUnTl61ku1GzwoJ72+
 L9lzoYuMnLFMh0369f59bwaTzGKn4PoVDpCvkIGEz17W7yLBQH6kACjKC
 07IGDUh6axQoIm7JYitwZa7y/EabF2uwctFIz3ltXNS7HYYFfJZtHlQh4
 mE3tA/cThiyABRLb6vFydeks7TWrieGpMLDUNr1eZ9fan41LdLIehBDqZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jrmyc4+C
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/3] ice: switch to Page Pool
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

On Fri, Aug 08, 2025 at 03:08:41PM +0200, Paul Menzel wrote:
> Dear Michal,
> 
> 
> Thank you for your reply.
> 
> Am 08.08.25 um 15:04 schrieb Michal Kubiak:
> > On Fri, Aug 08, 2025 at 02:03:43PM +0200, Paul Menzel wrote:
> 
> > > Am 08.08.25 um 13:40 schrieb Michal Kubiak:
> > > > On Mon, Jul 07, 2025 at 03:58:37PM -0700, Jacob Keller wrote:
> > > > > 
> > > > > 
> > > > > On 7/4/2025 9:18 AM, Michal Kubiak wrote:
> > > > > > @@ -1075,16 +780,17 @@ void ice_clean_ctrl_rx_irq(struct ice_rx_ring *rx_ring)
> > > > > >    static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
> > > > 
> > > > [...]
> > > > 
> > > > > > @@ -1144,27 +841,35 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
> > > > > >    		if (ice_is_non_eop(rx_ring, rx_desc))
> > > > > >    			continue;
> > > > > > -		ice_get_pgcnts(rx_ring);
> > > > > >    		xdp_verdict = ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_desc);
> > > > > >    		if (xdp_verdict == ICE_XDP_PASS)
> > > > > >    			goto construct_skb;
> > > > > > -		total_rx_bytes += xdp_get_buff_len(xdp);
> > > > > > -		total_rx_pkts++;
> > > > > > -		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
> > > > > > +		if (xdp_verdict & (ICE_XDP_TX | ICE_XDP_REDIR))
> > > > > > +			xdp_xmit |= xdp_verdict;
> > > > > > +		total_rx_bytes += xdp_get_buff_len(&xdp->base);
> > > > > > +		total_rx_pkts++;
> > > > > > +		xdp->data = NULL;
> > > > > > +		rx_ring->first_desc = ntc;
> > > > > > +		rx_ring->nr_frags = 0;
> > > > > >    		continue;
> > > > > >    construct_skb:
> > > > > > -		skb = ice_build_skb(rx_ring, xdp);
> > > > > > +		skb = xdp_build_skb_from_buff(&xdp->base);
> > > > > > +
> > > > > >    		/* exit if we failed to retrieve a buffer */
> > > > > >    		if (!skb) {
> > > > > >    			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
> > > > > 
> > > > > This is not your fault, but we've been incorrectly incrementing
> > > > > alloc_page_failed here instead of alloc_buf_failed.
> > > > > 
> > > > 
> > > > Sure. It's a good idea to fix it while we're rewriting the Rx path.
> > > > Will be addressed in v2.
> > > 
> > > Should this be a separate patch, that can be easily backported?
> > > 
> > > […]
> 
> > Do you mean that the patch should be included as part of the series, or would
> > you prefer it to be submitted as a standalone patch targeting the 'net' tree?
> Good question. I do not know the rules. My gut would say a separate patch
> for 'net', but the others know best.
> 
> 
> Kind regards,
> 
> Paul

Thank you for your thoughts, Paul!
Finally, I decided to send a separate patch for that fix to the "net" tree.
It seems to be the clearest solution.

The link: https://lore.kernel.org/intel-wired-lan/20250808155310.1053477-1-michal.kubiak@intel.com/

Thanks,
Michal
