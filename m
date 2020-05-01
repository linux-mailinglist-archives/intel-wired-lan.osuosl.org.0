Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 700F21C2042
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:01:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 215F5884E8;
	Fri,  1 May 2020 22:01:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P8oCpRyb355f; Fri,  1 May 2020 22:01:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8989C88546;
	Fri,  1 May 2020 22:01:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D1A6A1BF59D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:01:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA850884EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:01:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0tROFdoEnIW1 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:01:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 123C2884E8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:01:16 +0000 (UTC)
IronPort-SDR: kCKrxJytF2WYnYm6j1c4/ZEwVnTrgyFV/E7/vzCY9zt8pnyuFXSsEuqbw2YjQJA5AnvXER/1x6
 dxtcwfa0u+Sw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:01:15 -0700
IronPort-SDR: Q3kKnovoBUKTrnHWCXfcJRhNJJWGeEQMLLROx4Tceeeaf4leFADAxOGUQimFCniiLKmRk+x+Dc
 ajpQa/eyQOoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="294004561"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 01 May 2020 15:01:15 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:01:15 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx118.amr.corp.intel.com (10.18.116.18) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:01:14 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.58) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 1 May 2020 15:01:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QBiflpQlUekllYgjHR/gxKhAFGPImjPO2Dnw5xkMn0/fJ6jDl7QQUObh6XhFT9VUtnQJBgBmjNWmmtW44IvvZLkoolhnv/G1UxcJBtcFhvmaxohR7KPOAswJCKN/93fH/XngWUlpNe7fXR5WdaRy5kh6IOK5AHcPwqbKf3UwBEpG3ndXt5kaAgnlFfLFyQbFVwCbxrD8sWScA5JKtqAigQdDd24DGVpuBJCisVqKWVEizlLg6w6LbuVXeFEv7W+WmFIycOuNLjzmjFLP9F25k267ffnF4FpsdafK31jVGQPCc498ZCQNlItwoEYSntouBKypgQOJzbcJXLZshc3mug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P/vlCaTlKpnDAfa9et9BkSMqn6tJQQIGa6oQaZPlk/w=;
 b=jOkzcQEZkJXXUrD+SVEFtTO042TqQRFw7+JDDFXS+Pzo9bWKFMn7p44xv+sZCMqwqBlpMaCenavrmY4d7ZicgCuYgzA38zOuljn9zjLi9M0Uii8UEYsR6OGioqhTbZg8yIHCgkoCH/VdsYDYUXYM3IuTPvFsw4tXeklBc4sD2NDMpqFfEKrIFcTKSswrWlvfr7x3FvZvyJ6FKyP98iSP6R/nYZCg1gRlgMmhAzZ1PvLEhr8x8C8PH2H2ZoT+F3OsXbe8x47EQCLHtQBSyW+F6krrQMO23iaF7m/IYv51gVxczStkiaeYuLZH6bgDG9DRQznfEwyppsr0tzFx2w5WRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P/vlCaTlKpnDAfa9et9BkSMqn6tJQQIGa6oQaZPlk/w=;
 b=h+QtCUvZPNxULAmjrOWAjNpi2XQd4fqXiCVBKjd3wKXe6A9aDORJPpZX5+rer3CDBvOkSF8VI5Z2abPHYzrE3mSa94C9vCNSuA9seywBXb9uQ7bXmjDJmHq00jDGK4SDgGTBpBS3Fu7YvqFGsb8Kkm6up9s0XLJJ1vgTE9whxyQ=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.26; Fri, 1 May 2020 22:01:13 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:01:13 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 01/19] igc: Remove unused field from
 igc_nfc_filter
