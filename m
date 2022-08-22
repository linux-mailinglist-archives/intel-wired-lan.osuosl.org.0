Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA6759BDB8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Aug 2022 12:42:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 023E160D80;
	Mon, 22 Aug 2022 10:42:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 023E160D80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661164931;
	bh=4eQ/TgEF/N5ATJsmp/hPWWnjsMm/Hq2AU3E9SCNIpa8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U8+MAJy7sIxcrqlpWHenV9Mp7Jt0tzdFt45xEN1JjWVV6CEca/P5AFaUpu3dyCsfh
	 ZBRUfvnlvHqk/8pG1y/oiC3jY4wmD6loycUHBLq9GxLLSbyFBQSjOHT6/3oEWlEykN
	 XLGzJqkdA4y2pmrZgPjBoz3r6JmRa0fk1OneSgBtngJOxCFLe8TiM7fSdO3TtKmhGr
	 Rp0uZoqr0F5wY5OUdGg9X/iLLgavd6FyPjbdqz4Thrs3MIUOiHbsNyrRJ6HlWCPgzB
	 OIJPvdjAIPG9CEdmgt+YkIF51cRJ8K88v5oMT75Gmp01N423nG8vF+gZ3WKU7t+DhB
	 czGjCfRLdPNuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AaioSjjB6FBu; Mon, 22 Aug 2022 10:42:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0B4360D7F;
	Mon, 22 Aug 2022 10:42:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0B4360D7F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4A81A1BF383
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 10:42:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1AACE4048D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 10:42:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AACE4048D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g2K_PkThZHMv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Aug 2022 10:42:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 350B7400D2
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 350B7400D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 10:42:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="294663965"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="294663965"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:41:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="641984484"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 22 Aug 2022 03:41:22 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 03:41:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 22 Aug 2022 03:41:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 22 Aug 2022 03:41:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UAQVliRjud3lhEdHlipnmlK+eUagPHmbSUVykRhGw59F/QNRKxGkTQFR4B/M0OzJSAf6UmG6HzRIl2wC8dxs4mP+7DgNf+AL+9UQ06hMqAjSBTFjMxhN/ebWwk6Jnx8/qmcB+kIQE8SflCHo1qbHHikr23u79BOx4ZnapmLMBbIN9kASv7AHsr03/PFyLKtHUz32Xd1kt+3fqqFY7OmAYOk6r/nQf4ktmQR/GOKPujLivKDCDw9Uv3RoSZQb/O/IPMsVAKw0RWkWyTiCLh1wqGvLt/uBiQ/88W8bA+uLy2/LtXzY38RuVssQPFlpl89qnqAKzHK2H5gS0qetM3s9zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7x7iPnhmZkS2RMgSk+Eq0yuAp45TskEQeoKCP/Y20ac=;
 b=e8av2iUK0JPBkMYwhIkcaPtUrm+VaJfYvm2lWBxeRXFX/kwxsr2YwE9lMvBQlj9p3VBfQCbhFkvExpQdPbFQkB0PFQOAuWgBX+20itTxaJIIg8MzwA3jOhMt2aOO4v0P3m1g1CyHCia7ktTLuES2dPkL0LG9k1AZwETDvUzkdEr7RMMnvTSXetuxj5NCdREe1YUgAHdmP1WJAbifT3y2HnoqN6WSCrgma31NorSGHj7G/71L/0tOkeFUa+moF0oICIHF2DbripYAh3pyKZvpf7Eck4jx8fC2c2zKbsKgLr+/0JvFeC1eMjeKFRBrSUsMvcizy2gbGGXmpJas7iAT6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3363.namprd11.prod.outlook.com (2603:10b6:208:6f::20)
 by CH0PR11MB5723.namprd11.prod.outlook.com (2603:10b6:610:100::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.16; Mon, 22 Aug
 2022 10:41:19 +0000
Received: from BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::c88:1401:a1d:4a45]) by BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::c88:1401:a1d:4a45%7]) with mapi id 15.20.5546.022; Mon, 22 Aug 2022
 10:41:19 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 1/3] ice: Add port option
 admin queue commands
Thread-Index: AQHYrYM2qz+TWoaY80ua9S2Y4xR/XK26y60w
Date: Mon, 22 Aug 2022 10:41:19 +0000
Message-ID: <BL0PR11MB3363D250E4F8989BFD4D9918FC719@BL0PR11MB3363.namprd11.prod.outlook.com>
References: <20220811130535.1053828-1-anatolii.gerasymenko@intel.com>
 <20220811130535.1053828-2-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220811130535.1053828-2-anatolii.gerasymenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d6f76491-2dbc-403f-847f-08da842ad941
