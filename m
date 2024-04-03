Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2405F897822
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 20:23:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EF0D80B42;
	Wed,  3 Apr 2024 18:23:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iNqETgZgYaGn; Wed,  3 Apr 2024 18:23:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 424E0802D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712168619;
	bh=phoI5JEK1lGbXsZ/nXbQjv7OoY+NU2lglXUv08gEj68=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=11tZH1HWj8k2TJgwT4EY8tLcaXol8N2r2W3dpoza/KhLKxT+RqxJ8KaTrLqxdD3EW
	 w9qDRFFzSHTwLBIHYSglr0LYkSo6xkgH0D4RQ123oPczkPOYCtmJq9WliaqyYE45Yb
	 dZsnl6iosAbC2QKofxvmLs3Ui+EBiAC4VDvfQoiScu7ptjAp7qHRTH+1UlnX9BCM0O
	 K5N3xHgX8Ts3oB+yUzx2ylaDKgXiXCCESDwXIGuJtKSXWoA+GKCOnqCtgN9cSB1PRU
	 Kcj2VlGH9WblY74fHInGZ3AVkqt+glUkGlpb2v12fdpI/vB7PfgdKtTJXYCEqNYBEN
	 CppvverYbU7WA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 424E0802D5;
	Wed,  3 Apr 2024 18:23:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 72DD61BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 18:23:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B86560641
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 18:23:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2FnYVM_dE1Np for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 18:23:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 33E4E605C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33E4E605C4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 33E4E605C4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 18:23:35 +0000 (UTC)
X-CSE-ConnectionGUID: LLW4ZD/dS4KSkhFtcovpAw==
X-CSE-MsgGUID: apNQUDQPRoqvn9LWrDxAaQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7323900"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7323900"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 11:23:33 -0700
X-CSE-ConnectionGUID: qnzemVcFTt61QZ5QoswQbQ==
X-CSE-MsgGUID: 2RjPbdHFTEGxP+EbuaWsNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18945649"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 11:23:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 11:23:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 11:23:34 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 11:23:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dUoyVhGW/99mZeaBxNY4032j6dLc4Cyiv1LsTXSVb7xWlJIPXsMXMMD0Tg2a4J866uKWRi8rSmYujFdTd9Q4WDlZQVePFyQ+kZsZJe+AopnDagePch/fOPEEgo42p2aVkrqs3PX/+4OSwmDp4YSBqI5Z3CMCvIIPxPzRTCJhaeIEgy3xWRs13Xlw2iMRk5vaP4tRLO5YPEm/Ski2t96TWCrOXMH8X0OnEJe8/yCqDDm2+4LOPNvhH10bodFiwlMVptQk2aUK2ZEEp3kGmHJppJFwpCh/i2HDr/VaNqPu1020gg5BYjnZ39ocJFpAMYV9Zrej90KhHHFFiBcuPKD76g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=phoI5JEK1lGbXsZ/nXbQjv7OoY+NU2lglXUv08gEj68=;
 b=NJmm5Yp8IyM/upcaMZFfu4lUh+QdVyaHtC9pvuouaNxWSG80vuKApZZX2RLG4SW9N3VxqOJwywKCOBtxgHA3cDkjSXNs765AM8+pnRbq/dsHb4a5cI+utjdfSiYWIxhwa01ET+X3pYe1G5zQPyMyU0dYC/Qp77xHze3yfTbS+ZTC3jWh2JfNQSOJSG9FFv30ALsHqcWwsCvyR2jF/gEXQoNGpdW+nP/pVFy2Vh1cl+m1YMTYbkWQ5ZLdjes2zc0ZuweIwsbEn5rjvDw6cGtsxtzeXjOeAUSdD0SwvY82H0UfbQYUkVKlv09QgwtIwEmEIynzfT3mdKqSj9Q3oGhlPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by CO1PR11MB5185.namprd11.prod.outlook.com (2603:10b6:303:6e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.19; Wed, 3 Apr
 2024 18:23:32 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636%7]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 18:23:32 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: fix kernel panic on
 unknown packet types
