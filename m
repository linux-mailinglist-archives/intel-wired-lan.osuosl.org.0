Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A53B57057
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 08:32:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 789B16F83F;
	Mon, 15 Sep 2025 06:32:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A4hGwYoKZ6kz; Mon, 15 Sep 2025 06:32:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBE586F88F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757917960;
	bh=9U3QIeEaEk0gSnQoShdqm2rTENKkIdHsoroojS9k/TY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=47qdoPXiv62WQDYgPBAEUsTV6aDcm5UvaMSWWUBtXzGjAMA22T/J//wVfVRQpYLWh
	 XoIIDRiwUt0sAx0NJhXSTNCsGiSGJn6u3lZTuBrxWX/Um8Msk6D2KkXprOKJlxn5Xg
	 T/95AGPItekDL1rtlreIgw95gE9vbvmqhyZMlbxXUIqJJsjYLQhvHSGqTtfZkfsxxg
	 jNQc5WkzyBL6IzW5UGeT4RIRQskI6omxQiLwHb7vfhFucVTaHIroJ8K4Qmll0ZB5mz
	 gJY9VrLBC4kzgG66iF01a/tZ6xfPTsMxypgeX8ZzZ8vLZYmwb4b9IHiCXj2TqPxNVu
	 FeFGgb6I42Anw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBE586F88F;
	Mon, 15 Sep 2025 06:32:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B51F112D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A618D84BB8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:32:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g2RI7G1WlpZz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 06:32:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 092CE84BB6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 092CE84BB6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 092CE84BB6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:32:37 +0000 (UTC)
X-CSE-ConnectionGUID: ofB/8DEYSLG3EVuGLLwkHg==
X-CSE-MsgGUID: pXHRWXvUQoyQ6BBL7AGDvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11553"; a="70782253"
X-IronPort-AV: E=Sophos;i="6.18,265,1751266800"; d="scan'208";a="70782253"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2025 23:32:36 -0700
X-CSE-ConnectionGUID: xtWdFghcTOCT6JJeSTPi7w==
X-CSE-MsgGUID: JBMBVfIjRAKkyR+ksoQsbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,265,1751266800"; d="scan'208";a="174132800"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2025 23:32:37 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 14 Sep 2025 23:32:36 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 14 Sep 2025 23:32:36 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.67) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 14 Sep 2025 23:32:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O46OC8KgJeEF9CawlpN4o6vbqKFmlScvLokJo0Mw/vMiqzdEV1+nZBIAmcB5Z+QmiwD+8//xoPJT83jkVBrc2EwA8ZJ2SsJmwMEDydhoXEslw4LUA+XsbsjYrOHJZ7ZmS/GRdL8UTDM7HEvimijlFEulh7dydn98NsK+Nw1Nl6W0AmoVr3CDzDyCjcb/GUCCUNd8E1WLNGHTVslZFt4BhvY8QVKuPX63eOEzhuYHM+auoy0tZJeH7tqu9BzhltVHE/iGeDGsuhbOEyIOLuB6lhkQPZvDnlUnymTcvfPB0S4m4VkGrhcsCeViVy8ht4DqM5kCRqfOTmNcZuc8wtYfhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9U3QIeEaEk0gSnQoShdqm2rTENKkIdHsoroojS9k/TY=;
 b=j7ziGZt5wKio400Klbc6J/GHijoUBpBhGjPSR34BO9q4tQeab17+5pc0KZcdk/IVjnuPW3Xi/xz9fjhhC1IweBUPnbgibuZCsfNV0KPA47gDViMi2V/4DSs1ER2ROG9/zKot8kUg5qUOqqb6geEnwkGlLXeJLbHoxyaGccXXy0l01V6KgTIAKQBg7fEkW2Ko+Yyu/vLszpgzS6ncNV5HszS7MpvC9uk3J6XR+JV3v9z4xnwaJ3FrVv+BQfgxS9R+bzfxfmmOSr/S+i5Ub5HzkIQCkJcE2amq/SqeSO7sxTa3T9XlT40Jl26oCb5pUobUnswIi2v+HaUEHrRJapMhdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ5PPF8A8418B02.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::840) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Mon, 15 Sep
 2025 06:32:32 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9115.018; Mon, 15 Sep 2025
 06:32:32 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 4/9] ice: ice_init_pf: destroy
 mutexes and xarrays on memory alloc failure
