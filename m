Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAd+KFLHumlobwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:40:02 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E69262BE69A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:40:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36EA460AF3;
	Wed, 18 Mar 2026 15:40:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XkN5AqgIIpj8; Wed, 18 Mar 2026 15:39:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD3E360AF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773848399;
	bh=qfF2DyfbMm4p+nn7aXSOwt3q9lNKiMxR2vqWJi4Bkhw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LKYmKJP/2qDhDK21VJhivb/7KEXdKV92XBNqWyPBxa2MZ90RcmZ8IW8CFkUDzqAmv
	 NbPUxCrrYuvYkNMHSDFviyhkFs8q2xW96wmxK/XTaZLh8gliA+1HjckGJh9Zui3FeW
	 izTK4JAxCMUd7/Wp4kYZ0e9mkU/tjz3IK3AuWH/KqJ6GDdlr/Ou6Hk0H+oebKJCxcd
	 HspiHHk3aCQRho2jRCga2R4x26X8XHmDX+p2+e0HWs2+aEBMKE0gbGcIZjKVonfph9
	 3fCpM7t0/oEaIyQWGV7zH2P/5hyZECzFtU5yW3sr3Z3hvUitSi/RQliKWjHm95NSdP
	 j4ar0T19m5hAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD3E360AF1;
	Wed, 18 Mar 2026 15:39:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A88841AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:39:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 99DC260A99
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:39:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3iqmfaqcNT8q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 15:39:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 687A360A8C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 687A360A8C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 687A360A8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:39:56 +0000 (UTC)
X-CSE-ConnectionGUID: iMkVU/DpRBeuQijKclFBaA==
X-CSE-MsgGUID: 53Dof36cS9WaNSh0REJ5nA==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="74982683"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="74982683"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:39:55 -0700
X-CSE-ConnectionGUID: coyraQ8mScq1in01RHsMiw==
X-CSE-MsgGUID: 5G/Em3SoR2q9sp9QHErjMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="221742407"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:39:56 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:39:54 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 18 Mar 2026 08:39:54 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.28) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:39:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dcj3bH7P9YXnY8UKA/Hs/xpPUZEdqAiw0UFURF/mMMMxH9JLfUYpgZLXxAScpkwgqKjlIy9EFKFdyELIpw0CZUVGAJBoEyybO8a+I0Kmmeqlah+Cg8+W6+YCjwvTem3lDFFGos0ELEs0MhxrBMq7zD3j/4ZQtD9bgWrIdYQb3aYX6A/1QwycZEUbBAdwcIBvtFIKk1sHG37gJXwHwYN4ajtjXmtcCO84HNSaQBSVAAGFJyZq1wPeRuaWCUjIJQcSDOAtJxIiE3CDXItOGd1ICtQLxhZXDjGUsEVdiAD/xFDilk2bR9h+pSR6kvMJOuUpB3u7ky5hAR3jLoxiahtXJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qfF2DyfbMm4p+nn7aXSOwt3q9lNKiMxR2vqWJi4Bkhw=;
 b=e/0VGL/aNKecGOrSd88sZr2I9IMVGroOz5fwbeb507gQeyhKN0npITBUeGLlccX3zaeN98CmVFgaxLCDdy/zXHrr3Fl+loNbS+wgxvRORc96YUu71AYACHLvL7UgQIl3O6RQ4jUyyNpEM2XWdv/WEr9D/ETdivcsDxnWYYjTngR4uwuRyLoKXJUpireA2zuQlURZGXfcczDZzcAWFYpEx/7wpXUBfnZrycWWXRlFJXugJ4wYuCY2uHotDcQa8/UpVPcLynNuX2D7AWfcbAEOLNUAzRZguTZ1ZN2xJ0nX7VT3E1UNDnzEa4ZQzOctOa/G3mvS3xBqxibyrT8IfnRDGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB6549.namprd11.prod.outlook.com (2603:10b6:8:8e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.16; Wed, 18 Mar 2026 15:39:51 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Wed, 18 Mar 2026
 15:39:51 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Guangshuo Li <lgs201920130244@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Piotr Raczynski <piotr.raczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: fix double free in
 ice_sf_eth_activate() error path
Thread-Index: AQHctumHXwZh//vNKE6uvvoG7VQu3LW0bQXw
Date: Wed, 18 Mar 2026 15:39:51 +0000
Message-ID: <IA3PR11MB89865884A2D07CD9F311077BE54EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260318151028.634828-1-lgs201920130244@gmail.com>
In-Reply-To: <20260318151028.634828-1-lgs201920130244@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB6549:EE_
x-ms-office365-filtering-correlation-id: ade64800-4bda-4792-57f6-08de85049816
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003|38070700021|921020;
x-microsoft-antispam-message-info: 6IPDPf8G5dxux0+SXRHaBd82wb3o1rR13wPzs+4lOFOGKnNNZ6Rcey1j4P1K73f4ZnOmoAj4tTjhWv0N3sB8ds30RWFMQqr0BsCsOEit/KGm+nwYDyerXsyy1lebYT1sqBRz3vVcNKUe0zFNfCFmCR9PYmvo4wz9n/5Ixir5oJPJpPa5QSW99E+47ejkaaJgNRMywPMkNeACyc2m5cOkyone3nXo0vPqKjxRA2f120DYVpBbawfNRIT2jlXAZMT8HUzvExtGD0X+e4Bo3A7I9W0RgnghHTdBhqOv0AO3g+RRfrNjhyt4QRzrFJLYhmfWshYvfVAuFlTUdZ2zgQNFNhOYoUUVGXylC1Ca4GlD5pKIExvXLMTdxYYOCOcqgv6RULtIAb/C3Obs16iV+ImlzGuwUyVLrYDxH0wZEbDrz26TyLlhTUshQUu4TM8yzVAczs4mDvXgTzar/9i9eijjGgdy5IMXTLgdUnPlvxOb4ZvVxLKaixSs2z+wHbp6dYMr5ByseQjtliMbfvj6eEKAqQPbBhKIhyhxeZB1spLXvH1NH6cixu+VB/ATd/1QayHmDsaUz1D/XTey+lhoLYAUqZ0tOvJXVIwZklGsOzQWE1bOFRHzENClaWtTMXYynLSp3LfW8FHUPFvM1hxGjvB8zhLXr2f2hKkVGaBlyaQlRMz5EoArDtXNKbu0GeQR/MdMKgeLIwG1RjUGSEDS5yJjO5RG+Zr5FiiGCgBe5t4f2sw+x/jW0W7YGjJ9/+4ySLtVMe4kpoF9k99Te9t/PWmQ5auQ/UXkHMRSw2z4kF6G6ASuYNsvIo/88jc3+w20iHx6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BomweA/wwASJgiDkGS9cGcCOMk/ujAgFLrLWE48ZMad0Hu5i0fH4wACLnnuP?=
 =?us-ascii?Q?BIPLot3V96TqUyQUEV1SdYDK7v85P3+KFM0kN4dbiSM0o5LyEUAe8Sl9nxxK?=
 =?us-ascii?Q?ugf2fmQXF2RkJ5RUDu8u6Ua5SiWBDopfppJm0byiQBp4L08v1pOh7Fw5cjbx?=
 =?us-ascii?Q?NnieOqAQ9fEPzWIgb96E55Y6IWEkYiAAk3ug6u4eUNQtJE2WhtR9lF/G5GX+?=
 =?us-ascii?Q?WjXJYm7L62cT3xuSTxtVWeDzfKft/f5TghHWXiZMsggYE6oiBhS44titIVl0?=
 =?us-ascii?Q?YiOaJGTpJbzDlqTaekdzF2bEILt97kWYN8HV5MT8Cpzv8+Ym/aEMvI59AqLV?=
 =?us-ascii?Q?2KffKz5rGHkokKMJXfLOCj9ENgYulhDfjl341UZL+Qux2wp4HQaQblk9KSz3?=
 =?us-ascii?Q?wlkGtlaIBttjGS3TQamUD1ZIhhObf8m5YKo4Y/SPyae6V5nxA1aUKy/kOHCt?=
 =?us-ascii?Q?V9rMJdamNeTGdoilWznIiBvUNJWTg00xxDqrvCPubHPnD/T+a1KE4kVlATk0?=
 =?us-ascii?Q?7KX0EeH1Q1okNmLWAAjpG8k+QhK84+1LN1+EYUT3YXaKIMwI+Vxo4Dm8+lrP?=
 =?us-ascii?Q?Hlc8KN7vhBmkAA70jFgxpP4+oKGebA1INpWjYbdeXsY0LZckqMp0UFBEZB6N?=
 =?us-ascii?Q?s7BlelJySjn2QsVwkYL+AN2Mtsqol/sTeJs5GE/Y8F7kp4k/yfy4IT9FDa71?=
 =?us-ascii?Q?h7XkZnxJhbEKIA36H9P9J7sS5LfbYSKopcydFr1/O9CLlwFQyNOpP04kS0OV?=
 =?us-ascii?Q?1nAno53p0nkDRpTQXxP1IjBSmI0JzMCKSf2X59ove0/Za7IhQRab5pGqnQxj?=
 =?us-ascii?Q?c92z174ONKc4ljtgkEddZ7nUaBvICNGj57pYuChrW7IRpVBgdW4ge1N6E3ne?=
 =?us-ascii?Q?BD7tw5BZRVLlGXoLnRZHaR48OWQSKtBjTpxckexhAF8PczqZrPPyc7tWZYI1?=
 =?us-ascii?Q?l/T9araQPwcZ6yjicH4mDqgxtvbaH2eSIuKYGJyawmMBdJTxLPNf6HKh9LjP?=
 =?us-ascii?Q?yDzT0VfsS11Nn5o1vIYNbCMVazo59F8zJq+1RVKcRCCu5T6WdVWr36R5MMR+?=
 =?us-ascii?Q?1ApJfP7e7kuBOXJ8flGNDKJfjyig/Gzs3nv/q0smjb/sfoD47wtqZgUKjqSy?=
 =?us-ascii?Q?QYoQ1YvSU5sgFBLI0adrenQB8kN0Mn1iuL2fg7VbsvB47pC5d4ycFOH7Hs0y?=
 =?us-ascii?Q?m0I4MgrD+7CpCTeOtvJ3Lw3QCnMB7w4+dkIuE64twyKzt/1C6bGn3Dv5Mx89?=
 =?us-ascii?Q?nwFCII07hMDshfpL7AHDCs/r31/czF5xjIT8x0g/Cx6Ox6IgF64lobGu9PNg?=
 =?us-ascii?Q?fs9UbMZ3Ifuaed9fR3OwcZqXg6ZZHt+IbScpMvxvEldm7UXmcw/pH5mMHz+M?=
 =?us-ascii?Q?1n3kv9ByZ0187E0mUkSHQbt2wG7M6f5BZ/Wa6u4WzWeFb5SaSvzDtXOofN+Y?=
 =?us-ascii?Q?e/9aPmeCrfZytNiU8Gb5P1yF5zmKoGOg7YnKhtuKbqUqwsQ9SltGFx3xaR6Z?=
 =?us-ascii?Q?y3pgpftULNOWWeh4Dvi0Zm3Eeo28oRmBa4sJK4kJdIQaOCCqehqx58LTQPp9?=
 =?us-ascii?Q?6b7j0OefcgoKxPs9dckrDe8cepGTtNenht3lR9Xy5MbR8FfIFQO/bB2xNM0K?=
 =?us-ascii?Q?ggL5fA4C/1Gn39bL8Nvey+qpB+5adOTONyi5oHM6cbQfdYi+mzO+19pUYbaf?=
 =?us-ascii?Q?csIJx4qE4NqmplFMtFNXiX+vfkWwW52L0BQbLePvYosDrAkwp+VpRd3HgJED?=
 =?us-ascii?Q?8IWwJfNAqPCIHl2hAkAWl8CBvl59sWk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hJW2gBwwGDoIUwOqlUCq35c9Kb/RLwTZEq1v2Pnzhr15RlgG8f0JeRcf98+f8JUxvXvUZKRqhF3LQDkZFyOARUTELYLrUD6tpxDmxF8YLYtH4SEqWn3YLy206465jn8w8qdyWG+hkUQbIUXKv79u2Ykole3HRklVNtMK7ygKvUeleeklTwrJXlzmoTSawRNQWKBRgUzQ2/ebpSTr1pWZbO8b+lFVCI/NGuBWXSoPwdtlj81xLnf2AMxWLNKg9mxDZQGCwn4xiPdgY6Q7RhaFNAbRc2RyfnLSIpbMtc/0Z/vZMMT5MfJ43BBrdBbYcJZlOWLH1rr0OpACoCRvH+EB6w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ade64800-4bda-4792-57f6-08de85049816
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 15:39:51.0275 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oqHUu1fWffH2B3+ezMMzGvVaG1TfAcGyn6blpVET/FIcekIvpFrSFuN2A+YD38xqYvjqT53NP6hhW0zdEmtyM4FR1w9MSBiKiTc5P2VhqVc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6549
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773848396; x=1805384396;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OQ5RS0BI3+mw1lTGnDPd9N2LzMnQiBWLl0/smE+qgdE=;
 b=M+x7vcoY6X/zcdhSMYWvU1AOlROxWJWm7NFxVlCvdSIRCGVhShxfbjVD
 NnFlJ6C8jtB6Z+oICQF/Prz3IXhvy/6gm+YoVaf7O+9WhLEEWQtn43sKz
 RbWiT+MXmti5TfI5utDXLA8suUgpP34qNYhaSiBBgh+ldsSt7l8xjXtj/
 vHXZgtMWu0jIFdruVEkjUqniKOA6+4twY0YNRTW4en9jY+BOCWnBCFcW2
 +YFdSdvcdPKKt4b1rBCtNktHherj8A//4pHic3k1KlDF6F7gyqzArI0gL
 rSS9AQM6lKTbq4B0Er2mTfU8gXltzrXd0K1rfwJdDqMC6HN0xPIulX0bR
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M+x7vcoY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: fix double free in
 ice_sf_eth_activate() error path
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:lgs201920130244@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:michal.swiatkowski@linux.intel.com,m:piotr.raczynski@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,linux.intel.com,lists.osuosl.org,vger.kernel.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,lunn.ch:email,osuosl.org:dkim,osuosl.org:email]
X-Rspamd-Queue-Id: E69262BE69A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Guangshuo Li
> Sent: Wednesday, March 18, 2026 4:10 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Michal
> Swiatkowski <michal.swiatkowski@linux.intel.com>; Piotr Raczynski
> <piotr.raczynski@intel.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Cc: Guangshuo Li <lgs201920130244@gmail.com>; stable@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH] ice: fix double free in
> ice_sf_eth_activate() error path
>=20
> When auxiliary_device_add() fails, ice_sf_eth_activate() jumps to
> aux_dev_uninit and calls auxiliary_device_uninit(&sf_dev->adev).
>=20
> The device release callback ice_sf_dev_release() frees sf_dev, but the
> current error path falls through to sf_dev_free and calls
> kfree(sf_dev) again, causing a double free.
>=20
> Keep kfree(sf_dev) for the auxiliary_device_init() failure path, but
> avoid falling through to sf_dev_free after auxiliary_device_uninit().
>=20
> Fixes: 13acc5c4cdbe ("ice: subfunction activation and base devlink
> ops")
> Cc: stable@vger.kernel.org
> Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sf_eth.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> index 1a2c94375ca7..ec6020338b9f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> @@ -305,6 +305,7 @@ ice_sf_eth_activate(struct ice_dynamic_port
> *dyn_port,
>=20
>  aux_dev_uninit:
>  	auxiliary_device_uninit(&sf_dev->adev);
> +	goto xa_erase;
>  sf_dev_free:
>  	kfree(sf_dev);
>  xa_erase:
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
