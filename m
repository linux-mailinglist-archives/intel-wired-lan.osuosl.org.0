Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8926E21BF3D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 23:30:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3AE7D883F0;
	Fri, 10 Jul 2020 21:30:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x9V8pp57Uqbn; Fri, 10 Jul 2020 21:30:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DF3CF88544;
	Fri, 10 Jul 2020 21:30:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 771CE1BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:30:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 73B888848F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:30:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rJbh2cjkCz-n for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 21:30:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EBC65883F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:30:16 +0000 (UTC)
IronPort-SDR: P2Hg7/+qYdY6rgvkCTphOEn3Njn8zK/NaZxJnSOn9vL1ptF7TiPf4W8O5I/xEhPFHAjSEcOCY9
 b1Uf/jz8FumQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="147414641"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="147414641"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:30:16 -0700
IronPort-SDR: UF2eM47L0upbdJ5iqXdyIxND9xpbE5uYOkF0TqtiWdubVx2sMcngrdYbCvx5yYVIzAkbMQbZXd
 xjNDQcrZSzNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="284629026"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga006.jf.intel.com with ESMTP; 10 Jul 2020 14:30:16 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:30:15 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:30:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aXrdvCx4Vb94Yb+GFn0Jp8bv3ZmhIcE7/9EzwQNpOJKAEamAHSFXsSEQSymtzaTI8UsDvQqfPsR2mYppjY01fkzuDRZZnf0zeXG5CfaOViuzDp2R9dVzc8YW4FRr6vCk6syxPUK50i3qcIO+9CyFDY1psPuTn46wnjI8s2w2QMpI0pRualHJQFwYC4dGu+ALJC4/qykwOWVaEarBwsjNiRKIFFTX9C3ouVLQJ6KcJ17j9darmOa2abP/c3dzl3le56c52cPVxnA0KtGVRIlWmg4jwGEi2fG70EHOKS3WSGz26b/K/tAQBm3g+mbrddu6scef2VMRMyO7pWCq0c9iRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e/3bf6WOd5ptFjqXMGvsdOHkqNO2ACgpCf4x9QMntr8=;
 b=fJdJFsvHVvuvc0c4WF/0gWJbymjE12nY8DBnv++8hjFG4fSEfzDn6pXZsj0YjmxjGZ50MQgAt1Y7X7kx7QUAKciJ4DaELBZ1OjwVIIX6ADULvR4BB2iLOrxcCyu+egSxyxUtHo3iGUbbG56uK0HkzEWBOecBPuh9LqUwcy1YKSW9olMW/HU/k8FeNdufvcV49E4MpT1Pycgw0yAjLoGiJcpoMsYR9TptOKtSwR7Axzt9oLMJjWKPT1IIT+YzX0/fVHSJPayGBKQCCrBygIXiUL3HbMlX5hB2jgjAbkT7JBp8RZLkKSXr85S7CTNAl3ZcURPi6E9K65AS3xl1LC9SlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e/3bf6WOd5ptFjqXMGvsdOHkqNO2ACgpCf4x9QMntr8=;
 b=eROayugVkEDVnlMOVVujY5V6cZfnJYDR1tTUb/1yEu9cCok9Oi25tbcv0fRVJnD9OmAqfy5d4dK52I/eypYt3N3LdUZxCaCxMkkQ0pUspf4QamA9fgHTmrpFDSTXJs3pZLDPyesluG/7ssnacHrpmwgVkJ3vjtYjm9eRwMH5av0=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3604.namprd11.prod.outlook.com
 (2603:10b6:408:83::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Fri, 10 Jul
 2020 21:30:14 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 21:30:14 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v5 03/16] ice: Support non word
 aligned input set field
Thread-Index: AQHWVlXodm5bX0eu3U66CYTI2i1KLKkBVdkw
Date: Fri, 10 Jul 2020 21:30:14 +0000
Message-ID: <BN6PR1101MB2145BCAFC14EE6DCB38714D28C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
 <20200710010644.33817-4-qi.z.zhang@intel.com>
