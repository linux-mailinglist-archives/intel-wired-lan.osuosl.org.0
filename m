Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8F8BC8226
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Oct 2025 10:52:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8B3B40F50;
	Thu,  9 Oct 2025 08:52:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xHRPrc06pJpE; Thu,  9 Oct 2025 08:52:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C70E440F53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759999963;
	bh=JWg0GioCVoFRwJTVxubbaXx8nRdbN+eYYQ8yn+TgYe8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xBr51OcDgVOydLrV+D9yzHQ1bzxxoE2CgK3cPTasTcyfn42m8rtiXteX8S4+3/kfZ
	 Cn4AiEnc4SCjBnIITSAx7glXo7S3/4KiDy5TaE5RBoKKhRg5JPevgtDsuxGdQYBqsj
	 LW1QIUouPKbZBFlWfozLaYporsKspfspfuNs3xcqeOYEPXytEnLpehmrbRNTCBZ2aY
	 km9r827tN0OdMe9SZcTzlX9tAbbQhH0Jnbfv36nXt0jzZaLfkbLABfFYVoG6Y5BlEd
	 e18iU878gDtm4SEw/52qkrhUVZcdhMabzToqBQslfFHCPyMWF0ciL/R6tyQQulnT1Q
	 HQMW7b/2cdZKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C70E440F53;
	Thu,  9 Oct 2025 08:52:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BEA33226
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 08:52:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B531440224
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 08:52:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aydzHePZCeR2 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Oct 2025 08:52:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5CF99400E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CF99400E9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5CF99400E9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 08:52:39 +0000 (UTC)
X-CSE-ConnectionGUID: nf6DJxzgRCOcxM7GR83Vnw==
X-CSE-MsgGUID: lqbzADIqRJyWw9iBKLYIww==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="72464519"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="72464519"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 01:52:37 -0700
X-CSE-ConnectionGUID: EagTz8qaQeSe6VFEiZrT1w==
X-CSE-MsgGUID: +UOpZUx1SGu+JvPJhqEh2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="181069540"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 01:52:35 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 9 Oct 2025 01:52:35 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 9 Oct 2025 01:52:35 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 9 Oct 2025 01:52:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DEId01xua2y8+kGYzhkwJtfdLAPc+xhvn3HznbDzNsFBcSO6/Czn3wcJgF1TpcQGJ9lgTC1vWir6a+SlgEIYYFlhowbqb+S7b0Ivu2DAdYQfmD0Dp4bJtim8Lxq46m6yxVa0it+bOBagkWyAG2amuBk2u0MmK4MHjyxtYcuTPMdf6iHXv2APc1F1EsmaFxKJh2myMCqwzWPAeYENYLI1wGBaSpPxO4H8xT84hFnmZ5XhCPjsRcrI33Kbkj+RWqeN6AWIeuT6gWt9hTuq4U7OQEQDbTM9IsnYhlel9T33BcS3PHR/POS6dYwCMMPYeDnjZnFzAAJS5AcOkfvsm3wGrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JWg0GioCVoFRwJTVxubbaXx8nRdbN+eYYQ8yn+TgYe8=;
 b=MH1HGe+DLV/43crgR6U04U691q5Ga2pr0eM7yFKtbexF7+KnTk4gUMRaq1coqB+EdTAokFAIK9I5JnSEw8F9qOhkBsobXwUDNZ7WEa48byBnv/8jEPSQfxp5XBkuddtkHH9ZLOeC5wmHqXzb/d9QPfIWRhSpjYkZG19bMo0Zffnvu/iZ41G48TRcTL+qJnpQpx3D5tj4rdWqxhpXYAJKzk9Ut3abrx2cOwjot06e2INH2CRAP+3k2ny7trByBgZ86Oc/NByt1j9trVg3w7rFcsjvnLtrRaBQ3NacWjFyVkJ4bBUbyb2JjqOE93N4Ue8Q3OdC9MGoeA8Tcw1uMB3sOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB7311.namprd11.prod.outlook.com (2603:10b6:8:11e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Thu, 9 Oct
 2025 08:52:30 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9137.018; Thu, 9 Oct 2025
 08:52:30 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Brandeburg, Jesse"
 <jbrandeburg@cloudflare.com>, Jakub Kicinski <kuba@kernel.org>, "Hariprasad
 Kelam" <hkelam@marvell.com>, Simon Horman <horms@kernel.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>, Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "corbet@lwn.net"
 <corbet@lwn.net>, "Keller, Jacob E" <jacob.e.keller@intel.com>
CC: Jesse Brandeburg <jesse.brandeburg@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v3 3/5] ice: add tracking of good
 transmit timestamps
