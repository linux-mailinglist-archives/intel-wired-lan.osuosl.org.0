Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 644A325E539
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Sep 2020 05:13:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1CF268559B;
	Sat,  5 Sep 2020 03:13:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tnYZjQK2ldrQ; Sat,  5 Sep 2020 03:13:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E91D85534;
	Sat,  5 Sep 2020 03:13:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9FD2C1BF9C8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Sep 2020 03:13:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9B403854E7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Sep 2020 03:13:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M6cCYs7bfYnI for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Sep 2020 03:13:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 10F72854C9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Sep 2020 03:13:32 +0000 (UTC)
IronPort-SDR: Y7P7w4CV7Clm+IcVs/kwuGLkq6JYcGEMuVC9ZNN77eT6/Ocl1Fdikzk/ktyluRCH9YlgFrQ191
 ZoRa4f1WFOiQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9734"; a="219395489"
X-IronPort-AV: E=Sophos;i="5.76,392,1592895600"; d="scan'208";a="219395489"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 20:13:30 -0700
IronPort-SDR: 1PxIteDvPd1kvhNusHn4AvxZ9No+h6UQGeNi7RSfDw0TsI4WnIBJAEHUcTKgOq5O0qXwAkejMY
 F/QOtrkTEUIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,392,1592895600"; d="scan'208";a="283323640"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 04 Sep 2020 20:13:30 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Sep 2020 20:13:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Sep 2020 20:13:30 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 4 Sep 2020 20:13:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GkMi5An20Q8Exndq+yDKwy1Hcww4G0Q7gL+8PItuSalaarYga8GwyYQCF89YanclPzNue2eOpTCQiPbqSS5aFbSM9ahOFjI4dvQh838ua6bjowrKUDJITpA1/RdTX3RpbWqxk/kI+bmHcFEzyqd4FDwIxJihPXvSOm+/6Vdo/dJZqZvM1ExPzT4n3vVJsiOUVXLMiwp2nGG7ENTOiuznGxCYm6kgSWGiV7piYkxgGZ7xfJ79cbSHCS9oKuQfm6MdSwsvuHUhRDKiRS8aY7yS8aYmB81o4yCZCTw23lzTzppF7hpj6dwe5aqET35CFEcPaUZI2nKHn2O6d7np5JnxZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MJP42+c30atRjZ5PDnvcdkrwLE7N1JCqXL6aeRzRkpo=;
 b=HaBwgrzO2dFNg5KEaj1aGST2o8IZQIGeFXOp/IhzLSaLoyCPwq9iwvSTqzaX5B5/fAcWkX52x7Ut5N391+QleJ2H/jv4yR4mNCEv/O3okfv8c6tm6tCvidS1PgjLqQSez9l6O4eDxjpOGe4o2cvz2M5IaYiLmcSfEKMb1lIhDYLYgXpV00zg4IKPu4JdLLkIzR1svIwpDLyO7db4qBn5X4V325WAg62owYCVGisAwzqYtlxWtSeQna0Ap/Jsoo0eBlY/O+NP0uW0DiHDIxt3pAtVcDiIyl7aWEtgY85kuFFSC6yokk0TBjY4gH9xCrlFqcvOjuvGAydUdE8zFbH/dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MJP42+c30atRjZ5PDnvcdkrwLE7N1JCqXL6aeRzRkpo=;
 b=Kt3V9xPh9F26ZX2kTF7At3LwwcT7J0YtUkrXyCB/uYvZiIQLqXJS5ebMDvgYviP1zOfB3Bi4OLdIFL8x/wtn3GLbbP9f4PgPhSomvUdeU8eXfw7knOROyatJEoXTiqpMqyerEgnBduXlMlQFlaU8ZD99+EKq2KndZCdlcKfZz48=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4284.namprd11.prod.outlook.com (2603:10b6:5:205::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3348.16; Sat, 5 Sep 2020 03:13:23 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3326.025; Sat, 5 Sep 2020
 03:13:23 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net 5/6] ice: fix memory leak if
 register_netdev_fails
Thread-Index: AQHWgUIULrUbRhVQGkCcSCpCSfwIRalZYl/A
Date: Sat, 5 Sep 2020 03:13:23 +0000
Message-ID: <DM6PR11MB2890A421017DDAB67C7C4F99BC2A0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200902155347.16972-1-anthony.l.nguyen@intel.com>
 <20200902155347.16972-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20200902155347.16972-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.215.99]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b3ef825-471b-444d-2e85-08d85149a62d
