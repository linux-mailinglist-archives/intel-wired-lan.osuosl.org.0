Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9654B1E7DD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 14:02:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2031260BE6;
	Fri,  8 Aug 2025 12:02:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V-Hf_CmNzxth; Fri,  8 Aug 2025 12:02:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9764B60BE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754654549;
	bh=cUz/epUCjuaqxWtUVqLmadi457ublm0U8LWaWaS8h4Y=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v3SY4u6hJ9eBRhvxUc84hQo3auz5MLE6xkhzZ4eoexy0ZNzblVkc3uXms9QjtqlC8
	 z904icy3LDUcCnt1tcsS8zbvXCsRzuHKgAtI9qRJlPvCdmRVPtvQ5rHo8syLqQKBhA
	 6lSNT0gelcKAmKtiDTvZHHFs0oBCtqGX/t43hEWovJLxrcQyner0IGDFEIgFnqblT+
	 oa4CYE1LqqKEstAPoAu0LoDO6VhZj/lJz0pQOtJF1Yc69Z8Quyfhe3blni6aDCSMHq
	 njtoNyJybq9a02a5W2dQjcIiBXH0IpmuvJd4oqebnQld/IxCcYEMnA7Gndwtroura4
	 eBoviqaagaFhw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9764B60BE7;
	Fri,  8 Aug 2025 12:02:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 193AC10A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 12:02:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 16757405C3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 12:02:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Toi_3IvEa9Hv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 12:02:27 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 08 Aug 2025 12:02:27 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 643F4405B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 643F4405B7
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 643F4405B7
 for <intel-wired-lan@osuosl.org>; Fri,  8 Aug 2025 12:02:27 +0000 (UTC)
X-CSE-ConnectionGUID: eOmgwzQISBWHesiFavjnoQ==
X-CSE-MsgGUID: jiS5IQyPTAW+cdtNZh78kg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56203168"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="56203168"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 04:55:19 -0700
X-CSE-ConnectionGUID: NtSW+pkFQGaLPte2cCY8AQ==
X-CSE-MsgGUID: lBXMnpgiQs+MhJPVwrp7aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="170565284"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 04:55:19 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 04:55:18 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 8 Aug 2025 04:55:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.77)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 04:55:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cut1HEM2etNA8ne8ux6x2DTZxvuHtL4j5fo/oyPEBkpGY3iev8fOSzrtVtFP9LAizkjsymfPXFp+wlTsnQLEIxjZU7VwKGoA8kStEqSVAlGWBdYidWovZCtbsnHYZzSllgYC+fXmhBJXPlZRgPU7XhePxUJrCawx8R9UKFU8YWclbEGRqohfZanHs4xjni2hu+YCu2DJSEMj0S+ceS/b3zOnzSkQEqYBr9gIAtpoHI0BGYzzWOs/AsDbQSJeyj1fnu+hwl+irn0+9CVX9qmajTt8fwIRY8/qYMEGI/Yt8Q8NbI3jR1RzObaOzYgVvwkvuo+HSokeZdLzJ4SltW3VQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cUz/epUCjuaqxWtUVqLmadi457ublm0U8LWaWaS8h4Y=;
 b=f2HJA+NstKzYZ8GAnkNsPZIHzM97IJwWtjQufr6MLJXyUiiS5UZYKsVSGfFVh7G+rw7K2ZEYg+OdyaDrl4px/8sV0uQtI0z8pWKvHeOZE5vkn808YIIvgvOXRVEjmI4WZsfytGhMS3sj185c4H6H6kKirpGf6BUGAe7NxB5neAObPwT9B+ztrHrhVLhvK4ln0Tj2U32PMQ942QeCORTb+7d8GUq/Dmcv1YJB/1EtrpbPnpYJEAxiI3k35T/eoAKQZusNQDP/jheg6TGy6+gbJZ6bpO24AWJ1Gs7N+nn/K/qplDPZdrBArXVZzixbCRORcFrAeBxMeRlbLHBRPYNOQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) by
 PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.17; Fri, 8 Aug
 2025 11:55:15 +0000
Received: from DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955]) by DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955%3]) with mapi id 15.20.9009.017; Fri, 8 Aug 2025
 11:55:15 +0000
