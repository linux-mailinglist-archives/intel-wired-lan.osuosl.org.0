Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 745A335EA82
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Apr 2021 03:49:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E346883443;
	Wed, 14 Apr 2021 01:49:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G7sIbJ0mCksw; Wed, 14 Apr 2021 01:49:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4AE5E834F5;
	Wed, 14 Apr 2021 01:49:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 785791C1148
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 01:49:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63A1460680
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 01:49:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 77Y_sK2QmxhN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Apr 2021 01:49:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E2EF605FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 01:49:11 +0000 (UTC)
IronPort-SDR: 1UpGqchL0xThVhhmk2W5lZScBULp3OYQ66JvN6iQW08F15j1dddyaV/iJZgYSU8+rps8D4tQAT
 Uj2Etb2y24iQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174647889"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="174647889"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 18:49:10 -0700
IronPort-SDR: Ae74xbgkTag3q7SS4BzY2IWtUwse75vmQx2vjsrNF3caMcbrpNQS4HYsrgWCV8T8VIFjmxOXAb
 lKOs4GIQydHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="382180842"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 13 Apr 2021 18:49:10 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 13 Apr 2021 18:49:10 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 13 Apr 2021 18:49:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 13 Apr 2021 18:49:09 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 13 Apr 2021 18:49:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bFBQE858hPcX5Hn0Gil51YtD1ZmqaSC9Ai81Flvd1E9+GMrXbwrvxtE5R3Z3AGbNsgAwzdo5DD8f2napvDvjUgd4UmhCsqEtaEcw9qq83ReGwEv5ocO0lW6bvF6c+NH502taE3QYEs7Yorp+XLrEUFC6rSRBT0npjBpJ/f6w9uHOGCVo/VjSkU1zWBaPHh9L7t66+on8NLiDwMdsiwIQqlxo1nwkul+X9PgwMMPiys8SIKAOy9YzMKlCrUkrSe0F1u3NirC9iLKOcSVN8ejFkQnEOgU1uoEVNOf7m1lW0DFEQo1R86PDbOCz/cp3a25kNxHMnxXb0X7qAmVoctLeBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MsAKfe9KAuAyjg4JhXw/iF7ljNOyg00tsIdzAJXaPwE=;
 b=evDTMEqxdtFslHLe1BDMAKoacH37872uV0uuVyxCIAXd4Sl1bFtWMUD9Zs0VxWCwOcWCJkVqy9erZw4T684MZMLyDGeZhYSmeZxiyLGhIVWxtUMePFTtsUdEjP5kRE8CYQ/Y98JtBNEl4mvX5cYIQisTJnjYDlT0+5Qr92QAe46xtX/O1cHeO1REdmscrS6U/M1ThRF9/X1UZHfAbL/2lPBokRarV4pEtjLvcabUe1AAMhE0mR1Esh7dTYY2V6759gzvJu6kav/7OwZ9mOgXyzvyiu57LZIXrtmp8EQKk2s4yO462/frroydBhL6+VLM7AipuFctbZ+6FQJrhDWhHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MsAKfe9KAuAyjg4JhXw/iF7ljNOyg00tsIdzAJXaPwE=;
 b=j819EIL7LYfsjk+zaT4dpXm5u7P/TFPFgsV7rTFo7tO9em4PprcPcL+mCmPoTAPW2n7SHOHgSvqpEMv4NNGpYbavtypIDD8Porut5tG0hxjcNE5mgyjyrQNfF+LbgGvdtpobZrvGDp6EKp90sBPp42bpfbhFoXCbUfA7u4KXcz0=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM5PR11MB1740.namprd11.prod.outlook.com (2603:10b6:3:112::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4020.22; Wed, 14 Apr 2021 01:49:06 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.4020.022; Wed, 14 Apr 2021
 01:49:06 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 2/6] ice: Support RSS
 configure removal for AVF
Thread-Index: AQHXMAGawjn7PjfkukGAyIQarn/l36qzQFRQ
Date: Wed, 14 Apr 2021 01:49:06 +0000
Message-ID: <DM6PR11MB3099F2EA4EDB87D15CF22B42D94E9@DM6PR11MB3099.namprd11.prod.outlook.com>
References: <20210413004844.32462-1-haiyue.wang@intel.com>
 <20210413004844.32462-3-haiyue.wang@intel.com>
