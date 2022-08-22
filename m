Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0B159B8A4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Aug 2022 07:12:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2210F60BED;
	Mon, 22 Aug 2022 05:12:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2210F60BED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661145123;
	bh=fSuzQJ+5TShI+Nry0jJs+eLGlunzaK7pq58t6om092E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uZeDKBvj8gMc6MFg+1VoOANIDdFqITK+Ggoxee2GxxJdKTpLoul/uyoLxOcRUanSI
	 Jh4Sp1g7Z4m8q4KEtCtVCTZkF2+gAxvw6fnDDwIYRUUtsHi82NP33wwNvtJeD4Ud6H
	 nyYHjqfba54u+HcV7OxosmEHkfwra8rMmvhx987WaFMGIsDdR8JtdycP9kovT/Zg4Y
	 xfHSGzTTjCOp/xd9MqoR08Bo4hvrBeQLf5t7jj8IEjeWrVe5hMKkhE1ivwW/Z8FGqq
	 1lBcwU3pOFlq+jMvnq5lKEVnxO3WQNIVmC23B8Qy0mxeVOBSV+MQOmc/iqlCJHiJfn
	 8boZz/NeVb3kQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gObeTS8JqJwO; Mon, 22 Aug 2022 05:12:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73ABF60BDA;
	Mon, 22 Aug 2022 05:12:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73ABF60BDA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 26F5B1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 05:11:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0CA68405BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 05:11:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CA68405BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xhun7W6tGEM7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Aug 2022 05:11:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB73D403B7
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BB73D403B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 05:11:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="290877394"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="290877394"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2022 22:11:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="712036305"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 21 Aug 2022 22:11:55 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 21 Aug 2022 22:11:54 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 21 Aug 2022 22:11:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 21 Aug 2022 22:11:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 21 Aug 2022 22:11:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gyah8YOsL26xN/yjIOGQna/i2ODDCJkVoOylaB1hx7v2munoIFufi3MGEK/VHUGqIUIzymUaNlBwpJr6duBPU5nRuiwRL1vleGzdQ9ItrxLtZ2vxGqeDuWEDZ/dxhUWdcLt+Q6K6lrEa0lJhXjUxNrrn8zJEsQA5uKQ1HSX/kOqpVLJQpYX0qNs9QrRlaox2MXb0bCLPPjdQ/4rt5IB9o0js1sEpLICqvZ/CTi7jSxsIcAoIRzIarvN5y8X8qoHrjUr8azTtlDiC6IK0vF1iVbQ1rC3Iez3jd06nwvr72aDs1qiddLZ+IUuWVFmiysCf/Ioa6GHSxj5eCMvHBHmRdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=13BYDotlDFK0ynAIlNKtHQUSJsGrPohs7siMz200tOE=;
 b=nlU0XP4XMceCb1kq1uDZGonN4EYUqSXAiGwwdmGXQD2CBwMKpPziEnqcpKVy1MSDgUUwlAPdptkzOkvHvN8977tZ+0/nnVixauUFB+6hWrigJIr2u0r7DIFsmTijDCtNIxADy4ydNcM3WvllUy9laCNJgTNtB9W6q+YYsU4zOLufN0dZe8+qcsBrFRRdqKqtj/S5zpRE3Ppgr15dhBPqs+eEyFd//cD3MY/ivc4CorQXKAe+LXn31aMXFoRIUe+VvDHy8L2kbhpdQlRU8V5gJa7jfk38nzqY6qZEB0l7vAJEyf8Po31mdjqZwfP8cvtBoH2ko9kX1tkB5/BvuJWrvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MWHPR11MB0031.namprd11.prod.outlook.com (2603:10b6:301:69::37)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.18; Mon, 22 Aug
 2022 05:11:51 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5546.022; Mon, 22 Aug 2022
 05:11:51 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Maziarz, Kamil" <kamil.maziarz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] i40e: Disallow ip4 and ip6
 l4_4_bytes
