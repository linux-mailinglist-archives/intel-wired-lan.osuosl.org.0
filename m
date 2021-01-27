Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9DC304E20
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jan 2021 02:01:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D0D38522B;
	Wed, 27 Jan 2021 01:01:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uk_j9if_D9AC; Wed, 27 Jan 2021 01:01:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE5488563A;
	Wed, 27 Jan 2021 01:01:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E7B7A1BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 01:01:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E18768508E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 01:01:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pu_Nay4EMJKs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jan 2021 01:01:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 258238563A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 01:01:03 +0000 (UTC)
IronPort-SDR: MABfJFCwhn7IgxqLwOBufAPV4xzdPkMNTuw0lHZkgIyEl1J9rwLNnMV7pOu9ovwv/pAc3SbpvA
 28/zYSpWMNrw==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="180143252"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="180143252"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 17:01:01 -0800
IronPort-SDR: yXqt8quSHPKL/FAJSRHo0gr8aw6/CvKnwOO2MMs+I3K7WQ7TQWsvcgKedZb7Ib4A8VMbsBxaxx
 6+oCmGF/0zOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="504717722"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga004.jf.intel.com with ESMTP; 26 Jan 2021 17:01:00 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 26 Jan 2021 17:00:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 26 Jan 2021 17:00:59 -0800
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.53) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 26 Jan 2021 17:00:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OVG6f99pIHbapFpn7Q9Wl4elHLtTPFxz+meQbKTj3rmCC1xDuJ7PrwaIr8n38nCQzj9shRpwvTeU6upz2ytRof/6mHc1QAXxR0wzKwkM0ZvaAc/0LZUq1gH4FZmBP4V+HN9ETO/avJxs44uJRXXzotiuYl6vJ6ApMp4sK49MH8IJVoKATs/buyp6xwfTIqEmDMV1Aa6KReeNrbjzsJMilf6lmXn2NN/iv6IdrR0B9FOgkQXNFcKdpnPA5EA2rJUeajOs+eXuH/NAowTF+cALnOy2FtfkTvQrXmG6b5t3WT4IxToqRZakC8uQLyPhIEvqmwmeoT0pxA6pYtJIwDg9iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AIwK/ezTvmKHN5CXZVYTEuoBw7OtjsJeaOYSSW+EYbQ=;
 b=fWbLvUcCba/E/B1AP9dRJhM/aGlQ+LhIBCFSu994pslSKT2kFqTAwIUp16HI+SkgfXGUlkBC51A/3vow9yCAhlVBBlSZKXR39zR3UScV5aJPdkGTxn2xAjP527iw6QJiBajnHQtB/D1Nqzau8GrxQGC+8UnLT6sM9dYyBbbNErIo/E2dKz6hDBLiFcqH7Q7izM7kSMOApMuvWBeKTIQa4AE28lOke0m8rNiBZm5b1Jf6lE12mtBdAqicPruYCEIIXXCVsgaRVUw7u2wauWMfpRGUgmz4HYdUSwi7Wea/+O2WgUdJRQPnJ0jQpisIhASmkdxA6QfjY+iVHmPdPkOu4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AIwK/ezTvmKHN5CXZVYTEuoBw7OtjsJeaOYSSW+EYbQ=;
 b=S2kMSJNCUP5KZv47AQ/l7cQXfnH9SxBZ8Ti6YxUbV4py4pTXImghtkjYt/jMEFE1EP7CzUraaHIhvXoFI+X+ytKJ4nU/V/EdGk85rlqoW8LqtAlG7/BBKOawMD79NsU4rFiZN9GOI/4jM3pcQlIZhwtC5s5SfzQkBHlJr2QOKSs=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN6PR11MB1588.namprd11.prod.outlook.com (2603:10b6:405:e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.16; Wed, 27 Jan
 2021 01:00:42 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::b50a:60a1:8190:c67f]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::b50a:60a1:8190:c67f%6]) with mapi id 15.20.3784.017; Wed, 27 Jan 2021
 01:00:42 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "Creeley, Brett" <brett.creeley@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [RFC 16/20] iavf: Add framework to enable
 ethtool ntuple filters
