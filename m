Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gCD+KKcATWpAtQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 15:35:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F04EB71BFA1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 15:35:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=A3fjiHer;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A36B960641;
	Tue,  7 Jul 2026 13:35:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qyx7ozhs3GhT; Tue,  7 Jul 2026 13:35:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C93A60603
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783431333;
	bh=0bMNTRXsAmRnY3tN1LYCv4Y1fhFDXIkW68d3LT5Fv5o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=A3fjiHerwNn/TyzWyB1obGtTQ6rsWJ+wNUbnhr0MgE5x9PaIJhklmlDTWHQh/+Wwg
	 iwx4/nkn9vgoH3xpHV3GSf8fmhbe/EMmeqN30kvAkqCL5aLxEz1B2ITyLTaIhiVo3t
	 bazDkEYtQmsqFvl6SkmNvTHXVP02OZfWdY8Jygjlx5+Rvr2dOv/ByOmwmn+Y0ORL6u
	 27FbOegv6zKQ5Mh+DwcbZo/SorqUyGXzGf7jJmtcklctm+sHAAu7BOE3EXL+/smYOZ
	 Tf2xISRCDTB2IcES+y2BMxigoXShd/uB92EDNuS1DhKndFqCIWOijq3TpLOl42mz8Y
	 f8DP+Sqz1GsNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C93A60603;
	Tue,  7 Jul 2026 13:35:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C80E033A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AD9AE80E61
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:35:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 76fiGp-TEG9l for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jul 2026 13:35:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2E1D480E60
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E1D480E60
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E1D480E60
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:35:29 +0000 (UTC)
X-CSE-ConnectionGUID: lPfAigGiQOasG295FYqaSg==
X-CSE-MsgGUID: rv+YLYb+TAeZMXFZOhb5oA==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="83949606"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="83949606"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 06:35:29 -0700
X-CSE-ConnectionGUID: Vaaj4b6BT5uOjnC5is3k8Q==
X-CSE-MsgGUID: 6bBN0vB0QkmMDOR7vl9T+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="258905241"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 06:35:29 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 06:35:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 7 Jul 2026 06:35:29 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.18) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 06:35:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qRKApamDkBVdGX2xNo7+iTzgv3Z++0lp0DBm1cJPZnoWa1dBV8NXVL9uOClE7LmL9pAR69KMcCiKg4Q1dJysdAKkPTSXvNSjCBaYq9gUMgIF+NmBXmaI2JClJunBWeRjqcTEGwnLev2uMK2THWrMxMabiXmJdEsBlqwre+0YG/VRNF27rxC/tytP1nGiNXHhIgvkBAWsISr52lidIGpstX0iltymuxVBQkXq9PTbbJUTb7G4GKrqw8T3MiTkiWlHqCcE0EYcOQNQ/ul/h3uUzCqJYoKhu8B/Reiox5Bo634cVV1bOAY+KNk28h7vO1bcke5B2SZlLZDJ4JD2UfRKIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0bMNTRXsAmRnY3tN1LYCv4Y1fhFDXIkW68d3LT5Fv5o=;
 b=n6VImUvmPvQRY0baGU6mNe+aURzQILNq1uo/tqDhdumRt8pBXCg/Wpz9Ad1oOhn5neaTL/ebb7czCGLHe/vcXWAnY/GFR5o16AoxM92KXU+2XgxTUaFTX76hYCGZWuAZM53rPAnsexO1Ie7VFsk0YH0wsuR6/ZiWCxZe4jk7s2PZCONin1ZfHy2sMjnQ3GhrD8l7K3f4rqWKGAvda44wDQpNe9ozlrkwioEXxR9gT6t42Rce8U7CaDVj4kNSks82hIsrAIxCBuAcDf9sIT4D8cliY8qBUUZj7/lGqTXwEaEk4X1kZuHJrc5twmrNdZAi7+GkfMY4BHwk/jmmj01etQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB9873.namprd11.prod.outlook.com (2603:10b6:806:4d9::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Tue, 7 Jul
 2026 13:35:15 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 13:35:15 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 6/6] ixgbe: take rtnl lock
 before ixgbe_reset() is called
