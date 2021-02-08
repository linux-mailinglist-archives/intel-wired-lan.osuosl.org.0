Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DEB313DD2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Feb 2021 19:42:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B8AD983448;
	Mon,  8 Feb 2021 18:42:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i+3D-X5T6wgV; Mon,  8 Feb 2021 18:42:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C0546870BC;
	Mon,  8 Feb 2021 18:42:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 856CD1BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Feb 2021 18:42:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7FFFE2107D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Feb 2021 18:42:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WL0mkWkHyTuS for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Feb 2021 18:42:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 537FA204F3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Feb 2021 18:42:22 +0000 (UTC)
IronPort-SDR: 0mRnm0kqPnlzt8QswUy9WkBferGUm2OULfezsPq9+WMKs8LrOU2WUyNU4FrD9tQEpDPCDtgsiP
 4ia020D9HqFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="169442131"
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="169442131"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 10:42:21 -0800
IronPort-SDR: Xg+JQQjy6BAroO04ORZ35Cz/x/OcTekUQ2vb3JdiH0zxCc+g8kbpIhCWa+Jr2JRNdJ+grYBD83
 7dT1aQkg9DcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="435724431"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 08 Feb 2021 10:42:21 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 8 Feb 2021 10:42:20 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 8 Feb 2021 10:42:20 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 8 Feb 2021 10:42:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jfn/YK1q+yP4oLiHRgGYvtxb9fph3YLFe5Vg/wu0kh4Qi99cWGdbmqte8y0VD1IdMRjJ+Ru//l3Brq6xxuEJla74lmyz7jneTkrJipGWsi0EEZInRwVDZNzWVc1dlSdj3H2RKCMUp4rOJI8wyeUuQdA28kMk9dOQ37o5tZZ3E/Lxd25FmTD8AdKZGdYlRYpuHWz670O7snmvOiCrwKgK2Zq6kIG2HwkBwod0L4Emxw5g4B+cre7pYxuwpDTi3HO1TrNyIwWJM7cr+vtiS/Xxq4C4NI5d0JDl3Jcg1/C+JFwMF+uUTmcz11Gw4La+RmX0Q7owGSoGEqSyMXlvzyPd4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gk1fW9g96+MRDfCVCmiKLMciABYKHB9PvLfIeZItYyw=;
 b=ivKNhiDMGwG7/0gJVNfe/E3fiTCwIKEaGjeYSbtMBVUMurPdCtXPMDLDikjgHrSJNNYpYInIMLK65r0E6enWB3Ub5K2qQjSPnZTw31C3BddRArvN6EBZJvV61Xb842Ug74uWeM9eysKknebce2BAIcjIp76qUE4nOmlUTQc7RrkaNX73eL7jWx/rMgJnr4iyVhUqrh8oy84T1YQqGIV3Ke6ARqpYfuwtM3GAcvKuO14lmnW/GYSUch9BC4MeVE8K/XFjjxSFTb0pzfg3v0qRZagBcKwIpqLKB6jCcZsQ8o9whZxJsGecemfyD/DVcEFCGXjwxaeV3MAhJA0r5YjJ+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gk1fW9g96+MRDfCVCmiKLMciABYKHB9PvLfIeZItYyw=;
 b=FFZ9L7DBGuZ7pUFaFVO9n4V0S6aNiiSFCqWupIMTDLZ7RCSfACe4WBizAa4/HBPLW/mk/YNttOjL7DCFIY2XZUuUwBC5yX0oag8/pQ1NQtA48lDDPmKar5Atl8tgnxLceJ8x3RZbnlZ8zhlpyG8w53MELMk1uUHAlzA2tpkuB7c=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR1101MB2197.namprd11.prod.outlook.com (2603:10b6:910:18::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.23; Mon, 8 Feb
 2021 18:42:16 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08%7]) with mapi id 15.20.3825.030; Mon, 8 Feb 2021
 18:42:16 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix VFs not created
