Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5799B9A121
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 15:40:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B01060C09;
	Wed, 24 Sep 2025 13:40:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fSdArIK-Tm8e; Wed, 24 Sep 2025 13:40:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6724F60C08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758721214;
	bh=NtfrvWY3/O+rHsOeVG3Izb69TN+aqCpUL6V0DoyP+A0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bUmb8zxC6y1cGPFWpA4KDxWnHkP3vl2DIXqK+iBdEvS9Cj8YIwDUp0IdPr7ZFNOxi
	 1sURlTm5hqmo7aU2vkr1b2ewFOU8Mh9sgoU9CIuuIT04ZIMnopcpgdkitRL/gm2RbB
	 OIxEb1sg37s7fRloFawP7oRFk0vZ2Y2Sptuh9HMYtUeSlgp99uws0aJTFzRSae4Z9v
	 70k5d8WdRtqm8ga3CiCOhT1MbLaYhqsQxJisL5qi8LYB1R4CC5FOFEfEFlpKgFAtr9
	 7sxU2/82YpkANPAzFpHoVMxNkrw1sGxAVmaV10V+FmZse3csZG1ZeA3IVBjCy5awfp
	 EVdl3PYIYopew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6724F60C08;
	Wed, 24 Sep 2025 13:40:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 78E2C129
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:40:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6A84C80B4E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:40:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mOyZrGg9GWP2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 13:40:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E32A980B30
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E32A980B30
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E32A980B30
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:40:10 +0000 (UTC)
X-CSE-ConnectionGUID: t6tU/iSUS7OUooliT+BooA==
X-CSE-MsgGUID: TrlABJJiRI2pgyF1FG+AJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="71639048"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="71639048"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 06:40:08 -0700
X-CSE-ConnectionGUID: h/eHl8EQTJGolTDcZZqfqA==
X-CSE-MsgGUID: 3h9DnG1pTQaiUfwbf8kn+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="177807989"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 06:40:08 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 06:40:07 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 06:40:07 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.37) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 06:40:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dPMC0eHKozvJNmeRIACYEH3P0MYZ59evbyQcboG4gz7IK0+1c3BQJcqz193ydEwmStuabset+una3BWVcWIECekxNeSnN8G5l+/VerAd+mRr1G+ENXxi6NpzXrjvZQe2AVH3iyavHEG3gtmy9FiQl2yx425uksoZvSwu0oUzX6SShAefgoQTubw8Ds/v1g1nUr8LS54UOfdVp7iOBPddZOP94mbkLby/RvUETqZyvCkJ3hCzJsHdJfX7tMZZLNB5sQhmb4MyhiytqRDb1jQD/PW9Cx2rEV8YVdr7Vm6RwpkBy7MsobDxhkcJd1JjqLDMTtAjqB8FJOy5UPbP+52hNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NtfrvWY3/O+rHsOeVG3Izb69TN+aqCpUL6V0DoyP+A0=;
 b=P3M15lgzRAYYmCVANUdODJss+pom9qPHlNlrHljBaadMNX1+x9Fu4bJ5BlpMh6jEZc2Pce/1pf9HYpcLru9FsZp/D8zqx1WAjmZ8fOmCwCxPWfVlvBr0aOpW10g7v0jKoW/lM46Kg4IGA+rBNP3SqcW1ncUxBWL/csqhQTQV/eKdBco72V6BDQIUMloHVWA26p5otRA5JGFhBOBcTa+ltRocpQJgYg4V9121ZpENKYmTcfddSLezEnn9dBMEH2gmeJyNmFf6RL4141EjNgnp6ZXCDu0H3qPI+1xG1O2hVlkC82bo4wAGwikDha0yQT1/D1GWz3tNP+pwcVeEbrLUeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB7002.namprd11.prod.outlook.com (2603:10b6:510:209::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Wed, 24 Sep
 2025 13:40:04 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9137.018; Wed, 24 Sep 2025
 13:40:03 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Jakub Kicinski
 <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Michael Chan
 <michael.chan@broadcom.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>, "Tariq
 Toukan" <tariqt@nvidia.com>, Gal Pressman <gal@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>
CC: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Yael Chemla
 <ychemla@nvidia.com>, Dragos Tatulea <dtatulea@nvidia.com>
Thread-Topic: [PATCH net-next v6 3/5] net/mlx5e: Add logic to read RS-FEC
 histogram bin ranges from PPHCR
Thread-Index: AQHcLVB/Budmf71LKU2E2WmewQlpv7SiVsag
Date: Wed, 24 Sep 2025 13:40:03 +0000
Message-ID: <IA3PR11MB898661DFC0A67EB3000B5320E51CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250924124037.1508846-1-vadim.fedorenko@linux.dev>
 <20250924124037.1508846-4-vadim.fedorenko@linux.dev>
In-Reply-To: <20250924124037.1508846-4-vadim.fedorenko@linux.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB7002:EE_
x-ms-office365-filtering-correlation-id: 9a61f54b-c477-467e-7dcf-08ddfb6fdde5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?+izv7gpGgfLokohjSUxdK9XoaFb1Dfv6rF22Bcwxc8vbRkLX/WhyMwQs+iR7?=
 =?us-ascii?Q?8cjVvQUlbP2IexOdDQx/BJ6HkHFx54EorOGZGIHVcPwZD+P6oXebJLScrwik?=
 =?us-ascii?Q?OyRwhBPAb/dN21e0HDhsgwrVXFE4nEUv9QwFcUEJqtpivCaYf8myQyAeUqfs?=
 =?us-ascii?Q?6URT9Pjx95PwUKrpL2CxivPE0jY8ciW6kmu5zDnvvuw3dvDLBN7Je/WaUV0b?=
 =?us-ascii?Q?fhTLNTGoFB+0oixMqDuCkVABPiT4+cXBvQZo86NMO3x/6XyhBA6gNufNZJhz?=
 =?us-ascii?Q?4pd+edLzT8WPkfrndc+d82OpVqUSO3NGd43jawDdMY2pptGJGMCWjxmCIOO0?=
 =?us-ascii?Q?Xa+OiOrX1QG/9BQW3yTZRxAllz+S9HkUi6nUjokJViiPPuIwN71iUXFSBple?=
 =?us-ascii?Q?50NI/FPzy4zylJVH7YK5tCoj9RGOSuw9Wal/dsybxwaAMmsKDdMzZgQyjVbn?=
 =?us-ascii?Q?VE+nbij9vrum3Ehv5HVZM2mnyNWGXvVDjPmG4YZzGRzj4nQQg6E5QLeObSSi?=
 =?us-ascii?Q?OqHzAHyEOszWFm89SOd9uMHLdcM6yzkdvve6M3Bm8pEBvwZEiO2+OdXiYg1I?=
 =?us-ascii?Q?q+wV6Ehzlwd2daK11wk1GIO4G/YpkQQlYMOy7hRIw3FeoT1B8G5q5NDmbuIM?=
 =?us-ascii?Q?0ocqP5tWkzU0Z9oqNW01JuTiFD4mlzWHtWnqETWGMB1xi+vWrqb7ySM/fmbK?=
 =?us-ascii?Q?fxjBpuCnsPd+yPS+5k+KbkNf+wEa1AsW8SbNua8NXJSue2SoQpW8RujSV+Rq?=
 =?us-ascii?Q?LLhR1qkW9SL8buQN4031k5rnlX6MS69m2EdQIQceycW9GAsxJe8RZcyyMCnj?=
 =?us-ascii?Q?pStW9S8fwklt6kTNgfakEomUVLs+EUq3v9ukyzmMzGRbRub8sE15RQJAuNuj?=
 =?us-ascii?Q?3km3wmxfPSP1nq6u5UuEFHLh0bNPx4EUbiCsUxxE98FJJfPkoSogQW0q0/51?=
 =?us-ascii?Q?ANJS9NCBp2MLT6rLWUjnWks8y8hP2ZQlnMa0vCsejxNq/Gi8iAU36Udon0eo?=
 =?us-ascii?Q?d2fIT9kNvurNqYPKawmjcTQQs94M6L/KmYqBkYj2GnAHl9NbLYXBUaVlkQT+?=
 =?us-ascii?Q?oqJtx/vHNsgp8CDNVfzz8iKs0KWmr1sHTdZgwHhI6Fs18fdsOI7LviXaAyjw?=
 =?us-ascii?Q?VJrE9z2BgdZQx8JtCQzd87s7L1f8sc/GuVVNe+aZHpAaBHF1QYsbO+ZxTGxg?=
 =?us-ascii?Q?P7GdWuBZO+jGtfnFo/PqbdZLjcWDq8t0tJhrGya2K+nXY+ZP3feKRGpaV2Z3?=
 =?us-ascii?Q?feO56rD929Ne7/rlVvEXeXDVHA3fOsymBUEllmyvMqITatvp6juR0eRpSQbq?=
 =?us-ascii?Q?YEAlV+UbwI5GZX/WB2H9cedZXq/YYOdABX4IQKuCDE4M7SWV++iwH1mHII5E?=
 =?us-ascii?Q?xRvG63lMCEEM4qhtYyH7iuzapIcpoN05lYweKktnUjwYhcbsl0tqw2UFY1P6?=
 =?us-ascii?Q?FnH9BQwlmhHfSE3TijhiUKlu28bO+VxVMt7r4+fx9Gx/ZCYNxL/qBQFmNovo?=
 =?us-ascii?Q?zXHl3/dazsTJlD3lcwWlWSKxsz6tDLJKaHIM?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?utGeIk94IklfotNy8QOyrYn4Do5IABWymKWez0vPcz7Kd7FkfaNGts1DfTqh?=
 =?us-ascii?Q?dIZneg7BSAe1stiJYqf0vyWj/auQKBYQKrs94b4BOKHohrSPitv9fnlhetg7?=
 =?us-ascii?Q?9FdwbVeqa8XxtOBjq5XNF0FvTUvRldztZooFEU9y+RarrY/6+NWBX9G/HcYZ?=
 =?us-ascii?Q?APPzWPv2GWmqvsi7/aFF7noKjurlWeTUgC2uIeukSlsAnpKfmiT5kgLtV2Q4?=
 =?us-ascii?Q?5zK7oGZbXxXElaN65FCUuhcLDP+eg5H4FsjNrye8D3CJv9QisCiPy+Z/+t9Z?=
 =?us-ascii?Q?IgF7BxM3SQF5nguGeoj+5rYxmOnPFSfr+RnDJuh7yTp0xYvnqb06AxdEaFQu?=
 =?us-ascii?Q?AuwhKX+nZr0LG3ewIFNHXThfUzxrAZsB3lexMNe9chupsj5jAw/Yi+APtRNk?=
 =?us-ascii?Q?murptbjAg7gH/Eqh/GEhbA+e6dW2+wtpoT4fLIBpKQ9l2qYzrEBBeAq0u/rR?=
 =?us-ascii?Q?1vhoiTZy9UWTjOFHXTxY/jP/1a/sLAwUwSqE2QxKhngsD5LVVsIh65gywW/I?=
 =?us-ascii?Q?p9o+oBCgsOEJOHWP/6j3KxrLEsnEWcHV/ssU5X0IWBMjQ+wS8gzXbaEtTetM?=
 =?us-ascii?Q?fopCXKkXpSI/RevGPcyHuc/KwXOpY/15oTsATNNElzpHSTQG/go4BTymtkZF?=
 =?us-ascii?Q?mf+KdkbQxHhn1DwuPdsJQoB8pf7cG6zbFiabZeOAokzIcXcI6Y+4uR9sodNr?=
 =?us-ascii?Q?/C2fpWTAEIT0As8gryXN9zX1bSBEug1lWLuGOyvAcF20nGKEsJxXLFo1PSOQ?=
 =?us-ascii?Q?c59Npl8+fnSJAIDFXDMzJR9WVZh/ioENa0iyjXBeaTPHpDRE73tiVLbwHKs+?=
 =?us-ascii?Q?VqmGW8cSMGjSWGAUj7Dj/1QqL8WVS3L7ib4QP9mtdyzvsyX2h3Bmx7XHFWf7?=
 =?us-ascii?Q?uO0NzgSsH/34opj+8NdCcvXYGuxfashTr3md8iiKnraNJ6GTrQYLbtAdwIFw?=
 =?us-ascii?Q?bflitDmMjGu2Z/ks7FGDkBQfjYZksdPO14pFeFmca3jNL/Pqz/sCi93ynGO9?=
 =?us-ascii?Q?/PAkZbfXdce/na+PBmgH4mXiIY8351TY3kIQbkblEPP5uO7UoFyB/9G8Bkpi?=
 =?us-ascii?Q?uEkQsAjeolQopDC0WW+h0fGS0G22hh8Mm3rpE+DK3jfaQ3hRj9H4z7nmTLNT?=
 =?us-ascii?Q?ah2O6cCpDcFbuH+iLWTiQODD1Kdy5JVcC2Qmr8TyIHkcVApgqbTbtZ25lxzq?=
 =?us-ascii?Q?jDC0AIdKke8TeON7fabHTXZCRPdVoJSdoBHOvw+fLEtPYrWTsNQHv3azKWdB?=
 =?us-ascii?Q?Ac+9mn6KXZhoel/xtU/LRwMD9ZM81RJLgOy2J9Q4zIi1py3uMt1spWlyyUEO?=
 =?us-ascii?Q?VsESo6rU4Cjsy4xz1+p+6OUORv1S1Yd+Ui8a7gEw33ADd01JlyPnXjLR/tRd?=
 =?us-ascii?Q?OPKmfQhivODE+Ju60pxKp/xC9I/Par4tBMumLwbZRWXYTrWJsLEYGznjjDUb?=
 =?us-ascii?Q?pWXRtUvL5HXCgk1o9R7vh8swND8Qrx58OntgGNkAWFrbmnCcyMvdFHh2teqD?=
 =?us-ascii?Q?PvDI3248MFAjueXwaSZg39sECfg+jCr4x4DT/xuFj/bg7p6AYmQbeBURjWyE?=
 =?us-ascii?Q?+5hdDgpdIiOYXHUmkkUcTX7qcJHuIEMzGAjY4c44X0TSli22L2Cj/q7jQm8n?=
 =?us-ascii?Q?Dw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a61f54b-c477-467e-7dcf-08ddfb6fdde5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2025 13:40:03.9201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jqc8aUOBqxYNHaFKjvf7h2KIpJiNIHm1iQzoY/iigwQZW5bbYN47OjoXjp3KRuAISRkbcU3jsc9oSh7ms9g3vnz9IUtpD+j5vPygY7TcpKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7002
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758721211; x=1790257211;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tvp/D6V3kdZHGlsr458DNqtmvhgbMouxde1+h7mEGsA=;
 b=dCL7PO9Po3jfkOom0Q6fO4nG7URDJKYwz1mm4WQu60lvS8RJYJ6Tf5kg
 5IYzc8PYeBqF/i7+P7ia4Z4GJZOI7xdD6tgTXjrTpKBGsCq5VIkJhrn1c
 QuOke5wnL1H82KvMCz+L4q9a4dBFSgpNaQ+UdO3r6b83kLcoMOSQy7Wln
 AnJzEGdbPjTitplbGGKKPy4Rk6Er/WV2SyHCgRbDz/1jJSr74BSz3d/UD
 ts1WPIQsYer0KdU66PW9OtOICU6a2YVCVD1SwcpGf6SruqxJkSEN0ShCZ
 zcFGSMl+x8yiBHdIYcJ2OKzhD98Y2H482EWYh94oxq2XaoX4OJ2eZDYTC
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dCL7PO9P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 3/5] net/mlx5e: Add logic
 to read RS-FEC histogram bin ranges from PPHCR
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
> From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Sent: Wednesday, September 24, 2025 2:41 PM
> To: Jakub Kicinski <kuba@kernel.org>; Andrew Lunn <andrew@lunn.ch>;
> Michael Chan <michael.chan@broadcom.com>; Pavan Chebbi
> <pavan.chebbi@broadcom.com>; Tariq Toukan <tariqt@nvidia.com>; Gal
> Pressman <gal@nvidia.com>; intel-wired-lan@lists.osuosl.org; Donald
> Hunter <donald.hunter@gmail.com>; Carolina Jubran
> <cjubran@nvidia.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Vadim Fedorenko
> <vadim.fedorenko@linux.dev>
> Cc: Paolo Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>;
> netdev@vger.kernel.org; Yael Chemla <ychemla@nvidia.com>; Dragos
> Tatulea <dtatulea@nvidia.com>
> Subject: [PATCH net-next v6 3/5] net/mlx5e: Add logic to read RS-FEC
> histogram bin ranges from PPHCR
>=20
> From: Carolina Jubran <cjubran@nvidia.com>
>=20
> Introduce support for querying the Ports Phy Histogram Configuration
> Register (PPHCR) to retrieve RS-FEC histogram bin ranges. The ranges
> are stored in a static array and will be used to map histogram
> counters to error levels.
>=20
> The actual RS-FEC histogram statistics are not yet reported in this
> commit and will be handled in a downstream patch.
>=20
> Co-developed-by: Yael Chemla <ychemla@nvidia.com>
> Signed-off-by: Yael Chemla <ychemla@nvidia.com>
> Signed-off-by: Carolina Jubran <cjubran@nvidia.com>
> Reviewed-by: Dragos Tatulea <dtatulea@nvidia.com>
> Reviewed-by: Yael Chemla <ychemla@nvidia.com>
> ---
>  drivers/net/ethernet/mellanox/mlx5/core/en.h  |  1 +
> .../ethernet/mellanox/mlx5/core/en_ethtool.c  |  2 +-
> .../net/ethernet/mellanox/mlx5/core/en_main.c |  8 ++
>  .../ethernet/mellanox/mlx5/core/en_stats.c    | 83
> ++++++++++++++++++-
>  .../ethernet/mellanox/mlx5/core/en_stats.h    |  3 +-
>  5 files changed, 94 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en.h
> b/drivers/net/ethernet/mellanox/mlx5/core/en.h
> index 4ffbc263d60f..14e3207b14e7 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en.h
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en.h
> @@ -956,6 +956,7 @@ struct mlx5e_priv {
>  	struct mlx5e_mqprio_rl    *mqprio_rl;
>  	struct dentry             *dfs_root;
>  	struct mlx5_devcom_comp_dev *devcom;
> +	struct ethtool_fec_hist_range *fec_ranges;
>  };
>=20
>  struct mlx5e_dev {
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
> b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
> index bcc3bbb78cc9..fd45384a855b 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
> @@ -1932,7 +1932,7 @@ static void mlx5e_get_fec_stats(struct
> net_device *netdev,  {
>  	struct mlx5e_priv *priv =3D netdev_priv(netdev);
>=20
> -	mlx5e_stats_fec_get(priv, fec_stats);
> +	mlx5e_stats_fec_get(priv, fec_stats, hist);
>  }
>=20
>  static int mlx5e_get_fecparam(struct net_device *netdev, diff --git
> a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
> b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
> index 5e007bb3bad1..0c79c42ae538 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
> @@ -6279,8 +6279,15 @@ int mlx5e_priv_init(struct mlx5e_priv *priv,
>  	if (!priv->channel_stats)
>  		goto err_free_tx_rates;
>=20
> +	priv->fec_ranges =3D kcalloc(ETHTOOL_FEC_HIST_MAX,
> +				   sizeof(*priv->fec_ranges), GFP_KERNEL);
> +	if (!priv->fec_ranges)
> +		goto err_free_channel_stats;
> +
>  	return 0;
>=20
> +err_free_channel_stats:
> +	kfree(priv->channel_stats);
>  err_free_tx_rates:
>  	kfree(priv->tx_rates);
>  err_free_txq2sq_stats:
> @@ -6304,6 +6311,7 @@ void mlx5e_priv_cleanup(struct mlx5e_priv *priv)
>  	if (!priv->mdev)
>  		return;
>=20
> +	kfree(priv->fec_ranges);
>  	for (i =3D 0; i < priv->stats_nch; i++)
>  		kvfree(priv->channel_stats[i]);
>  	kfree(priv->channel_stats);
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
> b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
> index aae0022e8736..c0bf0d49d7d5 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
> @@ -1490,8 +1490,88 @@ static void fec_set_corrected_bits_total(struct
> mlx5e_priv *priv,
>  				      phy_corrected_bits);
>  }
>=20
> +#define MLX5_RS_HISTOGRAM_ENTRIES \
> +	(MLX5_FLD_SZ_BYTES(rs_histogram_cntrs, hist) / \
> +	 MLX5_FLD_SZ_BYTES(rs_histogram_cntrs, hist[0]))
> +
> +enum {
> +	MLX5E_HISTOGRAM_FEC_RS_544_514 =3D 1,
> +	MLX5E_HISTOGRAM_FEC_LLRS =3D 2,
> +	MLX5E_HISTOGRAM_FEC_RS_528_514 =3D 3,
> +};
> +
> +static bool fec_rs_validate_hist_type(int mode, int hist_type) {
> +	switch (mode) {
> +	case MLX5E_FEC_RS_528_514:
> +		return hist_type =3D=3D MLX5E_HISTOGRAM_FEC_RS_528_514;
> +	case MLX5E_FEC_RS_544_514_INTERLEAVED_QUAD:
> +	case MLX5E_FEC_RS_544_514:
> +		return hist_type =3D=3D MLX5E_HISTOGRAM_FEC_RS_544_514;
> +	case MLX5E_FEC_LLRS_272_257_1:
> +		return hist_type =3D=3D MLX5E_HISTOGRAM_FEC_LLRS;
> +	default:
> +		break;
> +	}
> +
> +	return false;
> +}
> +
> +static u8
> +fec_rs_histogram_fill_ranges(struct mlx5e_priv *priv, int mode,
> +			     const struct ethtool_fec_hist_range
> **ranges) {
> +	struct mlx5_core_dev *mdev =3D priv->mdev;
> +	u32 out[MLX5_ST_SZ_DW(pphcr_reg)] =3D {0};
> +	u32 in[MLX5_ST_SZ_DW(pphcr_reg)] =3D {0};
> +	int sz =3D MLX5_ST_SZ_BYTES(pphcr_reg);
> +	u8 hist_type, num_of_bins;
> +
> +	memset(priv->fec_ranges, 0,
> +	       ETHTOOL_FEC_HIST_MAX * sizeof(*priv->fec_ranges));
> +	MLX5_SET(pphcr_reg, in, local_port, 1);
> +	if (mlx5_core_access_reg(mdev, in, sz, out, sz, MLX5_REG_PPHCR,
> 0, 0))
> +		return 0;
> +
> +	hist_type =3D MLX5_GET(pphcr_reg, out, active_hist_type);
> +	if (!fec_rs_validate_hist_type(mode, hist_type))
> +		return 0;
> +
> +	num_of_bins =3D MLX5_GET(pphcr_reg, out, num_of_bins);
> +	if (WARN_ON_ONCE(num_of_bins > MLX5_RS_HISTOGRAM_ENTRIES))
> +		return 0;
> +
> +	for (int i =3D 0; i < num_of_bins; i++) {
> +		void *bin_range =3D MLX5_ADDR_OF(pphcr_reg, out,
> bin_range[i]);
> +
> +		priv->fec_ranges[i].high =3D MLX5_GET(bin_range_layout,
> bin_range,
> +						    high_val);
> +		priv->fec_ranges[i].low =3D MLX5_GET(bin_range_layout,
> bin_range,
> +						   low_val);
> +	}
> +	*ranges =3D priv->fec_ranges;
> +
> +	return num_of_bins;
> +}
> +
> +static void fec_set_histograms_stats(struct mlx5e_priv *priv, int
> mode,
> +				     struct ethtool_fec_hist *hist) {
> +	switch (mode) {
> +	case MLX5E_FEC_RS_528_514:
> +	case MLX5E_FEC_RS_544_514:
> +	case MLX5E_FEC_LLRS_272_257_1:
> +	case MLX5E_FEC_RS_544_514_INTERLEAVED_QUAD:
> +		fec_rs_histogram_fill_ranges(priv, mode, &hist->ranges);
> +		break;
> +	default:
> +		return;
> +	}
> +}
> +
>  void mlx5e_stats_fec_get(struct mlx5e_priv *priv,
> -			 struct ethtool_fec_stats *fec_stats)
> +			 struct ethtool_fec_stats *fec_stats,
> +			 struct ethtool_fec_hist *hist)
>  {
>  	int mode =3D fec_active_mode(priv->mdev);
>=20
> @@ -1501,6 +1581,7 @@ void mlx5e_stats_fec_get(struct mlx5e_priv
> *priv,
>=20
>  	fec_set_corrected_bits_total(priv, fec_stats);
>  	fec_set_block_stats(priv, mode, fec_stats);
> +	fec_set_histograms_stats(priv, mode, hist);
>  }
>=20
>  #define PPORT_ETH_EXT_OFF(c) \
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.h
> b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.h
> index 72dbcc1928ef..09f155acb461 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.h
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.h
> @@ -117,7 +117,8 @@ void mlx5e_stats_update_ndo_stats(struct
> mlx5e_priv *priv);  void mlx5e_stats_pause_get(struct mlx5e_priv
> *priv,
>  			   struct ethtool_pause_stats *pause_stats);
> void mlx5e_stats_fec_get(struct mlx5e_priv *priv,
> -			 struct ethtool_fec_stats *fec_stats);
> +			 struct ethtool_fec_stats *fec_stats,
> +			 struct ethtool_fec_hist *hist);
>=20
>  void mlx5e_stats_eth_phy_get(struct mlx5e_priv *priv,
>  			     struct ethtool_eth_phy_stats *phy_stats);
> --
> 2.47.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
