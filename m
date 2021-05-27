Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E08243934B2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 May 2021 19:23:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F3DC402CD;
	Thu, 27 May 2021 17:23:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sAFEWkhKbrK2; Thu, 27 May 2021 17:23:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 578E4402CC;
	Thu, 27 May 2021 17:23:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 862621BF341
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:23:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D6D883DFB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:23:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A9SiUdMZP4Yu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 May 2021 17:23:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8CE9E83DF6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:23:24 +0000 (UTC)
IronPort-SDR: JS1qsYcO7oFk7sLBysSPR3rVa2yk6Q7Mx3eLN0S/6Geww4q1ePe9wNwNWPGaPnEyVC6q1q8Rgy
 IZWOWb4EZCtw==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="182448842"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="182448842"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:21:53 -0700
IronPort-SDR: TdUUK3t81HlI8HBifeVfLciogbrvM321CZdahol2bJTCpeCj3qPp7rLNSlhLqirDUjH6KVphUI
 HDJp2zsWTmcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="480680216"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 27 May 2021 10:21:52 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 27 May 2021 10:21:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 27 May 2021 10:21:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 27 May 2021 10:21:51 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 27 May 2021 10:21:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZifiM05Rit/3gw8Rd1MOmr4KPX7sdO1+xPUsI0y39FRWq/6GBBlNcHGfsw5G4wFrWIGFrHMzfE4vCw1ldFzswzBYmh9MX1/txY/WxaGAjbqKEiUprlRTU2PTLy1UBTMXHibN2iv6PqtVd5DCe1Bo9r3Ug1IAVegbOuDS4ogezy5s8nII+cVniA3M0ycYHGnBBhw/1IYYMcd0QQNySj7BWTU15ITbCPvc1u39e0lDRa/oEkRGf15HPsy0rRJCfPObQDYrrx3U0mtwyfj6+wNLqikmKBVNbhWhWf6FfCiG/Mt86DjumlOJM/MIZl8xFlIq1Q2ipxVaA0IGgDIaGDbang==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=axtKM+v0FdCbXLrqVBz8x6GZ1D2frfS4ymMUi2zh6uI=;
 b=nsZFRiQYsulQ4ggh4CLrS7l7bYE5zxreNuagM12ioHH9updLAzW7Vs1wcApQsitMWpYXCsnewbZxl2LTAORLdwPtxmMd0QQpoQZQLMEENU5KtzunOu1RWFlDpZ03RJ7DXUlowPL5kW3kI9H3as6SUpofd+00ZuSpACQBODpk7ufTP+aEjZlFqseH9a5N+XYTyVn25yDls5OjcjsPdkggcDJq/sT203wkjw9Nt2kMW3gS6oLN8JTzMEugTgGUezBuH4Vsh/DvjjAwXFUplIjfwAuAvTfsKXcs/Xvuit4Uvu9iz9WhW/DkyfMJe8Pxul+PJhQH9gLH8lzhbGhN8px44A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=axtKM+v0FdCbXLrqVBz8x6GZ1D2frfS4ymMUi2zh6uI=;
 b=zuyaTA88jdmQgLY0OtWOOx2gBwjWLd9/9rdOO6oHAxbcpq5sho0NpJTus26OiVrI+SBn10oOThxntBjrktLZX9rsxqNgNlnWcRjA/iPfRkrNXSwUIZ7ycAftlL7aZNAB1CYKOQUVqcAxu6EEoNz65F4oljdKY5anWHJ0QGTDZmQ=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1456.namprd11.prod.outlook.com (2603:10b6:301:b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23; Thu, 27 May
 2021 17:21:49 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4173.020; Thu, 27 May 2021
 17:21:49 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/8] ice: add support for sideband
 messages
Thread-Index: AQHXTZgiHgIeaSIv10OFbIChvTqDXqr3nfdQ
Date: Thu, 27 May 2021 17:21:49 +0000
Message-ID: <CO1PR11MB5105D6F1ABB6AC9C8EEB9ED8FA239@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210520164850.1884656-1-jacob.e.keller@intel.com>
 <20210520164850.1884656-2-jacob.e.keller@intel.com>
