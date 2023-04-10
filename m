Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72ECB6DC82F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Apr 2023 17:07:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4E9381CE7;
	Mon, 10 Apr 2023 15:07:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4E9381CE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681139228;
	bh=5i2hUCgufnrNOU6mWGmzZeTs56xGD0bR/1oFyk6Q92U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Evf5U7k1sc0qvgb4lLQIF3kWivGev52Em2tO9dBhEa27OsYKdS5uBecZGt/VzmefG
	 jY70kphyphRKexYnEXJGKc3snHolg+5LCk7LtFpw3pfiWd713u3iFxVfv6qPk0Zb4o
	 0hyOqXQmXzmGcwm4Z790hAM3MotUOAfolzzBxpn5iJ+fzVFzx6n2AIbHwE7ogUthND
	 X6O+fVsKnR0rfAp/AEJncv5jr5dsqzZfBfF+zby5WL/R7E+12iQJnZC8atP8jv5yqL
	 kFCbfd9+CQnkoRbcojWaM7RsZlWxjvEaUDErxLU9l9JaLrtv6eFQ3ao3m4XASS6JUa
	 lrwUWYZI1pOzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 33aAGjElsSEO; Mon, 10 Apr 2023 15:07:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C98C381F23;
	Mon, 10 Apr 2023 15:07:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C98C381F23
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3A1491BF419
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 07:16:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1049A40017
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 07:16:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1049A40017
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iCf3SmWxJTDg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Apr 2023 07:16:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83240400C5
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 83240400C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 07:16:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10675"; a="343310219"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="343310219"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 00:16:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10675"; a="757377490"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="757377490"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 10 Apr 2023 00:16:30 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 00:16:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 10 Apr 2023 00:16:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 10 Apr 2023 00:16:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jEs+Lp0QY4/9ZRwLF+WUPKCGwkVXAe0NqnWYHzDcrdFDObQrrDPJLBjwXrCszwqlt2mrEej2Giugyi1obKpgmnZT7tzfy4GUp+wy2QMsOImJOs7yr2AwVoDWRReK/WM4Zi0U5qunswnqXP+pOe3pPzRP9nM5DIXPeQPA0pTXilReJKaLbc26IKlzUOXf+ZOWWOH6wlv+KpR0vYgCNvEKXCw7sqbsA0TJwodb2mJ4w4oYCiAhwfF0tFAjK43gNQSYhfwCOCKdS+NSnCt3M3iBvEhUCkGYjKd+s2ZxAylZSprQytWBZvPdQ3vkkPMrqt5Q5INv1lxleAlSqdchRxsTCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1/ZmeoJdiqRoGsuexCAjn3loLgRpfR9ZlG051vHodZY=;
 b=GLzWHtCE/QM4h+UpMEXghmz719UMI3BjBEao0KddXFqeAJRUwbiWs+htwiofJxUi7/LWKc++Yz5giosg46wNbIc/L/bl4XoQlexFG02WL8p9d/s80g15XGYJ/pE+8KLn//fmVOv5XthaVNlEviqoGK86XfO9eaES96MV7hexUOC29bMVPa1ndyyv2siOzHgNo2pVE8rucH0J4aDVq25ONWjSJ+N2PQJYuteVqFL98Vm5NaXq6HAeg0SpNLk1N3uL5L4eH/hU8/CbLR55nceWSLbVHIsDgNiHe50BScG1Q0gxlAsvZbD2OkerBDxVG0EggTRcriHE9qlPeKvFwcWyuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CH0PR11MB5537.namprd11.prod.outlook.com (2603:10b6:610:d4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.31; Mon, 10 Apr
 2023 07:16:29 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::2134:cc5d:b9b0:13c1]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::2134:cc5d:b9b0:13c1%4]) with mapi id 15.20.6277.031; Mon, 10 Apr 2023
 07:16:28 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: fix
 i40e_setup_misc_vector() error handling
