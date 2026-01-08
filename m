Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D51D04A57
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 18:03:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A84DC6088B;
	Thu,  8 Jan 2026 17:03:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PUDaWesd5iT7; Thu,  8 Jan 2026 17:03:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CB1860A8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767891817;
	bh=EJuIsmCEtIvbGOF5QSZLviBzjXl5P72GzC0or/VSX48=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pH0akfatN2q6+JLGMtGZOfchwuq9b1r3Xyt8+ltMcX9dXyN2v6JIX8D7oUirV64Qj
	 lRY5tY2YE62cQrmXc4xYWiieO5qKLvqPHlIfd9kUDdncuX+ZCLEIkcbjlqnDN7h9+e
	 E4R/JiAGmkbDAF2ujVQnE/3HD+Yrw9vNTDGBydF4ZOqAeotsRN0RUmexaT95csNj2I
	 YFZqRZHbq76q+MNzeYFF7CHQlaM6xybtBdWgDaJjljb5NTYqGG0yRe/EgoIiM7LdBN
	 rlDueXhtWFLWrKGAJG5yQL+IBqZmRBQ56gfEGvarusoaQf7Hl/bMsAMEGrJMgCeeEG
	 WpRAT3Hi2UJSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CB1860A8C;
	Thu,  8 Jan 2026 17:03:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6265B436
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 17:03:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 47B9460880
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 17:03:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id op0NSpApUs2T for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 17:03:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6F863607DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F863607DF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6F863607DF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 17:03:34 +0000 (UTC)
X-CSE-ConnectionGUID: BFT4V0Y7QuS3FwF3u3DJYA==
X-CSE-MsgGUID: fMjHxZoDT4a7bfLmyoMGYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="94744906"
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="94744906"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 09:03:32 -0800
X-CSE-ConnectionGUID: u2uXDMk+Rn+PMuv3qFYhBA==
X-CSE-MsgGUID: yW7bnQnSTm6NPaEKibxrWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="203313251"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 09:03:32 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 09:03:31 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 09:03:31 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.13) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 09:03:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CnHuUpgnka/5iOOAwAObuWyPFqlTY9dWXcp1Jmw4mpao/O7O80Gu9F3D9tcxCF+kn9TUhbmlfCmLP6dG+IzW2ctPt13nRrvqy0xpIIsbQLTCFaQzcQaPPKjYEtZgnjDN88jJG1qR7NqvpkjH1//oxXAxLUOs3sfGVndm24Zt2xqYyFoJ8iVWNoDQwWgUwSo2CjpAwGborHIypqZ/XBnMx+EkZHTuogoe8cTlWZEYtSwsql2RDk9bNV9yvsn1EtN7A8MIUKRqWyTOuVZcgc4mqM9Lvpp58DDVH3v10kDTpH97nPS02cBvS9DHUzp87RFl1v/G4err67GSpsQU+G89XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EJuIsmCEtIvbGOF5QSZLviBzjXl5P72GzC0or/VSX48=;
 b=ctmKFQHWhldHqgQbi4/H4j+v4FyO1fLbVgzgZaVChak1jbIk8Yu7xCHyrbnvUWn+Gu81cSRWVDJ/2TAsW3QuNVgMbaRZgn0ddP+mQjyJQO00bji82IuutHxQZkg7iQ5RdewjnuZTI7hga4ZCvPe5KS5V/MuRwKrBozKshkBWogh6amFcjVxM7hcjMwvGmFsYyWnqByWL/dT6g6Gd/30oA2gSCICwEt1Q+3GHrixSX5v8V00FOVvymTv179PkJFjfn0jvYUMNyVYFouxuMQ/q8Cy69dQWbi07qyb7egxcYyWYz7V4BCyIz4Rku3NDIqAqk2pLFSpnnpAch2lGEl/OoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by BN9PR11MB5243.namprd11.prod.outlook.com (2603:10b6:408:134::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Thu, 8 Jan
 2026 17:03:29 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%5]) with mapi id 15.20.9499.003; Thu, 8 Jan 2026
 17:03:29 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Takashi Kozu <takkozu@amazon.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Kohei Enju
 <enjuk@amazon.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/3] igb: prepare for RSS
 key get/set support
