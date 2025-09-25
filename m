Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 272DAB9FF0C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Sep 2025 16:20:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A789961471;
	Thu, 25 Sep 2025 14:20:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K6BQRwNK58ob; Thu, 25 Sep 2025 14:20:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4C236143E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758810024;
	bh=bzM7YWCm0miYuPnReqtEQynyj0mDxQpSPHP4I1BR8dY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GWDHgqK5tFpXWxdoSiyGL1rdKyzo4wlLbAJcUkqVYLLifjsqdzUnOuX/UdnYoeG4Y
	 XeWuzbdxTYrYmXTqVkweiQat9ejeW4EPTBwzga8lnxYY42ioAoZo81o9/L9y7nXHWP
	 HxOI1NoqOwKtamE4QjvBlfZyejtUlVDOGRMXm3K649gLadJB6m9EMOu0oydlCYuCGX
	 cbCuwlVvSFnTa1mcYbDrmvpYHWpz5O2JN8WtQ3TQP6HG82qQPG+XZ1abR2ryugZuwl
	 yN6brs7duoH4+nkA3+2FotwgEv11d99aYLEeDqbhELJuR22tpRtRGDVnTd7ohS9zZU
	 i/1JZDH6ShXww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4C236143E;
	Thu, 25 Sep 2025 14:20:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0C9DF177
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 14:20:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E745961437
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 14:20:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jGeARGLg0ZqK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 14:20:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DBBC8613CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DBBC8613CA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DBBC8613CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 14:20:21 +0000 (UTC)
X-CSE-ConnectionGUID: r31XAmx3TkawePWmXdSXMg==
X-CSE-MsgGUID: /DrOqQUIT1+SGRjZF31srw==
X-IronPort-AV: E=McAfee;i="6800,10657,11564"; a="72556178"
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="72556178"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 07:20:21 -0700
X-CSE-ConnectionGUID: Ej4u6LidTPujeaQQyMwAng==
X-CSE-MsgGUID: RALD1RlMSz64S9Bwa8YIsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="181631935"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 07:20:21 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 07:20:20 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 25 Sep 2025 07:20:20 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.20) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 07:20:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=miMh3ob/UfQVDPws/yr4EYPwHPuu4DvGPyerCcewZtoBWBQ25n79lk0TTGd5hwIWDJ8bSPFmezBUZfci7fqMHs+q1vjHuaZOsRux2vpvJVWMpDdKHnYgicsoollsh/EV43ywZfnb2cye6IvkC48Cjsnqgznn4oRLMqQVzas8GpvUPcq5q4xE0P8BEr72hZZHavvW87HNBlm9zRrjX52gmiYHWWMHPkVVHtX9DHBVa2DykUITyL1hp04Q1GYggJ3Nu0pzaASiCwF0tSCMMcsXDPL7j1NOSEwulwP/uQ6YfD2HiWlx7RrPb9SnyeYpGWPvQg2j5KX38U/pToBwT0VYZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bzM7YWCm0miYuPnReqtEQynyj0mDxQpSPHP4I1BR8dY=;
 b=Cra90MXS0aSoZeiBjBn729qCRjgOGUiShsFCGrxT92l+y+DPGV5Ex5FY4mH6AR1OhJifTkYF/3qrQm/ijfm1bYh8gKzhUHqv4qVRy09CL8sV/4QhzlR6St7AcHnD/DkmSiW6GCD0hHf1NJ4ajxlYS6Xrb9uM2tz3JofQAv9PM3K5sWfysDs6GgWxP3PYOhpbsR5nFDifVKjki5LNbh4wd1n44a1pOS5RnG/Lj/0MYoSNMbpd30DiRa01orSBVFuzogkWz/95NC/eMZWO6mVuRzoteU8o2rKp9SIAR8JpypxobMAhepiFLBeVj8+jHAAUDgdCtdvNe++fadLNF06G8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by MN0PR11MB6232.namprd11.prod.outlook.com (2603:10b6:208:3c3::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.20; Thu, 25 Sep
 2025 14:20:11 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%3]) with mapi id 15.20.9160.008; Thu, 25 Sep 2025
 14:20:04 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>
Thread-Topic: [Intel-wired-lan] [RESEND PATCH v2 iwl-next] ice: add TS PLL
 control for E825 devices
Thread-Index: AQHcKYczoJIA/fH1u0SadAp+nHccNbSbznmAgAglUBA=
Date: Thu, 25 Sep 2025 14:20:04 +0000
Message-ID: <IA1PR11MB6219AC1FE818E04A567EB15C921FA@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20250919165925.1685446-1-grzegorz.nitka@intel.com>
 <75a4949d-fd47-4159-b677-9d321d344890@molgen.mpg.de>
