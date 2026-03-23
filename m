Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCZgEVVRwWnqSAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 15:42:29 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D132F5070
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 15:42:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D6B582237;
	Mon, 23 Mar 2026 14:42:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id avAFzH7oHS60; Mon, 23 Mar 2026 14:42:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF73982228
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774276945;
	bh=XpHDVU81e/wzS62ZPbvfygHFKXnWa6sYrMGsCt9spJ0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ALyWnNS2d/njBrSsHDKVT2V2dds7bgCcv7FJuwUqvy9CKel/SkIUm2a+heSj1APIK
	 dESDUXftIhc8UcOcEY5lSEb8h86vv9NWvayKLduqDm50EWT9JcdnP0NCRt11BMLi2H
	 YEBXC5SAVItiCdoN2zfmwq5DS/drPgB2Eum02ry7z0dxw61KKecaqg5BXbRpkRp8r2
	 I7IablRcotZmHhCdd064fXLGGxgXoCnWVCVVjxPFJDPSQYCMwfore0TMP9BQuypSw+
	 Q14nRXH2jjr7bN8bStSzugyONH9pcXbehLepJy0p1DhXEcBm/rpFeF4o+lUacwxOQk
	 HCJb/8emFnWYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF73982228;
	Mon, 23 Mar 2026 14:42:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 68264353
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 14:42:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5786760679
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 14:42:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m-VFaU0_WnGQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 14:42:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1073B606DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1073B606DF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1073B606DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 14:42:21 +0000 (UTC)
X-CSE-ConnectionGUID: gNbcwdYoTbegjxeS1axmqA==
X-CSE-MsgGUID: oIgJcTCGSACJp1GEGh0lZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="79185216"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="79185216"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 07:42:21 -0700
X-CSE-ConnectionGUID: 6+zTxvvDTouwuSneTsYJoA==
X-CSE-MsgGUID: Ems9VZ5SSLKT4pHrGChQMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="228776607"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 07:42:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 07:42:20 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 07:42:20 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.10) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 07:42:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fP2MVj9R6SPJMQ+AtloNUY12Od0zpmBR63Qwj4Fh5OhWryphRy1JwnjoEnXgUQmj2Mmi/nfPJgGKI0kS3m2/mPcyZkd+YnKpopG5H0Jnn/y9P4+r4Xx2GmotdRhnKuUKVosWL+JykdRVvgoFMf8gQaGyMGLw63n3D0N7Z5YDtxLpyEU3p4nnJjsvWvopzoTB6/DIr1HtRWsYM3xyX1m7wB2gGoki0XifBmmeiVwk/O8xyYIOQb5fcnf0S1WN5yw6WjN7tY7W2O1s5ANDHwGgMni4a8yv6ZsxgCK3SYm1ajEnr8w7PApm4RwUbPyPkCnEtr5JwKULmzbsGGf8zMDlcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XpHDVU81e/wzS62ZPbvfygHFKXnWa6sYrMGsCt9spJ0=;
 b=A+VIg+DWFd+nso8Djt7m/guiusTCOaXLpUwjdrK1Wta/ZUgs5vJde9Pk9qTn6vfkl4PpLtak4C18fT4UGU3gf6HkG8MiAhqxxJIhHOdyFgEcFP7ME0Ihy4mBuNi+ZO2aU928NekQL2RjmsToR0s2HtSNoXk00HW1h5UNLCAay6QnpvTj4L11snWi3YkWV/jjejP6xYky/un3FTvwnJLRCuk6m4vuKCVRoFfpT/jyz9FMbbWQxOi4h90xK2g6AiB717tZqhGx7eDLpq+S5+PMM+DHGmwbl2mfKvKVKPlsLL9xF1lx2hC/3E4/S7danvEWZHttH/CElND/KDZSI2YEGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPFABF58482A.namprd11.prod.outlook.com (2603:10b6:f:fc02::45)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.15; Mon, 23 Mar
 2026 14:42:13 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Mon, 23 Mar 2026
 14:42:13 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Jiri Pirko
 <jiri@resnulli.us>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Jakub
 Kicinski" <kuba@kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Eric Dumazet
 <edumazet@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Simon Horman <horms@kernel.org>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] devlink: unify
 devlink_shd_get_priv() into devlink_priv()
