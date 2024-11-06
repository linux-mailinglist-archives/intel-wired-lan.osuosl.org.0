Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF32B9BDB0E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 02:16:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 455CE4061D;
	Wed,  6 Nov 2024 01:16:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7CUilVqApRrF; Wed,  6 Nov 2024 01:16:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C6BF4061A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730855781;
	bh=QdyIIO2NJNfIBPCRm+7GnheMiNbyGMZlS7FPgKcBYeQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TezFREp0fOVtBTQCBAlw2lHYpixitNTAZxRowj+Z1kmKriC6PReyNkq/fgnBVYxrW
	 mpoH4sFCfgd43RAtjdr/lcJeAeL6d0buUAkuy7vQaT3UaoH8yELV5mfelPlFDYiqXA
	 gZk40OdCvSR2tHxUbDTqIjRjZagxh9CbH1hTl8yvVoK4WLgPy39HiHkgv2HnOB+N3B
	 Te8JJBne39q8S/IyQu1up7l7zX4x17Xf+XZSn/6TJfF4TrNa/jmL9bMs7+HKb7+NWX
	 pb3xzolZMXq/jVMMlD58uTvAkAbBZr2lg274Fp/tMHGCXaLVs+C0y8wbCUn3xx99/S
	 Vs08b9k120egw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C6BF4061A;
	Wed,  6 Nov 2024 01:16:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 12ED5B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:16:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 000DE405D2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:16:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dR7CIuUeJmMB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 01:16:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8DA19405C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DA19405C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8DA19405C0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:16:16 +0000 (UTC)
X-CSE-ConnectionGUID: 1Mwf9ewgSCqT0nOjGGiXVA==
X-CSE-MsgGUID: gL96ICIwQzq3ACBBE5Q59Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="30063845"
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="30063845"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 17:16:15 -0800
X-CSE-ConnectionGUID: /qMoD2A9SRqGsD3d7Wr4Ew==
X-CSE-MsgGUID: qCA3oqAiSE2aTQx5PXsquQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="89079188"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 17:16:01 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 17:16:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 17:16:00 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 17:16:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JYEZETCq8RzGtVRWr1C8v2vmZRvUMyM5MJLEuvFTEgDEzLWhQ2RZC4liaScZzlvbZXQGBqxPiYULPgrCLJqgcNtCU765pLBqr3kiRyQcDOSVj1qxNHzHoMT7iwTzp4OCDVqhT0W/mypBPCtIiGO6zOcrYmx3mR9rRffqHi7CmknblVCin4SnV/bP/wGEZq96bVcX4qFQWDSzsHwnXLduZNrmRq74EGmbUy8OVMykvO+M+xEF9gN6/7R+gzelJXmLT+yMpSodNtrnZH6R0O3LAkrpJl5MFeu13uTqvLEqJar17fdJ8O3T64wakd3fZn23nBe0uNoCGLKK6c1lBrHzxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QdyIIO2NJNfIBPCRm+7GnheMiNbyGMZlS7FPgKcBYeQ=;
 b=pFo0U2GuSAbJf++bEcOTiW51w+Cyum1DVan17zgLzOOmVjs0vjBHT3z0wIxloo9d0Ras/APjTFtzAbX1I7c+bSzgZVu/A89fzzE1DaFMdr/HZk5UB0JGgzNZUCvAVlajf1j98Cv2qhwN3Enz2zt+wch6QzVD+hjK5rBS6QsAuIEVGvOPWNYurof3mMjUa4jkHrOl3lEJcGzZP107CHXJZfyY6At5MoDNDQR8UMG/mz4JevUIwNEgA9CKcAFB7oetgjh4oqYzM90kMURcqy5K2Ux9hwgtNhtsJFsuOuIBpeaHPoPeBvkhEkBmL1zKqi3YNolNqFPCm19xhL8/Ej6ZVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4666.namprd11.prod.outlook.com (2603:10b6:303:56::24)
 by SA0PR11MB4640.namprd11.prod.outlook.com (2603:10b6:806:9b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.31; Wed, 6 Nov
 2024 01:15:51 +0000
Received: from MW3PR11MB4666.namprd11.prod.outlook.com
 ([fe80::1979:c166:9d53:81f3]) by MW3PR11MB4666.namprd11.prod.outlook.com
 ([fe80::1979:c166:9d53:81f3%5]) with mapi id 15.20.8114.031; Wed, 6 Nov 2024
 01:15:49 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v2 1/2] ptp: add control over HW timestamp latch
 point
