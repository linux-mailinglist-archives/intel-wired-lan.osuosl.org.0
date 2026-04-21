Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKJKFnFP52lW6QEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Apr 2026 12:20:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FF54396DC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Apr 2026 12:20:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8790783B56;
	Tue, 21 Apr 2026 10:20:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d9u1o5zNl3c4; Tue, 21 Apr 2026 10:20:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E971583C7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776766830;
	bh=bBzb2NKcmAdOvDygPojtlsUh3/O53VgQNG/xiZjChT4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rGTE2txhL2cMPutHLT8pfqHkG/5k4N7Zz0qKXsePnEUDyAyHt/9LYcBf7oXI0gjY4
	 lpQWaBCSHx+1SoCVxOmVATTYsHGmTfSoJbxrO4fVmINt+ebHPY5ki3wwJF0140h6TB
	 /UnH1IVg8drHNmskLDZv5m3kk+ZhqmINpAXrrYRpXHZ0pFFDq1Iunnsj8oA34i3Eke
	 /RsbnP/5xNi4lIuDetjysSh+YWKzK0EhHpWVcjtN7J5M6YG5I7IZG1g4O03qx6fT4f
	 n6qEI+BInK/byE6D4Ou5Mc6QC2pFyIou7i5+h9tK9a1+Q25sSBqEMHUQjqkPUJo8qP
	 Ik1mc5NdPKbVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E971583C7B;
	Tue, 21 Apr 2026 10:20:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B3D38257
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2026 10:20:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9981682ECF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2026 10:20:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VfF0phr2nP4P for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Apr 2026 10:20:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8B3B680B58
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B3B680B58
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B3B680B58
 for <intel-wired-lan@osuosl.org>; Tue, 21 Apr 2026 10:20:27 +0000 (UTC)
X-CSE-ConnectionGUID: LCV7PIGOSgO0XXmS1CZuUw==
X-CSE-MsgGUID: ro99gJYfQ6iD8Ax9uHCdXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="95107504"
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="95107504"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2026 03:20:27 -0700
X-CSE-ConnectionGUID: Q0Kl9j1gTSqgCdXKYnELAg==
X-CSE-MsgGUID: teNXTjtFTQ+NBoRTvZHUhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="236009839"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2026 03:20:27 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 21 Apr 2026 03:20:26 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 21 Apr 2026 03:20:26 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 21 Apr 2026 03:20:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WxekvqOQBLMTYZp3IdDuX8yPsqrn6SODMUY+EQFXN8QPa9dxMFj7NSDB2umuahQXjNul7+nyHiXDCbqVkJ2FpVm/f0R1G9z1yDH5A4eZ0h402HBTCCSBiHWyEBzHIZFVJ5NWoWE8L6txe/YLEjGnR2lKDiieMP4o/qwAnH8tHTM7WH0lSxuQb4WwsxGjKSwXCbXntmK6uloDu77nmAIjcPB9/O9tJ/4gCqaD2s4yBYnwv4sCDvPtfyL0/dgR5XPi5W/xb86phW4HFmSpXSuubsWUZy3w4vqYPuCcolvevrjCc7Sdsw1+55rDspI2VH+6+KJV9ybbnbGJ0SIbBVbw/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bBzb2NKcmAdOvDygPojtlsUh3/O53VgQNG/xiZjChT4=;
 b=PmW1DcZ1kMFaIfH9KIakIeAfHGk3N8n9BB+0PIbYSV3U9c/NfAsEBy52gpfk1EYwZecg/msu4M0HJ+cJTE7ADGI20Md6QX8NlbnSD+jj8Bk4mKyYmkPJET6pfkmJ/hSaB6+eYbdfe9HBaj2zXiHQWOSDE3wxCiL+9+ZI7FQL3DNygITW3jw5xLuShzHKEoal/YoMABFMzOtnORRwerzmDDH7PEoEwqat1c2HBtbDuUNFoLACJecQpVlVm2f0eIAw2wmFEdHHTiz8fN/HBRRJfR+1qHOzt045rdhGQvKkcRhHS3H1E+jIhsV2WHI5OaYlw2tOtdbpEQ92hTgdWzdcAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV3PR11MB8507.namprd11.prod.outlook.com (2603:10b6:408:1b0::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.15; Tue, 21 Apr
 2026 10:20:23 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9846.014; Tue, 21 Apr 2026
 10:20:16 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Vinschen, Corinna" <vinschen@redhat.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vinschen, Corinna" <vinschen@redhat.com>, Jose Ignacio Tornos Martinez
 <jtornosm@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] iavf: iavf_virtchnl_completion:
 drop duplicate ether_addr_equal() test
