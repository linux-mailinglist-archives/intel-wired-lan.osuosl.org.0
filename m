Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC44633CFD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Nov 2022 13:59:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0C3E6100A;
	Tue, 22 Nov 2022 12:59:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0C3E6100A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669121976;
	bh=zG3nBiugvc2BUao5xluG5gkxNfSFLvzgKAEsOc4O5Ho=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VujKtwrRyNb/nKO2OnSpgYSQ9KOzK8R1vtbrUBgg4jSqRlHPUFvcEe7mbpq9xURro
	 o0b0XIb7R52yLFtzUPN3eqQHICFx4oPj0NLPhG+Vyo/WK1ObkAE0OJS4j3tOUwIHjl
	 YELg+32s50mVZrsRQ7V7iiSeL9JjJnVnDOCxcELIs2jsoczaWDN51xvmLzrdaAox6H
	 7P2Lp9YPiL34MxLijqHzwp0k7chRYKSRrDVepnMVK5VkYGFxTOg3FPFMkQtglgZN14
	 LtAjBhqzr+uKCCsTy2q1zWnmEIHQIq/uT8XWTXrbqygJV361nkiSqrR9ha+ZQRSNvl
	 AWPzCOllFmONQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b1zPYrw9ruKB; Tue, 22 Nov 2022 12:59:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D105761003;
	Tue, 22 Nov 2022 12:59:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D105761003
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BC891BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 12:59:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6C2B81F36
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 12:59:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6C2B81F36
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A9vZ2tvTZhjR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 12:59:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5D9381ECD
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D5D9381ECD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 12:59:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="400096299"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="400096299"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:59:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="619203061"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="619203061"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 22 Nov 2022 04:59:26 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 04:59:25 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 04:59:25 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 04:59:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LVSJxX5Bz7d6A1eUyR4jks5LHFU+FfmHOb5L1UVGTo9Op4YVsQbgeqwoTg0eoRX07Fa/GoO01NX55n+UBmsO9tVWdbcr7xsiaIxKgUm4hkHAe0GGHvbko7tVHvp6W5iJHhe2tg2Ivmo3gPAVk8cR8H9X0JFoz4H8Fv4UA0L6BLanGtXmIIVBo7PcjceXovpUncJvzeeBz6jSS4Pm3N/2lti0cuKbdpBxbs+dzFomyg0PUKd8rGyJ8gPQlhsDLkwzCx2x+916LB5pzfxIuU33UqfPep9J2OLZHYoZvVHHnqsG22dtWlotsfaRuvns3j+UpcM1/7ncgM4kuKQnQze0Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ato+wyFsXuUcvjf7/etltZu2CuzbAfDfzyDcp/xhH68=;
 b=mgu8qn/71BZTdT+ImisdVBVYX2OmjYEyIfRqiQ1s0iKIKOGW420JYeGXJ1KnbX3Jk6le8TknY1jfgm3sW3YXZN/ypBt8SkAkltdDp9szRz5mAp/qnnkxs5a46ujU1yCydOYnZuD2nujOarlc3iuaOqiPTk8uixVAuocjqF7r9iRonFqtq5wsxlmTW8WY5wP35B9WxCNY+BzDETUwkvxLJPqeZhpvzbHA69TfF4FQrZ47sSF8LH+kWW/ljDMFCUFOWMMJlsfHJFc9hWMil1hNjxAek6fi8KVGqrz7KCFKfOSjTcJYE/JZo2rlainupdeten9SMiAcdxmGDo1a6BoXJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 12:59:23 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 12:59:22 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Maziarz, Kamil" <kamil.maziarz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] i40e: Disallow ip4 and ip6
 l4_4_bytes
