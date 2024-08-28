Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66ED7962AC4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 16:51:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4769A40C7D;
	Wed, 28 Aug 2024 14:51:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q_nenxHoGktd; Wed, 28 Aug 2024 14:51:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4876D40C4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724856661;
	bh=WA/78rUZRSBkE2/1VQN1OCn5YnKY0nvcnuakpaM9s88=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kIMehiIu4KAwUXT8pZCFGXlJAHscIFvXJGODGCJMSn5W7PTjzCsH+50DWRroT07gH
	 JNWF8QTbKLJUjZPo1iV4mp2qkjnpwBuUryB1nCgEJ6uO+WBKGJOkH12WAXPNVJJpfY
	 7uPYNNJCTu3k4nInA1lqjMAC58Fym87748MN55meHCf7tXD9oyIPCKcJZSb5B/ZWmI
	 1vmYDpx4ut9CKo7tOUXboKn/cM645uT4rukH03M8EH/nagP/qqgkUutsC40FhhJt0x
	 41WWTsDS1W738dwN/9cCVK6KMqZ6I92VC9rEMXc8Ugf04c6MgQokwqpg2TlGcy/9JV
	 bV++oRwdE2ygg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4876D40C4F;
	Wed, 28 Aug 2024 14:51:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 878311BF383
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 14:50:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 734A340C49
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 14:50:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 29X1jdfA7Ju7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 14:50:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3096040AE3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3096040AE3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3096040AE3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 14:50:56 +0000 (UTC)
X-CSE-ConnectionGUID: c9dpl+l6RMSP44kX2bgHQw==
X-CSE-MsgGUID: j10cwr3VToeSym1RjRokbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="27157125"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="27157125"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 07:50:57 -0700
X-CSE-ConnectionGUID: QuIloWUPRre3ziXs1WuMzA==
X-CSE-MsgGUID: LD4RKe4BRbWPpXl/hqv/4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="63309890"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 07:50:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 07:50:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 07:50:55 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 07:50:55 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 07:50:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tsgtmByEe04kPf6p62MkwdwkbEnCuLokpPUkBeO7kXvDPLQ326ii/dTq8nDgDsbDc2x5ZQuoc8XIV+jzEaIfYxsJc600z6Pc6re/GCJy5BBr6nolljUXdeQv9/JXwlkoIu5dOaMLX6L/SNOFq91Tc0r6XLPIxYRal/bEKBX+tXAPFjLM/X/mJSsjSuysTPeMKTGNFwhUiPnSzUK0he8R2F7u1l+gf3SRr0L0jJYq5PbYb/Ev8YohjWB8mc2uJtC3drNrsenn8TN2x2xmk/06rBPGkidvkOiplFqEVpSAbMYM6FYW4kD5+m1SZqlyMM1vKLjMhQkj4pUVz9/r5Vk5pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WA/78rUZRSBkE2/1VQN1OCn5YnKY0nvcnuakpaM9s88=;
 b=Ljq1QBTTuAjMFlGWszBWU+26SkmbLndzHJai+z77X8MLSJs8YrHAIehcKeb5A3V8TsucTZs9b742KQAIwtxDfdl3osTSZbPWrL86QZYs3XtLyQNgyZ3VRP63AP1y9l6cLzXMF9ROqc+I8rAHRCVERJaNy6o5QM0U7xNbKRAWfe5vpG88qa9Jtqmu54BT3mA7gcgkuAFpkli1yW3n3ECbGujkZeWSi9F0vX6X/Anefjzz/CORzjSDsvGl4D1IsX7RJIRhu8TK/1JOgJ/lQ1oxhs1Gv3gDr3ZxB3tFW1T59AHd++bsQYn5aeE4lAdLo9uGXJ9GEi5M1QmRJFff4qj3pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by IA1PR11MB7773.namprd11.prod.outlook.com (2603:10b6:208:3f0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.26; Wed, 28 Aug
 2024 14:50:52 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%6]) with mapi id 15.20.7897.021; Wed, 28 Aug 2024
 14:50:52 +0000
