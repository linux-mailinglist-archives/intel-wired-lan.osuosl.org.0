Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FNAJunfxGnz4gQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 08:27:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB4C3306C4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 08:27:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DDC46086B;
	Thu, 26 Mar 2026 07:27:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JHbBgsBgZGdU; Thu, 26 Mar 2026 07:27:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E12260731
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774510054;
	bh=nYDoPvDSymALwoz1WQkdpn7PHpyhtSKnbdef+nc1Qd0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nfnGtOVRR7vJ4YT4ubIxcelSKXNNO2W1KU2wbtZXIiJflWM5clOPZ2vyaQyfSnKL5
	 msky8+nHaa23AjuK1P+ylng86uLVnk+XKCKYS/1bJOjD2eRTgxN6vieQ3SpGcYLAfF
	 HPuZMSWbbIuqtjikIOsySDxCAXy378iGYMuA5WmofTUqwgxB2axiIF5VaIZs4GdNjC
	 ofypxbeMiC2DmWhqUJTupbNtMBvpPVh+K6lxcckZBI0yIc/jSeYnbQyO20wMARJhbW
	 JxZqyClQguvS0SQ9r1MY65HPkMOPifnsJu1x3uSlQSYHffa5JeFpo46OZeQAGaoJNp
	 TlhlPCe4nnw7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E12260731;
	Thu, 26 Mar 2026 07:27:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id F2436353
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E3A24606E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:27:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5jDdKj9RCVa8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 07:27:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D1A7B606E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1A7B606E0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D1A7B606E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:27:30 +0000 (UTC)
X-CSE-ConnectionGUID: gsw99o6hQ4uF6pSgfPjAVQ==
X-CSE-MsgGUID: ZGG6rKKERwCi1s1T0cRpvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="85866291"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="85866291"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 00:27:30 -0700
X-CSE-ConnectionGUID: 3JPz2CrbSwW1NXatHREkyQ==
X-CSE-MsgGUID: pp3HUVoeQ3KTNMoIcoTvTA==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 00:27:29 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 00:27:28 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Mar 2026 00:27:28 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.63) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 00:27:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hOQxY1B1J3nh5WZs/U3ASvKs5dWEhrGsfbBWjF8n2iVrNBTy1tf518bdaJ/hzVOCT7MyJ0FjqmpCV2bUlY76E+t6hP+FUwZkOkt2CN7BoKPiApQ1avWjTSjVPm6zvLmSK4XTiwRuwffXkLEoqoRUyEL9l/xBeLTYQErWXYBh0y8lgIpMQNdqNnsf0tKrp0Wrz+Pz5g5gu6uak6DAUDcjzPhROkKBTg3lknU4xpTJUcjyUV/W9rw5XR1ql4Va9KByRoodr6GcYzu+CRKy7cdaVGfALxKh7BJfSaqfuyRNCzrQyBtzexju0dtxh9hOeeAVlP//qG/ebQ6copNFt4PL3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nYDoPvDSymALwoz1WQkdpn7PHpyhtSKnbdef+nc1Qd0=;
 b=eFkbjJk4Qu69g41DOlyXEQ3Q0cVWI9GOEAZwpk1KqZ0DXg5CZ+xqCFcCpZ86AM6UYLbFc99LFKXxXQv9VpOWBwrRCjXIb1Hw5WHOAkoNt2St+WMm5Wgwarnfm18k3R4Pi4t//72bB8Y3nrySws3jueAnLycQ8QVRMeRKh369l+PwS3NYwgMQzY8f+jGP1PFmptO3xAv3FKQE2VHRmLa/F+lxUsxnXt1wzkgW5hjom/D7tuQuaUF5J75ZIVd/6KOg0FNLYYD4Du+aiqwZhmyxuRSDmWgMmNObm7RHm6K28jRUwj4zaKrr8rBmAGLItfvqy1m/5F2pb/uYwsBINGPbqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM3PPF341F90799.namprd11.prod.outlook.com (2603:10b6:f:fc00::f19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 26 Mar
 2026 07:27:21 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Thu, 26 Mar 2026
 07:27:21 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Michal Michalik
 <michal.michalik@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>, "Olech, Milena" <milena.olech@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix U.FL pin state set
 affecting paired SMA pin
