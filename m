Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CBB90840D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 08:58:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B03B8439C;
	Fri, 14 Jun 2024 06:58:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zyYLc2edgU43; Fri, 14 Jun 2024 06:58:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25F4E84395
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718348281;
	bh=beMHc3Ope13hvjGq+Z8LKJOf1gt4koN8UHJtEkjU/BU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ovVEIIjYKsP3Tu41LdlgphgypTuWddxGQZ7xJooSRRO58XtVmKLePqeJARhBpHVwM
	 JCiUQmOz8EItAXaHbkLUHrkfAyPmShDWYnrOL2o9F+Dx2M+4GR0NqTLAdMTQ3a5LjH
	 VwhC16fvFq0x15VMhpyyDud0AxBdkLKBy1XH87SCoEaYMShkOCLzGVHxMjMrWbG64g
	 vQUPIw70n0qZaa8SL206Op5HU8FVqCrPpSW0pAvceLl8y8xBOnY3DrrSGJKxPTYbk/
	 gnTh1SSwH/fF0s/LC8UF2W6uPdL0+uHFkXj5Ry3SjQm4erMpcL8xDKwqGy20OOM5SB
	 uxYsFGREtH1sA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25F4E84395;
	Fri, 14 Jun 2024 06:58:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6C77C1BF335
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 06:57:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 55D3A84393
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 06:57:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XvZi52YE_1hP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 06:57:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 131AF84391
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 131AF84391
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 131AF84391
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 06:57:57 +0000 (UTC)
X-CSE-ConnectionGUID: BPQqYOs6RMykI+Fod0ScnA==
X-CSE-MsgGUID: RTIPXUH3QdGv3Q74wfQHUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="15369396"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="15369396"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 23:57:57 -0700
X-CSE-ConnectionGUID: c6oX2CQCTby9J+qtOVhCoQ==
X-CSE-MsgGUID: sMOHWo8xTyW6a41xmLVjvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40546732"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jun 2024 23:57:57 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 23:57:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 13 Jun 2024 23:57:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 13 Jun 2024 23:57:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MZ65brrGUv1iBUj4csUa/XvSIo8farGG8Cn4fE515j2bZlGn036Vxam02XJUJiHsCMRK5I/Qjoxfv2kPjbGitWKW+h/nUIiccxWSsOTySykmY5+5QhJy92MKXg3SAz+I/QOe3M1Usjhi8yJgBLe4IsavXi6OvxfnsthZFNaLhPSzicZN2LB0I8I8PDg8fdTnvhCMPD9uzHtBwz2wLH7qNK47Fy9KNP5Y751fG08+jZrnxE4QtRpJwxmegh3zYraqgZCGoDOACXpnARz3Nye8MYfTQBNeVK+aMbRND2ykhIFEL4NV9VZtpRNOD0UR6v4m1dSad3y7h6Hfg94niQBBow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=beMHc3Ope13hvjGq+Z8LKJOf1gt4koN8UHJtEkjU/BU=;
 b=UQQkm/PYwUR5MoilKxvXjQ08ljropv493eWzZchwJrWYtK8SBA3ELtTbagkle1zFnpSdNuSAP/z0BdG396yl/Mcoj4QIlHLOKdhdCpPOHqs3SaGs+JyWt8KFh4IpqIh1b1r24EXzQHfV8XPSyGNjCIeoOQyWxs8Ul4AK3rbOuZGQfV73IZq9J+ibzhGnnuA8+oD1dYkKZr2BBBBJtRwYMLVUgq8obVHv4Vg5cyCS+C9G0jv5OkRCo2WJYWOr35gBbfZmLZF2h83/xVFsC4Cy8cVKj0sCDl1LKo3OH4V+k83lZREdzfPk3ava8VzcZfXouTRCmBMTEaDmOouA3RMA1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by DS7PR11MB5992.namprd11.prod.outlook.com (2603:10b6:8:73::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.25; Fri, 14 Jun
 2024 06:57:49 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.7677.024; Fri, 14 Jun 2024
 06:57:49 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v3] i40e: fix hot issue NVM content is corrupted
 after nvmupdate
