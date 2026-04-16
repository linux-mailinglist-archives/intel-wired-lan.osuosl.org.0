Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IHLLjsb4WmmpAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 19:24:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2E5412A15
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 19:24:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98B6E80EB7;
	Thu, 16 Apr 2026 17:24:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WsLCIOFyVlUF; Thu, 16 Apr 2026 17:24:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1679680EB3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776360249;
	bh=l/Huha/kY4ZcUfuWCDku5ucqIyCGKGk6U0uKJL0DR7o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=og2vEPsMrYY4+TvLt+pz0kNvoDeZRUIpfxFRvFjidHuEzuXh38P+b7lh2qx1z/YFo
	 s4I2ZkJfDmzn8E76ORCcEJ8FFGhDWa9Ht2rzQFx3/GpKJmoVukVnFSQXTf/NVDqQ2F
	 4lDPwBxZYCwRiZe9Gwyt6E9pkGKoNjoQORk/nkqFgAggaDfLv9L5b+kmzLpWkXX6u4
	 VBBbGGT3AnxGCtVQHPcZK+y5Y1qm4LF9SLz1TBEHjJegqRtiMQ02KCq6yRViMGpgHU
	 GhH+Um5mc3trWQsBQGnfmCGwDNMF63TJXwviOp6tuLKhKRFPtcVTZtw80t0+QcNA7q
	 /Td5XuzrR9nMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1679680EB3;
	Thu, 16 Apr 2026 17:24:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C0068259
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 17:24:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B25D7409D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 17:24:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BWVmicjyc2un for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 17:24:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BB6A1409CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB6A1409CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB6A1409CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 17:24:06 +0000 (UTC)
X-CSE-ConnectionGUID: /AfluT4ARm+nLx/Oer6hnw==
X-CSE-MsgGUID: +Iwl3qPkTQuan4U/kfYd6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77486186"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77486186"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:24:06 -0700
X-CSE-ConnectionGUID: UToqG3iRStOHMt/D9v6XUQ==
X-CSE-MsgGUID: 1pvawah6Q++GTPBT6qdCdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="235169439"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:24:07 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 10:24:05 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 10:24:05 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.19) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 10:24:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z6NYHD0FlyjG7B49dPY6fbK8a6oYcp/BrlYAr/EJdHyDup9YJG0AtAa1qKJbw9VMYaspb0LjYCXagSv9zEginp8DZ/999A12LEyGKxksMnczuilf8Gao8WX4i+8/EN0PQosg+3OFj9LO5pi3Ib3qTjlIZw6nhchw5WQx9i7FzA6EU0wYfVMlUs+5O9Hhq5ecE2oD9Fz9eqJuEWAsdxrYL1AJ1mm+/yj8KN8TQKlOck1aryeW/iPUtLCe377pFMeHRWWYj4VNZWy6rWVwe1F+6+Aa8TuO+0BMKUJwFzw3lU8xFORW8xhEg8J6mqCUfRBe4Lnczh6uYfWM3tXaW90wpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l/Huha/kY4ZcUfuWCDku5ucqIyCGKGk6U0uKJL0DR7o=;
 b=ai5ggq7Q+fbvXfhLhdc7qYDJhORKE1WWsO6R6RfFVr0OuZQwt66gY+4/QV3xjoVkWcOKe5fLnvMHUVgXG+VNTVSjkKyafRZpfjZxqnx8W0NNYywaRDRxFNhwcVKFQy1BWrYrcYTTy9drGj+PiHJrp8xELhV6tS4+Bq+Az73texeaZu6ucLRDAorsBBoLo6bar1wLPgoZJjOLqu2KS0kYFweey9aDUO9fU+fuC9ZzAWAunQYCuxPIQp28/smUUNGXu9q+kFDCx+Bibnq8AVuRzlPlnyJPsMPSucpORr2G/uXyklJ4bSI+9fQrhF9PWNK4lQKPhheaArQhGlNy0OmCCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8)
 by DS4PPF240F42FB7.namprd11.prod.outlook.com (2603:10b6:f:fc02::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Thu, 16 Apr
 2026 17:24:02 +0000
Received: from PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3]) by PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3%6]) with mapi id 15.20.9769.046; Thu, 16 Apr 2026
 17:24:02 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Miskell, Timothy" <timothy.miskell@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 4/4] ice: fix
 ice_ptp_read_tx_hwtstamp_status_eth56g
