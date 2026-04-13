Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIfSN3gR3WkOZQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 17:53:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E5F3EE34C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 17:53:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F21440FF6;
	Mon, 13 Apr 2026 15:53:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O59_x-0KlQFQ; Mon, 13 Apr 2026 15:53:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72AC340FBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776095605;
	bh=Msx7tHng9se4su6c8+YVsQZBt2CNqWnscLUHec7ypNE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZQjql4Dv2AlICWZ9wpERnfbsj8rapUcjZDU9pF2kovbrmLXuxhAS8hlkuRzIV3LB1
	 gq7ik0/THuvv6qXyo0uLsICoGisYZJO9l1OS447zOWtBo7TUtdxFzj1Zdb0pQ6umbY
	 1UrIrwpAMl2y5xJw3SgE8eXszSuy0s2aM0dV0Damh9f+fv1nKOURWug7Z585wwSBcM
	 As0h0gJN6MBwXUjeT1zRh34kuY7unR/nHzkCU8mR5u6YTninSmbxF8NI0XXWttsl/+
	 YCm1JAFSwYe0Yys3Nh9BM41CvaBqNl0MG7E5qXW4VyB5mbjqvv1ap2NeYvYtOe19WE
	 4YWGhY0S5Ffkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72AC340FBF;
	Mon, 13 Apr 2026 15:53:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4FFBA283
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 15:53:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32E5340FBF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 15:53:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IbTEblZkYWD7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 15:53:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4C67740F4F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C67740F4F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4C67740F4F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 15:53:23 +0000 (UTC)
X-CSE-ConnectionGUID: DBf7DgCwSoixDwUWFLHEcA==
X-CSE-MsgGUID: E70x/T7CTtmeYy6/KORCEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="77055968"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="77055968"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 08:53:22 -0700
X-CSE-ConnectionGUID: 8FQ/9jU5Sxq1dSdIpWv/ew==
X-CSE-MsgGUID: 3SxifOPoSpm18S1OJjYHlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="227141636"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 08:53:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 08:53:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 08:53:21 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.14) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 08:53:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ReUmJkh7IGsqFXbml/DBHXxT/BIJbRMLlHuREa+o/3658v3Vs0vEgk1UGq0716EyExGwRZXKDEhmHcFpuuy7/+I3K7kDkplpIPQg7nsgPFnaWv0DXiv0M2+Cv1SoEPL1PvF1ztyTMw8iObM+Q8HFlSBH0w+Mih4bso8LTiEteQxWGf61SCdX6bihda1jpHeLJYYG+MhH4ZpdB9KddbMjxJ/+Z+U4eSc6WHoUpQh+InLRLo6fuke/4AtwA87cuRq/nWX9ks9GyQXSFj+GbsyO/ytqq1Si60BqGSJD12/tiw4InC5JkKYxMvatEg//kbgMvzOcVSHH1S4qm3pbPyFM/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Msx7tHng9se4su6c8+YVsQZBt2CNqWnscLUHec7ypNE=;
 b=Y6jMAWi29sVAnXSg7/n2mbAJvZwObpVtXPNn5SajiOv72nVtrIh1McpK/EN0EStbhdD+tUQN4Li9WJWwPaXj1dZOTV47JisVBxVgu4a2iWldSjILmr1Yfv2IsqUbnqxwGosgk3be7qViRc0nb/CQx78aFSTHTwD/fQy8afJhp4Zn0Ksn+ZgfKb6Oqm7qNpWIblJ/hTmET5S3IN1jTFy0cHyF7mf0oNRFZu/9Ko4ybX6X4pF0+IZQVyWoUFwag3oSyLmCiOWIpfWEO9rql14K/PQDubmfV7KEmGBXiIPKMcJ3A/PR197YtwvPp9CwRHvyvjUFMtyXDXPV+Aj/ptGXZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by CH3PR11MB7938.namprd11.prod.outlook.com (2603:10b6:610:12f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.17; Mon, 13 Apr
 2026 15:53:14 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%5]) with mapi id 15.20.9745.012; Mon, 13 Apr 2026
 15:53:14 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Brett Creeley
 <brett.creeley@intel.com>, Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix NULL pointer
 dereference in ice_reset_all_vfs()