Thread-Index: AQHWwix4cXkxL6EXxU2GGTS7lGcOwqo6KRUAgAA9/gCAABZ2AIAAjbhA
Date: Wed, 27 Jan 2021 01:00:42 +0000
Message-ID: <BN8PR11MB379530C6E9EE7F4A545C5406F7BB9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20201124062410.6824-1-haiyue.wang@intel.com>
 <20201124062410.6824-17-haiyue.wang@intel.com>
 <DM5PR11MB17054DF9D34224A5483FDF0999BC9@DM5PR11MB1705.namprd11.prod.outlook.com>
 <DM6PR11MB28768580D8E157F0E1C7B703E5BC9@DM6PR11MB2876.namprd11.prod.outlook.com>
 <978c31c76a71092d48e8c286f6f6d43db2389874.camel@intel.com>
In-Reply-To: <978c31c76a71092d48e8c286f6f6d43db2389874.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.37]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d992259-448d-4e6e-e9a3-08d8c25ef85e
x-ms-traffictypediagnostic: BN6PR11MB1588:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB158812F9E3DB91011F55B82DF7BB9@BN6PR11MB1588.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PR5wGfiwiEozrKdeMD1GQuFCal6wMmtOgjf4LAgVcAtwvzbZx9YIN/pdpVBfJwg0YyrA+jjDxJknVSyj909nBCxmG71KMa+g01vk7awtdX9w8ftVcQ9r01bZEpjktMJovGM3JBOfRjOEIH0by9TDK6c5GwMAugc3A4VhmTOqjKwFEDuz/a1G7ZOfcPhEqA2gEwMl/ni6bD1IJkIUE9+DoZyPY89cC+YKgHEYsKaxxMjKX3zNyAOe/AkybNy5GT7YDIbBMCD1XWRPlvKndGYt69p7ELfpYCVueZyu8BY/5n+ZVZyACku6aoV3UNx/TXOo/uqFKKbJJb9aPg2j1Ekyq9tcK1/JIwZg0wEqecPUG+djLuu+uEdc6HYlvXeHWOa7I9skTvEscayy8QS/TwZOOXbbSUZk/Vhc2rVEND2kJwxH64tGU/viEVy7Iltxk7kZzD4xwIAg82cz7XiXjSLL24C91Xm0BjFRxEPROjNXahjjRJuQp7Z15Y6IDV99mr6csl/lV2j07RWX6wv69aU41A1glcgxOoXFO9mip3HdrBorFWtJTCBLxCqO65ku7fTKzx63GIzffBv0LNo5gjY9kg2v/StSuq8teyi70mJ+CHM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(346002)(376002)(366004)(136003)(8676002)(30864003)(64756008)(6506007)(53546011)(33656002)(966005)(86362001)(8936002)(478600001)(2906002)(110136005)(7696005)(54906003)(83380400001)(316002)(4326008)(76116006)(71200400001)(52536014)(26005)(55016002)(66446008)(66556008)(66476007)(9686003)(6636002)(5660300002)(66946007)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?UUhNNUhLTEVqVDVPZDJXTVJoOURKNUw3dTlrVmt4WXlaQ1FyQ29RZmlDWE1z?=
 =?utf-8?B?TllkRXQ1SWh4V2x1dFhjYkUxdlJtUU5MaUh1TVltZmp0UnN2VlVBQnJ1SU9L?=
 =?utf-8?B?aUtkaWRqcmFIaDREY0duZGduVmI2V09OZUlSdHhyOU4wdjRFMTFWVXorRG9D?=
 =?utf-8?B?dldUYWhVbGhHblhmOGl2aWFhMHY0VUdUc0FTSGx1K3A5UUVmVlROdk5qNjdu?=
 =?utf-8?B?MlRHL01IaEdTMXFPR05IaWhaQnhRTW84b21tTFJtMnUyZkhadE9kOW9Mb3lO?=
 =?utf-8?B?ZEIvTUkzWXA5MGdhak5DZ0Z0TU13ZnByQ2o2K3REVGhRb3RveDJHTHkxVFdw?=
 =?utf-8?B?dW1CdGJQS1hwRFFCR1JFaFFETHdNNGNqd3djbWdKejBWM0o3aEl3WklxcVlT?=
 =?utf-8?B?akJjblZOUkdHbGs4bkExUzhhd2NvZVpJb0N3QVpKd1EwSGhCaXI0d0xEcmtJ?=
 =?utf-8?B?dU5TTVZsdE43a3plcjJnaGs1R0ZFNU9rVDhMUlRXZ2w0VSsrWU5xcEpxUEFC?=
 =?utf-8?B?am5Rd1hDcDVmV0RSL1VVTThZbTY3U1pockZvc2JiUVVUSTJCcGZhZnRlWkRi?=
 =?utf-8?B?ZW5rOHRtMjJTZmdBMmV3dmNWcE40ZFVlKzRYTHA3cnJvUjJqTEd1QzIwQUFU?=
 =?utf-8?B?UCsyT0FzQk0zdVVCaWl4dnc0c2JJZExyR3NSdUhoU3NsWE80V1l5bmtBUTlI?=
 =?utf-8?B?T2JPemphRFVpRERqN0gwWVNPNVpneVVra0RWZXVEeGR0M3JGMkpCVjhEeHRx?=
 =?utf-8?B?TjZnNnFiOHZLYjlMcUFON0hNS1lOYy9HMEdoQ1BUSVBmOW1UVVRQV2YybUZz?=
 =?utf-8?B?UzZWWUpEOEJRUml3aVFVZ1hCdklqTkpKaWZuOFlMNW9OaUtzL2FqanlNeTNC?=
 =?utf-8?B?anVKejhhNFNmTk5KbDMvOFZJWm1rMnlxV2E5bTh5MEI1UWZvMVhBbjJkdERy?=
 =?utf-8?B?QXlPN3RHNjdiMUlYZnNlZXhxL2ZyOEplUWZ1MUNxd2Z2UkYrcTFBa0RSVC9j?=
 =?utf-8?B?NU94V00rSkYrTC8xL0NyNjFlRm9Qd1J0RHg4K0xFNkpjTUNOSTlIV0E0SG5B?=
 =?utf-8?B?cklCTkhLNU9KcDB1eTRhbmFCRXI5NUllWXJ6UDdVckN3M2NnWHhPNnZJYVhw?=
 =?utf-8?B?K3VHeG5ieXUrUW5hQlJrNWFKODFwWTNIbDI2UVI1R3cxbVlyelFVbmFrNC9W?=
 =?utf-8?B?bjlkcHMyQktZWVpvQ1lpWmF2dGhUaUFMK2FBL00wUFFqZmpkN0QyTnFDdG9q?=
 =?utf-8?B?V0h2VzJwd205QytrZTBPVUNJT2FOai9FSmFzYjI4bEJFd2FLMjhHcG9FTGRE?=
 =?utf-8?B?M3FlMkEwM2pKcTd4Y2IzY2poSm5BdU1wWnJwWFdGR2hDajJWRnF6NC92U28x?=
 =?utf-8?B?UDVhVkIzYzlodnpPU1BzLzNCQi9DNmMyUitYeG5nUVpxSDZvczhUQU04MnJ0?=
 =?utf-8?Q?OxBRNaCo?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d992259-448d-4e6e-e9a3-08d8c25ef85e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2021 01:00:42.1070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O8quvq4urx34oaw3rCVG/iAPa6js3u+fW4zZY3zpGuvgWgPoO7lr9rigaE4xZcihmf96T1CFYVOozONaNPCbCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1588
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

