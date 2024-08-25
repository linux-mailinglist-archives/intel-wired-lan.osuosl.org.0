Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9586095E0BC
	for <lists+intel-wired-lan@lfdr.de>; Sun, 25 Aug 2024 04:25:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9663360614;
	Sun, 25 Aug 2024 02:25:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3cZi51l3N_VN; Sun, 25 Aug 2024 02:25:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EC0160617
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724552737;
	bh=2VcyR0MZQniPFrbTw/hceAEBVV+FVEDMGF6kaA0mFao=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mIyRcFOBsv4Dg1b2YqE+cjiTiD+SzwgXexx3PP+uRb4voUR6e7FpKyPse9dyW2Gh8
	 40kOWQHWbjMScpzT7F7rN0PzrIq9nLsA/ZK8g5wok8ha8Y+wt4RUH/m7K8RNmkIh+u
	 C+nFCk98F5QP3fhRsgUAodMklesJsmCDuSxNWr2kkoBbssw+g8AEdMefdoQzSgVPvl
	 qqVQSQIOe6HIC3PjXIAB4KOvXytJwnLBi72qylgfKtwY0QyxuHVoTF+c1qdQjWmumW
	 LL3u2MqLVH+/vryN1gRvUwD1GdEdcb2KCvh0nYXPWWf2Zd9QIiMaV/04DqYxnwvEvZ
	 hm+o/PnZJlznA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EC0160617;
	Sun, 25 Aug 2024 02:25:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3EBD11BF308
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Aug 2024 02:25:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 297A460611
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Aug 2024 02:25:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UhGYR59Dy9T6 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 25 Aug 2024 02:25:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E203A60602
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E203A60602
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E203A60602
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Aug 2024 02:25:33 +0000 (UTC)
X-CSE-ConnectionGUID: UBy7ao7WSIuWpeNAkK3KoQ==
X-CSE-MsgGUID: 7Wv6civTQmqNFhQLWpitBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11173"; a="48388522"
X-IronPort-AV: E=Sophos;i="6.10,174,1719903600"; d="scan'208";a="48388522"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2024 19:25:33 -0700
X-CSE-ConnectionGUID: 47D9ubVyRAiybh0mA77/pA==
X-CSE-MsgGUID: u14kfU5XQyajLgCmiU6oFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,174,1719903600"; d="scan'208";a="85363110"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Aug 2024 19:25:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 24 Aug 2024 19:25:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 24 Aug 2024 19:25:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 24 Aug 2024 19:25:32 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 24 Aug 2024 19:25:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pStRWUjDRjRtI+aPoWT5DAFe2TkfgL7ry7TMHxwkYqkFzJXtdxBQt2EwRYQu8vtXsqHwANCFKUM+8exTifu0vMSu1pBLM/RyyEtRY6zXTRQUaC+n/glGTi11qXWMeKjro4vAgzDBE4GC1o4QusKmzgjgSbgTGDKSmAwEajc9HhIYzloYC2g7OgqCQmtqv5fAfbVuz0sQ5SARHoeQ6G4rKCE2S/P+sSO41zFbRRepN8yui4AUaf6NLQBpInxlqq3C0/m8/UwfsLyePR1WDwg3j5JuU+oqKjWQVeLY83eTfw5Z/O9DgdI9gZj+NSKhGmn/W6n/UQnrta33qElph5Rj2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2VcyR0MZQniPFrbTw/hceAEBVV+FVEDMGF6kaA0mFao=;
 b=jTz4GKWpwUK0vtD4pswTh4AGEjH0WMlGPbLto5oeSfUAkgmhouEG7jiyRd8p11pKUz+uIGgZoAVXNMEewgCP1Qu/I7xnmN78vn7PzJaCrqSyewDxDhZHH3joFWPsHK2/7xIHad8QQgsbU2YyG6KqPVfFvToL6MpOuF2dYenw4rbHw7+l2bn/ZE2XBDu+iTVOyhLxiTBu0bMoS+dGT/ZJDj0paPQefTqTNbcs+ixYV94qSzCKJyPJKyo4iQv9nx6H38Yrzcc9oYWtDCSmhclYG5AauiBH33sZ5DksDHtdJ5cdRwPLG2S9D/5JLpBsgB9bVIJih6C4E4bujfOWdgaMUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by MW3PR11MB4729.namprd11.prod.outlook.com (2603:10b6:303:5d::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.23; Sun, 25 Aug
 2024 02:25:24 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7897.021; Sun, 25 Aug 2024
 02:25:24 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v5] ice: Add
 netif_device_attach/detach into PF reset flow
