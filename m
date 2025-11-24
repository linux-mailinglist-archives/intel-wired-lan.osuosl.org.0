Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFB6C7FC9C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 10:59:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF5666075B;
	Mon, 24 Nov 2025 09:59:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EIzXBj62YFTC; Mon, 24 Nov 2025 09:59:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E99566075E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763978392;
	bh=xvGlSIdOaMMtYsEo47qkVaSJbqWNdhGAQnJGmREy4tM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZMd5e/PkOJrY2Gr2HaemNQhN+8O8wqE3DMtYnQ5dXlAozS/+HCxAESpw0ngsj3iOi
	 Nw5GDDn96RlMKBmlDNBELoqGRLzZFHQoVxnmxf22+qufjBr+vVp7bjKHVSwzVIASAR
	 o9gdZ5VprBCHIDrrw5HD5ZaVk2g3G/BJ9ESXOhO4AWuWJ6mwtcipWLnM4C/6Z8z4mi
	 ymgbTYO0lXQmN8hT5TUcRUr9RhUrAc01YpLbACxSIUZYqWZM/s+8fbrL7lssqzgS1A
	 /vqBZdj2AqFR8NqC5gHkPIo8VvIiWPTNjBRo6AZdbKgkwZxUXOZJkIwJa4i9hDhBk1
	 WJtfYg+EK4y1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E99566075E;
	Mon, 24 Nov 2025 09:59:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6EBDDE4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 09:59:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60175827BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 09:59:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SEjNFH7zlOmq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 09:59:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 73B70822CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73B70822CD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 73B70822CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 09:59:48 +0000 (UTC)
