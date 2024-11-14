Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3298A9C881E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 11:54:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 089F760A61;
	Thu, 14 Nov 2024 10:54:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8X2t4-Xo5Ksj; Thu, 14 Nov 2024 10:54:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E87EA60A5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731581642;
	bh=VSvUmwgzkIG6nImNvNbBRuIONI2Cpft//1EEputoeOQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nGhAXIPU7T9HMyHegtNDLWhrJ/AmW+e6vACfviirjfMI6pMaerXKKBbyrmLxGBbjQ
	 EOCnFcUw/6dUkAjJmNxawUkhYvYHOuLgoyZA36yibVH63rMMqmf5oLBSxe1IW2CAKD
	 YNkCINtRhX5Y5Os5CS4nb4z+lP3W0RRVK4rs/+lPWvLtShUTwlcKeJuzvc7E6LRzZ9
	 +lH4J20oEy50m3kg9ExlvYQcMM/VDc2208QXmRC21m+libmk+UjY++0hI4LxZH9X1B
	 hmgb+FGX0obpS1+W89GehQPaGXD5Ms8myCQywleuSQDNZznvDJtdIxOKiuBKKrC0Ly
	 L0H5/v/62hlFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E87EA60A5C;
	Thu, 14 Nov 2024 10:54:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9777E972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 10:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 840014064B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 10:54:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RqVlegFdm-tw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 10:53:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6A5D34067D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A5D34067D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6A5D34067D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 10:53:59 +0000 (UTC)
