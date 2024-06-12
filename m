Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAB190533A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 15:05:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8577E819BC;
	Wed, 12 Jun 2024 13:05:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VxUb5hCwDnO3; Wed, 12 Jun 2024 13:05:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C06781E10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718197537;
	bh=esr+uzk+1IfxDNGr2ud0C6vPIq99XWrObS+gzi8JEzQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VQ6e4fY7MrYznlkIt0uRWdWqlIKi6erhHu6C9bF9YqVkPg1/KrR3Q1O859Hvk+UR8
	 nyg+F2Ni4Nq82KW+1QEucp2ZEsydOUi71J62HKOg5QQbs/gt/05YeTD10l7ar2Jekb
	 FUSALE0PxUQEl10lpg5qwcKTQf0kg+hnEwMdSzMFe9wsoMBcAaknst2umhQn9vI2O2
	 C9vMMZSCK87iYn4/NKz2DG2d+FBjG5R/sjZVO8hWT+AQYjZG/CxAngvDTLvjh4H0KO
	 QWdK2mhQy8+4ocES6HV31/UPHqQE6V74RNhMG2S5to6/Nc/57AoEcnFEHCil2wRDXR
	 +RoU5dNrd0RCA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C06781E10;
	Wed, 12 Jun 2024 13:05:37 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A82131BF371
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 13:05:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 934AE401D8
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 13:05:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mvUzk-z3iIyA for <intel-wired-lan@osuosl.org>;
 Wed, 12 Jun 2024 13:05:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2E51840026
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E51840026
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E51840026
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 13:05:32 +0000 (UTC)
X-CSE-ConnectionGUID: olLQUVhdS2iTLmf6MMVyDg==
X-CSE-MsgGUID: y0C3uTAuQ1yBkbkGXBd4Mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="17883098"
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="17883098"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 06:03:36 -0700
X-CSE-ConnectionGUID: YCiogZ6TSoe+YTgK6m71dQ==
X-CSE-MsgGUID: kOkU+6EsQ6aCeFhwSUNo9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="39848561"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jun 2024 06:03:29 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 06:03:28 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 06:03:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 12 Jun 2024 06:03:28 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 12 Jun 2024 06:03:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=No4fCHHTdbDoIWPOFyWmx0Lro2XLAle8DB+jyJb/sTCa87WtyJb7zaoL1O6ZjnxpzNVTSBRJvL9ojhUYoa4keGlXp7czzdXpISaX625rzltOvc/qxNIxcQjtMSsFMARx+V5Uu0WMU3WiXATID0b0GyVQPfuaYsJKtCVLWNv0RzedsTGgHJ1Or7jWl0S04N46Y+RQ9hOpSF/yGbRCV2xbtGSJsRDY7CTncsK+HYeVqknbr3HGIT75Y574L41RJWFXQBsVdbeDtgutEEyFLSSsaFXtK9kNnZ438M9rxiZ9GaOdyO+PvF0gElbqeJCWAyjQPBnYfi+OzBUTOAoMa62Keg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=esr+uzk+1IfxDNGr2ud0C6vPIq99XWrObS+gzi8JEzQ=;
 b=eFIjLrbFqAQBj2NNuWKeKZa4q7hVmLIVw4KlWdfqPdK2GdduDHdjV9Pza5W0XzUZ8Up/E0m0FMxvf4KpxkcrrUN6baiMnrdEluKjfa3Mxv9zmJ5Kg16kC2EXHHus4DYxxZZ15A0X52R/cT2ihKb0TvzkKyR/zJCE2sTOovu4ZLY6Jepa8X9GmfveCye6f9kR5sR0vNZ2Ia4I7FWapUF/p+tnVtGVHVKxTXFT5zb37skS5+tw/9TkjGWNYyHu9PhclBaAzlAF+c8ggwIUqQkXShCBTtBltYAYEvLTQpShCGK5/1hhDIQbgdPPJ0HPE+oIKrtPY2zmT7fY41Igjyc0dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SA2PR11MB5068.namprd11.prod.outlook.com (2603:10b6:806:116::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.21; Wed, 12 Jun
 2024 13:03:26 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7633.037; Wed, 12 Jun 2024
 13:03:26 +0000
Message-ID: <7cdd9b21-e597-48ef-91a2-a45b99821b28@intel.com>
Date: Wed, 12 Jun 2024 15:03:07 +0200
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-6-aleksander.lobakin@intel.com>
 <b25cab15-f73c-4df8-bfca-434a8f717a31@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <b25cab15-f73c-4df8-bfca-434a8f717a31@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0236.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b5::15) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SA2PR11MB5068:EE_
