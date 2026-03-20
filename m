Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOCZMajvvGme4gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 07:56:40 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2561D2D65FD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 07:56:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B408141CDC;
	Fri, 20 Mar 2026 06:56:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HZZynBmrglMz; Fri, 20 Mar 2026 06:56:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2592141CE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773989798;
	bh=DX4a2x9RU63k4ncEM4ASmLn6NVF8AysM5HiML7O/DLw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FiVsD8KrkeWiQ1QZaTeVqz1GvuFIpSXmlGmuaQmXri6QbtPHvB9wppWUSayXjj9P+
	 PVxaFJ4rQdAJI0egPJVJExpOnAwKR1coBThVohSBKFyeZEgs9ELi2GG16kxC1uLSAD
	 nYdroS3jA0nfFUZZprvtuqaciOkUxLwuCoAEhvQXQpb6oP1SIszrBZicrY4CzmCjYC
	 5ynb+NAzQcmy+CxQLyZzcxNMA77T4JQv7qWiFeuYEcmo/6GDr6RQDmQuWjvysnGbXN
	 wz2Y1SXxuvPXrm6A3DTQgJ1sczXfqPJ8Qxa6eXA7n9JLlal41QsgKkb1rrztG9I9O8
	 IInj4rttcHqRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2592141CE7;
	Fri, 20 Mar 2026 06:56:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C387A25C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 06:56:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A8B2A413CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 06:56:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W6PudZ2fszAG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 06:56:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EFC6040088
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFC6040088
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EFC6040088
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 06:56:35 +0000 (UTC)
X-CSE-ConnectionGUID: njB3GRWHSgiEdvHMzhbQFg==
X-CSE-MsgGUID: 78js2ALsQ3mTpPV6ZKDdFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="75103740"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="75103740"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 23:56:35 -0700
X-CSE-ConnectionGUID: Zw7W8BrSRKOwwYNqzXI/OQ==
X-CSE-MsgGUID: 5l8/R96hTmmel/VO1aWqPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="246232494"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 23:56:35 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 23:56:34 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 23:56:34 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.68) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 23:56:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RBz3GS6IqIuTl7DNKnUMl/cWiUqIQPYxjol4nv/JBrlAIBlcFLt7R/g1s6FYXJH6dDRxkF+/g+6X/pkR76cn7wFsoCzZzKNxo8/oJR985gxc0sRdKT4cWUYripAuvPIxG+trKEHAVApWEzJbHOVv7btj43t/ss6fPdUS0SRDx7/ni/6vtB+gp+q8vQ93Sw2FlLP87ReZaoa3YDBdjf7XbIZBBcqpaeSKvcPveU/SYnvrmZYP2tuHay4xNZ6lTT29fBECkVeThCkJNC+C1vLZO2NNsCaQyQDOupjdzhScd18IXP7eBqFFz+wvcJ7admV+oojE/jfmRPCnLGrLGkfgWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DX4a2x9RU63k4ncEM4ASmLn6NVF8AysM5HiML7O/DLw=;
 b=V8Q3W+EJE8b4CpTnr2Fvzce6uQVml8aP207t8aCllibqB7T7VQPGRVJvljtAnDC12HUiL3tj7FRBve965vLJvApN72Qk3t0zMuI/l93bGDHfHDca26KiFd07b4VAuqW+3NSdtB4kWbBq/E8YEZKk7Uv1sQdo2TVd6IVD5J7BQJ9UbIW6hy433i3lpfrkfytpl+3VS1sTNYTjkTOTUj2VLEVLQ1+h/Hp166uCYN2iN5J/w0Hqf2h3zCE310Cr9GpUGytGblcMQZ5a7TVbZJNy0slCWwTFfoimf8fvJIYwYNJZirwarRuSrYDXlgoAkj1mVBokoKD19Wi/mcQs1DaKDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB7409.namprd11.prod.outlook.com (2603:10b6:8:153::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Fri, 20 Mar
 2026 06:56:30 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Fri, 20 Mar 2026
 06:56:30 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 1/3] i40e: prepare for XDP
 metadata ops support
