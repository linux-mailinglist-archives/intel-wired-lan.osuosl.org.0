Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1448CBA5A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2024 06:34:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E85640744;
	Wed, 22 May 2024 04:34:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bnn8eTsjf3Ti; Wed, 22 May 2024 04:34:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EF6840728
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716352493;
	bh=9ssDPKqm2Jbi4TujU5ssEBKa+mbtG/IFAdMviMMBdxs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gnOPV9+MAMnfJxb9hx0x/vtef++DVnXtH6dMDfjHJ1v+v4xovAjZr4oaGgWhqRXFu
	 LKmwBl8WpCcVMZVB4P93fyA6KLG1pYi79K6RFvhdQzvDJzuPNUwLsHkNr5zx8L4Psa
	 9uMS7PMN82h6vvjSU8oRQXLO+YAE+eB9hSdNq+SXipNX+KfXTLKwIkBC0Wl33C7hVf
	 YNDYu5Fwb2MvcU15hfGF+T9j6ARuv7tIfpB5rwA/GHJL5QBLrM0tfA1opz8wH1Giyx
	 1G9Ym8XvL1rMWu9lDYWnwQFYqOcel8nPRrwchjdtzv5HJ1u9WNn46gOsmfgiS6DyoV
	 9kCxqqFd5Kcmw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EF6840728;
	Wed, 22 May 2024 04:34:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2645B1C5761
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 04:34:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 19C2940724
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 04:34:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eMUlOOnI3_dD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 May 2024 04:34:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 082B14064A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 082B14064A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 082B14064A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 04:34:48 +0000 (UTC)
X-CSE-ConnectionGUID: nEpU9/zSSYyS4Efhr+1ZQA==
X-CSE-MsgGUID: m2av4BwqQc+1vtYnBJjGrA==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="37962252"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="37962252"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 21:34:48 -0700
X-CSE-ConnectionGUID: ln2gXfP0Tp2IMZsTMJOtbA==
X-CSE-MsgGUID: G4uI9dg+TI2kpfSApAGc6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="37992544"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 May 2024 21:34:48 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 21 May 2024 21:34:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 21 May 2024 21:34:47 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 21 May 2024 21:34:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 21 May 2024 21:34:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q/UEy2x3CWLLSaHjZYc2Fv6DLXBIm5yt7hJKoNnAB1P/DG1x076CoZXBrSLzuqCRseWsh7c2JMQXM6qrxH3CQuhwo9crljeuXmfYSaokpkZcEiUOEWhVX8k0XWUmOc8Pdx7O+0H2+kMYYg6p/XOkZXG8jICCJv76krFyDBCgBXs/MehGnCs2urZQOr0XuBg7v+9m0447XsbT7+7uceJ/d/edgQ5aDGUKogbmVnlgGCoDifbP/ho5ldfQWf9P93VjnF5Tk+ftxBAaXDjv0tOHvEbBXktBqQC5vo5Ynb2oUpEL/MIl1cUAXrG43lHZV5pjUgvlQGTRaixaLskZxtjnnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9ssDPKqm2Jbi4TujU5ssEBKa+mbtG/IFAdMviMMBdxs=;
 b=ZVdJA7lrH+cx6u5MnJ3zHTdKCJAYHQ3GQCdSYmayoTsD16yt8RfaJy36+89FYnXWPxqEM5Xj4akMfFwh6tt7Hr9yCvm0YbqmZB429Z8gwPhy74kUT8s5y3ctHgvu7lfoYPxkU97hxnCOdQJVX710LC+S9W+YDCsIy+OWHc2Eq0JWwVE8arBZEPlGpPYW1B/EA0A+nYf8PsQT/P+stSzR/iuciRdokJkeoCmT1bbiuD6LEeSCPnxuMQRyizb1g0GtMFibyE5K3oO6dOnQ0++N/2FKF7K6eAy5B8xll0e+S8Q0t2W7tqjSeaFpmH8OhdDNc2GLyDh3au9Xn9m13I15wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Wed, 22 May
 2024 04:34:45 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7587.028; Wed, 22 May 2024
 04:34:45 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix accounting if a VLAN
 already exists