Thread-Index: AQHcI+eexms1/RRqzkeXsv0t4+xRgLSTzRtw
Date: Mon, 15 Sep 2025 06:32:32 +0000
Message-ID: <IA3PR11MB8986821CFD42DAD3C81474EBE515A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-5-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250912130627.5015-5-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ5PPF8A8418B02:EE_
x-ms-office365-filtering-correlation-id: 36fd3762-1f07-4cdd-ecfc-08ddf421a6e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?8SQ4iVD9WgWqbQB0JsieqSL8hdR2I4VwMKcyN55Kmk9ZrPSHyESUwmfln5v3?=
 =?us-ascii?Q?OvwVnrDm9wjqVxmsr6F1k5NpK0PC5bZ3DDfJ2Y8AaqPSrD67qbim7V6wOQNK?=
 =?us-ascii?Q?T1ji3s4Q5xyKv/bH4JPsQGB4RMqOj7UK/Pf7pjBti2jiKJQ+WErRcmrIgtMf?=
 =?us-ascii?Q?w6vx5Tnku2HMT0cnpN0+sQdO35lo7g6ooZJakhZcuTBw48NSnV1+Xj4TUdlq?=
 =?us-ascii?Q?cfqVIKVG+zgt1a1SbvUNptJ97J1Myrfg2DOEwgGqx1qiOabUteWoBpcyBv1n?=
 =?us-ascii?Q?pPhI1Yh1TVc43GCR186JtdzOiRz0ec7VIMQFR2R3tDwKOcHNs5KEHgk4hId4?=
 =?us-ascii?Q?NM5bY3DsA5LI8CmAiiFHigimdQGLA15h4iKEA4P7X6Rci3Dqrb66aF9fA2JZ?=
 =?us-ascii?Q?do2bpKUec5K4qDET1zgxHxbLSD5q2JXwT90kt3wdkYuxsGD6zhFpcJlj6nsJ?=
 =?us-ascii?Q?JGa0fJ5ChTH4VBOvMQv1IJO99SNKhU+jhYH+T0UVu+QbKNBS0ZIorOn9vji/?=
 =?us-ascii?Q?gt8ux29o6YEDzktUm8LIuRZHIxzpeFbJt66/CDR4DUuJcjRnYYzNMnPnyzUm?=
 =?us-ascii?Q?AaSgsZt1Opwxe2qX6S1r/72RpiLtetrP3Rruq/ccTS1zVQtm405eIu+6yroT?=
 =?us-ascii?Q?gNV2GBaxxknRXycQVWmxjOf6ooBsXgewvnBlaV+/V6jBBRXZhyV9sout8/+x?=
 =?us-ascii?Q?golQjo0MkT6hVxXg+ker2chDE3VGY5iYIZrbEdHBKNx5KpOvUyfos7cm/NWD?=
 =?us-ascii?Q?a29FzSe69cORNNN51I47/YBhS1X2A/9jm7t2PgTBtAA1OmjHX6QLpkGgosNU?=
 =?us-ascii?Q?t/GN+hcIq7u5/nXCc2A2MKYv25oevrVcSamSXS89wpFTCEZov7Af6irClwwT?=
 =?us-ascii?Q?Eh8kwZwx0yiDplR+1MqP+CnUMoN0exlAWwqu0k4AXjrbaiDfcPiVgEFrSPIS?=
 =?us-ascii?Q?4nk45j/WsxUbUJLLnegxlPx2I4ysRcgvFyuEe2LExf3q8rWch4eXDzfaDDR0?=
 =?us-ascii?Q?6rvqFOxzRVl7jKm9EcPDEO+i/kqCbzvjQP65Pf1j3bYwgKQIDBTTAaLi9GIa?=
 =?us-ascii?Q?tfmx46+jYXNB2SjA9o5lql2GIX51nlu5a9A8fz2M1iZOR49FyXO7dojtacLT?=
 =?us-ascii?Q?jPk00Rt+kgQbVZWyRrvgN1fDR4bJiibzi5Qk3s04gogkcEADUOE374Q3saq0?=
 =?us-ascii?Q?FqwnQP+xx8aB2ggxet3uGNJg3wXFXC8xPO34RonL4D7FduVLGE6xGBTvxc+X?=
 =?us-ascii?Q?nMbfXZz9FLZ+C9YGoTgmviLBqMdFpDfSBsYOen4yj4a6yfbtb1fbC7AqY/sL?=
 =?us-ascii?Q?bbs6OufAjGZMKudu847GNMCJFcCO8TyrP6rFdX7bQ+xJllBjs4wPaNoOQlGg?=
 =?us-ascii?Q?MH0vkVh/qHOzHGwhBYSgwYXuBQc5zeGggqzf62DXHkjy0NA1PG/Nz4APhuEi?=
 =?us-ascii?Q?QQb/B4AGsVFwRUgE4smVWrrO/60tEVpvbHyABBk4+BI1a3fcji/vYw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?h1oQgVzFrXWD1cRyPEk62lNUOLX0nKLI97X1U/b+hiSFc7meL75exP2TDdxM?=
 =?us-ascii?Q?D52KzUWv7rYzQnwE45HSMTKvK2iZgb9/Kl+CsYzfdkq/ijgwIBF2KA/cDHdP?=
 =?us-ascii?Q?WER1Tl4ZTFfTJfWBvlQDybRhTTrlEM5TBghkJxaMFPoJbJbnk2x71CeoOyek?=
 =?us-ascii?Q?g5hn/5WEQZZg2IdOnZjZL45pcM0PIftJePWc8moGSoa4FoJYALDuodS4hlpq?=
 =?us-ascii?Q?wjjlks63V+nDzJaJSNm3gmrRGGyeHwXxLJP0RbevA99MW9g+prOD0bz/kR8H?=
 =?us-ascii?Q?vBV7oJBufjgfLabQHHSSibxyzEGsJa7RSlEfbINFNX+DxHkm+NiXUQECUK9A?=
 =?us-ascii?Q?q0SqN66GGrl2n5tbobrgQ353q9rtlINK9ILujsGVMxc7QgWgIk+hTYO0jCLZ?=
 =?us-ascii?Q?gm97K7CWEcLDJsapdxYtURP84KchA6nUKWrld318y3oJ5y5xsHpc+HeBcYUh?=
 =?us-ascii?Q?Dc/eMa6vKOQksZ8kGRCSlaPKOluXMVEG805ynflNqclTCb5cZaHqDc2MBzwG?=
 =?us-ascii?Q?Vx7Ko59XZWvDOqaay/06+00zkx7EKcxna8ilB6QoMzt4WS9BFcAladZJT5mQ?=
 =?us-ascii?Q?7ej5L3pVeKbvIW+SEcAA5zvwANbm0bD1MfFEy3Drwj03i9YSZD01pvI6BdYM?=
 =?us-ascii?Q?igzj6cGzyH3sHoA/81A0XaYZuugPf0qwE+RS4hXCaIXrH7sEQRZHbyyGloQM?=
 =?us-ascii?Q?5a5cpRB8GLBAajJEmkR/LX7ZyPooj4qQgFof4oeblvUCNCQIujC8zbkFbNTv?=
 =?us-ascii?Q?qwI0jn6t68bVyeGqTQTaTP7i6SXimy6mU+90Ys/CkYPCv4hJw76fcQ4Zk7zO?=
 =?us-ascii?Q?Z0vmIRtUxzxkX/vrHyjB/hQQ1eBibdRJ6AeRqoAiu5FSboG5Afif/nfV6bY0?=
 =?us-ascii?Q?otzOCeEuc/T7Z16pWqbzvXHDyHjL3skXXDvooydjBCM1fvH57o+yWZRZ71gH?=
 =?us-ascii?Q?R/P1X3nhUoLFaR5t3Q6aJxJc+2zv43nPNUhzsQ+fVPjK/YSsbGw4Io64f3c5?=
 =?us-ascii?Q?IKvUlD7XaigZhhjT/NXZdHoS8PXyyUCFdlPBU2e74oq8G8QaMupDDk0jt7pB?=
 =?us-ascii?Q?XpeVBnPyXIRVzyjlSPNSgK+egr+W0dC5nuYub3etI0pzGqbdxCVT5d7dKYtt?=
 =?us-ascii?Q?Uw0i4zCA4ZYS70lr2MOZzxld8aJ9KNQenkca7VhVONvR3q8qrZHNsDw1DKU2?=
 =?us-ascii?Q?HUxF3XeO4s2IEWrTM1j8RGJ5jZC4a07sH0nliKG6fMMLgYfl1JnVZKTfzl/H?=
 =?us-ascii?Q?GapsYg9dF+2wt8vcOK7imV7f3Uj7Xj/0zlNJrR2z8rZtfrxqDr+V3QBF1Hzp?=
 =?us-ascii?Q?2m6KtKlW7X5hAbdOqrYWEYVbB3heYwGNU24QR5T8HmeEBCRduVRGk4moYB70?=
 =?us-ascii?Q?rDI5+DbwIlfnO4oDfhWCcwX4OKEs/r0+j9NR/qCvi0qGutyZkAPHEnLU1pqB?=
 =?us-ascii?Q?iTNRF7l7vFaprbOxuKmooybLo7RYbycRG+D+kuZJLkPPunzJPL8+56+L1570?=
 =?us-ascii?Q?J8fh93fTGmbEMZaf4JnYjCTYCU/7/GvWD4jt/Lcs+asEJ0/65bIZkAY9neoP?=
 =?us-ascii?Q?0F0fEx5rf/Daaqmi2Vm5sHM/URs/FKVQ1UVXrmR3txgeASaFIO+wzPYhgZFJ?=
 =?us-ascii?Q?xA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36fd3762-1f07-4cdd-ecfc-08ddf421a6e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2025 06:32:32.6827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oCHmFTm0TQMVs/zzye639L04M2vgajMEH1Nhtd9Vt/F2XetfGU8LYSCz2HGTmy/KGB9VSFOG+Ya3ukHmjsFURFs27wVmf2giW5+2aphedEo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8A8418B02
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757917958; x=1789453958;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iEaIWyJErUCGiR2bUUTA1G3CsLkBFR9GWM9IgcTVzl4=;
 b=ltPWpQe2uNPCFEQvXv3etAIGxHzWdTp5hbP17U3dXDqkZaBwsOxtGTSN
 BXgYtpyCjttJglmh4BNASVC5ihXTBsYqafdw06Zcu8pg1Prbl16C0xiSd
 Gh8dY6TflpZrP5qRz9wbXvZt8Z935I62XQkv3sxCqtEKWPbTmLVF8ucH6
 zX+IZXyjeQO9zcTjP7mJxvhl+etHXZ4ykuXNdUoUfiAWGXxwOCEZSOw03
 uuvU70hpTx4Pod1xi8fpk6TlMSUbjLh9d6IKFgsiE6/gdDZz+Q5MYmgvm
 J55AmXy2tkuvIbtIOEQ3FQY3IFEAfVjMvRySzUGhAvXsJy7rnx5KbZlyZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ltPWpQe2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/9] ice: ice_init_pf:
 destroy mutexes and xarrays on memory alloc failure
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Przemek Kitszel
> Sent: Friday, September 12, 2025 3:06 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 4/9] ice: ice_init_pf:
> destroy mutexes and xarrays on memory alloc failure
>=20
> Unroll actions of ice_init_pf() when it fails.
> ice_deinit_pf() happens to be perfect to call here.
>=20
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 21 +++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)
>=20

...

>  /**
> --
> 2.39.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

