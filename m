Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5177BC5425
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Oct 2025 15:48:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEF1440B65;
	Wed,  8 Oct 2025 13:48:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yh7AtWDx4Nzv; Wed,  8 Oct 2025 13:48:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 363F8402B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759931314;
	bh=WLda87sIGWJ3msxNh3aJKWvi0PvVSjkZoPyGxxwGOsg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KHcrYwyFybwVaMn2jLH40+Otd2jc0av9qdfwgYENRJaNGHEJxy/reaguejVeAxRyb
	 7Sp4/c2SGNeAq5R2aQa4kXIGD0W/Ag9iZuuoT6CI17A0tEk91dHS20sJItUcaZDuA+
	 F8rKyNkovErhOoenD3krqfVFyjVLd7drBPKKtbh9qbUUoQCzMgcJhcjN9yMpIO8VrY
	 3yEA+Dg42ZFnw1ZGsaRIdA9oXNhB0A71zClD19pSzh6L1dSlo/ipuIKDeCimT5PFdw
	 UYaiyL09PQU8fSUERW8IbYMGNXZ3NGmZ1XC0fvj0FqRkqNqOCuu/ty3z4MbFvHI2sW
	 rJ4fC7oy+eenQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 363F8402B7;
	Wed,  8 Oct 2025 13:48:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E55A119
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 13:48:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 64760812CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 13:48:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id byutZyi-os2u for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Oct 2025 13:48:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 62E7B80764
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62E7B80764
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 62E7B80764
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 13:48:31 +0000 (UTC)
X-CSE-ConnectionGUID: bIWE5TOeQ5ib+lmISsVZbw==
X-CSE-MsgGUID: 9pGNXRW/QOOUfdv3Q6jQ2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="72738370"
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="72738370"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 06:48:31 -0700
X-CSE-ConnectionGUID: tvdNylp7Qayjhtxpvxuvfg==
X-CSE-MsgGUID: KHEWEZEwQIaARusFLK3QXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="180273386"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 06:48:30 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 06:48:28 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 06:48:28 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.6) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 06:48:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N0c4McmBhpIFU1JzrJf3AGNj9bpe6aOkCvTqk39ob8kxTiYvE9/yzPC9GWJ08Dp4vaoEo+RVmG37IrREMvF9sdbCURBcYU/9P8IcWMwzvlC7FP6ryNtdVMY7XjUJQKFhqLeh0t5SDFtSgGltsnA61UVXEvN3gxTE7G550u92JsSHCxQp6x0tyczFNeXsoShNDTC8kOVcj6DvtY9w7I3JpjrRXw03bS8NpcA5oMprVZYnGeoI8h1j0agJPtyUyUWyOVcGgu4fImdiJqJODocpobCde5JrrUlPuN3G/fV84i55e2YEh9XS6ehC3o3xMvSQmaAxawQxg8V6Qq4WUIDMqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WLda87sIGWJ3msxNh3aJKWvi0PvVSjkZoPyGxxwGOsg=;
 b=Xeufo8CXzJqMctOakNZLFm7100jD3aBQbrfGMs86mTX2oe3RVGk+pPOHcGhu+eOlCClzSIWCgZfqIHD1Hns0Te1FPLAdT4U3NAUeUS6g++5+KtIy1gW8H6JEudlXE61zJ5IF9Wx3srCCTNYJwWAd3wx2hb0mZLq9bJv1rUswV/zJf0jA8TG3/RESXK5B4JnQq0B/gqwq9C/0GLVxEXRgA/oUMtgadnalQmET0vmUaPsf0EsG1M2eJS/tij1RJEX5V0Mk/lf42VTND3LrJUl+ce/s9CK0YHzzZyw1wRv8kxrVx3obgo/ky/9ja34P20kV7f3v3DkghAd5J0EqeKiCTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SN7PR11MB6945.namprd11.prod.outlook.com (2603:10b6:806:2a8::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Wed, 8 Oct
 2025 13:48:19 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9182.017; Wed, 8 Oct 2025
 13:48:19 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Brandeburg, Jesse"
 <jbrandeburg@cloudflare.com>, Jakub Kicinski <kuba@kernel.org>, "Hariprasad
 Kelam" <hkelam@marvell.com>, Simon Horman <horms@kernel.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>, Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "corbet@lwn.net"
 <corbet@lwn.net>, "Keller, Jacob E" <jacob.e.keller@intel.com>
CC: "Brandeburg, Jesse" <jbrandeburg@cloudflare.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 2/5] ice: implement ethtool
 standard stats
