Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D98B3934B4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 May 2021 19:25:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 37E784019A;
	Thu, 27 May 2021 17:25:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CHsWkxMoirit; Thu, 27 May 2021 17:24:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 339054029B;
	Thu, 27 May 2021 17:24:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD2451BF341
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:24:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB9516064A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:24:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ffulXkSStNJj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 May 2021 17:24:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8200060644
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:24:53 +0000 (UTC)
IronPort-SDR: V/Jc88AIeL8pU3LUgw+mBlZ/rQt5mEPmioMGXPxZukW09NKvKgDRA/GJH0qGL7AP/B+QXY7jAD
 K8hTG676AH/A==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="182449509"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="182449509"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:23:01 -0700
IronPort-SDR: xjJzcK2ziIjCcqX/xdR0IwsEbw9fOOgBoz0O/MHhge1k87Db80o8FlSVdDY2l9Y+J0lguAi+A1
 Az1CgSkBk2ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="414992637"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 27 May 2021 10:22:59 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 27 May 2021 10:22:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 27 May 2021 10:22:54 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 27 May 2021 10:22:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DJoON9RBSh8YTIrH5P4kjq8MAQJc5VxS4POVyL2DQ/tjIwpx/+RTvW+9r+V/VQGL3ca0G0Fvi9UeTkfknQeu6Q6Od2fK7u8ZV4/hQLhWYzqrf+xPszzVYGEhUzw9PsNMcdbfWTXMtoQ99h0AfVVCrt/QDk7YNAgoEgchYc7SDqBSuaOqYkt4FzsWTiOiCk4n/dYClQQI3/qAk/dyRcey2d6F/BZ1x60II6oMFtnvU2e/D885cZcfKAYvN56uEBvXyJ4lqdsvY0f9waY6+gqw4D7Z2++akECPph1DoVoe2arRLR6klD9RS3uWFWOZC4Fqyg6MuRWVHfqhIvTUwUTZRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8WRvEOdSti+CS97HWUAG9OAbUf9IsI5FA+khqIgBJNo=;
 b=HPWgBea7y6teUqjWz46Cuvi1rfkc/1m6r2J7DlW1dxoMM+A2JIp6sgGg8rvPj/AiTT0IzZkJ5KOQ7YMGPJj7LcPvUcg8RJPH4yiPq3EF0bBCe4yDZlYHpD66Hwv14fQw/DqagFNKRC2uj1XeiGlgWb4GS4Vu/gjlQsT0abql6CHq1Gme4rG2swK7g1b8Rvffducsvglo8kACn3palX5ogKQTMOeHMT2VjvTrykOkj5ZW7RBGky6Tnqq0bODpi4eBoX5zHKTe6jHxPgHVDeDf9kgOu68waOak6qUxj2Kuh344H8MrxRaDpqhdUGhswxVVI4ol1t97Yg7vxzHoxORKEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8WRvEOdSti+CS97HWUAG9OAbUf9IsI5FA+khqIgBJNo=;
 b=Ezt/tnoHxYmb2sVDYsJtIYfGn3LWhRQ5Nc9IvRpwRmcuebS/gRorVV9KLayM/nM4+npArvIDu3SmcgdjKr6bPxfpyxv5zWWK0IFkNK/ehPYYzei2Z1uilqV8Ec4vhyKHPKx5kNgp7e4GYEOCn8xY6DIofqp2bXoc4ZHv8reDblM=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1805.namprd11.prod.outlook.com (2603:10b6:300:114::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.22; Thu, 27 May
 2021 17:22:52 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4173.020; Thu, 27 May 2021
 17:22:52 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/8] ice: process 1588 PTP capabilities
 during initialization
Thread-Index: AQHXTZge1CdzMR+9fEmHzZA+zvF8tar3noPw
Date: Thu, 27 May 2021 17:22:52 +0000
Message-ID: <CO1PR11MB5105D6C5AA3B313C90B4FA57FA239@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210520164850.1884656-1-jacob.e.keller@intel.com>
 <20210520164850.1884656-3-jacob.e.keller@intel.com>
