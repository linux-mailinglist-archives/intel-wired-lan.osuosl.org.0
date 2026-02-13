Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EB9gDHRLj2nnPgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 17:04:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8258F137CD8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 17:04:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28DE141DDF;
	Fri, 13 Feb 2026 16:04:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZlL7WIswvEBm; Fri, 13 Feb 2026 16:04:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F16141DA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770998641;
	bh=sc2nfeX7fBWC+jAYh0CuiWw4x/WQqipxsAUn7ARSlJI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aYLCgjvB1cemRGBHtRTAOen08YEOl2VCciBa1PGqLJtmol6xM0YJBTzT6DXGudaRU
	 mKHxDmWd1ZAs0KWXgqtewNjDaoFAZALp82QmFRH+D4LPtHed2cIIh4ZRPAFphQw7yw
	 jfJ7yb7xkbWapfXVWDig9MdMI/endAgh/jfZIGogh8D7MPF3ZsRDa8B2jHZ2/NY6uG
	 h1PC8YZQ5/V68oRWB7LfHkCpcRx2tybnGZPtbH9KG/MFR+sjUYLa7lfo1dJLeifKkO
	 9OuG8fbP45PrqIYlqJnW65mNhLDg6Gabm2rAnLZPqvlDLhU+UPEKT7VVUbfU3kB8K5
	 yfJ9V9zNuPAKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F16141DA6;
	Fri, 13 Feb 2026 16:04:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6E6AEEC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 16:03:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5B764844EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 16:03:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kTcBCZXNMT0Z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 16:03:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 41C82844E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41C82844E5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 41C82844E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 16:03:57 +0000 (UTC)
