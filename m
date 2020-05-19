Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2451D9CF9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 18:37:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 41F4B22D44;
	Tue, 19 May 2020 16:37:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kHb7uuJrM6g8; Tue, 19 May 2020 16:37:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DAAA622902;
	Tue, 19 May 2020 16:37:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 147131BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:37:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1092A88047
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:37:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l9EWBxTYEBdO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 16:37:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 76BEC88026
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:37:39 +0000 (UTC)
IronPort-SDR: TsGtxUm5tyK8Gv+BbGtx+BsU5RmcOn8dHpIcoqYuulYXpY63kgCXr1wVHa0WVN9AVWfAylbUX/
 pRNDcMPKu5Yg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 09:37:39 -0700
IronPort-SDR: YDBkID6P0xnkfuYKquowm1y+coFZboQNUcVCWcsHaCcF2CGjL+Iocd5uLy4Sov5f9C09Upsgij
 z9mPw4uKzlNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="254773564"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga008.fm.intel.com with ESMTP; 19 May 2020 09:37:37 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 09:37:38 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 May 2020 09:37:38 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 19 May 2020 09:37:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 09:37:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SfbmjSIepQ5tqg/HHt05wvofA6VBzqcga1U0HDgx507mb/3ANa2Iqr+BnbGmjkasBWTSfixXbH/b8cZmqclZiYnGbnsJsvT1wutsDFQKt+xDRb1Di3KdOwV/IqoXNhXw5oipvkW4imyf6Ee2TAtbGv0tMk344sdgej6u14rmsAFzwvkqR8YFPQPbdxtmlrcfHTEqILcRUx/FXBJf5797XGviNGaFoG+aqKD/kb7pWilDR3DAmdZxO1ifDd5SvOgB/vKKdRilKfGE8LNUgp6h9CTE9V1K3yOtUnZcUirGGf2IHiCGiVhpRUKbvptWI9N6QuSG+fN4ykPGQrO3yAxyoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LCMReD61v7cKLOnrsMJeB1nc77dBF4EX+G2pj7S7qf8=;
 b=VgqGbH7jIV27E+7ZyAVUaMgsMy2PbyzuKYRZ77Y1kAI+dkBqfJHarGaraufqwhoLdyleowNhfx1/y4QDosAnZACpkv8GKeTPYu0kamUORfkjsSeiOnvvqepHvtftpzZ0FHzXwFJGsIH9kvJtm3BMLw0+uF7mOq42Z8ZGzHa5Kjutl/0YyXjZN7avKfahHDap3Jq1s9A9fTgzbtahgBNM2oN373PFgWipH6uJYrYuzMA9vNnF2J9Thm0iu+aB2rtMdz0Rv979ENsA8EahnZWg5iN7DWrIYLgvEvxuxyKd7NbsVlXNSQx6XeZ0+sktVbciZZGGs1yn7zfAmfu0WHW+BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LCMReD61v7cKLOnrsMJeB1nc77dBF4EX+G2pj7S7qf8=;
 b=iuS5p1yKDmEIJojq+ax7N0REqCgQwvxZBJ8bdIPa4v0XRgiVN9ZhaG6fbQFd2o8sx1Q9iWx1x0aKK8PNFBx/48ZH4mWRHIbk1wjj30+ezJizz13T3y3fM2svSyeD/CESg95hMdHQqOTffdlBxaeIVR/fpLea/fwL7uSktzkS2s8=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1642.namprd11.prod.outlook.com (2603:10b6:4:9::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.26; Tue, 19 May 2020 16:37:37 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 16:37:37 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S42 6/7] ice: Restore filters following
 reset
Thread-Index: AQHWJ/lc3Ze7bv/4rkm6eBPbSO3J2qivp5SQ
Date: Tue, 19 May 2020 16:37:36 +0000
Message-ID: <DM5PR11MB1659EA592E541FAAF9B9CC1C8CB90@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200512010146.41303-1-anthony.l.nguyen@intel.com>
 <20200512010146.41303-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20200512010146.41303-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3838f509-f496-4aa6-f9bd-08d7fc12f07b
