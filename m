Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C639F667A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 14:08:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4707A84EE6;
	Wed, 18 Dec 2024 13:08:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z0LmHWpdJiUc; Wed, 18 Dec 2024 13:08:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75B7B84ED1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734527325;
	bh=wG6rczmF94+CkB73R/aZyr98410gu/PATk7BR55Zqbc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YIyVnm5tZ8o/alphoPLIUM7Ta0vxWgNPshUPJ97tU+pxBha6GFPIlS/wZyqnn/plk
	 O4Kdad1MmPmSMLfgdWp3yqEw/aCpuHaJwGxDVI22KVY0hiTqRIYfWBtg/Iesn+Hejs
	 Sscldd5dL3e0FZgu6WCexrba0pfu9BLwcmZj6R0pbixyFKPnzxVWX+YHB93T/MChfE
	 ptQdxum4UsEcAmJVh6Qd38tMvsc7uDdJtm5ecE/BWJV+7IfbXTtobKnScn+DMIYR2k
	 RhVWuvGLM696eKFCDfE5KS6q6MEsNQ3KT7XCTZLsYIYTsae2XBA5bCH2mjsbE2+VUF
	 xbAa2X48DERSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 75B7B84ED1;
	Wed, 18 Dec 2024 13:08:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 73E2BCE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:08:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 62545423FD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:08:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xPIXTPup9Vao for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 13:08:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3B26F423E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B26F423E6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3B26F423E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:08:41 +0000 (UTC)
X-CSE-ConnectionGUID: ufk+z3h/QWuE8PWsBPUMvw==
X-CSE-MsgGUID: cZSYNDGrRE25FFqk8rM3jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="22588765"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="22588765"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 05:08:39 -0800
X-CSE-ConnectionGUID: nCnd9gw+TiOkMyYxjSxeHg==
X-CSE-MsgGUID: 8tU52h58QvitK84jJ4dq4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121109094"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 05:05:54 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 05:05:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 05:05:53 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 05:05:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dMkM9kiS0DirBQ864lYMhm8aN8qOs+oE7JDdB4UGv5UzYEM8Eu3opQ5NBfLa/3f/1zFy6EA5fqKeOP6JLVOFnFOe5Gi/CUpeth65fRxVhq0r0Gp4NN6wQBNwAZo1hNeVKWiGbO1bL/wEpweSFqYYw480IaLIMr79SyI78lYtV14btSX9ii/gaqAGSvcglseMM7DVHSdB5OLawcRhMww6SL7x0h5SG+iAq8JSu0lXzAzcc52PNtoomTyHrxqM1DoOgnR0yWPtgY20pS+BlUz1bBHYMF84osAqN1w2pO2S3685Z695xiQLGzZdJ/Pz/4Q4XMMFlpYToybUWo7G7YNKaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wG6rczmF94+CkB73R/aZyr98410gu/PATk7BR55Zqbc=;
 b=bw9EZH/7QwN3cuR9zKprpCf6UD23SG7oGGTawrkZEjTmoZjqNIeidVdsvDKse/dH0fSBpWwk3mx63Xe9ULwOiWFvDEQu1WEH/1t038+HBVp3BTaMaOLgpEgyOWaka4cEdOqgFQkK4eQ9j8sVrq8Z2OTPbnkmPyjsNcw/grExd/lJPG8hitHH0JzO+vvgn9tGqAxpNDwwo4jcEC65yEy+CQvMzCr1yPGgKgbHnOni6mQdK8Zu/aAOZ6hGQd8rD2GEYboZrawB1yhaIIfylE4kwFik6xwEbQ1ZlkbCHCbli8uQTNGs7FtEkKI0koepo48IcmunZK4KE/3pOfrZqNihaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by PH0PR11MB5951.namprd11.prod.outlook.com (2603:10b6:510:145::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.12; Wed, 18 Dec
 2024 13:05:19 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%3]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 13:05:19 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, Carolyn Wyborny <carolyn.wyborny@intel.com>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, "Glaza, Jan"
 <jan.glaza@intel.com>, Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 8/8] ixgbe: Enable link
 management in E610 device
