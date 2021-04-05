Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5183548F9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Apr 2021 00:50:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EFCB60B50;
	Mon,  5 Apr 2021 22:49:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1SVLWRpTTbm8; Mon,  5 Apr 2021 22:49:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 828C760B49;
	Mon,  5 Apr 2021 22:49:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 50B0D1BF964
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Apr 2021 22:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E58F40275
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Apr 2021 22:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u6BW-5pyluPW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Apr 2021 22:49:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 77DE9400B8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Apr 2021 22:49:52 +0000 (UTC)
IronPort-SDR: CZ61b7jVVKcHFi7trNNJ4O/jSrmTh/ap8SmVK23c4t56ROpzHUNEDm+q7Z+grveYL6sEzHBm0C
 ldl65U3z4BUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9945"; a="189721131"
X-IronPort-AV: E=Sophos;i="5.81,307,1610438400"; d="scan'208";a="189721131"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2021 15:49:50 -0700
IronPort-SDR: YsA+DYP/DBt788aFGlHQlletbuvTFBKnCK3XQ6NljPQ++qCZZbULOb2Ou3JwBkbZTZFGUld5V1
 sxCvRdZrZQJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,307,1610438400"; d="scan'208";a="414480987"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga008.fm.intel.com with ESMTP; 05 Apr 2021 15:49:19 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 5 Apr 2021 15:49:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 5 Apr 2021 15:49:19 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 5 Apr 2021 15:49:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KG/Y70JLpSL1PfGP/RUbDsP/I5O9U840Rx0FG7EYsvbsd6jVIs+WCp3XmkT5oCgTcfkql96pq2TZZxvGgrUEuZIwTM6Howrn0uHXudVLxM9Ib2fWQa3LwpdEy4RK6PXLVAAPxTfBusdGBYed4TMOlVvldA5k3rGGMpIbyGflQTMpJxUWTZ7KiAcwcWrcOTR/SeWsGWuD+4YtMcRtjGNznlEFZA1gMv2nXFVEVz/o74XQh0Z6puIQLsZeUucs54a+xTQtuceZwHShDiQHGA+MjGZh5T662J0wFSO0pB1uypZocTj5GOlwsQDTtoy1YO5GCjzJjr7P+Bb692Os2sz8Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vJhnW8Tvr8ZhgylxEjvcU0K2W/mYxucNLTBrYadpNMQ=;
 b=laUq4taxL1FAmRA4YoKZDLRJg5pw1IGRBGjkUFLn9oKTJVMWVMOZGJL8yKqQpdaXHT428dZDUgw6igXmI2PyhBYywq+FYPyO8HaZEU/a4MJBeVuh7f+6LNt2F60VRFVfxbu/KgLv3dSdqR8VoqczCskudC3/Sy2MYXD8PFXTOrlp5gkSZy//TemeruDVTLCS4qvr/J2YJQ3irbKTN3/2LQpEXxKoOWntfzfLcXQmGgLJo1JPUlC4mHGW3GQwAviQFo3fs8uMbEN/V6Q1WsYmmBVJVz5uXazy+T5gR934K/MI0+zvyagx1KM5SpM8I3IlCu6ilmJf5StEwZpvflU5Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vJhnW8Tvr8ZhgylxEjvcU0K2W/mYxucNLTBrYadpNMQ=;
 b=FtMcp8IxmjgmnQXjBaH7VwlfVnSSzmdFS1+0W7UmZuQoDRtCcOyRJRRCjk14HQEXQcOuG9WKvODC8fUxHKPOSum1wDMMQM0owWnbEYHOc9Vr45Q4EKA7Z2DHMCAAh+bG3I0XqECjmQinSgBzIEN22/zL9kBi48Lv7kI66Lyp/PE=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.27; Mon, 5 Apr
 2021 22:49:17 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3999.032; Mon, 5 Apr 2021
 22:49:17 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S57 09/14] ice: Use default
 configuration mode for PHY configuration
