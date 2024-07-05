Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBEC92895C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Jul 2024 15:12:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15EAC40197;
	Fri,  5 Jul 2024 13:12:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7fA9Y5UApqEF; Fri,  5 Jul 2024 13:12:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A23E40A38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720185155;
	bh=ZRwOPCylK7NdN22Cg6JhaZTUhhrv7CNoZXmqayON+LI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xGycs65HJLSNznJUnhpDol3aX571SzkSinPDVZwG5C5kpn4WRUY1jgaX1OfjcS7Cd
	 Nf73i/FD/yvn0mPMxsJXwTVWOfDh7tbGyQ24LZgYb8qZFwS1Z30EKkm9G5GoYhhpLM
	 meRfhG6kdrJMNz4f2BouWFJXbth5wLRqaHKanlfAr7diD2oY+8clZ3NT4MiCmtJ8p1
	 /TM3lqk9x/Vjv9gtXgqtpCwObgOOeo8qHqJMav2hWzoWyy5kXV93BL3f0nKskFvedy
	 7++IQoqxvuQ+v/EPdPdWHgMwropAzU+0GeBquAvF9+MjAKoDO+i2EzzQCaA+Fttavj
	 z0XoGqw+txohw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A23E40A38;
	Fri,  5 Jul 2024 13:12:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 110251BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 13:12:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F1EF2606F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 13:12:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6b6RCoONiNKT for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jul 2024 13:12:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C4C47606A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4C47606A0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4C47606A0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 13:12:31 +0000 (UTC)
X-CSE-ConnectionGUID: kyLYBN4FS+SaSmaKMXrDhw==
X-CSE-MsgGUID: G+Udgm9sQ1SZrrqN+UZhaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17347677"
X-IronPort-AV: E=Sophos;i="6.09,184,1716274800"; d="scan'208";a="17347677"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 06:12:30 -0700
X-CSE-ConnectionGUID: DHv1BCYeTbyc6MBtiNwE4Q==
X-CSE-MsgGUID: 3zhhWyeWReu2nmlv1ThiNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,184,1716274800"; d="scan'208";a="46987667"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jul 2024 06:12:30 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 5 Jul 2024 06:12:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 5 Jul 2024 06:12:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 5 Jul 2024 06:12:29 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 5 Jul 2024 06:12:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RX9/1XwmC6rc4yUB+aTGbJ7saGKgJoV3SpLfHFl8pCFfS4kPR3AmISbBWIuuVMblwttQ/mhmtiFg4MYkCFLryQ3GwQCAAHrwX9lzXYAXTg4rtCOICTVZrt7AhLgdEdBSil7sRjb+iz61CBmqjMIW3l2owYTfYkUw6qxx08t5iNTGhRpAVNNG+LcHw6S8jDKw5bm+iFCrov3fGlnRjDoe4T1DHJvigrPmTMn1xPq/WbJ0yNulAd1cbuckF3Wt2uucZZINkufffWnvOw4vHniLffGSBGY/91RvytOpI7Ou3TzYEvfrp0HuvRlSsYAkBQHkqQla4Y5AGP0zVJUKadhS/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZRwOPCylK7NdN22Cg6JhaZTUhhrv7CNoZXmqayON+LI=;
 b=oURrtgvJD36ON6sR5j98PuHf00GNHujgEspG48kNVOimoJNJy7XugY5XYAeGKis+9aEfnzPSS03Xsy9fh4+PaPnqJ+pQmefYiOFp6Wez2buzvJfmTou2NRmSpcyOypp8LVmc9TZur8og4eh5iPOJvnx7qH+68cy6Fcu42/fguajZEOQ8p1SR0SHRp9CO53QWWzkN78fzxN6mJ4CjseGXx7HLcVziNxoTM0Sdusn2HhGYECOIHAUuzk02IbSxOqHafYG+SYZFV+xqUREGn+pRo4wT+8V9Pd3guZcIpadPTkh0+m1B3wjTRtQmPTqHE2LzRC0B39GYFhLmOd5G8tRcOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by MW4PR11MB7005.namprd11.prod.outlook.com (2603:10b6:303:22e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.23; Fri, 5 Jul
 2024 13:12:26 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3%5]) with mapi id 15.20.7719.029; Fri, 5 Jul 2024
 13:12:26 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Kubiak, Michal" <michal.kubiak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v2] i40e: Fix XDP program unloading while
 removing the driver
