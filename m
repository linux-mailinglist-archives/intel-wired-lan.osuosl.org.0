Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2AA0C2CB55
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 16:27:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C19F7605AD;
	Mon,  3 Nov 2025 15:27:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LtwoEn70puV8; Mon,  3 Nov 2025 15:27:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24829605A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762183644;
	bh=j7LHqTJPnn0Hop8hBiGdda3eSruy4cR4miI/VlwyAHI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=voOGEzeZZdMzkaqtfawTC0RTfEO3kDP4wCDB55P8UD0PhzdRGqyhhu+piyo7PsZ8Z
	 W2DxUCZPSqhztYWo3SiWkGct5l1NwtCEZWJMa3NBhZVwe6Cy2q0aHpEktHr9cTkp3T
	 r2fVySLw/auykHR36I77qRb4DZuhyckcHa324ErGNcZEHi1LYay36vyZ+f4DyeRMqD
	 tZ0qvULx38gdg4k5B7LHJ+bQdkId7wqDadLq6MBk+Rq5aFBdbi/Jbxx77Pa8sVen49
	 t83cq9B1AZoxGH3NWgAJS0AMfbFvq576pAugfc3C24mkNeAZ8s+MGczkrnNIaCwI9E
	 5CCeHQkaFxsZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24829605A0;
	Mon,  3 Nov 2025 15:27:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 349DE1A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:27:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 264D0401E3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:27:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id muPogeCOhTFA for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 15:27:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 653C5401E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 653C5401E2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 653C5401E2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:27:22 +0000 (UTC)
X-CSE-ConnectionGUID: XpJ2IL1bTJK1JRamV9cYNw==
X-CSE-MsgGUID: JqidnHq3R9anjp5LXHxwVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="75611619"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="75611619"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 07:27:22 -0800
X-CSE-ConnectionGUID: TzfbG8SURFKbDdVaUz7jsg==
X-CSE-MsgGUID: jdOoK53ST26awXzpfnYOEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="187040126"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 07:27:22 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 07:27:21 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 07:27:21 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.37) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 07:27:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yQW0A/ftsOcPCv8nkV2jQBKqrORFoSLq/A30vDQmxYj4E/8A1hb6EoMWwCfh3AbZoKisp2Em0bGiLQsH+I984/R1M/FwMF+l9Wqn9ylAlwnNvTjHTCY0rKEoerAQf7TX9h71ljIL0De1G/Ht8MpHT65lQrvpN5NLdwulVUSARXYQWiXbKilXF1BXk6aJeb70TCyJ+HVxA96qoeWNBdY6BQU5iENiIuGLjqCx5eKWvJEFQEkGzZKAKVl+igz6SUwMRLPK8rjOg1gUNF/7OMKer2n2AjusODJccIXTynODSZ4oiUbOBn6/XIlv2SsXHmp/Bra+47/sGMeJDCGia59jkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j7LHqTJPnn0Hop8hBiGdda3eSruy4cR4miI/VlwyAHI=;
 b=XmM9tQF6OXoeCYxYhkhiqam4A+zUz/Gnftpy5T180sK+ZMOLK79BjxuQc4CwboGV93aSv+sz19miKi7h1ie0rs1myyN3h8jaADN32HKgxz4uVHV2lMB9+x9zVUOjfcuaZMS3KLTM0wHmVIRUpkVbXkhZPu4h9OMUsTbmSUfCHdENkER6d9Eynz/LW6oKuo2UyzxgPVL2fDGgDwuHokzt8uhuS283XFexHO8KmbMZnCX5TU/i96v31wYf9EW4ESOQervWpX18hqyOX8fYvG8J0MxlmQeGh7L8ssZ0TW7qbI/K1sm7GKYp6SlY+XrcMHCN7Q5JCcr2e+ggy/8up0zPaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SN7PR11MB7114.namprd11.prod.outlook.com (2603:10b6:806:299::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 15:27:17 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 15:27:16 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v9 02/10] idpf: introduce
 idpf_q_vec_rsrc struct and move vector resources to it
