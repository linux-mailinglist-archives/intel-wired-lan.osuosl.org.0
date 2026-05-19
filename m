Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0C1SFHUVDGoZVQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 09:47:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6DA5795E2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 09:47:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFE6C40B1C;
	Tue, 19 May 2026 07:46:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0cbQ6ud6GQvP; Tue, 19 May 2026 07:46:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 324E040B22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779176818;
	bh=qocVGFir/N4SW/lfH9sctMyPo1q6XqR7hX/NubgkmKU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1dpGjAv3Vp3H7KotINwOlVfZGUlwY5gVKHnIhlOdUpxSFlSmEUF/PlAvoitJ7YfOf
	 o0s5Zygr20puwGyCf/tzDcntmEcCLnuJNfEyfjFTeeVT5dA7wFpp4oW8ECcn9w6261
	 6otyjdf0lCS/av+BAO18nzu0rYIrL1Z/QaxCV3Dvop83m/QS6qAQWoJEhsl6VMi5us
	 CC7A1sNKS3YlOC7c+1F630gulSMlKl8obzCnxek6n8joKAZCML0ulQzH4I1YNho6zo
	 36wWsv/3OBQLw3I8eM9QaF8wCXr1ICO0F2ZRFgI6opEkPVjs/ENBkD6G3bMtKbXwfZ
	 N85LWsXAWtgfg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 324E040B22;
	Tue, 19 May 2026 07:46:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B4E2A282
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 07:46:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0FC640377
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 07:46:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x-VQofanuQwM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2026 07:46:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A514340363
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A514340363
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A514340363
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 07:46:54 +0000 (UTC)
X-CSE-ConnectionGUID: oAOO5AM2SFq6ExqS56E/IQ==
X-CSE-MsgGUID: mObR19qLR0ufOW1yuu/R0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="83902397"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="83902397"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 00:46:54 -0700
X-CSE-ConnectionGUID: PImfezI9SFmDso9VrQjPag==
X-CSE-MsgGUID: cS0RSpdzQuu759Hi8fNK+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="235448143"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 00:46:54 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 00:46:53 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 19 May 2026 00:46:53 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.21) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 00:46:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LGDbtV/O3WN955+PNA7VQzRnAumYAqln4hWgB99tcrZHX5xquibNajurH5uOw3Yurgg0yYlvh1mjbOpREio/NPnNtXrxq5F4gUzwHwXFTDAIUcrNjzgNovPYFhh2cR15MannRc1IHo3QZRdJJr0QgMjXAHcXnu2dgBgUanDJsCRpkBGgTxyNrimzTUlPB4uxeovybJKiBQfNE0GowUg1R+O/iPwg8we2ZLin1FIzRYwjOxyF2RB7xTF2agRE50XFJHijrpbVHL/A1IIjfJLPTAt4hBbaBJt9XHEae8IJMBOU43w88uXqToghWvswhvEdahURiFeHKSOILIrpa+QPIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qocVGFir/N4SW/lfH9sctMyPo1q6XqR7hX/NubgkmKU=;
 b=Q/DMmtYHKciz5fkWEmrtWDlz28krrycvDcWQC0xp6CIKP64PlX19Fmq/YDJMHM9sHsNTCuQ2Jv2IyJkxJm7PbHxCD0fSwSHqhQf3WQI2d4kBYrboMnUC/vUKpLYR/2wCQghVdV1Pb9NxfcJx4lLqlDv7GAmxU4WVTwmT8v/jGPn2OwMorkns2aqPerYxdTsgJmZd78ZhHJyks5X/DqPzWGlvR51vHMmpHjcD8S0A2dMQop6U49OmWpIPcAZ+CyxnozD7NBImrPY9R87OiLKB+cmmJ0BlF9o3HUnbLExr2grZdgTJ6stiN1at3pGsJW3rGkQpOagooX+CCpNAqMcPtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by DS4PPFCE18D981F.namprd11.prod.outlook.com (2603:10b6:f:fc02::50)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Tue, 19 May
 2026 07:46:50 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%6]) with mapi id 15.21.0048.013; Tue, 19 May 2026
 07:46:50 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/3] virtchnl: remove unused
 defines
