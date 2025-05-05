Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EAAAA8B48
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 May 2025 05:24:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D201A40674;
	Mon,  5 May 2025 03:24:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZjKuAG3yPxiY; Mon,  5 May 2025 03:24:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A52B4067C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746415447;
	bh=0xktPtV+GUFSoLkeM6KAksXLUPOykypbmi0LvhV7vkE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=td/gAdcf7F0ercLHcgRmjECOPt076Iyb/lU1c6NQFqlxf39avPfG3zlRXNp+ef8B3
	 dG6VyUDgy1UwavRu/0/R/rbFUNzJ7g6qTrAsJEXuiK9oME5SPHbEmfe3QEnwpnhx9A
	 VLZs11aHY3ow4GUYpFq6C5QJgzyAlvznQh9dUHw6tZT5j/r2qvodYJUPocU4km/yWL
	 Mfx32ObbBebe176EyPECGKHADVdCBelZL4kxjOte7Po2xLW7h6XmbL/+eonVVF7Djn
	 TlzyPqHZ6bBtTzk2Q82aX0GwvmBGn8khcZ36KEwh/PWCSy4MJKd81l+ZEVE4xnEfIH
	 o2iUcBZDU8Rcg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A52B4067C;
	Mon,  5 May 2025 03:24:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 34DA912E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 03:24:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 43F6F40468
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 03:24:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tTTS5LGdWa6I for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 May 2025 03:24:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4F5C24042A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F5C24042A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F5C24042A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 03:24:03 +0000 (UTC)
X-CSE-ConnectionGUID: v99J4z8xTJqEDcfzJzvmrg==
X-CSE-MsgGUID: aWHQQbQOR/yH63tDvhK35Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11423"; a="47896890"
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="47896890"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2025 20:24:03 -0700
X-CSE-ConnectionGUID: /K8fwN3NToCKtFm2dDMP1Q==
X-CSE-MsgGUID: ikFD9RNNQhewqgxA+IEE+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="135029092"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2025 20:24:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 4 May 2025 20:24:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 4 May 2025 20:24:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 4 May 2025 20:24:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L88aiklzD+K1fFxTds3GkknDdm4jzFVv8u4lIfMmILFGGNwg30eGSojJoyIiROy/l43f7F+pbe9SxVJWtgvt6kpH8ssmBsZqChBQpn/MwP6GudwFFzac8If7Vcj/HutwE6P5tqyCHv1WcPmJyuE3EJdmxgsJZdJYidDjARN10V9zB4RxrUbv9Atq0vXMmW0syOx+uSkVl0bDcO4ZVxdVTGBW0RQryAkS8CS9esanwKBYpwJOCM/z+bCCyAyCCsSPfapCSinMw1aJQIBePg6wlVhfOI+4JlKtdI5QUNBANV9skGwpoOxKnENzJ1x+vmM/0EMiHgUbgs4elIcgSL1ZNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0xktPtV+GUFSoLkeM6KAksXLUPOykypbmi0LvhV7vkE=;
 b=x8Z22ecFEq2MbtbQ4K6GxCiVBloLiYVUPGNAQXn9uFrbF8ijnWRq3IKd/P0VoiycVdkwHog61k48VRuL5zE780eYNFC7OH79cyB7CkXRGnZxvHzkxDuvIhmxWAqV2vNqBHF9mhK2mHRh28iOxGexAQL2VWHX+cblT63TNyLQvTVLOCuPN4QPH6HDJfpu8z5420caxP6DS1IUXswQJciY6Q2RGtTYGx1eS8JpOoY4+RSZWWVfUTbN2+j+zs1C+CcZ9IZpyvU2gNv4o1/8zQFyWui6Kf+pkqlLNaZrcByYLYLSkCEA9i1nojAFZ1bHvWg1/8gIavMzWy54hwwdcJz6hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by MW3PR11MB4747.namprd11.prod.outlook.com (2603:10b6:303:2f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.20; Mon, 5 May
 2025 03:24:00 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8699.026; Mon, 5 May 2025
 03:24:00 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: add
 link_down_events statistic
Thread-Index: AQHbrT2DOva4HzC+5ESZtlaWY7Nb3LPDfsyw
Date: Mon, 5 May 2025 03:23:59 +0000
Message-ID: <IA1PR11MB6241E6C33A6F3A4E661AD2E08B8E2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250414130007.366132-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250414130007.366132-5-martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <20250414130007.366132-5-martyna.szapar-mudlaw@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|MW3PR11MB4747:EE_
x-ms-office365-filtering-correlation-id: 64559906-6e20-4a71-be62-08dd8b844711
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?KkwtYGyYG8aMNWQNQ6tAHhDYfkCTnYuyniLggxRu0N+xC1HRkvQb9NYIlV3m?=
 =?us-ascii?Q?HxJ7/vaPIB0T+gBsNu4C+LJTvTW4QmdXkdKn+E7F3dIDnJjXIagLaeqHrqVg?=
 =?us-ascii?Q?a9IKDcBgFgkkctEuQkZM70/WRFq3wu6OKZ3HDpAZTkTWLvLaC4QvRzMIRoci?=
 =?us-ascii?Q?j0PFAIYqr8GdJByI4MGpheAA7188DgcH/hqBJx+cLNDmnZq+Zv0KGZQ6Y1ax?=
 =?us-ascii?Q?/7ctngEE/mvddtNRybDgT0rJjAbjG7REmoi9QqY9YQhkYYhfBuKsDtSUJb41?=
 =?us-ascii?Q?d0TKjymdQvFJlU9uzRcANApLmKaXZ3wMmbCr0+3GtjFZ/XlOYGo9L5DiPxYk?=
 =?us-ascii?Q?sbPK88HJQpEQ7S4Jbagd0XqxrffORklTTatEtdSHBpBWIUQLHQSSp4JoAzrI?=
 =?us-ascii?Q?RTSRiySu4a/k/OOAH/CtOt+7LtWwSHMjjed5I26QgC3DtiVYM/3DUfKsegYz?=
 =?us-ascii?Q?tk682lhSWAqo3X2jhS/P0ECYGKDpmUNJpJpBLsNTBbOJ9P74yO/fgWy56nKK?=
 =?us-ascii?Q?XFtA6THPUvdaP/tdLI9lmT2T32eaEN4GtKeZlKY17ouEcEqehZTBWjMc6h5R?=
 =?us-ascii?Q?mf36SqbliWiT5VMrRFGEzvn9pNIBQ9vJdxMlGnISL0tqW2Rv2kVLVzg6eMSa?=
 =?us-ascii?Q?5zAZhh5tzb5m52Of3x0eErY/mSX1MRAwFDzPKS/Vkb1AVCOMU5zaXA5l27EB?=
 =?us-ascii?Q?CAOqXgVySWIdfzt5vxOpOBt5KiZ7GkeY1q9J0wQWhui8+FwN05SUPeh+Iq0I?=
 =?us-ascii?Q?Nui082u9tSBKuzipYvy/ydmkYow6xbajSnDAA4Cyq7jAPqQPEV3k8acWBMCo?=
 =?us-ascii?Q?4zDJfcuyvrDlKVZ3RGLVpTPFIGDgmESAfD1UymAiQ9U7G04FPljZ9JBjEWLL?=
 =?us-ascii?Q?EpO/r4Qei6It0ckzBRN7Bgc/DxnC00c3mC+lRJ28+c1htvNWEv75YUBC5ynW?=
 =?us-ascii?Q?Qee+VcHw+v5frU10HAPDG+C+wOJ5zVZ8AUd8vbkVNUBKZRomrDFa7Z7D0mAI?=
 =?us-ascii?Q?iI3GdICqxN91fkTP6XaZSApopc0kF6gUiodmRCN9iLbzpBDOW967Z6bVAcsZ?=
 =?us-ascii?Q?GaxbCSzAtEkFAcqWN9U+mqeaqNye93jdkqu+VsU0LBIWJofRF/Wl+D/w/JPg?=
 =?us-ascii?Q?MUIGIBaFhF+cfANwTCBSx31cQAN5Oe0g3/Ghq3HPiFFJsoVU4wu5qFDpYhr0?=
 =?us-ascii?Q?RcNrs7KXERtGXBVGCQ8RHwgO1SLF73XngZTxNFS7HsuYsTctRIPWhVaS3BXG?=
 =?us-ascii?Q?VTp2PGPVm9/QScDOdXq+tMVsoBKet7B5OJGFvdXFhpbT92wg4wS4xrEkCgbj?=
 =?us-ascii?Q?iIqLsw18jXC0aqXck6gUcolxJNhib42jzcF7MbxR+9IYVnmW3L6DADEbIr4W?=
 =?us-ascii?Q?gohbjOLNLEZRRYbDQkvrUPy9De5cektdjRReghQqUWZbVuM7vXZX08I1kgLR?=
 =?us-ascii?Q?4jf8TdEt1oNIrMP+fQmHVx1XcwdMvTCaEwyyn3gqb7DlI5k0Wj/glw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Kv/Qhmqav0wlGx9hCKue6sgn7vUGa3vl/ugf8lyPYJAnlBYZPfIczqoCiPmz?=
 =?us-ascii?Q?52SM8Hk3TL1WT2obI1VUNkJJPUXs99pwYnfUImao+oXInsxW3Y7h9hbF17dH?=
 =?us-ascii?Q?hPQ4KToBBx8zDTCW6q5Ubnf2ywGaLHfXe3sIrmuVGuEDdO3ZmXqBBZjtS1p6?=
 =?us-ascii?Q?OGU312kmP06MHww8BdRguFNEBGozIypZtc50QWkpz1m/eV7Uxa+c1VMmzWn6?=
 =?us-ascii?Q?DKWnK5awg0WikjbvDVlyevpYHXxLiNUBYV6Ido5IHRIPB2JEonmHzJ71njee?=
 =?us-ascii?Q?09Rep2dS9GEilS9NMdTEIgG08wzlxlbpjXO6IKttJz5USukrg9m0TsjE0BWb?=
 =?us-ascii?Q?CTllVWv/Rj3yWfaxlos5/an6uc4slJWavbiAXwCJf1JEzz4lCX+QO6lhsjak?=
 =?us-ascii?Q?C8HcccDdh4PkZhKNCJWSoVu4G5BcJ0xXh8k7jdbuNyio8D9dk3zbrCxydwvP?=
 =?us-ascii?Q?+/OEp580VbdzENL5Q1LBhQSnwrD3c6fd9ABk6kg58ix/oUgMx+GVqruCwOob?=
 =?us-ascii?Q?qnBxVsU+oN1STAMkD1rZyiwXhxT8M1RMtYIY8Kd+EqTC9ymKbgbPXB+yt74y?=
 =?us-ascii?Q?AsMg/rc/shvx3L0q6iqt2egJYuexiVdQMS7W+zXn6rJzSqy2hs7r0Iy+6++z?=
 =?us-ascii?Q?6KCPOkJ1TLWof6BssQl+XHkw53T7dHyk9HoPSVrbFE7kDK0r8ahOKs5bOrLJ?=
 =?us-ascii?Q?cj1QXh4HKswwCvKfMeF699TRq4zeTkdEFaNRBIKp6pmHVf7SuZbCxiKUQyuU?=
 =?us-ascii?Q?rlDr8oeD4iToMX/m6fNCZF1dUB/Ro9zCmxG0JPWtBg3pUoAEpd9iDHpGAdqP?=
 =?us-ascii?Q?tHaKZ/FVDEUSW8FwIW2bThspXi7n4OLaetHvEULO0ewESUfLydhsQ/g4gsjW?=
 =?us-ascii?Q?VYekD0No7Ytl/3BIU5bdbRuoNxt8zK4849eQvH/H83UQsZ02PBk3KztD1SNU?=
 =?us-ascii?Q?5dmXaqvbLgwldXTm9nKgRStpIgA9JnWemrOzs4XNCfB3D7JZQ9H0jWXNEztE?=
 =?us-ascii?Q?80b4LkMisdz3afmRB8wM9rCzRnKJSNwK/r5YiMdhd7gw62PDBJsfi+dti6M4?=
 =?us-ascii?Q?4b8uncogO3pQfY6kYxKHuOaZXeDiO3rqumpwxSFG7GWiwIbIOak9xNnTooLY?=
 =?us-ascii?Q?0QZUIm7vyG4eJwZwsgjQfXFqvCN9mGa5eIxL2z1o/jXmyFVbxjzvYCz1wyPI?=
 =?us-ascii?Q?d3982I/eQbvRAks3oHFdIY3vSVugeZlVeyqug2b3Qv86MZdnl8wHmZyT6RP+?=
 =?us-ascii?Q?whRJQyta7o0n43GFEERsDbCvcxC4VHADXXVzIXLo0gVCK6fGLs+JDywiiEjo?=
 =?us-ascii?Q?Nh156dWkgcIwvTPy1Gfp30+X0rRJ+hkgCFakqVn1XDAR7V+x3UvP9YSVwcH9?=
 =?us-ascii?Q?xrglULsOuBw685hf1jFKvMoX7W2dV8AtLP9ABSp9HQI3lJEFggdj7+8d2w4j?=
 =?us-ascii?Q?nFsPNV1M+cb3n3f8e8MdjDZ2aBG8LS8jj3v52x/qel4Q8iSjoYZ2SzbawLmg?=
 =?us-ascii?Q?c+9fsgdXirkRBHmxdM1DS529nyBEeivW7uPfkOiJ3DSObVGdgKmYfe8R1OqK?=
 =?us-ascii?Q?49oEypeUdKs9XPpmSZ5O+gTjLTlY1OmYeXIjZDJn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64559906-6e20-4a71-be62-08dd8b844711
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2025 03:24:00.0715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: up+75oGJd2JPahzXFUYZO4lVRnxpdnu6R8D2F0wG902uF6Q4NT1hzoe2qIFQ4LRz1Ir+Ostae8OTYGyFK2njrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4747
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746415444; x=1777951444;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1Z3sYkBc4TNOpvdqcl09E8XnXmwaGX2av84TeN/zD/U=;
 b=IgV/A/FV8qvnTflBeRLckk+QV9fLkkJ+WvV5YoD6cdZRatyoQRxKVHsB
 6mOIUKvMnAliwqNteP7uhilEO99Jls2IfcSTp2jH5di7t3kSQ5swMv2+G
 Q8SpykxC3vPsFZOGso4Dz1P5mIuaLCzeLMzUKBu7s5aACY/h8HlBU01mD
 tenVBnzL3KLPICliJZN+EP8XBhKaoZq89RZv2c3z04LQJHT+Np0RUK1lX
 96ZcRv9ReWXt8Z5OTqUnC88U7h9+NiIolAbcBvDfOV5+jyDPGt0ydOC3Z
 G7ZNYgB5dDLal+Zih8fEDavD8Ut0RGE2mF49R7vJpAYmmei+f7Bxm9Fes
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IgV/A/FV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: add
 link_down_events statistic
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
artyna Szapar-Mudlaw
> Sent: 14 April 2025 18:30
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@=
linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: add link_down_eve=
nts statistic
>
> Introduce a link_down_events counter to the ice driver, incremented each =
time the link transitions from up to down.
> This counter can help diagnose issues related to link stability, such as =
port flapping or unexpected link drops.
>
> The value is exposed via ethtool's get_link_ext_stats() interface.
>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.c=
om>
> ---
> drivers/net/ethernet/intel/ice/ice.h         |  1 +
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 ++++++++++
> drivers/net/ethernet/intel/ice/ice_main.c    |  3 +++
> 3 files changed, 14 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
