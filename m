Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICJeNy2IuWmTJAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 17:58:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA4C2AEB61
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 17:58:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66BF841557;
	Tue, 17 Mar 2026 16:58:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jIW8bi1CEUi1; Tue, 17 Mar 2026 16:58:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB95541564
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773766697;
	bh=kXSwH5WXEr+oWYwJJJH3WLEA/bkjedVslJAVozeyDLI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O2p5ByOXnVTq9W0jdr5NKxssJwi4oBmBNzAW/FMrzc4aA9YE4FOQVUZ0oNnXoAv/g
	 fQroCi5ecSEfdV+GqP8sAj4xM457LsTbAaIZ09FQIEtDQkCu0Np8bSQhCbaZAU1VSo
	 0HdB1PAsfy5eCzVWeQMFNfWjgzRGAWVAyLlOB9h0CLARtutReAInVn2T1sWnoASV1V
	 TKIq7PhJtu/rUCDoz0U7zs9bgWTc5jPNEaKWOwIQcnnW6CcDM2Y5u9NM+DVkTB6vkY
	 txXPip6gemtOzPoGTQT+jarXHQFqTCkCFb/rvpOBiffgdXXhWDXOXGhGET6ZWERSD7
	 WMjDcUvM/6c0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB95541564;
	Tue, 17 Mar 2026 16:58:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 05BA11B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 16:58:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB4FF614FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 16:58:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NMvccOjxQEl9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Mar 2026 16:58:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 97494614F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97494614F9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 97494614F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 16:58:13 +0000 (UTC)
X-CSE-ConnectionGUID: 30PkQg0FSBSLxOuCDIU/gg==
X-CSE-MsgGUID: 9L8RI8vlQG+jwPZx3eJP9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="74990970"
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; d="scan'208";a="74990970"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 09:58:13 -0700
X-CSE-ConnectionGUID: 0Tsos91SQ1SIgZWxOaqkBg==
X-CSE-MsgGUID: OKCz9EAoQMqAlHK9/d7I6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; d="scan'208";a="222546643"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 09:58:12 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 17 Mar 2026 09:58:11 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 17 Mar 2026 09:58:11 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.11) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 17 Mar 2026 09:58:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V0aJIdUKpwtxHE/0s5gAFs1noGyexk+3YIPaoA+Zam7wHvquJ2e298P6W1T8viLDxqPtOmzYoFJ2R52ttB5erw8hMG5NmKxjkI1vjHgIl0T4mj5a0IS+4mbmlKPGXCPx+Jo74leOLj8ErGz3CGvnrNv3LutgjPBRMUic432/Sr7EWFy8j25mACYFOrIIuO1gmigNDMXw7sfr0mwDr/UeAj3bE3ldAUwDcM7sJB081pED1IyiMCPyiqSaiq1uJWYk0WZ5D3qQEK+lmCCxb3h/NaCJpWfUnSNDparTq1iINyvO1rY71FbMhvgM6Fv9C0iT4IJFOmrp2FsFqEgic2ZwVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kXSwH5WXEr+oWYwJJJH3WLEA/bkjedVslJAVozeyDLI=;
 b=BXkQMk749D23IKvJTYhf5q4zvfDniH2txCwh6cpsZ26yn8l6yoPbErHcnI4dXwis0Suiare2qEA1J6dm/ilc8VAQAZmXSnTUBDLRFf+27n/aOmEX1a+p2gR2qWvSQ9gkwG0Z0dhD3e0+rzv256bt5DXeCqeD1WnsXtjLpYFLIH9yXZEw7TWX97keOEL5RFqCMZZ/TVPmIOFHpK0QbiQ7kPrKymfYW/hC46OGD5mPXTx7/YfiqGGeaUEURrEO5K/fCyp1m2rzDBlXguNfLVfwsD0c0/BnSj+pqP7w13Ja3foXwPc8QKGiFGgGAnQSLwnQPMn0ULPk9MYBBnzVswlBFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8)
 by BL3PR11MB6315.namprd11.prod.outlook.com (2603:10b6:208:3b2::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.17; Tue, 17 Mar
 2026 16:58:09 +0000
Received: from PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3]) by PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3%6]) with mapi id 15.20.9700.009; Tue, 17 Mar 2026
 16:58:08 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Fodor, Zoltan" <zoltan.fodor@intel.com>,
 "horms@kernel.org" <horms@kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Grinberg, Vitaly" <vgrinber@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v11] ice: add support for
 unmanaged DPLL on E830 NIC
