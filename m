Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ygaDD6YbTWrovAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 17:30:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B14C71D4AD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 17:30:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=NJThkORJ;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A867C607B2;
	Tue,  7 Jul 2026 15:30:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IO1mOGb-37ov; Tue,  7 Jul 2026 15:30:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C344E607C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783438242;
	bh=8FVc4W1R+q86uOUnItbYoagVRh6ARIWYfOnKpd0K5kg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NJThkORJ1UG/cCv2CZ7iRdjCTDAZAWL7xH6cwjmuKqbqZVhXZ7NeZgr55eOdzTmo2
	 Y682OsDJ7f47Z9hL1uVK1fANY5sYSUbCP5RzdIHRxNxGFwJsJ9ntIGaMiD21A7ktWh
	 VZTwDnkXRZGIfIvHDtt/TDohQr3WIfCiylmWpsIXT2uwO0ijYUiQoDwJISd3Z2WvxW
	 IFHrSQC30uFhc5ImS7yp40z41NUwD7NfOeNN1UNBCjbAb9YV0Cn8gX7ZDfTLKHeuXm
	 YYg/Vu/6ni5Ssw3I4bsiKT4rKOfHVUFc26+VuzBaYzUbDdL8E7tmJ8iNV2rXjvV1/G
	 YT84ngYcaAB6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C344E607C7;
	Tue,  7 Jul 2026 15:30:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 332FC33A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 15:30:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 30A51407F7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 15:30:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2CogECf6Pjfl for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jul 2026 15:30:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DC4AE407E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC4AE407E5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC4AE407E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 15:30:39 +0000 (UTC)
X-CSE-ConnectionGUID: aWHqheBIRvqSEveSgXTPmw==
X-CSE-MsgGUID: 0VMtc9JNSHmHwlkwCRpxpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="83961228"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="83961228"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 08:30:37 -0700
X-CSE-ConnectionGUID: Bn2bOA4WR9u65Gnur6BfJA==
X-CSE-MsgGUID: dTA09TUhRUmc5N6jU51bVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="258335663"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 08:30:39 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 08:30:38 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 7 Jul 2026 08:30:38 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.4) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 08:30:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bofGR1MjoOfcMZK8elngCL9bKoOY54hPHOi2MDLtgw9I6QkBUOtsR2IOpmdQinPpKNaQvRFqYM+ig3GaOb75uGENHzr6juJ+eamJqXTqvdFIaLTDP3JYMddOof7u8NZLgd1dlqWDeg2EjehLHYxedyHkUuVsqyUvSmLavlSSq5T46zAXWChnTAgwUop4lFBJCeuQK/8evReqOo7rOUvSVkCy5ItdXEgEOSVnHA/F05XBvg8ee02DWkjx8uvrmRaNBDpYNhwVW2na+wEsRa0zNoRfl1jh6uJ6+4OLVu+W5bjTtUMKkFuxSMCB+8BH0Nf25O6VHD573PfUO6wckHdN6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8FVc4W1R+q86uOUnItbYoagVRh6ARIWYfOnKpd0K5kg=;
 b=r+rsCyz6fQ11RzE/vHjnaYmdr8LRJbKAey0jj608Su6XFsbcAB9sPCsvR2WnxCsHrK0WZM1WGNnqrMOgdDZgzBEdZ9ZfKDai0+n3j5ec1A5Dvgx1zI9RgKJ4HDHbW6+DptJt9RE/9ebbMvWnSMKjM6LuuQQ/hOvQ/ADZRL5trplQQ6uT38IsCmbWr1ko3QhT4r8kEYJs2L2SuPxz8iQofTT14OizqWOpENJS8cbEVgLX6mSjCWzpQL20zuYNm4tc5yNzMDjul/RMseMv1YElyyhQNhJenY1gv2W8lD2mPbyYeEHUuXFXrjMrXgQHiLgVKNB3xR3ibXvhJ1uqk6dWlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SN7PR11MB6995.namprd11.prod.outlook.com (2603:10b6:806:2ae::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Tue, 7 Jul 2026
 15:30:34 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%3]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 15:30:34 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v8 07/15] idpf: remove unused
 code for getting RSS info from device
