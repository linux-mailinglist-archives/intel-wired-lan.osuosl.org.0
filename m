Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F7EB4A1EF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Sep 2025 08:19:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AADF612CA;
	Tue,  9 Sep 2025 06:19:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FYz8kcVkDoZZ; Tue,  9 Sep 2025 06:19:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78F85612C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757398779;
	bh=M8uk9ykVuMu1uimzmrTMYhEzwO60he4JuwEuqLiC5yo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0krR3SbwNpMsIZS6lVsDBq2XPuEzvGwko3tivlIvPI+B63qRId3d3R3BZoaNwZhYm
	 sH1ExfZD6EkzMlm5YtTiO6y3ts5xj7CopNPMhiuWPAMNq+IUiwaIaDtBvvfSyVRZlZ
	 bMrbExUWjw6a3m0iNtK5AIYer5Pb9FAKKplKLfxpAdudTFbkV1/pjdMt8mGExWdULM
	 80mQoN825WUgq/deVw2wm8pIIR9fieGvlVFMO9jxSojJGenoOgMyZU37JIS4lmGjnE
	 DpCgx9NabWAKkgVBzVp+o18LLj4YgOKZtuj1kVd+MhcIrW+JPEuHa1dm/FxZSAt253
	 esa2nb1+5OS6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78F85612C4;
	Tue,  9 Sep 2025 06:19:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 01EA3186
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 06:19:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC3F040F6C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 06:19:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MjK3QE-4P9vA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Sep 2025 06:19:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=priyax.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ACF2240F6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACF2240F6D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ACF2240F6D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 06:19:36 +0000 (UTC)
X-CSE-ConnectionGUID: IGMJOjGRRzePozioqeyu+g==
X-CSE-MsgGUID: xkHb/SlnSGibLDlOb1I3RA==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="69927589"
X-IronPort-AV: E=Sophos;i="6.18,250,1751266800"; d="scan'208";a="69927589"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 23:19:35 -0700
X-CSE-ConnectionGUID: fIRI46mqTH2OAHLbPqIzuQ==
X-CSE-MsgGUID: d9zamuokQQaeDwkl9bjF2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,250,1751266800"; d="scan'208";a="172922389"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 23:19:36 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 23:19:35 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 23:19:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.84) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 23:19:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SLMI9028YqB1zTJ6p6jFFWd1cHZj5IZOD5ImxeHdM4PAIzM6skGIosNjFUbx4Z/pibdVELG5KKzOozfLEUHUNhs/Vq3DsP0A2ay1Z59TrC3+Hygdhrb9U0cdmhA78OQxdzNbR1v8HdwmWhRQcwOl4z1/xeWNhy3xouhvdYQWHH9SNGTPXUR+rQPCwuGUGfIAq4/FRc1W1wApzbgCJyQx6udDJMomJozF5lxMpGJ2eivPkRciuPaNwwjS8TmhoNN41Ab6exqut6+GBcRGoPRq1/ZpvoxyMF8Ipju7D0Uxo2TPQL6rCMn4qKhH1GYrZDJx6Uc87yhiMCFs5t4onk0efw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M8uk9ykVuMu1uimzmrTMYhEzwO60he4JuwEuqLiC5yo=;
 b=lAgQCg50Lka9OkWbr03uW0SMxAnAy3GTOebIYVA774iWqAdgan19NK4r+gwY1DDFQHbqIErAFVFgl+HszGt/0QOnFrjRpV/gmHqggVomjQtNw7luXN5edgbjubSylabQpGUn5QijKviuJlVNwnj/O1BM2W33yu2Mmo3jjfIq9Uj0wb+zdRF/Kwd3yUoTld8So6C+o9IxMPtpDcPnvM9OkZWMlK/mzaL4wa4nnXDC/mwOPdd3q3aSiez/CtjZkow68byTk7OjCJdjkyEhWGga0xeSWPtQXLG+/59qDhCjCAiqZ7ERP6cUfMfDPT9vO1WVgJb70XeDaVWHKtlKVjTbEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPF67C992ECC.namprd11.prod.outlook.com
 (2603:10b6:518:1::d28) by DS7PR11MB6245.namprd11.prod.outlook.com
 (2603:10b6:8:9a::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 06:19:32 +0000
Received: from PH3PPF67C992ECC.namprd11.prod.outlook.com
 ([fe80::8435:3b39:7eee:480]) by PH3PPF67C992ECC.namprd11.prod.outlook.com
 ([fe80::8435:3b39:7eee:480%8]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 06:19:32 +0000
From: "Singh, PriyaX" <priyax.singh@intel.com>
To: "intel-wired-lan-bounces@osuosl.org" <intel-wired-lan-bounces@osuosl.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kubiak, Michal" <michal.kubiak@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix Rx page leak on
 multi-buffer frames
Thread-Index: AQHcFhQvYvdldXhv1Eys5cdalbyzfrSKdFFggAABJWA=
Date: Tue, 9 Sep 2025 06:19:32 +0000
Message-ID: <PH3PPF67C992ECC61A710A3BFCF8DC93B30910FA@PH3PPF67C992ECC.namprd11.prod.outlook.com>
References: <20250825-jk-ice-fix-rx-mem-leak-v2-1-5afbb654aebb@intel.com>
 <PH0PR11MB501305E4CF6B784B41DDD50D960FA@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB501305E4CF6B784B41DDD50D960FA@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPF67C992ECC:EE_|DS7PR11MB6245:EE_
x-ms-office365-filtering-correlation-id: 831175e9-cf1f-4987-076e-08ddef68d74f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?enoyKy83bWJsSTdYQ1VXSW9nbjFGb1pqTVk4SWJabk55UHZldktvVWFNZTlz?=
 =?utf-8?B?d1NyakM5UjBQZDlydHJzT1RUb2owdDRXQ0N6VWZCc0g5TjNGWm15MnlVbWRx?=
 =?utf-8?B?SDZOUkd3dE9VdkVXTnFRMktoeGs0Z09XMWFlNDJONDJkM3NiV2ZjZytRZlVl?=
 =?utf-8?B?aGxiSXp5L3RkbkhaaVBBTlVralYxblJEYjU2Ym80U3BCcm9mMFNlc1ZJbHpj?=
 =?utf-8?B?azdEejRUYU1JbmovczVFaHUwa09Ub3VJWUxkMXRQaVYxcDkrYkloNmpZSlRS?=
 =?utf-8?B?OXkxRzNQZzErRG14T0RQbEl0V1VaM0ZwN2FjWDhsOGVOcjdwcmFZcFl5UzEv?=
 =?utf-8?B?aE9HWkp4SldVUkEzZUt0ZU1kcVNJbDhWa1U3aCtSRk9ORkVZbXhCWDVCSUdL?=
 =?utf-8?B?WDhTVmxLZDBIN1I5RUpkSDJuMWc5clh6Umtwc1RCQ290bndFZW1OWnNNa2JD?=
 =?utf-8?B?RERYc3U0OHp6SXVmOG52NnJzVWlIS2EzVG5XVm9mcWduM1hCZ2JtSUNYVENQ?=
 =?utf-8?B?VmJQUkI3SzhEekJpMk1jVUlON1ltamJ0Z1JOclNBbEQwYzNMOENrZVZ6bU5B?=
 =?utf-8?B?bzJNUkhaVytZUUovUENUM1NHdlJFOEcyMThIL1VPSVdMRkIwNWtReTZCTXpR?=
 =?utf-8?B?V2VoUTNSUEF5UnpNVmt3RGlLejBOU1lFMm5zWkhVTnFjemJVWWxhR1FDdXRB?=
 =?utf-8?B?TU0zMGp4Y3ZLWkhOdGM5N3RJSEZWZlZ5elQ1VGd2bU5HaUZDSzZ1TjlteXBQ?=
 =?utf-8?B?dnNZQkZ1VkFVd01Fd0tJOVNBRHJrc0xIU0hmcmhpd3U4c0FlSTR6bkNvSWNs?=
 =?utf-8?B?NGZGd0Fmci9nR3lWVXo2SzcrRHpmVjRPZHpoNnBIT0JMMGVkSGZ0K3h6Y2Vy?=
 =?utf-8?B?elR3dk1XSjk0VzE0SU9rWlczLzA0MG5YcVNnS0FRZE44TGlGRjlpMXZYOENI?=
 =?utf-8?B?U241WTJHRitiZDl6a29ZU0RHVmNPT3p3bHZsZjVjcjF4WFFheFN2STd2dDdk?=
 =?utf-8?B?b3VHRTN6ZHhWZ3RUWXRJN3dJTlhBR0kweENNT1RpaXRJNk1veE9oM0NQZk5v?=
 =?utf-8?B?TkRDaGxpM0xpcENKZWpJemdYTStRQWVweUN2UmlvTWV2eWMyR1FsVFlIZU9R?=
 =?utf-8?B?REowaS9oNEIvY2pxWDN2b0pMdHFUUnFFaVFiTHZHNEhSYlZacEdMV1hzN2dM?=
 =?utf-8?B?QnRUMVFVZVdWU2FNTDN2aXZFeG9jbmk2bGZZSVdBSW5HTWtsZGZyVWg2bGJh?=
 =?utf-8?B?STNUNU9rOGZCNHRicnFTVlJOZG9SZE5uU1paMXlINjVnS08zV2diVnRlSDR6?=
 =?utf-8?B?bWd4bm9QT0tFeFByQWVoL1VUcWllM3dBdXVEdVdnY0xwYzYzS3IwNVppWlJU?=
 =?utf-8?B?bGY3THFBS3R0YWZzTlVBeTcvZUt3Z2kvTVZRUm5sME5WeG1YaDdnZUM1R3Va?=
 =?utf-8?B?Z0xYTDdiODFLNlpNaGJBVnh2NmRRY2JzWGhhYUhBQzZxSUZ1dGxXdGtNYS96?=
 =?utf-8?B?dFBFWDE1OHpHZCs5dFFYL3NtNHhBZ2o3QnVKMXg3YjBzeWhIRXBUNFdUYWtS?=
 =?utf-8?B?ZVpKVFBYVzNOVDI5blQ5TUR5djE4WnlYbFRMbXl1eXpkWC9rN1QvVTA1RDFm?=
 =?utf-8?B?N2NWcHpibW05d2VYUzBRVHFQS0tOTkNESmszWk5mRjhva2NUa295NjVUeFFG?=
 =?utf-8?B?UVJKckNSUDF5RWc1M3N0T0JIdDRLWmdRU2dXMGt4Q3hrcUVGN21ONmsrdGdj?=
 =?utf-8?B?UXl1T2hDRDhtdC8vQ0hHWnU3Smd6TzFLM1J3S0hiRytLWmcrbzNwU09lcWFD?=
 =?utf-8?B?cDNJUzBtZHR2VUVRQ0cycjYzT0xSVloycURxRUp4UXFzdnBWaFdMeExVdGNj?=
 =?utf-8?B?ZFg5Y0JXL3c5LzZEYnVRZUNPMmt2bzA3RHNCdElaTXB6TitzWG8vR1BGczl0?=
 =?utf-8?Q?ZynUrn7HZxPFZs9CjfzgoEpSdgBJ6xVE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPF67C992ECC.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aUZlK1JCeXE2dHVpOHhuN3JQUEp3dmlQNDRGK3lLLy8wQ0hiUUlMelcxano4?=
 =?utf-8?B?NkpvT05rMEh4TXFmVkVUZ0pCV1g2b0xidnp5eGNsZVRHNGJSTkNQYnJEZXh2?=
 =?utf-8?B?dUpaT3MwYlVFdm94cXd0TUp0RmJQTzdtL1dENHZSQSt4N3E0VVp5QWpwbEgz?=
 =?utf-8?B?a0FmbTVMNjRFbGhDdjR4WmNZSkE4cHRiOFZQano4eDdSZnpFeXUyZ05ydnMz?=
 =?utf-8?B?TmtsNGtkN3pxTlU0b1dGbjVua1k1WXdyRTFLbW1CKzdYOUJNSFA3RXhOeStI?=
 =?utf-8?B?WXAwanA5WWZOUGtIR1FHRjZoMkVJTDJlbC9ERUN0YVRrQkZyVXpucUdYbUlS?=
 =?utf-8?B?SFRiZWZBZUhBTENvZWNlU3RiNU5OQ01HdFRyQkp1NVU1eTgxaEx0Z0RZcUhv?=
 =?utf-8?B?MGZQa0grOGRzNzNERzhSZklWdkN1TlpqNmVaN0FHelVMMFZHWEdqZTI4b3dy?=
 =?utf-8?B?Ym9PbXZjMkl0eGp5WVMrVzJHbk1EVUNpNHJlcXM5ZWpJTUtxYXRVampoRkY4?=
 =?utf-8?B?UzhxMHo4dlo5Zmg4eHYyQ1dSVHI5UXFTU0lkVy90OEt1Znpaem1Rb2g1WWoz?=
 =?utf-8?B?NlJ0WHN4VEJWaTljcUZlMEYxZmJ5bzZnNUVMZEt5c2lEVWRjZ0dOcUs1M2Z0?=
 =?utf-8?B?dmhWUXl1OHNuZG9RdTUwL0ZYNFZiVTVKYzZ3ZFZLZGRPR25RUTNHODNnSW5S?=
 =?utf-8?B?NzdqUHppeS80dkI2RDNLM2VyaHFqRHdDV2M0NXZyT05GSFVWZ2JENk1IMkNG?=
 =?utf-8?B?dkVpaXliMGdCaVBzbkpvcGlZU2k0T0FIOXZpNmZMSHZIZlpSeUJrWS9za3dz?=
 =?utf-8?B?aFQzMWhoVlhTb0ZiV1lnbnloSDNCMHptd0NIRktBWmt6WDRpMTU3bHdIdFcr?=
 =?utf-8?B?WS8rT1BBT3F2NTJ5aGFKa295ZlRsOWNzUGZvRjZGM3c3bW4zeHkrNHF5TnN0?=
 =?utf-8?B?Z0pzUzh1L3MxMXJJQ1EreEhWUVZZZnIzQ1FzVENRbHBqYXF1YzNhbkpZcmxM?=
 =?utf-8?B?elJJaVRraGVqZ3BYS0twenhGYTFFSGJHSk5KdWc0SDJYTEhVL3YyWU1sWGc4?=
 =?utf-8?B?clZkRGYyTVFOazBrYjRpakZTT2l5KzM0Zk1tTjhXRHJyMTdBZzJ2UkNsYTZO?=
 =?utf-8?B?OGJ5eGFVaUNrOTBMOWJZYzJ5dDFoR00zUlA0Zk1ZL3JwTnVaTWJKeEpSL3BC?=
 =?utf-8?B?anpJQzVob0pUTWlSU2hNYzdtOVpUYTZsbHlwcUs0bElWdk1rS0lxaTVhUm9G?=
 =?utf-8?B?UEV2bzhWM3prV3AzU21JeS8wUUo5d0lMOTA0bUdOWUE5MVB0dE1XdkxoVWdy?=
 =?utf-8?B?OUVZczlybjdLWVBSTGtNYUFMNXZVWTNjWERZU1NoekdnczQwN3NrNXExc0ZU?=
 =?utf-8?B?dzdBb0JNczdCdUovMjFXdVQvL2tTSVIvQkd1M1d6dnlFU05NSWRYTkNJMjUx?=
 =?utf-8?B?WDlMZTlwSDhSTHpCdDRHVGhBaEk5YnRzbVpvcmpJL2JFOWxrVFJmeHV5ak1G?=
 =?utf-8?B?UHk5cSt2TVp4L0s2bXhudXlXUDlVci9rbkxmQ1g0U3FJakdvdmRSUElpWmtX?=
 =?utf-8?B?ZEkzaHNPeHlySm5Dbm5UZGpQT1plSVovNkJ4cGtxQmZOY0J4MzBGZGZBRWVO?=
 =?utf-8?B?QVlIS2dBZ0tFbnc2akJxMFUrZTM3bWhCdUZLSUhsMm9wUVkwd3R6OStaTlFv?=
 =?utf-8?B?WllONndFRDg5aFNZalFpYzJ0TVA1Q29oOUxMQ3h0MjY0WjJjNzBONjFTYm0w?=
 =?utf-8?B?REFpQzAvRUZnZmV1M2tJdWpHZ0FyRDR4MmtMUnNVSDAzVzltM0Q3NHNuWlBR?=
 =?utf-8?B?WFhxYkR5UE9HOE1lOFQ1TW1GbFNLKzExeXhrenkwTFpEVlk5em91OS9MR3g0?=
 =?utf-8?B?ak9DZUIweGNHVHE2Z0dWUUpYaU5RSW1pUmYwZHBaSnJ6eDNjbDhxemFhZGU0?=
 =?utf-8?B?ejBnZ21KVlhYL3ZGbDF1SHhRL3g3aHlUbndXcnExajRwVGp2VDlhUkY2QkhH?=
 =?utf-8?B?V0gyUjRMWnIxdndDQnNJSDZGVlY2VU1VcnZIL2NWV3dOOXhCNTJKaCtnQ09Q?=
 =?utf-8?B?c2ZYTE0ySWJ5UHg3U3JTK2h3TnZ1K2FFM1hxUXdkQXNkMFdFZnlHSTNpK2lM?=
 =?utf-8?Q?EmS0sPM9Et6CX6J3JLBBsAUsY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPF67C992ECC.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 831175e9-cf1f-4987-076e-08ddef68d74f
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2025 06:19:32.3975 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B7EzZwo/NGBB6sNxLoYR/hHLHJvCcUZ0R1x4XEeYET9eW20ZcHe8+LX4icFOY701Fc/wHDWcD6YraFhFYrEEmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6245
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757398776; x=1788934776;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M8uk9ykVuMu1uimzmrTMYhEzwO60he4JuwEuqLiC5yo=;
 b=LhiLTgiUTi9v2ZTxEBmMvPEopC1v87HXrrw2fWNnyLdAxXLmFxsJXuln
 XU/2Np+oENR0+MVUUo9t2A6CDjeNa8ZvW4jnYmVxqRf3IPoQSrrzQwEgr
 RR7z28ZWwKAd8AUNMNrvhhsm9e0Pe+vVCdS6bMACqQ48yiHIN10EpVoiO
 xfWhapm+golewwH0r/m+zC/iC+1O70H1dFmVXzysoEh9QqT/L4OZSv5cl
 U4XEJ82EQDE+snh5Pb099eNscyYKSe/59lDAzKbOuKLcrl9qbUG2LOib1
 1cc6KHEbuEDU2fj/lrZL8dR5dqFQfDfY3MB8C0xPy7L4yNiqtoL2r200c
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LhiLTgiU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix Rx page leak on
 multi-buffer frames
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "christoph.petrausch@deepl.com" <christoph.petrausch@deepl.com>,
 "hawk@kernel.org" <hawk@kernel.org>,
 Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ID4gVGhlIGljZV9wdXRfcnhfbWJ1ZigpIGZ1bmN0aW9uIGhhbmRsZXMgY2FsbGluZyBpY2VfcHV0
X3J4X2J1ZigpIGZvciBlYWNoDQo+IGJ1ZmZlciBpbiB0aGUgY3VycmVudCBmcmFtZS4gVGhpcyBm
dW5jdGlvbiB3YXMgaW50cm9kdWNlZCBhcyBwYXJ0IG9mIGhhbmRsaW5nDQo+IG11bHRpLWJ1ZmZl
ciBYRFAgc3VwcG9ydCBpbiB0aGUgaWNlIGRyaXZlci4NCj4gDQo+IEl0IHdvcmtzIGJ5IGl0ZXJh
dGluZyBvdmVyIHRoZSBidWZmZXJzIGZyb20gZmlyc3RfZGVzYyB1cCB0byAxIHBsdXMgdGhlIHRv
dGFsDQo+IG51bWJlciBvZiBmcmFnbWVudHMgaW4gdGhlIGZyYW1lLCBjYWNoZWQgZnJvbSBiZWZv
cmUgdGhlIFhEUCBwcm9ncmFtIHdhcw0KPiBleGVjdXRlZC4NCj4gDQo+IElmIHRoZSBoYXJkd2Fy
ZSBwb3N0cyBhIGRlc2NyaXB0b3Igd2l0aCBhIHNpemUgb2YgMCwgdGhlIGxvZ2ljIHVzZWQgaW4N
Cj4gaWNlX3B1dF9yeF9tYnVmKCkgYnJlYWtzLiBTdWNoIGRlc2NyaXB0b3JzIGdldCBza2lwcGVk
IGFuZCBkb24ndCBnZXQgYWRkZWQNCj4gYXMgZnJhZ21lbnRzIGluIGljZV9hZGRfeGRwX2ZyYWcu
IFNpbmNlIHRoZSBidWZmZXIgaXNuJ3QgY291bnRlZCBhcyBhDQo+IGZyYWdtZW50LCB3ZSBkbyBu
b3QgaXRlcmF0ZSBvdmVyIGl0IGluIGljZV9wdXRfcnhfbWJ1ZigpLCBhbmQgdGh1cyB3ZSBkb24n
dA0KPiBjYWxsIGljZV9wdXRfcnhfYnVmKCkuDQo+IA0KPiBCZWNhdXNlIHdlIGRvbid0IGNhbGwg
aWNlX3B1dF9yeF9idWYoKSwgd2UgZG9uJ3QgYXR0ZW1wdCB0byByZS11c2UgdGhlIHBhZ2UNCj4g
b3IgZnJlZSBpdC4gVGhpcyBsZWF2ZXMgYSBzdGFsZSBwYWdlIGluIHRoZSByaW5nLCBhcyB3ZSBk
b24ndCBpbmNyZW1lbnQNCj4gbmV4dF90b19hbGxvYy4NCj4gDQo+IFRoZSBpY2VfcmV1c2Vfcnhf
cGFnZSgpIGFzc3VtZXMgdGhhdCB0aGUgbmV4dF90b19hbGxvYyBoYXMgYmVlbg0KPiBpbmNyZW1l
bnRlZCBwcm9wZXJseSwgYW5kIHRoYXQgaXQgYWx3YXlzIHBvaW50cyB0byBhIGJ1ZmZlciB3aXRo
IGEgTlVMTCBwYWdlLg0KPiBTaW5jZSB0aGlzIGZ1bmN0aW9uIGRvZXNuJ3QgY2hlY2ssIGl0IHdp
bGwgaGFwcGlseSByZWN5Y2xlIGEgcGFnZSBvdmVyIHRoZSB0b3Agb2YNCj4gdGhlIG5leHRfdG9f
YWxsb2MgYnVmZmVyLCBsb3NpbmcgdHJhY2sgb2YgdGhlIG9sZCBwYWdlLg0KPiANCj4gTm90ZSB0
aGF0IHRoaXMgbGVhayBvbmx5IG9jY3VycyBmb3IgbXVsdGktYnVmZmVyIGZyYW1lcy4gVGhlDQo+
IGljZV9wdXRfcnhfbWJ1ZigpIGZ1bmN0aW9uIGFsd2F5cyBoYW5kbGVzIGF0IGxlYXN0IG9uZSBi
dWZmZXIsIHNvIGEgc2luZ2xlLQ0KPiBidWZmZXIgZnJhbWUgd2lsbCBhbHdheXMgZ2V0IGhhbmRs
ZWQgY29ycmVjdGx5LiBJdCBpcyBub3QgY2xlYXIgcHJlY2lzZWx5IHdoeSB0aGUNCj4gaGFyZHdh
cmUgaGFuZHMgdXMgZGVzY3JpcHRvcnMgd2l0aCBhIHNpemUgb2YgMCBzb21ldGltZXMsIGJ1dCBp
dCBoYXBwZW5zDQo+IHNvbWV3aGF0IHJlZ3VsYXJseSB3aXRoICJqdW1ibyBmcmFtZXMiIHVzZWQg
YnkgOUsgTVRVLg0KPiANCj4gVG8gZml4IGljZV9wdXRfcnhfbWJ1ZigpLCB3ZSBuZWVkIHRvIG1h
a2Ugc3VyZSB0byBjYWxsIGljZV9wdXRfcnhfYnVmKCkgb24gYWxsDQo+IGJ1ZmZlcnMgYmV0d2Vl
biBmaXJzdF9kZXNjIGFuZCBuZXh0X3RvX2NsZWFuLiBCb3Jyb3cgdGhlIGxvZ2ljIG9mIGEgc2lt
aWxhcg0KPiBmdW5jdGlvbiBpbiBpNDBlIHVzZWQgZm9yIHRoaXMgc2FtZSBwdXJwb3NlLiBVc2Ug
dGhlIHNhbWUgbG9naWMgYWxzbyBpbg0KPiBpY2VfZ2V0X3BnY250cygpLg0KPiANCj4gSW5zdGVh
ZCBvZiBpdGVyYXRpbmcgb3ZlciBqdXN0IHRoZSBudW1iZXIgb2YgZnJhZ21lbnRzLCB1c2UgYSBs
b29wIHdoaWNoDQo+IGl0ZXJhdGVzIHVudGlsIHRoZSBjdXJyZW50IGluZGV4IHJlYWNoZXMgdG8g
dGhlIG5leHRfdG9fY2xlYW4gZWxlbWVudCBqdXN0IHBhc3QNCj4gdGhlIGN1cnJlbnQgZnJhbWUu
IFVubGlrZSBpNDBlLCB0aGUgaWNlX3B1dF9yeF9tYnVmKCkgZnVuY3Rpb24gZG9lcyBjYWxsDQo+
IGljZV9wdXRfcnhfYnVmKCkgb24gdGhlIGxhc3QgYnVmZmVyIG9mIHRoZSBmcmFtZSBpbmRpY2F0
aW5nIHRoZSBlbmQgb2YgcGFja2V0Lg0KPiANCj4gRm9yIG5vbi1saW5lYXIgKG11bHRpLWJ1ZmZl
cikgZnJhbWVzLCB3ZSBuZWVkIHRvIHRha2UgY2FyZSB3aGVuIGFkanVzdGluZyB0aGUNCj4gcGFn
ZWNudF9iaWFzLiBBbiBYRFAgcHJvZ3JhbSBtaWdodCByZWxlYXNlIGZyYWdtZW50cyBmcm9tIHRo
ZSB0YWlsIG9mIHRoZQ0KPiBmcmFtZSwgaW4gd2hpY2ggY2FzZSB0aGF0IGZyYWdtZW50IHBhZ2Ug
aXMgYWxyZWFkeSByZWxlYXNlZC4gT25seSB1cGRhdGUgdGhlDQo+IHBhZ2VjbnRfYmlhcyBmb3Ig
dGhlIGZpcnN0IGRlc2NyaXB0b3IgYW5kIGZyYWdtZW50cyBzdGlsbCByZW1haW5pbmcgcG9zdC1Y
RFANCj4gcHJvZ3JhbS4gVGFrZSBjYXJlIHRvIG9ubHkgYWNjZXNzIHRoZSBzaGFyZWQgaW5mbyBm
b3IgZnJhZ21lbnRlZCBidWZmZXJzLCBhcw0KPiB0aGlzIGF2b2lkcyBhIHNpZ25pZmljYW50IGNh
Y2hlIG1pc3MuDQo+IA0KPiBUaGUgeGRwX3htaXQgdmFsdWUgb25seSBuZWVkcyB0byBiZSB1cGRh
dGVkIGlmIGFuIFhEUCBwcm9ncmFtIGlzIHJ1biwgYW5kDQo+IG9ubHkgb25jZSBwZXIgcGFja2V0
LiBEcm9wIHRoZSB4ZHBfeG1pdCBwb2ludGVyIGFyZ3VtZW50IGZyb20NCj4gaWNlX3B1dF9yeF9t
YnVmKCkuIEluc3RlYWQsIHNldCB4ZHBfeG1pdCBpbiB0aGUgaWNlX2NsZWFuX3J4X2lycSgpIGZ1
bmN0aW9uDQo+IGRpcmVjdGx5LiBUaGlzIGF2b2lkcyBuZWVkaW5nIHRvIHBhc3MgdGhlIGFyZ3Vt
ZW50IGFuZCBhdm9pZHMgYW4gZXh0cmEgYml0LQ0KPiB3aXNlIE9SIGZvciBlYWNoIGJ1ZmZlciBp
biB0aGUgZnJhbWUuDQo+IA0KPiBNb3ZlIHRoZSBpbmNyZW1lbnQgb2YgdGhlIG50YyBsb2NhbCB2
YXJpYWJsZSB0byBlbnN1cmUgaXRzIHVwZGF0ZWQgKmJlZm9yZSoNCj4gYWxsIGNhbGxzIHRvIGlj
ZV9nZXRfcGdjbnRzKCkgb3IgaWNlX3B1dF9yeF9tYnVmKCksIGFzIHRoZSBsb29wIGxvZ2ljIHJl
cXVpcmVzDQo+IHRoZSBpbmRleCBvZiB0aGUgZWxlbWVudCBqdXN0IGFmdGVyIHRoZSBjdXJyZW50
IGZyYW1lLg0KPiANCj4gTm93IHRoYXQgd2UgdXNlIGFuIGluZGV4IHBvaW50ZXIgaW4gdGhlIHJp
bmcgdG8gaWRlbnRpZnkgdGhlIHBhY2tldCwgd2Ugbm8NCj4gbG9uZ2VyIG5lZWQgdG8gdHJhY2sg
b3IgY2FjaGUgdGhlIG51bWJlciBvZiBmcmFnbWVudHMgaW4gdGhlIHJ4X3JpbmcuDQo+IA0KPiBD
YzogQ2hyaXN0b3BoIFBldHJhdXNjaCA8Y2hyaXN0b3BoLnBldHJhdXNjaEBkZWVwbC5jb20+DQo+
IENjOiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIDxoYXdrQGtlcm5lbC5vcmc+DQo+IFJlcG9ydGVk
LWJ5OiBKYXJvc2xhdiBQdWxjaGFydCA8amFyb3NsYXYucHVsY2hhcnRAZ29vZGRhdGEuY29tPg0K
PiBDbG9zZXM6DQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi9DQUs4ZkZaNGhZNkdV
Sk5FTnozd1k5amFZTFpYR2Zwcjdkblp4eg0KPiBHTVlvRTQ0Y2FSYmd3QG1haWwuZ21haWwuY29t
Lw0KPiBGaXhlczogNzQzYmJkOTNjZjI5ICgiaWNlOiBwdXQgUnggYnVmZmVycyBhZnRlciBiZWlu
ZyBkb25lIHdpdGggY3VycmVudA0KPiBmcmFtZSIpDQo+IFRlc3RlZC1ieTogTWljaGFsIEt1Ymlh
ayA8bWljaGFsLmt1Ymlha0BpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEphY29iIEtlbGxl
ciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gSSd2ZSB0ZXN0ZWQgdGhpcyBp
biBhIHNldHVwIHdpdGggTVRVIDkwMDAsIHVzaW5nIGEgY29tYmluYXRpb24gb2YgaXBlcmYzIGFu
ZA0KPiB3cmsgZ2VuZXJhdGVkIHRyYWZmaWMuDQo+IA0KPiBJIHRlc3RlZCB0aGlzIGluIGEgY291
cGxlIG9mIHdheXMuIEZpcnN0LCBJIGNoZWNrIG1lbW9yeSBhbGxvY2F0aW9ucyB1c2luZw0KPiAv
cHJvYy9hbGxvY2luZm86DQo+IA0KPiAgIGF3ayAnL2ljZV9hbGxvY19tYXBwZWRfcGFnZS8geyBw
cmludGYoIiVzICVzXG4iLCAkMSwgJDIpIH0nIC9wcm9jL2FsbG9jaW5mbyB8DQo+IG51bWZtdCAt
LXRvPWllYw0KPiANCj4gU2Vjb25kLCBJIHBvcnRlZCBzb21lIHN0YXRzIGZyb20gaTQwZSB3cml0
dGVuIGJ5IEpvZSBEYW1hdG8gdG8gdHJhY2sgdGhlDQo+IHBhZ2UgYWxsb2NhdGlvbiBhbmQgYnVz
eSBjb3VudHMuIEkgY29uc2lzdGVudGx5IHNhdyB0aGF0IHRoZSBhbGxvY2F0ZSBzdGF0DQo+IGlu
Y3JlYXNlZCB3aXRob3V0IHRoZSBidXN5IG9yIHdhaXZlIHN0YXRzIGluY3JlYXNpbmcuIEkgYWxz
byBhZGRlZCBhIHN0YXQgdG8NCj4gdHJhY2sgZGlyZWN0bHkgd2hlbiB3ZSBvdmVyd3JvdGUgYSBw
YWdlIHBvaW50ZXIgdGhhdCB3YXMgbm9uLU5VTEwgaW4NCj4gaWNlX3JldXNlX3J4X3BhZ2UoKSwg
YW5kIHNhdyBpdCBpbmNyZW1lbnQgY29uc2lzdGVudGx5Lg0KPiANCj4gV2l0aCB0aGlzIGZpeCwg
YWxsIG9mIHRoZXNlIGluZGljYXRvcnMgYXJlIGZpeGVkLiBJJ3ZlIHRlc3RlZCBib3RoIDE1MDAg
Ynl0ZSBhbmQNCj4gOTAwMCBieXRlIE1UVSBhbmQgbm8gbG9uZ2VyIHNlZSB0aGUgbGVhay4gV2l0
aCB0aGUgY291bnRlcnMgSSB3YXMgYWJsZSB0bw0KPiBpbW1lZGlhdGVseSBzZWUgYSBsZWFrIHdp
dGhpbiBhIGZldyBtaW51dGVzIG9mIGlwZXJmMywgc28gSSBhbSBjb25maWRlbnQgdGhhdA0KPiBJ
J3ZlIHJlc29sdmVkIHRoZSBsZWFrIHdpdGggdGhpcyBmaXguDQo+IA0KPiBJJ3ZlIG5vdyBhbHNv
IHRlc3RlZCB3aXRoIHhkcC1iZW5jaCBhbmQgY29uZmlybSB0aGF0IFhEUF9UWCBhbmQgWERQX1JF
RElSDQo+IHdvcmsgcHJvcGVybHkgd2l0aCB0aGUgZml4IGZvciB1cGRhdGluZyB4ZHBfeG1pdC4N
Cj4gDQo+IFRoaXMgdmVyc2lvbiAodjIpIGF2b2lkcyB0aGUgY2FjaGUgbWlzcyByZWdyZXNzaW9u
IHJlcG9ydGVkIGJ5IEplc3Blci4gSQ0KPiByZWZhY3RvcmVkIGEgYml0IHRvIG9ubHkgY2hlY2sg
dGhlIHNoYXJlZCBpbmZvIGlmIHRoZSBYRFAgYnVmZmVyIGlzIGZyYWdtZW50ZWQuIEkNCj4gY29u
c2lkZXJlZCBhZGRpbmcgYSBoZWxwZXIgZnVuY3Rpb24gdG8gZG8gdGhpcyB0byB0aGUgWERQIGhl
YWRlciBmaWxlLg0KPiBIb3dldmVyLCBJIHNjYW5uZWQgc2V2ZXJhbCBkcml2ZXJzIGFuZCBub3Rp
Y2VkIHRoYXQgb25seSBpY2UgYW5kIGk0MGUgYWNjZXNzDQo+IHRoZSBucl9mcmFncyBpbiB0aGlz
IHdheS4gVGhlIGljZSB2YXJpYXRpb24gSSBiZWxpZXZlIHdpbGwgYmUgcmVtb3ZlZCB3aXRoIHRo
ZQ0KPiBjb252ZXJzaW9uIHRvIHBhZ2UgcG9vbCwgc28gSSBkb24ndCB0aGluayB0aGUgYWRkaXRp
b24gb2YgYSBoZWxwZXIgaXMNCj4gd2FycmFudGVkLg0KPiANCj4gWERQX0RST1AgcGVyZm9ybWFu
Y2UgaGFzIGJlZW4gdGVzdGVkIGZvciB0aGlzIHZlcnNpb24sIHRoYW5rcyB0byB3b3JrDQo+IGZy
b20gTWljaGFsIEt1Ymlhay4gVGhlIHJlc3VsdHMgYXJlIHF1aXRlIHByb21pc2luZywgd2l0aCAz
IHZlcnNpb25zIGJlaW5nDQo+IGNvbXBhcmVkOg0KPiANCj4gKiBiYXNlbGluZSBuZXQtbmV4dCB0
cmVlDQo+ICogdjEgYXBwbGllZA0KPiAqIHYyIGFwcGxpZWQNCj4gDQo+IE1pY2hhbCBzYWlkOg0K
PiANCj4gICBJIHJ1biB0aGUgWERQX0RST1AgcGVyZm9ybWFuY2UgY29tcGFyaXNvbiB0ZXN0cyBv
biBteSBzZXR1cCBpbiB0aGUgd2F5IEkNCj4gICB1c3VhbGx5IGRvLiBJIGRpZG4ndCBoYXZlIHRo
ZSBwa3RnZW4gY29uZmlndXJlZCBvbiBteSBsaW5rIHBhcnRuZXIsIGJ1dCBJDQo+ICAgdXNlZCA2
IGluc3RhbmNlcyBvZiB0aGUgeGRwc29jayBydW5uaW5nIGluIFR4LW9ubHkgbW9kZSB0byBnZW5l
cmF0ZQ0KPiAgIGhpZ2gtYmFuZHdpdGggdHJhZmZpYy4gQWxzbywgSSB0cmllZCB0byByZXBsaWNh
dGUgdGhlIGNvbmRpdGlvbnMgYWNjb3JkaW5nDQo+ICAgdG8gSmVzcGVyJ3MgZGVzY3JpcHRpb24s
IG1ha2luZyBzdXJlIHRoYXQgYWxsIHRoZSB0cmFmZmljIGlzIGRpcmVjdGVkIHRvIGENCj4gICBz
aW5nbGUgUnggcXVldWUgYW5kIG9uZSBDUFUgaXMgMTAwJSBsb2FkZWQuDQo+IA0KPiBUaGUgcGVy
Zm9ybWFuY2UgaGl0IGZyb20gdjEgaXMgcmVwbGljYXRlZCwgYW5kIHNob3duIHRvIGJlIGdvbmUg
aW4gdjIsIHdpdGgNCj4gb3VyIHJlc3VsdHMgc2hvd2luZyBldmVuIGFuIGluY3JlYXNlIGNvbXBh
cmVkIHRvIGJhc2VsaW5lIGluc3RlYWQgb2YgYSBkcm9wLg0KPiBJJ3ZlIGluY2x1ZGVkIHRoZSBy
ZWxhdGl2ZSBwYWNrZXQgcGVyIHNlY29uZCBkZWx0YXMgY29tcGFyZWQgYWdhaW5zdCBhDQo+IGJh
c2VsaW5lIHRlc3Qgd2l0aCBuZWl0aGVyIHYxIG9yIHYyLg0KPiANCj4gYmFzZWxpbmUgdG8gdjEs
IG5vLXRvdWNoOg0KPiAgIC04LDM4Nyw2NzcgcGFja2V0cyBwZXIgc2Vjb25kICgxNyUpIGRlY3Jl
YXNlLg0KPiANCj4gYmFzZWxpbmUgdG8gdjIsIG5vLXRvdWNoOg0KPiAgICs0LDA1NywwMDAgcGFj
a2V0cyBwZXIgc2Vjb25kICg4JSkgaW5jcmVhc2UhDQo+IA0KPiBiYXNlbGluZSB0byB2MSwgcmVh
ZCBkYXRhOg0KPiAgIC00MTEsNzA5IHBhY2tldHMgcGVyIHNlY29uZCAoMSUpIGRlY3JlYXNlLg0K
PiANCj4gYmFzZWxpbmUgdG8gdjIsIHJlYWQgZGF0YToNCj4gICArNCwzMzEsODU3IHBhY2tldHMg
cGVyIHNlY29uZCAoMTElKSBpbmNyZWFzZSENCj4gLS0tDQo+IENoYW5nZXMgaW4gdjI6DQo+IC0g
T25seSBhY2Nlc3Mgc2hhcmVkIGluZm8gZm9yIGZyYWdtZW50ZWQgZnJhbWVzDQo+IC0gTGluayB0
byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjUwODE1MjA0MjA1LjE0MDc3
NjgtNC0NCj4gYW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20vDQo+IC0tLQ0KPiAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmggfCAgMSAtDQo+IGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5jIHwgODAgKysrKysrKysrKysrKy0tLS0tLS0tLS0t
LS0tLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspLCA0NyBkZWxldGlv
bnMoLSkNCj4gDQoNClRlc3RlZC1ieTogUHJpeWEgU2luZ2ggPHByaXlheC5zaW5naEBpbnRlbC5j
b20+DQoNCg==