Thread-Index: AQHcuspcZ7yLQKZZAES0YDCz5X3ypLW8K49A
Date: Mon, 23 Mar 2026 14:42:13 +0000
Message-ID: <IA3PR11MB898619DAC6BA30C2DBC65F62E54BA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260323132136.13191-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20260323132136.13191-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPFABF58482A:EE_
x-ms-office365-filtering-correlation-id: b808b35d-3afe-4e11-4f5a-08de88ea5f10
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|18002099003|56012099003|7053199007|38070700021;
x-microsoft-antispam-message-info: 9CpaxGzy22f372O5uBbqPA+FRAufu/MHTNy9wt0a8F+OLkIojmEL1u/5q1WQc+AvMRDa+6BCWBQCCxrcGJy5s528YmvbEwSL0c2v61CTDuB1Oxx5S0+Vfd6FRNbVL8VQ6uIob/iJjKX8zwc4CRK6qInIxfX0xWWSg0D7hPU7URauBJB4o+zekVAlIKoFlDkDlkdgZjr5Ib2MqxXqmqc/85VuWTqMOJgHAZkLPlHcSKu29txiWTuuKDqHalctGyMJ/c1Hb7astMgqlCx1cGut7Itv5Rs0ufU+aZlY82PUv0fWX8P2HPpa0L+tf5jBDjkVc01wGLKc17/wpbpnuFxon1r+OqAuPlqFLOCM/6XU8pv9TbSy0UUy6doPRatJUKotwsk9sCnySnKqqzGbB8vvP/54ISiIDr8eakgjvfENpP38PRVHdbJsqmNM7FCOmhMB08K/zApz6bKMAbV2Jia1qZhYTQ/zqla1b6b8KY3gZgU4Tu777rEFo60g94HABbEGec6rUF6VWxsoe0DChHn9Ccy0a/grxu2MRBIlBIvYdCotPzqXxZmGrq2fSYjHTSGlOdC7rvuuOow+r/OuwDCvHvsrducoQCnIYB9IX3u5ObR8Tn0el5YPoy+TlFOPBPslq9sjE+P+RCrYx4Kv/5ik4vFFUcGjY1A9l7XXYY8eYmO8BBZlaf0/tZVtHVgM3NgW6tw6XI57UbNqY35eS0zU6bPc6ktfXeL/mwmXtUZCQK1oNQZOZYw7O7aznF/ErvUA5IYagWJTaCWm3TmVK17GmLbw+njvr2N0gOQifgqpGLM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(18002099003)(56012099003)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tX1wTpun/fN88MKEg6D1yUiEMUSYu9I6YOtHm25MbRw3NQJWVPCCP/6fJFeF?=
 =?us-ascii?Q?CVcM02Xp5Xfb48E67MIWvLic51lnE0pP0oLP5GShKU3iygFdKE92QKfXdeYD?=
 =?us-ascii?Q?onFytxGH/zPlyK5edg0f2PbCdmIXubt2t3/XPHiHemjd1UKqIeCtmL+vXPdW?=
 =?us-ascii?Q?t+ciaXfbjiu9wYhFeq4JracXr0P04bkfG8P9Q9JzMpCCuXNqGsNHeZ6emBWX?=
 =?us-ascii?Q?a7FrX4eVf9+T1WCcIPjIIroALhUSw4EI4PcKh8ouDWjV/ikEj9pjPK9X4OQq?=
 =?us-ascii?Q?RkCvIci/aHrsm2CemvcizF+t85DU30Kw4FwRr2n2DMepVWMs2gjxw4vG+5tw?=
 =?us-ascii?Q?2da7Ysc0t9V96dLmpVU/5lwUqqfhhQoXJKyCp92tTKRYHiUYZV1yJ0x/2Q4v?=
 =?us-ascii?Q?iSlKNCzO7K0SNdjEds6Y9v1CbFqbTEHbsalJFEpNef4ArJdhCe9oezDZkb98?=
 =?us-ascii?Q?iYZ7PKsnI07kZiaDVCM1QM+9JhhfhxMGUB8OK3XgqU/p0QU4lGmkOa4UsOY1?=
 =?us-ascii?Q?BkLKB5+MIDHPpM/OynmZgS62zgm3KFHi33gajjGzEenIR+9Dy3wHZR78eMrd?=
 =?us-ascii?Q?TlC/yH+7z0beXIi4YCj6O1n2y4mDPd6nS4i3h9XKi/YPtEGWYLjg+WWPDV+Y?=
 =?us-ascii?Q?CdnIVANsEnBPVfDNx89CNeaR78Usdbv5noIDQF99wYvVdoWvfJvbsvuH88zU?=
 =?us-ascii?Q?696Dy25O6DmV1bwFfTdrg9YYaghN3LFSeFya2OKBtoqmPxfwtQH4Kcw4Da+n?=
 =?us-ascii?Q?AjgL2PBAUtlN5Zp0+jDHSlHTZ4JucDiZ7v50pDWIkFmGc+AscobKKL2PW8DZ?=
 =?us-ascii?Q?b+kClLoY78Ggr0nS7sKuOCgrL34tgrhfBw4dnnLyLToMFDfADvi6lTw6XuGQ?=
 =?us-ascii?Q?b5OcFB1aQC8sAk16WTjeA/QVpz7vLN9Sfp4aP8r8X5WHjaElQoZRbkVU2d+u?=
 =?us-ascii?Q?l6CGnSThpYtsKwKI2wvMqhJttJT5UsGT2SktU2EoQcO3IePAMMDWDDS5nmyo?=
 =?us-ascii?Q?Z8ARd/mhsDZl+1cX2O8UI4102zbuSnauKoPLhpOT4RbOvCJ0cs4g0P9cpZEF?=
 =?us-ascii?Q?/ZF/Cy1NwKd089tUt2JmCYSlfqT2hjur1cX6veaWVtOFfQxhi1TtkTcrqyQ9?=
 =?us-ascii?Q?4arSfJ31oL2nSvIOeieVRotwOQUvcGdsvs/DiXqx8Y/M9KJx8X5eycyQkSvz?=
 =?us-ascii?Q?cDk+4nVCOV6bCVr4YgncRnkEa4KPY1lDoCriWHEutdagfJXnVKvK/8WIs4T8?=
 =?us-ascii?Q?1E6cxPtRa1rjXVfRqOQuZ7P6YBFU9/AcLNeF/8fuObImRjMKO3nhAC8Uyw3z?=
 =?us-ascii?Q?1v8vGgxBafXeMYDBMGaVpy533BOBzHqFxurAgr8ITZ/rfiANU9ieRPYNp9zz?=
 =?us-ascii?Q?09zH3igq46c8+fNcvJn4kxAXNqgZbbvIdX7yaKjWglA5aVS4hQ4FUsTUIJpE?=
 =?us-ascii?Q?q22ERgEN2CqpfI+NwUozL9VH0RYnrrqXDS+d5Psz0nOX4HzfKQseqzUxBOFM?=
 =?us-ascii?Q?89Caga48yfjzAZNZ9cgLQNF5xDtZgX+SecpvSoACDLlQezZw1Iur2vYEmK12?=
 =?us-ascii?Q?UMYGJEKT/88Y4dhW35FV1SE3NI2ArNutL44MTViMuVxRIWHmzOJA9l8jPiDF?=
 =?us-ascii?Q?9pT1zppDGhzeCIxdcClKtdtTR/CB+qJlF0lrEAicsshI/lDLipHHRLBjMSkI?=
 =?us-ascii?Q?O1F1S04h/Kye/+fBzptxlv4pzXHfwlTHm/oRLhcJqtNsXjaNnjhKHuxYCTKQ?=
 =?us-ascii?Q?5NRtlreEZM9xTxcJMQK0pA9MymsBCHQ=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: jFp1wvwz9MeFx7SUX60kICxZP7RKJ9JGbUx2BD79yIaDcp/gtzyNfCL3lb8WIhGrCAIqr7eb04LPbJO+IeaG2aKfps+Q1F8n4b/CwH0FHjyR56ry8imxURpEC+FU4trplk8OB4Cx4mob2q9d3eb024y2JkE0XRTtM1KueWKvguYGW2QAi0auaLoNb+X9lTjrydqJxoFVKuxIg+p1CQb7MqM488++9zDg7EZk/P7rypbE9Sfrwh+SpqSIAA3v3Y++PQmWNew7hC2tPvfgBra5wMws98GpjDruHVV/zQ1tgC05FUpc8Jl2N1NlxZQc0+9gAmAjzmUNadhS5hyMcxlS5g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b808b35d-3afe-4e11-4f5a-08de88ea5f10
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2026 14:42:13.1218 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aS67yH/jTgxQR57/eG4hrnt4rOFTMoid8wCE1lKnbRUSGV0Oq/7ZmjfP0FaWcEp82+5ttBVRAxc/pnXLAe9DPYZdZ6xc9+SWM7ZScDAMf4I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFABF58482A
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774276942; x=1805812942;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lrkZBdfbo4pi0uiWAaWmaOyPZfuJBw5s9XajY3O2yhQ=;
 b=e4jqC+MFcDJRUwq9+psYGEncmeWct+2oGd9NM+EppOmqLRZNe1ji6aSM
 DFj+NCCDfBGSSMxX24F90dlbdVbYx0lNgpdDMzmRqaDlWpdUc+3jMDASN
 1oqokBcPFFRdmrFxGR9FEzd0KuEriPbmAPEjgpmsd0xXgQ6G2aXbH+70S
 uTSe9KWcgu3y2Qky+87+yXNrEavy43HIk4QL3N+4j+3CYHdNye9gujZgN
 3FszWOCgy+8HPGiAySRmgZon7kqCUof9EAc2A0FuxazCWjNPmlxr2MnVE
 W/d1DVy4zeLgSwIjLhlzpn3clNiH6MhYSDObbzzvXT5uaJGxW7z/VNcCy
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e4jqC+MF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] devlink: unify
 devlink_shd_get_priv() into devlink_priv()
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:jiri@resnulli.us,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:edumazet@google.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: E6D132F5070
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Przemek Kitszel
> Sent: Monday, March 23, 2026 2:22 PM
> To: Jiri Pirko <jiri@resnulli.us>; netdev@vger.kernel.org; Jakub
> Kicinski <kuba@kernel.org>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Eric Dumazet
> <edumazet@google.com>; intel-wired-lan@lists.osuosl.org; Simon Horman
> <horms@kernel.org>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH net-next] devlink: unify
> devlink_shd_get_priv() into devlink_priv()
>=20
> Unify access API to shared devlink priv data with normal devlink.
>=20
> Thanks to Jiri Piro, we now have ability to create shared devlink
Piro -> Pirko


