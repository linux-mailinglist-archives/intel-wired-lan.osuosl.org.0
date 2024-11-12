Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D636A9C57A5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2024 13:25:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DAA180B8D;
	Tue, 12 Nov 2024 12:25:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0x7RP6NZdds6; Tue, 12 Nov 2024 12:25:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64B4F80B63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731414315;
	bh=0x3uPbdA5st9pGcrg9mW1Y8+UjwAB1Qd229UzqikolY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=az0lIBHhpA5VZg8+Zu4+SsJieXlpVlwTspqd17v7rAVbvbAIxxVheb6kdZoiQJ3hR
	 GFPt9mYh9jQSy1zj4u5vyegQXF+lAsMqpte/kFfX4ePq5/6Drd2MH3R+HvfUTk8AlR
	 QPfqzgcFOlOuyRcED2EFXAW4nofWafBPEqf3Jm66+q4hxVtdbnPDfpSz6/AXy1u7Ht
	 NBGWbDIoNvQ2BBkwlgLyNw3y52lNq70DB4ZK8o3af+ZIPpy7QR0WPqG1/M+2ZEtcfd
	 tQti0IfQ8XtcO/4XyhZ6gC1yVZDUkt1/8aTBdpKF9Ppc88aIhLcTcm473ocSyVWPoO
	 QsiwZJnZIaMFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64B4F80B63;
	Tue, 12 Nov 2024 12:25:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 24D496C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 12:25:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 038D94051C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 12:25:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tf3lLUP9uX7N for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2024 12:25:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BBE91404C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBE91404C6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BBE91404C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 12:25:12 +0000 (UTC)
X-CSE-ConnectionGUID: aENX8uUFTmioypEdckV1Hw==
X-CSE-MsgGUID: PL2AbCcFQpSHudyDFef3kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="34111615"
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="34111615"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 04:25:12 -0800
X-CSE-ConnectionGUID: huvqOgfMSN60F3fxM7EBVA==
X-CSE-MsgGUID: ss5L3xzQR0W+JANWnuFYvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="87606894"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Nov 2024 04:25:12 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 12 Nov 2024 04:25:11 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 12 Nov 2024 04:25:11 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 12 Nov 2024 04:25:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T9YT6zEpXgCsC2XLein+IEcafY1jyaURWSDarluWuyU06xfFqfIi9b2iMtNd2Am7fseU4aKxSet1Qg2fuzTcxwqZmbfW4LzBL1zoUKHRRbZ8jitgVzaRTdd1QKqgEbdCkqQ4QgA6fFmZfgHuYDXqIYaYbHrDV0sXzzapjMcX+gyz3dMAzDBmoqfgvAUPuwC7vZxaQTVKqWnPqBCWdLxyermaAdDYDBPp5W3nG3gL5Za0hP/vx1a40S1Vf7nsX16Snu54Cy5MPzjs2y6q2yIrdb0lk/zMn1c+m7B+i7ZY+/amrTTv+GvYUdPylW5ZrA/mpU7SbHvScTOu7urKmYBX0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0x3uPbdA5st9pGcrg9mW1Y8+UjwAB1Qd229UzqikolY=;
 b=RkhBmVqOClKL8ufDzApaUUebFOXb9ZpzdKDk7gr+YXr1Y43KdisMfFl06gzIM4uw5iM2UILIXeg6PBED+hyONnouz8xewKFm3lNU6dhAQnWOkwWTTWiTSignCI6iGf0UdAEJyKHWrioTETS4SL6DX91W7jlt8blQJvxxyOIET0z1ut5cJ9at4PSfFFDxn84ucHgBanslwTC1nTT0m+GvGsnOnrOtI7Z69ExFNtbgP9Izc8qMRLL+CJhDP9RDlS1zDL4yazci+Wxs9LkM6tkkd491Mt89oAcFS3tzBjfFAzpy0kXSVuKVbIsOjBs1Jj/+88aweK1yiEgC8xUSAEpLdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.28; Tue, 12 Nov
 2024 12:25:08 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3%6]) with mapi id 15.20.8137.027; Tue, 12 Nov 2024
 12:25:08 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: Yue Haibing <yuehaibing@huawei.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "ast@kernel.org"
 <ast@kernel.org>, "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "hawk@kernel.org" <hawk@kernel.org>, "john.fastabend@gmail.com"
 <john.fastabend@gmail.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "vedang.patel@intel.com"
 <vedang.patel@intel.com>, "Joseph, Jithu" <jithu.joseph@intel.com>,
 "andre.guedes@intel.com" <andre.guedes@intel.com>, "horms@kernel.org"
 <horms@kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "sven.auhagen@voleatech.de" <sven.auhagen@voleatech.de>,
 "alexander.h.duyck@intel.com" <alexander.h.duyck@intel.com>, "Kuruvinakunnel, 
 George" <george.kuruvinakunnel@intel.com>, "Pandey, Atul"
 <atul.pandey@intel.com>, "Nagraj, Shravan" <shravan.nagraj@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 net-next 3/4] ixgbe: Fix passing 0
 to ERR_PTR in ixgbe_run_xdp()
