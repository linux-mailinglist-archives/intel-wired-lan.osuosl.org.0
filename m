Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE6EC2F97D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 08:24:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A93F280DEE;
	Tue,  4 Nov 2025 07:24:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dAJz2MbCBAti; Tue,  4 Nov 2025 07:24:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1E3F80E7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762241077;
	bh=NregQIa/lc6qHFJIEqBGdTlMNZAStVw+DoFMQQoTj3o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HRKFXTDXph+i2xM8jJvTgxnaoMv2BaGx0OJmK3NmUabs/EvPmd9uP7tnv3LhjOHsz
	 WwJXdORjp7ByvYy45D1WE1ZQIdZWep/vLTZVkHcyVSuv4B8TWboEPegYARRtjNOYFt
	 uekjV2K6Ba/IsTp8aakwXx80OoeLXbGYfR7DbmUvwSfzcpnB4VLsK1vSbUMOZr2Igg
	 4mOLW5or+lg/ATMIAd8dbKpkC+qfltqvkg9rmFczgffGJL4y/tv3rhCLEOXYhrL8ce
	 qX89fFoKRyn0n3N7TLXD8qQUxnys+MROVrBr46UxuIiuX4saZcLFite6V5/mJsJ9vA
	 MPwt0WTdKPENQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1E3F80E7C;
	Tue,  4 Nov 2025 07:24:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 39591278
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:24:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 20701409A3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:24:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0jgx6Z-7b0fN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 07:24:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4AB62400AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AB62400AB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4AB62400AB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:24:34 +0000 (UTC)
X-CSE-ConnectionGUID: UbQiC1I0StOEReelKf34hA==
X-CSE-MsgGUID: EFOKvR/1Qs2wZbinmVuruw==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="75007677"
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="75007677"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 23:24:34 -0800
X-CSE-ConnectionGUID: fP00abXCRwKJkHUj7SfsPA==
X-CSE-MsgGUID: /vGR3WaNQMW8eXWi3toCKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="192174266"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 23:24:33 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 23:24:33 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 23:24:33 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.9) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 23:24:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mckI/8hgxpkKkf2SkVhuZRRy76Bd8PMv9ATNfAkJFLZJXHbxQ05kl3GCw/4xxUP2ShgiibJvuS4PiLzMo5DlVD8eSvVmUPEtAMnB4scVrJZQFh+RZdrgewkqWT6Izfic48ssRM0K8ZAk69Sy07UK/OhtrWRIqAcZumxJnbHkCiBk/cz1sra0G17bzhxCbSyvyhTN/GuLzqN0H9UJzjHP5ltXi12Ac/LmDcnKzO/gWcLmo8FTW4E4Vr0t4K7s9rVApgK6xqrnETZVgHcHWIr5wKZbw+YaMP5ifqdsdkH3Ubi+Vho2Uc9z10e20LPXU/P624LCxTK7T7rkVej6SuLxcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NregQIa/lc6qHFJIEqBGdTlMNZAStVw+DoFMQQoTj3o=;
 b=G1LJSK2AGaq3lJX1kShUugX0KKZnlpwDZTEDH6G7RKpjSnUT9N8WotyPM9wwIv2JMoZxuvj5wFKPCdqOE8YZz9IRyiRTeBy9C2jDTX0islzuX0rE7FpgJwaR8culn0WQ+cptPLX4t5zLTLRlJDD3higFfVSjMX1p+q6xSDpqCuFkbjk6MdDJ1zl7ED3L0WxczacjNLxXbZiNJwZss32sT3v7xrUGmATBYwGKhymRQ+qwkaa4X7Es+y7bDG89gCVteQL/SwgjFEdZhr5AxRteR+rwV6wiTK+39Gkov8Le8Xx3TL7vkQo7l19q1aAL98aRaZW6qMMMhlSEqaIHjP0bLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB5160.namprd11.prod.outlook.com (2603:10b6:510:3e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 07:24:25 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 07:24:25 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-next 6/9] ice: remove ice_q_stats struct and use
 struct_group
Thread-Index: AQHcTSdjICXJtxa6tEWTmW1hhhJ7x7TiHbnw
Date: Tue, 4 Nov 2025 07:24:25 +0000
Message-ID: <IA3PR11MB89869955FD148E39E53182B5E5C4A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
 <20251103-jk-refactor-queue-stats-v1-6-164d2ed859b6@intel.com>
