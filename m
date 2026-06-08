Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SKP2IZXwJmrYnwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 18:40:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E0F658D06
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 18:40:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=xA0XMr4s;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38AB461454;
	Mon,  8 Jun 2026 16:40:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t21Vq0JunwPI; Mon,  8 Jun 2026 16:40:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD24C61487
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780936850;
	bh=EAc7w8oIIzePALjotH5amsMnz10cPI0+FOoT+PbXMYQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xA0XMr4s3yQ+1tMaqgLIZlSoEYIhhLU6XxTd7tGZUjh4roZ3QqQlyR773503AbEt2
	 D68I94bD9XCuHaIsrqGP7OW1OCiHWO/BegsSt8nAwmU8BPndA05iniD4KxpcNAHSqf
	 zbC4C844SxqSq/+ikFrdsnxlG7eevMidMbqi+yTYWXHQRcknkQAxNvg3r2omysw6DG
	 yE6vORAyeLu2uAHNbbPaJptrixb2fAzNYdeVlC4y6E9O/8T8XYPvIdu0w/doUGOO4d
	 3wyIg6g8gZa+56/vB6o+BavEzOydpsCkBdiXT3C1e0ZDOPqL/3Afwb7Tawm9pLfr5K
	 G5iujWIozOedA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD24C61487;
	Mon,  8 Jun 2026 16:40:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 799FC187
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 16:40:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5FA4461420
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 16:40:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id crdEJSeEzgBT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2026 16:40:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 91B9E613AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91B9E613AA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 91B9E613AA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 16:40:47 +0000 (UTC)
X-CSE-ConnectionGUID: FTr5wb3MREerKvFZYeQA1A==
X-CSE-MsgGUID: Tc7uAO/STH2BwSoOQEQb2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="107119722"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="107119722"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 09:40:46 -0700
X-CSE-ConnectionGUID: 8DgyInRiT0S/jVRNAwqY6w==
X-CSE-MsgGUID: zsTqDe9+SQiPIpBtkKAoDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="269602163"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 09:40:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 09:40:45 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 09:40:45 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.36) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 09:40:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YkyIYhODybdfjf/wXKaTDqI0wtzcTNRl21rONx3AZ+LPg12Sb5OH/cizGAdhQEFJa6yU2xaZlwB2jL+iBrOgZkC6AMPH28vbL/rjosJ1eHAvSlyU0vsVQbYRvkY33jjU3nKmQROcMs+XwxhzAQVDVxcbBu7aC37H0fx3wODt63WncsyRG9CgDE6VLeC0QhPNDSP4e6ySt5htRJbJ/OfKGzoAN9SMHS73903UqDwzbrjhQnSpyBS+NmGKTOZmEeHpW40KQTee/3cHobD2HXMCpzhpIZu0if8SPuiJutgB+9BMwumpvsGy1KbAOisndPaeOGalba5z9ddB3mDEtFETfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EAc7w8oIIzePALjotH5amsMnz10cPI0+FOoT+PbXMYQ=;
 b=DwHqgZwXC1H41DfEBoGi+5cmCZW6seo/v7knxb8jsWEMfR2kQG110UzGo/ZLCuMCjOpL5UeMh9CSmQdhxrFSSrxX/LNvCnaYrusMyJIl86AXE/Ltw/YuvZ96dYU6I5SHB2y9UyRfLaHIAIrTVGzp3lwFXVucYIpfc2dleLmqfE08n0vvRDoYBFO8G7WDrVnkv6T4IyGysq35CEB++mAremByc8+EfHSUmOIb2GmtRXka+9NHGwWkW02RtbWH0zxZhqnTKQJqSwSPZI2F1j7VdG0Ykmx/oZsL/1sN1PlZEaEI8kwMo8RpfffuGpvc1VTeCDR0WMpHDSDSAsuMbvqohw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5394.namprd11.prod.outlook.com (2603:10b6:610:b9::14)
 by DSVPR11MB972630.namprd11.prod.outlook.com (2603:10b6:8:382::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.11; Mon, 8 Jun 2026
 16:40:43 +0000
Received: from CH0PR11MB5394.namprd11.prod.outlook.com
 ([fe80::fd22:b4:e353:a968]) by CH0PR11MB5394.namprd11.prod.outlook.com
 ([fe80::fd22:b4:e353:a968%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 16:40:43 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH v14 net-next 05/13] dpll: emit per-dpll delete
 notifications in dpll_pin_on_pin_unregister()
Thread-Index: AQHc9qx6ibnuXlT5lkuo7woo06VTW7Y03TAg
Date: Mon, 8 Jun 2026 16:40:43 +0000
Message-ID: <CH0PR11MB5394915AB8FFEF78351655F99B1C2@CH0PR11MB5394.namprd11.prod.outlook.com>
References: <20260607183045.1213735-1-grzegorz.nitka@intel.com>
 <20260607183045.1213735-6-grzegorz.nitka@intel.com>
In-Reply-To: <20260607183045.1213735-6-grzegorz.nitka@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5394:EE_|DSVPR11MB972630:EE_
x-ms-office365-filtering-correlation-id: aef62405-1a08-4e94-5076-08dec57caed4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|4143699003|11063799006|56012099006|22082099003|18002099003|6133799003|38070700021;
x-microsoft-antispam-message-info: oHPue7anPnyPO+F7o89ksa7tNM9jGbDViHgG7rDxIxAbl4K9Erkkoxkp+RYUt52TB8XA+P07yNOrD7msZS0UGBvrR6UnBMvchZYOHaGEVpnLvidvDxrBNhxGXw0ZNjFvsrmaQ7ovTRvy1/tJaCKeT2uGhrpfezMMwq8Cz+ZqnKhZ9g8W2n8QjnL3BN8rknHMXVqp9n7ElJ/Eg75tcvp4varI84KNfzbDhKYP3IOD+R/zj1FaMCHgk4hLbGrEPycuvt/5j0iYQMdrGi2mEr6UgH39jexwsjYeMuXme7ILqUMyOpv6bK36hKcfjKn5xjhjBFd8Nj+D21gVcRk1XlU3Den4KIrd06HR56aNIjEqondKicwUM+J4ymlSFyq7fGVophijxEEcBTGrvRRR4pOvqHLmG3sVlWvud9r5OWCFWaA0eC1KAXkibBnb72ro5N8VYM45pnprA9zMrvsjDF75nkRMeOBFlf2SSg9/oq/pAOsrb6o9+MJIz3Q9LtwB5dVLWUj9Ol8gleYUKPn53n9NKaOg6k2XO+zdWl+oMeQtuwcWLUzt+1v84KHyQqCpnt3YmhuYyM/u37dTlZDplIvhrHgcwFtahLFxDi6Ypz5au21hbmwczWyxqrRfaQVUJriyA3vYGNp2fnAMNlq6BszWptLkEdsov9THMvGu1p3CjefDtZmghiZqTq0nOCKOrchFqM7M4IZhFzpDA5qdbQWMarcrMahEuJ8RaDoPKqTsLFLk2hoKt5EEERaafY3jugZ5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5394.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(4143699003)(11063799006)(56012099006)(22082099003)(18002099003)(6133799003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e3ghc6Zx0AzoYxjrM6xSzO7SoeXHr5BSOfzENYjjjucZ/p4XMLbPHOPlV1G6?=
 =?us-ascii?Q?X/7PaIRBROzTwwWavN09bcVjgrguzirSEulqE4Jhhn1UpMlKWRkVcfPwZybe?=
 =?us-ascii?Q?QzG8uOmpd/4u0lHsJGZADkMVl7TZjBQiZWcMCBdyEC0jfovoOik9LbdNh5N6?=
 =?us-ascii?Q?2VkUJnABAMvfO3PS+leDlGLAkqLbYfg51qzKvj9JcMxdgpyrb8UgkTv5fuTP?=
 =?us-ascii?Q?i7AK3uFpSgY4gksX8A5O4r9oJ0R5J2SIKnZ79a0phePq78DKXD7IBJK6+FNm?=
 =?us-ascii?Q?s58IrKU+UjK9jxynItNXzpM1myxhGzR0n0hdSBQI0SMh3INKfiLu6DbpHXTz?=
 =?us-ascii?Q?PcNjbXZvRV67+mYpIZJ72ygaKlIiCW774xrgrgPa+G5NYv7t6NibWmJH5bSy?=
 =?us-ascii?Q?jOF1QjT4HyevoXjiKfH6jilA6fnMWkepsWKPU6m7Jz0q23lcd1yk52Rxe7U6?=
 =?us-ascii?Q?HmsqGdeo71Zgl0+vV9fSg193yRAzUwHR98zN7EziZ36DI7SeqaIqRDFHh2NW?=
 =?us-ascii?Q?q27jHkOcQiqpp7jQMlAwXhKjjLF0w7Fr/gV6QU4ME3PMP+kZWq5N69gMrwDg?=
 =?us-ascii?Q?FbrHCv2/Lv+bZVxjsu3dR4bjjrpUwLBC0EgEEQCh2XMljJBkHSnYRtEa/mOR?=
 =?us-ascii?Q?g9a4e3XaeeemNzE6Z67PxnWf+d83G1j2yotDoTYPpKi4Eau4t0qqoweyD03A?=
 =?us-ascii?Q?bxB1W31QyTTsoOUItOQVzh2I6SAZbxkQL82ERcCj4YHhhQCqRhbhLzETtwii?=
 =?us-ascii?Q?vo+/iW0Eum+k32W9FXyRwB5LRuI+04PSTgrE42Rq2H7VccOY4otkvSJwuXdU?=
 =?us-ascii?Q?tnIxsgDtm8tLqVYteWR5WxWLCgd6JzpumpPimlFTte/m1TQx0RldKzJ2QoS9?=
 =?us-ascii?Q?Xg0ROgmsJWN5DvGYPs5LItWoQ0kpS4JQMDpMg/H2aSpPyJVpcvVjCM6gE9H7?=
 =?us-ascii?Q?fLy1xg0VSiJZOzlsOn9jxx4A6Kiy7Hd5DCutm2rsVW072Ri1zAhmYQmoDW5S?=
 =?us-ascii?Q?BD1buOIegaO4QSkDI54UgQT/UQ+M1nyEaEB4treiQkW0ZfKTnngX3E5N4JjI?=
 =?us-ascii?Q?BDcZJgOk1ov+vkchgEfuSQ2DQ6tyZF8CuT2HAK4/65gSQ3H0lJZMFhPQtIwN?=
 =?us-ascii?Q?5ge7eYgeLNXAZx2IOOJxFQFSyd68tJ8/HarifyjZRHNzY/dz6iiIwT8sEXJV?=
 =?us-ascii?Q?IMBTq5q9w51EWLXWPTfT8rlWXst2F7CZ4WaUGshH/ikgtKsx4hfHXpB+uSH5?=
 =?us-ascii?Q?v7hnS5jNsIYJ9NefgbmCgGnOyuNIOSlCGnRBGudOHL/mCgODPXNjTPyY9opu?=
 =?us-ascii?Q?Zh0loYIc65ZSyQOdBKT2IDy5RuaIAUEnzjHYY4Ku864CR+1H9D30e8BqK0uF?=
 =?us-ascii?Q?G0JDpaDSLzBGw5NcCUD8hYjADCMyYx+2jiRj+Un4lQ224PbbczWVL8lNplqz?=
 =?us-ascii?Q?6CpfZTahoImXB4lajkx7LDRvrMnk6JJhXkLTFf0aOxAlhHca7oVLXeMXqKrH?=
 =?us-ascii?Q?Gv1yPRcF7TkK0jr4UQS5R7ytLrqJIS3q0Mj9apevq1vuNHc3D1w/my0UwVA0?=
 =?us-ascii?Q?bdsq7bEgWdVzVaSksdqXwTWnM7j1iYhUyMBYdH7+EVNTksX6SWNSjfqy06Sc?=
 =?us-ascii?Q?p1zIOQw2v9TYdKCMEVmqcX7Cg9zBrMRt+aSWQDtJENkxVdzDw0AtdNnPWGIQ?=
 =?us-ascii?Q?/1RFc2W/8EHGggsdE7Bpg+YYk9aC/1TitBT/9xWSdlsc9XIjuD0+c7ZRo8+E?=
 =?us-ascii?Q?rp4CNUuy+pfyN1qJEZOsUMJsquH/YSo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rhrdHNthSE6aLhpaVKPw4b8dlr0xxjbBGyFLh6AskGtuSrY5cQYihtUG1IZ0doCnwTNzYI+tW0C+83p5mEaT/T/8UhTU1/Oj/PyBZkaXDAoyWQedQzt//Ilt7/YqKHHiNcyAGGHqCmJu6mFZkl0JQSBA46KqfrbM6qmaDx7g+j55sREPArXvkZ6Af33r3E74LihaAiubcV4ARw9QMSIAftgIHrCK+6U+84arHBgxvAksFSlHlHCeJt9vMrD/zgduh19BgdgH0Nl0I2wgBtOm/9HgKhdQMMvziJa6Vd4akxwtF4tR5Q1H6u5DA+xd7IQa0FtmLAsg199hwoQ6O8aGdg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5394.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aef62405-1a08-4e94-5076-08dec57caed4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 16:40:43.2585 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YRs0cO5rtjnwK7V/17B762uYbUjsuK+1r1+4fnOwSMXmcCJJXUN9E4/iz5wsll9le5hlj9bhq2JIDWs0pUlPMT9XfYFapYgInCPW3hQpUMM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSVPR11MB972630
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780936847; x=1812472847;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oxizEHSSBWsgP1ADDx//cJVe1w8cUceRf2bq2Eh8NiY=;
 b=HTG037m8nfowD4gTg2FZ4V3Gy9SBXDEy050sH9WZRH415B6qtBerQLwr
 uKlSNUF0oPnaaa+4pFD3UFXrdIQzyltYqB3cuGc4smx4dtN7Ui8QgawEy
 bTVOKvy4CmT7dLKywIiq/lDo3hX7a5I2nW7AJq572iCHm7fcd9cRK2Adq
 RoyBhIB4767Hi1H5pUaXxihpV5wRE8fTWL8cEPyPCtyQs8TwcjPQ/WfV5
 POi8Qh8kM/yNkE5K3zkIwWfpN9L8jnzivak1vY7A12zM7Bw2tFk+w03UE
 5RCFZuF50DqBGWQPEtZc0QLtSKAZzOnRvFKHkfoONkq8qGRN5d749BcAR
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HTG037m8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v14 net-next 05/13] dpll: emit
 per-dpll delete notifications in dpll_pin_on_pin_unregister()
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "kuba@kernel.org" <kuba@kernel.org>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "edumazet@google.com" <edumazet@google.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
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
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
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
X-Rspamd-Queue-Id: C9E0F658D06

>From: Nitka, Grzegorz <grzegorz.nitka@intel.com>
>Sent: Sunday, June 7, 2026 8:31 PM
>
>dpll_pin_on_pin_register() emits a creation notification for every
>parent->dpll_refs entry, but dpll_pin_on_pin_unregister() emitted only
>one deletion notification outside the loop. When a pin is registered
>against multiple parent dplls, userspace sees N creates but a single
>delete and leaks per-dpll state.
>
>Move dpll_pin_delete_ntf() into the loop and call it before
>__dpll_pin_unregister() so the DPLL_REGISTERED mark is still set when
>dpll_pin_available() is consulted.
>
>Fixes: 9d71b54b65b1 ("dpll: netlink: Add DPLL framework base functions")

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>---
> drivers/dpll/dpll_core.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
>index 80195f3a84f3..58034be07080 100644
>--- a/drivers/dpll/dpll_core.c
>+++ b/drivers/dpll/dpll_core.c
>@@ -1036,14 +1036,14 @@ void dpll_pin_on_pin_unregister(struct dpll_pin
>*parent, struct dpll_pin *pin,
> 	unsigned long i;
>
> 	mutex_lock(&dpll_lock);
>-	dpll_pin_delete_ntf(pin);
>-	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
> 	xa_for_each(&pin->dpll_refs, i, ref) {
> 		reg =3D dpll_pin_registration_find(ref, ops, priv, parent);
> 		if (!reg)
> 			continue;
>+		dpll_pin_delete_ntf(pin);
> 		__dpll_pin_unregister(ref->dpll, pin, ops, priv, parent);
> 	}
>+	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
> 	mutex_unlock(&dpll_lock);
> }
> EXPORT_SYMBOL_GPL(dpll_pin_on_pin_unregister);
>--
>2.39.3