Thread-Index: AQHc0XW24mG2Vt90N0+KDojNIRC2l7XpTYYg
Date: Tue, 21 Apr 2026 10:20:16 +0000
Message-ID: <IA3PR11MB898664A49E614F197D4FED6EE52C2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260421095947.868695-1-vinschen@redhat.com>
In-Reply-To: <20260421095947.868695-1-vinschen@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV3PR11MB8507:EE_
x-ms-office365-filtering-correlation-id: 15fb906f-5e8d-448f-3949-08de9f8f9569
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: 7sNsnp38crhKcQyji6rw5tXtORNDAKHjNjh4riJ01eHCLsVcRKnuzTLnOg6WlmeDah5kmwuoyMby7OEQmiOiNKUlRj6ObnQXeWk7QSXu1M/uyYhnAUcpvNlliUmoR5Rl8EQVqe0sxWvkAGb8uOqg8sU/ELbKaPqU5EKUw6NU748EsQg5hejr4iYub9dAlfRBAyS6dHdQHkgU5QPqzYzZU04wXPi2khYbP0H3uh2kPM/2Ba2/v06lgpQqYJaTSa4LkVkQjAgxTC3nihmfUPBTnodjZhFHY2zYqlirIM9ojD5apJ0Ni89u3sNINDV6L/owwLLbrxxtYaFXlrggqHysHYyn7I05I6/Wlyg2lfWrqXXwFLk69IWXMxPTkn1OFxmmP8Hp9X5hH3w6U+BfZJXOLRDuFX6ll7sGouTrVc+0I16fyt2vQGobdVIHBrhUtN0pG16qGIyvbqVCLrR4CmbNXvfqOWVIOPgvbqx6bMw8fVOfuOwc25jvGI9cnrQp1oQVQFLHGQ7OghdrFP6bUZy/RhCqAYTH1mYArjxDIsSvxcjOxzj/4IJZGFk5kW5p/o60olNAi81VILcTspUX5Dh88ehg28CVnUcR2c4VA/7qF9wxyhqakvJDygSmLy7uW5WuRCiCoZFs3z9fe1IcVnaqCQRo1IDnpvnTV7tKgIKgxlGdQ+Yaujv+oklyLzupZ6zN9LHwnAEvdMdXLiLqCfP+mAAVzYE5mu4nO1THp7Q7U9bppH2rJqKpo384/rnYW9qRdkAGxUBTAZVtDbDrKpp9No1N3YfuxBestVkhGivfE88=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GNZqZH+gsD2AzjncrSPF73IXUkEQ4f8F1Z459Gsvi1iKrnw1sx4zzfkO4mdn?=
 =?us-ascii?Q?Lvdn8VpEulLhKczP+Ul6oUS3AzkC/4GmF2x0XgZMIE1fkRHeskTXr9+9exik?=
 =?us-ascii?Q?q5QC0CzrhD5KNHLLPNNIsKCg8AQdazVDvRezCAdsok8PmQuXIFeBLsamlUm6?=
 =?us-ascii?Q?744Q3vxVK+IRNY/lqBHSECgloy4nyvv2ri25819SPD0gXjp3XUnCdWFFvH0F?=
 =?us-ascii?Q?a69cWJDcOgJdVxtGvpfpuWpsXljpqz68AoP1fNBh5c7NipwfEjXJmToOmUFP?=
 =?us-ascii?Q?Ku1izb4uhaPMk4llqsfXPni8Yuo4L4JUwBwMxFBuj8vbMT2+1a+Yd09hkHmT?=
 =?us-ascii?Q?NBUg+7G5lVChnS4ixjY83hWJzofOrKKEcFFNi23OB7zSkSbW1AmAOfZcVQZ5?=
 =?us-ascii?Q?JsrohGn6VbIbE+4DscWVt4dg/imJX9NdF0diKW+QCdBP5edwVYrlE/JsALEd?=
 =?us-ascii?Q?6cW+IqoHqrBy4aqFdmrt0OyTLUlKMJW3TrtkTl7wjY9Fh0KkQ9xm70wHvoVQ?=
 =?us-ascii?Q?WHDTm4MzMqNpkmshARj+4eKywkfjSQ3Omlhdq1LRxabgJhu8NiXSmtzQ1mNq?=
 =?us-ascii?Q?mcOW+W6ZHPbZTiAPPgoNFm9kLgQR3KxESlDU+/hVdtgYcwgcIvkS/9KpHiiD?=
 =?us-ascii?Q?Ih4hHX4rV5UsCoMMDfBCEUtLnSqohImCfKnlmCVWQGFSEeEfepuxaFWQFs2o?=
 =?us-ascii?Q?yh093StE2H95YAwdj807y8UmmCx+ZIjxoXJ1eVrdjflbBzZkWWvtyOAsbQ/y?=
 =?us-ascii?Q?O9aFj+vKu7GBBHmofaE5j3idWIU39GXXiOYTus5rBFuIBvbw3lVQVBNi5WSf?=
 =?us-ascii?Q?fBI72hDXxjVqNqbanPvwxSrtEzGezbP+DpeZ6WRzjKXioXoDPJ7D27goix9m?=
 =?us-ascii?Q?TksEbigHOwrY0RlWArETvQWvkxruSYnf53mPKpayPgfZyv6//W2sBXbAb6kH?=
 =?us-ascii?Q?pSIctY2lO/0AfB8xBCyERR4yVrNlvv+AxrYTC/n11KHun8qfqFjtVEnHQIUK?=
 =?us-ascii?Q?hWKdRAUW0hPeSEBPanub4KD76XBKLrGdjsHzAYWDH5iJo/y4QRyLI04x/TTD?=
 =?us-ascii?Q?J0MhLhUKi5/owaJMUlE5iKvAZu+zHHsOWKdgb1SH7APntU3V5x+hymJ+OlHT?=
 =?us-ascii?Q?aF8Oata4V51VYZeHOEzOHHhZL2GxNutjHxP7+EUBBzTA6Zf1u+Rejh72SM+w?=
 =?us-ascii?Q?ceo9NbgnoLdlAkk9KyWzDOTjwmh++YvrYPlCjsLuQTbS5PUQ7dCmYvA/q38Y?=
 =?us-ascii?Q?GYThttp5PDv6MYQ4nbYIgQ/gxt6BJLzyIksArT1gbvqSRLJxwWORiLqOzQ6I?=
 =?us-ascii?Q?PVWyVtP9w1y8Thj3v1YgW4f/7twp5I/gZ6M8HPUAL2he0iqe+GSnQXB7NzOE?=
 =?us-ascii?Q?aCsR79GOHlA2mQ878PDVAJFgG5+YlV35Dqeaclayz+DLpUbX6y/uFiK9Y3tW?=
 =?us-ascii?Q?KmBzHGNbggMGSUYz0TreyJJSFX66Bu9Hapl81VnBM4GPjvcypLGaFBn6iXgW?=
 =?us-ascii?Q?Xz2goA7e0RdJ0cOfAMVLJu3ISsi+RtaCHolaAkYBQJR/T5N3M/COeNENfp5h?=
 =?us-ascii?Q?oMr+cluvhUfKwduP9i7b9BDRTOrreXyrXm10fB+tC8YJ7oxb1zdt0BC+v8mo?=
 =?us-ascii?Q?Gg/IV20WA6Ox++lRbDlQ2YHrMT/pTiCZi3HYFT4kRPcepyYtPX1NYFzHcaxx?=
 =?us-ascii?Q?tG13zvN+1e1xD2kB7mcVWvN3PBSGAZ6tF9FyQ/313X7n7qbcRDTDfZHxbeHz?=
 =?us-ascii?Q?uRBJUub7ci1iBMASzlzoMaE8rC0yWdk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ToBk/pPuNtd8yjJpF0LE2GxjNZlCwXLVIT8WAFgt/eqitBqmVQUk1EWMyoZnt+zUhzle9Oow5Sb1cqF+vMe6bex8deO3Azw2juTpIPBP3f9TAcI400SFvv53nAHPS3LPzYsOtdE6RaMKBn9E63CqQpmr4IVgTVXmzLCfVR6QWfYwuns2Dq6nEqZ6PMKPFFZXpor2yyN8mHN9kRaEFIUEdrJMrZqPnOJqUjUslkfKlU00iuh9tydFpPuf9MayQdLfwFTo7N9FoEb03YtdQUo0KfbxZsU9LYDaQ6YywMJTUXdY/sr/Gg4+HMHCl3jGNH1AdHBz4+HAufjAci5R5FVINA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15fb906f-5e8d-448f-3949-08de9f8f9569
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2026 10:20:16.8795 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: INILZu4+BFAHDyWOlhF7wQ87s9u6b82c1qm86TAYfYfqfAg3rXF5mTtGVfww0v5ovMFKgFilHA1CzHDh9szckDmu26e+VLsKMW5Cx3V1vnE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8507
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776766828; x=1808302828;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=niKcx0rBl1m+DTqtmi+Mz8XYk4tuRlBOdtHYK7Bss+k=;
 b=gTKqpzwRnteN2QFZXKUubUPifflk97/VBhoUx04smIpkARUDdUfWFvyU
 grUVriDDz4hKiuu01O6xhOqgExEDcMyIztcYL7v12DLsL6y9FgyxFKVv8
 amqG/oxalK/IAPsM2l57u12N1CkYDYO1ReHMwYDT3Hnd4sSmYtCAEcrPA
 TPYWgwLGU0XMCm7v1l2ccj2c0/w0PB1DGkBXZXVDvBu18GjchFBRdaPJN
 9xe6antxKuwFieSOdLksyb1ZENGdpTHt+NTpa9vMwseXGtHD6PRbCLs9d
 jkCScZ87brrHhxJG7BFO84LkaSBrxrwmd914LaEuZfwPZNprj0cfIu1GN
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gTKqpzwR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: iavf_virtchnl_completion:
 drop duplicate ether_addr_equal() test
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:vinschen@redhat.com,m:intel-wired-lan@osuosl.org,m:netdev@vger.kernel.org,m:jtornosm@redhat.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 53FF54396DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Corinna Vinschen
> Sent: Tuesday, April 21, 2026 12:00 PM
> To: intel-wired-lan@osuosl.org; netdev@vger.kernel.org
> Cc: Vinschen, Corinna <vinschen@redhat.com>; Jose Ignacio Tornos
> Martinez <jtornosm@redhat.com>
> Subject: [Intel-wired-lan] [PATCH net] iavf: iavf_virtchnl_completion:
> drop duplicate ether_addr_equal() test
>=20
> This is just a simple cleanup fix.  Commit 35a2443d0910f ("iavf: Add
> waiting for response from PF in set mac") introduced a duplicate
> ether_addr_equal() check, so the current code tests the new MAC twice
> against the former MAC.
>=20
> Remove the outer ether_addr_equal() test, remnant of commit
> c5c922b3e09b
> ("iavf: fix MAC address setting for VFs when filter is rejected")
>=20
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> Fixes: 35a2443d0910f ("iavf: Add waiting for response from PF in set
> mac")

I think Cc: stable@vger.kernel.org should be added.
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index a52c100dcbc5..9b8e7e4376c2 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -2579,13 +2579,11 @@ void iavf_virtchnl_completion(struct
> iavf_adapter *adapter,
>  	case VIRTCHNL_OP_ADD_ETH_ADDR:
>  		if (!v_retval)
>  			iavf_mac_add_ok(adapter);
> -		if (!ether_addr_equal(netdev->dev_addr, adapter-
> >hw.mac.addr))
> -			if (!ether_addr_equal(netdev->dev_addr,
> -					      adapter->hw.mac.addr)) {
> -				netif_addr_lock_bh(netdev);
> -				eth_hw_addr_set(netdev, adapter-
> >hw.mac.addr);
> -				netif_addr_unlock_bh(netdev);
> -			}
> +		if (!ether_addr_equal(netdev->dev_addr, adapter-
> >hw.mac.addr)) {
> +			netif_addr_lock_bh(netdev);
> +			eth_hw_addr_set(netdev, adapter->hw.mac.addr);
> +			netif_addr_unlock_bh(netdev);
> +		}
>  		wake_up(&adapter->vc_waitqueue);
>  		break;
>  	case VIRTCHNL_OP_GET_STATS: {
> --
> 2.53.0

