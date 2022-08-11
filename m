Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E597158FBC8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 14:01:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCD5F41827;
	Thu, 11 Aug 2022 12:01:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCD5F41827
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660219312;
	bh=4bKNJ+sNJP0MTZ1VncuWu0U1FpGemqCz0LORlmHB8kc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CkAd2B6GAqDP4LFELJbO2CilKe30+BzCByRUdVT8O+D6K4bWTlvIHx1NGsckS4gxy
	 ALlwa2idYz9UTTb6vVjvOE3YDZl9xws5eL84HxW49fkeLXzBowefMGh+LaPlPcwa3c
	 UzK0oDCNXU87MTC/BZxeaes052wPgRYax3QaHSdnr+4EK1VDMPg1vfaF8a6y53yEq4
	 7GUBDGUJYXwWKpB09TMXX5v0TXibR6nwwkU9YyVCGnMUluDZZPB7fFvd79Kw9WF1LC
	 iSj6SjPD6AIZQb4Hjz0r2GxLkL2BE7g5JUxXhCHPPGIrsRZzEW9ylzDByUvojEIoAU
	 DJEG0nCLdJSbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EfaOzF0s8K3B; Thu, 11 Aug 2022 12:01:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85CE5417E6;
	Thu, 11 Aug 2022 12:01:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85CE5417E6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4AC531BF38C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 12:01:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E73E41822
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 12:01:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E73E41822
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IM-ZfrAnLasJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 12:01:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0E01417E6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D0E01417E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 12:01:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="278272692"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="278272692"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 05:01:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="665343565"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 11 Aug 2022 05:01:43 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 05:01:42 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 05:01:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 05:01:42 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 05:01:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pn8TV781FqipxOKUj17vSvqun1wPa+t+c0N08KYV3dO1sMsm7wpQfeIy5VYW4cr02euWmJUNq3jWoe8Pi24Xdbnf9EIJHQqqgA6HKust+wMTqGTNR8SNpvx6DRhpbukqS/4TKfeE/ikiGAqSVzjU4dhpXedulNP7D3mgUad8c8WDP4slW29oQM0WRYopHOZ3xpMQ5H2lY11KOik+12DYYDP49NhqsdxlLJeynn+ZCHoPgur7J2Q3sxxBrt/5BWhkpQqkA2RSClQBlIa91JAiXcE3K8lu5dwMLvhsUZoQ3q8Mb6D84kDWfhFDAnjOjACcyH+4aGioVYKT6G5Bisl5ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1yRAo1kpoQjfjQBad7ehwjU316RVT3ZltIvxbHfy8zg=;
 b=do9GS04ba8Wo+YOGSz2N1fA1Nk82NhMx5c7ne7e9z9TPgBgiyELxEMz7Dq5CLYd+QdQf+uLvD8matJji2kv3o3B5P2iChEaL/oFdY1qBtd/WCnKQL6CgXjgHCUfOLED72wHQM8oBXLspEfmt1wZaLvdhDkks1zdov5trhkKdBiHg98jwFuIZEl55fgicTc1fERHIbWqYy4fJiUdnBviy+HwPPbJ6HGYdIb7ffirKh4sNZHo0V2cPRsfzapnTy4ggvq3HIj8S91DwuBPMrd0OLbE3BuxnhyWzllVBduqaXHx0jT06tpy6oiXCkkPTy+qXULCxSYUGXRYoQBxCZ8mAqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BL0PR11MB3156.namprd11.prod.outlook.com (2603:10b6:208:2e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.15; Thu, 11 Aug
 2022 12:01:40 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5525.011; Thu, 11 Aug 2022
 12:01:40 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [linux-firmware PATCH] ice: Update package to
 1.3.30.0
Thread-Index: AQHYrD2fMiLjf/DQo0CK3wbsvzKQNa2pm2Rg
Date: Thu, 11 Aug 2022 12:01:40 +0000
Message-ID: <BYAPR11MB336758148E3270E2FC58D5ECFC649@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220809221513.85276-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20220809221513.85276-1-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 16ee0edd-17e6-4384-8563-08da7b914002
x-ms-traffictypediagnostic: BL0PR11MB3156:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qwBWZ7xCuoxixPOHuchO8WlY9CP5Fj42Dw+mB07MEYmVMT/L2RgUVOqhxOCjhdkOU+g+dcuK3NThkRZy5H5DfFVoSEDF/2/rgC02yaWF0h/Bw2NiSLqFro2ZszOO+o4xifVPt6T+ye9fZ37hK/aDqyzyahAK6C5/6hegmL+hoq7TW0dwlmKYUr26eA1ut/0lqrVA4ilQlzULisRSjU/KmTZOflcixyMr0j1jdAzxgY//cXmGXYiLW/3CCZ0VTJUO5JVGzCk4rclL+g3ihGkIU4+LGTfbBKad579I1kwb2PGghW7rub6ifnYwq1bZaWdHGcRUB/r+ZT0KY7C8p/7AaQZ2WzVxAXBRoE+qAkIpQVUrWSS77sudXpCz11IaJ82A1nOl3xOM2jpVHsRoj98W/Q44Lj8oPV4G1PVgxiaDv2GByWtXtODh47jG76epjhnWEHQA7ndLoKzUfsy7pRyhBrIyye15feudpLpfgExoSn79NOurYIyV2uscgxqULtPhJNxwNrbZ1FNKfYFEC0alMfazYZrchJDm27PbBH3U1Ev6UOMAcM7Q8AS9GlELDcG5sYyWEMGOkirV2oyg5Rnh/sKWm+7B2tepe+Lqz2mdLk6MxwWUIKaZ73RXpmOnGItV/Nnre2Sr7iycGODuaWLpgSUCa89AnS4Qp67El9pT2P2WLfnfG75VnhReEUwlhtO+NeapBqRKz1CtuQrE898Cqg8vTngHWmvUn3558Bc4VNzP0IZUHqWHcRxLKuW75dFoVCXGQWw6EC/mGLzhodcl4cA1dDY/Mfnvc/exPBcJp+tERCvpId7WlfEkOHikJ8HO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(136003)(376002)(396003)(346002)(316002)(5660300002)(64756008)(110136005)(86362001)(52536014)(53546011)(82960400001)(66556008)(66476007)(7696005)(55016003)(8936002)(8676002)(66946007)(9686003)(6506007)(33656002)(41300700001)(26005)(15650500001)(122000001)(71200400001)(38070700005)(76116006)(66446008)(38100700002)(478600001)(186003)(4744005)(2906002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R4GckAVrRdB2eMSEbdyPkkAb9WMR49Jxs0F336Gc5gKSGjqiL64CiviILgN5?=
 =?us-ascii?Q?jPrA7h/I8li+OIbNzRII4EFfuxvXoTt6cXjQJb1zHYV0jMEWZtdBlnOf+WzL?=
 =?us-ascii?Q?yM9XYrwRvmPD15ash1tqlZEYtj+CdFHt+WOLFGWAGQiL6AF9jlNEfPGRAmq+?=
 =?us-ascii?Q?2n4Hag9Q3/zwsLOebvkFJGibU1yQ7aBNko6EJYslJNXoV6BDbIidNfwGHRDl?=
 =?us-ascii?Q?pzJOp4cxeIg4ZL2dus6BpaJtRixQn75FEIydRvu7ksYeZNCyY7D7wOruUd8H?=
 =?us-ascii?Q?/XTow78K/Bd9ivE624ALR06oR02MTg/qMC4Ye57QhYnttmKDOdMHXmItcxAo?=
 =?us-ascii?Q?7qFqsqXMc7y/6CYKyePtXEdoyCmnAtvGhr3LolLpOlpHss3bl81vyGERAkIB?=
 =?us-ascii?Q?EN8Ba6o2mKjhX9i+aGPJOpJPKIG6tqZawLs+36O2fZXk4lThuCe2bRsnFXbo?=
 =?us-ascii?Q?YXxSmytRGU6qdbSI73nU7GWdx3hYMO22yrrqvC766LUggeAAPjK2aVKX/lAY?=
 =?us-ascii?Q?oK22bTyMXJAYo/ZRuAXH447qtEkL8lpqTxFhHJvJG2OkJUB1HMPWyXU2M3I5?=
 =?us-ascii?Q?yAmO63Zw6RypbPYWuG8+qiJY5BS4/s4ItyQV/RMFz1wz/sKKwtOlfqJc8kHS?=
 =?us-ascii?Q?++jNhyXKZofXUCAckVCb7Lhr52A5wXQVilgKHjzDP6QtUunCYPKsyYHigGM6?=
 =?us-ascii?Q?mDfHNhlZsX2+TV1y+WQ1wivWB4Enw2U25wGUTzqk4x9/GEIMGuKBEtZIbbnu?=
 =?us-ascii?Q?oZaG0+nUrelMsjqb4dyMw1kpqeJAzGbr+8g68S7EcXWMiXJIPznS1Oauch54?=
 =?us-ascii?Q?n/uAu0UrgpkPsow8m0sqMlpB9aLyebyYfpkS0LPq833H/UHBM7ew40hxzYWN?=
 =?us-ascii?Q?RdBcobDybpojpEYjmACPVP8lwAVYHJQBMsnQfVp12w2/CmRWy+39d+eGpKo4?=
 =?us-ascii?Q?zckhQTnUW6GKSN1S5Px8JrEqOiMhVk80efL/fYEP3M5rPKjQQLPsbvXeyyi0?=
 =?us-ascii?Q?BptijyvEacvM0fSlAkSTS2oaUxa/nyMw+2f+5yCLjS8jI/mBJF9OUSkahCI1?=
 =?us-ascii?Q?/G4pxT0tcOSmDHIxSBBDiwT9XV5sxf95DXTWfV6uC/mhIFrOwExvb0jRCsRo?=
 =?us-ascii?Q?l0lMsdeEH8hrDbLWtBy4+ILzTBvZABGQbrRu/vots/5SHMvZ4md4Nt298GXD?=
 =?us-ascii?Q?k0yYXKSblw0X9ijOBkFRPRAGBbYpcxMZmrIy86WQdclUCFtmeC3Vm17Zei+o?=
 =?us-ascii?Q?tvnaze6/E2tUxMfXPEOKqxyvtveqrh9O3NQcQTvJKhGJIuFPjJpUkxKEHOYG?=
 =?us-ascii?Q?uYAkRyXbmybHUV26TEUXqTJ5fN/EK06+c8IrZruPdmC2o8Et6zwyxKJtwShN?=
 =?us-ascii?Q?GQbEVvsmUmvJawEfjRQK/u1Kaw+71BK05SK+2yS6EPpPwDYCKKXqlfAn8oM0?=
 =?us-ascii?Q?2FeKP0AgUB03UjokW80Y6LXfyjLLpxCRzqLwJ0cq7UZEK4P/q9fPR9OUkGMC?=
 =?us-ascii?Q?UzZAziTD0rsnAgy5OYNzkyzjtCCYNCJ24qZzVJbs57DLG1ytbF19LEVWpVJm?=
 =?us-ascii?Q?DC5h8ESJH/mjhmRFo9FUE1GaAYd3mBX6oRAikQTX?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16ee0edd-17e6-4384-8563-08da7b914002
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2022 12:01:40.0571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9FqyPYI41HGWrxii8aXgU4dXMFp41X+3hXPQ0Pa/mClwyDpfVwhilxxpH8IRxbFv7K5zB/xdHEqS4CCA1RlmVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3156
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660219304; x=1691755304;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+hJSI7jcFV8Piw1gGrbFTpqbMowSTZaNSorToTRI7n8=;
 b=T791hp9EfxDxnrXLxG5IvyCDdsPrSFEIgAvkqJtXi5Yzz6CjQb416mLl
 vl5O40Vyfjacrv+Oye7mCLcHnvJuPttXO2t//NfMLWSJifNeLdGXq7+7f
 O+6wrdOe4fKD9O+Yxou7hNa8q4VdYTz+XffElWgf7h5O/ro+LNGEO9ByO
 NeB+yIoBM0IqMu5N7d+5YKowbyDiBWQKG7Yxaei/P+2KM2VgjXaQsL7gv
 cfteUiIyJ3dPbPbAt5gX3B7UA9b1OSLQPoyy8hu7RvcuTzoYdQGzFpHuk
 P425HKVdXGOvP38yibQQSpha+KiQCAU0pl1ctv0a6l0A1BTGwIixWLr7+
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T791hp9E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [linux-firmware PATCH] ice: Update package to
 1.3.30.0
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
> Tony Nguyen
> Sent: Wednesday, August 10, 2022 3:45 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [linux-firmware PATCH] ice: Update package to
> 1.3.30.0
> 
> Update package file and WHENCE entry to 1.3.30.0.
> 
> Changes include:
>  - Selectable Tx Scheduler Topology support
>  - Flow Director support on multicast packets
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  WHENCE                                        |   4 ++--
>  .../{ice-1.3.28.0.pkg => ice-1.3.30.0.pkg}    | Bin 684408 -> 692660 bytes
>  2 files changed, 2 insertions(+), 2 deletions(-)  rename intel/ice/ddp/{ice-
> 1.3.28.0.pkg => ice-1.3.30.0.pkg} (97%)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
