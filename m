Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B784BB133
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Feb 2022 06:20:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A570A83DF8;
	Fri, 18 Feb 2022 05:19:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AbehMFSkbpc7; Fri, 18 Feb 2022 05:19:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC59C82F51;
	Fri, 18 Feb 2022 05:19:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18EA61BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 05:19:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 01B4040126
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 05:19:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pW1OoaXW2S6k for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Feb 2022 05:19:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CFC8E40012
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 05:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645161588; x=1676697588;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=igEq2mXNHtNHlj5qG/dVTYUSi25e57IDRA83PGIL92Y=;
 b=BWuksI52KNbXsPVhOtlLdKCT+fnv0loEIruZgkdLjiyLccReN0fFUlT/
 4HIFMDPtHx6oSc5+MKfrcSoJgmRas6LqCzc4WEeQRWf8DCg7hRaPhcevr
 NXz65QjC5SQZpFXOgPJpY/MuTWgLpOKGlThLlS1jn89CrBYWsCb41iEo4
 h4+WPWKnH0daBf2lc5FLEuwLrfZ1pV+OuTJQ10ScCeGte6+1TchGMfZC+
 0Lg+p0F0CIUEpv1QT7SZwE3OIU7rOwIJV2qRQcspUpcOHXtGfRuYe+qKn
 3auXhcdhKAkEe3vWU23y3cU9p8DpgNtqakfh4IJ2ekywrBjV8vcGr1Jfu A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="238458596"
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="238458596"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 21:19:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="705231250"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 17 Feb 2022 21:19:48 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 17 Feb 2022 21:19:47 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 17 Feb 2022 21:19:47 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 17 Feb 2022 21:19:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jafl1W/bNR+gNRVPZgPQ6s2xH/HN7aFG1YZmfnH/IQcWeka5VRBFtLcSctVILRMGr3bCoyFBS2BZeDiQkkaiRNytmLMecqt1qgKheXQ8A8prh47JZ0wmropaZ5/b0Xfgd5YOw2LV4Sg2BSsFmQR9A9HznbosTOQWe+aMl87FGXTkjccJaESMdAbXrmAelu2mmDUhhyx76yh54HOz+5goHwzhzEVYERBgAZwNv8WBuPj7PmtU080K0zffrPuuL/eZEGan5SR9KuG4vWF9+ZtYnhTIbj0HBaH16eF0aT9ztKhkKct2KKLTC8FTrNB1/rjpFUebTZqsuL6EZmTvDSUPIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=igEq2mXNHtNHlj5qG/dVTYUSi25e57IDRA83PGIL92Y=;
 b=bF37M/q0RM7uX8D8bWaW1vJhIkaZyefFTrE+XZQdr1PZgv0HklRaf6VEnjkiD4NfUq1YvRQRAvamcvfqyfYkERITstKFiBFi2AshsLjWcWQZ/8QV697RcqlrZUPzAfGf1VpPTHzsDxgUVrqiBvcpZWt81MuZv3iq/4UNMP+chwYd0XQK9YP0hYAxNrWfscayE1WjegYf7q4ujL6M6GgBnG2O+Lsx/RZF6eHahi93XmR+MMhUaRKN7cet4NZbmyiRLAC+Xji+BuDMMIATkRZMmVA/ZfpGDOaCrsp6b4vRvGJYlXlt2LD44F43e890LRj13j/NviG4BLQYZ/2QSCS8fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MN2PR11MB3568.namprd11.prod.outlook.com (2603:10b6:208:ee::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.16; Fri, 18 Feb
 2022 05:19:45 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a%4]) with mapi id 15.20.4975.019; Fri, 18 Feb 2022
 05:19:45 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 net-next 3/4] ice: switch: use a
 struct to pass packet template params
Thread-Index: AQHYE5SFgW5O45u9YES1b6wJ53J4vqyY5wwg
Date: Fri, 18 Feb 2022 05:19:45 +0000
Message-ID: <MW3PR11MB45544D0038C2B56448258AB79C379@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220127154009.623304-1-alexandr.lobakin@intel.com>
 <20220127154009.623304-4-alexandr.lobakin@intel.com>
