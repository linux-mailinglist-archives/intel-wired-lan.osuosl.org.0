Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96832AD44FF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 23:51:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2AB2260877;
	Tue, 10 Jun 2025 21:51:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FBMaKAwF06AM; Tue, 10 Jun 2025 21:51:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D7C260866
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749592269;
	bh=8ACILpgiLc8/goAu6woMuMdpJ1KLXd86GUkg271YwsU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YUyV0qmprwWnLhXCh+vdD4n6JgnKchvQRaLkbutdM0EGbjXkPl0hmZhBhYHdLbHal
	 5GG6Hl1hR51OBvEtvLBECMLueaVWk9ls29WitVuBNNyD6EjnvxzkilYas2Rc03ad6N
	 I+J7PVQsrS8tG9ckjvlPWCmn6TEwTJ1xyPuxmIknFANZUkKZpeDBp7wVSSmKqBTqt5
	 MzN0liv/HHuwqUOUAPTiZV6SHMwls4bN2ZWq6K2WJCbjhEDqQXplHQIqrKvnyISPhb
	 WQu2uaxdAvR4M5C+KlqyCyVgGMbduMRH5oauIhGe3mQsrYgVBmRSz3Q8wiM3wZ1rTX
	 E56Or67JwkECw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D7C260866;
	Tue, 10 Jun 2025 21:51:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BD259183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 21:51:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF3234206F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 21:51:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fIVI8A6wLlIX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jun 2025 21:51:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BB4F142043
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB4F142043
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB4F142043
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 21:51:06 +0000 (UTC)
X-CSE-ConnectionGUID: juV+JqF1RxePrLTlhtz1HQ==
X-CSE-MsgGUID: pDbeRxelSoSzSSWumavPgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="51599427"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="51599427"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:51:05 -0700
X-CSE-ConnectionGUID: 72p8XVDuSauwcddMmvkMug==
X-CSE-MsgGUID: TtE5ZXSbTSa4E4QjgoL4sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="147895273"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:51:04 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 14:51:03 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 14:51:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.55)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 14:51:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oXV9uqEwSj+0YIboCxY3CHz0KZsvSTd7Iw5wd9BzwD8RDb0tgdHVWk9a3GNe2FCTXCUbBpkuGy88QLztTt2arOsS4D4G0G91KRlIeRr6F9fUN0Mo88Tx5DLW9Qsh/cvEmpLjVA6pi5fKgfgWMcTwwNQHdUV5U+RZlyC4JnEYuHr3sUBXCiUi6OQhohgyJlwPvLmj8QniUdf1hSiJpR4bVXbmrv4FEvPsRGVloT2stJvmDHJEF9S0CP35FNHM6X0bbs4N2NOivMuOJsZgUuNPtJLmGoJYFpMZr6QnScppOTTbdaHUm8cB42uqmUzx/9MX9jOVfZ0JESiG+pC4lv7jYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8ACILpgiLc8/goAu6woMuMdpJ1KLXd86GUkg271YwsU=;
 b=bCwWlI49NRLXO5NJDCjQFULW2vYVgfoppeVKMSDyk/OyZhJm44xBQqm4MOQOIhRnFpxFCh8bcFwqoJ8ZThO4K+E9tWg5GmXTcKksj/DBBbJ+IXtlMca5Ilg132UtXI0qcexF/SjJjWUxdaeMQMmMXGEj4OrevFTIasZvmsH1Zs/KLrY0QzCMZ/GkUgQQxMONbgbGo7RYXasnx/nnRETtQynoXbIARcqfc3yfQlp3pNmTIAHM5TcWX2aDmtIGUNLpikU8aJzhrEmwhvxCPeC7YSiAZoDTA7XCJYqYqjHLVK3tLLeyt9x/90ELxkRdw9/TYPZrhLC0+f/f+z9rWm1/vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by LV8PR11MB8488.namprd11.prod.outlook.com (2603:10b6:408:1e7::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.29; Tue, 10 Jun
 2025 21:51:01 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.8813.024; Tue, 10 Jun 2025
 21:51:01 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Jiri
 Pirko" <jiri@resnulli.us>, "Nikolova, Tatyana E"
 <tatyana.e.nikolova@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, Michael Ellerman
 <mpe@ellerman.id.au>, "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "Zaki, Ahmed"
 <ahmed.zaki@intel.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Olech, Milena"
 <milena.olech@intel.com>, "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>, 
 "Singhai, Anjali" <anjali.singhai@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 08/15] idpf: refactor idpf
 to use libie_pci APIs
