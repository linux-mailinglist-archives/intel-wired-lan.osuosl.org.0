Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C15BA9319
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Sep 2025 14:26:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25B15806E4;
	Mon, 29 Sep 2025 12:26:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mkH0x4aRzA0U; Mon, 29 Sep 2025 12:26:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9785C81138
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759148764;
	bh=ngD9NIx1/fHsCO9ekb46bbOXvaruS+wPQgqPVzT9yN4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8Rfa2YIJXEElmeLKjtIphm+5mWS8AmJI0+8rmp6EwD5UokPmLvt4cJzyuIx9gSQc+
	 AXFxf+LvgoZMUSQPHacGIIsr6V/aAs21mtMVIXDCSoy7ZjPWkrunmMgkWpRrG4mBy+
	 IWs5/VulmLiKAOp/OoHAKnhdbrVBFEfj9ZqJUeJN18o7o+zGEzl+zKPXxS41kHITzC
	 blgwQyfWVs9aovejxhFmZVZ0sTcCraoqb6f54/0BpYNWwKNroE9oYg3tWvEYJMDtQ1
	 tCgmEOXsm9w0bOExAA+9AehjAQiUR0fm0uGlPlP3uTJTLAhLgTCO57pShMmtPHP/Ds
	 2sQGi29ygSqiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9785C81138;
	Mon, 29 Sep 2025 12:26:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id BF25E194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:26:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A535B4059F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:26:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UZbAPdqfYDLr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 12:26:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 06B384046C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06B384046C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 06B384046C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:26:01 +0000 (UTC)
X-CSE-ConnectionGUID: EFbfStBLQH2dr0GtBwaYjg==
X-CSE-MsgGUID: E9/tF96jTQG+OPGL639nTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11567"; a="64013331"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="64013331"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 05:26:01 -0700
X-CSE-ConnectionGUID: 6ZVZFX4yQZ+jtmrWZEAqhQ==
X-CSE-MsgGUID: CuN9jOs7RYGZ7OzeN1RnoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="182640414"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 05:26:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 05:26:00 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 29 Sep 2025 05:26:00 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.59) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 05:25:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NXhZSfo8aMKMuYDLuaR8T9uZ+LfzI8NDiI/aJtoM6cJHFfTQesdd3hAiB76pgRKY3nwOakeOXYxfUJgjHjt3znXemzB8m+qzP1WA3A0JEf0cUkA1mweGo4/AByz7HAjLMFAthTlOQxE0nRpoSGJI+KJEhF51yLbkOcRtOeKW9+pT+ibcBQgtqY/VXmm/PIzkoIWFg68Uj/fcQ8GsGcVFglOWJQ7FP35ej0nc+xKr5nLiJH39iUgfG7SpCAd2GeBhvTGLto4Kuf/myVIIHcZcs4sWjKIGrmyePDgk/AQ2OhwInh2MQ+5NIv4O4n1uUCF/MiPTQSVOILbQn2ePUFsfXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ngD9NIx1/fHsCO9ekb46bbOXvaruS+wPQgqPVzT9yN4=;
 b=C3CF6AVuvozyjgP8YQ2yjbOCLf4pvYo+m2nGOH4uznrijqidrhkE5+B1OwSDZOlAZ0uGplNLEo8plQOLIU3pv6gmOkMUYNifBozzZwt2sgi3MbmHoeimvsW0Lp6LJIA7ugEpcKmyUtKiNwscAQMYBlZb0fQKQmCkTx84OZMGDTXkKrZAcmBkokOVUWNToStJ6MOvmjxNWY0nWH/k5MThH1vvLIndIaMP+uX0SiUNizBhzNggEauaU8Aa47EilOJ+C1N3vr+iZaUdDzOwdEJ8zJEVTNykM06nuTB4qIZZRbVDf3azcyJuStFqI8NHfr1SiPKMJMiWz7NUZOpNQ0snSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CYXPR11MB8729.namprd11.prod.outlook.com (2603:10b6:930:dc::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.17; Mon, 29 Sep
 2025 12:25:50 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9160.014; Mon, 29 Sep 2025
 12:25:50 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, Jakub Kicinski
 <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 3/9] ice: move
 ice_init_interrupt_scheme() prior ice_init_pf()