Thread-Index: AQHcvGmwRfb74f8xCUivBRi3uN4wkbXAavHA
Date: Thu, 26 Mar 2026 07:27:21 +0000
Message-ID: <IA3PR11MB898670E22CAA3D031CA1A177E556A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260325151050.2081977-1-poros@redhat.com>
In-Reply-To: <20260325151050.2081977-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM3PPF341F90799:EE_
x-ms-office365-filtering-correlation-id: 3c8e46e9-ca32-4057-0a48-08de8b091e9c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|56012099003|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: TAtnt/2nLEzyNlnG+OAWioX3yEq/nj3pRqJYUMvQr0okzfzPhbbjqPgX9fAVQvjZgHXtsR/Iv6fm4wffUu5tGmAqBPELrgZE/gMvg/ekbTEWo97HsSy9lZjn7odHE5abdqcyPMW2xgfqJHi0RfpMaecu3xqupA0+KieBU6jdQZDaOD+uOhpCqUOfW/niFvFyxGav0UWVs+T8m40wLRkavwG6HaUkue/EUb6DRCQh92xKAq3KtA+LRj1E+blT0FXQ2mfeCiygv8E6WKlP0gLdZFKuK1fLHm5HWsnYdTHmjyZVpaLhXP+KY736PbtmzXZGVMf1ulfQMu6mf8WK1ITaVU75Ov7cpB+pARblkqL2ePqhIku1Mgf1XMp81jZRgyVDW0Vb28rvNj11KcB53KLXzDt7RZCA84emQEbuq+0doKMzNizgCxfM8iAt4rLVCzCTQgRB+rmLocpqfBnU6mvY/WNtv/zgaxGFx17gCjiQzDZk3OjjBdvIpOkfvf6mWGciBjg1JTMTwi0b1FpuP8TPt7YUbsUMCllcjyqsp1EW5r+ncXpMV0jSVoFOmmv9cp+8V89XA4S5pdPEAebGdpiOzzQfYvVgByqzG21EXlJX8Ht8coUaLmuSb1iN8RM8MBAj06CuPPicHGO9MRwTf3MxHU38SUv5/P/0+CqA+3w+pkS6Kg7jPAjieep3A8dFAlPGRq4p7BUPbvvbMTDDikwA0pca0yUvGsafA608qyxntEr5Z0g+7vFr/QW2B3RNzhBoITFRzHawRZFJV4FqxS2CMmrQ7H+G9fS0dkuT/a0WnAI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(56012099003)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Y+FRXB5KZwYSeHr9udqIeqCX4Uo6YNtePPc/rgaVqOPC9AyjtVKvIk15tsDg?=
 =?us-ascii?Q?IUXd+ILfCQWcec6gP9HA4ZWtM5cpnVhYQTk5hb+Uh3ClMLLLLqITyk2kHIep?=
 =?us-ascii?Q?bKjN8UUbAj27lxbAb0NfoIeAf24UA1p5GBTHFwM5YpkhKXqFVvq5rpMOgA4V?=
 =?us-ascii?Q?NFV1U9EAyaPU3yRJDcTCa6RPZ8l7t/qJ6Bf6+88t/6JIbjYorTEgkziV89Is?=
 =?us-ascii?Q?LB8a8H4n7u/P5K3XhDh0lF2xqVzcXDUjfjU/uwVkFMk7dwi7AMzjaJl1Dbt5?=
 =?us-ascii?Q?BS1qPoSPe+ZPLK2/9PYOpOmQ4Bk40bIDaFcazIcl+ZRrmWPoapjlsoBZcJs+?=
 =?us-ascii?Q?LQ0UEuKKfVIsdtn77lcLDTycQfINEgrQwpC/cLLuZQsIzah1eAc93JORx4U7?=
 =?us-ascii?Q?LoobRZz5ZkO1PZtMJVoXjVtj4NzKJ/72I2TC6kRRvk5GbCATn8Yf2XIjeBSS?=
 =?us-ascii?Q?Z5IaPeCJFIc/eRHFXTCQyMEerSYbBdDWXlYSUy1M23kdXBpRHqgFuFbCpvlY?=
 =?us-ascii?Q?fTs0seQbVrHGK7rnip/YJ4fD80fyhu66Klw0pOJ8S8XKz0CmT+W5d8ubO8fE?=
 =?us-ascii?Q?TrVKawbt3Q9OIRqF/VUW//UYaGUwIN40Wo75CpEv5Yh5Ksesr5ZCBUTkJU3Q?=
 =?us-ascii?Q?aFwUJH96fuDgBScDZNuWz3cpREiuOVrOiFBEW5NExcoPUcsA1NyMQiWBm3/B?=
 =?us-ascii?Q?hqwmLcwJYwXzFztorDMXlXR2bgtPOxG9S1TuKff2Qd+XQurF7JOOklyLjwnY?=
 =?us-ascii?Q?1XSePEPSLhAhtiZRE7YfVb+fYw05xRyagSfHTz4WKiMZlXo+LZVDuTnchfxa?=
 =?us-ascii?Q?yyGL5o5tBkeu9BwvDG3S7P9fO5CYJY/N2WiYRpp3d6bENFj4jHU0Qe4GH7Qu?=
 =?us-ascii?Q?LDqOh3QSyYW+Ky2KsxiG2xEhAc7p9W12CYrObjiAvO6vHNnHCSfxoDXDLR9M?=
 =?us-ascii?Q?Epsocx565ZE1TV/vywqEJV0tj6rNBWuzh26VjOaXW5sjMVhbRbwTEO5TO2aq?=
 =?us-ascii?Q?OkQH7oPY7fIHAIq+OkDLy+4FY2uYgTrXeuYjwcQBWGyemlqBvsZExq6ADgGc?=
 =?us-ascii?Q?G15QBd6J+th0hVfefVHYONr6UiWIYZXVRV106uKFZvYJ8sYOZzzLLBuQO+Hn?=
 =?us-ascii?Q?HjHWu+hAAYSR2x2biP89b7GnS8fiYcF8uF6hwoRJvN1C4+bBda0DHSJ1RSY+?=
 =?us-ascii?Q?ZVtaiZSF0Qj9Wh3TvwJ4t8PrV6uQONP8Jpx4bajcvwLwb4V1N6NRVbKIGJjn?=
 =?us-ascii?Q?wWz1KBZc5fYSlOPorUrxWkFBrASoG0kjLY7P/rxQBnRqAfmOWlivwhNYyy/O?=
 =?us-ascii?Q?E2wZQvG3I5CYlGXt/aHSmLbvETsXiucZqud5ELs0ps5EtdDinndTZGZNBL7N?=
 =?us-ascii?Q?6QDTfZoE7520xwkweIcCghtKb3ljwrEVA+KpLtzuM24Ymh0s6VoQ0RZPJAX9?=
 =?us-ascii?Q?MV1KOZxBzmiU61QZ7eg1Oqmz2xgVuE6sbmfgVdEqsI7GyPcjb+UfeijDJuD6?=
 =?us-ascii?Q?Ame4+sfKnhZswRUOUEnopgRFjrzQsQkKH5ft240Wbo75RSPJCmYHhf30HD09?=
 =?us-ascii?Q?+BEqtzov3VoeD0v7CXdxJdGcetEzrZOeGEkjkW0v5bEfhR0pAGKWxbPkspHf?=
 =?us-ascii?Q?v5JHBVyfUIRW6akgob3pgMPyRqO0l9AVIXTYfP/EYldPKxAqLCVQaJHB5kTZ?=
 =?us-ascii?Q?4EqOdOiRb3NYiE7ll9JE2DaDpvHFE+krM7gNiLqSJuyBy/VEXWU9INc1Bhs/?=
 =?us-ascii?Q?L9G80j61Q5VZBQ0z2PiWBcnblE2NQnY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: QoMCeDfwbf7qojOy3V6B5M577FEHuJ72w4RSdRBCPI37OQgo0VXT78wVpAf4O/SAwHiPWdo2n4MEJpcX3BLJkRnyNzYswg5OEoO7mLWBZ5uQUJC4qLVAUwR5kTIdDj+bxkhtm6nSA40/22L/8B3mmUsQ+aTCUGUaYUg9sPw+j4YSgn7nseacf7pmybH8VSVz8IGpoCualvRwEwKKCJyTT48O4uYosnl0B7cAi6Iy0MO1lR4KenrPqs6/uL0NgoNIvtOUIZNkpn+ZjeLg7tTU09tGdRXELmtbFjoI/kTFpUTgGg0JjOMN1UY1h418e2AdOejp3aRQ4uGcp6iq7Q2MiA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c8e46e9-ca32-4057-0a48-08de8b091e9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 07:27:21.7231 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DaodmzHroEbVwtBC8T2MzAfmo1qbDEBsFu7JowvnAjOCBD8AoZyhOM79r0El5Q0C3P9KjOWC5xHzKoVHjT/Oon8XFJvjFgFtuOI8Iya8ky4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF341F90799
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774510051; x=1806046051;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v6VQNC5d7s92TOyzJA6m+/yRuXLdzvyYYc9583FxtC4=;
 b=aaKwznjMctjcEykxVR9AeU47F2vhMDzVUmXymEjf2iytEJUTKqpcZgPF
 9UpbSjYq8aSqzDOU5uff6l+gq/TmElW90xWOO32hzf5QUUtptAf1sBv6q
 R446RjEm8Ud6IsIUBsi4oTpy5Ux118Nwn0uJXn6j8CukJ8keMndF/N9lV
 z/XkXCG969HfyCYI5sGCZZD26I1jJ8txK0Rp88hbZEemSAL33ahjUsG+c
 aj6oZAhpaOzOwXsHjyoXnrtUG3lka2vIilmQl4QzhR19Pmtfv7oJBNKy+
 M1WjdK1YRAHFT/JiO3ikHhrIKw5butwiQEzuSAcUJlknRl2ZFkoE7H/WH
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aaKwznjM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix U.FL pin state set
 affecting paired SMA pin
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:vadim.fedorenko@linux.dev,m:michal.michalik@intel.com,m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:milena.olech@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 8DB4C3306C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Petr Oros
> Sent: Wednesday, March 25, 2026 4:11 PM
> To: netdev@vger.kernel.org
> Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>; Michal Michalik
> <michal.michalik@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; linux-kernel@vger.kernel.org; Eric
> Dumazet <edumazet@google.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>; Olech,
> Milena <milena.olech@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix U.FL pin state set
> affecting paired SMA pin
>=20
> When setting a U.FL pin to disconnected state,
> ice_dpll_ufl_pin_state_set() blindly modifies SMA control register
> bits and disables the shared underlying output/input pin without
> checking whether the U.FL pin is currently active.
>=20
> SMA1 and U.FL1 share the same physical output pin, controlled by
> ICE_SMA1_DIR_EN and ICE_SMA1_TX_EN bits. When SMA1 is in output mode
> (DIR_EN=3D1, TX_EN=3D0), U.FL1 is already inactive. Disconnecting U.FL1
> sets TX_EN=3D1, which combined with DIR_EN=3D1 causes
> ice_dpll_sw_pins_update() to mark SMA1 as inactive too. The subsequent
> ice_dpll_pin_disable() then disables the shared output pin entirely,
> breaking SMA1's connection.
>=20
> Fix by checking whether U.FL1/U.FL2 is already inactive before
> proceeding with the disconnect. If the pin is not currently
> controlling the shared output/input, return success immediately
> without modifying the SMA control register or disabling the underlying
> pin.
>=20
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 5cfa19da099bfc..76c68f54a1cc97 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -1253,6 +1253,14 @@ ice_dpll_ufl_pin_state_set(const struct
> dpll_pin *pin, void *pin_priv,
>  			data &=3D ~ICE_SMA1_MASK;
>  			enable =3D true;
>  		} else if (state =3D=3D DPLL_PIN_STATE_DISCONNECTED) {
> +			/* Skip if U.FL1 is not active, setting TX_EN
> +			 * while DIR_EN is set would also deactivate
> +			 * the paired SMA1 output.
> +			 */
> +			if (data & (ICE_SMA1_DIR_EN | ICE_SMA1_TX_EN)) {
> +				ret =3D 0;
> +				goto unlock;
> +			}
>  			data |=3D ICE_SMA1_TX_EN;
>  			enable =3D false;
>  		} else {
> @@ -1267,6 +1275,15 @@ ice_dpll_ufl_pin_state_set(const struct
> dpll_pin *pin, void *pin_priv,
>  			data &=3D ~ICE_SMA2_UFL2_RX_DIS;
>  			enable =3D true;
>  		} else if (state =3D=3D DPLL_PIN_STATE_DISCONNECTED) {
> +			/* Skip if U.FL2 is not active, setting
> +			 * UFL2_RX_DIS could also disable the paired
> +			 * SMA2 input.
> +			 */
> +			if (!(data & ICE_SMA2_DIR_EN) ||
> +			    (data & ICE_SMA2_UFL2_RX_DIS)) {
> +				ret =3D 0;
> +				goto unlock;
> +			}
>  			data |=3D ICE_SMA2_UFL2_RX_DIS;
>  			enable =3D false;
>  		} else {
> --
> 2.52.0

I'd recommend adding Cc: stable@vger.kernel.org
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
