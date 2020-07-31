Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF291234BD6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jul 2020 21:59:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7D7C22077C;
	Fri, 31 Jul 2020 19:59:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aRau6SF8s-2X; Fri, 31 Jul 2020 19:59:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 357CB20534;
	Fri, 31 Jul 2020 19:59:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E18B1BF27C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:59:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7984981F3F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:59:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YKgRp8IlYBcV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jul 2020 19:59:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E5AD580CFA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:59:07 +0000 (UTC)
IronPort-SDR: ckf9olsr5t6goa+FESIZqGLyOQUl6qJHRFuWsFQNiOUYl4Z/PsXoblOM5kYB37UZqmho7LnB3m
 AljlDSkg3r5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="131428557"
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="131428557"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 12:59:07 -0700
IronPort-SDR: /f4KQfYjCHZdKOgGOHiAomNLatmdeNIoyTm57TFOH4v07aTz+CnvJJpo4DkMSfShtg0cjJO9Tx
 tyEs5y4D7TtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="329325173"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Jul 2020 12:59:07 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 12:59:07 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 31 Jul 2020 12:59:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 31 Jul 2020 12:58:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Svn90Z1K3N/NZqDsftV2Nxg9gGALplPvFVF0XJrCT7N9Mabd9g1/ZKVSFIQm+w22I9RmCzPBVkPYOeLTjCT/NtlOb1Xv5KNyxMltAA8GJCyXVQtqzQbHXDj+oOFyV/+/22ufA46eHoyaWjLLQov5X/mdk4Nv4wScmNrIg9Qo0MxdXV9d4Rzbp5du6keR4tO/SXKsnYnX1rKS+mdhP0V8nsKa3wy1B/+N0NM9x+09RiyVG99qYf5qrrkteSvfobduiIfSqk4fW6YHCIf/16Uqhw0V5K46dQZ1NejLg/ch00vkadE44N61kP/1YBRDeF3Zlr1KNDnFQsR6sL0a+Ph8MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VkV1QYfWqrUs5KIK5rCVuIIOalQcT6oNI7KzLJMcHmg=;
 b=PMkKHKa18xcIz4T6C+ww1wlf7aUxV/xCpFsBK3OwLIt0bpP5VH1+rOMl/AHfyhIFMt3xYYfIUWEXfklkkaXMPD8wNiFrdCxPI3rqhtDLv9d2fDMCZvj9guZ4sl2ooSKMZCHKvb0uMkO+uBQ++8rdxPJuE7UVMk3SY1z63brqeZQRO3b7dK0YpZNoZ9kPiZ5itQeMjztJfDgQfpeZk9iIwdqIlh2Bgxd5v7d/YVWr2P1HKBkqLmsb9KDnovqzHmreO7qs4N0IE7dPcLQysy9w/vgWNhF768vcETlyzmBqtNNevQbjOXHnVlcFqnLjmj7wOKALDcp27atA5PXuGYnkDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VkV1QYfWqrUs5KIK5rCVuIIOalQcT6oNI7KzLJMcHmg=;
 b=m6WA6B3T26G38vRPqO3ZakeqjJXBWG1xDnAMie9juCS7tPSVBhDbKkG6ctfwu/9uEqXwqjh1+kkd3uF05EbyOLi0AuO9ZrY9vlNTU5jHTDIgXDnviM7e9cYhGe7dkZhcOa/D0Mi8gUKW5p/a2nqiR78yH5fr3xw/oLksCm4bM9I=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3763.namprd11.prod.outlook.com
 (2603:10b6:408:8e::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.21; Fri, 31 Jul
 2020 19:58:58 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Fri, 31 Jul 2020
 19:58:58 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S51 11/13] ice: update PTYPE lookup
 table
Thread-Index: AQHWZge/JGWaW/Rf00WMxKI6CTNJSakiHeWw
Date: Fri, 31 Jul 2020 19:58:58 +0000
Message-ID: <BN6PR1101MB214581D940F41A9974E2D9BF8C4E0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
 <20200730001922.52568-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20200730001922.52568-11-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 196df067-addc-40e7-7052-08d8358c299a
x-ms-traffictypediagnostic: BN8PR11MB3763:
x-microsoft-antispam-prvs: <BN8PR11MB3763D7ED2403EF9C5CA620C08C4E0@BN8PR11MB3763.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mc6vBshxVVm1YENsXcP2d87ksW6qourmp1ElOkV+7GJycwbvqV2z3SDaCYC5PzanlTz777HHFgfm43HTVxNhP2luvDJU+9oJwo/8pvJBQH1pR2Iu7el7ag0syeUzk8Nz19zcOOf5AJcuyhIQ5whgUmDXk3T52lL715cP474Ap+IYDpOoqcRF7xT7mb3WYXO7e/KfTcpAG90W/ehdluGcuG7amMAxsyHfbphN/LPlo2JONdbePfF3i+Iiy7NyD4LlGmXRgzPfPcEaOETCUegNv0OvzSiNHv4mZXmZVCbrPESyT5cIFxGoYsNOcJ6XU9jQ7yEuWgLcTBRGU9+LYEcqOQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(39860400002)(396003)(346002)(366004)(83380400001)(478600001)(33656002)(186003)(6916009)(6506007)(53546011)(4744005)(2906002)(15650500001)(8936002)(26005)(71200400001)(66946007)(86362001)(52536014)(316002)(9686003)(66446008)(64756008)(66556008)(66476007)(76116006)(8676002)(7696005)(55016002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 1v9yInqqCzLLTufp1L9pRqIqFKxx7nPOuaURv85/iKmnDNJLHFblsdy+o2+RgnaoUrTI8gyolJ1Bv+oRY+qV48HJxyZBO/1oxVOpEfK3bu+0C+q8tvi3n6PiTHf7OJC8fBeVi4xK+UozBsxPvhXYtt+Uq/ceNGgc3Er2d3N88yZRCbGjqiZToYOWTw5IJGldOEk0PvxW0IO4303Q1Tc3D1xuPg6DV1Q/j43hKrQItkkq2iSPr/viD31jcSQGifZnPahORmvNRQh2y841uH3NYMfLC7DlgpGHa3RknljzoD6yCtiygCRsWS9jGTGd0xpK5z+pPyiMYtaAYnFM1zyA0v6p7ppOLZfwU7RBc5YHBRbQZxJuuVz0qp71KGaTTlEAyzuzdEeWd/Ub9KwtgTJRYEPWNZ83xNx+1GZ+AvljgJTgjQLE0UfVYz/0IilohSv0lWChd2Cxbr3vcBCrWb5heSUTqzmNPp7BdTpXsyKl9Zw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 196df067-addc-40e7-7052-08d8358c299a
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2020 19:58:58.0746 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i1FSzeLbzFqXIJyJ1sy4IH3KrBqwUCHA8ZS4J4YP/g40gjO2L+UvynTyWTT9DR7ahAVwCw6sWwAfE/tPiv3eRVvWs1fcDRN2LTD7eMCrkKY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3763
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S51 11/13] ice: update PTYPE lookup
 table
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
> Sent: Wednesday, July 29, 2020 5:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S51 11/13] ice: update PTYPE lookup table
> 
> Update the PTYPE lookup table to reflect values that can be set by the
> hardware.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 314 ++++++++++++++++++
>  1 file changed, 314 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
