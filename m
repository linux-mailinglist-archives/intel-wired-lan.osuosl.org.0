Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4D11C20EB
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:53:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F727885B4;
	Fri,  1 May 2020 22:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IRKkX470utsx; Fri,  1 May 2020 22:53:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25B0E8857E;
	Fri,  1 May 2020 22:53:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC9B91BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:53:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 91BF021511
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:53:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IsNxoppRDl95 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:53:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 3549F214E9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:53:01 +0000 (UTC)
IronPort-SDR: QogpFdD748qSZmsULc9o0VQcVOIU5aCunGhhKsnFhAWHw8MkUQN8jL/NTTvqFhfdVU/5o3mmPP
 rhxL1adfXQPA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:53:00 -0700
IronPort-SDR: PZEQWs7T26LQD4MCXlWrOQ0IeEDHgmOkwW0V1iFRF4Q7WYMLLvCyAbnE4bltbKxton5AMBFZ1s
 R96UTlWcNcZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="303656396"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by FMSMGA003.fm.intel.com with ESMTP; 01 May 2020 15:53:00 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:52:59 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 1 May 2020 15:53:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S7BrRFW7QYLG6ygooCEZf+PfVBw9ZM60CPLQLt9gwKz1mRF/XNRcz7kHLZVWIDF4ixfueH/b3A30CEqXLqHSgJPUuObnttWK8ntEnXFPHYBLQsgekeIR+vxtaF5y0UqEVMzC+yaVdkVt0mTbRR7KUWGj3AbYdOMo9fWebltDn1SpkiKTGelG0vDcDbV6Mdw905yLwVAdanaQpYZaJ71Ta9r4/qzs9rPJyNeqS2+Wzk7L1AL+ySBvQHboML5O3L3TnM87pvOmfKhaK/9mTvVUT83k46LBnwbYmwAhRW2EXSmEIL4iHcZzGM0kxBw8yCrTgdx0NbdstZosLRqL5kRxmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1WuEUL0FJvP13S7feE+rcByYAoPwKYMvWsjLduB7LzA=;
 b=ELizYPJxCxeh8OzVjPWzRGzI+NpkyUlftQ+hdnIW7/AzEQo2EyLLrJ/K38dXPWZC7aVAUXcwrMNME2Ea9r6exl9jLqjc5tDmrSg/NISAsxRtFhw1oijE3lg+8qTOK3LKEPX8lPsAshYBGl1Z2A8ZSrFAwgn5WZtoeSMPbsaNzhjcWnd1ePHYaFh9kvwL87UAb+FIRFACMIcgUQjCfUbCWca/81ZsZpufBB1/FkLNfeUaDRr9+PkNUy0jb4Qn27AXDkTTyV2Nie3Jam4zOCADIJiCcwqWGler7bEfRap5VjFRuBTpSBeTLq+VEu/zcwYFwcfHYLUuPz1QbRGBYySFPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1WuEUL0FJvP13S7feE+rcByYAoPwKYMvWsjLduB7LzA=;
 b=zVNwX3xFJT8edq7tNK421fUr16ma2ALBZAg3P6bnFK84WM7gpikMFS2wJeUH4cj7IECoPRGO9TNuYb03/QekqEPERJlafmR1xLixY41OJ7r2ELYNtJl72z2MZXclA8Csiy+PZhlVa+CkgCRJIWScePBFt3XU9kmt/yXCKF+4hhQ=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4299.namprd11.prod.outlook.com (2603:10b6:5:1df::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20; Fri, 1 May 2020 22:52:57 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:52:57 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 18/19] igc: Change
 adapter->nfc_rule_lock to mutex