x-ms-traffictypediagnostic: DM5PR11MB1642:
x-microsoft-antispam-prvs: <DM5PR11MB1642A89C7F0E3A4F2F5EB77C8CB90@DM5PR11MB1642.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:843;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ofdW9AoXwZahHr6jh0ph2pw11yhQP1QN9q112xcKiYYeR0ktsVsDX4dKQf7A1kmiNRvaiVMLc8QkM+/Njl3RFcnjhIjcViKXZ58Kd9jHwukQbeG5dcMRXYoqv7N2bpbzYoOlbUZvuLRRK0z358cdPC8kir62e+CSzvzFrUVeo2VjylcDCUPFFCGFoor/7egYv2DFzeN/aOI+RUbub/T6PZJSH/ZXYhjmKKKMBsztiwm2CF/wfP3I25AhxMunQkyiodmChMLjbA8jAu77iKtHEbKLdfw0gYbyFBtGU9Au9NVs1VYTjBSA1qtq5P7GCD0eXaJMluHTsXcdRsvrEhtZu40ly7yAKywxaVotLnYJDS69VzQj0kFhmJS6rOjZsefI2ydtK+OBpmLjWbPgIzdRiZJPRE0v1usbON+vR3/0ZgSDHQgPO1FN0Zd4Iepd/iQx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(366004)(39850400004)(376002)(346002)(6916009)(7696005)(66476007)(66946007)(76116006)(64756008)(66446008)(66556008)(5660300002)(8936002)(6506007)(8676002)(478600001)(316002)(186003)(4744005)(71200400001)(9686003)(86362001)(52536014)(53546011)(55016002)(2906002)(33656002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 85LomTwSgwcedgvo8wGqiS6bbJtpfIYf9kjYk7kdYQcnxgDqEHD+YREpfrF5fx/EpPVPF0eYcsoixEUzzTsjPxwIs7xepv/S4bdhPNvn09/lqnj25TpEWf6HRvviR5sBR9YwdI2aUyM3qIGvH/2eKKrHZuMgHezVJIeoMB9yorgt9W4cBkJRgXM2fiyXewjhV/8z/JBXuBOL7SLbNty8jas9EV/sXTtSxsZ73vYYmfEOwURFHL5V9DLuOzT4EhQh5E3ReDfkbuN/WhuxALgtJqen+AiNqJFvdb4m8IjIKR8Cyt31Lxt+AbSVb+MqtbaYisjf7tFEjX4SON11XWX67fOrwD/fyvapPrMYZVdNpUnvhYcq+1CM9z3eFiQ+S301hE2YprGWbVabO2IDiokbSBi910gkk3fLc79nP/htdajgQVdfuEU0qqmbGnZ2RTBGEzyx6RX3f+jqltYzvKMsiU0+ft7tlhV3JaRAXWru+Uc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3838f509-f496-4aa6-f9bd-08d7fc12f07b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 16:37:36.9517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6W3gReKlwTFwHvWzAkz0CyFERaorZqQDwn4bw93eGRWHiT1RTTgHPPffM94AVH+VYxEZL7Y5k7HjsdGmJCLvvSsFkUplGt1cUsKYclKYlWs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1642
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S42 6/7] ice: Restore filters
 following reset
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
> Sent: Monday, May 11, 2020 6:02 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S42 6/7] ice: Restore filters following reset
> 
> From: Henry Tieman <henry.w.tieman@intel.com>
> 
> Following a reset, Flow Director filters are cleared from the hardware.
> Rebuild the filters using the software structures containing the filter rules.
> 
> Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  2 +
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 65 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 17 +++--
>  drivers/net/ethernet/intel/ice/ice_main.c     | 31 +++++++++
>  4 files changed, 109 insertions(+), 6 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
