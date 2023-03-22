Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 776876C4569
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 09:54:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8B9960F1A;
	Wed, 22 Mar 2023 08:54:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8B9960F1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679475262;
	bh=P8Kx6Sf0PiShinKWid191PAPehasQWRw2GeSq/ZhkRU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V/xhkEgxsGY/eagnSkI3KsmjY3YqvEYV61ppYnsuulv1JISiMS1+Hh5vGSC1fV1MC
	 VOe0R7R2UW8d2O/e827ypbeZMiGdxOd5rQIlcxkK8EoKNA/syRs+Q2ETIbNBpl5vJw
	 V6orfwD9+9RAj7uuaBJD4O/rjjFLJDnOwUXE61Z8JWCBT2uXS+E5wfN46ViO5X4vPl
	 Ynwqkq6QOzmqWXE3bI6CuYx4C9CevtOKSVdZS3wnX6YXslI6ZXNlauJPRt7XNUJjkG
	 q3ShUMbV0yDU7NVNd4PkWx5Jvi5cb2e8zLNXUFIo0zmuoIahNTNQIy58RKttIOU8mF
	 bDVS3f+/EqSkQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bg1I28HKC1W1; Wed, 22 Mar 2023 08:54:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 930D560E96;
	Wed, 22 Mar 2023 08:54:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 930D560E96
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC7CC1BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 08:54:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8858E4139E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 08:54:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8858E4139E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lPp6PFfqq0y5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 08:54:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 989C44137D
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 989C44137D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 08:54:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="323001809"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="323001809"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 01:54:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="805743190"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="805743190"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 22 Mar 2023 01:54:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 22 Mar 2023 01:54:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 22 Mar 2023 01:54:14 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 22 Mar 2023 01:54:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=akoGXAuFw7FCzZExCjsADfh4BW+qP4tbYPxlPJPSzolFk36qbEXq9ns8uChwjt0lVqW0d2CFlkZHmThMKpKIRQVwtPh3s4IpsSwesGkP1ahzDA4rpNYbfqm3ra2lwTjcrvSj3dfIMepE0/S/hqiks9aL87O7cVjVbhS3W/MguG1VZbeCBp0Yz0fzUxJRoVVLSwF6p2ilYiV3VW7X2/P/vr/2JfAmnkXAy9Wjg59FhX5Qmczm3FwcItMNpYHQPzHENrBI4+/FvO5z8emmUVZKstjMw07N48JOHSxdCg9CZOIuPcciM4gEg7mQAB0eeLMuV4jm1JrnQmwJmOI68QsMww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7WiJdTzjzj8pc4Bzs0P6dWTjemRuUgRbYGVQLQLx9p8=;
 b=B3PgM8imN5bxfiL5S0VpYR6QlQexoDzBbfNV+gRSAsZ8iH1gYTkvithPhAsknGjpNYMY1goEaGT+XEJhx1xRFLgsfyrXyoYnESwXj6YwQRF44c6RPR5WlCGzQRz1Jr4Fm6KnVbysgvVztAbvTHFh6nGIZQ4NCu9hLXJeYKNn6tfWC3GdkcmRMq2s+4xDeyg5VnLSCBjyHlZEDusOu08yCD1oULH4dc+OndeUfEKoRJTNTfSGQcwwjkf8gI4S/5JatO/nZ23pbILs38K9QtIKCzZtOYrTq4jDaXGiKnXiZZzD8SDcALcWoVKY+TQJ67tZ+5vDNB8UjidWMwA4xviB3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by CY8PR11MB7848.namprd11.prod.outlook.com (2603:10b6:930:6c::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Wed, 22 Mar
 2023 08:54:12 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958%6]) with mapi id 15.20.6178.037; Wed, 22 Mar 2023
 08:54:12 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] ice: add profile conflict check
 for AVF FDIR
