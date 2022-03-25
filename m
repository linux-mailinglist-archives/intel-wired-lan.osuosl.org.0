Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9DB4E711C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Mar 2022 11:25:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EDEC54038B;
	Fri, 25 Mar 2022 10:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mo9cw8i3Y4cb; Fri, 25 Mar 2022 10:25:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A16F74035D;
	Fri, 25 Mar 2022 10:25:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EED121BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 10:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA5CF60B73
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 10:25:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gEdbOfinhZsB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Mar 2022 10:25:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1EE2260AE8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 10:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648203919; x=1679739919;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JZJVcEZ79mO/pHx9XZ/BwFTxUdeECseJrgY6aqboPkI=;
 b=lt2Qht/5kK++7X5ytZhWi1JTlJCkY8pXl/dlN06dT/CTY6+pL18HLRoc
 WouFFAXMGuY/KrCocvvNBWmyhSlI86EMMfdt4nIr5u3QTv5/QyYJNoKjN
 lR07QGMtf13vodwnm7hFYMW0tZC1qCJA/ZsItIK0Q+gP0FxB2qRhi3OKj
 o4Vz3iBb2TkjmZLolDrayeSrvh+0tIvoYSEXNJK6ZA6k+ZGUzwcCW+Eva
 Tgm+dwan/nS6brLN3dGjL7nYxN6/IvsEopW0Lj4LXnom9ZO7bWcEtl8lh
 hNN7GljnxnU40FSAh+l5rEpURyJt+3lfQyGAQzKTRRvWfOz40X8IFZJcM Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="321799764"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="321799764"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:25:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="602009616"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 25 Mar 2022 03:25:17 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 25 Mar 2022 03:25:17 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 25 Mar 2022 03:25:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 25 Mar 2022 03:25:16 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Fri, 25 Mar 2022 03:25:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cxLXM7AGDnj1cSYUkh0Y1fdY0uhJCjH7vFJMrDfWYOUKEn+gB9OvjfefducEsjV553Pc7qgCwNKI4Gw0ih3ItP9FVM+7imBlxkMHHIcSzoUENXTwkJ2X0OA8kMmQ7bsZg0hXG9ZR6nYISGEsNWx6WugqEn4Xfe8L9acMjsjGwSGsNa1uYfnFNlDWZOoaFG642ahm0bczao0WgLcE0HLoZAesWEZPxr4Pnzb1VlKUAd09G+rvGfNmPQkAbeoV0qFGsCFbGmKIuB/FXb82fYt48+MoXpB6dY8bP3VpbF7b4MhDmpQrwbxOxwc8VUj++jMIkGERzkmu04QNaumXFUoW6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JZJVcEZ79mO/pHx9XZ/BwFTxUdeECseJrgY6aqboPkI=;
 b=dCj6khXMF7UTWXtYuBP5ectEOFeLGFzJCSDmQo64bJGaxuM2ZPi4yAg4wqPa6VZjqfVjcR1J9q0FZEii2MrYmhyGB5pn3caF7heQnj7rNiLVrFoPV+oZ2si7Ix8FJTBO0f9hYeDimU+49G0QGiU0r8i+Kn1728kzIEXmaSkJPG/6EgU5tRrJzQKpvah7Gv+111LOCXuvfuZ/jsyfMiNw8XCqB8FJTo0iHDe7PGlON/LL53WZSoC60mrzMbRxJBztLmI0Bw1AJUWOnkcELK8BiKXn5WSHBTkdh77Nm/0T1FQiEkfWvTf74o1wSUZDKrTkYDas8xL7BeQttFh89/JqBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.18; Fri, 25 Mar
 2022 10:25:14 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::55b3:8a73:16bc:77df]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::55b3:8a73:16bc:77df%7]) with mapi id 15.20.5102.019; Fri, 25 Mar 2022
 10:25:14 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 net-next 3/5] ice: switch: use a
 struct to pass packet template params
Thread-Index: AQHYPRMUN58mm3nS/UO8KTY70xoBo6zP6viQ
Date: Fri, 25 Mar 2022 10:25:14 +0000
Message-ID: <MW3PR11MB45541ECF3B3EE4674FE6EDA09C1A9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220321105954.843154-1-alexandr.lobakin@intel.com>
 <20220321105954.843154-4-alexandr.lobakin@intel.com>