Thread-Index: AQHcJz6SOLkPtdiY5E6h0GYLsPkBCbS4Yd7g
Date: Wed, 8 Oct 2025 13:48:19 +0000
Message-ID: <IA1PR11MB624161F0B000EDA61EDE90698BE1A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
 <20250916-resend-jbrandeb-ice-standard-stats-v4-2-ec198614c738@intel.com>
In-Reply-To: <20250916-resend-jbrandeb-ice-standard-stats-v4-2-ec198614c738@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SN7PR11MB6945:EE_
x-ms-office365-filtering-correlation-id: e71576ba-e512-4b47-aea3-08de067156d9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?bzUvTGVZZ0pFbzVRTmdrdUlWYWZEYnZRdjBnQkZMUHEzNjdBUlJmY1FJUHdj?=
 =?utf-8?B?UldnQS9VUDBZWC9IYzd1dHJrcnVKSzVOSDluUmdrakRpKzR1OFJwSHpkYnl4?=
 =?utf-8?B?YXN1TytxLzRSdXBLU3NsaVkyK3JXZDBoM0ZUenlPT3RFZExVcXRTN1ZvVUMx?=
 =?utf-8?B?V0ttTFpIamZZb1ZueVZVT3JoK1pON29uMDVwZU8vcFI4Mm1lS2VMNEJXRk81?=
 =?utf-8?B?MHJhM2FhMDl4ckJlcndwZXRMbmhHanhIRkk5Z3gyUkNBWDQrZkRRNHlyZFI3?=
 =?utf-8?B?ZStyNmh3Tkgxb0dwQ0pacDlTaVNINktraDBmeGZqb3Bab3RJYTBNRGhDNW53?=
 =?utf-8?B?T09wSG9QRlFucXV0VWUyRnRhcGRYL1o5dnBmY2ZjUUljV2J4R1RDTmpwWmc2?=
 =?utf-8?B?Yk55UXJzTnFoNDlpWVBkNm1zQ1MzYjg1QU9mNzFPTFVsMFArbEFaNGlMN0Uy?=
 =?utf-8?B?WWF1aXZjdmkyQWVvRm1JRmJMSTRqVktyM0M5cUoxbG41ZHFxSnlsRDBhVGM3?=
 =?utf-8?B?TFBsRGQ5SC9GUUYwbW5PeitnWTIvSjh0UHU2MDZUSWcvUTlPKzVxUEIreEE4?=
 =?utf-8?B?SmlQa0tzOXVlVXd6VE1SZkRCQWJrRzNFQzQza2xIUGdJd29CckpvMnZSeVpF?=
 =?utf-8?B?THMyTGUrTG40bUhEdFNaUURQTGtoQ3htNzVoeWN1K3psazFPSEVGY1RBMy9G?=
 =?utf-8?B?T1JWNWp6MC9nMEM2QXhESEhGK0ZiWThiVjYrSW1XRzZmOUhNSDdwN0NIOHd1?=
 =?utf-8?B?SDFFQytJY0pDN1FpMGM5Q0dWcXVhbDYxYWpSaUNJaGUxRWVGWmduaXBJRjVu?=
 =?utf-8?B?RmdsdXFVeWs1NTJ3U3pqcjRsK29yV0k5MUlsZUdlbzA1cjRwTUFIb3VyZjNE?=
 =?utf-8?B?WWNPNFhGdndGM2VuY2E2WFJSR20zd1ZPcHAvM1cxQXhVdTZwZWE1cmttdnNW?=
 =?utf-8?B?cThzUGhxYVYwYTFBZFZkdjZCQ2RaR3JoV2poN2x3dExBT2habGg1TnNrd1oy?=
 =?utf-8?B?OFo3WUY1UTZSSWxMVUxSZDdQQWNydUYyVFBXQWVjbVE3d0Q3WjRyL21sQlk3?=
 =?utf-8?B?V2t0Q0NkMWJpdGF5QktwK1ZzTHJuaVcwNXJhTVc1cnlFM1FMODRnY0hiV2VY?=
 =?utf-8?B?ZlRkWWJneWlrN3U1N0FPaktuaWtPdmcvaXZpQnI3M1NMOHFtbnVCOGkxNzZl?=
 =?utf-8?B?MjEwdTc5L0tEaExXV3QzbzVFYWhGaCsxc2laYXUyL09YNzVVOUVrd0VYbXBW?=
 =?utf-8?B?bUhZWTdhdnYwY01NZFVidzNoT0V2OExSNHJjQmNneEtXTG9XcWNmZklPS2N2?=
 =?utf-8?B?RDVnQzJMVWR0ZzlrUGZnVy84SGFMaHU1WW5BYUFuNnl4UGM3MHc0K1VmY2NV?=
 =?utf-8?B?NmpwWE04cm9tcFJRNTlTak15SzBVTEtielFKbFpZRXA1VzlEVmdQaXFSR3Av?=
 =?utf-8?B?V1RCQ1hBQ2FiRDJ0cVZpY2RpQ2t3eG80LzU2RlZHS3NQZ3hFcmhIcDJCSkw0?=
 =?utf-8?B?NDRyNXpNYUdTdlpHT1lXa3c1UllOSW9tWTFzODFxMFhxdzlsOW5YWmpLaGdC?=
 =?utf-8?B?M0RueENLYkR0bGNDYTFYUlBEb1ZCMHZ3aTIrakgwYWtjTlVpRHpFRzRseUdQ?=
 =?utf-8?B?SVNQR3Z5NzkzMUtud2J3VVVES3RwWmFZbFdmWEd3U2RUVnRtUVBqc3I1OHFX?=
 =?utf-8?B?bmVwdElyZXRqV1M0Zk1jQllCYUtCNzJLYk5ScXF4Tk50N3AzZ210K2krZThD?=
 =?utf-8?B?K3ZSSWphTUtubktjYkk5TWltOGlUZy82TU92QXAyMUpnRkUvWTZaYllMYTc0?=
 =?utf-8?B?WSszcFFOYUM0QzU5UWFsL1ZFM2pIUG0wb09URnFJdmdHSjBuTE04NDRXQ1pm?=
 =?utf-8?B?S3Z5em82L05waWQ1V3RVQUJySFZPTG40WG5lQmZLWDdKN3FPakl5bG1xajRJ?=
 =?utf-8?B?b3I2MFovSnB1bmRZTWhFZ3Q1cWFZMDBnTVZIeTVXelplUnh2bkpXYnBYZy9Z?=
 =?utf-8?B?MkdMbUVGK3ZrWXptd3daejBjb1lnZ21NbklEclRoakp6bTNwVnlKUFI4bEky?=
 =?utf-8?B?OUE1K0R3bmM1aUdxUDZiSE5CNkR4ZEVDbXdkQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QXVIY2JVZEdZUHgrd0s0QnJ6ZmI5c29tbkszUjg2ZTJPdDF5SFZBZmh2cmNQ?=
 =?utf-8?B?cmFrY2VKdlU1Z0ZOQUtrbW9KaUFWcWZtYVpDem1DVjg4OG1LdXMrdW1YMllV?=
 =?utf-8?B?WW1UdTRIaHJOTDdqS3lGdlZvaStvM1pwYytGdytPdmQwRFpYVmRid2NkZEF5?=
 =?utf-8?B?NWR0TG1YMVdXSEQ0RlFkdzFLc1hiWXhEdGxjS1dKZkhEdjl3WGhDOHE3U3lu?=
 =?utf-8?B?SkJGMGR4ZFUraDRhRVFPejNmVG5QVkN6OGo5L0FnOC9WMWtZdWxjZU5jQ1J2?=
 =?utf-8?B?RkM1WHYxNmEwZEM1dzFpSFFrQzIvWVhpM3pnZ3A4L0dWZnlRejc2a1k2bUZ0?=
 =?utf-8?B?bHlqdHA0TkIrNUx6WDg3NGRFSXRyYzFELzRhdENJbitkbVVWbkt6MmpBbDBj?=
 =?utf-8?B?NHdVaVpxSXNDdlM2Zy8yUmV3K3VMSDVCVVI3aDYwRnFWSEtUL2ZKRWpaZ1lj?=
 =?utf-8?B?bVdXTHh1SVA5S245MnJ5U0dvV0ZPVTFtWDQ3RTZTTlRabTVSU2Q4SVl1WldE?=
 =?utf-8?B?NlA3N012WVZjRjgxMnpjdkFEdTZlbXFvUWVmM0YvNWw2RFhtTFc5VEphN1VQ?=
 =?utf-8?B?MEdFbWNoamtmdDNZM2tzZTA2R2dkcUQvdFFuT0RIWnVHakJEM2xpdEIvVENW?=
 =?utf-8?B?WDVaejZvZUlLcmZocTZkeXA1OVdMR0QyTXFuT1VPd04yRisxMjZUdkhFUWNU?=
 =?utf-8?B?bUJOUWNDVFMvbUZtZVc0QUFlZ1NOcUxsUm5KUnFnUWJIeVBPTXZ2NVlQRG0y?=
 =?utf-8?B?R3pPQ0U3NzVnelJRSzUyZ3Y3OGJCMFcxcVhORzZVOE5qYlhUWlJkc08xWE9a?=
 =?utf-8?B?TWx0Qk5SRWlqTnNIek9DMVNreUM3RmxHaFdzSHVQUXdHUDZCancvcHhUU1c1?=
 =?utf-8?B?K0thWHNkNVZhZlNGRDhlOW5weE5NMkhCczM4b0ZHTFF1eVlNMHAyOFhhdUVH?=
 =?utf-8?B?UHdjTXhjSkFkYVc5b1lPa0JiTDNvZ3gwTXFuV2FVL2VyTEhBWmh4L0MvZzBq?=
 =?utf-8?B?ZDJzVkVUN29hTEVXRDRmWXRkZzd0T1N0MFNoajFMWkZ6OHVDNjFzRlpLZ3g0?=
 =?utf-8?B?TmdDcEZab2htSUEvQ0pZclpseTcrWHVkTnRRMk5vbzV4ZXJZSDBRT0xrSkhj?=
 =?utf-8?B?SWM5RkdlM3dnN1hTdit1ekRBSHc1bG5ZWEV5WFc1Sm44ZUtYdkNEOEpUb3pG?=
 =?utf-8?B?T1dYS1JYaEI5dHNzb2dEakhOR3Z3NVlSeFJXcCtSYXlrcFpzdGJwZmRHdUF2?=
 =?utf-8?B?Q3dpc09kRmkzU1BwdzFyQVI2TCtKdGhrSDI0WUVvR0J5cDBTVFFXNlVDalhz?=
 =?utf-8?B?S2JYTzBjeFcrM2dJQ3BySnUwUU5kdG42TnExc2xXRFZGYjBVN2w3M2JocXJL?=
 =?utf-8?B?d1lIU2luNGZlRTh6VGZlamdoWWNXTkZ6Y1ZUVE9UcUlRMUcvcGNWWGdhVTl0?=
 =?utf-8?B?VkQxeWZzbUJ2OGNZeWlpTlRGdFByS1lURHpyd3Z2ZlRBQ01zVWpTbGxId2s1?=
 =?utf-8?B?bkxtWUxSS291UEQwQkZpNzlBMlU3TDMvL2ZCTGVYMG9BQ3lhVnUxV3FxSjNN?=
 =?utf-8?B?aFhPYytEY1dORy9kUWcrUXNtaUFYUXZ2R1BCbmRFOXdDa3dvVVhJelIvRnpy?=
 =?utf-8?B?MksxdExXVDdrN3FIaS9RMk5tMDRKS2FxcnM3cC9vL2ZUdXlqVnByaU5DWXdD?=
 =?utf-8?B?M3FNOHpOV3F6bW12S0JsYWd4SklJdUoxSDQybDl5UTJDTU5hWVdvL3JINVRR?=
 =?utf-8?B?d0FJZGsxVkFOVWNSTUp0NTZnS0lWenZBL21HZGF0SWREdkdLYmhyY3hDNEtj?=
 =?utf-8?B?YTlDVExLNWRWVlovUjF5dXhQc05pUlJ2Vm92aHhvTEVtTFpCZlVKOWVySzBV?=
 =?utf-8?B?LzUyaFlvdU9rSm1ObHhQS1hiYms3bXRsVXBpY2ZOeE8wUzFlWmhvVHNxdGFt?=
 =?utf-8?B?b203NGJweE0vL3hQTTRPSktkK3RvRTVkOGREZm5SbmJCNjA5bWxIbGZZb3NQ?=
 =?utf-8?B?c0lCeFYwNDBhV1lRdDVxK0l1SS9RK01KcVFjYU0wWTVubFROMEloMnEwSjlr?=
 =?utf-8?B?N3RRbWxwQkFCSW5OTHdURTJRL2YyMUlPRWxXWWJTamtTRzgwbjFMYmdlb2wv?=
 =?utf-8?Q?+qJbja9McWc3QaWc0fQ1euZj4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e71576ba-e512-4b47-aea3-08de067156d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2025 13:48:19.1321 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sCM0Mxt0DZWWYAj5L8Z/nOzLNKmemvHm/1R1DYKrZntpgfbLWN2mAD4/+Xhi89RzB9vJfDbPK2YaBIf3S/+LQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6945
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759931311; x=1791467311;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WLda87sIGWJ3msxNh3aJKWvi0PvVSjkZoPyGxxwGOsg=;
 b=ZlpRZ+qdIjW9TOFBm/tbMgEjWt8RoaNihpmjDRNuU6ubq2LrET5cOjbo
 ANGNrb1jjVe6FJUzOG6NsuWYQ+EgL/ytDxNhb+Yruoi9tQ3VStmFeEGtB
 BZj7b9cwqPtgo49FH+JZij9qd2dZ0LoV8xmP7UW8J8Pj4szJ14G54qRct
 rPjel3p531P2Poo6uZHOMXZTgqpv1orwx/C0rEufW2vTWrsW31cQO26rx
 wmMU0OQYo5ghIHnDzryCGRLzCIjAk+6P7e1zt8b1fknpC+nUKjK5q2WHm
 O89bOU0w68PRYxOTd5f+hFQZep2sfHIlPB8I80TMKcP2pbmQ32fkU2Cy6
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZlpRZ+qd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/5] ice: implement
 ethtool standard stats
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMTcgU2VwdGVtYmVyIDIwMjUgMDA6NDUNCj4gVG86IEJyYW5kZWJ1cmcsIEpl
c3NlIDxqYnJhbmRlYnVyZ0BjbG91ZGZsYXJlLmNvbT47IEpha3ViIEtpY2luc2tpIDxrdWJhQGtl
cm5lbC5vcmc+OyBIYXJpcHJhc2FkIEtlbGFtIDxoa2VsYW1AbWFydmVsbC5jb20+OyBTaW1vbiBI
b3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+OyBNYXJjaW4gU3p5Y2lrIDxtYXJjaW4uc3p5Y2lrQGxp
bnV4LmludGVsLmNvbT47IFJhaHVsIFJhbWVzaGJhYnUgPHJyYW1lc2hiYWJ1QG52aWRpYS5jb20+
OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9y
ZzsgbGludXgtZG9jQHZnZXIua2VybmVsLm9yZzsgY29yYmV0QGx3bi5uZXQ7IEtlbGxlciwgSmFj
b2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiBDYzogQnJhbmRlYnVyZywgSmVzc2Ug
PGpicmFuZGVidXJnQGNsb3VkZmxhcmUuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFu
XSBbUEFUQ0ggaXdsLW5leHQgdjQgMi81XSBpY2U6IGltcGxlbWVudCBldGh0b29sIHN0YW5kYXJk
IHN0YXRzDQo+DQo+IEZyb206IEplc3NlIEJyYW5kZWJ1cmcgPGplc3NlLmJyYW5kZWJ1cmdAaW50
ZWwuY29tPg0KPg0KPiBBZGQgc3VwcG9ydCBmb3IgTUFDL3BhdXNlL1JNT04gc3RhdHMuIFRoaXMg
ZW5hYmxlcyByZXBvcnRpbmcgaGFyZHdhcmUgc3RhdGlzdGljcyBpbiBhIGNvbW1vbiB3YXkgdmlh
Og0KPg0KPiBldGh0b29sIC1TIGV0aDAgLS1hbGwtZ3JvdXBzDQo+IGFuZA0KPiBldGh0b29sIC0t
aW5jbHVkZS1zdGF0aXN0aWNzIC0tc2hvdy1wYXVzZSBldGgwDQo+DQo+IFdoaWxlIGRvaW5nIHNv
LCBhZGQgc3VwcG9ydCBmb3Igb25lIG5ldyBzdGF0LCByZWNlaXZlIGxlbmd0aCBlcnJvciAoUkxF
QyksIHdoaWNoIGlzIGV4dHJlbWVseSB1bmxpa2VseSB0byBoYXBwZW4gc2luY2UgbW9zdCBMMiBm
cmFtZXMgaGF2ZSBhIHR5cGUvbGVuZ3RoIGZpZWxkIHNwZWNpZnlpbmcgYSAidHlwZSIsIGFuZCBy
YXcgZXRoZXJuZXQgZnJhbWVzIGFyZW4ndCB1c2VkIG11Y2ggYW55IGxvbmdlci4NCj4NCj4gTk9U
RTogSSBkaWRuJ3QgaW1wbGVtZW50IEN0cmwgYWthIGNvbnRyb2wgZnJhbWUgc3RhdHMgYmVjYXVz
ZSB0aGUgaGFyZHdhcmUgZG9lc24ndCBzZWVtIHRvIGltcGxlbWVudCBzdXBwb3J0Lg0KPg0KPiBS
ZXZpZXdlZC1ieTogTWFyY2luIFN6eWNpayA8bWFyY2luLnN6eWNpa0BsaW51eC5pbnRlbC5jb20+
DQo+IFJldmlld2VkLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4N
Cj4gUmV2aWV3ZWQtYnk6IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+DQo+IFJldmll
d2VkLWJ5OiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+DQo+IFNpZ25lZC1vZmYtYnk6
IEplc3NlIEJyYW5kZWJ1cmcgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPg0KPiBTaWduZWQt
b2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gLS0tDQo+
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHlwZS5oICAgIHwgIDEgKw0KPiBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYyB8IDc4ICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysNCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9tYWluLmMgICAgfCAgMyArKw0KPiAzIGZpbGVzIGNoYW5nZWQsIDgyIGluc2VydGlvbnMoKykN
Cj4NCg0KVGVzdGVkLWJ5OiBSaW5pdGhhIFMgPHN4LnJpbml0aGFAaW50ZWwuY29tPiAoQSBDb250
aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg0K
