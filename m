Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C3EA4D664
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 09:31:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13561406EE;
	Tue,  4 Mar 2025 08:31:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i2bC4wY62q_g; Tue,  4 Mar 2025 08:31:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D743406E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741077075;
	bh=Du9Pjokg6nKhnOtolx8+6YxZU200aHoOhDBC1eOe6wU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ne8W2YHfOsYEYz+bNBCFg10ZsuGY0jrM5qFVuK1dKSGwIZbQz1SuGk6Q2eLWYLPFg
	 6k+zbNAMJ8dZoVWOSVr69ti6jd6YvSOgHd8P82n7zzaZ3Jp7nkb+No83DvRxczrO5y
	 wyOtDVmTA3ipIsaDDTxeZjTx+g/QJvafp9scFACgIkzo+2sFyvUhv+6N+JT+Kowi+N
	 Nu7TpfvnvZUH8nxSVzCT059vNn+ob9VtKHh7A2vKmHhU1nVbFB1KkrxHS8E4mrJBFZ
	 evx0OGssZFvFZ9prV/HTB0k6Jwi2kwTkI3QFdMmM7EaerMALyONPGixNdHrFnZYIqY
	 Ah11Easx7QQoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D743406E7;
	Tue,  4 Mar 2025 08:31:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 51DB0D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 08:31:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 355CC4029F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 08:31:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o3thv7ALthFj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 08:31:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 07D15400B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07D15400B9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 07D15400B9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 08:31:11 +0000 (UTC)
X-CSE-ConnectionGUID: kWEncosNRs61sIUxL+bBbg==
X-CSE-MsgGUID: SdV/odcwTs+IT8sa/kOGLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="42232692"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="42232692"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:31:11 -0800
X-CSE-ConnectionGUID: BXCibxHuSbaZLkeHOGrKCA==
X-CSE-MsgGUID: OibFVT02QOOoKqeukIXAnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="123320834"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:31:11 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 4 Mar 2025 00:31:10 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Mar 2025 00:31:10 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 00:31:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CACFet6Si6FAqWpFuOjs7iilf/ekcocBorEi1o17V8ZzyOvouY7Nj+aKMJzTjAr2VRTlfmgwj8llUWSqV9oip0M4O/XtAkifuxQx9vzOXIyzZwWoKUo2XRfbZdx9geZMsN9pUBny6Pkqf6QTy6+vrgGPXpbiv1LT81ApNwBnVMgvcBCJFiXYVhvJ6jG5pmVJwA5ln0alfERGxzkmLLz/tgANuvIZmKqxEQc+ZVyvOQH3+MoccPnonoh10jFuC0dApQWtnUYECsxEko60HJSbGH5ehKU/7KkbgfQqzX4uI2QGqqlmPGFixZBBhB2NN4e6V8XpwtYHpXF5c+rTXya9sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Du9Pjokg6nKhnOtolx8+6YxZU200aHoOhDBC1eOe6wU=;
 b=E/WrBLH6iy3vMYkDuBut3CTlHU2GQUx1hWlfheBGwtD1GaO6SkT5Sjovc1J/rsMxBf72TnE35YIMNlS1xJTTpG6S+OccggBnqfeTxuxEOkygPfVRHPGdchlXkf4M6FyJMeNckvUak591cu+Pmo0AtLEJGyXu84LW/63ZS8giRQOPcs+TSZFYtXPkfe2NZ5mxERdKebp69LnamQr0pIrR+Yu6+aKSdIliYMRD2EMg6WkTPTnYa0FagIQ9uWRwGuMj5wyotbHsvxTri2hTpw20rOssZW2MEcBtkyuXS/tdhQqs99O4T/ovsYfvJp+9F+BOraFnh4vXX0DMANstiqDptw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by DS0PR11MB7766.namprd11.prod.outlook.com (2603:10b6:8:138::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.29; Tue, 4 Mar
 2025 08:31:05 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%4]) with mapi id 15.20.8489.025; Tue, 4 Mar 2025
 08:31:05 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Wegrzyn, Stefan" <stefan.wegrzyn@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 09/15] ixgbe: add E610
 functions getting PBA and FW ver info