In-Reply-To: <20220321105954.843154-4-alexandr.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 05df6069-349a-414b-1529-08da0e49c036
x-ms-traffictypediagnostic: CY4PR11MB1624:EE_
x-microsoft-antispam-prvs: <CY4PR11MB162401564C49A5A5408CFF8D9C1A9@CY4PR11MB1624.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WU0tAGN8ZhvBiY/5UsJ/sJOvkOMZQLH7MRUKdN9BRH2y38f1MArvBN1HtLTYItYnhxFb5xxY0Kz9zr3R7lRhUcQJBsLFJ5m7pxM/IX0GgL0MNnP0JdH/VS/33uOoz4NqX4so6eQ8taw3KamEjJaNfmekg9zuxKBTIOKdHo7jgwZ+X1GmSb1BM0lZ44lIX3e7FPhC6lYVUaWPPnPDSWXBGOWR+o72zk117LDWsnDpWO4jpQ4AQFcg8IsDELBoaQf+HDv3duuymbI/0meLSo0Eh3QOzhLDimhdOd49ugJSNyeyhDSj8FJD/kA6g95ZAOBLKRsIpWQt4QyTdPsP+bE5OkG04stD8gslLZgh/8XnEM3ybC8OSOsBZZNCufxBgzqKfYovjoUJVot+WWCB801dnifpwOWmY+oXHgzUxCv91RO9YrFEIoH4YTpS1XNuufJhNR8tuOemG/VL+bTjZDsLlX/i4fjotB4IbRsu7BMSXzz6jxCqnpdjbsYPeeeYTuMEHHAFL/Bh/Eqviv8Z7Zv6P3VibpEBlATAnV0/b0/oeqnAM3HqoFet7WhYayZPMhQEKvZwz8r6WC6dtqG1s3mkllv7tmXRbMac4uyjX44B1GabVx4OzGobu5g3WtVRvmuK+mb2rjEC03gfbFPYGxOIxoHiwOZ3dACHSqMH4MGAtL2i82FHY2yzYGUkvCZOISNW13yjBl3riUZtUnrC5FNViQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(76116006)(66946007)(83380400001)(66556008)(38070700005)(71200400001)(64756008)(4326008)(8676002)(66476007)(86362001)(66446008)(110136005)(33656002)(55016003)(54906003)(316002)(52536014)(508600001)(5660300002)(8936002)(38100700002)(82960400001)(122000001)(2906002)(26005)(186003)(7696005)(9686003)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WDGrIT0WsvS16XuTquTOSTyLvSfON5n5bjEqItnC5N3jIAl2an0hfriIlieC?=
 =?us-ascii?Q?Ye9tf6rLDbctec7Qh7EvD4p+KZtTWB3m3lO75U6xcfWGYnoajMdDLimtLfBv?=
 =?us-ascii?Q?oWHJeDD529t8AnBUPleFMHDMiXScR498vXZnxx2YvULtsaB1nBRNi6FMEpJ8?=
 =?us-ascii?Q?f5nttv24lMtTtsLkHSS56/0wrEnVXuA3UW6dUYB7B0PTtChldcLq9dW6IlTZ?=
 =?us-ascii?Q?PrRtxxj1tbT5jY+/fOt6ehAD6arT1nqD+Sncxs44Js+za8Hwe3QXOhm3EqWO?=
 =?us-ascii?Q?MjRbn5SRY0VTi/UbKYucwqyzqvuuUMM+G2ONPHl2bJKpnJNEARf8G5H2zdbJ?=
 =?us-ascii?Q?cAwUVSPeNTdpI+mTWD5N4aHSMkWAYTAgbznFneKkZk5LkIPhAgseE7b9rneH?=
 =?us-ascii?Q?YRgYHpTBJ7U/6ixXTWdZ7iwG8soRPu5NKtbVXYRdeBgkwYRcHPCbcVkkkiVZ?=
 =?us-ascii?Q?WSKtYQfZfprnoAcDp9RjL9KhwPALcA6L/Cl12O36FkMyzXIeMJcsj2WWTPBX?=
 =?us-ascii?Q?SCAMYWAjWvm6vAlIUdRD8OvSx0QK/v5a44M4N/7IUAxLwbGf9AMuz8slZWQu?=
 =?us-ascii?Q?piAOKlHi3g/kbAFHqxdIKpy6B0t93K7jD+0a60DzEW5pX7Wrt9Eo6CFU6YGQ?=
 =?us-ascii?Q?ltFZqmeFHW2x88ncQBDHL3xTWtOziulRveb0ZMdgSeVe0Tnn67pTHfW8xQL4?=
 =?us-ascii?Q?knfTHXBaj8js/yl1jn7f7rcRdSCgJXDPDG1Ef5YnvBq0QVeYD1L4g9FdOdB1?=
 =?us-ascii?Q?x5a/504IaP14iC43qodK5AifYP5S9mCq/O9LomXr1my5OINhNToVDcINBKE5?=
 =?us-ascii?Q?QgkD09EBsXdrsBto85V0GZHoPdFfOBFNwyHdepRudbhu3oGgmLXlxBTLIwdA?=
 =?us-ascii?Q?a6CIZOSjmXfOSmRrSKUlomknzivrMS+t6GVzut57dfxBpLtx/AGsJEBPvbxf?=
 =?us-ascii?Q?jbBJDr2pmu+EyGPATK0hLv+1C4GDdEFHH+DfnNBtX2cc9I9nDS5C9xhnN3lZ?=
 =?us-ascii?Q?nLEJ54AZLeMBQcTWONy0ddNjJ2lK/0RgEb61VDunjGIkshnp+MYqUX/l6mq+?=
 =?us-ascii?Q?UgXvUarFL/8gy9fIYOicOzMamP9ubk44Yh6pU1eYDj013UimvECPnzUxSWgc?=
 =?us-ascii?Q?j30aRnXzlScf3o4LbjBQgbjG24FOuUptYWoaM1FRK4+LTTbqG1Una1G7igYS?=
 =?us-ascii?Q?8VedtnUrO7A7d+FT40PAzSFcmi0+RCNfAQ3M+nZT6vK84fRhozX1fTptGgEK?=
 =?us-ascii?Q?cbt13zQhWDCSAlB1c5DIrIQ+sbfHRRLpGcjhBC4qZaboAowVGPrkKCwaGL8X?=
 =?us-ascii?Q?VFojzB24X388uYtZ6OKEf1WFNiVrs67sBYYtyfas9XZh3TW6b1skG25tv2bj?=
 =?us-ascii?Q?UOFvNOWF6UIfZfkp+LUu45YGMA8PxLjboFpmDPs5laQSiAQ9nVcnt7m/vYMt?=
 =?us-ascii?Q?MsA3dTKS0ktpe9j01XNsR2P2QVV8AL0v6saPBLWHLPxikuF8cOwZvRmC+P2C?=
 =?us-ascii?Q?jnTZRiZe5pRQ5m0wKSbYjXBSfRquBA2IGRlWpPajhrVfhTTF+KMMg0N0pHD5?=
 =?us-ascii?Q?GU/1iB85ctWjLrecTSbufqEnFEO2gXeQ2y/FbTv0Cb4zKZW/sMWvDyL60KEx?=
 =?us-ascii?Q?BufHIx5E12OZJvzzwlw6tnwxzdIJxuGMES4BJrwJf6qre2u3sTL7C5Qbfo8r?=
 =?us-ascii?Q?urMCGkqieuC1V0yjfC45VW/ZBulusSFox2frgfv3iZeuO72tXATyC2i5jqEZ?=
 =?us-ascii?Q?UOyqJOwWnAF6ZIyPkCl+Wc0Wel8tpf0=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05df6069-349a-414b-1529-08da0e49c036
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2022 10:25:14.5736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uIm6zdTqT7rBjnq9P4B4arGZosvs6pD/ad1/iyG4Te4KS9kQUm6TqQva+H8GYhqMU80OqzqgPvl9ZPyJbYg8lUrJD96zRskH0W4/5GzsMfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1624
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 3/5] ice: switch: use a
 struct to pass packet template params
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
Cc: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Alexander Lobakin
>Sent: Monday, March 21, 2022 4:30 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Szapar-Mudlaw, Martyna <martyna.szapar-mudlaw@intel.com>;
>netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Jakub Kicinski
><kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller
><davem@davemloft.net>
>Subject: [Intel-wired-lan] [PATCH v4 net-next 3/5] ice: switch: use a struct to
>pass packet template params
>
>ice_find_dummy_packet() contains a lot of boilerplate code and a nice room
>for copy-paste mistakes.
>Instead of passing 3 separate pointers back and forth to get packet template
>(dummy) params, directly return a structure containing them. Then, use a
>macro to compose compound literals and avoid code duplication on return
>path.
>Now, dummy packet type/name is needed only once to return a full correct
>triple pkt-pkt_len-offsets, and those are all one-liners.
>dummy_ipv4_gtpu_ipv4_packet_offsets is just moved around and renamed
>(as well as dummy_ipv6_gtp_packet_offsets) with no function changes.
>
>Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
>Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>Tested-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_switch.c | 268 +++++++-------------
> 1 file changed, 94 insertions(+), 174 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
