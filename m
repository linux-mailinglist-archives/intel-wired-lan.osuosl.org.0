Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DE12110FD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jul 2020 18:46:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4565F8A9C9;
	Wed,  1 Jul 2020 16:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9PtyqLQjRXGW; Wed,  1 Jul 2020 16:46:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85CD18A966;
	Wed,  1 Jul 2020 16:46:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5562B1BF82B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:46:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4A0BC2E56B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:46:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PxeO387u74ah for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2020 16:46:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 567F72DA5E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:46:34 +0000 (UTC)
IronPort-SDR: 7QwwG5d9X0AsFwLNdBg5XnF78LIXBMiMsDtBOcwJv7nYVn4ytxZcfxDq/iIhGo2fQ9flj3VyVT
 vBR0sTO9YIBw==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="148189390"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="148189390"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 09:46:33 -0700
IronPort-SDR: MevE/Uuu/LewtZne+MX+TQoTY6V8jrlSGUjzGvO8O6LWzqIFWtKqRJBR8PJAaEK1tmR1jyA7ub
 TiFddoNJrqRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="455167241"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga005.jf.intel.com with ESMTP; 01 Jul 2020 09:46:33 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Jul 2020 09:46:32 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx123.amr.corp.intel.com (10.18.125.38) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Jul 2020 09:46:32 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 1 Jul 2020 09:46:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CATbERfnIFVhv2+Lo44YikVyDqFJ8vCOBZj4bquhrHwFZM2q9MsVQUMcNkzYky2fjZIgHhnzkV9xbuD06CzqzFHEZYGyWnU7qB50iiCDaCirLC7FQSov7P5muH+27m1FCX0e8UHmiQM9uegN/jjZ+N0bSKky5lmILvgEJH6F7eo58q48UJ5GkkdKf7oYMYjVm6DMnab5XyxpRCAMYAM1Ls+vcrjhGU+VOsSs/PpzsnAHE9Eb+16BLxaUp8z6ar1KaGk13AcLehOPrZeNZjnFdIz8v7ROS50CIDjUnkFsWGz8upw4lhFTp4k4jN/hP8lFR0DxPUhhYFecrO1lq3kbTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q5WrtU3DraaJDHrPKoS/esctGL8sF6iSBRJVYx4V9Jc=;
 b=j1Qg4eI4B5bLwoHvKJGVFYUmUSgmSW9lTeZ1Eu3SpSTVxQZ0OhPDRrhZ4mUNRXgYnFechEuNs8nnV+5GkPyG+v1KcTd5ZhDvWz9VScncrSri83WvC1JB6IKgePI6kRMLLn1ybfG99ZB9RXZkhBQNnp5qyMIL+VOfO8eKVDtlfll8ar4wXOMaMNuwp7VikVcd6YMIDFCYjN+YTlMDh2OMvIRbCwaIAB/tXk3rkKJTu+WFJar9jUx5W1ji5qkz3mQedENO6L+laN9MQxbhpqa8gGNhSyaUjZytQNBtz5j3vIxzClaeltZoMq9AL6yAnx3n5VhmgNZZ1krR+rM+3t3f/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q5WrtU3DraaJDHrPKoS/esctGL8sF6iSBRJVYx4V9Jc=;
 b=uepisP12r5m27HjlmILuI8r3G3cglH/1NT/QUllbV3gyhs7JkKmV5FIBzAgb8a6JcTiRSjLr1XPgwc3z/Cr3PWanLrGVZ327RrUI2VHNDgj2/wAQxmzPWxdOV1CmK9kWMi/fe2Z7GOwEjTzgl9rhwIv6leOmIyctcmV5nIPi7VY=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1793.namprd11.prod.outlook.com
 (2603:10b6:404:102::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.20; Wed, 1 Jul
 2020 16:46:25 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3131.028; Wed, 1 Jul 2020
 16:46:25 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v7 1/5] ice: add the virtchnl
 handler for AdminQ command
Thread-Index: AQHWT0f9ZiCH+IrqdUK/oniCiqfdEajy76IA
Date: Wed, 1 Jul 2020 16:46:25 +0000
Message-ID: <BN6PR1101MB214580C8EECA0D5BF0C7F9B38C6C0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200701012557.40234-1-haiyue.wang@intel.com>
 <20200701012557.40234-2-haiyue.wang@intel.com>
