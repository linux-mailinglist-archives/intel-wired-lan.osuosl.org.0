Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BFBB2BB8D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Aug 2025 10:16:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5918608E4;
	Tue, 19 Aug 2025 08:16:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id La8mQbWPt7fM; Tue, 19 Aug 2025 08:16:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E041608EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755591376;
	bh=oo1H9MlXGSKV0cX67uim+i66kuFODgFp8bb3xMulmIk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Y04U8nQQ/sAu0oWO6oDw/5qrfyUimh9cgmuMS86Z076dQuVCeRRzIMe3iKCdFZ50X
	 H+6VoNSLv5ee0PEkYQWmbIUUi3+GhFelA1oUTPH7+1mzOQj4mAOGWtwOiW6uErY1nm
	 kvMmC1CD5TK43yDI+uu5zN777aMpKbpCqbc31LLIV8uwiRN6sdgh5iq4Ho8YtGnEY7
	 /Mf4EaoqXTR+mnQg3AU6rBRiKHkIJmzERlT+446Uvnm1D6b009fSCvxixFBR1hp+sN
	 GA4hD3/3bBP/yjsEIyNhupotTRcN9RGqRcOmEnKAiWK4OP8U6RSU9sVc6/dDjwYYzX
	 VG9G56Mk9J7lg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E041608EF;
	Tue, 19 Aug 2025 08:16:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 58821E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 08:16:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4A5AA608E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 08:16:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YID6PH4PUr-5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Aug 2025 08:16:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8AD8460870
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AD8460870
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8AD8460870
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 08:16:14 +0000 (UTC)
X-CSE-ConnectionGUID: 7HrXLhTISSi7WLl4DAkWug==
X-CSE-MsgGUID: pG7MJB07RjyNUDf5gj1dBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="61660586"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="61660586"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 01:16:11 -0700
X-CSE-ConnectionGUID: aLbbM61dQdyu7R9FXK6ddQ==
X-CSE-MsgGUID: NmKHmG/bRSO73MGHfjVJIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="167299742"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 01:16:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 01:16:08 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 19 Aug 2025 01:16:08 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.61)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 01:16:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YO4rkCowupHic5Uxc1X128u2XNE1qTGZiAWWKq5fWwd1zXZkzu4466s+sG0aytMy6myJUiJvr+KfVyg/IPpSKzi69LJTnLMrR/xSRidA/xkvxu2y8jGzxG+SdPgmgc2rnuVKHS7/eWwwTVTJNilLSy5cwlXDtl/TMKPsm+iGDGPZ4Vxboh7VuH3axG3KNDzHL7jg2qpTH8TW/B61z0D0CbqougoGfRS2M7yYwn1mK2J1ZCRRd/nLdFdCOuSY9Pbq2lkd8XSpBm7ASDuqWtpDDr8VcqzUG0Le0wrJuFCLdksJ8O7VHdJhHaqNJdquuJVl4CvR/q+8cRag2XQeApwrVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oo1H9MlXGSKV0cX67uim+i66kuFODgFp8bb3xMulmIk=;
 b=f51s+/4d79N3IVkWNNzmC5aiAjFRxJaQsDHniLEz0L8mIVh9UFVeavh4YgBv9ddR5vlgHXSgnYxkR/qXaI+qeYIVO8ZrX8btY+OrByiVxWVitmYZ8oi9xpmfsiZoD8TxLGU9Jq/1vp2UdSXmw3fmnD82ZrmgJNPF5WATIih0x6Q1kScs9OuXQrgiKeMSwdXAsLM5Vs1DzyAF/P6FroWpHkvsbmLGMx5xjxi9aBj6oHwprS8yfmzYrGrcFh8oeI4mraabLuDW3g90++nE2Yv/Va5FilpOuPIyLSeUHO0mx+yLWbkl0ZpA1k+zkFCAJzgas0gxZIVI1T2VVoC8PhVtGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH8PR11MB6755.namprd11.prod.outlook.com (2603:10b6:510:1ca::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Tue, 19 Aug
 2025 08:16:06 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9031.023; Tue, 19 Aug 2025
 08:16:06 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 1/2] ice: move
 ice_qp_[ena|dis] for reuse
