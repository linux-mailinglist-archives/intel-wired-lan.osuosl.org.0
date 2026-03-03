Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eWhsEpAQp2nZdAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 17:47:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 711271F4117
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 17:47:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDB376139B;
	Tue,  3 Mar 2026 16:47:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wZPThUcU7L0L; Tue,  3 Mar 2026 16:46:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB7496106C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772556417;
	bh=z0ZMzbBIhqnQtL3YbeTYFsWnBYhVv3s8X5xYQz0c7EU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=deeNf61z24FxmFbTVvh1JfikojrcgeVjHPXJwjC5Pk4tiZgChJBeNmUQgx7oFFBGK
	 cdUww1aHbkzzXrmOGXZlSVbiboOl+aWxBFcPbGcexfQa7aSMZi+2ECEv6TXi/axqDs
	 FyEW7VEbL7M6l1cQ+fH5ixUsxAre4jJFsnNdvbhJoqOXHzu6BW4H9FwdRuRELLmgcH
	 cl4nO0jypEyGjGDfR0xjud6GfGPcGDF9UXkuGrBRPaxQQ9F77UMYlAwJ6Clpw3t0Nc
	 92LfNcPjFo+4uy1sxKaEDraCeOtDYOFfwt6nkhGyCqtbenEmm1C6fK3sjJNzk4j9an
	 Vuunwvjn2F93A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB7496106C;
	Tue,  3 Mar 2026 16:46:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1BD84231
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:46:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8DE4A40A46
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:46:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wppT9Y1oZE73 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2026 16:46:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D4D1140A58
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4D1140A58
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D4D1140A58
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:46:53 +0000 (UTC)
X-CSE-ConnectionGUID: Not9DlwQSoqj1DHnlSyIHw==
X-CSE-MsgGUID: 7F3pRiW6RuOrPkR7BWM0Yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="73725483"
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="73725483"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 08:46:49 -0800
X-CSE-ConnectionGUID: N/tRYRMzRu+lrRbnKNexwA==
X-CSE-MsgGUID: xKhqNWosRdqFdUyKfwwm6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="217225236"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 08:46:49 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 08:46:48 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 08:46:48 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.57) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 08:46:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NGGHVn6FSYOft3vlNyz1qA15xEYB+LHfWEeG+YsOKx26am46mq3bIoEmGSM9kqZosv4NmAgfidP3e8ey9oi4UPr/Ly4Fle6cg6vdUFMarhNQKDvaeS2Sg390oqqkmoM7AOw2vRxyRYudOZDlZfrK/MQY4CqIOQ/t7FRGviG+Ts6vqUNOt66uekR8GZ1EV0ws2mYl+M5qdHHWRDO2xEC6HIxLZAcX+Z8IrmPbKjELiAJ4HPVWtSZJSLbmgCUu921E4gd24SilxV42E0i5b6E/7d5d/QP0EZJXr5werXCS2U4kwqsk23tx957cXklyev5t+oy4mA9/uqPIg5uw0ViH0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z0ZMzbBIhqnQtL3YbeTYFsWnBYhVv3s8X5xYQz0c7EU=;
 b=DxJKbCOqFAZJ58OeTKHFN7DEme34MFcL8F8K3OL+dGjOZwfeq8/6FzbWoMD53G+R8Dgmn8HWcZzBrJ4PwbI42xc7fSD6RkMgya5dV/y0kNQ/nmK7Dh5eWK+AdhfaVwEtOOtbylZUsiKszskTma19ucEUcAb3Qa9skFAGrfmg4dsVW9MsPjeMV8IkN8cFrc0zPZtKCAAbAva5E9PzKsDO7DCfS/eiaCydEFN/is8tqVy1C+/wYx3wO7oUDvChtWfAmZp4j6pQRxHHh43ll6kq5YP4o/SPegz6PZcxWWexuXYausP0mnEDf+pbot3GgV3XsAFzjunuw5kxRNGgtUX0Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH3PPF383C22AA3.namprd11.prod.outlook.com (2603:10b6:518:1::d17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 3 Mar
 2026 16:46:44 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9654.022; Tue, 3 Mar 2026
 16:46:44 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, 
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/6] ixgbe: E610: use new
 version of 0x601 ACI command buffer
Thread-Index: AQHcihWNIw2KyTUY9E2JuCNvWJl9M7WdIZZQ
Date: Tue, 3 Mar 2026 16:46:42 +0000
Message-ID: <IA1PR11MB624198C28B4A097F01D36D9A8B7FA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260120134434.1931602-1-jedrzej.jagielski@intel.com>
 <20260120134434.1931602-3-jedrzej.jagielski@intel.com>
