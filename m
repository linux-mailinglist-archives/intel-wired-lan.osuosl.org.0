Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A555995765
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2024 21:07:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7808880D66;
	Tue,  8 Oct 2024 19:06:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dBpET-ch84x1; Tue,  8 Oct 2024 19:06:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B023A80D69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728414418;
	bh=9K7/uPjFrhGD2RGX3FFyemzSp5eHq3FIkoiMSUrmWAA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3JC7Q5OVGBnE7nJ3+Bsr6HWILBTrDr8ydPtJSU8PPa0y90iOCdXoYG0YPsMEVkdto
	 nMXjKDsDjjb91O2peqRsWPOqlw4nDXGLfc3NZm+ty2yl3oF5oezJl4RnyMEx2o38NB
	 y/Q+OHgp4JU45SjkyCzlitK2XXC70HlbD4+2jUo1mP5xlZlBlM1ScSuXpuPo578ldn
	 7Pq9OawED2hHVcp2MSRNsUxdReGXyxELpmHSkEildhvhGSGTgfYjtE8IYqAbPNG/L/
	 BB5Rtwrepg1JDX/vx3LNZinKlHykrd0H3TRY6KtRT1XZl0Pw96yr8lTdTNGVXvT29o
	 MFmIZZja6wDNQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B023A80D69;
	Tue,  8 Oct 2024 19:06:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8FE0A1BF479
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 19:06:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D8EF607B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 19:06:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aCIvUOet3E0R for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2024 19:06:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5DA7560778
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DA7560778
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5DA7560778
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 19:06:54 +0000 (UTC)
X-CSE-ConnectionGUID: EjoZJOkVS0ifdngcQ6kgiA==
X-CSE-MsgGUID: Sx/HHBMFQnWjfgLtAHhkcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="45115866"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="45115866"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 12:06:54 -0700
X-CSE-ConnectionGUID: 0u/dE2+6ScKjqvfWE1Gb2A==
X-CSE-MsgGUID: k/nrj3naTZ+SsHK0qLYzlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="75642028"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 12:06:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 12:06:53 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 12:06:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 12:06:52 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 12:06:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CpkLwRq4bhHACxVmUxDNdS2biXqAWIMeXnlk/L6REH49Aaz7IJp4aF/VeheUrzBK9uVwyP/cM2Kj94TWtKYKi+Jj/2rxJtpsz12jaAn5ujnRds/sRsyMcEpPFE6a5wC/GGUg3DvL6UpLC4lyxfILl7rq0gdOFRMtTbyg4NJAy39WCAUX5Qm3kqV1erhXKCAsndKrKB3mDvNchYJA+240FnK/P9xljcN7hi7Mx0HpktgrVqqupLkS80IfKg1EwnGoCgkXCknHUdMT9XcFwomimwHAEy7ogo3nj4ccEsH2ZdfIaN4jt5lIzz51ny/sJbY8sowKVCXWHbbzaCtVMT12dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9K7/uPjFrhGD2RGX3FFyemzSp5eHq3FIkoiMSUrmWAA=;
 b=eEnU58NXwOTAk05Qf2Ba8IoY/uCUj5aPZuxBDxjMlu6TLTPwxnCRxofebQr1meaYJoaPPRV6aC3vmHvqGVmZH8nzcPR/jPyb5o0nCgUoUF8OaPmeeozTvAapV0lst4uzqxairhP014G3qPz+nUDOdaaeqBQYoPsOFrPRO37y7nqXPLjm3XccZg9wNCGduuDe79WOS3ZngTkpw/x1N1oPJNNn5BEBXvNrZJ0Ej3WB6O+qMhxAyFVevVEF01vkbpWsM6Gd6B6C9eoxihADaI+E+Ad3jmj22BOS5Enj9lSjBKpDZZi8xHnOSwQHCTxlH7X76kaakLNc9JKxO4o81JnXyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 SJ0PR11MB4784.namprd11.prod.outlook.com (2603:10b6:a03:2da::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8026.22; Tue, 8 Oct 2024 19:06:49 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a%4]) with mapi id 15.20.8048.013; Tue, 8 Oct 2024
 19:06:48 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [RFC PATCH 0/2] ptp: add control over HW timestamp latch point
