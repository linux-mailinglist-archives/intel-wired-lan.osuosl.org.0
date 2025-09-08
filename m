Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C61CCB4907C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Sep 2025 15:56:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7503E84AAE;
	Mon,  8 Sep 2025 13:56:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 36khJh7kgwkg; Mon,  8 Sep 2025 13:56:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0F6B84AA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757339797;
	bh=J4XmFQVgmzd9+jDrLpML5QvsCb16cR9amRyl/M+MPdE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8xEutEwoMIJ0lEMwqPwmhcTdjGylxfz3nVYuOpve6knDiKdB5sXVATdukoruXWkMy
	 /NYD845TMjyGhCkA2SIbU+A2iHb2l36mr8429jfg/tJhuosNnEFrfiFeNfeGNmvrRQ
	 EfYpZXRYzy1GDrQE7VZoci/kCfbQvFjVluBnUW2cjfqKDc5jVz8ZYMR/ItdR7DD+uV
	 2qG0w6/rwBpH1r2Ccgp+DdZZPDm7utwl96VCXQf5tiz8vwWPsP7OUI0ZughhSAlcUy
	 7OWxREyeS9Q7MOH8NWSSLXB6jXUJPn1LlnkYD/zg30wnj8izC8gVHeFaN4qe/3XQkA
	 Vwq+4AuAiDHzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0F6B84AA2;
	Mon,  8 Sep 2025 13:56:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AF8E5186
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 13:56:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A174341F43
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 13:56:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kiwr_X1d9h8a for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Sep 2025 13:56:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D7AD14180D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7AD14180D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D7AD14180D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 13:56:35 +0000 (UTC)
X-CSE-ConnectionGUID: iUPu8nBJQ3i4U1OeP9F2kQ==
X-CSE-MsgGUID: 6IRYDJEVTC+YRfXpbeELdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="58636305"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="58636305"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 06:56:35 -0700
X-CSE-ConnectionGUID: 5hdLjI3DTTqUKiwli4wVlQ==
X-CSE-MsgGUID: wBR6Z+1qQfyZFvYPere78g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="203579123"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 06:56:34 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 06:56:34 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 06:56:34 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.61)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 06:56:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xqa+3YiAGm+7KDzG4S0UhFaDjdThXEinVpZBEaKT0J0ylai5VmVgVD6HYMyQJ5zBgqSsZuemnbCLNB0KUNUl1qPBVZBcpxTG09BGrn1JWK6bYqpXAUQo1Soz+EHlDsMl3XCsVGUmq5xkn5PbHgYJB/2UHl2TJw7HHeXpobTJNvZmyGCR3LVYOEWpk+/DLVCdYZgNA/EJXIXnF51jJIVPjrZwc2BJ6SDK5rjm+PkaxkYmyCyrdibGR0BP94CgJcTdE0SUb2SGVK2/NW/U1Bth15yr5iS1oCVblcrrFwF/Pv0iw00xqY6zsD4K8M+wv0v1aHfu7DvK+RU7UHC0ALJULQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J4XmFQVgmzd9+jDrLpML5QvsCb16cR9amRyl/M+MPdE=;
 b=DYIWEZiYp6Q86FJdZYtsWC7yjScWRQfPeMLwAxn9aowNwP5a96M/CbF8Z5OAD2RShkxAYue3JXOC194UrO6zi9pkpxWPCO7XDEbQQBhkcSgOldLsOWzW9vTPEx3JdtzOqEOl3SZnKx1FB4zGaaXuMWdZP0Xi8pdMtq2RQMErl+DhYLXdzD/7I1MAzQesvxd5WCSlX7QbKuqok5vC1Jt/RLx5bKEivYtl5PyeSogFAyEsLgWEL372vuMPelZstg9cbiaHGfjUZf0wNtNOthdpoydKYykJx04GcEB8upgE/jBOtKvYvbcpbv7WvDf4A38A4X2voM7kg/2KCVFVT7CfVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA1PR11MB6145.namprd11.prod.outlook.com (2603:10b6:208:3ef::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.33; Mon, 8 Sep
 2025 13:56:31 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 13:56:31 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: destroy aci.lock
 later within ixgbe_remove path
Thread-Index: AQHcILXm8hZs/vgHKU+/HyFJpM+Hy7SJTzSg
Date: Mon, 8 Sep 2025 13:56:31 +0000
Message-ID: <IA3PR11MB8986CE917AC82BBA3B06DDF5E50CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250908112629.1938159-1-jedrzej.jagielski@intel.com>
 <20250908112629.1938159-3-jedrzej.jagielski@intel.com>
In-Reply-To: <20250908112629.1938159-3-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA1PR11MB6145:EE_
x-ms-office365-filtering-correlation-id: 6fd097ad-84c1-4a6a-7c9f-08ddeedf83f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?BR7w498kI/9SLdwS+mklgqEWQMrMjwU7nFYxK+0OUU7OxNeeKRwIpLoOePCc?=
 =?us-ascii?Q?m2jkfUUvMbJhTULz1oR8IwH65NWeWdye8StdvqJVeRloOQsjfv4MAFwDpkTm?=
 =?us-ascii?Q?93/FpOWwrfLZsDiO7Q+R/EktPdLw19Ztpavk7wAmIU5JJuoNZiEl1b3ccqd0?=
 =?us-ascii?Q?pvffEBas/idHND2wiBOgYzzq4Z7hczBGmxsF7ZH+CBPm/lXuOgDVIftJih70?=
 =?us-ascii?Q?omkMpKFYt3DoObHnhozDQFGM8PrlMFSE9JHlKu3NteZBoVAlZ0zKELod0xjP?=
 =?us-ascii?Q?Psqi2z5lIlbHDZZUVm7MbzD4thwuGsM0jGaUoFiUafd4RHefmAGwsT83r8/0?=
 =?us-ascii?Q?qw68dgw6bjrPRS+vzQ7zD4JfZiTmWq0ZiKKJ49MLXz3eBxq4HEjOmVNJsSG7?=
 =?us-ascii?Q?k3RGvOXTL0FfDAsQupkcWXUqWKEYmWshufbpjZbBbPJS/ZSnuJl5u+ZWXvvp?=
 =?us-ascii?Q?FY4UzCi7OCXnHcaCeRh+2Ex57pn6P5O858gvyhkQhCIJuXwNxL5xjsovpYAj?=
 =?us-ascii?Q?VOaYh2fj0YQEOT5ANKiEqQ43w7q9mL8BMgY9gu9N/dO4WwAovIGtGrMdsocT?=
 =?us-ascii?Q?BXmoRZBNI//9E7gKHuI9zXW68KHCsgG1y/QBxdoDKykVVS8qkX6XKFvqrTC/?=
 =?us-ascii?Q?TO4UxQjoLl3oRLgMMgqEur34g6S2AUr1GYlyU2Ux9PbiJDLdEGiFhvsP/8xN?=
 =?us-ascii?Q?FqsbsaoPomB2AwnZxiuz5Sj4//41EKeqYw2KcSOxCSYp++5kqeR8smvH6kML?=
 =?us-ascii?Q?G2jQwLBGfpQgxsYPanEH4u0utsq69Kj+cc3YnSnYvziDHTrnXYpD1hmjT9KI?=
 =?us-ascii?Q?jjjx1Xak8m7IO5gdneEljfHGO77GAM2fIYQs443pqg/zAqQN21QACZ/ft623?=
 =?us-ascii?Q?4nrkkxhSYVDdevzJdxGGiF2oTWP1SpUK2B6RLCkyIUKesw/5uCuOCBvtqI4w?=
 =?us-ascii?Q?sKS4tgbER+96cxbxcWKTSbrkKyvgt4l5tcFswqaJ6UwNi/th1UFxTJIip/2e?=
 =?us-ascii?Q?3rVkaXKfzTaN1G2EtlhGCrxm5wX0OpJnrsOQ5E/vHT+W1hI3dhYUKHETBPim?=
 =?us-ascii?Q?pd4FHeRuQIpYlQItJynMtovKp7bWAEaXHwnJluAFfCEui0uA5VnU0ECC7x1O?=
 =?us-ascii?Q?YM4SFHrJbM0ZBoX1A206101i0iE/25BPr4VFfNwKcy4Bsx6iOW4QE+wJvg7Z?=
 =?us-ascii?Q?ExrZWhmId6yMZkS5jiw3cuDpcKoZrBOx1j3z+EiwSD55hRGvsDjxKnSOzl2w?=
 =?us-ascii?Q?qz2yD3Jbb4+IHSTHHSMg1c30XZyMOC3aBXj+is9CK5W1HrTW5ZLhyUG5kffY?=
 =?us-ascii?Q?RkwsWUV4XE0xnphcL6G+0Vi0f5T4ybyp4mZx07Xqr+Vvx7PR50Mj2qrhWZr2?=
 =?us-ascii?Q?CZYJzqflckP7zqKJN58il+3StZmGUlt5Nz38d+S+Q6lTfVf+5A2d8hTntlOK?=
 =?us-ascii?Q?VfYA8DTMznSaJLUs5ZmauOpI5IJpN63+0MFCbZx2ibOSklPqvBVypQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TOL8jyteLxWQ3x257SILbKk3Cm9Wo1xu+kgTjFGXStFqivbPJoJiHxYBfIxM?=
 =?us-ascii?Q?ls1ObFrGR/inVViSvQW+dSYvDpftNw1ps4iS7awXNgQmQveHpVg8tRF98qWP?=
 =?us-ascii?Q?cHiJpulznzbxrlUITa8YLd9g/QxG+6U27Xsz54cxRgw2SRp+oKgvrJHoJi6R?=
 =?us-ascii?Q?A69NSb0pKxRQmmRXR5xqJhqtZNqXWMPcpapEq08WrqlBalgSuKM/gQlyKDZx?=
 =?us-ascii?Q?KtVv5eemjS0UeXn6+PI+hOqZfTTVrAQMNk3AdRkK6hfJ7qQUtIO4YcqsDqyj?=
 =?us-ascii?Q?nL+kOihc96KCVEwqHngAjxhP9w7evvTakL6wGKtN6Hv010F1nm1y7/V5mweu?=
 =?us-ascii?Q?G0/PUkTMNgZLkBSmxHhxiw5zQJQuBJ7Q4gN/ay6Ab6Xyt+vt9r4V+XNrymXh?=
 =?us-ascii?Q?xpdgr8iNh+T4WUxOv0TactdNjheRtIgjz9iUojI1L9o3yODLiuDu4QD3nX6v?=
 =?us-ascii?Q?okCOKH4ZLnSs8NX6aHw5R1m2W4mO/kbzsHHYf6Z1ow+xgN36TOKtVwf8fjBH?=
 =?us-ascii?Q?R507vkEotS5HrYB5uzr4KU/t8T43jHpXCVDIARl2FfxE0pKvjp3j+fEJTgkP?=
 =?us-ascii?Q?CX09xFIVh/YlvvAqiNd7cuOXggyiUTxRc3CpwRrH/oqRMvEHVbgIBcGQKjqT?=
 =?us-ascii?Q?RTfB9JW/vooD4AFwqF7+896sKNFhBtlruNOTR56tKRgQz4oR1LQBJzJvgoBs?=
 =?us-ascii?Q?G9ZY7QBsMRNCmBFasMv/XLgvYw53T/yQVeDOV1mtY37edT70RIZgQG8Wa+/v?=
 =?us-ascii?Q?zFOEvYO6dymI7rMlQuJBSlOWMZF0ybMKPpwDkFalViAsU8R5NL3Dsh38QXzV?=
 =?us-ascii?Q?LXs1N2fDjpuSbVSJToVBj5HMIxqzBCDM2Nndj2Yc1S8WAFbbIjqm1dDkUwVu?=
 =?us-ascii?Q?gJVDluqaVl/dHum6BMvXVVWWNLFEhV6lJskmJ6M6L3CVZwIBq6M6pQiMyUwv?=
 =?us-ascii?Q?gcGiUPkw7s8RCYg8wF1wGI8SUXfWjlUg4i/w4zAR2xEld2AzdQIoLtp6dsvI?=
 =?us-ascii?Q?vUrqSnzgcikF6ba0Jyky+TspWgSyvQ2/iDON1rp+OP6oK+RPPdkIqolqEu4V?=
 =?us-ascii?Q?hcP4xorylZ2hU1v6D3MEaoAAVtUwqEekrM9/hY8qTDNyVmXA9V18F7S3zPQU?=
 =?us-ascii?Q?QXX52bObpOfeKa0Nj5lLeeO3z+KFoj4+ZlrNd6sJp4cvcxSZHzcKU+9Omw1v?=
 =?us-ascii?Q?FWxkWYwWFjIhIh5hLAmrfBCnfcPLMIfpJpukXZ/iaCNBzEk0alK5Gqq0Bg3C?=
 =?us-ascii?Q?f1bsOZEmg/bmF7Bdtsz3gWz6T5Q5KImy5+TB6IdcNPcDbu0AH61JS4xdxsgp?=
 =?us-ascii?Q?zqSDgfuQmpGWspDKuLVQZdysud+n9QetXS0TNGWUqVXriWsONZ2VBO3e56LQ?=
 =?us-ascii?Q?YuM375FppltFEODff0mwDsG/5UWWZU1T3Vv6gWFyN3MwP9tKp50C+S6Thh5G?=
 =?us-ascii?Q?tDryaql1sGN8MMKxaAtDLpQUq2VDNBjOMDBWVSXvrrIP7ByGZFLBRlY6jKgu?=
 =?us-ascii?Q?tj6qRA4lIoTS9QjOubvQB4VecPrwbFeHABr5eCWWC3ZGjxvUwEbQzbjf+dA5?=
 =?us-ascii?Q?SWZXo0qWQ5ySm5xkpcUT9vB0sm9bKhowfAJuULKHbE4p+wf47W4f9/D/6HJD?=
 =?us-ascii?Q?Lw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fd097ad-84c1-4a6a-7c9f-08ddeedf83f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2025 13:56:31.4845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GIp538cxg/JD7SJPlCVZsfGFpR40oWiCYqtjH5b/5Nh+1NXqJDfdsqhQYSoF2eTrAeJuWvkSVl+/EDd/qNvjpO3rnUH1j6rnlZpT1eOfRfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6145
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757339795; x=1788875795;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TnnJ4vO5yIsfzqp4tZMFsNvy9EVv2heMXENvnFJTyhI=;
 b=EyXQFvNBsVIvAEoDVOjTmgQYC7HbwLePkeCnNEOS3njrNZXRIZzZJCqR
 4dN9o8cGAL8/sCq8JnhLV06+wOf9OePu7AXXMESISa9gtOfLlNHqMPrDn
 8Rpb0EP5v0wpXvNma82BsywG0qQX6zq5uWvcUK3ydMVnh1ynlNqAfFSz6
 69omGccij/UID8Qd3Y2PEiTxWJ1tWE95jKf66M7AlB7arL9wGp6PTC0EO
 LCf+oAxCuTbnLGcf+3TEISu7SRsq9S5paNf6XFgIWu6JHIEITwIO8InpB
 ABPjacRdOsycFE3GvfbmVfJH5OB29WdIzZtAokjEV6o+CGpMrwfB2DBKN
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EyXQFvNB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: destroy
 aci.lock later within ixgbe_remove path
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Jedrzej Jagielski
> Sent: Monday, September 8, 2025 1:26 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: destroy
> aci.lock later within ixgbe_remove path
>=20
> There's another issue with aci.lock and previous patch uncovers it.
> aci.lock is being destroyed during removing ixgbe while some of the
> ixgbe closing routines are still ongoing. These routines use Admin
> Command Interface which require taking aci.lock which has been already
> destroyed what leads to call trace.
>=20
> [  +0.000004] DEBUG_LOCKS_WARN_ON(lock->magic !=3D lock) [  +0.000007]
> WARNING: CPU: 12 PID: 10277 at kernel/locking/mutex.c:155
> mutex_lock+0x5f/0x70 [  +0.000002] Call Trace:
> [  +0.000003]  <TASK>
> [  +0.000006]  ixgbe_aci_send_cmd+0xc8/0x220 [ixgbe] [  +0.000049]  ?
> try_to_wake_up+0x29d/0x5d0 [  +0.000009]
> ixgbe_disable_rx_e610+0xc4/0x110 [ixgbe] [  +0.000032]
> ixgbe_disable_rx+0x3d/0x200 [ixgbe] [  +0.000027]
> ixgbe_down+0x102/0x3b0 [ixgbe] [  +0.000031]
> ixgbe_close_suspend+0x28/0x90 [ixgbe] [  +0.000028]
> ixgbe_close+0xfb/0x100 [ixgbe] [  +0.000025]
> __dev_close_many+0xae/0x220 [  +0.000005]  dev_close_many+0xc2/0x1a0 [
> +0.000004]  ? kernfs_should_drain_open_files+0x2a/0x40
> [  +0.000005]  unregister_netdevice_many_notify+0x204/0xb00
> [  +0.000006]  ? __kernfs_remove.part.0+0x109/0x210
> [  +0.000006]  ? kobj_kset_leave+0x4b/0x70 [  +0.000008]
> unregister_netdevice_queue+0xf6/0x130
> [  +0.000006]  unregister_netdev+0x1c/0x40 [  +0.000005]
> ixgbe_remove+0x216/0x290 [ixgbe] [  +0.000021]
> pci_device_remove+0x42/0xb0 [  +0.000007]
> device_release_driver_internal+0x19c/0x200
> [  +0.000008]  driver_detach+0x48/0x90
> [  +0.000003]  bus_remove_driver+0x6d/0xf0 [  +0.000006]
> pci_unregister_driver+0x2e/0xb0 [  +0.000005]
> ixgbe_exit_module+0x1c/0xc80 [ixgbe]
>=20
> Same as for the previous commit, the issue has been highlighted by the
> commit 337369f8ce9e ("locking/mutex: Add MUTEX_WARN_ON() into fast
> path").
>=20
> Move destroying aci.lock to the end of ixgbe_remove(), as this simply
> fixes the issue.
>=20
> Fixes: 4600cdf9f5ac ("ixgbe: Enable link management in E610 device")
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 18cae81dc794..4aa4ca603584 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -11891,10 +11891,8 @@ static void ixgbe_remove(struct pci_dev
> *pdev)
>  	set_bit(__IXGBE_REMOVING, &adapter->state);
>  	cancel_work_sync(&adapter->service_task);
>=20
> -	if (adapter->hw.mac.type =3D=3D ixgbe_mac_e610) {
> +	if (adapter->hw.mac.type =3D=3D ixgbe_mac_e610)
>  		ixgbe_disable_link_status_events(adapter);
> -		mutex_destroy(&adapter->hw.aci.lock);
> -	}
>=20
>  	if (adapter->mii_bus)
>  		mdiobus_unregister(adapter->mii_bus);
> @@ -11954,6 +11952,9 @@ static void ixgbe_remove(struct pci_dev *pdev)
>  	disable_dev =3D !test_and_set_bit(__IXGBE_DISABLED, &adapter-
> >state);
>  	free_netdev(netdev);
>=20
> +	if (adapter->hw.mac.type =3D=3D ixgbe_mac_e610)
> +		mutex_destroy(&adapter->hw.aci.lock);
> +
>  	if (disable_dev)
>  		pci_disable_device(pdev);
>  }
> --
> 2.31.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
