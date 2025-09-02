Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 201DDB3F6E1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 09:45:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA19341B72;
	Tue,  2 Sep 2025 07:45:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nyj-PGwmEhBV; Tue,  2 Sep 2025 07:45:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2146E41B73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756799126;
	bh=jj6Achl3KV6MofSLInQp2r1XzNrpQMBgjRZOgq2vXPM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9vnNtJDl/ETb2IvSQJtQuGAME1LGmkUXsB992wAE7+whFkg/UVzvcgrWN2XEpghY5
	 jpY+N+uS+cxPdRaJdCTeKzP/+8MrwWstN/Two5lTepcIIc8IhozblJwLGIe/hsFYsJ
	 faFue/3MOHGfoHtfFPYh5aGZc8JSKpmJy9wus38XSA5CslKv1GwddgeVyXG51yAwAw
	 nHEqBpd/MouAvItjO5BCQ1KTECPW/vBFKnZhqoDWdEpkIzH0w+ZvuJ5LfFtvayEEdA
	 3g4W8+MudEvr4ZEe/qfs5LB39FIzo3WRzpDx9shVhAVK4t/liwiDsXFfZFIODUPzPQ
	 eKK00hrLZWtnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2146E41B73;
	Tue,  2 Sep 2025 07:45:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D8F19D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 07:45:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C9C5283143
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 07:45:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tQDjSQ068dRm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 07:45:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F04DC843B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F04DC843B6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F04DC843B6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 07:45:22 +0000 (UTC)
X-CSE-ConnectionGUID: C+FKx1jGQt22xHHHdXExyw==
X-CSE-MsgGUID: bcxAbJUEQAaT+fJyzNZzMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="70488165"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="70488165"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 00:45:22 -0700
X-CSE-ConnectionGUID: kfidvPz8RMKKSyMQIOQRSg==
X-CSE-MsgGUID: hP68875eTwOg5DNd0hzUvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="170462968"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 00:45:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 00:45:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 2 Sep 2025 00:45:21 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.82) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 00:45:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e3+9Fz/rODwbttz0QyRRo9SHMeeVHLVdfQHsbmCc4I699g0ev+kkfAu3aIabuoIesHQJJK8e4cMXUaPXbBQyHLcNIynvTFxVsfMAHSgTsoDGjDOfNDdYdVA0ZtHEdknCSJQUR95P2iMMk1EsPcXkKL8Dusl0o9PZeS4SR3c6lCE5YwWMOWZWRDA//g0wUlR/Q1h1qmJ6qkOf7aGArdB8UIReU39NLhSelZwO/h7MBwoEYGC0Qo9onA0+3Lel1YHSGdWV98jj41B0jgeXkLK2Lmqy+di12ysiEnji1M8DBU6oC34ajX/GVEjJmwMvXGkyERiethAO3UPPeK4EoLYCxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jj6Achl3KV6MofSLInQp2r1XzNrpQMBgjRZOgq2vXPM=;
 b=szBzAOZI0VuvwAfLTrK6zmseepcZhlM1CKfNzVBgOv1xHVLroGshM+LvlUlccveNWGUC7JAhX0vugHtptGOCVNXX7H/cvHXEQpLCD34VT6KxTSPxguB+jHJLFIhBtmwIEjQRqpP3rsipIcCTZqJOEhFD/F9+ty8PlDWUF27jSYi+ese3KuB36dX2CjSQX39Vcy+M2I9udo6IREpt17XHQ6cbqOcQWqaeTqrqM4MEnBEqf4A9dhvUwCTZYXINgdlk+y1cOrW0TzmTRz3XQxVe8E/sZ47PmOrRxkxomo/h1byFPJ5v8JVIlZgORoJlPuPGG4C6O0P0KDh1rzr1NasB/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by CH3PR11MB8416.namprd11.prod.outlook.com (2603:10b6:610:17f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.25; Tue, 2 Sep
 2025 07:45:18 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::4a8e:9ecf:87d:f4ca]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::4a8e:9ecf:87d:f4ca%4]) with mapi id 15.20.9073.026; Tue, 2 Sep 2025
 07:45:18 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Koichiro Den <den@valinux.co.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "mateusz.polchlopek@intel.com"
 <mateusz.polchlopek@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v2] ixgbe: fix too early devlink_free() in ixgbe_remove()
