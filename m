Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 385A69BB20A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 12:01:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 761BF80F3C;
	Mon,  4 Nov 2024 11:01:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 06iyy7vharAu; Mon,  4 Nov 2024 11:01:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A199280F49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730718073;
	bh=rYyjQDd2q3sgrXqyyL6XQ79kK8VIA9vDmIgTzhoJsFY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Mn8MQFD3NopEMt0bChtNqttC1sR73OSlTCKXmK5Az0fikWqfnrUF78UUGbqrD517d
	 XhfWY6ffkWKyOarRnF8ooa4HmynZ20bx9QtZR9fF2R1EH7wJuVvogWXWecAMThykl+
	 FBPZAYBxwZHAchONQmhy74bmI3yoLs1yncaP0CWWVPe6NGbSFlFktLbizZR4M8O+BL
	 rgKVoXVRYn96JevTxtAtV8t9Ob1xDkvlMYEOlXb1NtNf+HPojkBliwDVy8FERglHC0
	 xLhthLkfAlziiYKu5wMmU38Qakgzk59dbuOUFw55MO4G/DXutU2HNaJ1DqS/Em3yG/
	 5ZmH/bUTWUDbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A199280F49;
	Mon,  4 Nov 2024 11:01:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 50782723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:01:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B62D60725
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:01:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CdJNZfR_xUJO for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 11:01:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 62B1E60722
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62B1E60722
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 62B1E60722
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:01:10 +0000 (UTC)
X-CSE-ConnectionGUID: WjG6tHfNQtmuixYkkMw6VQ==
X-CSE-MsgGUID: UeBxNx88Tl+nnA3KuPiEIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30585572"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30585572"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 03:01:10 -0800
X-CSE-ConnectionGUID: OBH3Qb/FQYWXr5n62IXtaQ==
X-CSE-MsgGUID: d9JYbYgqSp2ldt7bKbprog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="114406600"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 03:01:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 03:01:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 03:01:09 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 03:01:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cf4ZZtU3tmLniWT5S9+ZhWXXrA4OHeHzUs/uJ8ygrI5v7D7EllwaK9XCPpUfOxIL3/ZJTHyxG0+wZ9fOGIoOqXXFKLnZrdtjAoTvLLV/wxpWzzIDW+rkDCxX9vUXFtq1VjlT52dPA1Pjoe5q1WNEGEXOhBBnWq3v0ZuPrlDWsCxnNX3fWn+7jy9fnqTGe6NlGVa1l4hfEL0ok6otp/4ZUm3YiNyMqmdykX+lptK2XIx3Zyf1i+F+okjeB22YDkxIXduqQJhriNha5wSGb6Gl01CGBjuqWElCFI2RZNGSMKR+2GGGFBMab7qHpghsyo4lcBYhgL76lmWewwmPoCdHlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rYyjQDd2q3sgrXqyyL6XQ79kK8VIA9vDmIgTzhoJsFY=;
 b=vkBgMu9koigAnw/WAfuuBi3cybl92Jr4YVQ5/ik0HPBj09BEujx9CZso/VCa6jUEbEvVIdk4U15Yr9RqTKrO048F4W2PYQdkv/1R90ZPMjPD3SYFPinDGua1ulFlKyPZzHZy5y8EbU9hEH1KXGIBOmGiEVbP70+axi7u/zbFvAyTIT/AAfmPcYhw2r6UcvxVsYYaEdQv+9WNyKluyckNwyGgqnCKNlvMOng5l4xoLqN/T877zJOkw6ONR0yP77TqN2N7RRktnCJOCoEBcU/RYmKB2qo0fqR2apW9x/rIAjk4Km71734K0DKyEuPMSJuU+geHX2DI7wr0echtG+eN3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by CY8PR11MB7082.namprd11.prod.outlook.com (2603:10b6:930:52::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 11:01:02 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 11:01:02 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, Simon Horman <horms@kernel.org>,
 "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 07/14] iavf: add support
 for indirect access to PHC time
Thread-Index: AQHbJEUqD1tEV6UkDUO4YyGe8GDUhrKnCQhA
Date: Mon, 4 Nov 2024 11:01:02 +0000
Message-ID: <SJ0PR11MB58653DFEF39C9A133AA1F8988F512@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
 <20241022114121.61284-8-mateusz.polchlopek@intel.com>
In-Reply-To: <20241022114121.61284-8-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|CY8PR11MB7082:EE_
x-ms-office365-filtering-correlation-id: f931e85c-eaa1-493c-27f7-08dcfcbff8ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Z9ZAoab87m/o0P6k4alY7lXPFLg05vhHsEZud0px9FuzJv9NMANtdu39+m1R?=
 =?us-ascii?Q?PPHei6buZgYA3qzMSBzumaNIzPpcqsd822LRkXV4Vyrl2UIKIRkp3NO3uGRX?=
 =?us-ascii?Q?EQs9mGqYbP3rV9VrlZ8M9vb921mDGDcfyQ6rDrES382xwls/C1PmipDCSlGp?=
 =?us-ascii?Q?pLlTC0ss+wbbzNyrx8C66fsa8yuwUw1t/ltXg4+0itQoOc2SnxCE5yZhvfFZ?=
 =?us-ascii?Q?Vo7g2ZKqk8vMo4ZpnLN/ffPERjvoC7gy28jOcBcq8DmxrjhEJydnkgCZO+kl?=
 =?us-ascii?Q?axAFcmnyGVEzuKXZnrq3i/8Bl7+GipAdx98PhX+xFXGmhBbMH3J8YIvagHZp?=
 =?us-ascii?Q?+whmBJkOGYgAmNizpnwEI5vb0MscBmZ1j3H4Lk0zLx6kyOZ0WFa0NZexL4wb?=
 =?us-ascii?Q?urBrtT8ZT3uVMZdqKMbeE5IVdk2fnPC0q/MGbyBPAZnmM5iw5B48NNwQTtrP?=
 =?us-ascii?Q?Bcq6czKmLo2EAakZUJxxjAMXVtsXEeelS1i1ohC3UcxcKPIKVmj/zqgsPuQy?=
 =?us-ascii?Q?ElX87QwD+QVeoMW8+MudPfAjMldN2k5ChtSfGWeS3QlWMaodGKXjShg+apAn?=
 =?us-ascii?Q?9z1PZ5ywpRZeoAApDNTpdFg/P74H3C/FRQIO4iMiWQd9VKK/pv2jt0vNMMay?=
 =?us-ascii?Q?eyHgbHH1mpi2lr2n5h9ZxmXWkt4OJ885MlLFgVszqqkUvqIWSnxCzP0sVpYk?=
 =?us-ascii?Q?K1OGy0dkvCJPMdR3NHXBpFA/QZXk6bX7nhgsQ6ZGlqXS4cJTJceN7OsOKmFj?=
 =?us-ascii?Q?ZP6ShXk/MxzCWq7xhrHO3EUqEDO+RdyWTJs/A/r1BluR8tetwPU4NnOCoWrF?=
 =?us-ascii?Q?om6n6+lU10/QgM24k02EQ+r0nnkLFdKmTz24nZFY1qAu/tY725Lzryrax+Ex?=
 =?us-ascii?Q?hDyT4Bm4JkeLACMv7X9Ls1ZfngMfBXMiVPrxCQ8jwfXFO88gM79jn2Tss9KC?=
 =?us-ascii?Q?UYbmYnt4SKkhaAtzNlbs+afIWLiY+sPF5xk9pcEg2ff4xLmCmQGm9fsFW8VH?=
 =?us-ascii?Q?IDQo1yR6S3L8xncV6OPKd/r0CSTbwYgwXmzYZb7TH5aoPFQfFN8yoZxOIsSC?=
 =?us-ascii?Q?FUAfG5CcN5ZLo/5X6SagPa1cMlLZDSozjS3G6svMPTjmQ6Xt0ko1fBUcdIR/?=
 =?us-ascii?Q?TdVPL+udkyqSIEmXE40ouQOzAS9gLojPA1HDamkefUf5D9qfN/V6o2Nasgvq?=
 =?us-ascii?Q?7rbA2rl+7XCcIJDcfPwFHAQglGVZanrUXmv8EOH95O5TAH++mPdnX/Z5AJzi?=
 =?us-ascii?Q?ngr9AOwPYcXNcOw4eYvfmcwUu6HlET3/0IOsovTJQ0Eg1VcLttele/lJdeaE?=
 =?us-ascii?Q?9HL0jRj7vy0fggwwwyE9F00a/biQuHgxzlpGSOvy/rHQZ1js4T9O8x15Jw0M?=
 =?us-ascii?Q?aMhLt68=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Tlhb9UTOB7x8eoD5otJptGZlPbKLjKK/dB5/mr8GyxR24oopbNTAn5jgucRB?=
 =?us-ascii?Q?gMD4i7oP5DaK+4pOAwPDcV0oMfe72dy00sb9TKuSfOOl/W9jVy4gnc0F6gEe?=
 =?us-ascii?Q?D0ZAncU54P58AxnRFzmai9bcoHCy8oFNDr+Hx/CCklPWSeElIktbHodJaHLm?=
 =?us-ascii?Q?kkCXvdOnjGy2VS6wR8C4VIT81DYxyN6aa4fV/eNyyv0MFPP9Mo9DdYqeMzgC?=
 =?us-ascii?Q?JIKz0K1z2lxjKMOZ34825ZqhpgUV55W5mt1fncHjB05hQvdYuYqVQCqh51U+?=
 =?us-ascii?Q?TO+24WHWii3HBdrZoRKGA5b4FzaEDDEgxOIr6Vh7OV4zaQxjRO3o0o6w8YCy?=
 =?us-ascii?Q?GeOyl0+0o7i3GJDFWOQUVD/AZofe63xvkQ72d89i7BLS4idNyi6jKsWc0NZj?=
 =?us-ascii?Q?2Qns+N3JqkaSRHn9ZahzM26VlBE7YIqnzRh2puwVdlT/kAtlJE6V6YQYdF2s?=
 =?us-ascii?Q?c488LvndEhAf28JAfbcpKyNYMQn7Xn6w4Lt03YDWWNb1sjrlzLzFFcA3BC6e?=
 =?us-ascii?Q?sS4V7jDO4fxbWL0L7gNcx9jak3jTelx3lmc5pxuWN24dMQj8ZKF8k/zCoIeA?=
 =?us-ascii?Q?Ugei2AdMIrW5+oZbcBQVepqa6aajGc3uswvVM/3jior6lRg7rbY6XUzMAlM1?=
 =?us-ascii?Q?LlfaBoi9WDgEYlB0ic/9b7vVX50EpuaVwLl3qVJ5/8AJWFZ5aAEsT7K92cpJ?=
 =?us-ascii?Q?e6yXUmXyaJpE6mPUATUfgI40ocqAopCbGU5CrYUhEi1xqJ0xJHkM2Z2DlsZc?=
 =?us-ascii?Q?dcHDVLmIIRghCaJxvsQuCoKEsqMNuSgNVDpL0Ad/6iind6LmVIKEmyhRdOhv?=
 =?us-ascii?Q?t+g+AH4nuLzYozxeNlrXXO0xDn1nr51p0yTe/OfkHE/axrnBRIdShk5QSQBZ?=
 =?us-ascii?Q?x/zZowVW9RzwY3aF1v0m+WpD3l9+1ZoRHlehG4eT0ZHQiZMgK+pDMPob1U0L?=
 =?us-ascii?Q?CN+MNQHDu3RJtAAesgFdhw6K5gAKmjGzrFebZvnS0lHRV7v8PuMBcacxBDsx?=
 =?us-ascii?Q?yLSLckf8K8SWhr8NehWNaK5hiwTFMydvBOS2ZMnnSthUh3EYR+me69Kn8JHk?=
 =?us-ascii?Q?50btMaldAuFb0WibCkGV2tKb6bbOaYjzA8BUC80ujb674rb0m/S8esbOdfLZ?=
 =?us-ascii?Q?hmedezdOqXapXrMfRioFFnHVe7PnlSFchhBzZ3eXT3dw5k6SaZPu1RCpm8Qm?=
 =?us-ascii?Q?DCz+bwdVGa27OhTKFxRn8kh5l50+oq46CZEIdgtU49L7yHbxeIvSeD99oB2o?=
 =?us-ascii?Q?9MN8cH/Lr33Y5iOlr/jCbsh4LQ91vpOXNWabmgRex4TE2whyPjLfWcSOiRM4?=
 =?us-ascii?Q?eb67qAOy5fnGU2alaxeKgocN6HboKazq6xg29yXe/0x18tMRT8+j/iHRGCWK?=
 =?us-ascii?Q?DTa39ScD0A9EApPjI3jC+fmD6SDSz/3tdCtQgJo2qC6mtfpymvogagG/Rd5a?=
 =?us-ascii?Q?mREThzMS/8mzXdJyD6ymD4hpocusAW/yFaqWh7Umgq1eprGsAMEUWZhIa0Oj?=
 =?us-ascii?Q?YZ6/MG14AIRJudzGBhjLxQ9ycOM+swIkMBgpZg/8DIkxyBrkXODWsW55GD0K?=
 =?us-ascii?Q?1qTNR0jbyVNo9tc8M86qM7lqz71zoGIBLg7SIPG70wu37ko32CwEnvTNlfbH?=
 =?us-ascii?Q?kQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f931e85c-eaa1-493c-27f7-08dcfcbff8ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 11:01:02.0249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 62oGbKFIXWVtd9WuUlVnY2T1Mii4Ns6YNxn2yP6tmNvKN3t1lr9HIyPgusYonLjvxNFYpugWvfZwP+KprVGwsgQ2gMoeDDJqT8P6Ik0UUSQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7082
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730718071; x=1762254071;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rYyjQDd2q3sgrXqyyL6XQ79kK8VIA9vDmIgTzhoJsFY=;
 b=GRqIG4EnMjKfzv7G3vm8aQvUqgCcm0cYc/iVbwA+751DJ4xE5ClKmOxT
 DzK6IZ9yXWWRLlcEyyY9uiUq3T/rsMNnQfufBWHvagl2X1gx4PoR5foAw
 j3H2Ez0SRThxmAnSZs9lDvHKfnEGLMwdGmbs/Wcg7P0mUpcqh6Ep/vMA1
 wKPPtpuom/F9bKNIxJpF4flkaFji6hky41KsLG7cpaTtgvR6rmAYLue7V
 fqLt7LeX7UAYKtVe65sZeC0f5ggj8hrBW4DVaJMQQ7fTSlW+IBwU3UmLX
 sKvnQFQJRGzhxS77emYlpHIzGg17Sy4J4ObeecpeE4vOHPub5xz8j11Kv
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GRqIG4En
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 07/14] iavf: add support
 for indirect access to PHC time
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
> Mateusz Polchlopek
> Sent: Tuesday, October 22, 2024 1:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>; D=
rewek,
> Wojciech <wojciech.drewek@intel.com>; Rahul Rameshbabu
> <rrameshbabu@nvidia.com>; Simon Horman <horms@kernel.org>; Polchlopek,
> Mateusz <mateusz.polchlopek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 07/14] iavf: add support f=
or
> indirect access to PHC time
>=20
> From: Jacob Keller <jacob.e.keller@intel.com>
>=20
> Implement support for reading the PHC time indirectly via the
> VIRTCHNL_OP_1588_PTP_GET_TIME operation.
>=20
> Based on some simple tests with ftrace, the latency of the indirect clock=
 access
> appears to be about ~110 microseconds. This is due to the cost of prepari=
ng a
> message to send over the virtchnl queue.
>=20
> This is expected, due to the increased jitter caused by sending messages =
over
> virtchnl. It is not easy to control the precise time that the message is =
sent by the
> VF, or the time that the message is responded to by the PF, or the time t=
hat the
> message sent from the PF is received by the VF.
>=20
> For sending the request, note that many PTP related operations will requi=
re
> sending of VIRTCHNL messages. Instead of adding a separate AQ flag and st=
orage
> for each operation, setup a simple queue mechanism for queuing up virtchn=
l
> messages.
>=20
> Each message will be converted to a iavf_ptp_aq_cmd structure which ends =
with
> a flexible array member. A single AQ flag is added for processing message=
s from
> this queue. In principle this could be extended to handle arbitrary virtc=
hnl
> messages. For now it is kept to PTP-specific as the need is primarily for=
 handling
> PTP-related commands.
>=20
> Use this to implement .gettimex64 using the indirect method via the virtc=
hnl
> command. The response from the PF is processed and stored into the
> cached_phc_time. A wait queue is used to allow the PTP clock gettime requ=
est to
> sleep until the message is sent from the PF.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


