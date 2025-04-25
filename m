Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E7FA9CEB5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Apr 2025 18:50:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4983812C9;
	Fri, 25 Apr 2025 16:50:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6ZieufFvGTt3; Fri, 25 Apr 2025 16:50:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E5FF83C1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745599813;
	bh=CCtFj0KwOyDO34LYXRNeazE+3WA5NuDsHkKIK1Lnx1g=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=By4iAY/nyJhl5toab4HP8k3Q2lT/CcPoMuNHQjcdE6Y+Dz6268CPz1suiqxeFh8s6
	 2poTHQiud8krUDjs3IGPqAC+6j34ZtHMw/8ljJ1fmAgTeGyX+dV1LK3bq8A6RWQ3x2
	 NEyVme3laAv2+z3wrs4WEI6hdPEHNCREyFfL7UaKuZRsln1IEUqQ5wCas6lWCzeeCU
	 IyinY8XHLB3baGJe6Rn5tq5hnEyMAYi4Cq7NTXjfE6DEyTiju5RkjjtY8nBgpSAn+g
	 MHbqFHUWBz3+csakpjOOYunTh9BL478rj/fd6+ldvIt4zyZo17Z9Vwl20iNdBwZFN1
	 U6nUSXXNC3PTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E5FF83C1D;
	Fri, 25 Apr 2025 16:50:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D885159
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 16:50:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8415F83C1D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 16:50:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P69R4Npq8O8J for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Apr 2025 16:50:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4A65780ADF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A65780ADF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A65780ADF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 16:50:09 +0000 (UTC)
X-CSE-ConnectionGUID: TIgxWYDVQv6Kt/jpw4vqtg==
X-CSE-MsgGUID: RYKAp6yJSmWgNlsAwZp8SA==
X-IronPort-AV: E=McAfee;i="6700,10204,11414"; a="49923295"
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="49923295"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 09:50:09 -0700
X-CSE-ConnectionGUID: b8VTu0AHTkCymcQPoTX+Iw==
X-CSE-MsgGUID: EaZxE8rxRVyyUC76FG0D7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="132940328"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 09:50:08 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 25 Apr 2025 09:50:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 25 Apr 2025 09:50:08 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 25 Apr 2025 09:50:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dko6txOrwcO6E2CDiQ3GwB+64nFyMrUrTBLPz515XTdCZp2IxtKHEMkwHzVIWZAyYdYW7XFcx1zkkZ++m5yuhIjsrOng8YoK5s1IH358S6rFu7KvdE4GcNTLiFyLG4HgabfRogb0E+hONJVd7NZco/AuBgUOkLOllnJxFCO3Ed7y0Zv+uUKREnTob3/GRbywQSD1gVMBI+H94MZiBQv7pnoAhCTJpCgi5P2Zk7Gx+DAeStfAJMzVQo7RtgE8cAj80kfxgyFgYQNkWtFEiXbU5V8vxn6BD/EK5fcrW4Vk4W0nrowRBB+KYMuf2Tlyat5UkvPNzZXNgVkprPlizLK3KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CCtFj0KwOyDO34LYXRNeazE+3WA5NuDsHkKIK1Lnx1g=;
 b=JDzBjNIiJTcajz9l4MjqMlrXfKsKg/JYnO5PpfEBOJVBjPaXcK09mNEo5yiTOzAQg/w6zJwt3ihB4cO1htzplN6cNlYWefE/FZAUd5Cu+wykn47IJhkCvXEypXAtalAHwdBypCMnLEkgmT+o+fFvXb4GTLgZxJubGfhy5cqzdb89rTe5u8ek5WAxFS6Wh0UZQw+sExmdt1w5+eXiQWnT2mmLw5V8vvO9/decOe+DULXUjASlbrVDKJLPQYe7/IlX4tgtWbVtzF+gnii4p3tUuaQ21uabd+Aqb0dZmRsjcVYcvOKAKPzL54s0tnHpcI3SdggIeY4WLDrrO3ZtRQmxpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by BL1PR11MB5320.namprd11.prod.outlook.com (2603:10b6:208:316::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.28; Fri, 25 Apr
 2025 16:49:25 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%3]) with mapi id 15.20.8678.025; Fri, 25 Apr 2025
 16:49:24 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] idpf: fix potential memory
 leak on kcalloc() failure
