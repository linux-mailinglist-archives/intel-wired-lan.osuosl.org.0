Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p9wFJ/10V2r4OQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 13:54:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8A175DD0E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 13:54:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=vi89K+ze;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C58A8606DA;
	Wed, 15 Jul 2026 11:54:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TpxiWulQ3D_2; Wed, 15 Jul 2026 11:54:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2EC3606ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784116474;
	bh=MTE6dBpi0tGxeOCqv1CBiOo3yyuj4q3oAEEGdyOcjCM=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vi89K+zeyVO7hcnx+g5zFIdiy2zxFBRj4zBjn8nZ/xWzBpfczducGFTB3C6zt8n2H
	 BSWjT34WVU1nWvq0k4I5YuwFt9sjrNO+U8dDc8A7XjnlW4ggvfML5tbLANXv58solq
	 a96mgZKY1InqUgj+rgrzpZUPW495wi2IeRrlu92SxM1v6KeUss1/MZMaD2a8Ce1999
	 1DWuhssX+ne9vXMBESCjuMvSO2OpcAOeNI7DP8TVMtzkNka5hwAzqcn1j3h76vn0/9
	 13gYK5RwQvuU1m9/HDcp26+Ozu/WOFAFrvD/fL5URIQKfTghFOc9zffS/sKHD2qJGU
	 xAXb4pAVGWXNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2EC3606ED;
	Wed, 15 Jul 2026 11:54:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E2EC6499
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 11:54:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D49AA606EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 11:54:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AT_eagWc11IS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2026 11:54:31 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C2038606DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2038606DA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C2038606DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 11:54:31 +0000 (UTC)
X-CSE-ConnectionGUID: mr7JhxvaQHOFkoIOShjbIQ==
X-CSE-MsgGUID: R4NrB/3pRYCoj+MB/aVQTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="96119580"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="96119580"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 04:54:30 -0700
X-CSE-ConnectionGUID: OwkwjXx9RkSnuSOXirhX6Q==
X-CSE-MsgGUID: 2cdVgJb9THuNgmzLXghB8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="254416666"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 04:54:31 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 04:54:30 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 04:54:30 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.11)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 04:54:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FehfZwHaVsc/rYa73R6nyp2KeFyUCZpchyBggmuHmYRyVjBEL0XTy9lzgYjLEFl3wH7YHGPC8D4DDaU8V5i6/9Uv3BCTcCLxUBTlceHV1ZZXCXAEci79SGXiSXp/iLeuk6A8xYZaiQkuquJFM3JTDySGmPX7ei2UOlz/ZfM3NjSL+7iv24oHaKhGK6b+5nR4rOCIIhc8svUz7Nc+5AFWtuvGEmnsNzWINtIDB8QaaIdYSBjxrfm/AhKqs5LRWWvc7xNLu+5U01iLQSMpTnxKy58rbHBhopOhZ4r7jaxRMG5Y62dI1zhRDfMUaOlHn2YT4HkO5elVuBPbO//TlCxhcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MTE6dBpi0tGxeOCqv1CBiOo3yyuj4q3oAEEGdyOcjCM=;
 b=dkHy+uWqQN0t4iuTU+wLg7mfppX5asZcn94Hdkv8OS/gR3W8DPhYOBfzPt8dXvnSLpXezBMmeC7iQzsOCv4mLp1fKkfEtw/FrdwDqhSEWaforZQIe0JjmYtuBno7+orfsfKTSd06TIz3+krH3fM5G5s/Y93hnDR0EX6RcZDdacxSvGUMO51QT7SbRHZoNRQaEhX9YRV3I1VbfSZcz4YkPDlYlwWmVak3teU224mkBwUmsE8Ejr4rOX3NrtWgF2f0ZI8DLZsndr9uXcx2/6uarIqArlDftOhSjjBolJmx+J5Ksm0QOpa3bFeiN/Xt/NHH69i+TgwiDXXZoGLg26d9ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DM4PR11MB6237.namprd11.prod.outlook.com (2603:10b6:8:a9::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.223.9; Wed, 15 Jul 2026 11:54:27 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd%6]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 11:54:27 +0000
Date: Wed, 15 Jul 2026 13:54:21 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
CC: Chenguang Zhao <chenguang.zhao@linux.dev>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Chenguang Zhao
 <zhaochenguang@kylinos.cn>
Message-ID: <ald07ZVc7Z/NLXcm@boxer>
References: <20260714025112.284724-1-chenguang.zhao@linux.dev>
 <IA3PR11MB8986AD34DC026A4FB3946407E5F82@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA3PR11MB8986AD34DC026A4FB3946407E5F82@IA3PR11MB8986.namprd11.prod.outlook.com>
