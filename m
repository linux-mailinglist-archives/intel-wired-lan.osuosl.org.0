Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFcZCn2LnGl8JQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 18:16:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E080D17A8D8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 18:16:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A926383CBD;
	Mon, 23 Feb 2026 17:16:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iDJaxvOSAAZF; Mon, 23 Feb 2026 17:16:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13F9C83CFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771867000;
	bh=s0f7lwkBSs/UpWV2HlZtgek3FjTCE+i/Q2Qsd33wMOo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=acnv2slijTtq5Ku8XCatnHOvaqity39PsuhGUfH0BJplVqLS2IfOfKSS3W7Ys5EHN
	 kHRCwpbs6rmDzHwj+1a0njqWnLG7TYubI2crmHKpRnqsRpu2t/083oNcDUKjBU3qUX
	 P6uAnCXm2kCpfzlZPsQjr3CrfREpVTnlP/7TrvQWVggonAcUpax2FcyyrN3XY8HbZL
	 W/mkYoPHpSp65PBJny8r0TfODrAzkYytgUpI0J80bOOWG8/6PNANczUiHBdTAz+lnd
	 YR3yNvDIT++Wsbd8B1dINPtSebrJe7G2TyZk+ekqBZp7YjR5VcA5WNcOepPfhb7HEf
	 OzY2KsJd385hg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13F9C83CFD;
	Mon, 23 Feb 2026 17:16:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2362B237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 17:16:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 20B6C40812
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 17:16:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fmsobOheAFAJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Feb 2026 17:16:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 61AEE4080A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61AEE4080A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 61AEE4080A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 17:16:36 +0000 (UTC)
X-CSE-ConnectionGUID: DZeOLLjuT7q0MrVWeiBOSA==
X-CSE-MsgGUID: nZ0YeW/jTTGcWNa7R3AXZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="83492137"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="83492137"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 09:16:36 -0800
X-CSE-ConnectionGUID: g6UHuwv6SjKbx9ORwJNQjA==
X-CSE-MsgGUID: edHcVS6VQnG26KTc50Mb3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="238586819"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 09:16:35 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 09:16:35 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 09:16:35 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.57) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 09:16:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qxFzupfIvXOKK+J76JqFgPJHoIYrTmVTvIsJx6tAy0HCDmM6HC0Afhzj13yoAxHAqxDJhY6dvxUxlLtgNCWMszg9nZ8voam+3pPvn3zrup5CiCJYbl15VoUKPL1X7cj5Sg5L3wtGce90PYjCNDgy7kdQxZkhbrNbZ09X+xNjJWEk3c1gcd6lq0dB19WEfIuSPsAAr2a+PXaNWUBARc6n0NMoLwAGgyK8NaNT4vKw+pSkt8PRyOuDAaf2K72tzVx8KNz50ULL053omQbrgPOtCJPaAhdZpdGIcEiio+mEVqpUD0D1r8iMeazEOlT5fYctGWmWSGoeLuiQ4w62QWkVUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s0f7lwkBSs/UpWV2HlZtgek3FjTCE+i/Q2Qsd33wMOo=;
 b=k/ZvzY6re2Or3zEbZf7wpxZ3any2hykbiDKHnaaGo1/xCdfIOHPCXNoMD+kRRM3npVz8kPWDHtjr7fM5rqe1I4Y/rBjiQVEAaQULXquKn/PdeDcmSHGBGDHASt3CAp7yWN9TbpcbL6useou2bcdt7o1XDDADk7TmR6rqGbB8uO8PZRCNNkJwldnd0pmLkm2rF9hu8uRFq/X9OjJc6O9RFjs07rxVtiw+vR9Juaco/jxyMSrTLMvcFTcSgEZXpHfYmKQBeDwEGMCp39aQjav3iDh15s8LAYTQu4OPYkqfPNUiqwuBzSuvrCLhP17FsAiPer8z+rVzMXFEgLkCkkzvDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SA1PR11MB6688.namprd11.prod.outlook.com (2603:10b6:806:25b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 17:16:32 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%6]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 17:16:32 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 07/15] idpf: remove
 'vport_params_reqd' field