Thread-Index: AQHcG6IlztOG3lMLm0iJ5DVWvAxWPLR/gzpg
Date: Tue, 2 Sep 2025 07:45:18 +0000
Message-ID: <PH0PR11MB5902B04FEBBE164EA836F2E1F006A@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20250902003941.2561389-1-den@valinux.co.jp>
In-Reply-To: <20250902003941.2561389-1-den@valinux.co.jp>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|CH3PR11MB8416:EE_
x-ms-office365-filtering-correlation-id: 2e0eca30-4360-45af-c9f9-08dde9f4a9b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?RFatkfuUdGkQZ+Ty1mzzkER8Jlz3ypWS9NI+oP55X+dZAPqsQqz6Df/khPRi?=
 =?us-ascii?Q?3KOZFNvMRzYLFuU+yfBUhiHcVbpi5RPm4r8N0Cg15vIVisZynGRJvpElQLJd?=
 =?us-ascii?Q?Y5UlBuOMc5IiCB5aeVqbcEw5mDYAfKO56IFtRVb3K25wa8Hxx9CyMuQOkXxu?=
 =?us-ascii?Q?GBW48599yPEx5wkQYhTmVUHlzlo7OaEO/jhRsn+3RNVr7A3imHADU4h4qfrq?=
 =?us-ascii?Q?X+hiuIMLnTBFF7DnIoQ0pkzleQcOQfa4EDeQDKWncNpzWzJhw287E093LPys?=
 =?us-ascii?Q?jm6DjqfzRO2ztutx8y4K3IQcbu3Y4EmJgdtKIoIO3q0Ldxp4zYyGnUg7CShF?=
 =?us-ascii?Q?/3HuEaFr2yl/mm/10N2IGhTAXaPA2kE9OTiG3o1l599e0sxrUTf9FRg9iwwn?=
 =?us-ascii?Q?gQd6UdKEipsYseeIP+FXzX3u13yKVyGhus1Uwc8nM47+CtOGDRA1NJA/ZXAv?=
 =?us-ascii?Q?MzxQYYky0hlM8+IVPiHsm1WTeNWfXXLSJyhOFWtZUUrP93rqtPEdhUteLLHq?=
 =?us-ascii?Q?VfHbw74vbpLzX6EA0HW7Z/srbt/GoidKceo/4H/HIyMWZFx34uPpkoxfja5A?=
 =?us-ascii?Q?aD3l9jDsEkBhgEpBmxBG1jpcvrcQoDsy5Rs9Q0XZFd7JKZpcXOfyWPh/Zt58?=
 =?us-ascii?Q?ortBwJSR7mpGSZfA+rweN2CHSLuKShSSCnfPctV0M+c6Q60/D3dcquffISt+?=
 =?us-ascii?Q?CVdqksGXMPtL4hCvxYtojEg+FgfyIDmSKV8nADn4vuqetdHQ9fr7bvhoJVNi?=
 =?us-ascii?Q?/Pjki/0C5OmL1pbf04AEeQ6dj89ZCcppTETwaldT1BV43y20JRCQewpBe4OW?=
 =?us-ascii?Q?KK2B6q9yl4NK2Y11UfQFFZCjE44P+geToM9UYLVjYecoxvOYwfNl8QksthJC?=
 =?us-ascii?Q?a5Fx03P9D9FAztIMIFA6OYh4VUWpV1W3iUy7Y4TxIWiDFEVApAqeAinSWVxo?=
 =?us-ascii?Q?EPKs1AgIzSxZm7FGQZzAHFY7/7clzIXOp7Nadx2lBks3E08L8//ni6yhVFG/?=
 =?us-ascii?Q?NHTuSJbHvncQeuEbo13pXOGyAPpNddKTJOGW0KNBLpf4vatLFpLD1BKVykCv?=
 =?us-ascii?Q?m4xXBUReI80nqeB1k02/nSEU4Mpm+ddIz9NpJA27FjOucLvebpEkpnmEfr9O?=
 =?us-ascii?Q?P4I/Ap2S/cnP9u8oz6kNTGyRcTJ6z6pcuTIGyyKiY4EavCYtzFVc+7ApmaCm?=
 =?us-ascii?Q?Wqo5jmpu7cC/W72VY0hzpQE791Y0M2qYC5hNcWX7B2vAPsvOapW/Rz04I5MZ?=
 =?us-ascii?Q?9LV2trpFnpOpKynz05LuXvSOngKS3mpY8LjjuOty84476s+TUMk0mPOP/Le1?=
 =?us-ascii?Q?5wmtzF1YVbImyAkCSa9GKVQR33YYZtfEg/2sz7Le51ap6Wp4ioTeWUR6FrQp?=
 =?us-ascii?Q?94o5D4XqiBtS0DUot5uk0+z7Z51eEEhK0K1+CrPzQZ+R8OSx3QThju7epJHK?=
 =?us-ascii?Q?K12ZtvJM74y4Wi4Cd7cOmFJim+DXIv6ABE1e9UJflZIKdcXsV+oq+f0+rkPD?=
 =?us-ascii?Q?CiUwxcs+sUXoNho=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GA3VX6+1Qr7nccPVQoLDReYtdwJduJsWqBXuXe70b+lC5IcK+ggAaJ2rulG2?=
 =?us-ascii?Q?hUlwOO7mIPZcxmzAK18bKDajbXqCVrMf9nvhxfH/ykS2Jo7L6thAz5i15rwF?=
 =?us-ascii?Q?avH/nC01zVO7n9JZHik6vGMFTA5BN+/uNBflkpXQNYpo+3AId4W+B6rJfhjd?=
 =?us-ascii?Q?IEhpuaoWBGrwCF1dIyekZ7mnEhC0kaJkan9o2ojOCE7iYGe2oTBiiUiQ5Kiz?=
 =?us-ascii?Q?O7Pj8ZnzF4Fj+UMmx2/Ucvcpcp+jTfWStzuVal8qzG82Jq4vQmcrQQVr4Ahc?=
 =?us-ascii?Q?9cdmPwFKthqAGhtWlWmh0MzI1eSNIOTHPGqJB7i7cGFsiGQKCfz4NkH3kr5Z?=
 =?us-ascii?Q?p6TmwCME438G19SXWgxHHgSJOwx5Fih0kWyiV8Cvqk2s754pFzFoSGZZlSYv?=
 =?us-ascii?Q?q0VCzjij/c6rdBzpTx4QpNtZ5UHK+B2ZqaQactok2HoXDEVTJK29d0TOcax6?=
 =?us-ascii?Q?QXTcAVZzUfUV9OLw86zX5uVtMp7PtCSubKn6ZfTHVzIJVKSRUyD7SRFZYtS+?=
 =?us-ascii?Q?qch9ZRjz8eSGpZ8fVuV59O2TiFz4LsidVT1Wd8qebXK+q/AYM3woI7ZQkZrj?=
 =?us-ascii?Q?fNm1OSkPxktnQCZmipHUKHF/Qjh0+ZNoEBJe5vnsN7gF9Uz0ViVTK3FY5PMV?=
 =?us-ascii?Q?DNTwe4n2pCRboxrFtkQJsM9BOteeU0kR2s7d5K+mVLoVTF6nd2u/tLl3mxUj?=
 =?us-ascii?Q?D5xPwpHM9Bu4i8xQ+5OQ9vCa6MRLZfqfWZdESp0PSPeWYw3At/cf6H6uEL+c?=
 =?us-ascii?Q?bCMd2DqZFq623kYyculfOSoHDbArSXH5RSv+uK6jnLN74kCe9FuJL9DRmTo8?=
 =?us-ascii?Q?WDw8z0Jbwcot6OYBgQXlEH0PpCueec4UK6irGOmSC/6kJYknjDahtV/sVZyf?=
 =?us-ascii?Q?NuKRqjCNziKhNAXu5afbOwIznUY5evO8XJNaLQahCFPjAqL9ptIbws6ISAwC?=
 =?us-ascii?Q?JMx7VQysNcNvA68w8rN2s3y00fbHV29FQgaYnrXYGIXaVAlzrRQ5oU6T8cZV?=
 =?us-ascii?Q?gyYRvcv3YUwdEfvoOtcNSIOqhuW3PXlVa7ZIIKOeIQF7mcaVP/nHMHOMBGyt?=
 =?us-ascii?Q?wT/M1D7o0u1HxdJ1UQIgFNSmD8VGHaFsLMutgpeY+ibxkrG8nUsKtx1ZqGHU?=
 =?us-ascii?Q?loxbgragx/1znuZpvuicvaxM4s8SB51zfhseaV6kBCdJYtKOENRWH82d3tPk?=
 =?us-ascii?Q?CIwb9j06/G+Wb6DaYjFzZzs1VFnfyyaUTEWY5q/8BNt8XoEvkZBHnN1Pt8/h?=
 =?us-ascii?Q?2QfMUMwSW86X8Yn815nsSDI6heWfzzFB6xSCmV4ig12MELHyWjTfP2ABwJ2+?=
 =?us-ascii?Q?UuvYSnmHkWjj3gBYKEx+efUa4dFjjr6Grl5iFPY9vZCfI5WWIvBGtxh6Z5LX?=
 =?us-ascii?Q?ts+MTugzElEiq+4BS68q44ZO/jTVg6r03H/kNBNMEW4spBT003lZNitaKkFU?=
 =?us-ascii?Q?cqKc3M4VRlyvreBO+txQpzlfnMGiFyMMQMQbVIAwWHhjfx8LPg3kx4gVc1Mt?=
 =?us-ascii?Q?RLfxtMnDrgvahuIa54sRYWqfDgSeF1vMELWhYR6z0kQ1Pmb+2iMOYumm6iI5?=
 =?us-ascii?Q?7h1ODi97KdHm28Qb5Ri8KNAqzMWtFgNZS4kK4LBR7GyqtsOC/8JwIwzvXEym?=
 =?us-ascii?Q?Zg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e0eca30-4360-45af-c9f9-08dde9f4a9b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2025 07:45:18.4670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EUk4XOwMqB3yoYmbsdJz3amouURIGVFr1Nzf8gGW0XkLyiEImUuHe5rRBqt9rcc3/6rSh2TIh5H4zwQtMdmvDxlWKLL2GCinv9FhCpEYM4Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8416
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756799123; x=1788335123;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3DLxDyCCnEhDr4H/k5OGWnJGuGDayW6Qi91GDDFeLIc=;
 b=DINL8cVVhuPE90+wAJxqbQ9uLBrFQMRHBPZbrL5oLGcXR+a57jF96U8X
 s4dCew3bjYGKGJDH4iQrDOGb0BKuK094TYHbKde94/8Xwm+++H6/SiCie
 YcqTzErSstmq6I1pjGp20x33DTevTvcGvTF6FSZLcmBao7oLdtrhxr/BT
 +rf0g30KF7ohbSPLE2HDCSrWB1f5TLLBvbL2wTKTjlsYFwBConMlJvQ+6
 CsrGUs66MO5glw5oqdT6r0egz5kpDTY+JsLM9ceo2Q4G6QGPkJELxDl4H
 1zC9iArBl3/GmfzRPJE2p3oYdZmXPggqdT5nsZ8ykTNtdWYBrELiNdCR3
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DINL8cVV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbe: fix too early
 devlink_free() in ixgbe_remove()
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

