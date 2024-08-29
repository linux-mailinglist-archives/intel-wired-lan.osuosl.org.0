Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D196964836
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 16:25:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D10641884;
	Thu, 29 Aug 2024 14:25:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CQznmRC4RqRp; Thu, 29 Aug 2024 14:25:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 694434183C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724941544;
	bh=2t75DBC1d9sbqe0lucIrVEiLOxQUphKEyQNt9sNAwPI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4CbVYk1yHqL7pIKbGFOjbTvbgUG/0lZeXnzwElEIfog6plXMHjJKWvn5s4FvVqkfl
	 xHzYjFnKfJkvLiSdIaokOxMwxf6cgqMjNHVHqNGK83jCG+0mIMlwUiB+mlS4UU/uW0
	 5WK/BWVUa1tE5RBZbogKU4JPNaG5hQBR9cBmagcNhA8gtpZ2cbGP9Nlcr1SK3WMOC7
	 17RCpsV39U/CGBeMwqHUqlYSTDK7wXL1gkWnYmpvOHz25az4XOBHelaZr8Kil3R/dO
	 vj1mO92BfIjUsJ8ya8IvW89ugSt/sYeI+FelSUWu00eA7vOo4wM+ZlSoyeaHfCdrj0
	 cYF8UEbNp5/sg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 694434183C;
	Thu, 29 Aug 2024 14:25:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 681691BF31A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 14:25:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 60930401CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 14:25:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dVqC_Vmax3Eo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 14:25:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EBA3540132
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBA3540132
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EBA3540132
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 14:25:40 +0000 (UTC)
X-CSE-ConnectionGUID: bByw+tIbTB+bLFkdBLX6DQ==
X-CSE-MsgGUID: TiGAn2AVQ+SoiLpQN/Im7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23337864"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23337864"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:25:39 -0700
X-CSE-ConnectionGUID: 13ZD7BfvQr+CLlJbb4QZ8w==
X-CSE-MsgGUID: QMmU49zEQQG32WmuIp/7qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63583151"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 07:25:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 07:25:39 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 07:25:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 07:25:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 07:25:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gFw8SxT3Onyui9k8LF3jUd6yGZnV70QJRf6AhsIxxCHux1mIoRe5iH2YKLlDCBfD+EVvxYNvEi6fKvXhqkaXPNAGsZY/mSXqXth8jo6VQ8jN+jMSnDJrBNoJmr4vCnu9l+WXa61BUQexpITEFqD9Jq4UAErXC0sFzK96sXxsylAbGLdnh/shwtA2lZRFxM/svTPCUswEf6MPZRkHXOVdXW/BxmXWojys+/FgJq3FYa27yuR3oDQQtmz7zg76bnpD/RPStMs+0sfuERqeg5vsimJSp64YiFlItmTsPm297CVJaqVFdZsVwuCjjy9G7JQxFNKCNfpbpDFIa//MYHV/CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2t75DBC1d9sbqe0lucIrVEiLOxQUphKEyQNt9sNAwPI=;
 b=BlnUqUPvbPDFvGNMybF0hgmyErEqDgJVGLsxCltmWcSNpz6sw2u+8Bmd1/YhWdmglEMS7SkB1Cl22KJQkpxBkX8uJbstFljCDVRrKDUwSLy//JAG+YdgYLiI6T7bk7jEcaMFb+UzVquT/xj6EPm2XoDOUnVE9P3Lig3QnvlyMxkWRLBAQblxpgkaEP1yJ8XadHsXuBeQgO5ta5RBH+uyb02xD2ZIOGgb5FZByruoWSKnxuXGFIpnpq9BPbFVFeBUqFZMGUoLqqvnPY16lW9A7PjkeoGP9gt0Ja+/m3LgC3YHDI1OG9HXSu0BH+DMfuLyVA9QUocqwR2C1srBvp5zdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CO1PR11MB5012.namprd11.prod.outlook.com (2603:10b6:303:90::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.28; Thu, 29 Aug
 2024 14:25:36 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7897.027; Thu, 29 Aug 2024
 14:25:36 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Fix lldp packets dropping
 after changing the number of channels