Thread-Index: AQHZZesSkgmc3LjHBEGnl/vE/Lx4Aa8kH4PQ
Date: Mon, 10 Apr 2023 07:16:28 +0000
Message-ID: <BL0PR11MB3122509EDC07888B33E9755DBD959@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230403051318.913534-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20230403051318.913534-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CH0PR11MB5537:EE_
x-ms-office365-filtering-correlation-id: c59fa76a-b815-4183-d2a4-08db39938081
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ikjkykSORDOptE1O7694wLcThM+xfPjkCeqhVHHPkwQax9mafoQ15QxhyPlCIuqamaWkfmXsnFd6v+Py2irxivSjT1jx+BfCI9p7b1M/Cw2B54YrNgZcFontYU2LPzNjaOlxl6QLCLLqmCdLrlIWpfSVUxdmqzREDbMNScq6ytEOfzYeG6V4Ma5xoEitPFdJXVpz/pvIr9peNJA/1NFQ92zFpFaY8vQiefWoNFLB6WIQV+iznlgnhPtdAeMy4x85SLR9cc/XosECSmaPN8jkWvUW9kuKkh0pCZnDtlQEKrxm6IuLXFxqqxfFPmPLgs0zW2dFsbje4NlviPL1yQpIOMt6LoQu8YP739Un3rLZKvQdt58xyzamJ5kr1/I0suEsENx103ZnjK+lJO2WZFCMpImUyqol4NGzk8CbMVmOgaENelYU2cEIns6/yaSr1bIMm6+j0hTvqCZ4R9xL5ZV5lxwuj+WEZ7cLi4irKOHfgp/WHEFjNwMCpvH+MxRpPiQPYFNStCy5ZhLKsGjaE01P0B88eXljH+rj4YCXmpKnI8OGwLUw3qd15QOdL2CPk2R8COBaDEkFtK5l8avRxyxTuhXKButt/yv2HOcN8M1q/MTbYN1P44Wll1kKq61h7Wmd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(39860400002)(136003)(366004)(376002)(451199021)(122000001)(26005)(6506007)(38100700002)(110136005)(38070700005)(9686003)(55236004)(83380400001)(82960400001)(186003)(7696005)(2906002)(4744005)(86362001)(5660300002)(76116006)(33656002)(8936002)(316002)(55016003)(6636002)(41300700001)(66556008)(71200400001)(478600001)(52536014)(66946007)(66446008)(64756008)(8676002)(66476007)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Koy+NLWqsAM7xxLR7q8NNAsKNCJ5sRoXcz+pGrTECczE6LczwphITn/xxAP2?=
 =?us-ascii?Q?QHTNE5GJmnmnw6jWMfwnQSMwrjuQU88uLSlb/aOv74ST8dX+vYWwrw/zv/5z?=
 =?us-ascii?Q?0PclEkHaXwiV+hyYmFF9YJomZ0EnAHTvnRcFe0nKL1LkroLWDM4uWxPKkL+P?=
 =?us-ascii?Q?4R1CZoQakHrhQZqcztw0WWpl1tC1MJw84wyoWnxFND87lqbdCnj84NuCzMXq?=
 =?us-ascii?Q?j4x0v9375Gc68FdLcmv3NpDVj4Orvird7TA1HhVUzjr3MIOYt9aiWesyc7Me?=
 =?us-ascii?Q?MRwgxL3CZvTovoaUL4X8/ogNFpDns3Nh815TP58uQCijc0u55Mq8rWAurw7f?=
 =?us-ascii?Q?Ga0dxcKypFHJ31+wFRKFwEkI2vQ6TsezSkEr4oUdcuPZ6D80/+my3C1ecKYb?=
 =?us-ascii?Q?bJpjkW/6QfF73DwwNcykbid3c3p60p7n6yzag2MfaikN9SEw/KNyeOtR+e9x?=
 =?us-ascii?Q?flGlHRsZmW3MgARkt79VS4LZ0rJnml1h7e1Gs61BJfHkgz5R1MUhADZjSr/D?=
 =?us-ascii?Q?ggxaV8mlsiVk7cx4MeaWWKkNsF7EVGeauwhN3tWslo9NlY1crvzd4ZR99exF?=
 =?us-ascii?Q?Bub0NwiF0I0h6S3b/HhPrlstDgU34JMruVbElnS2sEsveqCWR2432TNscesm?=
 =?us-ascii?Q?cRXdwR1YowxcQSFqFiUcRk122mVclo3rp7MRc+2srK0on/LmN3inXs0aGG4a?=
 =?us-ascii?Q?t0KzvfYm5lP4tv/XyZDxcRo83u9d7FKxSDvjZTM4b2hDKduqk4qGcF0zvUYc?=
 =?us-ascii?Q?CWLZ1+fYjEf1AhiYtrZepRFJBei/ZqmH4wjnUuqCQpCVzzn34a0lDoRcaO01?=
 =?us-ascii?Q?CMqv4kgWVHNVQnJbn4tF72pM3yJfIOl7XL0Vv9YlVUJ62YZMHKMsHbyxxVKN?=
 =?us-ascii?Q?dhSaIEQ/oOsgtndSO7OfZ2NbfFsJ+4AVxgpsrsSNWRvEj2YIO5+Yqq/igpNX?=
 =?us-ascii?Q?Os8lSbTYyc1xN6kvBqzAkT+mrM8f79yMQOqxov6i73JB0LfcthcEIateL/VF?=
 =?us-ascii?Q?Rxv0SkiL/Df+ArVA/LrJRhXaVS15PPbbDnyA41dgttyNDOHwQNwgtzUjPFH+?=
 =?us-ascii?Q?XHJvNJYGlWDU7aAZS0SmL69Rry+p0xznP7kpXBfnxsf1ta6F5/prZC1uEf7H?=
 =?us-ascii?Q?TUF7b83HXhGk8X/PUkAJpAnesI8Ty7TxvKffO7E1HwZQntugA4JRrHtEdFw5?=
 =?us-ascii?Q?uCSZXBbkI1NrK9CmGHcGWrxazzCNWOgGVlOhu9LqLQwbXuJZ6GF2w+dsvcYA?=
 =?us-ascii?Q?FtGi34mYklm9YUlHKyugD6RidfUOSfFG4BYnZXaH4yxitSJbAHxVwldsTNgU?=
 =?us-ascii?Q?VYlaT+iKtloIEILoIPtBVhlwkt49/D2p5KBoRgegGWvUA9535svSHXV4ZAmD?=
 =?us-ascii?Q?5tk04yZd4QP+EmzimtdF/HIUc82ids8MEfA5HCbfySZ4Y/0B1kY7f+qk4zI4?=
 =?us-ascii?Q?lCb7CJnBypX2lr2gTZh6neUp4BqGJyIoVrpAZPPkSS9TuPC+X5rhbUnaCaFC?=
 =?us-ascii?Q?Vj5zvUtIidcYRssBlkdTFimmohzidCeFOfZWvHWVzXVhTv49QU3jvjg9FyLb?=
 =?us-ascii?Q?5hq0zJyM7JmuqT+/L3bu82eSTQs6Msd9RVoLc/4yDnWHtnjm+MOJ/S+ae3q1?=
 =?us-ascii?Q?lg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c59fa76a-b815-4183-d2a4-08db39938081
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2023 07:16:28.1588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gmd8DMVEcWqlrf3GrJHvmjjEFtfJojv847bGxtbZw85U0PDVCkwen7lB40nyxsS4bqG1DXm6NFg3DeTePvM9C+p3itqG6hyFTs42yE836bOYiEfjPpU7TB/fKDZq5X6l
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5537
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 10 Apr 2023 15:07:02 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681110991; x=1712646991;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1/ZmeoJdiqRoGsuexCAjn3loLgRpfR9ZlG051vHodZY=;
 b=bJ4NAwmp/o9vnrlgtbts4ACuqib54yOgi6uZxTRFcPuHmVAI2+h56Ac3
 k4ltA4j2kaCK/aqvCl4XSVi53pHQO7ajV9aNPmRwXeQCV71ZCwgKNJfZB
 mqkzjD8FIVdaVfAIvlzMvuPhLrwZoUZYrxss1vhqurOaUbMaX6FpiYYaa
 6ULrtOJqSASdAZ5KhpUhzu9fFMUy4UFd8hHdaXbScTuf8U1BbYSkINHjm
 LDkpz2yRi+pIrFGqLYD0H3qZxXBBOCJEGaMNrllnNeg4EYv7ghPcDVDIG
 IICjnqshccRPz7JMjezZvwrQVk07kmdma4vx9JnPnVnAPI7ka5PGf2byI
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bJ4NAwmp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix
 i40e_setup_misc_vector() error handling
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Loktionov, Aleksandr
> Sent: Monday, April 3, 2023 10:43 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: fix i40e_setup_misc_vector() error handling
>
> Add error handling of i40e_setup_misc_vector() in i40e_rebuild().
> In case interrupt vectors setup fails do not re-open vsi-s and do not bring up vf-s, we have no interrupts to serve a traffic anyway.
>
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 5 ++++-
> 1 file changed, 4 insertions(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
