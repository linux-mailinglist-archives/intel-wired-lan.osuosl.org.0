Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0088A99B5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 14:24:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84F2641698;
	Thu, 18 Apr 2024 12:24:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Z1IzhRYGfj9; Thu, 18 Apr 2024 12:24:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0E4040386
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713443061;
	bh=/Lp+ogUzUo8hQ3Sv8su/UQf2atC0DML68aNYUI8n2DU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wx07ZBSE2oU0PphXEYciU0acRCmHip6hS03f1QRoap90iEx8KOenB4CO5n+PxdGBh
	 1CmEqwVVWNfdJmQ8lA/KdsR7ZcTOAZOzAvZMeDUadLkIZZf64o0W4tmIqE6OA3tOJF
	 InAG7QfuHYrVWjYlN1Q8s3P4fz5mUzQJO2EqfAmb9sqHzR1p/NdHqxns0t2ZgxgSgK
	 lWATHinBeDBNVbAE5p0A/WS/LRNQGIaSJVmAl+3xJKQtXFde7GBFoLZ9StyNmrVSXP
	 RnCmcyExON0AYMIyXidu62U+qPORDLLpjkcCljzkQsNDxMkPC58+tqAj1uq2X/kL16
	 4J1ctQJz1fZwg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A0E4040386;
	Thu, 18 Apr 2024 12:24:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 168711BF373
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 12:24:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 01680400D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 12:24:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ykfLZ7HpsM2u for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 12:24:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6B2F140017
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B2F140017
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6B2F140017
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 12:24:17 +0000 (UTC)
X-CSE-ConnectionGUID: lmrzNH0mT4SAAGmNJhFyvA==
X-CSE-MsgGUID: LcM4Cls5T3yFfmbJaBKocg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9112080"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; 
   d="scan'208";a="9112080"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 05:24:16 -0700
X-CSE-ConnectionGUID: 2FWNKxSfSTqWEO1tjCDzbw==
X-CSE-MsgGUID: qV8e9lBGRfurY6C8WhZG4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="22837718"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 05:24:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 05:24:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 05:24:15 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 05:24:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lx6zaR9+N0Dp6vn/h6WKmMZbGzdaazBoCp/NVgomgR7EkHcW8b2y6scH1N+X8ZCqDUo+fDrAzPfxiGMZ8Yqw53LSe6ulIJql11A3akrYvVV8WnV9+8A1HOXk1vYeCXE1zAlbHDLJBM/TyUg8adYaD9afakIcbMXnTOIWJvV6A+44HFQgzmOkAHU/sM+MVttx2fzeOl/7ZxujZuIlNuEj1JXMTw/gaOH1sFXNpBJPdNJ3COwEf4W5l23hcR8QBN2Jic3mRP53wXRTAHfyTaI75WBpfHj2tKNspVnOxrBcEQ4hoX3OEauUx8phZ7SCN1B6qPjy3JVYlMFAwybzG1D1rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Lp+ogUzUo8hQ3Sv8su/UQf2atC0DML68aNYUI8n2DU=;
 b=P2z0yny4jrHE3LBuuOxpjg6bClpW+9ZZneUD881hqI93Bhy9QJApR294/X2tEFNXB8hOXdm2Gh8pip4OREHe/0x1KR7/nbQ8ZoNxNYJocrF35aDfyl1Xg/W9vDs7HkD+R+59T4wnwejpNHLPZUaktYz7pOiIynDwK2biHPSdJ9QgJaWTO0Vm5w8ukmhFp8zYrwirCP/Njgtkt+eubKDpNXjuhI77WqRJCqXk7aqjTMhiacNREBeqbTwkF3gbQKkdB69vvUhiGmph+9Hja2HqkyNwCU9g1jF/rDfunP9VK1VIfG4chm0nV5OKBQV8eb0oQ5OVihaklh5+dPZI7b76Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by PH0PR11MB5904.namprd11.prod.outlook.com (2603:10b6:510:14e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.12; Thu, 18 Apr
 2024 12:24:13 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::27b8:e131:8ea6:a4b8]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::27b8:e131:8ea6:a4b8%3]) with mapi id 15.20.7472.027; Thu, 18 Apr 2024
 12:24:13 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix LAG and VF lock
 dependency in ice_reset_vf()
