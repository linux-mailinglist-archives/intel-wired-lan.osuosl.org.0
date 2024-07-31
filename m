Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDBE942550
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2024 06:18:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C93F813FF;
	Wed, 31 Jul 2024 04:18:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PxRwo9zAOaYw; Wed, 31 Jul 2024 04:18:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99477813F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722399517;
	bh=UHTVsXdu/pjn8ZBSwBRNe2Yq8fzhDa2AbNYwy2mL6fU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cmI+ACdd7wxCdjC8HJHX06xFMw1GnVWRLzk2IbNOv5jkdbBME6o/W/05SaVK+7XB/
	 UF/AbWtO7098J+4U6GFoJwOA+tfJBUKomsmMJfaDsabISD24OuDfQ7w3bh0Tq6rjJ6
	 w2rOxkbp37+GuCqWMjHe3x47971JNv82dIEUjPMpMnhRz+eIFnZowovU2Jut+8DMst
	 RI7nIMIwijXGGWp+3mZaaUVOjHBGFHksCe4IpU+7cHk2bVhraL6Ibu44CH6yZfj3FV
	 EUKxJ2AHKHfx5nLqE+HZCQ1s2zKzL1O86DVaYjbCndwyDWJdD2PBOR2HY8GjrsrFnz
	 HqrbrOt0CEy7A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99477813F8;
	Wed, 31 Jul 2024 04:18:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E9A441BF589
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 04:18:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D5A2440160
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 04:18:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kLOEGdC8pBdY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2024 04:18:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 226974012D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 226974012D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 226974012D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 04:18:33 +0000 (UTC)
X-CSE-ConnectionGUID: aQ3NUOTWQ223iJLbIa0E+A==
X-CSE-MsgGUID: gpyaWMIISWSUfepWqJdYOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="20202833"
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="20202833"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 21:18:31 -0700
X-CSE-ConnectionGUID: 6BS4zOr0Sl+ag2hFm3ahbA==
X-CSE-MsgGUID: ealZX395Q+mcSzPa4oBJkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="54548214"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 21:18:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 21:18:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 21:18:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 21:18:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GGCFHSKB04PWXi7zIZQHTq64YoT3yFygNTMBRxhww+hmHamxJegGk22HF4q/K0xD2C5KoXvrV/8XBBllYIH+jQ8oQU2mLL3bYVqIrO4rlUn6+H1lUSbJkFoOQowzN2JTnMXspd1PHtAP7ng6CN0ExW7RQUT43LAzjrBQSk3/1C8ebaCPZ07Ty0Fyl9XZG4PS3T1ctjke6Gf4afZgFpYRQqaqP2bs3E675rCbv3/MeThjjOx2a64q0TPKQFIDab0a0nJfgs4eVt/OO+BiwwSCigfi/ZFTQjpBp7Cvoid+b0kqCtAvd37eGblJ6pPSDdC5s0YqYqOYmdbTulDptioafg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UHTVsXdu/pjn8ZBSwBRNe2Yq8fzhDa2AbNYwy2mL6fU=;
 b=Ht6H/r9ZOFkxd4Vzd8gDNuhPhIzjQK3ecxL1Aj+whDTTzKOzZNvYZ48EGpZWrJvxnE3BK4PIvrigGfGS2draZuxiu0+qX2T0Y7ZhPSeeWRy21EnP9LoB5XJ9E2JcDVf2RT6xB+2JG/482Ns8VbJ5lC+KZ9j7kQt91RVT3KucmRdY1b0C/6GqyZWksCWM+yrEIEeKllyDEt0SMn075P+1976byT91YuR/0Af+iCj5j7wY+4TchTkys+4Ohex70yu+gaeIIPVwEwTcjz1ZxUpxU0mP52SLsCkLr4kGBDziR+673u4pNbC/aEZjLn8GGeQ8XPvRXVGRoaHLO/go8igTPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by BL1PR11MB5285.namprd11.prod.outlook.com (2603:10b6:208:309::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Wed, 31 Jul
 2024 04:18:26 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7828.016; Wed, 31 Jul 2024
 04:18:26 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix incorrect assigns
 of FEC counts
Thread-Index: AQHa30cUpvW15EouXkuRnWpll5rKe7IQQoug
Date: Wed, 31 Jul 2024 04:18:26 +0000
Message-ID: <CYYPR11MB8429FCE9FF876ED7AB2ABF02BDB12@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240726101928.21674-1-mateusz.polchlopek@intel.com>
In-Reply-To: <20240726101928.21674-1-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|BL1PR11MB5285:EE_
x-ms-office365-filtering-correlation-id: 75b2daf4-a6ca-4adb-23c4-08dcb117d2fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?6NYskO+A9txNFDK+hAzxnJcbmp3i8oZBTQFUpKJytWXCEKBx07hGFUC/fIFl?=
 =?us-ascii?Q?bO5IG66XQiodHho/32PfRjbjQnlMAKIG6Ewjk5bR4VYo0wBfQuwgiH5YVDfF?=
 =?us-ascii?Q?HmbVo0rePmywmOYzfxG53kffeZspVR7dEz0AblM0Psva3WrC6Z9n5ZVThq5/?=
 =?us-ascii?Q?y+KXNK36YpHosURDJL1gWO8MDr5skT2rTxCCa2atRrpi50PyTjoEOAM0bnaC?=
 =?us-ascii?Q?hwJiOnEckTJgXxibPLMaqq8c+Ldkr79s8ksBbIMQXeLK9+FvE/ck+6XDDSW2?=
 =?us-ascii?Q?lX8MpeHseUkaUFMvYJufPPuHAI1KBjcUi36nxWMyhHCuxklWmhVJaNc6t7bW?=
 =?us-ascii?Q?9HYr72dXrx4p7kB2TGyKgKt+a6nXJbtDfe/iAbQbS6+XB3FvCGSnhfR8MEIN?=
 =?us-ascii?Q?/1BlyUYsOc3Fw1jOJ6yY5hZxFU94X9/XmRq/3IR8viBDIm/FmBi2KxkyLLlh?=
 =?us-ascii?Q?6bK7NwSh15OUn9kH98bmQQl/boyKqAo/Z05v5EzTG6KorGE4sCirzBRlWDRO?=
 =?us-ascii?Q?nrHWyK5YPVkuYL67e4cyJ/hL875R41pkXhDfZ7L91tfT//OfBON8wuf9xWo7?=
 =?us-ascii?Q?JzPBVg988yFdam9LV7cQDE3opG65k+W/cVYnb+40ilNj2jAQnYT4mfCUN/dS?=
 =?us-ascii?Q?c8R+S/CVHAvpaAjdTPGgfowSycf5GPw8uFPeNKOJK8NycpCXZnshale/q8i5?=
 =?us-ascii?Q?79cC7Vhl3eeNFM732Q7GWXNDHi2s7UxSeUbYSY1at8mAjfTioSRNGYvUHbci?=
 =?us-ascii?Q?/NdbVHJ2UmknuTd79iERW9+anYXfijsqX3X442Vyv+QzTVGBP52hKpM6Qt53?=
 =?us-ascii?Q?HyoMBUwlIbAL14kBabN6SdGL2ZVceGY1lAJLfNzJ0L5gsXgzxJ1/cJvlhCrd?=
 =?us-ascii?Q?8ZD6AJQ41EUN0GKwCY1c7SCQCgiSvohQhsQds9RT8uxbX+/dJsUGxvPwCseD?=
 =?us-ascii?Q?qiXXTDVMldY5mGnxQW1b7mGfJ+ukNBKjXSs+ei6Ameun3j0/QXWGVOBinCW7?=
 =?us-ascii?Q?nPA+oWLHUylAB6XmA8WCY+Uof/0hs5lIcNpc4qI5udcbXK4SAFd/sreg+ZjA?=
 =?us-ascii?Q?unwAZvplCKtG3m+4EVXqWHTaDA035oopLlme4AMnDdaNCEWIvo+M/zhI3Z/b?=
 =?us-ascii?Q?GIG0nIzv8vLCK5DruaTQZImAt8Ju7AaVdBNhxi+z+vrn2hhXGa4YeOFcSOZ8?=
 =?us-ascii?Q?gxgDoWA6oiP7sz+Q8VoQRUg8U2NR04oh+W2jc183twPiwiyC6dKoET0EJm4t?=
 =?us-ascii?Q?EGsTNAODhH+wtacoxkHvx3g15rEtaPTmJDHQFnjRjPkXaH+XAvJILKQvDH8R?=
 =?us-ascii?Q?k4lVGUjLg8B/PR+IdvvqL1mCDfAnAQsHiHkeFpmo97q3RfBmdNgO79161sga?=
 =?us-ascii?Q?zkqa67AI8c0hB6bfsxUnctDvvd3bTT3Pgvn4vVpHUxPhAQhFHw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ie2WjTumSlfQEkbBV6B5V/x0icEPIWaArvR1c6ozdNCuJRj1Lp+oAvP4cjWN?=
 =?us-ascii?Q?YqU3jSu+BWnfQAXfh2TRcPQM5IljqBhZxE1j3QpPP7/odm8q5uGEuF9mrPIz?=
 =?us-ascii?Q?0gKuXRXiyL0eb3i4nc2pgVDProF1is/DtACRbqxnWBJfuIBlkeOI7hLHal5x?=
 =?us-ascii?Q?JaRkBQ2R/ktC5MlAtJ4isggRl6ux5na2DRf2sOsuC+78++JLjR5E4gkImwzY?=
 =?us-ascii?Q?jwChFPcQ0GstSy0nB4QW4l0vEqpAyEQtdB/f9psL7I0XVB6IEReumyX5vM38?=
 =?us-ascii?Q?8mFUilH3EjjA1D/E96o1v7Zvess65qlFNOmMSgdNFsRHWne9KHotkBnfuyeV?=
 =?us-ascii?Q?Nkt+tPAxw0lpqwE1VQVt2RLdZngY0rTAV7k7rAnLsBDVeTihuv8/xOsP14g9?=
 =?us-ascii?Q?RukBTCwEaJQcIFcYpkWpMfdeMr26eRZpVenY1XNuDJZ0bXr+nFY3Qw7UKvXz?=
 =?us-ascii?Q?YwlhAd6LEiBOxwjyd4rKSTHFkjffSycZJEdouQ3UPMBrYPST+p2EC/gBZEuC?=
 =?us-ascii?Q?1OW72M4zjjJ8IfL6Lo+xTJiorKNA1ugsVtJwBVnIC8UCZAn9H1ijJ401/g4H?=
 =?us-ascii?Q?n3l0NRP1wFQXOW9X54VTINaQN6f/TkxwXjy8FnNU4dXbWg7rGGyRruOpfqQ0?=
 =?us-ascii?Q?vWVmZ3BUlCESsQ2QWjpE0qJbxujOYBAN22fC5KGKJTiKfPMr1X+sTGK4+DxS?=
 =?us-ascii?Q?lGUEfEQqbxbxZz+b1KG3/comxqlHMlDZqJzvFRPbOjzsGEyM5cdRT4o5IRwX?=
 =?us-ascii?Q?ERz7wOOMFyIwh0EUx/qeNJVhQ0ehN0FDRuixhiGu0GqbWanh0eaoO5iqw6kX?=
 =?us-ascii?Q?AnCOngVIgCD9bZSt6IgmNE27oTytWdBQiLCz3qqrQ5SYHXb1Mw6R4580WrUG?=
 =?us-ascii?Q?sTdxDieS1yOaWHEAZaSubECdmxAR37Qfiqn+uxxA8sHlvqtIHp9u7gzwfOx6?=
 =?us-ascii?Q?Rth/OcZP2I7w5LtWHT4D2VeWJNu/Ghjv0gLv81tbsZ/mFcLDGPzHvEuI0UVV?=
 =?us-ascii?Q?n6tOeK/hVRexIbf0yoa1+cNPAdSZFvTeR01JLU/fFTS6cUwn64tEZyZot4dO?=
 =?us-ascii?Q?BKIl0WR9DfFGasuO4ySY88ZbSx8qu+uHAz6EumM/HDPD2QTmIEJGM2rcFDuS?=
 =?us-ascii?Q?DcTqW9TaAp5Zs92GPURNpuAHdw18hUEwoZbwLC6b5vFXRI6cQ0il1bPjR7gw?=
 =?us-ascii?Q?cUAHiPksZKSWxaJuR4vFTb/KNhdJMKnoNeAo/rO8Cih3lgXaKai9sI7klzID?=
 =?us-ascii?Q?YPIpnHmvHIaeqknkEJJ47bKICLznRe+kn6FP/0k1739PesgEows+XjPEGHuU?=
 =?us-ascii?Q?dCr1KoqiFqMVOE1UL3Qyap+4bhYEZ8JGK6bSgH6Yq4WJ45LI4wqo1/SKXh5m?=
 =?us-ascii?Q?0zCGSf7p28NLZZjTkFlEMPNVAhhSLSPyGSSnev+wl00BaH4jVVPbGDY/ruRO?=
 =?us-ascii?Q?aYu//DEto3O5CHV3Pa8lGoJ8yzxD3BTz9Ta/u1soxT5WKXtyToxDrXrUX7xy?=
 =?us-ascii?Q?lszDssX50tiKvVfICAjhVi4/9YbpE1LNk4z5QVLMViLZWcT5ABOZOUccjYDK?=
 =?us-ascii?Q?ce0VsiZEcBuyRo+hJRiKl8Wt9ypqQXEX2CZMsg3SuqMVef+9cPo2pqxEG/ig?=
 =?us-ascii?Q?BA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75b2daf4-a6ca-4adb-23c4-08dcb117d2fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 04:18:26.1581 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EJL5mWlYQZ2llkNOf4GIrO6V3wsOxxtZTHkTsYlVGD9E4t7cNPYrje5TcY1yrlUDPew2dPcbd2Bfp8zMhWoVaTEo9a4qezkHGf4nQc8mW0oPE8HEbGRhA5bpKQePlXQ6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5285
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722399515; x=1753935515;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=abNWvqRfmOe7B1o2egK/YaoYadjj8BcNnZqRqlO299k=;
 b=ENio9uOrr8UPbwKACzAch5UMETB3cUuYSHJmC370Rr5oAe8obHQzUh/g
 E41rNtDJP2jz2RtLfRxmOi8eOWsIS6exYDJ8NZOEF0nTLXsSFCrkOpMJh
 MJD1ce4o1tr3K0YTvXMetqE9jEDbz0Q0/xKIMVZT19+zvE4E2PpTfiHYi
 Vw3+j8tEEnX5LQcsoKq2bmmJC2G8gOfwLKOo6y6P9votfHnWJbmG5e5vA
 eIepJwqbxpqquWlKUAJfpU8d0SAO0sfPlHNWtujlWR2gyjs3426KR+wV4
 H2NX8yV18IqUN6hQyOBz5/1ISnXxMUIAVgn3aTKjv3/R1pbTbbYhpUJHW
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ENio9uOr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix incorrect assigns
 of FEC counts
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ateusz Polchlopek
> Sent: Friday, July 26, 2024 3:49 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Drewek, Wojciech <wojciech.drewek@intel.com>;=
 Polchlopek, Mateusz <mateusz.polchlopek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix incorrect assigns =
of FEC counts
>
> The commit
> ac21add2540e ("ice: Implement driver functionality to dump fec statistics=
") introduces obtaining FEC correctable and uncorrectable stats per netdev =
in ICE driver. Unfortunately the assignment of values to fec_stats structur=
e has been done incorrectly. This commit fixes the assignments.
>
> Fixes: ac21add2540e ("ice: Implement driver functionality to dump fec sta=
tistics")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


