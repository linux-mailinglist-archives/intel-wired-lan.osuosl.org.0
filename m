Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D3C1C9C99
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 May 2020 22:44:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86CE886248;
	Thu,  7 May 2020 20:44:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9u6YUfx2Z9V8; Thu,  7 May 2020 20:44:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 52DD686268;
	Thu,  7 May 2020 20:44:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A4141BF402
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 20:44:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 36CBB2671E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 20:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4GAPZQ3GaAmS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2020 20:44:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id C688B2670B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 20:44:48 +0000 (UTC)
IronPort-SDR: icY7ScgnglW8DnPweEY7Cw4YkjSDcJtZJ2oxSxG9Zz7lcjnpH4xfK2mzPIY8eQhVvLw8h0ohTp
 Gw47L0RPKxTA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 13:44:48 -0700
IronPort-SDR: QClx4fgwlEePb12StlH3Dg10Vdd9vVL6XTvq420vnQBOcz0Ac3NwpnhIUE6pgQ4NnoOdjgk4zG
 B2NUaJzIAHTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,365,1583222400"; d="scan'208";a="285125155"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga004.fm.intel.com with ESMTP; 07 May 2020 13:44:48 -0700
Received: from orsmsx124.amr.corp.intel.com (10.22.240.120) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 7 May 2020 13:44:47 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX124.amr.corp.intel.com (10.22.240.120) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 7 May 2020 13:44:47 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.56) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 7 May 2020 13:44:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K0zo+P20uviMgW/ifIUOtRpDjEKr6oKXWWb7JrXrVj3iM8g4OkdQUJD871p4QAt8WcDxBQNwEaItUwxaPwvZNAVuxVJ4Notp5JDOk/kNUffyGJNOBLDW8MoTwmkWhsVLaBCW0RzNPXbVngdtug0p/kjEZeX9gatW7n05h4H34Nr8flrR9g/WeHvJDLzkApdwFAHX6WEU/3hEKmMcgugrXhwdNBz/Kw1Yp6Hfx3iVloas3mRuJjt9LnErgDyMjNqMl0Gy0d4Nn5VRep3s2gAYFKN5B0e3PWLMOVDei5ojU/qOaivWiGcNteTTBcWhxobS7RWS40UpiSwhEz/QdLrTBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aZEcvSN6hFgI8aQqxZ5+Q6/71thD0LDzt60uAE15E3M=;
 b=fHe3g76bh8jr6ekwU0hfuRkKv1K9qJgB6O0l7NYSkcVXsEcNUhk86dVYgP6cL9rI4R7nJKxREkpwrYRsEEwjvr5GXGbwYtY5s7wmjd97lrohCPJeZZRbqbBjsFBZi5oeehL7hkf92ZX3L6VrwzkUGVNopN/0/cgsUd/48mtStl9ra5ljiiCA/f/wRw6ScRJikU/TfSCc12KF5QdVxTVlhaQxEqkgzrrUgv1liKdqjimoLpTxG89HA4URhUyUXDHBGu6eRkJVKKrGodETTaS7nGajaSoLxLMQ0U9kgvHtskizCt61kgVUM6br+cwRPgmC8aQLLkNXqPoPWIX/XGoJPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aZEcvSN6hFgI8aQqxZ5+Q6/71thD0LDzt60uAE15E3M=;
 b=dzQTUjmNaG9KIqlJ1ZYM5o+N9voYuKJOzkxGwPLeggXWWk0eLgBGzm82ZP3BZQ0YVv2z4B7RiXYrhicyDNyZwjd7hrb+lTg3DkMOEBOzjAgR8YAxs5W11nEj8PUPjjv1i0+gY9YrqI1cweqFsiG8jtfhNWSMFOZQ6wWnaKxSWJA=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1594.namprd11.prod.outlook.com (2603:10b6:4:5::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.30; Thu, 7 May 2020 20:44:46 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::34e5:3ad6:73cd:4783]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::34e5:3ad6:73cd:4783%12]) with mapi id 15.20.2979.028; Thu, 7 May 2020
 20:44:46 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: report netlist version
 in .info_get
