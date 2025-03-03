Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB884A4BF16
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 12:43:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA170410AE;
	Mon,  3 Mar 2025 11:43:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XwQK3bINbFnf; Mon,  3 Mar 2025 11:43:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E31EE40C86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741002221;
	bh=PUZeKhGOld8s3iggvvv0T26YUSOtW3FbOD6nVyMuTvk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=blZ8PHQabe/9Vi0FzvescQmL6rS+0IBUe8j+kFq+5Qg8QGMy7EdG1Bq8+6THpGAaO
	 yET9o5inZcoZE6QdD+aKeIWyyXZu/w9eQ5fYX95E4NZ6XurnsPbJ7W0CuJFt9BB1S6
	 Eh1FyNGjOcCmbTlqhH3V5TYW3rntEE2OLTEj+bgu0VTSOtE8nAQJZuTXgZzCVy1LEx
	 lgTcBG86Kf2o4U573OgL26RbZfnUr0dGUzYzTyWory403gzV68LlGUuuSpRhzw/tqW
	 gG8p1yFa2zd7Am+R832OZg+W8f1sgCYKXN7aVlR4YiBYo+QYHoXwppmaJZtt3vlLQx
	 o5VWlleMEO9nA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E31EE40C86;
	Mon,  3 Mar 2025 11:43:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C0BD5182
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 11:43:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE7AF40C91
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 11:43:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GF83mKrT4kHI for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 11:43:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2A8B540C86
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A8B540C86
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A8B540C86
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 11:43:37 +0000 (UTC)
X-CSE-ConnectionGUID: 5Bv3EAU6T6SP1WSxgVBWTg==
X-CSE-MsgGUID: T/kuU4AKTqm17zkweV7dyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="45799860"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="45799860"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:43:36 -0800
X-CSE-ConnectionGUID: GfbqF5OESTiAJXmfRapiWA==
X-CSE-MsgGUID: 0ev1zhh0SKaw/RRfkMgBtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="118168876"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:43:36 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 3 Mar 2025 03:43:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 3 Mar 2025 03:43:35 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Mar 2025 03:43:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zFU+DPPLrFQhLRBCjw/i18UxyK5NV4VwJFf7zRJtIIfyAjj2sBi1BSJl6mk4l+kiFTklxelHI9AVnA4NRO4SZk16KNGrarKQycY/Reih3ij2PsHNNdv2Jq8Nni6QjAfmL24XoLIyI8wFH2z5SaUJ209A5qtwydVu4VelvW/39ajdIwTxB3b1iQ15G9pAtia0VGv0f+Jq8b5QblSLrq+YdOujyF4UK1bF6BNwPC3uEC7P5trTWUxOi6PGZNF2ViuHlk+BTWG50Rr7xPVH9eBLOf9dcLFJtI9ZmEOSCb+94uRW4E1QhSFKA29r9jUxWWIwlvtd938P/nm7EqnSCOia3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PUZeKhGOld8s3iggvvv0T26YUSOtW3FbOD6nVyMuTvk=;
 b=dUmV39qTDQqBc4HItLJv1qVbYcfNmwWmcBtrC+Ah8Sr+v0nf+hSkad09ezn12qifVQ60o3ge/k6iP5r3S/K/IEHlRSe+M0GrPy0k3aBQ63h99wDAp5Fvc7a/FKxS8kK+b9Iw5XcHKGsVpHNDG+5Zffoxy6r9MlkSLFx9LhPWOKnAcYGeZvgM4QLBktqvQbJKcRMwVKTIv4NrTE8s6pe1kw7zZX4nNfJfoH7Refy+YafVK2Uj2RDqF4KbIFekVzR/3JZDAZpnLdmIsz2kQSMwdg8ibYHrfSDIlBoFlTQtAcPMhGCPoQhxMoK4RjJfy3SIYS5CcaHZZsH7x9OMumq/0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by PH7PR11MB6056.namprd11.prod.outlook.com (2603:10b6:510:1d4::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.25; Mon, 3 Mar
 2025 11:43:31 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%4]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 11:43:31 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 01/15] devlink: add value
 check to devlink_info_version_put()