Thread-Index: AQHcwcgleYoAAcb8J0epSUxg7CThabXdN4qg
Date: Mon, 13 Apr 2026 15:53:14 +0000
Message-ID: <IA3PR11MB898572F9F6CCE5673C8697EC8F242@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260401110937.83497-1-poros@redhat.com>
In-Reply-To: <20260401110937.83497-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|CH3PR11MB7938:EE_
x-ms-office365-filtering-correlation-id: f0cd7bd4-d7fd-42fe-3391-08de9974c57f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: YECRScNDxB5vFek7sOA34AD2D5aG9Z/N/CRFMt8GmxhKyvIWGozQOns529HFMU3s5NUS5AmxulBzZoZ+NHHAu5GKw1lv5vZbKkwZ0KWDHlf8S29qO0pHQApQfkFBoSNd7zOreKIyyES4dJidK14n6whbHI28G1/nkGuv3vHO10F6gdR3uglqStaR9bZHY4J2nxGf+36CGRBIpaNKYg4fj1/xvmdZ8aQLguca77SYXT+Mj5I2+hcDKJJDuVVojTTr4olhsIPepYQbuKj8NcL/liVRriI/rQc9TlL45KigJXyiZ7Seel33TlbgYGFxCKp5PfYnDf4nOfJP9QGRPIceZcE9M2ToFWONqcOsVEdzPqeRMgLfiD0Qk6Xzr5ZRb7vM/PLFLDPf3o+UAvJ2oj5C/N2D3HiC15RInprdvnUilaKgWr+8g8Dqe7mefelPeVv8owt0a4ZqZpEW1ExSw9iu+HaUN2iVPQtPDSzVsZ2tJWIdeqxQ6CNwUbSYHyDY5y3VARYsAoTlMaVFq7rVZk9SuVNoHGX5hjuvx4tVS07yW4/XGwUR0Lg7MTh8kwI2hjkol7fL7tJx9D3YLKx0RhO2fL9DKQxJt5JkDVUct5rzZTqXmCj7YMFFc+zp2eSnkjoqUqfKqlrrl3jgaCHBb7Lr3ht1zJtRGG3EyZGd8ZF4x3+tsMs3m6q2d681z5rQ1LLPCihdN0SClEmkCi+NDbiKICE3MltyHf/846AxZV2dCupmQP5AcawWynylaTgwTve0LWST8W9JBlgISl565WpLCkOaTLLE+6G2KSKl7VSahXU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2V0TjhZODFhQnkwK3VsemZBeEtuc3JEZmMxVXlvTkFVR1RoTUQ2ZXEveHph?=
 =?utf-8?B?RXU0bUhka2F5OUM4eFBKYUltUVUzM0dQOE4xUnlzY3M0QUJNWVBUVEVQM04x?=
 =?utf-8?B?R1ZVM2YwanU3ZXFGbjZvTk96ZXlLSnVpa1FsWXQ5TG9mWGxld2VPaGdvb1RT?=
 =?utf-8?B?a0ZyWE9aOHRXZUN0bFJKeDhpaE5LaEZDSUJPMVBPSXhFR3pIR3lKbUVWU3N3?=
 =?utf-8?B?MlRLQlNmSkd5Yk1MY0x5Y2JBYWR2S0RiUXB4SEZUc2NnVi96ZHYvVytYS3lG?=
 =?utf-8?B?WTNTTy9YNWVtaEt2WjhtcjcrVS9kdUt1UDRicDZ3TndGVjBqdnNiMloxQXVm?=
 =?utf-8?B?eiszUnpHcG9OZlRZYWFRMGVMbHo3Rk5tQU01V2xDbUhqY1VOaWxwbGJtaXFh?=
 =?utf-8?B?eW5PQ08vRzZLMitMK3JNV0xEUUNxWHhSYythLzZuQW51bzdZMXhTODRmODNS?=
 =?utf-8?B?S3hmY3gvYWdVUEJSMng0dTVkMlJDLzNEV3lML1BTVUR3TkVkcU10eHlvWTY2?=
 =?utf-8?B?RE9pYnlEN2VrRVJuVGljd1BLYW0weW9WUElkK0RHbEtyemVDQUVMUW5hY2Jl?=
 =?utf-8?B?YWFpdy91TDUwMnIzNkhybkF6dmRJN1gxVENnaFdvN1p6cnF6TDd3ejcwVUxV?=
 =?utf-8?B?bnVQdFpLd3pIbFVwZGlmMW9FQytVbjZ1M3dDYzd2M0liS3ZuS2pyMzZPTVdL?=
 =?utf-8?B?VHFpUFc4V0hoYjZHWDQrMHpaV3pRK3lIcDBkMlRFYkN6d1YrUkFGTW5nUEFv?=
 =?utf-8?B?dFhUeWxnWk1rcGZjSHhzbC9QMytWM0tXMHBkcUtJNXdWaUlnNVRtcVBwYlRp?=
 =?utf-8?B?R2d1OXBYQVU2ZGZLaUs2Y2Q2bVZnbDZuVWdpVGUwRGhTanFlenJWWVlEV1RC?=
 =?utf-8?B?ODVjWENPYUMwaEJxTjczWXdITkl5SDdIWFl4UTdyT0cvakxEaDVkZUpZRDZl?=
 =?utf-8?B?TFZEcWpyWUpaZDNuWXFMMVFzZzBLcWwwalUvSE9Ualp1bko2emdBMldQWFRq?=
 =?utf-8?B?bnFldW11aEcxa2FYZlZyT1YwTmtTS25ydkhHTUI2d25KNnZ1Wk81SWZqbFNP?=
 =?utf-8?B?bFRzdWtlMlQyU0hHcmFxV05GMExucUtyQlZ4bkwxRHpEam5VZElMTGdlZ0hx?=
 =?utf-8?B?a0Z1UVJrRW5jc2ttbnF2algxQkMzeXVjM0tKR1RCVVROVlpZRU5Ra3pNZUZX?=
 =?utf-8?B?MnFsVEZnZHRRbWNTVDhCWnp0TzhrN29DTmhpK1JLdFBZOXUyVlNDWjFSMnVU?=
 =?utf-8?B?VEkxSkk5d0VKemNtWjZJSkNtdEdPbVY5Y25KY1V2Z3hLMFZqdWNnbjUwbThS?=
 =?utf-8?B?dEsxUzBuY3VxbXNqN2E2bGg2aWx1UytUbGloV1l2bE5rd1pvYWpoUTdNMDJy?=
 =?utf-8?B?Y2hmN0M4SXliOFRDUGtBVnBNdlRpL0NHWEJrS0FUTTZYclVGTExwZjVJdU1M?=
 =?utf-8?B?RmYxRjhBek9CaVQzaFVKYnNOUTN2d2o5T0xZSlZNeHhGL0tnU1pQcnhXUlZk?=
 =?utf-8?B?Zy9SZVZGNDcwaTd5R1FPWFYxWFRmM2lJL0dUcjZwT0JDUGVWWDJQRHpFLzg3?=
 =?utf-8?B?aGFWbjh1TXF1bFhpZEF0MkdHQ3o4RzEvb29ibXJFN0pULzFXbE02cVc0SURx?=
 =?utf-8?B?R3Y0SnVBZllaNjkzRmFpS1VZbGpxbjZVNjhSRnd3aTZVTGlaeGpHbUw4dUxT?=
 =?utf-8?B?bmhFVHdzQ1RZZjZ2eGJUQ1NYQkh2YUFPYmVKbFE1M1J1ai93WkdxZ0VoZXRW?=
 =?utf-8?B?TFd2WERmQ1JLNFZ0Yndwc0dBanFnb2xVMU1GZE5nZVVpVnh1SU85eVBHdmpp?=
 =?utf-8?B?UlZkL3dYVlpYMVgvU3ZQQzVFV3dxUTBHZC9heUNPRzZrUXl3dE83S1p2S0FZ?=
 =?utf-8?B?ZGVhNTNwdHZGSldQZUZ4RHBLSHNTMDQxWGMyRnFoZkVOeFBZbkh6UW5XbEFo?=
 =?utf-8?B?ZGx1MFFodlBKOWFEZjhFa1VDdU5YUmlkQmJadEVDS2IrZmNLbGR6TEFTYXM4?=
 =?utf-8?B?SzhEVFFPUFdxNlNUaUlWWDFvaHBhbUJrSE4zVGFoOFNTSUJ5Wm0wc2s5MDNH?=
 =?utf-8?B?bmh2R2U3MUpuc2VHQzZsSEF4OUlBMit6clR5VFRkUnVrTU9kSVRzTmh0R3la?=
 =?utf-8?B?NkxndG5oeGJma0piTThnR1RVUTc5bnJqSnRSUXdLcXFWdEtjcjVEenpvOTgr?=
 =?utf-8?B?ZXVaQjNjcndnUnlUVVJsRnJVeXUxeDNIOEFEMFN0NEp4REVmaThjZkJzWVhj?=
 =?utf-8?B?V3pSWlBkN0UrTmt0aWMzNkFnT29BV0pMaVFBSFhRQVVHSW45MHlmWTZXemdK?=
 =?utf-8?B?Rkh3YUUwUXRzNXFhRUkyaFV6VEVzY0FOTmdqZGdiK3N3MmZJSnVDdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LeZNcKelwS/ougzeRPb1HMlgcjL7WtF6ucUeRLeE66/WacjUnSUVaLqZYjQHeZ14+Rsjnpnz22aJP7WiN4v8xm+pANbfhMmzaaIwS98BpSZWPeq0ZO6AJuD3ILEMHu03LStChfSje8eXS5zM7bClU1tafxLELeUbWvuZU4NeiW8snyXtKkBuwXWyEajT20Ya+7Kb8Ws1Lg39LTM1kZkyrRsPP2PnbOjp/GOCF6PeVK5zqRka6/l7h0zngfNMdQHi1s70nDyKcBxIisHKXcenDdWyCBHwuMeQ0W3KLOrvVCLKAG8/347q6izQ8ZZfuVd0xx4vtcZWddRQ1C/WnfV7aQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0cd7bd4-d7fd-42fe-3391-08de9974c57f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 15:53:14.1866 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UsLl+hW0OP5z/vhfnFY96M4AQILogFDSriIZAS5Ul0lrHUXqJZIZ0RbmyJ+gtGvA6iBWd6+LqRmKJ7soDaz5M3lCSVADNrGNJcQcH98t5hw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7938
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776095603; x=1807631603;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Msx7tHng9se4su6c8+YVsQZBt2CNqWnscLUHec7ypNE=;
 b=hsY0OA5e3AWjGX7kbu/7n/0j+21hwQj1fDwUhZUDpnsrj3lmlG9WNTyS
 HrX6jBPGLsI2WioLQPOWwyB/dOOQcdw6fwjDPiOefNyL0NPfjuuvgUyvp
 Q7hJYnrY5AAg/ikbeT9tq0IEU6WpvsjCVzjVcOFCJEye86ajACKDL+UAA
 UgZWmgidzpsEbccn/QR2PerggL6DWPUoigKPQU0eXw/LJu53HZwuJ7sGq
 6PYDd4pgRQIEfbWrN36wRr4hcyu99D1j2+BJc0ee5XAFh0XEytZBlOfQR
 Vo4U9tVJYBE1Kk9Sk8xqWhezYvUhm+qH1PAUnGwPPlLPtkkkGUkGpp73q
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hsY0OA5e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix NULL pointer
 dereference in ice_reset_all_vfs()
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
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:brett.creeley@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,osuosl.org:email,lunn.ch:email]
X-Rspamd-Queue-Id: 41E5F3EE34C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBQZXRyDQo+IE9y
b3MNCj4gU2VudDogV2VkbmVzZGF5LCBBcHJpbCAxLCAyMDI2IDE6MTAgUE0NCj4gVG86IG5ldGRl
dkB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcu
a2l0c3plbEBpbnRlbC5jb20+OyBCcmV0dCBDcmVlbGV5DQo+IDxicmV0dC5jcmVlbGV5QGludGVs
LmNvbT47IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IGxpbnV4LQ0KPiBrZXJu
ZWxAdmdlci5rZXJuZWwub3JnOyBBbmRyZXcgTHVubiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsg
Tmd1eWVuLA0KPiBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgaW50ZWwt
d2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7DQo+IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5l
bC5vcmc+OyBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OyBEYXZpZCBTLg0KPiBNaWxs
ZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQ
QVRDSCBpd2wtbmV0XSBpY2U6IGZpeCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UgaW4NCj4gaWNl
X3Jlc2V0X2FsbF92ZnMoKQ0KPiANCj4gaWNlX3Jlc2V0X2FsbF92ZnMoKSBpZ25vcmVzIHRoZSBy
ZXR1cm4gdmFsdWUgb2YgaWNlX3ZmX3JlYnVpbGRfdnNpKCkuDQo+IFdoZW4gdGhlIFZTSSByZWJ1
aWxkIGZhaWxzIChlLmcuIGR1cmluZyBOVk0gZmlybXdhcmUgdXBkYXRlIHZpYSBudm11cGRhdGU2
NGUpLA0KPiBpY2VfdnNpX3JlYnVpbGQoKSB0ZWFycyBkb3duIHRoZSBWU0kgb24gaXRzIGVycm9y
IHBhdGgsIGxlYXZpbmcgdHhxX21hcCBhbmQNCj4gcnhxX21hcCBhcyBOVUxMLiBUaGUgc3Vic2Vx
dWVudCB1bmNvbmRpdGlvbmFsIGNhbGwgdG8gaWNlX3ZmX3Bvc3RfdnNpX3JlYnVpbGQoKQ0KPiBs
ZWFkcyB0byBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBpbg0KPiBpY2VfZW5hX3ZmX3FfbWFw
cGluZ3MoKSB3aGVuIGl0IGFjY2Vzc2VzIHZzaS0+dHhxX21hcFswXS4NCj4gDQo+IFRoZSBzaW5n
bGUtVkYgcmVzZXQgcGF0aCBpbiBpY2VfcmVzZXRfdmYoKSBhbHJlYWR5IGhhbmRsZXMgdGhpcyBj
b3JyZWN0bHkgYnkNCj4gY2hlY2tpbmcgdGhlIHJldHVybiB2YWx1ZSBvZiBpY2VfdmZfcmVjb25m
aWdfdnNpKCkgYW5kIHNraXBwaW5nDQo+IGljZV92Zl9wb3N0X3ZzaV9yZWJ1aWxkKCkgb24gZmFp
bHVyZS4NCj4gDQo+IEFwcGx5IHRoZSBzYW1lIHBhdHRlcm4gdG8gaWNlX3Jlc2V0X2FsbF92ZnMo
KTogY2hlY2sgdGhlIHJldHVybiB2YWx1ZSBvZg0KPiBpY2VfdmZfcmVidWlsZF92c2koKSBhbmQg
c2tpcCBpY2VfdmZfcG9zdF92c2lfcmVidWlsZCgpIGFuZA0KPiBpY2VfZXN3aXRjaF9hdHRhY2hf
dmYoKSBvbiBmYWlsdXJlLiBUaGUgVkYgaXMgbGVmdCBzYWZlbHkgZGlzYWJsZWQNCj4gKElDRV9W
Rl9TVEFURV9JTklUIG5vdCBzZXQsIFZGR0VOX1JTVEFUIG5vdCBzZXQgdG8gVkZBQ1RJVkUpIGFu
ZCBjYW4gYmUNCj4gcmVjb3ZlcmVkIHZpYSBhIFZGTFIgdHJpZ2dlcmVkIGJ5IGEgUENJIHJlc2V0
IG9mIHRoZSBWRiAoc3lzZnMgcmVzZXQgb3IgZHJpdmVyDQo+IHJlYmluZCkuDQo+IA0KPiBOb3Rl
IHRoYXQgdGhpcyBwYXRjaCBkb2VzIG5vdCBwcmV2ZW50IHRoZSBWRiBWU0kgcmVidWlsZCBmcm9t
IGZhaWxpbmcgZHVyaW5nIE5WTQ0KPiB1cGRhdGUg4oCUIHRoZSB1bmRlcmx5aW5nIGNhdXNlIGlz
IGZpcm13YXJlIGJlaW5nIGluIGEgdHJhbnNpdGlvbmFsIHN0YXRlIHdoaWxlIHRoZQ0KPiBFTVAg
cmVzZXQgaXMgcHJvY2Vzc2VkLCB3aGljaCBjYW4gY2F1c2UgQWRtaW4gUXVldWUgY29tbWFuZHMg
KGljZV9hZGRfdnNpLA0KPiBpY2VfY2ZnX3ZzaV9sYW4pIHRvIGZhaWwuIFRoaXMgcGF0Y2ggb25s
eSBwcmV2ZW50cyB0aGUgc3Vic2VxdWVudCBOVUxMIHBvaW50ZXINCj4gZGVyZWZlcmVuY2UgdGhh
dCBjcmFzaGVzIHRoZSBrZXJuZWwgd2hlbiB0aGUgcmVidWlsZCBkb2VzIGZhaWwuDQo+IA0KPiAg
Y3Jhc2g+IGJ0DQo+ICAgICAgUElEOiA1MDc5NSAgICBUQVNLOiBmZjM0YzllZTcwOGRjNjgwICBD
UFU6IDEgICAgQ09NTUFORDoNCj4gImt3b3JrZXIvdTUxMjo1Ig0KPiAgICAgICAjMCBbZmY3MjE1
OWJjZmU1YmI1MF0gbWFjaGluZV9rZXhlYyBhdCBmZmZmZmZmZmFhODg1MGVlDQo+ICAgICAgICMx
IFtmZjcyMTU5YmNmZTViYmE4XSBfX2NyYXNoX2tleGVjIGF0IGZmZmZmZmZmYWFhMTVmYmENCj4g
ICAgICAgIzIgW2ZmNzIxNTliY2ZlNWJjNjhdIGNyYXNoX2tleGVjIGF0IGZmZmZmZmZmYWFhMTY1
NDANCj4gICAgICAgIzMgW2ZmNzIxNTliY2ZlNWJjNzBdIG9vcHNfZW5kIGF0IGZmZmZmZmZmYWE4
MzdlZGENCj4gICAgICAgIzQgW2ZmNzIxNTliY2ZlNWJjOTBdIHBhZ2VfZmF1bHRfb29wcyBhdCBm
ZmZmZmZmZmFhODkzOTk3DQo+ICAgICAgICM1IFtmZjcyMTU5YmNmZTViY2U4XSBleGNfcGFnZV9m
YXVsdCBhdCBmZmZmZmZmZmFiNTI4NTk1DQo+ICAgICAgICM2IFtmZjcyMTU5YmNmZTViZDEwXSBh
c21fZXhjX3BhZ2VfZmF1bHQgYXQgZmZmZmZmZmZhYjYwMGJiMg0KPiAgICAgICAgICBbZXhjZXB0
aW9uIFJJUDogaWNlX2VuYV92Zl9xX21hcHBpbmdzKzB4NzldDQo+ICAgICAgICAgIFJJUDogZmZm
ZmZmZmZjMGE4NWIyOSAgUlNQOiBmZjcyMTU5YmNmZTViZGM4ICBSRkxBR1M6IDAwMDEwMjA2DQo+
ICAgICAgICAgIFJBWDogMDAwMDAwMDAwMDBmMDAwMCAgUkJYOiBmZjM0YzllZmM5YzAwMDAwICBS
Q1g6IDAwMDAwMDAwMDAwMDAwMDANCj4gICAgICAgICAgUkRYOiAwMDAwMDAwMDAwMDAwMDAwICBS
U0k6IDAwMDAwMDAwMDAwMDAwMTAgIFJESTogZmYzNGM5ZWZjOWMwMDAwMA0KPiAgICAgICAgICBS
QlA6IGZmMzRjOWVmYzI3ZDQ4MjggICBSODogMDAwMDAwMDAwMDAwMDA5MyAgIFI5OiAwMDAwMDAw
MDAwMDAwMDQwDQo+ICAgICAgICAgIFIxMDogZmYzNGM5ZWZjMjdkNDgyOCAgUjExOiAwMDAwMDAw
MDAwMDAwMDQwICBSMTI6IDAwMDAwMDAwMDAxMDAwMDANCj4gICAgICAgICAgUjEzOiAwMDAwMDAw
MDAwMDAwMDEwICBSMTQ6ICAgUjE1Og0KPiAgICAgICAgICBPUklHX1JBWDogZmZmZmZmZmZmZmZm
ZmZmZiAgQ1M6IDAwMTAgIFNTOiAwMDE4DQo+ICAgICAgICM3IFtmZjcyMTU5YmNmZTViZGY4XSBp
Y2Vfc3Jpb3ZfcG9zdF92c2lfcmVidWlsZCBhdCBmZmZmZmZmZmMwYTg1ZTJlIFtpY2VdDQo+ICAg
ICAgICM4IFtmZjcyMTU5YmNmZTViZTA4XSBpY2VfcmVzZXRfYWxsX3ZmcyBhdCBmZmZmZmZmZmMw
YTkyMGI0IFtpY2VdDQo+ICAgICAgICM5IFtmZjcyMTU5YmNmZTViZTQ4XSBpY2Vfc2VydmljZV90
YXNrIGF0IGZmZmZmZmZmYzBhMzE1MTkgW2ljZV0NCj4gICAgICAjMTAgW2ZmNzIxNTliY2ZlNWJl
ODhdIHByb2Nlc3Nfb25lX3dvcmsgYXQgZmZmZmZmZmZhYTkzZGNhNA0KPiAgICAgICMxMSBbZmY3
MjE1OWJjZmU1YmVjOF0gd29ya2VyX3RocmVhZCBhdCBmZmZmZmZmZmFhOTNlOWRlDQo+ICAgICAg
IzEyIFtmZjcyMTU5YmNmZTViZjE4XSBrdGhyZWFkIGF0IGZmZmZmZmZmYWE5NDY2NjMNCj4gICAg
ICAjMTMgW2ZmNzIxNTliY2ZlNWJmNTBdIHJldF9mcm9tX2ZvcmsgYXQgZmZmZmZmZmZhYTgwODZi
OQ0KPiANCj4gIFRoZSBwYW5pYyBvY2N1cnMgYXR0ZW1wdGluZyB0byBkZXJlZmVyZW5jZSB0aGUg
TlVMTCBwb2ludGVyIGluIFJEWCBhdA0KPiBpY2Vfc3Jpb3YuYzoyOTQsIHdoaWNoIGxvYWRzIHZz
aS0+dHhxX21hcCAob2Zmc2V0IDB4NGI4IGluIGljZV92c2kpLg0KPiANCj4gIFRoZSBmYXVsdGlu
ZyBWU0kgaXMgYW4gYWxsb2NhdGVkIHNsYWIgb2JqZWN0IGJ1dCBub3QgZnVsbHkgaW5pdGlhbGl6
ZWQgIGFmdGVyIGEgZmFpbGVkDQo+IGljZV92c2lfcmVidWlsZCgpOg0KPiANCj4gICBjcmFzaD4g
c3RydWN0IGljZV92c2kgMHhmZjM0YzllZmMyN2Q0ODI4DQo+ICAgICBuZXRkZXYgPSAweDAsDQo+
ICAgICByeF9yaW5ncyA9IDB4MCwNCj4gICAgIHR4X3JpbmdzID0gMHgwLA0KPiAgICAgcV92ZWN0
b3JzID0gMHgwLA0KPiAgICAgdHhxX21hcCA9IDB4MCwNCj4gICAgIHJ4cV9tYXAgPSAweDAsDQo+
ICAgICBhbGxvY190eHEgPSAweDEwLA0KPiAgICAgbnVtX3R4cSA9IDB4MTAsDQo+ICAgICBhbGxv
Y19yeHEgPSAweDEwLA0KPiAgICAgbnVtX3J4cSA9IDB4MTAsDQo+IA0KPiAgVGhlIG52bXVwZGF0
ZTY0ZSBwcm9jZXNzIHdhcyBwZXJmb3JtaW5nIE5WTSBmaXJtd2FyZSB1cGRhdGU6DQo+IA0KPiAg
IGNyYXNoPiBidCAweGZmMzRjOWVkZDFhMzAwMDANCj4gICBQSUQ6IDQ5ODU4ICAgIFRBU0s6IGZm
MzRjOWVkZDFhMzAwMDAgIENQVTogMSAgICBDT01NQU5EOiAibnZtdXBkYXRlNjRlIg0KPiAgICAj
MCBbZmY3MjE1OWJjZDYxNzYxOF0gX19zY2hlZHVsZSBhdCBmZmZmZmZmZmFiNTMzM2Y4DQo+ICAg
ICM0IFtmZjcyMTU5YmNkNjE3NzUwXSBpY2Vfc3Ffc2VuZF9jbWQgYXQgZmZmZmZmZmZjMGEzNTM0
NyBbaWNlXQ0KPiAgICAjNSBbZmY3MjE1OWJjZDYxNzdhOF0gaWNlX3NxX3NlbmRfY21kX3JldHJ5
IGF0IGZmZmZmZmZmYzBhMzViNDcgW2ljZV0NCj4gICAgIzYgW2ZmNzIxNTliY2Q2MTc4MTBdIGlj
ZV9hcV9zZW5kX2NtZCBhdCBmZmZmZmZmZmMwYTM4MDE4IFtpY2VdDQo+ICAgICM3IFtmZjcyMTU5
YmNkNjE3ODQ4XSBpY2VfYXFfcmVhZF9udm0gYXQgZmZmZmZmZmZjMGE0MDI1NCBbaWNlXQ0KPiAg
ICAjOCBbZmY3MjE1OWJjZDYxNzhiOF0gaWNlX3JlYWRfZmxhdF9udm0gYXQgZmZmZmZmZmZjMGE0
MDM0YyBbaWNlXQ0KPiAgICAjOSBbZmY3MjE1OWJjZDYxNzkxOF0gaWNlX2RldmxpbmtfbnZtX3Nu
YXBzaG90IGF0IGZmZmZmZmZmYzBhNmZmYTUgW2ljZV0NCj4gDQo+ICBkbWVzZzoNCj4gICBpY2Ug
MDAwMDoxMzowMC4wOiBmaXJtd2FyZSByZWNvbW1lbmRzIG5vdCB1cGRhdGluZyBmdy5tZ210LCBh
cyBpdA0KPiAgICAgbWF5IHJlc3VsdCBpbiBhIGRvd25ncmFkZS4gY29udGludWluZyBhbnl3YXlz
DQo+ICAgaWNlIDAwMDA6MTM6MDAuMTogaWNlX2luaXRfbnZtIGZhaWxlZCAtNQ0KPiAgIGljZSAw
MDAwOjEzOjAwLjE6IFJlYnVpbGQgZmFpbGVkLCB1bmxvYWQgYW5kIHJlbG9hZCBkcml2ZXINCj4g
DQo+IEZpeGVzOiAxMmJiMDE4YzUzOGMgKCJpY2U6IFJlZmFjdG9yIFZGIHJlc2V0IikNCj4gU2ln
bmVkLW9mZi1ieTogUGV0ciBPcm9zIDxwb3Jvc0ByZWRoYXQuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmZfbGliLmMgfCA3ICsrKysrKy0NCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZmX2xpYi5jDQo+IGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92Zl9saWIuYw0KPiBpbmRleCBjOGJj
OTUyZjA1Y2RiNS4uNTEyNTlhNGZkZGE0YjkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfdmZfbGliLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV92Zl9saWIuYw0KPiBAQCAtODA0LDcgKzgwNCwxMiBAQCB2b2lkIGlj
ZV9yZXNldF9hbGxfdmZzKHN0cnVjdCBpY2VfcGYgKnBmKQ0KPiAgCQkJaWNlX3ZmX2N0cmxfaW52
YWxpZGF0ZV92c2kodmYpOw0KPiANCj4gIAkJaWNlX3ZmX3ByZV92c2lfcmVidWlsZCh2Zik7DQo+
IC0JCWljZV92Zl9yZWJ1aWxkX3ZzaSh2Zik7DQo+ICsJCWlmIChpY2VfdmZfcmVidWlsZF92c2ko
dmYpKSB7DQo+ICsJCQlkZXZfZXJyKGRldiwgIlZGICV1IFZTSSByZWJ1aWxkIGZhaWxlZCwgbGVh
dmluZyBWRg0KPiBkaXNhYmxlZFxuIiwNCj4gKwkJCQl2Zi0+dmZfaWQpOw0KPiArCQkJbXV0ZXhf
dW5sb2NrKCZ2Zi0+Y2ZnX2xvY2spOw0KPiArCQkJY29udGludWU7DQo+ICsJCX0NCj4gIAkJaWNl
X3ZmX3Bvc3RfdnNpX3JlYnVpbGQodmYpOw0KPiANCj4gIAkJaWNlX2Vzd2l0Y2hfYXR0YWNoX3Zm
KHBmLCB2Zik7DQo+IC0tDQo+IDIuNTIuMA0KDQpUZXN0ZWQtYnk6IFJhZmFsIFJvbWFub3dza2kg
PHJhZmFsLnJvbWFub3dza2lAaW50ZWwuY29tPg0KDQo=
