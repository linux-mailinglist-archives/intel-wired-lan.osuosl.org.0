Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hlBiISkAK2rr0wMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 20:36:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0E9674779
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 20:36:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="js/NpuCL";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7206682077;
	Thu, 11 Jun 2026 18:36:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P1pfawQcszNx; Thu, 11 Jun 2026 18:36:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC4E582079
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781202982;
	bh=3sEOknswNiP8aYDjBNDzjw1cLBTbwvvivDfibrCdCM0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=js/NpuCLsaILLfOmX5CAEhT7jHdnaGXvhzySaBpdNjTx4/jWEkXDo7Yd1KK8Ncc7m
	 EvXITn96tHWau/DwcwXmy2WJfv+uDojnfefL0WpfDc5wHCLUT4JW1dgzQFflHtSB8k
	 QY95kXqtF4otZ3KGlBN/Dp6Dpj6pnWkCo9BbEOh9xpX9MuCbOIyJ4dqmtaQTUkt/c/
	 /nGOmXJw921WudT/2ZzNN+SOV+gVWtTCOoZBx2Ti1tD2XopC9c26Rq6s+nnygz/G0+
	 asjICDgmMa6Iu+7M8PySUVKqZiM1h3FculteNwN5MlRbZSJnlkKMrZPgEJo+pD+ZDn
	 OUMSlMFhqE/Bg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC4E582079;
	Thu, 11 Jun 2026 18:36:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B3983237
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 18:36:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B17CD403A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 18:36:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qJhh41piSjIH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2026 18:36:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C725A4006E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C725A4006E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C725A4006E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 18:36:20 +0000 (UTC)
X-CSE-ConnectionGUID: Guufo1kpQ/OJoa1uSzPMmA==
X-CSE-MsgGUID: kZZL7Ym9QRqe0oxjYM9hDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="93515410"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="93515410"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:36:19 -0700
X-CSE-ConnectionGUID: j9JzhBI6RNqet0B4HKki4Q==
X-CSE-MsgGUID: pH/qqf+SSza6a6Ki3RsD1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="251660461"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:36:19 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:36:18 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 11:36:18 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.15) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:36:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c726WOKRU6ilJuXFmnY2qnEX+p4JiHJG6CFTzzMtYxF2Y8bluJEwhHuV9Gd0IcI07z1hnF5UOK9gC+BJDhppgqF4EphAsWG1kjlCBwBUiheW3CgBaKRolvpmn46p2A7cKNWxq6ILarBM3/2f+MxuA3dTQBPllUluahzb+iBTPwzYSgHgT2m9VmAxhb9B6iwDrryNE+g9dxWywhwjomjNa6BVe3G2wNc4kuw7bmYoI8qu3bLyXmZ8DaZwZ6QmAO0weJHY3lmVLP/zpqll+OjxnFyDbkNQKgz1bRWYHDu628ADH9tSsEssxt2q+/Si1284Npg9PIEn/y3LXdZj7pPhYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3sEOknswNiP8aYDjBNDzjw1cLBTbwvvivDfibrCdCM0=;
 b=dNYfAKHTA6gA0osko6Lf4mf1o/ZUvPy5xI2Q7dz2xET54qZY6kkWWzZq+/jL+0CPHy4Sqfdc6OOxS1lljVm+fe8K735ZusWpprSbTBaQDZdWm2iQba7JwzXywRSDrXNapXZsEYH20I9bvtBAW1cqmJ5EkDxPnTDuyeEm8T7xUsVW0PFlxtPJ5UqCJqk4S6iAK9Coly8LASzyOgxuxL1C+wGpJsnuYj8EtP7KI0/M9N2DwS2Q2MJcXT/2Bb2PhKV9jlcpVdMlEyVEjf1XsOEp3160uN5Hogc16y8ruw5vpoLNHg2856X5NduPp4LSZEVGZPSkvE6NH31aQaL1wCd55w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by PH8PR11MB7046.namprd11.prod.outlook.com (2603:10b6:510:216::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Thu, 11 Jun
 2026 18:36:15 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.21.0092.011; Thu, 11 Jun 2026
 18:36:15 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Thread-Topic: [PATCH v14 net-next 03/13] dpll: fix stale iteration in
 dpll_pin_on_pin_unregister()
Thread-Index: AQHc9qxzOSWGh7NPvUubHfjHiXtPNrY5EVeAgAAM3xCAAFUdgIAAMk2AgAAHLwA=
Date: Thu, 11 Jun 2026 18:36:14 +0000
Message-ID: <IA1PR11MB6219B836E61D44198B0FB5AF921B2@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260607183045.1213735-1-grzegorz.nitka@intel.com>
 <20260607183045.1213735-4-grzegorz.nitka@intel.com>
 <5ad977af-9bbb-4376-b0a6-2b1867223145@redhat.com>
 <IA1PR11MB6219E71E2581AE3A4C91F870921B2@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20be8f49-4d85-430b-a651-c4aecd172a57@redhat.com>
 <20260611104109.34063873@kernel.org>
In-Reply-To: <20260611104109.34063873@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|PH8PR11MB7046:EE_
x-ms-office365-filtering-correlation-id: 13bcbad9-f402-4fdd-3387-08dec7e851aa
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|23010399003|38070700021|6133799003|18002099003|22082099003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: bCgyfaDnshI2LAeELoEp0tYyqN3hrGi4R92JoMvAgZLHedwztzCLv3vvZ1pMMqzyMEmmPBHZZynpQCKnZgirX2Sf1oYFwjJvps5xo+fjLk/T8vR/4E1EwqchfPomIkXj9pDPWeG+zoAfLr+WMd7d+RCdQzTjrGmDyGuvDlYsNbyZ/VuH5wJ9UEUYRdjrG2wRLtiCK+qpLaGPekfHwlKdJS49v2ycXgwx1ncFpF85z8quC0/VfbW9svO6nVVwVyFdkOBjXprZWXj6bbaIjdZgTvd7iGOc5TrjtKiRrs1pSlCHtefF5/VSSZRJf8s6fKdn0klEgECA3pgLUzbeuU8mPqrfEIeXtQ8od8G9rJ8mptQYs9l9SCKASg2mryRg09Lt8umSWhT6Ub8PS3+QkRtOGOEZFm7QWEgVsiaYkxjHeBC/ioLujuQSC/VBScOpxWMYmU7SBQxqsqU+vkFZpoiCL9ets3jt/+zZb46u+qc4rgeuoOdfIJ+Vee27ZLbX2syfbWVRC1psby9lS1t6JcKRMlwLJItf9l6VmlgrLpoD9fIPnn11SsN06un3VtpTtLGIhGw4zGWHTroqr3pbYIj5qyUtWJM9kuYhm0Nv6HbXXAnO90umlILVqILQTHLJMwwg/vhanf1zg7b5ltNl/4QQE8ZBzuP1+atGF2UnDSlApt+jiiJ1qB12aAbglO5NV08zz8u9B4gdKNsc8644YDeEbWNmb1s+yKR06fe7rzAkTzTuSNDvJM+C4i/x0yGCI3L/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(23010399003)(38070700021)(6133799003)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NVdFUmYybDlpVnUrOEdiK1ZkZ0NidXppRmFXd0tzdmdKUGhndURWQ3YrUkhx?=
 =?utf-8?B?dVRjYVdvZlRlckxNRHdIYjVza1p5a3JvZXJleWpOVjBrcHhkN1VGbnR5U1Fj?=
 =?utf-8?B?elpuQitkZ3gxMGV6cVduekgraFdmR1RwRGtNVUgvQUVvY0xFT3R2dXVtTSsx?=
 =?utf-8?B?OUV6dG8vMy81SklZUUxkdkt1YUh2c2g2TUxsNVRpcHJRdHJDMWhTanYxdXlQ?=
 =?utf-8?B?ZW80U2h0TDBiUjMvK2xidjVUY0hqSEw1RlE5SEZVb3hTZlloNDB3bWZTQTFB?=
 =?utf-8?B?QkFoZEJianJjNHVBOWl2WDl1RHc4a1NmenRGUlk0aXJmQTRyRzlCc3JKN3Bw?=
 =?utf-8?B?VGdPSUVpdGlWeUNRVThwZjNzem0vblI2NWU3cjB5cThBVTQ0K1RsTTNPaU1S?=
 =?utf-8?B?Wkh3STNmaDJrK0x4RUhYUEdGRUJ0bnRyQ0xBR0Zxd1ZsQkNjRjhpSUZWUXFH?=
 =?utf-8?B?THV4MG8zc1JxVVVMejFoYytMZzNkOVl2UDNob0VPK3Q2ekgyMVJFQldkdjJk?=
 =?utf-8?B?ZUIwUCtoa3Vvb1Ztbjl2ZHZLSStpb2ZhWmpoTkxvNm1KdVVWcXpSd29rbG1H?=
 =?utf-8?B?VzVrVzI1VWdzbUd4eDhoOElXNmdwRlI5cW5ML0VzdVcxNEFtT3BsZWJ0UnI5?=
 =?utf-8?B?eWY1aHJlMDA2WHY3MlhOUDhMc0EvMmZ0UGhiOVNwbTJiaXdYQlhENWhOZVI1?=
 =?utf-8?B?SU85cFR2L293VTJmNjdrSDhxbS9iUUozdmNJVm1sdWZxd1BhRGc1MGVqU3Q4?=
 =?utf-8?B?Mk5PQ1FsYTJLeFB3NHFmc3FUSThTNklnMnB2NGVJYWk1dTdVSmpkMWlLSThv?=
 =?utf-8?B?d3J0ckQxT0NwNHRsU2lPOTIxY0MyL3VJVWJGNzhvcjRObmZ0NHBQekFyRjVk?=
 =?utf-8?B?OHdQeDBoVDd1SWQ4TFNnV1dQQnNqSXd1Rm03aFZLamQ3bXh2NnpzUjlEUmwz?=
 =?utf-8?B?WkdKZnMxbkpkNzMvNWxUYnRkL3NmZlFyeGNwbTY1S2VuSGxYNFpzdHljdXZj?=
 =?utf-8?B?ck5nMVc2R1BYYnRYczlPcUFVRmF5Y0h5YW5vZjNtcEtoVTE5bkh2RkRrM0NV?=
 =?utf-8?B?YmNJYjV3enVJWkJxM1l6a2pWQmM2T2t3WFVnR2xOYXpHZjZVK0xrWFJRaHIx?=
 =?utf-8?B?bjdkR1RpK2tkQXBWUmNxUkk5ZncvVm9DTWx5eDBGbVUwQmZqWERsVzJ4TEM2?=
 =?utf-8?B?ZEtyK09SYlJhM1pZY1JFYnBkeGFzc081eC9tWkFPcDArdUQ2cEFRSFJjTmlC?=
 =?utf-8?B?clhjckhBWlBYT2ZGSlBnc2pIQnE1YlpGMW9vSElCaG4xcGpkdzA2SUFFSmlR?=
 =?utf-8?B?eTJxWnI1NWJ2T1laVVFKcmR6aTZPSDRZL1pBQWt0NzRVbDF0b3B3ZEVsa3FQ?=
 =?utf-8?B?ZGlUQ3NPY0V6OU1IdlY0TWhRZVNWRWRPbnJZUUZoMHRXZWdHK2xYblZyc2VM?=
 =?utf-8?B?WXFabDFsOGZXK2V5MVZncDB3d2RKMEoxVW5kVm5mdFRUZ2VIYXRCbVhvSFFI?=
 =?utf-8?B?bkJKOTdCN3E2N1FPOUNWc0pVL2RHM2k0azdBODY2bkN6a1l6OFRxYnlaZXlr?=
 =?utf-8?B?Z0hSbjZRZWlzbXJndHN3cVVlK2J0eWhQWW1JV24wL3FJam02VjVjWXBuUnZR?=
 =?utf-8?B?MG9VcTBaR25tTzVkMWxkTXcxQW5uMWJnYlJrSk9KcE5VRytUcHNiMDgwaTdL?=
 =?utf-8?B?VlNIUU5DakZIUEQ5UzBOYVV6OVF2UDdmaGMvcVJCdWhLUzZFZlIvRW01RHMv?=
 =?utf-8?B?cjg0Qkh0OWNYRTdFaWd3UVQ3NExwMFg5c0c2Yzh3bWtzaWlCaU5ySnRySGwv?=
 =?utf-8?B?NTVGSGM4a2pZOE1OMEdtclFaNlMyZTlDYnA3YmFBR0lTQ2dWTHJPM2RhcUxV?=
 =?utf-8?B?WjV4OWlBVFNNVzFGOFpQYjJSM3ZTYkZNNnIvemhiL3BMT1VmL21Keis5OEE2?=
 =?utf-8?B?Vko3OVREZWRIelg5bGhFR3lST2VJMTNFRjZLcCtzb0VkeTBhR1E5ZW5zcWNB?=
 =?utf-8?B?UVFMcFFvbnJncTJORURrakdWUkwvNmsxOURUaW1Pand5cHJRTVFxSE94NU5K?=
 =?utf-8?B?Q3JQdGFaRGxWMzVkQkYxS0FvaHZTdEd2aktLeE9qWVJ3Q0FYUWZvaElzYzZX?=
 =?utf-8?B?Z3U5anE2b0hMcDlJSytFRnl3bHBPdFo2aW1mRlV0Q2t3S21RMG1RYUFCdFBl?=
 =?utf-8?B?bVRXYjBWcmk0a0JUb0NkUm9VQVVNR3llSHRaczJrbC9seU5icnFXbVN2RE9n?=
 =?utf-8?B?c0dEMjhQMW5SWmkrMjFyanY2eUQvUUxUaUdnZmx0UmdlemRFaVRwSGU1UmFm?=
 =?utf-8?B?N1A3bU1SbWVDc1djNHBhYVJhNGRSd21PV2Z1UkxsV0U0UzlQYmhVUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lFeP34ShoZqXFnx/xjw9H/7L4mKuaJYfVkHpFAgnp9Kf78/wXBPDA+LdU8HUeJ+3k0DVS8aMp+r3MFNJ4v9BRXBKNLVPHqlgQLDntid5jWW7XOwU43ZIpK36GfzCTHRCw2k2bvrZlK7xFRkJX40G0qQQGHPzj7uFt3RseD7vNKPWsaWneWTVgkmh+doXNEOukw6iBH9E/wKO/G98z4pJpUrLtKIRj1bPS9jDO9q2yr397V7OFo3b/72qXgyDn6so8olgotnHcQojDyVnL+s1FlMnnqJSmYMkcqvOMrUQ2Q7Ty1pKKCyk0fM2sNYX1XGFEXvmD9Eovh6S4LykW0qnMg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13bcbad9-f402-4fdd-3387-08dec7e851aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 18:36:14.9166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CVxB09xicGl3rdYE+i/k4Saaq6niq+MbOZL6YFVrLm9HSuKj8RDjGMUAiLMVTZYanXkYHdkqtljL7WfrYBSxDKizauS2QYjsD/oFqbKmtPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7046
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781202981; x=1812738981;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3sEOknswNiP8aYDjBNDzjw1cLBTbwvvivDfibrCdCM0=;
 b=DEzNjTL5IC7IJYqmfrtn+kI6hbpAvqVcfbXD1lz2ejlPVpLaOD0OWqp2
 lrEOLZsDFvdm+EiL2XF0wDgOsshBdQJIIKD6MCjuE2u/Py4UeZkmlEY1U
 cGhtr1JtBDi5NCrVkEk3WpENk7SXMyQ0KqOL7IKp2r46M93LeV+ib2P1i
 xKYWAaH5JUd0AYhwuffY9uaYagDbErY3oUvtXZPk7nQ1qYEGUo3xpmDc9
 vPwqTVyHrvW9Hl6694D1NpAiKRSxBAOTuzgycWUuCTUw8t35T1yKvnqkw
 xpQBYpVEmbmEUS39Wr1ddvl9xIrvCzYFwwuUBvl8mgUb5oYIc/IWr1Yxb
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DEzNjTL5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v14 net-next 03/13] dpll: fix stale
 iteration in dpll_pin_on_pin_unregister()
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
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:pabeni@redhat.com,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,resnulli.us,google.com,vger.kernel.org,gmail.com,intel.com,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,davemloft.net];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CE0E9674779

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFrdWIgS2ljaW5za2kg
PGt1YmFAa2VybmVsLm9yZz4NCj4gU2VudDogVGh1cnNkYXksIEp1bmUgMTEsIDIwMjYgNzo0MSBQ
TQ0KPiBUbzogUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPg0KPiBDYzogTml0a2EsIEdy
emVnb3J6IDxncnplZ29yei5uaXRrYUBpbnRlbC5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3Jn
Ow0KPiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMu
b3N1b3NsLm9yZzsgT3JvcywgUGV0cg0KPiA8cG9yb3NAcmVkaGF0LmNvbT47IHJpY2hhcmRjb2No
cmFuQGdtYWlsLmNvbTsNCj4gYW5kcmV3K25ldGRldkBsdW5uLmNoOyBLaXRzemVsLCBQcnplbXlz
bGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgTmd1eWVuLCBBbnRob255IEwN
Cj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgUHJhdGhvc2guU2F0aXNoQG1pY3JvY2hp
cC5jb207IFZlY2VyYSwNCj4gSXZhbiA8aXZlY2VyYUByZWRoYXQuY29tPjsgamlyaUByZXNudWxs
aS51czsgS3ViYWxld3NraSwgQXJrYWRpdXN6DQo+IDxhcmthZGl1c3oua3ViYWxld3NraUBpbnRl
bC5jb20+OyB2YWRpbS5mZWRvcmVua29AbGludXguZGV2Ow0KPiBkb25hbGQuaHVudGVyQGdtYWls
LmNvbTsgaG9ybXNAa2VybmVsLm9yZzsgZGF2ZW1AZGF2ZW1sb2Z0Lm5ldDsNCj4gZWR1bWF6ZXRA
Z29vZ2xlLmNvbQ0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYxNCBuZXQtbmV4dCAwMy8xM10gZHBs
bDogZml4IHN0YWxlIGl0ZXJhdGlvbiBpbg0KPiBkcGxsX3Bpbl9vbl9waW5fdW5yZWdpc3Rlcigp
DQo+IA0KPiBPbiBUaHUsIDExIEp1biAyMDI2IDE2OjQxOjA3ICswMjAwIFBhb2xvIEFiZW5pIHdy
b3RlOg0KPiA+IEZpeGVzIHRhZyBjb3VsZCBiZSBzdHJpcHBlZCB3aGVuIGFwcGx5aW5nIHRoZSBw
YXRjaGVzIGFzIG5lZWRlZCwgYW5kIEkNCj4gPiB0aGluayB0aGF0IGNvdWxkIGJlIHByZWZlcmFi
bGUgdG8gYSByZXBvc3QganVzdCBmb3Igc3VjaCB0aGluZywgZ2l2ZW4NCj4gPiB0aGUgY3VycmVu
dCBQVyBsb2FkLi4uDQo+IA0KPiBUbyBiZSBjbGVhciB0aG8sIHRoaXMgc2VyaWVzIGhhcyBhbHJl
YWR5IGJlZW4gbWFya2VkIGFzIGNoYW5nZXMNCj4gcmVxdWVzdGVkLiBQcmVzdW1hYmx5IGJhc2Vk
IG9uIHRoZSBvdGhlciBjb21tZW50cz8NCg0KSGkgS3ViYSwgUGFvbG8NCg0KVG8gc3VtIHVwIC4u
Lg0KDQpGb3IgdjE0IHBhdGNoc2V0LCBJIGdvdCBvbmx5IGNvbW1lbnRzIGZyb20gQXJlayBhbmQg
UGFvbG8uDQpJbiBteSBvcGluaW9uLCBhZnRlciByZXRoaW5raW5nLCBBcmVrJ3MgY29uY2VybnMg
YXJlIG5vdCB2YWxpZCAoZXhwbGFpbmVkIGluDQp0aGUgcmVzcG9uc2VzKS4gTWF5YmUgSSBjb3Vs
ZCBzcXVhc2ggc29tZSBjaGFuZ2VzLCBidXQgdGhlIGZpbmFsIGNvZGUgd291bGQNCnJlbWFpbiB0
aGUgc2FtZSBhcyBmb3IgdjE0Lg0KDQpQYW9sbyByYWlzZWQgJ0ZpeGVzJyB0YWdzIHdoaWNoIEkg
YWRkZWQgYW5kIGNyaXRpY2FsIGRpdmlkZS1ieS16ZXJvIHBhbmljDQpSZWdhcmRpbmcgJ0ZpeGVz
JyB0YWcsIEl0IG1pZ2h0IGJlIG15IGZhdWx0IG9yIG1pc3VuZGVyc3RhbmRpbmcuDQpJIGNhbiBy
ZW1vdmUgdGhlbSBpZiB3ZSB3YW50IGFuZCByZS1zZW5kIHRoZSBzZXJpZXMuDQpSZWdhcmRpbmcg
ZGl2LWJ5LXplcm8gLSBzZWUgbXkgY29tbWVudHMgYWJvdXQgQUkgY29uY2VybiBsaXN0IGJlbG93
Lg0KDQpBbHNvLCB3aGF0IHdhcyByYWlzZWQgYnkgQUksIEkgdW5pbnRlbnRpb25hbGx5IGNoYW5n
ZWQgV0FSTl9PTiB0byBXQVJOX09OX09OQ0UNCmluIHBhdGNoIDIuIEknZCByZXN0b3JlIGl0IHRv
IFdBUk5fT04uDQoNCkJlbG93IGlzIG15IHN1bW1hcnkgb24gb3RoZXIgQUkgY29uY2VybnMgKHRh
a2UgYSBsb29rIGF0ICJwb3RlbnRpYWwgaXNzdWVzIiBzZWN0aW9uKS4NCkknbSBhd2FyZSB3ZSdy
ZSBhYm91dCB3aW5kb3cgY2xvc3VyZS4gSSdtIHBvbGlzaGluZyB0aGlzIHNlcmllcyBmb3IgYSBs
b25nIHRpbWUuDQpBIGxvdCB3YXMgZml4ZWQgYWxyZWFkeS4gSSdtIGFmcmFpZCBhZGRpbmcgYW5v
dGhlciBmaXhlcyB3aWxsIHRyaWdnZXIgYSBuZXcgb25lcyDwn5iKDQpQbGVhc2UsIGxldCBtZSBr
bm93IGlmIHdlIHN0aWxsIGhhdmUgdGltZSBmb3IgYW5vdGhlciB2ZXJzaW9uLiBJIGNhbiBkbyB0
aGF0IGlmIHlvdSB0aGluaw0KdGhlIHJlbWFpbmluZyBpc3N1ZXMgYXJlICdtdXN0IGhhdmUnIGZp
eC4gSW4gbXkgc3ViamVjdGl2ZSBvcGluaW9uIC0gaXQncyBub3QuDQoNClBvdGVudGlhbCBpc3N1
ZXM6DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0NClBhdGNoIDExOg0KLSBody0+bGFuZV9udW0gPCAw
DQogIEl0J3MgYSBmYXRhbCBlcnJvciBzY2VuYXJpby4gUFRQIG1vZHVsZSBhbHJlYWR5IHJldHVy
bmluZyBhbiBlcnJvciBpbiBzdWNoIGNhc2UsDQogIHNvIGl0J3MgdmlzaWJsZSB0byB0aGUgdXNl
ciBhbnl3YXkuDQogIEkgY291bGQgYWRkIHNvbWV0aGluZyBzaW1pbGFyIHRvIGRwbGwgbW9kdWxl
IGluaXRpYWxpemF0aW9uLiBCdXQgZnJvbSBteSBwZXJzcGVjdGl2ZQ0KICBpdCdzIG1vcmUgYSBr
aW5kIG9mIHZlcnkgZGVmZW5zaXZlIGFwcHJvYWNoLg0KDQpQYXRjaCAxMw0KLSBwb3RlbnRpYWwg
c29mdHdhcmUgc3RhdGUgZGVzeW5jaHJvbml6ZWQgZnJvbSB0aGUgaGFyZHdhcmU6DQogIFdvcnRo
IHRvIGZpeCBidXQgaW4gdGhlIG5leHQgcmVsZWFzZSAtIHRoaXMgaXMgaW4gbXkgb3BpbmlvbiBh
IGtpbmQgb2YNCiAgYSBjb3JuZXIvc29waGlzdGljYXRlZCBzY2VuYXJpby4NCg0KLSBieXBhc3Mg
dGhlIG5ldyBpY2VfdHhjbGtfdXBkYXRlX2FuZF9ub3RpZnkgd2hlbiBwZi0+cHRwLnN0YXRlICE9
IElDRV9QVFBfUkVBRFkNCiAgQWdhaW4sIHdvcnRoIHRvIGZpeCBpbiB0aGUgbmV4dCByZWxlYXNl
IChmYXRhbCBQVFAgZXJyb3IgY2FzZSkNCg0KLSB3b3JrZXIgdGhyZWFkIGlzIHByZWVtcHRlZCBy
aWdodCBiZWZvcmUgY2xlYXJpbmcgdHhjbGtfc3dpdGNoX3JlcXVlc3RlZA0KICBSYWNlIGlzIHJl
YWwgYnV0IHByYWN0aWNhbGx5IHVucmVhY2hhYmxlLiBHb29kIHRvIGhhdmUgaXQgZml4ZWQgaW4g
dGhlIG5leHQgcmVsZWFzZQ0KICANCk5vdCBhbiBpc3N1ZSAoZmFsc2UtcG9zaXRpdmUpOg0KLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KUGF0Y2ggMTE6DQotIHBvdGVudGlh
bCBkaXZpZGUgYnkgemVybyBwYW5pYyAoQ1JJVElDQUwpDQogIFRoYXQgd2FzIGZpeGVkIGluIHYx
NC4gSW4gY2FzZSBQVFAgaGFyZHdhcmUgaW5pdGlsaXphdGlvbiBpcyBmYWlsZWQsIERQTEwNCiAg
cmUtaW5pdGlhbGl6ZXMgbW9kdWxlIHdpbGwgc2V0IGh3LT5wdHAucG9ydHNfcGVyX3BoeSBvbiBp
dHMgb3duLg0KDQotIGVycm9yIHBhdGggaW4gaWNlX2RwbGxfaW5pdF9lODI1IGFuZCB0aGUgcmlz
ayBvZiBkb3VibGUtZGVzdHJveSB0aGUgbXV0ZXgNCiAgd2hlbiBpY2VfZHBsbF9kZWluaXQoKQ0K
ICBzdGlsbCBndWFyZGVkIGJ5IElDRV9GTEFHX0RQTEwgZmxhZw0KDQpQYXRjaCAxMw0KLSBhdHRl
bXB0IHRvIGxvY2sgY3RybF9wZi0+ZHBsbHMubG9jayB3aGVuIGNvbnRyb2xsaW5nIFBGJ3MgRFBM
TCBzdWJzeXRlbSBpcyBub3QNCiAgaW5pdGlsaXplZA0KICBUaGlzIGNvbmRpdGlvbiBpcyBjaGVj
a2VkIHdoZW4gdHJpZ2dlcmluZyB0eC1jbGsgY2hhbmdlIGFuZCBhcHByb3ByaWF0ZSBlcnJvcg0K
ICBpcyByZXR1cm5lZC4NCg0KVGhlc2UgaXMgcHJlLWV4aXN0aW5nIGlzc3VlLCBvdXQgb2YgdGhl
IHNjb3BlIG9mIHRoaXMgc2VyaWVzIGluIG15IG9waW5pb24NCi0gcGF0Y2ggMTI6IHNpbGVudGx5
IGlnbm9yaW5nIG5vbi1FTU9ERSBmaXJtd2FyZSBlcnJvcnMuDQoNClJlZ2FyZHMNCg0KR3J6ZWdv
cnoNCg==
