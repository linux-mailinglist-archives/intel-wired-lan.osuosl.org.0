Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDXjCJqc4GnokAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 10:23:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D48C40B7BF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 10:23:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A123380BCD;
	Thu, 16 Apr 2026 08:23:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id waK9So6lrEjU; Thu, 16 Apr 2026 08:23:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 041B880BC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776327830;
	bh=tauJ9ojgSkRqvx/3P5C0A0vC+vhfpD2wI+4mObseAsU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M2urBjk7THuuVnuhyX1+dMAQl4Zonka/Nre1ea77BNHLr7kuV3zFSJYUeFrlwBnYq
	 PGZzj69dSSLJreil3qLo36RrudLLbEW0c3sGFodNqwsQY9V2NYuKdtcNELzn2o/SMH
	 suvUHcEGrPGJIU3hMAiCstSPZrK1zr0Zt+ZWTGhuP3yXz5EvLSbcV0CCRYd9MmSaSZ
	 EBIILJeN6OAaOr/DWo7FqTJpDRvJY6Jy+EIbSLCOapl2cYmfP2hwGB5RBFzHBEr598
	 lZiR2l6DrzTlvGyqSIOvxhEU9isaEj+Sn4yNt4U79rFEEb4DpPA82MV8Z1ehxf+4F/
	 Aq4jSteEaOOwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 041B880BC4;
	Thu, 16 Apr 2026 08:23:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 72608775
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 08:23:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6319680BBE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 08:23:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H-5lZ2OfKItW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 08:23:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0C50180BB9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C50180BB9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0C50180BB9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 08:23:46 +0000 (UTC)
X-CSE-ConnectionGUID: YZI6fAw5Q4K8rbjfQIYBJg==
X-CSE-MsgGUID: CcGnx6omQIe1EGWOv6LgLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="76487610"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="76487610"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 01:23:45 -0700
X-CSE-ConnectionGUID: vUuamrGWTDyYXlSmHt2+8g==
X-CSE-MsgGUID: F+yBSJNaRquMbsxxgFeS2A==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 01:23:44 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 01:23:44 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 01:23:44 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.52) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 01:23:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H5AQntT7FsonOV9r/Y0LHZLG2DW6vNEWll601W4Sjq18GNGeZ01ByleVzlDHxTrR55rModMbNau59a/unBLaxvIzDAS09SEN9CQHc1hYqstcts88rQF60cmVhYOtdG8FgvyxT56QCxIF5LjbMmQDC2n6yxTRULcjZdkCJ2OX1TkM+cJ9YtX6md5cuo0U46hvjnxP2FfCXWIBMcQRxS0U1UWRMgHGFrWUatPg310vN92quyG2QJqlGZckRpSsxm1IZlOkQ0GuwP958P4Nv0bQWcr0COA9N0wGV6tfLu71O3qbQ74Wz9MU7gfKk32enbz9KehH2pBezTeCca3RN4KQ+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tauJ9ojgSkRqvx/3P5C0A0vC+vhfpD2wI+4mObseAsU=;
 b=W55KcafBjzUoKBbGoJVnAiQH5jxZGzsrfu7GwIXVOraGik6x6e41gO5uD6BeD+DEHRs81Gim3CnGhZ/cbNTBPNEvIa0ormVuq6G+r/CQna9pqqArTYdZyea6e5t5f2QhMJk5SqdB0IxuinkPWnLJoU8cPgxgZ1EJxv7lVX3kkJkc461XKXFz80uPxVHcEnZXH2D4AebxyYbVw0ulMcIOsczp0PLvKDn2K06Z2fRbCeqaQVCRAUeH68DaBCXirOAf9hpuUuMgM87k+xnzqLN01JeKyuTBD94FO0bBOeJ+6+kgC+znSAMr87La8Js7vRrZI5PZ9nKevCYBg9/XJOO51A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by DS7PR11MB8854.namprd11.prod.outlook.com (2603:10b6:8:256::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Thu, 16 Apr
 2026 08:23:41 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%5]) with mapi id 15.20.9818.017; Thu, 16 Apr 2026
 08:23:41 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, Jose Ignacio Tornos Martinez
 <jtornosm@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Keller, Jacob
 E" <jacob.e.keller@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Ertman, David M"
 <david.m.ertman@intel.com>, Michal Kubiak <michal.kubiak@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix VF queue configuration
 with low MTU values