Thread-Index: AQHWIzBo4cTF3dBv90a9aUxXOfePrqidGi4w
Date: Thu, 7 May 2020 20:44:46 +0000
Message-ID: <DM5PR11MB1659DCDDE7D1A976AF7A72CF8CA50@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200505225537.3318391-1-jacob.e.keller@intel.com>
In-Reply-To: <20200505225537.3318391-1-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.207]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 34a94afc-520c-407b-f333-08d7f2c77a76
x-ms-traffictypediagnostic: DM5PR11MB1594:
x-microsoft-antispam-prvs: <DM5PR11MB1594E4303048FDAAD68F2D6F8CA50@DM5PR11MB1594.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5z6kQU03xzJDnAIutwfVjrfPjWwLYPBQvF2CSX4i+CcjY7LqSAmdHphbkTJfJ0n1uts334ErYRb/uH08pslBJvr2BOdvCcrw1LCe4EHCtcNJWkD/3pRV8h2nZ2oZG9wo6ZId19ksYZC0G/og1uZrWgj1skIg0Dm8TSKiu/yqicTFJ2oMOIMpNU4gY1PBdO876vKrr70EGz2FcDaNmVHKSL/P0ZEEqcOie2uyTN3XG+aXWK+x+8eKqlR7Kp166AxrKZsONrJO5txpHRV4xN+9ThUeE1weA5tU29K/sdT5Us8fgPnhk6M0ZSimThbRhFXLg2pFbX0x3Me1ThSudgCUb3cZlJAzxGQtQp48GUQGAwQBdR1PN6PQq3TI/qbzdz78E00YG/c8nUGptvBNROI/69lNp1ZaYPnUCo1TAMYJwgPX50XOtlCfAYA50YFFLn4S4iunUiOiE9WSh0+t4DgAp60k4BVZWCUzzTIOA6ozyROHLrvcmQhpjIZf+/vclcYu3SY2lNMY/8xRw/kqkBmIQALKOMoVCFCo/OR4fLQD7dHb4k2K9zmNBg+83CApdotk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(396003)(366004)(39860400002)(136003)(33430700001)(5660300002)(33440700001)(66446008)(64756008)(76116006)(66556008)(71200400001)(66476007)(478600001)(8676002)(8936002)(6916009)(55016002)(316002)(66946007)(9686003)(26005)(53546011)(6506007)(7696005)(86362001)(33656002)(83320400001)(83280400001)(83310400001)(83290400001)(52536014)(83300400001)(2906002)(186003)(142923001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: EOVsd9Z9BxEXNo98fL79KuJkC4l3JQ4O+rqQtE28AkMGUGHzb9kmUvxvR2suG0ZBRscFbEEl9MRrDLDcCtPMbR6LbXRSTBoByH+WLiMM73AD3IS9Bt7GowUix4xtrX2Ba3TpkjTKXyDhjHH3tdZT81Br5YQiJMivh/5NQ6FbhpMWj/4mm2sEOiRteoTEUSm9S907eqK5WfKSFwPwuNCTPivRi31XxnMe3tphtzWs7IoNw7O6qf6pVjyWKdou75XrrIWwLPQ69Le78Ai5LyjajYdcdWNFes8aBSW4He73CgEc2RKBW+WCOdBeXVRqSrJGiIFrEH9ZYXlEhtjpDYeSrDRBWrAiPdn9FSgklx5W0rKikUgfEONN3bEsiPaV3gXJzZwmZyCrflByQQSUZCauXB6J0r5Fw6J4lgCv3Ix9PApn6LYRXke+UeER+AmvqBGPt2QNSeX9pgKbrQE2UHojSVR0U5MXPTT3ep13keb9UbLf2Bkg8GBwvMZ2FmAaWCRHDsAPlK4oVXPgaPlNJSip5paZI+YUZIY3WaUqvKz+xsdpRkC0Z52gyxr8hjDoBBlM/O2FDwC66YDm1U2XPFukol2SA3Oy5SE0zuRPmKcCTpTkThKMxS2fU49TyA9hBdjnzqdzejihJ97M1WBI1CGf61L8XyiLqmJiZEbSxSqI7F434/CLOKiy4W/QjQ+LWGDSBaDJ2ksQKNSIdymt77z27VlvJw0/Eel9Bj08cynqusgDKy1US/r7f23hH9hqUHCjwNxecldz/j6nQG10T3omwL/z+SEAUGsSLqyBv0TqALY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 34a94afc-520c-407b-f333-08d7f2c77a76
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 20:44:46.2084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9z9RdPDc/hxS/HM7SvQcbOsIqcLkzR2lNA6ySB4F5kwWLrfosTrYQiyA+amEmM4eZeMk93tOFa2q/AFGl3IT2v5qyZ/BsNp9DY13UinBIVU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1594
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: report netlist version
 in .info_get
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

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
Sent: Tuesday, May 5, 2020 3:56 PM
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Subject: [Intel-wired-lan] [PATCH net-next] ice: report netlist version in .info_get

The flash memory for the ice hardware contains a block of information used for link management called the Netlist module.

As this essentially represents another section of firmware, add its version information to the output of the driver's .info_get handler.

This includes both a version and the first few bytes of a hash of the module contents.

  fw.netlist -> the version information extracted from the netlist module
  fw.netlist.build-> first 4 bytes of the hash of the contents, similar
                     to fw.mgmt.build

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 Documentation/networking/devlink/ice.rst      | 11 +++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 27 ++++++
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 23 +++++
 drivers/net/ethernet/intel/ice/ice_nvm.c      | 86 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_type.h     | 11 +++
 5 files changed, 158 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