Message-ID: <ac7b0652-ae11-49d1-b6b5-bc81e992500d@intel.com>
Date: Wed, 28 Aug 2024 16:50:46 +0200
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-8-wojciech.drewek@intel.com>
 <9e708174-d6c0-4b8b-9a0d-5807463d6c43@intel.com>
 <79623019-60be-4db7-a35e-f2e4c41b6f63@intel.com>
 <1a4232c2-34c9-4b14-a581-4bc2cdc11afd@intel.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <1a4232c2-34c9-4b14-a581-4bc2cdc11afd@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0029.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1c::16) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|IA1PR11MB7773:EE_
X-MS-Office365-Filtering-Correlation-Id: 8878e14e-a2ea-4f35-de30-08dcc770d03f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T3hJVy9EWVRSUUNBQ2tEZXRyVWdyL0J3R25VcEN1YlJmRlBqa1AvWDk0OTF2?=
 =?utf-8?B?OVQxeEQrcDJVZ3RUT3F3UGRHZWJWM2kwM2ZONzRSZ1duQ29sZUdIOGoreklq?=
 =?utf-8?B?Tzl2dkFndEp2SFpZdWR6ZVlEZmNDcHdHb0tkMjJuKy9aNjhOZTFLLzVYZDJy?=
 =?utf-8?B?NHFYdlNpeXpPZTZDZUFGMG9Gb2cvaGFrSEhlT0s0MXkrMWhhY001dmlYYVU1?=
 =?utf-8?B?RXdVMXB6VTludy9YcDJqbG96a0RJYmpmM2NNckphQis4RG9rblZ0TEFaMTZk?=
 =?utf-8?B?TjNrbnY4bG5CTFU3OTR6b3V4RUxDNGNVWFZJbVpEcUZoN2NMYTc5cHZmR0Uy?=
 =?utf-8?B?MHlWY0ZkMzNIaDhCdzhHczU3V3VTTnkwa09nUlRIcDlYWm9YU09oZWlkTjNU?=
 =?utf-8?B?UnFwZmVTWFlqUDRNK3lqaytsRHR3QlFMdEtMbmF6WHZ0SUVkZjh3YWtPbFJn?=
 =?utf-8?B?ZzRCR2lNSmxUSEJkelpHM004ZTZmYndmbTZvUnZIcUZ1ai9wS3NHVVVNT2p0?=
 =?utf-8?B?WjhjdEc5a1FzNWxYNEkrWS9yaXVIZDlPN2tLUDVHUkRZaTJWa1hsRDk1YjRK?=
 =?utf-8?B?Qzd6K0VIckVQRjF1d1lZZkVqUkd4SWZNV3hhL2ZvYjVkS0xRL3V0NVpPYm92?=
 =?utf-8?B?MmpWbnBuNnhNUVZqdVVidzROcGVoelBJVjMxTTFCamFTZkhKMWZmbS9kekpv?=
 =?utf-8?B?STB3aGlRUk1nR05WYmFjc3NXZHdZbllGNGFaUDhFYXNIL0had0VLNWFBWmNV?=
 =?utf-8?B?SXoxUWpnS0wvNjNtcjN5TlY0cjZoNVloNmxGY2JGOUFjOTVCTFJMUU5LVXBU?=
 =?utf-8?B?eDMxUWlocTBGTFJKbWhNcXRVeER2L1BTamZnU3hkazJIeXZ0cElNT0RvYXJ3?=
 =?utf-8?B?dkZZQWErTEQwZkEwRjltak1iVnhaYitua3ZLSmpTY3dSUCtvNmtSbEIyQVU2?=
 =?utf-8?B?a1NGQ3dnVGVlY29tQTUwOSsvSVdoOWw5UG1ZMGVkeTNZWGlINHFjODdkN1dk?=
 =?utf-8?B?bTR2NVd4YTUxSDhLOFdaN01Bb3YvNWdaVVhHdEFYOVZqbWUza2JWQ1h6eCsx?=
 =?utf-8?B?TUVsTUdMY2hjdTJkRGZEenNNcmxJTTAzdVVuekowckREL1VrRGtLOXRSdzFS?=
 =?utf-8?B?MVE5cXl6ZWVTbVdHTXFBMEhYYmc4T0NxVGVDSXVWZVpGMUVMZjFsT2dDQy9G?=
 =?utf-8?B?VWgyQUV1cVF2ak5QNTllZTIzUGVjdXVoRUZyTjhvTDNPWGtNbzhzK3RUcEow?=
 =?utf-8?B?STA2UFR1VHhEcis1Mkh1MFB3Vi9ValEycVFVblUvQ1ZlSWRCQUlUVVlRZnVo?=
 =?utf-8?B?WEVLdjBHR2k2R1VXVmpRU3k1YitjVnRORWE4S0FXQm9HYXdQM3FZQWxPZ1N1?=
 =?utf-8?B?cTNDSitRZXdEUkNBMXhZVXI3VEw4am9qMEk1WDVXZ0pjaFNvdTBLS3NHd25L?=
 =?utf-8?B?VVdIR1ArUlEvdU9tVld5T0JndjkwZGxuK0JreiszbnB0T0J2RnNpQXZ0NkZ3?=
 =?utf-8?B?SWdYSGUwOFJPU1NTRTdzUU5IR0Z4aDdPSDh1TUpVcjJJNUsxMm9jczF2SjVS?=
 =?utf-8?B?WHJMQnpHSVhZVzhYUGRxM1FGN2pINEpmbFkwWS9YRDI0U3V0UnNrTDV4Z3VY?=
 =?utf-8?B?RDFYeGkyUTVyV1dNMTVnTkFadEtYQXV2SGUxeXV6eXlhWHIzZCtkZ3NFT285?=
 =?utf-8?B?NkFtQ1V6M203MmVkOCtjaVArOGh6bThSVXBFQ2pVUloybVZURUVIaXA0WHo1?=
 =?utf-8?B?NFIyNXNWamF4Z2pSaUIxOXI3bUd3T2NOSTJ2MDhqSWQ3QnpNbmYwMkNMYk44?=
 =?utf-8?B?NXRjczRSSm9LSUc5K0xWZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TitsSjdjeDRXSys1bWxaQ0grTy9GVm5qYzNqK0xBdkYyMVV1RWxTWXFFY1FS?=
 =?utf-8?B?WXJsWDdOZnBXOHFydmhiL0tTL2xVTXZ5OU83RmY5ZFV6dTFPeFFEbGhBaUI1?=
 =?utf-8?B?VXVHYkxPL05wUEdHMG1DSUhKWTQ0MDNRd2hJMEQyYWVrVDk5QVNjWnFVb20r?=
 =?utf-8?B?L2VHZ1Y1b0hieGFFSy9VTVJZQlgvUHJvWDJpOE5GUEtZMkZzRURLVnMrVzA5?=
 =?utf-8?B?RG5aTWZqQzkrV1RaVlZ1ZnMvTUVKUzFQM3dLZ1k2ZDdpdDR0dzZrL01DNm5Z?=
 =?utf-8?B?bnVsWDlpcDBnclFkN291TkxnUEFsbklMaGhaQzVORzg3eTRoY28xUFlJZWF0?=
 =?utf-8?B?R0hkdTlhUDF1a1J2Nmw5WDdXSWZVdVlyNG1aNnBzU3BYdFlRWDhkL3ExTWxt?=
 =?utf-8?B?d0pBaEtjTkxZOHR1Y1RaejE1Nk82ZFBYeFRCelNVclJNYldTSnRRQnVMcDZx?=
 =?utf-8?B?TzdRSC85R2RGQ2VVT2VCTFZZUVJVMEdGWXdLWnQyVWxvWXNKUC9aVzMwTXEx?=
 =?utf-8?B?M0tuT25pUzl4WmtMcVVzZHFuby94MmsrQmQ0YTFPbmFwUnBiK3lhUjViVysw?=
 =?utf-8?B?SGJDelM5elMrS0FuL2pOMXNMc1dFdzdmVS9ScWtvZ3NKcmp5REFEbWczUXpX?=
 =?utf-8?B?bkIyUXZUelpRQWMrbkd6dTV0ZmI4cGU4WVN6bUpMcW5ic1JtaUlOZDNPMUk1?=
 =?utf-8?B?cWlqei9SZmQ3eG4zOVM3RUJPN05JVTBGemVkNnJsQkNhbndPVndyOWRqa1FR?=
 =?utf-8?B?TDRYaDIrTmR2SWFncEpibnltZW90NnlHVjVsTkxYYkZDSXFka3Q1LzVvbUxL?=
 =?utf-8?B?OEhicDNySDN4cEhjUysxOXRvbDN6RHR1K3cvNFVxZFFwZHZ0SE0xMGkvbW1s?=
 =?utf-8?B?ejJIL0N3UHRMb1ZmQy9iUzFyNXVQV2ZEUUxGSHlhN2ozYW9kOVVRWE12aUg3?=
 =?utf-8?B?cGdiL2dVdXlyWHVVVzRQQVRrWWg1bDVlalI3NGVwYUcyczUwUUI1bWhZNzRO?=
 =?utf-8?B?Uk1XL1BuQUQ4VTkzNDVMTnFteU1BVGRadUhlbFFMMUFaS2tvMzBrVkFTdzdK?=
 =?utf-8?B?dm94YjRoOVA5emptR2huY3NzL3lqK2h3SGdESTRIcjhrSUtBMDRobVVuN3hF?=
 =?utf-8?B?Q0xyT2RZK3hvYlMzV1EzamJ5OElySC9aaFRZdkRrT29pbHEzcFFuN1RqSTl2?=
 =?utf-8?B?OTRBNktmME5VL0x4S0tNUURYT0w1ZnRNUTVyY3RzckZTTU1SK0ZsR3hKd1ZP?=
 =?utf-8?B?WVh0NjVVM0hJL2RDdmd0WDBvYXFZS09KOEgxaFo3SW1aTzlyNStWbW1xb2tC?=
 =?utf-8?B?OStwcWxoYmN0QWluWjBKeUdUdENSTlZBKzE0L1pENmJXL2JSWW45UE9jNmJ1?=
 =?utf-8?B?Z0ZEcm0zc2h3M2d3MnBubzJzSVRCbnpUaGY3Y0pBQi9YdEx2a1N1ZGxsaDJv?=
 =?utf-8?B?WUkxSGozVitEWCtKc25OV3UzWEg4YlVvbTJ5S01UN2cxcWNRaDNIYXdiOEEx?=
 =?utf-8?B?UUZtcFJTN2sxaUZTZzZLSEJmMVoyRDdsMTZQU2lEYk90akNDNjQrdEdtaDZJ?=
 =?utf-8?B?YWNNTGEwMHoxaTAwQVp2VDhqOVV5OVFYU3Uwb2FYcFlFZmJUUGhwU3VwV1Ez?=
 =?utf-8?B?Y1FmVnRCYURWL1JUYzh6a2RUZjlOU2grY2JrcWN0RUJaMzFhZDdRS2hOQWVO?=
 =?utf-8?B?Y1d3dVMyb0VZL2h4bjlBN0hMRDBiK0c0UTJOMlhVTlNMM2pIaG1zU1hTMFQ2?=
 =?utf-8?B?Q3VxUEtNN1pTcXpVTDd2N3YwaWxnbjFFUXpBVHl2bHlpQUQzdldwcFVPZmRp?=
 =?utf-8?B?VHBKemZJdXNYTEJzUXB6WXkrN0NEVHRyZjJHS1p4NlNIM25vcml2Ui9GeVU3?=
 =?utf-8?B?S05BbVpuZVBuR0lCbXlQMFdpNW1KYVh0QVJOQ0UybGxRZ3JYSkVhYW9sUEx5?=
 =?utf-8?B?dGVEa2FacGgxUEV6SHl5VHNZYXNCQTlQVzAwcFM1ck4wc1NqdkZPNWJvRDNw?=
 =?utf-8?B?SEVuOGd3Vkk1dm90RUVwMGRheEM3UnpaZmxqLzJjdWhpYmZzWmRQS0FldWFY?=
 =?utf-8?B?SWJLUGk4TXprTWlFWnpiUTZaTmtWYzY5S3lDSEFSZFBiYmc4WGJnVTBaMUdE?=
 =?utf-8?B?K1R0dWlEK2swUUZCdmQ5bzIrZWJPZzJJbHk2eEFBMnhUckQ5YU11Y1BQd3Jq?=
 =?utf-8?B?SGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8878e14e-a2ea-4f35-de30-08dcc770d03f
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 14:50:52.6569 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0WR6ls2GvnDUF5M26kfIyV6LB1a29SRTrATk/hHilDs4v1S5ASy/w82ibzJHL62Tpm/dbVCNUZergh70b+rEtlj55eMIyn6bbiw4htbO0tA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7773
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724856658; x=1756392658;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oHEOc93awCW0reNLByYOeUEb7atzhY709yP6Ec4ynfY=;
 b=bBnq6ReR54c9AC54+hlblB1+py8I2op/BOrKJe33F6Cf3d835aMM0vLS
 o6ELwJKjFytNA7t9WEQAWJf0z1DcqjxfGvu4AHw/G2f1kDnkfSOpcUTfR
 q9w1HMqgPTD66sR7A3viKUkwKovwC6POLnxxD5Bp2Z6MaoREMkYI5M4LB
 ILsGgdYh1wOYiIND/PbY0rEZYn1momscc+Mw53OWePH3DjP8WKTT1fT4Q
 cdBXp5cfEiMLfll1tf1JUQcT5HGpg5VxtpMsl5t0fzXamZtatIrQjWr82
 /raX7O238vhjzfHX3SzZVwObz3+hWEvIh5XHSQqMHYaTMXbAs1inC27P/
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bBnq6ReR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 07/14] iavf: add support
 for indirect access to PHC time
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 28.08.2024 14:05, Alexander Lobakin wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> Date: Wed, 28 Aug 2024 13:15:09 +0200
> 
>>
>>
>> On 21.08.2024 16:31, Alexander Lobakin wrote:
>>> From: Wojciech Drewek <wojciech.drewek@intel.com>
>>> Date: Wed, 21 Aug 2024 14:15:32 +0200
>>>
>>>> From: Jacob Keller <jacob.e.keller@intel.com>
>>>>
>>>> Implement support for reading the PHC time indirectly via the
>>>> VIRTCHNL_OP_1588_PTP_GET_TIME operation.
>>>
>>> [...]
>>>
>>>> +/**
>>>> + * iavf_queue_ptp_cmd - Queue PTP command for sending over virtchnl
>>>> + * @adapter: private adapter structure
>>>> + * @cmd: the command structure to send
>>>> + *
>>>> + * Queue the given command structure into the PTP virtchnl command queue tos
>>>> + * end to the PF.
>>>> + */
>>>> +static void iavf_queue_ptp_cmd(struct iavf_adapter *adapter,
>>>> +			       struct iavf_ptp_aq_cmd *cmd)
>>>> +{
>>>> +	mutex_lock(&adapter->ptp.aq_cmd_lock);
>>>> +	list_add_tail(&cmd->list, &adapter->ptp.aq_cmds);
>>>> +	mutex_unlock(&adapter->ptp.aq_cmd_lock);
>>>> +
>>>> +	adapter->aq_required |= IAVF_FLAG_AQ_SEND_PTP_CMD;
>>>> +	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
>>>
>>> Are you sure you need delayed_work here? delayed_work is used only when
>>> you need to run it after a delay. If the delay is always 0, then you
>>> only need work_struct and queue_work().
>>
>> I think that Jake's intention here was to execute the work that is already queued,
>> not to queue new work
> 
> mod_delayed_work(0) works exactly as queue_work(), which is:
> 
> * if the work is already queued and the timeout is non-zero, modify the
> timeout
> * if the work is already queued and the timeout is zero, do nothing
> * if the work is not queued, queue it
> 
> So my comment it still valid. You don't need delayed_work, but work_struct.

Okay, thx for explanation

> 
>>
>>>
>>>> +}
>>>> +
>>>> +/**
>>>> + * iavf_send_phc_read - Send request to read PHC time
>>>
>>> [...]
>>>
>>>> +static int iavf_ptp_gettimex64(struct ptp_clock_info *info,
>>>> +			       struct timespec64 *ts,
>>>> +			       struct ptp_system_timestamp *sts)
>>>> +{
>>>> +	struct iavf_adapter *adapter = iavf_clock_to_adapter(info);
>>>> +
>>>> +	if (!adapter->ptp.initialized)
>>>> +		return -ENODEV;
>>>
>>> Why is it -ENODEV here, but -EOPNOTSUPP several functions above, are you
>>> sure these codes are the ones expected by the upper layers?
>>
>> I'll use ENODEV in both cases
> 
> But why -ENODEV? Can you show me some other drivers and/or core PTP code
> which use it?

I couldn't find many examples, since @initialized is set to false
mainly when PTP is not supported than I think EOPNOTSUPP would be a better pick.

> 
>>
>>>
>>>> +
>>>> +	return iavf_read_phc_indirect(adapter, ts, sts);
>>>> +}
> 
> Thanks,
> Olek