X-ClientProxiedBy: WA2P291CA0009.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::6) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DM4PR11MB6237:EE_
X-MS-Office365-Filtering-Correlation-Id: 85e44576-18ff-42aa-e3aa-08dee267d269
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|376014|18002099003|22082099003|10067099003|56012099006|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info: vyVYfupSisY/2Y5AfLd1GtENkxkCgSqljvPum7BvClSa5s3HiunPHcusr4d3MjHty/2+HoN6DiOExnMqrwjhiZ4K+6kfsLuIJ03NGjL4A8KTPDSmudsyq3zxHbO/kWOJwDuTY+5/oO0FDQhpl1yL3hnWBJSA299HUtkCSXLUaKl8WhXIRmY3ultsuLkKBSasiZ+j3/kHPJ7mYeXcvamLio0pKzgFOmjPpOKMsnbAKgOuahOb3pD/Tcl6fq14uUU29V8RQPFia4siDF1Oh9Fjy5EJvVURvsOLSjA4PuNJ46LNyIE+sj31HlWygP2YYXgJia91QJX1GlH2vA0T+r52mnrslp3r7pNlVAk9ECh+VePBag6rbVHmvJ/ce9G2ScjOhNxopNRefPt9RLFaUNCfNWF6OBkzDRJmFIad/tntynTMZFYqjsiuNn6JMORW2QeaqYkO/RfUpK80/dPm7f2O7FwnKtYloKn91DVcZnGaOabZbF0S9j8URHyno8Q6KPohTBq34RY9uTVmbQS/F5BUs8AjDpG8OtpGFCJkb0+U+7gDigk1dMyoiF9cwI/VtF4CFQevOTFSet3KSPxbsI5n1ZnAf6PwAmfbiG+2KmDbhLuc8GyHiEKMgeCVQi5SDV7lE6tll5Je496fP1/WEMkGAgMb0Shf5WC9ei+K/gKPV5o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(18002099003)(22082099003)(10067099003)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9tWl/th+ZvplwGo+l1TSXtF/2qqBYgGdWO2WszLVcLq7EdS68WpwhPq7C7Ea?=
 =?us-ascii?Q?qtopFQVACdBoLmb+zsK16sfAZdLE2UhVVwLAmE0rQHNNYXzmfGP8gEwlMFKq?=
 =?us-ascii?Q?N/zvdkKy1l5b3H9/gxtCWbBdIym5U/57GENZ1BPTpWHIF0NdOypd7LKICUYP?=
 =?us-ascii?Q?ReXRovJw5UKjN6DO1Cv3SOii+w1onWzu+D3JTtH9i1O+zEgEZGPFXoUYjneJ?=
 =?us-ascii?Q?s+gQ8gX9B2WibdulL82qv7m72xbubRD6+dN8MWH7b79vFi37twteFZddx8A5?=
 =?us-ascii?Q?ELYbbdhMqHaYW0/9dmC9DUOUaqgiNt4VAYBMGZm9ChODDEfjXowNNKifZPsu?=
 =?us-ascii?Q?0lHer0G2XbyyJN375GCoJrusODt5TszUwVJwpv3A3IZT5nv6tt1a3HPdiKVQ?=
 =?us-ascii?Q?OgDsM8U3i/n9cOurVMpL1RvReP49k/QDxFKEntIfrfyGh0p+Fg90xVSTdYFp?=
 =?us-ascii?Q?zghRfix9blc8AitN2m9yOYZX6S2WgFkeXD2vOdG582C4Z/jdMPpF+CRT9Rd6?=
 =?us-ascii?Q?AtoN/Z0W5LojtqWTS3BvJzQTEaYIfo3/s6bIC4MCcjFZjy/mcuBXWmb/XhTG?=
 =?us-ascii?Q?SwvcPGaLNworcRv9rAv02IYzhBWDv9Pswmg4/u2wPwYOdtl+yD6c21I/4kmK?=
 =?us-ascii?Q?M1TnB9U3hxINwHvRivNLtojS1rOKJfPMRmpT3vbMXD5A3Jlm0LWNzebo2iJ6?=
 =?us-ascii?Q?YES1ACp+9idzgJ74XVLbHU6i1nilAzryNR4aHWaRiPLUS6GmZWXpn/uFLuoz?=
 =?us-ascii?Q?rBwiREImz3ekQBQRikzDagJGuBr37J1p2s36llV5ZNYqxxixnvKOFDScKy8P?=
 =?us-ascii?Q?K6JxznnJqmTOSEyU3IwQrtGkBuFYkZj6FjWbS2sOqUPECOt4wYAqwdeSsDdM?=
 =?us-ascii?Q?2HNLqGY6tOHm4iHQ0+Qdmy3mkJHAXexg/atGwjjooXhGrUB4pd47RbFOXbFL?=
 =?us-ascii?Q?xAPVJ8DByd9DtyGQeF/81CPpYxAzDsU+G+gbf+Qey4BWoxOx9kaNKnqaKXiy?=
 =?us-ascii?Q?TdxLDXeGailXC2Xlm/sQPStMptKlxYBgulN4rbMrIEj1dDyDHHR5q0PMtUKI?=
 =?us-ascii?Q?uLwkI3yd21ecmY+Yc/sD359Jcwo2Qf5MQkL9ktiM7mD41pFPJJ8z/s00L6TL?=
 =?us-ascii?Q?CWp5XISiZnF3UTFACyg+zl3hP+mlVz8VLiiYjC+4WSVVBgOvwikD5eJl5AHq?=
 =?us-ascii?Q?EV/yRpJqJNoFruqjFEQxipdr29Ya9omoLNZNsbp4LCihawGgbt1ydPmcRooc?=
 =?us-ascii?Q?mvr2aUa2TPPyTVUalX/FLSHqT3/fOsA9wYF6LI+sn0ZLeU8IprspZYqtvyzj?=
 =?us-ascii?Q?YO4cj0SUME03hiWDiazKM7l1KsjsniWw54uZfx7Aox58F5QPwM8hbbpTRrvS?=
 =?us-ascii?Q?VJF0C1JoCH0IwXH7kI+0x9toENHBgaOHs4uWJe77fkUBUi22KTFsKHOjvXg2?=
 =?us-ascii?Q?LrAFMjuGLdx68eHXYdd5JOcW85QfaFu/4gyOoWOeUUQaBo+3q9hAo5mvfVo5?=
 =?us-ascii?Q?+kpJGgAR+QqXm0x/3Ut1wvWcxMzVFvgTwPPn06JIaDnAAlxBZFOFDv+EbhOU?=
 =?us-ascii?Q?5JqYXdHGtLDpTwNCeiBLxanFD1KZy2EBL+RcO/9iQuHDhDGq9mNP4f06PnR8?=
 =?us-ascii?Q?i6o4KOKapEIQZQDD18Bk1A3xBjlJn7xziYyAPSW80wxZn4/7OKLu3MtmCgG8?=
 =?us-ascii?Q?JXsOJRuzjhuiqisHVADrdDByqdoMHxu8qk7Qw3qZruPw2033Y0Uyw+mCoc+N?=
 =?us-ascii?Q?cUEJ7CgZSPflG5dePdUpe8OTr9nO2bs=3D?=
