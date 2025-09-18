Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF81B83AB5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 11:03:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BF84414E9;
	Thu, 18 Sep 2025 09:03:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zPAvi-pqC6dM; Thu, 18 Sep 2025 09:03:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF34F4151C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758186194;
	bh=Qzo2JOjEqo57AL0CvMnxY391EJLdnHZoUWn1WjyKvE0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FRagSeBGouEIXfSzqQWTA1Rs1WOC4lPPgxDksbMe11pXGnpDYQmZYFiCguVPGGDQ8
	 bXLIqy3S9B++uj9V2YXoMQh/PDKjrf6bohkGjdyEPPUy+1376pqK7h8K3wnoUfrixL
	 aNPAQPOvwssvGVpTw4sHoMuW17tCrw4Q9/H4NpbLnATxpJW9RpW896yFmVkRSI2tqQ
	 iyFf26jTmSgpFbbQh/ppBOASMxOi314+fnTQ1JDHj2pnU7YcXJEzZz8pnBP7j2Ot8h
	 pbkMveKLDuLBqMsPgiVl6HUW2Yic1GyGRB73ROUMdvbbzZoLH3HBnhWR1P74RgwyVS
	 vDq26lV+8q6gA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF34F4151C;
	Thu, 18 Sep 2025 09:03:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F33F21E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 09:03:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA28E414D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 09:03:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2ZkiasQeqbzL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 09:03:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1F816414A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F816414A0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1F816414A0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 09:03:11 +0000 (UTC)
X-CSE-ConnectionGUID: 6+hUg3XuQ86d78+PV5XTEA==
X-CSE-MsgGUID: efCEItfnSDW65HPIO+hB/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="63136302"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="63136302"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:03:11 -0700
X-CSE-ConnectionGUID: fND/zSbAQ9Wx7m8XpGafEw==
X-CSE-MsgGUID: m2BxrOqySHuSpUb8pz3viw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="175559751"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:03:11 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:03:09 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 02:03:09 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.48) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:03:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sKPuCpeXatMqW7/e9YCfJXxIS+aw+bo9atVyiUfmGVIKDRHFC9JFDRVo4D7hwQwyzgYUX9vJODgM7D5T1rh5sXNNC9J+lXiny0toGQIJkqB15yPcFPao6tOM+8m0Bb7uMg0bsg3Zcla3nNRoby6jkcv6R5NP57YJoxflEnax5VGhunH0kuRkEYQtttdXMVwb4/vNwalhALTfZduMN1U80rBePahzb1vt8gKXrE31qPVWiHwYHkrHcbXLcPfkAFVwXXp5bv8TnJIL9kAcEWV0XVfEMRb3lmZObNvIn382G7glOhnlAcVmW3iZWlM6vAZBbvNI4v6kvLBiKy/K8w9G/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qzo2JOjEqo57AL0CvMnxY391EJLdnHZoUWn1WjyKvE0=;
 b=WbnUK8Zl7VNjrdOSIDDscCDnsV2OVz1z3KQ6rzmp1KLLC376mQViXu5PVY96glJZOGwHzvJUn+RKnqTXITo6alF4rT4h5wPDpW+VtloecnISCqN7YwMV0JJ1w/MztvRJavguAIcnFqZJp+A/Ft+35KWLY+pawbZYzSEs2trAOxvHvyIrlFlZllwrg5zB0Ay86XUrb9zg5TXKaBeJLY1ZqEwWdE/ZJZVNdXOs9+IyQfqhjrxdWRB2mdutw03nsMgt1qhbpntoOixwHf8DazHMG3+Wjwi9aTpO4EbXf54FWXJ7ZrPp3msr0cLZ8RsuzdyqaiCjz0rC1LvKgPdwxHHTMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by SJ0PR11MB5183.namprd11.prod.outlook.com (2603:10b6:a03:2d9::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Thu, 18 Sep
 2025 09:02:58 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9115.022; Thu, 18 Sep 2025
 09:02:58 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>, "Kyle,
 Jeremiah" <jeremiah.kyle@intel.com>, "Pepiak, Leszek"
 <leszek.pepiak@intel.com>, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 4/8] i40e: fix input validation
 logic for action_meta
