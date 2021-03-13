Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90692339A4C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Mar 2021 01:07:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22142605F9;
	Sat, 13 Mar 2021 00:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 56ZAcQbBE7Kq; Sat, 13 Mar 2021 00:07:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15887605EE;
	Sat, 13 Mar 2021 00:07:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E8BF1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:07:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C622605EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:07:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D0bS8rmySW-h for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Mar 2021 00:07:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4330B605EE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:07:33 +0000 (UTC)
IronPort-SDR: jeIS/5NQHJNZFrSDuiu0CHwFCvOd0yZYuxBTJa3yjfm+/RGEz1oUt+KCYIGefH6h74DbXS0z7z
 oHdREq3x8vKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="189000714"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="189000714"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 16:07:32 -0800
IronPort-SDR: 0bQmT2TOF0m6i6v1nWe35VcdDRiynn4Wnoak0YG+t+ocRKFKakdAB6xAYEfOdjkJ8IGN3RvUcm
 8hYKau6rkdxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="411182351"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga008.jf.intel.com with ESMTP; 12 Mar 2021 16:07:32 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:07:31 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:07:31 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 12 Mar 2021 16:07:31 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 12 Mar 2021 16:07:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fjPsviY2ajLaIIrI8LhwmJh0i1p1Hn9XKstxGulEsM0t4cOsV0+qcNIFUW/XMfnFsqpd3DD9Q9wi3jRs7bTHpAh3e8Iizp88xS2i2VrxgKMlvqtIfMhFy2ehosYAvT1dB6tlE4o42Cf0I2pXXDBH7IW3I9CngBT8YlMfFpgsZqM4cXLHVcpICAEY//K+cXCPTywr8sAQRCkU+T3oXbkjLlspZRzzHmrlOp7heMEDpRItaGqdPpian3jQK/jASn0nmdkHAMeeBsWP0VGQj7I9DgDkx0uyZzeAhJijePJp8/x29iTWmDEmJ38neyZuP7ZDrq+cZolHWBk2SLPK3OL8pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PhJQg2IKVVt//x9NWHMCF6EGHXGTEl2x2qdvo/cGU4U=;
 b=DOmI+tLrxqYaBNbdcaeJhw921M4y2hszq8JZ0VAwpeT1NEC7k2+mWOJwYClRtptS2jEAWdcBS4XNBLnFpB04ueaSm4L8VvmGX+DFG9yVc/07yPNna/tAr80KvLmO/g82MUGDOvVZfpe7QdfmBtnDKcUCiybwAEZ+WHdKxygzk2Xrni1fWcnTTpdkvZG0FIDDuG/0x3iwjWsZAuy/Vp9uRbuWM7Xxz+HpX9qBn+h2yVUSCM/x/LHahLEcQ8TL56QnW/rFAVT7rw4KElhX/0etDFAsUWcB1Yjng3rZg86o7z+UXhuWtpZcharFqNv981c281W4jIr4ceEYdpbs+O+exA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PhJQg2IKVVt//x9NWHMCF6EGHXGTEl2x2qdvo/cGU4U=;
 b=Fa2HSjuZzA4RJ3AcxhK2FQdUHVKqh4XmBawlW5awVWW9pTTnOZl7LNJF2SxIoHulxLmrmjJ+/NJZuNXzVa8dR5pAW2G10bbu8NTNXeh8oBHSRc/Ebc5OKmAj4QN8/Peb3BMju6uvn9P4Qnclj9DLO679CXsCSEkN+F6uhSiL0LE=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB4897.namprd11.prod.outlook.com (2603:10b6:303:97::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Sat, 13 Mar
 2021 00:07:29 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Sat, 13 Mar 2021
 00:07:29 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S56 04/13] ice: Refactor
 ice_set/get_rss into LUT and key specific functions
Thread-Index: AQHXD5GNwifXqMt7QkSUGG8xwWAda6qBGnLA
Date: Sat, 13 Mar 2021 00:07:29 +0000
Message-ID: <CO1PR11MB510535CB4726ADE8689FF3BAFA6E9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
 <20210302181545.51822-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181545.51822-4-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e06fba69-d462-4a76-bff3-08d8e5b3fe1e
