Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1137CFC221
	for <lists+intel-wired-lan@lfdr.de>; Wed, 07 Jan 2026 06:59:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22752816FA;
	Wed,  7 Jan 2026 05:59:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VtOr225CHKSR; Wed,  7 Jan 2026 05:59:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67F72816FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767765581;
	bh=iPm7VhQWehh32FRNoAqQ92N1oFqtR6PUfWZJGu+dB1A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0H01Q6icO1DNAcpwRQ9tJRfPao7iC/7bSFauyHTNiQpcgznmQzutkk5J2XzOZ271J
	 AfWgrWqrse1Q+iv3+5bV4iL/DxlkzqHMVo9Qi+BZtHY5HzmWr3zGZaFQn1pwtNDfd7
	 W17mx7QX865UYZDJx5xcC71nnEmWHTXFMQBSABiEg93p2iCceomc1UXQfeFeH3A7tb
	 BVKQV835mfpzX53BKZMFix0v1gdbUvwTgA4JcHxARDxy88x3o/KHIx3VPM0qI9Bs59
	 Tm8chMcefslBu2cl7iYQNAGM1N2Gj92IA7T2JLJosxOX1QQlv/ZSM7pim9BGKVUDxA
	 3N9lFxG+jVpug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67F72816FB;
	Wed,  7 Jan 2026 05:59:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AAD04970
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 05:59:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 920DE400E3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 05:59:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JG1_5ATkJGp9 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jan 2026 05:59:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=nellorex.kamakshi@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AB2B140052
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB2B140052
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB2B140052
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 05:59:37 +0000 (UTC)
X-CSE-ConnectionGUID: ePDV0yBVRU2o+pQ5RTEiMg==
X-CSE-MsgGUID: vW5dSuvVRkCD92vZU5U1lg==
X-IronPort-AV: E=McAfee;i="6800,10657,11663"; a="80494671"
X-IronPort-AV: E=Sophos;i="6.21,207,1763452800"; d="scan'208";a="80494671"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 21:59:37 -0800
X-CSE-ConnectionGUID: sS/sLREmTPanvoGbvUmyGg==
X-CSE-MsgGUID: Ndh1YtH0TYGbLjJ0KMibQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,207,1763452800"; d="scan'208";a="226353599"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 21:59:37 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 21:59:36 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 6 Jan 2026 21:59:36 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.40) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 21:59:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jBYnB4jJa35nvesldstySKNSjiqXsDzkFHjHWZ9IhuSw2xaj/xSAuOWdneNlrZoeRTxvkFO6x9DU/ToVIGq9N5kRgyTXtfC8xQ1tjIJaVxTv7V+vmJhgJl2EJVUHgX/eXlgG3YfGh/ZpxiNrVChfmtSxu88erK9HIjV0HcBq/S/pkkSEXa/048N52Ojm3Kf17QguW2mDVyZUX5vdaTCfboh7bgMo3GpXDjA6ZGZXpee5mcZn4b7bqAW8gIH1LLQ68Ame4iNVTCUbG2M+UzshAdTp5jsqGHLJLlKip+RTAl/SnyonNDoQhqdO1xr5RdfwOBKK5swzemf/TVg0PaW7gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iPm7VhQWehh32FRNoAqQ92N1oFqtR6PUfWZJGu+dB1A=;
 b=nTGvNCTm6WvqHadd/+zGHYgs36gyssf9QNpkjBv6V+MOzPuXHsqnbJXLtJr5pSMe1f2TyqnDo/5xCNytPllYAsAT6nCmcTLaEYNujAkK/hA+PGvTRP0vAxaUglpZUPBUitFKMei8DCh1nEPJJTnnrAItBa7n7wbGEgDxedaebWC6WvPFxXoAGUZ0s9XoGCxAj1v774RpNGq0FVwvAFfLlEKMO9cIGt7/LFaXEVnTp23oSjqUeDlPpWVKjKzQk7Hhmt4K2Rgz/F+sbphIs/H6yZ//XraMn6/371TeRBsHgTuaEjKa1zU5weKGqg/sZUuEoh5KVsYTHk9v+piL9AfrXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5556.namprd11.prod.outlook.com (2603:10b6:208:314::14)
 by SA2PR11MB5052.namprd11.prod.outlook.com (2603:10b6:806:fa::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 05:59:34 +0000
Received: from BL1PR11MB5556.namprd11.prod.outlook.com
 ([fe80::4124:870:2b43:4467]) by BL1PR11MB5556.namprd11.prod.outlook.com
 ([fe80::4124:870:2b43:4467%6]) with mapi id 15.20.9499.002; Wed, 7 Jan 2026
 05:59:34 +0000
From: "Kamakshi, NelloreX" <nellorex.kamakshi@intel.com>
To: "intel-wired-lan-bounces@osuosl.org" <intel-wired-lan-bounces@osuosl.org>
CC: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "alok.a.tiwarilinux@gmail.com"
 <alok.a.tiwarilinux@gmail.com>, "alok.a.tiwari@oracle.com"
 <alok.a.tiwari@oracle.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 net] i40e: fix src IP mask checks
 and memcpy argument names in cloud filter