X-CSE-ConnectionGUID: pAzux8HQS1mZAQo8HV370A==
X-CSE-MsgGUID: taTpKBnyTQa7XcjzrljdNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11700"; a="71211172"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="71211172"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 08:03:57 -0800
X-CSE-ConnectionGUID: VF3Wg95IT3uGBPyOGcv9Yg==
X-CSE-MsgGUID: Fjpy0jj7QWaRbA1km6g4SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="212979950"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 08:03:57 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 08:03:57 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 08:03:56 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.6) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 08:03:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Azp8NSyPvZtaG7AxPwhFUpnSa4+M64emtkkC8jZuquYy3i4BlN0H+7H3b2fBMw6Ac8tg35VfO+ygwd5NUzA9/aBZMlxinSC9AzFYGwrkyHHYEOnsmvgE34m08QSKhDnCMuKMKlhCPU2gzg/RmWdxQ9FusAFSQ+iNU8cmymRs3EGcAF0tvXxGN23M6NsRPx1gv2n2PKbq4pwPLv8vAXnRSSCxsgREM5zNehRJ3LglsVhkNHrL59aj9YSnTweBc8tN2jwpCq3pJX89IUZlmxQ8LI52dG+o/a+0xAO5Ts4gsSX85CzeL9hYNJmiXNG+MBIpyyPpylx9quaW7/tiXCjoAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sc2nfeX7fBWC+jAYh0CuiWw4x/WQqipxsAUn7ARSlJI=;
 b=WDIraqBtibhk47olp/8B6Jyf0T3aiTIpKyNPhMIPT7oFXmqsoFSmkT8bA4kRB0Ks7yETaoBXqASsA+bved6W9tv8/YfNY5sexTX+gHVF7Hqi2rmxxve7McDnVjyXs9du5/FOs1hI81pTTg7loNr+TXQ7reTKiSQ7+1jgeM1IaK/bGgwotps6REzWTCA4+yaUWHUG6UodGdVYc9BKJjshSl4hOkJq+YhGMU5BIj+Osb5Zj5wYo7Sk8pmt4H1Y3JuiqpqVI1dywwplPjc7T8NIIJEuWE6NBuArYfeoqgiP9en1Y1iBJTDc/SpB1igMLPJ8vXGIRfnqq98q17Ua3l0jHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA3PR11MB9486.namprd11.prod.outlook.com (2603:10b6:806:47f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.14; Fri, 13 Feb
 2026 16:03:54 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9611.008; Fri, 13 Feb 2026
 16:03:54 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [iwl-next,v1] ice: implement symmetric RSS hash configuration
Thread-Index: AQHcnPpZYd+DlX7gZk6e3chL8wPM2rWAyoUw
Date: Fri, 13 Feb 2026 16:03:54 +0000
Message-ID: <IA3PR11MB89863CA1C28C70F507D300FBE561A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260213034429.1830480-1-aleksandr.loktionov@intel.com>
 <20260213150130.2513644-2-horms@kernel.org>
In-Reply-To: <20260213150130.2513644-2-horms@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA3PR11MB9486:EE_
x-ms-office365-filtering-correlation-id: 180da9ee-f3ba-46de-b4d7-08de6b197d00
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7142099003; 
x-microsoft-antispam-message-info: =?us-ascii?Q?0YpAe0krpudDg1AzxcU9IfjlwuZF3W7CpjGBwEL0tvo5FJTi2FyT5l8xoU7a?=
 =?us-ascii?Q?qqbO1P4TnkxVrPLv7UUiweFy7jnxH2pYhsCJabx4URhuV1riAyhpHMlfN8Zf?=
 =?us-ascii?Q?oOo0j9444RMiSe49SbFNorlR0cwWAQEq9zppkilanWRNnc9TwoUW6XqShswZ?=
 =?us-ascii?Q?ZaMxZ5JMngf2Vr4NlZkmNc8lze6wcM/m71VKPTsG+LtPnfiELAPM+beJHayB?=
 =?us-ascii?Q?hVPI0E2DkIfqgPQPNKHptkIOvktTf5u/oZ4ZHxC/990+6eRYgf9d7s3fYne2?=
 =?us-ascii?Q?0IxbVsNIzjC/0lFfeR/iyxARqRbFRD0QwcBx6j6gNrEONS7W0TGgF0G/6F1M?=
 =?us-ascii?Q?zlsjMqr8c+q/S9fPI1+F6uehqxOqhh5JILVq2HgCYaGuThNMU4TbNNCzMx/d?=
 =?us-ascii?Q?cOHljuUn/IF0vdZTBKz2hKfKQqRQ9dIhmAUPCqxIksJRSKPSnvKgvyRhmnfu?=
 =?us-ascii?Q?e3olTOVLHGqG0lnieBiAD8fr60vWLefAHy49dTxGIKsLb4ImBYvWzn8A9M8o?=
 =?us-ascii?Q?/zt6PYPtjkOKtQMLolkl5+awsFYdWvXchXF+uZ1V7yCsuubAWc1O7UjglRt0?=
 =?us-ascii?Q?X6go1GPWJHPkZMGoIwHtnT3XTQcWcoFpvMUJJnNQoCjIOaiRxa+oEYv/h6pQ?=
 =?us-ascii?Q?tBy+PO8/O0OtUliem6tGx2zPd+UwNHEIw8ejaIX9qpLDGkSF+Z3kj7stXyQY?=
 =?us-ascii?Q?hR66Ea6mg4/9TVfBH6zQ4eLtG7kNd8RzisbAtjGYvycQ5JxBIoN7iotfcBxn?=
 =?us-ascii?Q?UshjxBdJpOdeCPVvHq869NsMIcJ6bT0qX51DZ8Rk1UNut+5h4cKsxoyaIrjw?=
 =?us-ascii?Q?ATb9+Bveo8AGSsl3QJ42wxDC+PhcfbPm/kQnFf5h9e2ICJhnxneqSVtsiOO/?=
 =?us-ascii?Q?OIg4BAsl/WsWEEV7NR7B1xrNTPZgkpNRAUskguRmgEoRMAx4P0TxQ9BtCldl?=
 =?us-ascii?Q?W7HYAuFlFaNgBf/3xA+le8IvZW7S+5QtPiPRkd5lM4gZd6xckyxt/TNdafgQ?=
 =?us-ascii?Q?4szvXDgGioE4vyFUiqKjjUrymKt6+vMuzBfa/kTD9oClWJRz4mzanKnEfppg?=
 =?us-ascii?Q?fF0W362uppZJSwPl0zUWwrttm/DvOb4hJ1jyOdA+kcz7jln/ug1LS57oC3vI?=
 =?us-ascii?Q?v8d8BPX8N0WpBrDYjfIq1PuZ2HW5g9vkujMmhLwjcTxoBgl8OIMhMN2QKGu1?=
 =?us-ascii?Q?37/WJW99f9k5tB1qtQCN3h8+/KfhHRMfHWgwbWmeXjmgBlRuejIVLQ3iof1o?=
 =?us-ascii?Q?GMG+GQS2b+kkLZXGK+O8ZdSDNt+wgTrX2+lows8Mlv7CFi78n0I5LShMLgvv?=
 =?us-ascii?Q?QfRUKFxWWb3lTvlTPl1CSLVzz98FVJkfhh37R9HsHxyH+OiWJAPS2prXBWbf?=
 =?us-ascii?Q?SLpMzBlRhPE1pnIMBq/Q2OEO3X/DPTNZib+oEJSfuV4oL65ujgXxYCB6ph0O?=
 =?us-ascii?Q?R5HKSL/RepPWXuQf4p2Bns1wF67F47zjwmCjpdvZYfkRSCwREHEcCYhv8Dwk?=
 =?us-ascii?Q?TMyKyaqSHSQdGwiagwm1Wzm6l+BGcHpAnAgKatPIqhj68I4gLr2PVR8fxl33?=
 =?us-ascii?Q?7YbknHtB3J6w+P4K6Ao=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7142099003); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QGQiZFvhkWA+XTTNmHfBOXtbvSgZLBdE761/NS8jrBdN5EkN2yIk+iJiJxkg?=
 =?us-ascii?Q?KD9N9iupnvBs8DHTJD0C8H+oDX5KAp4qZxv7Lzz2hU41g7oQgYhMDv0PU2HU?=
 =?us-ascii?Q?H0pd/gY3/nLgJYA0212mbAsGjjxtVOWY/ys2pB8holjvQ+7mPXyXgkOUvj03?=
 =?us-ascii?Q?+EUsUXKS6cuWb+MsjrngFMH+XJlZGERUVfcoSkx1+4Vbmev0Fosetrhnf9fv?=
 =?us-ascii?Q?RZzv5VfekQ47bwzFfg85S5jY1iR6l4tIGCOa0inpUWtTIw6AQwhlWa420/Iu?=
 =?us-ascii?Q?w2dVg9IUCsJ5VpSIYBKnNRP4mZsqp2DKki7EyYnsCcxMV74jP6IWKW4U+27t?=
 =?us-ascii?Q?idlEU27m3qEhWxCAYeBzz7TfK55qsd5tkmSf/Eas3gxaMlfu2vhhjiatsQim?=
 =?us-ascii?Q?oIyzbS0SGJOnFbLRsLLEm5Q1niRD+UrydQ+0jAx0L9aei3OsxlhxalSAsnG6?=
 =?us-ascii?Q?TUGNKIRVlk6+jko68/3EoaLqFe5eXkVtvkSFDIo7NStwusyvdZCPwWjZwEiM?=
 =?us-ascii?Q?hFKs0UjwCZc5hdakyYM7jyDHnoKs9F2I7HgjUgi4oL7ZD5Q7n1tTV4THKnPE?=
 =?us-ascii?Q?BfPFRwZCCQKmX93NhAeqdd/kTDBqeM/bgRkqfnM1LUiRwbZImnTWQhWWsOfz?=
 =?us-ascii?Q?ubBcGqFJEmvRBQDn1EwENxvjL9v+Nw33EEl8irnHJ6S4tfW1IXkZy0DaIIKi?=
 =?us-ascii?Q?YA4dD2rDA4ZKj+nzjYdetERA8FEmLFgT5gxbeAwnsbevazLYEi8Sz5CEsLE9?=
 =?us-ascii?Q?7+2ULR0k8F9lwG4aOxQQnj+aexPHvbCjn837ZgblsW0ofcLP41bZjjkTYmQm?=
 =?us-ascii?Q?/H9qUyNiiYajE7lVqkxL2XVPFKRsAiZIA4UAky8McD+k7NjUcY9tFPQw5fJ7?=
 =?us-ascii?Q?MJZzSLWiMRadyWQj0mWV0KQaM0lfjmCD9Vg4ToGEaR7z3hHEmjbpLtDmF9ul?=
 =?us-ascii?Q?wmcMrIja15LiZjc2kknLCC8BvjTuGw50RcFShilqAWpJ/UFoaHd8jr2fvcpE?=
 =?us-ascii?Q?+qVNW+NxzeokZ5onEhhLPNml9ftsGiKriTU8SkdeI93/ShOMgd0e1GnOqAVz?=
 =?us-ascii?Q?lrVDUILtTFrp80NRcAUi9e02lA+T38j5zitJYyZ9KUkhZ5HSZY0As2vW61VI?=
 =?us-ascii?Q?BrANSPC+Yz9OIKOobOnTi4kmRxdU58dvTadU0A2I1VZLgr46u05OnSB6GcIP?=
 =?us-ascii?Q?nMfba2uM8QGInHh5hQJ+GjAwH/dhoNOzfM0fEsoRdi9t2KEBaXWP5Bt5Kc5U?=
 =?us-ascii?Q?QuWNeZ1SzNSYGkH7RBwyc2VcfKrzlK7i45tAhWamDaMefGwtAD/VjFRtocze?=
 =?us-ascii?Q?hqWaVBVRjOzDr654TPjCLBfxzE1K0JOW9TgA8j7VgSi5L6ZsIYyMGakzfltw?=
 =?us-ascii?Q?SW1UxwwQpdqjAYjaZXCPa1doaYth5X5N2X+sfr9v99NYg+tGJUkKNMEWLK9n?=
 =?us-ascii?Q?jlvNn4Hnqn3Bw+1OGfypPquRopqR9CFIJl0/9kpPQlwwu8Td43neQZjGHCbv?=
 =?us-ascii?Q?0j4TPkjAE8+ta6WR5op18rk5taaz2LK3w/awbwQAwahxV3GU+3Z/nAX2pu84?=
 =?us-ascii?Q?+SntBMZS+w4djKxTjEA8+W1iNqnz3jxcIXKB8QJHvKBNAcp2skvdqXuNphAa?=
 =?us-ascii?Q?cnWvOVFc/OCKc6srOD4e3yyHl37Dh44vmIaF4VkzKnOusuQkjMxy9aZiyG9s?=
 =?us-ascii?Q?+jkYow4+PjqtAjPDDdcs3Iz3877XWeO4zOrMX2tDQ2vFiVT3pohPT0u2F2Dh?=
 =?us-ascii?Q?OU7GQ7yNUg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 180da9ee-f3ba-46de-b4d7-08de6b197d00
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2026 16:03:54.8170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m10OkxEDi5hyzjet8ga8JTq9XcBZIez6f0LjIu7ZCVS22nX+JJ/F1S0NL5ZaLjjJnQxTtjZ323zd6FBXpepQW18FUx/2TO9QTEJQ6CcRhAE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB9486
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770998638; x=1802534638;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ULWHNhYO61KwXchPA618HP1W4+yCpT4y3gD5OopP5tI=;
 b=G6u7lK3ann855ye/b/US9tQGVC5DRt/uJD8GDeexnVj9zr+jrNHiGPvP
 S/pWNNAabJ2Bo1s7FmKvzOCL5SW6Lt++ussTEkBg54hotzOvqcpkcN8FU
 CqwdQu5bjypRSpsg42KDjbT12HbF9p5fYOPZktnDPNbpeWOWbe62i7JYF
 9J+tNtb41b/cSqcTyUO9jaN9+rK2I38eKfkv1IME7uLEHPA8d1mglOEcz
 dL/KjH6WSiocElLeFO8KWQmpTpKa7yXyuLIchel9R/Y+S4OZAbHWaScnd
 QoEaI49krekHci8CEL1YN1h714pRbaYuzBwDlV7iNcZkd7gaOQKO/pIXH
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G6u7lK3a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next,
 v1] ice: implement symmetric RSS hash configuration
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,IA3PR11MB8986.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 8258F137CD8
X-Rspamd-Action: no action



> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Friday, February 13, 2026 4:02 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: Simon Horman <horms@kernel.org>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org
> Subject: Re: [iwl-next,v1] ice: implement symmetric RSS hash
> configuration
>=20
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
>=20
> For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-
> local.html
> ---
> ice: implement symmetric RSS hash configuration
>=20
> The driver advertises symmetric RSS support via supported_input_xfrm
> but ice_set_rxfh() ignored the input_xfrm parameter, making it
> impossible to configure symmetric hashing. This patch fixes
> ice_set_rxfh() to check the input_xfrm parameter and configure
> symmetric hashing appropriately, modifies ice_set_rss_vsi_ctx() to use
> vsi->rss_hfunc instead of hardcoding values, and updates
> ice_get_rxfh_fields() to report symmetric field configurations.
>=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > index c6bc29cfb8e6..6dc37f96b57e 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > @@ -3037,8 +3037,10 @@ ice_get_rxfh_fields(struct net_device
> *netdev,
> > struct ethtool_rxfh_fields *nfc)
> >
> >  	hash_flds =3D ice_get_rss_cfg(&pf->hw, vsi->idx, hdrs, &symm);
> >  	if (hash_flds =3D=3D ICE_HASH_INVALID) {
> > -		dev_dbg(dev, "No hash fields found for the given header
> type, vsi num =3D %d\n",
> > +		/* Provide default symmetric hash fields when no config
> exists */
> > +		dev_dbg(dev, "No RSS config for this flow, using
> symmetric
> > +defaults, vsi num =3D %d\n",
> >  			vsi->vsi_num);
> > +		nfc->data =3D RXH_IP_SRC | RXH_IP_DST | RXH_L4_B_0_1 |
> RXH_L4_B_2_3;
> >  		return 0;
> >  	}
> >
> > @@ -3067,6 +3069,7 @@ ice_get_rxfh_fields(struct net_device *netdev,
> struct ethtool_rxfh_fields *nfc)
> >  	    hash_flds & ICE_FLOW_HASH_FLD_GTPU_DWN_TEID)
> >  		nfc->data |=3D (u64)RXH_GTP_TEID;
> >
> > +	nfc->data =3D RXH_IP_SRC | RXH_IP_DST | RXH_L4_B_0_1 |
> RXH_L4_B_2_3;
>                   ^^^^^^^
>=20
> Does this unconditional assignment at the end of ice_get_rxfh_fields()
> overwrite the actual hardware configuration that was just computed?
>=20
> The hash fields are carefully decoded from the hardware configuration
> returned by ice_get_rss_cfg() and built up in nfc->data through the
> series of bitwise OR operations. Then this line uses assignment (=3D)
> rather than bitwise OR (|=3D), replacing all those computed values with
> a fixed set of hash fields.
>=20
> This would make the entire per-field computation from the hardware
> state become dead code. The function would always report the same
> fixed hash fields (RXH_IP_SRC | RXH_IP_DST | RXH_L4_B_0_1 |
> RXH_L4_B_2_3) regardless of what is actually configured in hardware.
> GTP TEID hash fields would never be reported even when configured.
>=20
> Was this intended to be an additional |=3D operation, or should this
> line be removed entirely?
>=20
I've found the issue today running GTPU tests.
Will fix in in v3 on Monday.

