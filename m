Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D48A3EE29
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 09:16:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34D8E81F2C;
	Fri, 21 Feb 2025 08:16:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7BxC7Psly9E2; Fri, 21 Feb 2025 08:16:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3651583566
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740125793;
	bh=3oTIHFy70TkSr6fWdnWeC0Z5DL2MCGGdt589sK5IPJI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vvMH/U2jLnUIaKAtOQSmpn9WWmj4jo3tkmWISnZy5zw9EmUP+y0rvb05ZyS1U+ZmI
	 GfGPSQan1dfVqXZKqK4aIJcNYIlxgSiozJ/KtupH7+Nkamx4z+R6tYT9FIzFyZ1z2O
	 Hu6k/LGIxKkFF9EE0/tioJVYPHGl7uqErpBn/0Dcxp5yDyzgV6qTyBO4Xg88HXCHTh
	 dRpX7psb6ouE0fChxJfPXkdGNZElkNcFOU9iQMgdEk/LwDr0Exn3aQ31UC0dKnXE1K
	 4qkw09qkXb9FLxsROaiYTGocUZb6PfiAf64pq1gxtrs9TgzpZijikfxJGMEEKHVsqX
	 rt7wTfLDaMWbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3651583566;
	Fri, 21 Feb 2025 08:16:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 95ACA194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 08:16:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 794E381E77
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 08:16:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2YgqTe9aTeOs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 08:16:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4181981F16
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4181981F16
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4181981F16
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 08:16:28 +0000 (UTC)
X-CSE-ConnectionGUID: oJgPcKkNTaays2d5xRsM9A==
X-CSE-MsgGUID: URClRVm0QcKEl0D0PpLZrg==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="40163616"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="40163616"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 00:16:26 -0800
X-CSE-ConnectionGUID: 85DMu+o9TGGk1hg15uipbA==
X-CSE-MsgGUID: kwD1Oc6jR+WZFEkDu6sE4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="119925459"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Feb 2025 00:16:26 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 21 Feb 2025 00:16:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 21 Feb 2025 00:16:25 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Feb 2025 00:16:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fQDFPrOuZPYZ52eG4zmf4sNHHr5G3SLWOWYm1UwkuklReQzWaI/DSfNLNGXD+AMEN/8zV3Xfz9V2jaLmCS4a/mJl2C4HLU247pRTmLEwCZTHLAKQuPWAMeTK0g3QWTOkfbT9Jp5ccYcatuZZCkSCOhMxKN0ONf6b52eZAC+St10o/Xkh+2ZmX7Ep/vx5yyblODn5NvgojAt8iXir2SrVHtG0s4+E4O30rtZsH/XLq7yFLIfznbh9BU3yP95OG332oRIX73yqNECzHNWIo6oQ9pCOIrcIVjP9PpV65EFyRojuRJ+5klp7oYMfuFHFbyBnKGCNdEZpN4v9pnhODkh3RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3oTIHFy70TkSr6fWdnWeC0Z5DL2MCGGdt589sK5IPJI=;
 b=nSlr5nZ8y34Ki/jrixXlaZMtQ9w11+3k+Z7DP30whsafp02rqUbWurvJEUn8TDqoCEONkN6mdHpuBOO9cU9SKUJ3JeD+lVANs5WLbtOirGO1no79rtV4OPoBl1kh9zB3l5NmxtwbVLOnHUUNYNOL3/C28I5v0E5oCA06h1j3WlblAgZjk9wrn3TW54+vDGYKnkFcKwOfmxmzV8zQzYZNWuwK2SkrjJweBLNWnM43LOpC7Kqdsf3axQNY7F7ZBDBMRh7yQ+1Upj0Q2YaeGMMMnVpkP8iGEAY09xF39RWWGSQIITUXD4f9OzP8Epr3CTqd3spOYLmL/2Kv7bwZ6UNrQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SA1PR11MB6760.namprd11.prod.outlook.com (2603:10b6:806:25f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.15; Fri, 21 Feb
 2025 08:15:50 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%7]) with mapi id 15.20.8466.016; Fri, 21 Feb 2025
 08:15:50 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Thread-Topic: [PATCH iwl-net 1/2] ice: Fix deinitializing VF in error path
