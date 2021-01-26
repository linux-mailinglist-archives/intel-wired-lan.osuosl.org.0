Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0AF3043E2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jan 2021 17:33:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7DB1F86770;
	Tue, 26 Jan 2021 16:33:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cSnsL8oFZaai; Tue, 26 Jan 2021 16:33:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4137A86763;
	Tue, 26 Jan 2021 16:33:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FEE51BF349
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 16:33:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0102B20463
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 16:33:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y+Ub4Mei21Ve for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jan 2021 16:33:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id C98792045B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 16:33:21 +0000 (UTC)
IronPort-SDR: V7MNZMFy/rA+zk8TKGPLN0r3+rluQUx0IPdUPtun7D39+14uvpReI0+8ZBPoKa8ONloJNV3CvB
 zTSGnA6+hnUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="159105534"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="159105534"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 08:33:20 -0800
IronPort-SDR: GEtfr67EeV2a4DTHBJ0lGfLWdg7Z1Aoj0sgTeeNk4YlHNqMCA0m8i58z3QEoajykT509FvV9g4
 snW/FY8gJvPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="387884441"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 26 Jan 2021 08:33:20 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 26 Jan 2021 08:33:19 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 26 Jan 2021 08:33:19 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 26 Jan 2021 08:33:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xxme48JobLCMT/RTGcQxJY67LfnSqL/9nSxB9Q+Xnj/psxiZ9hz+30B++F/07eBXOjK2TXL9JsU7aUFC/ZJvuOGafsnnC3k7TyjbViYC5YaJpxEz6pJMU7FK+ONEnLCD5oso3Vy25bVX7uOj3syuxOo2c5It1Ikel3Gxz2aM9zoZ6ew/aOomJUEqeWm+ia6kuxQx+LItNME8o5hf7HyFgdEi5LN26NoP4jVN1Gv8P6G2kSFv314oZMrYdZTHxXF7FSYHodI7dLkb2NB0I+40H3x/MsW9CpcU4EtBUDgavZjnyFW2BhCe3WfJ3k7K/7YuMYcAs5AJO7X9bRS870aIKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iMRuUsGXNTjgrCpnXH6YXWBvhPttrHCY5SnzDIfnEsI=;
 b=ajTOUi55pfmK3IOfKJjIImWqPPf4QhahhPXT3OzlcEiTT/YzlPWkpOATV9kWp5+nS17dt9iK5t4zVGUWuutxRv1Q67P6C5tVZyYTTDEoQiDRAi1o4XHcN38W7lEDp+6w1fwB5zVWomNbNNLnuthbGy5j60hIrmO5qcP5NK8jUKfOQY0nMXg7leGE3fdLvJE7CUVb1ZzjKYH/LrGgOEVPKvuEIpOSdW60RCqJXHmv3980AtTOno1rU4+w6/bCIsaext5rAAytN5YFCwhTsmYE8shkNvwpVzMy+oSncIUGJ++t2gilpkkMTmMAKVsXrBlIN1mkK3kZqmVgj6mUVr4rCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iMRuUsGXNTjgrCpnXH6YXWBvhPttrHCY5SnzDIfnEsI=;
 b=H5K3SrWFavVWbSiKDHqFbs7CndoVqyN6utiBExyHwiTa/5hgjdrSLI0l4uyYiPwKBxQO4qWAb7bLqPVIfKpUot56mvdra2//6Al5oYDDP3wXsu1r8r1XlnU/PNpb8vp3oSYf/4CdruZLCtsBqSHquUmXOMJ6ZKeMaO48Y1T9/bI=
