Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BB6583B87
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jul 2022 11:52:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 004CB400FE;
	Thu, 28 Jul 2022 09:52:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 004CB400FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659001932;
	bh=h9I19q9oDpD/wV4Jvm3dJtsUjxFAnjh78FoDYrFmoGo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aiexsBAQxp1XlR5iiGMj3+c1ziPcW8FlwrYU78QYPn3mxcHAhm390bXKfFDUHFWmG
	 lJSLRZFho+U12vwqEYzSt6CS5waEuatdv1tG2Pwqzg18642Dc+vRBHkBB02d/r4Ncg
	 o8A/PaMRZyv45wbbJeMbpXlrM2Zx52t48uH6GFIectHiKzBEOUTvGXrkA/Rk8zXkTK
	 b94AorfppyGLf8FCOxWh72VUg1Jm2vF9YmqmafswqC2YDtjufeD0+0uw3eD9az88+/
	 rqDCYBKmX6F0Y7wYpDsVSC9E+CfKuhYl//Kh3Z0ZyssqhmJL06Q/PqyU56ilLjnuM8
	 ifKkx2nVnH5vA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iCTwNCggXWjN; Thu, 28 Jul 2022 09:52:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB51940136;
	Thu, 28 Jul 2022 09:52:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB51940136
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C1D771BF41C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 09:52:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B2BF40136
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 09:52:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B2BF40136
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vwamG4fqNf80 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jul 2022 09:52:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9C93400FE
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B9C93400FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 09:52:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="268853707"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="268853707"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 02:52:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="628808946"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 28 Jul 2022 02:52:04 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 02:52:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 02:52:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 28 Jul 2022 02:52:04 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 28 Jul 2022 02:52:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S+F7HJ7EzJzgrNMvEgkeQ8Avr1vvV0eELnGc2jOHjqnL98BExK3zhqXLXVULJu6UdV/1SVmljqol4XWBXtf6BuBnXcq6twqrnUZ2TzZes5m4hAqux+20vbpebWnIZZg3uiVrlvQzpgJ3Pu11WFLqzVh5Iu2S2ip7+n2HaQELpmDjgt+axdp+H3J2GaGHKQyKDhy1Mbg4VQyXU9APFC/V3/43Vhn92Qfnjrb2l+qmuSBMxZdGTZd420uazjw43PXnKPAJAxg+ynfjoBPfBlh/X2RyWzMAD6DspNDZhV527VjIoepv8ae+GTTbnYrP6IsQ7bXDfubPON9i3cgUHsKzBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z2bZV8v1OCccZWAVS0Zu9GCi3Q5TNteplTf/gAj5Jy8=;
 b=j5IDZxaA6By3lzbJR33Sz7uD1Cg6zBaMwwmPhXfnfg/mwy/U4XeWqB9M0I9nVJkLoAzvUxONqs8QmGiG6q6cDT8d6rcUpAj6vJgoZdKv0fpEDpHnLCg5W6Jgyxu97515gb9pvFdjZ1mHwNgndjXFk+jVQ1gXaFdiez8m/osLl4o+ZBGfjthT/tUb2xZd5RZ0tu/GtNHRRzjItMRFx8yguAeULSE7lAL22BC3kDdhMUfE29B9PF9HrbnWZiU0X4G6cex7QZROto8nQ/HFYNCWUEuQWUCohlSY3MTiOknRKdmSQyscbWuVog7MRKZjDchFsMkUTXJplBRr9i3BXuZdyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM6PR11MB3644.namprd11.prod.outlook.com (2603:10b6:5:139::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.6; Thu, 28 Jul
 2022 09:52:02 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5458.025; Thu, 28 Jul 2022
 09:52:02 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 7/7] igb: convert .adjfreq to
 .adjfine
Thread-Index: AQHYnUkv0j6VId8eAkuifyXLnp3sK62TlK6w
Date: Thu, 28 Jul 2022 09:52:02 +0000
Message-ID: <BYAPR11MB336734669601237AA3123CCBFC969@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220721213001.2483596-1-jacob.e.keller@intel.com>
 <20220721213001.2483596-9-jacob.e.keller@intel.com>