Thread-Index: AQHbpVAEFt7ZoGLhvkOVgdxhmbjE4LO0t12w
Date: Fri, 25 Apr 2025 16:49:24 +0000
Message-ID: <SJ1PR11MB629770D34976E7246CD608939B842@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250404105421.1257835-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250404105421.1257835-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|BL1PR11MB5320:EE_
x-ms-office365-filtering-correlation-id: ca27841e-db1e-4ecb-0ec1-08dd841922ca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?0IohPJtiPZOPjhapNmPOue9oP0yPXoXFKpp7/LhKiMRBQrZmS92p0P29EUsB?=
 =?us-ascii?Q?kxKqQiaaqrvOpQO1XVAQMxl41hOf4ANWm0YCIUgdSQPU37sCiTcv+88rKf6P?=
 =?us-ascii?Q?ONBoSbiyZn6EHGl1uyw30to4IdkvpXC0aNjTmxYyNvQU+jRqvYeNQhvPqBBY?=
 =?us-ascii?Q?62dgrxxHrf14t30xRZ/DDv+8KsuMGSnatebj85XrEbPODQ6v8ghH9j8AlsYG?=
 =?us-ascii?Q?feJtrKEVfI4IGDYpIoq3MeB1a+z5n4o9QdFqivKSh4uIvZklUX5IFEly3s9T?=
 =?us-ascii?Q?HRjgEEnUD4qviRa0NRYE2feIg+Tb050i/eWW20N1+dOjlMo0Gl60q/sajXmT?=
 =?us-ascii?Q?gRV+HVvBNwEkHBOI7domSoAJdvQ+F7V6F4YOj2FoQbMmm5MNE3cipBrXaTO1?=
 =?us-ascii?Q?2ufpNPZER/gJrt8mvLxqW+5oRX8dhWAnv86B9/9zM2yqhCBS/pq0rmwRe9DE?=
 =?us-ascii?Q?HZnWQQzanXW+9k06DCRhJtji4SB3GouilCVoHknCpL2XlLBPD1YR2zS4UxIV?=
 =?us-ascii?Q?xQEq9pE7BPLopm5Wtp00Txa5fz0fJRdQ6H67plFUeSYnb28prboyyHg0f5FQ?=
 =?us-ascii?Q?6TFjBfew7+Pd5r1zNGi/pExtYV+IIL8xgqTJb1iRwpBFyH7x28IpCt30L2aL?=
 =?us-ascii?Q?7XOOEBtEHsejafMDlfiaGIFi1vC5ZPiv3NdXXRx6o5YnAexRq+X3dOlYo40H?=
 =?us-ascii?Q?bEX+kW2+IHtf8ftYWSMToLhQdM3BoFi2AujxR/fjg1vwZriH6WP4JzUu6XMY?=
 =?us-ascii?Q?ZMMXiIG6WshWALsq+CKeSSjU9lHSs4m9tnYoVVLPfTQwcnFV8gnRvgrEv025?=
 =?us-ascii?Q?DpckiA3HOVy2NSHQ7atfGb47Pkn4w92l5XoouQF+cRAKfzsrp90wFlHXthYw?=
 =?us-ascii?Q?fuIeDZUUItmsffhVLZloJRsY0aTfbzJIfoUm6LUupsNifmsdRBootErH/LJP?=
 =?us-ascii?Q?+I1pblfJKmqKxQNmyTm2bUHj8/Ub+7FPLF7iGkfMe/XEF5O4niA//Wh8bkr7?=
 =?us-ascii?Q?h+GfD8OdfxTrzUJCO5pI/FANqGdg1QMxYE8HvTQ1bU5fhkOf1J2wN1WOWKaO?=
 =?us-ascii?Q?Y3EMy4dBcosQUFA+qhl+VoWJqi/vnPHlb8tWcJ2tTfien7s6cAxnCGIRniGF?=
 =?us-ascii?Q?06XVI5HSQ/39rsPVjrV+gq6+q1ynn0rhM9AtH1lHhKogNZBtqTHBmu6arKVU?=
 =?us-ascii?Q?d2ApZyJXHLlLLRQGXIvhFpzCNNxEvHHY7u0nuvAB3kG6E3DCb+nnF7D2F3jV?=
 =?us-ascii?Q?KBuG8TThL/1OqrrbrEVfaPTDpksSymbNUwUgDgG7vNf6s9OHdRUSEoIiVEgR?=
 =?us-ascii?Q?xQbEYH4IwTQFqFr8Hdk+16zrJqlHJgJ/9xMFER7crijNigdMnN91yL5/CiOj?=
 =?us-ascii?Q?63DMOSd1pIhuqHXw0jJNmCzSkzDE76oLx0B9AqHfBDmdsIREbXd90oMqRkh/?=
 =?us-ascii?Q?yDVl0kosBMw6vGUBWV9uvZzWd295mcLLPUc5bf66Yf2rwIAyCnTdjQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZbCXVA2dBETXxymN2ZdlUL+Y+Cjj7csSA2wa8VUfp0S6Xw0Ca35YqbNBQUxo?=
 =?us-ascii?Q?VVUCLmWdiLI0ITke6A5s+kjxaX0OcdUnKJ84zdFb8baHiO/vxG0ZbV+/YITA?=
 =?us-ascii?Q?bWQZ+H/Jv9LR8IGPnP1P47zXdOUVIM294n34yaq/aMcg61dkaInk5ACRq8yz?=
 =?us-ascii?Q?12LRHF5ULats3miGr88thf7szXhxqWlJFgO03Av0kHzeVeclLbAA4WaTKjlO?=
 =?us-ascii?Q?BXOSTNcUzyqbh4YrAnGpOpZHYReSceNMbT87HGvlswcwW/p0vwZLqHgLXjS4?=
 =?us-ascii?Q?sCj416n3An5W6IYMKXr2L1vgISC1OzOrD0tsAdBoPDEEJnUq52CPlxJEJbo+?=
 =?us-ascii?Q?+L5+kwAYbDIWr5XC46kJaEcqYrxUtc0yBoIYQ4k53zzhriXFOnNMTOF0hpeH?=
 =?us-ascii?Q?ZBH4hj1QNf0pOVwUNhaav4rbMNvR7iNpQ5RevJJ5sQE2dnfBpXu5T6hSA6vs?=
 =?us-ascii?Q?/YjDKcoaWxkOs8Qs54fo4KQE0+vbVYkWfxBMuNaD4H176jLAmwliq5F77f3w?=
 =?us-ascii?Q?ZVF72aA6ndWCegWO7MzC0WMMGmC7Xisolrgjma3Oa0xP8aLLrOXn2r257Opw?=
 =?us-ascii?Q?fA63tZlfKkJ/IbukY1+vNqgujLHiOLkEB2jkj3XqIoQmC5cYYDZRcBBiUgky?=
 =?us-ascii?Q?YaaTVDhG1EoHMNIw7iJ1s8AptB9GNnbn6iZPT74EFosTo96WlxUSUJ2Wuj8P?=
 =?us-ascii?Q?LiYiXck/+/cfwwVjQV3BW4Af1D22WaDTxYGvFRvYX0wlzpkuWnUPMAxLRo45?=
 =?us-ascii?Q?HGlqskhOubJ6RR13Epi4wejWUuIq2K5QxxwVbkuoCLJ1tCofMXjYn4/Rs/I/?=
 =?us-ascii?Q?0aNzndvZVVOqENa028OCmYuXmA1Bf1cIjrbwoFco4GIjSOtcbLTBV0MHikji?=
 =?us-ascii?Q?O6vhaweEvX9iMWLeK8S76YQT0G8RISSlpGPXnoNZiHUXxcG7msM6KL6tzzeu?=
 =?us-ascii?Q?vZEM4hskgW1RPZW3IlkBobroonN5cTbcF6JMRrPjNRL0b/7HSVB16uCDE3hP?=
 =?us-ascii?Q?hTtAfSruqTni2kL+ee1fgf6Yg1HwAn26iUe/QzjLKLLn1xeNnsbShNOnFdkS?=
 =?us-ascii?Q?iDAWyrPAk2bjk/JEWVKiCKhZm4FKiKlX/P31ITQyic0hk4n/S9sV2GuHD00R?=
 =?us-ascii?Q?a+w07eqbgkfJnu/KIpOyYludvMqS6S35RCOtUX641LToZDQWI/1d6hKQjrvJ?=
 =?us-ascii?Q?m1m0DIx1K7jJdUVSS9wTLDh2FvwnInCTqa7EKTZDt4Xg0Lae7EJfFB7xonKU?=
 =?us-ascii?Q?cgRMRHMCIHRAgrnWNpso//kGo5h5fONffD3B/U2fcR4xS5VYn/+GYz5l0NY2?=
 =?us-ascii?Q?WhARdfaCQDIZaFhQnjhhx7rxo3bEF975TwlzI3c4dkOJKXDUUr3MIxP2YmoK?=
 =?us-ascii?Q?9zxZ+V000eluauCTfNM16gNlLxocoDrGpEKID1NDldgwSYD/TMf2BgK91Gt5?=
 =?us-ascii?Q?gxZhyyX5bBQFV9Z4UzG+zn22UH/efLzoqjolk/P64hTldNiyCeMbpYoi7OL6?=
 =?us-ascii?Q?UtKMj4VPanT0WAcnGcoKh0wlvueQMFRK70+0c1s40lHZIMN6l3A6gmYIkcjr?=
 =?us-ascii?Q?tly4s93sWW05l/YModuk6xuUId7nV/zEnUKvHZ50?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca27841e-db1e-4ecb-0ec1-08dd841922ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2025 16:49:24.8738 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JnTtvdxzpa06mBqNtQ1IhM/1VsCv1LhxGFhL8xYxX3Bqtkbs8nv4uTXww4Cn2/9uzG+uUHtXjB5B+8ocEUPTbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5320
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745599809; x=1777135809;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CCtFj0KwOyDO34LYXRNeazE+3WA5NuDsHkKIK1Lnx1g=;
 b=XfdVD556H9Ne2Wdx3UxMiUZg3qA8I/gkfGMJNu7Q9wWpHdKglVuTzqAF
 UOrJXYXa5a4lbhvoWmfTwsL4EX4QbP+RfqEhaUPqB1LfrWrMj+QGr3Fxy
 73OMVodwIbTRaMCNDan8/I8MGeyK+OUCZ76h6eznw1x40t87KhMtYEV/Z
 NK7wdIfRjI3O8lx8bE+S+bAfvGzYslaGZmR+NdX+mxsYoGHM7BGyqjKrd
 lB0eGBAt4d6tO54vpI2bKmo1LMuNVaV/c110VCZLC16A71QkHlBszw08L
 px58yVTMEgaIVbiIpytmxHTzP9Tl8XDn0W9c7L2V90WRsoK9Dxglfyy+4
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XfdVD556
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] idpf: fix potential memory
 leak on kcalloc() failure
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
> Michal Swiatkowski
> Sent: Friday, April 4, 2025 3:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] idpf: fix potential memory =
leak
> on kcalloc() failure
>=20
> In case of failing on rss_data->rss_key allocation the function is freein=
g vport
> without freeing earlier allocated q_vector_idxs. Fix it.
>=20
> Move from freeing in error branch to goto scheme.
>=20
> Fixes: 95af467d9a4e ("idpf: configure resources for RX queues")
> Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Suggested-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> 2.42.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