Thread-Index: AQHcx4gzcpjlKyY080WniJS8Dh5LI7Xh++Pw
Date: Thu, 16 Apr 2026 17:24:02 +0000
Message-ID: <PH0PR11MB752234B07424CB2B3FD4A9DEA0232@PH0PR11MB7522.namprd11.prod.outlook.com>
References: <20260408-jk-even-more-e825c-fixes-v1-0-b959da91a81f@intel.com>
 <20260408-jk-even-more-e825c-fixes-v1-4-b959da91a81f@intel.com>
In-Reply-To: <20260408-jk-even-more-e825c-fixes-v1-4-b959da91a81f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB7522:EE_|DS4PPF240F42FB7:EE_
x-ms-office365-filtering-correlation-id: d129a114-5126-4d57-67a7-08de9bdcf3fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|38070700021|18002099003|22082099003;
x-microsoft-antispam-message-info: GTeQ6c90cUxrVcBH33/zFZSV0JkDwhPMIIXxRpCyJvhlPP6BLQy5euxpmBZuZfXE8R4NoJVGS6GlQNlhuraHhxEYMe2eWKLHJsJvwWU+LJQi5oj9Cu8FbFbYvjwLZB8YdFveXg+lF8LsbRvtGQkNXtdD3jym57YIYYahcXEud/BTPvsBV+2G0a7u5WJ8HwWkFadxAqNdqWTFAYFulgD+ozQsiSgkWegw3UCx0F7ROMiIhTlyZUB4a+D+4aMpI2xrNbvu3fwbrR5I8IFVJNCHtHYwtp4qbJqgTmv8e4Y/v2xC86Zyq1KKV70W0YXf6KRcqm7mDW1ghlWbaaltWx/RSbsGFtz1Gtn6i935/mZ7dRd+jhjCDWuAfkjmGMmtTuJ466Phw/PbG8vHDK6CWKv2TMdiqnJlagnFtj6CEIGm2KioAf8wukCySzWrnIrnsSnk4yjnoTiQlmKeDxtgBskZOIU6g4ioPXi9Vx+dOQatVIQhigHLIkQ390VCqaFLaxrFCMqXLtMPGFV8I1bawFHwXxozwfmZctojIYeOhdmcz6HuCkXoupJkO498GD6qW2yOWHnIJXG5pPn+9RwOVSqS3hxBIHmfCCJyVlPGd0x/Sd7OZcU1vOG2E/uHifgVVZjKyaPoHLCdhwzmenDpNrFlAs+KcuH9MgkSYBzuTPiBwz5UAnqr0s4/lKczVBFHW93a78c9iH6NeooYAdlZ1YGZjXiZQA86dUuzznrUJEr4HYc3mZa7VPC5xJbHoG+Z+Xxv6mh63gcr93ei88acOaOritx0FYTbT2Sn2/cnz5UQXnk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(38070700021)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UHFaOURpS0hrTVNXQ1BQd091UVFLYnQ2Z2tJZUhCeFJ3RVBLMUhhZnBoTnZL?=
 =?utf-8?B?NUNVOWVjd1BnOXB0aGU2aDVRWjJjQ3pzajFSbEdMeXVDMHFQekdxK0xzMjVm?=
 =?utf-8?B?WGt3LzN1YUw0YW50NjFOWkpvUm5OeWJiMXF3b3IzelJKNE4yT3BaNERWQkVm?=
 =?utf-8?B?Rk5QZWkzc2tlWjJ5aSt3VitubjBSRWtGTmw1UjVFSU9jVzNZMEZna1J3YjlW?=
 =?utf-8?B?Q3ArcUw0N3dBZ0J0bVoxbkFIT2tyck1WSjdJSlJmQXFIczVJUTI1YXFqd0cz?=
 =?utf-8?B?ZkJLYlRVdjhUazFEdmtabndkQWJXYTlDVVBJM2xDbW9NM1RZRDhOYU1tL2ll?=
 =?utf-8?B?cHowS3RnV1h0aHNDZXRHUDhZUENXRjFoalBCQW1FQmxoWlFGamhFaWtscWRV?=
 =?utf-8?B?RHZLcE1pLyt1dSszSnA1SXRXSTZIRi9WWlVVbjdWSSt3clA0WVNPZ3NEYjRr?=
 =?utf-8?B?QUNXL0YzTjNwR0Z3clRJaHJZRmJKTGRYazZya0xvSWd5Q0xVSmtnUWFJSE8y?=
 =?utf-8?B?ZU0vdC9HWUhhZUt2emxVeGkwcGQrTG16cHl4M3h3eGx6bEVVNTAzajREU3h4?=
 =?utf-8?B?aFJQZnpqRzZYMnhUN2IrcHJVb3E2NGI5c1ZQREVrRE9uZzlRbEVwK05OYkp6?=
 =?utf-8?B?ZnV0WG5qZ0FWdHZLbHRqOXBDWDgyUll1aVMwSEpYT0NoSDdETG1hWHpsbjlo?=
 =?utf-8?B?dmFhaVhlTEZMSk5hUXd5VjRJVkF3R3Y5ckdxSzVYRVNEVXF2cCszRkU0alhW?=
 =?utf-8?B?SElva01PZTZuYXUxc3pLODRBT2d1d2lUOW1GcElnQ0srYytRWlNYNExBZzV1?=
 =?utf-8?B?QzJHZElaVlRqYzdXTk12MS9QbXI1VXYxR0RMcG5jeVJwdnVuc3ZIRFdzZkRj?=
 =?utf-8?B?cHVFcm0rVTNwUDMvRG5iWU5qQkUyUEFxclpkbFAyWDl2Yi9lSzB0Y2RKRzRC?=
 =?utf-8?B?QWVVODB3Y0F5QkdSRXJFUnlQY0VZLzlGcXNXNmZzdzhKQTBQNlhiN29jR2ht?=
 =?utf-8?B?WVhYWEZ1OEhRT3FRU2xGc1p4eEJqd2huZERBMDBOMUd2dnQ2cVBPNVg5Zm5C?=
 =?utf-8?B?OWlCMUlNMUVyN1RMdHk1RDZ1L0R0WVRacHZyTUFxeC9mTDhOOTlwaTlFeUpL?=
 =?utf-8?B?YlRwbVFDaXZiNDYzY2pqaG5mNkdFV28wNEQwMTVrWEJLdXN4MTBwWGF5L2xT?=
 =?utf-8?B?RDNld25RNXJMVytWSnA4RkRHVlFick1USHpUNERyK0o3NSswN0RnWkFOYzZa?=
 =?utf-8?B?c3ExbWx1YkxRaGJmYisvRGR5UkZkbkVEWDFNY2hNSWVQZnpUQ1QxNFk3eXdY?=
 =?utf-8?B?WjhBNVUvSGtFcTRUN0dsQ251ci9CRHNJM3c5RU1SaVlMdEVtK3dUMStlY01F?=
 =?utf-8?B?cmVpKzNGZWgvNXN3U1IrR0NKeVZybEF2U0swNWpDYmt5aW4zNFBxTU5YWWhI?=
 =?utf-8?B?a0JHNmxCakxIVTkyL29Xay9MSTdnMzBENk9SQm9wWSs3Q2QxSnlpbEp2SlNW?=
 =?utf-8?B?amNqRTkrMUU3M0t1bENhY2xUditEUjMvaHUreE40ZjU5OXJBbm9pdTRTWmJi?=
 =?utf-8?B?UDZ2L2ZXZ2ZsTVZHVjJwTzRUVHpyczNqYkNIRlY1VWp5QUtqbVpReXVLVUZP?=
 =?utf-8?B?SDFkL3JMU0xNbGpsVFZCdjd1VEhCZ3FOaVN6UXNSK3p6cDY2TzlIcDRNd3lB?=
 =?utf-8?B?YWwyYm1pdXAwc3p6U1dFNlNqN0JuZVZsUFFzNHNSVDlJU0F6WmloTHpkS1Rw?=
 =?utf-8?B?WUNkdDkyMUJoQVdORXN0anJMdjhMditBYzhweDRBUXdBdmZoRm5TNU5JeG82?=
 =?utf-8?B?R3M2Nk1yejRCZDU0cEREUkF0RGp3OFk5S21jck9OV3FyNWY1MVAveDNQei9v?=
 =?utf-8?B?em1LUGMxcWttaWM3SmZUbEx1L092elhFNlFUSXE2ajR0RHFlWm1PUG91Vmpk?=
 =?utf-8?B?SXl3OHdOQ05aMXRxckVhdmNmVm9nZkNpTC9IbnVXUlZDak5sR1VCejJLYUpD?=
 =?utf-8?B?VlBrYnNZeGo5MVRVUndOdktvSE85VmJTU3VBcEhRRVJIZDFDai9hZzMvaTl0?=
 =?utf-8?B?UHVDZm0yOC9UNW9XRENDZlF4STFmb0NlbW84dUdPeDErR0J6UC9LdGlKamxz?=
 =?utf-8?B?VnN2ektJNjVHYTIxSUdHR3VDYmZBSDNheHJFSGp1dzFrb1NLM1ZHVzQ5TTBJ?=
 =?utf-8?B?VW4razNoaUcvZTRkQVVzL2NDcHJRZ3d5UFhsWVVRWWI4VENCQ1VDOG1QSSt4?=
 =?utf-8?B?a0F2cE9QbnJtbkErK1hpV0RBT1ZMUXJpbnhhQXVKUllZSVduUXhuWmIxcGVK?=
 =?utf-8?B?aUZldGI5YnJvbVh0QnRYM1lYaFhhckhuc2NCeFlsWFB2eVkvNlpmZ1UzOGdE?=
 =?utf-8?Q?qEAs4jzlSxVRdx08=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: GTwmsCK/uRDMgVTdPA8M7LTWc2HZFJJcKu80EAxz1tnqbm+0eh80qBH/w5hLgauhi+0MacP1ozlH2y2Mlwg+B+CN1e0yw34pCAO4se84JJm5pqtBUWKEw9FxdZpFTTbXDFUiopBc3RlT/+syBvJoCCuLufo93CyRMZevjlJm4Ek/qs2PKT5Lsn7jZ2hl2HhCCPd69NnrLf5HYtgFx1FwmavyDD3NGiTaTtE6/lWznLfFv+1ZVGAj/uHaPe6gT4tKOQStaOv91synjMiSZjsiNAzkvs/EE8ezm6kmoSI8D+TEmwdSG0ZyCPve1qQXOyT6MP4eS43YJNNRWzsQLHVAxA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d129a114-5126-4d57-67a7-08de9bdcf3fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2026 17:24:02.1547 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 17Fu0GIiBHgNQcUbYvFiAoJgD48zPSc1zXdGfb9rvcEQn5DQDjnWGvfKI5DUutSTMoweLJmdXqB9iS9jVrB0PxK3zaPeMZ2nYkZfsaftTkE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF240F42FB7
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776360246; x=1807896246;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l/Huha/kY4ZcUfuWCDku5ucqIyCGKGk6U0uKJL0DR7o=;
 b=EJbsJqFf0sGa4VmOsTHfUhfHh/lqGzl1l95HA+TajkGehlhk+s+BwxKx
 uKyDw19DwLXzJy8A12Dr/WtGHCkS8xC+hNkQZHBm0gsepxEuWb2G5GbmO
 wevJzT0iPAQgxHdDyLeQZv3Wsx1E0T4p78KzvvRZuvj8659zkpcFnNmVm
 7Ifs3Zu7a8cUROzclDdeAdjAuU4IgJILDifS+FN9WXSemfpxmBT9Hx0OC
 dlOSLIx6MJkvglfOWx6wsnzuZqgI4JX+rv6c+xdYlLZkC5Daj8WVE9W/2
 NOS9UvYo7OxRf0SDSxza2x6s5MbBa7xXMuDQn5gXOby5ZnLPe0BpgcVcv
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EJbsJqFf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 4/4] ice: fix
 ice_ptp_read_tx_hwtstamp_status_eth56g
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:timothy.miskell@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
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
	FROM_NEQ_ENVFROM(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[PH0PR11MB7522.namprd11.prod.outlook.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 5F2E5412A15
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGludGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5v
cmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxsZXINCj4gU2VudDogV2VkbmVzZGF5LCBBcHJpbCA4
LCAyMDI2IDExOjQ3IEFNDQo+IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXll
bkBpbnRlbC5jb20+OyBJbnRlbCBXaXJlZCBMQU4gPGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vv
c2wub3JnPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBDYzogTG9rdGlvbm92LCBBbGVrc2Fu
ZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgS2VsbGVyLCBKYWNvYiBFIDxqYWNv
Yi5lLmtlbGxlckBpbnRlbC5jb20+OyBNaXNrZWxsLCBUaW1vdGh5IDx0aW1vdGh5Lm1pc2tlbGxA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldCA0
LzRdIGljZTogZml4IGljZV9wdHBfcmVhZF90eF9od3RzdGFtcF9zdGF0dXNfZXRoNTZnDQo+DQo+
IFRoZSBpY2VfcHRwX3JlYWRfdHhfaHd0c3RhbXBfc3RhdHVzX2V0aDU2ZyBmdW5jdGlvbiBjYWxs
cw0KPiBpY2VfcmVhZF9waHlfZXRoNTZnIHdpdGggYSBQSFkgaW5kZXguIEhvd2V2ZXIgdGhlIGZ1
bmN0aW9uIGFjdHVhbGx5IGV4cGVjdHMNCj4gYSBwb3J0IGluZGV4LiBUaGlzIGNhdXNlcyB0aGUg
ZnVuY3Rpb24gdG8gcmVhZCB0aGUgd3JvbmcgUEhZX1BUUF9JTlRfU1RBVFVTDQo+IHJlZ2lzdGVy
cywgYW5kIGVmZmVjdGl2ZWx5IG1ha2VzIHRoZSBzdGF0dXMgd3JvbmcgZm9yIHRoZSBzZWNvbmQg
c2V0IG9mDQo+IHBvcnRzIGZyb20gNCB0byA3Lg0KPg0KPiBUaGUgaWNlX3JlYWRfcGh5X2V0aDU2
ZyBmdW5jdGlvbiB1c2VzIHRoZSBwcm92aWRlZCBwb3J0IGluZGV4IHRvIGRldGVybWluZQ0KPiB3
aGljaCBQSFkgZGV2aWNlIHRvIHJlYWQuIFdlIGNvdWxkIHJlZmFjdG9yIHRoZSBlbnRpcmUgY2hh
aW4gdG8gdGFrZSBhIFBIWQ0KPiBpbmRleCwgYnV0IHRoaXMgd291bGQgaW1wYWN0IG1hbnkgY29k
ZSBzaXRlcy4gSW5zdGVhZCwgbXVsdGlwbHkgdGhlIFBIWQ0KPiBpbmRleCBieSB0aGUgbnVtYmVy
IG9mIHBvcnRzLCBzbyB0aGF0IHdlIHJlYWQgZnJvbSB0aGUgZmlyc3QgcG9ydCBvZiBlYWNoDQo+
IFBIWS4NCj4NCj4gRml4ZXM6IDdjYWI0NGYxYzM1ZiAoImljZTogSW50cm9kdWNlIEVUSDU2RyBQ
SFkgbW9kZWwgZm9yIEU4MjVDIHByb2R1Y3RzIikNCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2Vs
bGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFJldmlld2VkLWJ5OiBBbGVrc2FuZHIg
TG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jIHwgMTAgKysrKysrKystLQ0K
PiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KVGVz
dGVkLWJ5OiBTdW5pdGhhIE1la2FsYSA8c3VuaXRoYXguZC5tZWthbGFAaW50ZWwuY29tPiAoQSBD
b250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg==
