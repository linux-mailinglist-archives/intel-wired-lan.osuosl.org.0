Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C97589D1C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Aug 2022 15:53:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57D6960E9D;
	Thu,  4 Aug 2022 13:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57D6960E9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659621219;
	bh=phfTc86bbervebLSZrEJ/wWVtlakvU0chkASnBu+VGw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V/pdl4VgBT3nE+Rvmh7NVI5XjGhVpy3s3MNnfvrrxz/3dlJTvfsxxQBfJHcova6LL
	 FMblb3pM5qt3ToWiy+057tS47zSmDmNT9kO5Co4OtvJVFSwIFCN/stTGHny2P7JDYA
	 HwWE7YczgNgnm7AkJe7mqRYd+ZkXswZZLv2GALi6Uq5Q3DzdAgP5BOo8Jo1E2+nk4m
	 w9Syu8t81KOsl+N71hlGIml9LPlM87+Pe/MoKJJ6c1mV8b9qfF9D/VWLFMe63bb1u8
	 DiwPnpR9bqhqosI3Fu60gLJ2+nQc4XXGscDI9qojxrRGhiZpkxiL9O+ia7wTBys288
	 VUb4Vy/opeA7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fbfuE09LtTub; Thu,  4 Aug 2022 13:53:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9520360D50;
	Thu,  4 Aug 2022 13:53:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9520360D50
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67C6D1BF421
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 13:53:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 40E9C60D50
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 13:53:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40E9C60D50
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zkTKadiAY27h for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Aug 2022 13:53:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DC9D60ACD
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2DC9D60ACD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 13:53:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="291156336"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="291156336"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 06:53:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="631591073"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 04 Aug 2022 06:53:20 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 06:53:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 4 Aug 2022 06:53:19 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 4 Aug 2022 06:53:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NFxqchvj0eEpgkpYYMUknVdVv8I+iopJb1Jrv/4GLhy24vRuCRJDcvEYjkA7C49p6i4RTR3LzBid1ZJwSoDaAfPLEQHXs1jR8f/XWSSNloeVZiKwJ4p1/MVXy1afn3j6PKA8/ZGyNtm2/c3gaQTHnFgsRt3GCipRMkKYuf90MsUXsS6zdgmdTfzZ9N3QsLKsi1f9fmHaSF1JGdSvxUqMXDxpTMhZngfkZ5NFGlwoiKzXElYP/2qre6/8HtoU9dsH1WrcjGFIt39YBLKCNmV/QYXG+JmWwBb6gMlZSlmtT2ZFTCynL+5cX3x9k8U1nYvYmIoWmAeXoJRAG0m+lClItA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XFapMqsoEI/+3lQXQbzwh9bI5RbIW/K0En0e6s1su5Q=;
 b=iNpr1Wnkh6BbGHuk/w34lnRkpQUVIgWcQO2TQ6jpuBzM10I+o+rM3AjZAHUteiQEPeH35oVKgnvQSbqDBXk3y1FS9TVjI2UFPYqcyreOY40zY9YF6hx3uaRwItYEUGxOR5hdhAupIsyrxsu+3uAd7h+oGwi1VHxgpF1s2Lw7njIbt8SJxBA5Qrr4AA7dY1VJgXnlOH91VG+UcbSL8+yYU2wx6vWrQFCUkeyc6V3cXC+1WMNMz70so+32ZXb9zB3sjPvB8V+iVFfAUCc+PkgfjEQ95WOCs7J7lQ83lGE8kTw4edXF+MCEvlzpWcxS41fyc8aBz7pets7ZSYXyDnoekA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW5PR11MB5930.namprd11.prod.outlook.com (2603:10b6:303:1a1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Thu, 4 Aug
 2022 13:53:13 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5504.014; Thu, 4 Aug 2022
 13:53:13 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: Don't call kmap() on page
 allocated with GFP_ATOMIC
Thread-Index: AQHYkG4SLXloggG0eEmmUhhkpGwfTa2e8hVA
Date: Thu, 4 Aug 2022 13:53:13 +0000
Message-ID: <BYAPR11MB336742A69C474B31F692448CFC9F9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220704140129.6463-1-fmdefrancesco@gmail.com>
In-Reply-To: <20220704140129.6463-1-fmdefrancesco@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7461abda-6a70-4f38-5ca8-08da7620ac8c
x-ms-traffictypediagnostic: MW5PR11MB5930:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8q+zBHl2okg0wqJANo1NzcbhmIZgsz/Nku0/QoCUpDAoBH1133YLRZXh2KPLu8B571omo1XBusIqGCbzY4Ip1Vb+2/gAybOzg/6zi9dKTOOHMB/Fvbt4UWlp82gDoWSvLN6WOLLR5jJi8xH2YcSVsSbfAjSS3/oftYZmw38/KK4ZWkmhbDTVWc7RaYfc2dNjQvuC0L/OHfTI8NqPulAPpnSe4yvBljNNnYVPA8ogXWrxMnt+mnuE492Dr8MXRSrWcLOoLBPC626pvOwdFqlQo7iJPwLO2tyfBXjws6O4jz5OVWmpvtYNmrnp8Hp0XsXX3FNe7iNzdZUoDMjv3m7ZdsyPfkhsedHY93rvcBffI1d12R4adrD+dN7ntXGSCs2KKzRnWekvtmSLdo4DayAotLlcGz987y8Cv4hw8NQZILWayIMZQlld/7NeIR9QlzQwV+lSUWxq6n6zBmK+GaQ04Dw2omB42Al1UbhdxLg6pabxMhTTJDQ00gIu08q0Pe5S/h/sEjKEqfMQGH9uyV841J+IeXujQNfBLfkKZgU/3SQET0UTKfEvtsdBZApSKhyMMSDFudbaCX3nnK8MY8AOYcziJ7YvnuNXy5p08EMiy4Dp1UuQKgmR+H1oFQ/NOhQ5xmKfxDQqe0tkxNi1C2FgJGGbUNT0w/DxOcsTNUHb2SaWGBIEAhWjUT81VJ2Laj2vM+PNl2lfr5p31XcgDLhrQdRTmd6zeejZGlUlrcxuvx2ORdr46gaVuaWIs0uFcmRYp86UECjKtWdTH2EakJ/Toq31c38NB4dY7WBmnRhZyJO9ucUGNaOZBUl6CTLBvY74mKHNvSZiTQO9ROLXZDHGDw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(346002)(396003)(39860400002)(136003)(376002)(52536014)(7416002)(5660300002)(2906002)(66556008)(66946007)(66476007)(76116006)(64756008)(4326008)(8676002)(66446008)(316002)(478600001)(71200400001)(110136005)(55016003)(8936002)(7696005)(53546011)(26005)(9686003)(6506007)(186003)(33656002)(107886003)(83380400001)(38070700005)(921005)(82960400001)(38100700002)(122000001)(86362001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hrA5VFyGsg0kS2Yf4dp5zmwBpbzEeRpiAc0QUHvjkvW7Y8V9K6VZDyiK+VRJ?=
 =?us-ascii?Q?CdJd+QLU/vxoBYspisD6k7FpeGFQB7HBZQDzePyOi+RB2opXwDbFhws4Ll4X?=
 =?us-ascii?Q?ip5YAYpE4vs86+jOM5Uv2kvMoRwYwVEgH0nEWnaK7ein9Zi00/NyHzCVnLBW?=
 =?us-ascii?Q?OswWw23pM+7XmI20r8qSXrv0G91XGQlQ1ZIDzQyN9Y+y4apjq+cwF/+RlvUD?=
 =?us-ascii?Q?7boT6uRJp3P5ek389kg7MseUYA9i9lVeY8bAR7H5znTp+wf4Y1g7nFdcQV0W?=
 =?us-ascii?Q?HhqELPhyWoUZg7q0EspahF56FWTXavhEFp82f3K466mC66p6Zve3wJdPARYu?=
 =?us-ascii?Q?nfR0qcLkSgunU/R6eb/bPRwzmlyT9NGoZ3Jnx0hN7pg5ut2gAaVfzXHDFtSs?=
 =?us-ascii?Q?szTj6Xv6iyQTaa/KtRhabotkna+X47ws61QZNXjXyae6LP05Yky+SP+TtbZM?=
 =?us-ascii?Q?+XCaF+vNqg/o/met19yfXY505l3dORYy3nOmZ8qTKh3VtjJSsQPrNxag1E+v?=
 =?us-ascii?Q?BpewD3qqKN2GWk89zxbkO2ZAyx2dBWZ11oAkXYrMLnMT2Ly5+fklPDViC+KO?=
 =?us-ascii?Q?1CXeaSN6VcHIM1YBcPE8Fp78bK3HXXCI4QA7TK1y5wGlU+PIQc2K/keh2mef?=
 =?us-ascii?Q?4OzW99rzrUxpVUzTQfODX1nRv9GeMKhFaueGd4RBHcD9WsKFFiLbF9ihTyBb?=
 =?us-ascii?Q?wqy+Mm7fOTEARX3cKA4cp2LN78Dj8Iu4uXxAZMsycqpo/HAg8ogcLZF46g+i?=
 =?us-ascii?Q?48nXANlvA0Z+m72J0YD//6qzDmXnfm1YH3Svh5mLfhGwqubGD+bxgGFgR/vP?=
 =?us-ascii?Q?Up/G6VWlP8n22riOa9eoP9LfZvpWbhigPJZw629x56z+7xhnvTR8f2SD5CAH?=
 =?us-ascii?Q?2XbG/eo38XDOhUPvElDBE/yaR2wVaZRuQFxePUJU3Lz3OOgMHL4PjW86Inm4?=
 =?us-ascii?Q?WX/QZsqKRR7mUErbXa2avEn6oEYMNDQJG/H3VNq+wsBTaYmVcUkhRLjE7THK?=
 =?us-ascii?Q?AdmPEZV0YmqhfqBEkVf9mhVgnkaTrkjn5mK9rSuAUibVax3/1F8jerXSN8O5?=
 =?us-ascii?Q?4NwPBq890BwUMtN5vGNXuLqUKI1zIfqq2Re1ZkaPME42bgXVuJF2b/vMrms+?=
 =?us-ascii?Q?iNMRH94a/RirOtmP/WIkeWQoH8/02ofY0SYVIjH4cDZxlLWBB/FLIbwGV/h+?=
 =?us-ascii?Q?+k5kt7ZiRK4Aos1wcpmMlqpwTU79nhDJPXar8GQ2UseTMCPyIDwtOIbL2J42?=
 =?us-ascii?Q?KlL4WyYHXNzj8hTvhXO4ykAUjzKNS4GKo1Ie7XR/528yOZOBEH/mdGrXk4VT?=
 =?us-ascii?Q?6F/A5pRyMq+G0N37/S1YDckIwJHirKP5NnzqT1t2fRzY7wGiVHNCExNy0mdN?=
 =?us-ascii?Q?v07ZLAj3pb599Xg/qQkrBq/cYnc6BwP2OlM5SmAe0T7Itg4227tA4IzOFu5o?=
 =?us-ascii?Q?5tfJg2HD9iTbAunSVUC79MYYpPHws/rNCzONkJdMlZKv/bJIwQBYvRh+6G87?=
 =?us-ascii?Q?rXiij/c80z3HLUDDG2dXhPbrHKD6zKtE/sL8z70YQ6F4UIIRBHwpna7BboRj?=
 =?us-ascii?Q?GZv9paOnt8z1jx41ydEPOpMHZs7yH+Ji5omf4SAt?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7461abda-6a70-4f38-5ca8-08da7620ac8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2022 13:53:13.1944 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OG2gj0omXZJ97e9HcTse4RF7Q1LNigYN2C+QI5S1hqFaseht39VZoegt4TTNe40r9ansRXrct3bDWIzVbb8evw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5930
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659621211; x=1691157211;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6dQDLqDonNgraTufh1sZYXegtTjCcI5X1eh+5Ny5YPM=;
 b=gWbDlLlh5omcuCodpQ8H39QheZ1nmVfcfT4LyhVyStsdDwd0knDNyyz+
 Vka7W7fvrjyWN+w8naZf5uhPCQYM3+KnpdBk43CAJh9BnHx5yO5zfNd70
 mjR/pi5+0e/SA7RcEEQE/GVwaQnFL08pEj0VGyOYMFAcWcA8YZZNO94XH
 NNDWFpgVX7FyIC7u40TYS5vR2RZ6ECZ9uDJuiQmMReDP8HlU7YzM+uXmN
 Cc9FrGxh/vIRmRzC14Mh0d2XqdKuxqywNyfINNoI1FHkybr7iG6fa96/I
 hmEDG0Qjz3j1i9ubfnw0rerUMMnfNGPWPrf0I3pogp+Msti5udDK+1+Ld
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gWbDlLlh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Don't call kmap() on page
 allocated with GFP_ATOMIC
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
Cc: "Weiny, Ira" <ira.weiny@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Fabio M. De Francesco
> Sent: Monday, July 4, 2022 7:31 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>;
> Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> Paolo Abeni <pabeni@redhat.com>; Alexei Starovoitov <ast@kernel.org>;
> Daniel Borkmann <daniel@iogearbox.net>; Jesper Dangaard Brouer
> <hawk@kernel.org>; John Fastabend <john.fastabend@gmail.com>; intel-
> wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; bpf@vger.kernel.org
> Cc: Weiny, Ira <ira.weiny@intel.com>; Fabio M. De Francesco
> <fmdefrancesco@gmail.com>
> Subject: [Intel-wired-lan] [PATCH] ixgbe: Don't call kmap() on page allocated
> with GFP_ATOMIC
> 
> Pages allocated with GFP_ATOMIC cannot come from Highmem. This is why
> there is no need to call kmap() on them.
> 
> Therefore, don't call kmap() on rx_buffer->page() and instead use a plain
> page_address() to get the kernel address.
> 
> Suggested-by: Ira Weiny <ira.weiny@intel.com>
> Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
