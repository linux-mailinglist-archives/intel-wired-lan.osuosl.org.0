Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FEE99071F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 17:05:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB84640C7B;
	Fri,  4 Oct 2024 15:05:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7lYbe7WmiRpz; Fri,  4 Oct 2024 15:05:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE48440C9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728054327;
	bh=Z7/gnpUu+Oye04vNSlVUm4eXIdZXEDwM3bBZm8MIO7M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TXogwCvrY27oDIuucCoTc2+ssJ/VykMYwJjmDyMk+NoSmNVz/ySnJqYK2DEiCplaE
	 zg06xtAvncK4AxDeulyUxzr48fzHaPC2KwIsTT7rk6I3asEZRtM67w1nuulr0ZoCY4
	 Jm+BQ8rYKWu3l2KZgIfUTFTy2mWso7IjRBKTOgSpMMLRbfsfWntZ/UX08H8+Ul5DSs
	 MvzXfR0pPzBmoV4zUP0tWPwi1k4r3w/PApi3awWsQtE6rEYNCXX80MY6MxkXmKxk+d
	 2LX1w9pTUTTqyaQbv4sEfVN4fUpIik6MteLk5oUE52tPIq66tfAT0yLlbIFfqtNadr
	 Y7HNhtoSCP2yg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE48440C9B;
	Fri,  4 Oct 2024 15:05:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 134DF1BF239
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 15:05:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8AEA340D03
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 15:05:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xyOzjuGHnT3L for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 15:05:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9C26140D0F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C26140D0F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C26140D0F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 15:05:17 +0000 (UTC)
X-CSE-ConnectionGUID: 18Qi5bPWTzSZkI5gCGPmxQ==
X-CSE-MsgGUID: kk6aypHKTa+9E7MJmZr7BA==
X-IronPort-AV: E=McAfee;i="6700,10204,11215"; a="27369991"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="27369991"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 08:05:07 -0700
X-CSE-ConnectionGUID: gtK20KxiTmWKt56IuxcoKA==
X-CSE-MsgGUID: d1I1OIuzScWUmM2Sg3gctg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="79302888"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2024 08:05:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 4 Oct 2024 08:05:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 4 Oct 2024 08:05:02 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 4 Oct 2024 08:05:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UiNhM/BsSnTKZ8ro5svCsbtkwRgFJngz7EYmn30UsnPOf5Zygr98HFniqQiRmEG8wNVTyZ8HXPfF8+8HVpQ1YHdnq4O/ZTptyFbM3+hjxTBiEipy3WaZ1naL17yTLuPhyoDaokTG/p50HLr4iWW6k971XkWwjy1Z9BlZY0n7ZHTc77OyoVhD44jxnSmADkcSEoDhBL+Hjsuctqy1giBhfMZMaT11uthbuVtZvYZR524f3EZA+kgPFVxYCf7xsi3beTS94FIoPGiQPt3PJYycYgWCiyCzJo7pP6MX562cZEuJz40W5ExVInIyJUMzEFmpZTBdZ1y3dWjL3/P+VNmF2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z7/gnpUu+Oye04vNSlVUm4eXIdZXEDwM3bBZm8MIO7M=;
 b=bEG322BMEa5EoA5D9c/pHRLbHWodbYWKVjkOBdOGOGjjlYwVR8MG1m42PUpmNPvGQ8boezNAfFsP8CRhvYU+ekGe8pU+JFg3kdO6lzfSpHiAwG7AEnGKtY2KZTdcyV5OQd65sfU0JoAREKt0YYC7X6lpcTzrz5jSStXOPRVnEE3SyBuSwSrDhi0TnQSYXVrpPMj6fktLuWGbilMnego0FJGvSWDZ4DI8d3B/NSQNR8/hAkfkpxwHjHbCk6Xj3U2YSx9QOOYbA03Zqz/PtiYcIWxgTz5nErA4kI0smu+6mGlKiVWn0KUuhP3QkKnV/o3pZ0ih0eZAmTFiKkSmCY8tQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by LV8PR11MB8771.namprd11.prod.outlook.com (2603:10b6:408:206::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.18; Fri, 4 Oct
 2024 15:05:00 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8026.017; Fri, 4 Oct 2024
 15:05:00 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v12 iwl-next 3/7] ice: Use FIELD_PREP
 for timestamp values
