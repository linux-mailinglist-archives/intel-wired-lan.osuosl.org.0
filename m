Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E61B6222AE6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 20:21:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9041B8AE60;
	Thu, 16 Jul 2020 18:21:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hxIQxMuUSsy3; Thu, 16 Jul 2020 18:21:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 15A2A8B1A1;
	Thu, 16 Jul 2020 18:21:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7206F1BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 18:21:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 69C1720457
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 18:21:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OLGqy3mP0dWC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 18:21:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 2352B20419
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 18:21:24 +0000 (UTC)
IronPort-SDR: MmAgL7HUkiJX6OZwQBYTNm6N2nHbFwxSn8y8GJXA4ngmNlLbEAhOVQzV4L0uYicYhC/qDZ2e03
 i9E4zkAO09yA==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="149453911"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="149453911"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 11:21:23 -0700
IronPort-SDR: byD278/IfocpfEvY4+Z42wXGoe586dGFMEkeqrIqtChu+Ejnhl5vibuLuTJNcfLsjqKDgPoIVX
 4W/hL94YZLRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="318512267"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 16 Jul 2020 11:21:23 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 16 Jul 2020 11:21:22 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 16 Jul 2020 11:21:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 16 Jul 2020 11:21:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=goQBWGW7EIcz8pczJgiy0127t562ai1bXNvAPBqS0BF+K33pvteck/w+njA5I+lKOsE9mKP9omth5nRiIiyzeqEOeO790bkbmoBuVkF0HKB6zJmvpUHzhMKIqqO0W4br727VtFBa8I2XnkA4lxRfpF0uBa/2/SXlR5We1KN5fAVp8elXJ167eDk4AAwWPdg7K8kDkjRdSmE94IPLhPYi8HICT32oJhDOBz3XTJQ79ymUN6nkeEoX92PLFfJGlvxNkAT0FFRPgkPJWUOAVzyiYkM4msr+xqXIShkUYvftoRFnX+mKqv18/Ga/JmujgF3ojeN5tmQwqlr2KATjnxLn6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=55qpIYDE25OL/NfYpxyTnVqJ3E3f+bs+6JaYYYGQxl0=;
 b=TKKWfuYYSuvTxYKwDwjE6OWEpp1V7tvfODtaEcyphef0ThlxQKtXuKPY/fibMvbxp3xclrGYNJwuYaUEsNbyEiJv3C6pgVEgDrNx3jXk67NWfDefQXwAzTHTco+/oEH1w+9qxcMKaGJGZUZvrPJ1jkZfeeKG5Ux7IUGYoLKQFAL2Pgmu+Gxba3mjd9TLje3Pn52tC8aDSPXc6fZHMw5HvXpMe8B3PY8PgXCB+PuIKRsPpzAqI3bWWufU6WcHa0NepZkqusBhDasftfXsCNkGm3EEKuyhAZG8q5SZ8BMGZkmfrpkTj31MmfT8EzVMvQvRxrrqZo9BzEfoNL7cBHmNfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=55qpIYDE25OL/NfYpxyTnVqJ3E3f+bs+6JaYYYGQxl0=;
 b=ZxOtpIb4HAgBuVaqEmaFgQVllAsAeSKuRpFjzI1/ok8cN1zmUHGlrM3GZsS9qdJX4Hx2M7vHuKCbfjiqmRFUgaQO2tn+7mRYmNoUpUXuUnfZHx9Fdd8P/AaYkdvgwtYXqfwt8DNvOehEiTlg1YmzLP+0TuHGSkeTUfv4gbYiEEA=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4513.namprd11.prod.outlook.com (2603:10b6:5:2a2::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3174.20; Thu, 16 Jul 2020 18:21:10 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3174.026; Thu, 16 Jul 2020
 18:21:09 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Vaibhav Gupta <vaibhavgupta40@gmail.com>, Bjorn Helgaas
 <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "bjorn@helgaas.com" <bjorn@helgaas.com>, Vaibhav Gupta
 <vaibhav.varodek@gmail.com>, "David S. Miller" <davem@davemloft.net>, "Jakub
 Kicinski" <kuba@kernel.org>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v1 5/5] e100: use generic power
 management
Thread-Index: AQHWTfgoFaQac82XOkWeVKZvQ3nVRakKnPRA
Date: Thu, 16 Jul 2020 18:21:09 +0000
Message-ID: <DM6PR11MB2890D1376FC0E846C455E87DBC7F0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200629092943.227910-1-vaibhavgupta40@gmail.com>
 <20200629092943.227910-6-vaibhavgupta40@gmail.com>
In-Reply-To: <20200629092943.227910-6-vaibhavgupta40@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.173.209]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aed97eab-07cd-4bca-99bd-08d829b503a5
x-ms-traffictypediagnostic: DM6PR11MB4513:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4513B1548914C14CD7D60CE1BC7F0@DM6PR11MB4513.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Eb4nbkZG+LCAbmH6DBwYMhjgu4vD2NDacG4bP8UWf1K1O6T8C/PVP48k1xDnZRNxI3wHfluJY4VqLgaG/6CCU30mKTsfRKMEtwmhqE0e1Ao4+ZTI8ZvKusy5fk04DydcvWqy9Dx5IVgn2ZLz3WcTpW1tq/3OhBe4ksV80RauHwIhq0exC1udNrmHAioFERLHypPtUaKAmBId8WJTEzBuvhDu57PGz5kFj9DljxovY+02/2T4HIIb6pRXvDnBPonqXQAc5MPh1C4WpDMkICrYLo8MBu1fUp3alDQaG7jHBfwZURb6YMRQxnnujpqtnwKhNIW2M/nLFqZ86RQKA41Ayg3Wl/Jbnc5GiEeupUE4+ztrmJLnhuNamfTIpvdPv8LU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(136003)(376002)(39860400002)(366004)(33656002)(2906002)(83380400001)(478600001)(54906003)(6506007)(9686003)(8676002)(53546011)(71200400001)(55016002)(316002)(4326008)(7696005)(8936002)(52536014)(86362001)(6636002)(76116006)(7416002)(66556008)(66476007)(66446008)(64756008)(66946007)(26005)(110136005)(5660300002)(186003)(41533002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: LIpgZgKub2Y7h9JqR7uYCDH46jDVsJJOClkqHgqzTcdpFR9gaeK85e3d8hgGz+6NuPUN2HTxXLIrLQeNnJ901LEQ0yT2y8ozt3OyKulO12ksVGyFLil1os6p8ydqTdraSwRSYSYqwv9/HTwHuba5fW349Ns9SxgDf30gDsyoTROtM4NS/Iu/WrEA8jNw27aWjJiSYc5AtH65VP3OEaa1+hWT+p4wIVR7tsNcqHDmrW03+RlTpO0D/YlKIw6Z9RQIS1RQua+C+wuosuRTHHZhGe7C+gVlq/0euz8NIglCGgTGF/JXb+2rKmmnFoMjAiW2Z6km/MNQeyLy4jIi8NybKIm0NfpOnixF8KUnjZzRdjKP12tuATuWV9HctVZYR9n9GSRpUPTehvA38D+2klAWBbrqHrnUZEBGVEz5YZ1o/FeK+qn6uw8eggxqyebtC4ErMdqplRmeFk2Dknsl96Etnb55PdWpHROsUp3a+QIbWoomrzHhR0No4dFroQJU0oI6
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aed97eab-07cd-4bca-99bd-08d829b503a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 18:21:09.8459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AqNcvwEwmIHNyEqI/AIpAb+hS7n3ocaItAG5Gd6DZHodmpdbqVzJG8jEgR4fld7Bg80fbfU6LFO4ynapkfOLWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4513
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 5/5] e100: use generic power
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-kernel-mentees@lists.linuxfoundation.org"
 <linux-kernel-mentees@lists.linuxfoundation.org>,
 "skhan@linuxfoundation.org" <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

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
> skhan@linuxfoundation.org; linux-kernel-mentees@lists.linuxfoundation.org
> Subject: [Intel-wired-lan] [PATCH v1 5/5] e100: use generic power management
> 
> With legacy PM hooks, it was the responsibility of a driver to manage PCI
> states and also the device's power state. The generic approach is to let
> PCI core handle the work.
> 
> e100_suspend() calls __e100_shutdown() to perform intermediate tasks.
> __e100_shutdown() calls pci_save_state() which is not recommended.
> 
> e100_suspend() also calls __e100_power_off() which is calling PCI helper
> functions, pci_prepare_to_sleep(), pci_set_power_state(), along with
> pci_wake_from_d3(...,false). Hence, the functin call is removed and wol is
> disabled as earlier using device_wakeup_disable().
> 
> Compile-tested only.
> 
> Signed-off-by: Vaibhav Gupta <vaibhavgupta40@gmail.com>
> ---
>  drivers/net/ethernet/intel/e100.c | 31 +++++++++++++------------------
>  1 file changed, 13 insertions(+), 18 deletions(-)

I do have several e100 based adapters still working and a few old systems with plain old PCI that still function, however all of these older systems have broken power management.  Regardless of if I use the kernel before or after this patch is applied, or even if the e100 driver is loaded or not I can't get a reliable suspend / resume cycle to work on them.

I did run some basic regression with this patch against the remaining pro100 cards I could scrounge up and aside from broken power management (again with or without patch) the system seems good, so (hesitantly) from a regression perspective I will go ahead and say...
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
