Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFRAGMuL12mVPggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 13:21:47 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A6C3C99A9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 13:21:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AC8560FF4;
	Thu,  9 Apr 2026 11:21:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GiQVV6OFkdpO; Thu,  9 Apr 2026 11:21:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A179960FCD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775733704;
	bh=iBqLGhRVrS9u1XjDL8c7foLFFrzc6qTm9HEOlK5r2QI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q9Xzqx2+S9ocWrDUZ763MWxwuTQaVYG4CsEC8PgCtMZ81iUFCRy/quTNHjJfoUUHP
	 u7Jpak6HX0+h4pNsO73hKsbLlnREg71ThTsTucl8ZESefFIOigP0UtsZsE77VBTNvH
	 aEqdXZhLAjrhr1L5Lgd1re7CQZbkxFbYqfKCB2mzEdZjfpAV+XRHnfUmJN/8feC5Vb
	 0XYck1SjvzDMpd2Jl9ULvy9bmckTRlsX9IKPj4LlFw2iXw3uUMLxr/To0YfnF5X/wf
	 KNHwYy55pAZq4FfeLtdFFdryRy701+Opnlgz3uke6s0RUQKOW1n8YiyeJ2PwGgvZmA
	 2YbMkEJTaNjig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A179960FCD;
	Thu,  9 Apr 2026 11:21:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8AAA6237
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 11:21:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6FD9F60FBA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 11:21:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y7fAHv72PnxM for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 11:21:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9B68460891
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B68460891
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B68460891
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 11:21:41 +0000 (UTC)
X-CSE-ConnectionGUID: 6sxzfnoPT4aJJRW4EPVhrQ==
X-CSE-MsgGUID: RZKibiF2QJCtvxKH+bKfBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="99363303"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="99363303"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 04:21:40 -0700
X-CSE-ConnectionGUID: ARFV1GnTQty3r6e0CTjGeQ==
X-CSE-MsgGUID: s3Ri2Z17Qt+7mIyWL3Z4Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="225582810"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 04:21:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 04:21:39 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 04:21:39 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.66) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 04:21:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HWTc8iu3gSqZ6z+Wsg//nAit0ePcZa/oscxQt2oa0oGLGFDr8jgnB7hGVAbRtCqACI436nZdj6Jc5Mo5eMA2Rt9CoNPwA/9Bc7Xh8UedeB2/cL+Ph7Apdc7dAOjeNSR0GTOZX6SyDrfE3jID0rexjMwaCObMfisWVOlHzEkly9loKU1JsTXnDh+5aendVrHhKWhbev/TZaCNX99Exrcn5EK06PARx3wl9dS6Fscvj8Y2iyg9l1wbKGO3917DxZI4zgIU7Mryznk+YDDh3RXuyHGN6kK2zfd9FR96XSGbZgymvzJvcdx558GtuPZ9x/1LFT0K7yIEmU/2vsghFQJAxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iBqLGhRVrS9u1XjDL8c7foLFFrzc6qTm9HEOlK5r2QI=;
 b=jcCZCXfrIcMPCXv3fTn3o0wRd27n0ZIFq1rXrc5ErZZ5R0KAfQIu9V+2g50JXHjKExywkVLIvH8cC9ELPztn0iK1hIwNpiDgQKzDa3SRGNwhJVWtJrJoqa6e8nwCTSMtc+hzkZ+Cetick/UqvgFu30y4LA6Yy7UB9EzTnMEAZj2lZ7RWEChSI1g7X6GmIx6nA+L77Mkw5fLtM9SRNl/bdMPyi3mEVn+WxspXIM6x0UaZ6p1xgoG75WqwVLnug2fZ1W5YoLJLHN/olTmS2YsAVi9aUYb7WTpKlmRX6oTW4ZxabZ06JMn8U8B0M5KUDj0/I1KcLhCwlsEdb87Eeb3p+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by DS7PR11MB7932.namprd11.prod.outlook.com (2603:10b6:8:e5::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.11; Thu, 9 Apr 2026 11:21:35 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.20.9769.006; Thu, 9 Apr 2026
 11:21:35 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH v5 net-next 0/8] dpll/ice: Add TXC DPLL type and full TX
 reference clock control for E825