x-ms-traffictypediagnostic: CO1PR11MB4897:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB4897B9A412EED567636F05A1FA6E9@CO1PR11MB4897.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: stLicQPBSMqQlz67CYLxxgZBdRUDMp2Yh+Q9rc75MsXNc5S65VnBZL/ovUlpMI68oRLsdgznNSXbOqEXUdhsc29hamp92AGweX7lfSN8qBPGUXdw/CcHu4qJ3ieuw4OsD4uN58hR+cd0wocnzqL1XPzEJhsLOtQcClcRig2aZbGLZDWuDcoZ9eB7zm5hY7+zRUi9TgugY9KyOidaJT5UIFbqgWh+IS4yPl7Y9WyAVyJnnjMlShOB6d7VbLNM2/qIAkBWAUP4DVM2qNWfqZQWomLgBmhNv/8cczx0yFV7w23lJyRALA+zacnyIWDFc91kAkzgkLs+oG/8zxaFf/4/PxV4+42pk513JPxVZz/gUVsRiGOcHH6vvoG/USWPgL4CNRU7sz8qHErlqr6ap2yRukIf+zPR9emgNpWOAI5OEMDOqMAdW9+k6R4J1IP8rcDkvLsLyX8vrJHoS+6dN2yUdUui13A2oTZTDOvWFRhoYtOpJZ3Vxf8YEUrL8J+VhZyMQwTlK1BCxLpHUd+fnY1TCFXNsHQk/G3pf3Um3K7FUdODmzG/6AhSkT99YsWsCPZF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(346002)(39860400002)(366004)(376002)(71200400001)(83380400001)(66556008)(55016002)(66446008)(76116006)(66476007)(64756008)(66946007)(5660300002)(52536014)(53546011)(2906002)(6506007)(26005)(8676002)(33656002)(186003)(86362001)(316002)(110136005)(7696005)(478600001)(8936002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?25w58Xa99Ak6H6keo0GMZMT0IcZQwp/D40y97oY8YFQnurSWgvtsJSG8PAey?=
 =?us-ascii?Q?6C8BQ9T6mOdkfxG2KU/2MNQ5A+z+EAHfpf9pgngmHLOGv4bc1u9n9S9uMGd+?=
 =?us-ascii?Q?OPqws/f0B8xx/ojmr3IEOSBoHt7Y2zT4zaU9SeeVFuu/mOpoV7WzQzrh6o7H?=
 =?us-ascii?Q?fWqyhieR3Nrxy59P7ARJS4Xgu2sc5PskG3G4vBLxE4I+NKAR1LoJH+7CiFv4?=
 =?us-ascii?Q?ym0hXm5ZWzQVn6qP8joYU6Et7n1oD7SDvljbrYxD8Cprvsjahz8KDqtD+3De?=
 =?us-ascii?Q?3/upKxFSbg9i/j6yb4WnKKBqA+WS9zHlwWUWa7jeMfQTbwYLz6SKgG0ZdVIE?=
 =?us-ascii?Q?InAG1Qi8U/o0HT6CR//NSH8xrB3OF86CsjbQU7lfO0yxHJY3Yqzeg5RLS+0f?=
 =?us-ascii?Q?Dy+qoVn7s2q3rRgAS51bKE1WApQHcDz36Ohpw/ccU90hRyD87NfLRr4s6jLe?=
 =?us-ascii?Q?lMJfxkDkBR7CWYHz3J94nQFczQ/mNJesdePrlaTvMmJT+SMcuON8bpIzQRZJ?=
 =?us-ascii?Q?WHGp/2Cv1kqKzTclc0tBTY7firEUqugVlnMoB3FlzGILlAK4sPPLInHyjzsS?=
 =?us-ascii?Q?dVQjyoRpGakPNRMDOK8IixxSxs8049piTxVYqpwXAUT4RAPpxiLfU1oWqbDs?=
 =?us-ascii?Q?b1po4zD4ByS/6W6gbH5NumheZszdEY+YAkON2Q0AbRzbb4uNhW8KjoWiueoC?=
 =?us-ascii?Q?/f3zc8dlcI5sLupYxgXPxAYXp/y3NQxngOaoYPPN2lqqmBUXXwjvJCSv4Jjl?=
 =?us-ascii?Q?VYdshb+KSa0jMd6kYu22NZaqpKeUPASFh8NEhRkzMjOmuBFROY8Kueo034P9?=
 =?us-ascii?Q?IKy1QuMbiGk4apM4p6ebiB/ylKCrDMkEMQah+GDCA7OmiUCIHD3shc/npI5o?=
 =?us-ascii?Q?KDzK8HeKHG0KR/l4FcqTHZWhfhq15s2NJCb1PzR+5iNcQiJgXm6kZ8CKuhqe?=
 =?us-ascii?Q?jQoYjDBYA3VpS83B1dzrYF9wodpFbzwLGEB2VjP+3U1OLXCOUP8JCGPwJeof?=
 =?us-ascii?Q?FQ2KpT2JsgmUTaktzkyd8Tkb7zw+LGJ8DSn1SIUBYSd4VTxKn7xjyGgqqT20?=
 =?us-ascii?Q?TN+gi17xIq99EYF6pz8rX6Ay8Os6yDLSXPnTlAyp9H4NtJXIkdTShNxV2wi9?=
 =?us-ascii?Q?0GRZuvvXxlYGEgXtbfv3tHiBVKl/QOTAj2iAiFlxiNHBjHq6Wc/YMSAQh5Ka?=
 =?us-ascii?Q?wdFgrZrlSpQEX9owqNEf0xAThwW7R9KEmaS+Ez8+AkqEOUjA3IJIO1MSa1XV?=
 =?us-ascii?Q?MOXltB7GzG/ZfKA3DYMcmwY9GBXpZUU+ZQLN0xwdnAnTCLZgXtmQSrlixTHI?=
 =?us-ascii?Q?HYuFpTL62T1xl4UAB8HqA8lo?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e06fba69-d462-4a76-bff3-08d8e5b3fe1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2021 00:07:29.7732 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iYD0Tc/DsQPrjXeRebktnYqzWkV7MShhsbJVvvKFnQICG/TCiqHFcboVIh4rFFX33awLnbxvx3TNaJ38W8ML9Ly9gVH8fD2UiR1md9M6kIg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4897
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S56 04/13] ice: Refactor
 ice_set/get_rss into LUT and key specific functions
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
> Sent: Tuesday, March 2, 2021 10:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S56 04/13] ice: Refactor ice_set/get_rss
> into LUT and key specific functions
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently ice_set/get_rss are used to set/get the RSS LUT and/or RSS key.
> However nearly everywhere these functions are called only the LUT or key
> are set/get. Also, making this change reduces how many things
> ice_set/get_rss are doing. Fix this by adding ice_set/get_rss_lut and
> ice_set/get_rss_key functions.
> 
> Also, consolidate all calls for setting/getting the RSS LUT and RSS Key to use
> ice_set/get_rss_lut() and ice_set/get_rss_key().
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   6 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  43 +++---
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  42 ++----
>  drivers/net/ethernet/intel/ice/ice_main.c     | 139 ++++++++++--------
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   4 +-
>  5 files changed, 117 insertions(+), 117 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
