Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FCD3B21B0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 22:17:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B958481D46;
	Wed, 23 Jun 2021 20:17:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SRrBuIr_ZbML; Wed, 23 Jun 2021 20:17:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB22081DE0;
	Wed, 23 Jun 2021 20:17:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 993351BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 20:17:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 86BBC60819
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 20:17:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bBgBIj3MX6Ww for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 20:17:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DED64607DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 20:17:23 +0000 (UTC)
IronPort-SDR: xqjMV8VoQCMWoVbv4e/cq8esq3SP7OJ5Tf5doz4kyickaA46cl6V2kOQJqpDkej18CpjNKtYM6
 QrgPSfASJjFQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="205512244"
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="205512244"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 13:17:22 -0700
IronPort-SDR: jx0SAQsLdynCa5vRFPHjcW6fH9XPCcVfxhLbDLVtYiIEVUn3ZSF5kWMw/sm/fjiO2FdLlU3qJI
 2lptR9I/r5wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="623951039"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 23 Jun 2021 13:17:22 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 23 Jun 2021 13:17:21 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 23 Jun 2021 13:17:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 23 Jun 2021 13:17:20 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 23 Jun 2021 13:17:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fjEF88OrjOon3QEj4+MuaIII7DfIWWaD4HAxmeNCTujNf+eFroe7QrH/X8ZR6c0s4spX1Ic1VIosddp8lEuSTFG85eN7XH/oHhZL+q+dPs4JsoBJJJnvrDPw/hdR8AWM/Wjalg3IcAhuM81PhiY0RNSNwEYshJCRrEOUA3TiDyaaLwXHqFqdlaOHSiohqhoN7qTRdxSlNjtBBFk0ZE1sWoxavWnKVlqlDmLNy+OORPWfmfxTZx8W8wNYcYENoT1Tt0Z10LZITHlPTTP9UuAl27E5XMG1SFVme3VF0FJEFgUaIuXAOBviaZhhAbonBu03UHXs6MrP5loiU8VKhI3VaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FUfPqbHPp/TkJAS9hNIdkuO8gF1fW3cGjTAo0x8XFis=;
 b=fAsbhEOQHEwXC96V6PvnqSx+1akrkfiECK8fBeAspmW1tBwdjqUcBvb+GSE+lT5A/KlBR56uhnwbGvUKeZuxSW9gyXi1WKANHJv3AiU6LuVOf8mksrOKeJX7cNI3gR4pHNdfLcJrjIVmNsq/naFtxg1nCGKEU+l5lFn0A6fACcjXviW4RpBike53qEDZLJKR0jL9c9QtZ9ZoOps4P+uMeDOJTr2Fshc2p3cahBhV+I3/t/2unO0t/ybqoIU6xpu84cp9hZZ9ZlOfXNktZRXX4ySisAg6otMbOE6vxqpq9YVy6gqeEmA4FsyZGjZoFsVTalKpCEqgF6HYNO+/v+nF9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FUfPqbHPp/TkJAS9hNIdkuO8gF1fW3cGjTAo0x8XFis=;
 b=Ma7Gyia2f2/0G9wfZhCOY14IrMSbgCOX/8NesYHaoggm034euqPt8IEVG2pgXtbnNwgsIJzgrgntvpek9pvtdAA420yHHOPmgHfPApB8TV3YB8E8oGsutPR10jbGoaNClBaqCkoR+/VTpb4VdauDGZnK/wGOM8ClbFu8FYPfBRQ=
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7)
 by SJ0PR11MB5615.namprd11.prod.outlook.com (2603:10b6:a03:305::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Wed, 23 Jun
 2021 20:17:16 +0000
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2]) by SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2%7]) with mapi id 15.20.4264.019; Wed, 23 Jun 2021
 20:17:16 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>, "jeffrey.t.kirsher@intel.com"
 <jeffrey.t.kirsher@intel.com>, "peter.p.waskiewicz.jr@intel.com"
 <peter.p.waskiewicz.jr@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: Fix an error handling path in
 'ixgbe_probe()'
