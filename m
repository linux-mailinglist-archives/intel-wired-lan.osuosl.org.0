Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D81AA8CD9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 May 2025 09:10:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC49E813A1;
	Mon,  5 May 2025 07:10:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5miJpBDo8mXz; Mon,  5 May 2025 07:10:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB877813A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746429009;
	bh=7vJlYaxTErSVRHNoFGwQpNcOMUR4ZQ61MqwGM4Y5hGw=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kE3DR4xi72scOGwzPnnu7/oK69qMO91rsCzutE9vJFve72Hv6Ofc0qcxOpWJGwRxs
	 Wd9fmS76Z777OCsCgdvzY8Ero0o3qIzB4Gj7Hy8TAGbK1mU7vk6ZfFHJl6au2HfCwu
	 DlTNarkODyME1rOyJ29ce+xF+++JWRA2/KiJS2iwSCFQCX2onBzsa4my/4vT4Pv4Kj
	 gJE2lm2QgBxfK3kaMqPUM70O98Dq1fjCI1jxsn4gqENW5cBsNlt1cK3WfvL3NmoJ0s
	 Eij5jeOmJMYHFHgxt3hEEBcAWSHB9j2kpAtDsFVrN8oFoWjuFjJ+JoqPUZqZC9VQQe
	 7Ns0a/s1R+Kqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB877813A2;
	Mon,  5 May 2025 07:10:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 56BC416B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 07:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45B9340659
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 07:10:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I3ABn2l6tH6S for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 May 2025 07:10:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 264A84062D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 264A84062D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 264A84062D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 07:10:07 +0000 (UTC)
X-CSE-ConnectionGUID: uQWokRvlT9mb8Raz97z+6g==
X-CSE-MsgGUID: v1TIx4MMS/WUFZVb93EX8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11423"; a="47281464"
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="47281464"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 00:10:06 -0700
X-CSE-ConnectionGUID: Etm89s/LRIuSp6zjO3iWTw==
X-CSE-MsgGUID: SgjLfchjRiuNXXKep4roLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="135124786"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 00:10:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 5 May 2025 00:10:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 5 May 2025 00:10:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 5 May 2025 00:10:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZPyJzXTtb50b92f3TMVY6ydKLLhKoeWDX20qCmnkiJvkF5Wztr9YhfxBEbb7G3zUvjuC1zbnoc5woVAePnwfIxDwEdY9BKeNiViFuFoL6msVEcBE4HBNIvag3mgyTMyOg4suV0TCd1L15mcRnpmeeokq+QRIp3Ydjbo+PSrU9sGvwIWQwCq6RYOqaS6NxjeFrSZ7krL198D5WUUMDD7vbEb08lz48H6kBKpvp2+GaiPWOQ7fEnx7+bev1qo7Ph5nGGg9xR92kVksIcZqz39vn7BlOLxMWDiPzeN9DlVPj/qvplIWk+cMOYlOy90QXHm8e34vTmkVpjULiisFh5CSDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7vJlYaxTErSVRHNoFGwQpNcOMUR4ZQ61MqwGM4Y5hGw=;
 b=RErhrKg1wpEPP7RYwPX7+c9J6jub4RPGYrgL+X45+MJlJ0xLYvC3sJbxNJ+jnlq/LaF6voCGT0RdITgLfyNPfF4Dbq1am4cvtBptqUczCcl7AvrYKPjX5mqF21M2V4BZcrrcXtBL4s7WdO8S8J9PENJ93+6msj2XNEZYSiqcbZbayUL97E28oSP1fhjPDnRVAqcamipCLMP2Ivre+c4UEpzWIozHVK+aGIUiaH7SNDJ6mln8FrarEQcwK6o8Mc1L/G3YC6RoWeyDljBeboc7KwmUuZnkYPaFA38CqJijEznhPz49AV9JKDNhtMgD2cK/J/z1ccPHLnynvjNlWjEb6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by PH8PR11MB6952.namprd11.prod.outlook.com (2603:10b6:510:224::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Mon, 5 May
 2025 07:10:02 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%4]) with mapi id 15.20.8699.019; Mon, 5 May 2025
 07:10:02 +0000