In-Reply-To: <20220127154009.623304-4-alexandr.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 82d2e567-721e-4d72-89f1-08d9f29e46c8
x-ms-traffictypediagnostic: MN2PR11MB3568:EE_
x-microsoft-antispam-prvs: <MN2PR11MB356816A2AD82E91338623E559C379@MN2PR11MB3568.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1443;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xpZJs5KOb279b24JE4UM9qTT17es7A/KNUmFcrKDHzj6XwBSXL+UIHU5rCOYL24VhvmfFMpknCuWTfi8Od8xSKArtslDOKHXO74g3S6+ilcQ1IToLEMgiwA47Q0uVBpnT5mvhiNgumPmsl7EqkroLtErdA6vlpOAMqwicT3hrVM7ZFDDj3ir6kSKjyBlD/7LUEeHOY7iWAkdCv864dd7ofngWsZmBJUo+lO6ACOsD8ndxjRtPeH5Gdk7JPR+p5dcLT/FADIIJW3VSpPAGz472NuFqDfvQTmW4K9oUAhS9jnGChCy83zafVWLMdSfGzQmm6tHVddyKsKVrV3xUaHm9lHxm6fqGi6ntP/uW2NB81R6ihDA+q5kwgg8bGHmt/lHcv1yPBMwLCnT4N1SZnpYrBrqT0qrsy/rBIAsD9DX0kWOQc3YdgH3XLm2zsgFNFauDWdItoOISrJk+gKAGW1DSqQDz3e4JNbal6GehJwMGB3DPqTRdrhRuZTQGAltvgwsbqDyJvnJnjBGjaM43hYOhEbNfV8hOdS4ye/A2FjUu3skgzqIc+jqHaKsdiwsm4zHLje9K9xBD8NPKVxy+zN4OaxpeMtDhOon4N0lGMbIAIv3muN7c14LyIl1WI9frpjV9UnQfMChfhqfpBl6+zNq3nHkaFxh0h1YVGfIxq2hrSlOQvdebxUXG9n4W1DX5/Bw2wJ0+5cu0VgQQwdaAOM1HQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66476007)(66946007)(4326008)(8676002)(52536014)(38100700002)(76116006)(66556008)(6506007)(7696005)(64756008)(2906002)(8936002)(55016003)(71200400001)(66446008)(26005)(186003)(86362001)(38070700005)(316002)(122000001)(83380400001)(82960400001)(508600001)(9686003)(33656002)(110136005)(5660300002)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IzBKY2ocDgxVaivq03GHzf/sQtu7Izy/Xol1irbJH7pK9tipv6dol6HcO3EG?=
 =?us-ascii?Q?K2FQnE5Ju3sGrbTD4QcOHec6NhHUP/IXQPjvyoI2zmZH8vXHYO1zFgAjYZfW?=
 =?us-ascii?Q?74c5uU7g5lhB4/Y3LC/OSVfckdn6Q2oQxMRIKX6buaOZ3gHxm9bja/HHCO2Z?=
 =?us-ascii?Q?uGLsZP8PjEFewXiUOnq1+gpMJVmxbekdtngiPeEEYDscjg1v/a9Qp+CcEYIP?=
 =?us-ascii?Q?W+kSouHD0bYS4xkdt/IVM9wCBZwmDHO3b+bzx+sTqyUEEC9NF9T0HtL4iuoD?=
 =?us-ascii?Q?hEgeHp9Vsw0+p1XWh688AJIFYf9jFyiSeJwPF8vXajZymtkrqz1B0/pS+a3W?=
 =?us-ascii?Q?G3Qj7/HXyGLDLA8vE4FzRkFYBWlVtouIWpRA5PMcgeErKgvDFQjxrwPA3jQa?=
 =?us-ascii?Q?JP6LH1GF4ajlaeUXEjF8kuC7Ygn1hOFWt8RoYY3uDPZ/I5SfAvt7EN9eGIKM?=
 =?us-ascii?Q?quvwBA618Z7F1W1jDpIVXV1wixnCZU1lX6migJinC5ZbCJYu+kzYATrPfGid?=
 =?us-ascii?Q?uXc+/dBzvQ7WO7hjPmcvbwwyOQW0HWe7O15OrjFwF85QfHc0qbFE8gRI0uVd?=
 =?us-ascii?Q?VBPFcZfqlip+b2rHgOd6t1NFBWGiKZe6kC0t3y25dAyiWmnc8uK02mud0CFV?=
 =?us-ascii?Q?GwPzVRqatvY74WSt8OMWE6AzTYpBWeegz4dh2L9EkZjdNIhieg+atOGvnJqx?=
 =?us-ascii?Q?vo4DcRbEn0C2QGMpbqN3ao5JwO2bBhWazPpxG8qFlI0KmFi8GpmBbHStNmQQ?=
 =?us-ascii?Q?7S+rOPNlxodjKSYs+zu7dkQYP/sUHyKhR36Uou0oGsgVF/4Rgga6zAMNMfxu?=
 =?us-ascii?Q?jNbk0gStzx4mHy1o6xHdHf3Ftd/eTMRXLbQMnRr+qwdTZpX6h5XL47Wx6d2o?=
 =?us-ascii?Q?89KEA+bWt6pVmP2aR7/U6boZTjg/MwgE9zwFh95SAv8LAt85bGHy1VH2B/JN?=
 =?us-ascii?Q?2Mmx+DtRXdsbn+nuFWu5B0hDHFwcQiNYCsfu9u1HKetW38HXxdS0dHhWisZT?=
 =?us-ascii?Q?OqLClGkyyAivraGKrs7is72uqeZafKhItWujPdX3XzhE8DHg77Kas7CTnFPb?=
 =?us-ascii?Q?AJCFc8olZpvzj9wC+xo5PDzpAnMYi5N/9PwfdZ/qWeJdYVt/SKklg+/n7O6g?=
 =?us-ascii?Q?XxBuP6b4/vyQieMT1BR0LnV3OHeKUPA8xarhBN3jQD8bQTQVnsbKCcgD2ekl?=
 =?us-ascii?Q?o3VB4p39HYSOn77LytQRlezoa4+JqRGF+rqjGpqAGVqSBKM7Mw/TXLnmK2M4?=
 =?us-ascii?Q?kcSv3Ycd16h+4O7zYMMmjd+iZZ0x4rpvgcCyHQgtF93cuVxX6OpWliIHaO9S?=
 =?us-ascii?Q?bq+6WG83RFfrqSgIcVhSF9xHO/j4nx5a6Ut1ZVhgfTDIIQ9sSJo6R8DjTXrM?=
 =?us-ascii?Q?zhTd7K6y2BeWPBbXWkHktRv/XYWyv+n5eOd2n5TDEZHAI6R75Ck5Kru7h5oF?=
 =?us-ascii?Q?JQwzlAMxSguH+ZOG0j0f+pjMN4HHYLiHellf8QbiV7VGs+cBspsXRwt7P8aq?=
 =?us-ascii?Q?YSQ3mahwmDSF7AvftRPrQ7R7yg91522QW4TxT4wB5L0yc5B+r8q9UFqohYcY?=
 =?us-ascii?Q?R5Qdy5eirsRPW4+mhoxOcym2Cb6sIdo8We2T5FJohf8TXnVTZ10GFkqCfx3h?=
 =?us-ascii?Q?u+xjlITbhHTQEUYPkOQvk5EF1FSefIOvDlCeepzdaapOTGk03K4q9+U9MKbc?=
 =?us-ascii?Q?2fYs+A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82d2e567-721e-4d72-89f1-08d9f29e46c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2022 05:19:45.4532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8lSXe9S/9pKLYTTlQ9z1uCkLdatede/Nduh/JMqekD4Z2gA1sAaSnric+0rICoD38QoBail/e05vzB1bHH8kwi6xr6mXLNkGkfgldfNNfvc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3568
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 3/4] ice: switch: use a
 struct to pass packet template params
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Szapar-Mudlaw,
 Martyna" <martyna.szapar-mudlaw@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Alexander Lobakin
>Sent: Thursday, January 27, 2022 9:10 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Szapar-Mudlaw, Martyna <martyna.szapar-mudlaw@intel.com>;
>netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Jakub Kicinski
><kuba@kernel.org>; David S. Miller <davem@davemloft.net>
>Subject: [Intel-wired-lan] [PATCH v2 net-next 3/4] ice: switch: use a struct to
>pass packet template params
>
>ice_find_dummy_packet() contains a lot of boilerplate code and a nice room
>for copy-paste mistakes.
>Instead of passing 3 separate pointers back and forth to get packet template
>(dummy) params, directly return a structure containing them. Then, use a
>macro to compose compound literals and avoid code duplication on return
>path.
>Now, dummy packet type/name is needed only once to return a full correct
>triple pkt-pkt_len-offsets, and those are all one-liners.
>
>Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_switch.c | 173 +++++++-------------
> 1 file changed, 62 insertions(+), 111 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