Thread-Index: AQHWGnVzZGx4KDhpU0iKdS7uE2mF46iT0wPA
Date: Fri, 1 May 2020 22:01:13 +0000
Message-ID: <DM6PR11MB289043495986482C96019E4FBCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-2-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-2-andre.guedes@intel.com>
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
x-ms-office365-filtering-correlation-id: 8c14add4-cfab-4ceb-7b97-08d7ee1b2a1f
x-ms-traffictypediagnostic: DM6PR11MB3900:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3900E2FC153F62AFED5CC994BCAB0@DM6PR11MB3900.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0Smb0CvhqkmavZhFWYdH5KBerMUuTj/We0NmaNXejm7FfpezH2Nn2W1NCmUUtwqEpzjxkgH7+Q2+faUyaEwhaz5S5k4lCoYcxH6EETyx7Z6lkyoJEXXRADWYgq0lelxd1WKb69zUeGLDuyod/1IB1zJX8WYgRsxNW7AM/SAG+W8pjJLQn1sl87M1qVTFg3q3zxObOl1o0yG6WnxxHyaPgenUm4BofQ/slZ9URKicQywNnnY9ozhMkdGaDlqmjTXUr8huuhGtyrxZu73rrqQpLvr0+omWcaymUroCsGaxQPC6dUJLUJvaUg4NGug4mXEYb2JVk1srGFojDezOJLlXz+jKgX43QKLiC2epJH0i98w7ZPwZi0WZMXYJI/HYGDkCTZ6YiRiMh6LUmQkKTnq1EEO5M8EWJ/6qgEUVN2deoH44LsShvS948oogOva5Q7lM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(39860400002)(136003)(366004)(376002)(396003)(316002)(53546011)(110136005)(8936002)(55016002)(9686003)(8676002)(71200400001)(52536014)(478600001)(26005)(7696005)(6506007)(4744005)(86362001)(186003)(33656002)(66446008)(64756008)(66476007)(66556008)(76116006)(2906002)(66946007)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: LQSGUqiiSkkzHE9xCi/oXiCWmU2axOrOVAj8oytSGcE9RA8p15GA2tLqPlN/HU2bFZljWpF8/UmH4a6UrmuQ1y1Dx/PyylORtYn8GlYRtmtany5IdrIPk3yO4IKIFLTd67tmcZ9l31ZRgAnCUPXpGVBoRw0ZQdNzcmlnclxDa9K/8VWV/lBI+rHzSQorX+o+B88vtysIWdKntBiujsWMjM6cdQ4FWa9k0yf8Qi0PfGc3Fiu77YABRZvVNub8B3y2KhLNbnQJjU1h4T34ElNoQth1PhIjy+ffTvbgsE9VLmvhtRbqrVMEtL/KNvkEdaBJuWJAzWiinRMmue623fF8llZTU8zDwCrLNyRPJgQH1urKXVWdRsLKemSaJ4sY9eCB/ZGUHk/0cSjkGlNlKxGtkKIRYHaHdO45foJqnqdfzrqHz852R5D/a5svsuLQhqlA/Wbz+l/RVvtAvKEfWAoTN97hdziFtAtAB1Pv9qfY1JIXcPIfeSHPcR8C7KbkxZ3JO101CkliJhp6qVZKBBEr4Wsvypf/dVrWPQHhDYlJVhlQb7TJPzMhdgaJeKD9HdT0Ilqoodu6XNjEMyW7egp8tIUjGYCDKyh9370XqS6VFDkh61+QTjILFWUTlb/PwtJfdFMryLgHZVfHLty/vUs8NERpbMbYuXsq3uABTGjJ6V7UP6nLLR0RQRy3KJtc+QMuClx1bKtBX3GjO0c3sWRKQ5aNBIEsA7LqAnMilN8pruQFruM2C8k+apMOp8W7Uuae6p2c3ntabicyGS6v7LJNL7+OXZrTD/Qp+3s4nU6w3Gjsv2q0xyH3UjxighkJPZck
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c14add4-cfab-4ceb-7b97-08d7ee1b2a1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:01:13.2929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fFTNSsJUiFqtlaiwwFdZcX6eRTD5oxr8ytG/LetvpN7+qYXkvRMLuI+QOMp+ml4Olv/jGaSPnGkQgOnfpKh4UA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3900
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 01/19] igc: Remove unused field from
 igc_nfc_filter
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
> Subject: [Intel-wired-lan] [PATCH 01/19] igc: Remove unused field from
> igc_nfc_filter
> 
> The 'cookie' field is not used anywhere in the code so this patch
> removes it from struct igc_nfc_filter.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h | 1 -
>  1 file changed, 1 deletion(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
