Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48380556E7A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jun 2022 00:31:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B5EB6410D2;
	Wed, 22 Jun 2022 22:31:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5EB6410D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655937114;
	bh=osNuVCjScbKfXGRvLFzyN0JcNx8AHMk/uExvtG224Cs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w3+7M4cJBz/TeiTbNH0Prp4zNQgDYl8K9Cw3t9i2ADLtKxG2uOj7BeF53qO4cx7fL
	 9zKFIPHOBBrB3qwQlgRo4ngCtCDUht4OTVtpfhiWWbd9nwVA66/NjNg84XGnO10CeX
	 hKESktedXS9F51divmYNy5s3IbafCJYHRmD06lnCwAIhSWzyLitfrdHbph2LdTPrpv
	 NnNfbtnq2C4cWZ4uON2d7c3MYTlHJ3B2ImjXaOjv7bEkhG2y9ZehZ79RJQWlr3Pjq2
	 AREFiK4V5WZPEAyCdjIpAxRyqylXl2XfNcI9wDEZnoUSJoayRou0t9tmsBrQeI/0Y7
	 7sBLMCX9cKXaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 56-98QyT2qB6; Wed, 22 Jun 2022 22:31:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 68D5840364;
	Wed, 22 Jun 2022 22:31:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68D5840364
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F5A21BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 22:31:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 11C23846F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 22:31:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11C23846F0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CHomqTZhZznc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jun 2022 22:31:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2BB3846EE
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2BB3846EE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 22:31:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="306020522"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="306020522"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 15:31:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="690728657"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jun 2022 15:31:46 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 22 Jun 2022 15:31:46 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 22 Jun 2022 15:31:46 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 22 Jun 2022 15:31:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mtMkYjAZPXK7tvh6BRfV2hZDB5264o+lZTLqddUthjjn/jZmjZLNazYj7Y1/oE6o7YIaoEb/FBk/D3+eWHcVlilKwNHLP7WgmUsMClmDop9TsV2yk2IIWxhVfTpWsF+Yki9RLDRLmfauSDAFMYv8eysGMwZBuQOPTnlnyPnFxbpQ0Fezqugu8w+TQZFeEjh19osnMtBbyTsu9mlE7fb46hYNj7WLzFVQXFPkg2GpOgyWaBmjwybzU/1M1nCsBz/Xlin87uPbW3ed0oJOxgSW0dBewFK4Ku405aNHWSHVVSDAzo2PRbbSxulLIjE623m+dot9+BGqtbXI1PUbECSrqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XTo8frQhWYRTQSpeC1sNyHw1Dg21JPRVnJQOB0mpyW8=;
 b=AtHZe240sVg76S6jdDqpUrbTdVKA8Acx8ohsuxrX0U1IXBpQ3r3F9yaoWIrauX5EMthbOptuazvXGnluI+ZnmviecIq71jGZioe7d21ii2Oazn7+G4iPnrtYLdZl+LcDRqL5E5J1WOtBTwuflFe4DlyOH/r4noZeN0vS0SxPYKcTfAKXTqNM/i+HVpbgM37DvISpc5HvME2B4LSoSsmuTNlk+1xNhezlMw9PaM1O9c5GW5DMLjUeHv8Z0ql0+RW4/JFI6qo8qj/Q7oDdcZnPBqyGkNQrefCBYk4JFZpzUvLDGSTC0yqYLPce4RcpovWwxc3XF15yo7gGiDp2zTFAYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3175.namprd11.prod.outlook.com (2603:10b6:a03:7c::23)
 by MWHPR11MB1821.namprd11.prod.outlook.com (2603:10b6:300:10f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.14; Wed, 22 Jun
 2022 22:31:42 +0000
Received: from BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::19d1:a9e5:4cab:4163]) by BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::19d1:a9e5:4cab:4163%4]) with mapi id 15.20.5353.022; Wed, 22 Jun 2022
 22:31:42 +0000
From: "Zhang, Xuejun" <xuejun.zhang@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and
 VLAN from tc-filter code path
