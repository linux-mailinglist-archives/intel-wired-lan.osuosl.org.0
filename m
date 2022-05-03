Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF7A518944
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 May 2022 18:04:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 706D24177F;
	Tue,  3 May 2022 16:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yftKxSnr6Ami; Tue,  3 May 2022 16:04:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0C6741774;
	Tue,  3 May 2022 16:04:23 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 404951BF342
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 16:04:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2CB6941774
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 16:04:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aUzKPBA5sUCl for <intel-wired-lan@osuosl.org>;
 Tue,  3 May 2022 16:04:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C2C9D41770
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 16:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651593857; x=1683129857;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e4S5kSH0jSze8vYl82V6z2dxDL0AhH493iXwbggDHek=;
 b=Be3lun1nOtIbWhK+zNF5EJxGW3fZYjqUz4OB4l3Wm8DUWzp9H29z7iux
 1lfJ6w074Mo+G/ty93DmhLp5j9QuuzjfFLnr+4ba2G+8WpCcRw/3IW0QR
 Pzv/qFzJnae/UpnQH5LhTM2GP9xyOqvAreAsUxRgM80O7w+Zc1mk5xWW8
 S75xBCPhSC59AY1os4P7jUfDCyKqj3VxrxjID/AlpX2Q1MT8zG7WIX7Up
 95K2sBl8WcG6iXa8utC7Sqwlw/0LuZxdF//O9SzDizHPD7PKAIkJ1jXUs
 KumNnmeKDP04UD/IvL57N3SLW3WMHxCRIgzxatAneV6LYojXQ7xTusRti g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="353953966"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="353953966"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 09:04:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="888963850"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga005.fm.intel.com with ESMTP; 03 May 2022 09:04:16 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 3 May 2022 09:04:16 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 3 May 2022 09:04:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 3 May 2022 09:04:15 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 3 May 2022 09:04:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LJL88EIocEqBCbmKsSlwmcOmQyM+uZzlE/RDGzLoWh1GuZBGbJKBHWNnoD5bLvVBYu4N6ctDf99jXy8pGv8rKNpBf/8grdjGOumJJFwf8p/1Guead3aTEgK2R9VOf9QcmsZUlevcIw/Eg+v210sYgPKGOXGre81i2oxxGv182Rw4Lthuu3kGBb20SwzydXSUgr5cCR6UDsmo6E9/ih55Z0KoA54cXXogW/N3X+Jqcmuj3sQNn69Nk/35m709z+eIY7BjgGKUrl45W6r1FwPs18Vjzp96bBGUqvKIsqkyKM2uhOZ4Y+K5fQJ8YNCr2q65TveGeQ/LmfS7szs1VS8A5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YoI+jBzbOr7hBcfqQG1rvVWHpzb3a+7xaEVh2dxdanE=;
 b=UBRTF+J67e4T5Z8tMGrh8QeLGggOy6sGENfUgxv/Ze/prbxKeDHAkipyOhfBKAwZS5WElv5KcJjkpsAqGR1f1erbsu62rMXHflSBhS1lTkky2R36dXepeH5ehP3aOpzalv52YiEj5yHeON+ycWOKEy3zJx7Px08Kn5Pwgb6wyhWebIlFXo1vkwndMC/tiZdfOoqxP9qzaAM+Nz1bZY+IV1ncNH/rOUp+P1HBCO+nzfMijOnUuW4Lqq932gWsN/eOiXYeRVUuFWULeV7v+gvosSHYezJOiNTtgk8eLm/ereGNch7bQJTB0+k5bRtAxmRfrLs2Uc2a3Z2P/qS4J4NMCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by DM6PR11MB2748.namprd11.prod.outlook.com (2603:10b6:5:c8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.24; Tue, 3 May
 2022 16:04:12 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::35bb:e477:110c:eae2]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::35bb:e477:110c:eae2%9]) with mapi id 15.20.5186.028; Tue, 3 May 2022
 16:04:12 +0000
From: "Mogilappagari, Sudheer" <sudheer.mogilappagari@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] ice: Expose RSS
 indirection tables for queue groups via ethtool
Thread-Index: AQHYXvF+mSXdxMRfIEebUNp3r6ZpCq0NRywAgAAG5fA=
Date: Tue, 3 May 2022 16:04:12 +0000
Message-ID: <IA1PR11MB626623C27C5766E09B8A74BEE4C09@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20220503132428.1859432-1-sudheer.mogilappagari@intel.com>
 <20220503152908.395702-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220503152908.395702-1-alexandr.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 869ffa87-4627-4ae4-7bad-08da2d1e90d7
