Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6384594B4F5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 04:17:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15C168164B;
	Thu,  8 Aug 2024 02:17:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3lIx8ShQRCkr; Thu,  8 Aug 2024 02:17:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7EBA8169A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723083462;
	bh=D1+sJ2pvxRe11njFYxhoTQIamSKUBIBb/VwXxytfFRg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6rq87X66lTqsPD/PMYrGyqgGPAQYTtyyQChm6rgiDWcXwoD+c3XbyQtGLAQHrAfBN
	 PoX5Qhb3TF3HmHSCtOY/hJU21cDHCI8t7lzZO0YhAt5RPI+reOxO1d/yzz66eEnE9e
	 i1I1Jh/0UTLn8lOYF3/lbFtCUYTzuTy9ai3+ayz4/GYQKqjtCRgi23gGwrd+cnHi7Y
	 bl9wDm9RUAMLmdPB6zZlHGCCOksHD7H3XSX+u393tlHrH7RK4qrhBB15YC0ClP2oAr
	 8dZaY6Dg3+FgvCfWgy61/aLKCyNWCC6b+kvTNBENzDtN1tFQeaGN1W9qFxB1oCLP8F
	 6oU5376PUF0HQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7EBA8169A;
	Thu,  8 Aug 2024 02:17:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8744C1BF32D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 02:17:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 72C17403CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 02:17:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I0u20RPS5Rrd for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 02:17:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4F206400F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F206400F5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F206400F5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 02:17:37 +0000 (UTC)
X-CSE-ConnectionGUID: g6ppTsOUTKCB8dgffdk0Nw==
X-CSE-MsgGUID: 04IlAgg3Sty/OqvoscpFYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="38645553"
X-IronPort-AV: E=Sophos;i="6.09,271,1716274800"; d="scan'208";a="38645553"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 19:17:38 -0700
X-CSE-ConnectionGUID: 7co/DJuwSq2G1HJ5WPRXrQ==
X-CSE-MsgGUID: 3M7kTuy0R1q1Q9nfShdn+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,271,1716274800"; d="scan'208";a="61469055"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Aug 2024 19:17:37 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 19:17:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 19:17:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 7 Aug 2024 19:17:36 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 7 Aug 2024 19:17:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=amR4zmBW67OFPHoVyuUDRW+hMhdGxNVBnUxtU5vYpwk4fYQjxavTYdyLIjywSStJ/qDQZXStIQ1DOFb1vk+rc+dkUhTiQciOFrgzFizhGk3RMOH6zrm3hbmM2ed+uAoEQ6qwR50Wd6fUS4+L/hoab8ZjnNQ5aG4i/rHvfqNSLI/aOJaCfHAURN33MkTNTt32oY/jeJM+6QF9mb7EcnNlhiL/4enYqkKycK8yTUCdL/P70zoxUfpYkkQ2iJ5aLnAaPv+cCrizDchmK0Nyby9Qfen7pT0r1YW+MBHD+JU5/jCE+r9/eksLt230U8u3Q9HHkeNJ4ZQ1A6sNpT2/KwM8ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D1+sJ2pvxRe11njFYxhoTQIamSKUBIBb/VwXxytfFRg=;
 b=ViPkDjI5wbe3FSAdLOf/H5wMYRTCK9BUx26s2Xi43QbXnBIK+DcGWh4PcxrqlvTj7vfyIOj8uTnT1aBuNaod1jlJWd2gnFw52rf6oPvAKwbII93WzTS4XeA1JpEG22CtPra3Ok5kS4BofTaWA7dErI42QTEmMBbyna7HcwGCrsoxL7J8cXJG9ZOhGDR1mrvWs08UhUwAU+uksB5Ia1iJX/B4pDgbmbU8hMjeVI33Ky9aAVdLeMz2iW6y7kw/ZgB9GCucFe8zaXHKFrJmKi0+qYhndhnah8OvE1I4IbaPLZ4AkDhLZc27WkuZcLytcDc8pqD4ff2lHkDASYdir6/yxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by SA0PR11MB4621.namprd11.prod.outlook.com (2603:10b6:806:72::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23; Thu, 8 Aug
 2024 02:17:33 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3%5]) with mapi id 15.20.7828.024; Thu, 8 Aug 2024
 02:17:33 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 5/6] ice: remove
 ICE_CFG_BUSY locking from AF_XDP code