Thread-Index: AQHbFd0t7o14mOGSd0+ZtjITVvOjFbJ7eiAAgAHDhFA=
Date: Tue, 8 Oct 2024 19:06:48 +0000
Message-ID: <DM6PR11MB4657CA39A7CDDA926664E8289B7E2@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20241003213754.926691-1-arkadiusz.kubalewski@intel.com>
 <ZwQHHmLeBUBpH71p@hoboy.vegasvil.org>
In-Reply-To: <ZwQHHmLeBUBpH71p@hoboy.vegasvil.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|SJ0PR11MB4784:EE_
x-ms-office365-filtering-correlation-id: 60722f2e-f4cb-43e7-7642-08dce7cc5c60
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?/GJ5aCCM1T9bWhegstVnJZG2oSxgBW3om/HLBxh3LlwqFiPSMLn4RdEUYxcq?=
 =?us-ascii?Q?b2p9BXfZePezevfwJn+k8oAH5NkvEQb6Vfc6X4guZ/eVVS5mKk+bulg6g2/k?=
 =?us-ascii?Q?oP2XMcFfNE0GMce7G6YORuu33gE9PBgraAs58pw6FC9z9skKSx0IssWoAUX0?=
 =?us-ascii?Q?5a9A9uObuS7A+hd/XdVjtT0BHs8ukmoQuv9c5TvVPX8sC9EKs4CETQ/ukYBV?=
 =?us-ascii?Q?4jd/cBVKVP6ir0XWJd5Yhehc3Csj8e8OTldkSpHi4NoDbjN61eEFuSB0iz4/?=
 =?us-ascii?Q?9OtTUZWj+ey5/GbkKIs/C2O3KmfO8nIG/SOxxVNmscm4ud7zUkPyPwT9z9TC?=
 =?us-ascii?Q?c9cFIXDjnKzBaUqI3jkbjez03SKpYnUVhaLVmwtxYWzZU00s7jFOeOIVLh0c?=
 =?us-ascii?Q?bDzDKrinoy81sD2CgDcFgqg7+9xwP8heGkOVC1RQ5haAblwvXpd9I/hMWusU?=
 =?us-ascii?Q?z6+dYxOjcLLxoOnPf6XuGB1cq+nxnVjoF/KzMLCm3DpqmnfgbmxsQjh9yJRs?=
 =?us-ascii?Q?Cr+EYvlIuulLjj2fCwkawp+HIEe7VD16pI2z74tCxjbdS78u867lqEG1tikK?=
 =?us-ascii?Q?svhsN0GdGkSf6NPoCtbh11I1/H8I8Mu7p/xUabs0TP0d6klpDgovxLhyM+0Z?=
 =?us-ascii?Q?68z8W1FlaPyDDfQhcbc/RAFJh//sFMVp0r0MU8HqEG8jUbepsKnwNmNMfE81?=
 =?us-ascii?Q?Cvj4/gGpP6IbkwLBsojThcweiTwU8UHk6s41/JqiCQc38OtX6ew2IdvkGk74?=
 =?us-ascii?Q?HbzacDUOOvRmH/o3yElxLHRgtn6sSWVb0cRMRH8yw4AtLt6qoisvq8K5mg5Y?=
 =?us-ascii?Q?D0n6GLGxbgQoo3KhSYeuU14Ktamn/SefIW5NQBb3NFirmgmPllpiWZwhAgY9?=
 =?us-ascii?Q?wHnsfHluvatr0Kjqys5uucgZ9JUF+rM64YKQ7AstsjBaypmupZNc45v7Jzyx?=
 =?us-ascii?Q?pMq9laJr2LVyQ71gLm3qZW4D9/LYQipND/wuPfWxrPZuNSXKmWu+o4lDL1Up?=
 =?us-ascii?Q?B8k2tl8uLaMQscKufgixCnLEGW0Yr8FGHr469e12YBT3PnPdlBiR21jkgXLf?=
 =?us-ascii?Q?Se3TyCX6Pj+av/w7b4WqgVakQXu3oDeYwlpMn/SJ+cKAwir8jtHvkuq/J8P+?=
 =?us-ascii?Q?l+I54wtw+kZzYv6Sn19BNmOvy1tRnpTtNUusxvwGEW1kfwxntpbrN2HCQRiF?=
 =?us-ascii?Q?dJywzD86zTKWPA+tEt2TN5vhAIpuIP+SkUawc03YVk42tW+3f2Ca/MscVX9Y?=
 =?us-ascii?Q?o+k69kphK4XL9MyOCuahfSqFFbveO8NxCz7oFmSSOamR3E1dasPVML5A5rcl?=
 =?us-ascii?Q?NGGQfYc4N9Py4QndiO2qhBDH4Xo4h3VFMvmlLgdi9zWJOA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Th/rIGOrM2iGKkRHyR0mfBgiHZMp3XWzaxtgz7+mZBcA8FDs6mp4dNJ5qUFO?=
 =?us-ascii?Q?Q/YXa5b1E74TY2QIzE43SlJnxTD8oCz/fqVM/b9QVJdFh/wo+zMYRRaKrj/w?=
 =?us-ascii?Q?hlfFr3znMVUVJhBIqG/rIugaWwCTnfqURqr5lc6g3SCwvpWV9hKRwEH2siiC?=
 =?us-ascii?Q?euqAv398IHQebjxabw/vRbQEOhQ05EsCYPCHTVyHSKK8jqn4CrpQ4jDO0YGJ?=
 =?us-ascii?Q?jQ8f8PWblR9MWzmJthvmrVj3ASSbkcvay54YBMyLIjDFNNqRpNla2DnGLJ1C?=
 =?us-ascii?Q?Q/rc/eRTD6wnJhRVTgo2+GB72c7920ruklCIkJrTn0DiGy6bGl6f7GYDVr2c?=
 =?us-ascii?Q?ZLvfKsgsJujP3MI+XwOgfzoJgm7SyCGqaH2WcMNFCo7rIU/oFfa9gIkbRUSu?=
 =?us-ascii?Q?IXDM5Ifi20dFf/2mR6B5OR1ame2S2A4r6d0Rt2D1qlrrx/DGk4XyQ6Xr/A4P?=
 =?us-ascii?Q?MKSJZSP+GZpVN0m7AxX4EpIkDgH8VIi/yGFleVg0pOsxSBHMLGsyQMLpC1ug?=
 =?us-ascii?Q?ztSGdRIXZVFQJ6YnFbQ9RD1Qvzpcjqs+4yUshwejA/j2PAaxVd/cjqvXMrPJ?=
 =?us-ascii?Q?Uz2WBFehj4yCVlvOIm3NqdrNCZ10dbvSNVGW5hBUH6cIXmlVoIUzc2enYxqB?=
 =?us-ascii?Q?h309REOIiBolWW7PInxyxWEiXfifdApyhaa+Du79sQVU1xyVXtP/UOf8gCaB?=
 =?us-ascii?Q?vztXuG8KdUJI7ysf3RmwaRzvEv28xzfIAW1OwOFK2jlutQmTynOCsd2CFenN?=
 =?us-ascii?Q?lCbPJGoH88mw2Y9mq10OU5zXrkxsiUnm6nCVbCvqmMjIA90pupBQWKsbae9G?=
 =?us-ascii?Q?msfnkbNjEOUv5xpWb3tBUia0sS6PkNIFRJjuGQHSVPKh6lCMw1+ApqeYnFR6?=
 =?us-ascii?Q?2qiAg+JAMSWv/GlnE0HJo2egmwk6tN0e1UW8AhnTf98Aeux8m37YkhG0DiOv?=
 =?us-ascii?Q?s3cAe1/32SK40JB/2u3FAW7xOF/V1j2SwiwHZ+f7taFTURoYoqyZEg/YbDZK?=
 =?us-ascii?Q?Qq1VBEvzdXUtm8pi+oUVfc0DY++Me36c/udYrK9WL6ao+PQ0tPwvekYoLIjb?=
 =?us-ascii?Q?KypZGRKgn57iHwlqlMuIsyKJ92Q88+d0tFkWjsWT7lcj06zaZmWP7mcfkkI0?=
 =?us-ascii?Q?ZYlrcipFg66PhqP8u5nsabx+A23q8ttfv8fwEjmSZe78TqiBb8AFvwOGUuwI?=
 =?us-ascii?Q?Sr3n8rHioGgqyYmnbXO6NG866/imHbLr1WFCbZEsbICN1JmPqX/Gn4dz02YS?=
 =?us-ascii?Q?/4bp/vcC7vc0SWCYuVooJL8XTT982qdeiy5/Yc0KBcdOGdeexI66jb/OIAUJ?=
 =?us-ascii?Q?AUnKHE/fttECeztPtkg/MeXwAIrKlH/enP4VDiGFZGKbgaDVW5t4k0pRsBFC?=
 =?us-ascii?Q?bnArrdcWJVlDAxffj3O116UPWBnDoNz2Bf0DDBZ3T0vX7uENf9w/UCJkZpkc?=
 =?us-ascii?Q?b4wneJUmJahaVYf+kHd3x+D202Z6xuBbscT6bBOJeyPT/Hc7VztzBYAnO+d7?=
 =?us-ascii?Q?hbzg0LvNmmGSwP7G0efGdilBfapZ2Z0owkCGvTWSNQbB9sj4OH+x9y+z9BvX?=
 =?us-ascii?Q?pnTvK3uGAUpp3EixBzLqrk0Zlz0WY3nbj1ZKsYTsCN5Lq4SjgOS6+8gW2uGT?=
 =?us-ascii?Q?7g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60722f2e-f4cb-43e7-7642-08dce7cc5c60
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2024 19:06:48.8014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G2WpGrl4rNH6Xg8eyfT73bWMQqEgaDjhPCNR7egyPZMfpr4hXIW97X+61IDYJR0Qn9Ca+BME5p8O88JTFC9l8QN42OkDGh9k6GO+b6MfHs4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4784
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728414416; x=1759950416;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9K7/uPjFrhGD2RGX3FFyemzSp5eHq3FIkoiMSUrmWAA=;
 b=RfZe1wWzHg+lbmj6vpeelvOxJy8PC1HHSk1yqsTqR3DEM1oVQOsXoXx7
 sQl6fxvj+DOpxneXcpWhIOH7Jpq0wPRWRwrB4SEXGedb/Qi1Cmk5HMjvi
 6e8kBf2FewvWNM7UUuyDhhMyG1R7V1KZm/f1H31Ej7Ztu7O4KgvGkmA1w
 LWe5946XeB8ipJnsSAXJQFm6C0re1WoNhUPxQ0OvHeyye6KLI645Ew/pH
 k2IHcsGABqr4cnCjr9Gb7hvAuGRm8MjWiwXA1Cyb6FDP+IGkFGrC1Ltr1
 cGMqfav6tP+5ahsD4KrQMILtgaWkbQcMpcrmyCm30DjIka5gbzmv20yv0
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RfZe1wWz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH 0/2] ptp: add control over HW
 timestamp latch point
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Richard Cochran <richardcochran@gmail.com>
>Sent: Monday, October 7, 2024 6:07 PM
>
>On Thu, Oct 03, 2024 at 11:37:52PM +0200, Arkadiusz Kubalewski wrote:
>> HW support of PTP/timesync solutions in network PHY chips can be
>> achieved with two different approaches, the timestamp maybe latched
>> either in the beginning or after the Start of Frame Delimiter (SFD) [1].
>>
>> Allow ptp device drivers to provide user with control over the
>> timestamp latch point.
>
>This looks okay to me.
>
>Sorry for the late reply, but I'm travelling untill Oct 11 and may not
>response to messages right away.
>
>Thanks,
>Richard

Hi Richard,

Not a problem.
Great to hear that it looks good for you, I will prepare proper patches soo=
n.

Thank you!
Arkadiusz
