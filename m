Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6A14BB112
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Feb 2022 06:01:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D3864031F;
	Fri, 18 Feb 2022 05:01:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5snUIry-tk1t; Fri, 18 Feb 2022 05:01:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42D47400C9;
	Fri, 18 Feb 2022 05:01:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C90A1BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 05:01:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 849D341D93
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 05:01:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Tt5gH2Bh489 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Feb 2022 05:01:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E088241D5A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 05:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645160472; x=1676696472;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bbfBrEpmmVsCgcEoCugRXJzX6Mll6CJgGq/0lqwMrwc=;
 b=Rlq3PRJYvQCeM8Gvq86Qbepv/FBqCJRxyFX6XUcB+ewmf1zRwRDWZtHe
 wMKz0UvH0QD+vBDxw9GK8YLJYcQ6wHO5DOc23UmuIFCnv3DiOnysvwq/g
 juWVjb9FJSKyk36ckJTy2yu/quTppbJfm0+U/drLK4/3QFveQCt2Uh4cp
 HX1UvSKJFbpBJihTaahJhmb9Pbl/fDPWa7UumKoSQvQLg404LbHUUqZhn
 XmH4aAi5e9ib1qY0Ip7OHQMONSqatpqnvMp2DhZJCDe+6IQZvJB2SY8CN
 ugLIzKVnPs9TWXtPICM13Zu383t1vYXKh/KysiZYa9kvH12HsONRIEQV1 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="249886526"
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="249886526"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 21:01:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="572165218"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 17 Feb 2022 21:01:11 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 17 Feb 2022 21:01:11 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 17 Feb 2022 21:01:11 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 17 Feb 2022 21:01:11 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 17 Feb 2022 21:01:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MOpvH0LN1BpR2YUQwSeUXvvTwotGdS2I2a0FW83UtikSa6O3sWBbp2YYtdHZJsf8VT42TjnJWgKA75ABsQAtt6ZvXJvk3BgoSHtXIccWMexMiL6hYbk95m8SEKHTS4JQwc+wWt1yXWZFOhev8r+DPwgpjanOd5pZ6BI3WXi7cTKz28yd0JsmSdBpxbera2EZvhhzmmwAEWiFal1ik09yaRZ8W2NeGVxRnjIKGF6ogDVn9N0IlIgn2Z5MBJkPokOuLX6Q/M0Wwor2oQyPR6AsRFa80Y8Jy9k4hWA9ZDIeUGLws9lcMSYtAKpNskKuG0JIohgBBBrOOcAGpGPTkIcJLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3QWuLNxRr/6BlHjeEMZBC9zuNAxEYOXvA0bYH5Dlm5I=;
 b=e04cyTl+n//3Ptmkg3pAF3zRWu8X0nUPCclgfMzeGkr7dbcfgPQjiReIIhjRr6e33eFdqF3cBe6vLkat1POo4JUCjmHeQ4BkidJW0kHnKaIxWmQyWFpf8ek5FrAgIC3kCkVeDW2cOihTdiwZKIznJuY7idx956R8ZKow/pbG1b8gJadI8k6Cs6/BKZrgXVUSo24hdEQaWhO1NR8FDOfwlp+s+KzP5uzSczPYZsJcEbr4rQyiuLDFBEGIrxyTZU1WscShIgQOXyGmDcRF06Dg6TXQ3MAQUc5xFzWHSnr/aOTRhn7ThtWD28yoagM7vwe5QfUTaNUwUQl0cl012PThUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by SN6PR11MB3341.namprd11.prod.outlook.com (2603:10b6:805:bc::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.16; Fri, 18 Feb
 2022 05:01:09 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a%4]) with mapi id 15.20.4975.019; Fri, 18 Feb 2022
 05:01:09 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Add support for inner
 etype in switchdev
