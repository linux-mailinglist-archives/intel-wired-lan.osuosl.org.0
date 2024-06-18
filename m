Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F3E90C377
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2024 08:21:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA7FF60AC3;
	Tue, 18 Jun 2024 06:21:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C3c9z7w5Mmvu; Tue, 18 Jun 2024 06:21:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED58E60B2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718691687;
	bh=A+vQ2sX4qDgsWHIuZnmq2zDkWRYBfMYifpE43JR/VrE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E1xpxlNjE/Hn7z1CnMwzwN4uiT4cIA2UB+H4iQDdIskiN1MzPr5NFa5Rf2202Qab2
	 jLdP6ypv3eDfxO+tW86s1OEkJ/AqpxDDrubr8kn1ULA1BnmWC0HTAInIQYhItWTHDs
	 tBCQL0JMsvet92wDU5jCV3za5BILHlP5q2SHTjg/Yl+XsmnzIS6kxc22kbUsmkLDcn
	 NbJ/cQGZRm078O/+zE1fx8rU3qTi9BSvgBUzHPLM1GOqXQVqxzK7k1zNmh7HGjaTJa
	 qouzgnykVJfRjSBy5JjhdrzzQvrCcfW5eptCiJLPPWQ7AwA5BGOOsO9Nq5Y5ER23K4
	 cPRKTkhm3s+Wg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED58E60B2C;
	Tue, 18 Jun 2024 06:21:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E28841BF284
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 06:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD14340180
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 06:21:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FH_-hxyhc9_1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2024 06:21:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B07AC40154
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B07AC40154
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B07AC40154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 06:21:23 +0000 (UTC)
X-CSE-ConnectionGUID: YD0p6RnUTK6gj/7WNpQ8KA==
X-CSE-MsgGUID: OsdCHQUORKOqvc0NhyqjKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="15781404"
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="15781404"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 23:21:22 -0700
X-CSE-ConnectionGUID: httYF3LRRxuFA+oO/OZumg==
X-CSE-MsgGUID: JH2qvDW4TCWmW9NxpM5A8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="46556283"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jun 2024 23:21:23 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 17 Jun 2024 23:21:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 17 Jun 2024 23:21:22 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 17 Jun 2024 23:21:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YEiq/StQ7ul1ni3HGRG7jw33iCkT3opiJe/kH3b06xmypQjD7GC465ydd36kBcKYWvDuq4t7hLPTR0p14qoa3Rp0BMgsr02CSVYmHLnuuFruyTqZR8YFJP49Oc/oAsztvdKHAxjHrbc3a/7P+KAXL8T1XEybi9/JTsoJS6rEyuZAzn0XMj1TmCgM6L+S5+ndKF7AuYVea49sTSgNWFwNLrgWjXP+Ckk6PBsB+l8cxrWxM3lT9dNnqnHwT68wAg7qc9vLT2pugeIQOHg6J5bSuvlb83mBkGOXZncBMlueEY5Az2f6kkGAc1UnKboDHKDoEWd/oCSgb27cp+UveuwW1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A+vQ2sX4qDgsWHIuZnmq2zDkWRYBfMYifpE43JR/VrE=;
 b=loHJ6mUH2PGfjjUjItWjce19UmGvNypjdSZTzf93O9YMcNSVoBhyJDkCJAs/YxmtiwXiBWqjqtwfbS3dv6mMi6ok3C0wVJAD1XTzlXNDuX47xeg7l1uqrzHtHWwCINgnXNskkq0oEHqMVEY2cXI6aWmNGBgOLliUD1opsB09VFwx4c57rUGlIHltJRBEkeC0l1n+jARQ3hDEpaw31+U9Ez9E1B0sMxafSty2XXkBclXHbGCySn09hDERpm7shJqzEBxnJ7MRxOhrP0lOG4E1/QJD64qcUZlGGGZyYLEsjmZasKkts2VAWbc+JNU8Sp2YN6tQTjnVP9nTrkVd3Z0l4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SA2PR11MB5052.namprd11.prod.outlook.com (2603:10b6:806:fa::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Tue, 18 Jun
 2024 06:21:20 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%5]) with mapi id 15.20.7677.030; Tue, 18 Jun 2024
 06:21:19 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VSI list rule with
 ICE_SW_LKUP_LAST type
