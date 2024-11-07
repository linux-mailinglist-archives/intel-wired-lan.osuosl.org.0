Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 016919C0553
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2024 13:08:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE7FB408EE;
	Thu,  7 Nov 2024 12:08:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BR2Ziw5idJAf; Thu,  7 Nov 2024 12:08:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC020408E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730981320;
	bh=cUPrRXX73htX3MKncaKMXJDhT+AC076TAKcWy/w5IZA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=45wpZae4WONv6Gdbp53Ck4YhHBr+gjlkPUtiOG9/o292tgKq7XLYyBIP1jQJGugSh
	 ew6UAzpp8Ud9pUg54lwPh57sKlEScmrTp4KbV/Qoo2drqv8mYObBB2mkHLCipuKWky
	 R2g77qhhY0dCIExepEUm4f+0b9M1W5jgOSvBfkehVYdjmlCx+/uVBfq6qPLSx0Ja7y
	 1qcmM7GGDGSdQQ/OKjf/NXuEnU4HP3O6x3kT34fzgxDxn2MLT05Bkm9uI6j+OmsS1D
	 hQSX6vh/JqPYYzcw1dhUxDhNXoDneF5v/Gnt7wYZQpAR+8O9vz1r21HkN5mP1H9dcL
	 uJGJ7eoADquCg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC020408E3;
	Thu,  7 Nov 2024 12:08:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A29B7C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 12:08:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 82DA5413F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 12:08:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DP4hWOtkQfbE for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2024 12:08:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2B3C640FC2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B3C640FC2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2B3C640FC2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 12:08:36 +0000 (UTC)
X-CSE-ConnectionGUID: o2vY8EBPTcC8F/gB5BwERA==
X-CSE-MsgGUID: UU0XLGKWR9W+Ppqv3JjEsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="42195701"
X-IronPort-AV: E=Sophos;i="6.12,265,1728975600"; d="scan'208";a="42195701"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 04:08:35 -0800
X-CSE-ConnectionGUID: 2Ao0o4l9SV+N97DfsADoOQ==
X-CSE-MsgGUID: AXE/k+kZQkSbWSwtvCWhDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="89858659"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2024 04:08:36 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 7 Nov 2024 04:08:33 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 7 Nov 2024 04:08:33 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 7 Nov 2024 04:08:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ip7ruPtDHPilupEJ8krHm6++zx2AQepboeYXrZzGLY5IFmPcl12jR5lejk3rSnAAsvz4K/AQXhqJIkvQqJygSRvYf25rnTpJfXj+zWcuFZGXd7x4nuSicq6nnDST/77MreZqRB3QyOy9t8/8TYnN+1Ybc8mZeyBbLQ9JghhaI/u27UL/gBPQ1tJSSlOgnq/LXT8Epc4N8DAhjYkldbqHpUs1J3w1fIqKHRz1FvBJA3Yc1Rl+321RIK0Ox6Wx8A6u/tlOROoUi0AluWXuS5PBo4R3AcPHlJMizaPaNFWzq3bicJAO0SpGnY2CZg6SJ9UoHlQ0S+qIv0YO2lW0eHmbNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cUPrRXX73htX3MKncaKMXJDhT+AC076TAKcWy/w5IZA=;
 b=QfW6P1Z92sUv3/fagSs7ZWj1oDYmA8OF+4CzUWtJsucPcatPvJOaLUNgtPwdziZp7YvoadVLTCNPyOjZnvvB5TOwezcH7E3JqZ/V6bvdUQPimxP1/8nS1zUrbGAhX4caV1x+F9XGw//4EHh/dU00quIi4Y58peW8JfIkHPpWR0ovZPpk5QwbVZTAmMaWXJmHD1OmqANqvs5yLl5DAdHe2jYT5myqzx2UtWrlMJMR8IAWWGFY2HXypzpHXGRg/Z2ZsL68mhHeAmPsR2bhVHfHfPh3azblAjVez1PdFi5zInFU2ZC/uGKGl77bStdT0EiCawFkwgWfatElXE/t2sicrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SA1PR11MB8574.namprd11.prod.outlook.com (2603:10b6:806:3b1::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.20; Thu, 7 Nov
 2024 12:08:29 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%3]) with mapi id 15.20.8137.019; Thu, 7 Nov 2024
 12:08:29 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Fix NULL pointer
 dereference in switchdev