Date: Mon, 5 May 2025 09:09:43 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Jonathan Corbet <corbet@lwn.net>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Jiri Pirko <jiri@resnulli.us>, "Tatyana
 Nikolova" <tatyana.e.nikolova@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, "Lee Trager" <lee@trager.us>, Madhavan
 Srinivasan <maddy@linux.ibm.com>, "Sridhar Samudrala"
 <sridhar.samudrala@intel.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 <netdev@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, Emil Tantilov <emil.s.tantilov@intel.com>,
 "Madhu Chittim" <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>, 
 "Milena Olech" <milena.olech@intel.com>, <pavan.kumar.linga@intel.com>,
 "Singhai, Anjali" <anjali.singhai@intel.com>, Michal Kubiak
 <michal.kubiak@intel.com>
Message-ID: <aBhkNsNPJmfat2Ps@soc-5CG4396X81.clients.intel.com>
References: <20250424113241.10061-1-larysa.zaremba@intel.com>
 <20250424113241.10061-9-larysa.zaremba@intel.com>
 <20250428180349.GF3339421@horms.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250428180349.GF3339421@horms.kernel.org>
X-ClientProxiedBy: VI1PR07CA0153.eurprd07.prod.outlook.com
 (2603:10a6:802:16::40) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|PH8PR11MB6952:EE_
