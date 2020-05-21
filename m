Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 722251DC7D8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2020 09:40:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F2367203BD;
	Thu, 21 May 2020 07:40:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j5tMMnK9pgZ7; Thu, 21 May 2020 07:40:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EE157230FD;
	Thu, 21 May 2020 07:40:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F3D21BF371
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 07:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5A35786C53
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 07:40:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mVssoCCs2Ztt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 May 2020 07:40:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5991386ACD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 07:40:41 +0000 (UTC)
IronPort-SDR: MxidTsObeSqVMSm1EWFq2q9ljjemQgCYO0s/eKx3UPr2bLUq9YXsLB7A6QJ0+Q05TkwAVQMC58
 3FWcwXcq2+hg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 00:40:40 -0700
IronPort-SDR: 1HPMMkYp3ftlziEqGTidOoLtbq+Sh9uQONZyy/cAnlXQq3wcefQXw6XLLgz2HTrTds7sykMfFR
 OoEhIlxakTvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,417,1583222400"; d="scan'208";a="308964025"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by FMSMGA003.fm.intel.com with ESMTP; 21 May 2020 00:40:39 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 21 May 2020 00:40:39 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 May 2020 00:40:38 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 21 May 2020 00:40:38 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 21 May 2020 00:40:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AbGAz/lrcpo0aTApikw2cT3+YYGbciwJh3BNZdDN8Jvc3i/1FE+nIOncAV8M4MuYWr5S2FiSet04O/RG+rjqoajHfl5ZCMbVg7YpV0mARCE0DjEM03041PxK5YxLxf8HmcCDQ3Armwlvj79Vtl/ChKck+i64M7wiP1xGoqWb8jLmXFvQHxlr4i8NNWJBOPb02EI1L9s0ppNIN6RBEUdLYuNf0txidNgiEmTx7QwPDsEloMbDlSB6OB9VxTdzaY8S8uMBI1rUqubYuouSsZpekgwqGQ1In/e80Q06FVJ9Gz2a9KpNWQLS2BfdAPXBvcmPmVBX7fXJRdqMI8xrFmc2Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cf7PXFffCGjyu296mK+Ia/7AFX/P28/miqQT44yeztQ=;
 b=X2a6+AHAwt/gN/p+ps1yM1YX4nBHmutS6DfIPw8rVQQBlbuzGa01inJ1wPfoOjbOp6Z1fk6FLxCJPuc6hyDDfW2jVTkdTQ3XFVuNxf0rhP51XXjvSPH8qweQsIqW8xOY1NevZqNpGmTidFNGQSEjbcfFnnrXzR/qTpmhB1eNittqYxza8bMNzQ5lCoHTkS/+I8x8c3H7nsZk6wk5t3rrn7oghcYRqIuJT97oXixzJW3Rw0JNiAAdhsLDZ1dZZaHAobRE0g0TMlp9kRIEBFLLYaO96ySuVD/nL6BcsFiA9QfgCoRIzVNITdG/gdx7PB+f1sBVPJ0WNpsc+82Lx2iXSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cf7PXFffCGjyu296mK+Ia/7AFX/P28/miqQT44yeztQ=;
 b=pwQxietuDp2jXrDvMRZFJLr4bZqPk7dVF0MAd7ltyq3Lqe6/k+2ZIXPCCBnXJqwsXT72A2/nrKV+OBXM+DYkJ6QSXQGo/RxB28nLqh+hdSx/Nt+wxN3J1j/BdcOAIL1iMW1TopKd0lbRg5GanKBbDh6CDqoXFnIkMd6qtliwBTI=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4041.namprd11.prod.outlook.com (2603:10b6:5:195::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.26; Thu, 21 May 2020 07:40:35 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.3000.022; Thu, 21 May 2020
 07:40:35 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused flags
Thread-Index: AQHWJuMH5GO1PtsbiE2ePYC0BCCfW6iyOAYw
Date: Thu, 21 May 2020 07:40:35 +0000
Message-ID: <DM6PR11MB289087A560A6916D9E1A53D9BCB70@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200510155200.21068-1-sasha.neftin@intel.com>
In-Reply-To: <20200510155200.21068-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.209]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 304fd4eb-accd-48a4-f3d8-08d7fd5a3fd3
x-ms-traffictypediagnostic: DM6PR11MB4041:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB40413981B3109F52D38F7955BCB70@DM6PR11MB4041.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-forefront-prvs: 041032FF37
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cALBTvmfCisDO/EtJK+SwXa105c1WUWFlKk10O+AQlJl1J1B9qCDafTH76c7+YhP7303SikNnbWwO+EDFSEaffsOkRlk7a0SpGraGo5EQveXfruTRS9zsd6w75F0zZ4V2PeHDrsUBfXxzB/ZyG8DccVAUvXp6A0M4AEJfTkqGN9W4HrBBszhxIYzugUNPOEAQnZZ92s0GuOM4JNBgWpFHXUnXY9z8p8moBgFT3bHglg1iw8f289W+PKIP9seul81hlyRIt5j0GfYvF64oOD+x/UpZg3FuPBkdJojn8hu3OJwiBxtYKIU/KKBoC+v9pJu9lcmwVHg+Sd/XXniDUsCkj4mVuD8363HmxIfNvDH/SQDRSC8fSq1kgHpdgHW9EpAT6rlu4IbrLUJGfLyEs1A+kwXPuHxz97VVAVfoiIQcE8JJUYMwOZgWWUb2MMZ1Coj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(346002)(39860400002)(366004)(136003)(5660300002)(52536014)(26005)(110136005)(76116006)(71200400001)(8936002)(64756008)(66556008)(186003)(478600001)(86362001)(66476007)(4744005)(316002)(66946007)(66446008)(53546011)(55016002)(6506007)(8676002)(9686003)(7696005)(33656002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: jWJvDOcEDUjrduVQOVULv9zt9LubGYqFupgKAqLw9F9S/3L7FqBiExvHu6I/n5IXiDrJTYNlLP3WS1Nn85mifqLveRAiVtFBFMi+PhlTUp/uml+vjdM9u/yv2s8NqAZ2j/r+BcEPwSgWcAbAklsu1ByW+dXumP8HSAh2i76MXbDbFuiDBW/1IzNJ/dR8tsBoPLmmgLoZhzyAj7rYvkWaVmKe/ZqJuf0uyVbIIg7zHGqlLgQNxAJEHFMgeA0wUa3wzoSKITzT3iw275jXZ+0mwVK4XHiDCe8Vjw2ziki1T1NlnOur23b2rQ0iVWgFsBeL/PFBD+mzp++nO8mJz5DQ4AQB2hBjzJ3rh7gYlpqeOuJfEPN8h2Ildqdo+kMkQZ2zL8bBfRXN7OcHngBJc3Hf8FY2fwvOp4zyR47+l1wstcUccJ6vCzEOR0zQaOavHBI3X3KOQTWd9xkuUTprJd+6Yf0NBbEHImkVVFeZU4Nzodm/pR2ouVsJZ8+tpE80KqdL
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 304fd4eb-accd-48a4-f3d8-08d7fd5a3fd3
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2020 07:40:35.5184 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W5cqUMToH5B3baG5aiGrpCuQBfTGAKGUzqY70tg3mD8EoS39Dr+MAnhZ5FGKJPPKcoK6jdpihqGbmRh9MIq3VQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4041
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused flags
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sasha
> Neftin
> Sent: Sunday, May 10, 2020 8:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused flags
> 
> Transmit underrun, late and excess collision flags not in use.
> This patch comes to clean up these flags.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h | 4 ----
>  1 file changed, 4 deletions(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
