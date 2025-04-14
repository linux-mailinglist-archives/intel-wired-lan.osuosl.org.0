Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F49CA88395
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 16:01:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DF67820A9;
	Mon, 14 Apr 2025 14:01:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nb1B1QhfpTQq; Mon, 14 Apr 2025 14:01:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55C9182231
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744639296;
	bh=0F/NySuQC6FId7WEXrM/OysAby7vq74rc2Oma9JkXWk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pxaiJ5lsrhkYcRANBt+0Bwotnxi2/3puqHLFjn58ard28JZBLB1GgseI3C/8FdHSL
	 UOdzMH3xwRH16F/JxAWLWSbwuP+pFAcUav1l21ku5DdtNibA0dOVgfdYBTqUR5xQt4
	 Qfj7TioKcSVroJa6IVzEg2yNh2Myqyt3aVylVqGDn8js0Qa8qB1IRYon5q/s86OYQY
	 a1FoO6dYYZSzaLqfP1guDEHBnnSSNQiWrFNSjDWSupGZ27O0duT98orFdph3Wgk4Ef
	 Np6vXjElizYsShw+qQIKLwUvx2yzDywHLViKMP/B2aGxQyX2zcYfmv+YpIDAUtR0CG
	 7rjuLaJ4Ic3UQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55C9182231;
	Mon, 14 Apr 2025 14:01:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 235BE250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 14:01:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 148BE403E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 14:01:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IQ7pVvea75l1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 14:01:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 59E4240339
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59E4240339
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 59E4240339
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 14:01:33 +0000 (UTC)
X-CSE-ConnectionGUID: C2P828c5SbCq9f+47gNfbw==
X-CSE-MsgGUID: LETNIE+XSrO4L8nLQwIfvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="48813222"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="48813222"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 07:01:32 -0700
X-CSE-ConnectionGUID: RmaKUp4YS6iy1MHt3C7W1w==
X-CSE-MsgGUID: tYTk52GjS8OCsrWIzIZONw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="134880191"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 07:01:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 14 Apr 2025 07:01:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 14 Apr 2025 07:01:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 14 Apr 2025 07:01:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jv7R+oc8DlStYlziTrPwSdFJYSf+GIqL1PfgqKzibnMxrYvo9mnaS9ZE+m7dlHI+KhpgMAyA+Z/fCXugaz7qDEVfYcREJ6Qunvo8JBovHfGDuv7zja8WNuw2jwO5TRtSanrLQhxZho8MxufTIRBjWr6Am2soQ1ON+GmUbrX8ChxXrYkCwSYrBxsvbvXZURCUEJr6OFbrg5nbuHMS8YUYEaJqjZu579TOdUx2gz8ptyKTE5gbyazYEJFo8Dut4wAQlBt/w2JXGN6SBRUWtOU6hvTIixwh94sDIxkql0/R6NJTEtttIkRSPQ8jaRfDb2c8dYwBN/3agTAlaKCynqnU0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0F/NySuQC6FId7WEXrM/OysAby7vq74rc2Oma9JkXWk=;
 b=ClzoziEZn/37K8odvTi1pdfvS0tkWAQaLadRky63W8j2Zb96fy+SC/cQSuEkgm/YgbcD+PvYkbReGPiLWAL7a8xTyxvH8Nr3Bj6iz9yZKyi4gGMAkwZN8gL4Gz7PA3PCAgx8XUcIQHCOY+o8cjlGWMUg3moYag12un9earcAg364AtZVsCldjAYeho89AO9emXvGMZ6tMow4vQzv1OMkLuK04JVPH8b5DhYRmTnLhc2nymtjpBGOadjrLxquLE/v1+EZalS9J+RFA3W1SGml2O0n3FBDJckrljTS62EqQuGd8UumWCWiX39GRe+EwzX7kipZz9aKy9jrU3bcNWh24Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by SJ2PR11MB8299.namprd11.prod.outlook.com (2603:10b6:a03:53f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.29; Mon, 14 Apr
 2025 14:01:25 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8632.030; Mon, 14 Apr 2025
 14:01:25 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ixgbe: add
 link_down_events statistic
Thread-Index: AQHbrT2EqMMCeC2q1EKZKcjUmIkGerOjMNrw
Date: Mon, 14 Apr 2025 14:01:25 +0000
Message-ID: <SJ0PR11MB5866248BE5B93F4AEB55EE77E5B32@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250414130007.366132-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250414130007.366132-7-martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <20250414130007.366132-7-martyna.szapar-mudlaw@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|SJ2PR11MB8299:EE_
x-ms-office365-filtering-correlation-id: 57d9f1ec-b6db-47f5-884a-08dd7b5cd892
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ItxDVsBCdwnNV06MXzI4lsslilteaXqBNFPyH9TLxvWhUFMD+F5kWwRSDLAe?=
 =?us-ascii?Q?LNpf0rh1s72JWGYjIB8hFTE48aYDg4j7xqjnyI7ekkJLrJi9inV2mku9qtVR?=
 =?us-ascii?Q?wkHspWy3njmPyeeMFJCNBBGcJoWLZFNBqlatVr0PzSnTgQNm2btq69vykFM1?=
 =?us-ascii?Q?t+s+hYChMBlh5YkFujHqJOHznEszm3jVzHG9f0Wk/lJAXYzAvccYY3NMS2FI?=
 =?us-ascii?Q?s0AgyeWAJFLblieOUjvoGui32YeQe7vGZBSi8Mlb40eRZlL2+pHYZvOBQwuI?=
 =?us-ascii?Q?O0Eh8xJE9mEEy2Aoe/GSl9pA45oomfXw1qzV6J/1KWKBkO13vQ+IQtXYegDS?=
 =?us-ascii?Q?6oz5++fgDbYMO3e2GzAKRZxsaXuODITLWn2ei//uVusny0mdgCRFNLE3yHpr?=
 =?us-ascii?Q?Gi26awZrNbtz28W5UUFBj7BYdlfFzVCp65zj5RapVCG7d0+iDhljaIvX+0YX?=
 =?us-ascii?Q?mt+3LDHfHcCjmMh+sIbAil0KXX1LfVY4kEenFvQbwGEy8muy75KYVLXbCtwz?=
 =?us-ascii?Q?+5uGhv1JJ0eHBSKc073+2rxfGIC5URZaCLl+tYE4+/lmWoV2oamyRkvCTJwX?=
 =?us-ascii?Q?cMhg4MqFmxRtGtv/7VYGG6LBEAHeRBkQJXZZA1VhRJchk1VrYZCO9915ENRj?=
 =?us-ascii?Q?MhLA/YSr8sSNYcUbmlQa0oqonZ3vbtb1jLRngu868syjV9JkzGM8TAv/JHSj?=
 =?us-ascii?Q?9Mxl+wropzbQgmOJE7DwIGA1U2mFmOAww71ER8OxLhzD50eXAJVez81XOPkk?=
 =?us-ascii?Q?Z26iUoOB7ROueUrZzRV+N8GbM2pwxK9VFxtjYtkBdFsM7htCIAucCB8duvVS?=
 =?us-ascii?Q?6A+r7NO/T0UqGMumD8DZDi78GTsurigISRAzcw7ST+MH/BY1c0DOJkT82HCF?=
 =?us-ascii?Q?3UxqCipSVbomRC71ZhmWSstqUE1/5z00NYiT0XObmup0T1Inq//58Il3uRXX?=
 =?us-ascii?Q?qPzkHV4APAC0QBTH97QF4cDKxei8obIkPoATUwmz+lOpKKi7KQNR+tazNmmA?=
 =?us-ascii?Q?OMhZbK6vZylttDtShHxWpNFJDvaCndpX4bqRq/hz2UHWxOTTZhKMaeD6QRUB?=
 =?us-ascii?Q?B+zgGSTeTv1qnkt2CJYC+ePeKjXam+WXUrULr0wBIIrwO6ESr4RHo46T5pgo?=
 =?us-ascii?Q?g7ZifVAVieNcFr4mM2PP/vIuNO3CxSPARvA1wo3Y2alq8b5jzkh4c55rdyMM?=
 =?us-ascii?Q?CZhTP+9CDcMUQQ9RYyabsuqu4DxUWyLlRUpD10h5ay5ml3nh4TNnFP/Du9Pl?=
 =?us-ascii?Q?iuLY39Tc5HAB8GiRbc0161yAyqCUjCGb9u6tF3oOu9I55zkhPfefsr2DDdgN?=
 =?us-ascii?Q?SlblwSFMVwGzituEmxHQqGxMjcv6aDn3xNGJolgpUGf0W/5SHFG/7PKwL/rb?=
 =?us-ascii?Q?IOqupqULf237rc6XWpirE9BClLMotB5tSsHYHqZCxP103oMfWz6co0fE166F?=
 =?us-ascii?Q?9wM77rGHkjuaTS59SP2Z9CD+Kwrs/3mez+svOp794o87dRrl8Lum1w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ebhQRLxto2BwcVpHDwDRXWR8Tce7DRVNsaKhyzPF3fQV+LTiLDU3TPZ4kgQe?=
 =?us-ascii?Q?kw7us0Sx7tnOLY4Q4DOBvY1dROun8oFbZ/MyKP+sjw72e+oS/k8gthBDDauz?=
 =?us-ascii?Q?uJizbELxIYoXVWmHeJbeZ7UQ8wHtN2c8BMSFvkT9dOoRb/2n9EifRZJUW86d?=
 =?us-ascii?Q?gxNN/IGQNbW08mkyybHmxSa0Csp1D87DmLlWEE3orQQRjovxKYE8C3J4GIZA?=
 =?us-ascii?Q?1rM58NUj0g1kK+MRJlbrg/Zo43bx5236KzfRy0RGN+wAJseVrn39ph9J+NVG?=
 =?us-ascii?Q?Jg192L2ky5tw6IGupUgSi6+1WGF/+z7fFaTXkYTf2jkBJBVeqq0izQVfxMZP?=
 =?us-ascii?Q?jlwARseQmPNtvhWXAyUfdFPYf5L+YNqN0APOBqVukwD8rx7eT42OzhpSvB3P?=
 =?us-ascii?Q?Vnyu9LS26p5MjXCwD4JF7fHAin/eHJsEKwfTSXpFSDnBdggXR+cuP/h/ld+d?=
 =?us-ascii?Q?yrmCy9H27UrPTxiuvhgYc41r7D/DQz7a4vuOV6/IS+C4tzSgqq6j22Iof/Np?=
 =?us-ascii?Q?Z/Kw8LxtiDN/w2KFY3NnTh9Z1499ezfKPU7woWxXCFLfb6tJs0DZ6AHxi3iY?=
 =?us-ascii?Q?EwVU5tx/YngL0KTf5k/6zq9OJuPt044PTbmow2UbRkV/BAAXiGRRIyVm00yO?=
 =?us-ascii?Q?Uusnqd5yZ+VfqLYheaR7DxrXF4HttF0B2GKLgyxTz13NY17NiXtiWITCf4Lo?=
 =?us-ascii?Q?DcY7fR3jlZfauaiJmGRi66TRDd9jgb6XvzI4CowwS06qdL+C1Jgu6HPRlosj?=
 =?us-ascii?Q?fGVqszNfc3VQ9roRbO/HlkgfFye4mHqQHOuNR7O4Al0okRZJtCSh8snpsNkC?=
 =?us-ascii?Q?ApN/SQSRyf/yPxF4CU5SSCXPTbZ/9GhQeVlaht+dFJEFyosYJ2pAE5Mys7ux?=
 =?us-ascii?Q?n1AmWvSmL/S0PVIMVNr/akz2fT8cA1bl/zfuCdEqgRzCkXkr72/pi6rIdlq8?=
 =?us-ascii?Q?YtYBikBcLAKmGQ3O4jMQlNwqJ0ZQa3mcNSazw46MfivlZiMCf7QGstYF3vEV?=
 =?us-ascii?Q?4fTWTTZHLaknHR51cg8IIBDnwh+1MRBqn6+TotURD57l9i6GYZV8lakflgxQ?=
 =?us-ascii?Q?Kz7RmZ4Z9B7DdYFzQa2Poa/gbRnN2WtFT0Rp0qlKoEnleJeWvDZQh1chseg2?=
 =?us-ascii?Q?/aHH3PfUvzg+AyiqDjd7uUEy4WQsyRRMDvncZZ+ptNMdgTdTcmYDMWk7KcJH?=
 =?us-ascii?Q?05xl75Be+wPCXmUgu18eoQLVEyinCRx+rOzJMYwXqnK8tNxAlQI8OcWSwzKj?=
 =?us-ascii?Q?Qz98nvjB/U2FlYChz+KhKn+5xc3M4CsoMIjeX82tFnQRYM/J31SC6yf9BSth?=
 =?us-ascii?Q?jr7YcM3HNfnpKYgn3t1YTTuXRVyBwT9x0yY4sU1X91nGfBy+7ISauMQoE236?=
 =?us-ascii?Q?mOUVOC1Pm74KyNCAvWG/ep2+75XohwTd5oONNYItTzMAdUgAy2AnAUnSEF1S?=
 =?us-ascii?Q?FOl9PUldrDQLJec0RzMQDPHaQdEUopkYTaCp4LLSqLBEj/GvX5THinWPg7v/?=
 =?us-ascii?Q?uXxXncj8k2Pic/v68aevq9lBhLNlVa9OteBtsYrBmCpFNKzwE0VsICQhp95Z?=
 =?us-ascii?Q?i3CXVR6JalSnsxR8UipgzptVqW4o/HBF5UOnL347plLpg2w7GJZlC1HbHRWc?=
 =?us-ascii?Q?ug=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57d9f1ec-b6db-47f5-884a-08dd7b5cd892
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2025 14:01:25.6709 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WSLJDaUjFBtHCDJLWdH30G8engZyiEh6JnoPCyQcxwKrT+vvOW6xvszVfv97Msz4ehoMG8zWtIlz1gB6Px1Wn+ch8ixYtlBU6tfxM3HfE40=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8299
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744639293; x=1776175293;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QbunPrXcziCaX+vqPJIehOOBsFQqgEB7Q7vYeJ6U/cE=;
 b=dT2nNXfplkkUcHBcZ1PRHHEABstYP7QKp8kWycMJkgkonxwMnHe7KbRx
 6IFOknK9+aBQqcGMqhtouZBA2qcwpjrZ4K6jScdAytIKjJ+lITJvyNVEp
 8E9odeRfN5MfnIr/wQ36CKD+xrZ6NNs9rzVSq4exeUMhq5XHhx0dnaizy
 6jUPGh2beAsHGY61PYa+GRf2FSQUllaHIuzMSiSu24Gt70KGT0hKnOJ6V
 Ffj2gUdXbmjpTdaNPwmMaGI92oAjC936z4UAEZ+DY1ynkPRQ+f99iYOxb
 WhVl0tzKzqoRt5ioSmOr3wZ4V1FzRNlhnAzmxqn0tXIHyS+9aSHbIDh6L
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dT2nNXfp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ixgbe: add
 link_down_events statistic
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
> Martyna Szapar-Mudlaw
> Sent: Monday, April 14, 2025 3:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Martyna Szapar-Mudlaw <martyna.szapar-
> mudlaw@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ixgbe: add
> link_down_events statistic
>=20
> Introduce a link_down_events counter to the ixgbe driver, incremented eac=
h
> time the link transitions from up to down.
> This counter can help diagnose issues related to link stability, such as =
port
> flapping or unexpected link drops.
>=20
> The value is exposed via ethtool's get_link_ext_stats() interface.
>=20
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-
> mudlaw@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h         | 1 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 9 +++++++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    | 2 ++
>  3 files changed, 12 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index e6a380d4929b..7a8b4b6053c7 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -743,6 +743,7 @@ struct ixgbe_adapter {
>  	bool link_up;
>  	unsigned long sfp_poll_time;
>  	unsigned long link_check_timeout;
> +	u32 link_down_events;
>=20
>  	struct timer_list service_timer;
>  	struct work_struct service_task;
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index f03925c1f521..e2c474209114 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -992,6 +992,14 @@ static void ixgbe_get_regs(struct net_device
> *netdev,
>  	regs_buff[1144] =3D IXGBE_READ_REG(hw, IXGBE_SECRXSTAT);  }
>=20
> +static void ixgbe_get_link_ext_stats(struct net_device *netdev,
> +				     struct ethtool_link_ext_stats *stats) {
> +	struct ixgbe_adapter *adapter =3D netdev_priv(netdev);
> +
> +	stats->link_down_events =3D adapter->link_down_events; }
> +
>  static int ixgbe_get_eeprom_len(struct net_device *netdev)  {
>  	struct ixgbe_adapter *adapter =3D netdev_priv(netdev); @@ -3602,6
> +3610,7 @@ static const struct ethtool_ops ixgbe_ethtool_ops =3D {
>  	.set_wol                =3D ixgbe_set_wol,
>  	.nway_reset             =3D ixgbe_nway_reset,
>  	.get_link               =3D ethtool_op_get_link,
> +	.get_link_ext_stats	=3D ixgbe_get_link_ext_stats,
>  	.get_eeprom_len         =3D ixgbe_get_eeprom_len,
>  	.get_eeprom             =3D ixgbe_get_eeprom,
>  	.set_eeprom             =3D ixgbe_set_eeprom,
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 467f81239e12..cb5c782817fa 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -7986,6 +7986,8 @@ static void ixgbe_watchdog_link_is_down(struct
> ixgbe_adapter *adapter)
>  	if (!netif_carrier_ok(netdev))
>  		return;
>=20
> +	adapter->link_down_events++;
> +
>  	/* poll for SFP+ cable when link is down */
>  	if (ixgbe_is_sfp(hw) && hw->mac.type =3D=3D ixgbe_mac_82598EB)
>  		adapter->flags2 |=3D IXGBE_FLAG2_SEARCH_FOR_SFP;
> --
> 2.47.0

