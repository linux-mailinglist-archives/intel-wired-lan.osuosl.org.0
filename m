Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E55829C37BF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Nov 2024 06:24:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59FD240286;
	Mon, 11 Nov 2024 05:24:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MZ1lBBNbVn6u; Mon, 11 Nov 2024 05:24:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86C1040257
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731302655;
	bh=S+3F+46vZosxmJAwXQ+yXf3J17AsScx6IDnfs5Cr3rA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8EgODTf9iPgIpspJFAepL0uqHRujbOTUb4xO8/E+WEvnEwjhMHBmH6wsCJMMaBsl+
	 1X5g6YTtPomPspEvZNur9PAOanqqXnYS/4fnNQJpg4hP4FPGX/Yu9H43tp5mIE02QJ
	 7fix+FrjHrikRhIZKj3menRa/wPuNFwB4NPe3tFdQVmQARcFbzcTcM1khNNbt71ZVU
	 Pbc27weizbfa1ib1bCF9p9wGEE4acYkUNj2jdwLrKxXkOmsigSLnbkP+KopxuWRLOp
	 U6Zh5CUMjnC1U5Yo8qBWfDboIF0THejYEe3I4l6uOrWCHsUVOWTMei4eLHvnpVp5Qw
	 bTBdUl7gCRkHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86C1040257;
	Mon, 11 Nov 2024 05:24:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0513F6C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Nov 2024 05:24:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E737760614
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Nov 2024 05:24:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uJJVBHrB8pjA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Nov 2024 05:24:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0223160606
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0223160606
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0223160606
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Nov 2024 05:24:12 +0000 (UTC)
X-CSE-ConnectionGUID: NQR9phe1TNiTxSiLlLJveg==
X-CSE-MsgGUID: lVQxesr5Qy2+6NFirbEcnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="41726588"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="41726588"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2024 21:24:12 -0800
X-CSE-ConnectionGUID: LCmTcyPYRH29rtfpRTnSEQ==
X-CSE-MsgGUID: pWSP557wRNuUaChUk0J8kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86333025"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Nov 2024 21:24:12 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 10 Nov 2024 21:24:11 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 10 Nov 2024 21:24:11 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 10 Nov 2024 21:24:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eDCslMRTUFWGpOTICt8YvtDjDgwx94zvSrMzCIuKWo5lvaHiFNMhwMO1LE5g6dBwaDr4uaQocc+3y5EfviWctniiGq66ugNQ/9+a/XNZTEiC1gTnK2PGRT6YHpjjswnR9hOOGjyKqifzMlDvU2uVXywaME2boNvwKFav4rdqh5wKwdN9DxSipRTADVIeuNTeVdbuNbp8wuos2dcybSGsLQ+PZQuIoH5ogYOLJcGeJdFtKLKMWiD/bKZNO5K1ejevMkX0b7SVBj3XUWUPO2vcH3aRK9/t4eZoBgjQDvBPaOhoAjCoYwn1q+eDZzZBgVtb8ikc+B6M5egZwwtN5RxH1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S+3F+46vZosxmJAwXQ+yXf3J17AsScx6IDnfs5Cr3rA=;
 b=PLEmIvzp5BFPH2jVhfnHEb65qQlePCpncjOzOxTdCiLyiVWgU04XuRuWmverRyjESsKDhxD77IXD4kxtvwA6Q2lbl6Hp/rvQRvs96Ygolic8ni7rlF0MXktTJRjRYU9D9N4pgO2yon4bKzRL9lHhLgKuKBBrcVF7JsRL1p2SoPuUejSxZ8RkVYnPjCK+t9TXtEU0cAHZqnEIQLdqdUCEtzfC5uwdUMytYJ7JRXp/jLEfuwm7ftwGHv6ilujatBtgljtM3BnnK/RSWt2W1gGcOBXvq5/kFlWo7mSe/mQurgyEl5jvaCDBwon2cJyU2Pr0OOhIH7slfK1KVdqIQkT4rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
 by DM6PR11MB4642.namprd11.prod.outlook.com (2603:10b6:5:2a2::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.27; Mon, 11 Nov
 2024 05:24:08 +0000
Received: from CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b03a:b02:c24e:b976]) by CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b03a:b02:c24e:b976%4]) with mapi id 15.20.8137.027; Mon, 11 Nov 2024
 05:24:08 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Szycik, Marcin"
 <marcin.szycik@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v1] ice: add recipe priority check
 in search
