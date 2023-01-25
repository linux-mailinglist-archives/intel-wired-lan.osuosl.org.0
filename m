Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D0167ADDE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 10:30:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 506E66112B;
	Wed, 25 Jan 2023 09:30:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 506E66112B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674639031;
	bh=0Nc43/iuhYrTNt9Anm/YWowqZErJHJCPA3W+tcXffyA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hTqndkvmMRvUwgCjK7vCZfyjhkWp9yJWaQyjMTg1G4e9DSWMxmgdoR/0rexlXOlkX
	 61JKiwfi7rN8QNpEjADzcUwIs8bip4cb2zpredm2eSVrueK7r+jXwNDaYfy2jQ0+1U
	 taY7HSgyeDp6JFzJxsz820dvqhhgMPlfsz9EZSf1Ykxd/7bCJBejk3XjnYQYp/Xx6K
	 8RO2xAb4+NGwPaxr5zpCCaTRMSxz7bGtSTqNSfB3BVMLQAaL/SJrCB85Gg4VSS7FkT
	 4kwaciGJQ5nfB/VdLQH7RCzO0cruN+uzm3Z+MeBrAKMxZdD6DhmGNEqWqVzDLSFrPl
	 gSbhNHBOH01Gw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C_KfIFJrsm_M; Wed, 25 Jan 2023 09:30:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4EDA061129;
	Wed, 25 Jan 2023 09:30:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EDA061129
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 58A791BF293
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 09:30:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3114C81B70
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 09:30:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3114C81B70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GnvUwPWgIXTu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 09:30:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 193F681B6D
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 193F681B6D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 09:30:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="314418625"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="314418625"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 01:30:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="730983195"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="730983195"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jan 2023 01:30:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 25 Jan 2023 01:30:20 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 25 Jan 2023 01:30:20 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 25 Jan 2023 01:30:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LXLy4UEfnZAKUQpsugNIFZrdo/mouapkgpPp05dTzwl59Uw2sOF/0IgsoM5IBXSIAr/UB4BoOXRYUpi6QX38IRF8Jhor+riNdN9aMRUqUgx2QylIsteZ7Q2et28Fw5tIBGuSVj7Y2HAI6ybOUabFYiuQ/8p7lS5tBsTCRMBow16keC/hCMNdjy+2o8p739yemyyRW9030Iqf+S3mGpEq+QQ/4rXreb/ypPkovfxVDynv8ULRQgpsZU/R0yoK3NZB5kMP9e6glGLFYw+KLiK546lMQHfKFocHl/ZJnjlT5eTmiR/dw+6blBkdVVNXyRt27aG+J1PI0o+Q8OKFvJePZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ahq0BbyKuiHDrGqG6wxVeiPRVWLNDnR+87X/eR0keE=;
 b=NElMP8NR8IEQRa1ziH7mTSadWHqLwshi96cPWPdlV0sX+zo6n9rINUoaiEL6GHgfKVxaJZt7+eaRTBmB7LcaSnOMRCtxmgIe/i2oeWOhUG0Kp1HvDf5ZyXKsRqZdR/Xn8E0WNENkdnNsBVYi5nLNIjJeubuKpI4W0qAGtlhAA4R1r3MqBcC0vH8gKvwGwdYbIfK8sqvtYAuYnLQFUkrAj7YA0zZ/ZiJi2elCZh1tqHxAYvU0tz/usPFal5JLz0NNhokDXlYFn+DrmXo9jPA6ah7f9Zz327ru1wojGYF9ATmGJqiUmmG3/88xm/krrPtCBmOIdgaK7smCNZ6N68GWog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CH3PR11MB8138.namprd11.prod.outlook.com (2603:10b6:610:158::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Wed, 25 Jan
 2023 09:30:18 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6002.033; Wed, 25 Jan 2023
 09:30:18 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: avoid bonding causing
 auxiliary plug/unplug under RTNL lock
Thread-Index: AQHZJer0e/+kJYwvF0mGoKpAeUav066u8pyA
Date: Wed, 25 Jan 2023 09:30:18 +0000
Message-ID: <BYAPR11MB336739708A9D89E8922DD473FCCE9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230111183145.1497367-1-david.m.ertman@intel.com>
In-Reply-To: <20230111183145.1497367-1-david.m.ertman@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|CH3PR11MB8138:EE_
x-ms-office365-filtering-correlation-id: f57cd11d-7ecd-448c-ae31-08dafeb6c5e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wUWqfAM0AwV4A7yJ6JJ3DQ9TytflFeYHY+w7hG+3AiFTgilPraxCIceit2U5G0HNKVrw7AgCm+ZUKGTv9dw1Z3EsDYccdfFcvAAZTdRpwABnqzGLKdaeisbFhNiafdrxzdBucVjTwskV6g4utByehaAd8N9h2lgZ0aZVCQrAitEnWQ0fNXCgKXQQ2GtvLUWVftbxbjOynF6CxazQkqlCXlkoykWjBGjkf7BBVRS1bWGhePysuZmEvPCx8EgMxc6wwTxK+eO9GZ+SHE6ByvRc7KA25MHP7sq++mEYEQp3jSrF5MpE6vp2Y9wUiLP17dASEjngaTzwetbEGE6L09OMDtfUOJbfFxcizPdAsqo2QGc6NNmszIq+8uoGlIwM/BBDv//aI7Hpulx7Ia18owopcg2dAedgEwXZ0smRe6KEO0NFIJoZLDWvdnJ4IqG8v5unBy3nIt9G87Y26Heq5mn777MEZHXGErwP9PUTKerftPG5AA3hq256w1LjLKE/c+gQ+Zpmyk+cBLjzaKcjn02o9yO/1YrUnVkmAMcnwYh4glzvRwX2uV24phQeb/5BMGu0lQIF5UDBRwshAcItIg1qPCBD+LaCcf8Jahm7JMZiwmxG0XAic1NjaPQW6L9ylTh2AnOYczJdtNmXY4KYb8rksA32m8LW8BjlDFDQoo35PVxVNuFuO5JjwLvs8MVpFf7MZaPe5WhicMXLF5c995VgatyjASCkfgIAaIxWEepgtjA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(346002)(366004)(136003)(376002)(39860400002)(451199018)(66476007)(4326008)(110136005)(316002)(33656002)(9686003)(53546011)(186003)(5660300002)(83380400001)(38070700005)(8936002)(6506007)(8676002)(66946007)(41300700001)(52536014)(2906002)(64756008)(7696005)(478600001)(76116006)(82960400001)(71200400001)(26005)(55016003)(66446008)(86362001)(38100700002)(122000001)(966005)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?I002pUkKMeu4A+6Sz+B+AL8iQamPa8u3EB9HZswrGQ5pzvh7YYLbe6FwuwX3?=
 =?us-ascii?Q?AVP+pGZN2nwvFFu8bM6xEvJgppDn1/xPRQ65XekIkksXkvXTLcVNIZjWgzEx?=
 =?us-ascii?Q?Ipyy5Wj0MwMRVmYzBi4Bk0AeEwIDjRLrwsPryx4GMNmsl6cqnmnbs6Yqehg0?=
 =?us-ascii?Q?HIVklNwPRez9RNb0uFjr26ON3x0AiRt7C3s1RHCWZZwmvb1wzn6kBL18TZSD?=
 =?us-ascii?Q?ltTkAGomhel9OQH/qACK7LHhowHiC2G/nKgNqeMYjEIDc7nsfKXKzP4Vhvll?=
 =?us-ascii?Q?vz7oXbvs1gSDtjcwD5zkTzncxljRX94u3dnVRzxDJD4bHGinqYq2vd0opz2Y?=
 =?us-ascii?Q?akN7wNQdthdbuTkdW7S1ZPiE63TVQn0c7WrPvrdEe/OR96vlDAcbpTGeHixg?=
 =?us-ascii?Q?sZP0AuHw01lt2x3w+TKLvOeOh1ijWZ6l9kp8t3JzsoqjY+EcawewR5/7GVfp?=
 =?us-ascii?Q?jmE9KyN4JuYLdS7g/eBBwmMGAk4NvJE5vjwAqYY3Nia+n3vaFcynjThrtBT6?=
 =?us-ascii?Q?jJPRWsqRN7nm3Wj0uikHX6o1pPicLNZ7MreeTiUvygzV/yWhUGYbl3xomH+8?=
 =?us-ascii?Q?mhei6sTVRZFsBcArDnPiBTZi047rHe3TuzRupYlLR13MQ7tRZ7MZOH+EukjR?=
 =?us-ascii?Q?iSReWn14AOdVpf1xdkl/x+ZvhpPukLv6xuOFgEx9bLZVO1U5zMUqgnJxuu0L?=
 =?us-ascii?Q?UP2NpCGV/MTQRJ6tMbDEzRu5bz6eGQB/qcBL1ug9t0mfueizis4jYiax3D3V?=
 =?us-ascii?Q?J+LsJj9FiveVnQjBEP0rRbt9araRLa75EBGjkXB6PRm8DrPF/mesGQ3ZMBFe?=
 =?us-ascii?Q?KehDVbswNc2nUf0Dg8z9s3Zd/rbbalX36hhUqT7vy2OOm/pVf6KrLFE6j+ij?=
 =?us-ascii?Q?gYxx91vTF7noMXSq+4GmzNYk66zvwYbxN/88Fm7PXkVaGwP054lO9fOg2LAJ?=
 =?us-ascii?Q?PHh2JieiG/oKhscAUmMdmCXFkLXikv7vK0wwJZnW0TR/QTepStS2QBOlTmIg?=
 =?us-ascii?Q?p7wdsHDWu06UWPnmiAfJ20zkTvytBV2eBaYGMvqgryjpFRFfnGYa5w6qcqQt?=
 =?us-ascii?Q?Cip824+LxkDBaZc/dctlHlfADohNSb+cvwSrH1GTcQ9dJ1FGpYd3WKOHUyLd?=
 =?us-ascii?Q?/NmfqCfinbP7a9c9f14UEQLy5oGnouKcBLSCZZr7aEEJTl4Z5lF9grELAZDI?=
 =?us-ascii?Q?tkQiEOho392IRG7+28iC1dIt6i6iTs8EEGblc/M5KxwfE7usuikC6ZuW8Dn+?=
 =?us-ascii?Q?DdDHLfo0h2q2zN4+WQfs6EPrzN3NYvPJ5GaUwGCOLXyE1RSROG56hnYdlvTQ?=
 =?us-ascii?Q?/TN0QkAfb83KgxzZXDn7RyJkrgMb8QtNpWslABGBg0S+8t7eDnzeHxDCAfJg?=
 =?us-ascii?Q?LPyeBobFycGhEXX+YLBuPwXfSf9bd9M0G9Lz1Bh8OYy93GJi+qNSFfmujQIJ?=
 =?us-ascii?Q?kzfh7bKYlQhbkudmW7OXEq0toAlBcoepvt/czUpcRiaJBL+IZxXnwu7QOR9O?=
 =?us-ascii?Q?NbYddzBuTcRWQhXlf02jAiUT+RnHRZSehJlDyBC2yqdJlnl1SV7BnWtxS6LB?=
 =?us-ascii?Q?XYD71cKyYVp7ZV/JSeT6edY5ErTX5DXYTEHcsKhf?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f57cd11d-7ecd-448c-ae31-08dafeb6c5e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2023 09:30:18.3594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IJP8k1tKjVTIDmbmN0OfM1YmaG5T+1DiKGK4lYP/bS5M9/ytEED35c1X82LTyK1nfPIaZivNGlyBtq1RWfVmzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8138
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674639024; x=1706175024;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bsxbTzUszoheuvb3pnfwaeAPuenEC6qUHwNqni4AlrI=;
 b=hPMR/8ERvCUYAyOz0hfQFfv5AXs6JTOV4FQmPLrbUdJ53LaDgg5k/kCC
 cQ2om/hzKOy8vQlHXaKa212FmoSgW4Z7TKKrpJw6dLkDetHFWGVa1Y7T4
 VSSx5aPhxaDWRxOVpPp88Jn6p/dbngjMTm1o7TZldAIyjR1ebgHr7oJQa
 cmbtKC/pXW9IzbtbkkBY2+5auOYNCXDcHh0/udaFB4Z/P2GgcDoVhWulp
 o3HgM+sP8z/t5i917LkLKaMbhXHoxCTy3n4lhHVC6cAntEU3Q3KqaBqBx
 v9v+dcxed5B1PLsnmL3R7iGrm2a7LM0BuAXNVxeQJ2sQPz11iLfiiuNxs
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hPMR/8ER
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: avoid bonding causing
 auxiliary plug/unplug under RTNL lock
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
Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dave Ertman
> Sent: Thursday, January 12, 2023 12:02 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
> Subject: [Intel-wired-lan] [PATCH net] ice: avoid bonding causing auxiliary
> plug/unplug under RTNL lock
> 
> RDMA is not supported in ice on a PF that has been added to a bonded
> interface. To enforce this, when an interface enters a bond, we unplug the
> auxiliary device that supports RDMA functionality.  This unplug currently
> happens in the context of handling the netdev bonding event.
> This event is sent to the ice driver under RTNL context.  This is causing a
> deadlock where the RDMA driver is waiting for the RTNL lock to complete the
> removal.
> 
> Defer the unplugging/re-plugging of the auxiliary device to the service task
> so that it is not performed under the RTNL lock context.
> 
> Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
> Link: https://lore.kernel.org/linux-rdma/68b14b11-d0c7-65c9-4eeb-
> 0487c95e395d@leemhuis.info/
> Fixes: 5cb1ebdbc434 ("ice: Fix race condition during interface enslave")
> Fixes: 425c9bd06b7a ("RDMA/irdma: Report the correct link speed")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h      | 14 +++++---------
>  drivers/net/ethernet/intel/ice/ice_main.c | 17 +++++++----------
>  2 files changed, 12 insertions(+), 19 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
