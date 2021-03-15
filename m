Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA28333AD30
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:19:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FA576F545;
	Mon, 15 Mar 2021 08:19:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3uYboWWRyIEQ; Mon, 15 Mar 2021 08:19:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BCAD6F53F;
	Mon, 15 Mar 2021 08:19:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 277BF1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:19:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 163116F53F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rMgMC4t1Huk7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:19:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D6C8C6F52B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:19:18 +0000 (UTC)
IronPort-SDR: d9t3yOCRU5FONjbxR6xeMdfH7mvanD2a0k3pKvFoNvGK1lgA1Il3E8Gqcfv07gXaklMbc3UJ6f
 6J3tt0Uusa2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="188413242"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="188413242"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:19:17 -0700
IronPort-SDR: +ilHVjpAUh3O+wXR/WxZSNMi3tbyPyBPQuxJb+mDWIPVy4TQ3W/40sjcTaPhtllk8bEyDrGnea
 HIf/EKs0bRlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="371555137"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 15 Mar 2021 01:19:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:19:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:19:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:19:16 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:19:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BV9LyUIUdjP4acBZ6Q7wSsM+885nQac8+UFUN9n3had7r4k/A06A0bitLlj2wQP64gxNlzP/9H03H/10M5RrA8khqItZBTrYAcOvXS3BR+Ijbu24iMPgImU149yTf2PJc9WViut436h+mJylqAYprSA82ftZDqdeMa6EhNl8KoHqPmmnoAA9ypuOe+y2GELS5KlanW0OXpGs+oVg2CbWjKP+z4uejUWuRReGAlalrSiya44DgKztfIJpXGs89XllPcrAPKXOl6ggwgnLaV7LeC54OKRxNpDM6SVvJHit8DxsLppxWTgVC/Kda/C/iLwcbenuV2XsHlcPZh6w1tfv8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FWpusEg5P/En+e3vmKiyBh082CmL7q2QhcQ9N0UgOrg=;
 b=Pu560Zp+acQiIKs+Z2hFzLA8Tc+WnrbWM0vS3ie6UWAqnG/HDEllXynohPFKz/c37cq1YlUmTB3CeIXym7Ix/XEQ2+LikM5Px5BwX1VV1n/pv0tk+GpoxtiXuK16tuvYMgvvxivrDz01UtOV+Hh4TUqJqrsd7oo04yLMn3jGXd5c6dP9RVrIUrIadPCzgRDLb7NUnXUUihbaPBpjV5GNk4TEisdFcqjRGuAmshvNOt644c06QoJeea80WyeQHCQgZbx7GNW9ZVNBjBQohw7tkeU2pS9cjQA2HwCa8pYeUJUrbQlUKZ2sFKCpaUnSgglnlTA2QofGxKxG6NdCUkgo8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FWpusEg5P/En+e3vmKiyBh082CmL7q2QhcQ9N0UgOrg=;
 b=hGcCsrmWQTmi5X+hikvDVJR4CCcwtBJi0yw3NslZ9Y7R2HduADFvJJixEUcOIe6kt9heMhybYxsze/NWW5heTmwCbaO8YDwOMWxiaU1dmo6LLFXvpxXttYlFsfMzeMNpTp12HW1a5M9F37UdH/GBQDug/Q3jMr4RrCdxrMaTDfo=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN6PR11MB1297.namprd11.prod.outlook.com (2603:10b6:404:4a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Mon, 15 Mar
 2021 08:19:05 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:18:59 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 07/18] ice: Enable FDIR Configure
 for AVF
