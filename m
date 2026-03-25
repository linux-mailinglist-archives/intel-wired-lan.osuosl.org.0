Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iC1kO/hRw2mIqAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 04:09:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4564B31F128
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 04:09:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61D9D83DA3;
	Wed, 25 Mar 2026 03:09:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QZ90ZJTHnXsc; Wed, 25 Mar 2026 03:09:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B465F83DA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774408181;
	bh=HFFQEiOXeYXcICk9pla6WFpyjGRBwO2mgoNo8JsMkjc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rRGJ3GF3TAxpgaWjRv/oQ4TeETawKgY5CbmVR5+ngOB44z7+DfvvCeyyaemGAxPHr
	 L5gnaE8eH42T63wTUlyhe4aaoDypILd58d64aW8G79ZRZNiPvPPsMI4J8JdeQHGSJ+
	 CPBJ0KiHSYu7C6rWbMFrWArzlrvNSrDiGhDP68EIpSeXLBqKe7hWZD+N6ovzXwcYJ/
	 /bHmlEOktPuQ5nrOWA4LMWWzMRjr4PNWE/hW2GslQhL8kdAgxsSmBB8Qlp1QB9ctlj
	 lHWkB7kuvtMbDuH7ueO1Z4b6LVK/fPT5gIWHoAagxd/ZTMgzaq3OylF+yLD315/yyc
	 JVYlq5SX7miOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B465F83DA9;
	Wed, 25 Mar 2026 03:09:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EBBFAF4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 03:09:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DDA2E40F0E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 03:09:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UiRY3KY1UwQ4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 03:09:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D81E140E7C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D81E140E7C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D81E140E7C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 03:09:38 +0000 (UTC)
