Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JNfJq4d3mk1ngkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 12:57:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A06E3F9044
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 12:57:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 658AB84BC6;
	Tue, 14 Apr 2026 10:57:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jr2sOGcGRCoK; Tue, 14 Apr 2026 10:57:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EAD184C55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776164266;
	bh=6YJNmUygMJSs4jc2SWBT4AaJOyAVLgOc8EBcyIUvfTE=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ufuL49ugFzuDJqvfKMO+UtAkDzkP5y8J3Pmtg+17jEKhjs5rBu28Z/BRl3SzKKGS+
	 goK5P48vLH1qWggtXpBrioxGlKAxunvKhLXKkZEfdNmoMMhtK3eV5EpNx7UI1BCsjF
	 3kDXqDYGQt6Mq4Y+XmEvwvTWdnEBSYJgYKm9Q712oqTrzNHyPKu1nbH2ZBswwsodn8
	 xyGSP3m4nw/8GJf5lIj7vWWZNYHZrCJRC1Y37IBUgAt7DOEqgHotb7pCAu7Iettbqn
	 BjMU7iZf0P7LGecHGCdu9ieeja9CkEljF4Cm+meMo5vhg4elE2JlGF5gtgR8gXUUqA
	 4KCa1JjVjE54g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6EAD184C55;
	Tue, 14 Apr 2026 10:57:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0FA8B237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 10:57:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 00B2442A02
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 10:57:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pCwBFhVLKtqp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 10:57:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DB25142A01
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB25142A01
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DB25142A01
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 10:57:42 +0000 (UTC)
X-CSE-ConnectionGUID: NMwXnKMXTuSP8zaBF7lEoA==
X-CSE-MsgGUID: m+z1KP7KTqi4NYwmu8biIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="99761214"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="99761214"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 03:57:41 -0700
X-CSE-ConnectionGUID: oWoJBydMRGKqBaHTPabrGw==
X-CSE-MsgGUID: /GBcj0kYTr++jXPk6Ba6gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="253465784"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 03:57:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 03:57:40 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 03:57:40 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.14) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 03:57:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G9tMpt5SH7qZPy3anm9nT6FlRlnLdKZGEpnNcgZmkDbUwj5Y3OafExALarcJnumiUGxUKQT3QoAlDBKWBzsVLmi+FkPGyS/M+i/nKFafStWLnKWJWAfR6+5V2TZ7AD/GDD/7BM/bzQYR14nnZh7uWjGbyyom6hc9FwKqeBmM5mTpU9crK84rCoWHAgAocKVahqA4KFyXOyKhDxylRCVVtf9cs4OiRGCIih0X2HH85Ewxvo0J+9zd8URFIs0OaRkJsqxEpY1oafy/IspyPxIv+v6UnQwsbdvltYJjpoYSnk8mWAJqOWQ/CUN7lGc3iJdiXKMspOavABst7JqyG76a4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6YJNmUygMJSs4jc2SWBT4AaJOyAVLgOc8EBcyIUvfTE=;
 b=euVT+L9L7jyCoZeLgZaWwursL0j7Ne8tHQiuia9jRZnKhhrtHZhEz/ueVmI4nQTLUQr2l4k+xhwyU1uMOumJJvh/ejvW+9p+ugVq/tcmxl0YO7ycH4lwcFohODl29eWkS22XHE1UhDcoxVQzvu1c5KcLz7I0UpcF3WTYg/WOyMCy2K/W+pXq8DiwwlgnB6vp1AMyC0lfe6rvP3xL4yhvy9US7HnE1+YZWaX+YSFXZbt0kNQlTGga3G2u+xSM1bY888d+/bSRjU6SprsFBA/pWUuaFkHh49kvxyGKyi19ArW1mTHp5mjm6DmzuhqkYF6u3IkJ2kXuEibxGTqqf79GEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH0PR11MB4933.namprd11.prod.outlook.com (2603:10b6:510:33::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Tue, 14 Apr 2026 10:57:36 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd%6]) with mapi id 15.20.9818.014; Tue, 14 Apr 2026
 10:57:36 +0000
Date: Tue, 14 Apr 2026 12:57:22 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>,
 <netdev@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <ad4dkhE6/blFAH6l@boxer>
