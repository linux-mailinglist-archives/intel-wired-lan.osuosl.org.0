Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 429BE3428D1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Mar 2021 23:43:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B8984D7ED;
	Fri, 19 Mar 2021 22:43:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kw8QEuoQ7kxp; Fri, 19 Mar 2021 22:43:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25BF04BAEA;
	Fri, 19 Mar 2021 22:43:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7C03C1BF281
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 22:43:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6536884135
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 22:43:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lZ-QW-mAGsh9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Mar 2021 22:43:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 355EA840FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 22:43:32 +0000 (UTC)
IronPort-SDR: WEqxv/EoEeyoh9hYkiS454A9o8fMgULEIMT+2cUSozpUcmHa/Sr729qpoQvGXINARXe1n6+/Xu
 Xqm6a1JcGa/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="177565677"
X-IronPort-AV: E=Sophos;i="5.81,263,1610438400"; d="scan'208";a="177565677"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 15:43:31 -0700
IronPort-SDR: Qxb0nM0pyzQ7FopnHQl+k7F9+3dMiLmtkrIkpJnLgNmL7XB2ZbwhERO29xG6IQwbEk9Mg74uQa
 TDV4YgrXroBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,263,1610438400"; d="scan'208";a="512640176"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga001.fm.intel.com with ESMTP; 19 Mar 2021 15:43:31 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 19 Mar 2021 15:43:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 19 Mar 2021 15:43:30 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 19 Mar 2021 15:43:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oU0XVGFgfnCvyw6ccfoV0y60vAj3qGBvywfnCZUqYQ8ws/XU90Kp0shxBjfESU3/1Oh+6O2Ge6pxcD9M7MXOnFod4J2bvYOu3ZNG807FebOO0GOYW3p74EY/JDGvDUxrFj+1ZsCJzaJQrOwB0DAkJEY3VOPWzdV62zGAu3JNY7UjPTTsxxvZO9F5Z3bOf3W5U/IRcnDwvEIpMT3D4f8kTm+/CCdHldCRkNxtMDsRG/ZBgFHLrLIlpmwwv78hCjbgL8pA66L7OFKedgl/ZsGDRS4/ejhwqJIFUKaQyi+SU72HTN1wbp6TIXMDwsid23Xx0W3StAVPl0Ams/dYizuUMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZnUlzRlGRy1DCcw1VQHNYK9r/8Hwau3NAVj9LMjEezg=;
 b=Zd+wdqeiMImNLu3Gu4y5aFLqIu7Ez5wSZclbWKYqS0se3QMoIjmvWfzPX7FU2oVbKvu4XmFaVYHGSsv/gq5ID7lL69C9JyKNmPIBVqc3jiEzBICPHJOvH2TAGMwN0aozrQblYku6VY06bAzHw9ckf2K9sWY8O7DkCCJyXgB/1s+738BnKvfQfy2tzWgISwfcfCzzon9kv1Ya3m9RB2W2A+Px75xyl87MQnrCyRtMUIZLwz3pH8PROEvrqsvG2AGxG3m3xklmG6BIlWpeOMjqnwkQf/lCcY2qroWzO95NZU4PnybmdXZ3FtBGQTuPmk7NZYMJOPbiBmo1bwD9NiwEUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZnUlzRlGRy1DCcw1VQHNYK9r/8Hwau3NAVj9LMjEezg=;
 b=wrCTrlEfOnNHDkdDgDGUI1vdMEr7pa46egZM1vrElYZzwgy2kXAFWpZF8x7/ykoUgmN1CsvBdDzdoU4orl0AGeJ+1awGj1f+8V4u/UByK8EGM7XzovW6weYtDS1LxgoxOTmBglA1HZC+voEcggfHsXIWQD/5oC15d0CUWnldOf0=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1390.namprd11.prod.outlook.com (2603:10b6:300:22::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Fri, 19 Mar
 2021 22:43:29 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3955.024; Fri, 19 Mar 2021
 22:43:29 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S55 07/14] ice: use kernel definitions
 for IANA protocol ports and ether-types
