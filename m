Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D21901E9A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 11:54:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB5564043C;
	Mon, 10 Jun 2024 09:54:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DEMUx6NoTWDN; Mon, 10 Jun 2024 09:54:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D311405FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718013294;
	bh=dQ6Zx0CYcl9NMOUxGRrqrmfkKi4RbZ039XT8tl+NJjU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rjhS+hUBF+8rc9YuUMcjNDNmz5MMVFUwh3wEsxQotSBfBhyWWbhS/OF5l19Sim0T2
	 6+WsT7x+yQIgonxb4QSKKPjU4L25xC7n5Kn/SF25DCVifnfrvz1GKpD5/8fPD8hQMf
	 O1hQ3ChaghX21YooDgTpzlbPdeymzFP3QmsqeCevpr6IKQkXG+tpEZ7YxCfbT9bXV9
	 zh3sfo/WeNYYXYJS4Kp2p8hkigCBFD/mYWUfcbHo7ogZ3LytowtIC8078o99SD2e04
	 39LLlemTWlok/dYtoy+Exlzl8BnIAuXEvhU1UhrzBX2jAbkaMak0/hERJwZJsH1JoK
	 IBFiHVWlvCRZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D311405FA;
	Mon, 10 Jun 2024 09:54:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82B2B1BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 09:54:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6EFF3606BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 09:54:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N0A8yXKQXEIW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 09:54:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4CD9460655
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CD9460655
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4CD9460655
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 09:54:50 +0000 (UTC)
X-CSE-ConnectionGUID: ia1+zPqxQsKO7n6tifrwBA==
X-CSE-MsgGUID: HqGz7XSgRuWmWggyD3kIxw==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14615715"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="14615715"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 02:54:49 -0700
X-CSE-ConnectionGUID: 10w0ucZIQF6DajYTSSZYdw==
X-CSE-MsgGUID: vs8oUNmoSyiN9m5fZNFhdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="43953961"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jun 2024 02:54:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 02:54:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 02:54:48 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 10 Jun 2024 02:54:48 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 10 Jun 2024 02:53:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YEPEc4pbEAT+gNn7Ci/CBl6WbN3pdsvo8uw0xj9amd72qy3s0pLq0GEJHoaqsnwYJW2Jem9lnpChMhVgxdilleVEc3efLuAc9xeiEj6+ff3ebv7Gf4cWOsVdBqctD3w0fSdDXo3cZnwU5z5yRinzBvuQOkjAzVjYqgAvk4MY+gdvIzKOg8GCPsInFMVdBKZ2+BKBW7lCDdXofT+2RxbUI4zuZw0k65GRv74+BARV+BvwGuyjZh01qrszIxCJ+qRiSKpIcQoGeKgmlRf5SJTbwDR1zHdUbVfrNwYqIbDGZR8nM6mpbx8zV/ivmvcNXHnREX7mg179WsU3p3ecvKDASw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dQ6Zx0CYcl9NMOUxGRrqrmfkKi4RbZ039XT8tl+NJjU=;
 b=VKeDCr/0kt7ilVMPdzTSHL9tQb8adwa6QdG8Ed2X46jlZ1oEki9mk4iiExCLOV1VY+Tezo/FlPPp7Tj02bpxaWsPZ6lw0aDfJAM+YzOq7hjsi+mCxG7cCRBEDISV41d1qg98ugrniC5MR4u1wqoE4rlGU23dQMBzbNDmAd0IlERqYLshsa5lMzIhvluuwCT+XPPs+SI6R73S0XCkBmYRfB64YWV+joa0/5IxlcM7TpeaYy+e5I6C2AafhTeJjfrmnNt/6hW9O7dZzsoF0/pnA3V7DOFO3J6A4/fDzRPlFKtRnM7+Itvbjgf6LZWojabkIKVwTm62d0IHY+V9Nf0evQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM4PR11MB7373.namprd11.prod.outlook.com (2603:10b6:8:103::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Mon, 10 Jun
 2024 09:53:52 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 09:53:52 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v5] ice: Do not get coalesce
 settings while in reset
