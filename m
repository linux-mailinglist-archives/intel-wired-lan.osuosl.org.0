Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id L7A3LrNaOmqQ6wcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2026 12:06:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7596B6125
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2026 12:06:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=kfDj8iD1;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C4CD60889;
	Tue, 23 Jun 2026 10:06:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xfQy9dA27Eox; Tue, 23 Jun 2026 10:06:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B379F60884
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782209198;
	bh=06eu0sag/wvjeuCqgG0qRRYK/2kfULu5lCbLZdqh0aU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kfDj8iD1xpXipSe2xhHKib1wx8wN2dOWOXLX2el9FIC3o05Z08qgXdFWGWTfFRCFN
	 g45T3h+pb9W2zyb75MkcVc2rxKQH+FbAFCuB0N3Vb5WxguqLBW80eh4F0qrYlf0s6Q
	 /lM5yNrpCwnqc3f0flM/V+i+XgRHNEZtf8us53YA74eHiN6bOnC0Ky5ZzJtf0jCBcJ
	 LWrQ0JiWHzE3e/K6mHtl6z2XSS9saIim7ZIMti8TrjNu8JanAfjbCPD/Cu6y4/4f4N
	 IMkt6n3xzWfFibd0TxiOiIvbVY0n9iF70L0CdDgOvBKQ+4KuJkM82XVHHUifkwtE9J
	 vbD4NGWuW4Llg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B379F60884;
	Tue, 23 Jun 2026 10:06:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 09A93256
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 10:06:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E415260882
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 10:06:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jYIHhbtOSth1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2026 10:06:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 76AFD60881
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76AFD60881
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 76AFD60881
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 10:06:34 +0000 (UTC)
X-CSE-ConnectionGUID: 85OyxQZSSM2b/DvKVtLVSg==
X-CSE-MsgGUID: +K/hfMDfSHqB//CbWnGeuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="82817327"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="82817327"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 03:06:34 -0700
X-CSE-ConnectionGUID: ETT1aOQgS5CYvODxvB/GgA==
X-CSE-MsgGUID: p1m0++IjStW7oP4oHnnP/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="253358558"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 03:06:34 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 03:06:33 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 23 Jun 2026 03:06:33 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.16) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 03:06:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TSy5ZAMuClmQZ2KsUyzgWmEkjX99mqCWiy9yrpiHpIDl/FEpvj1mdXO8HRNzi66ZQJUNllMMY+IT6GRXW2doLfI0nyaA5VDFxDK7Io+CeM4zmrMMTo118QX6I8bf9HcdBbyhm2hrfxmrRXEV3gMBJ6eKzXQ4nSRgoe0PfbaNvtszAQN5M1gEaj6hSnEV3F8CGHIJhO0jT/LG/EKTEK5KxisIC7BGuP+MrBEMmR4MwhiHRCAAKFd6v6k0G9wLEL9p8MsM4i4YnerRF99c6tcPPG4YndEwLoyFHXFtuPMgnZWe5EpBJ3VakDD9uXyLkzuGGlZ2lDpdABfcQ2KkH5H/xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=06eu0sag/wvjeuCqgG0qRRYK/2kfULu5lCbLZdqh0aU=;
 b=mkKcp/C9/reRfR6x9AqMtFIFfF4dG7MMWPRyOZ0jX/Y79jfmdPw9DFo4jr4AHSLg6wLMPTplTt0ZJNR/aTx0lr8DPHc+6wy+Dem7KdI2Tv3ryZU9BbVxW27mUTMWqYjhOvrkO2I1sEWoKZK2INhxYOEYW73CYXXVUp7nB4wXgZI3Xt2BRwGJFRfrWFbhi3ipMg6Qo03oczZf7wZJI04PSRnz+vPMEvKGMLatXRJfZHrSBewt2A+2X7xs2k1e5QiAjRc9bGVXEu709H05UmjELhygfsJ1Je630fptf1LwpTwl6UiuFMRzD0QEY/hpU569BZ9s7kQA+yKzylPhwxKHxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by CY8PR11MB7133.namprd11.prod.outlook.com (2603:10b6:930:63::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 10:06:28 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::246b:dc12:ea88:b19c]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::246b:dc12:ea88:b19c%4]) with mapi id 15.21.0159.007; Tue, 23 Jun 2026
 10:06:27 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "tkusters@aweta.nl" <tkusters@aweta.nl>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, Jesper Dangaard Brouer <hawk@kernel.org>, "Kurt
 Kanzenbach" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] igb: only strip Rx timestamp
 header on the first buffer of a frame
