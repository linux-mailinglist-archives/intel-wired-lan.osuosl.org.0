Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMVqKER512mXOggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 12:02:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E87133C8DE3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 12:02:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2603860ED4;
	Thu,  9 Apr 2026 10:02:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h5UxYGXwgbK3; Thu,  9 Apr 2026 10:02:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F5F160EDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775728961;
	bh=PA7hJA8sP1e6msFQignsprFdfVto1o240+c+7K7Z0BQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Hfj94vjuCYjPMO9H2pQ8h02nodsgs5kjR9vkdwqSeFBgoaM9w2jg0f06vnZZhl3j7
	 Xw6zeQn9Gx6bhm53i5d95EutCaSAOBv5QeQXBoyTc2ZX504SuAeIt0M+bMKWxIjNC4
	 qCvDpTJ3LIVCOkQ8/msHDRbGa0SQ7E/TEKnA4PZakzUiAXGOc3j3bnv4J/nfVlTabB
	 U0wxguf011149znpz49Ab4Pti+73e19uW7fELU+2Y1E2awjQuyDgusdcEXWLKCoCrV
	 kvhxiKCbT0UCp7q3kUZRsBrJ17/C6FwchTEahYTsjr/MLvFNF/FTmO8k5EGSCYzJFD
	 A5IzPW5opCZzQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F5F160EDB;
	Thu,  9 Apr 2026 10:02:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 21B90237
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:02:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0744760D92
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:02:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ezQUxhNpBMs9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 10:02:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 015F760890
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 015F760890
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 015F760890
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:02:37 +0000 (UTC)
X-CSE-ConnectionGUID: OwjdbMbnQFia+5yNFWFV1A==
X-CSE-MsgGUID: vny8x674QeSn7k6EDeAVGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="94309693"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="94309693"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:02:37 -0700
X-CSE-ConnectionGUID: oX3CxfFXRo6LXWgM9xXieQ==
X-CSE-MsgGUID: SMJdc8K8SrC6X4vNeqeISQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="233623755"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:02:36 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:02:36 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 03:02:36 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.51) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:02:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=esSN6s1fnTv758BL1uNP7Ft9RVUySvrH7HxU/1M1H5FepU2WMfyThzw8y7+FIyTMt1xCu9Qgxmm1gRabKoV8YF6eg0OKaO7YPHyvwGyqyDmUsJrsIRwwv+dtDL3enWEPusgoch21HKCOc5uMb2Q7/jqB98coTqhsi+8Gx541nj+NnP9FoPrFxEjAJkaRYtP5nILLTJQ+d1mheV8co6f/02LWn9r4YXJtL3M/40qNom9eRBjKQQyj8qHvf9MVrpcdGztJIeSp0vf7jjfN33j1b27/+ZHXx5qcK4XXHUjvzrsHK//2lvASwTd7VAJHOeu2fy3Vnm28nF8F04nnYWOCEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PA7hJA8sP1e6msFQignsprFdfVto1o240+c+7K7Z0BQ=;
 b=kj6smAdmQBlBOffsulUJfIATIAovtFurfINTAYJTDhjBjZZblCTX9t4M84egzDk/a5I0eu1zF1IVuHyg0QiztcX+J6VTk+RllFRV5TE4WIZPM7tC17eNmP2y+2DIWibA8uktM2sWRR5Fs7DXF+VmYwZSZJA8XM+fdsYIPDhyvyIfdvdCBoQq5kd4AgtTRvQ6HcUp7ir1QiNyvM63Pk3lPaKTVWxkfy5Yr3+2ao6hV1BjzaaJukvXles6ik2nE8f77mJy7FObBVUCS5LVvpSQjWSuloHfSRBRYHTse1VqhhFOIl371RKoduDvsIFJMgz0hPyeKzth48z+Mee68/iYRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by PH0PR11MB7633.namprd11.prod.outlook.com (2603:10b6:510:26c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.15; Thu, 9 Apr
 2026 10:02:31 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%5]) with mapi id 15.20.9745.012; Thu, 9 Apr 2026
 10:02:30 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Oros, Petr"
 <poros@redhat.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: Paul Menzel <pmenzel@molgen.mpg.de>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S. Miller"
 <davem@davemloft.net>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] iavf: fix wrong VLAN mask
 for legacy Rx descriptors L2TAG2
