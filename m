Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLI/Go893mn6pgkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 15:13:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB253FA5DE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 15:13:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EB3A42A37;
	Tue, 14 Apr 2026 13:13:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EFjNcX1_PQIg; Tue, 14 Apr 2026 13:13:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9474E42A31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776172428;
	bh=IfX0icAT092AH4DlTGCJL/H4mZoChtwrf3WCHu/Mqr4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ntalFhKFVGMkmDdmtHe/ATfk37X4vGozq5jt4rueQSZJmyoDN1yrkZ09Kq4PFH4Rd
	 qfY/pVeWjRz3clnzmHQdUB8/bj1iVncQnetzDCRPSTLilHOOM1WQB3+2v50yITvWRG
	 kJLjqt8CfkZ64ejK8ibhRIl2nq0+w7kubpV0klB0aTotmM7ArTeEY10k9vUEhCPb5B
	 Mm1DChh4dO1USNYYS287fzjKzjUByPGVmNbNMC32C+xFbeV4sHv7uWdXLo5aBh6LZ/
	 BiMunXaC79KSFLWNmO2/h4Iti05rIXTvcpbcqYplUoliePE54So5j78FWvVz/HYa4P
	 B6hq5R83XX/lg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9474E42A31;
	Tue, 14 Apr 2026 13:13:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D228B237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 13:13:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B807942A1B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 13:13:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sf4orR4Xfv2Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 13:13:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=patryk.holda@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B41EB42A1A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B41EB42A1A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B41EB42A1A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 13:13:45 +0000 (UTC)
X-CSE-ConnectionGUID: zPT7Ssw8Tva+tDV7zx1qEw==
X-CSE-MsgGUID: pcqDxejeRYyYBdMJyFDufg==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="99773501"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="99773501"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 06:13:45 -0700
X-CSE-ConnectionGUID: Vr1AJjqmTs2jfKxGbGRv4A==
X-CSE-MsgGUID: Lc+UhfGuSBKyLcUnvINc0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="229066135"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 06:13:45 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 06:13:44 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 06:13:44 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.20) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 06:13:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cGzZGalR/aXA50p9ye8lzP9jl+Weo7oEWSOvB8hw850RZCKPnO6pwzTFVq3fG4EUa21LWTtpkrUUSekNUQAs2lXKk7tqwxiuDqy3jPJN4jChlODW/9zKUksIOVfDlR4xbPsvBRTiv4mT3NrNCnQ09PZkjuIy1pAt7IaLKlU9+c2JiQwWkdmXllDzqP5H/U45oe1PIg5SXMDPYhMaZrs9hCjeKlnrme0lvCfBl9voRADteh2+nmVH0/uni05JacKajNNhhWmQzdupQOAy2vwkO2LQULUKc7MrEXL9X1v0heR7GcvibZCHYdAQ3tOKa0MsgA9AN1jaWRtZtrf8lJqPOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IfX0icAT092AH4DlTGCJL/H4mZoChtwrf3WCHu/Mqr4=;
 b=cCr3ren3UF/U9t6+SCxawtUCPhXLBq4VmRDxsQb5EQjYH8CUpVwiQE/OpTqaFxywW1ytk+CnPjMMqJQoGq4ESeU80SKsXYtH0JkoTukRfZ3o+Dap1S5jWI2Yqo0BrZZbXEsEWLbp1YdxEPtTgJTtDqk8GPY9r2a0EbCn8MhLQfuZsLS18Eq3E6fDUIxlsurgPzj+UqdhJxKZXAWEsnolvg5RYsEee7nBWb/HpbdqsBDf504a3eqHs0K+MEH895G5clKEZoozpVBqsNQC3WZgtFetY8LJABluis0U25+mFJ62/GGPXQqUAsl8J8l4OQLPm0QEKQpKZMK8FuqdO1av3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9301.namprd11.prod.outlook.com (2603:10b6:208:573::20)
 by CH3PR11MB8518.namprd11.prod.outlook.com (2603:10b6:610:1b8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Tue, 14 Apr
 2026 13:13:38 +0000
Received: from IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c]) by IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c%5]) with mapi id 15.20.9745.019; Tue, 14 Apr 2026
 13:13:38 +0000
