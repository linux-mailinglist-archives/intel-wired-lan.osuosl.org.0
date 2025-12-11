Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A021CB5213
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 09:38:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DB1F40E36;
	Thu, 11 Dec 2025 08:38:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W_GVziRMgz0b; Thu, 11 Dec 2025 08:38:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CFF140E58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765442328;
	bh=MhGI0hBcw2Etf3VZKjFqGQxKR3QZTBoEqyyqUN+TPBQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=diwpRvj17zR4PyvonlXuqmXIiT9tHJ1ooLXNc0Qhh5OZfVFQKUh/BOu0dOyC78FXZ
	 iBxKw7f4QL5oVCmV7Jh3J/vcAjnqovqUyxmW/o8vw9sxgffSW0H12FciR6yq5mLyEd
	 DbXCfHm9vTap274bAyFrrQL1Ir8jh6RRdsgTsMFtcORgfJf0Y0F/In4rGym+HbaoIl
	 OcPmnroh3tgJkLLL2rDw4XyBCZxtkM0bnVrsqV79HgERYWfQ7SvAt2xBeOuw4O3K0I
	 uW44y57qNfPMzDu6auaBBxNH36q0yz9Ewkzwx4loPzMqDgnptGkKrI0Z/+oveoHuKx
	 zWUltWfSm9BiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CFF140E58;
	Thu, 11 Dec 2025 08:38:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E94132C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 08:38:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CF5FC60812
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 08:38:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SQQfPNOvkmGv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 08:38:46 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 11 Dec 2025 08:38:45 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 018CB60768
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 018CB60768
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 018CB60768
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 08:38:45 +0000 (UTC)
X-CSE-ConnectionGUID: P/kkrFtTSsSUoHA4p2AVFg==
X-CSE-MsgGUID: Rfs9G2QHR3C2wlobGop8fg==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="67468961"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="67468961"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 00:31:38 -0800
X-CSE-ConnectionGUID: K1Osw2NZQg6PMpNeEdQzRA==
X-CSE-MsgGUID: 1AdKat99QRm+ahFKeoxAKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="196753091"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 00:31:36 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 00:31:34 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 00:31:34 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.53) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 00:31:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wYqh6X6hALzv5xXqlRdACXjj09JEJA3ZXF5QtbDqlIeoG6m4dctKYjJwF3S8WWBfXwtueC6cV4AS5dcr4RecqY4gc+6HSzolDBVmESJMXvRjYMLqYKbwvdCPQhnKYm0asB3QjCb4EJmYxffgVN7EbXF5YctiIdWzfpryr3xOd1zadkuDoBppAbs+K8jEdhiuSH0sia9OCa92c6R7TzEiU/uqH5AXguaNiePwVhhNe+u0DWL8Yh5TJ1LG6DMjOHrGJffmtGT6KIpcx8LCYDlSDgRIdKJHPVQpdSMBaaSopRrl7GwjyseEvdPj5IxMvlnrncErmRjGCsiBiuBt92EsJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MhGI0hBcw2Etf3VZKjFqGQxKR3QZTBoEqyyqUN+TPBQ=;
 b=BfAEY610WepKP7bSYSkiIEh4EBrcwJsIyCZKDOq4KZBtTwf4HfFt+n3iE/l0zAAXOIH8sPczomSrnuFx/X70WrHJtE+noqylgOONkv0xgYW2yPV+6wgzC44BD/RyX8zN/xH7yws4t54hoyp73zPPvCi3jG5Xr4rNqKAxEPz762AColiPqPTPsH/Ry8nsjZbnyzFWZRgwYvLqj1UYgrEKdGCDSvnZGe1721vJv1o+TUbe3lWn8TLPfmCTufLEDBezqtg9+uMI4OxE2OV4Ubo150KTaJEopaPHhLgYunvfhm/WyobWopaYTZZc0ky47GKu30gQ3eatuxyoPAXHLgHGCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by PH7PR11MB6795.namprd11.prod.outlook.com (2603:10b6:510:1b9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Thu, 11 Dec
 2025 08:31:31 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 08:31:31 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "mitch.a.williams@intel.com" <mitch.a.williams@intel.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] iavf: fix off-by-one issues
 in iavf_config_rss_reg()
