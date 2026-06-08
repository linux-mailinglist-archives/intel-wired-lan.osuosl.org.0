Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NUTWLYbbJmq7lwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 17:11:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEC4657DDA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 17:11:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=WGvwtQRc;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE8FA60ADF;
	Mon,  8 Jun 2026 15:11:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gL-DVvhEPScx; Mon,  8 Jun 2026 15:10:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D30A760EB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780931457;
	bh=eg5p1yYFS/SLWh/tXQrC0YymR3vZeTyiCOxbY7J69mQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WGvwtQRcYtm4BjXBIp2cj6O/nkEJ/iufmpjZAbgx6QdgdBeYg5SrZDaZe1deCNCL/
	 TpliO71eTpMGzBrTNa23zPopkSFU5kKP6Uy+FSNM77eKERBtr4phoB4wyNj3to6lpB
	 fUydjU9l4PRXWorwmaW/+hlStdo8eHkQuG9hSkGVubb1QeiYhW0C24GKYloBBuOcqN
	 neGrHpFd5Wl2l3kbpyJVrU9vUqSTRJbCagF66rzw4HO0wUbxkTYIX5jEr+A4/GZfbQ
	 M6UV2gXQ4hHWpPXkGJ9SbBiMF6eat5DynGCVrgcyIYpW7s+H6kFJFySx1io+Qg3YdL
	 HUNEUhjo0MOHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D30A760EB6;
	Mon,  8 Jun 2026 15:10:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2CF9EEC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 15:10:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 12B70406F1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 15:10:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id krqg_p2g__gp for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2026 15:10:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4FD11429E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FD11429E6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4FD11429E6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 15:10:55 +0000 (UTC)
