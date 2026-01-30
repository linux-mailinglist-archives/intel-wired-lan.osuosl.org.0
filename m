Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KGlOI1gfGl0MAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jan 2026 08:41:01 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E14DAB7F9A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jan 2026 08:41:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6ABDB83CBB;
	Fri, 30 Jan 2026 07:40:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qt_WN9DGIDWR; Fri, 30 Jan 2026 07:40:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E97383D75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769758858;
	bh=AL1fhz8akFh+Y6SaLCBMZ1UszF4RRwfIuS3jGY7RXpw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yd9T5xKYcB5H28jutXUfYeH1uqoFtZ9Cz83ZCOW+tiky6j0M5xVlQERejaSwqnjD0
	 TFE+4fk7FNBXE/1ErEA2ORdZc0yxs8oZVymGzg8j45QLw/EZxYZmiNXWVr54HpNaFY
	 5NgG/DrxRiZ6p8IYXNlngXQKfS7/IIKfBZP/m0kn7qHIzW03krZ+1h6O5YWF8umNLs
	 lE5DT7mItx6umxetGMA0J/FX8l+zy6hL6nYbxPon1QdwnAz06DMUMnpOkcl4koyYcX
	 GR4OueIRLv7spwseGDhtnxmjnIN5bVJPG8/X0+qshnpInLpdWktpg+jF9NTJ5sUHhn
	 x5nm0KEHP/O0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E97383D75;
	Fri, 30 Jan 2026 07:40:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C1E569
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 07:40:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6BDF560D6E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 07:40:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tG5wVQsVhotn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Jan 2026 07:40:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 21CD860AA7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21CD860AA7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 21CD860AA7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 07:40:54 +0000 (UTC)
X-CSE-ConnectionGUID: pXEZwEo9R324HAVfdr2l/g==
X-CSE-MsgGUID: hZp+EZEySPesCLUWl+i+Og==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="81323358"
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="81323358"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 23:40:54 -0800
X-CSE-ConnectionGUID: eIfmX2noT5eCeqVc3ZyG0A==
X-CSE-MsgGUID: Kl2BpxkkRaqOCf3n1tTpPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="240049953"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 23:40:53 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 23:40:52 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 23:40:52 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.9) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 23:40:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BrLEs5rRT2tPAVnGWIDGXkxTWb24VyMSwiteYa4mWYN5ag3QCzhdZeyNf6e2ogecT1qQ7/GE/7tGU2c6ROccwPD8xZyzYPQhJaGlAJjhuGjNnHdqUZLxVMCvF+YhpnS9/rD0yWnfWnbxYO7/vu+HGiVX0rmuWffE0F4y9Ek/2GueEDUMBTZ5co+YX4+i47Y0DYHfLJoQhf7uk6fZ3UUiEaQEr18Q96HSW2Q5705re1pcKgraS5cU3/RKeacW9p/klCtiQ9RW8CD8GdhpkiyXkpjGg09ViL6PfaIozvcByQV7XA377BtXnbZU9F6+9tB0efsLd4qnzYCbKlXxsU6NEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AL1fhz8akFh+Y6SaLCBMZ1UszF4RRwfIuS3jGY7RXpw=;
 b=DT6dAlaTzb/OCHwndAXXo/KgJpx5YqrjJ4d4N645yM47pCA0ICau2KveF0CtgCN9Q5kfxgb6awh1JqVq7jp6LjRB4d2NDuBiNpxoKWHj/k6bu9PZIBdv/f/hrT7I/YddT+ERyxgYEu0hp/lkyvwIuBPRvsGnh6LneHQUWKpJNQTkiHGjIRbZ07l8pPkUhhBFVF/Rn0yQ5yO0GGOxDVFztPfg7OHXBoiW7yp+bIQY1D3bS3vLaUXJvSoUGPF/aosiprn/Xg+o3rfLiXeKrs0rlKfeg/hOvOKcKWAxKEhIRwQ6wd9MJiF95eabS6nkx8je4PoxXHHe68x1txhMWQoFdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA3PR11MB9110.namprd11.prod.outlook.com (2603:10b6:208:576::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Fri, 30 Jan
 2026 07:40:49 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Fri, 30 Jan 2026
 07:40:49 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Richard Cochran <richardcochran@gmail.com>,
 Eric Dumazet <edumazet@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] iavf: fix PTP use-after-free
 during reset