Thread-Index: AQHWxK/AuKvUjvxPKEWsUw8CRKslHqpPCnrg
Date: Mon, 8 Feb 2021 18:42:16 +0000
Message-ID: <CY4PR11MB15767CD15BCF51F92104E281AB8F9@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20201127112301.32478-1-mateusz.palczewski@intel.com>
In-Reply-To: <20201127112301.32478-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.123.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0347afa5-0305-471c-458c-08d8cc6141da
x-ms-traffictypediagnostic: CY4PR1101MB2197:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1101MB2197985C976976BC04FAF14DAB8F9@CY4PR1101MB2197.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WXzXMEzR8LhCWfDrvDfD4av8DYVjRi71P4bbt7klS4Rqsz7iMdGP3ATA+juAGhdxwvcxaJUJrL0ZWqMcgyVnm3Gwm3WzWxFv5A0BwnOudcZatTkPH273Dc9pngwwjTlS5bf+/eLnQY4aUNaTiphXP8IFhKat3hXpGQjbq6Ts3+xlH893DvPzSfqHESBr6AgM38ncKAtWIQqrf/eSoMa8wSiWlaijtwD+X1Fpn+4Yxp9xuo4NEs27Ou9dmXAt0nAzSgPuhW4ZiA+6/CQxSL4oP+sDSwrga8BLhL1c0d8wI/v4owKxqG4qjNQXkFJ5QFblXzfd8TEYLtRJNxpYIf7L5nTGG4ZIk0GqtcoeGaZlgFWO81wCljkGL+UosjnJax0YCKCSoc/v4aLnP/qKD30IbXDdn0nEw7au1e/qdE5FKtNp21MXJqJ3yqxtQ8pNEIudPhnjlUc0wLxrWETCkmddjaLti+WPIsmgcKei/13zuww9SLvBU1nVepawLLegja85cKyTpXZxc2hWo0OkHvrwUQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(39860400002)(136003)(376002)(396003)(8676002)(71200400001)(4326008)(52536014)(478600001)(66946007)(76116006)(107886003)(66556008)(64756008)(66446008)(2906002)(66476007)(6506007)(8936002)(53546011)(55016002)(83380400001)(7696005)(66574015)(9686003)(316002)(186003)(5660300002)(110136005)(86362001)(26005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-2?Q?+rDeZP0GMEoK3sE+ylloc9eAJH/s3WQmdVxB2OWUWYGgy5KYLl1K5nWwqP?=
 =?iso-8859-2?Q?zjQSH11uz9fHfEPGN3gSL2GlDaZwL1Jw3UDmxLr+wM97tvT+udmnNv6t2t?=
 =?iso-8859-2?Q?H3WswkFNC2G/5ybTWLBv932pPA0koL8XTJ9H23lX5NwHvZw8NDFQNYMFla?=
 =?iso-8859-2?Q?RIi/VXSjvMeF3iSgR7eXAU9D7F9bjaNelU5zZLeUXoTUUXUXTAgNJC5Zl3?=
 =?iso-8859-2?Q?E036DCJCcGfTFQGzj3V1J5QKdqbjxKAhIEYZBHnoKrR4zSZt31nR/5GkJe?=
 =?iso-8859-2?Q?UvJsymv8cZIu5vz/pU98wttFab3Zu/93xsZ4kmkbNOkFRdLxSUSs+lUPZY?=
 =?iso-8859-2?Q?m5z98pHeD/d8kgvbwuOBTQWESjhAdBdm2yV0hACadmA3USAl8s0MCJ46gl?=
 =?iso-8859-2?Q?ftPtG2rLRayEMhNWtauYzfMnadfv7xYrZ6qm1L9Q/mnrq3rgPOLBkIC86G?=
 =?iso-8859-2?Q?L3B6zjT0zE+Xrnh6NW6GOp/sH61RU4yadDRtb9W/fhAnB5xyRyjjMLfddm?=
 =?iso-8859-2?Q?XK0CB5S8eTX5cODz9bywuXVEKIBpJbSmMunZGOGMraw9nrAYV+fJGxjvzV?=
 =?iso-8859-2?Q?Kah7a+2cgPjFJMulF6KYQ5Mtd4kdN9ExKjPRS423dtRIPiWReWAh9Mtsp8?=
 =?iso-8859-2?Q?0oOZ48tmUxB7obTupHqqTxSUl1/mzLdU6hHSyM1xsEnWrGpWv2IS695dyQ?=
 =?iso-8859-2?Q?+hfvikilTqJZArajESXZO9Idh1h5lvl5MWFLGvoljp/wfVK65IWYF7fL1C?=
 =?iso-8859-2?Q?LtjWzcHrPj9IUXWyc9LCFwOLsSPDJHuXnhKr5vc7i0XfXUcVFwfWxGSpZI?=
 =?iso-8859-2?Q?bWRUxG+DqKViku8LOg2QWxSgCDKcn2bicj2bXsvHdSYlELiOecho4YfHIv?=
 =?iso-8859-2?Q?mSJHcRYfeljXg/8mHNGhDZLoolJI1bLsJuYAirpKCgoKPR7hYJDqcNJMnh?=
 =?iso-8859-2?Q?z0iftYRfSoJCXBmz+yIzZfr3G7nrGZtv865SnAt7OyQ87jt7cBkyMNL+xW?=
 =?iso-8859-2?Q?yxULkzS6t3bkqXkuH5bO9dm39Xj7gP7UFKADCueZAUMnyLsCFIKgT8rRiz?=
 =?iso-8859-2?Q?DxBQUSyuWCXUzH+8vvzwRHmOg7EDiz1NMSqYbVBAeHKpic6NGNjlKJNjId?=
 =?iso-8859-2?Q?01qG7yj4agKcyJeZCLln1CRtYF4qDlh5JmT2GQRUQO/JqYrzFijUUR5V3r?=
 =?iso-8859-2?Q?FMoBxh3fP9U3SQXSL9YRkOUKuthwpT3hUSsck5Tansfyhm1mAVDDPL80H9?=
 =?iso-8859-2?Q?Pz99BQYdO3R3IRcB0QtChEhTCitQRKYF04jchMio4arsapZtMrKGY4gHUi?=
 =?iso-8859-2?Q?BfbAjS2p7wzoZF86LV2hLg7wjBuARfAWmaLHExlOZpkskrWKsDd3sIavZG?=
 =?iso-8859-2?Q?kYKNHI7r+z?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0347afa5-0305-471c-458c-08d8cc6141da
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2021 18:42:16.0843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wF5DOpUkZr47ArDPViTA47rEVBhfW2F9FwQS11i27O91pTXhNayzzIYZgsufoQ/pmlQVjUfst9tvY4EpamvD2UQMLI99+cAtRpd+Xsm8RX8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2197
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix VFs not created
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: pi=B1tek, 27 listopada 2020 12:23
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix VFs not created
> =

> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> =

> When creating VFs they were sometimes not getting resources.
> It was caused by not executing i40e_reset_all_vfs due to flag
> __I40E_VF_DISABLE being set on PF. Because of this IAVF was never able to
> finish setup sequence never getting reset indication from PF.
> Changed test_and_set_bit __I40E_VF_DISABLE in i40e_sync_filters_subtask
> to test_bit and removed clear_bit.
> This function should not set this bit it should only check if it hasn't b=
een
> already set.
> =

> Fixes: a7542b876075 ("i40e: check __I40E_VF_DISABLE bit in
> i40e_sync_filters_subtask")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 5bee1de..a926331 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -2623,7 +2623,7 @@ static void i40e_sync_filters_subtask(struct i40e_pf
> *pf)
>  		return;
>  	if (!test_and_clear_bit(__I40E_MACVLAN_SYNC_PENDING, pf-
> >state))
>  		return;
> -	if (test_and_set_bit(__I40E_VF_DISABLE, pf->state)) {
> +	if (test_bit(__I40E_VF_DISABLE, pf->state)) {
>  		set_bit(__I40E_MACVLAN_SYNC_PENDING, pf->state);
>  		return;
>  	}
> @@ -2641,7 +2641,6 @@ static void i40e_sync_filters_subtask(struct i40e_pf
> *pf)
>  			}
>  		}
>  	}
> -	clear_bit(__I40E_VF_DISABLE, pf->state);
>  }
> =

>  /**
> --

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
