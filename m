Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A579AB169
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 16:51:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B38E40304;
	Tue, 22 Oct 2024 14:51:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P5dSu-IFIBGk; Tue, 22 Oct 2024 14:51:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B235F40176
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729608680;
	bh=pUY+bj8EvDNVXsE/nOnY0hfhOsSI6OB7syCmThVFcEY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RTZSnVM1Lavz8ZXYfrKzVLpvcyXKiDHJnMGRv1QzJqhu27QQxf7TfGdHi8Jtf1tRF
	 cCc9x2HqL9yGBFXG0squkDBVYkin09a5qXKDV2GWnaOZwolig1TjwMip882x2Hn5PD
	 8txoC76oI1od3WVo9BqKULADUVTGmGSyRlJqcfIMWbZ9qaFmfouDIXE0QxwApiq7oB
	 bDpabDJwz+FiLKbNgDQsfKJm7W+tSES3Dswp6mn7TSoEhjAvkEQxgqNbwJEcG9iAnn
	 t4fS0eOkfWCXcHTla0tdbiJWbOKjDjZnFPbzijbcV3V7DhTuO+CVEg3vy/HbfI4Bea
	 XAbFv9MVuPiBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B235F40176;
	Tue, 22 Oct 2024 14:51:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E27C963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:51:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0779E401C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:51:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mbNRUPrxTplh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 14:51:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5EEB640304
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EEB640304
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5EEB640304
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:51:17 +0000 (UTC)
X-CSE-ConnectionGUID: zhuogsGWRe2GzVkrqg+sfw==
X-CSE-MsgGUID: W53+v06NR4C5dIyU8X1dXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="39732371"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="39732371"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 07:51:16 -0700
X-CSE-ConnectionGUID: aIws+gtHToiWn1wuinxO8g==
X-CSE-MsgGUID: OXCEEYcLQLWGDikTO/YRXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="80240444"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 07:51:16 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 07:51:15 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 07:51:15 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 07:51:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cy1Tcdqw9aUjTBtt+vSWSWyfI/VxRS63Nt6DaTZB+iu1U2tDJRRSl7ZcPfkbWZAOdP8oRRZKSwsPTVOeAfkoaqZCm3oRWxEF6Hi9A5LTT5etx4IbBtWIfxR+NCLyoUGaBSQ5piwuyEVbtUSKR4s1SyeWR54q0ObbhxITqKadawJrsWOCld7+HxMfae0kzwAXOuXV/7oeOkwJERcNXSg1Q07IJLYhMbhPCUPzS32y2xHDaBt4BUWKLXrmQ0MQT3NCLwEli5qCTr39OJ+lOVl8Zhs7prhy2qCq0Lf8xIhH4IjJEOPoZCTzrTYUsoG5Bpv1zdWSPjeDkOvOKJaPeNHY6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pUY+bj8EvDNVXsE/nOnY0hfhOsSI6OB7syCmThVFcEY=;
 b=yDML2JVZOvAk7Q5HZuQMfh+gTzg0AYsO3kS8yP7+N5ohGQSNcIuhTHXOu7SkMu89JZtgfjGIJ2T4JWZZRGVSIvfpm7Or8DuoT5kSJlp/mz9DRESL82CRPL0Nj2ekzco69xZ7zrT2GaVKkQikjLxETYDbWyBCH0wMMPdQcUIqjDuZmzvo6cuBzyaQ3zlGSWuwssVIuzSN2yjOfSjblS5sQNc+TXLnFSzeVAWg6XOHloAQp5PUeAntvTtCudD/Z7cHltNwYFLnT7RVIwEbwpPh9tz+PtQ43u5KFR2JEl/8iEcI120erLnLsraFMOA9rqfbKzsj+PWLuJJXPtLv8GmlUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 SA1PR11MB8427.namprd11.prod.outlook.com (2603:10b6:806:373::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 14:51:12 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a%4]) with mapi id 15.20.8093.014; Tue, 22 Oct 2024
 14:51:12 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/2] ptp: add control over HW
 timestamp latch point
