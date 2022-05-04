Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A635199E0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 May 2022 10:34:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1310860BC5;
	Wed,  4 May 2022 08:34:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WuOrkDfyOArA; Wed,  4 May 2022 08:33:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21B9C60B20;
	Wed,  4 May 2022 08:33:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 25B6D1BF475
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 May 2022 08:33:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1207F60B20
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 May 2022 08:33:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iRYIojA0v4IL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 May 2022 08:33:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 527FC60B0E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 May 2022 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651653233; x=1683189233;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=CsBTUsPTkiGCo+U9FZfFyiXBkFhaiEF9pl9wTb691tU=;
 b=PjULi3/5aBZROv9JCqrYyPXUJWd/uDqaRjq+2nW0mc5OxwAUpDUnZPBy
 JdxPFDUYWvvAAw5RgK4ArPOEtim8+iE+AU2XvTQQEQ2YeNsFKOjVqGlP4
 ZYN/JxNzAHbZwVnrtrFjfSVBxw9MaR4uRLohEdu5tjNzY7iL5/cxGdRJG
 df1flaF0e4sIPzT7i0OnJ+6VHVLd0N1WOcWn4960ijqV7YaHqjyaNxY41
 i9ANkbHxUxJLwTWwD0EXf9HBFs4WauA1Z4UAgRkLQQB1twc9W4wAe2cSk
 Jdle4tvchtjL0qW0OxR+DgPXNCVDihvyas1+waCSdasO7FD22LTEMjmbs Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="255165290"
X-IronPort-AV: E=Sophos;i="5.91,197,1647327600"; d="scan'208";a="255165290"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 01:33:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,197,1647327600"; d="scan'208";a="599439852"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 04 May 2022 01:33:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 4 May 2022 01:33:52 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 4 May 2022 01:33:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 4 May 2022 01:33:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 4 May 2022 01:33:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dTJALaDUpNP7e6OtD/tL5Pb3L1MqmorONZqLLutIAWKDxWWAEPW15kvySVSC06qp5ThZz/udtiVfdx4yVi2rSN5BPQizDXSuuOHLDByybPyq+DgHqjaTeFILSCQe8gvfl5tjAG2iSMuMliLYOr/IK+COqkQt8OzZV731DLq7ayURPMMItxRCBoxOCjvZEcjTcgVuKKjGlI85dVLpyeg5rlY9HW0fVodu/TWAxOkUBINeUVbkUOGisbzkyGPFXVp0Pr3ljc27TffXZhJW4JQ45aftsRUaYYUuOP55+ZOIDMmyZmY4bbXV+ziUpGWiQzQWWP6KcZQZRk2QOZirdn0IZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1gSCZhXuBDDaJS94US++4/mGWb/5V6nom6Y2DLqDBsA=;
 b=eJHYyX08fFgddpjj+PF7fPn0cQKKXvQza7nPIS45erRiyKDio/AA01X1oKKqs8hHgFs1YFRIxaGRD37iXuqsvGe8crOlbViYbOZDsTXDhVdXcEXaDaiKW2VBLyo1MbPXRhPkKN1i+bnTlx5DD6jMcA/cyP8tbJLchIgmaEytJCquVKUok+n7l6mQxfiV1GGoUsd68/0pP90dsrIWGfu/lxPOCVOFXln8kMXfQUwGQO9ut0xy39mdcNI9oXoBnwISKuz15Y8ce4Ob20617nckE8QdA01J5w6PuRjPNLj3kt+hiqeyttG+hl2om9q5ccOX4ZXLTKbEDqTYoa0FaEznaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.24; Wed, 4 May
 2022 08:33:51 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c0e3:dade:6afd:ec6b]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c0e3:dade:6afd:ec6b%4]) with mapi id 15.20.5206.025; Wed, 4 May 2022
 08:33:50 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/2] ice: link representors to
 PCI device
Thread-Index: AQHYQrR1Nj6hjJzZl0igswokYwG/8K0OnbRA
Date: Wed, 4 May 2022 08:33:50 +0000
Message-ID: <MW3PR11MB4554F4478F50EB104CB83F729CC39@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220328145828.10097-1-marcin.szycik@linux.intel.com>
 <20220328145828.10097-2-marcin.szycik@linux.intel.com>
