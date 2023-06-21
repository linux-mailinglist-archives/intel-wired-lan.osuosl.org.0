Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6A5737825
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 02:18:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 58352417AF;
	Wed, 21 Jun 2023 00:18:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 58352417AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687306692;
	bh=gLo1FitSPtvqgmKuqo+PIiHhD7OemG7UF5rU9LjbbsY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lwAZfO8q5n6UawuouJr2Uquo+MEGQTEOwRBTol3QViFZiK/VvtRwTxxL1Z713ABGd
	 pWgi/r/hv2lVX3SVwBrWFKniVN7YvJfVAiNQAsTA+d+FLg1ymBzRVGRnMa/XylEve7
	 X9oFWWYKjsMdBKqcAwK3amw833zdOdn0Q964HUyYxsLlwcOh+a09Lf9cKKhwD/3rqH
	 QMhhwh0TbkvqEUHSn452fCvwZ2JtN7SM4KLx7Fe4vKpIW/i30DQRgF6KdAKidKlfqS
	 Y7P9X7D6/QzMk1z5QHiK6/bRwne974BxMtkYGJKhrnM8Tnz1N6fHjRg8QOjksI0eLT
	 k+jQ4o8Vpum+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5lumZ4h3HHiA; Wed, 21 Jun 2023 00:18:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 271C0417A1;
	Wed, 21 Jun 2023 00:18:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 271C0417A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD0941BF95D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 00:18:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 92C9960E3B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 00:18:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92C9960E3B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jr_Xaw87E1pa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 00:18:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95EA360F37
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95EA360F37
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 00:18:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357514223"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="357514223"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 17:17:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="858773695"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="858773695"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2023 17:17:42 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 17:17:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 17:17:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 17:17:41 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 17:17:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D+K8MRu3So7J7AFA9jMjJI6UcmR0hKzJv83WZiMVo6za3Nj9H2E8p/38LQ0ZBWCuI53CKkflYNR77jiByb3xSMrxeC4vzQjlwDySgpluOfpccJwq7e1ruILhuQUpeeHwFqv4qt5B+cuUWBaTpdpAxg7UQkcS4SDJEKJqZdCjeytiSa69xMywVG5EYDhCqAJG9L/vlxuGeO4nW9hqZktQnSQMUsP6F2w91tYWU2HEYhOC5sa9fJImGh5tYNWoUg7S3kEanF8EmocisGVMHkgvKlU8dEvfxW9GfVlkIS6Fik1rwdjrszjaxKXb6xZ26laOKOvaMhKeBUE/UQhXU3RtJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oKjFggRmr6wGKEqn2XKZTS2yyvcQIx1OO72ZstCcvX8=;
 b=lZb7QsEsxOj/HVyED5p7S7wdb/MR0IBZ23yC0tAXMimzRBAFVqqhU3Ec7gvRtOp7jq3hBPQsjHkPx6zmMrjjh2BvND7ZCh6+LpyDoBKzZqwMsv0LMesmyfEEdqvQVJ5Vul0gf3xmVP7soiWFrRMCn0JiGn7v63yweN5RD7WdeTSO3zREQ/wpUCJywSH3y9IEc6krrZEkKKVlcKDsYOvTH4QutKzOqPsUKBAbW2kU+wkDUooHvivv9Ve86ADjU/9ZZm/eQw1mUIgcCQyrYYSVyCGwimf1wSjpAJ4Sn1S1p2G+EaN0Ahy0mrZz5NwHq1UbsA60wNuUfgwYCZw2IDPAZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by SJ0PR11MB4781.namprd11.prod.outlook.com (2603:10b6:a03:2d8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Wed, 21 Jun
 2023 00:17:40 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e%4]) with mapi id 15.20.6500.036; Wed, 21 Jun 2023
 00:17:40 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Florian Kauer <florian.kauer@linutronix.de>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Tan Tee
 Min" <tee.min.tan@linux.intel.com>, "Gunasekaran, Aravindhan"
 <aravindhan.gunasekaran@intel.com>, "Chilakala, Mallikarjuna"
 <mallikarjuna.chilakala@intel.com>
