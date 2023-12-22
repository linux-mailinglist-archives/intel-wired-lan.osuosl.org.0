Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA4C81CE93
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Dec 2023 19:49:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE98460BCA;
	Fri, 22 Dec 2023 18:49:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE98460BCA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703270941;
	bh=5JZrPttfPj2SY9kK85Lw60p+thPvtVQ3vN6BBIbzv9Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0UXg16++BeUTxNl0xN7Yxdwi8Nc73MxbVhq9dnf0ahzn4Tf97q3WOPUtCqsMm3K0+
	 kdxIGQgXtH5G0okwRqvqtbR54irOou8tpTmEkEFj6LRFnRREr8qNnVAmzVd78QdL/j
	 sCj/AQi7YKeoc324Bo+VwAeoTf6FufT7loS1TZFw0TN3RGrjNdLFCoXJzl1EFfsR/O
	 LlXxL+xm1bz+dW+sW90aCBOqSosyb1OXXn7SQyqmtmvdx7twiSaVdcBGFV3MZtPXqa
	 CQEoR0yvRaEfk/+CuPz2mT4+9wuFArH/oXgNcpQML/FbD2buhE57OS3og3ptwuuoVU
	 zH2FUDfUX5kPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a5UH19Ae6zxK; Fri, 22 Dec 2023 18:49:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BF2260AB1;
	Fri, 22 Dec 2023 18:49:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BF2260AB1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 25D5B1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Dec 2023 18:48:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 008A860AB1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Dec 2023 18:48:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 008A860AB1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wp0HWBr5odLP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Dec 2023 18:48:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 283BB60AA5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Dec 2023 18:48:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 283BB60AA5
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="395887414"
X-IronPort-AV: E=Sophos;i="6.04,297,1695711600"; d="scan'208";a="395887414"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 10:48:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="777114592"
X-IronPort-AV: E=Sophos;i="6.04,297,1695711600"; d="scan'208";a="777114592"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Dec 2023 10:48:51 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 22 Dec 2023 10:48:50 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 22 Dec 2023 10:48:50 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 22 Dec 2023 10:48:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aNrCtUUX95ph6Kb+VfCZmQ+GKoMCUeKstkP5v9Vkr7ZsijVZFOIiE3QlX/A4E3sFTFtjz1N+juLvwy5iii7PmvT4ItLm9spkjiO55bPXXTSbY0fZ5hcSaq4cGfEBvhk6vwXsocz5WFPZW6E/wdYPyYzF2vzKNWU7fkzJGhox8CD1hUfkN4pAsZYo2UcM6dEkk6rUHYsJdJxJVOPAN5tJrsIiuoZlA4aWkm3kwTLCcc9CiwG9cW01gER4oDeZFpUj8RRYoFymz7gCrL6GR6oeeeL2BtXpQOjJNuOWnuOX9Cish7ieglB+i84Qy4hfjksXOVA704m014K0nDKEOevhcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=20MrQj5N69TnH8h1nRCDldIfjP6dZfzFdqvycSiBBYQ=;
 b=f47uR7aWcRgKMbVlGKsNLKZiFi0wNrhIM5J6UVgBTJ/2n+GCgrOxL15y8M8rGVsJA8TIDhz9ElycTUmWmKrKXtNDOdpNojcOX0C1BY44A8ueB3YCXlbN80gfQ9L6e/aBkQ+I+3em5IShfNQEyCYj4Q06dUt5yKz/hRhQpxsZahjx5mgYIPE/yb9AI/1JaJIoeHkH6GwNhPE+660XuvCtXABkGjE9cmKj4Sb6Vn8jvIS64uiSH/l9YKQr4E8clUkly7fet8KZWow9wgrHQ1eem0uJGRMu1PRqk0Rw0YwZMnLMbrN+kliHBY0bTNzOrXzsd3gBAQ93c6Yrl5Ac//F2TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7195.namprd11.prod.outlook.com (2603:10b6:930:93::19)
 by DM4PR11MB7328.namprd11.prod.outlook.com (2603:10b6:8:104::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.21; Fri, 22 Dec
 2023 18:48:48 +0000
Received: from CY8PR11MB7195.namprd11.prod.outlook.com
 ([fe80::6e9a:e84e:338b:751b]) by CY8PR11MB7195.namprd11.prod.outlook.com
 ([fe80::6e9a:e84e:338b:751b%7]) with mapi id 15.20.7113.019; Fri, 22 Dec 2023
 18:48:48 +0000
From: "Register, Scott" <scott.register@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 15/15] idpf: refactor some
 missing field get/prep conversions
Thread-Index: AQHaJ9/8RJYel8+zIU2Awc0NZZjsl7C1vwKg
Date: Fri, 22 Dec 2023 18:48:48 +0000
Message-ID: <CY8PR11MB7195F60B544779EAE94818999794A@CY8PR11MB7195.namprd11.prod.outlook.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
 <20231206010114.2259388-16-jesse.brandeburg@intel.com>