Thread-Index: AQHWGnWUj+LoROWLBkq2lmtRDpsYIaiT4MVQ
Date: Fri, 1 May 2020 22:52:57 +0000
Message-ID: <DM6PR11MB2890A1F8E6B70B4A7A39E919BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-19-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-19-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 743f8704-a882-46c6-7167-08d7ee226477
x-ms-traffictypediagnostic: DM6PR11MB4299:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB429944A303232841B000CCB3BCAB0@DM6PR11MB4299.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VauXFiRHI6OCbslYGeKZ2YbeDtOUG0pb2sy+SYxvuThQsOye9l2Q1XENFA1dc6bJJNG3Kj24zWUqCa3Q+/k1dKzUP+zATs2aPLU1/5LfxKvnVCmUFqCF1yPz1i9xTu7wfHSs2Lvh3Kbf/cWL0ZE4Cjqept61B7VZGO4uoiToXoKEvYhoTPGGhue8XSLCSt2wQfVqWFSssBvTPfH0OIUMz+KBp26kqj5LHtUZch7pjBHpxZF8UhZvuKBGya2oSkntWQ7M0UOeQnMFouE6Vmw6U7LUF6nCKUQQxd2UL7rdgQrvw+N0N9HVDTlNNopH9w5xuqsXIA3nf7TUiLdLVqbjiDKRY8UIlnOMie/ZQuDz0Omz0f15/v/lIY0ZS5guiFVDtCBxg/yeIox0QjixSL77UE4BW8BicMRkGQElfKoTP3LcnxNndaUEqHNS3dIiFJ8i
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(136003)(396003)(366004)(346002)(376002)(76116006)(5660300002)(86362001)(66476007)(66556008)(64756008)(478600001)(66946007)(52536014)(66446008)(316002)(8936002)(9686003)(8676002)(110136005)(7696005)(53546011)(6506007)(55016002)(186003)(26005)(33656002)(2906002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: BbTH3Qrao1iWM4UoaUiiT2X4cFMhjt6vL/eylxg3Pky+fOFrpv7mx/+LG5G1DZKz6gXuimFCNp0FV5AHGeJ1okKfg20UWWQB8QGmFjrsfEqhUxf9ScYaNx4zjDvuHcqZK6/0L/8cyxQQBrhSA61iFtsgQ4v3Rh/a7NvyFd2mvplBbyXnNR2IT+iadlVN563cni5yInYwN97M1oeRANsdJHb7ul/Jk6QV0nS1DBM6sJSUjtkvhPjU8X5EhS4hXoW9SCaWBinndjQUX3e66viwRzRdcPq11QScXrz9KqOXnwsdY14WiGPushOQ1hhNdaoZx6n0d/PPdktjjdt5Ulh3Ats5OPGaR3YKsMLTq0NZdYjWE/jl20XewHEdElHRbHLIdTMXN/ep1iE0irWcdGmSAoeiqJ2nym1U3bRxyZxU/Ni2isQZbkZaF08Ksji2jvIOeE345XbL0E8xlcyEN6kuL0sVzusenS2VNLewZRruC2JtadUge9XnFWEnDeWbL+8y+GcySRfICs72yXE8UsklW4SRxChZSs842QzDUTcwLjHTjElw7/47G3ILL66Phmv+RctzORkFoC0sknLZBmlBsaBO4jS43J1dAbdszjfr5z2KnvuExXsidmTOSN+dgbGk+QHma5n8lO2+RrRhIbUAjjmu4ARBWR/J3rbVjqeMmGFZX11TCOAX3hxmC9ZqaC5rZj3QHAj7tijGhqV1ThaR9jT5emnfxfFd6HahSI6a8YkcTNtUAVzUbDUA3To2JjBmnfDKeRQXHTetiCi40vVbjjLUV4W94CMGqERRJdZVIbEUw0m8PvwpEanyRDIKB744
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 743f8704-a882-46c6-7167-08d7ee226477
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:52:57.7193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cYFRV5WdqABoEJUN0029Zf4UnlU6+4wv/3INtwDcggj40li5/hCgPlVVLkSvLzicj2TFkfeKMvPgiiw+pJaNUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4299
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 18/19] igc: Change
 adapter->nfc_rule_lock to mutex
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
> Sent: Friday, April 24, 2020 1:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 18/19] igc: Change adapter->nfc_rule_lock
> to mutex
> 
> This patch changes adapter->nfc_rule_lock type from spin_lock to mutex
> so we avoid unnecessary busy waiting on lock contention.
> 
> A closer look at the execution context of NFC rule API users shows that
> all of them run in process context. The API users are: ethtool ops,
> igc_configure(), called when interface is brought up by user or reset
> workequeue thread, igc_down(), called when interface is brought down,
> and igc_remove(), called when driver is unloaded.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
> Note that checkpatch.pl reports an issue with this patch. The issue is a false
> positive. There is a comment right above that line referring to the lock.
> 
> Here is the report:
> 
> CHECK: struct mutex definition without comment
> #31: FILE: drivers/net/ethernet/intel/igc/igc.h:193:
> +       struct mutex nfc_rule_lock;
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  2 +-
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 24 ++++++++++----------
>  drivers/net/ethernet/intel/igc/igc_main.c    | 14 ++++++------
>  3 files changed, 20 insertions(+), 20 deletions(-)
> 
Checkpatch complains about not having a comment with the mutex:
---------------------------------------------------------
u1322:[0]/usr/src/kernels/next-queue> git format-patch $item -1 --stdout|./scripts/checkpatch.pl -
CHECK: struct mutex definition without comment
#31: FILE: drivers/net/ethernet/intel/igc/igc.h:193:
+       struct mutex nfc_rule_lock;

total: 0 errors, 0 warnings, 1 checks, 141 lines checked

NOTE: For some of the reported defects, checkpatch may be able to
      mechanically convert to the typical style using --fix or --fix-inplace.

Your patch has style problems, please review.

NOTE: If any of the errors are false positives, please report
      them to the maintainer, see CHECKPATCH in MAINTAINERS.
u1322:[0]/usr/src/kernels/next-queue>
---------------------------------------------------------
Aside from that ...
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
