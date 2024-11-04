Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C324D9BB246
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 12:06:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D0C88129A;
	Mon,  4 Nov 2024 11:05:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E_lMM-_cGywD; Mon,  4 Nov 2024 11:05:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0705F811DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730718340;
	bh=i1dY74iv6DYfJWyi64uKBAqQ3W0+N+cRq7n6uNI70ho=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ipEAdZteR/tHEUGPVX+lQyVIKizGoeRXR7EMzW6sdl1MddPEHa+Veet5BhM8HSbkz
	 wUd6d3DOXo8QI8+pGES21LV0/lXFL8TtHI0bOfjbimKQku4ibIcWEP3KM6QGspRkki
	 ZIaCC6cxt+KtKtw5ceZl1CXGTQIzQs8uFMMq7XLDWvwXHubE2xCwYuiwLeI+j9f1Jb
	 jKxU8hryr0dWbIhTQT1V8dfvpYHE9TwteOOIFhXvnviQD0sGl1e7gCEdywTunsltgi
	 FYlzFLaH8QRcrqE1ntr9DJ2kEMOVpOQkTJWYrhbdSAQ48P/u1M0N99uRriS2w8Rf3c
	 aP5v68QaGrrbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0705F811DE;
	Mon,  4 Nov 2024 11:05:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4417CB8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:05:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 52CBE40640
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:05:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 79D-aJVwdScC for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 11:05:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9E9C340A84
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E9C340A84
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9E9C340A84
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:05:15 +0000 (UTC)
X-CSE-ConnectionGUID: BzhYeXE+QD6o9tovZ2wiZw==
X-CSE-MsgGUID: oZ6EyXKhR7exzGzFrJH4PQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30586569"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30586569"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 03:05:15 -0800
X-CSE-ConnectionGUID: kkqvk+YRSmKfx2XagbzPlg==
X-CSE-MsgGUID: v8YwODEYQHiC7a8x1HFUYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="114407892"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 03:05:15 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 03:05:14 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 03:05:14 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 03:05:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BXJMpxsmA5N4XpVY/eUV1sP3k7etttUtHIy8GVxHW9j+fDdk9yZjINUCjKIafa2oKirHrut+NScWV75VKKZMhFyHBZ7B70SRSAE9kTeDt+2HouKKmikfphp3PjBX4Jm4QMNEoIytjbiOrJvQqnKsTqti7nraSFxxV4FQveWT+unbx1KPRvKHcwOvQopM7swXgqJTxJK95Kgr+LORh6SQeBbY/cao8qUj6E2RiCyWbJORfo3POn13aGbcw4JzAW46fYyaNrQxkmZQF3NE+7L8b+M8KoFAVi0HIt6HcRoNY7znXQi0lhfjELwdKBj7R21lofQE8vn+M+hDxcSEiID/LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i1dY74iv6DYfJWyi64uKBAqQ3W0+N+cRq7n6uNI70ho=;
 b=yuGfpyf0hfkuo/kPdBhV3SBifopm34OC3vIOKlpzQasoHW7IBmr9FjY/A3ruh4iT+oMbJ7aRgLYU/ClLQqqF3r7t41bNJmSBYwjdTYlZPonalCj0a9A6eGZg/HSVz4MX3Rqk4D7rYiiDbYNTWzQu3QDFoQOppRdl8qEAlkAvdLHvcEUOilfum54Ss/M2Rz6M896rw4P2SEjlVnM6luvs8oPAVdOSxNdPnqv2X2be7ohAXIRHAr1DYOLPR3MPwq6jaKKgQ0wmmPXwT2s2gnD2FXOqBE0E077fggE2R1T0S0/AoJiZEXwrSUhNXdme+xX+BZs2EYzZmtRrYJ8QR7GOnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by CY8PR11MB7082.namprd11.prod.outlook.com (2603:10b6:930:52::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 11:05:07 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 11:05:07 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Drewek, Wojciech"
 <wojciech.drewek@intel.com>, Rahul Rameshbabu <rrameshbabu@nvidia.com>, Simon
 Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 12/14] iavf: Implement
 checking DD desc field