In-Reply-To: <20231206010114.2259388-16-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7195:EE_|DM4PR11MB7328:EE_
x-ms-office365-filtering-correlation-id: 73772e85-9f41-48a3-0181-08dc031ea208
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cSuL3W84t0WWWnb/IsKHtz6fRLrfAZOMYFeCtLrfGru8xjEhLNaUvX1/uPjY6Q41QoNaPv/5BIgd6LJRe43Sk0OXknSLs5WUgW4QWcONv4oKGz/GGL5BNfT59W565YBePVVoHNbI9tXPvSsJjoiPiStgPDwxRRBg8/ZJJP90UQdI7bzR9u6zGJzVOyO4ruXmkDBPcegaYgrfePVdQmgTGlk5i+NRXd5VrF4+gSZmL4OxW4HsPHDIiRrCBbDB3z3aJ+2XowwE1r5a5bsV19gDlhUC2vYRmi3i/wtalF1vt6fl8gS7eVG2BUdtlR1n4K8+tMwklNu5R3+ksDsVo+Ya+vluRgRlxIRtkWfIaCUkRexZ49ssmNYS9tb7AIV1kiTSe1qXPyTikCdWiiVQdmjoeiWi9cZxStJKWWtiU7giZGbh+BKAuG8n208BeiEsye9KJyBLCSjWKPBiO9wADZ3TFkjFpn295TPDJAqBvkesJtqBcnm6jbWyk1mvz4y5ll2fwZuBjsqAv6jXjXKsCG+wNqa8cprBwAj6euxbFrxca6stqWroQJGCB84Z7CAhbZbPUmNWYwo9LAY8qki57vwg5dQ81SSg/OwW8NcEo0zSlE92IiUk5ti9jrwm9RVm5oRt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7195.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(136003)(396003)(376002)(366004)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(7696005)(38100700002)(83380400001)(33656002)(41300700001)(86362001)(122000001)(82960400001)(5660300002)(8936002)(4326008)(8676002)(66946007)(66476007)(54906003)(64756008)(52536014)(66446008)(76116006)(110136005)(71200400001)(6506007)(9686003)(316002)(66556008)(53546011)(478600001)(2906002)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7rYsYBRkBLJnjHy+MOyyjoFiyV7IXuzuOKlcXxuu1vhQxH+j6XPzYl2s+H9Y?=
 =?us-ascii?Q?xYQSytHSe2ToMKUia8Sh42hOZAH4cA8OCWaIenHZgOxC7sJWYquF8YIj2tHq?=
 =?us-ascii?Q?H9OCdBwZ5x4jd6BLQN0lNvEVS7SnrVU6T/7gZViK0aSFPWiHpKQuoZxhRhz4?=
 =?us-ascii?Q?xuX6y3uIC6XwYmSJAy/Dg2HEpmOldVVBIly3nYpUSCsyJS/PpN6bHzl0BJo8?=
 =?us-ascii?Q?COxBkTEjCB+B6n3Zb8v9piglQqB8xNCZIPj7ufoiGFiFk5O+pzZjAhjKeaJ8?=
 =?us-ascii?Q?KIHTFU7UQ4f4yK9DFK13yq8CDXjq0dmpgbxAr/MgNcwv0sW7x0xzc7kT8h5i?=
 =?us-ascii?Q?Iyk/hntFQWlwTQl94VN8bc7O07y4urfaYtTf6X3ZYUejPeBiQAzaxSrmL41T?=
 =?us-ascii?Q?J7+9KF60bZhB3n3ZPA3urdtNtrn1WXKH92mSI7BUpS5AMdEqV1qLmnTRooPK?=
 =?us-ascii?Q?3T3Mkx1ENU0P9QOTL+jJmvaCEd7fqWjQynXz0a6D4xW/yf3ZtuWxuwybk4pA?=
 =?us-ascii?Q?PANDKQWSnv1M0TN95OjlUpnYmJwildjBxuq1zOEYrA3TYBKkFiSaP3BFWCC7?=
 =?us-ascii?Q?eYoeQJe/PKIWJdd36q8wthByfW/lMZkD0iVcB5FC0rynxJHY5g4m4HUWTmxA?=
 =?us-ascii?Q?dtd9zmea8F4N/8fXUgGl3gXenRA7JtDp9oKiBdUyMSzdh88eSh3zNski1eMt?=
 =?us-ascii?Q?T3L4S1PgsbzmRR0j1a5Ci5FzvTJXaYCTjvlOCjqTE+LDq29baZp+WTU3vcgK?=
 =?us-ascii?Q?3n+ltfRJ18hVP9cF3ZSNjXUjjgf5RqTMCydEM7siSbPLcUtytFIf7cNjc2fS?=
 =?us-ascii?Q?8wfzuwXs0XGJhmWpdBmmBEJ1ikFa8QIavWWZlClbRHA/kcZ8XhXSGnAHb+rR?=
 =?us-ascii?Q?Mqn/wGA07sl4ZnKRCrWTnxWI6DTCiuwBOlMm50p0hWDY4r7tDppMHIqiPx1/?=
 =?us-ascii?Q?KVnUjdNObuAfp820DveONkV0UWMoVJmA3hpvTTFktiDkcCr2zl3c7iwffxNG?=
 =?us-ascii?Q?nlQYJRCwffKv8pJl6WUfYBbFxEgrb+xJKxylfN0319dF6X+vFkxL9KLjRH6J?=
 =?us-ascii?Q?xynTCYRiCcvMHh0RY4V7f1LonhVmdxtWiKKGv1LLTBX2vfV81dAA2pIthDZC?=
 =?us-ascii?Q?8mxPERKSrvhIbTCA551E47M7m6wn2XuQc8AsHoZCXCkrFkA25jiq7qv0upMI?=
 =?us-ascii?Q?ypCLfFDYQcStHjf9bMuK5kTF7N9Ls0hm0Buw7SJfWL4p0EGt9KTBncIZ5CV7?=
 =?us-ascii?Q?7PIqzXammK6oqTnhmhwJQbiLB/OudN5a4pdM7Po92MvWYwSYikfwLMdORprh?=
 =?us-ascii?Q?sBUyqhIeigIaYf0J29FQKhLEoh0p21O49ujAeK6TVxH8t/l/3c0eL00rDHui?=
 =?us-ascii?Q?pWahdxZ9r319U84x6eUr9NvZrEQo5cZ3GGl38/mMinUHeWZpWYYuLFNcRPNw?=
 =?us-ascii?Q?iEiNap5N6qFy+tYpCiy2qKK/zLMlN/Y6aimSYnYAstIXbKwqHbi0c8Cb8pH2?=
 =?us-ascii?Q?0zST8P5jB+vMxVMb6EP8GRAZBJDJVvL84Mm+qxhakWGt7N6L/m6XJ+4IY4aH?=
 =?us-ascii?Q?xOSjnsfDypAx/GF2fbX/WPEm8oGyL87MT5KR/mBB5mbq/gNJdyF4p+izR1Ss?=
 =?us-ascii?Q?9rhJUO+KXTY6UamAfgUNXTteirVqlzM8+f3n5MtONdvB?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7195.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73772e85-9f41-48a3-0181-08dc031ea208
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2023 18:48:48.1705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D6IObUZeuY9OOfjD+uZuWvZtLXCb41HYTnYia4lS0lKqLCdvxCDaQC0QRwv+jBJZkFYu5JA+EMTV9vXfYYyzvia6NJHVauFGo/pUK5TEnlI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7328
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703270934; x=1734806934;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k3EVJOnTT7rMleaEiKamQZBORXyDmB/+GsgkO/t77Lw=;
 b=Z3V7oma5yyPlC3ZWrv3vMshK2i6Ja7A54itv59JQi8qDAGCXJdpT4aiR
 ugkr0vLYeXq/Yi4RC+oToUDKTZJCuZCXd91cl9fniut/S2Gz7QluWHgwy
 +x3nSXgIGngZA8LMxUTUlPHoLJMstSdqd+QpNLe+cbTGvu6PEZg24fEsy
 kTLwmA8j2nYsWW52HJ5LUiNA++iatgg05vi9quSy08cTX0H4ewhmY6ZpG
 1MlsRHzFvgfPjsI3q5S92xtOnxM5g01x7hME9zFa9x/QN/sEvmcpLOcyU
 /Xk3/Hh2q79QnyvqzPQlmfPTxpXc26qzQuTaVC+LaMbVGaH03Zhp5hGsv
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z3V7oma5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 15/15] idpf: refactor some
 missing field get/prep conversions
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>,
 "marcin.szycik@linux.intel.com" <marcin.szycik@linux.intel.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jesse Brandeburg
