Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB1C8BC6D6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 07:32:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C493F40692;
	Mon,  6 May 2024 05:32:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t7t4-zkB7U_E; Mon,  6 May 2024 05:32:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7549B4068E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714973549;
	bh=ZswZ2wtUsRToGlbLHVX+gt8iZPY3E69MU24zJ+2K3ok=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YLZSQhPphCjPb5FixE6tsKdcKo+5cIKfiI88A52+QLgSjgTRJH0BTKumlWm8C69tu
	 HmCcocb7mimAm3mA8BhiECbp63+7P9JWndSiRzZU7rye1eAiaEb4QnJh+Fxs06zwny
	 1eNGPCGLxmYvuwQfIoAfT3cv0wQY6cM5ElhQWqA7uZGp27meeWgNB3+7kh9+skjmsT
	 VKwi0u8MSDSYfq73Dvr/HdWCSorLYX2KAS7peBBVnv3D1B9n0fy//ak0H6NLDpZiB4
	 ib+uwN4kk3QMxQuiia4sruXcw511hyzQV4UcA+37GsVICEEU/Hq1cjpbsrb53MknvY
	 Oth2/r9Bo9O3g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7549B4068E;
	Mon,  6 May 2024 05:32:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 245011BF28E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 05:32:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0FA9F4014D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 05:32:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2o9RUkrxkV4v for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 05:32:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 29B8A400BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29B8A400BA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 29B8A400BA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 05:32:25 +0000 (UTC)
X-CSE-ConnectionGUID: BL+vC3r4Riq9e1kt1BR7MQ==
X-CSE-MsgGUID: JWh7t4+YSZG6YL0u3pw9Rw==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10864637"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="10864637"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2024 22:32:08 -0700
X-CSE-ConnectionGUID: cJgmaUBkQ+GHg9zJjVBCcA==
X-CSE-MsgGUID: KFEWJfErRx2DHyjpUj4+Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28055581"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 May 2024 22:32:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 5 May 2024 22:32:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 5 May 2024 22:32:07 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 5 May 2024 22:32:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VGZHuWuqoT9QjT8iI8WcNtJ0TqFifIeiHwh0INyJYt615cey0jUzpH++heao7ECWxnoFWzMph8nI/iK4UmeZFEGVOyyxb4XjoplX/Es5/3604O++axzlMH1Ij9T5/RLx5NyyREO9+Z1viSffc0A5wWoWFvfUyaaY1El9H6k0wpOoiUy28X2Ye03LeDYXHnyZxMIxfso9pgPgspqQEYTyVdzRidzLiCEJeQ/tuSy6q+8qvCmZDMbOFxFygyf4t/dJDSw/pqvXekVw7AbhfkBULthjdL4VBMnwI7hL604Vn1i5GeWft9VP9sMVrRuvH6lU9hnQdf07m3mHij2z1+hDiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZswZ2wtUsRToGlbLHVX+gt8iZPY3E69MU24zJ+2K3ok=;
 b=G55QHHxlmi82xIEo17ykafnDXBCP3MnT6nSAjfQTEw+iyHf3t17ZOJlDISfAXU5DDGLMrODZscizBlvU/8Lj/cfsy2yFc5pHvzKbQv10QRmo7LXCSgrG+tTHpUAMle0Hjia/9SwCA4tWB8bQFruifxUlMwQki0pdc7AOkftOINDsjkn20IMgm22anW4jwfdUpNLG4VZ0Et8b5EuohGbAxqeVQHvQ1u8FwanFhwA1Bi7hWjlFzCxgf3iONOsE2amOMJ66PYxY82qzGWKJXnUfBFHQBSm6rBDr+qeu9uW3MCuDIkF2UQXypoVgYNFDx7rNUHcbpwWnwyomTHk8zm0LCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by BL1PR11MB5255.namprd11.prod.outlook.com (2603:10b6:208:31a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.41; Mon, 6 May
 2024 05:32:05 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%3]) with mapi id 15.20.7544.041; Mon, 6 May 2024
 05:32:05 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: =?utf-8?B?QXNiasO4cm4gU2xvdGggVMO4bm5lc2Vu?= <ast@fiberby.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] i40e: flower: validate
 control flags