Thread-Index: AQHbfKxNrhuXv5ke6EyUUjlYwR1/sLNReCUA
Date: Fri, 21 Feb 2025 08:15:50 +0000
Message-ID: <PH0PR11MB5013367C7BE03CD20B4160C996C72@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20250211174322.603652-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20250211174322.603652-1-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SA1PR11MB6760:EE_
x-ms-office365-filtering-correlation-id: 840ec3b5-14bb-4aa3-9d0f-08dd524ff3d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?XAB412zqHgnjqwKRVjRgv5iNXwX7SYH1EtpI0Lk9hGJxd5NksBALeRC8XnIL?=
 =?us-ascii?Q?F6UK9AsgmaZGYM6ex04LyD/UeSHFkSldU6gX/061rwGLowI57Ens5zRu11Gm?=
 =?us-ascii?Q?+T/0kqD0PLRv+LofGHSvhfCKXFR50vf+F+dTUnqgjLbr5Cp9MXwEqKVRkChd?=
 =?us-ascii?Q?npux3ws6PPB3wMT+OSI9/m8y3xZZnTpD0WCWc+Cz5NC7NZXAqeGi+xBzNS36?=
 =?us-ascii?Q?06qvopi26SJC/T00FB8GHEl/2vUrARKBvhuHOJqWJoW6hdC0HmE3TVoRgd1f?=
 =?us-ascii?Q?j5foybffLUoRvY7PdGKcz37lE0Mr7hcw6AVPnZRo/W4o+WUkkZ1jC8jUApm+?=
 =?us-ascii?Q?QqvxgwVIunp3d+FNsUVkI4F5baFigqlSb4hzLXC6qKBP9vrg0LqYeyECWkE2?=
 =?us-ascii?Q?fVyI1Hdn/KlmtXu5AArMZ4VcefwpL5k5kfn/hqopsyai0I2U3ts3zoCxWkoY?=
 =?us-ascii?Q?pc8MZQHHO+Pby4bObAycRJidMN8Izw0I+IIuRCNfVIJ7+7HzTnuz1xqMByPS?=
 =?us-ascii?Q?DFSNsAr4Jjggwuujrd53iSvcUawL75PTU0rNI2+/XBFSfEA+p2APz7SE1RNO?=
 =?us-ascii?Q?9/IwPSbMSQ+vTIduRnJpoM1SEdJazCqcoBtai6wt/qfNpFQ/OHtDejIPBsi/?=
 =?us-ascii?Q?3cOsvmO9tFax7ErYz3FTG0gHgG3r4LwvN16h4vLLdpaUQ3FrSgvgMW/5aVH0?=
 =?us-ascii?Q?963lDCVVlrxY76PQjDyf1yjbLzqxbRIwPArK9xqcrajXX/2Cw8AqPwoD5PNn?=
 =?us-ascii?Q?qsr6d8TPjBA401G6kRCiyR/zmB8eaFSEVfvG46zY8e0sWhyVXfvIfTIx/Er1?=
 =?us-ascii?Q?EQKly24u0JtsIMhnCwgIANEuout1BcMu0EMMlUsjne48OGSl7AJJI3qWjEQx?=
 =?us-ascii?Q?HJMU8oY3s4FiMI5hmCcAaeiGVTCUceaGr2sSDJpg/5iAx21BPDpajXNvLOkP?=
 =?us-ascii?Q?DjmTi9Nl+VQN3MqSGHzLQlL+FIJsLTRdCj+HOn5jwYRR1aNcxXBSQEyC5j8s?=
 =?us-ascii?Q?avce+beVZPb/Evyz/j6E3hjtuGFbv0mH/fNJF2/xImvgCpbVxMNypErfi3eE?=
 =?us-ascii?Q?V6C9a2mBKhxBN+pzsrNG76rgnscr0B69BQcpGZHNAtoDG0u+EFjx2oy758vk?=
 =?us-ascii?Q?HBOPaM4WLgqZWG14RfALiC7z3FljS67yPL0EPWQorWaf7IH8CFmuT5Ykzvb6?=
 =?us-ascii?Q?JIxMoOEPQfcQEOJRicJJd5XvqgfC5PvaAzAMmc4Wwsg8gO/nqNxsCKH6ieQZ?=
 =?us-ascii?Q?9ZBmyx5H3oT7dVPRuA84olGUQvl1CL8nFhyUS8jDGyeHnlEpjGHNCIJS+rW1?=
 =?us-ascii?Q?ezeqI+VZImvRwWhet5bkXvm+fU/yZKvW3BlelUNy80xqZZQUSHgbx3Fy0v0V?=
 =?us-ascii?Q?oo2mqUMOkyXOUU8NidgP785II26WrbzgkoAF3QOc1HZdfiM2tgdXuuvCAwT3?=
 =?us-ascii?Q?P8zzGbtY4/l9n1QzozZ7v03UuLmGp6x7?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ayu+xmjfBHCB6ZAtlmTwh+1vEXPEsMnZt1BPMs9NL+/eOsNZ2+UF6rpqQJbg?=
 =?us-ascii?Q?Iw3K74FQoqW508G6OI7ZnyiKUnDiMWmzB3T7J1TyGpcFEVgf71TGSBWgt70U?=
 =?us-ascii?Q?MGJGNNjmeZdqtraYbkrD9OCY69RnREUsSY+ECWE0k40ZwvhmvqECBZEVlvA2?=
 =?us-ascii?Q?3J9h0QCnQ5uaZYqhKeUSfi8zZuh0oiUJ3CHsitwuJKSZCGHBuTnNF10vsq8k?=
 =?us-ascii?Q?xtKkYdZnuFjSEbX4xe6K8bsM3OWRaQDLkRnDMjR1NvIsm/1ETZqrZP2+75K/?=
 =?us-ascii?Q?rD1b3AUcMfHikvUMR0D3XQbHUDCMMcixOVwd57OGuIbIDKIMR7rIuXmlylAy?=
 =?us-ascii?Q?/LqyUVsGqRSS6RHC+00frhs+CPD0WcpX/J2f3PO9wtNjmNuDO94+YEmy4ome?=
 =?us-ascii?Q?0AMtQ3F1AKg/VhXftf1Ye7kHlTWYETFuksFs+rIUsZQG1TXoHfny87GdGuY5?=
 =?us-ascii?Q?ea1atrwOjfZkmVjtXQ7n+JVi7u8nde8q/8+Lk+j7vKEsg7L96G7FrQb4e4MT?=
 =?us-ascii?Q?9OPUzwWt6IeInpdNqjJKW1YQYuGhXb5v+1hvS+zs23NSR7e83j8iJ1JJfAj6?=
 =?us-ascii?Q?5RPXjHwaWvjw0BxjoCuRWR7mWl7nbYfPW6OqbbCEso/TB7HmsMHtbdes82cs?=
 =?us-ascii?Q?jbuPXwxgDV9ws9kAnsHdOe108rru6M78gvZXQpMV8lo8zUB8FqJt2KCYTxsX?=
 =?us-ascii?Q?aJQ8NCXhNnwUESQL5q7ZNrDTMQRO/+EoDCQmOQp7/ccqWO4qKikHH+QD4aig?=
 =?us-ascii?Q?dItyv0I4/M9/ln2owzw5GNwQ73cAAz8PDk/lBssAox+F8w1YoeckeFmzlkSS?=
 =?us-ascii?Q?ei8ZscTJUYjIXtLoMdfxbhNVWIGF3MTmy3gMNpyR4gKvlxc1XOU642wbUZmP?=
 =?us-ascii?Q?3iPWJggDSrufF/OBFo7hcymFE2D0mgFZ7AVT7DVlSdwJTa5aHfdISQuBZHZw?=
 =?us-ascii?Q?P1X1D1N9aktQCpDFDrkD/iS5aBEGBu1n+cHKvg37NV+qUAANcZAlaLt93brW?=
 =?us-ascii?Q?0wwsJtY/1FqE/2dtrImdv8qH1gae1sBk7b/mZyS9jQJ1TXUuguu+1wvuY5sE?=
 =?us-ascii?Q?0y5h6JuG5ldUaeoyLjg7kS17C71BswmmNqJ48U66fH5FgTN2Tm6NuC+TQyL0?=
 =?us-ascii?Q?9zCIMa5RYwbSx0gFelblsD7HKFsPuXSHzmrZApE49unOnxLm8F0hPo9Sn4id?=
 =?us-ascii?Q?f57DpMmY1KKKif0lnNVct5pB+5jbKZT5fF4j5jZcaVqG3r3c4wuESh+3mH9Y?=
 =?us-ascii?Q?f7/Sw0p1DZouY32J93xjwoBQWGp8ExU7SjmxHhiOmr/b2rJHwlB3NKhIG9WH?=
 =?us-ascii?Q?uvxUUVMh1iuBZq/2CSalIH2bHPCMy9+1gldTJGNxH7nzb0f1wXOac3bkLQTU?=
 =?us-ascii?Q?9FGqe3SKrVD0hDMkOs3S24Q/5QLrmnGF+0tfAVVY0nSQnxGmyyLfy56fRqGX?=
 =?us-ascii?Q?ubBsbkySPS8+advfHlk2OdeTzvgF+qzbKZHz9kG4x4nm/WSSGorS1vM5ilYc?=
 =?us-ascii?Q?3rxjfsUIOAMl+OMCbSXWpAn3re+1o+xWoN2sGY6Cg76/5o/VHCl8OtjB8xc7?=
 =?us-ascii?Q?7dD1yw2S0mqnfg12R0jbpbkPZJckWfcDtWKqcKQg?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 840ec3b5-14bb-4aa3-9d0f-08dd524ff3d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2025 08:15:50.2883 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1FjFBaN5Pa7bxaIYbcuRQ3IzC1iwVzPu8IhfW0epwOilEg84mU2RpVJGfc79Z0tnK0EWZGCXi22kOmkjHzduFbDjb0r+UgPnSX1xMeb65qk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6760
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740125789; x=1771661789;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ULnXFLafQ6DaunTLyUFQp95WyGJBSss/Y4zcQkBE8jM=;
 b=heDVza3Wpx70BiXNRInt8b03Ji+bVQ8Qvu482ZZstVxZxnV4LFZsce7w
 eIQ0vYw0oTXtUq98spoSmjqqzBozGveAet4eBLTf6lK5LsKi68iAQXQ+S
 PP8I5WrzyM6AHoLlhHMgHpBahjV7APjBiZekIdmOHcuoAdjHs09odY8fQ
 2pAzgHLsrpylmq9Vl7FoCjEkdchGPEYR15+rOaB0Bz/UfXq/lOPC022Ji
 mk/nhf86YRtw2EEfeEa7MazEmRLOK2AvfrZYmFvVS/cAqZyU3csbJcVcj
 uXOMdydxx1lW/5E18y03oqXRVNtFrNECqcWP9i7eRAEEDd1ZWAePPnHby
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=heDVza3W
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: Fix deinitializing
 VF in error path
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
> From: Marcin Szycik <marcin.szycik@linux.intel.com>
> Sent: Tuesday, February 11, 2025 11:13 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; michal.swiatkowski@linux.intel.com; Marcin
> Szycik <marcin.szycik@linux.intel.com>; Buvaneswaran, Sujai
> <sujai.buvaneswaran@intel.com>; Martyna Szapar-Mudlaw
> <martyna.szapar-mudlaw@linux.intel.com>
> Subject: [PATCH iwl-net 1/2] ice: Fix deinitializing VF in error path
>=20
> If ice_ena_vfs() fails after calling ice_create_vf_entries(), it frees al=
l VFs
> without removing them from snapshot PF-VF mailbox list, leading to list
> corruption.
>=20
> Reproducer:
>   devlink dev eswitch set $PF1_PCI mode switchdev
>   ip l s $PF1 up
>   ip l s $PF1 promisc on
>   sleep 1
>   echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
>   sleep 1
>   echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
>=20
> Trace (minimized):
>   list_add corruption. next->prev should be prev (ffff8882e241c6f0), but =
was
> 0000000000000000. (next=3Dffff888455da1330).
>   kernel BUG at lib/list_debug.c:29!
>   RIP: 0010:__list_add_valid_or_report+0xa6/0x100
>    ice_mbx_init_vf_info+0xa7/0x180 [ice]
>    ice_initialize_vf_entry+0x1fa/0x250 [ice]
>    ice_sriov_configure+0x8d7/0x1520 [ice]
>    ? __percpu_ref_switch_mode+0x1b1/0x5d0
>    ? __pfx_ice_sriov_configure+0x10/0x10 [ice]
>=20
> Sometimes a KASAN report can be seen instead with a similar stack trace:
>   BUG: KASAN: use-after-free in __list_add_valid_or_report+0xf1/0x100
>=20
> VFs are added to this list in ice_mbx_init_vf_info(), but only removed in
> ice_free_vfs(). Move the removing to ice_free_vf_entries(), which is also
> being called in other places where VFs are being removed (including
> ice_free_vfs() itself).
>=20
> Fixes: 8cd8a6b17d27 ("ice: move VF overflow message count into struct
> ice_mbx_vf_info")
> Reported-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
> Closes: https://lore.kernel.org/intel-wired-
> lan/PH0PR11MB50138B635F2E5CEB7075325D961F2@PH0PR11MB5013.nam
> prd11.prod.outlook.com
> Reviewed-by: Martyna Szapar-Mudlaw <martyna.szapar-
> mudlaw@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c          | 5 +----
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c         | 8 ++++++++
>  drivers/net/ethernet/intel/ice/ice_vf_lib_private.h | 1 +
>  3 files changed, 10 insertions(+), 4 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