Thread-Index: AQHcoCdUWm/06WIofUmFPGdKuGWTVLWzHPsQ
Date: Tue, 17 Mar 2026 16:58:07 +0000
Message-ID: <PH0PR11MB7522DED2EB3F75FF0C9B65C3A041A@PH0PR11MB7522.namprd11.prod.outlook.com>
References: <20260217155808.1209194-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20260217155808.1209194-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB7522:EE_|BL3PR11MB6315:EE_
x-ms-office365-filtering-correlation-id: 914659bc-7894-4622-e58a-08de84465d40
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|22082099003|18002099003|56012099003|7053199007;
x-microsoft-antispam-message-info: Q7bpi6DLiwqjmOTuugq2cI6fxuPPcx8YxEdFKlYhIjjTHkpcz/25l5V/e6SEnUUfkzQhVe9a7oFL/SICbQAmt+DPAe3G7GZoFa1kQs9GDyNItFBpzTdJIDEwyRT8U4qknFMPF/fGXhDqt6N7mMegtP3O+vA81vMz96ystleNV9EdV3fvveruKUyOZRdPQ4LmyPi0Mh+7qqnOQWr9kVOZvv5A7PiDcZNFEoHDvd7d998Q7ZeyFl1AXic+FbmCFd5ZDz/rDwoBU8UIHtU4/asnDGURlQwLaMxBcBephclnYJe9wGq1f+LpBUN4pNnnagLW+AOhahMRa7bb23k8wribclqj1WgYRJn0yiPaF1nebCyn9TO8NB5RMuQMmOtKX90HOKgmOuwtZ2Cly4+WglSf+wFXF/aNUNQdRS4ZJVIuMZmL1nbWqF5PQcCVEmG0zVESHPhP3tmxWv2K7XJg6ULJb5SniFt03s2u6/d7tl5mAJ7zFog7vv5AHJlbhw3HANBxhbC3wA6ixejFHVskTti4UjlcDqdu+Letyz4CyGMlYypsstVle95PtF22HB/ReQ/D2qSm+VJqDbFSKVyvGEXrqC9JO0E5g4hYy/O+MG7/ja6dcdVn7V4AV7yOIf3nhZSKypjglRWkzgE1srcfv+8IMhtb7IYiFYKHo9s2yEOLijyU+CyzfU33eckMNptHvs4htSbOxdK2E2FbqCVMaXQrkF8XbAdJXE33LlHf2LWDoZCROIKJYWEi3K6UxfgLKJh4NlZ1xF/j+rb4Go6HmAYsAPC1aHAwgx6JMAPgRX7yPsY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(22082099003)(18002099003)(56012099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ejZIZFJ3WWtZS2RGbWFvMEZ1cXZzeWVGQkhFS0xsSHgzQmpyVklCbWVJdXVv?=
 =?utf-8?B?b1dOOWlBVzI4TU5rU2JCOEZER0Y2dlp5VTBKcS84aVZIZ0Jsb29LV2dxQ2lH?=
 =?utf-8?B?c01WemNQVUI2S3RMTGRYT3AxUnBlUGxUQjBxSjI3Z1pnOGVtbzFVd1NWL09P?=
 =?utf-8?B?RWVYbVdUK2Z0SCtjMytzbFZhRjJlWnRFS2ZseEJzTkdaSmg5ZkpoeCs1WWt1?=
 =?utf-8?B?OTEwVlNGU2JxUW5HVXM5eTkxTHpkaGVmZWYzNzdHSkRTWG5tU0xmNCtKZTIv?=
 =?utf-8?B?UFcrM044Y3drSUFDRnZHZVJWVG03dWRYRXg1QjlCa1Z6L2JWNUM1MWNhY3RN?=
 =?utf-8?B?MDVDaDB0SE95UWpOYW5XVzczZUdQclBhTHlyN2crY25pN2owMFpob1VEaEt1?=
 =?utf-8?B?NEp4OGo4b2R0QlNaV3hrV3NDbVc5YVhOVHJQcVVPMDhqL0t4SitjLyswR3BC?=
 =?utf-8?B?N24xMlo1VGF2MkRBVEhGaWgzMzI1QWVkNlA0VVh5Uk94a0ZTRUtmNzNtTWFH?=
 =?utf-8?B?ZTVWVVpLVGF4aW5kYzVlSEhTaTd0S0IxSFBTWlZlUWE1eXo5YlVzakx2Z0hk?=
 =?utf-8?B?djhTRkZ2STFZZDkvZXpDUGc2Vk9tcEZzOHNSL0laT3hQcCtPaVB4ajVIYlVI?=
 =?utf-8?B?c2dRamlHcHlHWDU0TU1hejFMVDZYOXJQWElueGxjbE1kalo5Z216bm1qYmdX?=
 =?utf-8?B?MEgzUW5JMlJMM3p0aTNRaVYwTFdlTlFpbkpOYWJ1WDlDT2dsd3Z6Z1krYVl4?=
 =?utf-8?B?VVNEcFZNMTZVQVVsV0V2cDVaa2IzemxWZ3k2RVdvK0dxN3hxZEhsank2b282?=
 =?utf-8?B?OTJJU1BPQmtJcXp3RklRRTgxb0lZS0ZJd053Mng5QlBVR3NSTDFQMTZKUkxa?=
 =?utf-8?B?YTBlYWV4aXA3TFkvdmE1dzYyeWRSK3g1a3dJQzg4Mm5PanEvbnhBMWQyWTZM?=
 =?utf-8?B?VHBHNGFNajJXM25oR1pnTkw3QUpHMkZZTHVDWXdJY2tsUlJRK05QR3JJdjhB?=
 =?utf-8?B?a0NzbmJWSDd6ZWRaY2Z3dnpWUnJMTEdKblhudFk3WTBLZ2tLTjVBdmt3eDhS?=
 =?utf-8?B?K2RtVVUwQXp5NE1WNXBCamVveHdiSHk1ako5TU10UmtIWktBLzJTT3lQeWlE?=
 =?utf-8?B?UUsxUWFkOGJLbDRVWjk5WksxNXZkYWF6WmJCNzRLd0lUQmpPcnQ4SzVSVUgv?=
 =?utf-8?B?eGZxWEFtQmVrUkRMSEtFR2d3aTViRktvWCtHODVzT0V6bmZBRUV0OVp0cEpC?=
 =?utf-8?B?MjJLZVJOa21QUFhUWWFaY0dhT2Z4WFJUNnpSWk9jenVGUG1ZYWE4S2RhNmpY?=
 =?utf-8?B?S2xpWGlnTVMvMVRFQmxkQUwyZUZ4RjRMUXBHR04zb1ByTFVDazRCNFhrUkdm?=
 =?utf-8?B?NkY1SEhNUnQ5NzNIcEw2NmdoT1IxM0F6b1hwV3hSTFlEcmpUZU5RVFpVN3FM?=
 =?utf-8?B?YjI0T1RMN3FvUGVVdzFiam01Z2F1aEdoYUlSdzU1S1M4MnJZQ0VJbUIzZjFC?=
 =?utf-8?B?OThqZVpSNHhsT2cybDRGS1VLUWI5U3NnY3JEWldJUm1LQ0NkUTJkbEY5US9M?=
 =?utf-8?B?SHNWQmxkNWJaaEFJU2MzSlpRNTNLaFEwNHVqWGNuMHdqUVc3ZGV2SGxIbnlI?=
 =?utf-8?B?OHdvU1o4YmxmeDY2bkIvUWduUmx1Z1VSVHFEVUFxN04zSXo3TzAvN09nUS9D?=
 =?utf-8?B?NmQzTnBzWE1mT1hQMEFDTVZSeFJSbm9xR1owaXRnM3FiS0ZubUNmakZsS0Jp?=
 =?utf-8?B?YllQQ3NXUkhxQ0IyTytrRnVZRkFHaUNScENVcW9mTHBMM3RrQlVvcCtoTnF1?=
 =?utf-8?B?MmFIbjdsSDZxN3NpV2F5b0tpbzNseC9uRlVWK3RCNnVxU2dOeW4yM0tKTTdu?=
 =?utf-8?B?R05lK08wcGorZUhJMzhubGl5WWcrZW1YSHRWajdkSC9LZkFCMlM0UHRaQ25O?=
 =?utf-8?B?eWo1YUkzK2grL2REL011ODNjNGsrV3ZlaVh0VFNSMFZEeE5XR3JOZGEwU1cy?=
 =?utf-8?B?T0hIQ2pOaW1FakEwNkRkWDRzeU5VbURIWGtnNXNNQ2U5Q3g4ZHgvRjI5OFFX?=
 =?utf-8?B?aXBMUUF1b3NZTE5kMWgvblN4TUpwUXlnQThJbTZDZzFEaG9pMnR1Z1JkOXJO?=
 =?utf-8?B?ODZNdng3c01pbkN5NjlvSjhBWC82MzJrdy9ZNEQ5aHg0RlNSWTlHYjB0elJN?=
 =?utf-8?B?dVRjVU95aXVobVRGMEdsRWdMRVViTy9YQlo0dlI4UkEvbG1neWtmdER2SHRx?=
 =?utf-8?B?L2VXY2k1SkZrNXM4djAwb3RKbEUvZVVvNCsycHBGQU5oWEZHODBIUGUzRG5I?=
 =?utf-8?B?M0ZCRmg1SlN6dU95Y1pNdll0SlBQZFNPUlFZb0xjZ2Q3aWxZdmhPZExHSkd3?=
 =?utf-8?Q?NG+S5+3fdfEwb8Qg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ij3TuRh2q49siH6I37C/8z4zxivz63V+fQdqq+lmfyhK+7Cg03vT70mPVzgSA61Lvf31q8vV0JDEUFNR0ISJPZSnwmn8Sq+zCNGMMXzrfJLHzUI3WvGusXSqwcZ5AfnePDrY70QXb44LHgFaV1u4W0q66H2uEgZ/Lht1XJ4ftDsfT0HMxCKFXrRwZv5mOrjIXjqcM97ZkNB3q7Rul5/AcvEv9DmS97q4lvXYkLc7GxXuxHNGxDlNYaXe60VD40TjB2Hx7GgMY23si8OlY0zA0eEEpjEviJ94pf/jdcJOEWXLQC3MhYx460a22nB4MtooOfMxuFioY6susbtg2yURkg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 914659bc-7894-4622-e58a-08de84465d40
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2026 16:58:07.9734 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FED+TsdVIEZkRDduy+VHTOruPdNE8xtJzwj3bSPAGoprVVGDi8KHqBNhrU9DxVfh7GZ3K/yKRz9XnuHtfdQIAW4SlT7A9TnjXwx5Km85Co8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6315
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773766695; x=1805302695;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kXSwH5WXEr+oWYwJJJH3WLEA/bkjedVslJAVozeyDLI=;
 b=htBURMHgXhsWDDM69/O7TzFU8hqv0xqNOvC8iDk8yDO+lSYtseJ6pL4U
 IDr9JtO6puV+sLCn01KMcKwTq/w16UyUPkelRu5AwxNPG++hCGyacmg9Z
 um/Q50HpFolbUo64neSW5dAzctDKGjLPN4PD0IbplzzppGu0SmWFMArZK
 p/HM0tUXbSNeekeebdCaIvdqRbk2RBx8PuvCXsmxvzlahvTfNddqVNvvz
 Ml9jnmw1K4ctBAu7rBLzF/c/+QBeeCmSq5BryQjjkQQGpEiTf/aL1WuGL
 cVQGOjnlu/CDzefnUBrQOK+8b4C88tW0sJ3BsdtUlUZQWoilHbDYcyQfw
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=htBURMHg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v11] ice: add support for
 unmanaged DPLL on E830 NIC
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
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:arkadiusz.kubalewski@intel.com,m:pmenzel@molgen.mpg.de,m:linux-doc@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:zoltan.fodor@intel.com,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:vgrinber@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,PH0PR11MB7522.namprd11.prod.outlook.com:mid,mpg.de:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 9DA4C2AEB61
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBBcmthZGl1c3og
S3ViYWxld3NraQ0KPiBTZW50OiBUdWVzZGF5LCBGZWJydWFyeSAxNywgMjAyNiA3OjU4IEFNDQo+
IFRvOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogcG1lbnplbEBtb2xn
ZW4ubXBnLmRlOyBsaW51eC1kb2NAdmdlci5rZXJuZWwub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwu
b3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBLdWJhbGV3c2tpLCBBcmthZGl1c3og
PGFya2FkaXVzei5rdWJhbGV3c2tpQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyIDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255
Lmwubmd1eWVuQGludGVsLmNvbT47IEZvZG9yLCBab2x0YW4gPHpvbHRhbi5mb2RvckBpbnRlbC5j
b20+OyBob3Jtc0BrZXJuZWwub3JnOyBLaXRzemVsLCA+IFByemVteXNsYXcgPHByemVteXNsYXcu
a2l0c3plbEBpbnRlbC5jb20+OyBHcmluYmVyZywgVml0YWx5IDx2Z3JpbmJlckByZWRoYXQuY29t
Pg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHQgdjExXSBpY2U6
IGFkZCBzdXBwb3J0IGZvciB1bm1hbmFnZWQgRFBMTCBvbiBFODMwIE5JQw0KPg0KPiBIYXJkd2Fy
ZSB2YXJpYW50cyBvZiBFODMwIG1heSBzdXBwb3J0IGFuIHVubWFuYWdlZCBEUExMIHdoZXJlIHRo
ZQ0KPiBjb25maWd1cmF0aW9uIGlzIGhhcmRjb2RlZCB3aXRoaW4gdGhlIGhhcmR3YXJlIGFuZCBm
aXJtd2FyZSwgbWVhbmluZw0KPiB1c2VycyBjYW5ub3QgbW9kaWZ5IHNldHRpbmdzLiBIb3dldmVy
LCB1c2VycyBhcmUgYWJsZSB0byBjaGVjayB0aGUgRFBMTA0KPiBsb2NrIHN0YXR1cyBhbmQgb2J0
YWluIGNvbmZpZ3VyYXRpb24gaW5mb3JtYXRpb24gdGhyb3VnaCB0aGUgTGludXggRFBMTA0KPiBh
bmQgZGV2bGluayBoZWFsdGggc3Vic3lzdGVtLg0KPg0KPiBBdmFpbGFiaWxpdHkgb2YgJ2xvc3Mg
b2YgbG9jaycgaGVhbHRoIHN0YXR1cyBjb2RlIGRldGVybWluZXMgaWYgc3VjaA0KPiBzdXBwb3J0
IGlzIGF2YWlsYWJsZSwgaWYgdHJ1ZSwgcmVnaXN0ZXIgc2luZ2xlIERQTEwgZGV2aWNlIHdpdGgg
MSBpbnB1dA0KPiBhbmQgMSBvdXRwdXQgYW5kIHByb3ZpZGUgaGFyZGNvZGVkL3JlYWQgb25seSBw
cm9wZXJ0aWVzIG9mIGEgcGluIGFuZA0KPiBEUExMIGRldmljZS4gVXNlciBpcyBvbmx5IGFsbG93
ZWQgdG8gY2hlY2sgRFBMTCBkZXZpY2Ugc3RhdHVzIGFuZCByZWNlaXZlDQo+IG5vdGlmaWNhdGlv
bnMgb24gRFBMTCBsb2NrIHN0YXR1cyBjaGFuZ2UuDQo+DQo+IFdoZW4gcHJlc2VudCwgdGhlIERQ
TEwgZGV2aWNlIGxvY2tzIHRvIGFuIGV4dGVybmFsIHNpZ25hbCBwcm92aWRlZA0KPiB0aHJvdWdo
IHRoZSBQQ0llL09DUCBwaW4uIFRoZSBleHBlY3RlZCBpbnB1dCBzaWduYWwgaXMgMVBQUw0KPiAo
MSBQdWxzZSBQZXIgU2Vjb25kKSBlbWJlZGRlZCBvbiBhIDEwTUh6IHJlZmVyZW5jZSBjbG9jay4N
Cj4gVGhlIERQTEwgcHJvZHVjZXMgb3V0cHV0Og0KPiAtIGZvciBNQUMgKE1lZGlhIEFjY2VzcyBD
b250cm9sKSAmIFBIWSAoUGh5c2ljYWwgTGF5ZXIpIGNsb2NrcywNCj4gLSAxUFBTIGZvciBzeW5j
aHJvbml6YXRpb24gb2Ygb25ib2FyZCBQSEMgKFByZWNpc2lvbiBIYXJkd2FyZSBDbG9jaykgdGlt
ZXIuDQo+DQo+IFJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9r
dGlvbm92QGludGVsLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IFBhdWwgTWVuemVsIDxwbWVuemVsQG1v
bGdlbi5tcGcuZGU+DQo+IFNpZ25lZC1vZmYtYnk6IEdyemVnb3J6IE5pdGthIDxncnplZ29yei5u
aXRrYUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEFya2FkaXVzeiBLdWJhbGV3c2tpIDxh
cmthZGl1c3oua3ViYWxld3NraUBpbnRlbC5jb20+DQo+IC0tLQ0KPiB2MTE6DQo+IC0gcmViYXNl
IGFuZCBmaXggY29uZmxpY3RzDQo+IHYxMDoNCj4tIG1vdmUgbXV0ZXggc28gaXMgYWx3YXlzIGlu
aXRpYWxpemVkIHdoZW4gdXNlZA0KPi0gY2hlY2sgYW5kIHVzZSByZXR1cm4gdmFsdWUgb2YgaWNl
X2RwbGxfbG9ja19zdGF0ZV9pbml0X3VubWFuYWdlZCgpDQo+djk6DQo+IC0gcmVvcmRlciB0aGUg
ZmxvdyBvZiBpY2VfZHBsbF9pbml0X2RpcmVjdF9waW5zLCBkcm9wIGlmIG5vIGNndSBhbmQgbWFr
ZSBsZXNzDQo+ICBpbmRlbnRhdGlvbg0KPiAtIHJlbW92ZSBmbG9hdGluZyBjb2RlIGJsb2NrDQo+
IHY4Og0KPiAtIGZpeCB1bmluaXRhbGl6ZWQgYm9vbCAqc3VwcG9ydGVkDQo+IC0gZml4IHByb3Bl
cmx5IHNldCBlc3luYy0+cmFuZ2VfbnVtDQo+IHY3Og0KPiAtIHZhbGlkYXRlICdmaXJzdCcgaXMg
cHJlc2VudCBvbiBlcnJvciBwYXRoDQo+IHY2Og0KPiAtIGNoYW5nZSBkcGxsIHR5cGUgRUVDIC0+
IFBQUywgdGhpcyBkcGxsIHNlcnZlcyBib3RoIGZ1bmN0aW9uYWxpc2l0ZXMgYnV0IFBQUw0KPiAg
IGlzIHN1cGVyc2V0IG9mIEVFQyB0eXBlDQo+IC0gdXNlIERQTExfTU9ERV9NQU5VQUwgaW5zdGVh
ZCBvZiBBVVRPTUFUSUMsIHdoaWNoIGlzIGNvcnJlY3QgZm9yIHRoZSBpbnB1dA0KPiAgIHBpbnMg
dGhhdCBkb2Vzbid0IGhhdmUgY2FwYWJpbGl0eSB0byBzZXQgdGhlIHByaW9yaXR5DQo+IHY1Og0K
PiAtIHJlYmFzZWQgKGJhc2VsaW5lIGRvZXMgbm90IGluY2x1ZGUgZGVwZW5kZW50IGU4MjVDIHBh
dGNoZXMgbm93KQ0KPiAtIGFkZGVkIGhlYWx0aCBzdGF0dXMgbm90aWZpY2F0aW9uICh0aHJ1IGRl
dmxpbmsgYW5kIERQTEwgc3Vic3lzdGVtKQ0KPiB2NDoNCj4gLSBhZGQgY29ycmVjdCBzdHJjdXR1
cmUgZm9yIHJlYWRpbmcgc3VwcG9ydGVkIGhlYWx0aCBzdGF0dXMgY29kZXMgYW5kDQo+ICAgdXNl
IGl0IHRvIHBhcnNlIHRoZSBvdXRjb21lIG9mIDB4RkYyMSBBUSBjb21tYW5kLg0KPiAtLS0NCj4g
IC4uLi9kZXZpY2VfZHJpdmVycy9ldGhlcm5ldC9pbnRlbC9pY2UucnN0ICAgICB8ICA4MyArKysr
Kw0KPiAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvZGV2bGluay9oZWFsdGguYyAgIHwgICA0
ICsNCj4gIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9hZG1pbnFfY21kLmggICB8ICAx
MiArDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jICAgfCAx
MzYgKysrKysrKysNCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9u
LmggICB8ICAgOCArDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RwbGwu
YyAgICAgfCAzMDEgKysrKysrKysrKysrKysrKy0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2RwbGwuaCAgICAgfCAgMTAgKw0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9tYWluLmMgICAgIHwgIDExICstDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jICAgfCAgNDYgKysrDQo+ICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5oICAgfCAgIDEgKw0KPiAgMTAgZmlsZXMgY2hhbmdl
ZCwgNTkxIGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQ0KDQpUZXN0ZWQtYnk6IFN1bml0
aGEgTWVrYWxhIDxzdW5pdGhheC5kLm1la2FsYUBpbnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29y
a2VyIGF0IEludGVsKQ0K
