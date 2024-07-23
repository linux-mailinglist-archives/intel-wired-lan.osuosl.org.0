Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F33DE93A910
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 00:09:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88D9681295;
	Tue, 23 Jul 2024 22:09:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yynkkp_Nn-Cm; Tue, 23 Jul 2024 22:09:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 467BB81279
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721772558;
	bh=hh+MW5CLx6jlmYY0yX6/c+TZ9DiaH1gpuTqoPy5+OHU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jegJTo5Ugbp+7TvurhRPB7Ms1w4uEi9fThfnSDYFwfmPJLxVjPj6eijSL6wiX+0X5
	 bGWOzOt+HuTnnvLM84sv4beCLUj3A6qdJjYxlbbpZE4vDmHM3OEPSWBD5vzShZIo9c
	 raau1fkfUEfr/nLpApdvx+FkLVhM0cDjHr2tm6MRepiI2dYZBDBSomYKuQA4MhQyDF
	 R7RSPsRhX6wcTzIlYlevsZxHX8y5PhVuegrTVu8esD9kraJRjTe2NlCyxJy4LUi6Nh
	 pm5JEjU/eetAXLOiQ+SlOt2C6yZOERvPXXltWUjauZmKLC6lrtUzrfBQxowwNCVlcL
	 p/JeAmq16lBFw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 467BB81279;
	Tue, 23 Jul 2024 22:09:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE2AF1BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 22:09:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B4A4781292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 22:09:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C-G3NTeq5HCY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 22:09:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CF78B81279
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF78B81279
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CF78B81279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 22:09:15 +0000 (UTC)
X-CSE-ConnectionGUID: k5wCHsn3RkyP+ZpiM7W7EA==
X-CSE-MsgGUID: riDfOHXKT+aulPERTCEpBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="30086951"
X-IronPort-AV: E=Sophos;i="6.09,231,1716274800"; d="scan'208";a="30086951"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 15:09:15 -0700
X-CSE-ConnectionGUID: t+gghEduSLyhRdb8g3PfgA==
X-CSE-MsgGUID: hfslP2PUTy2AIoJw9e67vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,231,1716274800"; d="scan'208";a="52093224"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 15:09:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 15:09:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 15:09:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 15:09:14 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 15:09:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HaPAjDqZ9XCpppEF0fTK1Pz2B+2krPqw53Fxf21iYb3CFsDg1SNVDRMGO5hsS77+qiAoJbrmOkZgojlsUiz03rUADhu0+V+O1b+eTgMdSJwdDmNPlkY2DC+IhAq8CNdMLeXZsmt+dVeN+JViaX8LSwb3jheWu24Yk+H9epZxrEMlW1qEXoHoh4OQJcIjg70eXbQfIc8DNwm5Igl01XZXoW+AcbI/Y+Ve2q8sRmgqTp3FfAXgAmFZlwiDU2WoVJB/jO2cwKqx2lWxvaw8tCBymDvjT7plO2NFUX0EJH7fq0W3GHIdXq7lmC9OgO/JVu2l9+QhH7KaVJ1tVjirrWY3fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hh+MW5CLx6jlmYY0yX6/c+TZ9DiaH1gpuTqoPy5+OHU=;
 b=uJOZak3LVfBhN4bh8bMVCa6VjHfwHk8IoCezandXirTCLx/UlhA8K930OJSSQki46669DqMsfXd6R4wORcZ4CfP5b0wiUTpQmyDpCrLBgkgGQkQZHEbTnZqA87xNnx2dFih3Mg+aKXlkg4TJdQsVK/a/ih2cbKd46MAbDjR9aOyFsnqEUJzNpDS3/b5Ro+cOmz5Yb+fFVF/mSWKbzbN3uoHGP0pYL3nyiKdYdz7HV/hJis5miEbgmQVaEFzLMQKG/NpayScMR52MqZUVb8WQOTN5eajXPa9EBbSBBPJz4+WHQyLboAJe9T9QUTSe5D6qBKmt6aBh1drYlLle2c/nHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA0PR11MB7863.namprd11.prod.outlook.com (2603:10b6:208:40c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Tue, 23 Jul
 2024 22:09:11 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%2]) with mapi id 15.20.7762.027; Tue, 23 Jul 2024
 22:09:11 +0000
