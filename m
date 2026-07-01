Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e3n3G7amRGrSyQoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 07:33:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5C56E9DA6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 07:33:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=QSQfBks1;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B3C641354;
	Wed,  1 Jul 2026 05:33:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a5S4-svJlg2j; Wed,  1 Jul 2026 05:33:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82E2941120
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782884019;
	bh=YtheAx/vEvt24SeSLiZdqpBVUdzxcu81uP40XThY4ps=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QSQfBks1/FUWGIH/0HkiRChErh17vTPhWkOeneuZWyZvnKNsi/54G1b7l9CRJrYeH
	 E6SuatU1hHeGGXm5e21cV27m38/tgbPgmmoMYQQbfDj1JMpUxIj03fLpVKrJlWWPlE
	 w3m4QF458OLQP4Lpla37htNXY4YCrstpVIA5RXKI7Kg84TkulCq9vlcikgylBvDYEd
	 rPdHH0m9pjJAPzCurPaUhzuXja8nbD+yJtGaEu4ImgIYI2oY+cj25PRxwxz2oSQxkq
	 TnJpCVED0X65upNGLbvWhpCPkhZVatxlhZeNMedbbSnwRU28lHfD11/9IBwJiKPj9r
	 crzJQk2TSdqoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82E2941120;
	Wed,  1 Jul 2026 05:33:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 40E30127
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 05:23:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 33101413C1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 05:23:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gbZdm-4J3hv7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 05:23:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4FDF540201
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FDF540201
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4FDF540201
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 05:23:13 +0000 (UTC)
X-CSE-ConnectionGUID: kDyGLMTnTYiCL8JBpR4qzw==
X-CSE-MsgGUID: 3diD9Jj/TVW6RaF4oLEJIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="106395914"
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="106395914"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 22:23:12 -0700
X-CSE-ConnectionGUID: cEx39nzuSaa2mdPSNCAQaQ==
X-CSE-MsgGUID: vIMvNreDT6SbpkU9Xx473Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="247987150"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 22:23:12 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 22:23:11 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 30 Jun 2026 22:23:11 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.64) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 22:23:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VHAMAfJAiTCoPMkYT1N03uKgCvh0xY43TEm8OIZ3dAzjCs5QfFR0tX+t49qQxWC7wy5kBMrBPtZS5rZMty5OiuHiaOLAZFsq1PglhYZG0srFXOEmVNRGg0DCsguH2u6x51ckatOEhEnR+q8AiN2d1Rkr7OBadXxz7YEnCmq9eBYlf6FP1elsj4YU/e7cIwA6nEwB1SYKn6Z3Ic/0c6X//71xX83AqkJAnvJRf+cr3VfPkiXKg7kPCUXYPCI5IQuqxFQirUc1FoGgPN0hKLZOfCo/KWcRGm0IVAIt+XOUpwPimdpBqnmgucwk990uye3TymeLA+k5L711CTp+Dh4YBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YtheAx/vEvt24SeSLiZdqpBVUdzxcu81uP40XThY4ps=;
 b=J0z5V9eCQ2d3Y/3U9ouhRFO7iSUdbV7IWZDmKb6Umc7FHoB5ktvSnrmJfK92Kaw2ROluxrx+r7iS82h3Rty7a10dS+gYcsL52CbOTLfQRHuT88uWCBD5FpZWU6iZvrWdxvOx3TijNi9XhTVuhnzwLH2ZdhtBiXrqUaWiv0LSO/7qxVMwXb4XwaSFJvedBSuj7PMo1jW1WYjF/qWfxmZx67iwyzWn5r+kocZm4cIVsYv5U6E2bAEnaQtmMbS71qmNDYymUWxwvM9Ii9ZA58s4SVfyQSNIMWxe80KPKTGNF8MBlPP+BuntX0UhRMjteLe9UHRjGECrNyPom0AVYWVdOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA4PR11MB9347.namprd11.prod.outlook.com (2603:10b6:208:565::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Wed, 1 Jul
 2026 05:23:09 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%3]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 05:23:09 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Blair Steven
 <blair.steven@alliedtelesis.co.nz>, Carl Smith
 <carl.smith@alliedtelesis.co.nz>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] i40e: Avoid repeating RX
 filter warning
