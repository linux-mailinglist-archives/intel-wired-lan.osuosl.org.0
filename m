Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 946E199071A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 17:05:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B67A40D17;
	Fri,  4 Oct 2024 15:05:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id baZc2sQUEko9; Fri,  4 Oct 2024 15:05:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B2B340D03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728054317;
	bh=7ow0B/ZNGyeAsDFxjmXFGjLllkz16QmV4ifO5CrLtEo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DPT6CLS9RDfpzo9UAttbQKpR54zpeANWdEdMbhS0p7fs7vkbwZn9N+19qljYDfkB0
	 Z73rIprUV9SqH/J7GceYeEo/YNfHMuDMgPrPjT+bjEyWuwVqFMiMoWzcIcfQ0ZgSfO
	 1jMfKVveHWNFfzOL+UhxqwvmcXC6fsE1hvE6rJA1RVpF4hgJwUtwUdguBQKQOIsU89
	 BhbKAnIroTJ8oCkFF71WIVpVHHreKolL8DTXqr+Bvmenf8mInDz0eSeZr4RxszG2OQ
	 eMOIOb3w+TgB5UqjBo+OMU90S0+jq0J7Yt/TIBkArWmpNBifGlWKvlIZ4MI7GTM9RK
	 H+yx/5lw/yU8g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B2B340D03;
	Fri,  4 Oct 2024 15:05:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E67C1BF239
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 15:05:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C3E740B9B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 15:05:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5PcgaBD2j53F for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 15:05:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1F4E440C7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F4E440C7B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1F4E440C7B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 15:05:06 +0000 (UTC)
X-CSE-ConnectionGUID: dlwlPGHOTVyvat+J8WMMNw==
X-CSE-MsgGUID: qQrn7iQEQzuyK8jOCJ9klg==
X-IronPort-AV: E=McAfee;i="6700,10204,11215"; a="27369979"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="27369979"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 08:05:00 -0700
X-CSE-ConnectionGUID: H/79ZKR6T2WqLmNcNnwfOQ==
X-CSE-MsgGUID: w9ygUIesStCqDWA7X1uupw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="79302828"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2024 08:04:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 4 Oct 2024 08:04:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 4 Oct 2024 08:04:55 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 4 Oct 2024 08:04:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wJJoEEORoCfJp1TaX8qDYPGq3khdS1YBtGaXQTuLD+OS3LyQl9zBpFJ6mf4ovsOIAyrovByMoz5ZBKkVykP+dQOZUXKq1NpOgUpBygZIneh8WEXxdjZhGdJb8YlArMkFdEbDJAR/Xwxq3zZ5PwArGzLT64t1lZnZQRheN3iwyQHeDbo3S//ywEzQiMb5JxTzpx31IexjJ8MjW1cM+MwNwIhUnP5/GmkYE59sHcDtmqEy6zSIzzeKRQApOo6DaLnaWGQmDWmK4DvEqQYvirY20rq+RmNyOAGJM9+nZL2jRUpPWzaNZ1OjovkAubfbWmJQnVFcqq6fKsFk3+0+0aEN5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ow0B/ZNGyeAsDFxjmXFGjLllkz16QmV4ifO5CrLtEo=;
 b=YYvpKZKRSjg9JSAELIulwN7U4Dp/Tmkwt3fJHjm+7nkplM/lXZWVhq/ZJ2NFYX/+LoBrGtOiOeuPj7bILa99wiIHdymiDUjtTQ4U0P17iFLSZKnt37PEG+9OVq44dC3rHBTSJx30niwWBQ25L3n/vWapouHsIe6TRgRSqjc4pl7xz4Yt90c6MlDMmnvfe+TtvH5KQ/TMy2f3r53xnmMdo46Zlub0NSUqxT78wEnhSeQi1TIF67NMkpltZ1VEpd6BdzjhQyOoVBccRljf6vwf7Q0sSRuWCn3K8VsDimQ3O6jpQBfSDEfaJDsHwWq/PJE3nDuxfFuX3C9l1HteHor/XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by LV8PR11MB8771.namprd11.prod.outlook.com (2603:10b6:408:206::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.18; Fri, 4 Oct
 2024 15:04:53 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8026.017; Fri, 4 Oct 2024
 15:04:52 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v12 iwl-next 1/7] ice: Don't check
 device type when checking GNSS presence
