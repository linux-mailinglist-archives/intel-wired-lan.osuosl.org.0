Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4553939C3F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 10:07:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DCC480CDC;
	Tue, 23 Jul 2024 08:07:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AxmeCgingFqv; Tue, 23 Jul 2024 08:07:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A250580BFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721722052;
	bh=AIrfZUpjtHnRN695vztUkYCbaBxwiiYrBFVUM0uBOdc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MFKV9htW0FPNmTjqenH9avYVIg+piLOO53BKbirpkB8QRc9zfst8Z90fS/n0L0FBD
	 Ovloe6YNsl5CLbXlgcBZPOX9N/WOVopC4PrZNF7KyOO3mB84KJuG6/f4ISlORZWtmp
	 GNjuQnkfur63IR556yO0ATL0K8sl3QwS5kBJPhk/9R62m5V02PgoF+ypLrMA8QH+jg
	 4wzIhlxwgfQzADSWO5kE/3BGaE0Kht3ABghlydBaTv574FouDHjW/IBMaY2tG5rjMn
	 Z+hhMA+acGMU743YtD5D68iWBZzlF4MzaJQmTywihJqrRPrrGKw10cLZEa03qJcwum
	 gRTY+3A26+c9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A250580BFC;
	Tue, 23 Jul 2024 08:07:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F1DC1BF29D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:07:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1B5474030A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:07:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WpplYB8XFhRY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 08:07:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E744D40226
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E744D40226
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E744D40226
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:07:28 +0000 (UTC)
X-CSE-ConnectionGUID: JgbcwAnxTDKZMxcC5La/MA==
X-CSE-MsgGUID: BM7SUqS2S1y4XkkXqcL5UQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="41858382"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="41858382"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 01:07:28 -0700
X-CSE-ConnectionGUID: H02rgNw7SVCskx/GGbQQAg==
X-CSE-MsgGUID: 7wF8VOxoT32+5N13qvfKKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52390195"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 01:07:28 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 01:07:27 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 01:07:27 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 01:07:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EWcm9x1gTQTADanAQ/H6a3fteD9R8WQOawXWFQFks+Z2eVKYUWlByTCvADiJG0MHCP7JqVvaX2JL3g6Gc/8SYhK0mbndv1rQUCKkWQp53MikjTaxnRaQIUj/48UZAd/MM3poAQlxvGSScFlOQ6yVsD31aX4w8ufbdcP3nHAqqeP5/IAIv3wlmgm+wiISxamA/Ep6ar4MYqlK3QULKxNaxo4rAntnYTSsA5QJ1D4RnZCNieFh5VEpzbhEMPW/lYF0UjPWpBk2w+7+0c/osZ4L1SilgXNB5c0WzXLcbpEsffNJC3C7MEjw20ylSSCMEw7VqNqDWoHTbQpFt0i4/s4Kdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AIrfZUpjtHnRN695vztUkYCbaBxwiiYrBFVUM0uBOdc=;
 b=MuLcXMwwNhrffgYy6EfVytZmqM5UMafmzMedk6zgcPygd6WRBPJGdHRLFZIH6Qi4kHGz9jrzJ/o2hVI9Z19pmWLRad60vpv9qEhGqU99yHWkwReGplpD3cnNHfswCz5uIiSCD2He7746ioWpIcFPkiDCrnMaT65RESxN2dbg3rhyYWNcptHZPZx5p/SHQ4QxVutVHLEGGn6qAJxAfhiXncQ4ppwFUS7BRJJB5qINNq5BrvWzm3fjcn+ohd1dLcObI9dq/cYidZ4DcJFmz/CuSifhDJJt7rDWafdw50qATrI/C9ISMSJspHWEHxnxa2ak8GBUJFR79lOm7NasD8gJtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA0PR11MB4591.namprd11.prod.outlook.com (2603:10b6:806:9c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.14; Tue, 23 Jul
 2024 08:07:25 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 08:07:24 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Zaki, Ahmed" <ahmed.zaki@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 04/13] ice: add parser
 internal helper functions
Thread-Index: AQHasGf8tBpdd/ehZ0eEgW4lZ0CP9rGxWHYAgFL1WvA=
Date: Tue, 23 Jul 2024 08:07:24 +0000
Message-ID: <SJ0PR11MB58655F35B4F3187D8CD533008FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
 <20240527185810.3077299-5-ahmed.zaki@intel.com>
 <20240531131542.GF123401@kernel.org>
In-Reply-To: <20240531131542.GF123401@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA0PR11MB4591:EE_
x-ms-office365-filtering-correlation-id: a46990a6-f5a7-48b1-f657-08dcaaee7ca0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?wjIgSQIeTg1goosCdL1p6t+3AFGIm/aFR5B5wI6BSo0DNAN0X+LBnC9/vhyP?=
 =?us-ascii?Q?FlU+9eSlp9af57D6QNXHgbWQNiOkaCznWL/LUtOOfU1wTEyN5gXxUbo5sLOL?=
 =?us-ascii?Q?4pXT3iyZWsSBVzjpqUYpUD5LOYI0riCCBFd6IWLcipN+xAjEIsjz1G5Hb6uE?=
 =?us-ascii?Q?+BX+MJfQ/IB74HiCpMBMn5gm1rWgHV2S4RBo9FmSSbtDdwEn+khXaIUO/Ug+?=
 =?us-ascii?Q?l1DOQlkk0gV1xmuj5z1mN9GPRxk3Oo/xub9kj+fSgDI440WmFKpeLU1rZ2xm?=
 =?us-ascii?Q?N+njMeSPNYkMFQOj4tvpEfpPMlP1S0UdU7Eh0MojyRbecGEk/avpHRCH07Nv?=
 =?us-ascii?Q?HmdN0y3C7Op11dC8ig/YW4Y1WUx7OWQkIsMZKU/l3M+b6h8lvdpvX+Ena68e?=
 =?us-ascii?Q?LpHLToHBnBa5S1K7nmH4NB0nsHnhBRO+p5i01eQEAeby2m+yZLMwKdIUj/5R?=
 =?us-ascii?Q?n2csN5VjSEi6S3s7nwPJuQmFlVuWCuJ7zYduTGg4x3yZKAOhcrjifh53Hqdw?=
 =?us-ascii?Q?inZWaqhvwzB4ZBjHr9IuuD3UkOqHtWpQK04XQ4NJLvoOu+oG/Ms23Hf13JCL?=
 =?us-ascii?Q?lV1uWW+ClnHZmVEQurAVVTap6oEjp6KDdkwQ06bxy/rwfiOSgftlt40dT0tu?=
 =?us-ascii?Q?ruNQFQ+b75DSgYHDSRLdw8pMa+8oCL9GFXG+ws5sKIZMew7p8o8dBa7sJpEK?=
 =?us-ascii?Q?Q30oZ+xQwTCRlOH6YSzLBK40IeOvBX+euF1z7UV3vGHdJZki5BAn1aUk0zDj?=
 =?us-ascii?Q?cre3eE3UFpItQ8R6bgEoB/A1YCyLFOFR3BtGPQSr0o7ynEqJJGi3kdcQM6KY?=
 =?us-ascii?Q?o8Qtzws7YSNEC4krW/hUqDgBDJh6yIiDQOc0QlLc8cGajc5BEXOYsBd3dx8C?=
 =?us-ascii?Q?W86wJSuH2ylT7DiHxihJegdewptmDR7RIdliiP/bm9hTecM8MwnaHAX3rSS+?=
 =?us-ascii?Q?WWWjuXi4YUN6INeMqUKw2FmVboA4dn+fls9rxdUFK+MDSBLKxIwtm9dVKYZ9?=
 =?us-ascii?Q?IiF5jPWLlh+kWVWytNkzbcetlfGDeSwhLNqaf7fNH3W8h3abE6jrvcNZD1zl?=
 =?us-ascii?Q?RpDWFVeMGuZjIoGkHZzykPgW7Uph3RCpmCOnladAosqW6nDlVJQMcpK0FPD8?=
 =?us-ascii?Q?u8pKME/t76g0t0IhGK5W1IN9GQaoOdcIK95mecKwTcyVsLoXb9Y2m7isTu+n?=
 =?us-ascii?Q?7n2Lqk1oEyvfdpSZJuZzKOA5or6b5DkVKiMOhjuv+VqPT7zZgWkUEkK73TJU?=
 =?us-ascii?Q?pWaJD6IFjJW0fE/CWKVQbAaF9ZsegIGt/M3uamngUjjg1VOeewqG84wgjpDr?=
 =?us-ascii?Q?Q7uMphDmvMi3UNh69ROxTXY84G5dCgZaZhkIr/0AWLqGrcqHUT68JMeY/aLr?=
 =?us-ascii?Q?Dy8I3R3ObssVw3k8Vnf6N8aLHMVG3Ohl58zZJQJ0AYLW4UwxnA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PPg8Aenjwq7Ap3m11SRqHm79w/0BTiGevf/Ntl3AnvsiG8g4kC0iFQ6F8kgr?=
 =?us-ascii?Q?ZfAzIt7ACweRBQjFSacxkcvhVvmovpGm+fT1BB+u3W7KbKSDrgLc2ujAnrWb?=
 =?us-ascii?Q?VEJ9ovKs/bwyHgfQzaZW3gXeMSDKBovqkQxP1TAwcMOohIhuUzk7VqHoM/ny?=
 =?us-ascii?Q?MjLN6QhX3bEm5u1gWhiId0ZLYk1bHWxLIxMzhnT5bPaWhlexQJkkSchjt1T8?=
 =?us-ascii?Q?zft+qu7nb9RINIz74HefXE3WXdVHRJn/SOT2/0xn8dh5ftjh+WMYUAa7SCkq?=
 =?us-ascii?Q?ljDWLyYC+054Ilx61pL8wagv1ZG3aNCXpJBuzPN/o4hgyJQg0Kk7TlXHbgml?=
 =?us-ascii?Q?AGGLVh/DfqIvwwRVZ8SzPJwkq94p14qWKR6hJ99KXs6fRkM1PeXkEfvpmpez?=
 =?us-ascii?Q?R0oGD8xfl3Xs+6sDiNkKvvbtHyXkfVUDBSabhFBbKQo4J7DXfVzNmbhu5FNd?=
 =?us-ascii?Q?r4Rz9BfBsE+DER49JWDIQS9S7fBzj+9O7d8eFad8GI6MH4xMw79Hcdtge4LK?=
 =?us-ascii?Q?b88aJMAI/OZJKrpBCxzCKDKlQsaFbbSIUMI22/1gLVQ+rvUIPUEbiiOaMO8o?=
 =?us-ascii?Q?LgteX/Kq+dfzcpd4+fVme1s4cp6j6b8iqQTLA04M2EjpxSy1WySqqH+gqoEh?=
 =?us-ascii?Q?uNg+2oznqXuJ3gv9VxX3tlbxkSYq8oX01oDhNuZp16tiEN4u5RMlCug2V3o3?=
 =?us-ascii?Q?0ZQJXreSO4Hv/ZiSPrEN/7iHnzfdtJ3eDkdEVcaRMWPt6w10Wk70RY2VJjQn?=
 =?us-ascii?Q?yr+bn05SyMLFUVOEiFaadjePcazan1pD08EIriyGP7+L/B6f+ogQoTbBED9e?=
 =?us-ascii?Q?BpgHOmu8jNu9VPKjDU0SIO6K/oQrTswnwNBqL4UUs8fls4vagv8hCdZweQRL?=
 =?us-ascii?Q?tn+Qun9IoYPzaLH59FvrgS3b5Q0FQoqX5DN2NhK5FP632pFmeha9Jw2segex?=
 =?us-ascii?Q?x/h2Th/Sq2cgkIgJLNe2Yo1i6J26ssJTk1ssFGQF7wbDRqwwfzDnUt+5nH5A?=
 =?us-ascii?Q?aY7bvpfRocHyj+R9T/C0YnkM4418mb8e+O28/b+IFUIgHqnVdTurn5NEtQkZ?=
 =?us-ascii?Q?nredo9rfYlBYx2Dl63dtgXiktnygvEkuE5hKM83ffXT1QXIaNN3M7LjISLKz?=
 =?us-ascii?Q?PmR0ZjWy2JkZPABkGA213L+QMHyZX5CAFQwwo/hw4nlwTFRfSb5VdioueOl4?=
 =?us-ascii?Q?2GggSbN1LtkhBF8hHf1+i7MJdVClQpf4nmUcfVhASqzIIzb1P8+Vwjscj3cu?=
 =?us-ascii?Q?SYCbuycScHr8NP4SBdnhFJMoYzfwwsyGGhhfPgKC/7WKWGcqwQ2eRkhqJ0kQ?=
 =?us-ascii?Q?DtGDh09fXCHaO+jRTUyZpKyaFD1W0MpnqIStAEwbLOmMkXbv7yLqFHqJDgaS?=
 =?us-ascii?Q?epQQp3SCIvL5ZcFJcf2w1wxtGq+W79cQpOaMp0xhl+M4slggqEvS7B+Fx5a9?=
 =?us-ascii?Q?c3iTXu1oXx5KkyLk6drsI9af8evywxWgsSU2gsdY8hw1fprVPV3dBcSPOgL0?=
 =?us-ascii?Q?/NW9J+KjYb/gwaP+cHJfmUvEfmqcPK43OoKAq43LOUi007VHLz1UAi/IHaS3?=
 =?us-ascii?Q?PW40SZy7hChj9XLIqxIF6n45yuFwk5wlnVxKGlmgPakxQcji9dpBuOqKwAh2?=
 =?us-ascii?Q?VQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a46990a6-f5a7-48b1-f657-08dcaaee7ca0
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 08:07:24.9060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3q/6+o8ZlF2c0W5SQNGWn3ycnp+hvlkXXXbqkLCRyvPegkn63zNSL0fjy+FtllfRpe++ZJ49bjN6qnN0z9lRpF9WzG6cMU4TKBj7He7u6sg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4591
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721722049; x=1753258049;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tqb+woHRxVl203PKWsLuLNiYFqGLWI//HzwV1CdKmgo=;
 b=C+O9uP0fxTTl/qbC13HOSoyqxQdnpYHPnJFrkJDjMJqgN3seeLgk6WKu
 ZhzT+iRTzjpOnY52Mi+IAoHdtOmHVIGuu6YZSbgLQ/bZc02E/19Tl7QXW
 PNI+XV/GRtotOCfeXmZeWCtUvWGMpDsQtJqMBOPLhMPs8+FP+zuxF4MWw
 4jNSE8Pz08NmsNpPPZI6fRFIKbqOYvrNiMKVlwn9wn883dRUZhPs/iGB6
 WzLqWO+WHwK+ReezGIFwBf1LSSg6iYvpJSlLn+CC4QNuqu81BUXras0Bh
 5nH+JFBNdiVprv8Ts/UAPgP8BLa2aGrrjFloAIGaFnnYYPzaJcjIEklES
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C+O9uP0f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 04/13] ice: add parser
 internal helper functions
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Guo,
 Junfeng" <junfeng.guo@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Friday, May 31, 2024 3:16 PM