Message-ID: <d0d500cc-6eba-843d-1ca5-ca1e44bd003e@intel.com>
Date: Tue, 23 Jul 2024 15:09:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240718105253.72997-1-sergey.temerkhanov@intel.com>
 <20240718105253.72997-5-sergey.temerkhanov@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240718105253.72997-5-sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0078.namprd05.prod.outlook.com
 (2603:10b6:a03:332::23) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA0PR11MB7863:EE_
X-MS-Office365-Filtering-Correlation-Id: a8b832e4-0231-4ba3-bc0c-08dcab6414e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UWZMYW1adzZjMDQwVFh1Z3c5YWdoK1kxWXMxalA4bDFWOHdHblh4L3FzbzVp?=
 =?utf-8?B?Tm8zaUZObnpPOTJqTE8rNWllNzF0eHB4aktETkYreWUvQStHbmRJWUpKTDhr?=
 =?utf-8?B?RUprY3FTb1NnN2hybDVtZGpZUkpTaXY0V25Qd0J2QjF6anFzNVVtZDhGSHU3?=
 =?utf-8?B?TGVPN2hZTlZxZWtrRzl2VGdGK3pFOTdhV3o5K3dMUDNZR0FrTnVMVDhRUUov?=
 =?utf-8?B?TWpJU3p6YlNGaUNPNUIwOWNBSWNWZGRGRlBOZlIwT1lKaXpUU0pOOTNWemY4?=
 =?utf-8?B?ckFPZDcraWZXbWlFcmUvVGprMWxVYkpnSHRJOHJ3dkE4S3Joc2lZaldmSW94?=
 =?utf-8?B?K3kvZDdENXhTTDZLVmtFWmtTTVAwVURJZC9SYnVYbkN5TDdLK1ptWlB5U01h?=
 =?utf-8?B?NHpRUk1tU0kyeTgycko5eC9kQXZYWEZjQ2VCQlVCWU9zVWkwU2tPY05wU21V?=
 =?utf-8?B?czdTVVg1cGQvMitpMjdwM1lUM3JPbTYwaExUdnhBK2ZQZ212Y3NIOFhkZVFW?=
 =?utf-8?B?M1lTTUluck5QWU1BRFVaTU1MUVBYRWtvUi9QdXRLQTJObmIvTHBaUm5EMlV5?=
 =?utf-8?B?ejNCc3QzdE9yUjdnTTBBckU2NmxmRHZFZkU5dkxjajdKZ0kxNHRLNjdNMng4?=
 =?utf-8?B?d1M4L2ZMT2ZhR2Yzbjcvc0RsVmw4dWZyWWQ3WFlKVEJqZWZyUDdXd2FOYmtv?=
 =?utf-8?B?RUVlMHBvdVMwWncvUnBiRTBLbDBPZVVBWVYydHBZQ3pKSlVsN1RBVEp6aW9P?=
 =?utf-8?B?WmtaaUVKeHB5YTQySXZpR1BvOGVEV0hDMGxJTzU4QmFGNFVCWGs4WDdQQWhp?=
 =?utf-8?B?S0xoY2ptRjJCYXRnT2t6SnJOUDkxYys3N3RBWjNQL1ZPU0RnclVWR3FmcUlm?=
 =?utf-8?B?RFhRcytSeGxBdklHVHFrTTg0Q3p6OGVrTXozdmNXN2VUSnJMSWRhU1QzZld5?=
 =?utf-8?B?M2grV3pKeUpPaEN5Z2tCc0ROb0tCU3ZGa2dzT0tFSEFWeE1pcGk1aEFBZDht?=
 =?utf-8?B?TlhGNlRKZUQrSHM0ZDE0WG5xUElPMW9oUUVQdlNHT1JYRzh1aUxzcHhUQmNu?=
 =?utf-8?B?eFljS1Y2SE5aaVZiZDVmSEppOUNIVFJ3cHhYNkJPS0VNdkQ2S0FEVzJYNFdl?=
 =?utf-8?B?dTY0M3FneTIxTkR3SWZ5REJCaGMyZkRyL2tKYjV5NGx5VzRaSUlKdmFRaC9w?=
 =?utf-8?B?Z0Q2TXcrQWNWUERSUEpVaHV0dFpjR2JyZER6MklKb2tKNEl1WjdhZUVqb3Zl?=
 =?utf-8?B?QVFxNndFdFh1WWt3b0ROSmlvTW04V1ZNb21WSXRNSFlmVEc0UkRLQTBFU0Nm?=
 =?utf-8?B?MFFrSzJMOWt4MFY1Z2ZUQmZMc3JENGdOZjZEandBaGdneXRDVG0wQ0dTMmhM?=
 =?utf-8?B?Y0s3SnF4Q28wR2hZdERJanowczZqTGNYbWNsZnBEUWFpRDhxeU5BNG1mZUZZ?=
 =?utf-8?B?ZVZRaTV0U0dreFBaU2xOUElBQjQ0a0lIV3RDN21kVzRVKzlENTRaTVdla0ND?=
 =?utf-8?B?aFZPU1lHd2NSQmtrczhsYXgvbC9EOFhUWWRuSHpJMm1WSTlNYlI4U0RoN2NV?=
 =?utf-8?B?OUxBSW5HY1d4d2RrV095TkdDRVVyd1BQb0JIVFVyVTRoL3dtM2dEUEpyVlNR?=
 =?utf-8?B?N3NUMXZPVWNYUjNDM2JZOUhaOEpaQzdmM1laZUV1cVo4dms0WmFuNzgvV3ZS?=
 =?utf-8?B?K3RSdHpjTzRDRHR5ZmdxN0JwVFd1MHA0amp4S0xvSFZ3ZTk5SGxVRW44Nk94?=
 =?utf-8?B?OVd1NFNWNVJqYU51RXNXTTMvUDVBUVdYbjFTSC9ZN0RkeEx4dGwzeHlDemR4?=
 =?utf-8?B?WHVDeGc4TDJ0aGlpTkVtUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eklNc3R0cmtxRkRrTTNQT043am5aTUhUN2NSSldNV2QwdUJvMnM2OTIyVEx1?=
 =?utf-8?B?ZUgwUHJSV2JyZ3o2dTlySVcrMkZDeVJYRm5NQW1FVjBmTnNZWVJrYjlKQi82?=
 =?utf-8?B?eklGaE5SYVd4cTJtanNZVStkL3NVZUlTanZXeUxkcno4bExERFVsM1ZFelpN?=
 =?utf-8?B?NSsvNWhoWDVZVzdGVzBvYTdva3NkRFNSNzUxcjBrc1IyRlhPMWNnTEpBM29V?=
 =?utf-8?B?TWYrdzJxZCtWWUFmcXdZUDdFSUw3ektVdnQ4VGVQYWxLSXc1UklXTGZrd2oy?=
 =?utf-8?B?ZFFlM1pWUDg3L3BtNi9lQmw2UVJGZVdGY0ZrdFdZcmg5L1JZVWdBcTJYd2tQ?=
 =?utf-8?B?aC9EQU1pN2NWNTh0YjdJMUx6MVc1c3ltR0RvSkxWNHpLcWlPRFE5S0d6ZlhO?=
 =?utf-8?B?YStlUjNja001SXpuekdENE9YR1VKcGVHdFA4WHBZcXFzNEZaTXBqYXNIOFcw?=
 =?utf-8?B?SnJPdGhqR2JlS0R2TkZMMExXL0E0ZHJtcUNEOFN6OE43cVRLZ1JXTHN4MUtr?=
 =?utf-8?B?OGIzNklrWURIQm9IN2NIVVNTRVFuMlU4MVZuV2hDUDRUSDU1Ny9wMmlQNTBs?=
 =?utf-8?B?cW5tQUkvU2VSNWU2N040bFh1UzZXU013TmxYSVR1MVJjWWYrUFVyNkI1MkFR?=
 =?utf-8?B?SlJMcXhYcG5OSDBWS0tFclY4NWVNMVJFZ3NSU2xNbURmTFFMVGRnZUxLUDhT?=
 =?utf-8?B?UFZtWkNhT2RQK2VLZWhkN0RXaWpoTVJveTdpZW9pNmp6NVp4MEplcnJ6K05n?=
 =?utf-8?B?WnBqaDQ4dzdXVFpyOXAvcGJWbER1a2tyMDFzanFuY241dFoxbUkzdmNCb2J3?=
 =?utf-8?B?S0dRTmFvSENIQUpkbXZQcWcxcGVKbVNudUxmOUJQK3h3b0x1NjVkQ0ljV3ll?=
 =?utf-8?B?SFRybURBK3ZpSEFxbVZWVmRPNm1oSnpoNUQyY2xVVjFRSlU1RjcxSkJlMzFZ?=
 =?utf-8?B?TXVtRG5mV3JwWm5sb3BXTTBqNTV5a0ltWWwvNE1HQ2ZHUms1ZEFldnpzMVcy?=
 =?utf-8?B?UWZUU0JQemh6a2ZtTnZMOTUxS2d6NnVGQ3pONmZkak9sNmhyWitxOUJkTFBs?=
 =?utf-8?B?bHpTYXZaa1FsUzFqTURuVFUxZnQ1MkZBZG1HS25CT1RNM2NXRHFkR2F2SGo3?=
 =?utf-8?B?MGlLdEszTjRxZXh5UjJJYmx6TjFudnBoS0YwUmhLYi9HY3RnUG5CejdFanly?=
 =?utf-8?B?ZzlvcGtCcy9JTktzSzdIS0ZENXBiVmprWVhmdzlBcDROMTZNZEpKUlp0V0RW?=
 =?utf-8?B?Q2xXaW8zQk5WUGN5Mm5UdC9Xbkk4UzUrRDYwSGRmaVV6dGNJYXFpM2J4OEhX?=
 =?utf-8?B?OE5iQUVsWnlYdW4zRXNURkNKRmZPWmFmNzhkdXFyYVJoOTAyalBTbFEzbXVp?=
 =?utf-8?B?cjMrekRyNFl5dUp6RmU2Q1RpV2ZJbUVEZjVqQUljWTJJbGlHczVjdjBjOWdx?=
 =?utf-8?B?VzByTjh3bHE5ODhqdmF3Qk11N1VXSDRSKy9XY1ErTnNZWWdtdnkxc0tUcU1B?=
 =?utf-8?B?WGpzMUlFZ2dnblFDVndrUWVnM2RrRkdDRCs0SlZ4VWQzZTRLejN6SG9mYWFq?=
 =?utf-8?B?Q2lsMjdJL0xzb1hsSjNielFKRU1Gc01aeTNoZDFtN1IvU0ZQS3RRTWllZDh0?=
 =?utf-8?B?ZkFaUzRWeDNoSVU4MDhxQ1RGSW13NEEya1BJNkYxRTN2NmJUZlhBbWVETTJw?=
 =?utf-8?B?SlVIL1hBbVFCdUhNV1FEWWN6dElGcHdJZ0YrUytGUVhlWTEyclc0VldLR2h6?=
 =?utf-8?B?Q2N3NmtXcXN6TktMVEVLUExWUUpzYk1LZmxiWFJlSmh4bndyYjR3V3ZCTUZF?=
 =?utf-8?B?T0JvTGQ3TmpLUzlqUXJ5QkthQVFqYzU5V1VQekF0N2xqL1UvbDF5VWMwZHNE?=
 =?utf-8?B?Znlha2JTakRvM2dNTXBkTHY0dXJ0b3NpRWtHRDVyaUR3SU5OSitpRVVQeUlU?=
 =?utf-8?B?NmdvVXc5TmdXVWZ3SFg4VkRSeThyRnAzZVQ3QUh1RnRkc21JRllDK3BqUWMz?=
 =?utf-8?B?UGExOEhkYzZ0em1HUURwcVc3bTFtNlJ3dWxaeEZRanpsTnFZa3ZWaHFiYlF3?=
 =?utf-8?B?RDJISThLVUprYXBoeFlFQ2RtTTgwZmhlNzZRK1VxR1RjSGhxMU5zVEhZYVd6?=
 =?utf-8?B?dm9Fc0toaGZva2ZCL0lYcG93WHNMVEZHZnY0US9tOCtSMHMyQVdXdjUySklF?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8b832e4-0231-4ba3-bc0c-08dcab6414e1
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2024 22:09:11.6704 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bbd7meuN2KCBm5NHInI439+nBRnKuCqe57mH+s3vRvG+al05lXDxScyk3jUuTJDKCO5uUVomF+p5HqP8jcTyQxcqyYsWoID/NKLVMoKSEkE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7863
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721772556; x=1753308556;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZanK5aZc0eKQD+SVgw3RprU/fCqxL/0dVDRp9XhvzgQ=;
 b=gQtN0w8T5F+MQeIjndLazMsVZBGK5DqRzUDH6sRDhIL9MpswC0Zus+Jt
 lmtduFQgk19fbKAT4g4EydhUnAL7yk/h4KkeISAvjtB94BQhQ5oLXJDXe
 /WL769mCQZGshIAOeIkDMpmhZ7a8xScV8FAnqlVa1nyi3ZKOgpNuP9BBE
 tLFpPAQhbbYGaB578LeA3AOnupvVOy3TgeleEExqnJwPgoHtTdAggwyH8
 NB79fmr86tPHpL5bTob4wqwID/WbjGB1/HnJ2cXwP4ghuVt4M8Hd9fYPC
 Ebzd02PhIL3eOpAxx7LwNJGFNxhWF2F47hK515InMpxGSVj2HvvjuG/FJ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gQtN0w8T
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: Use ice_adapter
 for PTP shared data instead of auxdev
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
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/18/2024 3:52 AM, Sergey Temerkhanov wrote:
> Use struct ice_adapter to hold shared PTP data and control PTP
> related actions instead of auxbus. This allows significant code
> simplification and faster access to the container fields used in
> the PTP support code.
> 
> Move the PTP port list to the ice_adapter container to simplify
> the code and avoid race conditions which could occur due to the
> synchronous nature of the initialization/access and
> certain memory saving can be achieved by moving PTP data into
> the ice_adapter itself.
> 
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---

...

> @@ -2967,6 +2967,50 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
>   	dev_err(ice_pf_to_dev(pf), "PTP reset failed %d\n", err);
>   }
>   
> +static inline bool ice_is_primary(struct ice_hw *hw)

no 'inline' for c files please.

> +{
> +	return ice_is_e825c(hw) && ice_is_dual(hw) ?
> +		!!(hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_PRIMARY_M) : true;
> +}
> +

...

> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -468,6 +468,11 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
>   	}
>   }
>   
> +static inline bool ice_is_dual(struct ice_hw *hw)
> +{
> +        return !!(hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_DUAL_M);
> +}

Please use tabs:

ERROR: code indent should use tabs where possible
#408: FILE: drivers/net/ethernet/intel/ice/ice_ptp_hw.h:473:
+        return !!(hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_DUAL_M);$

WARNING: please, no spaces at the start of a line
#408: FILE: drivers/net/ethernet/intel/ice/ice_ptp_hw.h:473:
+        return !!(hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_DUAL_M);$

Thanks,
Tony

> +
>   #define PFTSYN_SEM_BYTES	4
>   
>   #define ICE_PTP_CLOCK_INDEX_0	0x00
