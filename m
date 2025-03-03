Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 272FAA4BDBF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 12:13:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 802DC40F48;
	Mon,  3 Mar 2025 11:13:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TniooglRfB-Q; Mon,  3 Mar 2025 11:13:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AEE340EC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741000401;
	bh=ibhpjCeEZNQOzWo/cA1BEgxB+0c4h5UlffpyX73ysz4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e2GMsoNU/KFJ0RhC1lxn/a0cgCaJWPi/HFuSdQA50Jl91eZ9iEJ2JC2EtAKqS1LlL
	 9vUzWtPjnd1jrrzgd13fw9dFLPZrMyd6eGGanzUcvHiD9XtAyu9c8T35+PSpu5tsje
	 MvpIiFlf9I5LqSDP3DqzgmOl9rOnsxXvvZCUC5hReq+TdSaOvHjj6202RxjGg3npom
	 ijrT7hdbsuQ0w4dwOtDdvHuO0iVPE8ac3E34qrE6q/qShLh3ijLFKk1Hx05i918CvN
	 ydsXzp0wlo23f9Mh2X64c87G4/J1l4ErTrtLOykHsSn4nLSFLUHqH8xYNZVQag+7lQ
	 O1fDON3KDB12g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AEE340EC2;
	Mon,  3 Mar 2025 11:13:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6E015C1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 11:13:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4EB3A40A1F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 11:13:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sjWun-saoH2X for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 11:13:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 31185401D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31185401D2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 31185401D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 11:13:16 +0000 (UTC)
X-CSE-ConnectionGUID: nZ5XQfT4RxWMOXOFXd4Tgw==
X-CSE-MsgGUID: xFu5dIDjQxuJAM6Ho8oc0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="45644086"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="45644086"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:13:02 -0800
X-CSE-ConnectionGUID: fJS5c0DVS9uWBYI9qpFprw==
X-CSE-MsgGUID: 7wyoAK69Qd6rKaPWz4sb4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="122977643"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:13:03 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 3 Mar 2025 03:13:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Mar 2025 03:13:02 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Mar 2025 03:13:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cuXjxY7KEhAYDzabT0OC6jGgIV9PwS2FTpZ3kPct4Q4sCSdAo3bRZZHWhaVEC9aaAi6yrZBUk2P4G5S5FZICsa85F1qcEHOOR9AIp0laa/ueegSU5wh8gISeVmATC+Z3yMNmG5Ae3eIC89sX0OtmJgGDuSNVzOqYcuyZbCO+s6Y4SjrKDNb0D8Gf9Lz9Y5nMTvNulrHHfX1AVHn/C8nC8IT73Kjq581ropByX9CE+j+lk4a4HLJRpSOIDP4tKYKI/sPNCF2Q2JheJDmRprDA2JVyrc8aHzEu3lfcbCrAqVxpLv9v/zxgzQTwu9EPf8dYlEWGwt1OKYQIwd1PM9Ngvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ibhpjCeEZNQOzWo/cA1BEgxB+0c4h5UlffpyX73ysz4=;
 b=QiLYSu7tUDbEyQdJPbBtbUdBmRErnD8wXbzQ0YDUat56Jf/dBLcYQa0bKZu8nO80EeuQxRnJ0hRXcnJQbiITRYe3vYel5oYruCyYCzy1ikRds3Cr3NVhSLnXyqsLg+jD195ItWPim0SdODUzKxjCJ7sRkg/FrcrCI7oHqwj36iaNZVW5jvzopDUca/KNPIJopl9doI2T4PcO7aI1pHkBivY314Zj4NKK/IRos5ccNjAGbXDUH8qZ75CzgxecEQaOsBe59pXrweP8gL3erF+X3+UfFshfCOfsS9FmO7Fv7WwZeWxIrqP2gDbNeNpOsOc4GbCUTv0Etaccupg6ipakyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by DM4PR11MB5293.namprd11.prod.outlook.com (2603:10b6:5:390::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Mon, 3 Mar
 2025 11:12:46 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%4]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 11:12:45 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Mrozowicz, SlawomirX"
 <slawomirx.mrozowicz@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 07/15] ixgbe: read the
 netlist version information