Thread-Index: AQHbEzKp0ck11sgywEGpa9OZleMcJ7J2sw/Q
Date: Fri, 4 Oct 2024 15:04:52 +0000
Message-ID: <CYYPR11MB84299C1AA0AF50BFF64A97D0BD722@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240930121610.679430-9-karol.kolacinski@intel.com>
 <20240930121610.679430-10-karol.kolacinski@intel.com>
In-Reply-To: <20240930121610.679430-10-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|LV8PR11MB8771:EE_
x-ms-office365-filtering-correlation-id: 1c9dc728-a660-4e0a-68fe-08dce485e68a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ozgTglMWWQ1b8BkIM5J+UKfg50IDqHkv1xc3BRwEqSq3Su6npf3FxqnRGfcb?=
 =?us-ascii?Q?a4TX++03O77pBHRveFgRCjgeKKg/gRpFpo/x5OVIpuqOlKxgA9BaLHDqHQrf?=
 =?us-ascii?Q?5Sfk2jiKjDds9z1BvPtUdIedfAmTBjpAQcmbQy51dVGbDgO/LPMVnoZXVriY?=
 =?us-ascii?Q?z3rjKnj5q5jvvxCfXqASFQx9dV61IeCZmaCrKbILcWtfh3gw/7t7zBMcVEcf?=
 =?us-ascii?Q?qRADtvNrG8UO/7/JmsCUVT2+OlBSmS576SnrQlMFklRp+YiREnyfpcgTCAqF?=
 =?us-ascii?Q?bx5LumxmiJh6L9s7W6/XZeS7w5rS1M+oHjAsfNiQzuQOEsvcTM+qhaa7cA9b?=
 =?us-ascii?Q?M2e/KmYj5GSFqNPkCSacUZZDNBPBDEBjlI6kIYALt79wQE+RDcKxEKK1W6TW?=
 =?us-ascii?Q?+4z5wBorFnyxK1Hq5EOUzSVLesgpi4xvvnBFdPd+4+VHcAM4boU/EBH//Q5c?=
 =?us-ascii?Q?CD3snMeV7ljSqzHzjNApFurdp1LWqx8LUQMRW88ehfafeJATdKZRGhvZtHV1?=
 =?us-ascii?Q?KBPQkNwv1XXL9r1a8v94KavjFnQrQpD3Sruo7qKkhvu/4RE64mZzbd2Qu9Cy?=
 =?us-ascii?Q?F765hV/fQoPt37C8VboHznWiMf/hxFvhorbKJbiZIUd+y/qISl+ZS9GutypP?=
 =?us-ascii?Q?PofGflCvsqZVqM9COFPfUT7tnEGqP3vm6UuPD2zdYJ64z88JWhXTyz4pQrG2?=
 =?us-ascii?Q?bTJlH0+FLUrQiH/GdN3hPpom7Nt9Q4LsFgGYmSrhtyHMQ/4ctVsAgsuY5zsB?=
 =?us-ascii?Q?paDjDvQi+HwXIo0SVq+UfBZPTmiKk1ySx0QMIxu+bac4uajA18tqDUpaLnPS?=
 =?us-ascii?Q?+A3m3QIrPV0M20hGalKH5JBEr8kx8hYf3CYSFBYifbMNlx9U/fwJo2Y5007b?=
 =?us-ascii?Q?IIWAFUL4yaQJ0nKyaPmXmvtPjBdErbOngYxUsfiymidjwTDDx5TZk9eIWfLl?=
 =?us-ascii?Q?Nqb2diUyD57ZWeuRVRJzNIRpHzuRVgzcbM7CO2HY4b5/7Hf7iXWWmhLZcheU?=
 =?us-ascii?Q?ZKMe2/Oh4+iP6XVG1uyxPFVV/ctODe9sEuDXYY3Whs5J4Igv4yCyuNrB94za?=
 =?us-ascii?Q?HhiJkgEtkaA8NPq5DqV7WUPRWc9R+B0aWBCDbka5XDCLknjEfO4CTg2fw29R?=
 =?us-ascii?Q?aXvAj3ruSw6Wi+gKs9UQYwW5vmZOhOAm0ZqHMCmPjCgHt3HdgbiGuvf7I/WI?=
 =?us-ascii?Q?xn9SCjEitjdKtAs+97fzbMSjW/KrBOu9ka7vVLjid6DWAjSr+8AveQunBuHx?=
 =?us-ascii?Q?orb+nIguiTbajH8NG8shPVl0TDTCPPo2FqN3IM31/y8pQGx4SQooQ/XYH91F?=
 =?us-ascii?Q?IRYqFz1dyQByAVQlJlKPT51Kfoz3yiB0n1Lysyz6pa93yg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UpDze0P0GyAL9aIZpsXFlqkxySSpUawfiID2PbogdREKoXP1h3mWPrGi1S0P?=
 =?us-ascii?Q?oiibjoKcOKzVho0bnXyCPPQElwO0DFMdgZQTISB9NTx5cDQHUAZy1/7fLq1R?=
 =?us-ascii?Q?LvfsfbY4Sr4QON109JM9FCp/Xwv59wVkYurf5jj4psp6O+gJ/Yk8Z3QyEEOg?=
 =?us-ascii?Q?fqApYRxIiwcIJvSsVOsxu26zsPnV5UVu8/OwROQny5uLM8sQ2bSLl5cZHHUb?=
 =?us-ascii?Q?fuUIqm6T25DAVZ+hKhZt0DHYGqo1z6AWDTC6b+OMAM25Qei7UuJEQb/VIIfX?=
 =?us-ascii?Q?f0DBoTNrsCRz12eD/HFGJyvYx3bGk5OUQiI6rOTlraO/ErftL6iDM7AuhFVP?=
 =?us-ascii?Q?7y39KGfS6c/HAWbmorbsacR6ceHnUNZrz9k5sjn9DkyGpWQmgRHW4dRTgbOQ?=
 =?us-ascii?Q?FWUpYXiPau80yREIM/ull0XxEUMKqRb7pesOHVeFkhVa0yaCRMikmt4guWYy?=
 =?us-ascii?Q?V5GHeu7cXvsKPGFmv5Zx9SEDKNoIBQC/qs4aOfnvUjA09zDVFfbAgjJE/7OI?=
 =?us-ascii?Q?KjSZ3V1+NvNCk/rQwcElFd9zkcnmAYlTDCLajJKQQnDJdwHKb6CkTqKg/iQM?=
 =?us-ascii?Q?9KdalXbqhRYkIgdlkU0LCAagmOJUU1jlxSeV+WR3K3IR9oZcvcVJ86X4lUuq?=
 =?us-ascii?Q?wUvKZ+MOzlGjs17ZcFgkEOx7fSwxNWohmEEHPzJW5FcLUYbISEjYks2KwBXY?=
 =?us-ascii?Q?n4KS2LOfGL+jOGkXHI9/+gqaln91DYLdaYZ6gV0B9+u9kFix9JSCgSdKpfP2?=
 =?us-ascii?Q?XePWAosXUXfbhX2sIHzoa1geUqH5ZA+2VVGBP454gtqj2xkVmUXilJslqmp6?=
 =?us-ascii?Q?XLSyJmiZeqHRFVSgreSazhgqE5Zl60kFxKATZRwmiEbMvQPlDdCyXVcahlHn?=
 =?us-ascii?Q?/adm7Fp9ETjwhgb30MoyGAPYXak+kVAiBZrmuRk2HcAKVNm35+R6/4sY8arG?=
 =?us-ascii?Q?2R/krIkNr6wj+5X7SsSWzzfBMqXcJ3hDLSRqqedNXNetJ9hW36XmetuJMi7u?=
 =?us-ascii?Q?MhPUbzt/6OsxuckUqbrirQXreVOEOVD89TX8EtKlDQqK5ZawKUqyzHbXplvr?=
 =?us-ascii?Q?lIRJ0SNLGONhghy3/jaJxuWvP9N9VtuTkpN8b2rg1W/Cr4QKoMrTORxwliXj?=
 =?us-ascii?Q?qxJAFe+XWmEGa2ZzbHHWvi84S8eQ7W/84GJXMbjThG++nj6Cq9VFTtNVUytr?=
 =?us-ascii?Q?q4TeY8kN/4GOV9uHEbFaOsz74o8ZoeIXgXfGNHhn/5Wa0EEel/Z3qKQG2Q5P?=
 =?us-ascii?Q?+mjScRaF1OGB263tJ1y7NulMi4GYA9Rp1N7ntgjgcniFbqSOcY06BcHSGFRt?=
 =?us-ascii?Q?DS2iCt4qVBk0MDIO66S0qZPAYvImhqTvnDwBevG8fO/5A+DTE8l+5MliOnY1?=
 =?us-ascii?Q?R+1xUo1AOCr/ZK1/bPibeZ/eGQ6SC2BMGaIctsK/HlhkekVqqfM7iHzewpUd?=
 =?us-ascii?Q?3BEbLWGjOSI5ef6/sUVaUEeHm4H8VLBqmErdG5zLeUbhDDOlAP/Mj+yC8UcV?=
 =?us-ascii?Q?IGeDlxRMCpgpa9QpZUAkcOh86NCreYJ+wnaiQ7pOsLmj1pWQmcSP4XXpwrYO?=
 =?us-ascii?Q?asn/Ls8Jheleh/Tjy+4obmBGQdJNOfV5RITxp6Z/IwjraoPnLybu2J/Shu3E?=
 =?us-ascii?Q?JQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c9dc728-a660-4e0a-68fe-08dce485e68a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2024 15:04:52.8822 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EdaGW4wbTEDxrrqeHuSYQuznHXX9/UZB4WSq0+sE75UXjFUK0S0dhDqhoxVjpk5piGqGkqh1+aFlEZvdGxJLL6wSx0j4BU/7oL++9Jm3jSa06HDRBj8hKKUDG17jBSR9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8771
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728054308; x=1759590308;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dwntumV6Vaw2cGeaD3aXnroIZBTjCN3Gx30cYrtobyk=;
 b=GzQIc/w+fMs/5bgWHMaLN+2cQAZaUQxzK8LHlpF6zPOIuKD9ZMARywvh
 QRBGayBQBeRHsKT1baMGoQyYUW6KnlltRoBOz/jairz18gorSRMtHs26y
 pycnB4AdQ78K5sAQT0FucHaBl5dZUXlL+/INR2lYdVyR+JuKbCZtnFam0
 G7JkQlBYhTNqkVYTmD/+4uZwQ0u9nDdKERMwkubxCzyBePUn2gIcYjWgT
 aPkU8pvJ1zLURD/D4nPVepJJiPhK5XxErz6gcZR5gB8q+QM6zUrnJCTUj
 hdBH4yQ5q0P2GPI6V9mImuzf72d+pAXLGb2upa7v5tUfKnuXan8yFbnwa
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GzQIc/w+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v12 iwl-next 1/7] ice: Don't check
 device type when checking GNSS presence
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
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Monday, September 30, 2024 5:43 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kolacinski, Karol <karol.kolacinski@intel.com=
>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <prz=
emyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH v12 iwl-next 1/7] ice: Don't check devi=
ce type when checking GNSS presence
>
> Don't check if the device type is E810T as non-E810T devices can support =
GNSS too and PCA9575 check is enough to determine if GNSS is present or not=
.
>
> Rename ice_gnss_is_gps_present() to ice_gnss_is_module_present() because =
GNSS module supports multiple GNSS providers, not only GPS.
>
> Move functions related to PCA9575 from ice_ptp_hw.c to ice_common.c to be=
 able to access them when PTP is disabled in the kernel, but GNSS is enable=
d.
>
> Remove logical AND with ICE_AQC_LINK_TOPO_NODE_TYPE_M in ice_get_pca9575_=
handle(), which has no effect, and reorder device type checks to check the =
device_id first, then set other variables.
>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 90 ++++++++++++++++++++  d=
rivers/net/ethernet/intel/ice/ice_common.h |  2 +
>  drivers/net/ethernet/intel/ice/ice_gnss.c   | 29 +++----
>  drivers/net/ethernet/intel/ice/ice_gnss.h   |  4 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c    |  2 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 93 ---------------------  =
drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 -
>  7 files changed, 105 insertions(+), 116 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