X-MS-Office365-Filtering-Correlation-Id: d3077518-9c30-43df-4ada-08dc8ae00ba6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|366008|376006|1800799016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZWc2eGEzTTA5YzBLVW5Na2Zjd2JqTDRBTHdXVm5udW5iM0FiQzQ1UWR5N3dx?=
 =?utf-8?B?OGlZWDQ4dnBhdWQ5YnhoQUlKMzhUQnlDOS9XWW5uWGhxaFlJVkhOL3MvQW9r?=
 =?utf-8?B?eXZURVZGUVFtdVlDQ253V1FLMXV6WStNbG5yRHJIM2FML1BOSmVSNnpjQzV2?=
 =?utf-8?B?MFV6RTZnbkRPNXpBUVdPbXFPY3h0UFA4K1pGTmFYdFo1T0tGZEhkRTF2TTl6?=
 =?utf-8?B?NzJGaG1Wditzb1dUci9hbnVBRFVTb3FwWWZWZG9sSzJ5aXVxZWZaN1U0aXJ1?=
 =?utf-8?B?MWJFVTJvVTA4YituV1RObythaHlPdjNjSEJUUWNPdW5JRU1uMXFacno2WXdK?=
 =?utf-8?B?YjRLcUIxTHlLNkR4cDZick5nMFlaTFlIbVc2OUtlN09lSzlEVERDektLSTZr?=
 =?utf-8?B?RGtBTTg1MVVqeWt3dTZodUFLRmlCcW1yNC9GSklidytmU21IdWo5eHRlaGxI?=
 =?utf-8?B?SVRENzY2aFludjNYNUlnSnBhcVFFTU5NUXhqTGE3Zk1tRHdwL2UzempUVlZR?=
 =?utf-8?B?Z1BacW5wR0FhL0Y1ZUlWSmdGVWZhUThkMkVrU1lqYVFlQlh2TmtMdGJTNU0r?=
 =?utf-8?B?ZkFrTWx4RzlaSlV3Mzd2MmZsbFdza2pLTi9ZNEd6NDVWYi9rWnpmWnBzMFMw?=
 =?utf-8?B?VDZqR2JCdEpYbGRPY3V1NEFwTFRBRjRGZzh6SVF4OGIydjcrRXRWYlJlTHc4?=
 =?utf-8?B?YmxoNGxxb0xucVdnbnhBWEpIVFJjRnI3cTd3elpzbDBvempPMFROSlNMcGVT?=
 =?utf-8?B?cllEdlZTL2k1NktRMHk3cUU5SUxicEdwdW82N2o3QitUZ2N6TjdpY2RFZjVa?=
 =?utf-8?B?bUFjM3ZBZi9BU1F5UDFDN2JVaWVWcWg4a1BrL1dLT0pxQ014eXNibjJPTWx6?=
 =?utf-8?B?ZUU5UjJ3dVNuakFQTWFNTnloQ3lHRDN4YlVuOG9nMTRnQXFmS090a2k5K2Vq?=
 =?utf-8?B?Ym1pSTFqTkFVbWFpRGRTSnRydzJacHAyM2RUd1R6akt2dWpLWDQ2bWV2Y0Fv?=
 =?utf-8?B?ZCtEOHFBV3lhcVlpVkh3ZDBNc2JGRnZYeVhScGZMRC8vTnpUamV2M0hCUnBB?=
 =?utf-8?B?eTA0SmFGSFJxZTBYSzFvRE1XSWxLa3pqb2ZqaXl4NCtnTVdYZ1JTakRCY0tS?=
 =?utf-8?B?L2k5TUs1cnVQYnRHYlVpTkZZa09meXJxVjc0MEJBV2RFb0dQRmcwZG51dlJB?=
 =?utf-8?B?Qm9QMXZmSkw2OWFKcmxoN1IvWVFxNDk0RkN1b2JLQlVhR2xhTUhsMUMxRDdk?=
 =?utf-8?B?WlFNMkZ0RkdaOGtxT1BZZ0Z6QkErWUpzc0NFZk9FM0I4ZGpZVjlZWTJic3lI?=
 =?utf-8?B?b21MbFF1YzhhVWpvQVVQQlk3anFRMjR3NnN6NktzYWdBZi9pZi90alQzT1Nt?=
 =?utf-8?B?QnFzOFd1cHpVdkE0V0laNStlRTJYZXZVcS9JK3d1LzJMdkh3NHNBOXJTQ2pn?=
 =?utf-8?B?ZXJEVUw0akw0VzdPdE1SM2lDNHhLdkxoaGJKUkJ0VHhpbzRQVTZraXZqc2Fr?=
 =?utf-8?B?YjBjRDlFcUY3MlU0bzdOM29qVFF1U2xDeTY2bkdwR0J5N2orUHNjNU5qWmhH?=
 =?utf-8?B?bHlWdUxJTWdXM0JXL3NGYXRVaFkyanNPeDRKQnJndDU5ZzI2TzMxZDgvNUY5?=
 =?utf-8?B?c3g3Z1prSGdZbXRXRjJJbzNySC9vMWpITnlnM3ZhaVRzdFJjd05uUm4yNElV?=
 =?utf-8?B?TEZRRjY5NDNhWkllNEhBdGlPL09vKzNnUVUzNHZqQmJvMmpUd0VVVU5SNGVN?=
 =?utf-8?Q?UixaCS+MQiw3iz+E9Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(366008)(376006)(1800799016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTVuVG81d2ZqakY4VXRic1BjZlc3T1lDcVNBQnlQSy80cVBXdWNuaDc4TjZ6?=
 =?utf-8?B?c0R2MERLN0Vpa2FBNjhHb3BwaEJ6TzhhbnF2TkJpSytEemFDSnJMd0lqWUQx?=
 =?utf-8?B?b2taZFNuQTZqajM0Uno5eXM4RFYwOHJ1aVl0QXM5a3ROcHFWUFdha2ZablMw?=
 =?utf-8?B?Z0p6U0RRRWZKY0dER09nNzJLT2F6YlVLV3JmaVp5bEZZcFVLTEo0d3lwNHNm?=
 =?utf-8?B?bm5mcm9UV2tUY0lzUytsdlh2ckJWQy9oYW84eE15Ym05d005U3czM2hxT3lv?=
 =?utf-8?B?STJEczVhNVpQSE11WDhLVW82ODVQN0VKVW9JNUxWWTN0K01DUDdxUHV1d2VN?=
 =?utf-8?B?ckdhV1VOYVJaMTdzSTBvU3JLL3M0RmtPTXlmV1lZQlpPS3Vnb3F5a2NIN2dH?=
 =?utf-8?B?bjhXS3lKVGQzendCQXZWNHAzMHdDL0k3UmJZOUo2ZTE0SElXdTdQdHNHSkVs?=
 =?utf-8?B?U2tCeHhKa1VZTkErY3AxSDBJQ25aeXJQYWxIMC9pZUdsVmFmZDl3Zlo0MCtD?=
 =?utf-8?B?MUtsVi9XRVZCV3p2cUx2VWV2N2J4ak1KaDdYRkxRZ2RTQzRCb0hkVXJVT3hQ?=
 =?utf-8?B?RDB2eW9EUDJNOUd3Z2dRWDZMWU4xZExnNUwyTmxJVnFVU2tFNmQyOE5YRmxC?=
 =?utf-8?B?UzBpbnp3NWJrYUVaRDlLT051cHh3MFoxSXFnY1hVcGRIRC84QVBrNWx4UHlY?=
 =?utf-8?B?R3RtQVJodUVMRWhDSW5Od0NocXdheGwyK1FFSkFHQzVVbXZhcGQyV2JyQXkv?=
 =?utf-8?B?Nzh5dTRTSytHcVFUUVZaWS9xV0M2VWsybUFvVzdZUGJsa2RDcUlXU0RlQ3dl?=
 =?utf-8?B?Umg3bkcxdGhMSkVTbVdhRG5lUUlDV3NpRlRhbnY5ajVHTmhjemV0WXBxRjlC?=
 =?utf-8?B?NUZYRzFQUHVnOVJQZFA0T2p1cUFNb0JaYzNOSCtDUjdLNWI5Z0xBTXIvQklR?=
 =?utf-8?B?ZkRHOERnWEZaNTBlT24vQitVQXp1MERjMlg3WFNaR1JXR09UT3lJaGZncTVJ?=
 =?utf-8?B?N3pkMkNiVnpyNHZ0S0pWditBM1V0RE5iMmI1T0FPZko1Wlp4Q1l3MkU3bnJr?=
 =?utf-8?B?RGhzNXhnbFNnaXFNOGxOTWwxM1FLZmZwV1JYcWIrclN3NS82Nld6L3FCakEv?=
 =?utf-8?B?QjFvN2VGQldWeXE4QmtKQVZLbVZac3V4VHRhZnFldkU5eUNQWlR6Z3AzT2tz?=
 =?utf-8?B?S1U5MElHR1A5cGhDYUpEVVdwNUQ1UVRCbmwwVjFScGpTMGgzZXVidUU3TE9v?=
 =?utf-8?B?T29uT2lwZFA5Y3VaZ0M3ZncxZENVZHlya3EyNldoWDFJNHI5bUJ0RDlIaG1t?=
 =?utf-8?B?ZXpzdEJIY2NmZEozenR5MGYrM2JZb2pyOTVMN213MnZkbm9rMWNwMUo4K3BG?=
 =?utf-8?B?QVRvai8zNmpoWnplMHRTOXRQYUowcklQU2p2aU5lOWpBbW41dktlKzRiS3Ev?=
 =?utf-8?B?Qm1FbFdmMzVJTnRoMFVZV1VQRmdZTkQwNEpNNGYrTVZLR0RMclF0dml1SzFX?=
 =?utf-8?B?YWRndjFBdDRnYUhkY3lja1IrQTVQeDFIUWtlZ2hTTmhOVjY2cGJsRUJUSHlC?=
 =?utf-8?B?dWVxK1VWT01vMm5keWwzeFBOcnpld2t2T2pyMllUSHh4RWZLNGZWcXJsbklU?=
 =?utf-8?B?TTJOQmRIYW9oeE1aeU81Yk5TS3pWWTAzZktXS1VxdktzbWN4VnhWNnk4eXg5?=
 =?utf-8?B?c3JkUVc5TlVvQmdqWTY5YURWVS9zdW5PUlJJTkFPNGQwZDBuZGtYbTJ1WTFH?=
 =?utf-8?B?MVNwTll4RkNha1VURFRtckFNQlhRamJUVlpJZ0Z6a0NnKzE1TkVuTDZGUmhP?=
 =?utf-8?B?eUp3K3MwV0RPN08wcWNUNjBTSC9FM3pxWHpuZHkxaFh3b3h5TGhZY1ZyNEpH?=
 =?utf-8?B?cGZhb3RhSjZDcHZlTWVSbFpOdENuaGhUM3RCMzRkdUJINHRxZUdGT2kxUDA5?=
 =?utf-8?B?dVpVWUdvK0tBL1RDZVBSTjFYVFJ0dzM5dnBpSEZpUTM3b1F6WVlKc2d0UDYw?=
 =?utf-8?B?Q0lGZDBLNFVIUkMrc2lpbHVZSXdmQUNIMnluRUNVVGdka0Z5NW56M2JQVGph?=
 =?utf-8?B?VE5uRDlWYlpoQ2o0Z05jTlBlay8ySFJ0eW1udjJnSzBJdHh3Y3BLSWx0UlBI?=
 =?utf-8?B?OEN2M09rTExuQ2ZzWXJvZW8zLzlIZzA1S1IzTEVkeDNFRWQ2WFVWTlJwdThy?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3077518-9c30-43df-4ada-08dc8ae00ba6
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 13:03:25.9903 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iPiC/0A8s7JiLupNkz16KVMAVxgj6d6+o6GGTTChg2OMRppa/gF8ME8fD/NQVq+L+BOWaI+qa+SNQtAgaBM/x1hVwjnb2jfZS/9iGoBhQ6c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5068
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718197532; x=1749733532;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dEYUvuG87UBo36i5T7dHLeDmXdCQ1T0JBq8/BQBkd58=;
 b=k/rOy2H6POPCxmXw0PBe9CDPZjZge+k1ZaU4JmlIg7tfhlGNlBOfCi1S
 eunVlDzLh8GlcFYoYGwE3N6XGAUjn8q6VKIJawtitpwSf13KEzRndYkHd
 V+PIlh1/IjoQyL/izJRGeBACNWVkOBh/mPSthOJYw3mibx9aBlj8fvr+Z
 R618IB38c1zAuL3Z17J7Bv7jAhSIeUBliChb6bfds2JeIbHXQIfQLZqhW
 vyMRYvou9wrIbRpwhCSHILILAA8FKfnOxpkAL56afoEEjqipjHvYGJD+Y
 eLs9S6NpOjzEGtZGqLMHynfbXlI/7NVq38HvgLLjVK2L7B8Ivhxf6BqFh
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k/rOy2H6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 05/12] idpf: strictly assert
 cachelines of queue and queue vector structures
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
Cc: intel-wired-lan@osuosl.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 28 May 2024 17:43:34 -0700