References: <20260324130922.562714-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260324130922.562714-1-aleksandr.loktionov@intel.com>
X-ClientProxiedBy: TL0P290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::13) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH0PR11MB4933:EE_
X-MS-Office365-Filtering-Correlation-Id: f92e3a5e-5100-4d54-e14f-08de9a14a340
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: yf/mCukzZoSw61QT2iEDZCxEpRISO/Eif+s+zGLLxxcSJpA5Hq6FljFYAOFgsDvfHKbXoNrWNfpiC7humOlghDu4b+7dQ6f2WriUsWlDAMSymQ+HMsioIzG+L8rZ30ipAtwkNORgo1X6DirjDGkC/XchF0fFHEiw1+KXpSdKj0gYnvs8XSiC5/K5TW4H77JZuK6DBlOGmUrsWxjTpL2Yjap6+YUmKNVuPDMWgX12dKKoMmRUqIlMRr9ZSldq7aD++4rgtJxSxmE63wYU/BeBTjicHa/6sjMF6O+cyQQX0tNf23orvdlLCRQM2aBaAOuHYRE29i7oMlJCblgd5bWMiO9OIWeNie6ONUWVnNKaimdorF+/LWWp1sIbnKmH6cU6k8Q23mhbDlBdkMDCKeZZWe/ZFuFzT69zIzEAXBiO0QFSdo+tks7tiERsr2JLQMpYb7H2sp4gIC3ne4dE95ggADjiPvKn+KgJUHYd4/n95lxflTAvguDMrlDnOUR8U3BStMIMkQ4ELaMCIpQtHZxzS+2WJNqwMkLPBITBfFgD22OIcG+rJXQk4NPlK+yRZdV1Q1QoTQmSHXmrKKnERYYp/RSIWNS7YZkwnBhGK1OgWEed3khVoZndNLNR3DR9nvFny68Wk5SRr8lI7vF5lSQkau1uw/WmbbNeus57OLFjuy0rl0rog/cgN4y7RMo1l+vqa//gKlqH/YQad8O5lG54iP1P1U8Jms5akksC+OyR0EQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?x890RdV8BlWLmBppjOPsseYtjh0Yqpkmn7jglNggAnoyMrwWUr8T4se5p6Jc?=
 =?us-ascii?Q?KX8SgWmMvLMAptHNZpc3IA/3od9gcDDHcTPp2EslMdSUBhhwE03kXHXnVwnW?=
 =?us-ascii?Q?hbWCcJFSG5F6apPLjfvtRsHQO9J4PxiDpzOiQSv+kUA9pBJWufPmglSYgctp?=
 =?us-ascii?Q?HNMZu457xAwqi+hoSBUnlC6fjnbyfGfBSzilRS/ovJDh0ucTHPJtB3i5NkOi?=
 =?us-ascii?Q?NHxw/HmW9MZX1Am+zTMmbmWTD1NV/4I9HcPXhC0fq3qwbnYbI1aaRNWW5K/S?=
 =?us-ascii?Q?c5LfK3TEEUTZFnAW39rL0YfKj9xL+STU7CpBpBTGpChKF/GAkPXF+Cc4V3Za?=
 =?us-ascii?Q?7h8gbSg4fEl3hdnZYYnqZjlQhpUgT6S/sFqq1GfV4J6N0t/c6BNpNYfwnf8R?=
 =?us-ascii?Q?N5A9MhT3RKCjMPXfczNOheOD7aZT3F7y2ixvL8o4mqOa3CHA1UPK8srLsdEC?=
 =?us-ascii?Q?OiBBDAPsDz0HJNvgsuIpOOZj41c2UAgNiXR7YsNsVx/wQ+0up0nRuZSV7017?=
 =?us-ascii?Q?yz8ktrlnbs/Hc1h48YYCNK/lvvApWh+Eqv7J8IZqZ2Yt/qyDKPwxxf1+I1y6?=
 =?us-ascii?Q?4DSE8YK1jFgKsfi7pf3Gkskm9SZEfwHady6ujGJr7jFbe3SkS/zw2gmVlSJ/?=
 =?us-ascii?Q?+K2SGShgI7O8GuQ+aWy+7IR1pgTov+S63HcxVXgApqWdXjkxAUEZzCNOWpwW?=
 =?us-ascii?Q?K3LDebhOwdUrhKvTrAVvi4SBtJlYWMDWKVnViQkPK+BcGWCv34fB3cih2q3E?=
 =?us-ascii?Q?0JmY25V5C6aktap2fXPT1G4EnVvBYYDLVxKA4wxnKiwW7A+HzTF0tefIAwyu?=
 =?us-ascii?Q?zbk4vOSy7iDVeE81cwpKS9TxKNmCxEjuJ/4fyasaQiHYwS841V7xiphKIPSK?=
 =?us-ascii?Q?yLLdQgLWXhf9z6W0WjZLMTYz/W1ZnViQ7lsXyQSLlId64cHCiWIMBJBnKG/8?=
 =?us-ascii?Q?XmBcfEGwFAf+XPNemlbaeZMcPXZg6WeusO+lrBMI0ocMZmfFO83nsTOJWSAR?=
 =?us-ascii?Q?sDP+Q+X+zxNKI4/0jqCHzHRcgSO7aLr9mO04obm1mYmKXjYJrwaSuBrkT3HE?=
 =?us-ascii?Q?DScj/Fdl8Y5Y6Xd7z6qK5Jq6EFE3iq0G0JGTXC0r3k4NNQyylKppyXNl0wnv?=
 =?us-ascii?Q?3GE508nHuUDl749YvCyLb8yeVo6L07tukTd2KDW3CLVf0Iohg438a/+PgbWk?=
 =?us-ascii?Q?D1r/kIZd+RF8u2kxbXkwfV3Xih3AC2yLs0+4gJzd+h2MxyqVywsO1pMwApcm?=
 =?us-ascii?Q?f0beXcOiZ15hccBWBzz6UnIu8kgpB63ku4KXO/Cd4VQd8gyF4LnnRTCd+ZuB?=
 =?us-ascii?Q?0Tc8XXXFFV7SzDnXhosJxmdEUhmOjvHfPucln1JLZP6b+5GdeofIsI8Tf91n?=
 =?us-ascii?Q?ts2xjVO/RcvB0ymfTLA6Dm8hP7eKDSWutDG5H0z/53NlO7jFbofsofpir7Tk?=
 =?us-ascii?Q?l2negrodDXvButd8U29pQYOJQsPH11V4qtQFwnp+wWVL5+OVFId14iPjf2EE?=
 =?us-ascii?Q?GLJWdhyC+8cSC1+xtR0PcFhH5life26XCAS4GCjmfSXyQ/klJXqs5BnISw6V?=
 =?us-ascii?Q?Ebkd/T1vK5WaGP1sv4CnNV5x/ctMihJiUplv7M/hQxgzyR+PsJZ8V0AgMTxu?=
 =?us-ascii?Q?7Q6Y8tG4wYbrlqXb4MSHzPfkIY/enNeIngDpFuu5/8n/nLDXqNYys/rrpZlT?=
 =?us-ascii?Q?0UJXmz1ifatnQcOd3MC/n21zy3SzArvssoxGp3a/ibBY6qgEVnOZ4Xl3wIIm?=
 =?us-ascii?Q?eE2WqvF75rTPfdhHxzMe5WhnKkAdLgE=3D?=