x-ms-traffictypediagnostic: DM6PR11MB2748:EE_
x-microsoft-antispam-prvs: <DM6PR11MB274885D55EB4488EE129516FE4C09@DM6PR11MB2748.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DQ8oOk73tSPtju+XM1nfBoTVNBIFwHZtLEG9ZsFhaH/kdcs0kITlIARCnQwueM6yU7txbXRUxXhQ4SqVpDL1hWNK9UrYjVEBwqPBojI5PwA1tTiPhEi6n8hWI9sUdYeUlIcKsVyyWNOcqkcSPhzbp89OhoYEQ4LMlPiBt47NuqtEVVbyOVazcs0u9a+Bxq0pHEymEo4et9WBJQG0rnvDoT1VeGG8tkMRJWRRCVp0sZroK4WXVO8T2EJHu+0xbQwh5GDAkoFAME86Yery2bLx0RtnRUimbp+fxOdDeQ3tyurLKEgaklAw6WxC7N3wmMGt7Y+C9b3tN+rwf4xcBDN+gEUlcndfXXIlbU7NKwGHcY103/fPrRdYaWk9Njcvz1T3dXrP5JV1ugQoyN+c6JCBkRQ+7+2ty3GlL34HfDjo2QTfCZavQrhS4JPiLiVB454Fipd/5RvmAPsB9Ryn48tEJPl7U5cQ9AWO2UbTq2mg2GfMGCjB2bPkUc1q9RoM2FUSdOhLgsUd/3bqW9rowiUVEf2s3NOWwt3Gh4hUz+NaUIHW/jHN8aO8aWa6/gJPHYZyhz0ISy9/5ci0vKkbyxEhogf5iwGLCPHyG7vrq+9csKKL9bycrv8ZCNYoceqcQyzL7Bm3FlJ8ltNB0QbRybwfUOXPGEK30wpkovHMfH5UJJXFQ++o2nI9Fvp5m6ACdf3Zxx5cYr3p+x+8ReYwr5brtw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(52536014)(8936002)(508600001)(33656002)(316002)(71200400001)(5660300002)(54906003)(186003)(26005)(9686003)(6506007)(53546011)(55016003)(6636002)(7696005)(83380400001)(86362001)(8676002)(6862004)(66476007)(64756008)(66446008)(66556008)(4326008)(66946007)(76116006)(2906002)(38100700002)(122000001)(38070700005)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?osLiScgjP19dUUeGolOf0lDdL+m+1JJQNi9375sucNAbTFmLft+COKTnoDvl?=
 =?us-ascii?Q?nbqYdSqXtDgaC4aUwm6hb1tp4kRc64tcrWnzuZF1LChe+OCqMdgWqPrqtUsP?=
 =?us-ascii?Q?7HOOQrAoJgFaD9Ev2/ubeVuW9zQJrYOE2mYppTVf5BSPnIBwpMLHi1nvgl2H?=
 =?us-ascii?Q?DHXpKbWGff5kGmard203CKwPJgq4i9bE2sq5vjkFyO6zZ2g6r0lJWT3/9qXI?=
 =?us-ascii?Q?3sqIiCoJLohxtZNrE/uIacIh0Tx7GvVLRv2fTZwiAphPUDGEpNUh8u3kYmkc?=
 =?us-ascii?Q?btgPVRioCc7Rvnh6wmVi6YfKpnofmhAiq+2Xbtxy1JoDsIpwQEtRzpE9Zum0?=
 =?us-ascii?Q?Kum7FcFY8dWsemGAXQBAfJnWNhEZUDnCTIV/W0ylkVuEJ0yzhKWUbKkQX6Q9?=
 =?us-ascii?Q?6MLX1t93hwe3CXEMtrQNgiugDOzhGjwZvnwn9/Je8UVvx728DIeMsFzP0wlh?=
 =?us-ascii?Q?v2JxA1bwtT/TN6vI9mF1/hXAHWWIy5j6lxVtR/K76smNAerHbSgiE+rixZyp?=
 =?us-ascii?Q?aoeWfcpD8saqal/slE3IwC14r/YDdzt9VlxEvARggxYqECRL8cfnu8eI6+rc?=
 =?us-ascii?Q?U/fRQvEqbY62cBNHrbh3yg1/m1rbhoI5HJbRn33B0YYL/WAGb2D5qNpRh7m3?=
 =?us-ascii?Q?pUvABuyeoReS0ATNZWZQgzTC4v1LCRUa9kdU5ACFpdcQ6Or9Odr/1quLz5/f?=
 =?us-ascii?Q?hloh4c/D08Mc3xgMKPkOTiclRX0BClfYFVE/qogHELT4FRkRMA0ARZGHjUSD?=
 =?us-ascii?Q?pHtPqpeAbcxP/R5T7xamZqAuGH1YcecEQoYKu4qh/zfhd3owK14WulY4JUI3?=
 =?us-ascii?Q?Uv+h/qUccV8gvi33S9C1CMXGBrDSNifXwh7PjbsEQ931iAhKWqyVbdyzzrX8?=
 =?us-ascii?Q?W+rlnaVVQ0VqhkSfarwLrAKLruYNmJuNuINDFm/Xs0h9nI2PqJtqkla7SswK?=
 =?us-ascii?Q?D1Ivb8oz48FkjKVIfuyObcyCZS27zk7icgtQpwQ4loVMQLzASw4NgwnK6zcz?=
 =?us-ascii?Q?NfP4G6tADI3A4MIx1ClLpROIMYzluY5oPmc8omy8+vBl5JVkzCDjr3p/QkaG?=
 =?us-ascii?Q?wCl3y57cyxBpyx5kEh0IjvRhsVf+/CgC8VlKd24GMEyUptUKUjV0FYE/gAzd?=
 =?us-ascii?Q?gHcpSs5gnN8VXPsJOHNxur5YRKZXA9GY1sGZU5aVx2qquV0dnstKZrwIg0Xd?=
 =?us-ascii?Q?0q5fZBLpvSxE0a7kHjK0vaV+Fuh6Jaqb03JtdhTw4n2b8aD9k095KgXwSBjV?=
 =?us-ascii?Q?XjVPt6BmPk/64tKsTsgi0lweMfdssWkXCNhyA7ftzenCyV95Ip0cpxFLrMCp?=
 =?us-ascii?Q?HOCjkPoQTUeSFrb1RM/qHp+69FUYWwVOl9sK6ItQ8hGB+Nf2dGjsW01H9DVa?=
 =?us-ascii?Q?4syTt6VFSpk6Xrh7mE9Vec44H8XZVEGNUYzGgw4SzTvraNIhbW3Hp0ZzjGJx?=
 =?us-ascii?Q?vLrSklnNCs5YMecI2MbRbcYGpvIHXVfE0AYL21VIEfXxgZSH9DecqnFlMyrA?=
 =?us-ascii?Q?bXckn2CaGFPm8gUSeFL4y/nsGc36DXl10MkCllQXTo86gPWamhEQv+DHkDob?=
 =?us-ascii?Q?Sjt62r0rxmhDlQ8HzrHqmmfaYHV7pQf4SFfeWlUoZL4TzKbiVxHyzh6unhrM?=
 =?us-ascii?Q?MqgbO/4LJ1RS2trLNx5Mo2wapXpoOlVENQtbxCB6hZ0Bd1U8Jbm7kT4rW/dh?=
 =?us-ascii?Q?eENJ93NbLdXUuRMUOqkUw/g4Y1xQyjWTl5TY9UfEBP4PRxkRl7ZVBVqNxp3z?=
 =?us-ascii?Q?ZKA47RZylBxLq+9K1U4gx821Te650q8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 869ffa87-4627-4ae4-7bad-08da2d1e90d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2022 16:04:12.8019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 51a0TffqoqNeFo9faT2M5FTG+j5khiAbZOgt3zOaunQwRmcHTR3AG7Qm4BF5fsqePrxdW+NtxfcmDw0Xrkon2bftbtlsT7Q0CwveYtPWmUg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2748
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: Expose RSS
 indirection tables for queue groups via ethtool
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> Sent: Tuesday, May 3, 2022 8:29 AM
> To: Mogilappagari, Sudheer <sudheer.mogilappagari@intel.com>
> Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Paul Menzel <pmenzel@molgen.mpg.de>;
> intel-wired-lan@osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: Expose RSS
> indirection tables for queue groups via ethtool
> 
> From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> Date: Tue,  3 May 2022 06:24:28 -0700
> 
> > From: Sridhar Samudrala <sridhar.samudrala@intel.com>
> >
> > When ADQ queue groups(TCs) are created via tc mqprio command, RSS
> > contexts and associated RSS indirection tables are configured
> > automatically per TC based on the queue ranges specified for each
> > traffic class.
> >
> > For ex:
> > tc qdisc add dev enp175s0f0 root mqprio num_tc 3 map 0 1 2 \
> > 	queues 2@0 8@2 4@10 hw 1 mode channel
> >
> > will create 3 queue groups(TC 0-2) with queue ranges 2, 8 and 4 in 3
> > queue groups. Each queue group is associated with its own RSS context
> > and RSS indirection table.
> >
> > Add support to expose RSS indirection tables for all ADQ queue groups
> > using ethtool RSS contexts interface.
> > 	ethtool -x enp175s0f0 context <tc-num>
> >
> > Signed-off-by: Sridhar Samudrala<sridhar.samudrala@intel.com>
> > Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> 
> You didn't answer to any of my comments or questions during the internal
> review, including the ones that Paul has just asked, and now you're
> posting the same version to IWL to get it accepted upstream.
> That's not how it works, NAK.
> 