Received: from SN6PR11MB3182.namprd11.prod.outlook.com (2603:10b6:805:bf::30)
 by SN6PR11MB2672.namprd11.prod.outlook.com (2603:10b6:805:58::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.16; Tue, 26 Jan
 2021 16:33:14 +0000
Received: from SN6PR11MB3182.namprd11.prod.outlook.com
 ([fe80::588e:ec6a:8d62:3c60]) by SN6PR11MB3182.namprd11.prod.outlook.com
 ([fe80::588e:ec6a:8d62:3c60%3]) with mapi id 15.20.3784.016; Tue, 26 Jan 2021
 16:33:14 +0000
From: "Creeley, Brett" <brett.creeley@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [RFC 16/20] iavf: Add framework to enable
 ethtool ntuple filters
Thread-Index: AQHWwix/9wRwax/J2Ee+5Ir/VkVGpqo6KKYwgAA+VOCAABR+AA==
Date: Tue, 26 Jan 2021 16:33:14 +0000
Message-ID: <978c31c76a71092d48e8c286f6f6d43db2389874.camel@intel.com>
References: <20201124062410.6824-1-haiyue.wang@intel.com>
 <20201124062410.6824-17-haiyue.wang@intel.com>
 <DM5PR11MB17054DF9D34224A5483FDF0999BC9@DM5PR11MB1705.namprd11.prod.outlook.com>
 <DM6PR11MB28768580D8E157F0E1C7B703E5BC9@DM6PR11MB2876.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB28768580D8E157F0E1C7B703E5BC9@DM6PR11MB2876.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.207]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8365cbb1-82a3-4bf1-f059-08d8c218141b