X-CSE-ConnectionGUID: sLzRY/0DRwSBq1LyUzM5qQ==
X-CSE-MsgGUID: q2t8aqk4RRi/PHwWepZLEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="92345418"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="92345418"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 08:10:54 -0700
X-CSE-ConnectionGUID: 2B94GYvoTbS92FLuG9sm8w==
X-CSE-MsgGUID: 2O2dhUoQRAq/sZT5boDKKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="275785083"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 08:10:55 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 08:10:53 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 08:10:53 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.69) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 08:10:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kTZ3AFBoVomg/jNZPR0sQnmS98JmPIwgXtUiDd4SM8wKCa0Dzs50Ac7HhhKoEwYcGZ6Jt+B6xng2cpd6RZDwTA/fPTgtZ6LszQ44igiE/ISuP9NBfZqCsdsP5ENUnsxeh4hHbu5KOxue5EP7ejs6/Fb4t1ALXkut28vBzVJHM8eR2iu2FLWElN7P5Me5xjCmWfVncAHP1sRA5i6qfdrnrGLeONQQu6Nz9SlA22reZLexUjbKnZ+sYtfmd6kJ7fR51XasUX2DkA5i2pQHl0PEgFssl3vd+K8Hib3KQ1p7uf3fEfE3xADDKw+sc8DKsKjRkm7Y1rpjdzWJGb1xagWnqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eg5p1yYFS/SLWh/tXQrC0YymR3vZeTyiCOxbY7J69mQ=;
 b=QIPhf0WErYF9XBhAOCoD4zJ9vha66mG+HWGAQlnKQsDaQDSIiNX2FyTitTavHYdtCjZ/k43uGUegU737htWab+UrDSh3cjwGtza7WutCfXcsh9HQ0ntAqjepXW+pPnQq/+qjLxLqTO61oy6Tu0glS7qmDH30JDj6pEh3GmpM5VWpWM5stfjPvAPtIG4K1FiVdCkC2bxc5MYggTjiJkdyaX8mZcxgKTQ0yOPPRstTBFw6P6dSWnotlCNPpnrOZK3ePtjjsciM/LRuSLkG87ZJBeMwfpn0mWh3LUjIK5A+9JH1tuEW1VBW9YvSHjwSa3K+rqhqKY+9LmzuI3iyFuaDiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH0PR11MB5265.namprd11.prod.outlook.com (2603:10b6:610:e0::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Mon, 8 Jun 2026
 15:10:48 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 15:10:48 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
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
Thread-Index: AQHc91UKoQjINlCbkEekqH6vPQNfRrY0wyqg
Date: Mon, 8 Jun 2026 15:10:48 +0000
Message-ID: <IA3PR11MB89866EC8B063AA4152CABB00E51C2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260608144127.2751230-1-larysa.zaremba@intel.com>
 <20260608144127.2751230-8-larysa.zaremba@intel.com>
In-Reply-To: <20260608144127.2751230-8-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH0PR11MB5265:EE_
x-ms-office365-filtering-correlation-id: 2962a6bc-82cd-4671-8c47-08dec5701f5f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021|56012099006|11063799006|4143699003|6133799003|18002099003|22082099003;
x-microsoft-antispam-message-info: cnWphi9VdRf+dY0w721AzJ7rBMFvyWJfUDkqEYbQtzUCCSU8HtSC0mVGesw64F9a4uQK0lxR0U65LvrETNngO5FKBc0nDPCGaz68f8EQuERPbRtSE26z+7h/clGUo2ofdVomkfwIQCp4DNMbGllkCNtGtKyt8VcTLDNrZPbzguYHu3QFpuxCIAWJQzE7JOv8dSgr0ylWCPizQZgxJjWc3TMfUoMS72QjXQHFU9tcXTYFf/oMFn3eoX5H6RkgtjMTBvYKYB1pmhHjk/yJ0D1jr8yfKsfvVO/QhwK84ap9EycrKIZN1jOVztAY9LIHperYdxSp0CRJOe5k0oic1X7GCXhTaZoppIKbf+9BumPU7QSCZvIrIdsmF+fHezYe7nzD/g/ivmcKGQWK7wrzBwR7LEDSwzinmI+RX+ZakyhvWzLYugtXdBoU95oq71SJPid0FF7jmLok002ssleXnYvP0D8QEGJSNLo5s7jYmGoPdsetLQ+tQ2rPPlNG/Ct28mqdlH0v91dTd6w+l3L7Lk3elI6nz5mPv0+Ti2Mv3wrJsq5arvm1RWgHUDuDHyOJCfOQTk+EDU3la9T861YjcFWXW8j7dfpwfS+CY7bUO6M+2LWrhrY2TvDBvgqC69fvSgCP8m9cOpZSvLEHIJgbpzDREPvyLqVPUqZMyM2oWnHHrcLwL2XvpwLXVmQFUHPaAcZTzYUak6ehou2b5U6HUvM5SVhzb5aXczGhkVxHTlYMEq/vuVTvNr7WVuxXtNQDrtt1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021)(56012099006)(11063799006)(4143699003)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?g85pHVkOOImTAVB1Z5COrlpzURgtqpo1AYBzrvzLkIyFXXOOMTe9MCKn3b5d?=
 =?us-ascii?Q?beifWH3PwClINyCGSDfgQaqSTb8MX0mZUus8SjeiZ1O8APnEwMu9WQCkon2k?=
 =?us-ascii?Q?9A5LQul5H9rVj9fMzm9Q3mbEwLXpN0mVvKBZxI2YhsJlC1gEsBuRYbFO9vma?=
 =?us-ascii?Q?W/Abo/3NAbTS0voeTBNAwKZxtx8hao7ska5KdOaoDRMwqHKiClnPCKugrMZ+?=
 =?us-ascii?Q?KOqCB5VjLi8netLPRdU7Tbwuh/lh8sAG0/cp8TLMqayM+TiDUqCGNstq7ikJ?=
 =?us-ascii?Q?VJ0sSL++tTTfI6FQQZL7BQVRckWP1zFJeRXjYD0inRNgaYIbhVYN7g3GAM63?=
 =?us-ascii?Q?HEp6d0A0faRGdLvNgJiBwQyenJ36zqxkXd+8TzH5bvVounrkxVA8bJEvP3l5?=
 =?us-ascii?Q?YYo7opyKNVY5Ve3mOHbKWXSTyqDymRFRbFhNvwsT0x4MxpEUR0qrR8pOvnIw?=
 =?us-ascii?Q?RDTs1St1tCvz0djXH1UHYmIHsyAaDQwvndoLNJWHKO4+cfwzc8Lgq4+h0OwM?=
 =?us-ascii?Q?GflmFQG/0guUCngkhHqCfdHrQ/ZQToHyiXnS1060VqTfX8aJ+hRzahyFsRnB?=
 =?us-ascii?Q?baIYXIRktXj/Z7Qp1Q0radmX3RI5gejLEBfCbsYqSnwqgjJtjjMIOXRZZ+ZK?=
 =?us-ascii?Q?ivSnbqGCzrECqac1/34g7cxgM35n4iU3+MRw349Rk60vEISynjGf9TdsgKAc?=
 =?us-ascii?Q?mEGgdikK/49ZxYNUJzY/cCvR0alAVWTa2Q1wK4GCB4LoEi7FnSYx3cldWvKK?=
 =?us-ascii?Q?2lJv3pwqMVANL1XvMcDqcuZzrdJkCRVGeA9XOeUp7QuabB8mnAKX1VUCSdFY?=
 =?us-ascii?Q?HZM50GiLeQb+rx5OAuW3inVOAEh1V1E2Rd4+6w4+3Gpy3WtZiyt8ew/SdfIt?=
 =?us-ascii?Q?LeY5N9fgUH4uKv5T+6xkKKIkSbq+rVxpDAoAeEV+/yKjL2kCRnucOPZcODlz?=
 =?us-ascii?Q?6pDim1CpWowL/Acryhm6UU/+Xk8Bjc2jR7rSxVUM/uVRilcxF0ZBxzoPeNBm?=
 =?us-ascii?Q?tvCnFw9ARRJZOQgfMlM/jbKPMjXTcKJfvepCLUTNOvzygPXQc8Kp+ZwMhXMH?=
 =?us-ascii?Q?iNBirxEbS8Mnh7yr3wa4G3eRMsrjqJGMyAmQOVlUPRUgk3KX5F5V67h6EO38?=
 =?us-ascii?Q?NZrISUvv7tiBc7fQTdEvoHQU/jojftwi7ASf6lUQREIMuCUs7lFMWO66ySrI?=
 =?us-ascii?Q?IuudAiT1Ay65wD6JGKnpxqtB+Xqt2Ms/gDCQce1Od5aY6I/tR40fRc2OGo0e?=
 =?us-ascii?Q?f/uAUQl/qZXogkqYifNXnRtmr+joAVkiivdcjScQuhkz+VthqNW/10lfqTo+?=
 =?us-ascii?Q?Bo4bkXrcu/hDT0nnXbtl1VQgj58P5HCgKNFfzNeJC1Ipl+ItsDZRxaOcmlPt?=
 =?us-ascii?Q?hQpfl1KZg+uilQYh4YQdQIqmtfhBNdMknSe62gdtXuMqvuK8O4jm5bdwOD5y?=
 =?us-ascii?Q?BM4u5tl4oRBu/VuVxVK5yi77efUVXbL7SvgGHhL+TavWaWVzKU/GSb/MjIYg?=
 =?us-ascii?Q?mZGgssBnlFamIcqGCECbHqYtYWGkLG6RIn9gylrrXCvgCLO/0vJDVN3grx66?=
 =?us-ascii?Q?MHOe/GDCYDtOOYrHrlONIkeKP2wKv6vbnwYM9l6jJKsINpedUSvH7M5Ke8po?=
 =?us-ascii?Q?mS4Bye5tTyEgU9Itwn9DMsq1b3XgFh5vMiaqwsbmEFyW3vUnMq2qAuHcrSHX?=
 =?us-ascii?Q?/mIWDLnWQtUS+DP7zRhQyF8+JU4rGCBYX14jNUmJ70I9eP7Ei7/eRQL4PaWa?=
 =?us-ascii?Q?niR7bkT3DHeWNXOgQ+DXvwjemBaoZ1A=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: RP7Jk4QTMX5X0BYB2YoMoyxJNANQ3QBGmPwR4FOX+xEZU6eythVYDf8dA3pRczZPNQEPle5V5ab8Q911Rpm4+ZQZsEd4qndhC3ynXwaDXs8umB8tFSKAg5vT+kEWXTDxn8ACKrXWaUSp4yRy83Up7DAyGt8fMeQFmBJNzofy7/R4PNiEVZvEoZCukfKSdrIP2Wysqb/77fSXchOqICarZcivAK+6MJKkGoVD3+xdI5s5V19ysguTHVIFRZl87jz8miQL2YzCsoA/WsyrZqeYVC0UPUhFYJFnm4C5FMUpx4YySyhLkKfFU0lSOKbFcIJa6U8/vWVOhMB+yWVtAMdV+w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2962a6bc-82cd-4671-8c47-08dec5701f5f
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 15:10:48.6398 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QGurMA6Mr5MKABkZdAW+FkrpYlCKGl7a8LfXX0TpxJZGXI/AK7ydi4VA34RsktxsTqJ1EgfKh7rnz40WxwDd31v8RfRb65o3d7TgjVz8J9Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5265
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780931455; x=1812467455;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u6ViOViziQi3WFNZRA/7ZKO/tuN0Z+hCKEBLuze/S8M=;
 b=cXV7K3fgHTsc/LzS3Cjt2je0zPK8hDGr3ibZc+4Lc/gyPpRIV56nz1dL
 lCLn90YLhs6t3opUGDzxX2CGuq5tisOcZCBHq9++3D76VRqoCxh20ezbv
 IlPNCaXOiz0cLyCrXsyR/r0tFHE4G2SVeKQe7fnyrPdeQl9/LwnWCWGI3
 dwWUCEIPAgJuG8BAZX+gXIrz4/vEXxvcwXQPOxieN+ESYSRPMW5l9VEAB
 i9EtMYV13Qkk30Xy/p9sQbjErvasrfkFm4OWKhrrm2nlRPR63muei0Rlj
 3jVHb5VNoe0Z6ehecgQbx0IMH88+tIT9oySS4Iy9Rn1xLeo7MUoNVuiyg
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cXV7K3fg
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0DEC4657DDA



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Monday, June 8, 2026 4:41 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v8 07/15] idpf: remove
> unused code for getting RSS info from device
>=20
> idpf_send_get_set_rss_lut_msg() and idpf_send_get_set_rss_key_msg() do
> not handle the get=3Dtrue path properly. Response validation is
> insufficient, memcpy size is wrong, LE-to-CPU conversion is missing.
> Fortunately, those functions are never used with get=3Dtrue. Given how
> broken this dead code is, it is unlikely to be useful in the future.
>=20
> Rename idpf_send_get_set_rss_lut_msg() to idpf_send_set_rss_lut_msg(),
> idpf_send_get_set_rss_key_msg() to idpf_send_set_rss_key_msg(), remove
> the get parameter and remove all get=3Dtrue cases from the function.
>=20
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   |   4 +-
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 107 +++--------------
> -
>  .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  10 +-
>  3 files changed, 22 insertions(+), 99 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index f6b3b15364ff..d744db0efd3f 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -4679,11 +4679,11 @@ int idpf_config_rss(struct idpf_vport *vport,
> struct idpf_rss_data *rss_data)
>  	u32 vport_id =3D vport->vport_id;
>  	int err;
>=20

...

> vport_id);
>  void idpf_vc_xn_shutdown(struct idpf_vc_xn_manager *vcxn_mngr);  int
> idpf_idc_rdma_vc_send_sync(struct iidc_rdma_core_dev_info *cdev_info,
>  			       u8 *send_msg, u16 msg_size,
> --
> 2.47.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
