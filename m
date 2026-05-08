Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SK5YAUOK/WnWfgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 09:01:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EA54F2B6D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 09:01:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1BFC61556;
	Fri,  8 May 2026 07:01:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RpoiNkfFlSAR; Fri,  8 May 2026 07:01:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D061A61557
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778223678;
	bh=2LHYTNKuFn8MiLXWNkriKnHoTKqwscUlNF/vWyXXkxk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LD/o4WctHvP+Lo0YF47H418d+wHl2e/pRKUAVkbs5ikan7VPbpRrSmgHWRDmnRAuZ
	 /tAxXOxTiPe3sIchwGxTObUN2eEfD0l/o+V/4pJbQf1yFFJjBgt3sPLeW7yWu8Cq9H
	 Vy5klEdlHn2GKyheCr4YT8bbC8f2SfcfVWEzEwQ18iHalaQbEjz0MVqxg3Gbio10b8
	 XMLOf6cNxoM5pjaf2bYv9To7r6guGjRujq4JK7PQ5BO1v7Gv+p6LfvdmWGi/HTMCCW
	 LR74tC8w0kY2bTRabUGwbTG2u4WzohnNueGmndEuvJ6uQDlPWojtbfjQwSJi0eujOa
	 0AolA6Gp/EfBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D061A61557;
	Fri,  8 May 2026 07:01:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 41E50317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 07:01:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 33B3161555
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 07:01:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NZoGSsHIIUTQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 07:01:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3702561550
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3702561550
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3702561550
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 07:01:15 +0000 (UTC)
X-CSE-ConnectionGUID: XByLz4pHT8uYiZGHlBr5Yg==
X-CSE-MsgGUID: 2ojBIdE4RKWE04570QubYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="82809055"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="82809055"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 00:01:16 -0700
X-CSE-ConnectionGUID: PnqpABKMRIO0IoUFoPc9cQ==
X-CSE-MsgGUID: Dzf097aRRN2W2ycpO3MQmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="274808813"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 00:01:15 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 00:01:14 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 00:01:14 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.50) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 00:01:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UXLIT1LFNe1HryrXNSopU9qlNn8jT86tzChMBB06l82c5JOwWo4qn/qe7a3N+IWQCguUldhNiiq9aTckPdabycNeosFqHGlGtL6Bjf7Q2zGn3xX2gkY4uO9TfadBEy1zUrQNS4x0kO1RDyxI+8bzwW+4T0UfGy7P4h+ZpLshH0dloQS8E4onRWQs/ZVCfDCoyGW08FxXp53Fh6R3ch+mBE1Ei2bYZelu1I7MKy/UVP5kgP2OHHZs4A8iWyTou2geoUFc8qq7QRBlWFkNrkm95FWxTCjJKuyZh4usJVDEnhYikwxy2elQXlkTRaltD2DcCnbCLD2dQ3g3mvtZgao69Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2LHYTNKuFn8MiLXWNkriKnHoTKqwscUlNF/vWyXXkxk=;
 b=ZzmaN6W5BlLsrx/BwlJbvBo9Jl4419AoROkz61zKvom8ungzFQ5Uz+d7WmVLwhSRa7N84UHT7FfFmrKpw67bU9efhc+6WHt2TrKtLXLesfiNe0XwhI7IBbbWhsB57+6mymdIv0zAvMTNMgWeLVYsB50gUfYBPiOMwNrfs9ahaYXaJ9CHk8xHK7WCcTUWjQU2YqfqlYHa17XC7mRjdjN5XoPs5Y/sjYXcPyV6vjIFfGc2h7rfUte2rEuxpU2bibbgPFS4EaMUhLr9VT0I2AotzuLJ0D8eQJ0etM1gZPp4oAa6E0r3bCMgsIXjrji5O3eaSF2Sw+JmB+n9PFj/B91Q8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6261.namprd11.prod.outlook.com (2603:10b6:8:a8::10) by
 SJ5PPF64191BB3C.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::82f)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 8 May
 2026 07:01:11 +0000
