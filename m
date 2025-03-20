Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71269A6A95E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Mar 2025 16:04:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBCBC83A8C;
	Thu, 20 Mar 2025 15:04:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lXm6CmZKgn45; Thu, 20 Mar 2025 15:04:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B93B883A91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742483077;
	bh=xIDcr4WaI3C6hE4/ZSzqwXr/ey8boHBkphe0h6Cv9+U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tSUJCvYVfXh6VuXaXiRwJXWuReyV6PfXbJFFG7/yEwpiPZp+jZ5DSHM1qB5npMUiD
	 a9Rq2z2s/lpHnzvK9l7mv79Idgw3jiQr3n6bkmX+B/1KT7wIpea7+DXQiDjxzohfsi
	 HqkPvMJqg/KU3WbKtAjRNQs47vKNL5gSKlcWbBBxOfaT+Q6oNdNU5PYgNonD0qfbBU
	 V/c1flj2XY43d+u9Qq95q2zrVZ4sVWmxFT2rXW2/lJEwwsdT7c0dPbhDf1ADvouS+v
	 ldvGu5pknucBG5lgeQCvHw32qkzJ/r9QM2hmxgwGfkdYqSRqHiTcjlTXViWaWJpMx9
	 ScGJWC0lLb1Yg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B93B883A91;
	Thu, 20 Mar 2025 15:04:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 344A91A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 15:04:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2D07783A8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 15:04:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V0GKjCdjjGkc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Mar 2025 15:04:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 007D980DF3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 007D980DF3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 007D980DF3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 15:04:33 +0000 (UTC)
X-CSE-ConnectionGUID: rCb6CXEtRD++JfESIQm1Dw==
X-CSE-MsgGUID: +8tH335qTVa54Za4M+R0vw==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="54384743"
X-IronPort-AV: E=Sophos;i="6.14,262,1736841600"; d="scan'208";a="54384743"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 08:04:22 -0700
X-CSE-ConnectionGUID: YLz6MEJbSpuv0ZLaK8f6aQ==
X-CSE-MsgGUID: p5Adx1DZS2qiev0ZIOAxcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,262,1736841600"; d="scan'208";a="123641354"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 08:04:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 20 Mar 2025 08:04:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Mar 2025 08:04:20 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Mar 2025 08:04:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QSx4VNpesUTjc7UNyIbIow0vnJHilbYDjKquImSERYQJIzFMIeFqaIVIFygziFRW50YyREhUhZvhRhPeEbZbe4eDbNzCfAwJpDrMRcv8vmMU1SYEuikYPI+GJsA+prSrnygfMVEqFU9FTO/c27qKGLYDIDSsLsioSz8AsuPxrr3RMYcBNs8S9McyapViEZZc59g+scp3kA5MHtV7x9rduD9rAXaeFEMEE5T70tWGjsuF4EpIyFH5zl5tIffiTpr//L0TIwWsbPVmi7TKzZKKBMq0M0camlI/snen2UEOhYkLoSiQQ9AIqqnyFeus8FB7/FN+R8lu21sXtsSn7aRWJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xIDcr4WaI3C6hE4/ZSzqwXr/ey8boHBkphe0h6Cv9+U=;
 b=MQ2i5PpcejT4e/FzrlaLp4RXwzGPS2LM9o9Ld5YrcnS8IOrqFrgafRBFM9A2zADW/Fh1FsopfGj10GUzVME9e8iCqp/hj3/libDEgdFH2Y2zrw/2sgqRwtRaTgg0TgvO7dsqAZW91osffxYwNdTw7nAQS8OFwDrSKwlD049dXYOSsEm2U/G+Trff4GOXLX/Z+gxwci66bn6nQy7OQAUv2kxhMkHzyjoUO3KK428MvkazTt6RgUbt75LmOWWdyrdLChSOjl3mIrvU8LQczxSOauvAPTZXD5GpC1u56rwR4txUON1WiEDOn7+M8tZ0pmBnd0lUIDEClZzkhlXInL5pwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by SN7PR11MB7490.namprd11.prod.outlook.com (2603:10b6:806:346::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.36; Thu, 20 Mar
 2025 15:04:18 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%7]) with mapi id 15.20.8534.034; Thu, 20 Mar 2025
 15:04:18 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Wegrzyn, Stefan" <stefan.wegrzyn@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v8 14/15] ixgbe: add E610
 implementation of FW recovery mode