Thread-Index: AQHckQXFHGAflyesJE2zHtlyWD0ZIbVqVWOw
Date: Fri, 30 Jan 2026 07:40:49 +0000
Message-ID: <IA3PR11MB8986D77869E75AA14C8A793AE59FA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260129095723.7269-1-poros@redhat.com>
In-Reply-To: <20260129095723.7269-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA3PR11MB9110:EE_
x-ms-office365-filtering-correlation-id: e32e9be8-139c-4327-d377-08de5fd2e339
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AB5/q+jeE0JtVU2yNnxY/wKXx1LaaHzFLlq/SD2E/EYz3oljcNLNILnhhR9b?=
 =?us-ascii?Q?TYfYh+prg54H9amMx0OnnBaf0ouWTfv5qHC60JBR67U9Nlnlm23IkfmvftI2?=
 =?us-ascii?Q?v/ggp2ZHkc9JOiRCKMS2m26cWg6N3/jjEjLJHeYhsYmEKptG3wV62ZYxmLxh?=
 =?us-ascii?Q?VjIw3pmyHOWMekMuphO5Wys56qFlPDRnXRgT1w1DdUoYE9SMmBRNGl23uPSj?=
 =?us-ascii?Q?WH39higqIQAKmMh6F/BN7OJiYcV3hL70OyMZLB1/rQCuY72phvs46adA2B5C?=
 =?us-ascii?Q?LxgjkTwCecROoIT/CfqvG2cx5IlK5gE4rGpZgT4pulyUXS4oI24eybFa6UzQ?=
 =?us-ascii?Q?MXZlJegt6mM790mnLgQFY+Kdvje8UGLtKXI2bthm6KuzHFZPAeWmMnujxOYP?=
 =?us-ascii?Q?jBJ/146FknKULSYahQjX/kNvQ4Ep90H1ZuTRlKquZyGWyZs4u0hUb2kQQUru?=
 =?us-ascii?Q?9WLZsmDIYHrxaoeZS4jEkkQtDStMnhYnQKqNfTHEwOgo5ZWY0SBM24wAkDxs?=
 =?us-ascii?Q?ceQFvSNN+2OXjlXmGF+l4/Pt9w+SefApMy1OPdXWA/UQjfG4lHymQiW8dPJ4?=
 =?us-ascii?Q?TZe+E+Z4hhpQvxx4dPuRCiSwoKdlUQpP3VjRm1vetIgOThE12gqCNEQgaRvj?=
 =?us-ascii?Q?eTiZmj6JKeJqGFy+/LpN/poPOTVB9MYoYRVjlkM6NBLWaEqilEHALNAwBdWJ?=
 =?us-ascii?Q?2gNayyv0Xh7gyfW8kfAifxH0yIiTxe8Zopwp3gDf/GbUOmbM8kSeXp/p6d8e?=
 =?us-ascii?Q?7zOUkLkQGVOlBJZvCf6JpMyY41ZbWnVkedlbfBu4pl8qWLiOddQvwIuouQfH?=
 =?us-ascii?Q?dIw5b5vx+IMPUMgjmOE9nhPqSpChnbeNrQoAlOx1LRW/vjXGerEYE/A9Ca3T?=
 =?us-ascii?Q?bl/xES6VlcV4osWRE991gFneAZeu4lY3WZs1rWhb8bnrLRjwOYwxaZkAGZrl?=
 =?us-ascii?Q?IsbNQbpV+ysdf8HJW09wRoYQ4MvF/T11hG4T8ZKwyzRc62o4zgWNh9R6BJTh?=
 =?us-ascii?Q?1FWyshRGvaBUoOVfzY0iw0+Ry7D+mSF4x6j5HonMbPV2spJ+kmeCthRf2qj6?=
 =?us-ascii?Q?B2YEDVWSJoRfDGAV7aS9RI3ahivwHvo9YNxI2OTy45xicxQTqIuTVd6hnnd9?=
 =?us-ascii?Q?5huJhCuDid3sjAhdrYzCecVB/cycITcL8ifDWwDA8HtCrLKzsSTTOCz54gj6?=
 =?us-ascii?Q?TqvdSDwV2RYU2kUPjzS8lQogTXYxhQF5ZME4td4mfUy7308C0rPRT8isi9Wm?=
 =?us-ascii?Q?acaLpsIYqw5MuK1lCvwwH/z1N4Eoo9p9kOtSX85crmzkYcfWDdK1pykV1R5N?=
 =?us-ascii?Q?0oqxkAz20ihPlNOkqVZde+qv4VMmdjyQgnhc9EgWQK0lhw2hKvlOMEZLBC2B?=
 =?us-ascii?Q?TlxAPjAD8yeIIMV09hJIiy84n6U5BTaq4g3t54KWLAJliWXwApvVKKHw+H+7?=
 =?us-ascii?Q?RYYRS2anuz4v0mbO6YN3oehG9eI0aoboSgi4zzgwHpi0IEXZeJZyweysoDgI?=
 =?us-ascii?Q?zRkaFKlQtUgDCUCektVcoDht0XdPt6ye8KxrIrqXTW8wU8k0e/dXT8LvOy19?=
 =?us-ascii?Q?wqCMjBCXn1ZIRXnK+Ju25O5QYfrqacF7WRCE2/5zfHyiNZnXdLMbCWWCzSqZ?=
 =?us-ascii?Q?vEdb+ZooL17vebeOFwmWuDY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NNVN2ZY2UOVdla6mnfKT2Kyu3qGuHoCky+TX7M17K69zRctA9AwIjk4S/zye?=
 =?us-ascii?Q?GOSZENcuEGP47faYSnoV7oaQnFb3WuHttLFkjJ0VkXBKThGtr7Smp1QXh1rP?=
 =?us-ascii?Q?FTBhOQAfkiEqxdc2YEPr+SBFR/C78rZ14+4z6+zPYMHoqigCX+JXyoUmlYaO?=
 =?us-ascii?Q?URmg/CzLq4Pzq2ZUlwl4d7YFhd50lCE84zSoyamlq8CslxYrfayxObkJRFq/?=
 =?us-ascii?Q?gA7w/S0S8kphMH8HJ5unsX8dm8XZI2fFeXwnKbZQdrLLPox8hWRi2qg4B9Gd?=
 =?us-ascii?Q?SzSwiTneXbQgTmRO0G9d59OR0DMGnSXiJGbsPzPMJUvOJ/VWJxgSvoWYFwHw?=
 =?us-ascii?Q?N/PVJJmqc9Al4RgOqSvRI2sd1iaGfSZYEwxcvmQqHhLtdFvfY8cXXjWMBNIX?=
 =?us-ascii?Q?8OHcx3z0nFc8qwkzhuWEFT7fRr4SOwdLbPXiJcKZMGLXdqq2ugJ+YWQGmvMu?=
 =?us-ascii?Q?dB5MiFifsX6XEpHRUE0cN3G4TFDZiOzwElme/FhUbwq9tj1PDmS/KBPXfEqR?=
 =?us-ascii?Q?PnQw5hTBE/I0L1kbZBELuPQ83oYMvEaajgA0WtrlAjfsVSWa3LuiFSbtBxkS?=
 =?us-ascii?Q?dlMz0Q4gJAykJbSsxcKOFvGXNmh5NkavW3WOS1doBvTCsKUTTW12Tj+PyfwH?=
 =?us-ascii?Q?hP5uHbuCEWg0VUHPgOymB0RljkQNJTgPhjNStWZKaaNGhXQYYCbf0i+LqEdl?=
 =?us-ascii?Q?xJOqaspkRN703nHlvcbDry4xMKpdQIIGDrpPGy1akqRGkm0AtZcVGbsCZqYL?=
 =?us-ascii?Q?UNq8d27HQPpzYtSJ+Tuy4YHT2uFek5ko65u59SNMyfFgx0ML+DUMUnfDTt64?=
 =?us-ascii?Q?/DZi1myM+1qwkjPY+V7KQaLiHBx9RM/T4hFtvwrhl+p0YcY+FNJ4fvR5gvT7?=
 =?us-ascii?Q?PT0vcWM/DRNqZfciDS2Wxpi8pEBGAUSZI/JvX+oMohXiLX+B+C46OFZZOwDy?=
 =?us-ascii?Q?pIP3nIkja/Z/iBxpP7lkRX88FKnrqtoydaxIGJbLRg8QZoCw+QT6OnVOffyT?=
 =?us-ascii?Q?XveiCJmcw8uEBs78wdXOrofX9btC6fZ9S5bHXUH0rWQra0F4ZJfLCrswxirY?=
 =?us-ascii?Q?bKaiJJ1JoAPj55HkeZtFYp/NV2A0v3gMjyTICi5/hc5sd0VFgSl/IMJXK8jV?=
 =?us-ascii?Q?5cb+bHSIWKXutBwejDMlXS1EAbSnbV2IB1pEyJTWe/hmF6s0RE0uXF2kRF62?=
 =?us-ascii?Q?Ccvt5oFepP9zkSyCzn+B2xNectUnLu3N1e3x3/7BZJiSp6t9TEeVgyyq2MdQ?=
 =?us-ascii?Q?orNomLd5nNPZ3c9myfdCrP154HPJri4KIofJGURDxls0lQFQt2+w4tyT2YaA?=
 =?us-ascii?Q?cWbbr8k5Gip9w6e/fA2VuGPstmUisUqTf8lohLygXMcVrZGlBhnRNmU0QEoV?=
 =?us-ascii?Q?N6nvzZhXI4H0jQ8vxfNBlEgfU/lrSVBJw7bAXQOpQG6qY797Am6QNM8wypMv?=
 =?us-ascii?Q?azIdCKJUGfpfcVsXZAGvZuUYaubtuitkQZiNxIoehutedAhfraR/Y6rJFoAa?=
 =?us-ascii?Q?SkPA+sQhwS4qSe0vzTacftTgAY3IXGg8kpDULzqPGh5sVxT7HYXtGw4lFJ/f?=
 =?us-ascii?Q?Eg6BldFsZ651fxKLTzhtM5HPFanpyyGFrgNy+OX/HDi40fb7zdRR/yMb/tRx?=
 =?us-ascii?Q?ROi5N8lzVq8RjI4lhGoz0WU++gHzlR1T2jR6U6ihn356JXiaKqXrv8YeZTnF?=
 =?us-ascii?Q?69uiD6JJRGU169R2s1+/PItYcbgpAC9sieJ/Q0loByXcgZDTVzMI3/CSkqjX?=
 =?us-ascii?Q?8ExtOIipzhCjvGeQrdL6tUltH3gqZjc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e32e9be8-139c-4327-d377-08de5fd2e339
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2026 07:40:49.2929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b/Og7flp5uT+uofbNoEhr8bkm5J+vUgm6kad2oyNsXSf8N+Cf5yRoQXDni1fFeN3boJrwUxMPIUG/c5KhKIU2v42oYoWPLfbmjN8BlGsif0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9110
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769758855; x=1801294855;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dTuKRI/qN301nuOgFbh/63m/aQWfM5t8thAKwbPADo8=;
 b=fbVJWq2okhlxF662n3FIJA4cljcEpQTNZ2KvwihPanKXGmnkirjo8B3q
 kP52mWKvABkXvZMOhpaxL5voFt27/6hBhASLsFmTgXapaH/199yLJq5ad
 odvU/QKXTLG+aS+6QtcrgiIMuiWOMnt3lkSGJ9l9S4U8ti6C0dudlCD5u
 HGf/Wn02D7jtrl+Uv7XX8pW4l9rBjxOheQRvziUwr5iwAmYMEGHU0oyxZ
 mgB6JCq3C3NSbRBo/nEu35/EI5VFTre7LjL0LxuMewU4a3zmXLzubMenk
 GZvYjYQPbUoE+Gi0RaLU1QvajqBX3YPFOEkuxroEfJ8On5TdhIIJZL2n5
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fbVJWq2o
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix PTP use-after-free
 during reset
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:mateusz.polchlopek@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,intel.com,gmail.com,google.com,vger.kernel.org,lunn.ch,kernel.org,davemloft.net,lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email]
X-Rspamd-Queue-Id: E14DAB7F9A
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Petr Oros
> Sent: Thursday, January 29, 2026 10:57 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Richard Cochran
> <richardcochran@gmail.com>; Eric Dumazet <edumazet@google.com>; linux-
> kernel@vger.kernel.org; Andrew Lunn <andrew+netdev@lunn.ch>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Simon Horman
> <horms@kernel.org>; Mateusz Polchlopek <mateusz.polchlopek@intel.com>;
> Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski
> <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller
> <davem@davemloft.net>; intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] iavf: fix PTP use-after-free
> during reset
>=20
> Commit 7c01dbfc8a1c5f ("iavf: periodically cache PHC time") introduced
> a worker to cache PHC time, but failed to stop it during reset or
> disable.
>=20
> This creates a race condition where `iavf_reset_task()` or
> `iavf_disable_vf()` free adapter resources (AQ) while the worker is
> still running. If the worker triggers `iavf_queue_ptp_cmd()` during
> teardown, it accesses freed memory/locks, leading to a crash.
>=20
> Fix this by calling `iavf_ptp_release()` before tearing down the
> adapter.
> This ensures `ptp_clock_unregister()` synchronously cancels the worker
> and cleans up the chardev before the backing resources are destroyed.
>=20
> Fixes: 7c01dbfc8a1c5f ("iavf: periodically cache PHC time")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 4b0fc8f354bc90..0dd58ce5a53ab1 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3025,6 +3025,8 @@ static void iavf_disable_vf(struct iavf_adapter
> *adapter)
>=20
>  	adapter->flags |=3D IAVF_FLAG_PF_COMMS_FAILED;
>=20
> +	iavf_ptp_release(adapter);
> +
>  	/* We don't use netif_running() because it may be true prior to
>  	 * ndo_open() returning, so we can't assume it means all our
> open
>  	 * tasks have finished, since we're not holding the rtnl_lock
> here.
> @@ -3200,6 +3202,8 @@ static void iavf_reset_task(struct work_struct
> *work)
>  	iavf_change_state(adapter, __IAVF_RESETTING);
>  	adapter->flags &=3D ~IAVF_FLAG_RESET_PENDING;
>=20
> +	iavf_ptp_release(adapter);
> +
>  	/* free the Tx/Rx rings and descriptors, might be better to
> just
>  	 * re-use them sometime in the future
>  	 */
> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