Thread-Index: AQHYq9387f1maMLWOkmfoJiJ2uXIK626cvZg
Date: Mon, 22 Aug 2022 05:11:51 +0000
Message-ID: <BYAPR11MB3367000555B046C704DA899EFC719@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220809130508.281453-1-kamil.maziarz@intel.com>
In-Reply-To: <20220809130508.281453-1-kamil.maziarz@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c0717731-0350-4978-e199-08da83fcd2d3
x-ms-traffictypediagnostic: MWHPR11MB0031:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qyKUFWEUApY2h05vlpLkHmGFhWHVXjdsxWlVHpg7OndNIZywOoHZnXqm6sBPYy2kwoOF2JLb5MxwOuuBjhUQ3jd2CvVakOTTpoLXW+NTI7C8w2CCs4qn3tXTI1jBKO3ugJ2RX/+atcHk7kODO1y5NXPFlCnrCdUoDmG8upV3YyvUAaF/wTl+xyJLH2g7PicEVQdOtWauFrlQk6FVjjggspzaKeDABgtb66XpYXATlIClYgrW5So3oIuvLYTv2DctTEpwMUDGAHOQ7DHJpPaIZl+tLzDT9ro2lwyjx8FKu/kCq2307l+fpnxMmkn8ZXijb+EXQQRxdgORW5k8xZA68dSgPUHiZwpyG8VZNy555xHXd9XYHjFhdypw0vBXbj4UtQ0AXQJxjchIf2ZWe5FcPdD5hUXmo4BPxhgRrhMG9pE8JEXp+l3TImLISt1wz8/WG5BYGgMpxHc6GxoBfawLxCsdheCM2+MRR2U3yUTwksi+KOyrnMCBwBurAIjZdsnkmrU8W4kXnEzVdxhS79S2JBtLrZyiqCtP9br3R9ZfOGe1t+cqk9VJNWzmLqW8iVSJDXjG55OJ/HwV3zjG34llEMKfPleQq8Bb5zU5XMkiylRsSA3/wkpoegrL27nmGT2h52DG9xPoiwmvrkerPKw6arS1GI9ocWRWG7yFIwFW98AEnRKIO6gqVtmVb8aWalfUJi8oiHpKw7TWrDcU/krmD1LcFMWIJleW85QfWB5Q2QV3/Yexb45k1vSmr0DbV7nfxU4WBBL658FAKBckdyboow==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(396003)(39860400002)(366004)(136003)(76116006)(66476007)(66946007)(66446008)(4326008)(8676002)(66556008)(64756008)(86362001)(54906003)(110136005)(33656002)(82960400001)(122000001)(38100700002)(38070700005)(83380400001)(186003)(9686003)(55236004)(26005)(7696005)(41300700001)(478600001)(71200400001)(6506007)(107886003)(53546011)(316002)(55016003)(2906002)(8936002)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dwJ2wHQPl7VTRr+CFgwhN4vyMMC5WhiHp5ZnNhSVgnCpgFh4BNJklTdgTNpp?=
 =?us-ascii?Q?unlUEfPt5kESSpUYxfVIBqHGEmnOV4/KOOkVqD3HrEWHmIPIX7qrw1arjfEZ?=
 =?us-ascii?Q?+7yVyJKv4yQtvO2TN26BSlNV9+sl1s+59FqgLwqGalvSOcVtvYuxz49X1Rxz?=
 =?us-ascii?Q?/uDBE3OIiFECs7AaU1y27nGdU16/Bzgu2PcfT89JeYuhQP75W1BFpXPkyimQ?=
 =?us-ascii?Q?32stAnbEvcwIrnYfh0E2K1jkdvXX/lpwygDjjGtagLyXh5UCb4suXMuRCkkg?=
 =?us-ascii?Q?zZqEdoVki2Jny3IyrqHWySDe557sYmqhPzQr8vEe9txCcSKjoUGqmoCYXd+l?=
 =?us-ascii?Q?thxqN5twBSLQ8UVnCVDhJoL2cXyfoX5Y9Hs3a10uikjvUHQ0WouqzjBA5T0d?=
 =?us-ascii?Q?CyyTc05sem7bZdHMoyGigqoZTdqSwx0OemFvXIFZdo/jPQ56STpTsElP9QQp?=
 =?us-ascii?Q?+aCQwTDwvXkPnG1D8ebPJeC0J5PnqSbG2ibDVQQ/ER4C7Mquj8ap2FYcA6Hv?=
 =?us-ascii?Q?r+Bqu8YQ9M9IjMwkfcLKPzWsCPfDtp0xYrpc2k28FtOJyofFEtCrDLk98NXq?=
 =?us-ascii?Q?PilRaA3IbVH9xPOo3fMDblL9HnRo40l8/xHZOBH95+yEAF/AEcXX8gSM4Rh6?=
 =?us-ascii?Q?98vZaRAhInzH3YHR9sQBwFZVDMgQR++2yejoRCikbqybjvSJ+WolNlRrHHNW?=
 =?us-ascii?Q?cXgHt6ApS9hKtpcLaLZBCZUgkxbITXFkNHntFupLmBTomIoDvCOylKHS2Cr8?=
 =?us-ascii?Q?S2WzbdzpkzjUeMbuggrwce88ynCnHDqgZpGav4cpOGQ7VJYb9cY9NxOptiHC?=
 =?us-ascii?Q?YKYTO9DC03cg6Ghvm1W6wEmZsuHwtYbMcZQ46muDIUECQnpk0NtcjoS05yKx?=
 =?us-ascii?Q?NdE1BVC8Rw0EAjIN+XUpugcCYsZ54MVzNUSusJiyB1MjUr4uJOjjwNeZnA3P?=
 =?us-ascii?Q?gC5HhvU4ZkbfLazlV0ERwT5++sdVFdGLCNySOYHF4oCvSKlEDnjir3ANff57?=
 =?us-ascii?Q?Ueyx4EuMso4SfZaAWENHLx5tZzWmLza4SdofIXnCAHMZ2OhIawv+oh0boNuC?=
 =?us-ascii?Q?maMJvb9u0pTMqX6/DBoHEfnEOSNqy2q3J2CfWsOrFsGJdJ6nib5qTrSRcqLM?=
 =?us-ascii?Q?3pxblnw3AbfQWm0lWhOdGca7cgqMUUH6NtrZ8e2ozzca/fsToObJ2PlTNzmt?=
 =?us-ascii?Q?P0rYddHhjNokQDsHptgwhSuDm3z7+9a7mwUFDA/mkuoUz7YReAT1Y3xlx86U?=
 =?us-ascii?Q?UTOt44FfuN33WMpbns9Llxd7j7IRd0EsqsdYc5aaMABqOgv2FkQrkDnjKs0m?=
 =?us-ascii?Q?nYzfpjUXXgtEhl1W98S/WJvDYVu7+X+MG1p9vTj1yi/+oLkYpLh250EQLwfB?=
 =?us-ascii?Q?NdSNM+CXjYmDSOFyGHe4rlSmOeYlSUzWqwTHCQcBc0SSRb+AQwLpjpGhsOw6?=
 =?us-ascii?Q?B1Cxbrq6/ZTA+7KM669opsgJnz3EG4SPcjnllkkZS6ZeJGDzWi/kfTsgDYe5?=
 =?us-ascii?Q?moLSYoNG/ka8WzkUVNjvbRNT3lZhvlDw8159hRESp4yzDIa7gIEvjgSmtk1H?=
 =?us-ascii?Q?KQ1Qc9tjRsWIBVyUVqx94aLgaW34A7Q4jg93x8uK?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0717731-0350-4978-e199-08da83fcd2d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2022 05:11:51.8132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JASM13WAexTf7+HbXf3FJBGXabset/uS/UnNpITHlZIHLUcEASnexVwt0pLVTv/7nQ/pOW0k4WmsTjXr04Lpbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0031
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661145115; x=1692681115;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XUhrCF6Qn5LasM5KzkqMXX5Ix5se8vxSgvbZWTzs51c=;
 b=hetY04Id3c6AoRAeJ1UbP/dMaFelpiyYyjsmoGEMjvyoWSfRYJJqAXyj
 YPL08fnhvKgwtpUm2lx1tvMT7KuPP6xMjHYMoDUOGXw8Ej6LGYNUO9jGs
 lXJmfBh6QAB8uCDJMD8xtPBmJretjIEhRt5WqW05bygvJZxwFzPTK20iL
 tO47XAplvuORppPyDEZPgaJsdPByBJyRp9oAsE1lDSryMiJMzZkyf5nDL
 8vo8JWeuGmULXhXoBoosgs5H9Zz9cUXy62BUZKOr3JjeOPt7N8LpYBEqB
 ermiLGtiPc5rO8jUtSlmXar0nhM4h3DnqVVQ83DIhfQlSpbYzgJzhAF8i
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hetY04Id
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Disallow ip4 and ip6
 l4_4_bytes
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>, "Maziarz,
 Kamil" <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kamil Maziarz
> Sent: Tuesday, August 9, 2022 6:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>;
> Maziarz, Kamil <kamil.maziarz@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v3] i40e: Disallow ip4 and ip6
> l4_4_bytes
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Return -EOPNOTSUPP, when user requests l4_4_bytes for raw IP4 or
> IP6 flow director filters. Flow director does not support filtering on l4 bytes
> for PCTYPEs used by IP4 and IP6 filters.
> Without this patch, user could create filters with l4_4_bytes fields, which did
> not do any filtering on L4, but only on L3 fields.
> 
> Fixes: 36777d9fa24c ("i40e: check current configured input set when adding
> ntuple filters")
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Kamil Maziarz  <kamil.maziarz@intel.com>
> ---
>  v3: removed footer and added Fixes tag
> ---
>  v2: changed author and tree
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 12 ++----------
>  1 file changed, 2 insertions(+), 10 deletions(-)
> 

When we pass dst-port as one of the parameter while creating the rule then the filter is getting created as earlier
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