Thread-Index: AQHc4znuLpR0W/EHl0iT2wHfAaotorY0qWsA
Date: Wed, 1 Jul 2026 05:23:09 +0000
Message-ID: <IA1PR11MB62411492DE66FA0A58A37F4E8BF62@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260514003733.1718771-1-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20260514003733.1718771-1-chris.packham@alliedtelesis.co.nz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA4PR11MB9347:EE_
x-ms-office365-filtering-correlation-id: 3d32a405-5a51-4733-fee1-08ded730d68d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|23010399003|1800799024|38070700021|11063799006|56012099006|18002099003|22082099003|921020;
x-microsoft-antispam-message-info: ywEM/MBJzV+/6GyXBdLe+gpmR8kacVT7I5XlMUPoFFuxSjlzE3Md5xHBRV9+rr5xZh6M2BsFjqMJQmlFVp2+Lu21Gn0YpWFDe0ofx2ef+UzN+X0l3J0IusvTfYvcnSwH0aiwgAFsuRtKAirggX14Lo59mTUxfKK/c29f1XsUTdtRL/aGxEXJX+rQkirh89VE14yNmC+IOc0CTjArj0f/Tn1cKjh8u6DAaJd5jnDp2voPnKgEdTx9fv9sJ13kiB9stVMvlixTQMAOvARwvlAQ8bhWvxxDJnkyR9gIwFNgIIWMigqraGfnnwgBmvy7/Hpyc0REXqnbl5AEYyOaD0f3v+g7OC/kEXHrp7XhRNkdIvWr6t09ccHjuvXDXJHHD07U6S1AWXAx6k8aXnfM0URxY9mPA8y7MbQYk1TsIhzJzNRNCu2mFWduhAIm356kdKF2IDJBdAs9MhXOlzK4qnrfIwdVY/tYDwSqnGNEpPJhVwTb9Mj/mgSLp9oErpdmHO/EbXUwAWAUwRFXiOXW66s38Kub/b18gK7IIRaEbbwWe4iUaWii+QgGy9EZCUtZTPrwGvUeRLpt5qgBddTfrerCcDm5cIyA6+BX8kZe1rEAJXQ+CeNrEIdgZchNrEYMplw7xFOXMDXYWqarTT+uISxgS6mauNLv3fv+00oKYNeQsVboHGisL9X0pbhE/k+SEgKXYtYNy2QQF2kIv/0UJXvW2KFB4VzZ08X07RK79ECVZGIlWrBn4raumFQ5/IOTjwpj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(23010399003)(1800799024)(38070700021)(11063799006)(56012099006)(18002099003)(22082099003)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NxT47U7zM3bLvqqkJMqq44OlZrwwYkuHKNKdqRqdTM2yGLXp6LbfYEv39FHw?=
 =?us-ascii?Q?qVW6muDtoxPuqHWZW7VeOSSAYdYj8FuWBOZN0xHfJq1Wd18u9lzyv+smOGNY?=
 =?us-ascii?Q?jUSVVvb0SY3McLq0eIgI0ydUqTvd4COrq4JxXE4jbEreFTMx8EtBujTT5wEF?=
 =?us-ascii?Q?Ek4lBdU6HS3qe3yRanHqPCgs0ZjIfq6a29mymL44/pVQEDuvqpiSVra/FlLB?=
 =?us-ascii?Q?TyTtnsGL+vdNKYDqdX6BFZGfPMi0EXyIQb7Kv8VwaiYZ5htN7dxHX3HKWxIX?=
 =?us-ascii?Q?dzuHZk+VCHxeChaI/q7mk27QrwwVID/8oQ5b4G6onZdTsc56yftaBjhs0VFo?=
 =?us-ascii?Q?MnHjz8IMufYxKTdqPki2ayrNDNyxyqEqBAYzCqibQJEycF41YXnomi+O/jMv?=
 =?us-ascii?Q?5Arj4xgXzuJjg8uh6ADzDBKJVViOHeSrc8kXcLdkjbe0LyTWfglvibw1KTM8?=
 =?us-ascii?Q?nByIHnr7jryUU/e9XNbOC+dwnO4oIurAGv7PpiEtjdyTTHV7KfGhAYPp9lrj?=
 =?us-ascii?Q?sGzIXp7r8LfjzI/pipqjZZFd+GyNDBCaNEMiIn2buAlVWS/oKCw2+JcDq7JH?=
 =?us-ascii?Q?amNFL/aoa0CheSX4YFNK68d7H7S8gZ95cceUnO63HulxwfoVErSABE4/zcky?=
 =?us-ascii?Q?Hy2CKRERGxFK657dLXsCNhFBJZQfrBPSUrmUN9JGHSBGf/5gjrNNVWr6PVv9?=
 =?us-ascii?Q?COi3p3az9xpgh49J1labONCxkDolIorEkHcaAOWZVe+xwm4Adl4eryxnboG5?=
 =?us-ascii?Q?kRZZq4jmNRcE4HM9TzuNTE84xm6G+q/dr8j11iW0YTook+WghSoyWB58EFO1?=
 =?us-ascii?Q?FMgiuYbOz73wt91BhYEhDOzrBN4M896gQm0NVy/tBCK9R+UBk6WXejdMWlVw?=
 =?us-ascii?Q?Wn/tfj+PjiemC/K8mXjt0sIS4AVd1Jc/D3TfLy6giFJeEFtdAKo+5P1Gx0eM?=
 =?us-ascii?Q?RCPbPbCPuywt+8hErjVJcAq/LuePjh9N2Yb9CHiOnZWKRvf1pUfUpTK1cKlE?=
 =?us-ascii?Q?QGfQKYRXR9WahWZ1rPtwMxzsGPuZ6TKSK20zAyNIvMSmFtZzJyvNttBKsgM+?=
 =?us-ascii?Q?awnXXWlZUSXZgx9h9j1apVszlnSmIQPDeZbPCmWis8peuD+URuHS4IlcQ+Gn?=
 =?us-ascii?Q?SlgQgZnYkN92l7A0R/o2fY5VkYnEq9ccczhNpZ7DzkpjYpYI3E//FlqmjqxG?=
 =?us-ascii?Q?EQx/MGI/4d3l7Cwa9qAck6eAF+jSKZzufzr4dIKAUpiCxX0EzFHnDLY0V8v4?=
 =?us-ascii?Q?8qiPa5+FgTXZMvZtC+7Ub7fnOiqUaq50n6ElJb3tteVS0kYuTJMKFfUqrBYl?=
 =?us-ascii?Q?+HfEEkRwB04EawNRNqYyb6pZqKMp43ehPUekjYPHCrDtGS3zReuvhqe3NjCS?=
 =?us-ascii?Q?ZjzSrEkytjMBnYs6NvWapqN3nBgapJN9x06VwTHFz9Q4BGphB6OQCLgjfV4z?=
 =?us-ascii?Q?uUqKXz5brs4UZ+6U5sVjb1xZpkCQX3Xb5boJcRS+51IBeYXMzFa7d6gzIwQV?=
 =?us-ascii?Q?xEeUlFXx0NFGuPYtbiraSclH1tfzQNO3UVMxL35JVsqsKoQdg+8w6llK9wtx?=
 =?us-ascii?Q?c0EwlcxpV2HbVn8uG37XneBgctpgK+y74bX4qZXbNmSZsGiMrnukmHsTchmW?=
 =?us-ascii?Q?VKMpiYJM6hX3t1kOCt9p+isR3+9RIxRgVD7c7V4UYNaYnz68XJwQbFP+viQc?=
 =?us-ascii?Q?xpX/saqA0rgRsZLqO8ZxGn8/TLO02X2hCFckj+8vqWRVoGdM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: nI6yhzTlDy1F0SnBBbSrHYT0ma1Bs5SaUYTONS7kgN1h6Kd0Y/cMaKGY6hSAbFd3lrVDHbt0TKIvzZAijtwBeZoFUCDzKuDY87heAgLvozvUqbI2W2fCfPI9gh2AbH5/4GfU/GOfZH2/pwpHjiEMsIT8DnwcUVFVZnDytTtfHi2W+30mV1yEt1v+Zz+KmFUVJ1cjwHF2zpCBSJ0GbTeAVmZx4Z1BBO2oZCp0aKBNyx+PpDYskM/oD7CRt+TpZwnSjNBXwq/BlPKglJJIw0ttI5FKSywKiOeeQtYqT84ZO7aZlvQMpduZANyfM2kyvk8CH9G0tLDkHdANaqg9Y70kZQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d32a405-5a51-4733-fee1-08ded730d68d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2026 05:23:09.1022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uGFy/eYAtj5Zwzfryr3gNFUAzGCObsCnAPRLN+g7quBaOW0n0B52oORyreIw0D7GhE6yD/NGv9cDqkud9pHxXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9347
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782883393; x=1814419393;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+fQq1nhQlStYLt68wkdkqsq34GD/pj1M4n0zEGjHOGI=;
 b=arh5hMwnjisgp5WwOutT/0xmRJbGukqPPpBHjVtjn5VG8/G3l6gsAAVA
 gswwRuuK/YheUkrgEn8wYOGKWKNjVHubruDbmF+/lpeEInEiavjD4TFSI
 AObf8Z9S/TsQpnSgW3ueNnMO5XbMz4gTndyr2MsXBFsCe2+JP9vP1/s2f
 Tm3wxGn2519LpH0WX3enTcstI0ckRaNfRxUIpmUoXTC7wAM/3eRAnU+Yl
 z88nRNAryKwd+rihQM3tLx12zl7llmElHZSdDFTiyJtbxOLj9+s6UW19N
 v5RC5wnj0KB9bQtXkCAeWiiqCf9/L8y5YCzGJICCbCKkC0kfgoE59k06r
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=arh5hMwn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: Avoid repeating RX
 filter warning
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chris.packham@alliedtelesis.co.nz,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:blair.steven@alliedtelesis.co.nz,m:carl.smith@alliedtelesis.co.nz,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6B5C56E9DA6

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of C=
hris Packham
> Sent: 14 May 2026 06:08
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch; davem@davemloft.net; =
edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Lobakin, Aleksande=
r <aleksander.lobakin@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kerne=
l@vger.kernel.org; Blair Steven <blair.steven@alliedtelesis.co.nz>; Carl Sm=
ith <carl.smith@alliedtelesis.co.nz>; Chris Packham <chris.packham@alliedte=
lesis.co.nz>
> Subject: [Intel-wired-lan] [PATCH net-next] i40e: Avoid repeating RX filt=
er warning
>
> When the i40e runs out of space for RX filters the driver switches to pro=
miscuous mode and warns that it has done so. In scenarios with a large numb=
er of these filters this can generate a lot of warnings. For
example:
>
>   $ dmesg -c > /dev/null
>   $ ip link add dev br0 type bridge vlan_filtering 1 vlan_default_pvid 1
>   $ ip link set dev eth7 master br0
>   $ bridge vlan add vid 1 dev eth7 pvid untagged self
>   $ bridge vlan add vid 2-4094 dev eth7 tagged
>   $ dmesg
>   [   25.601705] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing ove=
rflow promiscuous on PF
>   [   25.601833] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing ove=
rflow promiscuous on PF
>   [   25.601961] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing ove=
rflow promiscuous on PF
>   [   25.602088] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing ove=
rflow promiscuous on PF
>   [   25.602216] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing ove=
rflow promiscuous on PF
>   [   25.602344] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing ove=
rflow promiscuous on PF
>   ...
>
> Use test_and_set_bit() so that the warning is only issued when the driver=
 enables promiscuous mode and not on the addition of subsequent RX filters.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
>
> Resend with net-next tag
>
> drivers/net/ethernet/intel/i40e/i40e_main.c | 18 ++++++++++--------
> 1 file changed, 10 insertions(+), 8 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
