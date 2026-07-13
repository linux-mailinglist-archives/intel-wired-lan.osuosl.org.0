Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id y81uMACIVGrpmwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 08:38:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EC374796E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 08:38:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=176HQjDr;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3EA07605EE;
	Mon, 13 Jul 2026 06:38:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ey9d867p3Jt1; Mon, 13 Jul 2026 06:38:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B78A5607FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783924732;
	bh=Ep1x/WwF2bhV9Z14lMc63UILUp9/RYw4ThqXUB3KD6s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=176HQjDrWosdw60s3zlbDDzJbj6xEu2Nm0MY6NH0GlMloQMUAjWnFFjFGErxoz+ZB
	 DriuNL7YxtKUPY+S8JbusFdapyuMsyFzBTQvynps9mhz/UAn4muP+fYuwsrfmCzTnt
	 FrL56TRSWJYh3Mfj4sEntEarDvc2e2PuoRxJucs7ShNQBqQPovvBBBl6VYIwD5GhN8
	 REztz+7ho7lVLvjoC8gKnGCEOJeNtak3UuCysm1jA9PnxXFqcM6V6nYDiSGApqia4P
	 +M64spcOzZBdx7u4wr6njZ2yz8dzeLCoQL4fXRkYfJLcMsrklHvGS7uPBd0lpt0xRl
	 CWUN57mWCbavA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B78A5607FB;
	Mon, 13 Jul 2026 06:38:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A6A2128D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 06:38:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A3C7780F8F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 06:38:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id auLQGM_UJBkN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2026 06:38:51 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F24B580F8D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F24B580F8D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F24B580F8D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 06:38:50 +0000 (UTC)
X-CSE-ConnectionGUID: +/GCTrLbSdq3lhrkPqDmCw==
X-CSE-MsgGUID: JSD3IAfeRrmPP2UY/LUysw==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="107326544"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="107326544"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 23:38:50 -0700
X-CSE-ConnectionGUID: kVNWKIU4RaextFjL7yvPyA==
X-CSE-MsgGUID: iwbn4Q4PQbivM3JsBbktqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="260347502"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 23:38:50 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 12 Jul 2026 23:38:49 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Sun, 12 Jul 2026 23:38:49 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.68) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 12 Jul 2026 23:38:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mbz0hafkZmieifi19HyTBLT2a8HpchRSOn6IcK5W/AnPiwr+wgaMcD1VNFOTLxlhbJnbmH7EoicnyQXBKWw6XCs79Stnb1EPmCzZ/g/spt/rgh9i6zItuvPzm4rqS5N0R6cOuHKIWs81bgduFkuphrQea+xU4V3ZSlel52VT58T0F2szW06RRpG/vkt5pzayDsjT5dqj4Qp8tIIc9S80+eLV1TYrsOISP20rgtDNYg+krIf3AvUEOv7wlOeiZtx16ZRhGQ0WV/7cWf7hFKSbJMd8MEPcHOFVXveDUci2zs9qo7ZmPVBaQ5ptwPavsBSo2qfSOnIO6hYVDvFX6UZEYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ep1x/WwF2bhV9Z14lMc63UILUp9/RYw4ThqXUB3KD6s=;
 b=u8S+8WzLc2bAuIWVQa5Wg8BZi0z7AZPow1LRkETuplNoqyZJQMd23H64ZIb1ddbEk06qb7ObteGm2m0aeUDw7uVgz/h3UiH7u35HoCR4AZYXxAHZpDpWpNsw55K3hhcbVfWzzFhLzttH6HzCTngYIC6+IT3Qj/8fSkA4RUgTcKXlUv8mknu9IFkb8z9x+ZhmSr080UGqAoYIT58yngSNah+lfWkOV5Uu29Wq2tsVayvVsN/vCJgOF+TZqCU3UJF82OArOdDyIHPVFuKc4YVV5iVXEfAOnMlJLc+76NNxQWQavIjYr+XZyaBTIi5xVxkS1u4gQBbY9CMUGXRrNId3SQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SA1PR11MB6709.namprd11.prod.outlook.com (2603:10b6:806:259::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Mon, 13 Jul
 2026 06:38:46 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%3]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 06:38:46 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 1/3] ice: Convert ctrl_pf
 pointer in struct ice_adapter to RCU
Thread-Index: AQHc8afcXoEk52B+0UeBOiD7Y3asxrZrPZYw
Date: Mon, 13 Jul 2026 06:38:45 +0000
Message-ID: <IA1PR11MB6241F6843BD3795460D517EA8BFA2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260601091951.3017848-1-sergey.temerkhanov@intel.com>
 <20260601091951.3017848-2-sergey.temerkhanov@intel.com>
