Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C12B59F6A16
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 16:33:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D035845E5;
	Wed, 18 Dec 2024 15:33:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lElLi6w_y16f; Wed, 18 Dec 2024 15:33:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A796845E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734535996;
	bh=Ll2swIw3gh8ytaGgj4VJCYKmMAUXosQvqrSGnyjEP+c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2L9NS0QxBS7BEHnkhrw56ooqVsaR0v4vL5eTc3U849qXTuetCjDxEbzpE8+SoJQV1
	 kmI9tQwum/B9rb6swbqR8fGXO8Q92tiX2zCh3c8rJAAA16VsTvvzB5Apr54eJvefbS
	 3gXkpAubdX6Aq1Ulfxj6xrdmdBjYtbo6EKN1qMxXp2T9Q/aXs8tJMntW0lyaUE4XFu
	 aAFV2fcOi2ChNxdCwG9TdsdTtpHWHFO6QLt0b5nKtA5mUorwulzO/agIXJswNfUg0f
	 zQjnPJ30XaDRkulqmeV52oJEQUN9u8VYuEj2ZUEUqJ0arx2W6DlQrZucNnXlYhv6ve
	 o3m+eryr10hNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A796845E9;
	Wed, 18 Dec 2024 15:33:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 809DCE3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 15:33:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 597C1409D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 15:33:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Xsvpi0_91aA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 15:33:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 03132415F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03132415F2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03132415F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 15:33:11 +0000 (UTC)
