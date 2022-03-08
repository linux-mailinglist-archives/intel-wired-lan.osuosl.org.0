Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D85194D1862
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Mar 2022 13:55:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DD6484161;
	Tue,  8 Mar 2022 12:55:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ulRxtDZCSrHI; Tue,  8 Mar 2022 12:55:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54BF884120;
	Tue,  8 Mar 2022 12:55:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0F3201BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 12:54:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B9D8415E2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 12:54:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RHQ0Q9vLMl6I for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Mar 2022 12:54:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E0084415D5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 12:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646744097; x=1678280097;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kdnmKZjKO5VRAIwMntb/gulIExnwu9u0Td0Peo7UhkY=;
 b=VnTYyKM2OmttfGKZ5byLrb2UvQci1XBKztsQ54U5MTOyyjeoisUGYU11
 KWg+SPYFTO5pVWSoNP68tyRIcuR9HeI+3LOTBBzE7ut9rNJR0yjN3oCZT
 vrx2ALfmd1cQLDPgrOhsCU2hJ1gg3m7wCh0zZV+CJSBCwftH31Rxolq/d
 K2xoNBmA8Yun4F1TImGPOnX8h5ZVmBaWuUrUQ7/UtRMT7O0Of6CBf8Y+R
 f6kVLqLdGcZQ6mT7SDSM2aPEn1pNrqNNAYhdsUNoD4LeXfvnbqm+4D5tz
 bJfV9OsP0dwoUodt7jHFvNLKLtES+1or/bc9P4Ex7UbQ/M2hYiiMz5uQF g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="242113058"
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="242113058"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 04:54:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="513095643"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 08 Mar 2022 04:54:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 8 Mar 2022 04:54:56 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 8 Mar 2022 04:54:56 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 8 Mar 2022 04:54:56 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 8 Mar 2022 04:54:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QqSFn1Yc432YLIztKAsPXleRYw28sdXky0iB75ihuohzOfNT/fa7w7rfBsRnuzDspbJpC49H5NOtjhyl3jVWY1O2vpY+m6mYCJDOt/X0wTwTHYii1jykyBtFLf4HBpVcToottumVMhixqhIQZBVx6Ca1XZQ/5dkG3wUkJHoTamJ5DgNqdzDtpwU4QGiXZhRq345asZYEl7XcIiOR58bV5Z/f3RUixnNQMatNCQN5XoyZmQikQodFkP4VGdCs7rudKJGr8lV3hMk5RHm5GA5FTia0i7akJCnjH6GKdLx2SFxAKL66/0HrlVSTimeO0ggXF8JF423vhaUtXE7OJ42vaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hbuv2BQ1ozSDP9FU5tmSOgnvrCr/C596rEUgZDgg1co=;
 b=Low/16sIX9pf+anE2hr9Grt3ID0TercIklaGPpHnHTY+KqkkKnjEfIPR2z+Dzk7g9pcv5Kryf4D+EG+26FVf2vGgFTC0B0ufDwD20DblQgGTt9BcVfxDsTF+i7XTNvnxBm1vn1lu2A7fbxBPOgfcLjv6VVYPu/NW7dyyR8xfB94r9dNhxHbUgELwoX1+H0oboKYU66TiGva5YBazuvqzUYY3/2cVg+mu1vMwtZ8+SGOGUFc49Otc7wlrhW9FB9d5RlwzE8xgyoyqbRJDAO3RN0vSX/hTbMO0Bh9BuRGXVDmeKj+WeXJSrrAzFpzXIkE3+eiuRJHHFciNZSFemCLPHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MN2PR11MB4477.namprd11.prod.outlook.com (2603:10b6:208:17a::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Tue, 8 Mar
 2022 12:54:52 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::44af:c21:2bed:47b5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::44af:c21:2bed:47b5%6]) with mapi id 15.20.5038.023; Tue, 8 Mar 2022
 12:54:52 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "trix@redhat.com" <trix@redhat.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: little endian only valid
 checksums
