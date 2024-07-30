Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63772941488
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 16:37:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B75260A38;
	Tue, 30 Jul 2024 14:37:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mjfk-MlXo7_N; Tue, 30 Jul 2024 14:37:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 114A6608FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722350248;
	bh=vcSNKzTRSj+dApTggb1f0XYAWEZh5WcyYisU5x0BMu8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KeElPW+tt7lPDP9iEgGG9w0rah4tlxL8GHc6oX8LsaYl4EFyRkw10TNrLBnSnNX+X
	 ToTn77gTgtMmL6s+n7/gGaQIKwoHfnvwNxtvfIK98Ul8bkGp0p/r0BDBiV3EiDq6j1
	 WsODkdGdgwIkz0sWue7W36qsNtgqurvU5MA7uZUHWn34cFeP58YthtxmLZhFxym37i
	 KlDGzJB6M+pCFAjVL+4qojz7jCp3oz03QrYXRnObsS+VrOxnaUxTFXa1VmO5+ovKCI
	 HVrTq1K3a/G7yFkUiQmj4IvZFpTVirub3f4kSzt8HEyXcki8BoV7s7NlTYU87zyQ1Q
	 shc5LMPokMG0A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 114A6608FD;
	Tue, 30 Jul 2024 14:37:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C14AF1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 14:37:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B8CAC8100C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 14:37:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HiTvpX088Bzi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 14:37:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A80B981008
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A80B981008
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A80B981008
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 14:37:25 +0000 (UTC)
X-CSE-ConnectionGUID: bgQ4Xrk7Scm/61LB+wO07Q==
X-CSE-MsgGUID: +wXV595hRni7T1fFz96iwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="19973894"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="19973894"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 07:37:18 -0700
X-CSE-ConnectionGUID: WD1fxMdeSdiCvbRntaB08Q==
X-CSE-MsgGUID: qMVw55NhRG+8Q5vtg2rLhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="77598360"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 07:37:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 07:37:19 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 07:37:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 07:37:17 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 07:37:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fKTWlEUcy7c9pXm5Mn5igoltoKxe2Mkdz8I1unPVuOqKXIn5CLpfOhLc4JmMACVwz2GVqawajXNOtIWANzJH7QBGYKtNutQHzcDaR3W5xqikiHp2eHLKPoVmJQTxZABARAeUWHW/y742WlTTyyZv7n2QhRFglGaAIj+dWkLtz2wQLsg6sRZfYo7eyZ88psaULljKHIYbccB1Wf34QMx5pHml8S/+oDsKnNwkb1nu9EN9w9jLEaPsRtxuRn4GipWSuwFC4ohZoKW72panck8A2KDHfhWBxxnIvcOS7rfiI1yRKbeVMoEjGvdAIsfaD1yCkMxuU9pJIg0cbZa83o/u1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vcSNKzTRSj+dApTggb1f0XYAWEZh5WcyYisU5x0BMu8=;
 b=augI4vBZ4on4DXPC8iIqJnqRHGFlNu/E37jQHQKmXENEk22Be673XgRIbpljn1FHchQ5x16nYnbTiiSS9/XcYlguhRhv5nBLKebq8P+8X+Pdq8jS4SeGuoZuYabSvqQjOTK/7hrDZoYrTa/VUfpppIZ0W9s6G0hyN+n3oPhceiEeXhPr2hUrmhS3xru/2kpQhgPBgRJg3kcjnaoj09pVIAAFLqRaEctW4a0y8bSHeKr1rHADjlUc1QMyQz9sFfJ5F9igbHXM+844hM2TOd/M5wgm7M/rAG3PKiZbumb+Z5zvjeY6ZMFr8bGUfYIaOxiydXwqBPTLsUKdVXh2LgyXgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DM4PR11MB6043.namprd11.prod.outlook.com (2603:10b6:8:62::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7807.28; Tue, 30 Jul 2024 14:37:09 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 14:37:09 +0000
Message-ID: <12194f7c-e9b6-472d-979e-5a19e6dbc05f@intel.com>
Date: Tue, 30 Jul 2024 16:37:04 +0200
User-Agent: Mozilla Thunderbird
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
 <20240730091509.18846-11-mateusz.polchlopek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240730091509.18846-11-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0209.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:6a::26) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DM4PR11MB6043:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e394d39-edac-44dc-6b8c-08dcb0a517e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Um9Pa3FJTWlFdXViTG5PZU5hREdSb3lnRVdPSWZmaXdpdnZrTTRudHF0ZmdZ?=
 =?utf-8?B?TWNUZWY1aFowdHNLWXZSb2N6MndGUUVTNXhHM0ljb1gwSk03WFM0V3hxVzJS?=
 =?utf-8?B?eGowYUFZSk0reEMvd2d3eUlmNXBYV0E1RWpXTENjT0xzMnJHK2U4VkNIWVlW?=
 =?utf-8?B?SXhHWmxUOGlGRDl1T2VKMW5JVTMrMWp4TFdvU3loNE1XbjRXYm9HRllQRnZi?=
 =?utf-8?B?SGozZHBhZUlWdXhaa2MrbDloY1BTUlJVZTQ0aUVOUW4xWGYzek1HdXQvMlB1?=
 =?utf-8?B?OWtkbzRDVnBWc3lpMkhVcEZxakxod3MyVGc3eWNnZWJnV3hoMGZtVlpTSEJh?=
 =?utf-8?B?K056dDhtMklaNW9nQlZKZWxpdWtnTHFtYXpJTlRmSHdOdVNJUVFxQnArVGI3?=
 =?utf-8?B?ZG5lVGd6YmhTN08vajZJZEhLRVBGUUttakNaaEJkcWx6ZmlnVVZ3Yy84MFA3?=
 =?utf-8?B?U0VWVFFraXloczFzZ0M3SThpbldPckZjMmJrNCs5cDJKcDkybmVmaGVKOFdk?=
 =?utf-8?B?NkJVWUdpMHpXNmJUME9QZHdIMnUvdkIvSmhlTWVmMFhvbmd1MWZQcnpDTkI5?=
 =?utf-8?B?UFVwdHZYekRaTWFQYUkzKzdhbVMrcUpFYkVPMCswM3pOazB5dlQyUnE5MXg0?=
 =?utf-8?B?SUowODE5eGZDcnU0bm90M2xOSDBWYXhnb2thS1hDVkNHYitZK2NhQ1JyVFl2?=
 =?utf-8?B?WmdkbDJmV0hWU20vNm1sQVFpaEJxVlc2U2k2aEMxMlNFZTczV2UvZS8xVXkx?=
 =?utf-8?B?NHo4aE9GZE1Dak1Zb1RWcjk4b1JQZ3UvK2lHek1GVjRlRCtzZjRuRTBNUkti?=
 =?utf-8?B?Z0lFV01sUXNkTzdJSjU5N0JjUnhsUTdXWndIczNuU1o0dTRicFBNc253Y0dY?=
 =?utf-8?B?VEZJL2k4bDd0dXQrTG83UlU3ODFZcnRwTEgxY1FDUCtHNlJJeDdhNElzTEha?=
 =?utf-8?B?Rmp1eDduMHlKNTYzSFR3dDQ2UHVkV01PcmVpaWJaM0Z3N2FSSXNBanhrSEti?=
 =?utf-8?B?Y3JLQXdOM1l0a1pMU1padncxaERySndsWUVXQkNIeGUxQ25PL3Q2ZzRPcklJ?=
 =?utf-8?B?eHRBZnhRWTZWeEo4TGpDQXBTTFR3ZmorRWJTOTJTNmpFbE02ZkhjUS9mOUNM?=
 =?utf-8?B?RHJrMVlyUGlrQ2FqeERiaFZvRFRmS0pJc0IvQ0NBMUhNL0hxMWJ4VkdIcW1Y?=
 =?utf-8?B?TWsrNmduZXJGYWkzb01Dcmo2eUZEOU02d25jZmorSTBlNHRwVm9CSUtmM1d0?=
 =?utf-8?B?WE1uZHFhTDdLZzFqR1owSFozaVR5NkluZXFNVnowR2RwWDkvSHZ4Nm5rN2tG?=
 =?utf-8?B?STV4dzVLWmZzSnYxaUZIMDRYemFPdXFEbm5WZTF1Wkx3a3V2c0plNUZTekF6?=
 =?utf-8?B?TlpFSkJLVytPZThGTVgvbERqVEQ4OFVYd0pVeWVrandmSVphaFM4VC9XVEFZ?=
 =?utf-8?B?TDVubDNrc1ljMnF3eDQwekt5REl3TkRTbDZnS1ozK1ZQSFJNcUJ6Vm14RnF2?=
 =?utf-8?B?aDFTTk8rNC8xZVdCcWc3VmwyRmlvUWo5b3ZtK3FJWW9jYzROdS90QmFYamQ3?=
 =?utf-8?B?K3FaRFoyejV3NHRrUFNsWnc5WGhxQnp1cmowMVZhK0dPbU8rNUF3ekdNRFRL?=
 =?utf-8?B?OXRBMnRiTDU3SHRPd3NKY1lUSXI2Q3RBMDFkVitEa3FPWEZHWHhYamhVYVN5?=
 =?utf-8?B?U3laYjNQZXFQNzdDaGVscnE5SkJENVV3eTFqTnZaYi9ic21aV2lpZDdMMm5i?=
 =?utf-8?B?MGV4VVJKendxaTlROThaYndvT3UyRmUxbWhleTFlVFEybXZrckZaRTRSZmx5?=
 =?utf-8?B?VGFBNU9zUWNWUkRtRTV6UT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OGdPeTBBUmNIUzVMVEphcDRRekRWeFNZMjNjS202UlR5OVhRLzByNW11U1Ry?=
 =?utf-8?B?dFVBelZPSGc1RUhSK21aajFub2VhK2xLNHVDZkZ1WDZubXIwWnZlQU11Mmox?=
 =?utf-8?B?d0ExMEhRL2RERE1pK1M5b1lmYXhQQnpEeGZwNGJHUW55RjZzNFVoSnNWL3JV?=
 =?utf-8?B?bHJwRWlIdUNwQnZ1MXFCckFub04wUzhPd29vZ1BzemM1cGs5NUN6YitVZC9E?=
 =?utf-8?B?ZS80ZUV3NFZEeTF4bm9KNWlWd0NzckVjWHFVblVMVzBDZ0VHMFhmQXlRamk3?=
 =?utf-8?B?Q2ZKTHBscUc2Ni90eUozemQ5UzQ0b1QvbERBTmpXUDNPZmxaeVR5SStpbUQ5?=
 =?utf-8?B?TFVtZllSMDR3VU1RUE52RGtkNmlpbzRoZ2haNStWTUROV2E3YWxHaFpsamtX?=
 =?utf-8?B?TGVvZ0Yzb2cxeDNGRmh4cklObnpFQjU0aTNrRFRZN2w3bG5uSW81ekRTdFBO?=
 =?utf-8?B?Vmovcy8xTGl6elU0QlNiWkNuWWNUNkdCNlB3M2EyZUtKNitGZ293VE5OWFJH?=
 =?utf-8?B?SWE5SDJMSGlkOFNxS2VMQTlHUlg1Uzg4QVpocWh0NGU1T1A4RVI5M2pmY3Jl?=
 =?utf-8?B?Syt0R05mYksyK1czaG9haCtaYVZldTc2eGVKMXlKajZUTUFldWxDK0FmblZZ?=
 =?utf-8?B?RFFZL21neEZ5R2xPUlBmOTJrN0huaXNZRU1GQzBkM1RJSHJYbWJLT0NVNnlW?=
 =?utf-8?B?SXJ0dzlJaU1CN05NV1hlWG5lUUl4bmtPMGdMK0lwTW9hdzQzUlNCT0VWY0dR?=
 =?utf-8?B?TzlBVGsvNDlGNDFXc0xhZGxkdUhKZEJhZlRNRUVIaUF1WEJMaktYTjBmeDJn?=
 =?utf-8?B?N2pEZXRYZVRwbUJ6VVBwZUh3MDZtSjBtb2V0ZThVakM4MlpsampGOUl1WEpz?=
 =?utf-8?B?c1Q4VE9Ub2kxaFpRL0pIc3dXQXpJdHRXNm1idWxHcEg2d3dnMi9Ca3A3NWZj?=
 =?utf-8?B?VnpGc2lBMTNqSk9QaThqREtKZGt0N3hBWVk3ZUhKYTZ4VGpJS3NWUVRuRGVq?=
 =?utf-8?B?S0p0L2xRdkU3NnR5aG9WOE83Rm9VRHlJYWpWSytlQlJYOEx1SmVWSmdkN0RJ?=
 =?utf-8?B?ZjZPV1hjOVZoSmw4QldmUDl5L3BHdllKWjEzUWFJckhmaE9uMnBkczB5cEly?=
 =?utf-8?B?MDN6NUQrYk4zZkNVbXhMZmVCREJZRFlRKzlaYmQwbG55K29jWW5nN01sZGJQ?=
 =?utf-8?B?dmx2ZlBHSlJxWTJmNnhoSENDOFVsSWdNamVuM3NBQjFUTEVoejdxUHBFejVV?=
 =?utf-8?B?YndTYnBmbGtYWnVCSnNacnBMOEluWkZZNm5KcldiOFBYMU5uaG9WRUdlUHZv?=
 =?utf-8?B?WWl4Vkl1anJDTElpY2dKTitpbEJUNC9LVDR2MDEwZXR3YmF0NGE5VDF1MTNR?=
 =?utf-8?B?M3c4aFhoaVp3RkJLQjl4R2o5ZzFOaGg3b2FuVGIyRnp1N2wzOURFV1dCcklO?=
 =?utf-8?B?L2llRTBpaWQzY0VuSXZQVndoSFFqWXNlS2s4RGZudUlPM0g4TzhXVWtieDlp?=
 =?utf-8?B?ZU43NHEvYkU3eVRFZ290cFdudzZ0K2wwYlhndGxLMTBOU1VnRFNJbllmdG1S?=
 =?utf-8?B?a3hqT2Y3M1BQNDdneDJoeUNOekE0dzdUY0FDa0JrcVVHWVBUVTVHaUZvNjhQ?=
 =?utf-8?B?eHJGR1VoK09DbndRWGMrNXJNa1Q4QjFuRW10Qzg3WUExQTVmUHNhWFZCY3Fh?=
 =?utf-8?B?RVU5K1ltbEhwWDR6TElBa1UzQVFpQ2plTXFXWGhFQmlhSWwxU3VLbUd2N0N2?=
 =?utf-8?B?K3NHbTdpY0FZVk50bFc1SEkyOEphRkYzcEFHS0VyWlVlaStWckpib3pHK3pk?=
 =?utf-8?B?a1k3dGM2VjFveDFURllHbndrblBjL2xNL1hnN0FaWWNMbWQ0NFI2U0tKNzQz?=
 =?utf-8?B?bVRTV2oyMjdxS3YwN0I0OW1HUjRxcDF1Wk84UFM4aWJKbnFRb0lYR29PazVv?=
 =?utf-8?B?cXpXNlZ6bnBWTjUrYTAyOTFQaG9RbjlyZGNtNzFFUDd5cjdoaFRTdENuZXJL?=
 =?utf-8?B?YkltSWJyQWV5OTBOUGhyK2E0emUxRjRUYkpHK3pMZVlLMWNFZkFDOTZHNnJU?=
 =?utf-8?B?ZmxzNTRoOEgrTzZ6YnphYXBOZXY2Y0Yxc1EyOUhSbit2MGp0bjdQYitSV25y?=
 =?utf-8?B?RW5RK09Qd2VWcnRIMUp6aFZPS01xQlpuOWlkTlpCcms3VWlpamk3MFpSTi9Q?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e394d39-edac-44dc-6b8c-08dcb0a517e3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 14:37:09.7471 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QTbxJd4Ac6PxBvZefJVtqyVeKmom6NQgI2MLzyhQXuZxxv0jcvjBcUFpP+Ndh1HG68zSsp/4uw5MN/AI6ENU4KY3Pu+Y0lLq0LDG0dD/9M4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6043
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722350244; x=1753886244;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zsXTTADos8nsxIoDor8GAF5K1LUDgDXDcZ0FRUHlz18=;
 b=aK1APCrOCQhLEdZQDQ/m/avtw7TmcJaZ4csoo+kPdbv8SvSRrSPQEUUj
 MBR5BY2vdsb3USuHXtM9UosDhoNIf+ZDAzXWjGRDznGkr1wXf0DdjIW8r
 1GAHYmhP1W8MJ2MALR/LnGIS0L+UKi+AusUssLvRqz5zjhbUvdmKDstkp
 6jTS8Lhs8SdoS6h307fZiZXn/kF3G7FSoBFQ9fEe1j5dJ1gEwOTh080Gr
 2XTS6qIY/r2zU+J4FQBd5KoqQzVeQPpamMlyMhVqnuP8HlMo61itQuhFR
 Vibax43yyufIOlhxF7hDly7pNJabA/pAaZDjMYlJ9BeZfkDjc+1IPIekg
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aK1APCrO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 10/14] iavf: flatten union
 iavf_32byte_rx_desc
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Tue, 30 Jul 2024 05:15:05 -0400

