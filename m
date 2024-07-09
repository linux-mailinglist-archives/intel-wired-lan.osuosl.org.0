Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2331C92B131
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2024 09:34:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AACDD40E72;
	Tue,  9 Jul 2024 07:34:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id idE-Ny6Yacpu; Tue,  9 Jul 2024 07:34:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9BC040E7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720510488;
	bh=nOXVYbQwwLI7lK2AHuxKgaaFWoGl9VhnTTwMd5e6jP4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CDIbHOHDP4bcU1Rh4JmOkuGAGwT4MilqRExqTrb6pkbpbDcbBN0oW9z+582EgZBCv
	 4rTSMMiO+/tY3XHLwWcEY30pYreayHFyexVIFeGNSgeSUd828ACoDsmZfQWuDJ50b3
	 uoesW6Y9OsvORPRTKcmtqBiD7n5OAZALmvBRpApQ7CbtZLN/HRn0DHVYNMF2ZsGKQa
	 TpVjx8oUFqi+EevT8HY5xR0LshPfkV/wdAzNW5LsuYBSD3qGNwJf1f76MvyPZEUL3d
	 0HYIOmVjuN4kbsEsWlNJpvW+nEwIgORJEo9OLVLcbzcJgdI7Q1cH9Jit5TmD8bktai
	 NvMC5jy68Taqg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B9BC040E7B;
	Tue,  9 Jul 2024 07:34:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 199E71BF86C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:34:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 04DE88126A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:34:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d1LIG4dKqCSk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2024 07:34:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4098781264
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4098781264
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4098781264
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:34:46 +0000 (UTC)
X-CSE-ConnectionGUID: uauHdFNiSSWVNGnz/lPyuA==
X-CSE-MsgGUID: HsBQSEeNTzCI5IjsNN/94w==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="17616450"
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="17616450"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 00:34:45 -0700
X-CSE-ConnectionGUID: d/R3KIZiSRGNHz2Z4T4Iiw==
X-CSE-MsgGUID: 7Hv9139sQtaZq/If3OSi4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="47549341"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 00:34:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 00:34:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 00:34:44 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 00:34:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IeqHPcRRpBy4j0OzCYQ0wj3LjUbu/wjpzqGgekt/K+AHgzr+1k3RrKqxSo/KLpYCVGrZJxUvI59eZ5p1X7X4rVo8go0/6TnYcgdE87fVB8rZS+smg6tn5KjiU1D6m1ZvZsfwqDipI2DCihdkwf1rsL9nu2SpRf53pP+SQZ7Jle6zOw22qbeSke5YhHvAtgkX3co2PnOXYlgboJ4oIKCdL20Z7GRreiOzEzfEIIcFxTTHCKnAitVw7T607ox5S5jNIx3BKmGgsYUkBSOwVY0lxbG5CnbBc9aQMzX3IOsGxjJErtXkpxyfLp8zqk9gYdWARPzkheKdWJXnvtF1e9O0bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nOXVYbQwwLI7lK2AHuxKgaaFWoGl9VhnTTwMd5e6jP4=;
 b=Hnri3A2eQaD2H782OJIPFy1qU+HbMomtF7dTakSH0af2ZWHNa6col0IlAGLPi2XOPKK8dWXgKY5+jYlna85PKY25Db9dDkesoCPIINTP+knK42ARXV8jUgbCBQStwgzm72SPSVyoGuJpC1UVzEcascnvcvYrdTsxVhUsRiEPxPu2yug1sGLWh7bq12m85PvTcZAr8UXmWX3HLuvsqpQfvNzrSWP9TpJqJ47NmskBfsfX1In8ND72CK8Ds+s57PyWj0IcRnpt3Zo7Nl4NcbIfDSbub9mBCXh8BY0E9AzEb7Dg79zgWePj9ZVNCmjxaS0iZI/t/7cEA0PkgdNwTmtJlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by CY8PR11MB7108.namprd11.prod.outlook.com (2603:10b6:930:50::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.34; Tue, 9 Jul
 2024 07:34:42 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%5]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 07:34:42 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 6/7] ice: Remove unused
 members from switch API
