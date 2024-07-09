Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D95292B13B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2024 09:35:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C466340E72;
	Tue,  9 Jul 2024 07:35:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 14bA2dvEg08n; Tue,  9 Jul 2024 07:35:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A392040E7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720510534;
	bh=nfMM7t7aPki+5k7BNdUwufxCvbCv/gMyqMZwj10GepE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fsqBomR7BESPrPINVE0LPKdIDK0KRnUKiSo9lJCvR7xGxRcfsK56HsFvi/CgBXztw
	 cfYsZSVQxEdhM15zMrAu155agyHWVy9jUvbErHfZg5dpabuarBVUEE4hTEV/LdnaQe
	 cg0An35HfiXmquTRdGt0h9BXW6dOd8hOJ3AF09fBw9Ku/doLherEuGJZfre5RBApRW
	 6EdolKjUAqF78k5EtKOMPjcxEPvA+8WxaSWeHCkC3tQlr6KmYW5/4vHZ9sqWefXz7T
	 aOERghUKGesM+VtFwyeAY2+yz3ERAfP0mGZebZ/iWtxHqqVphrkDDyn1sSR24+Bqdu
	 EJ8mwsbk9CQEA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A392040E7A;
	Tue,  9 Jul 2024 07:35:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B7641BF86C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB7A340D87
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:35:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uG5Y0vaT4Myi for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2024 07:35:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D795340C7F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D795340C7F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D795340C7F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:35:31 +0000 (UTC)
X-CSE-ConnectionGUID: 97plwg/LTW2usBkdn4cYMg==
X-CSE-MsgGUID: fdUd86yCRMqh31a7A8rXDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="28351405"
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="28351405"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 00:35:32 -0700
X-CSE-ConnectionGUID: T2BZ8ONWRQiec2fxR953fg==
X-CSE-MsgGUID: 6WVRO2yARuaOIDvoeTRZhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="52088950"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 00:35:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 00:35:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 00:35:30 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 00:35:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g/jZM63EhGjiVjvu67cdVbE8Rlp3uOgQKth8/fBOIJrvIuyhFBq2U1jIJdnzMeDKEcZB+pTcvJBy4tF0W19Bu3DP4Nd7254PIVLzLtXMysYzqFHUhuolAvCjng6/uTMusvYmqiTJ4MSrUF8cHjNJWElsATaAmxTrFQKgYVoMDb8yr/CsZPvNRZuTeGwgLDZt5T6fIHXJU9q1q3Hrl/mgA+0KMCNMz1At9nwbbcMb1g5NSu6aVJhIDtRfSf/CV923EgnxZHuIOIC0EEAvAXBj3xVs1Fmt+bdH5tKfDxClHZjcGY337DaDyZAT74kjF/gtw33atm1szll8gEuV7CU1Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nfMM7t7aPki+5k7BNdUwufxCvbCv/gMyqMZwj10GepE=;
 b=T+T8Ywg1IEf3P33kpTffsYvJC4PmydIZ3vQYaPOlu+sFOapAhY1uhkoSA2epGASdm/09StcWPXEj2BRSSiDoMUSdzH2kk1imGwxze/WMH5Uc/MLcd7frBiHUGCZTrdCBs61uzzNRmgQnr12v0AHuaB7NCkDDWRRYui1f4mvnsR4xNlPVGkqc/cHVq4N0R9DezESqrtzOgsfI5o28LSD3GuinKrhVcdeS7B8ZmMfZqhBcwW15jkxYErptL8Ypu0J2lrJLKQn7v4EUzzSoBCDDy512PfFvJaYcywD5utdGqb6C9HNqe2wDypQuGkSxKEg3WWQlFvy5HH9ggL6OY/1z7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB8249.namprd11.prod.outlook.com (2603:10b6:510:1a7::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.34; Tue, 9 Jul
 2024 07:35:26 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%5]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 07:35:26 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 7/7] ice: Add tracepoint
 for adding and removing switch rules
Thread-Index: AQHayKIUvg285EoIZkit4uUqaK7iGrHuE8fQ
Date: Tue, 9 Jul 2024 07:35:26 +0000
Message-ID: <PH0PR11MB5013ADBC44FCE9C7C091908D96DB2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240627145547.32621-1-marcin.szycik@linux.intel.com>
 <20240627145547.32621-8-marcin.szycik@linux.intel.com>