Thread-Index: AQHc1yUCW3jEPZCjcUyy72aXw0/NmbYVGPPg
Date: Tue, 19 May 2026 07:46:49 +0000
Message-ID: <IA3PR11MB8985012015C41157AD9D8F498F002@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260428143716.9653-1-marcin.szycik@linux.intel.com>
 <20260428143716.9653-2-marcin.szycik@linux.intel.com>
In-Reply-To: <20260428143716.9653-2-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|DS4PPFCE18D981F:EE_
x-ms-office365-filtering-correlation-id: 1b79327b-9c5b-4ca4-0bd5-08deb57ac947
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|11063799003|18002099003|22082099003|56012099003|4143699003;
x-microsoft-antispam-message-info: JSVP1QZq4qsbsjczD+LDaAAvk492pfkmchWkVYZxLqjgBCUDDhHJHvFbnbAlr8Glo9Rmc3kDbABYSxQEVltsWAR0xcQ7LJ8eXkBcVa48UFEIkYtFSwTcVef7V2L3TShYOixlT5Cm989/nKTZotYwb0BkOMraw/54XpFjxb5atDmLmpTI694GMvsmlZngHpqRsaSqIWpPK4ArKwu0D2O0WvPQ9Q7vmBV3Vpq9Y4iiAbAQk5lCi8M4z77z4h/87I5cN566kHqKqFhMnhys6UqTxxiGXFC77Ej4TKDKBi55LCd4BbsfJfnoK116cau43ypqvQG/+w58I2U/vsNeGwwxoB1dchV71NHNorSXHgCD9nj6e1IbwjsETTaU/bRf1vCCg/ZFw/1i1aH8hDBcKdPEVq7ckZYO/VJKWZo4zkrTdbNHTw25WMpQf9jZ9UuarB8D2QH5lLX3dnEEVZHXWzBWJyCgwa3WFoABRmoFEFh5VqJwQu2vZ/CewfCdXB7bZPS3dBkHVw8QM3lQIO94ysp7YVBdrhMpwCVGAN8eXUV55hVn+yxb/gIeQ6gKC87J2SoouzkppBKLHg8gmLojQcKj9yG6NVbQXdHQuNnnoVs5g12SzPPtGhSLGFmEw4BrO7nOboLu4RjLf0L9iqkFi3SGAj8onAm1s27cGFvdwGoesbDRQvcxJfPTHp8CjlG/WHSop/+H6D4Pt0oKkaGMp4Hc6EnHwEF3j/iKdVWSJX0XMiQd2raDlQiFdoy05GJrECCR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(11063799003)(18002099003)(22082099003)(56012099003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Tn8Q8OCpxZRvMfxU3Eh8MvqJZCkr6lRkvwAKRW3Z1vLevbrPjWwtZ5By5Nsz?=
 =?us-ascii?Q?Gf2otTLBgUeL5mZKfFRF624D57UoQT/2HpUgYK/r/KU1dpRI727WNNTfT8vt?=
 =?us-ascii?Q?M+mZ9S9kS1wL/6J/BxqUJCre3SLLZZmHaPYAEIJ3yRCz2pgRY0elJd8OKnuk?=
 =?us-ascii?Q?zai16HH2TPz8p4BSb3BhxjoLvLEQr52ohyEBopQa2EtB3cB3HZeZeFwc/7eA?=
 =?us-ascii?Q?5oqLr7b9wd1r762DddvlcesXS+vaq7Gk96k0APgtc4il+4m68jqFHUsLuGR5?=
 =?us-ascii?Q?BURkAX/yjvd0S4IcRHOJQH309vctInY5VIc3oZRIet9j6fUo53eZbY/q0c9C?=
 =?us-ascii?Q?yT2n6cEd2zhyuLCMI8GNT7kfDeqvaEsS5TrmdQZLbJiePjlT0jfPGYsJjX3r?=
 =?us-ascii?Q?S0BicOn38VrqqCngG7OjYwDy6aQnk28ucqfLFBTImbHyx/ko26PPOBzMT9h8?=
 =?us-ascii?Q?NPus5u2EsUi3RULuIUOvtNtRQTZf9vx8EdwelFv1OlbHH+ZQmSTjF8CzVoZ7?=
 =?us-ascii?Q?e4PdETzU1VrWJnlMWm5sL0HFmq3eKVgK3rQpqQl0HF7Td3hUdqOVq7OrVZ8Z?=
 =?us-ascii?Q?ZeHR8epSs7waKUShgMdeosQdDwW2irBn+CJWtpiAGYumgO3L/X4VpCr241Pg?=
 =?us-ascii?Q?4tf7pMkMVMw2SpBKglX40JTTmgmKzWxrPkbKN0FlztnDYp5o/go6kwrZFbRb?=
 =?us-ascii?Q?e8tVrBPUEEPp9vmI/5i/S7BBtLRyJpkzwD4IZx7KpKV09pzgvft8NHi6VlKQ?=
 =?us-ascii?Q?KfzyNj6llkQwgTIPNHGOm8q2tSUlDo7RStdSAiPpUmruLID0fu3QG7T+gFZp?=
 =?us-ascii?Q?0zUq/6S/z51tPmiwZJZePlrRPVAFCT95SN5oo/B0qCOu+zST3c7A+VAYRNd/?=
 =?us-ascii?Q?uFcjZ24rzE3ahgEKi6YELxIp9R+isooWaoISs3XMVYOFg/IRZI5H7iafFqoC?=
 =?us-ascii?Q?/9yAp+aFe3py6eDFJKgeSyxCIGgxR/0YkZic5jCEV5VFSNWwGONxsMLw2DNI?=
 =?us-ascii?Q?MGe3YFK1HEABeVTMRIZRUfiICsmRPYWq07tIwCjgkg+DfsoXMrHuQmcgABYz?=
 =?us-ascii?Q?auBy+gIdnjXlEnzXzeTqbQAbBDz/iHNh6LVZIvcI0p7Ohc/62g09qQtP9ti9?=
 =?us-ascii?Q?iax3e0JQRVVoS+gj42bKUVRnUP8tPBqJfm+ZuDf9x9uBaxlWc/s1BumWLJZe?=
 =?us-ascii?Q?3KNzmMW161srrAr7IE4zbqSnpYx+u91i9Mt+FhNZn5UHMPIzAvMNBGDpmOpG?=
 =?us-ascii?Q?+XS1saXJAYjcfAG4soXFK1TDPJN4UHyMj3z/WE3ijrBTKNVfS9qgkKlMzLWe?=
 =?us-ascii?Q?tqZ7bvNpE6xY7IEwkO2bI81C/0pq81Y7aGIQwPJnLe8FotBek9VM281AOsU2?=
 =?us-ascii?Q?Jc/OiWjMs58g+/Ex5MSxDN7E+UvAvFEprfuwExRAtlazcNxGPofJFjuZgM67?=
 =?us-ascii?Q?E7tPOV9Bbw529dkvH++vFz3vVCqOiy7Jg/s2iwXZW45GZLBhLbQaa2JGyp3K?=
 =?us-ascii?Q?yJEtZ7DqoQ9LgPH877+qd/pk2w97DxOfQXhsfAF05StBZOKHs31ir1R9fia+?=
 =?us-ascii?Q?4b9inj/IVsJrTqn2EpTXcbjZ9BP+UAFiJcZGgv5f+JHLce0wYBUoqzJi9hlf?=
 =?us-ascii?Q?rsT/HAzm7rnkU1Lijl/hY93ZYy1koSTyIsxJbtAGR5iHatbrAZ8+xEEkAeeT?=
 =?us-ascii?Q?NghjGG+Qs04PVuOZ6P5tq13q9pvB6zw3GS+SI4oEgnA4u0d7htltxauutBVn?=
 =?us-ascii?Q?1FYcQAba9g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WhIo7+E66kyRZ5Atax7HTJ1tOTDVr/2M9LsKLAocqM+MyymkZdqkSv3jaTF2bohwKoZwlMUicsw7i38iLJxIo3Fn9wpZG/alkHiVJDW4PrQB6HOSidTWhOvSdy3SLqkSAexjOQL6IFxx6hD8mwKkq4zngUHKnPcdwtZDTdXvPGTAC1pYBzBVX+K7kgNF9eoJbCZ/oIN1y6jKSBl2J4B8t9umoxPWFf15iJFvibj8eitgbQDoZT1Jw+ADaw9iiM8qgYRA7yb0eLeadxiqmkMwduG5xQ8cXpXcqR0kDOl1YY7uz60bc2J3D6KDE/ie0FbOUYjFe7G5TdOqVIuzABiR6A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b79327b-9c5b-4ca4-0bd5-08deb57ac947
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 07:46:50.0100 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WCB45cqWuAyHdqXHgrFYVzLE4vTJvwOW5Z65BWzxpgZ+r9omtIqTh4hhOclL16vVaA57JWBrYJQoquddzdSiCfjtmVAnzQXsrQZQ+iEvh6k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFCE18D981F
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779176816; x=1810712816;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PR8OOm4f+Ws8qbWl94p2bOQh16e+1bbtHFK55PIAkiE=;
 b=iAGPLRFJ1oTcbEGu3wzVw8RyHRcRZ0l6ibRNGfX+ebhbewDx2ACBGjKI
 HqaTjyNCCpqftDdhtM8Xyg2CpxLqY9auMdC+0ZsLPM4rHnDRMXFq0TFmy
 2yT6622d7E1McAfp5k92FmsbZwe3gry+Qc7g8O/Nrs7hojpizGtdQ2++Z
 MyEqOXblFS+WezJWu3zG2EQuY7C9Y7ExplehCdqMLV51yI7RwDSiX9LvV
 PAeW+XzmBai9oSSQVFV56BG6sSAoOE9ttO7z+8tcypxTjgN9OJNd7VMo1
 S/ZjJk8utgx1P1IeP+ycQDJXs20Be/LjJjNvUnlWgn5SqiDqAyHqFUy8L
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iAGPLRFJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/3] virtchnl: remove unused
 defines
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim,IA3PR11MB8985.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 9E6DA5795E2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Tuesday, April 28, 2026 4:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Greenwalt, Paul <paul.greenwalt@intel.com>;
> Keller, Jacob E <jacob.e.keller@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 1/3] virtchnl: remove unused d=
efines
>=20
> Remove:
> * VIRTCHNL_VF_CAP_RDMA
> * VF_BASE_MODE_OFFLOADS
>=20
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  include/linux/intel/virtchnl.h | 5 -----
>  1 file changed, 5 deletions(-)
>=20
> diff --git a/include/linux/intel/virtchnl.h b/include/linux/intel/virtchn=
l.h index
> 511c8827c640..bb4737de37fe 100644
> --- a/include/linux/intel/virtchnl.h
> +++ b/include/linux/intel/virtchnl.h
> @@ -250,7 +250,6 @@ VIRTCHNL_CHECK_STRUCT_LEN(16,
> virtchnl_vsi_resource);
>   */
>  #define VIRTCHNL_VF_OFFLOAD_L2			BIT(0)
>  #define VIRTCHNL_VF_OFFLOAD_RDMA		BIT(1)
> -#define VIRTCHNL_VF_CAP_RDMA
> 	VIRTCHNL_VF_OFFLOAD_RDMA
>  #define VIRTCHNL_VF_OFFLOAD_RSS_AQ		BIT(3)
>  #define VIRTCHNL_VF_OFFLOAD_RSS_REG		BIT(4)
>  #define VIRTCHNL_VF_OFFLOAD_WB_ON_ITR		BIT(5)
> @@ -275,10 +274,6 @@ VIRTCHNL_CHECK_STRUCT_LEN(16,
> virtchnl_vsi_resource);
>  #define VIRTCHNL_VF_OFFLOAD_QOS			BIT(29)
>  #define VIRTCHNL_VF_CAP_PTP			BIT(31)
>=20
> -#define VF_BASE_MODE_OFFLOADS (VIRTCHNL_VF_OFFLOAD_L2 | \
> -			       VIRTCHNL_VF_OFFLOAD_VLAN | \
> -			       VIRTCHNL_VF_OFFLOAD_RSS_PF)
> -
>  struct virtchnl_vf_resource {
>  	u16 num_vsis;
>  	u16 num_queue_pairs;
> --
> 2.49.0

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