Thread-Index: AQHbRvI6o+BeNDGCoUGw2Yz9FfLpnLLsDN6A
Date: Wed, 18 Dec 2024 13:05:18 +0000
Message-ID: <PH8PR11MB79658BE01985079039DEFB9CF7052@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
 <20241205084450.4651-9-piotr.kwapulinski@intel.com>
In-Reply-To: <20241205084450.4651-9-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|PH0PR11MB5951:EE_
x-ms-office365-filtering-correlation-id: 6ad726ca-c5ac-46b8-f8b5-08dd1f649f7f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?BN+I0PDcTJT36zUM8kDEvpGsE1dYxBrhspFCwC5iZjJjaFpVMnxRts8S4nDJ?=
 =?us-ascii?Q?2JwrJTTZohK6G/DTj8bDy06sIMbg6DCdb3rjXjMjWE/MYGgMiJhZYQPS691H?=
 =?us-ascii?Q?5vvU6W7r16VwTCzRRxySPex6Hmi4HfWHrG9JrDvCZSek8jBJ3c6Ulv3ln6GM?=
 =?us-ascii?Q?hy5ydAHrIf1WyKOLFForrbS62LumKQHHf0UPC6JGBzBovk+eCFaWPh0FKvuP?=
 =?us-ascii?Q?TogGBOD9eEuc9peYc0yxqCmof/o2D3t7KOCkfELC/tGldZ545w9oz24yEezy?=
 =?us-ascii?Q?ZTPXZrdhYO79xOJDmluuSLkzrWrZUS9Bpz1es9KUoragR3eBOji3FHFBwkp2?=
 =?us-ascii?Q?hVZuFga1GgZePVUM9PK43Bkl45RoNm4JQ0M6YbEBNOCxV4OV2lCZPFA1grSm?=
 =?us-ascii?Q?82D1b+hZdz+tNPQ9Uea9YlN1K7QZ+PSPjmiPnaPRPtmNTyPnZ87Ia3OHrwYx?=
 =?us-ascii?Q?s5OeFqSqZj7CKSaBHJvqZIL3lawWO1fs/5dpPhXwTX//bdvp3wxrZNx7vkEI?=
 =?us-ascii?Q?bfxFsgXDcT2BQBPrsgFV/irsGbCypKkeg0iDN4ILJ9N+VQw4BjfoMZAK6iWx?=
 =?us-ascii?Q?h25KqaZnOTL0k1gVGLUyy45lOWshqub8/JToAa2ofMDddcIekrq1GqX18qQ+?=
 =?us-ascii?Q?GVTfgMFNFm1r5auZvZMh30WpmT+nlbPkEQquMCNBx9rbn1JqzsRr6jQnq0b4?=
 =?us-ascii?Q?INWpKhY5bOsol7l8fbkPr/tGorN2yeA6rhFPjrUH2vpjYXd+ZTLqcj7bqMiK?=
 =?us-ascii?Q?L5dLhvX7lpsq4Ff1lBe/gdFkRKGB1MtfOeNY0xmhp5Hs/RZ200OlwL9FbdPt?=
 =?us-ascii?Q?3GMXHt6DFDFftB1eTooXsd1DQSXxI+aAd10ZS7ssWuQ11fwkdg+zIW8pjecY?=
 =?us-ascii?Q?GbVALfEe6IpbodgutV/MAbT6YIqamD8i7iYIM8hvVDnIy4/LND4FpznNe0V4?=
 =?us-ascii?Q?6mY4PIPtUwpWEJthreEKv3XEnmJE4w+otzZpsyqTb6fFOn7SgA3iW/NVZweD?=
 =?us-ascii?Q?bFtD7JY5zOFN/Uv4GhBz2br8G1HL3bI8FFfP63FoaG7HMJAvWpjFV0M4IToR?=
 =?us-ascii?Q?RAgotBs8Z3n+F6h+z6pWKxjBVSsdIzz2forIhq2l6gLgEMAXD+jCg7/IFtKW?=
 =?us-ascii?Q?3Ghjy6Y06RTjYRNaHxTRLYe5eeXeVD2t0PBG2/7VKGLBqx7VODT/fZpUQpSS?=
 =?us-ascii?Q?fTSCCofW6i+rxbcS1ObaJ0gseYXFplTaqlPcECfY0M50yvv2HVuroK69wOzh?=
 =?us-ascii?Q?D0xgb82YsCG1v2fCTS5zFxuPbiNQn8f+SOQVv/NSu71v69Yt/b8YJ0on6hj+?=
 =?us-ascii?Q?rUE8KcNcXYwK2uSpry+o9UVK8hq1RM5AFqyPR8YqyQdQoJkPwUwG1iiFzc/d?=
 =?us-ascii?Q?G/s7QyOtOv3AGf4psr+Uif0mywPC2jZpu18KLRh3bzRZI7I9THMFNNmLrR3u?=
 =?us-ascii?Q?1RwpelBAmkNAXYRcR7JtGjtPMYhI1DVu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3x773KJXAuj9s5Yx8VNL7joZH5VDIdnmVErvAr6O0miCNM/q10jgrN2/U697?=
 =?us-ascii?Q?/EEK43XFxlZpYSHzp4RN61V+OOhgJg8LAK+ds5LY3pKL2kXl82KMHOlnieBT?=
 =?us-ascii?Q?+gYvAd7GUUYS9JShU9HEZtfZGuRsFY9h2JN2srJx1bCXWlKUjKF/OICDG0ft?=
 =?us-ascii?Q?E8dNanVrHh0ugzaHbkMRtBvBEw7SMmaIA+dLTioukkTll43jLJmJcsdn0a6W?=
 =?us-ascii?Q?rKiEjyaHIWBuQxVaMOYH5QXjSY8LhddYRsKy2iabHn9jtNWNssV+K1TZIwWY?=
 =?us-ascii?Q?KRAdGi12I7UQM1Nqgk7pWJIm3sUjZhoGYzwcRqMYMPgiQK6stP2YsP+tKObA?=
 =?us-ascii?Q?jgBe2eQsnN/V8Kqj9DhcNrycQ8JOzqig52VcV6m1ZGs5cMYfwQlZ3m8AIFAW?=
 =?us-ascii?Q?5v1nPKJoefs+AWv8t5BiXIL7R/oDSNDTi+RBaVEz1WBKU5g2wnITs9zz3cU0?=
 =?us-ascii?Q?5z4Hx/LFOcjILbBF8s41lBBLGqWz6RyjOuG2dzvlA8xxMBIIoKTOw9H2B+Rz?=
 =?us-ascii?Q?WM2cYq2bqrt5CVNNEIVhmgNMeLX9EOSH+8E/oKgYLZ+FNvqC1FYF4dSLnP3k?=
 =?us-ascii?Q?7B3EyfTFpUTvkhZsn9o9aiW9WqpptKfU0MOF0uIm4C5KYvNFgcji/2l8SIrI?=
 =?us-ascii?Q?LeovOXhu7DOj1AvCCVtfdaIHC7RhOcrk706GSpOrLSegX133S8KF0fbjz6ys?=
 =?us-ascii?Q?3K323BG8rnpACoi634J5JRqKPpjrAvsywi6QRalTTmhO2MAd81d/hUOunZxK?=
 =?us-ascii?Q?a0Gbr4W3HKkhgv4lQEKdc7JykBm0PxYkWl4PsbIn2xnNbZeSm0QhQew9zWAv?=
 =?us-ascii?Q?mZmfAeagT/kpzjfXOdyiLfVW95zI5Hx3CSCJRChCaujkUz9+th5JzzgpEDGV?=
 =?us-ascii?Q?hc7TZMxqZ6spxNpQu5fqIgJgw38DFZC8ZQsWsHLoEdbWieCWUWoIsT2Ru+Gz?=
 =?us-ascii?Q?6Plbx3HdEp1iMti6vXT/5rGYIlv0xLBa+WEykMmRjoPy9adCylrtGEgRMgmz?=
 =?us-ascii?Q?3puaTCYHmsdU3mZcZ2TLJV4n98G1nb3iRQjDv7IXhD+/5oQx6lXfrwnFvcOy?=
 =?us-ascii?Q?0txXBjNLSusrTZZRPgMGJTuK2DnR6D7RLMqTiEIuSOm1TDJlSJZ9Cx/NWZer?=
 =?us-ascii?Q?p4W9IXRtK8/WmtuNwRr1kv0Kr2oeNHMR2WhsQFpr0EcWNnxF3JMK5Uzr+xxN?=
 =?us-ascii?Q?2ggZTY6JzW78qo9LSY8ZcgYxXKdF6UsOx0LcupfdSWcgNTggsKes8igLOs8p?=
 =?us-ascii?Q?fEOfEd+eGh6AU2u6upCSEDPR5ZhRTmI5qvP5iQchQLnpcQWvxCrwweQkt7Hr?=
 =?us-ascii?Q?EosK+82mV/P3xtLc+Qto0HXljSoUUflpdDrdOP0fKjPxhhci7WBpJ5eUxkbP?=
 =?us-ascii?Q?FyhX4jgvwbDjQvnSJuymKpz0xeZkVi7KbkRsNiolqOZuzETnC9isOoC6NDiK?=
 =?us-ascii?Q?s3fNoDmC4RH4p5GMstvUhX8Chbsx4hy2bjvoHs914DlU8wS0W4fPy+cFnOg9?=
 =?us-ascii?Q?/H8CKBeDKJLZ5wxOyREnY4iZae7rSA/gjyVpCSvnlb9olUd1If1PdvfIn/Kp?=
 =?us-ascii?Q?zm6TAf3Y9EN4eF0G46CO/NdU+RA03JkQr3Qths5/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ad726ca-c5ac-46b8-f8b5-08dd1f649f7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 13:05:18.9091 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zWjAUto1xRtnbA3nNvN7ttb4oDVAOo9kBehVIzbd8YW/uX7IRlC0SMqGulQGCdiednbK/ka1YlX/gQWEpxV2MQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5951
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734527322; x=1766063322;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=upwuUmq4GmZ4mMziwFWwf+7+x9Upj74phfffTpAuIgw=;
 b=JLoZj7crzBHmZmdI/tnKVHYt4sRnkebfDM5d77/2M2TIddAtOSg/XVdp
 I/YHJfb1r8EiM9ZP+l5bnzeFPpDsU4kV4rZufdN7vZNb6zojSohvB1unB
 J7JcDtR3Wmu3rpFCmkl89sxIvuqIc/FJxvc2Do2d+3XjlMOJFzgQFq/9C
 TLmK07mrkRABReOxAZvsE4+WgAfwmgdOoGSVE6V04tywPmL4qc+dwRsN3
 UAHMR7EhaHV6ZuDmprNRYNy9jQtECi013ftHEMOzm0mzeitle8UelCoRe
 BouL2cgiflTt//GBfqPTA1U17E8WJmk/a+uPNaNsmeBhObo67x+Hz0STX
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JLoZj7cr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 8/8] ixgbe: Enable link
 management in E610 device
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
> Piotr Kwapulinski
> Sent: Thursday, December 5, 2024 2:15 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Carolyn Wyborny
> <carolyn.wyborny@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>; Glaza, Jan <jan.glaza@intel.com>; Simon
> Horman <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 8/8] ixgbe: Enable link
> management in E610 device
>=20
> Add high level link management support for E610 device. Enable the
> following features:
> - driver load
> - bring up network interface
> - IP address assignment
> - pass traffic
> - show statistics (e.g. via ethtool)
> - disable network interface
> - driver unload
>=20
> Co-developed-by: Carolyn Wyborny <carolyn.wyborny@intel.com>
> Signed-off-by: Carolyn Wyborny <carolyn.wyborny@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Jan Glaza <jan.glaza@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  13 +-
>  .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |   3 +-
>  .../net/ethernet/intel/ixgbe/ixgbe_common.c   |  19 +-
>  .../net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c   |   3 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 165 +++++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   1 +
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |   6 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |   3 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 414 +++++++++++++++++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |   4 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |   5 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |  12 +-
> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |  21 +-
> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |  20 +
>  14 files changed, 659 insertions(+), 30 deletions(-)  create mode 100644
>=20

Tested-by: Bharath R <bharath.r@intel.com>

