Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39862788413
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Aug 2023 11:51:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 360B183A9A;
	Fri, 25 Aug 2023 09:51:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 360B183A9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692957112;
	bh=aBW8Qe2F7IeUgLuMl6VNX332ehfgJo/0Hly1nneVVik=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=emRZtSNfZ/mcbMu9hj+3mOI9bw9gPYJKfVasl14RbARtbEw//3V2wcDZyc6YKHtKX
	 NmUAsNS2nyn08rYYyMJuPRJJDYLowanvElOb/AE/Z02uemBlZOvXSJsusvc3Sxy/69
	 +wNCrlcCFsPbcO3PcKZXZXCcbNK44vcV1+JxsgDYebigWPnNxT6QuAAevgHR8mYnNU
	 dfTUv3lCXg1izUzRaLCCokv8fom2XDP1LpOtX4kLRGZC9PneYkg35bojldMbvnIwNh
	 30KJcKZ+BPfC4VWRYGUcPtsbxzFzGshwF5W8lupbz25WJp5P4q8xGV3yFb6QAk4hk5
	 Y9MZiul9UpKZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W_09yoF9VtaX; Fri, 25 Aug 2023 09:51:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F92A83A82;
	Fri, 25 Aug 2023 09:51:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F92A83A82
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 28E591BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 09:51:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 007EF60F79
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 09:51:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 007EF60F79
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dr3Zize_wHIF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Aug 2023 09:51:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A2B6360D51
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 09:51:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2B6360D51
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="405677354"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="405677354"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 02:51:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="714296304"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="714296304"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 25 Aug 2023 02:51:43 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 02:51:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 02:51:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 02:51:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pf+FXhFFS9esyUwKO39THXrTwyILsx0y/CWkLJSZagsS/Pv4TkCBr/xsay2MZuNCh9jNZNDi2wv1N7ee83I1V6HkQ6ZG9NElffEA43hJLAdFoGd+XkQBazkrFmTejn6XF+Tm6LAG6vG24j2bgV2xxu4NbFgqgxCZU9UKKLMqVu90aQCF6EpGRJo1WmHHNIV4pgL3W9LGHGaGSfu/60TPKe3nMRAHG5JvctyLVKtNdhplVKduFXQYHP+8rEIdsk8phVbw4ipxwCt0hJKQAxfYFN+9Nr7Tp8WLk/zcUJmqsFBP9/ozaIh+6y8KRpnmt7s2g9UZVSNDR1ThJR0/eE0BCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9wHqMsKQIzVi1slJQ/a7ydEwrQO/jHPYxzCPWKLld+I=;
 b=R0gqoB6WAMs5qyxSRcmxCw/swbziakQkPRRx/DONjxO9rR12oIBcQPbciZpJTN5PHbE8pjMDC3Lz9cstFyarP06wkqhVHhC3ejaqp790yTVQ10QHxWWzBcfQUa4xClqY+sn/iRpM+756NWyfnZk8ZOK99fRp5Mi055HgeDxOyUu6zwjMtvlCJFwYhTi0qrO6FtjBDKKPDFojBiVRPQ8X3z/yI+O4TPfPQ/3O0lklUhuL3EGJf2U3jumLYT/eQ0IjN2T40ls8NnE4f03dRcQZifaKCtvNOXDGgD/wpgYu3nIKLLRH4SJ7GAvxU3VGdhacqs5AXoaq6GRS8+GXKpt0Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SJ2PR11MB7576.namprd11.prod.outlook.com (2603:10b6:a03:4c9::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Fri, 25 Aug
 2023 09:51:41 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a6fa:cb0d:5e13:fc2d]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a6fa:cb0d:5e13:fc2d%4]) with mapi id 15.20.6699.028; Fri, 25 Aug 2023
 09:51:40 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v16 3/5] ice: enable FW logging
Thread-Index: AQHZ1hBeX3+1CDBiLUu7aTxko7l+xK/6xtAA
Date: Fri, 25 Aug 2023 09:51:40 +0000
Message-ID: <BL0PR11MB31222478D9F0E73E559CF46ABDE3A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230823222152.106-1-paul.m.stillwell.jr@intel.com>
 <20230823222152.106-4-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20230823222152.106-4-paul.m.stillwell.jr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SJ2PR11MB7576:EE_
