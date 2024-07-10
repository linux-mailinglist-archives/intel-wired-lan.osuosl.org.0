Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5752192D157
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jul 2024 14:16:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5D4181FFA;
	Wed, 10 Jul 2024 12:16:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4kkFocgp33N0; Wed, 10 Jul 2024 12:16:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE81881FF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720613762;
	bh=ilkNt6HSpTqDbhvgQrhkyvuwPt5SEh3N6kkPY8O9jRM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ah4uQuSXfqcjZY90/MyhO/0VLvNB0hDwFnrH/QSSP95cmIPbQsOixvlDxnuFA8tRq
	 fAlxzS3+VA9GgP9iw6EMyw0BasSrZrpU8N1frhrgXoRAXIxJowi19He1KBIU974kdU
	 ongYGAaP+Ro/vB0BC3DBFQ4qKktcqqmIm2T13EwlqsDyaOGecbpA6sz0IE8vquuvW4
	 HFTzKAkA3BxBcf+QEDRKcTvKj8/uv6iQlnJrcNKBXcahzwGLox0+xEAMzy4nEbGjV6
	 0FyHY6pz49VSKk+gRgxNSU+pA3a7a01V3+FRs4WXvr5kppQHZyXPf1LP4w/3cZGKyB
	 ffkraVUQQOG9w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE81881FF5;
	Wed, 10 Jul 2024 12:16:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B8B01BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 12:16:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 365A680F49
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 12:16:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8sIpXZngsH44 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jul 2024 12:16:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2508A80E15
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2508A80E15
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2508A80E15
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 12:15:59 +0000 (UTC)
X-CSE-ConnectionGUID: GLt1ASOhR6Kcyo6BoRWV1A==
X-CSE-MsgGUID: 9kjymca3RMa9koMCrL2C2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="40447149"
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="40447149"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 05:15:59 -0700
X-CSE-ConnectionGUID: yy0DSXIOSz+oR0RBHyGa1A==
X-CSE-MsgGUID: 3WWJlWABQqacMZpEssxTgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="52995736"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jul 2024 05:15:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 05:15:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 10 Jul 2024 05:15:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 10 Jul 2024 05:15:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nPGmRyvbs/XKnn7yuOjUFjOstV5opSORuUDp18XIRE+Nz9ZyOqeSG+LCJyKqc0BRWfASdSuZO4h58LWqugB1FVGu4dZdn1gsY0xntsEAIAleMUz2rs08P1bldPmdrLyubhSURmtX5lJJv3V5Or8mKveUIN2+RepVm/3HZTmlIeva6XS4BNOfAZn5P5D7rM4J+36H5yMGHn1eLvjfTj+7OP59bBp40hySlMtdtR1zCE+wLVViFLuG030MNNc594avly3Y2lHFMqusp9N1KuMznO/ewSx6nGXSsrvqv3y2I4Sns4TMosUbBtqfE0ihB8HNJrwfBgC6vq1NN022Foa7xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ilkNt6HSpTqDbhvgQrhkyvuwPt5SEh3N6kkPY8O9jRM=;
 b=Q2tNe2XKKv930Ay9GFDDpeJhT52IdH/m321YNlEWIicDUQiY6XS7SaPXAmeFAqVRwI9emxTjALGekh/iiQnAU3geYZKQNWc2KW3y+KRtzq3sRB7TEF+NdBCcBMa8WQAKfm4sonj/s+NuXK6XFnd58Z19Rb0eAmOeOanmsQUW8Lz0m3By+ngyfmWH6RWBnBRe6Q0/kLOAL8geJ71A2Nt049wvL4m+0m/E7Ots4puKZg7wJoERf8/bUKU59C9AoBv8JUQyGSODYHhJpXIo3JxoS6cFZN0xwl/BI2T1vrL0An1p/DqJ6Dba8PIeyk81R9ThVkrDGCh/aZAdF4Ra3bqshA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
 by PH7PR11MB6932.namprd11.prod.outlook.com (2603:10b6:510:207::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Wed, 10 Jul
 2024 12:15:55 +0000
Received: from CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b03a:b02:c24e:b976]) by CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b03a:b02:c24e:b976%7]) with mapi id 15.20.7762.016; Wed, 10 Jul 2024
 12:15:55 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Fix recipe read procedure
