Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0294D9ABA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Mar 2022 12:56:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 794A3416C3;
	Tue, 15 Mar 2022 11:56:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g7BubHMKoLn8; Tue, 15 Mar 2022 11:56:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B005416BA;
	Tue, 15 Mar 2022 11:56:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 78E761BF57F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Mar 2022 11:56:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 652A2416BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Mar 2022 11:56:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u-t_AauE8HAv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Mar 2022 11:56:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 85BA4416B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Mar 2022 11:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647345404; x=1678881404;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=R3L/FK7GCevsUCuqNUDtC6fQtHl7HorBo+pBkx+4w8g=;
 b=h5/7nNIvl2RFahwesKYLtllYQTC9ebI5Z4oFJGJHWjP3uiW0NDrfQAQ0
 YZL54wyZjOPrXutl16Zg5Wz7iFVrN8tjzrzwjembkq7EI/zMeILmeghiF
 xDOPLD3zR9eLs5G+4LcefIoMNPGHuLVuvqEKCKczDXpumfqPovLe4dLk2
 ZbniMYQWov9jhex4P4Wt/mc6Io8l/EgvOvyO6qLCTc3bwmsZRmA1M+r2K
 DY+wvpKMzKw2b57t2jfDMY4CWeHDrtkaeGOLBmZSlSsvX6SAzU4+Kiu+8
 n/DuMv03TFztxziz2zijBZmfxKXiUIs2r6VGhamd14vnWfg7XL7cNaWjt w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="253838207"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="253838207"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 04:56:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="819751886"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 15 Mar 2022 04:56:43 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 04:56:42 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 04:56:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 15 Mar 2022 04:56:42 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 15 Mar 2022 04:56:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=idt61xYErrct3JmesLZDuBsOBnoWGzfkZidvD4tIRb5AR5zKkXBSuGIwV0h3nBoxpglDIfywRTcZOU4fJKAGr47C8ue9jNt+XGaSxeKt+/xDaU2zVnNAxWaLE3mB1YmdeuixH5OiPXEV7HfW9l0f8NsSuQhe86vNrpTObHqufl12roOn01ORcjeRgtuloX3V7iBWREFyzdxYjMMTJyXsBQjUvdnkBX8g9MqI/bYf1b55aWYNQ2l9Wmf4JMVnGT5RrvVgnzMN/4e+jI1YYr4di+ozOXc3XuXuEt38xXIYFhIL2ELNDvj/K78/jrQj1JV7SFOuYlxxrR9Y+Gfc2NoceA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O1eqEBn8HuTsRmFr9B4+8dNdz3VE2MfoeDAwL7h1094=;
 b=g5++MNUzb7JVcMyaYx6bTINn85swhLA3+25SxeIMU4+Rr5/8lTBTW9lqY3j7/cBOY9HhLNzsmnN85TexztUigGXNPwjBrDeDRHj2hJnAj93+Y7I1aLSqICdUVrHdXsqH6bAxu6jD3Wmo6iBkvjfq9IT1UVDI9KY+wEf+K4G1JYGeZDdvoJYtZesXIoCfOLQCnvEmtBlI42exihtTBGolw5cLUlLcZ+C++jowAIdNxPrlBlVjaylgcECWqheMKZroo0yTcnxLsenNTlbo8lbGM6lJmiz05mOEskJNYXzBZEQXyFYZmWyK9vyb0AxxLr6RaUBCDIkosI+ehTyHczWpkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MN2PR11MB3886.namprd11.prod.outlook.com (2603:10b6:208:137::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.14; Tue, 15 Mar
 2022 11:56:40 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::8113:f21a:30e7:26db]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::8113:f21a:30e7:26db%4]) with mapi id 15.20.5061.026; Tue, 15 Mar 2022
 11:56:39 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Anantharam, Arjun" <arjun.anantharam@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Anantharam, Arjun"
 <arjun.anantharam@intel.com>, "Rao, Guruprasad Kudukolly"
 <guruprasad.kudukolly.rao@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH linux-firmware v3] ice: update ice DDP
 comms package to 1.3.31.0