Thread-Index: AQHXFJQVwm7GqGdjt0iSpUQtS4REfaqEvlZQ
Date: Mon, 15 Mar 2021 08:18:59 +0000
Message-ID: <BN8PR11MB3795F68FC7D640CD383ECE88F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-8-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-8-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.46.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 85b75072-bc13-4938-0b28-08d8e78afc2e
x-ms-traffictypediagnostic: BN6PR11MB1297:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1297EAA06C7680025E4CB444F76C9@BN6PR11MB1297.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bDHajm2Jxo0U2bee5bOyXAw5p+d8huLLf90LhAUdxEvVBerNL1AsGJcuuK85nQP5p8HVso3NgMLzUMSM1zsX258ndmB+jLbUqwwo9gmR6J3AfeY40Hs6BpvQ/ShiYsrLjLWNaP/55pfb/jCDjKJEB9CeOHjhBwATHQX5gs/QtG9oOvL6s1utcC9GP1DzYGB202o58jxlcwl2IqHLiaGqBZ8luEq3mLMbI9YYd41DmDFFXLUTQ/R23GmB7nOlFSPomJssClU50PdL34XLBNzjYyg6WQCR/OjHutWUprczVCOf5rJdi+ALIclJZUkNtoQtBqyB9v+pkn2YoU/qRwHkhfO9lGkZToU3n4QH/P3d0WDekNvb6EWgzsc74JHtVA7XdJQFi9+igfP7lBGplz+0pE1FRrnfX98YbOWYktQ13eQP1pAMeQQDv+YtRr6wF6nKUWnPhx8/Oy2lbi38FSS7Y3ki7FHtH9c2En5CSosMSH83/JVCzbv8gwIqIU5Gy/cbT/BbfPAEodqWks/HhasYjn/2sx9cEE74CjAssSCi/DKLXSiLwSDD2FfKGz4YvYWsLV7ezI4JQSQKo/4AM9zE9arHBArDYynWSRQsmlhjprf40G8sCIiqd28IxSXNzOZgZDEAol4fx6zFeTBGNLFoLw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(376002)(396003)(346002)(366004)(136003)(86362001)(33656002)(83380400001)(52536014)(64756008)(66946007)(66556008)(76116006)(6916009)(71200400001)(8936002)(66446008)(7696005)(9686003)(316002)(54906003)(5660300002)(107886003)(53546011)(4326008)(478600001)(186003)(2906002)(8676002)(55016002)(6506007)(26005)(966005)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?67SQts8YKK1s4NZSBUzP7CTtFgDRDgc1trNXB6QtUP8VCkxIt8tk8psBOAub?=
 =?us-ascii?Q?D34feemMIOyeExyjm6GlBSC9wDWu1iPaoIIViAKcx475NzDKKdJufS3P6mP6?=
 =?us-ascii?Q?Zu5Z8JnEgfd2DLaalt4uv5VsVgL+bAiG+hJ9hx9n3uFx9kHJ2iREZUckOBI3?=
 =?us-ascii?Q?yeeOrjyoDcyCdshcrmrXeszJr95kJI2QvM3KWtJ8+Yn85wKdxNO0O2jAEnYk?=
 =?us-ascii?Q?2HVgJ1BEOF9qa7B/W3MRcGTBSQORedTILs+DcPjLlnFbr7haEzbZMHYHt5RO?=
 =?us-ascii?Q?up72KFu/vyN9nizJr4+qllsoL7LMnHdJrshThe3VgQyj66lcbcS/1ulSoKSy?=
 =?us-ascii?Q?BMpn+l2VEjfn6GE479k06At2Rxu4gahOKLXCnaPqHlZr0Pcztm3M7irnOPnn?=
 =?us-ascii?Q?zhS3TnuKgsGugGWSEwqV08cd6SRy0o2cDVMo+GHn5599m92Rj/OU5duAiSS9?=
 =?us-ascii?Q?clT2q09ssdnUvjw6v/cONiSQmo8PnRLi/+N4xpTQupYDdE3APpGR6+kI3srI?=
 =?us-ascii?Q?LaWSSAa6s3vjLMXiiQ73LiKPxAMEW3ORNCVJYCLOVEA52650jqjF01a1DFTk?=
 =?us-ascii?Q?kzxixZEIWm6TwSeHbr4hmeNFOjbvM4AWVNuMV286It8cNhO0ruL89GQZ0CUp?=
 =?us-ascii?Q?llDzGu+/7Lb0K5fyVVN8QFbLFLodgqIS7ipS00nZe8Wd6Xg/ymQNlNaAK8Cy?=
 =?us-ascii?Q?r3+XsQgDeeYzeQ1m6J5SS0+lz/rUPv6JISKZhoXp0RkXok6RkGo+uBGpf+xE?=
 =?us-ascii?Q?m0cH/Eb2RSs7LMTaLgyoc7nfb7d866r2MYJaR1y6+l8j06O5/5gSoDLW5cLr?=
 =?us-ascii?Q?/r3Aw9oX7icHXjy1ILqQSxbujlEbpdEGjtpSiaKIyt88Eksgcc+gOj5t1v2j?=
 =?us-ascii?Q?S2emMKQyA8HPdSxwcsbhA4hdo757Oe8Osmtn2D8UFhuBJU20Z0SxIs1/r3DP?=
 =?us-ascii?Q?/GvuPnD8zoDE7sJJLkxKAGmnotmlGo9cbBYStaousmMhdPsV+WZJU2tuu2qP?=
 =?us-ascii?Q?BMqGcvAqGK2fBPxLQCjhqJkHsIpTxfpnVBfos90rG7uxDBBntX0T65ylZ9AE?=
 =?us-ascii?Q?hJ1ARfmYbDw2Pwu0w4Gx645xEXxylJHTQcEBP7KWOb4X/Q28y1TQ1fjtg/zg?=
 =?us-ascii?Q?4GkeWsyHhhTUsY1QQPFJ9QYPT7DRVyyCsnXa9lnTfO2cqPTslnk7A4/BDtbc?=
 =?us-ascii?Q?L7v40hxMfG+lfqbOn7usBTnETg+NXAJyoOPF5lREI0RkT39NDZNAy20/z9Re?=
 =?us-ascii?Q?0a4cu+0ghbcHwNK4pLBUUQhBmqvz78XAjaopbG19zCHSOn/3PjxKoClNyWOS?=
 =?us-ascii?Q?ortJg3uaUTcBp65122AXoyzT?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85b75072-bc13-4938-0b28-08d8e78afc2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:18:59.1896 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9r/R6oXD8VSfIrhphi5pBkggzLkd6T9cZ/zVgFRashvbORQVI1ZJ0YUmQ4eGuQxzxZ3luyK6E9gs2jqj0Ndwag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1297
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 07/18] ice: Enable FDIR Configure
 for AVF
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
Cc: "Su, Simei" <simei.su@intel.com>, "Guo, Jia" <jia.guo@intel.com>, "Liang, 
 Cunming" <cunming.liang@intel.com>, "Cao, Yahui" <yahui.cao@intel.com>,
 "Xing, Beilei" <beilei.xing@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Haiyue Wang
