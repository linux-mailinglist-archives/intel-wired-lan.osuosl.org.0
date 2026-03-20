Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMn8K8SlvWm4/wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 20:53:40 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 162582E08AB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 20:53:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B949560B98;
	Fri, 20 Mar 2026 19:53:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jr8v5uoNuOa1; Fri, 20 Mar 2026 19:53:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31F1861008
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774036418;
	bh=GU+GT29wG+queqxTkAiS3oBhAvCqHFcNI7Pl56tt+YQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pI9GVcO9WX7y+uPCOs0OfdqdSKBCv6dz2S9h1/ZqJ38zhCmNtHa909SRZAuwnbik6
	 KAtNRLFGiujSqmM68hemi07MHE8xdBZfrDY0oUbYD8OylghXItxnkB64g80hmKJyDO
	 7BSGuPbv2sND3KFZTUiJBM1q9ceeLvDkHMxa5kwGdvEepe+pnUguON/JxrfZHs0mzk
	 jd0yv+f9c7ba62/kGsCosVCvUaQnEsSWlIFiY99eofUX6d95Tz8dfcopVcPiHItVqn
	 nZ5kryqxyaejecoQlZ4rn0K61Mu0rAZBdvqsALqz5+QCVmZjjSVoYHrQTXkUmn6tJ2
	 P+kbDXgePWKrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31F1861008;
	Fri, 20 Mar 2026 19:53:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AA903265
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:53:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9BE2140264
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:53:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pq9IHh3-dBBO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 19:53:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 779ED400AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 779ED400AE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 779ED400AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:53:34 +0000 (UTC)
X-CSE-ConnectionGUID: DNccBpznR8y0NwEkdlD6xQ==
X-CSE-MsgGUID: 7CUvawMDSrKimo+rEteryA==
X-IronPort-AV: E=McAfee;i="6800,10657,11735"; a="75020049"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="75020049"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 12:53:34 -0700
X-CSE-ConnectionGUID: 7vv7k9YlTc6fpYUM9fHxBg==
X-CSE-MsgGUID: WndfEV/4R9a+DEB27KEZ2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="223368341"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 12:53:34 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 12:53:33 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 12:53:33 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 12:53:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UTbcVzYbkZ0xNoAM2d3u9IgmTuSlH9Sb45jv4lZWUOSb7hMy9ZSJ2+D0zY2bmAMi7gK8agIaH5kELXeGlmd6SqaAgsz0ZItOSxUs6YLFfEeHeQrtNxAGj9M+PoIMqsSWvhCFbdwnoVpRwgAwylyBy71uyRy6udwvweAvCC8eyd/4RZnzfKOhNVbmKIO7cVamIeeeyWfTFGEJKhUOFvlSa8VuV/1DnLCru+PIJa0x0Lh3Bmd6DpKEKwMrW0JtG5UhA3wkHeLIs0e2dj/zmn3wHmBAcM7tEqysqvZSszpFos0tmDuJ2pATjhOaDCdiWAbJqXk/XM/4dPBC1Zl7/Oidvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GU+GT29wG+queqxTkAiS3oBhAvCqHFcNI7Pl56tt+YQ=;
 b=OGjGEgb04vUJYZ6D+AITRzTsidYvkZlkEW9dvcrc/IX87i0XhdTVl1NGuSpITCSpafaSNpIpRs4RawY8N1NfyG2MPIFlxFK/JFzN90SYcAsPZsp5UdYqsRJRyyQfgZmVnYj0QffGpwvY8j7MCwquyZ8xgaYEtwhqvdI86m6ZbdTtzHIxwHKB9w3h5wqgr/rJJ5T2fIb5TuV0oK+OUKuQ5vBrG++D4uAAc5PbH8Zl6B9g4f+rDoeAwHXXQ7oVvitgDeocX3gGbka+L5h9lJSbCju1nLiV/pCMTqt40zdqCEIQzL64+jFNn9uS5sDh7d8ZGuhvlZapL4VSjGxNgoX8hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MN0PR11MB5964.namprd11.prod.outlook.com (2603:10b6:208:373::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.10; Fri, 20 Mar
 2026 19:53:28 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Fri, 20 Mar 2026
 19:53:28 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Wieczerzycka, Katarzyna"
 <katarzyna.wieczerzycka@intel.com>
Thread-Topic: [PATCH] ice: add missing reset of the mac header
Thread-Index: AQHcuCcw3dXM4dpPhkahPtZ3hifVDrW3t80AgAAUa2A=
Date: Fri, 20 Mar 2026 19:53:28 +0000
Message-ID: <IA3PR11MB8986779AEBF981B6AF66F3D8E54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260320050518.422303-1-aleksandr.loktionov@intel.com>
 <20260320180410.GA151863@horms.kernel.org>
In-Reply-To: <20260320180410.GA151863@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MN0PR11MB5964:EE_
x-ms-office365-filtering-correlation-id: 40a9f9c3-ec15-42c6-6db2-08de86ba5b4b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: jq+eb5jFoNElsr2FbaSbdYYK576Rtut+vjoBArpMBC4Ofp2eCsu8VxvPM7Hk76qGAe8QhAVEpbYeGov2Tb5Fs/L66M7p8A83X8DOW0jXxHZpVaSdlRChzhNpzOE6woD8EFHiOX2y2zrNmO4xgfA4915GvcXeAH5gbhg2vKide/OQBjkuVql8JXbkiXjBN5aNy+mqb2k0rdBPBo00saq8MzmKUEfmnFRgA2dZ0ZNk+UA8BbW07CwHzuqR8Hu6aSlQcktMoDRCliXCDlq1HN7ddn86EyFEBD1subCBnYPZyCGmS7GhQUpAhEA3O4zK9yP6AMVlzB6AnkR81AsN//X4pKU5jm3P8TMf5JMIo9KgYZIKdBTb3V2jfgipD4u2bOHl5qgmVTAd3ZNcYNncji6zDtQeo9k6h9DiW64bfwV6yuKbiFXCxQfEAQ6jCJEVVdfZTUsGM7PLmcHLcdf3uNb5VsWa7HnyGUGZAxaBhXaPVipoZiLzvZ+YSoPqKcKQ6DxjZrDrsu3UMkT2CBJcGTSE7nVnSRlI5AOEJ29KWzeE+GQymfunzQnUD3VQLrWiMqpuX7M43QLzbKPt6Lz0Fjlmdh92xIZhDKw9OCwXvrpUW+z7EW6EfELrzEVWMBrTctnuFgxhHpVdf9CfXtNn1+s/5rlL7n9R1JU2zmsKOY5jXOKS9lnK7INKcPxKp8WQXWvbEoU2sSSMAnwpScCIb40Y2S8LrktaNJEqsMIMqpcoi/NB5Hyv8necT3aMuFDdl3wpFXRQsV0LEDuMg6/0f50LzM+NHW9avOaGuRXPnn2AZf8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8K656Eg7nwrMq2iEP1C9fZU7daFJwCctHwzuqFoesj7EwhiZBljNqkYhjA66?=
 =?us-ascii?Q?4pBp/w5+k3f0P1yv2dQNZXVEhzHbHSHk1EEgctpTBiECWkgqSaoHlTKol81H?=
 =?us-ascii?Q?HpRRNFCDJRT91uGfeur0iPm9KKb2v9/UC7RcpRL/3WVeTMcNjaeQbwvrJa8c?=
 =?us-ascii?Q?UHH0xzF4A+lE2mou6P5tz8ndRMDGpVZg4PwpgbTwnV7v5t7Zz2fAUsUn+AlG?=
 =?us-ascii?Q?GD48rtqkRNyVxhJJL+OyQTKkhr9wM66Kg8U7HjfJWZ0BDryq7BPqFcUQ7ieq?=
 =?us-ascii?Q?ttnQCzPmsx0Kr5rKca+1xq5YiyPy2d5DsHLeHsGnEVOh+4Al9oBCg8fsO0AU?=
 =?us-ascii?Q?iD5M27Dbk1o0nCIJ9j4k0qCM5ZGLnTsiQQz1t4Vja1uin2xlX0Uw/rvYyDjD?=
 =?us-ascii?Q?DQs+xQGijTjM2fKZtJ0dMIpktcbucC7GRqCBALUNso+O6bATACV3moI7rv+S?=
 =?us-ascii?Q?7WxF1OIOVlSYiL0y0vfFb7ZlkPMqpyBwIzC63w2F1XZ7dF7m0C3kJ/ld2Lp2?=
 =?us-ascii?Q?AONIQwh74ZQ5N8WO50RihKT7la0itf5aJYmS7MYulnkAYE6E1QyYZ/CUDexj?=
 =?us-ascii?Q?M7BQ85aBw+JLh4NTtyVnw/rmIbUt7eeJ7v1IjDCZ5cXrVW8a0beOKZiCaNs2?=
 =?us-ascii?Q?zj7/u0QZCyo7+VGQBn23chTPOMsWhGiVedwa89fvqN4jRzeX7W3wZoeRF1DB?=
 =?us-ascii?Q?U2Oz5zu8k67y1XDwtjAXLIaffdOmLRsfiCf/KWdvAzdPrwl4TLZpJsNayU/Q?=
 =?us-ascii?Q?A6PuJZAS+vN8o1JuO7DkUNiRJg5RDOF2cp8TivIWOJIy3EPo1Kd5z7zqV/yP?=
 =?us-ascii?Q?MwJJBaQeNADxjKGI9Fc702o/0n6V1ciebUinnsiRv9mFsO9RNwRF1AoZHEah?=
 =?us-ascii?Q?92iCXhXpr4p33MAFlHkFbal5D4pre4zrzKaoyCZVukOTu0DuQiSP1m1LCz0a?=
 =?us-ascii?Q?2e872mbGejCtxgFT8oo3kRWBAngEwueLONOLBUQkTprCvlQEFzEcPELQGr6p?=
 =?us-ascii?Q?hFwbryMXYY3w+09TsOv5ugBcYRGhfCVBhnkXYGuyDTsdCDnRMPSlUuDIepPe?=
 =?us-ascii?Q?Zlf8+hqDU3qmmnWaAm5DpUkZExQ+tByEzlWnG8HYcRk1QwKIHyDdz1hBLcD/?=
 =?us-ascii?Q?R2v7preq4VNA1xsB+scnsDX9g3ejjQeTdqz6kjTH3RVcvlGYGTkHEgcANR42?=
 =?us-ascii?Q?wwk3Qs1cNHALlXjw4nvca7H/9i97Q7mF99SRm7eXM0c2FpnAtzz2HQhU9z7S?=
 =?us-ascii?Q?lr16keN/jwLjEpQzDpNPQREIfvhr1DcG2jjgz4VIyzzi/hRYLlcerVg06M2Y?=
 =?us-ascii?Q?zNqkslVv8IIKkBxeASPJO0zbCIzj8mYPeGfvnKYN4AYy4bajUfdlwHRMRDu7?=
 =?us-ascii?Q?Rj+6HpPzvPFnzPN2rcuK0vbvAxGNCK4jiy7Kg3YkVLRAN178blLp1TZpdaZ5?=
 =?us-ascii?Q?vtmE7xYW91BUi7JCFOAi5ysODZ9a0V7QedvMDIcP4TRfhCA3U0xAiIaa/YGK?=
 =?us-ascii?Q?m6t4A9g7/n9rUUdoS8jl1RUtg0yrd449RBdAQuhOeXTta7dWe+nrSPQ95nky?=
 =?us-ascii?Q?canFmTQFb/mI7AJZ9V5lXDWdCXvj7AY9jRz4tRuQ89ut7SLy5frd51/RCviG?=
 =?us-ascii?Q?5RrBdrava7j9iJHQrdw5id2vpzgcgvDwb8abujWcyr6w+NW1GdnNg9pBmBOL?=
 =?us-ascii?Q?Ux7NUd+ml4Q23dE9L2kVH/HHuN2PrdSaejT462PhGgu5qQ1P6oOQPhqWR/Aq?=
 =?us-ascii?Q?mTenMjXMo3rc9afzE1pSu5SMtimdedc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Sz8W9223VcJ429IxjNa0IzaSZn1vn3CApV2n4wTEwCF8X2mHmg7GDEXloIsaaFEPBoyQ3RbBsBuB6/KdEX3Q88jPlVrZzchLhAX6J9aBq5QPl+W1UDX1E602Wtt88feokpm4vvlZccyEqXpV18WBXlvDU9ezUUgPnqCEiKDK3rk/rbTY/s4zmXSuSsMAq1wmo4j9BlIxh23avl/TZYMFWoqLZRLkx4cdLd65AP+bG4RkDdZmQUXtGYzAaaQHcIdpcTkZvbqYffENTsnyu1LJ+dkW/lN2PKUYct+dWJg7tLK0gx+fI7E8Aub0oZ98lSEx0ddRXyRugMtl5asGvmU7nw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40a9f9c3-ec15-42c6-6db2-08de86ba5b4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 19:53:28.6715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H6JO5EhrpLYjPa82NqL0v7vjjcnvsOTMi28me+EDtTlVFwzuovm4cWn+LwuSNshgGXl6IgT9yddJhaZJ722tEAldGbUiOAH9dQgd1QnCHBQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5964
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774036415; x=1805572415;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GU+GT29wG+queqxTkAiS3oBhAvCqHFcNI7Pl56tt+YQ=;
 b=UltP4b+84IS4PaSr6JZBjr2bAD+cNNRpy8+H8wiE0fIPwo3BOQXLaBli
 8Dh54KqKpEbL04R0SFEiZayTv1SHXxRG9kX8tTSMVu18cO249CfBEzfug
 yxznMT4dtK4riK92oqVxazHxKZLaVV9e7jp5lUD6V3W4PJD1AAYZJ8QwZ
 Tr2GuoSp/aLB5qpRwMVJNK4aB+1j5Jr5tnvSk3GrezZsGYQLeOEgNUxxe
 bVehFT4BbCD3Id5/sQEEfPrfRk1E49WiBdjJ0Lszf4AEVDtgNvjPoHTUy
 CXg6Y0nUyjAGgE/jnDfl2IFH0eG70/zd+bLyfA0Vi7J9SXEGViHFx08nn
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UltP4b+8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: add missing reset of the mac
 header
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
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:katarzyna.wieczerzycka@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email,osuosl.org:dkim,osuosl.org:email]
X-Rspamd-Queue-Id: 162582E08AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Friday, March 20, 2026 7:05 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Wieczerzycka,
> Katarzyna <katarzyna.wieczerzycka@intel.com>
> Subject: Re: [PATCH] ice: add missing reset of the mac header
>=20
> On Fri, Mar 20, 2026 at 06:05:18AM +0100, Aleksandr Loktionov wrote:
> > From: Katarzyna Wieczerzycka <katarzyna.wieczerzycka@intel.com>
> >
> > By default skb->mac_header is not set, so reset prevents access to
> an
> > invalid pointer.
> >
> > Call skb_reset_mac_header() before accessing the mac header from
> skb.
> >
> > Signed-off-by: Katarzyna Wieczerzycka
> > <katarzyna.wieczerzycka@intel.com>
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> Hi Katarzyna and Aleksandr,
>=20
> I am curious:
>=20
> Is this a bug? If so then it should probably have a fixes tag and a
> bit more of a description around how this can happen.
>=20
> If it is not a bug, then is this defensive? And if so, is it really
> necessary?
>=20
> ...


Good day, Simon

I'm upstreaming Katarzyna's fix.

From my point of view, it's not just defensive code, but real bug even on l=
atest kernel because the gap is partially closed by packet_parse_headers(),=
 but not completely.
Sorry the patch header is malformed, I definitely need to add=20
Fixes: f9f83202b726 ("ice: Allow all LLDP packets from PF to Tx")
But not sure whether to send to net, because on modern kernels I have no re=
al call traces only theoretical conclusion.


