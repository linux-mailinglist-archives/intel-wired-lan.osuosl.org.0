Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B359F996757
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 12:32:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 233AF40BDC;
	Wed,  9 Oct 2024 10:32:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4ByOl28f76aX; Wed,  9 Oct 2024 10:32:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF03C40104
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728469932;
	bh=lEh9SgY2X75RnrFdXpYcPMZ011iS/pDgjEO8f1At2ms=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q2/2LCtM/xoB9tKRwbIgJnW9KUpQJkLovdyQE2xhqzZnv92jp/5dBnZS0k5BjFrEq
	 twVbBDNIG2KGYwvhEKvPMM9elLw+oMk6yeFELkjlanGq0h/o6FZ3OReO8ccDXmPiVJ
	 Vlg/aXJS7x1TPSQZxUlDMVgdCoYQQq5ElxH/zBEq6p1t/m1XzougPhYnzHZHh31cGI
	 4fIt4Rz/APNixE901ET3AymoaxiugUKHb4c1aIfPPQ+es7NvTXkpGzo88yQC/ZKfx1
	 MEMLoWS5MQTWCHiMjdwP9cB5wA7Lg6c1Vz93btXzojmDiZOhc14ebWpEDCH9C9PUgM
	 DyFO213jpp/rA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF03C40104;
	Wed,  9 Oct 2024 10:32:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 65D591BF47A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 10:32:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5FC74403E2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 10:32:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sgUYbf_-cpKg for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 10:32:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E7E1D40104
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7E1D40104
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E7E1D40104
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 10:32:06 +0000 (UTC)
X-CSE-ConnectionGUID: 3SjbuIJASVa7xIHLqTb5DA==
X-CSE-MsgGUID: 3ZR/mJ+CQsqBNlqZdQTdLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="39151830"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="39151830"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 03:32:06 -0700
X-CSE-ConnectionGUID: fvM3zrXZSlKX0jawVtCw5g==
X-CSE-MsgGUID: EYthGDeoQoSVjUDa1b0Mag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="80190846"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 03:32:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 03:32:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 03:32:01 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 03:32:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ESaqjHXLSeV1kQgFIawWrd1+qKlwypd3zsrmoK27hmq7NpKNFbx21e7tbgWCf3Gczx0V8OsJcjNyQc2A4Un8r7FtCm4dIfxZmhQU6G+U9E10FEEciGuS+zzSHIiKYbwHj7rkhoZQzOBNmibzS6VA64AXfkm6tLDTrG2u8ecAQhzo92q8LtUcn7DIV+fGlbFXC6//q0NeWHx9VFYgYEOERtIoLQ6u4qQDtwd9vPhPSQbkqhsqeaYR990Tkclqd/9SpojtTPq4JHykM3ci4ED0be1pQTBCl/TE9Lnho89wf+aURSvXAhalZchhNCKgBZ6dwgYg+S8vYhjmRlRpJwMKmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lEh9SgY2X75RnrFdXpYcPMZ011iS/pDgjEO8f1At2ms=;
 b=K/JuW+X15UV+B24Hp4WyiF5YPTYhbjvNDsoUlMDM1UbMigpA0ITi8iGOgDLq4/BIkeRl8R7qym0sDVKG9B0PGTAwpNC81CZsRu59GDdc3CCayTFIK2U+M15TctQAlDy+uWYuLqcDMxvYZRETEfdLOUobfKWM1YlvQWfsiFvjkv5OAouvIk3kj74h79ByPsFH66PWF/2zv1I592Pc9Nx2C6mtfIcut+Gvx1l8iWB1eN5+axHBpOdc4Qj5ZOODeAmjxFwputg6FuTuL3d/QjJnzh+1jefIAfAw1luUa92qRCwKGA5PmLHEDIo4PN8NT+V7S2j1fm5PfEcZ2+B+RIywOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DM4PR11MB6142.namprd11.prod.outlook.com (2603:10b6:8:b2::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8026.23; Wed, 9 Oct 2024 10:31:54 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a%4]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 10:31:54 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: mschmidt <mschmidt@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix crash on probe for
 DPLL enabled E810 LOM
