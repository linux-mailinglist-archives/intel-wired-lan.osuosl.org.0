Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A068CFAC3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 09:59:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B9C740B93;
	Mon, 27 May 2024 07:59:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lw-3Ax4Uk4us; Mon, 27 May 2024 07:59:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5200F40B96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716796785;
	bh=R9KBTN+Fjf536SORt7ys4YX1xr7A/A9KESG0ncQoM3I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7x5dmlg9RESwiR6254WPpnuZnHsxRGYHZObMzLFbpz4z8k/QrY76xCxDWMHTLoVlw
	 wKG85rNCeBqI0lGjBSL85+zvxsiv3rOMRBSUZYqNdKUl0b2XBCPivtyoOprNKWeZ+C
	 hC4lIRprAfdBSM/xhcjTugdThOFGWTIQ1m+ZB7TBEgVVelFDt0u2PHXMpKNKwXSzUe
	 S1arG8YZZ9OeKT8IDyf434t2eJ4ZHK/KfCf1ORJtGnTGFmORnxlpoGWp7NBvdhkuUW
	 uzpQmmTFypk9zYMsTK/OvzZDleHWvNQpdK1ABaxSjbicPgzRElvc7KEO9cBBv0cynD
	 4jDcyjUr1ibsA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5200F40B96;
	Mon, 27 May 2024 07:59:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 424301D186D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 07:59:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2AF744027B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 07:59:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id foS2CAWH1ke0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 07:59:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 297D040277
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 297D040277
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 297D040277
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 07:59:42 +0000 (UTC)
X-CSE-ConnectionGUID: U8X9BHyJS1qM7o3X3xBA/A==
X-CSE-MsgGUID: +mtoQkUuR/SplmjjQMM/pQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="13044365"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="13044365"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:59:42 -0700
X-CSE-ConnectionGUID: eNR7Z4KQQrmxfqY04C6o7A==
X-CSE-MsgGUID: q/RvRsP4SpSttPNJ3DeDZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="72088453"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 00:59:42 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 00:59:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 00:59:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 00:59:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YfYQespUfKJ3MDiUqge3+q1IT73Zh976rsKQZMP8uqEH/cHwJ2iDSgGcPra0jsGendNYtW7nEJtt2Fhsa6QnV6O46R8WxK8RYSzbUASxrowQcrH8f/w8o973vOEKFDJ0ayNTLWQbWdji2x6juaI3E9CtrFRispgUHJ5daGRyhw/+Nej0hlG+vWBP7Y9fgPM9A0THR9Xxs0jSH39aRMaqKLbGd9+HTadlIugxDyBBLbAzqjd+SQTY5NgWmZHCzQ27Sh0jIctyOj/ocu5hdNnvWXduqm3qKtSpCLJkv2o0LFAuXyKzUSfXMlzLZSMaKByGpjDm2FYI430bk3D++JlhRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R9KBTN+Fjf536SORt7ys4YX1xr7A/A9KESG0ncQoM3I=;
 b=RDTQjkcLZwJodmgwRzdCSBQPsYBQff5jWQyxblyrjUls3an0dRvGghexAE4QPHB9hOi9/VTmz5kZSL6LCQvnQwRUJcZyZllagVZ5cW+Kl9M3i6DZzm584VzvztwQVsnCpyyzCUPS7MlIoTK4zPKignjRMVofGV7ju77OQWzgDCKd7xlnx9TM2nc+mKh4txAR52GgCuCmEyRoPvOpVHvpSeklxieJkNiYUiLmPCqPjSrnktZv5O2kZA55XxVYRXbc30bjqkPREgL7/4IzTEdh1PcQrDPSSnJshACit1L5fkmDd1sKTYjWdKJdJVv5rm63LeMjLpHMQhhhFl6tDYfCyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DS7PR11MB6248.namprd11.prod.outlook.com (2603:10b6:8:97::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Mon, 27 May
 2024 07:59:39 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7611.016; Mon, 27 May 2024
 07:59:39 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v10 iwl-next 08/12] ice: Change CGU
 regs struct to anonymous
