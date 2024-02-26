Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F07D4866F2D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 10:49:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C0A340A0F;
	Mon, 26 Feb 2024 09:49:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EuEiBNgShpXY; Mon, 26 Feb 2024 09:49:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5621409EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708940990;
	bh=IbvlGP7HTuIVyrr66kci0OxqdcuPusnfS72LpkQw1ZY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T8JQHi9zuV/dctLEQn7947C4sB2x3iqOuDHKd4XiQA18YYR4xaGJSNI/aIxTT04x6
	 GnFVLu2B5t4H/FD+AtQJyh5anMU3LR2YadDwzIIvkICs+As64iip/x9IgpbBgPrKae
	 gsiO2KS0yVHqW6ae/gvKY2CENdGc2PTmFJMVlX2CfwjiHBazQAsiRd0BZLqdl2FwOV
	 P3WWe78s8IVopeVRiZcjKBY2k6B2eltIrgML1LSaWPTDTT+/pUmNpvGuTNKipo5+Vb
	 ExKsc1g/WWF8JBlwEavqr4ZnlTAoQlEav5emkVBcfKNkeDsTKzAcBgDh6dQExl0ZUT
	 QuqbZNdHsqnCg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B5621409EB;
	Mon, 26 Feb 2024 09:49:50 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A42D91BF3BC
 for <intel-wired-lan@osuosl.org>; Mon, 26 Feb 2024 09:49:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8BCF581E0D
 for <intel-wired-lan@osuosl.org>; Mon, 26 Feb 2024 09:49:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MNkH1JPaqbXA for <intel-wired-lan@osuosl.org>;
 Mon, 26 Feb 2024 09:49:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1AD4D81E05
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AD4D81E05
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1AD4D81E05
 for <intel-wired-lan@osuosl.org>; Mon, 26 Feb 2024 09:49:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="13766995"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="13766995"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 01:49:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="7132855"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 01:49:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 01:49:44 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 01:49:44 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 01:49:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E3mpls3AVy+KVneKelEJnzUvKj+OjrDEGUQ+eTiKIq3VRQomV3Hz2ezY1yDVtqyB2yF8tyetcVv80swxpcIksyU0rJhpb0qh0fSsovXCs9LApxxu421Kv99sAJDupPpJg7EjgwOub1t0PEu+tA8wNV7FY8w6ixQGl/34Ck6PaLr1LNpDF7DXrqmjlBssrcRYKa4koScJHUla25QmjMfEQ3SMko1QXrywRR3QHswe25rK1pmKkCbn18HK/qdy2ulLfuQaef6KlqWDTotbbWz44Jlf7nbmeFx2kAcBMh9AC9IGSD74VO/PAN+JhRTuZhQ3ERjHfwQk2p8Ub5IvFelqVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IbvlGP7HTuIVyrr66kci0OxqdcuPusnfS72LpkQw1ZY=;
 b=Db/uudZq/3osa1CSSLwD+iloV8vNyNCg9XIh2wXKeZpkGPxtqlnOkNi2BEqKBvYD1fZLTB+BXBHhCrutVzj20GEBTTkEYNMw6lD2tYrp2zuZPlo/EQoO26bNZGD7p/tHD0pRzFvIuy1fcEtYKf7JIMPW+iWo2trfR+zfkGKWzLXFxY3xN/3Nqrar2B0rWHsT2LZN472oA9xk8iwSfwFxnhd42IDomXiNLhv8Yq37N3pRujDBbVGBTBVk3TffZzq1aXh3RPa5UTrL74baomPACZzgWBBKbGH5HQaaGKdjAawq0mac7+bNCj/Ce9Bg34jLn5WN75haVX1yedl8WQ1EaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by BL3PR11MB5699.namprd11.prod.outlook.com (2603:10b6:208:33e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Mon, 26 Feb
 2024 09:49:39 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08%7]) with mapi id 15.20.7339.019; Mon, 26 Feb 2024
 09:49:39 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kaminski, Pawel" <pawel.kaminski@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: Add support for
 devlink loopback param.
