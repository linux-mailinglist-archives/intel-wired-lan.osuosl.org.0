Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 734EDACC304
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jun 2025 11:28:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A4746107B;
	Tue,  3 Jun 2025 09:28:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yZz2z8F1r8l3; Tue,  3 Jun 2025 09:28:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67B9161140
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748942934;
	bh=O8QL5l2bE6rp5KDHo27s5wTAJ9Fym47p1FwxIY+f5CY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AvHHR7hN75mQha4ZGINVAFlBH9DbdQ/7qgTu69gslMTt5zaQzj/4x/bChf5hRdLkb
	 HLpwAjWgLME+4Y25KWZt8ESYEMTXe21XDEBRJfzhiSZGAkMZZQ4ng2KXh4K61UCWOG
	 MdaE3ZkFST5pwxXlodCLsh0v+WtYZB1mrKmG6pEipv2Chnkbpbu84LL1lTZoENbYR4
	 Q/dUMsD7lsorAk3gfvmqlMnjGWDm7gp8xxJd3zjgfbeLLW9Q+fxEMMPzPMRSPJ5kSy
	 2OJRLbBYNlXGxv1jIKqoWBZI1cpRfi6Q0ueChifQ5Iz+Ne5RYE/S/SebUXRCybZaMn
	 ujpx5fwHsEv3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67B9161140;
	Tue,  3 Jun 2025 09:28:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AF20C15F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 09:28:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC10A83B0E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 09:28:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H5t53smUP0Us for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jun 2025 09:28:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0A47B83AE1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A47B83AE1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A47B83AE1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 09:28:51 +0000 (UTC)
X-CSE-ConnectionGUID: pxJqMU0+QfGRQU2qDCSEVA==
X-CSE-MsgGUID: Ph2Tdz61TGua9EnLy+4ZQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11451"; a="68527035"
X-IronPort-AV: E=Sophos;i="6.16,205,1744095600"; d="scan'208";a="68527035"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 02:28:52 -0700
X-CSE-ConnectionGUID: SpaBXoTLT/OHosURYh8GVg==
X-CSE-MsgGUID: kjfj9VAGT3S6riNWEYb3BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,205,1744095600"; d="scan'208";a="144686907"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 02:28:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 3 Jun 2025 02:28:50 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 3 Jun 2025 02:28:50 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.58)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 3 Jun 2025 02:28:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jbsI/m+IEUhpXZOfmNeWbL9Tnpl7mlhp7gIa9UbpXuEQyP42fJ6J38vpxD3pmfEjyu2wT974seB+QZn8izK4vtntm/SwT+zLbh17aVT0qSRKW92XlyMNhspGbhmzjnSoDRzzCqN1G3sYpS7MMhhgEMLNbq6+d21n6RnuBVwqAXV6UPhh6B4uO9ECeBeHTQ0XqVn8sSxNdMNwrsSBStsNB69B6Wsi0r9DxEdKLYfRBYTUfuIlLRsveNK0S7kHveE8OqVIgYq4XW3d1KtRhxmjzWOko90+n0aO4rgz0FF1pZMaGR4a+6mbpieOGPqPrY1y0obnTMUwC1T4YANDeB9Tng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O8QL5l2bE6rp5KDHo27s5wTAJ9Fym47p1FwxIY+f5CY=;
 b=AY6VCyWaZ3E3OgxLCYNm296a11SFjQEtD97eIRL1X8+iljhCqWtGQdkKvTMopg/iCq/ejg+sdu4Q4SeDQialZAZPG6JzfoScYRumckK+af6Ud64UzE89lIshez6/YqtWf/0iztCyHbnidwbXMBUxvC2W94EenJv7sUH6zdwKfDWWsZqIcwAwRjFViU55/YRnVJsnp9gO4SIR7oFD1TEI5SWU25REbgN5wO/B7Czni0XaYKygykbfzw7QOD8imJfYeD4oqENqQ5MnCk/0S9Lo9cBut0QKD0fxx3+s8gqeOVmca92qVWuzpSX9rfy8W/CqpqrBajZNF8WB0mtLGGC2aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by BN9PR11MB5289.namprd11.prod.outlook.com (2603:10b6:408:136::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.37; Tue, 3 Jun
 2025 09:28:48 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%6]) with mapi id 15.20.8769.022; Tue, 3 Jun 2025
 09:28:48 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Stanislav Fomichev
 <sdf@fomichev.me>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 4/6] iavf: extract
 iavf_watchdog_step() out of iavf_watchdog_task()