x-ms-traffictypediagnostic: DM6PR11MB4284:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB42841AC3827EDEF580000789BC2A0@DM6PR11MB4284.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tAGoNiEQ30rSjAstVjKVKvlrl3wtJmxqA64R1qLOvHogb6yCJOdLeRTndgfIKjXUem+IooUqaTDVV6PDqpuWFtXsNZ5yIGYQGgFY8hQAN8deiLe6hWaH3qNVbkuvX6ZXnLZi4InYeJ4KWsyh0R6jMuKa06dlUv6N0FoPfBYGh2zaymAjrViAo2lbk2dZu92AFeQOyrd555IklMRy7A2sIjjECATn2Fq0OJh5eY0VBJCKe7Z/TaIc4eICToGDY2bJ5l/sr9T4mIrgeWb9U3jhCortyL94EBes5XSfGB/ElIPjCJWh2M0kCCBVFhOitVJ4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(39860400002)(396003)(376002)(346002)(478600001)(110136005)(86362001)(83380400001)(6506007)(7696005)(53546011)(33656002)(8936002)(9686003)(5660300002)(76116006)(66446008)(8676002)(316002)(52536014)(66476007)(64756008)(55016002)(26005)(186003)(66556008)(66946007)(71200400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 5rpG6tqh5/jyUg1gZj2LTKYlPVzN79DyGa6q1hszz2WWdqFzoqlcothFI2ogrZTdZiS1W/3RvKU79bYKZf8ynpjbMlq+mZ5TAGjfQWDqvhaJ0raMHFo2yxSNGTJbufG1gFNmG4Ahsdndhr6C02vXH/ruvxyzf9JWBG/0A2IvswozPLll8K4Jl4MABqKd+2K2iZmckXWBwnshd+q+jKKdkOMkJ761ue2BvdJLKSlUH2AuZbM4tQn2w0MJj38BCIIpCtfUnVEpZgmkS3AwzptwAnK0qK/1t4uD8kLy8eYESIyRXtV3B6C6ZBZYcKjLow4TIg/4TEoe4WSccHKa3cTJHD4W8fd/ragJgWfAQA4JeJpX+1Nf3NiUyqAj2712C5hs7iHjr1pEfom/oGpBjXUjHct8B3X943VxgVUedEOKb4o6yZIpwgcCv6kGyvJDO1Y7jz7Ha4uB5VZALw5MLdHlTluTa+XNMRFwVntzvBjKtRaBat7qgZtN/69RM9KpHrNeu8WC4BOD9SW5hGLlCGYuBQJkRMao5jpFsDEbbSXPWUSytLsfd/3dEv6YvsPQw7dYXqlvNP8D/hwYYWXZcH04iMOUx8vfMRB9ibhPVcNOaeSOtAKCFEkmxfhNNApX+V3KaDP/LV64TzBW0Oqeexp4XA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b3ef825-471b-444d-2e85-08d85149a62d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2020 03:13:23.3417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +viuApMEFgEaFGpj5vByv9CHk66evjgH17weNz/FeeaFYlwdmv7yH2RlVuMLD7VKrZZFb2Ius+9/gdllYHpLdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4284
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net 5/6] ice: fix memory leak if
 register_netdev_fails
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Wednesday, September 2, 2020 8:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [net 5/6] ice: fix memory leak if
> register_netdev_fails
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_setup_pf_sw function can cause a memory leak if register_netdev
> fails, due to accidentally failing to free the VSI rings. Fix the memory
> leak by using ice_vsi_release, ensuring we actually go through the full
> teardown process.
> 
> This should be safe even if the netdevice is not registered because we
> will have set the netdev pointer to NULL, ensuring ice_vsi_release won't
> call unregister_netdev.
> 
> An alternative fix would be moving management of the PF VSI netdev into
> the main VSI setup code. This is complicated and likely requires
> significant refactor in how we manage VSIs
> 
> Fixes: 3a858ba392c3 ("ice: Add support for VSI allocation and deallocation")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  |  6 +++---
>  drivers/net/ethernet/intel/ice/ice_lib.h  |  6 ------
>  drivers/net/ethernet/intel/ice/ice_main.c | 13 +++----------
>  3 files changed, 6 insertions(+), 19 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