In-Reply-To: <20260601091951.3017848-2-sergey.temerkhanov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SA1PR11MB6709:EE_
x-ms-office365-filtering-correlation-id: 7c79a4a6-ea18-495d-b052-08dee0a963ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|38070700021|18002099003|22082099003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: MiDTANiXR906HKVdB2IW9fGoEYTUPr3vcHm2DGEkXAArKSmJrw4XnLobs5gxCpkFJc35H6qduTyOPbv+GzT347a1r9gZYMezG/vSW2KHZaMdY4fj/JKJ5vYAt4ytslhnyUszJmfof4rOX25q3YHIrSwM9FfemHGlxp2epiBPcwkKBsYJx3ztvQgJ0wHnTIFqajDdskpBqh3qoDV1SYVpikwxT7EpOvUsKyKv38/fWbBByYo8MoXQGrPQP6ytiPkjqw+C6+cV7mHMndfODfqhDTfETO71Wg2eI6EFnD7KNcZM0xSJftHaCIxKzcPkd7U+7dhnYbB36JBO2OPD1Wv94lHGi58lQxdcAR/3sz8pYflcFQrxUJoFYopjnNf360JJq8f7dPPnTqIy8BedlOdeep+wJP7m2078ZWgO6255gYR5xqNaJSUCT6N2on3Ixz2DKhAV9NjqxDV9tB/nlju+faykJST6JPylwql0clucc/brChkTNuI76OuG/k0GS5a3o9VvS7U2ZOC00ZJ/xzBaxVJaMCrfvqR1zfY3viuxi18C73ZUOhK0W4Qg90cAEzKAM/zzqfKOCAowuh5KHzzRmCwbEOtlK8sbzYN+xNiBFMyP/zdDiCz9OdrUgZqu4/WaR9E+VXh8lkQLEIAsJ5CGr0OhusYMQpOTa/3kcKnOinFI9sGF+Ubw+cT05EgU87/jlCyS2X0evJ0aqQ9w0HwE5/2C5Q+yqRLwY8AcqK/tP1U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(38070700021)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p6igSiIaeMxHAto/D9IbQn9kJFgVZzLVlh0kfQdathgd/F2xT4b6MLvmgWuW?=
 =?us-ascii?Q?Eaz6Wq0fNHV+w0I0+z9WB3NEp8z3792gDIm/1RZbzX217Y75jt6z1kuQALb6?=
 =?us-ascii?Q?HWYeYhZk96dBAS3IRh/yeVLfifjAoiL8zeL3DisipBhzx1ke+AjnuVSsPrlb?=
 =?us-ascii?Q?0FB9sCLUzMR7e6yNKJaBViQRvuHbDJMy6XMLy/bZjW5q7LzIC12Cbom4gPqA?=
 =?us-ascii?Q?jQotgGzfaPVLbMSWEKmNlb4J5TtA3DWMFax/sEvSq6r/DkY1hd9vNbepFc/X?=
 =?us-ascii?Q?lnWNxaGTmnqDhLWX9G7DNgn267sZe87f2qE1nLSrkrfTfNnAYOG/9ichtChh?=
 =?us-ascii?Q?Bh2cPV7lQzuHGOAJz1WuJUlNq3RJ3wAIDen2PPCmsjgq1nHi18JjAdAcCkl6?=
 =?us-ascii?Q?Erdhy99RzUFZ2P27JwIuJywFvs072ulf6ONdU0BM/HJhgT5bC3I67NMi4IXa?=
 =?us-ascii?Q?x959GJRnUGqizhdoFdFiH1fuPh597p8+vWTbaad3K2bNC9hQvrtFeT3OCKpZ?=
 =?us-ascii?Q?LhTGdZ9c7JTUiUlX0g72y4Z5XJMrZjXoznhWfRfYUnrv33M41e4Wi/jxGTqy?=
 =?us-ascii?Q?rfb9M52BNC9qFTAEqDu2IGy9VJ6KdkSL1DEfJIM7dR+mfMgHGSEp4QRI9Fxs?=
 =?us-ascii?Q?d6yNHkp8e53RK0SH4uMx/L738ak4z4/LZncyFIhQ+PdZ/kv9mPyHl1wq213R?=
 =?us-ascii?Q?tvGQl1n/L5BBIx4eRS+GRLY0keiJT93VSf6j2TEAT+Q3yZMZN+kLSjepc1WY?=
 =?us-ascii?Q?wWIvzONIy1VEd5Ki9gkNv+4zOAxzYyut0/x9SbK2yVhWfFS/q3/p0f5V7q25?=
 =?us-ascii?Q?WR+0YIHqkHHntxvtJ9RNR3M7gl8xF6XaqtXYtd1DaVVwIdzvKrYj1Y8eyb3E?=
 =?us-ascii?Q?hn/rQhqZf9CHYTebhjfrSRwV2U363U/MyJroJDnAvcw7o0ZjX/f2dnSGdSfa?=
 =?us-ascii?Q?xri6LtSADi5mz2Gj/cc3SReyFGCJPpRkqnefXTMqVLQB5FrOA3WOZb0rHyia?=
 =?us-ascii?Q?x+tr6iIjssd8rRma3juTlXwFGzPdwWwR+iUXol0/Ec7geg/cke9/B8grnoPC?=
 =?us-ascii?Q?EGNQSa56yzyFvvbY5+0cd2EgrhGLqS/uawNBPg6QubbNX1LN7j3vQbq8Ie/J?=
 =?us-ascii?Q?5SvZodZPtJqXCemLL2NGDf0GUTQAAcv7g97Q3e1yCzdKOxxXkj+Z5zBu4mf9?=
 =?us-ascii?Q?JZi0dpbIBgIKyaAp1bo2+OMCFjPI6YlBmXY5sNdBJfOhgoSvIybUHjLd66IK?=
 =?us-ascii?Q?OOEHDs/Ulh7cJMNt7Cmq7ObO35i4y+0tl4HMO2YOG8y2tR1M1Bko7KEJEALo?=
 =?us-ascii?Q?i0C5mtbP4zA3ixNWcyAl5VzbQvDK+kdGfpvYjbwizfuHV7DBrUtbg2iKc/1D?=
 =?us-ascii?Q?KxQ1N2iniB/tBPSbb+zsTumK74MrgLpM5nuCHhSOz4acqLUM4cI/OEWDwWFP?=
 =?us-ascii?Q?cXHkE/PaxA12byP20GvCyDDiTF8zwqPodJ/yI0zMdFSvjs3bFQOPI805MLi7?=
 =?us-ascii?Q?AzwND5iGFyNMgDExnH3INM4JZcedrexRAQX10l56MwZZoDEhRzQy5fFEgpQE?=
 =?us-ascii?Q?3wpcAJeqaQn/a8O+DUCWMi/3Xx9yFggHMpqKfrraHIl/9JHhbQafKVyfixfI?=
 =?us-ascii?Q?I9HexN8xCwGB6lOcEBgbR0wjKyg8LfLYx2zWq+nzLAgZKLGYwqI5Ilkbpm/h?=
 =?us-ascii?Q?WCMMJ/t+2E938uLY4EZ+fNysGzzdHxJfWkpOWMIeiXCDCMh/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: jTWC2ykCazk9l4h1p+8vvdLkc1nmoM7nJ4TLtW/pHoIedSp6QcAru5N18fXjg908KbeMKVocMdJN9xAmHUMlBi4r8wksSCINHCeDFMduWoOB4e7rd6oija3mT1eMpBXkg4AB85x1VWNOcynW2RDMIWF1LQiqrHpULAQ7SFwj5QdI8EBTcanb1RmCjBSBl/zpV+HBL9FUg6UFmqYgARTorLUs546TbPySS/4duLujjE2obkbF2f4GWto9do2L3w0AuDynju/0RWnsgCcnsF+UgNQhTG09Emwbuhhttn2Imn/EY8v6Htf2lRj9keRfkHPgUrkdRIszs7zVEzoe0w3qpg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c79a4a6-ea18-495d-b052-08dee0a963ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2026 06:38:45.9257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jSZLxdI3gAeGgs0qcKiZ8rIbaz7wtCOdkRKcI4AjMLRymuikuJFEj3YtXKaIXWLXcVIVFPbMF3X+9pZ+BQJgRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6709
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783924731; x=1815460731;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qT+gLtTZs5PhMH7COiSVfM46dHon541PZaq7yNwCwVk=;
 b=ONhoY4HYj26wDsxwBL9aUcnNOWBmVt2dvV1cFCikPhvamHL8mU+gFkLc
 o7rNMLjhkHy/7dsFrJjdlSDaf6EkgP8G8UJm/STmZfZaWU8mp77YWHujb
 4/EmxeY3nX+UsDxnGDq7bU0CZ+dLCHgfP/p+UcrWac6mgxaH6Ttl8ophq
 XgHCST5++IXMrx9bfFdGM/vzhF7IuD0VADiibywRfRRAIbOZYDkqpfwzU
 U721z6a8bAJyOXAbm4EYi+uszucTe+MYtzJgHVAP83x82r5rU1lWh6UQO
 DQAwIbY19pvtd/iPhfLSDxDj4UE8Rkn5sxOPX/34GiwzZ6aqRZjzgk0in
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ONhoY4HY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 1/3] ice: Convert ctrl_pf
 pointer in struct ice_adapter to RCU
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sergey.temerkhanov@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 81EC374796E

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
ergey Temerkhanov
> Sent: 01 June 2026 14:50
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v3 1/3] ice: Convert ctrl_pf po=
inter in struct ice_adapter to RCU
>
> Use RCU to ensure the consistent state of the control PF global pointer c=
ontained in struct ice_adapter. Enforce RCU usage on the callers.
>
> Fix a potential invalid pointer return due a TOCTOU issue
>
> Fixes: e2193f9f9ec9 ("ice: enable timesync operation on 2xNAC E825 device=
s")
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Tested-by: Frederick Lawler <fred@cloudflare.com>
> ---
> drivers/net/ethernet/intel/ice/ice.h         | 10 +-
> drivers/net/ethernet/intel/ice/ice_adapter.h |  2 +-
> drivers/net/ethernet/intel/ice/ice_ptp.c     | 99 +++++++++++++-------
> drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |  9 ++
> 4 files changed, 84 insertions(+), 36 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