Thread-Index: AQHa3erd4XBjYsBqWkmK+Vg7s4CeOLIctjiQ
Date: Thu, 8 Aug 2024 02:17:33 +0000
Message-ID: <CH3PR11MB8313BD787514A71C6A2E39D1EAB92@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20240724164840.2536605-1-larysa.zaremba@intel.com>
 <20240724164840.2536605-6-larysa.zaremba@intel.com>
In-Reply-To: <20240724164840.2536605-6-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|SA0PR11MB4621:EE_
x-ms-office365-filtering-correlation-id: 58772a4b-5a5e-44ce-26b7-08dcb7504353
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?N2+zGEpQKrLNLkUPgigMxotLTv3uPflp+F14rhKmxEETPIZmn6t53MXaTKqE?=
 =?us-ascii?Q?VClM6mx5qc/y2U0xFQgNCkxhoN2SDcagYazF21Cyj90/aaazAOVborQNALOX?=
 =?us-ascii?Q?O45Mfpqc8nG3Zu+xLU9D8FecFNPWl/eDnIdwLltcvmuELOuKdPyG5/K6icMx?=
 =?us-ascii?Q?qRJgNParpsEbCJJvWxxgUcKv1dNv+2dnmS6HnY5O38ielF2KQ1xuTX63vgB1?=
 =?us-ascii?Q?gvnpOsW5DdEHDT6hsBvC1dTn0Bk9RYOUodCsDW8+Eh8X4H4Zws3XopDYjYPA?=
 =?us-ascii?Q?R7PEv8u3AD0lSsv0mdODYca4MZdDAHB9AB30kbswrk6U/yGCWX2vwhfERhbX?=
 =?us-ascii?Q?B5Gi18P5aSJYWxoSYiX1pfkzelQ2sA2jZJ2d0LR6aFbS6Q+H/LdyxgZafgT+?=
 =?us-ascii?Q?jR0twti1Sd4pGjk90scMxEZNOR4ddEKPGAy7LdbWjx0u2e5NCPGQsIquiA/C?=
 =?us-ascii?Q?/uhd56rlWrXVEXZchxkCVwyzTIprkhmWr8tShKK+GreigihioY/ZvbQtGFVf?=
 =?us-ascii?Q?ypyaJrBmD8Z3gsKdw8A9faQFEVKKPjUuPHMpMYde3jloUFE+QGEGbFw+Np4B?=
 =?us-ascii?Q?lpnFR+LsgcdR8k/q/KOSxnZCf7WIedQgaHV7qXYdR8ds2eu8rCq8VCQVlOyr?=
 =?us-ascii?Q?t80s1mwEUIAbZARdEmJzohLorfUaYGZbkdbi807g7txmsq1brU3m2KFwiQ4Z?=
 =?us-ascii?Q?5wXRfhKj865BEkfz8nQGZnANHXFXZlF4Jxfi59cQjWVXBVc06wTs+vX4oUKa?=
 =?us-ascii?Q?IizzJb7watucloDk6XRHzPdScdFQ0vwHavoTFQhhedjxwB0P+55uSgLukurJ?=
 =?us-ascii?Q?w52Ib0hG6eV6O2GBPk3TifgmlX1psG8p5e/ORE8TikhF275aVS3vmN0sKhGm?=
 =?us-ascii?Q?AqUHl62tT42ViqCRsLbAmFgJDuy+S/yV7PEmlkhZA4VWIJou45y/f16NyWZx?=
 =?us-ascii?Q?KHN3vBgWysmf8VyHyT3OYk9B4dwm09tycgIECX2srUp6wibx9RUub3sB2L6K?=
 =?us-ascii?Q?B/AF3GkDz1F60k8A7/UzAf7o7wf8cUTqv3+0mcYg0ozF2snAuKkMBAPbpD3k?=
 =?us-ascii?Q?XCbBKBFIO4ZhhSUcVg7EUejPBysZk3ss+agc5lFTRb5nsLQxbrR8CXkbKHsy?=
 =?us-ascii?Q?Jcw4bFWxXY6eqUsHsLigiZYyL85lzIBPKqqbK0bIN7BpLc+DYh0HU2j1QmZb?=
 =?us-ascii?Q?T7iQEdPhFNJzCoatAROXvT/1SvbOD9PmqBlYVFLwa5F03tPDBNamrH6JZpmN?=
 =?us-ascii?Q?2LdXBIiKpvZ79kuugKqDWiwd6DSUExliZkvjzshfPkI7i+ldbkb/LO++vXuD?=
 =?us-ascii?Q?mLKianrTvygvvYUTjQyx4pe0MSA+6HBJWfGMV/VBueVrJMlweRDD8P8F2hYf?=
 =?us-ascii?Q?zQWx4GleqxTSFK6l1IO6Yo8+SpbV/QVf/h0Teut7ArZt4KG2pw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?z6Gof9gaBcn7Nace9vIR5gf1sc5rUeSJJzSBU2PiJ+eP6HKdS3DcUHssW6M9?=
 =?us-ascii?Q?HW904FTv9+WfKapee4gvCiFZici82T0TxiGLg/8xiOFW9woFdNxgPxCXdCMo?=
 =?us-ascii?Q?MtJFLEwXdw64FZ9IgRmDBmXBcxFtApo4nx2TDbYrSprWdwRu91CgJc+3jNMv?=
 =?us-ascii?Q?LKNq0HLJLNsdY/b9UF7K9465/XtctNckND5YwIuaPK7/B9l/GhHaJpbvaNhk?=
 =?us-ascii?Q?qM4okRYAvkODdVx5YF/3NLyYIFRYzsfDoH7yx+TYKvHKrpjOTQ2YgoPTEFPH?=
 =?us-ascii?Q?TPiQ0WOI7Etwe71m++ChnErbTVj4SXlvz3foAxq/EpM8NviGq3WHS/IOAGdq?=
 =?us-ascii?Q?MTGtn3buxUhNglGTtBj5zYsLAHD6MAyJoJWs8IOARn1tQD9IanWZltvyKwqp?=
 =?us-ascii?Q?SL+hphEfCbAtFBohnm2Pm+wzd8R3ddqGcHFaiVlUvZjiM+ZeYSdQ9LWmcyQy?=
 =?us-ascii?Q?oWAbbcv7EYUIcRPhcAb4nUxm5H1JHD0nD+RrFBee6wwspo2e4gOzjCAm7Fdo?=
 =?us-ascii?Q?WXrQlQvZeqtJfohT5cy1EfPMc9eoMxQ3xyvoXltH0kgJ+a8dpstlhKEn5tHR?=
 =?us-ascii?Q?cl3NnzjR04Ake/FhjiGdpB1CPLwUjSithe31z75Pwg9bdyKciKlpdDjZPgyc?=
 =?us-ascii?Q?6PRIoVT0hyPrb7Sd6a3N6ruMVeBvbCiyHIjxCXz5nKcSALYRdgpe9HDt9MQv?=
 =?us-ascii?Q?QLYB0liEXWPrr0RpciMaKH1W0YcwmBoZ4FeoKz5F/lD2nKR03dBSUED1vWpJ?=
 =?us-ascii?Q?/dnCS52M0h3MpZiN8ZOyOh3Do9Q8Om5Q1GMe2MQj2M7/3I/wA/zRiImd/RZE?=
 =?us-ascii?Q?e7S1rURiQyE66vus7sSLt4Jo8UQM9c4i3CxQGYnGi8rugs1VH77O95YlRywg?=
 =?us-ascii?Q?g0MvZDF7TRIoi+aYEbC92W39E9dMTnGpH01GPghDUH9nktKhhwsUlHz21kck?=
 =?us-ascii?Q?28UXacDiOgzUSmi1nRUqKOY74rSYepPWCUxCkXWKT5GVcMdwPXUvxJDMbkdM?=
 =?us-ascii?Q?xsJJ2hJwzu+0N/ws3NARM810W0ogfBo++XWdE2wKtTO/K1GEsf0ql6Q3K2Ba?=
 =?us-ascii?Q?7II4NKiiEYCK/07bHKvm1aSq1L6QjOVQYCuNDeroG8gECk2QJVE4aHA6orW5?=
 =?us-ascii?Q?l8TjoNAVEQ4PC5bJtk8DrbEMQ/EYKqXtADDqejVXMETNQIhYVmgLkIIrAlZI?=
 =?us-ascii?Q?AmgJur/DWeWkfv/ai0ipTYU0G+VorOQFrFbNV7ZBighZ2qiK7QkV8ln4EL+g?=
 =?us-ascii?Q?bOcC5Qz18b+M5e0ErboKhb4yWUnEw0tdcHAYRs/uvZHvtB4tY9/Iuw/1vhdi?=
 =?us-ascii?Q?tzdEeg75y8g21DUtNfnfEt5wnDhmWzdZWNrXTmCNrMqsgyOgEKlgP6q9nYT9?=
 =?us-ascii?Q?c+WebdtFQ4vaCZy8eecsmt7KyQpHGNDALbwpmWhx26Fdk7nUSUj+oQaBUhsV?=
 =?us-ascii?Q?GuumBvkamIgiEkT7qmfFBL4NLVZqq0oKC0iHcTfP5pwR4n2E54SFzEQLRp7C?=
 =?us-ascii?Q?ARPmCc82aTSJupg2vdy4AwULweUK2meOiAkC0RV+SrtE+Qzvb2/qa2V7UBKh?=
 =?us-ascii?Q?VCdFDofRCBnow6xyUUodsXQPTzeMXRqQc0/M0S/v?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58772a4b-5a5e-44ce-26b7-08dcb7504353
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2024 02:17:33.3965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2MpOtYmRKa0UtmIpxiK8Fu8RFNyb7SL1r9Bq4gU7xp12ciKQTDRn9pecZmu98I83ClpJK1WrABJQMj72HjBRuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4621
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723083459; x=1754619459;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D1+sJ2pvxRe11njFYxhoTQIamSKUBIBb/VwXxytfFRg=;
 b=ghCsd/aoYgQzmdFR4lIG2KYAJsYKOtiFXAVSC6W/3p+j0SbJKe8CtYak
 moAOVH+9GQPZEK6WX3TLOVIFtd5wtg7GAEeITzFezeYlL55PExlBbSw7k
 ooIEbdEqG1WlKKk8iXKyVdOF6Q7tSgXIC0IOA6KBnOMF99p41+Zc/x5rW
 42NICoV5gzkqcYkSUUFmX7IvY/6I8mPShpBd32KlT9se3d32c26GDF4/u
 AXtNZtvxecfZigLk8S2tBG/KoBAounkPFJCR5D7Py0GnK/7zS9adE5JO1
 EQxZP2rMexS7rkg4NcjLtGdVAo0M2sqfSPlbt+BO/3/2RXkaabdY5tIXB
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ghCsd/ao
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 5/6] ice: remove
 ICE_CFG_BUSY locking from AF_XDP code
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Kubiak, 
 Michal" <michal.kubiak@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "Nambiar, Amritha" <amritha.nambiar@intel.com>, "Karlsson, 
 Magnus" <magnus.karlsson@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Zaremba, Larysa
