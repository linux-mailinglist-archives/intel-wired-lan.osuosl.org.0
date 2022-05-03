Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B26A51853F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 May 2022 15:16:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A6A3408A3;
	Tue,  3 May 2022 13:16:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z3jAgW6heLMr; Tue,  3 May 2022 13:16:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72D2D408AF;
	Tue,  3 May 2022 13:16:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1B3361BF339
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 May 2022 00:31:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 076B3409FC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 May 2022 00:31:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yfvj2Xw0IoMW for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 May 2022 00:31:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 387134026F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 May 2022 00:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651537892; x=1683073892;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6ZBQctrOgzlo3cDq8N9MwImcczojCflEqGAQc6vx+TM=;
 b=lkgE7IGygcMuI7hm1ziFJ0R9cx2WQHS3QdyvorLjH/dwo9YbwopS285i
 DCzVkztALtyAfLEyW9aHGQO6xwYnqXrMiLMO522kD9Lnqy17RRHtPvS9I
 3qHNUYp1lYtD2uRcd1cICsK0/O9Mf0cvK6QDTh6m5+pnqs2olLuPP7nxm
 RHyhfNfwtlHPeZQmyg466WG9ATxaLZsi6udD+3joiBCSb111gFjFbupHJ
 gl9WJ16zseizBXX2IRNGelF3Ma92sZlyX74qrH+6h0JOVWZVpnbZGfGz5
 IADjqdCpubjnsxS1r3MQV6I88ruWQ+gsK1E9c08WYO7w7akz8k1MOMtZ4 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="292550748"