> Sent: Tuesday, December 5, 2023 5:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; marcin.szycik@linux.intel.com;
> horms@kernel.org; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 15/15] idpf: refactor some
> missing field get/prep conversions
> 
> Most of idpf correctly uses FIELD_GET and FIELD_PREP, but a couple spots
> were missed so fix those.
> 
> Automated conversion with coccinelle script and manually fixed up,
> including audits for opportunities to convert to {get,encode,replace}
> bits functions.
> 
> Add conversions to le16_get/encode/replace_bits where appropriate. And
> in one place fix up a cast from a u16 to a u16.
> 
> @prep2@
> constant shift,mask;
> type T;
> expression a;
> @@
> -(((T)(a) << shift) & mask)
> +FIELD_PREP(mask, a)
> 
> @prep@
> constant shift,mask;
> type T;
> expression a;
> @@
> -((T)((a) << shift) & mask)
> +FIELD_PREP(mask, a)
> 
> @get@
> constant shift,mask;
> type T;
> expression a;
> @@
> -((T)((a) & mask) >> shift)
> +FIELD_GET(mask, a)
> 
> and applied via:
> spatch --sp-file field_prep.cocci --in-place --dir \
>  drivers/net/ethernet/intel/
> 
> CC: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v2: merged this patch into larger series, modified after Olek's comments
> to include bits encoding where changing lines for prep or get.
> ---
>  .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  7 +--
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 58 +++++++++----------
>  2 files changed, 30 insertions(+), 35 deletions(-)

Tested-by: Scott Register <scott.register@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