Fixed.

BR,
Haiyue

> -----Original Message-----
> From: Creeley, Brett <brett.creeley@intel.com>
> Sent: Wednesday, January 27, 2021 00:33
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Sokolowski, Jan <jan.sokolowski@intel.com>; Liang, Cunming
> <cunming.liang@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; kuba@kernel.org; Wang, Haiyue
> <haiyue.wang@intel.com>; davem@davemloft.net
> Subject: Re: [Intel-wired-lan] [RFC 16/20] iavf: Add framework to enable ethtool ntuple filters
> 
> I'm fine with the flags updating, but it does look a little strange to
> just skip bits for no apparent reason, i.e. if the patches Jan is
> talking about aren't actually in the pipeline.
> 
> Brett
> 
> On Tue, 2021-01-26 at 15:12 +0000, Loktionov, Aleksandr wrote:
> > +Brett
> >
> > -----Original Message-----
> > From: Sokolowski, Jan <jan.sokolowski@intel.com>
> > Sent: Tuesday, January 26, 2021 12:31 PM
> > To: Wang, Haiyue <haiyue.wang@intel.com>;
> > intel-wired-lan@lists.osuosl.org
> > Cc: Liang, Cunming <cunming.liang@intel.com>; Zhang, Qi Z <
> > qi.z.zhang@intel.com>; kuba@kernel.org; davem@davemloft.net;
> > Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> > Subject: RE: [Intel-wired-lan] [RFC 16/20] iavf: Add framework to
> > enable ethtool ntuple filters
> >
> > Would it be possible to move these new flags to bits 35 and 36?
> > Currently OOT uses bits up to 34, and as the changes are being
> > prepared for upstreaming, there might be a conflict there.
> >
> > Jan
> >
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Haiyue Wang
> > Sent: Tuesday, November 24, 2020 7:24 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Liang, Cunming <cunming.liang@intel.com>; Zhang, Qi Z <
> > qi.z.zhang@intel.com>; kuba@kernel.org; davem@davemloft.net
> > Subject: [Intel-wired-lan] [RFC 16/20] iavf: Add framework to enable
> > ethtool ntuple filters
> >
> > Enable ethtool ntuple filter support on the VF driver using the
> > virtchnl interface to the PF driver and the Flow director
> > functionality in the hardware.
> >
> > Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf.h        |  12 ++
> >  drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  33 ++++
> >  drivers/net/ethernet/intel/iavf/iavf_main.c   |  27 +++
> >  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 187
> > ++++++++++++++++++
> >  4 files changed, 259 insertions(+)
> >  create mode 100644 drivers/net/ethernet/intel/iavf/iavf_fdir.h
> >
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> > b/drivers/net/ethernet/intel/iavf/iavf.h
> > index 8a65525a7c0d..bda2a900df8e 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf.h
> > +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> > @@ -37,6 +37,7 @@
> >  #include "iavf_type.h"
> >  #include <linux/avf/virtchnl.h>
> >  #include "iavf_txrx.h"
> > +#include "iavf_fdir.h"
> >
> >  #define DEFAULT_DEBUG_LEVEL_SHIFT 3
> >  #define PFX "iavf: "
> > @@ -300,6 +301,8 @@ struct iavf_adapter {
> >  #define IAVF_FLAG_AQ_DISABLE_CHANNELS		BIT(22)
> >  #define IAVF_FLAG_AQ_ADD_CLOUD_FILTER		BIT(23)
> >  #define IAVF_FLAG_AQ_DEL_CLOUD_FILTER		BIT(24)
> > +#define IAVF_FLAG_AQ_ADD_FDIR_FILTER		BIT(25)
> > +#define IAVF_FLAG_AQ_DEL_FDIR_FILTER		BIT(26)
> >
> >  	/* OS defined structs */
> >  	struct net_device *netdev;
> > @@ -340,6 +343,8 @@ struct iavf_adapter {
> >  			  VIRTCHNL_VF_OFFLOAD_VLAN)
> >  #define ADV_LINK_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
> >  			      VIRTCHNL_VF_CAP_ADV_LINK_SPEED)
> > +#define FDIR_FLTR_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
> > +			       VIRTCHNL_VF_OFFLOAD_FDIR_PF)
> >  	struct virtchnl_vf_resource *vf_res; /* incl. all VSIs */
> >  	struct virtchnl_vsi_resource *vsi_res; /* our LAN VSI */
> >  	struct virtchnl_version_info pf_version; @@ -362,6 +367,11 @@
> > struct iavf_adapter {
> >  	/* lock to protect access to the cloud filter list */
> >  	spinlock_t cloud_filter_list_lock;
> >  	u16 num_cloud_filters;
> > +
> > +#define IAVF_MAX_FDIR_FILTERS 128	/* max allowed Flow Director
> > filters */
> > +	u16 fdir_active_fltr;
> > +	struct list_head fdir_list_head;
> > +	spinlock_t fdir_fltr_lock;	/* protect the Flow Director
> > filter list */
> >  };
> >
> >
> > @@ -432,6 +442,8 @@ void iavf_enable_channels(struct iavf_adapter
> > *adapter);  void iavf_disable_channels(struct iavf_adapter
> > *adapter);  void iavf_add_cloud_filter(struct iavf_adapter
> > *adapter);  void iavf_del_cloud_filter(struct iavf_adapter *adapter);
> > +void iavf_add_fdir_filter(struct iavf_adapter *adapter); void
> > +iavf_del_fdir_filter(struct iavf_adapter *adapter);
> >  struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter
> > *adapter,
> >  					const u8 *macaddr);
> >  #endif /* _IAVF_H_ */
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.h
> > b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
> > new file mode 100644
> > index 000000000000..429bc025d45a
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
> > @@ -0,0 +1,33 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/* Copyright (c) 2020, Intel Corporation. */
> > +
> > +#ifndef _IAVF_FDIR_H_
> > +#define _IAVF_FDIR_H_
> > +
> > +struct iavf_adapter;
> > +
> > +/* State of Flow Director filter */
> > +enum iavf_fdir_fltr_state_t {
> > +	IAVF_FDIR_FLTR_ADD_REQUEST,	/* User requests to add Flow
> > Director filter */
> > +	IAVF_FDIR_FLTR_ADD_PENDING,	/* Flow Director filter
> > pending add by the PF */
> > +	IAVF_FDIR_FLTR_DEL_REQUEST,	/* User requests to delete
> > Flow Director filter */
> > +	IAVF_FDIR_FLTR_DEL_PENDING,	/* Flow Director filter
> > pending delete by the PF */
> > +	IAVF_FDIR_FLTR_ACTIVE,		/* Flow Director filter is
> > active */
> > +};
> > +
> > +/* bookkeeping of Flow Director filters */ struct iavf_fdir_fltr {
> > +	enum iavf_fdir_fltr_state_t state;
> > +	struct list_head list;
> > +
> > +	u32 flow_id;
> > +
> > +	struct virtchnl_fdir_add vc_add_msg;
> > +};
> > +
> > +int iavf_fill_fdir_add_msg(struct iavf_adapter *adapter, struct
> > +iavf_fdir_fltr *fltr); void iavf_print_fdir_fltr(struct
> > iavf_adapter
> > +*adapter, struct iavf_fdir_fltr *fltr); bool
> > +iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct
> > +iavf_fdir_fltr *fltr); void iavf_fdir_list_add_fltr(struct
> > iavf_adapter
> > +*adapter, struct iavf_fdir_fltr *fltr); struct iavf_fdir_fltr
> > +*iavf_find_fdir_fltr_by_loc(struct iavf_adapter *adapter, u32 loc);
> > +#endif /* _IAVF_FDIR_H_ */
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > index 814e59bf2c94..d9f9085421df 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > @@ -958,6 +958,7 @@ static void iavf_up_complete(struct iavf_adapter
> > *adapter)  void iavf_down(struct iavf_adapter *adapter)  {
> >  	struct net_device *netdev = adapter->netdev;
> > +	struct iavf_fdir_fltr *fdir;
> >  	struct iavf_vlan_filter *vlf;
> >  	struct iavf_mac_filter *f;
> >  	struct iavf_cloud_filter *cf;
> > @@ -996,6 +997,13 @@ void iavf_down(struct iavf_adapter *adapter)
> >  	}
> >  	spin_unlock_bh(&adapter->cloud_filter_list_lock);
> >
> > +	/* remove all Flow Director filters */
> > +	spin_lock_bh(&adapter->fdir_fltr_lock);
> > +	list_for_each_entry(fdir, &adapter->fdir_list_head, list) {
> > +		fdir->state = IAVF_FDIR_FLTR_DEL_REQUEST;
> > +	}
> > +	spin_unlock_bh(&adapter->fdir_fltr_lock);
> > +
> >  	if (!(adapter->flags & IAVF_FLAG_PF_COMMS_FAILED) &&
> >  	    adapter->state != __IAVF_RESETTING) {
> >  		/* cancel any current operation */
> > @@ -1007,6 +1015,7 @@ void iavf_down(struct iavf_adapter *adapter)
> >  		adapter->aq_required = IAVF_FLAG_AQ_DEL_MAC_FILTER;
> >  		adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
> >  		adapter->aq_required |= IAVF_FLAG_AQ_DEL_CLOUD_FILTER;
> > +		adapter->aq_required |= IAVF_FLAG_AQ_DEL_FDIR_FILTER;
> >  		adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
> >  	}
> >
> > @@ -1629,6 +1638,14 @@ static int iavf_process_aq_command(struct
> > iavf_adapter *adapter)
> >  		iavf_add_cloud_filter(adapter);
> >  		return 0;
> >  	}
> > +	if (adapter->aq_required & IAVF_FLAG_AQ_ADD_FDIR_FILTER) {
> > +		iavf_add_fdir_filter(adapter);
> > +		return IAVF_SUCCESS;
> > +	}
> > +	if (adapter->aq_required & IAVF_FLAG_AQ_DEL_FDIR_FILTER) {
> > +		iavf_del_fdir_filter(adapter);
> > +		return IAVF_SUCCESS;
> > +	}
> >  	return -EAGAIN;
> >  }
> >
> > @@ -3739,10 +3756,12 @@ static int iavf_probe(struct pci_dev *pdev,
> > const struct pci_device_id *ent)
> >
> >  	spin_lock_init(&adapter->mac_vlan_list_lock);
> >  	spin_lock_init(&adapter->cloud_filter_list_lock);
> > +	spin_lock_init(&adapter->fdir_fltr_lock);
> >
> >  	INIT_LIST_HEAD(&adapter->mac_filter_list);
> >  	INIT_LIST_HEAD(&adapter->vlan_filter_list);
> >  	INIT_LIST_HEAD(&adapter->cloud_filter_list);
> > +	INIT_LIST_HEAD(&adapter->fdir_list_head);
> >
> >  	INIT_WORK(&adapter->reset_task, iavf_reset_task);
> >  	INIT_WORK(&adapter->adminq_task, iavf_adminq_task); @@ -3846,6
> > +3865,7 @@ static void iavf_remove(struct pci_dev *pdev)  {
> >  	struct net_device *netdev = pci_get_drvdata(pdev);
> >  	struct iavf_adapter *adapter = netdev_priv(netdev);
> > +	struct iavf_fdir_fltr *fdir, *fdirtmp;
> >  	struct iavf_vlan_filter *vlf, *vlftmp;
> >  	struct iavf_mac_filter *f, *ftmp;
> >  	struct iavf_cloud_filter *cf, *cftmp;
> > @@ -3927,6 +3947,13 @@ static void iavf_remove(struct pci_dev *pdev)
> >  	}
> >  	spin_unlock_bh(&adapter->cloud_filter_list_lock);
> >
> > +	spin_lock_bh(&adapter->fdir_fltr_lock);
> > +	list_for_each_entry_safe(fdir, fdirtmp, &adapter-
> > >fdir_list_head, list) {
> > +		list_del(&fdir->list);
> > +		kfree(fdir);
> > +	}
> > +	spin_unlock_bh(&adapter->fdir_fltr_lock);
> > +
> >  	free_netdev(netdev);
> >
> >  	pci_disable_pcie_error_reporting(pdev);
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> > b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> > index ed08ace4f05a..eb687081e94f 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> > @@ -140,6 +140,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter
> > *adapter)
> >  	       VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
> >  	       VIRTCHNL_VF_OFFLOAD_REQ_QUEUES |
> >  	       VIRTCHNL_VF_OFFLOAD_ADQ |
> > +	       VIRTCHNL_VF_OFFLOAD_FDIR_PF |
> >  	       VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
> >
> >  	adapter->current_op = VIRTCHNL_OP_GET_VF_RESOURCES; @@ -1197,6
> > +1198,101 @@ void iavf_del_cloud_filter(struct iavf_adapter *adapter)
> >  	kfree(f);
> >  }
> >
> > +/**
> > + * iavf_add_fdir_filter
> > + * @adapter: the VF adapter structure
> > + *
> > + * Request that the PF add Flow Director filters as specified
> > + * by the user via ethtool.
> > + **/
> > +void iavf_add_fdir_filter(struct iavf_adapter *adapter) {
> > +	struct iavf_fdir_fltr *fdir;
> > +	struct virtchnl_fdir_add *f;
> > +	bool process_fltr = false;
> > +	int len;
> > +
> > +	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
> > +		/* bail because we already have a command pending */
> > +		dev_err(&adapter->pdev->dev, "Cannot add Flow Director
> > filter, command %d pending\n",
> > +			adapter->current_op);
> > +		return;
> > +	}
> > +
> > +	len = sizeof(struct virtchnl_fdir_add);
> > +	f = kzalloc(len, GFP_KERNEL);
> > +	if (!f)
> > +		return;
> > +
> > +	spin_lock_bh(&adapter->fdir_fltr_lock);
> > +	list_for_each_entry(fdir, &adapter->fdir_list_head, list) {
> > +		if (fdir->state == IAVF_FDIR_FLTR_ADD_REQUEST) {
> > +			process_fltr = true;
> > +			fdir->state = IAVF_FDIR_FLTR_ADD_PENDING;
> > +			memcpy(f, &fdir->vc_add_msg, len);
> > +			break;
> > +		}
> > +	}
> > +	spin_unlock_bh(&adapter->fdir_fltr_lock);
> > +
> > +	if (!process_fltr) {
> > +		/* prevent iavf_add_fdir_filter() from being called
> > when there
> > +		 * are no filters to add
> > +		 */
> > +		adapter->aq_required &= ~IAVF_FLAG_AQ_ADD_FDIR_FILTER;
> > +		kfree(f);
> > +		return;
> > +	}
> > +	adapter->current_op = VIRTCHNL_OP_ADD_FDIR_FILTER;
> > +	iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_FDIR_FILTER, (u8 *)f,
> > len);
> > +	kfree(f);
> > +}
> > +
> > +/**
> > + * iavf_del_fdir_filter
> > + * @adapter: the VF adapter structure
> > + *
> > + * Request that the PF delete Flow Director filters as specified
> > + * by the user via ethtool.
> > + **/
> > +void iavf_del_fdir_filter(struct iavf_adapter *adapter) {
> > +	struct iavf_fdir_fltr *fdir;
> > +	struct virtchnl_fdir_del f;
> > +	bool process_fltr = false;
> > +	int len;
> > +
> > +	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
> > +		/* bail because we already have a command pending */
> > +		dev_err(&adapter->pdev->dev, "Cannot remove Flow
> > Director filter, command %d pending\n",
> > +			adapter->current_op);
> > +		return;
> > +	}
> > +
> > +	len = sizeof(struct virtchnl_fdir_del);
> > +
> > +	spin_lock_bh(&adapter->fdir_fltr_lock);
> > +	list_for_each_entry(fdir, &adapter->fdir_list_head, list) {
> > +		if (fdir->state == IAVF_FDIR_FLTR_DEL_REQUEST) {
> > +			process_fltr = true;
> > +			memset(&f, 0, len);
> > +			f.vsi_id = fdir->vc_add_msg.vsi_id;
> > +			f.flow_id = fdir->flow_id;
> > +			fdir->state = IAVF_FDIR_FLTR_DEL_PENDING;
> > +			break;
> > +		}
> > +	}
> > +	spin_unlock_bh(&adapter->fdir_fltr_lock);
> > +
> > +	if (!process_fltr) {
> > +		adapter->aq_required &= ~IAVF_FLAG_AQ_DEL_FDIR_FILTER;
> > +		return;
> > +	}
> > +
> > +	adapter->current_op = VIRTCHNL_OP_DEL_FDIR_FILTER;
> > +	iavf_send_pf_msg(adapter, VIRTCHNL_OP_DEL_FDIR_FILTER, (u8
> > *)&f, len);
> > +}
> > +
> >  /**
> >   * iavf_request_reset
> >   * @adapter: adapter structure
> > @@ -1357,6 +1453,49 @@ void iavf_virtchnl_completion(struct
> > iavf_adapter *adapter,
> >  			}
> >  			}
> >  			break;
> > +		case VIRTCHNL_OP_ADD_FDIR_FILTER: {
> > +			struct iavf_fdir_fltr *fdir, *fdir_tmp;
> > +
> > +			spin_lock_bh(&adapter->fdir_fltr_lock);
> > +			list_for_each_entry_safe(fdir, fdir_tmp,
> > +						 &adapter-
> > >fdir_list_head,
> > +						 list) {
> > +				if (fdir->state ==
> > IAVF_FDIR_FLTR_ADD_PENDING) {
> > +					dev_info(&adapter->pdev->dev,
> > "Failed to add Flow Director filter, error %s\n",
> > +						 iavf_stat_str(&adapter
> > ->hw,
> > +							       v_retval
> > ));
> > +					if (msglen)
> > +						dev_err(&adapter->pdev-
> > >dev,
> > +							"%s\n", msg);
> > +					list_del(&fdir->list);
> > +					kfree(fdir);
> > +					adapter->fdir_active_fltr--;
> > +				}
> > +			}
> > +			spin_unlock_bh(&adapter->fdir_fltr_lock);
> > +			}
> > +			break;
> > +		case VIRTCHNL_OP_DEL_FDIR_FILTER: {
> > +			struct iavf_fdir_fltr *fdir;
> > +
> > +			spin_lock_bh(&adapter->fdir_fltr_lock);
> > +			list_for_each_entry(fdir, &adapter-
> > >fdir_list_head,
> > +					    list) {
> > +				if (fdir->state ==
> > IAVF_FDIR_FLTR_DEL_PENDING) {
> > +					fdir->state =
> > IAVF_FDIR_FLTR_ACTIVE;
> > +					dev_info(&adapter->pdev->dev,
> > "Failed to del Flow Director filter, error %s\n",
> > +						 iavf_stat_str(&adapter
> > ->hw,
> > +							       v_retval
> > ));
> > +				}
> > +			}
> > +			spin_unlock_bh(&adapter->fdir_fltr_lock);
> > +			}
> > +			break;
> > +		case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
> > +		case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
> > +			dev_warn(&adapter->pdev->dev,
> > +				 "Changing VLAN Stripping is not
> > allowed when Port VLAN is configured\n");
> > +			break;
> >  		default:
> >  			dev_err(&adapter->pdev->dev, "PF returned error
> > %d (%s) to our request %d\n",
> >  				v_retval, iavf_stat_str(&adapter->hw,
> > v_retval), @@ -1490,6 +1629,54 @@ void
> > iavf_virtchnl_completion(struct iavf_adapter *adapter,
> >  		}
> >  		}
> >  		break;
> > +	case VIRTCHNL_OP_ADD_FDIR_FILTER: {
> > +		struct virtchnl_fdir_add *add_fltr = (struct
> > virtchnl_fdir_add *)msg;
> > +		struct iavf_fdir_fltr *fdir, *fdir_tmp;
> > +
> > +		spin_lock_bh(&adapter->fdir_fltr_lock);
> > +		list_for_each_entry_safe(fdir, fdir_tmp,
> > +					 &adapter->fdir_list_head,
> > +					 list) {
> > +			if (fdir->state == IAVF_FDIR_FLTR_ADD_PENDING)
> > {
> > +				if (add_fltr->status ==
> > VIRTCHNL_FDIR_SUCCESS) {
> > +					fdir->state =
> > IAVF_FDIR_FLTR_ACTIVE;
> > +					fdir->flow_id = add_fltr-
> > >flow_id;
> > +				} else {
> > +					dev_info(&adapter->pdev->dev,
> > +						 "Failed to add Flow
> > Director filter with status : %d\n",
> > +						 add_fltr->status);
> > +					list_del(&fdir->list);
> > +					kfree(fdir);
> > +					adapter->fdir_active_fltr--;
> > +				}
> > +			}
> > +		}
> > +		spin_unlock_bh(&adapter->fdir_fltr_lock);
> > +		}
> > +		break;
> > +	case VIRTCHNL_OP_DEL_FDIR_FILTER: {
> > +		struct virtchnl_fdir_del *del_fltr = (struct
> > virtchnl_fdir_del *)msg;
> > +		struct iavf_fdir_fltr *fdir, *fdir_tmp;
> > +
> > +		spin_lock_bh(&adapter->fdir_fltr_lock);
> > +		list_for_each_entry_safe(fdir, fdir_tmp, &adapter-
> > >fdir_list_head,
> > +					 list) {
> > +			if (fdir->state == IAVF_FDIR_FLTR_DEL_PENDING)
> > {
> > +				if (del_fltr->status ==
> > VIRTCHNL_FDIR_SUCCESS) {
> > +					list_del(&fdir->list);
> > +					kfree(fdir);
> > +					adapter->fdir_active_fltr--;
> > +				} else {
> > +					fdir->state =
> > IAVF_FDIR_FLTR_ACTIVE;
> > +					dev_info(&adapter->pdev->dev,
> > +						 "Failed to delete Flow
> > Director filter with status : %d\n",
> > +						 del_fltr->status);
> > +				}
> > +			}
> > +		}
> > +		spin_unlock_bh(&adapter->fdir_fltr_lock);
> > +		}
> > +		break;
> >  	default:
> >  		if (adapter->current_op && (v_opcode != adapter-
> > >current_op))
> >  			dev_warn(&adapter->pdev->dev, "Expected
> > response %d from PF, received %d\n",
> > --
> > 2.29.2
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
