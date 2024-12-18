Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAF79F6646
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 13:57:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DC23841CA;
	Wed, 18 Dec 2024 12:57:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xvqZbNuxYpER; Wed, 18 Dec 2024 12:57:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AB0E844EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734526624;
	bh=rUIubie4DEcLmhDj/v6hIvhc4/J1iCIL1pt2dCfWyU4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l6+mFyMeKZDj3sqpk14lH+vqSI31RyTaKODMEW2ngJDzA20dLMKzuKO4RDTcQPtkr
	 eDuAiqN4B1iqNKVAwlj6SOW66KyqH7G5mnGSS5sBCbQdIx+PtEsdoLMASb8lQ2LTMz
	 pSj0VB2J/41mVUa52Sj2eQruvpGIK0M3kuzc6vLqzLGCAqsMOA1zJiBUMtRdRZUR74
	 itLdbZkHoTv6pl0UznSptR8GLhCipfBWDaLZqTXydZ2yNJTi6OCi8Fa6FztuITYDVV
	 FEYbNUz18pwFJmreknAL+HJfLwEDWYetyrNFgXwOJTnuRdp5qx4gW2TlNCy2KhFQER
	 LfITZQqV1j2/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AB0E844EA;
	Wed, 18 Dec 2024 12:57:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 72C84CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 12:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F97540112
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 12:57:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yOLxk1W7gsfW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 12:57:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 67960404F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67960404F8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 67960404F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 12:57:01 +0000 (UTC)
X-CSE-ConnectionGUID: V9lxZ35rRAuxXDWghAR11Q==
X-CSE-MsgGUID: NcAu05DgTpe/ZU2dcgfNqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="35152919"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="35152919"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 04:57:01 -0800
X-CSE-ConnectionGUID: xr2lEjA5S2+zwt0+y49Hmw==
X-CSE-MsgGUID: 3cVhSx7XTKKKV9vwOt6GaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="97697201"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 04:57:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 04:57:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 04:57:00 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 04:57:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kwZO4V98lWi5yzxNMqSBPZfR/Z4tMMEBdbDAm7lRKiGY5sHTNlWQHgp4cFcVO3BC9x5oepYxj4/F8kQeDtVAQE2LDEkWWdtmHo6VbY+4JW7deue562s36fuXz0dZW2ksPvGvJXU+1R6Ld7sNhSfZ4+x6Qhb/dmU4LPemSqKK2BQxN9pMZu25bX295+999X1G/vVyXe+wii/zAm6FmHF/P5Rm3QFO3cohBkeO6CL0k/aw7WaQLLlgvMLS2u7Iab05zf6QyDOrDT14ZrWANtaOe1RCfvCw1Qvt9+EdCz4pgEP+gstlmR4xrMTK/qVHpmrBYfw9l2DGTjm6bpzJuZN71A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rUIubie4DEcLmhDj/v6hIvhc4/J1iCIL1pt2dCfWyU4=;
 b=ycN/czKx4TesHHntuxXt0gFlX6Xdbu6jxbQqs3HYsStfcaFlDWOaineTT7p/j3cjp1zspaMDe+YeQndqJqUoftuXM/SShzy2+/IdjsI1MOVo/lQfasMTsm0+rHTPl7frIs9mp2R1KqUXCOfgpLB6FLDjf7FUl+xwS4YD0kV/desJKT+GZ88j/Ebjw7L8swjIJ/OMUweXb237nrVXLMnNQNvdnYDlipLhi66sw8bA8ziIAztX4LBkWf6vce5x6HOMJKLV4mzzWivr0d39tkDsHnf/lbURYKy8jbRRu5moLRlLiyKe8ZuhnH4ASya+F5lABL7z1UWOHDBXioNT3jjN8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by IA1PR11MB7941.namprd11.prod.outlook.com (2603:10b6:208:3ff::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Wed, 18 Dec
 2024 12:56:16 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%3]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 12:56:16 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Wegrzyn, Stefan" <stefan.wegrzyn@intel.com>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 1/8] ixgbe: Add support
 for E610 FW Admin Command Interface