>Sent: Wednesday, July 24, 2024 10:19 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Fijalkowski, Maciej
><maciej.fijalkowski@intel.com>; Jesper Dangaard Brouer <hawk@kernel.org>;
>Daniel Borkmann <daniel@iogearbox.net>; Zaremba, Larysa
><larysa.zaremba@intel.com>; netdev@vger.kernel.org; John Fastabend
><john.fastabend@gmail.com>; Alexei Starovoitov <ast@kernel.org>; linux-
>kernel@vger.kernel.org; Eric Dumazet <edumazet@google.com>; Kubiak,
>Michal <michal.kubiak@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Nambiar, Amritha
><amritha.nambiar@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
>Jakub Kicinski <kuba@kernel.org>; bpf@vger.kernel.org; Paolo Abeni
><pabeni@redhat.com>; David S. Miller <davem@davemloft.net>; Karlsson,
>Magnus <magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH iwl-net v2 5/6] ice: remove ICE_CFG_BUSY
>locking from AF_XDP code
>
>Locking used in ice_qp_ena() and ice_qp_dis() does pretty much nothing,
>because ICE_CFG_BUSY is a state flag that is supposed to be set in a PF st=
ate,
>not VSI one. Therefore it does not protect the queue pair from e.g. reset.
>
>Despite being useless, it still can deadlock the unfortunate functions tha=
t have
>fell into the same ICE_CFG_BUSY-VSI trap. This happens if ice_qp_ena retur=
ns
>an error.
>
>Remove ICE_CFG_BUSY locking from ice_qp_dis() and ice_qp_ena().
>
>Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
>Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_xsk.c | 9 ---------
> 1 file changed, 9 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

