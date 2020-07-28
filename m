Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD68E23139D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jul 2020 22:11:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3240785B81;
	Tue, 28 Jul 2020 20:11:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PxfI5O_LLZDG; Tue, 28 Jul 2020 20:11:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B8C785B11;
	Tue, 28 Jul 2020 20:11:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9DA541BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 20:11:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 77CF7204B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 20:11:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oyw24lPh3S-4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jul 2020 20:11:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 24BC520400
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 20:11:00 +0000 (UTC)
IronPort-SDR: nf6eoJBKH/Pd6avyAbzTEr/jLxEzoJfJ5VDXDlnHGM7dSQ204VIOUhpAAplM5W7UfEnQOaiYIk
 vb6LyyNJXRUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="152548723"
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="152548723"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 13:10:59 -0700
IronPort-SDR: t/QANqz4Ql8U3NkzST+MTS8k3BFqiJXgMuhZkXMKUXoExuA5cOhc8tkyicFiFvFhpAbtaTCeUP
 HdMWyCqvoo4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="490493175"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga005.fm.intel.com with ESMTP; 28 Jul 2020 13:10:58 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Jul 2020 13:10:58 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 28 Jul 2020 13:10:58 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 28 Jul 2020 13:10:58 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Jul 2020 13:10:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L7LnllRM6voFel/EfTAJZCWpd5CSl07SPVA4e58gQcmjKJt7IgKeHFhkQNdwkoMq/bNNQRD32efg3cmeHiJOH2FF4L8wPJ7oOclSKv0o7MJmPpHs+OAfTHMmBNtGL57Ql6J2nmJF1bglkzn962bdtEmFhW4Ea17ecVbzKSYFzqpjOlfDYaYKY9VntuIo3TCaszMup8+IF6L4LLsije2RbwA0vN9nXkfsPraQZwDaqChw7Wy47k6c1wACDWNLWUDYRCYaU1xpStwYQ7TlsaJN0/SrVUsRG/MBS1neG0vI8GC3qnDzKCWuI4qiFMlwBSObZKKBsDoH7mUsYLkN/qEiYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mI1O1oApOqEA/TGhzGIAmZOuoL1m52iSJqz9iZePxMU=;
 b=lYCDEW7IGDwXZNFp6HW0g7pXrYPlvO6NjIDWdizSpJJneOp+S4K/sKNxSdvEx5hjd1N7rqmMEsn4h07TDzah8Ax7z6/dcVJvhVx6U10c8YzZwZomNkjZNyCSBumbbsl+Qyt1b96myNDo+dHI8QJdbXcEh3Ct4ffva791CSMSI5Kl392JMJ/3p+QEav5OE48DEMSx47CAU07ZwyBQH/OjLSRisN8PcID/KV+ffsQeTAr5QathHHr9K7L8IsCIVpZsR9ezlvbN25osZXz76wsx8bGSOB5OQ8YND1Eh+m0nzBemBgURzOeQygseCpp/DNjedh49T6dMEC7oFP3REVq0Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mI1O1oApOqEA/TGhzGIAmZOuoL1m52iSJqz9iZePxMU=;
 b=fa4d6sarZITrEte5mkuk4nRb0hH9XRF2W9OuUY+Zc9/Vw0CEt4pKdvUWOo30sec/zF4aEwncyFjARmp9mLN48wjPBbjzPLu9J3ZGn3khyF9zai7YPIvQtEceov3whBt8xImiijwG+yYz0fdp/A8JwiXOisv6JRYoXENYB5y2KlQ=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN7PR11MB2691.namprd11.prod.outlook.com
 (2603:10b6:406:b3::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.23; Tue, 28 Jul
 2020 20:10:56 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Tue, 28 Jul 2020
 20:10:56 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Allow changing FEC settings on
 X722 if supported by FW
Thread-Index: AQHWYbXeKhHoX9yq3UuY/daO8yXUf6kdctWw
Date: Tue, 28 Jul 2020 20:10:56 +0000
Message-ID: <BN6PR1101MB21457755A765EB31F827D2898C730@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200724122356.24058-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20200724122356.24058-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61d82cd4-dc4e-46f7-505f-08d83332569c
x-ms-traffictypediagnostic: BN7PR11MB2691:
x-microsoft-antispam-prvs: <BN7PR11MB2691F6DDC32746B2A40CE83E8C730@BN7PR11MB2691.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tMx5NeYSlqPSlvE5Rezwv/PtVnaNqei3p1XFLyCyM4X0PCj6rzQJDmop2hXK7m65+iXkVNPRgk2zJ4AYLxZfStfOlwyT1y73QVVGmPx+/KTQtGig2GdsJbdopm2Vr5xuAtCDGzkLpVAjal2ZfklUFx8NoZRiE5ooRWACN+ATFjaGhYlsmGa+ygphD7NkuIBk78kHnt2rdx4S44j0REwuUDxGV1l3lp1psVqFHy9sNUgMnHdpoKhB6rQcgVQBXGp3n3J7R3Tg98+0WsQR46BkuLf+bXy3vpd4H5SPogYIm1s5iYVoTNjqhhuHvWFgw9f1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(136003)(39860400002)(346002)(366004)(26005)(71200400001)(186003)(316002)(9686003)(66556008)(64756008)(66446008)(66476007)(86362001)(66946007)(6916009)(76116006)(8676002)(478600001)(33656002)(7696005)(53546011)(6506007)(55016002)(52536014)(2906002)(5660300002)(8936002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: WPCybPpGRVVJBKb83y3MqulNqWsHrTDrjZcA3pOwBWURfXumEB/MIg5FB9/tp77YbUAa4q1Sm6vGjglXY6x0TghrdJpsUdT+tLWoYD8XaCBMJkni5cPodFWPWZIspDH+RSa49dDmRIpa9/0oSNLiI88JRdEQyUDNtD1zYIHcPOgaFSa1u8iLEJI8eBobC9gu96J8BXCFttTFwqJe1cFMvm6dV3zo6xYBYDVJUdq7ECsVRwhZdJqkPewVu6gkI1KlJwClKOCNa8EKmhR/amLYqXlEB/dSwx9EtNZljAxWTVZkV8tS0IQmccg5ulgUd30SyErb0XE8M2Wxd7oz73dK7Po7/QeW99T6gRR2JMISTV1jVy9DGHIuitmea3SqOFriKQQLKwsi8nSucYLP+CiJt0RRd0vkkLxX1k41FfMfJxXIkoQ3yTpLptjhekWgK+FtvEVH61T/oF78vuKroqglHY3e4cr4fgfdMuypFYHgKN8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61d82cd4-dc4e-46f7-505f-08d83332569c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2020 20:10:56.6191 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JZfuTDokYcekMKr7khyH+BCM5hPWUVaiPxkiLdoxWOTeV5I5CHCVj2og55DFs8OPvRAnGUKwh/RJAZERL39Sr9l+BM9hz2/4oRSJNCAKxyY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Allow changing FEC settings on
 X722 if supported by FW
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
> Arkadiusz Kubalewski
> Sent: Friday, July 24, 2020 5:24 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Gawin,
> JaroslawX <jaroslawx.gawin@intel.com>
> Subject: [Intel-wired-lan] [PATCH] i40e: Allow changing FEC settings on X722
> if supported by FW
> 
> From: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
> 
> Starting with API version 1.10 firmware for X722 devices has ability to change
> FEC settings in PHY. Code added in this patch allows changing FEC settings if
> the capability flag indicates the device supports this feature.
> 
> Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_adminq.c |  6 +++++
> .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |  2 ++
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 22 ++++++++++++++++---
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 19 ++++++++++++++++
>  drivers/net/ethernet/intel/i40e/i40e_type.h   |  1 +
>  5 files changed, 47 insertions(+), 3 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