Thread-Index: AQHbhFjsbXWNxUVeZUGwtBPZRLu1U7NhWfwg
Date: Mon, 3 Mar 2025 11:43:31 +0000
Message-ID: <PH8PR11MB79652A8A6EC0810B8F31C252F7C92@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250221115116.169158-1-jedrzej.jagielski@intel.com>
 <20250221115116.169158-2-jedrzej.jagielski@intel.com>
In-Reply-To: <20250221115116.169158-2-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|PH7PR11MB6056:EE_
x-ms-office365-filtering-correlation-id: c3cda8ef-4fd9-4e0d-484d-08dd5a489f71
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?6Or9dX2F+EvLuRsEITMLHxkXoBMbZg4kD6HpBIWBnM2gwtxjsU+nrf/ua63O?=
 =?us-ascii?Q?NCQGqExniul1W+xHUq8u10uom/eZo7DJMwFNbfNLglY4IKutIYZFiNB/LNEA?=
 =?us-ascii?Q?Gh3exL82BtC89W9krCg7Mf94UWBggHZn8zX25WE4MPFNr81A/rlL0evFH5Rs?=
 =?us-ascii?Q?2W3E9NFmTz/NSWuYIcBCc3fPJ1h8nTT5Lc1ylVHE2ejNJyUl1+IpSJfLtlGW?=
 =?us-ascii?Q?2+3lHSPppEl5Ra5jBcJqmUnNl0C2D9hZudXaFxvYr4JXPpx3Z2K9pExc6zXo?=
 =?us-ascii?Q?J2mD/rnQWL5aCkA6KebgZSmRcgF0dqlM8sqxbd+3dUfmReGxr4VhCA8hcLBF?=
 =?us-ascii?Q?yQL3dUJ0JILdLsnhhBYecGUZ9pt6mzLCSYRad7tyXi99TE3RGlOUGl9J93A3?=
 =?us-ascii?Q?vQ6ybAyf43YBUVMYiX/qkumT7UAe/QI8vTkVv4iOXG/Dp6JGc+LMCEv9TERF?=
 =?us-ascii?Q?o1ksgggmyZYTcKTcVxhGrqR9m/gEsYLpPOSBQa+6rqBrshkq6Ylca5oxxXPP?=
 =?us-ascii?Q?ReRbGulhc6zY4AATyBvVOJ+Pxk+uYHRyUenjD3E2g2crXQrPZTtnEI73Z59r?=
 =?us-ascii?Q?tsUefn0AqxdSjOvxBRQmFs/IoXDG7rherAJUwu+nMY3zHfMq++eIzirVQIfB?=
 =?us-ascii?Q?csTaqQ1h9v1C4LAYi5JAFQsyb9MRdpz/SrWO1RVWiVybU9hjqzUJDdy6qPcQ?=
 =?us-ascii?Q?S4VsZGOuk14nJnf3vcgDK5R0yV5Fcbm/42JpVOKAtnT9290s5AAjO0lVvVXb?=
 =?us-ascii?Q?tCV13qrXG7JKjpsKOCv8JEcoTmU0nEscQST1XOEAX8+Do3sm2n9zGFnT5cRl?=
 =?us-ascii?Q?WJbCGJpzUWIhmWCZaoGleo1YCsyUDFxsClhuKwvJq3MOUNwpE1ubWYqXGsIP?=
 =?us-ascii?Q?rPw6EOmn79tCL1dPiMiiEAwStnXKGoIDXm70EyIsRPIywYlh90DUwkVpmNb8?=
 =?us-ascii?Q?tojV/kg13mhsEOKw84Fpa+OF0FK5fN9HB/XRumQ/qKkKhqo9zG39skY5k+oO?=
 =?us-ascii?Q?xeihHjNzmrH0UfmhcipJ1Qk1ps5f/69Vv+Uv5U6t1zj/JYCsO1po0yPXsOXN?=
 =?us-ascii?Q?IIZvJxLtHsS0TEjrPaar4m82v5aLIBijOSqsdmD+cDg0ZXreqVVRKKzbI85E?=
 =?us-ascii?Q?n6YILbC4M1FffRkI51GYYZrFnKA8VKmvn3d29O4A6ic5CU0xSaqQyN6A8ViR?=
 =?us-ascii?Q?ABxguG47h9crkt+Mnq8DQUkGLMo1ESjNzpJz4O5u1US5iFqlofqvMz38cVkv?=
 =?us-ascii?Q?7jZnqS92iB57aZwUFEtj7RMr90vmsTji6ishYkIrrJB9FkU8oj0vUNomOOo4?=
 =?us-ascii?Q?wAfs3pxExrxNawNd8TOXpyThyiacMMoA8MFRSU/JopX2D7XKxdHorQGYrgjg?=
 =?us-ascii?Q?IKEl5/8QNoMWhLmZCXn9lv2Nx8yWVSk3imvL1QddT2F7Nz+rNGK6yLYmywJG?=
 =?us-ascii?Q?xYCQUKbbak7SiZ1CQEwT7kibxZteXZ/H?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Solikg3rsSZKdF6BnLgnSyoGluUQ1N9DPRpic2vsoEP+CB6yNdWJmk05rtRL?=
 =?us-ascii?Q?djBdXValRGaKHoGhye9DeaLpagfCYI5DPz3EWqhJsZDRvmfGN/IjfdwbdM2s?=
 =?us-ascii?Q?ZRWB63wJoAinGK+p0/shQxi85pWEjY8GyJ8XG/qBXRGP9iFlHlkj9Jr2DGyG?=
 =?us-ascii?Q?ym9mDWC1RQ+XMiBrD2JIAJipCaVi1OwZLhx/upIN/d/t7kF5Xr7+O2dhUdip?=
 =?us-ascii?Q?FObq9kFIa+iJxkIVW08CPwzcntSKuka8FfZIGwJRWDcMPphQGZLWMmSlMH0E?=
 =?us-ascii?Q?Yw0f70GT/Mui9B5kXbTPbq74qiYxE2Ylu5H87kSU/batH8DwXn50j+Udw6xY?=
 =?us-ascii?Q?aXhOZIlA/t7adPQfNwkGg2yNsqrDhh16VMY2C6QBjQur8b1wmHJVlWSYDc4I?=
 =?us-ascii?Q?e+lmgIro6dM5ViwJ+u5JNKu26bj6auB0lJaHLCiy63X9d1oDn/S3+NxDfWbP?=
 =?us-ascii?Q?RQpPwXto1TAtWJpn4aAa4T3cKGe94hhIqU5e9ReShcZGOgO8tVble1PYdbep?=
 =?us-ascii?Q?7T8JxH8Zl1K0wl5GeAHu/h5R3hQuKWNEH5cMglRcrrRHCG2w2cT4JjYEyrtC?=
 =?us-ascii?Q?yiS55vigc5LPFG1+4WfbEzTWG7s83ZglPZMwh/fXNtYm8TuN8ZD5wADU5NIw?=
 =?us-ascii?Q?YI+WmACp1atf9h5FlEYHqR7T6Yy6wK7wzdWAi0WRMX/LtUlQLtG7lNkYnu+W?=
 =?us-ascii?Q?OMRy+8ZrNlIop3XZStJCG2i5n+YGznxxO/bjaiXX2CkgjdTQQyinyrR7HZJa?=
 =?us-ascii?Q?793ThiZ5qU9A+GUxmuRDZ+U94reEU3zq8NGxItxxFbEfrGBEaMdSTsXtyvm4?=
 =?us-ascii?Q?OXmYB8zIn2UQgndz0zdjgTGiu59ZlucUQ+nUnlK6ndmQuJXSU8nGrmTKmcNi?=
 =?us-ascii?Q?BO/TI0TJjGAEHB08JpLnUx8Th5o1ApcfGXgdFMN5JHMLmBB5k4bZhZZW2kdT?=
 =?us-ascii?Q?IOCXbhkatcSSxqqckfPIJPxnolcdjKON0p1tITWBbW1efEYupTkGss+4O56i?=
 =?us-ascii?Q?xMAb3Ay+RFa0J/ubsmkF7vnBPiL3Qw6KGLjwJfelTzkkxRCCrgNtJzVZm05A?=
 =?us-ascii?Q?q1VSD6hv4EDlJByLi4UiY/ujffB/Hw2edg+KWoVdFmMMb1K9KIggXjY2jXoK?=
 =?us-ascii?Q?V4FtRI6qzZMxOYaFt+R/nyV192ir2/QV/Dj+aqf/Kog1vCEwh2RsaT09F+eY?=
 =?us-ascii?Q?/FOxH+riFwJ5lycXrwBLfYYLfQK4xGTZYazNegfsSk94bpePszvKTcrRmxf9?=
 =?us-ascii?Q?cbcMOrAIUJ8GkkBujQCA7l//+uqZk3x5+Cf24xdg0EfEq/YC5K+D29cRBjwM?=
 =?us-ascii?Q?69R0MHQZuCOug6GbxQY8Q1K7LKs6iY29epidLascEZkVuAFf2v0lTRaRLVvu?=
 =?us-ascii?Q?7NoknpzY6Gblk9wdrDhLkRQ5FCAMewNVAfvZbfl3IB3yK8sCRcbbv0geZopA?=
 =?us-ascii?Q?bLpkpka/ZQeRlQ5d8NfY2idOgKvTrGq9xkg8I3HhDWRB0qnt0HzYoHmFKPYJ?=
 =?us-ascii?Q?EHA6+MSxevupyZmDapzAUmQGhYKv87XCmQ4TDJQKV0WM4I/OTUUlLMD9y7L9?=
 =?us-ascii?Q?inITgqiEMC1JQV0Wj8LMZQyWzFwnw5TV66MNhFJ5?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3cda8ef-4fd9-4e0d-484d-08dd5a489f71
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2025 11:43:31.4986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DK5jQOlSvhI6Ex/GdJz7zD0Rl9t8vj2XcIpbYK3YafJghSCre8PrZC7FRFrv8FOGMJGd7CXPVhz7SsdObzUk3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6056
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741002217; x=1772538217;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iu7akxq2QxLIz4hAjn00NfAZZBcK1prQP2xtwSNTRao=;
 b=UwnbuRAm/eakkF1v3HCPi+cAWG/CrNM/QWRy7R8F4mRPksOTTYMnNINy
 Rl8FJwUE46icU14/jzWT4nuYtyPxfeawsC4sxweVtcgoyfGLvTdpuje3N
 +1VLvhbjf2AOHl+XtJIFARAJpxNIkjOKqjIlSxatSM+nhlgdg9WwmzA8G
 W8JLKNyMHLingpBv4dm+FzPvnK6iypyGjtxo+hWB7oQG9ZDA6egBhL9we
 souILtKVdWRvkOdbxz30tzeKwfqjgHZzjZKO29pmlN/dMwp4A9UnUHkSw
 r+/dKocTzC3EZS0RnE+7Cd8JVwfUNpxws9FO2DtsFNP03JuQshju2cKc5
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UwnbuRAm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 01/15] devlink: add value
 check to devlink_info_version_put()
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
> Jedrzej Jagielski
> Sent: Friday, February 21, 2025 5:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; horms@kernel.org; jiri@nvidia.com; Jagielski, Jed=
rzej
> <jedrzej.jagielski@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 01/15] devlink: add value c=
heck
> to devlink_info_version_put()
>=20
> Prevent from proceeding if there's nothing to print.
>=20
> Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Jiri Pirko <jiri@nvidia.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  net/devlink/dev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
