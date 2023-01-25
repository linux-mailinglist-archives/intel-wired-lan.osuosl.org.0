Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC70467B5C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 16:21:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 610986115E;
	Wed, 25 Jan 2023 15:21:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 610986115E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674660076;
	bh=N+xOrPruBAIJhpAJyRwBi7tPYP4mMInzpLO7AR/nIyI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vX2IRtyQYL1LHGJGk9kEYpgh/QBG1nbnkSx+wjtoSIt0swsirTdKrqCsuIAUhHoAr
	 FcaGOmqa0aq8ZpsXP2J5HP3N9h11uGu7fxGADwiLaDp4MgflVQFSqfiRbu8hrh3owP
	 5HWDn+QuVWtP/4VhNSrzsjgY09A+tSh1RFrZK3PFalcHQuGGOdLEgsocJzx/aevc8Y
	 37wa22Z0s07lUduxnkCEVvUGu3+aA+m9cfBH9gfxGmHRo1009BC8VPM3pnhhQ6ymto
	 sMkMWk8di7rp9/MjSIJNmjhiDCqe5ESOeIS+jee1CeYW1xoCsrl8XRsbL7r3SsxY3J
	 734mjQqIBN0rg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SUcWvgitnryA; Wed, 25 Jan 2023 15:21:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F0A160FE2;
	Wed, 25 Jan 2023 15:21:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F0A160FE2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E79F21BF592
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 15:21:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE32B414E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 15:21:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE32B414E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mg8EGYJHuq7e for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 15:21:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8657B4118B
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8657B4118B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 15:21:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="353865931"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="353865931"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 07:21:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="991302247"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="991302247"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 25 Jan 2023 07:21:06 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 25 Jan 2023 07:21:06 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 25 Jan 2023 07:21:05 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 25 Jan 2023 07:21:05 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 25 Jan 2023 07:21:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kPG9RKEJcJ99e2jZusH75ch/Bt+dmeQm2QWYM7bznH+RjGhZ1gidyAETF/+wAjGbRHVsWCoE+mPD3/b5EkoJy+Rp+ZeqwOoyGUV2GuVUiPQlOV6x3R6AeMfJOH093kiNX1GLFTmad8peJfaO2+ZxGrzKsCqm8sy6BNNp/5C4gaJ1V7TMNtcOb8NhvEo3Bx2UY3S5JIP2DDTQmE5Zg+tcfW4g+nfQLLZIDeU29uS2HWmGO6JTRlaz2xd7wAyEoGykwUbaAeGJfMM6/Ypz/rzQodpwHQd/OG5XmzW4y3b+xqYEI/b5ZMGgG1VxWkQ2yN9+5y/c7vAb8i1B4SU4p7QPmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RbLUk2goWE8BAxh1+d6kn70Dl/9+Ba7B3qcmX/vE4Dc=;
 b=fGSJTIOyT5RFryamFhfu9Z9AT92Dav9kJjJyuqTv+W7DxLxfntA66pkfagxGbYFtr2+i055yWxGipMWcLuw0Hq810L2viiQaXYYNejxdnRUZPbMo4E9ZSLLBGs6TyiycOLBmQRjz2U9ez/VWsF+MarljoXzPi4KlqAdhUntULSmh9nfLGydCYUQSTKbJ/MqiRBQEAowIt6Vt3ihttEtWRrXBIuh3kQ8WjADEUHwcqfBJnZ/V5cpKxmstUkpLeneXHmzWdP9q6eyoyVxmDd8mXRkXo/MS19fVSImvNdcg0WheH3m3CzlB+aaz7jr8sqjJA4aNsU24gZCiE2NCnWtJLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN7PR11MB2788.namprd11.prod.outlook.com (2603:10b6:406:b2::30)
 by MW3PR11MB4716.namprd11.prod.outlook.com (2603:10b6:303:53::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Wed, 25 Jan
 2023 15:21:02 +0000
Received: from BN7PR11MB2788.namprd11.prod.outlook.com
 ([fe80::13e7:eea5:56bc:ac04]) by BN7PR11MB2788.namprd11.prod.outlook.com
 ([fe80::13e7:eea5:56bc:ac04%7]) with mapi id 15.20.6043.021; Wed, 25 Jan 2023
 15:21:02 +0000
From: "Andrysiak, Jakub" <jakub.andrysiak@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 05/13] ice: Fix RDMA
 latency issue by allowing write-combining
