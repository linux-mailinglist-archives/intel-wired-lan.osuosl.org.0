Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0243F9BCD1C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 13:54:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85AC980EB6;
	Tue,  5 Nov 2024 12:54:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JCaZ02SehedO; Tue,  5 Nov 2024 12:54:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C170980EA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730811262;
	bh=IvPBjEmBV/AyX2ltMAqT/VjWejNR84uQN4+M/SWJujk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lkkvLdoRWTXw9jApdzNFezUEB87iV5Pg4JPiRkHdE8NU5iDP9w4AgJwTDwXRQM0K0
	 cQ3/wDYZy33uv6iwmOLTjSJ07bgZN1G/EstLEL2WJiU3fc+E+XnaM778J8tbavlNL7
	 WF/4X3b15TKXeeoG+kf0ar6lbw3WMYMbMaBrmXhfjVuG5mrdRlow1tYs55BUxgOJkb
	 q+4EPuBCGEBDrcEhhujU5a0b4ESlTzE3z3CijpgfihjKU8qDW4AE7cjacdLHPEftdQ
	 Of8fmoo5sUhpetMUIdkCl6Ig2hD2LJDzcH5v56vjqZ/SXThNUQcqvdJ8phzuhXFHAO
	 nh9R+afSsMwFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C170980EA2;
	Tue,  5 Nov 2024 12:54:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AC9F7723
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 12:54:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A6DD6074A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 12:54:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RUSlKDsFMpIQ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 12:54:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9286760745
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9286760745
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9286760745
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 12:54:19 +0000 (UTC)
X-CSE-ConnectionGUID: xdu6VCqLSemy+zGJwh72Og==
X-CSE-MsgGUID: FKHbHRJzQHqM9QvmETAguA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48018637"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48018637"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 04:54:18 -0800
X-CSE-ConnectionGUID: cxzDqOrfT2O6tHoJK/evzg==
X-CSE-MsgGUID: ERi5W93cQViu/w+tTrwqAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="83661122"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 04:54:17 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 04:54:17 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 04:54:17 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 04:54:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PCH3X1ZBe0lDYXyjssMoX9bd/b1S9GcF4SHklXIlXeAu+5niehMGQ1UR8Pcl11Oj263VaGz6FKMQGn/ayk5HT8H/VBajEyjKFKgpCyn6xxzImsfgJIJPfwSVInSO99DJ+yjN+WRP46FOyfMfg8ufim3R1jEFZZbutZsSZGPxG+SxKaD/fko/6X4mYGySajPGQ7ofuy1SadkD4E5eRBpkwY1jW+LQtZ0D2uBo/qGF1w1tppqtImKEQ+ioR2P9g0fLS4i9AJcMV33CjAghVpj1fh0KGcrkqDflnEXc8l1FMukhYWNPrjmei/a3B3ts4oxZkLVQiDF97Y5ZxCZ6kXhY6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IvPBjEmBV/AyX2ltMAqT/VjWejNR84uQN4+M/SWJujk=;
 b=Q1AfNsAjmn2KkDFcfwLI/dF7dMjZMcsTf6RNH/w4jRKtUXWzGAzQhG9Whbe+1KqCH18vwl9fQ39S5+duVFEzluX5uRzIa5dzmQ5eGnf+PBjT90mhB37u25+AjKkrj28w+xSDhYhr7f5yh3PkILdGum0ALrIGMTHDqFjgREfhP8OsjirQcprPMyG2rpl7jx4WA6YAZQQSqhn3tD7cSPb4AJeJocJro/8zOsugez7f/pseP0RtgXJT3wdqc8QqI/hKsk4m/42YdALZx9pIFrTtrpMb4jcAw7M5bCK3v8eWxHM+FRxozD8iInJruF0EajJBbJP8LDj3QqU/0iX9ZutDFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by IA1PR11MB6395.namprd11.prod.outlook.com (2603:10b6:208:3ac::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Tue, 5 Nov
 2024 12:54:14 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 12:54:14 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Knitter, Konrad" <konrad.knitter@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Knitter, Konrad" <konrad.knitter@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 3/3] ice: support FW
 Recovery Mode
Thread-Index: AQHbJTGhXRVuvHLXdEadMTMnOZ6w4rKouHkg
Date: Tue, 5 Nov 2024 12:54:14 +0000
Message-ID: <CYYPR11MB8429C2300BD96BC393850C53BD522@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241023100702.12606-1-konrad.knitter@intel.com>
 <20241023100702.12606-4-konrad.knitter@intel.com>
