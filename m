Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BCBBFBC61
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 14:06:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A591E60FFE;
	Wed, 22 Oct 2025 12:06:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Y6doGq6xrf6; Wed, 22 Oct 2025 12:06:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D3AB60E65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761134780;
	bh=ezMMPCqKofofjALUdtK+xx51Zj5AZYXIRBFnH3d4380=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mnz8nL4K3UFbolagLGec3Ed2gLCTa2iM61QVtswYYNL4J8TLQc3uNnEKu3EZmRpMU
	 33sSmvjLpqHKrJR2lpF7ielkyztZ0EM9meQDfBDns40/NmjLsWxxPKTulfU/Lt5QZ3
	 mzlkHSOigjtoC+sqfFP3QDp8C6hKgroqWTEeTLFUsmwUuvt5UxlsF2wYFTy3eBUP8+
	 bryaDvwf3hJAY9EhTTaYI0hPdz5pMYD5h8RvZ4odqLm5tGuQLG/fxrYbYg36WycFvD
	 BpaC5LT0TW4RTNu9B+N2rXo47n+eNrjfuJOjy5xeUheMJuXgl6ySlROzCboNLFgTxO
	 768AP94NVx7Ig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D3AB60E65;
	Wed, 22 Oct 2025 12:06:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 75FE943F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 12:06:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C8F282B3E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 12:06:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QlF9x4TcL_Rw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 12:06:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 97912831E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 97912831E7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 97912831E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 12:06:17 +0000 (UTC)