In-Reply-To: <20220721213001.2483596-9-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d4fae9d9-7950-45a5-bae0-08da707ed243
x-ms-traffictypediagnostic: DM6PR11MB3644:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uYJJ9GBn0vPy3fSRbyjF/SVvGxOdIXuvX353hvny3zt0ggPtlWG6itKWmU9GjzT+XkfmAYq5keB8Om1I4Wr8y+Lm3rtO9WkFoupYbV+Sng/oCG8sljcFqYg8hsJNvWS7lPktq4M8XWvYzj0/rrDspN58prPurbBU/eiZdpczKXXOx0IRUvMeHni9kNTwTk0mhU1Ij0g/M8uu9YB9V/FxC/HKyQ0SpH54BETx+iEfD3dVI4yViQHIW3vSvbnjZ6SGDeq6QWSA5G6nn0HPQBoAgHGm7Tp5eOITxf2rGKbip9HyB9atLNZ+0EHhnr9ayZfLiv/G2AB786KfhCn+J8+mQCeQLioIZB+G6ykKJHQywMY4ucK3J6Je9g0QNI5Md2jempiUscpPaZW9sO3QmEY5VQlr6GfzrOfnMeleqQ5in6XO1WH3L7zTfqzoKeyoWUnuxt5vDAzTbjeYxas6TkfQ9FsEEp/TrgX/G/0zQybWMMpVa4a6Mu0Uz4lqH9SRl8l43APwAu/ctayj5PRZR4dG8KzvHL79Wc/5useX0ftXQY0cJkVSzBd/MOkuxg9vtv/SvOnbV0u5NIMbdCIYybNnkgBDlBBEYoTtQBsQM5+kchxOBf2XloL38N8G06VRJDwz3GwFLV94YTQkkIbZ/pa0jiS2xnF6YY/cVHTNGIGRVgdpc/Zo5rmP8aMvQqrEE0WU65AysJrHI2C+SR32T2//8VUhY6dWLbTGQOEEOivtv9X7x5aq2pl4bOOSO/WBoQ2FDgyY3i92CTrkM1R5jVQ9pv1bSj4OPWAr2E9b/RFhrCmeCLeVDIce4UWmomqFnDGRQKCEbPNDw+3nqsn5nXadcEho2ER8r8voRPolXAl2ENvXHMOrY4gkuZFEbRari1gw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(136003)(346002)(396003)(376002)(55016003)(478600001)(66946007)(8676002)(71200400001)(76116006)(52536014)(66446008)(8936002)(83380400001)(66476007)(66556008)(64756008)(5660300002)(110136005)(316002)(2906002)(33656002)(7696005)(41300700001)(186003)(86362001)(53546011)(26005)(38070700005)(82960400001)(122000001)(6506007)(38100700002)(9686003)(142923001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9nWzf3A8lTBEAPZjdHaDpdo6NqqeQKpSj3RZ4rRt4qXSi+35yeC5t9whYRgl?=
 =?us-ascii?Q?NaGtBzaYrZz3o2ohTtPj0vzpp04Ax8lkHsdLH96Dq6a5taEEsIumjvCV4UN2?=
 =?us-ascii?Q?QqOkRj1eT/UTeYTY5uesJeoYgLiwXkdnRznXdDOZRWmYD48VmtOl77Rc/sZs?=
 =?us-ascii?Q?WGvBHFn1TYPp9V3NAp6Q4eS5m6zv0NWYw+smiuwV1uCI3m1miYjrsEbd5XKk?=
 =?us-ascii?Q?zsq70BaDuAhMF0T9WbLD69Cn8YTsYX+iz6ofMLMCCrBZcenWIh9ZhcKSRZft?=
 =?us-ascii?Q?qD6m+oTq+y3Q4WpOvUMSv9pyy2T4FRNDnXEfw/Fw7qa+ujh6e8BCkLx/SBVp?=
 =?us-ascii?Q?Lk14V1IL6KsuWTzFQuIV7qUE8jpPm5eijtT7UJMKQSoVJF/2mT6g0n970pjJ?=
 =?us-ascii?Q?0+yy4OUY9urCsD9aXv/9j+X5AGRDZGflNPVOT6901LhZVFl8IMaboQWabocH?=
 =?us-ascii?Q?K9ik6sXymwZbxYZhOObgn3kjmvWQIMiPZ2Mmr/413toDpGDLQg1jrIfVqf1y?=
 =?us-ascii?Q?OdRzgxxOPY7OG9lLGRFzza0f5ZgIX+DKpciR98Quc475JD7RFVA5rxV3Pkvg?=
 =?us-ascii?Q?wNUm+EdFDQl62JJIl7eKMhvk6ldIq/B0ob/XzV4fggjA+PGtYa8PmNeAQRGx?=
 =?us-ascii?Q?LJcWILY8QnkNe1GLBs9R5k2ARx8YyhEmnEDjtxHx1skmoiUch1LXDSsPW9Sb?=
 =?us-ascii?Q?7z1g1GM3U5Zc//adopfT3WzbGHHu3NWgq7VTrCPIFw5erc/qDwnG9cJ18Jga?=
 =?us-ascii?Q?G0DojmC4LQVXNmNEeuzsMHVrKH89LMj78+H3A0hMj9qGwPD2rWVPtA9C9Lm/?=
 =?us-ascii?Q?XKGVsy8w37U846I9MENifkHZLeeBU6j6531LV+99AWuRGDP+6yq3KbZmeatw?=
 =?us-ascii?Q?0qKPggG9JNzrA8n7D/tpUIw9XKuaZqSgkubQtUceG41OqGFUf2ZGjo0aM+GP?=
 =?us-ascii?Q?TlVvwrVvYrkbu3egfFmXeVWmXTC9CUATBm5FOpafbSJfExAuXUFbk9S6vZh9?=
 =?us-ascii?Q?zxrs9rmOst3e5pLGqdFG5fYAHBpZlwQzSLXcyprmocLLbD+xBZoaj0GD2tVM?=
 =?us-ascii?Q?hCmxVYEFiJjtPITnVhFUSV1cdHi1buX3QrMamZbEqZi3ZYC/i4/dU0Ilj+wq?=
 =?us-ascii?Q?Mu323T5QPkHzqUX8KLdcIWBuuezMWIgxVr4s6bpg2TPo8ZlNWSLXtVGIObjs?=
 =?us-ascii?Q?C0aM3mLzdKRLzFmAyv0zQzgWBymjmo06cSf9lYAqE062bpGrVxvjldByO2pI?=
 =?us-ascii?Q?xIyVkEmWU2rPEKRbX+Dz4kSR+LjcObYGYvIJozZt5ocb/qnBDfmC1vTUgfgr?=
 =?us-ascii?Q?c5YksXtCqADCuGL6zx41TnMtsd3Y8X+4OTaREzjO36QIF2AOp2RPVb1dLy6F?=
 =?us-ascii?Q?8sRTXDId16vc/OKeyO9eXWyduFx2Y49Q8KdXtmcRbdeqZwBUKWvewFr95bth?=
 =?us-ascii?Q?d5KQNwrnppXBEwjcHaJP9aN9yP9QoTwwIbKq0jF37Itqa2jh7rK+a0eqclOD?=
 =?us-ascii?Q?mbfxZujMRETV8iyaH9pXII1WEmsvznM5i+J2Dn+X1PFZllEN1lXNewqLvqPC?=
 =?us-ascii?Q?c7Gz67cWvi1NxWM8hZ+M3eMpnbF8kKn12PDCB+VX?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4fae9d9-7950-45a5-bae0-08da707ed243
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2022 09:52:02.2034 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JkNktr84KnYCKRVJmp6M7/CYMJr0zKsc2bhpS/uAhp3K3qRZlu8RZwSuxQC/B/Cb/cPT9PukBL9VqluNuUi4IQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3644
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659001925; x=1690537925;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EePhM/tap8VWj90h7T15hU7StLwwkIR9HY0+GaIlnfs=;
 b=PU8m2W/aT29LFC2241q7onl7OorQm2FgrMB5Mu10Fe/JUvdHcNGYw9aM
 eRawCx3Y+f7xZwINrKUtj9Rn1x6pLt0b5Dkep3v50ORzRNUtgfxOebnMo
 y3jrDbTiyeS6kBdFLmYjEZ50zKVZIN1lE96bNRlsY9G7qrvKuS8IT9wnh
 bcNjxCcR4LI2hAA5zIPeqOdC9pIWAMpUhsQjVURMG7NSrMS7XSiFO659n
 PAXdAU2QhEdQN7tK1ioDINNwrsJG3CvLzNleH5GKaqqHfGoVIdoIW+puR
 zPpKNvgryl2hljcARMCqfyAXcTRc50Uzbr3qabJGeju34/ARm4rtFRp74
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PU8m2W/a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next PATCH 7/7] igb: convert .adjfreq to
 .adjfine
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Friday, July 22, 2022 3:00 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 7/7] igb: convert .adjfreq to
> .adjfine
> 
> The 82576 PTP implementation still uses .adjfreq instead of using the newer
> .adjfine.
> 
> This implementation uses a pre-simplified calculation since the base
> increment value for the 82576 is just 16 * 2^19. Converting this into
> scaled_ppm is tricky, and makes the intent a bit less clear.
> 
> Simply convert to the normal flow of multiplying the base increment value by
> the scaled_ppm and then dividing by 1000000ULL << 16. This can be
> implemented using mul_u64_u64_div_u64 which can avoid the possible
> overflow that might occur for large adjustments.
> 
> Use of .adjfine can improve the precision of small adjustments and gets us
> one driver closer to removing the old implementation from the kernel
> entirely.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ptp.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