In-Reply-To: <75a4949d-fd47-4159-b677-9d321d344890@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|MN0PR11MB6232:EE_
x-ms-office365-filtering-correlation-id: 556e208a-b368-439e-a4b4-08ddfc3e9f13
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?VzY4b1lOMkFRbWYzdjFiNlNWeUJoWDZWcVFaaU80YWZJMFk0ZGxpbzBSSXZh?=
 =?utf-8?B?VjhQczVqNDRxOUgzMXpBQXJjVjFCemdpWXZPSXlBQ1NXcTVTTlpzMnQ4dUdl?=
 =?utf-8?B?UGdjOVhtVW8yUFk5UUtlV3lqUUV4TSt2Q3RZMXNMSm9RU0V4R0lYTWw1a3d1?=
 =?utf-8?B?RkkyWW1UMW5MZzg0SFVEdGhaVkF0T3RyNUZCWkplZk00QUxjWitIVUwrL2R5?=
 =?utf-8?B?NnV5Rkcwb1U0NTYvZDgwKzZWeGp5b1lqS3htTG0wZkphOVI4QmVRNlBPVzdo?=
 =?utf-8?B?QnY1ZlJsWkxCWkxwaU1KQkRWTnkvektXOEdNM2VIcjNnaytBa1Y2LzF5N3Fl?=
 =?utf-8?B?QTJyODl1M29tRFZmUThLVWRqOHZHdWJEbitvWEhYMXhic2YzS0Rtcm5zY21N?=
 =?utf-8?B?d2FZelN1eU1BRGFRTTZCdnBCd0ViZDRBUTdFMUNkbDhLTGJzc1FEWVkwVGR2?=
 =?utf-8?B?Q25TcHc0M0dnWXlHU2ZHSTNuUzlmTjJCaUFKRTk0WTJmRTNHdEswTGwrWi9V?=
 =?utf-8?B?d2NtaFA1V3hINVpLdUZBUjdURkFuSWVwcmwwSGxiSUoyNGhKL2tXS295b2Zi?=
 =?utf-8?B?VDdsMnFUNFpiVjFoVTE1M0JMbk1oSE4zWUtOMFExc2NvaWJaTVFWVk1HTENW?=
 =?utf-8?B?V0NRLzNLSEdleGZhb0kvU0VrWFh6dXVKOHJ6bzhVWmtaZkhJalpwNjJaKzV3?=
 =?utf-8?B?Y3R0bmJUNjRtOWw2bjBrdFBnTGkzR2dVbXdPaDJnQ2pVTVVnME4ySzRFRHFm?=
 =?utf-8?B?WXhoUXZnbVJLSlhkUUR5c3lkWURsZVZpZGlNaGtyb1dTV0lHM21TdUV1NE55?=
 =?utf-8?B?MWhPRDArRkJCTlVKWVRGS2p3YTVjSGZ0RHlEcWN0UHlzbXp5WkgwbUZLdUd6?=
 =?utf-8?B?N1F0TFUwV3dyQ210YUk1cUVQYXRzVEp6R0pqQmFWT0dteHMwaXFaNlF4TDc5?=
 =?utf-8?B?OUZrRkZMUUtHSGhkV005cTN1dVl0V3UxdlVHZHcyQnd2UTRKbzlMRDhkT3Y1?=
 =?utf-8?B?WkFNUjlJZHQvTFdGcjFUalBydHIyRi9uckRnOWdQeHRoMzM5S2VhQU9SUWtM?=
 =?utf-8?B?b3gramJTTlBOY3pOcEFOai96Mi9ZYjRmTnNsNnJnZWFqcmN4TnkrKzQ4Rkdn?=
 =?utf-8?B?ZUkvc0JWWkZ2dHlxalVnTUdGa1dJblVTcE9PS094bTFqNmtpVEFNQndYdDky?=
 =?utf-8?B?ekNPL2FOcmh0UU5TcWFjUGpaejU3R3A2cnJPUkc0WXFRTWpMa3NOVHV5cjh3?=
 =?utf-8?B?S0xxUEsxSlFaZWVMMUpiOWJ0aCtGQktDY0tyTWU3N25tNkZwL3pObnc2L0ZN?=
 =?utf-8?B?MzFVdERUQll2SnRXZXN6MlEyd3I3MzlSV0RyOTFaWU92eFhxeVA4QzRjRy80?=
 =?utf-8?B?NGt6M1h4Tkk5YTdHR3pybEtRb2xCUWpNZlU3WkV6UktyWHZGc0J1Vm11UjFo?=
 =?utf-8?B?WGs0Q2N1TDRmeWlFRHpVYVlsc1pFSStnRWJhWUN3RWlhNjFDRWtDcWhrWHhE?=
 =?utf-8?B?YmthYW1kZ2plWXI1ZHNJczJJWk5INjc0TmNRSDdEYVRPMFNnb3pBQkRjVFlX?=
 =?utf-8?B?N0I4eTd4Tmh3QnBRMTczSmtOdm11dDdjSm1QYStoU3pCYlZCa2hJdVVUNkhn?=
 =?utf-8?B?RWlQNlh0aitXUzI3RkVCSm1zSmxaRFFOc1hKRnlaOWJ2WmJNbFlNR1BLdEg2?=
 =?utf-8?B?NGpTR3pOeVNXZUd3MVdSZmcrT0JnQXk4bFM3N3Y0VFhIRi9aVFlnVzYyOFFG?=
 =?utf-8?B?bitCK0YwbE5rRVk2NVpsak8veGk1Q0VFay93WmRKdC85TVBhSkY1dEJiOUFQ?=
 =?utf-8?B?bXhyZDlXWTd0SFhjZnNyRm81dW1BamlRV25UV2JVTjNlcS9JUGcxcXhRZWQ4?=
 =?utf-8?B?Q3lMK1lCeVlCaUNTUlgxV0VqOVJnaUhIZkQ3SFpMMTZwVVpxc1FRKzlCcGg4?=
 =?utf-8?B?dUJiYmZnd1pQck9BL1RIY3dyU3RtL2h0UjRJS09UVXNCUUR4dmN4RTBDNFF2?=
 =?utf-8?B?NWJvMTlWVUVlUkRjT3RtTDhvK3UyNEZFWGFZaFFDazlUYUZKTERPVFBMYnFN?=
 =?utf-8?Q?x0Ejli?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TkpIZkZOTytRK0dvWDZsNzh1b0gvRExTUjhDRDdBYW1LQkQrNXJmZ3YwN25t?=
 =?utf-8?B?ZExwajBmY21wK3RkYUVoYncvQ01vR0tEdlhMT0pTM2l4RW5SV2REMC9MZ3lQ?=
 =?utf-8?B?TzY4RWxudTkvWWZWS2xVRjZJekUzYXR4anRBUkVwZDJyUXM3aklvMlZsd2xV?=
 =?utf-8?B?dkhCL0UyU2lKOElNQWI0RjN3OW42U1FaK014YU91cnlNTFlmVEduRW9EWTAv?=
 =?utf-8?B?YUdmZ0tKMjF4Y250cnhPQUlkaWZndjg2dWxLdWNZV2VqY2Z5NWdDSXg4Ui8x?=
 =?utf-8?B?V05rY04wK0tuVHplOTdMdThmdU5Hb291dmVzU0xxdWhtSnp1OWdIeDdyQThK?=
 =?utf-8?B?cFpNbWkrclRBN01zNm9lVVNIbGZueEM1dGFuM2hTV1ZMN0g1WVI0cWY2M0dk?=
 =?utf-8?B?R3JRZFhpSlZjZ0lTallCdzBoK1RyYW9xNmUxbDhBYnNUS3VQZCtyNWk3Rkdv?=
 =?utf-8?B?TitVdUN3S2ZLYzJSYW1URnpWUXcrQ29rVXM5UGRQWG9MWVRTc3hkRzJTWWhX?=
 =?utf-8?B?elpsajFLUUNPdkFwdFBHenFLbzVVWVdJaWNnV2kybWlYeDEwd25vOWVmU1RL?=
 =?utf-8?B?S29mb2VBYUorRm0yNVA2eEk0bHAwTTlXUzc2UHlHdEQ0QXJ6RDFaeGJ0dG90?=
 =?utf-8?B?SjVPQ1NYeDl6SEJseWdTQlgxeWZYZ1ZQSmxpOG9wYW96aC85bm5WYlpoN1l4?=
 =?utf-8?B?Y3Jrd2dtbkc2a1d3bmgrZC95czROWTNmQnZsMFgwTE52Qnk2OFNLRWZlU09o?=
 =?utf-8?B?QVp1dHc3bVhZUXd4SHd4N2hUajVNemxvZkdFZ2c4M05MMmpvU0dmTUhVSStm?=
 =?utf-8?B?cHhvUjZ5MkRlMmQwSlJSWFhUbmRkZC9FVnZGaE9mYTBoK2ljZ1NVUStkZmlx?=
 =?utf-8?B?cWpEaXZGemZjeFg1SWtieTh6QS84cEFrOXllTXZsUjVMTVIwVG9uQTV4UGZl?=
 =?utf-8?B?M1EwRXlIQldWTUJpUW9MWklzUWRUV09PUjBIVkUyNUh0d3RYYXBsNlNGN1hO?=
 =?utf-8?B?cFZ0Sjk2bm5kTExyekdNdGZ4OEIzbC8vaEM1bWxubXVuUTE4UHFNd3p3SC9k?=
 =?utf-8?B?Z3JsOW8vR2l1TmkyZHZXdEUzclBKQjRxMFFrWkpPQk56dTkwdmZXSTV3OWZD?=
 =?utf-8?B?a29HYkx6djMwWWZNQ1VJNXVBTkQyNVpnaFRCOEZMc2paUzNSMnB6MWtRaHh3?=
 =?utf-8?B?RnNKejBDWVdIVkVwOTJpMW83MmlMSzh2S0R0bHJEUm1PdVU2TzJVdzRSVGxW?=
 =?utf-8?B?OUdCeTc0Q0NpWFJJSmFIS2YvbEVPdXhrTG1nRTVQeDQ3REJGMTZJODg2VlUv?=
 =?utf-8?B?YWZnSW90YWlET084Z1doZUN4Umc3Q0VIY1VZZUhaY2FlV2o2UkdOeUZsckI4?=
 =?utf-8?B?WGNNU05uVmNvMmlWdEtxRk9tNVUzUWhPY25SeDNPdU1Fa0ZGMHpMMlE4cU43?=
 =?utf-8?B?WlB5amFlWUNjN0NoeXlNSzJJN2RqNGN6WFhCcTBmVTV5MGlZTTYvM2ZqVWhK?=
 =?utf-8?B?bzlWbFo5WGZCenAzelkrVWJGRks1QjhJcGswbVRuc2tETFdJN2Nac0hhMDF6?=
 =?utf-8?B?UUVUdzRnbVdWeWcrZ284OHo3UHdtaWhObkl6MTArcjRvV3NIbzJqN1JFc0hN?=
 =?utf-8?B?Um9PdktmZ1hOQ2k1aUV5RFF4T3dHa3J5OVRSSHJqdWpVbURrcEFVZU5PWWli?=
 =?utf-8?B?Z1o2dml2TWdodENOc2VaL0hsU0xtRWxSb2wvbG9rQmlNempobGl4OFpIRG9h?=
 =?utf-8?B?WDRkWFFIQXlta3J0SXpIblRRbXcwc2xPYU1JNk9xbGlvZTlGVURabk9jbjJI?=
 =?utf-8?B?U1NpN1lVZCtJRHFvdXd6TWQ5TmFCY2RrREJ0eFljRjRqOUlHaEEwMFlOeXVl?=
 =?utf-8?B?YVdxTHVNZEcvSTBUUmJwa3ViT0Fpai9BT1YzUTdKL1ZTSHFZVHRZYzl0Vzha?=
 =?utf-8?B?K1B2cEFqdjZ3NFJpT0xQbGdlUWNsNjdLMHI0bU9uSGk5YWZJOXJBRldPSkVV?=
 =?utf-8?B?d3o1WmttalRLSGYwMXJ6ZUl2ckJGaXQ0bEpybFlLZlVrekhWOFpYYnhHNkpW?=
 =?utf-8?B?SExLbzQvV1g0WXdjcXVreHkwOFZVTUlOblkxbzBrSEE3bzd2WDBtMExuNnNh?=
 =?utf-8?Q?lAYs6w0b6mhiY+Dzazm5u2Rq5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 556e208a-b368-439e-a4b4-08ddfc3e9f13
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2025 14:20:04.2645 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bljuVw6eA3Q4tSaSn4cSUogIs37WWqEbmqRT3RsYb4VRHpaxy5RerPUSpy/i+4RHpW3DI6gwsegJS2Fdkil3C2V8UTcyv3gtLsqXiO9OQjM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6232
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758810022; x=1790346022;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bzM7YWCm0miYuPnReqtEQynyj0mDxQpSPHP4I1BR8dY=;
 b=Wr5ofN63+aVp/O67aKfgHfrCSDz2mdmKCA0EVRhYm6BxZnON54jziAhe
 68+IUf+VRqX0J8NywWOodjBZjNbNt/2wsj+KQ0jUhcM3dvFVCLkd9r3dg
 /8gTZ9fhKjt+ozaJtaPOHhMw971Qrk2w+397pJZbOBK8hzUbl3WtPEJP5
 RUwv2r7pGedgIL43j9aZP8OAAFa85VbDo9rVBnKRDttODduzrErkXB7RQ
 E8APxN3szaO/OwSORJz6e07445SHqrBvlHeippaXbaS3af1553VmEkqyD
 KywkNJfgMOnbe4pA76jq5jVHetnXoN8l2tzXm2v4AiiO8or9g5BK822DO
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Wr5ofN63
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RESEND PATCH v2 iwl-next] ice: add TS PLL
 control for E825 devices
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnpl
bEBtb2xnZW4ubXBnLmRlPg0KPiBTZW50OiBTYXR1cmRheSwgU2VwdGVtYmVyIDIwLCAyMDI1IDEx
OjI3IEFNDQo+IFRvOiBOaXRrYSwgR3J6ZWdvcnogPGdyemVnb3J6Lm5pdGthQGludGVsLmNvbT4N
Cj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJu
ZWwub3JnOyBLdWJhbGV3c2tpLA0KPiBBcmthZGl1c3ogPGFya2FkaXVzei5rdWJhbGV3c2tpQGlu
dGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtSRVNFTkQgUEFUQ0gg
djIgaXdsLW5leHRdIGljZTogYWRkIFRTIFBMTA0KPiBjb250cm9sIGZvciBFODI1IGRldmljZXMN
Cj4gDQo+IERlYXIgR3J6ZWdvcnosDQo+IA0KPiANCj4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2gu
DQo+IA0KDQpEZWFyIFBhdWwsDQoNClRoYW5rcyBmb3IgYWxsIHlvdXIgY29tbWVudHMuIE15IGFu
c3dlcnMgaW5saW5lLg0KDQo+IEFtIDE5LjA5LjI1IHVtIDE4OjU5IHNjaHJpZWIgR3J6ZWdvcnog
Tml0a2E6DQo+ID4gQWRkIGFiaWxpdHkgdG8gY29udHJvbCBDR1UgKENsb2NrIEdlbmVyYXRpb24g
VW5pdCkgMTU4OCBDbG9jayBSZWZlcmVuY2UNCj4gPiBtdXggc2VsZWN0aW9uIGZvciBFODI1IGRl
dmljZXMuIFRoZXJlIGFyZSB0d28gY2xvY2sgc291cmNlcyBhdmFpbGFibGUNCj4gPiB3aGljaCBt
aWdodCBzZXJ2ZSBhcyBpbnB1dCBzb3VyY2UgdG8gVFNQTEwgYmxvY2s6DQo+ID4gLSBpbnRlcm5h
bCBjcmlzdGFsIG9zY2lsbGF0b3IgKFRYQ08pDQo+ID4gLSBzaWduYWwgZnJvbSBleHRlcm5hbCBE
UExMDQo+ID4NCj4gPiBFODI1IGRvZXMgbm90IHByb3ZpZGUgY29udHJvbCBvdmVyIHBsYXRmb3Jt
IGxldmVsIERQTEwgYnV0IGl0IHByb3ZpZGVzDQo+ID4gY29udHJvbCBvdmVyIFRJTUVfUkVGIG91
dHB1dCBmcm9tIHBsYXRmb3JtIGxldmVsIERQTEwuDQo+ID4gSW50cm9kdWNlIGEgc29mdHdhcmUg
Y29udHJvbGxlZCBsYXllciBvZiBhYnN0cmFjdGlvbjoNCj4gPiAtIGNyZWF0ZSBhIERQTEwgKHJl
ZmVycmVkIGFzIFRTUExMIGRwbGwpIG9mIFBQUyB0eXBlIGZvciBFODI1YywNCj4gPiAtIGRlZmlu
ZSBpbnB1dCBwaW4gZm9yIHRoYXQgZHBsbCB0byBtb2NrIFRJTUVfUkVGIHBpbg0KPiA+IC0gZGVm
aW5lIG91dHB1dCBwaW4gZm9yIHRoYXQgZHBsbCB0byBtb2NrIFRJTUVfU1lOQyBwaW4gd2hpY2gg
c3VwcGxpZXMgYQ0KPiA+ICAgIHNpZ25hbCBmb3IgbWFzdGVyIHRpbWVyDQo+IA0KPiBTaG91bGQg
eW91IHJlc2VuZCwgd3JpdGUgRFBMTCB1cHBlcmNhc2UgZXZlcnl3aGVyZT8NCj4gDQo+ID4gTm90
ZToNCj4gPiAtIHRoZXJlIGlzIG9ubHkgb25lIGZyZXF1ZW5jeSBzdXBwb3J0ZWQgKDE1Ni4yNSBN
SHopIGZvciBUSU1FX1JFRg0KPiANCj4gKlQqaGVyZQ0KPiANCj4gPiAgICBzaWduYWwgZm9yIEU4
MjUgZGV2aWNlcy4NCj4gPiAtIFRJTUVfU1lOQyBwaW4gaXMgYWx3YXlzIGNvbm5lY3RlZCwgYXMg
aXQgc3VwcGxpZXMgZWloZXIgaW50ZXJuYWwgVFhDTw0KPiANCj4gZWkqdCpoZXINCj4gDQo+ID4g
ICAgc2lnbmFsIG9yIGEgc2lnbmFsIGZyb20gZXh0ZXJuYWwgRFBMTCBhbHdheXMNCj4gPg0KPiA+
IEFkZCBrd29ya2VyIHRocmVhZCB0byB0cmFjayBFODI1IFRTUExMIGRwbGwgbG9jayBzdGF0dXMu
IEluIGNhc2Ugb2YNCj4gPiBsb2NrIHN0YXR1cyBjaGFuZ2UsIG5vdGlmeSB0aGUgdXNlciBhYm91
dCB0aGUgY2hhbmdlLCBhbmQgdHJ5IHRvIGxvY2sgaXQNCj4gPiBiYWNrIChpZiBsb3N0KS4gUmVm
YWN0b3IgdGhlIGNvZGUgYnkgYWRkaW5nICdwZXJpb2RpY193b3JrJyBjYWxsYmFjaw0KPiA+IHdp
dGhpbiBpY2VfZHBsbHMgc3RydWN0dXJlIHRvIG1ha2UgdGhlIHNvbHV0aW9uIG1vcmUgZ2VuZXJp
YyBhbmQgYWxsb3cNCj4gPiBkaWZmZXJlbnQgdHlwZSBvZiBkZXZpY2VzIHRvIHJlZ2lzdGVyIHRo
ZWlyIG93biBjYWxsYmFjay4NCj4gPg0KPiA+IFVzYWdlIGV4YW1wbGU6DQo+IA0KPiBQbGVhc2Ug
bWVudGlvbiwgd2hlcmUgYHZubGAgbGl2ZXMuDQo+IA0KDQpUaGFua3MgZm9yIGNhdGNoaW5nIHRo
YXQuIEFsbCBhYm92ZSB0byBiZSBmaXhlZCBpbiB2Mw0KDQo+ID4gLSB0byBnZXQgVFNQTEwgZHBs
bCBpbmZvDQo+ID4gJCB5bmwgLS1mYW1pbHkgZHBsbCAtLWR1bXAgZGV2aWNlLWdldA0KPiA+IA0K
Li4uDQo+ID4NCj4gPiArc3RhdGljIHN0cnVjdCBkcGxsX3Bpbl9mcmVxdWVuY3kgaWNlX2NndV9w
aW5fZnJlcV8xNTZfMjVtaHpbXSA9IHsNCj4gPiArCURQTExfUElOX0ZSRVFVRU5DWV9SQU5HRSgx
NTYyNTAwMDAsIDE1NjI1MDAwMCksDQo+IA0KPiBFeGN1c2UgbXkgaWdub3JhbmNlOiAyNSBNSHog
PSAyNTAwMCBIeiBzaG91bGQgaGF2ZSBvbmx5IHRocmVlIDA/DQo+IA0KDQpBY3R1YWxseSB0aGlz
IGlzIGNvcnJlY3QsIGF0IGxlYXN0IGZyb20gbXkgcG9pbnQgb2Ygdmlldy4NClRoaXMgZGVmaW5p
dGlvbiBpcyB0byBjb3ZlciAxNTYuMjUgTUh6ICh0aGF0J3Mgd2h5IGl0J3MgMTU2Kl8qMjUgaW4g
aXRzIG5hbWUpDQpBbmQgaXMgZXhwcmVzc2VkIGluIEh6IHVuaXRzLCBzbyAxNTYsMjUgTUh6IGlz
IGVxdWFsIHRvIDE1NiAyNTAgMDAwDQoNCj4gPiArc3RhdGljIHZvaWQgaWNlX2RwbGxfcGVyaW9k
aWNfd29ya19lODI1KHN0cnVjdCBrdGhyZWFkX3dvcmsgKndvcmspDQo+ID4gK3sNCj4gPiArCXN0
cnVjdCBpY2VfZHBsbHMgKmQgPSBjb250YWluZXJfb2Yod29yaywgc3RydWN0IGljZV9kcGxscywg
d29yay53b3JrKTsNCj4gPiArCXN0cnVjdCBpY2VfcGYgKnBmID0gY29udGFpbmVyX29mKGQsIHN0
cnVjdCBpY2VfcGYsIGRwbGxzKTsNCj4gPiArCXN0cnVjdCBpY2VfZHBsbCAqdHAgPSAmcGYtPmRw
bGxzLnRzcGxsOw0KPiA+ICsJYm9vbCBsb2NrX2xvc3Q7DQo+ID4gKwlpbnQgZXJyID0gMDsNCj4g
DQo+IEluaXRpYWxpemF0aW9uIGRvZXMgbm90IHNlZW0gbmVjZXNzYXJ5Lg0KDQpJIGFkZGVkIGVy
ciA9IDAgZm9yIHJlc2V0IGluIHByb2dyZXNzIGNhc2UgKHRoZSBpZiBiZWxvdykgd2hpY2ggaXMg
bm90IGEgcmVhbCBlcnJvciBjYXNlLg0KT3RoZXJ3aXNlIGVyciBtaWdodCBiZSB1bmluaXRpYWxp
emVkLg0KDQo+IA0KPiA+ICsJaWYgKGljZV9pc19yZXNldF9pbl9wcm9ncmVzcyhwZi0+c3RhdGUp
KQ0KPiA+ICsJCWdvdG8gcmVzY2hlZDsNCj4gPiArDQo+ID4gKwltdXRleF9sb2NrKCZwZi0+ZHBs
bHMubG9jayk7DQo+ID4gKw0KPiA+ICsJZXJyID0gaWNlX3RzcGxsX2xvc3RfbG9ja19lODI1Yygm
cGYtPmh3LCAmbG9ja19sb3N0KTsNCj4gPiArCWlmIChlcnIpIHsNCj4gPiArCQlkZXZfZXJyKGlj
ZV9wZl90b19kZXYocGYpLA0KPiA+ICsJCQkiRmFpbGVkIHJlYWRpbmcgVGltZVN5bmMgUExMIGxv
Y2sgc3RhdHVzLg0KPiBSZXRyeWluZy5cbiIpOw0KPiANCj4gSWYgaXTigJlzIHBvc3NpYmxlIHRv
IHJldHJ5LCBzaG91bGQgdGhpcyBiZSBhIHdhcm5pbmcgaW5zdGVhZD8NCj4gDQoNClRoaXMgYWJv
dmUgZXJyb3IgYW5kIHRoZSBlcnJvciBiZWxvdyBhcmUgcmVhbCBlcnJvcnMgcmVsYXRlZCB0byBy
ZWFkL3dyaXRlIEhXIGlzc3Vlcw0KKG1vc3QgbGlrZWx5IEhXIGVycm9yKS4gVGhhdCdzIHdoeSBJ
J20gZ29pbmcgdG8ga2VlcCBpdCBhcyBhbiBlcnJvci4gSG93ZXZlciwgDQp0byBhdm9pZCBlbmRs
ZXNzIGRtZXNnIHNwYW1taW5nLCBJJ20gZ29pbmcgdG8gYXBwbHkgdGhlIHRocmVzaG9sZCBtZWNo
YW5pc20gd2UgYWxyZWFkeQ0KaGF2ZSBpbiBwbGFjZSBmb3IgRFBMTCBzdGF0dXMgbW9uaXRvcmlu
ZyBmb3Igb3RoZXIgMTAwRyBwcm9kdWN0cy4NCg0KPiA+ICsJfSBlbHNlIGlmIChsb2NrX2xvc3Qp
IHsNCj4gPiArCQl0cC0+ZHBsbF9zdGF0ZSA9IERQTExfTE9DS19TVEFUVVNfVU5MT0NLRUQ7DQo+
ID4gKwkJZXJyID0gaWNlX3RzcGxsX3Jlc3RhcnRfZTgyNWMoJnBmLT5odyk7DQo+ID4gKwkJaWYg
KGVycikNCj4gPiArCQkJZGV2X2VycihpY2VfcGZfdG9fZGV2KHBmKSwgIkZhaWxlZCB0byByZXN0
YXJ0DQo+IFRpbWVTeW5jIFBMTCBsb2NrIHN0YXR1cy5cbiIpOw0KPiANCj4gKnRvIHJlc3RhcnQg
YSBsb2NrIHN0YXR1cyogc291bmRzIHN0cmFuZ2UgdG8gbWUuDQo+IA0KPiBXaGF0IHNob3VsZCBh
IHVzZXIgZG8gaW4gdGhpcyBjYXNlPw0KPiANCg0KQWdyZWUsIGNvcHktcGFzdGUgZXJyb3IuIFRv
IGJlIGZpeGVkIGFzICIgRmFpbGVkIHRvIHJlc3RhcnQgVGltZVN5bmMgUExMIGxvY2sgc3RhdHVz
LlxuIi4NClRoYW5rcyBmb3IgY2F0Y2hpbmcgdGhhdCENClNlZSBjb21tZW50IGFib3ZlLCB0aGlz
IGlzIGEgY2FzZSBmb3IgSFcgZXJyb3IgYW5kIHVzZXIgbW9zdCBsaWtlbHkgY2FuIGRvIG5vdGhp
bmcNCmFib3V0IHRoYXQuDQoNCj4gPiArCX0gZWxzZSB7DQo+ID4gKwkJdHAtPmRwbGxfc3RhdGUg
PSBEUExMX0xPQ0tfU1RBVFVTX0xPQ0tFRDsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwltdXRleF91
bmxvY2soJnBmLT5kcGxscy5sb2NrKTsNCj4gPiArDQo+ID4gKwlpZiAodHAtPnByZXZfZHBsbF9z
dGF0ZSAhPSB0cC0+ZHBsbF9zdGF0ZSkgew0KPiA+ICsJCXRwLT5wcmV2X2RwbGxfc3RhdGUgPSB0
cC0+ZHBsbF9zdGF0ZTsNCj4gPiArCQlkcGxsX2RldmljZV9jaGFuZ2VfbnRmKHRwLT5kcGxsKTsN
Cj4gPiArCX0NCj4gPiArDQo+ID4gK3Jlc2NoZWQ6DQo+ID4gKwkvKiBSdW4gdHdpY2UgYSBzZWNv
bmQgb3IgcmVzY2hlZHVsZSBpZiB1cGRhdGUgZmFpbGVkICovDQo+ID4gKwlrdGhyZWFkX3F1ZXVl
X2RlbGF5ZWRfd29yayhkLT5rd29ya2VyLCAmZC0+d29yaywNCj4gPiArCQkJCSAgIGVyciA/IG1z
ZWNzX3RvX2ppZmZpZXMoMTApIDoNCj4gPiArCQkJCSAgIG1zZWNzX3RvX2ppZmZpZXMoTVNFQ19Q
RVJfU0VDIC8gMikpOw0KPiANCj4gUGxlYXNlIG1lbnRpb24sIHdoeSB0aGlzIGludGVydmFsIGlz
IGNob3NlbiBpbiB0aGUgY29tbWVudCBhbmQgY29tbWl0DQo+IG1lc3NhZ2UuDQo+IA0KDQpOb3Qg
c3VyZSBpZiBJIGtub3cgbW9yZSB0aGUgZGV0YWlscyBoZXJlLiBUaGlzIGlzIHJlLXVzZSBvZiBl
eGlzdGluZyBhcHByb2FjaCBmb3INCkRQTEwgbW9uaXRvcmluZyBpbiBFODEwL0U4MzAgZGV2aWNl
cyAobm90IHZpc2libGUgaW4gdGhpcyBwYXRjaCkuDQpJIHdpbGwgZGVmaW5pdGVseSBtZW50aW9u
IHRoYXQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLg0KDQo+ID4gK30NCj4gPiArDQo+ID4gQEAgLTM1
ODcsNiArMzc5NywyNiBAQCBzdGF0aWMgaW50IGljZV9kcGxsX2luaXRfcGlucyhzdHJ1Y3QgaWNl
X3BmICpwZiwNCj4gYm9vbCBjZ3UpDQo+ID4gICAJCQkJCQkgICAgIElDRV9EUExMX1BJTl9TV19O
VU0pOw0KPiA+ICAgCQlpZiAocmV0KQ0KPiA+ICAgCQkJZ290byBkZWluaXRfdWZsOw0KPiA+ICsJ
fSBlbHNlIGlmIChwZi0+aHcubWFjX3R5cGUgPT0gSUNFX01BQ19HRU5FUklDXzNLX0U4MjUpIHsN
Cj4gPiArCQlyZXQgPSBpY2VfZHBsbF9pbml0X2RpcmVjdF9waW5zKHBmLCBjZ3UsICZwZi0+ZHBs
bHMudHNwbGxfaW4sDQo+ID4gKwkJCQkJCWNvdW50LA0KPiA+ICsNCj4gCUlDRV9EUExMX1RTUExM
X0lOUFVUX05VTV9FODI1LA0KPiA+ICsNCj4gCSZpY2VfZHBsbF9pbnB1dF90c3BsbF9vcHNfZTgy
NSwNCj4gPiArCQkJCQkJcGYtPmRwbGxzLnRzcGxsLmRwbGwsDQo+ID4gKwkJCQkJCU5VTEwpOw0K
PiA+ICsJCWlmIChyZXQpDQo+ID4gKwkJCWdvdG8gZGVpbml0X2lucHV0czsNCj4gPiArCQljb3Vu
dCArPSBJQ0VfRFBMTF9UU1BMTF9JTlBVVF9OVU1fRTgyNTsNCj4gPiArDQo+ID4gKwkJcmV0ID0g
aWNlX2RwbGxfaW5pdF9kaXJlY3RfcGlucyhwZiwgY2d1LCAmcGYtPmRwbGxzLnRzcGxsX291dCwN
Cj4gPiArCQkJCQkJY291bnQsDQo+ID4gKw0KPiAJSUNFX0RQTExfVFNQTExfT1VUUFVUX05VTV9F
ODI1LA0KPiA+ICsNCj4gCSZpY2VfZHBsbF9vdXRwdXRfdHNwbGxfb3BzX2U4MjUsDQo+ID4gKwkJ
CQkJCXBmLT5kcGxscy50c3BsbC5kcGxsLA0KPiA+ICsJCQkJCQlOVUxMKTsNCj4gPiArCQlpZiAo
cmV0KQ0KPiA+ICsJCQlnb3RvIGRlaW5pdF90c3BsbF9pbjsNCj4gPiArCQljb3VudCArPSBJQ0Vf
RFBMTF9UU1BMTF9PVVRQVVRfTlVNX0U4MjU7DQo+IA0KPiBUaGlzIHNlZW1zIGR1cGxpY2F0ZWQu
IFdoeSBub3QgdXNlIGEgbG9vcD8NCj4gDQoNCkknbSBub3Qgc3VyZSBpZiBJIHVuZGVyc3RhbmQu
IERvIHlvdSBzdWdnZXN0IHRvIHB1dCBpY2VfZHBsbF9pbml0X2RpcmVjdF9waW5zIGNhbGwNCmlu
dG8gdGhlIGxvb3AuIFBsZWFzZSBub3RlLCB0aGVzZSBhcmUgZGlmZmVyZW50IERQTExzIHBhc3Nl
ZCBhbmQgdGhlcmVmb3JlDQpkaWZmZXJlbnQgZXJyb3IgcGF0aHMuDQoNCj4gPiAgIAl9IGVsc2Ug
ew0KPiA+ICAgCQljb3VudCArPSBwZi0+ZHBsbHMubnVtX291dHB1dHMgKyAyICoNCj4gSUNFX0RQ
TExfUElOX1NXX05VTTsNCj4gPiAgIAl9DQo+ID4gKy8qKg0KPiA+ICsgKiBpY2VfdHNwbGxfbG9z
dF9sb2NrX2U4MjVjIC0gY2hlY2sgaWYgVFNQTEwgbG9zdCBsb2NrDQo+ID4gKyAqIEBodzogUG9p
bnRlciB0byB0aGUgSFcgc3RydWN0DQo+ID4gKyAqIEBsb3N0X2xvY2s6IE91dHB1dCBmbGFnIGZv
ciByZXBvcnRpbmcgbG9zdCBsb2NrDQo+ID4gKyAqDQo+ID4gKyAqIEdldCBFODI1IGRldmljZSBU
U1BMTCBkcGxsIGxvY2sgc3RhdHVzLg0KPiA+ICsgKg0KPiA+ICsgKiBSZXR1cm46DQo+ID4gKyAq
ICogMCAtIE9LDQo+ID4gKyAqICogbmVnYXRpdmUgLSBlcnJvcg0KPiA+ICsgKi8NCj4gPiAraW50
IGljZV90c3BsbF9sb3N0X2xvY2tfZTgyNWMoc3RydWN0IGljZV9odyAqaHcsIGJvb2wgKmxvc3Rf
bG9jaykNCj4gPiArew0KPiA+ICsJdTMyIHZhbDsNCj4gPiArCWludCBlcnI7DQo+ID4gKw0KPiA+
ICsJZXJyID0gaWNlX3JlYWRfY2d1X3JlZyhodywgSUNFX0NHVV9ST19MT0NLLCAmdmFsKTsNCj4g
PiArCWlmIChlcnIpDQo+ID4gKwkJcmV0dXJuIGVycjsNCj4gPiArDQo+ID4gKwlpZiAoIUZJRUxE
X0dFVChJQ0VfQ0dVX1JPX0xPQ0tfVFJVRV9MT0NLLCB2YWwpKQ0KPiA+ICsJCSpsb3N0X2xvY2sg
PSB0cnVlOw0KPiA+ICsJZWxzZQ0KPiA+ICsJCSpsb3N0X2xvY2sgPSBmYWxzZTsNCj4gDQo+IERp
cmVjdGx5IGFzc2lnbiBpdD8NCj4gDQoNCkFncmVlLCB0byBiZSBmaXhlZCBpbiB2My4NCg0KPiAg
ICAgICpsb3N0X2xvY2sgPSAhRklFTERfR0VUKElDRV9DR1VfUk9fTE9DS19UUlVFX0xPQ0ssIHZh
bCk7DQo+IA0KPiA+ICsNCj4gPiArCXJldHVybiAwOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICsvKioN
Cj4gPiArICogaWNlX3RzcGxsX3Jlc3RhcnRfZTgyNWMgLSB0cmlnZ2VyIFRTUExMIHJlc3RhcnQN
Cj4gPiArICogQGh3OiBQb2ludGVyIHRvIHRoZSBIVyBzdHJ1Y3QNCj4gPiArICoNCj4gPiArICog
UmUtZW5hYmxlIFRTUExMIGZvciBFODI1IGRldmljZS4NCj4gPiArICoNCj4gPiArICogUmV0dXJu
Og0KPiA+ICsgKiAqIDAgLSBPSw0KPiA+ICsgKiAqIG5lZ2F0aXZlIC0gZXJyb3INCj4gPiArICov
DQo+ID4gK2ludCBpY2VfdHNwbGxfcmVzdGFydF9lODI1YyhzdHJ1Y3QgaWNlX2h3ICpodykNCj4g
PiArew0KPiA+ICsJdTMyIHZhbDsNCj4gPiArCWludCBlcnI7DQo+ID4gKw0KPiA+ICsJLyogUmVh
ZCB0aGUgaW5pdGlhbCB2YWx1ZXMgb2YgcjIzIGFuZCBkaXNhYmxlIHRoZSBQTEwgKi8NCj4gPiAr
CWVyciA9IGljZV9yZWFkX2NndV9yZWcoaHcsIElDRV9DR1VfUjIzLCAmdmFsKTsNCj4gPiArCWlm
IChlcnIpDQo+ID4gKwkJcmV0dXJuIGVycjsNCj4gPiArDQo+ID4gKwl2YWwgJj0gfklDRV9DR1Vf
UjIzX1IyNF9UU1BMTF9FTkFCTEU7DQo+ID4gKwllcnIgPSBpY2Vfd3JpdGVfY2d1X3JlZyhodywg
SUNFX0NHVV9SMjMsIHZhbCk7DQo+ID4gKwlpZiAoZXJyKQ0KPiA+ICsJCXJldHVybiBlcnI7DQo+
ID4gKw0KPiA+ICsJLyogV2FpdCBhdCBsZWFzdCAxIG1zIGJlZm9yZSByZWVuYWJsaW5nIFBMTCAq
Lw0KPiANCj4gV2h5PyBNZW50aW9uIHRoZSBkYXRhc2hlZXQgc2VjdGlvbj8NCj4gDQoNCkhtbSAu
LiBJdCBjb21lcyBmcm9tIGludGVybmFsIGRvY3VtZW50YXRpb24gKEknbSBub3QgYXdhcmUgb2Yg
aXQncw0KcHVibGljbHkgYXZhaWxhYmxlKS4gSSdkIHNraXAgdGhhdC4NCg0KPiA+ICsJdXNsZWVw
X3JhbmdlKFVTRUNfUEVSX01TRUMsIDIgKiBVU0VDX1BFUl9NU0VDKTsNCj4gPiArCXZhbCB8PSBJ
Q0VfQ0dVX1IyM19SMjRfVFNQTExfRU5BQkxFOw0KPiA+ICsJZXJyID0gaWNlX3dyaXRlX2NndV9y
ZWcoaHcsIElDRV9DR1VfUjIzLCB2YWwpOw0KPiA+ICsNCj4gPiArCXJldHVybiBlcnI7DQo+ID4g
K30NCj4gPiArDQo+ID4gICAvKioNCj4gPiAgICAqIGljZV90c3BsbF9jZmcgLSBDb25maWd1cmUg
dGhlIENsb2NrIEdlbmVyYXRpb24gVW5pdCBUU1BMTA0KPiA+ICAgICogQGh3OiBQb2ludGVyIHRv
IHRoZSBIVyBzdHJ1Y3QNCj4gPiBAQCAtNTc3LDYgKzYzOCw3MSBAQCBzdGF0aWMgaW50IGljZV90
c3BsbF9kaXNfc3RpY2t5X2JpdHMoc3RydWN0IGljZV9odw0KPiAqaHcpDQo+ID4gICAJfQ0KPiA+
ICAgfQ0KPiA+DQo+ID4gKy8qKg0KPiA+ICsgKiBpY2VfdHNwbGxfZ2V0X2Nsa19zcmMgLSBnZXQg
Y3VycmVudCBUU1BMTCBjbG9jayBzb3VyY2UNCj4gPiArICogQGh3OiBib2FyZCBwcml2YXRlIGh3
IHN0cnVjdHVyZQ0KPiA+ICsgKiBAY2xrX3NyYzogcG9pbnRlciB0byBzdG9yZSBjbGtfc3JjIHZh
bHVlDQo+ID4gKyAqDQo+ID4gKyAqIEdldCBjdXJyZW50IFRTUExMIGNsb2NrIHNvdXJjZSBzZXR0
aW5ncy4NCj4gPiArICoNCj4gPiArICogUmV0dXJuOg0KPiA+ICsgKiAqIDAgLSBPSw0KPiA+ICsg
KiAqIG5lZ2F0aXZlIC0gZXJyb3INCj4gPiArICovDQo+ID4gK2ludCBpY2VfdHNwbGxfZ2V0X2Ns
a19zcmMoc3RydWN0IGljZV9odyAqaHcsIGVudW0gaWNlX2Nsa19zcmMgKmNsa19zcmMpDQo+ID4g
K3sNCj4gPiArCWludCBlcnI7DQo+ID4gKwl1MzIgdmFsOw0KPiA+ICsNCj4gPiArCS8qIERpc2Fi
bGUgc3RpY2t5IGxvY2sgZGV0ZWN0aW9uIHNvIGxvY2sgc3RhdHVzIHJlcG9ydGVkIGlzIGFjY3Vy
YXRlICovDQo+ID4gKwllcnIgPSBpY2VfdHNwbGxfZGlzX3N0aWNreV9iaXRzKGh3KTsNCj4gPiAr
CWlmIChlcnIpDQo+ID4gKwkJcmV0dXJuIGVycjsNCj4gPiArDQo+ID4gKwlpZiAoaHctPm1hY190
eXBlID09IElDRV9NQUNfR0VORVJJQ18zS19FODI1KQ0KPiA+ICsJCWVyciA9IGljZV9yZWFkX2Nn
dV9yZWcoaHcsIElDRV9DR1VfUjIzLCAmdmFsKTsNCj4gPiArCWVsc2UNCj4gPiArCQllcnIgPSBp
Y2VfcmVhZF9jZ3VfcmVnKGh3LCBJQ0VfQ0dVX1IyNCwgJnZhbCk7DQo+IA0KPiBVc2UgdGVybmFy
eSBvcGVyYXRvcj8NCj4gDQoNCkFncmVlLCB0byBiZSBmaXhlZCBpbiB2My4NCg0KPiA+ICsJaWYg
KGVycikNCj4gPiArCQlyZXR1cm4gZXJyOw0KPiA+ICsNCj4gPiArCSpjbGtfc3JjID0gKGVudW0N
Cj4gaWNlX2Nsa19zcmMpRklFTERfR0VUKElDRV9DR1VfUjIzX1IyNF9USU1FX1JFRl9TRUwsDQo+
ID4gKwkJCQkJICAgICAgIHZhbCk7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIDA7DQo+ID4gK30NCj4g
PiArDQouLi4NCj4gPiAraW50IGljZV90c3BsbF9sb3N0X2xvY2tfZTgyNWMoc3RydWN0IGljZV9o
dyAqaHcsIGJvb2wgKmxvY2tfbG9zdCk7DQo+ID4gK2ludCBpY2VfdHNwbGxfcmVzdGFydF9lODI1
YyhzdHJ1Y3QgaWNlX2h3ICpodyk7DQo+ID4gICAjZW5kaWYgLyogX0lDRV9UU1BMTF9IXyAqLw0K
PiA+DQo+ID4gYmFzZS1jb21taXQ6IGZmOWY4MzI5ZjE4OWMxNzU0OWYzZmJiNTA1ODUwNWZiM2U0
NmRkOTkNCj4gDQo+IFdpdGggdGhlIGNvbW1lbnRzIGFkZHJlc3NlZCwgcGxlYXNlIGZlZWwgZnJl
ZSB0byBhZGQ6DQo+IA0KPiBSZXZpZXdlZC1ieTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2Vu
Lm1wZy5kZT4NCj4gDQo+IA0KPiBLaW5kIHJlZ2FyZHMsDQo+IA0KPiBQYXVsDQoNClRoYW5rcyBh
Z2FpbiBmb3IgeW91ciBjb21tZW50cy4gQXMgbW9zdCBsaWtlbHkgSSB3b24ndCBiZSBhYmxlIHRv
IGFkZHJlc3MNCmFsbCBvZiB0aGVtIChleHBsYWluZWQgYWJvdmUpLCBJIGxldCB5b3UgdG8gZXZh
bHVhdGUgdGhlIGNoYW5nZXMgYW5kIHRvIGRlY2lkZQ0KYnkgeW91ciBvd24gYWJvdXQgIlJldmll
d2VkLWJ5Ii4NCg0KS2luZCByZWdhcmRzLA0KDQpHcnplZ29yeg0K
