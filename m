Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA773E27C6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 11:51:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A45A8402EE;
	Fri,  6 Aug 2021 09:51:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JHHWE_pVEDik; Fri,  6 Aug 2021 09:51:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5CEA2402B8;
	Fri,  6 Aug 2021 09:51:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F002B1BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 09:51:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB850608B4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 09:51:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cckgpuGwOWlp for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 09:51:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C7422607B9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 09:51:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="275386933"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="275386933"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 02:51:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="669351943"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga006.fm.intel.com with ESMTP; 06 Aug 2021 02:51:45 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 6 Aug 2021 02:51:45 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 6 Aug 2021 02:51:45 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 6 Aug 2021 02:51:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hYODgDDDTEMWNkB77fRICN829LtBLWo9WDm4YobW2WBOKIOnB7CHwbnLk2aT8mW/B6yF1WHTdiGe7DgPCRtelTS+cGxXWvD0aZxmCmA9xua71OE2WU+uFMiaLUQjbmeSLOyC5Bg986Lou52ggf2qL9uwEacliUmHp4BjsYrcz+6fvlD8r4UkcbcHStMahc2CLmdrwl0H9sHg0uVX5abkI98SwNIyw6wsfEtz9zEFpdF3fAzK4n2k47qp8AroU2xJdYFVF+C8mmaMZwOFvojnBcMxXNmgPdPXf9Zi4U82T9AspMl0+1PMZqBWkaEFbd5+HAH1mBC9po2EIilhKvE5TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mk3p0n6ruwbpImYMYbRYb6joJKUqL2NtvNdRSMuytlQ=;
 b=Kf79Y8A3HfAphJyYiUdrx/jB50wdleXu1zKnrJoaJRLFAmj80QxD1IOPt5U69e8mcPHM9nXCq3n4segqVwj4BGC1UMsGclM5uv7lD7rgor0rbDPhH0pjVkLHGHPvURlXkJj1mXdXtQIp/247XT4Jx5m02f7CqDrC19rwnNzmhDEnkElY4MbAH1+7x9Bhb1WO+oEdvy5fjSIa950zZ26s3tnJDiD/+P0phqp2K6jpv/J78+UI4uq6ADuXCnEcbsTeG0mj4wilVhkPrcxg2e+bYBVKxbXPp6lFv7o/6pURf0yK2uWqGGMKW7qVaKoktP7MCBvUhNeFXuPcaMAfR8Jyvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mk3p0n6ruwbpImYMYbRYb6joJKUqL2NtvNdRSMuytlQ=;
 b=Db17XpcnWXWga7AMC5J5gCofy0e3pbRwoEfWM5qmzz0Uubde+uWZsi7Df2DlfzsiGZ/J+vFU9OG5G68T7Na9/DzM07uaEkzfJzwB838ZAYURMQjjv2rNn9Ae7h91F8tnIYkgtTGWS6UPfI3+qB5yydIkSvfGJu8ZTCSWNS5gUYM=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1534.namprd11.prod.outlook.com (2603:10b6:301:c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.17; Fri, 6 Aug
 2021 09:51:43 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::34d4:c1f3:599a:6b88]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::34d4:c1f3:599a:6b88%8]) with mapi id 15.20.4373.026; Fri, 6 Aug 2021
 09:51:43 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 02/12] ice: Move devlink
 port to PF/VF struct
Thread-Index: AQHXaauY8Ub4Rjt0CkGJ5kia07MqMKtmfdZg
Date: Fri, 6 Aug 2021 09:51:43 +0000
Message-ID: <MW3PR11MB4554370241CD07260EE5BA149CF39@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
 <20210625024501.6126-3-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20210625024501.6126-3-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ca864c61-d6af-434f-5275-08d958bfcc56