Thread-Index: AQHay5ZT2bCBoDCVG0OTQDsuqss0MLHv7pMA
Date: Wed, 10 Jul 2024 12:15:55 +0000
Message-ID: <CO1PR11MB5009BAAF18D6F4D9ADB861BB96A42@CO1PR11MB5009.namprd11.prod.outlook.com>
References: <20240701090546.31243-1-wojciech.drewek@intel.com>
In-Reply-To: <20240701090546.31243-1-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5009:EE_|PH7PR11MB6932:EE_
x-ms-office365-filtering-correlation-id: f3495ff4-4177-4100-3bf9-08dca0da0c7b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ayUjFqexGcGTMqzytNhaHLjy+nMdozDMtG5cVY/ihce3tlJTzEeLCdI/I/5S?=
 =?us-ascii?Q?X6TB2Nu9bJzLpzFfZ46Q/fVamvwOd1dLQkVa8DC3CNiDA3DVpFyzmRMuOmrP?=
 =?us-ascii?Q?cb1KTxzo/H5Mza/lD/ld4AhuyHosxixey/ikpdJt8gsmNdA2cTJ5a59UpFch?=
 =?us-ascii?Q?3+JhjMVufmDdYFkZNlWN2R8ViBk7aZzrDf9pClDRDMYh1OpsyAGxJKTaenkl?=
 =?us-ascii?Q?cCUGA5zGAjLrFPBAcSaEb6pV2d51Cpxcw7b7ahR4ulVdpKHGRN7WxXPXqT1R?=
 =?us-ascii?Q?cgKjmox/fw/6G6AyIPZ+Lw1N2s+bXd8wUSPOLuZw7On65lKD64kO5v4Vh/dn?=
 =?us-ascii?Q?INz/TPc/jzxTLYUreA93GfdK8X7ZWqYB66CGpwn2ybF4b3LkwKCzf7cRryWA?=
 =?us-ascii?Q?IGyZGVtLgBri7QnFPcOwtoCarJoyIwqwAYvXOK5avhjnm48n0UF9yytkm5Ua?=
 =?us-ascii?Q?B2/mkZjiB12FKdZAxLg1vLqmUeCaZMAY0W8odmW3Ueoxwrh0iG/3djMxzN8/?=
 =?us-ascii?Q?PKBsjFBzG/ysbKWV7lc7Rz2cXhyMLy9nBbT72a1+SC5k8zUR5PUCb2HAVThm?=
 =?us-ascii?Q?S5rZdCr/6iNSQvTa7tpt9bjd85Dwz6LQN9ldJzkhzuaSZtbizPOLENP+fYTR?=
 =?us-ascii?Q?8AjUA6zoViNUajvk4F+Y4miuESh55FQuN8xO36MI8ZgSUKwitW4ptR0q+NNY?=
 =?us-ascii?Q?eVzBThdEnwGMxI4M+MRE3hLAfxBzLV9v7jHr7fZFeOgyp3KWvKbdvzghtqSk?=
 =?us-ascii?Q?TQgT7O93RMBaZRE6KA3+R3HOgM5EcV0feRssSSLp5Wc2fEYSc0dRKg85O+DA?=
 =?us-ascii?Q?Ve7vVynldInYLp+jWa47UaWA6ZWwr6tCPFG16fQ3WiXMKbAxqvH41q41w+Uv?=
 =?us-ascii?Q?zLnEFTV49rSvpj8gniSPvwqYd9uexfNbgp01Mot34n8y1XL0cwDUoLk27sL1?=
 =?us-ascii?Q?osk3n4i7p0sbfbkCFXm2KMLY2+XNJ2dj0egXwUK+rycKu4o/DRlBw1jmAJ1K?=
 =?us-ascii?Q?jtRU3vYyF+/CxnTfTreO6zN4p34P6UwxG1+QlttyZsDBLo0/QmFdvRzt/v9y?=
 =?us-ascii?Q?ERr+hmnDetfRD7TxRXEEBJkpPYkt3fwFyLiGVmYNZ+MEb91Ckj2a128q4oHc?=
 =?us-ascii?Q?ff2lx0NYRIVWX47JY5iEa52R+6DMjFDDKPnC/lhuNjOSBFm3iziu5fErxS29?=
 =?us-ascii?Q?Zv+ph3WT2RfS7etCSSAffd0+JGyqelQHE7tyIRzLxOArlf2WT81w2qGLSPz1?=
 =?us-ascii?Q?NEBm8zXz5fF4hWngA3EAEXajmpA4aGbW9AMWVWw5WPNnAOSwpWf2qI7uDxH/?=
 =?us-ascii?Q?vL6BRQMPhqzhHxx+Y40lm1R2DthADGVjLt5ohU92zA7dEi2Ws+VS3m9bmiP9?=
 =?us-ascii?Q?RmRfeE39P77IVX7zSaw47J5kj/BYAttIiJ4fYeRUs3gDt4kD1w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5009.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pjdSTZ1drkA1PgGdpTHJG7Xj85xg3p0xE8WFC0RKUR0GfbKvrPryxWoUBrC8?=
 =?us-ascii?Q?jvejenS83fhW/+YbjQ2+DZT8XHX5lFLabKBHDbQvAgczLalDKLQNxMo4+kOD?=
 =?us-ascii?Q?i5088hasOjVesZ8I8PCjwmHEIS4HL8ZCf6N60DNHuoDS7yRvz2JemveHUBpf?=
 =?us-ascii?Q?QblHSOyjL0Eub+a4qjw+TP6VNYzIZV7rbRvaps0/EQCK/IEhJRebhFyvgXzJ?=
 =?us-ascii?Q?gwpdWOe/xBlTRF4KYrksmoZbCE/rVIsB/Wf5UzT9mWdxta7XPHE3wv1nd98/?=
 =?us-ascii?Q?JTsKH1JKA4pGuxZuXUBYAoZ1A10srLnfI4vNKvZ/m4VZGzPhR0vBT1GwLObb?=
 =?us-ascii?Q?vTiREptHOtMPggvvPZEYmHQxwJt1yGPDDP3dHFbo1+CKszplhLP66rfg3d/D?=
 =?us-ascii?Q?h7AibLLeDD48ktCGObki+vJBwetaFF4cZbTikTjlMz38+ltOHiYilBCXjOT8?=
 =?us-ascii?Q?OSpoVxYzdFb1FN1cuMZQpvZJcOW8wuHPynRr1fZDcdHpnIG1gP7ptgYv+P/P?=
 =?us-ascii?Q?RVl2L8Wm+zQHdtxsnuYcvYQcf/JGaARDd9Zqpp1gfDT6diDNAkrzzfQ26S9P?=
 =?us-ascii?Q?F7ztzHv+4u7vtvZJEV71aY5Sfmj0iXkyxPFdNv06SGr3wHgLDUA1OWT4sKy8?=
 =?us-ascii?Q?6hnnAYmJxE4bdnij2OE69vXiP01P2NSfX3ED1DKuzdVFEZGErfSx1umVo7aD?=
 =?us-ascii?Q?MmlUhJzXPtPdNfKFzrnzdPBVH8R/2+fEBGzbkHXcaCqYPiaA0rxuIt9eauMO?=
 =?us-ascii?Q?BZw51yuWx1Fdq+sx7VIkFPdJr9k8IYNXkAD6p1RS8IFqzcL8AYgPKMq98C2f?=
 =?us-ascii?Q?uIXmOVxPPDI4BmdiNZ0zxyjZ8KkBDfrMyKDbphz+Jkhutq1JKSBRwfRkY2Xv?=
 =?us-ascii?Q?jnfIldCASUSuC5rfoPQgTqA/z1MtGyt1nMUonwFcnQf+05UekP2l/oHHCRcf?=
 =?us-ascii?Q?0TpM4IR0ntwSP2cHjmchKsYofgIbrNdNIGsQ3VIIca+Sn9UYiXCAYEfi2Iie?=
 =?us-ascii?Q?VeIjxFpTOcqyCJk9LD62Q8CoIMR7jBew4+lHXgTQ87KbAX2p9KdTLnBkRD9Q?=
 =?us-ascii?Q?bEOkSALHWXW9xdESkhseEo2gz0w7TDuB6c40RyPgUOcMekURi7h8Mjjxd5UT?=
 =?us-ascii?Q?k5fUW/gDpyL3oPzx8tPP2xNCFc0k2oFLT4Kjge6WAlErepifbsMdG8JEft1C?=
 =?us-ascii?Q?gK06JCfXeyrTw8APTVZifMt4/T97h5EhGg1qoJgqjG419c3yeojIavT9PjeM?=
 =?us-ascii?Q?McOzYWrTFpC11KtqsedBpx6y3jT0JFy/GeELsZI4lHAlMN0dVkBf6MVQ+Wb5?=
 =?us-ascii?Q?M1MbJ/yhJp3wDzVewAb66Ws57ZxIM3V3fGvxq8Rg/ix84diUmr1ZS6ZiYICa?=
 =?us-ascii?Q?bjlM7Ml5Rk0JJuHjqGFBUkoX9sm0yyKjoTAYwOBveyq0PIN1sVbhRbibVLp8?=
 =?us-ascii?Q?nvjucXXZ+N49EuL/u7YWGlBCgRqJlLgnAljK24qoXVj38/9laIRJqsTESkUk?=
 =?us-ascii?Q?ekJc34oQ0oTVOooGDNBdH6PXlN4mmh60xeB3BwbWNUp0rLgn6T5UWafNycsH?=
 =?us-ascii?Q?SjxgD2WGcIvod68qvmPsEVH8YJwRzoASCOBJuBTb1tM1sT0TcXx8xCVyA4G6?=
 =?us-ascii?Q?yA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3495ff4-4177-4100-3bf9-08dca0da0c7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2024 12:15:55.1955 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FE5dYGcfFUH7oevU+KoEeuldunNXxAa5gTPtaeJYGZ/hdHRfu8XeGvWHZ+JabTNmQ6mEizhZ+9gUYvUwaepVv0jkedpOoN+8gwVw8+o8HqE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6932
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720613760; x=1752149760;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IOYPig5DDsAuUKMnDLhREO27eBLMtwAqee99fyPdouw=;
 b=GXxV0V4hOFbzKBXBHdBPe5sA9LoMX5boqrHgIjzWQ/ceolXQ3O+bBABh
 I9ZqfrvEMCGowXNRiYT1h+pHhNt6ynFXa1Jr9YVCXgc3I0vHfBiTImFXi
 YY+r0ZW5wwTlKbsc/2LTRADl09rbOT0z0Iwqr7CUPPCkoARtCG+OLOYKl
 BplgoVzrj1YwiH7R157ZdXVx3fKpFRjUQMNFX6+R38PrJyq+qpkWQL/AB
 GU/MHKorlAgbqG7PIBcjOlh+e+Pi+guoswuQRlfj5Ode/iyvrLP5QimRA
 127j0Fbj40KR+O43+arJtUVUHowMQl0ow8011SyA82XWHyA3M8YmXtRM0
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GXxV0V4h
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix recipe read procedure
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "marcin.szycik@linux.intel.com" <marcin.szycik@linux.intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Monday, July 1, 2024 2:36 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> marcin.szycik@linux.intel.com; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix recipe read procedure
>=20
> When ice driver reads recipes from firmware information about
> need_pass_l2 and allow_pass_l2 flags is not stored correctly.
> Those flags are stored as one bit each in ice_sw_recipe structure.
> Because of that, the result of checking a flag has to be casted to bool.
> Note that the need_pass_l2 flag currently works correctly, because it's s=
tored
> in the first bit.
>=20
> Fixes: bccd9bce29e0 ("ice: Add guard rule when creating FDB in switchdev"=
)
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
