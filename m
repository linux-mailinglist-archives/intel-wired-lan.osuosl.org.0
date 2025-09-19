Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBDCB885D2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Sep 2025 10:15:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6D0380FA8;
	Fri, 19 Sep 2025 08:15:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QUtngUdTX38U; Fri, 19 Sep 2025 08:15:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C6AC80FAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758269743;
	bh=dVxY6DTrM14sr29ic3+Lhh+2G2GHZ6cc4C7mVTVLB0Y=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KO54P3dbt8AQ91zPDGMHY7rDdR8nxhO6c8QqnyutT6pS8nhrC9mTI79cJKYDDWPrD
	 NNNRbbkWdVzJ+df9o1yT46/fBMrR3tbPd3taN3smUjKJdfwaVLGogoKumUQbyA3tBq
	 Pcr7YTjEbhJ4ZvaGfYvapkIJTRaPcRGKQZy2iUoGD6HAOXVml6jvWF5T5Vg0sPFTb6
	 Tj6B99+FCJShYH7JJnxP6HFtOvOLKQhn/Z9c5hnB71SuWajsKxQCuNB+YRcBc4lb8Z
	 t2tEBaYQTPnw/6McdO8f2oj1EvmK3UvgtNTUW2dEly9wT4slQ7mTATgqW5MmkalB0x
	 XdUoSi6eW4y2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C6AC80FAD;
	Fri, 19 Sep 2025 08:15:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8DEB7150
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 08:15:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 73F7140983
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 08:15:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id meyCfGwUkglt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Sep 2025 08:15:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 79D9240A13
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79D9240A13
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 79D9240A13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 08:15:40 +0000 (UTC)
X-CSE-ConnectionGUID: jT8A9l1WTtStBu7ZRVhglg==
X-CSE-MsgGUID: 8U0n71QsTz2B8IjRRTbfmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="59653475"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="59653475"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 01:15:40 -0700
X-CSE-ConnectionGUID: 2qeFduXqRXGGGs61oWlLSA==
X-CSE-MsgGUID: s2O6KnbUR9CPw6lbeVyJ6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="180194265"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 01:15:40 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 01:15:39 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 19 Sep 2025 01:15:39 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.43) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 01:15:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qtGB6DwUDYPZyaZPVjdUaV+YyNz874nTSlkt8/u+aaSHc04majokDOBdxf6164NNmk62i28/9VyRv8Nq1gXEoPjGFhOZWul0spSUnZhqpdHZHUc0k1yK5IkXnWMaw4LXxP14oDLLp06+wXjFkXlkLiFkS61wqb5ZO7Yn03gduvRTP39TgZCfiFBWl85dovlJwGFbU8xticB2S+y8DA0qlMm4T1uw71MbEDn2BsDYKT0jFcb7ObEjKPImDlc5NhWH5k+pwC2hA5uk7QUGxnNaLHhC59+ZXdUAd1YRs7iX2IQ/g3LKwuBpIdDialP2XWd605pAhV2Tu+iTgHFDrI4/KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dVxY6DTrM14sr29ic3+Lhh+2G2GHZ6cc4C7mVTVLB0Y=;
 b=JzBUtDKlDmTCNFFWdOU+azAbk2upqpgcjKAChhbHZTpGQ7pVrNg2i0UmXswp3+As+6b9sgUCXoaGd95CnYE8IWnngnf+PPIEY6bK+BpYCn2yX2c4noIIUoIZpoHNc/BwORNho5I2YZecCVxHMItV4Pp5WrqMUhKNrUw/atVChauMkDHftAr8VPbK7anC0g2tosTZ24KDcvm6g8WNKnw/eXXtnWm6s5bxHHTt0iN1KDBXtvlv7i5Yx1ISvufO73XUkrjI88uPVjVbrRnNbbO441jIaIRjIMym5yYqeMqzCXwDYZHVVfSzwwjU/SUV0IlayDWyIs8v3Gg2SQ13EE3rgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by SA0PR11MB4638.namprd11.prod.outlook.com (2603:10b6:806:73::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Fri, 19 Sep
 2025 08:15:37 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9115.022; Fri, 19 Sep 2025
 08:15:37 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1 2/4] ixgbe: handle
 IXGBE_VF_GET_PF_LINK_STATE mailbox operation
