Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A628A82708
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 16:04:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 687B7402D6;
	Wed,  9 Apr 2025 14:04:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xolvK_qkM-Vu; Wed,  9 Apr 2025 14:04:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ABCA7402D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744207489;
	bh=4+s8DsxARloVeLybZQvgQ822laV2xsHNA34NVig4deM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gCGsE0o7XbyGjuPRRa110BgLeKoTrjm89LiHVfSPcicJ9NsAzYNkWuOFPaD9xf5vE
	 +fJmG/G63VNFoIhtK8vvI8Kj+vsPW63gvYDu1+jiL9N0ewtONiUmWyotAcOutxrMVk
	 z7tCm7VAaLKHhxSEpQZpVK1Z87FD1cfoIP44xARzmyN0jaop7W7t8d2CQPzhLiUwRM
	 ovg6vSgr7tPRmfqzpgVQSvDMtuPU8JJygQlvNIx1bOa2xVwJewdFNxdhpiyfE7dGtI
	 xK4oB4AppDlDG4I5nOEGEGLt4m9gsOcJqEciRr6sl+xhXk/Q2hnj0Haj5Dl3hr0R+p
	 PmKdOWsMHj9aA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABCA7402D9;
	Wed,  9 Apr 2025 14:04:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id AD03CD6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 14:04:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9230180DA6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 14:04:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m0oCypMd9HwX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 14:04:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D4BF782ED2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4BF782ED2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D4BF782ED2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 14:04:47 +0000 (UTC)
X-CSE-ConnectionGUID: QHcOMjmSTs+wbiNoPPG7vw==
X-CSE-MsgGUID: q9LAU6+CT8KsiuXiIYy3Ww==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45571481"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="45571481"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:04:47 -0700
X-CSE-ConnectionGUID: Fr3vcGfxRr+xasltpafneg==
X-CSE-MsgGUID: nOAfKkpnQAu7h97TMAMo6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="128571941"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:04:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 07:04:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 07:04:46 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 07:04:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vEfGyHOaSFhZ3IWo0fSpVx0A2x8LrwSyhzeO95U5CdzPJARKt0HTdDarB7qGLr9Fe70nuqfoQEosz/P06zRa4bHF21LOzsVdwTW9NzyqdEMlqg1QAR6z4GC+XFv0+xqQ6sAx3oOP5r+xx55fpg6rEwuiC1FijK7YX3A2TZUsnYBq26p6PNri0aFaG8YN6x4EsuwA841XfAeNqI0IUjzVmb7fFhvOBBDoreSX7P3g1vFgt7c4Kx+vG/NYSGn/rXZ/eGbyT3isGcUt0Z/qh3QaIRixxf88b3ELljrb87Hzbi/sdBDSo4ieouqINQbLUreIoO2RrXBwgOSg/mRXxmd2vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4+s8DsxARloVeLybZQvgQ822laV2xsHNA34NVig4deM=;
 b=y0Dmd4hNaV6lkV95hqPKJ0DSqP5JZWfa0zASmBHN5iF/v66zsSNSZ2k3oWm+gmucn7qvBD9C0X3/hhia/0R5LpgC+Xv4UgOJqLHbbX489A6/wBprQ/f93DqeIi4qmwfbdcnIagCKweAcNy9T/Xq9Cm9QW4Lyel7kdL6zMwd8YFo2CJ2NbkQ1kXy0waBg5sn509ZsgNiA9JQRUklXEImQdewETXNlwIksZVukgMVtbpqoFxKoGngLAxxKzHpvjngjbXo+V81x2qTXCzr/INN19VjhjyrUScJWo/YbhxqK879guac+bzgT7YwESGYjXOLZRvbTypgKVV2gdMVPrNVayg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5889.namprd11.prod.outlook.com (2603:10b6:303:168::10)
 by PH8PR11MB7989.namprd11.prod.outlook.com (2603:10b6:510:258::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.27; Wed, 9 Apr
 2025 14:04:16 +0000
Received: from MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073]) by MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073%3]) with mapi id 15.20.8632.017; Wed, 9 Apr 2025
 14:04:16 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, "Salin, Samuel" <samuel.salin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v10 iwl-next 09/11] idpf: add Tx
 timestamp capabilities negotiation
Thread-Index: AQHbqHOjRn8qxDsA3UaWElOPtuJIrrOaR/8AgAEU7oA=
Date: Wed, 9 Apr 2025 14:04:16 +0000
Message-ID: <MW4PR11MB5889766212BD05ADC555FD608EB42@MW4PR11MB5889.namprd11.prod.outlook.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-21-milena.olech@intel.com>
 <757ed954-47a9-4be3-909e-5a343f453314@intel.com>