Thread-Index: AQHcxdhqzVeOR+eurUaD+vvWO06977XUtQoAgAyz1aA=
Date: Thu, 16 Apr 2026 08:23:41 +0000
Message-ID: <IA3PR11MB89850C92B63DED51CE25C7E88F232@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260406145641.1020623-1-jtornosm@redhat.com>
 <22f2d325-fc2a-4801-91b5-b64fac4d86e9@molgen.mpg.de>
In-Reply-To: <22f2d325-fc2a-4801-91b5-b64fac4d86e9@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|DS7PR11MB8854:EE_
x-ms-office365-filtering-correlation-id: 2e3b3da6-ace4-4cf4-3463-08de9b917795
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: enAweNvYr5Y80JpGnp3v9oWu7iQufMk/qMVkLfw7qSYi8A3eUkjPk9Nqy5iP2E2PPcw6LijwTjVZdPd7+RL/6nLLbMxv3whgV0nuo97f+Eqa4vBXmvCTaAo5Z886pzkoamky3AJ/pVmMqnpxiwQmuYoI7wRphWPKBeEF7lCA0KY1oJFf7yG5Wjz41/j6WHSIqyoUs4m+kCDv5SxImiYsaQ5fAR81h2Oqy+zJ46o0tfAUhrGUIavTqCqjbZWPTTirYkLgC4l48gNtGNqqm1NDIjLmZwG7ddx7bADepVDmkGS5iPXaOk2f+8u+efdA01n43YkgJzsLjzBYJROfTBLxF/QIOwrnHpOWM2TirV1amtSaLh9LXZhIchjOJTs7E6CMifAJOY6M5AVaJ7Kf8aZQf+8SaoAINpUEeMF9V4CG1mMUvFbUxG7nkO4sl+AD1ngPkQ+1VNSfZpUAvFHGhvWEviZ73V2D0RAuvK0Y5OEWQ8y6mYMY8qQ8NkI++jmT5n/JDf0bF9268duzMO/Z+oZXXfyIQYbDTOssruoGXZrdCSAXMH/+SlsC/3HMCLZWXQr5Hu58M4khTUROnj4BX62M/G0DUcWUTAIkcQ16frp9wIgw3aOAPOpbkmwH81SlCBP5TnaOencyHrMggXOO4t+IlTrp5j2L2LtQUnDJcDoqGs2BC2BxmOp8e9GTBLtDxE4XKRIN4dc6Shmy8CI+VaO1AkmEKvaznOGxOS9d41s1YCeOf7c/UvVnH7ITL/FalKf/voRp+qdLPTYOusIOjuMhlMC9P5v0bRbfJotJMGPwH4c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SjkwY0liNTYrNXNWYjFqbDUxRUE3RzMvL1hFZFNSb01GNTRMemZNYkUrbktq?=
 =?utf-8?B?LzVxNWZYMHFHT2pheDJJajZFWUk4N3V2TFFmd1pYdXVuRTdybW1qeDNFLzV6?=
 =?utf-8?B?WFc3L21jUHRINFJIeUppbi9QeW9vSUVnR3o0Tmc1RGUwY1pUQjlTb3JUVXc1?=
 =?utf-8?B?TGxuVzFLYjBubTRpcFY0bUk5N00zaG52MTVDdDU2S0pBcno1QWpsc3UrbXNw?=
 =?utf-8?B?Q2hyZTR3My9hc2F4TmovM3d3SmQzZXZKOUdodDJsYko0WFU1KzZ2dU5rZnFp?=
 =?utf-8?B?REJYa3ZuUmttYXNmRkc5RFNRcDZvZTNlQjJRUjhPdWJrcjQ2SEVEZ1lUS21I?=
 =?utf-8?B?Si8xQVpjaFJZS3NZRzdpSVRQcjh4QllBOVlINDR6bjVFR1ZCNWIxSEZiRDA4?=
 =?utf-8?B?dDdHMVV3WmxEOFJ0d1dVQkI1dWpFeTVBdWpUS2tDa1dqampQWStHbk8zTzZr?=
 =?utf-8?B?M1BWMEUxVFl6NnNxM3V6UDFvV3lGUGFyQlBvbDV4eHR4ajllQkhuRHFpWVY2?=
 =?utf-8?B?MHk3N1ZTaG5CZEZhZmpHWVBXajRPY2UrVFdsci9KRFBWMUx5UjNLanFVN1RL?=
 =?utf-8?B?VVNuZ1lzUHYwTHJXK0xaNEJ3S3FJOW9rZEZLbmZTdW44dW1wcXlrWkRvUXpn?=
 =?utf-8?B?M0xZU1ZORjZFREJkMU1LNEV2MkhNMitVZGNzOXBWMnlORlFBL1FVbWRQamhr?=
 =?utf-8?B?WWlrZlJKNHBGSVNYM2pFVWRFMit4QW8zYzNFQUdGOFluQmhJK1kyY3RtZFAy?=
 =?utf-8?B?SER0NXNMTjNsUEhrSjFaeG9laHVyT0hBYzh2N3hqVngzZ0ZYZzl1cnVRUFlJ?=
 =?utf-8?B?RkRGaCtZV1hpNUl3MlVOZ0dPVS9uMHd3WmlJMmVja1NlMUdsdmNybmIwY1VZ?=
 =?utf-8?B?WjlSRFIxMFZ0RnFsZllFNXdkcVVKcnBpSnpuNktYbkZkcGkyWkZFMElzOU9i?=
 =?utf-8?B?WUw4ZGVnTFkveWVyNHVJQzArWGFaUkRwZElwZVdlbG92Z0NGZ0xtTUFXSDdN?=
 =?utf-8?B?OXRCQk0yYjJuSzNVNDViMEgrVEhVZVBLd0F4RXo5RkhtZkI3MERqK3NJQnNh?=
 =?utf-8?B?c3lXRUVReEZjOWJXbUFFWVE1M1RTWlZlaXBZK2NBNlRYQzl3Q201SFBRTy9x?=
 =?utf-8?B?ZG9YRDV1eFJScmZNMDczUWdCODcrTnFQS3dSd3R0WGFkOXRPcjNWVUZtZ2xx?=
 =?utf-8?B?ckdOVFNmTVlsV2R6SmZ3Mm1NR1A3U0RhTXYrY0JxQ0k1blR1WVA5c3JKZzEr?=
 =?utf-8?B?Q0Rib2hvRjRGOHZzb29EbG9zYks3T05FcUZsSTgzMjdLWTVQeGN1Q1BoUnFn?=
 =?utf-8?B?K095Mm1xdkdMY0trdG9HYzNVQXRJdUhGeTZCSkFOTWNyNzRmY2NLZGJZb24x?=
 =?utf-8?B?K3VsTnMzT2IyNmtSNEhrb05QcVhXeVFWY1d5RkRpTkxTbysxcGlWam9UTkJD?=
 =?utf-8?B?SnR5VTBPN09BK3JyNFJGR0tXZmIvbzBkd05MN2dFUkxpaEY4MzdFMW11Q0pr?=
 =?utf-8?B?YVBqVFYzTjhmNlhPaXJvZGxneURDM0RJS2xYNDFscmc2NWdWdTFxcVpuSTMx?=
 =?utf-8?B?UVBwZitBcktzbFVUR3VVaFB5L0wxVmFsSWpNMXZKUlRHWW1JMVV5cjF1NTdv?=
 =?utf-8?B?enlMdjh3Q1BRVTFEeEp2YUYyU2NkcWV6b3BoTEt6dmlqL3RDbGd1ZDgvanhL?=
 =?utf-8?B?bkZ3WDR0eWhCK3l0Zk9LUXFvK0s4S0FHbkw3UnZwbHM4OXJUQWRKRzJHcnQ5?=
 =?utf-8?B?YVZSQ2l3R2prS0kzakpHSFczMm1Ec0lGc0laVWU2ZzZ2ZjN0NjlUcUdTQm1Q?=
 =?utf-8?B?RjVKQTdwbDlhNjJHbGRLcDVLeHFqUlJXeUhJME1BVUcwRzVIaFhIQ0dtK3hF?=
 =?utf-8?B?WENsUGtHTWR1bVY3ZEYyUEtKcVZQUWw3cHAzUGd1T1RGRlFMU2l0MVdoMUdX?=
 =?utf-8?B?UXM3NG5CV2VjNDFhc0VCd1F1MVQ5RzJqUzRINUEwTHZNb0NaRjBvYm1lbGs0?=
 =?utf-8?B?TUF6OEVJOERnNEZwcEN3ZHpSOWFNMnpFVHpoVEsxckQwNVBYaC9SbmZtakRt?=
 =?utf-8?B?STh2SnJYVTY2L0h1ZGVOdWVBMEZiUWg0Ly85YXRGcEhRKytwbzdQQWdtWWJD?=
 =?utf-8?B?MmVwSFFOemdqaERsTnhPRXhuRU5uMUhSQy9QeTdGVUhoY3p5am5nVTdyak4z?=
 =?utf-8?B?NjVPOTFINkhRRkhjYzdXVGt1cnFNSlFVSVlLdnpsRWZCUmFmcXN4aDhrRVhp?=
 =?utf-8?B?TXBCMElORUNOQUpLbW1NNEpUaWtDdGdDcWl2Q1l2ek9iZWxSOEg2NENRd0k3?=
 =?utf-8?B?RCthODAzdHVjSjllOGdWSmRGSDRibVhBRnBESmpXZmFSSU52RE1GZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: TVw8DAIhbdLieetgrwHW+7rU5SHoryVW/9nqyCNPCcOVps9JC/PEd6/ljKkhQl/ncnMeGDnAQY5UVyD+j/cAMOJkxvMdZdVWT9wlqvcp5i2JsZOAoIE3rB0+lf+Cekf+Iujv7wSLtaE51fcOLgkExBVm84sYdfsDngsQB9nu8TOTrBk9VjZgyk1Pj+np1eQJmMQ+3Y8zEY8xJv9p7BNz2bOLFAwrKhvk1jeAQIE6d66LDRp9XzA2FNOq+dTEsITv/ThDBEQEtenQh61sIAew0e0tttWw4LR475sqO/pozml8zZewPA+j/nsxZGOAtYkCbPWqx+UEGruj48rTBDBalw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e3b3da6-ace4-4cf4-3463-08de9b917795
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2026 08:23:41.1588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3rGQ/nR6H4ilbWSVSQ4Blsi2gdPHmD8HrGovxJqtzjbPSzESb+bdASeGK6gWpPDBL7z/hlN03Y/m+YPw44QPOkpyZApxIYpGHnHX4xir18g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8854
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776327827; x=1807863827;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tauJ9ojgSkRqvx/3P5C0A0vC+vhfpD2wI+4mObseAsU=;
 b=J45fXBfueVjeaKpLLCmBear3aBELiIXT4lvhAmdrKWl+i1GIHneohbWx
 8kmNUbI6AdIAESe6AmuwKE7p78ArPy7Ag1BhKTWhrD6uP0wrjgxyYTzHj
 uJ20Nguad43u2gOAZUzPyaBXueWppfzAv6jrukQtdIsxkKcTvyDye2bMy
 1yhXYrrMdqWSKC+2D+HPm3i+9SNAsgonJkELqlkooj8NktrakB90XM4/d
 iCIUPhEUy1yxwdpk5gFkdCpvasIN1aCFNUU724ZeM3hS41awu2GPcKWfq
 +gGARLosy0lfq5ekz0qoVa+p1nDOAkIQLl8BIJY6mMW5QDSAajuBCW4qV
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J45fXBfu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix VF queue configuration
 with low MTU values
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
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:michal.swiatkowski@linux.intel.com,m:david.m.ertman@intel.com,m:michal.kubiak@intel.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ASN_FAIL(0.00)[8.3.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.1.0.3.0.8.c.b.5.0.6.2.asn6.rspamd.com:server fail];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 6D48C40B7BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBQYXVsDQo+IE1l
bnplbA0KPiBTZW50OiBXZWRuZXNkYXksIEFwcmlsIDgsIDIwMjYgODoyNSBBTQ0KPiBUbzogSm9z
ZSBJZ25hY2lvIFRvcm5vcyBNYXJ0aW5leiA8anRvcm5vc21AcmVkaGF0LmNvbT4NCj4gQ2M6IGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBO
Z3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVs
LCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgQW5kcmV3IEx1
bm4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47DQo+IERhdmlkIFMgLiBNaWxsZXIgPGRhdmVtQGRh
dmVtbG9mdC5uZXQ+OyBFcmljIER1bWF6ZXQNCj4gPGVkdW1hemV0QGdvb2dsZS5jb20+OyBKYWt1
YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsgUGFvbG8gQWJlbmkNCj4gPHBhYmVuaUByZWRo
YXQuY29tPjsgS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+OyBMb2t0
aW9ub3YsDQo+IEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+OyBNaWNo
YWwgU3dpYXRrb3dza2kNCj4gPG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb20+OyBF
cnRtYW4sIERhdmlkIE0NCj4gPGRhdmlkLm0uZXJ0bWFuQGludGVsLmNvbT47IE1pY2hhbCBLdWJp
YWsgPG1pY2hhbC5rdWJpYWtAaW50ZWwuY29tPjsNCj4gc3RhYmxlQHZnZXIua2VybmVsLm9yZw0K
PiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIG5ldF0gaWNlOiBmaXggVkYg
cXVldWUgY29uZmlndXJhdGlvbiB3aXRoIGxvdw0KPiBNVFUgdmFsdWVzDQo+IA0KPiBEZWFyIEpv
c2UsDQo+IA0KPiANCj4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guDQo+IA0KPiBBbSAwNi4wNC4y
NiB1bSAxNjo1NiBzY2hyaWViIEpvc2UgSWduYWNpbyBUb3Jub3MgTWFydGluZXo6DQo+ID4gVGhl
IGljZSBkcml2ZXIncyBWRiBxdWV1ZSBjb25maWd1cmF0aW9uIHZhbGlkYXRpb24gcmVqZWN0cw0K
PiA+IGRhdGFidWZmZXJfc2l6ZSB2YWx1ZXMgYmVsb3cgMTAyNCBieXRlcywgd2hpY2ggcHJldmVu
dHMgVkZzIGZyb20gdXNpbmcNCj4gPiBNVFUgdmFsdWVzIGJlbG93IDg3MSBieXRlcy4NCj4gPg0K
PiA+IFRoZSBpYXZmIGRyaXZlciBjYWxjdWxhdGVzIGRhdGFidWZmZXJfc2l6ZSBiYXNlZCBvbiB0
aGUgTVRVIHVzaW5nOg0KPiA+ICAgIGRhdGFidWZmZXJfc2l6ZSA9IEFMSUdOKE1UVSArIExJQkVU
SF9SWF9MTF9MRU4sIDEyOCkNCj4gPg0KPiA+IHdoZXJlIExJQkVUSF9SWF9MTF9MRU4gPSAyNiAo
RVRIX0hMRU4gKyAyKlZMQU5fSExFTiArIEVUSF9GQ1NfTEVOKS4NCj4gPg0KPiA+IEZvciBNVFUg
dmFsdWVzIGJlbG93IDg3MToNCj4gPiAgICBNVFUgODcwOiA4NzAgKyAyNiA9IDg5NiwgYWxpZ25l
ZCB0byAxMjggPSA4OTYgKDwgMTAyNCwgcmVqZWN0ZWQpDQo+ID4gICAgTVRVIDg3MTogODcxICsg
MjYgPSA4OTcsIGFsaWduZWQgdG8gMTI4ID0gMTAyNCAoPj0gMTAyNCwgYWNjZXB0ZWQpDQo+ID4N
Cj4gPiBUaGUgMTAyNC1ieXRlIG1pbmltdW0gc2VlbXMgdW5uZWNlc3NhcmlseSByZXN0cmljdGl2
ZSwgYmVjYXVzZSB0aGUNCj4gPiBoYXJkd2FyZSBzdXBwb3J0cyBkYXRhYnVmZmVyX3NpemUgYXMg
bG93IGFzIDEyOCBieXRlcyAodGhlIGFsaWdubWVudA0KPiA+IGJvdW5kYXJ5KSwgd2hpY2ggc2hv
dWxkIGFsbG93IE1UVSB2YWx1ZXMgZG93biB0byB0aGUgc3RhbmRhcmQgbWluaW11bSBvZg0KPiA2
OCBieXRlcy4NCj4gPg0KPiA+IEkgaGF2ZW4ndCBmb3VuZCB0aGUgcmVhc29uIHdoeSB0aGUgbGlt
aXQgd2FzIGNvbmZpZ3VyZWQgaW4gdGhlIGNvbW1pdA0KPiA+IDljN2RkNzU2NmQxOCAoImljZTog
YWRkIHZhbGlkYXRpb24gaW4gT1BfQ09ORklHX1ZTSV9RVUVVRVMgVkYNCj4gPiBtZXNzYWdlIiks
IHNvIHdpdGggbm8gbW9yZSBpbmZvcm1hdGlvbiBhbmQgc2luY2UgaXQgaXMgd29ya2luZywgY2hh
bmdlDQo+ID4gdGhlIG1pbmltdW0gZGF0YWJ1ZmZlcl9zaXplIHZhbGlkYXRpb24gZnJvbSAxMDI0
IHRvIDEyOCBieXRlcyB0byBhbGxvdw0KPiA+IHN0YW5kYXJkIGxvdyBNVFUgdmFsdWVzIHdoaWxl
IHN0aWxsIHByZXZlbnRpbmcgaW52YWxpZCBjb25maWd1cmF0aW9ucy4NCj4gDQo+IFNob3VsZCB5
b3UgcmVzZW5kLCBoYXZpbmcgdGhlIHJlcHJvZHVjZXIgc2NyaXB0IHdvdWxkIGJlIG5pY2UgdG8g
aGF2ZS4NCj4gDQo+ID4gRml4ZXM6IDljN2RkNzU2NmQxOCAoImljZTogYWRkIHZhbGlkYXRpb24g
aW4gT1BfQ09ORklHX1ZTSV9RVUVVRVMgVkYNCj4gPiBtZXNzYWdlIikNCj4gPiBjYzogc3RhYmxl
QHZnZXIua2VybmVsLm9yZw0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc2UgSWduYWNpbyBUb3Jub3Mg
TWFydGluZXogPGp0b3Jub3NtQHJlZGhhdC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvdmlydC9xdWV1ZXMuYyB8IDIgKy0NCj4gPiAgIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+DQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS92aXJ0L3F1ZXVlcy5jDQo+ID4gYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvdmlydC9xdWV1ZXMuYw0KPiA+IGluZGV4IGY3
M2Q1YTNlODNkNC4uMzFiZTJmNzYxODFjIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS92aXJ0L3F1ZXVlcy5jDQo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL3ZpcnQvcXVldWVzLmMNCj4gPiBAQCAtODQwLDcgKzg0MCw3IEBAIGlu
dCBpY2VfdmNfY2ZnX3FzX21zZyhzdHJ1Y3QgaWNlX3ZmICp2ZiwgdTggKm1zZykNCj4gPg0KPiA+
ICAgCQkJaWYgKHFwaS0+cnhxLmRhdGFidWZmZXJfc2l6ZSAhPSAwICYmDQo+ID4gICAJCQkgICAg
KHFwaS0+cnhxLmRhdGFidWZmZXJfc2l6ZSA+ICgoMTYgKiAxMDI0KSAtIDEyOCkgfHwNCj4gPiAt
CQkJICAgICBxcGktPnJ4cS5kYXRhYnVmZmVyX3NpemUgPCAxMDI0KSkNCj4gPiArCQkJICAgICBx
cGktPnJ4cS5kYXRhYnVmZmVyX3NpemUgPCAxMjgpKQ0KPiA+ICAgCQkJCWdvdG8gZXJyb3JfcGFy
YW07DQo+ID4NCj4gPiAgIAkJCXJpbmctPnJ4X2J1Zl9sZW4gPSBxcGktPnJ4cS5kYXRhYnVmZmVy
X3NpemU7DQo+IA0KPiBFaXRoZXIgd2F5Og0KPiANCj4gUmV2aWV3ZWQtYnk6IFBhdWwgTWVuemVs
IDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+DQo+IA0KPiANCj4gS2luZCByZWdhcmRzLA0KPiANCj4g
UGF1bA0KDQoNClRlc3RlZC1ieTogUmFmYWwgUm9tYW5vd3NraSA8cmFmYWwucm9tYW5vd3NraUBp
bnRlbC5jb20+DQoNCg==