Thread-Index: AQHbKXtiLKEcWhLuVEmZKpQibZnqp7KdZQeAgAwasBA=
Date: Wed, 6 Nov 2024 01:15:48 +0000
Message-ID: <MW3PR11MB4666D202C42B699FAF31DF3F9B532@MW3PR11MB4666.namprd11.prod.outlook.com>
References: <20241028204755.1514189-1-arkadiusz.kubalewski@intel.com>
 <20241028204755.1514189-2-arkadiusz.kubalewski@intel.com>
 <9b7ccd9e-fca3-4a72-806f-3e99ab5ae4bd@intel.com>
In-Reply-To: <9b7ccd9e-fca3-4a72-806f-3e99ab5ae4bd@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4666:EE_|SA0PR11MB4640:EE_
x-ms-office365-filtering-correlation-id: 572e8c53-be62-4a4d-539b-08dcfe008ca9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?a1RSWFBWNTJqNmZubkVIbEhiTk96UVBjNmcxSWNOeDFRZFRZVU5GdXFWVWQx?=
 =?utf-8?B?S2pXNjJxdjBobGxOVnFjMWhHK3VKZjJja2R0U3lCQkpkSFpzRjhxWWZYekts?=
 =?utf-8?B?cjBDQmhpazEyOFczUG1LTmNQa1dWUHowMmlReUFVT0RyWFU0cm1ocGpTeW1q?=
 =?utf-8?B?UDROb0ZQYjgyc0FpdVE4Y1F3ejY2SGFzSjk5QnVreUhhOWtqOUYxZjRuaWM5?=
 =?utf-8?B?cHZYc1p1Wm5iK1JtS1FDd1FxMlN5UGZ4V1cvaGgxc2RjSmJTbzNILzhEWXVJ?=
 =?utf-8?B?MCt0ZTdKMVp6VjZURHZFTE5janNhdVc3b0RPbE9OazNya1hGSU9CMzJoZHF0?=
 =?utf-8?B?czVJRjFlUnZUZ2lIYlJJUEErZWhJVDJEc3JURVlFNUJVK3VrK2Y3RXBOclZj?=
 =?utf-8?B?WFQ1bTd0VGttR2Y5dUhiMmt5aUxWWU1Fd3V1Z3RJSUdUSituUUxHNGJOOXhy?=
 =?utf-8?B?WnJsSWcrRkZJbTdEV1ZabllWczQ1NDhPWGo4UUhFazdjaGJ4RTNyVWxsNVI2?=
 =?utf-8?B?TEp5RXZrZDQvclR2VWJFdWNNdVlhWU40aGxBSXlRWnFtTTlKbHFhTmdlQ29m?=
 =?utf-8?B?QVJBMUNxeFYwZUtYMW0zbmtLdXExN0doMXlnK0NpY05ZZmVOQkZoZUx0TGtk?=
 =?utf-8?B?Ny9YYjUvYmJYTUd6VXVWbXJsajRRWjBEaWE2VjZ3NTJQWkJ5dVdTSkxQbVpK?=
 =?utf-8?B?ZFlpVUlnOFJha3JBWk5pZnpJM1NTald1allYbG92SS9jYmZjQ29JdEN5RFZI?=
 =?utf-8?B?Vmo0M0VsSjc1U3hxdmpyT04rbk9zcE1EUyt0ZGowa2dwbEFuaVFPa2toektN?=
 =?utf-8?B?NmZKUEc1K2kySys1dUszeEc1N2htQkhDS3lGc3RRMmdUNllCcWlVaWozNFF0?=
 =?utf-8?B?cmZKZ2NNRFEyQ1BBdFBWbjV3N3p4QTVuL0NMWmxnTmNDM3VvcEYrbjdCdW1P?=
 =?utf-8?B?WnZNRXFIQUJHTkZtTTIvWEhYcDh3Z0lRaWcybWpzTjhEcVdvMWIxNW55MytK?=
 =?utf-8?B?M3F2aTBvV0hJWDAveXEyVWJvMHFCOCtnRE5EVnNIZVlHSjRlMzRMclJWVFdC?=
 =?utf-8?B?T3RLY2FKaTBrenlwZkVISTRQUE8wNm5NeFBrV0kxTnhFbTk3L3psbjRpMTdR?=
 =?utf-8?B?Nmk4NTdUVFU3ZHg4OS9vYlM1R3BsbjB1Ni9uNTlEa3JsNDJjSU16T2tPQUtG?=
 =?utf-8?B?RzJUZHdJNStGT3F6dXgrdmUvRVNXU3lNL3l1RnZtWUxsTUtlMG52MlJzOGFF?=
 =?utf-8?B?OHVDaDZGMnVsaW9Za1J1YUMrS3pyR3pkM2NsZkNzR0R2c24zM0NoQW1QQ1hs?=
 =?utf-8?B?clZhUFBRNm1jdkhjWDh6RHJCVFFoYndZNjNwRGgyUFBrMUF4dy8yOWdrNVA5?=
 =?utf-8?B?WHZWaFI1a3pPVXVNNXJFZVhvSFV2ZkFOeWlrQi9GTllpMDRhdUdONm15OFh2?=
 =?utf-8?B?RXpwMDdBR1ZKN3FYdmlheTdFTjAya3NlREtJNHVUTStyZUZ1WWcxekk4bTFk?=
 =?utf-8?B?bmJBTkNmRTc2THZNUUZUcS9aT2QyNWo5Tkp3d3haeXZYaHR6cGMvbGowRno5?=
 =?utf-8?B?NnZsWHdyTWtjUENMQ0NMTXFZMUdib1BCTnkwSFB5ZUdEZ2NNeVY1cDF1V0Nh?=
 =?utf-8?B?RnFEVUdRcHBvSUh2MHRWTEQrNlJZUVg5czVOS05kdHY2SGpmdCtrM0xjbUlV?=
 =?utf-8?B?MlVYSWY0ZGNnY3AxSXUzSWxrVmNHVmJHSFozR3lLa0JTVGxzV1JxU2VsL29U?=
 =?utf-8?Q?4C8Ozk5TQidCnO+wsNySvDft+rBkCYt4lsVuSmx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4666.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aTFaN2tqYnpVLzIwN240OVVTbTRDdE9Rc3lZemxnamdQdDdLTzhUU0htQjBR?=
 =?utf-8?B?aFdUTjJxM01yRm1vSTQxdWJzM082MCtKSkFmajRnYXY1d0Y2OGlSUlJKMWgy?=
 =?utf-8?B?dktlSFlSZFNTRUJlTW5Wa3FTVnZEK3RGdU1keUVKQWFvMVpYdVRLV0hIdkRN?=
 =?utf-8?B?K3N4d09iOE9hWFZkNE1UcjR1am05aGRaWjR1cVJlNm83K0lmL3NNUGxMRDFk?=
 =?utf-8?B?ZUZneEV4OEoxNDBwWEM4YlAxbjZpUE9MQStsZ1dNejlvZXFLdGo1b3FITTQy?=
 =?utf-8?B?aE9LM3d1eVVoVHB2Ti91NUNLeEFSSmRlNG90cFhrc3piWjk3T1NVellVeDYr?=
 =?utf-8?B?emxiMmZPT2gxVTNaYSt5ODJMY2o4OUZTd2RUamprKzBlbGdKeHd2Q0J0ZVlv?=
 =?utf-8?B?cmdGOVhsRVI2V09QSXVLZ2ptMHFFeVg3Y3Z2TWZvR1BvQ0RtZGhtUXFHQnpE?=
 =?utf-8?B?aVErV1pIemlXSFgzdkZoRnZCMVU0MEZBMjB6SGNmaXJpdm9aTTRhU3BqZ2NS?=
 =?utf-8?B?aXFPVW0yQmEydjBSMzdxNHExNFdaaldQYnhLMEFPVm0wY3dXK2tJN2dEa3Er?=
 =?utf-8?B?V2p4aWxZVXFoNklWTy9pNDBia2xLeGU2SG8xdWtqZTZYclc5YjBjLzZ6Yjk3?=
 =?utf-8?B?VEZuc2Zld1YybE1lNC9vZmJvQXJwRXhLdFNZanVVY0Y5QkZObkd5M0ZpN2dk?=
 =?utf-8?B?N2ZESDk1ejB5cEFoVHR2N3E0RDFMelArbzZiekpOcVFVaGFxNHVsdHQxTmpX?=
 =?utf-8?B?WVRSV3dKWjAxOTJ6MUNzMDFhRXBFZ1dQSzVFQ09oV3RjNmN1Mm9QS3lIUEpr?=
 =?utf-8?B?b0NyQWZmTm9RcmFhZ1lYZVhIY0twTm9oaHpQTmZYenp1OW1zbXVRZUMxUEUx?=
 =?utf-8?B?WklQcWxLMXRFdjZyKzJabFh3U3NzdzVySWliQnFQOVlnSmRqRE9yVlpReGFs?=
 =?utf-8?B?SkZZVjdHc3A4dnJUejZIWUlMYnRLQUQ3ZFN6ekw4LzNpaWhVN0h1Mm5JelFQ?=
 =?utf-8?B?azVNWlZVY1JIS241eFVJYXBDMjJ0N0xheExYcWoxR2Z1Z0ttMkQwSVNZUTBl?=
 =?utf-8?B?RUxFOXc5eFpqOUZuUEFQSk1CdHIzVit5Vzl5eXZVNVZTeEV6aVBjMGF6TlhS?=
 =?utf-8?B?L0ZDSEEwUVpNS1hiaXdQTTJkVlU5WEs3OE5hQWNySWNlSzJNR2FvdExXS3R4?=
 =?utf-8?B?WHVLLy8rNEdjdUpMbkc3WHlpN1crSy85aUp0SUc0ek1TejNmbThTNkxvK3Jm?=
 =?utf-8?B?T3hpTmNOU0QzOCtSVlhJRGd4d3JuYkN3VFZaSHU5N0J3SENyeThmaHFhUG1Q?=
 =?utf-8?B?cVlqQk1hbHJtWU93ZnFvV05SMlJJOCt0U2VMcld2NGRrU0VlSU5jb0lIeHlO?=
 =?utf-8?B?eWlSU3RJM2d4OXZSeFNXcTNFZXhYNXJkMmhiSnVCRVNseUQybEJJRlpKMkJl?=
 =?utf-8?B?eit2aG1TMDFSRzhLQ0xqeHVqTThIQitQRmRnZGo5MWlJZWw5VTZVanFYeWVt?=
 =?utf-8?B?WGlNb1NOeG4yaGp5aVVQT1U3dGtTMGFhaDBBTXcweTF3Y2RiaEthSnhTN0tW?=
 =?utf-8?B?WFZJb1RSK3MwZDRFb0s4ZFlnQjBwSnJ4ZE1xdmZWUERlY3lUNkcrZFVKVGxL?=
 =?utf-8?B?QXRvRGNzcGdKZHpxSEhPMjFxeDAvQnBIaVJWOVlyTlFxbSsvbllZeTBCdUdH?=
 =?utf-8?B?MzNseUFpQW5vMmQ3R2FVMnhrMWgxRmMrSThNWHUwYzFBR2tzRVZUa2pwa1Nw?=
 =?utf-8?B?YlR5TEd3NnFUUmtlQS9QRGoxMVFVZlJEZWdqRGtxclFKSVhuV1liUTRoNDk5?=
 =?utf-8?B?MzdZNGNWR1FkNGlUVFpPd3l4OTdNYzVJL0tVUVFwalY2VTBGbDdXcm9Kd2RM?=
 =?utf-8?B?L1ZNQ05acldaVWU1bXk2emFNS1J6eW5IVHBhVzV2b1c5UFd3c0h0dU9NbWli?=
 =?utf-8?B?cUc5VWJ3amZGOW55M1BCQ0Mvald5ZGNGdTU1eStEL0RscUl6b3VsaUE0KzlH?=
 =?utf-8?B?NE8zYUI1QXozcnBWUWpPclpOU0hxUitzcFprMFpvelIzR3FkNFlLRzRkUEQv?=
 =?utf-8?B?eTVoNWNuYjFxM211NFJzRys4Z25tMEN6c0YrU2ZHZnZsb05FSC9ONDdnVFBS?=
 =?utf-8?B?czJFQ24waDZwQWFCMFN0bEd4aGJCbTVuNGRkb21HNlRlQkJaMXlObk5iTldz?=
 =?utf-8?B?T1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4666.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 572e8c53-be62-4a4d-539b-08dcfe008ca9
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 01:15:48.9983 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LcXnqSMZi2gTHcZZ0z/TB2nC2jwKlOWZVTsmFsUv3zqyOGlGiUvKftc08BmdEz3AxPut8TlGxtvL7UmO6BZ8Jxim00ezVpgARPu9DuWYl5c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4640
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730855777; x=1762391777;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QdyIIO2NJNfIBPCRm+7GnheMiNbyGMZlS7FPgKcBYeQ=;
 b=eq7wf6eHKaD52ytHqnEPT3OmbKAKYz17q58APuEKCv17aqEjNLCbGPAo
 J0J+qzns7YwJCmCgoLHoK84RbepeM9fYjwTPh1Rbp4PMIkBmOcBQwiWUp
 MVc6DKWdOU1WC+zuXNFdCj7bUcm9H9eWlyuLeOqD2zCIgy8yJ80WIg4Xk
 Yifw1GShyC6rPnIZ3JtALPQ9f47Ujd33HhKXkweys2Az8i+7Ggii8G+zE
 BD18H5kJOzxNJP6X9sXmRNMJGUREEFGG8TNBlDwzzh+NOU7FEI2HHbRRB
 bFaOOm86QNLBXf6O/5qj8R6LgZ+0xOuQoGSsUYfhbDHPjdir8OL463Rts
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eq7wf6eH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/2] ptp: add control over
 HW timestamp latch point
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

