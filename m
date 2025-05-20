Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB87ABE6BA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 May 2025 00:04:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B49B681F67;
	Tue, 20 May 2025 22:04:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lACKPB4a3FAP; Tue, 20 May 2025 22:04:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5D4281F69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747778675;
	bh=upDZZmBvCntfbKY3q+SZUOCpJRypch59KCr2Kqv2K20=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JTQIIpC/AC7psi3Uy14MdEIlhrc57p/ruURSLuVqCznKE7+QsZ/ecrx4h9NXmbY5Q
	 /vSLs1QN9/kmDDRQnXGJOWIr44ljLV+ef9goueHFtJUO7JWY/TX+o2OS/n5+gT5MO4
	 1ank7UHKr+mfTKaZmsyOvJ6IlWutG9m7KAtq9ypfpDQgvndceQV2KN/zmr5tNZmvom
	 DpEjVw3qbo+Mbt6MNolE0UT94+1nU2D4te/Jl7wr7Z1Qpi2X86liNgmm3S64ZoyoGl
	 FnRbAmP7wIOD3rZ5f5I0VSGciK+94AT4qB8nOxtL69AlYwLIvht7/tGHwfzMH+mwTl
	 Q2IeSWSFss13Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5D4281F69;
	Tue, 20 May 2025 22:04:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3393B11B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 22:04:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 25332610CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 22:04:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DCHJxl9-o1br for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 22:04:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4952F610D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4952F610D4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4952F610D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 22:04:32 +0000 (UTC)
X-CSE-ConnectionGUID: UJVLoBMsTSms/z46/F4cew==
X-CSE-MsgGUID: UOV2Ai17SBuOli4goWe9zA==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="49889166"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="49889166"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 15:04:33 -0700
X-CSE-ConnectionGUID: /Pg4MPjBRL6YwRRIr+kELQ==
X-CSE-MsgGUID: c1JCtcgzSc2wMG2nvmlrvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="143817120"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 15:04:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 15:04:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 15:04:31 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 15:04:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jgS+xnxoyqkUbeI02JH8ugmU8lX4d+2EhQ3rCNE2NGe4tKiKxs2ejNkh3wYPQ/PClz6n3nU78rvwqJYtGZfiEh8rXQoh8RsM9rAJGJSoPAk8a7CCtghP7STtiTxBqE/ogKU0UuFhfETULd7yXQ89H8FIPVWnNFFdQz0jaargqXtf5vElMlmX7DOH5AfX2JZ/XqaejCv8wpw2aRuet3ZImfz17xy5QseY+lnpnOyXVD1/QIZvCrqsdO16n/v1iuigECvh3FtlwcbPk4T3Uu8kAst2Cy84mbk27wA5ICBsIvPjKGSLU/L0gdqPeDDK0eYKCxBWRu8+xEV/msRjwi7OGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=upDZZmBvCntfbKY3q+SZUOCpJRypch59KCr2Kqv2K20=;
 b=IiqVyoxaj8AcM4gvQANAo64PQHXoGk+iI8+gvg3NyCXxOStr6jcbAGrOBFQXoWOHSAYi6Txy/0D+5rKQgjTtd7a/RBJOLYgTciTJOluLMH0lKtAIz/5eQFlGZb1/yeXjayqQ6lSS9M6HHnuwNURNwgbofZBrlBUUfNgjB35xdhrLEAA9zKPGYct9UhxBTWXYY0C6UpmbVJCu5GUtQTVljxpDPAmddOyZfYOWix3v/JHdOChCb74ZZwgANJ44rbpdGvoYzPm3x3WKWWFuF9w3UF3Mo/Imarz6SMRHJ8pzQdPkxNkl5BqSCBztWvNmHUZzms7m65HPv01/FxMrfHf7eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SA2PR11MB5017.namprd11.prod.outlook.com (2603:10b6:806:11e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Tue, 20 May
 2025 22:03:48 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%6]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 22:03:48 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Brian Vazquez <brianvv@google.com>, Brian Vazquez
 <brianvv.kernel@gmail.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: David Decotigny <decot@google.com>, "Singhai, Anjali"
 <anjali.singhai@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "Chittim, Madhu"
 <madhu.chittim@intel.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>, "Luigi
 Rizzo" <lrizzo@google.com>
Thread-Topic: [Intel-wired-lan] [iwl-net PATCH v3] idpf: fix a race in txq
 wakeup
