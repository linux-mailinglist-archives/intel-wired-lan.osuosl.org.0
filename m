Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOA+D+LM8WlrkgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 11:18:26 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A76491B5B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 11:18:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83BD561415;
	Wed, 29 Apr 2026 09:18:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w-CoZB-KOTtr; Wed, 29 Apr 2026 09:18:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1267613FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777454302;
	bh=EKJsqSgrNrsV60GtBFrOW9PDzaDQ8VolEyQ9emGDdyU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=N60rk8HmJQwmNRoss1NnKq1y/udzaqIh2ztXyfFNDT6Kwyc94hdttCw22gtvlZVBI
	 59mBPJpMj7iV8N2OUUEuLe5WKCY6u3BoMO8pGt5or/pmzT1HfSWjjv4qF/QBpSxjCD
	 qo4KcR8iQVJdztAbGgUoRiq2bi+hKiNXxgkRclhId27OBiPOOGxwMOGHv325esciVw
	 GYlHmeJq4g60lHBLRMBpf8HMCL95ZiV7HtFTmAiDQVo6uE6wVixmEIzQIAzCWqL3eV
	 Wbj4Yfmx1MPSBwLIgaaux8+7XpY2XjG2U1O/DCJswCzxzmChEl0EpKIEpALzkP+yUH
	 y/+v7RHNnR/8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1267613FE;
	Wed, 29 Apr 2026 09:18:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CB575231
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 09:18:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0723613C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 09:18:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vYn9yc9nLssd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 09:18:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BB0FB613C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB0FB613C4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BB0FB613C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 09:18:19 +0000 (UTC)
X-CSE-ConnectionGUID: 4FUJEzu7Sl67sXATsRNcYw==
X-CSE-MsgGUID: GVJycGTpRwizSzhuH82lVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="78365036"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="78365036"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 02:18:18 -0700
X-CSE-ConnectionGUID: Nj2FP4yaSOySdxiycU8iwg==
X-CSE-MsgGUID: 6ouliLyVSPSGmeaB240Prw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="231562674"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 02:18:09 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 02:18:08 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 02:18:08 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.15) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 02:18:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q6yL2zWLik+2TC+rtjozDaJN4DDGtsJesuY0Z0pdwIHxbVNBtdfVl/UiT+tQ0IFG8H9P/T4RoOJ1BL+NEdxZqWq/W11wMIrJXzVVu3kSd05ZLth/5TlVTe0NCvbKVmLa+JzeKsxMbwAnM4+qNSSlBPoOtGqiT23GrUWC6t58E8uOazmcBplnBGkwhg1TzLPAjFB77SYOgw4hasWHtCyhDAathICyRHdqAHArMglDnjQj2LAVcwxu2NAiIs7mqaAhhb3a2uA94jwFOGGUmUTB6CCFw8N4FO+uNWJW+GxQ7/cZHY/Tz/PZ1Y8d+ffMIJh0VUfIjAvNJrUicWWRL1gmJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EKJsqSgrNrsV60GtBFrOW9PDzaDQ8VolEyQ9emGDdyU=;
 b=lm9EbtL0qTrYaCcyVGV7krNzd1tGme02ulEw/RCTyVpYqcS6ybJMzOqVPeYcMLVKtvfNXJ6vrkLWXqTPLEhMx3c/KTecwDt7bjKclcZHpFGFedLZ1ey47Vz48bPDC8gEl7Rlwhdvw7T80epuMjPq0Nab9y6ICuww5+B6AVWhl3iqn5ckKdr21GoCOI0F2W1geGeUR4y6246r+rJmGqbEaKu6U4J3hfmOpLVAPF2xEGNJ0ncon4Hl9PW6is+2Kh8UTJFC19YNkX95QRQEN95aw9JZrhcAzgnEJSOJySpvTAgIb5VfeGxc/lhhI4Er9Mpxsfstg1YLPQIa2buDCx9Hew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BL1PR11MB5303.namprd11.prod.outlook.com (2603:10b6:208:31b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Wed, 29 Apr
 2026 09:18:05 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Wed, 29 Apr 2026
 09:18:05 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Vincent Chen <vincent.chen@sifive.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/2] ice: remove redundant switchdev
 check in ice_eswitch_attach_vf()