In-Reply-To: <20240627145547.32621-8-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB8249:EE_
x-ms-office365-filtering-correlation-id: c0327455-f254-4cb3-99f8-08dc9fe9b331
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?X1/k6cjB1Uuv599PHofBDRD6rwzk3lIxdT1cbXG+p3njLDEU8oqBlycWowgy?=
 =?us-ascii?Q?pi8S+U3EQUes8p9kqUVS5YUgrMvTzthimLBc0aja+Rt8m10HAVqyfOfEcCaD?=
 =?us-ascii?Q?60/fq/+/RU4uRTrcFhAgP5dGC+tFbx+3DBc/9TIA0J4/H+HwpUrDpyvDyWzz?=
 =?us-ascii?Q?aPawuGNdtH7EJ2SXyD3RQPobIqSlc8pwMQKpOudSGA6R47ZjOY6hezMw3DOa?=
 =?us-ascii?Q?reOUkdtZMCWWZJ4gG6JidNmsO+m/xaBy0Jng5bOjpUVeqhqfhBizPC1ZRcT6?=
 =?us-ascii?Q?tKBCoi2U7a4/C31TTLBSX7IqMHuSsgwKHCNj/WHpBTssxisdLXRmbi77UdXZ?=
 =?us-ascii?Q?d0aG+qEDDRKCebRmLkHq92IhSfdK7lpzaEapFroXLjC1pWhmKdhe/I2XP95a?=
 =?us-ascii?Q?0efqB/qb5pa0pLO2jU2Ory9UBbIPsfS+obaUVi3xlEfJeQKxXfQeq9rCE3qQ?=
 =?us-ascii?Q?mIMtm5kWvtrfZ1Hqq20do7Y2XPDQlVZ/Pt4V+zya3swBqsSro6XsoMTmgOVe?=
 =?us-ascii?Q?Gzhx+YjeFJ30WNmz+c5wuJFx+7aGsOnYGE8HcUyGRu7ZD2rBn8fRRUHs95Ar?=
 =?us-ascii?Q?j4VahtpXI5jPo/lt7CqPI1xukl2c7/hIEAMVtNuV2kdtPp5dSLRvyrBGOT1e?=
 =?us-ascii?Q?9UGdQ7tA+Zq7y/tIeBt+sdxutw+1ktfU1yiQQzS8tXj45WQnNgPTDFNvpKw8?=
 =?us-ascii?Q?BF6nh1VIMsU8gxgPDq2B8ltncw3GofcJ9AkClUuHBgwIgw086pXY7Afz6KDD?=
 =?us-ascii?Q?dPeMt73KJWgFueXvm4VdhO6UZUogUxwUHLiO1SGJgUW9jjQMa+WaemcnxN8h?=
 =?us-ascii?Q?qprL0BO0nr0fb9kf3O/2CRO+KsZQTSGD/LNUlT1vMss5ArWCfQiY5jZteyig?=
 =?us-ascii?Q?blw2+PqQ0rpaIw53RseXJ/H8qok9P5e9Mq+DC6nMOW70JcsACL1eG61EhqEU?=
 =?us-ascii?Q?Jkjx6HSHS/bu7+GlvYoKc+2RFyZpYZqd0GlXiNQmI5It+H0kH/ZktXdgd1zq?=
 =?us-ascii?Q?eJ6nZlDcbR+YJ3frxcelpTg9JAZeHhcmyXTWjxZeJa5MZA56J6+dyc5TUrfY?=
 =?us-ascii?Q?cuYPFSCiaQcUp6xXBjfhFAF1f7nBUbcNJcWu6gR8nj0aPC6MKbQGZOPyOJ84?=
 =?us-ascii?Q?Zn037mJIT6T1KgPiB+hZnEWWtjyuBDK2ip27wM+5MDgCR+DIuF9ycVTdbzXZ?=
 =?us-ascii?Q?WpPuOMXJK054SZKrvCajzewjaxs4JgYjPrnNeNa1iRpSbq+GMCk/SBl9tyOW?=
 =?us-ascii?Q?u9up9uQp3+YiX8q7PtzatpZp+1ye3aMFWjWWi7qY9lX7tRbL/J2LlaDUPp1/?=
 =?us-ascii?Q?ZMn7o55p24hON2lfHg61hfnxVURqFh2O9zl0jWKklWeEw4G2OcRv2yFzTodT?=
 =?us-ascii?Q?h8R4dIgKEDzZZiSKyYPQQVHzdIXxL8DanTOg3UX/lHW5A7W+Gg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zNX/7tQBQ068dh3aqPaoj3oosYiXEra0A537vdqr4mgr5EFdvbXM4JePGq+G?=
 =?us-ascii?Q?UpBdIJuzHeA8/CRY4YB02iec/lRWxQNnjApaloStIoa0qv6xb/YEQCawExNK?=
 =?us-ascii?Q?9kSKrMTLOHLTe5xVslstGNYi+ErJNIoUVuy7j6p7mNKim6HkybChDBsPiMOx?=
 =?us-ascii?Q?REhppuDYmJocqqUpRydtWRkFSmctKSzxBgUJxbgR5joQlT0ypztF1Vk9b/1i?=
 =?us-ascii?Q?hE4tcTh6zcmyeEfLntl/i88gQ6h5v6duyvAbRUS9KbgVNhHMnSpp5XSz/qmj?=
 =?us-ascii?Q?KzHeWUoEx4b57uoVtg/OSKHJBRTSeM3pk3AZGpbUY94fPH5895T/QYsukkBl?=
 =?us-ascii?Q?1nkCIFNBa0JWdfxlfstAdi2+xnAk9xG9xfAijh61ebma1tgLNwpil5uedml8?=
 =?us-ascii?Q?ZbM1DeWXdSXj0NIdDq5J2x1LB5kW1FlbQvG9EyLnrj/gw4j1W7xacihUHSza?=
 =?us-ascii?Q?ET4LV4Yo6rnMrjigVFFVPqgqoXl/pYXkV68SGerYmLrBapEkGYeycCGY7rcu?=
 =?us-ascii?Q?gCB4kVdbQOgPoroGGdxVMs+CLKTRaaE4qPht4oiEFPTy31GEaoNGCLlXJd4p?=
 =?us-ascii?Q?dnS+cTUJl+NINhrnrZpr9W0A6s63j5lOOU0R59CtPBKWbc3ArLhf+xLNmzIH?=
 =?us-ascii?Q?CnEaPmYFuth+gfi8ytdTn0h5Z6ruKq5blFOKVpWx3K8bonFoDxhcQA+F4IwQ?=
 =?us-ascii?Q?R9A6W0wAA3Dh5THSsBcb40hFneBnvw7D+AFgmdhKN7eRpUqXjVqXSImPTNLp?=
 =?us-ascii?Q?lDlZFs+DRD0zXpYdIkNQlYvMZAfrHXKcO7NTOMU3fXOCejxxQaaSIahF6WXb?=
 =?us-ascii?Q?ff0lpBFsO4wq096rkJ8eRmGsoj2Hh6PYEdxYfsB3IE1xpiIQ8HH5j9NN/xkp?=
 =?us-ascii?Q?iyQEV2CDfAR3nCmyHNJ3M6GPz7GSzeoNJaDSkFEK1p++kiL8cKV6/0+Bi7Bl?=
 =?us-ascii?Q?zfNOXA0ZGWbD3nAeEJqPgochi1UP85f2TvVm0rW7AqlfctnawxQDJXZm58VW?=
 =?us-ascii?Q?qOTb9kl4HEUcb57w9vCM0VYzFsI4tkJzSI8r/xAuh1Ywy1uqS8lPR/hDseqs?=
 =?us-ascii?Q?BFHJP+yeOi9SYdkNcUGVuitOlmq3PUF60JzU74au/uocy3yB8vnvZiYIjq3s?=
 =?us-ascii?Q?Bm+utOPzw5EX/CmhgZoj7jBYivOEfjVgAdboAOVKUdxvJuGnOkgV9lCCtsGx?=
 =?us-ascii?Q?ymf2lpxC0bwqCohxGpmveGQdfTEULqS+cNNjsVNWs2yA3RC7/Sk+oP276bxX?=
 =?us-ascii?Q?RADrjID6Lwnp9FbTXL0x1qgJlupFW0cuGnzLNd/o68yu04d1i8pjdQeldDrG?=
 =?us-ascii?Q?j7KsdKrH13P6oCxiuV3sDVITTvPQVHSZNyO9uaBIoeIHIosSSVmMkqqubWjO?=
 =?us-ascii?Q?ql3s0njDQHds5vZAUNEa06s5fZqcOolyZSY8iaDroloqAu1Zy/PkiJYBFLQA?=
 =?us-ascii?Q?+c06TSboKzUoIo+txdFzjbsTB9VYl1CYduHhIPgPRKhTT4Fvn8rXYUFZ3OW3?=
 =?us-ascii?Q?rpT9buANVZ4Ow949TGiL5zuGVX666BvYuiERutivabDyNILE3UBiw7kO9f1h?=
 =?us-ascii?Q?dvYn6j5IZlaJwQeOpgbMXCzECo6ZgLlEGKu1if0WS8sZDe775/rC8s3qFHIv?=
 =?us-ascii?Q?6w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0327455-f254-4cb3-99f8-08dc9fe9b331
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2024 07:35:26.2103 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kSzuVuXHDdWYOArdE6zmoZMvYK/6FmDp0JkO07nzI8AqUSQ1Sr5l4YYsQtoTzEHa4FP8OekycgMO2WRNHNU8pIrbZi3ctRWxnPV5OeeAjso=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8249
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720510532; x=1752046532;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uu1Z2TSt4nsd/kyvjp6EgrFP0ybwItpGKwwGlJQdbCM=;
 b=l/PbnJyDUS9hBdvxIQOntiFn/PuwfajK/7Nc25AMtKyw9oex2ycCFWdl
 aBMM2SG21BEo6uugPLSEHrw9T4mlMp1z10fkk6syllf6Si3QM5aDmPr1d
 hga3WYzwNfuJJrJcFkytZXRMZsDSuK/YCov2seAjS8sEIQARh7u7hcVTv
 svWnWM8Lp25ycNaoeKboU40Xxu5BCEdc6Ik16QqdzJ1Izuoa9iw2PcV3O
 Vlnm/xPHhr7zd2d25cxyrLbSa3djQ9UnugyyTFTsM+iNFiFmlXsxvsax2
 u9+Svh+QIYQVYcIeIwgxtMaLq2O4gosgfmdf1bmmdj1JFRxHC4/sE4r+m
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l/PbnJyD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 7/7] ice: Add tracepoint
 for adding and removing switch rules
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Thursday, June 27, 2024 8:26 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; michal.swiatkowski@linux.intel.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 7/7] ice: Add tracepoint fo=
r
> adding and removing switch rules
>=20
> Track the number of rules and recipes added to switch. Add a tracepoint t=
o
> ice_aq_sw_rules(), which shows both rule and recipe count. This informati=
on
> can be helpful when designing a set of rules to program to the hardware, =
as
> it shows where the practical limit is. Actual limits are known (64 recipe=
s, 32k
> rules), but it's hard to translate these values to how many rules the
> *user* can actually create, because of extra metadata being implicitly ad=
ded,
> and recipe/rule chaining. Chaining combines several recipes/rules to crea=
te a
> larger recipe/rule, so one large rule added by the user might actually
> consume multiple rules from hardware perspective.
>=20
> Rule counter is simply incremented/decremented in ice_aq_sw_rules(), sinc=
e
> all rules are added or removed via it.
>=20
> Counting recipes is harder, as recipes can't be removed (only overwritten=
).
> Recipes added via ice_aq_add_recipe() could end up being unused, when
> there is an error in later stages of rule creation. Instead, track the al=
location
> and freeing of recipes, which should reflect the actual usage of recipes =
(if
> something fails after recipe(s) were created, caller should free them). A=
lso, a
> number of recipes are loaded from NVM by default - initialize the recipe
> counter with the number of these recipes on switch initialization.
>=20
> Example configuration:
>   cd /sys/kernel/tracing
>   echo function > current_tracer
>   echo ice_aq_sw_rules > set_ftrace_filter
>   echo ice_aq_sw_rules > set_event
>   echo 1 > tracing_on
>   cat trace
>=20
> Example output:
>   tc-4097    [069] ...1.   787.595536: ice_aq_sw_rules <-ice_rem_adv_rule
>   tc-4097    [069] .....   787.595705: ice_aq_sw_rules: rules=3D9 recipes=
=3D15
>   tc-4098    [057] ...1.   787.652033: ice_aq_sw_rules <-ice_add_adv_rule
>   tc-4098    [057] .....   787.652201: ice_aq_sw_rules: rules=3D10 recipe=
s=3D16
>=20
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>=20
> ---
> v3: Added example configuration and output
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c |  3 +++
> drivers/net/ethernet/intel/ice/ice_switch.c | 22 +++++++++++++++++++--
> drivers/net/ethernet/intel/ice/ice_trace.h  | 18 +++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_type.h   |  2 ++
>  4 files changed, 43 insertions(+), 2 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