In-Reply-To: <20210413004844.32462-3-haiyue.wang@intel.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.46.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2d3b92d1-2143-471b-2eb1-08d8fee77d41
x-ms-traffictypediagnostic: DM5PR11MB1740:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB174037B8E9416754129D87D2D94E9@DM5PR11MB1740.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MWqOIbmoqSVDI7AIwYyPhaugox5HNRGJ5DG5XewbZuKEcrbeIpf0Q9Sss5upk0pJLx1uHS+QY2rnr8Rwg1oiHPKWyyu+OpkwGNbJGjtDDGkaInEuIk8UaWwbjXvMUWy6f/xxNz555kd9z7ww8kceh+xUQzBzS+VJaSVEbQUn6scipp/yWeTOXjLFfq4vIENZ5HN4sqft1JRSY+rhu7w4zeVKLMZq/kmzsVMo+IYnoJKJqLxhhchmXhXknAVYylx70mpDndQqAk4hJDBjI2TGZ0m7qu2COP6xpm4IdXfJWVPaM1E7t+Uh7htumjUHkEV6YahN/pGGorQstbhftlmxpvUJBZtLlnBoYLcOPi9tPv5AELt5S8qbt1N/insqFHoXin2qosTmUyP0BlozDkxveUcgV2o4QkLYeyd8bR3NvOM2ED6H2T/fk3LTcOpjK4WAa2uyDqU2BvQ39kWCGAyFcFZ6wxpXUpoL2zeQrFQc28GIUO+S+BekluPHFCr1E/ASlK6EP1d/0ZDGHaDZCrxNZY1atRT/s4dUAob5PLVmpoC2itcPATTi1YRTEzkM7Wqa3xAYHcXfyyAAW+65mI/JYevjuOipbRVY+S6XrB2cPmdiF5NnoGu4r5JPgZ4MxlBkvFhLswVqZOlurZK7NBiPKxSXx+k59eQe0DJ/Q0dWfCsERrQpKIaUN+7+HACBHZDx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(396003)(136003)(366004)(39860400002)(66556008)(33656002)(2906002)(8936002)(107886003)(66476007)(83380400001)(54906003)(52536014)(316002)(5660300002)(53546011)(64756008)(478600001)(6506007)(71200400001)(122000001)(38100700002)(66446008)(66946007)(86362001)(26005)(186003)(55016002)(4326008)(6916009)(966005)(7696005)(8676002)(76116006)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?BGtvaj/d32QfCgXbud3IHbIEn1NxfY4l2Kpm7AMBPDFXdxnYM6A3yQn4L8j9?=
 =?us-ascii?Q?BbZpfH5h0M8H+8cBFLUMtXVAsn2YfEFKf9sxVAxQqLgeB0d0fjN2/Z2W7WN4?=
 =?us-ascii?Q?0sqmogynAure3fsgM6lc+pL54Ao0GWw0Yz2QIsVlk1NCqhoff1hhA4zhyuA8?=
 =?us-ascii?Q?154c/Y9d/hjX7eHlnes0DztFwLWC2ITrMw/fUabBMOB2nOGVrXCkJzviRNvz?=
 =?us-ascii?Q?nW9/AQcx9ojVIY9s5+dHiB9uv0AIewoxk+diIu5cfj2gae/zCcV/cy6IZ/g2?=
 =?us-ascii?Q?TxBGRt2Oh055iEZ6QXN/QHTO4IxGDIui1AqjhaZVfiHyGPRQ2vqUyKnzXYW0?=
 =?us-ascii?Q?jKeC67UE23hmVeEV/0TVP2mESbVlFsKQgBtmBd/9s2wW7Hj2UNPnk+CbxnLf?=
 =?us-ascii?Q?NFKFv0VAznvG0IYTxiZHCVHtzuLZnJEWH48M6vRLIuEPwm8G9wSCNM4li23f?=
 =?us-ascii?Q?GZu1c3Q/SntiSBM0rfJl5IX6RHMR6fpVrHT//SugRmIlqxXWo6A7PLPhIgSU?=
 =?us-ascii?Q?jnLi/XuCpJIPH3GjHmHMnM8pib1knamZ6gkv1mYyIPZGAJ+8IEMFK6YFLmuw?=
 =?us-ascii?Q?UkG1c6NDmYlbPqQ7hzwj1dLORY3SwNT8+S/hN9eq9iiKzLI4thDPUDovZqWy?=
 =?us-ascii?Q?KTTSXifhK8hYU5T7/zK0dWiYtK5aLHVvWq6FzLbBWoZjSbo+uWkp7JFhTiCg?=
 =?us-ascii?Q?sbMzUQBBPG5dMVt+21eo2vyvsz92rAWpa0DIS3jghkwD1TnlB5XttHGba2Ay?=
 =?us-ascii?Q?kyPlC8iCk+aBbYzRZy70UkvYuzTKTqDsmLPa/t0uuFdwJerzl9Yy5ccpyXUT?=
 =?us-ascii?Q?wWUuK4Vx8viVcDlzMnSO9qqv12AroeKGCFs7ePU9k40+d87Yf+enolmjqbHd?=
 =?us-ascii?Q?tH+zpQ6Qw69g879knsMXGGVCJwJUVC2Yt2P7QlmBsEKnPeVIFW7mwJiF07/A?=
 =?us-ascii?Q?zu2wfy4iqKYj/sdYgu3dZ51vyKdv4F/KZ3IB8Xlti3xfWd7bW6cDzWnH6o5h?=
 =?us-ascii?Q?qOAqGFd3okkUzVcOFwmLvDjrWEZ38ubBPzEHKsXYs16oMIl55vZRlxj6UjAR?=
 =?us-ascii?Q?jKb4swr+AyNzdcrek2oAkdz+UAPiRnPIOtAYd/iqVeldGyGY8pxhC/UfpcJB?=
 =?us-ascii?Q?r3Z6qJLtypY/AAtXdTO+UozWZYhi4+6ySUZq8aPmf9cYcnlVO476MAc3/2ML?=
 =?us-ascii?Q?pn5LaQSp5j4iXuWp27vt9Zkb/sg8P2KCMR16eadvg9exdCXP73EuAqWVydCy?=
 =?us-ascii?Q?YhNIv6EXN20fC1xvPt1QLKcL8LkepcXEsunp91mPTFDftZcjrgHy+Q89XjSa?=
 =?us-ascii?Q?CNg=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d3b92d1-2143-471b-2eb1-08d8fee77d41
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2021 01:49:06.4280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qLqTMRArAUGUI8RV9ebF+qLJRXJzFljqTR2Gvep3qIdpkACXSDVJTwQWVG+KQrmGu6sncjxemnmF3BdhVRlPfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1740
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/6] ice: Support RSS
 configure removal for AVF
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
Cc: "Guo, Jia" <jia.guo@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>,
 "Sridhar, Vignesh" <vignesh.sridhar@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Haiyue Wang
> Sent: April 13, 2021 8:49
> To: intel-wired-lan@lists.osuosl.org
> Cc: Guo, Jia <jia.guo@intel.com>; Sridhar, Vignesh
> <vignesh.sridhar@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 2/6] ice: Support RSS configure
> removal for AVF
> 
> From: Qi Zhang <qi.z.zhang@intel.com>
> 
> Add the handler for virtchnl message VIRTCHNL_OP_DEL_RSS_CFG to
> remove an existing RSS configuration with matching hashed fields.
> 
> Signed-off-by: Vignesh Sridhar <vignesh.sridhar@intel.com>
> Co-developed-by: Jia Guo <jia.guo@intel.com>
> Signed-off-by: Jia Guo <jia.guo@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.c     | 88 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_flow.h     |  3 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 16 +++-
>  3 files changed, 105 insertions(+), 2 deletions(-)
> 

Tested-by: Bo Chen <BoX.C.Chen@intel.com>

Regards,
Chen Bo
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
