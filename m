Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PEdOkyr12kMRQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 15:36:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6463CB53D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 15:36:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D829B60FCE;
	Thu,  9 Apr 2026 13:36:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sp9hVNNgpL3J; Thu,  9 Apr 2026 13:36:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8DCB60FF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775741768;
	bh=y8hJ1WNmKubFUT634AASGA9+DUD5tNWkY5OswynQk8o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OmnqKKc/ZY4y74jeTKHbB3vJyeWbgt3Epb7FGScreR5SKI5ylqYEk51uM9lNwxkKG
	 HvuCrUjtbu6Ov64PALR3V7FhkCf4nr7XkPVys2UI/ys/V5xyShiltG5Fto8V0eIlkJ
	 C9wcvWcRRrv17IGDRFYay0wSjFk34wwuBsY1QkmS5ZZvg36wv3605Lry8u5X9kOTbN
	 If9E5neZtl+vL+wMpYXMEQRcDd2HvxjTX5sMvoRvE5EUPVba4jmSELC5T6HgteS8Gv
	 gESaVdvzNM8m+5B+kiL3lJ7S4TC8pXG8zbxnmNqu1wwLYp/5yc4VWOfjTNYdfpXHI+
	 sMxobcI0hsCVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8DCB60FF4;
	Thu,  9 Apr 2026 13:36:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5273D1F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 13:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3799660FB7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 13:36:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uHa2BTnznSzT for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 13:36:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6A55F6069C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A55F6069C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A55F6069C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 13:36:04 +0000 (UTC)
X-CSE-ConnectionGUID: 4t9HGOmBQ5CHmFhRu7SjkA==
X-CSE-MsgGUID: MCuXgI5bR72g/ExqAy0/5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="99373247"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="99373247"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 06:36:04 -0700
X-CSE-ConnectionGUID: zMxgCwGwS8mpoEVR1Q3crw==
X-CSE-MsgGUID: fX3bIL2mRVKtjolkRukEtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="225616227"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 06:36:04 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 06:36:03 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 06:36:03 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.61) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 06:36:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Md12czbaWAe/c+tL70O2SkgzkUA1FRA2kh7eEXtRLbjwj0QAdNApmIraJJBnEagzTMOiZvOQoXwDUf8sDejII55cOaSZ7rrm8SntIQ1dRiWGrlyvEesa5/K9UHp/hHQEhpd1pbHris7B125VWb5l7lNO8GmxuXHLCBZ6KwUzvHjum+y+ROm07WbU0S954LBOmREvKHG5MfYugucLUA+gfjeWRP9X2zZfgdftSgUf5+053Mh+cWozd3EnFpjD+MU2OJTTPD5gkjlRLqV2fjAl4cQQv06br4OTfiy2gWSJlLBGAlm32ls68FL2eZTAj/5O86uRGYfwHCIryWFf0T72vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y8hJ1WNmKubFUT634AASGA9+DUD5tNWkY5OswynQk8o=;
 b=MmjSq/nsPZJjRW/FNzELl/JF5V2JroJB8WLmvsrI12vz2jMKVChpYFQuOMNbdU6DekIQe17L5Edc807fbJqrF3p6pqFc2vXGsFmjhz9Fjlwx8W6S+Drc41tyCwzzzHdjxcLBJZ6ovI/2fOFC4mCcJQiglT1aYZBJWfT+yLEoGSEw4CP3u7+qtuSfTBuwQUbeIotm/hTFy/4KsF07cjG1FXm2NY4cWtJIiKDzKc5cVqJqce7yE9mITu0ovNeKKFG5L5f2UFpb4bJi1rgE7ZjfkydZr0Nr6RPXwGhtDHTlh1yCTFj/R+Dw3JJWNNM7uPZRYGdm6S9tUmGPp2FroO3dFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA3PR11MB9184.namprd11.prod.outlook.com (2603:10b6:208:570::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Thu, 9 Apr
 2026 13:36:00 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Thu, 9 Apr 2026
 13:35:59 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Penigalapati, Sandeep"
 <sandeep.penigalapati@intel.com>, "S, Ananth" <ananth.s@intel.com>,
 "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>, "Cao, Chinh T"
 <chinh.t.cao@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 08/10] ice: program ACL
 entry
Thread-Index: AQHcyCD95yn8KG9keU2R+fED82p+TrXWuk2g
Date: Thu, 9 Apr 2026 13:35:59 +0000
Message-ID: <IA3PR11MB898666B7AB0330B3C29DC630E5582@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260409120003.2719-1-marcin.szycik@linux.intel.com>
 <20260409120003.2719-9-marcin.szycik@linux.intel.com>