Thread-Index: AQHalky0TTnZPil2SUe3LfgqA6N6WbGq6s5w
Date: Mon, 27 May 2024 07:59:39 +0000
Message-ID: <CYYPR11MB8429167C084AEE2B33463363BDF02@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240424133542.113933-16-karol.kolacinski@intel.com>
 <20240424133542.113933-23-karol.kolacinski@intel.com>
In-Reply-To: <20240424133542.113933-23-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DS7PR11MB6248:EE_
x-ms-office365-filtering-correlation-id: 3b71ffbf-f5bf-4643-b1ee-08dc7e22f5b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?XW19ta1TkcMoI8kIsHv9DVhBtdt3Ekm5Uat1iUhl3tMMFGM87tcS8bf9PI5y?=
 =?us-ascii?Q?Mv/ZCDeZtrQqEu8Xyeat/jziEHNJK7aNe2zkH+QqAROzU6PHWyaUCtlQtBBS?=
 =?us-ascii?Q?1sAPwjDWJO+2knd4uTVe3V/poxE1NovhMwQXpu7Yv0f4WMqO8H8m2rVCOzTs?=
 =?us-ascii?Q?TteyyzGDDLFcOJ/9z72KcOFNbvE1dzZxXJ6m+L7S0xxXoTQr7unjdVyR87qL?=
 =?us-ascii?Q?Vm9xU7D6+8KgcYWneusDhLZW+Fhp0E/vDn4q/Oe/4b8p41sFjoILc3enANng?=
 =?us-ascii?Q?uJwJW83DmTo1PH3HaLGg3j7XQMdRrPAQOmORU80vTeKlx65UdHsGEWh8YlXt?=
 =?us-ascii?Q?5R6b4rzAMLhDv2YwJRqr9mJgAFhqUnfZYhndDtJHqt/DnvF++tekpfSvXaqs?=
 =?us-ascii?Q?IHkrUUBVsmifCmztOKkjOq9wyqEzoM7/cUfl7J/C9HtPzs9Oa0XeYcbdM7OH?=
 =?us-ascii?Q?PXXcwAeWdWAfLQgSggFzrdWfrNNU5Vi/nw8H1DXFy7ZRa9R5WStBb1Iav7qV?=
 =?us-ascii?Q?Rmzvdo4i+erpGvR5+mG9h9s7HqwA2ts6wAM8HlCsw2sBq4FV+WvpH5HKnQCr?=
 =?us-ascii?Q?NfSoSqyzcEbLSD/JgSjbn3l21D+JZCu3aclJdyubxs5wS53xMyn/5HGnetL5?=
 =?us-ascii?Q?bbyM+LUwYLI21qrNQMDJa2b7XuT4iGEJW6un3L7tJ3ENEEGadj3qIu5fZPcu?=
 =?us-ascii?Q?8fSxeyXFOJbLDc8O4yJ1J/73dfM4Ey3uxx2Lf7Dd7shOE8aLTGSC2aPD9Bhf?=
 =?us-ascii?Q?kD827Sg/VJ7CS/5T5ASCvWibPi9iQbvAh+KfO6HLE6kKibCDmHGZmi6hQGmW?=
 =?us-ascii?Q?WfHYFkwPhp1bF37OUtM2ANrg3p36KOQzzaCls2mXzbEqDZWeVTiMhFeIiP0m?=
 =?us-ascii?Q?UoVg9fO8NVLg0VT8RFpG81hsZTjpEkras3kXlQ3QEO2cQu5WftHrDzJXw+dR?=
 =?us-ascii?Q?7UsKCiOGjXvGvIw+cUazUwPtlWsL1K4I7DCvSMP17ZtGBlwTskWDzpudEsJI?=
 =?us-ascii?Q?W/tjacHkATMh90abUfp5uPaTtHBanB1yzwPmQoAQfj9QPqIOYy4yW2Dud8vg?=
 =?us-ascii?Q?Bx8+T+QsjYD43qeqZihTZcxlI1OB2wIxkCesBA6SV+m7d88KQKUw2QK09+To?=
 =?us-ascii?Q?KVgnPMklF7526/SnV4k/oQr093csPMk/88+dGEJl8E3Qxha1e/UjdzEYZOaZ?=
 =?us-ascii?Q?+9XGpdy5CbvRVlT0ahgqTk+fgFLXgLSFoxMFhvmbifB6Ws2MsWVUr3CUQzO/?=
 =?us-ascii?Q?DGoSJ0cajhkX9GqRAy/6N+s3azycWt12giIkHQSArMgsIMv10TavybLbfo/L?=
 =?us-ascii?Q?1rfx0MG3gMbyyYq/XRB1Kd8R9tkZuS6FZU5BcfStpd6GPw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UbZv15oSskdkHLo7eZ1v3BumteVx3wkqjWJ54v1zsYyD7IlaiO+aTpPgpvHo?=
 =?us-ascii?Q?QfVAjbTw2xB6I1y2nD9eLHUeGpVjhcdyythPKxCG3U6wM47CDmD3ZaFxoC9t?=
 =?us-ascii?Q?kGVtd/bURP74G6px3+lTK4tB+9ypio+tkDXeW3+BzW+hWg6OKVCEpWrDYv1I?=
 =?us-ascii?Q?MYZi7GMGy5Vcz38yB673Kt2nFHZHK2kwLvBWIwl6q69HWH95FhBCrxpOPyol?=
 =?us-ascii?Q?AUy9+qdawm8E5UVs7V1QWXGrnsiLhFn2nGYatgIsHXn8mbqYjXosGvvla6l9?=
 =?us-ascii?Q?MIbvA2Zc2wAioOVfbqME78YVJUgiYcYmc53oK1RnFOj/bHgLcmhczzvqRnYI?=
 =?us-ascii?Q?QCVF2qOAYe4dXdyxafy8U+csTYrmTXb/vPGNUu/FLDg+V5/LnMxQK1tHVimS?=
 =?us-ascii?Q?PO5vvjaa7JbkqhwlZUTCSto9emK0qycevhg3KmDD1vAAFHkQieVuwSGU+R7D?=
 =?us-ascii?Q?k+3ZylX3MkRFkExbgaUZLVCLxYCvT0q0aw/3QHu1XeHSSn1lg+9wtJP/QBf+?=
 =?us-ascii?Q?IupZmFDshgF6L7VAaVEXsnYRnwFGmOjM9rCe4/vhdsHVCRSTaPyPpbDKtUyt?=
 =?us-ascii?Q?ralOZ/IrymBHC2bgnSgN24v+U9I2FWB/lpB1AoAXpmbhkCboJqovrUvyiilf?=
 =?us-ascii?Q?AO5taXelTBBqSJoCUE3zrWam0utA2qUyNsvdMr25cje34MoBZdhqrDRN5kTX?=
 =?us-ascii?Q?Mjg7NYOUjFArmN3d6NhI/bwGGm/v3rLyUS3Ak/zR4WqL3LhQZ/i2hehjncnk?=
 =?us-ascii?Q?Mvzw0M0T5BELBskBKq+MBhyCuTfK0mjO5F2avWtsZZBnUR72s64+O8123Wdw?=
 =?us-ascii?Q?Ts8wZGDiwUuS9/XMzpQCNGlkc7BOfLAK7WqXXlCozzbapoV8HCJA/JPkHL5Q?=
 =?us-ascii?Q?+WrfagoOOkmTqPP1v+Q0UCc8Q+mfr0j9le/j/zlmGK+CSSi+WWLtqjXoGDvT?=
 =?us-ascii?Q?a9VgCGqeInfBiQKPOjfharfKOD/1QmlhBDxGOmG61blTVRV68k+MD9AiqFKM?=
 =?us-ascii?Q?Joanr15n57cevBwClIcWHl54hLpeIploLa/+DtHT/VueOnDadgAdKtTkQA/y?=
 =?us-ascii?Q?k0EgdjTdxqSZnGI3xfU2MC9YACAl1whEVv2yu/O0kDcXZcjwK8R9D8T6eipI?=
 =?us-ascii?Q?sXVkB9OBKCvksJeQbjmgXcdn7HtjdaYYoq5YIQi78t3qZbs4oOixIWLI+SS+?=
 =?us-ascii?Q?PIacyMg/vrJe4dtjDNQVC+lxIiKX8zq6AyZJz925QZn7RS9Ds3iT9RHR6Rgn?=
 =?us-ascii?Q?mqPBLRV4fMrlVYIMrjGpt6Kdii8qDkuMl0Sau6wyNV7+LNL2PH3q/NuspdF6?=
 =?us-ascii?Q?unU97O5oBReRuF4CRdUEnBklqAyYEVfiz5wcaMekBhwNUHeseBxXv0ledwx3?=
 =?us-ascii?Q?Hrf654amP6XT2p4zw4Z/3xvAN3fomreN/pYWr8e269azmHpqw/YLvbtibUMZ?=
 =?us-ascii?Q?CKZBhdeIzAZcDufLXrulA9SqpUFIyOSU5FiEooothAloFFy2OT6j72YbAqer?=
 =?us-ascii?Q?sUx+7l6Ics56LF2pF50CRcN/yXv3hWgGhBW7snq8n5WMFQXJoIyrOnCM1RUi?=
 =?us-ascii?Q?YDWkNSHVtO5D6FFVyKH6pbgiUDb2VarICA1N/Kb2zce20VlyRbS0JzoLkMe/?=
 =?us-ascii?Q?Mg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b71ffbf-f5bf-4643-b1ee-08dc7e22f5b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2024 07:59:39.5652 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TIeTlhALQDCXUNWfExNsNNrEbwZb7yEOB/gz0WHx6htPNS+gCkMT4DJxeB5JPZL0OG9EDH7jn57H7qB/MSwLCRxlpMWZJmjoclqUdm8qMAUVXjPOFeJkegtuFnshSl6P
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6248
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716796782; x=1748332782;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r0y/KejTflAQkokMOJqpqDXx/ivp0n9/jT/+v0KPYgg=;
 b=UJvSgsjiyNDnyN0pOS4LdHN55NHm+poHmdplkwGl7TW2Cata4DrA6IBD
 wvpeemmaigT2eteDs5noWAJet4hDFfEDfihwm6V+mDr68pZ5HOczjPE8J
 FplfOTkVLh77CNnVM2RUKLUnAPK9I/MQwoZ15vJTPgd5Ri8qCAxEE1REB
 xWG5LCjfDOqKsc99xwR2BKgZ78e+qv9du8vsX9azeSI1hqaGoGRVoyTc5
 h5Ee6fJsxcNoFPcAk/nqEHP2PeoIcR+UYQ7KagloYtheY+NZFnFoZgrud
 3apsJ8yhjmVR2L5NAGggpKjNoEF1iT6iqf5R20TawtnQ8g1ZC9g7vflM+
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UJvSgsji
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 08/12] ice: Change CGU
 regs struct to anonymous
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Wednesday, April 24, 2024 7:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony =
L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@int=
el.com>
> Subject: [Intel-wired-lan] [PATCH v10 iwl-next 08/12] ice: Change CGU reg=
s struct to anonymous
>
> Simplify the code by using anonymous struct in CGU registers instead of n=
aming each structure 'field'.
>
> Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_cgu_regs.h | 12 ++---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 44 +++++++++----------
>  2 files changed, 28 insertions(+), 28 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