Thread-Index: AQHavLhNVR6LZhAy5UmBvMuzafl13bHGN3oAgACe3lA=
Date: Fri, 14 Jun 2024 06:57:49 +0000
Message-ID: <SJ0PR11MB586671D988C236F9C5964C19E5C22@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240612110402.3356700-1-aleksandr.loktionov@intel.com>
 <03515112-e2b5-4bdb-aebb-16797a59b3fa@intel.com>
In-Reply-To: <03515112-e2b5-4bdb-aebb-16797a59b3fa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|DS7PR11MB5992:EE_
x-ms-office365-filtering-correlation-id: d51415b4-38cb-43c9-467e-08dc8c3f4db3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230035|1800799019|376009|366011|38070700013;
x-microsoft-antispam-message-info: =?utf-8?B?ZE9GQVVXaU5aZW41UE42dHRIbHlBaFo0TlFlb3IwSzJtRFhpcmtZcTZ5eHB1?=
 =?utf-8?B?VXpkaGdoZXhMc3hycGZMdG5FRzlrcGhXaHN6dVJhZWpGMHlRdFpENWtpQVNt?=
 =?utf-8?B?NExXczJBY25CQlZONG9UZUZMQVp4MWFJSXBBaDR4K1RXVU5MRnFCV0M5VGtt?=
 =?utf-8?B?Y0FmR0xmMTlnS3orNHVtT3hMaGFwYVB4TmNqTkpFbzdyT3I2RHEyRGhFVkM1?=
 =?utf-8?B?c0dUVm9sYU5oekZ2b2kyQnUxejBUY0lXTTU3NWlwY0tuWlkzL3hoWFI0bVlu?=
 =?utf-8?B?R0l6OHVGWEJsVktjSVVKRDVPU2xHaXY3WHRVTjRTcXJuR3dEOUd2VzRSclNz?=
 =?utf-8?B?UkswWHNDRU9PZFBWb0VQN2hZOXZMMC9TU0dTMnBtdHNkWVhzL1ZjUHIyNjI4?=
 =?utf-8?B?bzdsbENVZHNUemJWR29waHBRUWZqL0czbWxMTmhxblptOGlNWVltOW9LR3d3?=
 =?utf-8?B?V3dkWG1BUm15T1pqd0sycDlpOThtWElqQjI3VUNYT3daMXNXNVBhdm5BUFR0?=
 =?utf-8?B?M3U5ajRnTU12OEFUZTYrWi9rQk9PY0RTNTVoalpKbmZPU0lYc0QzV0w1eTdL?=
 =?utf-8?B?QkdSTThTZUpabFJiVjMzaFY3ZWxaaEZDVkF1SFQzamtxOHlaZmFwb01BZ1lm?=
 =?utf-8?B?a1lML09kYURKV3dVbUtLdm5iaE5IeFJna2YycS9BOWYxK05TamowemV1Z1lT?=
 =?utf-8?B?RzlSUlhYSW15Q045NGZRUXQ1aDlFV1RzZHVXWFY2YVdhUEVibnZRSTdoVGor?=
 =?utf-8?B?S1FKVDl2UTI2OC9TOWgwc0x4azFoMnpzRkw2dFNpWGlKdWRRVy83anlNM3RD?=
 =?utf-8?B?K2RIaHFoRFRzanY2dG13bWpWb25tVHhtM2VmL3FyOWxJMFdIdXNkNUE0Tk1T?=
 =?utf-8?B?REI1L0l5VHZWaDZvNXlybW5HRUJVWHNDSzJsZERrNzczOVZmaVNDUXhtcTFS?=
 =?utf-8?B?MXRRd0VITTcyWmN1aDF0VGYxZHVmbVBRdW5rMERXSHZsS1ZsYVNzYmtQWmdV?=
 =?utf-8?B?SktXY1dqckM0M0ZDWkhFa09YM3ptWmh4VEcrRTY4dk5xTWRXMExRYzZDNWZC?=
 =?utf-8?B?em9ia1pTNS9rOG1aNUFqM0dqSXVvVWhnaXZQT2JGN3JSYjJjUE1USHk1ZjU1?=
 =?utf-8?B?WitUZWRIOEJhQ2FtaUZ0K1JSVVJnc3Q4SllKa3F1OTNjZmxnV1FCdXpQVzBU?=
 =?utf-8?B?LzhuS0ZmU3BUT25oNXFPZVFBQ000eFlQSUpXSUJEZVJjeWtFQzdENjMzU2Ur?=
 =?utf-8?B?eUFJRXFjaEpNaEtlbjVmWDBPeDZzekNMbjJGSC90Qms3MU9xNnRMWGdEMHV1?=
 =?utf-8?B?b3ZmeTBnWjRKYUE4eEtBVFNaZjg3NVpya0ZweGY3M2t4YmVVUks0elZwSFo2?=
 =?utf-8?B?T1FOQnMwVXVlaXJmNWwrSzBneStnRWRzVEl4TGhzM1VjdUNQWGtOZ1hjRytr?=
 =?utf-8?B?YXllTXd1cUp1SnZNQmN5QWZCRVluSUhibkc2c09VMjEvTnEzeGw3b2loMXlO?=
 =?utf-8?B?NFNqKzVqYmx1N2hSdFRrQ2liSWRzd1F0RDhZN0MwYkUrY1RTZWd4YTM2aC9m?=
 =?utf-8?B?bFFtN2RRNndIaktQNnRITU1HSWEvd0sxK0ZDRjZrMXNLUHkyd1VmWEFXSDB6?=
 =?utf-8?B?bjE0N25mK3luVzBkQkVSY21nL1JRWi92RXdKdHlibFY5VXVPL0w4OTlZVjBZ?=
 =?utf-8?B?RUt2Y1dBTzN0eVovMWlRZHJxZWQ1QjZiOTZkVmwyei8wdzF2YU9xUTlOZmhC?=
 =?utf-8?B?ZHNubTQxR00rZ3J0azBYY1VndSt4L0hVQ2lzWlo2SzVsM3pmZ21FUENCalNo?=
 =?utf-8?Q?60TpW/anfFT6EjMAwNFntUL2GXpl+fTAQdVDw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230035)(1800799019)(376009)(366011)(38070700013); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SEpYRDZIU25FTjhNYW41dHBXaER3MWoxdGJRTHRscVV5NU5MRG1QNVpXTUxQ?=
 =?utf-8?B?SldBOUhkQStENDZZWHR5ODlYcVRDOURzR1p4a0paZXpRZE5IWFZ3REg3aVVZ?=
 =?utf-8?B?bDJPVCtvdDJBNW9MS21pVXcwZDBpTnVQclBwV1ZOa3h2TkR6clhYWGUyWFpV?=
 =?utf-8?B?QVpLWjhYTnVUU0llVFlnaTNaVXpSZHFaMmZxWkM2VzRkYXU0SkNWWFV2VEs3?=
 =?utf-8?B?NlNQRGhQcEtjenliOEVrZ1VLYjNjazYyZmJ2bVRDTHIxa1dTVkc1OHlySnVR?=
 =?utf-8?B?akdkUkZidVQ0T3RTM2lvWXg5eCsyU2gxMWRYNnFLMys0QUZRSDBQOURrZmdU?=
 =?utf-8?B?a2hrUDhKL09MdnBhN3dNZU5aVE5LLy81b3F3dVY5TWhXRUgwMXRFQnFPQVEv?=
 =?utf-8?B?ZFFManVXUThUV1J2Mnhzb0k0UkxDbGErdzRVZWYvVnFrTmZ0NysyWCtXN1ZU?=
 =?utf-8?B?dGRieXVIQXpETysrSWpYQzl2dFUwYnBTWGxuWURocWxjN1JLVHFZZ3gyNWcy?=
 =?utf-8?B?eFRXU2VObUs5VVFVd1B5N3ZLeXF1eFRWWWw5RXc1YnVac05jVmEzZVpYSjQv?=
 =?utf-8?B?TWpwTUNET2VIaUFrSytnNjFxaVVCQkhleXJzVW9rQ3UrQ0tSK254SDdzR3l0?=
 =?utf-8?B?MDc0c0JEaHprdnRLZFg0K0g4UFpXdGdjTEFjNzR1cWd6bWM2amt5QjBqUGlB?=
 =?utf-8?B?bWtGamxRQ2k4SHBtQkdUZHpWc3lqNHlsSWRSNm5GNWhkeDlhVkJwenF1T1VC?=
 =?utf-8?B?WkF6ODllOGFqWDh1LzkzZjRSYkQ0QkduRGlLdmdlTWhIUEdXSVN1UCtLT3Y0?=
 =?utf-8?B?anFZZ25JUVlhTXJQQmMydkdoR3JrYXBWdDZra3BLcmdsVFJ6OUFiRDJjRUhQ?=
 =?utf-8?B?S1NUbXVWYUFFL2czNjZNd3RPTEFrMlIwaWNmL1RZY3pZckx3MlZGQmtqOTVm?=
 =?utf-8?B?K2JzeHg2cTRwRjBFQ3VyN2NNVUQ2ZXl6TkJxZnBhMEhEaDNlbS9vaGF5OHhH?=
 =?utf-8?B?YUViM3pIK1VMQnVnOUV1NEw1a3pxRmE4WGdGWXNXditZTVFoZm9SWkErT1BX?=
 =?utf-8?B?YVQxUEJtMDdZTXlmTHlUOWdrQ2tQY0J6QXFQNk4wNnBzQm9McnIwVmp1TVFE?=
 =?utf-8?B?MDlSUXQ2MXhIUGdzWnhBWmZmTXo1ZE42bE5KQU9WNGVuNXVlRzBLNUx1dU1w?=
 =?utf-8?B?Nis5T1ZrRkNwdzZxNGtDN2h0bTNhR21iakpRbGNkUmYxZzRXT3JoWnRzMXJw?=
 =?utf-8?B?Q055dXZMK2VIMi9JcUJ1UUVYcHRoRFh2MmhPY1lHUEFwRmdRcVpZZGNlUlQx?=
 =?utf-8?B?QmNMbUdqV213eXErR3Z4bURhR25yd1NSb0tyM3dJYnJoTlhxS0NIZFBjOTk4?=
 =?utf-8?B?L2huZlFhaHcxSjJodVJaMzl0Y2VpRG4yekhIN3ExNWthLyt5WmQrdytrdk5S?=
 =?utf-8?B?aVZyRnkyUGhodVN3aTVLUDFrNy9DcTd2WDJIdy9hUUoyMGRTNkVCUDF4Ym9W?=
 =?utf-8?B?b0ZwRWlsNlRxZ0d1eGNpaVk5amxMZFlpYVBJcUZ5ck03ZUEvbmd1YTNONE1N?=
 =?utf-8?B?Mi9FSFgyYlZoZkd3U0NhenNldzNKaDlnVXF3WnZqZTlMdER5LytTNEV6OGx4?=
 =?utf-8?B?YktFTkNaVmdKSk1DZFIzUnlQc1pwdXRtcDdTcG80ODQwWk9MejVYbnMzQ2hV?=
 =?utf-8?B?WFhJa1gwalVxUzRhcVNqSmNlN0xsNGo4NGxpYXY1TmxFUk9ITGhMQmdUWWVQ?=
 =?utf-8?B?dHRRTEorcTVBaGF3MTNva3E0aElIb0lpd3lkdHJoUUJOYWZFY0xraDRKM0Fl?=
 =?utf-8?B?aVdmSlRMRFl6RlVxWEliUndZOE01RjJxMHdqL0lETnRQU2RnUS9oNWxYck9z?=
 =?utf-8?B?bFJEUklEaWd2RnIreU5NNmdESjh5UUs2RmRPbEtRbHlVUHpKSXJIWjkwelBx?=
 =?utf-8?B?UU5ueW42MVhwTFZVTDFhTG85TEhpODd4ekFsSkVkZVNTR0NBeCtseXg0elcr?=
 =?utf-8?B?aGtwaS9xSGVoVDNqS2hJVmRtV0dNRHlsdVRyNHhjeGV4NkJlSHQ1VHZQckFl?=
 =?utf-8?B?TzhhK3o5RHd1UXdybVFvT3pjZFpoU0NFbnNEbHgwR21RNnBOSEVsMXlWeDZn?=
 =?utf-8?B?QXl5T3ZGek1qR2Rodm5Rb2RvM3ZVL0twZUQ3Sm1yY0lZcmRoRlRQcjZMdzZy?=
 =?utf-8?B?MEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d51415b4-38cb-43c9-467e-08dc8c3f4db3
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 06:57:49.3787 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +Fy9TpIOWUev1az6dU7UGldNhheDXLKBkPXuiCHuS4Hi8JWD2QQYQ6AaH3yFEpCJTnkUqPtjSMRm3Cf6+tk9gOpFIwAX3PO0DfJkeGHJlfA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5992
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718348278; x=1749884278;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=beMHc3Ope13hvjGq+Z8LKJOf1gt4koN8UHJtEkjU/BU=;
 b=ZBGlBHRHs5iBq6HMQyHbx4yaJn8plYXKnF/V+e2ECm8qZ77V8zfzFlaZ
 UwyrE9tLwu9v60dKGvj7/Hd0rEWA7EAFXoJObj9SE4mAE3KJ8XGxaQD9I
 lXDoLVPzPgFW9KFiVhcJGvXnAISgEgqHMYL+Gp4E1SFqfVBIrPwNKwTDy
 D7yo9pm5qttoOSCmovnrFTc1l5yMH1G5Rh0jP5PlPgHKXbNnEfLHue1nF
 GDWgRFKLe58cDXsyvNwwfl7FCc4rfxlaYnPNVAj8IciUnY0Dyd6ULd4PU
 YE9cpw3eNRhUbE1FT6JKZrS35XY00JXyxOwL2vmTkW8QsPU+VT2hk1IcE
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZBGlBHRH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kang,
 Kelvin" <kelvin.kang@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmd1eWVuLCBBbnRob255
IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgSnVuZSAx
MywgMjAyNCAxMToyNyBQTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5s
b2t0aW9ub3ZAaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5vc3Vvc2wub3Jn
DQo+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBLYW5nLCBLZWx2aW4gPGtlbHZpbi5rYW5n
QGludGVsLmNvbT47DQo+IEt1YmFsZXdza2ksIEFya2FkaXVzeiA8YXJrYWRpdXN6Lmt1YmFsZXdz
a2lAaW50ZWwuY29tPjsgS2l0c3plbCwNCj4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVs
QGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCBpd2wtbmV0IHYzXSBpNDBlOiBmaXgg
aG90IGlzc3VlIE5WTSBjb250ZW50IGlzDQo+IGNvcnJ1cHRlZCBhZnRlciBudm11cGRhdGUNCj4g
DQo+IE9uIDYvMTIvMjAyNCA0OjA0IEFNLCBBbGVrc2FuZHIgTG9rdGlvbm92IHdyb3RlOg0KPiAN
Cj4gQXMgUHJ6ZW1layBoYXMgcG9pbnRlZCBvdXQuLi4NCj4gDQo+ICJob3QgaXNzdWUiIGRvZXNu
J3QgbmVjZXNzYXJpbHkgY2FycnkgdGhlIHNhbWUgbWVhbmluZzsgYmV0dGVyIHRvIGp1c3QNCj4g
ZHJvcCB0aGF0IG91dCBvZiB0aGUgdGl0bGUuDQo+IA0KRG9lcyBpdCBtYWtlIHNlbnNlIHRvIGNo
YW5nZSB0aGUgY29tbWl0IHRpdGxlIGFuZCBzdGFydCBhIG5ldyBtYWlsaW5nIGxpc3QgdGhyZWFk
IHdoZW4gaXQgd2FzIGFscmVhZHkgdGVzdGVkIGFuZCByZWFkeSB0byBtZXJnZT8NCg0KPiA+IFRo
ZSBidWcgYWZmZWN0cyB1c2VycyBvbmx5IGF0IHRoZSB0aW1lIHdoZW4gdGhleSB0cnkgdG8gdXBk
YXRlIE5WTSwNCj4gPiBhbmQgb25seSBGL1cgdmVyc2lvbnMgdGhhdCBnZW5lcmF0ZSBlcnJvcnMg
d2hpbGUgbnZtdXBkYXRlLiBGb3INCj4gPiBleGFtcGxlIFg3MTBEQTIgd2l0aCAweDgwMDBFQ0I3
IEYvVyBpcyBhZmZlY3RlZCwgYnV0IHRoZXJlIGFyZQ0KPiBwcm9iYWJseSBtb3JlLi4uDQo+ID4N
Cj4gPiBBZnRlciAyMzBmM2Q1M2E1NDcgcGF0Y2gsIHdoaWNoIHNob3VsZCBvbmx5IHJlcGxhY2Ug
Ri9XIHNwZWNpZmljDQo+IGVycm9yDQo+ID4gY29kZXMNCj4gDQo+IENvdWxkIHlvdSBjaXRlIHRo
ZSBjb21taXQgaW4gdGhlIHByZWZlcnJlZCBzdHlsZSBvZiBTSEEgK3RpdGxlPw0KUGxlYXNlIHNl
ZSBGaXhlZDogdGFnIGJlbG93DQoNCj4gDQo+IEknZCBzdWdnZXN0DQo+IA0KPiAnQWZ0ZXIgY29t
bWl0IDIzMGYzZDUzYTU0NyAoImk0MGU6IHJlbW92ZSBpNDBlX3N0YXR1cyIpLCcNCj4gDQpJcyBp
dCByZWFsbHkgbmVlZGVkIHRvIG1lbnRpb24gaXQgdHdpY2UgaW4gdGhlIGNvbW1pdCBtZXNzYWdl
Pw0KDQo+IFRoYW5rcywNCj4gVG9ueQ0KPiANCj4gPiB3aXRoIExpbnV4IGtlcm5lbCBnZW5lcmlj
LCBhbGwgRUlPIGVycm9ycyBzdGFydGVkIHRvIGJlIGNvbnZlcnRlZA0KPiBpbnRvDQo+ID4gRUFH
QUlOIHdoaWNoIGxlYWRzIG52bXVwZGF0ZSB0byByZXRyeSB1bnRpbCBpdCB0aW1lb3V0cyBhbmQN
Cj4gc29tZXRpbWVzDQo+ID4gZmFpbHMgYWZ0ZXIgbW9yZSB0aGFuIDIwIG1pbnV0ZXMgaW4gdGhl
IG1pZGRsZSBvZiBOVk0gdXBkYXRlLCBzbyBOVk0NCj4gYmVjb21lcyBjb3JydXB0ZWQuDQo+ID4N
Cj4gPiBSZW1vdmUgd3JvbmcgRUlPIHRvIEVHQUlOIGNvbnZlcnNpb24gYW5kIHBhc3MgYWxsIGVy
cm9ycyBhcyBpcy4NCj4gPg0KPiA+IEZpeGVzOiAyMzBmM2Q1M2E1NDcgKCJpNDBlOiByZW1vdmUg
aTQwZV9zdGF0dXMiKQ0KPiA+IENvLWRldmVsb3BlZC1ieTogS2VsdmluIEthbmcgPGtlbHZpbi5r
YW5nQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBLZWx2aW4gS2FuZyA8a2VsdmluLmth
bmdAaW50ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBBcmthZGl1c3ogS3ViYWxld3NraSA8YXJr
YWRpdXN6Lmt1YmFsZXdza2lAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFsZWtzYW5k
ciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