Thread-Index: AQHcgF6xg55Gu1boXUC0yloM7YmEyrVIeB2Q
Date: Thu, 8 Jan 2026 17:03:29 +0000
Message-ID: <PH7PR11MB5983605551C292EFF7FE5ACBF385A@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260108052020.84218-5-takkozu@amazon.com>
 <20260108052020.84218-6-takkozu@amazon.com>
In-Reply-To: <20260108052020.84218-6-takkozu@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|BN9PR11MB5243:EE_
x-ms-office365-filtering-correlation-id: fd6dcb29-aa37-46c5-985a-08de4ed7d89b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?hfWhutllD6SPWBmjxuFScbYZrDS54eD2HZvKxo+2qNLzwIgusrkmnJn2OsLB?=
 =?us-ascii?Q?Jdv6Cp9txKvBZa0berrpHYvVeyJGa0vN8xCmqnBJ0WVA8cITLC4AvSfsc6ab?=
 =?us-ascii?Q?cG18iSxMP+2CJ95r2uj0edtlan49NoWBgwlgfre04r3A/YHfTgaiXYyUoGTu?=
 =?us-ascii?Q?SLX15CDDd2FkQDrmU9r6tRGc4fnAcIZZGOgFUwwDMCl3lCF+Zx36wdy3A/yU?=
 =?us-ascii?Q?5m9l9LWnHJBieNv1pUutWEMWFWYi/ML13fu5VO5jzDDCVH5PF9LFvpl6pT2g?=
 =?us-ascii?Q?OQGcIhhqQTRkvk7LxJ9/TOEG6yaA07sLGP4ex1TJ0nJnGNe806Vbp4/5p3Vw?=
 =?us-ascii?Q?rIZ99yVRHMqvEWuwQqn+054ubtNxkCXjbm6k65YpgvkXaWx0sOwVIvZbjOsR?=
 =?us-ascii?Q?50h8eAZfRFiQXZQeJ6EOwTDs3PrceKFhjgKQ1ASzcAHSX5IX+kkhMZ+gFxuD?=
 =?us-ascii?Q?Q7zUIGIZLZMoI2FPWAKulJf2hMVxxEm2csqqpjw0TWYzX6TE3MGs3qKAEMly?=
 =?us-ascii?Q?vvT4GHlnQAw0+6z7c3XNEPLxKJQRWrkmACLaqDmHlbQu7eY8gKx5zZGA4BBN?=
 =?us-ascii?Q?uBR77a8e4zHul+5kRnPdNGBPwqcdaZV3QD4fbuUkWjH04HKBPwiA5wHh7sPG?=
 =?us-ascii?Q?1kz1ZK9twP1rm/+lMg121vhUTNVqbCIOGoBBFQ19FWsp4mBnU90a7ZQvnMT5?=
 =?us-ascii?Q?XXbDvGzWCss+N4AuKp+Z+r9MTWrToYp7KLSJoR7fdDu0BBfKghu/PYxRWSOp?=
 =?us-ascii?Q?pZx9wD0x41SzNPTQjR6b3PtpeoXN3GsX1ry24bMc8rpecLxldGaJ/fDrJK+l?=
 =?us-ascii?Q?C+bspt1FRQpMwvd2N36qggGmLTzVgLv7ZvTlo0QpThOTN20jvec6ZVa0Pvg0?=
 =?us-ascii?Q?/K37C/Gz+qDrupiaUQ6e8e9nuTAVwTgnV81fvRDPat0PS8Sn0kxTWnDZf+5C?=
 =?us-ascii?Q?iICFncLtI3VWtyIFovC2rnsY17s2YTHp5Y2nygoZAG9SSNfBhh24eeByzjBl?=
 =?us-ascii?Q?v1te/cyBsc5D+mNlmcjAi5u3YtDB1coeABNfdjHdNXxlimk4v57LVWT8hAOR?=
 =?us-ascii?Q?4M3FYXTqZV++lZFgiCxLyojfYLwQRyYHMV7k45thuagzF8vgrJuyjB4vbFoz?=
 =?us-ascii?Q?/j1wL9kTBKaUrQsTzSy8wTim11mcczV/tNCkzrKoeyAwwi7C48ZFv2TY7GwJ?=
 =?us-ascii?Q?lUwmIayWekwpAjbjsQ6Nkg7nLxZ4OmL+90Vuq9hOUFFxLX/yFIMfQoBDZ8Bu?=
 =?us-ascii?Q?4esQjPIBiL0ONbXc8BwMcgXyhNKrhFlLVlyTJ/YWy/X8XKcIN/6qPch7/Z9F?=
 =?us-ascii?Q?u0BYfhTqaBgVxZY+BolLuvLBK9J9J6blGWiHYCInc2gMvKJJVCIz3bA+dn63?=
 =?us-ascii?Q?v44aybL9iKQNs5Fmsfyuy1uIMANou2Qx0Mf7rHmKQ0WqguQbwWTO1a/WnRxW?=
 =?us-ascii?Q?7B15nBKXFeUsEEenT59mpeETEgdYlMdxC/658sW6M/PbW7A7JrXDuuTAb4QE?=
 =?us-ascii?Q?44AUiwD6z3/aPwG7FS1Iaw6gecnW/lAE62OT?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kSmWoairbC/Czi16wSmKGcpZ6UfCAnBs9PBXCVqzdjpgF/OWVolNGhgl7dr9?=
 =?us-ascii?Q?Gqh34CbQtKrgWN0/Sno0QokPe9MljfkPDilb3xEtN/FJwwihwm1upyT4EGPG?=
 =?us-ascii?Q?2LSJiMt/DhYs6iM2YlyU4UyjFYqoNb/221aIKQd+/phNPDmKUrSz54DQgcQN?=
 =?us-ascii?Q?0EKDz9iQHPZKaF/iEEYLfiu7RsARIapstgvNXZXcCGMMZfzSJ45/ipH0L8ty?=
 =?us-ascii?Q?+zI5sCw7sUqRolPJqERdLaE5GK9w5aYxUD5eNun+B6eq2O59FZgD9AxMQYnG?=
 =?us-ascii?Q?GOwi5k0wZ8g39U/xO8lf425WdLw7e+MF+CAurpKn6cCNJ5OTWK8ngzz2GhOh?=
 =?us-ascii?Q?Rj3ASp8zpu0ET40XVW7c5Jm46cZZD+9JwaEEEBiEDIcLWbeBj/bH7RJ2NMje?=
 =?us-ascii?Q?3Wl+PFDRqBNn2zs0pbeW5kPXoZDTQ6onPa+5hXp5lesw9Je5tDTmZRuRQg3B?=
 =?us-ascii?Q?c3VzOM+uaui46r6UM0ldvN8/EW8oxQPNTgzqy2lvw82kURHxdnOxLse1n7PA?=
 =?us-ascii?Q?p8b8TNlDrT9rWQlHRC6oLlHsvRSnm7ynSdjjwsUp9k2o2MufmxZVVNJd56iG?=
 =?us-ascii?Q?04cu9eKtuNyPYuf9wwulkN9Hfid+QREoVP5Qj2hqa04A3TDfGmqsZ+9kmKVA?=
 =?us-ascii?Q?scWOECN6QDfM4wiwYzAdj2TE6Pp7hODjkF499eWsLkdS+ihABO+82AIJSSz2?=
 =?us-ascii?Q?mx1HK9aI8i2DKZBTXGqDEVd7b8kPIG7r9P0VSOWMtl7fqJDpNogCGu5PDVdv?=
 =?us-ascii?Q?DHqePUz/3RBiobIEiWVQfg+jX5mE4MDK4VT70tXZqp8/D8G/Lsg6sd3M7+5R?=
 =?us-ascii?Q?SblahCHDzyOJEB0EveuUfe6bqIQy0Cfr4JKJyfe6yxbEL99Lb+GBjjZxFDLA?=
 =?us-ascii?Q?T/fjhtiQb9jlXt02GvDeAYBbrwJ8/9F3X1cur5pfiPzXRYjFRiw5PjEbedxy?=
 =?us-ascii?Q?M4CXGQYkbLx9k3z+ab7HNdGZtT9YvWauZa0k6RAC9ruEtB2Nfr1wKk8cVOb5?=
 =?us-ascii?Q?90nXFG6RFNBxkzF1DazeujwESuqByJtStwRpJaRTXMMxyJekc75FSnqBzQpC?=
 =?us-ascii?Q?E9TIGVKmIH1fF+k3jp9lHZ49DiikrtInNrPC+G87r26/XE453GbLNbCca/Ta?=
 =?us-ascii?Q?Bf5oh5nj6qYNILUUztOrm+dfiM1Tb5r6cRQSRj73BWZBAMt2DaJBKBrdQ6ro?=
 =?us-ascii?Q?56wWy0yCT8WmeHzdx5WwdDrM9LA3fmWzLHyPrbOX84b1ipPcd6Od4E/2VPZz?=
 =?us-ascii?Q?HWa344xSd7Ney0OiJmliH7XgpiLW/5kYavJXNQ1B71HhiuISiGzWxWWzQXKr?=
 =?us-ascii?Q?edfWbg+yXuP4PsLCUAZKH7xUrYXAXxwVjK1b6xDG4j4FPZQ76qddKQt+gae4?=
 =?us-ascii?Q?OMtM8tJjIMZqHFcSjyteKFDL63GanqGgk34X5q3Su3UxPwfaNJQpuQIUNp3g?=
 =?us-ascii?Q?yrLIWNB3mCjV0ZWojFn4FVHCMhWjgEQ100T/O8KVyTf8cqGh/DRR4AbeqjDP?=
 =?us-ascii?Q?yFWcpudC98hip0mI6KFmwBAK/jKGlqQaXZrY4Cf3JorRMfSF/dVmIyVF0VsA?=
 =?us-ascii?Q?BF2RZEuv1EuHaG+sYrMmIv1WuT8gfgLqMQSvnPfiAx4c1tGd745sAss+F/GG?=
 =?us-ascii?Q?K7AuJNGZQBXVIYnGgFxa9VGNyGpEKyLuvb35fHX76Z4aAKa9WkxNk2t+3tyk?=
 =?us-ascii?Q?9RRHfHi5p2tQK6gGyLjpEPisQ71y2TNVaWgUcm3xqSeD+Ysy6CKOEd8U43NH?=
 =?us-ascii?Q?p8qlJuycAw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd6dcb29-aa37-46c5-985a-08de4ed7d89b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2026 17:03:29.2151 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SR/9vKpKPZPMdvHSuVhJkygNfZLp/T8DWHJhJBNAIJjP8fRK0nikF2PybFIF97Qc6OAKRWmnruTRc1NxcQBOEf47cFB84pUSACaTD8JLSos=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5243
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767891814; x=1799427814;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jCoAqZ8R4aVEkIB9X7wp+uhAx/s83i/cK3kEpvegWN4=;
 b=EOa3aafyDItVmzTZzS/M0GVlMWqLVkZBm0MHJrcWczwbmv9GWtO/eGRk
 hoZTY6R3kEtvXVHOYqMrtlWTGlIgZofjUU1aBnhPx4KNqJwRi742Saowu
 ufJyQFou5QxkxNkt2vulqmX1fCCZH+AMPIWbXs08VDgvnOns9C0Slc2GJ
 oZt4Cj18t9BZwhDLQX85EU99yaneEBnV1Tciz4BzBVy4Wmj7Q4sJhHgDV
 aN3yj5YAOG5cisTutKFCJYF2lz9vFVab4hgjUwUj3jHwvy/b7FnuVfm97
 4rlgJr+jYAlO12AFmj1p2kav0+KkoP2UrK9m6htL4j2D4uzkpHkTcSSi/
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EOa3aafy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/3] igb: prepare for RSS
 key get/set support
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
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ta=
kashi Kozu
>Sent: Thursday, January 8, 2026 6:20 AM
>To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
>Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn=
.ch; davem@davemloft.net; edumazet@google.com; kuba@kernel.org; pabeni@redh=
at.com; intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Takashi K=
ozu <takkozu@amazon.com>; Kohei Enju <enjuk@amazon.com>
>Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] igb: prepare for RSS ke=
y get/set support
>
>Store the RSS key inside struct igb_adapter and introduce the
>igb_write_rss_key() helper function. This allows the driver to program the=
 E1000 registers using a persistent RSS key, instead of using a stack-local=
 buffer in igb_setup_mrqc().
