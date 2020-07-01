Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79047211170
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jul 2020 19:01:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 35B408AD43;
	Wed,  1 Jul 2020 17:01:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2YuJN1cCHiLt; Wed,  1 Jul 2020 17:01:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C51AA8AD45;
	Wed,  1 Jul 2020 17:01:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3CD741BF868
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 17:01:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3706A8AD43
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 17:01:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yopvLF0byVSi for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2020 17:01:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 093068AD3F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 17:00:59 +0000 (UTC)
IronPort-SDR: PWz4YNt3i01ve90IYbVzoenjeu+5z1lyp/nxnBbTGCHFBkB18blNCA/Dio3O82aa+JgofFt7gt
 PUKXNVu4apbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="126733065"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="126733065"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 10:00:58 -0700
IronPort-SDR: xhVYjrbZPSnoeQl3xSaKiAfWK3XrBkg25CLVmF6ZOkyKxvBHVcjwd9+nHiVC5AV9y/a42DXhrl
 Q0jTDaisft4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="455171721"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 01 Jul 2020 10:00:56 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Jul 2020 10:00:55 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Jul 2020 10:00:54 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 1 Jul 2020 10:00:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 1 Jul 2020 10:00:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fdvdsWUYOBbKOUqSRgmWoZxi/nYrnmAtFJsg8IwS8qYLeOvAwwoTqVFeGFMz8CN1QlMMAey70wDgZQ13SNG2vZ+pLEdisEhB1TtmCH3VeXW4qnR4pnV52di5fF1YkRjBCCF+CG8hf8KBVES8Vgiprd4xcAnNnnUzSGjidQmH7jrqh0e1YWKAI9pYt+tNFQEQrOIpt/LiLauM9pXescl/opw8/2qtwjyU2k8iN1WWRosCn3mG8IXFuvGrlaGG6PPCILXlPqjyRblI/tZ23hp1CUyCKJIxUqFiHNThFDPn9/8bufdUCE/weyit6hycP/4v6Wshtwgt1ZQc0iCEYl/kfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dt1KaI7anAoMTKWbBHedMdO/QS3rxOlKNogm4AueNYA=;
 b=EAxJMJujy5tN0G4eaOsFxhXvw2285/xDd7U7obgaR5T6dXqdMo8eLpc4TYcYIpB3iFKiw8o1IAS6c0v4x3EgkCxvzu1grWch8CMHAVbu/9BWDG42FdFZeUfGZCCgLponTM4FQfvdYVPH08O8vbFgaelhQp14W4sBf8EQcj87OaAhT02dPs6rL3EXjL/wPoE6i2KPFdP0WgPuSWhJt2f48uUueH0O5zxl/7Wb9+RqvQ1ga6O/0estlHPBG1arExe2v6N91+xfSAzwrZaU6fHRhUCFVJhS8Zc75DTHZp2ZHz4dt319dEltVQiDgcwrHfBEyHA+1YmUyswFUYoIsdVZ/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dt1KaI7anAoMTKWbBHedMdO/QS3rxOlKNogm4AueNYA=;
 b=bfF9o22M2wxOw4+uWvYSw0Kvv3prDYtaMYtMsjV6gw/rKm+8UNsMQ/2xFFSLcQfsqcs0z4MNAxXvospfctkM0xuNoYsUGFtMYLG3AK0NJy9YI6DgKoaSpC99pd4D4iOnxYMdiedjtjh6wGZAJi43gv3SktPdkMSDWU+aWfuEifs=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3698.namprd11.prod.outlook.com
 (2603:10b6:408:8a::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.21; Wed, 1 Jul
 2020 17:00:50 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3131.028; Wed, 1 Jul 2020
 17:00:50 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 3/5] ixgbe: use generic power
 management
Thread-Index: AQHWTfghDdkZR8QavUuIabTpLzpIvajy9ihA
Date: Wed, 1 Jul 2020 17:00:50 +0000
Message-ID: <BN6PR1101MB2145F17248D73BF3C751F99E8C6C0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200629092943.227910-1-vaibhavgupta40@gmail.com>
 <20200629092943.227910-4-vaibhavgupta40@gmail.com>