Thread-Index: AQHbEzLMO0BfY0LUeEyU9uS6fR8ii7J2tCNA
Date: Fri, 4 Oct 2024 15:05:00 +0000
Message-ID: <CYYPR11MB8429E1EF7CB3C5769BE01C63BD722@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240930121610.679430-9-karol.kolacinski@intel.com>
 <20240930121610.679430-12-karol.kolacinski@intel.com>
In-Reply-To: <20240930121610.679430-12-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|LV8PR11MB8771:EE_
x-ms-office365-filtering-correlation-id: 2b056a29-2a6a-43a1-7c4a-08dce485eae1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?jXoFd012h4BPlILMGI1HHnAeW3MYtOin2kz7egNihL6EUxTAjJYPSI4Zhw3w?=
 =?us-ascii?Q?IqK+aFYnV5DKOl+ejbzw84P5qmxEuQPTKPjePWk9vVr2J972i08Z4SHwjjoj?=
 =?us-ascii?Q?d3CBTSJIB+i+19ynEhviSOKeXBLnZfJbnxf156y+hUbuRd0tZ/zubLVx5/pu?=
 =?us-ascii?Q?oizYfbSx399fJXengBPtKEV0ukUuEGZlq8fg5/rnk8sFhHE2sqhFJyb2tXVy?=
 =?us-ascii?Q?ngF7DfJVrkdEe13Olpfgruz3KZgo6na49V2WWIBfGEh5NKNpatxTdiq5Uo79?=
 =?us-ascii?Q?fdodY95UiOajBkvF8pe64Gh2JDaiyYqWGuxkFd/jYuV8TEmR7Tv5yd+S4q1O?=
 =?us-ascii?Q?lfE/4Ag3jZZ02uzQHWu/HxM0T+rXLTFo7DLR419C7dBx4UejGo7+y6FT4uKx?=
 =?us-ascii?Q?QStFoO9MHZs1HEO7yzfN+LrAI8OTVxUu53yknnhidYxKpwoyGvlsryURyEs6?=
 =?us-ascii?Q?ZfRpHr7euVMn+Z5PRAUkSsXddKyz85rXQY4gRUSta8Lx8W+le5rJ4WGpAkKD?=
 =?us-ascii?Q?wKTWzeRxVlwiglhh1Sh2G4FV2nCxFD6IHRWCJQs+spWuWqwM51LsX+9JFqYu?=
 =?us-ascii?Q?MOxNzCECoblD/2UEa/xbCLTU2qaafmAeQMT6Y3J0TD9JmHXZIFaMN5Z6EsiU?=
 =?us-ascii?Q?qUsDiKaqxXSMOqeuMlWrDgLjboo9eOlIm7Dg8suT92NRQGIL6cL0Y8NzVR+g?=
 =?us-ascii?Q?rait1VXeefwV9sIr9pga+kkVqiMtUbzMyUoMDILtvWKAjHi9E4CjGmFXwYxB?=
 =?us-ascii?Q?ciknryINChnTdovWgjM3tfleEZ9TtEYbiAp6ibz/tyyF6yDozUBBuothffYy?=
 =?us-ascii?Q?UBK1MRtzewEuV0T3u4Mberof8IG7DisepxJpx1zFlGXkkKHGNMvLdl10qQ/q?=
 =?us-ascii?Q?aJ5BXXTQtSHeJ0kY3cQv4wBFQUKoYo2LYc2zv2qV5lBx4+/7i5SvVPRmf1qL?=
 =?us-ascii?Q?+cVtLZFuXxbHkKXdK/hkxuGl+P1hjc6+zRDzGZSSsquCSPRruwEaD4f4ojRY?=
 =?us-ascii?Q?gQyET047bU/Yshz4fTvGFTE3O5gEAWiYVTpsy9Mu0aPHHGskkEbqBaAKjTIM?=
 =?us-ascii?Q?PAuyINLw9PvP0hCWHQAZJ1nRQCKqUKYEY+MGNJHw1TFAPIF7XKZP1WZjheeR?=
 =?us-ascii?Q?OQP9eu2rnck+YZnetHoTLUYeoIZ+eUxiY9RsaXp0JqjvVSCj/h+2Int7k9om?=
 =?us-ascii?Q?uJlfnnacUGlkT4S2meThymWB1QLtWqfwYzJuxTm0Nlqo3yG/mwy4Q5v0KshM?=
 =?us-ascii?Q?nkxnvmEsPxucLieS2bSCSObW/LBKI0qS9GUH3dQgjQC9mqqsdaQd9wWUgAmC?=
 =?us-ascii?Q?HvEto9TqgFjdmVOLtX0p3Aox4HJYDmZTL4Gl53bq/hZOkg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?t0CJs0rHKLxRJEl1VV931d+5y63ouddpL6dV2snT7aR4whivqZoEIGDWbR+I?=
 =?us-ascii?Q?sRdvuOYTbIB91coC/7VqAO39ts9MNzPLXllUsi7RJ+PWXN6+BTucLzv3oOQR?=
 =?us-ascii?Q?dRiBIpC6tDpCg8uqZWhHBcHCogOQe48k1/KK8N3t/Gbl4Kd/PXVmuOvq+ftx?=
 =?us-ascii?Q?bmpP8PiG1MVzPALVR0XW+ZZYFKIekeD1AleOEZqNQN3vCs2Fzfm/NvZUaH4E?=
 =?us-ascii?Q?Zlfl84mwDBHm0zPS1jOkQt01zolqjQxHQxSv/JqpA6nVugMkpLjQ0xm7fJOh?=
 =?us-ascii?Q?G7AFlg12TPta2cAtdZ6vWuJWX8ndKWbI7kTiJR7kxSIC2jZVrVm/A+/PqbPp?=
 =?us-ascii?Q?kourSIvXwRY6/puyUsW/bHskLMPlqI966//TTrRk7L4wZSw4/4BHaFVAXwZH?=
 =?us-ascii?Q?U2Rkomvok/5BTwaclJid4yLYLj0u6vfEVJqOG6if8y7i6wGPRbw/JZqIWOfV?=
 =?us-ascii?Q?t2vNXHvV4VBtlVlEcl98+dbjlOVpba2B5IWtjXLREDVY8cGcGkkCIrzIH/JL?=
 =?us-ascii?Q?D/ko0FLIP81Xr5ABtRs12pJceRiPjyEzy6ADCCUXgZ1iuZWbN/UExc0b8+gV?=
 =?us-ascii?Q?CTFvdsdGoWI/GhPjyfI73wQh1VVe1Z5lqE5Dh5mBd8YPiW/jSjXBPwFTKZ6k?=
 =?us-ascii?Q?GgDFVM8FApQFzXmQbrEZx+hEb4A8NH/ZCsGI1Mmek1y5vLc2kV7Rn/tV+sPA?=
 =?us-ascii?Q?57mSc5l9/BxqcZPEPnyKjQqTiJZDO36POAILldKWHwFHs4pcAe0HjUkIIU3O?=
 =?us-ascii?Q?kG8y8kAsjU7UR1B0a4KxHDwLp4B69DZbW0maAHTOr1RH3M6cpmt+frJeADFm?=
 =?us-ascii?Q?vi4pu97qVeKvFOUR78lMApxS8h9ndBV40dpB668b4LQhbYPP2dP0Un/M8a7u?=
 =?us-ascii?Q?Mi4BLS1TgtCPmBH51xiYJqIBV/wodlLcptOoBpvZuOl98LdKUSMcL5m7J7tX?=
 =?us-ascii?Q?YsoYu8QVgx9nsScqtM6tNc2wNM/njeSRdH4Z36w3FiCE9TIFRJ8Mfsnlmegs?=
 =?us-ascii?Q?xE62ZoQlgcmCO0pQMwKm2wI/kCwOosNxcIpLZRNVgxkAC/QY4H3kVUM/AB/5?=
 =?us-ascii?Q?b/K1/iU9MKV8sCHXwpILLe9mXusewDgDzatBBOzN+Asa54e6wi/yWVackf4y?=
 =?us-ascii?Q?v9+XtYfZ2RID0eAmSM8o1CRv9QF7Im5XC4dlxP1+KQfTljpfzKytEh6oSiw/?=
 =?us-ascii?Q?fVPpK42ub8qEuxzGMdKUjPIPLj13ZjjQ8LhRAHwuWbYjfQonyWDHNYjHKzUN?=
 =?us-ascii?Q?P9Axj2R+a97+c6WLw1dUg756PNDQJjk22qtMRgyOgspIZW0wTS47ZBLOoGKj?=
 =?us-ascii?Q?osFBo2ai88edbkBZZJ6AMHeiKwJ/CmWyLAGK1Vt1lG5ezWaLaqtySK4JTFeq?=
 =?us-ascii?Q?ZIIJ+9PV83WOkQrD/tmpaMl0lzJBNTkDI2p13sWJ8plJWiPBIVlYA1qgEuhi?=
 =?us-ascii?Q?R7+3kJSTG4SYL6fdNAxWzSSTcrE63YX0hwqyzJdiPXmEFIzgo9xTgup3IMQ8?=
 =?us-ascii?Q?LK6xUejDRyNqNzqJn6aU/OBx8SjQHwsIcIyn8sOtF3KkaM6W4ehgBzj+Nw/x?=
 =?us-ascii?Q?pu4MCM6J6raKMGYckWkxP+wMdZb15BHb1DdC6q3LzUYqIkeO/1mhw3clJWrP?=
 =?us-ascii?Q?QA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b056a29-2a6a-43a1-7c4a-08dce485eae1
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2024 15:05:00.2014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m1O4l6u1E2kgtVB/UaHYM8o3FwMmgzj/aAfaBLNuH2fFoJah2wwXxj6FaCC24EiUjUUUVTls+3LkDyQ2W6dMPv1sVnSXDTnwtEgCV05tFDcADHWaeWmbAS8CwC1mfoke
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8771
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728054318; x=1759590318;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YDnAqSfNaO1zM5P8TkjDaumZskWg0gamQimWQ+vhWD0=;
 b=DZdUPDJoQX57puhDJhf/Yc/gGJoVbB5O9On0TAekZ0y4mIqV/Y/JBB4H
 7H9NkhhJfjlrHa5qG/HpOEKM80udnMCUi91bXkIOBdwaWJLouw3cpBfXl
 ScWjCvyHG+rykEy5MSOPQRgzrjk/gyaM9Sh9QbzCq2bFmJyOcPydScdB2
 gIPV9WCgfH3cmTgAhsuAOadInBm9zc/1WrQIooBjcyUTSlo7Z50pfTUXO
 xNwUOHw2OCLitTRlmdY9rlU6TJWhVcjh3fY7sMgpKDQpoJS63tMdTS/OQ
 TkMD8t4AISnVoIqyuIyhddJ3T+PkSrsutzWyT9HoI8rOKP3Av5klC4ILv
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DZdUPDJo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v12 iwl-next 3/7] ice: Use FIELD_PREP
 for timestamp values
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Monday, September 30, 2024 5:43 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kolacinski, Karol <karol.kolacinski@intel.com=
>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kern=
el.org>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH v12 iwl-next 3/7] ice: Use FIELD_PREP f=
or timestamp values
>
> Instead of using shifts and casts, use FIELD_PREP after reading 40b times=
tamp values.
>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V5 -> V6: Replaced removed macros with the new ones
>
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  9 ++++++---  drivers/net/=
ethernet/intel/ice/ice_ptp_hw.h | 13 +++++--------
>  2 files changed, 11 insertions(+), 11 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
