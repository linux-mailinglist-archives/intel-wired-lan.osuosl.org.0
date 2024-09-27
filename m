Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF1D988121
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Sep 2024 11:13:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 613BA844C2;
	Fri, 27 Sep 2024 09:13:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LQUZh8jLrIxX; Fri, 27 Sep 2024 09:13:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E3EA844CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727428402;
	bh=TU0P3R1JN0fOiAzQqfhNx/vFfx6INAlKmRwf9Z/kKkE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tVQpcHzFoGhXTlVY9Z8hI5OiTgvnva39kefqsWHpDqkiVFfflFX9uHZxQ2vC+O6Ei
	 WOU3Qcn4c7dp+ejeMjhFPIeJXC/+85Qzl95z8Y4Qyn0ASryDRHAs+k4vWeQ0pRe/ua
	 pudAOYiHBfzt4JMvoNf56Xr5Ma0rNJmYr8qZ/PMD/N4X4STyAMyao8zz+Y9unJo3bR
	 NOoXt95mmixkmRrj8mXYv2Aqbns61rJhT/2LsdOPIUqfyQMOUynSSCd9Alnx8RmLI6
	 1ueopgXrq/pmHnQX2AOdDd6IOEJhTuUyOGuiLIgG9rDdIUvUu995ruf8VkZdoPiJK8
	 +Ml2FWC7XNLyw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E3EA844CE;
	Fri, 27 Sep 2024 09:13:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF4BD1BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 09:13:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DBBD8404B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 09:13:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0vajqnmjBYUE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2024 09:13:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 857B9402A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 857B9402A4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 857B9402A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 09:13:19 +0000 (UTC)
X-CSE-ConnectionGUID: 9Ls+qw8rRye95nnmIqnRlA==
X-CSE-MsgGUID: KPidXr4gS4+VFYlgv6BrUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="30357466"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="30357466"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 02:13:18 -0700
X-CSE-ConnectionGUID: kkayGSn6TMKMbR7UOycJ/w==
X-CSE-MsgGUID: y+wUjnPDSTmh0vhDhNxvQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="72561447"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2024 02:13:19 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 27 Sep 2024 02:13:18 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 27 Sep 2024 02:13:17 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 27 Sep 2024 02:13:17 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 27 Sep 2024 02:13:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kvX4s072gZsxHjkO0ZUHt5IHHZEBKMMOh/Xsy+AglJ70Ae9S9uPi0ciyMfhhapbwkVS84SlSUr/58JSNfAYcMsS4PTBkr4Z0AXABGFUstH7J7lxOA2iFxZbk/FUquAHrLuomyc4ze4Wi45bz2xSnFcOhIbtu18R8RwdeRN7dSePyQImg3/Svq7w1dbEtKJRPlg6EewPARYK9cNVpte/qsGqG28Z2NUhXxDulp4tPrbD7PWyeuuSdMnRYG5M9KTwOMM+xTX2I/jSWT6hghzS/+krWzAcuLR1pR1gNuVfoUmEchMl08jZCYvQw5bEfEQ0QGb6IRGAexAwTOImggVIOPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TU0P3R1JN0fOiAzQqfhNx/vFfx6INAlKmRwf9Z/kKkE=;
 b=WDE+XIoIeWmPGyy6ebMZZluhn+XtJVSYmsJgx9UVDQ9D/yjZPgtlMd5xKoPa/32OQjnglmxMEPjP18upu8E5fw3hVFX6VLF1T/xxNZTWfqw6YTfb2cfg2s1j8vNAjMXXUODUFapT0FJq4x8FV18hVusKHMk5LIMN5J59OJeU1Frl7PROXVhQnu1G8awE7V7l7ZKS+G6Kq35T2JPXGR3sw+pg5K6JDqDhHlY2kJBZPpDdM0FG0jOmnr3tVVtTAQoJS5EsOtuqhGqXt5ipLIaqBCX62X8D7ilODHdlC2fd/JJCs2ll7Ebxzfeh4PiOeNR6dW5pb7nJjNrOh83QrzUQgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by BL1PR11MB5272.namprd11.prod.outlook.com (2603:10b6:208:30a::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.22; Fri, 27 Sep
 2024 09:13:12 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%6]) with mapi id 15.20.7982.029; Fri, 27 Sep 2024
 09:13:12 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: consistently use
 q_idx in ice_vc_cfg_qs_msg()