Thread-Index: AQHcI3WvpM+9SaM3RkaZdYqwsYFDjrS5rQ/w
Date: Thu, 9 Oct 2025 08:52:30 +0000
Message-ID: <IA3PR11MB8986224FD5C2D9290D57E658E5EEA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250911-resend-jbrandeb-ice-standard-stats-v3-0-1bcffd157aa5@intel.com>
 <20250911-resend-jbrandeb-ice-standard-stats-v3-3-1bcffd157aa5@intel.com>
In-Reply-To: <20250911-resend-jbrandeb-ice-standard-stats-v3-3-1bcffd157aa5@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB7311:EE_
x-ms-office365-filtering-correlation-id: 52f62e9a-6da1-4ea7-946b-08de07112e5b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?dnpiOUx2cGtFdWhSMWR6K2Z1cm9CMEVIc0tZL1F1NDdCbkZhekJ5VWg5cnJa?=
 =?utf-8?B?OWRJaEFYK2J3TkV1SC9UNzBaeVNNdkpsZXk4VDFiRVl4ZEtjOWFuK29qb0Q1?=
 =?utf-8?B?VXoydmtKSE81SENMSFZhckxvZGZjR1I4L2JPb1publNoTkFLWmhMVnVIeWla?=
 =?utf-8?B?dHF3TE5PTDVLemxsYVVvNjFSbDFmc2NFR0pUTDZzdWN2SFRTNmg2VXBpS20v?=
 =?utf-8?B?b29JQ0F4WVNqbW5pN1FpOFhTN2FwZXh5ZW4xZlpNS0c4NC9jNGlaaVpwRTAz?=
 =?utf-8?B?ZCtWSWU5anlKUXptOGcxSjdxdURiZXhoTkp2RlhpdkorL2tFM0NHQ3lJWEhY?=
 =?utf-8?B?WVNYRnQvZzBlS29ZcWE4TW5Jd1BXZXdHSGtsYjBlU3VKOWVJV3pWSFVSZ3Vh?=
 =?utf-8?B?Znp5TSswNjJVNzNFMDJ0bkpnMHdvUzFBdVZOczNmVE1oNFMzTS9QbkpQa096?=
 =?utf-8?B?TTVpMjd1ZWI3OUt4OXBpUkRRV2RPWldkYVBYdkVrbUZyWnA5dSsrY3BsYkpy?=
 =?utf-8?B?TlB5emVDek1pQXBHUWhPVFdHMW5LL3RGWGVmQjM4cVlyK01qNUNBSU8rcmlp?=
 =?utf-8?B?dGZPazgwclk0V0RXNnhoditwUXp3Z2hnZldpeGQ1VHpJZGlVaVpaOHVnRWYr?=
 =?utf-8?B?K2Vqa2hydWV6VzlKVCs2WGJvaDZHYUhCckZxOFVyN0NzOG9WU0pPbVZvS3FH?=
 =?utf-8?B?TmJrSDNMaGNwdm9QZXFzZzRadWJlaGs4Z3YyQVh0VUlaSlQ0UW5KTE5zL3Va?=
 =?utf-8?B?eE1kcXBxd3BsMklwbUhBRW5SSXRjaXVkWSszaituWTB6Q0lnNUk0c2ZNM1Ja?=
 =?utf-8?B?QnFBN2xhR3JRVWtybmVLUTkvWiszVjg2YkxGL09pR1lGYjB3ZW9vbzdTUm9C?=
 =?utf-8?B?R1dTNFEraHArWDNSbGVVZWorZ3hVa0xNb2dqZlF3amFCTGN4dHVHNXJ0UnE2?=
 =?utf-8?B?dGlLU2pmdnN5Tjh3a0wzZWhCT3R2bW9kdEpYellQS1pBbXV4SFRONDcxNEJF?=
 =?utf-8?B?NFRYWXpIcDdOeURkRmdSa3BMQVp6ZGNLeThkZHZVVWVEWHM3Z0hxOGtncjV1?=
 =?utf-8?B?blRKWFlIYSttTWk1Rkl4N3JtMllyVjdrVU9HTkcyaGhaVUhjMEwvZEZSamtV?=
 =?utf-8?B?Y1FTS0E4a2RycFRkMTFhNmxDSE1nL1JCY3dOWjlvRFV0NUphempENTZlTGNH?=
 =?utf-8?B?WFo5YmhocGluTDFOTFpXM1ZQNkVEdjFKNm0xVU8rdXVWM1dLL0syRUs2RnFp?=
 =?utf-8?B?ZkxZZjVJS3QzdU5CQjAyaVc1dVZUVzl2V3hOaVpCRUx3STdaSFZOQUcwQ3Fm?=
 =?utf-8?B?VmFSVEJya1ViSlRzQjlNNytWSmwxelhIT1Z2Rzh6eWIySVIxVDBzYXBMSTNw?=
 =?utf-8?B?TSt0UUlIYll6Y29Tckk1VDZhNUh0SVJCSnVCaGZKZkkvNlFnYzVtTDVUMWg3?=
 =?utf-8?B?dUJmYSs5OTBxWm4ycENvUlZ0clMrcExaaWJRWFBhTVd3NW0yVXRxbE1Wa3Vo?=
 =?utf-8?B?eWMzMXV6bk1WTkkvV05FM0RIdDd6a0dLdWoyTmplRzM3K240UGpDZDJjM1R1?=
 =?utf-8?B?MzBaUk5mZWlJNk1xdmk5UmYxYjRaV2lWaTdmbkFycjJUQnJYSmR3UnowaGVo?=
 =?utf-8?B?TXdKYUx3eFhnUjlvZlJXOEFIR2lhOHorRzJDZEQ5SXcvbGxuUHVUL2cyNVZr?=
 =?utf-8?B?RTlSNnpWdkZKYUJhMWg4OElOa2VUU1ZkVFdEVXlpZGhUUW9QSk1FNWUzN1Mw?=
 =?utf-8?B?L1RyRlFBc1FVK0wrcExQenBlcDBhcjd4WUVYWVRiVG4zbHBsN1lwN0U5VjJz?=
 =?utf-8?B?YnBjYXNKR0t2MTVBRGJBM3dUa3VCbXBYRWJzc0lDeTNDazlRaFlLMklWbFFJ?=
 =?utf-8?B?ZklwTlMvL3oyVGNXL1UveHJqRzRRTnk1d0QySm5Dc0xYWFpkNFlyQzdMb0lO?=
 =?utf-8?B?SXNseDE0Y2RST0V0MjBkK1FGQUsvajdEOXpWUnBYeWJ5WXc1VHVGMXlkaEFY?=
 =?utf-8?B?dldmOW4xWGNCekl6Ri8yQVVLQnVhSXJ3QVRRZmdUdm9HWkF6dXY3SksvZ09y?=
 =?utf-8?B?U3d2UnpFK2hEU2JsbHpoTFJneE9VTjBzK0dLZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V3pJUDRIOFpDRlcvbG8ybTZtWE9lUXpsc3FxWFJQcG05NGpuQWJQZk9aT2Vq?=
 =?utf-8?B?czRBZWltaTdLSXI1Zy9xWVZMeU5ZdlBUMnZHY2ZGWXVUemVxRENycVY5Q0hM?=
 =?utf-8?B?UERpTnJvRXIxSiszVWZIOEc0WXFJTDV6TjlTeDVMVEE0RXBGSWVPNFlxNTdh?=
 =?utf-8?B?ams0NVNZdENoZ2RXMFFCVktCRzdmSS90MXpiQlRSVlc5TFJMTFN1eisyTGdG?=
 =?utf-8?B?Zjk2T2RtUEo3eXRKQ1V4aU5malJYSFdBSm1GQlpuZ0NxaTZaeVRWMDFCdFRy?=
 =?utf-8?B?L2RlREpkdWdJSWdFOTcxMGFjYnFEQVhaTWZDQjhhdWtCOUZDcGhkdDNpV3Js?=
 =?utf-8?B?UkdmVTV3d1VGNjhUQ05BbUhpV3ZqTE84d1huY3c0VDVObHFiRGJpdWt3eDhS?=
 =?utf-8?B?WEhoTEVNVVVFdXM2bWQydmRiUjkxZXRRTEZTanJycnRNTm9MNEZRNXhuUkM4?=
 =?utf-8?B?OElvTTdjRXZwa1MySHI5SiswaEdRREE2enJ3MlJJMXZsWkVhUkttdnI4RDRq?=
 =?utf-8?B?UlN4TXkzL3l2S0ltUUtvdzNDMTBUQkg3b1ZhUzlFRlcweXVUYzBiQ203VGJj?=
 =?utf-8?B?WTlsR2lLa3NZY3ZwN1RmTi83UExmYXArOEdJSFpBMnIwOThNM08vV1lnUks3?=
 =?utf-8?B?OHQ2YUphRnN2Y1lLbDNZdy8zMGM3T0FwUDAxL0RJbWlBeXRiQTdsOExOTGVw?=
 =?utf-8?B?eEl2ZXpGWlhUSzlsdnlESzN4b1hvaEY0cUxEL0xDUDU4bzNlVUNkU0VZVk1Z?=
 =?utf-8?B?NXVqa3FsRjdpU3NxQk1nbWZFN3VyQnJvQjl3eUw3cTRRYVBwb2ljUEdsM292?=
 =?utf-8?B?QW85M2R1MkFTUHdKK3FJcklCMmNmTGd5NlR4dUhLbFM1VjcxeFpHUnpadkFq?=
 =?utf-8?B?Y01adS9VQ2hhUThOMnV3VVFYTk1xUlRWeWJRMFBUeGhCNm1rUEFJcWF6TGRR?=
 =?utf-8?B?bzBsUEZ3YU5wbTBTNDJWajYyVGJ2SC94VGxIR3pTemhUMVpQMXdsYVZNbzBa?=
 =?utf-8?B?aW0zbzN3Q0laYW1acUN6YndzWWpYazUrS1JMMmVVWnR2RmR2RDAzSk11bjNS?=
 =?utf-8?B?SjRldWI3R2hKbGxRdGJ1ejNxditpUEFYeVgwRWZKcHF3YUVmU2xCTzVwajVw?=
 =?utf-8?B?RU5kNzd5YS8wbVFOQ0Q1RjN5aVBXWnV4VERQUjRpaHZXdnNhYXUrMGF0ZEEx?=
 =?utf-8?B?VmIyN3VlOUhzVUR3ZG8rbWoyQ2l6VFBNYXlpUThJK3h1ZGJkdU0zaDZnYUtl?=
 =?utf-8?B?ZGtja2s5dnpaU01iUDBXNXh2dU5MYm5oREMxOGc0dnUybUpnZ3pOUXhxMGdz?=
 =?utf-8?B?TFllVGlRazFmblhaU09vME15b210WGVybGVQUHFnWFhCNHhrc05UazN1eXVr?=
 =?utf-8?B?MHYvL2o2dThsalVjTDZVaThFN09UZ3IxQWpTOGtLTFZoZWNsZ1RDWlV6REJF?=
 =?utf-8?B?ZmVCNCtHMnFnbjNDbXBOSkVydTlFZU42U2xPeXZFNkpZZmRON0FkYmUrUzlS?=
 =?utf-8?B?aSs5SnRjV2p0TW1kQXFYQTlnaS9nNzVYc2RhQXNFY3p3Wndudm5obCtYZ083?=
 =?utf-8?B?L1BlMHhGMlZ6UFUvVkd0UDNqM25HdDE3dEZFKzdVNTVFM3J4cGxVN0FEVUJZ?=
 =?utf-8?B?QlB2ZUFvMk1lbUx4dnd3L0NMOWNuUVoxcG9PblphdzUvY2FtUW5mQTAzSDRM?=
 =?utf-8?B?ZTdTVytrajBVM0FxK1c1SGJpNkdMdkQ1Y01MdTNjWFpOeEUxcHpSVnpyS2Zq?=
 =?utf-8?B?QjRnenZ3N0E0cVVLUnZwbWd1QjdkamRkRkk0RzNzQnFPUWVTNGgyV0YzNFFq?=
 =?utf-8?B?dXkzZ2ozNkxNdkJuY01tZnAwZEx3YjhPbkwyM0ljcEZpREs4MkZZNk9GdjFa?=
 =?utf-8?B?UllXK0NiaHhuTkN5elE1MDczeEdoTlhSenkzVzA4RCtpaGQ2enJMU0hSckhN?=
 =?utf-8?B?ZVRuM0liQmtYdmdoaFRpQ2VvUUlRVU1UWmo2ekZmM3duUEJwd0d2bVVuMHJk?=
 =?utf-8?B?SHFHMVl4Q214TWM4dHloZmIvQjZwMlhVVXJVZTcvN2pES2t2aGs4VDNJUTdZ?=
 =?utf-8?B?Wmo1MDN6QkIzN1RuZWJFblMyN01ZV05ybFVvWUlCbjlaTUpuOEJkR0J3QUl6?=
 =?utf-8?B?UXI2YmxUYXoxU2tTQkRHZVVyR0xXdE85VFNSK2drcUxkc0h3ZGdiZUdlYVI1?=
 =?utf-8?B?M1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52f62e9a-6da1-4ea7-946b-08de07112e5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2025 08:52:30.6630 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zMSiv0GRb4ZbBFvYYeN6fKk/Mj1RQheMZ5zkYxIDSvxrY3plIC7KCQQj/gIdGNkF4F2gqoUTM9OzvdgH0J0GR48fNla3ygxQC2Ts2+/TqzA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7311
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759999960; x=1791535960;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JWg0GioCVoFRwJTVxubbaXx8nRdbN+eYYQ8yn+TgYe8=;
 b=CU05dDUbTFP+wesHgHAvb9FndM6JSrEkM+zoudEKL19AOy15Uj5q9nh6
 RllY5qsy/KvSB8Kujewmy/X2qZw5c2d7i00V+FPwQDlT0SHhiy/dNKAv3
 pbXNh2txm/5Tf/IpXsd8m0iy9As3/Eu7Zn2TBe83IdTxUfY0BIALaFbEc
 h+vTmLflxp3474s3fRaEPQPDbQcheJ3SeyOVDLVq6vkSltPXTFsDDdFF2
 P6J8TV8S4RsVg4dBZHIGrVpqsYP8ae/DXXRKlR9SnJw7gh4SDQjQ9UFAN
 i6tm4XAlGIz5cGbqXK2HW30K2GD4mXdbopA9pAMiJj1eOrC6hi+RT9Jn3
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CU05dDUb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 3/5] ice: add tracking of good
 transmit timestamps
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgSmFj
b2IgS2VsbGVyDQo+IFNlbnQ6IEZyaWRheSwgU2VwdGVtYmVyIDEyLCAyMDI1IDE6NDEgQU0NCj4g
VG86IEJyYW5kZWJ1cmcsIEplc3NlIDxqYnJhbmRlYnVyZ0BjbG91ZGZsYXJlLmNvbT47IEpha3Vi
IEtpY2luc2tpDQo+IDxrdWJhQGtlcm5lbC5vcmc+OyBIYXJpcHJhc2FkIEtlbGFtIDxoa2VsYW1A
bWFydmVsbC5jb20+OyBTaW1vbiBIb3JtYW4NCj4gPGhvcm1zQGtlcm5lbC5vcmc+OyBNYXJjaW4g
U3p5Y2lrIDxtYXJjaW4uc3p5Y2lrQGxpbnV4LmludGVsLmNvbT47DQo+IFJhaHVsIFJhbWVzaGJh
YnUgPHJyYW1lc2hiYWJ1QG52aWRpYS5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOw0KPiBp
bnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtZG9jQHZnZXIua2VybmVsLm9y
ZzsNCj4gY29yYmV0QGx3bi5uZXQ7IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50
ZWwuY29tPg0KPiBDYzogSmVzc2UgQnJhbmRlYnVyZyA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5j
b20+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MyAzLzVdIGljZTogYWRk
IHRyYWNraW5nIG9mIGdvb2QNCj4gdHJhbnNtaXQgdGltZXN0YW1wcw0KPiANCj4gRnJvbTogSmVz
c2UgQnJhbmRlYnVyZyA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+DQo+IA0KPiBBcyBhIHBy
ZS1yZXF1aXNpdGUgdG8gaW1wbGVtZW50aW5nIHRpbWVzdGFtcCBzdGF0aXN0aWNzLCBzdGFydA0K
PiB0cmFja2luZyBzdWNjZXNzZnVsIFBUUCB0aW1lc3RhbXBzLiBUaGVyZSBhbHJlYWR5IGV4aXN0
ZWQgYSB0cmFjZQ0KPiBldmVudCwgYnV0IGFkZCBhIGNvdW50ZXIgYXMgd2VsbCBzbyBpdCBjYW4g
YmUgZGlzcGxheWVkIGJ5IHRoZSBuZXh0DQo+IHBhdGNoLg0KPiANCj4gR29vZCBjb3VudCBpcyBh
IHU2NCBhcyBpdCBpcyBtdWNoIG1vcmUgbGlrZWx5IHRvIGJlIGluY3JlbWVudGVkLiBUaGUNCj4g
ZXhpc3RpbmcgZXJyb3Igc3RhdHMgYXJlIGFsbCB1MzIgYXMgYmVmb3JlLCBhbmQgYXJlIGxlc3Mg
bGlrZWx5IHNvDQo+IHdpbGwgd3JhcCBsZXNzLg0KPiANCj4gUmV2aWV3ZWQtYnk6IEphY29iIEtl
bGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogSmFrdWIgS2lj
aW5za2kgPGt1YmFAa2VybmVsLm9yZz4NCj4gUmV2aWV3ZWQtYnk6IFNpbW9uIEhvcm1hbiA8aG9y
bXNAa2VybmVsLm9yZz4NCj4gU2lnbmVkLW9mZi1ieTogSmVzc2UgQnJhbmRlYnVyZyA8amVzc2Uu
YnJhbmRlYnVyZ0BpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8amFj
b2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfcHRwLmggfCAyICsrDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfcHRwLmMgfCA5ICsrKysrKysrKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRp
b25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9wdHAuaA0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmgN
Cj4gaW5kZXggMTM3ZjIwNzBhMmQ5Li4yNzAxNmFhYzRmMWUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmgNCj4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuaA0KPiBAQCAtMjM3LDYgKzIzNyw3IEBAIHN0cnVj
dCBpY2VfcHRwX3Bpbl9kZXNjIHsNCj4gICAqIEBjbG9jazogcG9pbnRlciB0byByZWdpc3RlcmVk
IFBUUCBjbG9jayBkZXZpY2UNCj4gICAqIEB0c3RhbXBfY29uZmlnOiBoYXJkd2FyZSB0aW1lc3Rh
bXBpbmcgY29uZmlndXJhdGlvbg0KPiAgICogQHJlc2V0X3RpbWU6IGtlcm5lbCB0aW1lIGFmdGVy
IGNsb2NrIHN0b3Agb24gcmVzZXQNCj4gKyAqIEB0eF9od3RzdGFtcF9nb29kOiBudW1iZXIgb2Yg
Y29tcGxldGVkIFR4IHRpbWVzdGFtcCByZXF1ZXN0cw0KPiAgICogQHR4X2h3dHN0YW1wX3NraXBw
ZWQ6IG51bWJlciBvZiBUeCB0aW1lIHN0YW1wIHJlcXVlc3RzIHNraXBwZWQNCj4gICAqIEB0eF9o
d3RzdGFtcF90aW1lb3V0czogbnVtYmVyIG9mIFR4IHNrYnMgZGlzY2FyZGVkIHdpdGggbm8gdGlt
ZQ0KPiBzdGFtcA0KPiAgICogQHR4X2h3dHN0YW1wX2ZsdXNoZWQ6IG51bWJlciBvZiBUeCBza2Jz
IGZsdXNoZWQgZHVlIHRvIGludGVyZmFjZQ0KPiBjbG9zZWQgQEAgLTI2MSw2ICsyNjIsNyBAQCBz
dHJ1Y3QgaWNlX3B0cCB7DQo+ICAJc3RydWN0IHB0cF9jbG9jayAqY2xvY2s7DQo+ICAJc3RydWN0
IGtlcm5lbF9od3RzdGFtcF9jb25maWcgdHN0YW1wX2NvbmZpZzsNCj4gIAl1NjQgcmVzZXRfdGlt
ZTsNCj4gKwl1NjQgdHhfaHd0c3RhbXBfZ29vZDsNCj4gIAl1MzIgdHhfaHd0c3RhbXBfc2tpcHBl
ZDsNCj4gIAl1MzIgdHhfaHd0c3RhbXBfdGltZW91dHM7DQo+ICAJdTMyIHR4X2h3dHN0YW1wX2Zs
dXNoZWQ7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X3B0cC5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYw0KPiBp
bmRleCA5YjA2NTcwOWM4OTkuLmQyY2E5ZDdiY2ZjMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jDQo+IEBAIC01MDAsNiArNTAwLDkgQEAgdm9pZCBpY2Vf
cHRwX2NvbXBsZXRlX3R4X3NpbmdsZV90c3RhbXAoc3RydWN0DQo+IGljZV9wdHBfdHggKnR4KQ0K
PiAgCWlmICh0c3RhbXApIHsNCj4gIAkJc2hod3RzdGFtcHMuaHd0c3RhbXAgPSBuc190b19rdGlt
ZSh0c3RhbXApOw0KPiAgCQlpY2VfdHJhY2UodHhfdHN0YW1wX2NvbXBsZXRlLCBza2IsIGlkeCk7
DQo+ICsNCj4gKwkJLyogQ291bnQgdGhlIG51bWJlciBvZiBUeCB0aW1lc3RhbXBzIHRoYXQgc3Vj
Y2VlZGVkICovDQo+ICsJCXBmLT5wdHAudHhfaHd0c3RhbXBfZ29vZCsrOw0KPiAgCX0NCj4gDQo+
ICAJc2tiX3RzdGFtcF90eChza2IsICZzaGh3dHN0YW1wcyk7DQo+IEBAIC01NTgsNiArNTYxLDcg
QEAgc3RhdGljIHZvaWQgaWNlX3B0cF9wcm9jZXNzX3R4X3RzdGFtcChzdHJ1Y3QNCj4gaWNlX3B0
cF90eCAqdHgpICB7DQo+ICAJc3RydWN0IGljZV9wdHBfcG9ydCAqcHRwX3BvcnQ7DQo+ICAJdW5z
aWduZWQgbG9uZyBmbGFnczsNCj4gKwl1MzIgdHN0YW1wX2dvb2QgPSAwOw0KPiAgCXN0cnVjdCBp
Y2VfcGYgKnBmOw0KPiAgCXN0cnVjdCBpY2VfaHcgKmh3Ow0KPiAgCXU2NCB0c3RhbXBfcmVhZHk7
DQo+IEBAIC02NTgsMTEgKzY2MiwxNiBAQCBzdGF0aWMgdm9pZCBpY2VfcHRwX3Byb2Nlc3NfdHhf
dHN0YW1wKHN0cnVjdA0KPiBpY2VfcHRwX3R4ICp0eCkNCj4gIAkJaWYgKHRzdGFtcCkgew0KPiAg
CQkJc2hod3RzdGFtcHMuaHd0c3RhbXAgPSBuc190b19rdGltZSh0c3RhbXApOw0KPiAgCQkJaWNl
X3RyYWNlKHR4X3RzdGFtcF9jb21wbGV0ZSwgc2tiLCBpZHgpOw0KPiArDQo+ICsJCQkvKiBDb3Vu
dCB0aGUgbnVtYmVyIG9mIFR4IHRpbWVzdGFtcHMgdGhhdA0KPiBzdWNjZWVkZWQgKi8NCj4gKwkJ
CXRzdGFtcF9nb29kKys7DQo+ICAJCX0NCj4gDQo+ICAJCXNrYl90c3RhbXBfdHgoc2tiLCAmc2ho
d3RzdGFtcHMpOw0KPiAgCQlkZXZfa2ZyZWVfc2tiX2FueShza2IpOw0KPiAgCX0NCj4gKw0KPiAr
CXBmLT5wdHAudHhfaHd0c3RhbXBfZ29vZCArPSB0c3RhbXBfZ29vZDsNCj4gIH0NCj4gDQo+ICAv
KioNCj4gDQo+IC0tDQo+IDIuNTEuMC5yYzEuMTk3Lmc2ZDk3NWU5NWM5ZDcNCg0KUmV2aWV3ZWQt
Ynk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
DQo=