X-Exchange-RoutingPolicyChecked: jbdtVAZJ+tuPwXBD3MULAUrebtYMlzhrE2OGmvjwWpjnFOAfMAvZpR1bfESuQPXv2+enZbLdx5wlK1YYrecJ9RcUiBSJfDg8y4duEFBnTDOvSjT1YeQg6xg7rAnlK1AyU/y059ds6vzQ0+ZxCIhCXafLUuRmcCGddxsFv4W+FC7JBI16fbgTgI7+DybrpvlYlxnNFPTixOm1zKXE6Kzz6nfYeYQ36I6JAEaX5vLz7zlHWenUyhksyloeqVREm2yNZ26bp4X20dv+X4RQ0BhYv6cs/Ng6/Izh1bLe1JjDR20HqfbwaKsqjjHh2awikj8fF9T5N80xkfX+CwfgsfDsQw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 85e44576-18ff-42aa-e3aa-08dee267d269
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2026 11:54:27.4176 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QCmngiud+XYjBse3mhH6hxwDCVpCBRHY02C8sjfWKmysD2B2ZHNuDAeLkEqFbI7p0NZcySirSmLQ71j/48DEraNFKlim3JoA66rcoWDev6U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6237
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784116471; x=1815652471;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hzLiNOduY6IQGdl7M4SHApp8Kn+SfY+uTPTHrUXkbmY=;
 b=iZolWgDqSU8Me7e5rHWmoMCUYeWtMQ0/EZy41SwhTSv7KU3t0MY+wLBV
 Wpl3mtgCXiYpyEA0dJANBp4TuMyGzfEN/RpFTxYviObmVZP2w317U44vz
 nBJfW4ogfNLbDilNMXTAX9Q32lLD6Y5QzDUjOcX20DtvUwyzgedJdmAAM
 Bp43gIHeDgxmy5aoA46GyQpHcGhPd52ggiZ5FOUiPF1809gQcH6WbK0BD
 hHq2nck8LEWJxivzDMfzuFe1ssfKbQPIklR+Kqv6bDEe0OfY5Fo688/nU
 egquNANxWj72QjBeQJCEKQ4XJBH+bvTeIc8XD3zdIbJhg4DtsqSkN79hs
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iZolWgDq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: xsk: fix multi-buffer
 XDP_PASS skb construction
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:chenguang.zhao@linux.dev,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:zhaochenguang@kylinos.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F8A175DD0E

