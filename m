Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FD63AF839
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jun 2021 00:05:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C6E61401D0;
	Mon, 21 Jun 2021 22:05:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ebZK3wgxLSAO; Mon, 21 Jun 2021 22:05:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB0F94017C;
	Mon, 21 Jun 2021 22:05:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D95C91BF287
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 22:05:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C7B7D60646
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 22:05:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t6Z08Pwplkuc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 22:05:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F572605E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 22:05:36 +0000 (UTC)
IronPort-SDR: +EMcUjVzY9XTKKfQgY9DASM+X1me7e/E5fFtrSrDukuSbDpAJq6S014B9SfAsfPqvmj/Io8bPB
 T/7qCNJp9Y5A==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="268078643"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="268078643"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 15:05:35 -0700
IronPort-SDR: glM1KaKE86tnQloKUeP5W78iVLbdm8VhRJY/jI4NVVrltu6KW1eHYtVOMq6fZ9K7CxkhHfuLC1
 ZJRuNMdP5RNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="486659081"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2021 15:05:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 21 Jun 2021 15:05:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 21 Jun 2021 15:05:34 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 21 Jun 2021 15:05:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gIROghVj2Z9xQBptO7CSTz7c8EISoXIQLe7eBEEo86YMRB/8tCYbuPj4fLCr6zGwnMqJkal1nW54B1OY3GUnavETAOGrTnRL/hSIDHVjtzuQCJZYlVmCsu3SlTcO4VNQAJ9ikl4TUQkoVrz+pbyzvERIQeX/VkoK7Xv9JwumtXat3L55K3M7yIIjNNC7oH/pb81MKXeybicmSIFRqYVIlGxC0OyZkv7EcH8OtZTO4V3sazCP5iMnIKhmPkTkV8Ml49dIZckv7cduDH2JxnRMlZorghKA6suhGh/qmlphGwD00G8P3XJ9YNBrLnPM74fsKfYHw5QBzmzJNwEefE5+ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pkNJB8/i5y6qvo5+px5r4kLugrE/F87wBIn7rBi/9qA=;
 b=M36eC/9BgKP/36dBYLMYN1ltB2/bm3CZb/IrY5e0jwaVRhu83lJW/pm/9pNw5OHLkvjjOmdEMdLA7mXCwfLS2F4CCje6b/2mg0y5PKKuxhoniKpUmBT3jL6Kw7mrjrk/CSgsoJp0sud0sP72em4KsTYUVvhALQp7JWeQSeDRkRW3AXu9RMauq6e8P/lw3j1Zxao8WgjN51qQ364asbuRCC1BgLw9KooDkWtfjL8BvFAswP3Y1B3hx0R9PNK8jEYoq/jBhiPySFKd4D2R4tpjy6iE1I3HyEt+9eev7Wsf1FnZ9gHc8pcNp2Bj6aqp+UkZ+kEDlS0wx40+9BVKlb5qAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pkNJB8/i5y6qvo5+px5r4kLugrE/F87wBIn7rBi/9qA=;
 b=JlqQ9+lIYDZ8YXJValVr5UvDH7gMqqxbw394RE8z9+bKvT+DZYCJAeieoDniJBOUR+fkZIAgU+axT6b2suRF2epMHbeq3TO4A3yFdPluXFQ7c16WmdYuMcQUMp0kw2Yq/RWTjZpZARWKnGoIie4wiQWc4thAZCutlxL3h81phqk=
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7)
 by SJ0PR11MB5598.namprd11.prod.outlook.com (2603:10b6:a03:304::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Mon, 21 Jun
 2021 22:05:29 +0000
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2]) by SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2%6]) with mapi id 15.20.4242.023; Mon, 21 Jun 2021
 22:05:29 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/2] ice: remove unnecessary
 VSI assignment
Thread-Index: AQHXYWhjYY3WPV/nz0W2IcxnL5tw4asfEDMg
Date: Mon, 21 Jun 2021 22:05:29 +0000
Message-ID: <SJ0PR11MB5662A7E1C187B2773ECE341DFA0A9@SJ0PR11MB5662.namprd11.prod.outlook.com>
References: <20210614214607.41749-1-anthony.l.nguyen@intel.com>
 <20210614214607.41749-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20210614214607.41749-2-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 6f4e2a8c-60a8-43a2-1d10-08d93500aec7