X-IronPort-AV: E=Sophos;i="5.91,193,1647327600"; d="scan'208";a="292550748"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 17:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,193,1647327600"; d="scan'208";a="536117510"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 02 May 2022 17:31:30 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 2 May 2022 17:31:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 2 May 2022 17:31:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 2 May 2022 17:31:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JVa8nUfN68lgmbriVHBuVZcQ/Ci5sRUtMWbvlQIIzVJos5nQjEGl6z2Ck94Y4kRgI7FmEvt/cXyrRYtSoPAmjOWt04w+cMnOumY6V1QV4egSGkDVkl3y+iwZGik3WGuRdsd773zf7e8gHeTNe6leL/3Z835fpqo0ghEmtt7gJ7uMofhGlAkQ5JA1L+SxA2AZhc595RPZfE4eueatPUYbvqvj+az+egizL1RHQL5k+xE+D0zLLAlSdROk2AsM99vmAeFAq5cdWeX/ebfBoyj23v0sbH2XJNDRGWykLGWRl8XDvIuxyWcKxMo1tIaL7HvgUdn+vwmI4/oFloYE5b26jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D2bZMLDaJHTF1YQc1mTbdUuwHeLttHMG8eyhE8kYnT4=;
 b=Vn7VbEhbWIassNm67sb8DRxseVWGpmy8I/2I6bpjJqHS3rJz7L3V0Bre82X0+JGGLNGQJa/gG4s3YpBkvDwHcHAAYhfxZJr1pYcU6EL06QP1hodxLg8ygoGTBMkPmw9B5j4C1u/M8t29/Wqtq4Gf6JEyna8fDUB/NyxOcUijGGIYB3zp9YNnPKpMO4Z/XS88qXkz7pKFo5GgSPO2POwVE+N1K6ofcGQQ5iPa8C/hnXU5jQPFOniGFU8jUOpqc1UAMDh2EW/xBIGMWHO250bGJoYEe2j5U2eA+i9X1Lu2z0s5r78rb81IZAMorGWQXBR3e6xVieLxmgnWUksXuGV54A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3397.namprd11.prod.outlook.com (2603:10b6:a03:1b::29)
 by MWHPR11MB1262.namprd11.prod.outlook.com (2603:10b6:300:29::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.15; Tue, 3 May
 2022 00:31:28 +0000
Received: from BYAPR11MB3397.namprd11.prod.outlook.com
 ([fe80::58eb:25f0:cb84:a8da]) by BYAPR11MB3397.namprd11.prod.outlook.com
 ([fe80::58eb:25f0:cb84:a8da%5]) with mapi id 15.20.5186.028; Tue, 3 May 2022
 00:31:28 +0000
From: "Raj, Victor" <victor.raj@intel.com>
To: "G, GurucharanX" <gurucharanx.g@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Xiaomeng Tong <xiam0nd.tong@gmail.com>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Thread-Topic: [PATCH] ice: ice_sched: fix an incorrect NULL check on list
 iterator
Thread-Index: AQHYQaYNl8IK5yEFGUm2RVp4aZPsQqzVF96AgDZe+gCAAQZQ4A==
Date: Tue, 3 May 2022 00:31:28 +0000
Message-ID: <BYAPR11MB339776DBFFC7F86EC7F4DD708DC09@BYAPR11MB3397.namprd11.prod.outlook.com>
References: <20220327064344.7573-1-xiam0nd.tong@gmail.com>
 <CO1PR11MB5089C7298CC46861FF41D3E3D61D9@CO1PR11MB5089.namprd11.prod.outlook.com>
 <BYAPR11MB336781C93921216983F8BE3CFCC19@BYAPR11MB3367.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB336781C93921216983F8BE3CFCC19@BYAPR11MB3367.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c6e0b25-6144-48a7-4d29-08da2c9c437b
x-ms-traffictypediagnostic: MWHPR11MB1262:EE_
x-microsoft-antispam-prvs: <MWHPR11MB1262D9B07A89B75263FC55EA8DC09@MWHPR11MB1262.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BnOuyHq55cF2bg8ZpdDtgFAkT24D8j6EvWukDhV+4pyQBu7ulNeuGPtkZoZefXoYl0YkRM8coLv2M7RkIgfC4syxmUoYHGLudv193Slhon94vqcT9M6RXleGyatmSwVpAtzInU+A5J1pTFSjRIWX04RI/LkrfQiiwnWF6ebHMSb1IMnJgPEdfAgve3/cvyvoQ3OEsw1DH8rDdpdl78OGmkhHCfhtall8eDJ9iGqEH7z8aK2NzZm97D8g/pJ4YTyzSksvp3gy7rZmso/+3G8Ff1BaU/N6eZ/nGiuq5QrCoaCq4dxUON5De/Xhsn/4AN3Movzep5CE6jehwWJwNru73MjB7mo+bav3aQBGVknXw46XBp5Rqrg6CoXBCBXsJvh82WGPpw6+EWgvsLsmdt/E0LGolGZyoLiedVdy4MGxxpC1yvS488bD6pYcEyHkQPEeg5EUpNmSnQp1RAInIUyDsaAJNPVMleHFqzfYVeLNMh+gRkaLjrCG5+V5YpTkR5r7ceKYOIXr27jtOd71Y2ZniELt9LbmtRqvjm55swJZyAygSO+IVmRtNFWuS5pLFP3GA7Ygo/6e+0++4Lf+PS56BAMt8KlguM9OhkpwC0wVOZpoCW2IIMsN+a4Dtuh8zQPc+jvmUMCREYYd1dSBNhq8Z5FW02OVTtfwjcBb8Xlj8ggXjRwzX52eFV28MPubUMa39b0aKeEhnqq/YuA3nrDjFA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3397.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(186003)(2906002)(53546011)(26005)(52536014)(122000001)(82960400001)(8936002)(5660300002)(7696005)(9686003)(6506007)(64756008)(66946007)(66446008)(66476007)(508600001)(110136005)(4326008)(33656002)(66556008)(86362001)(8676002)(76116006)(316002)(6636002)(71200400001)(54906003)(38100700002)(38070700005)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Pn0KjDA9Lmc12VudMmYyih6Ux/NWwdDdB/v58YtAo/6FbV/5eK0Bl4dJCFWQ?=
 =?us-ascii?Q?jH/BHBaUdkP49hrM6DIitgJ8uiVz3nlGzl2gQLoOWdB/fpCQyq2+luorIRte?=
 =?us-ascii?Q?dwakm3P8kv1VmZaxIuXLMJVtH+bikA5zF9QiK5R1VARAkG1xL/mB/XyMn8S3?=
 =?us-ascii?Q?G+UEUABS7Bn3jBaT/pJ076QPHyH99geQd87OuiQdU5FU4Q0ABZpyf9+iAGCt?=
 =?us-ascii?Q?HaIS4ul4qzxD4FZKpi5VvN0XervjLqHr2ZStECSrdO9zBR2oFshBpiP2OTLe?=
 =?us-ascii?Q?lLMnfiqmtydDVVBv1rV6aOmAt4nIirkmrz/HQSYZtS07i09RoQWfVbf4vif3?=
 =?us-ascii?Q?lQc/dEh6kBTguKqJPrB3mSRJrfZF0vd9E3hoxebFJW7d0JZkCdCoefkPmTJN?=
 =?us-ascii?Q?QvU0xnFRNX69y8SABgj02K2HObkzfAYI9N5I1C6pQsI0FCCx82SpRvwS/ghX?=
 =?us-ascii?Q?9a+80xmSbiNGSCFdNUVpAyOmtQgjSoKY2kN/iWSUuV4gzciuUZtXOArVB8Oj?=
 =?us-ascii?Q?9MeqiI8FRUuEtDEWEWqtpwYiMwXYCsqWBFbOe4MdQU6WTbGw78wz/5VayuUz?=
 =?us-ascii?Q?b8YTT/Q32ThXmHNHTknyoueyEKLD03rqBXff7xgago7Kr5rFlD5WNvEc8QI6?=
 =?us-ascii?Q?yPG0OVOgVVnVGcecMGBc2+o71kg9TnfnNZIeCwvUuyQ8RjhrLTIm7nhXCnNv?=
 =?us-ascii?Q?01K/J8MFgvZd64h0w5xEfH+mgErA1HpaKzSEiY1uNxCKReBg9O4gFhx2ClAv?=
 =?us-ascii?Q?XezkRsq+LZ43rJMq9aASeXHV1GBKXp6cj458K/Jy9mwLlAXKBdRp1FRkRY0t?=
 =?us-ascii?Q?w1f8qq8AQK20/UhTB4Zi64C82b9Y9vdZWl1C92PF7iKAxGt+jgoHJfbVu6JS?=
 =?us-ascii?Q?/a359LtSTqtw62BFiJqW6reWE0wG+sGuK+CD32sykQIndbJqtUTHfWFXrX7J?=
 =?us-ascii?Q?fg27RX8mKaq/0fDkzNwCMyMqlIfTP3CnsAgoIYePkK4SwpW3l/Y8FUEXAtYe?=
 =?us-ascii?Q?zPqKuk/xll+6H2UzFndOYbFQP2IKfjGe/y5+GqOPPiynm8GExHL5MsUjlCe9?=
 =?us-ascii?Q?OPKnMY+bDA6+DNpsjORKuVVD4+1UKXiUVE2DFci4szq6xy/vFon9Ou+Bz4hI?=
 =?us-ascii?Q?IDCodTPA174kz5Z5InBg9P6YFni6nUPFx8hcyNpeAtQlhVLMpmNbFFSwcqaL?=
 =?us-ascii?Q?ra3+HV1DyMNKcqxE3zCQclUnAimYE+m1eWMDu2GTNjKsQamKg5ArPZ95CQ0L?=
 =?us-ascii?Q?5mZwDYX9V7nfQuTDvJiRY7DER+1IvXNF5Elube3lsIQaz6RaEcP0xiZRBH5x?=
 =?us-ascii?Q?KEH/edgPzJN+KLZ5N82C2LiZkkQICBzzNqVpW9jPgXRigfP80JLKwKnipKyp?=
 =?us-ascii?Q?x/JCS1A/VdYi+23dZhF1B8uuBTvZjhePPJO8GwZHOCK1N9KwD83VlYbxxNmG?=
 =?us-ascii?Q?5OrIqGrHK7ff1n/4UpXWdEsX/9bjEcgY1FCeqs4CtBwBGTXhBLpAUXPMAQVo?=
 =?us-ascii?Q?UXqFzoNaHiP1VeH5zJyYYRFb1X0CUGDqQu/CcbLHTgsAQ5R1pkNgLb+t0rxy?=
 =?us-ascii?Q?n19cdL/mPGCS/FdxRZb1YO2HPrNz4AphWLmfTp3xU1p+BNpN1oeHEKx3isCe?=
 =?us-ascii?Q?N/tKY9TbwVuxy5Vj1kWChd0nYTp9thx887Vynveow90Gon5fkPDX3iK3tKIC?=
 =?us-ascii?Q?PomkgUPEypvXlGXJiAOL3FHNIsq5xDmuoe4ai4ahK/r5ODErJPe5sXEtIHbq?=
 =?us-ascii?Q?9qGE96NHug=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3397.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c6e0b25-6144-48a7-4d29-08da2c9c437b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2022 00:31:28.4864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d69knugLDRlJFmGO8h5L0R4G2XSlnG7rVIgNUjSIfgHP4VvVqNH85nVPG1KZEcWDCSVGSQO+NB3usOnjr1KLcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1262
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 03 May 2022 13:16:13 +0000
Subject: Re: [Intel-wired-lan] [PATCH] ice: ice_sched: fix an incorrect NULL
 check on list iterator
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If the control comes down to the loop then surely the VSI is already part of an aggregator (old). The aggregator vsi list should have that VSI information. My understanding is that if control comes here then you always find a valid entry and matching handle here. If that doesn't happen then we need to debug. The fix is kind of masking this problem.

-Victor



-----Original Message-----
From: G, GurucharanX <gurucharanx.g@intel.com> 
Sent: Monday, May 2, 2022 1:18 AM
To: Keller, Jacob E <jacob.e.keller@intel.com>; Xiaomeng Tong <xiam0nd.tong@gmail.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
Cc: netdev@vger.kernel.org; Raj, Victor <victor.raj@intel.com>; stable@vger.kernel.org; linux-kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org; kuba@kernel.org; pabeni@redhat.com; davem@davemloft.net
Subject: RE: [PATCH] ice: ice_sched: fix an incorrect NULL check on list iterator



-----Original Message-----
> From: Xiaomeng Tong <xiam0nd.tong@gmail.com>
> Sent: Saturday, March 26, 2022 11:44 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; 
> davem@davemloft.net; kuba@kernel.org; pabeni@redhat.com; Raj, Victor 
> <victor.raj@intel.com>; intel- wired-lan@lists.osuosl.org; 
> netdev@vger.kernel.org; linux- kernel@vger.kernel.org; Xiaomeng Tong 
> <xiam0nd.tong@gmail.com>; stable@vger.kernel.org
> Subject: [PATCH] ice: ice_sched: fix an incorrect NULL check on list 
> iterator
>
> The bugs are here:
> 	if (old_agg_vsi_info)
> 	if (old_agg_vsi_info && !old_agg_vsi_info->tc_bitmap[0]) {
>
> The list iterator value 'old_agg_vsi_info' will *always* be set and 
> non-NULL by list_for_each_entry_safe(), so it is incorrect to assume 
> that the iterator value will be NULL if the list is empty or no 
> element found (in this case, the check 'if (old_agg_vsi_info)' will 
> always be true unexpectly).
>
> To fix the bug, use a new variable 'iter' as the list iterator, while 
> use the original variable 'old_agg_vsi_info' as a dedicated pointer to 
> point to the found element.
>

Yep. This looks correct to me.

> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> Thanks,
> Jake

> Cc: stable@vger.kernel.org
> Fixes: 37c592062b16d ("ice: remove the VSI info from previous agg")
> Signed-off-by: Xiaomeng Tong <xiam0nd.tong@gmail.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sched.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