Thread-Index: AQHbG6vBWTR5GFs8z0a5mDQFNHTxQLKxvGxA
Date: Mon, 11 Nov 2024 05:24:08 +0000
Message-ID: <CO1PR11MB50095F9695E4D61BF6EF358396582@CO1PR11MB5009.namprd11.prod.outlook.com>
References: <20241011070328.45874-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20241011070328.45874-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5009:EE_|DM6PR11MB4642:EE_
x-ms-office365-filtering-correlation-id: 8ad72e8e-50b2-4bc7-5891-08dd0211115a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?EsTYY2FuZVvtyJ2ESOF+13Asm5Gs9P+/PAmd2oUW0pD60Co+72+BayMHKM1A?=
 =?us-ascii?Q?o50RFuXg1i/0bC/swlMxRmf5i/b/QNoZ2b+1qXfpkypDVbY9YvbHB8RPEZti?=
 =?us-ascii?Q?p5YFDGsV4JoNuTAwfmNUF6zjxCTWYOd68V36X+pYptPpUXUQi/HYhSpNc7eB?=
 =?us-ascii?Q?4KGewJ5zg5t3wJ+1G1GrGsLYpmhaP+wMkDuutEFxdJuOVxICEhEkS/Mbxjfi?=
 =?us-ascii?Q?JxryA0UFR/LOBJDTiTSeo+1QC3dpln2hadgbxnbw1JpmDJ052Op9r5+tB+li?=
 =?us-ascii?Q?iW0BGAkokCfIEwh9t0LB+1+3r8h8ShnBQesPfYmV5Dhqu+tGEVj81aBZOl9M?=
 =?us-ascii?Q?EBVXkj/dasnGLsGmx7jXR7HZsnndhku9idv5tvrcYYjOysLJnVvrOMtvhheZ?=
 =?us-ascii?Q?Qy8j55YqyoNGuR4ZKkkoTwHxvFgKwSVfFhJsO5nvjwy1l1lsWksPB6vqUHYg?=
 =?us-ascii?Q?ojv4fB94BWxxym+92Rnjo52MVKak3fCOiSaigrfFhS1Xbsx4edQfF8kZfuMv?=
 =?us-ascii?Q?OD2Ym2zP5ddNGP5tHNuTrwk2Yv/nXsFsIdxZN06uVsbJkGPW4CxoyNtDa7Di?=
 =?us-ascii?Q?NsyoZFTzgH/FwPOtYQ2TRyZ24MPxRllRt8e4OQBz0tm+QYsoEbXBEQXpv4k4?=
 =?us-ascii?Q?Wgzf3OfnysOgGcvqoJKHej3qBQs7TriEfAZL0OAgwYW922eTbX+mhYbkxT+v?=
 =?us-ascii?Q?xuxu2Vv4TZHapRtQKnMLPUtYG0LsgjVr1lihUIFXh2vSg1Ys89BT1Bs94Er+?=
 =?us-ascii?Q?5wqgF0bI8/thubB4tGgz3WMjiRq2DjFLefHvS2AIHovbnT5H5A8Cu07J62Bw?=
 =?us-ascii?Q?I8LliAZy9Igoe4vzwce5RVf5nIODVQPLNz9ChRex56GwQ3mmj6yRTmyq+61p?=
 =?us-ascii?Q?FnyQ07ZlP0ky2JZpkNCeB28/jbuqkuQJJe0awB9J35cLc+j1ksc9KvT84T18?=
 =?us-ascii?Q?Bl2ZBTK90xvzU24QAT1JZUmW407B+0+KzKVzNcKnuBZsLjkJLFa26ZXbsgAn?=
 =?us-ascii?Q?aHlv3YQsbCq/EL2KvFMMuCK/rGQ/ljKHAyQxpoBaQtYxKQ59YryZV6y8IZNW?=
 =?us-ascii?Q?gcpD7uinmTOmkP8p8PEKsUOlFCQpMiX0frlUWN1dqDBSzNvQv5fi01v5EeQq?=
 =?us-ascii?Q?CPNP991GzsmIwEap9lxyhwTBHcStoNht2edY3mUdNqhcw+scPaURIiSvRnN4?=
 =?us-ascii?Q?VOEgkxo08udx9caayXNUTkDYLOSBSL1X5i93MtjL+dnQq4v73JBfm0VlYwy3?=
 =?us-ascii?Q?l2S7UlvI304toWZSvvBhmlsRB4vVqbo+MUfA0/o/s6dixhzZ/B1Bgs2UA4+Y?=
 =?us-ascii?Q?v6anZFVxR8GBhfBGiLUU0pUgrpiJxS5PWhyPK8SHzrob5bNSd0r8jn2GLjby?=
 =?us-ascii?Q?lT80KQ4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5009.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+6x3js//rGVhxo+jPzTnqK+zi5lRKBr/TOL+WlrfMjd4PDNfDXSyU9jLztBV?=
 =?us-ascii?Q?b/+PAKkd+lqeIxWMzJmvKgfMexgG5YquuvUMVuso4MbV8yfhE5PHkXr+0mGK?=
 =?us-ascii?Q?JDhDwpP0lrONhOX7K/y4NGUSEBgXXWBhsrUfVK0BYeMM9HkbbJkW1xQOkmNs?=
 =?us-ascii?Q?w70X96642ZE1vCjDHYYSwIN05s6SZ63KYB/ejT2ZnSxyFHVEyMkBQd6zJadq?=
 =?us-ascii?Q?Lx/IGGq69Wjev8Ix2KGJSZD4rgI1aFwWhTpR2e8XN9oog8jonnVibuFav5Kq?=
 =?us-ascii?Q?hVV7jpLZQHU4VK/CKkHgYzKH3y3hKmUqBwxKMkX8ZXFkUPVQFQ77JHAYQIrg?=
 =?us-ascii?Q?ASnwIJxJ9FRNA9mMZZDuUlyXanV1HXGOpvOZhXiMK5o1KRpTvYRVELyJFbqj?=
 =?us-ascii?Q?vlUmJn4jgjGi0hqndY9h93r4tjM6FGd9Hlw9Z/RFnrmsIuq68NaQ2UOUHkIU?=
 =?us-ascii?Q?f5rUjQsb4CYMpG4A5t728u/4EF2tgA9KvZMY/yxYrkHj18TUZk815JHuTCtu?=
 =?us-ascii?Q?LDBkENM3LyD53kZnXw4mWE1cZ1ZTl6awU9WbIziftFuziXlBu+PXru7k+srw?=
 =?us-ascii?Q?epXXQ2DhDmu/tD2UhDkxzYNh0HFAGPVTws5VYPVBhKbiQ9kWPkNvm0doSlX+?=
 =?us-ascii?Q?zFxaSV2F6l9Qtf7qqB4/MN4LIKEGQsyxnW5HGe2rGR+Fsp1zwiCS8Mi7KZw+?=
 =?us-ascii?Q?ixFuUBKd9doy3XnN8XLkGTFXkGxwjryR5HMMuQmiwP+Gc2RsVZUQ6AItxBu/?=
 =?us-ascii?Q?8qhlr/hmG7rOaqkQErLLoUkrjj5tsVFlRJ39111SVtHHyAAJARlqT0rKWe3f?=
 =?us-ascii?Q?b9C210ZdGMqqJXjree0/V6c/ulCrpHsaZSp6wWR4uIz9202D1jAhuIVwtRyW?=
 =?us-ascii?Q?wFbeGSoBs7sKISn9msn9EFqns/bn3GEavm8hca0nal1YGtZ1RCJrQ7vvr79h?=
 =?us-ascii?Q?LavvbFqfa5lbcZheGvNHQQFU6ADa67wfPNf85s3UEWAYYtvUcBHr6zmAUaaz?=
 =?us-ascii?Q?6kfPafvGLEDhvzFL049QE2rFltZdJgS+gVZAv5YQ+vp6LSp2by7rXPndjkQD?=
 =?us-ascii?Q?666HflKLT7YwB/sX1c/AraMN8fCAOVVnlGC+Bxfhi26Uzo7+Cpjx+UjYHyuI?=
 =?us-ascii?Q?NL2ZZ3eqU8H/FDGAJH/1EocWvfP+dUL5hMVro3C5M7e4H5xh7NfXd5dll6vk?=
 =?us-ascii?Q?uJhp0y4Ka6t4P12SNg4WE6NP1p3FYrO2P7rVhYmPvLI50/rBti98MrFtxMi0?=
 =?us-ascii?Q?MvvCdY9wkFt9/IkHuAy65A8OVtAfW+swgKWjJM7/dYhs77H9gX+mmDkEXJzt?=
 =?us-ascii?Q?lAWVZvTNnfoL08plbOgpMGxDZi847h+BI6mAK0AhSnXaOul03ABDZNSAgxof?=
 =?us-ascii?Q?pHMhpyEXtVjNHT+uLLuLOLsMXqzyg1nzYG7CwpKU6qSMQudB7Dbx4BOcaEuc?=
 =?us-ascii?Q?iBzIPoO38WsU9MW+9fli95o8fZuRf1cIs5cRt+PYdfhmaZklWyexFi9chzNC?=
 =?us-ascii?Q?lZwn4gSe0WUvlAvC69p+wBU4e4aUA85yZOz+YPAsHvEKyFz6b7UJ0+6mynoj?=
 =?us-ascii?Q?DHPBeyYPNX1LzY71dDaG+6LBfYOR8rxLOaVLuyv2ydaHxJNgg7x6H3OaiSNF?=
 =?us-ascii?Q?pQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ad72e8e-50b2-4bc7-5891-08dd0211115a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2024 05:24:08.5022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zA3I4KIrJx1qGtDbYV2WWRdUh8AFVzmlhWkghijil0QP0zDwCJl1hm2y6v9p6OeMJhsx98iphPzi75l9lsLeUwuVsFDMJKtCBZ0TawYF+y8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4642
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731302653; x=1762838653;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SQpiGtK43MR5dUa8UwsZ03+4CyxP2pOpqun1fH9q/MM=;
 b=gS2vkKskLsmGYcO6mZLoz/jzt+r3d7d6dcljp1dXUSSBPKhZZB2SohJI
 oSoU/hB7z6uHAgQevP1oEx1hgEfoIIROnBCFetVRQdCvoucKQAedciEpt
 Vo8onTAE/fa0TVJFOcAI2SJ8PyKqEXTNgpnQxMv+A/gopNri9KyrZ93hI
 DzcyDicsnGzmj1Km/BOUMp/fRKxRiN3yelNpm2ocxPA+RONcZSZ+hYPb1
 RFKT5ZDzuWzEgJXgJi9qwOviMV1lpi5sAzRW0qQWKf/vYNKarSLzlRryn
 sRd4zDJvRZF75SliQippVg8IHIafUQgeqVnnwsfjbXK+TY45BJWSENfb8
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gS2vkKsk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1] ice: add recipe priority check
 in search
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
> Michal Swiatkowski
> Sent: Friday, October 11, 2024 12:33 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Szycik, Marcin <marcin.szycik@intel.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [iwl-next v1] ice: add recipe priority check i=
n search
>=20
> The new recipe should be added even if exactly the same recipe already
> exists with different priority.
>=20
> Example use case is when the rule is being added from TC tool context.
> It should has the highest priority, but if the recipe already exists the =
rule will
> inherit it priority. It can lead to the situation when the rule added fro=
m TC
> tool has lower priority than expected.
>=20
> The solution is to check the recipe priority when trying to find existing=
 one.
>=20
> Previous recipe is still useful. Example:
> RID 8 -> priority 4
> RID 10 -> priority 7
>=20
> The difference is only in priority rest is let's say eth + mac + directio=
n.
>=20
> Adding ARP + MAC_A + RX on RID 8, forward to VF0_VSI After that IP +
> MAC_B + RX on RID 10 (from TC tool), forward to PF0
>=20
> Both will work.
>=20
> In case of adding ARP + MAC_A + RX on RID 8, forward to VF0_VSI ARP +
> MAC_A + RX on RID 10, forward to PF0.
>=20
> Only second one will match, but this is expected.
>=20
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