In-Reply-To: <757ed954-47a9-4be3-909e-5a343f453314@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5889:EE_|PH8PR11MB7989:EE_
x-ms-office365-filtering-correlation-id: d8f4317d-11f2-4f71-9213-08dd776f6a68
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?hbzMLEvMHrxQDaPjObLcgFEQHgl1DFNZu3Ud4RvG2WzeI9oNvCNTqsPkbbcw?=
 =?us-ascii?Q?pVMdph8KM4JYrGRZdUKmznFbqD3m4We3/05spAzxVEeGW6uzd0c1ikgSntdI?=
 =?us-ascii?Q?zhhU/IkDFM+u7IOJO5YrkHjGWERksvvV4+hR2XibcVb2Auee3CxzrHhdZTJp?=
 =?us-ascii?Q?7zcgx+j+AlW3WDIfUiBBzNHBcrgNMtZBMc8rg1wuW27ol6WnePciaPpbZaMU?=
 =?us-ascii?Q?PHzkbKPY5iavEc0bbEhXl0bUIS3CLVZ4WFY7YWnhFcT0PTcnXTFd6QgsC6OM?=
 =?us-ascii?Q?2Kppgpl/bX/rialyg4V93Vd0X1d9/oQj7zkeyW0Q4WIHAtgwnT/wY1xRVnon?=
 =?us-ascii?Q?vGpkifhVD50jXzNc7yK7GaVyyb2A4yDmAATHan0SWztBN63MLW/CzJX7C7rH?=
 =?us-ascii?Q?SO0zN9vTqwgTZ6RnLNYotGpxyEHYib0102R9tKSsVmVRIJMut+5d93KSbQPc?=
 =?us-ascii?Q?ys1cGGxd1F9LySPQNwRPfutm0UDeTvCZ4LIgfFkyF5uCVNsqMjCXFlg6qTa2?=
 =?us-ascii?Q?HSXEEuvLPMH2HkhA9kNmiHtkEitF67eJuV52n8GJcRU+mn5aJim9Sq/eH6Eh?=
 =?us-ascii?Q?vpNm54cQQKh0Z8L/aGtrIA3JU+oIPCfxHyFUM4LSprmpKGC8fKYWE38yzlwL?=
 =?us-ascii?Q?XfxyMZuT4HPyuZ9t1Jozzwqok512X2d/8t21sd/z3NtAJunQEEfXU05buENf?=
 =?us-ascii?Q?9kU53rqu66oUEK+HmR2k5ZOTjZfaYh6SGzGWHKvvrtBIPRln4LtYL0Nkg4rN?=
 =?us-ascii?Q?FJyajTYbvg/bnwrDq2ePyKtCUTkrF5dGIYGHeh4SCinPtk7eEvO0PGKTBKMn?=
 =?us-ascii?Q?50lbLQeDopFugopnPJHffE4rslRZS6NQuoahipBb8EO/Aa2eb2Tyu1iCKOOX?=
 =?us-ascii?Q?OgHsorZTphIHB6aHYZ5GWZrSPYZBLRKI740GZbLqJxBmUqb5KwC1y1dhdYwr?=
 =?us-ascii?Q?TGdw+Gmn4tZh4VuKLLN8NCn6kPZxDHxCZyZOVB4y/YhtCRwC46ml66W7XTQv?=
 =?us-ascii?Q?B08BtJGF+7SMQms8mQv9JDvywa2aIqf4Tjo5o/iAJ1F7Zkgnk4a6BtFoRm06?=
 =?us-ascii?Q?zUzmFO/VEI8FIMsrgxixM/WL9m+Ga3VF4Z8xqtG3RdBdU4+NrMhd/jFG52MG?=
 =?us-ascii?Q?dgAFiks219ABNFJdghmcTSp8Ado2YQRrIUjHwjJK3Tqd7+7lODypYA+WIRRr?=
 =?us-ascii?Q?sI0OoNks/bLRCP6dHrpE1SPcs79yxJ5xQ55BX+GKUlh73Q/XlaoTp8ifwVQU?=
 =?us-ascii?Q?BuD+7W4qpMlmL58Z4jwT9NoHH1j/+LkoroPtgVUG7IsBMQUH095fJ5QXgH84?=
 =?us-ascii?Q?Hd+7f13xonW13sLBT+wP1MF2WNjDzBLhnX9rJK4m9itOvv+Ox9fc9x2E9xvv?=
 =?us-ascii?Q?xw88o5wrsh9isygckCogdmLjQomk/l6GC5oLXnw8CIaexzgyrkwE/hWHo+V1?=
 =?us-ascii?Q?gJW6LzOei+DPuvoMF+4rlpbpQvDcFcMC5dsXn27Oye61r++LEi5Aw9ptKvxP?=
 =?us-ascii?Q?isIhzK9NGLnysUE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5889.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/rVyZ33ZKIKfbs+EW8KazZIbFHrKYigTUAlPLrwHOmJ75wN/BWr0ymuhxnBd?=
 =?us-ascii?Q?rN+QF/lRWnQrxxQxs/XVkdcUAAa4T8ZVOkdKFF8362RafFwPVzOsVk1sYPnD?=
 =?us-ascii?Q?iIjP6HybZbIbqCWyx5VCBJgqngKND/TIvOzb89pbYaMyUdIQt04C6qNMhBDE?=
 =?us-ascii?Q?ob17s5hnejrl0MUb/8Akf2l9y0TT1/QPaAveXtj4LFVohzbFr0lWNm6El27A?=
 =?us-ascii?Q?S8UUnPiYU/p5/mtCewoIvRi3pHcuc14EZUGAXeBuXOIKxxQe5US0VpJ7Jyg1?=
 =?us-ascii?Q?KBm010+uciYKLrUAwy4ARZXgp6J46p/09AdlY+RbdGb9N8ujMQS/Rc/HfxCt?=
 =?us-ascii?Q?3LElnx6ydnPrMYBj19pE3ixUSL2n5/L49PCKjFmq9t8UYPr2tL90qtMI1oON?=
 =?us-ascii?Q?eo4wNxFuKRx8D8zOjKqmaGfaPvF373iOYuZVtgiY5fNIdDjofYBkl+p/xvlr?=
 =?us-ascii?Q?9jmch/vXbCMS738eR4tGWCXCkgHWszmgJxAa2d8x8u++alYJ6pmNZfqfU7n9?=
 =?us-ascii?Q?c9d3KSKHtdrScR/5CTUK/llcDSSvMC8H2581sKsq4+N8o4nFTRZ1A9zl3k/I?=
 =?us-ascii?Q?V19BtQ9DJfSBpaMJzVuXf1efRm/j2fFTh1PbMHJrhKOKqVlZYGFrE64LdMQ8?=
 =?us-ascii?Q?AVkWQndZjX9ZA3nzJUD1/vfSk4IFvda0ZR4gJLGbcxEpoSKDkI+qSdyYFXb0?=
 =?us-ascii?Q?3v+ugqHV+zWHVQAB7iL056anOVeYhp8pesfwXKuAKyKCmb4BF5A4pUjg8U52?=
 =?us-ascii?Q?KO5g6l0H/9p3RIYDuLPbZ8KiX7Z9csplf5+EJ3L49NgkbtYK/s7+69HoNHUj?=
 =?us-ascii?Q?uZYEie7RTEDyjKw8yiUug7F4ITHmapLtR9IgIE6rVD2l1aek/RcyJfNqt4Zs?=
 =?us-ascii?Q?xZOwfPti3pjA5YZ/MBso6LG0lwBFIX5hA9RU25t6qoiaC1xGgyWYzuUog1hi?=
 =?us-ascii?Q?yf3vn446VMdVFNL2gbdtNocEYId8Vk0TY71xd3haVUbUZE4eB1HlfKMgfH2F?=
 =?us-ascii?Q?53A3lpi8kSwGwRKyUcwbHhY5dTGzxe/IXC/b5VO2uaesBxQ/zGpFdvsN3asM?=
 =?us-ascii?Q?0j/FhYBfhpEyAV0DAVuq32mN00nYJhaCdpDYDYX59Wa7txjj1Gkn8HH7MCqd?=
 =?us-ascii?Q?bACmA2dzU8F7IhnT4od21rCzPcPoW/nFefZGajpEcYKWSL/bNYhDfxb2Lz0E?=
 =?us-ascii?Q?rSLhKZQ9DXtEigDWderhV7WQllLbzFX77PVtH2cTgBHZOPK00NG0h0IfQ8Ka?=
 =?us-ascii?Q?xrkqxUh6wbZXn5TjQy4S6FPoJ0c2plJ18VEuV7LWba14wNOfDDb3QdX9Gdtr?=
 =?us-ascii?Q?pYNK/doktZcoyD5IOKWfnIeo4zcPzNEKJyl97Xs0ekx8MhMhUQ/J74z1NJxO?=
 =?us-ascii?Q?HQBpQMKls27ybr7xvkmh1s44mzE6WjdvgnD480zKaX/XKzxSFXMxkC0ou/Zk?=
 =?us-ascii?Q?XDvmVp0GhXWhcQPzFA68tlnvKQQozGWx9mDeOHRqoEhRqqHKmkGf9tIQWBGn?=
 =?us-ascii?Q?t1ELgB/FBopF3PJzNYuEKVlBNBbnJ0mamuKq8Hn3hpaBCvp7AtCYWnRcplpw?=
 =?us-ascii?Q?9N4ssItC88VOYsXi8sAxDutAAqCbMZ3qlWxHLgqR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5889.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8f4317d-11f2-4f71-9213-08dd776f6a68
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2025 14:04:16.6130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E90BS3em0vMnIX89f8NXzCnUmtKBwDi1fpS+qRNdJy8yfumFmszMhW+xhR/kDaLCf3Jfaiu+uBJhxt9FeYLpFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7989
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744207488; x=1775743488;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CLYDUslKeF79P4UZPwj/K0DII0ilBE7aO9LPEZLfPx0=;
 b=YDFzrKANRIGgLeNcMPGCZ3mIBDaKyYp1fOrpd8WFYCvj9zs3w6h8Dene
 BbvoYKmYZDulZrkvH/2V4gHzHgosPFvlmXHvKIxWz4NasXjiWqtz7Kcwy
 VoZ62GNktiizmalV+TSsgK4elIDHIB8vqLrWVd+g3UVo5PGNu37r3TDi4
 kOev3zJ4uwzpG89kd4eOzJFdvuYq4KoJD3Z98fTpWxg7kFwehTCkGnAPV
 BDGEJR1hSGVpynVeE7ddz9DUJ1g+jRraFIde7LMlMIGvkEEkfBl7U+fWH
 tGdc6Wq4hJjk6qsNlSlFNqOM/WfQj3F1VxZNgQn8r5uO9Yp8EaZd3BVtr
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YDFzrKAN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 09/11] idpf: add Tx
 timestamp capabilities negotiation
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