In-Reply-To: <20241023100702.12606-4-konrad.knitter@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|IA1PR11MB6395:EE_
x-ms-office365-filtering-correlation-id: 17a513ec-e21f-4465-93b9-08dcfd98f3ce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Sr8B+W5a6yj0irDkH8zI3tOj00GeUkp+mG7hHxKasZsxh8x55MIFTUcIYG5r?=
 =?us-ascii?Q?3o7TkH0r27ZdsIb8I3nfWWAN9u6PpDT6XDEtB/T05p/U/Jecp6mnw4rCoEPk?=
 =?us-ascii?Q?0U6TL0CbB+MOTwrHSLlYUqLOT5GyNaM223rlIQW1KJSUf81EKRovq58jDotM?=
 =?us-ascii?Q?mZqVWBxtWQV5pAUda0Ozy9c3+jqDyIahS8krbemA/b6RoeKTrKCqhigoJWOv?=
 =?us-ascii?Q?N0N1zATABtkbQJ1wZlGxUVrB6nXW7QkSnQVu1zhs9VWklBALFGP394FuVuhO?=
 =?us-ascii?Q?swRE1VfLY9No+/05Trr7TyLvu/yX1b6lhrRqCK9qZOkIhbFdVZBcBrpa7DSw?=
 =?us-ascii?Q?yfZVtTRf0aS44q5XqhxigPhyuE/fC+XSg3503cU1WjH2885N0YY9MnCDvQ1I?=
 =?us-ascii?Q?ih/9/zoyxSp57ESfZENO4tFG/jkSAV0fQ+sCAvVChmsdDLr7Oy4ATZCnIm5Y?=
 =?us-ascii?Q?MoKtPapgO0VswuynMTqhbGaFbDvqxh4H/SS0twoNfrDtAn+J6d9K+nHDvE1P?=
 =?us-ascii?Q?3awvXJm1GJpW+NlN1nU8vrogwzbD3KMkYKkgAkounP52mU/Vf2b44f5Bm7QX?=
 =?us-ascii?Q?RZpj7gu3AeGYyueoWphbpWfbyBwigq6qTI1+KH13s97GDUIyBHT16JwB47Gb?=
 =?us-ascii?Q?VkVekjVi+3c95uF4iQcqm1jI9egsGBCMA3ynMvlOqRIxi50D2chbTUzdS08q?=
 =?us-ascii?Q?5pKmd+R2ptLjCAucOcSmJSt4qi7oXWmnpwh4eGmBBuQqLpS0Xv2CtqYyotLZ?=
 =?us-ascii?Q?t5rAT3Yt4268uWgd7hRJH6Iu+LC2p3TsVMTrezTyr+YHhIPuXdVMZMwApRgS?=
 =?us-ascii?Q?m0VaYjsKTB1u9euD4+oALkCdDUNN5EjLGN4Wcqn5iss2yMgTNiO7R4w9qVzj?=
 =?us-ascii?Q?Yn+WU8FAg+xPfYjEveBe0ZLZM0GmBzcFVaxcB237IqJUpdRybSsm7s6l9LrP?=
 =?us-ascii?Q?8AECHuJbFe3NJdD57gygQnY8hoOCi7LoA8x0+F7GYQz8I7KuXtfBP6ad4KQg?=
 =?us-ascii?Q?zeryju5/fKzW4sdNh1948xiSQc+hFw18yFpnuGoema3f3qbIS5YQJfBj47q2?=
 =?us-ascii?Q?E7Yc1LM7NCWY31YhgKRd2zavsCIjXipLqgaRM7UB6+YvKoaYmmmPZkR/1Guy?=
 =?us-ascii?Q?ptrJBSY/35HsaJpK6gtpj97+T+smzJKeE0/X4r6+yH3vrCthWlMJHjTu6bE9?=
 =?us-ascii?Q?pWsl8o+mFkMA2v4X8rG/Km9ouIFJhh0LMUC0d2W4TB7aC2XprQC2Mz6TfPKl?=
 =?us-ascii?Q?Nub5iZWQWpbaO2G7I9nf7EBu7zNAQFm/bg2of/uVeMSc7eupV+xEmAwcXO8v?=
 =?us-ascii?Q?U+6euvJwjSjyFIhWI+5KmOxmo9qoZEf/A8v/8gOJ4I8MTR0rCastxqdXcMdt?=
 =?us-ascii?Q?UePvxzo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iNreFI4ETZElROo+5kjMxVEjR8AvHrJpUSYxLFMk+XWMpzLIFqQQRglse96O?=
 =?us-ascii?Q?SAchbyeaxC/LsgssVDdYBQ5tRfp3A5jBcG47FlLj+KDgWqlZZkXCQG5YQnxO?=
 =?us-ascii?Q?1e0X3WPb6DWhPpG19ExOM/FA34bIZYPVTEg/01iMk74hDCucsHgmxko5vLTs?=
 =?us-ascii?Q?3YpFLBdjWDA4/ly/MIfY1N412Wv0BZgi2ZhSOF56exZ/IMWJY1KVDi3fQyBV?=
 =?us-ascii?Q?mw5Dg7T21jfcxHQesqv7+PLdmQdV1symrJtwByhZVMrmuush+ALQSryiW4q1?=
 =?us-ascii?Q?gQmes99QJsY0vUkoLr4o2NIvR5obPcXfWCCSy11qL6N7KSTS2w1C8g75UnGA?=
 =?us-ascii?Q?RbOYdVN0C0REznbaRcsU97nd2ISaqrOGz63GcgVTUjeZaeL+SqwdIwa87qT9?=
 =?us-ascii?Q?Oj7pqYWXN+S9LfXKil9c87N9T4MWNE7jd1ccWF3mMl6O+rBU1bZNir9to7ts?=
 =?us-ascii?Q?C6Gg6iiPJXjFIBaJjgn3VbrGM9fBQxH4Brw/ihyOPrQdApXXMU7qOe/S4/X5?=
 =?us-ascii?Q?2RjhYLjJhGNyvWjEI2d1a4EReWoqZRzOsEpv94Go31bOow17Fja7vuXCGhHI?=
 =?us-ascii?Q?FgRDCeP2BsN4c60H0fFoZhON0UePkd2lbeuMNiU5RXsPerwElWqrjQCLVojt?=
 =?us-ascii?Q?bNekLMMgi8lBrc+ExWNrEqLXv17OgnKL1tbZ0raZiOyz6q2OAxyF9VUgNkqf?=
 =?us-ascii?Q?TT+Es0gO6flSpGLC+wvAQ7Rq1I5BqKU9VDcg3csepBwbWXOQW6E8oxgET0cR?=
 =?us-ascii?Q?A1Agcr27WkXm4ifMhSLQH+oePQbaxGFzFOFtb0TKNxMNZ8IliekHJ/10qOj3?=
 =?us-ascii?Q?/7rOKFhBhpvOuWQo/KJrCn2nsQAcrFX1sWtlfmwm4NsWJeU3gLf9rIOsR9GS?=
 =?us-ascii?Q?l6Yq4IRLsKTbr6ISrGNZRgNJrpYyGhO9/w/BuDf0ZI9yWPMP5cgzDUYNkOqt?=
 =?us-ascii?Q?JCnQhdnWjzjwqfQKbphCVnzRbJKSBsvRjYipJXlL2BKdeCP9hMUOY397fN/7?=
 =?us-ascii?Q?C6CR8awbswMpJRwlmUBKc1Jc5bedT9NXYK5xo/t8Beg92J5pr0DEIKKxSbYz?=
 =?us-ascii?Q?8ZAVihLBX4X8IXKVYnJuJQlp4Mr8U/WXmI6FK9KJd/iTKXjSKsmxJ+KZC6mj?=
 =?us-ascii?Q?dgkGH8hWZKJAHh4CwNPYAYsPBxZry24VgjNYzMR13AOPGgqqwkmTW6p7HIWk?=
 =?us-ascii?Q?OtxZCp6Ti2LguPtNRoizLKo06oDBNKUQ6Xk/7mwuf+fFg8Nk9/OX7QOBpU5v?=
 =?us-ascii?Q?Onplr4QfxAA5YA6IGD3MW9jgjbUkx/9UQOQcH/5Myl7vXJi5bD86NpCazpMc?=
 =?us-ascii?Q?vr+QVuhn5NK23VR69g3LE/tupfV988+pZfITZvoYxSrOiRr0kgS1DBRubXr6?=
 =?us-ascii?Q?5JBjgB1P6cY2zmKFZGIrqZJV1qSNy+ptbuLbZuc7SIAl539roZAw9fAoTJQj?=
 =?us-ascii?Q?hn6hQdTFSl7Y+s/dBDa1fKm2JuFUrgOV2y7Ak/Hj9nZZup4q3PGYZvo7YZS6?=
 =?us-ascii?Q?J+krPR1t1DZLQLCGEITOYu7jM3KqqdNQsiVp34xU9WPTxttDwd/+8X8993jq?=
 =?us-ascii?Q?44BJ+gZC33TaX98Uj8vlKjo3Gz7zdde4pr8l6UGTMSPWl5kziMMzWuxLw9C7?=
 =?us-ascii?Q?tQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17a513ec-e21f-4465-93b9-08dcfd98f3ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2024 12:54:14.6457 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mcPW/Fe6BqDEycc1WixS59G9Zihhjsb/XsBUVa05ZpNs3TqJIMcNYReL2gvUDUh3HuSvk7rjeL8FEv+OhTvtKPl1RJM+KVj2blQ+ak8GNyo8IWsm27snyaX3yeDy3YeL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6395
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730811260; x=1762347260;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3C+nhd+GgJeLekl4uTBygg8uDYEWGHBze69Do4zREY4=;
 b=YBV/kkXZ9V/9cg3Xs8fAxXgClcAv4x5kGvb6xEHHJXCU/L6e27P+Frdn
 dsOfyvI4+yz9GJndlmegcko597bPAtdWeXdUKkrDjlK4L3QSk1zE0QqV7
 L5kPWtdrZW3Tjm5gAx1QMB09qJ/vsGPnTYaP/zjnCAdvcsXI009hvhTQr
 hPtT9DK1Ht5dG80CnyFdHOjEmsWarWVLw1ili8vmXZYVg6nU3ydj7L3Fo
 451M+0AMs1rXTwOwuCwTyIWpBretHuZ0VCDcFNDof7xtL4KzP4TYMpSnm
 UZcodan6IYxk1eth85tZt5QWfWcAzG+RpfA5gmMtdEilSIVLA4EAwWpL6
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YBV/kkXZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/3] ice: support FW
 Recovery Mode
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
onrad Knitter
> Sent: 23 October 2024 15:37
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; j=
iri@resnulli.us; davem@davemloft.net; edumazet@google.com; kuba@kernel.org;=
 pabeni@redhat.com; linux-kernel@vger.kernel.org; Nguyen, Anthony L <anthon=
