Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id P/IcID37JmqapAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 19:26:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B487B65937E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 19:26:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=RXwWJXb5;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 648D1849C5;
	Mon,  8 Jun 2026 17:26:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ku561cQRSddf; Mon,  8 Jun 2026 17:26:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5274849EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780939578;
	bh=u+q8E8dSqkChZYbTGPo4s2ZmYXueojbCAK+xzrnZf2Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RXwWJXb5HbgtMpFLzEMh2cMHbGQj8A5TAD75U6S23G1LtKAW9jkMaSFssM8fEwruC
	 a531DWLAywneHFIZCai3NPtbE5dF6zOmCZDAUFVYWA9U/fUiSs/8BHk/sXhC3Ek1Sj
	 0HapBKDjca/YfqAdNt6bpgFO9TvP9aiYZQ9BSoDYUH8M+n0vXCgtwAZcomKXKvvid5
	 1FTBMWZXW3Qbtd9Hn2RxQAK5YLCF0W5dfOelRJvDHFTZ1pvn1BsM/g0c/aTC5kLX4a
	 yYmL0loHQdeb3e5V8MaaWGLwEXoW8ae2DwzIagRjvthOVUgbDE/U97zlWj3QBXSRvK
	 ANNQWQsaPxPWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5274849EA;
	Mon,  8 Jun 2026 17:26:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 163A1190
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 17:26:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F0D1B849E1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 17:26:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t1E0Tktx2WyV for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2026 17:26:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 10166849A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10166849A1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 10166849A1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 17:26:15 +0000 (UTC)
X-CSE-ConnectionGUID: Z2QQSgi0TyG285Q2nQodbQ==
X-CSE-MsgGUID: /CuItT+WTb6C6Jq9lih/UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="99099672"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="99099672"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 10:26:15 -0700
X-CSE-ConnectionGUID: oY2nz4NBS5yv8lYGAOejrQ==
X-CSE-MsgGUID: EzsV5MI8Tl2xOeuFhWUuvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="250523394"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 10:23:11 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 10:23:10 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 10:23:10 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.66) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 10:23:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lZDpL+NQRffGXi8AIwhcPMw1nKgknUNw+tJiBhBu2LLU7HO9k3g5pDlPPfiXt6vvq6ltvUG1RcypqLWmwaCK9v235LoCCM5mXZ/r7b/P4LOeR/mZa3usulCuiQOynqT3DgYGFbh8GAjipPCnhO4Ro6HtEMbPg+ODKD6LQ+u/n48ptgee0/xrhVOqWcA7Jss0APb6wcHH9gEMu8Y7BnkZaJWXrlfDE6yUwex3hVC9UbqL0H1riwGnT/lvtqMFR9ppJ+R4cJSanlpe7791lGcg7Sqae5Ga8bRh7pqucvMD+OThJqJrccu7Wx8bA9hoP0Qkt6/s+lsk+/C1lPjPkvIWmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u+q8E8dSqkChZYbTGPo4s2ZmYXueojbCAK+xzrnZf2Q=;
 b=eXMc0trzg1cE14m11De0mk+5E9VxD8Q5iTcP+BpXVzUmAfznw8N+xu+sMM6Cm+bndw8wt7FWjKSS1FVZN81TQB1lWFb5CV7J5dNW3lhk4/bnVjL2jxgS9OwmyIh9MnJQy6IeNYJp5eDeOcyzAFLKXcnL9DC6UPlYGq3JI/LB8R2wgHHdvGZ4etNGA0x0jP0VtIyBit1xeIrtOjJt+3RmMeszdHgqPoBIBQhkyjSM4sTR4ituAJZVlhBiw/Z2gSkXO7aAQeAR0rWiX2Iw7u380qSDD6BJiuAzj56RCxGd3pWXUayL1hCYxhEJYZWcUglAbOYX4sD3C0VbPNLWXCaFcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by PH0PR11MB5190.namprd11.prod.outlook.com (2603:10b6:510:3c::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Mon, 8 Jun 2026
 17:23:06 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 17:23:05 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Ilichev, Konstantin"
 <konstantin.ilichev@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: add padding to PTP
 virtchnl structures
Thread-Index: AQHc7CJoRPuqaFisdUObcti//luNKLY0/oDw
Date: Mon, 8 Jun 2026 17:23:05 +0000
Message-ID: <SJ1PR11MB6297F99ED7581F11CE048F049B1C2@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260525083835.481974-1-przemyslaw.korba@intel.com>
In-Reply-To: <20260525083835.481974-1-przemyslaw.korba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|PH0PR11MB5190:EE_
x-ms-office365-filtering-correlation-id: 2f25d335-bba6-4c69-6391-08dec5829a42
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|11063799006|56012099006|18002099003|22082099003;
x-microsoft-antispam-message-info: SzbXE6b4mlKpBxBAfsFDIQVFT0qCoKf25m+VHDgZkRnXXafmprKdnvSurJTTPE7QmcVbeiQ7NJQdIIdg1EKqezG0ozgwjqm2y7DUygJF2rnofS/AAR9NuEuZ3d6RsNH8o5bTUCwnt7ghI377E1bE3RMLOOpDJ9EFlvbBgIAOKx3NwJHK44lXNIIbvS39ro6gp1fdYY5dtyt0iRSe2rc3mQFybulBYXHYHmqyjDIY6+XBR50rFqIDEVaKe/LbKyfrXmdoxwsSEYwcEwEbxJTU5KvSyoRIS/Pgy6XqWRkdK1kwDAMrqs5Xf/s1aS+KfjyoVxK2LkKHbQAliRs0yY51l6FfYe+PVOkDgt0RvEgQ5L+mOn1cnhtibnJRsJZqe3A/VLD8vE+P7WXKB4TDpw3oY/hde0FffWPkuFU6kJYSXbtn3dZ2JGe9qm5cO0n2wS0QcNklog3cupq4PADqdfKee0MeTmpdw3vBeLAFOKCEYc1jDEdxM7WgXazjP0lJy6pav4LbIpfMVx5wPu9iMBgmq1FLbHYmYfkEPVUf+Lfh0BfVEY577i5NUIYjwFTRzOwCX2lZLekTJJK+EeAcjK1DAWIQQUh5DlTSD+llygECRgTg/33n5m+JXBt8pL1s/ye6vfVLFhzx9/wx4N7ftXfRiC3yTXRkvswlk/nn2eKSIb0vz41/fcyFUjaOiglk2Z5QTa8llRmaItxAu8XRP2ND8x73wurXrcddkrpmLTR7YWwgy+F9azaKgUKNdMI0JdSi
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7X6X33kXkpE880rRu1iy1WRMmWs8HBbBEa6AL70nuRTF18DmbBKVBkA8+jyj?=
 =?us-ascii?Q?dQKGZW16WbIpRHxR2Mtck/n3RuweOv+e7nszhFQ8puNgTFnqsNbm3chd5SBT?=
 =?us-ascii?Q?5u6OdlRiGCc852Y3Cj0cLIdtuSVpNRYKkzdo8QbKQl6slv+PWNteuxp65gp9?=
 =?us-ascii?Q?Cfjv7YFzicQKAQGDejVM6mYETmDEiWEAc93V3oD/KsuYbc9g4fyssrhDB8Mk?=
 =?us-ascii?Q?qmdgY3s+iTAkhAWO4ixPKD5k44e6mQnte3qxbk4le0RbcNEReOG926BGBzqe?=
 =?us-ascii?Q?0iUhazNepSFTia9HWyHSJeCxNVtXwrkN9DJA4uJ7MSAU3moI5utERSZjILzN?=
 =?us-ascii?Q?tnhyu3Ffy9K8gIHS4dqpm5RRByBZ/BbYdSD/khfAgnjUgQIWBDpTxBeX3MQm?=
 =?us-ascii?Q?P4Jijnzd7kuVSXkzNnH/eVCMXHi9tMrpEcFZOMc5haYlmhJ7MbpYhIb77YkR?=
 =?us-ascii?Q?SwvZXrhrnl4UnpBfV9xgFqUUZ8rRA2OLa6ewOrp2skCfqwTwDYvb62kJYDwX?=
 =?us-ascii?Q?1h89StA1POYW80IwX0S1gIHkK7fDEdgCARji8KPpC7P5dBqiFQIIZcbmYa4V?=
 =?us-ascii?Q?fb+DHoUptkHhpxV2EWXyuYWJIGcc6OJNeI6s2WFpcciX2Ng7dQl/aWh0Meuq?=
 =?us-ascii?Q?E7ekjd+JCEmOncObfiX0vRftBXE+DIA+DH71BlGQE4EZnBxEHvvlrOyJT2Wv?=
 =?us-ascii?Q?gq58Z6SJx7hpJ4GveLSzJB4FlOLA6pgEB2JCJZqiZghuCRw5Y5rAsGJhPZ/v?=
 =?us-ascii?Q?XMj0T1mFO6O/itv41Ag/r1zxEcQe/plsnTJYl6+bkN6TZu+qHhhknyS4L35Z?=
 =?us-ascii?Q?uUpRhvq1Cv+KdYZVOrbKrrMlcigBXSyD+WBzfBxLLO7ooWiwUAzTD158XcPL?=
 =?us-ascii?Q?fU87M6C8N+uvTbJRz1tcsDaAIj5vzZA6mVI24yOpRfvsgIXYUGtfJ/c6OCEq?=
 =?us-ascii?Q?Sgi67qIvyFoodKRGnlSTap4Jfr1+5q3JzyBkXZnD49aiBqwzMy7b+YE0rfaW?=
 =?us-ascii?Q?dsC+fBYqOshcUxHmRXNgclKkKCYBLcm7uEUSzIG1W9PSydCk2P1IL7WEZ0TF?=
 =?us-ascii?Q?gIoc4RDaZBIEfM4m8EPCv+7nq2Fv5orjZepKEI7M0oXSEUOcvJ6XiEBNMlw0?=
 =?us-ascii?Q?/nyqgdQiVsVJQcbmQyWMt3M9bVTru/GtIcnJ/Dl1Ib+QKpL00WwOF5ya/N/x?=
 =?us-ascii?Q?bWnM3SQxy1Ttc5uIeEvBRKzFJpd1i2U1D31gpexCHhU9NFyQOJoFGvTnoKc6?=
 =?us-ascii?Q?5c1gHNRh4gaI5qp/wn1WKTnC95KJH6PV0XuaVi3YXH5HFybTA7zZ2f1vOS+1?=
 =?us-ascii?Q?GHs/m6ns8V7u9Mh62bhP3+RFEezsAhEgnHsBGclInPNxQTkD1hhpMrubYcgT?=
 =?us-ascii?Q?UUE5bpymWDWuhjugqGYojNfLoMclJbhJV4EoGtBhpaSRJ+icgnOnmVgBFZjs?=
 =?us-ascii?Q?LvEhTfdGxCxrNgpJXDVbYqT9qPtEsRunzMmLdwCA/Vg8R9Kx7uMRdyc5vwEW?=
 =?us-ascii?Q?ettH+G+fA9Wvc04iogr6puibzkW7PZXbcZC94re3XIXT8emBBYnXoHb2MBIT?=
 =?us-ascii?Q?/bhKGHjq0+1hzXecjw6RarJ76GuZZLT8ASFq1+o/28MzBtVBVQWD2qG5SFPA?=
 =?us-ascii?Q?2pIWMSc2RVVVwjpVk6Q8WtS2+N17jhcPjSMiGULpljG2KhhHJ1cgp0psRplU?=
 =?us-ascii?Q?F5cFu/C807wpeUCZCYFEqm4UYarg96vipwioSZrjjaSyg3vO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: BsAoq/P0UkdjZG5uNIPolXnL6AEBdv7VilpLyk64f34wZq9VJv6owKlbplNCW3sz3v/AtM5LKX4d6xnVbLGGcIiAU4/oTOecp7FCUHKI3EfRCV0nDrJnPyrU5zYIAMppIxKiasbEbIm6TMiaJuLFHF9XrnPuEUVxnonVnljUfYXqt1ILr4kwdtibJqLxeaWVU8+jsmuex8Tl9N/Tmw60/c9kNWmGapXTo/C2mX2HFVjSNEiu3588UJn4r/bBOLZi9iOJ9af/oIbWtJ/Bb5nvLKcaxop615Q1KrWQLx0IJNF4R/WFXfk4ZUXT+ITof/ACmG8ZhTdcSunvLU4gtWRXnQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f25d335-bba6-4c69-6391-08dec5829a42
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 17:23:05.7525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O/G7TAAEPErn7kblsdOcUrkO96rgHQZAQki0O5Asi72Ae4LUV9gdMRz0+Y/V263yJRdoB1LNMO/ErAVeew3yAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5190
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780939576; x=1812475576;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u+q8E8dSqkChZYbTGPo4s2ZmYXueojbCAK+xzrnZf2Q=;
 b=ktAGBr7EGQ+4FG0hsAFmRK55qheLeF02EYOUp2lcH1nHDcphHE9y8H0+
 EJbMocJDU93ACZbkh/GEKn0Fn+XTmmfL3+pQeVKRbL9y2+BFdBVTy5YZ8
 2sxnPa3uuSv31YM7dE6sNM1Y8fubgTpgNfGb0MMNui8uZk/g53hdi2Tn3
 8qELSLyeWoAQJtlpW03xdkoMQoB1uzjqBKXHetZmGYmSCoUywS1xSgQ7t
 0Y2VaRlWD2qFIU1ctqNj+C34VqAdMye97O3+wZLvigCbp1wivIAywL7Q3
 ApWGhQDPU1sgHNWTrhPe2A9x9DVA//S+mYzgs3IJtKPYNSitNA2W/BbmJ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ktAGBr7E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: add padding to PTP
 virtchnl structures
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:konstantin.ilichev@intel.com,m:aleksander.lobakin@intel.com,m:stable@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B487B65937E

Tested-by: Samuel Salin <Samuel.salin@intel.com>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Przemyslaw Korba
> Sent: Monday, May 25, 2026 1:38 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Ilichev, Konstantin
> <konstantin.ilichev@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Korba, Przemyslaw
> <przemyslaw.korba@intel.com>; stable@vger.kernel.org; Loktionov, Aleksand=
r
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: add padding to PTP virtc=
hnl
> structures
>=20
> Add padding to virtchnl2 PTP structures to match the Control Plane expect=
ed
> message sizes:
> * virtchnl2_ptp_get_dev_clk_time: 8 -> 16 bytes
> * virtchnl2_ptp_set_dev_clk_time: 8 -> 16 bytes
> * virtchnl2_ptp_get_cross_time: 16 -> 24 bytes
>=20
> The FW expects the above sizes and PTP negotiation fails due to the misma=
tch.
> Previously neither the FW nor the driver checked message/reply sizes stri=
ctly,
> so the problem appeared only after recent validation improvements.
>=20
> reproduction steps:
> ptp4l -i <pf> -m
> Observe: failed to open /dev/ptp0: Permission denied
>=20
> Fixes: bf27283ba594 ("virtchnl: add PTP virtchnl definitions")
> Cc: stable@vger.kernel.org
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
> 2.47.3