Thread-Index: AQHbKeg5LvoEF9KnYkm0UQMPdnbqf7Krx4OQ
Date: Thu, 7 Nov 2024 12:08:29 +0000
Message-ID: <PH0PR11MB50139E81DD6E5309FB04D0C1965C2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20241029094259.77738-1-wojciech.drewek@intel.com>
In-Reply-To: <20241029094259.77738-1-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SA1PR11MB8574:EE_
x-ms-office365-filtering-correlation-id: 8351fcd2-fbe5-4bdc-92eb-08dcff24e435
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Bhhi4OkwsdhnAqOis0brk5ghBVF1/i9a8JDJwY51u6apxLkAdUMHQTsuMAdO?=
 =?us-ascii?Q?utzLj3up5CDvcTphwe8kNYRLcqBIbDH+oCTCbJXSSV87VxduNprQ+YY6Zgow?=
 =?us-ascii?Q?WSac8Pz0RpzFhrYYoKsNXfZnbLXKBqsceUsNQou4XBe/8ZflTUgloWytga5T?=
 =?us-ascii?Q?K+YIb4iewtiS6Htq5f9u10piG5T2//arCZyRI1+IDz6GW/x9mgHeQ4hTSgA5?=
 =?us-ascii?Q?CBfOg6ZJZltGo1EA73k4SjFwUwsS1ubaWc1zJJUFuHNq327eoJMIOElkOf9F?=
 =?us-ascii?Q?IbCJFomcjG9ZPE+naeyWzah+0tQlNhtuT24ZyxZfTH4CzLD/DqQHM/VxPd1Y?=
 =?us-ascii?Q?tBi5zW0pDIV9KlWtT7W6yq7Mg0R8OISi4W5R/voAzocYZfEklKwRIIKM4io7?=
 =?us-ascii?Q?2KEBGJ0RgQqRZujEJJyoFyDXdS2jtSMBH1ORWBl2QFAOnQN02Qp4pGLcRdCs?=
 =?us-ascii?Q?QayMr5P0L1IzgKkxz0lKfXnRLQVpvxW5voRIxw8SAeSmsXiFujGnGHC54DOO?=
 =?us-ascii?Q?cJ1RY/84ndOzWhGMxAjoMqbXcnamKzlPrU7633EhJqfafIwM5iZNYxmik0qa?=
 =?us-ascii?Q?imYsXkYN8O7Ec6sy8cEibJgtj5Y8OUhmI6+TCRqvwDc6oxm1tTeiChNVujKi?=
 =?us-ascii?Q?GPID/t6H5pWJwLVOmQfs23U/J+y3+/Q1xL6A7zuAkTo+CIZj9uy7TA+3Oiv6?=
 =?us-ascii?Q?RuvVo1NdW3XnMcPcMaKjmMZdHJ1eWOSlMvAgAUlSb1C2Tgjj4pUD4ec33XaV?=
 =?us-ascii?Q?smbXmrFi7ps4HyzRTlSF/3Xiz/ueqOB2/mlmEhVmFKk1Wk/wBFx+ADKEX42P?=
 =?us-ascii?Q?RoBQ2sXxYmx4+Z+50eqE8GUpkRPRjLC0iTZGUhKydBxFNaJNIQKYKvwZiGzf?=
 =?us-ascii?Q?CoYgGUOjdtjnwV9x2mHwSGgan6jWl1Ug6VXMsHu1YghL1bVS+PqYR3E1Tj9g?=
 =?us-ascii?Q?o3dBbNCRWRI8VpW9ExjidOyIdzZVXMsAkDNiG4aMDCF53Ra4HaQhvGERxBy0?=
 =?us-ascii?Q?efnlcSthHma3yzvhjYdD0gmRER5heUuOCfy8EfdQdLvqizdOdZPXNUm6Nvm/?=
 =?us-ascii?Q?c6lYvQGWHmMErpplRxahU1w1/xNLJvfezQTg7SHbXg9KTSiPClsv/yIdFlSx?=
 =?us-ascii?Q?etS/ZvUoiOqDevyeatKrbSVRq6+UQiciUFsOLCk94gfG+UMgJbfToJtbntXs?=
 =?us-ascii?Q?1csHI04RJVolESJlbiqazisaP+Xr/s5r6NCYYox1Ksi34noeMvhS5gWR1zH2?=
 =?us-ascii?Q?PTNc9jYTEME7i2pygFsKcFQu9UliIsdRUwINXPnLRsXXCgn6kkryQJ+ToNH4?=
 =?us-ascii?Q?n7HXhx2YCqibXNjG/jYY2Dhg9his1OGAMM/NHvRgxBDdNtksruLg/ZfX5WLM?=
 =?us-ascii?Q?6DYZDOI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OaVelbBmtmAaGI3wyaBZPoW9G2X6xWB69CvRWubESJDEFNP/pQV8AnTZSsX4?=
 =?us-ascii?Q?dD8jTq5MRf5SfYvBf4jRtyRoRy8CKOAWFEoh/QyGPMcjVm7ChCXCXW/vCNMQ?=
 =?us-ascii?Q?bj3nq3bMvTSjw+ZkFVYT20+UXV/KfupE+EfWUI5PkLMc4PZIKBwR/P0DIvcn?=
 =?us-ascii?Q?ITcAXjYMpuS8uWQ/TC9vNN3jLuB9LTICe5lRLLir0s0eu9oHJt3P1SCC7Wa2?=
 =?us-ascii?Q?99LhyewCaV03dk3QtiuafFgoWx7eFfErUr92itRUIxEomkDZo6p3NYoj+7XV?=
 =?us-ascii?Q?wiH6meZBb1Kf4YaoASIFECpvyMqIXUsMxmwhCpc1Wyjztkkn1E/3Qo1qVefC?=
 =?us-ascii?Q?sjzninsGBz8cg4WLgedoBEOU0fV0SDoHWJh6mtrz8ukFTR74XjK8p7foAxyz?=
 =?us-ascii?Q?e9ZysUftFeV+isBXYqRgt7O+6xxc0VTSvS1nTffif4Os0hf27vTpF/h2K5Rj?=
 =?us-ascii?Q?kEZCGJDl0YCqF5A1LT27PRwjPe0Yhd8l1o2j1i74cjXcKketbweq0cVk9HHs?=
 =?us-ascii?Q?yKV+kFw1qt3wJ1SxMTwSXvvvcpC9wKmomg9/X+fAO6eYyPjtEvMomeRGpZCi?=
 =?us-ascii?Q?wKd5hd3eNaXiPFbfWs3BQ66j2qK2clwereVwQGyg7Kd4qvcvt19aVqr8pon5?=
 =?us-ascii?Q?Cwo00wKhxNgxhvpfiIGftmMeZ3020G1hCnCR74rcSDx6bKbU9dodFqn73Q4m?=
 =?us-ascii?Q?HBlc/i5ABdqFU/gBsCtjyGqFu8Pmm/BTBcQwQs8CWnozUWZm4b49b2W+WKZt?=
 =?us-ascii?Q?i7Rw50hvsQmzwSnZvdoSROPyGlVdIZYUy+QYIgyH43POmBKvZuuteTjV3Qjj?=
 =?us-ascii?Q?VGDSqi38Uh58dcLDZRRAg9rEPs0bvLQroQHw4AuP63jWVXCVv7VdnVe07zpf?=
 =?us-ascii?Q?wAcYYq/QlfbTW0QDnDAlMD+ePPfePHF6z/fRuR1iezkif0wZFRAIpyFxsDbJ?=
 =?us-ascii?Q?7PWHpouV9ANF+cKqgmguEzlv7P+odJsBIbPM3SCqPK2fPbzPm+ph0xG9J3AD?=
 =?us-ascii?Q?+PKfuQLPy/7JjSjdhYmagdL5RD2CnNR/JQN4kBZZvHfRLlb8fde9k9p1wJqo?=
 =?us-ascii?Q?GtMSrTCIvkfuNLK+yEgWV5eMrAFEc2ylmsuZRl8WOFSu2noM/vEMhDQcGzgp?=
 =?us-ascii?Q?R27FkVraS3FcdeNsc4BnQJl9M4OcfsRTDA4vhC1CvpLIlIROoRfRXBq7n4Bh?=
 =?us-ascii?Q?YQyEEHaE7QKsGam+L2GgJR/lgb0aSt9e8NiDHmHbnSgJ2Y0KsJrJS2/CxK7k?=
 =?us-ascii?Q?ZFafsYbiiHR1z2xQ4/m9LbY0cOTE9uwoEFzpOanlDDpXIgshwLHQtjTauryO?=
 =?us-ascii?Q?zP97cbU8XTiqAn200Yj/TTjNJNpwMRNz8iSDtMb2yL9lUgL5u9ZZ1afOt8Mj?=
 =?us-ascii?Q?/wZ6NVBrGJwZQ1RTuCa2IAslWta6s35uCIK67BZu8Xt/IS+9Zw3ildOqTEcc?=
 =?us-ascii?Q?l783+rIV8BBtundjAnfx4hqXtSL9Kfv3+rriBch0DZGCDUmVg2fzlv4cqLdy?=
 =?us-ascii?Q?qVjuarKRVqjWbo7Horj1Csck39QCUV44VDFyrRn3b4Ya+p9oD734SZIzzy2P?=
 =?us-ascii?Q?Ca7TtvqG1PmsAgFTAWaYfyf4frwPU0Xt2J6AWHdU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8351fcd2-fbe5-4bdc-92eb-08dcff24e435
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2024 12:08:29.2203 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WWQ1flNws5JWvuw+do2NrJtoYEH3y+vj1EMoJs0yvbIxeXYeoV165rZ7seShyqqxAInh5xNNVASRgqTcHYq2t27HX06nl2dlKjx8iaKH0IE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8574
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730981316; x=1762517316;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+nIwsEavaMxDN5bZp98AX76LzdJtleQreeB+GDFZ/1s=;
 b=cir2i3C//mgXtzC/NpLEi4DGJGRDqndPnr4ufHuHmEY5wwB1a05eN21i
 6afm5O4/aVODdy6232k8y4i8Ax0uPr9mD99doEgtyemkXS9HO4Smbo3Yw
 hgeyhh6bfXlFfSFuOG3keFgyamPrnObcjS37AIzuwfUc+tmnc70ZkV2cd
 o85b9N0BctXs4Jy6LClhD+HiXJHvfZs6rW0z2CJLTiDnVnGBaPNi/gR9W
 pF5QbyOgGlcDeRnB653/iGtjpSisDuVrQ7FeW9WRh0/9ZFnCbh6PwE9xp
 sJcEB6HNbIq8+YK/uarxMZVufluBZK0LlHlTminoiI0d24raKqp1BFg88
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cir2i3C/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix NULL pointer
 dereference in switchdev
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Tuesday, October 29, 2024 3:13 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix NULL pointer derefer=
ence
> in switchdev
>=20
> Commit ("virtchnl: support queue rate limit and quanta size
> configuration") introduced new virtchnl ops:
> - get_qos_caps
> - cfg_q_bw
> - cfg_q_quanta
>=20
> New ops were added to ice_virtchnl_dflt_ops but not to the
> ice_virtchnl_repr_ops. Because of that, if we get one of those messages i=
n
> switchdev mode we end up with NULL pointer dereference:
>=20
> [ 1199.794701] BUG: kernel NULL pointer dereference, address:
> 0000000000000000 [ 1199.794804] Workqueue: ice ice_service_task [ice] [
> 1199.794878] RIP: 0010:0x0 [ 1199.795027] Call Trace:
> [ 1199.795033]  <TASK>
> [ 1199.795039]  ? __die+0x20/0x70
> [ 1199.795051]  ? page_fault_oops+0x140/0x520 [ 1199.795064]  ?
> exc_page_fault+0x7e/0x270 [ 1199.795074]  ?
> asm_exc_page_fault+0x22/0x30 [ 1199.795086]
> ice_vc_process_vf_msg+0x6e5/0xd30 [ice] [ 1199.795165]
> __ice_clean_ctrlq+0x734/0x9d0 [ice] [ 1199.795207]
> ice_service_task+0xccf/0x12b0 [ice] [ 1199.795248]
> process_one_work+0x21a/0x620 [ 1199.795260]
> worker_thread+0x18d/0x330 [ 1199.795269]  ?
> __pfx_worker_thread+0x10/0x10 [ 1199.795279]  kthread+0xec/0x120 [
> 1199.795288]  ? __pfx_kthread+0x10/0x10 [ 1199.795296]
> ret_from_fork+0x2d/0x50 [ 1199.795305]  ? __pfx_kthread+0x10/0x10 [
> 1199.795312]  ret_from_fork_asm+0x1a/0x30 [ 1199.795323]  </TASK>
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