Thread-Index: AQHbhFj61jSz8PgMSEeUPv2Jvdd/uLNitpFg
Date: Tue, 4 Mar 2025 08:31:04 +0000
Message-ID: <PH8PR11MB7965B324FBB9804AC1F35B86F7C82@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250221115116.169158-1-jedrzej.jagielski@intel.com>
 <20250221115116.169158-10-jedrzej.jagielski@intel.com>
In-Reply-To: <20250221115116.169158-10-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|DS0PR11MB7766:EE_
x-ms-office365-filtering-correlation-id: 96839ef5-3e1d-4aa0-80b2-08dd5af6e794
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?173DmUHREWMV63bvpaCXR+RjPT2ZqB/IdoEMDhYzKOpyvIOuyXiVbZvtkS2I?=
 =?us-ascii?Q?tSTXvPtLswGv4Zu3rARhy709bplsIE1Ztry8nqtoUnbIxBE2zT3Q5y7LIsJV?=
 =?us-ascii?Q?UdnDJ/kzzTwkbxdEoEM9soPaucA0Ylnsy74JSM53HrKkZowYgM+kOsfAbJB1?=
 =?us-ascii?Q?jBqymAekhSq7diQYcb8gFnKoMhYgp564RtCXKok4PkD8ZHvtdt89pC2MtWCT?=
 =?us-ascii?Q?YnhNLHPkGPksqnKDlP0vIJ0+4QxBMUeJoowI32TuIzDIcTX0N0CSj2xhhXHo?=
 =?us-ascii?Q?WydnARzEBqNA/nSX6IIeOB2TBGJliDgtR180INF2vzNgoIP/vsFTuagCFPmm?=
 =?us-ascii?Q?jrF5SAokmBUJCrAUepRnGRDUm0JTmop4LM79SXU35Ps9dtL5yU3rC6GCzYuY?=
 =?us-ascii?Q?fYllK/MSD4FVxXJt/CLBfNHpuVLoj0uK4mF2l5+Xku8DjFuk9V5Q/N6HN5Ev?=
 =?us-ascii?Q?4CNuokAdpgmTjtBqv5+peUKRVZm9349GAutV2fo/0P7VPoBNG+HMzqu0bGc5?=
 =?us-ascii?Q?YV4vDsmJxCteQqF/tjVKetoF5BtzsXEz38esE1rj6Mny+AsOLNwnWV2gnGfr?=
 =?us-ascii?Q?/JqwH2+22baDNlnJy5mpGol6/B7bRppftgrgkSZzk8qgpthSlitAoU8b8ttF?=
 =?us-ascii?Q?sZvRlryFI1+03RcFQF6SGqTZqqKvCBjypP8eMwLiZ4tStRybtKJlUKqZMIil?=
 =?us-ascii?Q?QJi9hHenfXGph9j75LL3vlmZBI5cmvUYvr36R8LGJp1qAa5U7rP9yWVyc9PW?=
 =?us-ascii?Q?S+SVLbLQIABfT9L6/cL82uOoz1+BZelIJ2/jspgY/EUYPt/Keh24sEJ4qYTa?=
 =?us-ascii?Q?qknBFNUDNKwY14f6jbwGW+6s2L/9BG2qG91lVhyvSIBaorZxt99X884ziqVW?=
 =?us-ascii?Q?wyGS+++qovF6ChtwfE7TT/deGmlwr7YPbrmFLCD827KIrTKQ8O3L5z7U80sD?=
 =?us-ascii?Q?EYVW61UakgdIgAZ9xU7dYXCohuQSjmeveVsU+oRwpajGmZLOmhEi7auBrruE?=
 =?us-ascii?Q?3P+QNi7kyZbDjlg+W/rDWDxnHkNgsnLwIp5xOEscZyWDl7TyoBkO1F7Yal5Z?=
 =?us-ascii?Q?FTA0rvZn4fQXvmDCBUZihrSGCQ/E4ioGaQkDY0q8tT+R/6FK/APvsQHC7U0D?=
 =?us-ascii?Q?H/Rkai+1xtoIZKJXxY/h1lSanHEV5WlFekQlIkoLzkwE1F7/p6a6uAQ9uVnN?=
 =?us-ascii?Q?wez/4IGVpnt2x1XMjHk6mtIHXTnlbFWswQesiCRR/B8NYCxK/u/62sWxB2KZ?=
 =?us-ascii?Q?Ho5TML2RiH4PX3C+p4/AHTy9XA5F9Kt1VdJ+d926vz6VzDdDZ2LbEeIrZD3J?=
 =?us-ascii?Q?qyy3EOwUUDL+32en0KZ98kqmo3OdVV8Tk6g5eMeI0qqd072UK909vGR4u1UB?=
 =?us-ascii?Q?XK87EmmRwizvpMShWms80WbfJWxlbQUZ6GCqonRkTmdB+EEjPcS9leHUopbj?=
 =?us-ascii?Q?d/OADq3RvBt3v9IgFyte0JRg6N7JzfqK?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RP8UC2sAuL7zCak+AoznnU+KtxqueE/cqOkbn2Bw2YWSmA+V0AHgNsA5WlAW?=
 =?us-ascii?Q?GJCu1XyLJwzrE7SgU6xk/OZiMLVEnOz+lZ28PNhlUscCDqDPqKRzt9OPtwiZ?=
 =?us-ascii?Q?xxOtwTblYAg9InQXUtrDQwC7vNYecjyW9gG/hdRMr3d45UrLfq8Xw4CkJBfQ?=
 =?us-ascii?Q?7QjuVVkUwiSOeBuca01o79TKEyl6ZMkvpnIcZ7olak/S4jXoMSQwxijMxvcM?=
 =?us-ascii?Q?hrfghB4zrOMpG6Mu8aV94Z2Nvtm3JjN0g8qlQO7t7QdI4Kc84aLmv1hKyf96?=
 =?us-ascii?Q?9+zw7UUgt/6xqUCMyx7/0Nj0l1JHW34kZrjTZcLFadA/t5eIeTMLnZlPIRnt?=
 =?us-ascii?Q?kQJMXUVrKUPUwahwmisNBqKXvzkp2Emys0c7l8qsM+k2O6L+Y9nrTKP/Ovl/?=
 =?us-ascii?Q?KCiyvVYwlYSLNqqMRGLD/q+0H1gJfYLqBOh2K+x4cwszupwpClnZq7buebjo?=
 =?us-ascii?Q?3Al4iGharVxJACCAIEAbXrt3PNdKOSjYbjcmY1Ex+QKu7WQM0pUe/yohbysn?=
 =?us-ascii?Q?S/LLVA60K43d7EImYkNctrXZGqBnqm+Q58rI8/ZDlLbRTx4p3E11VbeCipLp?=
 =?us-ascii?Q?yjkef+GQ63D+VetQQSD5rzvyQCUI/YwTgow086khyg87ammCb5qZO28dADCz?=
 =?us-ascii?Q?ZLgXyJyUNN/rQcSpzNUoBV4K5r9XjnR4R/EOqqFtxcXuHYwQNW0xc6FvwbVa?=
 =?us-ascii?Q?wZPA33wMRJtVHNEV2lHW10CRQrS+fWnZkqZLb8GxI7ugpraXYnzxwrDBhPah?=
 =?us-ascii?Q?PEOXyHnx4TVNnF6GxA2bqHWnOyWUkCqlqxM4JGm1x13rHO1jIpxDyDlFVChC?=
 =?us-ascii?Q?qRru/1oknbuJxWAdMmWZA4gmyZ0Oi7pdlILWQii+U7GZXleRR/EuWJKxtmkE?=
 =?us-ascii?Q?i9oELqIZT+cic4lx5tMRlfuUQ4HV853y50pJtwaoOjOSJajFSiBhWBKcVX9l?=
 =?us-ascii?Q?m7qeQnxcL7fUQ1n0Pje1XrXGEJHlUaMXPcGF5coemSdwzCZAFHrb8vD5Ips5?=
 =?us-ascii?Q?MxSYlsPtR1zaO5oFD9QG8VLAhe4kwsOsbu5xvuBi3HpZwuIpjeT1XD2Q+NmT?=
 =?us-ascii?Q?izJ+Mkpy6Sc7wCNN/Tf00wRJd+H3tfoa7y3QrYPh/lJa7MBhI3XSHbz6IdWl?=
 =?us-ascii?Q?R664l+Z6x/M64Vx6O4mjL1gjlP9Kv8GEcxpEzc4wHIx426ElOMNInQZm6y58?=
 =?us-ascii?Q?pucQUQhvMDSOv+i4TvBUJ8KifpRPap0mHs65r3lGbPTUa9NZY1YDKNYvLX2L?=
 =?us-ascii?Q?IbDWVmpIyd2RtvkducBOsXPvKU54AeOodDVhveMm5hh+hZXdkTq6OOpxGNrY?=
 =?us-ascii?Q?qb0fVSYBpGqfGltlNUOboQp0IDnIrJ67m7ozihbXHd4J+JAIjiF7LtKPwXR8?=
 =?us-ascii?Q?zbwOJij5CDKhFh5ua7jicFJyGdHl3v8ZEa+Dgo/X9iwc0W48gYJC+saHQxn6?=
 =?us-ascii?Q?6QnuLn5bbpMSiizJwX6oXgoNK73nMKI/f6PM9uBAf2rFtA+mZfdpNWAd96CD?=
 =?us-ascii?Q?5OUG1cAAMNS6gZsdFA0lOckoZ8jHLjhJ2NUwlskEBSPnY2X2FKBNuQqdsAXq?=
 =?us-ascii?Q?3SIfq404ai1011JPJGE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96839ef5-3e1d-4aa0-80b2-08dd5af6e794
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 08:31:04.9800 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XInzihtWBz8Kd8Vbc2oFMAnxg+cehQ/cWPRzcMVHD3LWEY6FqrsYoHkTGczo8fHx3dQ5bmQhampV2OrBmTmjaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7766
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741077072; x=1772613072;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mNTcnQ0TF2dCj5pyaGC+TZLHh1vw/f+5ndkPIzRkmdM=;
 b=nC6DstLD5WPX+ZQhRBnnhJ8ShaWA4tEGAoFeFEW4T2j1gN9Ztq49upg/
 y6nuskJiXnKkz0K/ZFuN89Kie0KAGowjIiWIu7+n/E+3Po9MmkmHy2rmw
 PKxIISIfs4lrthZHApC1j8Wh5k/2p4UVLverSdP3rp7YG0vMXT5u21fxP
 EU4lOFu0U3vfZF4m1ouoloDMtcNxDd8T+dKTcGFPvDxxXL5ixo/2gBUp4
 HOv2S8DOn4XGDH3UY2VTLqw83BS/65grZEc0aVAu8cw6yYQ4HC5I6Wl3M
 F2FdKelr7VUpt1xLu+IYmKBorDwScj1JEjHj+kj6Rn12D1Sk8/exYKVq7
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nC6DstLD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 09/15] ixgbe: add E610
 functions getting PBA and FW ver info
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
> <jedrzej.jagielski@intel.com>; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>; Wegrzyn, Stefan
> <stefan.wegrzyn@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 09/15] ixgbe: add E610
> functions getting PBA and FW ver info
>=20
> Introduce 2 E610 specific callbacks implementations:
> -ixgbe_start_hw_e610() which expands the regular .start_hw callback with
> getting FW version information
> -ixgbe_read_pba_string_e610() which gets Product Board Assembly string
>=20
> Extend EEPROM ops with new .read_pba_string in order to distinguish gener=
ic
> one and the E610 one.
>=20
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  .../ethernet/intel/ixgbe/devlink/devlink.c    |   5 +-
>  .../net/ethernet/intel/ixgbe/ixgbe_82598.c    |   1 +
>  .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |   1 +
>  .../net/ethernet/intel/ixgbe/ixgbe_common.c   |   1 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 181 +++++++++++++++++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   2 +
>  .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |   1 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |   1 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |   1 +
>  10 files changed, 190 insertions(+), 6 deletions(-)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
