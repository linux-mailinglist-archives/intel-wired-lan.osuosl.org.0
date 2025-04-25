Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C0AA9CF05
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Apr 2025 18:57:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D0CF82060;
	Fri, 25 Apr 2025 16:57:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tk2MD3-8CVWp; Fri, 25 Apr 2025 16:57:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0283781FF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745600251;
	bh=VRtvbGhf3pNdC6GCtHZASUjI2Do1d0yk8B7B1wNRUX4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4jiM85TjfH9PtDBimTH0VxJYJImWrwuVQKEFhRyocSkJ8FvELQQKAwt6qPYY1Jnf0
	 xDNqIFjUQRvYi2nwUDDlZ3arP/SuN3nPlAaCUyzx8ykywHwkxbLx/Gs2rorcFhd5SW
	 CCho2/0xGt4oG0wZfCyZ8+KOtSB99LsqzNy5rM9eAORWUQac1dR0oF1l5Djd1dJA/Z
	 hbiLPL3SN1EW4gtMjycSXjI8TKPp8PMj6KBYuc7ublcF9tlfXbiuwBk1cDDmN8b8sJ
	 VFelVexIvikBzkayp9Q8eC80k3PSbgkdWVUfvmc/zpZsyKy6YWZa/iVoPhzoLQMKxL
	 RgzhSfT6anL9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0283781FF3;
	Fri, 25 Apr 2025 16:57:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4821631
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 16:57:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E2E381F38
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 16:57:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nChntwz1N7hD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Apr 2025 16:57:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8FB4781FAB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FB4781FAB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8FB4781FAB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 16:57:28 +0000 (UTC)
X-CSE-ConnectionGUID: YdUoJojdQ1W2N9qkNyDDpg==
X-CSE-MsgGUID: WfEA7Pu7RhyUN2JAn65MJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11414"; a="50937442"
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="50937442"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 09:57:28 -0700
X-CSE-ConnectionGUID: S32gutcAREiEVrcv1ZoOjw==
X-CSE-MsgGUID: ZdhyEWB1R4+ayj6XTxKhsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="133450797"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 09:57:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 25 Apr 2025 09:57:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 25 Apr 2025 09:57:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 25 Apr 2025 09:57:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QLvOgT0E4fqO+R93y8lyqWgpHF/MMhyXV8LywUPx+WbIaStNHMlSSktusM8HwavwtUbDhjMBuwZgATLreugXFUf8B+s6ZIPnXhObpoQ1zBFZV16pm/hQ79suVw1K5dJr1ULrtdLfgDlAIqRsoUq+0Edr8eiw2xF9U/h78rPiUqyYSpADDmu2xq8cqNThoOkr3JECOkCFUSvz74nlpzfJ02dByr0H5mJM55Nhr+oLJthnHrh4AxR5Z1lQDKRqbaHXh5/G9KYqC49DqhNNl24BPfDYrFwGTgL4KMNgjqMGgVv9Saxwu9UfJ8+IDxv0aQaCpRd1zhxz10HM2CMIGQiXwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VRtvbGhf3pNdC6GCtHZASUjI2Do1d0yk8B7B1wNRUX4=;
 b=v8Yix8KjLuD/CTMdIF1PtqmVCfbnYKuAMmTA+aMWLoGIPqnuDpuqoZRzJWwZKJFe13W86/ElR6vBd4UIzHbyY5wP1XQ9YrcYWa79KQJ5OTos2BoQ/A4BihmtrV3Emi+zGNUTxooBcQoEnE5oQzghgL4s10MgJYUe7M5EQwCcNGPwuCbFpkxcZRUNTVgy4gwuTlj4NGwItRleLERL0LufUvKGMGHSKUNAcCya39TxMV7hIqTOd2lCJTSAQEecNYxHCB2HXRt9X8s+Ypoen+Edt/Sh7viffquHCWusv3PtXUx8ZqmXwKAf/cBoRzQAUo3iCefEzrNo1GeGkfAk3m8qvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by MW4PR11MB6983.namprd11.prod.outlook.com (2603:10b6:303:226::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.27; Fri, 25 Apr
 2025 16:56:56 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%3]) with mapi id 15.20.8678.025; Fri, 25 Apr 2025
 16:56:56 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Olech, Milena" <milena.olech@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v12 iwl-next 07/11] idpf: add cross
 timestamping