In-Reply-To: <20260120134434.1931602-3-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH3PPF383C22AA3:EE_
x-ms-office365-filtering-correlation-id: ad58fa80-0dad-4a6b-26be-08de794473d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: lZUo99P6UUQOGFH8zInSvzM6dj/2YuAbd3tyrHpg01GEsef/x1wz09ounWY+w6TxRxDXf2JPOBDWkKYsnPY1vYLJ4j+bzxcMymhQdH0FNTVi+qJCY3EqgaijZpIb4u9UEUn7z69VRopSEcFttUGPkjb4ZsgyPiUuRzS64fIyD1AfXuuItb9+rLa0zjhvNRNCOP4BoJZvYcqhJWK3gvF4JEUAGf8duSl2FVPFQwdlaiK8L9429V8a652Z12Entezcf0byAItmylvlHwF3WV9EsAhA/wOpODzfT4Wy/0boo4lfGrOD6q4AeWPC5nStFcuK9DoSGbE8wOR6Nc31sicz/rQpkaD46GZOr7mSArHq8pnxrDAYEC6oQiuaQztPD3BTmqldww0pSJpWVeIB/1NfpNaWu6sxdZSochmAkjlNeORNEDIfs7bOYbcC1fyzqbISPcL2tNdv6BVCoXUYF6IoQoDzWQTXl6oIaLO8k43rd0/3zyIU6RzXNvetBe7k0tTNNLJssGZKI4gxYe/wX4FHBWWBtNqfSNv0Kie+VyvvIY+bVt/F7NfIm20rR4/0MaM+uFuxy71XHmcyK03wXHIuOedaZ4Rv+IpBKKf40XUBGkHM33dpqbhysYX556mfY5sbJ/I2HRnnthnHj+Q2KpBaSJ0B8eePF2LrOHpVZOh7g3hlPN6Ta1oMxh8az+QGhQHpbja8r7hT7JRmIGow3A6w+vpNnO9zR+8kcPoqfCcA+YzagBCs1cajyTQJKzdrg8+BYna25+mzlI2PnEdJHpjfpKtNZkgMVfsuZEyEku9II/I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5T+V86OUGWg7O6fS04UMnx3iOLB/i8lZroVYGg33hal3vSkapJq1WGA4d2lQ?=
 =?us-ascii?Q?bq1fjaReBrhQNxkbSNtFsyF7+bsllK/OPmfb/jA6xFpuXFo4fLvFcea7c3iZ?=
 =?us-ascii?Q?XvjfJNJo687u4TbSSpJFMVp9g+zfIToBUPm8XV5yQ9UgKz4WhtZ7gHfIS6mi?=
 =?us-ascii?Q?naH5VQXwOgt3L8PllRGlNt68XNVLn81vyoFZaFFxEBZ0YJasK/0PxpQDwBDL?=
 =?us-ascii?Q?vNU0OgK6xVz8oacM4nV8Za8ffydYplyusSzZM8gUTOW8SklYhKCjBcEa+lyz?=
 =?us-ascii?Q?EGqLEhuuSxgjaQ07GqrR5Z67NJ+XUXK66WlKh3t6CF7b42T1WZdald0Njlby?=
 =?us-ascii?Q?gP39b/V9IkHJNl64WCUPDi8dCCMb9ceL+sBu458j0kGEvvt5uveRPy7CODCa?=
 =?us-ascii?Q?a0wA1w/9oHVIOV4m2zhV7RBjk3Rb5PFPJ+BaYon3CKuX3d36guZbuse2WLkx?=
 =?us-ascii?Q?PB36MwPuU/pc0PaXo3NqSoF0IJVuHzue73jdc1GolkS8mZVnsFXlEqw51mWy?=
 =?us-ascii?Q?avhqhEhXKxJ2urhGm1q76wd30ZHXasZSha/MlM5rbgMMTS403k3dxQEbveZk?=
 =?us-ascii?Q?BDDN5vqchb3P6FgF1tcfdxBGAhgY6Ssx9A7YAuII9KtkknkEahaXB/upNx4R?=
 =?us-ascii?Q?uDBuyIoyUddL1MHS/6W5ZujHU7kBdw+RkLU2rZ7CEd3x22GBfGxNtagrXfaW?=
 =?us-ascii?Q?EmKToH49XziTEAmBF+4BM4uHUWFsvSwwJ8rpTLmb9osPAwZy1z4k3W4y24cq?=
 =?us-ascii?Q?0p1MAsJSREAAOmxZkd2MgtPIJTGSrChzHeXUATWk4MI3PvzQK4N5bF74SKnq?=
 =?us-ascii?Q?I96OPzDWRia0qZSLOlX0FMEQRxOkEf+Qgn51DY2BuO4uHbQ+92MBAxJEtZlt?=
 =?us-ascii?Q?j2BNMHKlCeFSgvsbWkzCXhss8oSddcgFdapQ0huekGdy33UqR1tIpRtbLGFe?=
 =?us-ascii?Q?CxzobKAFJlA7C5NIOslpR4kZZoP+4greQbYppnGI16kzAAGH58L8+V6eXutZ?=
 =?us-ascii?Q?cdDaivqijEBcpViFnGcENeT9uYDhA+a//xwo/RN7svVo2T/G43iQ+snRmb/f?=
 =?us-ascii?Q?chXbDTLFnM2006lgpLLTOm3vkAu+oVY8QxcmcZzvjQBrwaKRcek+0dfjJ8gW?=
 =?us-ascii?Q?u2VFGYUPoErh3BzAziGcJ+/FfuX4xmSq5O55TQpOmWle+y9AExWXw+OjRK4z?=
 =?us-ascii?Q?7IWcpw71CttX03bQUDP/o3j1muLzZkHHiWYVezGw2NkIQkaP0lAxIHLZ54GO?=
 =?us-ascii?Q?k5vxcnY5KeaVE/DseE81g6gvAgpAfGc8ua7wWYFUrlT8F+wuwjdatOzMD7Pl?=
 =?us-ascii?Q?icNKvKD2l2l6oEInPjG6EzP3Dv/s2Vvk3RV+UNU97p39I2ikyVEWAJHsn63b?=
 =?us-ascii?Q?h8NX/yoK63AS5YSG7HEXkgwlWBgpWEplqJ15SU4iRu6CUxpWVny6R+7fwkx0?=
 =?us-ascii?Q?1574Ls60najTCRdx3MVwwircxel/N+w409rZB+WP2WlxwELUJXcwzDVnwt1C?=
 =?us-ascii?Q?myyzLeKBErzgUmtkw/S3Q04Mzd0uIhnj92+KLEMGbpJ525OmbJQpsuYzjyOV?=
 =?us-ascii?Q?aBItHiIsClrQyAkihih4QY11/LMmfukcls3a0jW0zUnQb55PDTAIV8BEmkTX?=
 =?us-ascii?Q?ybch1uFxQWIaUztx0XOvkmqNi3NYVtQrryAfoQhP7xdmFnx8CbeiwN17LRb5?=
 =?us-ascii?Q?PWkXTSVCNkbe+Y6zE6yZ7nGDKC58+VzJ2RkjCF1eMf5+M65Y?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad58fa80-0dad-4a6b-26be-08de794473d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2026 16:46:42.9626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4bEVNkgVqtekiSe1i/vqD7SwYOuvVU0DJzdlwsvZW3e6KxbrlDMmfCPHsXZ9ii+JvQeDNUcyQi52ar89FksCNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF383C22AA3
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772556414; x=1804092414;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yHVqGXol2SvDOjfSauGNtmUQBWROGoWWnJLLtCOopFI=;
 b=iCfH3eLH4ipQhL1LekhOh49BY4G6Bi/r/a/U5Fjc6i5T9MenGCvk+DH5
 L6cof033989d5g31N9GxYnfcBkYLG0dDpVUrsMi5d36mIS3bgznuH+oxV
 WYJBJp3oBLR427kg8pbeVdFFwfqNWA0anf5qvT8JQ0lQfX+cg6+Exp+UT
 W22RWWhytvYUv8zfKigNrdfFTTdYnPPsLaqFf37nlHFfMFyfYk32WFJcz
 lbeQHqwqn+eKGZoNrmxzqbMWtqk4kNwAYKMiZIG7psM3+nYg0UDCmirKm
 JA1LreCDDvVDvV7rCL6qaV8o4ATTo2weCBjIXt6tceQoZ4QRDn3WonhjT
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iCfH3eLH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/6] ixgbe: E610: use new
 version of 0x601 ACI command buffer
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
X-Rspamd-Queue-Id: 711271F4117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,intel.com:email]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
edrzej Jagielski
> Sent: 20 January 2026 19:15
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; netdev@vger.kernel.or=
g; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Loktionov, Aleksandr <=
aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@int=
el.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/6] ixgbe: E610: use new v=
ersion of 0x601 ACI command buffer
>
> Since FW version 1.40, buffer size of the 0x601 cmd has been increased by=
 2B - from 24 to 26B. Buffer has been extended with new field which can be =
used to configure EEE entry delay.
>
> Pre-1.40 FW versions still expect 24B buffer and throws error when receip=
ts 26B buffer. To keep compatibility, check whether EEE device capability f=
lag is set and basing on it use appropriate size of the command buffer.
>
> Additionally place Set PHY Config capabilities defines out of structs def=
initions.
>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c   | 17 ++++++++++++++++-
> .../net/ethernet/intel/ixgbe/ixgbe_type_e610.h  | 15 +++++++++------
> 2 files changed, 25 insertions(+), 7 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