Thread-Index: AQHburt7qtYTvCKiaE+4J+sfHU0T4LPcMDXA
Date: Tue, 20 May 2025 22:03:48 +0000
Message-ID: <SJ1PR11MB6297DA25A854B8E22CA5B04C9B9FA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250501170617.1121247-1-brianvv@google.com>
In-Reply-To: <20250501170617.1121247-1-brianvv@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SA2PR11MB5017:EE_
x-ms-office365-filtering-correlation-id: 7d141f56-0790-43ab-5c4f-08dd97ea3278
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700018|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?WThYK1JaMUYzb29kS0FoUlpVeWo0dkxMN1cwUkRVa1NGMGJlejBwQVFPVi9v?=
 =?utf-8?B?dlBLZ1FNYjNDNUt2MnRSclFySkQ2eHVZb3pMUVJVMnN4bG12ZWJ0eWh4OU82?=
 =?utf-8?B?aWhLdjlERUlYK01tZnRBaGk1dzBwRE5CQlNySHh4WmUxYTBGQ3QzUzRkMWd2?=
 =?utf-8?B?UW9xbE1oa0F5MnBjYUZqK0VrUkN2MU85UkNIWEFMaFhLYTJjMEdEYWRBaVdH?=
 =?utf-8?B?c3FueWlmcGRONnpSb0JFdmlqM0xkY3pQUzVIWk5mSzk0aitSZHhuN3hkUjQ1?=
 =?utf-8?B?SE5SUFBKK2lYdXlOUWRUNEJPbHVSOCtBS1VTUFp1eU5sTjhrSHpkZFNxRmhY?=
 =?utf-8?B?TndNRllDYlNQMVRidUNGcHdXZE1NaVJGOE15R0x4RzB1QURkbEtFVTB0K0ZU?=
 =?utf-8?B?L1k0ZE9GTHUwa2krMFhvUDd0YzBHeEZjOHFOeCtrNHBBSVhqTlVuWGJiQ0du?=
 =?utf-8?B?NlU2UUh4ZEplQmlyMHhJNWxvR0tZeGR2TTBHWGtyWFp0dnBudmJpUEErQ0xF?=
 =?utf-8?B?RkN3RnBxemdXNWd2UDlsa0pHNzMvalN1SE54ZUFFWE1LcG9sSUZDaEN2OEpD?=
 =?utf-8?B?N1N1OWJ0OTZiRnk5V2VJN3B3S1pvNUpOc2Z6Q1JnbHd2Tk5qTVhLT25iSStV?=
 =?utf-8?B?MGVFTEtaY29iSW8vUHdmNTE1YmI4ZGhXZDZlUFMvbkl0K002SzVweFI1a2Nq?=
 =?utf-8?B?clZSU3Frdmp3S09XaDlNU0tyeTAzRWhrR3ZYamtqWXlEeTVaUUdBOFNjc3pp?=
 =?utf-8?B?M21wcmVPS3FyOXRXa1NMcjRiODl2MlBJeVA0WmpXUXhxd0FqTTZSTWtxN0Qv?=
 =?utf-8?B?cWdxWC9ab290d3JkOGM4Vm5GVU00SGhJQkEzWkdqaDgybWxvU3BwUXpMdnBh?=
 =?utf-8?B?Y3ZOTVI2bTI5SzJGeHlrWnd1cWNBNXBSK2w3UmJ6Y1BVaFBaV1JFeFFhVDVE?=
 =?utf-8?B?VTdhUkpCdkw3T0tNbnEzSWJNWmRsZmh6K21BU3BXWjcrNXFtN3gyOGFtQ1hF?=
 =?utf-8?B?dWU3dzFHZCtHdFVFL3ZjOUJqOU9KL29tTHZzMGwzdDVVNE9PK0tyWXNKSUZm?=
 =?utf-8?B?MFFVektKZy9LdlJWMk5QbXYxWTZ1QXVIVUxPOVZrZHlqOVZ0MkJGWlUyRTF2?=
 =?utf-8?B?SUdtVTFwWEVYSnZhakRWZGFwNmpGbUJqeWlTQzZrWDZScjJwYVNHR1hsUnYw?=
 =?utf-8?B?azVxYzR5NWtlSE5pRUhZT2RQUk9IVmJrcW9TRTZ5RXlrNEt3MW00MmlmRld6?=
 =?utf-8?B?d0VFbE1PREtrTVYyZ3JMVllZbEdhNzBYM3lFV09zR0FNMU96Wm5Qa21nUEdp?=
 =?utf-8?B?a0FPdXQ0WlNiY0pkQkU0NHlzWGJlSWF6VlQ0UXN2VTZ0RS9ZNVdnZk1YSGhQ?=
 =?utf-8?B?VjBreHZaUTBwNm5Ka0Fra21IM1VrZUdmM1BnZHc5SGI5MUdWVlc1YjRRdWhK?=
 =?utf-8?B?dktVS1hDQ2tleGIrT25SaGZvWEFWZE9HQ0NlYXdHb1M2NGZONm1iNm92S00y?=
 =?utf-8?B?d3NyMGhvSVd4U0dva0JhMnUxN0cwSlJCUDAvTTNrVGpjQzdKK0VDQ0ozdHV2?=
 =?utf-8?B?WmMwVFlQdjRmZWIwenlwTlEyZFlyYlkwQzc3MHNocnc3TWh5WnpRSmppem4x?=
 =?utf-8?B?KzAwYmlqR3B5UmNnNTZGcCtNRDhlQ2FGR2FGWTNaNVdPd05jOUZGR0EvMTFt?=
 =?utf-8?B?N2xwSHd1QUlGajUwUWYzWGJPQ2xUMGluVGR3Yk9EWUE1V0trVHlDNjR2RjVP?=
 =?utf-8?B?QkloT0t6bEJkRkxHVjZxU05Pa2tVeVFReHo5WmIyaGhOL3JrQ0s3Q1Q3VzVx?=
 =?utf-8?B?OFhoME9ieWlmRG9uQ1BDcjA3cExKb0hEdTFwYlcrYVhuWnpucjY2c0hPL0ZW?=
 =?utf-8?B?RlVXZ2pXTzBRMDNndUlPMjBqVStpL09JVVpib3NyUGNJVVNTTU56WUsyTWFP?=
 =?utf-8?B?Y21Pb1JFaDFpV2ZsbHAyc0hHN2t5eVdkWGs4SEYwZGIybEdtZ3RMVUxYbVFi?=
 =?utf-8?Q?XM5KJ0nykHJxO/bGWswOrxLqslNCZM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700018)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WWorUVFFWVpWL0dTUFpnajRDTjVoVndtRnBBSTVtYnphdVBtYlRvaDV2bDFL?=
 =?utf-8?B?WWJ4eDBnSkYvWXFxY2h6MHBzWnl0S2Rhc0JRUlZIV3p5YTRBNEpGaVZaUHlW?=
 =?utf-8?B?WjFESXlESmtPMHpzaW02UjJldStXMjF5Rk5zRmhyVUkyUDkvSi92ZFphaExh?=
 =?utf-8?B?RUdHUGdiZ29sV0tmNWhKTk5uRTQ2N0NEVDAycTNxbmk0alk4UVhHY01tT21h?=
 =?utf-8?B?N1VJcTBuZWZHQU90MStscnhCUDBPSzkzOG00UWRwV001OHNOVTVLejdKQisz?=
 =?utf-8?B?eEg5UlZRMENYeElOYkVVYk5lNWR4b3U2RXFCMTlvNmFnbE9Hc0Nqb0xGWWt2?=
 =?utf-8?B?MWVxUGk3SnVRWDZqMThNUDF0S0dUdTRDTkpwRGtBWTlvbDlFT2FJZnRNN213?=
 =?utf-8?B?Yi9hN3MwSGh2QUsxSTU3dzFrTFhRaWxxWVI2RlowTUgwRnVibUNwb1h1azRl?=
 =?utf-8?B?RTV4Q240MElucHU2ZjloSktFNkU1cU1CbndSd25HL09lZmRsWk1POEpqQXhI?=
 =?utf-8?B?OHhwbGNKUWt1TFhrbHgzclg5RE1EdjBnYXhqeEh0RkxNdmNkSmNzZUpQUmhE?=
 =?utf-8?B?QURJa0xXQzVGTGI1U2pwR0U1UEs2R1lNWkU0Z0R3dDZNeDMrcUN2NWRpbUhx?=
 =?utf-8?B?RGZDWUdIWm83MkdsYnlhWlQrU05tcm8zRzRaZzhZbk94c1JsdVI3cGozbXRW?=
 =?utf-8?B?cUcxMVo1S3ZHQmRPdE1sTi9BWDhKbVhqdGpHRHYrR2pRVVZQMjhzMW5HcG44?=
 =?utf-8?B?dVVENTB0MGRYdTRBS0Jld2V1Ni91YmN0ZmJjejYzVk5SNmpYY0liSTU2VXIz?=
 =?utf-8?B?bjdYNXRBc202Ukw4UDl4WXdTS1hINU9XNURhME5icmJSdnp1UHJ5TU02ZWlJ?=
 =?utf-8?B?STlHVGErREdqa0JVQkovSVVnb2RibEhJMlJsYm1Ja3JscHNQSjFITWlmZ1Rk?=
 =?utf-8?B?U042Mk41RFJrR2xKRWZ3TEhmdjd6YUhtME45V3VEbjBEZlpWQi9qcTJHWFBB?=
 =?utf-8?B?YTdTMTlUYjhOVTBkSGUzUlpzNFVyUXFyaUZLVEVoVy9iN1I2RUp3dlYrY05G?=
 =?utf-8?B?UFFNczRnaVRXYitkN2JwdkhJalZSa1dseW1nTTNxOTFVdHVMM1RBVWIwVFpE?=
 =?utf-8?B?Z25ZTzNiUFBzZ3NVeEFOclIxc041QklHTk5OK2JJams1WkM3djNMRzE2Q0ZF?=
 =?utf-8?B?VUJSVWxMa1RxRmZOTXk1eG5iS2VhdXFIbjdlSi9veG1taFRxMjEraU5XSDhM?=
 =?utf-8?B?K0RPUkNsQ2lLVng0RW83cE5IV0VyeDV6VjhYbXpYcDMybzkxSzFWUXFoRy9a?=
 =?utf-8?B?aXRzMVhQYXY4VWJuNDlEdzdIOEJ4NHcyVGZQcmhWWEtEc2xHTW16cjF5Tjl0?=
 =?utf-8?B?OG4rTzV5SGNqaXRoMWNOTHUrdHQ2U0tKMEZ3d0FjcTl6b1RTNXE0Y3N5N0o5?=
 =?utf-8?B?UU52LytWb3pQRGlFbEUxWTJOMjdhN2swbkxHUUtQOFM0c01PemlPR2dGYW5R?=
 =?utf-8?B?dUFxc1NmVWhraHVUSmpISnpiSlZucXVxMjB0dVF1RS9Da0xWMkl0R2NTcGl2?=
 =?utf-8?B?d2tuKzFuRjUxT2xzOUIyMnArSE8zd1hlcFJXTDhxUGFOMEJLMkpUL0liVWxx?=
 =?utf-8?B?RlIrdkgzYlJCTTBpenlTWW9jQ0NjS3h2c3BPR1MvSEh6MUZ5S2ZJTTZuSlNW?=
 =?utf-8?B?V2xVQnZPbmVxWElERFU3Q1R0SDl6OHA2bDU0ci9Pei8rSDMwL25ENlVhWGpv?=
 =?utf-8?B?cjNUZldaSldMR05HdXRyMUJPUVFBMGE4bHB0WlNOZGZWeGlGQllQaWRqZWZk?=
 =?utf-8?B?cnpxRFkzb3dWVGFLOEh5WFh6alkwWUMzVlcrUjNyWlZWcEdSR2NxL25QeWUr?=
 =?utf-8?B?UHhHR3FXZmlBNW9vTjlMbHdtaUh2M1MxazIybUoxU09HQlFBdnhQZzF1eE5a?=
 =?utf-8?B?blhFV01aeXJ3dUI3dlhVeWhFN0UyTHhZWEFGUlNJL2YwWG9LeEtYOGJxNlZD?=
 =?utf-8?B?dkkwaVFlOVRNZ3hsMjZCbWNxUExoSWNUWGtpQnZMS0E2VFZyZTVxRmtHRWh2?=
 =?utf-8?B?ZGNCbk82R0ROOGM3L1NxM0RoMitOU1RKdVpOZEd1bFQyckFndW9KeFl3Rmo0?=
 =?utf-8?Q?g+xO/Q0c8P7Jcz51FfOKjHZvE?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d141f56-0790-43ab-5c4f-08dd97ea3278
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2025 22:03:48.0998 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jr90UOwsO7JGhWqxXLycIN2ioLkVcaOOPCMCNH6TWsXCSGvypms6LO0prRSMHgofYzExAE/cYp5OFb+Ro01KMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5017
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747778674; x=1779314674;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=upDZZmBvCntfbKY3q+SZUOCpJRypch59KCr2Kqv2K20=;
 b=VjerFUH0noTFcvzFLrG/U+1xOhYVm16C9JzY13GJiuXxXpVuuDIQ7Xea
 j/LnQeFgujO+7HInFAXaXys/MmNgSVSVfHZ/7GBD7O1keTwjZ91vzfKjY
 Y7IWZMiaiS6jgKXfmSjS6IBeI6BosccZzBhq0wrTF3oGXhPN0nADH6DIx
 ZGOcBCvP0aNm5+dzG6V/CFcnD7/JDzT0vxl9808ENZdL32R5rxgSYlk+n
 YK847UwLP9mMY0hwlMiVpVOGvo6zX+Utoo54jmZGvotAwg8FIBO8HCzAX
 GD4HHxS6OtjMQwOZd1E32hey5nMKICfd3WzYMEz8WOQ7Y6DMe6njNlDZ5
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VjerFUH0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net PATCH v3] idpf: fix a race in txq
 wakeup
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gQnJp
YW4gVmF6cXVleg0KPiBTZW50OiBUaHVyc2RheSwgTWF5IDEsIDIwMjUgMTA6MDYgQU0NCj4gVG86
IEJyaWFuIFZhenF1ZXogPGJyaWFudnYua2VybmVsQGdtYWlsLmNvbT47IE5ndXllbiwgQW50aG9u
eSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcN
Cj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVt
QGRhdmVtbG9mdC5uZXQ+Ow0KPiBFcmljIER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+OyBK
YWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsNCj4gUGFvbG8gQWJlbmkgPHBhYmVuaUBy
ZWRoYXQuY29tPjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IERhdmlk
IERlY290aWdueSA8ZGVjb3RAZ29vZ2xlLmNvbT47IFNpbmdoYWksIEFuamFsaQ0KPiA8YW5qYWxp
LnNpbmdoYWlAaW50ZWwuY29tPjsgU2FtdWRyYWxhLCBTcmlkaGFyDQo+IDxzcmlkaGFyLnNhbXVk
cmFsYUBpbnRlbC5jb20+OyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOw0KPiBuZXRkZXZA
dmdlci5rZXJuZWwub3JnOyBUYW50aWxvdiwgRW1pbCBTIDxlbWlsLnMudGFudGlsb3ZAaW50ZWwu
Y29tPjsgQnJpYW4NCj4gVmF6cXVleiA8YnJpYW52dkBnb29nbGUuY29tPjsgS2VsbGVyLCBKYWNv
YiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+Ow0KPiBDaGl0dGltLCBNYWRodSA8bWFkaHUu
Y2hpdHRpbUBpbnRlbC5jb20+OyBIYXksIEpvc2h1YSBBDQo+IDxqb3NodWEuYS5oYXlAaW50ZWwu
Y29tPjsgTHVpZ2kgUml6em8gPGxyaXp6b0Bnb29nbGUuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwt
d2lyZWQtbGFuXSBbaXdsLW5ldCBQQVRDSCB2M10gaWRwZjogZml4IGEgcmFjZSBpbiB0eHEgd2Fr
ZXVwDQo+IA0KPiBBZGQgYSBoZWxwZXIgZnVuY3Rpb24gdG8gY29ycmVjdGx5IGhhbmRsZSB0aGUg
bG9ja2xlc3Mgc3luY2hyb25pemF0aW9uIHdoZW4NCj4gdGhlIHNlbmRlciBuZWVkcyB0byBibG9j
ay4gVGhlIHBhcmFkaWdtIGlzDQo+IA0KPiAgICAgICAgIGlmIChub19yZXNvdXJjZXMoKSkgew0K
PiAgICAgICAgICAgICAgICAgc3RvcF9xdWV1ZSgpOw0KPiAgICAgICAgICAgICAgICAgYmFycmll
cigpOw0KPiAgICAgICAgICAgICAgICAgaWYgKCFub19yZXNvdXJjZXMoKSkNCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgcmVzdGFydF9xdWV1ZSgpOw0KPiAgICAgICAgIH0NCj4gDQo+IG5ldGlm
X3N1YnF1ZXVlX21heWJlX3N0b3AgYWxyZWFkeSBoYW5kbGVzIHRoZSBwYXJhZGlnbSBjb3JyZWN0
bHksIGJ1dCB0aGUNCj4gY29kZSBzcGxpdCB0aGUgY2hlY2sgZm9yIHJlc291cmNlcyBpbiB0aHJl
ZSBwYXJ0cywgdGhlIGZpcnN0IG9uZQ0KPiAoZGVzY3JpcHRvcnMpIGZvbGxvd2VkIHRoZSBwcm90
b2NvbCwgYnV0IHRoZSBvdGhlciB0d28gKGNvbXBsZXRpb25zIGFuZA0KPiB0eF9idWYpIHdlcmUg
b25seSBkb2luZyB0aGUgZmlyc3QgcGFydCBhbmQgc28gcmFjZSBwcm9uZS4NCj4gDQo+IEx1Y2tp
bHkgbmV0aWZfc3VicXVldWVfbWF5YmVfc3RvcCBtYWNybyBhbHJlYWR5IGFsbG93cyB5b3UgdG8g
dXNlIGENCj4gZnVuY3Rpb24gdG8gZXZhbHVhdGUgdGhlIHN0YXJ0L3N0b3AgY29uZGl0aW9ucyBz
byB0aGUgZml4IG9ubHkgcmVxdWlyZXMgdGhlIHJpZ2h0DQo+IGhlbHBlciBmdW5jdGlvbiB0byBl
dmFsdWF0ZSBhbGwgdGhlIGNvbmRpdGlvbnMgYXQgb25jZS4NCj4gDQo+IFRoZSBwYXRjaCByZW1v
dmVzIGlkcGZfdHhfbWF5YmVfc3RvcF9jb21tb24gc2luY2UgaXQncyBubyBsb25nZXIgbmVlZGVk
DQo+IGFuZCBpbnN0ZWFkIGFkanVzdHMgc2VwYXJhdGVseSB0aGUgY29uZGl0aW9ucyBmb3Igc2lu
Z2xlcSBhbmQgc3BsaXRxLg0KPiANCj4gTm90ZSB0aGF0IGlkcGZfdHhfYnVmX2h3X3VwZGF0ZSBk
b2Vzbid0IG5lZWQgdG8gY2hlY2sgZm9yIHJlc291cmNlcyBzaW5jZQ0KPiB0aGF0IHdpbGwgYmUg
Y292ZXJlZCBpbiBpZHBmX3R4X3NwbGl0cV9mcmFtZS4NCj4gDQo+IFRvIHJlcHJvZHVjZToNCj4g
DQo+IFJlZHVjZSB0aGUgdGhyZXNob2xkIGZvciBwZW5kaW5nIGNvbXBsZXRpb25zIHRvIGluY3Jl
YXNlIHRoZSBjaGFuY2VzIG9mDQo+IGhpdHRpbmcgdGhpcyBwYXVzZSBieSBjaGFuZ2luZyB5b3Vy
IGtlcm5lbDoNCj4gDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4
LmgNCj4gDQo+IC0jZGVmaW5lIElEUEZfVFhfQ09NUExRX09WRVJGTE9XX1RIUkVTSCh0eGNxKSAg
ICgodHhjcSktPmRlc2NfY291bnQNCj4gPj4gMSkNCj4gKyNkZWZpbmUgSURQRl9UWF9DT01QTFFf
T1ZFUkZMT1dfVEhSRVNIKHR4Y3EpICAgKCh0eGNxKS0+ZGVzY19jb3VudA0KPiA+PiA0KQ0KPiAN
Cj4gVXNlIHBrdGdlbiB0byBmb3JjZSB0aGUgaG9zdCB0byBwdXNoIHNtYWxsIHBrdHMgdmVyeSBh
Z2dyZXNzaXZlbHk6DQo+IA0KPiAuL3BrdGdlbl9zYW1wbGUwMl9tdWx0aXF1ZXVlLnNoIC1pIGV0
aDEgLXMgMTAwIC02IC1kICRJUCAtbSAkTUFDIFwNCj4gICAtcCAxMDAwMC0xMDAwMCAtdCAxNiAt
biAwIC12IC14IC1jIDY0DQo+IA0KPiBGaXhlczogNjgxOGM0ZDViM2MyICgiaWRwZjogYWRkIHNw
bGl0cSBzdGFydF94bWl0IikNCj4gUmV2aWV3ZWQtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5r
ZWxsZXJAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogTWFkaHUgQ2hpdHRpbSA8bWFkaHUuY2hp
dHRpbUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvc2ggSGF5IDxqb3NodWEuYS5oYXlA
aW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBCcmlhbiBWYXpxdWV6IDxicmlhbnZ2QGdvb2ds
ZS5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEx1aWdpIFJpenpvIDxscml6em9AZ29vZ2xlLmNvbT4N
Cj4gLS0tDQo+IDIuNDkuMC45NjcuZzZhMGRmM2VjYzMtZ29vZw0KDQpUZXN0ZWQtYnk6IFNhbXVl
bCBTYWxpbiA8U2FtdWVsLnNhbGluQGludGVsLmNvbT4NCg0K