x-ms-traffictypediagnostic: SN6PR11MB2672:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB26722267232C35D8756016BAF5BC9@SN6PR11MB2672.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nYlvs51FUBcHuZDO5GLqFc3hf32+kuqFVr3pBJfzvME4QPAxo0SuXOY1F+FzsSO+uDgl5nMRcbiKnmAvPs8H9yHGS0aNPTQkQaN+Kw46t1JJR3IhrO1aGqzWo7Ah0mArkueVVg5SnKccpww4mj7ginJUBcmS7oKAEFQuUVJxMJVeiuB0qEWievhRAjGxnVrLJeg6kyqy1bygcoj11DHn/y8bmLvmCi8VrZqlC5tb9sHHi4j1W2U3IOv4hmkOTbaO5rLW1iU6eOjsd3wGtRXJZu9Dt6miFK9n0r+TjJNRxpuMym/hHv6Qemg1qPQQPYlx8qo/uAJVOrywL/n8l4aGlfs2mJzU0XBvxY9jYMwHBeSVWCYcn8m6VdmyX9mLn6O03wD8aQbtfJ+vmHMFFfZ8/bKyGo51v1ACtI0Y+IUVrsqPddx4ExqtUBil6H3LFrIu+RIaRcf+d23qZjgiP1mhiz1RMCwD/7sMF4mx3hRd/DB7TxDNKd7uphD762xsGLVoXUZebGLL0jh9sYVV0mWirnPdjpQ1cqoyAuGPkIEhnHhAc5JKt+YtmSRsWWAennYaLDEt0BKNGdHXLoKfd/zNfqbi1rr3alCR8XbW05/gy1U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(376002)(136003)(366004)(396003)(36756003)(30864003)(86362001)(316002)(186003)(91956017)(6512007)(71200400001)(6486002)(6636002)(26005)(6862004)(8936002)(2616005)(966005)(76116006)(66476007)(6506007)(64756008)(66946007)(54906003)(478600001)(66446008)(83380400001)(37006003)(8676002)(5660300002)(66556008)(53546011)(4326008)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?VDJ4L1pmMlBPa2xseDhoZE1PS0xYWVU2c0J6NStmM0RDdmJsblhNVTZPSEdw?=
 =?utf-8?B?SEhXTjJmODErUkY3UXR4cXhQbUxGYVcybU9JTTRqa1RRZTFhVHEwVDVqb29m?=
 =?utf-8?B?MWZOOUxQQWJSYlVwTjJZNm9kSHdOYVA2d1dtNGNDTEFsTmVxVDVjS2dWZHdz?=
 =?utf-8?B?V2NIZmsrKzI5Z3BlY3NKOXN0OW9kUVJEc1lpa0luQ1laa0wwdVg3NGxZbVZl?=
 =?utf-8?B?bW9TNWFEakMvT1dacUgzZ2tKSG5yMXgyT1ZPZUdHNWZiY0ZJM1FwRnB1OHNR?=
 =?utf-8?B?c2d6d1BBMTlMdHBhK01OR1c3ZlJ1K2dyditsRHpUMnBJUHZDUnR4Vk1ROFJr?=
 =?utf-8?B?MWJpTWFTRGdiVDIwYXpOQjlVb0lWQ1gwNnBnYmJpcmdhQWM4OHFWZzZXWVNI?=
 =?utf-8?B?TjNSaHFPdjYxM0VMdTBXSGE5MGJFNGVIZDZjRWFsTVI1eHVNOG5lcHNIdmFS?=
 =?utf-8?B?MGxuUWVleGVTSEIvMC9PYzExQ0tqTUczSThZUGgrK0FvOUhodFlvRTZoUDBT?=
 =?utf-8?B?ZS91MGF6RkNqNE1ObnZrSHJoeW1NeWN6Ym9TUEdsczFWUEFMcld3a3U1L295?=
 =?utf-8?B?aW9OTGE3SzNvcGg4dUw5YmRRZVVtbFhDbEJsNXpDblFYN005N00zQU1JcU43?=
 =?utf-8?B?NUxRT3ExdnZuZ0NjOC9KMGdxSEI4WXUyVzNvTFg3OFlHSFpwZHNiaTNDRzgy?=
 =?utf-8?B?ZDBGZkpWUGZzTERZU1JqSzNEUXcrTVZwdW01MlR0U1JsUDdBcEdwajRNYTdo?=
 =?utf-8?B?c29nNzlaMlZZbFBlZjQ0VmJBUlFPU1lObFluMUQ4VytNQXM2aWwwdm9CeGVr?=
 =?utf-8?B?REdGNytldGowd0VwNzVVTisrYk5MbFVyUk9SVUFLVzA2Q3pHNG04ZUhEY1U0?=
 =?utf-8?B?TGF0d3Vtd0dzT01udHpMWlBSYWZVNDU4QkVWNVpVRys0cjZUSFZwaEZuYkpv?=
 =?utf-8?B?bVhtY0RMUlZKOC9jcXJvckZnMXZjejRFSUMzYm5jSzE5aEIwVHFFVWZqVDVE?=
 =?utf-8?B?Y3BtWlJDZFl5N05aWXFSQlhKbUFBd09aWjZ2MWlJSTBISmJ5R1lYSXhKSm5J?=
 =?utf-8?B?VVl2dnFyWGNyNitLeGhCdDNKTlNTREpwT29jK09CUFU2TWtOKzNuenlDaXpL?=
 =?utf-8?B?clZvdXNuNGpvTHVGZXVJVlNPMThOaXJBSnBoLzZJWnFUM2xkTHM2bm1FV0c4?=
 =?utf-8?B?dzROeTVWa2tJbklDUG9oeDBqRjZxVkFkSzlOWFZhNWNwZXRGRUoyTGIzQXp3?=
 =?utf-8?B?NWtyNEd2dVdzRUdQZ1pDUGs5dkJsa1lTeUwvbGdFaUtSY2tUd0VSd3lFU2Ey?=
 =?utf-8?B?d3F2UUpkdGFYVEt3dy95UWdrYmN3WlduT2ppRGNGdjlyaFIvMHFjZTRoajky?=
 =?utf-8?B?eC84bGdkQUhqdC9sNHNrdUt6eGlnYTNaM2J3L21IeXVyL3ZJcWMrLzE2Tncv?=
 =?utf-8?B?Q0QvUmcyZlhtdVQxZFZ6WmFRR1pSQVBsYUJoTytRPT0=?=
Content-ID: <3093887392E6D245BD5D85D13668E5AA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8365cbb1-82a3-4bf1-f059-08d8c218141b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2021 16:33:14.3275 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MXO0sbc5KEW2a4l0ncLfedWr0NCdLLR33DQDOxQ/34qW2naYBht9wHxg17gZxA+KytI7teJtkPaQIJ1+bW8nUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2672
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [RFC 16/20] iavf: Add framework to enable
 ethtool ntuple filters
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I'm fine with the flags updating, but it does look a little strange to
just skip bits for no apparent reason, i.e. if the patches Jan is
talking about aren't actually in the pipeline.

