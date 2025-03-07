Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A956A565E0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 11:54:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE85E80A96;
	Fri,  7 Mar 2025 10:54:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2LrlZx7cVfvE; Fri,  7 Mar 2025 10:54:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3737D80540
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741344862;
	bh=76aAoQq+T3adEc0dU/vfchGOWPo4zRXKyURqgfKhqfU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GbQqzY8wKQTHU5s9ZHExNvJHp2EpAf6cNc/clpIhIH7taND96P1UW2vUZ1lKXdMX/
	 vExmbli/Y1jPZxpDfJvzygv+QVc3lk62igBEmA2X1OtH5lwRV12x4vjZ9/iQecwJ/H
	 w5E1Wc3TS8Sc2X0f0sj2xJkUuib+O0oN2xxI5MKcWGkMF3A5d/pFuHk9SUvat5G7o+
	 rX8/SCgBYbNre3eoMOeTPhGpDPO7osTfwFzKxaOc1B4NlQPTJHZsL0rWf/HG+5Oni+
	 JOoAJQFCby8myx2iHDbkDpPx+7bpw5GIEuclb+RIooex1hlyAQn4Or5RBsPRDn5scl
	 97JL7escQEtdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3737D80540;
	Fri,  7 Mar 2025 10:54:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B324271F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F01A400F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:54:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nK2NLUyA2OaD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 10:54:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6B96140025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B96140025
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6B96140025
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:54:18 +0000 (UTC)
X-CSE-ConnectionGUID: rBgbVq0oQRaXni8dT9LKug==
X-CSE-MsgGUID: Ig/Snx8aSja+/p0tCb98zQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42301767"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42301767"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:54:10 -0800
X-CSE-ConnectionGUID: lltJrGq6R3+ztAqD12yYAA==
X-CSE-MsgGUID: iPE3R7urSp+eNMAjz5JRog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123481802"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:54:02 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 7 Mar 2025 02:54:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 7 Mar 2025 02:54:01 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 02:54:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JfcfF2Jo68G3+ZFRgQdfCCLENT6ZV7WOcq8V729yx8vHJhFdRsPrwaQ/jfi2KA7mY4x3ELTKU7y/FZlGjRY5i399txKXHEzw3b5a0OkhfmTbx6k5GKTE3Eq0dorORRuB1G0mfzgcQ4AibOhImSuin95b1+ceZceEobfgTgYOOCr0BFyfYlrZ86z7aWpzL6TuTEmzy9KWe7TI4+VyEFIsVsYUExK0KwikIJqHFgIWJ3679EOgec+lKtcDg9tQkz6wlDtYnyskNS+7cxYLthIpwRo1m47OtrjReAfWSViPwbSlP97h/Nyx3WwvhldKvGPKSpVZYCJEG/S19pSX1JGWWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=76aAoQq+T3adEc0dU/vfchGOWPo4zRXKyURqgfKhqfU=;
 b=A41270Q+wfD+KoFoOVuhLnsCK7+UkA9hf9CLhnt8dJLv7ZRLVfBYdiH/i+MmI7y1H3k7cx3PYSu+MXpLZjhhs7j2xRUBwYkuCmDiIiuHz4lIHNQtBvo4D3jCqzKs0Hu6ytVBp1HoyPJ5KVzukmlEhXxX0WjsKaQWQecsr0eVx48H1uBhfHZZbrx5ax7l1HhTDxbQesxa74DSONpDNdgLTMbPpms8/9tEJl+fM0J1XswPxHjoh5L2yE7uBfZaN4LTQ6fLKZzqLsbW2rKIN5FKjb8W+UWHI5ahh9EJokwZHjYczICXcHZ0aUWJWF/LZeFBxMzBnJq4A4lh4qodPs6wvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by SA2PR11MB5034.namprd11.prod.outlook.com (2603:10b6:806:f8::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Fri, 7 Mar
 2025 10:53:56 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%4]) with mapi id 15.20.8511.017; Fri, 7 Mar 2025
 10:53:56 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "andrew@lunn.ch" <andrew@lunn.ch>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 3/4] ixgbe: apply different
 rules for setting FC on E610