> To: Zaki, Ahmed <ahmed.zaki@intel.com>
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Guo, Junfeng
> <junfeng.guo@intel.com>; netdev@vger.kernel.org; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;=
 intel-
> wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 04/13] ice: add parser =
internal
> helper functions
>=20
> On Mon, May 27, 2024 at 12:58:01PM -0600, Ahmed Zaki wrote:
> > From: Junfeng Guo <junfeng.guo@intel.com>
> >
> > Add the following internal helper functions:
> >
> > - ice_bst_tcam_match():
> >   to perform ternary match on boost TCAM.
> >
> > - ice_pg_cam_match():
> >   to perform parse graph key match in cam table.
> >
> > - ice_pg_nm_cam_match():
> >   to perform parse graph key no match in cam table.
> >
> > - ice_ptype_mk_tcam_match():
> >   to perform ptype markers match in tcam table.
> >
> > - ice_flg_redirect():
> >   to redirect parser flags to packet flags.
> >
> > - ice_xlt_kb_flag_get():
> >   to aggregate 64 bit packet flag into 16 bit key builder flags.
> >
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_parser.c | 196
> > ++++++++++++++++++++  drivers/net/ethernet/intel/ice/ice_parser.h |
> > 52 ++++--
> >  2 files changed, 233 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c
> > b/drivers/net/ethernet/intel/ice/ice_parser.c
> > index 19dd7472b5ba..91dbe70d7fe5 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> > @@ -957,6 +957,105 @@ static struct ice_pg_nm_cam_item


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