Thread-Index: AQHbxnMbyT14MJNzr0WvY2/xttc2mLP9FSuQ
Date: Tue, 10 Jun 2025 21:51:00 +0000
Message-ID: <SJ1PR11MB629739DD2636DA1807B57D529B6AA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250516145814.5422-1-larysa.zaremba@intel.com>
 <20250516145814.5422-9-larysa.zaremba@intel.com>
In-Reply-To: <20250516145814.5422-9-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|LV8PR11MB8488:EE_
x-ms-office365-filtering-correlation-id: aff68bf9-1d14-4e2b-9587-08dda868e3d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AHz6eIsivIaQ6kZkBFpS9STKgCAXabZcgQcb5UqWt25WrMjt9IEaUUglEDs8?=
 =?us-ascii?Q?urVo97NQAtLPhFta/pBUB+zydjkr9nsXlX5GHymo6wsQG4OIetLgBSWRSjw5?=
 =?us-ascii?Q?AUOdPahSfUOvWiAJG4mAp9Sdn3dAJ+ucDBP4HApWxKB6ptDeyjFS4TpcU7zt?=
 =?us-ascii?Q?gqY1fT01PWAeElKfEyOysnI220p/8Op9b18ldSLBG4RH4kaU6cnM1tI3Nm5r?=
 =?us-ascii?Q?asBWapQxb8QqThU/+C+Qquqblr0TrkMwW9GpL0+vWUAiIuaEwKMT2YdkE3Ep?=
 =?us-ascii?Q?aIkbt+LLG8UEArqCc6LhDIgcjvc6/0vNDC7ug/P89ZdNhYKNYzEJbXLRvpzF?=
 =?us-ascii?Q?n7oa8swn7VXHmhwoU4pOOtpbPc3ElqVxmgxRSCikuW4JAhR1sjiekhjwN817?=
 =?us-ascii?Q?OUF50se79OPyZtQ+5SErHtORcmuLKGlA7b3Vp8fkPwNhVSWya5LRnANjEvvq?=
 =?us-ascii?Q?uF+/3Oj+Kt/9FOoyZTgj0jVEcg6u3WemYbQ8zVj1k4iCHPFj5pZFAU2VetLG?=
 =?us-ascii?Q?f3ki8L5NIAhqwVl4BCzzQl75joJ9d33C/H0gz49fjXhBFQNvrohFtlEh1UzC?=
 =?us-ascii?Q?nOMGLesXQp7ulJJt4lc5nTw0Roe7jyWEt5WxPiOg+7ppvfif8H0DOAZoeduo?=
 =?us-ascii?Q?62PAj0kOF5whZbvzU3+rwciRKwK3znNINBr+Mq2lcS4MEjtGlM6kmDyjC+pD?=
 =?us-ascii?Q?LDGFcIylODVEc97HKppqwici8WmUfFMYKOy03+/P8wlVlBW86fKw+3IfbkGG?=
 =?us-ascii?Q?uqnJTz8+BJn8/ICQkq1exb1ERxxe2nV7dCzrDLBAym2p9dXGaZrhbMzLBbKi?=
 =?us-ascii?Q?YNcL2fMqDTLZF9LGt5QXGyzNcIEkPxj/XYGDteoWwPmrWfUJbqkOHSDSdI18?=
 =?us-ascii?Q?6z4g332HCskimAeDibd/O71uI4QLvR9p7aWyr4RlsfPT1xAh03Elu4/2PHvu?=
 =?us-ascii?Q?NoE8K4ntUXSyahVruODfk0Fh90kbl3xpaSvX9AgvhtqxDWWr2S3XJ5hIRrFH?=
 =?us-ascii?Q?T4lkATZ0cBBnpU6xj4jhivzZcEVPCBRAglR/HP/2EKpzWdcRfaugwV7ARUgo?=
 =?us-ascii?Q?SNYGSiM0RqhJ5u6AlSL1iH+JWxTUyC5LHQb/UwZrw/OgaTePGOl8hl+X400e?=
 =?us-ascii?Q?Rmo6hULgI6qV8gEuz1NxwAMMaM9zlNUWGcsg7PujkjuWnIRa6DKKTn6rQEuZ?=
 =?us-ascii?Q?MZ61PY/9+BdoY2VH7qyemjm5J2awfgmaSm0AjrvD2XpdPkY+wo824u/Niw4i?=
 =?us-ascii?Q?b8fuAttODH9qvzldSPpq3PMCfZzGAO71QXxQHCNYk3O113tIHF+UPHOLVy2B?=
 =?us-ascii?Q?MHsR8UM4tGldXxjDPn4zOFTjZ9d7emgrQu9U1ZvZj86cK5Hwbopm5YGIk3J4?=
 =?us-ascii?Q?0Lpyq3mX7AWLQsUsufQt59wjZiLAygqa3VZ3tBEnpXy68rtrNAMDuO6s+/VW?=
 =?us-ascii?Q?KOl6njUYcQlrUr3EVaDl1cknesPm/WKcfFBm5iJKhDC4zkJ9r48FjA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EsfwsD9ngiRKESh+qPWsuan+qPr+Qiwenu1Vx3sfLFIWh6nEYcjoBG/tAd/i?=
 =?us-ascii?Q?Um6Rgbx6Ow6iVao6O2/Nt8AwSv6dABUgNpZ/3DmfXiPoMiW2rp3ryDAX22Ra?=
 =?us-ascii?Q?pNdXOFkBX3UMBEjZzWpa3+iUYseHvN9BAyxpkWwXu5KbvbjycsIJyuxWWWCh?=
 =?us-ascii?Q?LwIKwG6ytqHuNhmAfqvB298oM/X7+8MdT0hRDtIprPF82HtoQEUTHT3fnDgb?=
 =?us-ascii?Q?qC8uiu0eFtxZkvXKOi9z84yqHKp4hx7azQuR3lgPHUM5Fr6NuYiZqA00eFvE?=
 =?us-ascii?Q?8jqvhfTAG0oPm49HXby/VZgS81xH4h2czTOrlZnoGCKcQbagjQYCpdJbPnAf?=
 =?us-ascii?Q?fOYwZ8Ry/NA4WmntN6wPJXcQDiZiCuZyleCIqmML4wUnRUj6HvmmANAlONQy?=
 =?us-ascii?Q?2WKTNzetNr9ozdbADCoCweSISF50HXTUiE2VH+PgeBqgIMu//s9ezZY7ponv?=
 =?us-ascii?Q?MQPPawv0ouEyUuKOuT/6k3qWk724qn+MSlbyKvdQO7DlQOj9rP7BDIn/cHyF?=
 =?us-ascii?Q?nmUJoAdsoujeKPvRywK4rKMn9bcqfElbeqLu0q7gTyZYlGt9/uqWdiSdQoQR?=
 =?us-ascii?Q?vBZ6s05uPh248PUNGG6UVRdGYYrG5bpquG+mqxb+hGwQnISpzF2Z/YuD/w0n?=
 =?us-ascii?Q?UVcu2crKiYXyKC2nVL1EocUTuYDetkYQPNqiUNfn4Ec/QdnHaqpQGoI3VbzP?=
 =?us-ascii?Q?CokPrVJrm4Vf1TZ3d4jMHpvoKM2NCsqWrUxBIpgmyCqcKAkq7EaBKBfdSmES?=
 =?us-ascii?Q?17kHRu9qGdRYPUoepOs+gjXUxsP/R2ZXjDo4Qe5KKCIuE/FyR58WOYgxbiZS?=
 =?us-ascii?Q?bPf+7Owus4gIDU+8S3eJoY95hwBHJkg4Xqu41Yq7dXkIl8P+ILJg8fEz1kYx?=
 =?us-ascii?Q?jrhxX57MJNxq29fN/cXKRHARSB4Hh/HmdIfN1+2HOM7sHbkIlpZWZj7FX/dN?=
 =?us-ascii?Q?JwhZwLD9oCVQ8CS5qXCIRq/ss4LipEkOG+5F2prua58pHhu8DVh5rlwFBvcZ?=
 =?us-ascii?Q?EDR1tlnxziCulbS94lo+PummCydlmzwgFyVNQV+aZdhojccTqHnvYaqWsZSn?=
 =?us-ascii?Q?bPYIafHKxt7a5qtPuZtw3Cwumt1+iARLdtXZTQZ5rqkXJtjSZDMjfw9lBLW2?=
 =?us-ascii?Q?3dW/wh9jO3JjYiYFVrX6FxOtGJCQ3nj4ELgrHDbLGJ2P8BCQSVCGAPO3F0Vj?=
 =?us-ascii?Q?H1jgMHFFuExjH/FBxPDwSOLt1cIQcpP+fTLYDjbw7qAtKaYHcl/KtYuBX15C?=
 =?us-ascii?Q?SUO1mrTUlNhLyzqU9X3l1VGo16Sc1Tg3WEdzj2dg1GZSiq8Br+MhWtSujIfi?=
 =?us-ascii?Q?oozCku/rMoSkjAlhV5RB5YK8umcp7i0XfkPqCa8gkj3U57Y12ep0NcFmlnCe?=
 =?us-ascii?Q?WLoqLOYw9l7+MadPuYdCetYYZ0W/FStCsru5so7zbMvskc3cvQgWViPuCAnx?=
 =?us-ascii?Q?HS0JzxRfYCA4T+wk6WPR9oUL5WULdDyt71T5be1o12qbrWtRocoAgzO53Y2P?=
 =?us-ascii?Q?jw/4nQEq5TT+yPAZb8//OJA8kYgclZ4at6hwPiBhABB6hfb6hCymfl+W2AcM?=
 =?us-ascii?Q?OACKmPHoyH1BgmYIIYPMWXCKjYDicO2Ab6egkSi5?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aff68bf9-1d14-4e2b-9587-08dda868e3d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 21:51:00.5864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dhLxBRueMdk+LMdYf82hLUOQhG05b+K3LLK+CKdt9A4Fwk9YzcLEM3jMj4ljQ4y3JU7IQ7PVhCXRGDGTMxqZnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8488
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749592266; x=1781128266;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8ACILpgiLc8/goAu6woMuMdpJ1KLXd86GUkg271YwsU=;
 b=MX4ldNbkENZX+ltOxOqKDrqGR/FWpnJqhsLeItx0g03dJU57cBPeqsok
 f4jzlzJX9HOxydWI9076wV0yrNxfQqWUsI7fKaa32jNYOk7qI7mxNn16B
 bXReXWIlTGotmo5BW3Vep1dGKT3OPHYTLTNwA+WYn3rB1exKJJddR6qdx
 SD1eV3Vfr5DMBN9xfWAW8eYOZzNLC3rdRHsRS+gY9ZgLWx29dQy2Q/KdV
 bybD2jYghYcthQVwh2sQFGQuga8h/k7EWPuOk4PDKXrY0AqEwWnPJ9gnO
 MCACatq/hGMyYH5PW+Dn6oX2cfoEOIQhXs7w7+EXsCcJ8ckwluZ7mvZHv
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MX4ldNbk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 08/15] idpf: refactor idpf
 to use libie_pci APIs
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: Friday, May 16, 2025 7:58 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan
> Corbet <corbet@lwn.net>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Jiri Pirko <jiri@resnulli.us>; Nikolova, =
Tatyana
> E <tatyana.e.nikolova@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Michael Ellerman
> <mpe@ellerman.id.au>; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> Lee Trager <lee@trager.us>; Madhavan Srinivasan <maddy@linux.ibm.com>;
> Zaremba, Larysa <larysa.zaremba@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Polchlopek,
> Mateusz <mateusz.polchlopek@intel.com>; Zaki, Ahmed
> <ahmed.zaki@intel.com>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Karlsson, Magnus
> <magnus.karlsson@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.com>=
;
> Chittim, Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Olech, Milena <milena.olech@intel.com>; Linga,
> Pavan Kumar <pavan.kumar.linga@intel.com>; Singhai, Anjali
> <anjali.singhai@intel.com>; Kubiak, Michal <michal.kubiak@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 08/15] idpf: refactor idpf =
to use
> libie_pci APIs
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> Use libie_pci init and MMIO APIs where possible, struct idpf_hw cannot be
> deleted for now as it also houses control queues that will be refactored =
later.
> Use libie_cp header for libie_ctlq_ctx that contains mmio info from the s=
tart in
> order to not increase the diff later.
>=20
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
> 2.47.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
