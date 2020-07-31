Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F2E234BCD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jul 2020 21:57:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9418086BA4;
	Fri, 31 Jul 2020 19:57:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12nBNCShS_qR; Fri, 31 Jul 2020 19:57:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D25386C06;
	Fri, 31 Jul 2020 19:57:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EFEC21BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:56:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EA75120396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:56:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id olYA-AlqSdBJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jul 2020 19:56:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id ED8CE24C93
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:56:20 +0000 (UTC)
IronPort-SDR: qjKTj4JKSBmbI6boev/Uk67PtwxHBXf7FElPFsFpNrmzSbl/JhFVWK0Qp2J/V3bdx5zH3NuqE3
 AV5tNiVW0lmg==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="139415306"
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="139415306"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 12:56:20 -0700
IronPort-SDR: /xk7YgiDL5PROGGH/7255AAmR7fPg1uhCfbSHWD/8/HO4j9FdKe8IrWgNbjjSSoQsDFyEEVbbw
 nVzDtAmHxQLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="329324359"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Jul 2020 12:56:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 12:56:19 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 12:56:19 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 31 Jul 2020 12:56:19 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 31 Jul 2020 12:56:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aQ66jOGrqL+QvZkM9qnNDCPq2CgYIQnHNUsJYyg6LWCmm8qIHscGSR9h/MNSNoez4pb53EWX5aLDwIIJb15EPWiBKhWs2GZjc6fl/QRIQJcwdOX+W3oJGM8ufTRAG2IaSF0SuH0Kq4WiRE7BweChbJBG1XiQabODiDq3WgkH4/1gdK22kmQbaf2OYId3la+JxmFix/PwPH1eATWlzB5ozGXSqA3uuQNz5ZbdbY88OrjHH0izkGH/xH51gq7nNIp4ZJiwwkgNYplxfKXWZyoBDZOzIfNd718D4oNmPyLXJbkzV8/9g9H757Q7o2L3I9N4XOPIRtVqU9T66EzP99Z0BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IkzXm2nY0jfAc2LF5GXVP2Lma/kfFm33qpl7PO3ooks=;
 b=hQnG7fd1k6SCSGpy2ufnedqq65UWuCthyN8W6gOoUhAL0pfTC1vHyCuuYiYqg/pH3kWNCLKeinYOjhTeewrHlJgsaRgv68HRbhYcc7PI7ILTr2B+gDFF7k5+zcCSM6LHmj7lMY97vacQxTFLjYFeL0BIBWdyQX3W2yp0jo3PvvAEMsDovE7Jg9AUKrU2wFFKIGCX9xpO7sFu6U8aZKwBXgvOVVAJWVL0qDjDQUIEbMZLIhZkRDn4DBsEO1aewkclPEoeGekEpicZIraCaDrqtk2u1RUWyesVtS710JC+hv/Zq76nGLNel4SgV/2EPqb4cwRQkf6rqAIlq4wmmQq1fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IkzXm2nY0jfAc2LF5GXVP2Lma/kfFm33qpl7PO3ooks=;
 b=QBNo1bUZjTBxQIli21xNgbEFdmkT4z5f4JiCkT6Y+0ccyb/RXWNzy4yu7PU7hN+RQsXdek+ry6JRI7DH7/zQ66rp0m1j+k1vKuwe3odTpw6P1NEhQLj38pyZ1MXa842Lr1hasduXvEMmEqeOef9ouMC/xsOWDlpGEMFLIquGT84=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1329.namprd11.prod.outlook.com
 (2603:10b6:404:47::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.23; Fri, 31 Jul
 2020 19:56:17 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Fri, 31 Jul 2020
 19:56:17 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S51 08/13] ice: port fix for
 chk_linearlize
Thread-Index: AQHWZgfGrOyuwz01h0iIUPznua1GLKkiHSxg
Date: Fri, 31 Jul 2020 19:56:17 +0000
Message-ID: <BN6PR1101MB21451FF54FFF932E89C8761B8C4E0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
 <20200730001922.52568-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20200730001922.52568-8-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 72f8da18-4eab-4301-9345-08d8358bc9b1
x-ms-traffictypediagnostic: BN6PR11MB1329:
x-microsoft-antispam-prvs: <BN6PR11MB1329F5DB5E69C8CCBD052F298C4E0@BN6PR11MB1329.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:283;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8JFfBeHJILRaGkfdg7ClJGd8HI9r2YDK64qdwx5jwvxc9yGJGdybkcBLiUhcUvCBLVNjTrRLR5ivKgZnQUpnhlYMO7LgrRH210G7Xy7c16t3YXgoCJ0eb5zQQEbJ5S5vsLFb/wR/e4XhnixK48EDSPVmgpcckxeSjPJBwI+Iz1U8IBY+4XqNhSrcW3CoAUY7/+f1S3TxvZEMQc1rIaTsfTNc9OdHjfoj4DTJRDe1l4Az3BduUQ7DBvTfE1X+Gij9mtwhSGqsnejDzu3ik+kOCHJlyWx2HsBFnnjsVcHhdhR51zR8ek0zsUZF0g5QQtT3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(55016002)(83380400001)(478600001)(52536014)(86362001)(9686003)(5660300002)(64756008)(8676002)(26005)(33656002)(4744005)(71200400001)(316002)(53546011)(6506007)(8936002)(7696005)(186003)(6916009)(66946007)(76116006)(66556008)(66476007)(66446008)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: NCstsMtngA5bxqsiuJoxJOCRAa8+M2t5THA2H749BLGVApIK0236a8pKyP60K0u9AbMhg1Z4KcY6S7m1fKFnfFRZ6zYsav6FzCsWN8KKnRhS5rzaKe7VjG0zET1scVM8EjBLpa+UY5oQw614PuUUzaJaUw2wPFvoX/W286lfo8+pjf94JN+Ef1K34OXtycyTNc42kBmX31jvjgeMZ98kYf3B41aHrN6Wb/cHRBfY9IvvkscIKB6Pl2VXsmX6dBYtvfanRe2V9QOJfgogvTAcasglx6l21Y2xB670vrcNIn85lKqmCbW2xN5IpBzzdbF4uD3W/yRKjYdZBBEr6S9CFJYBlch/GJtDA8lwc4Euk9gYQZbzrVGf9BQGxTRlt6dE+EPHLh3Op5xPB3hI0j5SXgCaD1G/bZUzw4JI2ROZvdJWwFhVlgt8KEQu0EZzZdDN24tCw/1tbNp09TCSmGjcEqSyyZtSe0mVVk4l7gV8S3k=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72f8da18-4eab-4301-9345-08d8358bc9b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2020 19:56:17.1900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IPJrkXtD//j5U7/Xj8BjLIFDhtrC+jZ0bclkm3j+YgybRrcQlxCiVnD+iXYIoDRi8zX8ctKKhXjkdJ3LnWWX+s4GXLoQ+zM+VoRh3gTFB/c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1329
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S51 08/13] ice: port fix for
 chk_linearlize
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
> Subject: [Intel-wired-lan] [PATCH S51 08/13] ice: port fix for chk_linearlize
> 
> From: Kiran Patil <kiran.patil@intel.com>
> 
> This is a port of commit 248de22e638f ("i40e/i40evf: Account for frags split
> over multiple descriptors in check linearize")
> 
> As part of testing workloads (read/write) using larger IO size (128K)
> tx_timeout is observed and whenever it happens, it was due to tx_linearize.
> 
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 26 ++++++++++++++++++++---
>  1 file changed, 23 insertions(+), 3 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