From: "Holda, Patryk" <patryk.holda@intel.com>
To: Simon Horman <horms@kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Szycik, Marcin" <marcin.szycik@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: call netif_keep_dst()
 once when entering switchdev mode
Thread-Index: AQHcvbqNqcRUSRUYcUquOCYQhm72UbXNUvKAgBFSjTA=
Date: Tue, 14 Apr 2026 13:13:38 +0000
Message-ID: <IA3PR11MB9301C91B4CD912760ED9FCEB8A252@IA3PR11MB9301.namprd11.prod.outlook.com>
References: <20260327072236.129802-1-aleksandr.loktionov@intel.com>
 <20260327072236.129802-5-aleksandr.loktionov@intel.com>
 <20260403124133.GA94926@horms.kernel.org>
In-Reply-To: <20260403124133.GA94926@horms.kernel.org>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9301:EE_|CH3PR11MB8518:EE_
x-ms-office365-filtering-correlation-id: 2cdfcaf4-3b62-4d2a-d7d4-08de9a27a432
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: /Jp5VYmeJsX98clRd7mWF3768PZuHvjjod2LBa+AzOJo3wLaffp2FujFsPVuI7Vvyut/CgJPaCiTqvsgyPXGaq9X86U4CYGo4fMygusb+XFlCXwcAfBuCrJ862duVgUNU3BIJA9MHjrndCl+dViyKGKUdxC0HGu15uvuU2IFyS+qOMtYAiq2j8hhDaOcPpMEoWpPbJ4YJebZZhhnQV73+YIXUX9+waHS4icWtHGyUgS0v/XUuan83gikYZuiSLV5MaSroSxwdcL1zPzxDCjpyGvU1eKp/cBLbulPuPyUwq5TB3/nWnb7zUm8VbZNaTK06rkUII92H8fblHInDr7rkxL3O0uctLAhRaJh7J5eYE0aXOnz9utAbyVJgAOtpTJhPs1fC2C01Ovkxr62CUxkUYQAFhSwMdkl0kthqZaJX1EhAkwBfrwWktl4VEElwT7a+O1tnnw+rRRfQ6tdFAzh4bYcNVYI+KLx4FXzKPiEyXknOh6aQ00Mm3Z8PhzpVlJblhMKfm4OPZbPfwHKsV5GjnCb3WK6a7lZ+a+p8cG9vo6jpef9Gmutd05w0gFAcmzjvIFFUjHMtEt1xf2fVvtUPRzMzzCtBOZqWwVUhIxTNfCiR+4PDvKxVHJv4W0ntAEfPMq7woDd7AOpjJzDBbJuUbTgEFdpwLIzCMMdt3/dmHpt0/bhJA2kS2nSFtCdTwGTiFRj4ihxapQeFQR3jOKFXchWyn2BsOOPlmEU6SdV8KgTTXrJLbNyoAUbVf/q2WlWusKkKYqQ9ePA+Lc6YgHFjuivaEqNridq9Na56Xj8eSQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9301.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?3phn/JsvUxIiD5IHLrnLxq2PPLQ1TJa3SW+EYw3zd1xZjoFMVGL+pE7KY8?=
 =?iso-8859-1?Q?QZyd42Bn8+Kxl084o/2KQQtx0Djv78vzEihVi/ityF2+W3bQ0mADVCki70?=
 =?iso-8859-1?Q?MRz1deOLM3nwcvQDy4pSD9ONSy8xlHwhOcmxAMMsig8/XAcUv8EBqCEtFz?=
 =?iso-8859-1?Q?yp5/oi1yzGE9VQILZqusIu+tlAfRt+2gf7mdvBqncNOPmwZRPkFe0SPID6?=
 =?iso-8859-1?Q?YaN5sw76P6JxVRjSUq6g+fQCasghlot7Z28om0X3H9KjpPZsxNlxRlCKih?=
 =?iso-8859-1?Q?lDT2zj2XiX6UroE6h4CgorhDcM0MR9P+sX7Z81B1IhrxSPa/LbnZUi5nVh?=
 =?iso-8859-1?Q?Ve2InfkGOGE3wHLQOK+VaCNc270PgyXw9gJUloH7rJ/xwwtXkP7bvAumOu?=
 =?iso-8859-1?Q?IgT+ILV3l/sFPcpvcAvnewoKtx5duOJGGmwODB3LIy9QNwt45cRuq+ySgl?=
 =?iso-8859-1?Q?5LnWz6oAR1bkppDETIKVS7m7j+a+8mWyLSzNBwiUMMRLiI4WQwhQFe/1gA?=
 =?iso-8859-1?Q?NeQwVgojCETTUXfw/3ssuy3b+lnmDHD2jhsp2lTI/k/m8F1XK25dR2Jd5n?=
 =?iso-8859-1?Q?aQLD7hnXFxjnpgwQHi1qwE9fOIuLLfT1hpRlTHz3sXXOiC9ZObm/xeK+5A?=
 =?iso-8859-1?Q?VlvkbXH28zFmv8rYUjWUAYhzuZBJRwGNLXFTJXe2hkec6ywFkTMQZAjWuR?=
 =?iso-8859-1?Q?GipThQBuCO8bHu+O7A54fNlxsoQ8WQIZy+cOnrZEDkmZSSxXJEmq9rCeiU?=
 =?iso-8859-1?Q?B0Yd98Xh+pp2W4QHxvHhaAEaF5gNh04FU9+WCbaLkP6/WUaSkmF7o9oS66?=
 =?iso-8859-1?Q?WdwqCfNCTZN4IkOBcayfm5K3jWZq2zcanVr8DyYmxpiRkinckyH4b/OiSb?=
 =?iso-8859-1?Q?RAjS9oo/ttdtVDrm4XSOasnqoeMrBoCL2Re0RBk6GUcdUIJVIukYLQfg+Y?=
 =?iso-8859-1?Q?bhttRv9Lj68kxzAVYgjM/ea1O7x40e5WvHfGc17z/M6ep1q5Q9u2NvHPXc?=
 =?iso-8859-1?Q?0kbjBhVZLqogDJLv/hJNFi/6raAYhFLUDDkhcpnyEaSWXzbpUliRlXxmDy?=
 =?iso-8859-1?Q?Ad1h9D31rPbMzPv3Wy9mUrAZM+HgBM5NpHbtOGV2GpP+fBO2k5twmPdixJ?=
 =?iso-8859-1?Q?15tPQMxAz+zGpzX5uttWlNo39bgl1DZjirVpkBUjBtF/7Di+WHuzKeWMGD?=
 =?iso-8859-1?Q?Ge8myiWhI3++gmj6anEoCCLlode4b4ExmuA/gvhv1kDWYYEdyEAoEn2Fhc?=
 =?iso-8859-1?Q?HQ13bYBT79xzfVJR+s8lCuHJqJ+/OKPg/+rCy2yCGFC4mVRlclPtu2dd+a?=
 =?iso-8859-1?Q?zuOmBrWmczOQKA/n+NLP07AsKnNm49mr1Ii68jXRks4wjQdQbZq33sKs6Z?=
 =?iso-8859-1?Q?u0NFM4GEP6GRxvRkQAiIt+QYZUEUWemLGByFA4Wx9dTF6059bBt6C5q+Iz?=
 =?iso-8859-1?Q?D/8n5W5bjps1ks8Qbg0ldVUirqBEUQvkT9kO4E350CJXJOd4PC6BAehS8X?=
 =?iso-8859-1?Q?6zJPMPp8LlhNepoiiUcqyi9WBITVxymjYxXekIAvUfXjVeCLKceMEFqHLg?=
 =?iso-8859-1?Q?UXV2c7kl0BHlpS7fPaf+7LAUjdLAVZfGDmqzo/14gruaevfrDTIXnAwvjb?=
 =?iso-8859-1?Q?VrPr4R18B4D686oftc7ediqeR4r+XlHkwWnknsC6pIFVir3zaAfBguEsVO?=
 =?iso-8859-1?Q?PL3yAV5GhcxsY9h7dBCLfBIQL3MHQPhGa2F+MUEix4oEiyA6PxNqKC1zlA?=
 =?iso-8859-1?Q?ZRQLecyhHmIQuPMppppiSjSUdWoRGSV5eCAi9mxjtdvhRBR7Q3oKZv3Cvt?=
 =?iso-8859-1?Q?sUIuoxswtg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: V8DyuZ5+zs99ACR01IUZ95La/gKETkX9WLUTut1VI9/3KzMy/KmnJlrrLCy9MqCtbxfjGxz05MEAKKCj0YTADuFUJxcAT2GdgGRfKFcAlK+a3NRVRrNdmTwvhrPYGSB66l3nk9O8fQLaH/coCUEzS93ojYh2Ry5POrvWP/nkYepHshz1mkCMOB7ac9JjVp8tzBEh1T67x/geDexLI0uXGQtSUQFjFeqzP5mYd6v2JdG1b50uaBliEYGgI7TW0OwCsTlg9NO9ZUAxKY7yVZHn5vjPAb+medTpnKXTibNvRA6WWpHfnE7WZ8OlGvpevA8c1uAPkrMdWMNwDniJhYXWXg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cdfcaf4-3b62-4d2a-d7d4-08de9a27a432
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2026 13:13:38.2242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fSwVq2IAjKJk00z2f9LcfbxWC0RZGNTYpxECm98/qtqHhvK3rqb4+eKboiaNehK8ktgRDp1LzRwT4S0uOD+0Pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8518
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776172425; x=1807708425;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7TVaupzM0hcPhZjjsE6KXyVQ8XZUttE1Nv4dVWLrGzc=;
 b=chZmNnlkT3O8fbf1cn2GJnjLSIMAtVvR8ZfuUAXYmYuf1RRNkVbo1Mus
 kCB/cRTwBqICLrngF1UXhpDO7Fyo4EOtnsrL+BvtMoTYTA20p940wy3rc
 ez1NRhQhf46rwtxYiQKdxpSkKlu+Zrm5co+N6kBiMcySb7TBmf8c6vWO7
 8Bt4hE2kzy1hCxrEZP6ulpPTuEoLIhxDXMtqJ0UDlATlhLUdLi2SUbvVh
 LcgRX5Ao1+T7Zqvl3Y99ypjoG//6vfaKbR4VFuRUFLmEp5PfIWUJhn0pa
 PUhkBMGs2eFBbGR1OmF129sxsgb7eNIoUl9WoHPcn4movHi68S3cx3sQy
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=chZmNnlk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: call netif_keep_dst()
 once when entering switchdev mode
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:marcin.szycik@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email,IA3PR11MB9301.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: AAB253FA5DE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Friday, April 3, 2026 2:42 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Szycik, Marcin
> <marcin.szycik@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: call netif_keep_dst(=
) once
> when entering switchdev mode
>=20
> On Fri, Mar 27, 2026 at 08:22:36AM +0100, Aleksandr Loktionov wrote:
> > From: Marcin Szycik <marcin.szycik@intel.com>
> >
> > netif_keep_dst() only needs to be called once for the uplink VSI, not
> > once for each port representor.  Move it from ice_eswitch_setup_repr()
> > to ice_eswitch_enable_switchdev().
> >
> > Fixes: defd52455aee ("ice: do Tx through PF netdev in slow-path")
>=20
> This problem seems to predate the cited commit.
>=20
> > Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Tested-by: Patryk Holda <patryk.holda@intel.com>=A0