In-Reply-To: <20260409120003.2719-9-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA3PR11MB9184:EE_
x-ms-office365-filtering-correlation-id: 69b94d52-9118-4c8c-fa73-08de963cefd8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: K/XjLFNsjpmNJAEwSKdEH9483D+/1rV+e24kZrmy/07UwK4hijl7phdYjhqGDanEaUS2FcQ7Du7oRXKHF84oZ7vqmO5e/lf2/EtpLzsQ8wk/uVkoKOjgyxfrn7cg25W24CbkaZXTLINWm29TZOZpy53veiiMgzNlIsITolFJKP7H7bQrbyDTbTATOgaI8ZwEFx3kuEtLAYA3YSZvtCDNRSAx8GzkquY0u7jdOUrzgwDQ1QL25oPhHrK4rCx41FeY8rDdCzxGqTY7OwmehkkxVtcl4kAUXU1DBm/V7sVkzjJGHesjw01LBARwpTlvGvKTyR8+vGWAI6fUDY/jlX60qbNAoqoLDfuGilueT3CA26xsUSbs1So0fQNdgXTwKykOlR+G5qnWXVR1UN8iJ+AnXfnt5ryCOoB1ACt6mIzck9wcbL2FHPFefZPq+aw6YaPR40wsFNBqulGHQ2J5f0//JGkRms/Rnm10DNtOZ2513A+NA5k+mn9nZEf4yslpVruagVnb8Np7AzEoP5Y+F8W7jQDVoNY/vdHunV5jD9xvA4o6g9cGSAv3d82LROOTRkkOdp3ORpb6xD0bbxWuFRpvL5S4WvyhLpVu+BwCawzsRL+T6M6npat3P4Rf3xBTD/IsUNYSc7AG/Iyw1uJT33r4y+z4LuV0c+JqBIVyG29L+Is6PZ5arKEmWXg1D+pnoIaOMnat3u83m9PNzBFihJiOxzI0rgjrJH6r9F1UEY6opfqCN7Jf6cP1BcXBuuv1lLbe9+TdoyWrDhlm9UCrPFLjQGc8dkGoL6lbdU+kfeMUil4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Pf9ny4zouKdRsS7dMf5ha4vdzvNMzDLh21xGTzJSHsELcn4qXI5c0mC9WIqz?=
 =?us-ascii?Q?a5tIgOe7Ac9ggxVhq3IscqA477vAkyyf3H9ILGSQ+EWyUUzbEBZNhyMFummG?=
 =?us-ascii?Q?WhZrc7iuDPRgBf2qHnbe2E4KW/YD16zGH6gnCAklGewA3nCox2Nd5c2VVQjY?=
 =?us-ascii?Q?KQ2fEwOalfo5nlPsgwAk7Kx9WjOi5WUv0ijY4V35m13lh021y9Ahs4l0pgm+?=
 =?us-ascii?Q?5o5D0SSQ5mviQZArcGg/KI93+aCaSur+Kq6O0J6LCPNS2vpBSXwMSDDpv+hN?=
 =?us-ascii?Q?mS7Yr/JbZCJPWKomiZUkJzttLX1K80+lLGlzcsN6aiSyvvyzAznZCULd5Br1?=
 =?us-ascii?Q?PyM00g9Ypx5+/glkUDc3lAoArufK29HMgQ9GeMkimJ3azoek6Wwlqp7SfdAi?=
 =?us-ascii?Q?E+VelPQdcB+wjN+gyB61yKpTndfQIZTwmZNHBrbtSNXP3UjQo7oCuKWmhEur?=
 =?us-ascii?Q?GiLnvC1Zew/RODsxJN1RPjUB65/xpjVglel5Q3UpZx0co2FeFhqHB4WI+eeI?=
 =?us-ascii?Q?cF6fGqHlEy1bhXgexfn5bwVAGxkRGto6SlruD1FCHq3eOn8BDLC2JuYDqu0O?=
 =?us-ascii?Q?dQX2ZuPoFi0GGNnOoqiCMZVS162bJAxCztPV7SNUiTOGGdLHWTBQUXrDPAo2?=
 =?us-ascii?Q?NODSqahu3gntEXCnDs0tLCgj/7qhOs9zMdXIUPJQLM/sBpuZecobbYFc7h7t?=
 =?us-ascii?Q?MsrjCbjub3B++d5mNTDvgOkUlBzF+pg5zuqFDn5Nxr01qxL8L9A8jOO+wqhq?=
 =?us-ascii?Q?LhV3Hx9T27T/3dDyQNFcVzc11d0s0oCYOMZ2YvFQmG8mrFC2aNk3XeUAXbnP?=
 =?us-ascii?Q?kr5HZ4TE0wkQmHrJQZ5V94NSO8495hnspIb2Fc5OE/inUGxTneaiP02AaifB?=
 =?us-ascii?Q?a8KlqHQ8L7c6ic0d7i2dGrX7qd7wTj9leE9aFJuQNP6IsM3yOmRH9LxPjjW/?=
 =?us-ascii?Q?H3P8KQPR8sQtWe1T8n+3ojFsFa8sQMBDKAcuKudUq5krDf0SEyM6R1TTt4fw?=
 =?us-ascii?Q?KaHkIyY/ItOKHZggABNNAA0mPn1JYJeOKEjwNpnwRtCBRsB8+5F3Qvzj92vp?=
 =?us-ascii?Q?NlJQAgf7HL/uc4WtUwBfylYNcZjsOXyr0xBdUaeHi21DRtuMNxom2pMRv8uQ?=
 =?us-ascii?Q?sYQNVQc8VFHeT29McU95+YJofyAlZ96Em/RUC825Anykm2OpB1cFyrCWt3Sg?=
 =?us-ascii?Q?Rsitc/6XV6bdxYf5OUpgpVR5MM1mPJ7ynGh3RGQGp+3lDLcVNkGm2KrE25M8?=
 =?us-ascii?Q?5jLIpn1vcP/8s2Oghz5cZ6b6yawJg66kIIFOPPj5cv0iXBeqxedQlSCzhuND?=
 =?us-ascii?Q?5o7mXv+TiXzqU01c9DZg3p2aiiUU08cQ4EI8uRhEqfbvKiKR/mZd4C8VO9Vv?=
 =?us-ascii?Q?NJTOYh0YzQh5grS60x15Pb/AgsFk56jjIsblOguKnKAkHNO4/9Xe8GKjfvrj?=
 =?us-ascii?Q?jXx2OZqjE2uAD6FmIuA5F7g+NN8oOplDVpxM0MxVuxklj9/fDHnNkN6h1a4H?=
 =?us-ascii?Q?AI6WgCylOv28T2q+vE1VtMuG5s32ENoq2GiS7fjxyjDDc5lLSKNfYdJ8M4FO?=
 =?us-ascii?Q?ecfWHLR3XvBbRhqnzJ8W5krjYz3iDEiofiiDguUXDFk5OziQihN12D1pgRXq?=
 =?us-ascii?Q?kSqIBbkRPZzYY4Jyyd8YWIrhYptXQ43f/V5FBQmZ1bUygzOv99Pfyql8MtYd?=
 =?us-ascii?Q?9jBbxu8Vcvgu8hp/lG+tPmu1BcogH8WZl3sqtS5RmTmP95dhphTRvQJxSUr8?=
 =?us-ascii?Q?qZ1mBOIATqyJvV80DAycOnQrTQ0fnY0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bVu+yCphImgwHn6rKKCONUOEZGq0xaMUitkyInvMtT98tprAOvaSMxpZTjoFu6IXphcCM1myVWERdcaKPlu5TKlcCZ9XTIZi6kHrb1G2u9eUatgNMBdqZg/0xiHlM3JRnQcRAVB00tA33cQOrRgNjECajza3WcQTtTUbParnWNx1XHwulsCB/6oD7hLgMEKNBMA+yAzxMYaGUYolP+qJgWtHG/DAFKoVzSJAMD6lXJs6xeXFkIO1NUOrHhX1HIhJj2MIJv6zRkkcheXiZdjfl8UtGADAHQBu1/Ve0RxRmuctQtHN2DODzt5ePLrTfCL1oRTaO3+Rk1nr8F19HMpp5A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69b94d52-9118-4c8c-fa73-08de963cefd8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2026 13:35:59.9313 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3eotatjdgZbMCf4oecPUUQm2YhWxfxfX6k87an+4XfPZ3zgenatgzLRircpZtmdOhRG/FsOAMFoRa+sIA7MqZrO5FSRUU2xWSpQdgP9QExU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9184
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775741766; x=1807277766;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VkZcj+BqyQKuVznzfGTPv3HIaIDFqIEkreF48vv+NnE=;
 b=jmkT+RNXfV7pq1wTd0UsKhwl6J2VmwlEhQg6oTV/U58li8oPup7trcrl
 6QRSO2w7VvBXVOAOlP1kfnofStKbLOsCVvEjVRuOOu3q9sOTsE4y8pJi4
 9Jtrde+lSMt0XIkRIa8IEANDrFIi6OKf8q0qhdQW8jhCyOmy5iSgEJRQ9
 Ep6MfaJw8GqubEooxN49ExdDD/ufPzEOn7HO5fbQIGsmKVa2NZX37aRnX
 mbIsPPmOfTmJnB5oC56VB75CVplz1ipEkzasTXhuCoJWPMckVtUb1Q4Fz
 eEYJNrGNGcPH+ajr69vYgF4xGckZI+SY2zvDJ+Wf1bmlkPDN9sSLdnfhh
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jmkT+RNX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 08/10] ice: program ACL
 entry
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:sandeep.penigalapati@intel.com,m:ananth.s@intel.com,m:alexander.duyck@gmail.com,m:chinh.t.cao@intel.com,m:anthony.l.nguyen@intel.com,m:alexanderduyck@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: BE6463CB53D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Marcin Szycik
> Sent: Thursday, April 9, 2026 2:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Penigalapati, Sandeep
> <sandeep.penigalapati@intel.com>; S, Ananth <ananth.s@intel.com>;
> alexander.duyck@gmail.com; Marcin Szycik
> <marcin.szycik@linux.intel.com>; Cao, Chinh T <chinh.t.cao@intel.com>;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 08/10] ice: program ACL
> entry
>=20
> From: Real Valiquette <real.valiquette@intel.com>
>=20
> Complete the filter programming process; set the flow entry and action
> into the scenario and write it to hardware. Configure the VSI for ACL
> filters.
>=20
> Co-developed-by: Chinh Cao <chinh.t.cao@intel.com>
> Signed-off-by: Chinh Cao <chinh.t.cao@intel.com>
> Signed-off-by: Real Valiquette <real.valiquette@intel.com>
> Co-developed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v2:
> * Use plain alloc instead of devm_ for ice_flow_entry::acts
> * Use FIELD_PREP_CONST() for ICE_ACL_RX_*_MISS_CNTR
> * Fix wrong struct ice_acl_act_entry alloc count in
>   ice_flow_acl_add_scen_entry_sync() - was e->entry_sz, which is an
>   unrelated value
> * Only set acts_cnt after successful allocation in
>   ice_flow_acl_add_scen_entry_sync()
> * Return -EINVAL instead of -ENOSPC on wrong index in
>   ice_acl_scen_free_entry_idx()
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   2 +
>  drivers/net/ethernet/intel/ice/ice_acl.h      |  21 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_flow.h     |   3 +
>  drivers/net/ethernet/intel/ice/ice_acl.c      |  53 ++-
>  drivers/net/ethernet/intel/ice/ice_acl_ctrl.c | 251 +++++++++++
>  drivers/net/ethernet/intel/ice/ice_acl_main.c |   4 +
>  .../ethernet/intel/ice/ice_ethtool_ntuple.c   |  48 ++-
>  drivers/net/ethernet/intel/ice/ice_flow.c     | 395
> ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  10 +-
>  10 files changed, 782 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index 9e6643931022..f9a43daf04fe 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -1061,6 +1061,8 @@ void ice_aq_prep_for_event(struct ice_pf *pf,
> struct ice_aq_task *task,
>  			   u16 opcode);
>  int ice_aq_wait_for_event(struct ice_pf *pf, struct ice_aq_task
> *task,
>  			  unsigned long timeout);
> +int ice_ntuple_update_list_entry(struct ice_pf *pf,
> +				 struct ice_ntuple_fltr *input, int
> fltr_idx);
>  int ice_open(struct net_device *netdev);  int
> ice_open_internal(struct net_device *netdev);  int ice_stop(struct
> net_device *netdev); diff --git
> a/drivers/net/ethernet/intel/ice/ice_acl.h
> b/drivers/net/ethernet/intel/ice/ice_acl.h
> index 3a4adcf368cf..0b5651401eb7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_acl.h
> +++ b/drivers/net/ethernet/intel/ice/ice_acl.h
> @@ -39,6 +39,7 @@ struct ice_acl_tbl {
>  	DECLARE_BITMAP(avail, ICE_AQC_ACL_ALLOC_UNITS);  };
>=20
> +#define ICE_MAX_ACL_TCAM_ENTRY (ICE_AQC_ACL_TCAM_DEPTH *
> +ICE_AQC_ACL_SLICES)
>  enum ice_acl_entry_prio {
>  	ICE_ACL_PRIO_LOW =3D 0,
>  	ICE_ACL_PRIO_NORMAL,
> @@ -65,6 +66,11 @@ struct ice_acl_scen {
>  	 * participate in this scenario
>  	 */
>  	DECLARE_BITMAP(act_mem_bitmap, ICE_AQC_MAX_ACTION_MEMORIES);

...

> +	/* Determine number of cascaded TCAMs */
> +	num_cscd =3D DIV_ROUND_UP(scen->width,
> ICE_AQC_ACL_KEY_WIDTH_BYTES);
> +
> +	entry_tcam =3D ICE_ACL_TBL_TCAM_IDX(scen->start);
> +	idx =3D ICE_ACL_TBL_TCAM_ENTRY_IDX(scen->start + *entry_idx);
> +
> +	for (u8 i =3D 0; i < num_cscd; i++) {
> +		/* If the key spans more than one TCAM in the case of
> cascaded
> +		 * TCAMs, the key and key inverts need to be properly
> split
> +		 * among TCAMs.E.g.bytes 0 - 4 go to an index in the
> first TCAM
"E.g.bytes" -> "E.g. bytes"

> +		 * and bytes 5 - 9 go to the same index in the next
> TCAM, etc.
> +		 * If the entry spans more than one TCAM in a cascaded
> TCAM
> +		 * mode, the programming of the entries in the TCAMs
> must be in
> +		 * reversed order - the TCAM entry of the rightmost TCAM
> should
> +		 * be programmed first; the TCAM entry of the leftmost
> TCAM
> +		 * should be programmed last.
> +		 */
> +		offset =3D num_cscd - i - 1;
> +		memcpy(&buf.entry_key.val,
> +		       &keys[offset * sizeof(buf.entry_key.val)],
> +		       sizeof(buf.entry_key.val));
> +		memcpy(&buf.entry_key_invert.val,
> +		       &inverts[offset *
> sizeof(buf.entry_key_invert.val)],
> +		       sizeof(buf.entry_key_invert.val));
> +		err =3D ice_aq_program_acl_entry(hw, entry_tcam + offset,
> idx,
> +					       &buf, NULL);
> +		if (err) {
> +			ice_debug(hw, ICE_DBG_ACL, "aq program acl entry
> failed status: %d\n",
> +				  err);
> +			goto out;
> +		}
> +	}
> +
> +	err =3D ice_acl_prog_act(hw, scen, acts, acts_cnt, *entry_idx);
> +
> +out:
> +	if (err) {
> +		ice_acl_rem_entry(hw, scen, *entry_idx);
> +		*entry_idx =3D 0;
> +	}
> +
> +	return err;
> +}
> +
> +/**
> + * ice_acl_prog_act - Program a scenario's action memory
> + * @hw: pointer to the HW struct
> + * @scen: scenario to add the entry to
> + * @acts: pointer to a buffer containing formatted actions
> + * @acts_cnt: indicates the number of actions stored in "acts"
> + * @entry_idx: scenario relative index of the added flow entry
> + *
> + * Return: 0 on success, negative on error  */ int
> +ice_acl_prog_act(struct ice_hw *hw, struct ice_acl_scen *scen,
> +		     struct ice_acl_act_entry *acts, u8 acts_cnt, u16
> entry_idx) {
> +	u8 entry_tcam, num_cscd, i, actx_idx =3D 0;
> +	struct ice_aqc_actpair act_buf =3D {};
> +	int err =3D 0;
> +	u16 idx;
> +
> +	if (entry_idx >=3D scen->num_entry)
> +		return -ENOSPC;
> +
> +	/* Determine number of cascaded TCAMs */
> +	num_cscd =3D DIV_ROUND_UP(scen->width,
> ICE_AQC_ACL_KEY_WIDTH_BYTES);
> +
> +	entry_tcam =3D ICE_ACL_TBL_TCAM_IDX(scen->start);
> +	idx =3D ICE_ACL_TBL_TCAM_ENTRY_IDX(scen->start + entry_idx);
> +
> +	for_each_set_bit(i, scen->act_mem_bitmap,
> ICE_AQC_MAX_ACTION_MEMORIES) {
> +		struct ice_acl_act_mem *mem =3D &hw->acl_tbl->act_mems[i];
> +
> +		if (actx_idx >=3D acts_cnt)
> +			break;
> +		if (mem->member_of_tcam >=3D entry_tcam &&
> +		    mem->member_of_tcam < entry_tcam + num_cscd) {
> +			memcpy(&act_buf.act[0], &acts[actx_idx],
> +			       sizeof(struct ice_acl_act_entry));
> +
> +			if (++actx_idx < acts_cnt) {
> +				memcpy(&act_buf.act[1], &acts[actx_idx],
> +				       sizeof(struct ice_acl_act_entry));
> +			}
> +
> +			err =3D ice_aq_program_actpair(hw, i, idx,
> &act_buf,
> +						     NULL);
> +			if (err) {
> +				ice_debug(hw, ICE_DBG_ACL, "program actpair
> failed status: %d\n",
> +					  err);
> +				break;
> +			}
> +			actx_idx++;
> +		}
> +	}
> +
> +	if (!err && actx_idx < acts_cnt)
> +		err =3D -ENOSPC;
> +
> +	return err;
> +}
> +
> +/**
> + * ice_acl_rem_entry - Remove a flow entry from an ACL scenario
> + * @hw: pointer to the HW struct
> + * @scen: scenario to remove the entry from
> + * @entry_idx: the scenario-relative index of the flow entry being
> +removed
> + *
> + * Return: 0 on success, negative on error  */ int
> +ice_acl_rem_entry(struct ice_hw *hw, struct ice_acl_scen *scen,
> +		      u16 entry_idx)
> +{
> +	struct ice_aqc_actpair act_buf =3D {};
> +	struct ice_aqc_acl_data buf;
> +	u8 entry_tcam, num_cscd, i;
> +	int err =3D 0;
> +	u16 idx;
> +
> +	if (!scen)
> +		return -ENOENT;
> +
> +	if (entry_idx >=3D scen->num_entry)
> +		return -ENOSPC;
> +
> +	if (!test_bit(entry_idx, scen->entry_bitmap))
> +		return -ENOENT;
> +
> +	/* Determine number of cascaded TCAMs */
> +	num_cscd =3D DIV_ROUND_UP(scen->width,
> ICE_AQC_ACL_KEY_WIDTH_BYTES);
> +
> +	entry_tcam =3D ICE_ACL_TBL_TCAM_IDX(scen->start);
> +	idx =3D ICE_ACL_TBL_TCAM_ENTRY_IDX(scen->start + entry_idx);
> +
> +	/* invalidate the flow entry */
> +	memset(&buf, 0, sizeof(buf));
> +	for (i =3D 0; i < num_cscd; i++) {
> +		err =3D ice_aq_program_acl_entry(hw, entry_tcam + i, idx,
> &buf,
> +					       NULL);
> +		if (err)
> +			ice_debug(hw, ICE_DBG_ACL, "AQ program ACL entry
> failed status: %d\n",
> +				  err);
> +	}
> +
> +	for_each_set_bit(i, scen->act_mem_bitmap,
> ICE_AQC_MAX_ACTION_MEMORIES) {
> +		struct ice_acl_act_mem *mem =3D &hw->acl_tbl->act_mems[i];
> +
> +		if (mem->member_of_tcam >=3D entry_tcam &&
> +		    mem->member_of_tcam < entry_tcam + num_cscd) {
> +			/* Invalidate allocated action pairs */
> +			err =3D ice_aq_program_actpair(hw, i, idx,
> &act_buf,
> +						     NULL);
> +			if (err)
> +				ice_debug(hw, ICE_DBG_ACL, "program actpair
> failed status: %d\n",
> +					  err);
> +		}
> +	}
> +
> +	ice_acl_scen_free_entry_idx(scen, entry_idx);
> +
> +	return err;
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_acl_main.c
> b/drivers/net/ethernet/intel/ice/ice_acl_main.c
> index 53cca0526756..16228be574ed 100644
> --- a/drivers/net/ethernet/intel/ice/ice_acl_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_acl_main.c
> @@ -280,6 +280,10 @@ int ice_acl_add_rule_ethtool(struct ice_vsi *vsi,
> struct ethtool_rxnfc *cmd)
>  		hw_prof->entry_h[hw_prof->cnt++][0] =3D entry_h;
>  	}
>=20
> +	input->acl_fltr =3D true;
> +	/* input struct is added to the HW filter list */
> +	ice_ntuple_update_list_entry(pf, input, fsp->location);
> +
>  	return 0;
>=20
>  free_input:
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
> b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
> index 3e79c0bf40f4..21d4f4e3a1d0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
> @@ -1791,6 +1791,21 @@ void ice_vsi_manage_fdir(struct ice_vsi *vsi,
> bool ena)
>  	mutex_unlock(&hw->fdir_fltr_lock);
>  }
>=20
> +/**
> + * ice_del_acl_ethtool - delete an ACL rule entry
> + * @hw: pointer to HW instance
> + * @fltr: filter structure
> + *
> + * Return: 0 on success, negative on error  */ static int
> +ice_del_acl_ethtool(struct ice_hw *hw, struct ice_ntuple_fltr *fltr)
> {
> +	u64 entry;
> +
> +	entry =3D ice_flow_find_entry(hw, ICE_BLK_ACL, fltr->fltr_id);
> +	return ice_flow_rem_entry(hw, ICE_BLK_ACL, entry); }
> +
>  /**
>   * ice_fdir_do_rem_flow - delete flow and possibly add perfect flow
>   * @pf: PF structure
> @@ -1824,7 +1839,7 @@ ice_fdir_do_rem_flow(struct ice_pf *pf, enum
> ice_fltr_ptype flow_type)
>   *
>   * Return: 0 on success and negative on errors
>   */
> -static int
> +int
>  ice_ntuple_update_list_entry(struct ice_pf *pf, struct
> ice_ntuple_fltr *input,
>  			     int fltr_idx)
>  {
> @@ -1843,13 +1858,36 @@ ice_ntuple_update_list_entry(struct ice_pf
> *pf, struct ice_ntuple_fltr *input,
>=20
>  	old_fltr =3D ice_fdir_find_fltr_by_idx(hw, fltr_idx);
>  	if (old_fltr) {
> -		err =3D ice_fdir_write_all_fltr(pf, old_fltr, false);
> -		if (err)
> -			return err;
> +		if (old_fltr->acl_fltr) {
> +			/* ACL filter - if the input buffer is present
> +			 * then this is an update and we don't want to
> +			 * delete the filter from the HW. We've already
> +			 * written the change to the HW at this point, so
> +			 * just update the SW structures to make sure
> +			 * everything is hunky-dory. If no input then
> this
> +			 * is a delete so we should delete the filter
> from
> +			 * the HW and clean up our SW structures.
> +			 */
> +			if (!input) {
> +				err =3D ice_del_acl_ethtool(hw, old_fltr);
> +				if (err)
> +					return err;
> +			}
> +		} else {
> +			/* FD filter */
> +			err =3D ice_fdir_write_all_fltr(pf, old_fltr,
> false);
> +			if (err)
> +				return err;
> +		}
> +
>  		ice_fdir_update_cntrs(hw, old_fltr->flow_type, false,
> false);
>  		/* update sb-filters count, specific to ring->channel */
>  		ice_update_per_q_fltr(vsi, old_fltr->orig_q_index,
> false);
> -		if (!input && !hw->fdir_fltr_cnt[old_fltr->flow_type])
> +		/* Also delete the HW filter info if we have just
> deleted the
> +		 * last filter of flow_type.
> +		 */
> +		if (!old_fltr->acl_fltr && !input &&
> +		    !hw->fdir_fltr_cnt[old_fltr->flow_type])
>  			/* we just deleted the last filter of flow_type
> so we
>  			 * should also delete the HW filter info.
>  			 */
> diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c
> b/drivers/net/ethernet/intel/ice/ice_flow.c
> index dce6d2ffcb15..144d8326d4f9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flow.c
> +++ b/drivers/net/ethernet/intel/ice/ice_flow.c
> @@ -1744,6 +1744,16 @@ static int ice_flow_rem_entry_sync(struct
> ice_hw *hw, enum ice_block blk,
>  		return -EINVAL;
>=20
>  	if (blk =3D=3D ICE_BLK_ACL) {
> +		int err;
> +
> +		if (!entry->prof)
> +			return -EINVAL;
> +
> +		err =3D ice_acl_rem_entry(hw, entry->prof->cfg.scen,
> +					entry->scen_entry_idx);
> +		if (err)
> +			return err;
> +
>  		if (entry->acts_cnt && entry->acts)
>  			ice_flow_acl_free_act_cntr(hw, entry->acts,
>  						   entry->acts_cnt);
> @@ -1879,10 +1889,34 @@ ice_flow_rem_prof_sync(struct ice_hw *hw, enum
> ice_block blk,
>  	}
>=20
>  	if (blk =3D=3D ICE_BLK_ACL) {
> +		struct ice_aqc_acl_prof_generic_frmt buf;
> +		u8 prof_id =3D 0;
> +
>  		/* Disassociate the scenario from the profile for the PF
> */
>  		status =3D ice_flow_acl_disassoc_scen(hw, prof);
>  		if (status)
>  			return status;
> +
> +		status =3D ice_flow_get_hw_prof(hw, blk, prof->id,
> &prof_id);
> +		if (status)
> +			return status;
> +
> +		status =3D ice_query_acl_prof(hw, prof_id, &buf, NULL);
> +		if (status)
> +			return status;
> +
> +		/* Clear the range-checker if the profile ID is no
> longer
> +		 * used by any PF
> +		 */
> +		if (!ice_flow_acl_is_prof_in_use(&buf)) {
> +			/* Clear the range-checker value for profile ID
> */
> +			struct ice_aqc_acl_profile_ranges query_rng_buf =3D
> {};
> +
> +			status =3D ice_prog_acl_prof_ranges(hw, prof_id,
> +							  &query_rng_buf,
> NULL);
> +			if (status)
> +				return status;
> +		}
>  	}
>=20
>  	/* Remove all hardware profiles associated with this flow
> profile */ @@ -2214,6 +2248,44 @@ int ice_flow_rem_prof(struct ice_hw
> *hw, enum ice_block blk, u64 prof_id)
>  	return status;
>  }
>=20
> +/**
> + * ice_flow_find_entry - look for a flow entry using its unique ID
> + * @hw: pointer to the HW struct
> + * @blk: classification stage
> + * @entry_id: unique ID to identify this flow entry
> + *
> + * Look for the flow entry with the specified unique ID in all flow
> +profiles of
> + * the specified classification stage.
> + *
> + * Return: flow entry handle if entry found, ICE_FLOW_ENTRY_ID_INVAL
> +otherwise  */
> +u64 ice_flow_find_entry(struct ice_hw *hw, enum ice_block blk, u64
> +entry_id) {
> +	struct ice_flow_entry *found =3D NULL;
> +	struct ice_flow_prof *p;
> +
> +	mutex_lock(&hw->fl_profs_locks[blk]);
> +
> +	list_for_each_entry(p, &hw->fl_profs[blk], l_entry) {
> +		struct ice_flow_entry *e;
> +
> +		mutex_lock(&p->entries_lock);
> +		list_for_each_entry(e, &p->entries, l_entry)
> +			if (e->id =3D=3D entry_id) {
> +				found =3D e;
> +				break;
> +			}
> +		mutex_unlock(&p->entries_lock);
> +
> +		if (found)
> +			break;
> +	}
> +
> +	mutex_unlock(&hw->fl_profs_locks[blk]);
> +
> +	return found ? ICE_FLOW_ENTRY_HNDL(found) :
> +ICE_FLOW_ENTRY_HANDLE_INVAL; }
> +
>  /**
>   * ice_flow_acl_check_actions - Checks the ACL rule's actions
>   * @hw: pointer to the hardware structure @@ -2541,6 +2613,325 @@
> static int ice_flow_acl_frmt_entry(struct ice_hw *hw,
>=20
>  	return err;
>  }
> +
> +/**
> + * ice_flow_acl_find_scen_entry_cond - Find an ACL scenario entry
> that matches
> + *				       the compared data
> + * @prof: pointer to flow profile
> + * @e: pointer to the comparing flow entry
> + * @do_chg_action: decide if we want to change the ACL action
> + * @do_add_entry: decide if we want to add the new ACL entry
> + * @do_rem_entry: decide if we want to remove the current ACL entry
> + *
> + * Find an ACL scenario entry that matches the compared data. Also
> figure out:
> + * a) If we want to change the ACL action
> + * b) If we want to add the new ACL entry
> + * c) If we want to remove the current ACL entry
> + *
> + * Return: ACL scenario entry, or NULL if not found  */ static struct
> +ice_flow_entry * ice_flow_acl_find_scen_entry_cond(struct
> ice_flow_prof
> +*prof,
> +				  struct ice_flow_entry *e, bool
> *do_chg_action,
> +				  bool *do_add_entry, bool *do_rem_entry) {
> +	struct ice_flow_entry *p, *return_entry =3D NULL;
> +
> +	/* Check if:
> +	 * a) There exists an entry with same matching data, but
> different
> +	 *    priority, then we remove this existing ACL entry. Then,
> we
> +	 *    will add the new entry to the ACL scenario.
> +	 * b) There exists an entry with same matching data, priority,
> and
> +	 *    result action, then we do nothing
> +	 * c) There exists an entry with same matching data, priority,
> but
> +	 *    different, action, then do only change the action's
> entry.
Too much of commas, please reduce the number.


> +	 * d) Else, we add this new entry to the ACL scenario.
> +	 */
> +	*do_chg_action =3D false;
> +	*do_add_entry =3D true;
> +	*do_rem_entry =3D false;
> +	list_for_each_entry(p, &prof->entries, l_entry) {
> +		if (memcmp(p->entry, e->entry, p->entry_sz))
> +			continue;
> +
> +		/* From this point, we have the same matching_data. */
> +		*do_add_entry =3D false;
> +		return_entry =3D p;
> +
> +		if (p->priority !=3D e->priority) {
> +			/* matching data && !priority */
> +			*do_add_entry =3D true;
> +			*do_rem_entry =3D true;
> +			break;
> +		}
> +
> +		/* From this point, we will have matching_data &&
> priority */
> +		if (p->acts_cnt !=3D e->acts_cnt)
> +			*do_chg_action =3D true;
> +		for (int i =3D 0; i < p->acts_cnt; i++) {
> +			bool found_not_match =3D false;
> +
> +			for (int j =3D 0; j < e->acts_cnt; j++)
> +				if (memcmp(&p->acts[i], &e->acts[j],
> +					   sizeof(struct ice_flow_action)))
Due to comment above it should be if (!memcmp(&p->acts[i], &e->acts[j],
Please fix the comment or code.

Otherwise, it looks good.
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> {
> +					found_not_match =3D true;
> +					break;

...

>  }
>=20
>  /**
> --
> 2.49.0