Thread-Index: AQHcUnY3aRyFcNinEUyQ9XIrRVbhYbVFTSoQgAADDACAATKTgA==
Date: Wed, 7 Jan 2026 05:59:34 +0000
Message-ID: <BL1PR11MB5556FF3F70C8BCED9179D4B0F584A@BL1PR11MB5556.namprd11.prod.outlook.com>
References: <20251110191344.278323-1-alok.a.tiwari@oracle.com>
 <PH0PR11MB50139E1973CFB73CFF221FCD9687A@PH0PR11MB5013.namprd11.prod.outlook.com>
 <BL1PR11MB555670AA62929815A84BC3D5F587A@BL1PR11MB5556.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB555670AA62929815A84BC3D5F587A@BL1PR11MB5556.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5556:EE_|SA2PR11MB5052:EE_
x-ms-office365-filtering-correlation-id: 2db6cee4-631e-427f-c234-08de4db1eeb0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Z8SPebG6nDdbFuXWy0cd4XuESAznS/E80P5cckqLOte0zW1BGalQs3c1ZdjF?=
 =?us-ascii?Q?21VmKXILBdQWD5YGohjZ8fUwTGhFIJ6PEBvuqM80CP66tDY5nJ5OAiJjGiXH?=
 =?us-ascii?Q?JHKuDXTp1B2iZ43KaN2/opZSMHsJJEB66wmBhjgJHCI9ojiwTWEUBALPuq7g?=
 =?us-ascii?Q?Q61wDmYPC/xnEZqIoyVrQcf+f/7qsWGKILJ38LgediwC9G3zuhPuhUeBenNR?=
 =?us-ascii?Q?QpmeOb3AKvyRGZvTydMWgFh2ZWr1UF6kyT3qhfZQKZzjoL4VpAv5A4QTL6aC?=
 =?us-ascii?Q?DkRj8MCXags5K9/GM/cH6+4ivw7a1HUrF+V6fzk77D40Xybxe1EdcK4Pbc85?=
 =?us-ascii?Q?6f5hwFkCwYO/FAzALcOGMiGGJ49eWfdvm2/EuCtU+MezgNbv90lNlPqibtzU?=
 =?us-ascii?Q?Y62CPBd4kuu1sabHMZ0uu5NO01V16zYfxKgpe+mN5H1F2Qs69Ci0YwNUkb+2?=
 =?us-ascii?Q?8wJMgHnjZoUF256S5F3qv0TVs0saaP5DYU/o6Jt+ui3b7vZeEPEgR7IinZgo?=
 =?us-ascii?Q?MRuSgFjIZyi7mUWk0ve6FTxdJpdlnEIP4EDeaf5KMP0rVAbpGtPhBCEpnMJq?=
 =?us-ascii?Q?8oW8HStWwmHvOviF5L+Nzx3Lk9Asw4u0gzZQM4Sp6y49qk9zyoUFayuD5dPs?=
 =?us-ascii?Q?5LnC9j7U7AKWcrealq6rFrv1sK4+Rxb8fArKvHpivpfoVe/3Hd0pCXyTl5PL?=
 =?us-ascii?Q?okd6vSBWddcsr64OxAKGjsjrYyJ4bnvIZPTNSRj8UCyPRhUNGnY1CHAVLbu5?=
 =?us-ascii?Q?lGbIIBUr+g7FGgbQcd+prXrjjAwrBltDtAGcCLtvViAvtYO1Qkgzy9K+V2Uw?=
 =?us-ascii?Q?lTcc3Yc45ih4DyDVKNiINPWANuGLOFbDfXf9g/guolmidRhP8UzH1fep1ssd?=
 =?us-ascii?Q?q8DD2ZBy5e8nOcnLT6McPuvYirTTbi+iQPQtN+AixOO1L69x3cj9HwKrvzpq?=
 =?us-ascii?Q?O2f3DHw/MuEt/u2PZLWshI7aUG9ke20mZ/Y7P4cak+RAamenETdIAOg6y+rO?=
 =?us-ascii?Q?ULBLJsz2hIuK/4Dn78WUghRdQM8om4ap2NY488vBq+OHeQt6S/2J9oj4xdPF?=
 =?us-ascii?Q?gyR63OqUUMZW3F9aQdJbDfwh+bkpyoYXdaS/aH5S8Jd4rnJhjkrG/YiMGlYj?=
 =?us-ascii?Q?a8Ruf9R6Qw5GySTCQNW9OKG0WyW/XonYhZu6WuFtEEokT7AOFGuhw2P/EEpI?=
 =?us-ascii?Q?s8L4CYbAupIGWuLGzbbGphBp6ejcmhTMzYssCdz0hc60J3+H4YJvKTdTA2SY?=
 =?us-ascii?Q?sNrc3pHIyzDbHntKHQRNpLB0ExkPxk5w6Lqwr1QznEK/1S0qAbAjIjRacPZL?=
 =?us-ascii?Q?IWKnu3085i5nlao8IBuJy25l+bq50Xdfij9+amNlgq1CT0TBknI9r7hSFa3E?=
 =?us-ascii?Q?gBEXwlMIyOlrCTFMbZ4PL1KTyzQNIlEXVREB7kpOFVkMiuxB6K9LAp3bF9WG?=
 =?us-ascii?Q?+2IadXYci+jaT9L2fbIsT695ziBvxTDoEYpC7o2YlBsJg7AW57a4b2+EzSFx?=
 =?us-ascii?Q?xun7QSQBfExDUGNd6rRh2/Tkjm2SvJ3tnaxr?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mwwBLxLvZi0dFcra2gyFfg5kiJZOn6SejTcn71zdRGiH004l+XhkVcRBHnP/?=
 =?us-ascii?Q?dvgwaYMN9n8P980OzY99ZUtsq4MBVhTNemM2Vo5nkmyB/+vFdp9EuwlgtmP0?=
 =?us-ascii?Q?HD3CowtAWaFR6npRUbPaC4oYzzB5pDn/YyoQ6ZX0p8y0k+xSLg+WEyvbFo6b?=
 =?us-ascii?Q?AmhbHhbq/4BzoxAp/rTMHvimK5vUHXK89SY5x+94zm5W5KFJmLtUAtjIRwDD?=
 =?us-ascii?Q?/NKKdrzCjqMtt5EnjE4bSp+iFjaAt9zLSiHTw1KIYn/fwkP9uTQCmJPpLJSm?=
 =?us-ascii?Q?HYoXQVn2gQtPdW88/z3AiYAKJGB65l/MRt9k1UHlkJQ1eHzGJsujAjFrQcyU?=
 =?us-ascii?Q?8ZNUnJIVThpmeS7EETCSqID9QpsQo2HRgaAbVxO+/wgsq1i+o94T2I3E8RbP?=
 =?us-ascii?Q?4/8J90kBK+WlWRoU1s8wbzchVNis8uXyvzZPUPZUvgl0/8o8osSwoLpI7n1U?=
 =?us-ascii?Q?VM/Edj5J3gBLhgcNYDOPxCRoJPgFCMAyiFzwrmphc7P3G1I6WBkXYrCNNQpL?=
 =?us-ascii?Q?n07O6JHiNbK3IUqoYUMWIw9HvI5i4qBB4kPHy0WTirLIw2prSDcrHNyawX78?=
 =?us-ascii?Q?/2T84nQ8IeqCkS9sLb2BdEuazAi2DYGm6EjB6wZxZDZnwUr/UDxCL+xbj1m7?=
 =?us-ascii?Q?/fB/1n2Mrhzgz0VsjfArxuoUSRmwl7m67tq/7U39QfrE1Rw+7mZ0w0GrFS5W?=
 =?us-ascii?Q?WvnRfi9QFFBBUS9NKHmpcyBWQOJW/nOLsWmqCwZLVHq+JprsOGDPpbRt/sf0?=
 =?us-ascii?Q?hFTeALQDuhCueElCfstI19RiwJsnitkwSPRoSsrz+pI9ofSszaOwompykcWB?=
 =?us-ascii?Q?fDzDMctlS3I0sAcfanJZVIg4tPYq1Ep2OYmS/Ek7O+pcPdmKtuZfnU48KmBB?=
 =?us-ascii?Q?g447C5Q61YnRw1ohvA9KrrcM4Of/RTIcQsUCS8xQLrOA9F8BV6oRdSqV+vCm?=
 =?us-ascii?Q?JmgqGQcJCeW3Bl/SO+ryM3fcfZql4FUN/xdg2yIKWtHqGzEU5VbobFDmjhJA?=
 =?us-ascii?Q?89iDxuKC6LcYEDjOphe7RXh95Qcsca903iKyMbyDoWkZbItB8lsARBGCQG+n?=
 =?us-ascii?Q?cTLACgCIW3pFEMDxzxj5Ck8kxbD8BYQw1xdbbm3YWIZidu9OumWla3xIPCxV?=
 =?us-ascii?Q?p0W2EfGv/vXujhhpU4Z/gIs2pd6PbrxeFWNinUcoaJdlfBVspLyvtNcFIIL2?=
 =?us-ascii?Q?h1RMqAlaVeTtA3nZhFYW6bEgD4lkcFbcWPUsw3TW/Jv/MnlbBfrC/IVoJ5JK?=
 =?us-ascii?Q?zPYmJQmcPHorT0j+kT3BKUmtfIaog+IVsnSDr2RkYi3J+QDAyJ1Im7MePnas?=
 =?us-ascii?Q?aF7cjqEnEYine9E/QuiDCVA6SeaKUIsYNmt+G8TmLILTJ+VgGNG36Yxj2Tyh?=
 =?us-ascii?Q?UZRkYt4fcsRA9YvaUlQjsNJOObR4exIcBqFFGFmueQvtnCYpuW4ucgq9lRiW?=
 =?us-ascii?Q?KPACS1ZU3piy5KBiM6CGPDo+xEOby+KVSImdZVk2tCx8H1Q2gunAIC8L8avQ?=
 =?us-ascii?Q?rA92lT+VwtB1mRsXE9xxs72fvY83tqsyMSfwYAenEpvFQm+UgyiU4BXzsRz8?=
 =?us-ascii?Q?o+89BZJnngswpsHHruHqvrqZXieu4LnWYgY9OB3mz1ZNUXAqoewe/MDRIQUf?=
 =?us-ascii?Q?IZ5ipmDhlROkVGsYFx9Wclo7Qe6ypHZJwQCxvEPTxSu/NT/8OKJLZ56d8Ls+?=
 =?us-ascii?Q?LWQh7Mvfh8ixlIxNxdUE0hFgWxfeh2/lfgY/AjyOt3mYMvW3vCIh8I1hjj6D?=
 =?us-ascii?Q?3YQi0YuO+w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2db6cee4-631e-427f-c234-08de4db1eeb0
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2026 05:59:34.1753 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jYqt0iK0FDHUaY/bWmvIsaktteaqyjZmNa5wwteFSwU4KKs1bYgeKcr5SP3msROwzKrDtlHUcOsn2rKf+2mk6h6C7fkll1S/PtUJOAj6r8I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5052
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767765579; x=1799301579;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IyNxQnaX3rKTh3ZDe8Ek4LZ+5NO5qRFhgvwBNmiOUSY=;
 b=Ykqji/N/N845cbHgGPttP0HEfs1xo1NxM5vcx6sqEe71gun1l5Q3soDU
 oTA/291CxpB9ax1B5XHfM5UnNWVltUVWC7lYAH6+Nke7zn2lRWneJbnhu
 pfrxKQxDWUB+HKh64iijvHGMtKCwy4olqEMEi4E+ROVDhNdSTTM5bnn58
 Z5JjUQzwuPKD0AS6RWAZGf5EguUwg8R9oJRaPsoQOOTIUs+KEqFl8Q2xG
 rkRLLfTcknNWDL6unEJ4CWCeVEP1u4dYLYivTZov86zjL8QocgNJsTVtA
 obb7MzBmTtgFHYe4Hl2/tYLBoAtpenlL/VYEk6OLoewlyCjhJJnLpHBgo
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ykqji/N/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] [PATCH v2 net] i40e: fix src IP mask checks and
 memcpy argument names in cloud filter
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

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Alo=
k Tiwari
Sent: Tuesday, November 11, 2025 12:44 AM
To: pmenzel@molgen.mpg.de; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.co=
m>; Lobakin, Aleksander <aleksander.lobakin@intel.com>; Nguyen, Anthony L <=
anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch; kuba@kernel.org; davem@=
davemloft.net; edumazet@google.com; pabeni@redhat.com; horms@kernel.org; in=
tel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com; alok.a.tiwari@oracle.com
Subject: [Intel-wired-lan] [PATCH v2 net] i40e: fix src IP mask checks and =
memcpy argument names in cloud filter