x-ms-traffictypediagnostic: CH0PR11MB5723:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MIESCMoabep1xdpxa4qCGfbAL1pR/Q20Iu+wbvzEkFddFwdt+D0/p00hj8qlP3LUm6UMx8GylOrGF+yLuea1ArgKceXLcQpCR1cr3ycMrZrVKAbKGaim7sp7B6MJRvYL1jzkBLB/temdhGGSvOUyCs82iATPMmn+VK3nFlE78Nu50038+SyGCJerUcwmhC1LISBHQGUFLcFTm2O0p6kiRWvt3u2BFrINe7SXXdLS7ND+HHXqYaxAYghkf2nY0csqLRq3aPEcASAl147a4xkUqzNpq+gbu9yD92nTQP2vlQpEnTcFsn4nsewnhL3WNhq2T2WO4eyznPA7SyIzi45f/7txyELDQ6wGj+Suo+8EOc+LQ+u6AxIlfHEDhPzut0c+0QAggyXJfqX+cBQbAAUzuCYyE/BUKmz1OXuN1TXj36KhpEgsOQIY9QiOQYNdkoyUjHv366Tp4i2kkFJIARSfwWBEWcHOoPwSDuGiUMgXDCX9WZpcAKX8srK0jy0TB3Q+Nio6Q4p6TYyx7ggO7q2jY3PIbjhB75u6S6TuL+r6idDMySEmuoHt+m0Goy5WzNoT1mZda+ytL9CIH871gr/EHwjB06ccCEgXLsQ84sYDPlzrM7Zd0BcZzX2uMPDe6ixMRZ8abA+SSvUJMDl9UpE2V4knkXVo6/fVdo7su4wsBNjDJQhzsVGMUMnceNiP2NM/Y+X7OGu2iZhW3yAJUb1Sn8pYph1fKdqyBSiBouyGE8qj80YD1V/m7s3V3DBg/PPyOrgx5e9l3ecDiD5EFpHlbQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3363.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(376002)(346002)(136003)(366004)(66946007)(8676002)(64756008)(66446008)(66476007)(4326008)(66556008)(76116006)(122000001)(38100700002)(38070700005)(82960400001)(86362001)(52536014)(5660300002)(8936002)(2906002)(107886003)(53546011)(7696005)(6506007)(41300700001)(9686003)(26005)(55016003)(478600001)(71200400001)(316002)(83380400001)(186003)(54906003)(110136005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?V9xtx1Z4J7r6tUaZF7tGU314cQKsAmZ7EKshl/LKWtc/dlU1PMmUZdrZ640C?=
 =?us-ascii?Q?GPq8wmE0WsWgJDzNCihlLdRaBIFkyosZHLrdwuLIcEa3wzqI90glwWprAnzm?=
 =?us-ascii?Q?ErBPcN5ExE1R2HMGp8Vry3vudBOkLFA/aFMc+mkpSMvAmSUn6Z6sg49VOruW?=
 =?us-ascii?Q?oHKKVxON+XDOnkWukzBO1xrdsnlezzdap5RxiFPLQWmg5kLDBIWQlQJW6kNH?=
 =?us-ascii?Q?JeKSkTvw43sifp2tbNy5T3pHcD6o9ZesG4NYOYxoEypq+kIe3BuLZimX1E78?=
 =?us-ascii?Q?1rX87Ja/PeND6zPdcC5mwfFINiOESrPiPEnvDsKqeM6UNAXyl8WqChYEA4WF?=
 =?us-ascii?Q?CbZwDa91lW9s7uf6YlVabu1inoXS/OkQsRV1rHlemkhI3ocYVPpkSAM6Sc6h?=
 =?us-ascii?Q?h8w5Yr5C+nDYRXUs0bUc96DWk5yr1L6xAnD3U6QUBFeoLTR45ybGTPXej2i0?=
 =?us-ascii?Q?4oOBz6zcxwM0dioTgLzVpAPsS9CHhGyHqADNFQX1K9oB9GKepd16WHFq8oa7?=
 =?us-ascii?Q?LTFVOa24WhvjevdgBadVka4WDxWlVC/SI21i6U3zS8l2zCHMslWqXy0CgQOS?=
 =?us-ascii?Q?6gi5UkFaoGN0jsfuFQ3sMFlg9BjzXC5wE9TrFzcqwCMlcMofvPxyne+vQYsW?=
 =?us-ascii?Q?CBhlGRjkiyxp173SOkkyYlJa4hXCcFIAON+uFkuSMMJaj24HFr2qQVJSeQQj?=
 =?us-ascii?Q?rZ7gjIYer12kz9zSrZdYiHA2RaQuB9WqhkFmJq4XBw0WewVZgsEh2Rc5N2sk?=
 =?us-ascii?Q?z/oLmmOUGXHlGi6HO0W+eQ5Vsm8GW5XPt/uVlx1P4uaP22K6q64ccRSq57T+?=
 =?us-ascii?Q?FmJ+VoKYON8WcenlQxWVvfKhrthe1e338aVXY60LSU9x0oO++qvfMWPXssn1?=
 =?us-ascii?Q?T/uh2B6G/bnI2qmBMtqZahLtiJTC4oy2giBuYI0unxkBRqfoxrZsQjxO963J?=
 =?us-ascii?Q?aoEKrz+TN6m9ybpWI/HklKGxUC+gDkVQi6oJxBXVH8hKvF/fo8M4H6sP4Kym?=
 =?us-ascii?Q?pK1Lt+8pHRSkzgKWxNGJAXx3so7itWPAx+thDIc+9rCBEyjY7uKLQ99bY/ad?=
 =?us-ascii?Q?Sv4M150+RRDBeiudDMfCSQArajvSSqyZblXT9CpWWQtJCxXr+dv6eo+7Rhtt?=
 =?us-ascii?Q?uIG7iShQGFWifETdK/wEIn0ZeudK2Ez/0O4CJYj73W6yJvA7PCggxmDUR2Io?=
 =?us-ascii?Q?7SCvMjO95uJ88GxPuzogZUnfUNhAHgpi1Jtpz4mVjHX4tj0siWGsYHseES5f?=
 =?us-ascii?Q?H5yBqUCCPc6rSHCgMQCJWSfKiY0FXrlEtwyfb+LaWDkisqg3M/ZC/RBgO5Yo?=
 =?us-ascii?Q?HxeeJtzDUCuQYumijWHmug7voweVUGr3jHVylgldfN4vkQ1kIAmtbxbUbjRf?=
 =?us-ascii?Q?QiJ7Ay68u151DEADfWWZshii0pH9JBmc2QxHMfyyddos4STin/Rs9bsdvKbZ?=
 =?us-ascii?Q?5b/ca7WjsaOgpF6nHF7pH5iSnJMx1l7L1dZ2KKBE5RumESuWenXmUCpRGCY0?=
 =?us-ascii?Q?AMdwTFltIQwC5ljE7hUImVPPYzaapnk86YWGttPjH/GrLoIcqAUKKNfjs6R4?=
 =?us-ascii?Q?3676iYMI/yp3qpf2CPlghTOD6zgRAysLoNDwZdDC?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3363.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6f76491-2dbc-403f-847f-08da842ad941
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2022 10:41:19.4320 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FRLpMn073BFE1P39yLkZMIrh9wyZg0LkqHRGbjqL//j9/JLGIgONIOs34Zoni8/m0QVfh1J30z/mkQF4obBQoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5723
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661164923; x=1692700923;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kD1WxE5D7EgIezKRh5B88/HwCDSRUO8Bf5372aOzCaU=;
 b=Uea6fU2UFLKFMg/KuhM6T6i1SGznGK4R8MAaNmRZLDAfhAUbMLTzO/v6
 CEDoF8iopmdpBjyGme1RQMrh8i0s0Ttcx/E/nPLdqvkxCG786EBcWaCvI
 19/PC3xF4ipI32sPFMfCb4D0UtceewVqwF+tNL8vagRvo/xDvn1D1ylTn
 BqI5V02m1RjaaOReXbCp7eF3eRJexFY78QvMsozZyzXcLyl5O6AR6yRsH
 gXrabFz+Bt8LeIDL1Biti+OQttbAXEaoE/RUs8Dr/x55tOCOZop7IkPbQ
 WtIck/MawcHlJ2wkX/M3qF3JFbv5+DWXroibpT1v9bme96FcAPLILkiZd
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Uea6fU2U
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/3] ice: Add port option
 admin queue commands
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
Cc: "Milosek, Damian" <damian.milosek@intel.com>, "Gerasymenko,
 Anatolii" <anatolii.gerasymenko@intel.com>, "Faerman,
 Lev" <lev.faerman@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Anatolii Gerasymenko
> Sent: Thursday, August 11, 2022 6:36 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Milosek, Damian
> <damian.milosek@intel.com>; Faerman, Lev <lev.faerman@intel.com>;
> Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1 1/3] ice: Add port option admin
> queue commands
> 
> Implement support for Get/Set Port Options admin queue commands
> (0x06EA/0x06EB). These firmware commands allow the driver to change port
> specific options and will be used in the next patch.
> 
> Co-developed-by: Lev Faerman <lev.faerman@intel.com>
> Signed-off-by: Lev Faerman <lev.faerman@intel.com>
> Co-developed-by: Damian Milosek <damian.milosek@intel.com>
> Signed-off-by: Damian Milosek <damian.milosek@intel.com>
> Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  53 ++++++++
>  drivers/net/ethernet/intel/ice/ice_common.c   | 115
> ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |   9 ++
>  3 files changed, 177 insertions(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