Thread-Index: AQHct8RNOTnS4rHV0k+Vemji8g9Gn7W2/boQ
Date: Fri, 20 Mar 2026 06:56:30 +0000
Message-ID: <IA3PR11MB89861AD556C1C4D863DD4F3EE54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260319171650.5815-1-kohei@enjuk.jp>
 <20260319171650.5815-2-kohei@enjuk.jp>
In-Reply-To: <20260319171650.5815-2-kohei@enjuk.jp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB7409:EE_
x-ms-office365-filtering-correlation-id: 2b9d89b1-59b2-405d-3c73-08de864dd0b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: K7Tx/rBn2RD/tBkmGsPXdn2Nwb71LLmlV2Iu8eOxPVIHP2TkPtcASTHDTo+EQz3xYiFABYdPN8fexFfFlvmM9RgCdGySNr7ZZBFIelZELCT+6UbuZlSs94DwFJWrcEPCiwLU3YahVa/F2jXuiP0Io+41v/XNkgUZqYcNOa2IrKzCgQZhlNC354HImuP7oLwTvDQLUwad9dsOgceihEoqAl1nLtfeWwsgiQ/Fb7P20XsHpXPLiPqI9iWV/tEhsBcQ/0I+dXcukl81IImPvXiuIVD0gKD14HQ5ef+BqtlnaCpXd7BdIhjSCzP//K79HhtKAP0iHNwbXJakJrU29rXJcYku6jqGolkYxQQLmSuuNr4RQV98KUTt0tF6tED/SwiT0dAEbKVOA3030RHDeJtqoBWD5D0lv0J3IAnRE5uJY3J1oV6wFYLTFdpT1kKczVm02jTmS1yYtDx5yCOeEk/baNky8kLgklZmRPw5lsh/Exz85TCJRldkCGrwEYVkd96oAxxndops6nTSpJfeM2cbxFaWDE5Q3Dz94hWpUDh1fxQ6VbWRAh6VjHz8StrVsrhTgOQ5aFY+1wP4EUlxSNIjTBMnSDN8+gMKt3g2J8BF9STj0C7Q4Tc7wCGNxJ07xEzeY+zPiPWuUdwuBAdj1hymhLcZls8Q/S/ahjhHv6faisekSDdEYrJX71ZbF9JDVTBNYNh3/7VBX6cE5S2IGvqKoEJ7QfJd5X0P9R10bkT07ilpyIGZR23Yvd1+Wvsh0ZhWbfJJ9x3H+W8y9oZKK51SefTX9hYVwrePf2139fMfPhI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ISUovOlDhw5SAszCBKZ4J8o6zS+hIfOVvy2+A+/JSgSN1zasVsWa5WBQiU+m?=
 =?us-ascii?Q?e4DlowwN9Mp3V9pi/CUv3bLBmJwYYiJH69emXrJPGFh5SpqOL0VegZgYPg7O?=
 =?us-ascii?Q?Z05h+WkT8JBstOfu3WGcnHpSxqJdw57fWG0KAKEBCH9i/mmtMIUy4GyXsPP8?=
 =?us-ascii?Q?SPqVoNNf1pR2hEwrEdPkk/44YhNOXYIkUHNH7vjODuOINadQ466YU4FbOVUy?=
 =?us-ascii?Q?EioCzbAvvEZWjBdSIOp9UPLUg5jTC2XeLNqpiXnrO0QWmWVwJ1DhGbrubAT0?=
 =?us-ascii?Q?9ypuCAxNclhQxhGjr0yHmWU9nSEhUjoORNlYQ8XlV0oAkm5GDbp/GNdD8yiV?=
 =?us-ascii?Q?XK2x3CZ8hdFpN7gPmqLCuS525KkRXsZ8X5mXu7d5t/GN0os1htzfphhYAJtY?=
 =?us-ascii?Q?A0CX3mdSDytSMYPhXJQRSX91TrOJIpPQLoSQWIzR1ephSfIsLnEDXPblHCm8?=
 =?us-ascii?Q?lX4yHMm4SIMeteaJkBBNKRdWNIc5XPPP+D6CJV1mJRSUzbJZ2ZnfOi22YSim?=
 =?us-ascii?Q?y1LTZBBF3u56XULBxePViwiLCSV1fFwU1KdjO6SxK5YEHJLDhRkFL7FLT2Ov?=
 =?us-ascii?Q?QNXDeKPJfBjzCwTDUjz3tHL+7eh0Bl+J4Rplpg6ppXiWz43+YKr6VSL3Cjfd?=
 =?us-ascii?Q?WfH97m/OX+x71PNjGlaXdCo/NUkyIkknZP+lD8b0NIwl38aK/TPPtGs37R9Y?=
 =?us-ascii?Q?qZOIB5tTbK762TauaZlDYIHsNYVOvY5cqM2VF7E89KlhlcEhaKS4kvkTIsYP?=
 =?us-ascii?Q?CygI9ReXrgVduZj3AsjlVgXI8Ydj4xsAzIea9LpHX/VV/YW9QivFtWncDVmn?=
 =?us-ascii?Q?YfC9DqLfNPxys7EVWWPMoqBnu8XnLi+fjz33+5t4ALObJEfwoDrRtL2L0o49?=
 =?us-ascii?Q?l4bZqqp0FC8cPh8Elgna3DA9bc7W6N2fp+R1W+EO/cbEaAuZ+o59Ee54niv7?=
 =?us-ascii?Q?6Hw3yuBgLQkTSTWAu7cLEq106S2NUNCRiXr2l9qCo1xYyNItZj0ZNxXzix4D?=
 =?us-ascii?Q?I/gJfcrzOkjflSuo4T5wXHWO8Co5n+VhvFi6h9eZb34BaVCfsFF5Yj6hiSUW?=
 =?us-ascii?Q?mMHRinjvBQ1JVjF10QUtlzoxY2NZZYrJJw22CufMqGQCeiETKHDdd3qh4RMj?=
 =?us-ascii?Q?TpmxYyEV/nbxRClyp2B7w+oq/awMn/YttdgeVh2KEIWVOu/AWUi719DRHq+U?=
 =?us-ascii?Q?w8Py0Y+5sZ2RVooHiQj+GHr5KKAT+wGpXuG/YxS75g9nn1QZQ5qVefD33hKv?=
 =?us-ascii?Q?oTQz9G2WCgPziCJD+aylFcmdPQCzfGDRtGNqCSQwUaWG2Q8ZLr/4i+R1x2Tm?=
 =?us-ascii?Q?NPZILFDHxSD4ALY05MAQUK0o2Fy5Q3gyo1z9fVN+0rDcs/muiFF5zpS/lxM5?=
 =?us-ascii?Q?6f59KLA1gOa7+WP35e9bhiC+c9l4xvbVOXil584NI4QtyWlY3Wr1LhRe3iSo?=
 =?us-ascii?Q?dcLS5T+f3bk2p28OyAAFAjH4b6X+pfyQjAoxIg8hbuTjvaPImjjSYgC+wS0X?=
 =?us-ascii?Q?fFvGKR7OgQ61m/a+kdcGusIYsdCL73ePqaS25QRwhJvrRST6PkVnWFBTD8sA?=
 =?us-ascii?Q?KqDLlpyaE11Bdc4bjncuNQAEe39ujnd1o5yLipQR40cEkGAkLcVs6FiF2Oo4?=
 =?us-ascii?Q?drmnpIAznW8qGpeewfnYrsK98rVHjuZxnqTJAQfYfmDgX4ZJ+kMBN03vNCwv?=
 =?us-ascii?Q?OAl0uiqDBZGWiZQ4dvgqacrjCzcHxZQmNPZggVKwO1vpQO1CbFaS3eydWhYI?=
 =?us-ascii?Q?rqGcOlkm0nTi9TvgseZP6wOyTVokp08=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Z/d6KqZyzBEwCIYWqxnRuBcDUPh3qcxZelQA3o21rm+rLt3rKHDScyltWkuE8+ADAOMJrZQR99h6cZRld9w65qqH8yxFHeEgVwssd9mmLB7R+naHsxjb5dYyiSv4Jj6zQEIlI9e+ogDvJBlIfcEa7aEaX+3YtlK7A35JvfpB4CSe3COfCBRo8eax+XAbO1xXqnZhr9dVYxgJtgsBwMXWb9Bf0HRaPNC2tdgIOaKKgBBDDVvQNzek4i900JXLOY5TtmPToYEVWw+RDEdFILE+F2YBJW61X35iN3FGcWPvIN2zDWmFYCm+pQ3v4beoxXb4MXdAYnx/7AC353runC5BEw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b9d89b1-59b2-405d-3c73-08de864dd0b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 06:56:30.5334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D6Rz+3l+hBOMrk1E+tLNFN7Ln7jSymhNQBzupynuj88uszAhg/3tQhxmpt40cq9qTZEenZuFwB9t5J765di/UVPwUzrCdksn1WbJUx6ZIq4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7409
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773989796; x=1805525796;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ROKrcowA3mdiJ3HYsh5FnKGRsgae9SiNb0K00Sgbrp8=;
 b=RSn9s5SXUu3J5e1lNBlwRLdPxGTXg93/YygdbdSOKCDR2mbVxKOQYX40
 RtQvlrjsWsVrWEhpxmVvKyXKulI8JzC/myc3hnuwkGS5m5Qaj7q+LjIOE
 z+8fQeUSAJYGvLE7oc3bfbJPWXkaQlT5JTdD/dQ7Gp6uOgBRALn0WMIcv
 PIUx2DWqYVU/+aUxy3f45Ig8XbJBkROIwhGAVzcODp3LWtHscahkY77Ar
 2/KzBoySz4o2LP2grsGjVTSpJsSwiI/jUxaI+u0SnXHuiLP6PfnajMQ/D
 lyKwmsPsxxfvjLXM9JRgyAKKBCvDw8j0A84LZdttm0UMcCQzDcFYpae2S
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RSn9s5SX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] i40e: prepare for XDP
 metadata ops support
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[140.211.166.137:from];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,davemloft.net:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,lunn.ch:email,enjuk.jp:email]
X-Rspamd-Queue-Id: 2561D2D65FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kohei Enju
> Sent: Thursday, March 19, 2026 6:17 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei Enju
> <kohei@enjuk.jp>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/3] i40e: prepare for
> XDP metadata ops support
>=20
> Prepare 'struct i40e_xdp_buff' that contains an xdp_buff and a pointer
> to i40e_rx_desc in order to pass the RX descriptor to the XDP kfuncs.
> Also in ZC path, use XSK_CHECK_PRIV_TYPE() to ensure i40e_xdp_buff
> doesn't exceed the offset of cb in xdp_buff_xsk.
>=20
> No functional changes.
>=20
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c |  2 +-
> drivers/net/ethernet/intel/i40e/i40e_txrx.c |  5 ++++-
> drivers/net/ethernet/intel/i40e/i40e_txrx.h |  7 ++++++-
> drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 12 ++++++++++++
>  4 files changed, 23 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 31a42ee18aa0..7966d9cb8009 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -3619,7 +3619,7 @@ static int i40e_configure_rx_ring(struct
> i40e_ring *ring)
>  	}
>=20
>  skip:
> -	xdp_init_buff(&ring->xdp, xdp_frame_sz, &ring->xdp_rxq);
> +	xdp_init_buff(&ring->xdp_ctx.xdp, xdp_frame_sz, &ring-
> >xdp_rxq);
>=20
>  	rx_ctx.dbuff =3D DIV_ROUND_UP(ring->rx_buf_len,
>  				    BIT_ULL(I40E_RXQ_CTX_DBUFF_SHIFT));
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index 4ffdb007c41a..cfaf724ee7ff 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -2438,10 +2438,11 @@ static int i40e_clean_rx_irq(struct i40e_ring
> *rx_ring, int budget,
>  			     unsigned int *rx_cleaned)
>  {
>  	unsigned int total_rx_bytes =3D 0, total_rx_packets =3D 0;

...

>  		xdp_res =3D i40e_run_xdp_zc(rx_ring, first, xdp_prog);
>  		i40e_handle_xdp_result_zc(rx_ring, first, rx_desc,
> &rx_packets,
>  					  &rx_bytes, xdp_res, &failure);
> --
> 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

