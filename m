Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C5A228CB6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jul 2020 01:28:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D0D5C20404;
	Tue, 21 Jul 2020 23:28:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AT6rGT0816Io; Tue, 21 Jul 2020 23:28:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AA9DE20471;
	Tue, 21 Jul 2020 23:28:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D4DB41BF377
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jul 2020 23:28:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D006E20404
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jul 2020 23:28:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CkpuBk-HurEn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jul 2020 23:28:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 51E25204B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jul 2020 23:28:09 +0000 (UTC)
IronPort-SDR: j1yhb7RE8516A/YniGLPRuX7B7l7XpMDMCh/JsD8h7QX6wfdlLvnLGtq9ISZz3Qr9gGl/5crIN
 Dl6kZW01qWZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9689"; a="149411599"
X-IronPort-AV: E=Sophos;i="5.75,380,1589266800"; d="scan'208";a="149411599"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2020 16:28:07 -0700
IronPort-SDR: dvwDBAxQwhKdaD/NyuFvRmAYDeiiK2bz8BTRi19RuxGulKFYlD59AzROjaJRBqEBgM5wvxAKy9
 JmyaeC3SSx4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,380,1589266800"; d="scan'208";a="488257059"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 21 Jul 2020 16:28:07 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Jul 2020 16:28:07 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 21 Jul 2020 16:28:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 21 Jul 2020 16:28:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jRJ0dHZQ7mYQEIvHD9jtYYyIBFE1BezOJaf22U1Yupam/Hz3RRzPaQwFuOh8cHWKQTTjMD1IJI4NSmFMkOgd9NCcxySdA6fSryhyVLFv2HqdQ0MqTlzMXz5GJKYNXUVwAlPx59idEKo+VeEQtB54mTql9ms6AG8RbKMnxkY3bLsOfA1MIiZnDTPtBsDCCuIeomQ/cD7wRQdGi09BnyiVGeaYniO2SecQSzR3BToAELwFS2F0oKuSz5sKrLzBx33fWYGN9w/l6N0JY/ZF1BoExoIOlSDtnmPoGQ4VmFsV5LjjY0tgLwWA3tMEh2hgKiKUUkOvbYZCPdbPitxp79f2HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jj0SzV70J4migL/Ahq31iGFFVE30KL9dPvhiXCzMwuU=;
 b=fshipJFXtXDQYzyjhChgZS/JMScJaCxAsoTULUWAuVxXD22kyqaCx6U9A+ujZnd0UFSEQA1x3LtInb66/XTHq26yd1p6mkY4GmnsEnhOZZg+/C5H09NspmccMr3bsmrMTbr9aBP04cuzrDJ3zjyNezSnS98aOYKNo6V/V5WVHFlQyEbfzqcrepE40HlJcdLojFCDQIJVxBj7vGFEuhEebG2n+ItDlhMjECF2ksWML0C1uymvKt/Z9hf9Kd5/Ielg4MZWrrCWHlZC6I8AdcGnU9DOSarnb3fXB/egHjEly6mX586TxnmwLmT/VTrcLmudgxu2/362HwMgQn/xRrr5Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jj0SzV70J4migL/Ahq31iGFFVE30KL9dPvhiXCzMwuU=;
 b=bdVwq9fx7WWcEJ7PJOlLleXvUV92u+9PUPpJ9LM43HkuNUbUOsj/G0CzJTEIGr0W+6J/tLL6a4MwmtpS+muFGrdazxJf+urnG9WJK6Qky3ma6rKEnqKyiE96PYuiILqfyqyd2ez+/C9XZ7No7r46GV0OPmJ+lWHW2/8KVJ/cK20=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4266.namprd11.prod.outlook.com (2603:10b6:5:1da::27) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3195.24; Tue, 21 Jul 2020 23:27:53 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3195.026; Tue, 21 Jul 2020
 23:27:53 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix static checker warning
Thread-Index: AQHWVcNqerXloplOykuhpxvCfser9qkSwXDA
Date: Tue, 21 Jul 2020 23:27:53 +0000
Message-ID: <DM6PR11MB289062EF8CFFD28635145EA3BC780@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200709073416.14126-1-sasha.neftin@intel.com>
In-Reply-To: <20200709073416.14126-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.173.209]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c4828ef6-da2f-4a36-2019-08d82dcdb135
x-ms-traffictypediagnostic: DM6PR11MB4266:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB426632BD30689C59C471B4D5BC780@DM6PR11MB4266.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IGZJZcdXOSy4//lK1YN2Xr2I16qESIzg/LVZDsZwG6HBIt86q0mdSs/GVmO9uSyd3Uu0365E3ipZUVlp9avM7l+ZTqNfpqkPzmSErIdzVUaJuv3fUZts1QUrLXs0P8Aefj3UQO6R6pttcgYZFeG9HpsTTKi1aZWkSEUXHUf5zpbscr6HInXamhp9F6mB7mo9CUg9c2FlOK3SvRMY9dl/NKrihtOP2hodCGAr7hIzH7b7Mx2Bge4LAF0VULBtUOJZUvZhwl1nnYkqF5oK+0vK4FFyr/QuHsjsQSBNWhieKvPc/gFJlJjsSkLruudL9VKS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(136003)(346002)(39860400002)(396003)(376002)(9686003)(66476007)(76116006)(33656002)(26005)(6506007)(86362001)(71200400001)(53546011)(66946007)(64756008)(55016002)(7696005)(66556008)(8676002)(52536014)(186003)(110136005)(4744005)(8936002)(316002)(2906002)(478600001)(5660300002)(83380400001)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 91TX5rSV9ag9BfdcB0QMdx0iNPirZELpWQhGOFt4xfbI8R+rhEDhAXcpZ1gPHdM7A+fHWUC3OrXUwX5FCH3foYxa6+HOi8jtBHf4JeNBibpFDHkp14knowdVrKETSwN9Mhb5AqOHW3cexmIDuRurHK2leW+WREzbmnqHml5ZGqoHvAICP5hkOpeRGI1HRiscG0oE4X9CFr2fmFGq6dVy2BEhLJYxDqBRmWSqDpHhJB1usTFBd+AaNSXfqgf4821Q4sDjo52A/WHuOdo0HdQLLnSGlz+GIipqejI0Gai23SiqT1clGQDrHM+3UbPJSyev3WxxTraAyEAxAWzBquwuH/2VZwA2A/SEaCRAxKSpechpzItApOpmI/TtBqFqCiwjTAPkuk4y4bm8Qm55WjX5UT4C6QRjFnlSPes3SSRhsNCIPP8UCE8w6F8yC0CqwufFgQA4FQ4L+v7AjHiVpgJAX7WXek5kGAazp+rFocIhaUtxpIhaS+IEMxbh8erNqSXw
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4828ef6-da2f-4a36-2019-08d82dcdb135
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2020 23:27:53.6610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VUDaEIruhX34yeDRES7YnB4IYJV9Iq0Hn+72ujxXS3LPPhEg3g/UwrEC8DWnDZaBWt2aR5PAwT+a/hovTK2aZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4266
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix static checker warning
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
> Sasha Neftin
> Sent: Thursday, July 9, 2020 12:34 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix static checker warning
> 
> drivers/net/ethernet/intel/igc/igc_mac.c:424 igc_check_for_copper_link()
> error: uninitialized symbol 'link'.
> This patch come to fix this warning and initialize the 'link' symbol.
> 
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Fixes: 707abf069548 ("igc: Add initial LTR support")
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_mac.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