Thread-Index: AQHcwvXi5hF918e07EGu/X9NQPzLLrXS5QsAgAO6hfA=
Date: Thu, 9 Apr 2026 11:21:35 +0000
Message-ID: <IA1PR11MB621925C1718B838147404DC492582@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
 <20260406192312.0f7a2760@kernel.org>
In-Reply-To: <20260406192312.0f7a2760@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|DS7PR11MB7932:EE_
x-ms-office365-filtering-correlation-id: e0f71321-aa72-4c76-a2ce-08de962a28d3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: gd1PyhAcrGREVzrmEa47NRqR+iATjs1dyxr6DSVvN0xNpruPqLJibHADLsXJCJ9qEjdmCAa6xbChSnN78AFFNZe74x3raQNlVxfYCoqtvXexO5tqB5oh8MISok2BycqayivdlYVq6hOTzJnWds5trLrwx8IJkDr2ZPGao0AFIukgNGKlWOSm7vCeu4XvBWO1cWfwyPbYsc4p+8fyIqYvQvVl26A+LSVtaYalRTKrARRitC1QwyPrElquVuTnHorHjrWnZa2JorXxEhEEojXfsdOFdmgF6gELZp+0GHpvKEvbpymgsdvZMoqwD9m7WJQsIzEAjK+w6Y3gTIszO38AcAWBadZ1LW8+sBWrHjCyjBtiA0eAdpaMsvGW9jLb1OyBk0H7Fl7xx1/Uf3gQqy5OgXpyB2WPzsEdXYBWwAqV2KL+HvB+1UqAsCD8z/rCSGeJzzTIdJV2Y1aM0YU0juNLlGtQ4r0f4gF6R76ZGKJ1ahVtXAwJn2U1rCnAzn2WQO5qeUnciuI4Pfz4l9JP+DBnFx2jim/oa6ydhyM7+vnyd1eqeC+alxjjr2TEcrJQjrgGJBkAbTXLFAPZovHTPwI25QJjF1Dq16m0xVMvzKcubbwtWJwKWuUDHr5OtF5mYas5dRsxSWJ7gU7H1oTOYOVYEyMVAjgZiAcPY7KYZjid9EcUoYpdK6BtMK8r/sgLDyZb1jBqtGHv1y12KaUwdiNAhLXrsOmSlShmBgJKLPc1mhcwlBu30XQwVVNco1nyLP3KfpNfiNPWKGZt/jARt0OqNuYc8NbZk3kgbHHrQzujBtI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b1FSNlZ3aSt0NTR6bUhKWFA4elV3M0dzM2RZdmN4ak0rYVZiL20ydEovRDZx?=
 =?utf-8?B?cStYWDlESzJYdkpCNGRaVjNha0htTTJNWXMvN2VBZmxwVjVLQ0l6S3RubnVO?=
 =?utf-8?B?L1YxQ29ELzBuVlVtNjFNNUVpd09LQ29qQjUvekNDc2JpMHdLampaRGVkd3Q4?=
 =?utf-8?B?eG1BZ2k1WlJUNWg4dzdRRGJBdGNwWmFsQzk2R2NQc0VnZXNFaGRWTm9ZVThQ?=
 =?utf-8?B?b3hLMHR4MlNveWxvOExhdnRLa1J0RXAraERTVUxNd096anRSdGg1MWFlaUJr?=
 =?utf-8?B?U29UWW12NDNobGE1WGZBTWRTTHhXdCtrYlFOSWNSanVsa1lEUDMyZmVlNUJi?=
 =?utf-8?B?TnQwMW1EL3BCcDR4emFaY1pFdDVmaTkySWY4NjRLNXlibmxFV21RT2JjQitX?=
 =?utf-8?B?T3YrQWxxQUM4ZWZEc2ZaWTBMOGFWd1Erd25XL2x3bTl4UHAvU3lYSWR2eFVV?=
 =?utf-8?B?d001K2F5R1VvcW5nTm5ZVW5BcnhhbG1GL3hGaTgyTktLZFFwamdUKzIxK0J6?=
 =?utf-8?B?U25lUUh4VEFCbmFEZjh2WmRTaXJmYkoxL2w4OU1hUFg1dFZ4Tmo1TkN5VUVm?=
 =?utf-8?B?NzFJOUdXOExuakxUNzBBSVc5V0dNZysycEhZVkswYXl0c1JWbUdhelBNeHhC?=
 =?utf-8?B?MGZLbzJGMm44TmRHQllZS1JDTzdpUVZrSXd6dUkwQTdJWkhNd2tXSTdjd2xQ?=
 =?utf-8?B?ZGNRRFgyNXdrNFlITm9iQjc2Zk1sSDBRWlZENGhxRENwR25yajcwaTlWWHlE?=
 =?utf-8?B?aVlWQWN5STlIcjNwV0RVNlB5U1ppc0hMNVVWOVdEWlFjaFNGNFl0NzlZU3Fj?=
 =?utf-8?B?d1VsZ3RKb2tqYWF1ZVhiTWZua3Jzam5PRVNsV1RQUldxUTRVWm54OEFCditO?=
 =?utf-8?B?eTZsOXdHazg0M1BTUnB0YlRlbEd3ZXZPbkowWDlrN3VyRHFWbmlKeDZGZHVS?=
 =?utf-8?B?dXJ6RFhlbTNRcjdMSUsyak13TVQyWFRCd3B6RDNOa1ZiSW80VlVQMkFLalFG?=
 =?utf-8?B?b3JTWktxdXd4a2p6cmR1WUM1N3loRW54dlpWbDFHOS83SUhJSlBVZVM3bUpY?=
 =?utf-8?B?UEZtcUxWWmxtZDB3VFF0ZE9KVWlUc1lKUnZmeEJYNUFkZXFKS2NSc3FVcXNy?=
 =?utf-8?B?N29QTFp2RGY1TmUzV1RoOUNGc2diMGxpZENxWDBYSmk1dEE4akZHYWtveXdF?=
 =?utf-8?B?eEtORTk2c0dxSFc5NDQrUWs3aE95Z3pKN29ZT3dWb05PSTZvT1pnL0ZhMldW?=
 =?utf-8?B?em1aaTltY0hQZFZvcEJaL0VlTjc5UkF0M250MFpZQlI4SnZleDFBNTlJamVq?=
 =?utf-8?B?RUlMSzBXcWJHSEROV3ZXcDhwdWJKNU1LTWFFaERmZ1I4RTM5dVBuOC9OZHQ2?=
 =?utf-8?B?TUxHMWFlNXRveGxPdEtuUXl0SzUyS0RnNUlCZDJMOU1VaC9VWE1WVDdmWG5k?=
 =?utf-8?B?SlgwNmVtT2ptdGEwSmR5aVVqaFlKV2hzRVBZQWZlTGdaZ3VIY2h3dXBqOVlp?=
 =?utf-8?B?L2ozdWFxN0FHU3h3dVVYVEpnOEwxRXV6TlR3dkQ5Q2VHU3pyNys2dkhxVGVZ?=
 =?utf-8?B?UnVSbzMxU25MaHNGWGMzUWpackFzMjRZMDFlWDhERkxVZms2MG5mR3ZaOW5X?=
 =?utf-8?B?L2JzaFYya0ZlRGhvVVF6QjE1b2hjMmtnY0hhcnZUZVVKcGRMOXZUWWk0TGYr?=
 =?utf-8?B?ZVZnRllZdWh4M0RyUnBDZDdpQlMzbldqaERROWN1Z3QrK2czOTYxdzBaMXB6?=
 =?utf-8?B?b2FCZW1jRmh6U3EzRHlHajJyUlM3anpmZlF5aEs1ZzVEZCtaak56eFF0Q3I1?=
 =?utf-8?B?UGx2VDdWNzBWWFlHYlNoM3VKOUsyZXY0a3VLaDVIaDJCTTc0U3VuMmZPck5H?=
 =?utf-8?B?SEVadFJIWSsrMmdkVDErWnFUVGMraXQwRTVsVnZIaGZNRlp6VEdOdmlHdUtx?=
 =?utf-8?B?MzZMVGloMXFoczdjRjNNVzYzWXdsaXVhZ0srNmdqUlFrdnltTlMrNlVNWDV6?=
 =?utf-8?B?czFrMzc2SGFlMnFQZm8zV0t2U2p2cjIzank2ekFQNmtBUmQ4WlF1d244SHdm?=
 =?utf-8?B?ZUFUaVltMGExVVEzY0EwTU9kMU5tbWJENkswb0dWM1BGMyt2VkVzSHhLYUdm?=
 =?utf-8?B?SkRDU0tuUkxnNEhSR3BrUzd0bXVyQUdCd1Q3eFh1WVo4V3pnamhUQytEdDBZ?=
 =?utf-8?B?YUh0WkVQOTZ4TFFoRmh4dDVqT2FxMStRZTM2U2hrT1AxWVlJZFVHRi8yRGFX?=
 =?utf-8?B?N3NvWlRaZWRQRktVblhBUUdNZHRRVmh6dW40UVNSQzNTQ1lmNzNUWm0rbVd6?=
 =?utf-8?B?YVJXR0loamNvVDVEb3ZFcTRiQXF2cklHWmIxTHUvTDJNMVR5K3l4UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: sbByyhi0WwhWFuI9BrLvVf84mrFanDVCVfki+IzoD7/w6PxdvAEj8GnPYHIrKqZc713iU6I9raAm9ru0e1997V2oCCTRPwrlHOwSMxdfS7jBhSG8B1zEpcz7kIvKiFRndWjT9WiM3+JyiExwHvnDNTM2NtMLvxwyT2nnaVY+tVGuA5KbOGdcTRPvfWjaJ2bayMEZNleSR84TVuAdHC5RUPWNH7aHV+lDD3G5Vy2diMWo7JfG5hIOZFj8EfIr72ntJ5Hg0FzYI1R0Bdo4DBv7ZYgrr+l7pc0PITM+tsQZTIdupHoSqhQ7ACXee7i3E0FhmKXTbH5MGeEdYdSDzCeWBw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0f71321-aa72-4c76-a2ce-08de962a28d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2026 11:21:35.0499 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2vedWUPzcGLdg68jvrpK1IYah7uK7ESnDEsVMq7TRrXEBWMPUtUsd/hRsmCrgcPuUPCYOypyoSVvURmixs4uMWwyo6V1T0NUpJX7Pwf98pE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7932
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775733702; x=1807269702;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iBqLGhRVrS9u1XjDL8c7foLFFrzc6qTm9HEOlK5r2QI=;
 b=FwhorxKY7co/whoi2XKVOV6hv5viLDuDYsa18vbMazMzwL7EOP09sMDD
 6ZlHVuMBLyzx27+K3sUcUoRFocgHqq5iDGMcZCVOMlQ/FPNPNZddKKIKI
 noSN+3x2A5mdVJaU1iDXyyoE3V6LlSpOc48izooxmwmieZsfitY2eykd/
 savJD/y6rg8WhlzebocFYN2pmxzWGvarnIiwJg6stlaD8+mGC+6TCtiRw
 fv2IDY+0ZvYZ6maMG9znJHHPetA6wlvIFT+iz2x57TjVQ8R2mAaSup4C+
 dpbZABLkF8qClY0uHYfg8phHgRJdY8qR5HjmWHsQqNQCKr3iKHns1FzXb
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FwhorxKY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 0/8] dpll/ice: Add TXC
 DPLL type and full TX reference clock control for E825
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,resnulli.us,google.com,vger.kernel.org,gmail.com,intel.com,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,davemloft.net];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A6A6C3C99A9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFrdWIgS2ljaW5za2kg
PGt1YmFAa2VybmVsLm9yZz4NCj4gU2VudDogVHVlc2RheSwgQXByaWwgNywgMjAyNiA0OjIzIEFN
DQo+IFRvOiBOaXRrYSwgR3J6ZWdvcnogPGdyemVnb3J6Lm5pdGthQGludGVsLmNvbT4NCj4gQ2M6
IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGlu
dGVsLXdpcmVkLQ0KPiBsYW5AbGlzdHMub3N1b3NsLm9yZzsgT3JvcywgUGV0ciA8cG9yb3NAcmVk
aGF0LmNvbT47DQo+IHJpY2hhcmRjb2NocmFuQGdtYWlsLmNvbTsgYW5kcmV3K25ldGRldkBsdW5u
LmNoOyBLaXRzemVsLCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29t
PjsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgUHJh
dGhvc2guU2F0aXNoQG1pY3JvY2hpcC5jb207IFZlY2VyYSwNCj4gSXZhbiA8aXZlY2VyYUByZWRo
YXQuY29tPjsgamlyaUByZXNudWxsaS51czsgS3ViYWxld3NraSwgQXJrYWRpdXN6DQo+IDxhcmth
ZGl1c3oua3ViYWxld3NraUBpbnRlbC5jb20+OyB2YWRpbS5mZWRvcmVua29AbGludXguZGV2Ow0K
PiBkb25hbGQuaHVudGVyQGdtYWlsLmNvbTsgaG9ybXNAa2VybmVsLm9yZzsgcGFiZW5pQHJlZGhh
dC5jb207DQo+IGRhdmVtQGRhdmVtbG9mdC5uZXQ7IGVkdW1hemV0QGdvb2dsZS5jb20NCj4gU3Vi
amVjdDogUmU6IFtQQVRDSCB2NSBuZXQtbmV4dCAwLzhdIGRwbGwvaWNlOiBBZGQgVFhDIERQTEwg
dHlwZSBhbmQgZnVsbCBUWA0KPiByZWZlcmVuY2UgY2xvY2sgY29udHJvbCBmb3IgRTgyNQ0KPiAN
Cj4gT24gRnJpLCAgMyBBcHIgMjAyNiAwMTowNjoxOCArMDIwMCBHcnplZ29yeiBOaXRrYSB3cm90
ZToNCj4gPiBUaGlzIHNlcmllcyBhZGRzIFRYIHJlZmVyZW5jZSBjbG9jayBzdXBwb3J0IGZvciBF
ODI1IGRldmljZXMgYW5kIGV4cG9zZXMNCj4gPiBUWCBjbG9jayBzZWxlY3Rpb24gYW5kIHN5bmNo
cm9uaXphdGlvbiBzdGF0dXMgdmlhIHRoZSBMaW51eCBEUExMDQo+ID4gc3Vic3lzdGVtLg0KPiA+
IEU4MjUgaGFyZHdhcmUgY29udGFpbnMgYSBkZWRpY2F0ZWQgVHggY2xvY2sgKFRYQykgZG9tYWlu
IHRoYXQgaXMNCj4gPiBkaXN0aW5jdA0KPiA+IGZyb20gUFBTIGFuZCBFRUMuIFRYIHJlZmVyZW5j
ZSBjbG9jayBzZWxlY3Rpb24gaXMgZGV2aWNl4oCRd2lkZSwgc2hhcmVkDQo+ID4gYWNyb3NzIHBv
cnRzLCBhbmQgbWVkaWF0ZWQgYnkgZmlybXdhcmUgYXMgcGFydCBvZiB0aGUgbGluayBicmluZ+KA
kXVwDQo+ID4gcHJvY2Vzcy4gQXMgYSByZXN1bHQsIFRYIGNsb2NrIHNlbGVjdGlvbiBpbnRlbnQg
bWF5IGRpZmZlciBmcm9tIHRoZQ0KPiA+IGVmZmVjdGl2ZSBoYXJkd2FyZSBjb25maWd1cmF0aW9u
LCBhbmQgc29mdHdhcmUgbXVzdCB2ZXJpZnkgdGhlIG91dGNvbWUNCj4gPiBhZnRlciBsaW5r4oCR
dXAuDQo+ID4gVG8gc3VwcG9ydCB0aGlzLCB0aGUgc2VyaWVzIGludHJvZHVjZXMgVFhDIHN1cHBv
cnQgaW5jcmVtZW50YWxseSBhY3Jvc3MNCj4gPiB0aGUgRFBMTCBjb3JlIGFuZCB0aGUgaWNlIGRy
aXZlcjoNCj4gPg0KPiA+IC0gYWRkIGEgbmV3IERQTEwgdHlwZSAoVFhDKSB0byByZXByZXNlbnQg
dHJhbnNtaXQgY2xvY2sgZ2VuZXJhdG9yczsNCj4gDQo+IEknbSBub3QgZ3Jhc3Bpbmcgd2h5IHRo
aXMgaXMgbmVlZGVkLCBpc24ndCBpdCBwYXJ0IG9mIGFueSBFRUMgc3lzdGVtDQo+IHRoYXQgdGhl
IERQTEwgY2FuIGRyaXZlIHRoZSBUWEM/IElzIHlvdXIgc3lzdGVtIGdvaW5nIHRvIGV4cG9zZSBt
dWx0aXBsZQ0KPiBEUExMcyBub3cgZm9yIG9uZSBOSUM/DQo+IA0KDQpIZWxsbyBKYWt1YiwNCkZv
ciBFODI1IGRldmljZSwgdGhlIHNob3J0IGFuc3dlciBpcyB5ZXMuIFdlIGhhdmUgcGxhdGZvcm0g
RUVDIG5vdyBhbmQNCndlIHdhbnQgdG8gYWRkOg0KLSBUWEMgRFBMTHMgcGVyIHBvcnQsIGFuZA0K
LSBQUFMgRFBMTCBmb3IgVFNQTEwgY29uZmlnIHB1cnBvc2VzIChpbiB0aGUgbmVhciBmdXR1cmUp
DQoNCkVFQyAoRXRoZXJuZXQgRXF1aXBtZW50IENsb2NrKSB0eXBlIERQTEwgaXMgZGVzaWduZWQg
dG8gY29udHJvbCBtdWx0aXBsZQ0Kc291cmNlIHNpZ25hbHMgKGludGVybmFsLU5JQyBvciBleHRl
cm5hbCksIHdoZXJlIG9uZSBkcml2ZXMgdGhlIGRwbGwgZGV2aWNlLA0Kd2hlcmUgbXVsdGlwbGUg
b3V0cHV0cyBhcmUgcG9zc2libGUsIGVhY2ggY291bGQgZHJpdmUgdmFyaW91cyBjb21wb25lbnRz
DQphcyB3ZWxsIGFzIHByb3BhZ2F0ZSBzaWduYWwgdG8gZXh0ZXJuYWwgZGV2aWNlcy4NClRYQyBp
cyBzcGVjaWZpYyBkcGxsIGRldmljZSB0aGF0IGFzc29jaWF0ZWQgd2l0aCBzaW5nbGUgRVRIIHBv
cnQgdG8gY29udHJvbCBpdCdzIHNvdXJjZSwNCnRoZXJlIGlzIG5vIG5lZWQgdG8gZGVjbGFyZSBh
bnkgb3V0cHV0cyBhcyB0aGUgc2luZ2xlIG91dHB1dCBpcyBhbHJlYWR5IGRldGVybWluZWQuDQpC
YXNpY2FsbHksIGhhdmluZyBUWEMgRFBMTCBpbmRpY2F0ZXMgcGVyIHBvcnQgY29udHJvbCBvdmVy
IFN5bmNFIChvciBzb21lIGV4dGVybmFsKQ0KY2xvY2sgc291cmNlLsKgDQoNCj4gPiAtIHJlbGF4
IERQTEwgcGluIHJlZ2lzdHJhdGlvbiBydWxlcyBmb3IgZmlybXdhcmXigJFkZXNjcmliZWQgc2hh
cmVkIHBpbnMNCj4gPiAgIGFuZCBleHRlbmQgcGluIG5vdGlmaWNhdGlvbnMgd2l0aCBhIHNvdXJj
ZSBpZGVudGlmaWVyOw0KPiA+IC0gYWxsb3cgZHluYW1pYyBzdGF0ZSBjb250cm9sIG9mIFN5bmNF
IHJlZmVyZW5jZSBwaW5zIHdoZXJlIGhhcmR3YXJlDQo+ID4gICBzdXBwb3J0cyBpdDsNCj4gPiAt
IGFkZCBDUEkgaW5mcmFzdHJ1Y3R1cmUgZm9yIFBIWeKAkXNpZGUgVFggY2xvY2sgY29udHJvbCBv
biBFODI1QzsNCj4gPiAtIGludHJvZHVjZSBhIFRYQyBEUExMIGRldmljZSBhbmQgVFggcmVmZXJl
bmNlIGNsb2NrIHBpbnMgKEVYVF9FUkVGMCBhbmQNCj4gPiAgIFNZTkNFKSBpbiB0aGUgaWNlIGRy
aXZlcjsNCj4gPiAtIGV4dGVuZCB0aGUgUmVzdGFydCBBdXRv4oCRTmVnb3RpYXRpb24gY29tbWFu
ZCB0byBjYXJyeSBhIFRYIHJlZmVyZW5jZQ0KPiA+ICAgY2xvY2sgaW5kZXg7DQo+ID4gLSBpbXBs
ZW1lbnQgaGFyZHdhcmXigJFiYWNrZWQgVFggcmVmZXJlbmNlIGNsb2NrIHN3aXRjaGluZywgcG9z
dOKAkWxpbmsNCj4gPiAtIHZlcmlmaWNhdGlvbiwgYW5kIFRYIHN5bmNocm9uaXphdGlvbiByZXBv
cnRpbmcuDQo+ID4NCj4gPiBUWENMSyBwaW5zIHJlcG9ydCBUWCByZWZlcmVuY2UgdG9wb2xvZ3kg
b25seS4gQWN0dWFsIHN5bmNocm9uaXphdGlvbg0KPiA+IHN1Y2Nlc3MgaXMgcmVwb3J0ZWQgdmlh
IHRoZSBUWEMgRFBMTCBsb2NrIHN0YXR1cywgd2hpY2ggaXMgdXBkYXRlZCBhZnRlcg0KPiA+IGhh
cmR3YXJlIHZlcmlmaWNhdGlvbjogZXh0ZXJuYWwgVHggcmVmZXJlbmNlcyByZXBvcnQgTE9DS0VE
LCB3aGlsZSB0aGUNCj4gPiBpbnRlcm5hbCBFTkVUL1RYQ08gc291cmNlIHJlcG9ydHMgVU5MT0NL
RUQuDQo+ID4gVGhpcyBwcm92aWRlcyByZWxpYWJsZSBUWCByZWZlcmVuY2Ugc2VsZWN0aW9uIGFu
ZCBvYnNlcnZhYmlsaXR5IG9uIEU4MjUNCj4gPiBkZXZpY2VzIHVzaW5nIHN0YW5kYXJkIERQTEwg
aW50ZXJmYWNlcywgd2l0aG91dCBjb25mbGF0aW5nIHVzZXIgaW50ZW50DQo+ID4gd2l0aCBlZmZl
Y3RpdmUgaGFyZHdhcmUgYmVoYXZpb3IuDQoNCg==