Thread-Index: AQHblCtAhU2U3eEEMUie2paPNOr+ZrN8Kg+Q
Date: Thu, 20 Mar 2025 15:04:18 +0000
Message-ID: <PH8PR11MB79658ACF2C9E7E8FF072FC05F7D82@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250313150346.356612-1-jedrzej.jagielski@intel.com>
 <20250313150346.356612-15-jedrzej.jagielski@intel.com>
In-Reply-To: <20250313150346.356612-15-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|SN7PR11MB7490:EE_
x-ms-office365-filtering-correlation-id: 9b5dbe85-96e9-4fee-054e-08dd67c07cd9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?mltcKhVMmZ+PtAOj2W2jzjSSRl/cEWVXvUsugXypwwKl5toD0HRYdgo2x9Og?=
 =?us-ascii?Q?GVjVdnKPxCtAQSxMK3SUQY3OzoEhuNPQtiYMow97IzcPtGgw+OpvDpEAM/X7?=
 =?us-ascii?Q?8+OhP3fxI2oM+objQ1T7wqoDb31PiZpoAAAbcR4vYF+mEnMUgKtphpqAjF9B?=
 =?us-ascii?Q?AIm2TD+siO+k1+HUWqCHas06c9OWRCnL+nS6ZG7GjERKXZfI3DvLtf8iMudi?=
 =?us-ascii?Q?t0tBVf+2pjpNOCCvFJc9P+kIMSflKGeLiteWeSK5cg2RVOeYc8xSj1fA0CQQ?=
 =?us-ascii?Q?9d1vIDSjhjGSTsw+XZsqPPZ9h1BeV2kNWMMDkzQSj4PtRWuwTRHsk91fMMNs?=
 =?us-ascii?Q?lL+WNUWkF4baI4BQtU0V8yTZkAjFTPHKNXTi2z3SpvFG1MtdSCgPBnIwueqI?=
 =?us-ascii?Q?cuS8akvhwXpGGDCFd5h4ANc6obW9PZaQVPIyY1w4nIjiLLE9OihohbFaQI/m?=
 =?us-ascii?Q?qNYKA1R3kzWVsSDD58DgLC9UnCznKQn6zogwm/B9iyUIOH/25ZFvWasdo31A?=
 =?us-ascii?Q?PiBOA4QhIYY7vooq9edA3vpz+8nNTfgjjUfLtxd8D8BDEV0rVOwxwqmtQa5s?=
 =?us-ascii?Q?NdzSFTXB6epCrNmIQRYR1NZmpcX1l9jShZcZBlB/yb0UB6NBkM4v1Gc4TLOL?=
 =?us-ascii?Q?x28jhFfu3+g9AkvXgTweKraSA0COdA4AEJI3WjMKanaUupgmfTnsg25umUrN?=
 =?us-ascii?Q?UhhGe9W2zACwio8UIgxHlM7KPAFo+NM0IzffZ1kaYjBbxo08njBCeHxDZvwv?=
 =?us-ascii?Q?xilK453UGYpt8Njrn7EYW8hnVjWZ01rQesim3tlU5pVcW+XaanR3wJftDHYt?=
 =?us-ascii?Q?ALVOE1LqB/S96qcs30warpt+SkNDwztoIYwzYXGfvvtO++Hk/AV2nJ7ox4PB?=
 =?us-ascii?Q?Xs0CQNW4YVTW/HbSVVoiXwpkJFB9CC/HdeQcTliIQocR7Ozvvtq+tbv+Cq3F?=
 =?us-ascii?Q?+ZeDSZXYLoBfWGU50JeSpgsK7tamznEN3snkXdEDmcCxM+Mck+toXW9C6lWe?=
 =?us-ascii?Q?oLwuclsONOANNMztYX+Ps9dFQH6iskkqfjqqvMreaoptQjhfbFvrxDeTR0qU?=
 =?us-ascii?Q?n3EAWcw2i7hcGX4mrHtd2EX2aABGP4jY1StM9IS3VYR3pA85e7ELpYUVohxK?=
 =?us-ascii?Q?WK0+5oebD95x5yaY02LePCr0uGY8sGoIzZbQvNdGUlSZOF5JgikytpZncdWl?=
 =?us-ascii?Q?oQWT4eePXEz0MjZp2MfpwCEvT+VXeUm6xqu7bwkKNCmsvk4NBWWiSQR9CrLH?=
 =?us-ascii?Q?M7tYyZojWEBi24da8O0PwXbx8Wu/xGS+JHmxesz7DzBysCXZgHWZ1zuGUg46?=
 =?us-ascii?Q?EwXAlmZjChIwWfYjp4ZNMrd57WfY5quUJvV202ZpnObo+V438OcVw1Huk2/N?=
 =?us-ascii?Q?EwqYHm0vSi6mCY6faG9kncr/54MnJ1Dg/6CWfem87+7x+4d9K2btLHMjRn7i?=
 =?us-ascii?Q?sZU5Z5Bvk4mGrakiMtqmI+Dt3L92nT54?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pmtc/Mt+1qYbxrUPUH0aFb7B23Bo8Vazsf4IHTK904XfVxeHUzKV+enE1HX6?=
 =?us-ascii?Q?qomRPIX+sfpRHyv4nVQGksO46xk44pB5ZNOW1Ehisw+QTyfveXtaZKb5QXCY?=
 =?us-ascii?Q?4I01bxl3gm2Tdnzu/h+G9tlFXIWvRMbiEoF/udJC0ahMtxqHpm7LHwUAouhl?=
 =?us-ascii?Q?ZcSvM0ky6OiL+INCoz+p1MoT7qJUZ60sBOQMmHVKnjYBulilnaz3hfKknwey?=
 =?us-ascii?Q?CABKx2XDw7LRPqCaxSchtt6ix6TsuvpSlXcXgvUdtCHR82pKmfJvmIK7VK1Q?=
 =?us-ascii?Q?aYDIm/AZNRjQx9UomgfydUJpmMjhB6+nMTKPLy5pyxp423q6O2JlpvSCxhav?=
 =?us-ascii?Q?Dbj2LY0elDbVpFHhAjb/AQvElQaw3QnL0dUX2UfHS8mHFKYGmUHGw8+CuK5p?=
 =?us-ascii?Q?5Qota/Ewi610ikHP/7OBnmf6ZjhR2JIpNtwblzeF/5bNou300ELXiIhJURUx?=
 =?us-ascii?Q?d7ZuQdqLF0Zy20Fs2DPxgGsBaAQBfex2WTwtmz02Towm7q4FlJ90zeHYRUgV?=
 =?us-ascii?Q?ODMNWNB5nXa0LxFk+1XSvorYPL4TD3TP/bMI05FMEuR3ZowVQj2S/2YI7PAt?=
 =?us-ascii?Q?js4xrSh3ynoZxBduZ8YYdBKsg9SeHvvdRNZJ06tfNtuut5JJF8/oA+KNUg11?=
 =?us-ascii?Q?R/AWqUCZTnKl0K6q56fKqM1wG245f+utKi6VipFouGqrbB/KSHDO3n+5Yl34?=
 =?us-ascii?Q?iwyS4jrfUt0k3y+ljH7h82tTtEDbDx0sAGWBTJsR8At4tu9nxqAKQfMnfhTD?=
 =?us-ascii?Q?1OLypty99/fWmiBII7VznByLNAZfD7XBfi2rJzc3zK7TkKpsMm3UFOTkkWq9?=
 =?us-ascii?Q?esr8UUIASHXBEVeORjo/LnLnNr1lE6ZYsLWz+Jj8UaCFyCwRrcaOrQRbHeyk?=
 =?us-ascii?Q?+iVq4vBV8IngxPxIEsv/wA4+ll8mz+OzhmxoAKZEfIcfPEpp1ZLTlyS9WsBm?=
 =?us-ascii?Q?i4+lALXPFxJFk0DLsW1wmtVfbtkUUNH/b9SnK17/hRfD9EgAI+R7iPNy3cag?=
 =?us-ascii?Q?UGJfzt7cZbcMBlRZSxuFX62LFwyWCz+TeMG9n0u35rzRw1lA9O7ord0WduU/?=
 =?us-ascii?Q?hyX0cjdXbAQdgX/vPcZm0ojkqoU0OEhlWVKoDA87ETCw/p7a8SlpAIAYGp3j?=
 =?us-ascii?Q?UBiiJOaQHkTo340Pbtw7z3zQwaqWbrMiGRP2acwoIZGD2ifGxCplVvf/mUFB?=
 =?us-ascii?Q?DuMJMDDBM61guHee+KIzPrLIRVeWzLhcpNtV6EzBN4a3R03xeD1p7Bhix0nv?=
 =?us-ascii?Q?tRANorhWb0KMWRveOKO51efp6nmM7wSwAO1jR7tLl5lXcQrFK8XbBKnGfw0f?=
 =?us-ascii?Q?k5CPonbcs2SvpdBsMSw4UHp5aLMVbWngmdYxa5GKCOpezS83ECr6t7o+TW1f?=
 =?us-ascii?Q?oEEsikbfahpZkNWKikFPcl3LrIssU0CwkrvAOCiRT2LFW3LPDAWB0E+Czwzn?=
 =?us-ascii?Q?FvamQPNM4l7fVtulJ1Ixb33avm5RXdjaW3y3q/Pk/IXvuW2tNwWrItQfId+R?=
 =?us-ascii?Q?YS3+8yJaScGQpTbmtoM49wEDdQAtmaBz2HaT7D9wM40IgvvIe3+7rGz0zhqg?=
 =?us-ascii?Q?ARg8uYUINDj5AENkRyA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b5dbe85-96e9-4fee-054e-08dd67c07cd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2025 15:04:18.2070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8qmo/eIUjQ7to5vPgHvZyM24VihnGIjj+MjwNZ8y7lOnr54MpvK55xtT8zIFx6R+6D8gzuM/5jJn0mecibpBjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7490
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742483074; x=1774019074;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MJRgcUjF4lQBC1zhHhMtFOZxQFwYkJwHCODnd+PNrCE=;
 b=EcwlgUtLYpWnfGbg9FSWqyeSEvaz10iE0UWDB0veXDUF+pYqxVJeHAm0
 +U+nt+q1M9IB78wzjJ3TxB+THX1NgXQZ8DNVqdS0X3cB/jyzVKOyqRmxK
 aS7qIue6Fj7vnKzzaQzGKyVdAhGwJRK6HojrxIN9u/7XTZ0SLg6a6FpYm
 tiyZ++O4NOE5sxNFcXJOXXVwtyqOSH6v5MjDPd/J77RY8/cOFf2cwOM+Y
 aQ7uG22of8ePwSmTj91/QohwWrZOUTwctJjj2FfvPENDO86y0/N/bKqK9
 1cc47OiTO43noobCSKJlvBA99rn+AZZV7LjH0aOYDiBAD/i//DuphgmXD
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EcwlgUtL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 14/15] ixgbe: add E610
 implementation of FW recovery mode
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
> Jedrzej Jagielski
> Sent: Thursday, March 13, 2025 8:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com=
>;
> horms@kernel.org; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; Wegrzyn, Stefan
> <stefan.wegrzyn@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v8 14/15] ixgbe: add E610
> implementation of FW recovery mode
>=20
> Add E610 implementation of fw_recovery_mode MAC operation.
>=20
> In case of E610 information about recovery mode is obtained from
> FW_MODES field in IXGBE_GL_MNG_FWSM register (0x000B6134).
>=20
> Introduce recovery specific probing flow and init only vital features.
>=20
> User should be able to perform NVM update using devlink once FW error is
> detected in order to load a healthy img.
>=20
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v7: unregister mdiobus before unregistering netdev
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 17 ++++
>  .../ethernet/intel/ixgbe/ixgbe_fw_update.c    | 14 ++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 94 +++++++++++++++++--
>  .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  3 +
>  4 files changed, 117 insertions(+), 11 deletions(-)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