In-Reply-To: <20200629092943.227910-4-vaibhavgupta40@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9aa84633-f54f-40d6-803f-08d81de04ec7
x-ms-traffictypediagnostic: BN8PR11MB3698:
x-microsoft-antispam-prvs: <BN8PR11MB369862D14CF41B65CE0D585C8C6C0@BN8PR11MB3698.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 04519BA941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2PmyiLixWkx37JP7foTpy3Y3NjQWesatj9cjkOaPmTBllwGU335VYYLLr1o7JS6fSy/alIEr6fXKvc8sO/FpufFDVkBcP7Th9noR83a3pDAYQI3z3wuIyzgx1HDKZrg+hB9jV4ZRPDd5x0UM4dVjZiw/cPWstnTypjAYdMXVLxZlnnYncjfputNS5BzxFxv1cXSgIUzdFJiFGk7gMiicRiqJ3ufFU4aVESQPHVwoKPute6glhhXquYPPfYcoxBZKSSfsj3VwTgq6pQ342pdfGjMBmyf9W7B/yi53DkHM2vo4BgXoYb1aLpneHDfV3ObFQGNsVLm8E8csU5hlNu0yZpr50rZbq5YLfaGJtESFoOKJZFeeEswEsu7fm+MLM1aK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(396003)(366004)(376002)(136003)(316002)(8936002)(6506007)(26005)(5660300002)(186003)(110136005)(64756008)(83380400001)(66476007)(71200400001)(7696005)(66556008)(76116006)(66446008)(53546011)(66946007)(55016002)(2906002)(478600001)(33656002)(9686003)(8676002)(52536014)(86362001)(41533002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: rT/52W+0ZYu3qLGCvyOWeVrN8JeDw9dHRdRnj3xAzEhfm4z+XXmC9EhrP4t72LvF7muStkJrRZVMxnSH5xqslcLHQpFeDrGPbNn6VURdTkE7ia7poTHddbZUGCyB28x88yE1j6fppN1M0l3P+aTiioXlkjWCLs6EsY6RiEhmoHR85Mc0ewI7XU8s9Rk+jEZLF22/qtVPkXl/OQMRfswPi3U35GCKBJCOHyHGeiEZjZKfwyr/kCkGfJ6CrOhqos3FUfKT1ujNyjnvAKF1qAhpuYAJCtPTAolO1p3LHe2VdP7J/2FQR4vYsScXUlZHQfsalm10pNpavo1lKyBuxlpBAid7xf452ApxEgBu7qSbU50g3WqJUacpbUk/0NqqU85FWfMCDKJXoR+cJrACioYgCPfrDsXYuYAENFgQdaKMCpW3rqiJinlcDkwz0SGkX/DNS38EIrhdo9ISW64wUZ2TVU56gtxkuOQHSyQFHH1JzAE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9aa84633-f54f-40d6-803f-08d81de04ec7
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2020 17:00:50.2823 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rkp33QzfelOYMgdlnMRbksGSTStX5V2iuKWusZqbJCB+QKnVuMSGK3Ss4rxS2EioiddlJpjA5MqTow9AZpuHKujPR3XKRS+Dchr9i1bm+Xc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3698
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 3/5] ixgbe: use generic power
 management
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
> Vaibhav Gupta
> Sent: Monday, June 29, 2020 2:30 AM
> To: Bjorn Helgaas <helgaas@kernel.org>; Bjorn Helgaas
> <bhelgaas@google.com>; bjorn@helgaas.com; Vaibhav Gupta
> <vaibhav.varodek@gmail.com>; David S. Miller <davem@davemloft.net>;
> Jakub Kicinski <kuba@kernel.org>; Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com>
> Cc: Vaibhav Gupta <vaibhavgupta40@gmail.com>; netdev@vger.kernel.org;
> linux-kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org;
> skhan@linuxfoundation.org; linux-kernel-
> mentees@lists.linuxfoundation.org
> Subject: [Intel-wired-lan] [PATCH v1 3/5] ixgbe: use generic power
> management
> 
> With legacy PM hooks, it was the responsibility of a driver to manage PCI
> states and also the device's power state. The generic approach is to let PCI
> core handle the work.
> 
> ixgbe_suspend() calls __ixgbe_shutdown() to perform intermediate tasks.
> __ixgbe_shutdown() modifies the value of "wake" (device should be
> wakeup enabled or not), responsible for controlling the flow of legacy PM.
> 
> Since, PCI core has no idea about the value of "wake", new code for generic
> PM may produce unexpected results. Thus, use
> "device_set_wakeup_enable()"
> to wakeup-enable the device accordingly.
> 
> Compile-tested only.
> 
> Signed-off-by: Vaibhav Gupta <vaibhavgupta40@gmail.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 61 +++++--------------
>  1 file changed, 15 insertions(+), 46 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