Thread-Topic: [PATCH net v2 0/6] igc: Fix corner cases for TSN offload
Thread-Index: AQHZopYumKxF3D6ER0CT+ezDVm3HE6+UZkjQ
Date: Wed, 21 Jun 2023 00:17:40 +0000
Message-ID: <SJ1PR11MB6180E6EA9A7A3541F341FA9AB85DA@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230619100858.116286-1-florian.kauer@linutronix.de>
In-Reply-To: <20230619100858.116286-1-florian.kauer@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|SJ0PR11MB4781:EE_
x-ms-office365-filtering-correlation-id: 8cc58ea1-fd71-4150-494f-08db71ececc1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /NiuGAD/AI/Thxxix80BhE5dz6L7/cYZtw/sIOHmo1GVuwpvONJMLr1BJqaJUbCRRTnkedpjmhKiUvpaNjKiuSxAsv+ps+9+VAMOMtTl8DyoJvxzFyAoS1JcCxn9hve+O32gUCo3Am1hNGzCNidNGr+T5BY1XuujMeMqfjoGqOCRLZFf5iunPYgZ4nwceP0crJJ3XX9c6oC4nAZPW20wA8xJiwV9X8wrIrAsN5Z4Kk96QkzR7+r1FT584A/sTHbLmeMumpLCIUgBDUrGgWgqC2+ebaLMiwDwaYgWS4fffJn7SGnY/+j6eDURRf9ZxGS8YwuWiKwohOEDn/zYlSyRAPiMZxJ/2tf+8Vq3Uo11AnQeyerKvyFkvqfDjmZXIQtCLKN4p9kkRykhmWKI76y70bciJVA4jN92wWiJvwpw4bzO/pMM0m4Qxrs+cUKRXG9g797jUYo6QtP64hC43sSdjAd/tjIFnWs6zWTc9W6DzLHHbiDjV2d7RJY2gtWZdHvevqVJ3wHAbmbL0veIIek2M+ptkfSN4SUQ24efUX/mB3Pz1n2Zae4OGCTm7TqUT6YZWi3zZZByQu1ilzA6EhRB3KOUGoMBDpRS05EhlqJeWb4r2aOJMXVXIRsJnWdIbO5s6Ha8aKLin6UZ1K3K4Io7Vw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(136003)(396003)(346002)(366004)(451199021)(110136005)(478600001)(53546011)(26005)(9686003)(6506007)(186003)(86362001)(71200400001)(316002)(54906003)(38100700002)(82960400001)(83380400001)(122000001)(7696005)(64756008)(921005)(66446008)(66556008)(66476007)(4326008)(66946007)(6636002)(76116006)(41300700001)(7416002)(52536014)(5660300002)(8676002)(8936002)(38070700005)(2906002)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?o2kXuOgxhQ+jlecKJE/AfKfN9xNQuC7yujOsocstjMI7htZohVtI+ETUdbAH?=
 =?us-ascii?Q?5wzHap/jE0XYx/2gSBIVTPp+An164wRuDSVWtR7RFw5+Kr1tKwjzoOYCw3uo?=
 =?us-ascii?Q?wjvBAaI5I01t+lm/g/QsmuX5OL1lhrbjArJeZtHXih45Qz1gqk2ONMww84im?=
 =?us-ascii?Q?mYBQQxGsHkrHZmMo53qf4ufuEqLEuJsN2I3T/fPI4b0JiXnDMmAJ/57IXyRJ?=
 =?us-ascii?Q?7eMgF+d/J6UqQF/QK/N87G/Yxjh1MtV33ueBj5fyV2KU5VuNTQY2GFZBEblN?=
 =?us-ascii?Q?CfFSOHQdGKsK9ssG/zbFfdcwYXZE6hp0dAGbhGfEtnMkUVzwAjrmGMsNyC9w?=
 =?us-ascii?Q?yl7hAtTMz7iSuEttgbyMA6RwWF2ncAB02w3k+iR9RhAwJZZpvCGDYpoTPNFS?=
 =?us-ascii?Q?sumhB6cSxA+YUiQf6utC9sn1VVc7C/qtQmYGHphe7SsoiRvXXMtw5fiwvtOz?=
 =?us-ascii?Q?BK2ATfcm2N4fLAZI1IF6YoB8ulXZKbTix3R9eg1Gy9DZ4GlfLJ9ydZK/Ls4u?=
 =?us-ascii?Q?IiV39wH6KaL/KMXbVh+Dyexb4pi7b+0G7+IwgawlW5mRt2Qg6MmG6hg52MLb?=
 =?us-ascii?Q?XYLicuwDmCRvr62oAtJDrNX1H3Wgp14F+1xLpsnmN0i9otfdpUcXor6sOx+4?=
 =?us-ascii?Q?/Qlc8FmKcunhXBCFUsUog3PSvX/pmhvZpCcwUgq0745FK2rzs/UelBIIUlHM?=
 =?us-ascii?Q?JjTU0j4p0enj71JVbWMLe3VBT3SSpR1YucFLTvZSUuOXm505581gXrMRlQZx?=
 =?us-ascii?Q?vII3ZOmB7h7TRJ+Vz1Q/AC/ygBioNSNKAYleb0ipWmTseNqM9+CYLbFXSwTw?=
 =?us-ascii?Q?4oR2NRuF5iOIyrEzvKIFJaQeBPD9uUSwaqn1D9Y29kAybPraLDiAvR/KVs1T?=
 =?us-ascii?Q?5n82kNMM3jlZZs+EQBjbSzT49+WwPK45VUifBpxKQKkMqDoXGR9wqf0f4AN5?=
 =?us-ascii?Q?ZZnlBatGUHU2CTkBgLJIyCHFRse5itt1Smc9mu/aJGKuUwD7+gL6pmfjMcJ/?=
 =?us-ascii?Q?QxSA36ZL8IMwp7+wTAEeKMzR8Z8XwvDAOMbE/TdswozKabMQVVinCu3G8LcZ?=
 =?us-ascii?Q?2W1B+MgNChKFeu2P6bngWb8mcHRNUwB6iFxCWn81FnXDxfV4o8bWrQZmMoKZ?=
 =?us-ascii?Q?zuV2qKyRNWCqXVDggB6c50T1T55TVp6pSElLNbBpc7iZdPJi6yLz/bJp8/pJ?=
 =?us-ascii?Q?xTwqEh47quNWP+alAU8adHjMIg6CFtH47iprkUeVrCBeyYYNZj1bmbQxNHlf?=
 =?us-ascii?Q?x57eXDVLgaTvU/gzeO/kW4seELpZJxlDg168PXGwpRHK+9Xa0FyxbcjcPVI/?=
 =?us-ascii?Q?LlM9OnAZGcKsik8e3OOTHW4ZpXwxTnVG634vQRD2liWuobTp0JKdjJ/xO0nn?=
 =?us-ascii?Q?/7BaG+12WeEIoFhTj++O4qGpc4kdWjfpk6Xqj5z2PStKcGAaUZAjda70vN5T?=
 =?us-ascii?Q?1qeOXUJ8T6m5PdN0Nvzv1gClgEuGRiw5uf6Wb8pUQGUGCvRVDFr/fFXlS/u8?=
 =?us-ascii?Q?T81nHpin3qMylhq4WH0GuHjrmIuRal/iOFeDwf4hgy0axmfU3g2v9LXEYlYL?=
 =?us-ascii?Q?F4bMtg8b9CNgsrA0G6GSrX6Vz7Ho0vI/Dz1s3SiMJXPTMur/UY7oVaOMY+LG?=
 =?us-ascii?Q?ATKyc0rTEPJsE8Pe4ZmXdts=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cc58ea1-fd71-4150-494f-08db71ececc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 00:17:40.0761 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zw72D/q/0nHbb+jdeO+vvu4WBlNr3E0mAKqTmXtGTb4pGqgRISDXoX7AwGLxiATyEy6vzaBHZMCMqvngeJS83MsCImMoqlchpBpXjFxpyXofebbi5ewYVeiG4SB7nG5b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4781
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687306684; x=1718842684;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t/TwYr9S8Qp6JmtnxbvlfSIXlf4SrZFQWOR0SF8Ggjg=;
 b=H438pd9Nc1InmHH54aWO9O3IQqZJ6Xcz1k+XjlVOxUXsxA1dBkjskVhm
 +OHng2a0bAx/dSX/qywmwSswUGWB1US3uNQkXIJZwUGyJfPqEb6NF7g35
 u3MwJGI9PY5i5IhE+tBlzsm4GPHKQw/SyoGoHOLgy6RybAGwbLp7ETv08
 176ppVmXwNDNMLdLu02XFH+a4JLHbFHiKuI0wYQge5DcLycLFZFEAlBk6
 5L+1JBbhoI63wawjQOOUXkUyQeWtTawVNuEuyibXUqbQJxpBGIazxC1IL
 17ENj6setZqudalJdTfw7yL+bQGh17wJLWkKNV57nd9UlDl4Q0gpqiwDw
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H438pd9N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/6] igc: Fix corner cases for
 TSN offload
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Florian Kauer <florian.kauer@linutronix.de>
> Sent: Monday, 19 June, 2023 6:09 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Gomes, Vinicius
> <vinicius.gomes@intel.com>; David S . Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> Paolo Abeni <pabeni@redhat.com>; Tan Tee Min
> <tee.min.tan@linux.intel.com>; Zulkifli, Muhammad Husaini
> <muhammad.husaini.zulkifli@intel.com>; Gunasekaran, Aravindhan
> <aravindhan.gunasekaran@intel.com>; Chilakala, Mallikarjuna
> <mallikarjuna.chilakala@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; kurt@linutronix.de; florian.kauer@linutronix.de
> Subject: [PATCH net v2 0/6] igc: Fix corner cases for TSN offload
> 
> The igc driver supports several different offloading capabilities relevant in the
> TSN context. Recent patches in this area introduced regressions for certain
> corner cases that are fixed in this series.
> 
> Each of the patches (except the first one) addresses a different regression
> that can be separately reproduced. Still, they have overlapping code changes
> so they should not be separately applied.
> 
> Especially #4 and #6 address the same observation, but both need to be
> applied to avoid TX hang occurrences in the scenario described in the
> patches.
> 
> Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> 
> ---
> 
> v2: - Rebased onto net. #1-#2 needed adaptations, others unmodified.
>     - Extend #3 commit message that it only regards i225.
> 
> ---
> 
> Florian Kauer (6):
>   igc: Rename qbv_enable to taprio_offload_enable
>   igc: Do not enable taprio offload for invalid arguments
>   igc: Handle already enabled taprio offload for basetime 0
>   igc: No strict mode in pure launchtime/CBS offload
>   igc: Fix launchtime before start of cycle
>   igc: Fix inserting of empty frame for launchtime

Thanks!

Reviewed-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

> 
>  drivers/net/ethernet/intel/igc/igc.h      |  2 +-
>  drivers/net/ethernet/intel/igc/igc_main.c | 10 ++++-----
> drivers/net/ethernet/intel/igc/igc_tsn.c  | 26 ++++++++++++++++++++---
>  3 files changed, 29 insertions(+), 9 deletions(-)
> 
> --
> 2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