Thread-Index: AQHYLjUcRh1Npl6lGUO4UA1iqVy98Ky1es2g
Date: Tue, 8 Mar 2022 12:54:52 +0000
Message-ID: <BYAPR11MB33679CF5EBB178871DBB63BAFC099@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220302125702.358999-1-trix@redhat.com>
In-Reply-To: <20220302125702.358999-1-trix@redhat.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07085e7d-eed7-4232-44c4-08da0102d684
x-ms-traffictypediagnostic: MN2PR11MB4477:EE_
x-microsoft-antispam-prvs: <MN2PR11MB4477548816C07540B75F7400FC099@MN2PR11MB4477.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 92yjt4vk94SwsrowmX2Q86WFPj5rAr4Fmot9xEMMLcn/vKVnvCIro9aLZJT/8wxG+hLdup1CoFOpap5TzWQZyOhBQyryuOXkDtrZeiNRMcqJcAl7M2NTEq4/uVaK5GceNkCLGVibMixXn04RiTn25lESV28TBPd9Bt/fkM0sUChr/XlH7nNuMWOZsBQZgVrVStbwQMW/qO/0ly9G4A0/e5SwF75aeN+NvUAnJq3gANzNjhgglqAdAiC61C9PabPORBd26r/hKdaW6F02mPOXvzcbz1EKrwlVgNgd4c11VfkrxvjxHL9ZWGGo0VRAwt7tj48UWi84QrO4EtohmQyZXMzox/T01qh1eVZw0FL3WrwWZBtOLYx6IIjlAJhF7DsisUA+dk6yuDVs37vW1YStcz6IWw8KBmabjSuodK1h3k/F0kCGGwGmJDxYsehFfeMV0tkGy4tx279Ubc8fQ3MFfpw0lO61RSkTC/3gR4TlCCE8h3ulyZwbSxDQ5yHXgQ34CDcwWF1MmvEUG++4xyFy1KulKadWjf9CG3g4kNROpalt+HRJaQbnAToiqiDajHaJKZS8+w76R69xmyEKtaNu+Ub75Wqyrv4gImqgnmMLFqdxKnaTLqDkQpM+PtOChjyUE/eYsrLZR+FsjViZOw8T2sZt8O5ceH51EX017WopHCnoa9PQveQ9j++kk3jA1aJMhMK2eJ1JgyJbUzLaDJeAZw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66446008)(6506007)(7696005)(55236004)(53546011)(86362001)(33656002)(52536014)(8936002)(5660300002)(508600001)(4744005)(9686003)(66556008)(2906002)(26005)(186003)(4326008)(8676002)(66476007)(64756008)(76116006)(66946007)(38100700002)(110136005)(38070700005)(55016003)(122000001)(82960400001)(316002)(71200400001)(54906003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TL8Y5XwtSZz+INANjJd3liJgzSJc8TwbeAgrRWuei3IXfNrZrXsLHre7YGyP?=
 =?us-ascii?Q?l36IC66fURgNowWYXbOm1KglOZVfMgQyDPPkc8owLW+zUzi0CC9NPCM9NVrJ?=
 =?us-ascii?Q?i2L82qA2YRl82mlYJcKc3THoSEjwES0+eeer8uty6srMOvJbqFMhv/ZHMryS?=
 =?us-ascii?Q?cCB/VqurKoLa5Gj1zwi8Pqg8bkCgsym00GPaZ2j3vLBgetwSuJ8HdbScTE/w?=
 =?us-ascii?Q?rvTboW3CntxxETpw1B4h6N1Q454b8xFPeFtrihPXONCThKr+YqdMaH6FA20v?=
 =?us-ascii?Q?xgHcQehENe3oaBraLLkyhKJ91lOoNThPp92ze2aR0xrS8qS3grjnD/bn4vAZ?=
 =?us-ascii?Q?bHWcfurkasG2WFv6OR89uDxPv+6c1k/O0vNLimx5Xz5TaRDq040DKcsLNtao?=
 =?us-ascii?Q?Z+ZlpD/sy10aSnEwTvmmFfTE4Ckjpy29o4XNCTH8ml8KnJ4hytz0MHEgqkbr?=
 =?us-ascii?Q?xg9SmLCKiCUx8tlBhVCSVOUyF5F8BxvQUa9ddwjeJUxht6MaZmSNbv2Ni4Ny?=
 =?us-ascii?Q?n3f7Rwxw6xX443Wv8c2fYsB5W5ONUK2pUEmRfQduY69WCutPercHw47EKbXe?=
 =?us-ascii?Q?QtQo6/VX5HMog6ixEh4OkhOtxcJue++UEm244sg5vTvb/ecVAVwgYTmkute9?=
 =?us-ascii?Q?1JUZw8T/7Kf77BoygaFW1xTgPITnIcqklDtoJpw/zsbhIz0NPn8v5YQmgFQe?=
 =?us-ascii?Q?MDXyGyB2CCLcwcOhsU36gVWKNXFqcw1FZbj4Fr9LINovKj87uX1ym9CVT4bX?=
 =?us-ascii?Q?6AKegovfXzdlRlD/DbnvhgBWYWmPKy8TIJvyzB7QXcHV56qeeetOnfkicTgm?=
 =?us-ascii?Q?Pnhlf7sPmkuxMp4K2KMziZ39mH1JfrG4fQFOV3WDJ5rMGkQbcrTXqlO8Oxg/?=
 =?us-ascii?Q?8xHkcfkbYLtCOzRNU0tdQw2JMYvApsLqiXo3KG/OKPKujrCG81fPCxNFlDG6?=
 =?us-ascii?Q?vPPSLqjpqy5Dy8OhPgSt7DmYVkbd7OS3SVoCJr/R9tRultUtowao+3eIp/EP?=
 =?us-ascii?Q?kiHaaIrWZGOP02CL2RXivGjQlSRiDx/Pv0hpxyvt0Y8uzXEhbNK20JNsHhtM?=
 =?us-ascii?Q?OZNeudwastGyUkImXPTV4Kp6ofz8RQgV2xtFKscPdge2W56yTXd0cBzSlSgO?=
 =?us-ascii?Q?cx0ck1g8mkIki7wgKqfBNTzWM7vhQbxyu81oTnYO5NrnAKWMffWbhLNhcgTz?=
 =?us-ascii?Q?isTeaIJVDIFyh6L6STLJ6qEe6fbpPZg1fzUN/OcJe1Yr31tJWefV+nAVRavN?=
 =?us-ascii?Q?1wS0+lU5S0LbpHZntEBq4dkyR7JvaOg4B6cUFszm/HIBiUET9glPaVuoDVA7?=
 =?us-ascii?Q?kbmbYU2/2shik4LoWUmZWAr0PbDjTYzNp3oIQ6OunYQQpYv1NmgyyOXvqc/n?=
 =?us-ascii?Q?pXvg3rX6dwVLpDKLZxbWpbEoURVvpydc+Sc8yGkRNkfBvEulkY1HdbO2Cd1w?=
 =?us-ascii?Q?bKGQKFwTmdP6BmN2XP1ogzDv0KyZ04OjRu6ucpOo8qYQ4T1v6KXirpTzYmoL?=
 =?us-ascii?Q?xz02uJ1huApuqySqzwzaQZPIsjsezjEGkgE0D4ZKwwK8lu+YPXmKO0d4HiG7?=
 =?us-ascii?Q?k4btVTlU8qoky3Vb5D6i3EW+QYmYvzI95Me86VO8toCLxXQJDjzF6qXhgYfI?=
 =?us-ascii?Q?Qg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07085e7d-eed7-4232-44c4-08da0102d684
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2022 12:54:52.5495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0gSa/vl+cNWklJhMMa49WdlcX7tw0CBm4rqDGffH+r+m2+mx2LWNfPq6UwCjtu/p+bYCH16E8ey7u7qA2HzqSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4477
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: little endian only valid
 checksums
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> trix@redhat.com
> Sent: Wednesday, March 2, 2022 6:27 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net; kuba@kernel.org
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> kernel@vger.kernel.org; Tom Rix <trix@redhat.com>
> Subject: [Intel-wired-lan] [PATCH] i40e: little endian only valid checksums
> 
> From: Tom Rix <trix@redhat.com>
> 
> The calculation of the checksum can fail.
> So move converting the checksum to little endian
> to inside the return status check.
> 
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_nvm.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
