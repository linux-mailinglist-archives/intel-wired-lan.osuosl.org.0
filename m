Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F615A307EA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 11:03:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28AF841303;
	Tue, 11 Feb 2025 10:03:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bkq6flqweABW; Tue, 11 Feb 2025 10:03:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2595641295
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739268218;
	bh=mgTvu826J+fh420tsrfecPVcJhIYcy4swbOzdj8IghM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=A0Zc1SuqFJE3MCMHC/1+A9d0+1kfsZUE2sck6F4BtYJWFTzDB2QiF7caGXM3BM+QY
	 hQw47dTaK7qq/DKD1560Hx+nuRDRsB+OussRUrhUsNf6lHjR+xx7faCiOc22+8/t8f
	 HJs9GomgrGIAeJ84JJ+Ye9gn+C6dmJtgZzcZqEyzpA4DC+xQEj8cjgdCmReQZ2UdtY
	 GCpEE+ufEeeYoCRGnGPR6a3zWMGZtzQxF+GoVq/v41oXQEMehC9diPcPeWuRV46HEa
	 bE3oF2sSkAikvLyry77rgHE8qKZlIEdFGxy4y8rgNiHPzNzOKLfU5d0zZvPEchXI5C
	 b0hIGm8Op5Vyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2595641295;
	Tue, 11 Feb 2025 10:03:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2D5A5194
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 10:03:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0BF0380CEE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 10:03:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kvOdG3YO-bRk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 10:03:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3641280CB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3641280CB3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3641280CB3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 10:03:34 +0000 (UTC)
X-CSE-ConnectionGUID: HJGeQ+c5QDeFBnXstFpaQg==
X-CSE-MsgGUID: Q+F4d3S6T5ON/7kSnHqCXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="43807029"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="43807029"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 02:03:34 -0800
X-CSE-ConnectionGUID: uzVdFfmSQOyiAgQWB7EfSQ==
X-CSE-MsgGUID: 6LKTSEFLTeCOTbbxQLZ2Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="117493057"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 02:03:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 02:03:33 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 02:03:33 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 02:03:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B/Gk4U+3yJWYUzqio0rioNimaNgkasP/0oirVgd3Qyu7luMtKOgllIuogjP284Sd1A7e0JkNx9E0jSU+PWyZIJIwzD0TQufPHt1W4JIkzHowTjOIFL+AbjWmguyBuvc2wbhrCfuvvopcPJDRk3cVPQULqxkdoUH72q7petdyUW6qwuD02saPHRkyFKNoW6EB4zFH6W3SBhj1C6KbP/pSLQFNeT8gft6A2cNIFzogqrX8BJhbBiMrZ3ZdeYpHvz+F+mxIZBSQ9Qyizli0Q6jTi2BEkt3cObydMRLStBQ5v520hHvayAcDmFTkOzHW8d4B0tEVtKy8VOBXeRrwVvU4Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mgTvu826J+fh420tsrfecPVcJhIYcy4swbOzdj8IghM=;
 b=KPlz15jv6JsV5niFrN+lQ0FlG9G7FAIrSzrl8wJ/R6oPnMnokk3Vd3ivp8gd4GmOw0ySFBQIDYOr3am0yIrYD6JHlWJyRv+Wb908z8ffOAMyxpxO3P9QrlpsCNFGLeDR2Iu6okkUWvfkkce8TNK2T1bIuUGFaIpZJhsRwaVogT9QKfOSWVnYu/vEbmdHI8dlz+hzMfP/ktOJcAi5J6pCfOL0es16milbZecGSNqLuVhLCvDRVUMuM7bPyF+EXF9dJFEMcPt2IMNCYnAPJJnR/XF90r8vkpwMGqQk4pS0InZ57adsQjVdoOzSI2lBB6sOUzEv/G38jL5M6t4X7s4KHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 PH8PR11MB7021.namprd11.prod.outlook.com (2603:10b6:510:223::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.17; Tue, 11 Feb
 2025 10:03:31 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18%6]) with mapi id 15.20.8445.008; Tue, 11 Feb 2025
 10:03:31 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Andrew Lunn <andrew@lunn.ch>, Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Simon Horman <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: add support for
 thermal sensor event reception