Thread-Index: AQHa8+Q+ATTqL3k0pESORKmrQgYrs7I3Q2DQ
Date: Sun, 25 Aug 2024 02:25:24 +0000
Message-ID: <CYYPR11MB84297526A35B62111A98FB75BD8A2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240821160640.115552-1-dawid.osuchowski@linux.intel.com>
In-Reply-To: <20240821160640.115552-1-dawid.osuchowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|MW3PR11MB4729:EE_
x-ms-office365-filtering-correlation-id: 96855717-75e2-4ae3-ef2c-08dcc4ad2d0a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?sSrFLpQh1tKNARmrKTIiot8AlVZ7gBLCpvtUaf3Tt0FR5aD5zKtDSdi7Y6mQ?=
 =?us-ascii?Q?HMsNzSjpVicZ2TMMIr6il30eu5avb15Ugx3ilwhzPM+OV1TI07gBCAxN1mqg?=
 =?us-ascii?Q?3m4dClmcdGWQotiDA+CKfoUu40yajLGWlU81NBTteIaiR8w9KSv+462wK4nS?=
 =?us-ascii?Q?y5twrMmSsieN6/wLoId75iaWC62jU6hfuswe1PqcZfbEksHqXwA1zBC1Ny8p?=
 =?us-ascii?Q?aaHNrGrfb1FyMRpQwysRahj0B3C4hVtqeaa3XWkg242RUQKoxH7IlQqedkxm?=
 =?us-ascii?Q?bE10TvFd9x6fUNlJcZnO8/7wjl8B3wQHuuxP3yQUpniuSELKn9w/ouhcw9HH?=
 =?us-ascii?Q?yAxg3cQuiLkQCbk+Pb7wnm41m6IcT//5lKCbKpbW11q8OCEeeg91CWGrZ5QB?=
 =?us-ascii?Q?Kq2uguvBc7RoV2HcjCV/jbeUSNTpQrv0e0J9pCydeGb9gIr1tLBUrSnOw3Mg?=
 =?us-ascii?Q?aMv38Jx7Q31ZQHN+Gib6iRf57UoSSU+Efbo8av5GSqhDCe23fQgRscpOHVu/?=
 =?us-ascii?Q?5p/aoyuKoPXAjQ+zw7yWTQ4IMb+Ao4GSVlqgqqdWXjuZj90tZc/nUdBI5JaG?=
 =?us-ascii?Q?kBXInXbCS0X0M9yEaehVqWSyMfUhrRf5Lg+J2QF5lc8P/MCNmB8c9bbrB3ym?=
 =?us-ascii?Q?0uSQIk4nx/g+ar5kVL2f40aoW8ypoh0e4Xw8QppWyLrydnFzX62oti2n4Oyq?=
 =?us-ascii?Q?hOfsIYxeByo75Gqdg8Ir9fRtkJ8hHE4Jk0/Ku+R7XHnxEqOi0UuCqXiKg2B5?=
 =?us-ascii?Q?p5dV4eSZrjKcF2NHR4wtMk9j0bQXINusyvt8Me+dy1BieT//3h/FTJdM2OG1?=
 =?us-ascii?Q?3cnb+9gcTIwN9x+DloRK6XJyNbmyJHW17QNUi9qxIfTMCGGS/+dPtzvMXb1m?=
 =?us-ascii?Q?xrC42aEGxOQBw0vwglLzc+sakUipVuVL2bb1atC2FJTvPKt1j1GxxBKpF2H+?=
 =?us-ascii?Q?im6SfzmYrZl2oycrRT5VS7k5+W6vEJxU4k/7DT2b8gqGZ5sJ3VGF3ZBQA9uC?=
 =?us-ascii?Q?PWwUzXnSqagmfUstX3m9vJQUcafNTVpUVouwYGzXi92eeWm/BhvS6+ZH171A?=
 =?us-ascii?Q?hQCMZ0ai5gH2fL3TNMK8pyBWxxYYVz5x1wMXc2+/DfkPys6Wt5UvZqixF6PU?=
 =?us-ascii?Q?HBgkkS1Z8wVHcLoeSggVGAMdBY3QOBwO+wfxOdpu14D7ZbEZZRuKeNqy3DWt?=
 =?us-ascii?Q?xzqrTD4Yi4tL32WT4vJdVuaPzX0ZfA3/xeKggEQJ481FD9f50ossTCSHeI8i?=
 =?us-ascii?Q?KuYW8OFAdovaz16R5sEynyY7hxcMvktM/hi3YB4yLDO0ZTRNk8grAteDjIrG?=
 =?us-ascii?Q?E3idcD9klUQ87wj+xfkhi1qY6yfMmgoyAPEph4fBpP/xgITmZW1Zp9JUo0vd?=
 =?us-ascii?Q?BaAKaZ8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MtRMDi1/rEcnHAZlXhqczu5eIR+q8+85gyvh1Ts7VdrTbMM6Hugxi+mhJOIa?=
 =?us-ascii?Q?KJQ7CSztnRQwfCAA+Qwz99LXChoDsL71rhVCx/wik7obYOiTMVAHmAOWX2BH?=
 =?us-ascii?Q?ZJEtE2pZD3wRfjDdlvyH2U136Tc3g+M7guGyBx7E8smVYUnR6H4iNcsEc3Bg?=
 =?us-ascii?Q?JRnvicj0CVr3yjEhRARfoXfAsnogJ+Y5G1ARTI/dVrZKXEEPCVHOxxb0opUG?=
 =?us-ascii?Q?emL5WMq7vL1RIMAPZEzyZBR8yAr4tB36T4LCgK8ZmUe5BA/fBRfaNPDeMw2n?=
 =?us-ascii?Q?CvsPaGOQDkpW+h75JtydO94lffKQaCK+P44dlajv3JmXgrusVwCUMwusCeuq?=
 =?us-ascii?Q?fxIldkbS4MqCtrJ3MZlreVpgVng7D6kiYbF4TR1NT1PUu26emFTJtAqLBLju?=
 =?us-ascii?Q?ETMEQMk3gopVLURlB4QkMzoJNwaglnqG9DWNknTHWBsztTM7OnXhEjcrrdWJ?=
 =?us-ascii?Q?z2OtnJJCjOSkOyxMFEjkcRXWsaUlxo+ubNPcAucv4dnRFoNVGVQMNdVpIUc9?=
 =?us-ascii?Q?LZSc2iQoa73AUHK9mJLS/TGIeGCyZwEboh7Eb6ZdcUVOPB98MAqdPcKq89Z1?=
 =?us-ascii?Q?HgbkpgXojZEaRlzF+l9BFhI1CrEJOf58gZ/wkLAk7d0gSoIWkEra47HpF+xn?=
 =?us-ascii?Q?m71uT0AJ9NXXnMOScE/sseYvVwqqe/FuvIHZYZxt19EHfAFZ+VH9tk6r6FFN?=
 =?us-ascii?Q?PCVE9PHN4pZY7yUeE6kIkgb3Jl2t4SAHiqD5wYvhagRwbiCgWR6ZHhx3+b+s?=
 =?us-ascii?Q?0AZdrCtCfbqs1wNz6TtIq7b7sE7uJgKY4b2tAZgTbUxBaTAXNrG12+81zYKi?=
 =?us-ascii?Q?xbON1FCTSwOI7bdNWqmOe2MzjSF4FIVJiykZEdy6yLazxqc/gq1cks2eLSUk?=
 =?us-ascii?Q?uFVx7wmIs4nqJPiTmXUkRKkVHAYnKRyyLoHSWqFDRGUkpbEAc1NeLDS5en/s?=
 =?us-ascii?Q?o6D+2oigELBiFwAw8nZIbDQOIc9t/9JH9SUUHIQkOXrWKGFRiHxAqh8PokN0?=
 =?us-ascii?Q?vJU6CbfAwXyQ2SXcmwc/beNDatDXGP8mI13FnyFr8XlZkiDzL+OKxCicKylf?=
 =?us-ascii?Q?l7bUVrYu4cMLZ/1ziq+QN+TENWYhqK5TOibpL59O5dbe0rNozhYJxNY7zfVM?=
 =?us-ascii?Q?p1JpadMHWvD1BnG4/JpUizaO/spQQsFFehA41G5UHYNNZ2Ko3VwIAujKRRI8?=
 =?us-ascii?Q?KE5b3T4b06hkCLrapM2jJVofDyCXA9HkC8wyzImok2XG+eqDFk4cxhnrm6/L?=
 =?us-ascii?Q?2Sd/fUqyDReI0yGdXhEOsXSrtxOXr2XFa6hoNfqYT8iBH3UNsULZQue6qNwB?=
 =?us-ascii?Q?NAdBHTF7sA/AoZtd8xOHJR6DsIgG9vk9s7NOwkDltnlymSEZZ2ntXQGPQoIo?=
 =?us-ascii?Q?ZChqwrN62Rc1z7C8kbzWKydXiwP0XN2neK5OoR0aZQ4DY+XEUgWLAILTwQhM?=
 =?us-ascii?Q?3ULkRSVdg0fwmrNO1hoQBlBovPlPclrioF4qfP+V2WKD9JyXsAyg24sZxw1v?=
 =?us-ascii?Q?8nfS3zyqlVSFI6jgyt1j4/657RFZSAMcoLpEBwZbU4Azjd+o5c1H9C2f1wZJ?=
 =?us-ascii?Q?DOp5Yjj7yWO//dqm3JWHwtGo3jaGsxqH1xk6FFoIo8U+wF8rbsfe9bv9/p67?=
 =?us-ascii?Q?H/JXMyhBCZk3nO4zt3xciHY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96855717-75e2-4ae3-ef2c-08dcc4ad2d0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2024 02:25:24.3236 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ci4tqhccTHeAgEuXu9PPZL4OGM+Ml9iILbFxMVOf/jTfvMmgoe+l7hUExDDSf44RWipjpk9hTPsLUi10Em6L/0zo3CwH5Jdtw9fA9rIfrHIntpd5E5q7JLL4hsiGOkPy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4729
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724552734; x=1756088734;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KZhzOW/8ESMxEhd9qu1NytYqL94fQGSIqGJh/A+fzTA=;
 b=kdimtKUqIxM7uGDLbIkguz0d6k1XP41xd+hXCRR06+j73JrqxRZDVszY
 M+krT0LJNLMaXCRqmP1TBJuw4lDJXAtgv9kCu3PTJQeQzkavg/+kigG8/
 JudN9dUKxRtAFP0zeP3m0ycUBP7Lz9d+hDdVgjeaA/WB8jw5WS+1sRjQF
 +PfKXxhxwBFY2nDYGUg/gq4DZCquYJVbVfVdIM/splNoi65UWZ1juDofF
 OWPkelajwcchdxQDHb1KS+7yEuk8LjVXOTxmDWeI3h19DiDB0cfeblyX3
 WJegRnmCHnIoJOsPXKK+EHL1Yq/h5nQx7kvcBUFeuqM+9JN2GrBs7BMfF
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kdimtKUq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] ice: Add
 netif_device_attach/detach into PF reset flow
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kalesh-anakkur.purayil@broadcom.com" <kalesh-anakkur.purayil@broadcom.com>,
 Jakub Kicinski <kuba@kernel.org>, "Bagnucki, Igor" <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> ----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of D=