Thread-Index: AQHayKIlk+xwOizvi0+fH12aIbxIoLHuE5fQ
Date: Tue, 9 Jul 2024 07:34:42 +0000
Message-ID: <PH0PR11MB50136ECF706D7609E5E962AD96DB2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240627145547.32621-1-marcin.szycik@linux.intel.com>
 <20240627145547.32621-7-marcin.szycik@linux.intel.com>
In-Reply-To: <20240627145547.32621-7-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|CY8PR11MB7108:EE_
x-ms-office365-filtering-correlation-id: a0ebc1cd-ccb0-48a4-72bc-08dc9fe9993c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?cHfQPzueW+m9dSLNZMMMJuXmuuDkjWrgR7t3zz50v5l7uRzLPH84Of8T39Es?=
 =?us-ascii?Q?iDUwkSySJI0i6dc+9RU6MFhGWMiBd9mTBj5AReP1M1aFM5EAkVTFKvFSxQyw?=
 =?us-ascii?Q?3RYM3kUodxU1eys2IQzmcNrS766+pR7/9rDxIcJmW9QbzBC+bevP2n/TeHmX?=
 =?us-ascii?Q?sVaOCZlMzI4N+PF8zSdhN7DBnbSi2ph98dEJmWKRwNkoANPagziOhl3IDqyb?=
 =?us-ascii?Q?UecMqVU9ULoX4vBp2+mlDwlV3SOY+RHvGgX3JEVrZ17oWoqt2mvTNxEqe/oD?=
 =?us-ascii?Q?N9NCoCP4bSMgfCCetfX89tInwqjv2niwmVfwMDHoOc6dyGEvMuUvAbTcZQpf?=
 =?us-ascii?Q?VrlhmLf08lRHzkWe2qSm1UxYFl1OjzX2cq0TLm0pdyK3FvG4J/tpct3rEDCy?=
 =?us-ascii?Q?hTPsrYnfPpLKmBq/MHEcpoXfbpr24nD/dhHAb+5R7oAutftexjvdZaGvQZ5L?=
 =?us-ascii?Q?sQHrZ4N3dOVZr3ixVd6+bw/f+Lk4bHoqbpKyp0EL1COhEQRvfw/FvmGXyE/A?=
 =?us-ascii?Q?8aqgZoaXjDiBOQLpOREoIjC6Vzdh7OIBb5tFB7fGGyxLrgbOW5q8DokkcvmG?=
 =?us-ascii?Q?YYHnyRz7Xs30k+Bj2ZKgMo/uRGlR1B1mkqS39fZ2mVL3BZnDX74qHb2I5wtu?=
 =?us-ascii?Q?whKXVBcrVpWFgiSWO4lfBmevkE+k60yTULAzSrLjsPKYuzXLSMEu/+xbXFRW?=
 =?us-ascii?Q?STLO8MtQ9hnAeFXpmJlOug56+RekE12R/7RKVq2oaOXh+nl6nzuDcZiH0CUJ?=
 =?us-ascii?Q?iRpawLFE64KWrlrz0A7xxqBvyqdUAVr7W0QG/O8QhyML+V6wp1vo/+mi99OP?=
 =?us-ascii?Q?65xxZgPZ9mSFp6qstiorwazd0XWdx4fr6nmdTt9TvER24gagSV1VsDIwA7SM?=
 =?us-ascii?Q?HkF1Z5SOQ1Xj2NTauNg9Gtf+9QaxZzGNqu3oF5IC35kxVDhY19t9rqk7H9fD?=
 =?us-ascii?Q?ZG7HZhQV1Lp7vrsZ+0iUZP5aXiZ70LUQ3grtz34borcPHH4Yzw1n3kRzYLhr?=
 =?us-ascii?Q?PtuzS4BbTk3QXCcRcBxCKBE/zPIeiR07XeDWrSntOa/B0DOimqHy9iDSAds2?=
 =?us-ascii?Q?qCQkNGyJ1rjwkUfuarlgycQr4Sc3joXWJ7e1FLBGnYg+hUPGEVHVhCgT5x4q?=
 =?us-ascii?Q?YOrtEVa2P806quv54OXSf/P8W3S62wjjbApTVx4k0ekOopGnfCMooU0V2IYN?=
 =?us-ascii?Q?jlXGPh7lfGhcPfFP+SZm7mjZGg7mBoDtqbJcX9aOKpQUGZzWmpur8lfYshDv?=
 =?us-ascii?Q?AZdOOyB0ybaIDC3s55t2/SJabnuBtrRy3jCQzzJPYgSpYMZDRddcTGn2gzke?=
 =?us-ascii?Q?YhEfkL2IslNYUvMfOwN8OlOpAXjQR3NfWt8qXYS9OLnqSAEU4RRnv3Ex4CtQ?=
 =?us-ascii?Q?G2u+/WWUZN9ffq5iT73gmC+aDvflSAi9qt8vurAXvfRERRuZeg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Jpt/P7TPwvvUgKbnEDTogKPV/3PzEwlODIECJ5gnvvtDgHgNsoPn963DE1si?=
 =?us-ascii?Q?EusUAKZVrlPE8UZVMNARKawrkKnrHRlwYkECb6tytZh1GbGTFqTzoeMsgaxT?=
 =?us-ascii?Q?35j4VD3xqlrRP4HGoFtKkMvapb9k6NSthDkF/pqqTyngkRa5UoQOlsnajzsy?=
 =?us-ascii?Q?3BMXLgMW8LYyMjNJ6i0I7qDsT/oQF9Bx6SQT2YXkoy06AuhDhcmXXzJHodPh?=
 =?us-ascii?Q?D5Zdi8ljXnw+foJSvwTjjc4LOY/p7xcIr2fGk4ij3b4AXT0AhvWy01blMCoM?=
 =?us-ascii?Q?1aEiycqU4UN+ANLU9kEVe5LKIOfLzMdG2JhBazczYwQ9WLJ2SqOpV65NXXhY?=
 =?us-ascii?Q?Yutxs0+7iYf+0ckSivYMgXXQ7nHOXI1SQaHu/FS7zwTI87C00JuLc8NhPy8m?=
 =?us-ascii?Q?plKKfZWMcGDQtWi9N0rQkeGUZEZW4Cyv+UfdhCFM0nUHjyfn0FsqzlEqtB4E?=
 =?us-ascii?Q?tSZpG5vpGhrvgDJ06BLP+qoBD0rddcEHvFWzg1qL6rqWo4flvvESYkWC+q6U?=
 =?us-ascii?Q?1Q4g7ZQesIClzZ8K2lQyiaYbXz0QXRq8CU8Ex5vwM3DxvqycgyGnXoBmEY9i?=
 =?us-ascii?Q?CBlKdo7qQAMihFrK4G84/sANsGH1kimvnNJ0S/BOWMWmO2N1HOI4HoCw21ix?=
 =?us-ascii?Q?U5B88fhKaM3rJjZFP1A0zxQC6ljMuPgr+39skV330brhxtkBMWphVPz01sVZ?=
 =?us-ascii?Q?dvDJiA7tA1e9CGW4RrzcPgFCHUf48XzHccwO8TWnKZo029qVGk8r5UiWRfC3?=
 =?us-ascii?Q?2O7DHCSNDoWINOzvP2jT4I/gwWK670lwv+W6CU6QD2vuv/K9T/wmUMa4pms9?=
 =?us-ascii?Q?HTebQ4jMoKEw0OqjFefKyXxilGDjLypx37hvy02SEbZC9eNEaC0ibLlOsKWY?=
 =?us-ascii?Q?RXA4FCkIs+hcjUT0LiGZwgHkjS/+gzQqGNjelsfDq5lTUPGGmoNxVF7rYUMj?=
 =?us-ascii?Q?uRPJgHn21KSeyrwIAfmxKCqejjA4DYZFtRqGZ9f/VeZGkETQONVEn6AKA9Wp?=
 =?us-ascii?Q?w38RlkDuJM3wKvAX56ol4rv5E8qzyHwUh4iKqNHMob9fr7jeFvrwU5ZyPF+u?=
 =?us-ascii?Q?6DRmUA7jU3SD1jdc6JQjWTxQwKRPmTcOai2xwYTPTmHGnpKHxFudT6lT7UiH?=
 =?us-ascii?Q?2K9yERdRP97Sv4FQnT54Y0xSjOD3qiSrgrAiTraYwR3I2ItrTQBUEwEmCNYT?=
 =?us-ascii?Q?EvIwy/S9dAiYdid68YnAc7BVvETNBUaCnqzQ/xiRCmjy6Hi8YKDHKUwrTigY?=
 =?us-ascii?Q?GwWQTTOC8ZZwb2ug+zlgvSrqFl4esj20I579bVYXI0djZ7J1wVMBsUNh3KlX?=
 =?us-ascii?Q?ThmEXyoz5SXklAPzV4O8gyXjTlg4CV4or2advCUJauZ9q9mZb/tKHl5RwZim?=
 =?us-ascii?Q?bjr0yYaMv6oKDvG5tuEIrZ4F4xrNBGV2mZ1Br7REBrf+F5r+7n9rQ0jA3n9Z?=
 =?us-ascii?Q?BDkhYm/xKFCvmy/hlXhL/BKz7qsDSWShJHyxQWEmbjKdparum+C6FAJ3mKEX?=
 =?us-ascii?Q?ikbTBCvy5nsZ/orBtbG+gqny3aR2uA/v9X+q4MEwTRQS0/4K/99IqiG37ZSn?=
 =?us-ascii?Q?h0kEHh9A9pEpJECvSo+ANfxEzeDjIWCajizU3E8ac42JIYmAcWeCzgd+nuK+?=
 =?us-ascii?Q?4w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0ebc1cd-ccb0-48a4-72bc-08dc9fe9993c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2024 07:34:42.6431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XRj/KCXbiEjMO3GzOD4hEjF+UsnQLl28nF2Au2pLmI7/oIfv4T/nkV+xYBikrF0La6AfWh1PMJh+SQiZAIxPO8CONnJU8fBOaSozDkHJ1LQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7108
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720510486; x=1752046486;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QKTRocXHM3h+rki6c0rtIk1kquSFai3zMv5vlYU/o3I=;
 b=c2LeffW0/vcJ0SWpTB1TT+D7naQJ5khQLNo3Py1eFJV5r9LJOIgCS7Yt
 HUwt7OAr7sPFiWueRAEaSdt4TgS0rIIugRVWpfGfa0MB43gSBzDSVZJF2
 imjQOm0YLhC97GGzBr/is75zwOEXSmFZjdMARe2B0xSxiuCb/rMbH4ck1
 ZKFpLxlQtTmU4T013AtZk1bLUPMi0b6noyX+z1M3/tFrsgASpvj898mMQ
 M97Hz0oVvkCMqxlhOGuJtis1lgNW2BAzQBYIjmmbiUYKhkuQxuhkWEGls
 IKWCnM/UJm84hjVQXdVYmt2RZsuAU8yE2bDyQnTmFt5jpVSfMexlSlADw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c2LeffW0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 6/7] ice: Remove unused
 members from switch API
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
Cc: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Thursday, June 27, 2024 8:26 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; michal.swiatkowski@linux.intel.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 6/7] ice: Remove unused
> members from switch API
>=20
> Remove several members of struct ice_sw_recipe and struct
> ice_prot_lkup_ext. Remove struct ice_recp_grp_entry and struct
> ice_pref_recipe_group, since they are now unused as well.
>=20
> All of the deleted members were only written to and never read, so it's
> pointless to keep them.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c   |  7 ---
>  .../ethernet/intel/ice/ice_protocol_type.h    | 17 -------
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 51 ++++---------------
>  drivers/net/ethernet/intel/ice/ice_switch.h   | 16 ------
>  4 files changed, 10 insertions(+), 81 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