Thread-Index: AQHXIcipL8IdbBUGFkiJoiuVgsFDpqqmmBkA
Date: Mon, 5 Apr 2021 22:49:17 +0000
Message-ID: <CO1PR11MB510578D3766F094762AA4E88FA779@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
 <20210325223517.17722-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20210325223517.17722-9-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 35b3eeb0-fd79-4673-02c4-08d8f8850b0f
x-ms-traffictypediagnostic: CO1PR11MB5057:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB50578FDCAA1D5EC36FB911BCFA779@CO1PR11MB5057.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6OCVY/r8OXebgSNmmT5dOW6nkF4MIYaHXqaCRVIGFbmALmw9fMB/fyao5uedq5M0H66OQ1tWZQ3e52omuC6aIsNpTDcXhS43eOyKVlqHyxhZqqr46Aa4yQuMU3cq3QVPfid0zXaVMX7fMmmjP9mPyDpeLSK7XnO5Kp8LjgVzbgZS2GGMKYtnUkwzuiWbK/VB9u/DFqsd1LaDhF9/D+1XbY2AlCr+mQfmt5ISZWd/iGteUh44vd6CRfbLQ5M7MxwevEicqlhNgsjg+kfMHT90KaalP29fmnq0/Ofj0F/JDE6dNioTbEcB0Bi0DwygazFWLEGQ97uA5VAnPZ06eCwgYo5Cjn7NSLBwpV8x/+dIDweeb3lpRPxo+4eLmq2wfgmq1dYEJw/lZDGwMkl1/axh6a55CeCwTciQlUQox67Fkwwlg0xHsPox/Tc/5v1TbLOhFMCaTZqdivjZ0twfvH4VnyoTATFzcGlzhvk4Wccl74jO01kopk//GufIPvYIczCVZTtQjO4+uAhWfEaEhPRFPehpvetW6bsvE6d5wThZg/BW4LAW82RAh7g3YdNl1AZ24t0+r+Fn6g/Qnb81hYdzGT9TGVLFPHheOYniQaembQ9+nDQn4bvhS2mEZ8k8n/ouhilVYMcbfolyZ9mAhoIytYft3R3rP4TvJdo9JHLsQAc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39860400002)(396003)(366004)(346002)(376002)(478600001)(66446008)(33656002)(66556008)(83380400001)(64756008)(26005)(66946007)(66476007)(8676002)(76116006)(110136005)(5660300002)(8936002)(86362001)(55016002)(71200400001)(186003)(9686003)(316002)(2906002)(53546011)(52536014)(6506007)(38100700001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?/Kvnl7X6IFLxGrYBJrDItjEshgD+5whdCPJAzWwm5gK8VG2FIEDGVbe4zpCN?=
 =?us-ascii?Q?JI9RzEujHorzXyGZBzLN3tbBY6mXDCFCDDsmHFjUlg03jNNJgCW32Hq/3OLQ?=
 =?us-ascii?Q?tCwoL5fasjCpcSL/zjr8BL2Nvsto3MpaH7739gT0f4l9y8Hmaa8J+KIY3Evj?=
 =?us-ascii?Q?c8IaoK5dsmc6a22ICG+imcpttom2ekqSee6Fyk/3AMZSNO3lYwK9AWZ/GI9h?=
 =?us-ascii?Q?oRvw4I9G76/haYI04cPxREWgRjqzwc7PLABBSgoWQtrKO7l/01cygKZwEeDz?=
 =?us-ascii?Q?n8wMIzBGNQXoz+95LNMB7xwybLPIDS6cY3++6X1lU0sfOT/lWaykdoLcHhdZ?=
 =?us-ascii?Q?289wNqlHHJb6LPlt2bxNCVwvPv/4ZP7OZ9XJRr2+vkHUFFslwY701Uzzn+qq?=
 =?us-ascii?Q?UCzozT+jDZFvMUuCIbe6+zmJWdvbUvdmp0FIrR1qXrs6JDlvEyf6VlSiMsQb?=
 =?us-ascii?Q?SF59tFpcSxepiLD5WtVOwDIwlFs96kDnWfra7u5LaGY+7GVMS3V+AtnEV7R+?=
 =?us-ascii?Q?fVr6YlAPbzOcBO/+lthkQd/PhHiYicjzihJL98yCwL/Ym4LGciID9m1uvx3u?=
 =?us-ascii?Q?dnqIFDyXlc0+Xo9m5NG3TSuarlBWk5hrJvv4MC8syYnJe6d9MSXRVs/nyRU2?=
 =?us-ascii?Q?ejxczvUWnTDFbdGqDQHYeQJADtPW0v3XsZjGEr9ByIu2z6JQc97gRdvvAsR9?=
 =?us-ascii?Q?A1IwwtHlRvD8B+yRyHpAfagr1f+aOG9+a4sFm/7XX4R6OyPfMt3rgybWl5ap?=
 =?us-ascii?Q?xjUa0ISHCxtI6NIe2O9vFi/6nCZJFN4FlYMmo+L2IMGUkW8eJncLV77ml3GT?=
 =?us-ascii?Q?SfhqsBvyZMVlueBwVDSAGERa3MYnzXJWDrp+F72ftUcQrqLZywJ+qK90bDkY?=
 =?us-ascii?Q?gFDzRrexZVrzMHSbu2dNcXFiNG+199lAfiSvpaN/iJ2E0EaRthyfiM5ilKrV?=
 =?us-ascii?Q?58YpQZ4046SqwyYQAat0CkzwfqDJiLdvT5scCMDR+qgAuD1ptCzrFPOI2Q8Q?=
 =?us-ascii?Q?xkiKPLeCY9eCbEhVrb5gPr9P1voItaSApLHZJKVbMmJe7OwUAz4hRsV6R+ii?=
 =?us-ascii?Q?+kE1EGOVk8TDN5ZjOMveQKEGu0sTo3Z9xXsVPOZ+25wEsnZQKT/0UaBez138?=
 =?us-ascii?Q?tAxcXqm82wAm30COO7A2KrV7HW8uBUB/samVnbYp1Uq2zHXKXMgJISEC1EPv?=
 =?us-ascii?Q?a4y4OTRFEkrGUg+N2VH/EumcGo3t7GQkEOb+94hdzhXn0dlFWyb+c9R8UC00?=
 =?us-ascii?Q?fC0tH6yWwdcuMw4gI5VYkw7YVhfbyW8WyOPNSrRbIonfT0qAp/Hk6JyVtPx9?=
 =?us-ascii?Q?DeDBk01Xh691RPP6NzboPIBs?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35b3eeb0-fd79-4673-02c4-08d8f8850b0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2021 22:49:17.1403 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1kmshdFoqOkF7HX3vxNWI+5O883smEhW3LkItYmnaOlfjY7UvKKmYQxjyvSFCAPk2Eeg3SusnGBNoNB4eLiWuVODC9x+bAU8Lj2CBpVuANk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5057
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S57 09/14] ice: Use default
 configuration mode for PHY configuration
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
> Sent: Thursday, March 25, 2021 3:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S57 09/14] ice: Use default configuration
> mode for PHY configuration
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> Recent firmware supports a new "get PHY capabilities" mode
> ICE_AQC_REPORT_DFLT_CFG which makes it unnecessary for the driver to
> track and apply NVM based default link overrides.
> 
> If FW AQ API version supports it, use Report Default Configuration.
> Add check function for Report Default Configuration support and update
> accordingly.
> 
> Also change adv_phy_type_[lo|hi] to advert_phy_type[lo|hi] for clarity.
> 
> Co-developed-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 12 ++--
>  drivers/net/ethernet/intel/ice/ice_common.c   | 33 ++++++++++-
>  drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 59 +++++++++++--------
>  drivers/net/ethernet/intel/ice/ice_main.c     | 35 +++++++----
>  drivers/net/ethernet/intel/ice/ice_type.h     |  5 ++
>  6 files changed, 103 insertions(+), 42 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