Thread-Index: AQHbjDa1ygl9oV2vrEGOSa6ALtXBgLNnhdDg
Date: Fri, 7 Mar 2025 10:53:56 +0000
Message-ID: <PH8PR11MB79654F88402A6B9D2BD05863F7D52@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250303120630.226353-1-jedrzej.jagielski@intel.com>
 <20250303120630.226353-4-jedrzej.jagielski@intel.com>
In-Reply-To: <20250303120630.226353-4-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|SA2PR11MB5034:EE_
x-ms-office365-filtering-correlation-id: 7ee74bdf-b821-4f0a-064d-08dd5d665bbb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?3FVg6UsoXGIoBU3qv52vnD8HMk/z6eKPO3Weqlzf/mGBEq2JzILqDqzgpzZu?=
 =?us-ascii?Q?7xiPhBHD+5SLIn+sqOwEs5kZ4x6p72xaqn9Kg7Pfdg2Yjk2krYoShhzMxnAl?=
 =?us-ascii?Q?C49p6tCd19jwbqo906EJHj5bJQxGPBYfC4YWfW+XpZuBOfqI2YBzYt6540CL?=
 =?us-ascii?Q?lgxznUQ9vDGkPQqk+8Wrg+81wwKvNX6agbKOXlcxlteRSoSOL+i0V1G+WQgg?=
 =?us-ascii?Q?bDoNTEtwEobChsmohjeS8QI1DHOcEYAL/r5Xqe2cdjwfGYynA+5d2ZAyr5s8?=
 =?us-ascii?Q?RSqK7G5suqkxjDPtYcJu9ZkaUiXoLxEMuVGu/0EZWFuQK8c5skO5mfV3rjXv?=
 =?us-ascii?Q?/U9kLl5h84+H0S1Y52mOzd/5X9blgNrMr6waQBBM7JT2EqHAarvaW2vk/Zcb?=
 =?us-ascii?Q?ybiIpG49fGZiJvGrFkdFVC2yNYGd06PX+bdTHJQWP/+27NSflPZweEHBCCqt?=
 =?us-ascii?Q?J6MApuORqIqwywUfz1NpdIq6BI5nfSp1YaFROObdtIK+3z5GrJuFuMm5/NcG?=
 =?us-ascii?Q?r287iYQ3p/7BzWm5sOLf4qEbr2ILHEeEBWrx5CzjtqntW+KzoPXTXQdsju+3?=
 =?us-ascii?Q?Qq9Bs8U7IRm5apYCNGoHOfHdQK5biyZJYzNB9sZT4T84aZBPWMDA/3LET+Mn?=
 =?us-ascii?Q?KWuuhh0eMNs0C00fbYUbKFq/B6OIfJrV0O/KokGQ8Wiaaqq87Vd2krtHof4N?=
 =?us-ascii?Q?PnAvjX5CZub2VqwSK4wJMJsGs0xJE6hPON/0EPGpk0PLudFoxfoCHS6kMaVT?=
 =?us-ascii?Q?AWSnoiVL2F13Pgaqvces8kyH6/yS8lu4YAfo8J6vQHYjDB/Dd8DhBktb4Frp?=
 =?us-ascii?Q?Mv1dSAbHarQYStiTwPFDXpTXdKhiDS88YW8A52UEZtDDSYIVf7KDja6xPstK?=
 =?us-ascii?Q?RwYCJ5RtiYBv7uQiKWrDDwplJPEKxgJHUEJdiC0/kwwWFWt1CosWfa5hXESK?=
 =?us-ascii?Q?zxe0OLawAeve/l8jIzGST+HkgPqa484+62I8ej9badgc+f6o1aqi09EJi8yw?=
 =?us-ascii?Q?yQMPUpoydcA+BwpFJ4+S3dUG+qKnHa5cOGn6vJQK6ju9BKZq4JVGIObXIIrl?=
 =?us-ascii?Q?qgMlW4s4+YLp/CitjgG1KC4U7na6QFcV0dUWbTyejoHJEMhbMNERmpmJzlKX?=
 =?us-ascii?Q?Hi81wn9rkzCUnahTTq5J9Uf0bBxYtOKesVE0hhNguIF03cabDTw39epZiujY?=
 =?us-ascii?Q?97Q6XOkpj9l9LeHYiZZ1XxHV/QEWXeFkmAnFjYRo1Kf6KJiGb08C9quJQlrP?=
 =?us-ascii?Q?QhXfRSHrSljOJUtEvH0crDex2OuU/Ko3mN9ziSS8Lk+GGWHIAha4nK4cg4zW?=
 =?us-ascii?Q?/3R5rQVnZZnLgDKtemnce/qqlNnIO/+M3cYTryjSWPv9d/fUR9AJmCLLFreG?=
 =?us-ascii?Q?IWsqK2jMf5/YhuvIOMWFCO38rAzldIHI2N/NwnE7bqP7um0nPCro5e20YW/y?=
 =?us-ascii?Q?NyVRbzLXwYIhgw983j3PcTNzjO3ZXMB2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Zjsh8bZp8vLj3foyeKVAMxjYPcx8/5a1dlZePNfCWTF1ymjaVGc0jJP2u7FJ?=
 =?us-ascii?Q?2Y9PgUtoirsdhZXdkTbNEbjgbNUXhl5uFzN/DRKRT59HbFhpzSrh3iXOg4zm?=
 =?us-ascii?Q?XiVNUlCEQ7y+enH/BxkwYXJ972Pz5MREEKanws/ajdMYXduibA5C5Q4GnA3/?=
 =?us-ascii?Q?sMxGeYTXnwsoj5864HzWDeKmz7rjZL4cUbu0Mc2IGcxRkd2IcbYZQSChqs0B?=
 =?us-ascii?Q?LxidU47/fLUXc9XydW6ghIurHHB8kjoXnMKuGJlnfCBnqbqn85hMp/WVBmCJ?=
 =?us-ascii?Q?5n+KAhL0V4XUDpIbEyw0pWQfjIdDLLSQEof9CJhTYg/tYqegjhcjLgRYlzye?=
 =?us-ascii?Q?cv+S6o3o+cljSDdAVZExBij8nd/A086OWGalADYgz5MFvDJdi234wwaUPRP/?=
 =?us-ascii?Q?QwQLqWOz+HrukAd5PusBFHcui1cScwEFY+q48u/zTa+HgFHwH06TfrVNV9Xg?=
 =?us-ascii?Q?sEs9Eqw/44FYb/jcHh5NSav0lJnnqD+TfZtyle1P4WGnnBjb4kYfsYEiVyvs?=
 =?us-ascii?Q?khJJTTtHKmXkJF/34MvuTqlMpJdUDHS2QnTkuZmoi6CrzOhuH97uIaELExTm?=
 =?us-ascii?Q?kJjCNHolXBbdZq/1F29oCozUFsnUWuDm6yoVhCPhDcuF9oiTXupkpQ9ROFGT?=
 =?us-ascii?Q?gU0e1GwJ5OjMrxvUBbcD+hG9vNCL709WUWAYSqb/RdqWjWZ35f22o6hx69+g?=
 =?us-ascii?Q?00lVLO3O50Ra86xDBS06WLLy4LLmHpUCy4ORdlEMNMHHxVH+n49xiGdSE6EJ?=
 =?us-ascii?Q?68OXW4EYgyOlzhgNZtfS9DcX04pvLg9vwnS8mSdi5KX55apVM3VaWBl0uBLY?=
 =?us-ascii?Q?nxnKDA88kxFnRJSJtmyznHI/WtPpmRsv5NWI1i5l6FvGzNcGdHFH/aK52QCo?=
 =?us-ascii?Q?dqqye30Aa7DVDvX2La0Cn7xLAecr0uo3N9WfKwy3PKUgLf+u6qkXuU2nvQgp?=
 =?us-ascii?Q?VGIVEb998eAR6qVU3EQH1gzxCinLaZteejoCEp4vMgFdh7lSgSguzLTP/q5b?=
 =?us-ascii?Q?ZFb0ID0eC9KuBAfww2GB3HakQZtA+WtaOg9O+CPLHyDW58Lw9JPQvi+91/pt?=
 =?us-ascii?Q?L+2xcZxrmp9lU94UEGX5gRl0fZDxkhp4plh0VM5n7Pm7knHemS7AY2995k7F?=
 =?us-ascii?Q?wffn++8dbRDLQ1OV+pGw9o0FN11KrScH9MOnXhF65h+t9IN292u4jP0qDYSD?=
 =?us-ascii?Q?fO0BglDkoUUx26xdMeuqDm3s6DBncBY4S3FqRYGmMRM4Ek2atZ4m4iR4aHhz?=
 =?us-ascii?Q?nRmAhfOuyWCYyu3ixBlTd1LNhEosIA/9aYlV+3TglFq1Eh268djQmgnq21+E?=
 =?us-ascii?Q?rwygSsGYK84rE6uKUhA+VViqB058i029Gl9Do5jDup5QlKYkm5hNbZVJ8LLZ?=
 =?us-ascii?Q?m8A8gg6warziha5FblN8PYgO6QCqonVKwcNQS5+rizUeCHW1JhKqphR0d51P?=
 =?us-ascii?Q?vem6m+gdiNTGJ3/pAUlHd5Ja9HPEk6sBH21aVjeXcjtIrxOOIdD++VF/IFp+?=
 =?us-ascii?Q?LCYHiDM2f0no+OmFqRiSaaSVm+tNGQbVGMURqgVgI0ZbuUlyCoOIzEczqwTO?=
 =?us-ascii?Q?zUJTxXUCfmkTsJVbZnc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ee74bdf-b821-4f0a-064d-08dd5d665bbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2025 10:53:56.2943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OY3KXL//QF8nGvkNwOwMgSHJH3lGgF51Z4/LavGRIPcDLliluVW1naZoTkkA6AXYFD5LXTVOu/q+luO0skw+ZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5034
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741344858; x=1772880858;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uxTQGZd1HchnVxCO2syWZ6IAznDH4qucGnVXv1M+p+U=;
 b=l5jIP0YoyGZBrx024uLd3tgTDwD2EHI1CJn0Itlr+ItjN8O83QTauQTx
 VS7gK2l3yp0aVNm49hvUvSjQEFFSonwh/OSTvifZPLm0V9VwL2OfsVZwV
 C6/EZFzt+AP6zYeJBaxxm3tXKMG/causmJblX51OmZQo7h2Fiyt6hbmVa
 SMDxN74NPIbn28KAKFH9pZJlfdRWY6Aus1Yt6PBCM5IYb3yc7XPE18UJW
 KlOvtRhyLKGK1/qf1L3ECqXUQZuC0DCPIBzm4V3OpmFeedhdlUsInRjFv
 GOOew/z0d9A0YW0+HRoctT+4QVAfDa/7pjmS9pwHMnrfH9WSN5Nm8OzQQ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l5jIP0Yo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/4] ixgbe: apply
 different rules for setting FC on E610
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
> Sent: Monday, March 3, 2025 5:36 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; andrew@lunn.ch; pmenzel@molgen.mpg.de;
> Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/4] ixgbe: apply different=
 rules
> for setting FC on E610
>=20
> E610 device doesn't support disabling FC autonegotiation.
>=20
> Create dedicated E610 .set_pauseparam() implementation and assign it to
> ixgbe_ethtool_ops_e610.
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 57 ++++++++++++++++---
>  1 file changed, 49 insertions(+), 8 deletions(-)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