In-Reply-To: <20220328145828.10097-2-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df0eb33e-b020-4faa-c30d-08da2da8d0db
x-ms-traffictypediagnostic: CY5PR11MB6307:EE_
x-microsoft-antispam-prvs: <CY5PR11MB6307A642BFF6D9EB3EF3F5849CC39@CY5PR11MB6307.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GPAbTqvzkaV/IGjlLAHSESiURw3uBVDeSmv7oYIhFzFrHKYzsg2jOgIG7oFYC0TkWeOAH5riX/2wexr4rWZ0lQb74Qj/an44ixQ4brpANahjiPKAqsBOzICp/rv41p2gVSFVvoNSk3EJDsTVxSaDtyGVK298REXElLbTSvNxEUmBGDU/peiwUuhncCnAe8yRhQAfkyIoYNvHOieVOICRHNChrU4zqum7Ubhsg5E5gmHAN5VrpBw+smalwcyDn6j27nIWO7doqBhhhkr0Oa/CUGXaHD3Xh7db5LzrnsmViP7X5srxvu77/AU2De8zwpl0Eis7m65qVgWu/tLmr+h4rquLR+/8ZYGYQFpzzWJLp7M2o1xZmPHLISzBFX4RqLdBm9Yy1pknxyV5yQ5OKhQwB6zjDO/p69I9EUnMOrGDF6hz/ojy2ZS07FeVQxWLA+1FW45gsnaoJ29SyRoIYnDmcc6OuoXCMRLSFXleTm0xREslsZuG9R/ZL3CCX2xgJybaGQIQazF0jLM12g2Hgv5GJmTZHOHntnjVxrImBweI6MC8nvbmwrwDptY8PTKV2+YBIrjjkJX05Ufo45vx1ZTtGCTv5SwH9Q8K05nP9f3u85jKiRHt3POUKnhj9SQBnQLsAB0Fx9jtpQyqCHLYF3kv39Fw4A5R1f0X1nbliw4tdh7sf5Sv7lqDc8bw6q8Ji1Xh0aBRQjgjWBxFVZSCXBxmAA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(7696005)(76116006)(316002)(4744005)(5660300002)(110136005)(122000001)(86362001)(82960400001)(71200400001)(8676002)(66946007)(66556008)(66476007)(52536014)(64756008)(66446008)(38100700002)(8936002)(38070700005)(186003)(83380400001)(55016003)(2906002)(26005)(9686003)(33656002)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hwOHGcgdpt8DOEtA9RqcUvlirKld1ex2AvS5IT4K5DcTMC+GKtfvmGdTDIH0?=
 =?us-ascii?Q?1vwo2CyKgLWHD4kibaNZLLlUom3Gz9apS+Kk2zYlYjg8apIgGw/vWCIaNj4s?=
 =?us-ascii?Q?OVM78EgmULEjCiEEjVyND5zH03OdGsI/x4a+16NIPnw1RTFfQ66hLiMqLjlk?=
 =?us-ascii?Q?jzFxry0K2tjr11rVev3Siqssqt3/fImy4RmVTg2AAzRAe07BPmFE+Kd1lWM8?=
 =?us-ascii?Q?1BY2OUjavc+D4uhrX5Mo14xUCmJMms6soClP2oJP3wYf7/j+DORg3PLsJWTN?=
 =?us-ascii?Q?Zb2ogdIzGAmzLJCMeo6j3omJRLFIRUCvB+N/NAEaXL9IWCRxhjLooBFZw2Tx?=
 =?us-ascii?Q?K131feOBxG+qEvZheuXPUZjTJ9HSSvd/jL195SA8AknjBkMLaeBRXxucAaWd?=
 =?us-ascii?Q?sGY1a7Q9nuvqR7OMBp6gdEg7d7Tlvcj68bgEA9+XeyseBWLL3H7QlVxs+a8W?=
 =?us-ascii?Q?x0TzGiiOMjDwdQko2LjDuF0hB1PJv+m7qIGNKcZeMrUe5TK+6D+MRRnxuinp?=
 =?us-ascii?Q?MzgmPtdURHkqALT2/513LxpwBHZBus3gAc7vCZKBJ8mOWGDWjtOdQwnf5YGl?=
 =?us-ascii?Q?LE4nLkBZnCiDzRO296Bb5UUIhrBAa4kwPW5KJGFVKNBRDMAv0D2HJeaJbEPN?=
 =?us-ascii?Q?rsgAtJNmy1u+tzp+iqOrPsD6xjc/kQErNyGTpfgz/SrUPkRx6aKXBeEZ/tuZ?=
 =?us-ascii?Q?UFPe7SRBhcebST0rnhvJbFXjVfCb5ZjGsk/Sam3uX795lrAsk+iG7HENcbaa?=
 =?us-ascii?Q?rCX1ywX65pqJYa7GzKeRLKlcV3JMUJEzCxorMtlW45J+QYFS8IdomzTMS5gh?=
 =?us-ascii?Q?JIigJPmkY3nx7MTZOZDyOo+PIjXg/hD6ML00p9GFLftnjdDbMEjaMNdUi4d+?=
 =?us-ascii?Q?2JbwXXx1vuMD6rIH7Q21K3MoYnD29k8+mRR465JLTgcF4v2fXY1pGGz9Mdaq?=
 =?us-ascii?Q?GE/HtGgbNSsbGO3CkvrB/pTQjJ0JhhJKUdtEB6Qr2jNHn7nrk0fIUAxVPS76?=
 =?us-ascii?Q?iAqcSCqnaNce/02hvILrm3DGT9go4MfzMIur4zQpca3rVnqtLM3H9jMKm2ps?=
 =?us-ascii?Q?iACBXEF7/Mjm4G+TnzPZhLkcOONFtHsjkiB/1cek+XJHsLXvuBZHpXOMUtli?=
 =?us-ascii?Q?VEsviII44lOAxQV01icpk/HVCwOJtcKDzV2iJUC4TFx2eKkmqGCzTz3+5whW?=
 =?us-ascii?Q?EuaiF2KcjqUdV3ZNb0ha1/kWAusGBdb0P43IXQHen4a3JNWPH34+AeognPs7?=
 =?us-ascii?Q?9uII9MQX8zcOOxGvTejfTleaf0NwAIN/6VT0EBibgfAnMT3VzbL8IxfSgT8C?=
 =?us-ascii?Q?Yjb2EFzMP63qvSIj4ehQ4MFMtErLJ5p5hZoyeNLWFXGrv+ucpt+xBWQXG4SH?=
 =?us-ascii?Q?NKxY9IOO+pCel/FLar7FhbaB7Yha9qZ+Q7KZ81xtsSTvqS41ZtZFGT5kfawt?=
 =?us-ascii?Q?KEl6BYGcw/Un7PBEMEhpjTZagnYuRAsSCx/1QyN13Jri5XQNxaJVhs0GyBy1?=
 =?us-ascii?Q?49Hg+cfeHmtTjmkDRYPV/A8H7UJxs4X7e/PhHwKyA0WeWVPzIAj4huOVva2l?=
 =?us-ascii?Q?6cmkIfWJ5MHIodXAeEmgCz9e62kR4BdYpBYgMkMLAFLwaikto5F6oUnl1Qjh?=
 =?us-ascii?Q?MoB9yNZ5IOLJFHqyuRmS7w+JANJHgpg5aEkoVYZ3d+ncPSf8F61nMeTewLMF?=
 =?us-ascii?Q?pedSMk1x7mvCUtlFD9V8rErHx2Px2/NpLGyaAFB5z4HOEQcjAzVQxTI7DrQ7?=
 =?us-ascii?Q?LflUSo6vcL41RQ3rfhb+Yui3UP0TxvQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df0eb33e-b020-4faa-c30d-08da2da8d0db
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2022 08:33:50.7696 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BZ4hClUAEVCPPC2hKgtkcZq5CTKqRAslOHJbM5TC7U64+buM6jqDkcZBofOIya8BwaMZWVTaJRG6iiwk0dar6EN1PZJ/99aEoBI2vit0UIk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6307
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] ice: link representors
 to PCI device
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Marcin Szycik
>Sent: Monday, March 28, 2022 8:28 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next 1/2] ice: link representors to PCI
>device
>
>From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>
>Link port representors to parent PCI device to benefit from systemd defined
>naming scheme.
>
>Example from ip tool:
> - without linking:
>  eth0 ...
> - with linking:
>  eth0 ...
>  altname enp24s0f0npf0vf0
>
>The port representor name is being shown in altname, because the name is
>longer than IFNAMSIZ (16) limit. Altname can be used in ip tool.
>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_repr.c | 1 +
> 1 file changed, 1 insertion(+)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