On 4/8/2025 11:23 PM, Jacob Keller wrote:

>On 4/8/2025 3:31 AM, Milena Olech wrote:
>> +static void idpf_ptp_release_vport_tstamp(struct idpf_vport *vport)
>> +{
>> +	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp, *tmp;
>> +	struct list_head *head;
>> +
>> +	/* Remove list with free latches */
>> +	spin_lock(&vport->tx_tstamp_caps->lock_free);
>> +
>> +	head =3D &vport->tx_tstamp_caps->latches_free;
>> +	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
>> +		list_del(&ptp_tx_tstamp->list_member);
>> +		kfree(ptp_tx_tstamp);
>> +	}
>> +
>> +	spin_unlock(&vport->tx_tstamp_caps->lock_free);
>> +
>> +	/* Remove list with latches in use */
>> +	spin_lock(&vport->tx_tstamp_caps->lock_in_use);
>> +
>> +	head =3D &vport->tx_tstamp_caps->latches_in_use;
>> +	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
>> +		list_del(&ptp_tx_tstamp->list_member);
>> +		kfree(ptp_tx_tstamp);
>> +	}
>> +
>> +	spin_unlock(&vport->tx_tstamp_caps->lock_in_use);
>> +
>> +	kfree(vport->tx_tstamp_caps);
>> +	vport->tx_tstamp_caps =3D NULL;
>> +}
>Could you provide a summary and overview of the locking scheme used
>here? I see you have multiple spin locks for both the free bits and the
>in-use bits, and its a bit hard to grasp the reasoning behind this. We
>had a lot of issues getting locking for Tx timestamps correct in ice,
>though most of that had to do with quirks in the hardware.
>

Ofc :) So the main idea is to have a list of free latches (indexes) and a
list of latches that are being used - by used I mean that the timestamp
for this index is requested and being processed.

So at the beginning, the driver negotiates the list of latches with the CP
and adds them to the free list. When the timestamp is requested, driver
takes the first item of the free latches and moves it to 'in-use' list.
Similarly, when the timestamp is read, driver moves the index from
'in use' to 'free'.

Regards,
Milena

>Thanks,
>Jake
>