Thread-Index: AQHat1L64U51qvyXJ0qQ03Tjt4vPLLHNIMCQ
Date: Tue, 18 Jun 2024 06:21:19 +0000
Message-ID: <PH0PR11MB5013AC0D9E4C0B43E937956D96CE2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240605141744.601582-2-marcin.szycik@linux.intel.com>
In-Reply-To: <20240605141744.601582-2-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SA2PR11MB5052:EE_
x-ms-office365-filtering-correlation-id: 99f22cb9-40d4-44d7-f089-08dc8f5ede49
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|366013|376011|1800799021|38070700015;
x-microsoft-antispam-message-info: =?us-ascii?Q?Od65O6I898EPGOUH/3PyLxdvSbtAXmru/mHty5br4JCBIEqTnCzB5ohrLHCu?=
 =?us-ascii?Q?m37HEkW42/OHR28dEnk1NuUqPUJYWtD9yFw4w6fJyFAvkiL5ZcMznmD/O3Ty?=
 =?us-ascii?Q?VW7JdQoQA5G1duPUnmk2/q//asFTBDgTnT6Jl4Gs8UH6mPRkb4cmStL2h3d0?=
 =?us-ascii?Q?BJ/MyBrzzaZZxieqeh+zre2HSO9/PuCkhiCTumcfHOfE2KvjWStZxXZifqGm?=
 =?us-ascii?Q?vsb4Z6vcrxyl/2QbfhPdrmDdT5NnOXLrjEaJuEqPBD7XYCWDYMt0vL9nttiS?=
 =?us-ascii?Q?K64Xb7cgpUFQsmwtsD8ExhOy6p+53E4mD9fsJLE6/t8D3X6NgzpM17tGmD0D?=
 =?us-ascii?Q?sqb7XF3/JLJecMU0xEsqxnyULFb/UJ04+FtTY8s20Zaifk/DVtEI97OQmhgo?=
 =?us-ascii?Q?0hxhI0G3ByI+Wjanla00fWkeFX2GYrnv68kEqcq2Tqwgb5JFBBIJkRHTYjDi?=
 =?us-ascii?Q?TqIE3rNDPi2b/EOjIKoD0oBAi4LUPlJgDsWBA8qFhQEH2B5AguNIfOj2DrXv?=
 =?us-ascii?Q?PooZ9DdoOUHKYG3xjBI82mhJXwT3bYSltoNV0OzS5ZTHmROQL8YhGO7rLwqJ?=
 =?us-ascii?Q?z0KEqVNrT8eb1KHcMeeQsHr618updSPZ7wM1k2pX4n8z5HsYan2m9ildBM5X?=
 =?us-ascii?Q?1EGsVf2ghKTPxt6UnLeJwkY8LJPCrxslaEG6YqRPP/2IkImTxX8o4WH4lA0B?=
 =?us-ascii?Q?5sj5/cklhbhpATVxLyVNw0agBKcvXYd3s6j+Qj6r1+PwAOEkIOVe+WVbl3i+?=
 =?us-ascii?Q?RNms8o5pc7NkuUOHvotvG86zzuf4tx8eR7zO9WI4N3hMS340cQnEjWX2/iGu?=
 =?us-ascii?Q?Hk1JJVJP4f1N18gQCoGKVYQ193DKiukx5HyCYe7dm3xVA/nmVSGaPINlrfDn?=
 =?us-ascii?Q?MgNRZuEsqf6PnB5ybdrDKw6InWK0d10Ha3TS/XW9dmNj4ZUq+prk8PhDOoHK?=
 =?us-ascii?Q?pigIXBd7ogLeeykbYTuK/uNKp9zUSvyitpHogDorG794eHnOz+A6cQcAEYfj?=
 =?us-ascii?Q?ombFSys5pyxhwDenidRPuFrhcFpiJgSQgRD7i7SszZO2bISHl2mW/AAfnkqs?=
 =?us-ascii?Q?N9XPZ0Z6oj5nA0kDUHg4xpAmI2zMgZc8uTWLYR1jX8yP6AM4PtbIqCE8ZU2i?=
 =?us-ascii?Q?Gk2f5zoUsP7xFUnZ562aOmJo1sIUbTd5LboiOoiYXVGdXfjg/oB9t04zliOk?=
 =?us-ascii?Q?ZIRR9IZ4EmikzOGG8oSbE5XStt5pvJoOvNzDDLOhZu25PYNohrLUbrx9DW1i?=
 =?us-ascii?Q?HbHdgQL7fgXNdPtdTL9EoWPiaNU8T9ak9dpa25kQQLn6Labga7FPaWsvOYl9?=
 =?us-ascii?Q?s1GzAynwAREofbd8UT4DdIx5oulJDaVhjdKk8VqeSB/V4jMtj0Hs4VaiRnAO?=
 =?us-ascii?Q?e6pFH/w=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(376011)(1800799021)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9WO7fWAsc4T1QNsaDu5oQQ7YECKEjdim5oUsqayk6PPLU1EmpK+slcmA5mCw?=
 =?us-ascii?Q?zCzsTIWu8S8lKhpt/85Rptvf4PrQXYpf8O6rtANpuXbChm4KiS6zcJrBMI7L?=
 =?us-ascii?Q?3aBp4vutP51rtGrqHZWDWSh/0imrOPw6xgF/nLY1k/oUIALuOnLUrKe4eizR?=
 =?us-ascii?Q?F07VKcbkhUne2aD4b5pFXVEVSml7CC75idQq5TKQqK16Z3B3BORpk8LyZx6S?=
 =?us-ascii?Q?EDDZaWT6C/Pi+lSyKIS6PN4zrrD5FFGhuvgN7UnUoYzoyLwhiGjPHbli/ExI?=
 =?us-ascii?Q?r3rJdCOJMuEONaTZnAtceXgwkfML/MqOPmvpDT930eVvOsBexCxvx/3IpQM8?=
 =?us-ascii?Q?czv+gLAzB7taE9hM7COzhUKr4el+Bpud02uiU+nqtoMWo8p8nU9NdgpdFHAz?=
 =?us-ascii?Q?AEsUH0VWdFAz4HIdHVrDEkv8WHkm8Z0dH2ZPmnPYlIAdFLBv6qjhTmKSAh6j?=
 =?us-ascii?Q?zkzCKHK4mJNizMcBOIRXawAffkHy2YYb9wfXXHvqOYJr9u2ZDZLybb1ZvnUZ?=
 =?us-ascii?Q?1LfENRzUwtsLAdbl7ioIvg7Uo4tTaVVUC5uSYgfhNFMHPOfk4EldyfAuJ9Tj?=
 =?us-ascii?Q?RuMplWF4qC7XBbQ7IswUm0Z7fFoBa2CGYEFdjE+ktSZBPIDQRZ8Nrwr0JH95?=
 =?us-ascii?Q?1F3vHYDIdFqiuvuk83yU/Fd0bLBwcPv9kME64kjsb1H6Atv+ZVzYAdgNRydI?=
 =?us-ascii?Q?YZ7k5cYMoEKT43z8iZ4555gx4bAI0Kla8UUY/YHeYcbk77b9jCGtbTp0J9Np?=
 =?us-ascii?Q?DKX17q41RTzcdw3Ish25GNIURt+HfFLFEa26BDEalQ0scQo2P9Dlg3VLl5HL?=
 =?us-ascii?Q?xKSiC/xb1D1l6+tGUeW5i+GmvfD0Kef7qUNTfTHRXEa3129dhzzfqbhsV5bm?=
 =?us-ascii?Q?FE4bwFLZ0Je3LDBJkzc+Wtq+Q1DlxdsVcJSEyPk+mmGzyUa+d2syIVMfKY4+?=
 =?us-ascii?Q?b57Ux/OTq/47r8ow9r/8D/F5W7NU8YAIBbg9czw4TeFLpEX0rEvwDYIbdF28?=
 =?us-ascii?Q?ISuCNsKdfCjYC+PH+ViEXhaFPUt80gCLpgtkpDQ5Khbw5xP0tubOk09rW5oK?=
 =?us-ascii?Q?8YsA1Tw/dg2JwyUCw7wTGBxpFGIma4P3mXzy3ifLdMy7pS3VVKwiuQ5s9A4/?=
 =?us-ascii?Q?OlOWHJmrbMRb0EItqwZTXXCTQ3QrQhWnDCt5bKciuLTaycPPlTjTU1Iu2D9O?=
 =?us-ascii?Q?QPN1a7LJhJLnlQPHcswRIgBr4sV2UGyFdJd0qu5u4BgCcv8uQeI8HteSa+dX?=
 =?us-ascii?Q?iXqcM5xw3rn+rHEkwG1YwasQZuEOKpn0zXmJ8O8otyySYfIhclpRRAQRbwib?=
 =?us-ascii?Q?gidyEhOrrDQ9HMiQMVfF/rzf1HY9vqiC1CjTcgRYC24tNjGOKs+vKCIdOh4J?=
 =?us-ascii?Q?QShbyIEhJg8+jzaYEOsBYVBZQ5TxKngNEpGLohMSp/GFE+JetT1oAbXaN6j+?=
 =?us-ascii?Q?Q8A63RxBN3Hyuly3GW103Hj6HHBQQAedT3IgJ6srulNCk91lmoRDB2sb8qfU?=
 =?us-ascii?Q?wrcXnIyGqEDjl5t5N8Y/gohbiYx4u66oaOZdSnX/cD5LYkNYKwfntnLQo8mS?=
 =?us-ascii?Q?qCYp0xH74noyj8DSg3cEZMqP8IgyEvSBNQ5jYsqcalkiNeaJV48VET2Exu4w?=
 =?us-ascii?Q?Zg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99f22cb9-40d4-44d7-f089-08dc8f5ede49
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2024 06:21:19.8445 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YKluHM3SmNS4i5iDi8k4XHzwyxiLSlbE1A2UjBmndgXWccwLmCtTKjPRrAeMvGYAPH46N5fAMyviCZ5lzK6AU+7I8V63bb3/vusEe58UEQc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5052
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718691684; x=1750227684;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2vWtq0FoVXjgqz1Zs19iDNLjOgkcCs+2VwdMjlB3zmQ=;
 b=W8gjGkVNdIyGdGypwApc+n6SIrv4HNJTrBGdlRwk5wA8uNKgjZIrO8Be
 /PMOyuXBKpCrOpYQjO1y/7z5+Mx15XZiu2u+xk758tSGPRnda0x5TZpmg
 HCDXD+8rv+ix7MYPPWmKU6S8wLAd89pvyLR704AmJQA75eWy6+cyqyQo5
 o7kQl33ZwM+WcrqErED0A3DawKwa/V1BBAWOkkzkD6VTjrRniRM+UOwqW
 UBqWwyRGHHeuqcZVWFVZpEfsnxFIP0VC6h658VDfScDm52zdy8btevrb6
 I4/xu9MjiNLYjISTTueJGtmjCCCyDhBaVfIfo5GMrcUVitTo9/uWsOctn
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W8gjGkVN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VSI list rule with
 ICE_SW_LKUP_LAST type
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Wednesday, June 5, 2024 7:48 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Marcin Szycik <marcin.szycik@linux.intel.com>=
;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VSI list rule with
> ICE_SW_LKUP_LAST type
>=20
> Adding/updating VSI list rule, as well as allocating/freeing VSI list res=
ource
> are called several times with type ICE_SW_LKUP_LAST, which fails because
> ice_update_vsi_list_rule() and ice_aq_alloc_free_vsi_list() consider it i=
nvalid.
> Allow calling these functions with ICE_SW_LKUP_LAST.
>=20
> This fixes at least one issue in switchdev mode, where the same rule with
> different action cannot be added, e.g.:
>=20
>   tc filter add dev $PF1 ingress protocol arp prio 0 flower skip_sw \
>     dst_mac ff:ff:ff:ff:ff:ff action mirred egress redirect dev $VF1_PR
>   tc filter add dev $PF1 ingress protocol arp prio 0 flower skip_sw \
>     dst_mac ff:ff:ff:ff:ff:ff action mirred egress redirect dev $VF2_PR
>=20
> Fixes: 0f94570d0cae ("ice: allow adding advanced rules")
> Suggested-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