Thread-Index: AQHXX5J1nym7uLuA2Em2KnZsY/H6A6siGkkg
Date: Wed, 23 Jun 2021 20:17:15 +0000
Message-ID: <SJ0PR11MB5662DBD0FD854E20709E5D3EFA089@SJ0PR11MB5662.namprd11.prod.outlook.com>
References: <e3cc7010f6bd15d8ca49b935847450e92122dee8.1623505485.git.christophe.jaillet@wanadoo.fr>
In-Reply-To: <e3cc7010f6bd15d8ca49b935847450e92122dee8.1623505485.git.christophe.jaillet@wanadoo.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: wanadoo.fr; dkim=none (message not signed)
 header.d=none;wanadoo.fr; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 250bc899-bf56-42d3-5b04-08d93683e4ff
x-ms-traffictypediagnostic: SJ0PR11MB5615:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB5615DBC3761965971530F270FA089@SJ0PR11MB5615.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5RfdL8/IdE5WYq88Vi7uAI2sbEoihA46TwN0s41IpHfL+2lJLMcxVohSkF2PksqdPiBKJNzT10rrT82gWl+s2792BsOlwv7Hv/XXuQpxirMSpTRYdOHpc1Icj3KxEQ0pDoGLubFURlhzyDekUzv8a/0MB2RnaUVi2Byq9l9nylY2AKAF+QAkrW2w/y+4yEmUOfRL+PiB0Wl8px6f3ph2ZP2S3rzaBzQcysZaJjcYUFTzyUlwZ49anGmRemBNi4yriWm5v3HjZMRNvAw1KTYn3VfrDIgRdD5HPj9Y5XTWBWeGgtQv7govTb/Rwau4Ep1JiA9YcnRlLh2L1bIYMwW7rraD1DAxm7Sr/p/zFCzFAQqs1JC51hWcEi4DvrOhwYGXmTp1ezzO3yAbvVqwQmU5HrHMsZaQcM5fFej+kZSckkOZiaxwvvfKutfb+P9DX/GJ7WBrhP8pcF+uhHPdWfnl3Riej5VutIByGisMa7Qq/En0PzdNPBHY9MbZt6zJqEaqkIKrpjzwpEKkvwqn2w2PwBYUEvVS+jqmbJrNBeTvFTtjpUPyXS1t0Ekm4fU0ZcRkPuEA2rG0/C92s7ppI7bb7vcZrHPGMYSanU+vHZMrI59xdSwKQGUGifljRpC+c3dI3o1+mgWHwYcrSnmNdXeGVA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5662.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(396003)(376002)(39860400002)(346002)(66476007)(66946007)(66446008)(64756008)(8936002)(53546011)(66556008)(8676002)(86362001)(33656002)(26005)(6506007)(186003)(71200400001)(83380400001)(76116006)(2906002)(7696005)(6636002)(9686003)(5660300002)(4326008)(122000001)(478600001)(4744005)(55016002)(110136005)(52536014)(38100700002)(316002)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ccqHrDi40OhaspOTpxYSxqO9X6sDceis5VK/Z01+APSJtTookXrY0CoiySr9?=
 =?us-ascii?Q?q+M4NgGFzqX9ozSvPg2X7rM8pk/0FOQkW353OwKpIfIQc9Q4ZP84a8YaVIJL?=
 =?us-ascii?Q?qgfRZDCsie3qI5GcUeNdS8ZfWg7wMH//m0LorlphLzuYTK2p2/Ns1xc0tNQD?=
 =?us-ascii?Q?BU2PO+FQZmUWkJElCfL2oukPREK8/Mw1tPBqWLWrPIxZj46bonnPV0gdvADk?=
 =?us-ascii?Q?fOY9lisdqcLQBllpXk8f3OyfNWM/gxs0zk7CMdfeym3Qjt4GBKSocu5a6/Jf?=
 =?us-ascii?Q?xHtS2gI+P7k1hUBqN8Ya0Bs5FaK9fMrqpg+JW4eHxzBEiTo4uKkupp2v008F?=
 =?us-ascii?Q?1CKlFQbmTu+y1GdVRu+4UOVzrXPHLDmzkwEAaL5RuxGZ8Vyn4tFzmiyUUj3p?=
 =?us-ascii?Q?s9BNe+9lztCJ1IQNqldW9B7I+3bGGjuvDVmTe28rmqW4CnZIQIXha2L+CqiN?=
 =?us-ascii?Q?oLx2uQuq16mFl+egmCfHAE/ti8QwGp6n2cYpiWbH+1BynmdSMYBxIY6rcw0E?=
 =?us-ascii?Q?6eJ8f9Tljgaj4QnKLhpatb1hyDBc7psx+edEdOeTRuNlBsPaIXjNPrctlwYX?=
 =?us-ascii?Q?1p2qmB6dc/YRTh4veOd0YqfDtm+Gn+EklthpwlogXWlZEqJ8ZCFs9FWY1vPJ?=
 =?us-ascii?Q?smClrSetCQzKFZjj1810Vf2YO77p717e2Z06UrhYW1zXpFs79/MuDUAR84Lv?=
 =?us-ascii?Q?9s4BFJ1Mm+NEou5fSdxxP6RcEhluBkhE03QnLwGUacgP/Md+P0dF26EyQtTv?=
 =?us-ascii?Q?VMVPC+83eGW2rKMVeITGVAq6wU2xrgmHD0H6vsyWWQxsobIkyoJL2i8BqM0I?=
 =?us-ascii?Q?jUIrEiPrhZUK3T16JdC0fKo+Tbyxrb2t3pHhfBaNvbQt5TRyvf8WZHMG/pX2?=
 =?us-ascii?Q?FA1Trxs7up6ZYQHyArBcBe+tpXXzN3zblsIB2JemM8+feOt8urWxrZAB8ZhV?=
 =?us-ascii?Q?Lmy2x4ba3qb7LHA6VCpAHNSqZhA8vHAAysHBor8VwJHiWUz3los2LrnK2JWJ?=
 =?us-ascii?Q?ZI8vZZ8eVFGETtoe5+UqtfG9iDLzYF3KNAeWf3nAkyyrGvMDoAJgCkuMXcB+?=
 =?us-ascii?Q?Q+kWmEyMrbIpE2WOSZKtLr7kjko5LDi9Nkezkks4iw3GKahKkchezyS+tXwE?=
 =?us-ascii?Q?TiwTj7yPOQ/DBO3ZKdSU+IRXBQMVB3ALD8ZxTR5R/pS1TRRTLZlgMK+/540W?=
 =?us-ascii?Q?QY09PHTi+JGTFc9PhwDiXyBg6ErBMkA2/5P8cIXwI7Nx1VYp2lvAtdA0gpTi?=
 =?us-ascii?Q?jh2FebwdgJ+3SeaoaZBx3paYtfHn3nf90+xfjCI3ySU23pYN9ow/QluI6Adp?=
 =?us-ascii?Q?BAeY/RBk7de5Fco0eQdj2hhY?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5662.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 250bc899-bf56-42d3-5b04-08d93683e4ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2021 20:17:15.8758 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uHafV0QGGmCM1MMRFNW6cZuPk1tWs3ab31R3BC2CppTbYDpBnhZaWBZesKY+UMnZyda088SFSIL/iwXDlssDl2u938STzLmRMDiypmvyMzI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5615
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Fix an error handling path in
 'ixgbe_probe()'
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
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Christophe JAILLET
> Sent: Saturday, June 12, 2021 6:46 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net; kuba@kernel.org;
> jeffrey.t.kirsher@intel.com; peter.p.waskiewicz.jr@intel.com
> Cc: netdev@vger.kernel.org; kernel-janitors@vger.kernel.org; Christophe
> JAILLET <christophe.jaillet@wanadoo.fr>; intel-wired-lan@lists.osuosl.org;
> linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH] ixgbe: Fix an error handling path in
> 'ixgbe_probe()'
> 
> If an error occurs after a 'pci_enable_pcie_error_reporting()' call, it must be
> undone by a corresponding 'pci_disable_pcie_error_reporting()'
> call, as already done in the remove function.
> 
> Fixes: 6fabd715e6d8 ("ixgbe: Implement PCIe AER support")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 1 +
>  1 file changed, 1 insertion(+)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