Thread-Index: AQHYgnK1zS8vo0UPUkqlT5he86oe661XyWeAgAKKaFCAAFbaAIABXjfg
Date: Wed, 22 Jun 2022 22:31:42 +0000
Message-ID: <BYAPR11MB3175D362F16CCBC61C52B22C82B29@BYAPR11MB3175.namprd11.prod.outlook.com>
References: <20220617175000.2168164-1-xuejun.zhang@intel.com>
 <YrAGdQB2np+/P/Ia@localhost.localdomain>
 <BYAPR11MB31759A9BE889898BC553CFD482B39@BYAPR11MB3175.namprd11.prod.outlook.com>
 <YrJw6lqq51hHBXxZ@localhost.localdomain>
In-Reply-To: <YrJw6lqq51hHBXxZ@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3267184d-68a5-4ee1-c2f9-08da549efb3e
x-ms-traffictypediagnostic: MWHPR11MB1821:EE_
x-microsoft-antispam-prvs: <MWHPR11MB182135AC7AD8FE786234A6CD82B29@MWHPR11MB1821.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +blYZcTAhXWPTBxrYJJRs0whOYAwL8NpOGiGhzEmrDTop+FU/fcKfggteHnyGdAvVpuqRhEiouIiG1VzY5Wv/AKyDbkJZbJA3ync9dJlukG6BsgQeNHojK0fRlPx0SkfFyFKUCuUGZlWsaJYzLZEaTHIQYKhs0F5Shxgf5C23JSsg3PVslv0SBvDpBB2UFxEg2G/JhMR7SCBYZRVf1H6y3Ole+6ZpSngvGx2cm9UpP4GSPkjI7I3/AG1HgJCuOCm+r2VNvGg+n6bAXKVVZw84ETtEJxHSvDgUwKE+xeqg7fuR0QTP1uun2irigoSyR3t6qdY2syR1jqOwfdiaSOt2EGWH+Laom+ZLPy1wMD25uedtHaiaM9xP0JaKPgSygLA88jRReEpE2iKGZcqPGycU+gEOSBYfw5nA/MZ6+1uA6sCTfjnk2N9NL/biG6v+XAl5GcG3Xt/GcvbJdQlWwnXFz5tmPwqwwpaX5hO49NMYs1tfV87+lKMCsKUq1swJZF5QLSkWEkssDEHfoFNqvoZjvaDK0Fu+B5vLAtZQtvRV4gJeDiR4nQBjnyoOEyEQ15CBy9qjMamh8vdHbAMgJB0af6c5ULb3vNJSyoqH5VsEl/9KD0741nQVoXqLcZzCAE+8mPGFHBNQMQ8DqG4PXVmXZHEuUapWnT/rcYoSIw7HQOAJBiiZtmSeZ2iJDU/vEbOZ4/FyHSUVGb02Z8x5+KJnVFokS9AofC9FzoCVlMweulJ9w/RnxHM1Co9DqZDS8tw4myDIFwZbcEqjnEiNzVAOTIJOnQR/6Sq9gBh5+HGwac=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(396003)(346002)(39860400002)(136003)(366004)(38070700005)(4326008)(122000001)(66446008)(76116006)(66556008)(8676002)(64756008)(86362001)(66946007)(66476007)(82960400001)(54906003)(316002)(71200400001)(478600001)(6916009)(186003)(966005)(83380400001)(5660300002)(6506007)(53546011)(8936002)(52536014)(41300700001)(26005)(2906002)(55016003)(33656002)(7696005)(15650500001)(9686003)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fIYvTbY4bJfvofmNew23baEVhMbNe54ElYzxgHuHv89q5KcjuNk+cX7WJZh7?=
 =?us-ascii?Q?VkpJg76dyYq1+Yd6ygXvvdt0m3iXFZjrncWi25kKJ7zesZZNhOHWrNCGKct7?=
 =?us-ascii?Q?rqj/voOrXVKKvL97CUlnxEbjVNQyuKMUPSN5vnH8lOTa45E383Dp40nvN7dX?=
 =?us-ascii?Q?sc34VS9EFG+/usqj6ASWVtbh4rcreh/g+U79XUbcwMhFBK/bcg1viLtkhbmT?=
 =?us-ascii?Q?a7OyZ5s3HTWArX0oHgTpq4d/DfMSpM/wKhDSr7zRAoozLHpFF8WzFnf9tuj4?=
 =?us-ascii?Q?zazBF6NGDY1SKMoSV3YPBEP6y1F9ZsYlCMwGWSqQTOB170UH2clLOdsEytly?=
 =?us-ascii?Q?0fZOSwvQF2RxRcjbkeLcTLIiVCDIzygbojoWM7MbeGRXpVjF42BzvJ33eQID?=
 =?us-ascii?Q?eybggWS2AJAzZbFngOYLyfE8OtaDzbdtOFrQaGaMHVGiMVdZtHHwLuS+8j4m?=
 =?us-ascii?Q?m9PLi40Q7c2fKkVMPPKWJsvsn56C/Kqgs6OnYYfvNFD9u1T17DlrjFrAJ+dg?=
 =?us-ascii?Q?3/Z0iTRjXywTu9eoL1H8FCxsbG+GEXhDkKJ3meRVcz9iyr2XFGLzFgQf5YrL?=
 =?us-ascii?Q?C70p+c2k2Em8EfZd5399vhoYWG/Dq81nKFKIsJjudbkyuGuWB7d6ycFm90rC?=
 =?us-ascii?Q?b88o3yCeLc/xgR+qUP+8Th37H1C1TwdR/70/tnC2pXDnbajZABh4WH9Zt9R3?=
 =?us-ascii?Q?wnoLIqMJs/8naWMfU7s/f8CY84F8XlS7a0a3E4cZqLZcLhoFFybFQk2PpIft?=
 =?us-ascii?Q?CaWYaXcN9vxNzbxEAewqk9YAt2GT2GvWAIayi1UDHvfBQ2f7pEU2hIJbx4kp?=
 =?us-ascii?Q?eiCs7kvVAQenq5js/RyYW/BtD83q6oLgYHzTPIKwGCvelz0+adAxw9MOs/Rt?=
 =?us-ascii?Q?987kG6ArblvgG/IWRRVbOjuaGD6VhYlMFnGUkNw4VZRoPvOKuEzj0QLPSUzf?=
 =?us-ascii?Q?tiLu1NSQLqDX2rsmDDoIC8RiiAWSiTaN5gdOq433xpxT4Khzi/PnXmLojlOL?=
 =?us-ascii?Q?TmDtktATTbWLR8UtfHvTv+iXsgXJ1myTJBj+U3RIZhm6OUG2G6r5g6XVu9+i?=
 =?us-ascii?Q?BcZDBnN4qkhNwq38K5KagSISNvEcvViRXQTBcWXS6FLEXzpEsCEhs3iYyyUY?=
 =?us-ascii?Q?pvQBiwnBFEgmyy9MXPemaDS6rQoQpuXUZFwFnGTb+usBmKJJ6X8/kaJw8EYh?=
 =?us-ascii?Q?Hv2eGaWHqMzKMzU6HuNETiQZ1JceZtBIAogpBlp5AscDzInV8G30cz3/7mkH?=
 =?us-ascii?Q?OSRnfCsoEVwgFpKLbC9gLH8LHtpKkYS14ZbpyThiY13MQgiSzLMTmYYCe+t4?=
 =?us-ascii?Q?gNGtC/dy7GN27ahoS8Xv/FHlj94tmHx0kt2HZMMhfeCXs2x2KTyMK7pUMeJ2?=
 =?us-ascii?Q?AMduJI/IVcKwIksUekZYZdHMQtHXsK068dWzVoAfk8FvWsu9k41YopyZmvTI?=
 =?us-ascii?Q?+6rxUL2vQQsALPR6eKktszXuyNPXhOOX3wCE0Rjcd7V0DZFJCvrS+3526c5e?=
 =?us-ascii?Q?Ot5bZIvm/Lp+//+WvUnJ9cHvZ8SbFhMs3cfv8uNmHoOgjM1Mzr6LdpkjsJwp?=
 =?us-ascii?Q?QC4mZqLXLo9bUBaHE1Ze01k1I8+uDiIX/rk+e2kkjyEoYtVwHTg/eYw+vtqU?=
 =?us-ascii?Q?WdFJHD5qhCXCvls0R+g5yUhIE5XP71gl65s7GrJ0tUCiSnYK0qGD6kXxQOt3?=
 =?us-ascii?Q?m6H5YBfkU2Vzv+XrPzj6+N91XHxWpqc//smb5Irg7Ic7HzMukfPKt5Gb1n/k?=
 =?us-ascii?Q?bE4myqkpzQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3267184d-68a5-4ee1-c2f9-08da549efb3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2022 22:31:42.2638 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Es+mdS7o+S/lAf24fwqLEelTUZUmCZ+t1qZMcurRs7quR81BVCwnoiJEfXQFVX4akoRA5yhCjd08xh5+XFPOMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1821
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655937107; x=1687473107;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MqXMq1KcL8tAi8PC9DrVTSYwfh5QRKFKJH6dN6qM81g=;
 b=gpQOMD9Zil0dG7yeJp/Fd6JjaviWbLyH2+1hsSLtbBcckl9POx7NKyYu
 FzwIMZEy3YGUgsnT34nFvgqHKPlqiJSAMAgB7U7PxzEQAwYw/8oMgRrPq
 mf+FVjfMiTg5VAiZ9h7rILDe1ensVJPVkcVWjJIwInrAZxNC7eihtOR5z
 UK0Xtsahq/88qrcUsCm/b10hFDw9qllPHcbaZl0IvnnBaur9UxYFQn2S1
 pgzTExi0LntvLkSUxdLFOl5rE8thUVjglgtlmFBAmLE1ZG5G/BNxKX+kv
 +n8rJlvhilDFISlSIDXKcCCxRVDgtQSaEyph2RcKknlTfVlQnCwoRuN0h
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gpQOMD9Z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and
 VLAN from tc-filter code path
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Kiran Patil <kiran.patil@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Michal, 