Thread-Index: AQHaigkOYWoNGJCLzEqy018Rajc1YLFjA5WAgAr+4GA=
Date: Thu, 18 Apr 2024 12:24:13 +0000
Message-ID: <SJ0PR11MB5865A7CDB2316F2941D839488F0E2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240408230326.3327878-1-jacob.e.keller@intel.com>
 <4fb6b49e-7301-48ae-94dc-bd4d3c4bea06@intel.com>
In-Reply-To: <4fb6b49e-7301-48ae-94dc-bd4d3c4bea06@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|PH0PR11MB5904:EE_
x-ms-office365-filtering-correlation-id: 0fdbea0a-b280-4b9d-ed5c-08dc5fa27512
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: XmjDrzgglMbJkmqRe4Mm/dhMasGxCjSIUw0CF173ENiHv9OKkVPIH6qPuYEkFnEL8fwy5vJDQWZHhYG9v4ZUl+lilN9w0xp2cNnGIqit7mfN7JxScherXBkNohZ5kxYGfOG5YLE2SDC5SVgCotFgzLmzGeHfgTliQu0asz4K+lRpT8ZF5wVE7PoyvoZAt0j2JeZhSt7jnbPZF5ZJkZoXZAYdNgQHLaXQmNiM2PK5U13SiNjic3xJ0ZGsVBRETwHKu+K8SwQLhHT3YkUcoBk8HGmavVh/tytNpGtBj8zcflL6xGZALRhTLjEDSvIElIw/4FG9KzUhJAlEuwpEG5giRTcPgIXdPikc9P4l/UrwzGtFG6zdupxGe+a5zQRQd8hcgt3/FJutgYNDkFS2hgmStVlqhuUo47xpDIGxQWsrb8mAVi8kCmXeXilJjMCjKXIN2B7Rbymk5mKecGvCdVtDCeeGY+jqLw/Mi8lOSNEubZ30YhKw4EDRK5gM89ONe7L2SZqVSV6q+M5a3YG28DhVDjs0zqC1XaQjBw9mtS4UAoVvOZvxzpMdYKtM+IBPWXm1iMPXaFCjMR/4hkiukkMz/WwPQq6XDFFGfT1LSVdl7KyxhRl46kkGBCYEVwJIawVKvFQMiB7f5qkHcSifodLbvhnE4tOiY0/LIvoabpxWTTls90phVLpE7lsXhX7639fdz1TWVuBRjcejp53JOCGoWw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NjZYNHFnZkJkQjZ1SnplWjN3dDVyZC9OTEVKTU8vc3lPR3dnQ20vT3NmSURL?=
 =?utf-8?B?SWI5Rk1SMG16U3hNeWpoYnZEelIvQUtvVU5GZ3hXcnR3S20zNlBuL2UzSDQ2?=
 =?utf-8?B?bmlvRVhZczNDY2E3dmNtbmk2MStyV3QyUURzS2ZycXJVOEZiSGZ6ZlZrS2VO?=
 =?utf-8?B?Y05CTnJmNUp3Tk0vOW1CTzdSd3dybTVZU1RiNDVGNy9jVEQwZXpqTmZ3eGta?=
 =?utf-8?B?WjM3Q2VWdSsrZzBrcUVrSXg3a0pObVB0bmErd3VvTmEvWHozeHFDKzl2dll6?=
 =?utf-8?B?cHlBM1ZYT0xoZDE1YkRQeFNENjRKNTdmTkFWdXA3czZuTDN1eTlaNStQRVRt?=
 =?utf-8?B?UWw1U0dsZy9qZDk5WEd0MGloNjhGSUdFK1hpOEdjNUgrbFczU3lTdUJYNCti?=
 =?utf-8?B?YjZlaFhSeERtN0NtcGFSUXFYWGx1SnBkQTkxUzNjUnBEZ1N2Znd2S3VLV1Nw?=
 =?utf-8?B?V3ViOW9TQksyUzZHOCs5QVVpSGNhWXlzb1FNRUgwQXJ5Wm90aForbzhmdnNZ?=
 =?utf-8?B?eGJoYTFza0RmaDNPWnA3VUExeVRSUXY4WmorM0hqYXRNVlBnMjdvSk8vZnFV?=
 =?utf-8?B?SlpuWCtxVnZtYi8vOUR3dzdvTWdKdzFXMDNlMVdRaU1wK3NPL0t3VEVXbjJm?=
 =?utf-8?B?YURYdmx1VmU4VjJiQnZCMTMrYTg0RnNodEE4M3pIMWxZOGFlYWFFMWJoY2lF?=
 =?utf-8?B?WFNSSmd1ankxUzJYNm5JTSsyS2p2Um1NaG5MUFVxbzVUOW1iaUlqYVl4L1Yz?=
 =?utf-8?B?cUZhYXFJcVVLeDJVWGx2SUpLUUJ1WStBNzl1SEdiYmVvVjkyc3FNUGlkZzIr?=
 =?utf-8?B?TTQvSGZTdWZLWFdwbU80U081ZHMyK0lWNFlOa2JhQUFQQTVOTDRUc2JQTXRn?=
 =?utf-8?B?ZGVMdDRiaVZUYi9VU0c3ckdqdzFiRDVRcDZUaVBzZ2dyWENyZW5hVllTRTNU?=
 =?utf-8?B?R2ZQMmYvVTVxbGtyWXBoV0RyWSs2TiswYmZJZENGUFR6eWgrKy96RXVTeDlF?=
 =?utf-8?B?QlRoZmk0c0t4TUhEY2VabUZndjExQjRzUHZ3cGVOeVdxVnM5MGVCd00wbTZa?=
 =?utf-8?B?eHVzL0J5dGJSRkZweUNQRnVEU0JtdFFVU3l5MjFjTk1jYXNhczBaZDVUVE00?=
 =?utf-8?B?TDJoeVZNSXhwWkFDSW15Sm1JcEFzNUsyYm9Pb1RYMHpjQmQyalhDRWhTMC82?=
 =?utf-8?B?UExDaVZUQmZkc1JmdTZLSmI5eWxPazJDS3o1ME4zRnh1TmxWY21RelM0Z2o5?=
 =?utf-8?B?UWpiL1E5U2VNZzZGbk50QmhzUjgxZGtvMDgwaWZJTHNFWkcyWFZ6Q1NvS0sr?=
 =?utf-8?B?MGNHUVY1OXZkMnVTb1dTZDAzQ2YwbUNCZk1Gb2ZxS2pYUTNuOThkallaWFVs?=
 =?utf-8?B?WlVEbENBb21DckhkK201YjFCTWo1NEQ2Y2FLV3BIMUdsVVF1dmN3TDR4R0dC?=
 =?utf-8?B?NE5idEVWenFFREVDakxWM29yWmRpRzFFS2U1YXFGbTVtNGxvYTRmWm56QkRE?=
 =?utf-8?B?WTQzanBXV21sdlNjY1BpdVMvZjdacjdlNmI4NnducVpyV25iN0VwZ2pKSTVu?=
 =?utf-8?B?N2s2L3lEc1AyVWp1aHJudHRUVGlmWlRnR0tRSFU1by80T3hTVDEwZnliV1Fj?=
 =?utf-8?B?ODFqRmhWOFZqZTZEK0t0RC9TWDhFaG12ZDBOdEZmTHFGWGluTFNkNENGSXNP?=
 =?utf-8?B?WndCNDRLdXJ2VUR0QjNYbis0QnpOQVdNbkhmdHowNFdUZW9zdUFRZVg4OCtu?=
 =?utf-8?B?U0lpR3RmeTZXNGlFMWFuZjZmam1kMk5DNWl2USt0R2U4T0RCdDdGTmNLdTU5?=
 =?utf-8?B?SkEwLzJEd1k0MEFvZG9IY053UjBaMStRTTlBWHNFVmZEY1g1OHBFdUtUWGNE?=
 =?utf-8?B?alkxdmllVitRTm1YVEhtWlRFQ3BhSkFGQityTmI2NktYZCtVSHpPQVdHeC9T?=
 =?utf-8?B?cVI4bFZCSGUwVEVBb29UQXZpUm9ZQmo0d051Z0dtK0NoVC9UcmppYVczNnh6?=
 =?utf-8?B?UXk4bTE3V1pIdVJvQWhsMzJ5bndwN1ozVzk0Nk1HbHNkeVJXSkRTNk1rQXZj?=
 =?utf-8?B?UnY3ZWV6WTErMzY4eWFQRU1Xb2NXQmY3WllXQlR0STllemRuUWlPam1DUEVw?=
 =?utf-8?Q?VET0mHj/7TNbEw4kuv1HBbTPA?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fdbea0a-b280-4b9d-ed5c-08dc5fa27512
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2024 12:24:13.1954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Cj0SFo0HaH+k+MwanEFUWk2aiynqv67jpj9fEI5PEgX95WNI6o8kfo6R68uszEhxbiup7sjC3WcseWyvVGbPM1xPOSBQ3IuHwEhIGibMNw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5904
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713443057; x=1744979057;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/Lp+ogUzUo8hQ3Sv8su/UQf2atC0DML68aNYUI8n2DU=;
 b=VXKmo01Pir4oYXvpa+n1jwcTBesKKrjxAvthHdc+kWBaaqjRKNKgAcbF
 Bap7iBrlxjiwFy5PrCCHdlyK9Q/VciPOkkfWAogcm+ndacPHi+AnM3spK
 7CwsHtw2ILi0bGWbdRo1yZTGioWZEolTXtofjKw7GkEmD5XEEfsZFMSqE
 mkqay1peLqMdrBWUM3Pee4V9oaBrpMfZpJtelU4SqB+mcmTz3lZOGowd5
 a+Qzyfxjdz8gmB5fuk71r/eKvMRnjHO5TVEcPwlQFnX/Epo7qqcMuaX3A
 vvqku+8im1/Dwmvc28drfICydWfkwf1BGbtxX9y+/lO9DwcP/K315935w
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VXKmo01P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix LAG and VF lock
 dependency in ice_reset_vf()
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
Cc: "Ertman, David M" <david.m.ertman@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBQcnplbWVr
IEtpdHN6ZWwNCj4gU2VudDogVGh1cnNkYXksIEFwcmlsIDExLCAyMDI0IDI6MjkgUE0NCj4gVG86
IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgSW50ZWwgV2lyZWQg
TEFOIDxpbnRlbC13aXJlZC0NCj4gbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5ZW4sIEFudGhv
bnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+DQo+IENjOiBFcnRtYW4sIERhdmlkIE0g
PGRhdmlkLm0uZXJ0bWFuQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1s
YW5dIFtQQVRDSCBpd2wtbmV0XSBpY2U6IGZpeCBMQUcgYW5kIFZGIGxvY2sNCj4gZGVwZW5kZW5j
eSBpbiBpY2VfcmVzZXRfdmYoKQ0KPiANCj4gT24gNC85LzI0IDAxOjAzLCBKYWNvYiBLZWxsZXIg
d3JvdGU6DQo+ID4gOWY3NGEzZGZjZjgzICgiaWNlOiBGaXggVkYgUmVzZXQgcGF0aHMgd2hlbiBp
bnRlcmZhY2UgaW4gYSBmYWlsZWQgb3Zlcg0KPiA+IGFnZ3JlZ2F0ZSIpLCB0aGUgaWNlIGRyaXZl
ciBoYXMgYWNxdWlyZWQgdGhlIExBRyBtdXRleCBpbiBpY2VfcmVzZXRfdmYoKS4NCj4gPiBUaGUg
Y29tbWl0IHBsYWNlZCB0aGlzIGxvY2sgYWNxdWlzaXRpb24ganVzdCBwcmlvciB0byB0aGUgYWNx
dWlzaXRpb24NCj4gPiBvZiB0aGUgVkYgY29uZmlndXJhdGlvbiBsb2NrLg0KPiA+DQo+ID4gSWYg
aWNlX3Jlc2V0X3ZmKCkgYWNxdWlyZXMgdGhlIGNvbmZpZ3VyYXRpb24gbG9jayB2aWEgdGhlDQo+
ID4gSUNFX1ZGX1JFU0VUX0xPQ0sgZmxhZywgdGhpcyBjb3VsZCBkZWFkbG9jayB3aXRoIGljZV92
Y19jZmdfcXNfbXNnKCkNCj4gPiBiZWNhdXNlIGl0IGFsd2F5cyBhY3F1aXJlcyB0aGUgbG9ja3Mg
aW4gdGhlIG9yZGVyIG9mIHRoZSBWRg0KPiA+IGNvbmZpZ3VyYXRpb24gbG9jayBhbmQgdGhlbiB0
aGUgTEFHIG11dGV4Lg0KPiA+DQo+ID4gTG9ja2RlcCByZXBvcnRzIHRoaXMgdmlvbGF0aW9uIGFs
bW9zdCBpbW1lZGlhdGVseSBvbiBjcmVhdGluZyBhbmQgdGhlbg0KPiA+IHJlbW92aW5nIDIgVkY6
DQo+ID4NCj4gDQo+IFsuLi5dDQo+IA0KPiA+IFRvIGF2b2lkIGRlYWRsb2NrLCB3ZSBtdXN0IGFj
cXVpcmUgdGhlIExBRyBtdXRleCBvbmx5IGFmdGVyIGFjcXVpcmluZw0KPiA+IHRoZSBWRiBjb25m
aWd1cmF0aW9uIGxvY2suIEZpeCB0aGUgaWNlX3Jlc2V0X3ZmKCkgdG8gYWNxdWlyZSB0aGUgTEFH
DQo+ID4gbXV0ZXggb25seSBhZnRlciB3ZSBlaXRoZXIgYWNxdWlyZSBvciBjaGVjayB0aGF0IHRo
ZSBWRiBjb25maWd1cmF0aW9uIGxvY2sgaXMNCj4gaGVsZC4NCj4gPg0KPiA+IEZpeGVzOiA5Zjc0
YTNkZmNmODMgKCJpY2U6IEZpeCBWRiBSZXNldCBwYXRocyB3aGVuIGludGVyZmFjZSBpbiBhDQo+
ID4gZmFpbGVkIG92ZXIgYWdncmVnYXRlIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxs
ZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogRGF2ZSBFcnRt
YW4gPGRhdmlkLm0uZXJ0bWFuQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmZfbGliLmMgfCAxNiArKysrKysrKy0tLS0tLS0tDQo+
ID4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiA+
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmZf
bGliLmMNCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmZfbGliLmMN
Cj4gPiBpbmRleCAyMWQyNmUxOTMzOGEuLmQxMGE0YmU5NjViNSAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZmX2xpYi5jDQo+ID4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92Zl9saWIuYw0KPiA+IEBAIC04NTYsNiAr
ODU2LDExIEBAIGludCBpY2VfcmVzZXRfdmYoc3RydWN0IGljZV92ZiAqdmYsIHUzMiBmbGFncykN
Cj4gPiAgIAkJcmV0dXJuIDA7DQo+ID4gICAJfQ0KPiA+DQo+ID4gKwlpZiAoZmxhZ3MgJiBJQ0Vf
VkZfUkVTRVRfTE9DSykNCj4gPiArCQltdXRleF9sb2NrKCZ2Zi0+Y2ZnX2xvY2spOw0KPiA+ICsJ
ZWxzZQ0KPiA+ICsJCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJnZmLT5jZmdfbG9jayk7DQo+ID4gKw0K
PiA+ICAgCWxhZyA9IHBmLT5sYWc7DQo+ID4gICAJbXV0ZXhfbG9jaygmcGYtPmxhZ19tdXRleCk7
DQo+ID4gICAJaWYgKGxhZyAmJiBsYWctPmJvbmRlZCAmJiBsYWctPnByaW1hcnkpIHsgQEAgLTg2
NywxMSArODcyLDYgQEAgaW50DQo+ID4gaWNlX3Jlc2V0X3ZmKHN0cnVjdCBpY2VfdmYgKnZmLCB1
MzIgZmxhZ3MpDQo+ID4gICAJCQlhY3RfcHJ0ID0gSUNFX0xBR19JTlZBTElEX1BPUlQ7DQo+ID4g
ICAJfQ0KPiA+DQo+ID4gLQlpZiAoZmxhZ3MgJiBJQ0VfVkZfUkVTRVRfTE9DSykNCj4gPiAtCQlt
dXRleF9sb2NrKCZ2Zi0+Y2ZnX2xvY2spOw0KPiA+IC0JZWxzZQ0KPiA+IC0JCWxvY2tkZXBfYXNz
ZXJ0X2hlbGQoJnZmLT5jZmdfbG9jayk7DQo+ID4gLQ0KPiA+ICAgCWlmIChpY2VfaXNfdmZfZGlz
YWJsZWQodmYpKSB7DQo+ID4gICAJCXZzaSA9IGljZV9nZXRfdmZfdnNpKHZmKTsNCj4gPiAgIAkJ
aWYgKCF2c2kpIHsNCj4gPiBAQCAtOTU2LDE0ICs5NTYsMTQgQEAgaW50IGljZV9yZXNldF92Zihz
dHJ1Y3QgaWNlX3ZmICp2ZiwgdTMyIGZsYWdzKQ0KPiA+ICAgCWljZV9tYnhfY2xlYXJfbWFsdmYo
JnZmLT5tYnhfaW5mbyk7DQo+ID4NCj4gPiAgIG91dF91bmxvY2s6DQo+ID4gLQlpZiAoZmxhZ3Mg
JiBJQ0VfVkZfUkVTRVRfTE9DSykNCj4gPiAtCQltdXRleF91bmxvY2soJnZmLT5jZmdfbG9jayk7
DQo+ID4gLQ0KPiA+ICAgCWlmIChsYWcgJiYgbGFnLT5ib25kZWQgJiYgbGFnLT5wcmltYXJ5ICYm
DQo+ID4gICAJICAgIGFjdF9wcnQgIT0gSUNFX0xBR19JTlZBTElEX1BPUlQpDQo+ID4gICAJCWlj
ZV9sYWdfbW92ZV92Zl9ub2Rlc19jZmcobGFnLCBwcmlfcHJ0LCBhY3RfcHJ0KTsNCj4gPiAgIAlt
dXRleF91bmxvY2soJnBmLT5sYWdfbXV0ZXgpOw0KPiA+DQo+ID4gKwlpZiAoZmxhZ3MgJiBJQ0Vf
VkZfUkVTRVRfTE9DSykNCj4gPiArCQltdXRleF91bmxvY2soJnZmLT5jZmdfbG9jayk7DQo+ID4g
Kw0KPiA+ICAgCXJldHVybiBlcnI7DQo+ID4gICB9DQo+ID4NCj4gPg0KPiA+IGJhc2UtY29tbWl0
OiAzY2EzMjU2Y2RlNTk2NTczZDA2MGVkYThjNDc3OTk2NDM1YzZkNjNmDQo+IA0KPiBUaGFua3Ms
DQo+IFRlc3RlZC1ieTogUHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwu
Y29tPg0KDQoNClRlc3RlZC1ieTogUmFmYWwgUm9tYW5vd3NraSA8cmFmYWwucm9tYW5vd3NraUBp
bnRlbC5jb20+DQoNCg0K