Thread-Index: AQHbI8T+Af2gKLBXbUqBk3x6z/Z7+LKRylgAgAD5lzA=
Date: Tue, 22 Oct 2024 14:51:12 +0000
Message-ID: <DM6PR11MB4657C83479354B07E7E32FC89B4C2@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20241021141955.1466979-1-arkadiusz.kubalewski@intel.com>
 <20241021141955.1466979-2-arkadiusz.kubalewski@intel.com>
 <07bb7025-633a-479e-a45c-f07346b14d0d@intel.com>
In-Reply-To: <07bb7025-633a-479e-a45c-f07346b14d0d@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|SA1PR11MB8427:EE_
x-ms-office365-filtering-correlation-id: 704eb5ff-8353-4c05-9077-08dcf2a8f91a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?QkRsSnFCb0NRLzE4Y3ZEZGVUUkpOOXNLNUZiTjl5cG4xZzJBSjJTYTg3ZXl4?=
 =?utf-8?B?ZmdOK29SajQrTmJBN3NKYjd0bDlweWxIQm5qK1JRNEJTVjVuMXFqV3RDNWp6?=
 =?utf-8?B?bXNoZzRUbzZkUlBtaGdlTXFYaXduZHdDUjFSbmJhaUlJU0R4MDdRK2xURDNj?=
 =?utf-8?B?M1U4MTJIRElLRTRBRFVDNkpXK1oyb2hQZXpMUy9PbGpsbFJ1N2dVMG1SVXR3?=
 =?utf-8?B?WHFtRmlaRlRLanRLTWpmaEQvdTF4WFcvTkRYclZMZkhSZTBPQ0xoNlhVUHg5?=
 =?utf-8?B?WXk4M3JZdTdrbnliblFOWE1WN3pmR2xDYkNKZUR5YnlXNzdvMDBZQVJDbHhV?=
 =?utf-8?B?Q1JLYkx1RXJwWENPSXA5NUphUUhDdjczRmhpVDZsVm84ajZ0QUh0ai93eHJh?=
 =?utf-8?B?ZlkzSTdHTmtRTk5Ndm15RmZENnc0VXZiVng2bGpUT0ZNQ0RjenFxZVhSc0JU?=
 =?utf-8?B?LzhMa0xUaXRLN2xrTE1SOEp1RUFGd2lJcHRmVWNncWpFL2hEenZlSlErcEFu?=
 =?utf-8?B?WjRVNEpSS0JVMkhMaFNkSTNlT1FXVHA3YTJNVThUNlVlRklLWnJQNjlmeGdj?=
 =?utf-8?B?OVVBUVlVMU5MbFBBWVVyS3JlZHNUNEYwSVFQOWlWZ1F5N3RjaXdQNENoc1A1?=
 =?utf-8?B?S01OZkJoNmxqcFRyQlFDZTRtY1JSdUs0cXlCQ25NaFM2cUZuNFhCajA3ZldB?=
 =?utf-8?B?emQzZlFTakI1UHBBNWdRRzlmRy80R2hPK1pqTDBjUUVYOENRbWZYdHdOL1NB?=
 =?utf-8?B?M2twU3NnN0JDN2x4MnZBV1l0Y3R1bW1objM4cGpHdUMzS0ZvTk1ocVpHbHlm?=
 =?utf-8?B?MFpJQy9Mc3F5N1cwNkZOcTlUWDBpWnhrbUdteG9aNXNEMWpBMlRwc092UnEv?=
 =?utf-8?B?d1pUdXZ4bFhrcEt5Y1pjeFRPMVBabndsQm5VRGpGU2U5T2lXNEtoYkxXS2N3?=
 =?utf-8?B?TFluR3hkanFFU0NGbDlTNWRwS1ppV3pjMWp3ZitYMUFQOGVFcFVxMmViTW4w?=
 =?utf-8?B?NnBWalpVVlpxR1NqTnhNakN4RWk4ckNodWh2ZXZwakkvdWhGSmJBamltQzBl?=
 =?utf-8?B?SGR0V0I0VUJSdkJRNDVLdmIvTmlzQzFmQWdBN1ZLTlFMWVNkaW4rRE5TRExh?=
 =?utf-8?B?aEhQZnNZc0FoWVQrY1YrUWJRNy9UYUJRRmhjS2RhUnJpSU4vZGRveXRpTitD?=
 =?utf-8?B?cXRYNzNQTU9IVXdJSmFmcFgrLzQ1Q0RzUUVEbVZZNDZtNlNLYXdveVk4TnV3?=
 =?utf-8?B?OG9yaUppVGo5eTFNM2xZak1sUnNobm1BQVFMbXEwN1MwY0Q2WGQza0dMb2dB?=
 =?utf-8?B?MFhEUU1MeUc4a1N4SHEwNFM0OWgrRldlckJRaDJ4Y2JKQytUKzM4ZU5rc3VS?=
 =?utf-8?B?bThJdEJPa0RzejhpZ3pyRWpYd0ZOUmxUNTE1SEVMdnh0MHRVUkJISjVncmo1?=
 =?utf-8?B?UEVoZUZ1QktFWFRHeTltbGVsRGRUTDdNOFVMaXZTaGVtbGNzZXdQU29IdWJT?=
 =?utf-8?B?S3FjRFhxRlh1Ni9aY0R2bXJrOXlhRzQramQ0ZlRvNHVMdnJSSE5LR3c2UHI1?=
 =?utf-8?B?L1JaMUJ5NDQ4d1lidzdLZGFHTXJoaWNEdHNEVzNZcktxazU5aG5mdXpTakN3?=
 =?utf-8?B?QU5FV3VwOWlXTUVrLzdicm8rSE55S2lhamFQN1RaRzJvNHlITDFwaFRHNVNo?=
 =?utf-8?B?TGJoZ1Mwa0dtK3dybHBVcXltUXhid052Z0tBV3c1enlINnJBUlJSRTc0SEc3?=
 =?utf-8?Q?e2H6vrt10HENbiKnWZZNm5+xEwRhJQvV+ZqT4qK?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R3BaaVhOeThOZmFUTGMzSVArZ1pna1c2ajlrZW9LamtNdUZKcjFpNXB2THRu?=
 =?utf-8?B?Um5peTdoN0RzQUFkYW9MbER5akNrUXh1OUM4VWVoa0lmRlp1MFBWZnRhS2d1?=
 =?utf-8?B?WU9PWVpkdFFqMUhOUi9NRzVocitHR2tNZFA0UC9MOTRCK3ArdTVZR2dodWZh?=
 =?utf-8?B?L2FYK1hLNnRQaHBKT2NlMDJ3aVJWYUdjSktQeWxMT204QlhHU0VCb0RsVExz?=
 =?utf-8?B?VEJkRHhDMGFJbzhxcVZkSEdWUzY2VjRjWEJSZUpwZTRuQm5Hem5iSGpORHJQ?=
 =?utf-8?B?MGtTa3RObDdtcm1jamtyYzl3eTNaeHM1cXByeXl4UW9kUjhJcTZ2SWhualI4?=
 =?utf-8?B?R0twbGI4RFZTZUZiUERUQUdsdVRkTHRPbGdTMHlGY1RNby9LcUczRTkzSkgw?=
 =?utf-8?B?bDRKeU1DZ0NsMktFWENwR0lBV05NUkJJV04xZVIwc3dKc3E3aGdGMDM2dWc4?=
 =?utf-8?B?WVU5bG1YOGs4YXZoT2gvMjN0U21HZHhVRi9Jejl2dTllM3NEcEU4bXNiZ1Er?=
 =?utf-8?B?SHIyWlk5U2gvUlU5dWJaT0hOZXZ1RVhzT0dYdGowblJLSW94dUdTem1vTjA3?=
 =?utf-8?B?R01mL0Z4a0VBVWpVMXd4MW51WWxYUWZpK1c2azkwTVZxV3RSbzNMQnlIbnRY?=
 =?utf-8?B?UlVQZ1lDbzhZZXVKaTNBOTJrSmRBMmI1UHVjbElHbHNLMlZaa3h0U085ZDhP?=
 =?utf-8?B?WGpQbklHZk5iV0h1MUYrWTdOa0lMeWJ0Q1BiRktaMEZ3MlJOOEdWYW1odXFH?=
 =?utf-8?B?dTRHN0xQODI5OVYrRDhWRnFaMVMrNU9TUGVsSS9JcU0wazU4T0puNDAwMUN5?=
 =?utf-8?B?bEI0alJMY2poUGpvWU42QnphWWtzSkJ2VDRDVno1QndLNG9yeWhUZm9XaXF1?=
 =?utf-8?B?bDRSWW0zN1A1cnVPSW9wQUJGcENmT3pXaUcvQ09URlQ1S2UxUVJQZ1l0QmRT?=
 =?utf-8?B?bkpqZXBxTml6NW0vdUhxT0F6TVVsbVpudExBazAzWFhML3JrSHAzSzBUVU5Z?=
 =?utf-8?B?NmMvMzVVTHpNZndqQVRvQmwyckpwakZJZHFVWE9wZlhZa3BhZ3RvZG5wemkz?=
 =?utf-8?B?S2oydVEyd2ZYOWhhWmJ6NXFHNFRac1lzanZPakYvNzBzbmM1aTFUQjM1NG9L?=
 =?utf-8?B?NWpzNGlrZTNqaGFDNWFLdmVoUmgrR3VXR3hxRWtJcVAwdXFZemFaRERDNnBV?=
 =?utf-8?B?SHRtcGdkdHlhc09jdDQzcGw2ZHk1NXJqT2NuY2FPcGNoL1FCeC9lbjh2aXFl?=
 =?utf-8?B?eTIvL1Ztekx5cXNLQUY4VjJLVkxCLzh6QURNdk9CRVBKS2haRE56dnVES2Fh?=
 =?utf-8?B?Z1JnSFFWZTNXMnlmWVVocUk0c1FkaytmQXZDVysyTTJ3SWI5UGM4U2pKU0ww?=
 =?utf-8?B?UVo2V3kvdG9VZlp6b3N4di9ZanFMTEJLQ1BHVGZLRXpPOEgzVWtFQ0tCZVJh?=
 =?utf-8?B?N0FxZVAwaHBkeVpTSlNtL0xDYitnR1J3T05xYUxLK0FZTGR2NVVad2RibUxE?=
 =?utf-8?B?VmIveHNGd0JReHU0bnlwR3dZNFBPQUJGeHpyZjIrbHNUcXNONHovOCtmUkxt?=
 =?utf-8?B?SkpDSDIwZVFEWXhySjhBTk5rd05MRDlWaEJWRCs3a3lEVU80SGhXSU5LQ2VT?=
 =?utf-8?B?QS9GTkJkU2RYWTNBdFBadHNFNm5HZW44VHErT2ZnODc3ZkduM2xGWjZwNi9i?=
 =?utf-8?B?MFB4MDZKU2svY0dXRFFUTlhYd2VPa25kUFpGMjVaY3RzM29DM29uTG0wZ2VU?=
 =?utf-8?B?Y1dUYXZmY01hTWtBeGNGc09VUXU1bzEyT1lmWUFUd1R0d2N3VFlyT1ZGSTlt?=
 =?utf-8?B?OEFPeTJnS09BOXo3SXdJdWhTMGdXcnhoemt1WGI3cFAydG4xdlJHbHdyT3kz?=
 =?utf-8?B?anVOUkxqM2dTUFZXR2krc2o1ZHJ0TEw1b2Vyc2p3NTI5U3ZMUnFDbFhEVlg5?=
 =?utf-8?B?bzhhQkhsQnVvdzVlT0pUYjdFUnpybG1EZGxneFlUWGl1MEJPRVZJQVdRSFZy?=
 =?utf-8?B?UzIyUHY3N3RXZzV2dkkvbkFmcUdJczZ0c0VwL3RvMHE3VHpBaVZieTVBd0lk?=
 =?utf-8?B?aU5kYkh0c0ZndGtacitBd3RFSEZiWXhLTjY2SHBrM2pFSGVYYXhqRFZSQ0Jt?=
 =?utf-8?Q?skrbgW6vJlWHFP+V7pRIT+x2t?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 704eb5ff-8353-4c05-9077-08dcf2a8f91a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2024 14:51:12.6930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z1BJ963rGZ+74LmQ0m3ZRUmz3BmqgSgHi05JbSoh1xhxj1dr+65CzTVjEuC33Q3/KcKrq3IXSq2NgoPrU/Lk2KlAPK4nU7Xsz93K+R5pVT4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8427
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729608677; x=1761144677;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pUY+bj8EvDNVXsE/nOnY0hfhOsSI6OB7syCmThVFcEY=;
 b=Eko05nD6AilZLk5META4IZTdhXrMhF+WHxMIcetgwU+E4LD4XBejJ6qU
 eSBTBXxlvnP3N/p5BwjQaEVBK6nNHA5DHys/SowziKfdITerS6B//AFSL
 gSpYU9LUDDYBegjuT3r9bzIxA2eDlhR9psBy9MpkzOPWYyHN8pTNtGqPL
 sWmMAlil2nDiwN4xG4ew5fiwuqDLync9W48xgCcCw7OkqC422Bt3QC0si
 Jf83Xl2ieveirckbGvI5ZcsTS18NGBoPFoMab3KWjUNHQuC2THVQNFYWt
 KSIL3Bbp+COO6P3nreZSYBQe3JqS6+bQsy7pERwMVjHYPcDIuNNq8E1Jt
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Eko05nD6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] ptp: add control over HW
 timestamp latch point
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

