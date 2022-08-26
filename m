Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E53585A2924
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 16:13:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6694F8130B;
	Fri, 26 Aug 2022 14:13:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6694F8130B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661523220;
	bh=2phKPc/mtoRxpIyoOpHCkTg8sMXoHntf+keT/SyO45E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PhP+BWYksQ37/9lJvXVu/3xpu37gvsD3oARC012ow8yFgkHctgW5xYtvEoiYainfC
	 9T4c5nsNJ3GtjtJyoDtosNRJ2dyOHpM9f5Y0Nr7XR1j+Z2nfOP0Yp7OAqh0rz+/mMl
	 npZ5ub8URYa1uAuT0NZKMljthX2s6/QKDlMUcKDUzcBxG/PAwsFWmjLWUIyecmyxU8
	 RlxrIf++wLNG8nsecJGgBEvCAq1DIP18lPTAdH7Qs3tLCSeF0yj9oeZIHn4ox1K4VW
	 g/SeihvDlMezW9+RhtlT7IKKXlLNCY8eP88YCd6GtRj62yYdkRyx9vU8AZK6VvFPE3
	 p6I1Bf/yj6SQA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WA4iXoCbIsUW; Fri, 26 Aug 2022 14:13:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FB5881389;
	Fri, 26 Aug 2022 14:13:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FB5881389
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 311781BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 14:13:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 173E180FFE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 14:13:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 173E180FFE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vggYjQTWlowD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 14:13:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21D5F80BEE
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21D5F80BEE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 14:13:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10451"; a="277526423"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="277526423"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 07:13:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="606776752"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 26 Aug 2022 07:13:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 26 Aug 2022 07:13:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 26 Aug 2022 07:13:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 26 Aug 2022 07:13:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 26 Aug 2022 07:13:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FvkvTiQM8RuGGFXwvcoBkWUwy0uH2L92INrhOrUeW/SLQb35bGmWHvk2HKj6QyhSNL1aCpb4e/+noVsjWhVmLSZxaXr0ILFsHJjEzqzuJ8T6BxTiu/GlKoqW+pMEZKGvlwnPMDMJpXvH1aZ/4vV0n0aPAHFQMFJNPdNm3V8LmKuhrmx9Oo1dshDvYNsiXxPkFjs4N2dhhiKbMD/HY/q+1pcZjm7grvxaCC5S3NDEIBpLBa6vqjjrcpwxOJcBo5UjGzO0oHdlvSa3WeaOFi5ZxfNIIim5EdPKC7bqOjMY3CqIrZQmKfeaOQayJO6ocJSxZ8JZv001pmG5zdTkvHd87A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8R8JPajjnRpZ8izEaHu7p4Uwq9lXlBAsCWHaoUuYXd8=;
 b=TJ7sN16GleT946TwaUEbXTVEwpuMiHPJrcw81GQIN/3fDTdvoK08y+0ALhZBYQYmE3wodO6TkGIhz1GdQCw1v43dqqdu8Nnu0TEbYpKA5SU7QiNMS9DHTACqHGHdyWM99iDOrjMIvMAuBFb3z1hDHK38d5CxxtJhf1DJdSsphfTvT5Uwa1tFSgVOwLikfIhMak6B5F0TSuHa7NgqO2l8MMrxgutIIEyo+PR2rBn09Xao/w1JROVvq4IwkGcRHGl0gRCHQNmwCVdlliX9iZQ9fhidzc4C30ynPHh0pNe78SOgfFjBnPW/UCfM/SIj2XIUH9NiXHnCn4hDfTyJ4VqiaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR11MB4177.namprd11.prod.outlook.com (2603:10b6:405:83::31)
 by DM6PR11MB3561.namprd11.prod.outlook.com (2603:10b6:5:136::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Fri, 26 Aug
 2022 14:13:29 +0000
Received: from BN6PR11MB4177.namprd11.prod.outlook.com
 ([fe80::40b5:32b6:ab73:3b8b]) by BN6PR11MB4177.namprd11.prod.outlook.com
 ([fe80::40b5:32b6:ab73:3b8b%7]) with mapi id 15.20.5566.014; Fri, 26 Aug 2022
 14:13:29 +0000
From: "Michalik, Michal" <michal.michalik@intel.com>
To: "G, GurucharanX" <gurucharanx.g@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 net-next] ice: Add low latency Tx
 timestamp read