Thread-Index: AQHXD5FPcxmpFu2rm0as6zmghoXIpaqMAYaw
Date: Fri, 19 Mar 2021 22:43:29 +0000
Message-ID: <CO1PR11MB5105B8247DCA9B3AECBD25BEFA689@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
 <20210302181213.51718-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181213.51718-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc73e001-c77b-422d-b2be-08d8eb286af6
x-ms-traffictypediagnostic: MWHPR11MB1390:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1390BD100F839621A97BB542FA689@MWHPR11MB1390.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ILj3w4GKDdERT7Z6S+479KVKeSWShc7+MgG3Mhadk2qzBPljZKSp2G8KQEjzl97AF0VEcQrB9PUT7IPdBup7NCvhjNTMxoJ8uHosszdsOaPpqbSQtvVICccAM6ozZ6g24xtNgIb1snbiVPFshJqFLfd3HaH1bPsBNzKi5SHkLxOXWH6ap7kTqhTLEQ6bk+AzT+WWQYYo+gvTAXFgQ/jLPr5wSw0+AIz6cMn90SotK8G228YkCrq6s3Lwe3cKniLh7Yf0nooo09Haaa5C9LsUx1i8qpsHf2Pgr/KHSE1kxqmjbOMLwKK49nJrVErHfg2dyGd9y2PybPFyIg/3F1SM4/NzWBshX2z/FziPSgBfYkG6Gpqa6Og/D2VOouA2fGXUt4NHrxwqBOabmQxJjpPZ6Zi2u/w8tMdGKO1Q6G5rIgyXLN6yTnsEqEFj6A2TRYRmAFlGlf6V8d//uH5U79RL5U7banKnOkhbydvKuoPa0ezlkUnB3TFW4rCnBzu1FYoXNLcnppOsU+cuHOd999cr62MnODpuhh2GcoVID3WHoqiV75mg2KfPbif/GlfRQJUMXGBVGfVflAe1BBBH89Zy5aYkAey6S8xgMfYjPV+GFNsj3LgNaBooZfZ4CftM40YfWNsaGdJQ1OhJwBwhIIarzlpydo7kPFUKw3M1btufvQQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(136003)(346002)(39860400002)(376002)(66476007)(55016002)(33656002)(8936002)(76116006)(66946007)(4744005)(9686003)(66556008)(52536014)(7696005)(66446008)(53546011)(6506007)(64756008)(478600001)(5660300002)(86362001)(38100700001)(26005)(83380400001)(71200400001)(186003)(2906002)(8676002)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?5Xv5ezdtIP2B3WVcG2s5CdOiUuWtKni86gEQDBTwvKFr2a8Qkpkd5cQ6hm+s?=
 =?us-ascii?Q?u11H8kueWYMlvPT1aptx3fuim3mE0oyvboTgHq97VkmY0+Ikvx6VFMZCW244?=
 =?us-ascii?Q?ObYTCnDi3oQBGE91RM6thkplTmQgKCRRw0D/tYXEiJ1P/ujiZLiOP6mR/0Dd?=
 =?us-ascii?Q?nxAm313j/OeI5R0//NDnPO8FurbeQEKV0wRxkH3Txk8mEOaXW5AyQ527g9Lc?=
 =?us-ascii?Q?apcM/AD7TFgH6dDsheBaMu8upRrBCGfeqzlwI53J1rsx6tUvR6IgfO97qDxW?=
 =?us-ascii?Q?ddu2n0eqiISjjBF0fJNYi2t1EMltfHjCGVR7WoWmZIerQWUb0zngeI9NIgu6?=
 =?us-ascii?Q?Nd5bhnpHyQ2ACZi+gwJD1MF3W++chAZuxI+QkpAkoVMCWfC3CvIY6C2U7utA?=
 =?us-ascii?Q?bJ2mNM2c48aSJBPjUlaBUJmn+7wReSskErP1ERthrUCEyfTHFHLI+2YhqrgV?=
 =?us-ascii?Q?8wzFoaF5Qea+kROoKHWWyRdNv7rA3urm2o8cjZDKJB9GNW0BJdE4WNhof1Yx?=
 =?us-ascii?Q?Zz5m9aCG8dp/xCKQH/qKAczZEYzrMIqOKrtq2DryJjrGwBJOt6IAZBvuet9l?=
 =?us-ascii?Q?XpacJvLWL1OLw9NnqDocLor3S242C5IYqJ77m/iIvOTI+gfj+fN891r/hfG/?=
 =?us-ascii?Q?cVWnZPqG3MNQpffRF59iIOlA4VDeTNiVMQL2TXVZSlaSYYlIDH5qk+oTzJ7d?=
 =?us-ascii?Q?N8Exd68EK6HIFfYieMykm+bbnPLUBRM5FhaxwgIuYVFUzm1LqiVSBWCCKnWt?=
 =?us-ascii?Q?Ne6nLmAHYs0Kv9XcNG3stZ1XoyPeNwzHD2zFbB7SSHebI2tafqvi+VHeI0M3?=
 =?us-ascii?Q?3tuDdKJqmKo0m//uGxwdPXaUFZfXivHdjdcQ76TjjiUfr0qhzn62NHOUqBAX?=
 =?us-ascii?Q?20ojeIMW8bPehYZ/C9UGRl0wbI/5ju2F3EhNZgtEmeD1P+eet8Jt0VJIUUTD?=
 =?us-ascii?Q?/2CqmORQXRi/XUvX2MTvWDnA9gBwlILruy8hopyXNlk4REHLCsp+RqbADMED?=
 =?us-ascii?Q?vgAS6rp21ASI4sx22QrBo41vUcef3sUMn7j1KV70sEt7lSlfHnnYgi1OjUp5?=
 =?us-ascii?Q?70FepIGlm8QQcI+r6+t5YVMpCmNdlhzc615/e+U0lvaqH+LW5AY7ataSGFSk?=
 =?us-ascii?Q?O+wHDaASzVub/vpl3L1I+BCMoffCMyBsqTfoaFhy8zMBxRrdmfP36OOEpaqh?=
 =?us-ascii?Q?gcbfZvwXw5CuRq9nbTkjhFpyZE7djfhLLlAljNeCPXuxKLTwuA+pJbPMI1cb?=
 =?us-ascii?Q?AHXj4D15yzPgqZiAmCO1ldlItUmmCexWQfV2Ut0SV1dvndYrEYCoZ9UccI1Y?=
 =?us-ascii?Q?Z3eRHTMMmhv3G+kO1OgKJtrX?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc73e001-c77b-422d-b2be-08d8eb286af6
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2021 22:43:29.7830 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oW2HanM8Tg5yzwEkoGhF5B8H711xAKtgTwzW2KfSqwYhK4o9+hIouAGlxTPHVN134D9SfZVQ3JFjzAuYHtlC+Oj8gZsj/3PTbl/GxT0YU28=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1390
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S55 07/14] ice: use kernel definitions
 for IANA protocol ports and ether-types
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
> Sent: Tuesday, March 2, 2021 10:12 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S55 07/14] ice: use kernel definitions for
> IANA protocol ports and ether-types
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> The well-known IANA protocol port 3260 (iscsi-target 0x0cbc) and the ether-
> types 0x8906 (ETH_P_FCOE) and 0x8914 (ETH_P_FIP) are already defined in
> kernel header files.  Use those definitions instead of open-coding the same.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         | 3 +++
>  drivers/net/ethernet/intel/ice/ice_dcb.c     | 8 ++++----
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 2 +-
>  drivers/net/ethernet/intel/ice/ice_type.h    | 3 ---
>  4 files changed, 8 insertions(+), 8 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
