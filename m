Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA218BB287
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 May 2024 20:17:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2008C41D75;
	Fri,  3 May 2024 18:17:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i9H71mQAKk78; Fri,  3 May 2024 18:17:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66E0F41D79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714760229;
	bh=5RXPMOGRnX4JlUMSaEjR3hP8stC4wj+DqnNgWph2c4s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eBFOg/UPliiD86ElFTiBs8u5vFwQZzSHWJxRrWxJD2LbRFT8HvvsC+gVtIzeYb8il
	 0aH8aV2ovyP5RKFQslMBlgsmUHgkK0nA3IapD67ZAIPW5WnwERrJkrw9GJTUOlNVD+
	 NhDsWZHZ7ny58ZOS1ISzPZDvzu8ndl8dmcXZXh8w52DVG0H926NxmyNaG8mNjoliXk
	 JHq7HOTWbIXMPPXfe0hjsE3aSDIJVf/DGWbgR6evavCEiH44IKqR3eGaPpv6ARMbjh
	 lL1sTGuPkabuhMXEtd/62CYzK70aI1hKIRBnCCTQc1HuRel+/gzjJrrO7QTreBW8kT
	 O4myyGHQqg/aQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66E0F41D79;
	Fri,  3 May 2024 18:17:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 74EC71BF311
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 18:17:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C82E83BDA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 18:17:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V9XZY41Ik8Jx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 May 2024 18:17:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E455783BB8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E455783BB8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E455783BB8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 18:17:05 +0000 (UTC)
X-CSE-ConnectionGUID: vYTbJlOmRky+d3oWb6fCRA==
X-CSE-MsgGUID: FE9F86ytRDm/PLWTLaE2Qw==
X-IronPort-AV: E=McAfee;i="6600,9927,11063"; a="10459000"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10459000"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 11:17:05 -0700
X-CSE-ConnectionGUID: 2zcr8ONLTOeteDfN/NH15Q==
X-CSE-MsgGUID: hzY5GqI3QWudGyqaOYXqjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27400040"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 May 2024 11:17:05 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 3 May 2024 11:17:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 3 May 2024 11:17:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 3 May 2024 11:17:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SP0yQTaFy0qqktV/UfeuMRuK1FeVUOiFl/Ng4lkrLzokRlpmc9mjZKPyT2UkK1/stxttK1nY7d7E4GJ+oXjS+gm1SRsEobFC8Fc/SojvX8zndeB4F13ruqfbilrFyn5UwfhP1G2ZDv8/d5n+cd8ae0FExUmnxylMipmvQw4hm3SYfgDYCFMewyIqFp7xBXLgePb9H9MHshjRgvQtFtDoORIVauegyBxySbVUXh7zkwMVlk9BCLAHoRba2xJ+ylYDFWJ9ptUO0tAljgOrUehwpkzc/CPb98Xn0VfMM7ExlGe3rhSKz5YIbDYZdqG5A4m88Lk14s6FWiygh0y0u7ZCUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5RXPMOGRnX4JlUMSaEjR3hP8stC4wj+DqnNgWph2c4s=;
 b=E0aTKk7Zfm8eAbv1I074AjUg4JXtekvmM16kokolye4QtVAKHtPDsZD5swBIhWuaAI7xbRo2xuWN/iM8h6fcXTywiAKiCpnJ0asGQ2r5RNtgc8LfDBsOg1Dcu8A+rUVVImJ4y2scOQpgAaUOPhO5KrcfV8ubTDL+k+F2vW9XUBz9kF0X3plF0xXAa73DeGVXbq4V5sgZgqMnn8KFhRV4QT/o217Bc8yInorLaOq0Eto+5OtTrlv1SWGbGatFXNUMX95T9xvfrPUGkY96oJ069XVib/dR3dteaRREo3RuAAWQDRuPCd7stclO51/TkIQjdBXz03e4BT46vZJ5bz+35Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA3PR11MB7555.namprd11.prod.outlook.com (2603:10b6:806:311::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Fri, 3 May
 2024 18:17:00 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7544.029; Fri, 3 May 2024
 18:17:00 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Ricky Wu <en-wei.wu@canonical.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>
Thread-Topic: [PATCH v2 1/2] e1000e: let the sleep codes run every time
Thread-Index: AQHanUNg1fw+5ujRE0uu5oPk5mp1YLGF0XzA
Date: Fri, 3 May 2024 18:17:00 +0000
Message-ID: <CO1PR11MB5089D44A4EBA6CA829A23D8AD61F2@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240503101824.32717-1-en-wei.wu@canonical.com>
In-Reply-To: <20240503101824.32717-1-en-wei.wu@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|SA3PR11MB7555:EE_
x-ms-office365-filtering-correlation-id: 926b8ff3-3d9c-45fc-fd6b-08dc6b9d3a12
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?0yAnLn5rU0PtoniOdFjpAxy6m73Zy7oFE7vJgJI68eUp2g7BQvuuYMcKHVlY?=
 =?us-ascii?Q?GRRuMOMq0zOXSXejgF6GZN66xFFt0B3fk32RDAQH8XcPutKYByZPbvBnKIGK?=
 =?us-ascii?Q?brPUinczaodMU5xCwSfGoT+TM/532qUcwadG+Xoc9X2tkohIFTRCqbMFYNGB?=
 =?us-ascii?Q?96zta7seJWe4IjX6Ipql1KlHYjC5bC0C9fZpZSnCp5z1YH2VMl3Gq5J+Jb/a?=
 =?us-ascii?Q?hqgqZeano5aG0DUHu26dK2sKyD1Xf1vxC+BiP5rOjLuZBicBKwqNf/u4KL/H?=
 =?us-ascii?Q?7Dpd/xPqbcgNVNl6HlZkLrj+ahbueCqDhR8I0nK6Z6C6GgfSTIhY7cC/Ew/2?=
 =?us-ascii?Q?aqb0F/avWE1aArDgB9jzjUi21WVrFeBVTgGJ2O65rgXFJAUUlvnE9bJFESZl?=
 =?us-ascii?Q?MbiwAK7ihXnQ45m1NfrPc50PmH5kv3UJ4TjpVIq7Hhi8S8DFG99V3syw3MRX?=
 =?us-ascii?Q?PfN1D3k2/uK6pM8ArsCkXLa1dKIuuujOIoNc4mLu1rbk4gyZw5oSha3xnp72?=
 =?us-ascii?Q?B+c/HwSlk2OIBoC29jHeELElH4x3dRCJYw0LlqKC7cVRYYKYAr4FdjoSCHqv?=
 =?us-ascii?Q?wQlObAoCFfgaog0g4Jl/tRmWMNbPfKOKJD08fUaKgoyiX32fPwwxjbcbrdx3?=
 =?us-ascii?Q?Bp8soUS9mucMW3F+Yhwns32k50EFtA5a68W/1PvBEVACqtToLOio2DilK1b/?=
 =?us-ascii?Q?trSDrl1wz1k8ivQN0O/iEeZHfV9zANyVfA185vzSI/Y4JSl5PrN9aN0Kt+CJ?=
 =?us-ascii?Q?YOvnJ5Uci/LJmB5080sY+cnflRXB8D+IOHfBu/dpOA1jfIHsCEWvTQe8VleU?=
 =?us-ascii?Q?xgysta9aCbosCQt0fUP4sU6T7F1L5BKpZSSBtBvcU9Kr5QyoO9/xRxHGvSKI?=
 =?us-ascii?Q?ltC9hapmF+hdbbdlmbBMY/O/uT0OKVJUxbMOLsgSPYKKNlLcnzSovdo4JWai?=
 =?us-ascii?Q?VjkRh1eVSi7maQxGxLTHE6h3XdS9orCIrFqj12l9Pf1dN5yEX0K/4UPvHl0O?=
 =?us-ascii?Q?IK8Fq2NN2HmUlbRWhA0AsdayDSB+ymk13Z5QeQAzQl19XRvbUuNdtaUv1VWx?=
 =?us-ascii?Q?GzRfSe4/ceNTbPMfkSgBvor3vIhUvP+03j6wYwk8647XZgOMaI1qzI9Tg7dg?=
 =?us-ascii?Q?ygLXhZasx5X700IDIArKIkZ0E7EEboYqHtojrUjlgzmqRDQWu0rgjj2DZQ6M?=
 =?us-ascii?Q?AaQGTv2LHKbPn6d+coVWrHIoG/y7AYvABSInz56i2On5vX//E92s50RZ/Lau?=
 =?us-ascii?Q?KmPvEFNFC3C8Pj6E9KJY7pn7eYKx0U7jT35ZNB+h9wJAGMFQZQCcMvcYG8YP?=
 =?us-ascii?Q?gJYwenaRVOVKJV1fbPD6fhc9XTi8+tqSNPQN2uZ4ev/mkQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YRs225Ehat+DtDbZEWRKT43aLf8QsJotmmC6s3+bPud9yFu4YGaa2gZH9khK?=
 =?us-ascii?Q?rqqbhcPMD5t9pZGJrml/tK6z+Tngq2YioI9e5JUDzImDC2BSC1FISpzaQIz/?=
 =?us-ascii?Q?g/ul3CeEH5jkoavBkBdIYzx2JXT4cWh6KN7rWXDkpUXN83HGjER6Uo01yGF5?=
 =?us-ascii?Q?p7odTTiRXJQEBcPZuz7kEWD32Vp5BUUv08eq1WuXGqQzXNuFhF99AuXHgss2?=
 =?us-ascii?Q?NCqGSAad7OMolhDxPsujQmhL7FfQvZVAYBM7rRK0Wn85fS27ZCa6eqbeY+z9?=
 =?us-ascii?Q?sgBzB0w/kVG3u95V1OL5auja3gM87UUlS7fJ7AoJMpi9NHqarTVFCXQvJVg5?=
 =?us-ascii?Q?8lIX7Oc5M0EL018ard/DbgS0oWbDvNMVjeTkVE2r+s0beTzfN9HueM5u57Lt?=
 =?us-ascii?Q?tpQXwLt+Uad2SZ7QeX5l4bReuzyvBqp2WCb7NOLHlrNOkSKWeN5KjPiliQDT?=
 =?us-ascii?Q?rIhrQ0qRYUShpWsEfu0H1zt2ygpXXh90Jyn1VVKfPjwgEOatgcXsRLtCngxf?=
 =?us-ascii?Q?jSb7E6EaxDFw9pVaXtaXMG96TiDswBGJGcQVyWM/d0mcndV948ysEGBg/2YD?=
 =?us-ascii?Q?kOE3FSLvkOlbok5oQtGD4biagHQuPI99PsL493X8mvbJQdFErQpOV4gBvfaJ?=
 =?us-ascii?Q?Qhc4EuxeOqmQ6pgRq9frQrdq0dgbPUsJ1dMEsvVy9AO3QIjMxdVIKucFg0nP?=
 =?us-ascii?Q?L8nZO7f54Mx9h9ySUNfwkQ87G8XxM1cPf/ESOqisbGlt2u4YHHpjzQg8vo+T?=
 =?us-ascii?Q?lY1dmZZVr7pYGiaseCYG9iA9ALnuUnZ40aGoJuWaMmOE67AyZHI93fOYKnin?=
 =?us-ascii?Q?s3twK5u09+kaGCd0Z4LZdkaq2EHbOriLLS10Q7XCD2KGwJIj+Yxh4NSQVAth?=
 =?us-ascii?Q?BoyCmlhSnNOpG/K2U51JwTQ9DxiJnC2ivXY44lRwS/sr0B0ldL5wT+rdLZ9J?=
 =?us-ascii?Q?g8bV5dBSaWrbrbrlzu8RCYClW2VjdOIN5+hcbxNJgdSDrnw0BAPwz2DNMBQ0?=
 =?us-ascii?Q?jYoOglXTodmYHM83PqldKjQVyc2wwLFUe/449rxWl7anyx1gXld9z0hcw61T?=
 =?us-ascii?Q?1hvtnqOJ10XeNbTfOxErmCpqoUqgrMEo2iMF+kM4iVB6BOTGUiG+w/ozpR6j?=
 =?us-ascii?Q?SADVsTCCPJ3Xos/u6o/XvQ0VU6QSTwd566glyHYaxWbyMhDL5q6q/0q6l+HL?=
 =?us-ascii?Q?gRDhrdSFTNDKdje4fJ4PuxlA6tzNFB6KIp/UOf3/Ud/WGxjQ7EOXxzd75uqQ?=
 =?us-ascii?Q?6ACBdJONcQBpWtFcL+uL25NMWNg2g51KTD0WTiHUgaWs9p2CWU10/drlRvAC?=
 =?us-ascii?Q?/rkMe+19Oc9Amp9SuvLelFzJYxajTDzuxnBMkzPcpwvnLbU4G7rMAlDcg5Ry?=
 =?us-ascii?Q?/hpOEji70dKybDYqSMT4r8ZAl0gVO2qMBDd+CbtXbCuQ0vrxVNaPXfkpXdTg?=
 =?us-ascii?Q?7j9TIdN5KOoNr/zPHFEJqesBO10QMuuYv2Iz6YBwaaRXqdAmLwOUQ+a6Cj50?=
 =?us-ascii?Q?CkLOa1rMMKPiFrF8BL6Te3n30f2fjfnCufkoYqlqZ8o6oSZzyVQF2R8SCqai?=
 =?us-ascii?Q?A/nDtMxwBPUkfs6jDyhXa+Q+wqPmGD7wRkXIy4GF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 926b8ff3-3d9c-45fc-fd6b-08dc6b9d3a12
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2024 18:17:00.7797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 20BTE0f5VCYNLLWrXrN+5oBk/sWUDkfmpfLIgqU4eXNqYztAnfQ3RPm1o5DEVCblpHIGO7Ic9Oy24r0f51VMlAfk412x9QZJAU/nQ64r4Og=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7555
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714760226; x=1746296226;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5RXPMOGRnX4JlUMSaEjR3hP8stC4wj+DqnNgWph2c4s=;
 b=ZIxclqyJNmsloXS1Cui/vQeVbSgipJrpIIfuvicNuRYvuySPrDkcxRfE
 4VmV4w++RVn3SSzdmP+U3JZSXMYU5mqbzrANdFIjYAtWN3qTJ8Y6CFsny
 /0tHmK9tRKEIXrpgN4agoh66v2JtLeSuGJpiAEQXj/UkZdL/Ab/of5Nrn
 OI6XMfDkI+50L5122rml/43J14mV09HMYj60x+aOLQ+16CtdJ61z6chYg
 2xWWt3lat0Dt10rm3374WLDWDKQxQBxvZu0W5KtolpuXPz1kMDYS7i+y9
 tl9oqb5AfhzZLRh5wVyHZEd9FHY52YI8Nw8JumnghASTYU6WNBA/XqPFz
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZIxclqyJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/2] e1000e: let the sleep codes
 run every time
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "rickywu0421@gmail.com" <rickywu0421@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Ricky Wu <en-wei.wu@canonical.com>
> Sent: Friday, May 3, 2024 3:18 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; rickywu0421@gmail.com; en-wei.wu@canonical.com
> Subject: [PATCH v2 1/2] e1000e: let the sleep codes run every time
>=20
> Originally, the sleep codes being moved forward only
> ran if we met some conditions (e.g. BMSR_LSTATUS bit
> not set in phy_status). Moving these sleep codes forward
> makes the usec_interval take effect every time.
>=20
> Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>

What's the goal here? Do we need to sleep before initially checking the sta=
te?=20