Date: Fri, 8 Aug 2025 13:55:01 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
CC: <intel-wired-lan@osuosl.org>
Message-ID: <aJXllR63rZbo-5fN@localhost.localdomain>
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <20250704161859.871152-4-michal.kubiak@intel.com>
 <70ff6fc3-b0ab-4296-b23a-3d4d81424af6@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <70ff6fc3-b0ab-4296-b23a-3d4d81424af6@intel.com>
X-ClientProxiedBy: DU2PR04CA0197.eurprd04.prod.outlook.com
 (2603:10a6:10:28d::22) To DS0PR11MB8665.namprd11.prod.outlook.com
 (2603:10b6:8:1b8::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8665:EE_|PH7PR11MB8252:EE_
X-MS-Office365-Filtering-Correlation-Id: e088dd6b-c4c4-49dd-75b9-08ddd6727061
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Wmn+/uvZrdHta7GItrKO9BIdydCmJdDgruQcQuVf4blL73UI5P9205cucW/L?=
 =?us-ascii?Q?SavBHSIVfwvu9ff5YZ3Gqc1SMirKu9RrSfrsHLDi8NxUzQg1SSPliEl7VMqx?=
 =?us-ascii?Q?ZuGFktA2QQh/LL5XxUkqLR5Miy4IvSNuMbgTx7/d6MsCkbsBXI9UTsYz3ZWK?=
 =?us-ascii?Q?uI4YyCEj5J/jjBzRvsdvzPeP/PcZutZiUtVKTFoLUdrWt142v6VDlGBUnTsS?=
 =?us-ascii?Q?IvojzqvCCQzWVq82SXN+5mrc/VgsFYc7cKdChtlLh/qhi5HGoYaTkd+9kN4F?=
 =?us-ascii?Q?qVuK+jD14tOQSpvetnpinShI15lfuJA4IXedqEHsHqp6x6k/lidk90HpHFgj?=
 =?us-ascii?Q?MKDRi8djODlkPS8rySTLlGNL82xmVoJNwueNF673ylhJwJDW9SwEe/qKNxzs?=
 =?us-ascii?Q?H2HP/SO7Nfnq2dyoKO4wuB58d6L23JkbzzFPT6BZY9rJ33d8oSUtgw23Zc8j?=
 =?us-ascii?Q?QD/lKPRzPOzC86d3NXO3xJ06hed0XvQ62Wn2TaOh2ig9B+iv+3KRzUin6+w4?=
 =?us-ascii?Q?M7SMghzj5FlcIN77QQLkzuAWxMco0UGY9/JQZnE7oTA5tD+VRucixtRdaPZR?=
 =?us-ascii?Q?k+12JH5Ymsr0HVSCrL9Rb/M/rNx22/1gYPZDIOyGlU4Ioij+ZG3xVzFjbJ57?=
 =?us-ascii?Q?Pp3Ag593teMRGLKhZgjDKDrFdbpQUv7cZQY5R5R/6U5RkqpUE6Js9d43IDtK?=
 =?us-ascii?Q?vtP8UHMdapgvAduaVwXeCqEWIqtyTaxdAeREfbFlyqydn1ODVH89NYOki3FL?=
 =?us-ascii?Q?fiMbfoeNwFP4/HLIslss+zr9akr1tDsxpYXteUMYp1xmRr64BiVPK55Cgy0U?=
 =?us-ascii?Q?Dq29Tahc0+8gT/JVjpbcUtUlnSvlAp0c0rh16qGZ14GAXtRjP7J1jidxLe4B?=
 =?us-ascii?Q?v8WkIjB8+ROdnnrIj1VWtJPkBhcCbPcxmuPR75uxP1wZ2iiR+H+gWKxGMxTF?=
 =?us-ascii?Q?eYpkuL2s1WpT+5RaS8c2yg0LkXNwzdYY1qlSozDhmqmjAYPd7haOdt3KAHaB?=
 =?us-ascii?Q?5VtmQJ9KPGDl7tuh1ON92Cy+Z+yHBDw47D49Blnk1F/Okb93vzG4bBfD8owJ?=
 =?us-ascii?Q?h1HznyXcrH7nSWJguP6WNbqCqpTCX5cZg9Qe9UJ/L6iabSvGtxdn0xw/F6zl?=
 =?us-ascii?Q?ReZQmFPFy+wXARZPvnv2Jr3UuSDafdiss1Cf9HGU89fEmBpmD84nrJpurgUw?=
 =?us-ascii?Q?EK+Ive3OFJN25SMNsrRBisFo6DIhKicIF/g4YeOYvO5vP7rlxfbo+oY20M7w?=
 =?us-ascii?Q?HP8vyN/Mr4Mc3kEEKTKpqKwy1qcNh6scxyzSzbpHyFkpr1jSDbpwtG1drzJa?=
 =?us-ascii?Q?tVRwpY1c+Yuof2fVyZAXb+JLZtfCMRaeKUJh5AVBshPMkZh+d2Om401aItSl?=
 =?us-ascii?Q?fu0BMcjMQOxlyItWOadYsBirKtqNBVIDo9wu9Ky+ud7B4JTkpEhNvFAn/V4Q?=
 =?us-ascii?Q?Ep+K1NM7z2E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8665.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VjZj66/IZXtXNgLwW9MUb3rCo2RxVXiShvMwdeL5Kz7GHST5mGSKcCI7XpB6?=
 =?us-ascii?Q?hHf4M3L7YrEhBDLGIBH1nuNkr7/7PFODupZ0q5FFbIiCK9kylxXwtuJqLQo/?=
 =?us-ascii?Q?kuqEVNelAmYH3Oqm3gdHabxTDJYcgkqglT2X7z+S9uaqGBxB/YURa0wznKVK?=
 =?us-ascii?Q?lg4m8o4ycZb/ZLPq6vxGM10XKRHWnUE8DdLR8P8lp0wWLQNrwRK6zaAC+cHa?=
 =?us-ascii?Q?5Lv5Bsg3yiygXe+aeq/08x8c4LeCSiGfT4BMWwjRuJ3TFwuE7fO7queXcbif?=
 =?us-ascii?Q?4JExN60hUyujxkf6TcQX52QRlna8KvN9BDJ5g1OqEG6UZe3HgBswbEc8B/n7?=
 =?us-ascii?Q?U1Hokl0NdMGgKaURucT+soromEKcXuY/dShEb0gynsaMqokK6nInq4Kbd1Fe?=
 =?us-ascii?Q?ylZNG203DmRJ1GIYo4YohTCzTnh6Fftvclg3xyllq5uW3D3Ri8qVw6Hsc3cM?=
 =?us-ascii?Q?Q1g3lyHevQXuAsawNb4bYzHdHY0YDJH4cIfjZwEALbbW0GTa/m8cxCTBayjl?=
 =?us-ascii?Q?r0lWE4nQeNLCP3o2KP3bpOV/wJb7moR6LZbE1WrfGfN4cm1d3aM4PegifEiA?=
 =?us-ascii?Q?ACqUzYaqY1SzxmHi+/fbViZODtvLfjG//9d8kIVpfmF/lQrxAYE7sCuGnitT?=
 =?us-ascii?Q?DJieTy7pIylqkNAmUY4164I8sG5Vl5+Jjde+4wgO7V5sPE6m+LzodxumJFkQ?=
 =?us-ascii?Q?xQV79Gg1RqZ9GdxHcE7i7htUfE6/Zup5cATMExTTTaZdKyDiHYLieKEetlik?=
 =?us-ascii?Q?pnjKgDJWGiF10A8nT42v5TYTxX+1vn5MkTBMOql1QHoopMsvN1NsBUIgwK+p?=
 =?us-ascii?Q?sDoHS1hSP3SfXDLW4EF8xo8GfitSyLpuo7osyQIQLV4vVP59qrZUthm74Zo3?=
 =?us-ascii?Q?a87KPfGX6sz5GoVaOS6r7Lu45GolR0oMjWfZDdJJ0Y4S+9FlskpTvN4BwaiE?=
 =?us-ascii?Q?h54ctaDMRjdBnGwsXfaAr2y/G1jsA+5pZptkB+nWTMQ3MbDJZsFY2fevcvLn?=
 =?us-ascii?Q?xI91iYqB44JaMWX6ItNQ64h4PGS+2iDPpvVTQKURmMfDkJezG6d99NMQPR4x?=
 =?us-ascii?Q?+hpSIbjo2hEDeFjS2LKWljDR8DHVHmqCJoO4ndx++aXcC4lZQtleEngK4i1z?=
 =?us-ascii?Q?Sty2JzViLI0YJwDhZKoDiLOs+1es5BZ1o/a+nTxnrRDK7xbBMz/wzrtyDebr?=
 =?us-ascii?Q?UngFw9dtyKIrMCncUaosJZtkufW7A8ukCtF9Nq8KSy/G40OmMSF7wcTg3WkE?=
 =?us-ascii?Q?q9tpbp4g9SJobQcSn0Kz/OzXR8tG5zbO/N9T4jY5RpTTZSPu/uWcYC7MIuKH?=
 =?us-ascii?Q?uN+xkUeOOftXuLalKre7lWHqWkbpQQtIiNMNWqs9vOJurdIBz4h9KlOZkXYR?=
 =?us-ascii?Q?BHetXJN4Sbp4OEDGEnAbG/jZn+DhNbkR1MS+fD+5dRj7TL9sJlMV1dmn5PSr?=
 =?us-ascii?Q?N2dkud5DMDhvfe7rqxA1YfRuHHUDJUs0yT6cKRxVNnul31BSnvjMbZfNl+lR?=
 =?us-ascii?Q?3f3BAd9J5BjmpcJVyztHkq7dAAJ8kOG7TzTZ7bcME99Ctjpmqfawj4/VoOCV?=
 =?us-ascii?Q?wSUmc9Xtn1xGOpuO0HLAIJ1KDN86rTZAnMvmY0L+cegeprgbrhZtmbI0L9Gt?=
 =?us-ascii?Q?OA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e088dd6b-c4c4-49dd-75b9-08ddd6727061
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8665.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2025 11:55:15.7987 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QNi+il4AU1qZmTN14qgvwjm5Cs81wimzJX5GHKi1rNL1HuQhsxaU/ivezsNMIKJbuW1ib6BoeHRA5x1zaXbpZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8252
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754654548; x=1786190548;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oWFxoMuC37po/4YLzmo518276c0or4y5OtXG/3YyTBo=;
 b=edxWnw+ur2Vfbc+FvgMP4D2PvdfOO6RgY6w2VpPC/r8BdVXsUZXCRQI4
 LhfJSpJFcrxUliA5QyI+IMfBH6dnYCGZl8bdiqGKjzhaVTnLPoODtDh2T
 os+J34Gq8TlQPqn9KWN1+/Ot3owmk20sRLm2IBPCtwtp0hrpRad+dCImm
 fe/pOrDnP/1P0mN9Y423FZiFNwOmrFpSlfJWqV6h8pNctX5yMzcfewBQ7
 QRSmkBIDNAYfrTqgHNJzmbmotcIIThnQmDmhQfeJffj3+ZZx8U/XSDXBg
 5PV5hG402/blSWYdiSuIzy+ZdtZWP+CXcCu6xo3AaKNW0ixAlpDDSXvpH
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=edxWnw+u
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/3] ice: switch to Page Pool
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