Fix following issues in the IPv4 and IPv6 cloud filter handling logic in bo=
th the add and delete paths:

- The source-IP mask check incorrectly compares mask.src_ip[0] against
  tcf.dst_ip[0]. Update it to compare against tcf.src_ip[0]. This likely
  goes unnoticed because the check is in an "else if" path that only
  executes when dst_ip is not set, most cloud filter use cases focus on
  destination-IP matching, and the buggy condition can accidentally
  evaluate true in some cases.

- memcpy() for the IPv4 source address incorrectly uses
  ARRAY_SIZE(tcf.dst_ip) instead of ARRAY_SIZE(tcf.src_ip), although
  both arrays are the same size.

- The IPv4 memcpy operations used ARRAY_SIZE(tcf.dst_ip) and ARRAY_SIZE
  (tcf.src_ip), Update these to use sizeof(cfilter->ip.v4.dst_ip) and
  sizeof(cfilter->ip.v4.src_ip) to ensure correct and explicit copy size.

- In the IPv6 delete path, memcmp() uses sizeof(src_ip6) when comparing
  dst_ip6 fields. Replace this with sizeof(dst_ip6) to make the intent
  explicit, even though both fields are struct in6_addr.

Fixes: e284fc280473 ("i40e: Add and delete cloud filter")
Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
v1 -> v2
update patch subject line and replace ARRAY_SIZE with sizeof as suggested b=
y Alex and added Reviewed-by Alex and Paul.
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)
>

