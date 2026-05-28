Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WM6oIQuHGGq6kggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 20:18:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 449F55F6305
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 20:18:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D3A240648;
	Thu, 28 May 2026 18:18:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7_HdJ75lSbie; Thu, 28 May 2026 18:18:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D426F4064F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779992326;
	bh=K+6+C4JT+ie9s0f/Z3vi4olZLKAdXEWr90Uw3TwURt8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6RUKlqtJyd9KNdvHynguWnv9qJmH64ODelvAtcA3IMipSekti5u8X9G+ozXOcoXjr
	 bdm+Bo+3Hjnhm+iERsrN4lpNX/xAlQI4E19dWtfiIN/1JTIGq2br01y1cPJP0nP7gS
	 n/pM1GbD6ftTgYwgC/bXSkrlX1MDxOSmu3veqCeUkgSGZpeJpVWobpZ7Z5pryAM+Nk
	 /INsUwxCSTX7LBcCB703kTZk3MrD1uZsGvC7rgFoYr7ReE+xzqSLEoHsjWVjaV6Y06
	 lR+/8bPamVuETS7d/ZwxJZf8RUuz6Lktk9C2SI87oBIqrnJSenVIx4fUgsrny5rEOf
	 wYqONwqqn15uQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D426F4064F;
	Thu, 28 May 2026 18:18:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id F32B5D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 18:18:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E28BA80BA3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 18:18:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mv5FOD-jM8S2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2026 18:18:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8EEFF80B98
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EEFF80B98
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8EEFF80B98
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 18:18:43 +0000 (UTC)
X-CSE-ConnectionGUID: kjNR/jUVQmeRwe2SMCdvCg==
X-CSE-MsgGUID: V85tXAFRTCGj84uIt7b7TA==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="98417462"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="98417462"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 11:18:43 -0700
X-CSE-ConnectionGUID: oBXzVv+4T5+q3mOPUhzJjQ==
X-CSE-MsgGUID: pz1vZs/iTNCgQmZrNxqh7Q==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 11:18:42 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 11:18:42 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 11:18:42 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.55) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 11:18:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pWc3r82QXtn5ybPQgukGL0dR8EQ/2a5qDyr1NbKgxp1I/UrE1qaxMiXcpfGI6K0m6yXogHzYUS1xmy0Ykb57cPhoK5UiKEn2c0tUhySFYdzpXpC5eaOmoDpWqkYrceoAArPz36P+bxIEqVJ8uqNcEljy2kvIaFmEnQGlZikTLYWgt3ZkQVO4fSZ/uD7IKlxqbicP5LbRgMsvIfwktJjfi0Lx01AwoHL+W7eWggzx9HsPkTCdzGHwBOokUS3RhmF30mWew/Zv6Ato60ZDDUS8Bwgrowx+A79mYpQLuZnP8x3mmFvFDXyEwGWYfhrj+5NEH1jDAHc+KgjGUTXLJhlsNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K+6+C4JT+ie9s0f/Z3vi4olZLKAdXEWr90Uw3TwURt8=;
 b=M2RXK2M84rdKhcCh+zPTXa7uRtZS+olW5MZ4ivuEGUeD3Kyvh6E33Bw+AS5uRnx923kdOg+dECnbx2RZetyS3Ryin6KSib6psXAU2xBsmqrVm8kiCPkpfdruS83OKAtr9YU/r2o5tUdaDcn5f3yQ+HYXMMRMl4NOQ82p8x8Mq5SqbjL4bARhtkxR18t4OH1u4SQ+JBRDiXJDMVQ7SuFlkHuOMgUE29CyfhNXlX9A5vancAkn5OEM3NHMofbJXT4Fo/DRmNeS+c9krB3tlNYbl4M/lfclcsBSUwOdVgmR5dnMrRSAQTxwrcwOmBh4/Xk7EC8oFKXZPlaemaRt9qIAOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by LV3PR11MB8603.namprd11.prod.outlook.com (2603:10b6:408:1b6::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Thu, 28 May
 2026 18:18:38 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.21.0048.016; Thu, 28 May 2026
 18:18:38 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Vecera, Ivan"
 <ivecera@redhat.com>, "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix PTP hang for E825C devices
Thread-Index: AQHcvbqrbb6pfrTnZ0aubPJRAPOMTbYj4d4AgAApXwCAABXeAA==
Date: Thu, 28 May 2026 18:18:38 +0000
Message-ID: <IA1PR11MB62191FBFBC68CC3215C1521592092@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
 <20260327072332.130320-4-aleksandr.loktionov@intel.com>
 <e112de51-687b-48de-a0d9-eebbfd5b32f4@redhat.com>
 <acbfcb58-cf74-4a2d-8002-4d8049e2dc53@intel.com>
In-Reply-To: <acbfcb58-cf74-4a2d-8002-4d8049e2dc53@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|LV3PR11MB8603:EE_
x-ms-office365-filtering-correlation-id: da3174db-587a-4dc3-c9d2-08debce58a29
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|18002099003|38070700021|921020|6133799003|56012099006|11063799006|4143699003;
x-microsoft-antispam-message-info: 2lnlarqyvLkVvx4IAVL4ntGoXkCP7bCHiBA22k+zLkOi0WdZGwCNphz6ZCpKgcXR5Og2CImgYeAFht4FRf6c0ok2fvJjWqdvTFznhXD27crgNFVcqlpp0CrW+AWtkmVHMWAKlfMi8coxuYZ+PaPalyLvGoObMpOSqxUzNtnefOhU2i/d+dDeCPXGZsTj8R18kNjv2o23ZUkmxMhZfEhyAav7P7YTL8UjOLHX0j3uVEcZZnUMhdGtnN8PaJZX3eWdu/wTZ396mASx6d0cw4O6VWWz0EsY6bl+428CbviX1lhnmaYJqR1Xvf/EiYySpL102Z48n1MDBnUUDMViOAe5IzL4lLdKnOJSJMjyyd/bw6tYKidpyFVj82Z1cAH+p9dMYsDVYwe6jjnwtLaZhPQ7F9ZNKsG2hGzw2thgketpz7CzBCDXZTdypcrn5W1uFzs6ET+fuauUgN8/03IIj1QtXMS+HGd1MNzpGbkVRTtGVOpcOZSXdARTzUY3VW/6NboxDs6SALmy2snq+xIfH/kfBW4djnyUoiSLCmjqcBR55um1iy/dl5R0A8bfnqcBgCrfovghOhlfUsERt6AzhyOwA4xUMIWpgwqkyDhUl19n6IcrrP9+3Q/34PaTq+FEDR6tFk7KEds9ByDTCAyOzDGb3fBdjGN9AJruh3Ib464TZhh1bZXAKG5fCv+lbqAzv5qRVMu5QE7co7boX96kUudl7pjoDru8b9updSYZg3JZS1/0FaedOYLhGMkb6JQ8XLwam+n/ofxOJ4ynJpy7Fgl/BQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(18002099003)(38070700021)(921020)(6133799003)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZWRvR3Z5SnRXQjBId3U3eVllZHhCbGcxaG52M2ZFdk4yajc3MWlmWjFTZlNp?=
 =?utf-8?B?MWFZbzFvdFZzSXllQ3MrbXNaZld3QlpCYXNCeXJKNFNSM1hXZXpDdjYzUlFF?=
 =?utf-8?B?dEozWGx1SHJQTXJkMGJKMFZ3bVhYekRudHJNSDhlZE5wRXdOZ1kzMWdFMStB?=
 =?utf-8?B?bHlja1lYUy9GWU01VHpIbUpLbjMycW1pWC85U0Y5a0Q5ZGxTazVrUVMzTUJ0?=
 =?utf-8?B?bXl1UlRBdGZEUHVWZ3VTd3lwanhweUtqS2k5Z1J6S3BSa1lMNkY5ejN0anJk?=
 =?utf-8?B?cTVva2xGbVI2d1ZEbHluRE9pbXZVTUNNbXBQdVBaRTd4ZkNnaVl6UjQwYjQx?=
 =?utf-8?B?WUM4b21iV0lldDBob3ZIdzNid0Z5cE5abzVPdkNlSWdsR2lYWVNwTEtzU29a?=
 =?utf-8?B?ayt4NEh1aXdRNDBtcWhQMDZ6S3c3a2tTYXk5UkZsYVE1Z2FEZUVEZ1FEVDBT?=
 =?utf-8?B?Mmhic3EyRzdXekx0bmZUSldEcGJxYzU0WmV0RkxQQnUzYXZHeWUycFhhVkNH?=
 =?utf-8?B?OHkwVk5XamtJU0NZekFGREp1ZWFWaHhuL2cwWHFObVZmSC9TRWZyMTFGUHp0?=
 =?utf-8?B?QitrMDRYbm9xMnNlL2Z1blJPaGVMOFM0QWh4MzVMTVdieVh0U1YvZS9FQzBI?=
 =?utf-8?B?L0xYT3pPZklaam5yalJSWDdpUHk0WjhzYTJ1SVlYQ21RNW5GZWZnMzZGSGo5?=
 =?utf-8?B?T2MxK0JJbDdtQWJoOG1reHhOSDJ5WE1pbVVYbkFXR01nWE5SVlRGNkNaTWRn?=
 =?utf-8?B?K0RvaEhVRER2WlVWSXd3QkFKVzc4MFNDOUlWL1JUdC83OW9LdGlVc05Fb1VQ?=
 =?utf-8?B?ZTNrN1dVUFp0aUMyUnBaaU8waW1HYmJRUzZCMEk5TktFNytzaUlXbkdxaVNt?=
 =?utf-8?B?NUUxZzNGYnlZR0d4Ukh1RTNtUVR6SkZVMGlrUTNRVmNjR2pvNHozZDdGcmNs?=
 =?utf-8?B?MU8rZFpyYWhJaHFLcXRIUnlESEh3T2VrcEpkRGpxQ1ZVeFFTbWlZUksxN2tP?=
 =?utf-8?B?K2QxM1NzTS9oMFk0MkZEN0pvZGd5dlIvWkIvT1RoWnIxODR6WWZmWDNqdWVG?=
 =?utf-8?B?YmNHdncvc2h0Y2w2dnhza1Z5Y3VweWVPTmY0YTFNUWE3U0hoWU9OMmZMcW83?=
 =?utf-8?B?Y2RmR1VuamlDazJoeWZhdVlNWjY0TjBLSXF3SFNEbTAxUFlGRStxVEIvYlVr?=
 =?utf-8?B?UnVNbUVKRXhGR0tpbUhVTFhyK09xa2ROUWhCb0s5QlpEem41Zk1RTndSdGFF?=
 =?utf-8?B?TGQ3ZjVEeVA4ckdhMk8yNS9BWitLNjhFMEwybXVUZS9pVGNDUU9iUHQ2RXhW?=
 =?utf-8?B?eEZSKytud0cwRkkwNXZvdE5HYTFHZVlJSUd1bURtYnkyTVFnT1doRTIrTzNj?=
 =?utf-8?B?MmJXWTJEZ1g2RXhWTVpoUUF6c21FWGNYM1pzVnE1T3hjZEVJaXQwM3hPSDdn?=
 =?utf-8?B?NzRYemRwY1RGMGxhYk9GMjNBS2VscjB5c21pSCtqUllGTC92QlY3MUEyWGpT?=
 =?utf-8?B?WGgxUDMxcERuWTRxVXA3bS9sRVlhdXgrQzB2VFhtRlRPT1EvN2h3Q2EwclZW?=
 =?utf-8?B?ZFQvaEFmYWd2SzNPZXhydUpBb1BaWDhJQzRQUThMd3hsTkNRNEJOK2tzTDBP?=
 =?utf-8?B?T25IS1Z3TG04czdCZUl2b3FWc3hOVE9Edmt5Q2p0REYzWk1CN0o2ZU9YOVFI?=
 =?utf-8?B?NGdNUk9LYzBNL1B2Nm1wYlQ4YVgxSnFvR3lFdndnQ0xtNE9kWGVXY2dSNzZI?=
 =?utf-8?B?SWpZNkkycjNtbDBCTzM1enU4bk91L053eU5Ua0FJOG1DMHJ1MUlKN20zYml3?=
 =?utf-8?B?UkVPN3dGSGF6TWFqK24xbHhhNlNnVFU3VE1wM0FMcjlWNHVCaE1pY0V2MHpO?=
 =?utf-8?B?OFJVTGJia3MxbiszaHhvWXlGQzVGRmF1Q0VrL29xMzc2U3VteEtabGtxelRp?=
 =?utf-8?B?S1pKUlZRMGkwRHgrSXNiNVBvd2lMYnkwSndhTy9TTUp6bHZ5RU15VUhhZVNu?=
 =?utf-8?B?dERsdUhhSUE0RHg3dUVXSEVXZmlDenlvY1E2ZHhDYUV6dEFMblA2SUNndWFs?=
 =?utf-8?B?cGtwVzBhQjU0NFdjcEhTWjJ6Y3lmSS91c296L0czWUcxZVZ2NHJKTEs0bFF3?=
 =?utf-8?B?azN0SUdLMm1veHRCcEVrQS91SU4xczhOYng1dW5PUk5VRTFmeHN6MUFVLy8v?=
 =?utf-8?B?U2FJS2wyMytTQVNIcFdySGFBZzN2TjJMbnJacHRvSVpHSVF3ZVJYdEhvOWk2?=
 =?utf-8?B?NWdtbzRhdytRd1IxL0JEUFYrbUpvNDFjeXNzaytIVzZkVTllV0h6UFNzLy9H?=
 =?utf-8?B?NUNIUm5oTHJ6Slk1MTE3TE5JT1lSdXllRXQrd0x6bkFuTzlZei8rZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ILscVTxVD3y2UdwqBHInnlEC0OhKdmG+UIDiJtPTyTuc5zxq1S+N1i19GfX1XpZCOsHq1RrNbjqWNfxRNNrGSEZyv5Mh+w2xZDxrGpcvv3ZdAs91GQ5roEOpJNPjWSN6VyUwc34pFs51qKcO1NoqbMTD5J9v5rITsx/K9g7yFedJ0qve80mW2WrjuGlyeZND88hNahnFeAGiARsVv8vOSqOEb550dniyoHBhEfNndyB+3HAP3/Gwn/+8vZSFEDCQ2eA+JnnjwomzkakDD1xO9XdpJGV7ZbrsrvlpQGkS6qH9ayEU+A51QRKqU8/A6edAVLwlF4JbldAy4nf3Lr3yxA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da3174db-587a-4dc3-c9d2-08debce58a29
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2026 18:18:38.3607 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q8Zn2XhbKyURPPJb3Hf1U6NGQPOt00EqVvbkAr6DWTB1mLYAdQA0bOGVrtlrfUPdGFRsow1NGKiPeziy/f5v2O+zraHVh/8rVS7695wLkCI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8603
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779992324; x=1811528324;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K+6+C4JT+ie9s0f/Z3vi4olZLKAdXEWr90Uw3TwURt8=;
 b=ZsnBF4LiHQHgUUH+imkO1CsF8BMR+xlJAWaEyVqo8bTjjNlDkqVhnjlo
 qTGSKodEOeRUOpjGNo8vUVzQIn7quMlscSYezpi7a13n37XiaMDTXJ6ka
 /UjdJ0LBEw0h+kK+w0Z2inNFJGzIvDH6rBU9HHbAo/vAVcFTjeYGGZxQ+
 xA+5HSBe/17IB73+2ZV3M4NSh5vMOWd07r3+0hvaA/E+kEg6PL9yuG7J8
 iu/h4woi1CcPuZIHLMaD2F/wY1R4OpIMmQ0ijP4PBa3RnFVbXL9CIMZ6R
 uCpowJhcLDFRmWBrMdVXckZeAGb/64HFSopyXbdfua6WIqQxQ0WCWi4NU
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZsnBF4Li
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix PTP hang for E825C
 devices
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
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:ivecera@redhat.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:arkadiusz.kubalewski@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 449F55F6305
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmd1eWVuLCBBbnRob255
IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgTWF5IDI4
LCAyMDI2IDc6MDAgUE0NCj4gVG86IFZlY2VyYSwgSXZhbiA8aXZlY2VyYUByZWRoYXQuY29tPjsg
TG9rdGlvbm92LCBBbGVrc2FuZHINCj4gPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsg
aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IE5pdGthLA0KPiBHcnplZ29yeiA8Z3J6
ZWdvcnoubml0a2FAaW50ZWwuY29tPjsgS2VsbGVyLCBKYWNvYiBFDQo+IDxqYWNvYi5lLmtlbGxl
ckBpbnRlbC5jb20+DQo+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6IFJl
OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0XSBpY2U6IGZpeCBQVFAgaGFuZyBmb3IgRTgy
NUMgZGV2aWNlcw0KPiANCj4gDQo+IA0KPiBPbiA1LzI4LzIwMjYgNzozMSBBTSwgSXZhbiBWZWNl
cmEgd3JvdGU6DQo+ID4gT24gMy8yNy8yNiA4OjIzIEFNLCBBbGVrc2FuZHIgTG9rdGlvbm92IHdy
b3RlOg0KPiA+PiBGcm9tOiBHcnplZ29yeiBOaXRrYSA8Z3J6ZWdvcnoubml0a2FAaW50ZWwuY29t
Pg0KPiA+Pg0KPiA+PiBDaGFuZ2UgdGhlIG9yZGVyIG9mIFBUUCByZWNvbmZpZ3VyYXRpb24gd2hl
biBwb3J0IGdvZXMgZG93biBvciB1cA0KPiA+PiAoaWNlX2Rvd24gYW5kIGljZV91cCBjYWxscykg
dG8gYmUgbW9yZSBncmFjZWZ1bCBhbmQgY29uc2lzdGVudCBmcm9tDQo+ID4+IHRpbWVzdGFtcCBp
bnRlcnJ1cHRzIHByb2Nlc3NpbmcgcGVyc3BlY3RpdmUuDQo+ID4+DQo+ID4+IEZvciBib3RoIGNh
bGxzIChpY2VfdXAgYW5kIGljZV9kb3duKSwgYWNjb21wYW55aW5nIGljZV9wdHBfbGlua19jaGFu
Z2UNCj4gPj4gaXMgY2FsbGVkIHdoaWNoIHN0YXJ0cy9zdG9wcyBQVFAgdGltZXIuIFRoaXMgcGF0
Y2ggY2hhbmdlcyB0aGUgb3JkZXI6DQo+ID4+IC0gd2hpbGUgbGluayBnb2VzIGRvd246IGRpc2Fi
bGUgbmV0IGRldmljZSBUeCBmaXJzdCAobmV0aWZfY2Fycmllcl9vZmYsDQo+ID4+IMKgwqAgbmV0
aWZfdHhfZGlzYWJsZSksIHRoZW4gY2FsbCBpY2VfcHRwX2xpbmtfY2hhbmdlDQo+ID4+IC0gd2hp
bGUgbGluayBnb2VzIHVwOiBpY2VfcHRwX2xpbmtfY2hhbmdlIGNhbGxlZCBmaXJzdCwgdGhlbiBy
ZS1lbmFibGUNCj4gPj4gwqDCoCBuZXQgZGV2aWNlIFR4IChuZXRpZl90eF9zdGFydF9hbGxfcXVl
dWVzKQ0KPiA+Pg0KPiA+PiBPdGhlcndpc2UsIHRoZXJlIGlzIGEgbmFycm93IHdpbmRvdyBpbiB3
aGljaCBQVFAgdGltZXN0YW1wIHJlcXVlc3QgaGFzDQo+ID4+IGJlZW4gdHJpZ2dlcmVkIGFuZCB0
aW1lc3RhbXAgcHJvY2Vzc2luZyBvY2N1cnMgd2hlbiBQVFAgdGltZXIgaXMgbm90DQo+ID4+IGVu
YWJsZWQgeWV0ICh1cCBjYXNlKSBvciBhbHJlYWR5IGRpc2FibGVkIChkb3duIGNhc2UpLiBUaGlz
IG1heSBsZWFkIHRvDQo+ID4+IHVuZGVmaW5lZCBiZWhhdmlvciBhbmQgcmVjZWl2aW5nIGludmFs
aWQgdGltZXN0YW1wcy4gVGhpcyBjYXNlIHdhcw0KPiA+PiBvYnNlcnZlZCBvbiBFODI1QyBkZXZp
Y2VzIG9ubHkuDQo+ID4+DQo+ID4+IEZpeGVzOiA2YjFmZjVkMzkyMjggKCJpY2U6IGFsd2F5cyBj
YWxsIGljZV9wdHBfbGlua19jaGFuZ2UgYW5kIG1ha2UgaXQNCj4gPj4gdm9pZCIpDQo+ID4+IENj
OiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQo+ID4+IFNpZ25lZC1vZmYtYnk6IEdyemVnb3J6IE5p
dGthIDxncnplZ29yei5uaXRrYUBpbnRlbC5jb20+DQo+ID4+IFNpZ25lZC1vZmYtYnk6IEFsZWtz
YW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiA+PiAtLS0N
Cj4gPj4NCj4gPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMg
fCA0ICsrLS0NCj4gPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkNCj4gPj4NCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfbWFpbi5jIGIvZHJpdmVycy9uZXQvDQo+ID4+IGV0aGVybmV0L2ludGVsL2lj
ZS9pY2VfbWFpbi5jDQo+ID4+IGluZGV4IGU3MzA4ZTMuLjg4OTY4MDUgMTAwNjQ0DQo+ID4+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jDQo+ID4+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jDQo+ID4+IEBAIC02Nzk3
LDEwICs2Nzk3LDEwIEBAIHN0YXRpYyBpbnQgaWNlX3VwX2NvbXBsZXRlKHN0cnVjdCBpY2VfdnNp
ICp2c2kpDQo+ID4+IMKgwqDCoMKgwqDCoMKgwqDCoCAodnNpLT5wb3J0X2luZm8tPnBoeS5saW5r
X2luZm8ubGlua19pbmZvICYgSUNFX0FRX0xJTktfVVApICYmDQo+ID4+IMKgwqDCoMKgwqDCoMKg
wqDCoCAoKHZzaS0+bmV0ZGV2ICYmICh2c2ktPnR5cGUgPT0gSUNFX1ZTSV9QRiB8fA0KPiA+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2c2ktPnR5cGUgPT0gSUNFX1ZT
SV9TRikpKSkgew0KPiA+PiArwqDCoMKgwqDCoMKgwqAgaWNlX3B0cF9saW5rX2NoYW5nZShwZiwg
dHJ1ZSk7DQo+ID4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpY2VfcHJpbnRfbGlua19tc2codnNpLCB0
cnVlKTsNCj4gPj4gwqDCoMKgwqDCoMKgwqDCoMKgIG5ldGlmX3R4X3N0YXJ0X2FsbF9xdWV1ZXMo
dnNpLT5uZXRkZXYpOw0KPiA+PiDCoMKgwqDCoMKgwqDCoMKgwqAgbmV0aWZfY2Fycmllcl9vbih2
c2ktPm5ldGRldik7DQo+ID4+IC3CoMKgwqDCoMKgwqDCoCBpY2VfcHRwX2xpbmtfY2hhbmdlKHBm
LCB0cnVlKTsNCj4gPj4gwqDCoMKgwqDCoCB9DQo+ID4+IMKgwqDCoMKgwqAgLyogUGVyZm9ybSBh
biBpbml0aWFsIHJlYWQgb2YgdGhlIHN0YXRpc3RpY3MgcmVnaXN0ZXJzIG5vdyB0bw0KPiA+PiBA
QCAtNzMyOCw5ICs3MzI4LDkgQEAgaW50IGljZV9kb3duKHN0cnVjdCBpY2VfdnNpICp2c2kpDQo+
ID4+IMKgwqDCoMKgwqAgaWYgKHZzaS0+bmV0ZGV2KSB7DQo+ID4+IMKgwqDCoMKgwqDCoMKgwqDC
oCB2bGFuX2VyciA9IGljZV92c2lfZGVsX3ZsYW5femVybyh2c2kpOw0KPiA+PiAtwqDCoMKgwqDC
oMKgwqAgaWNlX3B0cF9saW5rX2NoYW5nZSh2c2ktPmJhY2ssIGZhbHNlKTsNCj4gPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIG5ldGlmX2NhcnJpZXJfb2ZmKHZzaS0+bmV0ZGV2KTsNCj4gPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIG5ldGlmX3R4X2Rpc2FibGUodnNpLT5uZXRkZXYpOw0KPiA+PiArwqDCoMKg
wqDCoMKgwqAgaWNlX3B0cF9saW5rX2NoYW5nZSh2c2ktPmJhY2ssIGZhbHNlKTsNCj4gPj4gwqDC
oMKgwqDCoCB9DQo+ID4+IMKgwqDCoMKgwqAgaWNlX3ZzaV9kaXNfaXJxKHZzaSk7DQo+ID4NCj4g
PiBJIGNhbm5vdCBmaW5kIHRoaXMgcGF0Y2ggYXBwbGllZCBhbnl3aGVyZS4uLiBJV0wgcGF0Y2h3
b3JrIGluZGljYXRlcw0KPiA+IENoYW5nZXMgUmVxdWVzdGVkLi4uIEkgZG9uJ3Qga25vdyB3aHku
Li4NCj4gDQo+IEhpIEl2YW4sDQo+IA0KPiBUaGUgc2VuZCB0byBuZXRkZXYgaGFkIGEgY291cGxl
IHRoaW5ncyBmbGFnZ2VkIGJ5IFNhc2hpa286DQo+IA0KPiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9uZXRkZXYvMDU1OGRlMzctZmI3NS00MjhmLTk4ZDktDQo+IDEzYjk1OTRjNGVmZUBpbnRlbC5j
b20vI3QNCj4gDQo+IFdlIGFyZSBsb29raW5nIHRvIG1ha2UgdGhlIGNoYW5nZSB0aGF0IEpha2Ug
bWVudGlvbmVkICJzZXBhcmF0aW5nIHRoZQ0KPiBQVFAgbGluayBzdGF0ZSBmcm9tIHRoZSBhZG1p
biB1cC9kb3duIHN0YXRlIGVudGlyZWx5LiINCj4gDQo+IFRoYW5rcywNCj4gVG9ueQ0KDQpGWUkg
Li4uIEFyZWsgaXMgdGVzdGluZyBhbHRlcm5hdGl2ZSBzb2x1dGlvbiBhdCB0aGUgbW9tZW50Lg0K
DQpSZWdhcmRzDQoNCkdyemVnb3J6DQo=