Thread-Index: AQHaKW9/IGWwUFCLOEyvJdl5H+XEqrEc3zuw
Date: Mon, 26 Feb 2024 09:49:39 +0000
Message-ID: <SJ0PR11MB58650ACC7B4527A93C91A5648F5A2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20231208004227.195801-1-pawel.kaminski@intel.com>
In-Reply-To: <20231208004227.195801-1-pawel.kaminski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|BL3PR11MB5699:EE_
x-ms-office365-filtering-correlation-id: e353bdb2-8eb7-4d58-fb2f-08dc36b04010
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +rRUVhPcdCm7tceZqhyD3tDiixb5X25sjxOdr8YS3UzRv2P9f/q8hg53qONW5s1FWxJ+LjI7IFkpJojhHe52rAepYUfguiER5m4xlEgBxP6zaQxxkaKvLn4rgc2MOx7kUHH4gSiyV9oXhFCejDd6BacjjalX7VNrKyAnSxdapTWVJg20sDaIx38JiJGSq/adU+FGlapQQRULfbICvM7cdlGLIePjiVgXgP8FPMM3uCEno++BtlVXcSPFF2zG5dlUw7muFuBI/5KiN4VYXU3+iSECBnaryg4N/rOs8cnq5moz+CWK053SISq7+oXEngBXwme0N6sxI5b7EI9KVMmrQDJnbYJ60gd07SZdyqwPjTWbaekUQFZOkDt4E6c6MyWKcKponEaM9M3g8gnbz0KfpnK/FNovEFamCi7ZyzrnQOXk3KR+uBmS7/AZzJWrKf7AOAz0fP94Ux49JdimPqlvDevollvNH6fSFWCvRGIh1cLXHT3KXXW7+8RbFkZISn1b4g1WqZSF2aRe6N3WAguwP1pgJaj0TFIqq9zYI8VDtoSezylsM+hT9dKB+PWYNEt8L2CRZ7sJsNvbfovwHzNOEtFYAvZDjolrEYoUPfBx99X3HBS1VIr7hYOPpHf2uO4Q/df34s2y44gxmIT2WGO7F6p+a+VAKzG+L094n8qGk7UiFkuJaXqC87y8dQ4a2/uu0IVF0evr8W66bjfQYTq1hA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(230273577357003)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?h1RaElIrBoRBl1cRsPtacqxCnmOfIV1qADRDkvsuvZ7FyapSV9F4WOb33bla?=
 =?us-ascii?Q?3vO7Qu9GbY59CeiFhl2thpqSeJTiB6rJB176w4M3dtSZcqwPmA5ecF212LgN?=
 =?us-ascii?Q?fj0vb8MpUnnfy+4fi3zoST0U2AMdmk31Vf5t8DNqSoZS5tJY8uAWMA7T5NXN?=
 =?us-ascii?Q?3yu17M9o13ktRK1is9lMttK2gUWlR7V73I0yP/Q5SB5b/1nOcNzNURAfVxv3?=
 =?us-ascii?Q?F7eThPqosLLwd5CuNYYlKVLTyDwOMq5xS98pS4I/1BipJ7Mf5LiCxvU9mOIr?=
 =?us-ascii?Q?eTBr51a3SN+hMkfSPgqjA0I2A9DKK1dnX6nHyUouNjsbPcYZL2z2e+4NVc7Z?=
 =?us-ascii?Q?A8SPhEh3pFCbxWbNOECsjLuASGzfjD9bFM0OvLRjdACGeXDv8ikGZWXrz3kr?=
 =?us-ascii?Q?MY3AsIRl55B6C/6973HbApqMOGfUOkbiXcN/IcHMSx1VwhGOCUpEDPFkBSrS?=
 =?us-ascii?Q?AdVvscOQqo3jwjFZCGCKqcW1vPI2LfgL8xsKuMCsCOD2VZvgK9r5TKy35Uza?=
 =?us-ascii?Q?E3bjAcDDSS/LhGxGisPcibCMwM1/E1C5CPfTUQnucPdf4DDDiTIGeBLCe/2p?=
 =?us-ascii?Q?0z7BqyB/ueerM3vcG90q785dW2FsAhIQWeeb83mDN2QC71OztnkGX+DLTeoC?=
 =?us-ascii?Q?00cniVuc1XnFO+0bALfy8uWzLVRNnNFAmzC4k4oRGlQs01Bsfmz0lc/1plmu?=
 =?us-ascii?Q?BqHBMC6HJbATOgK5CfXKz7t21D+QjqF5BRoj+7+unWi/bXMe6w6BljNfwHz4?=
 =?us-ascii?Q?AweaHkE4TIOF8R0aqG4QbYQZElleiI+ij3XTQrDM8qkDJLMlE1h89ypRFmfY?=
 =?us-ascii?Q?sCCeYf0ztua4unhl1joSVpeD6aZXyvwfYrDT61bM0HYfelp1f7Pwc3+eBqSx?=
 =?us-ascii?Q?MPnH6+ccSNf+GaaLnxNi5oQnjkE7LmBLx08JzvAvH01oT0kwetIUioWFowlD?=
 =?us-ascii?Q?nNO3lNG8anb9i97M5BAXer39whnMqmc7r0enndxYNLt++F/q2TtEJ2k38B7d?=
 =?us-ascii?Q?xygz3x8uPpTX4hdvdbqXo6RZYIwZT7067baSEKuuMETcU1deRQEO9hXbCQ6W?=
 =?us-ascii?Q?Re0/Q7RUA/YPsJkljW5ZXu3SZp3IbJuoreNi5bs0UUtEG9LtUAQ5Dr5NTPsF?=
 =?us-ascii?Q?uU8ca64zN5ogtu3E3FONLkcyqgoH9+V+cGWvPLk4jSY4KmgxYRnVYTyPzYA8?=
 =?us-ascii?Q?x+LZUbTyDwa9wvaXBBtSRm63EYPu8fk/XtX0cNmqWSSS0ozv93E2eh/PRj8K?=
 =?us-ascii?Q?YXSfC5WIZcKl27VyvJsTdkqdrAN3yIb105S7MHFFvCD0VCd7TYfi86u/bUs0?=
 =?us-ascii?Q?UfymFApvQX56KVrKIwiZMm5vy+9NimXyPomCgLW71up0VtV0LVKcQ3/urhDB?=
 =?us-ascii?Q?sxeMaDqMu1bQkhd1/Q7m49dtWsg3AU6Wii87Msrs7afYJvfC+032n2yk7e1z?=
 =?us-ascii?Q?laec8xjXaje5aYvHIL244KWyKoVwHfWCQgvL60kkGyJx5AF3Wwp1mGKcOfPv?=
 =?us-ascii?Q?SDH8lms0ea7lKYH1jGJkOL+Wum6WRzK2UOAQVwZ1sS7d5tdT8RxCIxNaZLdc?=
 =?us-ascii?Q?FjMecqx39Dy3byGV67wtqJKFYHLXogVz40uhaRDK2ylOBf41/XxLXyxFN7/z?=
 =?us-ascii?Q?/w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e353bdb2-8eb7-4d58-fb2f-08dc36b04010
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2024 09:49:39.6308 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ACjxhAU5ElRT0TwStfsJYOUdSx7HKVTeDgTBume1GuahTecSEXaEhCdW0ZlqlHABUPWm3L9LtrGZMfJqEv8haY+WGw2hKSR1zShWJy03OrA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5699
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708940986; x=1740476986;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4tpknAPi0eZRjaSB4b0TTPt8PPnC2+FpLx7rx1Hm+A4=;
 b=B1jJnuAtoNisIywHdUeVB+M7q9fsV11gehjOv+KsA5Xcj7XyqdMMtRLn
 6aAOxnHm6OchfkX77fUz6DBv278fSqoaleY7nLbK9qDVgN1S8N64iUuhU
 daDsE5jy5GIYESEFk3f3Hrstp5aZ7mlmwZVVJraM3931H91TNLHS0855j
 YayvA5TGA9LJO8ZJ0TkfdYKp9BESuaq/4BQs2kFPO9dq1CSQH2Ba34DXK
 gBemAK+n4c3PDIuOj4vpDDuaEb7cgiOi67gYttnlTL/kmx9+snOeAACit
 MKygXsGdIlxuYU9LKcnqD6NLjlbv5JKDCFBt1a6h7tT9J7jhDnnPDstmd
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B1jJnuAt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Add support for
 devlink loopback param.
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Wilczynski,
 Michal" <michal.wilczynski@intel.com>, "Kaminski,
 Pawel" <pawel.kaminski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Pawel Kaminski