X-MS-Office365-Filtering-Correlation-Id: cc478bc2-ca0c-4960-d929-08dd8ba3d99e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|10070799003|366016|1800799024; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KNis4r8RB8sefzSLsXCsNrAdPew9u8SGTxewUyl8QF1/6r0XX1W7IG2q7ox6?=
 =?us-ascii?Q?+JAnZeCGxi9YiooWPMybzY9wwdEX3dR1hbl+IEGEoIkZ84q4ZxVsx1XmhG2H?=
 =?us-ascii?Q?megZm1h7UEcMm6F7Q5OYR7oPY6gqYHsVquoXQZqkyze14nKvS5bNZZhP8NwR?=
 =?us-ascii?Q?BmAVgDUOFog9EENm0AqvjucKrpXYi7LGessEFOeVWrmxjr2o0lN4Od5PnRSs?=
 =?us-ascii?Q?1N2GmlY03DNN7EMsmCXfQpeumceZEjB3fi8osnw3p3qReGjF4UBCRxXh48V4?=
 =?us-ascii?Q?PoWFrWNuJ8PRTsIPK9oHXnr0XjzCtiIGg65R2V9NOaqdGyPbe4PJmNjrRkk1?=
 =?us-ascii?Q?pJfKDjcssSkoQXrMwijYxvPLbQeXBxa8U4FU1zAkcH8gNAgeXyIYc4DHCkZN?=
 =?us-ascii?Q?3cEFQUgXZ8j5sthmkaate1uukrDkk3km0bUcV6y/plIy5n7432jva3RcH0R5?=
 =?us-ascii?Q?2Q1tsEiG/kBRGK656YFPfgXeQuSIOdbP/JcMmkmkdaJUAIt94QN/UZxDp/i3?=
 =?us-ascii?Q?f+XLK+kqwKoIZG08JX6WpYp4MP6q8Z8SB/KLPuUGRzj4qVENPCUnUdbWkz0+?=
 =?us-ascii?Q?pAoL5p5HA6xLAMCldOaAZf5IMo/Lh8x/Z6NI+48j5YjTp9YVIAnMbn8IbllY?=
 =?us-ascii?Q?S38yA4LTkKrXjjdwjMcjr8jwv+6Gaj/Q/vlwTdDkiW7d3zXLnIZLBeLEATMs?=
 =?us-ascii?Q?0PE6FmMmLBNtoR+MXZwKEWuixE3KAB+PBXZ+UjR4/qFJE6ujsxcEr8Rd3rZp?=
 =?us-ascii?Q?12QwIVRq9WMyt2S1E5oFJ7Ic+5lhxEbq2qtx/V4onjx9S2qTzpHaSF/0JHad?=
 =?us-ascii?Q?FGinPPoNDV3ZLxu3Qe1Ky6ZcZZgnwEUR5uYGINYuyow5F2K7fZ1fx/Fsi8e8?=
 =?us-ascii?Q?gSm+jDVFN1Yl7pPBJtBKiczjEoQXcpzhzHDAcsp3XQO8FdS0udkCtMsaHnG5?=
 =?us-ascii?Q?nO7srab3X9Ug2rCjFjZDLHNZTSd+2Pia7E2J+RtUC8GW24tybGMj3D5mi4ov?=
 =?us-ascii?Q?uTqv7wfDSaAn+t/Rc4dTE6wBFpQqAKmVdvQOyb/RgEwBldI779+fFiWniygL?=
 =?us-ascii?Q?xwPS+rOO71+7hKbHn24TWtU3DgIdXpbb82z/iH937stc1oVO5/3k8PknP0up?=
 =?us-ascii?Q?5A8eDKWkuOiWgJ+8cAWd1Yx9zDQKyU8iT8/t37b/I3r4skeynWOQcDQoubXF?=
 =?us-ascii?Q?CJTGRq/DYpqw1whUyHrhy5VsCpVrF9GegDp1Bj8RYTE9LtVXYhlmrx+sJF1D?=
 =?us-ascii?Q?uVEtvZNvR39b3djRXbvsjaSLLreAN5p53wvTSkUeG0ibuQlcExvaceOiMc+H?=
 =?us-ascii?Q?jC6WFa5TangLUmc8a0XG+kbc0DoscKGNo/nl6jpq/Ck2WBGZGyUPDdfNtrtm?=
 =?us-ascii?Q?Hm9HbmEQFJxxBxTWSCgF8x6ZW9zmr9YP59VVKL2M6lxrj2d1mMlMKtv3GMM8?=
 =?us-ascii?Q?YCWaX+Sf/hw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(10070799003)(366016)(1800799024); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SCNCl9ZPrh1h1TgnSvyLetmoL6/aVW3V8F1bb7M5fvw4O8U3WtIUarxxINQX?=
 =?us-ascii?Q?Jy10gy8hWTKrrrJPhixnd9db4Hvor4m/n6yvIPeuflI2eg5gl152eWx3FUA+?=
 =?us-ascii?Q?sUqqlKwB+29Y/UcXwyBQHIISP85g+xnLnE3ziRRGs09V2wk+IbA7MjFKZm1S?=
 =?us-ascii?Q?m6UyWkuo6fXTrhPgKM1H0S47DnaWjsAF9PV4OTtm1zcVOZ7QskOV4rNMuL5e?=
 =?us-ascii?Q?DKEctGe8hzPRzrJc+LKmrmiApPxinkKojSsaGXSmKIeg+BQswjQT1EavGGgO?=
 =?us-ascii?Q?+o8ZTrwlwpLqthe0FaKCQfD65eX2pgki0duaCVgYQZTFfzBE/wJOTVwG/68z?=
 =?us-ascii?Q?J+3njcLQLSa4zrxThPGcAO5+MFBkAyMVbQDhpNM4M01AulVr3A7S9niGJf4I?=
 =?us-ascii?Q?pofYwT4gBCrpRXAbaUBNRXTi0jyXP51RCAX9MUWy8L/UU38wgK6JfLQOMmoW?=
 =?us-ascii?Q?e7+mHWh/uAoTjVurVMH4xvdykrW0ikJv8xw2JWqnyM7xH0uNDwC5AWai6DcG?=
 =?us-ascii?Q?cb0jE4nyEo1rpimogkmaUu34YbXyzEvO61wcVK96vPRMALsXZ9Hs0eF7K2zq?=
 =?us-ascii?Q?kWtLfrjTlWMCIj/KDN0iT8c+8fTqOYoTwjM/NCru4JEYLDPtJ1hGa7trjKbf?=
 =?us-ascii?Q?4qolYEGi2jD4acu5+bGSrh8k7XDTFJJmk1MjqGVoiJ5TCY8jlSa5+uoXBnEN?=
 =?us-ascii?Q?gG7VOa+IuIlTSuy2TivbgVhxD2iqOUsstALV2F8EadUOjlohfdu7PdWT84b1?=
 =?us-ascii?Q?E+JOrIuY/W9aEfve8T32SgbZHaq1viVIYux5AmEAlyVVExD0sH0Squ1P1stx?=
 =?us-ascii?Q?Tj3M+28MF4jgMsKYTUJQjD8uSRRq0hwiRu/CSXbhlbPy7VPWanKjvPVviUA6?=
 =?us-ascii?Q?givza9FKO9iuMgJvJdPst9wk6PzDz9HzLWI0j0FXJskCcnX+Ew1P3MS6vWRt?=
 =?us-ascii?Q?6kE+gyy9kQiDs1W1G2g0vcGCa1V2AqCBp8l6276K2R5TGaWNLHW9SwPKtwye?=
 =?us-ascii?Q?e16SlWS/wY1UU08Fs0qQZOt8ScS3GdxcHJgy+uMi2M7mtJivod3QUyRl9dnJ?=
 =?us-ascii?Q?s2bQ3lyPBvezLce8tGbDKUifAj7ATnkTkOAwZ8O4nzxj7ENi1XB/Bo0ChHxn?=
 =?us-ascii?Q?SokvFz3QeG4+E53BNMo5vYE+LNA4Ks1Gp58UqrZTu39imadHFH124hm1ZjZ/?=
 =?us-ascii?Q?HOUstUQVD2X2MnLUIajOGYx/rDLe5+2QaExa5Mzt31qGFod7qs7PECzgtRdD?=
 =?us-ascii?Q?MjhWCXFEK/bQ6uNgh+JEQcgUJsl73R4zng0aaS4Uu+Lnm3UKstMX3kWZCdWE?=
 =?us-ascii?Q?WWI9aV5VerpnrW10dKq+JzlLJ3qp8ltLE/3oK0xfc+COc/KExofqJdzuz2VR?=
 =?us-ascii?Q?3WkiEPZ7Q2TI+hFZ7n7n6W+O8ngfyt+3UhQnNEDvs89BL66i2i7CIDLJ8uuO?=
 =?us-ascii?Q?MFR5hzJgh1bb+c5pq0fWwbs2cRefQfBAlG3gfvrk+69+HwjPjIE2MbxeFiFj?=
 =?us-ascii?Q?liFOrC/ja7hxIjAk/SvVwGvXd04cfYsRkEqkcAzkX7ToAeegoPSHnvQGGpX0?=
 =?us-ascii?Q?UlBDJ0liO173SZlPtAnLlnBRYhieC/PLfEPBoduzTT7IOetOoa+SIBFDq/xG?=
 =?us-ascii?Q?MgMr7pVClOlTRp/YmMqGezsU4xPrmcI/heSpoOnafh3NNmhEixaJi/WEb4GN?=
 =?us-ascii?Q?xNK3vg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc478bc2-ca0c-4960-d929-08dd8ba3d99e
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2025 07:10:02.1261 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2uUTUNy4PS5jWU5tUYUW2vWXq/ndi3QDkmCrZKZssfaRau9m7XL1UHClluoL8gxoUAxexuepXkP7Bnt+5nJYXfLaFSlGm7GdcW5TToadusw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6952
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746429007; x=1777965007;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tkKL2za0c+wXAMdarVtaLeqZpuEq9K/80G02RwQ8GNY=;
 b=JUgXmKJyGRS9EjCtE7mgoGKYbupw4+EDfcYmVVPQr6HSGGK8Jmd17qhi
 7/1NAAPWUJWeu4mGekuinhRxMr59uV088+W34zyvpiCmuApOO0pGlRO7Z
 xBV0FCLFTD2vFDvKjfMtTEvCVFFe3SDHyeZegpi4VIODQX5H2C2bdE8u6
 cNNznYEkmgLGkuRZplCBJhmGkhuvgiKVTDAbFKqX0AXWxG88XkrkW15o0
 nqrlgE2N8es9VWu/MnOclg5JXbuJYaFEzi4H1avtNqr3JU/Djje/DVa5o
 3oEvH3moi2G3B9KxRKvESj5CAqvlp/5PC6ADJR4uPHP874WrOLTQy2QR8
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JUgXmKJy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 08/14] idpf: refactor idpf
 to use libie controlq and Xn APIs
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

