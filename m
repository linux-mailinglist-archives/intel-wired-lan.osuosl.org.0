Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBCDAC0E29
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 16:33:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6433983D20;
	Thu, 22 May 2025 14:33:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8G-n4T9kIes4; Thu, 22 May 2025 14:33:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D23F583D21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747924407;
	bh=7/Nypdg39EX8pTT18Dpih+WVyV86UcLeMMWzlbknY60=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jVVzfFeLwKm6qtAlQYy8v/reXrcJI6aODXzIAVoV9M2Cu8UPnbIOO7DaOkw6yGY9E
	 7klASUElVcxfPUHE6sEYce6c27hc7CgHtyPMKODwr0pH+86lAWY/PKl8DQYM1wd91c
	 7jrUrv74RQP0l+A0sBYX2lsrJQlgqYv+ttsMarF1Nnk6/Fj/+u824/VDD1iAPtyF/z
	 L0fOF+sPiy4XYQkz9x36BnDWqBEJiID1TvXqoZPSzrmVKcT79+YtG7SVVrWsk9Rt8y
	 GqAhVQCkxe7xO4Xbflrd4CCuJfTTj8TFqP/W3KcCZT+wPo9RcEKwqoxK3MZk0zOfeN
	 WYkCsd6BFAmZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D23F583D21;
	Thu, 22 May 2025 14:33:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3EB8ABC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:33:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C38883D20
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:33:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fkx7iekzK_5f for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 14:33:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9844B83D1E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9844B83D1E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9844B83D1E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:33:25 +0000 (UTC)
X-CSE-ConnectionGUID: g203cy9dT32owdosiGJNIA==
X-CSE-MsgGUID: fMyd7HOFQXCoauD0ipovtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="52582801"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="52582801"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:33:25 -0700
X-CSE-ConnectionGUID: wRZuCtLRTM2t6pF9X9Wi2w==
X-CSE-MsgGUID: YT7AL3bfRTKyXNrXHpAKOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="141561685"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:33:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 07:33:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 07:33:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 07:33:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Do1OYWHCJv4O+TOMs/NLaYQFOxv+2FoPmKDHCkBiN6Hvl7Uzj+/cBzHr0hJdVbtUFf6Zt+cMVNHAXe0Tp6VU58NNWVNKNI83AqY5QLtFwpfxgpC82q8rk3MmfluUxkd5snYPCOAnGK4GjK2JGp/LJ8ca/Tf0f+QZBaj/QBv45/OxKk1rUdQTpFUcwHvlicybB/aIjOOcmDFlSsXYqbSYK589O1iAWlUSVU2o+yExd+miOKIejNhb+e6ZUWHiq3Z9+FLE/MwawuF1/nGesXfiY05ANCBYtNMockFGVW6CAE95G0FEymZ+/AXaZkOpha1mnIb1eYlSKuLHVEM2ofu7tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7/Nypdg39EX8pTT18Dpih+WVyV86UcLeMMWzlbknY60=;
 b=btRA9f3rcl7hk7plGytoDXyH0OUDROau+G6LNIa6xxdp0tDzAwj/w/AVkgAhJnOBmeivDrjzLjN51SWqEd5uJo27uWMgSGpE785uYVDqvojZA941k5HiLZlYNTKBWhyQ4dDGMUD0dFvMAP2S0XingrRoKH6LPn+RSlFk4n5CPNnCasxbqUL5pR570JAkS1Mbe5W5DHDikQNgCv9Ua2BjY1Ro7hHO7K0UNyFAMgeiNZh8+XWagydwUkrcJFddEulZYgQo6SeUMhkdOYZ6YYP7S29quia4NsMQ/qr94fo19ZIHEls/+/PZCa5fANOwjDtwneu1VdKzJx/V8RlVdJWgbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SA3PR11MB8021.namprd11.prod.outlook.com (2603:10b6:806:2fd::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.21; Thu, 22 May
 2025 14:32:54 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 14:32:54 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, netdev <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v4 11/15] ice: add multiple TSPLL
 helpers