Thread-Index: AQHYpoBa67lRWDDonEKpHF5cIS7Vpa2rYWyAgBX664A=
Date: Fri, 26 Aug 2022 14:13:29 +0000
Message-ID: <BN6PR11MB4177CF6B5CD80CF6D9DECE99E3759@BN6PR11MB4177.namprd11.prod.outlook.com>
References: <20220802145757.273270-1-karol.kolacinski@intel.com>
 <BYAPR11MB336750978C0D843C222A09B2FC679@BYAPR11MB3367.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB336750978C0D843C222A09B2FC679@BYAPR11MB3367.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f25be071-2c49-4851-9115-08da876d26a8
x-ms-traffictypediagnostic: DM6PR11MB3561:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XIkcP1pTSVjhY7E9tkrodLLpR8FtuxfXAFz47v1+JMQu6LWh3HFKRCE7FI+s2GUSMtHB44f0tK2VZU/tj6AXjcW+p67Dm5wtQsswW0eqWOE9BFBBu1kRkLxZepVhdIJ5/J7I+Y9m1WzRi8uZ/I9P7ZRBEdfhJyD4qdFMNWvYCh97AJ6Bu/Dq+/V+opx735rt0jvzO6/uDhehmhxud5P/VFeCHL0c3LASSLmU4GoXbfHN/QNSX/kX2MN36TxIGF/owwwN+IE5dbWbqiAWRoNMWbJ0CLD1/ztXOoYHE6jgPbU/b8AOhJT6ObUrZx7b6jUFTlynZ7voAoYwX4gVkWyYnvuV3qHCkg912d5F2mxVBopK6JNgGsNru2DAfsFfnvRgsZ+cjdQfTNW+e6EE5KgIVMkMXqUOQ7VhbG896g3rv6pLkMcKgAP8mI1tfHuGGBAH3ZT6MA5neeqgRr0foCKZMpQRIGrD/i4NGoBuiqjeB1EAfNy+vRkFvwxXLhwPEzj3YND+ryGS73eO0guMnlCrYh+oXRqJiACfJjBy4CTcaup17zrZBduYsSdyLumshygovVXBKVUYjgbM8b4NvuVLFzEVL4PmFKj3NebMJDPGXybbZItxY7XuW18cnx0/vzTboPWaWgaUCO7JMcZAeMlE00ZvmsP+65lT0OaDZTnuS9sqNQaO0N45jlu/th4bACraGU4Na1bvkjGODLevpEA4srWHUy5Kchn7y6U3E0Lj8yJDMiEInZxuj0VTU4V4pZ3WEwNbDpIXbhB1ZEjCfMnIW4MEcQj46Kw6ot05d2TLJZo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB4177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(39860400002)(366004)(346002)(136003)(396003)(26005)(7696005)(6506007)(9686003)(186003)(107886003)(478600001)(966005)(53546011)(52536014)(2906002)(71200400001)(55016003)(316002)(8936002)(5660300002)(83380400001)(41300700001)(110136005)(86362001)(66476007)(64756008)(66446008)(4326008)(66946007)(38100700002)(8676002)(66556008)(33656002)(82960400001)(76116006)(122000001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TZKAC6h8enQ2MZxeYsUH3kTEFEzSqNAyXbC399B7c6YCdqwLOb9hRWeaJWok?=
 =?us-ascii?Q?qLEqd/ud3PekimA+v3GUbwr4Lw/ufsw479z31K0tYtcqN6AfIJsn/EmnogEe?=
 =?us-ascii?Q?CQiKburmolTQPngKqUN/z3NVyoZRofvouWW/JP+a5hRTV1Vnit5G5Mo+KFA8?=
 =?us-ascii?Q?8ichu3M6R5lIfj8SqQC96LLZlZG+YAiWeuDz517OeLpDL8+Ym8MtAjD41K1O?=
 =?us-ascii?Q?TDGDW2jYZ2ys4NePESN0MdIBoXA6+B4r0syd+bvK7tWplVzQ72pu5cdJOcAZ?=
 =?us-ascii?Q?ddMb8iY1oR5FmAP0Qgp2hlTchVFSU73OsDeQRIgFLVhFFiuXIGErZnr6kTrb?=
 =?us-ascii?Q?/jtn+D5nanxJt/N7VAL4mUMjObEqzfhfOat5t4ebZ4pgONV6EpbCqGej9ZCx?=
 =?us-ascii?Q?YJrcylfAeKuDAU7bn0WQXrcmdrJdKDS7IYEBPHJT7N+FXe31rQeEPZIKEhMt?=
 =?us-ascii?Q?leQ1yNMUU0Un2AKr0T0rYgZ1WBCJPiC2siNNQ9w67Y5BUZj3EYvlmlORgyfU?=
 =?us-ascii?Q?RZ3Hm5t9bFUPdJHFqLm4faUltyvbxazgvD5/AIONz/0AGki6ZPvOzkQ65GNp?=
 =?us-ascii?Q?Q5aL8dQb5kS7vRBilI3w+hOXOtYeal2tiDtSHBnXBlxTVPIwLR9Y2/6Q2bdE?=
 =?us-ascii?Q?3RuVnbrLwW98qjzx9EL9h+W8IvNmFoMLKoMAGfceL5VhCS95aikG6uk3tIjd?=
 =?us-ascii?Q?eQwJFjwYlAVG7EOMr8963Ukr8CpEw5tGaRcjsgfU4DvqH7t+LFMfQOvJqngd?=
 =?us-ascii?Q?BjOnqF8W8+dmesS7LCRak5mqff3W1P9xe2eAezx+yMoWICYXr4PZdqisBL3K?=
 =?us-ascii?Q?elNozhwzcqAIUh2J497FdSEKChDBPbUZkaZKDe0Bp+5iVZfMF3794P+bAjKI?=
 =?us-ascii?Q?AG8oVO6EeXxDDsqmglgcXZIZtqq8tbakbGP77JxayWRYKj9DFwnlzTiTNdjX?=
 =?us-ascii?Q?6L4ofGRa1VOEEJD5eu3U7qVKH9qu/yTZbRqip7wmXaBUtMG3gy6PWerICrkJ?=
 =?us-ascii?Q?cRBO5FpLfJ2ZjV3UA/1fTna6FR+hrdjYtJ/NGSTXMuo60afVFFr1o3nrLWC1?=
 =?us-ascii?Q?GmdiZv0onQjkzE/6bm/rA2NBuCwuZSWlaWeSeP1b3yydYVagTHjk0M1ltFLw?=
 =?us-ascii?Q?CBy7wbtxLGWid9QjpfqGazf5kf0pJPm81GZESeQN4hl0vlSxtBH57ZfySrbF?=
 =?us-ascii?Q?CvDdFhKaqrC8HsU0wc+/JapJ+fuFqNI0N7R10RuKC+K7mLLND3i+KXFlu1uF?=
 =?us-ascii?Q?XOSBFdh5Rwyj8SSJpMNHN3PcgqjzbCVdntyLiIFLpnVFkoUvbW2TWH8BpvFx?=
 =?us-ascii?Q?MUnO81Ps6JabnfY19dhQibUsNbn6sDr04aLoShhZixGoR98uArk0cwSpggr2?=
 =?us-ascii?Q?5e0c4q5auatR0Ziah+eFTmzijymrJOzDPJvSj3RIKDrEf7uQWNTFDfm4hP0Z?=
 =?us-ascii?Q?d0K3TtGrfM6sYXWS3JrR6yD36wQPvD14ySuWNjJys9z6FSm+rLRAHgictIxE?=
 =?us-ascii?Q?sGyG9AhPzYoWdjZTPRWGVPbJ2oCQn8NBWHtN0m5ASPEaMn8h1LM2zOZds47y?=
 =?us-ascii?Q?HAUkX3DAEuU3ntFpWE0LQJD6oQkOp7ExKR38BR/Rugy1uRqYdHeOk3IjR3jS?=
 =?us-ascii?Q?yQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB4177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f25be071-2c49-4851-9115-08da876d26a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2022 14:13:29.5487 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W1qQsdj9MyCQmm5OuLhKQ1Tu3DRlr4vBajVXxqlSba1UzgJrgMi3CRVrvaqCdZtUh8MBHmoivaVwxx5opimvFPqhrxHrEzta63yNYHPY5fc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3561
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661523213; x=1693059213;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8R8JPajjnRpZ8izEaHu7p4Uwq9lXlBAsCWHaoUuYXd8=;
 b=DzM7ktZemIsHxmQMW3EnKtZbBulPDB0sLXepjuuHrsh9LvZef5Ic2rEi
 fFDjt8ayawW77nXiPv5d2wIVP1hbUwQWvYAW2gIhobrZs2Qo+CDAeO1ni
 wiF15bvm/Ru3XoyeiScOWr8JTC+w6XJT9NMaL5/Zn8YmOkJ0Dl+EiblYs
 E7vPlK3DHH1QOpfvWPhjdW+OTtQTkd9K71cxGO2gsPqmrxqmQPM5kSWL1
 QEgp+JLF0UAEOtBFN8fct+RWdARQobx3oOlLucFEJ7VrKhOfxJ518Atwn
 BUlQZpsVubiEfFyNJXOw+4Qyjbyq1mMk3Tuiz90hlSwyw/4xK6yAe6wXh
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DzM7ktZe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next] ice: Add low latency Tx
 timestamp read
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Gurucharan,