Thread-Index: AQHcI+ecKpj/iIh0R0C52YSXCQKoWLSqLbqg
Date: Mon, 29 Sep 2025 12:25:50 +0000
Message-ID: <IA1PR11MB6241E2916E86771B5BE39C0D8B1BA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-4-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250912130627.5015-4-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CYXPR11MB8729:EE_
x-ms-office365-filtering-correlation-id: 656957d2-319a-410c-a728-08ddff535365
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?PHF66hRSxgIkbUmEY3+OsTAji77ZMm19/YPTXsg8VcK0jtUlru0NETC7OywU?=
 =?us-ascii?Q?mSbTliDey0whxIEJhBvzRFwDOYaaw/fr3JumZ01enrghfcc8SPULdQBLT7Vi?=
 =?us-ascii?Q?x0oLLNX0afMiSgNX8pHjckFgSjGahEbkTQ286quc75wjI7t1d1BfB3bv4G5E?=
 =?us-ascii?Q?V4KKmzd4Gs33QcNOMAPNxLP4PwjN/3ihIFmj6CQeTD9r37o0bjO9ej5qifb7?=
 =?us-ascii?Q?v+nVZJPCsym515oito9s7trIfRsYWmZL0gdTr7BBCsuwqeu3Ok8rep5liuCk?=
 =?us-ascii?Q?9TGM6ZdokLBIjCGJW8P8fU6H2Tdn217gorkRg2yEhDJnuYvThJNZWSUjV7lO?=
 =?us-ascii?Q?/5HPXKO8HdM65YvbPDSMKV9sNZ52Q3RgQZXsJyMxzC8ORm/FkeihIaDLpnYZ?=
 =?us-ascii?Q?wUuN1KJvjep4nIjsM+duaF7K7IG7EPgGmCmPS9ccEOkE8oO/qTBzMDZMhtYD?=
 =?us-ascii?Q?C2TtgkQ1viHBjXA+z1LiWClZEOEerYA87BAaaTraWTTZKhmHu89jU1q9pOih?=
 =?us-ascii?Q?Tim6q9eW3b62laM0KBfrLnmt3j6iZpJP8IYeeeii5iIEPrpkfKUy8kwDAv4i?=
 =?us-ascii?Q?qS0hU54LjTa/k46sfRTZranUQ+/LG33cXiPS9pzngjKWqIkK6K5FhhYuU3aB?=
 =?us-ascii?Q?GXDUANtKp1POQvc0bfVeCiIhCzgqlZsR8jomuckQp9cgxGoeqGZ45j1rj3LJ?=
 =?us-ascii?Q?KqhVcNp+J0DUKIj4vZNIkexZO2RHXL1TMEzXsQXRqDT3L3c5JBRNMwMR7+n7?=
 =?us-ascii?Q?phMOHx1yAIO2YRZ8CWCy+tcSVMXVVC57k8VtTuV+DSiuLgF7sHIT0btpBGmW?=
 =?us-ascii?Q?Sio5BXDjsRA+g7eozrsq27P97ny3g9mGHywm4wUYx0bV5AizXBpSgApMsWW8?=
 =?us-ascii?Q?X9u5xGbi2HYY7Ksi3Tk76AUEy2K1jNkeugIO8xdoB5K3HHSRQs3XUJTrFnE3?=
 =?us-ascii?Q?/wDskaqpvXdwdxIV4acg3ZyWcafIeujp9eL5nJslE1m8tnei2/cTeksgVucL?=
 =?us-ascii?Q?iSkUoCv2tI8AgXrMTL3OFaOOHmFFBf///iYrX/k0HuAHd6Omdg0b8ayaaVwf?=
 =?us-ascii?Q?fHidZkha+n2Vo9fOi16rmqmFFIF/WyYE86kwPUFUMDxDQS8Wp/VcZnmuH53v?=
 =?us-ascii?Q?hhZne/ZS+sStUQgGjYENGuPQ6xxRbgHTIvfst1kU32Y56bJwmuJOnN+uqily?=
 =?us-ascii?Q?4zRIbjaWDKGcU9spAxGO67FdTk/mSEwYCHobkqeMoT8tbPIk1yVldjw1KJPI?=
 =?us-ascii?Q?VZbt+bf+uwcnwNnmi0EAQIb+VRF5mAUAD8bQ6RN0dRzddszLk8Vaoz0sO6dV?=
 =?us-ascii?Q?icB18B9s6UT3NC9J3jzGQ1Qw4tbuXB0svVgSLRqRDYn/zQZdgJVvz/LGyri9?=
 =?us-ascii?Q?8qmH+ac6wKf/Jr2WVbVXy7DJpvY8ypjA6x6NJTK3ZKMEzc9utsAjha3Cm3O/?=
 =?us-ascii?Q?fRCgSIGpbJfJn8PHqTQ9YJ7jiFyVwIx1tY/jKCaIyNR2ypVxgtqpF2eYRZgO?=
 =?us-ascii?Q?hIOwK3LobhvE2F4yOxvuKyAlguej+w85KeI4?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wJTpJlxRlopjV+UK64gVAPOICjGjfWnDdfbCnTfo1DN5TB/poe216Z+7XliR?=
 =?us-ascii?Q?CSiWc25mA12za8/d2lSuGJxtGS5OdLDJ+CUdxHoGwo35tl5Rxws5pDZf42Un?=
 =?us-ascii?Q?cx7jQ9x0ZewHGyqA8ZS9/GmDeEMDFGR31BZ/JKYJlP0bwH+Ok1vh4k4o/YDB?=
 =?us-ascii?Q?2q4HxNx8KZbLq0zxzocaiBkZOCCJig4B0U1SKwwew5RfocbtbIwVtpyv4JPe?=
 =?us-ascii?Q?Z30cEsT/5hE55PCBHjPje/z0FgaCP6jwgWF8HJZEWpXDxecNpC3YyNxYrltn?=
 =?us-ascii?Q?681X4pUdwvxKTwMDAXKY6q9z5rEFoYVqTg3cDJi0La6x2lP4MnSNLJfH+pxL?=
 =?us-ascii?Q?FffcLAdrKcFWWw4eNDd7DsE8olYB01gipmYbBTekBQtUlt6a61wCpNyKaXnz?=
 =?us-ascii?Q?islvU2ggdxukHHnuNhyrlUjXoUn7QLm0EznZ3tgaU+71Jo5DHtr9MdCRByzR?=
 =?us-ascii?Q?niIOahdJkcgEAys3P9omIub9gTd16y2C8xXCn+ts5g5p8zotcDKcXQHhL71B?=
 =?us-ascii?Q?Hq0W6T+nSyntWoW08ljJuFehFNhIrW6/VFIySkKDyOBQy+y2f0XSDTfGY3Nn?=
 =?us-ascii?Q?pF+F+wEMRSXnVbDfixgVTTWXLUKACU1R+fVkZw73UdHz3qJF06ecypn7pMKk?=
 =?us-ascii?Q?VT4OE5bAAkZCwJ1hLuy5JNsIMqEPptRobXzaaXkpM6NOt+qVvJBO6KvS63G7?=
 =?us-ascii?Q?TFhxqVY20fpwSAD9szRqCx5Vf+ZklvgbmGLr9oYIv7ReNTqsd6qcr4sJxMBR?=
 =?us-ascii?Q?WCzW3qMRUAOw07VqdvxYXoUeGZTkXTf7IDPaB6WXHUnvmz2r7thhQk++uYTC?=
 =?us-ascii?Q?ms36aMrHmjycouUWvI/77oh65RHxWIU4NyuIIiQXiYruDzxvOkh70akI8ox2?=
 =?us-ascii?Q?1Yu1gbAlWH0kXcZYdZ+El4sXxF/nQdUQMJ7II11lJqMNv6lo3H+fkACzaK6A?=
 =?us-ascii?Q?bSvgoi//oOp3USbSQObhFz1yOgyPn9Bxf2v9Bd2YzeqQj9OtYqNFfuYEystm?=
 =?us-ascii?Q?jLD+a1Z04uAGF2y1lhUD8jRXMt5W57GX9OCXVg5bVhT8th09qAM+KYOQQZMT?=
 =?us-ascii?Q?JuOcVD+H7SlgiC+O/zWykwuTBkQpl7OlEqIGVrH0rmioan+uQLFLE1ZQ071O?=
 =?us-ascii?Q?wOpdNZwCpV0VVy2bX+UBfTDErdvQZ3bHQ1NSD0joKL+rGNRtJXf0JOZgU5Uf?=
 =?us-ascii?Q?kHenMQKzhANwTjAXsBe1drUzOXQjYFRiGJk89Zxge6ImtJBO18qdN5igANap?=
 =?us-ascii?Q?8jtj7z404yHkTl0geh/pKi17ywotMTJp4i819rh5Sy7RtwdRW/6JAXTyRONl?=
 =?us-ascii?Q?taeWV0i4bZd93H7xVe64JZuGrt01gey4KY4f4iD364e0O8LBYOFxT+eYi4+7?=
 =?us-ascii?Q?xM11/NBSFZ276bd5faN/pJEWdF4J61hRZ4iF88syKbqp+X0N9YJxPq8w9478?=
 =?us-ascii?Q?BNXhli1PI4mzGdVjnyXmMskIT4nDActn8h9Vkyvr+dAolVoZnbQySY913D4k?=
 =?us-ascii?Q?QL6EZ4/XPcpwove/0SVf/ujARCdwpUOWLENvrorq7TrsfBDmUulCc/Kuywjp?=
 =?us-ascii?Q?UNdyfN+/6XPD4sfncvZ1+r4dfOOAqIY5p8+L2Nw1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 656957d2-319a-410c-a728-08ddff535365
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2025 12:25:50.2530 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7qOzFhgmwmDLd0vXGFkoEqA+qMwvLVDC6eu0mPh/uTEB+LJ/GMj8E3SuStkCG8S043fVPsKC2DAeT7t2FaYDJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8729
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759148762; x=1790684762;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ngD9NIx1/fHsCO9ekb46bbOXvaruS+wPQgqPVzT9yN4=;
 b=cPuDKDxp0+GLFjrRDDDEbXvi2hr8j2aMTgENojzFlKuH4Rh58vKd3tDP
 q1y3PNYEumXVL/kOadQEy2gIAZuwULmwKf1O6ooU31kVsDs1JDsz+MYXK
 ldk/M3ybiljkHjbMbKoltEywws6Q8RXWkDT0oY8MXFo69zWHS+WSqEEka
 RR8OuDx6B4uppE9Okhkkr+28Rx78qP9zyHQwd6XSB8mNOWWaNl33rc4Ar
 V3sz4ReGptj02ha+EcJwvpbLORXP3QClgC69aghZAzCSnLmoL8MThg1d1
 utipkiN+Ezpeed8zQK3f0K4EhiVNV4gEKv3gcLLQx8YrIxXUxQyvyqncW
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cPuDKDxp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/9] ice: move
 ice_init_interrupt_scheme() prior ice_init_pf()
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: 12 September 2025 18:36
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>; Kitszel, Prz=
emyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@int=
el.com>; Jakub Kicinski <kuba@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next 3/9] ice: move ice_init_interr=
upt_scheme() prior ice_init_pf()
>
> Move ice_init_interrupt_scheme() prior ice_init_pf().
> To enable the move ice_set_pf_caps() was moved out from ice_init_pf() to =
the caller (ice_init_dev()), and placed prior to the irq scheme init.
>
> The move makes deinit order of ice_deinit_dev() and failure-path of
> ice_init_pf() match (at least in terms of not calling
> ice_clear_interrupt_scheme() and ice_deinit_pf() in opposite ways).
>
> The new order aligns with findings made by Jakub Buchocki in the commit 2=
4b454bc354a ("ice: Fix ice module unload").
>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> CC: Jakub Kicinski <kuba@kernel.org>
> ---
> drivers/net/ethernet/intel/ice/ice_main.c | 25 ++++++++++-------------
> 1 file changed, 11 insertions(+), 14 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