>
>Tested-by: Kohei Enju <enjuk@amazon.com>
>Signed-off-by: Takashi Kozu <takkozu@amazon.com>
>---
> drivers/net/ethernet/intel/igb/igb.h         |  3 +++
> drivers/net/ethernet/intel/igb/igb_ethtool.c | 12 ++++++++++++
> drivers/net/ethernet/intel/igb/igb_main.c    |  6 ++----
> 3 files changed, 17 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/i=
ntel/igb/igb.h
>index 0fff1df81b7b..8c9b02058cec 100644
>--- a/drivers/net/ethernet/intel/igb/igb.h
>+++ b/drivers/net/ethernet/intel/igb/igb.h
>@@ -495,6 +495,7 @@ struct hwmon_buff {
> #define IGB_N_PEROUT	2
> #define IGB_N_SDP	4
> #define IGB_RETA_SIZE	128
>+#define IGB_RSS_KEY_SIZE	40
>=20
> enum igb_filter_match_flags {
> 	IGB_FILTER_FLAG_ETHER_TYPE =3D 0x1,
>@@ -655,6 +656,7 @@ struct igb_adapter {
> 	struct i2c_client *i2c_client;
> 	u32 rss_indir_tbl_init;
> 	u8 rss_indir_tbl[IGB_RETA_SIZE];
>+	u8 rss_key[IGB_RSS_KEY_SIZE];
>=20
> 	unsigned long link_check_timeout;
> 	int copper_tries;
>@@ -735,6 +737,7 @@ void igb_down(struct igb_adapter *);  void igb_reinit_=
locked(struct igb_adapter *);  void igb_reset(struct igb_adapter *);  int i=
gb_reinit_queues(struct igb_adapter *);
>+void igb_write_rss_key(struct igb_adapter *adapter);
> void igb_write_rss_indir_tbl(struct igb_adapter *);  int igb_set_spd_dplx=
(struct igb_adapter *, u32, u8);  int igb_setup_tx_resources(struct igb_rin=
g *); diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/n=
et/ethernet/intel/igb/igb_ethtool.c
>index 10e2445e0ded..8695ff28a7b8 100644
>--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
>+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
>@@ -3016,6 +3016,18 @@ static int igb_set_rxnfc(struct net_device *dev, st=
ruct ethtool_rxnfc *cmd)
> 	return ret;
> }
>=20
>+void igb_write_rss_key(struct igb_adapter *adapter) {
Please add the kernel-doc header.

>+	struct e1000_hw *hw =3D &adapter->hw;
>+	u32 val;
>+	int i;
Please consider declaring the the 'val' and 'i' within the scope of the 'fo=
r' loop.
Piotr

>+
>+	for (i =3D 0; i < IGB_RSS_KEY_SIZE / 4; i++) {
>+		val =3D get_unaligned_le32(&adapter->rss_key[i * 4]);
>+		wr32(E1000_RSSRK(i), val);
>+	}
>+}

[...]