Thread-Index: AQHdCgYm8sxSufcHKUudvrwM/almebZiFsiw
Date: Tue, 7 Jul 2026 13:35:15 +0000
Message-ID: <IA3PR11MB8986CD20306C13DF2C48FF48E5F02@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260702091553.57112-1-jedrzej.jagielski@intel.com>
 <20260702091553.57112-7-jedrzej.jagielski@intel.com>
In-Reply-To: <20260702091553.57112-7-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB9873:EE_
x-ms-office365-filtering-correlation-id: ac31e592-e2a6-4dd4-1116-08dedc2c944d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|38070700021|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: te/W7httmOzFAWLjLIqw7Y3ugNYL7hUoOnfkIXMSrlSr2MrnrC1HpSJ55a54YV6eVpin9BziMkqqxW9N80ULHT+vRdUefZlhl/hdkuas9IdDl+5xpQKDsUAf2XRT8Z5J4ux2/93o7cly/Si/3nc+y1lCHewAZWaSzUFbn+x2ZjN3x8P2ZSzgNqj1/PQbHH3VcFy+LGIVtOF6hpoS5/efkdUF11tSLJX1idGXDtqDdcIeHMk2uiFqf2nTtoKMGw2K/YsO+cewfGaQpSx6LOYNyZmvZIUPAJjNf8ROEZmqsxyxh2PLgfOPsXoH+5X2TciTq13bhfBFwjF1Ht0irLoZ0s+3vi5jZ+mOcdjq/fGWtqGVIxOWsFAuoXFTFTLFGr8Ff7Q2pdIlbZH+NsLgMyEkB1GDUqa1i5GBnCpeGo84MtivGFgsCuKarWxh+xDVGyIB0BqJZJsf6b1wTzbTlSYk/cOvaiDvxssHvwA5Pi/JwsC3AC14rOoIHKuVf1Dqk4ct1IOjEBt6iu6G6pmyxFPHCo8FDHBTrY0F/rTu+fW//PiEKLsqqRqjI6B79R9unW2fGZk6qYva+dNP4L8zT3MLUYsyJdEOAZlwctz66pajHuVa8iSJO3qL9oI2pKLs8CtbJC8FMTTfL9BPdF0xkK9tB7zRy4sSz2r1jRg3aGBFuhic6GteprIL9aVmrJmWXAMMWIqp59taNcPaGRR51RW0AbPwQ5cte0cRFL16R/WIVU4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(38070700021)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i+00dqForoQocDiRUesuebyE8KVZDrxEtRE61CSiRCG6YoPJji2yk0l6fMlO?=
 =?us-ascii?Q?N8vZFXFBoEXy8Gkn2YXD7Gq5FjgUFWcbreFltAbbNTrTtZUlf/0YJDh3jpve?=
 =?us-ascii?Q?ecLA5Bl7Ex0u7l/JslLP52jcHv4G4R9o1GU4uq4nfS4hJ82mDT9HkzLLNog4?=
 =?us-ascii?Q?jCUo6MZa8XU2Pzyz59QvZtsX73zW4Smsv8D4OwyI+7If9UI6upM9yl9ekq22?=
 =?us-ascii?Q?Jt6mO/tlfMOquX3PqRnraT6DuiNg7c9ACvH0uyNc4GCKNLarfMgdHJ+tNcCd?=
 =?us-ascii?Q?mglHVsHCDH7O+BkPSPxiJQIuRdvslYtLJwigy/6Hf0Zdy5bm5UlxA5kYWbZZ?=
 =?us-ascii?Q?gf8C7pr3mKfoIgKK8uoCMF0KFvBN7gwy4NC25H3M1BMz4KViXUl5PlLPicXH?=
 =?us-ascii?Q?gyUVgPkjrMr3DY6Rpv/7thdb+wjHXtkAIVdX1iUC1E0Bmqd8ALyGwVbDhhG8?=
 =?us-ascii?Q?lPmAqY82/WfFNNg0sR4zHjyujuambGfPfMvggCBQdYeoGWCpdGvtAIOEVP+3?=
 =?us-ascii?Q?ujBaGzF0c9imhLvnrmhaEQ9OXeSgwgoodouIfAbPmL8VrhkBZWuXCREZsa1M?=
 =?us-ascii?Q?htri5z9C7GKh5GSkEyRF08Tkoc1FACg4C/WKbAgivpMO4LL6Wz0Pwo6XiK+i?=
 =?us-ascii?Q?Ea2KNbSaiE7+YKW8oH4mBcppE1uYCpdv5cC78+IWpWzWXvAsl49bjbopEU1k?=
 =?us-ascii?Q?bcy/erMqX7PZ8Ml8/1tXX1k09NiRQJYgQ/lF/hBT0Kx2Zz5nnP/aibQw8opj?=
 =?us-ascii?Q?6MQ4Xc81iINb4hgLpOenmr544QEjwBbl7KVZmDDCAI06GJMQGUAJJHB6+KHe?=
 =?us-ascii?Q?Vm+qMTdUbsctSZhFFHT9WVz6+gzZOE5Al4kuKYQi1SBiKv39AJi3QrQ3Qjez?=
 =?us-ascii?Q?DEEOWLn8IVw3IO4CvqglfWwHrSA9tOsiucOCbJCgjGzsTXLrFY1wHkNYNfb5?=
 =?us-ascii?Q?flL8fxkBKozQrawfe9QhTIGvlY0SsYQfq9bn8tzHGx+oUXMSNYBgCJMP/ryR?=
 =?us-ascii?Q?TU3I1u6sr0ltlWPS0+39I3FhVlwqnbm4nAOBJVCZGENXhvIImRq0z5xpcTaO?=
 =?us-ascii?Q?N/x0t1yPjmsz+GcC55ZomSllJ6W5lwcSK/I3eqijNTtDiuaAx4AzpV/kR/ka?=
 =?us-ascii?Q?CS5vmOx+eB4q5n8Z77A82sZI5jlEC2XMkS+47Lr8nPK1hTHiH8TrCF2y/4cg?=
 =?us-ascii?Q?asgD1zDl/g5Z5Im8rbX0DCVkBRmdy2co3WV0TtEVDz9eo0wwLDbPTcZXHFyi?=
 =?us-ascii?Q?rYNELj3b6OHKpACaMa9cXeGL1h7abxise0itJXxFZoMwTmvSufynVOPmTFFt?=
 =?us-ascii?Q?4htz/xh6NTfwRNjWssufqrpchdbR21OOyPE19d7jeUqFOPsquwoU5JBfR87h?=
 =?us-ascii?Q?zJL98wmsEoIoG2E2ZhSOspMjVbajGL3ixwRXWdph5RyjHJOqU1qDJ6//5zfI?=
 =?us-ascii?Q?dzLbBUnD30KTYuOOA5mfPrIMXvcqUdTUIsc7gLPGtvCLvN8oarCbRohz9Bo8?=
 =?us-ascii?Q?wb47CvWbOlNygrMNj469ExKTbdzkKbNCIlgi+DHEQ9iMDWuTamb8of6PThTC?=
 =?us-ascii?Q?X7UTMi8W7OLSEZAox9haYs7zozy3CitRmyeEn5QXJuEUxTE5Q4MZLptFafiY?=
 =?us-ascii?Q?8Y4h7Fp70bfwh5A9Zh5ty8GJ1UYr66k6emVAIwVCwQ7DcwZRwE0VBF2FqfNi?=
 =?us-ascii?Q?DjpRHaDVnRxdVGQlf71L6H8pVuwleTpsOlJDwGfYLyyBhH0Zc7atmOY2mfVv?=
 =?us-ascii?Q?6dY05HKmT/wdCJ3wa8aLZ1gKu6t/cts=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: a/oAkXexmBbUSmfmcaJ+5UD+cicZAereloDO5YWJhW0nIqYF8vTLoKsJOzfHRediLRaDc+6BWnDQX9jTx3XkWn9cvisFqZon/0N9fLYxnhCLg/OTo3VpDzp0vlyCLVb0YDCnb8DD4rFWf0NcYqMcMMrAvUzwJ9DprcyddtbGnhRWvXe8WZ7/4sm5ik5SMhyuTc1ctQEZVZS92W3oD0d16853OjO246OTSahqiWTzncFnXJuSzF7o6vKrY9wZctxScUXtoaHPNS0AaZR/YrR8hKrpFBPEboW/23Reus0uBWyXdq7h+YDe0zkXZVceio1EwCnhnC5EeFSaEM2R+21b3A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac31e592-e2a6-4dd4-1116-08dedc2c944d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2026 13:35:15.7400 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9HU6Qn1bkJmtzurhp/OXtUDqZojVki5JJeDBnj5pBLWZ8ubxHUsPQNpyxA01RhN3kfyfwYbe1jPyx3fHWVZhtalu0LTcSvH+pHjbp6s7e4M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB9873
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783431330; x=1814967330;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9ITjxjOkNtSsh1551cXB6Fwfwk6qDg4dn5CMnkSgTYY=;
 b=m6nbqvNRLc6IbKX6+ApqUosAER2AS4vkHMXST0KYDViJKHAOp2fO+mau
 2KClMgyzeQo9B79kHrWdWQwTUDZ69asxwAUZ/qbnF0y/83kyeZBmCJe2E
 JFXYFFxLu/WNOqp3ttOT77VWNm+QNAaaNVg2ru3BSbrnhZg+sg5oJkVet
 xaUhSrI8xqGju/qC3h7JzWTa7ndHHpSDlptzFAD3+xgyBuiChMngHzDTL
 FAIpCnfqSv4RTNtxAntca97s1sphO/w8oV891kOrS3AyGllGlg8ti2dxq
 TT/RQWGgDi0nCcn/9ZgHpoyS7sw8vdKCj3q+jeRIyZGG83ER05uQuhMHo
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=m6nbqvNR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 6/6] ixgbe: take rtnl lock
 before ixgbe_reset() is called
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:from_smtp,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F04EB71BFA1



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Jedrzej Jagielski
> Sent: Thursday, July 2, 2026 11:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 6/6] ixgbe: take rtnl
> lock before ixgbe_reset() is called
>=20
> Previous commit introduced ixgbe_mac_addr_refresh which touches netdev
> struct by updating mac addr. It should operate after taking rtnl lock.
> One of the callers is ixgbe_reset(). Most of scenarios when
> ixgbe_reset() is called met taking lock requirement, but there is a
> ixgbe_resume() path which calls ixgbe_reset() ->
> ixgbe_mac_addr_refresh() without taking the lock. So there is a risk
> of race.
>=20
> Move rtnl_lock() before ixgbe_reset() is called.
>=20
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index ce2b1e208c0f..c7261eb0e9b0 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -7574,11 +7574,11 @@ static int ixgbe_resume(struct device *dev_d)
>=20
>  	device_wakeup_disable(dev_d);
>=20
> +	rtnl_lock();
>  	ixgbe_reset(adapter);
>=20
>  	IXGBE_WRITE_REG(&adapter->hw, IXGBE_WUS, ~0);
>=20
> -	rtnl_lock();
>  	err =3D ixgbe_init_interrupt_scheme(adapter);
>  	if (!err && netif_running(netdev))
>  		err =3D ixgbe_open(netdev);
> --
> 2.31.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