Thread-Index: AQHbe6oYUcw9MSBhO0m17sppypxQfrNAadMAgAACY5CAAAUqAIAAGSeAgAFUsAA=
Date: Tue, 11 Feb 2025 10:03:30 +0000
Message-ID: <DS0PR11MB77856580F83D80DE883C82F0F0FD2@DS0PR11MB7785.namprd11.prod.outlook.com>
References: <20250210104017.62838-1-jedrzej.jagielski@intel.com>
 <87644679-1f6c-45f4-b9fd-eff1a5117b7b@molgen.mpg.de>
 <DS0PR11MB77854D8F8DEEE0A44BB0E17EF0F22@DS0PR11MB7785.namprd11.prod.outlook.com>
 <442420d6-3911-4956-95f1-c9b278d45cd6@molgen.mpg.de>
 <7085302f-af69-484a-8558-2aa823379fbe@lunn.ch>
In-Reply-To: <7085302f-af69-484a-8558-2aa823379fbe@lunn.ch>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|PH8PR11MB7021:EE_
x-ms-office365-filtering-correlation-id: b84ce751-5b3f-465a-f0c7-08dd4a83568c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TTVaaDZuVkVsYUpzamQ3L3BPUmY5eFN0NXJhaGRFRFdVQ0RqYzZYOUZ6ZWdE?=
 =?utf-8?B?WmFLc2t0ajRDNGhOdmE4UWNTTjRQN2IzZW9RNVYreGVBbi9hRXhGR0puL3Rz?=
 =?utf-8?B?cUVVZlR1MmpWbWlzWnhJZHBPeEFqdG52V3o4S0NKcWhVNUtCdUNjNWlkS1E3?=
 =?utf-8?B?NnB3a0ZUWlViWU9rT0NmMWRFMGhFejBwVmlrVkFxRFJ3YzRrbTI0SlYxR05a?=
 =?utf-8?B?M1JPWDRoVkhjQWJYT1AvNkljOTBGbVppWmo4QlFhSmJ3SE9LS0ZsWEhRK2Vl?=
 =?utf-8?B?Wm5HT0JET0VMbFdYRy9zWUF6YVRNK3Q4UzUvRTVmM1JMN0xQZ1gzd0U0MURx?=
 =?utf-8?B?L1EyZklKeUpjVWc3TEJpakdVM0tBN05HRkxWTDRYajdQbnVaWXE3RCtDOTRY?=
 =?utf-8?B?M3k0aGxyeCtTOTVCREp6NTY2REg0WXVDN0xQbVRlbFpNTG1Xd0UwSnRlbk1a?=
 =?utf-8?B?VmpzZzlTNU52Y1pjeU1RK0tKL0RHRmxscGdPSVFJcjNWbkVDTGIrK2xyL3p1?=
 =?utf-8?B?MDg1QWo1UHlibnhFcCt1Ry83c2dCQ0xubmNBNFplOFljek5aZDRsb2RVbVds?=
 =?utf-8?B?dXN0R0c4Ukp3UzZtajNOR2RPZnhjRUlTZ2U5NHUvL1hIWFh5WEcrSWs3dUo2?=
 =?utf-8?B?R3pEWnRLZ1hYZkpYVmJHNHVkb1lleHNHc29yWWxwaTZqZTl4VzFxaFpKLzVp?=
 =?utf-8?B?QkFHUGRVaXZvbUFrM0RlQUswMlpmbm1MNSt3LzNQcDBTWkhWVEFqclRGZEFY?=
 =?utf-8?B?d2kxRXdjSDRtYW1YeGc2Nk1VZU14TTRUT1NTWm1kVDRJc0FwcjFmcmc3RWJ0?=
 =?utf-8?B?eVRlMDlSZ2o4NC9uRWRBa2RWZlFZOFVhcGpyNmltWkdraUJkQW1xejUzc3JY?=
 =?utf-8?B?Y0FJbFM0aFdUb0hZL3J2NXRnMTYxR0ZLWHc5OFhHKytQaG1BNjlRSjZqNkpw?=
 =?utf-8?B?RTUrZGUrVzRKRlJqRXBIMDlybGJBeURIcXBuWVdZamo3Q1o1SFBvYllHMGwz?=
 =?utf-8?B?clZ0SmRSQW96WlBoYlVDOE1xaFpQMUIwcm0xYlpHYWxnQlVnYTF2WWw4Y0lT?=
 =?utf-8?B?UlNJelkxK2pjbkl5QytGZFg3Yml1YVVaVVRTcmNlQjFQbDV2TjVKTS9TWitP?=
 =?utf-8?B?SlFZUXNqL0pCcEdpcEFBbWQ4TWRzRnRLWE0zajFUN0xTOTREZS95bjllcXM2?=
 =?utf-8?B?QzFJak1mTUpMYnp6Vkw5Y1NCNU8vamJiWGE0L3d2Z1JvZitITVpta1VrTDFj?=
 =?utf-8?B?N29PbDBkSmJSeUpWVytZc0RYcG0xM1h3Y2JDc0JrVVR5T091OHFzMDRoUU9u?=
 =?utf-8?B?eEJXV1hZMi9ielpSeFJhQXlXYXNYY1pCdnZISUoza3pzNTNEdjJpbWh0ODZC?=
 =?utf-8?B?V1hTU01oL0xsSUtFY3Q3Vkk5V29lOVYwNmN2bGR1MU9GQjZubDdJV3Nid3lW?=
 =?utf-8?B?ekZlZ2JDMFBxdnRNZWpobzhyUW1zakJ2TVMxbkpzMjZCUHdwdWc4TEJhdjF2?=
 =?utf-8?B?NWpQOWNmK1ZjbW5xYWIyakRDUUpPT1hMa2g5cnJlLy93Z0xNYkZTaFkySW9H?=
 =?utf-8?B?UXpSUFl2bWFJVXhVNlBRNnRHdWl0UFhOWjI4QzdhMTJLNnVxc2ljdEFGRHh6?=
 =?utf-8?B?UTMzZTQ0T0x4Qjd0SW12WEVNQWN5aFFkL1J0cG9OYThtSmZZS0MrUVNMcHVD?=
 =?utf-8?B?czVTVEJvMmtZdVZ4em95LzJlNk5ZSzRnU1Jhc2xhSVB4QlkyTEY2cE9lTzls?=
 =?utf-8?B?Q0d5TVdQNWR2ZUp4QTBjQytKbWJScnE3UzNFOXRwYmhTYUxCZjgxTTFaZlZV?=
 =?utf-8?B?M1pIOXI0dmhhTDFDazRGK1Q0WC8yNGp0c2VTMzBTdmMxZnZLVlNiYVZRV0Iz?=
 =?utf-8?B?aVN2MVV1QnJ2S1UyeVFxYzZOS0lMR1dFVGV5SnRkZFBzK0tkajJCRlU2Slcx?=
 =?utf-8?Q?Pw2EKalFleRdCHddfamvKmj1ZwZ24NA5?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WXl1dXd4OFd6czdkbkZrSkRNVE13d2FabktVSyt3L3crbmlNamtsYWI0R3pR?=
 =?utf-8?B?QU5ILzdvWVVQNk5ZS3UzNTAvUTVPVDl4STd5VWNndlVCVTVuc0hGaEJrUnBM?=
 =?utf-8?B?Z1FVZko4c2VLempmSUdYZnUrU2NLYStGMkQ3WWxiS08rUGxudjJ0OWorTnRC?=
 =?utf-8?B?ZVpCTlNDS1owdHFLKytvRHFIYk9CelV0aXRLVUs5V0RuMjlSTDlpSkZNbVFD?=
 =?utf-8?B?Q20xdVFMUWVhUmVRMWlCWnV5WW5SZmxkbnd4UDFrVWxpZHZMeE8xYjAwNzM5?=
 =?utf-8?B?VHpjSUsxSXhJZGlwcjkrQWVPYXE1MnVTRHkwUUk3ZUFtZWpHMHcvV0daUlRK?=
 =?utf-8?B?enpNWG5QdjdRbGdHTDR1dGNmczlRR1dMSzdoRTFpL0cvalpVWWxSV0k2Wjdw?=
 =?utf-8?B?MVYxaW5kUFpKUFo4bHlZU200TGZvdTRIbFFmTkhGdUJMa0RqdkwzVUdHRGVC?=
 =?utf-8?B?S3hPM3lzUFgxOHhtWndMWFAwS0dDQkNRT3lRK1JwK0lvdEZzdCtURklwaTlk?=
 =?utf-8?B?amtWMHZlMDM3UnIyalNvdThoRVhtUWtneU5ZNDVWZUs0ODk2NkJvWEh2TDJm?=
 =?utf-8?B?NW5jTC9GWjd5QkhHTVdPOGM4cUwzTjFjeGdaWWZRWnd4RVFLSWJvUExsT1ZJ?=
 =?utf-8?B?Z2NZMk9OSGVwYi9HdDJza3cwVllOTS9vcDNDR1FFWVNXSWxtcHVGbVhwczg1?=
 =?utf-8?B?T0tFbFQyREpOWk92KzVuS0tYV3ZObExhWi9abkFOUXNmWkh0YnZ3Y2MzcHp5?=
 =?utf-8?B?YWwxczgzcWdpL2NOb1ZzdmppTmU4OWNGc1BZNlRZdDdSREVId2ZXUVNXOENL?=
 =?utf-8?B?MkJ2MU9vMFd1d2tDYjdZSVU2NWdsWWVjNElwWjJCcUJIUmtFTEdPNDZveHU0?=
 =?utf-8?B?QUd6MFBZWTFLT3NIZE9VZmZJTSt0QmQzWTZtV0ZUTHg3b1AwL0tPNWJaOUtw?=
 =?utf-8?B?ZTM0bDFpTFhVVjg4bTB5bTFzUFdmcklHamI1V1lvTFMyclNsVVVwOW5wYzJZ?=
 =?utf-8?B?dGNFNld3dEZmUEpvaUtHd1hyeTRZeDN0RjNFT3lva2c3NHZqVGgxZ1VRak5w?=
 =?utf-8?B?WWNOcHJJQWkxTU9Mbk01am9QZU1yWG9oeXhmc3hDYlZQaVdibmlZRnRqTm5M?=
 =?utf-8?B?eHhzUFRSSVNPUmZEVFh0dWhFN2QzeHc2d3BkRDRvR1FqMDJIOW5UWmhhNHov?=
 =?utf-8?B?dlVtbno4ekhrWC9NVVJLQW81elpWMDhGZU1uTTd1bjIwV2dLZFRsZWVhbm5T?=
 =?utf-8?B?M2RudmNuSHU5a1dSUlRlUGozMkIxaERkZVpWem1ZcnkvM204L0JSZ3ppMUhm?=
 =?utf-8?B?ZmI0cndZbGM4Vm84RytiQUlrdEZFK0V1bVNQbHFwQm1ocXNhVE4xaFJWWnVE?=
 =?utf-8?B?TXgyWjRWT0NqRnhFRklMTi9pTnY0UXpBaFk1UHo0bVEvVXU0R1FuVGd6anJr?=
 =?utf-8?B?TzdrQkhPWlpSeHc3R3dxY3pKdjJJRzE4SnZOekxQeW1Yd0NFZ3FmeWxpTmI3?=
 =?utf-8?B?VkVHTWxaaDV4elhBMjBBZG1tVHEvZ1J6TGdHWHE3cEMwSGdkUzhueDFHZW8r?=
 =?utf-8?B?QTJvL2hGSUdWUzdUL25FN3A4R2tBbnRtSXBhZkI2K1FNVjhLUjQ0TXQ5S0xL?=
 =?utf-8?B?aXpJWmZCYmpTY2xoZTk4VFhpaldSME1yZzNabk56QjVZTGFoLzRzdFFsd1lj?=
 =?utf-8?B?a0FkdFMrU0NpM2tzekVOTFBwVkNjaTlnMTRpRHlDeXNReU00VTZSME9LS3Ju?=
 =?utf-8?B?VGFvY081VG1DT1dEeEtzM202SU5BZXFoOW5Sc1A5dTI2dTUvUHNHc0c3MHhZ?=
 =?utf-8?B?TmN2d1NGTVQ0SFg4VHgweUJEcDhrVjY2Vit2bVlOZXJOcXZkaXhBcWxJQWlv?=
 =?utf-8?B?aFJEb0RlZkRTZldtcGRSYWRkNG9FVE1NcXdkaVZOekE5UTlwM2htYW5NS3FL?=
 =?utf-8?B?TmZFaFZlNWxVcEJKb2ZieUt2OVRuM2MxaVE1MWtIVHc5UjVlV0Zjc1pRd1lh?=
 =?utf-8?B?K2VlRlc2R3BiaDBLUERPTFQ3OUJXbDArZ3k0eVM0dlBpektqUThSNFU2dDZh?=
 =?utf-8?B?OUVMdlZtRDUxcnFQak8wQy96NGVNczErNTZYcUc5UFhIOUVET0wzeUhuTXIx?=
 =?utf-8?B?L2ZOVHRERjN1OSs1SnRpb0NZcFQvZXZRU0xZSmdPTTJUcklJREJvL2V6cDZk?=
 =?utf-8?B?QVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b84ce751-5b3f-465a-f0c7-08dd4a83568c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 10:03:30.9119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9pg66mJQDhpqT5NTA7XEP84AwCEjU3D/+MIpxQefXnOM7uXM6956fb6GTKZ9QGdvEUnpRX251JO+8puyptnWJhSKnA2DMY4fh1KSJIlAdiY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7021
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739268215; x=1770804215;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mgTvu826J+fh420tsrfecPVcJhIYcy4swbOzdj8IghM=;
 b=V44gWYzjnVQTPHTc3AAGYNJ2z58tVw65k/nDUWc8NMrmwhBM4bCQ/o4a
 /Mb/XEN0FdwLo66gJCzJX/vVdyZ60zOahNB13fpIb3sfcljTwbzW1hqk6
 hw6Td7i3coXVYisKmi/VUaDxF3UdBC3O1DRKFwlIFwkbNiMkYZ6Ky5Rog
 +j5O7y4napZD7MTnoxzdiR4tCjDc4siZqDfzafjlpE5RU21lzepxtSjfo
 Vz7I0whnUHEk2iSQn5cNbmUGAbxOTQJ+TeHzabUTjtlztJIgCLjO4+J92
 xCiyglnNFdz4IEV4rOcyxCWDLR6ze8YqTKlCdv2JNNdAMw+wTEf0QJ3Tn
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V44gWYzj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: add support for
 thermal sensor event reception
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

RnJvbTogQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPiANClNlbnQ6IE1vbmRheSwgRmVicnVh
cnkgMTAsIDIwMjUgMjozNyBQTQ0KPj4gPiA+ID4gVGhlbiBkcml2ZXINCj4+ID4gPiA+IGxvZ3Mg
YXBwcm9wcmlhdGUgbWVzc2FnZSBhbmQgY2xvc2VzIHRoZSBhZGFwdGVyIGluc3RhbmNlLg0KPj4g
PiA+ID4gVGhlIGNhcmQgcmVtYWlucyBpbiB0aGF0IHN0YXRlIHVudGlsIHRoZSBwbGF0Zm9ybSBp
cyByZWJvb3RlZC4NCj4+ID4gPiANCj4+ID4gPiBBcyBhIHVzZXIgSeKAmWQgYmUgaW50ZXJlc3Rl
ZCB3aGF0IHRoZSB0aHJlc2hvbGQgaXMsIGFuZCB3aGF0IHRoZSBtZWFzdXJlZA0KPj4gPiA+IHRl
bXBlcmF0dXJlIGlzLiBDdXJyZW50bHksIHRoZSBsb2cgc2VlbXMgdG8gYmUganVzdCBnZW5lcmlj
Pw0KPj4gPiANCj4+ID4gVGhlc2UgZGV0YWlscyBhcmUgRlcgaW50ZXJuYWxzLg0KPj4gPiBEcml2
ZXIganVzdCBnZXRzIGluZm8gdGhhdCBzdWNoIGV2ZW50IGhhcyBoYXBwZW5lZC4NCj4+ID4gVGhl
cmUncyBubyBhZGRpdGlvbmFsIGluZm9ybWF0aW9uLg0KPj4gPiANCj4+ID4gSW4gdGhhdCBjYXNl
IGRyaXZlcidzIGpvYiBpcyBqdXN0IHRvIGluZm9ybSB1c2VyIHRoYXQgc3VjaCBzY2VuYXJpbw0K
Pj4gPiBoYXMgaGFwcGVuZWQgYW5kIHRlbGwgd2hhdCBzaG91bGQgYmUgdGhlIG5leHQgc3RlcHMu
DQo+PiANCj4+IEZyb20gYSB1c2VyIHBlcnNwZWN0aXZlIHRoYXQgaXMgYSBzdWJvcHRpbWFsIGJl
aGF2aW9yLCBhbmQgc2hvd3MgYW5vdGhlcg0KPj4gdGltZSB0aGF0IHRoZSBMaW51eCBrZXJuZWwg
c2hvdWxkIGhhdmUgYWxsIHRoZSBjb250cm9sLCBhbmQgc3R1ZmYgbGlrZSB0aGlzDQo+PiBzaG91
bGQgYmUgbW92ZWQgKm91dCogb2YgdGhlIGZpcm13YXJlIGFuZCBub3QgaW50byB0aGUgZmlybXdh
cmUuDQo+DQo+VGhlIG9sZGVyIGdlbmVyYXRpb25zIG9mIGhhcmR3YXJlIGRyaXZlbiBieSB0aGlz
IGRyaXZlciBhY3R1YWxseSBoYXZlDQo+SFdNT04gc3VwcG9ydCBmb3IgdGhlIHRlbXBlcmF0dXJl
IHNlbnNvci4gSSBjYW4gdW5kZXJzdGFuZCB0aGUNCj5oYXJkd2FyZSBwcm90ZWN0aW5nIGl0c2Vs
ZiwgYW5kIHNodXR0aW5nIGRvd24sIGJ1dCBpIGFncmVlIHdpdGggeW91LA0KPmFsbCB0aGUgaW5m
cmFzdHJ1Y3R1cmUgYWxyZWFkeSBleGlzdHMgdG8gcmVwb3J0IHRoZSB0ZW1wZXJhdHVyZSBzbyB3
aHkNCj5kcm9wIGl0PyBUaGF0IGFjdHVhbGx5IHNlZW1zIGxpa2UgbW9yZSB3b3JrLCBhbmQgbWFr
ZXMgdGhlIGRldmljZSBsZXNzDQo+ZnJpZW5kbHkuDQoNCg0KQWN0dWFsbHkgdGhlcmUgaXMgb25s
eSBvbmUgYWRhcHRlciBhY3Jvc3MgYWxsIHBvcnRmb2xpbyBvZiBpeGdiZSBhZGFwdGVycw0Kd2hp
Y2ggc3VwcG9ydHMgdGhpcyBmZWF0dXJlLiBUaGF0IGlzIDgyNTk5LCBub25lIG90aGVyIHN1cHBv
cnRzIGl0Lg0KRXZlbiBuZXh0IGdlbmVyYXRpb25zICh4NTQwLCB4NTUwKSBkaWRuJ3QgcHJvdmlk
ZSBzdXBwb3J0IGZvciByZWFkaW5nIHRoZXJtYWwNCmRhdGEgc2Vuc29yLg0KQXMgRTYxMCBpcyBz
b21lIHR5cGUgb2YgZXh0ZW5kaW5nIHg1NTAgaXQgYWxzbyBmb2xsb3dzIHRoaXMgcGF0aCBhdCB0
aGlzIHBvaW50Lg0KDQpUaGFua3MNCkplZHJlaw0K