Thanks for the reply.

The lock is access lock for both mac_filter_list & vlan_filter_list. Access to anyone of the two filter lists requires holding the lock per current code design. 

Regards 

Jun

-----Original Message-----
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com> 
Sent: Tuesday, June 21, 2022 6:31 PM
To: Zhang, Xuejun <xuejun.zhang@intel.com>
Cc: intel-wired-lan@lists.osuosl.org; Kiran Patil <kiran.patil@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and VLAN from tc-filter code path

On Tue, Jun 21, 2022 at 08:21:42PM +0000, Zhang, Xuejun wrote:
> Hi Michal,

Hi Jun
> 
> Pls add your comments whenever you have a chance.

Sorry, I am confused, comments about what? Did I miss replay to my previous one? I didn't receive any replay to my question about why we need this spin lock when there is only check for filter.

Please resend it to me if You can.

Regards
Michal

> 
> Regards,
> 
> Jun
> 
> -----Original Message-----
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Sent: Sunday, June 19, 2022 10:33 PM
> To: Zhang, Xuejun <xuejun.zhang@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Kiran Patil 
> <kiran.patil@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC 
> and VLAN from tc-filter code path
> 
> On Fri, Jun 17, 2022 at 01:50:00PM -0400, Jun Zhang wrote:
> > From: Kiran Patil <kiran.patil@intel.com>
> > 
> > Before allowing tc-filter using dest MAC, VLAN - check to make sure 
> > there is basic active filter using specified dest MAC and likewise 
> > for VLAN.
> > 
> > This check is must to allow only legit filter via tc-filter code 
> > path with or without ADQ.
> > 
> > Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
> > Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> > Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf_main.c | 62
> > ++++++++++++++++++++-
> >  1 file changed, 61 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > index 57c51a15bcbc..287c3e4bf8af 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > @@ -3558,6 +3558,48 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
> >  	return ret;
> >  }
> >  
> > +/**
> > + * iavf_is_vlan_tc_filter_allowed - allowed to add tc-filter using 
> > +VLAN
> > + * @adapter: board private structure
> > + * @vlan: VLAN to verify
> > + *
> > + * Using specified "vlan" ID, there must be active VLAN filter in 
> > +VF's
> > + * MAC-VLAN filter list.
> > + */
> > +static bool
> > +iavf_is_vlan_tc_filter_allowed(struct iavf_adapter *adapter, u16
> > +vlan) {
> > +	struct iavf_vlan_filter *f;
> > +	bool allowed;
> > +
> > +	spin_lock_bh(&adapter->mac_vlan_list_lock);
> Why do we need lock here?
> 
> > +	f = iavf_find_vlan(adapter, IAVF_VLAN(vlan, ETH_P_8021Q));
> > +	allowed = (f && f->add && !f->remove);
> > +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> > +	return allowed;
> > +}
> > +
> > +/**
> > + * iavf_is_mac_tc_filter_allowed - allowed to add tc-filter using 
> > +MAC addr
> > + * @adapter: board private structure
> > + * @macaddr: MAC address
> > + *
> > + * Using specified MAC address, there must be active MAC filter in 
> > +VF's
> > + * MAC-VLAN filter list.
> > + */
> > +static bool
> > +iavf_is_mac_tc_filter_allowed(struct iavf_adapter *adapter, const 
> > +u8
> > +*macaddr) {
> > +	struct iavf_mac_filter *f;
> > +	bool allowed;
> > +
> > +	spin_lock_bh(&adapter->mac_vlan_list_lock);
> > +	f = iavf_find_filter(adapter, macaddr);
> > +	allowed = (f && f->add && !f->is_new_mac && !f->remove);
> > +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> > +	return allowed;
> > +}
> > +
> >  /**
> >   * iavf_parse_cls_flower - Parse tc flower filters provided by kernel
> >   * @adapter: board private structure @@ -3651,7 +3693,15 @@ static 
> > int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> >  			}
> >  		}
> >  
> > -		if (!is_zero_ether_addr(match.key->dst))
> > +		if (!is_zero_ether_addr(match.key->dst)) {
> > +			if (!iavf_is_mac_tc_filter_allowed(adapter,
> > +							   match.key->dst)) {
> > +				dev_err(&adapter->pdev->dev,
> > +					"Dest MAC %pM doesn't belong to this VF\n",
> > +					match.mask->dst);
> > +				return -EINVAL;
> > +			}
> > +
> >  			if (is_valid_ether_addr(match.key->dst) ||
> >  			    is_multicast_ether_addr(match.key->dst)) {
> >  				/* set the mask if a valid dst_mac address */ @@ -3660,6 
> > +3710,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> >  				ether_addr_copy(vf->data.tcp_spec.dst_mac,
> >  						match.key->dst);
> >  			}
> > +		}
> >  
> >  		if (!is_zero_ether_addr(match.key->src))
> >  			if (is_valid_ether_addr(match.key->src) || @@ -3677,6 +3728,8 @@ 
> > static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> >  
> >  		flow_rule_match_vlan(rule, &match);
> >  		if (match.mask->vlan_id) {
> > +			u16 vlan = match.key->vlan_id & VLAN_VID_MASK;
> > +
> >  			if (match.mask->vlan_id == VLAN_VID_MASK) {
> >  				field_flags |= IAVF_CLOUD_FIELD_IVLAN;
> >  			} else {
> > @@ -3684,6 +3737,13 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> >  					match.mask->vlan_id);
> >  				return -EINVAL;
> >  			}
> > +
> > +			if (!iavf_is_vlan_tc_filter_allowed(adapter, vlan)) {
> > +				dev_err(&adapter->pdev->dev,
> > +					"VLAN %u doesn't belong to this VF\n",
> > +					vlan);
> > +				return -EINVAL;
> > +			}
> >  		}
> >  		vf->mask.tcp_spec.vlan_id |= cpu_to_be16(0xffff);
> >  		vf->data.tcp_spec.vlan_id = cpu_to_be16(match.key->vlan_id);
> > --
> > 2.35.3
> > 
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