Received: from DM4PR11MB6261.namprd11.prod.outlook.com
 ([fe80::66c7:4013:fead:be53]) by DM4PR11MB6261.namprd11.prod.outlook.com
 ([fe80::66c7:4013:fead:be53%4]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 07:01:11 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix locking around
 wait_event_interruptible_locked_irq
Thread-Index: AQHcvbqvTxlL10IWWkyLXzDvHMN4cLYD9I5g
Date: Fri, 8 May 2026 07:01:11 +0000
Message-ID: <DM4PR11MB6261C4034D8882E969C2BE268B3D2@DM4PR11MB6261.namprd11.prod.outlook.com>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
 <20260327072332.130320-2-aleksandr.loktionov@intel.com>
In-Reply-To: <20260327072332.130320-2-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6261:EE_|SJ5PPF64191BB3C:EE_
x-ms-office365-filtering-correlation-id: 44a054bd-f45c-4622-29ae-08deaccf9651
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: /fdurh+hYXv4j2SuttrZSua2rXq8E8gOXT6D62z5dgt147zZnr5S+QpLMbxeOB1mYqZVDNJO3qJf5R862Sl6OkGqiCsfJaoKHh28ejOl842teHODWF3z4h7vwlWI8/ug4eTYliLsZum0MP7CDG0rPjBHCQfF3481H0fgbzu1A+qYdsmWRnL4ByHK5JogKdsA8AB7K7SQEtr7Hv1kskPLJ7ReyTUQx0Tef7bFvuu0lswFokTBMs4yluWADt8heTYgGJaO/Wnyf4LsPXfvgan1nKsh8aVhckTZTBDDmxVw6Az2Y79N3HTNw4Q/1qVJhr3tuSfcesABi6MOzLvqlroWOhFBrCIwVnhsAdio+iHORyQS46w1zFzg7F5sDceE84+Kx4e2DQzCd4CVYm3v3Qbcfs9iPgli4Iz49ZCcxuEfYUDOcSiw5DlLRr+WdqIN4IqV3BCd/4W3UDgnRCQIVLc2zYuG5sfLk58A9QP7YtcqZdMEkz+gU3rTwfQrarPOhJxPg0LewJYG0DPlbh7kK5TovE92hWJGGhQv6Nz7v1Sct+ZZt0hbaCx0djQSFOaGdueW2Lt5KDwhsVbldXZxcTv2UGxRS+anvJi500YYMSUj+77JdqWsqgGTBVQ1uSTSsWhchDvZv8ZSxxTomA+kI0TEkfxe+sYT1M/MRaNlqgtreZXD9DBs9H7C2myGDasOhUU7C5J9GbUe1gojkXoEjpq++em0pwiMrFs3xwes0yZX4Da4qF3/kmfKv+9nuGyNXlKj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6261.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QNiprl1lY/a2LXUzJbTFq5LK0i+z5brx7tiAg1HlrLB3ZIUGMWFX3h9QOb2+?=
 =?us-ascii?Q?9JtmUN0HDJ91a9N3m/tuaTKV8+jPwZ9iSCeAs8LTBnIejtDDRHc8ZDyZAdcE?=
 =?us-ascii?Q?5X0yRd2sPVlSPrgmIUKwJhVcACX629gQN83GNTy2fWPNZm/MN/CdaiuD1u6P?=
 =?us-ascii?Q?azdv7mTPcSDV7fVZ94c60w8GjE6AJAC7CBWrMTLIjsoXKZ9WgBAbbcL45kF5?=
 =?us-ascii?Q?m5wHmZE2mJaaxdoYaGGryjzPbY9O6GDZKVbAcExptBeePoGwkMbXh36D2jBX?=
 =?us-ascii?Q?TWdffNPaprm190LmnIGF4as2F15ecdHN0NiNfisyFdPXD4Kz7dS400PDRf7r?=
 =?us-ascii?Q?ihp32xm6g74kZnGjwjL5X2p15HNGSdQXLBrFvPfcOMAVddRbSGPKV81B/4CO?=
 =?us-ascii?Q?c3w2U8YzUfcSgYtEuQN4wIseXaps/vYwF3mxH0kF7fxGkmXzwVhVt9Y/a9au?=
 =?us-ascii?Q?VSe/xL0xMJj6ibVtFkvBiPvwSSv8umHFDAGcMOfNJB+ukgZXDhn6xBzbDQRU?=
 =?us-ascii?Q?TePwd1Cf0CLdiW71CsNKZQwbpyo98FUGPTS7O899niMBIy1qX+8zrOfrGoxK?=
 =?us-ascii?Q?i4l2V4aPF7IVjqEec+4D/msKlrM7vEy0lkQ3V4c+UPYKAnEWaJpXSeH3M4B4?=
 =?us-ascii?Q?fxG2B5sC+bZD7cYiO2YZnEbassSaMYg3E8S0yR7jGYQf8mtG3Dq34nnCEMjC?=
 =?us-ascii?Q?wulZOm2hMBlb9RINXRgZC73vmqnAp0ypR75YOWhC2kBRveXCiQ/ERuuh7qIK?=
 =?us-ascii?Q?C1LmVZ62A8rZBzwHZ9awxtyyy5QiKkD1MFbNBe067LAmACwIN0SX4XacID3K?=
 =?us-ascii?Q?TCMPutDRFjCPehUEskUaugAAS5LkphpIWLH6Y0ylJrqqA9xHrt9AwTYz9Az4?=
 =?us-ascii?Q?rctFsxxxJHQB3DTTgsnV53vAiMw5vQdeANqrZK2290AW6myGAPx2qI+zZr6z?=
 =?us-ascii?Q?e7Qzy2cE4aYmBnV7CR9mpoQqP6YYyT7UWKevIQGuz1p7PfTPfJv5fuLrZ/LZ?=
 =?us-ascii?Q?HnaeuOcTVWMDkgkiNebWchYP+RS+hIvD0ozI0poQoUZmHP8Yb9r8pAUEg8CX?=
 =?us-ascii?Q?DgHo6gJHzw5Ypr9Slejmtq3Ez5NVQzSTn7qjdsEd243oWsB4QbAxdexjmx5+?=
 =?us-ascii?Q?f5F3Ke0p1tabtBxXO1HENy9SxKWxBbcjMeTlUcfX74ceWvQMkdclL11QDORf?=
 =?us-ascii?Q?hJxIHGQOa+FkfjOmoBbiG6+/EGVP/T0Y0kC1bSU17Umfz9E38S1shiG49LKf?=
 =?us-ascii?Q?AlWalEy70ibu1Vs89+ZwAIrMCATgYejpukk/AXEsYZ+gFubpNfjW+NLXOJvH?=
 =?us-ascii?Q?odoZfeWDeuKjnplYAOrww78r+fkvj3ZbxOnaZUMelcsnUgewipVFefLY4Rvr?=
 =?us-ascii?Q?ry6i9fJoz+VNXal+6NxmmxsKsAcjf19Hlg7yI08poz6Cud3hieOH1MnH8Trl?=
 =?us-ascii?Q?omZr+gwA9bVog8ZaVL+uc1lRbbjVXYraGuK7A8jpQHHeJdUnn4C06J/zMQIn?=
 =?us-ascii?Q?cnXBnNcrMdsgVaKnmNn8u4xyaX3lX/2cgtn+Spq4ZP4geinBK287vIbb1PO9?=
 =?us-ascii?Q?r7Yi3LJuP8FHfBK5LAkQ4QdB3hEw8pOoKqpXV9AMjXeIchThXg8dKJycxT0M?=
 =?us-ascii?Q?e20uTnJicd688bWmBjrP1KamjWkY7M9y2+WCtWoiVI7aDXED1TtWX5rasGaT?=
 =?us-ascii?Q?0NqNOSTnWqCPNvUBhlsX/9hHvONK9KvGCniOt9zsQjC1Wxez?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lHc5pH+XoHZMrBwM3MCmyfoeBSslP4/OygTe8V20wWfi2/J6XJl37X3U5US2yW6/iX43oM6urz+fnzg3q68cWrZUzxXerqq2WrgZ/2V6TABxQZh0Iyv2QolB0QCTI0stCkBvKpOAXTiAHXbi/waOzHY25WG060rlreRVbguHwburB+DCMq1WEoJ/M+lGq7+XBROp6TUM9m6mSIPKLQSppgmkX7bE8EDhcjJgyV34NxMZRAJSim5UzN45mikvycU1oI5vrTZoGsweN3k2/vbRp3A2pwFQwF1U1pwiJeByMaQQaBi0GHq9Y/t3VZiaDtig9qBRbhSdr6z2FQeImb4Kug==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6261.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44a054bd-f45c-4622-29ae-08deaccf9651
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 07:01:11.2466 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wq7vydtaSp5+mrD10qgfsEPjsiGCkanVGEx/iTIUXPV+NnPMMaf3jf1gIkk34lkqhxwBQB+1WpnHoXxUh5mVGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF64191BB3C
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778223677; x=1809759677;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2LHYTNKuFn8MiLXWNkriKnHoTKqwscUlNF/vWyXXkxk=;
 b=Y2l4UsHKdkNFNC4wpvmboxHKvT8xktFL2A1cPsbqno61q6nV9f7v6zSB
 hItPLOvKbbHdOqN6WVGbI2BbXHZFtNV6QqNvNsEFqE3TvEbQQL4Jw8wAD
 BycuhafSAF+FQkwaTgT8+xlaYsX99dFEYkM98iYbFX495c0PSW1Bur+go
 v/2pM1t6IJDv92dutPHggqxPDz68mJdU6VG9S5KC+WpfMpXa1Nz011UiM
 1cDbuyknQFN0BOfIBD7TQ8MEOrmxS6ibLvGbKR3cYx7vTLNhAOw1oONEv
 /cpPiMROb1jfMF8XEGA3g48r50rqpbslzvEndAdQYQfB7qegxSjGtdG58
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y2l4UsHK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix locking around
 wait_event_interruptible_locked_irq
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
X-Rspamd-Queue-Id: 07EA54F2B6D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: 27 March 2026 12:53
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>; J=
akub Kicinski <kuba@kernel.org>
> Subject: [Intel-wired-lan] [PATCH net] ice: fix locking around wait_event=
_interruptible_locked_irq
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> Commit 50327223a8bb ("ice: add lock to protect low latency interface") in=
troduced a wait queue used to protect the low latency timer interface.
> The queue is used with the wait_event_interruptible_locked_irq macro, whi=
ch unlocks the wait queue lock while sleeping. The irq variant uses spin_lo=
ck_irq and spin_unlock_irq to manage this. The wait queue lock was previous=
ly locked using spin_lock_irqsave. This difference in lock variants could l=
ead to issues, since wait_event would unlock the wait queue and restore int=
errupts while sleeping.
>
> The ice_read_phy_tstamp_ll_e810() function is ultimately called through i=
ce_read_phy_tstamp, which is called from ice_ptp_process_tx_tstamp or ice_p=
tp_clear_unexpected_tx_ready. The former is called through the miscellaneou=
s IRQ thread function, while the latter is called from the service task wor=
k queue thread. Neither of these functions has interrupts disabled, so use =
spin_lock_irq instead of spin_lock_irqsave.
>
> Fixes: 50327223a8bb ("ice: add lock to protect low latency interface")
> Cc: stable@vger.kernel.org
> Reported-by: Jakub Kicinski <kuba@kernel.org>
> Closes: https://lore.kernel.org/netdev/20250109181823.77f44c69@kernel.org=
/
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>
> drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 9 ++++-----
> 1 file changed, 4 insertions(+), 5 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
