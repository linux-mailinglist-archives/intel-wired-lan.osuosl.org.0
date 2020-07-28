Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8F9231436
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jul 2020 22:48:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E64CD88218;
	Tue, 28 Jul 2020 20:48:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AlX2SrKg7vXa; Tue, 28 Jul 2020 20:48:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E5F87881DA;
	Tue, 28 Jul 2020 20:48:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 942BC1BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 20:48:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8E218885C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 20:48:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z56Oqk1k9jNX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jul 2020 20:48:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C8B7A885C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 20:48:43 +0000 (UTC)
IronPort-SDR: QsYS3RF0yQ+u3ZPmUwlSvaKN/Jf/lXiie3JlM7jAlN2iVa1aSd939cTk0G6d8L848RBPGktqOm
 UO+dXKey5YRA==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="169430435"
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="169430435"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 13:48:43 -0700
IronPort-SDR: P3Gs4dJoK4XGGE/GB3W/nd7W3yIV7ThgTCRrmrtBWnvLeB8SZrhyOJfpepK0oW7sMSDr4Si271
 1DDKq3WO/xCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="394450700"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga001.fm.intel.com with ESMTP; 28 Jul 2020 13:48:42 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Jul 2020 13:48:41 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX155.amr.corp.intel.com (10.18.116.71) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Jul 2020 13:48:41 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.54) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 28 Jul 2020 13:47:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mH5uwaienHcJE59CQX04ytmQUb52E/gjSEM4K7NlpVVc8vtSxEPvauGX1HwZ5CCJhA6rTCj5NtOMCKByXJ7TVLmXWcB9awPS7bFVHWGIFKYwaZQEfxEQunlTZ3kOihybXphlkcziTdYc54D8WTW9VoppH7TbmfFNpAEZpwynoWPHOQ5kiIR+4PFbqkOcSD7Hqa24OkB63dp++/JGwJInP52VKVMca7HMwPjseG6Dx5XWbhA/Zv8NmWjG/J38PXmhCALts2ziUkYXhl/PVxlCfsSiee7fH3z6p5mdVmQmio5u9KzImOn3JRqCD1VJEbe4aHZ1BLRCYP9gbPdjyJagkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vohp+Fl9XSDhTPrs3gsUiCpGSUNw0EuO50oip9HOklg=;
 b=NPf4O409ps8UwQ/S2o/6EDbIFObiwgs2bAlmATqctCeDhGi2tR0xbeXwPjkr6xsdLEFjE3ypG9NAJLarNZil0tzkyQp5WELf7B7skVFy5a5zb9wvxCekrQdULcuw2QFINCA3Z2eC63S7ZFdjGVW5JI0slWoKf15XoeUbzevNXco3LLBmcLr/3Z/75EryFbuDLZg1mpmYIi/1f5xBM2pnD+PfpVAHK/itN+4sxwpcTjddeceGRvNqsBXmTMUgM3cv4Y47PpReXafTXaeekpPkKObWojlXgeL9FnHsq/1JuD8OuMTeD382IJve1ilMnTdPe0HpbcMhMDdTz4mkdNan4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vohp+Fl9XSDhTPrs3gsUiCpGSUNw0EuO50oip9HOklg=;
 b=l5LLLxG1Et2NoFudMV6oAc1EzBi2vVvoT2DW3Ac4v0tNhZqcKJy82+445BLg9VG0KJwtAuhlzy/kMpJUpvm2TnQPyMB4mb83wb+EgwdKh6sZc+pqsQNr/00Ko55b+lyq1XxF7cxuxpNOYgke7Q/r11HJAiuRPncxMIvYQSZG/4M=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1259.namprd11.prod.outlook.com (2603:10b6:3:15::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3216.20; Tue, 28 Jul 2020 20:47:02 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3216.033; Tue, 28 Jul 2020
 20:47:02 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Suraj Upadhyay <usuraj35@gmail.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>
Thread-Topic: [PATCH 2/4] e1000e/ethtool.c : Remove unnecessary usages of
 memset.
Thread-Index: AQHWWhbVFZZwdE3LXEyF5L1JAYNbVakdjE6g
Date: Tue, 28 Jul 2020 20:47:02 +0000
Message-ID: <DM6PR11MB28908C7DB5F2C1DD58AD132FBC730@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200714194117.GA21460@blackclown>
In-Reply-To: <20200714194117.GA21460@blackclown>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.173.209]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a81a6c74-bac9-4d29-2482-08d833376150
x-ms-traffictypediagnostic: DM5PR11MB1259:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB125969C09DE6285669EBAF2BBC730@DM5PR11MB1259.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:439;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uYVIDA27KC2fXSqv9dVFHcU/Gf4wyCnyAr2WxvKO3iezLx0xUryAeaBEuvK/W7cjw/Kn/DuF66ImP9aYD+EbfqX5PxchkbwsRr4wzGHrb0++wFpSX+b0WveNWmeM2gPRC27a+qu+cRJwliv6IScQew2a+mj4mQQmolnNrt4EWGB35TF5WJcDQEEYd6wGJs8GL7x5433jdEAEtTYV15SdDcmC8sCwkH7ZTy5DS5Kaq1Oblv7SZkFRhxBPlPahsvOPzTpc8k69C1PUm8hFZKjnriBjxkAdGy10pPGUEh0DfdDxxoRNNLyXQcolE7BmsD6NrfLSZApdXMssnXCNjt6hxg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(136003)(366004)(376002)(346002)(39860400002)(52536014)(6506007)(53546011)(83380400001)(4744005)(4326008)(8676002)(7696005)(5660300002)(33656002)(86362001)(26005)(478600001)(55016002)(2906002)(76116006)(66946007)(66476007)(64756008)(66556008)(9686003)(66446008)(71200400001)(186003)(8936002)(54906003)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: ZWbG776nT++kFdrt6TijhiRjWVBsVf8nflDQezwJi9wo/yfXJRiXs8ljO9l1/AxD2y4zQNiutjMGrANo6arRORmJrjgxO6ZmOjfD8O3nK8Fl+zMg9zTnd7hsY8tzFfk8CXz3ySUQTA6lPQwW4SAMZaNhs6Y+e+DJVwkEc33Vl7L7fB/OLQgmYEaFIqD+QC8nZkYSuI9BFZk/FXY8RxDeyEV6b7hGHqgGeJ4IwaF5e3p0dG96k8562L6mkaCLmfv8Fh7QszoefTCis5YvcmWXe/Djyst1GNdINje5SM8NZW+G5TPAM9igmtLF7mOKqpIynq57qvHLT4pVTp4zDK6U4aKoog74OPHgFdCf+OdBfgix648WITOx3DtCWEI++ImvJuBtOcbMznW70khTkc0IM/qbghs0uhceK8lKX188ZsQ8TNd1/3IypNp/hqidZ26oGIv7NyKHgdjPFCyw+xgbN1qPx9TwAR7Z11MfkonhKGqdDHmaEVfD73pPHQM8p2sX
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a81a6c74-bac9-4d29-2482-08d833376150
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2020 20:47:02.0895 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nA8dxg+SPWqiBnP5HMniDw6YHe7QjInvFoDb9U88TGJBnB4KrpRcc0a5NI61QAzkraa2D/tyIv0Yu4wGJQhz0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1259
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 2/4] e1000e/ethtool.c : Remove
 unnecessary usages of memset.
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
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Suraj Upadhyay <usuraj35@gmail.com>
> Sent: Tuesday, July 14, 2020 12:41 PM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; davem@davemloft.net;
> kuba@kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; kernel-janitors@vger.kernel.org
> Subject: [PATCH 2/4] e1000e/ethtool.c : Remove unnecessary usages of
> memset.
> 
> Replace memsets of 1 byte with simple assignments.
> Issue found with checkpatch.pl
> 
> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
