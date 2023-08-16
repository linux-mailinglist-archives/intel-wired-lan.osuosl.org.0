Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE48277D98F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 06:59:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E09561247;
	Wed, 16 Aug 2023 04:59:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E09561247
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692161998;
	bh=fV4u9kHH0XMPzF8ULGPK4YjwjKXBoprVVCrUDUqifnQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yj/exQrtxTy5jWWw0WSIE9aYHf92ynb8QfBnJUu+PF6Vzsqs3yyveA3el+8UGJXyN
	 Et690Ekq462XgaRHSCj0NVQ73PWurpzkKYTP9yD6Vr/hL3Qapj2id5M3FSc2U0xhDP
	 Jb2fwHMqUIYa4jUMAMqFg1og/Liq8aaX0CjF9OwCjl6w+lQx8eNVaREZRk2Nb0rwlq
	 8bJh8led+ipmTSU063bf5sJbx3rUOGLAyLATZYIyqXAiuvVXLXSHZY7hoM9Pc3KZiQ
	 IUG5r6fYEXXyevQbiNv0WOw05YwoM3hbtDnG3B3Akw0vpyOXq72KYw+soVGVOKKejX
	 Qugoln2FPnz7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 25TpAPpR0KR7; Wed, 16 Aug 2023 04:59:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4399060ACF;
	Wed, 16 Aug 2023 04:59:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4399060ACF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 596D11BF239
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 04:59:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 313BB41526
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 04:59:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 313BB41526
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sLjQsiVc8pdG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 04:59:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6782540125
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 04:59:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6782540125
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="376172985"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="376172985"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 21:59:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="769059409"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="769059409"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 15 Aug 2023 21:59:49 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 21:59:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 15 Aug 2023 21:59:49 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 15 Aug 2023 21:59:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NB6wEHljeFMN3BnOUg+MyppmryFi1TtKD8SiN2vNH69sX0PnDGc5LJVQ22E9ElOrqJvPpBIcM/DmQ4Z7nyijSCrvsswqz7SWi0TQgqclxof4FAP3xWoMR3f4tRVIe/5lZWJIvbWN/+pIU/nUijaXLsuR6Hl/EjzGjh4FOuOSY2L4EFcjLFc1aS3+MtitCn3A1zhdZuEE5JC5KNUzbL9erkI7/EWPE4oUrCfp2k4DprIPLjBdew+f+17wAG7ka574tb6BF5Av8Fwb3sVNmWmKO8jDqCTJT/zj0fmBftGgBlsnbCbKIw4lxEVLHf/gAQsIw6fcsazQ+UzvdFsNabpoVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UnpuA111WkbVqqZIOUAxUXlgWQ0FDaLvIxvI28vASM4=;
 b=BqPm4oYzHKDDTP3EEWu5sKqHkGLmjadymyR3G6zSEZM2JMLUqif7R7yKwoAqe4VVLkgevL16fXNwg4RJ4SNwQy0Ilv8iT+C/P3AUEPQgyMJwXy9gImRMawcUsJXDgyTahEpTnEzKSzqlzYAa3ZP3mPUmhVY0pBl70jUDKvbH7B0YpYkydJufOJ+acwWsv1nahvPMkEfk/FjPpboEsp0v7uBeeN7dzp/zaRBH/sGscz9hHlC3c/O4Fzng0bDPUM54okdEdRqzKZ08al+70rwcYPE8McK+Qf0Pz9nBfQpWTAh5JJHO0gD6csVwwzbNkqWTT2f/uNS0pbfwgW06oF2BPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CY5PR11MB6366.namprd11.prod.outlook.com (2603:10b6:930:3a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 04:59:46 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec%7]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 04:59:46 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 3/3] ice: split
 ice_aq_wait_for_event() func into two
Thread-Index: AQHZykNm2GXGildtvUGdIamkVovD+6/sZ5/A
Date: Wed, 16 Aug 2023 04:59:46 +0000
Message-ID: <BL0PR11MB3122504E385351C975B3B186BD15A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230808215417.117910-1-przemyslaw.kitszel@intel.com>
 <20230808215417.117910-4-przemyslaw.kitszel@intel.com>