On Mon, Apr 28, 2025 at 07:03:49PM +0100, Simon Horman wrote:
> On Thu, Apr 24, 2025 at 01:32:31PM +0200, Larysa Zaremba wrote:
> > From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > 
> > Support to initialize and configure controlq, Xn manager,
> > MMIO and reset APIs was introduced in libie. As part of it,
> > most of the existing controlq structures are renamed and
> > modified. Use those APIs in idpf and make all the necessary changes.
> > 
> > Previously for the send and receive virtchnl messages, there
> > used to be a memcpy involved in controlq code to copy the buffer
> > info passed by the send function into the controlq specific
> > buffers. There was no restriction to use automatic memory
> > in that case. The new implementation in libie removed copying
> > of the send buffer info and introduced DMA mapping of the
> > send buffer itself. To accommodate it, use dynamic memory for
> > the send buffers. In case of receive, idpf receives a page pool
> > buffer allocated by the libie and care should be taken to
> > release it after use in the idpf.
> > 
> > The changes are fairly trivial and localized, with a notable exception
> > being the consolidation of idpf_vc_xn_shutdown and idpf_deinit_dflt_mbx
> > under the latter name. This has some additional consequences that are
> > addressed in the following patches.
> > 
> > Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >  drivers/net/ethernet/intel/idpf/Kconfig       |    1 +
> >  drivers/net/ethernet/intel/idpf/Makefile      |    2 -
> >  drivers/net/ethernet/intel/idpf/idpf.h        |   42 +-
> >  .../net/ethernet/intel/idpf/idpf_controlq.c   |  624 -------
> >  .../net/ethernet/intel/idpf/idpf_controlq.h   |  130 --
> >  .../ethernet/intel/idpf/idpf_controlq_api.h   |  177 --
> >  .../ethernet/intel/idpf/idpf_controlq_setup.c |  171 --
> >  drivers/net/ethernet/intel/idpf/idpf_dev.c    |   91 +-
> >  drivers/net/ethernet/intel/idpf/idpf_lib.c    |   49 +-
> >  drivers/net/ethernet/intel/idpf/idpf_main.c   |   87 +-
> >  drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 -
> >  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |    2 +-
> >  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   89 +-
> >  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1622 ++++++-----------
> >  .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   89 +-
> >  .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  303 ++-
> >  16 files changed, 886 insertions(+), 2613 deletions(-)
> 
> This patch is rather large.
> Is there a way it could be split up into more easily reviewable chunks?
>