Thread-Index: AQHbhFj9gNcdSWMjM0mfD4sI9d0b4rNhUWNw
Date: Mon, 3 Mar 2025 11:12:45 +0000
Message-ID: <PH8PR11MB7965072040D4802E558D7EBDF7C92@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250221115116.169158-1-jedrzej.jagielski@intel.com>
 <20250221115116.169158-8-jedrzej.jagielski@intel.com>
In-Reply-To: <20250221115116.169158-8-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|DM4PR11MB5293:EE_
x-ms-office365-filtering-correlation-id: b9078cb6-54a5-484a-5af5-08dd5a445338
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?OUPPhl0b/+OLepFdIbxhILVSfc77CUBUDOVY/XGrGZT0JdybVjROgJ0rpiMW?=
 =?us-ascii?Q?ZunFk1A7sDHOrmk6BQsnIWNWpEdZsdW+ti8SEnV/KBWDjmE3jBTHhF10Po9D?=
 =?us-ascii?Q?SFROSdOYkTYnM5CMD/nPZOd0/Aj/iM24wP9OZ3MZo7Y9Z35Ho1lnH759fdX2?=
 =?us-ascii?Q?G61BM1OMlH0CrvqjUwErVCZ73zvSL6KD+o97Nu6Qrci+RjxG3uLPtNl+OPM/?=
 =?us-ascii?Q?1OL+5AOjO7KV9rpZiFs2N1g27LQZzQ7iAzOVs9T1+IrPd/EC9FKDI97IJTpY?=
 =?us-ascii?Q?vutr7evGqrN9LubhUQxq3TmpM0XnDe8R7lfCpGnPL0AfQW9IacKmquybnpPA?=
 =?us-ascii?Q?Bp2LfNraQC4by4w5uJ6EatILWOsjC6szKmvPOasKdfdU+WalU9452sAg7AcZ?=
 =?us-ascii?Q?BJ0JCXvmq7PS+YdmbFTOJiBGjmPKZJWmftazN1ADBtoFI73Y0JBH1UDlNkP9?=
 =?us-ascii?Q?68XH2cwlt8PU29T0tUpOYEhj2PnuTeE/9NQXsGmC+aguHsJtxc0JfN1dmJBb?=
 =?us-ascii?Q?3hLmI9GxJwNrwc7252D7IXFKB45pqaRpy+22KgZd9Ky7NH87aKSPJwZunrId?=
 =?us-ascii?Q?aX2Qoksl5FzmWPs95ZvBzy9lftOK9qD+ntxWFgfMs8++zbg492p3FTpaQp4L?=
 =?us-ascii?Q?9Gup5LGwk/3tDEMTU7qSllpkqiTkSmPcI31cN0KxMyB+7o+8JIQeCmdI5oJd?=
 =?us-ascii?Q?sKbla8Yaqn2fxxuEJINbEL68DMjCLDCeIsRy7TdBCuPkC0/mkS00ClBlmMCW?=
 =?us-ascii?Q?jq+nxmY74fKLK/lAKoivNWKmDEv8sRjDsZvb+pqd+BrYATmMOXbyeSJbCjAv?=
 =?us-ascii?Q?KS5y5ZAcTvEDs0pZaxu6nAabZAxaQiLHwTmJaIVZSq/uzl2+dcYtv03u3Xln?=
 =?us-ascii?Q?kb+piNx7aFXXmBitaVxr7u/wIAf6F5RxZHDl163ZagR5glyco9kXzpy9ONXr?=
 =?us-ascii?Q?VM+Pq0zsodaISNi9WKUvupna6fQe701mB0Fmn7wcV/ohj6vQYUpkQO7GtE4j?=
 =?us-ascii?Q?umH1Uq07xMLVr7YEYFw/6AvWQKudnfBDLjichDmGP16H0+0brsiHVnU9vqOk?=
 =?us-ascii?Q?aY5x1TjicHu8jKxxtxnvpJkbe4DYJW4BUBDv6F+EJNfCyXFhhTd+dcTJvdBc?=
 =?us-ascii?Q?rNWTZSE0AV+MUADT3+vOAU2Wm/ny8Sw6gW/HpASubMD0vlUrAZOMQDat4F5m?=
 =?us-ascii?Q?o9+D9Eu0PU3RibT/MW4clwj950JLiUzq+LRtmrNVe0m+hQ1cYWR8jcrVUk7o?=
 =?us-ascii?Q?IZNJpbBmbEyErxX5WzAkpTVQ2bUaGb1UT7zY/NGoCo16z63jDkKoFhT4bFqV?=
 =?us-ascii?Q?AQF8oBz9sim7dsq1tc5zO83C6uod2K7ZdX4W+SCyCamXnG5DTYiToB+aY84r?=
 =?us-ascii?Q?7aLdj8tDavsG0KvxuPFJMPnhYedNH0N44AUytKpKyyHSSmPAfv7uilfOgiLD?=
 =?us-ascii?Q?6YOTNiveU2w=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gKEzdI4DF3z0rn+CmMjEMdG6PQzb9XftwLCmEytIFw/Y+1RjYGMU9+hONjLg?=
 =?us-ascii?Q?4ZMNw5qvG1LfoBFfVNb4iaD+iosf7/+YQ1FB+OCqfhkkyyVrCXldeWU54mpu?=
 =?us-ascii?Q?mkpv5nJM26N9wGp3Ln4Ux7LY1nD/+xiD8p4uK72sh5jpMevMQscq7O672LxA?=
 =?us-ascii?Q?ldn5hsDHRDAJvqbYQNgN3xEHWDqDPL8kmncSncPRoWGBUeqKdvRmDDbAO5lU?=
 =?us-ascii?Q?FbM5vKvhO2/8EP6bva+/t+mUhAqnW+CjB4KmnSG4z5v73Va8U+1/wdCKSDLd?=
 =?us-ascii?Q?qc585GO3SqNCHRM9mMvbYA2uyD5pJVRK2woC+t10/uLU/VmAZyt7yABGdObD?=
 =?us-ascii?Q?KApjDaFurPM7hucFbI+WNQctXv1S1mm2AZv2fJokDWwTKjX+GM3BUe+4q54l?=
 =?us-ascii?Q?XxE5B6+llJHHT6YidILrbO5rjHnB1hUNylq/b2f0GYi8DFaozIJaYrP+9Gj1?=
 =?us-ascii?Q?OMGrTK8FwLeWKsNETRYj89FUtOQUFmBqolV/xZ5zuyCuoi/saQZoD+24XgQ2?=
 =?us-ascii?Q?o6CdEtdDqcCx+BocLPOq0Zd+yVfm0EWp9eVi+tb/DTvCFJKI5hjsMv7YN7Ao?=
 =?us-ascii?Q?qRkNb1Rrub05w9GIhQWcDwG7XdR8mTuY5FXuJeHZ6UMnTxmjjcz1gE3JiJgW?=
 =?us-ascii?Q?MKTZOQ6FkGbeVoRklz20IcF+C3UnrPCqEpdywoXUcngN47SdvkeFmeX15MzJ?=
 =?us-ascii?Q?QpBcQPNZvXBBRL4rMJX62Lb9hML2pYXVzyKKI7SjqBHoo1ZxoObvOU/F/PNl?=
 =?us-ascii?Q?wzdOFXPlbCqYJWXed/skczUjrEwZFx6K+cQb8re+Bl5lG9OBWe20bjeJw90u?=
 =?us-ascii?Q?OTEtMpWInvjD3EEr7w0UnIUDOjm73v42sUK8aU5A0n4hXh+Dj1xEfmH7Fw3x?=
 =?us-ascii?Q?Ic3+hBmXeCLkwqg6L4aSuEzayJ7PVnsNzvJOYuDe3t9KkavKabRjg/lguCsO?=
 =?us-ascii?Q?M4ichQ2O7begQvJU/BrYjGyDCLIaNrT8u+PmyI8ozpZwhfzhO/K4zznPBTtN?=
 =?us-ascii?Q?SeSCqO+GC13tGmx+LOQHdVzw92AH3Ws8tBWbVOLLa7GSzbiGetNwgx1Lk7Y9?=
 =?us-ascii?Q?abfqR/T39PuttfPbSJEqJsgZwrTlfNVMySNyzOuK3JQkO+h6xHYl79W/mFHy?=
 =?us-ascii?Q?cwnkb10Q2nl5j3XnBraVkfuP14VTlNyyzG66DAlyfeaZH69jWM1oZ0tGsXlM?=
 =?us-ascii?Q?C4SZ13u8vB2dZvhbr6WIQ+wDVDyRP47xSq9YTqVT7evcEdFz6XqEb/Nb6wAX?=
 =?us-ascii?Q?I5BZwSZgVHN3W1nL7SUVmSMVUvbhYNl1WPheHHkEhdAOmKPaD11tjYH1tEBi?=
 =?us-ascii?Q?ouBZjGv9i7O3nYM0Wjvxe780qLaGQKei1Atq/DHhjRvs9uKFgp2pLn5Zmjbv?=
 =?us-ascii?Q?kxzhiDUumbjWoq39D/o/1dCOEd0M8fA/I1wjbw1I2hbb9a2HMia/kblWb0At?=
 =?us-ascii?Q?6IHALfoIOeLQQBXJ0LzLLdwlLE7FEZX6Bqs+6v4zE60Yhq1wQ7UvZYQFOVYy?=
 =?us-ascii?Q?JQa0TeTjMUYgRnLFFOUtVwS+sA1lB7k5Ki6BYX2QsVgi8u7GXebVdz1wwEI1?=
 =?us-ascii?Q?Fgwgf3sPIPmz3dJWZauSxjmh0606FneCN9RLj7I4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9078cb6-54a5-484a-5af5-08dd5a445338
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2025 11:12:45.6727 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 11Ynm28D6WQEYgjvClmjusCQGcVfgKhlIKcCKuMHmZfMK359UsHfF8BjL9cU81dj9M/T0vzOVc0mPUm/bpuLMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5293
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741000397; x=1772536397;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=foMXH0+XeqrdBsbIjOo6tAmJ4MZqqv5TF/IRe82RjVQ=;
 b=Ph+bWaQyCzSnwqUdgWlDTn357uNpsEeuRvPst5d5ORKy6li0Cwxo0e/W
 VASCPlqZ8eX2GlyMbVUiapERrVMAZBImelFffno2d/Ea8+GBG5CxkPdVf
 b9FOz+4vOTmSuuQ5m+vaiL3ZPxdc/YqE1bEPcz+dxBorg/fqs4iGbtzyV
 xakdO/TFoXDmmJrKodsxhzctL7E/Sl4BmVarWmFWc/VMVmT4U17D1obLS
 OVjvS6yEb7vToSgaPHz3lcGGfwUXCcGBUEE3RBgTQkQpOP2gj69OXjTfn
 w0DjZ1m4f/u6lEPecitxEWWTO+CNr25Cm7nb6yrUczShQx6RkiuGVzs/v
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ph+bWaQy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 07/15] ixgbe: read the
 netlist version information
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
> netdev@vger.kernel.org; horms@kernel.org; jiri@nvidia.com; Mrozowicz,
> SlawomirX <slawomirx.mrozowicz@intel.com>; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@inte=
l.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 07/15] ixgbe: read the netl=
ist
> version information
>=20
> From: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
>=20
> Add functions reading the netlist version info and use them as a part of =
the
> setting NVM info procedure.
>=20
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 112 ++++++++++++++++++
>  .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  33 ++++++
>  2 files changed, 145 insertions(+)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