Thread-Index: AQHYNZP/YHA74DG5r0SSnwHgJeyUoqzAW/DQ
Date: Tue, 15 Mar 2022 11:56:39 +0000
Message-ID: <BYAPR11MB3367C73D351EC98E20CB9130FC109@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220311220230.2430-1-arjun.anantharam@intel.com>
In-Reply-To: <20220311220230.2430-1-arjun.anantharam@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff0926bb-2d9c-4869-5f98-08da067add58
x-ms-traffictypediagnostic: MN2PR11MB3886:EE_
x-microsoft-antispam-prvs: <MN2PR11MB38860654D708E4FB6F0BBF41FC109@MN2PR11MB3886.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EA2/a1ryps0g6e0LUPHMssgEFyGwwOb5E5wNDAFKAmcaRV/HmY2r/GUOcdElxNeiMtJY7YvOvc0u5g2O1pgYLMHX1raNjsnW1I0V253fFFxNH0z9AUdDuZf7LuzJ7Y14VDLbV5Anys4nhNAJCSQsPG07nx/Ws94xWrmUE6fL4FY4yQuWyh8pQoky2C5l6eX7nWfQkzKhbeG+76u+Li7wL1a0WkGKgvz/teZMJC7dgdS/EUlLtjG/hKeCuJp9xK3XeCIT8kJGDVY23tto/zqJ/a2s7pO73J5ZAHdMi51hw/PF7vKQ0rbzovOGDDQOKZmop0O7hKnXoDS4ePZlA8K7eI+m2mSlmYc0MOl6GOWC1bvcdv0P2LstrgyULSmFJFkPUVAZPpwP9dcaApxRY4Fx9BgH1Y/FAa8t6JnXnZrp7PWSsBYS6KAbccygs3OQL+9IL/F66HAk9LlDMdFwoZZYOoGL9akSGdEqYpjFitjmMGgl0B3Ov6do/DTewe0lb7Py14TJjX2OggjiXeubHdg/GYeCFDTuny7bKhfZVVO/+VgD8Q7SOJUj7lGOvSrFoI4lIDHsvA/mvTBvlB/63mbD9VWLA3fzh/qOYiwVcYHKpqHnKWDxFhsDIOLcoMadtTzyJXPemRvveBW2lHrtnP6VZaTgsjiixYGkXA5HFlIqfxrcl7F/XkIEXdnWPvSQJ8UedKDUObg4DKvD0btcakZfFA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38070700005)(83380400001)(5660300002)(110136005)(76116006)(66556008)(186003)(66946007)(26005)(66476007)(8936002)(66446008)(316002)(64756008)(33656002)(52536014)(8676002)(86362001)(6636002)(71200400001)(7696005)(6506007)(2906002)(122000001)(15650500001)(508600001)(53546011)(82960400001)(38100700002)(55016003)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?StxliXzVJpUktRTvbZDv3DYwE8Ap2NAvW6v6+IMOISrdbq83v1zpq1XKG4CK?=
 =?us-ascii?Q?vbnYB9Vop7OII4S3jfnLuDbpwjQc7zciuKNrMpP9p40yqcMs7XD4bCCndVQJ?=
 =?us-ascii?Q?y99EipUqHAY2uFr+l/lETVP5BEMrkAEaGeP6SNCmlQdJzrwSNkkwWuM0wGQw?=
 =?us-ascii?Q?cCtypm66DdpzHCSG9q2IWTwO862B8vAgVYH9F+zVbZwLhT60S71rsUZz+/og?=
 =?us-ascii?Q?tngv3CL0w9ySqF+uRRP7nu4kXg5mqkCl/0J0a/Je0twJbCQy57/YLOwf+oyk?=
 =?us-ascii?Q?yBcLjQX+qzUIptaPiHuz4VOWtu8c37vSlnh4G1vpwiSovduOFk+O1hwySiQm?=
 =?us-ascii?Q?hHUWw++56Y3rWLy5ec0MpdrOJ+R7ZmE+oaGeIPMgPlAxe9zVjaN7aOvftREl?=
 =?us-ascii?Q?Hx7LoKK3VrCS/qAK6vhROcZCxWGwAorn9zVYo/PsIhx91ikisx+SXIQR/ZFd?=
 =?us-ascii?Q?+juFfzE/ZXJEZqHUeIKK8DhbaUOD6yKgx2qJLkFOuLesnxugcVyUPIwbgKvK?=
 =?us-ascii?Q?LBepWAUuX4LWH7mSLomqA3ZvP8LeZQB0nmknT4dPRyksF08T3+7Q9I8dvY4X?=
 =?us-ascii?Q?VV9udmm7ATQI9EFNGRADfn18OH3kn0nalPIu84V0aspPly+xc6zPxnsvyfpT?=
 =?us-ascii?Q?Ue+ldZpyX77+OgfEkBNLMCOYCdoTsfLnx4fIjozgot/GqUVLknHTD21b8TM0?=
 =?us-ascii?Q?31aGyiC+IHO1hLQ8ehbIs4MVE+uNPwy3uRifLXKYcZSIWcm+PIdvoK/nNNfi?=
 =?us-ascii?Q?IzUxWhigQlzi3yreW9USPGSRQdIUVzC5p039GImW6WAiTlm+sSETRiA7h3cV?=
 =?us-ascii?Q?gdB+9hQqoTDzGfHJRlxWuJL22DUTcOTRstuPv/tSYEknivPO333RnH2ukqBL?=
 =?us-ascii?Q?nN3FpjlXUmIEWduHgsTa7XNkvNj0/pRDOi3l1DtKgvMv27LP3fPQ1iL02Zgb?=
 =?us-ascii?Q?clkMIQZr7tORTzk0ZAHPPOUqR4ZF6u4KpxsrraGBvctBG0wKGny5qbUpM1E6?=
 =?us-ascii?Q?VUJUwKBZj/PQbUQHdqnMZFxJbRZuXIE23axUbITkkPPCNp42ALGu/MDIx9oV?=
 =?us-ascii?Q?uI+raVquNtKQEKo2h/2Nlh4knZTFNeT3HGEVaGqLV3f/tDSbd/JfjASrDCuw?=
 =?us-ascii?Q?Z0cOyM3k25p2uidvoXXCFBd1BxTxMOAZTEO7qvFivUTNJbDQxe7hBOdNvUoo?=
 =?us-ascii?Q?gHUL2P5dBUnvsR0K+jVD3cSDabv69+el+6NcGRbUu7VCWeAuiYWWoCc/8GZb?=
 =?us-ascii?Q?hr+ZtjbTLQaK0F9bQLuPv1MESy0HSCfSiT2XUZ61nnqxUldFSZ+gfu1sCJTu?=
 =?us-ascii?Q?xqYyuX1C3DazophxDs7/osUdcbB3vsi7b5X6U71j16UQJPsO6Z/HmlAYVOP1?=
 =?us-ascii?Q?Q4UHLUshkLpRIaVUE5ZS0kYPzRYV03WlOcM8Kz/AAWeDpR9Sdiw2rcOYsrGA?=
 =?us-ascii?Q?F9sNXWQKNsrTs63flv6nhCZbdyKjWwzo?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff0926bb-2d9c-4869-5f98-08da067add58
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2022 11:56:39.4898 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6MRzrAZcKi11NtXBybVq7gUBpO7aPk5rPo0pWq3BMFR8cZy//dNEvUGgDnp32lch3rKXxNHzs+yImFEdzlYegQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3886
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware v3] ice: update ice DDP
 comms package to 1.3.31.0
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Arjun Anantharam
> Sent: Saturday, March 12, 2022 3:33 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Anantharam, Arjun
> <arjun.anantharam@intel.com>; Rao, Guruprasad Kudukolly
> <guruprasad.kudukolly.rao@intel.com>
> Subject: [Intel-wired-lan] [PATCH linux-firmware v3] ice: update ice DDP
> comms package to 1.3.31.0
> 
> Update ice DDP comms package file to the latest version: 1.3.31.0
> 
> Highlight of changes since 1.3.20.0:
> 
> - Add Separate Package Type Group for outer IPv4 and IPv6 tunnel packet
> - Add GTPU SCTP ptypes to PTGs mapping
> - Add Multicast support in Flow Director
> - Add profiles for GTPU extension header
> 
> Signed-off-by: Arjun Anantharam <arjun.anantharam@intel.com>
> ---
> v3: Edited highlights of changes in package
> 
>  WHENCE                                        |   2 +-
>  ...ms-1.3.20.0.pkg => ice_comms-1.3.31.0.pkg} | Bin 688388 -> 717176 bytes
>  2 files changed, 1 insertion(+), 1 deletion(-)  rename intel/ice/ddp-
> comms/{ice_comms-1.3.20.0.pkg => ice_comms-1.3.31.0.pkg} (75%)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