Unable able to create  Ipv4 and Ipv6 filter with src_ip as a match paramete=
r. However filters are getting created with dst_ip.

Below are the commands I used to create the filters for IPV4 and IPV6.

tc filter add dev eth0 protocol ip parent ffff:  prio 1 flower dst_ip 1.1.1=
.1  ip_proto tcp dst_port 5000  skip_sw  hw_tc 2

tc filter add dev eth0 protocol ip parent ffff:  prio 1 flower src_ip 2.1.1=
.1  ip_proto tcp dst_port 5000  skip_sw  hw_tc 2
RTNETLINK answers: Operation not supported
We have an error talking to the kernel

tc filter add dev eth0 protocol ipv6 parent ffff: prio 1 flower dst_ip 2001=
:0db8:0:f101::11 ip_proto tcp dst_port 5200 skip_sw hw_tc 1

tc filter add dev eth0 protocol ipv6 parent ffff: prio 1 flower src_ip 2001=
:0db8:0:f101::12 ip_proto tcp dst_port 5200 skip_sw hw_tc 1
RTNETLINK answers: Operation not supported
We have an error talking to the kernel

Dmesg:
i40e 0000:5e:00.0: Failed to add cloud filter, err -95
i40e 0000:5e:00.0: Failed to add cloud filter, err -95