X-CSE-ConnectionGUID: zqQ1usFGS0GuXK6CUky8Rw==
X-CSE-MsgGUID: jHsArWm3RpCw5jCwkDXKqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="73569316"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="73569316"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 05:06:17 -0700
X-CSE-ConnectionGUID: JYZYK2tVT7COCJ4VSmEInQ==
X-CSE-MsgGUID: 9usZXu8bSk2nAWtnvQFsLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="184257527"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 05:06:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 05:06:16 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 05:06:16 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.37) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 05:06:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nn4IIWP6v+4Hy775pQIzslCQdQnOQCSSdk8vt+xKBoFL+o5tBOOX2DIo7MbwVbcbiP+U5P8dpwbYYDvly9BTQlw1WVZTHp6tjDetyg0f97HHetKngrwsSxPlgrNp1W08aK7N9TRjkYOWrfmjtsGthPa+lJtKLGgY9Pz3ZiqYvrTaOK/0MmxMnm8wpAy6iLJXG7yVW+aZHuKivP0Z3axb9u4fSJ6p1MRnPdTT1NOEmUjQDAafJ4qW4OLWQmLG8sjlVAeg9jqQ9OsOLnqxVXkK71n+4/Ks+UF0f8nsJ9ydHu4p/7KKboLqLUMRrR7CMcHlsxwfRbMMEpeHIqHmUj/FdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ezMMPCqKofofjALUdtK+xx51Zj5AZYXIRBFnH3d4380=;
 b=vG5TDKLad3agE8nP9WAwM+rdtHPrYnC1ajfYEn9rIEZ/vjQA3R+XrZlzqd4YA5r339/fv1E2LipAUUbJSLtS2VCvcghsZ6IJoMguptttumfp7RIw8z+sOTvQtzCCqogo+wCQ8Qicco4mJmjYNWeyP0zyaMe0gEfiijTNjwzTaZfQCDMfMGk+0JFWB4uhcwSFPE8Zq5xURaqOUY4Pp0XaeqeN8vcTmIjuoOS6JvlbuqvgT0xC/+tatwZDlYeDfegbVNhDb5uuqZ84Nsl4km09LtyU2JQjkKaiVDRxYNjw4xHCWvmy9BkjJ0Q4YYc4H5v/E488oHsGPyv9qRNK5UHBMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB7273.namprd11.prod.outlook.com (2603:10b6:610:141::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 12:06:13 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 12:06:12 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, Robert Malz
 <robert.malz@canonical.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Jamie Bainbridge
 <jamie.bainbridge@gmail.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Dennis Chen <dechen@redhat.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet
 <edumazet@google.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: avoid redundant VF link state
 updates
Thread-Index: AQHcQqGndulDEV0ELkCAQN1znOi4GbTODowAgAAEDKA=
Date: Wed, 22 Oct 2025 12:06:12 +0000
Message-ID: <IA3PR11MB89860CA0245498E6FF720E48E5F3A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251021154439.180838-1-robert.malz@canonical.com>
 <0c62b505-abe7-474e-9859-a301f4104eeb@molgen.mpg.de>
In-Reply-To: <0c62b505-abe7-474e-9859-a301f4104eeb@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: pmenzel@molgen.mpg.de
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB7273:EE_
x-ms-office365-filtering-correlation-id: b7dd526e-1c3d-4ac2-e86e-08de11636522
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?VmtxVitsQncvZFhsZGV4N1U0SjNSUDUxK1lUZmFHNEdJWkxRbUw3ODRqeFJh?=
 =?utf-8?B?eFQwWWxDM1VoSDh0RThSNnJuTHp6OTZsZGs1Q2xGSjhZd3NoVGpRVGtkb2FU?=
 =?utf-8?B?VTFYOTc3N2M4blRtUndySWduUG5yYUphR0NyalZOcGU5SHlHaUFNQmN4aDNj?=
 =?utf-8?B?MTFyUExlQ0R6d2F2a1FzbVllV1lsd2tYSEc3MzBDcHN2Wk5JdjhTL3lsb0Uv?=
 =?utf-8?B?TktjU2t4TjJYMEJZSjkwWjF3ekQ2V0IycmZPN3VFQnJ3blR4cmJyWU0rVmtq?=
 =?utf-8?B?NW9pV0xWTTVmM1hRcyt4Y2dYeDlmeTRaUitzZVZnb09Bdlo4QTFMQ3ZUUHZP?=
 =?utf-8?B?cE1wbWRkUFkwZjFmK3BGclVPcFF5MkRMNEYwMkFFQytJVGIxRUZZa1lzSmcr?=
 =?utf-8?B?TVBaMWU3cVR3TXZ1QXRJVVlmQW5oemZkd0FQQ2d2OXI2SlYvdEtWTDQydUNE?=
 =?utf-8?B?cWE4elFTUCtCNGU4NzlRYXNxd3ZFZEhMcWhOa0lEeElmN3FGWlJUZjdpOE1R?=
 =?utf-8?B?ZDIxbTBiV0xlVGN3a0VMY2NvcHVVcGdGZVYvejVBaFcwK2c3bWZMTXU3b09y?=
 =?utf-8?B?bnp1S3REMEdzRWQ2bkZlNUZvQWZSN09MemZoek9iQTRrNnc0QUxlWWxvT0or?=
 =?utf-8?B?aEpQditkZitXS2VSSkloVlM3TmdxN21iVHA4SkV5K0RnM2NvMU1IdDM3ZktW?=
 =?utf-8?B?c2cycVZvY3lHNnY5aE90QjU5ajhaY3lBamRnZjVZdEIzdHltWENXUFFsTDUx?=
 =?utf-8?B?emphc2JVWGpvVHdNdGl6SytQSHptL0FkZFhlMVJkWkRkOWtvUkVrcWZDT0N4?=
 =?utf-8?B?cWtaN2dLR2JsMWFDZEpHRkp2ZnVlM2p5aVdFa3RRZUlrcGt1cy96VlJLdTRa?=
 =?utf-8?B?RFhnTDZlRUhPQmI0Qi9IYTlwTVdES1VFdEZzeHVRRTl2WG15NE5LOEhNK3Jq?=
 =?utf-8?B?UkhhZDdBWUsrTXpTNHE2aXlvS2Zxd01zM0FyTHZyMklxY2tSSUpmL3RheVNk?=
 =?utf-8?B?dnpJUytNc1JzbmJOU3VhQW5XUkxVRytFbDkveGIzalNnVnplVUk0Y2VCY0V4?=
 =?utf-8?B?RTZrU3gzQ2RZWnZmQU40THdZMkFFOXRrWUExeWFUb293Smt1M0dwN0s2VHVZ?=
 =?utf-8?B?dG5WQjFqbjE2QzhHVUphQUlhdnAraTZ1UUJqbFA1MEwyRG9zWXJDNERGM2Mr?=
 =?utf-8?B?R2loc3JiOXYzdUE5MDlEaDhubnVRM0pXR001aWFHdllNeWZLWENnSDNDZVdJ?=
 =?utf-8?B?cENkZE1ERjk5WVNaV3UydlkzcHpuLzN1S2hTZHBveDRuVUdWZ00rbHZjZDNK?=
 =?utf-8?B?aFdoOFVUbXhPQmJJMWhMdllHTnUyTkFTOGVZM0dvQkVoV1FnNXlHSk8xSDBV?=
 =?utf-8?B?MitwcktVM3lRR0NQWTB0OHhGci9PUU9JNmQ4RkJHOExCM2U1RlR6dXpQdm5F?=
 =?utf-8?B?TTVOQ01pUU9Sa0NkNUFoRVhJeWE1aTR1aXpUL2R0ckZSL0ZrY3pUWVI5S3Rq?=
 =?utf-8?B?dWJjTGgwckNocUZ6TWx5YVdxUWZOZkNXVUF4VVR2dHR3WGcydCtGUWd1bnBJ?=
 =?utf-8?B?eVdIeVpVMjJBZkJKUC9hZ0xqcUJONU5SYU5oa0FDQjk0dEEvWHN3Q1JyZFYy?=
 =?utf-8?B?WlZ5YlFVSzJGV3ZZcmVyT1U4MkJnSnVRbHJsenJCRkpMRzZ0MEVhT0NsSXVt?=
 =?utf-8?B?THVmeGtTcE1EbUcvYkFubnFCUldpc3pLM3RpcmQ0bW5HL3lBRitTUFdnTmgx?=
 =?utf-8?B?L292SnQvZlZaeUVCVHAxOWcvWWtvQ0xROHE1UEp3SHhXZzVrcXJRekFaWlFH?=
 =?utf-8?B?WHU4QWhDVTh4MlYxeldYak9CUXdKVXNacVBuV0ozQ1N3UHk4ZDZkOHZoWVVN?=
 =?utf-8?B?L1I2WDNlYmlWcklnQVFwbno1QjlYcHJITk1heXJKeXY5WUVGV01TM0tqU2Js?=
 =?utf-8?B?RmNsZGJPWHZiYW9lN1E0dEE3V2lRb1FJcXltSjFHSGM5bmlsN3NyUVdiRmJo?=
 =?utf-8?B?SnF2RkdtL2lCalA3b2pYRlovS3JyRElXSGZnK0xEN09WQkJINHlnQUhJcnRR?=
 =?utf-8?Q?ORyBEc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WThRQVdkOUVqQTBNaXVEMUFhUVZsSVYxZzluUHRwaUJFa1U1RlRRWVVCbzNr?=
 =?utf-8?B?Q2o1VFg2V2d0QTlKR2wwQ3puTUErMjJmUmJBUnU1RUZwbzIvbHhha3ZHU3Vn?=
 =?utf-8?B?ek9RMDRBeFBvR3pIdXBSYzRYaFozZncxVFFMUUtIbmdRTFhsMytYK0tlZ0N1?=
 =?utf-8?B?M29JMHhNRWhJOHdxKzJkbFJnTlBrckJrK215N21Qd1V5MG1GQkJHYUJtU0NZ?=
 =?utf-8?B?ckpaVVA4RHMrSFhLUk02RVRLMzV4YVhib3RpaisxTmdZODBsWmV1L2tvc2tS?=
 =?utf-8?B?ZFgyalZOVUFmeWp1M0dsRlVyNXFoSm9QY3B1aG4wWGQvR3VHaXpEWFFrMzVE?=
 =?utf-8?B?TWNzQkhrdlFVWFRQS001OWxuelJtRzROcWVWcG1HKzNYbW9GZk8zNXg1QVRF?=
 =?utf-8?B?V0Y4ZFBDc1dKRGx6bVVTTlVjVXNUbFAyWk40elA1UlJBcHVhbVBkek9UYk1q?=
 =?utf-8?B?VXVtdExQMWluNjNLZWYxTmRkVkl0YzRIajBabk9RbGRCYXcwc25GblpsTGh0?=
 =?utf-8?B?ajY5WHBHUGZBM2ZzOW5Kd2M1b1doNkF0eEJESU1RVGNXMENLTSsvN3JWdy9r?=
 =?utf-8?B?Vi96Ui9KUWJPYjBYWWQvSFlQakQ1RlRTektYekN5RjhiMitISCsxYjByUUgz?=
 =?utf-8?B?d1U1b1RDVE96Y2lNcS9iaEN4b2xRd1hCT3RGbzErdlB1OGsvaXdsTTI5T1da?=
 =?utf-8?B?SGszUGVZd2d1Z29PRmwxcnpJWjJENDJTbElVcHpQekw1NmVxdmYrTjZRM3JZ?=
 =?utf-8?B?MndDYmZXeHVNaUhFOS9LM3lIT0NLeTNYd1RkL2tQQW1aUHpFZmxXb2xhY29G?=
 =?utf-8?B?aTFkMTdLQU9FemR4TENOekIyT3lZdWJMeXRHd3BMVU9lRzQ2am5hdndjSVo5?=
 =?utf-8?B?c2w4d2kzcDZsQVk0Vk1GOG0vSDBWZUhFSDZOaHRJSGNsUW9IdWdsSndsM0M2?=
 =?utf-8?B?VlFrQ1BwNjU5VHpOSm9mU3d4dWVPWnNPSm54OU9FU3JtQndXVWVKSUI4RUNH?=
 =?utf-8?B?eFlQMFovb09aanNlamFYSlpPK2hwSVZ3UmNHcnltZzJWRFZCaUZjS25qVmJw?=
 =?utf-8?B?L20wSm1FNUV2TkpTandlTzVVekZNMXpEZElsYjNaTHVEL3lmM1YwdVNXczlO?=
 =?utf-8?B?TTM1MjYyWDF2c2dYOTdlbVhlSWZHTkhQU3Qybit6SFdWUkFXOFJZQVVkV0RX?=
 =?utf-8?B?RTVGaDVuNmdyNXJkclVoV2xtUXRqdHhOaW90SEgyNytxdjVnaDBoaURiM2xw?=
 =?utf-8?B?Qy9iK2swUGgxTHhBSTdYVWl4K0NwenVvdUhaSW83YTU1OWgwREhyaUxXaG5r?=
 =?utf-8?B?V2FJVWw3bDY3MWgwVlFQdisxZkFGV0xTNTA0a1hQajVGY2JIREIvYTlneERK?=
 =?utf-8?B?dzkwbVRLam9uaWpZc2Q3cnM5akVqY2FabkJ6OGxwQzNGQTN4ZEdnK2J3WDh6?=
 =?utf-8?B?QStsRUFOZzRDU0JLWCtQc3hoNkMxR0pxODNMZ1ZzaEhkTFBUSTJUeVhVdEdK?=
 =?utf-8?B?eU5TZnhCOURleWd0UFlaUzZyTFozTktDS3hNTUdqUXBFRXpLUFo2V2oxZXQz?=
 =?utf-8?B?VjB3UEtqVVBUZGcvOHRodktBSkppMnlLb3dYdjVORjNwbmpNdWFHUHYrQTRC?=
 =?utf-8?B?UnptOU1hbGRyV3NFVHdnRjF5ZkRrZENuVC9LMXBIM1NGT3NTa0diSzE1aDd6?=
 =?utf-8?B?ckxoNGpVTXhrbTBRZ1l5OHpVVkY4bDZZVEkvdENpcWc0M1p3amhUUmhyODNP?=
 =?utf-8?B?M3l3ZzFTS0VQUkpTbFltcWRIN2JVb0lONmw0SWdzUlloYWZuL21kU1Vuc1RH?=
 =?utf-8?B?U1ViSWJjTHN0WHRIY2p6MGRMaGlsdlB3OFVjdkorY2phZ1ZENnVDR0laVWdx?=
 =?utf-8?B?Y3Aza1ZHSHdBc1R1cHhsc1J5bDBnVXAwUTRIanFGRmdkK3pXYmQyOFRxYVA5?=
 =?utf-8?B?OTNHUHh4MEFiT0hsaGFGZXhRZG81akQ3RVVCZW9qeEpvRHZDYWlZTGVJL3BY?=
 =?utf-8?B?ZkRCRnFJNHgwT0FyOS8zWWk4VzFXVWxxcFFlYzY4MEk4TUtjSE9WazlIU29z?=
 =?utf-8?B?YTVXZnBKTlNaZXFZcUxTQ2hSWlZ0Y0VCWTZMV0hPaVdvVFM2M0ZlRmNpQ2ht?=
 =?utf-8?B?VGlOblFSUkdhd3RuNGpSN2tnZXpkcm1XMFdyZTBHMy80Q3JnWkdKNUl3L0F6?=
 =?utf-8?B?cVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7dd526e-1c3d-4ac2-e86e-08de11636522
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2025 12:06:12.9067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6xJKjU3ghOaXG36RY0QJlZTuWP2El1gIrJMVcQnXnzXaAo3lmFlNnEqA7rhf8v8KpCmy+HGnb3w3skhYpCjBpP4R+VxbQ7V03xuIZZChGtM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7273
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761134777; x=1792670777;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ezMMPCqKofofjALUdtK+xx51Zj5AZYXIRBFnH3d4380=;
 b=eY1/x4xd0MjZq5eBTWnsPBEFsl3AG0TlusJStiFOQ6N0VEhpfRc1Scu/
 5DHt3etqPPtYM1OiJWD2OKzqByTb7oVS/xQ0I5duA26Tr0iiYYo0XNrmU
 +75rKKUhvKiqRWrybN0nrj9W7TOtwOrydO0fteLu5wBAaEgd2v9Luthc9
 5R0jWTC+jcLe62B5IzRSDsQj+qvTjwZ/fWYo05p0+rpYPi2zsRlsATiHt
 SOyixXVqSH4Hoo67KxK0xSpTbDYwrtrU/PbtU7Z+mpoStV/oFvwILZ9g3
 lIPKTQYH861qd4PW9t8Pq/BqsvsdPvADPcyoGq6D80F2n9/8pV5h5KPVJ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eY1/x4xd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: avoid redundant VF link state
 updates
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogV2VkbmVzZGF5LCBPY3RvYmVyIDIyLCAyMDI1
IDE6NDkgUE0NCj4gVG86IFJvYmVydCBNYWx6IDxyb2JlcnQubWFsekBjYW5vbmljYWwuY29tPg0K
PiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5l
bC5vcmc7IEphbWllDQo+IEJhaW5icmlkZ2UgPGphbWllLmJhaW5icmlkZ2VAZ21haWwuY29tPjsg
TWljaGFsIFN3aWF0a293c2tpDQo+IDxtaWNoYWwuc3dpYXRrb3dza2lAbGludXguaW50ZWwuY29t
PjsgRGVubmlzIENoZW4gPGRlY2hlbkByZWRoYXQuY29tPjsNCj4gS2l0c3plbCwgUHJ6ZW15c2xh
dyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEN6YXBuaWssIEx1a2Fzeg0KPiA8bHVr
YXN6LmN6YXBuaWtAaW50ZWwuY29tPjsgTG9rdGlvbm92LCBBbGVrc2FuZHINCj4gPGFsZWtzYW5k
ci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgQW5kcmV3IEx1bm4gPGFuZHJldytuZXRkZXZAbHVubi5j
aD47DQo+IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IE5ndXllbiwgQW50aG9u
eSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IFNpbW9uIEhvcm1hbiA8aG9ybXNA
a2VybmVsLm9yZz47IEtlbGxlciwNCj4gSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29t
PjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47DQo+IFBhb2xvIEFiZW5pIDxwYWJl
bmlAcmVkaGF0LmNvbT47IERhdmlkIFMgLiBNaWxsZXINCj4gPGRhdmVtQGRhdmVtbG9mdC5uZXQ+
DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0hdIGk0MGU6IGF2b2lkIHJl
ZHVuZGFudCBWRiBsaW5rDQo+IHN0YXRlIHVwZGF0ZXMNCj4gDQo+IERlYXIgUm9iZXJ0LA0KPiAN
Cj4gDQo+IFRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4NCj4gDQo+IEFtIDIxLjEwLjI1IHVtIDE3
OjQ0IHNjaHJpZWIgUm9iZXJ0IE1hbHo6DQo+ID4gRnJvbTogSmF5IFZvc2J1cmdoIDxqYXkudm9z
YnVyZ2hAY2Fub25pY2FsLmNvbT4NCj4gPg0KPiA+IE11bHRpcGxlIHNvdXJjZXMgY2FuIHJlcXVl
c3QgVkYgbGluayBzdGF0ZSBjaGFuZ2VzIHdpdGggaWRlbnRpY2FsDQo+ID4gcGFyYW1ldGVycy4g
Rm9yIGV4YW1wbGUsIE5ldXRyb24gbWF5IHJlcXVlc3QgdG8gc2V0IHRoZSBWRiBsaW5rDQo+IHN0
YXRlDQo+ID4gdG8NCj4gDQo+IFdoYXQgaXMgTmV1dHJvbj8NCj4gDQo+ID4gSUZMQV9WRl9MSU5L
X1NUQVRFX0FVVE8gZHVyaW5nIGV2ZXJ5IGluaXRpYWxpemF0aW9uIG9yIHVzZXIgY2FuDQo+IGlz
c3VlOg0KPiA+IGBpcCBsaW5rIHNldCA8aWZuYW1lPiB2ZiAwIHN0YXRlIGF1dG9gIG11bHRpcGxl
IHRpbWVzLiBDdXJyZW50bHksDQo+IHRoZQ0KPiA+IGk0MGUgZHJpdmVyIHByb2Nlc3NlcyBlYWNo
IG9mIHRoZXNlIHJlcXVlc3RzLCBldmVuIGlmIHRoZSByZXF1ZXN0ZWQNCj4gPiBzdGF0ZSBpcyB0
aGUgc2FtZSBhcyB0aGUgY3VycmVudCBvbmUuIFRoaXMgbGVhZHMgdG8gdW5uZWNlc3NhcnkgVkYN
Cj4gPiByZXNldHMgYW5kIGNhbiBjYXVzZSBwZXJmb3JtYW5jZSBkZWdyYWRhdGlvbiBvciBpbnN0
YWJpbGl0eSBpbiB0aGUNCj4gVkYNCj4gPiBkcml2ZXIgLSBwYXJ0aWN1bGFybHkgaW4gRFBESyBl
bnZpcm9ubWVudC4NCj4gDQo+IFdoYXQgaXMgRFBESz8NCj4gDQpJIHRoaW5rIFJvYmVydCBuZWVk
czoNCi0gdG8gZXhwYW5kIGFjcm9ueW1zIGluIHRoZSBjb21taXQgbWVzc2FnZSAoTmV1dHJvbiDi
hpIgT3BlblN0YWNrIE5ldXRyb24sIERQREsg4oaSIERhdGEgUGxhbmUgRGV2ZWxvcG1lbnQgS2l0
KS4NCi0gdG8gZml4IHRoZSBjb21tZW50IHN0eWxlIGFzIHBlciBjb2RpbmcgZ3VpZGVsaW5lcy4N
Ci0gYWRkIGEgc2hvcnQgbm90ZSBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgYWJvdXQgaG93IHRvIHJl
cHJvZHVjZSB0aGUgaXNzdWUuDQpAUGF1bCBNZW56ZWwgcmlnaHQ/DQoNCj4gPiBXaXRoIHRoaXMg
cGF0Y2ggaTQwZSB3aWxsIHNraXAgVkYgbGluayBzdGF0ZSBjaGFuZ2UgcmVxdWVzdHMgd2hlbg0K
PiB0aGUNCj4gPiBkZXNpcmVkIGxpbmsgc3RhdGUgbWF0Y2hlcyB0aGUgY3VycmVudCBjb25maWd1
cmF0aW9uLiBUaGlzIHByZXZlbnRzDQo+ID4gdW5uZWNlc3NhcnkgVkYgcmVzZXRzIGFuZCByZWR1
Y2VzIFBGLVZGIGNvbW11bmljYXRpb24gb3ZlcmhlYWQuDQo+IA0KPiBBZGQgYSB0ZXN0ICh3aXRo
IGBpcCBsaW5rIOKApmApIGNhc2UgdG8gc2hvdywgdGhhdCBpdCB3b3JrcyBub3cuDQo+IA0KPiA+
IENvLWRldmVsb3BlZC1ieTogUm9iZXJ0IE1hbHogPHJvYmVydC5tYWx6QGNhbm9uaWNhbC5jb20+
DQo+ID4gU2lnbmVkLW9mZi1ieTogUm9iZXJ0IE1hbHogPHJvYmVydC5tYWx6QGNhbm9uaWNhbC5j
b20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSmF5IFZvc2J1cmdoIDxqYXkudm9zYnVyZ2hAY2Fub25p
Y2FsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV92aXJ0Y2hubF9wZi5jIHwgMTINCj4gKysrKysrKysrKysrDQo+ID4gICAxIGZpbGUgY2hh
bmdlZCwgMTIgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9wZi5jDQo+ID4gYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdmlydGNobmxfcGYuYw0KPiA+IGluZGV4IDA4MWE0
NTI2YTJmMC4uMGZlMGQ1MmM3OTZiIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9wZi5jDQo+ID4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3ZpcnRjaG5sX3BmLmMNCj4gPiBAQCAtNDc4OCw2ICs0
Nzg4LDcgQEAgaW50IGk0MGVfbmRvX3NldF92Zl9saW5rX3N0YXRlKHN0cnVjdA0KPiBuZXRfZGV2
aWNlICpuZXRkZXYsIGludCB2Zl9pZCwgaW50IGxpbmspDQo+ID4gICAJdW5zaWduZWQgbG9uZyBx
X21hcDsNCj4gPiAgIAlzdHJ1Y3QgaTQwZV92ZiAqdmY7DQo+ID4gICAJaW50IGFic192Zl9pZDsN
Cj4gPiArCWludCBvbGRfbGluazsNCj4gPiAgIAlpbnQgcmV0ID0gMDsNCj4gPiAgIAlpbnQgdG1w
Ow0KPiA+DQo+ID4gQEAgLTQ4MDYsNiArNDgwNywxNyBAQCBpbnQgaTQwZV9uZG9fc2V0X3ZmX2xp
bmtfc3RhdGUoc3RydWN0DQo+IG5ldF9kZXZpY2UgKm5ldGRldiwgaW50IHZmX2lkLCBpbnQgbGlu
aykNCj4gPiAgIAl2ZiA9ICZwZi0+dmZbdmZfaWRdOw0KPiA+ICAgCWFic192Zl9pZCA9IHZmLT52
Zl9pZCArIGh3LT5mdW5jX2NhcHMudmZfYmFzZV9pZDsNCj4gPg0KPiA+ICsJLyogc2tpcCBWRiBs
aW5rIHN0YXRlIGNoYW5nZSBpZiByZXF1ZXN0ZWQgc3RhdGUgaXMgYWxyZWFkeSBzZXQNCj4gKi8N
Cj4gPiArCWlmICghdmYtPmxpbmtfZm9yY2VkKQ0KPiA+ICsJCW9sZF9saW5rID0gSUZMQV9WRl9M
SU5LX1NUQVRFX0FVVE87DQo+ID4gKwllbHNlIGlmICh2Zi0+bGlua191cCkNCj4gPiArCQlvbGRf
bGluayA9IElGTEFfVkZfTElOS19TVEFURV9FTkFCTEU7DQo+ID4gKwllbHNlDQo+ID4gKwkJb2xk
X2xpbmsgPSBJRkxBX1ZGX0xJTktfU1RBVEVfRElTQUJMRTsNCj4gPiArDQo+ID4gKwlpZiAobGlu
ayA9PSBvbGRfbGluaykNCj4gPiArCQlnb3RvIGVycm9yX291dDsNCj4gDQo+IFNob3VsZCBhIGRl
YnVnIG1lc3NhZ2UgYmUgYWRkZWQ/DQo+IA0KSSB0aGluayBhZGRpbmcgb25lIHdvdWxkIGJlIHJl
ZHVuZGFudCBzaW5jZSBza2lwcGluZyBpZGVudGljYWwgc3RhdGUgY2hhbmdlcyBpcyBleHBlY3Rl
ZCBiZWhhdmlvci4gDQoNClRoYW5rIHlvdQ0KQWxleA0KDQo+ID4gKw0KPiA+ICAgCXBmZS5ldmVu
dCA9IFZJUlRDSE5MX0VWRU5UX0xJTktfQ0hBTkdFOw0KPiA+ICAgCXBmZS5zZXZlcml0eSA9IFBG
X0VWRU5UX1NFVkVSSVRZX0lORk87DQo+ID4NCj4gDQo+IA0KPiBLaW5kIHJlZ2FyZHMsDQo+IA0K
PiBQYXVsDQo=