Thread-Index: AQHaxkj76cEu3EZSe0KYzo1eoWx/drHoLIUQ
Date: Fri, 5 Jul 2024 13:12:26 +0000
Message-ID: <CH3PR11MB83135C86680DFCF93D31597DEADF2@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20240624151213.1755714-1-michal.kubiak@intel.com>
In-Reply-To: <20240624151213.1755714-1-michal.kubiak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|MW4PR11MB7005:EE_
x-ms-office365-filtering-correlation-id: 8b1efcaf-2ee7-4f80-93e5-08dc9cf41dc6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?KpByj34gQRADGHLdFSmTQgFmyHlR+kTR+X/YllMmW5rYi5CM+A7OUOp0KFGt?=
 =?us-ascii?Q?XAA+QIm3UJ9Wf+arhTVRBrfUou18hyo5CF/ATOtAgXvaDOUyS+p9X5Xtme9v?=
 =?us-ascii?Q?G0EEHJDw94HzlYa3p11m9ghE8MMaM5yz74/sM9KAehMUHlBfQ4+9QoYV6265?=
 =?us-ascii?Q?6KvZ2RcyL5lyPEV8vfTwdgSuv5Y3sFhln3Zewdazb0qwtFd4AsSELHB4F4Yh?=
 =?us-ascii?Q?i9Br3lADVu3++wB35yu7yTWGITKfUZoY+0KhDIOuyzKryv/JfLTqskjJ6OMQ?=
 =?us-ascii?Q?ZB6YhmvdTxVOPvx7/1crntoIwnz4+DdxBSnCcTJ1fS4CcE45DZ7DCCinxDiD?=
 =?us-ascii?Q?e319gcxMH/Qs/cnjd+qndxQlQSfQvux8O+VAxUVwT2UfclZgYrcGZ3UDtHg9?=
 =?us-ascii?Q?h+z1v3X9yP7Gr5FZe2qjUSEGTSES9oe+930XkDB2kQuY9AsJWALxxSsByQpH?=
 =?us-ascii?Q?MU4qMFWbyD5F75vNDa218GL7WA0qQkkMSb8CS+MoLPxilQd8Ozz9QVcBoRln?=
 =?us-ascii?Q?RPoFLZdNWriaKRuczdQf5Rn4O+2aBr45KFXMJ1AAmOxvrqAgvIbLJL0woZbq?=
 =?us-ascii?Q?nkGUoRTNBcikegvUKQ+fdbeNNFx/MnnZ9lNmx3u3/K0ShGIK9er5wsQPhtFE?=
 =?us-ascii?Q?7+V/b+yAkEag+/gBAou8ZQUN04TLncNaUbFv8z1WyQoDB6AlX+GPtUhWjmfl?=
 =?us-ascii?Q?v/GteqNgLPrJa4lRGYu6JiaDS4vjIOTF8rth/nq5UfFbHFwL+Dlgxl8PSmmj?=
 =?us-ascii?Q?UCsN8NIpPBLPczjWSem2H3wclaQ4q+5fAV3wSMDjShtOXbgi9iMweM4l4/MC?=
 =?us-ascii?Q?95sLWRE5klj2t1DrMifFiZusOH4EmgmeGfF4xqEJgNEqM102XMF+RLLy9BKS?=
 =?us-ascii?Q?oSuL4CC+bZ4bRS/Ymv2zu54NWQOHcecGe6XWA1NwFzqgfDWO0xTCLaYE03as?=
 =?us-ascii?Q?TZzzu+VobgDi04/tQ+4Lo9mQB5yGt7Jo6Fl9hCWhb1222zNXsXCZZ/OioB6E?=
 =?us-ascii?Q?H5u5ZM+D13FcRlhzZGXj5zqzSuQAxCjOBWh47SV/2fFpgEx3XMX5Q/VAcpjG?=
 =?us-ascii?Q?Gg9SzadlFYG7z+gVhoWfWwr3BH5KaKxrt+6zDKTBwWbtTP9hEwExWo51vIHh?=
 =?us-ascii?Q?dczym6NGMwjc0bsVFQtRQatwcNUNxko9tAN84aCEwylITi1KsB42TfPiEe8h?=
 =?us-ascii?Q?kS73aSIXhbop6ZYzqx+QM+fgnVYf3AuEWddXWuBNLwdmSMD3jNq+y2WufKfc?=
 =?us-ascii?Q?u0sRJ0iaABem2S7Xr4UVnkHaE/A175n/tJ4TRCqJ0hMwUTzyLFK0ey4ZGY5A?=
 =?us-ascii?Q?FiT9M8KQG8zvzVyzDLAGkk+LJgcptHc+Z0xQ+Ov6cmuJ8ZvhtL9/DhM7Wh52?=
 =?us-ascii?Q?rl0W3fw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IuX2LZ8X6JDmUXeLOSyKIzZpqEvOiugs/Sbl0LifLWtga3g1zzKFdTfoVEI7?=
 =?us-ascii?Q?eRVqjPCFcq6EfoiR/cKyb8KBN05kKZ98aH88ZMecp/LRsPRkNeS2rgfwa67H?=
 =?us-ascii?Q?thS8sikU8O5vP11O0hJCTDS0Mi7gtDJeczzVNs5bF/rcSajjPsqXK9fg54N7?=
 =?us-ascii?Q?JgXEHQA9114RRUolYrh2+KtJkCU9QjFMk4KXIU6MDCcSFlP3Mv2ef7VpknXa?=
 =?us-ascii?Q?025EmRvoCCYVC+mU4HBN6vYNkKpFDIKqHb7RXl3VyVz3P7pkYI4FYd7XfuSk?=
 =?us-ascii?Q?Kx7CmuvFif55kQmW6KLUvKtIQ4LPhZLOwWbGVZX7eF/AZrfUveYfj5POAz51?=
 =?us-ascii?Q?2fW7XXYKXMu9CK75nnNE2BRhBvqMsxKAR0MKjj4vm4+T5vBjEGK+0bDGY6Rf?=
 =?us-ascii?Q?OKF/LzEnqj7jw0j5aHmptx5JOeCF5YPGLyA1dGRDD//5d5v0XPgkWv9i9r4F?=
 =?us-ascii?Q?UV8sK+ehh0Mi7Bqv5FTLaiW6lrZP8U/7PZybDEYi1LtScDcO6lwA23uJCUBt?=
 =?us-ascii?Q?Dtti08HVqC7ebm65YQ9ZqadxJJDoHSyXyv47U3LkVkC3eqU3Xloml33QfIFv?=
 =?us-ascii?Q?a1VdkEW5FmKeeQ2h+f3HJAhpnewTiL7ell2d9CBOsNAKPBJe/GFkMhkDtgAx?=
 =?us-ascii?Q?OzELi0bIQooNsl9/4UIHS9v/nFN6QexNxUwO4Pd1a3KhhkNHcwihyuTvSMUY?=
 =?us-ascii?Q?Jj7Ep7SF+LUXjEJpXC80CLgxQutA3sMqEb4GQ4zgxBNjZXb1gtvEH+A3C+C7?=
 =?us-ascii?Q?OWjdeyAlSo4sHcfcIOgryxk5vYLZDrLQeM19hZupFTxSGfn5s2eYYPro8jLN?=
 =?us-ascii?Q?zLSknz0p/KG+G/CWaH3Gv5YNGPQZPo/fGn/XOLS+GVtFrqGrPuHxcdLLmxQP?=
 =?us-ascii?Q?SF0ZgxN7VT9pNcLc2uBV0f6LfFadLw49QphgJ/lSmPD0ePJrKPIyai88eeoe?=
 =?us-ascii?Q?IoRFHi7F3yu5s8aWCpLWOcOhDA1sfLXf8yYc+Ty95EDl7Jtu6YxkjwvwCzW7?=
 =?us-ascii?Q?/KIjpJnTOTHnn2keyxRFX9Me9Yf1K3kt4YHJ7EBie/eICXo4C3Qp8KDZzsuM?=
 =?us-ascii?Q?ehm1VkhmN5Pf2LS64JsTJOwM4e3wFz6M6+B2sctv0a3NJDVsGOZ5t0GyC5n7?=
 =?us-ascii?Q?LMhtiza/mTX35KPnK0V53ZXeseJs2wz6odY0u+K2E6rX1cVU70sMT8rqIFRc?=
 =?us-ascii?Q?+/f+wklywKczJyKKsZ0NKPn07eBW4wToIasUt3HbqC0PIQhooc1ijFtFrOTf?=
 =?us-ascii?Q?UnKK7H2tM4cyMYcSNqsLa0u+EfUVgzq+SPCFxrUgPdNZhgcw0kLykG3slLqY?=
 =?us-ascii?Q?CzdXjNxd26PP+lVeKmHvG59G5TMvRnFT0GwebPW2jXyYHXDukSSXUgrOej9z?=
 =?us-ascii?Q?LXk2RUHtnFyBbJEgdBrtL6T511Hv8rb+SGK2G/pXakioO6YUbqTimRGtU2EI?=
 =?us-ascii?Q?gO/4qMoX0l7HRX2iMpmcQNFhSm5kjhopxXo1lewR1nq0zhb0t5kjZYjeBB0V?=
 =?us-ascii?Q?JxjqDwaGuRoS0DSWvS+wL8HJpAv4UCt8wi00j9InpWcGky33Q5T0yk0rITAF?=
 =?us-ascii?Q?oc5hkmOr6n/vlD75aQr8gPAQAeaskN85FarJVa9S?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b1efcaf-2ee7-4f80-93e5-08dc9cf41dc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2024 13:12:26.5233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wNo5afO8F61+wMRxQTfpVju/iIOXcDOI/1QvG5bQMYQZiZSrzvRxYwzeH+Z+vqr8phw9/zX4EvuEBhf8pi/xlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7005
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720185151; x=1751721151;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b1in/aodMeUKDFPzuzZAiWRB8oXqHrVQnktwLPh5K9k=;
 b=IP/A3HhatMAnIxlQmdxC8mDi/QLznv2ISNX7ODJuPX72NYhreIuasWK5
 A6W7NRZOV1V+462/WYKtZ4tvxTkGC/3jkwz0zTgu/Gl1wPD53Ns6C7Kjt
 8Vwzks4Ltf/hZIaT8b3/M/LvV7/3MMfvbKeSI1CjZm1bPtjdlxjRiqcxf
 0qvBeMENA8BLcbn2aK9364A5onLrYJgr4ywOKl43a1/sGcISIACnW/Xvn
 vXi33bS/j4qdU8W1ytFo6JIY83B8QAbT2Mb2OBgD+v9nKYgbTS3GUX6PP
 Fy8xMlOAlyq/w03qnQossCgbyXy8n/jm4StztksNNZaix7mFGSIrKY3dl
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IP/A3Hha
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: Fix XDP program
 unloading while removing the driver
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "kuba@kernel.org" <kuba@kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Kubiak, Michal <michal.kubiak@intel.com>
>Sent: Monday, June 24, 2024 8:42 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
>netdev@vger.kernel.org; Drewek, Wojciech <wojciech.drewek@intel.com>;
>Kuruvinakunnel, George <george.kuruvinakunnel@intel.com>; Keller, Jacob E
><jacob.e.keller@intel.com>; kuba@kernel.org; Kubiak, Michal
><michal.kubiak@intel.com>
>Subject: [PATCH iwl-net v2] i40e: Fix XDP program unloading while removing
>the driver
>
>The commit 6533e558c650 ("i40e: Fix reset path while removing the driver")
>introduced a new PF state "__I40E_IN_REMOVE" to block modifying the XDP
>program while the driver is being removed.
>Unfortunately, such a change is useful only if the ".ndo_bpf()"
>callback was called out of the rmmod context because unloading the existin=
g
>XDP program is also a part of driver removing procedure.
>In other words, from the rmmod context the driver is expected to unload th=
e
>XDP program without reporting any errors. Otherwise, the kernel warning wi=
th
>callstack is printed out to dmesg.
>
>Example failing scenario:
> 1. Load the i40e driver.
> 2. Load the XDP program.
> 3. Unload the i40e driver (using "rmmod" command).
>
>The example kernel warning log:
>
>[  +0.004646] WARNING: CPU: 94 PID: 10395 at net/core/dev.c:9290
>unregister_netdevice_many_notify+0x7a9/0x870
>[...]
>[  +0.010959] RIP: 0010:unregister_netdevice_many_notify+0x7a9/0x870
>[...]
>[  +0.002726] Call Trace:
>[  +0.002457]  <TASK>
>[  +0.002119]  ? __warn+0x80/0x120
>[  +0.003245]  ? unregister_netdevice_many_notify+0x7a9/0x870
>[  +0.005586]  ? report_bug+0x164/0x190
>[  +0.003678]  ? handle_bug+0x3c/0x80
>[  +0.003503]  ? exc_invalid_op+0x17/0x70 [  +0.003846]  ?
>asm_exc_invalid_op+0x1a/0x20 [  +0.004200]  ?
>unregister_netdevice_many_notify+0x7a9/0x870
>[  +0.005579]  ? unregister_netdevice_many_notify+0x3cc/0x870
>[  +0.005586]  unregister_netdevice_queue+0xf7/0x140
>[  +0.004806]  unregister_netdev+0x1c/0x30 [  +0.003933]
>i40e_vsi_release+0x87/0x2f0 [i40e] [  +0.004604]  i40e_remove+0x1a1/0x420
>[i40e] [  +0.004220]  pci_device_remove+0x3f/0xb0 [  +0.003943]
>device_release_driver_internal+0x19f/0x200
>[  +0.005243]  driver_detach+0x48/0x90
>[  +0.003586]  bus_remove_driver+0x6d/0xf0 [  +0.003939]
>pci_unregister_driver+0x2e/0xb0 [  +0.004278]  i40e_exit_module+0x10/0x5f0
>[i40e] [  +0.004570]  __do_sys_delete_module.isra.0+0x197/0x310
>[  +0.005153]  do_syscall_64+0x85/0x170
>[  +0.003684]  ? syscall_exit_to_user_mode+0x69/0x220
>[  +0.004886]  ? do_syscall_64+0x95/0x170 [  +0.003851]  ?
>exc_page_fault+0x7e/0x180 [  +0.003932]
>entry_SYSCALL_64_after_hwframe+0x71/0x79
>[  +0.005064] RIP: 0033:0x7f59dc9347cb
>[  +0.003648] Code: 73 01 c3 48 8b 0d 65 16 0c 00 f7 d8 64 89 01 48 83
>c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa b8 b0 00 00 00 0f
>05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 35 16 0c 00 f7 d8 64 89 01 48 [
>+0.018753] RSP: 002b:00007ffffac99048 EFLAGS: 00000206 ORIG_RAX:
>00000000000000b0 [  +0.007577] RAX: ffffffffffffffda RBX:
>0000559b9bb2f6e0 RCX: 00007f59dc9347cb [  +0.007140] RDX:
>0000000000000000 RSI: 0000000000000800 RDI: 0000559b9bb2f748 [
>+0.007146] RBP: 00007ffffac99070 R08: 1999999999999999 R09:
>0000000000000000 [  +0.007133] R10: 00007f59dc9a5ac0 R11:
>0000000000000206 R12: 0000000000000000 [  +0.007141] R13:
>00007ffffac992d8 R14: 0000559b9bb2f6e0 R15: 0000000000000000 [
>+0.007151]  </TASK> [  +0.002204] ---[ end trace 0000000000000000 ]---
>
>Fix this by checking if the XDP program is being loaded or unloaded.
>Then, block only loading a new program while "__I40E_IN_REMOVE" is set.
>Also, move testing "__I40E_IN_REMOVE" flag to the beginning of XDP_SETUP
>callback to avoid unnecessary operations and checks.
>
>Fixes: 6533e558c650 ("i40e: Fix reset path while removing the driver")
>Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
>
>---
>
>v1 -> v2 changes:
> - simplify the fix according to Kuba's suggestions, i.e. remove
>   checking 'NETREG_UNREGISTERING' flag directly from ndo_bpf
>   and remove a separate handling for 'unregister' context.
> - update the commit message accordingly
> - add an example of the kernel warning for the issue being fixed.
>
>See:
>v1: <https://lore.kernel.org/netdev/20240528-net-2024-05-28-intel-net-
>fixes-v1-4-dc8593d2bbc6@intel.com/>
>---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 9 ++++-----
> 1 file changed, 4 insertions(+), 5 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