In-Reply-To: <20210520164850.1884656-3-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: fc4f9efb-315c-4816-fb35-08d921340f35
x-ms-traffictypediagnostic: MWHPR11MB1805:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1805F1D51B1086FDD2C4EC2FFA239@MWHPR11MB1805.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YX/LTQhZKPNyzbg3saIvjyLDUaaaOkHFIaLsfbBpgKu9V2HzB7C16ghx7mq/1g1o0JbF1QZH4tm7sIkQbvXNnHXw6GRXp+seVTvQG4yAtwOHROGqpj3nvieFZ5bXPfFGi3cDvlzDygg9kOwezDE5hsZ8XWEW4Eel0dgPMcVZ5GeGkz1l7hNE4gplAo0AHp9kjnxuyp37K3R53gzCf5UzkG+l6n5QOY0+8pyMs1G+GTvdV8Cpqxg9frxTqCS6RmMWOxq389POeZg9cZp2uqLEfCNTT5nrgUC/yAH64GRP2zvNm/4sS/RhMI15M1dq2txcfOXI/UlMukTlz3nwvkAeaQRdKBm9oxzXOQXsQOR/0dSxeiZMolQiABkN+McJIdQKIHaQOHVnRNvRZmK6kgsxMi1QyYZzl7ALEVmoCQhSKf68vJMwnwotScjiNEE3k5CimsngiVLKINwaVV4SvYPQC6X7ihZYrF8fbf5OE6ADsL+dKppKVmBgRbn95KQ7bbfV7JHQn3R1P1AGPRmS0Oi2jIEiLuUrv/o9ODfOerBCY33wBYtOru8U56NsW35HIqSmR53uIfSmh4SO9I0KLMDnTRS7BTEnKKXnhgSE2++dfak=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(346002)(396003)(39860400002)(136003)(5660300002)(2906002)(71200400001)(66556008)(4326008)(64756008)(107886003)(52536014)(66446008)(86362001)(9686003)(8676002)(33656002)(8936002)(186003)(122000001)(53546011)(7696005)(6506007)(83380400001)(110136005)(55016002)(26005)(66476007)(76116006)(66946007)(478600001)(38100700002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?/AyvIsGCG0RTd2r4aLHbQgA6G7cjHrAaoPAjihpuTto50TWy3ygoV0fv5L7w?=
 =?us-ascii?Q?sB1qDID+OT1yF5pTViPWPiz9olTl0C4Wb2k36ecvY23fxru03MvrYszmHvDm?=
 =?us-ascii?Q?4JqFpdoVK8iK5W0U2gnykyhQqG9n3J84Yj/FQd8ltfC+LQMT+quEsdvxe+ib?=
 =?us-ascii?Q?ONCOLMw/hUEYzMxqg3v6tsE0Z1D1gUjQrne4s0eySgYFMumGokO8OKQRCUUf?=
 =?us-ascii?Q?PDjjP0V6JFkg8QMN5e/fCAGuhISJEE7mBYJfTKmIkFzHqPqEcKFvL7XMkh6X?=
 =?us-ascii?Q?l/qIhq06VAPdDv476c6N8kh0Hq5TZAPR9oJ0rFbs6JVr/ohPb2y/nESIwi1d?=
 =?us-ascii?Q?Bpr6eCfNsKxbKOokI8vlU+paGQ3HmoYNEtBIH18daPEvoSNBdx8Env8n0hbZ?=
 =?us-ascii?Q?LqNz7C2AyD6QNtXo4Dlft+Gi+AKY8fyAhSOm7qjJkFi3viDu1KdvKwByRSaf?=
 =?us-ascii?Q?i5lqgoS+PT2E55xTlnDztjkZ+AT8+06GN8vH2igMlD6wsbZE73KgBRIcX/DD?=
 =?us-ascii?Q?2rMB5opfH50Vv0AzWh0tmoSEv2tZHD35tiGxv21KQffQat/8sm3vGUGipWPK?=
 =?us-ascii?Q?xw6uvpcbbH8ybr3rDGVVMVtXLfe9pHjzxs11SizDMVpX1KXZVGzfRDB+akjS?=
 =?us-ascii?Q?VTIxOhY5JgCbqC2wlo4UHBmc9tV67D+FkQEoHsgK5f+3ZwVobi4bz5QpqJso?=
 =?us-ascii?Q?0NzVJDO0eOZneOA8T0fY88Mo2tt5MuEjCAaLgdBZqxjM2H1XlG018KjbBM/T?=
 =?us-ascii?Q?KaedgFa0gGKEQmxirK2sDnRI4eP8Pkporg5S97lK7AKNkNiskAzLwZtHFqJg?=
 =?us-ascii?Q?W/jeVGdy5gTFgbhHDVQzRYsEFHdPoHRKwIgE6Ygm063126oPJl/v61E6wVzl?=
 =?us-ascii?Q?iOnnjGKQj0m9/A7dfJ1V+avoRwdZs+S9m/AgXzvfmLHh03yDR9LfKK1uvW/u?=
 =?us-ascii?Q?BeU4t9OQEKCBzPK25LWkEP0gMSl1zYS0Sigk2waVba0YClwf0pFtqs7nhdEi?=
 =?us-ascii?Q?IhagM5NFszrCVlA2lrk6+Xfy9P3WVUenySghAXuLg4GK5JDXT2mi9Uf0w06Y?=
 =?us-ascii?Q?cvkaVwHqmS+jE0djjWCAB9UPRNuGAD3lh3CRGwANYSEot2/JtzRdCcG1FoIn?=
 =?us-ascii?Q?hEsznB4qp1l6LRHnZmAcvFTG/lH3YP+WjSIDs9gHaTuRng/cfRTiuLwIMGe6?=
 =?us-ascii?Q?MOSIZAbwYiCuKudsGmCcGQsNQ1WffBMDDT4/6fngJjqnT1y0tFvh3griSRGk?=
 =?us-ascii?Q?VjfkEbI+stdZZcdgRIyGiDG95il03YP8G3cK8ypnr6HrAiF/Bi0EbKgB/XLY?=
 =?us-ascii?Q?KY/LHmriBbt5xPT82oH9fMfy?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc4f9efb-315c-4816-fb35-08d921340f35
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2021 17:22:52.5523 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6ugbSI8fOd22Kr9f+s7Fg54MNaE+3f9mP1y4qB3Y1DXI6QNOpLZToTjcD82lxmDAZx+SF/VasTKAvaq03Cn1oZHJyhi7/EziFKxEgTUmlbQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1805
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 2/8] ice: process 1588 PTP
 capabilities during initialization
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
> Subject: [Intel-wired-lan] [PATCH 2/8] ice: process 1588 PTP capabilities
> during initialization
> 
> The device firmware reports PTP clock capabilities to each PF during
> initialization. This includes various information for both the overall device and
> the individual function, including
> 
> For functions:
> * whether this function has timesync enabled
> * whether this function owns one of the 2 possible clock timers, and
>   which one
> * which timer the function is associated with
> * the clock frequency, if the device supports multiple clock frequencies
> * The GPIO pin association for the timer owned by this PF, if any
> 
> For the device:
> * Which PF owns timer 0, if any
> * Which PF owns timer 1, if any
> * whether timer 0 is enabled
> * whether timer 1 is enabled
> 
> Extract the bits from the capabilities information reported by firmware and
> store them in the device and function capability structures.o
> 
> This information will be used in a future change to have the function driver
> enable PTP hardware clock support.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
>  drivers/net/ethernet/intel/ice/ice_common.c   | 99
> +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_type.h     | 51 ++++++++++
>  3 files changed, 151 insertions(+)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