Thread-Index: AQHcRdC7fWUDmvr1aEGKizvRBGKQwLTV6rEAgAAC7ICARnerQA==
Date: Thu, 11 Dec 2025 08:31:31 +0000
Message-ID: <IA3PR11MB8985633439120900615761BD8FA1A@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <ada06185-257b-46de-9e5b-470f2724f014@intel.com>
 <20251027122435.22442-1-enjuk@amazon.com>
In-Reply-To: <20251027122435.22442-1-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|PH7PR11MB6795:EE_
x-ms-office365-filtering-correlation-id: 94fdbf86-b055-4cbe-ca8b-08de388faf9c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?veMfLQHfraBMzMTj5s39w0FJLgxfTIbno/faINyE3kE3G0RG/V8Y+7NQfLPN?=
 =?us-ascii?Q?CtzX3uOM7rurrkH/4ADIhsUChQ45NJ6V/a25vd7znllBuaNwYfWflMnTfm9t?=
 =?us-ascii?Q?SIZ/AWIicSqo5DBlT9X//nS9uiLlqu5MFjhqIfWrl48uacf7zqaBbmcWf7/5?=
 =?us-ascii?Q?Uf2UJr083Jv6o6wYaZ3LwoyJbKdXXpRk6sqP4oYFBfGb7jE63orcpv9feehR?=
 =?us-ascii?Q?+/lIRY5P/70j3+RhvOJwuUQNN16sEMdQ8gdreJ2TtDdE1obA3kkqm/QHknC8?=
 =?us-ascii?Q?IUK1gjyJwKvI2iX0puuu7Uo/91EHDBHIfgrzyAF+rHbBgiIgf4nOu5rPom5g?=
 =?us-ascii?Q?vcR/Mx+rChyBzcKT00x17Do1ujvzV2i4udAlb0BRZoQKwBFg1olkLKXwr0Uq?=
 =?us-ascii?Q?8u46WRzT4qM64VxOfBa7fHcIDOtA9icE+ScbTSGtN6b/IRpUGvptaAngD4gk?=
 =?us-ascii?Q?dDlLdMISMimfcQHiG/uEwp49sPg8Awm31uscdxk17lb10GVHBysw6knB8UIE?=
 =?us-ascii?Q?EmpiKNQcIs7SkFzDq03Rmqx4j+3wsAB5bxTTtbaquA9BWNUNGibGko64Sryi?=
 =?us-ascii?Q?IKcF4ae8KyDqc6eLDmZmauVvtpmmdWsDtMGULkOmBOHSElQtaPVc7Ax9GGa2?=
 =?us-ascii?Q?h+IaDtZzPPklK00QMvmoOAdH4qqdEAWpGvkSBm4+JWWH+3AJ4xu501we+1fB?=
 =?us-ascii?Q?XHhMRJMuo1tU461KxzKCH/7912zJLsTdyWt2+yYW3Dc658hqo9PFfgiOOs4X?=
 =?us-ascii?Q?grVdrIQsz6ZZhANo8hoFbTfHS4VpRM3k1MQmzal5O8/YFpVuAIScaCOvSkSh?=
 =?us-ascii?Q?E7zrWzjtd9JgAXkxw0+rN+KRk0Sq4+/xoolDLhi/FmWd/x3aDmZk1E56/x+X?=
 =?us-ascii?Q?l4ufDzyzb0SELxbk9v44eMvMVU15fcQp1ezh01Sz/Eu7uNnKsgaYfz1v/zyd?=
 =?us-ascii?Q?dnS76jDkYHWAd5OPlJQ76Ok+dKa893NHv7uW0Yejg8FYxaV1ymy/jBm4EJLZ?=
 =?us-ascii?Q?EMhY+MgTLApqf4l/nHrZGJfqh5CnNIrMI+ZhKEvcyu2YY6HEOAJLMQdFu3NC?=
 =?us-ascii?Q?xuBR0o88fY3eOxn+tB5Wwy3O5GDPplnZltyYPMaQu3Z+IPzfGI+dOrEkNPeD?=
 =?us-ascii?Q?z3IQcus9Z0Jk3i4EAGLLeQQGUG4ZNkBbK75ZwWad0W4SWPDxurb+oIsNsy/i?=
 =?us-ascii?Q?cP9xzVWVj94DJn9YEtAJCJn9JgdOlnDSsaD/D5Xmct716prSYLndvLEeT1iH?=
 =?us-ascii?Q?ke2zVHwnyPKqVIYqOQFUbeCIAirCin1zqMollr1q33+7eZPM9VnvIucEgx9Z?=
 =?us-ascii?Q?uds6WElaS4x5eexm7S/SAvQpiot8YGh/Q5sZzc03yvwV3IiqcFSp4k9G4E5C?=
 =?us-ascii?Q?lc5Rlzi9c9Ye/VHAD1sH4gAcV2jV3sF/sTUnUEdxhoZyaZIjDLWJzSXZcnfs?=
 =?us-ascii?Q?ni8SxdkBMAHRbPtkROOlzXViwJKr1VA1gurnmbWJkjJhjsuYTuTKhui/svHd?=
 =?us-ascii?Q?tnIYvtTIN2jRr/S99ilnyy95GepKFgBho7LX?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nh6Nz2p2E5Z+g3ZquPd5qRXV6h1pzRszmDQBwm3qnePv2nvTg2vsYg7OGaM1?=
 =?us-ascii?Q?yP6Rvuedf7BnTuGOD5ez7bPRxnSGc7gr+4YL9BVMkpmncQ69xcqo3Qyjb7Aw?=
 =?us-ascii?Q?YO3Rt4546Uuaga0k3g6tw2u61ELXplZEL/UM/eeKLu1TNi37iZywtXxKXFBY?=
 =?us-ascii?Q?0dR7gJePrFvqnQFVwNy/uIOzIUk/d2pw3IT3/RYxXEDqVFdaJ8k+XgtbvON4?=
 =?us-ascii?Q?WZxN/d8BjTvxIND1TRdTyXNAzhQvbGj69SVNswfszb9O6wZmqbk1sTkfTISd?=
 =?us-ascii?Q?uA10Ng3octXMQ9K5JNer2ag/7u0cDuGaT3BH9KuNw0TduzMLje3LBATx+RlG?=
 =?us-ascii?Q?vogTI90jvzssVlnVCmDDeZfKCVHk4+IGlPaQToETLnQ4JNJjHtqsz3/+4SF5?=
 =?us-ascii?Q?mjLRCA2n+XxBI/iFB7htK/olp5guXxIt7wqL4lKAK3hPLGee5hTWMVBJCnud?=
 =?us-ascii?Q?V1XW24YSaFGsPPOaFBGBrA9gy9TyJ+xSGgXWa5VIig1jsYWR8zV6P25Cdk/Z?=
 =?us-ascii?Q?QW13fhzYo2LKbvt0UhSVrlAV0HqCDdMVrjeYscBklGMn43OLM3pauDnfYq+n?=
 =?us-ascii?Q?JnucGdWe3v3etSocrLz+SA+K8u4Ny9AC+S/wM5tpOh0mS4k/vmtntP+lWHpn?=
 =?us-ascii?Q?PlRLyRr7rL4mq+v2Ms7afSWDbsm2x9kU3M9+YpGW72Y+xPgLgrVvOsTZFMRC?=
 =?us-ascii?Q?cY5fIS80gTYTxQbprfa6PVAgzs9GGGkGBpXb7WAjdKEWtztJAn+W84rm8tVY?=
 =?us-ascii?Q?69N4Pmlbv/wFnUKiVqNwkcYK1smKxMq5J2rvoNXr0QLRL+rJYQJB4UZuueky?=
 =?us-ascii?Q?NHz/TMf2pGQ3Pf4PW8c+4oajAToadx4Sti4UrkUhbtsFSkBgsKeJB1AozgSV?=
 =?us-ascii?Q?Nxejtp17sQm6AYo591+itO692INtfzI57wLBQbhBjY5NrU8Iy7+bXWytX4Vz?=
 =?us-ascii?Q?2Apvaj7xOMYEdw6MZyppHpK5vWZeQAt1mJDOMA8yYVKV3hAdhOt/syjWJaCk?=
 =?us-ascii?Q?KdFYU6f1MqaFUdgPZ05AAxyjSFIfBuj2RuyKNFCZhG+OsQKJiSNGWmxiYApQ?=
 =?us-ascii?Q?SY0dRGPdCsMIYhNBjl/Oj5HDOWhlbHu2goV9bi1yFbmp9X0RgvraxiIJXG6a?=
 =?us-ascii?Q?c9XwU8yfUiRxHKeRMIL291+SNtxnWuKyd47xbxJLJj10x+YLuW6m62whCEYm?=
 =?us-ascii?Q?RvlRmetDRTniZObG3E06phrqkvA4i9ufe7GeL/htOZH+Uxu5lfwdcOlDIxVW?=
 =?us-ascii?Q?WGzpAiAmAj3XLRZm5zfJce0JWHU5vG5UybIQmQGG0IXe1LMGTpP9HFq1JL2/?=
 =?us-ascii?Q?JReEiWliBgD/wLiJpKlE9yoyMpIruDaeaohfyUYuGupU5Ut0YT8rOm+m5Bgu?=
 =?us-ascii?Q?y0WfFS8oO+1CcghmpF7tctnbdwZnABwOk78T+ixQrsCCzgRETJpYEtdq3LG2?=
 =?us-ascii?Q?EzccNbKfo2nODvfekCzfbfM5vWYNYTKGK0W+Jm/IUtrGnLln76S1zbXHmhPD?=
 =?us-ascii?Q?XJucrpx6AQMjM1s0kUphhp8PCkdLk+PnRx3GrVrMAjWh9oNgaIPSURtx3OSO?=
 =?us-ascii?Q?LjDCorlsGXKi9L0gOEKCUaWuY/B6vuRZsCoa8xoGWwkOBdFdwu+pJ1IhyggZ?=
 =?us-ascii?Q?Kg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94fdbf86-b055-4cbe-ca8b-08de388faf9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2025 08:31:31.0331 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h+e2yHz0zpWsQd7iF0MsmG+NK+CHO3NjoM/eG3pDGHsyI4S4nmUPxsTQBaSlC26FwVTbtMUA5OBEAFdRnP5otKBzsWljQcICNBcPlZ2R0xA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6795
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765442326; x=1796978326;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MhGI0hBcw2Etf3VZKjFqGQxKR3QZTBoEqyyqUN+TPBQ=;
 b=oB7cudZhTOmr3h/gRBmI4DE5S82cF654ro98BGlKR9duxN0FiYUHWVsE
 dczIBG9xpU09Y6RaUG+8OZZH18K2UctR0bavcE1eThOeFGI8jCrmZHRBp
 0strs6B90EauaB2s9/n1DmZKd3C2YU6C6scgrMxZS3ZQWD/pR8fLx4vbO
 F1miw3F2xALVuEAvxP2NP7nozMrYlFW8o1fjKZwtcgZWYJSomUCqlCOLW
 554gJ1gMTZAV8z1ecThHKcKqdyg6v0O0wTggT4wHq8TjIwp2sAzi/F6G1
 z+IT69lKBE9oAXM3ziH48XGWR8ttt6F6orc1253wGAK07onPgfw6YE0FC
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oB7cudZh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] iavf: fix off-by-one
 issues in iavf_config_rss_reg()
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
ohei
> Enju
> Sent: Monday, October 27, 2025 13:24
> To: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Cc: andrew+netdev@lunn.ch; Nguyen, Anthony L <anthony.l.nguyen@intel.com>=
;
> davem@davemloft.net; edumazet@google.com; enjuk@amazon.com; intel-
> wired-lan@lists.osuosl.org; kohei.enju@gmail.com; kuba@kernel.org;
> mitch.a.williams@intel.com; netdev@vger.kernel.org; pabeni@redhat.com
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] iavf: fix off-by-one is=
sues in
> iavf_config_rss_reg()
>=20
> On Mon, 27 Oct 2025 13:13:54 +0100, Przemek Kitszel wrote:
>=20


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

