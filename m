Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 213FEB46573
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 23:25:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE51D611DC;
	Fri,  5 Sep 2025 21:25:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MwNOhLONIUIh; Fri,  5 Sep 2025 21:25:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19A0C61279
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757107533;
	bh=Ze2Uz/V41Ax/+hF811LXW+7fsUlA0m2svyuZ1CSWIHI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DxBLihmmCIb7A7QtpMfqIqb1ykv8ngK3QGAy/UEFEOOYFrDG61Or4Kg1oTutNbKR0
	 L31l6uG9w0AYgZnehArzbEojzD1T0ySCNX43PXvI1shBNWfFTRqK+X7Hgu4j9OXZGw
	 0wH/I94ATzrrIB7M5nD3f4C/5KlcqFH5gxcXvMQKjkZnz9PwOCytHGcQqRm8SU5Ycz
	 If0Mg5Nx+xFzNFvdmSog2CC4lWQ3oCAlV7SO1mg8oqzJyJHHIg71vKxfQfmzBvTOuI
	 Z2AUZRJKFZQC+5XBBPCfVwTt9vlh4VSmbBpET5j2YkMm2bshqlviJr/WvU1gkj4YhL
	 aKpHO8J6/r7rw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19A0C61279;
	Fri,  5 Sep 2025 21:25:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 01CA4CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 21:25:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F1AA1611DC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 21:25:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6eXtFATTOXRu for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 21:25:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 59DBC60708
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59DBC60708
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 59DBC60708
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 21:25:30 +0000 (UTC)
X-CSE-ConnectionGUID: 3HYXv0r5RGGZYjbVPSnBKg==
X-CSE-MsgGUID: cFebPhHHRxa2wQjitqD5rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="63292214"
X-IronPort-AV: E=Sophos;i="6.18,242,1751266800"; d="scan'208";a="63292214"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 14:25:30 -0700
X-CSE-ConnectionGUID: FgbtADYORlGWayxIVOlWPw==
X-CSE-MsgGUID: H7JTmtfpQymMNZH5lM3CuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,242,1751266800"; d="scan'208";a="177465058"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 14:25:30 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 14:25:29 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 5 Sep 2025 14:25:29 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 14:25:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GTpymx/2c+0EtyulaAn/xyT1LGXevhna9OAV0/g108MnEiBb8j3Pp1Xzo9WlIeC94mPYhVls6r7t03D9jvw/mLZBY8kols9OvpPu7wyHUXHVkADzOVZHMZnqnIUbPt4tIijz6n9x2n6DsCrpYIMC0//uYWASQqUwyW4jrJ97iXfRaLiwCABn830LlkBjR/dku0i8QH00CpKz8uHpc4SKtSDxdm9arbuDRmhqhrR52tzIxHLG6dZzTW6GACBb4Q7xzacTb+SOfphf8/4wRrQcciIFaFrEnLmuZmVW3dNCYLYtlKCWhuk9DpdK5LiZO50j+yg/JiTLg5OVl88NKiEV1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ze2Uz/V41Ax/+hF811LXW+7fsUlA0m2svyuZ1CSWIHI=;
 b=UgmwpZh66mQww+6br7Y05219sb0/QuglvubSQeGMKL2HiuOTFRv5IaPDRjRyyyXT+k6XES4gBtBw+TJ5wAvs03bjgm5pIlqsvpG5oQBIZCMsHG2y9L3XwrfdSPeiB9yBFFiUGuLAlPRK5imNw2rgMSVzlhloPPkWxJSoqMjUb/aIc5IH0G7gly9KYOilBrWmSavudDCvysmmC5uwqGl+OsSsCjT4hRX2frw2oNZhyEUvz/FWE2Q5zqn6yjNyF/V9Z2rDGuOm+PbMRQMFUFwTnJVD/jcpBlcMJ2DANF3FXOK0Q79Q2tWfM5pnxCRKkzfPpD0Jn/pJI2OfVRjF5zvZbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by DS0PR11MB7999.namprd11.prod.outlook.com (2603:10b6:8:123::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.18; Fri, 5 Sep
 2025 21:25:27 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9073.026; Fri, 5 Sep 2025
 21:25:27 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Simon Horman <horms@kernel.org>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "decot@google.com" <decot@google.com>, "willemb@google.com"
 <willemb@google.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix possible race in
 idpf_vport_stop()
Thread-Index: AQHcExhmTyFNAC5fc0mOWDrd9tAKmbR2lSwAgA6bEAA=
Date: Fri, 5 Sep 2025 21:25:27 +0000
Message-ID: <SJ1PR11MB6297E666EE767C6F804BFC539B03A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250822035248.22969-1-emil.s.tantilov@intel.com>
 <20250822035248.22969-3-emil.s.tantilov@intel.com>
 <20250827142004.GD5652@horms.kernel.org>
In-Reply-To: <20250827142004.GD5652@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|DS0PR11MB7999:EE_
x-ms-office365-filtering-correlation-id: 5ea205a2-4cdb-49b2-f1fd-08ddecc2bbd1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?xTdPlWNZ+pmszGMluiuXYRWaiWlsc32mOyT66vN7RC481R8vWVysNUx4Rq4F?=
 =?us-ascii?Q?tdlbKenHhIK3P73flkbPcSkRJEi42UA7X6ZUDvWL34D6TpqYdjO+bztFjQrl?=
 =?us-ascii?Q?lpKgIFftK7dF74r6cjZLKBpy1V8AywVpHJm9MLueNeLqZxfLrb8iUXLQ85pN?=
 =?us-ascii?Q?EFKBVoSnZuqV7NKO2Q4F3pHvRypwuW+DwQw0AGPhAYaJo3PgLlW/GuOBMnXm?=
 =?us-ascii?Q?rwbkAFR8n33E9bfdZcgu4Nn/pqWLnC8uyC1+I5ZwGm5z5WExQxY0/Hx6mTGa?=
 =?us-ascii?Q?km6IMa380eo+vxco+uC2chxUw2W//vlonl5ArHTwqQIW4x147JmpFVsa59Ku?=
 =?us-ascii?Q?sqTqaL3iooAK4OI1xgdwDdcg5r0jR6a8mt1ieG9Y7XBIpNIKWHo581t770Zb?=
 =?us-ascii?Q?rwzFKlhWVnIFAFb4LerrvofrWXeRYcWrcs3RJ1uVsNQNYoVcowtck+w+alrP?=
 =?us-ascii?Q?F6BWP8V/qKAhiI0xC20WY9+lBKykDXgSpRbe502szsal1qHhjwtaIM86OHuq?=
 =?us-ascii?Q?gaudfijnKZjIfdH1AdBgLwoccFDiLpDHfL+Y7FfLYs9yXjaVIcFJMkfkIuhB?=
 =?us-ascii?Q?bXmICzs9zrhrGpLRMYUqIC6/qfIWgz5ZNdbwl8R71rLk8U3K2Ox9x5nBT9Ss?=
 =?us-ascii?Q?6qrFBMwY8Z87rxHqfL6vu/GK+1DwMQ7Yc9MZ7bLfpvI7ku24GBtR8kEjbeu4?=
 =?us-ascii?Q?HPYJEqLq1kU4OL9rWIzvAWCvK7kl2+sf7hSIAV++XgyVjlKYRdYlz8MxCd8m?=
 =?us-ascii?Q?96u0KJaPvBBbFcUTnCm29qMDHePIRNU3rkc60is+j1IB5oeW5roKe2Mzsvom?=
 =?us-ascii?Q?XcWTisZGRq61dS2QK+k81Yq/UCl1kwpe8t3/m2UVtNy5LD2YojGnfNrTpPv1?=
 =?us-ascii?Q?BVpGiyX93FNaKNy51EtJNG/TTGQytzQFrtEkBfwHX9i3zSCAHTFRD6WxI3uN?=
 =?us-ascii?Q?PPa0+P//A3r5HeLAMQpKbX4tGPBKuaFjiOaYkKgmhNUSeBxIhs/iZ6Fu6L7U?=
 =?us-ascii?Q?tSRhZS84T10ICEpHyigyxUe86IeLmG5cnZp62OfCr9PkhNrczwxhqwMvsV5P?=
 =?us-ascii?Q?ExgFFuZx3lwA0PA1jzlx9H2AK72awx8L8EQNugCxLW6Iubjy1M+wAfoAP/7d?=
 =?us-ascii?Q?M1T6c7zN6O7GOA3iXbpc0rBdcQ/3E02OAjlvFTCdwz7p0FZJa1CArSKNgr+L?=
 =?us-ascii?Q?fHU2E/wHV5WldkwDxSZdNzOVJZgSmKdJCFa79N5eIt0xTjBmftnmJFnU4juX?=
 =?us-ascii?Q?+aZTtJi+cMPPoRpTzrtu1zwg90m4TyZPXJitmFGZM7WSqB/jzwIV6vfzhT7t?=
 =?us-ascii?Q?BKRIDKwR9vUvDc5eq5JOKv2xWYwwQRGkB4oco5vl3k7diDWJYYqE1j4kNQ0N?=
 =?us-ascii?Q?AywAloVs3Hs/GneEcqoHffNtrSQQ/Q3pB0KBi/mF4bqTuUmyXjNKNQYNWtTR?=
 =?us-ascii?Q?wb4wo8hEvE9MZNMSoy2KBnpscXcHNX6X6GFYGZ50Mw/eYjgQGiwcVw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ELIUITrdbYbBlVjWx4OXkGSYBMLfsIEs+cqsBS7vRiHbw2xmJx+vTazndLAN?=
 =?us-ascii?Q?who2JYfP1vTX0AUeGHltxD4keQJ6w4uRoZQx100uQNwpHeEO9rWtFysiwSUi?=
 =?us-ascii?Q?PWBRDyKdGoGwn8f3XrnPlud5iJVa45EP9zzU3D+CdwglacDMWUFeEFBRzZvz?=
 =?us-ascii?Q?S+AY2WGRRG/gw5b3WTq0PSbwf1Eo/Ibh45kyIASzn3F4ZhGXABS/XEuDMf6P?=
 =?us-ascii?Q?yd9sUJF2WPM4Av1zGTKyKMQS8dGX58qrTpFVEtR6O7rpWq4L5r8Uxfb0nNdQ?=
 =?us-ascii?Q?1rWzLi6KMRLAecLpi2Y4UIhQhsFQvkh/lQZqPgDYE4ISBxofVVX6POw1wN47?=
 =?us-ascii?Q?x6yqcBgUofr0niGoL+LZW2zV4zOCz2qWGw62pH2NxXzbb5GuaWdFFtOrZKhI?=
 =?us-ascii?Q?dnUGRrJgihLgdg+0BxA/f4PZ2QOgoZZFqKRuL2HpEoMmA2iL9h7ZiziNv06y?=
 =?us-ascii?Q?XKXeIi2+3SglcLBrYd92BR5LK9E/j3oakDM4fzechGeKZTgzKS6hZLYpUDxr?=
 =?us-ascii?Q?kuoU4HVAbE0UzzbcL9R6A+MCwPvaNJGKcpElhrOJTlmNYg7z/ZZw5mqTq+8N?=
 =?us-ascii?Q?zkz6lejN+0QOgQWX8r3+ZhXlFroyth9tmMG9cf5PgCU4XzEAwABjg7t9B4zP?=
 =?us-ascii?Q?Nys9sx8Cgn4kO+j9DFv9KKnDyrTcGyra9jQfRZqZyDiQWovNdeH21VaoPo9U?=
 =?us-ascii?Q?hejbFINztmgLFPm6Ppcfvdy7NnU/PntlF3l6bTsw5RBAqkFwXrqCxi+kJwRi?=
 =?us-ascii?Q?8XqG9xV/6bSXYZe42yEQ0rm1VD35VKBhCIoyaHSFOat9ZxrQRX0ohSL5StH7?=
 =?us-ascii?Q?is/ll+mcM96oIM/TuXbRFbGM0z+60ciGv2FFcO9oWT8PsSjpocxfSiNyh0ao?=
 =?us-ascii?Q?2LabDFK3QzkS+8B3XESFuP9bbgZ3Mpy2xblbRX6epjwlLHgxeaQjCMpvbGRP?=
 =?us-ascii?Q?LQjFebYBo4hBAk5EvjqTis0j2asP7JZCBg5cxVywuQcTS30vLveJ3MxuzpRk?=
 =?us-ascii?Q?oYKZUUe/7DgxUIGFyb2iPGqRhYpEL7tWITEQ3vdhuwbSF40hr1lLpEXTA6hY?=
 =?us-ascii?Q?Fk8L7jrNO/kH/ugsr+l06cFxz+AOUrwmyQvScWgmi7u+hdR02eY3zXv+o/Wy?=
 =?us-ascii?Q?ietG0No2qM/kTkx5OpctEComZoMeGTHqhZyyBTO3WYYNwSYo2dbejX1tbmGW?=
 =?us-ascii?Q?F7/7FInopsaZUs6ZH/PG7YmfsTinVypiQuC7gsW7gv8aDKHZMKisi5C3iAId?=
 =?us-ascii?Q?Q9EK9iek5aikpMoUaXkMpH3w3M2swIOmJ8xdGY8rOCtRxD7eAbEy/ME6dn/d?=
 =?us-ascii?Q?SlIWHqO53cGwbci35GuL9fK0d7czAF4MKmrqDtlbH3a3LVKOItTwPS1NuJer?=
 =?us-ascii?Q?NZexGbrYPxsNBHA01KyQhFCgJSMlV4XakfUnH9ES+qB7fPElzSg2ZUTMgRet?=
 =?us-ascii?Q?D+jrfRBgUkbly37qg9JQbXE8wWUiVEEKjjhusqqoyzHNjmdwFl25xv9jwtKh?=
 =?us-ascii?Q?X8fQiLPxckIZhzOSU9lH2e+0goBdhllmVafn7FqndZoWeCCr+TUAXiBWnMnY?=
 =?us-ascii?Q?lgmI8FMoSUpQ+20hP2yCG03gAW2MOQ8M90K7kAPO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ea205a2-4cdb-49b2-f1fd-08ddecc2bbd1
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2025 21:25:27.5155 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ciYZzMkYLLXdqix4ispVzungU9aYi4CMcKhCo05ngBQnApFima1+lv02aMKITX4w/KMyokSukuD+te1TJtNi2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7999
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757107530; x=1788643530;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ze2Uz/V41Ax/+hF811LXW+7fsUlA0m2svyuZ1CSWIHI=;
 b=Sqb8WWM3Y+6psBCgc8IMVD8EJdiy3FXszeNjGBr1p3qkKLCsBhJa/o4x
 NyQA4aPvGZfxe7cNBS9giL6yNnboSGukeKY/lkfQuwwJoeP006GaQbbhq
 9THYw5W+0yuHlQQ9UOP1HOytLc9Jr4tRlcoZw+jZ69LNRkE7VSdZ6uOUE
 JzynJOR5/bHV4VW4nTfF6W3P4BpeskpPMkDSghstdjj2aH7JNSEMREveU
 ObFoT94qazD0yBp3+kAgCuAYMj9IdF6BLxFNhmrcVlCw9tjnLY+ciXPAv
 muY07bMo3N2/fu46CPzt367s8yPSRKqE9rrSKOCHzeHTdPe7Do1OUL5lH
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sqb8WWM3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix possible race
 in idpf_vport_stop()
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
> Sent: Wednesday, August 27, 2025 7:20 AM
> To: Tantilov, Emil S <emil.s.tantilov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Loktionov,
> Aleksandr <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; decot@google.com; willemb@google.com; Hay, Joshua
> A <joshua.a.hay@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix possible rac=
e in
> idpf_vport_stop()
>=20
> On Thu, Aug 21, 2025 at 08:52:48PM -0700, Emil Tantilov wrote:
> > Make sure to clear the IDPF_VPORT_UP bit on entry. The
> > idpf_vport_stop() function is void and once called, the vport teardown
> > is guaranteed to happen. Previously the bit was cleared at the end of
> > the function, which opened it up to possible races with all instances
> > in the driver where operations were conditional on this bit being set.
> > For example, on rmmod callbacks in the middle of idpf_vport_stop() end
> > up attempting to remove MAC address filter already removed by the
> function:
> > idpf 0000:83:00.0: Received invalid MAC filter payload (op 536) (len
> > 0)
> >
> > Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Reviewed-by Joshua Hay <joshua.a.hay@intel.com>
> > Reviewed-by: Chittim Madhu <madhu.chittim@intel.com>
> > Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Samuel Salin <Samuel.salin@intel.com>