Thread-Index: AQHbRvInG38dHvyDB0SbOWbNs1HFQ7LsCh/Q
Date: Wed, 18 Dec 2024 12:56:16 +0000
Message-ID: <PH8PR11MB796560CDFA6D194A555F01D2F7052@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
 <20241205084450.4651-2-piotr.kwapulinski@intel.com>
In-Reply-To: <20241205084450.4651-2-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|IA1PR11MB7941:EE_
x-ms-office365-filtering-correlation-id: b134e340-bd8f-4de8-7075-08dd1f635bfa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?IiHt6xtkrfuxoq1qvUXs+oJF10eRJ4GnE3sfsZXVFTK9deQixM22AezXqZ1d?=
 =?us-ascii?Q?NyYwgTDGlmYMoFEE5vZzRVDx4qU+LtOEgxXKM1z7sUhvmBnbiIOkWyWLV5M7?=
 =?us-ascii?Q?BBdjUMJx0ur+kTaFEz2zAeFqiK16lWYc4HW06v0VAXO/ZENFN22OPYeD/Je0?=
 =?us-ascii?Q?F1sXhGl0adjcRk+lgrruwy8E97J8kv3HjZv1tX4iG4EBSxGH/u7oGloBdA9K?=
 =?us-ascii?Q?4jJBHCEmtN48Ta6Py8Df9+3G5JA2baKnSV2W3Uo4yLoPgoZty+r2mpiiTj/S?=
 =?us-ascii?Q?hvx5fzfkZD08NXCH5BOuzwSAeaCrR3mMPyugEjlC4y7DwwzBXCYPUcTfkzTz?=
 =?us-ascii?Q?wCP6VHEpKMIwfvbcVluQzODM53U1mdL2IUBCCJP2F8yvoOZUxvQB2TfJG1Nh?=
 =?us-ascii?Q?8bkQmF6WPOJBv9inJd29mAWQOA2vULAbuhghL6CgLI9IpW/cGQUGcNUIKsXD?=
 =?us-ascii?Q?P+yFrbfA7cluQR/DBxih5gJ6P94VBalUY2VLo+emcExdQIMfNJ4OrqaPSblJ?=
 =?us-ascii?Q?p+W+psfQ0YaEnKN88b24Rebx3CYoAIw4J6kqC5EqG+FNgtSneE4LwIq/xp2v?=
 =?us-ascii?Q?EykCX//4TeILuHSCDCpaZIe6RNkOK2lw8EeJHue6N6x5ImwjxSBZq6x1lV2z?=
 =?us-ascii?Q?2Dgl10hO9y9XLv2zE3G+adG4V03WBqWoEc5Is3bKgogr+hg4UQr6D27yoVYz?=
 =?us-ascii?Q?UnehUQPYmGQqIoVercUQ/VaAd3O0TIrBCVJj6+r0y2LRXEAopz83t+8om4PK?=
 =?us-ascii?Q?8A5rl0vhXw9bNPyoKV3AZBop3Y5Bi9j507PjacnMNP0DbyHuYUNKF0qG9MNB?=
 =?us-ascii?Q?Yp4ls9Ca5skAAq7SkFhNazJW5wHIYe5SAP3lCpeuFH78ktH2c8n1+n8gOyBb?=
 =?us-ascii?Q?ndBfj22Zq1lrMEXtdG+GBlE3Iq9ejt+GEj9l2Ytjj6uTMPIal2IdACIiGudN?=
 =?us-ascii?Q?kgVxaAVYIBpWt4Mg7NsCRh1svcWHHHZb0UfUSt+hJZkqwq7AEu6kn7KHHDyD?=
 =?us-ascii?Q?sHsiwoPb19ROqtHXL/gXC1axaAc9eSu7na+3lvST+5HlpzfkhWvgeNff8xuJ?=
 =?us-ascii?Q?1k7jgB8OCWCwcj1KD521/FZXyrM2LUfs/Ur6ial9iw/6Gb2roHv/TWGHDGz5?=
 =?us-ascii?Q?zF177+YAoBf2me4nV3vWsZtgxOboffd2Z3oeNOPNBY6mSLPO4jhc6k8v1mip?=
 =?us-ascii?Q?7uidcirW4hICrL0q1+Vhal+ogQTzNgGD/GuNQhpqU+yYZDYAvta2QnAAlOaO?=
 =?us-ascii?Q?RajsuIxJM6Vdkz+q//K6LTT1blsrR9Y9L6bh16IQ3bl1+kI2aCp3J2fNbfLy?=
 =?us-ascii?Q?Md47ZdH0ks/9GhDkszyfK0UAznRDY6b/svWsotBJzjXyPVg0sWNkUp6vFyZE?=
 =?us-ascii?Q?VPlSOvhYQGGDE6IEzKlrNwTHR/fFhQ6DbpO/+rzHQ3Yx7oNrbTpONWmY56LZ?=
 =?us-ascii?Q?qsFqPoCJ7C//e5sCdpkg4pZmiuW98R3H?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7FsUhMVqUGsg9XUvBovIooZEQUwmEXxZpFFB0J/0l7styhW6KxPpw/ISsIGy?=
 =?us-ascii?Q?+ywPmMqn4/7rXRlLHhH4BGjlZqsBEC5iU5EA5tMuAEFJjXAdyePjFtaNz/Hk?=
 =?us-ascii?Q?UyhZwQNNRobm/U7sF/3hwnvGM6anzAUZoCVhqtdInHx+0Htgq4X/hiOqIlE2?=
 =?us-ascii?Q?td4oPLq0/02gbSGppGt7rxQFEMZSmQO9dnapsq+8O+GgEPjz9zuORFLdv1Pc?=
 =?us-ascii?Q?XAdAX31qcwCQfzJbE3a4g20EPh1ulIJkE2D0FXehvo9iWM8wz+yRIeUtE8+N?=
 =?us-ascii?Q?M2zeQ5XRrp6EG9zIJ6qZdFQXhO+1ewy6BKwFzKotEffdXGdUUGWFwOGYXOOa?=
 =?us-ascii?Q?w71QcWB3bcoDaGVuM8paWum7SbJbOQaJ1/9i0Rt+ZKUE53UwlSloXEdxFxXL?=
 =?us-ascii?Q?+1CC/ra2DGnnnnN43sFPhiCfELuk/59T82V2ARF+btwqGzmW8fOxxH6HhrE7?=
 =?us-ascii?Q?tmvFrK9e/N0WFytGWwWKFI/25pVszjBYTlGzwKr+vjiNAm/YLEjmwq7iInsC?=
 =?us-ascii?Q?yiIIi17pyNCvrWXIL7FhT18+65os1XGllx8vpPuVJvZo4Kt2qx3BQRg+BvyZ?=
 =?us-ascii?Q?4GW++GUyGZer0Ak/v5wAi7KA4hm5TmCc1jz5l6mdzyGjVo5weyggGwwP1Ne2?=
 =?us-ascii?Q?seR3TjrHJqQArGiOvKKtDr7dhDcpwPbnAw9JHsceqitqCYo5sNiw+qHLmovU?=
 =?us-ascii?Q?yBIQW1d8u6+feDRS/ESxsqUKiny6SoJHy+TNcEOHHWUOONBnr+lAD20HCt8v?=
 =?us-ascii?Q?jetW1Ncv8d3PrzgK6G+hLaq46fWsoHvfLe1GPipzLknkOUlgACh/gpXgE9fX?=
 =?us-ascii?Q?AhygrtvJkV2BH0dgr/aI+4Nvz4/Q/7NRRgMrbIT1U2AabfxEevez/nfCCzwb?=
 =?us-ascii?Q?Ccmt4bebF6OCK683WorIEH11NrzdC+AFGKjVplF1r1qfMlPGbBmBeMyF7uge?=
 =?us-ascii?Q?ilUnLoFaLupUYAbMm1Zuu8igjgItAWw0Sp86JKn+cTrnFiQZDuCYXbPjK0RW?=
 =?us-ascii?Q?fXbExCaLwMQl34FsLV2oEHbHLBs+f1rRPXotn8pyfsZvyXxDoLYJRx+cfq7C?=
 =?us-ascii?Q?ROsY5KnKOtNS2OMX6D5L5NFVVjWLO8Fc9ZFcigMr2d+Mvx2ksgqYpM44rRhx?=
 =?us-ascii?Q?C5VGoyTPtK1uBj0AXfFqYhFIeF0KgrtI0GQXtskC7kkBbyF/askne7n8jte5?=
 =?us-ascii?Q?Op0LFcrylUS7LYuPkxl50RIhe5Sr5ITEsifshNFEXeqY+U6gre+s4aWPagJd?=
 =?us-ascii?Q?odhLyg9EDUd7r/sJRFKYD/2BZNUOYBXBz0+CNsZOztXAscP/I+ppy1tfp+u2?=
 =?us-ascii?Q?uGODB+7HIAJ7261Q4xx+30RdJtcFihWn/tbLVloZabBgCNnMDm7cZxDnzKju?=
 =?us-ascii?Q?9mqM0OFFSPG6X2XtLsYk3r3934DrnZGEQrQccr41NijieuH5ZJq7vOax4hWK?=
 =?us-ascii?Q?cYgM+JIwTGiU4U7EQv/YgfbkhPULmoBN4aeA92xWdanJ3RnqSgGj5uUFL32f?=
 =?us-ascii?Q?+i7u/APmocDm7u8UB942f1E/UTB+tZEon1DSIgS+65QOtZn6gVuyYUC/ar//?=
 =?us-ascii?Q?l+skC9dc5oVOi42v3y205OQ/dajwJJO/uhSlV6oc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b134e340-bd8f-4de8-7075-08dd1f635bfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 12:56:16.1325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e4wNEduLoml27wDvpmKGcI0F3pbikBRCVncqpfTg6FVpgjyse6heFC+VrzU0AP/Y/3AmUDhA2ksAsB9l2C8l7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7941
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734526621; x=1766062621;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sPeyBWrn5oG0ewXjnjcCqta9rM6OdUfXESdCvcwNJkw=;
 b=E31AlJhigZesnPwYnBDz6X1/HCVfmZxCwhexXrXOiSIkrbcctbIFtNN7
 flL1Nx+Ydqp7PY0PzBHC/8icX4BAWojSta7vIEy6W1ZnPbel7UDNGe9Hf
 aq78/3DZ+Zr9SJpRmnZJfSI+ZnQQW1z8cy2sRTXC3Tg4qZdlYsdcUSUKB
 u9iZUi3w3+Nn4sJCGIsua8T+ep3N/tBgy4I2K4qul23PVKVE6oNT4DALu
 LUCV3H/a9demm4oGmYYev0UTd7/0DC93WCgJ8zh6uRcZZVvbl3bGUFAWg
 eaLFB0hcL26mfT6pQZp0nmbnFTJmlk2xIpl419dCyKtzhkFZex4DHf/Ed
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E31AlJhi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 1/8] ixgbe: Add support
 for E610 FW Admin Command Interface
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
> Piotr Kwapulinski
> Sent: Thursday, December 5, 2024 2:15 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Wegrzyn, Stefan
> <stefan.wegrzyn@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel.c=
om>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Simon Horman
> <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 1/8] ixgbe: Add support fo=
r
> E610 FW Admin Command Interface
>=20
> Add low level support for Admin Command Interface (ACI). ACI is the
> Firmware interface used by a driver to communicate with E610 adapter. Add
> the following ACI features:
> - data structures, macros, register definitions
> - commands handling
> - events handling
>=20
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/Makefile     |    4 +-
>  .../net/ethernet/intel/ixgbe/ixgbe_common.c   |    6 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |  496 ++++++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   19 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   72 +-
>  .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 1066 +++++++++++++++++
>  6 files changed, 1656 insertions(+), 7 deletions(-)
> =20

Tested-by: Bharath R <bharath.r@intel.com>