In-Reply-To: <20210520164850.1884656-2-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: d993e0af-63cf-45a7-a86c-08d92133e9bf
x-ms-traffictypediagnostic: MWHPR11MB1456:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1456A34DF6186D629EFD0D89FA239@MWHPR11MB1456.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: miHuKe8+K54vtp+/tsXwusj5bxV07qAEkNEbeCpUGSOepTEx8dIQc1XZpyyBhM9hbGKk5TG0kUes/2CEwKOdmJdhhKQ7B4aqXDKaxfJu1+yyRyIP/b+EKT+1c3KP+AybZZkkLchOY5BPALmbr+sk5SORB2IM+5s4aTUuIGFm8mmcwYOGqmBWVDIaIRiK/fu3FhMaHBrgarszNvtRmGOT6PfOaPBUhnBaRg1rX9sAf5Om4FOb5ye3dZ0u3J0/Dr3nXrmkucb/lzQSYSTM8ckPLWQZ4smh4WFw6Hdhm+MouGAMsHFEvf3+SbgomS1sWtZq4PFW3/ST1HEuLJ8CJ9DL/nxCggtvcA2J3fU2uHOVT3cc+Zh0RsHsjQZlWdJAZjkfWh1+Li+6BSjT29LOAVvCJRcxS5lDib32OZutKxGQGHH3DxD2R9v15aMIlocD3VpzcA9rzyNKjg5y3/ymwTXfHMTZKblbt/KSvCz/09a1QUmKydU/fCAB4C9sZOc2v6j+En8u+tJUrtP6nUv5zhUjmm9t38H2zAA5VdIgsgLGV9yKv+zbhTss3dCMmEPPSmWbi3ZDf5EuUZHJaJSYGQt7095v8a5ueVHH5MBv474azks=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(376002)(396003)(346002)(39860400002)(52536014)(110136005)(66556008)(9686003)(53546011)(122000001)(15650500001)(4326008)(26005)(83380400001)(186003)(2906002)(316002)(71200400001)(6506007)(5660300002)(66946007)(8936002)(55016002)(33656002)(107886003)(478600001)(66476007)(86362001)(38100700002)(66446008)(7696005)(64756008)(76116006)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?ShfvCM/5lZWrLKsLkkCTu7eG0MSOypCOVVt1Zn14nGL+nyl2Rw/g3EqdrxxO?=
 =?us-ascii?Q?KMufB8xAntxRjfdR2mKz1qaNCyVvzcTJNmZtJl8+SaHgsG6VjzukG9SgTHQA?=
 =?us-ascii?Q?1nZTgqXK6XNqdLnLpnkc5avpfiqqbMUA8+maru44Erw7Rp5+3CC5PLM0njgG?=
 =?us-ascii?Q?AXI5o4UdSdBanQFLjLGMkR406x0AhQYOyAwGLJwHxLo2Hw7Ofbd60BpnJNB4?=
 =?us-ascii?Q?XmcMZJlcHCQ/NPYNiXToaX1b+100W04LEQlECUporp6pmoYCJGu+MAZ5cWND?=
 =?us-ascii?Q?CZwYRwzJF24H8BL3bWjclDs4020tFWGQbt18bsPSkhbf8Tb+EHjtxxBPQPZ6?=
 =?us-ascii?Q?k3rQTPika1Sni3G3gvdLepQKbzMzaTCtdESuyv792l5Y7t22ZaKIfv3e9yLO?=
 =?us-ascii?Q?LzQNUg0J2hF/lINp/8skkuHNLqA7l0rYrMzcvtDlV3YJIWZOYVZB1RW37rFO?=
 =?us-ascii?Q?B+1etPGKpOvX4+t8zuxqcKwsC0UK+J2dUYIEkBFyb+U5llJKM7OzjfLDiYku?=
 =?us-ascii?Q?41JF6KNHAeEeLkenvnV7+ZUlxMbfSKr4ZaRVVG/HRkAMyHi0oCerT946+vaB?=
 =?us-ascii?Q?2a8wSGA9fa603bmPLf5Sm0dlDL41a9t2nuX8laNStr9rDiWLZho1KapwSYbd?=
 =?us-ascii?Q?93ROe/Ttc5GchlqTptNis+sxHPBRJBU2LdDkdYBV6+0V9nmwxrmH6Nfm3kUQ?=
 =?us-ascii?Q?SkQ8dr4yHjTumObUSvCqgrqGD9mUtC9wPqzkRIuDt5YiEGS63oiENbkoD0sW?=
 =?us-ascii?Q?YMeuzIoi5jhyAGyJhu118Edky2WX/qDLVHN+wlN6IF56fFGKXLLvwuZsJUgP?=
 =?us-ascii?Q?EtVEc9un2aPfm9uOADbmPxvLcTWUR3lbX0EusQ1CvusWSZmqbB8HxVExtOD1?=
 =?us-ascii?Q?2iHZZ4wVhHY+vyKkOkF1QkQizLoeAy2P3BLn7iqeqDhevQrbK2rQv4S68stC?=
 =?us-ascii?Q?Swho4PvyULArH5XmVbDXdjgOOShNN+xvtFRP4PJLc9LuOVe3fydCR8Wrrara?=
 =?us-ascii?Q?AhnLn52dt8UlZ8KDSGDqcQAOmDyWG5Wyw3p2ypdpiG4c+sprUMR6CArhDHQO?=
 =?us-ascii?Q?+Xe5xsh7MI2S8BfgIaQzhw/tvC+GCTwNgxrafdhmkaAd5NbNwwPv2vdxuvOZ?=
 =?us-ascii?Q?F2D/maxAkT/EDCtnnKSq/KRMEab48kmRQZp+aTxS6brXa+I20SvmGxRTiaYR?=
 =?us-ascii?Q?711H+ZapNCS/w+3fC+O4vLrnzSW6ONwsrhlZFweOrnkDM4oUEl03HHiAvLOI?=
 =?us-ascii?Q?J9TQjvupXErOSZzE5MwgFK71dKmdX336wjO5ZVM6/5tuUZiw4M+Vp5xG/RaY?=
 =?us-ascii?Q?v1vLcrPFg92MlQnzw2qp4yXT?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d993e0af-63cf-45a7-a86c-08d92133e9bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2021 17:21:49.6982 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xt7aL0M5DWCUDUOT2sG/6JCugUEQ9nnWAPymZw9u4kkhC94JgClk4RaADluL/bUlarGkAv/FKq1bZlSqXiNvPrxdw3V2ZGG/2uxupJ1tAGs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1456
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 1/8] ice: add support for sideband
 messages
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
Cc: "Lion, Sean" <sean.lion@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Thursday, May 20, 2021 9:49 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Lion, Sean <sean.lion@intel.com>
> Subject: [Intel-wired-lan] [PATCH 1/8] ice: add support for sideband
> messages
> 
> In order to support certain device features, including enabling the PTP
> hardware clock, the ice driver needs to control some registers on the device
> PHY.
> 
> These registers are accessed by sending sideband messages. For some
> hardware, these messages must be sent over the device admin queue, while
> other hardware has a dedicated control queue for the sideband messages.
> 
> Add the neighbor device message structure for sending a message to the
> neighboring device. Where supported, initialize the sideband control queue
> and handle cleanup.
> 
> Add a wrapper function for sending sideband control queue messages that
> read or write a neighboring device register.
> 
> Because some devices send sideband messages over the AdminQ, also
> increase the length of the admin queue to allow more messages to be
> queued up. This is important because the sideband messages add additional
> pressure on the AQ usage.
> 
> This support will be used in following patches to enable support for
> CONFIG_1588_PTP_CLOCK.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  4 +-
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 13 +++
>  drivers/net/ethernet/intel/ice/ice_common.c   | 58 ++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |  3 +
>  drivers/net/ethernet/intel/ice/ice_controlq.c | 62 +++++++++++++
> drivers/net/ethernet/intel/ice/ice_controlq.h |  2 +
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   | 51 ++++++++++
>  drivers/net/ethernet/intel/ice/ice_main.c     | 46 ++++++++++
>  drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  | 92
> +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_type.h     |  2 +
>  10 files changed, 332 insertions(+), 1 deletion(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_sbq_cmd.h

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