awid Osuchowski
> Sent: Wednesday, August 21, 2024 9:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Zaremba, Larysa <=
larysa.zaremba@intel.com>; netdev@vger.kernel.org; kalesh-anakkur.purayil@b=
roadcom.com; Bagnucki, Igor <igor.bagnucki@intel.com>; Jakub Kicinski <kuba=
@kernel.org>; Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v5] ice: Add netif_device_attac=
h/detach into PF reset flow
>
> Ethtool callbacks can be executed while reset is in progress and try to a=
ccess deleted resources, e.g. getting coalesce settings can result in a NUL=
L pointer dereference seen below.
>
> Reproduction steps:
> Once the driver is fully initialized, trigger reset:
>	# echo 1 > /sys/class/net/<interface>/device/reset
> when reset is in progress try to get coalesce settings using ethtool:
>	# ethtool -c <interface>
>
> BUG: kernel NULL pointer dereference, address: 0000000000000020 PGD 0 P4D=
 0
> Oops: Oops: 0000 [#1] PREEMPT SMP PTI
> CPU: 11 PID: 19713 Comm: ethtool Tainted: G S                 6.10.0-rc7+=
 #7
> RIP: 0010:ice_get_q_coalesce+0x2e/0xa0 [ice]
> RSP: 0018:ffffbab1e9bcf6a8 EFLAGS: 00010206
> RAX: 000000000000000c RBX: ffff94512305b028 RCX: 0000000000000000
> RDX: 0000000000000000 RSI: ffff9451c3f2e588 RDI: ffff9451c3f2e588
> RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
> R10: ffff9451c3f2e580 R11: 000000000000001f R12: ffff945121fa9000
> R13: ffffbab1e9bcf760 R14: 0000000000000013 R15: ffffffff9e65dd40
> FS:  00007faee5fbe740(0000) GS:ffff94546fd80000(0000) knlGS:0000000000000=
000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000000020 CR3: 0000000106c2e005 CR4: 00000000001706f0 Call Tr=
ace:
> <TASK>
> ice_get_coalesce+0x17/0x30 [ice]
> coalesce_prepare_data+0x61/0x80
> ethnl_default_doit+0xde/0x340
> genl_family_rcv_msg_doit+0xf2/0x150
> genl_rcv_msg+0x1b3/0x2c0
> netlink_rcv_skb+0x5b/0x110
> genl_rcv+0x28/0x40
> netlink_unicast+0x19c/0x290
> netlink_sendmsg+0x222/0x490
> __sys_sendto+0x1df/0x1f0
> __x64_sys_sendto+0x24/0x30
> do_syscall_64+0x82/0x160
> entry_SYSCALL_64_after_hwframe+0x76/0x7e
> RIP: 0033:0x7faee60d8e27
>
> Calling netif_device_detach() before reset makes the net core not call th=
e driver when ethtool command is issued, the attempt to execute an ethtool =
command during reset will result in the following message:
>
>    netlink error: No such device
>
> instead of NULL pointer dereference. Once reset is done and
> ice_rebuild() is executing, the netif_device_attach() is called to allow =
for ethtool operations to occur again in a safe manner.
>
> Fixes: fcea6f3da546 ("ice: Add stats and ethtool support")
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> ---
> Changes since v1:
> * Changed Fixes tag to point to another commit
> * Minified the stacktrace
>
> Changes since v2:
> * Moved netif_device_attach() directly into ice_rebuild() and perform it
>   only on main vsi
>
> Changes since v3:
> * Style changes requested by Przemek Kitszel
>
> Changes since v4:
> * Applied reverse xmas tree rule to declaration of ice_vsi *vsi variable
>
> Suggestion from Kuba: https://lore.kernel.org/netdev/20240610194756.5be5b=
e90@kernel.org/
> Previous attempt (dropped because it introduced regression with link up):=
 https://lore.kernel.org/netdev/20240722122839.51342-1-dawid.osuchowski@lin=
ux.intel.com/
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