Thread-Index: AQHakA4H8oC9gTU1l0OioxlsondKuLGJzQLA
Date: Mon, 6 May 2024 05:32:05 +0000
Message-ID: <PH0PR11MB5013807F66C976477212B27C961C2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240416144320.15300-1-ast@fiberby.net>
In-Reply-To: <20240416144320.15300-1-ast@fiberby.net>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|BL1PR11MB5255:EE_
x-ms-office365-filtering-correlation-id: 24a6d9a2-a03b-449f-a2f9-08dc6d8ddd74
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?Z05paHgvYmlOTDFWWlhyRzRGL0EzK3M5SFJoTThmUzM0bjFUam9Kb3BaUjJF?=
 =?utf-8?B?bEswcVQwVEhIdllrWU02SlEvVXJYak81V1drQ2o1SXgxMXVFakc3MzkwQWo5?=
 =?utf-8?B?dEdmSWlLVW9ObXdqOGR6VGg1cCtFWWx4dzJGUkUwQ1pZdkw1dVU4WGxzdG1a?=
 =?utf-8?B?ekU0TjZQOUxSQ0pDRFpnU2xDYnh5SlYwaDhjMWprdGlXT0c1U1RKS3hENFNw?=
 =?utf-8?B?N2xId3RBQTVDUVNTTTJuc2FCUHdRY1I4UmJ2Z3BYeGpxNTFlS0UvVzhXRmp4?=
 =?utf-8?B?cUFOcUtzZEwxU2Rkc3E3UjJmL0t6dWxOZlVmNU9aRmVsbG4wZm13clROR0lG?=
 =?utf-8?B?OFJUYi80em13bXFGVFRBb3I3WXBmSXhyYzVvZ01VRVFEMDdrZW9ieVpUYmtz?=
 =?utf-8?B?SXdLVXRxOW0yNGdCZjUxS1MxQjFRZUIrdFFjMEVPbEt0aS9Vc3NZQ1k4WG5x?=
 =?utf-8?B?V3B1SlVhdHBWUUhsY2xHMmNoYmN6b3ROTTJiRFJtb3JHZjFWK1JpQXpobmFq?=
 =?utf-8?B?eHhFcnpRQUNvMVpVQUI4cUpmZW5UVkpPSjUyVGNSZGRGakVYQVk2Z25JV1hT?=
 =?utf-8?B?cGhjZ1FMbGx0b3dVUG1rTDFBaG1pK2NMclVJOTlBS05QSkhBclZvblVJNStQ?=
 =?utf-8?B?OWZDblNHa2EvbzhLSzlhZ0w3dkIydUtHQWpRUzlvYkpPRWNDVW9pUXhBYjFi?=
 =?utf-8?B?SlEreFE3K1p4SkJ3U2ZURlpWdlpqMW5BMnVkTFc4RTM0emRwL0ZNYS93N0hr?=
 =?utf-8?B?UjdXekNMTXNkU3lOUnFFVVpWOG55SnJBclJXbXhVNUQzQ1NQb1B3SHMwVzR2?=
 =?utf-8?B?STJaN2dCVy9laklrSnd3azR6Y0lmY2JWZDE3VzFrRXNqYmRtNVZxZGZUemZ4?=
 =?utf-8?B?QjRlNUEzZnlKQ21vME9FTzZacDRoSWtOcTdwNFFUME5wY293UVV4UW0xOVhw?=
 =?utf-8?B?NVZsV3FBTmhYVk9Qd1ZLOWJqYWZoSlBZbXQ4c0NseldYQldLRHlyMWwwN0tH?=
 =?utf-8?B?M2RsZVB3aVVGWVlIbzhmN3ZkVVVKVDBINWZ5V2p4Q253Z20yTkpaSTlDbmZ0?=
 =?utf-8?B?ellNMUl2NWU1YzZJWEhlenBsY1JpdmNjWUZMSlVSK0N4Y2Q1MTBqWkppa1Vs?=
 =?utf-8?B?cWlaRDhzYjFNajBsbFdhTEtLcHJpTysyRjRqRUNWdXR4UHRqZkx6MHF3WEtO?=
 =?utf-8?B?dzkrSTNSaUppUFBHcnlDOCtsR1lhLzIzU1JHOXMxSXR4Z2lpbk5jZzFVYksw?=
 =?utf-8?B?cUZocFNkeHFSeDduMFpFMjR0S2tLYUxaRFpEQzFBQXJjOVVBcEN0dUhxZUlP?=
 =?utf-8?B?Vm5xYXlxR2RhSDBMSWs0U2pVc29hUVFhRDc4UlFxSnRjT3NLaXd4YXZTVzls?=
 =?utf-8?B?QVp4d3BGcnE3Ym9BMFJGeTdCcWdWS2oyNm1OcWFFaGluMzBwa2RhWjUwNkw0?=
 =?utf-8?B?M0premVzVm5CR3FiTU1lbVN6RFhEVjEvbGQ0RkdaYnpjS3B1NEV1WjYxNVAv?=
 =?utf-8?B?cmtIcHcvcmVjZTBLYTNQYUdmVFlISFRDNVFJc00rb00yNGdxdWJzT0t6U21K?=
 =?utf-8?B?ekExYmtpdlorRTJ5VkFPRjJGQzA2dWo3dlBnelNBYUFWOXZGUTdLMkZlQ1kz?=
 =?utf-8?B?QjNxRFJjLzl4d2JBblprdGEzNFVSS29yMk1JeEtaeGpBM3c4OWdJQm5mOTFx?=
 =?utf-8?B?MWZxeDB1MlhHOUpTTkxZNS9kbVNnTythK1NHWmU1M0lJM3VUV3dEK0lnUHpw?=
 =?utf-8?B?VzhuYjA5eFQyTmFESmdFRkhWUks4bzNmbVRHbHJhdXVLdk1RbGRDeXRGV2sz?=
 =?utf-8?B?azlTZTR0T2R4VitCNi93dz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R3AyRmcwRUJHTUo3YzRnOC9pVkd0RzhxWXRaVW0xNHRDNnZlczBwV2FsWGJU?=
 =?utf-8?B?R01GcDNkeHNLcG1uT1hWbnM1TFhuRlJDZDVTOHgrNjZ1NmRtSkw1Z2JqVzR6?=
 =?utf-8?B?dldZTmNCNXQyL3RsdkdmSjdGZ2dqd3c2dmNRYU9jSWhoNWJDTEtTVHNWZkZY?=
 =?utf-8?B?RmY2SHNuaFQ1UGpiMU16Yml3djY5N2x4YmFtVkhPcDk2b1ZPekNmQzZacFY5?=
 =?utf-8?B?QVR0R05VR0g1OExTMEZpRzdYcUVYVnc1Q1d2YmVjUlR1VmpDWU5LZGE5NVNy?=
 =?utf-8?B?eXVFMjVlVVVsNGFtNE5kMTI3a1cwUzdoS2Z2TWJBUHZtZjgydEw5U3lJRzNE?=
 =?utf-8?B?cHQ4LzkyaDhDVmRpVVJ4eWRhakFzeUw2akdJUWQ4V3VmamRLSDFSekVjeXU2?=
 =?utf-8?B?WFp1K0t6SE43M1FTdkNHbStzSUpMeHg3ZWFhWWxidkF3dEl1TEFwamlLbGxa?=
 =?utf-8?B?N3ArWDRXZ2hNRmUrMU56WWd2eWsxVVE0RnF5ZUQxWXlCdnFIMEZ6WTVHVzAz?=
 =?utf-8?B?aHY3UnRTYWZEM0pkYWxRRGJCR2ZsSi8zNVVKZUxLTTlrVFh3ZU80NTRNemho?=
 =?utf-8?B?eXI5MXFWVUN4eWFIYlN6QXdGUGhlUFdweVJrNFhEby81M05Fa28wcWZ6VjJ6?=
 =?utf-8?B?NU1XTTdLWm9Icmx2UXNoU0NQZWN5SXkwVkhaU01xdVhLazFXUkFKU3ltdHp3?=
 =?utf-8?B?TEIxSFRVZWQxcWF1Yk5EYmtSa2Z2MjNkZ1BTWUhhbXhPdm5NQWh2NTg0Rnpa?=
 =?utf-8?B?dVJwSlFyaEtNT3VaOU5MNmZxYjM2Z3hGOC9oM2dlYmFJRGUrclV3TzR1ZUxP?=
 =?utf-8?B?QkVqOFhtWVIxZTlUcHRVYkcwdElWeVAvNkdhdnhWYUFCQkFVRHBKcS8rU0NE?=
 =?utf-8?B?VmFtUyt0aE5GLzZER2NBMmRyY3RVRjdIbWR1Kzdkb2ZtT1BxQTJyc3BzRmZt?=
 =?utf-8?B?SThkZEN4bDhsTUZ6WVNvLzhuVzBwdjlPQ2R6T3ZDQWx2NHR4elo1UHFZdlRB?=
 =?utf-8?B?aFdRaXh3ZWZlV3dhQko1eWZ2YTdYR2Rjby9rbGYxYkQ2aGRDQnJ3dTY0ZzFD?=
 =?utf-8?B?Y3lka0t2RnVnT2t4R3BibXNmajAxaW5WaGN5emE1aGN3enlmMFZKUmg2SStD?=
 =?utf-8?B?U0pXU3U5OXFMOHF5bFRybGJvUmpSRGFLWmRmcXlibkNpUHpaMFhpY3ZUQWhh?=
 =?utf-8?B?QWp0ZElnLzlXZWlscHFPUVJXYng5WVg1SXkvdnhwQXN6RGExODBEZlpOK1NX?=
 =?utf-8?B?SDNJRlJvUFN0dWpZMDg2TmovVzVxMXZzd1VTK0ZaSi9paE1uN1BrZnFWMnND?=
 =?utf-8?B?MEJjUnJ0Q0FCSjJNS2pWajNsMENuRGhOdnRvSG5nN2JZT2VGVWNrckV0L0s4?=
 =?utf-8?B?K3hxWUZyN0RuMzEyeE0rb3VtNTRPc0NhTWRsTG4xQmZBVGg0SmFCcEJKWm5L?=
 =?utf-8?B?dnUzdHh1MzdFYUVsZCtzT09tdGNrMXBaRjFHSmw2UjVIcXVZaWd1eTlIdS94?=
 =?utf-8?B?MEkrUkJZT0dQcU9yWTdoOENNdGdrN0RqSkpGL3k0dFNXSGo5SWxzQTN4TEhC?=
 =?utf-8?B?RElnUTJVb3JGZldZY04za2Jkb0NBaWVGQjRqNk9FemREdHBqMm5pQzlMN3U3?=
 =?utf-8?B?VGl5NHkyYVk3NWJ0Tm5yMVlBbFA0UFd2TG9xZmtKdWNxN2xDUVIrMGpkZzZT?=
 =?utf-8?B?TEpoYkVnWkQ1bEhSNld0VWtYZFRNUEhFTDQ0VkYwOGhWQXhyenIrU001QTdw?=
 =?utf-8?B?aG1Xay9uRXlnanVKQW1xZFNGcUdteXBwK2Q3RjdsUUEyOVpBendSLzlJYkh4?=
 =?utf-8?B?QVo1ZWYrSC9XbXlLVVhPVll3TEV4cHc2WVo1a0tPam1XVGxicUpkSUMvc1dn?=
 =?utf-8?B?aW5pWFRmYTRXaVF5b2ZmVEI4a2FqaTBjSmxOWWZ1U0RFMElWNnZXL21zVnVl?=
 =?utf-8?B?RUlNRnFlM3EyUERvTW1zZTcvUXBORld1MW5FcmZDMm8vUmFuK1QyN21odjN0?=
 =?utf-8?B?T0ZJcXNkaExvbnYxejNqRkMvSXZFYUFhanczS205Ukt5R2Y4U1NzaytqMTRu?=
 =?utf-8?B?U3M5QklSb1pNMlUzNTAvOTc2WUlJN2d5ZGRVTUZ5MHFrZEZzRnZxKy9EVkFB?=
 =?utf-8?B?ZHUwb05JOUVQbmplVGpqSDIyVXNDMVorNWpXV0h6TXNnZWhHMFcrSnM3K2ZU?=
 =?utf-8?B?UkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24a6d9a2-a03b-449f-a2f9-08dc6d8ddd74
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2024 05:32:05.2582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cLKL6KrCTeK//LkHUDKfeNoi0ynIo7lN8H0qbeHBlG29hTSFmEYvGF0J9kgEIUYsw+v9MdpeXl7OinE8+8sAfNU72WATUUvDU4Y8oXCdjLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5255
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714973546; x=1746509546;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZswZ2wtUsRToGlbLHVX+gt8iZPY3E69MU24zJ+2K3ok=;
 b=fKEmsBHqku8o1xbBJmAgiEVIRnpgWFhYiPM8liEpRrwfdjts8FhxOpxA
 9Y0oEI8ZJWY51VwLj6HXZMWzhoWae2R7a23vtfNkJym9ioUmdmhCsWFrN
 ZWqBCWUa+Da6blD5VWYSMX9FqO5eyp1zYqqSU1PI527iAidoKd3G4JUHT
 yqcfsc6W0s2/r1BxBwiRn1O+CfyfKUhPDmRhnuXhobysSGOLrmfVJsZBO
 Dw6fn6WvdN+xiEpRZVNgjuclxd41kiQVm7oLlwn7hmttSQ61SnayjXfDf
 S2DOyfYV9jt0lkJCZUcqUpORzT/UjJIuD7Tmakt3oD1EbOTH8oTIuvHmo
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fKEmsBHq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: flower: validate
 control flags
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgQXNiasO4cm4sDQoNCkhXIG9mZmxvYWQgaXMgbm90IHN1cHBvcnRlZCBvbiB0aGUgaTQwZSBp
bnRlcmZhY2UuIFRoaXMgcGF0Y2ggY2Fubm90IGJlIHRlc3RlZCBvbiBpNDBlIGludGVyZmFjZS4N
Cg0KUmVnYXJkcywNClN1amFpIEINCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBG
cm9tOiBJbnRlbC13aXJlZC1sYW4gPGludGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+
IE9uIEJlaGFsZiBPZg0KPiBBc2Jqw7hybiBTbG90aCBUw7hubmVzZW4NCj4gU2VudDogVHVlc2Rh
eSwgQXByaWwgMTYsIDIwMjQgODoxMyBQTQ0KPiBUbzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9z
dW9zbC5vcmcNCj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2Vy
Lmtlcm5lbC5vcmc7IEVyaWMgRHVtYXpldA0KPiA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IE5ndXll
biwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEFzYmrDuHJuIFNs
b3RoIFTDuG5uZXNlbiA8YXN0QGZpYmVyYnkubmV0PjsNCj4gSmFrdWIgS2ljaW5za2kgPGt1YmFA
a2VybmVsLm9yZz47IFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT47DQo+IERhdmlkIFMu
IE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxh
bl0gW1BBVENIIGl3bC1uZXh0XSBpNDBlOiBmbG93ZXI6IHZhbGlkYXRlIGNvbnRyb2wgZmxhZ3MN
Cj4gDQo+IFRoaXMgZHJpdmVyIGN1cnJlbnRseSBkb2Vzbid0IHN1cHBvcnQgYW55IGNvbnRyb2wg
ZmxhZ3MuDQo+IA0KPiBVc2UgZmxvd19ydWxlX2hhc19jb250cm9sX2ZsYWdzKCkgdG8gY2hlY2sg
Zm9yIGNvbnRyb2wgZmxhZ3MsIHN1Y2ggYXMgY2FuIGJlDQo+IHNldCB0aHJvdWdoIGB0YyBmbG93
ZXIgLi4uIGlwX2ZsYWdzIGZyYWdgLg0KPiANCj4gSW4gY2FzZSBhbnkgY29udHJvbCBmbGFncyBh
cmUgbWFza2VkLCBmbG93X3J1bGVfaGFzX2NvbnRyb2xfZmxhZ3MoKSBzZXRzIGEgTkwNCj4gZXh0
ZW5kZWQgZXJyb3IgbWVzc2FnZSwgYW5kIHdlIHJldHVybiAtRU9QTk9UU1VQUC4NCj4gDQo+IE9u
bHkgY29tcGlsZS10ZXN0ZWQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBc2Jqw7hybiBTbG90aCBU
w7hubmVzZW4gPGFzdEBmaWJlcmJ5Lm5ldD4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jIHwgNCArKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX21haW4uYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV9tYWluLmMNCj4gaW5kZXggMGJkY2RlYTBiZTNlLi5lMjE5Zjc1NzgyMGQgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMNCj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYw0KPiBAQCAtODY0
Myw2ICs4NjQzLDEwIEBAIHN0YXRpYyBpbnQgaTQwZV9wYXJzZV9jbHNfZmxvd2VyKHN0cnVjdCBp
NDBlX3ZzaQ0KPiAqdnNpLA0KPiANCj4gIAkJZmxvd19ydWxlX21hdGNoX2NvbnRyb2wocnVsZSwg
Jm1hdGNoKTsNCj4gIAkJYWRkcl90eXBlID0gbWF0Y2gua2V5LT5hZGRyX3R5cGU7DQo+ICsNCj4g
KwkJaWYgKGZsb3dfcnVsZV9oYXNfY29udHJvbF9mbGFncyhtYXRjaC5tYXNrLT5mbGFncywNCj4g
KwkJCQkJCWYtPmNvbW1vbi5leHRhY2spKQ0KPiArCQkJcmV0dXJuIC1FT1BOT1RTVVBQOw0KPiAg
CX0NCj4gDQo+ICAJaWYgKGFkZHJfdHlwZSA9PSBGTE9XX0RJU1NFQ1RPUl9LRVlfSVBWNF9BRERS
Uykgew0KPiAtLQ0KPiAyLjQzLjANCg0K