y.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; =
Knitter, Konrad <konrad.knitter@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 3/3] ice: support FW Recove=
ry Mode
>
> Recovery Mode is intended to recover from a fatal failure scenario in whi=
ch the device is not accessible to the host, meaning the firmware is non-re=
sponsive.
>
> The purpose of the Firmware Recovery Mode is to enable software tools to =
update firmware and/or device configuration so the fatal error can be resol=
ved.
>
> Recovery Mode Firmware supports a limited set of admin commands required =
for NVM update.
> Recovery Firmware does not support hardware interrupts so a polling mode =
is used.
>
> The driver will expose only the minimum set of devlink commands required =
for the recovery of the adapter.
>
> Using an appropriate NVM image, the user can recover the adapter using th=
e devlink flash API.
>
> Prior to 4.20 E810 Adapter Recovery Firmware supports only the update and=
 erase of the "fw.mgmt" component.
>
> E810 Adapter Recovery Firmware doesn't support selected preservation of c=
ards settings or identifiers.
>
> The following command can be used to recover the adapter:
>
> $ devlink dev flash <pci-address> <update-image.bin> component fw.mgmt
>   overwrite settings overwrite identifier
>
> Newer FW versions (4.20 or newer) supports update of "fw.undi" and "fw.ne=
tlist" components.
>
> $ devlink dev flash <pci-address> <update-image.bin>
>
> Tested on Intel Corporation Ethernet Controller E810-C for SFP FW revisio=
n 3.20 and 4.30.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Konrad Knitter <konrad.knitter@intel.com>
> ---
>  .../net/ethernet/intel/ice/devlink/devlink.c  |  8 ++-
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
>  .../net/ethernet/intel/ice/ice_fw_update.c    | 14 ++++-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  6 +++
>  drivers/net/ethernet/intel/ice/ice_lib.h      |  1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 53 +++++++++++++++++++
>  6 files changed, 80 insertions(+), 3 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