Thread-Index: AQHZVhk5e6gSoUSpTE2tgEYxj7fBLq8GilDQ
Date: Wed, 22 Mar 2023 08:54:11 +0000
Message-ID: <BL0PR11MB3521A6DB063291EB798DF8238F869@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230314020315.4190488-1-junfeng.guo@intel.com>
In-Reply-To: <20230314020315.4190488-1-junfeng.guo@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|CY8PR11MB7848:EE_
x-ms-office365-filtering-correlation-id: 1681eaf5-dea3-4c3c-43db-08db2ab301a0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nGSEDWqrO9ZP3q/nqEYicrLTyi2+tQGZp9RzUIuE0g7udKJsF+6c0GK5oWjwS73KG3qNRjraHvCX7XTij69sL5aL8h1EhRgBmAEb7jAKuWNkDGshaI7V7gdv/8oa3OD1y6ZxeXhEi//7WBZNcDm5qDgBpjXya+t/urrwUcbfTej6mhCMDf8zuri2QVOwQHHnkJtgLFDow2QUJi/lGPgM7wutWtvmz6hJ4jTV7BLZYAM05z41V91a2QdvC5vJivH9jr9J3ehcSH59Mz5+kcSA/Ta99XRvgNW7gH1hZCYKkh4UDPO41xQ2oeePaZHj2BVKOs7ZFGBEZg9DeXSu1TEy2Cr6AoLvxbJeZUX0Y0qoMxn2EYt9CcvZlFF5p7RWAQkTZcWNsfTi2dfHY5N5JP7mYzKi8sda0OIo36OJ92gRWaydNFlloSkJoFaPFl2V1DmCTPvZRcHzaNX+7132JFRuBXtiabz86DQdCYBCwMK7ySRjKRq4krpIJotnznSLY9QLpZzzAXveXlSu28RhQHxE9wf31illJMxh9cwf92EMZz/PJcJj+iP/J4TAhiKbRFfQ36ItTLnTePYFNraNnqVsy9WY/9YFKCAAGj5owLOne9uvQITVRXA9EhOwd8qcDwt/QrPK0Sfvsum9uofBW0RElVS0JjPD2PW/eIiKknFu9ph2d7SRZhtkFSMTRWNKb6AvEV7ENcHFsfcswqRGBLWqeQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(136003)(366004)(39860400002)(376002)(451199018)(9686003)(82960400001)(38070700005)(53546011)(6506007)(26005)(186003)(71200400001)(7696005)(55016003)(38100700002)(52536014)(83380400001)(478600001)(2906002)(86362001)(122000001)(64756008)(33656002)(316002)(8676002)(66946007)(66476007)(41300700001)(8936002)(6916009)(5660300002)(66446008)(76116006)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LYxGatFDFC19f5XpFRT9Q3DqNGyLD5JC9nH1W8CnmR5+9dbV7G81foVUnTe4?=
 =?us-ascii?Q?hNWuvBYJgICN2FguTJZo7rvkzolRemtcLnU63eRVnliyWfECDxcnfPqcDbef?=
 =?us-ascii?Q?BVM7CQMkrBljXTh10zp8uWPF1pFekuR7Brb2+Fjy2B9kyZeOlruLtnLRFuv4?=
 =?us-ascii?Q?WKdKIUUbcDig7te69qO83scbzNFAysrJf/JBQ2/pgM1rhGUcosFk3WRHDNG4?=
 =?us-ascii?Q?rDIv8NAJtTZyAlEx57vN5sbMiSHNXUg8gFTxICuPOpPbC+qMxxt3TGDjUJjX?=
 =?us-ascii?Q?GbZTe0AodpvHsCyhxrhDgz8aCwQzS3B1roYcc6nnqscdIoUT9gd+50vt7pnp?=
 =?us-ascii?Q?38RGrT6JPkiZqNQ/acxP99cn/9uQQrNGEiHmuomzhnNmYeRvBkr49rFeqYQi?=
 =?us-ascii?Q?pTAfjJ7YWKXWR8ZgXOwwWBuTHUOSb96MZxD1j80ydRxhvZRHhwecRVz3OTbk?=
 =?us-ascii?Q?48s1EizYcSt6gmImQQs7mXhkfPZ9Q25VnN/Uqpw7TSykVdWzuOZuIbaRiifX?=
 =?us-ascii?Q?uzeBLtqscBY0zp33IHwk7if9YIWW+Yw3Hkjtr88dL9TW90BMYkzNp4NBgzxd?=
 =?us-ascii?Q?/Hrawt1qHdyxUQQTPx9JD0lYj8BFNNC5UyefTzy0B7zkgCAkoVFP9VHoOIaW?=
 =?us-ascii?Q?ZZ5UxPvAxnAEDplsW0ORPvN8/HNGKk9iQftMlswdmtmscpt5ME8/kxxpE7r8?=
 =?us-ascii?Q?+T5ysbI9LsRQ8O19r9kWnJQbTPwMvZ/5hmKdsXmi//ndHSNOb/lDDiLEICPx?=
 =?us-ascii?Q?brh2uJICxsKCe2PIlGyuLJ5O+r5pvvlcgAS40IGZVMylfQ2g1vIufBY9Aykg?=
 =?us-ascii?Q?B4yJ7D7iU4os50CwsScJPiwsSSx/Lj5yMzLJILedkKHKfNlAQUYCbEUHS9ac?=
 =?us-ascii?Q?9OVXZw5M3E6q3MCSxQKAXmA/+aE7QwqeMpuAqkFgcJqoWQSirdg2XWPSJ0hC?=
 =?us-ascii?Q?tIjN7rgKv1DLLN7Yt7jmeRM3XR1CQlIaDvKE1XPGEcsLuq8RGH377ebQxwcX?=
 =?us-ascii?Q?/PGWPSibyzdxukz//euuDYF8176r0cGrZqF0/bTYCPzn91WIYTRc9Gs3YCW9?=
 =?us-ascii?Q?ji2rOmr4gIJ7gNUXBzfewI5GR5M6ZEI7e7ftjjGaL4Dew0FXuc7VVWNlPukg?=
 =?us-ascii?Q?YKwV8YdPLSpae3u1rcYaKnFGts6Cg0ioTIe5/Mly0neoiFhP2R+8SUsASBRH?=
 =?us-ascii?Q?5HVtFdryH92cfQyFVo24rbU6f8+1cPRQ9yoPaxDD+nF05wAe4oD0kIOLn4/o?=
 =?us-ascii?Q?eqY56YYManCB7oBZOjzm7tAaGUmLwICdR8vh+FV0bQNF7zmjwgHia/eKWJG6?=
 =?us-ascii?Q?iZuml9CHp1dhMvq8OVNpmJKjgf8xrFUAof0qXw31bJjtMUXDNEIIGBnK2oc4?=
 =?us-ascii?Q?6PEP4QXoBRswiQgXz11IvjJmxIvVXUC+th7lKfa2wAsG84oMOXTULk6PRjvI?=
 =?us-ascii?Q?/gZ3luI+tQx33bd1NzDpv2YcEYzFs4p3iNsszcNHr/7ePqCnDMXIIM2mWq9X?=
 =?us-ascii?Q?iUsjrmX4eFaRRkFsj/d+AWiuu7xtF7D9DVAOgpbbA+0FZd/LH6FKp73lSId6?=
 =?us-ascii?Q?v3VSJNMMRpb1FjjPUrEvcJr9A9b4eMeWbJ9V4Ui33iNyik7g1GRzR9ZkEH+s?=
 =?us-ascii?Q?2Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1681eaf5-dea3-4c3c-43db-08db2ab301a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2023 08:54:11.7693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t3ibKMsYvU72iiFG4joQscHoLJj7KAT4XI7Cd2H1TN5nbZr766a5OsqQB+sy4jQ/azZe3CVUgJwjbxLn0pTl2ITmfJnJSa5leXGd+fgQ/iA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7848
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679475255; x=1711011255;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PKtToANva1dDmKX/m95SjDNHau61s6psZEBG5DcDVl4=;
 b=DToT79IJrOTuKFY8a/jgJDfQQglwUxe+Ln6sc8IZu0NfyeQw1SbA3MQ+
 N4O2/Pgn3sZXQ7PVfwpADOXBES9CPDlnh5h7NopqdNe5ugQF9mDgpgRDy
 Ao+8qMNtIP7DihAO3SkM3sKZA/NLu5rGQ/3YBTy+o0fInCR2XtVAgsmJq
 4BApsYas1OBhxd6yPbTl17rKQTT3LBGABrDH4SUnHHwYThM/JHnsWBaTu
 Df/BD7u1Pro+DKgCRcOsLo/8U6lPCIEsH0hgXhtoYT8/lRLsIKUzkFgFR
 dbk9h/7q11kad81v4jupNG4GR6AqfVO8dtHe9WR4oAVVYzNiuAAwhG7x1
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DToT79IJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: add profile conflict
 check for AVF FDIR
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
> Junfeng Guo
> Sent: wtorek, 14 marca 2023 03:03
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v3] ice: add profile conflict check for
> AVF FDIR
> 
> Add profile conflict check while adding some FDIR rules to aviod unexpected
> flow behavior, rules may have conflict including:
>         IPv4 <---> {IPv4_UDP, IPv4_TCP, IPv4_SCTP}
>         IPv6 <---> {IPv6_UDP, IPv6_TCP, IPv6_SCTP}
> 
> For example, when we create an FDIR rule for IPv4, this rule will work on
> packets including IPv4, IPv4_UDP, IPv4_TCP and IPv4_SCTP. But if we then
> create an FDIR rule for IPv4_UDP and then destroy it, the first FDIR rule for
> IPv4 cannot work on pkt IPv4_UDP then.
> 
> To prevent this unexpected behavior, we add restriction in software when
> creating FDIR rules by adding necessary profile conflict check.
> 
> Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> ---
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index e6ef6b303222..5fd75e75772e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>




_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