> instances [1]. Introduction series have added usege of those for mlx,
usege -> usage


> but without priv data attached to the shared devlink.
>=20
> Current API makes it possible to access shared devlink instance's priv
> data:
>=20
> 	void *devlink_shd_get_priv(struct devlink *devlink);
>=20
> but it is easy to to forget (especially during rebase from "before
easy to to forget -> easy to forget


> shared devlinks" era) and call:
>=20
> 	void *devlink_priv(struct devlink *devlink);
>=20
> which even has the same signature, so it's hard to catch the error.
>=20
> New proposed API unifies both calls into one, without any increase in
> the observerd struct size. (Alternative could be to store additional
observerd -> observed


> pointer, set during devlink_alloc).
>=20
> Unexport the less convenient API call.
>=20
> [1] commit 411ad0605875 ("Merge branch 'devlink-introduce-shared-
> devlink-instance-for-pfs-on-same-chip'")
> [1] https://lore.kernel.org/all/20260312100407.551173-1-
> jiri@resnulli.us
>=20
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> sorry that I have not mentioned it during [1] review, it got obvious
> for me only after working with the code
> ---
>  net/devlink/devl_internal.h |  4 ++++
>  net/devlink/core.c          |  3 +++
>  net/devlink/sh_dev.c        | 11 ++++++++---
>  3 files changed, 15 insertions(+), 3 deletions(-)
>=20
> diff --git a/net/devlink/devl_internal.h b/net/devlink/devl_internal.h
> index 7dfb7cdd2d23..abbe308ee9bd 100644
> --- a/net/devlink/devl_internal.h
> +++ b/net/devlink/devl_internal.h
> @@ -58,6 +58,7 @@ struct devlink {
>  	struct mutex lock;
>  	struct lock_class_key lock_key;
>  	u8 reload_failed:1;
> +	u8 is_shd:1;
>  	refcount_t refcount;
>  	struct rcu_work rwork;
>  	struct devlink_rel *rel;
> @@ -72,6 +73,9 @@ struct devlink *__devlink_alloc(const struct
> devlink_ops *ops, size_t priv_size,
>  				struct net *net, struct device *dev,
>  				const struct device_driver *dev_driver);
>=20
> +/* Get private data from shared devlink instance */ void
> +*devlink_shd_get_priv(struct devlink *devlink);
> +
>  #define devl_warn(devlink, format, args...)				\
>  	do {								\
>  		if ((devlink)->dev)					\
> diff --git a/net/devlink/core.c b/net/devlink/core.c index
> eeb6a71f5f56..4c97e2e2c073 100644
> --- a/net/devlink/core.c
> +++ b/net/devlink/core.c
> @@ -232,6 +232,9 @@ int devlink_rel_devlink_handle_put(struct sk_buff
> *msg, struct devlink *devlink,
>=20
>  void *devlink_priv(struct devlink *devlink)  {
> +	if (devlink->is_shd)
> +		return devlink_shd_get_priv(devlink);
I'm afraid it can cause recursion, if you didn't modify the function:
void *devlink_shd_get_priv(struct devlink *devlink)
{
    struct devlink_shd *shd =3D devlink_priv(devlink);

> +
>  	return &devlink->priv;
>  }

...

>  	if (refcount_dec_and_test(&shd->refcount))
>  		devlink_shd_destroy(shd);
>  	mutex_unlock(&shd_mutex);
> @@ -159,4 +165,3 @@ void *devlink_shd_get_priv(struct devlink
> *devlink)
>=20
>  	return shd->priv;
>  }
> -EXPORT_SYMBOL_GPL(devlink_shd_get_priv);
> --
> 2.39.3