X-CSE-ConnectionGUID: TVYMcIcCRfKLWc2OW68f6g==
X-CSE-MsgGUID: AZPyCZDCQHWB9rO4LFPhHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11255"; a="42899009"
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="42899009"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 02:53:59 -0800
X-CSE-ConnectionGUID: BhjDYARNTGmUrHxhRjh4rQ==
X-CSE-MsgGUID: bsZPOzvCTM6unRQDFqaF1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="93103476"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 02:53:59 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 02:53:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 02:53:58 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 02:53:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NOB8eVu8MTzTIpyUr/JdhIuTS1tSUWuAablLytHdfPTCmVy15ocy+rERkJTZeeiCYLbKwm/dBkebe8bKKi5EA+3lYc6ZIpU5/iTHbe9u5h5NuLEcjt4b05Oq2lSorZ/feIEfrnuLGaBonn47QGVMeylEoI3nx8GyQDePjqthngL2YrCKTik+5odMD4DHSzrusoow09sIzADKbxyY9GFCRYV1wGeixtECdgWCepD3eyTyQww5sclD4eHb/ldz53hq/gVdIquZd7B0ETl9Su+uxgsIZn78LoGC3OksykEgqvGUOLFHl8w+4SQ9Q3VA7COKBy2GpuKD9BGzR5T57X34QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VSvUmwgzkIG6nImNvNbBRuIONI2Cpft//1EEputoeOQ=;
 b=OTuG1OaYg2eoD/j7JuDLKOvUlbTynwexQmNI62P2JEHUdfZJ6CK6236OOwrf/mOqp/rm+oUcXWs2J0/2cs0NEYS3Y+rh+111G2WuNkH0YuhZzhyJ0moOPuhGHSwohqGFZV9rgbnd9McbVAtQZT9p08hEVM0YhPRrr0DXDn281NhtFbgCb1xZyEGeglOzeoBBH3xgm4Pq6qz3UNr3x2DGJJ4Tj7NHU6RphmUPpwk/WdeU1O/P1hiwrI7CypVShf2QNkTDgehk76kB6RIB73QRwgVXxwKHZWKxC5619GqD5jwAXI6X0vDiT3i1EHFtWeYaIkFy6vTjTL8SRbXdfBRsVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CO1PR11MB4849.namprd11.prod.outlook.com (2603:10b6:303:90::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Thu, 14 Nov
 2024 10:53:36 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.8137.027; Thu, 14 Nov 2024
 10:53:36 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix PHY Clock Recovery
 availability check
Thread-Index: AQHbE2hbxPrbZSAn6E+NzBVfcsFVlLK2roSQ
Date: Thu, 14 Nov 2024 10:53:36 +0000
Message-ID: <CYYPR11MB842913EABF37263FF28D32BBBD5B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240930183622.897485-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20240930183622.897485-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CO1PR11MB4849:EE_
x-ms-office365-filtering-correlation-id: 0c86bd9f-9c02-4167-9764-08dd049a9734
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?3XjeWehzsbKbFY1jTiYnbT9x2f/fB1oyK4mwTEYBuidwtEtHcQUAsHSyFMir?=
 =?us-ascii?Q?wn9TUMffH8yOj+yg2k1hudkJLUJQ7ZiMDK26s6NVe9mqBEb+B57LHAtNC012?=
 =?us-ascii?Q?fWDSOwyXLRGajdevEa9KelXYT+HaUJt1cxCS1t3UFAvkQO5uSEXqFd+SBSYZ?=
 =?us-ascii?Q?WFPcRz6s0fPhPAb6r0Z3akqFBNeynxbV2HL0o5iE3pEhK9zRT3hW1Rbu3wLc?=
 =?us-ascii?Q?6mBsxvnn1nSuGeEaIFZ7H8nq4OcCNx6lEfFhcyMDIKHiguOQt2whDtvQnbsv?=
 =?us-ascii?Q?ltyuEDihWF8FBegbhhWA172jkTYDcsJ4wTGTOZ3soRfLeIRaSXSyufc4R3RD?=
 =?us-ascii?Q?2ukqw4DAUGePsW9Wk9r2zZ5s0yFKJDzebEjRsMMWfYifP0evYaFhXIapHhQq?=
 =?us-ascii?Q?nBnaQgt82yJMzkfr2Wya0GPfUeXVeQZL5dZaNUfdQa4cpvuBwITrcUvMaq/r?=
 =?us-ascii?Q?6QwOfOfsxWVyKhDPpzX04aTSz6aHt5dP5987t1MRevBTz3CQGuYAXZM4MGg8?=
 =?us-ascii?Q?L3bGZ60a//FMBI91gLEotXzOroGt2aFtJ7EC6SzqBE3yGudieyUFc3UtJGzE?=
 =?us-ascii?Q?q8EuMkhJXO5ygN5s54wTN+mVUPJXWpIg0Aidb7VFVPbT59j9BacJS8sYA4zS?=
 =?us-ascii?Q?FqaBOBzkRQ7uHPNLEpQ/Wf9HLUjGxvfsh4aZtja6wq9bcQxYvvkfD1annIKW?=
 =?us-ascii?Q?EFDByjdqTC5YBBm5sN99sN/ivVfso4eub6rJfh/3liALCh99mLv0itWQFmln?=
 =?us-ascii?Q?CXmM6WMT88XHcp4i3bdI2t+aQcgPaR+vlqlJuBFZLZOvpzLjuwGo3zcvHUKC?=
 =?us-ascii?Q?0uKbj2kLuXvTrqwWun8060Q0XRK5N93vdlTidouyRddiR8ty0C9mWRoRc4zb?=
 =?us-ascii?Q?o7kfl3PX5fb53cS+CS2oKHopKVxxXQyqtDODNTFeWf5ADJpSIbgB2gv10Lwr?=
 =?us-ascii?Q?XBj2DPIZZgmVvZAmUfWfU50D7gMPH7/SDDGW148jaAJyOQOXIs3iUuPceAUc?=
 =?us-ascii?Q?AcuOXIbk/AR7DbdN9/2+MPjkskvUrJQ0LyvvAANW4R2uZ7s7bn0yKUqjV3q3?=
 =?us-ascii?Q?bzc9ga14MjCLKJqZQCvKhGo+YNo5Aflcfv0DdsGFGcJzV8OqOd2y7kndf+S0?=
 =?us-ascii?Q?BtuuF1Qkuhrv3WyfL6nRft8j4eJs8DfsKCNGBzVHTxTtEJqh868Xfp6YM1GD?=
 =?us-ascii?Q?5sD/0mmmcM3Tyi25/8itV3sw5KJbVMurfBv8ecfJ76SmVCip1hwMxrxeaiBB?=
 =?us-ascii?Q?UEG2gEey0Bpf2sx3CXxMd7W9cJe5RPOfhEWuE+C0GYpQA+fEYqpotJYUdArY?=
 =?us-ascii?Q?pF9IitrHxRmSGrf+sNrO4tR6iGMrXqbQNwI/VXD+7Hg1YcujdXrMI90DJXaK?=
 =?us-ascii?Q?Tf2intgtofiLRrGm8M5xfnttD0xu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mIFJ6jfruJEy2WQuJU1huDoMpklWyKI5cPynl+w5zeRHYPFbJRsZ04SDItS+?=
 =?us-ascii?Q?m4gSwqQdRshA5Mhnclo3eauEzPEqgZWZSTxgjaoG+2L9ae3LN3kGGmeGealG?=
 =?us-ascii?Q?QJnyiUK6lo5O/5xavADKS5wdpq7Y/QrNNRhspPObGxi9nD5h6WFYS6mnz+vd?=
 =?us-ascii?Q?+pqdU6Xds7o3DnKaf4mkKp2r5SHFFiU6rd0b1NuhtI2fzW7mMcgQdIfBQLO3?=
 =?us-ascii?Q?1FcwpjG+fFPvL7wo8lCkiTCHpOsQnVkOhSqJQZv5rJw1/Ub7yIrqnetQBcc6?=
 =?us-ascii?Q?CBriy194P6nkh0sgu2rUcI+hd/N1hEog+pVm/+tTTVUNFiGDdWOasqQw73hZ?=
 =?us-ascii?Q?DdBssxdISxa0qfYIqVXqCeZaaNIs0p12Dk39/1U2hTzjXuNvhiF4/WUHqOWl?=
 =?us-ascii?Q?f1DF6HTJ7ZXKNrNySPEBgD1//+aWwgbAej46rl7anWbHlkaG6cki1kNbZm8g?=
 =?us-ascii?Q?Ee79cWclAtkeZ1dFRSJHvPQ1eM0/GePehON2AMWsl4yagg877WQFWx5NtoSj?=
 =?us-ascii?Q?DmVwKhvL6tkV9eXJf/xh5n6tB/h1lw6dBx45B0iTL503n6i5mBzkvTBlzwW1?=
 =?us-ascii?Q?Pnzge5Y6irIxXQkVnY1nExya9IlqFnX36XMGptoQiJ212X2XRTrWJiaoVbfl?=
 =?us-ascii?Q?npTnR01Wp7SIdoVodpCNpJzZPsOHL0cgaPjFsQVbPmJQc3t7g0Ex6EwABiNn?=
 =?us-ascii?Q?H5fEz8fj0YwphdUb5sLKUubHQfEePQKgk5XdYeVdaYA3FGu8kjCsaIZ/zSMT?=
 =?us-ascii?Q?Zwmw2wJ8isgfCCcN3S718U6jKkyt6x50piDv/4eIye7unQwj1GOGqcRt6VDa?=
 =?us-ascii?Q?r6SpIt0h66KTjXQgFjXrMakP42SPqaseQ3DZpiE6D9Mj6/HuF3ib4XpL9ox5?=
 =?us-ascii?Q?gqb79m677Db7IaogXajjfVFzLAFWghH580aSrwjXK1cI0PNCW2vShg8zxVGt?=
 =?us-ascii?Q?Oj9OvBHQt9eis4o2LACUCTCxFRRyLSD1oBa7zy12lcQCL/oIrM0itq2tkHie?=
 =?us-ascii?Q?J+i0KJl/xgTtVb/UFBdh/JYCg+NpyHu07LxLLBlO7OHbV50AcGamsNLX2Wqc?=
 =?us-ascii?Q?blG1vLfGjlNMkC/kjGxTZt8y6rSQ5fDeBFHbi/5OluSRNuPUPS06rK/QjNvM?=
 =?us-ascii?Q?6ftF/DvwOt8ayCF02NoNOYi+LpCH3oCUNmaKRIKR2YKcY6uo7LDZox4HU8Nc?=
 =?us-ascii?Q?W6aczYz729ucoSY27mFUF1PzDhPnKRcelc4uEXg//yvWWDf/w0b9DIMTgR86?=
 =?us-ascii?Q?wO5GYbw2uyF9Q+EEpDAQaOjMfVvE7lNRg90jvKAnQtynlTeeivW8CcujInJB?=
 =?us-ascii?Q?1jk1136EmOEcwVrJMOtmjUMowqBD+O6O5VzJDFYAo3qy+xCH8Xuz2gcjbEiL?=
 =?us-ascii?Q?eEUaMmB+9GawECE4p82f1R8IAMxqoS6fqwf7aQncMfBR1SURSld7lS9GjHkt?=
 =?us-ascii?Q?IFFsDdFfaVlZ5eS1yzf2oLrXdqe9m3fANiqDCd+1Ee+9Z79xhS+D9isFUQbe?=
 =?us-ascii?Q?eUNvw0k1CA9a/dXnm6qnzman0/jA2wTPzxXaHQjO5If8333iBcC+KrzUaLWm?=
 =?us-ascii?Q?Sr38VH5qk56vcwl/GPETdyss8oVtgKdwVvo5mP/dHBwHdGM8guZKDcoBdM6b?=
 =?us-ascii?Q?O1qUPBi4F84rF/nyKMQ5bGJkUS2vnEyXB77RAYfDxtcHd6R/jk0eCSCNzcqw?=
 =?us-ascii?Q?kacr0g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c86bd9f-9c02-4167-9764-08dd049a9734
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2024 10:53:36.4195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pz70PNjjTN1I8C2Yq7tWz6ws5N25SUElB9Dzm0BViDGp6aj93/0QJwdI4jTyzB4YHA9+C9fq66IixkfMo4oosUC1EarBSdB463HpMogOHSki/3FyPN+YawmG1NrX58XG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4849
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731581640; x=1763117640;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tQtSev070VKYReBqe+aMKZU4cz1r3HH+Z1+h84T1kW8=;
 b=kNT84J9FO3i/mQ96KJ8OClKsTpIIhO9dy4vxembjtijJoL6NEgpGcaCr
 rmUrev4KmL9+O1BvDwHnCe0N+WxS9aIDPCjKOYoikYIt557Pn7W562EcX
 kj/gCBW9bx2nye+Jvthug6nlxTa3Us7pGnIRQMysFeRnzyg8w78JdVtoF
 oimTdF08Nhk2vP1VapsB0F8G5xMyKpxB9uhyKJvtpo6npH0clSeidGusm
 /fVIiqPKBV1oGphpII2AvRzxTux7u1IGvZpGh9UlUFWIEPgWMbpzM2IA6
 J9rO7MJLdx3XEPEpTAGKDMmm1en6inzCR7MrLQcyZi6/If74xzV080gtf
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kNT84J9F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix PHY Clock
 Recovery availability check
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
rkadiusz Kubalewski
> Sent: 01 October 2024 00:06
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Kubalewski, Ark=
adiusz <arkadiusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix PHY Clock Recovery=
 availability check
>
> To check if PHY Clock Recovery mechanic is available for a device, there =
is a need to verify if given PHY is available within the netlist, but the n=
etlist node type used for the search is wrong, also the search context shal=
l be specified.
>
> Modify the search function to allow specifying the context in the search.
>
> Use the PHY node type instead of CLOCK CONTROLLER type, also use proper s=
earch context which for PHY search is PORT, as defined in E810 Datasheet [1=
] ('3.3.8.2.4 Node Part Number and Node Options (0x0003)' and 'Table 3-105.=
 Program Topology Device NVM Admin Command').
>
> [1] https://cdrdv2.intel.com/v1/dl/getContent/613875?explicitVersion=3Dtr=
ue
>
> Fixes: 91e43ca0090b ("ice: fix linking when CONFIG_PTP_1588_CLOCK=3Dn")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 25 ++++++++++++++-------
>  1 file changed, 17 insertions(+), 8 deletions(-)
>

Thank you for reaching out. Today out of the office. During my absence, ple=
ase contact my lead arpana arland( arpanax.arland@intel.com)