In-Reply-To: <20200701012557.40234-2-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3a319d5-ca8c-4193-b88c-08d81dde4b4f
x-ms-traffictypediagnostic: BN6PR11MB1793:
x-microsoft-antispam-prvs: <BN6PR11MB179301314FEB38156B1D8DD08C6C0@BN6PR11MB1793.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 04519BA941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NRVbOOaQ66qi/r7lnMk48Fn83SR0z3CVrKWZYApq9uQmi6BOh/vrzDpbu9OSBkSa7dYh0ZCHcS5/5JKRBzgBuSWU4/vBV0jGYJv0CZtqTZcxabuRjZuvAI8d/Re82muywHolvP8AWAKA7gWMzmevskrNaeJI3JkrzxN9Ue0+lFNX51o+OpvSWooznZ68pO8i9JouInJtGcrAeEqifWNTfVSAlFSHVIr3ORr3AEjpsoyZYUVk6Y/wcr/SW2GEoia80UFnwgnqXfkvX9Hbt4Ul98uB3VzjW/eDdq/qIMedLBRMHawNWJYiyYepWY3Fs8sG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(396003)(39860400002)(366004)(346002)(55016002)(5660300002)(66946007)(64756008)(76116006)(52536014)(8676002)(8936002)(6916009)(26005)(33656002)(2906002)(66476007)(478600001)(66556008)(66446008)(53546011)(6506007)(7696005)(9686003)(316002)(86362001)(71200400001)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: xCJeIFPXWZI8ocLHaHLkyUkxcrtg01NgDx8C4KaSOyc0nr8R22c0KiPLwbq53f8uJWmdkS4UxoYRvuzsNNmSKEROZaewjKfXWdyMOM4ajyt7DXO4gxy4LEZm1Td02xCymIlDd7LoffvaCZaJhwY7NVjzHqiXxyuh2t5OD/tjs/QDkwJbZcYZXVc4QW7s6OT32UfSaKeqUg4vlkG0s3FbtLpP1mQCG48JKYz/i4V/ZfyGojueqn71VbE615M+t29Of/dckIiH3bHdc53VegTqPm1ljONB/jP+Gw4vG31fu7s4oETnvB/AxKJbJ3CcF5PTVepBMCvH6ApEv+4UFKTz0gl2+gUUE+l6za/Z7/wyTQtrAJRkxNIqM+sotmUborvNQu9PlU5d8izWZs3NQZfFPgCvwJStgDlzOrOmliwEr4UWFmYKXE642y/zbMysYIZbvPW8CAB2+7M1tQEJcnG12izDWv0PuT4UpF8PMEjDJTc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3a319d5-ca8c-4193-b88c-08d81dde4b4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2020 16:46:25.3077 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qwjhStmcKg2Vf/X+iLKrxHYX85wET+M0h3hKZP/6fyg3CzaBjzjO2oM1CkSyKBa2Ya03MRZiifM1757mNnypyvwepnei1KUJVjQHyzsh954=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1793
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next,
 v7 1/5] ice: add the virtchnl handler for AdminQ command
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
> Haiyue Wang
> Sent: Tuesday, June 30, 2020 6:26 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [net-next, v7 1/5] ice: add the virtchnl handler for
> AdminQ command
> 
> The DCF (Device Config Function) is a named trust VF (alway with ID 0, single
> entity per PF port) that can act as a sole controlling entity to exercise advance
> functionality such as adding switch rules for the rest of VFs.
> 
> To achieve this approach, this VF is permitted to send some basic AdminQ
> commands to the PF through virtual channel (mailbox), then the PF driver
> sends these commands to the firmware, and returns the response to the VF
> again through virtual channel.
> 
> The AdminQ command from DCF is split into two parts: one is the AdminQ
> descriptor, the other is the buffer (the descriptor has BUF flag set).
> These two parts should be sent in order, so that the PF can handle them
> correctly.
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   2 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   2 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   6 +
>  drivers/net/ethernet/intel/ice/ice_dcf.c      |  49 +++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  20 +++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 130 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   1 +
>  include/linux/avf/virtchnl.h                  |  10 ++
>  8 files changed, 219 insertions(+), 1 deletion(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_dcf.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_dcf.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
