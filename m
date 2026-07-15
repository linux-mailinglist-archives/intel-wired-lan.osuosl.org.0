Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nQGWANRSV2oqJQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 11:28:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A731F75C7E0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 11:28:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="59/7Xu+Y";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 18EBA40677;
	Wed, 15 Jul 2026 09:28:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 61ti07aE31Br; Wed, 15 Jul 2026 09:28:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9037B406AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784107726;
	bh=xmC4CCp33+US4zjmTC7mYd5rLRK9jWkWDAZeUpRw2Iw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=59/7Xu+YkmN1atKWkfXAwq9ncu6kt+v2jbnLgeHyc5a078b15y9cWsNwTp2jD2aM7
	 lqjDlqNBD5oRgEG1XUT7cdP3jPXX+f5NtdRh7PM4Hz+/6LrjfrR9C0ez/mAllZ1pnK
	 +q4lOARJYXCxzRAXqcpZt4V24FffBrbR77PmJAhu+xu7aTmclHoKO0NUV9wrkYaGCz
	 /VBbPu8xJm3QlBp81oj7VVoSKDOxjWO3uFDC0nBkR3TiEc3Gy4xGl7e4KSweEL/7vH
	 JTdUWAdtSh8iwYXFQpfP5iBSf8NZl1Hdr/FNmtpB0UwoDtBDSOI/Jg0LvGSvSb8KHc
	 aB+WVd1r9vagg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9037B406AF;
	Wed, 15 Jul 2026 09:28:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F29A499
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 09:28:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9009340675
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 09:28:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZU4EYxqQzZVx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2026 09:28:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9338240677
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9338240677
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9338240677
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 09:28:43 +0000 (UTC)
X-CSE-ConnectionGUID: XseLR4ljTYqbYc7O/zdqQw==
X-CSE-MsgGUID: PmDiPEAySg21GhY7Ew2pLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="96107191"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="96107191"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 02:28:43 -0700
X-CSE-ConnectionGUID: 3GXrnDUfQGCvuv1ibjmJlA==
X-CSE-MsgGUID: ExYQE6jqTEaOH/MkdmmBPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="255622013"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 02:28:42 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 02:28:42 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 02:28:42 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.0) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 02:28:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CUVID13fANg+1T41pcGOBQ322SlMH7MLp9HqGxjzSZCHmc8/G+t5JtL6QOryzYzS/uTQYpNukbwf2D9PQHF8k9n36gx1EVFWBsF0HW9dHqZeuLcSUW6mJLAcuRUWPxLmNvXmprAUOZNhx1Y3iyyURJy1iSIvFWyBwMcWerYEfrOnpwc2sSZ3xru3GrWZkWYyiT7tkmAVX6D5awG+MyXTUNh4/78doqdGvWtiWrhzTex6wU7iqizaXbwMTO87kCA0GysOdvoRvRb4aWar+9SA7hCVXb9NZcyfNkREU/8d+6eC6R+Y3SkBYVL4Dn17Us8uJRB9wLScqX0OtxqSgjSbOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xmC4CCp33+US4zjmTC7mYd5rLRK9jWkWDAZeUpRw2Iw=;
 b=RD39LN9p5gg+s/y9dYdrPRi1ALyuOplzW9LVnNIwUFsFyo0PwaNUyqmD7s48+96Xqi1kWOTwBEqHh74Zr+swFwCq3Xz/GtUMzqX5nxkePYUza/9D4AXQ42F49pTQR7AxxAEfTdleZ8ABGNuoIH5jWjxK/N+0NWeeUekNGzF+dbA39MnfO2KkWXbyvNs7RegGzpPCuRF4k+ImVn511Hjr0KDcgEeD6qC8j1vtZ0noVDgwgKikc/iYmVH+QihFLlmXVGwAKXxr4gFfCP7P5IXt9FaDNAmDLH+1NEJhR/yaNgM3GLEflrsg9t+r/J1XpFSRBKv8zEFVClQP7NCEGUX7HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5890.namprd11.prod.outlook.com (2603:10b6:303:188::18)
 by CHAPR11MB9631.namprd11.prod.outlook.com (2603:10b6:610:2fe::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Wed, 15 Jul
 2026 09:28:40 +0000
Received: from MW4PR11MB5890.namprd11.prod.outlook.com
 ([fe80::b3b8:941:41d9:9d77]) by MW4PR11MB5890.namprd11.prod.outlook.com
 ([fe80::b3b8:941:41d9:9d77%5]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 09:28:40 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "xuanqiang.luo@linux.dev" <xuanqiang.luo@linux.dev>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, Mitch Williams
 <mitch.a.williams@intel.com>, Greg Rose <gregory.v.rose@intel.com>, "Sudheer
 Mogilappagari" <sudheer.mogilappagari@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Xuanqiang Luo <luoxuanqiang@kylinos.cn>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [PATCH iwl-net v2 1/2] iavf: fix ASQ command buffer leak on init
 failure
Thread-Index: AQHdFDPO7fLtZlU2X0iV2bSXFTz5M7ZuT+7Q
Date: Wed, 15 Jul 2026 09:28:39 +0000
Message-ID: <MW4PR11MB5890DCEED74E887ACBC9161AF0F82@MW4PR11MB5890.namprd11.prod.outlook.com>
References: <20260715082548.56687-1-xuanqiang.luo@linux.dev>
 <20260715082548.56687-2-xuanqiang.luo@linux.dev>
In-Reply-To: <20260715082548.56687-2-xuanqiang.luo@linux.dev>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5890:EE_|CHAPR11MB9631:EE_
x-ms-office365-filtering-correlation-id: 446afa22-607f-48e6-bc76-08dee25374ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|23010399003|18002099003|22082099003|11063799006|4143699003|38070700021|56012099006|6133799003;
x-microsoft-antispam-message-info: 9y5vgG6sP7vEoJFmtpvcM2V+CSaC3hfduNZykDneU8fBHEpL91sBye9nt58K29ZuELnjxvcc8+HmCnqqS9CJ1TbfcZ3myq+GIHOfBQJNlHHhGZkgF7rkVOTrKkChhH0miPTurFTYKmgzLdInIPIDLRBssy+utY7Fuhq9wDImy4u0qUmLOI0wPXyR/ieksvXG/a1HePA1t5gd7PXn6FRJ4dYJs7ZNR34JfPv1fErfFKlZuO2C7kZEotvSe4RZztayiFqc75vZA+7GfmVrMUYuvdupWKnVF2GnqTQP+x0t0aVOCnUemC5y7bHqcTX1y8hnDMDIKFi7C5HtE/fwZfRMLBTXqsI3NcnGe0C8dRqLBrHJwsIdmlgOZt3AnS6aYPOWIfqMBUj2bmd5CCGxWS5a+YCMznTL0gQ4YOj6bwp7ddb3SYmZOa6iAGmTCXAnyjOUu+TzZveTYN1HRsinHVkHHU6JHLSjXGjQhrhzacs5Lv3yggjg9gL99FgPAu6NQ1J6nHsOGQBiIFmkGRfWABDIgvm6CDtJaPfqVqrKSfBf8d24HwsJZIYVdBygoX7U8H8c8bNEPSCL6yLVHuV6i9tqPDZ+Gea96Vr3a5J0trSco5OKgwVRlaXORoHqKiL65Dpfzlf59yKN0+3UCcAKmA80juP1pRPpU+oFEKkrYY5w+3YkcxeTdtxCDZz238/zHq9mx9RBVWRJtu+Okd3gRnraY4iW4Y6ONb5b4UgRltvrfVY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(23010399003)(18002099003)(22082099003)(11063799006)(4143699003)(38070700021)(56012099006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eLOQzVP3HotWdNhkm5zc3nQnLM0jmyLWYw5XZz+W4sdKRB/1Cnb86cKN8ttK?=
 =?us-ascii?Q?8AgBOTG+C7f1ocpYujfb5Slqyu6w1H8fzVIGqxzZk8qOyu6t/lNfOjb75H3u?=
 =?us-ascii?Q?80pfOQHN5mshiJBYdCO5HcTStdudkaqLGGUsKY6Q6A3DcYAax7k+VdnUTdam?=
 =?us-ascii?Q?cH8+D+1FJEKOMC88hfkz2UYuQak8jm89mRYkxjZXvD7T7AwEDP3s9WFJ1jxV?=
 =?us-ascii?Q?5EF+VLqvPGb2aFwRkc2i2F0ecqIhW09EfNsua5eaWqbRs7gqGzgUcuy38emi?=
 =?us-ascii?Q?uEEL+8s2TYF0zWpzOHXN27vxhUA7xDusBNDbSvLSdv4lDeTj+XrGCwxrRp8K?=
 =?us-ascii?Q?OFi78xw/0mlWVWZqn20mYeb3YII9lGMXaMldms5/meaDriMqImpDJAz3BnNy?=
 =?us-ascii?Q?PyyB+DDWYChHkP1VcNC/GOXiVCzixFt2A0s3LfyjFnc2K++7JhKNBRJFgZ7j?=
 =?us-ascii?Q?m2jxq4/YbMMp1qoCCfKHVz2C9vUZusbXEiuPxjnHkoXY+nuw4rjxtxt4P+fH?=
 =?us-ascii?Q?dz0DchJDH6DOpA6SCTirQUTm2gq0WltHq12e9BtzsHYbj9fDiaTSm8elWfS9?=
 =?us-ascii?Q?VPq/AKN2itFxtS79RPygaLG58VD2LN3/lg8WTwprilEqjPiu3xNMGO3mYf0H?=
 =?us-ascii?Q?96MiHN7vDby8MbVjZBRDbxveL8E8XP2qi4sxtBEfB7oAMf9+Gdc+L5IMwEcK?=
 =?us-ascii?Q?gJcKkS6gkHl2GQRbYhk6bxR18wGsr0Zmkzd2nM3HHktxG4RwJ59GAvg8FZGj?=
 =?us-ascii?Q?Jl1VAN3OikBdodaeVuZcB3/m6cr57J80ouFHzOWBocoCS5Cl4whrFoxNS1sh?=
 =?us-ascii?Q?RrPYv1bN25FmAIrafgW1rFySWShgRmVckhXqLuLjw3IcCSeXuMUtQpLOXi3l?=
 =?us-ascii?Q?FsKwpGXPgzUpCjo9gmI6uM7Ze00jcKKOs3uRNieDOFToD0pZeWBSMJTmeTMP?=
 =?us-ascii?Q?mmyNw9D2DJMFNH957uHs2fSd3Za4bBv8Zl8Pdgq2yvy8t3yOj3EpuGFFpQm2?=
 =?us-ascii?Q?FSP9+lGzlaZExTPwk1FTH5m3yKi4Cr94CuNFZGYtfEiRYIIp9Us54yY0fpse?=
 =?us-ascii?Q?AW4GWTPD40yvYHjIWL0axRM01FkbbOGj+927JXMvhduBGeLa0cILlYzzlIaF?=
 =?us-ascii?Q?2qSPpIhHT5EV88RU7hFbpOIzXgdFUzWi0CYBi7qVESxOETouJKN86vvMWmXs?=
 =?us-ascii?Q?yevWsH0F8Cb0G0gDNqex1CQQscu6JWDb4Q7B9LupZr2iofcjgsIWVRE5NIL+?=
 =?us-ascii?Q?jRowsoVzvbibiVbM5e+m90TyPZcj0K93waNITnI+JIrXSenUpN0QNZ9frOGe?=
 =?us-ascii?Q?DnqiU16iSpmA6ds2N9QUkBeJqKQHlE2R0b9SpIsAwHijKl5oOy9uL6yI+MBz?=
 =?us-ascii?Q?c6vXIYjZJjQY4BQiV/oPLSrJPYjWe+fktMfvtgx0koWldIDW1nIzZ2ERtv5W?=
 =?us-ascii?Q?7QrIBzlGk20mBTITc1d3E3yNYvBHqwbkdcnwz1364pmitLug1jSTKCTz59tq?=
 =?us-ascii?Q?Wa9YZU4pshAijYN+RFr/y926k8ytBq2l700YWySZVmct5QO/uqGsc7SeIqoV?=
 =?us-ascii?Q?EQsdOQghFdTYcFjy1mR+YIEofX41eVv5laxoEf41MWqdVWmWtLL+EdxIwz/v?=
 =?us-ascii?Q?LFDMJkA9gqtjpzz+D2j0mfIV5/vXOVZus9Hw+BNLruMD5+YTMV/ISu/hK9wI?=
 =?us-ascii?Q?xaiD0tgF8hztRLid2mtLbVnNNX0M2ltrmwJJdNj9O6ogdoYvke9EZeFfdrxj?=
 =?us-ascii?Q?Y+jz5qYeng=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kdfLYnQxq+rtsJbAapFvKF1IK4b2+ZIIYuvEhd/GmuNIg8LAVJ7018eooChDLxc5mKeov8kF0B12tR3gezCIpMF6Z9J3HJERwtuBSVnJckoSx9JycVHpGXd1Iev055xFqcz83mLenbj16HSUWbIPYrjCc39H2jna1e3Px8sbpGGNSU3m2vyv2cEgdIOzxUg9xQ0BKfF7v+fLDV3hiz+B44w2cFjTcWfVTtUOroKvOG6zDXkb1Xw1HvmHV08mZT+va/MwhNidWRLE9Nu+psCJ3hFwTMbbhT0Mm/okQNrDN5ydRTpKVxZcNSz8rmN2CMiJ6aCD9T7UbAYWnD6WPybjzA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 446afa22-607f-48e6-bc76-08dee25374ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2026 09:28:39.3262 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3dL73AgZ89p5ubNq/opCYubTH3g4XgDmYOrewRKOemb25r9vjcJ7jv+X2ztCvIhAQgN5CwKoGWx4oPsLTM8LHGpNhI2dzIeMXy+ujkfT5TM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CHAPR11MB9631
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784107724; x=1815643724;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wxD7O4OkXnlg7ytDKv/1+A74dE5lKG4/TRc5WOpUkQk=;
 b=GinGvZcbTPpfp2eBPcvDMSNmbv9L8BVePvVvD+yL2YfeX8Ds1osbN7Ch
 ILJ8ao6vbLe4PtuOF4lYpnmKz3szYfoiP/NM9w7CKc4Dy4wpWNIQlku/Y
 50eJYBeEGmp1oQWqGh10N28t/Aae/hPrSgzE8JOkuQLRjQLJHriJUA/m6
 LGcnnJilRwWv9jKSL7ECQx7hZcfAbV7+p2zk5CqwGDMa/QtYflk4xsFec
 mEAjx+HJFO5OMVPlURpzj9hCrxWAM0H7Xujnsj1g3xWN9FrcJTe4Gsl5D
 CKUm+Wz2K7ZuSJ8GpTa8APWGQBhAyy+fq1QRvEsezOSz0KApGtxszg4Mb
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GinGvZcb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] iavf: fix ASQ command
 buffer leak on init failure
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:xuanqiang.luo@linux.dev,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:mitch.a.williams@intel.com,m:gregory.v.rose@intel.com,m:sudheer.mogilappagari@intel.com,m:netdev@vger.kernel.org,m:luoxuanqiang@kylinos.cn,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kylinos.cn:email,linux.dev:email,intel.com:email,intel.com:from_mime,MW4PR11MB5890.namprd11.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A731F75C7E0

From: xuanqiang.luo@linux.dev <xuanqiang.luo@linux.dev>=20
Sent: Wednesday, July 15, 2026 10:26 AM

>From: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
>
>iavf_alloc_adminq_asq_ring() allocates cmd_buf before the remaining ASQ
>resources. If iavf_alloc_asq_bufs() or iavf_config_asq_regs() fails, the
>unwind path elides cmd_buf while freeing the other allocations.
>
>The ASQ count is not set until initialization succeeds, so the shutdown
>path cannot reclaim the buffer. Free cmd_buf in the common unwind path.
>
>Fixes: d358aa9a7a2d ("i40evf: init code and hardware support")
>Cc: stable@vger.kernel.org
>Signed-off-by: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
>---
> drivers/net/ethernet/intel/iavf/iavf_adminq.c | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.c b/drivers/net/e=
thernet/intel/iavf/iavf_adminq.c
>index 6937b7dd44cbb..40f76f9507f4b 100644
>--- a/drivers/net/ethernet/intel/iavf/iavf_adminq.c
>+++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
>@@ -60,6 +60,7 @@ static enum iavf_status iavf_alloc_adminq_arq_ring(struc=
t iavf_hw *hw)
>  **/
> static void iavf_free_adminq_asq(struct iavf_hw *hw)
> {
>+	iavf_free_virt_mem(hw, &hw->aq.asq.cmd_buf);
> 	iavf_free_dma_mem(hw, &hw->aq.asq.desc_buf);
> }
>=20
>--=20
>2.43.0

Looks fine, thanks!

Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

One note for the future - please be aware that there is minimal time period=
 to be
waited before resubmitting new patch revision, which is at least 24h for ne=
tdev/IWL
mailing lists