Brett

On Tue, 2021-01-26 at 15:12 +0000, Loktionov, Aleksandr wrote:
> +Brett
> 
> -----Original Message-----
> From: Sokolowski, Jan <jan.sokolowski@intel.com> 
> Sent: Tuesday, January 26, 2021 12:31 PM
> To: Wang, Haiyue <haiyue.wang@intel.com>; 
> intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Zhang, Qi Z <
> qi.z.zhang@intel.com>; kuba@kernel.org; davem@davemloft.net;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: RE: [Intel-wired-lan] [RFC 16/20] iavf: Add framework to
> enable ethtool ntuple filters
> 
> Would it be possible to move these new flags to bits 35 and 36?
> Currently OOT uses bits up to 34, and as the changes are being
> prepared for upstreaming, there might be a conflict there.
> 
> Jan
> 
> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Haiyue Wang
> Sent: Tuesday, November 24, 2020 7:24 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Zhang, Qi Z <
> qi.z.zhang@intel.com>; kuba@kernel.org; davem@davemloft.net
> Subject: [Intel-wired-lan] [RFC 16/20] iavf: Add framework to enable
> ethtool ntuple filters
> 
> Enable ethtool ntuple filter support on the VF driver using the
> virtchnl interface to the PF driver and the Flow director
> functionality in the hardware.
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  12 ++
>  drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  33 ++++
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  27 +++
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 187
> ++++++++++++++++++
>  4 files changed, 259 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/iavf/iavf_fdir.h
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 8a65525a7c0d..bda2a900df8e 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -37,6 +37,7 @@
>  #include "iavf_type.h"
>  #include <linux/avf/virtchnl.h>
>  #include "iavf_txrx.h"
> +#include "iavf_fdir.h"
>  
>  #define DEFAULT_DEBUG_LEVEL_SHIFT 3
>  #define PFX "iavf: "
> @@ -300,6 +301,8 @@ struct iavf_adapter {
>  #define IAVF_FLAG_AQ_DISABLE_CHANNELS		BIT(22)
>  #define IAVF_FLAG_AQ_ADD_CLOUD_FILTER		BIT(23)
>  #define IAVF_FLAG_AQ_DEL_CLOUD_FILTER		BIT(24)
> +#define IAVF_FLAG_AQ_ADD_FDIR_FILTER		BIT(25)
> +#define IAVF_FLAG_AQ_DEL_FDIR_FILTER		BIT(26)
>  
>  	/* OS defined structs */
>  	struct net_device *netdev;
> @@ -340,6 +343,8 @@ struct iavf_adapter {
>  			  VIRTCHNL_VF_OFFLOAD_VLAN)
>  #define ADV_LINK_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
>  			      VIRTCHNL_VF_CAP_ADV_LINK_SPEED)
> +#define FDIR_FLTR_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
> +			       VIRTCHNL_VF_OFFLOAD_FDIR_PF)
>  	struct virtchnl_vf_resource *vf_res; /* incl. all VSIs */
>  	struct virtchnl_vsi_resource *vsi_res; /* our LAN VSI */
>  	struct virtchnl_version_info pf_version; @@ -362,6 +367,11 @@
> struct iavf_adapter {
>  	/* lock to protect access to the cloud filter list */
>  	spinlock_t cloud_filter_list_lock;
>  	u16 num_cloud_filters;
> +
> +#define IAVF_MAX_FDIR_FILTERS 128	/* max allowed Flow Director
> filters */
> +	u16 fdir_active_fltr;
> +	struct list_head fdir_list_head;
> +	spinlock_t fdir_fltr_lock;	/* protect the Flow Director
> filter list */
>  };
>  
>  
> @@ -432,6 +442,8 @@ void iavf_enable_channels(struct iavf_adapter
> *adapter);  void iavf_disable_channels(struct iavf_adapter
> *adapter);  void iavf_add_cloud_filter(struct iavf_adapter
> *adapter);  void iavf_del_cloud_filter(struct iavf_adapter *adapter);
> +void iavf_add_fdir_filter(struct iavf_adapter *adapter); void 
> +iavf_del_fdir_filter(struct iavf_adapter *adapter);
>  struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter
> *adapter,
>  					const u8 *macaddr);
>  #endif /* _IAVF_H_ */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.h
> b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
> new file mode 100644
> index 000000000000..429bc025d45a
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
> @@ -0,0 +1,33 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (c) 2020, Intel Corporation. */
> +
> +#ifndef _IAVF_FDIR_H_
> +#define _IAVF_FDIR_H_
> +
> +struct iavf_adapter;
> +
> +/* State of Flow Director filter */
> +enum iavf_fdir_fltr_state_t {
> +	IAVF_FDIR_FLTR_ADD_REQUEST,	/* User requests to add Flow
> Director filter */
> +	IAVF_FDIR_FLTR_ADD_PENDING,	/* Flow Director filter
> pending add by the PF */
> +	IAVF_FDIR_FLTR_DEL_REQUEST,	/* User requests to delete
> Flow Director filter */
> +	IAVF_FDIR_FLTR_DEL_PENDING,	/* Flow Director filter
> pending delete by the PF */
> +	IAVF_FDIR_FLTR_ACTIVE,		/* Flow Director filter is
> active */
> +};
> +
> +/* bookkeeping of Flow Director filters */ struct iavf_fdir_fltr {
> +	enum iavf_fdir_fltr_state_t state;
> +	struct list_head list;
> +
> +	u32 flow_id;
> +
> +	struct virtchnl_fdir_add vc_add_msg;
> +};
> +
> +int iavf_fill_fdir_add_msg(struct iavf_adapter *adapter, struct 
> +iavf_fdir_fltr *fltr); void iavf_print_fdir_fltr(struct
> iavf_adapter 
> +*adapter, struct iavf_fdir_fltr *fltr); bool 
> +iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct 
> +iavf_fdir_fltr *fltr); void iavf_fdir_list_add_fltr(struct
> iavf_adapter 
> +*adapter, struct iavf_fdir_fltr *fltr); struct iavf_fdir_fltr 
> +*iavf_find_fdir_fltr_by_loc(struct iavf_adapter *adapter, u32 loc); 
> +#endif /* _IAVF_FDIR_H_ */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 814e59bf2c94..d9f9085421df 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -958,6 +958,7 @@ static void iavf_up_complete(struct iavf_adapter
> *adapter)  void iavf_down(struct iavf_adapter *adapter)  {
>  	struct net_device *netdev = adapter->netdev;
> +	struct iavf_fdir_fltr *fdir;
>  	struct iavf_vlan_filter *vlf;
>  	struct iavf_mac_filter *f;
>  	struct iavf_cloud_filter *cf;
> @@ -996,6 +997,13 @@ void iavf_down(struct iavf_adapter *adapter)
>  	}
>  	spin_unlock_bh(&adapter->cloud_filter_list_lock);
>  
> +	/* remove all Flow Director filters */
> +	spin_lock_bh(&adapter->fdir_fltr_lock);
> +	list_for_each_entry(fdir, &adapter->fdir_list_head, list) {
> +		fdir->state = IAVF_FDIR_FLTR_DEL_REQUEST;
> +	}
> +	spin_unlock_bh(&adapter->fdir_fltr_lock);
> +
>  	if (!(adapter->flags & IAVF_FLAG_PF_COMMS_FAILED) &&
>  	    adapter->state != __IAVF_RESETTING) {
>  		/* cancel any current operation */
> @@ -1007,6 +1015,7 @@ void iavf_down(struct iavf_adapter *adapter)
>  		adapter->aq_required = IAVF_FLAG_AQ_DEL_MAC_FILTER;
>  		adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
>  		adapter->aq_required |= IAVF_FLAG_AQ_DEL_CLOUD_FILTER;
> +		adapter->aq_required |= IAVF_FLAG_AQ_DEL_FDIR_FILTER;
>  		adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
>  	}
>  
> @@ -1629,6 +1638,14 @@ static int iavf_process_aq_command(struct
> iavf_adapter *adapter)
>  		iavf_add_cloud_filter(adapter);
>  		return 0;
>  	}
> +	if (adapter->aq_required & IAVF_FLAG_AQ_ADD_FDIR_FILTER) {
> +		iavf_add_fdir_filter(adapter);
> +		return IAVF_SUCCESS;
> +	}
> +	if (adapter->aq_required & IAVF_FLAG_AQ_DEL_FDIR_FILTER) {
> +		iavf_del_fdir_filter(adapter);
> +		return IAVF_SUCCESS;
> +	}
>  	return -EAGAIN;
>  }
>  
> @@ -3739,10 +3756,12 @@ static int iavf_probe(struct pci_dev *pdev,
> const struct pci_device_id *ent)
>  
>  	spin_lock_init(&adapter->mac_vlan_list_lock);
>  	spin_lock_init(&adapter->cloud_filter_list_lock);
> +	spin_lock_init(&adapter->fdir_fltr_lock);
>  
>  	INIT_LIST_HEAD(&adapter->mac_filter_list);
>  	INIT_LIST_HEAD(&adapter->vlan_filter_list);
>  	INIT_LIST_HEAD(&adapter->cloud_filter_list);
> +	INIT_LIST_HEAD(&adapter->fdir_list_head);
>  
>  	INIT_WORK(&adapter->reset_task, iavf_reset_task);
>  	INIT_WORK(&adapter->adminq_task, iavf_adminq_task); @@ -3846,6
> +3865,7 @@ static void iavf_remove(struct pci_dev *pdev)  {
>  	struct net_device *netdev = pci_get_drvdata(pdev);
>  	struct iavf_adapter *adapter = netdev_priv(netdev);
> +	struct iavf_fdir_fltr *fdir, *fdirtmp;
>  	struct iavf_vlan_filter *vlf, *vlftmp;
>  	struct iavf_mac_filter *f, *ftmp;
>  	struct iavf_cloud_filter *cf, *cftmp;
> @@ -3927,6 +3947,13 @@ static void iavf_remove(struct pci_dev *pdev)
>  	}
>  	spin_unlock_bh(&adapter->cloud_filter_list_lock);
>  
> +	spin_lock_bh(&adapter->fdir_fltr_lock);
> +	list_for_each_entry_safe(fdir, fdirtmp, &adapter-
> >fdir_list_head, list) {
> +		list_del(&fdir->list);
> +		kfree(fdir);
> +	}
> +	spin_unlock_bh(&adapter->fdir_fltr_lock);
> +
>  	free_netdev(netdev);
>  
>  	pci_disable_pcie_error_reporting(pdev);
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index ed08ace4f05a..eb687081e94f 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -140,6 +140,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter
> *adapter)
>  	       VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
>  	       VIRTCHNL_VF_OFFLOAD_REQ_QUEUES |
>  	       VIRTCHNL_VF_OFFLOAD_ADQ |
> +	       VIRTCHNL_VF_OFFLOAD_FDIR_PF |
>  	       VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
>  
>  	adapter->current_op = VIRTCHNL_OP_GET_VF_RESOURCES; @@ -1197,6
> +1198,101 @@ void iavf_del_cloud_filter(struct iavf_adapter *adapter)
>  	kfree(f);
>  }
>  
> +/**
> + * iavf_add_fdir_filter
> + * @adapter: the VF adapter structure
> + *
> + * Request that the PF add Flow Director filters as specified
> + * by the user via ethtool.
> + **/
> +void iavf_add_fdir_filter(struct iavf_adapter *adapter) {
> +	struct iavf_fdir_fltr *fdir;
> +	struct virtchnl_fdir_add *f;
> +	bool process_fltr = false;
> +	int len;
> +
> +	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
> +		/* bail because we already have a command pending */
> +		dev_err(&adapter->pdev->dev, "Cannot add Flow Director
> filter, command %d pending\n",
> +			adapter->current_op);
> +		return;
> +	}
> +
> +	len = sizeof(struct virtchnl_fdir_add);
> +	f = kzalloc(len, GFP_KERNEL);
> +	if (!f)
> +		return;
> +
> +	spin_lock_bh(&adapter->fdir_fltr_lock);
> +	list_for_each_entry(fdir, &adapter->fdir_list_head, list) {
> +		if (fdir->state == IAVF_FDIR_FLTR_ADD_REQUEST) {
> +			process_fltr = true;
> +			fdir->state = IAVF_FDIR_FLTR_ADD_PENDING;
> +			memcpy(f, &fdir->vc_add_msg, len);
> +			break;
> +		}
> +	}
> +	spin_unlock_bh(&adapter->fdir_fltr_lock);
> +
> +	if (!process_fltr) {
> +		/* prevent iavf_add_fdir_filter() from being called
> when there
> +		 * are no filters to add
> +		 */
> +		adapter->aq_required &= ~IAVF_FLAG_AQ_ADD_FDIR_FILTER;
> +		kfree(f);
> +		return;
> +	}
> +	adapter->current_op = VIRTCHNL_OP_ADD_FDIR_FILTER;
> +	iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_FDIR_FILTER, (u8 *)f,
> len);
> +	kfree(f);
> +}
> +
> +/**
> + * iavf_del_fdir_filter
> + * @adapter: the VF adapter structure
> + *
> + * Request that the PF delete Flow Director filters as specified
> + * by the user via ethtool.
> + **/
> +void iavf_del_fdir_filter(struct iavf_adapter *adapter) {
> +	struct iavf_fdir_fltr *fdir;
> +	struct virtchnl_fdir_del f;
> +	bool process_fltr = false;
> +	int len;
> +
> +	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
> +		/* bail because we already have a command pending */
> +		dev_err(&adapter->pdev->dev, "Cannot remove Flow
> Director filter, command %d pending\n",
> +			adapter->current_op);
> +		return;
> +	}
> +
> +	len = sizeof(struct virtchnl_fdir_del);
> +
> +	spin_lock_bh(&adapter->fdir_fltr_lock);
> +	list_for_each_entry(fdir, &adapter->fdir_list_head, list) {
> +		if (fdir->state == IAVF_FDIR_FLTR_DEL_REQUEST) {
> +			process_fltr = true;
> +			memset(&f, 0, len);
> +			f.vsi_id = fdir->vc_add_msg.vsi_id;
> +			f.flow_id = fdir->flow_id;
> +			fdir->state = IAVF_FDIR_FLTR_DEL_PENDING;
> +			break;
> +		}
> +	}
> +	spin_unlock_bh(&adapter->fdir_fltr_lock);
> +
> +	if (!process_fltr) {
> +		adapter->aq_required &= ~IAVF_FLAG_AQ_DEL_FDIR_FILTER;
> +		return;
> +	}
> +
> +	adapter->current_op = VIRTCHNL_OP_DEL_FDIR_FILTER;
> +	iavf_send_pf_msg(adapter, VIRTCHNL_OP_DEL_FDIR_FILTER, (u8
> *)&f, len); 
> +}
> +
>  /**
>   * iavf_request_reset
>   * @adapter: adapter structure
> @@ -1357,6 +1453,49 @@ void iavf_virtchnl_completion(struct
> iavf_adapter *adapter,
>  			}
>  			}
>  			break;
> +		case VIRTCHNL_OP_ADD_FDIR_FILTER: {
> +			struct iavf_fdir_fltr *fdir, *fdir_tmp;
> +
> +			spin_lock_bh(&adapter->fdir_fltr_lock);
> +			list_for_each_entry_safe(fdir, fdir_tmp,
> +						 &adapter-
> >fdir_list_head,
> +						 list) {
> +				if (fdir->state ==
> IAVF_FDIR_FLTR_ADD_PENDING) {
> +					dev_info(&adapter->pdev->dev,
> "Failed to add Flow Director filter, error %s\n",
> +						 iavf_stat_str(&adapter
> ->hw,
> +							       v_retval
> ));
> +					if (msglen)
> +						dev_err(&adapter->pdev-
> >dev,
> +							"%s\n", msg);
> +					list_del(&fdir->list);
> +					kfree(fdir);
> +					adapter->fdir_active_fltr--;
> +				}
> +			}
> +			spin_unlock_bh(&adapter->fdir_fltr_lock);
> +			}
> +			break;
> +		case VIRTCHNL_OP_DEL_FDIR_FILTER: {
> +			struct iavf_fdir_fltr *fdir;
> +
> +			spin_lock_bh(&adapter->fdir_fltr_lock);
> +			list_for_each_entry(fdir, &adapter-
> >fdir_list_head,
> +					    list) {
> +				if (fdir->state ==
> IAVF_FDIR_FLTR_DEL_PENDING) {
> +					fdir->state =
> IAVF_FDIR_FLTR_ACTIVE;
> +					dev_info(&adapter->pdev->dev,
> "Failed to del Flow Director filter, error %s\n",
> +						 iavf_stat_str(&adapter
> ->hw,
> +							       v_retval
> ));
> +				}
> +			}
> +			spin_unlock_bh(&adapter->fdir_fltr_lock);
> +			}
> +			break;
> +		case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
> +		case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
> +			dev_warn(&adapter->pdev->dev,
> +				 "Changing VLAN Stripping is not
> allowed when Port VLAN is configured\n");
> +			break;
>  		default:
>  			dev_err(&adapter->pdev->dev, "PF returned error
> %d (%s) to our request %d\n",
>  				v_retval, iavf_stat_str(&adapter->hw,
> v_retval), @@ -1490,6 +1629,54 @@ void
> iavf_virtchnl_completion(struct iavf_adapter *adapter,
>  		}
>  		}
>  		break;
> +	case VIRTCHNL_OP_ADD_FDIR_FILTER: {
> +		struct virtchnl_fdir_add *add_fltr = (struct
> virtchnl_fdir_add *)msg;
> +		struct iavf_fdir_fltr *fdir, *fdir_tmp;
> +
> +		spin_lock_bh(&adapter->fdir_fltr_lock);
> +		list_for_each_entry_safe(fdir, fdir_tmp,
> +					 &adapter->fdir_list_head,
> +					 list) {
> +			if (fdir->state == IAVF_FDIR_FLTR_ADD_PENDING)
> {
> +				if (add_fltr->status ==
> VIRTCHNL_FDIR_SUCCESS) {
> +					fdir->state =
> IAVF_FDIR_FLTR_ACTIVE;
> +					fdir->flow_id = add_fltr-
> >flow_id;
> +				} else {
> +					dev_info(&adapter->pdev->dev,
> +						 "Failed to add Flow
> Director filter with status : %d\n",
> +						 add_fltr->status);
> +					list_del(&fdir->list);
> +					kfree(fdir);
> +					adapter->fdir_active_fltr--;
> +				}
> +			}
> +		}
> +		spin_unlock_bh(&adapter->fdir_fltr_lock);
> +		}
> +		break;
> +	case VIRTCHNL_OP_DEL_FDIR_FILTER: {
> +		struct virtchnl_fdir_del *del_fltr = (struct
> virtchnl_fdir_del *)msg;
> +		struct iavf_fdir_fltr *fdir, *fdir_tmp;
> +
> +		spin_lock_bh(&adapter->fdir_fltr_lock);
> +		list_for_each_entry_safe(fdir, fdir_tmp, &adapter-
> >fdir_list_head,
> +					 list) {
> +			if (fdir->state == IAVF_FDIR_FLTR_DEL_PENDING)
> {
> +				if (del_fltr->status ==
> VIRTCHNL_FDIR_SUCCESS) {
> +					list_del(&fdir->list);
> +					kfree(fdir);
> +					adapter->fdir_active_fltr--;
> +				} else {
> +					fdir->state =
> IAVF_FDIR_FLTR_ACTIVE;
> +					dev_info(&adapter->pdev->dev,
> +						 "Failed to delete Flow
> Director filter with status : %d\n",
> +						 del_fltr->status);
> +				}
> +			}
> +		}
> +		spin_unlock_bh(&adapter->fdir_fltr_lock);
> +		}
> +		break;
>  	default:
>  		if (adapter->current_op && (v_opcode != adapter-
> >current_op))
>  			dev_warn(&adapter->pdev->dev, "Expected
> response %d from PF, received %d\n",
> --
> 2.29.2
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
