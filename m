Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 308A1757338
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 07:33:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7CF9F60672;
	Tue, 18 Jul 2023 05:33:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7CF9F60672
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689658410;
	bh=r5itZd/XS1FHnzkUgHi6e1Bh/5GQykA+L1dQib3xgXs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TOS0t80X5QhwMXQ8Ya+9YZ+XtecDh7881trtpf66T7KQpBBUxxq8on5J8aoEiKbru
	 z8BKcQDxmhelTVerXd0usP5qmc5XnoICXjeQuItkyGsg3VMXk9nSnO+jZYQVBiP/J5
	 t/AcO6S9iZK06e1lfNcBZtpiQ57FGxYx6KpjBxWVwqoNx6eKPjTmImairjZm0AGhe5
	 DBbFQj1tD0sb/lRJrY6Pgd8scY4MMlvgXXVIKGi7Kwk0gCygmrgq/CqZuHOYUtybEt
	 2tlEk3WFhT8iiGyvDqRrn1BKnywCW7Abx8EyPLKPuBE9vIuFJj/b3T+7ABcuDPBKss
	 a3um2zwNd8x/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zQSBa2QotZ5b; Tue, 18 Jul 2023 05:33:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BA3D60A5D;
	Tue, 18 Jul 2023 05:33:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5BA3D60A5D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 72B161BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 05:33:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 43A4040122
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 05:33:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43A4040122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N_OM_xA0p4WB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 05:33:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF44640106
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EF44640106
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 05:33:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="364988208"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="364988208"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 22:33:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="847574647"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="847574647"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 17 Jul 2023 22:33:21 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 22:33:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 17 Jul 2023 22:33:21 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 17 Jul 2023 22:33:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xp/JcaKmsS6UvswFT06zO9YwafBkBWJ75PABO5q2YPQMxSMA5gCSfPwgQFvLe2m7RRn5xmR6tzG32Ng7cL6NGWIdtv4c2Jb0/jO1x/HfoLq93HsVk/xL451b+eznhOCp5Z2tthuDo5fHGEVYQqNGVzPwn+i0KrK0qd94RhSs0olTx5wkM0BRnzXXVQrxGA78IIfuFM4+8kKOAhGS2D4TPSKfQZmkUTVEJnEelD/0WpRbsIkcVSsrj/sbRjwLHkRIwX/5HLLa2rf9bepe/oXdUp1MN5Y2pwzAa2zS6iO2eG1qTnu/MJE0vYUSPZIK7pSmWEBDCfTxvNvzQZALtnTusw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MGLn26Yak0z4uMBdaPZITvGWPzl9W2Qx/JGuzclUjJI=;
 b=RN/D8ghZohJ4xDPRjwQ1JPgaPyneeb9pj/FSEymQH0qPpQDmNZAJiLrltBW8zMvuwAtmhY/qGAJnxYHD5DLM57az5FbYYNYwsgl+TTN5YgkRIAwjSJrOGZS/DvcwGlGXjhxgJn9k1LKe3H2j18qfqcHZZ6o+XeXefm9aZfqdQd6QR8D+XvRdZTFnEhwqgjXwZ68+wq6dMZ3mLVREmEml1u/Wb+AGmpv8mrFIeiWgBRFrv1bxicsuU6rBVk6Iah/4rXxPZZ1jSx281wsfboh1093rcnBxFhrYmx7A7oKRV0EZ1bJzch3XSprHy5lnc/flKo43npiyvfMm2NkM+9jR4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3133.namprd11.prod.outlook.com (2603:10b6:805:d2::14)
 by SJ0PR11MB5165.namprd11.prod.outlook.com (2603:10b6:a03:2ad::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Tue, 18 Jul
 2023 05:33:20 +0000
Received: from SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::bc18:eb70:ccd8:352b]) by SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::bc18:eb70:ccd8:352b%2]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 05:33:20 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v14 1/5] ice: remove FW
 logging code
Thread-Index: AQHZtdkrI8ZR3dspuEqfVCPZSwmVVa+/Bg7g
Date: Tue, 18 Jul 2023 05:33:19 +0000
Message-ID: <SN6PR11MB3133C51279A6A3559884FE42BD38A@SN6PR11MB3133.namprd11.prod.outlook.com>
References: <20230713222558.142-1-paul.m.stillwell.jr@intel.com>
 <20230713222558.142-2-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20230713222558.142-2-paul.m.stillwell.jr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3133:EE_|SJ0PR11MB5165:EE_