Thread-Index: AQHbFXZG8MAIRvUSmU27/NMHsGRe07J+PuyAgAABa4A=
Date: Wed, 9 Oct 2024 10:31:53 +0000
Message-ID: <DM6PR11MB46579B56169AAEFE92F912809B7F2@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20241003092113.912768-1-arkadiusz.kubalewski@intel.com>
 <CADEbmW0CfOadDKhnUsndhJSOjsqDgeJkbGYkhssn5QFMu+098Q@mail.gmail.com>
In-Reply-To: <CADEbmW0CfOadDKhnUsndhJSOjsqDgeJkbGYkhssn5QFMu+098Q@mail.gmail.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|DM4PR11MB6142:EE_
x-ms-office365-filtering-correlation-id: 7e7905c6-a7cc-4a44-3937-08dce84d97fd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SVJCM1M3amxUbmNSZmdiM1BFTldRTktJb1JpbE5NUTFYMmpQZFZuRUhzNFJk?=
 =?utf-8?B?OGF6ZWxsUDE4bXNNWExNZTVYcVhzNU0zUFlCd1RwVExOZ09JZFl2WTQvOFF4?=
 =?utf-8?B?MklsV01nTFVGOEtrVXFOeittODV0Vy9DWnlKQ2FNODFDZy9UdFpIRDN0enY4?=
 =?utf-8?B?N05LTmNEd1J1VEdZdjZQbld0d2lwSDY1KzVCakpmZ1BiR3ZiNDI0QlJ4NHNi?=
 =?utf-8?B?N1RINFFYTFQzdmU2enByai9UQkNDek1uM2I4WDBJVVFHSWZMNkNTTHFYeFFH?=
 =?utf-8?B?WDczSkIvcUdObytLUWkwT1JKMXZwZzUyR0gzck1ON2x4bXFkMXdQRHZSOTRm?=
 =?utf-8?B?b0c0MllMa0NjbEljMmVSa1pIdjN5WStHSXB0elByOHJ3cExhUnF3MHpOcWxp?=
 =?utf-8?B?VGhqbFdocDNvZVQ5L2hlMEFxaC9ISWpZT1owN1NiVUI4ODJXRUJJRUdWZGc3?=
 =?utf-8?B?WnE3c1pVQURRSDBkZk9ML2pTWmJ2ZDFIM0hGalVWRFIyL3Q3SVNPSDQrQkQw?=
 =?utf-8?B?c2RqYWp1bjNGeHIrZ1ZBSGdtUjRkeG55cCtmbGJWSXR0dEhxcmlBdFQ5QUZM?=
 =?utf-8?B?UkpHQkl4dG1KZG5yUjVjOFJPRTFuZzVmZHlMU2tlQzdaRnZ3ZjlXajFoN3NX?=
 =?utf-8?B?NkM3WWNCNGRHbkdWeDllb0JsYjltbkd1b1NBNmYzTzNhS0Exd3RnL0xUa1pQ?=
 =?utf-8?B?TVM0cUtLcjNQY3hHWVd6NlRQN0NWWHRmem9XY1FoOEYxSzBOTTEwNVE5dHlo?=
 =?utf-8?B?ZjhINDFhc0hnTGk1YmdMRDNLNkVTSExOcHlrTnpORC96TnRFUHRVbTFQNkQz?=
 =?utf-8?B?NkpKNmlvUmc3SkVWWmtZNEhMREVmeFNmRzh4SXlhcHVrY2FvK3Z3WlpFUldY?=
 =?utf-8?B?dzdPc2NzT0RmOGxndlo0ZnNya0V2ZEdzVE4rUXUyVHE4Q1BwVGg5S0NDbXI2?=
 =?utf-8?B?SG5FZkR6cG1tMlBLUVQxK3lNZHdKcXdxVmNmQjkxYnMvQ3l6QnFRK1dxd1Ft?=
 =?utf-8?B?TXlwdjJzVWJtL2cySVJwN2Z2U1hqaW1rVXArc0J0dVM2anhxbGo5cVQ3akhj?=
 =?utf-8?B?RFQ2bWh2a3pMcGppd1pYS2tOeElJTGlLNk9DSUl1K0FLdStVd0llbzJpeE9M?=
 =?utf-8?B?RElRV0l5YmljZUF5LzRTSXZLakxheTRkdHhSd2hDclRnSElBTWZUODI4SEJq?=
 =?utf-8?B?ekpGdEpjREJ5RDRra0JFVktMekpzRitwbEI3ZUh6UG1qV05WT3hIYllsNXVq?=
 =?utf-8?B?dloveEdLQTJJU3RhMjZxNkQ3RVVrVGJETEFlU1BPWHBoM0MyRjREZ1ZGbjFL?=
 =?utf-8?B?RVVZd2FFVGowMWV2R1lqMkp2N2pWWndGSHJBSUtBQmI4WjEyWTR1RU9DVkVn?=
 =?utf-8?B?TTdnTGdaSkJnckJiRHRMN3dka0UzZXgvTklKQWw0Vm9yaVRHTHZJUVo5a2Jz?=
 =?utf-8?B?MTFvWGxhTTlYVWp0M0pRanIrZWRpbnhqWUVPTi9lbTZiWk12OVZFeEJjOTFo?=
 =?utf-8?B?UTFyS2p2TmxPYjhYUkJFazY3Q0NBbkZmeExxdkw5eUxwdTc4RE9wMG9UY0xE?=
 =?utf-8?B?NWtydHE1NVQvVDdvSUFTcE9MdHpBNjU0cUJaeGU3UTJ6di9qSzgrN2ZhcDV1?=
 =?utf-8?B?NnZEYmlxOXhPWkJNN29NalFiYkd5OWNHeXkxQVI2c3NKRnJMY2pYbllZRkxm?=
 =?utf-8?B?SWNmdS9FQXRZTGZaVCtzdU9kbW5sSTFKcTJXS0U3MVJHUkNpWXRsdlVXMGRK?=
 =?utf-8?B?cmNTMkE2VkN0SSttL0lpaFNTNENSYnVnZk12V2tLVlJyUXkxbDBaWE51cnJ5?=
 =?utf-8?B?NGxCa1VEcTJab0Z5UXpwdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dnNOUFpGaVhjWHJ0dFMxQ3RjbCt2SXlNaUE2VS9jd0F4OWJjSTlOR1hwbWlL?=
 =?utf-8?B?czlMc2JHVEtrRnJ4SGU2UUFVTmZDSU1oeGdMaFYwL2J0cHVxMWNaeHl2ZHJK?=
 =?utf-8?B?NlZwQnM1Z0V2Ykdmb0dCUHJhRGgwVXJoT1ZOS0o4V1NPdUNWRnYydUVSeVFj?=
 =?utf-8?B?V2F6cENLYzNDQ0pCSktHeWtZcnc3NUxxdHRUa204WlFoeGFBRzhsQWtDZFlN?=
 =?utf-8?B?U3B2Z2N0UkRrUm1JZnRWZ1pvN3FGOHlIY1p5TU9GdnZqVlF1WEtrWXp4czE0?=
 =?utf-8?B?a1B3ODdSb1FMSnBFMTVwK0hCWE9jWCs5Nys3UmN3Y2hRQzZjeHpXYm1sWkRE?=
 =?utf-8?B?Y05rM3BOMnZuajRqKzEyQmpLYnpXTXVlNUt4VFYvSnhXdWt1ZUhHUEJiVG1G?=
 =?utf-8?B?WUxiTWlWa01zMWZYQWVCNW8yUFlPczhGMVNkQ1FqNW1od1NvNHk0Nmt2M3Zz?=
 =?utf-8?B?WUpUdVpxd1FhOW05aGV5RVduY09HTmhnSnZvTXZZSUJFVjFiNDd4bzZObjBv?=
 =?utf-8?B?TTlFQ2FRN1FWYmJNTUIyNnA0cDlwd3FBMElSV0FxTDRvMnZtQ3lyTkxIZm9O?=
 =?utf-8?B?MVFBREdpeDk5Snh0VTF1dEdQdWZqL1k0VitMdXpUSkRGaEhsd3BmbSt2MTIy?=
 =?utf-8?B?UVc2dlY3cDNuTWp0aldudkRrL1FwaHB3K2tnOGpsMzQ5dHNkQkMrd2ZGR01F?=
 =?utf-8?B?MkpBUHhldDRwUnQzTkJLaWNueTJRMWQ5NUU3N09abEl1UFBESFYvcHVjNHFW?=
 =?utf-8?B?ckVDekJFdmw4YTRYTENjdWN2OVRVZkF3Qlo0K3FKeWFOU2s0M0lSc2p0dndw?=
 =?utf-8?B?d2srTkNETmJ6M1MxUzVhMUVhNEg1OEpjamVKRmdSWVI0ZzhUU3hTL0lDL0N1?=
 =?utf-8?B?bG1zaUl1MFlabmRiVlV3aDh0YTVIOTJzYjU5c05UQ1ZDd2oxelpyWkgwZUVX?=
 =?utf-8?B?dlA5alpxUFZ1RGtLMm1EZU5HMStJUzdsUHBCTk5JS3NtRjhoR1FJMjNQWVJT?=
 =?utf-8?B?VndVNEM1ZjZmTVpROUx1em1sdGswTjIvaEhiK09KbExWcytpUzRTLy9jREZL?=
 =?utf-8?B?WW9leXNzZlhjVm9JU1cycUVZOW9LYXZsMmNXcUU5U0c5Si92Y2dqaWV2YWhU?=
 =?utf-8?B?NzQrYTRGWEMzZmVCR2ZyYXI4emV0VllkUFR4RFp0WmNFMEI5azdwVFBWTzkv?=
 =?utf-8?B?RnZURWV0SVlEMS9oeDJFV1E4ZU5LUDM3d05UQ0Z5cHRvcEdibXU2YWFkZXJ4?=
 =?utf-8?B?MUczdTloVDgvODdXdHNoTFdPY3UxZkY0aWk0YXhIbkVlZGN3RmJzS0VQNG5W?=
 =?utf-8?B?cVI4bkdwbDdBV2w0Qm9yWnYzY1dGVHE1aWNsalp6L1NwZWlLT2VqSit1bU9L?=
 =?utf-8?B?U0dSOXRhT0NTT0UwY25FL1NvUUl6ZTVhOER4S01CUk5yUG51bWV4NjNDWFZu?=
 =?utf-8?B?S3hsNTAybG51cDh1UXNQMzRSTWcvMkRlTGNQWmIyK0ZOYnErZVhZLzhqbENX?=
 =?utf-8?B?WG12UldtM3ZHWjdvSjU4cnVkZDhzT3hmZVdaVFVkNXh3dVpIRlV6Q3VWRlBj?=
 =?utf-8?B?S1VKM2VwTXRWVi9pMlp4NjFid0wrTlVrVWlsRTljMW16dkVqSTJhQlFpdFln?=
 =?utf-8?B?ZmhBSTVEc25DVGYxYUlTRzNUUGNTcVh0TDBJWW5scTZ2WVpoUm1BMVdDRFBR?=
 =?utf-8?B?L2thb2hpQ09rWUJCd3pHaDcwNGJZU0tqdm9sbDBFMFhrVlVRMGF2TXJid0I3?=
 =?utf-8?B?bXRUNGxhK0hNS0FieU9OeG9hRDVDdFV1Y2t3V0lvZys5QjdvSDIwbG1MTGps?=
 =?utf-8?B?aDlCYjB3RDErY1NlN2Zia2RoRlBoQldadW5JQzFKT3o3QXRSZnJYd1lXZDVW?=
 =?utf-8?B?Zjc1ZU5qb1JaOGMvbzB2aDJGRDNSbXBiTlVDb3RsU1JJanc1Y2xoTGRhdFNT?=
 =?utf-8?B?SzJBYXdYK25wY2JHZGhZSmw3QzUzVFp0RS9wZGxyZC8vL2V1ZXRJcFgrRFVy?=
 =?utf-8?B?SlJSelNZcGdEeE1EZE1NMi8vOFE2Y2FIb040dXhOQ1NBMWlGcFE2OXhXN0Jk?=
 =?utf-8?B?ZGk5NU1KWUFqTkM3QnlTZ3J0WmNEQ0hiWVZHOVN0V29HbWM2TCtyczZ4RjR0?=
 =?utf-8?B?Yk1oNWVWVGRGMm54alY4TVRIVEpXbGlqSEN6a0w2bllQTXgwTnlsMlJEbCtt?=
 =?utf-8?B?V0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e7905c6-a7cc-4a44-3937-08dce84d97fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 10:31:53.9820 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8HFQQ/MYem3oAp5cCqE7TItMh9LC6NDofrj76vmwyEHaf3oCGy64UcboXkO+AgSa5iGH5LXthbvUziPePWTHtI0Bh3Ef0k+est8yL8UVZJA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6142
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728469927; x=1760005927;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lEh9SgY2X75RnrFdXpYcPMZ011iS/pDgjEO8f1At2ms=;
 b=LsKui+Zbyysd77D2kavax8A9b3CzOD80urRd1MSDowR6Tc3+7OnLLq0B
 yyW5HnIDqCmDCL+BDUEtbhB8WI31GSk0ec+BQkIyEBHhMCvdNMm/0iX8O
 POelTIWW5B7SQf0riPJdJGTKRudhH5p8zBXUJVq+bPT+jMUJBYqnBv1Z+
 DpztTpGl8Un5ZLn5sdbqOIdSC7w+f/TTcZLL4vAPmtnOIbaHn5CB0E8AL
 ixG3rpcCN5IuOv3NmMCHcze16huRxyfkaET2ADKzmQp733pLb7ROTzvA5
 NCriTmmPaSa0iqcKqERfgztIdiR2OiPgo5UR72VEmS6h23/PazBLuzkMH
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LsKui+Zb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix crash on probe
 for DPLL enabled E810 LOM
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PkZyb206IE1pY2hhbCBTY2htaWR0IDxtc2NobWlkdEByZWRoYXQuY29tPg0KPlNlbnQ6IFdlZG5l
c2RheSwgT2N0b2JlciA5LCAyMDI0IDEyOjIxIFBNDQo+DQo+T24gVGh1LCBPY3QgMywgMjAyNCBh
dCAxMToyNuKAr0FNIEFya2FkaXVzeiBLdWJhbGV3c2tpDQo+PGFya2FkaXVzei5rdWJhbGV3c2tp
QGludGVsLmNvbT4gd3JvdGU6DQo+Pg0KPj4gVGhlIEU4MTAgTGFuIE9uIE1vdGhlcmJvYXJkIChM
T00pIGRlc2lnbiBpcyB2ZW5kb3Igc3BlY2lmaWMuIEludGVsDQo+PiBwcm92aWRlcyB0aGUgcmVm
ZXJlbmNlIGRlc2lnbiwgYnV0IGl0IGlzIHVwIHRvIHZlbmRvciBvbiB0aGUgZmluYWwNCj4+IHBy
b2R1Y3QgZGVzaWduLiBGb3Igc29tZSBjYXNlcywgbGlrZSBMaW51eCBEUExMIHN1cHBvcnQsIHRo
ZSBzdGF0aWMNCj4+IHZhbHVlcyBkZWZpbmVkIGluIHRoZSBkcml2ZXIgZG9lcyBub3QgcmVmbGVj
dCB0aGUgYWN0dWFsIExPTSBkZXNpZ24uDQo+PiBDdXJyZW50IGltcGxlbWVudGF0aW9uIG9mIG91
dHB1dCBwaW5zIGlzIGNhdXNpbmcgdGhlIGNyYXNoIG9uIHByb2JlDQo+PiBvZiB0aGUgaWNlIGRy
aXZlciBmb3Igc3VjaCBEUExMIGVuYWJsZWQgRTgxMCBMT00gZGVzaWduczoNCj4+DQo+PiBXQVJO
SU5HOiAoLi4uKSBhdCBkcml2ZXJzL2RwbGwvZHBsbF9jb3JlLmM6NDk1IGRwbGxfcGluX2dldCsw
eDJjNC8weDMzMA0KPj4gLi4uDQo+PiBDYWxsIFRyYWNlOg0KPj4gIDxUQVNLPg0KPj4gID8gX193
YXJuKzB4ODMvMHgxMzANCj4+ICA/IGRwbGxfcGluX2dldCsweDJjNC8weDMzMA0KPj4gID8gcmVw
b3J0X2J1ZysweDFiNy8weDFkMA0KPj4gID8gaGFuZGxlX2J1ZysweDQyLzB4NzANCj4+ICA/IGV4
Y19pbnZhbGlkX29wKzB4MTgvMHg3MA0KPj4gID8gYXNtX2V4Y19pbnZhbGlkX29wKzB4MWEvMHgy
MA0KPj4gID8gZHBsbF9waW5fZ2V0KzB4MTE3LzB4MzMwDQo+PiAgPyBkcGxsX3Bpbl9nZXQrMHgy
YzQvMHgzMzANCj4+ICA/IGRwbGxfcGluX2dldCsweDExNy8weDMzMA0KPj4gIGljZV9kcGxsX2dl
dF9waW5zLmlzcmEuMCsweDUyLzB4ZTAgW2ljZV0NCj4+IC4uLg0KPj4NCj4+IFRoZSBudW1iZXIg
b2Ygb3V0cHV0IHBpbnMgZW5hYmxlZCBieSBMT00gdmVuZG9yIGlzIGdyZWF0ZXIgdGhhbiBleHBl
Y3RlZA0KPj4gYW5kIGRlZmluZWQgaW4gdGhlIGRyaXZlciBmb3IgSW50ZWwgZGVzaWduZWQgTklD
cywgd2hpY2ggY2F1c2VzIHRoZSBjcmFzaC4NCj4+DQo+PiBQcmV2ZW50IHRoZSBjcmFzaCBhbmQg
YWxsb3cgZ2VuZXJpYyBvdXRwdXQgcGluIGluaXRpYWxpemF0aW9uIHdpdGhpbg0KPj4gTGludXgg
RFBMTCBzdWJzeXN0ZW0gZm9yIERQTEwgZW5hYmxlZCBFODEwIExPTSBkZXNpZ25zLg0KPj4NCj4+
IE5ld2x5IGRlc2lnbmVkIHNvbHV0aW9uIGZvciBkZXNjcmliZWQgaXNzdWUgd2lsbCBiZSBiYXNl
ZCBvbiAicGVyIEhXDQo+PiBkZXNpZ24iIHBpbiBpbml0aWFsaXphdGlvbi4gSXQgcmVxdWlyZXMg
cGluIGluZm9ybWF0aW9uIGR5bmFtaWNhbGx5DQo+PiBhY3F1aXJlZCBmcm9tIHRoZSBmaXJtd2Fy
ZSBhbmQgaXMgYWxyZWFkeSBpbiBwcm9ncmVzcywgcGxhbm5lZCBmb3INCj4+IG5leHQtdHJlZSBv
bmx5Lg0KPj4NCj4+IEZpeGVzOiBkNzk5OWY1ZWE2NGIgKCJpY2U6IGltcGxlbWVudCBkcGxsIGlu
dGVyZmFjZSB0byBjb250cm9sIGNndSIpDQo+PiBSZXZpZXdlZC1ieTogS2Fyb2wgS29sYWNpbnNr
aSA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+DQo+PiBTaWduZWQtb2ZmLWJ5OiBBcmthZGl1
c3ogS3ViYWxld3NraSA8YXJrYWRpdXN6Lmt1YmFsZXdza2lAaW50ZWwuY29tPg0KPj4gLS0tDQo+
PiB2MjoNCj4+IC0gcHV0IGRlZmluZSBvbiB0b3Agb2YgdGhlIGZpbGUNCj4+IC0gZml4IHNtYXRj
aCAncmV0JyB1bmluaXRpYWxpemVkDQo+PiAtIGRvIG5vdCBpbml0IGZpcnN0IGFycmF5IGRpbW1l
bnNpb24sIHVzZSBzaXplb2YgdG8gb2J0YWluIGFycmF5IHNpemUNCj4+IC0gcmFuYW1lIGljZV9j
Z3VfZ2V0X3Bpbl9udW0oLi4pIC0+IGljZV9jZ3VfZ2V0X251bV9waW5zKC4uKQ0KPj4gLSBmaXgg
a2RvYyB0eXBvDQo+PiAtLS0NCj4+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2RwbGwuYyAgIHwgNDMgKysrKysrKysrKysrKysrKysrKysrDQo+PiAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYyB8IDE5ICsrKysrKysrKw0KPj4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmggfCAgMSArDQo+PiAgMyBmaWxlcyBj
aGFuZ2VkLCA2MyBpbnNlcnRpb25zKCspDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZHBsbC5jDQo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfZHBsbC5jDQo+PiBpbmRleCA3NGMwZTczMTlhNGMuLmU5OTY2YzZjN2Mw
ZiAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZHBs
bC5jDQo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RwbGwuYw0K
Pj4gQEAgLTEwLDYgKzEwLDcgQEANCj4+ICAjZGVmaW5lIElDRV9EUExMX1BJTl9JRFhfSU5WQUxJ
RCAgICAgICAgICAgICAgIDB4ZmYNCj4+ICAjZGVmaW5lIElDRV9EUExMX1JDTEtfTlVNX1BFUl9Q
RiAgICAgICAgICAgICAgIDENCj4+ICAjZGVmaW5lIElDRV9EUExMX1BJTl9FU1lOQ19QVUxTRV9I
SUdIX1BFUkNFTlQgIDI1DQo+PiArI2RlZmluZSBJQ0VfRFBMTF9HRU5fT1VUX0xFTiAgICAgICAg
ICAgICAgICAgICAzDQo+Pg0KPj4gIC8qKg0KPj4gICAqIGVudW0gaWNlX2RwbGxfcGluX3R5cGUg
LSBlbnVtZXJhdGUgaWNlIHBpbiB0eXBlczoNCj4+IEBAIC0yMDYzLDYgKzIwNjQsNDYgQEAgc3Rh
dGljIGludCBpY2VfZHBsbF9pbml0X3dvcmtlcihzdHJ1Y3QgaWNlX3BmICpwZikNCj4+ICAgICAg
ICAgcmV0dXJuIDA7DQo+PiAgfQ0KPj4NCj4+ICsvKioNCj4+ICsgKiBpY2VfZHBsbF9pbml0X2lu
Zm9fb3V0cHV0X3BpbnNfZ2VuZXJpYyAtIGluaXRpYWxpemVzIGdlbmVyaWMgb3V0cHV0IHBpbnMN
Cj4+IGluZm8NCj4+ICsgKiBAcGY6IGJvYXJkIHByaXZhdGUgc3RydWN0dXJlDQo+PiArICoNCj4+
ICsgKiBJbml0IGluZm9ybWF0aW9uIGZvciBnZW5lcmljIG91dHB1dCBwaW5zLCBjYWNoZSB0aGVt
IGluIFBGJ3MgcGlucw0KPj4gc3RydWN0dXJlcy4NCj4+ICsgKg0KPj4gKyAqIFJldHVybjoNCj4+
ICsgKiAqIDAgLSBzdWNjZXNzDQo+PiArICogKiBuZWdhdGl2ZSAtIGluaXQgZmFpbHVyZSByZWFz
b24NCj4+ICsgKi8NCj4+ICtzdGF0aWMgaW50IGljZV9kcGxsX2luaXRfaW5mb19vdXRwdXRfcGlu
c19nZW5lcmljKHN0cnVjdCBpY2VfcGYgKnBmKQ0KPj4gK3sNCj4+ICsgICAgICAgc3RhdGljIGNv
bnN0IGNoYXIgbGFiZWxzW11bSUNFX0RQTExfR0VOX09VVF9MRU5dID0gew0KPj4gKyAgICAgICAg
ICAgICAgICIwIiwgIjEiLCAiMiIsICIzIiwgIjQiLCAiNSIsICI2IiwgIjciLCAiOCIsDQo+PiAr
ICAgICAgICAgICAgICAgIjkiLCAiMTAiLCAiMTEiLCAiMTIiLCAiMTMiLCAiMTQiLCAiMTUiIH07
DQo+PiArICAgICAgIHUzMiBjYXAgPSBEUExMX1BJTl9DQVBBQklMSVRJRVNfU1RBVEVfQ0FOX0NI
QU5HRTsNCj4+ICsgICAgICAgc3RydWN0IGljZV9kcGxsX3BpbiAqcGlucyA9IHBmLT5kcGxscy5v
dXRwdXRzOw0KPj4gKyAgICAgICBpbnQgaSwgcmV0ID0gLUVJTlZBTDsNCj4+ICsNCj4+ICsgICAg
ICAgaWYgKHBmLT5kcGxscy5udW1fb3V0cHV0cyA+IHNpemVvZihsYWJlbHMpIC8gSUNFX0RQTExf
R0VOX09VVF9MRU4pDQo+DQo+SnVzdCB1c2UgQVJSQVlfU0laRShsYWJlbHMpLiBJIGJlbGlldmUg
dGhhdCdzIHdoYXQgVG9ueSBtZWFudCBpbiBoaXMNCj5yZXZpZXcgb2YgdjEuDQo+T25jZSB5b3Ug
aGF2ZSB0aGF0LCB5b3UgZG9uJ3QgbmVlZCB0byBkZWZpbmUgSUNFX0RQTExfR0VOX09VVF9MRU4g
YXQgYWxsLg0KPkp1c3QgZGVjbGFyZSBsYWJlbHMgYXM6DQo+ICBzdGF0aWMgY29uc3QgY2hhciBs
YWJlbHNbXVszXSA9IC4uLg0KPm9yLCBpZiB5b3UgbGlrZSB0aGlzIG1vcmU6DQo+ICBzdGF0aWMg
Y29uc3QgY2hhciBsYWJlbHNbXVtzaXplb2YoIjk5IildID0gLi4uDQo+DQo+TWljaGFsDQoNCkhp
IE1pY2hhbCwNCg0KT2ssIHN1cmUsIG1ha2VzIHNlbnNlLCB3aWxsIGRvIGluIHYzLg0KDQpBbHNv
LCBhbiB1cGRhdGUgdG8gdGhlIGxpc3Q6DQpHb3Qgc29tZSBmZWVkYmFjayB0aGF0IGl0IHN0aWxs
IGJyYWtlcyBmb3Igc29tZSBkaWZmZXJlbnQgTE9NIEU4MTANCmRlc2lnbnMgdGhlbiB0aGUgb25l
IEkgaGF2ZSBkZXZlbG9wZWQgb24uIFRodXMgdjMgd2lsbCBhbHNvIGluY2x1ZGUNCnNpbWlsYXIg
Zml4IGZvciBpbnB1dHMgcGlucy4NCg0KVGhhbmsgeW91IQ0KQXJrYWRpdXN6DQo=
