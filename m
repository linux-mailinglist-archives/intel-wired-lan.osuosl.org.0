Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKw1NV0b6mmUuQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 15:15:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB6B4529F2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 15:15:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5184404DE;
	Thu, 23 Apr 2026 13:15:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GPULsWISscLp; Thu, 23 Apr 2026 13:14:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC7A540546
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776950099;
	bh=cr0peC+hVKT5rF0XbMrsjKCpU1VQ8u4pkxnYsBt+yC0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KmRDFMvHYUJU5hwAUZy5VUoNgGYpOlxG5WFVzfx12nZsFOfFF6cn6kMJxDyx/gFzd
	 3Laq4QEh9GMa2c/HOiPX2tAiw6OPFjmugXaiFk0caXaHHGgJ7XoIejmLmreSIYkLGD
	 3numH5ambQVofvsahi9X/lgoqB2QqYHPwWDxRk3kFALAQTca8jnSzWGFsQtvB1cGM3
	 EexzPVWG/yQTcFaVeyqsJdhf2KJ2vKD5r/41H1zxg4sT+/LgKwhxy3K012j2GYwARm
	 NuE8q7EIAXkJLoRW5eIdLOJttTFHxvsoUjamj7q5Sa9bRveZZltiiCTUmGxymX44mb
	 lVIiVELUHesVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC7A540546;
	Thu, 23 Apr 2026 13:14:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 97F42206
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:14:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 88D3E60866
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:14:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0WyzeHQCR133 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2026 13:14:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C616260E8A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C616260E8A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C616260E8A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:14:52 +0000 (UTC)
X-CSE-ConnectionGUID: DhSJ8xpEQv62ObN5kCXwCQ==
X-CSE-MsgGUID: St1nfSwZTTGS2mjoPZdLDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="88224156"
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="88224156"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 06:14:51 -0700
X-CSE-ConnectionGUID: mMzblxhsS06IrfkILAPuUA==
X-CSE-MsgGUID: 4xn7/sEBTBOeAtAARipXUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="234441902"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 06:14:51 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 06:14:51 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 23 Apr 2026 06:14:51 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.46) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 06:14:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jb0TJGIGia1SY7Tpy/Wqu9wQuEGLyvV86CfPilJDB4truIlEEhF8ujKN8ZmGEDq8ADx0tLjyBeZmpa+KgJPBNnx/RFD/6t75q0bAwuFR5RakNBkHYaOcR5/AWu6sbGy0KqCz4lUi0YM5+eXc++wMy574Psv4oRSOm9FK1coogl9SilCjwJKeFRiTvcmcpcwaeZ+2pEvQPUKN+S4A0PMngZyXrXrtxlZYU0DgwkiBEEc1JOggeEsSob7/ySDD95wykS6QEBImiE+J6uSSDMv973WAxoDG6YPo8n+dFKAK/xOBzBZpmXtamVlpVnSLejBsMpIaNc8toRqMB83dfuIV8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cr0peC+hVKT5rF0XbMrsjKCpU1VQ8u4pkxnYsBt+yC0=;
 b=IDdTiAtRm+AOW8YgGZoC/v4jt6UTsq9O+qwk3PV5QObdFAXLrrHOMBHcBz0nnOT2ltVqjeNNmULq+6ky9cqMO4F+jBDCP8Epg7NIfE8PHrfBbBPirnI1Ze6V7BXLo7JWtSuqVD7uW/3qJoFpms9hYvn7r7OegQnqiGIYAIXYtS1dNEaNoR3PKrjdve23aQjF881PMYAfyI5BvGUCSCOH9t94mCwzN2B+YWehHx2wMHf9XWKSflMenaW4NWFJpPGcaVTfzsOeyu2XH5+Tpu96YhTGUConqsUiPLT9aRbFsyH2Ls0vZWvSycL+Mty9gRRMXyboXH/tplSXe1aqpaO5Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB4891.namprd11.prod.outlook.com (2603:10b6:806:11e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.21; Thu, 23 Apr
 2026 13:14:47 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9846.014; Thu, 23 Apr 2026
 13:14:47 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>, 
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [PATCH net v4 3/4] iavf: send MAC change request synchronously
Thread-Index: AQHc0yHMP4mlSOP0pUmiYPi1PTElRrXsn/hg
Date: Thu, 23 Apr 2026 13:14:47 +0000
Message-ID: <IA3PR11MB89864464104A225EE9675600E52A2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260423130405.139568-1-jtornosm@redhat.com>
 <20260423130405.139568-4-jtornosm@redhat.com>
In-Reply-To: <20260423130405.139568-4-jtornosm@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB4891:EE_
x-ms-office365-filtering-correlation-id: 3d9fb0a9-7197-479d-ad82-08dea13a4af8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: Mcizg+A9AURjTq5hX6Z4nV2pEVdRqLmjiunun3t1m/oXsYjfjHQuq18a7cxskSgjPPYEGRd/ShqGfpUAtqu/ZD2IHlKsIfepcLCcFk7JlGaWdudmLaSBMAHJd0ZLbRFfH4WL3QXb4cxzyCqIaBIL57NwzhgGdWSMP0ykZ82mz8+c05O5lIn+NfeCOf9k6GyRiDhG27ReNLihBenvAkYFMyMNKmkVnQPfGipYpOrueNyKwxZKNOP9S+qF/9UohEv9Nu8Nx+jCQkolN/5Dsb8s0rDJmS3iiV0zPNJ/WKWGJSxGo8pV7JM8o32ZT6HWWIk4pp5EJNctv9sRMvU252+a8lxY+PJs+4ash4sxEY5/WmuVm9PtJU40Kymz8t1xh2khJ8D1wXt3euxd3oLfcfY3lIRw6sUBOAA+B/gKLlwKDdZ9TtSIAssNfu6hVrtCGgg+cwpJa7jVx13GSHpQqHLqHFBOtMd3hF8VQWndtNT3Z0QhiqqJFnKKaM6mMMXTxkCz+WYmMmw5Wu0DPVAyI6uag69ffrxfElZwY2ARwRojeITfIxKdS1ZIH0CC1SmzTqz8egfOpqYAetOKCYwgZ+oksZds+EeKKneSfl/YCnRXnsSXbsFWLwKE8yb0pVTMECbDyl5Gcv7HQ/OEQm+PXy/vx8uIdbavQAjVyz+KFCd7z9LcaYiwz1vg/PXPdqHgHcWfNwvvNSGw1OTR0NtgCjMrxSrMD789RO+UMzrajPYVl9g/Nb4v+yYgVq5iQ/vHhOzfcxP7kyuAoQv2+6SlnsRpR6xz0iJ6M0t3YXgq/5EdlfM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sTPPK0Cd8alYDTexMwrrfS9Jki4rd8Y5xhjkWL6gH9cRePsNUcqixL/NcWB6?=
 =?us-ascii?Q?2NZ7xRhFi4HJffOKM3WPCTof0gEkYoWv3C2UFW5lvQ7qOhK3X2FGm0sHDOPX?=
 =?us-ascii?Q?MN/3Pa5nYur46NFgnZTPDNtpnVXr2UnQ1w8Zcf7l8g6tIOoMnXxILTFbrHgD?=
 =?us-ascii?Q?uj7XSV0yKLFKQUwXO4jNOxLfT8aSNMEpK7mGn0LcXKLqJe8xRtnmaDLXm9FC?=
 =?us-ascii?Q?mu3WTj6LvLShnPoH6ekZ/tOgeOYqnMcvtBoXyX4gJkWaAS10FwGN4l5Cs/Yq?=
 =?us-ascii?Q?GlrUCm3B0NSJiqQK+V5aCyg6WsPbljpJbiXCAuq+SfEjoUPMIfDE0+rcGYrz?=
 =?us-ascii?Q?Xxul4WhG/gxpUk5CYSXuP9FxxLFr9nWnmqlbzyZ9oKUpgM3f87G18dpiSyef?=
 =?us-ascii?Q?R6HY3zjFcTVqc2n0zch8oBfpTqCmZbEkYty82GBj+edT3xaGab5PPcjQow1P?=
 =?us-ascii?Q?lnhDUpRjuF0fhC6VbqX56/Yz6XGNndqM64nv8Elg10obM335T2dJrYaaNcr4?=
 =?us-ascii?Q?Ma/L89Z3B41tgF3Mfb5/HWIL0Vu4DXfj1ZKSHrU5hoprgxzWA4L4fwljQrzL?=
 =?us-ascii?Q?NzL8biqOT+SjpfWnKZ4ZHiJFxG/F6J+gJHisY+/bKVPG7JqDrecJIj4CCMxm?=
 =?us-ascii?Q?GjGrsfJOla2RX3BhxduGM2L+2/tmPZfnDllx5k/hInM63Ek42LBpKCNMRfco?=
 =?us-ascii?Q?2HZTrFcVY0YU6uag+p4sIGSmvHMS608cFZ616mo508GLiMqdkToqPhP0j6sQ?=
 =?us-ascii?Q?zr+55F+3ynaJ0pspgTahKsEFKRVFwqFRWAiaxIy89E/XY+TLCtag3e9sEQke?=
 =?us-ascii?Q?6ALuzOwAS8JxK/fTUUPDpMaVG0ToBy1xKIuL9ZkM+kjWbjKbgO7+s6ivoiZJ?=
 =?us-ascii?Q?jr84MB9Ahqh0xrCdXpH4A1UU85xb9HSdgfLQrd8I83W//I6F202GcXEhSHP4?=
 =?us-ascii?Q?pP9xYchZKh+YakWSMGDZxbHA5HMw6WfbkpFRkBq79otUn5Op+c9Ef2IO5OBO?=
 =?us-ascii?Q?ajNvNpvqjDdaefDw7AE61f1YllmFUElQNPL+5CbyItlM3prCdnv/0woTDQdc?=
 =?us-ascii?Q?D65s7Fq/h8wGdjY1SeqAzgxhQQW+FicU93ElwjP0KPNuxy5UVNMkOnRAmnRp?=
 =?us-ascii?Q?M17yMSYDASF5RNyCHSL6qWgfoV74/Hj7k+7J6U31WR0l2Imlm6RSF+ZRkW+e?=
 =?us-ascii?Q?sce8WB4jDERWJER7QEuGYGszmliScFdJnXXvzqfk4+q3PC5R2Gur+SIinIqb?=
 =?us-ascii?Q?f2xgzyb8nKQQAGa4X6bSC4fwDMn1iPvAbG3FfX9IJbrO4quGE4dinIhvG56Z?=
 =?us-ascii?Q?7Tv4IVTzGBo+zbpysKP2AKrVDcmGbTGmAp20h6JUuZB8VP5i/4AvQaMwYo3P?=
 =?us-ascii?Q?QirJlKlKtDaXQkc220A0fo2b1aZT1yKvlexxwexYALZN+tR5eHxFNNhOJUeq?=
 =?us-ascii?Q?zO6OBKl7WKGsTRcJgB6FpmdCcyIWkF95eeW1qklLLAruCEuz+a07GSyydpPB?=
 =?us-ascii?Q?wYgOxUMSzoTu9LFRCcKSr20k9A7gxJlM23HQJvuiwOFYWrt8wubhLeXZLBnE?=
 =?us-ascii?Q?OmHmPyHxXxURQVd3wnMq4fUi7C1otBuHn7KWwSzlK4mPv9CeO92f8+QgY42C?=
 =?us-ascii?Q?YYo9fql9LP1pmRAylw04hDMt2bAc9Z7rVabL5n4LQjQJ5hTuF0OIZDja4U8c?=
 =?us-ascii?Q?ditk7/QHwopFa/2nZ3AMF1WzQbTwKTgm/aBhsOs6fNwFtfFRPqwWTA9v1qsc?=
 =?us-ascii?Q?b2NVYSK/7vW2ApqHb0vjsXY0vPEazWw=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dtQrSHGZj66nzQ2HDH8C3aCK5AkCj9X+2fpPvqOMYJm5N333zs9n7GOBH8wgcq6TdFKFa58q9wf1FQApwvZht6YA8auxa3u5f02iqQudcu+W3CR33B21wSe232xVX22J1pcQvht8QSuuFiIy0cRct/VjMVLHDpbdmgruUqHY17kKtAewFqNNRRhWU+YMEqokYF21BbkSRoRhVJycpeNJOUvGe46+MaqVbLgz707Kdga+9VCac5NDTsLTs4rZ0ltPmz73K8SrJCsdzek7BwUMXXB1JyXUIROkkDfIpssH7X+7f+icZUVoRLoOdn3gsOu4c+AgTpP+34Vm5kVqHG57vw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d9fb0a9-7197-479d-ad82-08dea13a4af8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2026 13:14:47.0699 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VSgAPQj1L4/PFLRaB26q7MqwUmC/w8uTvwC6b1mIvLjmQ7lgQ2QQCB3eWNZVfFPwtHQYCI59mP/GbXfzge4w01hh3W/EdAGfpuzuAxNtOCo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4891
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776950093; x=1808486093;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hNpZCBFtL+CPADLU/E7pKkZe7w/eRq45b2rjNN0AdzI=;
 b=EI4STJCS+3SGPQo4a4p6U884d6koxrGM6A2CgSXwH74m2kwiHpiOaBP8
 Yefn1b7gZ7A/Wpj9tcSnCGtONsCWXtM7QKzlIOmM265tBCL0n8flq0LIs
 E9BaDWtybDe2yv/bMEOTFPI6NDE2M/bvVIJJqDdAL6lJVo0+L+e7IlRp5
 0uZxXMtEEXfkqbX+jpTtzLT33l6EDgurv1NK0YqbOgAxF6mgDAr/HOPtu
 KyBJII3AYR/ixn5IJXPVb1eJv1P3sLVnLKchhsbhtI3kfR2cc7etpGvjl
 jRy0c3aNL+aa5ZOyfRjEW4D9eku4uHGVPcSccJwcu7fwzs90Gyzlx7cWS
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EI4STJCS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4 3/4] iavf: send MAC change
 request synchronously
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_TWELVE(0.00)[13];
	MAILSPIKE_FAIL(0.00)[2605:bc80:3010::137:query timed out];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 4DB6B4529F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> Sent: Thursday, April 23, 2026 3:04 PM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; horms@kernel.org;