Thread-Index: AQHcGAThvunN/Wk6M06nrFdCXjj8/LSaSwuQ
Date: Fri, 19 Sep 2025 08:15:37 +0000
Message-ID: <IA3PR11MB8985592C495074A15E358AF48F11A@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250828095227.1857066-1-jedrzej.jagielski@intel.com>
 <20250828095227.1857066-3-jedrzej.jagielski@intel.com>
In-Reply-To: <20250828095227.1857066-3-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|SA0PR11MB4638:EE_
x-ms-office365-filtering-correlation-id: 283a7e66-14ec-4538-a6c3-08ddf754b6c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?kVGq3NZM2kcofkjXPDu3mwtjDZfEGxk1Qcl3VWmZPOTdGvEVw+vFToeJphBO?=
 =?us-ascii?Q?llKajxENYdj8X+tl0vMuxy80z0BdIhnz+zBFRDEwygbYvnNbewZXy3mnIWZj?=
 =?us-ascii?Q?tOrbYoZJcdkeAQ7I0C8vUsUAni823VmMDIKtF4UVl7Gmlcq4Mq08R5CPIv/X?=
 =?us-ascii?Q?Pw2FyHggDPbO/dqvqlgJJLKrAhVWiENIroFvKQZVI6bc6W1DdG1pJj7p0iWB?=
 =?us-ascii?Q?Qj34BVrTjlARXWUs8RQyCGUONtvh4BtGJfqQwfHUockJLWRbmY8M+Qe3l3Tk?=
 =?us-ascii?Q?Z0G0EwIpFAv4zRNUoyrP9F9PlhZwS2eO66kIVYObLOjgLxUBxzmoQsWWLynO?=
 =?us-ascii?Q?tUzgcP6HtihT58SRkvdFPx15HJ7xtygl0msHotdOlYA9VAKq6SjYbaLl1mwe?=
 =?us-ascii?Q?WhW7c6fofvdOXyMRRtVhQYFDRSfZ+9yT/BRs4Qre4/9tZj/nOSra2zI9T1Sf?=
 =?us-ascii?Q?PYYIMrSNkq4WSZ3ebSH7dspAoJnG/lV7aEKOi4rDkkncvYzOrIMrEBec5jl3?=
 =?us-ascii?Q?r5SUr7R/z9CkDzLXvwW73ZP+ykDOYJbkPRGgYIzSKp2g2FplCYvJV6M86BpK?=
 =?us-ascii?Q?JVyDZRY5wez+cSRgHrWNNANAyNidljaLQfwAzZ7x1HXPUF5dpROHU00LaBSp?=
 =?us-ascii?Q?8hEPf48WMe+pb8tjGEiSpwoI2g5lpYJvihl07dHZIy80NrNT/TGZyGPivQ+j?=
 =?us-ascii?Q?kyG7mPQwbWT67j/8RoVw9CAJGhtL3sDLRYu/+ZabDzD04pGFadIU1fYuTtai?=
 =?us-ascii?Q?IFeKvf8DdC0Gr+tcioZO4NF3Rlak5h//eWdbG/JjPLy/ILBTXbqi3qHvhql3?=
 =?us-ascii?Q?TR5RvSbS/BDS5v/6GlPyPPTLVdbbKKcgBwU4WsIG39zRUcF06UT71zfg4euG?=
 =?us-ascii?Q?ko8SgD5nf4ymNSDQL0hFCvYVVv8txgCg9yVrE1xlydv52vCuMuDIU3as+Vdu?=
 =?us-ascii?Q?hvnCjI7oG+91CrIxIHw8+4KN+fwQgJprDvyDvPAthgiSEthdRvQyBF/YZSQE?=
 =?us-ascii?Q?3eAXsOXDksEfxAXUXmGUvKrw3IRE64Ehp00vwjN4tY21WvrIQuY16yOxzRk6?=
 =?us-ascii?Q?dBT3UqtZQdJ0C9xIY8nU9Dm8zgJ2TmO9ym9x1P2k09exwQqNpkIVfH8IxmZN?=
 =?us-ascii?Q?eW+exjcsZ8R/LrB3YaT+I62xpwOQWxZNI5CpIlLJsqU8zKHKlhv/UFXeeIM2?=
 =?us-ascii?Q?TXO9ieerpXtBgWHTKYFCBq+IJARd2QDhbat1WR14yRlrfDM3z9qxgs9Fsjte?=
 =?us-ascii?Q?8MAF+6IWy7mditEuae+oAhVQ3vy6FuW6IIzslxIrI667uKyiPNSfewfliii9?=
 =?us-ascii?Q?4XZQm6qaxCdVQ0dmiFMiBSSMCDWFdYpm2KyTVaKrg8ELzOw7dDM/ucYXVRaB?=
 =?us-ascii?Q?lrhSwJjCh//mbESbsJhDB7WKgyEu8N5syPDuNaW33wRKCy5Gjtv3X30zq3ry?=
 =?us-ascii?Q?AH/7cNL9xctqNoV/UFW2T6HfT2NobJRQN49s38xuJ7RqMIqdM+ZZWg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZLJtXYGhrVkNBMq9D5YSCAH+9nYKi3Zzjeunl7Tqj/MNTp8uGrIwj9NMr2O2?=
 =?us-ascii?Q?oD2fIba5jb8t+Yu9cMt8Bo5H2yyz0U/1HZTkz+piqDopLqgNZFh6iROJWdR4?=
 =?us-ascii?Q?bzI/Yesg0NIGbyWvWETnyH/wFz36Pih0478jAhYNLn+sbir8AxZMpqCnCOcw?=
 =?us-ascii?Q?2LqC8fi7ndkaXmgdezJZjA1coi6tQDmBIvMzIEhx5k+AKKyqgvue9tIyh0pD?=
 =?us-ascii?Q?CA1sj9jicgfl1DnOQ7YgdOgRUXUfOCrKOq2UCjaztq5HJ40laghLuFto1K9E?=
 =?us-ascii?Q?0YsGKW1F3eAbR4w76i/1PhLnD/9QI038+sVBuyg/34qORxlN7mijXvkJSjhS?=
 =?us-ascii?Q?mS6RUXRekUuNBCV7KGzqFhyGnHf40ecq+oGF+hIaXT7L4E8V08gqwr099Hev?=
 =?us-ascii?Q?KZvWeJ4vj5+/ge+16ssZLRWh1U0mDwOyZSl7k8W+nE0x6BQRJ3efnHPFlq7D?=
 =?us-ascii?Q?53K9rpDCZlNViBOGysDE453WbiXu5g0eUWflMYgdO/g760LicPati4A4Fwpu?=
 =?us-ascii?Q?WDLIqTAEEK3Ze1wkECbK3qa7VPSvwq/LwenEb/Qn7X/QyqljIXrKHtkLg42n?=
 =?us-ascii?Q?/ScxCDah4FuZrMKJBL2r7DNK06MasLx84YBJMVtPrdAyFWNNRUfQtotog/nR?=
 =?us-ascii?Q?0nuX4nCXABeOsGiD+pxQRo2MuWEgYRtBuLd/v4xM2qhTFf5HFnFDWh0GMdrz?=
 =?us-ascii?Q?JrzIeK2AZVODraZaTXtEX1zpDO139GOWkwKt2Rtc9W46TyV9WSlYLPgSq5ou?=
 =?us-ascii?Q?P9jcmRDE12S42FSMsTOs3Z72LAWviY8wjRclyat7fkJM8/TMbXUdiy8Jidbd?=
 =?us-ascii?Q?8Wrx2zOvOP6TV3246YbWfOnsp8u4BOy1jsGbl4d2G7bgtACCVVssbbW8GTRm?=
 =?us-ascii?Q?JcTL3SXk21vaA5iNtmygPdeunrAO37lp2NxHKUjQfqLbUlfNmHanfCZwf3C+?=
 =?us-ascii?Q?Yvhe+JuOu5jHILPi0NHmSa2iaSt5pXVVvkXz5MJFOpvKwyZOI6oKeH+9aO+x?=
 =?us-ascii?Q?gAMdJKnTakQk2z56ObuSLoArxjfMtwJJgNUrNbdp/kg/ijbitIDdNqEPiW1f?=
 =?us-ascii?Q?GcYuIoAKwkJMiSgH8wsVo2MXCUfQ1aPwiQgSP9aUXUlgy9QAu/VN4/U2aSpl?=
 =?us-ascii?Q?mW3gbN5n8VtpwCrGnbBmJWfmTiTAoJHdeHGYRTs6uVjJITnPEilS4UxudihD?=
 =?us-ascii?Q?H8eBCh9XW0HsyUUZPjvmg7o2zngj1+IyVeHPPEywXJ6e3qnqUSluyQs4rE9O?=
 =?us-ascii?Q?V48uZKUa1DgNjE/mivscoj0B88XmzZhzzoElz0m8RgWkjU+1jlA3kpXew8Tg?=
 =?us-ascii?Q?Y3mWSI2Pimh8N4nB6P+Nck8weqBYrkXQganyjD759S75fo31GNNRdqcjA9Yk?=
 =?us-ascii?Q?oRP9xLlsPKY3BnjywrnGUtdDLqWC1DUlqXkpogwJ7xEh0nY9Hvr/wkjS7LAO?=
 =?us-ascii?Q?u8HG5naKRGhYfm2FgY2zTAp91333S9ZZd1vadrHBMiMWkTU8lp89jFqA5AST?=
 =?us-ascii?Q?9eBu9wwJ52ydlK1Lpw86CG9P8pWobXe/4+3qbImWUR/X7Z7u1dnYBKt1IhoY?=
 =?us-ascii?Q?Cql3JKhNh7O/p/hevMDMR3hUQHnlH8q2D+ngkE2fKWC6SS9J7GdfPl/oPrJW?=
 =?us-ascii?Q?JQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 283a7e66-14ec-4538-a6c3-08ddf754b6c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2025 08:15:37.1983 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NXEfSXi1V1av7gSQFuv8XbF+lZeEIAUYyc/2JBZRUXl/ZOHRUpeVH6VWAyVnz9h1p9P4P9J4/FanNLv5a7Gjb6ucbZCEq9/kH6igKMC2+bc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4638
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758269740; x=1789805740;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ERuRM1Vj36bIopf1G39dcEWBtELzauML7ZML0arYOqQ=;
 b=NCeALbqNjX/Cs3PTQDabszxHnhZvpmCbuqsKv/Md7HZvtdXMFPnpI43v
 ld72ENreNT4crPWVyRVIxN3QY2sJCVCi6PGyuDjMyW1wPJdrV9jhNTb+1
 lf9vuQS1UYPPKWwS4EukPHavd7GL5EoQoAo36gEf8cXK13AGWOytbA+2R
 hd9E5rMgHEFJouuxM5VaHJnLwN2BHDe4QdVG5dC08GDGMNmdKoQ/HMTv/
 l8V4YmDGS/3FuTVOprfNUxPGQSN7dW39bA9qazWmEcW4XLNaxfhcipWuk
 NvZ+CFl71FpSyAxYatiabGpwmd3NICQCNetmb8HpXMIQsN5weVm+1HGyN
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NCeALbqN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 2/4] ixgbe: handle
 IXGBE_VF_GET_PF_LINK_STATE mailbox operation
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
> Sent: Thursday, August 28, 2025 11:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; stable@vger.kernel.org; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1 2/4] ixgbe: handle
> IXGBE_VF_GET_PF_LINK_STATE mailbox operation
>=20
> Update supported API version and provide handler for
> IXGBE_VF_GET_PF_LINK_STATE cmd.
> Simply put stored values of link speed and link_up from adapter context.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  |  5 +++
>  .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    | 42 +++++++++++++++++++
>  2 files changed, 47 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
> index bf65e82b4c61..be452856531a 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
> @@ -50,6 +50,8 @@ enum ixgbe_pfvf_api_rev {

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


