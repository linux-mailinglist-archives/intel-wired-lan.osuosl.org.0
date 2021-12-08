Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9244246CEA4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 09:05:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21DE483E42;
	Wed,  8 Dec 2021 08:05:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DTFIT1DHKVFv; Wed,  8 Dec 2021 08:05:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4D6E83E3E;
	Wed,  8 Dec 2021 08:05:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F2E51BF365
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:05:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3C0D7409F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:05:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JpOywED4Sx02 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 08:05:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A02A40147
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:05:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="298574603"
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="298574603"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 00:05:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="606162777"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2021 00:05:35 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 00:05:35 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 8 Dec 2021 00:05:35 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 8 Dec 2021 00:05:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OPil7zR3fKcYsij0VvCNclzfhYZ/6PkNMSLmLPy8zJHdzNtV/gtxyqJAlYLZkDaSsgfofD8+jJeE0lWbnkRMUY4zoUhP/9TQGVWIqAXI5VzaZNIvrmQYLc3rl3+InieOGFXj9qjShvFYHJvhx0ryDsb4fhQPFd6+9Wuju6VRzLAjXXxqYGs/cqZwYd6sK/8kkLeOtdh1AzT3bk3W7isHGXczpWPN10DELGuf4b5wkHKMIwpRtuzjDBu7lxEOIpkE90/yMuiLUhXZ41M2f1MvkYcOfsV34kQr9uRpPN6CMhFDJKRGVU0y/bSyXE4nsVtPSM86vvzwn/vqtidhkm3boA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8QJIBIebUXvgU3ttWthIfuwunEHjFJ4ElUU7iC0utl8=;
 b=B148q5PapjDx2//cGLqL+TIpI2SuYehGhcrqTEXzPfwIPkuupvc0X7HY9PpW1O7fAOZyVapoXAEmaPh6rt78V3lAOo5EIOOyjTChFgM6Z5+/I6r71yDZWNVXxnExQViVzRHkxHwY69ZpCuVBpJwnNC+8Yjj2tCpOi9SEn423Z15HjTESmKnyba2CSJrvh9HD7huqntdHoUDgoZccrxtPwn4qBHQDkO6aD3FQWJDRrLJl+Xot4Ke8ARL4rIvN/zd3R3ikNXO3H+jwSam1nVWVEZGbwxAypmv8j6qYpnPuCO81lPF7YcqksSOzUTFIs2OLgvUmZL1SqrC4HC8v2TIQAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8QJIBIebUXvgU3ttWthIfuwunEHjFJ4ElUU7iC0utl8=;
 b=taxAQTf7+cgNI5co0zN/MiEBAHfoVzF40gMCxRDI6eLJGoLFdJLwDrRR6eIj4V0mdYezObpidXqVQ4ELeMa+g7dP30RGfS2v7OGJEUHY+fhfmAy1byZ+McxomAaK0nXlJE/xv0ILSfhkC/I/Dhdd8gQWzeN100EXI1SFi5xDar0=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5589.namprd11.prod.outlook.com (2603:10b6:8:26::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4778.11; Wed, 8 Dec 2021 08:05:34 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4778.012; Wed, 8 Dec 2021
 08:05:34 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 4/6] iavf: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2 hotpath
Thread-Index: AQHX5X+4rSJS5spiHkSQJf28qLMFkKwoSZ3A
Date: Wed, 8 Dec 2021 08:05:34 +0000
Message-ID: <DM8PR11MB56212CAD9F53FCF8F0CF059BAB6F9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211130001604.22112-1-anthony.l.nguyen@intel.com>
 <20211130001604.22112-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20211130001604.22112-5-anthony.l.nguyen@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 86b2a383-78b1-4fdf-7582-08d9ba218303