Thread-Index: AQHbrsuaSND50ibbq0KbgiUpTWpXh7O0qEGw
Date: Fri, 25 Apr 2025 16:56:56 +0000
Message-ID: <SJ1PR11MB6297F9946CEF9C9871FF391B9B842@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250416122142.86176-2-milena.olech@intel.com>
 <20250416122142.86176-18-milena.olech@intel.com>
In-Reply-To: <20250416122142.86176-18-milena.olech@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|MW4PR11MB6983:EE_
x-ms-office365-filtering-correlation-id: 8c71cc31-619e-4522-7881-08dd841a2fce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?VRG4wzhQpihD6XCBgkO0CtzbJjVby92aHOnFJjMNzHm5ruBuSuFNhHAnIAti?=
 =?us-ascii?Q?OGTeAZYe3VMUCNqrZ3vk1sSHT1sybmsIpETiHgoc32RRzSzDs9IyTJX3ugL0?=
 =?us-ascii?Q?NVd+tM4xHPK2I2hkOYPVHaUgNF/NqQs4zwtk+wZDGAL5d4XwjO3P5jPg5xwW?=
 =?us-ascii?Q?Cr0QTAH3AmIeW6Yxa0qZNR1c3+2q+18wKPwYMeCMtuLekEIz/0Ug9JVzBfKF?=
 =?us-ascii?Q?b2PEVNfev/Z03x2opYMl4riGPF+eeH+yxnxgHw6X/9mm3umnCi5ZQGE1hdU1?=
 =?us-ascii?Q?2wIe4gpa7U+QWHLesIucfVVKzX6Yx/jv51oaVSKGeEG0NWPfNSlAJamR3/C8?=
 =?us-ascii?Q?aZ2I5CkMmVs06CyiC9soWPaTaoGWQbAl5t89jmipYSW8O9RLfQTKLwCP6JdX?=
 =?us-ascii?Q?Mg0bnQmE1U5rWwswwn7fg8hXpO0lPwOAn5VjvgrHuCagzVQCpfqk4VcPpmly?=
 =?us-ascii?Q?Za7rnUzZTxCWSe3uBOXSAnBttJgVa2KUq2o8Xy7ZXdGoVVdHsCWNT5uExP5U?=
 =?us-ascii?Q?8wm7YxcmAW/WjqgM7cSA2S8v1lKxL4CbkXWVS57s32A3HMmIerfUvVV35E0n?=
 =?us-ascii?Q?SAKX3xUbcHX4iBLHRSwh62c3eqZljytY17syxwBiVpCL7syxV5rmlhUTQ26R?=
 =?us-ascii?Q?58G7eIkEOrUEj3GOM7z3muI6f8+BKo14mR7Om7ppeWrADIIJQEJ2yC1VCVcU?=
 =?us-ascii?Q?vz8BYS05QFfwNornOtNwrCWrnuq2T+N3pdOZ4Wa8QHor81DX0wejnnZle0ic?=
 =?us-ascii?Q?bj9ozwW6KmJEUvjQNjQLhCiIFDNWiz216ycgurMLmKsR1nVS98QV7Cd9ixig?=
 =?us-ascii?Q?K3M/zwFmTil3+QUvlGdD0N2MUdbhhqkg+fpEzLYJDR2OYlw2laLFh2riaBgB?=
 =?us-ascii?Q?Ti2CY6UnH0BMn46g2tNZyYNuV2MRtVeKeRxUm3qkjsOJ1dJSbGC/as/cQmyw?=
 =?us-ascii?Q?C+qLVgAspw2Gs8x7M0j0Goek4kv+q4ISJrkkFXDkhEjwqc4DAUoyWjx+JdRF?=
 =?us-ascii?Q?FdMczBLMIpS4gaHwWnggzNfpNzDJq5oX2JCVzX9rUavtxSlhY6LBWUQeTCO7?=
 =?us-ascii?Q?3cixVw0TNFnnMWiPiPDCPAPxvy5C3NSO8NS00+h3ie8p40fk7yi4e7V0z2jM?=
 =?us-ascii?Q?9F1ruRPiYKzFekZEsfDpVojUn5gal4iI6TQpN24szmhbl8pFuAIx0BBx5/Xw?=
 =?us-ascii?Q?q1bYt7R0jM7dFHebfZCa2dfF26sjSdRVQZl69MMDa52bu+Ms9IxbfmZitEPQ?=
 =?us-ascii?Q?ehzr4Y56chRUGnvnZOE8QDWVcaivkBLp3Woc8NyXiU/2I+qmO5Q6d+b3NsxQ?=
 =?us-ascii?Q?jNHWn/aKr/CaJIom0pZTYyRHZ+9B4v3MV2LFszS9zqXH089Lcv1y0CMaGoUL?=
 =?us-ascii?Q?EvQWoRsPj+54OGZUcIuxXW+un6dBsF4cC22RfBL5UfYfk5lK6ZBU5qH64cfw?=
 =?us-ascii?Q?CeUm7HQe4C1mjL0Hb0rKYhRPrAybeRRREVi9fg91ahXwap3Ya99Qv5Sv/wkX?=
 =?us-ascii?Q?wnEQZOxgIs+DixY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8vXpVD+5bCTDfK4+0k0nF0z2yjou4f8h7aooKTWkGsQA/vkNVJ+/oAZaTaP4?=
 =?us-ascii?Q?j/KEbpuScZDQz0XT0vOkK4UksyVWlQUEZ+TzCk7UWy7eWchUMdBXFC5L2k0J?=
 =?us-ascii?Q?CjZMalMQMtk6m2Fgw12cDopJ19QkOqtzJljxg7G2tDXPgeNznb8tolCQ02YE?=
 =?us-ascii?Q?wjkdzlgScKgtoJ72AI3Fa8TKqEtpu63+f8Qxay6NTQ5QGrPufT+3ItJz8r7J?=
 =?us-ascii?Q?d/QyeyFwimXr79/Rh1b0bcoIhpxijS1b886JhCXFoZ5ISDoVVUBPb2EWkLBv?=
 =?us-ascii?Q?80e54eEdcUd7TSPKorBce0eAFN2T1jDGNaBTZw1ifCdRrVw/aiSgughxyoqk?=
 =?us-ascii?Q?v5mSYHInzowzI8BC+ETrIAW5xnaBPZ2N+I6ExGPtnQLSWFPzH7Ew9hLwsJ4N?=
 =?us-ascii?Q?V5zyzhcZcDn6n/V8H6DFnuO6gQWLdlMKiPMJ8H5kr2qOsWK5echnDU3rxQep?=
 =?us-ascii?Q?17gB0b0ZhBL6O4W6jac74x7ycy26KSEVQkHp5vfL0h3sC5eEynGSm/uKOus9?=
 =?us-ascii?Q?BHXrBhYu98Yvl/4RKEl0O0Bmw+BaWgNFuiG2F7T0ogZTUuPZzdbSCUOvxWqL?=
 =?us-ascii?Q?UdXbkzPpcQ1QuyTOf4XrbI/lwrrk2880xdMMhwcAJaxreaqOu9s4MQD6DP7p?=
 =?us-ascii?Q?9u80msoxRzmXZqwrvM31lzIviUkmRFindFWTwiQ2/brM7DCjd60VUBYR6EgK?=
 =?us-ascii?Q?VP8vbhA91q6EBJnNvmNBulqxuV+r8OkJ82tvztA/R2tzOCpFb2/cDm6i6oou?=
 =?us-ascii?Q?aYQCBTlnnt4evNCK58VnLqQMeK6Wbn+VIGF1wJQT+weDmFfaelpepBG3ZA1a?=
 =?us-ascii?Q?4ln0uR8w1afPu0T7XxN1sBi/ryJPW+RZMYjpfXQhwrbtxxMgFsI/STGkbpdz?=
 =?us-ascii?Q?JN1K0OKKJ08lp7in/DI4rK5Bdlu21YDCJhS1EcPjZEv48eARsoGsd7HbtYee?=
 =?us-ascii?Q?qKxIFi7nuTxQO4pCg6arz3wLBoBH0FvDNb2wKBA105ULzZ+WoMlHdwRP/str?=
 =?us-ascii?Q?nHGrvxfc5ZCOj2r1ZI5ZfVD5zCUvjwhW8bF1/bxOIfpgASeJpOIeIPufGm3E?=
 =?us-ascii?Q?W+VE0DpXzPi8j4e8kApa4GMpmOUrHGBSgMS+ymso/v6DAGJgj6on2CpKzplD?=
 =?us-ascii?Q?RrYlleJEki6fAONV6dy7BKmZUCWGWzS5mU3oeEXPj+wKNiEknewJQ+lrmdlZ?=
 =?us-ascii?Q?2X1xMZftCdQGFFxfo6dRPu3oGsab+ItD7l9uZyLuCcON7fT8HwSIe3H8leAt?=
 =?us-ascii?Q?1qPSUyUnZwc5mVIXAqpsNufdFkyV3/JG/GzE7gWL2vwj1Dsn5NaFuvYNCwP/?=
 =?us-ascii?Q?KnI64YNlcmYLMaSyQQYAz1yPh71n2xZGKVJggs+HdYMHcXRq0C1EzQ1eb5VB?=
 =?us-ascii?Q?/1pI5pOyZOydUk14MX+Ik/xAiNCT4DHjPddc/3Oigl6pCFR9ecRFvD8wOOnH?=
 =?us-ascii?Q?m2CxT6beNlFF1QMF1p9x5juvQOS5W9K66tSfw5njBfD4gkqdo7t8Y6zLw/1k?=
 =?us-ascii?Q?lo/O/pMqqrMMc32MsyYGQx6P4Gs2Yt+UBjMx9mP68CPMKyefv5tPbZedbhMX?=
 =?us-ascii?Q?CIBw/YgSutJiZjy1Wp3PknS/yM6KN2k0luzwK7B0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c71cc31-619e-4522-7881-08dd841a2fce
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2025 16:56:56.1949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ezJdglN+JccDWhczH6tHDBGCV0YJTt9pWnZ69n3TH9IQ9PVJFSsiRy+58FNJBcLKM9zfQyqyNQqsp8vILWUthw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6983
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745600249; x=1777136249;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VRtvbGhf3pNdC6GCtHZASUjI2Do1d0yk8B7B1wNRUX4=;
 b=fG6UBO9AMWCevblnODs3tCSLbknsZO+J5RAcEu6xTgf1XJYwAig/Tf19
 4N3cTvJloaSSjARhtFPVCKHLeu2GR9lLwXkeaDfnU+X3tWIjPU45sXCbv
 xCTagwjdXADI2ueAMjRC/dexUEYHbR4oSQh/+plfBJqFc60439fH9P42F
 i68z8tWSL5ky1btsqihxNzaHAFcb2tCMsXmIkFdMAIg777zBNma/KH8CP
 iR+5KmrGRHOM3SRwmxbgGvOmOpUcTyYBdSro/6YZM1Bg4sSK6q9xEjTjK
 XWwGbnlk/fcRrjlPaWb9whg1mbYhMe95IpTxYIcXhHhy7yKJSf+N3TzFY
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fG6UBO9A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v12 iwl-next 07/11] idpf: add cross
 timestamping
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
> Milena Olech
> Sent: Wednesday, April 16, 2025 5:19 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Olech, Milena <milena.olech@intel.com>;
> Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH v12 iwl-next 07/11] idpf: add cross
> timestamping
>=20
> Add cross timestamp support through virtchnl mailbox messages and directl=
y,
> through PCIe BAR registers. Cross timestamping assumes that both system
> time and device clock time values are cached simultaneously, what is trig=
gered
> by HW. Feature is enabled for both ARM and x86 archs.
>=20
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
> 2.43.5

Tested-by: Samuel Salin <Samuel.salin@intel.com>