PkZyb206IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+
DQo+U2VudDogVHVlc2RheSwgT2N0b2JlciAyOSwgMjAyNCA5OjI1IEFNDQo+U3ViamVjdDogUmU6
IFtQQVRDSCBuZXQtbmV4dCB2MiAxLzJdIHB0cDogYWRkIGNvbnRyb2wgb3ZlciBIVyB0aW1lc3Rh
bXANCj5sYXRjaCBwb2ludA0KPg0KPk9uIDEwLzI4LzI0IDIxOjQ3LCBBcmthZGl1c3ogS3ViYWxl
d3NraSB3cm90ZToNCj4+IEN1cnJlbnRseSBIVyBzdXBwb3J0IG9mIFBUUC90aW1lc3luYyBzb2x1
dGlvbnMgaW4gbmV0d29yayBQSFkgY2hpcHMNCj4+IGNhbiBiZSBpbXBsZW1lbnRlZCB3aXRoIHR3
byBkaWZmZXJlbnQgYXBwcm9hY2hlcywgdGhlIHRpbWVzdGFtcCBtYXliZQ0KPj4gbGF0Y2hlZCBl
aXRoZXIgYXQgdGhlIGJlZ2lubmluZyBvciBhZnRlciB0aGUgU3RhcnQgb2YgRnJhbWUgRGVsaW1p
dGVyDQo+PihTRkQpIFsxXS4NCj4+DQo+PiBBbGxvdyBwdHAgZGV2aWNlIGRyaXZlcnMgdG8gcHJv
dmlkZSB1c2VyIHdpdGggY29udHJvbCBvdmVyIHRoZSBIVw0KPj4gdGltZXN0YW1wIGxhdGNoIHBv
aW50IHdpdGggcHRwIHN5c2ZzIEFCSS4gUHJvdmlkZSBhIG5ldyBmaWxlIHVuZGVyDQo+PiBzeXNm
cyBwdHAgZGV2aWNlICgvc3lzL2NsYXNzL3B0cC9wdHA8Tj4vdHNfcG9pbnQpLiBUaGUgZmlsZSBp
cw0KPj4gYXZhaWxhYmxlIGZvciB0aGUgdXNlciwgaWYgdGhlIGRldmljZSBkcml2ZXIgaW1wbGVt
ZW50cyBhdCBsZWFzdCBvbmUNCj4+IG9mIG5ld2x5IHByb3ZpZGVkIGNhbGxiYWNrcy4gSWYgdGhl
IGZpbGUgaXMgbm90IHByb3ZpZGVkIHRoZSB1c2VyDQo+PiBzaGFsbCBmaW5kIGEgUEhZIHRpbWVz
dGFtcCBsYXRjaCBwb2ludCB3aXRoaW4gdGhlIEhXIHZlbmRvcg0KPj5zcGVjaWZpY2F0aW9uLg0K
Pj4NCj4+IFRoZSBmaWxlIGlzIGRlc2lnbmVkIGZvciByb290IHVzZXIvZ3JvdXAgYWNjZXNzIG9u
bHksIGFzIHRoZSByZWFkIGZvcg0KPj4gcmVndWxhciB1c2VyIGNvdWxkIGltcGFjdCBwZXJmb3Jt
YW5jZSBvZiB0aGUgcHRwIGRldmljZS4NCj4+DQo+PiBVc2FnZSwgZXhhbXBsZXM6DQo+Pg0KPj4g
KiogT2J0YWluIGN1cnJlbnQgc3RhdGU6DQo+PiAkIGNhdCAvc3lzL2NsYXNzL3B0cC9wdHA8Tj4v
dHNfcG9pbnQNCj4+IENvbW1hbmQgcmV0dXJucyBlbnVtL2ludGVnZXI6DQo+PiAqIDAgLSB0aW1l
c3RhbXAgbGF0Y2hlZCBieSBQSFkgYXQgdGhlIGJlZ2lubmluZyBvZiBTRkQsDQo+PiAqIDEgLSB0
aW1lc3RhbXAgbGF0Y2hlZCBieSBQSFkgYWZ0ZXIgdGhlIFNGRCwNCj4+ICogTm9uZSAtIGNhbGxi
YWNrIHJldHVybnMgZXJyb3IgdG8gdGhlIHVzZXIuDQo+Pg0KPj4gKiogQ29uZmlndXJlIHRpbWVz
dGFtcCBsYXRjaCBwb2ludCBhdCB0aGUgYmVnaW5uaW5nIG9mIFNGRDoNCj4+ICQgZWNobyAwID4g
L3N5cy9jbGFzcy9wdHAvcHRwPE4+L3RzX3BvaW50DQo+Pg0KPj4gKiogQ29uZmlndXJlIHRpbWVz
dGFtcCBsYXRjaCBwb2ludCBhZnRlciB0aGUgU0ZEOg0KPj4gJCBlY2hvIDEgPiAvc3lzL2NsYXNz
L3B0cC9wdHA8Tj4vdHNfcG9pbnQNCj4+DQo+PiBbMV0gaHR0cHM6Ly93d3cuaWVlZTgwMi5vcmcv
My9jeC9wdWJsaWMvYXByaWwyMC90c2VfM2N4XzAxXzA0MjAucGRmDQo+Pg0KPj4gUmV2aWV3ZWQt
Ynk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
Pj4gU2lnbmVkLW9mZi1ieTogQXJrYWRpdXN6IEt1YmFsZXdza2kgPGFya2FkaXVzei5rdWJhbGV3
c2tpQGludGVsLmNvbT4NCj4NCj5bLi4uXQ0KPg0KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGlu
dXgvcHRwX2Nsb2NrX2tlcm5lbC5oDQo+PiBiL2luY2x1ZGUvbGludXgvcHRwX2Nsb2NrX2tlcm5l
bC5oDQo+PiBpbmRleCBjODkyZDIyY2UwYTcuLmVhMWJjY2E3ZjdmNiAxMDA2NDQNCj4+IC0tLSBh
L2luY2x1ZGUvbGludXgvcHRwX2Nsb2NrX2tlcm5lbC5oDQo+PiArKysgYi9pbmNsdWRlL2xpbnV4
L3B0cF9jbG9ja19rZXJuZWwuaA0KPj4gQEAgLTU1LDYgKzU1LDI0IEBAIHN0cnVjdCBwdHBfc3lz
dGVtX3RpbWVzdGFtcCB7DQo+PiAgIAljbG9ja2lkX3QgY2xvY2tpZDsNCj4+ICAgfTsNCj4+DQo+
PiArLyoqDQo+PiArICogZW51bSBwdHBfdHNfcG9pbnQgLSBwb3NzaWJsZSB0aW1lc3RhbXAgbGF0
Y2ggcG9pbnRzIChJRUVFIDgwMi4zY3gpDQo+PiArICoNCj4+ICsgKiBAUFRQX1RTX1BPSU5UX1NG
RDogdGltZXN0YW1wIGxhdGNoZWQgYXQgdGhlIGJlZ2lubmluZyBvZiBzZW5kaW5nDQo+U3RhcnQN
Cj4+ICsgKgkJICAgICAgb2YgRnJhbWUgRGVsaW1pdGVyIChTRkQpDQo+PiArICogQFBUUF9UU19Q
T0lOVF9QT1NUX1NGRDogdGltZXN0YW1wIGxhdGNoZWQgYWZ0ZXIgdGhlIGVuZCBvZiBzZW5kaW5n
DQo+U3RhcnQNCj4+ICsgKgkJCSAgIG9mIEZyYW1lIERlbGltaXRlciAoU0ZEKQ0KPj4gKyAqLw0K
Pj4gK2VudW0gcHRwX3RzX3BvaW50IHsNCj4+ICsJUFRQX1RTX1BPSU5UX1NGRCwNCj4+ICsJUFRQ
X1RTX1BPSU5UX1BPU1RfU0ZELA0KPj4gKw0KPj4gKwkvKiBwcml2YXRlOiAqLw0KPj4gKwlfX1BU
UF9UU19QT0lOVF9NQVgNCj4+ICt9Ow0KPj4gKw0KPj4gKyNkZWZpbmUgUFRQX1RTX1BPSU5UX01B
WCAoX19QVFBfVFNfUE9JTlRfTUFYIC0gMSkNCj4NCj5JIHdvdWxkIG1vdmUgUFRQX1RTX1BPSU5U
X01BWCBpbnRvIHRoZSBlbnVtDQo+DQoNCkZpeGVkIGluIHYzLg0KDQpUaGFuayB5b3UhDQpBcmth
ZGl1c3oNCg==