x-ms-traffictypediagnostic: DM8PR11MB5589:EE_
x-microsoft-antispam-prvs: <DM8PR11MB5589D9A9BA0B797126B57F1EAB6F9@DM8PR11MB5589.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KzgGUA8cgN0Fw5CLF6Sm16TEDv9XPq8GATy4wigRLXTWhoDD7l4F35E+fTWPX1HUZypTqHhqHDJVyC/TLW5YRwKbRiNcBAaxeBQ+hZfhBg64mp8sMOy4iv1o5MVp10er64ht1zVb3ZBtpdok1eUov81ke5LkfbNdByhBjLRbyJ8rajWq8CiR+I222ezP3OkZ54QRQh58+hDh3hMn7qUgOv/d+T4sj1Wst3Aq8zsQrtTQc4a7DEswaRSNvOa2GexNj+YoJ+IxLd4YjMh8TOAjfB7Qpwo9UqUV0+Md3suBf9eFUA5pV2FYxpTqEpoPpzwBmL0PTNtv+2sPaNwjT9OGg00Q2DJ0wrgd4LwwUI37rP2tqVsV0I801gDKi57CvIV60DuJb8JXGuuK2lkwB8XYGYyIU+i8rAOOM5BHAjULt8tRuwWCGYo2k2SyJVv01VgvE+oZSmjXTCTf2jRLboVjOvOf8D8XzxFnWGjP4e1QfX0cfhPJxzs/rJG7T8I0UBh3ZPEskkWZZSru3gMoEd/aO5Vrb9dcDfGzP0xlOE+nYGC6ZcSERSJa++LkhofTIFsET/tGGpixgGrrhoJGjlQJFumhHcnQqFMxKIPxQIUzEz7WpZHk8yPAsIxwZeF+hdJ3CmCH41fNZzMpnkO7AHh9lH89n27qJiNpIsjc0LVjO0DE+A+i/WwRtwcDjpso3G98Xz5k6lzdg3lyVi0XdETlAw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(76116006)(316002)(6506007)(2906002)(7696005)(8936002)(64756008)(66446008)(508600001)(66476007)(66556008)(5660300002)(110136005)(38100700002)(66946007)(186003)(8676002)(53546011)(38070700005)(26005)(83380400001)(55016003)(82960400001)(9686003)(122000001)(71200400001)(86362001)(52536014)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?m2DcYVytquG3UUKYE1toaN69ggj5bkcu7F/5X12ZxzKw0ZrYabSxfi4DUrrd?=
 =?us-ascii?Q?2j/Jqu9SEjGpDm1Vs6EseEwgTuiI+41IOIqgfvVUNQGF4qWUhyulP9XPvXe7?=
 =?us-ascii?Q?nrfHOUhf1p4mIeHKu56vvagnu416Wj1YIZIqc+QjIHwAGlHphe+HA9NTQqHJ?=
 =?us-ascii?Q?nIRigw+SxwyLNdBu80TYbLN/ibE2lBITNWJo09vwRg+1WQlbbXwGmR8fPnfN?=
 =?us-ascii?Q?8x2P86pmnOdu/He2RcQdKko72fb8knQPzFOtHCCtF+3qjqW8AgFXBBBVIHY4?=
 =?us-ascii?Q?GBmIpURJTnVgNfrsLbtmozwb3sX/7jETqmi+vxIX36YJdW7KuxrvFUUgta2M?=
 =?us-ascii?Q?77K2aoGoPNY9vm9XTT+gkgaH6bajVvOqZQVDnJ5YbOA1rhg8Cn8e5jfEIksS?=
 =?us-ascii?Q?AJv20U/aMFjxFwQaokeAvsOsms/zVpc4Tz4vshfam+8p3hihdLBj0UuMsKzu?=
 =?us-ascii?Q?4HGyf4buzHCHfah40Gh0oeJFR421zHzpIawr3fJBMgBI5VUqZVtXkF+UMpYL?=
 =?us-ascii?Q?8yQGbms+llaPbKzemBby8AEM9b1tk4U2XFaxWMJIYkcRBANMzPTB5MUloIhW?=
 =?us-ascii?Q?/UrQYaWA6qG2OC6tgRMffE+TbYFWBk9GLqjgNAC9nuDzz9VnyylHlLQ8jQvN?=
 =?us-ascii?Q?9SAH+d/r3rXKL/0tZTbA6RZCPsCVV3qEnLNMjftVypjF/DnKvXzrQosGwa4b?=
 =?us-ascii?Q?HbcN4E5OgobXITn+1Jl170fcr1C1xRAisTpMJRhfHv/bIeRQYIEl8e1fE6dt?=
 =?us-ascii?Q?BzRNYTNRM92NvacLxrgY5BU0ehWsTmSBcz2iZBIgVCNTDnQGPSTatImffIqp?=
 =?us-ascii?Q?6DGOuyPgh/EKfSM+OJCvcSVQs5dsYuJ8mdi2Vhg5DP4g1UDTM5YrrRXE/s5z?=
 =?us-ascii?Q?zZu73S4Qm2wVJLkAgNb1iNaYDnHGQo7NO+gPLEbUPm9oLC9s8d/W88QwxoKk?=
 =?us-ascii?Q?anCq4lwHK3J7ZO1GTw5HH+d5kYkPYurUUJPFtA9hgdvkoqzCuWGF/Cx6GIBK?=
 =?us-ascii?Q?WladtW/B8a+i/tgitI9oHNbauCPr9RvPr29Ai9vZ953zVB927/G7tNBsu6p4?=
 =?us-ascii?Q?ZHt0dvfIRBCA7BkyNUk7E8maybKvZxrckUq/3BvwAapn1+sVF4Uq+ghIeKZ2?=
 =?us-ascii?Q?X+9b5ku+AU/p6fuFyAw6iXAi/ck44kDMdnQw/Nw1sru+3cEuCjc+WQAt+mBg?=
 =?us-ascii?Q?bub2pjatq32ykroGhBRcr1A2iAlrL3FGjbNhY/Fv8dRxLYMIkgq0bZGCdlk2?=
 =?us-ascii?Q?YI3U0Uui8TBVwUaf1NppT1JNRUFz4m8p5O55dEBC/DF8XiUJVmFkwe5y5wa8?=
 =?us-ascii?Q?4kVeFD0TrGKWgn2lHhuchYVl7xU/eLQVG9nSCq6uxk2vedJkV1X8vwgmMVl8?=
 =?us-ascii?Q?LB1P+72WfAOCjdwkoiVLyjo4EeUr3h5PEAZktVFnTCaIlbSrx1pRiQPcmhhU?=
 =?us-ascii?Q?F3mt+9R53DHBAcMEzRKrM71a2MqHVsIeSB9yNUIaGnr3x8sGW7B+DzV1fFeI?=
 =?us-ascii?Q?xtqu08Az+Z0jCpDHwVcsdqcNgYoGLRFLOh0S4rEh6BPj1a+ChzNmyvD7WMhs?=
 =?us-ascii?Q?r5Mm+/zeObmbshMB9O+ermy8ViC2mJytVLFJ0d1s8GoKejjiBasF9KyxFqng?=
 =?us-ascii?Q?PKDYLhaKwtRT17KKp9MHI/OLZhc0CCCpnAIUwTplOuAkpoqWMez70gnTfLBA?=
 =?us-ascii?Q?9yKo0Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86b2a383-78b1-4fdf-7582-08d9ba218303
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2021 08:05:34.3299 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /st+rCteAkMhC9UwfdkNfM7i95h8rTjmTTI0jEmajKEo406Jx/lQxU2ZVBuGfUXjLIRfd9rtKu23TwRbdua44nNO9aRnX/+wBdQ2fQr5PMw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5589
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/6] iavf: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2 hotpath
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
> Tony Nguyen
> Sent: wtorek, 30 listopada 2021 01:16
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v2 4/6] iavf: Add support for
> VIRTCHNL_VF_OFFLOAD_VLAN_V2 hotpath
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> The new VIRTCHNL_VF_OFFLOAD_VLAN_V2 capability added support that
> allows the PF to set the location of the Tx and Rx VLAN tag for insertion and
> stripping offloads. In order to support this functionality a few changes are
> needed.
> 
> 1. Add a new method to cache the VLAN tag location based on negotiated
>    capabilities for the Tx and Rx ring flags. This needs to be called in
>    the initialization and reset paths.
> 
> 2. Refactor the transmit hotpath to account for the new Tx ring flags.
>    When IAVF_TXR_FLAGS_VLAN_LOC_L2TAG2 is set, then the driver needs
> to
>    insert the VLAN tag in the L2TAG2 field of the transmit descriptor.
>    When the IAVF_TXRX_FLAGS_VLAN_LOC_L2TAG1 is set, then the driver
> needs
>    to use the l2tag1 field of the data descriptor (same behavior as
>    before).
> 
> 3. Refactor the iavf_tx_prepare_vlan_flags() function to simplify
>    transmit hardware VLAN offload functionality by only depending on the
>    skb_vlan_tag_present() function. This can be done because the OS
>    won't request transmit offload for a VLAN unless the driver told the
>    OS it's supported and enabled.
> 
> 4. Refactor the receive hotpath to account for the new Rx ring flags and
>    VLAN ethertypes. This requires checking the Rx ring flags and
>    descriptor status bits to determine the location of the VLAN tag.
>    Also, since only a single ethertype can be supported at a time, check
>    the enabled netdev features before specifying a VLAN ethertype in
>    __vlan_hwaccel_put_tag().
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  1 +
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 82 +++++++++++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 71 ++++++++--------
>  drivers/net/ethernet/intel/iavf/iavf_txrx.h   | 30 ++++---
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  2 +
>  5 files changed, 135 insertions(+), 51 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 5fb6ebf9a760..2660d46da1b5 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -488,6 +488,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
