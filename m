Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C18086233F6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 20:55:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93A0060C15;
	Wed,  9 Nov 2022 19:55:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93A0060C15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668023755;
	bh=q9JyZSLPK3t1UnkeD8FvduGpGjU5vh6gSYRSb2fBtIQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2gjyrlkpru4tOU8qiFxMjFd3OQxy3griirCdO5I+04XXXO6y9zDg75XDhqViuxe4T
	 5IvZnzrYN94X6FMd9i9zDReUDbl3IRbbcyJsXq2GZv7sh7Y9w5tZDVxeUYY5jvTKCj
	 8T7m5y8Ac+u/NQQzIwPZCuRyiZ4/6qvE59KeXVfRV7S2dqT4HicQuMTbMxvi4YZE3B
	 PBXkMmBQ7RV9F2sC5aiUlN/EAtNP7ffwOi12Qn8nmJ2TgAI3ZMcqS8bY9dKL2mw9D/
	 Wq7mNMi8x8H3jpzC9vmaE6wAo+wrkZCyjLqUHLd7P1483PJrepFygpXIjmU7GQ04yp
	 SWhrxsLkXkDMA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a2wYj9c_qwrr; Wed,  9 Nov 2022 19:55:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70730607C1;
	Wed,  9 Nov 2022 19:55:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70730607C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E6711BF282
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 19:55:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E341B40256
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 19:55:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E341B40256
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JI2uXZLTIT34 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 19:55:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DDAB40237
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6DDAB40237
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 19:55:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="312887971"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="312887971"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 11:55:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="670082433"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="670082433"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 09 Nov 2022 11:55:46 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 11:55:39 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 11:55:29 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 9 Nov 2022 11:55:29 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 9 Nov 2022 11:55:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NXsfdvetmjOh1bOP7yBchDNV6C2otORAbCXiXeRJ7UZFfD35xaqQOWOF/VJyPr3obMlycBB7Rzz0daN80LGnX4H/v9vzw8p5H1BRLYtXEbAwRpsZAcrXbo8cZLBpN/Fqfy4EYF3rsJdFhI36aYRzFuLOGRA2rt684J+OAl7V+EnXa4hrXqc+PZhR8x3JXHQMrKWKdOHi6yUtF9i9RQlwxowpsqWzzDWvjrGKVRUBj6ImMZAsnA7IB8jFVru3I3R72N3mksfvICTFYJ76Mqh3ASmG0Ka3K5RBnjup36kMCZnQn0SSLesMDf0THKoBqdR6cJOz35Y+KIbMBrBFzJK/eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BHziJE8zJZdFPMBZ5yZ29rL6bMAcHv1pYz3WQeHEAZU=;
 b=YvG+kPLrWqWMYVFFZ2lLhkbzbERVvgxwCXdAXlauIHosw8VzPQNN9u8Tw9DuHKXi41adTl3gNOgf8UD/+upFJ4cztvRRmOCgyMNKBb44dHCkf7eQwojaC2G35GNAP2z4HId/qCMDDuWj6E23X4F9wxFkbXK7yT96iw6ZyPzpSpM5lH2QTqLkRihdtS+xmKC18Pa/dwEyTw/FuFow4VRLe1F5T2peXSOV7ahLdLngp9F3FCFWpSezdCmQsmFNFtB6tRgL45xDT9qijNPV+PUJ1tS2LQkB/TAV/u3rLq7lMU8A0xAySykjH00LV0Wei0Q5Kt5ZR9I+P/xd5Z6nvsEqWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 CY8PR11MB7134.namprd11.prod.outlook.com (2603:10b6:930:62::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.25; Wed, 9 Nov 2022 19:55:25 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::bcaa:eb96:cfb2:be72]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::bcaa:eb96:cfb2:be72%7]) with mapi id 15.20.5813.012; Wed, 9 Nov 2022
 19:55:24 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH next v9] ice: use GNSS subsystem
 instead of TTY