In-Reply-To: <20251103-jk-refactor-queue-stats-v1-6-164d2ed859b6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB5160:EE_
x-ms-office365-filtering-correlation-id: f0c11143-7a0f-42c0-4c9e-08de1b732ef7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?S1d0L2RGQTlWSkx4ZmhNOVF1ZUFxNmNjektJSS9NZE5TQUtOWXVveXBZRVEy?=
 =?utf-8?B?MW1PM2xPMkF0dWF3dnhBN2RrRmhFQ3A1Vm10ekpDRmZsT1ZMb3RVYTh0SC9M?=
 =?utf-8?B?WC9mYkdlUG9lbW1xYkZmejVVOVppRHZORGd2Nm85T0RRSS9HODUvTjdnb1d5?=
 =?utf-8?B?RFJrb3dDRDErakdlemQ0alZGbm1TS2ZGYzVzYm43L0Foc3BBY2QyUGJZZVp2?=
 =?utf-8?B?MWhkNnR1dFlsSGErZ2VNWTFhTDIwUU4yOFRaYTl0cldkYXZFWHp6dm9nT2xV?=
 =?utf-8?B?UXZYYTJWM2lsNTdXcXNRL3V5K09JellpRFgyVEFUYkRTTjgrV1AxY3pKQnMw?=
 =?utf-8?B?R0dyQmtyK0k1TDAyaStXamNzbHNJUklhMk9MaURiNlNjSVF3ekJXeElHV1U5?=
 =?utf-8?B?SjhpOXBoSFo2eVdFVWJPVkRVdTZCbHdSY2RnTnVJR3crRTRjQ2UxeHBEZ2Vq?=
 =?utf-8?B?Z2dGWkxQM0dqZko1cTV6R3RXNU1OM0RETFQvWXIxQnduanZKNVBiVGR3QUts?=
 =?utf-8?B?K3dHZ3hEMFpUODlvSjVxc1RIaGV4blM0WkdERDI3VTlvYnZmUU1Rd2VZSjFv?=
 =?utf-8?B?UHowYTFTaFZOOEJOSUxmLzlqZmhlZDVMZFBYcnl3V0piY0RGWWw5R0FWQUlr?=
 =?utf-8?B?dW5mZFhEME5Pa3JiY3BMR1A5M0ZKaFdGbmpZQWRWQ01PRWlMRGZQZ3BrVXQx?=
 =?utf-8?B?RlprTVZVNUxlZDdvV1dlV2h0c2lNSUFNalpFOUFSQitzc0NTNFdyV3o3ZlJC?=
 =?utf-8?B?MW5mcXlYdCt1NTNqY01DNk5OdGczbXNUcXlqUUl6ZEFxNmFVWEUyMHhTKzg5?=
 =?utf-8?B?VVNRYkMzeHFRK3pXR0tkK0tqWXZvRW9Vdm9Kemp6TGNOVElQdExrMzZpZG1G?=
 =?utf-8?B?SjlCRDR6eU8zWXVrb1RGdnFWOXNCTXQ3UncvOXFYUHgvamNKK3UwQTEvMHpp?=
 =?utf-8?B?L0oveWsvWS9Eb21vWFVPaUNPcmtxZmVud2E2S1lJenRycFM2a1hjTWFxWEgv?=
 =?utf-8?B?bmlnM2lScWtnT3lKcjhPbDNVcFpJRjVKcVFVMTZsYkJFMkZUQnJXeUZPZmxT?=
 =?utf-8?B?ek9TYVN4S2IybWN1TjlqaDFhQm5tQi9IRDd6RWpDa0J4ZVVoMzNiNDQ1bVZ4?=
 =?utf-8?B?R1h2eHljWkJZdXhtdS90ZlhLbGx2YjhyeVM3bHJPQTgwYVRmV3Joc1dmTTFn?=
 =?utf-8?B?OHllZUpQMFRQTXRIYk1NZWlWazgzMXVnc1RWc0p2WTJPaW1vSmR2NGlkTU1Z?=
 =?utf-8?B?Y3NHWWROK3RnelU4MjA5NEI0SVRYNWhKODdFcEQ5dFhhdVhtT0lzb3pvS0ZW?=
 =?utf-8?B?SkVQQ0xxazNIOSsraDFCK0tzR0luL3VtcFdYR2tvU0lsUkxPSTlHb3ZMSWhG?=
 =?utf-8?B?QW5Ha3BqRllrWDhNaG5TMEF4MWI3REY4eUhyS2ZXQ1NsbmtGQTZkb1hobkxG?=
 =?utf-8?B?Y0RQNVJIbGRtOFM5QldRcFVUdjBHVHd2Z29rUEJqdjhSb2FMUmJHZVlSWCtu?=
 =?utf-8?B?MG1wbUNyR2RCSmtrZG5NQm5MOEFjY2VLWWxRRThFeVBLajVzSVVOTGtTZXl1?=
 =?utf-8?B?MCtPbFVnSWRMME4zNUVHcDBqS1R5eXpJcmVCVWtpQS9kVDh4czNOdEN4YlNX?=
 =?utf-8?B?Z1V6dFdEZTI1MjE3Y0E1OEtNdTFNVHFJTUJkMlpQZGs2b3UwQ1ZwZXVvY3Er?=
 =?utf-8?B?RytEUGltb25sL2szc0FqbFcvQStBQjlNdHBXMEJSOUI1bzhHTlZlRUV4bTk3?=
 =?utf-8?B?cUhIUzlyZ0REckFLNjk0ck5wWEJvbDFBeHk1N1lMVTVnZHhiYzlsSENrRVh3?=
 =?utf-8?B?YmcyY096WVhGNmp1dUhTaGU3b0ttRDY1eDNFcVRGc1dPMGJhQnUrbEZHeDU4?=
 =?utf-8?B?ZDNYSUR2OXJTYy9EcHNuM0xxOG92REMrN1VyMDhyakNiRWx5L3MrcEFyR25I?=
 =?utf-8?B?M3FiZHlBcHExbEQ4V0p3V29VS1p0aGJVTkFjSVBKNDVoRXhWQk1WazZFWmhu?=
 =?utf-8?B?dm9oTkhFRzF5Sm80KzBXL3ZPdGkxUWZOZTBhVGp5d1NCV3lLUURCelRMMjdy?=
 =?utf-8?Q?FARLLB?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YWJiT3d6UW9qS3FENWtxaEsvdmhIaWJ0dmZ5dXBLZjRpdEFDNXZLK1gyK0VD?=
 =?utf-8?B?TzRyeXIzTEh5aGxGTkladXhyNlBManRhNkxEaUtYb3lIZk5lUFZzQ1lHelo5?=
 =?utf-8?B?cUplNEIyTnRxQmtXTE1DTjZXNmEzSDd3bHY1NndXTGhBNmx3MFVVaHNFUThx?=
 =?utf-8?B?SVdqS3hQVzYxRzgvMTJDVGZzcm5LbmZlMnRiYXFNQkw4S3cxNzZlSU5kQ3RE?=
 =?utf-8?B?RHliWDBVZzJxT1dGSmswUjlTU29YZTlUdEMrSk10NnNpQXVhdVJvd3pKa1Zs?=
 =?utf-8?B?U0xtVEh6dmxNYUpneG9CNFI5ODc1OExyL1BQVnNkcXdLMU1PZVhJV2dYSmgx?=
 =?utf-8?B?YktjVU5ybGVCQkZKVE1YMXpoUGlTSlEzOWVWeE9vM3pxRkEyTW9UTDN5TXp0?=
 =?utf-8?B?UXg1c3pmM09SeVczK0dJY3RSZmREQkJnQVdnaEYyZ3dETHljdmZaTi9HbkNW?=
 =?utf-8?B?T0VGWnRRVlU0cjJycmdCMllnaDdtV1E3OFNHcHNFcldUQUxYd085OTFPNTdi?=
 =?utf-8?B?bElMUWxwSUFUWkZrRGQ2V1RpWnVlYUtjQUFmV0xQRk9mZmc3T1o0MVpxS0N4?=
 =?utf-8?B?Y0tWR2hlQWtMVVJRS3RzYUpzUjVsT3pWeVd2TGJPOG9PMFhZczBPc1F4LzVn?=
 =?utf-8?B?RW0vTUpvSHlNTXlDbjZmZnNPYUZrcFFUdVB0QjlVYmd5dEk1M3gyZEhUZ001?=
 =?utf-8?B?U0wrcVlabm9MOEdxVG9MMlB2dDZaU3hXa2E0Q293cXF4a09VL3ZURFlzS2g0?=
 =?utf-8?B?WTZYenc0ay85K2s0eHpkSDFZbGd1QTIzM0x4dVphRjZ0a0JEaVhxZUcxM1R5?=
 =?utf-8?B?TkRZeVBmQXA1Y0I0NTFPdzFsanFLaThISnB2d3VPRDZTYmVhYkZEa0xDOVNC?=
 =?utf-8?B?WDVoWi9GUnlXU2NUYit4RE1XTWZKR3JoNXpGM01ycG5LZDhkMndJazdlaGxX?=
 =?utf-8?B?cEptNnBBK2tSR1JxSjBxTFF1NG9VSjBrNHpHcDVZS01HTjhXNjE3T3BFYUdk?=
 =?utf-8?B?cUxSVnlTbStiVnUzUmJjU1BmVU8vWTE5akd3cUpyMmtlelV1cy94WUdJbjZH?=
 =?utf-8?B?bEpYdTdhVTJRRVN5ZGQxTVl1NVBMOURUdEVkQlVtbUd6NjhLeElMd0Z3QVVM?=
 =?utf-8?B?REc2bUV6OXpmK3VoMGNnaUFUWWlwclpBZWcxeVl0WnNPUFIrME4zYUlzZ09C?=
 =?utf-8?B?ZGxKekE4KzlGL21pYkcwZXh3amsxRTVDOFpZVGVDQ1JLUjB4VFlrQnFaRFpM?=
 =?utf-8?B?UkVtbVpMc3dPeFZRWHMvYXNCbVB3R2pVT2RnOTc1VXBZSHZ6YmNXOWxrUEZD?=
 =?utf-8?B?YTR3cFBZTkYxSExUTVNzakJSRmw0WU9sUkJNZEFqZzRBQWt1YXZqWVNmTG5L?=
 =?utf-8?B?OVNzMHZvVkNaanFIb0R6bldOdVBDNDdVbFJ3aUZuM3E4TWtWOEVYWi96aUFn?=
 =?utf-8?B?VTVJMFg0SkZnL0JvYTQ2dE1VSUJxaGc2VjdBMVM0K3ZYV3RxZTJsOVo5ZUda?=
 =?utf-8?B?WU44dWdDeVVhMDBHQllOMkRhcVRZYjQ5OGdXNm1GaUd3MVh0NGVsV0xPRE4w?=
 =?utf-8?B?cjAyS1V5SnJDdDR3YkpUTzFESjVrdndCUStiRHJjRWhRQldoVElYM25tQnVv?=
 =?utf-8?B?UGdRMU9zSVlGRy9Va2FGSmRwM2lncWFYTUpqT29DcWlzN3pHOEcyK0k2THg1?=
 =?utf-8?B?d05RM3BsYURlOTczSElYem9sM2crZC9IY2cwaitEb2JsRHZlM0lGRmRNa1FE?=
 =?utf-8?B?VVVNSEpDeE1RVFVjcVFqOW9YWWJxaDd3QU1XNWw3cHJKK1hWYUI1QUNJci9a?=
 =?utf-8?B?ZXllSnpNRnNVK2tSRXF0ZmZEMHBzcmkwVlZVYlRUQ3gvTzNjWCtISnNKbFBM?=
 =?utf-8?B?L0g2bmIzUEc4em8xNGVVbjYrbkdmZTE3T0tFSkM2ZDRLNmpuTHV2bjBkcDNE?=
 =?utf-8?B?YWdGRy9jL0tpVHNMKzlaT0FzSjZlbUUzSHNxUVY3VUF5cHJMRzBqRjVDc3Jw?=
 =?utf-8?B?U0w0cVRXMStqcEMrRW5lVnMxdUdnY2E1Zkpna3M4RnFodk9DOTM2eWgyYU1a?=
 =?utf-8?B?WUdsWVFBbHQ5TnZmTGFPY0pMZlRzeUtNS3lmdzVwcnJUWTVTY1JhMGpRZllz?=
 =?utf-8?B?bzJmdmhtK3NpVEhWSjlwNnVMb0liSklRaTBSNDU0ZUVGbVo4QjNsS3V0TkJJ?=
 =?utf-8?B?UXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0c11143-7a0f-42c0-4c9e-08de1b732ef7
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2025 07:24:25.6169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EzH7WwcWpraehSa5dWjmuitxydq8Yn/y2CLG5HircvFtDkPFV0poSfdhhtIrIlDilEn/tnAoKAh0zXThH//8dO5c7f+s/YYWbTciJwKuDXg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5160
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762241074; x=1793777074;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NregQIa/lc6qHFJIEqBGdTlMNZAStVw+DoFMQQoTj3o=;
 b=KOIRp5rU7/wtMe1oXcHC+kOxFlj9iwmYAGe6yeKcUbEIwoCTDq7I7NHv
 G5MLYQ605Bte3Ts4tESob5QZ3/9YWyLx1phFEmpiHw12QHL0PrBd3nbBL
 OL/Jus3t3GI5lq00AYSa0hKqkyf5F+NnNFc1g1Me/jr4JSIJ0VMltnKxf
 GJgxOXdpkTvnxsi4mMQ4ahG2IEX0sCiP/K1W0eFBF3MLPs/Z2H6aug/BY
 H4pzta+HgG4JWvLBvEqoFIjOZRCsikUvSEG97TZBIglkXO+1g479K/0q+
 Qpm8wJGHv7HpAbEeF+lD313xZeKXLcHnZ+hG8XUeOL2VvnQdMx12C+xIr
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KOIRp5rU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 6/9] ice: remove ice_q_stats
 struct and use struct_group
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2VsbGVyLCBKYWNvYiBF
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDQs
IDIwMjUgMjowNyBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0
aW9ub3ZAaW50ZWwuY29tPjsgTG9iYWtpbiwNCj4gQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jh
a2luQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGlu
dGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRl
bC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZzsgS2VsbGVyLA0KPiBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5j
b20+DQo+IFN1YmplY3Q6IFtQQVRDSCBpd2wtbmV4dCA2LzldIGljZTogcmVtb3ZlIGljZV9xX3N0
YXRzIHN0cnVjdCBhbmQgdXNlDQo+IHN0cnVjdF9ncm91cA0KPiANCj4gVGhlIGljZV9xcF9yZXNl
dF9zdGF0cyBmdW5jdGlvbiByZXNldHMgdGhlIHN0YXRzIGZvciBhbGwgcmluZ3Mgb24gYQ0KPiBW
U0kuIEl0IGN1cnJlbnRseSBiZWhhdmVzIGRpZmZlcmVudGx5IGZvciBUeCBhbmQgUnggcmluZ3Mu
IEZvciBSeA0KPiByaW5ncywgaXQgb25seSBjbGVhcnMgdGhlIHJ4X3N0YXRzIHdoaWNoIGRvIG5v
dCBpbmNsdWRlIHRoZSBwa3QgYW5kDQo+IGJ5dGUgY291bnRzLiBGb3IgVHggcmluZ3MgYW5kIFhE
UCByaW5ncywgaXQgY2xlYXJzIG9ubHkgdGhlIHBrdCBhbmQNCj4gYnl0ZSBjb3VudHMuDQo+IA0K
PiBXZSBjb3VsZCBhZGQgZXh0cmEgbWVtc2V0IGNhbGxzIHRvIGNvdmVyIGJvdGggdGhlIHN0YXRz
IGFuZCByZWxldmFudA0KPiB0eC9yeCBzdGF0cyBmaWVsZHMuIEluc3RlYWQsIGxldHMgY29udmVy
dCBzdGF0cyBpbnRvIGEgc3RydWN0X2dyb3VwDQo+IHdoaWNoIGNvbnRhaW5zIGJvdGggdGhlIHBr
dHMgYW5kIGJ5dGVzIGZpZWxkcyBhcyB3ZWxsIGFzIHRoZSBUeCBvciBSeA0KPiBzdGF0cywgYW5k
IHJlbW92ZSB0aGUgaWNlX3Ffc3RhdHMgc3RydWN0dXJlIGVudGlyZWx5Lg0KPiANCj4gVGhlIG9u
bHkgcmVtYWluaW5nIHVzZXIgb2YgaWNlX3Ffc3RhdHMgaXMgdGhlIGljZV9xX3N0YXRzX2xlbiBm
dW5jdGlvbg0KPiBpbiBpY2VfZXRodG9vbC5jLCB3aGljaCBqdXN0IGNvdW50cyB0aGUgbnVtYmVy
IG9mIGZpZWxkcy4gUmVwbGFjZSB0aGlzDQo+IHdpdGggYSBzaW1wbGUgbXVsdGlwbGljYXRpb24g
YnkgMi4gSSBmaW5kIHRoaXMgdG8gYmUgc2ltcGxlciB0byByZWFzb24NCj4gYWJvdXQgdGhhbiBy
ZWx5aW5nIG9uIGtub3dpbmcgdGhlIGxheW91dCBvZiB0aGUgaWNlX3Ffc3RhdHMgc3RydWN0dXJl
Lg0KPiANCj4gTm93IHRoYXQgdGhlIHN0YXRzIGZpZWxkIG9mIHRoZSBpY2VfcmluZ19zdGF0cyBj
b3ZlcnMgYWxsIG9mIHRoZQ0KPiBzdGF0aXN0aWMgdmFsdWVzLCB0aGUgaWNlX3FwX3Jlc2V0X3N0
YXRzIGZ1bmN0aW9uIHdpbGwgcHJvcGVybHkgemVybw0KPiBvdXQgYWxsIG9mIHRoZSBmaWVsZHMu
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cngu
aCAgICB8IDE4ICsrKysrKysrLS0tLS0tLS0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9iYXNlLmMgICAgfCAgNCArKy0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2V0aHRvb2wuYyB8ICA0ICsrLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfbGliLmMgICAgIHwgIDcgKysrKy0tLQ0KPiAgNCBmaWxlcyBjaGFuZ2Vk
LCAxNiBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguaA0KPiBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5oDQo+IGluZGV4IGYxZmUxNzc1YmFlZC4uODU4
NmQ1YmViYWM3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3R4cnguaA0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4
cnguaA0KPiBAQCAtMTI5LDExICsxMjksNiBAQCBzdHJ1Y3QgaWNlX3R4X29mZmxvYWRfcGFyYW1z
IHsNCj4gIAl1OCBoZWFkZXJfbGVuOw0KPiAgfTsNCj4gDQo+IC1zdHJ1Y3QgaWNlX3Ffc3RhdHMg
ew0KPiAtCXU2NCBwa3RzOw0KPiAtCXU2NCBieXRlczsNCj4gLX07DQo+IC0NCj4gIHN0cnVjdCBp
Y2VfdHhxX3N0YXRzIHsNCj4gIAl1NjQgcmVzdGFydF9xOw0KPiAgCXU2NCB0eF9idXN5Ow0KPiBA
QCAtMTQ4LDEyICsxNDMsMTUgQEAgc3RydWN0IGljZV9yeHFfc3RhdHMgew0KPiANCj4gIHN0cnVj
dCBpY2VfcmluZ19zdGF0cyB7DQo+ICAJc3RydWN0IHJjdV9oZWFkIHJjdTsJLyogdG8gYXZvaWQg
cmFjZSBvbiBmcmVlICovDQo+IC0Jc3RydWN0IGljZV9xX3N0YXRzIHN0YXRzOw0KPiAgCXN0cnVj
dCB1NjRfc3RhdHNfc3luYyBzeW5jcDsNCj4gLQl1bmlvbiB7DQo+IC0JCXN0cnVjdCBpY2VfdHhx
X3N0YXRzIHR4X3N0YXRzOw0KPiAtCQlzdHJ1Y3QgaWNlX3J4cV9zdGF0cyByeF9zdGF0czsNCj4g
LQl9Ow0KPiArCXN0cnVjdF9ncm91cChzdGF0cywNCj4gKwkJdTY0IHBrdHM7DQo+ICsJCXU2NCBi
eXRlczsNCj4gKwkJdW5pb24gew0KPiArCQkJc3RydWN0IGljZV90eHFfc3RhdHMgdHhfc3RhdHM7
DQo+ICsJCQlzdHJ1Y3QgaWNlX3J4cV9zdGF0cyByeF9zdGF0czsNCj4gKwkJfTsNCj4gKwkpOw0K
PiAgfTsNCj4gDQo+ICBlbnVtIGljZV9yaW5nX3N0YXRlX3Qgew0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9iYXNlLmMNCj4gYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Jhc2UuYw0KPiBpbmRleCBlYWRiMWUzZDEyYjMuLmFmYmZm
OGFhOWNlYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9iYXNlLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9iYXNl
LmMNCj4gQEAgLTE0MTQsOCArMTQxNCw4IEBAIHN0YXRpYyB2b2lkIGljZV9xcF9yZXNldF9zdGF0
cyhzdHJ1Y3QgaWNlX3ZzaQ0KPiAqdnNpLCB1MTYgcV9pZHgpDQo+ICAJaWYgKCF2c2lfc3RhdCkN
Cj4gIAkJcmV0dXJuOw0KPiANCj4gLQltZW1zZXQoJnZzaV9zdGF0LT5yeF9yaW5nX3N0YXRzW3Ff
aWR4XS0+cnhfc3RhdHMsIDAsDQo+IC0JICAgICAgIHNpemVvZih2c2lfc3RhdC0+cnhfcmluZ19z
dGF0c1txX2lkeF0tPnJ4X3N0YXRzKSk7DQo+ICsJbWVtc2V0KCZ2c2lfc3RhdC0+cnhfcmluZ19z
dGF0c1txX2lkeF0tPnN0YXRzLCAwLA0KPiArCSAgICAgICBzaXplb2YodnNpX3N0YXQtPnJ4X3Jp
bmdfc3RhdHNbcV9pZHhdLT5zdGF0cykpOw0KPiAgCW1lbXNldCgmdnNpX3N0YXQtPnR4X3Jpbmdf
c3RhdHNbcV9pZHhdLT5zdGF0cywgMCwNCj4gIAkgICAgICAgc2l6ZW9mKHZzaV9zdGF0LT50eF9y
aW5nX3N0YXRzW3FfaWR4XS0+c3RhdHMpKTsNCj4gIAlpZiAodnNpLT54ZHBfcmluZ3MpDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYw0K
PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jDQo+IGluZGV4
IGExZDlhYmVlOTdlNS4uMGJjNmYzMWEyYjA2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYw0KPiBAQCAtMzMsOCArMzMsOCBAQCBzdGF0aWMg
aW50IGljZV9xX3N0YXRzX2xlbihzdHJ1Y3QgbmV0X2RldmljZQ0KPiAqbmV0ZGV2KSAgew0KPiAg
CXN0cnVjdCBpY2VfbmV0ZGV2X3ByaXYgKm5wID0gbmV0ZGV2X3ByaXYobmV0ZGV2KTsNCj4gDQo+
IC0JcmV0dXJuICgobnAtPnZzaS0+YWxsb2NfdHhxICsgbnAtPnZzaS0+YWxsb2NfcnhxKSAqDQo+
IC0JCShzaXplb2Yoc3RydWN0IGljZV9xX3N0YXRzKSAvIHNpemVvZih1NjQpKSk7DQo+ICsJLyog
T25lIHBhY2tldHMgYW5kIG9uZSBieXRlcyBjb3VudCBwZXIgcXVldWUgKi8NCj4gKwlyZXR1cm4g
KChucC0+dnNpLT5hbGxvY190eHEgKyBucC0+dnNpLT5hbGxvY19yeHEpICogMik7DQo+ICB9DQo+
IA0KPiAgI2RlZmluZSBJQ0VfUEZfU1RBVFNfTEVOCUFSUkFZX1NJWkUoaWNlX2dzdHJpbmdzX3Bm
X3N0YXRzKQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9saWIuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMNCj4g
aW5kZXggZTcyNjVlODc3NzAzLi5jNmRkMjk3NTgyYzEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYw0KPiBAQCAtMzQzNyw3ICszNDM3LDggQEAgaW50IGlj
ZV92c2lfY2ZnX3RjKHN0cnVjdCBpY2VfdnNpICp2c2ksIHU4DQo+IGVuYV90YykNCj4gICAqDQo+
ICAgKiBUaGlzIGZ1bmN0aW9uIGFzc3VtZXMgdGhhdCBjYWxsZXIgaGFzIGFjcXVpcmVkIGEgdTY0
X3N0YXRzX3N5bmMNCj4gbG9jay4NCj4gICAqLw0KPiAtc3RhdGljIHZvaWQgaWNlX3VwZGF0ZV9y
aW5nX3N0YXRzKHN0cnVjdCBpY2VfcV9zdGF0cyAqc3RhdHMsIHU2NA0KPiBwa3RzLCB1NjQgYnl0
ZXMpDQo+ICtzdGF0aWMgdm9pZCBpY2VfdXBkYXRlX3Jpbmdfc3RhdHMoc3RydWN0IGljZV9yaW5n
X3N0YXRzICpzdGF0cywNCj4gKwkJCQkgIHU2NCBwa3RzLCB1NjQgYnl0ZXMpDQo+ICB7DQo+ICAJ
c3RhdHMtPmJ5dGVzICs9IGJ5dGVzOw0KPiAgCXN0YXRzLT5wa3RzICs9IHBrdHM7DQo+IEBAIC0z
NDUyLDcgKzM0NTMsNyBAQCBzdGF0aWMgdm9pZCBpY2VfdXBkYXRlX3Jpbmdfc3RhdHMoc3RydWN0
DQo+IGljZV9xX3N0YXRzICpzdGF0cywgdTY0IHBrdHMsIHU2NCBieXRlcyAgdm9pZA0KPiBpY2Vf
dXBkYXRlX3R4X3Jpbmdfc3RhdHMoc3RydWN0IGljZV90eF9yaW5nICp0eF9yaW5nLCB1NjQgcGt0
cywgdTY0DQo+IGJ5dGVzKSAgew0KPiAgCXU2NF9zdGF0c191cGRhdGVfYmVnaW4oJnR4X3Jpbmct
PnJpbmdfc3RhdHMtPnN5bmNwKTsNCj4gLQlpY2VfdXBkYXRlX3Jpbmdfc3RhdHMoJnR4X3Jpbmct
PnJpbmdfc3RhdHMtPnN0YXRzLCBwa3RzLA0KPiBieXRlcyk7DQo+ICsJaWNlX3VwZGF0ZV9yaW5n
X3N0YXRzKHR4X3JpbmctPnJpbmdfc3RhdHMsIHBrdHMsIGJ5dGVzKTsNCj4gIAl1NjRfc3RhdHNf
dXBkYXRlX2VuZCgmdHhfcmluZy0+cmluZ19zdGF0cy0+c3luY3ApOw0KPiAgfQ0KPiANCj4gQEAg
LTM0NjUsNyArMzQ2Niw3IEBAIHZvaWQgaWNlX3VwZGF0ZV90eF9yaW5nX3N0YXRzKHN0cnVjdCBp
Y2VfdHhfcmluZw0KPiAqdHhfcmluZywgdTY0IHBrdHMsIHU2NCBieXRlcykgIHZvaWQgaWNlX3Vw
ZGF0ZV9yeF9yaW5nX3N0YXRzKHN0cnVjdA0KPiBpY2VfcnhfcmluZyAqcnhfcmluZywgdTY0IHBr
dHMsIHU2NCBieXRlcykgIHsNCj4gIAl1NjRfc3RhdHNfdXBkYXRlX2JlZ2luKCZyeF9yaW5nLT5y
aW5nX3N0YXRzLT5zeW5jcCk7DQo+IC0JaWNlX3VwZGF0ZV9yaW5nX3N0YXRzKCZyeF9yaW5nLT5y
aW5nX3N0YXRzLT5zdGF0cywgcGt0cywNCj4gYnl0ZXMpOw0KPiArCWljZV91cGRhdGVfcmluZ19z
dGF0cyhyeF9yaW5nLT5yaW5nX3N0YXRzLCBwa3RzLCBieXRlcyk7DQo+ICAJdTY0X3N0YXRzX3Vw
ZGF0ZV9lbmQoJnJ4X3JpbmctPnJpbmdfc3RhdHMtPnN5bmNwKTsNCj4gIH0NCj4gDQo+IA0KPiAt
LQ0KPiAyLjUxLjAucmMxLjE5Ny5nNmQ5NzVlOTVjOWQ3DQoNClJldmlld2VkLWJ5OiBBbGVrc2Fu
ZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg==