x-ms-traffictypediagnostic: MWHPR11MB1534:
x-microsoft-antispam-prvs: <MWHPR11MB1534597731B971576573AE729CF39@MWHPR11MB1534.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VYSoyT2FgwbYgm+r0hQyBc8agN+r4BUmH9A3x/dWD8GQ401zn2mg5YKTCFxDdsogiwnExCNQ25rrRV7K+4pLU6ywWyhY0fEXcBOul/RxKp52IIXO1USUMh8gMKSHt0U8+lcmRpx4M8S4XDFc+txJKs8zf6e/dgWhokZsfO6n5gyBA8MzNVA2NEfHy4OpzAt/PE9ttDwqXVdibOCdAGwCrxgB0TWdjKDXDtpfxOLhTfYx1u18knP6AjAZVDQ62lKPEEZNobzBd1LwvphXDgGVkOATbNuUv7l8YeL00wF1G9XPQ9UqV4x7AfsZj4sF1Ecxa1x+a/6DMtwbueY3IsM782e0B1MZG5DQJgS55rrUYhU49ESd0NIsejTN6o7O/+eMFqqGEj3CNH7uI3u87XR8iRVLM00/yWOVDJJQytXnyd0NFirHz0668bonTyQvf9MuameS5HNuXzkGQGToQxVouIkuLNo9ZGinpB0+kebxQ3op3zwgYoYCEcjgXwEtn3AiGN7NwjPOdv8/JPuQ/YcyY7obaB7REe3W80sZvox+5uEhfOp/ChyAVjAtI9izj1LWTXTGVL1M7NOkfBdHxlubkhfWiEVZv/fLTxx7SmIozdmNU9OXLtRZyRlA5K/n//wIMf98WJjitOo1ZETs0nlggiWpaeBLawQIo1LvJRkIcUJhzHj+HM2hFIqcyFlJUdODFIAzy93A7mg0ZpxNrsB7kQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(110136005)(33656002)(508600001)(5660300002)(6506007)(38070700005)(76116006)(316002)(66446008)(8936002)(64756008)(66556008)(66946007)(66476007)(71200400001)(2906002)(7696005)(55016002)(86362001)(83380400001)(38100700002)(122000001)(186003)(52536014)(9686003)(8676002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YpAFTurQ5nysRY/woYt0Z3Q+U7o6FM0jeE4pSP8vCMUO0DXIAV6e1rRka1sv?=
 =?us-ascii?Q?yB4dbiFh1RAt+ATFT2yQG67jDvtSYBAsEwtuTs7FPfiU1Z22P8ZFGxe687X4?=
 =?us-ascii?Q?M4J70jgEJOoK+0um7gVz4CN7ngC6j/12EGg1fBtfVy+lDO3wWvh5miMqUybP?=
 =?us-ascii?Q?iJRqX5e5rpn89QV8Bm4mO/D7/9qK5JdNiwHjmYcoLOe2twqK1/1FHIPDSfJa?=
 =?us-ascii?Q?OcZEND+2Prum20UWXe5vl3anvrk4Tmoss6FTlcua0m7SWWZeuJ+e/SEZkh1M?=
 =?us-ascii?Q?iPeYd1qEazRVI2N4axcHZONuq0VGNK2fol2/Rim7UdECOOtOPtHlR6JE7F7f?=
 =?us-ascii?Q?A9weoUXuAuNS+aXw3+f5Af1lIrKySfWyBEFhv/aoZpcFzeB8x7YXkYJFNnnl?=
 =?us-ascii?Q?pxZR57NN0kP/V9xthtKiLhpPEp6+o68YWbt1fZqmw8kCwo85Xc+LCdzYCzyy?=
 =?us-ascii?Q?BngqBN7JknHha811Z95hDj0yhYnQ9WAOLZTpeQUUkAqy/8uU9cqM7EhBzNgI?=
 =?us-ascii?Q?ndgFkAzp2mS6pOrT6cHcVEa0uMZfixqCDdWw7Zpp0ru8zGDAVUEoGytXoSY3?=
 =?us-ascii?Q?7RS9J3dGfg+5CCiJzYt7DRtycbZGnHCoyC7KaqSVQQbu8Dh1U/jcSEXddLcV?=
 =?us-ascii?Q?wRSdT9/xucosciUA2aEQAUhYfcwXdEe0+e3tAgrOqhx9YHdLAGfsOwvtuU36?=
 =?us-ascii?Q?JJjZf92pLNLGRDcw7Ge6Y++4GV8aBx3GR498rbDzfCishEzrITlLfCd0dnLp?=
 =?us-ascii?Q?5OCZq7+9KuOH0GCJ3hNUhau6j+KM9JWCrVz4ITx6SpAezI5Ng+3U/4VwgDAT?=
 =?us-ascii?Q?aJFWTh6Jd9Nv4L9GzR/Hkq1VaD1yoWhAuN2VkVDZXNTdix1Ao5G3ukbT3maj?=
 =?us-ascii?Q?yRwJ/UyLPJE1p01pEig9QgC7FaCEBItL0mTQJwsl3cYFmrBCn1RRvra9bvXk?=
 =?us-ascii?Q?HkiNl055RuFd2eWsa/srcK9A5jG54X1rFH8Ht6HuUc10VttE0+wPIsd4QT/7?=
 =?us-ascii?Q?4FJIPee14itqBBtE8MPURC6pQskiPE0USHaSPyq/i0DVF01y2p5IiJEcTNMA?=
 =?us-ascii?Q?Z5iqXfBVKB4PhWRkYv+3fKWXzlN3fbM+IPq+JMk7KbKmZCIswW/CVz3mpIqH?=
 =?us-ascii?Q?51r9tjDRuO7gxW74rbcjBaKgvlPIwf+ELk6RnXBBh/anJgj83/zPy8PGjOAr?=
 =?us-ascii?Q?iNp3P/ISM5UkwNhF0xaBgA72ZxEBkl0XAgAeGPBmgh/CdqAA1WO91x92ELqs?=
 =?us-ascii?Q?dErJtSdan99f9ZHeqKRVbNBNPhW6vgq7FWz3YvCr7c6wy6d+coI/vU9Ig3Xn?=
 =?us-ascii?Q?nO978PENoYI7HKVkcKWjo4xt?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca864c61-d6af-434f-5275-08d958bfcc56
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2021 09:51:43.8359 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KrI1frPo5i80ghKjHBYm7yV/tQ64JpH/ijgrTGEhS6+zpEN/0INs7z4R5aqNquK+gishDxTtliBzFnV51zVF69hdHyglcqd/SGtHyMiJwRk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1534
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 02/12] ice: Move devlink
 port to PF/VF struct
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Michal Swiatkowski
>Sent: Friday, June 25, 2021 8:15 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v3 02/12] ice: Move devlink port to
>PF/VF struct
>
>From: Wojciech Drewek <wojciech.drewek@intel.com>
>
>Keeping devlink port inside VSI data structure causes some issues.
>Since VF VSI is released during reset that means that we have to unregister
>devlink port and register it again every time reset is triggered. With the new
>changes in devlink API it might cause deadlock issues. After calling
>devlink_port_register/devlink_port_unregister devlink API is going to lock
>rtnl_mutex. It's an issue when VF reset is triggered in netlink operation
>context (like setting VF MAC address or VLAN), because rtnl_lock is already
>taken by netlink. Another call of rtnl_lock from devlink API results in dead-
>lock.
>
>By moving devlink port to PF/VF we avoid creating/destroying it during reset.
>Since this patch, devlink ports are created during ice_probe, destroyed during
>ice_remove for PF and created during ice_repr_add, destroyed during
>ice_repr_rem for VF.
>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice.h          |   7 +-
> drivers/net/ethernet/intel/ice/ice_devlink.c  | 106 +++++++++++++-----
> drivers/net/ethernet/intel/ice/ice_devlink.h  |   6 +-
> drivers/net/ethernet/intel/ice/ice_lib.c      |   3 +-
> drivers/net/ethernet/intel/ice/ice_main.c     |   4 +-
> .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   2 +-
> .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   9 ++
> 7 files changed, 100 insertions(+), 37 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