X-CSE-ConnectionGUID: USI3Htz7SBeUcj70AJHmkw==
X-CSE-MsgGUID: iVLOqrLAT+iD/iscdCmShA==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="37857528"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="37857528"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 07:33:11 -0800
X-CSE-ConnectionGUID: g/PSAxAYTZ+UndBCcDQ7rw==
X-CSE-MsgGUID: t5gc0viLRTewn6mM/CWd0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="97732388"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 07:33:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 07:33:10 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 07:33:10 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 07:33:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r11Q2gWbGNmDoluBljyrdnCBq0+ZJNl9F/ltTa9una2ji8FT1OPUWUxTJMNgw0vA2V6wENkYIqMKmpzaWOtBQGmNIYjfKz5Pbl6jhGluh8Uqt1Csfftj2XOE6YxVB7fPpbOO1I6aA4SdddyvQwmMx5DQ3EGqmDbYg5/XGAT7TbERCvE3c0JJv6x5Jl1tN/j1INhPiF0Aso7scgMyjetzLGJuRfDCvLbCQtcv9YbahvKdozwOLqxPExlKKhnS4QEFBs1iVFJF29Z5DywBl0PHM5QhLo0S7scmRAlV+GFkRbP7WzHutY+cksQ3xpWYYqdhpt9DH6Jr7E4jQYRU7FoOtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ll2swIw3gh8ytaGgj4VJCYKmMAUXosQvqrSGnyjEP+c=;
 b=i/RPOnbZyfkcKbj9nQjjTimc+HFl70cCgfA+MhFmr9LlxjyDyBAF/Z8J02zpQo82tnbFrBoWBQgE8olfGO1l+HBUfUXGtTaPkCd0LXAK8DKHWesONyHxmaVTHWzoTxLM0zlXLrQZZQdK0ed6I0eKWfoKr1z9aohJXvqOy8syJjpGuPL/MDWQS1Qf7hIc6HZaNBUQXBTBEyGvMgjg+xFbqFUxcaJRSiD2r7HWgmkHPDn48fRV4rRuOomOCBvBhaiDvPtVrGfgIM6IoNJjYSkpQjxNY14Ngq+HIK+ea5SqfNQ7twEju9Ua+98KTfOUlu0SPBi+5ZPNKmWfn+gQZA8scg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5885.namprd11.prod.outlook.com (2603:10b6:510:134::22)
 by PH7PR11MB7513.namprd11.prod.outlook.com (2603:10b6:510:270::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Wed, 18 Dec
 2024 15:33:06 +0000
Received: from PH7PR11MB5885.namprd11.prod.outlook.com
 ([fe80::b1f3:809e:5b8a:c46e]) by PH7PR11MB5885.namprd11.prod.outlook.com
 ([fe80::b1f3:809e:5b8a:c46e%6]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 15:33:06 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>
Thread-Topic: [PATCH v2 iwl-next 08/10] idpf: add Tx timestamp flows
Thread-Index: AQHbP/oFzjqnrxajBEiJEA4lVjB9CbLOa7WAgB3WugA=
Date: Wed, 18 Dec 2024 15:33:06 +0000
Message-ID: <PH7PR11MB5885993E499F9302530E17F58E052@PH7PR11MB5885.namprd11.prod.outlook.com>
References: <20241126035849.6441-1-milena.olech@intel.com>
 <20241126035849.6441-9-milena.olech@intel.com>
 <6749e1cb95bed_23772a2944b@willemb.c.googlers.com.notmuch>
In-Reply-To: <6749e1cb95bed_23772a2944b@willemb.c.googlers.com.notmuch>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5885:EE_|PH7PR11MB7513:EE_
x-ms-office365-filtering-correlation-id: 08e9b8ca-e7a8-478a-abb4-08dd1f7944e9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?QUQ3Q3Y4YnZwR1VYS3F5a29MK1lOR1N6NjA4dnNZY1dkWE5yK003VXVudnFq?=
 =?utf-8?B?ZzZQUTc3Uy81N2ZCb2hEbXZzeVVYNldOWWpvL3p4NG5ZdHg3bERZVnpnaG9y?=
 =?utf-8?B?V2dmSitaTGhnU3ZyOWRneHVkaHhncE9MajY4c3FaYnNib0FBajNCMkgxUGUr?=
 =?utf-8?B?Qzg5bkR1TU9wOVZsYWZubGVDVlNBazhvcWlGNGFkWWFGejROUHk1czZVOVBZ?=
 =?utf-8?B?UE1IK05MT2lKQXh2QlNqL0RjamhydzdWQmI2bml0MEl3Z3VYNHV5dTNNSkMw?=
 =?utf-8?B?REJLOEhLMExCM2tvbVRsUk1RNDZTdWRtQmFHWlh5N1puOHFHS3FrM0htSXln?=
 =?utf-8?B?d1V4cXFkbVE5S3FKNUJYd2NiU1NkNEdvWDg5MzdqS2RDa0IxeFoxSVkzZlhI?=
 =?utf-8?B?RERDeXhWRjhuNzdTWmNTazNCT3pDenI0RWVaemlKd0FKem1zNUkxZW9xdEVK?=
 =?utf-8?B?andWVlJDZFhLSWtEUEdITGU1Vk01aUxBSWhlaWNnUWluVlhiRU5VMHUveGJs?=
 =?utf-8?B?Rjc3NnZsYkJEdTd1YWl4TlF6UVNUMkYwZE51SmdOZFJzMjYvMjIzZzNvSjZK?=
 =?utf-8?B?bElreW1SZHIyM1lJY1FRNkgxQmJpLzI3UExMUnU5c2t4VEpObXdXeEpvNkFp?=
 =?utf-8?B?ZlI0RzRFb2NsSHg3Rnc3VGt0RDN5V2pzOTFObjRxQUJXb21hOTI1VkZGZ2No?=
 =?utf-8?B?RFNxSmszVmV0S0dXQ2t5RjB4NUNiK1YyNjZlRlR1aVp3VnlVcVQzQkZXbGVj?=
 =?utf-8?B?V0dzbklmclZ2UjlSMmZRQVB5TEx1ZC93SzkvUW1uODJqMnpyUGRvZHpPcERn?=
 =?utf-8?B?R2QrNHczOE1TRE1lYTNXd0pQMzBPbTJQMm5MaHkrY04zQnQ1VG1BQUxLZlFK?=
 =?utf-8?B?V3BEQklRMGxpMTlSMTlPVW44ZXFnaitVYmF3b21WYm93R2UwTHF2NVh0ZGxT?=
 =?utf-8?B?T1RMMFZHQVNmcTBUTThONk1HdzZXTUsra0NVN2h3dWlzZTRUUmZUVnU1U3dE?=
 =?utf-8?B?RGk5cjhSSVByMWthc28xWmE1NlJ0TGpWbm1Ha0NiTko0bGJlL214d1dRUytE?=
 =?utf-8?B?TGdkbDFCZzNmVzdOakc5MjVPeGJ0UkFnUm8wSkJwVU1uZTArUkI0ZGdRcmc1?=
 =?utf-8?B?TndxUjFUYmVHdFlGMW5tbnFncEp5d0loQzJGOEQ5SHd6WjRRTVFBWnN1elVX?=
 =?utf-8?B?WDNNd05nWXJNakRDQU1NcHoxenFTSXRyVmpIeTUvRGd3OHBzbEZSby9FVlFI?=
 =?utf-8?B?b2JiSDFXOUI2eGE0TmFZZDl3dGw2VTFlMnhWMUJyT2plS1pYWXhkcm5yMEQ1?=
 =?utf-8?B?ZllaeldYUXZ2M21TdEwrNjQ5K0h6L0dMU3lrYmRRQ0lKVUQrQVV2ekEwZ2lw?=
 =?utf-8?B?WW96aFN6ejJMOG9ETno1MUlDVk1mVGN5UlZOWmE0eWxPdUtjUzZpc09kcUhW?=
 =?utf-8?B?SFBGb3EvYnlLTVRpamRCdDlpeHFWeXdadVBVZ1RLemd1RlM0SVBLblVzeVUv?=
 =?utf-8?B?V3NIazE1R3pwcnhsd1NaWVZhaitZZFBxczBzdzU0ZTRnL3pVQWZiazl3V1dP?=
 =?utf-8?B?bkI5dXFzaitxNEtJTmpCSUt3a1BKL0ZEcjREU09BS2FzWnJSQXlqdzJ2VzNR?=
 =?utf-8?B?VGx4K0RJVC9iQzUvcnZ5NlVxMlphOFdxSUhabkZVcXhIRkZOVzBPbWR0c1JE?=
 =?utf-8?B?VWNGLzFIZTBkbTMzNzVKRCtOS29aM1ppVG1nQWN4eU9OMEdWaFQ5eVhHQVFB?=
 =?utf-8?B?VWNSSXh5cEEzWkNlb2ZSRFZ1TGY0d0ZFdC90SHpuV3ZEeFBiUzVWanUrNEFV?=
 =?utf-8?B?WjZtYVp5eklRSW1XVjVxMWpRdGZ1QWxXVGw2SzFsakpnWFRHaWMrVkZwRHBM?=
 =?utf-8?B?UC83Y0ZDSW1vU0VwZDExR3NncHBaQXJObk9rVEE0WDJpS0w2dFdHMFc0clhW?=
 =?utf-8?Q?odXxJ83WXnpDPSuyuuwN6qQ7FdwjB8qK?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5885.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cEJhbzJLbjBtU0VZdHZzTnpHWDRuajk1Q3lXYWhIM1FpMHR1WXRqdVBZMmdT?=
 =?utf-8?B?Wk5mZlNRYXFHWlhBSjF4NXpjU2RPMWl5KytkM3kxMGNvTEVwdlZwZDlvQ2h4?=
 =?utf-8?B?MlM3YVcwMXJSOXgyd04rZnJHaXc0elUvTUNoTjc2anEyRHB5REFyL3FqMlhF?=
 =?utf-8?B?YTZWZlBwWlNkRndjZG5qY1pvUmZMMjluRDJickxlZ2tEcEEwdXRtSFZEeGlI?=
 =?utf-8?B?MjJRSVEzYlpJY1hXV05vbFZhYVRGZDlHT1NFejBRYVVNN1lYd2VmRjJML1BU?=
 =?utf-8?B?QURnTks4cnBnZXBpTGFhbDZCc29PdGs3WjFYSkx6QUhWQy83cmFYbFNCZ0Yy?=
 =?utf-8?B?V3pwaE8zNkc1VXBDU1VxU3pNK1RnWTV4cGhacXpyY21GOGhUeEJsUHpoTXZt?=
 =?utf-8?B?NENVMFFaTCsyZ0dWaGhjazFFTVZXYzk3b253Sm5xclpldE5ZYmZBb2xveW5G?=
 =?utf-8?B?OHJRdnhRM3Y2U0lTdlBEd0VJOVNqZHI2N1BveENMSktENzRFR2JyNTFmV2JY?=
 =?utf-8?B?cFVlb2VZK1JNRU5ONGI1UXhzRTU2bFU5U0M1TVhTcnRRa3pMSS9PUVBCMmwy?=
 =?utf-8?B?c29BQ0JyYWU5OExQWjZLK256OXZPSm1XdUxHYWUyRE9UMVRxdTZicHUzekdO?=
 =?utf-8?B?ZjBDR0dlR2s0R1BLUTRGQTludkVoYjZlTUtsajJ2VnpoKzFUd0RBQ0ZjN0ZN?=
 =?utf-8?B?WVVERHQ3SEg0Z1JnRVBKSDFJL3BacEtqYjNLVmgzR0tLc1o3UFhTVEQ1R3ds?=
 =?utf-8?B?TUtmWmNpNGxoRXlSWFBQT3pyNmxreWtFdVlnUi9iM3RVSCt3UkU0aVpNMjcr?=
 =?utf-8?B?alA1THNObGF6bmVKYnNVTG9td3dORXV1dHZDeW13TnVJcUUrK2tiWXozSk0w?=
 =?utf-8?B?VlVHRjJQaVNpOWVlUlJyOWNBTTNJTzZ3MU9HbTBibytQZDdRTlAwcXg0alFC?=
 =?utf-8?B?eElaNm1XREtWMzVqTDQrRmVLOHhFNkJmcHBxelAvdTU1cXZMWm1LTXVhZEdt?=
 =?utf-8?B?MEFKT3ZhRDB1NXBScUVRR2JNc1llZlZ2ekR6azZjekhBMVBjV21SMU1qNkZj?=
 =?utf-8?B?U09BTlZjdEFQMUVhUlM0akdhMGpJLytxWU1PNjRNMDl0elVwM0thd3JJaXAw?=
 =?utf-8?B?TmlLcUM3U3RDckpHWnUwRFEyQnZGSXYrSDl0ZDRrWVFmZXhiNCs0elFIZmx6?=
 =?utf-8?B?N2lCUXpZeTNzSHlVMStZRnF3dEdKTzdJY0VNbDJ0TWZPUVV3bkREb0Vjc3c5?=
 =?utf-8?B?YkNQOTZTV3BJdUprcXBycDUyUE1HbG0xRzd5U1I1OWw1QTJXcXFCVGVLU01q?=
 =?utf-8?B?K3RsRUwzcjRua2FlM3BSenRNeXErTE1WcGlXMmk5T2hmTkpVMDNXMnBBMXlr?=
 =?utf-8?B?Nmx2WVZCbE40eDRNT3NHU0Y3OCtGbWJya2MxVHpicXdhN0t6RHpkNWZrczB5?=
 =?utf-8?B?TlNmUG5CRnlRRldDRU9ycEYzaHlTNmxwR3NVSFAzNDhXaHpDTnArSXJVNFBa?=
 =?utf-8?B?RklBa0FxMUIxM2w0OCtITThoeDUreU80OU5IYnBXczA0d0kzcE95REppUEpz?=
 =?utf-8?B?ekdFaGtMKy9MbjBxcjc3a2ZGdHVvR2lEVHdrRi9WOGM4dWtOdk9zVWp6dG9L?=
 =?utf-8?B?TThQWGZGU1B4Q2tTTVBPc1RTaG51YURzNUhjV05GbnFRVENnWnRhMHNZQnlr?=
 =?utf-8?B?YitxcFhXWnlKNFh3emZaa3lDd3lNZ0dDKzJSVjZOWDJDcE0xSTBtMUpBTW1S?=
 =?utf-8?B?RFpGN0swZlk4REVEMWx5WENXVnJvV1loQmpHUVJFeUhDWnNUbmVFWlZEQ3FK?=
 =?utf-8?B?aGJnOXBHd054OUFMVTFQWHpib1ozcjlTM1Brcys5QjZrRkpQMG5NM0o2VGNj?=
 =?utf-8?B?OUZpZEtuSzI2VkF5Y3IzM21DUmFvL0hlS3IwRG5naGE3RkhFNzQ3QXpCOFJz?=
 =?utf-8?B?V1RPemF1MDg2VE1LdTVEMklsYnJJcnQ3dkNkQWlNSDJSRjlabjBjV3lUbVds?=
 =?utf-8?B?ZDE5ZzAzejNlVHVnbURWTitYb0ZudnlWdnNXYjk1Z3Q5MFFNQk5vQmxqOXRC?=
 =?utf-8?B?cmNTazhPSUR6VURyU3ZjSVFFQnUrWkI5NFlxT3NOdWlRUy9OK0dhdEpnZ0lD?=
 =?utf-8?Q?jttxHB44NJe3gD6pEzuGxvftB?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5885.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08e9b8ca-e7a8-478a-abb4-08dd1f7944e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 15:33:06.3531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vEfneRyGysi0IHbj3m6TO4S50ptoznqNDgKsoZncQa66DuxPbbkA8kfBBg8GWR1c4wYa/AV4dvEPAIFuMcTORA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7513
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734535992; x=1766071992;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ll2swIw3gh8ytaGgj4VJCYKmMAUXosQvqrSGnyjEP+c=;
 b=UQII1HddshMAwqEiLaU0mJRA9Kpvp1v717LLRQQiPLwUaLlgQfR4NkXq
 hnFWbl9DQ+1XW/zmryaOu/Gq/BxuvkWM0z7YbE1SOIfJHlVfuWapm9NI1
 3GlXyjwHhFH/wwI8vVDsZgTPOoYm6wGvwhCDB0VCO5YDgd8itvwiMjgUc
 Miw3oTp1EZh1VfA3enuqxeOxBOvqGdC3hA9+quS+mYM1/V7LU7bdGDPJZ
 ORjN5FrryNf6vwwM6Sj0ztKwn3RTQI5hTQiVvu0NQV4YxS74e6GAVn0U/
 8+EEBHc+ruXccsgDOUdIOflykIvRLUVTVz37idxDqbhHcpejVp5pkzKNZ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UQII1Hdd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 08/10] idpf: add Tx
 timestamp flows
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

T24gMTEvMjkvMjAyNCA0OjQ2IFBNIFdpbGxlbSBkZSBCcnVpam4gd3JvdGU6DQoNCj4+IEFkZCBm
dW5jdGlvbnMgdG8gcmVxdWVzdCBUeCB0aW1lc3RhbXAgZm9yIHRoZSBQVFAgcGFja2V0cywgcmVh
ZCB0aGUgVHgNCj4+IHRpbWVzdGFtcCB3aGVuIHRoZSBjb21wbGV0aW9uIHRhZyBmb3IgdGhhdCBw
YWNrZXQgaXMgYmVpbmcgcmVjZWl2ZWQsDQo+PiBleHRlbmQgdGhlIFR4IHRpbWVzdGFtcCB2YWx1
ZSBhbmQgc2V0IHRoZSBzdXBwb3J0ZWQgdGltZXN0YW1waW5nIG1vZGVzLg0KPj4gDQo+PiBUeCB0
aW1lc3RhbXAgaXMgcmVxdWVzdGVkIGZvciB0aGUgUFRQIHBhY2tldHMgYnkgc2V0dGluZyBhIFRT
WU4gYml0IGFuZA0KPj4gaW5kZXggdmFsdWUgaW4gdGhlIFR4IGNvbnRleHQgZGVzY3JpcHRvci4g
VGhlIGRyaXZlciBhc3N1bXB0aW9uIGlzIHRoYXQNCj4+IHRoZSBUeCB0aW1lc3RhbXAgdmFsdWUg
aXMgcmVhZHkgdG8gYmUgcmVhZCB3aGVuIHRoZSBjb21wbGV0aW9uIHRhZyBpcw0KPj4gcmVjZWl2
ZWQuIFRoZW4gdGhlIGRyaXZlciBzY2hlZHVsZXMgZGVsYXllZCB3b3JrIGFuZCB0aGUgVHggdGlt
ZXN0YW1wDQo+PiB2YWx1ZSByZWFkIGlzIHJlcXVlc3RlZCB0aHJvdWdoIHZpcnRjaG5sIG1lc3Nh
Z2UuIEF0IHRoZSBlbmQsIHRoZSBUeA0KPj4gdGltZXN0YW1wIHZhbHVlIGlzIGV4dGVuZGVkIHRv
IDY0LWJpdCBhbmQgcHJvdmlkZWQgYmFjayB0byB0aGUgc2tiLg0KPj4gDQo+PiBDby1kZXZlbG9w
ZWQtYnk6IEpvc2ggSGF5IDxqb3NodWEuYS5oYXlAaW50ZWwuY29tPg0KPj4gU2lnbmVkLW9mZi1i
eTogSm9zaCBIYXkgPGpvc2h1YS5hLmhheUBpbnRlbC5jb20+DQo+PiBTaWduZWQtb2ZmLWJ5OiBN
aWxlbmEgT2xlY2ggPG1pbGVuYS5vbGVjaEBpbnRlbC5jb20+DQo+PiAtLS0NCj4+IHYxIC0+IHYy
OiBhZGQgdGltZXN0YW1waW5nIHN0YXRzLCB1c2UgbmRvX2h3dGFtcF9nZXQvbmRvX2h3c3RhbXBf
c2V0DQo+DQo+PiArLyoqDQo+PiArICogaWRwZl9zZXRfdGltZXN0YW1wX2ZpbHRlcnMgLSBTZXQg
dGhlIHN1cHBvcnRlZCB0aW1lc3RhbXBpbmcgbW9kZQ0KPj4gKyAqIEB2cG9ydDogVmlydHVhbCBw
b3J0IHN0cnVjdHVyZQ0KPj4gKyAqIEBpbmZvOiBldGh0b29sIHRpbWVzdGFtcGluZyBpbmZvIHN0
cnVjdHVyZQ0KPj4gKyAqDQo+PiArICogU2V0IHRoZSBUeC9SeCB0aW1lc3RhbXAgZmlsdGVycy4N
Cj4+ICsgKi8NCj4+ICtzdGF0aWMgdm9pZCBpZHBmX3NldF90aW1lc3RhbXBfZmlsdGVycyhjb25z
dCBzdHJ1Y3QgaWRwZl92cG9ydCAqdnBvcnQsDQo+PiArCQkJCSAgICAgICBzdHJ1Y3Qga2VybmVs
X2V0aHRvb2xfdHNfaW5mbyAqaW5mbykNCj4NCj5UaGlzIGlzIG5vdCByZWFsbHkgYSBzZXR0ZXIu
IEl0IG1vZGlmaWVzIG5vIHZwb3J0IHN0YXRlLg0KPg0KPmlkcGZfZ2V0X3RpbWVzdGFtcF9maWx0
ZXJzPyBPciBqdXN0IG1lcmdlIGludG8gdGhlIGJlbG93IGNhbGxlci4NCj4NCg0KSSBuYW1lZCBp
dCAic2V0IiBiZWNhdXNlIGluIGZhY3Qgd2UncmUgc2V0dGluZyBzb21lIHRpbWVzdGFtcCBmaWx0
ZXJzLA0KaG93ZXZlciBJIGRvIGFncmVlIHRoYXQgaXQncyBub3QgY29tcGxpYW50IHdpdGggdGhl
IGdldF90c19pbmZvLA0Kd2hlcmUgd2UgYWxzbyBhc3NpZ24gc29tZXRoaW5nIHRvIGluZm8gc3Ry
dWN0IC0gcGhjX2luZGV4Lg0KSSdsbCBjaGFuZ2UgdGhlIG5hbWUgdG8gZ2V0X3RpbWVzdGFtcF9m
aWx0ZXJzLg0KDQo+PiArew0KPj4gKwlpZiAoIXZwb3J0LT50eF90c3RhbXBfY2FwcyB8fA0KPj4g
KwkgICAgdnBvcnQtPmFkYXB0ZXItPnB0cC0+dHhfdHN0YW1wX2FjY2VzcyA9PSBJRFBGX1BUUF9O
T05FKQ0KPj4gKwkJcmV0dXJuOw0KPj4gKw0KPj4gKwlpbmZvLT5zb190aW1lc3RhbXBpbmcgPSBT
T0ZfVElNRVNUQU1QSU5HX1RYX1NPRlRXQVJFIHwNCj4+ICsJCQkJU09GX1RJTUVTVEFNUElOR19U
WF9IQVJEV0FSRSB8DQo+PiArCQkJCVNPRl9USU1FU1RBTVBJTkdfUlhfSEFSRFdBUkUgfA0KPj4g
KwkJCQlTT0ZfVElNRVNUQU1QSU5HX1JBV19IQVJEV0FSRTsNCj4+ICsNCj4+ICsJaW5mby0+dHhf
dHlwZXMgPSBCSVQoSFdUU1RBTVBfVFhfT0ZGKSB8IEJJVChIV1RTVEFNUF9UWF9PTik7DQo+PiAr
fQ0KPj4gKw0KPj4gKy8qKg0KPj4gKyAqIGlkcGZfZ2V0X3RzX2luZm8gLSBHZXQgZGV2aWNlIFBI
QyBhc3NvY2lhdGlvbg0KPj4gKyAqIEBuZXRkZXY6IG5ldHdvcmsgaW50ZXJmYWNlIGRldmljZSBz
dHJ1Y3R1cmUNCj4+ICsgKiBAaW5mbzogZXRodG9vbCB0aW1lc3RhbXBpbmcgaW5mbyBzdHJ1Y3R1
cmUNCj4+ICsgKg0KPj4gKyAqIFJldHVybjogMCBvbiBzdWNjZXNzLCAtZXJybm8gb3RoZXJ3aXNl
Lg0KPj4gKyAqLw0KPj4gK3N0YXRpYyBpbnQgaWRwZl9nZXRfdHNfaW5mbyhzdHJ1Y3QgbmV0X2Rl
dmljZSAqbmV0ZGV2LA0KPj4gKwkJCSAgICBzdHJ1Y3Qga2VybmVsX2V0aHRvb2xfdHNfaW5mbyAq
aW5mbykNCj4+ICt7DQo+PiArCXN0cnVjdCBpZHBmX2FkYXB0ZXIgKmFkYXB0ZXIgPSBpZHBmX25l
dGRldl90b19hZGFwdGVyKG5ldGRldik7DQo+PiArCXN0cnVjdCBpZHBmX3Zwb3J0ICp2cG9ydDsN
Cj4+ICsJaW50IGVyciA9IDA7DQo+PiArDQo+PiArCWlkcGZfdnBvcnRfY2ZnX2xvY2soYWRhcHRl
cik7DQo+PiArCXZwb3J0ID0gaWRwZl9uZXRkZXZfdG9fdnBvcnQobmV0ZGV2KTsNCj4+ICsNCj4+
ICsJaWYgKCF2cG9ydC0+YWRhcHRlci0+cHRwKSB7DQo+PiArCQllcnIgPSAtRU9QTk9UU1VQUDsN
Cj4+ICsJCWdvdG8gdW5sb2NrOw0KPj4gKwl9DQo+PiArDQo+PiArCWlkcGZfc2V0X3RpbWVzdGFt
cF9maWx0ZXJzKHZwb3J0LCBpbmZvKTsNCj4NCj5Qcm9iYWJseSBtb3ZlIHRoaXMgaW4gdGhlIGJl
bG93IGlmLCBhbHMgaXQgZ2V0cyBlbnRpcmVseSBvdmVyd3JpdHRlbg0KPmlmIHRoZSBlbHNlIGlz
IHRha2VuLg0KDQpNb3ZlZCBpbiB2My4NCg0KPj4gKw0KPj4gKwlpZiAoaWRwZl9pc19jYXBfZW5h
KHZwb3J0LT5hZGFwdGVyLCBJRFBGX09USEVSX0NBUFMsIFZJUlRDSE5MMl9DQVBfUFRQKSAmJg0K
Pj4gKwkgICAgdnBvcnQtPmFkYXB0ZXItPnB0cC0+Y2xvY2spIHsNCj4+ICsJCWluZm8tPnBoY19p
bmRleCA9IHB0cF9jbG9ja19pbmRleCh2cG9ydC0+YWRhcHRlci0+cHRwLT5jbG9jayk7DQo+PiAr
CX0gZWxzZSB7DQo+PiArCQlwY2lfZGJnKHZwb3J0LT5hZGFwdGVyLT5wZGV2LCAiUFRQIGNsb2Nr
IG5vdCBkZXRlY3RlZFxuIik7DQo+PiArCQllcnIgPSBldGh0b29sX29wX2dldF90c19pbmZvKG5l
dGRldiwgaW5mbyk7DQo+PiArCX0NCj4+ICsNCj4+ICt1bmxvY2s6DQo+PiArCWlkcGZfdnBvcnRf
Y2ZnX3VubG9jayhhZGFwdGVyKTsNCj4+ICsNCj4+ICsJcmV0dXJuIGVycjsNCj4+ICt9DQo+DQo+
PiArLyoqDQo+PiArICogaWRwZl9wdHBfZXh0ZW5kX3RzIC0gQ29udmVydCBhIDQwYiB0aW1lc3Rh
bXAgdG8gNjRiIG5hbm9zZWNvbmRzDQo+PiArICogQHZwb3J0OiBWaXJ0dWFsIHBvcnQgc3RydWN0
dXJlDQo+PiArICogQGluX3RzdGFtcDogSW5ncmVzcy9lZ3Jlc3MgdGltZXN0YW1wIHZhbHVlDQo+
PiArICoNCj4+ICsgKiBJdCBpcyBhc3N1bWVkIHRoYXQgdGhlIGNhbGxlciB2ZXJpZmllcyB0aGUg
dGltZXN0YW1wIGlzIHZhbGlkIHByaW9yIHRvDQo+PiArICogY2FsbGluZyB0aGlzIGZ1bmN0aW9u
Lg0KPj4gKyAqDQo+PiArICogRXh0cmFjdCB0aGUgMzJiaXQgbm9taW5hbCBuYW5vc2Vjb25kcyBh
bmQgZXh0ZW5kIHRoZW0uIFVzZSB0aGUgY2FjaGVkIFBIQw0KPj4gKyAqIHRpbWUgc3RvcmVkIGlu
IHRoZSBkZXZpY2UgcHJpdmF0ZSBQVFAgc3RydWN0dXJlIGFzIHRoZSBiYXNpcyBmb3IgdGltZXN0
YW1wDQo+PiArICogZXh0ZW5zaW9uLg0KPj4gKyAqDQo+PiArICogUmV0dXJuOiBUeCB0aW1lc3Rh
bXAgdmFsdWUgZXh0ZW5kZWQgdG8gNjQgYml0cy4NCj4+ICsgKi8NCj4+ICt1NjQgaWRwZl9wdHBf
ZXh0ZW5kX3RzKHN0cnVjdCBpZHBmX3Zwb3J0ICp2cG9ydCwgdTY0IGluX3RzdGFtcCkNCj4+ICt7
DQo+PiArCXN0cnVjdCBpZHBmX3B0cCAqcHRwID0gdnBvcnQtPmFkYXB0ZXItPnB0cDsNCj4+ICsJ
dW5zaWduZWQgbG9uZyBkaXNjYXJkX3RpbWU7DQo+PiArDQo+PiArCWRpc2NhcmRfdGltZSA9IHB0
cC0+Y2FjaGVkX3BoY19qaWZmaWVzICsgMiAqIEhaOw0KPj4gKw0KPj4gKwlpZiAodGltZV9pc19i
ZWZvcmVfamlmZmllcyhkaXNjYXJkX3RpbWUpKSB7DQo+PiArCQl2cG9ydC0+dHN0YW1wX3N0YXRz
LnR4X2h3dHN0YW1wX2Rpc2NhcmRlZCsrOw0KPj4gKwkJcmV0dXJuIDA7DQo+PiArCX0NCj4+ICsN
Cj4+ICsJcmV0dXJuIGlkcGZfcHRwX3RzdGFtcF9leHRlbmRfMzJiX3RvXzY0YihwdHAtPmNhY2hl
ZF9waGNfdGltZSwNCj4+ICsJCQkJCQkgbG93ZXJfMzJfYml0cyhpbl90c3RhbXApKTsNCj4+ICt9
DQo+DQo+PiArI2lmIChJU19FTkFCTEVEKENPTkZJR19QVFBfMTU4OF9DTE9DSykpDQo+PiArLyoq
DQo+PiArICogaWRwZl90eF90c3RhbXAgLSBzZXQgdXAgY29udGV4dCBkZXNjcmlwdG9yIGZvciBo
YXJkd2FyZSB0aW1lc3RhbXANCj4+ICsgKiBAdHhfcTogcXVldWUgdG8gc2VuZCBidWZmZXIgb24N
Cj4+ICsgKiBAc2tiOiBwb2ludGVyIHRvIHRoZSBTS0Igd2UncmUgc2VuZGluZw0KPj4gKyAqIEBv
ZmY6IHBvaW50ZXIgdG8gdGhlIG9mZmxvYWQgc3RydWN0DQo+PiArICoNCj4+ICsgKiBSZXR1cm46
IFBvc2l0aXZlIGluZGV4IG51bWJlciBvbiBzdWNjZXNzLCBuZWdhdGl2ZSBvdGhlcndpc2UuDQo+
PiArICovDQo+PiArc3RhdGljIGludCBpZHBmX3R4X3RzdGFtcChzdHJ1Y3QgaWRwZl90eF9xdWV1
ZSAqdHhfcSwgc3RydWN0IHNrX2J1ZmYgKnNrYiwNCj4+ICsJCQkgIHN0cnVjdCBpZHBmX3R4X29m
ZmxvYWRfcGFyYW1zICpvZmYpDQo+PiArew0KPj4gKwlpbnQgZXJyLCBpZHg7DQo+PiArDQo+PiAr
CS8qIG9ubHkgdGltZXN0YW1wIHRoZSBvdXRib3VuZCBwYWNrZXQgaWYgdGhlIHVzZXIgaGFzIHJl
cXVlc3RlZCBpdCAqLw0KPj4gKwlpZiAobGlrZWx5KCEoc2tiX3NoaW5mbyhza2IpLT50eF9mbGFn
cyAmIFNLQlRYX0hXX1RTVEFNUCkpKQ0KPj4gKwkJcmV0dXJuIC0xOw0KPj4gKw0KPj4gKwlpZiAo
IWlkcGZfcHRwX2dldF90eHFfdHN0YW1wX2NhcGFiaWxpdHkodHhfcSkpDQo+PiArCQlyZXR1cm4g
LTE7DQo+PiArDQo+PiArCS8qIFR4IHRpbWVzdGFtcHMgY2Fubm90IGJlIHNhbXBsZWQgd2hlbiBk
b2luZyBUU08gKi8NCj4+ICsJaWYgKG9mZi0+dHhfZmxhZ3MgJiBJRFBGX1RYX0ZMQUdTX1RTTykN
Cj4+ICsJCXJldHVybiAtMTsNCj4+ICsNCj4+ICsJLyogR3JhYiBhbiBvcGVuIHRpbWVzdGFtcCBz
bG90ICovDQo+PiArCWVyciA9IGlkcGZfcHRwX3JlcXVlc3RfdHModHhfcSwgc2tiLCAmaWR4KTsN
Cj4+ICsJaWYgKGVycikgew0KPj4gKwkJdHhfcS0+dHhxX2dycC0+dnBvcnQtPnRzdGFtcF9zdGF0
cy50eF9od3RzdGFtcF9za2lwcGVkKys7DQo+DQo+V2hhdCBpcyB0aGUgbXV0dWFsIGV4Y2x1c2lv
biBvbiB0aGVzZSBzdGF0cyBmaWVsZHM/DQo+DQo+SW4gbmRvX3N0YXJ0X3htaXQgdGhlIHR4cSBs
b2NrIGlzIGhlbGQsIGJ1dCBubyB2cG9ydCB3aWRlIGxvY2s/DQo+DQoNCkFmdGVyIHJldmlld2lu
ZyBzdGF0aXN0aWNzIGFnYWluLCBJIGRlY2lkZWQgdG8gc3BsaXQgaW50byB0d28gcGFydHM6DQox
KSBUeCBxdWV1ZSBzdGF0aXN0aWNzDQoNCkkndmUgZG9uZSBpdCBzaW1pbGFybHkgdG8gb3RoZXIg
dHggcXVldWUgc3RhdGlzdGljcyAoaW4gdjMpLCBzbw0KSSdtIGluY3JlbWVudGluZyBmb3IgZWFj
aCBUeCBxdWV1ZSBzZXBhcmF0ZWx5IHRvIHN1bSB1cCBhdCB0aGUgZW5kLg0KDQpIZXJlIEknbGwg
bW9uaXRvciBza2lwcGVkIFR4IHRpbWVzdGFtcHMsIHdoZXJlIHRoZSBwcm9wZXIgVHggdGltZXN0
YW1wDQppbmRleCB3YXMgbm90IGZvdW5kLg0KDQoyKSBWcG9ydCBzdGF0aXN0aWNzIChwcm90ZWN0
ZWQgd2l0aCBtdXRleCkNCi0gZmx1c2hlZCAtIHJlbW92ZWQgZHVlIHRvIGNsb3NpbmcgdGhlIGlu
dGVyZmFjZQ0KLSBkaXNjYXJkZWQgLSB0b28gb2xkIHRvIHByb3ZpZGUgYmFjayB0byB0aGUgc2ti
DQoNClRoZXNlIHZhbHVlcyBhcmUgY2FsY3VsYXRlZCBmb3IgdnBvcnRzLg0KDQo+PiArCQlyZXR1
cm4gLTE7DQo+PiArCX0NCj4+ICsNCj4+ICsJb2ZmLT50eF9mbGFncyB8PSBJRFBGX1RYX0ZMQUdT
X1RTWU47DQo+PiArDQo+PiArCXJldHVybiBpZHg7DQo+PiArfQ0KDQpUaGFua3MsDQpNaWxlbmEN
Cg==
