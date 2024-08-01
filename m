Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BDB9449F7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2024 13:02:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A957560F41;
	Thu,  1 Aug 2024 11:02:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YBj441Tx-SI8; Thu,  1 Aug 2024 11:02:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7DF860B59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722510128;
	bh=A8saUt7PB/Y0ToVZZk2+yvGgE5CgydNDuKqRF8pWB8A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tDHbvT4Yl/GEkjXpf/M0zr5mSM2Zhpyt3SU9isR4exTKw4MbZ/EXobF4gE9/7OnZN
	 MUyEI7FL3LzXuGqcVNQdeJP5RHb58qYet4OmdDI3HLkBcN9iX0eFayKbR7YZ+U6Rvc
	 rZAh9uRfc2tIjnp2CgrRAgveukj/XRit+ZXDoQbVIT0WWmy75PnaaQgIREoEBKdPPT
	 kjiBIwGDvq4eoYwrBv+ZrvBjvVKEqbhGQEIl4/origDyS+0fHf0fAJEg1J2VKZ9YM+
	 IM71/4OEtl8JmeVKd2noQ/5RwWwOcIKrAEolfYK6t32UTkcZzIf2f0ynPwnvyX1GMK
	 uGsEtXj/xSqPA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7DF860B59;
	Thu,  1 Aug 2024 11:02:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B1431BF403
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 11:02:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 14ADE606CA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 11:02:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AbpUtYhJpSbf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2024 11:02:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2872F60608
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2872F60608
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2872F60608
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 11:02:04 +0000 (UTC)
X-CSE-ConnectionGUID: 0PYUv2tlS9uoTC1usmTKAg==
X-CSE-MsgGUID: b8nzwonoSAGyQ3hdiaOcUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="20342853"
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="20342853"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 04:02:04 -0700
X-CSE-ConnectionGUID: sPuEXqImScytkAS7j6TRcA==
X-CSE-MsgGUID: fOWYrYbGToKO2MN/6pjCKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="59813272"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 04:02:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 04:02:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 04:02:02 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 04:02:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IJrV8qxgl6gpJVNuF+AjXX/egpY+VqWVt/XOYTIVxMMqHGeOJeJD7mM0JnAar09cHR57hWSOa2LLNhwhcWmGZsRnhmKGJwVKXXqzU8iwj+Gn/7Hv+4Mui2TktkTG9NAYMvPDiGVCWVPawV8B7BBAUMXFlQO+7szSf0iXg/rK94+eyHXO3yzP3aGsBe6dxOeRgXlLaegkZq7651Uq9L37uUE2YaYCejlVvJv0FGJNAaX7WVpFk1Hasf6fyEnfyA+XkdYih9WMoEybL+F3VtuvtKsePfoQHzqvzx9z6Gn23GWDIb0R6bE5ROZJvDGjldPEB5q1DAQURNnflPw2/qzq4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A8saUt7PB/Y0ToVZZk2+yvGgE5CgydNDuKqRF8pWB8A=;
 b=aRgYyl8Z3l2lS4pg75HMCjHotvDYpAdBGSb9SDda5v3D9hATESJFHvUbVi9ankxzbgG4ZUWenl5Yb8h+a7PY6hw0H4RkcYRPVHIoCWM7G7BOuIKnF48gN229xhXX0pw0jmzGv4kAJMrt5L53Jqw8hT79y8ZHmsMaRlKSOGxZ12DrdxQ2cekmcbUn2VrCBGSdWSk4quStNmhPvbMFTOzLw0ZRWxfeYCK+xEjoNsbepqI5YFWnYfOC3r+1eK8F0jPRlQ9hXj+JGvf/HNhnpCwjnXMZOfEHSNmAzQL/45cN2u3InjMwAykeXtUlqytNPgM515D802LRY+hshIUcqkaUGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SA2PR11MB4859.namprd11.prod.outlook.com (2603:10b6:806:f8::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Thu, 1 Aug
 2024 11:02:00 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%6]) with mapi id 15.20.7807.026; Thu, 1 Aug 2024
 11:02:00 +0000
Message-ID: <616bd069-51a0-4b05-96af-2d419961e0e5@intel.com>
Date: Thu, 1 Aug 2024 13:01:52 +0200
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
References: <20240730105121.78985-1-wojciech.drewek@intel.com>
 <20240730065835.191bd1de@kernel.org>
 <c0213cae-5e63-4fd7-81e7-37803806bde4@intel.com>
 <20240731164716.63f3b5b7@kernel.org>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <20240731164716.63f3b5b7@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZRAP278CA0010.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::20) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|SA2PR11MB4859:EE_
