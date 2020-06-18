Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E24A01FFA02
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2020 19:18:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 52942264B4;
	Thu, 18 Jun 2020 17:18:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A9kzkSJfl1ZF; Thu, 18 Jun 2020 17:18:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D77C8263FC;
	Thu, 18 Jun 2020 17:18:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C631B1BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:18:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BBC5A89511
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8HRaTjItyRX4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2020 17:18:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0E351894C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:18:12 +0000 (UTC)
IronPort-SDR: Ky+/g1BVtZCIqmTKKWLzzmZJqphL3czRAoeW4LJGhpLMdoeeg1N7HsV5l1S014FGmf1FnHtrrm
 fH0xGgr89Lgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9656"; a="122415329"
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="122415329"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 10:18:11 -0700
IronPort-SDR: MtFDETqBMvqbIQWvxtEhj0kbihSAogk/lj7DcqBuPOn0/mZzxfKln1AsWFRwsHJjqVWYPqVHP6
 X+gSEye2AeKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="291839706"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga002.jf.intel.com with ESMTP; 18 Jun 2020 10:18:07 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 18 Jun 2020 10:18:06 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 18 Jun 2020 10:18:06 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 18 Jun 2020 10:18:06 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 18 Jun 2020 10:18:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TzVlYTjs1fN29Nz7B5Hflqmk+EOe4ZLVz5IkFS68OpYXGPy62gEu1+tfKXV2va2Uo8nqA+mSeeqctfY+mYDlF2bR+f4mxRvYebnSkLG4GrzeeR8mWwawF7kdYsT41JDDssH++R0UnMqJVLSkakaUFWjV1LKkI1efue2b/PqnT1p5xOGApSwNhNK+Qvgua8+PS9ebe5RRDpLKfXwQn14zrgbFATQ/+5404UBXAb7S5ToEWc/Zix8iOtBE29O+UP8QnYkgw/4sOLwmmxhoSyyFHeKLTnTKUcgfW0uylHZfTGnmqq1RF4rD+ZY1BKUqgEuLMw3bRWqROx48RRsJ+1nOiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZIMM1vGwriNBtiQaz9h3c8Q8wBoZ/EltVnpTMH5KacQ=;
 b=lQSCmuCdqMIvMqHfEtB1YjG0XtGLniEUxHAhYGyqRs7k5vMNtJ4dithv5MwmMF9tNk3GbvZMBpx90E4X3TeHvh/iNEgJXDbCSZtGvnJFvf6eoqnQ2uIw/NJR6nUcNDAgLi8WWabaBk6HppN7m8filNrH1VhuitnDkr3OWoMZoMJIGp6pk5atpuviwKCpQ6p8m7BWkWg4UIrma+0WKkZaZazKX0uapK8yCKX/pn0kTuWR2BRf3mPw2TYAfvp2rq7pvMZz7jomgVP/CLC12AcwIiUNUwTsjKoyXl+NzGJ5PY1OzHwazY9jOyeYPqY+fDW4m5m0X5POJ3kFYq2I4QOKUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZIMM1vGwriNBtiQaz9h3c8Q8wBoZ/EltVnpTMH5KacQ=;
 b=GB5BNtqBQ88TmPj2oza/GN5ZPRukQidoTb9NcvuH8uYIswbFqovdpA8pnbbJ2DKz5AuvCA1YwdTKp44K1EfVv1V2GvcsFmgL5+XW/gPw5zQ0rPyR0AfsTaM+BFkM584F9g5vqCTCxyMrGWOkHp7WBUkx3rk/h/XMV72u8PSocQk=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1259.namprd11.prod.outlook.com (2603:10b6:3:15::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22; Thu, 18 Jun 2020 17:18:04 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3088.029; Thu, 18 Jun 2020
 17:18:03 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/6] igc: Clean up rx timestamping logic
Thread-Index: AQHWOgNw0avHF5X9o026DR9alkVffKjetJhQ
Date: Thu, 18 Jun 2020 17:18:03 +0000
Message-ID: <DM6PR11MB289093D87D5DACF030E9AE32BC9B0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200604000105.15059-1-andre.guedes@intel.com>
 <20200604000105.15059-2-andre.guedes@intel.com>
