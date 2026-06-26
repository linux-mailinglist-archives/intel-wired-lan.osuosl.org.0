Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /JCTBRQgPmqKAAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 08:45:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0006CABB5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 08:45:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=2zrPM6rI;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF215821AD;
	Fri, 26 Jun 2026 06:45:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WkOiKZD6-v3h; Fri, 26 Jun 2026 06:45:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A33D821A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782456331;
	bh=g4iUZk+RS9bLMcSctx50whUPmmK2swVZxPR47H51icA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2zrPM6rIXROnqJ6AlSJM6bqZuxjRQaApNshONdvYBZ9FHMzr/ovSjr9FMf9wi36xj
	 0LDgRmPwrnJlI/nlPBDW6+sR3zlKQjwJSiux31b09bSiddS4i4mY69EJU4YJ5QRTvC
	 ijIhzs22e7PsY3U5eebRowQfyRa2QGtjQZsGoOQRgY9uhWBPY0P8xd2IvpjJSTBhlM
	 ZyRYKDHaGCidKxtcGqv4lIDav8TLlGmBcO53E6bfJaTegp0bQgBh4PPOOoNHiBQkfU
	 njcYcyf+edKS3rJXoMChUPSZVXl0N9L6PV/80v/RSZMwMB5Syh8XzWA8hEx7I+llGh
	 b0vkLvuOhMB/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A33D821A1;
	Fri, 26 Jun 2026 06:45:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A8931369
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 06:45:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 92330406B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 06:45:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 41yW8IwGzjo2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2026 06:45:27 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 02AE54016D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02AE54016D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 02AE54016D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 06:45:26 +0000 (UTC)
X-CSE-ConnectionGUID: hDb+uLbbRyiLdo3dH7iJdA==
X-CSE-MsgGUID: PWJsOuT5T1qo0/nd5Lhlxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="87151241"
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="87151241"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 23:45:23 -0700
X-CSE-ConnectionGUID: S6za2vdvTBGksHKdOzWRtg==
X-CSE-MsgGUID: yIRKqLWGTiKSoMTp7Qmblg==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 23:45:22 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 23:45:22 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 25 Jun 2026 23:45:22 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.66) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 23:45:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D7T4Wxc2/OmGC61KmR/liE7gwtRyeTMdx1/vzoNdWSc3Rd1Vxo/zk4WaiSq50L6YJzflElPChqVpYBWal0KAfbO6N1N20+gxCC+Iv19IfxC5da9mQGy0VqfywYi/hHzYmjTPvE3+rYq859Cb9vT5zU4bAMNDwPN8nQDJp6uz2bYWghKCMWxQAFhtvVWg52ovFGP0/3ZZPp17MFFQW3j+9R3B157ip5xiIwHdGbOBgdiUmOhqXyHUg5cSKVL4fS3FM9r2CbI4IMeKWsanQo2VLD92MmXtg0A8R5UDLeLSaYXrhfjgCjQA/ngGlx4wtDOcRi3Zpc7wnntdno2I6ANCtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g4iUZk+RS9bLMcSctx50whUPmmK2swVZxPR47H51icA=;
 b=wF198Op7CqheD9lp+ZBMRIQMnnGjGKq7QeIv2uPKDrjAft4RjV9MkxopMzYBk/HqxAVOS0qTrpl7qZUgh+aAPfgMPYZNnJ9CIXyieoqzvacB7kmU6ILiEu3XmmUeSjFlcSVOxhF3F8ZIUMl4znr4lVALhK3D5c6ZB9GcfuRfEnNfdLAzDEeOP8sEL2/jsMLS3BZyHpsT4NfaOOOQHZyCiZq6N1hZJCWfjQf+3JeNsX2qO7y8uhloce/PPYzg6JwOBK1xxYVIaE/NT4yRCJlRsuoFIIe6M3ZCNkfnfzuQb74ZnAfNv29zBkI7LPEukoCoYczAAcEJdYTxafdL1sBB/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV3PR11MB8484.namprd11.prod.outlook.com (2603:10b6:408:1b4::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.16; Fri, 26 Jun
 2026 06:45:14 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0159.016; Fri, 26 Jun 2026
 06:45:14 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Pengpeng Hou <pengpeng@iscas.ac.cn>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: propagate ETH56G deskew read
 errors
Thread-Index: AQHdBLq0Sqknd5/1kE6xpzDSa06qKbZQZK+A
Date: Fri, 26 Jun 2026 06:45:14 +0000
Message-ID: <IA3PR11MB8986ECF123D6E955AE4FF3BBE5EB2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260625030305.85304-1-pengpeng@iscas.ac.cn>
In-Reply-To: <20260625030305.85304-1-pengpeng@iscas.ac.cn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV3PR11MB8484:EE_
x-ms-office365-filtering-correlation-id: 894dcc44-7031-46ad-7ef5-08ded34e7a26
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|23010399003|1800799024|56012099006|3023799007|11063799006|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: RS0FYKiyx+AecrrRuNHkYFIQIGItJWykXJVnSPxoneTTA5DOc1sLIxD5ZqkNQrKj3DPwQeDDuGmyJ5ss/+Pq0ydPjC3U4kVezwlcFNe1hI44jDHiKBRBfs/fbqTV3WXY5pVKdRrgnHJRuLUashc3ZxxqPEJ6jlKu57vuxLQsaCc7YhjoxPHD9Kvz6SGEoGupFES15zaoZMy7sE1YHRlqvB9Ae7xl0YrebJwpaddH4FMk26vSoKlCw3VoKc3TUVlB9A7nJ6vdqB1F0+qYuEEYZhfnS2qXdyt6a2ay9y5m/zVfTwxiAX9UqCm+W4VrJ55dKxgBhoa5uVOdTxVZb+nzoveyQbmVOutw8p0cExtFp5BERLf1nd2oUJemZQ9phO085rdBFgkP6igG/BHW80tE26OgJXlLx4L5ed7dtnz57/403aqlUbviZrWH2X/eOPYVay8bz+n45aAOcLjlu2ERnKPrqVRzeKPQZ5REHGQWSgNDMSqwK5pRkI114xGxJnvw2s6yLGNHFIKADTRceddodgTDz5WPqqy+7WRyUIZ2Ib+HtNGE4h5YpAj89LMeERB1oEadVJVS2B88M+GqTs2+KuIQ0jMmyLsIiZm316veLe93q+tf3t587fqJxWB1iP0UoiWDF46i94QHOeyomF/a2XuI39Hu8UQmR5XA0eAyvYDKcOsF12jvTN0cOb2qY9L+AODcdX2GH1QkTMZsO19pcA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(23010399003)(1800799024)(56012099006)(3023799007)(11063799006)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e6XnzdX5su0ChZW2h77rS9/nhsN5x/nmolDZSvXRmVnLxjv24IQcgc2k/jNh?=
 =?us-ascii?Q?ReaIfEYAsMQ5T2K1ge4YCfv7JIfRW3SBBlSpJbWZ4/TCGOoCkDyW+7bMxKUK?=
 =?us-ascii?Q?F2g1iCl7C8I7l2Eqx72LDtGpMbYpWI9lX83oThfFjIdKqV+Ok7iaiVU03hQi?=
 =?us-ascii?Q?58byRxmRDDkAPTue1Rf6Kbzj52SkoZR9Rl9B93OW8q3k+GBWujBz/w/VbTfg?=
 =?us-ascii?Q?qz0gYRMbrXA0tfRL3/gAc+014SWEiYfjPUFORyN3Qkq15/IorULQzWwCZLTh?=
 =?us-ascii?Q?BJGllNXOsyXgH5OwkS1UqPR4XeJXzzx/NX08YYQuzGSEbUj+dRAwl6VAM+mM?=
 =?us-ascii?Q?0rzcApF2hpGkYMR9wdlQnAOkY9ZLzxTZfjitSFij5Eogtd0Ijek32GYZ8k24?=
 =?us-ascii?Q?mrwt3CETpMZm2RKeTX20F4Ubf4Awp2vw4UbHpiL0irZfesGfHAx1OSp3kxCb?=
 =?us-ascii?Q?3DX1e31xGssSjqthYezSKTJvqopW1aFEhUoBjvhy81yFhXNl/iBuFBZ6r9YZ?=
 =?us-ascii?Q?gLpCmDxQEaslZ+A1lvwWxaL7Ftf+tlCzQRdf2WoTM7FG757DekjiYZm44A42?=
 =?us-ascii?Q?du+QRXkPBicOYul87ZcJA7JnInMgPPebt6qLvks52zqSQZmrgMf3BgSnSo2b?=
 =?us-ascii?Q?lU5e0KMjKnw/oCF2qoYEHvvs/Hv4ECJJkEuHirNGSyy0PeOEHJLR8ecI3af8?=
 =?us-ascii?Q?21B+AKnF5lTXQmxa0zEt3pOiVhcn1Waa4Ty25aI38pUF/wDfCp1Z3wB4DVQ4?=
 =?us-ascii?Q?wOCxcigDUULSim3LyEHLSy4kkO+6+CX4Fd2/EL8kBBy9dTnSL+J0AQYO2Nsu?=
 =?us-ascii?Q?rKRPzXUCS7boFpmHnyzBHhIxVl4+nQNP63ibgNqyKrKoq2w1wdlw73FuhjCV?=
 =?us-ascii?Q?4dFvmkieHSXbevpGwJQdMjFkgYXH/zd6vwXqrTvnC5nPo6O6W25n41921lDX?=
 =?us-ascii?Q?Fwl9reR+IYv6aZexGLpp/tO3YRCCUQCwZs6P8zDqVg99BGIDuv+VmgWSVvkC?=
 =?us-ascii?Q?YQ3sbmSKu6h71Ur2lDy6G4RQTtV/M1YiVwmpRl7hh0ssF2C6FV8KgMOHCRKF?=
 =?us-ascii?Q?OpqMw8SlmJRKlGoxUR9ZiuQ/yQ1vwRzFfXbMpq3287X8QrUcYYQo+tehiggG?=
 =?us-ascii?Q?ilvm9vH37drOwJazLwbog7xMNP8/L6XLIwcJ1Dnc/pc5HqO8YWVGkcF5Ke/c?=
 =?us-ascii?Q?m5tb2v6VnevWVATbK6Dub5NAGYDdcY17xGGuI6LrVTLz+rRrq3lN/J1M/i7j?=
 =?us-ascii?Q?rI7D2WvyYldkC+heNSxXRH6gYQhPkfvTf9jq/LOuw5gCdIm8+CmjaNulahWs?=
 =?us-ascii?Q?wnY2assljZPIvYAOXZwBJZuOJsmb57krolyNbQ1GCQFWJFaYEk89Sm57/UoU?=
 =?us-ascii?Q?ly3HsajC8/QuaGXcuQrUnONnIV9NvtacyGJkFzyYqDO4p28FPT9aD3yFvcud?=
 =?us-ascii?Q?mXO5SXMmFNuIk709uGSfVT4W75C0AfdOXe7OCIRZV0to/nfwKbBiiU+9cCn0?=
 =?us-ascii?Q?JTW8JdODm6NFWGU6IxdR014NZLDC0XBxbYQ7phGSDNL1qvzxeNhQMNEYWi52?=
 =?us-ascii?Q?QnuT4ZOSis8PG9f4rtnOkmQcnKgwZciJMp5PGaQvqDxtKXn4OTf2GbBHn03+?=
 =?us-ascii?Q?tP3Crl3FKyKmq7jrovnVUEV5GQ+I+sO3WLDxTJuq5NCwnFeIALCS5JAbTqdl?=
 =?us-ascii?Q?Hh2fNCxs9uSqSx+bMjV//jp8zk81+5GcQEF2a1ykegY/w/0QjWIgBjsu8CvO?=
 =?us-ascii?Q?jCJq2UmH6qB1svrWaEm687iNLBvV/og=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: n2HSvbIuKrqwkN45+GY17gwhhGCMp+9UvxTxhOt5njZ3FnPr4vJZYXh4vefDiPpuTKKoRxLlexuckPCkJxV/oW7EhhhrpPwDsrViAyVZzWdMrFc7bqU2Qc3TPVDCQ4fHFAq/DQ+XbKv7jzviIlsHXUuqjD0nuqEUYcVFL0Oh1gALQPPpYkzYbaicxNRkcs3J7RgxFBJ+W1GGeMsHrTFS47q3JKQK/m3Gwz+SJEZ8OAiSg9i+E80vwhCsTiv8GxpnyMWykFpwHfhkBn1r+pk3GNZJRrV5o3RdB/KruMEsiL2aFl6AW31AVLLVrXVwjNiKgsC0tesFb7TNyBSvQmO6AA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 894dcc44-7031-46ad-7ef5-08ded34e7a26
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2026 06:45:14.2986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x2U6dy8U1jMqich9KcGrhUoA8MTKdICB0PjmdBt1DzCrT4tHXnm3uByZnCy/seKDzVohymmL8Qx2WVASII7xTUA9Fb4gvMCKh39k+Cae8aM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8484
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782456327; x=1813992327;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ram7a/MhXMBRriBi6/xD7dovT6/MQ3ZAhQE9Vr5aja4=;
 b=YJi1X6MixovYNxXk+vt/V401YbgVMV9YcwTB5nqWtKEsf/xoTvV0mjG0
 v0O/ntyTOnKbdBonyg8Yey+95mSqC8ytiwto2HA0iErCYwdw2lFpVoPWL
 C+fcK6oIrmWV9sdQ7/+WRyilhfCIdvKraMekH/vipPIRrh8opUifNyWCx
 9wTw2DwTxzLVQnQ4keLuYV6T2pX/a2NJTBqmN/bJHYk01m4J8C4yD2ytJ
 1aJEFrKg3tMeHv/cNEgFO4lxTlcn4DFG0s2mnE9S3z9T5wvKjAHxP90pW
 KPA+t70eL9JFlfmEwlWo1wqGKptMPbIRYex0yY5hSKrg7acDH4yCUT5Pm
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YJi1X6Mi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: propagate ETH56G deskew read
 errors
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pengpeng@iscas.ac.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,lists.osuosl.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,davemloft.net:email,lunn.ch:email,iscas.ac.cn:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9E0006CABB5



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Pengpeng Hou
> Sent: Thursday, June 25, 2026 5:03 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>
> Cc: Andrew Lunn <andrew+netdev@lunn.ch>; davem@davemloft.net; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Richard Cochran <richardcochran@gmail.com>;
> intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; pengpeng@iscas.ac.cn
> Subject: [Intel-wired-lan] [PATCH] ice: propagate ETH56G deskew read
> errors
>=20
> ice_ptp_calc_deskew_eth56g() returns a u32 deskew value, but it also
> returns the negative read_poll_timeout() error when the DESKEW valid
> bit never appears. That converts the negative error into a large
> unsigned deskew contribution, which can then be folded into the RX
> timestamp offset and programmed into hardware.
>=20
> Return the deskew value through an output parameter and propagate the
> read error from ice_phy_set_offsets_eth56g() instead of using it as
> offset data.
>=20
> Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

I recommend to add Fixes: tag, and proper net or net-next in [PATCH ] to st=
eer properly your fix.

With the best regards
Alex


> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 27 +++++++++++++++-----
> -
>  1 file changed, 19 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 8e5f97835954..bd2e31b816a8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -1736,17 +1736,21 @@ static u32 ice_ptp_calc_bitslip_eth56g(struct
> ice_hw *hw, u8 port, u32 bs,
>   * @ds: deskew multiplier
>   * @rs: RS-FEC enabled
>   * @spd: link speed
> + * @deskew: calculated deskew value
>   *
> - * Return: calculated deskew value
> + * Return: 0 on success, negative error code otherwise
>   */
> -static u32 ice_ptp_calc_deskew_eth56g(struct ice_hw *hw, u8 port, u32
> ds,
> -				      bool rs, enum ice_eth56g_link_spd
> spd)
> +static int ice_ptp_calc_deskew_eth56g(struct ice_hw *hw, u8 port, u32
> ds,
> +				      bool rs, enum ice_eth56g_link_spd
> spd,
> +				      u32 *deskew)
>  {
>  	u32 deskew_i, deskew_f;
>  	int err;
>=20
> -	if (!ds)
> +	if (!ds) {
> +		*deskew =3D 0;
>  		return 0;
> +	}
>=20
>  	read_poll_timeout(ice_read_ptp_reg_eth56g, err,
>  			  FIELD_GET(PHY_REG_DESKEW_0_VALID, deskew_i),
> 500, @@ -1766,7 +1770,9 @@ static u32
> ice_ptp_calc_deskew_eth56g(struct ice_hw *hw, u8 port, u32 ds,
>  	deskew_i =3D FIELD_PREP(ICE_ETH56G_MAC_CFG_RX_OFFSET_INT,
> deskew_i);
>  	/* Shift 3 fractional bits to the end of the integer part */
>  	deskew_f <<=3D ICE_ETH56G_MAC_CFG_FRAC_W -
> PHY_REG_DESKEW_0_RLEVEL_FRAC_W;
> -	return mul_u32_u32_fx_q9(deskew_i | deskew_f, ds);
> +	*deskew =3D mul_u32_u32_fx_q9(deskew_i | deskew_f, ds);
> +
> +	return 0;
>  }
>=20
>  /**
> @@ -1789,6 +1795,7 @@ static int ice_phy_set_offsets_eth56g(struct
> ice_hw *hw, u8 port,  {
>  	u32 rx_offset, tx_offset, bs_ds;
>  	bool onestep, sfd;
> +	int err;
>=20
>  	onestep =3D hw->ptp.phy.eth56g.onestep_ena;
>  	sfd =3D hw->ptp.phy.eth56g.sfd_ena;
> @@ -1805,11 +1812,15 @@ static int ice_phy_set_offsets_eth56g(struct
> ice_hw *hw, u8 port,
>  	if (sfd)
>  		rx_offset =3D add_u32_u32_fx(rx_offset, cfg-
> >rx_offset.sfd);
>=20
> -	if (spd < ICE_ETH56G_LNK_SPD_40G)
> +	if (spd < ICE_ETH56G_LNK_SPD_40G) {
>  		bs_ds =3D ice_ptp_calc_bitslip_eth56g(hw, port, bs_ds, fc,
> rs,
>  						    spd);
> -	else
> -		bs_ds =3D ice_ptp_calc_deskew_eth56g(hw, port, bs_ds, rs,
> spd);
> +	} else {
> +		err =3D ice_ptp_calc_deskew_eth56g(hw, port, bs_ds, rs,
> spd,
> +						 &bs_ds);
> +		if (err)
> +			return err;
> +	}
>  	rx_offset =3D add_u32_u32_fx(rx_offset, bs_ds);
>  	rx_offset &=3D ICE_ETH56G_MAC_CFG_RX_OFFSET_INT |
>  		     ICE_ETH56G_MAC_CFG_RX_OFFSET_FRAC;
> --
> 2.50.1 (Apple Git-155)