On Mon, Jul 07, 2025 at 04:02:30PM -0700, Jacob Keller wrote:
> 
> 
> On 7/4/2025 9:18 AM, Michal Kubiak wrote:
> > @@ -1144,27 +841,35 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
> >  		if (ice_is_non_eop(rx_ring, rx_desc))
> >  			continue;
> >  
> > -		ice_get_pgcnts(rx_ring);
> >  		xdp_verdict = ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_desc);
> >  		if (xdp_verdict == ICE_XDP_PASS)
> >  			goto construct_skb;
> > -		total_rx_bytes += xdp_get_buff_len(xdp);
> > -		total_rx_pkts++;
> >  
> > -		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
> > +		if (xdp_verdict & (ICE_XDP_TX | ICE_XDP_REDIR))
> > +			xdp_xmit |= xdp_verdict;
> > +		total_rx_bytes += xdp_get_buff_len(&xdp->base);
> > +		total_rx_pkts++;
> >  
> > +		xdp->data = NULL;
> > +		rx_ring->first_desc = ntc;
> 
> I can't seem to find a user for first_desc outside of the
> ice_clean_rx_irq_zc
> 
> > +		rx_ring->nr_frags = 0;
> 
> Similarly, I can't find a user of nr_frags now that we have dropped the
> ice_put_rx_mbuf. We assign it, but don't seem to actually use it.
> 

Good catch! Sure - I will remove both structure members in v2.

Thanks,
Michal


