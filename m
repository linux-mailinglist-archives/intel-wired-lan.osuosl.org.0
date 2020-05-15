Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C8D1D5A2A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 21:41:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E5D6D2ECD1;
	Fri, 15 May 2020 19:41:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RtcHeEnHJZoP; Fri, 15 May 2020 19:41:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AB9302ECFA;
	Fri, 15 May 2020 19:41:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 203311BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:41:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 180382ECF6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:41:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vJ35YpGI0Gub for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 19:41:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 673A62ECD1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:41:08 +0000 (UTC)
IronPort-SDR: LG18DhQ5WUs8wD18/WalHmF79HBBjfQEnWBQvzxa/HgxwvEiF/OQ21PbYDEaPSVv8fx7YC2QKI
 qq0kLBiCXn6Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:41:08 -0700
IronPort-SDR: 6ZSX3ea7oCEnPOqnO82Ie8XyOFsP5Vc4P3S8nTtAsXF2wp5E0rPChIdQScCvjn1Dahk9fr/NxY
 gNAGepwOb2ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="372783120"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga001.fm.intel.com with ESMTP; 15 May 2020 12:41:07 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:41:07 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX160.amr.corp.intel.com (10.22.226.43) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:41:07 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.59) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 15 May 2020 12:41:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bSZB9Qgo6HXQi/scsV10AaTAUUr2idhaGfiILGvtI0MwFWoiMmGAWuWh+RX4NP3aMlJbVLqferV4SJ0txuqcHUQW/VVEy30FJ87i096+1bVNdvY69youRDMFZRD6hf51iS9r1VEqQWdh2hNOIWNPDaOK2Y1hrt8kYRn4UL0Jl7Fg24qVElGNZxEMeECypPQeS0s2YkNMTieyxOASjVcz2YjYxsOkuUV64J8ke4q/vyg3iLGfOYf1Q9C68s2bx128k/6n5KGbclWHGWywHdOrmzYnumOzMJl7lU3fZI7wVaX9plryF1a+aanEQbfmUqgK5ERrhXVDPX5XBrlvai30JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4JAbG0axGWt+6Ft9rB1XsqTqkDstmbP9/xvzhIE4qcE=;
 b=YL8raexbd5hrbFl8rST9d4mtoTOP9ZIGLVVPiNJSpWaNii+QFXW1gro2qFdzKgEIiZEqYYAU6JZfgseETO69a/Zg1JhEVoXt6nGXaCBgjYP6ilhjvjTOJH0qtTCTFQ6ouGUeT4CClJOOq70CUrcQQmuSmC/Bsy/+ModXfqHhbSUsmCIY1sQRzGNP2xLVVVzkPVxBe1RdPzPgbh/AOiHGIn6hFK2LHkkg1Waage31JNqsPhxHFcRkL6jKxJCwAmr/pkXyFK9RuWywSVCHaBEwLPxwJTYwjIQg1jkriKPgvRACtRmc8qGjf1V8tFOyppSKeax18nZtSAETIxNo8Yxbwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4JAbG0axGWt+6Ft9rB1XsqTqkDstmbP9/xvzhIE4qcE=;
 b=bdFPZIV0WXpScKMO4eXusP4Drhg83yMoLIiVTlIrt1GdbFArA0drMCdT6qhDryW+xM4MQiM4aFHl3MaSCzaa+JKyjk64ZrIYnIraQH5yxd8i28VNDtqq1MyRQzHaKJxDy+29a4Dql9oEaDxsTVhcRK8zM2V/uJiFtCXsoSrjl+o=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1452.namprd11.prod.outlook.com (2603:10b6:4:9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.27; Fri, 15 May 2020 19:41:05 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 19:41:05 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S41 04/15] ice: only drop link once
 when setting pauseparams
Thread-Index: AQHWJNHMlVt+VVBrfUaVtaMABqDYDaipl9HQ
Date: Fri, 15 May 2020 19:41:05 +0000
Message-ID: <DM5PR11MB1659C7D2934B06BBE86D14FA8CBD0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
 <20200508004113.39725-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20200508004113.39725-4-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 063e733d-92a9-4c2a-edc9-08d7f907e894