Thread-Index: AQHbuuwvKrEtoVszh0G0vcOe08Vgn7Pe1q5g
Date: Thu, 22 May 2025 14:32:53 +0000
Message-ID: <IA1PR11MB6241669345823DD7AEE352DB8B99A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
 <20250501-kk-tspll-improvements-alignment-v4-11-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-11-24c83d0ce7a8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SA3PR11MB8021:EE_
x-ms-office365-filtering-correlation-id: f096cb13-0c9a-4779-21ab-08dd993d89d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YUNZNHZqV1BPUnJRak5XcGVBVTMvZ2JQZmt3NEJmV1B4Vmt0V1hFSUNTeE82?=
 =?utf-8?B?RmprTTE0UHVmL1hidWJIcWF4cm5ud05BaFRsVlF4RVl2WEJXYVptSTlqbUtG?=
 =?utf-8?B?cURZQVpYekVkbVJ6OE9FUGVRTnF2RS93WFo4V2tsVzhCcUZBK3A5MThNRmIy?=
 =?utf-8?B?cGpyV2pIY0VuUkNsQ1JSbUE1LzBCRW15TllXTjdMdit4TDZiWW8raTJ5bjl5?=
 =?utf-8?B?R1FPUkxURnN6SnYreUw2WDJtTnpJMFBnTXpydlVSWngwLzRWNndlQllLL0c1?=
 =?utf-8?B?Wk1vTHYrbW9uc0VOQ1pnMEYrZUdqL2RISVJBMmNHTFFQQlZUcjZTYmZYcTRx?=
 =?utf-8?B?MnJlVWdGRzJrUENEeUVxVkRad1UvZFBreXRzT2x6TmVLWEdrNTJvcHhIcWZw?=
 =?utf-8?B?NHV0UW1CMzgweVo1K0Flems5QmFMQ1RDQ0hKd2cwTTNFRy9uREdmQzFtYjdM?=
 =?utf-8?B?RHQ1Qk5kd1I3QU5QZnRUbG1JRmt6dFFVbS82aUVsaXdkUVRJdU9lN3dUWUsr?=
 =?utf-8?B?bzVOY0pFMGtmS3hpQU16enlsV1hBU01qSzIzSVN5aXFHbmpVUDBKRHRINjhz?=
 =?utf-8?B?dld1eXdKVmFRbEtkNXFmOTJPdThGQkZvcDhydE81bjNoLzIwdm9EMFZIKzFh?=
 =?utf-8?B?UTd2dFN0WURvQjQvbGl2QUIrZG5Hb3VjUWxrUXFrRkN1OGJyMEs5TWoySEhP?=
 =?utf-8?B?OEM3SHh1dmVlN2xWS0E4NjhTS1VLaWo0VUlMNFpIRXpXNXIrdUdGc3FlQVZX?=
 =?utf-8?B?cVdsRytBVHoxUndsZmFLcGFhY1dOSTlXbXViQkVhUk9kVDB2NmE5NUcrRDVJ?=
 =?utf-8?B?ejdrcHJZbTZLMTlEeGNoTTZFVElpZVFud2hZMC80Rzc4c1NZa1piQU1QR0JR?=
 =?utf-8?B?R2IyUVlUZU8yZGhwaDNTOUZrbU9zWklreGNMUytZc2hpQ2hHMzF5OG1rcG9N?=
 =?utf-8?B?cjQrWVdXWDFOSldrQXc5aVhzUlBkVEtLR1dtT3NIbXd3c1h0NmVXanRsL3hG?=
 =?utf-8?B?RkhNYTlzRVZ2ZisyNnBnNEhic0tkaUJSZldrZFJVRkJPRVZTZzVyMHM3NTRF?=
 =?utf-8?B?MnptNHZwRGJGT09tMzRFVTc4WXZtbjdod0NLYkhuVlprcU9uNWVKWTR6ZXVr?=
 =?utf-8?B?eTNUdm1pQlFHWVE5OS9CWmd3T3llS0JUVkR1S2RlY0h3OURPdjBEVVJqV2lR?=
 =?utf-8?B?Z3M4YjlNR1N2b2xBeDhjQkdQVUdXZUkrcVA0aXUrUXEzMDhZcmlUVWNwSXNV?=
 =?utf-8?B?U2cxYS91RllEbG5NQVptREVIdXc4bjNpMlgwQ21SYUhLYnZUbGdSWmdvbk95?=
 =?utf-8?B?VExib0pCeU9zMUErcnBHU2E4QjBSYVEvTk90Z0RKT1BaSE1nZFBMZEF0Smdr?=
 =?utf-8?B?MU9FRzJsN21Ic2QzdTVvOER3TDFSVFBjcXJ5UnhjUklFblVFOXZrNWNSRWRz?=
 =?utf-8?B?eDE4QzU0QzNhYlNDTVErclJ5N25BRTZER1hyS2NBbDVzLzFCTUEvMGV6NVI2?=
 =?utf-8?B?dzV5MHFjWmZrZm9KRDNUdTNYUVh3VlFENzM5M2JoNlU1bWlOQ3FiNEQrZkE5?=
 =?utf-8?B?MStZbWNvRkgzZWw1ZGZoTEFsNXRwbExheDRmK3M4ckZpdnQvbGZQL25mZHpl?=
 =?utf-8?B?ZE0vK21zY2pMalVWK3JjemVvL1YrRkhtVzVQckZnVkpYa3gxWThpVEIvanph?=
 =?utf-8?B?QUl0SVVhRDZZSGhOemo1WmtXdUxsOTlvR1V1NjdLV1pMR2c3N3R6Y05URW9z?=
 =?utf-8?B?UnhWcnd3eEFBWkFUY0krd212azVzM01kUEc2SG54SThyNFNzR1gwamgvcUt3?=
 =?utf-8?B?eURPek1ZaTRYdi9NRXdCdGtESHAyZ0tHeHdnKzJBTkhyKzBhZkNzZ1oyZ0Vl?=
 =?utf-8?B?ZWg1OGFyTC9FOWJBM1Q3MVZEdmI5UTJvSWVxNmhPaVFyRHRHL01ORGFGaG9w?=
 =?utf-8?B?eUhtWTVxaVBjRDZseXh1aG5ETStsLzlKSnRXRmU1bi8xa1plekZSWXRYbXc0?=
 =?utf-8?Q?kzbmKcyc8bO+/ksOvJkhvT+qH9V4ps=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UnUxN1NidVhPZVRSd3ZXdzJtL1VnNFVoUlErelBjWHRzZXdtRWM1dU92NjRG?=
 =?utf-8?B?M0tobGp1SXNOcGlFM1Zqd1B2WWpDUS9TMFhSTTRKVmdxVHRDeWVtUlNHSStn?=
 =?utf-8?B?UXIxeWZQOVRVaWVNbVJOTlFpdElYRWFFektxbFR6NFlzQnMrWFJlS1RMU01L?=
 =?utf-8?B?azlMMmJaRlJmZzlxcVFkcXRVaEltREpqYmppK3g4RDZ3M2k2c3Bna1JJZFVH?=
 =?utf-8?B?OXBUbXhKRERuQ2U1QnU2MzRiNitobTA4ajNlS1kwY3ZBbkdzMXExNmdVT2pa?=
 =?utf-8?B?RlAvREY5LzBTWnBzeXhubXowTGdSQ1NuOHBsQ2MxblFvYlVDd0kwd0NaVUlT?=
 =?utf-8?B?RXVJYWZEUkFvbU9DNTEzSUszakh6OGdna2RuRGgvTHA0dC9lQWdDMFhmL2dx?=
 =?utf-8?B?SitlZUtNaTNJeFMzWkhqNmgvMVp2d1lwakwzTEMzVTRUVmtqN1BsY3NOMVY3?=
 =?utf-8?B?Nnk3M3g0aUdya2lZUUIxWWVxRll1aUVPeGx5Y1drejNLVDB6UHFTSVdjcnRm?=
 =?utf-8?B?Z2c1b2RCNklZYUJPLytXWjZFYlI1WXNnQmJwN3NhMEV6bG5wZDgrRUFUblVV?=
 =?utf-8?B?TEhEMC9XczJPSFRtbjJ0cnVyYW9CNlJmcnlxcTcreTFsUU9KdU9ZUkYvZDJ6?=
 =?utf-8?B?NmJkcE9LcjVSUzZ4eE1seHhrSnNsUHlEWjA2RWlPNGlxMWlsNXhUNXZzMFNp?=
 =?utf-8?B?bHNUS1B1NXdIdUt4SVNsa3VyUEJhN2VzUmZHRzRDakRWUHJmRlY1UzdWeDZB?=
 =?utf-8?B?QUdUbGxvcm14ZVhhOEhPVHE3eDIzZFZ0SFRMY1hFTVc2REgvZTNPNUdER0px?=
 =?utf-8?B?M0dpK3Z6eWlHUFhGZ3U2OGcrZTg3OGwyTDBUTnlmODVWMzkwUEFSdlZTQjZU?=
 =?utf-8?B?dmxiMC9CZW9IRzRtNGF1VHVMUnJMcmxpL3pLMzJybWVXMnJsL051Q1pCVEQ1?=
 =?utf-8?B?MGRJN2FxQnhxZHRhaGthK0tRanFxWUgrZnBtdGZacSt1Z3hHelBObnJqTUJm?=
 =?utf-8?B?cUhrRndUOHYwU1dxb1VvV01LRzZpUldUOWJiM09hNXZyUTFuM3l6T1BscC80?=
 =?utf-8?B?NEJaVUxxV3NUTGdWVnMzZFg5aVdERXlkWFBrdGdjL2Voc3lyN1NjakVmcXpW?=
 =?utf-8?B?R0swcGJEVVFkSmI1cEM0TWtNa2xXZzhxNGk3dUxsUjZjRVVhWTc0WDlUdTlO?=
 =?utf-8?B?Wm1VOFNUdW5yWEcyazBicDhaUkxPd09mYUY0Zm1URTBPc2x5c3pKQjRZZitt?=
 =?utf-8?B?NDAycHdDejc3bmx1Ync5V2tRc1NVNFlEQzNsSVdxdEh3SUtLbkNmTUFOdDFL?=
 =?utf-8?B?M3VPMVo3S1ZnUGNSTHFFZlZjemRFeVRuWm81STFsVnJHd29TdG9yUk9SUERY?=
 =?utf-8?B?alFVS0lBUlM1dHFKRTBhbVlJR0prZ0JONU0ydmdrVDJOZkJkT3J4NE1KcEcw?=
 =?utf-8?B?L1V0a3VUcXp1SzE3N3h2b2pFQVFVb25DTGNhN0x4eUF5Z2gvSWZkcVdQMXhF?=
 =?utf-8?B?U1FTYWlDWllGY3ZxVUFlUHpxZUVNTHllaXpaMnVHVjlzSXhGWkZIRVZvVU9w?=
 =?utf-8?B?Zy9tTnJpLzF1SmdpYVI1TEN5VFRjRTZTekl2Uk42d3VjTlZzbnhza3NLVHZx?=
 =?utf-8?B?NUdaOTBWUU5XK1ErUHpJcjdESXNpaXFyd3BWY2UxNDk5U2w1SXRtcFdBQWY3?=
 =?utf-8?B?UHhOL1BxQWZmRERGQUwrSjZ6U210SkY4aTFCcWFKMEtEVFdZSnVqQkJPV1FH?=
 =?utf-8?B?N2UzYXNEeDI3UEFwTklHUThkZWltcWRkcElsMzdYa0xCUmJ4TWg4SytOMC9j?=
 =?utf-8?B?aER6MG1RYThNekhYbVJyaHFVcEFBTnkzMkYwRVNqdnFabVVZbFlZeEpuWXo5?=
 =?utf-8?B?QXpMVU9BTWo3R3JtTlZkN0RrT3VibUVtbUh2RWJ4Q09LbGVxVkFnKzdhRnpQ?=
 =?utf-8?B?TWRTeWt0SVIxWEJlbGFqODBaTEREdExCeHlkYUlmeWdkdGp3RmptY0tXMkxC?=
 =?utf-8?B?enFmNURyTUptYWhqaGVSbWgvaU5RWUU3REluSjlyb0krZXU0TWFQdWxSRXRy?=
 =?utf-8?B?VkplQjUxQnZSenQxWDRjN1VraHA2V2hHSUQ5UzB3UDJtOWxFSDR0cTR6aWxr?=
 =?utf-8?Q?gMQ4RB2SXRH2JpfVPwBwcLbYh?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f096cb13-0c9a-4779-21ab-08dd993d89d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 14:32:54.0351 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P4q3QzzwtM5WutCbGhOLn6HUyqmkZH4Iirb/tAq7uwd+uxuRgsNE8ykiFUS6dBgXAgTVmm71XFo5JW5evqqFAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8021
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747924405; x=1779460405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7/Nypdg39EX8pTT18Dpih+WVyV86UcLeMMWzlbknY60=;
 b=T8mUC/oNypJ+4bnTay21+McZxL01z3+uPIhyQMiDhn7xSKDFsJN0Qfhy
 zXHWXeX2rSSSp2KHsoSmB2ZWU2hNQR/HYOYoD1K5HAwjidMswn1Y7g4fz
 Ya+ScfS0Tlqp+5nfSwfNKJVb4oo6NwxocusAIyHbjoD2wv5dubd+y3nxb
 o4TaSxYM2UT+EgrpHnI/IhGwF485bHkOQoVNmvyNYMN6yZ7LA46vKsibq
 Sk+Ewd3MMCALz0WKZ7VYIdszGINCS3144xzQp9CBk8myF+u/5Bwq3n/+V
 VGNVzN+E7K6SP2M2TuXrlgtPdiIPfV6DnyFYjDml9/g7ZVQ17LvU8rslk
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T8mUC/oN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 11/15] ice: add multiple TSPLL
 helpers
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
ZXINCj4gU2VudDogMDIgTWF5IDIwMjUgMDQ6MjQNCj4gVG86IEludGVsIFdpcmVkIExBTiA8aW50
ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+DQo+
IENjOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEt1Ymlhaywg
TWljaGFsIDxtaWNoYWwua3ViaWFrQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyIDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtvbGFjaW5za2ksIEthcm9sIDxrYXJvbC5r
b2xhY2luc2tpQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0
c3plbEBpbnRlbC5jb20+OyBPbGVjaCwgTWlsZW5hIDxtaWxlbmEub2xlY2hAaW50ZWwuY29tPjsg
UGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU3ViamVjdDogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIHY0IDExLzE1XSBpY2U6IGFkZCBtdWx0aXBsZSBUU1BMTCBoZWxwZXJz
DQo+DQo+IEZyb206IEthcm9sIEtvbGFjaW5za2kgPGthcm9sLmtvbGFjaW5za2lAaW50ZWwuY29t
Pg0KPg0KPiBBZGQgaGVscGVycyBmb3IgY2hlY2tpbmcgVFNQTEwgcGFyYW1zLCBkaXNhYmxpbmcg
c3RpY2t5IGJpdHMsIGNvbmZpZ3VyaW5nIFRTUExMIGFuZCBnZXR0aW5nIGRlZmF1bHQgY2xvY2sg
ZnJlcXVlbmN5IHRvIHNpbXBsaWZ5IHRoZSBjb2RlIGZsb3dzLg0KPg0KPiBSZXZpZXdlZC1ieTog
TWlsZW5hIE9sZWNoIDxtaWxlbmEub2xlY2hAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBL
YXJvbCBLb2xhY2luc2tpIDxrYXJvbC5rb2xhY2luc2tpQGludGVsLmNvbT4NCj4gLS0tDQo+IGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHNwbGwuYyB8IDE1NiArKysrKysrKysr
KysrKysrKysrKy0tLS0tLS0tLQ0KPiAxIGZpbGUgY2hhbmdlZCwgMTA4IGluc2VydGlvbnMoKyks
IDQ4IGRlbGV0aW9ucygtKQ0KPg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEgUyA8c3gucmluaXRoYUBp
bnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