X-MS-Office365-Filtering-Correlation-Id: 23dd7765-7720-49b6-ac8e-08dcb2195dca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NU5md2ZGeEl6S01WU2hiU09UN0xYeTNvQ2ZGL0VCczFtVFlnRk9RbUlTTXFv?=
 =?utf-8?B?bUpIcFQrekxnMEtBdHVUdmVnNTE4bE14Zmx3VVVaMHN5YlRLNFBkQVU2cG5P?=
 =?utf-8?B?RE5UUjNOcW1VUU9aR3d6SWVNN25rS3BsMzdhMnFmZ29ONTRVM1Nkai8za01u?=
 =?utf-8?B?YkpLVmVkOXo2TmpBaE9xSndVZ1lhZ3plTmc3QUw2UzFqWUV1cTRKM24zb05S?=
 =?utf-8?B?ZUsvMWtJTERDNEdQdkFpVHBXVVNsc0tHQUx0bUhJdi9MU1F1VVN1ejBiTmNZ?=
 =?utf-8?B?QzJRVXd4cm83VjZEcmQzMXNXbVdmNEZtUi81NE5jQVU5aTdaT09UM3ExbktS?=
 =?utf-8?B?cnZDWXQ1SkFBbEFWVUQ1VmlkMzJFUzFOVnZtTkRVcjIwVm1sWVlEakdjQ25I?=
 =?utf-8?B?OGxMVmpmZUI5M2FyUnJXZmtUY2F3Tmx5alRVRGkvTTZXVFQ4OXkvckVSYWg1?=
 =?utf-8?B?VFpqMEs0ci9rVjFxY3UzTm9OUW9ZU2lDNzVVektoSGx1K0t0OHp4T2xLMmZs?=
 =?utf-8?B?QVp5SHJFSHduU2dEUGFXRFoyNVF2c3djR2UvMWhzalc1eEdFQVBJTWlhRkdp?=
 =?utf-8?B?YlVGSTdpTU5adUZ3cHlnMiszMHBuUzlaV2loVGNCNGxwcStPVFpTNnl6YkM3?=
 =?utf-8?B?dm1WRng4WHZ3VXFJamhtRU5FbXNnOXcwWTN4TDVoR0htdEhGTXdNMWtqVVhO?=
 =?utf-8?B?MUxIREs2cExDYlpucVM5OU5obE5jVFdVV1BWbHVKbll4VytHUWllZUtIbjNa?=
 =?utf-8?B?Y29aRTdwRVZtUnNTWHEwcFFrSTdaZy9pWGx6bW1leTR2akxCa3pmUGdXN0FY?=
 =?utf-8?B?OGdZUHVlR0lMTVRBek5rUElUc0tIeG52c20vUU5zSkIxcHplWUh1WnltTHUr?=
 =?utf-8?B?SlRBSk9rNWRXbmxEMmkzTWl5UFo0Z1JYZEphZTVaaEdEUkZ6L0ZUcE93Wmlk?=
 =?utf-8?B?NFArMmxFSXJlSGxMKzJzZjlTZzUzSkQ5RFB6dittTFhZc01lM0ZiM29SY0RJ?=
 =?utf-8?B?VU5OdDlmbzkxb0o5eWl0NG9PQXVyRmxyUlZYS0k5NHlSWEN5dmtpYWI0MFhM?=
 =?utf-8?B?NXBLaWNYcTJ1M0lKZmpGUTRRalcveThwNzIzdWFRNFA5bzV6WHpQMGZpNnR3?=
 =?utf-8?B?Tm0wRituQzZjd0xHSG1uLys5SWlxL3RyRVJGdWdSQ1psa2ZlakpkcURGbnow?=
 =?utf-8?B?c0pRdmNpR1h0dVZuMkNnbEVNTE5jaEZuSTcwQWZsd3dJSzNDaDFjeGdTQjZN?=
 =?utf-8?B?VG9vdm5JUmwvOFl5RWxOeU5rYTMxOWxQMVJOWE1SNGdRZlhNTnhJZXhZajFh?=
 =?utf-8?B?L3ZCMU5oa0wzR1ZKNVRyY2lJVXJJTE1aclkrWm02WXBLL0VYeGhPc0ZaMmRi?=
 =?utf-8?B?MWV4bXBjNS9YU0NLNERiL0FhUGdXN1dOck85VC9sT045RjZmK0RjTEUwUkRz?=
 =?utf-8?B?dmZsNVBVbkxSN1BCUlBjYUtrZGNadmppVUkvMGZRRFBHS1hWNmpKakJ1V2JX?=
 =?utf-8?B?NFhpWnlJZHdWallMY3IzTFlsaVVJU2hXaTM0L2FnUnNOaU5BVUpwOUg1d3Bm?=
 =?utf-8?B?QXo1WjFGcTloY2NtNDJqMDF4SldPcE52b1dVOC9XZGMrOUYwUkdOUDdmcTh2?=
 =?utf-8?B?OG5GcW02cGVmWFlOV1pWYkptcnZ3ZUwrbjB6Wk9PZWdWeVUybTR1UndwNzdV?=
 =?utf-8?B?Rm9yWVUycUR5UEh3UC9lWDExTDJMcW05Y1h3TkZZbVpNTERYMERuT2RtRTMw?=
 =?utf-8?B?WXU0eTR2OWIycE9Ick1QY0dieVpTVHMvNm1YZ0FlWENjdENOdSszUHNnUndi?=
 =?utf-8?B?cTJDRGVvdUprdnQrZEdKdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QXBkSUNwWEVqTjN3dmx0RjZuc1p5NlBKMFJ6UW8zS0s0bEpob1hGUzF6MWhv?=
 =?utf-8?B?czRPR25qTEU1eVA5SjNnZnA1Y0hiZWFZTUh6UUh5M1lBdExSMXpDRnlzeDYr?=
 =?utf-8?B?Z056VngxOS8xN3l6dk0xMFgvSUdmbGp6azcreVAzL3lIUlhzVGhzUmhPVmdw?=
 =?utf-8?B?eUFWVHBveDk0c284VG5DMHZzMGtFVXFxNjFUQXJPbG15WkcyMU1qU2c5QStt?=
 =?utf-8?B?bThvN1lJWjlIZWxRNVViQ1hzU1BzYStZTnhvdW9jRVgvTzhseEtra1c5MG1L?=
 =?utf-8?B?ZW9DUS9VanpXWmIzanMrRTI2YjFpRXdMNm8reHdCRXh3OTBzRVFuMzZKdWt2?=
 =?utf-8?B?VFdKMlFCMUUxUEd0QVZKK2ZLMnQyc2FwM2pLNEtoS3lhbjFhaDZycUxtSjhF?=
 =?utf-8?B?ZUM2M2pzV2J6U01FRWdpay9aSFVTdk00Tzlpek4yNitObkF4bmR2UVJ0cHd0?=
 =?utf-8?B?Q0VjeThBaEYxYjQ2L3dhdTg1YUg1VU40ZmVaQnlydDB2a1RPUnlPTTlEeHJG?=
 =?utf-8?B?bWE0UE1tOFB1eUdxVS9FcTJFbFpDUWFxZXZPODVITDE4M0Y4VXdGSGVWdUho?=
 =?utf-8?B?Qm1qU1NtalFucFNQWmcxOXhxZ0MvSWFjL3NjRkJMd2xKM1M3YndHMFpJSEpt?=
 =?utf-8?B?VUszek8xNHpuYkpJQXZiUkdFc0lFM2dsaDVFYlJ6aVRUL01pVFN0a0wzdlZB?=
 =?utf-8?B?Q0V2WDNSNjVzV1NnMGd0RjBBaklRV0haQlBIazdDd2JVVE9CdGlRSHpkdXVo?=
 =?utf-8?B?ZmxWcnVPR0pMN3hrc1o0MytQNFJNZmZNcU9EbC82WHczS3gremdnUUkxMjZR?=
 =?utf-8?B?aDhjVUtsSnVWN1EzYUIwUXgyYzFrRVlhWkhCa1hzY0c5Rkgwc2ZlQ2IwaW4r?=
 =?utf-8?B?ZE5mVDFtcHErWGp6NERCWGs5LzNsMlgxc0pMUHJJZVRkcXpMT081NHg3REJx?=
 =?utf-8?B?djVPc3Y4UCszN0pJcnhFZzFBZmRzeFpaYjNXUUtxeVpTTGVXQVk5MUFScHF5?=
 =?utf-8?B?eVVFem4yNE10WkJaak52Rmh2YnFqV0ZMN2RnOXBXSDJKNnZ4RWRQUXNxaWEy?=
 =?utf-8?B?OFVSTHQ3djVhR21YODZvSWJmSkxWSzE4L2x6WURDWXpmNE9MOWt6am1rZzR6?=
 =?utf-8?B?dFB1YWhGNDVpaS9ENnF0WXk2T0JudVhYdDVjNmsrMEJFNVltS0lFV256NHQy?=
 =?utf-8?B?S3VWMk9MMGJya3FKZkY3Vi90M05ndHpldlJCQ3l6anp3Y2R0dnI2MysxMExG?=
 =?utf-8?B?VFZhZkEwbmZSbEREL3d4djl6UVdiUmhtajVWK3R3M28zelJhYUQ2MXNTU1Bz?=
 =?utf-8?B?bTN5K3F2dVNNUlZyeEdxNndCR3pTbG9sNjBFOWs5SkR6TjM2T2Mwamw5TEo5?=
 =?utf-8?B?Z3BURWdYeXgvZ3F6Y3M2UFJvSEk2NHFRMGd0R0sxVExhTlFXbXkzbXZhSDVX?=
 =?utf-8?B?RndUWEdKQ0w2MGtXM3l3UEtzNDdwS1o5NDdoaFNrTGFjdE5RRE5nYUlzUXd3?=
 =?utf-8?B?VnluR1BmYmJjUDVsNTZyUXN4MVY2WGE1VzVodkZCMkV4M3VTZVNlOUx5KzZ2?=
 =?utf-8?B?U2tDTmI4bzQzd21aSlduK080a09LbzNWcTdGUFlhY3NIZlh6Nk43TGRzMXFl?=
 =?utf-8?B?Z3gvS0ZhQmhpVCtjemliWnFOZ0VZTVNkQko5NTJKWVlnYjdOaXUxaFBwZkgx?=
 =?utf-8?B?Z0VFaHhweENIZ0FBblllZzVocEV4Q1QwWG5SeGVCaWpzSmFHdEYxQXBmR2J2?=
 =?utf-8?B?QURrZVUrbFczWWJZdXR0U0xVRzBuSVgvY2M4NzRMNzdEK0s2YTBIbjEwcjRt?=
 =?utf-8?B?S3FxRXh3a3RkN1NqZmRHazIxM3hQOEg2YVVrSlh5OTY5RnRnSlJKWW9DRFpV?=
 =?utf-8?B?RkEzQ3B4TW5OblZQc2QxY3hibkZwR1RVbVJPWmFxUU9UT0NTTnpVcTZ2bjVR?=
 =?utf-8?B?aVZPK0Q3VXBvTG16WjhQeEtuTEtIK053dkNOeXZBSUtQdW1KYW1lQkU5ZWRN?=
 =?utf-8?B?M2oyajA1eTBTTGR6TkxrdXJ2NUM5WXlrcCtNS0RpanZ2MjBWUVBrWnVGaWNo?=
 =?utf-8?B?ZmVNSHBhR2lkTFhDOURFTXV6WklFcjZnNWNRZTEyVnVnOE1DekRuRkdWeDds?=
 =?utf-8?B?L2pqMkZEeGJEUTN0TlFCODZERGtMcmhTajBZMk92aWgxZk04Y3h0UlRVZ0s0?=
 =?utf-8?B?Y3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23dd7765-7720-49b6-ac8e-08dcb2195dca
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 11:01:59.9733 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LN+u90Jbh1lLBy+kw2BnKBYzvaSU+V43mMXW8wYPjUnTQWJz5RL/kwUTLGtbJRrU/xqLZpuFVS9CEpu2jKp5Gp79JvDHu8WdEjRJtaQKhOQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4859
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722510125; x=1754046125;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8BWo9gl45AaCHhueR+udn9TwUrdILgCVEGLfw8tm77c=;
 b=oIm4LbWp11pUSKvG02Qg+qcQOQkmW1C+BL+kq4Y/q9PR1MvYcAHuUDS4
 iXaIH2DeH4YpRk/0JrUOM1XzfkjuuFQxGaU1V2qMrCJMyygwipfTo2su6
 TDbGBgO44cIdI0lRHtHTVPtV8FqwkOchw9sJUtFQHOPd29GfjjAW396Jl
 mLMicQbHP1tlpK62k0kXeDAwP7A5nWlzH0h+IJOqEEt1hFtpvW+vm9sTL
 kOaMEgvKMg6craPVZuGRByfck3J4lB+cDTBr2isFthDPjpsZLhWIV4XAy
 fm5yUjRZFJfPQ3qajM9lzi8Mi6w90j/Tl77kB8HpfFfP1A+8M97xk2wQU
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oIm4LbWp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Implement ethtool reset
 support
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
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 01.08.2024 01:47, Jakub Kicinski wrote:
> On Wed, 31 Jul 2024 14:08:20 +0200 Wojciech Drewek wrote:
>> Quick summary our reset types:
>> PF reset reinitialize the resources/data path for PF and its VFs.
>> It has no impact on other PF/VFs.
>> Core Reset reinitialize all functions and shared parts of the
>> device except PHY/MAC units, EMP and PCI Interface.
>> Global Reset is Core Reset + PHY/MAC units reset (including External PHY)
>> Because Global Reset is a extended Core it makes sense to map it to all.
>> PF reset mapping makes sense to me since it is dedicated to a single physical function.
> 
> On Wed, 31 Jul 2024 09:48:07 -0700 Jacob Keller wrote:
>> PF reset only affects the single PCI function, and does not affect the
>> whole adapter. I don't know how it relates to PCIe resets precisely.
>>
>> CORE reset affects the whole adapter, and the other functions are
>> notified of the impending reset via their miscellaneous interrupt vector
>> in combination with some hardware registers.
>>
>> GLOBAL reset is similar to the CORE reset, (in that it affects the
>> entire device), but it is more invasive in the hardware. I cannot
>> remember offhand the differences between CORE and GLOBAL.
>>
>> There is also an EMP reset, which is the only reset that completely
>> reloads the EMP firmware. It is currently used by the device flash
>> update logic, via devlink reload and is only available if the new
>> firmware image can be reloaded without issue. (Reloading when the new
>> firmware could impact PCIe config space is likely to produce undesirable
>> behavior because the PCIe config space is not reloaded except by power
>> cycling, so you end up with some weird mismatches.)
> 
> Note that the reset is controlled using individual bits which can be
> combined:
> 
> 	ETH_RESET_MGMT		= 1 << 0,	/* Management processor */
> 	ETH_RESET_IRQ		= 1 << 1,	/* Interrupt requester */
> 	ETH_RESET_DMA		= 1 << 2,	/* DMA engine */
> 	ETH_RESET_FILTER	= 1 << 3,	/* Filtering/flow direction */
> 	ETH_RESET_OFFLOAD	= 1 << 4,	/* Protocol offload */
> 	ETH_RESET_MAC		= 1 << 5,	/* Media access controller */
> 	ETH_RESET_PHY		= 1 << 6,	/* Transceiver/PHY */
> 	ETH_RESET_RAM		= 1 << 7,	/* RAM shared between
> 						 * multiple components */
> 	ETH_RESET_AP		= 1 << 8,	/* Application processor */
> 
> 	ETH_RESET_DEDICATED	= 0x0000ffff,	/* All components dedicated to
> 						 * this interface */
> 	ETH_RESET_ALL		= 0xffffffff,	/* All components used by this
> 						 * interface, even if shared */
> 
> Note that ethtool CLI defines "shared" version of all bits as bits
> shifted up by 16. And it is forward compatible (accepts raw "flags")
> if we need to define new bits.
> 
> I guess in your case EMP == MGMT? So if these resets don't reset EMP
> I presume we shouldn't use any option that includes MGMT..
> 
> Could you express your resets in the correct combination of these bits
> instead of picking a single one?
> 

We've came up with below mapping:

PF reset:
ethtool --reset eth0 irq dma filter offload
(we reset all those components but only for the given PF)

CORE reset:
ethtool --reset eth0 irq-shared dma-shared filter-shared offload-shared ram-shared
(whole adapter is affected so we use shared versions + ram)

GLOBAL reset:
ethtool --reset eth0 irq-shared dma-shared filter-shared offload-shared mac-shared phy-shared ram-shared
(GLOBALR is CORER plus mac and phy components are also reinitialized)
