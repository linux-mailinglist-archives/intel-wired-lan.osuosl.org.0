Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEF7ACC30A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jun 2025 11:30:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAEB7615F2;
	Tue,  3 Jun 2025 09:30:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JGo_1--ELLtP; Tue,  3 Jun 2025 09:30:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92BA4615DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748943004;
	bh=/7j6HUEEHRnALESAFZ0cOtardXBfvCOj5EjFaikiwoc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FE6JhdhTx5afX9Nj2uoaAdIfaireAD2TmbB44sYmnCjJZSQJhkpdZqaRACAeaELD8
	 /hX91a6ROOAfQXoxkoNPj8sXAEQpfabmV2LYPKKGMVhHmgzVO0P0uCyzEdFgpvvn7H
	 3FD+LdUt+RZ44UBqoyZ7aTh1dnfRr7wmKdaTO2z7BEdCus6GfWo3YNW/m/FNetBsZ8
	 djgLtqgfBPKb+NfJb6gFhEjP9Hmb2uNIMpqsWgLp2M6YQ7Oxu+pjzJNCWN6AzMIAQp
	 FmS4qTqkk/Y48q+b2myXE7QSE5rUC5QDm76ZmGiRnKVK8NjOr8Cj7LmLo6/7A258wZ
	 jicAUpqwCCNgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92BA4615DD;
	Tue,  3 Jun 2025 09:30:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 100D0DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 09:30:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 017F9414E4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 09:30:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0gAqCXFM-NxB for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jun 2025 09:30:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E28DC4135B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E28DC4135B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E28DC4135B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 09:30:01 +0000 (UTC)
X-CSE-ConnectionGUID: 7qnS0m+mS9Ou0KT/gyiarg==
X-CSE-MsgGUID: ixVJPU5KQtCwbOzCJ8l0Dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11451"; a="68527390"
X-IronPort-AV: E=Sophos;i="6.16,205,1744095600"; d="scan'208";a="68527390"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 02:30:01 -0700
X-CSE-ConnectionGUID: XB/nbxsfQAa0zWzehoPz0Q==
X-CSE-MsgGUID: P1AQouGDQmOkBazm0KApLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,205,1744095600"; d="scan'208";a="144687203"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 02:30:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 3 Jun 2025 02:30:00 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 3 Jun 2025 02:30:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.49)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 3 Jun 2025 02:30:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F+R/fcFBCUPJJjpU1lnQSeVw5XAoGz39LZyZmW1mrRlxWRWIMe3wofU4SN0S/4emu9/L/9l7y28YRUkJeCoH89XsxxBBsPFfGCojk2JzYS0oqtfXIW6awotsm4uSc8iXhkz7MwnDwxZB1ej1s8tnbNQzcgLImoSCcVa6UdZs8bF5i5SWHldGCg3ZHMOQIranSwZcVSYCy0nBDSExlF2E8CNH5uRkaQZRR/2F8OKvUW6zxdvxDQZWqRf5W8C61q1PVSRlg9UzkE0b9+urXrjK5i37BGGkxoyf1uoc7KdskklxI5ntZdLNgLR2jxideyLe4cPWjvr9G3SB/gdywULwaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/7j6HUEEHRnALESAFZ0cOtardXBfvCOj5EjFaikiwoc=;
 b=ymX9qRlAzRBigKsios2YEMMTYq4Xt9qke53O6bxLlFUrBdLG0VzOdbJJ5yi1B9ywj0Tim/T+ozp1eXQXJXKV/brGPz9y3b3waE6tDJ2zCskgavIRy8V17K6gAZmCmhwJB/g5soqcyCHdHQCnl9P3dBjjpUr/z7Z+ifIQsrxOox3QDjb/43NSCuNYmFh4UIKZGAjFPBgh/qecd95O8u0cR+8nU2ms4NassJq/F8eC1G3rHAnQWXIHSCca9noZ/zajt4YGO2PYq+8QPGJbpFR6N1fzqQcHczY3Pvu0qn9k8spHk1uDSzKPmk2/YHRHSHFHZBOMh1rXQEYbomEmaGyCTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by BN9PR11MB5289.namprd11.prod.outlook.com (2603:10b6:408:136::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.37; Tue, 3 Jun
 2025 09:29:53 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%6]) with mapi id 15.20.8769.022; Tue, 3 Jun 2025
 09:29:53 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zaki, Ahmed"
 <ahmed.zaki@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Stanislav Fomichev <sdf@fomichev.me>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 6/6] iavf: get rid of the crit
 lock
Thread-Index: AQHbpUyO/1ciH4miLEOz3TmL4z1IDbPxiWuA
Date: Tue, 3 Jun 2025 09:29:53 +0000
Message-ID: <IA3PR11MB89857225C5BD527F2419F3148F6DA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
 <20250404102321.25846-7-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250404102321.25846-7-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|BN9PR11MB5289:EE_