> [PATCH iwl-next v8 10/14] iavf: flatten union iavf_32byte_rx_desc

I feel like the description is not precise. You change the descriptor
representation from single small fields to quad-words, so it should be
something like

iavf: define Rx descriptors as qwords

> The union iavf_32byte_rx_desc consists of two unnamed structs defined
> inside. One of them represents legacy 32 byte descriptor and second the
> 16 byte descriptor (extended to 32 byte). Each of them consists of
> bunch of unions, structs and __le fields that represent specific fields
> in descriptor.
> 
> This commit changes the representation of iavf_32byte_rx_desc union
> to store four __le64 fields (qw0, qw1, qw2, qw3) that represent
> quad-words. Those quad-words will be then accessed by calling
> leXY_get_bits macros in upcoming commits.
> 
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

OMG great job!

[...]

> @@ -1163,7 +1164,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  		 * which is always zero because packet split isn't used, if the
>  		 * hardware wrote DD then the length will be non-zero
>  		 */
> -		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
> +		qword = le64_to_cpu(rx_desc->qw1);
>  
>  		/* This memory barrier is needed to keep us from reading
>  		 * any other fields out of the rx_desc until we have
> @@ -1219,7 +1220,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  		/* probably a little skewed due to removing CRC */
>  		total_rx_bytes += skb->len;
>  
> -		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
> +		qword = le64_to_cpu(rx_desc->qw1);
>  		rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
>  
>  		/* populate checksum, VLAN, and protocol */
> @@ -1227,11 +1228,17 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  
>  		if (qword & BIT(IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT) &&
>  		    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
> -			vlan_tag = le16_to_cpu(rx_desc->wb.qword0.lo_dword.l2tag1);
> -		if (rx_desc->wb.qword2.ext_status &
> -		    cpu_to_le16(BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)) &&
> +			vlan_tag = le64_get_bits(rx_desc->qw0,
> +						 IAVF_RX_DESC_LEGACY_QW0_L2TAG1_M);
> +
> +		ext_status = le64_get_bits(rx_desc->qw2,
> +					   IAVF_RX_DESC_LEGACY_QW2_EXT_STATUS_M);
> +
> +		if (ext_status &
> +		    BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT) &&

A pair of parenthesis for `ext_status & SHIFT`.

BTW, shouldn't this BIT(L2TAG2P_SHIFT) be defined as L2TAG2P_M next to
this shift?

>  		    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
> -			vlan_tag = le16_to_cpu(rx_desc->wb.qword2.l2tag2_2);
> +			vlan_tag = le64_get_bits(rx_desc->qw2,
> +						 IAVF_RX_DESC_LEGACY_QW2_L2TAG2_2_M);

Additional optimization would be to read each qword only once. Here you
have at least 2-3 reads per each qword. On x86_64, this is fine anyway,
so I think this is out of this series' scope.
The main issue is addressed anyway -- the reads are now 64-bit wide.
Just make sure everything works as before -- checksums, hashes, VLAN
tags etc.

>  
>  		iavf_trace(clean_rx_irq_rx, rx_ring, rx_desc, skb);
>  		iavf_receive_skb(rx_ring, skb, vlan_tag);

[...]

> +struct iavf_rx_desc {

kdoc describing each qword?

For example, I've no idea what this 'ext_status' does mean. If you
described ::qw2 here, I'd probably understand it :>

> +	aligned_le64 qw0;
> +	aligned_le64 qw1;
> +	aligned_le64 qw2;
> +	aligned_le64 qw3;
> +} __aligned(4 * sizeof(__le64));;

Double ';;' at the end =\

>  
>  enum iavf_rx_desc_status_bits {
>  	/* Note: These are predefined bit offsets */
> @@ -574,4 +504,10 @@ struct iavf_eth_stats {
>  	u64 tx_discards;		/* tdpc */
>  	u64 tx_errors;			/* tepc */
>  };
> +
> +#define IAVF_RX_DESC_LEGACY_QW0_RSS_M		GENMASK_ULL(63, 32)
> +#define IAVF_RX_DESC_LEGACY_QW0_L2TAG1_M	GENMASK_ULL(33, 16)
> +#define IAVF_RX_DESC_LEGACY_QW2_L2TAG2_2_M	GENMASK_ULL(63, 48)
> +#define IAVF_RX_DESC_LEGACY_QW2_EXT_STATUS_M	GENMASK_ULL(11, 0)

I'd define them right after declaring the qwords they are in, like

struct iavf_rx_desc {
	aligned_le64 qw0;
#define IAVF_RX_DESC_LEGACY_RSS_M	GENMASK_ULL(63, 32)
	...

	aligned_le64 qw1;

	aligned_le64 qw2;
#define IAVF_RX_DESC_LEGACY_L2TAG2_2_M	GENMASK_ULL(11, 0)

And these '_QW*' in the middle of the definitions are probably not needed.

> +
>  #endif /* _IAVF_TYPE_H_ */

Thanks,
Olek