X-CSE-ConnectionGUID: f6dgm6CeQoWb3nkzSameMg==
X-CSE-MsgGUID: K4V766xyRD+zHPsiiQlQcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75325299"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="75325299"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 20:09:38 -0700
X-CSE-ConnectionGUID: tT21L0CyTWuglWB7muTO7Q==
X-CSE-MsgGUID: TCYreRmNTxmheVXX9TlUMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="262474130"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 20:09:38 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 20:09:37 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 20:09:37 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.52) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 20:09:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q/DndEwjew2nn0M+Xw4Y36vB7hEaoSMAkPBLWhSkmlMFyVeKRIAixRjcMHCqLCqkdt9A0TH97AqXgI8GLtEdbLO2cVeFZznTiPmMBxoCkL2iJKeLP4+uPUUBBNcFYqqShOstoObmcZxp91TACDT7UMIf3HSQhYR+ogkEWDXFmZLdbNGnqaHgKNRaFi1qwNzKUFiwZ6QBaTbsH5AIAOv759lkC4XHSH5AzVbJz/pVj9eOnytQCaLZKlZsP+W/kkW19pz3H/dcVmIIOaCvqq1IAm7mDwQC+4u6HydOTcvVUqLEngFKLJA1EKVEKl0igp464V99pxYGE1ZNJfT5Uu14Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HFFQEiOXeYXcICk9pla6WFpyjGRBwO2mgoNo8JsMkjc=;
 b=LBkwTfR7x+PswpzFlzb3OBy1D9AloDRX/Nwgo4G4jGztKUD8W5uHXfwQfD+t/HLioAcFXFdYfwnayE3bSl3wCrj6GGv7KL7GDUNbHe6XPqGql9Y/G9PEVBFRYhLTRA2qkJwMumbErceJp5Y/UFYcy/ubvyBKS80TdhrAyzzrlk8XNhFoV8X6UQtY35TeZ87n/TcM5OKK/aQaS5Dp8kxoAjVXFpDbnMhP5WaPxTQp7/rigK2Y0mMo67ONX8aW3bHknoBA0qsz4YMUpsxSQpvZcA1K96Uq5GYQvSAf8lD0vJ8UCC3/RoereI5N65dbye8NoXFGcqdW2UTr2lgTUPyYZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH7PR11MB7549.namprd11.prod.outlook.com (2603:10b6:510:27b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Wed, 25 Mar
 2026 03:09:33 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9745.019; Wed, 25 Mar 2026
 03:09:32 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix posted write
 support for sideband queue operations
Thread-Index: AQHct5HAV1+EWoOYwUm6AaVsngdBtbW9SVnA
Date: Wed, 25 Mar 2026 03:09:32 +0000
Message-ID: <IA1PR11MB62415F7D91D29F788094E4618B49A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260319111659.551039-1-przemyslaw.korba@intel.com>
In-Reply-To: <20260319111659.551039-1-przemyslaw.korba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH7PR11MB7549:EE_
x-ms-office365-filtering-correlation-id: e36feb03-20ed-412a-6092-08de8a1befb3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|18002099003|22082099003|7053199007|56012099003;
x-microsoft-antispam-message-info: ugdrWdGGXaEJ/YZwqgVhWamz5+uegWRhAafnhrDUVhUbxMNjzo6/wBcFhPyCvOyBzotIroLDYqMS2TvOHe3UWyQXbyizMh27x0gZh5TCNmcQLyyF6eaGGZRo6nLBBbMLlWOSzEp5AxHIs6VuZLLyrpYpZKxOARPeo7Q1vjlleRz5syoq1eNO146FVgsTidC5mntW1SD5szUbBxKoQZVzBjfVxZ/zqZsI2F/LL0/tQ2P9svumPJ5fZlQIPWrtTW4+KrWqr1OFeSJAzALv6sEVB99PTKAlrEAyrCMe2n1BWbefHWMlljNJUxkVJbqxtOnP5L4OmgkteFvcN/cfHDcrxsKc++FYxGqxZpAziLrhSX1WTftIUM6imXCec4dhWwq/eIzONeq09QKPShAhjgOt1QuYo6zk0oM/iD6IMhBYcfJ9JT4b+e1h2mQJLdhvnQt2cYuuJjYkRVlsOLbqD7MMhRK1pB6H8+sLQhTtoydJq8db4OO+4X5ia+Rc1GeppvAf4Qo9njKQlFbIj1Sa8IWMVks0Pp6+AXO/K8CNQyfc3EBNrH1fucrsklYo2yK5CCyjpGmTDcfxWJFDdZYDjaNORqXTIAhI3s5gdwkLoqQ/UknTG0XLe9kowKlMgR8If44M1JirHG6gF5lGZU/l54u/HcszFqKl41YNBRCu0LeDupc9bXbLdf1HVmmNlKNb7aUHEYcLNNQmyxqkdKzs00vnyRl16bEPCJ1ly7BS3pUASvwzI8Zhr2Xfm2oZ8eI2HYWeLwS0u3GRT4x4Iaxycppz1//IrG6enmhJ9NjBl6ar6xI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(18002099003)(22082099003)(7053199007)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sdsdUCeDXCfAK39gDErfLDjogiZwizyXaP+7nrLbw3IYmkEAlWLPopYku6Bh?=
 =?us-ascii?Q?a+MB0dy4W8XZ3pBDLbJjxWNBR7moMZQQRVF4zNDFZXsUsePUEpF6rQ/bNeng?=
 =?us-ascii?Q?8a4TwvNRCc3FEyjGYUOhpMhphGw48pNnNlukVAxzCgC2GDOpehXTeJMUwzRB?=
 =?us-ascii?Q?Zyjsrm6T/M2t/UM6vrGOV8TozGdm1jg427ltfGLIvxi+fudn4AaHoy6GaFVC?=
 =?us-ascii?Q?Ce5/UOsXGqCQbVnYYF7iQlPc8MfY4r4UD6tpThqaTZLvfnSczvR7nalkkLYp?=
 =?us-ascii?Q?UScBRTdx1b4KQE3EWxvL/tzG71x4z+4RWhhNdTpDYf1MA0STsseDKK299dC6?=
 =?us-ascii?Q?qg7CVQ8E294j/two2+z3DRMvcU4MXKPjTtZBdXdUptcF3txBd2yWiQACPnHO?=
 =?us-ascii?Q?r2edYSP4jHa1vjLhn8FaneCPnpt3ed3prO7mDoZgQlQvuIN7LVSPnitBRPge?=
 =?us-ascii?Q?YNWDQTQun4gI0WJ5LUz3ZtKYr58O2JfyZr8cD7tYKuBePu/8NaI5SvxG2Kl3?=
 =?us-ascii?Q?IkzUo+vAnS53GfQ1KfawWGPUfCGSntGrDSUdzYXhNNF+5jqoCPnCGO1c7/oy?=
 =?us-ascii?Q?P52mdCnp6AhAggkmE9iJ4YrNkXdzJZmpG9mnUD0gIr8vYCCSW12wA1VE2TE1?=
 =?us-ascii?Q?Htr2q3+f9xYeDbT4rVjUemLIuhd25bsYCvBAskhPsP0zE73jO8bFMMzE5dY0?=
 =?us-ascii?Q?zssJEtWrIn5Hyfsz3TtXVU43GHX5qs5DdvhYObLfZbxep8xDn8QRk8bw22p1?=
 =?us-ascii?Q?ndQTWzw3VmqTfp0SzayGyEnPhO38HJCK1b/tUbaeEAwGYxNjkyOQsiYyGoK4?=
 =?us-ascii?Q?o2oSdV6YyDGH6EcvtItgDWf39DyIJLDveBCP16MzmngN64af6P0q1Sg4lHne?=
 =?us-ascii?Q?zQyPecXybGvdukE840bLXfosFyZWCJWFbHqPryRennJJC6Zdx6/8CaRXNJoc?=
 =?us-ascii?Q?cnUtqA0RxHVhtKiHPK0+nMLy9Z3icaHzR8KkAiMb6sDUwgNVJHleFrwJJvwf?=
 =?us-ascii?Q?DoPAIi85Xd4w7r7PwhvTg9Q66xryJAa+gWI4uhiQSUoAaHatxJ0JnxM5IBen?=
 =?us-ascii?Q?Bsb0u/mCZyKkVisvaB/AhRVw1PxaDnG7ao/pNQC7uHSEeiatvlt1P1z4jp+4?=
 =?us-ascii?Q?AQ/efIpVLRc96trTuj6WjRxAZBmjufN4w5WPy4ZFCOjp5gyLpgQ8PvHiLht+?=
 =?us-ascii?Q?ALS/QQRd7EECmyvI3yQ8dvcZIet+/ads9YTqQaAnxEuWdsaYIuo/WCIUOCdI?=
 =?us-ascii?Q?rFf858soNptyG4arR7w/pio67OAw9TF69tllQ2oXcCElbB+irRj4v1HH1Y5R?=
 =?us-ascii?Q?gAF6JUKrYcQSfdcuJQ+uAlLShd/IrRV96VIzMd0xXmZpZz9wadM9Jl2nYfzw?=
 =?us-ascii?Q?ch7MSdQhJq9RNdRNV8x7mNWNoLr3zgJsb3HFqv+FofQAhdDsGTSwmBV+OIjM?=
 =?us-ascii?Q?50lazX/Eouk5zf4tgwawQ/HmxG4DOcCbGN+UESGaGlZHX2iGUKE31jlOAgIu?=
 =?us-ascii?Q?b43eockFJ2kd3l+28g3PixWolqOinTr8gwA76Gm/XMMz8kkU6cURtn+9o3pv?=
 =?us-ascii?Q?OSkrSL3KecxpCOBDldcMdmIo6JvsPyyQKz00VeqHG62mvbS0NFJft94HY02B?=
 =?us-ascii?Q?2g3iRAIDZOpZxfhkP7hoQAUycFG9Tr3tqadZTqvjPUEbp5ik0Imk1EIUyYB5?=
 =?us-ascii?Q?DO58AobWb2tvPfBNKfjKGFrevIbOWDLPk68HHIR8yLi2J7AP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HaIfyCuPBroUeb4aAQMU9tMKBPpswdAv9tPyhAMZDDi+rfrIJjPrQouKCkLx8k2uP2VqWNUiAWWs1qO3glLZmFWLYhCDzyvGbjRLAvvRyQqZKwRYnI8lg3NntpImtFWWvvhEV8lgCf6+BALMTUP1flWLUV9PBkvjXMw2p9xnl3ErT4XzHO0Z1Kse/RpNqTMVr+GH44/BblknIrTNV2MN6Ix0QPpFUTCauyCQwuWI7rG/RQJNLjCCxrgAb8rSQvap/Jz1Y72psxQqwbZy9f06A+O7VEWPyIILKzsppIMXk/1WAGCxgYEOIq8jNxJTJiSAAnjvrgr2R3ma5yBl9HOEWQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e36feb03-20ed-412a-6092-08de8a1befb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2026 03:09:32.3187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cQ9hVbgS6SnzzMPz2nNEYZbUdW+VLHg9+oCcKLhGoeaJpucn2420lSsFCI0YDELFeWE8DHyKlsvaN4Lr282kmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7549
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774408179; x=1805944179;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TQPZl5lqfchU10L31+x6rZ+FLX33hsYePpK1M+9LZJw=;
 b=d9Te93OVcHYaHQw4KPZ49zRb0eWHaUQHCc52Y0M3DfvuDISsKbM7FkCG
 Eq1hD+VKH4xbEuVKLUHQaZSMmk2oKP7RqWlJB0HbonogYLDcQjfhvNFs2
 3lJdFfCkld+IIXGAaTdoNN/ysamqSOkN9ubdkkGj4iyfZ6Nh2+mtg206V
 I5/+4SZ5iwESjBdi7Uvcxgjbj89pS2Y+v/FnoQ7gAe6vh7PtuYePcDDDU
 TKs/JWiXVOS7kQMQjG6LlFoqKIpmpDiqkDfpMkZyO4lEoQUeIr8w0+Rvp
 FxsDftXsBpwCXgIzyDgCIShPNbr5S/7PhiQDyadDV6fLrqa2Uh76liMi9
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d9Te93OV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix posted write
 support for sideband queue operations
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA1PR11MB6241.namprd11.prod.outlook.com:mid,intel.com:email,osuosl.org:dkim,osuosl.org:email]
X-Rspamd-Queue-Id: 4564B31F128
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemyslaw Korba
> Sent: 19 March 2026 16:43
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Korba, Przemyslaw <p=
rzemyslaw.korba@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix posted write suppo=
rt for sideband queue operations
>
> On E830, PTP time adjustment commands sent via SBQ don't generate complet=
ion responses, causing the driver to timeout waiting and return -EIO, when =
trying:
>
> phc_ctl eth8 get adj 2 get
> dmesg: ice 0000:1a:00.0: PTP failed to adjust time, err -5
>
> Add support for posted mode not to wait for completion response.
>
> Fixes: 8f5ee3c477a8 ("ice: add support for sideband messages")
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
> v2:
> - change "postpone" to "posted"
> - init struct with {} instead of {0}
> v1:
> https://lore.kernel.org/intel-wired-lan/20260310110700.345904-1-przemysla=
w.korba@intel.com/
>
> drivers/net/ethernet/intel/ice/ice_common.c   | 7 ++++++-
> drivers/net/ethernet/intel/ice/ice_controlq.c | 4 ++++  drivers/net/ether=
net/intel/ice/ice_controlq.h | 1 +
> 3 files changed, 11 insertions(+), 1 deletion(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