x-ms-office365-filtering-correlation-id: d3d816a4-aa9e-4cf3-2a80-08dda2813241
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ipQgygJ/mN7b/9jxgXRF7kvsli6tRh+0CHSC73UpYQ9u4wF55w2FU27fHdp6?=
 =?us-ascii?Q?2fz0DbrWqkzS4DAPbFNsZUyLQhbkNVNm2wRnHppOdSt/AqhHn0sgnGWFnKVu?=
 =?us-ascii?Q?vqq+leJZzDNWX5IoDZPemZKtOAZ1dDEC7y7Qr8CUZo6Uqv3D7g1wD3n5aAmJ?=
 =?us-ascii?Q?Fn2qq2+8VQUSfUMybgnfnvXeR0nO/gfQsFBzmLY7jyNiqcM1w/eARSYCyHlP?=
 =?us-ascii?Q?9upckdkAgOxjpuBip5HIfM8FYU+afTNkEXhp9DdejRi8+2Hsy4Mn2/re/oLS?=
 =?us-ascii?Q?Q2FpK8Qh5br8nu6dBIHN/hz4vfzxnpx4KsG8Aq9L7qWkgXIh/i+9m5B7WDGT?=
 =?us-ascii?Q?ZXUtgzn/vojqILTwkOHJEHVj9tfhjo2VLFyZ4J1z6L/UZHBE/3H/PVq8T/KR?=
 =?us-ascii?Q?P4fReWUSzLRWt9oHiyHjrilzQgzXByOf+oTA0T4GB7mn4tyzXADja/7qxsXE?=
 =?us-ascii?Q?6FdpFOZD7GfHnsiFANcA+CD3Rb4hU8D9wbJz+YhPWX/Zfelc28XA1e55f+nG?=
 =?us-ascii?Q?zjTkg4HGgQnNpBJPx4j0KmpQyhy9yMDOWVnCeG4E/5WTwgOX/KMWQIyd7jhd?=
 =?us-ascii?Q?w35Nt8aalv/dnZvbOB+DZBLBO6kvdVhIPY6YyUtc9rtEnurEZA7hHQ2C5mvJ?=
 =?us-ascii?Q?fb+qmATah4uDgR0Y96YWvXMQxGH+1TBMf0qGySHD3sVbH+SpGyd22iYN2zYP?=
 =?us-ascii?Q?E8nMagVKHSuOmSiu5FngdM/rFZFqF9Mbo1bhqXT6vNBxfQKHPRsVZz2aVu1S?=
 =?us-ascii?Q?vjqMaxyzoLYy8d/LChLxfRicDHhHRGDM8wEWTUr1nVpqDZWzHk2HvnDzzjui?=
 =?us-ascii?Q?6/nGqgW2UmoZkGg9W8L0sxPY5dQeRxtLu6reP2UBuRfQYAesnkc0WwL/vUJ9?=
 =?us-ascii?Q?71z2DD6+PV5pnlEY0jk1/dAdNMGQnUrIZyJQA7VHhf/DUmxeyNu3tLvcIrgV?=
 =?us-ascii?Q?9+IGgBLWhrGhywZSWp5V3pFkDmzpi4WyNnp6bnnHKVCbckcnblADHx2vo2Vr?=
 =?us-ascii?Q?UQc+mSR/njCejnsNDtp+DO22QerifLJpU+Bjos/O2EY02apUBdPk6nUW8ok3?=
 =?us-ascii?Q?kSQDWiCwtKu2tLAyVUrNfoSElLh2VQFXeEUQ/4SznZtsymj1WgOQYukA4FPY?=
 =?us-ascii?Q?0h4BRqUQ4bUCg7m2di6IiNHFc0y4iZKAicg8f0+xqXeY/QDfMypnOiCT0lcn?=
 =?us-ascii?Q?1dIM71nk4Hr1BjbAh0BDOS9FU/44fgK0jfETwBgS/+gQxmTfiRiNPJ7Ilhd1?=
 =?us-ascii?Q?biD/MBJzRrelC43rlO6TtYZbWLsIroJ3YfeQa9GjlB+u3CIa5AgPC3urjBIz?=
 =?us-ascii?Q?TS4OGCEC3QUcod4j8bEG6a0U+bsNwHr4n222YwNz9Dx797vZUy3x8DObBQ8H?=
 =?us-ascii?Q?S3imTqjcyv+a2DYFd9WkJYQXxlZ3PmtiS9/DKKx8VrX24I3vTWWqIxGNFeVS?=
 =?us-ascii?Q?ixY6tu7JsgFfy2JkILdqM9AJ2hmMKZWGlTsKlNiPP+U5Qui040RVrhcd5qtq?=
 =?us-ascii?Q?djFmbFkBUm3csg0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LbzVhd2Y1icg/ourV7fNAU08S8NLAd/aL4tbdMMTMB/xofNzkMBl/R9yoGaW?=
 =?us-ascii?Q?bJpUyl2YTxCXxE/YOyoHiY88qQeFPo9rUR8hUj5PZvPuWVWweQKLbV+d0cBQ?=
 =?us-ascii?Q?poN4aUyWhXQlu54Wfd2NTVBjTmd3HD29uUwGW6vAkLAkdAR6XE+AATpTYXK3?=
 =?us-ascii?Q?oW46CUJrFPf9uQJuPFKAUf29voLcSiSqQBPzdkh0UTrVAi6obpwjVvbntYHl?=
 =?us-ascii?Q?cvL5SEFGmf1audFLKEGkQ1noz6JAiZGwemWsZufK6jYFmvloWwi1OltArrwc?=
 =?us-ascii?Q?2sJGOQ8QeG753aOd2GN7vOkpG9XxgkRRQaCmotka9uUxcJZecMFgla9sjBE+?=
 =?us-ascii?Q?GJeZhCr479cj1LXQ0ZHUfD9CsTf5oV+ptW8zehft/TY4HjbDXMHqcZOkSCcG?=
 =?us-ascii?Q?Y9Og3B8GoSwK/ymXjbBvv1PC7PXwtetGw2iL7JZVLPRSaBtgBck2lQ64YSuQ?=
 =?us-ascii?Q?GwLRrKrgDfjMHQ4MiNwBJcAvBSuqnvFtZzT2enHzuwdFjgHiF/EfYboSXt7l?=
 =?us-ascii?Q?dR+IUjlRaVmlPL65m3R/KqeMlKee5zOB/1eQf+7AQCKQ94NCbK7EUG5AyjKM?=
 =?us-ascii?Q?qXsAx56kVQVTlwTLxpacs3dKPQ5yUoHWdL/D5P1mJ4sKxlZ6iU7kfFGceRHd?=
 =?us-ascii?Q?IWjBn7t0+bj5I6md0Ak2Ymlskcuj+8FE0NWlFDM2J0fJatMFvvAJDLjzGj73?=
 =?us-ascii?Q?Kf6zllbGgr2/EAk77SBYXpgXQr/kUgFSI0hEikYQiCJTdbU1FtpNUuaq416P?=
 =?us-ascii?Q?G4sxCCGttSEbh3GsFGcoTDvJ8prt38Mgzxz636X2PPXlT+FTus7MeSFZCanv?=
 =?us-ascii?Q?T8Jnq1Wfk+eo5MU8MhfZyiOyDLJQ7WNq2O3Vcat7N0nsGPY4E852Grm3jwgG?=
 =?us-ascii?Q?uvfw2Iij9c5zRo7wHYMyteFzWWc0XytxSU++qDs4uF/634oAqG7fb9530Vtl?=
 =?us-ascii?Q?/8Zgt2AwqZ9VcKvLBRnTIC9cgjSHElaG5MvPQCbqkX5T+vCjVV7mEWGy096C?=
 =?us-ascii?Q?RcjuQuj8xZl7TQW1YBT5ORefe0THchbK9MBbGst/DzPq+xBZ0DaS2dmpq8OP?=
 =?us-ascii?Q?TEsZdufAU4QD1/V3T7Dg7HX4FvgR8CASWXNHxIf3Rq5Vt2qb5/dLpwBYu788?=
 =?us-ascii?Q?ppf31IgKLcg1t5LcBtTFWKIe9tGWabDaL9v54IUfvxkIPA/Y22inLkh0Gp5U?=
 =?us-ascii?Q?fIs1OxyDplNYFLYvpQP5wRwIqDJ3tIniSzOe9vELhNZ/fzANAGE8nSgwVqrg?=
 =?us-ascii?Q?Kjz0CshUWpTPWckqoCqNWtwmEHGU9CEAgtE+WK4C1RKnk4oKQxcfasZcBYoC?=
 =?us-ascii?Q?mqjgK4W7yOC3jqIIJk7iMrxWpUnm/368HY50S6zF+DM7TGHOenEjnsXan27A?=
 =?us-ascii?Q?VElMtNEkXoDpohX6RSgZEnvYIyqiLMbR0al1gQHGTe/2fGzinpuW7q4ojiyR?=
 =?us-ascii?Q?5DYT1WeFTI+Aj3O87B4HWXhe282z32INXh1xUcJU6G3pcZ7L4sVtwBFzNf9v?=
 =?us-ascii?Q?XtTEwD5RZvl64bTG0OA9d9l0UxnlRQyDrfJh1sOW/9nzVA9xQQlMnqGbO56q?=
 =?us-ascii?Q?cQJQTfzr3A9xl1lPadBbELylmy5mpBhvKv+KfKOxS20iQ0xtNvTbzmUNn89+?=
 =?us-ascii?Q?YA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3d816a4-aa9e-4cf3-2a80-08dda2813241
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2025 09:29:53.3858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0jJUV5VTSu6v6VTQiZ21rXIj875B0PkCmN8LKWYhg4agA3kicKxxlRwapRzjQu+YCHN69nYsgKbGOfcQ65YrrJ6BhE1FjE2HtNsbLdxbhSk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5289
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748943002; x=1780479002;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1yVcPry+PaUdnHJBqKf7D2NB2LSp8dpOk5SGhL2LRqY=;
 b=C36gmtasEhxlCn+UPcneIF1MUSSJQvG9qiRA+mXHs7Tpvkf/UqigLtMd
 QocVcsCmbIR8KjLvLpxXVYtvTEvYeZ6L0FCm6fAlsS2uxyLMIbBsucSmA
 2fLFYvq2nHEOqh/0mrtQQK85Wv/sR5ttcoVHWG86JYO5QIZE/yymGi0Eg
 Zy/05aE38g/pmvQbfbBFhuuJGSB5NL76X+s+O1D5l5kDsktpp/q1zeKn0
 f7g8IPb+YAFosv67qJBQBqQPfetqb+Jes91stzmartNMJ/P5d9rJqKLEq
 0tn4v9bkypIFmCSM2j2kGwiZeKnO4P5rMrz3h35h1SKoVHzEyn5cKBGtf
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C36gmtas
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 6/6] iavf: get rid of the crit
 lock
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
> Cc: netdev@vger.kernel.org; Zaki, Ahmed <ahmed.zaki@intel.com>;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Stanislav Fomichev
> <sdf@fomichev.me>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.o=
rg>
> Subject: [Intel-wired-lan] [PATCH iwl-net 6/6] iavf: get rid of the crit =
lock
>=20
> Get rid of the crit lock.
> That frees us from the error prone logic of try_locks.
>=20
> Thanks to netdev_lock() by Jakub it is now easy, and in most cases we wer=
e
> protected by it already - replace crit lock by netdev lock when it was no=
t the
> case.
>=20
> Lockdep reports that we should cancel the work under crit_lock [splat1], =
and
> that was the scheme we have mostly followed since [1] by Slawomir.
> But when that is done we still got into deadlocks [splat2]. So instead we
> should look at the bigger problem, namely "weird locking/scheduling"
> of the iavf. The first step to fix that is to remove the crit lock.
> I will followup with a -next series that simplifies scheduling/tasks.
>=20
> Cancel the work without netdev lock (weird unlock+lock scheme), to fix th=
e
> [splat2] (which would be totally ugly if we would kept the crit lock).
>=20
> Extend protected part of iavf_watchdog_task() to include scheduling more
> work.
>=20
> Note that the removed comment in iavf_reset_task() was misplaced, it
> belonged to inside of the removed if condition, so it's gone now.
>=20
> [splat1] - w/o this patch - The deadlock during VF removal:
>      WARNING: possible circular locking dependency detected
>      sh/3825 is trying to acquire lock:
>       ((work_completion)(&(&adapter->watchdog_task)->work)){+.+.}-{0:0}, =
at:
> start_flush_work+0x1a1/0x470
>           but task is already holding lock:
>       (&adapter->crit_lock){+.+.}-{4:4}, at: iavf_remove+0xd1/0x690 [iavf=
]
>           which lock already depends on the new lock.
>=20
> [splat2] - when cancelling work under crit lock, w/o this series,
> 	   see [2] for the band aid attempt
>     WARNING: possible circular locking dependency detected
>     sh/3550 is trying to acquire lock:
>     ((wq_completion)iavf){+.+.}-{0:0}, at: touch_wq_lockdep_map+0x26/0x90
>         but task is already holding lock:
>     (&dev->lock){+.+.}-{4:4}, at: iavf_remove+0xa6/0x6e0 [iavf]
>         which lock already depends on the new lock.
>=20
> [1] fc2e6b3b132a ("iavf: Rework mutexes for better synchronisation") [2]
> https://github.com/pkitszel/linux/commit/52dddbfc2bb60294083f5711a15
> 8a
> Fixes: d1639a17319b ("iavf: fix a deadlock caused by rtnl and driver's lo=
ck
> circular dependencies")
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> CC: Jacob Keller <jacob.e.keller@intel.com>
> CC: Jakub Kicinski <kuba@kernel.org>
> CC: Ahmed Zaki <ahmed.zaki@intel.com>
> CC: Michal Schmidt <mschmidt@redhat.com>
> CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |   1 -
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    |  23 +--
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 165 ++++--------------
>  3 files changed, 38 insertions(+), 151 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 9de3e0ba3731..f7a98ff43a57 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -268,7 +268,6 @@ struct iavf_adapter {


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