Thread-Index: AQHauNRoN6FzpoM54Uq65PsA4ND2+7HAxgSA
Date: Mon, 10 Jun 2024 09:53:51 +0000
Message-ID: <CYYPR11MB8429BE3AF9299834A36B53AABDC62@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240607121552.15127-1-dawid.osuchowski@linux.intel.com>
In-Reply-To: <20240607121552.15127-1-dawid.osuchowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM4PR11MB7373:EE_
x-ms-office365-filtering-correlation-id: 7ab39916-9ef0-42c1-6363-08dc89333bdb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?NRu7ptfJRbkKoKSfeERn76RLlPADcDge8OXYKsJlhUYp/ZO1pII/EtjJRjAM?=
 =?us-ascii?Q?7BzWGGbj4ALQaQzIf9fk3R8Um8Zb0Icf0sRfVew74lYanP0LnLGQOuybCZfv?=
 =?us-ascii?Q?k74Iqtd7tKfUcaITW4jajtZY1ZEMXEVA5JImRAvtHPZJx/m4K1YdFz6KsPSv?=
 =?us-ascii?Q?FM2VolPBxgF5C8dqxx3uxbhzAV7ZOIE71pw0qP+D5I9S1cScWPpFVjNVNn4d?=
 =?us-ascii?Q?uDYTRzKQkwp3sXmt9b2SC3V8rtE0b4uv31lfVMVbHQ/avMrHNCp9jrijSeWv?=
 =?us-ascii?Q?zFvLNQ0b3AUrNVqiImJfDNJGPfVIvkRv+34oQryPf51yv1RdTyYwFdNc4ai5?=
 =?us-ascii?Q?RwSfXmFLkl73V0a57OSk7JuKfDbTyvOf84dQXHctGy9dWqjbkMHswlB01ytp?=
 =?us-ascii?Q?8PZhoDOKzCMNJ1YGtYWTXOzI2BbgrGNh36ijGd1cjTNxgod1dw9EHiD+aY03?=
 =?us-ascii?Q?qPNYPIkRO0czq3ZlBEe2tPZZCLUEdh7NS79V84ATjBTYeoRBdZW8hBbx0w59?=
 =?us-ascii?Q?UvMgmxo5NecLre+U1jQulDk+OpmfP9yTePsRdoonp+5374jQ0PZrWGP2V//k?=
 =?us-ascii?Q?4tZ1d92hnz4bkBxEiu5aM+zStvPnk+6BBrQHX+/5zx75FQLuIIRyDjmcnuC5?=
 =?us-ascii?Q?IOTZGSGG8j2k32kSH5RwVOqdV8u4DW53Ioz9nGTZSMhTX9i55w8E5QhdJdPB?=
 =?us-ascii?Q?OVqtSfC2Gx5qeVLZJd8GKSVQf5t1dQZf1DjmnFjdhBFnN10mKd+MgEld62xO?=
 =?us-ascii?Q?pNmthDo6YOFh7P7mkrGePctWu/NpvX4Ea3M/GOAUuvkWFrc0V5WOo54Ww+Wj?=
 =?us-ascii?Q?Ve0137U33pcMAiOcPGH7R2IjnQWfVSdR7U7tvyK+05X90VPy98q3DCEYhdNE?=
 =?us-ascii?Q?i182iLGZBcELOb7ELaOjHz1efGuIpJ7VPO4qNrVoqg5GdEKXT+CRE+U3j71b?=
 =?us-ascii?Q?RNOAV+vPMv76JGt6jcxP9rBkVGXv9U9kJoY1yppvZihopn6+reY7AlGl4YWh?=
 =?us-ascii?Q?xuir7//THwrpcSNJepfnrJtSzVHX54EB7mruFIh3K2x6MBExuLSV/mlHL81m?=
 =?us-ascii?Q?c/LaI531AjWoA9q1lpdbuuhlALQKhhu/HYVuFJSPRFFzGzhbZHMxcwwOUbwD?=
 =?us-ascii?Q?ew198zYX7qzIcw8VIvHJQX1x3BEi4nSUfJUhRiddUeXvbtKt4ITYyxXCxQg8?=
 =?us-ascii?Q?foCpvUQifoHO+a8minjpSpOdfO4XKvSYkVQbMChdNWp/bDLevXtaS03WeC3y?=
 =?us-ascii?Q?FJMuQOaAttFJcPILxSZvCauaKYx9kp41cwTzWwA6EBagtx7eNRXAmwh3hAn4?=
 =?us-ascii?Q?sh4j9Jj7dDaz1gl9KJ0V+mI9?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wMelPvON/X7oCvhnAtuLWxKwmX+ltsiardsjDQA0dlvb7IzgclhlmpmmVABe?=
 =?us-ascii?Q?aDCdA7yk2cUZDD7g08HIL8Po1IR0D4iBT1o+b13MWPEA+3rsgcXDh0qA73ly?=
 =?us-ascii?Q?JBWasu+EXLR8pMx3b3cVeqHi6hzju1cvMxx5AT6mBhPlhraPLZP0FFILoMOj?=
 =?us-ascii?Q?jM7Si2C1pkn26JfEe1MlS6du80lGxqjeyH1PJziObcyCgbE7RjiG0Xz6SoI7?=
 =?us-ascii?Q?LzKTD7osOXv/pvq1Yqt44OGNaGWgGImktQlNzqh2V9touVr9BlbmzBfMgz00?=
 =?us-ascii?Q?mv7nsogTAEgcAOf84R6/O5p04NWdgHeRa1nBiptDMR0mKSl0aLl6VkO4GlQd?=
 =?us-ascii?Q?wejJDVfIxt3LPKNgzSZRbYekXiJJepOoAdcQ92cvw0yvg0wIw4diyMHofQqY?=
 =?us-ascii?Q?rNQbJFF/lzAglILhyJ8EVObOkAVCAtrH8eg7ya8jygNu8izwFck6mbCyBoOJ?=
 =?us-ascii?Q?fFWLU5aB8N5AGXBYszrq2XXw3Bky9F5eZMN0U7JT+8HSKx+bBOIyvMEl+xFv?=
 =?us-ascii?Q?UFv8NNqkmpOiC25+QHy/b1Ihv83I9Vfit+bRNen210z8K9ClGX3lXaIGiIv9?=
 =?us-ascii?Q?Rw/5jpkcB29WkMClq5nC4CeXAiP36fzP7A7WTQ1SfAYKq7nR8Dfn7ea+z5vB?=
 =?us-ascii?Q?a6Wf/e9UPncB8Ki7VTmiLyVpkBDjYgapEjkbmdY1Q+wBzXXKlgkXKZJd2pq1?=
 =?us-ascii?Q?KVkLu/qn++NSEzE9oEqbrax0N3z/LvLHgEdtzY1hwuAzsoWQzQfRMcjXT+zx?=
 =?us-ascii?Q?jdjGjJI0XAnT/ueL1cdx7bjjlWxm0wrK6qQv/CdVabi+ighvHnNuE8xpWO1K?=
 =?us-ascii?Q?MLqPlVyiu85g/dAmIGHKX9UKRMfbK6mm5QNLAZCz+jjdgteOyYTU2IpxOAAn?=
 =?us-ascii?Q?7LqJKPTye6yypNWLoWDRsyGcvwJV333a1jCCRw8qHIgYj4/DbnFVeqXNerd0?=
 =?us-ascii?Q?Pa8KTP3+U600hYKcMPcC3ox93FHYX0NYVqmuEP/MRB+pi2sBcOdvZRVHUVQC?=
 =?us-ascii?Q?UnDep0y4Y2CgqYWWlyLoOH+7jqjmqlpShNu5mJ53lxpL4HU1wNvZzct7s0aV?=
 =?us-ascii?Q?8pf4XbEsRqzN018Eivm3EWKJij4PjGTm7mr795hSxFvFmORPDmHJ9AcrjqbW?=
 =?us-ascii?Q?eChg2Y6VXE0zefLUrfUVEGxE42M+ZDeaxs07UFIzdEmqwKqoKlqqgPeNbhEs?=
 =?us-ascii?Q?ZxIDVF8gNtBe/1QzmzRHBQ/6+z6+N8ee2aykXgTY+aWW1GJu3noUdacNRFwR?=
 =?us-ascii?Q?vRRZcDanU6yLJ9aXFiWGE2FDGFOG9uSLj9MY88ytH5GcMqmYQXToFqOKZTEv?=
 =?us-ascii?Q?XfYU5kmvcTMtc4PFg/7swY5DCKHFE9bBZuaUSMyFGcfifEYWxaqpxCcKZcKg?=
 =?us-ascii?Q?/pZF9mJNU3OvAb7k02V6m28D6YcAtv0NcnGEnJFJpwnXSFsZ1XcgFQl6GlwS?=
 =?us-ascii?Q?VIFlsfpZFNVU9EggUqT8RqbSeybLCUlliXCjqlHiHt18Js+k4XrJkct0fPdS?=
 =?us-ascii?Q?mW5qw4QavleCB+bn7EKIFVYMqEffbJBThrmOm9F03ECtk4OMSYK10W32VgCM?=
 =?us-ascii?Q?NGa86aegNziTpFKuf0pCin5wk/bov/lZCYq5bDkQ+ZKpM/0hKcthTFnwuknY?=
 =?us-ascii?Q?hg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ab39916-9ef0-42c1-6363-08dc89333bdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2024 09:53:52.0012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ihQM8jYnx6DRh73s23vYU7W7R8GmJEalLz6ebtZhI/5Ji8Le07XZeEHuGfiAPmypiQr0o2UJQQPGyu6g/aZTwsQilcJp6j1OYNPAL1+Ya1mwVqbyJRQEgPnwIg+In8AY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7373
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718013290; x=1749549290;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v8S15YgKDdopcA3jzyqTrx8g+ht2EDQcePEdztm9yME=;
 b=gbDGeBhTLv3dU7DGKpw46YyQ+UDFL1thWsA8qC/GXcGHksmUkH+EICWN
 +Ef8X9XAguKZm0lY5V8RrerV1L8MlzTn9WcYEqYF8jxhvyEU2DVfXtQIS
 D1QOdQUBdyrstJjvxSTflB3EF0ehSh2FzJiD3xencK/CKB7Xt6Q3qYyJk
 uXRS40i1LefrIC0+P4QhlWnnDAprIXER0lWuHe21z457bcw2wKT+BfQ3+
 fDDdXmYNzfscSeWwly+dLMdBnqOvcYHl877CfUHfV6fRHoy2oY2FR2uWk
 YCxCgMIQDgCr0jQC/Jgp1sSQuQpd6n0YcDARheuAbdb0Aieh/cBWA0iTm
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gbDGeBhT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] ice: Do not get coalesce
 settings while in reset
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
Cc: "Kwan, Ngai-mint" <ngai-mint.kwan@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Chmielewski,
 Pawel" <pawel.chmielewski@intel.com>, Simon Horman <horms@kernel.org>,
 "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of D=
