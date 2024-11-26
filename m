Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 134AE9D90F1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2024 05:12:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3079161156;
	Tue, 26 Nov 2024 04:12:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id khc7vstnOhyV; Tue, 26 Nov 2024 04:12:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5ECED60B7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732594361;
	bh=yJQQQJPb9OonlCjEX3v9uqOKC555MKL20kQGhL3Wzn0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q4lMMEseloyGvPL3FVAZyZ4kffqS7HzjBXCdLcVJpBzl0o6OZxMMdPejoOY5lEFaY
	 Amem4IgevaLu+9mS/jNFepo07zLYL8HO5H84hyLNNRm7VunROeFZCN0ldOZJBszzGj
	 uTxYclfWKA/wSiI+7cf98Aa743EKpCaRG70qcHRUzJx4wRZ/YX16NMqKpbWZ8FSPtA
	 K5epwuBR4tnVW4P1o+jEAbZDy5jDuea9JyZSQRGmp7H5F+pUy5P17bEejt9k+1IsL2
	 wPcUuVmyLJhrVTeH2bwhTUZmfl8nnv/oLJNUEHiLfNoMn4Yzn/rsWu8LppUEujfzE3
	 3exUwoencVO3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5ECED60B7C;
	Tue, 26 Nov 2024 04:12:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 346D54961
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 04:12:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 155E9409FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 04:12:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N-AgmGuq-Nho for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Nov 2024 04:12:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D423F40978
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D423F40978
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D423F40978
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 04:12:38 +0000 (UTC)
X-CSE-ConnectionGUID: iZK+4DhgQmyTbIpPbuwoLQ==
X-CSE-MsgGUID: 1vnJKjQ/QumekIm7SXao0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="32592210"
X-IronPort-AV: E=Sophos;i="6.12,184,1728975600"; d="scan'208";a="32592210"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 20:12:38 -0800
X-CSE-ConnectionGUID: d6mFWJE0Rmig8XHYFvEEMg==
X-CSE-MsgGUID: ZatndQG1RxC1Lk/pGkuLSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,184,1728975600"; d="scan'208";a="95564194"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Nov 2024 20:12:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 25 Nov 2024 20:12:37 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 25 Nov 2024 20:12:37 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 25 Nov 2024 20:12:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NSbjAV5PHj+68VGZUZQIXqcXyV+iZ8dUvy8zs/AhKJKnNf2vNPQuIiy1CDALlunsc58xIRMzA819YcljA7x7exlNwZ7sEQOYavppU4GQ1QQrIohEpTZvzftN78W1aGBpgxsJb1HsEIMurvTLSYDgzctFxdvYTMNfLrjzICfIKiiHWzF22Efzn72UwJT1mCMteIqV/2rDumh5aWTPIKu/uzGmr0JV620/7XaH7Sz7jYj7tHWp+4RosGmliG5pHqaIUB24XO7f65OrGybKE79xt5+9sNaENA3TRqM4X4KkWWKgNWk8+GCayiVogZFKdO2VQwokwFk7KdY95x8CcdRfnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yJQQQJPb9OonlCjEX3v9uqOKC555MKL20kQGhL3Wzn0=;
 b=E88WViamuY8VTcSja3ESeAJNITHqHSZWo3IyeK7xGJhUlhnxNr0R2UvxyNe9+LLtRvd+tLlNe6YnckLrFeWy2Rx0aqeEUZiVx68ulcXTfFTOoHbGHp6mnl26ntvYh7E0HGq6XKnE+pTmvgrqMnfE2esLtgaE8JMZk43rjYaS1DyHboCFXY4/GonQOwfIK+Ys5q+lEIksaaWmP5rD93m2WukEVEcO2cClafoMPWfftp/tk4miJ0m9ct14MPnyD3+dzii8B5vJDYLeqR4I+Z3MjVQ+hz5GiZvqR1Ykd4T5Owfxs9rcLNGcS+mXtWvvJLHFsok3Yju+IrWKj9ROSK+1JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by MW5PR11MB5764.namprd11.prod.outlook.com (2603:10b6:303:197::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.18; Tue, 26 Nov
 2024 04:12:29 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.8182.018; Tue, 26 Nov 2024
 04:12:28 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>, Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix PHY timestamp
 extraction for ETH56G
Thread-Index: AQHbN1mwQP0hqSLdUE+Le0nW+1ijw7LJA1NA
Date: Tue, 26 Nov 2024 04:12:28 +0000
Message-ID: <CYYPR11MB8429AE98EAD184CCB5B9C3B0BD2F2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241115122536.117595-1-przemyslaw.korba@intel.com>
In-Reply-To: <20241115122536.117595-1-przemyslaw.korba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|MW5PR11MB5764:EE_
x-ms-office365-filtering-correlation-id: 1e43c0f8-1897-43f1-b5b7-08dd0dd08ab9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ecrgouPRJJ7ijSr7i31/uEXYAbiiXDK1sEtXG8zOpvSV0xYyij00gdQtRz6d?=
 =?us-ascii?Q?etlTzE0tEBGnOavQgcnSSn/XBMGhkTQPj3HtHUTrv7pRS5xkk2uL0l2sXCyl?=
 =?us-ascii?Q?wwhaEW0jkIAonnZISvkSFwgB1wBOvjS2axYOsy076qOfkzLd/xmYTIoWq2+J?=
 =?us-ascii?Q?Z3AlFhsn1PeyhpiPD2dv0x6GRrjJMwdZwQ7N/V9g0FVtiElmsStU8JkG4ZCk?=
 =?us-ascii?Q?wOuWZof5qTpOBhkfzbg1NbLew66k1BiVmH+zPzjdd4o6cvuA9f80bh25js+l?=
 =?us-ascii?Q?yXjmFQ0lXCRg/mgyC7BevEYjJkmLpn9TnGVTQrCaoKO5F8uFVcfLxHr3R92f?=
 =?us-ascii?Q?Yx+Et8ubeaTPbE4e4UIxY+QFkQxvVBWIHu8vyCgtTVeEh5X++9/7RuGo1QQx?=
 =?us-ascii?Q?54s0lSjiyXRzmvK4MDuyCfrpYe16AZZkToobls+S+PbiQ10SjapXcyw4PiVh?=
 =?us-ascii?Q?yq+LHJFp6fAVUeO2unjuessEOujqwv1/l7OKAjUU3t1egcST2gManm/smNiF?=
 =?us-ascii?Q?irDaR/yMd8kQ6x4mKqYU259zri19UJhlhfPS/dKcLyTa6/PuEofIMo8mdXIK?=
 =?us-ascii?Q?RDgb3YT9ytzR6FnPW8Hz4qK1FECvPjYPJUdutZyUuto9RYaIvF+t+d1daMDV?=
 =?us-ascii?Q?h3/alTmfjoZsnPF6p04OVGHlI8vrHJbuupCM6QcQfU+gNyMYSCbHMbz5bTlF?=
 =?us-ascii?Q?cJfPYfngGVvOoJLYnWWMOx20Z+MM26rhw+Q7AkdqSdAmqTNcCFOHX4DWREK/?=
 =?us-ascii?Q?MOZge6nvqpkjx51E/Cw6gupNS+otQKqtuYKOKKFizAp5NQjyFkX3hwWDazh2?=
 =?us-ascii?Q?SSD1+1lpEQcJwjTNwf3qD97XqlCL93SPbVDUky4XpDyltoBYbvyUz3tC6Usl?=
 =?us-ascii?Q?2nDa6biFHAT17K5yE8yz6zk/DKTadbZIEKgRKXop1e09cwMMarDJIhd/7oBv?=
 =?us-ascii?Q?Ro3dYzAT5yg+aPNRio7v1ADd/3p3rbSOzAKCpmr6nHLlZCMcXNpCjD6I3Twr?=
 =?us-ascii?Q?vYJKgdO+6gjU3PmXRRIspecoxuGVBmwX8+h63X4UEUXMvSyySUA/EIua7AXB?=
 =?us-ascii?Q?VKsi2UzL1pyWky6V+duYGFHJ9n3cweSysS8rT8BThD55BzdPKCSL5qyNjHBB?=
 =?us-ascii?Q?O7r1YM7+P7ULRFG9Kqq5uIfs7a77FbmIoY8762lQKF9cRvzzXKRMuAjj88/Q?=
 =?us-ascii?Q?z8cJBH/t9yBC3GV4EaW18D84AwbnVXaea+67xLw/jVCfMsAQ2c+Ezv+Y/jYd?=
 =?us-ascii?Q?DzUSKPxd0478U3wdZla31+e9E5e58BOYoA58FBzM7h4YVz78NlAWYt15ecpm?=
 =?us-ascii?Q?DO3n3of1YHAxGI9uhtDNZuHKQwT2aJN9aBcJ1g0nwzJP3VWzerCQqorjWb/p?=
 =?us-ascii?Q?GyKPdaQTw8bfaWgVvjmZoM3PwolceDq0EPJBKyAtI+dZQOKOxA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BAEwI0Y0v3NPqCToafITpm0mMsq5MLvypAt6JsCoqBg1YPNzDrH/0LFhsu8l?=
 =?us-ascii?Q?eTTyT0xg36NqJ9lURQnw9TnX1GPGvThdT9kKVzB9U5KR/rdnGQaR5AKNyWBB?=
 =?us-ascii?Q?T1ANshtXeFHf50OGJzIlDgaBFJAwY5xaHIL2hCrHxCRHhUiWPeewQIXQlNC6?=
 =?us-ascii?Q?nzTijPxuRn/FR/dmbNc1gX2LensY0wu72gipxZ3wrWVKTAqRU/WkQA1XR5ok?=
 =?us-ascii?Q?tzntKdNZgQagrPRh8KlDNPTo8FP4g/A4ER/RR0AMUN1QNMaGKGr0hjZWHSrZ?=
 =?us-ascii?Q?jcR7V56hw2ZgHkJPOjDNS5qniZ5diaZjiaeylYuqgU2nC1pseBwfMEpX4cPv?=
 =?us-ascii?Q?sK88UJQu2my16ZHIvJ+yDjDht38tbnn4LqrJFAHQ73rmbIe44QanBM3VCxuP?=
 =?us-ascii?Q?HnVIdAx+v141lfRLCkRcnvuBEUSWEY0K6hvgkunIiFn4i55F0vUiiPNGzTcz?=
 =?us-ascii?Q?ZpJ9NSrsgfbJHbGXLcOjFPYS7KXIY+tLs3jUATu4kupcofmQ/iPfKjSisOA1?=
 =?us-ascii?Q?sooaYEbYF5JGCOcXgElhJf3v3FgiyoPHCUYUp71CFUFRZ20vQkEj1C27VJnC?=
 =?us-ascii?Q?fbw0u6QlV5HPbwGHzBgqusJ7ieEWrpmnG+Y7ghildzMKjwRrV4oeOJBYlZrO?=
 =?us-ascii?Q?6BJK/ywIc/k9wi1JYgtoPMAK5UmjzqCnaW5dJGusAOp2Ttw6FNUEvSRg94pV?=
 =?us-ascii?Q?hk+ogzcfVd6RY1eIbSYFiI8S5DG5FUP5/XdZjkG+S+/jq6ZZcUZIKr2RNxQt?=
 =?us-ascii?Q?fAECI2WptEWcbzgm0kd9b6VE/CvujEMJbd9FGZu2iy3512knK5xKcRd+xQ1n?=
 =?us-ascii?Q?FKUbjy8Jg0ChjN6xk7q/bhy91XRBNU7IA0n3Ox1MFXjkTvmTp4eAjR8sdjqy?=
 =?us-ascii?Q?D4mogrzQXXd2iLZ1QSFUlxnGWTyDWIVmytOb0Yz+fXYnA08nwp7UTiYOwYgC?=
 =?us-ascii?Q?qDy+xbuM+Su1v3GN20xoQWKwoLpfUiklb9WnmLKS0l6uFhJggkySvF443uHf?=
 =?us-ascii?Q?j5OK4BJjtuZ1NjALFjS2zwjI9zgXq30j1f+5Igi0vDCHR3r1MW9mi9xQyrix?=
 =?us-ascii?Q?Ob+9J9bbL0SXgkhgO+neIMvlPSjF76IWat+4LRPlKy2M6jptvRgaqjo+2K4I?=
 =?us-ascii?Q?eRn/be2d1UQ0E8zOQGBFmGX9sKRCSxkvoyTX5Z1YhhHI/VstFoem5kLdNDcl?=
 =?us-ascii?Q?Mz334CY86RPMgScLGZjsLNzxXaYYDDYE3MymGNraaByUjIjxwTbH/uqCMgzC?=
 =?us-ascii?Q?VvnwBPy8cDTSSkiHlTl9wWYhKVv7vpRKY3bBzoU2SnpjXWWK6EcUdfQs9wOp?=
 =?us-ascii?Q?HP/FMUbjw9elV4NtQOW06vk3wNmUwqvGN0aBzxUO03DVutS8jrcE06UoPR/7?=
 =?us-ascii?Q?0buNpvmL1sQOTQ6pAT9qvOykgM52saq/bYNF+tgHQNZUSj8R2+hk5YzCBjdY?=
 =?us-ascii?Q?K7U8e+Xy1/YsE0wsA2X+PDHnBxxj0iTcGAaO+sBHrfe42V8Xw9bNZ7O2VUeh?=
 =?us-ascii?Q?XbjI4mdyXPyDG+o/pTU8/sjDAt3JpnywVi4k+ftw+vAA1KLeO0R/Gf1nQNR8?=
 =?us-ascii?Q?75d1zCYfQ+J/xMiodQXcR3vKgN66G3slxvlGmwKJfv232nSXdGgVhjkihXWi?=
 =?us-ascii?Q?0A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e43c0f8-1897-43f1-b5b7-08dd0dd08ab9
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2024 04:12:28.7789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P/6tDXpHJqrT9GyZ0yj3LMyvTIHBFj9VlR6VKsYnR7swEMkLjEmRdF6DMm8kKPNhijnxzUNHcI3VcpiNtNjc3a+7yXPMPtvuWByA9OF7zHaJx/E00YJbISf4JpiYyhnA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5764
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732594359; x=1764130359;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3Cg99P4HyglRUSsz6WDCAfJ/N9myfcnSHkgTTWXtAmI=;
 b=c2tM50A5qdBtpeqT240Rn8Wc52fg49QB3OEh2aohtzQoW1CKRpmjx6za
 uYyjCs1f8FbL1mVw/0iGcWDuVTa/2ExrGYIiSmKwCo+zjWQJahPEtAXIB
 M+Zi85ukU06JbBgsRKNfG3G58GW+GQkfTAzOSZaS6YIOslXD/DUc46bWF
 qdSOSOFO+lT4HuZol4EYApDyZ8t8WQLbZM1zjmXCxX7QH2J6f81akQOrU
 ejQyF3b+ZByZGhzZYoN25dCEEgWtVJpWZ7GYKgA2pQHymvJmnua2Mn38f
 GmqT6kkbK3DhXjggKn+iN9Gw8IBGPfLM93yZap1rhAPhMPb6MgcGYh6/+
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c2tM50A5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix PHY timestamp
 extraction for ETH56G
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemyslaw Korba
> Sent: 15 November 2024 17:56
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Korba, Przemyslaw <p=
rzemyslaw.korba@intel.com>; Simon Horman <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix PHY timestamp extr=
action for ETH56G
>
> Fix incorrect PHY timestamp extraction for ETH56G.
> It's better to use FIELD_PREP() than manual shift.
>
> Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products"=
)
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
> Changelog
> v2:
> remove legal footer
> v1:
> https://lore.kernel.org/intel-wired-lan/20241107113257.466286-1-przemysla=
w.korba@intel.com
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 3 ++-  drivers/net/etherne=
t/intel/ice/ice_ptp_hw.h | 5 ++---
>  2 files changed, 4 insertions(+), 4 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