Thread-Index: AQHY+M9g4Oxg/4mrD0WLQyhMb58OuK5K8r3w
Date: Tue, 22 Nov 2022 12:59:22 +0000
Message-ID: <BYAPR11MB33673E8006A37657726822DEFC0D9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221115084925.2489227-1-kamil.maziarz@intel.com>
In-Reply-To: <20221115084925.2489227-1-kamil.maziarz@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW4PR11MB5800:EE_
x-ms-office365-filtering-correlation-id: c667a50c-6cd0-4364-a6a2-08dacc896082
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V693APZVjd/C/qSGAzc2lDUoQlGErJD+4e7upVrtWMOtkS+secMtEVgWt1E+dRQ1qKofCCxUVTRgLA7wv/QwSCXHj3M1OPChZLq58PMyG+Osu0MZah9WZWn15bNG5NygPcnaJdHS56xztJWjY5w3143WzsEnBBOmdzykDzlUtUU7iTrCffQryXXMIxwK/yvA8nup3GWHQ5Sx8IKArqVtJnGAEiBNCHgWFhqh9IrrtAi3J+07SkmPWBlKH79G2VVPNoq5ChOBPM8Hgp0GgRrnuAQ6nWsHHe1cyXSvbXhrRc1aV6LmnotJ4AR3t67sFQZfz5wUK9DWp4c1GInc+GP8QH1Dwl47Uv13uZa0It9GO9x9p4ArYN688z8iO8eyGRTiT3G/K3L5UGNstCKHbngbjThoV+CQPI1GOrWUxDF2muYAfpgTPQ/ABaQOa7vkqOZvMN3gW5xbR3pXsGKC3qWOh35g0WeB+RmGIlII5pcFEm0ndACOP964Z2DxAY6Bq6iUdA3hDamPdRwltIZ01uEVhiMd8oLaWCgsYdxFshM0tcC0b6+k7TqPQ/cNqfV8r5O8HhKwt8E8tUWvwGvIGWloxUKR7FZ3kayq1ih0EcMX34TgrpCIN1C1sYOz0hhSzFk7PVEvM+78AnEV4tY7rN7sEadkzn+zst0OIDCbb6SRk6E0DOsi3cripyvGP/ESWzCO0hpOt/AQpbMR9MiKyEM84w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(366004)(396003)(376002)(136003)(451199015)(478600001)(4326008)(33656002)(38100700002)(41300700001)(76116006)(66946007)(64756008)(8676002)(66556008)(66446008)(66476007)(82960400001)(316002)(110136005)(54906003)(186003)(38070700005)(26005)(55016003)(83380400001)(6506007)(7696005)(9686003)(71200400001)(86362001)(107886003)(122000001)(53546011)(2906002)(8936002)(5660300002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HX/HMoXHE/0MOTP3N3+gNh9tAWUZ/rOBBUl6Wdo5V0RwpWntS4smq2U5gUbF?=
 =?us-ascii?Q?KHaM5tLHC9qdjBaqmPhCnc1+1L8qj5Eyo8xRvpAYa3bzmeXweUkEz42Q4vZp?=
 =?us-ascii?Q?KfRqyt3qD/+uqVSvyQGhV6tNqz26HSkTp8U29T76X43CflpTBv6xiB9fWBCW?=
 =?us-ascii?Q?sjz35WaFQtQCSdwD1w0PuP2K62Y9VtGhgYb2D5edpNymzTEGtrp33KiGxeiA?=
 =?us-ascii?Q?/nZEtEnM906CaT1LxNDHq14xHnp0GM45K7r8kdYuqAFsWT9PRjaBPqDRXzEd?=
 =?us-ascii?Q?LvxXbK40is/ZBYt+GQNTvIXs2+x+8aoPxzaxZAxY7yI7Stnr+U4yCk0FXSp1?=
 =?us-ascii?Q?OBnnBrDxi4cyZ6Hs4P2VYFVQMPeVXOJlMeHYy3xoLlCcedyO69CH38smwQ5P?=
 =?us-ascii?Q?EMcXuRkTl9/LfogwT8571sHecE/ekxM+dp3gLZp5RD2buYjR15TdpjInv4D6?=
 =?us-ascii?Q?ipPrpchU8xqIKIvKjZ55+90GQ08ucZryxre5F1odUGJWVNw0kCZUWGacn/L8?=
 =?us-ascii?Q?VgbHi6QwIfg8S9ssk1NzZY75orfk/fqwRtYepqj5K5AiXpcX7f6OBilzIOQI?=
 =?us-ascii?Q?EjIJIvCtctisPNH4AWO9y27aJUbHjm3URrcFc9d66zwprA71r6L3t6zgqXoh?=
 =?us-ascii?Q?g0FqKE0l6P4tblycgwAEmAbt/f4I+kG0wYxtDzM+CoMpRNkNst8YZFVOLGXv?=
 =?us-ascii?Q?ifRWOSszCQkx7DtDuwk4d6qilwfSC3B/zktKCYlYV1vg6JfEU1+DXoTcunnM?=
 =?us-ascii?Q?3vfTFouevfuGY4pBmBPEfhfk3hEp15vFeZBlIdDxj4C9sdrvluovxCT5i4Iu?=
 =?us-ascii?Q?xOy02hN7wq9Mx7CaT8kmGCFjgAacZ5oFORr/m+CqgdpzYDkKFLNze+sA7Z0u?=
 =?us-ascii?Q?5OqO5i5GYcDbIsQO8bvBhROE/msUxOzq0BbkIN+pA8KvyOwyxcKngeqmuXXC?=
 =?us-ascii?Q?Hgc2/oDUIwuzM8ZpHylxAEbtkWmtn4SFEzCP5QXeh5/MedgUFDmfjRiXeT0S?=
 =?us-ascii?Q?ywlrm3zIDVg/e272R5gt1UQHo88d/46tPZ7sirm/rJBF4QDvGoeSoWHwiAIO?=
 =?us-ascii?Q?5dhuf+prtSyGnMF9D/WRs92T7qD8W4VLn0G29aMlJ9rPZTGvqqN6m7U/0Ny7?=
 =?us-ascii?Q?Ai3uGgcYr/zBWAo/0r4JhPfyzcw4QedgcS/ekZIJFsFls4IixsL3wPKmfEou?=
 =?us-ascii?Q?1SXSM5YvISuyvLKiuwlITHf3044NVyqZ5edO33unGoETHaULXNqkwgSLNUQJ?=
 =?us-ascii?Q?IimA2tBGUXFEuXUJdd1rNH3RUEJ3yXExDAw4na4pUG7o/9M3xoGebJDy/hzg?=
 =?us-ascii?Q?xkcQt+rZ9SSX+dASUm0kU48X8IDFLSGL/Ydrj7fc14iB//l8u+DZ/RxO/VNb?=
 =?us-ascii?Q?w8PWRQawXYQBhwWQMho+BpKH7DbCcRl0SUzwA4c+YE9DEYxh0kD6P3jvUKdL?=
 =?us-ascii?Q?rizTtFaUh2w7JhKRx7eWkxHhXUm5LgE5WJY6p3hg+5/S0Tt7uO9RyOoUohfC?=
 =?us-ascii?Q?DqPAreWxZgKBfC7opTMfQQGZXcYbzyyu4t//SOIOiWbtcxqJCH9FP70YUdri?=
 =?us-ascii?Q?bCBDp+Ug6Gh2q82KXb1J5nF4rTkeFz5mjc7bCibO?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c667a50c-6cd0-4364-a6a2-08dacc896082
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2022 12:59:22.7638 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eKEPJDB9ypHzbynHoGtaFc5q2uUVdjhXFKMbyb+ovM8PAHpeU4SIhV06D0FOCNk0+LEuplofu6Jzwuqo2GFZlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5800
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669121969; x=1700657969;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nWpJToGp8iStieAiNst/R9eGgozmtk5p6FvF23R12pM=;
 b=DzLKe51tsOZ5DYaXDpMDOo9FpoPtyN2wWlEySNP6k5pQ9GuERSCQPf5A
 0j4U9XZfTXZi8+uv/6SQqT1HqFWYrUsBJ811oMf+L5/QfJ0mX3bCReY+/
 Xt4V50TcZnlqtkzMzcheQrfheINU2fhjyrYTV/waWdCslmWt2lpaNwqBh
 DBVhZ6pqgqJWeSS8YBRjEJakzJ3TbtO4gN4d6JLTUjDiBYMi1fy3Bqv7y
 0VegIqjeiYUpVg7ip1TCDvl9HiE5Bs5l+n1YuaDB9FHgYJ+GQ2kCZ6Mbq
 BUlDwjP0Q2VgYZck8vxWXvYEf8k8OCPGC973d5Zn4tvLOyG0cMcnOwD0l
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DzLKe51t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Disallow ip4 and ip6
 l4_4_bytes
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>, "Maziarz,
 Kamil" <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kamil Maziarz
> Sent: Tuesday, November 15, 2022 2:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>; Maziarz,
> Kamil <kamil.maziarz@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v3] i40e: Disallow ip4 and ip6
> l4_4_bytes
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Return -EOPNOTSUPP, when user requests l4_4_bytes for raw IP4 or
> IP6 flow director filters. Flow director does not support filtering on l4 bytes
> for PCTYPEs used by IP4 and IP6 filters.
> Without this patch, user could create filters with l4_4_bytes fields, which did
> not do any filtering on L4, but only on L3 fields.
> 
> Fixes: 36777d9fa24c ("i40e: check current configured input set when adding
> ntuple filters")
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Kamil Maziarz  <kamil.maziarz@intel.com>
> ---
>  v3: removed footer and added Fixes tag
> ---
>  v2: changed author and tree
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 12 ++----------
>  1 file changed, 2 insertions(+), 10 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