> 
> 
> On 5/28/2024 6:48 AM, Alexander Lobakin wrote:
>> Now that the queue and queue vector structures are separated and laid
>> out optimally, group the fields as read-mostly, read-write, and cold
>> cachelines and add size assertions to make sure new features won't push
>> something out of its place and provoke perf regression.
> 
> 
> 
>> Despite looking innocent, this gives up to 2% of perf bump on Rx.
>>
> 
> Could you explain this a bit more for my education? This patch does
> clearly change the layout from what it was before this patch, but the
> commit message here claims it was already laid out optimally? I guess
> that wasn't 100% true? Or do these group field macros also provide
> further hints to the compiler about read_mostly or cold, etc?

Queue structure split placed fields grouped more optimally, but didn't
place ro/rw/cold into separate cachelines. This commit performs the
separation via libeth_cacheline_group(). Doing that in one commit didn't
look atomically, especially given that the queue split is already big
enough.

> 
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>> ---
> 
> Having the compiler assert some of this so that we can more easily spot
> regressions in the layout is a big benefit.

[...]

>> @@ -504,59 +505,70 @@ struct idpf_intr_reg {
>>  
>>  /**
>>   * struct idpf_q_vector
>> + * @read_mostly: CL group with rarely written hot fields
> 
> I wonder if there is a good way to format the doc here since we almost
> want read_mostly to be some sort of header making it clear which fields
> belong to it? I don't know how we'd achieve that with current kdoc though.

Since commit [0], we need to explicitly describe struct groups in kdocs.
@read_mostly and friends are struct groups themselves and in the first
patch, where I add these macros, I also add them to the kdoc script, so
that it treats them as struct groups, thus they also need to be described.
Given that one may use libeth_cacheline_group() to declare some custom
groups, like

	libeth_cacheline_group(my_cl,
		fields
	);

it makes sense as I'd like to know what this @my_cl is about. Here I use
"default" CL names, so this kdocs looks like Ctrl-{C,V} explaining
obvious things :D

[0]
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=5f8e4007c10d

Thanks,
Olek