x-ms-office365-filtering-correlation-id: 02cd827e-1f01-4e4f-4016-08dba550e191
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OS18xPk3FF774f9Pu/xjGxXvzRh7jWOedYjb+ZWT1oFpk26FpqffeDaUhpxqq6KzsY2ee65OfNxIzYfPw8DJIQnzedwqtfBZfuq6U/8X5VSk7k0ABEXw6tQM/fonDT3YBjM5ejBv9GydgwF5wxvge34b3oq115fO+BGY4QAQRhpXDEueUnYPA/PnOHlcvu6BS3AzxVfl1gAyaTAH/G4GshKcNWHqN/uJXsnuukwbL2njpKRAJ04kkAMkgqIKEhdhwr0Ns7mJKdZv92pHkxaFcdO/Ufcnk7iYMUau7mWziYji63ydgkv6Qw6u9jy+tn3vd5/UoalFQEhW9iHz/zuNoYd/whPcQ/YjndTs5oC3n1R70WkV6zc0QTkts/qgOGzIiiRa3vfZ/V3W9V21G5E0TdH8v393nLeumKxS1gvktu9NjwaYsStoPFstZTJy3+qaZ4dS3118MbHemh6+IaHwPi8jUakHMQvOzxVRVXPCr3x5DAdFXhHpe3scSq96re9t986Bdrr2jyYZjePckEzf9SW8HnGAFEH4BgWLyWQBFT8dzjmDSUzKt9/cJG4FrABwsN/l2rSL7m1DBmQJdB2bGiXu8mkVzLiu7oxd3LZewtHnL2gFLlKCwwhkiqYvpsjf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(346002)(136003)(376002)(39860400002)(1800799009)(451199024)(186009)(83380400001)(9686003)(26005)(478600001)(55016003)(5660300002)(52536014)(2906002)(8936002)(8676002)(82960400001)(38070700005)(38100700002)(122000001)(66476007)(66556008)(110136005)(66946007)(76116006)(86362001)(7696005)(71200400001)(41300700001)(64756008)(6506007)(53546011)(66446008)(33656002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Oxd4O9c21tgxXiATF8adpccl34uZiVro1x5pqdabzm84/3fezwCQbidzQN2C?=
 =?us-ascii?Q?52rtatpaDSFjBMUdspYTZwN0zjkHdGXqaGKTE9rMYtFY+ecPcCDyFu219O7i?=
 =?us-ascii?Q?7mUnWGXlVeWU7QH97bx54yWAdTqXduWtiVBD5AP6q/NK+9t/ttbBiF1S6J3z?=
 =?us-ascii?Q?SmQa7QQcGgJTvVRf3YRNnGS3GOa/7DwL9GJMU5gufwpn474PS4nbq0zUy6AF?=
 =?us-ascii?Q?r7Yzbo1E0A5jPeCloRKPQme/0aKe9mJptDwJK1LIdRmTQ+zMUvGlmUnpaSPU?=
 =?us-ascii?Q?eDZY8YArqkNjmjhfBnWFs0hFF3y7Z41TWMZkDMB5ZAs9a4dImIQ7EWh0zvTY?=
 =?us-ascii?Q?KdUWghEMb3PsYHYF7dnmB3r2ZOjBJl31VbCVAnW+AO+TEEcWW0kv2JjEOnpJ?=
 =?us-ascii?Q?UE3Bcmw7grWP+YjlZZWngCCgE2wpYNwIdjFiJaD6kgMwU2tdmW9ysT2TFPK0?=
 =?us-ascii?Q?HovVbqtSHKBeg6LH2hWWJCVJVsgKkU9QScTLily4vCbpRXGeQkIR2oSFX6z6?=
 =?us-ascii?Q?pdryq6/ucXvOcmGUp+pq5LAu/ZXPX9KlQa4CuEmsOPCwy7x/HF+tIrtljfxW?=
 =?us-ascii?Q?fFdyJqDKMYwGYO7imyTswpCrIqKnpZDa1jVY/h7MlGCAxEogy0W75Jj2BWDE?=
 =?us-ascii?Q?WAEcsRIwoaPzBjquzw3OFPW2ZDiG3XIzxO7N8prD2kHPAK0mf9q4KzqJKtOH?=
 =?us-ascii?Q?TQ9sQtCYn+1oi7yhRVcLQQ739w15wN5T3O4ncm1XU+LBg29G+zcyVH1MbMft?=
 =?us-ascii?Q?ZUQwEFbZ/Lnchj684QEadHZwW8WGiegJ7dEFBPp0mP9LFT0pmLRhvSFbBucN?=
 =?us-ascii?Q?nrzvRJxfGF5q+gYj05KOaxCyEZnUY+ihIhYRLx1YHeYvhNnEKAnctDeCtT1A?=
 =?us-ascii?Q?n71UVQmhxQtpbl1p29IiA+NVUHwGzVcMl3NVpMKfrJewZqHFLUW/KiRQHRgB?=
 =?us-ascii?Q?edkJWYQU8BT6qtMf4cO97T3dABJAbAT7qbFryNlUgxb5OFEhtTEe3D5LXTIi?=
 =?us-ascii?Q?P46FBw/FkG3O244MLnHwMcp63k+2qEQZ+s8f+jemLrwBMDTOPCiX946jIaJg?=
 =?us-ascii?Q?Qu3Z+bGKHUWe2UNeHo/7ax86y0Pk2hjzqxsHacfzyl2LyTkm6qEei1pa/k5+?=
 =?us-ascii?Q?Fq+Xpo9M6fEkiKAybq6KJ/rev/QnkMULmwgcNPjp8W9smQF1COl35K78bvCa?=
 =?us-ascii?Q?+9wfpGbHj90bH9Zp5w6qM/haAGcAxdysAwX8NnvRUIdWOq2U2jewze9onZmL?=
 =?us-ascii?Q?HqkMDWkQSoaQ1yXKFXb4sxxDjkEQoc8X8i9LFZANSV+aRrw7f6W3LqnRTaYK?=
 =?us-ascii?Q?HpsECTvz+fniIcBOqLr02rZlmA6PwNr+j6UXJR77UvGGJX2UxBYlmT4op2I+?=
 =?us-ascii?Q?+va5SG/lLuwllVCaRkE5LUTk2Ca77soyBxJk8DoBJTV02E/NApzdr4ympKWq?=
 =?us-ascii?Q?mYcH0sayvE/6dTL+WQ9GSzBtFQ6TAcWFCm6l2PVM5zoKQvYLHvcezCAAdqQ5?=
 =?us-ascii?Q?lis1WFpvQRlXqUeE8sup336etrfl8lsMTpftkt1eyYkLU3buYsHyDeCBWPyc?=
 =?us-ascii?Q?bPIPmdf2Pv10OopxaXJYqnoYNFGXxd6AeN32Xzq2efDG2sc/ZMAtt3KpbgqN?=
 =?us-ascii?Q?4A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02cd827e-1f01-4e4f-4016-08dba550e191
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2023 09:51:40.3157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: obOh3qPqEPcrxFI6qrJNVfxRv/A9ZOr9n0g/rRZOju7ZIDU27EX5D2IdQtboX4hjtNW1Gcj7ll5TOgH8m/bNyam1XhBjY5HuZRw9aS5ttygY6KlKFrnD3/+4HNUU6j0d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7576
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692957104; x=1724493104;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=SGXoxU1jKPrkg9rDqAJ2yfM97fuaFI1gBA15YBFIyZ4=;
 b=H/h1a78SN5vL/QBMIsUn5Z+fNeqg4l0lFuprP6n4yex/DR0EPthgHDT7
 6Cpk137Cz6897siwlyWiS0H+q16MOYg6QjOf30o8kQMj8biaO1+tTXv4O
 uVLlGu7n47EakIUCkuuk5rCiummS1BrokkSkYJQrFKw1ZL6gBsulVpklo
 ROhxRvCIw+/q0/R+YPDLVai61n4uobKC2DVKyJEbEXIUl+4PI5JWB5u24
 WdP0szHC9kWP8eqn8fon/wcSl0L2ZoXRa8e0RJPgY3JlkhoRTfQo6c1LB
 xh1+xCC9aF1KBuBCFDoLxUi5LdYgUCF6o4nZ/zALfnAJcdRmI9r/41jns
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H/h1a78S
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v16 3/5] ice: enable FW
 logging
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul M Stillwell Jr
> Sent: Thursday, August 24, 2023 3:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v16 3/5] ice: enable FW logging
>
> Once users have configured the FW logging then allow them to enable it
> by writing to the 'fwlog/enable' file. The file accepts a boolean value
> (0 or 1) where 1 means enable FW logging and 0 means disable FW logging.
> The user can read the 'fwlog/enable' file to see whether logging is
> enabled or not. Reading the actual data is a separate patch.
>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
> v15->v16: none
> v14->v15: none
> v13->v14: fixed an issue where reading the file produced an 8 instead of
> a 1
> v12->v13: created a new patch for the enable code
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   3 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |   1 +
>  drivers/net/ethernet/intel/ice/ice_debugfs.c  | 115 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    |  90 ++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |   3 +
>  5 files changed, 212 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
