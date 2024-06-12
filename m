Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0137F90530F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 14:57:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 637504050A;
	Wed, 12 Jun 2024 12:57:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hV4ZBn8q32tv; Wed, 12 Jun 2024 12:57:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB91740555
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718197029;
	bh=a/QSNWirNEGzJMBq5gGZQRbaPRo2oDFcK0ro2o3Geko=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=17ba3WqRUd9J9+Qz/grnFfa8LcOjVU380nihQ6ZALIAQcKUeSZZcvVWwrviERrAzg
	 wYn3hp5W6jMFrVjKHK5ixQL15ClGnwE8M4anGJwjoS+rlqliAGaIFxVgGPWXoFzZJZ
	 0fx/LFp3Iwxf8QE8xIWMQNMAhZbH2NzJr4QQEVSRdPtsVofuVij4PP2aNug3aGjiNR
	 OLdI8x0FRsNUY8fKHWocEjPtNtJJhOvNqVV7Yxhi4i6KCOk42qoIloEC9TSK4TDDU7
	 kFonm9ofXiqm534057+xseNhoF0gQs9saCUaPRuNuxzBsw04p0ityK3Zni1WDOd9n4
	 N3RCzAgTdP7Fg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB91740555;
	Wed, 12 Jun 2024 12:57:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C8CB1BF372
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 12:57:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 73F0740B5A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 12:57:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id auN0zbk9-OBx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 12:57:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2435A401D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2435A401D8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2435A401D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 12:57:04 +0000 (UTC)
X-CSE-ConnectionGUID: oMLz8jA2R9mFzf4N00qHEA==
X-CSE-MsgGUID: ANzKNpVAQVyOju5sFMdZEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="17881637"
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="17881637"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 05:57:04 -0700
X-CSE-ConnectionGUID: f1oRHRI+SCGBlZqteO9Z9w==
X-CSE-MsgGUID: pURgDQ3bR3udhB6WSOQ90Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="44171648"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jun 2024 05:57:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 05:57:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 05:57:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 12 Jun 2024 05:57:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 12 Jun 2024 05:57:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EAgF9UNHDPNn0Fo+xp64R+HO8l7Q2C7n9TefEUwerJsPSyAnWkxYOuMZuNtxXRijaFq1gitmmydBLA1FVhDRLVBxCqk1X1nz0CB9S/SXfkj9v1flEtwwK8dDNvzXQcTv/lknqaPAoz4H7RWy0mwUyHWkg4m21+/88XAk6XYJatRD7vKhey8oi5RS52oM0m1udjpYIOTbqimA4K36IvpjQhNEZpiykypJVNxatZ7Oy/OtCph9s/B6ZQooLtXPBd3PewGPHuOwLr+EF8rifhXsKra/RnpchfeGvZXKF+t22ZXBCyJ2S6dI6GoYbPGRkA8a6eXyz5ZakxD4ZvdqKd6Mag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a/QSNWirNEGzJMBq5gGZQRbaPRo2oDFcK0ro2o3Geko=;
 b=RQeDsydBFVmoXW58nfvhXm7i5Sv1MDFE4YyuY2XpNgAXh9G1746jzDjrzqe4+WeRkG5h/sWnAsGnF0XywBD3KkS5mhxbktFV0T6JDjr7CWgVzGkWFe8swwsNBwf31iZErjzBoign/7jfOwRM+FTeXgR5IYD1rAPZUvdJEuNUtJNZjk0L166aJzvaBT8Gs6E7f2Nl2r2R7ybQcmGevB7knMErYhhkOGOFZMRK2pzUlN4HUo6kT5uVVNLmj2/lukoe38qkUhb99qF4r1GDbUeTiR/fenKceXdk8tsjx0c2beHPxfMTFmCYuM5O5mkhLjxLTxVFu57OuKGBGXfolnDJnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 MW6PR11MB8368.namprd11.prod.outlook.com (2603:10b6:303:246::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.20; Wed, 12 Jun
 2024 12:57:00 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%7]) with mapi id 15.20.7633.037; Wed, 12 Jun 2024
 12:57:00 +0000