I tried to divide it in a sensible way, but due to us replacing the data 
structures, coming up with the patches that build properly and do not bloat the 
diff is rather hard. What could be done relatively easily is separating 
libie_pci related changes, but they constitute a very small portion of the 
overall refactor and are rather straightforward.
 
> >  delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
> >  delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
> >  delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
> >  delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
> >  delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h
> 
> ...
> 
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> 
> ...
> 
> > @@ -2520,15 +2045,18 @@ static void idpf_finalize_ptype_lookup(struct libeth_rx_pt *ptype)
> >   */
> >  int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
> >  {
> > -	struct virtchnl2_get_ptype_info *get_ptype_info __free(kfree) = NULL;
> > -	struct virtchnl2_get_ptype_info *ptype_info __free(kfree) = NULL;
> > +	struct libie_ctlq_xn_send_params xn_params = {
> > +		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
> > +		.chnl_opcode	= VIRTCHNL2_OP_GET_PTYPE_INFO,
> > +	};
> >  	struct libeth_rx_pt *ptype_lkup __free(kfree) = NULL;
> > +	struct virtchnl2_get_ptype_info *get_ptype_info;
> >  	int max_ptype, ptypes_recvd = 0, ptype_offset;
> >  	struct idpf_adapter *adapter = vport->adapter;
> > -	struct idpf_vc_xn_params xn_params = {};
> > +	struct virtchnl2_get_ptype_info *ptype_info;
> > +	int buf_size = sizeof(*get_ptype_info);
> >  	u16 next_ptype_id = 0;
> > -	ssize_t reply_sz;
> > -	int i, j, k;
> > +	int i, j, k, err = 0;
> >  
> >  	if (vport->rx_ptype_lkup)
> >  		return 0;
> > @@ -2542,22 +2070,11 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
> >  	if (!ptype_lkup)
> >  		return -ENOMEM;
> >  
> > -	get_ptype_info = kzalloc(sizeof(*get_ptype_info), GFP_KERNEL);
> > -	if (!get_ptype_info)
> > -		return -ENOMEM;
> > -
> > -	ptype_info = kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
> > -	if (!ptype_info)
> > -		return -ENOMEM;
> > -
> > -	xn_params.vc_op = VIRTCHNL2_OP_GET_PTYPE_INFO;
> > -	xn_params.send_buf.iov_base = get_ptype_info;
> > -	xn_params.send_buf.iov_len = sizeof(*get_ptype_info);
> > -	xn_params.recv_buf.iov_base = ptype_info;
> > -	xn_params.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN;
> > -	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
> > -
> >  	while (next_ptype_id < max_ptype) {
> > +		get_ptype_info = kzalloc(buf_size, GFP_KERNEL);
> > +		if (!get_ptype_info)
> > +			return -ENOMEM;
> > +
> >  		get_ptype_info->start_ptype_id = cpu_to_le16(next_ptype_id);
> >  
> >  		if ((next_ptype_id + IDPF_RX_MAX_PTYPES_PER_BUF) > max_ptype)
> > @@ -2567,13 +2084,15 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
> >  			get_ptype_info->num_ptypes =
> >  				cpu_to_le16(IDPF_RX_MAX_PTYPES_PER_BUF);
> >  
> > -		reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
> > -		if (reply_sz < 0)
> > -			return reply_sz;
> > +		err = idpf_send_mb_msg(adapter, &xn_params, get_ptype_info,
> > +				       buf_size);
> > +		if (err)
> > +			goto free_tx_buf;
> >  
> > +		ptype_info = xn_params.recv_mem.iov_base;
> >  		ptypes_recvd += le16_to_cpu(ptype_info->num_ptypes);
> >  		if (ptypes_recvd > max_ptype)
> > -			return -EINVAL;
> 
> Should err be set to -EINVAL here?
> 
> Flagged by Smatch.
>

Yes, it should. Thanks!

> > +			goto free_rx_buf;
> >  
> >  		next_ptype_id = le16_to_cpu(get_ptype_info->start_ptype_id) +
> >  				le16_to_cpu(get_ptype_info->num_ptypes);
> > @@ -2589,8 +2108,8 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
> >  					((u8 *)ptype_info + ptype_offset);
> >  
> >  			ptype_offset += IDPF_GET_PTYPE_SIZE(ptype);
> > -			if (ptype_offset > IDPF_CTLQ_MAX_BUF_LEN)
> > -				return -EINVAL;
> > +			if (ptype_offset > LIBIE_CTLQ_MAX_BUF_LEN)
> > +				goto free_rx_buf;
> >  
> >  			/* 0xFFFF indicates end of ptypes */
> >  			if (le16_to_cpu(ptype->ptype_id_10) ==
> > @@ -2720,12 +2239,24 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
> >  
> >  			idpf_finalize_ptype_lookup(&ptype_lkup[k]);
> >  		}
> > +		libie_ctlq_release_rx_buf(adapter->arq,
> > +					  &xn_params.recv_mem);
> > +		if (libie_cp_can_send_onstack(buf_size))
> > +			kfree(get_ptype_info);
> >  	}
> >  
> >  out:
> >  	vport->rx_ptype_lkup = no_free_ptr(ptype_lkup);
> >  
> >  	return 0;
> > +
> > +free_rx_buf:
> > +	libie_ctlq_release_rx_buf(adapter->arq, &xn_params.recv_mem);
> > +free_tx_buf:
> > +	if (libie_cp_can_send_onstack(buf_size))
> > +		kfree(get_ptype_info);
> > +
> > +	return err;
> >  }
> >  
> >  /**
> 
> ...