In-Reply-To: <20200710010644.33817-4-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 13e2ac23-b1c7-44d7-83c3-08d825186f2a
x-ms-traffictypediagnostic: BN8PR11MB3604:
x-microsoft-antispam-prvs: <BN8PR11MB3604CC6A404359227DA5F7968C650@BN8PR11MB3604.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:989;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cI4DPyrqfMsP6xNX78xSbROt6Z2sSB9dCZW5pEfFNVI1WbH4V8GXZ/nryowPDJF/F/PC6Izye8GCVgYstLg8s3+LooevrURDY+q73IUNQjfU6VlyAQvKB9bJEFOaqZvRxOHjjnXGzF+QZoM+46oluoKEWOhS011o7XrJcCWsrIpcPRdRlVPoAtHCpxkxQ/4H4QTMe4hjaCKJev3AjlQmg8OHjqtDTw7BgAuYb3Fpzdj5iM8PyFpJftmdmZ+j5vcUGtQNhXHmhf8gKlu9+PsDJlW3X9QS08FWgGtlOtmGFmSpZaM32xXvNex0DvZKVe9x
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(186003)(7696005)(33656002)(6916009)(71200400001)(5660300002)(83380400001)(52536014)(53546011)(9686003)(55016002)(64756008)(66446008)(4744005)(26005)(6506007)(478600001)(66476007)(66946007)(66556008)(2906002)(316002)(8936002)(86362001)(8676002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: YTpg2KHwvPJ/+Qzky5GY2qL5n5ALQIrwxmQj6v+gq3HBiTtavnG8eLrhqV/9ie5rsjLZ87dtPtSJKz/mpm9xqrX6YaZnV7IFydnzFkrghwsM53v0AcDLAu7i3y8mg2G4alp00enDwRQ9sG1I1fIVin0gbNWjDmqXAL5+hwNqgrlvkyyACcUZJxXTudPhWcXgGdvvbqvRq88mhyFdShKeWBKL1+CuGXQ6/S/0ZjG9D8AIEHXO+zx61TW+7HpEa9VuAYLWC8HOyX47oLgeXcuC8EIhgWJaMBo9fE/P6OkyO8WjNu604AEJkkClD/RYoAkmcSWnwOy6UcBbm40qC2+OKxfgvlgmKMIqqe8AF5TcRIhk9uxkns0VCwFnXXophzE7g5l0qXYBm+RwZWvxLsr6W4Tz30FHyw0k76g/mPrWUNSRhSIP0uHfHSfuZAArgMzTV//H5QrJ1nzidLFzL7msB60IvYyqB+URmRrz6icKcqpqNiIBtavd6lQ9QnpQw77D
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13e2ac23-b1c7-44d7-83c3-08d825186f2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 21:30:14.4956 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0l2VlgDyxJy7m9LKP46RR/DGKKyIWocNmKtUVpDTkUSujTu3oPUSoaI2eVGoRXa4J8PH6PFdQ8fofQzUkqWUvrCuyXpgs6dZgcxDDjINVgA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3604
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v5 03/16] ice: Support non word
 aligned input set field
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 9, 2020 6:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v5 03/16] ice: Support non word
> aligned input set field
> 
> To support FDIR / RSS input set with protocol field like DSCP, TTL, PROT, etc.
> which is not word aligned, we need to enable field vector masking.
> 
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c  | 419
> +++++++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.h  |   2 +-
>  drivers/net/ethernet/intel/ice/ice_flex_type.h  |  17 +
>  drivers/net/ethernet/intel/ice/ice_flow.c       | 122 ++++++-
>  drivers/net/ethernet/intel/ice/ice_flow.h       |   7 +
>  drivers/net/ethernet/intel/ice/ice_hw_autogen.h |  16 +
>  6 files changed, 557 insertions(+), 26 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