> Sent: Friday, December 8, 2023 1:42 AM
> To: intel-wired-lan@osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> netdev@vger.kernel.org; Kaminski, Pawel <pawel.kaminski@intel.com>;
> Wilczynski, Michal <michal.wilczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Add support for devli=
nk
> loopback param.
>=20
> Add support for driver-specific devlink loopback param. Supported values =
are
> "enabled", "disabled" and "prioritized". Default configuration is set to
> "enabled".
>=20
> Add documentation in networking/devlink/ice.rst.
>=20
> In previous generations of Intel NICs the trasmit scheduler was only limi=
ted by
> PCIe bandwidth when scheduling/assigning hairpin-badwidth between VFs.
> Changes to E810 HW design introduced scheduler limitation, so that availa=
ble
> hairpin-bandwidth is bound to external port speed.
> In order to address this limitation and enable NFV services such as "serv=
ice
> chaining" a knob to adjust the scheduler config was created.
> Driver can send a configuration message to the FW over admin queue and
> internal FW logic will reconfigure HW to prioritize and add more BW to VF=
 to
> VF traffic. As end result for example 10G port will no longer limit hairp=
in-
> badwith to 10G and much higher speeds can be achieved.
>=20
> Devlink loopback param set to "prioritized" enables higher hairpin-badwit=
dh
> on related PFs. Configuration is applicable only to 8x10G and 4x25G cards=
.
>=20
> Changing loopback configuration will trigger CORER reset in order to take
> effect.
>=20
> Example command to change current value:
> devlink dev param set pci/0000:b2:00.3 name loopback value prioritized \
>         cmode runtime
>=20
> Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Pawel Kaminski <pawel.kaminski@intel.com>
> ---
> Changes in v2:
>  - improved commit message,
>  - added documentation change
>  - changed parameter devlink mode to "runtime"
>  - Link to v1: https://lore.kernel.org/all/20231201235949.62728-1-
> pawel.kaminski@intel.com/
> ---
>  Documentation/networking/devlink/ice.rst      |  15 ++
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  11 +-
>  drivers/net/ethernet/intel/ice/ice_common.c   |   6 +-
>  drivers/net/ethernet/intel/ice/ice_devlink.c  | 128 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  5 files changed, 158 insertions(+), 3 deletions(-)
>=20
> diff --git a/Documentation/networking/devlink/ice.rst
> b/Documentation/networking/devlink/ice.rst
> index 7f30ebd5debb..efc6be109dc3 100644
> --- a/Documentation/networking/devlink/ice.rst
> +++ b/Documentation/networking/devlink/ice.rst
> @@ -11,6 +11,7 @@ Parameters
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
>  .. list-table:: Generic parameters implemented
> +   :widths: 5 5 90
>=20
>     * - Name
>       - Mode
> @@ -22,6 +23,20 @@ Parameters
>       - runtime
>       - mutually exclusive with ``enable_roce``
>=20
> +.. list-table:: Driver specific parameters implemented
> +   :widths: 5 5 90
> +
> +   * - Name
> +     - Mode
> +     - Description
> +   * - ``loopback``
> +     - runtime
> +     - Controls loopback behavior by tuning scheduler bandwidth.
> +       Supported values are ``enabled``, ``disabled``, ``prioritized``.
> +       The latter allows for bandwidth higher than external port speed
> +       when looping back traffic between VFs. Works with 8x10G and 4x25G
> +       cards.
> +
>  Info versions
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 6a5e974a1776..13d0e3cbc24c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -230,6 +230,13 @@ struct ice_aqc_get_sw_cfg_resp_elem {
>  #define ICE_AQC_GET_SW_CONF_RESP_IS_VF		BIT(15)
>  };
>=20
> +/* Loopback port parameter mode values. */ enum ice_loopback_mode {
> +	ICE_LOOPBACK_MODE_ENABLED =3D 0,
> +	ICE_LOOPBACK_MODE_DISABLED =3D 1,
> +	ICE_LOOPBACK_MODE_PRIORITIZED =3D 2,
> +};
> +
>  /* Set Port parameters, (direct, 0x0203) */  struct ice_aqc_set_port_par=
ams {
>  	__le16 cmd_flags;
> @@ -238,7 +245,9 @@ struct ice_aqc_set_port_params {
>  	__le16 swid;
>  #define ICE_AQC_PORT_SWID_VALID			BIT(15)
>  #define ICE_AQC_PORT_SWID_M			0xFF
> -	u8 reserved[10];
> +	u8 loopback_mode;
> +#define ICE_AQC_SET_P_PARAMS_LOOPBACK_MODE_VALID BIT(2)
> +	u8 reserved[9];
>  };
>=20
>  /* These resource type defines are used for all switch resource diff --g=
it
> a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index 2f67ea1feb60..2efa781efcdb 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1019,7 +1019,7 @@ int ice_init_hw(struct ice_hw *hw)
>  		status =3D -ENOMEM;
>  		goto err_unroll_cqinit;
>  	}
> -
> +	hw->port_info->loopback_mode =3D ICE_LOOPBACK_MODE_ENABLED;
>  	/* set the back pointer to HW */
>  	hw->port_info->hw =3D hw;
>=20
> @@ -2962,6 +2962,10 @@ ice_aq_set_port_params(struct ice_port_info *pi,
> bool double_vlan,
>  	cmd =3D &desc.params.set_port_params;
>=20
>  	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_port_params);
> +
> +	cmd->loopback_mode =3D pi->loopback_mode |
> +
> 	ICE_AQC_SET_P_PARAMS_LOOPBACK_MODE_VALID;
> +
>  	if (double_vlan)
>  		cmd_flags |=3D ICE_AQC_SET_P_PARAMS_DOUBLE_VLAN_ENA;
>  	cmd->cmd_flags =3D cpu_to_le16(cmd_flags); diff --git
> a/drivers/net/ethernet/intel/ice/ice_devlink.c
> b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 65be56f2af9e..97182bacafa3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -1429,6 +1429,127 @@ ice_devlink_enable_iw_validate(struct devlink
> *devlink, u32 id,
>  	return 0;
>  }
>=20
> +#define DEVLINK_LPBK_DISABLED_STR "disabled"
> +#define DEVLINK_LPBK_ENABLED_STR "enabled"
> +#define DEVLINK_LPBK_PRIORITIZED_STR "prioritized"
> +
> +/**
> + * ice_devlink_loopback_mode_to_str - Get string for loopback mode.
> + * @mode: Loopback mode used in port_info struct.
> + *
> + * Return: Mode respective string or "Invalid".
> + */
> +static const char *ice_devlink_loopback_mode_to_str(enum
> +ice_loopback_mode mode) {
> +	switch (mode) {
> +	case ICE_LOOPBACK_MODE_ENABLED:
> +		return DEVLINK_LPBK_ENABLED_STR;
> +	case ICE_LOOPBACK_MODE_PRIORITIZED:
> +		return DEVLINK_LPBK_PRIORITIZED_STR;
> +	case ICE_LOOPBACK_MODE_DISABLED:
> +		return DEVLINK_LPBK_DISABLED_STR;
> +	}
> +
> +	return "Invalid";
> +}
> +
> +/**
> + * ice_devlink_loopback_str_to_mode - Get loopback mode from string
> name.
> + * @mode_str: Loopback mode string.
> + *
> + * Return: Mode value or negative number if invalid.
> + */
> +static int ice_devlink_loopback_str_to_mode(const char *mode_str) {
> +	if (!strcmp(mode_str, DEVLINK_LPBK_ENABLED_STR))
> +		return ICE_LOOPBACK_MODE_ENABLED;
> +	else if (!strcmp(mode_str, DEVLINK_LPBK_PRIORITIZED_STR))
> +		return ICE_LOOPBACK_MODE_PRIORITIZED;
> +	else if (!strcmp(mode_str, DEVLINK_LPBK_DISABLED_STR))
> +		return ICE_LOOPBACK_MODE_DISABLED;
> +
> +	return -EINVAL;
> +}
> +
> +/**
> + * ice_devlink_loopback_get - Get loopback parameter.
> + * @devlink: Pointer to the devlink instance.
> + * @id: The parameter ID to set.
> + * @ctx: Context to store the parameter value.
> + *
> + * Return: Zero.
> + */
> +static int ice_devlink_loopback_get(struct devlink *devlink, u32 id,
> +				    struct devlink_param_gset_ctx *ctx) {
> +	struct ice_pf *pf =3D devlink_priv(devlink);
> +	struct ice_port_info *pi;
> +	const char *mode_str;
> +
> +	pi =3D pf->hw.port_info;
> +	mode_str =3D ice_devlink_loopback_mode_to_str(pi->loopback_mode);
> +	snprintf(ctx->val.vstr, sizeof(ctx->val.vstr), "%s", mode_str);
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_devlink_loopback_set - Set loopback parameter.
> + * @devlink: Pointer to the devlink instance.
> + * @id: The parameter ID to set.
> + * @ctx: Context to get the parameter value.
> + *
> + * Return: Zero.
> + */
> +static int ice_devlink_loopback_set(struct devlink *devlink, u32 id,
> +				    struct devlink_param_gset_ctx *ctx) {
> +	int new_loopback_mode =3D ice_devlink_loopback_str_to_mode(ctx-
> >val.vstr);
> +	struct ice_pf *pf =3D devlink_priv(devlink);
> +	struct device *dev =3D ice_pf_to_dev(pf);
> +	struct ice_port_info *pi;
> +
> +	pi =3D pf->hw.port_info;
> +	if (pi->loopback_mode !=3D new_loopback_mode) {
> +		pi->loopback_mode =3D new_loopback_mode;
> +		dev_info(dev, "Setting loopback to %s\n", ctx->val.vstr);
> +		ice_schedule_reset(pf, ICE_RESET_CORER);
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_devlink_loopback_validate - Validate passed loopback parameter va=
lue.
> + * @devlink: Unused pointer to devlink instance.
> + * @id: The parameter ID to validate.
> + * @val: Value to validate.
> + * @extack: Netlink extended ACK structure.
> + *
> + * Supported values are:
> + * "enabled" - loopback is enabled, "disabled" - loopback is disabled
> + * "prioritized" - loopback traffic is prioritized in scheduling.
> + *
> + * Return: Zero when passed parameter value is supported. Negative
> +value on
> + * error.
> + */
> +static int ice_devlink_loopback_validate(struct devlink *devlink, u32 id=
,
> +					 union devlink_param_value val,
> +					 struct netlink_ext_ack *extack)
> +{
> +	if (ice_devlink_loopback_str_to_mode(val.vstr) < 0) {
> +		NL_SET_ERR_MSG_MOD(extack, "Error: Requested value is
> not supported.");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +enum ice_param_id {
> +	ICE_DEVLINK_PARAM_ID_BASE =3D
> DEVLINK_PARAM_GENERIC_ID_MAX,
> +	ICE_DEVLINK_PARAM_ID_LOOPBACK,
> +};
> +
>  static const struct devlink_param ice_devlink_params[] =3D {
>  	DEVLINK_PARAM_GENERIC(ENABLE_ROCE,
> BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>  			      ice_devlink_enable_roce_get,
> @@ -1438,7 +1559,12 @@ static const struct devlink_param
> ice_devlink_params[] =3D {
>  			      ice_devlink_enable_iw_get,
>  			      ice_devlink_enable_iw_set,
>  			      ice_devlink_enable_iw_validate),
> -
> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_LOOPBACK,
> +			     "loopback", DEVLINK_PARAM_TYPE_STRING,
> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> +			     ice_devlink_loopback_get,
> +			     ice_devlink_loopback_set,
> +			     ice_devlink_loopback_validate),
>  };
>=20
>  static void ice_devlink_free(void *devlink_ptr) diff --git
> a/drivers/net/ethernet/intel/ice/ice_type.h
> b/drivers/net/ethernet/intel/ice/ice_type.h
> index 1fff865d0661..c8d75a1820a1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -713,6 +713,7 @@ struct ice_port_info {
>  	u16 sw_id;			/* Initial switch ID belongs to port */
>  	u16 pf_vf_num;
>  	u8 port_state;
> +	u8 loopback_mode;
>  #define ICE_SCHED_PORT_STATE_INIT	0x0
>  #define ICE_SCHED_PORT_STATE_READY	0x1
>  	u8 lport;
> --
> 2.41.0
>=20
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