Thread-Index: AQHbJ1tHvdON1Zf4T06Qf+s+XEDQaLKzrHag
Date: Tue, 12 Nov 2024 12:25:08 +0000
Message-ID: <CH3PR11MB83134D45BA2928857ABCDCB4EA592@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20241026041249.1267664-1-yuehaibing@huawei.com>
 <20241026041249.1267664-4-yuehaibing@huawei.com>
In-Reply-To: <20241026041249.1267664-4-yuehaibing@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|SJ0PR11MB5866:EE_
x-ms-office365-filtering-correlation-id: b891b1f9-3d13-4879-1613-08dd03150bb0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700018|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?NCVPDR/rhVoD0Y34FrBA+R4sn/WOPhAsIXC+ILuT7Ij3V+6j0sqZ9u2uA8rx?=
 =?us-ascii?Q?bnRrYwQiHZq4tchm6uf76kxLK4068ZXrlXERKdIwH4gHyxabhG/rmt+UbQWU?=
 =?us-ascii?Q?Li9vVmNXQoc/PQ4zwBk5xfMdvh7is9mwVnNXT6tV2ywp8ZnMPt7Hj80GkQEF?=
 =?us-ascii?Q?3Ig99NAHJVt44m63HaQKKk6fFYybYQeGw3B+FOqeCw9fYkgfollqqbc3AZSJ?=
 =?us-ascii?Q?qQQurUcpFrMifnSrE+9fJBr5j0LK8A/pmGoPtGMYnFRBnhz4ik3eWWjafeCs?=
 =?us-ascii?Q?hhj79s0WISNBT+xiIoLuvy3Jwin2H8ZO9MMdzB/1yDK5yi0/SlbwZyTgUDfZ?=
 =?us-ascii?Q?auXWpLbSBqU/BNs08e+4svHu3aSMPXbx++YSFFtClI3JQUrQxLplmjXXk+r4?=
 =?us-ascii?Q?gCz0lPmSETT7dESRdfXlxoPows2I7+Byr3tYhvGWO2CQZagKf9HNOD7Erb4g?=
 =?us-ascii?Q?yA+BQgFppDK2uNg+AlZRYmPlOk2MrfbKepVCm6lv9BEERbZnCGxtCZ6AfFaC?=
 =?us-ascii?Q?kYKl3E5mfe51ePX4nvy0Wmcn5LnTY1a/euzJXk59nvj40KDeucU0E2KI45Qu?=
 =?us-ascii?Q?eY35yXbEbjqoi5OIrZp3X/+HCWthoDjlCDOazkewn2FE5aKZ24z5zJ91I0LG?=
 =?us-ascii?Q?9XpjBlAMxAUa75KmjWxeqGlW/qXl2vl47DvzhvKAgemfktr//KY6abUmcXtU?=
 =?us-ascii?Q?IzEdTA9TaHFXq7//+EvFGBgkTblhDFCmg+jgQGWy3NuMfrlWD9TtnPLaazoq?=
 =?us-ascii?Q?9N7SMjGlH53wjdXOtWJAebf0cAUDiPjaGMi7ewE0gGIT47gEc5R6WQCzLVwc?=
 =?us-ascii?Q?Hu/vVgu08Qqp1bzNDCJPdnA+BSl08h/jQAkYgZeM3TtinIrMmiQJkbaKxzVn?=
 =?us-ascii?Q?Z9HjWlARXvXWfp1XeKDcobcvqV1PP2HronGyOdPWs/KgSLF0hCKmz4CcxV6H?=
 =?us-ascii?Q?xXC8l2dkAvhpXusmqnn4NnOHRhDhJ8jxHYyBOGk5RD+MMPnvhKvhn+s+7qts?=
 =?us-ascii?Q?7HUOA3wB+8qAEtY0o2SvK30oGZODaYb3Vu8tU8n+R7C0cxZM+RVZl+9rkrri?=
 =?us-ascii?Q?2LWrmVXC6ZxR+3xRPwDDy98n3VXC5uGI7Y0CMJpnE3zMrx+YmVREs/N2Un+V?=
 =?us-ascii?Q?d/qmOgvg2C8P3N+s8bSiLiGz1pzTdzmYIZJLdXD50K0KPNg3qlibb4ZU7bEy?=
 =?us-ascii?Q?Us6RlyTdG+VUTMi5zFd+9UNm+cfVs7iOomV/rpSkJmbdyqJOchk0laM4bHjN?=
 =?us-ascii?Q?sfniL9upUVmzsEwI69CR4/niHW9F4BOaiPdK1acI6cbczRupjPNwgK7rUtie?=
 =?us-ascii?Q?GcgOqU9Dlb/VquYjM9+AFW5xWE3/beYsWGggJ4xbPll090prrva+ZPKMlitu?=
 =?us-ascii?Q?7dhG2lIUMx5AAroGxNx60/sBWeeo?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700018)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wLh+mRVUh4xZ6Ka7uIG5HFZNo1MSyRPqOrpy/KNUMYiutuHEBjvD7VNyBFlP?=
 =?us-ascii?Q?rdyWGV5bhsREdPQc5EoqifbXliOR5W8J61y9bagmRhMkwmTq6RVRFzroE+yN?=
 =?us-ascii?Q?CrlyhfKrPiRnMg61kLqzq2qLZXXeTnWif1feINNlAvImQskQm5YZSQ7ou7dp?=
 =?us-ascii?Q?S6iZN8T0ttDrrTf8WIZI4Qx2FjPI1zSNig8tL9RpKgpTFAOeh4ZfzC2b2vCs?=
 =?us-ascii?Q?XfSVY8gj55jlBh+/mKDiS2HgYBVTypUCxsg73bekqn4iU+IRJNKvJOWeywME?=
 =?us-ascii?Q?1f9wV1NIElY03uptbvXPkNOwgtzzSwwFYb0R5tnI9MlcgXVTMVozQRq0tkwP?=
 =?us-ascii?Q?voV7UmlB/z1bbhqu6c/L4hjnsoTHJzMiqXhGhrpOWPZ5FOi9TkbFuixB0WVA?=
 =?us-ascii?Q?ko0mIz/qgnixmLyxqNXvbw1iIYtJJM2idI3QLyd1ToQDGfBhPTsSkQ68I68S?=
 =?us-ascii?Q?Jhq3BlYMmeKUF6BuPg+Q17zO/TLCcKAogt4N6isOE+/kben6F/BrixkNTF5V?=
 =?us-ascii?Q?gHeLkYqa+zFsEHy9cj7NTThiHKZDbEFdG8Vi+mTnZnNUu7e4giGoorAklCAw?=
 =?us-ascii?Q?rWEMatV4wzRuTAq9cl7ZxwmCy2SE4cTcCgXzEzCp9/I0lkJJn5A2vTZfn1mX?=
 =?us-ascii?Q?BgWDvmvXJfrXBAKKSc6MGmcknNMBYiGV9ImJP08mrdTEORXa/4WzFZCl1hR9?=
 =?us-ascii?Q?tCyVOEK5k5xo018h1t5xtsCdeasUz/3aG6PrCmbFY0qKaNOy+gdGUXtm6R62?=
 =?us-ascii?Q?nFWpeNwpqGC1mcMzBQtXkt3R7F+BEhDRJfm9Q4+BsuQ1CYz98bowALRU0mgk?=
 =?us-ascii?Q?0uyjTVBRHrnVlG6ZJ9byt56qrrg9tcJKSK161RdlKuuaieIFi0TROzXmiNsy?=
 =?us-ascii?Q?KoK7jRDsijFw96+53JVzyDXfbcWBi6PCB5nZYMuHDPvQ3rTkJ7kZf62tJCL2?=
 =?us-ascii?Q?FTEj8H9aBspkbnlxgIiOOAlUJKS6l2yJW0avBIdpzbaxXA7JNvpKLL64rTEM?=
 =?us-ascii?Q?NkZ0hG2RRhKbqBcfxhfS6EPoyxIpPQ7uaJMwOPpiV4dvE07h3Jj0cKF/byLA?=
 =?us-ascii?Q?BDdGWhGyKNjgWlgkd3rNLnxu/oiqZQN7rJwWY5AR0pUzuvi6mPEhfDJSOzty?=
 =?us-ascii?Q?st/a5nW9RGXPyxe6PoNOL6WIqkEC9+1XO5zAOc/x/bNIRbk0PYEbBP7UCy+A?=
 =?us-ascii?Q?A1ppbUbn6A7xGZ1087It3sZ1i78mgVZzNf35DaddNraq54XfOf4SyXUSCsDd?=
 =?us-ascii?Q?43zi/MteEoNMZDOKXUNYqfZ5gC56WamOs+pLlwcDDDQBkGO3WsiQfqEXUyUJ?=
 =?us-ascii?Q?GkkbwFiPkNFtyrRPWbyyJw7TU7TV8fWJo+uB/KzLwyuJS/VA2241s+Ff9T4p?=
 =?us-ascii?Q?8LV+cSPdVMDWlDzWlgs19/Q2jLvYg5CvJJwwZcXkv31+zFV9opLcWeXy44LD?=
 =?us-ascii?Q?5xk/TexXTbcXgeq4405YX81FGOGREBSJH65rj7jmBzSxelGoRZWRef5V5IZ3?=
 =?us-ascii?Q?dSPETcdK9u8yHr1+HvTG374Ahtp2mvnO+/Wgx+E7yEQ31uCz3W8ostouMLDl?=
 =?us-ascii?Q?Tanpp2FacjkZkuAzNZvAm8jMMNR5M/SOamlGlLf4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b891b1f9-3d13-4879-1613-08dd03150bb0
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2024 12:25:08.1727 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HwrCbdksX/mDGo6BIlrbb1o6W35eE0T9jgT6EgUoHBx4EPjsyA+f3lgR/Y0waa9hxZXAfvz532CmjhutrmVICQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5866
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731414312; x=1762950312;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0x3uPbdA5st9pGcrg9mW1Y8+UjwAB1Qd229UzqikolY=;
 b=XjyO4PFOnc3/teT79Ebly83dNoHzoxiI/iU806fRz4xFwIdgGxdW2LOe
 zYKqH5eBINmDUQGozYhyNZc0tLm2deeIL7HFE6QwCThzJN+3CCXYnnTGh
 3wfGDqaK6uZe0VJb0gi3NBLIzsiYSGBgCmHkwbw2jBI/GcXpPZfyH4GLW
 YLOks2r4JuNATbC8vtj1edczxaiC6z4jc5lQ0s+UvTWkQKLThrxTP1P/+
 Sod4FnGaSOS1gKnR8lksFNt140U9pVoEZ+GKLbmkGViBzrtdAY2WX2TeN
 f9fBagJOmMsJI5ExWYkytkRa5rGVG3WgnZC9CfeC6FWq6M5FR/QnWHUQX
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XjyO4PFO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 3/4] ixgbe: Fix passing 0
 to ERR_PTR in ixgbe_run_xdp()
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



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Yu=
e
>Haibing
>Sent: Saturday, October 26, 2024 9:43 AM
>To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
><przemyslaw.kitszel@intel.com>; davem@davemloft.net;
>edumazet@google.com; kuba@kernel.org; pabeni@redhat.com;
>ast@kernel.org; daniel@iogearbox.net; hawk@kernel.org;
>john.fastabend@gmail.com; Fijalkowski, Maciej
><maciej.fijalkowski@intel.com>; vedang.patel@intel.com; Joseph, Jithu
><jithu.joseph@intel.com>; andre.guedes@intel.com; horms@kernel.org; Keller=
,
>Jacob E <jacob.e.keller@intel.com>; sven.auhagen@voleatech.de;
>alexander.h.duyck@intel.com
>Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
>kernel@vger.kernel.org; bpf@vger.kernel.org; yuehaibing@huawei.com
>Subject: [Intel-wired-lan] [PATCH v4 net-next 3/4] ixgbe: Fix passing 0 to
>ERR_PTR in ixgbe_run_xdp()
>
>ixgbe_run_xdp() converts customed xdp action to a negative error code with
>the sk_buff pointer type which be checked with IS_ERR in ixgbe_clean_rx_ir=
q().
>Remove this error pointer handing instead use plain int return value.
>
>Fixes: 924708081629 ("ixgbe: add XDP support for pass and drop actions")
>Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
>---
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 23 ++++++++-----------
> 1 file changed, 9 insertions(+), 14 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

