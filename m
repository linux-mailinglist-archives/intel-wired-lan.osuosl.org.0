Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B299B1A03
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Oct 2024 19:16:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 499C840394;
	Sat, 26 Oct 2024 17:16:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dcd3Cu2EAtRz; Sat, 26 Oct 2024 17:16:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3FF4540242
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729962989;
	bh=cOKpggD4mXYDJSWzECNIqTMr66RQO5Zt0soc5fW5I+Y=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jVXD5jfVvTCERjvs7I6MyWDO8/S3UN0C0bQ7WVYqwr9meXcHpiEgeJWMsQfffuVoP
	 ZG0DYgpnYw/FVAYpbPZpjzqPrTbGAuLMvAKFBf+862Q8KfSzT/s+6jThm5LeHdL4d+
	 V1QzOSyQKSqoadVewinl/J/uXcBP/PMSsp6FtsuAjVcwc9cOvvTnuZwvkbgPTzVGg0
	 KV4plQPy0ETFvcg1riJHV+f7yen5ekqqn9bB+qEo797F4MjsYmC0uVKwNdJ6rd6Ess
	 f5j59S2NFJU8qygu7ot0cDhzRhMxnHcz+RTIZwCdYmEJxhqJvEBVND9pjMmbceT3UQ
	 h7ISx+qLj1OfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3FF4540242;
	Sat, 26 Oct 2024 17:16:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B94A2318
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 17:16:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0CB67605E1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 17:16:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JC5KO7xnt6mI for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Oct 2024 17:16:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E25DC605E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E25DC605E0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E25DC605E0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 17:16:25 +0000 (UTC)
X-CSE-ConnectionGUID: vrp+RELAQ6q/+zxrNOWLVQ==
X-CSE-MsgGUID: ZNqmDb83Qzak4BNBlNCU8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29396060"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29396060"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2024 10:16:25 -0700
X-CSE-ConnectionGUID: jva/WA5hREyn1mG6ZZseeA==
X-CSE-MsgGUID: uCrLryfzRISMPHQVKhkSOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,235,1725346800"; d="scan'208";a="85981220"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Oct 2024 10:16:25 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 26 Oct 2024 10:16:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 26 Oct 2024 10:16:24 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 26 Oct 2024 10:16:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h8vzeq+nFvDnymKb2HRe51N5oBn+hXEZirW4KyxzrfkbMUhq1zwP7DARQbgTYJT+JeY1J+mqafwC2lL3erjnuy72/jNWWGevW+VwKTZ+i5qFcR94JRSH/xNyAmRfeSm0pM87eIdzPX2UgsHEKVhvjYzjbWLbEhrV+D0wS1Cee6Cs73FEEs+F6xEfxrNIczQir3vAGxyF3wFk2k/ct2kVk9X9/kUj/LV4+yZXbe0+/o723tIKF+5esqaJ/eTu/llvg+Y0ShyQxu7ofKTPU4jglO+zOj6HktL2NDBx4PZ1MPJp/BpgRITO964o5hF1L+tz02Q+eL2jSoUVJTO5G5SDlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cOKpggD4mXYDJSWzECNIqTMr66RQO5Zt0soc5fW5I+Y=;
 b=wFbiqNGPXDyhfU8+Y8wY3FADI2QaznSfFVTkGlVPddUnUSwLfJ2I83smE/P6ac1ks0ETRjL/i9bkRCkW0L0DkIC6om1z/9wDf5BnvU16T+9+F1+PwsZ7b1tPowMcHbijgpbMUxl/bWxgU/zOsDDwoX8qXzxzYz814JuINF/cjM6htjKjUd217We/eZVI8z05f5d+TwyHvbLaQNzPpPjlX5cvmh7VIWuKytKcV1OwRY1Ls11MtVi7EW8kl79dCdizUqRiwkX8N98ni4svtIUDVzYqXFt/tq0xsv+HOVWb3z/0TpKeK8dNToDOx/T8xSzaS2qnlsUeS7HUpTSjXzvgfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by DS7PR11MB6016.namprd11.prod.outlook.com (2603:10b6:8:75::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.23; Sat, 26 Oct
 2024 17:16:16 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b%4]) with mapi id 15.20.8093.021; Sat, 26 Oct 2024
 17:16:14 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net 1/4] ice: Fix E825
 initialization