Thread-Index: AQHaoXMObSiLWUIAJ0qmCunyWsXOrLGiv2kg
Date: Wed, 22 May 2024 04:34:45 +0000
Message-ID: <CYYPR11MB8429EC3534F456DCD44180B7BDEB2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240508-e810-live-migration-jk-fix-vsi-vlan-counting-v1-1-0c070cfe2095@intel.com>
In-Reply-To: <20240508-e810-live-migration-jk-fix-vsi-vlan-counting-v1-1-0c070cfe2095@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH8PR11MB6753:EE_
x-ms-office365-filtering-correlation-id: afbab0d0-25b5-413d-97e0-08dc7a188192
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?ZUw4MWNoQlZhcThOYndxbEVRdWxKZHlkZ2NMcGt0ZWxYL3A0TkZUdGFvU2Vi?=
 =?utf-8?B?UHBYMUlKcXgzQ3lvWHcrd2NpdkZOUURLQmJtZUZrTGVzb1V2d3RUY2tSb0FR?=
 =?utf-8?B?NWpxbEZZOVpiVnFVQU13SE5obWpqbVRYdDhKRlFWSUJCUmlCeDY4VDNZdlJk?=
 =?utf-8?B?VnJ6ZHAzN2xUeldFbGtURjRIZmFLc293ZS9yWHo2RGJDemp3ZFpsSzhkT1dR?=
 =?utf-8?B?K3Rha3NMd2wwYWhuS2JnT3Q5MEZrSWU4UGpFNE1lRmpKR3c5dW9aR3RneEFX?=
 =?utf-8?B?U0V6czUrZCsyeEllbkdkbXhjbFdUcVVLck9pMTNRQUU4djF2YjhFbGhzSk1t?=
 =?utf-8?B?cFZ3Si9ZSkU3TkZxRm9EV1FIb3dpV3Mza2wzNHNCOHdsSHMwT1RGOWVRNi94?=
 =?utf-8?B?WjJKUzVoMXBRVnJZcEE4L0pYYjEzdlJlQU15V0t1Y1cxUVpHT2FFR1VMYzRT?=
 =?utf-8?B?VGJqWDJTM1RJSklNd1dNWmVrTjZwU3hXd0JrYWVZRlgzNkU2eFNicGZxVFph?=
 =?utf-8?B?a3dqOHREaExZUjZML2JpUVFYb0JhNytnTGdlc0ROeFpKZUFFc1pkYXZKSUlP?=
 =?utf-8?B?M1ZHOTA4T0kvZFZWMitJSExpYUFTZFQ0ZGxiZjJRVTMwcG9jeElRTjFqSGww?=
 =?utf-8?B?Qkxjb1NobkpxQ2g0NzIvdEg5cWFVc2RKVjV0b0RSTy9lVjRRcE92YllGbUo3?=
 =?utf-8?B?bnRXYmhQcXZjemdrVDBZTE9tRXdyMlFjcHNRd0J3WStZR1ZUL2xWS1RIb1ht?=
 =?utf-8?B?cEZjbXVxVTRKSjd0Q1ppTWZ4YnpjcUYyRHZvOFJ0a0haV1RQbnA0b3RMeXFY?=
 =?utf-8?B?OTBPZW4rNjlITnhFVnhER2wxRTlYbWI0Ynp3Q2JwNmZZVzJpMnJDVU14bFZB?=
 =?utf-8?B?MFpkMFlyTnBsUHRMRktNS1hUSStqZ2Vac2ZKR1M3dlZuRXg4ME9WNlBpQSta?=
 =?utf-8?B?TGlocG1FSHF1aW9iOTFVMy9idFNMQ2ZMTnV0MVg1ZkcrWUFlNDdvSTJuM01y?=
 =?utf-8?B?R0NkSVV4OUFlV0FIYTc5V3VDYlFBMWxacVJnZ3N1RzIwNm5QSkhwbCtEbkhH?=
 =?utf-8?B?SnJnMkhEaWJHcUxjWS82NkprMFFyNEVTdHNWZzVCK3Y1M3k0Rzd3cGNsbEti?=
 =?utf-8?B?SzBOY2JkNGpzOHZobVVac1pZNk5uekhZWW13N2hQN3RpTkgzVy83bm04bUNN?=
 =?utf-8?B?RGl1L1drMS9PcmVlUHk3ZWh1ZjMxdmFUcDcxTDV2RmljcSs3ZUFOcjRCMFFJ?=
 =?utf-8?B?K1ovbi9yOFhDMGpjWUpGZW1rQi9aKzVjOUM0b1BaSUlOYTl3RFk0YngvL1FU?=
 =?utf-8?B?ejBrNHBsZnlscFM4VzdvRTNNeCtTZU5FdU9yY2w5TjA3WnFuVmp6UCsrOHVM?=
 =?utf-8?B?dVMvSHRsMXlRRGNkemVEQ3AwK0p6TlgyalJncnJ6QS93LzBzRXlweUdMeCti?=
 =?utf-8?B?amJwQ21Nay8zU3M2VCtiRkJ6MENUZ2ROTDFoTSsrRGdBMUdIQTlOWkdYRWZu?=
 =?utf-8?B?TllTL1QyMmpCazhXcit5ZmZJSVUzOU00enhaVGFPQjR3VGJLQjQ4U1lsekJw?=
 =?utf-8?B?WU5kYldtRG0xYnZlbHRDZytnbm5peUlXb1NSbEh0ODBzbVRraEhDZzlXVEtM?=
 =?utf-8?B?b1BET21NQzd5TEk3aktaY3FoTlFTT2dPaUVDZjE5UUgybEtRQlN0dG81T1Rz?=
 =?utf-8?B?WFBiaWVySVdnY1RCNFB0VWtSUTl3SUEzR1hVQmtCazZSTnB1YStCSlhqTGFi?=
 =?utf-8?B?a2R4M3c0V1RnQ0JCWDVyWjY4Tm1VZFVRVDNIYUlDR2VJMXArNXpnbGdXMGpi?=
 =?utf-8?B?K1lKeE1oSzhnR0tlQzlmZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dklrWjMxZzNLMXFVUE5MYWp2MXJEREcybmpicmVNN1d4S0RHb05rZEFiUEg4?=
 =?utf-8?B?NExCelF5UUpMczVuRUlQeGlpblc2dFhyTUQyMklSUFE5SlJ3MjVPems2OURR?=
 =?utf-8?B?NkFkVzBQNUdwZWlaYmJ5RjlGZkhpeGhDWklGV1IycnY1cTFSKzBvUVNDYWdG?=
 =?utf-8?B?SjlEUzBONlR2cUJkQVVzeTdYM1FHa3ZQelhkekFXdDlhK1FnekVTeEJtdUtW?=
 =?utf-8?B?VUFxL292VzBsSk16VHgxaUtLVFk3bm13U0J5eHJ4dnpWUDFuRnFHSk9wY0o4?=
 =?utf-8?B?SzVrWHJ6dk5iTE1tRGlkMkZ2RExFeFdXUXJReUwwVTZYZ1dzdDlGTnNTVjU4?=
 =?utf-8?B?UFl0OHA0bkFibVBUdkJscHBab2V4N3k0dXg4YS81VWY4T3YxdHVacDlQN2Vo?=
 =?utf-8?B?WlJ3dFlyTXpHMVJJaVdYOHNRbkZsUkVWVklCSjdGbEtLaUNhTHk0VnJ6OFAr?=
 =?utf-8?B?Y09UNWpkM3kzWDdlZzY2Q3RsWExxaGxLTnoxcFNNSWxaOUgyeVI4SEJGYUdz?=
 =?utf-8?B?YzZESzl6c3hVY3l6OHJWekFvcU1jYVN4cTZicVYwQ2J5S25OMW9kSUt5VDMx?=
 =?utf-8?B?VUY2WVlKczFGc0x0b0hxKzlCWDR3NWtUdzdmRU5lRFBNc3J1djFhaGJKdEJZ?=
 =?utf-8?B?VnQxUUFhbEJpWWRQRHJBUW9uOVRwVWRSRmdEUFdWK2tvS3JONFBSZ3hVRDhB?=
 =?utf-8?B?am9mR0hzUDBUK1FrYU1oOEdFc3MxbWNjSVpEc0lWY2U2QllESTVmK1BSV2F2?=
 =?utf-8?B?MjJtdEtxdjVBRzgvY0tSMnEzV0YvMU9abExUMFhLSUJCdmVxRzdUa1RjcTZx?=
 =?utf-8?B?YW5EUFRvNGpqU3dlNldXUFkzNmgyRHU0b2IxUzFjazlBa09FNUVDUEJWOUhN?=
 =?utf-8?B?Ny9FQVYwRTEzOThxUkt6Q2lpSFI5Ukl4dE93YXc4MDljdjBsWHhrcTR5M0FN?=
 =?utf-8?B?dWpXa3NFZlJ0T01pNzhBMUhuQmZESFk4dUxNc1ZYVGdlYVhQdmFQUzNodzNw?=
 =?utf-8?B?aE9CL0o4R2hwRUdxbTB5RUdad0NQOUhFTHRBM2VGeDhJOVNOUTZEcFRZREFV?=
 =?utf-8?B?WUlvNysrcXhWMDQ2TlhEWnhjSGFrQmMxY29mWEN4VStkZW5MaFUweGpzUTJj?=
 =?utf-8?B?SjNCNWNoYWRpT3pQL1o2RCsxUDhTM3NYejVCanJ0OEtkNGIwd1ZwRytWdWEy?=
 =?utf-8?B?NkcrWlZ1OXdWbFdwNll0bVpXKzdXR3RkWTdYYTFUeHQ5Z3NBZkMyTS9mV0VT?=
 =?utf-8?B?TzJxWnJ5MVBiQzNqSkt1c24xQ1lPZTdsckxPWUlsREorTWxBVklON2l6ekxU?=
 =?utf-8?B?cVVzM2ZFWW56djFnS1A3REZpUXFzUERaQlRPQVl3OGVUQWNrNHVBM2RlQjMv?=
 =?utf-8?B?b0loc1pPR20xQ3V6QmVpVkhPQzk3VjZBVU5HdnhqQkZQODVZOHFzcEc4Ulhm?=
 =?utf-8?B?U1N1ZG9KRkdxQktpUjNlSW43bTRWWEUvUTlxYmR2VnhIc0JObEljR0xXZW5G?=
 =?utf-8?B?T1FiUFVLbHVVc2NJZEhoWm1nZ2RrVjNnamhKUnVITnFOZ052QjFjZllxV2Ro?=
 =?utf-8?B?THFycjAwOWpTdUpvWE5iUGRJYmFEZTk1Nk4rSnp4Vm5IL1E5OGpMZWFCVGEw?=
 =?utf-8?B?Ui9hNWViSWgrbHFyUFBXcURkQW9KZG1QMXBIa081T0ZvTklXdS8rWnN5c28v?=
 =?utf-8?B?RlVoRnBSaVZLTWRLVHNjdDVqUCtReGVzZFhEd21KM1FUNDJKYngwYXFBRmlJ?=
 =?utf-8?B?YjM0R0c1WWd0YzcrYXlXMCtNNWRvRUxkQllINkpia2FSUzRGRjhmYVI0aUtx?=
 =?utf-8?B?NWxObXZsc29FT3Z1empOWmpiang2cEpCL1JZYmVYN2oxMEhlMkw4RmRud1Bz?=
 =?utf-8?B?NFVySENxZGhuT29LU3N4ZDRwRU9GSFNRL0JoUlBINytvcm5rWWorYVBVckJs?=
 =?utf-8?B?TlRpV1l0aUcrUGJWdStFaGtJQ1RJaVhlVE5GRG0xNzIwSnMwbXpsd3RTZXd1?=
 =?utf-8?B?VUk1a0dIMllBN25ZQXlRYVZENlowVWU3aXFmSU5qNCt4UGQvK0JkZkJJY0ZM?=
 =?utf-8?B?Zmo4L3d2YW1Pa1RLVUZCWDY2MjdnaElaMXFYbXM5VmQxOG42RDZhUDVaV3Nt?=
 =?utf-8?B?NzdsZVVUeTVRdXNONlhwbmJUNmFNKzI1Vll2SXNLeDB6VmJhODNVTExabGVp?=
 =?utf-8?B?Ync9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afbab0d0-25b5-413d-97e0-08dc7a188192
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2024 04:34:45.1184 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9Y/RrDSetE7tFUfzJDhFqQwgWrei5oO21jqGvtimoQNOd3PpQsnXRLqjx7Au5bRPL2j8iCWnizjShcw/aXy33f7nXk8U2yTI1mCybxpqdFS35GoJ9PBe1amdcxCfqAnh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6753
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716352489; x=1747888489;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9ssDPKqm2Jbi4TujU5ssEBKa+mbtG/IFAdMviMMBdxs=;
 b=N0NK4R15YXqnlNmKu8ROThhcZIKwc9fX31ND9ROMTEFfggJC1rIaR04I
 LiQYD57YDlW9v705Uaq/jXinxnA7hKwU0k3wOwSYdGXv37eoeWzgR83E8
 T0IbywvYmG81HYupAeZeoJboqBj/KoldTXbIauDDOIZwQHUEwPEgHBMzr
 0/LTdeVr9hUy5VJxD++WrMsjB0ZhLelQ4VD1By/ZbVv08nPqcGejwb1cV
 oTwILnuGwL+HDcjgLD0gH79NjtSI7zgUaYh3fDKg2MCZJf1hbLyv6p7Mi
 L8HSCrpQbAuJWIwbSnngF9GEBLkL53m/DQm0S7xPc7kWSr+t9yT9OpT0r
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N0NK4R15
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix accounting if a VLAN
 already exists
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogV2VkbmVzZGF5LCBNYXkgOCwgMjAyNCAxMTo0MCBQTQ0KPiBUbzogSW50ZWwg
V2lyZWQgTEFOIDxpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZz4NCj4gQ2M6IEtlbGxl
ciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwt
d2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldF0gaWNlOiBmaXggYWNjb3VudGluZyBpZiBhIFZMQU4g
YWxyZWFkeSBleGlzdHMNCj4NCj4gVGhlIGljZV92c2lfYWRkX3ZsYW4oKSBmdW5jdGlvbiBpcyB1
c2VkIHRvIGFkZCBhIFZMQU4gZmlsdGVyIGZvciB0aGUgdGFyZ2V0IFZTSS4gVGhpcyBmdW5jdGlv
biBwcmVwYXJlcyBhIGZpbHRlciBpbiB0aGUgc3dpdGNoIHRhYmxlIGZvciB0aGUgZ2l2ZW4gVlNJ
Lg0KPiBJZiBpdCBzdWNjZWVkcywgdGhlIHZzaS0+bnVtX3ZsYW4gY291bnRlciBpcyBpbmNyZW1l
bnRlZC4NCj4NCj4gSXQgaXMgbm90IGNvbnNpZGVyZWQgYW4gZXJyb3IgdG8gYWRkIGEgVkxBTiB3
aGljaCBhbHJlYWR5IGV4aXN0cyBpbiB0aGUgc3dpdGNoIHRhYmxlLCBzbyB0aGUgZnVuY3Rpb24g
ZXhwbGljaXRseSBjaGVja3MgYW5kIGlnbm9yZXMgLUVFWElTVC4gVGhlDQo+IHZzaS0+bnVtX3Zs
YW4gY291bnRlciBpcyBzdGlsbCBpbmNyZW1lbnRlZC4NCj4NCj4gVGhpcyBzZWVtcyBpbmNvcnJl
Y3QsIGFzIGl0IG1lYW5zIHdlIGNhbiBkb3VibGUtY291bnQgaW4gdGhlIGNhc2Ugd2hlcmUgdGhl
IHNhbWUgVkxBTiBpcyBhZGRlZCB0d2ljZSBieSB0aGUgY2FsbGVyLiBUaGUgYWN0dWFsIHRhYmxl
IHdpbGwgaGF2ZSBvbmUgbGVzcyBmaWx0ZXIgdGhhbiB0aGUgY291bnQuDQo+DQo+IFRoZSBpY2Vf
dnNpX2RlbF92bGFuKCkgZnVuY3Rpb24gc2ltaWxhcmx5IGNoZWNrcyBhbmQgaGFuZGxlcyB0aGUg
LUVOT0VOVCBjb25kaXRpb24gZm9yIHdoZW4gZGVsZXRpbmcgYSBmaWx0ZXIgdGhhdCBkb2Vzbid0
IGV4aXN0LiBUaGlzIGZsb3cgb25seSBkZWNyZW1lbnRzIHRoZSB2c2ktPm51bV92bGFuIGlmIGl0
IGFjdHVhbGx5IGRlbGV0ZWQgYSBmaWx0ZXIuDQo+DQo+IFRoZSB2c2ktPm51bV92bGFuIGNvdW50
ZXIgaXMgdXNlZCBvbmx5IGluIGEgZmV3IHBsYWNlcywgcHJpbWFyaWx5IHJlbGF0ZWQgdG8gdHJh
Y2tpbmcgdGhlIG51bWJlciBvZiBub24temVybyBWTEFOcy4gSWYgdGhlIHZzaS0+bnVtX3ZsYW5z
IGdldHMgb3V0IG9mIHN5bmMsIHRoZW4gaWNlX3ZzaV9udW1fbm9uX3plcm9fdmxhbnMoKSB3aWxs
IGluY29ycmVjdGx5IHJlcG9ydCBtb3JlIFZMQU5zIHRoYW4gYXJlIHByZXNlbnQsIGFuZCBpY2Vf
dnNpX2hhc19ub25femVyb192bGFucygpIGNvdWxkIHJldHVybiB0cnVlIHBvdGVudGlhbGx5IGlu
IGNhc2VzIHdoZXJlIHRoZXJlIGFyZSBvbmx5IFZMQU4gMCBmaWx0ZXJzIGxlZnQuDQo+DQo+IEZp
eCB0aGlzIGJ5IG9ubHkgaW5jcmVtZW50aW5nIHRoZSB2c2ktPm51bV92bGFuIGluIHRoZSBjYXNl
IHdoZXJlIHdlIGFjdHVhbGx5IGFkZGVkIGFuIGVudHJ5LCBhbmQgbm90IGluIHRoZSBjYXNlIHdo
ZXJlIHRoZSBlbnRyeSBhbHJlYWR5IGV4aXN0ZWQuDQo+DQo+IEZpeGVzOiBhMWZmYWZiMGI0YTQg
KCJpY2U6IFN1cHBvcnQgY29uZmlndXJpbmcgdGhlIGRldmljZSB0byBEb3VibGUgVkxBTiBNb2Rl
IikNCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5j
b20+DQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92c2lfdmxh
bl9saWIuYyB8IDExICsrKysrKy0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspLCA1IGRlbGV0aW9ucygtKQ0KPg0KDQpUZXN0ZWQtYnk6IFB1Y2hhIEhpbWFzZWtoYXIgUmVk
ZHkgPGhpbWFzZWtoYXJ4LnJlZGR5LnB1Y2hhQGludGVsLmNvbT4gKEEgQ29udGluZ2VudCB3b3Jr
ZXIgYXQgSW50ZWwpDQoNCg==