Thread-Index: AQHc91UJFoTWiJ2/W0Gy41w+bpB/cbY0w04AgC2ZBOA=
Date: Tue, 7 Jul 2026 15:30:34 +0000
Message-ID: <SJ1PR11MB6297A8D94ED0E6F137BB06AF9BF02@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260608144127.2751230-1-larysa.zaremba@intel.com>
 <20260608144127.2751230-8-larysa.zaremba@intel.com>
 <IA3PR11MB89866EC8B063AA4152CABB00E51C2@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89866EC8B063AA4152CABB00E51C2@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SN7PR11MB6995:EE_
x-ms-office365-filtering-correlation-id: f992df24-eeb8-4afa-5115-08dedc3cb021
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|366016|7416014|1800799024|376014|38070700021|56012099006|18002099003|11063799006|4143699003|6133799003|22082099003;
x-microsoft-antispam-message-info: Ke8ikxUnK+w5+Wr++ocU534XTLHfs1XWfBjgh2XIytNNLOs1UINnuPTeGOq9i0HE/BKWNgJBL0SWLdqXZvH8KxYNncKFDE1z7dQOwGpP5GV8VpJVyrlcrdPfgcMVhNhBuy4OZmhO+8XM7vzm7XaC+LT1/MuNte9yHsqEHbsYc1d45I4hJB34PSrcv9brBitmeVhK5AZb2msjyRMTFb45P/x4A7kSOL0EMp/nniJiPxLYA1Uh/v3i1nPK6SCCfDGs8PxHcMG1h430ykNNyEy602+oZHPgP7BQB318xQJ1Yi3imMhdSI+957fQDcZT9B4D9AAYsVS+wox+Oq5coRa8XXLhBlRf07gBmu+wVAkkpCEX4iop0YfDaEEoP73zQkgBzfPyXLbRic2CLNHHQthb4944kXxMxsaDQekivUB0PZHugh129/gSAFbjNHJVA18p1S2it4VJsqkA8iqEfXCTZAjjVxGqOg+NiULcR7ksn9G7QZxtXtI7gD/PmyuXTL0Lwc1M2Fz03atRWlpDCq7UKvbQH710fWdH/IKec6q4wyrGDAHRVgFj0yXgQgy80tz+eGAZApQJrURP+8RI1pL/Xk+bUw+YAgOFj6SUN0E5TqSZomp0y6qdm7A39xYwLoWIJ6PxmBJKUIVUoVfYnlkzR8MnODZrGLrIdOwZzzkgko5VWK7ByWYwn9uUhzNL2Uz/nZ6+wVVGNdm1oYbB2oc+NtnHC/CAIjNu2LwshdChO20=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(7416014)(1800799024)(376014)(38070700021)(56012099006)(18002099003)(11063799006)(4143699003)(6133799003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vTJGLLDfmVFottv3NbYtHpZM5C2HlURkZM8MUwoVtnK3PPl4JYrN3R5fIdBY?=
 =?us-ascii?Q?GsX1IEE4SM4ZsZ1FjTvbJ5v/XFUExWYSq/HSGZH4AIANVYz4S6PqMvw9AAZx?=
 =?us-ascii?Q?Fg/jONh3QccJH70GBoGgATyWKmbOEB8jwJ7rD4+7cp4UUqbSdF9iVD+q03Mq?=
 =?us-ascii?Q?GjbOawhEWNkwgethcWOsemy8f45WhvhlUh8nNc3boyEpxJ+kt2+KDeWkcDxW?=
 =?us-ascii?Q?lSI/dlqemofcZqeWDp95V6VpSvYvfs2dIDsEJMo4WUqWjulI6R3ly9dpWicr?=
 =?us-ascii?Q?9LSwIQwhegMCQWGczooIB/IVDz7chXxxY8//asDAt88VIAzpBWb7lJy4pwsL?=
 =?us-ascii?Q?dELmYm06qaE7j0FKFEIcv11F9cl7mtXFHJiDCsY35AV+CCU2ZPgE6WQHXmsG?=
 =?us-ascii?Q?DHglxidRyXCoMnbVuWAHAM2tWzWC5Fp/UxVcwXd5PB4JsNd23yAXdZfwa0Eb?=
 =?us-ascii?Q?jEE9X3ZcMWGC24C4ZczM0koDRlKklmATupkq2Diw1mOdcIUDhL5iFI2wF5CB?=
 =?us-ascii?Q?Ylkx0i3tg1KoQXTCQRsI/Y0t21XR0RKGMhu07uZzssyl/FH5K6uDPFVT6fel?=
 =?us-ascii?Q?G33udox03V1sH1oXfzlAORu/XJBGckUTq9nGih9XO8RUNgcmlSkljHEweTPc?=
 =?us-ascii?Q?tGxmLN3Yaek1pQzJ6p5fuG/7KDziR4HVhVvSAkiRsPiF4qpvHu0bgxqzZxuP?=
 =?us-ascii?Q?Ang+e+h9bDYOBf6KtX0hCEGl1x0bIiJXK5sAJRJ2XlgGbbWpwGA0uLnUrtQ5?=
 =?us-ascii?Q?zVygVrgX0aKxSiCnXUdreiRv+QOaA+jTrkO8wg09FCbnrQoTFiqytxqM2eso?=
 =?us-ascii?Q?InYhxUY9ltJhSvd2TJ5kVIB4MLwaO4pOX2M/ZcBLwtX/ICF+QulDHZzB9qrc?=
 =?us-ascii?Q?zwgCyqD2ZEMtZhU7JCgRqUyWN7O4EsD2348Z7h8CbUJ0Lc6uObpqQXnCEQez?=
 =?us-ascii?Q?kpO2WAt5nngEC/CU/tnSs+JdLaAPSGgE3MeE1ZOqAG+47W35Nhm62deqW26p?=
 =?us-ascii?Q?aDjlx4n+fdLl6Deb6inv5MaF+vcZ3SkZIavN+UrY1vF1kuYXaw8A7NWUO1rm?=
 =?us-ascii?Q?zd+w28a3SXF3NOzySiWXBezX0VSKwVZjU4jI/IezaSaowlbz4ol2bQDOv+g8?=
 =?us-ascii?Q?7KFIKWToKBElVkMZdqVmmBcHvA6m1lhhxahl6kT/E141SktG2NojEW7Vx/z0?=
 =?us-ascii?Q?cKtq10Xi771RklD+u66hg5nLDcUCQX4ljS7Cce8Vp9HkIjECbzmLoyrrO6T4?=
 =?us-ascii?Q?mkLafxSSpdwqfRa0yR6SEkEM8ysO+Dcg8hOvEiqj5iE7zIcwQ5SApTBmbn5O?=
 =?us-ascii?Q?vXM77zAMso7zz2r3pB4EHjs/6Wbowco2cWXcUkViuO8LCYTuaAneojU7eZNE?=
 =?us-ascii?Q?Rcgnd5XO2+7gMcvXUsN4IcQL5dhbxf4LfwQfUOsC3roqauLZpbUrS8iSa4nO?=
 =?us-ascii?Q?nLSbKcSilrcCxLe5K8UNEPZg0aJCKnvuCOMrZ4zVZ12Wg9XhxRAyewbv3L4x?=
 =?us-ascii?Q?dl6JEWDXQJSEkY1iOZdI+2yCguqLkQz/lGSwW9+LG7hG3HSgPplNkU6Cl2hL?=
 =?us-ascii?Q?nyma0Y2fAQkLgXK1MXFVoJq7kZ/MGr/xIJU9v2VyId64R+b0rw4aaSkKlSEH?=
 =?us-ascii?Q?5rSV2PLMmpZjYDvG5g99It5KJZjNwtnrkxsBYGfWeAZG+H6od1E4f0Z4HKHN?=
 =?us-ascii?Q?UDjE1FATLuMI8NkICbNTltJkZZrwsHaQjhQfUPq2XYjv+RWv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: jFhM7sintGdJmq+wPybiq61Ah72nmN7fffDnJp5vYSd9DntvbyUWwnCajHL0onYeOhCe6YonUPUwyNDzKKx34g6pTqA8kzP5I6LKuO5/IErB+ynJVmZ8G6yp5ybZUow96M5GVvOf6XLgc3sU4SOFYabsi5/nvf75xs/5DlGjfr5hzVgYznVEoNwcCzknubtsClmceJLiHnd4teY/KuqB9YfBmCt6OGvnoTC/EsHVh29OKEZknUzxQX/AUrBAFl2ckBDcwolb7OTXwOnYQcnzbHbRzHAosnbztmj7q61rRjGZOezFEMJEf+aeYhFE8+OjDdWIXPDFcnVgy7eJzz1vUg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f992df24-eeb8-4afa-5115-08dedc3cb021
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2026 15:30:34.3833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0HLFQHktsgZz0oNEjQzVUBoq+Fr7yHMimw2TuZWLHyRwbtOrQuSvf8fkZWPrka4+9LB9yBemTEGZS419+XSB6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6995
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783438238; x=1814974238;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8Wqo6FjxtU4Dvogu0dKZUBQQDw1j7AJH/5X0s7h6DNI=;
 b=e9Zc+cpH+FXajyzLABllsetcgYTb6/UlYo4xyIuC8rgT+/XIjdxL+aZ/
 ynx4eQl0HUvlebbqFhBX4F0l1yZAcrMzypNDwxxHPvPN19PjRXlRs4FLq
 EMoA/x7tWItUEyJT23vtjBaCXTqoLc8KQlB3OQ7B1UEeP4bStq3URTNDW
 6X38X20M4kHpSC3YwSCEwNbSDoBzz2EozNmDUjGQhI+luAW34wPc1aJKk
 kol/6nxkzLNNBfZr0ASNxdQK0KI3VNOMWrj+3029HpYoiN19B/m/372fL
 4poetrBuwSsPMsEScKd80zQ2/6ptG6N5ZDugHjPJ6ZWU/QcPCwwTlUjbG
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e9Zc+cpH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 07/15] idpf: remove unused
 code for getting RSS info from device
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B14C71D4AD



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Loktionov, Aleksandr
> Sent: Monday, June 8, 2026 8:11 AM
> To: Zaremba, Larysa <larysa.zaremba@intel.com>; intel-wired-
> lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala, Sridha=
r
> <sridhar.samudrala@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.c=
om>;
> Chittim, Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Shanmugam, Jayaprakash <jayaprakash.shanmugam@intel.com>; Jiri Pirko
> <jiri@resnulli.us>; David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan
> Corbet <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 07/15] idpf: remove unu=
sed
> code for getting RSS info from device
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Larysa Zaremba
> > Sent: Monday, June 8, 2026 4:41 PM
> > To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>
> > Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> > Sridhar <sridhar.samudrala@intel.com>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> > <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> > <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> > <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> > Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> > <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> > <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> > David S. Miller <davem@davemloft.net>; Eric Dumazet
> > <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> > <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan
> Corbet
> > <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> > <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> > doc@vger.kernel.org; linux-kernel@vger.kernel.org
> > Subject: [Intel-wired-lan] [PATCH iwl-next v8 07/15] idpf: remove
> > unused code for getting RSS info from device
> >
> > idpf_send_get_set_rss_lut_msg() and idpf_send_get_set_rss_key_msg() do
> > not handle the get=3Dtrue path properly. Response validation is
> > insufficient, memcpy size is wrong, LE-to-CPU conversion is missing.
> > Fortunately, those functions are never used with get=3Dtrue. Given how
> > broken this dead code is, it is unlikely to be useful in the future.
> >
> > Rename idpf_send_get_set_rss_lut_msg() to idpf_send_set_rss_lut_msg(),
> > idpf_send_get_set_rss_key_msg() to idpf_send_set_rss_key_msg(), remove
> > the get parameter and remove all get=3Dtrue cases from the function.
> >
> > Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >  drivers/net/ethernet/intel/idpf/idpf_txrx.c   |   4 +-
> >  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 107 +++--------------
> > -
> >  .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  10 +-
> >  3 files changed, 22 insertions(+), 99 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > index f6b3b15364ff..d744db0efd3f 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > @@ -4679,11 +4679,11 @@ int idpf_config_rss(struct idpf_vport *vport,
> > struct idpf_rss_data *rss_data)
> >  	u32 vport_id =3D vport->vport_id;
> >  	int err;
> >
>=20
> ...
>=20
> > vport_id);
> >  void idpf_vc_xn_shutdown(struct idpf_vc_xn_manager *vcxn_mngr);  int
> > idpf_idc_rdma_vc_send_sync(struct iidc_rdma_core_dev_info *cdev_info,
> >  			       u8 *send_msg, u16 msg_size,
> > --
> > 2.47.0
>=20
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Tested-by: Samuel Salin <Samuel.salin@intel.com>