With the best regards
Alex

> > @@ -3667,7 +3670,6 @@ ice_set_rxfh(struct net_device *netdev, struct
> ethtool_rxfh_param *rxfh,
> >  	     struct netlink_ext_ack *extack)  {
> >  	struct ice_netdev_priv *np =3D netdev_priv(netdev);
> > -	u8 hfunc =3D ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
> >  	struct ice_vsi *vsi =3D np->vsi;
> >  	struct ice_pf *pf =3D vsi->back;
> >  	struct device *dev;
>=20
> [ ... ]
>=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> > b/drivers/net/ethernet/intel/ice/ice_lib.c
> > index d921269e1fe7..31f2757cf7fa 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > @@ -1155,7 +1155,7 @@ static void ice_set_fd_vsi_ctx(struct
> ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
> >   * @ctxt: the VSI context being set
> >   * @vsi: the VSI being configured
> >   */
> > -static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct
> > ice_vsi *vsi)
> > +void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi
> > +*vsi)
> >  {
> >  	u8 lut_type, hash_type;
> >  	struct device *dev;
> > @@ -1181,7 +1181,9 @@ static void ice_set_rss_vsi_ctx(struct
> ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
> >  		return;
> >  	}
> >
> > -	hash_type =3D ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
> > +        if (!vsi->rss_hfunc)
> > +		vsi->rss_hfunc =3D ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
> > +	hash_type =3D vsi->rss_hfunc;
> >  	vsi->rss_hfunc =3D hash_type;
> >
> >  	ctxt->info.q_opt_rss =3D
>=20
> [ ... ]
>=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h
> > b/drivers/net/ethernet/intel/ice/ice_lib.h
> > index 49454d98dcfe..29ba335dcc54 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.h
> > @@ -46,6 +46,7 @@ void ice_vsi_delete(struct ice_vsi *vsi);  int
> > ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc);
> >
> >  int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi);
> > +void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi
> > +*vsi);
> >
> >  void ice_vsi_cfg_netdev_tc(struct ice_vsi *vsi, u8 ena_tc);
> >