Thread-Index: AQHZK6Pq7cq99Ow3KkWsENdfL/OXW66vSPWA
Date: Wed, 25 Jan 2023 15:21:02 +0000
Message-ID: <BN7PR11MB2788DEC54AA80774052E7CE5E6CE9@BN7PR11MB2788.namprd11.prod.outlook.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
 <20230119011653.311675-6-jacob.e.keller@intel.com>
In-Reply-To: <20230119011653.311675-6-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN7PR11MB2788:EE_|MW3PR11MB4716:EE_
x-ms-office365-filtering-correlation-id: ba961813-d6ce-4813-9f7b-08dafee7c552
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i3v9KnkPFExaYINMbwO4y1vlA4gftRKPp8AkXq+j99DyXe/XXJA67tKRm7ONtfWYzhQu+ceKzTygDbLeYAmA4Q7gsZcZQqcW7af9GZkeL9GsL/sa5vHx3woj3cXJ9fqag5StvkJvuTcz5UZgCln36YIK0xSCnPJP+pzZF7lYKwpiFy+ZQ/uovSXd0XoSB59O16Q3+cWnFzr+VLZFkNrhE9qooZ0gXB+pk4lXQafrwyKC3DwhiPoaJnrQ8RpoWdtXO6IM2eperBCuU8g5XFqFy3ChNNzyxlMhAjkyH7OLCzc8Qvt4Mx7qoIS+WwxYyBC35gJ10FLianCBTkOqBfN4CY1jcemB1C8vzRFz5GHzN47c4lb+67wKvd0VBBhgDsKxKFPw0V7UVvkU5nzcKZHO3jw8ApgcVRRlu5X9FpPdjgSsk+19Ge4oNgbSYRNdKpYnOEzZ4AnF4HYp4EfhZ41qXd7hhMxBGhKJODeQMAgQ2VXPQrFFrxpV9g9VaRxy0WPxhtBRM2QrljwdZ4K3bOPY213M43ZKfG8VoEXP+nhUqM3ssF3WA2+gAI+ng+MF2eVZ65iDxLVWEk5VsRWoYcBBpSqAAzkCdQgKrpvMELb+rYNbfRCwXdFUAOOEBn6OuIr0/i7en6SwSH3yMzijuqj/UnNQdyeBU2BY1oFcAu4eU/qFkdmF1Nw0nbnjAterD4rzRnVW5TLKy2uHU/DCLbhUZ88ts00OddE4zjsDOF17nwg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN7PR11MB2788.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(366004)(136003)(376002)(396003)(346002)(451199018)(6506007)(86362001)(83380400001)(55016003)(33656002)(38070700005)(38100700002)(64756008)(122000001)(82960400001)(66446008)(6916009)(66946007)(8676002)(76116006)(66556008)(66476007)(966005)(2906002)(41300700001)(8936002)(52536014)(5660300002)(478600001)(9686003)(53546011)(186003)(7696005)(71200400001)(26005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6g6q3nTyVdfvOjVortmlxYDsSJ4xrCogG1PAWH3DqGDg53qScbNGpiFn1dHY?=
 =?us-ascii?Q?DRbn98kll5FD42kvtKJ19sPySlTLEt9sMxZL+craKKjNQUv/ZlNfRw0CS9x1?=
 =?us-ascii?Q?lMVZ23L5dPh/Zw+wKUmElXj1mRTuBK+FDxiDtG7JBMKu96Q8CMLCtvA+uJ9o?=
 =?us-ascii?Q?w/cBGP2NluARmCKFqWi8AJSigfgDeKPUTn7dndwAxHMg40/e1VVvlE/bJALA?=
 =?us-ascii?Q?RNukYY9/IYgcmc30JF5/8+QLTMqYDaQCN5enDEVtJOfJLOAxhLl0be/isF1s?=
 =?us-ascii?Q?06c31oSURuPwB9p1gBVejhuZ1Mq40ldlmzRRzhJ4X0bFXPoMicDCFLZsYJwU?=
 =?us-ascii?Q?6drZdez/ZTA96Zg3JIUQq3Z5gdpJShPYLEc1HU2JuQ2uP+p47VMb8zTPZ4W2?=
 =?us-ascii?Q?6KVZbKej+Mp3V86aQ1TstrNlMGrZg9lhGjC0dzVUxyh1coQuLQrwZqPxBji1?=
 =?us-ascii?Q?+Cu7zmkFvA5+sETfFumzg/+QEDtoPNlRI21u44Tn2cKDfCkR2V/yQB38FqEQ?=
 =?us-ascii?Q?ySUoK5flSlek1+cSXfIw0S28dxuqlE4qMeNwMhKRJq39/LozcQWYoeJeQep4?=
 =?us-ascii?Q?onPwupDPsWHua5aIUTdSVJgQ+kxk/qyy6IUXcXw5ozOGO5w2WWyGu/JDztjC?=
 =?us-ascii?Q?TCESXlosOAQDWGeNESRxDT6sVt3SjqZ+3b5R/60dr1nzT13gZMYm7iSgC8FX?=
 =?us-ascii?Q?yZaXWz+zyrAs8yMI1l4w97q1Zk9iTojqpmC1vQdAghDNzhN9P7+zhG6lzTJY?=
 =?us-ascii?Q?Y85P4s55M9D5KbsqXD8NoQKf4uIjSzjLo8Laj2x/ZYZSSQ1NPEMUfi/Hxwst?=
 =?us-ascii?Q?zWYCFJ4L209qGXz4HkbumDJfkszespTCwuqQXxjvkah7ogGFs8lb8neOdcGi?=
 =?us-ascii?Q?VAx49potIfZbWH28zImj/GjEcel4eO3R/xuADUSevQ66WNYcK4MvhlNLOzOl?=
 =?us-ascii?Q?4LajdVfxAvrKWRypMHtzEwHjgt/S9wP7wQ4osnCxAWqqjUyJFGkU7OskGeEh?=
 =?us-ascii?Q?IDLo6tDor9/TCh50wZeX1EAbEKcIrOHT/gDLigjQWM7NP1K95AadheS/Hree?=
 =?us-ascii?Q?/karrbXDUz+fXYANGHapLXOPFBIgfG036fSjnZLol9QJKchkB5MlRlZCGzOw?=
 =?us-ascii?Q?o3pQC1rPrPbpMvKEpldR7ITSWILud959A5pe3BYNsO/FyXWUnsAAEYXBvTYZ?=
 =?us-ascii?Q?4fPJX8nry9mYOwgiLuIlivqetn0L4Fbpj5wilSovAPXV03BdhwvxeyBDID3j?=
 =?us-ascii?Q?8/ZJLIHwe/GtVLJ1I5zW80gnNXRWzpXCR7KJ0vphDWdtm2hN5G1GoKVU6Toy?=
 =?us-ascii?Q?DKje3W7bIYb2PYWdKGhCXOXwnbPmzXYcLHb12gypBjja8eHYpZoQgrQlwDUd?=
 =?us-ascii?Q?1BBjGEjYSmrYIkgVwituvUU/THpBh2YPTUnNQvVrtyAnuOT4fqxhuOAUikto?=
 =?us-ascii?Q?Wm+uTepnxeEKz33b94+cDPciLWED5ozE0ZQW4yNZQq0r7pvQOWuohPU0nvCE?=
 =?us-ascii?Q?oc+wlK3coreD8+LH0tW9L84eWmNNYMKLo0DVp71zBaVfyKoyjD8tmcgHjkL4?=
 =?us-ascii?Q?gkPmQXx9JILx20UJEy+PvBDlpHBpqiOTyEDoBW3b?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR11MB2788.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba961813-d6ce-4813-9f7b-08dafee7c552
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2023 15:21:02.7148 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OKvLy7ibLJ4Ldjc/pifhBkiEiEUeFnQrPqxpF95hf9XMNDTAd4XaceVoHE7g+tk3vY5EWr/DvvaB6QMuJ8Xghk1j9RU2/XkhKY6IqRF7jZE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4716
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674660067; x=1706196067;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=G2vrEGae348zE4FrHKQKO3QbA8cnIbLA/UVJD/Nwmi0=;
 b=dqJoXFru1GqkXg0ZyfphgTRrDRGe/ZydPTz92oF3JUYrp9gIDefXn87l
 B39GR3j4qB7/IoksHmNaqgHchcCmIJgYLWzQZiEKj2iIcf06Rdn72nn38
 1TGXhFLz0pbd9zyL7Bur7Qj4hKvMn93FYhVAXHkhDkxUiV4/CcQS72O04
 jaV/kX1j2VClmRwglOZ5g95AiH++VIVayQegK7LIMsKZjEdUcVeUxU/5O
 Q75lJiR/QTJMyRMYUo/0pM2Rb+G8HEJEB7gOxLm7QsqVudP6bQIOTWw5g
 B85IFNGyiyP0NvfEVMCFrGR92HwccKz0X3hZObM6RR3ck+JmWbtLPlnNV
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dqJoXFru
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 05/13] ice: Fix RDMA
 latency issue by allowing write-combining
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
> Jacob Keller
> Sent: Thursday, January 19, 2023 2:17 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 05/13] ice: Fix RDMA latency
> issue by allowing write-combining
> 
> The current method of mapping the entire BAR region as a single
> uncacheable region does not allow RDMA to use write combining (WC). This
> results in increased latency with RDMA.
> 
> To fix this, we initially planned to reduce the size of the map made by the PF
> driver to include only up to the beginning of the RDMA space.
> Unfortunately this will not work in the future as there are some hardware
> features which use registers beyond the RDMA area. This includes Scalable
> IOV, a virtualization feature being worked on currently.
> 
> Instead of simply reducing the size of the map, we need a solution which will
> allow access to all areas of the address space while leaving the RDMA area
> open to be mapped with write combining.
> 
> To allow for this, and fix the RMDA latency issue without blocking the higher
> areas of the BAR, we need to create multiple separate memory maps.
> Doing so will create a sparse mapping rather than a contiguous single area.
> 
> Replace the void *hw_addr with a special ice_hw_addr structure which
> represents the multiple mappings as a flexible array.
> 
> Based on the available BAR size, map up to 3 regions:
> 
>  * The space before the RDMA section
>  * The RDMA section which wants write combining behavior
>  * The space after the RDMA section
> 
> Add an ice_get_hw_addr function which converts a register offset into the
> appropriate kernel address based on which chunk it falls into. This does cost
> us slightly more computation overhead for register access as we now must
> check the table each access. However, we can pre-compute the addresses
> where this would most be a problem.
> 
> With this change, the RDMA driver is now free to map the RDMA register
> section as write-combined without impacting access to other device registers
> used by the main PF driver.
> 
> Reported-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v1:
> * Export ice_get_hw_addr
> * Use ice_get_hw_addr in iRDMA driver
> * Fix the WARN_ON to use %pa instead of %llx for printing a resource_size_t
> 
>  drivers/infiniband/hw/irdma/main.c           |   2 +-
>  drivers/net/ethernet/intel/ice/ice.h         |   4 +-
>  drivers/net/ethernet/intel/ice/ice_base.c    |   5 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |   3 +-
>  drivers/net/ethernet/intel/ice/ice_main.c    | 177 +++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_osdep.h   |  48 ++++-
>  drivers/net/ethernet/intel/ice/ice_txrx.h    |   2 +-
>  drivers/net/ethernet/intel/ice/ice_type.h    |   2 +-
>  8 files changed, 219 insertions(+), 24 deletions(-)
> 
Tested-by: Jakub Andrysiak <jakub.andrysiak@intel.com> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