x-ms-traffictypediagnostic: SJ0PR11MB5598:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB55984E995769DEA2B134D3ABFA0A9@SJ0PR11MB5598.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r6bJsh1MUDT2BBq8HO+i8WAwnf8CckjVf46B1EquQLm3mZTUrc3nLS9YS6EyfaPuja3+lB0znwlEVYNnMvzIg4yhErfydHsbMKVdPlYZL5xL4Joal0y1DViG3bsAVHZZJXj4SIbUbkudKUEYpEsYwy+zcUuP8GHhMjFCv2MYQIzOwiF9F4bAY4ej+yMnBURrE2wELYOPhiUDyTj/rnL2DWLe5ZKY+e/8yDA/LYyuXDEIadRWQ2XHqmduNRfct/pxoRdAMPu/ejxuFfazF3HWdoSmBADveNqznEkIPQ/QO2e1hLKZ+b4jHhYQls1YwGfpmv+5tcEjlbuBhFGm9iX10Knzz0Kkj5laR9YNCP69+yTllAhLXaYrmS5KbSH1nuI58AnBSRog7AvfrJTIkJRE+Y2w2duuEI+fpqohTCCOq7IehG55AyQ0zVtXkIMJ8sVwqeU2D7N5WSXSxGUNxt3bDBTOBZGPXc0wiavi3M/8QFBpm9FJxaiudqdDem2F2c9G1tBTupZHQGGGKpsGhuIvAuJ12CSch/Paaiv8YD5UdhLAXITB8hp7Co6KLiU5Z1Ong4I52hrwNzvDK2ab7jgUp6/x1DY5eTp9fD83sjWPNoY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5662.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(396003)(136003)(39860400002)(366004)(122000001)(38100700002)(26005)(9686003)(55016002)(8936002)(86362001)(83380400001)(6506007)(186003)(71200400001)(53546011)(4744005)(7696005)(110136005)(8676002)(52536014)(2906002)(478600001)(316002)(66946007)(66476007)(5660300002)(64756008)(33656002)(66446008)(66556008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2OIQ9Y8lteBAQobtGiAUxLS1CN21Royf+3mB0T7xJ1q2NNiWM6xXLF/wso2p?=
 =?us-ascii?Q?AxUJCTdAlInzg7PPlTPwPfUMWw60AO/c9UTlMf1sQ4iaJSbI+bHkO9EeA7HJ?=
 =?us-ascii?Q?209H0AuTPUj8X9LSYwEHj4qo1BIUuTJmQ+dK9j51xkY5osUyfBL9zJTmSUoN?=
 =?us-ascii?Q?Zl6JLvqDPsOXi5o+tfGyfnDt0/PORARICXBSBPnehomxBqG+Wu44U6Ex9OWk?=
 =?us-ascii?Q?5Rds0CryYLW1C6bkmGgE49TnM4hMNA0nhTyY74mkPOdLy/S5q726Gp4YxV7W?=
 =?us-ascii?Q?d4Td1KKilWRzR3SU+yxAXXVXkh0qs2UfnVaNbgbgP64yPN8cH50QtXrZdSJ7?=
 =?us-ascii?Q?votDjasw5oW0Y7fx+l/7mPkxb6i0BWO8Vjut0ILAXld3KKErocjlw5d9ySrE?=
 =?us-ascii?Q?OSB+i3C0ZUko5TotSduy/EAXT5J4l5lqJHhmk6JQNtceS2qJHmK09sz3C0BC?=
 =?us-ascii?Q?IP93P4xB/5UdHVOlDRqQXT6QA2HUhcItGhJg8c01/8MIW9d4ZO0k9bz7NILE?=
 =?us-ascii?Q?14BlXGM28TMQEyaKdrOQ2BghPohx4d10X7C9c/x2jrK0de7gqDNhlVtOUytt?=
 =?us-ascii?Q?/jdi6lDkSReb9nPcVVnLK0MGTmJUQVFeFVmU48lLXWNAvHwM/l0rjOE9IWjG?=
 =?us-ascii?Q?fH5s4yDadgCLW/wOSEgM7SsYYjo1JvIKa5tdAroBhknyffXuOOK8xPyN0vNL?=
 =?us-ascii?Q?EHoyVPWjUaGFWHEK0LJOI1yEYQPmYaRy/RgVknq/Sksbg1xgkOQ1aeaW2Qcv?=
 =?us-ascii?Q?rqzjzHzIhI0NA+VEuaVmVe77Utr4rbjHxRzuK9xxoKXMiC7q5kmHbElDDzzq?=
 =?us-ascii?Q?uyRpuPdSd4/EaePUdwga88D13REazwTAbZCnIqnBgChXImAgkpFk5p2Oq6tw?=
 =?us-ascii?Q?qrAhhwQFxGAZm+4vTtawOtkmF6cBf2XP6LfJH7pIBzzlpyxoAISkCS+0qxgA?=
 =?us-ascii?Q?SLIjq7OBda/VQX1mbwbaH8DLH1Ssc96SUpVQ6YyKIv6F0vscSPdOCg4aVef7?=
 =?us-ascii?Q?QW9H9SchCKHyWnsWfS6Uo437QkbE+oFAqMmVN2TPA6xsfVTQo7nCjA5F4ma6?=
 =?us-ascii?Q?xDlixTEwOkRGzkZhx4duGkj0ydXV+xq5H7yzqo4+vzyLOR3cEN0bBrVjqUH/?=
 =?us-ascii?Q?5r8bA/4F61E5Q2PmYf+8kMUJQCxaVHbhlXaLnANMGasOuC3U7AFHD2p+v9lc?=
 =?us-ascii?Q?eJLXY6EFAieoug8xGrJjMUU4DmeuSSDeEJcqnfZnNrwRDp+v0B02t3hJqY3/?=
 =?us-ascii?Q?xAIadgs/F6dwX5OUvl0B4MHzs5OBukHC/S8CxowNIwNW+nV0JP094xW234GB?=
 =?us-ascii?Q?PvxiufRMoDsUjsBNZu5EQhz/?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5662.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f4e2a8c-60a8-43a2-1d10-08d93500aec7
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2021 22:05:29.0357 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VApnf10ekehJftOI9hYpw4ZdiDmX6i0kuFK6ghy3MROjZsbHg+V7UfD51P3MRh9leEJRFYX+Km0D/gwVPabbTCm8tAUdlcSloD2g7M2qrxw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5598
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] ice: remove unnecessary
 VSI assignment
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
> Sent: Monday, June 14, 2021 2:46 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 2/2] ice: remove unnecessary VSI
> assignment
> 
> ice_get_vf_vsi() is being called twice for the same VSI. Remove the
> unnecessary call/assignment.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 1 -
>  1 file changed, 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