Thread-Index: AQHbAw0tVpNkrgDKXEejpWXnJRY+BLJrdMEw
Date: Fri, 27 Sep 2024 09:13:12 +0000
Message-ID: <SJ0PR11MB58658B6073F9646C157B52088F6B2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240909-e810-live-migration-jk-per-queue-max-frame-rx-buf-len-v1-0-f955205bc78f@intel.com>
 <20240909-e810-live-migration-jk-per-queue-max-frame-rx-buf-len-v1-1-f955205bc78f@intel.com>
In-Reply-To: <20240909-e810-live-migration-jk-per-queue-max-frame-rx-buf-len-v1-1-f955205bc78f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|BL1PR11MB5272:EE_
x-ms-office365-filtering-correlation-id: 9219bbd8-4b33-4a8f-d962-08dcded49cf0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aWRiMDROWjlMVU1kT254d1ZYVFFFZjdDcENENDNGOVBxZloybldxMmpjcHN2?=
 =?utf-8?B?eHUzT1RvWFpyTVhJS3NDNDNaSUdsWkRHM1hOOTJjWCsrK2NUQmhqMFh5RWZ6?=
 =?utf-8?B?NkE2bElqdzBvWCthODZvSGZ0MmpXY1hEUlk3bmkzQ2pjMzU1Vmx5MDM5NE9F?=
 =?utf-8?B?QVl5SnMxWUdyamFxcW4xVmZZRi9xazgyQmpSRWNQNDhCL0J5NjVscGp0My96?=
 =?utf-8?B?cVQ2aFUzbUlreC95VzhWQlJBb3pncmxsTnl5M0VqOWZWK2VMa1RTUHpsUTVO?=
 =?utf-8?B?NUhUTERMQ2RBZXlmUlFxTmZwWE5PMkhzcmpNT01OcFQycjVKQ3FMNStnNUlJ?=
 =?utf-8?B?RDFBaXdQWFBzZjluMlJGVENsUFVaMWVzOGZNeThrYVVBSUU2VTZWOC9tZ2hz?=
 =?utf-8?B?V2FJR0dXcGNBRXFNQTU0c010NVVSdHIvRnhvbUxaa1o1UU9LeVl3TjlkazBD?=
 =?utf-8?B?TDNxaEFyaGNSK0dWd2xEMWwwQmROOS9pbVhlR2xJTlFYVVQ1VXE0SFBwa3kx?=
 =?utf-8?B?akJhUVJDTDc5emt5OG1TdGVpaEVNQzZuT3lmRFdrSDR5cjZjSmRPaEE5bTA2?=
 =?utf-8?B?a2l6U2ZOY1hZVWdhOVJkVVFlQnRIMWo4SVhDYjBPUUxxVTZwS2RKbnhwSjN0?=
 =?utf-8?B?NEFBMlIzcCt6QlBGbVNNOXNWUnp6dld6OFNFWndqYTFnRUlnY05VYjJ0RUpG?=
 =?utf-8?B?K3RQSGtsTTQ4UmRHV21iSGVhZVRkM0hvT1dUSk01bjJlTk5QSFc1dG1CbXhx?=
 =?utf-8?B?Q3ZITTltRjdzcUtVWmtFTjRIY3h0TTBHRDFJZXJqeWlPVmpHRExmbE1BMDQ3?=
 =?utf-8?B?TklJQlVXb3RmZHlFRGg0NXdnWlYxTWF3Z0ZHWUpRWHFpdG9NeGN5YlVYME8r?=
 =?utf-8?B?TmpYV0dNRjd6bWdsWnM4SmVPOUZEOTJOWHppUDQ3ZGljWWlsa3RkMjlWSyty?=
 =?utf-8?B?b1hDU0M2MlBRblZBZUhyMHA2TklzaytOWnBXMmtnRVUxaTBQY3JhbUhKMHUv?=
 =?utf-8?B?UmFNZU05N0VjZ2dsb0orb0ppMWpBT3RFMjg0UThDZTJ4OEl6Y1RMeEpqR3VO?=
 =?utf-8?B?U3pGVzd1RzJIbDFrMHpWNTRDOVAzd2NZM0ppdDVGRXllR3ZQZitoNVg1UzZu?=
 =?utf-8?B?TDNqaG4yYnVIL1Y3N094N3dGdWd3aHdoVkpGTURweWxEWkg3MXhCOEFLMWxU?=
 =?utf-8?B?cE5EN2VNL1AyV3VteFJieWRsRlo0bHgwWmNXbzIwZFloQ3l5VThlNEdlc0pL?=
 =?utf-8?B?dXJOb3FVVHo0VzBsenpSdTFJbGhRRFN3UWdkUmJWdHFjckUwU2lDVVA3Y29P?=
 =?utf-8?B?K3p6MFFPdGlJNXhFU2lnQkRkTWVtNTBWK3M3MXp3SkQ0ZVltYmhTT2lLOHIr?=
 =?utf-8?B?L2VwM1B1Y3U1bkFORysxd1VVMDVDVTFFMjNLLzA5NENISWtZbFJUTGlQYTlQ?=
 =?utf-8?B?NStNRExHV3FXWi92WkJ5MVJqUzZhQkRueVU4YVorVkUvSDNvV25BR2hPcmlu?=
 =?utf-8?B?Y1VuTmlRRG5qbzd1TDd0cEtJcGdHczhyUmc3YUVEWERwRFk1N1d5VjlGWlk1?=
 =?utf-8?B?dFdQcHJmanhZcWhSZUQvbU1XWnVSR2NtQURiV0JsOFROSTFycVhKdEhIbmpO?=
 =?utf-8?B?Rllxd3BuWTBSSkxYNjUzYVhZTDEzNFlnZ2d2RmZtZU1JMXp3SGJxaWNIa2E5?=
 =?utf-8?B?bk43aDlUNU1kQXNJRTdoWGFvZFlpTFJDVzBlcHBzRTQ0UUpjczc0VVpLdGg2?=
 =?utf-8?B?SmxYVUt4dWx0WXduVENrSHVLZlJsbE50bVF1UklrR2lDRjBJVTFwY0N2L21F?=
 =?utf-8?B?c2dSMTdJUThiRDZTZHZPUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QWYyWDlYNEpjc0FWMWZqRGJFKzVWTHJBYzVQaFJZS244VTdaWU55SWVFMER1?=
 =?utf-8?B?SjU5UGdXTWhUQit2czBqbFVRQ2lOZEFObERIN1ZHeGJVd3QyNVlWazRObmg0?=
 =?utf-8?B?YXZCUGtyemtZcWRjZC9kaU9XcjRyTWtTYkY0bGFIL1k4RGFWK1hGNGp3Mlpo?=
 =?utf-8?B?UDZVcVpiMndaangxT3F6a3p6cmNNK1B6eFZVQ0ZnM0oyUmNZYk5wMmlNdmpM?=
 =?utf-8?B?elozK1V1L0tXY1l5Yk1Mam45VExqR3hHd3VyMnhaQ2QxUEo5ZXlIaTNhQTFV?=
 =?utf-8?B?ZEp0b1hicW8yMDFiYTlhN2s1djgyVmV4R3RtTzYrV0tNYTdIWDBUWFN0bk1u?=
 =?utf-8?B?RElHUXNvclYrWGtHNUFQelZrbUZHSnNzdDc3alhmVUQ0UFZIeFZBS0R0K1Jt?=
 =?utf-8?B?cFAvNG9RbzlWM1dkeXh0UUJtNmR1L0U2UDVwcklPK1JSSTZjeWdLTHVQZ3RR?=
 =?utf-8?B?VlI5STdJeXk1d0xmMlVMeWUyQW9FeHU4MFcwMFRIckEvM245N3FzbGU1eHJW?=
 =?utf-8?B?OFlraWtMVHRUM09oOVBVSmwzYmJyZWkycUQzbkhrbDVDSGxHemd6eVlhazh5?=
 =?utf-8?B?YXBnNDg1Y2Y2dHdaakZkRGVUQmRmdjBVb1VoZHdIVldYSzV6VEU4WXcvQUVN?=
 =?utf-8?B?bmxaSUMzUlJYUWRTYWdndUwyYlNvWkg4OWx3M2x5cjRCanpsVlNUNXJCa2I0?=
 =?utf-8?B?REhPZUVjbUk0MkVkdld5OVo1NkdIajhWdU5iSkJ3K3YrUG1NRGR3NXVzbThj?=
 =?utf-8?B?ZDdIZjkzU1UvSXpzVlFtam84dFBFbjdZVHMyM1RxZHBZZTlsMDc3RnFkQXFE?=
 =?utf-8?B?QmN1MFVURHZaM3BCRHRCZ1o0ZTFYaEE2WWwxbjh0VEJXVTBLY3lYRzc3eklY?=
 =?utf-8?B?TmNnZ0JHV3NkVUxTakJHaWhySzhYNk5sd3ZBcEwvQmU5endSNVpNMlVFQVM1?=
 =?utf-8?B?bC9tTVdUS0pUdGwyc0NqM0ZNWXUzY0lpOFg3c01FQVNMY0hNNUIyVnlRQWxY?=
 =?utf-8?B?d3grTEl5ZHFLSkVGYWRqbVY1OGtZSUY1YytMSTNUN1BiZHFBVkFmakpkWUxx?=
 =?utf-8?B?MHRYNld2NDZoTE9SU0F1SXJVTUZWODdpclpnT3AxTmxBSkZiNHpPSGJzRkcy?=
 =?utf-8?B?T2pldkNMQVdhQ3hWL3RSNzRObjMvZ2ZCYW1QQzgxRkN0S3M0cWJPWFNKUEJY?=
 =?utf-8?B?d3MyeThKdWUzWEhjazk1R3JheWJ1MmNDUjcvUFNPR3JIQitYSFQ3dG91dStX?=
 =?utf-8?B?TkRjLzE1aDN2c216Mk9LUWV3TDBxejVwV2NYdXJOS2lLVEQ2YmVoN0xjWWpV?=
 =?utf-8?B?dzRMV2tCanpiNnFMdWh1aUJGY0FuS0dDQ3BUVVBxcG5WeDZVdkpEUE5YUkRD?=
 =?utf-8?B?dW43bDVoS01RWlM5cjZaaU1qbnFCVmZ6akxaU3JQa3RqSFJod2tOb1hCK0Q0?=
 =?utf-8?B?SlFuZ09sd1V4NkpPTS9hWUU5UjFaZUdpUSttQzREYkJLSDBCYXJqTlhtTzRj?=
 =?utf-8?B?WVNWWmVPZjg0c0dZZUljelpMeEoraE42elNJQ0NMK1Z5aDUyeFA0RTI2WmVT?=
 =?utf-8?B?QmtoVWp2YitnbVA3bWhsYkdPbC9JYjN4RlNkUXBINVNvTXB0OUFpTTIwK2lo?=
 =?utf-8?B?bE5Ob1F0c1VUZzBFTDdMMHl1eFJ4RjNVZ21CdXdTR3FRVkNBVHBHVGpxOElP?=
 =?utf-8?B?ZjZkbTBxM2I0c3FwSnJnSThtc2dQK2VRTFhSMithTU0wTnRrZ0ZqR0xCTW01?=
 =?utf-8?B?ZzkxREdUVVR0QSt5ZDZWNFhnU3dBVEw1dXZDWVlZUnRncDlSakUvN25FVUJ1?=
 =?utf-8?B?eThZWTQxUVQ5OUhITjZCS1dDb0xYVU5WakNqLzlIaWZ4ZTJUWmFpd2FUa2Nk?=
 =?utf-8?B?MWpHdW42cEdXYzhPVTV4Tkpmb1ExKzFjVm8rbkJhTmNxUWFScjBTaWJqRHZk?=
 =?utf-8?B?aW1XUXZ1QTMrcUNQTVBRMTBSZWRVVEY1VGJIaTl6eHFJblVNWDVyQStxbnVk?=
 =?utf-8?B?L1NSYnErc0tSMjBxMFZSYXhoOVBGZlBqek8xSkhHbitvV1h3Tk1GcDNzVmxD?=
 =?utf-8?B?UzRMcjJXUm9UQjhXazN1eTBJMXFhd2VzRTBXemhucXRQSEJOODNTaXVOZTcz?=
 =?utf-8?B?cDhIWnZ3ZkFzRDBkeEZTYXZhZGVUVE1zakJVck4zRGovK3JkeEk1NFZScHBl?=
 =?utf-8?B?Ymc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9219bbd8-4b33-4a8f-d962-08dcded49cf0
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2024 09:13:12.6988 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9Im3iFPm4q1HJ8QXnQoIzaIylTrUgIZ0BKCsKDeoydqjzsVyBeNujVszeE1JsenYmgeR68RtObZddtOZZkxMlGMkm+eeko68MCy6atGIBEc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5272
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727428399; x=1758964399;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TU0P3R1JN0fOiAzQqfhNx/vFfx6INAlKmRwf9Z/kKkE=;
 b=iHa2SQYQqX43XioONE4rs5JPAbMl073W0YkEldvrC1rl80IfdlnqKkbJ
 Wwmk/ANXZHyI5pi3EX9xwiAUpT3kCZyf9vYAX5fq3Rf/NUZ+ax5MUG9Jr
 xOg/aXrXQEjcU0tYgkxZYzx5e+tfDWc/IQa53uIjxnHJmUeCqQPjiLlgs
 cNOzf1rGuF0v/Y0I7TXMJe+E27Xox+CpVk2T+Su7Xz42Z3y24Mth82V+1
 DqQH2d7NXdhDWxWyjMABIOS+kHWDUy5eMHlkaXbX7kZw0oQEdAEq9pTtR
 kdb8TTIBPIXUrUlUyBd5BuRIJzlcjrHK1cxnRoZPM4gKuDbdm0vjZAPug
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iHa2SQYQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: consistently use
 q_idx in ice_vc_cfg_qs_msg()
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYg0KPiBL
ZWxsZXINCj4gU2VudDogVHVlc2RheSwgU2VwdGVtYmVyIDEwLCAyMDI0IDE6MDggQU0NCj4gVG86
IEludGVsIFdpcmVkIExBTiA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5
ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+DQo+IENjOiBLZWxs
ZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNs
YXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC13
aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCAxLzJdIGljZTogY29uc2lzdGVudGx5IHVzZSBxX2lk
eCBpbg0KPiBpY2VfdmNfY2ZnX3FzX21zZygpDQo+IA0KPiBUaGUgaWNlX3ZjX2NmZ19xc19tc2co
KSBmdW5jdGlvbiBpcyB1c2VkIHRvIGNvbmZpZ3VyZSBWRiBxdWV1ZXMgaW4gcmVzcG9uc2UgdG8g
YQ0KPiBWSVJUQ0hOTF9PUF9DT05GSUdfVlNJX1FVRVVFUyBjb21tYW5kLg0KPiANCj4gVGhlIHZp
cnRjaG5sIGNvbW1hbmQgY29udGFpbnMgYW4gYXJyYXkgb2YgcXVldWUgcGFpciBkYXRhIGZvciBj
b25maWd1cmluZyBUeCBhbmQNCj4gUnggcXVldWVzLiBUaGlzIGRhdGEgaW5jbHVkZXMgYSBxdWV1
ZSBJRC4gV2hlbiBjb25maWd1cmluZyB0aGUgcXVldWVzLCB0aGUNCj4gZHJpdmVyIGdlbmVyYWxs
eSB1c2VzIHRoaXMgcXVldWUgSUQgdG8gZGV0ZXJtaW5lIHdoaWNoIFR4IGFuZCBSeCByaW5nIHRv
IHByb2dyYW0uDQo+IEhvd2V2ZXIsIGEgaGFuZGZ1bCBvZiBwbGFjZXMgdXNlIHRoZSBpbmRleCBp
bnRvIHRoZSBxdWV1ZSBwYWlyIGRhdGEgZnJvbSB0aGUgVkYuDQo+IFdoaWxlIG1vc3QgVkYgaW1w
bGVtZW50YXRpb25zIGFwcGVhciB0byBzZW5kIHRoaXMgZGF0YSBpbiBvcmRlciwgaXQgaXMgbm90
DQo+IG1hbmRhdGVkIGJ5IHRoZSB2aXJ0Y2hubCBhbmQgaXQgaXMgbm90IHZlcmlmaWVkIHRoYXQg
dGhlIHF1ZXVlIHBhaXIgZGF0YSBjb21lcyBpbg0KPiBvcmRlci4NCj4gDQo+IEZpeCB0aGUgZHJp
dmVyIHRvIGNvbnNpc3RlbnRseSB1c2UgdGhlIHFfaWR4IGZpZWxkIGluc3RlYWQgb2YgdGhlICdp
Jw0KPiBpdGVyYXRvciB2YWx1ZSB3aGVuIGFjY2Vzc2luZyB0aGUgcmluZ3MuIEZvciB0aGUgUngg
Y2FzZSwgaW50cm9kdWNlIGEgbG9jYWwgcmluZw0KPiB2YXJpYWJsZSB0byBrZWVwIGxpbmVzIHNo
b3J0Lg0KPiANCj4gRml4ZXM6IDdhZDE1NDQwYWNmOCAoImljZTogUmVmYWN0b3IgVklSVENITkxf
T1BfQ09ORklHX1ZTSV9RVUVVRVMNCj4gaGFuZGxpbmciKQ0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNv
YiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sLmMgfCAyMSArKysrKysrKysrLS0tLS0t
LS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X3ZpcnRjaG5sLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRj
aG5sLmMNCj4gaW5kZXggNTlmNjIzMDZiOWNiLi5iNmVjMDFmNmZhNzMgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmlydGNobmwuYw0KPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sLmMNCj4gQEAgLTE3MTUs
OCArMTcxNSw4IEBAIHN0YXRpYyBpbnQgaWNlX3ZjX2NmZ19xc19tc2coc3RydWN0IGljZV92ZiAq
dmYsIHU4DQoNCg0KVGVzdGVkLWJ5OiBSYWZhbCBSb21hbm93c2tpIDxyYWZhbC5yb21hbm93c2tp
QGludGVsLmNvbT4NCg0KDQoNCg==