In-Reply-To: <20200604000105.15059-2-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54ac72f8-bf63-497f-f5a6-08d813ab8f6f
x-ms-traffictypediagnostic: DM5PR11MB1259:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB12599C4292137A3F919E249CBC9B0@DM5PR11MB1259.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Kk19u5p9AD47sNGYUXkGuVtPifc90a8WvVY8GuNg1hVtSxWIkyfZb0vgk/pIRI+bCJf+f7eJvETJuP7D6BL75seaeujwKARa93pyLQnrn++M5IeMhj+N9Hj3WX1BGT9flDM+1i5SciNzrXPgwBZPfK8T7ayO1ef1JPpoiBxDAYaVna9RK1bHFSUUCAEjQHLQUKIqR2qtlpFnblep8IQ/rMY0Cr71KLyynxyanFc66j/LDX9PbUifEjPFT0tTuBLTt+eT9gfhLLDr6bRsh+uJmkng0cuOvLrhpd2r9Lv9qUm34AMpdg1d0ngeYPYcfF+9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(346002)(366004)(136003)(376002)(8936002)(478600001)(55016002)(2906002)(86362001)(4744005)(9686003)(8676002)(33656002)(64756008)(76116006)(66946007)(66476007)(66556008)(66446008)(71200400001)(26005)(7696005)(53546011)(6506007)(5660300002)(186003)(83380400001)(110136005)(316002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: W4x8slADzuqQL4DJhTFjs+X98Y7e2LET79fLMgefBQ6kXFjLj5xrV0YvoTll6Byv15KK8gSdjpRTAsjMR1nwqFfZGXPyE7RlByoyOA9xHhiX7+RqYvJn0cMa8yCGG5JU2a0elOIO+SfC1j1YtUTySkM12rMJO4Zc26m8MpngmanfHkx+Er7pOhL0FiHYPNH3SsfCXEtMaMXMeg9Tpq1GxKzBwEgS/8vVAuI7pLSKbJRzTgKgVyypvFUkC6OJpH4TCeYMfysNBopSYjl8rCTjt7ah9glbh/DF0n9La3U1cfgQI+Jfth14JNPiixqVmq02ruMQQDTbh0C8MHP08l+y1Pz5v6B8Uf7nDxBL3vUr64CQHReCsUgPn7RCUBr7Z+GBnvwCWVe3p4XNRDWPVMEHLig/4pmgnpW+xduyiyVBCvaNWHSV5Heh8hed1Fx2cPxJ6g264TCIK5Edk8x/CNsBM2zqiu2XaEBiXd2R2toDhKYW093l9KfWWzsDUXlpyqLG
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 54ac72f8-bf63-497f-f5a6-08d813ab8f6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 17:18:03.8720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hW41yPWM9beTcY1JVVbKoPe/JVK2KLk3vuxN+K2S0w4cLKHaheB6oWOKcOH0tJekdszNkl4Acz7IVet8neBL1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1259
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 1/6] igc: Clean up rx timestamping
 logic
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
> Andre Guedes
> Sent: Wednesday, June 3, 2020 5:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 1/6] igc: Clean up rx timestamping logic
> 
> Differently from I210, I225 doesn't report rx timestamps via the TS bit
> rx descriptor + RXSTMPL/RXSTMPH registers mechanism. Rx timestamps are
> reported in the packet buffer only, which is implemented by igc_ptp_rx_
> pktstamp(). So this patch removes igc_ptp_rx_rgtstamp() and all code
> related to it, copied from igb driver.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  3 --
>  drivers/net/ethernet/intel/igc/igc_defines.h |  2 -
>  drivers/net/ethernet/intel/igc/igc_main.c    | 12 ++----
>  drivers/net/ethernet/intel/igc/igc_ptp.c     | 44 +-------------------
>  drivers/net/ethernet/intel/igc/igc_regs.h    |  2 -
>  5 files changed, 5 insertions(+), 58 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