PkZyb206IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPlNlbnQ6
IFR1ZXNkYXksIE9jdG9iZXIgMjIsIDIwMjQgMTI6MzEgQU0NCj4NCj4NCj5PbiAxMC8yMS8yMDI0
IDc6MTkgQU0sIEFya2FkaXVzeiBLdWJhbGV3c2tpIHdyb3RlOg0KPj4gQ3VycmVudGx5IEhXIHN1
cHBvcnQgb2YgUFRQL3RpbWVzeW5jIHNvbHV0aW9ucyBpbiBuZXR3b3JrIFBIWSBjaGlwcyBjYW4N
Cj4+IGJlDQo+PiBpbXBsZW1lbnRlZCB3aXRoIHR3byBkaWZmZXJlbnQgYXBwcm9hY2hlcywgdGhl
IHRpbWVzdGFtcCBtYXliZSBsYXRjaGVkDQo+PiBlaXRoZXIgYXQgdGhlIGJlZ2lubmluZyBvciBh
ZnRlciB0aGUgU3RhcnQgb2YgRnJhbWUgRGVsaW1pdGVyIChTRkQpIFsxXS4NCj4+DQo+PiBBbGxv
dyBwdHAgZGV2aWNlIGRyaXZlcnMgdG8gcHJvdmlkZSB1c2VyIHdpdGggY29udHJvbCBvdmVyIHRo
ZSBIVw0KPj4gdGltZXN0YW1wIGxhdGNoIHBvaW50IHdpdGggcHRwIHN5c2ZzIEFCSS4NCj4+DQo+
PiBbMV0gaHR0cHM6Ly93d3cuaWVlZTgwMi5vcmcvMy9jeC9wdWJsaWMvYXByaWwyMC90c2VfM2N4
XzAxXzA0MjAucGRmDQo+Pg0KPj4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFs
ZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPj4gU2lnbmVkLW9mZi1ieTogQXJrYWRpdXN6
IEt1YmFsZXdza2kgPGFya2FkaXVzei5rdWJhbGV3c2tpQGludGVsLmNvbT4NCj4+IC0tLQ0KPj4g
IERvY3VtZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMtcHRwIHwgMTIgKysrKysrKysNCj4+ICBk
cml2ZXJzL3B0cC9wdHBfc3lzZnMuYyAgICAgICAgICAgICB8IDQ0ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrDQo+PiAgaW5jbHVkZS9saW51eC9wdHBfY2xvY2tfa2VybmVsLmggICAgfCAy
OSArKysrKysrKysrKysrKysrKysrDQo+PiAgMyBmaWxlcyBjaGFuZ2VkLCA4NSBpbnNlcnRpb25z
KCspDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMt
cHRwDQo+PiBiL0RvY3VtZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMtcHRwDQo+PiBpbmRleCA5
YzMxN2FjN2M0N2EuLmEwZDg5ZTBmZDcyZSAxMDA2NDQNCj4+IC0tLSBhL0RvY3VtZW50YXRpb24v
QUJJL3Rlc3Rpbmcvc3lzZnMtcHRwDQo+PiArKysgYi9Eb2N1bWVudGF0aW9uL0FCSS90ZXN0aW5n
L3N5c2ZzLXB0cA0KPj4gQEAgLTE0MCwzICsxNDAsMTUgQEAgRGVzY3JpcHRpb246DQo+PiAgCQlQ
UFMgZXZlbnRzIHRvIHRoZSBMaW51eCBQUFMgc3Vic3lzdGVtLiBUbyBlbmFibGUgUFBTDQo+PiAg
CQlldmVudHMsIHdyaXRlIGEgIjEiIGludG8gdGhlIGZpbGUuIFRvIGRpc2FibGUgZXZlbnRzLA0K
Pj4gIAkJd3JpdGUgYSAiMCIgaW50byB0aGUgZmlsZS4NCj4+ICsNCj4+ICtXaGF0OgkJL3N5cy9j
bGFzcy9wdHAvcHRwPE4+L3RzX3BvaW50DQo+PiArRGF0ZToJCU9jdG9iZXIgMjAyNA0KPj4gK0Nv
bnRhY3Q6CUFya2FkaXVzeiBLdWJhbGV3c2tpIDxhcmthZGl1c3oua3ViYWxld3NraUBpbnRlbC5j
b20+DQo+PiArRGVzY3JpcHRpb246DQo+PiArCQlUaGlzIGZpbGUgcHJvdmlkZXMgY29udHJvbCBv
dmVyIHRoZSBwb2ludCBpbiB0aW1lIGluDQo+PiArCQl3aGljaCB0aGUgSFcgdGltZXN0YW1wIGlz
IGxhdGNoZWQuIEFzIHNwZWNpZmllZCBpbiBJRUVFDQo+PiArCQk4MDIuM2N4LCB0aGUgbGF0Y2gg
cG9pbnQgY2FuIGJlIGVpdGhlciBhdCB0aGUgYmVnaW5uaW5nDQo+PiArCQlvciBhZnRlciB0aGUg
ZW5kIG9mIFN0YXJ0IG9mIEZyYW1lIERlbGltaXRlciAoU0ZEKS4NCj4+ICsJCVZhbHVlICIwIiBt
ZWFucyB0aGUgdGltZXN0YW1wIGlzIGxhdGNoZWQgYXQgdGhlDQo+PiArCQliZWdpbm5pbmcgb2Yg
dGhlIFNGRC4gVmFsdWUgIjEiIG1lYW5zIHRoYXQgdGltZXN0YW1wIGlzDQo+PiArCQlsYXRjaGVk
IGFmdGVyIHRoZSBlbmQgb2YgU0ZELg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHRwL3B0cF9z
eXNmcy5jIGIvZHJpdmVycy9wdHAvcHRwX3N5c2ZzLmMNCj4+IGluZGV4IDZiMWI4ZjU3Y2Q5NS4u
N2U5ZjZlZjM2OGI2IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9wdHAvcHRwX3N5c2ZzLmMNCj4+
ICsrKyBiL2RyaXZlcnMvcHRwL3B0cF9zeXNmcy5jDQo+PiBAQCAtMjgsNiArMjgsNDYgQEAgc3Rh
dGljIHNzaXplX3QgbWF4X3BoYXNlX2FkanVzdG1lbnRfc2hvdyhzdHJ1Y3QgZGV2aWNlDQo+PiAq
ZGV2LA0KPj4gIH0NCj4+ICBzdGF0aWMgREVWSUNFX0FUVFJfUk8obWF4X3BoYXNlX2FkanVzdG1l
bnQpOw0KPj4NCj4+ICtzdGF0aWMgc3NpemVfdCB0c19wb2ludF9zaG93KHN0cnVjdCBkZXZpY2Ug
KmRldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUNCj4+ICphdHRyLA0KPj4gKwkJCSAgICAgY2hh
ciAqcGFnZSkNCj4+ICt7DQo+PiArCXN0cnVjdCBwdHBfY2xvY2sgKnB0cCA9IGRldl9nZXRfZHJ2
ZGF0YShkZXYpOw0KPj4gKwllbnVtIHB0cF90c19wb2ludCBwb2ludDsNCj4+ICsJaW50IGVycjsN
Cj4+ICsNCj4+ICsJaWYgKCFwdHAtPmluZm8tPmdldF90c19wb2ludCkNCj4+ICsJCXJldHVybiAt
RU9QTk9UU1VQUDsNCj4+ICsJZXJyID0gcHRwLT5pbmZvLT5nZXRfdHNfcG9pbnQocHRwLT5pbmZv
LCAmcG9pbnQpOw0KPj4gKwlpZiAoZXJyKQ0KPj4gKwkJcmV0dXJuIGVycjsNCj4+ICsNCj4+ICsJ
cmV0dXJuIHN5c2ZzX2VtaXQocGFnZSwgIiVkXG4iLCBwb2ludCk7DQo+PiArfQ0KPj4gKw0KPg0K
Pk9rLCBzbyBpZiB0aGUgZHJpdmVyIGRvZXNuJ3Qgc3VwcG9ydCB0aGlzIEFQSSwgd2UganVzdCBy
ZXR1cm4gRU9QTk9UU1VQUA0KPmFuZCBkb24ndCBzdXBwb3J0IHRoZSBBUEkgdGhlbi4NCj4NCj5Q
cmVzdW1hYmx5IGhhcmR3YXJlIHdoaWNoIGRvZXNuJ3QgdGltZXN0YW1wIGFjY29yZGluZyB0byB0
aGlzIHN0YW5kYXJkDQo+d291bGQgdGhlbiBzaW1wbHkgbm90IHN1cHBvcnQgdGhlIEFQST8NCg0K
VGhpcyBpcyB0cmlja3ksIEkgZGlkIGl0IHRoaXMgd2F5LCBzaW5jZSB0aGUgZHJpdmVyIGNhbiBp
bXBsZW1lbnQgb25seQ0KZ2V0X3RzX3BvaW50IGZvciBhbnkgZ2l2ZW4gSFcgLSBqdXN0IHRvIGdp
dmUgdXNlciBpZGVhIHdoYXQgaXQgc2hhbGwgZXhwZWN0DQoodGhlIHRpbWVzdGFtcCBpcyBhbHdh
eXMgbGF0Y2hlZCBhdCBzb21lIHBvaW50KS4NClNldHRpbmcgdGhpcywgb24gdGhlIG90aGVyIGhh
bmQgZGVwZW5kcyBvbiB0aGUgUEhZLCB3aGljaCBuZWVkcyB0byBhbGxvdw0KY29udHJvbCBvdmVy
IGl0Lg0KSWYgbm9uZSBvZiB0aGUgY2FsbGJhY2tzIGFyZSBpbXBsZW1lbnRlZCB0aGVuIHN5c2Zz
IGRvZXNuJ3QgYXBwZWFyLCBpZiBvbmUgb2YNCnRoZSBjYWxsYmFja3MgaXMgaW1wbGVtZW50ZWQg
dGhlbiB0aGUgc3lzZnMgd2lsbCBhcHBlYXIsIGJ1dCB0aGUgY2hlY2sgaWYNCmNhbGxiYWNrIGlz
IHByZXNlbnQgaXMgc3RpbGwgcmVxdWlyZWQuDQoNClRoYW5rIHlvdSENCkFya2FkaXVzeg0KDQo=