> jesse.brandeburg@intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Jose Ignacio
> Tornos Martinez <jtornosm@redhat.com>; stable@vger.kernel.org
> Subject: [PATCH net v4 3/4] iavf: send MAC change request
> synchronously
>=20
> After commit ad7c7b2172c3 ("net: hold netdev instance lock during
> sysfs operations"), iavf_set_mac() is called with the netdev instance
> lock already held.
>=20
> The function queues a MAC address change request via
> iavf_replace_primary_mac() and then waits for completion. However, in
> the current flow, the actual virtchnl message is sent by the watchdog
> task, which also needs to acquire the netdev lock to run.
> Additionally, the adminq_task which processes virtchnl responses also
> needs the netdev lock.
>=20
> This creates a deadlock scenario:
> 1. iavf_set_mac() holds netdev lock and waits for MAC change 2.
> Watchdog needs netdev lock to send the request -> blocked 3. Even if
> request is sent, adminq_task needs netdev lock to process
>    PF response -> blocked
> 4. MAC change times out after 2.5 seconds 5. iavf_set_mac() returns -
> EAGAIN
>=20
> This particularly affects VFs during bonding setup when multiple VFs
> are enslaved in quick succession.
>=20
> Fix by implementing a synchronous MAC change operation similar to the
> approach used in commit fdadbf6e84c4 ("iavf: fix incorrect reset
> handling in callbacks").
>=20
> The solution:
> 1. Send the virtchnl ADD_ETH_ADDR message directly (not via watchdog)
> 2. Poll the admin queue hardware directly for responses 3. Process all
> received messages (including non-MAC messages) 4. Return when MAC
> change completes or times out
>=20
> A new generic function iavf_poll_virtchnl_response() is introduced
> that can be reused for any future synchronous virtchnl operations. It
> takes a callback to check completion, allowing flexible condition
> checking.
>=20
> This allows the operation to complete synchronously while holding
> netdev_lock, without relying on watchdog or adminq_task. The function
> can sleep for up to 2.5 seconds polling hardware, but this is
> acceptable since netdev_lock is per-device and only serializes
> operations on the same interface.
>=20
> To support this, change iavf_add_ether_addrs() to return an error code
> instead of void, allowing callers to detect failures. Additionally,
> export iavf_mac_add_reject() to enable proper rollback on local
> failures (timeouts, send errors) - PF rejections are already handled
> automatically by iavf_virtchnl_completion().
>=20
> Fixes: ad7c7b2172c3 ("net: hold netdev instance lock during sysfs
> operations")
> cc: stable@vger.kernel.org
> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> ---
> v4: Complete with Przemek Kitszel comments:
>     - Remove vc_waitqueue entirely (not needed any more)
>     - Add named parameters to callback function pointer declaration
> for
>       clarity
>     - Simplify callback signature: add v_op parameter so callback
>       receives the opcode from the processed message to identify which
>       response was received
>     - Optimize polling loop to single condition check per iteration
>       instead of checking both before and after message processing
>     Address AI review (sashiko.dev) from Simon Horman:
>     - Complete iavf_add_ether_addrs() error handling
>     - Skip non-virtchnl hardware events
> (received_op=3DVIRTCHNL_OP_UNKNOWN),
>       these can cause false completion detection
>     - Complete rollback for local failures (not PF rejection) reusing
>       iavf_mac_add_reject() to restore the old primary filter
> v3: https://lore.kernel.org/netdev/20260414110006.124286-4-
> jtornosm@redhat.com/
>=20
>  drivers/net/ethernet/intel/iavf/iavf.h        | 10 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 70 +++++++++----
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 99 +++++++++++++++++-
> -
>  3 files changed, 151 insertions(+), 28 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index e9fb0a0919e3..78fa3df06e11 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -260,7 +260,6 @@ struct iavf_adapter {
>  	struct work_struct adminq_task;
>  	struct work_struct finish_config;
>  	wait_queue_head_t down_waitqueue;

...

> --
> 2.53.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