awid Osuchowski
> Sent: Friday, June 7, 2024 5:46 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kwan, Ngai-mint <ngai-mint.kwan@intel.com>; netdev@vger.kernel.org; C=
hmielewski, Pawel <pawel.chmielewski@intel.com>; Simon Horman <horms@kernel=
.org>; Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; Dawid Osuchowski=
 <dawid.osuchowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v5] ice: Do not get coalesce se=
ttings while in reset
>
> From: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
>
> Getting coalesce settings while reset is in progress can cause NULL point=
er deference bug.
> If under reset, abort get coalesce for ethtool.
>
> We cannot use ice_wait_for_reset() since both the ethtool handler and the=
 adapter reset flow call rtnl_lock() during operation. If we wait for reset=
 completion inside of an ethtool handling function such as ice_get_coalesce=
(), the wait will always timeout due to reset being blocked by rtnl_lock() =
inside of ice_queue_set_napi() (which is called during reset process), and =
in turn we will always return -EBUSY anyways, with the added hang time of t=
he timeout value.
>
> Fixes: 67fe64d78c43 ("ice: Implement getting and setting ethtool coalesce=
")
> Signed-off-by: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> ---
> Changes since v1:
> * Added "Fixes:" tag
> Changes since v2:
> * Rebased over current IWL net branch
> * Confirmed that the issue previously reported for this patch [1] by Hima=
sekhar Reddy Pucha was caused by other, internally tracked issue Changes si=
nce v3:
> * Using ice_wait_for_reset() instead of returning -EBUSY Changes since v4=
:
> * Rebased over current IWL net branch
> * Rollback the use of ice_wait_for_reset() due to rtnl_lock() deadlock is=
sue described in [2] and commit msg
>
> [1] https://lore.kernel.org/netdev/BL0PR11MB3122D70ABDE6C2ACEE376073BD90A=
@BL0PR11MB3122.namprd11.prod.outlook.com/
> [2] https://lore.kernel.org/netdev/20240501195641.1e606747@kernel.org/T/#=
m1629ecfe88d26551852c5c97982cd10314991422
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 +++
>  1 file changed, 3 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