On Wed, Jul 15, 2026 at 09:37:42AM +0000, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Chenguang Zhao
> > Sent: Tuesday, July 14, 2026 4:51 AM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> > davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> > pabeni@redhat.com
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> > chenguang.zhao@linux.dev; Chenguang Zhao <zhaochenguang@kylinos.cn>
> > Subject: [Intel-wired-lan] [PATCH net] i40e: xsk: fix multi-buffer
> > XDP_PASS skb construction
> > 
> > From: Chenguang Zhao <zhaochenguang@kylinos.cn>
> > 
> > When AF_XDP ZC receives a multi-buffer frame and the XDP program
> > returns XDP_PASS, i40e_construct_skb_zc() copies frags into a new skb.
> > The copy used skb_frag_page() as the memcpy source (page metadata
> > instead of packet data) and passed a virtual address to
> > __skb_fill_page_desc_noacc(), which expects a struct page *.
> > 
> > Use skb_frag_address() for the copy, attach frags with
> > skb_add_rx_frag() so len/data_len/truesize are updated, and on
> > dev_alloc_page() failure free the skb via the shared out path so
> > xsk_buff_free() still runs and previously attached pages are released
> > by kfree_skb.
> > 
> > Fixes: 1c9ba9c14658 ("i40e: xsk: add RX multi-buffer support")
> > Signed-off-by: Chenguang Zhao <zhaochenguang@kylinos.cn>
> > ---
> >  - Fix memcpy source: use skb_frag_address() instead of
> > skb_frag_page(),
> >    which was copying page metadata rather than packet data.
> > 
> >  - Fix frag attachment: pass the allocated struct page * to the skb
> > frag
> >    helper instead of the page virtual address.
> > 
> >  - Use skb_add_rx_frag() so skb->len, data_len and truesize are
> > updated
> >    when attaching copied frags.
> > 
> >  - On mid-loop dev_alloc_page() failure, go through the shared out
> > path
> >    so previously attached pages are released via kfree_skb and
> >    xsk_buff_free() is still called.
> > 
> >  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 13 +++++--------
> >  1 file changed, 5 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > index 9f47388eaba5..a4247710c85b 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > @@ -318,22 +318,19 @@ static struct sk_buff
> > *i40e_construct_skb_zc(struct i40e_ring *rx_ring,
> >  		goto out;
> > 
> >  	for (int i = 0; i < nr_frags; i++) {
> > -		struct skb_shared_info *skinfo = skb_shinfo(skb);
> >  		skb_frag_t *frag = &sinfo->frags[i];
> > +		unsigned int frag_size = skb_frag_size(frag);
> >  		struct page *page;
> > -		void *addr;
> > 
> >  		page = dev_alloc_page();
> >  		if (!page) {
> >  			dev_kfree_skb(skb);
> > -			return NULL;
> > +			skb = NULL;
> > +			goto out;
> >  		}
> > -		addr = page_to_virt(page);
> > 
> > -		memcpy(addr, skb_frag_page(frag), skb_frag_size(frag));
> > -
> > -		__skb_fill_page_desc_noacc(skinfo, skinfo->nr_frags++,
> > -					   addr, 0, skb_frag_size(frag));
> > +		memcpy(page_to_virt(page), skb_frag_address(frag),
> > frag_size);
> > +		skb_add_rx_frag(skb, i, page, 0, frag_size, PAGE_SIZE);
> >  	}
> > 
> >  out:
> > --
> > 2.25.1
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Aleks, may I ask what is your intent here? Do you disagree with suggestion
I had regarding this change?

We could go with this as-is, right, but given we have a helper available
to do exactly what this patch touches, I think we could kill two birds
with one stone by removing home-grown code. However one might argue that
such change is a -next material.

Anyways, some explanation would be better than dropping plain tag.

> 