> Sent: Tuesday, March 9, 2021 11:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Su, Simei <simei.su@intel.com>; Guo, Jia <jia.guo@intel.com>; Liang, Cunming
> <cunming.liang@intel.com>; Cao, Yahui <yahui.cao@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; Xing,
> Beilei <beilei.xing@intel.com>
> Subject: [Intel-wired-lan] [Patch v5 07/18] ice: Enable FDIR Configure for AVF
> 
> From: Qi Zhang <qi.z.zhang@intel.com>
> 
> The virtual channel is going to be extended to support FDIR and
> RSS configure from AVF. New data structures and OP codes will be
> added, the patch enable the FDIR part.
> 
> To support above advanced AVF feature, we need to figure out
> what kind of data structure should be passed from VF to PF to describe
> an FDIR rule or RSS config rule. The common part of the requirement is
> we need a data structure to represent the input set selection of a rule's
> hash key.
> 
> An input set selection is a group of fields be selected from one or more
> network protocol layers that could be identified as a specific flow.
> For example, select dst IP address from an IPv4 header combined with
> dst port from the TCP header as the input set for an IPv4/TCP flow.
> 
> The patch adds a new data structure virtchnl_proto_hdrs to abstract
> a network protocol headers group which is composed of layers of network
> protocol header(virtchnl_proto_hdr).
> 
> A protocol header contains a 32 bits mask (field_selector) to describe
> which fields are selected as input sets, as well as a header type
> (enum virtchnl_proto_hdr_type). Each bit is mapped to a field in
> enum virtchnl_proto_hdr_field guided by its header type.
> 
> +------------+-----------+------------------------------+
> |            | Proto Hdr | Header Type A                |
> |            |           +------------------------------+
> |            |           | BIT 31 | ... | BIT 1 | BIT 0 |
> |            |-----------+------------------------------+
> |Proto Hdrs  | Proto Hdr | Header Type B                |
> |            |           +------------------------------+
> |            |           | BIT 31 | ... | BIT 1 | BIT 0 |
> |            |-----------+------------------------------+
> |            | Proto Hdr | Header Type C                |
> |            |           +------------------------------+
> |            |           | BIT 31 | ... | BIT 1 | BIT 0 |
> |            |-----------+------------------------------+
> |            |    ....                                  |
> +-------------------------------------------------------+
> 
> All fields in enum virtchnl_proto_hdr_fields are grouped with header type
> and the value of the first field of a header type is always 32 aligned.
> 
> enum proto_hdr_type {
>         header_type_A = 0;
>         header_type_B = 1;
>         ....
> }
> 
> enum proto_hdr_field {
>         /* header type A */
>         header_A_field_0 = 0,
>         header_A_field_1 = 1,
>         header_A_field_2 = 2,
>         header_A_field_3 = 3,
> 
>         /* header type B */
>         header_B_field_0 = 32, // = header_type_B << 5
>         header_B_field_0 = 33,
>         header_B_field_0 = 34
>         header_B_field_0 = 35,
>         ....
> };
> 
> So we have:
> proto_hdr_type = proto_hdr_field / 32
> bit offset = proto_hdr_field % 32
> 
> To simply the protocol header's operations, couple help macros are added.
> For example, to select src IP and dst port as input set for an IPv4/UDP
> flow.
> 
> we have:
> struct virtchnl_proto_hdr hdr[2];
> 
> VIRTCHNL_SET_PROTO_HDR_TYPE(&hdr[0], IPV4)
> VIRTCHNL_ADD_PROTO_HDR_FIELD(&hdr[0], IPV4, SRC)
> 
> VIRTCHNL_SET_PROTO_HDR_TYPE(&hdr[1], UDP)
> VIRTCHNL_ADD_PROTO_HDR_FIELD(&hdr[1], UDP, DST)
> 
> A protocol header also contains a byte array, this field should only
> be used by an FDIR rule and should be ignored by RSS. For an FDIR rule,
> the byte array is used to store the protocol header of a training
> package. The byte array must be network order.
> 
> The patch added virtual channel support for iAVF FDIR add/validate/delete filter.
> iAVF FDIR is Flow Director for Intel Adaptive Virtual Function which can
> direct Ethernet packets to the queues of the Network Interface Card.
> Add/delete command is adding or deleting one rule for each virtual
> channel message, while validate command is just verifying if this rule
> is valid without any other operations.
> 
> To add or delete one rule, driver needs to config TCAM and Profile,
> build training packets which contains the input set value, and send
> the training packets through FDIR Tx queue. In addition, driver needs to
> manage the software context to avoid adding duplicated rules, deleting
> non-existent rule, input set conflicts and other invalid cases.
> 
> NOTE:
> Supported pattern/actions and their parse functions are not be included in
> this patch, they will be added in a separate one.
> 
> Signed-off-by: Jeff Guo <jia.guo@intel.com>
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Simei Su <simei.su@intel.com>
> Signed-off-by: Beilei Xing <beilei.xing@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |    2 +-
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c |    4 +
>  drivers/net/ethernet/intel/ice/ice_fdir.c     |    6 +-
>  drivers/net/ethernet/intel/ice/ice_fdir.h     |    5 +
>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |    2 +
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 1034 +++++++++++++++++
>  .../ethernet/intel/ice/ice_virtchnl_fdir.h    |   24 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   17 +-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |    6 +
>  include/linux/avf/virtchnl.h                  |  278 +++++
>  10 files changed, 1372 insertions(+), 6 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h
> 

Re-send to Bo, as a new member.

> --
> 2.30.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