Thread-Index: AQHcDD+EKjd8mViKX0mCTzJwy2cRKLR1NnaAgCOnCsA=
Date: Thu, 18 Sep 2025 09:02:58 +0000
Message-ID: <IA3PR11MB8985E3A7B7B77A93469FE1568F16A@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
 <20250813104552.61027-5-przemyslaw.kitszel@intel.com>
 <20250826163549.GI5892@horms.kernel.org>
In-Reply-To: <20250826163549.GI5892@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|SJ0PR11MB5183:EE_
x-ms-office365-filtering-correlation-id: d0434e8d-06c1-456f-1370-08ddf69229de
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?Lu2WVR5QkSIT1ZtNjP9DwWIQjK0ejj6UDnMu4uX1+X4ZKP7P7caXptJ/qdgI?=
 =?us-ascii?Q?teW0UsuQZfRDrWJkt7rN8W05sUANprVMw2cTnHPhvZZxDkmHtUQ4f34ebcMA?=
 =?us-ascii?Q?e0wWSYtkAu07fRXtJ+Ov23Vf+Yp6oa8RASUnnhrVkLx0bzgcVaBNgzux5yXx?=
 =?us-ascii?Q?3ZN/nAhrwcP8nqRAsdY85IZCwgtftTRK3CkIIWvMHwl7E52+3cbgOm+ybJSP?=
 =?us-ascii?Q?xw4JBe/UvWw1QV+STmIstKfIiNyMNYakMCspVYekVyDqmi9x6at3FIIgY5AQ?=
 =?us-ascii?Q?hfM09PLKXZCF2eWEhCygM15KrqbHp2pdz5aInlS8AAy7d7UzgOTMCB0tqwTv?=
 =?us-ascii?Q?Im/DwVUVLcd7yL/uGimYFuSWU0Kc7oOOROAfiaHqMEypl8blw9uJG+qZ8Ioj?=
 =?us-ascii?Q?b16RiACn1KIUmYPkqluKrcvUZhO19HxgcQBdhua9mOTsGGFRbIq5cH2FaRdo?=
 =?us-ascii?Q?NVOUC7TorSFnSLblaPqcNwkX/9Acw7MUqTq7jiGltyZ5DaSrdZelq8s6c5xH?=
 =?us-ascii?Q?BmvQkuRkBN+YhEcXHR2+ZI6+mMwF3b2gNxxDzhT4qLge9WbXJ0ln4x7fbWR+?=
 =?us-ascii?Q?Wa/PFj0hajjoPJwMp7i9kjEUeeg/aCj+TO+8KCd+AjgS5DDiGxD+fbsdWt5l?=
 =?us-ascii?Q?Hk43WYAPT8cHjZQ4VmHfEv/EGhB858aXNgf4mreTcxJMh/v8ExbWdNq3GukD?=
 =?us-ascii?Q?LTjV2KmE1VBtNAewd70/M5CUABJE4xasPeyT3izGfPJf3CsOwgdjFkNE94xX?=
 =?us-ascii?Q?FIrXEaAwxbj9q4eNnJKoCsQk9n0GhFBRrmnCTDbNi2otVFnxFhdwhXsgwZX1?=
 =?us-ascii?Q?VfBN+zXyy3LP2vHwutrJPh/tdcrcmabEo0khxDDuq2ivcZ+zhvITvqxaQgtD?=
 =?us-ascii?Q?CXS6NhIc/RHOT8xRGDRFOjtj7IISbpZo/t8BPt+JJkPGh59Q7VKBqj7f5UjZ?=
 =?us-ascii?Q?mVYxRUuob1fEUOLQlUdbPPZafWvADibZEYqPFAShSW6OnxnfidVVREDFFD/W?=
 =?us-ascii?Q?PNRYF26CH0Jovj2p0P04jj2WDZCNM4peArZj0o1h9bWLMzXCNJdiDjK8+qvo?=
 =?us-ascii?Q?i2vpI+CTQhiT79ulk9tv/fZ6S0s9FHcYF6PV2ETu4KgC5QN8Ecvx0aE46K6T?=
 =?us-ascii?Q?OoblBP+mLK+1cR29EbZJuvPXjFZCjZYz9THR4CAa9hkKnir4DKogcktpc+Zo?=
 =?us-ascii?Q?IkgHN+jWw84ZVTCQABgVWW15+jCE55f5KSKBfjlJCJEyI+xGeuvMNsrLiKNC?=
 =?us-ascii?Q?Nji8Z2j3p7AEGHvfTTWIaRCHhwwqEGZTkYhxmzX2TTb+KlqeKc8NlJLc6UX4?=
 =?us-ascii?Q?xYg8vR0upCLumB7GPwmqSGuj/AMpo6Q9RRNjK6PcSBH3udFOz+WCMCHOacjh?=
 =?us-ascii?Q?80U0YLgQjDUkVtzggdpzAP6MPJJzelWdRsxHATIkyJ6hJt/4TKWhgryrxTk7?=
 =?us-ascii?Q?ksrgMSBemxS/K2E1de7qUDwuaftnjBRAMHhy23d6NEj1+fRUE8egrg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5sQLPjgBVY3s9557SQ9/iA94K5u2X1BzhGra3HZhFisFzVpRXjtrBBEan7hp?=
 =?us-ascii?Q?PDuZtQWa4Oy0ITpHGf1waBvMDwnN2RSI6dvfynlmKW/FIi5WO+UqFcuTzYrz?=
 =?us-ascii?Q?gg3DD0z29nojCZrjjRVs5IAamUYGN9ScKJysOVw9hOGXWynA686Pb/a9bxxG?=
 =?us-ascii?Q?yxr66WSN4/fUrt7nFjZFHjGYag90juyHRmctDzKF1yoaK522d1ENUJdVH/M0?=
 =?us-ascii?Q?mWKG9GAgMqffqCMmgT3uvbBtRxU1a2MxriTkIPKmCMvAy2u6AYvfcp9/Q6M6?=
 =?us-ascii?Q?iwzzJeSI4mMOqpgPrQDYP/+U2CfoDpXScBy845qWB3S4qbHynLtsqJFvor3k?=
 =?us-ascii?Q?NAEzsDFF7f6eoLPjF0LIgcOJkAEVOeTmKHyPHtbu92ounjfUzm/A8Yp5sD4i?=
 =?us-ascii?Q?Mhfsj92VL5ueeR8jANDoKAJ6wAqGNkx6ZKbWyAA/d7MubxfVqc6VrbWmgUx+?=
 =?us-ascii?Q?gDs0GoW9ktMf6Hrb54TMnjqLuM71kXdGHnQua7x00b2j13fH3idQtHFuOb2Z?=
 =?us-ascii?Q?m48OuxRH/lLGAQn3mzKCtDLhN/NIv2kQ7mf5rT4uJneW/wpaamXaf7Dftbs8?=
 =?us-ascii?Q?t8xk7M5SVxlZ7GmCETJ4/Gl7ZKj9tehkCABuLQMWOeLwGpvgAGQZp5Gqn/pi?=
 =?us-ascii?Q?03HF62elOcmQNFchO1Y4TChR16F3D5eowFzR0QypLDpsmT103H92clHCtBdU?=
 =?us-ascii?Q?JRZUNmRDRplCH0QZExVf69RLD7IGzaoQ8ihnUvdAZgnusuG40OAh4ZxmOjMY?=
 =?us-ascii?Q?HyM74KfvUTXV8NUrt8MZ8Tb9TNuLgch7H1Uw41r5atZFvK6s1uopYPkdKtMf?=
 =?us-ascii?Q?9geXMjiT7/AeW6PggFxXvavSJc4njJlVMCaGEU0nrXu4QCzE3NqlhOdxo6IX?=
 =?us-ascii?Q?m2admAIp8fSeKKJo+GLt8+RZzekL0SUKFEbYTkelN+Qz/fYD5o5UHpDA+C6p?=
 =?us-ascii?Q?b9rjxaFNlJWUrer9PEy1z3+fGXBvaBlLQlEkJWMU/dlcWne2dTSfNDOt6Nt5?=
 =?us-ascii?Q?rm+Tb7PUISyeLgbJYDKx85aon+VNPWrRQDQdo++xNy0MNJEoLkzhyKjMI0dz?=
 =?us-ascii?Q?wPZDV6lXwM3nQ7aql6Fz/qU/2Io8B4BxxdJPDqYe342G1HQB2YTzfXWmU3uX?=
 =?us-ascii?Q?71jOJy34yCB4IjCTRnJ/nkTdNASOXfNuoyJPpC/RpUI/rP2c8mczqPDUUPF2?=
 =?us-ascii?Q?KHUG3bUnX83e7dXjMWE3jH+YUCRBnf/wVUNE9qTpYQTlHR/mYl+WIgq3mnHn?=
 =?us-ascii?Q?7am0rC8ejLsXebVoM//m0HrRrUgAzz8vQwFdQJseEqb8M47S3FioWu6xXkd5?=
 =?us-ascii?Q?2t1A+p3WzIUh7NYUL79kALlU/J4ri3f7NOFdyGB7y2msQMt5nifKnXer05gR?=
 =?us-ascii?Q?/AFY163GAUn13a+zo7vMVwp8joKMwJapKfSSK4DiP9H2byppsJHjZXvBCnjv?=
 =?us-ascii?Q?svSaTxq+VYr3B6kx9wZkKHJiW3sD3Bcj0kevDXJVxnhQzb7KhIY4G49XbkSL?=
 =?us-ascii?Q?klChE0HBOpWTY9+n9YodRH5z9+3y/VFwx4rmxRhsqbm1FjRBGBCMbRUB4/oM?=
 =?us-ascii?Q?21mfmefoOStgLQqS24cMhO8H1IigRtGysPtH99GqYLtonBot7R5uWay8MU6I?=
 =?us-ascii?Q?Xg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0434e8d-06c1-456f-1370-08ddf69229de
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2025 09:02:58.4464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M4/iVpHz7oaktyfIqyzJ51qO32AbeD2H8P41t4zI0waiVmmTzkssNWASOEvncFmzg3J7HojXTzpjoPUghKqZ98UXMNY41jtOKsApjnziwIg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5183
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758186192; x=1789722192;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Qzo2JOjEqo57AL0CvMnxY391EJLdnHZoUWn1WjyKvE0=;
 b=hLvqR0ecII3rMzeSbpf8DeBeCNJjhpqa2L0P9EAUwOiNITFowI527rMR
 uINlXiE3QmbFFfRTtuzGZ4bCYnO4Cyc2Bjg/+F4H5VXPmc+kN3xG9sxJG
 ol1vogA3nUq00+xDzHfryjY1s9JOzlyaarWl+jy0OKCuM8ntOqFAof248
 YR/55AOeoddJ6qlhaMWJ+aLHBoUucMSzoidDqK317vynMNgfvDT8Ol4wt
 6QQyYU+2Mqkt12zxhVtrfrX/lzuL8f8J5fF/taeB8AZr/agDstBMKV1rh
 s7u9KqCBIcavkL5689WE6jQL545x7qimyHBehxZgzpHRhqypkWJHDny4J
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hLvqR0ec
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 4/8] i40e: fix input
 validation logic for action_meta
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Tuesday, August 26, 2025 6:36 PM
> To: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Greg KH
> <gregkh@linuxfoundation.org>; Kyle, Jeremiah <jeremiah.kyle@intel.com>;
> Pepiak, Leszek <leszek.pepiak@intel.com>; Czapnik, Lukasz
> <lukasz.czapnik@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net 4/8] i40e: fix input valida=
tion
> logic for action_meta
>=20
> On Wed, Aug 13, 2025 at 12:45:14PM +0200, Przemek Kitszel wrote:
> > From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> >
> > Fix condition to check 'greater or equal' to prevent OOB dereference.
> >
> > Fixes: e284fc280473 ("i40e: Add and delete cloud filter")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