Thread-Index: AQHcV8kRO/57bWpJ9kWRmWonj8nuE7WRIIJQ
Date: Mon, 23 Feb 2026 17:16:32 +0000
Message-ID: <SJ1PR11MB6297B54EECB0BEE75C6178939B77A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-8-larysa.zaremba@intel.com>
In-Reply-To: <20251117134912.18566-8-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SA1PR11MB6688:EE_
x-ms-office365-filtering-correlation-id: c34c919c-db92-4b21-62e8-08de72ff4a59
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AlRfmKOkTGTQZged/Jyb7yNydlD7eWbBubHOeMF47noAXcGXRJsK61oxfxcc?=
 =?us-ascii?Q?aHCsz+QVClPTNwW1g0ViD3F6IScH5p5eNg5ZSR6n81yxqqOwZfl1TPMFVKm3?=
 =?us-ascii?Q?GanbpyTWKhC+gWiXTeBWAWtIDhXwlUEaTHWSEj++DqKq/2kPxL9VxZfE+6Y1?=
 =?us-ascii?Q?+FG8irlp5gSFRona6eiV/RIEUCcCwjcTRxcWtDO02PIAXKo5bVIUqknR6/O8?=
 =?us-ascii?Q?ytbkt/4vRVEo8ilJF49+91yypaTLf4cxy0dRA96t3MHq673izkLDSoFBNJbA?=
 =?us-ascii?Q?DlKDva9OzCTWEvqG0sFJZBjlKV1oqteHCh64g92nTRVFqpTGVksCFpZUsgy6?=
 =?us-ascii?Q?srmP/xnuUCxb4+x2hENDowhsknY4JXY5LJ2vFD2fSlISgtd/41qvqonsqPWZ?=
 =?us-ascii?Q?UpeMWLyadma3kzSSxi2HaNv9QSmTJohhw60g0kbwuJY5zY0eUOs7XF9WAlbx?=
 =?us-ascii?Q?QFlkShDivVDpgxTdTO6jerMQR+ynlm/jTOsfJzeKkVxnH48X9sZ3bH05UxLE?=
 =?us-ascii?Q?s7VcNAt+N6NlzCGpIljcE9m2m8WNjbtBR0HS0tdU15lulKBl1kb3siQyNQKF?=
 =?us-ascii?Q?hYx//pdSzgZ7Lv1S2P8f2Ftp2NoGvoXMf5X5gBvLZjusCbcg7ra3k/weG5tA?=
 =?us-ascii?Q?W4phMFQQwby17th8Ku0Q+1zGxyWAJnYGlbEa2bPnqupomJcHTAN6iv63RmGC?=
 =?us-ascii?Q?krZXUcqYk4XyQJJJMG6L1d+NCuIY+lHSDf+zggcb857qEDGFBHEXYQiVx7rw?=
 =?us-ascii?Q?3Mfsn8CTxX92c+CqU2X2qYGkehQL19nTJOsK2QR2IfzFP0rnvdtszdAX2/UL?=
 =?us-ascii?Q?vHgMJCYHQFI2bdDiSiBPajUx+fHq8vj+5qtw2s5ymkYPslm+jLjjn4anIP+i?=
 =?us-ascii?Q?9WsS3NvMW51mBzElNefb/6XQLoccXNOEJBteWiK5P0AiCQCiMNtDUctApatF?=
 =?us-ascii?Q?abtShw55TXxEETjX06L1HZSy/h6P5glA5YLJOSG6E3zWDdCTXxhCbLf2JSf8?=
 =?us-ascii?Q?oL73sbARadMQZPde5P1yNznwaYi6LUCbFy8f0EWemxAUYzhYoevEsJSSGSG0?=
 =?us-ascii?Q?nGqk0uPIsxae5Q2YP//rbjJoaTENsxsi0lCoWR5rG6UFd5wbDYI8tTNMSPFw?=
 =?us-ascii?Q?nFGMaxjwk00BrzQhPLH2ZvVtBtlYduXSQ+wTF8yH9v5X26ASy8aMMuHryPzM?=
 =?us-ascii?Q?b7B5hXI9WFQVheOqvCwoHIuS2OKSyKAipNikvzEW4OOqtE2GW9Aopx1M6H74?=
 =?us-ascii?Q?DcnelOWiLaNuJqggdV1wMmQnDauWbg66UNJXCJ06AFyR+8C3Bc9wpJcNMjZo?=
 =?us-ascii?Q?MWbOp2TyM52si9ZX0Zd6eMaG8u4DxkUcm+O8tl0nsFfZjy3omsi6a5HX6y0k?=
 =?us-ascii?Q?Y/5gD7FbOB4rnFHIxLUAk95PqpMall74IJ7FOQfbEj+tXNtqXpUQ6ElgmvNC?=
 =?us-ascii?Q?LsqtHJgePUD6qXAEwp4bsllICwkn+M7oEOc8tfNcRyMuPvCXq9N9ELRMvTnh?=
 =?us-ascii?Q?+hKnQhe+8O2Hi2MRGUSpw7nLxE2/nNPUqmDlTWqr8A1atmGphFmGVfhGgWLs?=
 =?us-ascii?Q?KX/UcgjX7VJDvvBeEE3fHDQW5AW3W9YTwNhG6IvXycXd6nXNwAYbDkg7cdl5?=
 =?us-ascii?Q?+YT+pLZ7VFdcXTa1cyFonak=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ARZuuIdjQG55d27Beri00wQnlXOe01nB3FC+1bh4psukiRY3R45MJuSRafrH?=
 =?us-ascii?Q?3DMBAisLTc4Gt6mlilqPVv1VbySsRVpbfxwqsCM4sw5pI2Q5LwlsCQcxCzzS?=
 =?us-ascii?Q?tj3Kafzi6juPq/FnjpNJhhZhMZHv5QYjWyYwijr/1GJ/hB7Ilw0iO7IyaqY2?=
 =?us-ascii?Q?BZNlK94Oy37xCHcUXH9SEpZLu4GU8DDw0BIRaGRLWOMIn3WtwkAe9+VXcxmE?=
 =?us-ascii?Q?AVqHbZpy3Nj9DKS+ZXaGt9c40KdZsFQyMlfH0v7T0+tcxRgVNafkeg1qmyyk?=
 =?us-ascii?Q?hI6PlFeDYM4HJfrQUe/MLQxeV+JLv4RYsSEUS/MqS4/3QMmkKk1YrtEhLva3?=
 =?us-ascii?Q?eqyLqzY3wZiTwQIWJhI2q5dsgLX57VLn8+Kmmg9hKJrqSE9karr2tRJfSPfG?=
 =?us-ascii?Q?amD+NojE35V1NZemxcA/b7T52IL2lWArxJBiIEjAu4awnTiVLeAEeZYcf000?=
 =?us-ascii?Q?SqTzdGzxPM4VWYMzbC3nnrtiX87lK6omsbqsbcGVHnI0l7Mj7LRDuK2cZNSb?=
 =?us-ascii?Q?/ErJkDcgtS7/b1+EKg2a3ZnmzO8Het+P7DTE4Nubc82JibMWHZsuCmtv5Cwv?=
 =?us-ascii?Q?Nw524SiQOtQKHYyyV8ti4KbcUK36HCCs20xOUtQlkL+TNMMXnY8nYY6NQs7b?=
 =?us-ascii?Q?+lGBh+3V8wEI0NQErKmsHx/32eymXxSJHEkD+WimhiSMGR3v4sHDFkuD8tGW?=
 =?us-ascii?Q?73qCw9D79A3ix3KemwhApJISX3BxTtzdndmxaLGOc9injyiOX3oJDr1sonFY?=
 =?us-ascii?Q?dbiYD+R/0Mf4uN4SqlEVzDcYVNHG7sBdLeC9DGmV8Jw1PWz3iNJ3z8gF4TPz?=
 =?us-ascii?Q?+fHjjD0k5kmAAOeB3+Rgrb6RJnmLcjj8ovJ3NuMgLhAgd9T297xMtMtvHd62?=
 =?us-ascii?Q?SAyGjii3EfKUSnof59dI3SB+wca8LdtaJ/6R8jOCbEy3zoUFYADfSCbK2HN3?=
 =?us-ascii?Q?tsa51HTX4qYRqXTvoGXBMeWC1HHt5OtIft/LV5gA70TA3SJvaBv0mITMjigR?=
 =?us-ascii?Q?bZGs8AAjSdQv9SOMgT1VcoAWLUkoW9QIAQeSsC8mDhcERVqmxlfdbM3KPJw9?=
 =?us-ascii?Q?6zsTOCRcfX56CSTb4E8hNehTFB5nQWkHGbjODWJ9ARpNlri9cVS9ti23SHOB?=
 =?us-ascii?Q?k4z5D+Ow9fJ9wc6lqegDk6aO4wjS4q2qRg8JskLL61kjov1vsjDf9hw7IGwj?=
 =?us-ascii?Q?94hyeotJY/4qwGCc+RtmL3jaEhwAFWCHcXNbcwWXbeMuEoc6wf621HYS5j+p?=
 =?us-ascii?Q?meIHo2D/JDjehBffyMF3T9D/Nxfcly0p0k16/T4PAsfrlyVAAgpKAw+vfxw4?=
 =?us-ascii?Q?FsKgaVRzm+oqORDfnhm+FhzMdl0IJp1AuYHQBJ+1v4vS4Lse1NdpUDb+dc8x?=
 =?us-ascii?Q?cpy986MhKlhTzG4L1/X6srbrsr7Hahcd8yAZIoliW1O+UYRbuXlYa9cowTL5?=
 =?us-ascii?Q?z1atEswxrrOZsWAS3YYojRcUAqPYEs2yo3FFq5ABLSIa6XW9EicniwwCdlTk?=
 =?us-ascii?Q?QDEi61y9Zu92fPuu+Aa+hJJGbHQe9TK0ufJBgMa4MssxeTHfSzF2fN6375W9?=
 =?us-ascii?Q?IoC7xH5tSbzklBQWDl/BOt4Bzaq1OHEUxjZtQZigiTaHudPWn+DZwS1xrhSW?=
 =?us-ascii?Q?TvqO6S2qHAHxpRv8U3eIF36MSWcBpxLyXBAW2FXNEORUh7wL782PzDv6jidb?=
 =?us-ascii?Q?VBmM0zF8pNcqo+SkuRw2q4MZvBlov5vWo8YOPu/tvo89EoCeCug57LMB4mw/?=
 =?us-ascii?Q?MzWKfOIORA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c34c919c-db92-4b21-62e8-08de72ff4a59
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2026 17:16:32.2351 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GrwStR3iGswbkhvRXrEmRsdDDNRtlZ1466Q+POfJ2EpMhfdsKmceTkBndbyX4d14vQ8HR8GWU6dlimfQreye0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6688
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771866996; x=1803402996;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s0f7lwkBSs/UpWV2HlZtgek3FjTCE+i/Q2Qsd33wMOo=;
 b=d0ifYyVkEmT1JkhylNJQbWCgYRT2FXKPfZPgssAy+quC/bWTQH5nnL+7
 05epSdthbdffvGwN8tUe40N930n3HYuWONHiglxCyv5WI014yr3teXwGH
 xergxT8BeQLUdfjG5+/aIQh2UwDA/jINENXVS1B+IOT8BGB9vymPALrwy
 452Vx7tSYmszRmh8nl0AD+yQuyPWMCw1n5U0YhgcZTqrw9UQZxGSUYlQd
 Q8MOYVu2fievjBySGuil074LASS0FQAOJMWj4W1uWhj1Heskf8wOHPxbj
 EojIrkYLzHxKlByiNi0SLFWEqiVzO2C+QAJ0SXI+vV4z4x1gpP3BOg0aP
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d0ifYyVk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 07/15] idpf: remove
 'vport_params_reqd' field
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:natalia.wochtman@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E080D17A8D8
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: Monday, November 17, 2025 5:49 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala, Sridha=
r
> <sridhar.samudrala@intel.com>; Singhai, Anjali <anjali.singhai@intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.c=
om>;
> Chittim, Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Shanmugam, Jayaprakash <jayaprakash.shanmugam@intel.com>;
> Wochtman, Natalia <natalia.wochtman@intel.com>; Jiri Pirko
> <jiri@resnulli.us>; David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan
> Corbet <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 07/15] idpf: remove
> 'vport_params_reqd' field
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> While sending a create vport message to the device control plane, a creat=
e
> vport virtchnl message is prepared with all the required info to initiali=
ze the
> vport. This info is stored in the adapter struct but never used thereafte=
r. So,
> remove the said field.
>=20
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
> 2.47.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