Date: Wed, 12 Jun 2024 14:56:53 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <ZmmbFWJNb/s+UFNq@boxer>
References: <20240611-igc_irq-v1-1-49763284cb57@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240611-igc_irq-v1-1-49763284cb57@linutronix.de>
X-ClientProxiedBy: ZRAP278CA0006.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::16) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|MW6PR11MB8368:EE_
X-MS-Office365-Filtering-Correlation-Id: dd00d2e1-b97f-4d0b-ad36-08dc8adf263c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|376006|366008|1800799016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KwGgl1EK9eBHDhJ3gc96dNK1n7BgMybLoXEn3h2vcCdNbrypqpzZKGe8QH74?=
 =?us-ascii?Q?UUHBfn0HXu4OpKkK6LrwZcrDy8Y9GwoBRDqFZMXX1CUMzRWyhv/Z+qedIoNY?=
 =?us-ascii?Q?7nRMv19CeQ01wgtPXwo44EobPAxMVpcAm/Ovt3RgHF72UrVMDoEof+bdRhxU?=
 =?us-ascii?Q?oVIQz5f80ZpEX+khiLdMWc/MsM9AQOcO3XDvRaBZ8iSbq/6tiDSwl3RmKpyR?=
 =?us-ascii?Q?60E6CmDhsyXRrvP5nThOuE+HySLXkWRC+WL2BwEAESt3QcMhZvNxYh7U0fTN?=
 =?us-ascii?Q?ln93tVNejZGxkjNlnie3lioS7Tl9LAX8S5r9Rf1xlBJ1UycWk7ZQn9M7ooQc?=
 =?us-ascii?Q?JnjyuNQuQwBUI8TE6X6u7EmG7mlP2y05kWzWnQC92L+3cDVyHH6WEMG+yrG7?=
 =?us-ascii?Q?yDFTz972pd+saQyeDGZm3f3GiGlNdjFcFxXqjFoE5GaHloGVNU77qZJPNIf0?=
 =?us-ascii?Q?M6VQxHwVhkfOxRSP+Ja0nBISR080mYl5dONLisVVSlh8vo5MFFSzxlAjNy0O?=
 =?us-ascii?Q?DUls8yq2gKOpnMNdchYsppISOA7/1jlUVbL0K7Tpbb3w2+FOGLHhvJufujJd?=
 =?us-ascii?Q?344KMpzhkpiuT4ytCgXsUcLNNXdZWA4RHRzJNlE8AfwZdSkvjMfX0BhoqE+C?=
 =?us-ascii?Q?ZAkIdXvtFr2Qu7YzVnqMQ3KzfTWAW47cG30e9jPZM7gkMkECZ/sqH3+SGF/L?=
 =?us-ascii?Q?pOCE6TMRkIkfMSTWuBw85Ex7iwHCWpMTX50AiNXtHbd6GOhSf8uhs/L5lV86?=
 =?us-ascii?Q?RmQZ7cLS6LqL4sBlgHzwriJg+fRfImzmsqVXJkqe8mcAkMJWjBekuv/Rfek/?=
 =?us-ascii?Q?qbzDp3jeUuoDdiQOwqc1pd1IfQXtsI9ipGe18x8MwO3onn7NladJce25meMX?=
 =?us-ascii?Q?5rvAUs+TS0xFaqG+AeShNk0fzz53SomF6uE1Th73IBP8SjIEFneVj0QJ0NB8?=
 =?us-ascii?Q?6aCj/t/LDOBG6qd6qyWnTpuNn144zb6R9OblnvTcFN0AypEmIHLmVRrJReOe?=
 =?us-ascii?Q?R+NG4Eyqi5z9+bXKFI9wnUQHcr8kgfrs9UHKy/OaoJ+v5kR6Oecg5v3AmRhm?=
 =?us-ascii?Q?Ry6LWSw/vfAwqyJ8tohg7s2WO3sYNFY2rWWQM8xJlgQKWF+TOg2mc5x41AFP?=
 =?us-ascii?Q?U6S8U0W9Vzl1LgthPZyGkbnS9VTr9pdaITnViuYfzXMffADlQjkW7J7Vje+G?=
 =?us-ascii?Q?M7VmttNpOe9dR1u5YU2o6GaH7nYjqaNB0wMH0QzWCT5FV4DyBUlvcH/Jg2xr?=
 =?us-ascii?Q?QBNx0PpX0d6ItajsCOJhdVTlfBckyIYPEbSNYSaFdkmoyi9YNbl9mW+kEDBy?=
 =?us-ascii?Q?ccE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(376006)(366008)(1800799016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PH4CKapjr/NJzYvbXAMRLPF9pL2Oddsoq4IG9syn58gYE5nOcmtRDaUeudL0?=
 =?us-ascii?Q?XgDchTSXkmwn1RGPOSapiIduJUbpgYLlqLxAm6Svs1JiBXwp48UPNIAsIT9I?=
 =?us-ascii?Q?Flp/jNWKwNQUZxyeweioCz9M+I8KQ7uhZ0k1gK7e3PzhReTOJU2JrPgmdvfg?=
 =?us-ascii?Q?mmkSSMIAYV8OPzmUtKMz/YFRS7fglwIBGRsP61zNja93UJqOUoAjhee0A9Er?=
 =?us-ascii?Q?xaW4yWLCgltfLxGi1MfV38F5/QcWIY8nB92stxQzgYGrJT4mj/836ufGup1C?=
 =?us-ascii?Q?OsOmLloyKxbJpKIbo7qDEwcRYqVn4aBOoM0dYmd5xY4IIyhg3dg/PmxkJMFf?=
 =?us-ascii?Q?HHK1glaH7NGBaW+s018q0W2oIUdlfmWrB6NWp4xdnk1UQp8Luc+rlmDdbvtb?=
 =?us-ascii?Q?HiHW2E4+MXfc9/fup2M8LtTF/QyUQivDHvzmv+U2Cqp65QwWhZHq1wRPLZW2?=
 =?us-ascii?Q?aHZqJ8BVyJ0TgWwxgvItJ88xs2QtI5iLfX8MRjXv608Onj4aM24ee9pzOqtS?=
 =?us-ascii?Q?2HNkNna3ANlCZAcyHrQQTR51yvQ4MG2ltG1YK2OpgTkdxsnh46hq+ne9V0Iw?=
 =?us-ascii?Q?sFx3VUAxo7qOYIc2choNM/5T4RaS8iJP231DY/Lv9Ohv4RupE2AgK40I7v72?=
 =?us-ascii?Q?VTqYV/hn0sRqxSUSS3AhR81jsVHNHujBBWWG+Uy73Q9rszA6J3+sCDyJw1CN?=
 =?us-ascii?Q?BXfA8wNyuyEkqp8LLWLIlgDcF5e069gn4xn+XwDgf2JgpE4pAYDZ8jJrmQN7?=
 =?us-ascii?Q?RSs4YMw2DFqnNGKC6uY1xS+1a7/psA0Q8YgIjU/Di5fsbZwXXcyC49++hHlg?=
 =?us-ascii?Q?sCWIvNU5YGgjDdmXULZle0dt/veg7h3meyg81OOEVeytjg9FEZ0U52OqVK9Z?=
 =?us-ascii?Q?kdL4sd4AJifPhlTyhyiOXwkSQDKUebFONCPbh+DfdCdYTfNIWSmfmHIvtN/Y?=
 =?us-ascii?Q?hgrNIo7/4PzAKxGxmKMfl/Ld2IuEsp5ExrCCzv1L/EJPL+fRIfC75a7QatSr?=
 =?us-ascii?Q?0DgxKxgpzdhdq4znv8I4TwiwGb3En1ksIUNK3Y8P6pUCgTOKQu+Cpr7TD41W?=
 =?us-ascii?Q?rLCVnSsHqCKCuJJ7klCguWkP+9/lHj3t+FPzUkZUao/Wybc8uMlQLdp9X46y?=
 =?us-ascii?Q?TFSaUPUC3ZGRSt3l4PQYMkw7Fef6w/oMwB5TCrZLDtrfCZF5RylSd6u7NZZr?=
 =?us-ascii?Q?pQGu7YrtyCwy65wZqYhSND5cBfuexdZjc1DeyTXZlTWwWbKN+EGIwBNZ77Z2?=
 =?us-ascii?Q?IpDGhygSKhCVpPmZaear7gh3prWDDAoz4cpgk5138E2LyJgFKJ1Zcx5L3ERd?=
 =?us-ascii?Q?StI1GI9MFDtE2ulnJ67QaoPbrmk85WI+TfFcqVb1r29Z1qiNfDvaOtuGD6sl?=
 =?us-ascii?Q?o1EJgwcAt6oHBQEsKWMxuEdJyS+Ogso1Lw8+HIry4/77CAVyhyh7NEAi5eT2?=
 =?us-ascii?Q?q7a+F7suWXBsGcG5HxQ2Mqm9zR6V2UBbq3PedESSsiN47yolNzHoWom30YFh?=
 =?us-ascii?Q?y83qo/cs/f1P6edqDAzkFn+rqL/a2AX6eeZAEn/IVdmWvYJFG9xfFQ0+Azd9?=
 =?us-ascii?Q?tjyRpfj+R6NQ13I+9y8B5cLLZAwjG4GiD1SuR/RrBHnMSOEXHOtiH86S5wXr?=
 =?us-ascii?Q?6A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dd00d2e1-b97f-4d0b-ad36-08dc8adf263c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 12:57:00.4970 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1VIEIGL/L+gKugNP5KmzEdW92cZWsRqxlqsGN/to2YZAaYS2PZ8hJy//PKCyQldBI6ZL23APfooCrgJ2gj6Pgxk7cdrvgZa9NdUWVCF52TU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8368
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718197025; x=1749733025;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fTrZ4rnifWDUoxPudIWAXwQC36FdrirrazC5WAuSD10=;
 b=GpRIsnhOQwahZQ/6yjXWBXySbvClt/1Eaa+JJEoLyHHCnFDfhE8UNH5l
 Az2g5NkD52my6eahu5dnV4nTiB/KAdCyuAMWWolniDYLxKO8Vjt7kvroR
 SN7rfl8Iq8yKkuQHWZ8OgkYdFQNIZ3wC9UArHNAtEw9wRBN7ETOo22d9y
 WvznZY3zvK+L2aDjcTnW/qoC+24R5QYnkKYhKozPT55fYrblTCJFYOcxQ
 QssV4HC4FSxHxE8Kc+a9GurkhCF6DTkHnCi+MVIoAIVZ+/Iv1TM8s164x
 93rfZ3sc2aBnbo2MO4w8PYLFS9k25ZJo49zDVNXq0f9LivKP7nwD58mBc
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GpRIsnhO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: Get rid of spurious
 interrupts
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 12, 2024 at 11:24:53AM +0200, Kurt Kanzenbach wrote:
> When running the igc with XDP/ZC in busy polling mode with deferral of hard
> interrupts, interrupts still happen from time to time. That is caused by
> the igc task watchdog which triggers Rx interrupts periodically.
> 
> That mechanism has been introduced to overcome skb/memory allocation
> failures [1]. So the Rx clean functions stop processing the Rx ring in case
> of such failure. The task watchdog triggers Rx interrupts periodically in
> the hope that memory became available in the mean time.
> 
> The current behavior is undesirable for real time applications, because the
> driver induced Rx interrupts trigger also the softirq processing. However,
> all real time packets should be processed by the application which uses the
> busy polling method.
> 
> Therefore, only trigger the Rx interrupts in case of real allocation
> failures. Introduce a new flag for signaling that condition.
> 
> [1] - https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=3be507547e6177e5c808544bd6a2efa2c7f1d436
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> ---
>  drivers/net/ethernet/intel/igc/igc.h      |  1 +
>  drivers/net/ethernet/intel/igc/igc_main.c | 24 ++++++++++++++++++++----
>  2 files changed, 21 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 8b14c029eda1..7bfe5030e2c0 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -682,6 +682,7 @@ enum igc_ring_flags_t {
>  	IGC_RING_FLAG_TX_DETECT_HANG,
>  	IGC_RING_FLAG_AF_XDP_ZC,
>  	IGC_RING_FLAG_TX_HWTSTAMP,
> +	IGC_RING_FLAG_RX_ALLOC_FAILED,
>  };
>  
>  #define ring_uses_large_buffer(ring) \
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 305e05294a26..e666739dfac7 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -2192,6 +2192,7 @@ static bool igc_alloc_mapped_page(struct igc_ring *rx_ring,
>  	page = dev_alloc_pages(igc_rx_pg_order(rx_ring));
>  	if (unlikely(!page)) {
>  		rx_ring->rx_stats.alloc_failed++;
> +		set_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
>  		return false;
>  	}
>  
> @@ -2208,6 +2209,7 @@ static bool igc_alloc_mapped_page(struct igc_ring *rx_ring,
>  		__free_page(page);
>  
>  		rx_ring->rx_stats.alloc_failed++;
> +		set_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
>  		return false;
>  	}
>  
> @@ -2659,6 +2661,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  		if (!skb) {
>  			rx_ring->rx_stats.alloc_failed++;
>  			rx_buffer->pagecnt_bias++;
> +			set_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
>  			break;
>  		}
>  
> @@ -2739,6 +2742,7 @@ static void igc_dispatch_skb_zc(struct igc_q_vector *q_vector,
>  	skb = igc_construct_skb_zc(ring, xdp);
>  	if (!skb) {
>  		ring->rx_stats.alloc_failed++;
> +		set_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &ring->flags);
>  		return;
>  	}
>  
> @@ -5811,11 +5815,23 @@ static void igc_watchdog_task(struct work_struct *work)
>  	if (adapter->flags & IGC_FLAG_HAS_MSIX) {
>  		u32 eics = 0;
>  
> -		for (i = 0; i < adapter->num_q_vectors; i++)
> -			eics |= adapter->q_vector[i]->eims_value;
> -		wr32(IGC_EICS, eics);
> +		for (i = 0; i < adapter->num_q_vectors; i++) {
> +			struct igc_ring *rx_ring = adapter->rx_ring[i];
> +
> +			if (test_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags)) {
> +				eics |= adapter->q_vector[i]->eims_value;
> +				clear_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
> +			}
> +		}
> +		if (eics)
> +			wr32(IGC_EICS, eics);
>  	} else {
> -		wr32(IGC_ICS, IGC_ICS_RXDMT0);
> +		struct igc_ring *rx_ring = adapter->rx_ring[0];
> +
> +		if (test_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags)) {
> +			clear_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
> +			wr32(IGC_ICS, IGC_ICS_RXDMT0);
> +		}
>  	}
>  
>  	igc_ptp_tx_hang(adapter);
> 
> ---
> base-commit: bb678f01804ccaa861b012b2b9426d69673d8a84
> change-id: 20240611-igc_irq-ccc1c8bc6890
> 
> Best regards,
> -- 
> Kurt Kanzenbach <kurt@linutronix.de>
> 