Thread-Index: AQHcEIQ+Le0j/h5YZkOSpNk27Gy97LRpoZSg
Date: Tue, 19 Aug 2025 08:16:06 +0000
Message-ID: <IA3PR11MB898671D3CC4B13D324A24BEAE530A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250818132257.21720-1-paul.greenwalt@intel.com>
 <20250818132257.21720-2-paul.greenwalt@intel.com>
In-Reply-To: <20250818132257.21720-2-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH8PR11MB6755:EE_
x-ms-office365-filtering-correlation-id: 2e8da1c9-06b5-49d6-d7e8-08dddef8a574
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?UWJU+IBTBOsvHeaZwjM+ySTB5/zfaFpp6fwANnwgbl4h5XiPpaz67CP2VtAS?=
 =?us-ascii?Q?/D8UPqqQx5Y3S5yZSazPYiPx2hdP/zyuffbz4XiyAYdZ6gKzSVBgkP2LZtNL?=
 =?us-ascii?Q?SLB0i/iiQEtvksBRI3gXH1yZcjhnVBJICYoMJ5lxIHhGFA2WvOEakhrBSOd2?=
 =?us-ascii?Q?RtBI5cP3cue7/MNcMM9fm/uHU8zMA1S4PcOIM8DR8LAKgFBwToBK72PJX3Xd?=
 =?us-ascii?Q?LWrQruVEi+nYdB7HSWK9l85wEpE8EynSpUIecH6cu/M8pn5erlQrgSODY1XT?=
 =?us-ascii?Q?wjapyJRxrQtW3piJ/E2dHMmLmmpgpK97VjPHm0pRUa5TPuIx/lH3TnmExnIc?=
 =?us-ascii?Q?m2hHllG+mYFxFaf8edQtJJ0GFDBop8J51VZsLXeQ3cDNpEV6dACGimlylY5I?=
 =?us-ascii?Q?C8S+XLqSh5sW+1b8/7OyzHUy9R+AwX1GpqKQXggeAdYzV6KLrPtrxygk4qGy?=
 =?us-ascii?Q?b8eBt7br6M1A39UJLiLsPR4vlWuFvoSL3/V/NXzW8FXdonwnHTKJDM0fUt/S?=
 =?us-ascii?Q?j9c+owP2t9DMAqthGdW7OD3PjrjVAUDPfT2mkNeRsAHm7yO2gV3az/+3tC4V?=
 =?us-ascii?Q?ASeF7+5rPn+D+vJFGCQ2E2g4NUpRs/bFE2333iYbewtvOzOaQP428cEmNMFa?=
 =?us-ascii?Q?gdNxuh/eHkW4ITvyjRomvdgbx6n3W9yRebfwWfDn7Cl/C/vE7cTNH23zYzrx?=
 =?us-ascii?Q?sh1ze0XrNkrZ9V4xaubPoz1A/ahX+bxSXR53UUE422Btaf9oWtUR2rXXYDbL?=
 =?us-ascii?Q?aelHQralQMv9Mf38YX8J5svaWlFiiejQiiLvIfv1/vJEUJrmU4tTsSyadRDf?=
 =?us-ascii?Q?qaev9dSvb+5v08UwT8W66lXVfynjHWYv85zqgcYPQ6Gd5UFcxQxRqHsjR5Lq?=
 =?us-ascii?Q?CG8WGMScR6asf+6P+22UHhQyubeo3/oqonXmwxH8B0msHmzjsoZRcSz4MbrD?=
 =?us-ascii?Q?aUblTCDTkV1E6rW13dsqRlSNPTQQ0OVl4JQ8lXQkpwvAvAtdhsSKLCX6ZrT0?=
 =?us-ascii?Q?91vr4jm3n0rvOqCX9c5vzN8hywft6R+n4l6Nra74nC6O1sSGlMmHVekhldX1?=
 =?us-ascii?Q?3u45zhRRdl36qYA6vi+qwFzWYW+5yczRVcCWlv8XOA9DtRfR95vaGyJdOdHt?=
 =?us-ascii?Q?DWVVM6Uct0mpcAFFsLAaT+pWxrkpar/QLpVSxaPRUtsX7ci/5fvaw9Jvt1MZ?=
 =?us-ascii?Q?rsqJD6DOktwnG2azYCXpmgMFesOFVZQ7GQOt35rkGgrgvo+JtMt+dfJ1dXvF?=
 =?us-ascii?Q?1xwFCpTLsrcd/C8RWUXGMZC89cBWkfS2E8LaqoSwEVfj+v8WdRihVCfQmQpS?=
 =?us-ascii?Q?ws9yvRkYwCUZcZ4c+tZhkH28XsXcHQ8ogax6OUHtIQUpwYEKgHyTPC8nuS9N?=
 =?us-ascii?Q?e4lvdU7fbjnNRsa13Foe/oJAp0ZaBaOEcW9QhuGk9fZDsJBP4/xGA5NqTjj5?=
 =?us-ascii?Q?HQ9eIIXNrwAJ0PLs5TX9oZHBE5AS9K9ya8ptvlEJSdZtHAifMauGXnnCbWxt?=
 =?us-ascii?Q?OFWd7+EJBkwFtbE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3655H20Il8loX/P3YDnZ03rYMF+TAdCGlFkWuXc+PL/XZmXZOKP68cOhb7nG?=
 =?us-ascii?Q?6PuHeg6Nd6v3xdoMbSTHeOzBEaick12Qxqppkdp/d24We7YpYo78a5avN7Ey?=
 =?us-ascii?Q?RgE4zHi6lzFjegoM5VeXN8pRPVrInSr+zLMIAHh4wCqNFPi2YBGJkyV2LBES?=
 =?us-ascii?Q?cPzGndjPEKI/kNvVx2KI3jO3YwuSS7YGMqbCqREyn4iVdgx4Qe3Olpv4pFcF?=
 =?us-ascii?Q?2E+Qj4aGFoxasduIWRtXWYkALSc678cN2AUb5TRdf5tH7fMPuIgSwy5pAGFz?=
 =?us-ascii?Q?Lci5O1dMy06K9xCZPn9BJwXU1siwTusODdsehfmiuUX/gdE2TUg6IsNszvyt?=
 =?us-ascii?Q?bXWzSOeIvoUlOaA932KX2taIBMu5QP11/Fpoq5rvDEU1kT1yq8JkSBJhMveM?=
 =?us-ascii?Q?uKVgP0sxqfNklFyN7DBS7822tpoNcmuwbEE/pDEMqjT2mgzZXJnoDWZA5pRn?=
 =?us-ascii?Q?udrKrEH09h7tSmOCZ1Nw5vNnTutD5xRNi1t4di05RPcthOD30wJJsp0ckv21?=
 =?us-ascii?Q?3egmvk/lxQHHDuhiixp8h415UMaBCfJC9AKVKtAWuuSoSk3nJQxuA88ri5Az?=
 =?us-ascii?Q?tBNNBtOsN5JnlsLXo6GmsWexw/Ae/IGBH5GeZ1/cGKasmM7/Q3tDoQbjlFLx?=
 =?us-ascii?Q?Du7fF4q4FGQ8EIPyJGyxSWZV2dkSiruxQx1bTrDW1DbG4RxuQyn3vIq2q20/?=
 =?us-ascii?Q?Jlrm+5puPzkWGctHZszjMAFwVgy4vudXp/3ztUhgSIxO2vAQhimHkKxkvgkU?=
 =?us-ascii?Q?Ev5GZ7GTlxJBdJx6mrMXC8mSfetxKu6MZC8ovTbUtnBf+2bwkk8Z/+zHmjfk?=
 =?us-ascii?Q?MeInoEbC9RwC/mzOfcjKGcCqwZ21RF50v+IVsnUk4c4uABlfR583tRgVLIE0?=
 =?us-ascii?Q?Hbmg66oG1s9PLc/yAq/6X1was8VgszecisRhgPFWTAYLTRfdCajUsIRIyLio?=
 =?us-ascii?Q?vmFpXFOI0e+WTYVQepisNXdl4iRgV5/ay/2J+N711vQw3JMAVcZ6ROcaW0Ug?=
 =?us-ascii?Q?yWEFCfeaOYgsdXMyGVYiGDftdzx3KWnYmD6Fqel/tSey8Ar1vY2K0vS/SHgp?=
 =?us-ascii?Q?INaq8GKMi2WvUbf8yti7SYa5JvhcoJqwzKwpOHf9hv2+tCuUcXC/JidUfonW?=
 =?us-ascii?Q?foMDJCOXZFP607mIsDeipgZufDFSeSGkh5sgTHiZOMfi6nUtDyMrojIUEoPw?=
 =?us-ascii?Q?4zWPjOtyHnjUK3vkaJWjhZT4vvefYpu/P3M/taEJ1/OVKBbebZ93fzKDnZy9?=
 =?us-ascii?Q?N8529RFln4b7KiHMJ49dCpS1KrXkAgqzcJ21BGr5990R5EmtGCb965nhdMBm?=
 =?us-ascii?Q?6zCyii7NDi4TQ4g3eMdwGvHxC59oz9oUxbEqEjDUq/i2mX0wYjK3Qeii1HTy?=
 =?us-ascii?Q?CjyGyc4Ewj/3/h5tIcmKmUwzYm9Mk/ungWHmm3/wcx+8jOV0IOHWiPDbnQOO?=
 =?us-ascii?Q?W6IDzrGgOPqvDs0ffsf831b7Z0UnFV3szayNeAhwCcYUPQ6x2kW8/B/4qWEc?=
 =?us-ascii?Q?WEfSqnh2/IxlVZXwlXLYkwqOHFPLyR10JOVduC169dBLI8PYqFojCR/T8+nD?=
 =?us-ascii?Q?U2fquJRFpOin+cbdro8pu1cBx+KRfWZCAAO4UZIPQtwQy+WUlYMrhWSHE+5K?=
 =?us-ascii?Q?1A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e8da1c9-06b5-49d6-d7e8-08dddef8a574
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2025 08:16:06.5288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1tpi3APvCcZmiJW6ZZL0VEEsXF7LxYRn4tEIy6oxIiVSeG4g6XeLoNavOa8q21NmkCMPikGM9wgftKXLepNXSI2zUDFMA/r9PG0NCzH899I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6755
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755591375; x=1787127375;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JISplAn4yllF3DPd3AgcjmSuEEhwL/LCdc3st1mSb3E=;
 b=XxIgp9nwIFypjmnS/xbOAjQgYivuNj0MlG00gR0qR4LIB6ZoWfdeIUL7
 yd3d5CAKQ1wycHJkHKpY0lOFgRt5oZBHHUY/I/L/Hf1qtkSUJuh84suc+
 MBq54N+3IQbfZlMEucgtUjRTyQr4VlEhkVz6f99H5i5gDCQs14ZGgKkP4
 oxfzGQa/ukjKmknqChfcmaZNWkJeEGOtry7GvFxh9+jeEK0yMfpUxETVZ
 AHZpdmGpveqUCF31eeDyhRi2dsV5A6IxuymjBclvk2KRSpf/X6DZy/JY4
 cz/RvxtCtaR03kiYGIUHOHc1TdcTRPIaCMVPcogSvUMuTBY4yK44SXcLQ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XxIgp9nw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 1/2] ice: move
 ice_qp_[ena|dis] for reuse
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Paul Greenwalt
> Sent: Monday, August 18, 2025 3:23 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Greenwalt,
> Paul <paul.greenwalt@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 1/2] ice: move
> ice_qp_[ena|dis] for reuse
>=20
> Move ice_qp_[ena|dis] and related helper functions to ice_base.c to
> allow reuse of these function currently only used by ice_xsk.c.
>=20
> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
>  drivers/net/ethernet/intel/ice/ice_base.c | 145 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_base.h |   2 +
>  drivers/net/ethernet/intel/ice/ice_xsk.c  | 153 +--------------------
> -  drivers/net/ethernet/intel/ice/ice_xsk.h  |  22 ++++
>  4 files changed, 173 insertions(+), 149 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c
> b/drivers/net/ethernet/intel/ice/ice_base.c
> index c5da8e9cc0a0..dc4beac04086 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -1206,3 +1206,148 @@ ice_fill_txq_meta(const struct ice_vsi *vsi,
> struct ice_tx_ring *ring,
>  		txq_meta->tc =3D tc;
>  	}
>  }

...

> --
> 2.47.0

