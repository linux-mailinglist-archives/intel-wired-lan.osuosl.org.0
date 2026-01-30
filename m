Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oC8kB7ZgfGl0MAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jan 2026 08:41:42 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 597B0B7FB9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jan 2026 08:41:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E21C340C54;
	Fri, 30 Jan 2026 07:41:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vWELQasLE9zL; Fri, 30 Jan 2026 07:41:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B7B840C5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769758899;
	bh=I2w2A76WF8k/qRC68tNKXVo4v7TDJukmcrDwfcxHXpw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u4W7PovtoknJP90JK+d/5P197sOXXLkDZn/kBnU8U3/jHLcNw02XPnaWH7Z37ABn+
	 gX/Z1Ec1KqFPlu5jey8F6491wZOw+J8ga+x8FSIJaBbehRBVYLv1ImQwxn4nq+Kjtp
	 oFiME4Sl6HcG370W46DduRO+HUsZ9aTYmxgQxUFkJVfpU9jrFd8/255bvFBd/MhnTs
	 MbAVH8JCJEjh1km6c7sZ67dexYaty73wgNPgVBps9Vtl6p4wm5M0RzIphv8HsYVTQD
	 Uhk1+2yPWmgHjj7N9AB6o+RoDSm8SE8F/MeDUaLA6L526O2tA6JcRcFnB9trY+m/Gb
	 rr8X87MmELzgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B7B840C5D;
	Fri, 30 Jan 2026 07:41:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6D0D869
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 07:41:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5191583D0A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 07:41:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d7ZPzHijNvyX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Jan 2026 07:41:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3E54B83CC2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E54B83CC2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3E54B83CC2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 07:41:36 +0000 (UTC)
X-CSE-ConnectionGUID: C8AZcJf3QimwpQzPftTNFg==
X-CSE-MsgGUID: KlGfLL0VRT+xuE8omCGToA==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="81323406"
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="81323406"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 23:41:35 -0800
X-CSE-ConnectionGUID: 1ieBZehhQ4ilzgfq3OjyRg==
X-CSE-MsgGUID: 0HEqhrz0RayX30KwEC/6jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="240050143"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 23:41:34 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 23:41:34 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 23:41:34 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.61) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 23:41:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d2SNoEtfqQOAEmz+TW9QPYmnCvt/MplIKh6I7R9Tav3Aui2FeBH+CBFTSL7aYeCOu9JYTDAVuY6IrDY5nRt4Nplld4EkmuvTjQOHeP0M4/5o6PFBdKzaQlw5HC2hzx0f4Av+zR7nkpjY0fDBwJO8+jFYiqYCopvvq+sELq6K7GV+SADmUIliAxEWAd9RVHRqNR5slJh38dm5mzViNxOvTj0ctuoJM9V545QPW3gjSsLZPZ524G6+9OTRRER4oAkR7x9riD0hphzVjLpsTtALDxDPd3dZAaF+tYVp9kw1BR+cGANlA60jnRCohYaKe7CSav5rsO/Gtd7AM3G565zZoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I2w2A76WF8k/qRC68tNKXVo4v7TDJukmcrDwfcxHXpw=;
 b=h0n4QzeSaMYvPycok3hljhzLot8BfzZLXnrFd5a+j8UR64/TvC1TxVp3vsLfYvZe+KqIyN955FYPeO0JNwS5vZj34MtzMfEUj1YD8T+wYDEEK3mKnKl1IAkLksOwpY46MYt0gV/f+tY72HgV+tDpcVzlnv67nUAmiyUZ67UriYLnhOvx3WTbliITtRtdeXJVfAUnTHHWkCGN+U5q4pGuGz0kOuGZYFxxtBW6VI6UhMQvlKx57EuLMrkRfV+NUSr0aEJpKnZ5/yx21xRsQuS4+VpZ8BDerMBPnf8bVx080YbbGrIzqzKq6FN4xOt6ARDB8L9sJaNLQIuSWGcOMw8tsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA3PR11MB9110.namprd11.prod.outlook.com (2603:10b6:208:576::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Fri, 30 Jan
 2026 07:41:27 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Fri, 30 Jan 2026
 07:41:27 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>, "horms@kernel.org"
 <horms@kernel.org>, "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ixgbe: e610: remove redundant
 assignment
Thread-Index: AQHckUWJR99Omumd/0Oe8BwQOqqyGrVqVRrQ
Date: Fri, 30 Jan 2026 07:41:27 +0000
Message-ID: <IA3PR11MB8986996AD2961AF685C8F894E59FA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260129175455.174241-1-piotr.kwapulinski@intel.com>
In-Reply-To: <20260129175455.174241-1-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA3PR11MB9110:EE_
x-ms-office365-filtering-correlation-id: 409b5096-22e9-4947-a4ae-08de5fd2f9c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?coF9zrIaDB/d/Z1foxqX0zKlrr5t3MIWpHwO/awYV5hQDsUeDEioHdUzjeAu?=
 =?us-ascii?Q?ax85a0Hod2Fj2OhxyOzNMP1YxDexe5a4blwcnsYYAE72FBub4y2Z0qtQGYXj?=
 =?us-ascii?Q?TefNpLgd2pB7dbKdXt1K1qINEbwn2tIlXymTGaT0Pt0FeynD+0rWdBUUFlz5?=
 =?us-ascii?Q?t3KOKbsDDlPVlbj/n9EU/3jIF/rM46fbG4qaO0r5Emtv/2TW7fDTjHwtDGeD?=
 =?us-ascii?Q?/ED9neVp51plSuE2kS43bdqDCvWGJKzkJjX8/dREgnSQbaqG82kp1rBKTwcs?=
 =?us-ascii?Q?dfudlcVh2SJ4KvGbrxopGE3SCzMk1XVXF1bWWhzhIt+cADSWV60erHhWkmw0?=
 =?us-ascii?Q?snSzHH4eWbiPZRifAIFXE9u0nslFhNpH/rLq3j600jO+mJNPx57nNui56xoA?=
 =?us-ascii?Q?PcSORgnAP7ML0f16pihz73Z+aCZ8ILc4x2azMh7R/E/QCukv3LRmL34A2h1a?=
 =?us-ascii?Q?JMkBD+GkJT93wrUMBRSmQF5Kco72WR/7Ml9AdsKVhqdHk+rAq9OeHSDOWft0?=
 =?us-ascii?Q?FNTTgDzg7s8aFR/4R84/biqbZtmM/fiRMTrZsCn2z0cCtrkwW06SPkKXqEfU?=
 =?us-ascii?Q?tCg32Cow/B1yrqTS95483cSKrOk4OjLgzlk76Dp9itDhdqxUb3OO2E5QGOt8?=
 =?us-ascii?Q?z4VNy/S081UhsxUxFTgWwJU9/PDFyWffFkB4S7/RKCx9PMd87ixrGLIfkqBv?=
 =?us-ascii?Q?5r2O5QRrzkho8A3e47x30vvqO1B0aDfw45A0TBU+kzJ1Lj7J9T57WKiBhj5z?=
 =?us-ascii?Q?kSaMmdIK/XsBy2GR0+kVyuI4YRdyzzSI4T1QwfbLoH5MQlCEIe1al1ct64PK?=
 =?us-ascii?Q?xZjV540ez1AuAdUwPavHNxXDpRy42f6WKYQK1TU5/mTVUda5xq9nIjqywQHo?=
 =?us-ascii?Q?V1XY04wCzgwLFStzjBG9K+2A4ztgBqwvejaUbjSwms4UNUgfGenTxSU8vMa1?=
 =?us-ascii?Q?eTZ3MKw8W0sDcuHj452tIZUYCw9BHc3CRD3VFBGuBwDeyEfJ7vx9A9bV3TcL?=
 =?us-ascii?Q?G8+2rInWjoPvMVBoyYe0CDGCxHBj/atP9tH1I5TsGsy0FOWkZuZv5KIgdsx6?=
 =?us-ascii?Q?ysi4MIwKBdeKdvIQHdop0cSEP6/1HDVHs/kWlvqrqh8l8oBoB00otoFhAWN2?=
 =?us-ascii?Q?nnOwV8H9wGHIkuuJ+0aRr93bywFq9TM2+iVS921JycqFbpgkFUd1OumZmYV2?=
 =?us-ascii?Q?Rinje5e2yJg56hPs7YeWpxsQsdsV+w2CpRo4J3E+63KrI9mE8IvoyZDT2Fqf?=
 =?us-ascii?Q?CkupAjnkaHCEcgFDDipeMr0vNEEmLUdwxE+w26p2fMDQ6lGRQzpp6NraJluo?=
 =?us-ascii?Q?16pFOHHQQ5Q4PbZiELG4MbbcWay9VPbYSWjR+dGpBYW+tVFCP4fecnN9U65V?=
 =?us-ascii?Q?GBLMI/TP2NZzBOOqYqJJXw0sfZ5K0CECN7V3CMIew9KoaDAebrz0CMoPPxm4?=
 =?us-ascii?Q?KZbGB6vwccUn5knU0GjGrgar4DYWBAl30yJuzlYr7p3eJjtvcsVY5yrjF6fZ?=
 =?us-ascii?Q?BiGuXikDF4dWCvF5GejPwqUEBrDqCSmwLRm6zvfkEAUwaRAjLVD/4LoY6hVb?=
 =?us-ascii?Q?b+iLGLJyok20+1qRg6mFtZpCJmJaw3r3zS7FA6a60kLkYcJHWn5rhcTvkfQP?=
 =?us-ascii?Q?eyQJp6Od4t+jvMr4i5VBLrQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?drBl3A4bY0putsNO5ZhzCffJ9BhRlPHoEZQWVj+rUvQxWaeHwTzla3eJ3GJH?=
 =?us-ascii?Q?bNc18CPUOzEx3iaqjtU7ZI/wxaotcgvFkMoNAaNhCZ5FrD/2HkdimsNJU/hW?=
 =?us-ascii?Q?jJ6CVkPsDm7NkyNeQDOKlB5RZAqN/NzOWEMeUJJ2sPPBWcnj+81HjtLn64K6?=
 =?us-ascii?Q?9DmeSmlKvKJuPWL0RaAapw6/4cebOG6vv8CGgMHUXwwi39iKMp2OxCkH2EeU?=
 =?us-ascii?Q?uowTaBygVqSGBlLUB5YfJtAafLOmM+sQFAIQ+o50mfRhjSXDWnZPotVRGoVS?=
 =?us-ascii?Q?y7yRiCUVN4x5Qc4cGijX2tXmH7Hz9GISilcmQfWRJ38bo708NACkb8HTeFgP?=
 =?us-ascii?Q?yRRQfFZEu4ARivnuuE3UNJvQA+bkWu4xmGrEbkXMWEMp7dIvHwFzglp2+bt+?=
 =?us-ascii?Q?63xBUGNwxCXRDE8jSSCwoSuWzpfuoErcebqpJn47jG5wUmn3uLiDaX7ffpiN?=
 =?us-ascii?Q?f+ESu7LT/PwYT1nFtGn2llDKKoXyfQqvnargiYBWivMSjh01L9Z9IbCNZds/?=
 =?us-ascii?Q?Jom1h3mUBH7Vj9SDPBQc55HrUMkVQblQN7tx762McxpPpQKV3MuAVVDzdCLX?=
 =?us-ascii?Q?VqD292Ymvw4HcGw7Me3zw9yMPCOnUyh2KSLplJr6i3klothDPJNNQ7YshMt7?=
 =?us-ascii?Q?pOi1GYHZarB322/iBONrQJ7YuTGol8uVba2vBN0KE5E11U1lNCYWNzdqdSvi?=
 =?us-ascii?Q?BhjWwql/GTXrwBFQk+qzxoZq1yBJz0tqxEpVzVXOeb88kZtBJSSj2IHkqemI?=
 =?us-ascii?Q?FEy5rIdJuSLIlIxMbNpxH8KQ1XxdvZbUasJyzUV26tfQTTphRWUlycorH2H1?=
 =?us-ascii?Q?Q1JGYkUyeXHZV+lzJcoIpegBBvroUyyV+PSUQFLtzU9vohvkt3pE6zPinoeE?=
 =?us-ascii?Q?ihxv/sJOtbZ+BWNsFeDuQ29y8mTTGqi/ZikzNKGiVHo8OqPMh+/+k6Pxcdza?=
 =?us-ascii?Q?ElPETXw08TOf3Nq14AQLmuMC5AHxKtnYqXmQziEFRomnL4rqIqgP51YroBdN?=
 =?us-ascii?Q?rCi/2JoaUmrDgB64545UuKPaInDHYHz8EBur6Ed9n8ObPsa7Y49JD0jHDQ+p?=
 =?us-ascii?Q?sJSto84mGbZ9byagra6OfdX1O+Xe0ZggaHVwCf/jSY91xB/6dCS++MBIhGcS?=
 =?us-ascii?Q?D1I0S4HdaV+ekHfBl89cTBIgulMOlDyDLZjxWOUNWzQJifbQ6L5z3B0zQiCX?=
 =?us-ascii?Q?V2Z/ZhcIK5s3JQ32wmo6jYanN9nz4R8x/rZf68JPrYuAuN5r2S7x9+us/m6g?=
 =?us-ascii?Q?+oONsUZY0QQ6SE0BoaQPwALFa2vAYpr+5SxcGRDTiz0eaxfHIgPn6JlWiNxy?=
 =?us-ascii?Q?t5wo7ZRGJXAGNOpicF8Et3LzaDbolIl2Q6jLK6Ofw3UslmRMV1hA6ask1sP6?=
 =?us-ascii?Q?C8bQ6BBVnnYKvr96j8GNYUDa2Ke42rDc7zqmwXGITg7l5Xe8FKdF482VCpgS?=
 =?us-ascii?Q?spp/8xz8rwt5ZTDXfzKNJO0cgJELnQ2l/T3auY0M8PkcSCQZvynVr/15G86G?=
 =?us-ascii?Q?5zH1WWpMKFCmFqs65uGQeJLnDRqpkvgl3xDPtrz5AsZKxIbqOoGPM6U7MDxh?=
 =?us-ascii?Q?5WHaMxjIEhF2vdLmlhYLQ1LJh6aUJ+SDuRjunmWox9LKHty3aOz3hiqAPU4B?=
 =?us-ascii?Q?vM7c7qGKWv8VTU0U8jhFygE2TVdq0SarDD9fizddcSqQByMuO61c5T/wLtsR?=
 =?us-ascii?Q?I5B8V5wCGkpwLwE0NkMz/4AySVIGfDKLgGGebQGhT6AytYQ9MVS78rPu2hHB?=
 =?us-ascii?Q?VlEg5SGA01nwUG1C0UTw4/Ie6v7P4nc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 409b5096-22e9-4947-a4ae-08de5fd2f9c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2026 07:41:27.1551 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b0FQmLnI+GxwWUU1/+SXLCAuFVafIaCKVNd+d40a7nMVHpWKg4XW/RbJZICX7/V8W7ZwUVUQPoUdK2eBWnC8XTDttOmR0STVq4f+F90STT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9110
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769758896; x=1801294896;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kt8i5VwiQ3HI6QjXLclF2qUnjUph23IKk8e+XcMx7B4=;
 b=BtkPtI1PouK0iHWtyUOamJ7t4ZAesjZAZkAq5K0L+O9aezwZculgX5qz
 f4f65wekMfx3cA3aE4J5UUbLeIXeAKXbVks7ZpARHwXG4feEv26Ucjq6g
 KMkxs4meIvzXgnoCV3nIt+3QA+mzIdU7OZtZEmEQylz6I6zoVKa6+s3Dp
 vE5UXJhzNEeJw0QeKOEA7aZkfjGoQdrfkoiKOkJeyN9j09yPBlrk1P/6a
 PvSosqaWHU7fGTSbW+VydPNZ/g2korZ7GyKJezuZHd9DoqUjmJpstsVDZ
 RVwVeYHa3Eho/VYeibCNUN2E6aZlqeTZf7wAp49BPHG3xFqu2cINONhP1
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BtkPtI1P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: e610: remove
 redundant assignment
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:piotr.kwapulinski@intel.com,m:netdev@vger.kernel.org,m:dan.carpenter@linaro.org,m:horms@kernel.org,m:pmenzel@molgen.mpg.de,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,IA3PR11MB8986.namprd11.prod.outlook.com:mid,intel.com:email,mpg.de:email]
X-Rspamd-Queue-Id: 597B0B7FB9
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Piotr Kwapulinski
> Sent: Thursday, January 29, 2026 6:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; dan.carpenter@linaro.org;
> horms@kernel.org; pmenzel@molgen.mpg.de; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ixgbe: e610: remove
> redundant assignment
>=20
> Remove unnecessary code. No functional impact.
>=20
> Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command
> Interface")
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index c2f8189..6f380fc 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -142,20 +142,14 @@ static int ixgbe_aci_send_cmd_execute(struct
> ixgbe_hw *hw,
>  			  IXGBE_PF_HICR);
>=20
>  	/* Read sync Admin Command response */
> -	if ((hicr & IXGBE_PF_HICR_SV)) {
> -		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> +	if ((hicr & IXGBE_PF_HICR_SV))
> +		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>  			raw_desc[i] =3D IXGBE_READ_REG(hw,
> IXGBE_PF_HIDA(i));
> -			raw_desc[i] =3D raw_desc[i];
> -		}
> -	}
>=20
>  	/* Read async Admin Command response */
> -	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
> -		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> +	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C))
> +		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>  			raw_desc[i] =3D IXGBE_READ_REG(hw,
> IXGBE_PF_HIDA_2(i));
> -			raw_desc[i] =3D raw_desc[i];
> -		}
> -	}
>=20
>  	/* Handle timeout and invalid state of HICR register */
>  	if (hicr & IXGBE_PF_HICR_C)
> --
> 2.47.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

