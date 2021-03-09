Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DA9333206
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Mar 2021 00:45:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F4AD4EBAF;
	Tue,  9 Mar 2021 23:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xQVX1PftHfx6; Tue,  9 Mar 2021 23:45:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C25D4EBAC;
	Tue,  9 Mar 2021 23:45:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 833F21BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 23:45:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 71AF540188
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 23:45:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R7O_rHEY2YLw for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Mar 2021 23:45:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8FBC34016A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 23:45:13 +0000 (UTC)
IronPort-SDR: swKrdy+kZqB+5yUDVWJogDuhO9PWYgDMiBEQnv4L8+0eL4FEm8l7VVMrr2GC3Z65NjdMpP2Tbe
 Mx9DrLmK3/2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="188387102"
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="188387102"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 15:45:12 -0800
IronPort-SDR: wrhOZq+7kRtyiE1prGnrpv+MvlbD57/ZYdul8TVlqrojOklxwXfrkC/uPCdqXQXYCK3o0Dapf1
 TMYAz5vxTdQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="371716256"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 09 Mar 2021 15:45:12 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 9 Mar 2021 15:45:12 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 9 Mar 2021 15:45:12 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 9 Mar 2021 15:45:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d2NQJEahlD6irEfD9sNMF+/8nV+D6N4xcCYjamWufVPEp3i1msUma7lh4HH75XZBxHzASVuk4UlfEcrjpPmSQY43ri0Ylq9xG8POyCslzjVRH4Vi5WjaFq4u/q2Uu2f+J6bIDc97rHrN/v4G5ZDjes9fxnFtQemqIcAgN2bHiDc8AKZPyl6eX4hbqVgUr07Q3kgt+MgXB+tT/CPGkwodK5DJ1uLNqdit6XeSoCQgDKU1Y+lTLUEYSa2HeDHYB9eJczGqfpN9Fp/93lcAjnbAmvc1bfICgw/hNzdY7U43HBV407TTKab3oYLvIFpmWc2uvG5z2tg9Q/TkkxrvrTd0dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pj4khiOCOGemuJnqHMjbIdN5M75mOIIp4VPKJL6XE+Q=;
 b=KBGDAm/MbPa6UbNHNTzJZWndslfIwTxwkMKgLLsNL1nwlC9ZhMCXEIGEg3ptrSZ/97ABJGynfqB9rRm0PFFRNWmVX2Gn1F7KGul2iYAMlah9s2D0sHdmXq9ZRTKvTRQWFh6TNzRtuCigSaw/0cV+YbyupSCR2eT0TB2V/LhRfk5Vi90MquE/rQ7vdaH6dTwS7J944pFDBhOxPiaLPJcEy2UQ9w2dx4+Y/ywpABQKfc3UDpaVO7IOX6M/EfOY1zkrwsRR/SDKWM4zJWxzMpkXW2l88qh8xkYc3SAZdeu9jgo7ktJh9ZUUnWH4Z3UsDNNs9Sw+2XlWmF1EB8D3GATShQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pj4khiOCOGemuJnqHMjbIdN5M75mOIIp4VPKJL6XE+Q=;
 b=mAsqp1635gbSdfytiUG8cT6Mua6O0pXPBGpJQu8lgG7urDDDITmvS12dXCxCB/MSZPbvXe5EVjGN8Y9ZKolgaSfI918XxoN8z4471x0MHJ47YIEpxfakbxBwtfYzA96HKPHn17qldMCUlj5V9dtsA/JF6G+7Ch6IjVsc82ZxXv8=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB0014.namprd11.prod.outlook.com (2603:10b6:301:64::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.20; Tue, 9 Mar
 2021 23:45:11 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Tue, 9 Mar 2021
 23:45:11 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 05/13] ice: Increase control queue
 timeout
Thread-Index: AQHXDIaBb8+G9i24hkuKnGE6ixQni6p8YzEg
Date: Tue, 9 Mar 2021 23:45:11 +0000
Message-ID: <CO1PR11MB5105E66798DA6CE50D0BC542FA929@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
 <20210226211932.46683-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20210226211932.46683-5-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 3aa78bf2-c8a9-4843-0171-08d8e3556106