Thread-Index: AQHcuq4mJuN6zWaFo0Oiu7ZWSm74qLW8vicAgBncXoA=
Date: Thu, 9 Apr 2026 10:02:30 +0000
Message-ID: <IA3PR11MB89850E71703C62523CB0F0EC8F582@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260323101558.1477593-1-poros@redhat.com>
 <734bbc85-2209-4b6c-913e-e3637532e315@intel.com>
In-Reply-To: <734bbc85-2209-4b6c-913e-e3637532e315@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|PH0PR11MB7633:EE_
x-ms-office365-filtering-correlation-id: d00926c6-3d0f-4fa0-9d86-08de961f1d0e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: bcVKLBUM7nuFOkloWNXDKaAY6hBM1UdGs8Oc2oB355963Ehh4DlBD8Sij42UGf2LCNZd+VdyxxcamKhcKBRTW9DvZ+vF74Prrq3fYlgwTEVWOeCQo7Uxll+6zf0l5bbmC2ka+TjDRva0UfkGbSbtXnKCdQJJb2S5/Ai2xZdGW8qTPMkHNwGdZAePqWt6WrSpn7Usqh9zay6EoCWkJatgwgTAAzVnH2MuvzAWAc3OD5PFjJuggDOtJtLYB+WRK+M+TZksw/VR8O08+cWJ7IdrhGNGZzhGJq0cOb7CEiDwSwKDLTXIn95oOCCtFbbfF3GF+OpPNQs65NNdlf8gzV+d0jepVvf/QAfPpQHuQvUJpmKKqfUwlnGTJISKzockL4MV/+Jp7pgyDOixFUljQCRL1Rxr6GID5ttQUqbU4kkypW/6/n9RQm+7y5OmreFGlH4TPY4JRLnY0RDVpUJjmUMlPwR8o5kaW5hMLvje1iUHezpt/KdhIoyIYsOugtHGBPiZttCzXql8G1N+Ri0/LlH8ZaKw8Rmccw9Mpb0OTBeZt3E1FLDc5Liks3KpldhiAUHtc1LN/GoNutEvE5qU978kEajRoT+yjJlNRW5roInOgR31h7etmLGhbPRQWTd5k5mYROKM3iCOCdSdpMPa2qFg/qn2i79DWr0aihNOt/ja0a66pP8JfiSu/ohZqBb2T64mj6t5NJDvQOubunMLfgSZNtw4F6z5O0yGZR4+Zd7kUi0EBXR3mbaUjQoNSrU8+TAbk8ALOoOggairRikF3qlEuz7Buwec0PvW9fETQ6BdcmI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d2UwaEowUHlNM05sVkxSTEZrZVN4TFM1a2RJakY5Z3QwTzlaK3VBTlVBM3py?=
 =?utf-8?B?cW8wd0IzNk5aa3BrSm9ualFsZXRseDBST283OERDYlpHWndSOHRZOW4wd29x?=
 =?utf-8?B?dk1Da3pPeDRZbWtXVTBJcTVRdm51RmZsZFVTMzh4QlpJN2FvNGU1Rlk5Rk1I?=
 =?utf-8?B?VmJkd2FyREcxYlYzbmNOVnYwVXJUMFhSOG9CUGlhbEh1dW15dGNnakJEWVNz?=
 =?utf-8?B?MmFuTk1EZVhaWnBPazJsTEcwdHRqSlpGVnpzdmFuWG1aKzUvOGJWdmxTSFE5?=
 =?utf-8?B?bk9KRDJmZ0NzR1hWOFAxTWRTWU5mbFdUekpaMDlzTmZjV01qNGcwUWNDTjRz?=
 =?utf-8?B?WlMrVmZlVGRsZU4zSzZrSVBTdlhpWTRGMDR3UkVtTFI2NXJ4VExKS0lVS1ZB?=
 =?utf-8?B?VGxlSEMrL0NVNjZ5ZlgzWWFkSmNpejA2VGxTOGowU0ZtRjNnUDlpZUs0c0xQ?=
 =?utf-8?B?SVVtMnVmK1kwdzNxbFV6MFVybGFXR1RuQ0x5OXNmM1RaZzZ1TExUNjd6U2Zo?=
 =?utf-8?B?Yys5UmdDbCtWbGcrd3BOTitsWXMzcUZNRkFraEpkZzd4Z2lSdldURUUrOVY0?=
 =?utf-8?B?dDJhdklkQjNVRGl1Y1BWMVh2bmJRbjN5aGxSalRnbWlvd3FORCszSmNTakhC?=
 =?utf-8?B?aTRRZnoxakZLaXFWbUtmNmwyU2k0N2VUVmNVaW5SU21EQ3RkMnp0MkZ3eWpl?=
 =?utf-8?B?SVc3UDQxVDMvSlcyR3hxRTV3NEs3OTFoWmM4bHVNOGZ0TkRYZEJYa09McmMr?=
 =?utf-8?B?dTBEYzNweHhUak43b3ZGS3JiYnlmTVRlY1dXNUoxa1JOWE1GdE9sOUY4bE5R?=
 =?utf-8?B?TGtQNHVhNXFaZWovNjQzd2tJMkZnTWZDSXo4RmxHb2UvQlllckhtcnZNTTlX?=
 =?utf-8?B?cGlyZ0hpWG5iRThIY1UwODAvbjBZVnl0STZwM2FSbUpBUys0YU12MDlFNysx?=
 =?utf-8?B?YkdCa1puN2pvRVMrMnJJN0k5djhycHNEYldUSytJaHNWT09LeWpRdFNSNGFr?=
 =?utf-8?B?eCtxUUltR2hVSDk5NDFUdkVTaEgvRFpmMTBwOTRTZHhyUW5aN080S0UyK1Q2?=
 =?utf-8?B?NzRYbU1USVJ2Tmd4MVRnMkFCL3FHMk5BSGkyNTh3QzlWdkZJSXNKMlFnQzR0?=
 =?utf-8?B?UDNDeWsyTS9jd0hZV3lRRkl1RjBEd1dVbFloTVRpaHUwVE9HemFaalZkbTM0?=
 =?utf-8?B?a1RPVitvcXB2dlAyZElIQ284NjJueGMvVE1nTmZ0U1lVU0FpeExQUVlEbWIr?=
 =?utf-8?B?c3djOEhSQ2F3cTVqWDdiazh2dUlCd0J4Yzh0N3p6UnNYSmVNZUw0ZHJhZTZn?=
 =?utf-8?B?Mk5rTjNlR0dvaWduWE43R0ZMUlFxQUlrVEdpcWhTNUxyanFoeHJtWE9MTUtE?=
 =?utf-8?B?bE01U3FWUkszTmc1TlBTdC8vOW5DaElTT1VpTzQ2T0lzbTdDcHI2dHdzY2lT?=
 =?utf-8?B?ZHMrMTFzTU9qakJRZ0xKK1d0cTVWd20xTENkekxMYkZVL2JjdGcrakRoa2t2?=
 =?utf-8?B?VVppQ04zOXIweWZmVjFaR0hLbTl0WU1oU2VlK0JTdDFvMi8vWWZqWndLQi9Q?=
 =?utf-8?B?dXRoSmFUN01YdGxMV2x4cWJ2RytzMUJUK0VmRjNRRFZKL0p2bEFQeDNKY1Rz?=
 =?utf-8?B?dllIcjdhc3BDYUl2U3JRRHhnbFNGd0RrUzNCZC9rRUJaNVZJTHVmUTVXWFBs?=
 =?utf-8?B?K2c0WjBvY2dnNjYxSkpYWHFmcXhHczhRKzFUL29Pbzdvem43TS9OdzF6NlNm?=
 =?utf-8?B?M2hYUXdQT2Y4c0hvallMSkVONzRqYy9HZHMzVXc0NktmbktPakgvenZDVTNs?=
 =?utf-8?B?WWhiRVZ2UWNRN0l5TjFsdEhwY3NScWhRTXBsVDFnZkZDaG52a0xadWlKakww?=
 =?utf-8?B?LzNya0dmZEMrY1kyVUdVdm9hckdzaG1nbUVYR3o1TkY1aGp2dVc2c29EU2Ro?=
 =?utf-8?B?a2UxMSszTHA3eUI4cVA3MitucHVaRHlleHRTU0h4MU1qVkJsbUZIMmpyWEZQ?=
 =?utf-8?B?WXpwMDFqR1pEcWJCWHV1emFzSlgrSE1DdjVPNVp6d3pLVXZPa3haUDR0UFl3?=
 =?utf-8?B?UXlPWUhTbUxjL1lKak1nMkltdlVmbnY1OUZ4Z0hYYTdkZmpPK3BaQndkaDFX?=
 =?utf-8?B?Z1FHcnFOb2psTGE1U2RMcklVVlU0RnN2ZHhlVFRQOEZCbk5ucXBjWUtpeVYr?=
 =?utf-8?B?bGxJK0lncXlEckI0UTVPOTF3VWFVdzE5VWtLdVFWOEJSck1NVG4vNmtTYyth?=
 =?utf-8?B?aVhPK2JpMTgwVGZ6ZGpJcGw1YjFrRXhiRWhBZ1I2ZDRyZU5WTzAxV3J6MTdr?=
 =?utf-8?B?Z0R6RThmcUZ0REJOR1NRUndPVmZObGp1dXVlMU9pa2NFbU93NURGdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: qLTSgFjiVb7Jq4CuiSvuJI0k+Nq9Dfvg3dZWa5ulhL0HyqOexVeoRryiRJCfZSKmf+FL3Tqr9SZshIonFD9djLP+ctGGhYU11ioU1WNUzuNlSbcT/s2fDm3ZGHh4LsW/SS8HUa+GBCkyduDx7I+Rj+eXtZvWnXcwRb2X8usLNLEmtmPKBe2lxahxRSDORATLxYR36CyJ/IL7KZBX0MWW7bRFO4773SWR8FjFSMrI5JSwbCZ1ZNiiixpJz0Mg+GsNB6gOARzhxtwWSfMNtw45HdZ04GxyNip0Nd9o3uTs43y54cDak0sEmcagHWQuIyM9nR9InLvOihlmH9URDNP6Fw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d00926c6-3d0f-4fa0-9d86-08de961f1d0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2026 10:02:30.8225 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kKnkSJ7d10orASZyV0U2+/keGO+QhRjIbm1W6/8sMQDubM3frJgio+DQixNgz5dRvoxelUug2P+NWQxEOjsy4HyN+vL/X2DT7uyN+/ksyK8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7633
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775728959; x=1807264959;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PA7hJA8sP1e6msFQignsprFdfVto1o240+c+7K7Z0BQ=;
 b=F1fi05KMhTiWF/NIwVIcHNK+x/iI68wQQMU3PNtRFfPyK/ETtv1ge//5
 no7fjNriSHBxG5oNDW3XXa4qWu6sVvZ0r9xCqMzFqTUPj7esWhUlCv9fk
 m2wsb+JkXuxnwHw/e+PtpWwrLFJUKmTrJgY/PqpoduPfYtvecKHaDcc7O
 qXk5k3D1KCFBieCFOx+ulBjnQMN351f8mrJsRCNrlq6zzMeaEKMN2iSga
 gHfA1VpdJ6xpCtCU+mzb9DVE+vESRUfOhOj4zxl8+/ids8j3OXZ7aZCkL
 LxuZzmXB5hISkb7UCn+K6FbEU2PXaym6gt5lwmbuAQJqUP43wyejj6Ddl
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F1fi05KM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] iavf: fix wrong VLAN mask
 for legacy Rx descriptors L2TAG2
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
X-Spamd-Result: default: False [2.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:poros@redhat.com,m:netdev@vger.kernel.org,m:pmenzel@molgen.mpg.de,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:mateusz.polchlopek@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E87133C8DE3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYg0KPiBL
ZWxsZXINCj4gU2VudDogVHVlc2RheSwgTWFyY2ggMjQsIDIwMjYgMTI6MDcgQU0NCj4gVG86IE9y
b3MsIFBldHIgPHBvcm9zQHJlZGhhdC5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnDQo+IENj
OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPjsgS2l0c3plbCwgUHJ6ZW15c2xh
dw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEVyaWMgRHVtYXpldCA8ZWR1bWF6
ZXRAZ29vZ2xlLmNvbT47IGxpbnV4LQ0KPiBrZXJuZWxAdmdlci5rZXJuZWwub3JnOyBMb2t0aW9u
b3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+Ow0KPiBBbmRyZXcg
THVubiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhv
bnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgTWF0ZXVzeiBQb2xjaGxvcGVrDQo+IDxtYXRldXN6LnBv
bGNobG9wZWtAaW50ZWwuY29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBh
b2xvDQo+IEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1A
ZGF2ZW1sb2Z0Lm5ldD47IGludGVsLQ0KPiB3aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBT
dWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXQgdjJdIGlhdmY6IGZp
eCB3cm9uZyBWTEFOIG1hc2sgZm9yDQo+IGxlZ2FjeSBSeCBkZXNjcmlwdG9ycyBMMlRBRzINCj4g
DQo+IE9uIDMvMjMvMjAyNiAzOjE1IEFNLCBQZXRyIE9yb3Mgd3JvdGU6DQo+ID4gVGhlIHJlcHJv
ZHVjZXIgcmVxdWlyZXMgbGVnYWN5IFJ4IGRlc2NyaXB0b3JzLiBPbiBtb2Rlcm4gaWNlICsgaWF2
Zg0KPiA+IHdpdGggZnVsbCBQVFAgc3VwcG9ydCwgZmxleCBkZXNjcmlwdG9ycyBhcmUgYWx3YXlz
IG5lZ290aWF0ZWQgYW5kIHRoZQ0KPiA+IGJ1Z2d5IGxlZ2FjeSBwYXRoIGlzIG5ldmVyIHJlYWNo
ZWQuIEZsZXggZGVzY3JpcHRvcnMgcmVxdWlyZSBhbGwgb2Y6DQo+ID4gIC0gQ09ORklHX1BUUF8x
NTg4X0NMT0NLIGVuYWJsZWQNCj4gPiAgLSBWSVJUQ0hOTF9WRl9PRkZMT0FEX1JYX0ZMRVhfREVT
QyBncmFudGVkIGJ5IFBGDQo+ID4gIC0gUFRQIGNhcGFiaWxpdGllcyBuZWdvdGlhdGVkIChWSVJU
Q0hOTF9WRl9DQVBfUFRQKQ0KPiA+ICAtIFZJUlRDSE5MXzE1ODhfUFRQX0NBUF9SWF9UU1RBTVAg
c3VwcG9ydGVkDQo+ID4gIC0gVklSVENITkxfUlhESURfMl9GTEVYX1NRX05JQyBwcmVzZW50IGlu
IEREUCBwcm9maWxlDQo+ID4NCj4gPiBJZiBhbnkgY29uZGl0aW9uIGlzIG5vdCBtZXQsIGlhdmZf
c2VsZWN0X3J4X2Rlc2NfZm9ybWF0KCkgZmFsbHMgYmFjaw0KPiA+IHRvIGxlZ2FjeSBkZXNjcmlw
dG9ycyAoUlhESUQ9MSkgYW5kIHRoZSB3cm9uZyBMMlRBRzIgbWFzayBpcyBoaXQuDQo+ID4NCj4g
DQo+ID4gRml4ZXM6IDJkYzhlN2MzNmQ4MCAoImlhdmY6IHJlZmFjdG9yIGlhdmZfY2xlYW5fcnhf
aXJxIHRvIHN1cHBvcnQNCj4gPiBsZWdhY3kgYW5kIGZsZXggZGVzY3JpcHRvcnMiKQ0KPiANCj4g
U3VyZSBlbm91Z2gsIHRoaXMgY29tbWl0IGNoYW5nZWQgdGhlIGxlZ2FjeSB2ZXJzaW9uIHRvOg0K
PiArLyogU3RyaXBwZWQgUy1UQUcgVkxBTiBmcm9tIHRoZSByZWNlaXZlIHBhY2tldCAqLw0KPiAr
I2RlZmluZSBJQVZGX1JYRF9MRUdBQ1lfTDJUQUcyX00gICAgICAgICAgICAgICBHRU5NQVNLX1VM
TCg2MywgMzIpDQo+IA0KPiBJIGd1ZXNzIHNpbmNlIHdlIGJhc2ljYWxseSBhbHdheXMgbmVnb3Rp
YXRlZCBmbGV4aWJsZSBkZXNjcmlwdG9ycyBhZnRlciB0aGlzIHRoYXQgd2UNCj4gbmV2ZXIgY2F1
Z2h0IGl0Lg0KPiANCj4gVGhhbmtzIGZvciB0aGUgZml4Lg0KPiANCj4gUmV2aWV3ZWQtYnk6IEph
Y29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiANCj4gUmVnYXJkcywNCj4g
SmFrZQ0KDQpUZXN0ZWQtYnk6IFJhZmFsIFJvbWFub3dza2kgPHJhZmFsLnJvbWFub3dza2lAaW50
ZWwuY29tPg0KDQo=