I don't see Karol answer anywhere - if you already get the response please
excuse me for creating confusion. My input inline below.

BR,
M^2

> 
> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G, GurucharanX
> Sent: Friday, August 12, 2022 4:24 PM
> To: Kolacinski, Karol <karol.kolacinski@intel.com>; intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH v3 net-next] ice: Add low latency Tx timestamp read
> 
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Karol Kolacinski
> > Sent: Tuesday, August 2, 2022 8:28 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> > Subject: [Intel-wired-lan] [PATCH v3 net-next] ice: Add low latency Tx
> > timestamp read
> > 
> > E810 products can support low latency Tx timestamp register read.
> > This requires usage of threaded IRQ instead of kthread to reduce the kthread
> > start latency (spikes up to 20 ms).
> > Add a check for the device capability and use the new method if supported.
> > 
> > Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> > ---
> 
> If the tx_timestamp_timeout < 15ms then we are observing the send sync failed messages as below. 
> 
> ptp4l 47370.160 timed out while polling for tx timestamp
> ptp4l 47370.160 increasing tx_timestamp_timeout may correct this issue, but it is likely caused by a driver bug
> ptp4l 47370.160 port 2: send sync failed
> 
> But PTP applications require reliable low latency timestamps <10 ms

Agree - this patch enable low latency TX read below 10ms, but in order to
satisfy this requirement you need latest firmware (supporting ts_ll_read
feature). If firmware does not support it we fallback to "old way" of reading
timestamp, which may spike up to ~70ms. Feel free to contact me for any details,
since Karol would be out of the office for next 2 weeks.

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