X-Exchange-RoutingPolicyChecked: edyPEu578qPfDpmf6cBE7KxRYrDslen+3PAFkJxNADbs2JWxh5WwU9Jbnm7HFLyqHdAC55Y8DK4pcSR5SbHF5N76jyCY2QlTB1mn0BHqf1/mzAaAcrePUNh5Bdu4TqotCChVNIwKgtcApKFU8dMoyld93gP4xEyUHcPb39ZbTiup3+oe3sZlO/a1pqP98A5EQFTRj1MXzVGPnUek1nJOFS3riMNVKTALMsRZVUtkjdkpGHaNYaETNSbgAjHw2UK0fa3OBIGif7RZmPB5/fPZ4Hri0IK2bRTjM8blsE9mIH9DBwMslZGygfDttwX7bBaieGZRnQcyzJ+Ti3BvThFIGw==
X-MS-Exchange-CrossTenant-Network-Message-Id: f92e3a5e-5100-4d54-e14f-08de9a14a340
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2026 10:57:36.3643 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UrwKlGFTMezhTK+CQ9MPgoH21ZNZAmUbFt/9IJXsHEwOeHW3FLf2g/zfmfIvBzvCsg80ErL9sydkr7A8glXGrRLV8aMR4tiHUsmqgymn4jQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4933
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776164262; x=1807700262;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=58hc6O6ObDosx69C8OD3E4Ax5CrJnOZZic3SpI9pvag=;
 b=B2iQnkdOY8N/RyQg8PGn7A+yBynwoFHXXYlkDg90M7KGQ5fiHGbtp8g+
 HkVHwIICZDS4x2AIqrUiCiRLteksJzw6ZxBIvFCoDrtIynDPoDaEi6I2x
 qTUBpkwoviF7+goVDUSp18YlYhQHlNd/a3nHZRL0iHu9SRa8W4YMS4mM1
 xiHUMwUp0I7es93NAuifUqBJxwXSDb2srUcwL3jnx+UNgcLurvgu6bwsC
 jw6HhCKRTXMfypOyJqdmTobBeaDJs0ZmggKRUjvkNbNZi34U8GbEiDDzI
 doMYbKPMjwCIieOx29EdKVjUcqydydLSev4Ir5g7FjjNUaWTcBFECdVa6
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B2iQnkdO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix
 napi_enable/disable skipping ringless q_vectors
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
X-Spamd-Result: default: False [0.89 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:kuba@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 4A06E3F9044
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 02:09:22PM +0100, Aleksandr Loktionov wrote:
> After ethtool -L reduces the queue count, i40e_napi_disable_all() sets
> NAPI_STATE_SCHED on all q_vectors, then i40e_vsi_map_rings_to_vectors()
> clears ring pointers on the excess ones.  i40e_napi_enable_all() skips
> those with:
> 
> 	if (q_vector->rx.ring || q_vector->tx.ring)
> 		napi_enable(&q_vector->napi);
> 
> leaving them on dev->napi_list with NAPI_STATE_SCHED permanently set.
> 
> Writing to /sys/class/net/<iface>/threaded calls napi_stop_kthread()
> on every entry in dev->napi_list.  The function loops on msleep(20)
> waiting for NAPI_STATE_SCHED to clear -- which never happens for the
> stale q_vectors.  The task hangs in D state forever; a concurrent write
> deadlocks on dev->lock held by the first.
> 
> Commit 13a8cd191a2b added the guard to prevent a divide-by-zero in
> i40e_napi_poll() when epoll busy-poll iterated all device NAPIs (4.x
> era).  Since 7adc3d57fe2b ("net: Introduce preferred busy-polling",
> v5.11) napi_busy_loop() polls by napi_id keyed to the socket, so
> ringless q_vectors are never selected.  i40e_msix_clean_rings() also
> independently avoids scheduling NAPI for them.  The guard is safe to
> remove.
> 
> Add an early return in i40e_napi_poll() for num_ringpairs == 0 so the
> function is self-defending against a NULL tx.ring dereference at the
> WB_ON_ITR check, should the NAPI ever fire through an unexpected path.
> 
> Reported-by: Jakub Kicinski <kuba@kernel.org>
> Closes: https://lore.kernel.org/intel-wired-lan/20260316133100.6054a11f@kernel.org/
> Fixes: 13a8cd191a2b ("i40e: Do not enable NAPI on q_vectors that have no rings")
> Cc: stable@vger.kernel.org
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

The problem comes from a fact that napi instances are kept after
rebuilding VSI with lower queue count. Instead of duck taping the driver
and adding conditions in hot path (!) we should fix the issue at its core.

I'm gonna send a fix, please drop this one.

pw-bot: cr

> ---
> Test configuration:
>   Kernel   : Linux 6.19.0-rc8+
>   NIC      : Intel Ethernet Controller XXV710 for 25GbE SFP28 [8086:158b]
>   Driver   : i40e (in-tree)
>   Firmware : 9.40 0x8000ed12 1.3429.0
>   CPU      : 2 x Intel Xeon Gold 6238M (88 logical CPUs, x86_64)
>   RAM      : 64 GiB
> 
> Reproduction steps (FAIL before fix):
>   # 1. Reduce queues so excess q_vectors lose their ring pointers
>   ethtool -L <iface> combined 1
> 
>   # 2. Enable threaded NAPI (completes fast in 6.19, no hang on enable path)
>   echo 1 > /sys/class/net/<iface>/threaded
> 
>   # 3. Two concurrent writes to disable -- fires the msleep deadlock
>   echo 0 > /sys/class/net/<iface>/threaded &
>   echo 0 > /sys/class/net/<iface>/threaded &
> 
>   Both background tasks enter uninterruptible sleep (D state) immediately
>   and never return.
> 
>   Observed kernel stack (W1, holds dev->lock):
>     msleep+0x2d/0x50
>     napi_set_threaded+0x10b/0x110
>     netif_set_threaded+0xe1/0x140
>     threaded_store+0xd2/0x100
>     kernfs_fop_write_iter+0x138/0x1d0
> 
>   Kernel hung_task message (~120 s after trigger):
>     INFO: task bash blocked for more than 122 seconds.
>     INFO: task bash is blocked on a mutex likely owned by task bash.
> 
> Validation (PASS with fix):
>   Both background tasks exit within 1 second.
>   D-state process count: 0.
>   Busy-poll (net.core.busy_poll=50) + 50000-packet UDP flood with
>   1 active queue: no NULL dereference, no crash.
> 
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 28 ++++++++++++---------
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 10 ++++++++
>  2 files changed, 26 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 926d001..5042f8c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -5182,6 +5182,14 @@ static void i40e_clear_interrupt_scheme(struct i40e_pf *pf)
>  /**
>   * i40e_napi_enable_all - Enable NAPI for all q_vectors in the VSI
>   * @vsi: the VSI being configured
> + *
> + * Enable NAPI on every q_vector that is registered with the netdev,
> + * regardless of whether it currently has rings assigned.  After a queue-
> + * count reduction (e.g. ethtool -L combined 1) the excess q_vectors lose
> + * their ring pointers inside i40e_vsi_map_rings_to_vectors but remain on
> + * dev->napi_list.  Leaving them in the napi_disable()-ed state
> + * (NAPI_STATE_SCHED set) causes napi_set_threaded() to spin forever on
> + * msleep(20) waiting for that bit to clear.
>   **/
>  static void i40e_napi_enable_all(struct i40e_vsi *vsi)
>  {
> @@ -5190,17 +5198,17 @@ static void i40e_napi_enable_all(struct i40e_vsi *vsi)
>  	if (!vsi->netdev)
>  		return;
>  
> -	for (q_idx = 0; q_idx < vsi->num_q_vectors; q_idx++) {
> -		struct i40e_q_vector *q_vector = vsi->q_vectors[q_idx];
> -
> -		if (q_vector->rx.ring || q_vector->tx.ring)
> -			napi_enable(&q_vector->napi);
> -	}
> +	for (q_idx = 0; q_idx < vsi->num_q_vectors; q_idx++)
> +		napi_enable(&vsi->q_vectors[q_idx]->napi);
>  }
>  
>  /**
>   * i40e_napi_disable_all - Disable NAPI for all q_vectors in the VSI
>   * @vsi: the VSI being configured
> + *
> + * Mirror of i40e_napi_enable_all: operate on every registered q_vector so
> + * enable/disable calls are always balanced, even when some q_vectors carry
> + * no rings (as happens after a queue-count reduction).
>   **/
>  static void i40e_napi_disable_all(struct i40e_vsi *vsi)
>  {
> @@ -5209,12 +5217,8 @@ static void i40e_napi_disable_all(struct i40e_vsi *vsi)
>  	if (!vsi->netdev)
>  		return;
>  
> -	for (q_idx = 0; q_idx < vsi->num_q_vectors; q_idx++) {
> -		struct i40e_q_vector *q_vector = vsi->q_vectors[q_idx];
> -
> -		if (q_vector->rx.ring || q_vector->tx.ring)
> -			napi_disable(&q_vector->napi);
> -	}
> +	for (q_idx = 0; q_idx < vsi->num_q_vectors; q_idx++)
> +		napi_disable(&vsi->q_vectors[q_idx]->napi);
>  }
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index 894f2d0..3123459 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -2760,6 +2760,16 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
>  		return 0;
>  	}
>  
> +	/* A q_vector can have its ring pointers cleared after a queue-count
> +	 * reduction (ethtool -L combined N) while napi_enable() was already
> +	 * called on it.  Complete immediately so the poll loop exits cleanly
> +	 * and we never dereference the NULL ring pointer below.
> +	 */
> +	if (unlikely(!q_vector->num_ringpairs)) {
> +		napi_complete_done(napi, 0);
> +		return 0;
> +	}
> +
>  	/* Since the actual Tx work is minimal, we can give the Tx a larger
>  	 * budget and be more aggressive about cleaning up the Tx descriptors.
>  	 */
> -- 
> 2.52.0
> 
> 