Thread-Index: AQHax7GqQRwOSeahcEiqa2ZIbUkS7rI+rvMg
Date: Thu, 29 Aug 2024 14:25:36 +0000
Message-ID: <CYYPR11MB84297B3AC1472E2AA4CF576FBD962@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240626094339.25803-1-martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <20240626094339.25803-1-martyna.szapar-mudlaw@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CO1PR11MB5012:EE_
x-ms-office365-filtering-correlation-id: aa62dfec-53ff-45a9-8a6c-08dcc8367334
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VGcvUkl0YmdHaUE0VnV5OGttSXAzRUFvSWZzTytwOTB3TzNvOXc3aVVsem14?=
 =?utf-8?B?NFFlRnNjSjc0Y1lBRXdBY0oyT2dIKzZpdXgrazdIRGhXTG00eURBbFltRFJ5?=
 =?utf-8?B?S2pFbVRtc25sbUhNSHNVamlzM1R1Qk5VaGd0TnR5NzE5UkdaRmtXYndHeDYw?=
 =?utf-8?B?NngvcUZYdmFLazNiZEVyVnpxMHhtN2Z4aG5KME5QY2xDUisrRXNzQ0h0Z2Fs?=
 =?utf-8?B?U1YzQ0pUWExHYVlSRzNCemZ4L2UvWWcydDh3dFlEaFlzS3g2ZzBReXEyRjY5?=
 =?utf-8?B?b1lIcmZpM2p3Ynh6U2FFaFpvam52RDRQNTN0dTkzUjl6WXRNTExaVTU0Uzls?=
 =?utf-8?B?L1lIdkZoTFUvT3orbEtxWHA5U0VsL3E4SUJsOU4xZkNOYTltUUJ6VCs5MDhx?=
 =?utf-8?B?ZDdWaFhMMndDaVozcFVmcmU2eHNJY1Z3YXhjdUhHVW9qMEdXOEtVN2x5aE5w?=
 =?utf-8?B?cGxBYVV4RzVRTWwyQWJ4b3BCTENNdUN0bEF2Nk9iaWxENUNYVnJ5NVRINEtp?=
 =?utf-8?B?OFpXR1NhOE5vcWhzeld0QUNad2hRcDlOUS9pOW1UZXR5OENYb1lNNU52emx2?=
 =?utf-8?B?QkhwNFkxdVVpZzRXS1dLdVZ3SFFEMGZ2V0NzbG1EZXBXM1kvNWZscGZHSkFK?=
 =?utf-8?B?c2h0c3ZTQldHUVZldUxlRmxCdllJcnV5QzNlUURGamVyY09KZmtZTHJBc0lL?=
 =?utf-8?B?ZjZGRTk3N1J5SllrS2VPaW9Cb3VMWkpHYkJhL004enIyR2VkRnIxZTRiZTV6?=
 =?utf-8?B?RFV0bnI0OWJMekFEK3dKR2dzbVgwSHU4UEJlZ1huNGFzQUpBbE5iUFpFREE1?=
 =?utf-8?B?Q0hZRGpKREplaUxRVWVGRkZJdFduZ295b1hmTk1LS3p5QVhsSEVWaGJoc3Nm?=
 =?utf-8?B?d011clZ1VGxzRHI4V1lEZkNNc0VrNmphQTBRTkZYMVExcGJsUU0vekhxMzJE?=
 =?utf-8?B?QklsNVZockVlWnJCdG9HMis2RytqM0o4eE5EeDdVRUdtRmtvNWxTTlZTVXow?=
 =?utf-8?B?cXpxMVBrdXpIZExBRjVucHB3Mks2TzVWUU9lQ1B6a1cwQXZQRFJSVTZuQWJz?=
 =?utf-8?B?cGdORUp2ODlWSUNjS3QySjN3NjNiZzhXNEtIbnZ2eEhMTkdXZ1hkd1ltdmJW?=
 =?utf-8?B?S2YrYjhVcWUwdjNodWFrQkQ0eEo3WXdWM01tTmxYVEFLUjFRTWV4bit2amVk?=
 =?utf-8?B?ZVpFMVFGUWN6Sk9OcUtJcGFQejUvQW9IUHpKVUJWQ092Rk9FZ0tYaFI2eTZj?=
 =?utf-8?B?cW5jdzZEQXFJK1JjZVZCZWFBanNVU2l6MlUvWHNpcUFGZG93WTlHZjU0cEVr?=
 =?utf-8?B?bFZONEhKcTNoUit4Si9NbFR3Ujl0RWI4R2Yxem9YMmRRTlRpZVZkZjhJMGJz?=
 =?utf-8?B?SXcyTW5OZHd5cmVxbEVuVThKU09mTFFLdU9mSmhXVEdGVVRlaEcxaDk2dk5F?=
 =?utf-8?B?eGt5RjFieHNvbis3QjdyajRuZzBaakcrR05WMWFxS3hZV3RSaTg1OXZmcGJF?=
 =?utf-8?B?SHVIbER4WHVEZ1lKeGRZM2E1eDlVLzQrc3NObEZxaGp0Wkc4Z3NSOGpRdDRj?=
 =?utf-8?B?WjlJbHpUWU5rdm1abFA1NjZqeDlyd3JzU2VITXlPbDY2bWttNXNrSFk0V2pm?=
 =?utf-8?B?b2VHdG43c3A4OUlpVFhyeVV2Sk5uMG10b3REaG9WbVZrcXZmdjl1dERQL2NG?=
 =?utf-8?B?eE42UHJMbmRjSFZaUElVYlhFN1ozci9NUTV4UmNWbkdkeUxTUGFkWDlGekVl?=
 =?utf-8?B?VVh3Ni9ya0hwNVBhNkNBWnBlN3BaQ0svSmhSS2hmeTNQTnVqNXpvOFczYkdL?=
 =?utf-8?Q?Tfk54cz9KaCd7XbGI7sShIhME9E69/t6p9Guo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TUM2MTBxOEkrVjVIL21GcU85Nk1uTXBYQktGaXJoZEFCdjFJWitZSEhLWW9s?=
 =?utf-8?B?MUpOdkw2cWVndzdBdThxL24rNW00MTR1bWg1elhSdHRidEZYeml1UzE2Ni9F?=
 =?utf-8?B?NGVVc2Y2Ry8yb3o0RTNPQUl6OG9Gelo2QlMvc0ZCK2IwL2JkM3ZpL1NYNWJV?=
 =?utf-8?B?RmU1RWduNFQzYk5rcGh2dkJQRFdzbHpSRUtjZ0NhV3o0MGhjRGJaM2JaUFVo?=
 =?utf-8?B?N1ZjUS9PYStJSjAvRXRsZVhsdVp4YzFWdHJkeWNvU2ZBS3FvbE1ac2I0bWZu?=
 =?utf-8?B?RksxcDNXM21lQlFCL2tlMGpQODR6bGYzNCtudno0L1NoOFFVbFZlK0dqQ0Z5?=
 =?utf-8?B?aFpUeUp1SG1yR2xlR0J0WTY2UHZxMVJPYUMvSGg0N1RkMVhNSDFPdXRGeHhK?=
 =?utf-8?B?S0hDY3hqQUUvby9udzI1M0thM0lBbEdhWXNweWxVVFBYVjdSMWdSeHlUL0pv?=
 =?utf-8?B?UUU1ZmxkUTVTK09saHVlNFhSTXVJbnN6cjJhL3N3b0FNaVZ2bXJJbFdQbnNX?=
 =?utf-8?B?ZysvNW9SOWpSM0JZeFQrbGVDU2lBNXVKNytZTmVnaHdRenk2NmdWZWpTSHRp?=
 =?utf-8?B?VWoyWUVUdytJSHNGVDRacWNCTXcyMFJHeUo2OGMrNjB4WUMzMkFNR1kwTnFH?=
 =?utf-8?B?SmY5NFowWEZvSEI0eEIvVGVhMC9MQmNMVUhWYmI3cjRhQ1o2S21lRFo5V1Y3?=
 =?utf-8?B?VXJZcXJsYnpEcmhGSVBNNUR2ODVOTnpuQWlramo2Z3h6TkFwMnkvSDJwVkdv?=
 =?utf-8?B?amdSSnBUMkExZlpxcVd1MDQrekFFK0N2YTd3TXdvMWxOdGkvc01EaWlNVlRP?=
 =?utf-8?B?SG1hbndaNEVnSkpuU1QwcGF6RXdidkFXYjYxVzFWV1RZdlgzYmt3WGJWeWtP?=
 =?utf-8?B?R1IxWlpBdG1CZlNmeGxyeS9kSm5zNTBMN1lXdWVzbWlKclRnbGViQzJsUVl2?=
 =?utf-8?B?SnRWYXhMemtMOVNXcEZUYmVEKys0M2lnTFRORmZFaTYyN0RLaS9rY1N4cWNK?=
 =?utf-8?B?RXZoc3hyR0hLdzNPQUdrYXJxRFI4bUNvcUJnVUcvNEE2Y3Y5SjRQUFNHTDM1?=
 =?utf-8?B?NHNqa2ZRa2JDbFhqMFBnd2V0NnlLSUJVdVpjQytod1A5SHM0dnVwNzVTMnZm?=
 =?utf-8?B?NkdhRFVVYlJYLzJnNHh5VzdyV3dscmlqTFYwckp4NG1sNkpTWkxldFFsQi9M?=
 =?utf-8?B?TklteXVuZGRYeXhSVHk3UHVjR0NMOGpZaHh5TVl5YzhERk1DQkM0dUprS2RG?=
 =?utf-8?B?WDVRcXBMb0p6REJVYys5UXZCTVBibFZXalM2ZzJrZkFYM01wVnV5YXd4NHox?=
 =?utf-8?B?OVRqRkpzNXRIK3QzcmZoTHc3dGJnY3JzVCs0N0Y1Nkw0aW5qOGprSzI2T2Nx?=
 =?utf-8?B?di9PbXVuR1VmOEk5L2VTUEtndVF2ZVRiUlVJanZKV1FVb3c0VUR4dmVaYXNm?=
 =?utf-8?B?RDdvUUU4YXdaRUcyejM5VE9MWEhzQzQ1Y0xqQWVIUHZQMnVEOGJBeG5OZHNj?=
 =?utf-8?B?cTRVbVc4WWxKb25CUVBFeFdaeGxoSGVOdEJ1bGFJdlFPdVZzcS9ycmk2NDFK?=
 =?utf-8?B?azBCc1FqUmYyMERKUDdVK3YybnhudWthOXhoQlR0TGx0N3pZNWtzb29WNlRr?=
 =?utf-8?B?OXM4TlNPdEYvQ3g1QkZIa3A4YkYzNHF6NTNpbmxvU29BWVFIcmVITmRnQmll?=
 =?utf-8?B?T1pmcHhEL1JrTWZzeUo2TFZGU3JjTjNCQ0VUaW01K2dnYmlyZXlQOXFFMVEz?=
 =?utf-8?B?bks4VXlaNytpSDROK0luamErZVRaME43d1RLRTY3eUhOUklMTnNkU2M2cG5v?=
 =?utf-8?B?UXU5N290WHg4MCtMdGxqSFBybGM0a2RYT2tDek1OTFdmQU9oOU8xd0dqV1F0?=
 =?utf-8?B?U1NpSDVFRmZ3NGMzYTAzVmJaWE0zYkljeExtazZlYTBCeGlTQmgvVTd1T0dW?=
 =?utf-8?B?a1VJZG1RcmZyNUVVOEdoeXhMSTRwaGcwMjUwMzNSS3ZrMkZLTWxnUDdwT3dN?=
 =?utf-8?B?ZmxPa3I5SGwvNXZqeWRLaUpvM1Y4alh3ZmcxZFp3SHRxbWZIc1Q2ZTdLcXNz?=
 =?utf-8?B?NlAzaFZJdmFFdE0zdlBIQUEweE9FNldWcWkrWkk2UnJ0MkNXUTk3Q2ViVzVB?=
 =?utf-8?B?UEpGbjBsa3dGa0RmYTNkdVpjRW1jbXBoeklyazJNWnk0ck1MUm9yQ0trL0tB?=
 =?utf-8?B?MVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa62dfec-53ff-45a9-8a6c-08dcc8367334
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2024 14:25:36.5800 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yZWKkBH6snA8lz97qGvaRr+NkPS5WekDYuO5SwhQtTUye0CqdAiTBi+LSI1hqbJGkFQaJ9A27bYLLkthivdD9hhbzlxGofJYyTiTkwufBQ3119eMAXqPmoiB2erf9ZId
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5012
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724941541; x=1756477541;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2t75DBC1d9sbqe0lucIrVEiLOxQUphKEyQNt9sNAwPI=;
 b=ju17HbM6DSuwCFrHoJbAG5uldDTKi+CaOvTBdI4397m6epRI5buqQSuz
 SqtsjY/jKX18rKM/D5KptCXscjTuzXpnG2T+IRpOApbWMV7tTS4vz2Sr7
 iybUDUDb+Jhiw6LN+JsUUODWY419NNvT3NwhDvHR0EkYj9ASAwynNmPtV
 uyxEeZPVnOsaabHmRAvDc9U+ydlE1zvDeZkt4nslR/HRkCYsdUTSWxq6i
 igWwFYKniVeXzllDKMkZi4xbthz9tMjJSguqqBwSByV27NanSEP6XZtoj
 IiP8n2Z8g1yA8EGJLYg5UyieM39iOdq9cwE6HcJ1db6IImRbLpuY1PaxB
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ju17HbM6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix lldp packets
 dropping after changing the number of channels
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
Cc: =?utf-8?B?TWF0xJtqIEdyw6lncg==?= <mgregr@netx.as>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBNYXJ0eW5hIFN6
YXBhci1NdWRsYXcNCj4gU2VudDogV2VkbmVzZGF5LCBKdW5lIDI2LCAyMDI0IDM6MTQgUE0NCj4g
VG86IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBNYXJ0eW5hIFN6YXBh
ci1NdWRsYXcgPG1hcnR5bmEuc3phcGFyLW11ZGxhd0BsaW51eC5pbnRlbC5jb20+OyBNYXTEm2og
R3LDqWdyIDxtZ3JlZ3JAbmV0eC5hcz47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcu
a2l0c3plbEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBp
d2wtbmV0XSBpY2U6IEZpeCBsbGRwIHBhY2tldHMgZHJvcHBpbmcgYWZ0ZXIgY2hhbmdpbmcgdGhl
IG51bWJlciBvZiBjaGFubmVscw0KPg0KPiBBZnRlciB2c2kgc2V0dXAgcmVmYWN0b3IgY29tbWl0
IDY2MjRlNzgwYTU3NyAoImljZTogc3BsaXQgaWNlX3ZzaV9zZXR1cCBpbnRvIHNtYWxsZXIgZnVu
Y3Rpb25zIikgaWNlX2NmZ19zd19sbGRwIGZ1bmN0aW9uIHdoaWNoIHJlbW92ZXMgcnggcnVsZSBk
aXJlY3RpbmcgTExEUCBwYWNrZXRzIHRvIHZzaSBpcyBtb3ZlZCBmcm9tIGljZV92c2lfcmVsZWFz
ZSB0byBpY2VfdnNpX2RlY2ZnIGZ1bmN0aW9uLiBpY2VfdnNpX2RlY2ZnIGlzIHVzZWQgaW4gbW9y
ZSBjYXNlcyB0aGFuIGp1c3QgaW4gdnNpX3JlbGVhc2UgcmVzdWx0aW5nIGluIHVubmVjZXNzYXJ5
IHJlbW92YWwgb2YgcnggbGxkcCBwYWNrZXRzIGhhbmRsaW5nIHN3aXRjaCBydWxlLiBUaGlzIGxl
YWRzIHRvIGxsZHAgcGFja2V0cyBiZWluZyBkcm9wcGVkIGFmdGVyIGEgY2hhbmdlIG51bWJlciBv
ZiBjaGFubmVscyB2aWEgZXRodG9vbC4NCj4gVGhpcyBwYXRjaCBtb3ZlcyBpY2VfY2ZnX3N3X2xs
ZHAgZnVuY3Rpb24gdGhhdCByZW1vdmVzIHJ4IGxsZHAgc3cgcnVsZSBiYWNrIHRvIGljZV92c2lf
cmVsZXNlIGZ1bmN0aW9uLg0KPg0KPiBGaXhlczogNjYyNGU3ODBhNTc3ICgiaWNlOiBzcGxpdCBp
Y2VfdnNpX3NldHVwIGludG8gc21hbGxlciBmdW5jdGlvbnMiKQ0KPiBSZXBvcnRlZC1ieTogTWF0
xJtqIEdyw6lnciA8bWdyZWdyQG5ldHguYXM+DQo+IENsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvaW50ZWwtd2lyZWQtbGFuLzFiZTQ1YTc2LTkwYWYtNDgxMy04MjRmLTgzOThiNjk3NDVh
OUBuZXR4LmFzL1QvI3UNCj4gUmV2aWV3ZWQtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xh
dy5raXRzemVsQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWFydHluYSBTemFwYXItTXVk
bGF3IDxtYXJ0eW5hLnN6YXBhci1tdWRsYXdAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMgfCAxNSArKysrKysrKy0tLS0t
LS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+
DQoNClRlc3RlZC1ieTogUHVjaGEgSGltYXNla2hhciBSZWRkeSA8aGltYXNla2hhcngucmVkZHku
cHVjaGFAaW50ZWwuY29tPiAoQSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg0KDQo=