Thread-Index: AQHY9CNFTIGDYxpHQU+tdRUfKDbH2q421AyAgAAsyhA=
Date: Wed, 9 Nov 2022 19:55:24 +0000
Message-ID: <DM6PR11MB4657A79CBB4384C4EC2898C39B3E9@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20221109100548.8990-1-arkadiusz.kubalewski@intel.com>
 <20221109171027.1155468-1-alexandr.lobakin@intel.com>
In-Reply-To: <20221109171027.1155468-1-alexandr.lobakin@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|CY8PR11MB7134:EE_
x-ms-office365-filtering-correlation-id: 2379bcf2-578e-4201-9109-08dac28c57a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O0y0WCDvXFdsQgmm+KpVS+BtoH4Whys3elir0kqP16daKifF7ynb6R1lEw2gu2cAYAT6TNbG1RPMFSoTp4wCuB17XFDQIEbDBHgHt7Hzz2ycWIbQ/lj3yKzVVeG0xBA2y2LThJIy2kPx9VB7qRJ4foTQLY6eYkqbAPwaVguoinQOLc1cHrUX7n/lcC7hQmE4JwT30ChLZDQ9W1mmxo67nvoACiFSJKKdzSyfWdSoEP0GDn8zEknvAcGnILFtSsimfc98b9lgtgQGs+MLP7Gx0oVWC9sk9BpTEdlpBdOIzOlFuyq8mxEKLObnMd7+lwAyrgYdTtEnTuHd0EjhQyxl98AeeUY0pShepBDNYpieVKOq0owQgjBErZxTttf6Lt0V3iEou7XZbsZ9QAaWalzxQndF2QRlkAjzHzFe1qOlNMoPog1I1n0GT0Ncdpb2q1saPUwnATOGhwG1V8u6WUL3R9I5RFnBEGwW16u1Ourn0Td00T98Aw9Viq+gOOx2qptEb5OlE217JpBykBgC5GE1SY9IgcrMsY+xwLyM3sT4sB3XkqTG26u2jIzGcz/2cKk/y6ESVNuSX/l6kUZhetsC4rHEL4zpa5QCBRHi7FQZ5yv5Ky9mDgsKb2xSLZ0YE1rOPw9GebKTPp5NFcdL5sKKtlueUXHKP1Nt1V7pqf4fOZUHoCtN2lONt2qUToM+1zy32Rhze/jLpxDV/J4lwSxaQtIr52wNDuhBO3cL+lqBdJQF/AjBLhvfWa1/0VuRd53BtNBoQlw2LVT+6WcPGuRM6g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(396003)(366004)(376002)(136003)(451199015)(6636002)(54906003)(82960400001)(2906002)(5660300002)(4326008)(66476007)(64756008)(76116006)(8676002)(41300700001)(316002)(186003)(38100700002)(66556008)(66946007)(83380400001)(33656002)(26005)(478600001)(71200400001)(7696005)(55016003)(38070700005)(8936002)(52536014)(6506007)(86362001)(66446008)(9686003)(122000001)(6862004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AqyytNJlFR3KwXi7qziSTES6kKVMWDNv22l/jcl77E/2Ofr6GDVnBx6AI2N0?=
 =?us-ascii?Q?8CAYnC2pW2DMhw+SN0UVCh0Cym38o8r6C6tQ07E3SzYSSFP9QBLxijx2wkjp?=
 =?us-ascii?Q?U/5DSuBF4sqcmrVO2yZfZFpBailRiBX5PeLnIvCZC3SaLAhMOCPrYej0vG+j?=
 =?us-ascii?Q?lBw8IV0uG3oRHWLC/Dq6UL0pxQLe7Tgf61OjtmulYLQyHZ+ei4hiYoLVeW/g?=
 =?us-ascii?Q?fdQMOQHnetVM/QX3Vj5drJZAsh8LFULM5ozTgDN58QrbHYnHxMNP3avRepwJ?=
 =?us-ascii?Q?juX+qdfsCDIRFlU1ojBjPKMskvUTzQ5IMDJC0vrsUHEJSguYHUCTR05zHDbc?=
 =?us-ascii?Q?w97pS29xlfqBQ0GZVhbpwzVEKSO2pRktTyVEJdSYvUx8C/9rgqS4zpj8gG00?=
 =?us-ascii?Q?g5aH9wWtwTnafb7p4n1/KwV+h49wlJOMgRNg/kfhtTXWBA+deLuyNZ8io4n0?=
 =?us-ascii?Q?fV5FsA/risvdQy9NUjwYsJz600G08j0O8Ed+hUREELfe9btT09MeHjXgjks8?=
 =?us-ascii?Q?5Io3tPuDV3HT3xUV2YqevwvgvqZdKRiQRvkPNYHCKZHQmVK0RvvWHySlRwli?=
 =?us-ascii?Q?g+LpSbctEbEq1oTwFUSfbRfhdEO7D9UDWiCc1oqt79QGv47rZrdf/TWibzsR?=
 =?us-ascii?Q?VgGz5/KZfscF+RJ8O1ND2jcI6YnfiMwBbi13QKEugu6sQN2Vix8FPzcsrvK4?=
 =?us-ascii?Q?kNkrgvNEEFCHo4DIRsyfoHb8NdXfgGu0G1pNsje4UG4f3hDJsYnEpX3qsD+i?=
 =?us-ascii?Q?i/IB0HNM4ZypfBmkB+iRz15+LTcxX/typ2JFJTIFOizowtVlQOQKVusWGZkO?=
 =?us-ascii?Q?KAquQBmROwsavlPq9wUqKQvHqtTm2UMm1IsAK3zNX6uYuYg2D1CtUkvIVTLw?=
 =?us-ascii?Q?9P8GgKJiHH41a8IqOC+mIxfK4vRU4srxfU+iLS5tokJZgI4cF51KFtS+be9G?=
 =?us-ascii?Q?aOpl7pqVKBQxLorzcG/F0R4RmSVni76jXt/Lplk87FXKjFgHXCVlvMcaygPt?=
 =?us-ascii?Q?z3jOBEbobWbzw+gdhnIBOyyrDedj+6f2akdXc/EABEy9AbzLdOY273Ei3qDj?=
 =?us-ascii?Q?+4YZLHghphuyq7MMooy3mdTALF7FaXr1ObN3jbjOBAhfF0Lu8ZZXrJ3ngODj?=
 =?us-ascii?Q?Ihbu6YmmHw3rXFJ35892oPneX8fnHG807msiB1quizaS4cVlLXE0EJNJCu3q?=
 =?us-ascii?Q?TD8a1kkJYiwB6t1/56RDs9se8ZgytY307z6eT2JZvJ4sagRkdxOO1Jf+8RFt?=
 =?us-ascii?Q?XR/J+RJ+UYZVNguE/JB9g6vZ/Cu3Vx60+304NqHBPyblRrqN8iJutpMO+U+x?=
 =?us-ascii?Q?SDx7v2k8MMMtgYBSzfKZZbBGlNx/PRgcWM4s+0s1gC08M5b55zUHF09I8hN/?=
 =?us-ascii?Q?cSPBB245slRnJhvFChIj/8RpP2ZYPAzfs5rxAR/K43s88B3Bn566NGuZWox6?=
 =?us-ascii?Q?xrPBF6/Tha1k20jbtyMBv432ULD2D/Eq71l3AumZCVSlkg4PIzmnm0u+Tldf?=
 =?us-ascii?Q?W7zg2wE3bG70T+qE1Q1Pa+TP2MxjVENdsFLQJuaD4JOksTvWMRe5o3OEU1gj?=
 =?us-ascii?Q?0asWcCca9t8RkDIPZSeiyNxo1cqtknnNQU3Z+2D7rNZWAXwQyd/W04QNNhOe?=
 =?us-ascii?Q?8g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2379bcf2-578e-4201-9109-08dac28c57a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2022 19:55:24.7672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uv9nXO6CWUvOSeZpFy8EtFeB3vZj1ptb6E2330Rs7df9ahjJYzhnhhunx/xZniKu/EvV41XLiePl4RWdL4n8ubt9j1jUX47ZeDdhcLiwNQk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7134
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668023748; x=1699559748;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rmfSByAQDay1g+XvvUm28vaDmg6Seo8F7eQ6ZJ33x2Q=;
 b=Wj7KiyZsBGCpgEcDmav2vrJpfXDJl+b9BYUB6USR+0TrS+CgQwLWGgh1
 g1vJJBvEvbl+ZbYetAwm982vKTczqdxDF4vwT/XLXRTZ9E8oobxA+7dH8
 j+CuSxJ8ssw+ssHRe9W1DkE8rMoQttvsH4SVtegmW0kSjqlggK/8UnPZn
 9R/67H4B2SgNYsAT57cEoOcV32UjzaUHgE5ZUxy36YHd1iN6Oo6g162H2
 XHIcz+U0VQ5afQOgFxjadxe4lwMWfqHZS8FTpv18Baq1Q7fgw8G50BGvX
 N8XWDFMFvT0re4iDNN9RMQpQocJjjPWfVitFE9qE4dIuleDiRnkCw/cwG
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Wj7KiyZs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH next v9] ice: use GNSS subsystem
 instead of TTY
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
>Sent: Wednesday, November 9, 2022 6:10 PM
>
>From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>Date: Wed,  9 Nov 2022 11:05:48 +0100
>
>> Previously support for GNSS was implemented as a TTY driver, it
>> allowed to access GNSS receiver on /dev/ttyGNSS_<bus><func>.
>>
>> Use generic GNSS subsystem API instead of implementing own TTY driver.
>> The receiver is accessible on /dev/gnss<id>. In case of multiple
>> receivers in the OS, correct device can be found by enumerating either:
>> - /sys/class/net/<eth port>/device/gnss/
>> - /sys/class/gnss/gnss<id>/device/
>>
>> User expecting onboard GNSS receiver support is required to enable
>> CONFIG_GNSS=y/m in kernel config.
>>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
>> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>> ---
>> v9:
>> - fix GNSS ifeq(..) in Makefile, add ICE_GNSS in Kconfig
>> - remove IS_REACHABLE macro
>> - fix 'TTY' from trace indicating GNSS was initialized or failure
>>
>> v8:
>> - fix example path to gnss device in commit message
>>
>> v7:
>> - add blank lines around 'GNSS module' paragraph in ice.rst
>> - mark '/dev/gnss<id>' as a code in ice.rst
>>
>> v6:
>> - enable support for CONFIG_GNSS=m
>> - improve commit message
>>
>> v5:
>> - fix "ifeq" in Makefile (wrong usage of string)
>> - fix description in "#endif" to IS_BUILDIN
>>
>> v4: change Makefile to build ice_gnss.c only if CONFIG_GNSS is set
>>
>> v3:
>> - remove unnecessary #include,
>> - change the IS_ENABLED to IS_BUILTIN - right now if GNSS kernel
>subsystem
>>   is not enabled, we also won't enable it in our ice driver.
>>
>> v2: fix sparse check warning, remove fixes tags, fix commit title
>>
>>  .../device_drivers/ethernet/intel/ice.rst     |  16 +-
>>  drivers/net/ethernet/intel/Kconfig            |   3 +
>>  drivers/net/ethernet/intel/ice/Makefile       |   2 +-
>>  drivers/net/ethernet/intel/ice/ice.h          |   6 +-
>>  drivers/net/ethernet/intel/ice/ice_gnss.c     | 375 +++++++-----------
>>  drivers/net/ethernet/intel/ice/ice_gnss.h     |  18 +-
>>  6 files changed, 158 insertions(+), 262 deletions(-)
>>
>> diff --git
>> a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
>> b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
>> index dc2e60ced927..1aa029d08cb1 100644
>> --- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
>> +++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
>> @@ -901,15 +901,17 @@ To enable/disable UDP Segmentation Offload, issue
>the following command::
>>
>>    # ethtool -K <ethX> tx-udp-segmentation [off|on]
>>
>> +
>>  GNSS module
>>  -----------
>> -Allows user to read messages from the GNSS module and write supported
>commands.
>> -If the module is physically present, driver creates 2 TTYs for each
>> supported -device in /dev, ttyGNSS_<device>:<function>_0 and _1. First
>> one (_0) is RW and -the second one is RO.
>> -The protocol of write commands is dependent on the GNSS module as the
>> driver -writes raw bytes from the TTY to the GNSS i2c. Please refer to
>> the module -documentation for details.
>> +Requires kernel compiled with CONFIG_GNSS=y or CONFIG_GNSS=m.
>> +Allows user to read messages from the GNSS hardware module and write
>> +supported commands. If the module is physically present, a GNSS device
>is spawned:
>> +``/dev/gnss<id>``.
>> +The protocol of write command is dependent on the GNSS hardware
>> +module as the driver writes raw bytes by the GNSS object to the
>> +receiver through i2c. Please refer to the hardware GNSS module
>documentation for configuration details.
>> +
>>
>>  Performance Optimization
>>  ========================
>> diff --git a/drivers/net/ethernet/intel/Kconfig
>> b/drivers/net/ethernet/intel/Kconfig
>> index 3facb55b7161..a3c84bf05e44 100644
>> --- a/drivers/net/ethernet/intel/Kconfig
>> +++ b/drivers/net/ethernet/intel/Kconfig
>> @@ -337,6 +337,9 @@ config ICE_HWTS
>>  	  the PTP clock driver precise cross-timestamp ioctl
>>  	  (PTP_SYS_OFFSET_PRECISE).
>>
>> +config ICE_GNSS
>> +	def_bool GNSS = y || GNSS = ICE
>> +
>>  config FM10K
>>  	tristate "Intel(R) FM10000 Ethernet Switch Host Interface Support"
>>  	default n
>> diff --git a/drivers/net/ethernet/intel/ice/Makefile
>> b/drivers/net/ethernet/intel/ice/Makefile
>> index 9183d480b70b..02a448406777 100644
>> --- a/drivers/net/ethernet/intel/ice/Makefile
>> +++ b/drivers/net/ethernet/intel/ice/Makefile
>> @@ -42,8 +42,8 @@ ice-$(CONFIG_PCI_IOV) +=	\
>>  	ice_vf_vsi_vlan_ops.o	\
>>  	ice_vf_lib.o
>>  ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
>> -ice-$(CONFIG_TTY) += ice_gnss.o
>>  ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
>>  ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
>>  ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
>>  ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o
>> +ice-$(CONFIG_GNSS) += ice_gnss.o
>
>Forgot to replace it with CONFIG_ICE_GNSS here.
>

Well yeah, makes more sense now, funny thing it also compiled without
any issue before ...
I guess the real test awaits with LKP bot, as previously CONFIG_GNSS
caused one failed build on some exotic kernel config.

Already sent v10 with this fix.
Thanks!
Arkadiusz

>> diff --git a/drivers/net/ethernet/intel/ice/ice.h
>> b/drivers/net/ethernet/intel/ice/ice.h
>> index 2f0b604abc5e..ae93ae488bc2 100644
>> --- a/drivers/net/ethernet/intel/ice/ice.h
>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>
>[...]
>
>> --
>> 2.34.3
>
>Thanks,
>Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