I had responded to your comments (on 4/22) and posted v2 (on 4/23).
Posted here since there were no further comments. Will incorporate
Paul's comments in v2.

> > ---
> >  drivers/net/ethernet/intel/ice/ice_ethtool.c | 69
> > +++++++++++++++-----
> >  1 file changed, 51 insertions(+), 18 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > index 476bd1c83c87..1e71b70f0e52 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > @@ -3111,36 +3111,47 @@ static u32 ice_get_rxfh_indir_size(struct
> net_device *netdev)
> >  	return np->vsi->rss_table_size;
> >  }
> >
> > -/**
> > - * ice_get_rxfh - get the Rx flow hash indirection table
> > - * @netdev: network interface device structure
> > - * @indir: indirection table
> > - * @key: hash key
> > - * @hfunc: hash function
> > - *
> > - * Reads the indirection table directly from the hardware.
> > - */
> >  static int
> > -ice_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8
> > *hfunc)
> > +ice_get_rxfh_context(struct net_device *netdev, u32 *indir,
> > +		     u8 *key, u8 *hfunc, u32 rss_context)
> >  {
> >  	struct ice_netdev_priv *np = netdev_priv(netdev);
> >  	struct ice_vsi *vsi = np->vsi;
> >  	struct ice_pf *pf = vsi->back;
> > -	int err, i;
> > +	u16 qcount, offset;
> > +	int err, num_tc, i;
> >  	u8 *lut;
> >
> > +	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
> > +		netdev_warn(netdev, "RSS is not supported on this VSI!\n");
> > +		return -EOPNOTSUPP;
> > +	}
> > +
> > +	if (rss_context && !ice_is_adq_active(pf)) {
> > +		netdev_err(netdev, "RSS context cannot be non-zero when ADQ
> is not configured.\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	qcount = vsi->mqprio_qopt.qopt.count[rss_context];
> > +	offset = vsi->mqprio_qopt.qopt.offset[rss_context];
> > +
> > +	if (rss_context && ice_is_adq_active(pf)) {
> > +		num_tc = vsi->mqprio_qopt.qopt.num_tc;
> > +		if (rss_context >= num_tc) {
> > +			netdev_err(netdev, "RSS context:%d  > num_tc:%d\n",
> > +				   rss_context, num_tc);
> > +			return -EINVAL;
> > +		}
> > +		/* Use channel VSI of given TC */
> > +		vsi = vsi->tc_map_vsi[rss_context];
> > +	}
> > +
> >  	if (hfunc)
> >  		*hfunc = ETH_RSS_HASH_TOP;
> >
> >  	if (!indir)
> >  		return 0;
> >
> > -	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
> > -		/* RSS not supported return error here */
> > -		netdev_warn(netdev, "RSS is not configured on this VSI!\n");
> > -		return -EIO;
> > -	}
> > -
> >  	lut = kzalloc(vsi->rss_table_size, GFP_KERNEL);
> >  	if (!lut)
> >  		return -ENOMEM;
> > @@ -3153,14 +3164,35 @@ ice_get_rxfh(struct net_device *netdev, u32
> *indir, u8 *key, u8 *hfunc)
> >  	if (err)
> >  		goto out;
> >
> > +	if (ice_is_adq_active(pf)) {
> > +		for (i = 0; i < vsi->rss_table_size; i++)
> > +			indir[i] = offset + lut[i] % qcount;
> > +		goto out;
> > +	}
> > +
> >  	for (i = 0; i < vsi->rss_table_size; i++)
> > -		indir[i] = (u32)(lut[i]);
> > +		indir[i] = lut[i];
> >
> >  out:
> >  	kfree(lut);
> >  	return err;
> >  }
> >
> > +/**
> > + * ice_get_rxfh - get the Rx flow hash indirection table
> > + * @netdev: network interface device structure
> > + * @indir: indirection table
> > + * @key: hash key
> > + * @hfunc: hash function
> > + *
> > + * Reads the indirection table directly from the hardware.
> > + */
> > +static int
> > +ice_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8
> > +*hfunc) {
> > +	return ice_get_rxfh_context(netdev, indir, key, hfunc, 0); }
> > +
> >  /**
> >   * ice_set_rxfh - set the Rx flow hash indirection table
> >   * @netdev: network interface device structure @@ -4102,6 +4134,7 @@
> > static const struct ethtool_ops ice_ethtool_ops = {
> >  	.set_pauseparam		= ice_set_pauseparam,
> >  	.get_rxfh_key_size	= ice_get_rxfh_key_size,
> >  	.get_rxfh_indir_size	= ice_get_rxfh_indir_size,
> > +	.get_rxfh_context	= ice_get_rxfh_context,
> >  	.get_rxfh		= ice_get_rxfh,
> >  	.set_rxfh		= ice_set_rxfh,
> >  	.get_channels		= ice_get_channels,
> > --
> > 2.27.0
> 
> Thanks,
> Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