x-ms-traffictypediagnostic: DM5PR11MB1452:
x-microsoft-antispam-prvs: <DM5PR11MB1452D1D9099A2C2C59A7D16F8CBD0@DM5PR11MB1452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Pni0BYWtikDfiVV+3hiEqwZiF1pAwJCQ2ANH/lPyB75Z5v2YusrwyMRYQ72Sax89liVEVWCYMlhg4IdjTuGp0sXwOfvWNh8m8A1fYKbRbQ6j3RqnVrPvLkFrIvKnkji+K1/H0lv/9N66zrhWDNLS8gnd+33fjQ4PRFIcpVC18qoN3ftb5PcddnMUb3fSEsuwZe9ds/wUUxQmoDp8btcWhVS68s7cj2sD4auCf7npkS2eQQ59F0p9JDi5Hq45qJXrWo73d+NdQfeIrqdwD3QEuuw3pRL5cizcSYZ7DrW9H8WLZHDfYeVLNMgmT04jJ1E5dOohbf2iuZdtUaAQfvTeTyfxam/+S4wUmL8LU0jraAXve8mrcNB64MRZrl535sU/LlhFWjnrPH8Fexr4Xcyq1IcHkYRgepyZfXqL3i+id3hYie8dBQgnN1tLeTmwdU/K
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(136003)(366004)(376002)(396003)(39860400002)(4744005)(71200400001)(186003)(26005)(6506007)(7696005)(53546011)(478600001)(316002)(6916009)(8676002)(76116006)(8936002)(66556008)(64756008)(66946007)(66476007)(66446008)(86362001)(52536014)(33656002)(5660300002)(55016002)(9686003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: gEbDkxYRwk0x0TLS88W4eSBiXvbTQqO+Yg3IpMnJWUjkOkygWX3c7tET8/n4zBSAhhL6ilrKkvx6F8NIio2ku/s7HycuTwsWt4AU0WOd3jzlKF+9Us6McTZSsUZu7PCYoqnpZMUsFcPzR59f7IcX9zc4gW0d7eBpB/IDznG+3dCIuYfN2eRXS1ZkWQP7q7AhtcWHQMfNnxN2QV4VQ772MEbY1VUg5LdACtXkaZlrjiUgBhwpAjWFXgDistlrgTg4DoUYng7/G2urvwDsRIDdY9ArnuwSLw+5DuZRx1XRZJsvAZt/VLtyNRduWAxNgJNIEkKEK+44pyMuziXOASdXSviF8c02rrbDiDvML27f87i+8o/25WOtkKvixTtB6vVxZ4LUtdKKD+h0JRIAxXer/Om+Nbnu/Cf1JF77eUYJescj2w/wjXkJsmAwSzIJfjGhEy0aivlWcLNwTw2dzs086mIxOfaMafBIJ7ZXRY7xBLCrCJiR79td5oeYX12SldEv
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 063e733d-92a9-4c2a-edc9-08d7f907e894
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 19:41:05.7516 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kKJqAP0haGprT6dDxKlXoc+bO/oeDj1i876JUyu2IRWRmd1ibAQp1Zs4c9H8n7qF3Yo3MZfVibCRb41DGcbYlZSwsDBH5SadMA2UKltZG3k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1452
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S41 04/15] ice: only drop link once
 when setting pauseparams
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
> Sent: Thursday, May 7, 2020 5:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S41 04/15] ice: only drop link once when
> setting pauseparams
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> Currently, the ice driver is setting a PHY configuration, which causes a link
> drop, and then additionally it calls for a nway_reset, which restarts auto-
> negotiation on the link, which also causes a link drop.  These two link events
> in such close timing is causing the FW to not be able to generate a link
> interrupt for the driver to respond to.
> 
> Remove the unnecessary auto-negotiation restart from the set pauseparams
> flow.  Also remove error path that would have performed an
> ice_down/ice_up as that is also unnecessary.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 12 ------------
>  1 file changed, 12 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