Thread-Index: AQHaeyUrL4t2vNNG/U6YQsDstlURZ7FW8TTQ
Date: Wed, 3 Apr 2024 18:23:31 +0000
Message-ID: <MW4PR11MB59110AF513411DEA937896C0BA3D2@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240321000925.14941-1-pavan.kumar.linga@intel.com>
In-Reply-To: <20240321000925.14941-1-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|CO1PR11MB5185:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jRPd24J+heyQZySEfbCtjAn62H820bcncBC3QqEYmhaarP2XSwJu3RWA18gvNZ5Mntemti67f5vW01lL8Bx7oe/458zcUATRYtaqV+jk70lQPL/OA2NP422MsZ5ShUmOhsggM5fGlj1Ali42Vg8+8GTwyOerBi/5cWh6ksC1tn0y8hrBlbQ/XOxs2OlcKL5YcLKg+LGaotsXXRyndEwsB61sSf4jHnSDi+zdigZHlc8Pxc8wAWYz1rUJXzmN4rfQ7BqdynzjnpSVJ45ZETyeLyT7hHpKjyQS+1FNggJ8HG4Tw1QBU9yR7AN6S1LMR4jEUYloRLOSvQE7jOVQF66qSnw1HkLcV96IU8qC/f9xFQJpQsF6qUTTl2T05Y2wMRw8iPnO5q8ioUffQNI8DJH2JSn7/STfew9Mf/mzTbklb/W0ow4D362DxX9I0uPbC5WV+Ft5gzdTxuntiJqjs9OHh7bVO3lc/MzSnlw5wKUJPGSafPbXJ8bStNiq9nbBCzdE6JRgFNs5lGXJyGYj0NMnhLAt0NZaUWR4CdiTUBeL+jTHpDE+BaiuGPk41SbjcOVJPKoelQVkPHCZOZxAX7WEfMtnaPTW65r26AkrGLSpNTX7kBB6d2inrejVjflJUVHQlJJuUERedjAOaSA4StdNfur8S5N+3P3yP9LxbiJtTfM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2+OvHn24iXhINgdFrdG/NJWpTSAg2H2ceKi0ItnXqr2YKdgu1pSSJmE5W2Tj?=
 =?us-ascii?Q?jd3hiiFGx7LQMVyzsNyohEu1RZtkTe9QLG6/TTMWOus9joL3+7j6u1QyNfp3?=
 =?us-ascii?Q?JvfozptPILI1naF7b5gITHYV/FJZMo5ljqGGj+SiN9960PJyRO+/bgyOLTwi?=
 =?us-ascii?Q?WIK4zE5mB78k6B1j31LvMLAjfEoxLdaLesuX/hjXsfVjBw2jkOTSY+F2lmYj?=
 =?us-ascii?Q?7wksG9A5dZQB0lGGwoM+HEhAsC31xnQtuZDlNqGx+2f4jbAhLCGbWygqB52U?=
 =?us-ascii?Q?suHhWFuwU49LYC5MuNpCLNJ5uyqcTOTlyaOdeICfhU2/eUHgQBzYHM7DlJVm?=
 =?us-ascii?Q?EGadtBa9AGjD8EGVthnUZK2lr20PVVBjEBn3aoUUsbIKXONWzd0dHamt71ER?=
 =?us-ascii?Q?AdAT8RMhMtcUdQbDBa3waQcHAkfypDbzh1y6Jfi5iL/iFbZMlYOCu8qr1/Fd?=
 =?us-ascii?Q?pkhTbrvgQw9hpOfChkW2OBHTmnX+G75y9tG6AWETv0cAA7S0UVHmy+n65rPH?=
 =?us-ascii?Q?YwDKBzjExgSKYBQgLyXJn2iSPiixkBDzel3nT/h1He+I9VsHpvNgD0N84BUd?=
 =?us-ascii?Q?WuPkhNjuaeoLpcye+W0lJqk6l8AkN8N0lFGEdEQognzq/7zgBhuo8FAnQbMo?=
 =?us-ascii?Q?YZVDBHFoaYupuYLqHVNdis4vq6eMHjkQ/IyC5Ej5HLJg2dSOzM9aOF6QSRVA?=
 =?us-ascii?Q?rOQ/lyU8274l3ZlcoewJmYVDhc56H3VEhjqu5nYLesd1IMPJI16yhEtwEXNt?=
 =?us-ascii?Q?DV7BzNzUVzYJLKnoDrfnQ+sPnBHhrJKpS+FHqOAUqZrHj8UlG1pZN4kPy0ZN?=
 =?us-ascii?Q?Mh6BIWqGfesZ7tuY5tayFfqZn0EvGXJJooWErL+/BH6aBLWh1qxdu7wknSEk?=
 =?us-ascii?Q?oXV7k5fY30GbGbuTubEE2xQrZLXCHtRdAi42DGF+f11WTNvc3jERpV+iWS4A?=
 =?us-ascii?Q?yX6lbN+e2enVrZfRq5/EUhGwSVzldcA771iIHk+hO1Vk2mxlMwAOOeunZ2wB?=
 =?us-ascii?Q?3kFskpKDIAPq9FyDW79y1wtMNuBMrzYFcFs49vRHVd5OMtBM+k75TtDDOs5d?=
 =?us-ascii?Q?Sr/KC4fuwwJcouz+5xEa41NK0MtJlXWwevCzSEXMCaCNFAGodUjXZGb5wI51?=
 =?us-ascii?Q?ClyB+taKI5ii9w3k58xwO1JD/dEXdBowIdjq9E9phRpO/yBbV96J42kqraOV?=
 =?us-ascii?Q?crdkQM5gzpURo3HqUAIJo3PmDOGIXZwcDxGiNh69DH3vKRyj60vRTKVsigoo?=
 =?us-ascii?Q?6aeWDRms+emDyr18FU72ByTbYa9PB36vYMXiKKckDpf6pY9wpJfRu5SiXPa2?=
 =?us-ascii?Q?sV95iLDf2pcjfKONRBo8PGqEYk4Qa+31qhgwE6K64YhcICSy4VZdaoOJoo6d?=
 =?us-ascii?Q?dZ2k6VEl00fCl5ngi4f453kxxO3TgJwV23g4GkHbq4EVVRq9E70b47+2NvOP?=
 =?us-ascii?Q?DZf/Ik8hmjyqON/mbYscTeo5xcQaQeKS1xq6i/luufg5vnc5G89ENx95BnFR?=
 =?us-ascii?Q?WUw58PAhA78r0ApBDY2AGrbRxr0bxXu65DXXp2WbTP5UgIfOZBx5zzaYYMo0?=
 =?us-ascii?Q?3Ogg0QTOJnzgsAeVm7IOxxOj8XVYfP8u0PzATJFroHZxK5mLYqZ3QiGQ254y?=
 =?us-ascii?Q?0A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0775dbf-7cff-4a89-84c4-08dc540b2ade
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2024 18:23:32.0130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iHibYqBtLnliRKcMIwPr4p3p4zPZ7scoFR7pKfS7MJs2rdbyglfKWsFsfXWq9XTFrUL73wkDbv0eFzN4MopW0vG42k1ZV86eWGcrO/DLjn0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5185
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712168615; x=1743704615;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TE+G1D2H+ryKjx61PaDj/e5LWKSBPt3U85Z1oWUUJvw=;
 b=kCICA1ZAk5/SqUc5J1s66stYyinkYiOjpNkq+YN0LDPfCpDPKJ8PvJty
 5ReCmRXo8HO0x092CqJ1hoHjMkTyklQPkkWtwHVS73I4JajAjB7S+fsKb
 /VaONADYTaSRTlsb+v7sX+ua+W9smp3FbqRezJ8gu9ELYOVKmrc8cszjh
 mt+HrXoe0VfT1cIGhhQLPlZrh4nI+rk+Wcr06eesXJZzwEit/0DgXSL+4
 VDlQkgXrhcgMjzaUGlOHzsvOZaW53AhjPicHsNNUVVmWmN4YkeOHR+7ne
 FbXirBlQGBPJgHKiKODvgSlmGSjwJf+4IhZK0+eeg9cH8ij+V/7kF8tvi
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kCICA1ZA
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix kernel panic on
 unknown packet types
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
Cc: "Tantilov, Emil S" <emil.s.tantilov@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Hay,
 Joshua A" <joshua.a.hay@intel.com>, "Daniele, Salvatore" <sdaniele@redhat.com>,
 "Nemeth, Balazs" <bnemeth@redhat.com>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Pavan Kumar Linga
> Sent: Wednesday, March 20, 2024 5:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Tantilov, Emil S <emil.s.tantilov@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Hay, Joshua A <joshua.a.hay@intel.com>;
> Daniele, Salvatore <sdaniele@redhat.com>; Nemeth, Balazs
> <bnemeth@redhat.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix kernel panic on unkn=
own
> packet types
>=20
> From: Joshua Hay <joshua.a.hay@intel.com>
>=20
> In the very rare case where a packet type is unknown to the driver,
> idpf_rx_process_skb_fields would return early without calling
> eth_type_trans to set the skb protocol / the network layer handler.
> This is especially problematic if tcpdump is running when such a
> packet is received, i.e. it would cause a kernel panic.
>=20
> Instead, call eth_type_trans for every single packet, even when
> the packet type is unknown.
>=20
> Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
> Reported-by: Balazs Nemeth <bnemeth@redhat.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Tested-by: Salvatore Daniele <sdaniele@redhat.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 2f8ad79ae3f0..017a081d8580 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c

Tested-by: Krishneil Singh krishneil.k.singh@intel.com