X-CSE-ConnectionGUID: fL4jYQkvTjGibzGrQsVP7g==
X-CSE-MsgGUID: E43jFOnfTTe0/8/t/LNOmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="66133686"
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="66133686"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 01:59:47 -0800
X-CSE-ConnectionGUID: NXUFXjG9QROVWwKFipITeg==
X-CSE-MsgGUID: vb7+BqeCR2ml4pm3T1Hzcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="197215286"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 01:59:47 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 01:59:47 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 01:59:47 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.14) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 24 Nov 2025 01:59:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o+kwsYaXgq1SwI04bQFF58h/9ah+fEBku5ytBC9L36YXDLoNfjnHXSRFX0R13gdMX7nhPVQPSa8duUaeXCLaFLPm/b3t2wcB/oF/PIOj69JBMwTyYfSAncCxwRoinzzG3UUhDk8Bu9dz/q9O2+N8jG4S67H6FpAAeXorP1MO2djXrr5SqX0M3kqDYR84RkxEFQrlzc3CBNwZG4CotdBe0LtXlt2AFFHMTKjXOzd+Cci82IRnDJzsEwICuUqb3pUopNveFydusMoUubD3YMR0lLwqSo81u3OMwF3QLnayKYzzSt8kC0lFXPRyg7cTi00zjTSynaF43lUdZ6ebn2HZXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xvGlSIdOaMMtYsEo47qkVaSJbqWNdhGAQnJGmREy4tM=;
 b=xLVwQY8r/JZJdJ/AyYrSUE9UzvEvjpdpDa0UZqMCOekYxzavi8DrzYAxv8E2MQ9pwd++F940WbRlEIvdH7DLraSpXL3UBdJgr288K8UgW+dMzMMFRREvBHgFIwAv1jQAR3n97ujr6VnwHlbFDX03brSUpz20AcwRY8GIE/fhPR3OFyPL8n873KrRuimmyYLvDLUDq5deAU8g1oyNWZ7Q4hViA6NWTqRHX+zWnR7VP/2TCKK+sjlsGm9TXiplFtleNYVy5yOKQCeXqddxXJkGAAc8I6xobcyAByncmH/mBHhB+/bReK897DMeMICGR8T6ZCZDP2O2/e8epKb1FcgcVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA1PR11MB6220.namprd11.prod.outlook.com (2603:10b6:208:3e8::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Mon, 24 Nov
 2025 09:59:44 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.016; Mon, 24 Nov 2025
 09:59:44 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Ally Heev <allyheev@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, Dan Carpenter <dan.carpenter@linaro.org>
Thread-Topic: [Intel-wired-lan] [PATCH RESEND RFT net-next 2/2] idpf: remove
 __free usage in idpf_virtchnl
Thread-Index: AQHcXRW8afYu3ovzVkO1eKo2/iUdkLUBl9eA
Date: Mon, 24 Nov 2025 09:59:44 +0000
Message-ID: <IA3PR11MB898634C10F1D503809B1C4DEE5D0A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-a03fcd1937c0@gmail.com>
 <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-2-a03fcd1937c0@gmail.com>
In-Reply-To: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-2-a03fcd1937c0@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA1PR11MB6220:EE_
x-ms-office365-filtering-correlation-id: 92e4dfd2-6f61-44c7-04de-08de2b4031b5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?Sy9rSmVGSDU1Mk02VEFYTUttK2hyd285NjJCaUFTaGtRRTNiNWp6Ujl5RGVl?=
 =?utf-8?B?SWQzSTMxL3lXK2VEdktMbGo3UXJQdCt0b1lvRldsNkgrQkN6SGRUeGdMSkVz?=
 =?utf-8?B?cFpxYWliSVVXVmRhaVk5b3dEQUQ1ZWxLZktnVE4vQ3pLdUo1QityRHBHMWpP?=
 =?utf-8?B?azFSUkR5bUFOdG9TaHNRaUViZ2lvU3hmSWQ0aU9tQkdiYUVrMk5KcCtnbGVM?=
 =?utf-8?B?K0ozZk42eXpGWEF3Ky9XcW1Oa29DZXJPdFdxNzBjOXc5cUNydUwwbWRxVURI?=
 =?utf-8?B?UjQ1dXc4V01jL0c5NlFpU1lzS1I3OElpay9zZ1BHazhHT1U1LytGU1hMa1A0?=
 =?utf-8?B?R0JPTjU2aG9OMGErVkdoSFUrcStwa1B1UzVaZDBlUnpJdVBKNnRSelZMU1VE?=
 =?utf-8?B?ekg0cDI3T01XeU5hb2VJVXR2WTI1ejBZdmxyRFNocC9XQy9jc2pxRGNzQjYr?=
 =?utf-8?B?TGI3ekRZdjRVVHA4dVpyT0liYU1xc3lqc3FzZ1hCRUloSCtwSDM1ZFhJV2l0?=
 =?utf-8?B?VkcwQUx4bjVOTUIzZXdHcmR0ZFJ1MDhpS2JJOUdqSzdiWExaRTRTaVJ2Z3NS?=
 =?utf-8?B?aURpam1zS2pBbkVWR0txZzBsTXZkeHo4MU9rU1RBQlhyQzhlZGdFb1RJV3c1?=
 =?utf-8?B?UGVnaEJrRVp0TE05dHJIaWhSb21UamNUZG5HSTYwbjNDVk1FbEU4OU1CTmhZ?=
 =?utf-8?B?NzIzTTlIbHpMWjNFcVpVNG93eGRTTThUaFdmZjBsQUIzeWxVbU02ZnljRlN0?=
 =?utf-8?B?c3JZQVdBYmxXT09rTDdFZ0RmRys1Wm1kSE5HSzNJZlhNMDAvSmZvUXFNZUZ2?=
 =?utf-8?B?WDhwY0g2bUVXYWU0WFRtNktHYTcxbW5CVTQzRC9EbFBoVzN2UWtSbmRmUVNZ?=
 =?utf-8?B?K21hek5VYlI0Y0hPYVV0NWFFRHNBbjJmV2w4Wkw3SG5KM25palNIVTZGYVRF?=
 =?utf-8?B?WDgycjhVcTJGcGFrMWdnc25MRkVkelRQMm9ZZ3Y4ZUs5YWpxU1pxMU1jN1p3?=
 =?utf-8?B?bS9tMFNOUFovTCtJM2dFbGQzQUpmYmIzWFQ4N1JabHdEMlBQS1RiYXZlZ0lq?=
 =?utf-8?B?WDdUZ0l6RGdMQXRPc3FKN1VnQ3E5aXVERC90Um1BQSsxT0xPNTBwTC83dXRx?=
 =?utf-8?B?a2o4NnZ6dUg2eWM4SFBhRGV1b0lsQTNxMDFkbkx6bzVXNVhiamZrcURSRVBs?=
 =?utf-8?B?NWExSjQ1UTc4SkVnSEl6UCs0UUFCYm9udUdFRDdLV2poM0M0K3ZEc3V6KzRU?=
 =?utf-8?B?TmY2TXBaTGUrWmpTRTZnVjhjci9GSS9jK3NiUE5XRVZtK0EraTFub1l5TFZ3?=
 =?utf-8?B?bzlHcVF4My9KMVVaVEpSMzFjWm0ySTJhRGU2Y0M5enZEYW10WGg5eDA2bTBB?=
 =?utf-8?B?NWJrekhnZ1h1ZTB1RWFRZlZ0US9kWGVQajZ1NVU1cEQxaTdaVGVHVHdMWGhD?=
 =?utf-8?B?bEVZanhhRW16VlI2Q0xTQXVBdkg1d3NPY1BkM0pHZys1YUEzUk1zK1cxT0Z1?=
 =?utf-8?B?SnJrSWtGQjk2SSs3RDhqTUozcEtzL1BqMVVrem1hbXhvUjI5R3FtdzNuL0NG?=
 =?utf-8?B?K1Q5akVEb1psNkZKZTNtdS9WWXBjMi84QUpXT3VvRDNTME1lcnJxK1NoSHVE?=
 =?utf-8?B?RCtkaENXYUhFZ3IzaFFSL25LVU9tTUFURlJwU01iZWpRU2hMQkFJeC9PZnFv?=
 =?utf-8?B?bkZyYnJxcWNGcEdjdjJPTjJ6TDlaOEV0ZzllT3Zkb3pxUEM0cURVYWc3Sjhs?=
 =?utf-8?B?dUhCMDg5eEgxSDBjNHVGZUU2QmpBUGVVZE1OeFpNdzdBUm5Md2NUVGQ1UHA1?=
 =?utf-8?B?MXFET0xzbXZqL1NuWm85eks0NTM4UDVpQWFjc0Ezd2dPNzRjUjJUUUY4WmVy?=
 =?utf-8?B?ZEx0bEhTQVp6UkVnOWloc3FDL05sV09WWmNBTVV1UjNoUTZjRHRuWmRTNm1o?=
 =?utf-8?B?WThkUTRNN2N1eHlOcjJZWENoNUpGaFFSRDhwbHJBSDEwUjNEcnpOQ2JxQmsw?=
 =?utf-8?Q?JZLJlcw+czG3RPuflYlNhJ3xE1r2BU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WFp6eFZFd0FpbTJ2d05Gdi9xRXpNQWNPNTJxc2EraE1WeS9wbXExaFdqdXpK?=
 =?utf-8?B?SGJEalpjSzFrSDZXWkVjdDY4ZzlMd3pOaUt2K21lRnlYWkVQRWw0T2REOWpW?=
 =?utf-8?B?cG9xQkdEc0tKSjJVTm1vVVROT0JhMFRyRmk5TjFUbHIzRmpKc2hmZlhOVG5F?=
 =?utf-8?B?RlFub0x5emNOM1ptamZqdTZoSSsrVnF6ZDFIN0ExbHNjS0Y3L3M0NEYwNGJI?=
 =?utf-8?B?M0RIMVFHaWUzZmFCbSs1bTh6bkhmSU40M3VPNXN0aTFEazVTc1pRQktXb3VS?=
 =?utf-8?B?UDV6QlRBSEFUM09CMXoySi8vNHpuQXpqRTRqclpiK2RqbE1MTjUyRkg5aWp4?=
 =?utf-8?B?Y1lRT3FnOGx1WkRSN0E4Rm5GRzUrdmtaMDBRVEpvdTZxeVJLek9kK0VRZ3cw?=
 =?utf-8?B?RnlTMDBRZFBwN2RZanZrenAyYTlJMUNJVHdHeFpGaWVDZFVxai8zTDg3Z1U1?=
 =?utf-8?B?L0ZvMHBZS1pIelIxRkhieEJEUVBMTHdPTzhDZWxmSmpIT3RXcU1SQlU1amRo?=
 =?utf-8?B?a2RPMFNXV1VKc3RpNW1XMVpvaUJhaU1rZWNtWS92OFU0bWZ1cVZMS3RPTEw3?=
 =?utf-8?B?SUpnL2V0eW9iMU9kRWNPY0lIVUFwL0V0VU8zaE1PdnNrQ1lFZWVPY3I5YTYz?=
 =?utf-8?B?N0hIdTZzc00zQ2RDNjR6d3RIUzBLekJDUWdiZ2c2RnZPR3dXaTlTQy9vam5C?=
 =?utf-8?B?UStINDcxNWZkdGdjK3RiazFZVnAyS20wczdNL05NOElXbWpPOXlKa05BNkF2?=
 =?utf-8?B?ZU1aaTBhTVh2NE9PS1V3WFJQeXBOeTVWUzhESWNyZXowaGJjTDNpcjFkSmE4?=
 =?utf-8?B?M1RLUHlIdVBaVG5LbDNuZHhuNDYvclE1YmQrZ1FrelAxc0R1YTlxbVlzbTN4?=
 =?utf-8?B?Q2dGZXNHV1RJckswekovczZ4VHRVcEwxWHVTdnZlaFJwa3luRkIrQlB3QVdX?=
 =?utf-8?B?cFZVYTR5QWFYcVVERi93ZXRGc3AvWmtIYTBWdlcxRHByTVpEa0VIL292TXUx?=
 =?utf-8?B?K2hXMURWMGUvcDZsLzhLMGF5THVxTW1NQXI4Q1JBdVZ0Wm10UjM1RFdGSnVp?=
 =?utf-8?B?UU56LzZyNXRVY3ZzZVdvV0Y4OXBKRTBZdU5EamVFTWlMc1lMR2NrU3YycTd4?=
 =?utf-8?B?SzFpc2ZwM3hwWWZUSmxUUStTaUtVRjlyUE9YN0o0eFg0bjRYLzhHdEYyMzQ5?=
 =?utf-8?B?UjVLR3NtR3p5MlpvZGtVNGhTRVRKL2Jvcnl0MmJTSitMTlZEenlrYXR6dFB6?=
 =?utf-8?B?L2ZWdXBNMnhKV3R2cjArQ0NaVXlDK1RUZndxQlBLSkNrYzJWVG5pZFZGQkJr?=
 =?utf-8?B?MFNscWNXWjBDbDgxZnFwS1NuTWFGUVZmSEp6MmVxb0xGQjg2OUJhSHlpQmU0?=
 =?utf-8?B?YmoyMWlvZHA3N1lIbjg2cndRQStnT2VrelZ6eFV6bHVER3dBd1RQUkZqdU8v?=
 =?utf-8?B?OXNtMkp1Z0t0cUh5TDJZa2hpOE1pZU9tS2tiSWtPSWZteFVTTzVCUkF4dXJz?=
 =?utf-8?B?SXhoWko4VDNKcHVUekFUTkRLSER4a2MzR0VzMHJQRkZCTlNPS2RLVlNGNllV?=
 =?utf-8?B?SXEvMG1qb0VZckROWC80OU9xQytIUFV3SWI4LzhBZ2ZxK1pwUEZ3OUMzTERh?=
 =?utf-8?B?VVlQUHZGYjlwUE8xOUhycGVKY3Q0am9EMUN6RFk4c2RTd00xZVFNSlM0VVZp?=
 =?utf-8?B?ekQ1RWZ1YjcxQWMxbE1VcXlqS3Z4RHhsNEcwd1I2SkIyRTBWT2hUdjN3VklN?=
 =?utf-8?B?c0Ntdi9tcUdWVUtwZ2xvb01LeHJRUnZ2R0Y4UzFPeU82SThUd28yQnhYMW1P?=
 =?utf-8?B?Vi9HU1BxNGZ4V1Ezd0ZnRjBnSWVFdHFBcmRhcWlJV0RQdjc3Z3FGejJaUTZF?=
 =?utf-8?B?aFNMTk0rOTc1aGx6UkszRmp2Q0lHNThEOTBheFFQclN6R3lyZzFMbmQ1djJZ?=
 =?utf-8?B?WjF5ZFJxRlFBU3cyQk9tMHo5NzFCdWFOTlhMUW9qQ2d1RFpvNHNIWW9wMHVV?=
 =?utf-8?B?QTBVSWFTVm1LMlVENGdocXJJcER5c2JkUkRmOXNlb3NsT0lQWm55aGhLWndS?=
 =?utf-8?B?MGRCY1hqR1hySE9vdzVtTHM4SEcrYWZrRjIzWStrek9ieURwbWRycFNCME51?=
 =?utf-8?B?NTVDN2JOcGtXZHFUaTlqVEhoYWRHMEZZU3FTdC9kbmJJUDMxeXpJQ1REb0JW?=
 =?utf-8?B?N0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92e4dfd2-6f61-44c7-04de-08de2b4031b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2025 09:59:44.4440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZrR9fL4bIUjCs8BiSwsQR9sHk3Ii5p/3bI5RnRvPqdm6ABYWqGnp1O5lOVMlMWqNBsvlj07NOhUU8qbaY02nfY1eBHPl2tP5z1bfleCdrFk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6220
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763978388; x=1795514388;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xvGlSIdOaMMtYsEo47qkVaSJbqWNdhGAQnJGmREy4tM=;
 b=fbynuGfz2ld2i5PJkYpTCIN7WOOvy9LI1QhdP0evhkMxY2AmF6Pc7fIX
 +uCsSbSljQBfYXC3A7S1ZDCvcA7Z0Abwtwryey3dBjKHvu1XVW7tE+Cl2
 V7LTUoUD7DzHfpi4Q2TMS6Wvj2h9mp6O8cq0Jubjd8wI6KoiS0PpWR76L
 HNGKxIWFsBWxRgU1tDkFULVqxk0gR7ll73IqNvrqlpUo3UBefUEfmJeYh
 HT5BlhYf9PHtrkiMB7Hh4w9t27oj6TdgP2MXvEgIVd/bTL/rx6pGGrNBJ
 ZcO4kXd1qKHbK7g13nxAgCfO0vsiv1t8/uaBpe4evLozHQSDZyhxVPkUF
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fbynuGfz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND RFT net-next 2/2] idpf: remove
 __free usage in idpf_virtchnl
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQWxs
eSBIZWV2DQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjQsIDIwMjUgODo0MSBBTQ0KPiBUbzog
Tmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwN
Cj4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEFuZHJldyBMdW5u
DQo+IDxhbmRyZXcrbmV0ZGV2QGx1bm4uY2g+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVt
bG9mdC5uZXQ+OyBFcmljDQo+IER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+OyBKYWt1YiBL
aWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsgUGFvbG8NCj4gQWJlbmkgPHBhYmVuaUByZWRoYXQu
Y29tPg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2Z2Vy
Lmtlcm5lbC5vcmc7IGxpbnV4LQ0KPiBrZXJuZWxAdmdlci5rZXJuZWwub3JnOyBBbGx5IEhlZXYg
PGFsbHloZWV2QGdtYWlsLmNvbT47IFNpbW9uIEhvcm1hbg0KPiA8aG9ybXNAa2VybmVsLm9yZz47
IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAbGluYXJvLm9yZz4NCj4gU3ViamVjdDogW0lu
dGVsLXdpcmVkLWxhbl0gW1BBVENIIFJFU0VORCBSRlQgbmV0LW5leHQgMi8yXSBpZHBmOg0KPiBy
ZW1vdmUgX19mcmVlIHVzYWdlIGluIGlkcGZfdmlydGNobmwNCj4gDQo+IHVzYWdlIG9mIGNsZWFu
dXAgYXR0cmlidXRlcyBpcyBkaXNjb3VyYWdlZCBpbiBuZXQgWzFdLCBhY2hpZXZlIGNsZWFudXAN
Cj4gdXNpbmcgZ290by4gSW4gdGhpcyBwYXRjaCB0aG91Z2gsIG9ubHkgdW5pbml0aWFsaXplZCBw
b2ludGVycyB3aXRoDQo+IF9fZnJlZSBhdHRyaWJ1dGUgYXJlIGNsZWFuZWQgYXMgdGhleSBjYW4g
Y2F1c2UgdW5kZWZpbmVkIGJlaGF2aW9yIHdoZW4NCj4gdGhleSBnbyBvdXQgb2Ygc2NvcGUNCj4g
DQo+IFN1Z2dlc3RlZC1ieTogU2ltb24gSG9ybWFuIDxob3Jtc0BrZXJuZWwub3JnPg0KPiBSZXBv
cnRlZC1ieTogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBsaW5hcm8ub3JnPg0KPiBDbG9z
ZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9hUGlHX0Y1RUJRVWpacXNsQHN0YW5sZXku
bW91bnRhaW4vDQo+IFNpZ25lZC1vZmYtYnk6IEFsbHkgSGVldiA8YWxseWhlZXZAZ21haWwuY29t
Pg0KPiANCj4gWzFdIGh0dHBzOi8vZG9jcy5rZXJuZWwub3JnL3Byb2Nlc3MvbWFpbnRhaW5lci1u
ZXRkZXYuaHRtbCN1c2luZy0NCj4gZGV2aWNlLW1hbmFnZWQtYW5kLWNsZWFudXAtaC1jb25zdHJ1
Y3RzDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbGx5IEhlZXYgPGFsbHloZWV2QGdtYWlsLmNvbT4N
Cj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdmlydGNobmwu
YyB8IDI4DQo+ICsrKysrKysrKysrKysrKysrLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
OSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl92aXJ0Y2hubC5jDQo+IGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3ZpcnRjaG5sLmMNCj4gaW5kZXgNCj4gY2JiNWZh
MzBmNWEwZWM3NzhjMWVlMzA0NzBkYTNjYTIxY2MxYWYyNC4uNWIyYmY4YzMyMDViYzFlYTA3NDZm
NzhhZmEyYQ0KPiAyNGYzZjhhZDJhOGMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lkcGYvaWRwZl92aXJ0Y2hubC5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lkcGYvaWRwZl92aXJ0Y2hubC5jDQo+IEBAIC0xMDEyLDcgKzEwMTIsNyBAQCBz
dGF0aWMgaW50IGlkcGZfc2VuZF9nZXRfY2Fwc19tc2coc3RydWN0DQo+IGlkcGZfYWRhcHRlciAq
YWRhcHRlcikNCj4gICAqLw0KPiAgc3RhdGljIGludCBpZHBmX3NlbmRfZ2V0X2xhbl9tZW1vcnlf
cmVnaW9ucyhzdHJ1Y3QgaWRwZl9hZGFwdGVyDQo+ICphZGFwdGVyKSAgew0KPiAtCXN0cnVjdCB2
aXJ0Y2hubDJfZ2V0X2xhbl9tZW1vcnlfcmVnaW9ucyAqcmN2ZF9yZWdpb25zDQo+IF9fZnJlZShr
ZnJlZSk7DQo+ICsJc3RydWN0IHZpcnRjaG5sMl9nZXRfbGFuX21lbW9yeV9yZWdpb25zICpyY3Zk
X3JlZ2lvbnMgPSBOVUxMOw0KPiAgCXN0cnVjdCBpZHBmX3ZjX3huX3BhcmFtcyB4bl9wYXJhbXMg
PSB7DQo+ICAJCS52Y19vcCA9IFZJUlRDSE5MMl9PUF9HRVRfTEFOX01FTU9SWV9SRUdJT05TLA0K
PiAgCQkucmVjdl9idWYuaW92X2xlbiA9IElEUEZfQ1RMUV9NQVhfQlVGX0xFTiwgQEAgLTEwMjks
MjENCj4gKzEwMjksMjkgQEAgc3RhdGljIGludCBpZHBmX3NlbmRfZ2V0X2xhbl9tZW1vcnlfcmVn
aW9ucyhzdHJ1Y3QNCj4gaWRwZl9hZGFwdGVyICphZGFwdGVyKQ0KPiANCj4gIAl4bl9wYXJhbXMu
cmVjdl9idWYuaW92X2Jhc2UgPSByY3ZkX3JlZ2lvbnM7DQo+ICAJcmVwbHlfc3ogPSBpZHBmX3Zj
X3huX2V4ZWMoYWRhcHRlciwgJnhuX3BhcmFtcyk7DQo+IC0JaWYgKHJlcGx5X3N6IDwgMCkNCj4g
LQkJcmV0dXJuIHJlcGx5X3N6Ow0KPiArCWlmIChyZXBseV9zeiA8IDApIHsNCj4gKwkJZXJyID0g
cmVwbHlfc3o7DQo+ICsJCWdvdG8gb3V0Ow0KPiArCX0NCj4gDQo+ICAJbnVtX3JlZ2lvbnMgPSBs
ZTE2X3RvX2NwdShyY3ZkX3JlZ2lvbnMtPm51bV9tZW1vcnlfcmVnaW9ucyk7DQo+ICAJc2l6ZSA9
IHN0cnVjdF9zaXplKHJjdmRfcmVnaW9ucywgbWVtX3JlZywgbnVtX3JlZ2lvbnMpOw0KPiAtCWlm
IChyZXBseV9zeiA8IHNpemUpDQo+IC0JCXJldHVybiAtRUlPOw0KPiArCWlmIChyZXBseV9zeiA8
IHNpemUpIHsNCj4gKwkJZXJyID0gLUVJTzsNCj4gKwkJZ290byBvdXQ7DQo+ICsJfQ0KPiANCj4g
LQlpZiAoc2l6ZSA+IElEUEZfQ1RMUV9NQVhfQlVGX0xFTikNCj4gLQkJcmV0dXJuIC1FSU5WQUw7
DQo+ICsJaWYgKHNpemUgPiBJRFBGX0NUTFFfTUFYX0JVRl9MRU4pIHsNCj4gKwkJZXJyID0gLUVJ
TlZBTDsNCj4gKwkJZ290byBvdXQ7DQo+ICsJfQ0KPiANCj4gIAlodyA9ICZhZGFwdGVyLT5odzsN
Cj4gIAlody0+bGFuX3JlZ3MgPSBrY2FsbG9jKG51bV9yZWdpb25zLCBzaXplb2YoKmh3LT5sYW5f
cmVncyksDQo+IEdGUF9LRVJORUwpOw0KPiAtCWlmICghaHctPmxhbl9yZWdzKQ0KPiAtCQlyZXR1
cm4gLUVOT01FTTsNCj4gKwlpZiAoIWh3LT5sYW5fcmVncykgew0KPiArCQllcnIgPSAtRU5PTUVN
Ow0KPiArCQlnb3RvIG91dDsNCj4gKwl9DQo+IA0KPiAgCWZvciAoaW50IGkgPSAwOyBpIDwgbnVt
X3JlZ2lvbnM7IGkrKykgew0KPiAgCQlody0+bGFuX3JlZ3NbaV0uYWRkcl9sZW4gPQ0KPiBAQCAt
MTA1Myw2ICsxMDYxLDggQEAgc3RhdGljIGludA0KPiBpZHBmX3NlbmRfZ2V0X2xhbl9tZW1vcnlf
cmVnaW9ucyhzdHJ1Y3QgaWRwZl9hZGFwdGVyICphZGFwdGVyKQ0KPiAgCX0NCj4gIAlody0+bnVt
X2xhbl9yZWdzID0gbnVtX3JlZ2lvbnM7DQo+IA0KPiArb3V0Og0KPiArCWtmcmVlKHJjdmRfcmVn
aW9ucyk7DQo+ICAJcmV0dXJuIGVycjsNCj4gIH0NCj4gDQo+IA0KPiAtLQ0KPiAyLjQ3LjMNCg0K
UmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50
ZWwuY29tPg0K