x-ms-traffictypediagnostic: MWHPR11MB0014:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB0014E9018A654D9F2B515CEAFA929@MWHPR11MB0014.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3DHVDOpXA7sNlTQg22NpLOQa1BlpGVK6AAOashXl0zIeu34exatspmrH04h1HEMyCxpz080I0UeaHpcAZL1/43VonbihMNx6c9b42wSsgXpoLBSatuKdq1R40U50cQqqzAvfKolejGRkLgWGToHZuhoWd5VMajOcsNSTozlItFzM1TCXtsIkZUIJoONlVV4XNNgRZx45kPohHNxogHQwDtcWlyv2n+4cW9PYwIaLSAwaKPVVYOORTs+B9axbyBiQ+iSOsx7waE7wnlQHkBWyxGkmAmKx8var4fgdLqRJHo/4T209PPHH4168MIdxvt8uFUnMwnI9/MqwpIblvy9VtJsppYAGp/D77DrI/yMzGWH+3XSevHmwpNtDB0WWHhtUtTLAg+JCrY2TAE5Yido2RvsC2UA2b9HDrKl+PGB5QIQVuEwcAbVkV80SWF/dLU3MVRasRJhjaX2DbYb5ktq93JZa9U/VGuZVLXu6QaMckH67iUpM8w6h64J7XvDI8yeIWpRMSp6eC1EbXPPzfI2VIg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(376002)(346002)(366004)(39860400002)(52536014)(83380400001)(8936002)(71200400001)(33656002)(7696005)(478600001)(55016002)(66476007)(66446008)(5660300002)(76116006)(66946007)(66556008)(64756008)(9686003)(316002)(186003)(8676002)(26005)(4744005)(2906002)(110136005)(86362001)(53546011)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?bW9UPjxBxqm5+4BbCpIJABz5h5TaW+rXjFXkFTw8yG+9FJhPcU/3SRli1Fu1?=
 =?us-ascii?Q?0JhbVjoMLMMXsdHG2N+Kb+nosuvVptiAghvNFr8o3EeAQKTbDa6oibSMLnRc?=
 =?us-ascii?Q?40Zt9d/YGtHzh+9zwypC/Qb3RWb7bahYhuLjdkTnRgYfKeQayH08LJGmf28X?=
 =?us-ascii?Q?NcHFjYuC/D/INwv3Aoa/uHks8+oft0KJ7QqLkWljwJ55knKQbQdNleLTG5J5?=
 =?us-ascii?Q?Y5rtpFkTJgx2+orPSalN9PcKUi9gvjDph/JyNBbg7mSRXrExIo0hl72mrf3i?=
 =?us-ascii?Q?3KIMxe22hHtAt1heKEvnWq9Hbfh7V6+vftoEDCHdctDMvgqr9JRQBHipVpNg?=
 =?us-ascii?Q?OMpvzpYPQw6PSFK6qGrj093n036lIH9IhqZ/tBw0OK2Npt2sx8dHCGeeirbB?=
 =?us-ascii?Q?VEujmzAiEGnNaBv07gq0SGWs7Szqh/vdBuIhhM+ewbWgcO9am7tAI7E2sjCl?=
 =?us-ascii?Q?fZ7ayjvUOQLLWK+E1U8L7QQSIZ1Z5lyaEY96fEIUwzPS4hOPfBB3rZkUKNuo?=
 =?us-ascii?Q?Z2K/rkFgJB9C/IqzsQYwvuY3W12/S7K1jbzrrMvKGWIzx1YQtGt0xj+0ocTt?=
 =?us-ascii?Q?tDHJQxmXX9IU6Ny29m5fJ+DP+CJ2m0oWotIkSfv2z36fPyvmE0nwB62Ds/dq?=
 =?us-ascii?Q?6yDmAcJ+SRTvGE1wqa7yWsEP+0rPlAqO5ZSAaNnl7NS1yFSjVM5eNNGqm6qv?=
 =?us-ascii?Q?OL4QuxWvepGdFDX1fS/glXvZUgnIHaeOxmxa1F0m5pnBooNnG9M1HBQ3qIUt?=
 =?us-ascii?Q?Y49zQwSTfFC8RfRW7f3jBvKWcyT28JtfJ88H3NLijjIrdczHMbZOihY0A94z?=
 =?us-ascii?Q?mH9izV4C066jJDQiJLjv78p6XqQN/BJ+qswiCYZaA5X58JrytO6kKx0BUynQ?=
 =?us-ascii?Q?n3jGe4gAimwJk70Nxh3TO0YOfMDCa73s/WRp8r9u4jGRAECW4LzO35Mzih+W?=
 =?us-ascii?Q?j8Z3s0zYljubmBl66F8Sjp+QUez8CxaYHD7dJdX1vIlc7/4MavkaP/Pbb+Uo?=
 =?us-ascii?Q?gto7QKWm/F2TbL3M0dL0S3mh6hBgDfvd6DQrjdkIkZ2yuFOgeLuAMVWjsALM?=
 =?us-ascii?Q?sLkNbX9U8shkaK1rmNv1R7r6kjyojMHRIV7B9J9oUF83yxZ4jw8K/N9xkQQd?=
 =?us-ascii?Q?2G0wAQjIj06xTXqRS+QS02TSBPv9jYrTSvL7KDDkMUxvJQsg3WI4RvbHhibu?=
 =?us-ascii?Q?bqQLavL6QpptKIbBhN3VuLsnNmpSCm62jGnImpR5no0HPHrln8/CvGm665B+?=
 =?us-ascii?Q?+p0VM2FoGpSLGo6KN+yXa3J/tTQQD3lV5QiRtZx/IkHlOg8kR8Vaxeva6XaJ?=
 =?us-ascii?Q?zTiUoOq6AQp1VEEOTUkoKrWL?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aa78bf2-c8a9-4843-0171-08d8e3556106
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2021 23:45:11.1587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y3SM5lso/bKfzxRkNyt7HDQ5ASWDHzIMQFPkDWeTSqRlUj9qMeef49032C+svUnWW9ZfwkBh/p84n6zRyqHFKdVHbSmhoOtfjT4FZUsVNAM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0014
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 05/13] ice: Increase control queue
 timeout
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
> Sent: Friday, February 26, 2021 1:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 05/13] ice: Increase control queue
> timeout
> 
> From: Fabio Pricoco <fabio.pricoco@intel.com>
> 
> 250 msec timeout is insufficient for some AQ commands. Advice from FW
> team was to increase the timeout. Increase to 1 second.
> 
> Fixes: 7ec59eeac804 ("ice: Add support for control queues")
> Signed-off-by: Fabio Pricoco <fabio.pricoco@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_controlq.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