Thread-Index: AQHc16S1U4/zD/w6+02rBgDSBO/HKrX1wtXg
Date: Wed, 29 Apr 2026 09:18:05 +0000
Message-ID: <IA3PR11MB898631399BEC9181B1E1705EE5342@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260429065127.423949-1-vincent.chen@sifive.com>
 <20260429065127.423949-3-vincent.chen@sifive.com>
In-Reply-To: <20260429065127.423949-3-vincent.chen@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BL1PR11MB5303:EE_
x-ms-office365-filtering-correlation-id: 6e98446e-993e-4f2e-74fc-08dea5d038b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003|38070700021;
x-microsoft-antispam-message-info: jbOfEzXhOVwzM0GnjxBgWnONRvmfr8tRjgKoLByOKIZ99snfgZ3THLO1/KHY0OxLZAerUxE6bEbA2Hyxxe6gU07yOSIeFeRECrQpxV67LyGvLyX8RZ1fCW+cFno7s5UTCBCbT9UO7/K4sM/gH5aEECm00XNf4iyJQW1G5z8oyMMuPeVJYpIgAYO4E1swBB9oejquzgY+FMB0Ro/iV0dSkk+EIS/yMR+bZ/prHWdbqtb5O1OoxJI8QHT9c/8Uh6+SGjmT74mOYGI+/phGmASB5IMufqfJKWiMl4kNp7zAwjQdbr7ozXv47ZvvvHFHaZRIZo0GdTM40mdAKw8LPZZswL9HR9/tIj0pKcIsikMobCZmhXHA7621utGpYk8WrkA6dyxaq14SJK/G5Ls+/+umMouZ7xvLZkVPxMXVlLwDg8SHqTg1FTNfMNspO6ZY2mUkMmc5uALyhIm8X6YROinminHVJWIzvcMRCDnLN/XVL48mc1xKdhw2+VF/funJFfqBwCeJCS5Uvd9RtyVrlmaZEh4UmYIvcI9nURqSx+rquKcV1uXmBIK3XX/Z3q3dtcpNvEb6nLiUmpXfuZ5LNFzzBzPch/ZSkA9KtR8xvx87Iv6cH35NaD3rcmX5ZpkosJcjjGGiikoTqF40eXEGxNFGTUOoqNbeaiYF7L1tQ1QrdM8DbPd5sRSav09amPnGu6/X4HcGSlqVqxP/cpHsFGrV4F7DZxQnlr5fGOpy8BhX1PD+/XJYdcp3S+zPT4KaCODoeTd15718VceIx14bTuHTzUov7Tnuam9osWwr0JPvjS0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oP1/Ui0TUMkspTZlwJVv12cGxSGwWTZRI7QXNNj8ZEUeCbUlcoygYyFNEOjl?=
 =?us-ascii?Q?CXgxjBhqXBNeYOmOHCIxtapj6fFhWo7x7UuBG5fwMpyry/e9uIKGjEEcWQA6?=
 =?us-ascii?Q?zDFhdwXsOXTVuhs+32Fa5AQXAIVNRCCppYxMDwMpIRn+Bb9JzzkPmn2nbHNy?=
 =?us-ascii?Q?cPvjNlSNkqpkunEFl1fO6mftVTlGOKzZbeuE1q3dwwZPc1vrujnYHTE+uGmv?=
 =?us-ascii?Q?SNntbiqTWa5OP5EBYfK1M8HtBwaqUNdOcFGlMdBqG0YIibb3orPhCRNeIUlX?=
 =?us-ascii?Q?L4t1hBEEFoJgeyq32JK0Htb9QrRkSAqz6ggkE1YlEvJzZZPKPt+RLuBevk88?=
 =?us-ascii?Q?Jsh6g+R/vKB7LK4Nj6fpl8wFCDOzuzBPOyL5vIqSHiSy3lvlfwYkiR+Pm3gz?=
 =?us-ascii?Q?xkZvuETjXzkFr8I9gwk/c6lw/HjHdbr4EXSsNxfgqtMkXX1lBsQdwgDZt/f3?=
 =?us-ascii?Q?a5ymJobVrriA3GtKT1u4ZeIm3YY33xZa2/6vS7vUcz+qzCiD3QuevIAACV09?=
 =?us-ascii?Q?VzESD7deM3f95cXiHpQz74YX+KLBLtCEAgRyEGWSwl//9dZvG6ZkdhZmIp77?=
 =?us-ascii?Q?kkdScLPBwDqmLhtUdIKqUDp0CAe5iwpeLNoilogU2Vb/TYwtqyUnwqvuL7Xh?=
 =?us-ascii?Q?o92oykf66j1bFHCQ4P/1NWfXYcZJRr6EmziDfXeUGIbPt+pgw6uSZerC8x52?=
 =?us-ascii?Q?B3T9aSnjUJQQqKkA9EGeOT88RDOexwj8d7MDVrz4CaI4AAond+JQG3nyWab2?=
 =?us-ascii?Q?Q758DZ2aYqlYkOG0DFlB+MRV5kKR94WyEinZTjD9+zVUxXkoWSUBLNQbPNWk?=
 =?us-ascii?Q?LDLKqr8kqf3X0j/Flt2g/C3hf9FfTHD9pyfTDDT4yswv9c1GcumfCGLzf6b4?=
 =?us-ascii?Q?KmqOCz6HOfLLrZdg0u5QFsBZKA7cGzb+iaEiznFiBojCNHtpZehdLYtsHwr1?=
 =?us-ascii?Q?2lHHj/+5in3v8s73FQdS6aLY6BNUff0FrxDlmLJoV77EeASKU24x6R7O9XU1?=
 =?us-ascii?Q?6rS5aAYePCKzy+g54AVarwJTKwaxAURDAcg2PutHFoomG0+lIE0Bd4vd+YLm?=
 =?us-ascii?Q?CCVn/sLfl4vP7xkRltEfL+X4ZvEqmp/X33VXhle0ynYj1Wq7Bnzdbzh9f8E7?=
 =?us-ascii?Q?iCStUKjLO8sdNB/QjvVWjKrThPi58E/flgEjeaGqBHBoYpZd4c82dmSbIYTq?=
 =?us-ascii?Q?kduCa7Yxgb8vwcCiO7tXdG7sH6ItGSMo7wx5cWTmYZW+kYJKF8VHbFhLwfz0?=
 =?us-ascii?Q?2rkP2EKBl8MG2o7XY5acMCz3/aOdZzuGor/dV+GSSQktwXSQtcfBP275yvGE?=
 =?us-ascii?Q?SW3ZOAl9+PpjgedwrEFroC55ocaplv1RWd3NmZtJ/bljW2xC1x73qGqBRJej?=
 =?us-ascii?Q?H39IG1vQ/o8w+L+Mmz++q3uQQ5WU7/upCrlWhBCFE3txe5fXriJge3IIuoHs?=
 =?us-ascii?Q?qw6WuxbJIlYLB2hHAyHPn7vpSKA6faiZ+h3b0y987AVxB7gRo1zQwNYA2uaN?=
 =?us-ascii?Q?d2t5FUZJLhdfT09omOtmtqH3UlWbqunxmOwp9/Tkz7srxjObMiAkFQwI10RE?=
 =?us-ascii?Q?OdoILVI+CxIaarb3J/nexH9Zc4x4hv4XyXNrQjnXH9zh8R9nSU9SSwWj0G6Q?=
 =?us-ascii?Q?treZpWoH8/0x7KaX8Y6bC1utJp1JVylzITOU0Y8W3DaVdAuVUwA6KiT5aqb1?=
 =?us-ascii?Q?7N9yCkJIcRMCCxpLc0btY+u7B52itt5yyS3CBJfqn+n7TaYf4KE32ZkfdXpT?=
 =?us-ascii?Q?RKEinwJrx3wehmvukajOLy4FKBwbxLc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: GsgCF1ck/YhkhUPgIBw03cPBFBFAz3QkLqnzjVoBZR7LnoqyshVSm2ilYsFXYmlAYzw5dm1wJaUeIx2rIwtvEOt2k56g2iN1ej3hqqr/qLJRH8ZZZHh3wccPJet1ev58ZwTgip4CIR+fk64m3JWkC4d7Qgt+zp24hzj/xoDgGyjCs42i6rZVDDRnAV4+7iFLQlwFSptoNbWTTXLwlAWPfYg+k7zNI241+NHFcVBkvvOSm3WOCTbaVDJz0UK6qE+2LKC0m7sJIgxADAhEqfQbm2/Fp3PRib/Km8XBFQQB3lSQlclUQEWX5jz9SZfwZkzCYGdevgrqJb63qCgYgWulyA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e98446e-993e-4f2e-74fc-08dea5d038b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2026 09:18:05.5865 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: al9kAKI3A1RZ8E5F244s2svXMFmHKfZUmb3uJSkfFUlcl/K6JObRP3NwdmlbSubxs+0vllip5y0cVf/gLr6UrZAS0ddp1OOf/1y6YyxlPI4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5303
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777454300; x=1808990300;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kzZRpUQ9eRujo/iC8bJ17jAabptcTgcB0hKQ/iw6EOw=;
 b=R++py/Wzf5R0jtxqpD+u4vZPH3VrB1MRHKDTsE0iZu8NBOmtEQxYOuKQ
 urvzQ1MAjRErqlCLoH2BBiYXaNPQNUV0VXcKL2vvPFCWAWu3ibCoCD//M
 84zGleCNnbn0lVjjovw3OrffBHMIkrqdm85MsgSrU7zQ5mjfenL73uTQ6
 xkF2azACYHiaFbENr07pRzqqVTyIcbgpSO54sT2ROL4xcnRq74BnpY4ob
 I3IC7ERJT3knmB7y3jEP1jHXy0YotOivaSSdTsQToCaQ+vMB87YRZ5k/v
 9Xvk5WlNrsbsLxqSXe+C8zYmo64+heX+duGSTh6VjxaZHDyeHWYuuQ2Qw
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R++py/Wz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/2] ice: remove redundant switchdev
 check in ice_eswitch_attach_vf()
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
X-Rspamd-Queue-Id: 76A76491B5B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:vincent.chen@sifive.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_SENDER_MAILLIST(0.00)[]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Vincent Chen via Intel-wired-lan
> Sent: Wednesday, April 29, 2026 8:51 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>
> Cc: andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; vincent.chen@sifive.com
> Subject: [Intel-wired-lan] [PATCH 2/2] ice: remove redundant switchdev
> check in ice_eswitch_attach_vf()
>=20
> All callers of ice_eswitch_attach_vf() check the switchdev mode before
> calling the function, the internal switchdev mode check in
> ice_eswitch_attach_vf() is redundant. Remove this check to align with
> the design pattern used for ice_eswitch_attach_sf(), where the caller
> is responsible for checking switchdev mode before attachment.
>=20
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 3 ---
>  1 file changed, 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> index 2e4f0969035f..c709decb26d5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> @@ -512,9 +512,6 @@ int ice_eswitch_attach_vf(struct ice_pf *pf,
> struct ice_vf *vf)
>  	struct ice_repr *repr;
>  	int err;
>=20
> -	if (!ice_is_eswitch_mode_switchdev(pf))
> -		return 0;
> -
>  	repr =3D ice_repr_create_vf(vf);
>  	if (IS_ERR(repr))
>  		return PTR_ERR(repr);
> --
> 2.34.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