Thread-Index: AQHbJEUtbof8f9Z1sECCyccWPAGOB7KnCi1w
Date: Mon, 4 Nov 2024 11:05:07 +0000
Message-ID: <SJ0PR11MB5865CBFF618777D1E36336EB8F512@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
 <20241022114121.61284-13-mateusz.polchlopek@intel.com>
In-Reply-To: <20241022114121.61284-13-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|CY8PR11MB7082:EE_
x-ms-office365-filtering-correlation-id: ce3354b9-c8f7-4f44-ee53-08dcfcc08adb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?RWSJTTwYXl8g+IoM2mvInaANkWJGCnFn538iGNYrJOMxudSuG6JfNog03hTe?=
 =?us-ascii?Q?NSlFMnI7YcQ/t96A+wIhGHXETVbp9kBPsAFLuQKaaK99VUrWvX7FORdDx0IZ?=
 =?us-ascii?Q?4PVno9RcHMOOgnSTfBBEi4nnl7hu2M08GNOz2SmRHsvULG3P1zSY4DseUNBK?=
 =?us-ascii?Q?RICehjeTwvi1V9jEcF6/gJFHxlvrrX/+CizjpaS2aglt3gSNF/WbxgcI3t/M?=
 =?us-ascii?Q?0vdtD23Vx2wKgON/EUUzmYxMhjkvma/di9DZuUS6ow8CLE8U2I1Zy2SNLCcd?=
 =?us-ascii?Q?3lnUCVvzzEM3D9Q/4/cSTUoI5cNzlFtbPkr6GH8Vh7UujNe3fPfV7dwsNojm?=
 =?us-ascii?Q?ohf25/QAbCXN/1360mgKzQdjfuuaKudVG7TPiMQYOgegVko/gfN/si1qccka?=
 =?us-ascii?Q?5mkbpox3+5JLtcs06oDkxzpQI9GOfn4baN680FzKjm0KgSRDWS/HWH+GdYQM?=
 =?us-ascii?Q?vmZmp93ynpI78cMI4pEdS4lDr8e68vj4uAiIRZN6BQtvOGCmBBRwrnicBxsd?=
 =?us-ascii?Q?trsF3XaA8hJEtV7NNgCKtdvmFDc2DXL+IFgjkAaKk9N1IeJSa6Es7sjofgNU?=
 =?us-ascii?Q?zLntZjbO+71cgQ0TpGIpHsNwU3DkI+E04VIwMMrHbStuR20+DK5Q530gcpA2?=
 =?us-ascii?Q?a+UZLvq//pVg9cTRgi2ZUy8j8ab8Rd5nhQkiEhjBPD3aWWeOG7NRZtThTAuC?=
 =?us-ascii?Q?PdlY59vLsWTSQ50legB+bQx4rr7U+O/WkQeaDA9+nGhwznAVSYD1X9tooh+4?=
 =?us-ascii?Q?zYm/nOkOVtPh9fxmUVlyQqadfifHXGKNIn5LRYwXXGYGij21rJtP6f2POFR1?=
 =?us-ascii?Q?v20hNOYwts0eEBanCQMIFFiqrI9CrjMaKnyQyOX748sG74QRyDmg+muNCBto?=
 =?us-ascii?Q?WdNebYfdexAa8DhTO8iuzIpdTlTnB/QqrVuqE9DB/cACCxjVT2tlZhd4KSS0?=
 =?us-ascii?Q?DKGWk25+6AVvE6RGaZowdNBNqbMCLxAUb7eBBgiM0lAJv0lYu+sP1Z9ka80H?=
 =?us-ascii?Q?wp92zd3qkle1/vC8oGxSFh8ATSIL/0EpldfmBgJ6KHDPlXUzO81QteJ7i1c+?=
 =?us-ascii?Q?YFX5qSfaQByW3GKHrZldf9rOJm2PTqnK5mMn5sW6iIg5BPEZSzYZNO/l1RFD?=
 =?us-ascii?Q?eX0c360G5kYjiNVTSiVqIMrbprX4x18nrllGECt2qNQfPbCW0x74o5KG/m11?=
 =?us-ascii?Q?I51zqUGAndwDp4q0Cc4bsctsLKfl1JyfFTfKQhx3l2hY/JKb5nl/T+Kx2HJn?=
 =?us-ascii?Q?DiF8MSdTj8ZIPeZ6THjbt6JjWkp2hgc5XqBW3J8I1bQz+FQbS6fukiIh4I7w?=
 =?us-ascii?Q?ZMVeI3mNVcySDH7FnL3J7DAgqYawDgtRzGCkk1XcIuX8AZvOI4VAqnk/g01C?=
 =?us-ascii?Q?2B2OgPk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B4fx/2PvCy/tpKCpKMSo59TyVQIFg6rdincbe826xvlLK5F/CU+9Eqnv4rzO?=
 =?us-ascii?Q?PpXyIBWzMkCF3P79cGPlm9ZDf65nTeZ6hiyhJcBOVnbxXyOupIJBIN1bnRkj?=
 =?us-ascii?Q?5hlxkyZT3u+AWipyLmVVVuo9c26ZMTY+cLnBFkQcOtsQi/2v9zXFT25SqITO?=
 =?us-ascii?Q?0o05zTZ3a0w+xFqa4kjKY/FgFzu2HlntU93M0NXSHCil/Rvzl+zhJMVKc8Yt?=
 =?us-ascii?Q?FmiX0WGxG6MG7dlyoq3bRyzwn/fMgFIt+h4gqOOf+RwuT6NBNR4W183oGZr5?=
 =?us-ascii?Q?BLOMfITl7uPI0rsC2wTvVy8wKIVaVtmWFpJvS11zYREfsI9HrfRXxp8NigGW?=
 =?us-ascii?Q?VCs98pFJ6IY9eE5azoWlKdAmKvW8BP6bXmKNaS9+5NDZSM2Ik7LbnBZQ/5kf?=
 =?us-ascii?Q?ArBRPRmcCQOU9fJ38iT701py+xgj26nx+lzRItRlGhHmdpjJrRNdjvukz5Ir?=
 =?us-ascii?Q?hmUAiOVa9bZruevF8/IcOa+pTGRoC933ci50CKM/c56rJuQqgGCjtg61qVQ0?=
 =?us-ascii?Q?UX4EbAvN0HYmC7IkTJjmsmcs9mWDBprbs14Crze+cRY0VuFIyOSWxEOyrfjR?=
 =?us-ascii?Q?TGsWzbq1UXdt/iT9A+I8cedc1N6ndZyIVCNTFXnkOMaM/MPOosoec0qvES4B?=
 =?us-ascii?Q?NLjF1yxTyYhakk2mHnL4R0ogk9OL6HnSgdywyvy/p762lS03WngMDFtv3cIw?=
 =?us-ascii?Q?nENl58Zv76PNMTRFppW2srcvYvLJ3fafX5qccEoIYkm3gEW+Pz1KtUbjMcwV?=
 =?us-ascii?Q?efoL4PZbQr8d9qmPURfk0Q1I1fj4h5bnZr6YYrmZtF77GqXvYYL8jflKFFpP?=
 =?us-ascii?Q?KzVfjR5/iSXTw6qK08o2cSzCtQtt8GkBkW8B3rJerIQEN+3dLR2FGgFTzs6M?=
 =?us-ascii?Q?H1/RyHD97OEDpdYnW182lakScBIDqD+OPvPQsrNXCoEbsiE2zXLeqQIyXo9d?=
 =?us-ascii?Q?C+5WqTHs1IojF9ft8NoqQ4A4B9ZSJid+sFt/V9Lx8aDI2lRI5KxEZcnY+eQV?=
 =?us-ascii?Q?uuoKFX99bC3vjdIVpxo5zZPxGryJys0KcFSl7DCcsYYGHSaGpqA9aG93BM6H?=
 =?us-ascii?Q?VRdywCO7k0Jh1Kq3fzlume3HwTZ69HJSaOTYTSf+CBL/5W86+7N/jMDuDHIB?=
 =?us-ascii?Q?lfl/tlqSJEALKKoK5iTSPqc1NXZkYAy2xX1jS7RX8zp6Nc9wrPgKJ4PCJNXH?=
 =?us-ascii?Q?YcI+6A9BpY6gstnOFx7ucFiqDOztSZGL5oxhX1uui9t8InmVEFCmvMCwTA7p?=
 =?us-ascii?Q?36n83RPe+04OFpR/cKoEIRnFxhRC5sa2FngiZzUc//U5W3pPjvAf3rM8rVSA?=
 =?us-ascii?Q?qNUSBfYz5VgvO5uEl1f7Lkp+sHxNR93xZHwz4h81ABXC36ifMd+RHF78tWNN?=
 =?us-ascii?Q?HfoGaoWVX/rDPy8Hc5Hagxxp0ycGoiDGtp5dj7+acz3ZvgUwlMEjaxIJYqZF?=
 =?us-ascii?Q?RTv/+XJX9polcYrl3xZj7Ym0ls81a4JZ1v25oU8TZnH6KWlacXgn2WL2XhVb?=
 =?us-ascii?Q?hjFrRYWHH7jOudB13dE6vGNT8uO+3gUhLTC3P0+56PK/Qdt+SmjXG2SCrfEM?=
 =?us-ascii?Q?zFirrs1hIeDjBfFdXO8CG6Nn3K/yVUAgIQj8rdak20lThyNRJlFG5xMKopTi?=
 =?us-ascii?Q?SA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce3354b9-c8f7-4f44-ee53-08dcfcc08adb
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 11:05:07.3099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aTcztN4g6+4PsKOEDMFtSHnExdu0EWlf3Yg3srsV7ANyXM17dSUKFrbClQBI9MT/nVm+8W/nOLjawqPvqyR2zZck/1fjn2w1eEhCvGZWwIA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7082
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730718316; x=1762254316;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7q7H3QLXHdse4CE99Brqh5BufSw2NZOKOdO0+o1HC9Y=;
 b=B935B2DxX8Loi6Ry5pp0TaEfmEjgUNdfgz9aIlYtOZ0ZI8CHCsyLDiSg
 k3TyCAwbVShqOSJiB6Jw+uNBnWJze4QMUi9WaWhUxOVPzC4w2iVMPvz//
 jt8M2vtg4VkPKtbqo+SODt/VOxB0DFmdo3tbJz0bnYlXSz1OO3tpaKICX
 do2eGuO3IsaHzjk+kEcCk0bCDwdSbkTcLbLm8MeeKNYBHH7t+OMJqgRgg
 S4MNFh5gyADanBN8tUoEkTROKOG4zsxxZRcqDhMvJq8+16iiQ7ka5qHJc
 bI35xQNX2bg0UvP9TahbikL49x9TQmSPL7y9HPaCm/LqcpfF+MytJ152Z
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B935B2Dx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 12/14] iavf: Implement
 checking DD desc field
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
> Mateusz Polchlopek
> Sent: Tuesday, October 22, 2024 1:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>; Drewek, Wojciech
> <wojciech.drewek@intel.com>; Rahul Rameshbabu
> <rrameshbabu@nvidia.com>; Simon Horman <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 12/14] iavf: Implement che=
cking
> DD desc field
>=20
> Rx timestamping introduced in PF driver caused the need of refactoring th=
e VF
> driver mechanism to check packet fields.
>=20
> The function to check errors in descriptor has been removed and from now =
only
> previously set struct fields are being checked. The field DD (descriptor =
done)
> needs to be checked at the very beginning, before extracting other fields=
.
>=20
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 54 ++++++++++++++++-----
> drivers/net/ethernet/intel/iavf/iavf_txrx.h | 16 ------
> drivers/net/ethernet/intel/iavf/iavf_type.h |  2 +
>  3 files changed, 43 insertions(+), 29 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index 89b71509e521..283997b8a777 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> @@ -9,6 +9,25 @@

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