Thread-Index: AQHYDH025a6lPvhhi0WTmfR5Rfw3DqyY78og
Date: Fri, 18 Feb 2022 05:01:09 +0000
Message-ID: <MW3PR11MB4554674306EF10709454AE7C9C379@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220116090142.2934-1-martyna.szapar-mudlaw@intel.com>
In-Reply-To: <20220116090142.2934-1-martyna.szapar-mudlaw@intel.com>
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
x-ms-office365-filtering-correlation-id: 142d5f35-4e3c-452a-7642-08d9f29bad60
x-ms-traffictypediagnostic: SN6PR11MB3341:EE_
x-microsoft-antispam-prvs: <SN6PR11MB33410EC216FE39F2E6FB31CD9C379@SN6PR11MB3341.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dSxFg/1yNIAgiWbNErAwFpeQlQM4I76/9ehT/4llMFGcE3R5dB5kjKbovBr+KXqBemFSet8+v4OOeXPyPXZx/tJifSZ/TNltbjjhAimw79ismW7UDtH5aU/+Zpg+Vnis6Gh2WCQysxyN0uctYacHe6L1aY5fz+HgAiaVqm5sD9kscjduOn8m748kg3pDFw5hMZox0Y5EDm68rSMS2KQ3juAX2L8Jg/cAwqSFN6q7a8z3S4BeM3GWC89Q/VbtDwWtw261nRzPAKGtmq7MN08nGJMcTvR5DpfMg0ABxVWDTgM44nKEc3o2kj3sO0BXV+4p4RDPHjgrF+p+7CYjKxINNcky7EUrSJmLIEyARK/F8kiwjALU2Bn2WWx8IoINOP/I/RsAwpr6EQJXsvRLtNxk5L7J519vvuOswE2JP2D/yxKQjhsFafQzjljEk26XJCiEc65gGrDhUTTqVjkx3qJgRLIb/uR8VDdJ2KBTQrgajbuVcIAS01Va5TRl9K3pQnIMYwXPzaHJhvelLRnuMmnTs2aorI/vo56IdI/n08Sbi6hYcaOCRmR4wymBcZCNe30scwxqdWn+2tBat/t+EHmRULGDp/q/OVAADibe3WwEg7xy4x8aLjFjxDi6wohU6BRe5V6Mn0PLxudnNcUKlI540mJeGt0wrlSwc6OC7veG2ZB44d2CyuRwjl2n2EqnnvuKjIsbLLs+yF/1Qe/U8pwUbw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(52536014)(8936002)(6506007)(5660300002)(71200400001)(86362001)(38070700005)(64756008)(66446008)(66946007)(9686003)(76116006)(122000001)(66556008)(66476007)(8676002)(7696005)(316002)(107886003)(82960400001)(4326008)(110136005)(38100700002)(508600001)(83380400001)(55016003)(33656002)(2906002)(4744005)(186003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8DcTpU5lFJfpDFW4hD9rjiQxMLWxiATbtIx/rN2p83MrBove/3LUE1ux5DXr?=
 =?us-ascii?Q?AR80BFSFZF6KU1hbLFSaf9wvYOCM7M9Lb0BweKGJfopG4kD9Gxi1mq97cEoj?=
 =?us-ascii?Q?1WnraLe+zsOY9zM8d7ohLw4XdpTJmxHSQl80cS/yYUzlp8C65oXaUvaJLWWS?=
 =?us-ascii?Q?p3np6K1IGX8V3Q4xKZExbKUdMbLgsTzNUCt4tcYOni60OVjbeV5RxMhej/VU?=
 =?us-ascii?Q?2cv6Cr8kceOt8J86mlzmOFfiyfWW99nMdHML7T1cnLpR/fHKsR3j+ms2UxmK?=
 =?us-ascii?Q?pMfigafjH9jwnyNGJ5VtaE2ZeyFbJk4drxjklvHD3DaDQI+oCcaJUlmB8wii?=
 =?us-ascii?Q?bhftXMPbRGtXpblUh0AxtO7iZCXI+Wu17rpydvT9ca/14hzM0CGSAl0u+jWm?=
 =?us-ascii?Q?y79xQ9nPlBbzQRudF//Fxj2vWVNy+HuzGNbq/zNoanlqz7vETgL4EXQlrnEt?=
 =?us-ascii?Q?HXG7n+GXMku9mhK2DpwzSHZCGEfZy85ekXuLFcuyN559gmL1eHuAiOsy4Kph?=
 =?us-ascii?Q?lmaN/VwI62/Lr3N/9jY4eXBBVfLMGjSQ4YSB3CgBf6SpMS344rQRhX3o1D+W?=
 =?us-ascii?Q?pnN9mnOsjGokuQvONOkiOFrVdwqWvUqbyz8MKKRG7WDxZe0h72cqyngQuzft?=
 =?us-ascii?Q?WZ42WuvKc06EmnvMd8kfNLT15q9jRpcYXz2bQGS+IajHS/7iMaE5thfzUy5/?=
 =?us-ascii?Q?JQv543DjOqR36wo4to0SgSmrloJ4O2yD3OA88JLyth4yWBIc3AibMXfERqFd?=
 =?us-ascii?Q?rabPp1ZLWDbeBTbz9vGM3ax1rrfs0lrArsLTw1hFvfQHMBxWyHD2V5F8Wwoj?=
 =?us-ascii?Q?zg1Cr5xdPMo3ggh4BfRSxYyMFAMLtQiHGbaElejDJt1smN5VKi6cDb0V0QYV?=
 =?us-ascii?Q?X9wdFtuU4S9dkJ2aMenG76Oq3JWgfnoxs7Mn4pWLBKYeF42KrGAji38wbsiS?=
 =?us-ascii?Q?0QamP0Q/GeILfDNZjeqM2U61P53F+/GrErrrgPiqfGO0xriyZeJ5mwGtU76Q?=
 =?us-ascii?Q?LKaxfPpujsJSE+OvPY2wrKs0TzvkVln66XYZNnERDb/gs512zozzWeEPsW6j?=
 =?us-ascii?Q?2TiYBcewdpIdZ5JJ392MgvLDQO0azrZ7bzyUkXfsbq8ZKPU4kp+d3TtZBFT+?=
 =?us-ascii?Q?+nIWpPDdo13MK88uycCbf2iwXlIZ+j3nEKpsoV0KafyAoX/44tjVmoIiIO+m?=
 =?us-ascii?Q?N2shrJ0JMQUcr+Xr8Z7ji+vmrDtqzE2fcdvesTjyVzVG+axWbGqHcFarYND9?=
 =?us-ascii?Q?6he9jlq8G74RWGaPChxCagwC9bi2XUPJGpmrvj+RrGh4E4ykn4PfRqvVhDuV?=
 =?us-ascii?Q?Bj9v2OdPoOhYf++nI5x9K+wMkAYYsBZfSZ/bPenF0H1LDzphNDPsQs30twNU?=
 =?us-ascii?Q?HSHtAjvxT6ZxFi3lAgUGOL36k3unBxH/nPuueuId5SLTHHD/DH9Q4XK8nnxX?=
 =?us-ascii?Q?uwx7hRbxKkv1GSd+ETRfN898gNXpyHEwmEtAYrqaUsb+s8lnu5lMSirzERVZ?=
 =?us-ascii?Q?UdTVi1F1gRog5YR+ClpH27X1QEX+ESWYD+MuK31LdSrv0WIJkktPywU9nAXx?=
 =?us-ascii?Q?9W/sTq0qPBfWRynF9I1qzX4ErqrO+V315Qqj5ZRyKx/igEzvHU45PzRUWIy7?=
 =?us-ascii?Q?4E5nYBknyLfoCjq07kF1jPPghM0hLvIGwJKr2TPOtvc6gd4Vbv+UHsIGqRqC?=
 =?us-ascii?Q?35agQA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 142d5f35-4e3c-452a-7642-08d9f29bad60
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2022 05:01:09.0862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iHJiVX3NrM10IOf/GhnEEzCFvkT/4fvBUBGr579XwwlEDIImhYDXhwMswuAIdJa4KA2wsAt+hrtfAaL48N6YnJBKxUdYu0B3ZPz0AHMCaRI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3341
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Add support for inner
 etype in switchdev
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
Cc: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Martyna Szapar-Mudlaw
>Sent: Sunday, January 16, 2022 2:32 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Szapar-Mudlaw, Martyna <martyna.szapar-mudlaw@intel.com>
>Subject: [Intel-wired-lan] [PATCH net-next] ice: Add support for inner etype in
>switchdev
>
>Enable support for adding TC rules that filter on the inner EtherType field of
>tunneled packet headers.
>
>Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
>---
> .../ethernet/intel/ice/ice_protocol_type.h    |   2 +
> drivers/net/ethernet/intel/ice/ice_switch.c   | 272 +++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  15 +-
> 3 files changed, 277 insertions(+), 12 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