x-ms-office365-filtering-correlation-id: c73c9dd5-10be-4995-2604-08db87507eee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GXe1ZQMccxYlugFRjsQmF2pK5EGbUcFyNKsG1eVeNe9HN5Mmxq4qZFp5wWYKmU5yQcrkpuwY52QckSdYapm0GortO6yWzTSrAu0c9OXiOu96YftAmyoDuPnOd5JLancjJhuMDgzpkxBEhjCxX5jR0TtTmXyOehAD1HwZrTZ3aFqySLgX10KVsUfVDsGmcnUCpv7wBmsYbrmWsztUlYk2I1mKPnN9POvmB2/kf3wcYhO4xGslCDRpvBf+NZi3s+/EgVWg97A0FiSdZEMKfDCmn5z04aTpSYAR6p1llF7gkKAvldMflyxSU6wR91fTEHAju2DshDYRjssMh0bEnAkEm1NMnoCaMGhqzrOPv/h7tFVpItlA5oO0msPK0IbYih8W+suiwUmSRVdNuZ+oRxLXpcPYz+jX4B5UGvKwTn4XIZ3QvbsmAYSuDkynEjdlE6NvSmcG3ddJUlC+S6V3nWZSqv4zJHhr6fRxHzZlOHJEH/uD/zT0NZqMzKnWOij+C32QXDh2HVzW4TzpXcWFVax7XlGfEDYWvxR/KPqZ70WCrnm/LGB7JBhS0dUxq522vOKTzjbl46NiBvUJp8XecpmFKenbQNEND6hnLX+dSQZV+WU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3133.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(39860400002)(366004)(396003)(136003)(451199021)(7696005)(71200400001)(478600001)(110136005)(83380400001)(33656002)(86362001)(38070700005)(55016003)(76116006)(2906002)(186003)(6506007)(53546011)(9686003)(26005)(38100700002)(122000001)(82960400001)(66476007)(64756008)(41300700001)(66946007)(66446008)(66556008)(316002)(8676002)(5660300002)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tQv16C+VcLe1NJ34lJC8lR6wRd8FKnv9ZH8avVF0DKyXtFe0/vxwv3wv1Nhc?=
 =?us-ascii?Q?0yn0q9ywbxnXSdwFPtu1OCxREVdxocl8/54Lg2IqiMdndGqhuXxOrJPqjBi8?=
 =?us-ascii?Q?KKHoTziDdhHyUlENWXL8co8MoX5wYH8GddzItyjb1RjxzGTSc4S8nzG94liK?=
 =?us-ascii?Q?1gXhYyIbIuTthTGM77nmzAv9HTHKF6iqi1uqcmzVdVPB4K01MaSINSgzGGD+?=
 =?us-ascii?Q?ldTZzcygoclMpOcSZWHSwsxqADsDKWx+IZhbOJN1IybJ0ZoprwfY+783ndR/?=
 =?us-ascii?Q?XcbtF3OVcer2CBp5JhBowsD7Fw/fz4qgisNECdswC4tkZkc2Q1zn+0o21f0v?=
 =?us-ascii?Q?I4/tCiBrZIPzOVhAffMVewoQD+8qDhHQo5nwY+PTdfC3LSIsF4wjeggNQS2D?=
 =?us-ascii?Q?dTdVl0hO4mrcuyomz7Kbs6TB7Vv8yls986zHooc9ciJLrC5NYcFd57vQibKH?=
 =?us-ascii?Q?6Z3wgn9tTE3Gzs+JaXj5iWDF0HnfYV0Uu66nbJhd4h9/ZUA5knlExPiesc5v?=
 =?us-ascii?Q?lcQ+R/E6KDtZH2HXH37eWN4c92YchIdZzc04O/+02QFzUmMas/DpmoTs7kgi?=
 =?us-ascii?Q?vSnCVJV9uvkz4/15fkOn19TQgnwfXe/IpOOPivl+TbEypSxL+C/uSx08sM+E?=
 =?us-ascii?Q?VGTCPv36kJLKO8aIW00JP8vUZROV6eUN8Xx70okuyN7wFm97wiAICEdDY1a9?=
 =?us-ascii?Q?kgy613ka3CeI8+zDFuqFZxZsGs3EEHBnC48a5BYxtHpN11otDKcFgDqYhQG6?=
 =?us-ascii?Q?gY+Rros3imwjwRmHS8qd3fOszD8Rbwy+J8HxMyjlhFS9D2TFxTfzWb52jwdH?=
 =?us-ascii?Q?QlKldQelCzbgp595aEc+cMahfwp1vWYK5u4fPxgc6JEj+AxRgPU3G6T93+6Y?=
 =?us-ascii?Q?yG4mWAnjFw2hK3XkUrmshUpph17Fhe9+VyzaKMA7J0yTvxCRlCXWMy3J1CpI?=
 =?us-ascii?Q?tsVzWOdbg/+vF+72F8J9zO/2Ots2+gWaEMlipKP2rqmu7S1g+WpYPjAlQQOK?=
 =?us-ascii?Q?ZARNiFZlfc6wWsfS6LXO07TO5Y471ryTou9wlx73nGtJ34a9QYy6ybwexMT8?=
 =?us-ascii?Q?4YNZTIA/v71ksc1a6YLqrTGlBfCA48XwTTQG4aEeohvD1LXAF2j2R7heIogl?=
 =?us-ascii?Q?XAE9SzORuMYdGnI0Mci8iYP690NUNwVzWWycWc1h6N3Ce66YfEHV0g8VUpoN?=
 =?us-ascii?Q?GYovItJ+qM9XR0gGLiciPwE+k1iWS0K7fZrJPX+utt7nlyIIiyxtYJ9zspkr?=
 =?us-ascii?Q?NLWrq7+Gwkzm4LH8NBsFX76fDdSH0783luLnLQ/LTG/OmGtbtL/Q/h01g73a?=
 =?us-ascii?Q?Ljk+1ynXphDshjuU4NyJ2sz/63kZYH/9WpN8Lcc2NZnaNUwQOM7ZUl1oSI6p?=
 =?us-ascii?Q?kfcDU1qOq2p4ZZ4EZbU9zmwMskYF2H0wnNKVb+AmP8nUE4O7njSQHN5vemZ7?=
 =?us-ascii?Q?SUp6zz6yXEPmdsmiPsqP3kv/HQRBXccN5DhDxMPuHa+wQobPYnhbVn1QbgtQ?=
 =?us-ascii?Q?HRNwOOmA2Nw7jc8/IIyAAphl9oaZJHvyzbqwm7Pfwi7gJ/Z6pUZAVKw6nNRp?=
 =?us-ascii?Q?Z360d1Hpyz9nS82klHiFp9XirGILffltCCSJqtrTxXEGmjno+3CA8lGt4bDw?=
 =?us-ascii?Q?bA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3133.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c73c9dd5-10be-4995-2604-08db87507eee
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2023 05:33:19.9569 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m31YebtZscTt4BdXQWLMXghFzGukJ7eYxiTMVXZN+Q5WggCGutlbvJB3kdREkOvpOec9nZL29es15m+XX4G37kUTfjIM8IUXN4jFyUUEV4wbZZxMuuUHOzY5h6A4pMBm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5165
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689658402; x=1721194402;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EitMp7wAM27F6yLWbB/pfoC9QxCImP7Om08R6Y2/9Ro=;
 b=V7kIv3BqWTNA/8gy+wEY75KQ3firLH8gF4iUHMo7bg2yaJUhnb+L/Jlt
 wl2C2BW5wHlNtzrWEh+5dg1/rVETlCdaspyMOftJKGPQ7WbWfGAWGg/U7
 CZYi/ApzR//ObLSG8tZzx7AgkEFmDo52AsIa+yVsmqsPfoGkn9RNNudR/
 WtaDfw+7/lrc6wgLUOaIlCV0QsteeUgzGBltvSwE5aoXsphyiy4/UPDTC
 Nf4tScU+nmDk+tzLwpj/5yngyIrz3hjQ29i7vN6lSOT2t4BzL8GyhtubO
 X0OMHvLeIMIKhjJNmC/SiHuwFQdbBmixuyAP/4HjT8+01vc1a21FWiM6I
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V7kIv3Bq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v14 1/5] ice: remove FW
 logging code
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul M Stillwell Jr
> Sent: Friday, July 14, 2023 3:56 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v14 1/5] ice: remove FW logging code
>
> The FW logging code doesn't work because there is no way to set cq_ena or uart_ena so remove the code. This code is the original
> (v1) way of FW logging so it should be replaced with the v2 way.
>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
> v13->v14: none
> v12->v13: none
> v11->v12: none
> v10->v11: none
> v9->v10: none
> v8->v9: none
> v7->v8: none
> v6->v7: none
> v5->v6: none
> v4->v5: none
> v3->v4: none
> v2->v3: none
> v1->v2: none
> ---
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  78 -------
> drivers/net/ethernet/intel/ice/ice_common.c   | 217 ------------------
> drivers/net/ethernet/intel/ice/ice_common.h   |   1 -
> drivers/net/ethernet/intel/ice/ice_main.c     |   3 -
> drivers/net/ethernet/intel/ice/ice_type.h     |  20 --
> 5 files changed, 319 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