>From: Koichiro Den <den@valinux.co.jp>=20
>Sent: Tuesday, September 2, 2025 2:40 AM
>
>Since ixgbe_adapter is embedded in devlink, calling devlink_free()
>prematurely in the ixgbe_remove() path can lead to UAF. Move devlink_free(=
)
>to the end.
>
>KASAN report:
>
> BUG: KASAN: use-after-free in ixgbe_reset_interrupt_capability+0x140/0x18=
0 [ixgbe]
> Read of size 8 at addr ffff0000adf813e0 by task bash/2095
> CPU: 1 UID: 0 PID: 2095 Comm: bash Tainted: G S  6.17.0-rc2-tnguy.net-que=
ue+ #1 PREEMPT(full)
> [...]
> Call trace:
>  show_stack+0x30/0x90 (C)
>  dump_stack_lvl+0x9c/0xd0
>  print_address_description.constprop.0+0x90/0x310
>  print_report+0x104/0x1f0
>  kasan_report+0x88/0x180
>  __asan_report_load8_noabort+0x20/0x30
>  ixgbe_reset_interrupt_capability+0x140/0x180 [ixgbe]
>  ixgbe_clear_interrupt_scheme+0xf8/0x130 [ixgbe]
>  ixgbe_remove+0x2d0/0x8c0 [ixgbe]
>  pci_device_remove+0xa0/0x220
>  device_remove+0xb8/0x170
>  device_release_driver_internal+0x318/0x490
>  device_driver_detach+0x40/0x68
>  unbind_store+0xec/0x118
>  drv_attr_store+0x64/0xb8
>  sysfs_kf_write+0xcc/0x138
>  kernfs_fop_write_iter+0x294/0x440
>  new_sync_write+0x1fc/0x588
>  vfs_write+0x480/0x6a0
>  ksys_write+0xf0/0x1e0
>  __arm64_sys_write+0x70/0xc0
>  invoke_syscall.constprop.0+0xcc/0x280
>  el0_svc_common.constprop.0+0xa8/0x248
>  do_el0_svc+0x44/0x68
>  el0_svc+0x54/0x160
>  el0t_64_sync_handler+0xa0/0xe8
>  el0t_64_sync+0x1b0/0x1b8
>
>Fixes: a0285236ab93 ("ixgbe: add initial devlink support")
>Signed-off-by: Koichiro Den <den@valinux.co.jp>
>---
>Changes in v2:
>- Move only devlink_free()
>---
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/e=
thernet/intel/ixgbe/ixgbe_main.c
>index 80e6a2ef1350..b3822c229300 100644
>--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>@@ -12092,7 +12092,6 @@ static void ixgbe_remove(struct pci_dev *pdev)
>=20
> 	devl_port_unregister(&adapter->devlink_port);
> 	devl_unlock(adapter->devlink);
>-	devlink_free(adapter->devlink);
>=20
> 	ixgbe_stop_ipsec_offload(adapter);
> 	ixgbe_clear_interrupt_scheme(adapter);
>@@ -12125,6 +12124,8 @@ static void ixgbe_remove(struct pci_dev *pdev)
>=20
> 	if (disable_dev)
> 		pci_disable_device(pdev);
>+
>+	devlink_free(adapter->devlink);
> }
>=20
> /**
>--=20
>2.48.1

Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