Thread-Index: AQHcQuFT46dcem9bnEqOToeiamXNubThJZ+Q
Date: Mon, 3 Nov 2025 15:27:16 +0000
Message-ID: <SJ1PR11MB62975522F1AD04E9A63A65999BC7A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251021233056.1320108-1-joshua.a.hay@intel.com>
 <20251021233056.1320108-3-joshua.a.hay@intel.com>
In-Reply-To: <20251021233056.1320108-3-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SN7PR11MB7114:EE_
x-ms-office365-filtering-correlation-id: b8592f5f-a1d2-4220-02ca-08de1aed78c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?xDO0ZifrtbqWn/AFRxBgh9ZJorT29lVCVeRSCt6Rw0xkKf8EyxMrHx2OxvA6?=
 =?us-ascii?Q?CvoPLEMa9CZpssYbRZ1VDNC6j8Mcp1CTcumcSfe0BZewwIPGoCaN6v7/gZZ8?=
 =?us-ascii?Q?wX1AKtO3I9OqGN7CP8vLQ5QFpcbxsBqk7McWDRHBSzLosxkDT6QRY0K3K3oI?=
 =?us-ascii?Q?ZKjIvgt2y3duWQd+N6ksSRofAJD8Fc+c8Zwcxo9V8eM3pLooPb+nLQkhqf5v?=
 =?us-ascii?Q?m+Tl3Zhd7jV8pGGzj+B1REmBSnaWSweJGaiM5foHirT8ae7LV0Dlaz8gr3UB?=
 =?us-ascii?Q?ru3WhrDtZe/zvF8gn40hiaProqiCb9PVC7YksQDnQQSTFS3r8xAc+gd4amqN?=
 =?us-ascii?Q?PdXmKhcRA6yMZThSw3p5sKFhj9XxzYsqGX2te+niMtSH2p71eqTLRhP/Uh6V?=
 =?us-ascii?Q?+hpEmOUSx+T+8g5S5wHlAKJo8Y43xc8PN7L4C8jjb/6c3eZoOYoikz9t9MHh?=
 =?us-ascii?Q?i+jCGUjwOxCuokWzj8HKXd48hByR/WjQHUGdJvFowTYqRf3wUUaJ2du0yPx2?=
 =?us-ascii?Q?zfGUWyPj+dHRnIOa9NzUx2f75bkwPjetQFROf0tEAHvvhxyWV/XBO4Z9/kdR?=
 =?us-ascii?Q?zAJ+7RWYrZoR2CfGK+mIK9IbSwpxUWlxErUqAZFhqehUfecpcP0kFWCuKvyz?=
 =?us-ascii?Q?ztX4n++HPfzZVWpPAKA9bO4kQQhgBH6aj4bRmbrLRCoVwENz2d0osWGrZb+B?=
 =?us-ascii?Q?VZGhfbaxOdJGGnwpUT6iDhqS6+lWcWshccfDVsSyvLffyEOPwlTVlF8E0tIJ?=
 =?us-ascii?Q?HKXWGEZRYy10JGrOX372bbLv/L50J6EIF4x1oPvKMbzotm94G2Rf6u5q19mN?=
 =?us-ascii?Q?13uzbzlU2cRM5VEQWZTIE9vR7pauRbQs4tL9hOFexYotqHmoUEEpbnjLN7kY?=
 =?us-ascii?Q?ihKoWljYhB4Jwux3JFV3OEK/fwN7NLONxLjuXyto/lhZkMq6U/a886Bm7+Su?=
 =?us-ascii?Q?RusMgRBNJwQyggYvwwRYovsHKb/fe2vlhjiR8zeirQVDmAn4nzpQKtq2sKGY?=
 =?us-ascii?Q?TScgbJ9HVChflHrvosTgLvYcNR6NC9Rc940vwYp12rGRURK7xsJLeDPtSZ2k?=
 =?us-ascii?Q?t6H2fIPzU3LQPy3qWQvwVDVeOL1vHhNc+VZkQXABBqrWoOyS6OiIJ4dfAiMz?=
 =?us-ascii?Q?abmut+dv6pIoLCrFrS15E/41zET2j4vk8zEAX2nhwV8S13EhmgNQi8Phm4UO?=
 =?us-ascii?Q?6bWjjmaVDynzqd01cQiBoK2SmCAIt3rvxaREv2gaeePJbDU7vuAqxcHOyEbs?=
 =?us-ascii?Q?7laNf6VkNqDFrgHk3ojmWjkqcllkbgJO3xcM3s7LKcKvU4yi487KLuOBYCln?=
 =?us-ascii?Q?Z/zmubSiTe4x0gpe9VX/7XF9ttCP/r79N8Yr6jyD+aN5s7zqmMTDYCdmQbcs?=
 =?us-ascii?Q?69Y5G5x8yvcHqvVqiL4qnuM5/Hw4zJTq93b4XXurLwezm/c/oPRjzHScY2VZ?=
 =?us-ascii?Q?/xxWd6UTxia4nsIEz6EdvfGUYexNgFrIX/AHPDMmVNxWnGRdueMK2+oo/8kE?=
 =?us-ascii?Q?ljJ4RY/9IjNMTjdPhX9F7fj8F9YxhWLk4HTI?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qJ/Gg8DylB3+92/a+kC9qRgnEd9Zg4oFv8O8XujR2gsY9q+wBhm+Sxiyq78g?=
 =?us-ascii?Q?0/StlCQJDNjHdpMFRXY2RZYkOy/ANWOMqXtf/Qw/+2xWrb0F/xlhZTkGFser?=
 =?us-ascii?Q?yRb7qPY5qkQ6COZ969NlGQ9CP2477PcpBO/EmzyFTEGlTrIhlhIGnx89IWgc?=
 =?us-ascii?Q?/PYYRvkx1D+HNHZb+cmyUCJcRVyZaVN1bb/miVbSR/r42HIa2H/8yIVhbF4k?=
 =?us-ascii?Q?UFkIWVx5qh1pRpAxMQ9rthEoUZz5DyrpJAiqWijCbVD7W0dDD17dJMcIFht1?=
 =?us-ascii?Q?MS9V02Zv6WrKU4eIEusV5V7qV8ewUZNuik6SBJrvhVFhIZCBew894D8baQAA?=
 =?us-ascii?Q?ZNoEC3RpvNLEbd311HDefiVTGBdaWiy2L3ubturwGq3B2wD+g+w8RKBdbRYq?=
 =?us-ascii?Q?Zlau75pNV2IO0cqLyHlTa/xmP1SCQdtnA1TyUoIrFM7fKR7skn9QyApJdIot?=
 =?us-ascii?Q?7L5e4gXguX7D1xzt/J6Xz9ExJzQPFD9CyGSwq3GlXoLZLh0G2wMtW+vUNmnG?=
 =?us-ascii?Q?31ec6imeKaYIqzgmifhPkKwFX33M9ApX370foy6rE/CEwnX58VZFsDYaNcTk?=
 =?us-ascii?Q?gvat1sQ0qidS07KguwDWJTSChmlPVZEnWSmLXU36vWcA9deAqqUCsr1NgY/i?=
 =?us-ascii?Q?q/IVVcyAdtkNDUr0aNjGzA7CI0ddsJaypjhH5ZgvBVpb01NfcWfOEofGw8xg?=
 =?us-ascii?Q?KT/NCHYsetnLWtaUjpG0ybw6j4yKiQP249u6lWddOKHlJuPOsaWDXsoHuppt?=
 =?us-ascii?Q?8ylfcOFzZAOSd649UrOyHFWXNY/+aQFcpEHVXHBNxAOBBnRw4WaQXERWTwgg?=
 =?us-ascii?Q?l2ENlEkeK2+FcCIzVhKjeVs90M2fHHBPl5yBzsPsff/nHt5NL++u5+TWjaQK?=
 =?us-ascii?Q?sEW3s6yWPRigwjb+x9OzNKouHUtun+ZTlaJG90hxHKT6jxxcDCTKPD1FSQy7?=
 =?us-ascii?Q?NB/KS3pYbVD5uP8EHK2aRMevsS5L9581SLQV5ylDx/Eq9rZ6U+1+JoJoYRPh?=
 =?us-ascii?Q?MbJkt/6RNB7EJhX/rbVvxhas0C1fSjhCRbGMLgjDxAPowTbadnbomnwFwS6J?=
 =?us-ascii?Q?0sDfguxYtSYwj9lpMv56wyOUfoOeiG7PYpOs8DnqFKfmlagr/BO1tSFRiWxW?=
 =?us-ascii?Q?H61UoNm0/ZAHuVaEVB8k8PqOQdM4n6QDH7cKUtkUE9yR18rzy4Wb0L61UFI4?=
 =?us-ascii?Q?BrPJpZPMSMyF4umohLnnkpGP2eqpdrzrClFZ+mohilWVLyOeNIvEwcJe83fZ?=
 =?us-ascii?Q?PbtOw0YP4dwMV/3om9fwHEfkfjJ3hUa4lqnSavyDQ2/MxxTYCu6aZJdlo/wm?=
 =?us-ascii?Q?/McNm5giYwmhH4ELhgratTxW7WoYGzD9cIU85+drFFX5+cZXCrVmXpjNVXXk?=
 =?us-ascii?Q?AaBXFg2VqrcZVod/er+I65cuFfbeulAB3XP8j7bCBGk1RXlybiPZ5jAHXN7T?=
 =?us-ascii?Q?em3MHc7IdvB/MipXTBAQ0tCJTWYeTEPigEtl3fJuB7EjxIKOu273f4OhB+y0?=
 =?us-ascii?Q?xo1FI/pkcsEjgQwhaYsol8YPHYgFSmnGYpC4P2AI5p151sMloLqZlHIzPFGi?=
 =?us-ascii?Q?07OMyNj4rTjukd5GPULi0w+zTe0KOZVBWr5G153M?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8592f5f-a1d2-4220-02ca-08de1aed78c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2025 15:27:16.8573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qppKAqIgP9VcG2X4RpeqJB+I4PybRpkC4m8kmHCGHyQzMXVUXpsWw/pu2ATwY65zYMaF8Ph9KF2FLS0RS1w1+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7114
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762183642; x=1793719642;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j7LHqTJPnn0Hop8hBiGdda3eSruy4cR4miI/VlwyAHI=;
 b=gffkGqRYm+S59UY4pVRLMhbPftY34E2PZNt4SgylAlSQxZJwUW/OQ0mx
 LvlqyC/9tMIdj3HFyTt3ZDvb1FngEzsYjs7dHB+WrOHLtst+97eqLTlqL
 MuZD0VjSmhkamSN00TjEaDdUj+3Q9XTtUAPfiHfJq9fvueYQKVnlwapwz
 Gdqmt9WwHXr/Ewg4Q6UBPv97unKCxa4SUTwwgdyvs4aR5KuRfk5Mn0lwS
 nLw4+1OZCcF9fwf8zxzvxKjk/0xpZPTHUbYW8nT3vnNxnv/XK37a/KOsh
 zvZad93idXZ9w36drBZdxxdfo0fl3GY0YOwr9tyu4oMaZx3GjR28qB8B5
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gffkGqRY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 02/10] idpf: introduce
 idpf_q_vec_rsrc struct and move vector resources to it
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
> Joshua Hay
> Sent: Tuesday, October 21, 2025 4:31 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v9 02/10] idpf: introduce
> idpf_q_vec_rsrc struct and move vector resources to it
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> To group all the vector and queue resources, introduce idpf_q_vec_rsrc
> structure. This helps to reuse the same config path functions by other
> features. For example, PTP implementation can use the existing config
> infrastructure to configure secondary mailbox by passing its queue and ve=
ctor
> info. It also helps to avoid any duplication of code.
>=20
> Existing queue and vector resources are grouped as default resources.
> This patch moves vector info to the newly introduced structure.
> Following patch moves the queue resources.
>=20
> While at it, declare the loop iterator for 'num_q_vectors' in loop and us=
e the
> correct type.
>=20
> Include idpf_q_vec_rsrc backpointer in idpf_alloc_queue_set along with vp=
ort.
>=20
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
> v8: rebase on AF_XDP series
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>