Thread-Index: AQHbpUyHNjTHO2IvSECx+3bVF49hRLPxiR/A
Date: Tue, 3 Jun 2025 09:28:48 +0000
Message-ID: <IA3PR11MB89851FC78F3DBAE2F48D9E8C8F6DA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
 <20250404102321.25846-5-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250404102321.25846-5-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|BN9PR11MB5289:EE_
x-ms-office365-filtering-correlation-id: 6c20868d-7f41-43a9-fb13-08dda2810bc9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?DtZmTbxEz64hFHgpUQz9EXln8M/fhlCstTkHjwYUZZ9SDs0bbur9lwoV3N2N?=
 =?us-ascii?Q?WkRtW3VLU8QQjVGz1edzMOS2Iyy+tIsaXvDYjMQFfRk2dEL5Xvon7dmaWEWX?=
 =?us-ascii?Q?PeCWPuMYGl4BxNVW8YUwCL6FsPS5K2g7x8Js1FXY9QXTBoZkzo82OMZ4BxUY?=
 =?us-ascii?Q?2l+weTHdy22U0FF+7xvD6J/RbP8R9R6TgpmvQ0wdUZx1enfs6JH6JMhdCtMy?=
 =?us-ascii?Q?Bz3Tz3Djxr9ynknjoo9WtkFEyD09wnhWciiTcO6vKe3ES0F2tuvgBDXXDOCK?=
 =?us-ascii?Q?dQ47JzU4ZshT8vzvyseLYz2z+q+v1LyWzkuwwcN6rszvrkVYDcvmDLRtvuG2?=
 =?us-ascii?Q?xHVEBx28zCMnoat3uwbzdfyC7pzysFWex6d8TGFC6Ndv/r0qk75PVN3e2sj1?=
 =?us-ascii?Q?kVLnI+Dl9p8Fy7UXjMkG5HfxjQPVYazBNOyTTp6sqlaVjtv7/aEjTfTQOFPZ?=
 =?us-ascii?Q?ij1VISMwxQ+if1W7vX7TfmMQhBrl6r1oG6KRRVCLX/C1d4NyfYNV6FALkpaJ?=
 =?us-ascii?Q?KsfvNquYLrKl4T75a5DsifqRz9pKn0AeZbTVb8nH0lImNkdo1AJ/S7AG8uFy?=
 =?us-ascii?Q?Ah7JA7v8Hj5ZLCITJfKIgmFmnyxENbgzv9S5FmAS5FJNJHg5+SWk5KFWyUC7?=
 =?us-ascii?Q?J8jumAdKZI/iL4/WcTsJ3kB/qktjuF5rvg2dM1Lg5ErlMvR4JalktHzoLtQp?=
 =?us-ascii?Q?H70aq5+rfjH6hwmE/mQNBB+YeNYu8TOWpVebaCjzuqt1fVrft718cDl5Vvnn?=
 =?us-ascii?Q?Yx+B0niyvOdNcyAiw6sKmSJic6ZnG716RfPgrZ6biHLGBghuGveKTBeA+PtF?=
 =?us-ascii?Q?n4KQhCb8GdmWyF8ogSVCVf51mHIkRgF2XfhX/9XdjJtSTbK0gW8SGKU6pkIR?=
 =?us-ascii?Q?kkLOvCn0ANQzvg7y/99DTBvd4vD+mIQlVoLSSX4bUuiFGRnKiyWCSlxNrnJ3?=
 =?us-ascii?Q?kTzeOzYRvvxnwPAvGFQiRJsixebJQOKynUydpI3f12R4WmOfvcLsJxPiFvte?=
 =?us-ascii?Q?IuLuL7ZvFz3tsxyaYgk0ygNXbwIgKWPOLyyESFwSDgULnvzY042rUQi1IqJ+?=
 =?us-ascii?Q?ftFFPlAmZYi602ypWIVmk2+59E8ShuooRBD7qtJ6ZkUo1iHB+TJEzlWX9GQu?=
 =?us-ascii?Q?ecDtG+0wRSy2J4jMkarUy4r9PW692U+Dv+v0IiaufI2TcmaeGytrJhe3rS2B?=
 =?us-ascii?Q?vsZgkHox9yWn+1g5kIQP0AdgcW7kAyzacV4eXbfESRd3fZ9vj/JTQAtQ6N4c?=
 =?us-ascii?Q?ewLYxVWM0Wvpga/Uk5Veopuk+yioramsbpFSIO6Y+XOQzOUkIJU23KCTguZF?=
 =?us-ascii?Q?Uupya87ULojATpUhRdO601CMuj/LLoHeoEtFQmzXKll0mfpDjNkqBZvq52gg?=
 =?us-ascii?Q?Uki5XPLXgWT24XRpXSYOvdQciiYQhjy4Ijz3JjTvfxPf1V+uIr4hwOOuF3SP?=
 =?us-ascii?Q?kypIpdfn3Cq+VJqORZ0lPG+l+oK8ZdCZagyFMaDSXz+yjZTuVNZ7CA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+NwCTB0xcjFkD8hYk8yz+014o1j4ijIh7Z6qvVcCosn6X4nj5qQJq4vwuVQC?=
 =?us-ascii?Q?6ggqCnmiMfjdjkehr5oVNaJR5VbnabFMt0JegBLSOEzDUtoxEa7GKZcBqwiT?=
 =?us-ascii?Q?F70rk5XTSjqEWXI0bJfEx2Seo8vCtn/Qh1qg8WF+R1LP882DA9/Y79aaRtn2?=
 =?us-ascii?Q?rsA3jk7jPFzmtLxPZPrKmx8b6zd2EfdXJnpP7d8eES2EKD8IpOSpTROjzh4W?=
 =?us-ascii?Q?By4/wk58A0xoM1A8K1X1qB0Vx8YDv1kejHDfJkqgD6/9O6TBT4XcSPEcmccf?=
 =?us-ascii?Q?nSlfVx0UR42xn+UBEh4BwrLbuVGec9Sg9TwtqNx0jUUf/z87Pw+yESyu1e2N?=
 =?us-ascii?Q?JVGuRDVhnCB0fxP3B1DMdOhDzVkX3GJOyLCKuc71+x9wWY8SNsIs3Ivc8rT0?=
 =?us-ascii?Q?TwKelPV3993xPjNUMsBcokrJ/R2VPSCu5baeBwrYFZlKisHEOoxLu9CFhpC3?=
 =?us-ascii?Q?oU/m1LBiF4TKYRhMutMU+jp8qDhAjvsNrmxo3mNwPlyaTq42RhSLjoSUt0lO?=
 =?us-ascii?Q?Dv7gSjgRfIKtHQn1JVsSMFZhbv79C7yA32x7NxWajq4v01ZcPxCzEOIK4rp2?=
 =?us-ascii?Q?ySGOdabcpPIuCHZh/BoUfyExyi2R/OrLvyQZmaNUWzIqbOPIj9NJ2DRxBwxZ?=
 =?us-ascii?Q?RjYSnYesKSPODClrecbz+OerJHn5c/BqyKO1tQdga0aQrw6PMfxv2xPKIfVl?=
 =?us-ascii?Q?zfyHrSnGeTfur9d9JPJYarfaTmOi6Xr3VyseUEZQh9vPSKQAxBrWKOaibiCZ?=
 =?us-ascii?Q?zpC2e5506sY2rfKVaewOxbSG4d0PoJhzCneDB1/wM0X1MslvTDQB9aVTuEBN?=
 =?us-ascii?Q?GRxsMWxx3RRFTz9GldrIcPcHSNdZK7MzHnKrEBHXCc+D8q2V6FxDZH3+A6PL?=
 =?us-ascii?Q?FjpZMuNidvafpVchxl1Q4f0Q4tuSpf2Shoy8N5emO8RGfgOqXSWk/4XXi0i5?=
 =?us-ascii?Q?kiEzn5AQwhWMauwKQDo725Ucf1VxIbsYHYbH8kNPAGSsEDVj3MvDkShlKMKJ?=
 =?us-ascii?Q?vg57LLjQklk6MD6GPg0b3Qk7uL/UPNd7NDDafV1OJO+7chtwxqlxYXIXLSWl?=
 =?us-ascii?Q?WF48epjwIswlK8S2i/fUIBnLi7LYNokU4fszg2v7N+zzOhLw3RvRm8E5PAtf?=
 =?us-ascii?Q?ziO523eQN2on9jA+zDOSbaWdW6MHf6+pdJDgbrWKdbBI+xTHtw1aaepVPGdk?=
 =?us-ascii?Q?63kmEeZMRrgZzXhlj272a9Z0mxqFq2PRldkEjdyH+7ZG3zi+GTUQWExyLIOq?=
 =?us-ascii?Q?F8muTpPl9+ljCvApJc5ykooCWMZHHFI62RAb7owt9VZh3allMDMJHdFc0LUY?=
 =?us-ascii?Q?HFdQLnzpf2lyEfAb5ywFxSeGMOJex96ae4cOZijxyspH2xW/OOhw4QO5auRw?=
 =?us-ascii?Q?ax03qvlpfoilZMHRkCg1XBegn6iZWCvv/AE75V7iMrJMpR0iAZTxeBPvAWyr?=
 =?us-ascii?Q?XC7h1YEmz9XaZA7X3i2s09dtcWfp6Ww2xmfFGvwCbutzVHliNKURQwyZ5OSA?=
 =?us-ascii?Q?V3L1Sl2WIAhdiQQHVx0RfuEisayWb8XZ/b68VZZTnzc5TVdwBAPZWInBvPdq?=
 =?us-ascii?Q?wFOa55r4jErqcoR7JTcZQC4Fu4JAf6jSQ0C/dKyzLkdQ6mf5+y76Go5SJZn4?=
 =?us-ascii?Q?sg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c20868d-7f41-43a9-fb13-08dda2810bc9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2025 09:28:48.8311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u48C/xPYvBaaqq9SNLNJw9AvWi4v1lm5rXqYgXxh6YvQAaz3A1Y9N5HzT0dOYpr12rtuJwI1rtcUN9Uf50Casgm2VainyfHCBdbDn38YPkM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5289
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748942932; x=1780478932;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mqb/HqPaaR/ms58ueLzZbzD3QEhl/07KXeocTmnXjeY=;
 b=GU8yqqI+3jU0ryrb/A/heImPTycy9EoYZTrBZWF9El780jJ3qtYo/03A
 WZJMIWvj9XCq9CcvJPMoOJbjdWCrDMf8mccUiKrupjn5joVpzaBHzjSOA
 gXdRCvisFtPOF/LFeGYXBzcUuL9b0Xk6SR98UdQ3r+z8jswEWyjgexjmj
 7Gc5OSKJuUEjoW7cENO8H60+4NWuwCMCrtXEW9rJU3qD0LHZxQQ26zWjQ
 /4Z7CzjMj7uoVrRhb2Pp9xQVjuoeX1PNL3VVGdiiy7evtiGMAWclICOB4
 una/5rcnKnXVUh75N3ItDzyrAIqjwWpve6av4XBLnUt/0UHUZXolc2RRn
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GU8yqqI+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 4/6] iavf: extract
 iavf_watchdog_step() out of iavf_watchdog_task()
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
> Przemek Kitszel
> Sent: Friday, April 4, 2025 12:23 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: netdev@vger.kernel.org; Stanislav Fomichev <sdf@fomichev.me>; Kitszel=
,
> Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 4/6] iavf: extract
> iavf_watchdog_step() out of iavf_watchdog_task()
>=20
> Finish up easy refactor of watchdog_task, total for this + prev two commi=
ts is:
>  1 file changed, 47 insertions(+), 82 deletions(-)
>=20
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 87 +++++++++------------
>  1 file changed, 39 insertions(+), 48 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 5efe44724d11..4b6963ffaba5 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2913,88 +2913,63 @@ static void iavf_init_config_adapter(struct


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