Thread-Index: AQHbGyAA+BVVMPrSA0+D34Pkk/eSsLKKDtkAgA9PqjA=
Date: Sat, 26 Oct 2024 17:16:14 +0000
Message-ID: <IA1PR11MB6219ADBE71E91D787660D81292482@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20241010142254.2047150-1-karol.kolacinski@intel.com>
 <20241010142254.2047150-2-karol.kolacinski@intel.com>
 <4eec05b3-6c95-4b4a-803e-9dd24be21ab0@intel.com>
In-Reply-To: <4eec05b3-6c95-4b4a-803e-9dd24be21ab0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|DS7PR11MB6016:EE_
x-ms-office365-filtering-correlation-id: 20c5fe6c-7a33-41d2-727e-08dcf5e1e591
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?OFhkL2N5UXUyUFpCbTVNQlg3R1IvOWNrNFUvd2c5aTg2NlFRTHUvQXhRc3h2?=
 =?utf-8?B?dnVGb29ETkxtZi9Bc0VwYTM4UkdTTUhqR0x0MHhIcE51Uk5VakNrWnl2RnRZ?=
 =?utf-8?B?enlkS1Exa0svN0dkdmJEMXJMS0hzdkJmZ3ViSzFTdXdXQi92N2VXOVd6Tk5N?=
 =?utf-8?B?ZFRDQllIVkhtZnRwWGlDV0ZqUlE5a1hPQ0UwWS9WSldvV3IxWGhnOEpCTVpQ?=
 =?utf-8?B?MncwUEhMbzBwUUNHQ1VhT3I1ci9kS2QrekZFVGs5dytPcWlPdit4SDJqaG51?=
 =?utf-8?B?NVpnV3F0Y2NsTjE3eXY2cDFtY1E2cUVzM2pNbW9vQml6Y3RzUjVIMTA3RXJH?=
 =?utf-8?B?WXN1RWpYV3llT3VEQ0RDamJ1TEFHenZPOGNRVi96WEhXUTF2eTNxSHh0LzRW?=
 =?utf-8?B?M0xhOWZjQnEyd3V0aFpCYVUxRnRPVFIwQ0dFZmVUdW5hS0t3U0JSRGlxdXdH?=
 =?utf-8?B?K1haYXlHdEFRL1pibW9qN3ROYWVGcFpNYUF5bHloTGRnSHlRSVdueHNWSW50?=
 =?utf-8?B?NDJEeGZIaXVpeTA1UVlJRVlOQXN2MXFlWmwvdENGQ2U4eS9wRXI1Z0hyeTJh?=
 =?utf-8?B?OUJSQ0hOV0lrb1cwYjVTZklWQUNtRklSclg3L0dMU0NFOURrZnpRVktzQ3lj?=
 =?utf-8?B?YSthQWl3aWtYdms2YTlYa0VZYTdqbytOOWUvY28ybGJQVHBONjFXUXZ3RnRM?=
 =?utf-8?B?dFA2eURsUlVuamFXdkNPaVQ4L1JPODFvSFh5dEhDalBoK2gvcTFmU1ZkYkZE?=
 =?utf-8?B?bU9WRHJwUXl0RzRObGlKUHVsS1B0TUh2dCszR1NhQWdoZCtuSUdCU2QrODdr?=
 =?utf-8?B?ZFd6WkJMN1QyZ1JyalJzcHhRSmtEbHROSGdtUXhiMm9rbEE5TDEwclJnMXZq?=
 =?utf-8?B?ZFEyaHlHUW50ZlNHUnNOeUpjcEh1c2p2cUtORzg2MFNaL3ljdmdyMEhXNE0z?=
 =?utf-8?B?UjF5MHV3eVFvMzhTam5WcFFMMzRPYU5MaW1pWlJTY0w1M05mODRveGoyOFAy?=
 =?utf-8?B?YkdwN2JLT2xwZGpIeEppeWliUnIxTWs4V1lYYjNpMGpBdGdZOTkrSEFrYVY3?=
 =?utf-8?B?TkhZenVXK04rVHVoVkZRcVdsdGJWZ1J2S0V0NGdoaSs1RVc3bXp4NThoZ2hO?=
 =?utf-8?B?aVZ6UWJtMlRLOFhNaW9aT0hxMzUzRTFuUU4xZW9qdnlpajNycVltUTZaSjd3?=
 =?utf-8?B?WUhoTUx4dHhWbDRRcjFwTi9DSjFQNGxqeEZsTFprNzJndkVMOGIvRloxa2hF?=
 =?utf-8?B?M0JmT1A2WHhkbnlrOFQ4ZXEvK3YwWjJXTG1QQzRSM1VzSk1VRjhiVjFyQUFG?=
 =?utf-8?B?bnd1NHhVM0U5Tk5BemQwcFlTSVdtWmwzdHBkclZhaExhdnRCNTM2VWtNZ2FH?=
 =?utf-8?B?YkhBTG9NdFJiS2JVb0hnSE1KYmNlWGJqVjZQTjVSYTNVU2RZRUZ5NFNjbGRj?=
 =?utf-8?B?aUd3aUZ5QllMVFcvMlV3Vmg1eHRJUllCVWJMZ1ZiRGxkUzBMaUlLWlhhb0c3?=
 =?utf-8?B?UUZMT3l1TkV5enlGNHU1VXpvTTk1c3cyRE9uR2taU0tCS3hlYThyTk0rcmxX?=
 =?utf-8?B?b3hlam5nVlpFRzFPTGtHVEMyMWhoRWdzZmp0bUVLaUh0WVY0SmVVaG9VV3dv?=
 =?utf-8?B?QmM3UDFscG1KTDk0cG85bW9xZDN2OGdvT002bTI3TGt3TzVyT1RUSElZSDMz?=
 =?utf-8?B?Z0RBckZrOTBrN0lrZTVyRnUrV1ZWK3B3VHNhMG5jM2kzeWJlR3dWSmZ5VkRG?=
 =?utf-8?B?TWRsN05oTUVhTy9WN2M1clVmaGNWVGxCUXB3UFFsemN0T0Z1cnlSUkZ6ZkNM?=
 =?utf-8?Q?npx0HkXjNZYTuwTU/fjcXWPR+SBuYsEFlL5i8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZU5UdzhEcnUyRnBCR1FxSkY0VlV3cG93Q0RaRUFpTWtHdmtFckdvT29ibFlF?=
 =?utf-8?B?MDJtbE9Uc250M2MwSURLT1NxZ0k1emV4U21obGlOOFhteVpYNW1LQTExb2Jp?=
 =?utf-8?B?RVN3eElZd1ZlWS9QeE0xUm5SQTRFaXJwR0N1UnhsZk5RamlEeGtBL1E1MFpM?=
 =?utf-8?B?TFprVlBFZDMwOWRST2ZEQ0hOdGhYdlVJN0h6ZkFxSVB2b0V4eHZVT1NyT3o0?=
 =?utf-8?B?bWc0Ny9aQ083QXY5NjVPOXd1dFgrdHN2azMweWxtRkh4eXBpT0QxUVo1NC93?=
 =?utf-8?B?ZzVJWXFVL3NjSDI0TnloakpqQnkwbEkvOFRjTk5mNWhUZ08rald3MnVqMUNU?=
 =?utf-8?B?RXZYckZqdTJQMHY5N1VHRVpuNlVCOURDWHptQUh6ejZvODF1b1J4bXV1alNO?=
 =?utf-8?B?eHBUT01BVVpRb3Vibjh0c2F2cEZlcmlwVHlBbm1hQmd4a0R5L0NQVmkvT240?=
 =?utf-8?B?NkpReWE1WHFBdSsxYkp2dDM4WmxBQ09lV1FMdU12K1BCNnl6Z0VjanhiV0RN?=
 =?utf-8?B?WjIzRjRjSmcxQngxL3VUS2VPUEVaYnFtODhBQ2toTmFPYkdsei9GTVlYVW5x?=
 =?utf-8?B?NWI5QzRLb3VTN2praTE3Y0JGUE11NDcwdExZNzVjVnE0SWlUNExlY3VoZnVR?=
 =?utf-8?B?SWFHdTBTTDlBZlh6N1RTVk9ITFhLdnNZbHVwUi85eUNkSzAvdEkvaXorMi9H?=
 =?utf-8?B?OW1sY3E4NzBScmk2cGdrK0h2czluWktqSmFEeU40STdXZGh5Vlhva3lFZi9B?=
 =?utf-8?B?cm5qRkkvTlVEdFJXaFkwZFlmRk50d2NwUXFuV3RJQ3hjKzNiNTJsbWJYdkhq?=
 =?utf-8?B?V3o1Y1YxT05uckFicUdFSms1UVd1bmsrbUdoaCtaN0VrbmdoTmQ5dXprT3Az?=
 =?utf-8?B?MVFHajI5dlhCdmtqVlFQMmxJUzU0RVl6cldvL0loTTZRSkQzWDE0MDAzSzlI?=
 =?utf-8?B?UUdrajR1UFVsOVArN0lUY0FHRnA3eG5vbTdHWHM5bWVlRGJrMnR0WTN5bzdH?=
 =?utf-8?B?QU05c3FQM0RDYzd1NDdGS1lGOU5STEs0dFU5VktkekxSbklEYmpHb1BBdW9w?=
 =?utf-8?B?N2RGMGdmTTFtbWZRMmFFYW5hUDBUNmEyZTlsc1dJZ0EwMFdDNFUwS1hMVkFF?=
 =?utf-8?B?SGZXL2l1TTg0elVPRngrYWpwVEltSi9YMHI1Mk96UWVkUGh3blI0RGlQK3JY?=
 =?utf-8?B?YjBFcWMvclhtV04vUjV5cC9ReTczSUZsZmhYcUVucEFTczduUTA5cStHaXJU?=
 =?utf-8?B?QnppenFJWHFGT1dkcTZnOHhERlZuN21vVjF3V3ZzVnRPa2tGZ3AwUlp4YmZ1?=
 =?utf-8?B?N3pPUHUzNGRpVVlQd0Vuc1RLaUVLd2dwTWkvdTNmaXpxUXhmckRXRlkzbE8y?=
 =?utf-8?B?aWc0MU1PY0M1Ump0Q1hqQkRLbmdlQkhXQWRrb2VTNUJ3cndQYVM3QTZEWFBY?=
 =?utf-8?B?d2Vhc3lrSVJ3Uy96bGdHd0t3RHA0bEhEMllWNFpWUUdCelRydWk0N1Q1RlQy?=
 =?utf-8?B?NkZvcFRtUm1rSkQ1YTNhN3dyNm5yOVhYa1dwRFlnMStOOFU0dExDUlVWZ25h?=
 =?utf-8?B?M21OTVk0SG1VK1B1MG1pMkdIRUhuR0VuWjRsdWJjc0FUb1pPQjdNNUJEMHJR?=
 =?utf-8?B?ajBibVBJT3ZiT2k3elRFZTBxVEgwdktTUmpGc0hmejc4Uk1jdlJNbHJvUXNY?=
 =?utf-8?B?UXZWRzE2VTZYV0RmVTdvSy9qU3JOUWk5NmF1Qld0UjN5RnBsZVl0QWRvcVo2?=
 =?utf-8?B?SUVGYUZ0RnA0L3B1R1VURlR6cTRuV0ZOZ2x6OTlRWnlYYVQ0YThlSU94Nyth?=
 =?utf-8?B?c1Y1YnBMa2xzMzdVVlpIRVAxTWsvcVpDN3p3UndDam1Xa1dQTHlZajlLSGRa?=
 =?utf-8?B?NWNuZ3BUVTdtaEdnK2tpcEdvTFVlUHJ2b0FkQitJaTVGejYyYlBubytWWjhk?=
 =?utf-8?B?MW9JUk4xY3F6MnlQbm1GNnMxdVkzbWtsVDZ4ZDZjbXI5R016ZUNyNFZPWGJS?=
 =?utf-8?B?OXdmVEY2Z09wTUowTXg2YVljNTVRMkhSWUtWUlFOZlFmdzFBQ0VPZmNCKzF2?=
 =?utf-8?B?VThZZUlwMllxYkwvaDJZdTUyTkx5RHdSWjgvNWRNRXptdjFXSVdWa2pIVHh1?=
 =?utf-8?Q?WWH0FVyx8a9/gVnhsgJj12DHm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20c5fe6c-7a33-41d2-727e-08dcf5e1e591
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2024 17:16:14.7249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eBsFxkpQ/3Fz6l1ShF5pQmZjEr5rbICdBxOk0pkMHXoC06NDAIQwPC7SogC7HRVPmmRnf9vwt6SC6yxp4jC95tE4nmT2pjte2vVpqoJZdS4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6016
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729962986; x=1761498986;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cOKpggD4mXYDJSWzECNIqTMr66RQO5Zt0soc5fW5I+Y=;
 b=cwPXkYAunmieThvMncdaBQLjLQUvZd2/Ym6LXTrvpleseD/xJ+qx40tS
 SFJ9nhTNdwsfrNb/KghUy3h8OmiMkjryeLkDzh1aCKnxuFUUVpTQYpgj6
 iDTdfoli/XlKyTAvMXIhNXfzb6+5o+NhQsnDg8at4nAgOXkHWqAt1sRPq
 L3sU1QlAQaqzPK7sLniogrtIoE9R6hV4dG21a9xBymJoQxQnSJkxf7XLq
 SSfq8PvsL0DS52ESLQZ6vE7tx1bsZpCloYc3ieUj3URdzmPgyQOBN4xZz
 El5aOVF0M/pDBMBiszAC56WhOft/34FCLbEEX1e7IBZlJ6Y/v/nmXBdyE
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cwPXkYAu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 1/4] ice: Fix E825
 initialization
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLXdpcmVkLWxhbiA8
aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24gQmVoYWxmIE9mDQo+IEphY29i
IEtlbGxlcg0KPiBTZW50OiBUaHVyc2RheSwgT2N0b2JlciAxNywgMjAyNCAxOjI1IEFNDQo+IFRv
OiBLb2xhY2luc2tpLCBLYXJvbCA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+OyBpbnRlbC13
aXJlZC0NCj4gbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5v
cmc7IEt1YmFsZXdza2ksIEFya2FkaXVzeg0KPiA8YXJrYWRpdXN6Lmt1YmFsZXdza2lAaW50ZWwu
Y29tPjsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsg
S2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4g
U3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiBpd2wtbmV0IDEvNF0gaWNl
OiBGaXggRTgyNSBpbml0aWFsaXphdGlvbg0KPiANCj4gDQo+IA0KPiBPbiAxMC8xMC8yMDI0IDc6
MjEgQU0sIEthcm9sIEtvbGFjaW5za2kgd3JvdGU6DQo+ID4gQEAgLTI2ODYsMTYgKzI2ODcsOSBA
QCBzdGF0aWMgdm9pZCBpY2VfcHRwX2luaXRfcGh5X2U4MjVjKHN0cnVjdA0KPiBpY2VfaHcgKmh3
KQ0KPiA+ICAJcHRwLT5udW1fbHBvcnRzID0gcGFyYW1zLT5udW1fcGh5cyAqIHB0cC0+cG9ydHNf
cGVyX3BoeTsNCj4gPg0KPiA+ICAJaWNlX3NiX2FjY2Vzc19lbmFfZXRoNTZnKGh3LCB0cnVlKTsN
Cj4gPiAtCWZvciAocGh5ID0gMDsgcGh5IDwgcGFyYW1zLT5udW1fcGh5czsgcGh5KyspIHsNCj4g
PiAtCQl1MzIgcGh5X3JldjsNCj4gPiAtCQlpbnQgZXJyOw0KPiA+IC0NCj4gPiAtCQllcnIgPSBp
Y2VfcmVhZF9waHlfZXRoNTZnKGh3LCBwaHksIFBIWV9SRUdfUkVWSVNJT04sDQo+ICZwaHlfcmV2
KTsNCj4gPiAtCQlpZiAoZXJyIHx8IHBoeV9yZXYgIT0gUEhZX1JFVklTSU9OX0VUSDU2Rykgew0K
PiA+IC0JCQlwdHAtPnBoeV9tb2RlbCA9IElDRV9QSFlfVU5TVVA7DQo+ID4gLQkJCXJldHVybjsN
Cj4gPiAtCQl9DQo+ID4gLQl9DQo+ID4gKwllcnIgPSBpY2VfcmVhZF9waHlfZXRoNTZnKGh3LCBo
dy0+cGZfaWQsIFBIWV9SRUdfUkVWSVNJT04sDQo+ICZwaHlfcmV2KTsNCj4gPiArCWlmIChlcnIg
fHwgcGh5X3JldiAhPSBQSFlfUkVWSVNJT05fRVRINTZHKQ0KPiA+ICsJCXB0cC0+cGh5X21vZGVs
ID0gSUNFX1BIWV9VTlNVUDsNCj4gPg0KPiANCj4gU2hvdWxkbid0IHRoaXMgcmV0dXJuIGxpa2Ug
aXQgZGlkIGFib3ZlPw0KPiANCg0KWW91J3JlIGNvcnJlY3QuIEFsc28sIGFzIHlvdSBub3RpY2Vk
IGluIHBhdGNoIDQvNCBvZiB0aGlzIHNlcmllcywgaW4gY3VycmVudA0KSW1wbGVtZW50YXRpb24s
IHdoZXJlIFBIWSB0eXBlIGlzIGRlcml2ZWQgZnJvbSBtYWNfdHlwZSwgYWJvdmUgY2hlY2tlcg0K
c2VlbXMgdG8gYmUgcmVkdW5kYW50LiBUbyBiZSBmaXhlZCBpbiB2Mw0KDQo+ID4gIAlwdHAtPmlz
XzJ4NTBnX211eGVkX3RvcG8gPSBpY2VfaXNfbXV4ZWRfdG9wbyhodyk7DQo+ID4gIH0NCj4gDQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3
LmgNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5oDQo+ID4g
aW5kZXggMDg1MmEzNGFkZTkxLi4zNTE0MTE5OGYyNjEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuaA0KPiA+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmgNCj4gPiBAQCAtMzI2LDcgKzMyNiw4
IEBAIGV4dGVybiBjb25zdCBzdHJ1Y3QgaWNlX3Zlcm5pZXJfaW5mb19lODJ4DQo+IGU4MjJfdmVy
bmllcltOVU1fSUNFX1BUUF9MTktfU1BEXTsNCj4gPiAgICovDQo+ID4gICNkZWZpbmUgSUNFX0U4
MTBfUExMX0ZSRVEJCTgxMjUwMDAwMA0KPiA+ICAjZGVmaW5lIElDRV9QVFBfTk9NSU5BTF9JTkNW
QUxfRTgxMAkweDEzYjEzYjEzYlVMTA0KPiA+IC0jZGVmaW5lIEU4MTBfT1VUX1BST1BfREVMQVlf
TlMgMQ0KPiA+ICsjZGVmaW5lIElDRV9FODEwX09VVF9QUk9QX0RFTEFZX05TCTENCj4gPiArI2Rl
ZmluZSBJQ0VfRTgyNV9TWU5DX0RFTEFZCQk2DQo+ID4NCj4gDQo+IFdoeSBpcyB0aGlzIGh1bmsg
aW4gdGhpcyBwYXRjaD8NCg0KTG9va3MgbGlrZSBzb21lIGxlZnRvdmVyIGFmdGVyIHJlYmFzZS4g
VG8gYmUgcmVtb3ZlZCBpbiBuZXh0IHZlcnNpb24NCg0K