In-Reply-To: <20230808215417.117910-4-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CY5PR11MB6366:EE_
x-ms-office365-filtering-correlation-id: 4744454b-2ef8-41e1-904f-08db9e159cdd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KmqQRTWamRtfcg3i0VoQ0Um9gxGDsdOYTKY3s7FM2KJD3T/MId9X06dO+H0KPzl+VrWifOws/V0B5AWDf2lH5WGvSAxR5z0oncTsih4RT5uyA542bBU8twF0WpUjEs9ObCVb/INKgt/WIIv+D2VZEAExWbPfe+XklsDXspxXb9/r1drxkjNN8OqslJ5DL9qN6VTC4Ls0qtfbcVcIRueiqNypKAps2BkUeK/xJS0qXhinbjMGbp11ckteB8TieYQTVbH7gjk2TQG6viZ2aIoLCAMNWU1EdxcjzCvudoyjYLofmoiGi//g3ZDz13QmthHgqCp/j2/as86HjeW1EEEEsMDje/o1RyC5/yC8Mz7jczJ8GryVfI9mvOcDHKLX5l/H54vAhGzwGvXfaQ5s8g5hm83Syx7EKDTVdGfvj3Lp2ogGMIrIaRayxYZAoJjPr+Tlzq7CyjSR3sjYCLlLEwS93R+B9c2rYdi0VyFkF3YqGuIVN9cg1e5OLc1v+WEjZ/0u+1Y1j2jX89cII2oBqOK0lhjHRJEgYp9medjhJgc+Ri/XAtUsw1IIjsA7w1oqEelVJmwTJ3Ti7nRUqufITDIB4tSPQp0wuwF04woEeqZl3CJB/DcrKZ+rerd5UCT7AjJW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(396003)(346002)(136003)(1800799009)(451199024)(186009)(71200400001)(64756008)(54906003)(66446008)(76116006)(66476007)(66556008)(66946007)(7696005)(6506007)(2906002)(478600001)(9686003)(26005)(110136005)(107886003)(5660300002)(83380400001)(52536014)(41300700001)(316002)(53546011)(8936002)(4326008)(8676002)(122000001)(38100700002)(38070700005)(82960400001)(33656002)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/7+FHZFHxdFtmyr8TKmO+K4L4jMO+AGOcTzGbtsxAk11fg73H5lep2WHmNA7?=
 =?us-ascii?Q?GGW84KJ5jxmo1OsjprJB1V0DySVXD/sVKLEnPyzMlF0EWO77+ZCCoHfBNpdT?=
 =?us-ascii?Q?3dTFtagXf+AnkbYkKo+GKodXg1SEwwd/ul9G4sIDSldPN5xCcFxKZ6lMmQMa?=
 =?us-ascii?Q?kBLkZhFcmzuDukWuUdbUu9HiHvj1AnKNjFqm2Fq+YYff8pYJY5xWd1xhPw/0?=
 =?us-ascii?Q?2Z3ks7+1yNUHpWss7h2iSJ1AIJ6e8pMP5wKhtvMFw6xLLmE3/L8obUD2qrqL?=
 =?us-ascii?Q?k+eVUjNKhHjVCEUXt0TcPE3fElEZ7M8oTY7IPID88w9ym4SqGGJ2jyKsdCSW?=
 =?us-ascii?Q?L3jUqx/FhqpiLpIOdn2DvaLh0M2cL3fmWVEu7UwAb3ZEi5nxY0oOC7/AruJ3?=
 =?us-ascii?Q?5BwJr3ue7Xj4BlSEQAc/woR/quVz79eQH6y3GKvMUMijUo+PzPqVU8KKVHCN?=
 =?us-ascii?Q?14E8u+RgujXaIEuzgbuUxQW84oZFtFV69/p+sERF3rq0TPAB0jwA0zDu2jlB?=
 =?us-ascii?Q?041onRV4uwrX+8DzgbAbj45s0Qlezt4LRMVlNGgLP/8hAojIpC5n5fiHvN1J?=
 =?us-ascii?Q?VQyxh/g7LzaJh5dDP+q7aSmAOU8vuZCX7EtCXrLHBe0FLF/LZ0CGtVf/oNhj?=
 =?us-ascii?Q?pNP+9XNVk4/3VCkRgiK0QirsNd25656w4GK9RcyQEeD/8yGALIRBR4iX1A7N?=
 =?us-ascii?Q?gd8MUAGCkUik+ZHrERlMsfKByAOk5tWL1hobotW/smwG7T4nKe8+/RvKBqWj?=
 =?us-ascii?Q?BhBVAuQh7xvqhaooJywvD0P45OFLdkwfO5/52c+gENeh6BTuL8Ka2fcS+fgz?=
 =?us-ascii?Q?K12tIhaGie05vmCelajQNF1MljuBMmbmBfcSWsLxBHioExuQQp1aV5cV2fP1?=
 =?us-ascii?Q?GW8xjydlmKMiaddgQM8Q8N+zHgnfYpknWKE8YY72v8bsDbLNcEOjlkLvOFfn?=
 =?us-ascii?Q?tCGbu7Iu47OtqAEw6aitAw6/CewNsChyzgCwV7t8GQXTXQD5IPfv6wUMLxHo?=
 =?us-ascii?Q?UoMFPmTATAaWGVWQF+9srDjbpzN0b2WVhBMrETX3zccDD7raQJ1JuxIRBF08?=
 =?us-ascii?Q?I9AA9WvTFlVMPpGbq2DGDAcp7QSC02LNSRYFwePdKqHZfu6VUEiE+dT0sPoM?=
 =?us-ascii?Q?eBk5F7J7mG5QGU3k/Bd1Tc64YcEekJsliVk64TbpR/I2IZepXFw8taBr3Qcc?=
 =?us-ascii?Q?AgHCmpB5niri5mK0iFxtcyyM2eVjU+7AwkR/mObOQW9RO0m1JI8M3Wa0RgPJ?=
 =?us-ascii?Q?yqXO9vosSP1LP5+5JksTouDGb0FulGylOjXPX3f39t2YGlvHu68GnlHi9zGQ?=
 =?us-ascii?Q?7y1otcyzxw4Lh9bEF0pRWPwHuKkOhiWEZtuR1mQAggjUPOI3Xq+6qfTjO5Pg?=
 =?us-ascii?Q?Jh6c9u/Vq3rSRtBKOEmJarPsLPVC+vjtxQ8tb0+1YoOYF3kJrhhyXw/Hj2Jt?=
 =?us-ascii?Q?jYRlZqsAaUgkGvY7345AfjSe9dmw6MPC+DjOElTvzIkVIqqUg4YsdtXS0OYm?=
 =?us-ascii?Q?HkHjWb61UlYa8Qs4LFrFytvl1X9G+EjKXLBTMIp5NgAnEHMzrA2XpLyzxi3+?=
 =?us-ascii?Q?ftTB3DFO+NdXJFRaIVkaPLHKcfEh2qepmhlx1VuQt+Q9BUlibKXaI3JGAIYu?=
 =?us-ascii?Q?rg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4744454b-2ef8-41e1-904f-08db9e159cdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 04:59:46.6265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k2qC85+1T/+YFuUugvkdTTmod4CTHLIEo4cObarGyZkAqO/IbQunoz2GfN/9k3K0FukULvH1PRL9cXbSBeJR3Ais+Tl3p06RtDSHV7ryMrMWcneiFpzr0nE9Ifc6HdNl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6366
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692161990; x=1723697990;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1zmqRNGx1/fq5uvhG4FG6iOKWo46NTAtu4Pu2d0SMLY=;
 b=BWyP8Ohm2WDt04fuCbqxXDpwE7NCJzNtC4vm4/RoN9OEz4Je3D4blJvd
 767CgcXIAno6U6n1xCx7K5bF/Iec8v/fr0Y3GaLTGxSAjM+q7bMel7xY+
 AFE3OEQoC6j4z7znzl/XLcTVgeig4TmgtrOrEdX1h3yxtkujBF35t1EDG
 BWxnlwWDH00Z2a+uiDbTDqm54M6g1/vsc/ki5Ep9HZkmgIwSSdUIhpAm2
 bmFqZ/1oUVTnEiYg8/V/OE4OxiDqi6/okgAoWCWXG+p0Ntn9+sdyKOS/3
 /LCVbvEwKdxKGRgjyx6kE+3eAVRwUaHuaPAqhp715GiNc0ZfRPDLeoiDl
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BWyP8Ohm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/3] ice: split
 ice_aq_wait_for_event() func into two
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Przemek Kitszel
> Sent: Wednesday, August 9, 2023 3:24 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 3/3] ice: split ice_aq_wait_for_event() func into two
>
> Mitigate race between registering on wait list and receiving AQ Response from FW.
>
> ice_aq_prep_for_event() should be called before sending AQ command,
> ice_aq_wait_for_event() should be called after sending AQ command, to wait for AQ Response.
>
> Please note, that this was found by reading the code, an actual race has not yet materialized.
>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>
> ---
> add/remove: 2/0 grow/shrink: 1/3 up/down: 131/-61 (70)
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  5 +-
>  .../net/ethernet/intel/ice/ice_fw_update.c    | 13 ++--
>  drivers/net/ethernet/intel/ice/ice_main.c     | 67 ++++++++++++-------
>  3 files changed, 57 insertions(+), 28 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