Thread-Index: AQHdAlps91MuQsoTRk+624dOh9qSlLZL6Z+w
Date: Tue, 23 Jun 2026 10:06:27 +0000
Message-ID: <BL1PR11MB59792FC9956781218FC85B66F3EE2@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20260619-igb-rx-ts-fix-v2-1-d3b8d605ca62@aweta.nl>
In-Reply-To: <20260619-igb-rx-ts-fix-v2-1-d3b8d605ca62@aweta.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|CY8PR11MB7133:EE_
x-ms-office365-filtering-correlation-id: 5c92e405-f5fe-486b-184a-08ded10f16fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|23010399003|1800799024|366016|11063799006|56012099006|18002099003|22082099003|6133799003|921020|38070700021;
x-microsoft-antispam-message-info: ihTufMuzNR3/adHta9KikzBO4wnBzxeLkdf2QxzX0xBgxqbarh7MatoB7eH0EZnJ3EE0TrJQCZlgRJwmXP2JsDhpzs6+Ofp/bzbO4EbR/r+4DMj6oyOvZ9reKWtBPf9SS+HBQUw0f4dZ5Sy6YIEc1litCzMR342RLLA7F7XAVAgxlPlFyd2M5vUrNovQ7SMXj0VrFfp2xb3v/6wyyGLHkegcudFHBCVOXk0lyzBGaf/qgzK1tetLWupCgLqHXGjsu+JZ2B1WmXgBh4aqV+mhTYP34Ih7SZ11UPaoxBEJsYmql23tgxtcvYADT0cuSZNfT5XZxKTbiAjJ6/ZvBM3qQCboEotwxddWVqK+Fh1u78vtiApNUgfQMx2zqF1x0iSpYbEMsDLBpGKPaFJ5Vn9Epzln3IW4qSxsWj0Aqw0j8EkwpD8c8y8m4stM7sPaQWBLe2l0Q9EGBiKNU+SGg2AFx4eMSfBfdabebR7LPqpRZIqzM5/jhtM9uMWR+kOdbb9ZmQuhpv/A+KU1Vey6F6Z1v8iJ8E15PIIRMI0dqNylujM1xGMTmRz80u7R5BumWMNFw3JZe+07TIc64Go0RK3PqIROXuRUQF4s+sV/cKV/IX9VJw1z7uEYWMhAnGxKVzG7+k3DZ+YFLN37hC9Cs0thvF9GG4P2j/WnI3BlOkj0mz01RloBy6ctaSDmJmYnZ2RbmH3qSU6vlcSo4mVeBd3w0wQPgJUQigjUSt0yuuwblh90PghuJt8HvB/2zvOY8KOh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(23010399003)(1800799024)(366016)(11063799006)(56012099006)(18002099003)(22082099003)(6133799003)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S2VZK25kNFNRcWJBNkwyQlZjRnUrUUpTRnc3WnVlbytMSlM2cm0rWFkxeDlR?=
 =?utf-8?B?dDhiaWlkeGZzTHhUOVlHdm9UZ0FoQ1l5bXo4V0oxR0s4RFdtR0pHenlTdGJB?=
 =?utf-8?B?dTV5a05tMTd0N0lLSUxwa3dOQWVVQ1IxNThJdWFkVmJqY0h5SXBpUDZDUHVq?=
 =?utf-8?B?QVhnQ0JSTm5vM0xkVFc2bXJKeStuQVlFRC9SUWpEcldEQ0U2YUlDL2tvNnRj?=
 =?utf-8?B?NmNNbmFZL2ZZbS9NRFJjdS9WTzYvL0VBNWZqWXVES2lhTFpnWVNtOU5FY1hw?=
 =?utf-8?B?OUZwckpoaSs5WVBiMUpVQWlncEtieWNhRWU1RVZDSjVoNW43a0V2TmJQRUR0?=
 =?utf-8?B?ZzZ3VDNkRTNneTR4UVFjT2NFNm5BTjYwdktBRXVKdjZoRzdMK2ZndjkrS1hG?=
 =?utf-8?B?bTIxdk01TU9FMm5BbEZTQjdCZzN6R2ozUEw5VGFCL0ZvczJjMGl4UTArZFJs?=
 =?utf-8?B?VDZrNUtPMmN5dGdwUHE4ZW9KajZtenpZanl4STJhTzhmeWJMakxrOHVzVWs1?=
 =?utf-8?B?dmVKQ0M5SVpCRk8wazZ4TlZqV2R0UjE5bEppejRwTms5cVNac3NUdkZ2c2ZP?=
 =?utf-8?B?YlA4cjB3MmtWU1NWWlFVOXpsRWdrb2RPWHJ1U0k5TEwvVnQ0T1Y3d254bWpz?=
 =?utf-8?B?TzVVRDlqS0d6bjRPeXh5TjRKVHF4QThDVXI2blJpVmM3dnpUNjlENksrQklJ?=
 =?utf-8?B?QXljR0VUalRsVERxU2EvdjJlQmE4TUFKaS9BVDlncFI0VVIyQ3JKeFN6eks1?=
 =?utf-8?B?cktOMEg1SUI1ZlFKN2VQcHgvOVZIeEtZY3JBOENDMEM5dnFqZHNJcFhmaG0v?=
 =?utf-8?B?VzB6V01BVENRd3ZhNXhFRDJINmxRdWVsaC9jczF5Nlp3L2RQNGtQYWI2b3lh?=
 =?utf-8?B?aDZNWTdldnZHTkd5cUFKeXQ3NUxsL1JlSTZ2bjlFYlk0bHV1RWNjQ2RBc2Vm?=
 =?utf-8?B?cTRMZGI3TzZIVEJjVzQrTDlZc0ZIcnNldGVGcm5La2tiVEYycDhGZElGQjFz?=
 =?utf-8?B?UTNmZTY4WVZXdURZMWlMNzVhak12NHdzRzJmdnJmL1FIcFEwM0lWeFI4MWdw?=
 =?utf-8?B?YjM3dkFQbHkrdEV2UjZwaWJvcnNEbFFLclZ6dWpVYjhvOFduZStLVDhydHFy?=
 =?utf-8?B?M1BieEd1RndsQmVHazlKM05Cbm9MSWZJRlhRV1ppbFhpSmxEdG8zL0ZqR0JE?=
 =?utf-8?B?eHU5RHVNU1NBM3pnR3ZRcDBRU0QvUVkzc3E5VUJrZWFaNVdvSUFxbHB6alg3?=
 =?utf-8?B?bDlVUENoTHd1aXhEMzRLWm1Jd1hNcit6TVB6L25CN2I2NFVibFFPV3g1elFQ?=
 =?utf-8?B?RXhXWkFUVjVZbERoYWxnR3FHWkNQbHJqZ2pjMThPWWFXLzdKWGR1ak1QODls?=
 =?utf-8?B?RFJFY29BNjBYTlRsckU1Sk5SQVl5ZFU4UlhkOXZtYStCRHY4Q2wyN2ExeWtL?=
 =?utf-8?B?c2xnTnBOams1RkM1UVdzUFEwQ1hnQjZKVmVEaXZNRXYrSGdEWGhkNEh4ZWdF?=
 =?utf-8?B?NnlibGlKRmU2S3d4QXVCTlRPVGUyOXRHSjR2KzE0b2NTcEx6eVN2clU5RHhw?=
 =?utf-8?B?SUJaY3lLYTRPUUZJSzhHY3RscCt0czhZNitVbUxVVlJCd2NmOFp4UkVaNVhH?=
 =?utf-8?B?MllNSEtFRXhPRk95cWwrZy9JY3I3VDZEZmVuL2x4TFFFMU5rK0grazNtSC85?=
 =?utf-8?B?SWdRVFRjTjhSZmkybWNwYnp3eUhsblI2WldMUE9oRzdOQ2xFNDJiakJvUXA4?=
 =?utf-8?B?Qk5UN1Y4ckR3ZFZHNmthWDBuOEdUcGIxUTlsNTJpa1BiZm5rNVRDckVrZWcx?=
 =?utf-8?B?NXgzQ2tlWnFkWFVIeGxlMHJpSmI0R2g5ejRUYjBSOTBFbk1LZlZzKzFNNHMz?=
 =?utf-8?B?TDJTUUNEOWNDb0xIUjIrVFRsTkcrWWF6NTMvblJBclNLK3hKN25uU0dLNGMr?=
 =?utf-8?B?THRKWStTdnY4Z1FWL0NPRU5ZTi9YRjl3T3ZZa25acndTREZIUEFueTRRMzFV?=
 =?utf-8?B?QjFzVG4xNmJmcVJGZEVDbWE3S0NrallFMTRDRGo3S1loVjlqRk01eUttZTdD?=
 =?utf-8?B?bSt1OTY1SFNmL1VXekI4L09NeHdpOGcya0FkTVhIY3Axamt3T011ZGVyQ2I1?=
 =?utf-8?B?eTBkQmo0UzJrNUU5bFpSamdrT1ZtcTgyaHhrUlc2YXdLV3dFc3N1VlI2dkJY?=
 =?utf-8?B?U3BHZVp4d0FpUGF6YVlzakMvZkU2VFErWjdTN0dpa0VjTHU0TTdpL055aENw?=
 =?utf-8?B?ZFE4N2VIQmNzUDJDdlJYYm1ZSlFpVEx3STBqK1FoOWxLcUVPMWZ3Y0t6ZWtL?=
 =?utf-8?B?dk5zelVGbGZMNWYzd1BJK0dhZ2MrNkx2TXVrdmtyUFBSVlgrK3ZEZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: fzVbxd8SU7DiOi+PgqnEbJlf/s6p6VRgPZ0zfAVqq2UIfvHXoIrHdqCyh3AMO2juIVwZRHkG5Wv20oU4vVySifd/y5BCiX5w3z02iHa/8ZodK8nXqzODtymUb7Z13XkDPSp+sZ62vM+foaRfkoRNw3C/I289ceB/ycy2nML4LlPHqwQqckKPfsC9Acnkz/lDCoRjzZ0mhuOi7pIsByn6d7JN4qHzDItJhcb2C7OBKrjoReDEFi2CxaHRwIXbl8n8y9sn4OcwJzfF/xQ+XDa7TYuax6zja4eCGOtUOMfiV5/pbx5mxci595iT80uBtPR1OPXEE8T36IhD7yME98tSVA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c92e405-f5fe-486b-184a-08ded10f16fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 10:06:27.3132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y8LK2cRJjI9OLTQbEzThxhSadeniJ6BU6NwYCaj1G7uYef4qEg60ozVQNzKDp0szBVp/x7ki+aiMwUcKyci/u+UYqJZDPjCg042/boxHx40=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7133
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782209196; x=1813745196;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=06eu0sag/wvjeuCqgG0qRRYK/2kfULu5lCbLZdqh0aU=;
 b=g5r04ne9qO6savNOMvNU50+tcA2DCHh2wQ3MWmySkAY5TNyjT/HqQAJO
 m6qFh+IoZJzZWU8Mzg2IugfFZTc5yffiJyvSGraH1kLuE5SqbPT7vK0kQ
 u48/gZGp+cA4or2FO2RSL0M/RgZ7in5eMbqD6bgVix7KayXS8lDnxszsH
 1qaW7YaSEfFsxu62cpu+7Ppkmk0LsCqK+oby3jKiga7RC8cp4LZXVk5C7
 VPOqWSUOn7NRtXsdxLsQGZpjtIXGYXkXREWLupagT+fdbsuQKNj13CwjJ
 ZfLNnPUfysuWX5e2IOWDZZ9j1fo2TaSnoRSbts+vK8p5ZTYkk/EnGDpwD
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g5r04ne9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: only strip Rx timestamp
 header on the first buffer of a frame
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tkusters@aweta.nl,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:hawk@kernel.org,m:kurt@linutronix.de,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[aweta.nl,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,linutronix.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:email,linutronix.de:email,davemloft.net:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C7596B6125

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRl
bC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YgVGplcmsgS3VzdGVy
cyB2aWEgQjQgUmVsYXkNCj5TZW50OiBGcmlkYXksIEp1bmUgMTksIDIwMjYgOToxNSBBTQ0KPlRv
OiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVs
LCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgQW5kcmV3IEx1bm4g
PGFuZHJldytuZXRkZXZAbHVubi5jaD47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0
Lm5ldD47IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IEpha3ViIEtpY2luc2tp
IDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OyBSaWNo
YXJkIENvY2hyYW4gPHJpY2hhcmRjb2NocmFuQGdtYWlsLmNvbT47IEplc3BlciBEYW5nYWFyZCBC
cm91ZXIgPGhhd2tAa2VybmVsLm9yZz47IEt1cnQgS2FuemVuYmFjaCA8a3VydEBsaW51dHJvbml4
LmRlPg0KPkNjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIu
a2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgc3RhYmxlQHZnZXIua2Vy
bmVsLm9yZzsgVGplcmsgS3VzdGVycyA8dGt1c3RlcnNAYXdldGEubmw+DQo+U3ViamVjdDogW0lu
dGVsLXdpcmVkLWxhbl0gW1BBVENIIG5ldCB2Ml0gaWdiOiBvbmx5IHN0cmlwIFJ4IHRpbWVzdGFt
cCBoZWFkZXIgb24gdGhlIGZpcnN0IGJ1ZmZlciBvZiBhIGZyYW1lDQo+DQo+RnJvbTogVGplcmsg
S3VzdGVycyA8dGt1c3RlcnNAYXdldGEubmw+DQo+DQo+V2hlbiBSeCBoYXJkd2FyZSB0aW1lc3Rh
bXBpbmcgaXMgZW5hYmxlZCAoZS5nLiBwdHA0bCwgd2hpY2ggY29uZmlndXJlcyBIV1RTVEFNUF9G
SUxURVJfQUxMKSwgdGhlIE5JQyBwcmVwZW5kcyBhIDE2LWJ5dGUgdGltZXN0YW1wIGhlYWRlciB0
byB0aGUgZmlyc3QgUnggYnVmZmVyIG9mIGV2ZXJ5IHJlY2VpdmVkIGZyYW1lLiBpZ2JfY2xlYW5f
cnhfaXJxKCkgc3RyaXBzIHRoaXMgaGVhZGVyIGluc2lkZSBpdHMgcGVyLWJ1ZmZlciBsb29wOg0K
Pg0KPglpZiAoaWdiX3Rlc3Rfc3RhdGVycihyeF9kZXNjLCBFMTAwMF9SWERBRFZfU1RBVF9UU0lQ
KSkgew0KPgkJdHNfaGRyX2xlbiA9IGlnYl9wdHBfcnhfcGt0c3RhbXAocnhfcmluZy0+cV92ZWN0
b3IsDQo+CQkJCQkJIHBrdGJ1ZiwgJnRpbWVzdGFtcCk7DQo+CQlwa3Rfb2Zmc2V0ICs9IHRzX2hk
cl9sZW47DQo+CQlzaXplIC09IHRzX2hkcl9sZW47DQo+CX0NCj4NCj5Gb3IgYSBmcmFtZSB0aGF0
IHNwYW5zIG1vcmUgdGhhbiBvbmUgUnggYnVmZmVyIChlLmcuIGEganVtYm8gZnJhbWUpLCB0aGlz
IGJsb2NrIHJ1bnMgb25jZSBwZXIgYnVmZmVyLiBUaGUgdGltZXN0YW1wIGhlYWRlciBvbmx5IGV4
aXN0cyBhdCB0aGUgc3RhcnQgb2YgdGhlIGZpcnN0IGJ1ZmZlciwgYnV0IGlnYl9wdHBfcnhfcGt0
c3RhbXAoKSBpcyBjYWxsZWQgZm9yIGV2ZXJ5IGJ1ZmZlci4NCj4NCj5PbiBhIGNvbnRpbnVhdGlv
biBidWZmZXIgdGhlIGRhdGEgaXMgcGFja2V0IHBheWxvYWQsIG5vdCBhIHRpbWVzdGFtcCBoZWFk
ZXIuIGlnYl9wdHBfcnhfcGt0c3RhbXAoKSBhbHJlYWR5IGhhcyB0d28gZ3VhcmRzIGFnYWluc3Qg
YWN0aW5nIG9uIGEgbm9uLWhlYWRlciBidWZmZXI6IGl0IHJldHVybnMgMCBpZiBQVFAgaXMgZGlz
YWJsZWQsIGFuZCByZXR1cm5zIDAgaWYgdGhlIHJlc2VydmVkIGR3b3JkcyAodGhlIGZpcnN0IDgg
Ynl0ZXMpIGFyZSBub24temVyby4gTmVpdGhlciBpcyBzdWZmaWNpZW50DQo+aGVyZTogUFRQIGlz
IGVuYWJsZWQsIGFuZCBhIGNvbnRpbnVhdGlvbiBidWZmZXIgd2hvc2UgcGF5bG9hZCBoYXBwZW5z
IHRvIGJlZ2luIHdpdGggOCB6ZXJvIGJ5dGVzIHBhc3NlcyB0aGUgcmVzZXJ2ZWQtZHdvcmQgY2hl
Y2suIEluIHRoYXQgY2FzZSB0aGUgcGF5bG9hZCBpcyBtaXN0YWtlbiBmb3IgYSB2YWxpZCB0aW1l
c3RhbXAgaGVhZGVyIGFuZCBpZ2JfcHRwX3J4X3BrdHN0YW1wKCkgcmV0dXJucyBJR0JfVFNfSERS
X0xFTiwgc28gdGhlIGNhbGxlciBzdHJpcHMgMTYgYnl0ZXMgb2YgcmVhbCBkYXRhIGZyb20gdGhh
dCBidWZmZXIuIEEgZnJhbWUgc3Bhbm5pbmcgTiBidWZmZXJzIHdob3NlIGNvbnRpbnVhdGlvbiBi
dWZmZXJzIHN0YXJ0IHdpdGggemVybyBieXRlcyB0aGVyZWZvcmUgbG9zZXMgMTYgKiAoTiAtIDEp
IGJ5dGVzIGZyb20gaXRzIHRhaWwuDQo+DQo+VGhpcyBpcyBlYXNpbHkgdHJpZ2dlcmVkIGJ5IGEg
R2lnRSBWaXNpb24gY2FtZXJhIHN0cmVhbWluZyBkYXJrIGZyYW1lcyAobW9zdGx5IDB4MDAgcGl4
ZWwgZGF0YSkgb3ZlciBqdW1ibyBVRFAgd2l0aCBQVFAgYWN0aXZlIG9uIHRoZSByZWNlaXZlcjoN
Cj50aGUgYWxsLXplcm8gZnJhbWVzIGFycml2ZSB0cnVuY2F0ZWQgd2hpbGUgZnJhbWVzIHdpdGgg
bm9uLXplcm8gY29udGVudCBhcmUgZmluZS4gVGhlcmUgaXMgbm8gZXJyb3IgaW5kaWNhdGlvbi4N
Cj4NCj5ObyBjb250ZW50LWJhc2VkIGNoZWNrIGNhbiByZWxpYWJseSB0ZWxsIGEgY29udGludWF0
aW9uIGJ1ZmZlciB0aGF0IGJlZ2lucyB3aXRoIHplcm8gYnl0ZXMgZnJvbSBhIHJlYWwgdGltZXN0
YW1wIGhlYWRlciwgYmVjYXVzZSBib3RoIGFyZSBhbGwgemVyby4NCj5GaXggaXQgc3RydWN0dXJh
bGx5IGluc3RlYWQ6IG9ubHkgYXR0ZW1wdCB0aGUgc3RyaXAgb24gdGhlIGZpcnN0IGJ1ZmZlciBv
ZiBhIGZyYW1lLCB3aGljaCBpcyB0aGUgb25seSBidWZmZXIgdGhhdCBjYW4gY29udGFpbiBhIHRp
bWVzdGFtcCBoZWFkZXIuIEluDQo+aWdiX2NsZWFuX3J4X2lycSgpIHNrYiBpcyBOVUxMIHVudGls
IHRoZSBmaXJzdCBidWZmZXIgaGFzIGJlZW4gcHJvY2Vzc2VkLCBzbyBndWFyZGluZyB0aGUgc3Ry
aXAgd2l0aCAhc2tiIHJlc3RyaWN0cyBpdCB0byB0aGUgZmlyc3QgYnVmZmVyIHJlZ2FyZGxlc3Mg
b2YgcGF5bG9hZCBjb250ZW50Lg0KPg0KPkZpeGVzOiA1Mzc5MjYwODUyYjAgKCJpZ2I6IEZpeCBY
RFAgd2l0aCBQVFAgZW5hYmxlZCIpDQo+Q2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj5SZXZp
ZXdlZC1ieTogS3VydCBLYW56ZW5iYWNoIDxrdXJ0QGxpbnV0cm9uaXguZGU+DQo+U2lnbmVkLW9m
Zi1ieTogVGplcmsgS3VzdGVycyA8dGt1c3RlcnNAYXdldGEubmw+DQo+LS0tDQo+Q2hhbmdlcyBp
biB2MjoNCj4gLSByZXNlbmQgdmlhIGI0ICh2MSB3YXMgc2VudCB3aXRoIGEgbWFpbCBjbGllbnQp
DQo+IC0gdXNlIGZ1bGwgYXV0aG9yIG5hbWUgIlRqZXJrIEt1c3RlcnMiIChKYWNvYiBLZWxsZXIp
DQo+IC0gYWRkIFJldmlld2VkLWJ5IGZyb20gS3VydCBLYW56ZW5iYWNoDQo+IC0gbm8gZnVuY3Rp
b25hbCBjaGFuZ2UNCj4NCj5MaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
UEFXUFIwNU1CMTA2OTEwNkQ1MkY0RTE3RjFFREI5OUM2N0I5MTgyQFBBV1BSMDVNQjEwNjkxLmV1
cnByZDA1LnByb2Qub3V0bG9vay5jb20vDQo+LS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYi9pZ2JfbWFpbi5jIHwgMyArKy0NCj4gMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQ0KPg0KPmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2IvaWdiX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9p
Z2JfbWFpbi5jDQo+aW5kZXggY2U5MWRkYTAwZWMwLi5hYmI1NWNkNTg5YTkgMTAwNjQ0DQo+LS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMNCj4rKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYw0KPkBAIC05MDYxLDcgKzkwNjEs
OCBAQCBzdGF0aWMgaW50IGlnYl9jbGVhbl9yeF9pcnEoc3RydWN0IGlnYl9xX3ZlY3RvciAqcV92
ZWN0b3IsIGNvbnN0IGludCBidWRnZXQpDQo+IAkJcGt0YnVmID0gcGFnZV9hZGRyZXNzKHJ4X2J1
ZmZlci0+cGFnZSkgKyByeF9idWZmZXItPnBhZ2Vfb2Zmc2V0Ow0KPiANCj4gCQkvKiBwdWxsIHJ4
IHBhY2tldCB0aW1lc3RhbXAgaWYgYXZhaWxhYmxlIGFuZCB2YWxpZCAqLw0KSXMgdGhpcyBjb21t
ZW50IHVwLXRvLWRhdGUgbm93ID8NClJldmlld2VkLWJ5OiBQaW90ciBLd2FwdWxpbnNraSA8cGlv
dHIua3dhcHVsaW5za2lAaW50ZWwuY29tPg0KDQo+LQkJaWYgKGlnYl90ZXN0X3N0YXRlcnIocnhf
ZGVzYywgRTEwMDBfUlhEQURWX1NUQVRfVFNJUCkpIHsNCj4rCQlpZiAoIXNrYiAmJg0KPisJCSAg
ICBpZ2JfdGVzdF9zdGF0ZXJyKHJ4X2Rlc2MsIEUxMDAwX1JYREFEVl9TVEFUX1RTSVApKSB7DQo+
IAkJCWludCB0c19oZHJfbGVuOw0KPiANCj4gCQkJdHNfaGRyX2xlbiA9IGlnYl9wdHBfcnhfcGt0
c3RhbXAocnhfcmluZy0+cV92ZWN0b3IsDQo+DQo+LS0tDQo+YmFzZS1jb21taXQ6IDJkMzA5MGE4
YWViNTk2YTI2OTM1ZGIwOTU1ZDQ2YzlhNWRiNWM2Y2UNCj5jaGFuZ2UtaWQ6IDIwMjYwNjE5LWln
Yi1yeC10cy1maXgtY2Q3MDU4NWVlMzE2DQo+DQo+QmVzdCByZWdhcmRzLA0KPi0tDQo+VGplcmsg
S3VzdGVycyA8dGt1c3RlcnNAYXdldGEubmw+DQo+DQo+DQo=
