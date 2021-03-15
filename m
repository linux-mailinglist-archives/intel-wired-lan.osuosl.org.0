Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D5733AD34
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:20:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAA4A4AD51;
	Mon, 15 Mar 2021 08:20:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pyegoc1uFcEk; Mon, 15 Mar 2021 08:20:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 154AE45F30;
	Mon, 15 Mar 2021 08:20:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E52E81BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D2EF94016C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id seWfVdzIgBow for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:20:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B691A40146
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:20:16 +0000 (UTC)
IronPort-SDR: obw8czaoDmh0V0jFkWhZtkqbgxNGtjXwNmOvHnwb6tyQjZUEEAGLaDPo9PBbOl5SFABRZY8lwS
 5vNAAHegBiHg==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="168967209"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="168967209"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:20:16 -0700
IronPort-SDR: aXO0nDCsFaXrigQ0Di4jY3gBBsajmfhr4yJnB4rzK+3tbyt8vDLY05m8sy/gChZfMRHv4/Q5sh
 MGNTMDjXio8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="522079682"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 15 Mar 2021 01:20:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:15 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:15 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:20:15 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SOeGugTI6KIaFj6Z0mIrmnxoNHiz4nZmrxOhdj8LFaQR/e77EOtblXkkekc5vKDkGr7LC/dXgPCJgLd47mDqWzkKw8Tt8kf11ZAJKFl3Lr1U3xJuRXRnP5SR3UaKyuOH+8HSxbo+ZVGK26gl0cDPKS0PjJ/Ei3iQRU4WRQB3Cy4mFBqXxXaJEyRvNONKdhc0exdbWyevBOYzW5ViUM6urdNai/x4B5J9HV0dhHY1AvWSxmDvhxjbuKUt7VRYJ7O0m8eRyh+6V674252lK2fG9i1D3zsYCfhMDkpR4QBsKqda02NJJLSkrSwmfkkxV2m14xOqW8e640hs04cr6Ilb6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qUgLN3Dl16QSo/szdZG7q0Z3ha5fqByChxHOxt2WZd8=;
 b=Hz+i8PkjhDZLfaVV+5pEeLcc8qJnUiryKI5iVY6u/Z4MYKhI6KntwkGIi1ddRAvblOXRzj8GFRJzG/SPo1jDuxBEMh6XFfm1pBVnH99+9hgiYOfkHiCOTW7+soX18XZ/5vsBGSj1ZyhKwyq1JaezpMuxSyi/2JeHNvzeH5rGrZkE44zC9sE26RcOjChs5rL+Eiz/liJauilYKcZVdJDy36d6NEPCZfD3P59INhPgYFDXu0YEbh6nXqG8slAWVK5lu8PFBa1PpNks7R4Fk995i/pxQHAIH7aGyCoTvFQM8PiB/KdUl/QOT5LgramDVLUvGIcDDTcuDArogqhymBx85Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qUgLN3Dl16QSo/szdZG7q0Z3ha5fqByChxHOxt2WZd8=;
 b=IJPzihpaI0Ck6B8XqB0ccHrqnAaUn9f+QAfYnI7EX8379L2kv7/CwhYIrJJX1CfQVI1oAi1zOOgJwJkeXzP1kp5O6uLzH+I5riuHPMKbkVH9Ua408lovE5V+jVtT3pDLBERYrgCeyymNTDJjCMzcsDi45jCgnN3yvVSBlfALIFQ=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM6PR11MB3260.namprd11.prod.outlook.com (2603:10b6:5:b::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3933.32; Mon, 15 Mar 2021 08:20:10 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:20:10 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 07/18] ice: Enable FDIR Configure
 for AVF
Thread-Index: AQHXFJQVwm7GqGdjt0iSpUQtS4REfaqEvlZQgAAAaQA=
Date: Mon, 15 Mar 2021 08:20:09 +0000
Message-ID: <DM6PR11MB30990A21137B235832A0901FD96C9@DM6PR11MB3099.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-8-haiyue.wang@intel.com>
 <BN8PR11MB3795F68FC7D640CD383ECE88F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB3795F68FC7D640CD383ECE88F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 932a4d25-1b21-486b-d872-08d8e78b2687
x-ms-traffictypediagnostic: DM6PR11MB3260:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3260958842D4C8C2837D9A2ED96C9@DM6PR11MB3260.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xdkaDfZ4ETCl8aGfdLR6KzNvYIIC/mYi491rqgfGwmQV7ucxcaQob88C2qV82RlS5lvZ1qAuOXK04A/Vdx7LOvfb4YkNIXMOQXvxSM9zPfMMi5rRxrxkjn4Tfc0m8qAE3KWIhre4W4Bf6GnPAHsUMOy7dEB4VaWxgchaRCz2IogsQbBOh669ISL7/FW4KYv9Y6SNLT8qHtJGnHlXF9PetpuU2EjcRqB1Bd0PlyWqP5eeF3FrJWb4lFee2cy7d/drRJvniZyumMg1antDuNEPbdmTbsEKK6NZVsap4Fmk7GXo9Q26ZbkH6afnv1vlgY29QU7VkAIjc3YrVNtoCz7m2BvyqU4nSGIDG0Rg/CX+28dzFi7O5vr9tDWGLoj7mUi7nZ45F5KVhTOFhv8qIU4RfrOMI/Bikh6B7aa8iCA7pmFt5qEEQRQuD+hI2Nnh13oC/LeHQhvFc2db1myleSuNuy8nTIZXGT2zaLlYXf8DIoBougLr6KwFkOyAOjUxG/7SMRY1BEOumm9MnJA30KvhwXTRxCZR0zPLv1vwYKUgNjCU9qFjGuepvX2RqsZ8T65wm3eV3f3KmyypRFOu56G2lGduRLjLAoTY4WJ10TMRnglARXsgztIeMb+vYeoW6+W+CqwXHt4qVmhWfWxPa7GKQg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(366004)(39860400002)(136003)(346002)(76116006)(64756008)(66946007)(7696005)(66556008)(66476007)(186003)(966005)(5660300002)(83380400001)(8936002)(66446008)(8676002)(107886003)(52536014)(53546011)(316002)(478600001)(86362001)(55016002)(33656002)(9686003)(2906002)(6506007)(4326008)(26005)(54906003)(110136005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?Xf9U8bLVqXJHWkNp0mBr/8lhkHS6ziQGGNIo8WPeFTthVdvWUv1Hg5vGI7H5?=
 =?us-ascii?Q?Wt0uOv1f06Tp5LscSNFSDxpEIKxrbzB1xoFayVJAkzjO+vAlLpt6FmDHAFnW?=
 =?us-ascii?Q?6ORbUvxEdeEUsSlVgpBWs3S8DrStCNyM33ZbdG1OT2h0lCpstxJzCL9yHoCb?=
 =?us-ascii?Q?gtn7phskutzd7jZg/cak+Chn8042WIEpKN5xiYQGZiofi6aGZ3MD3ts2dGBN?=
 =?us-ascii?Q?zD8V6UYr9YX3s73WZZiMtjWucQdVmUdDSrIidJ8LwT9JVuM5daznOHFdPpni?=
 =?us-ascii?Q?c0UcidMiRqkZBIvYS+VH1s27UqRCdHUM4m6BVL6MzTKbuY09Ckgk9OFmddJg?=
 =?us-ascii?Q?vfwYOAXEQLc8+AkvzCZcUE5wWIQE4rocMv3of8zFaD0t40L/Bbww0KsNm4t9?=
 =?us-ascii?Q?xhZltKGcVW55hy9FQO5cuJ7VUgg5BDCUm3FmoOM223BdnjXSDDXhN7N5Ezde?=
 =?us-ascii?Q?ecpLPF+/9xDqVjuHjbmC5Ael96spF3U8481awTwaPmIkEdAAWYh7sxgwy72R?=
 =?us-ascii?Q?KwyFwwh1tb+oT2dWpkmnjG3hlKPTNLoQsd3746+/BG3Hj8HeIRO8rvgsfZff?=
 =?us-ascii?Q?EF0l2gj4P3lwm0txrYhLFTB0PPThMoYwL0SbHQfZOXZyDEWldUREyj2iLOVq?=
 =?us-ascii?Q?w7jQVGA8im3osaXhFX8TLGcaH1uhSN76X1V7oArpI3OTkdVqtqCH4Jtbt6to?=
 =?us-ascii?Q?NQBjtlkJ8PxA++83CNbVnrJE1CvjPfYcC9FCY/xJA20L1pVboGEuCH7ydwCk?=
 =?us-ascii?Q?ijDq5ljXBW7aCnYiXQ0baHUtiOV+b2tkr+BtsVNHWgvdUgc2h9atelWMtxlr?=
 =?us-ascii?Q?8oxmV2b+4x4tOZLg5Z3HhetmWeq6b/1Zl3sf+aUcOs8miL5QAk1FFWIqUPhi?=
 =?us-ascii?Q?UFfN5cYGxmU+qM4Ov05uGXEkm+BIVPpMM1ySGQpqeaKG1mMN8eF6db5ViMl/?=
 =?us-ascii?Q?4A3bRnQ2TFSV+vohtY5RtgWwOrsY9ONm3D6S2wPl9O9uYhlYybYBZuUPVCVr?=
 =?us-ascii?Q?oLnLMO3i4kj2t9NqhA8UabxCYfjKX+UTcTwZvkRUJ3X7PcFWzCRzZYW6Q9+/?=
 =?us-ascii?Q?JEVUwVgGJCIeT421k/BQU7D6VLhhwGYPBvHHaxaElbfEmF9UozTdZ40txoF7?=
 =?us-ascii?Q?SzE8RIRW+Ca0i7d15MEGU1VV4F1XlHPPG1vbaaZ/nFUL/6MqdcHSGBN/gYFr?=
 =?us-ascii?Q?AgyJe32gqILWmJuDrEPmmtk5mb99ZPbPTuIZZxIcTG3CWxBkzI6fgYX6pU9K?=
 =?us-ascii?Q?I9VZmfZaxK9wDI82k4TOzkbiV/fZNk+lEMCsv4j6Sws1QizJ079XFmBw3ka2?=
 =?us-ascii?Q?ZR8NjzFi3ShApQitM9WBz4vf?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 932a4d25-1b21-486b-d872-08d8e78b2687
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:20:10.4323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CDBhtkeSRokosXAjnXLAy8kbJGZQvx6K0PvBTXkv/AX7dDwL7W7AK91t8gBkDVREprEwG21reEbPgOjAsWFaEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3260
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
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 15, 2021 16:19
> To: intel-wired-lan@lists.osuosl.org
> Cc: Su, Simei <simei.su@intel.com>; Guo, Jia <jia.guo@intel.com>; Liang,
> Cunming <cunming.liang@intel.com>; Cao, Yahui <yahui.cao@intel.com>;
> Zhang, Qi Z <qi.z.zhang@intel.com>; Xing, Beilei <beilei.xing@intel.com>;
> Chen, BoX C <box.c.chen@intel.com>
> Subject: RE: [Intel-wired-lan] [Patch v5 07/18] ice: Enable FDIR Configure for
> AVF
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Haiyue Wang
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Su, Simei <simei.su@intel.com>; Guo, Jia <jia.guo@intel.com>;
> > Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui
> > <yahui.cao@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; Xing,
> > Beilei <beilei.xing@intel.com>
> > Subject: [Intel-wired-lan] [Patch v5 07/18] ice: Enable FDIR Configure
> > for AVF
> >
> > From: Qi Zhang <qi.z.zhang@intel.com>
> >
> > The virtual channel is going to be extended to support FDIR and RSS
> > configure from AVF. New data structures and OP codes will be added,
> > the patch enable the FDIR part.
> >
> > To support above advanced AVF feature, we need to figure out what kind
> > of data structure should be passed from VF to PF to describe an FDIR
> > rule or RSS config rule. The common part of the requirement is we need
> > a data structure to represent the input set selection of a rule's hash
> > key.
> >
> > An input set selection is a group of fields be selected from one or
> > more network protocol layers that could be identified as a specific flow.
> > For example, select dst IP address from an IPv4 header combined with
> > dst port from the TCP header as the input set for an IPv4/TCP flow.
> >
> > The patch adds a new data structure virtchnl_proto_hdrs to abstract a
> > network protocol headers group which is composed of layers of network
> > protocol header(virtchnl_proto_hdr).
> >
> > A protocol header contains a 32 bits mask (field_selector) to describe
> > which fields are selected as input sets, as well as a header type
> > (enum virtchnl_proto_hdr_type). Each bit is mapped to a field in enum
> > virtchnl_proto_hdr_field guided by its header type.
> >
> > +------------+-----------+------------------------------+
> > |            | Proto Hdr | Header Type A                |
> > |            |           +------------------------------+
> > |            |           | BIT 31 | ... | BIT 1 | BIT 0 |
> > |            |-----------+------------------------------+
> > |Proto Hdrs  | Proto Hdr | Header Type B                |
> > |            |           +------------------------------+
> > |            |           | BIT 31 | ... | BIT 1 | BIT 0 |
> > |            |-----------+------------------------------+
> > |            | Proto Hdr | Header Type C                |
> > |            |           +------------------------------+
> > |            |           | BIT 31 | ... | BIT 1 | BIT 0 |
> > |            |-----------+------------------------------+
> > |            |    ....                                  |
> > +-------------------------------------------------------+
> >
> > All fields in enum virtchnl_proto_hdr_fields are grouped with header
> > type and the value of the first field of a header type is always 32 aligned.
> >
> > enum proto_hdr_type {
> >         header_type_A = 0;
> >         header_type_B = 1;
> >         ....
> > }
> >
> > enum proto_hdr_field {
> >         /* header type A */
> >         header_A_field_0 = 0,
> >         header_A_field_1 = 1,
> >         header_A_field_2 = 2,
> >         header_A_field_3 = 3,
> >
> >         /* header type B */
> >         header_B_field_0 = 32, // = header_type_B << 5
> >         header_B_field_0 = 33,
> >         header_B_field_0 = 34
> >         header_B_field_0 = 35,
> >         ....
> > };
> >
> > So we have:
> > proto_hdr_type = proto_hdr_field / 32
> > bit offset = proto_hdr_field % 32
> >
> > To simply the protocol header's operations, couple help macros are added.
> > For example, to select src IP and dst port as input set for an
> > IPv4/UDP flow.
> >
> > we have:
> > struct virtchnl_proto_hdr hdr[2];
> >
> > VIRTCHNL_SET_PROTO_HDR_TYPE(&hdr[0], IPV4)
> > VIRTCHNL_ADD_PROTO_HDR_FIELD(&hdr[0], IPV4, SRC)
> >
> > VIRTCHNL_SET_PROTO_HDR_TYPE(&hdr[1], UDP)
> > VIRTCHNL_ADD_PROTO_HDR_FIELD(&hdr[1], UDP, DST)
> >
> > A protocol header also contains a byte array, this field should only
> > be used by an FDIR rule and should be ignored by RSS. For an FDIR
> > rule, the byte array is used to store the protocol header of a
> > training package. The byte array must be network order.
> >
> > The patch added virtual channel support for iAVF FDIR add/validate/delete
> filter.
> > iAVF FDIR is Flow Director for Intel Adaptive Virtual Function which
> > can direct Ethernet packets to the queues of the Network Interface Card.
> > Add/delete command is adding or deleting one rule for each virtual
> > channel message, while validate command is just verifying if this rule
> > is valid without any other operations.
> >
> > To add or delete one rule, driver needs to config TCAM and Profile,
> > build training packets which contains the input set value, and send
> > the training packets through FDIR Tx queue. In addition, driver needs
> > to manage the software context to avoid adding duplicated rules,
> > deleting non-existent rule, input set conflicts and other invalid cases.
> >
> > NOTE:
> > Supported pattern/actions and their parse functions are not be
> > included in this patch, they will be added in a separate one.
> >
> > Signed-off-by: Jeff Guo <jia.guo@intel.com>
> > Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> > Signed-off-by: Simei Su <simei.su@intel.com>
> > Signed-off-by: Beilei Xing <beilei.xing@intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/Makefile       |    2 +-
> >  .../net/ethernet/intel/ice/ice_ethtool_fdir.c |    4 +
> >  drivers/net/ethernet/intel/ice/ice_fdir.c     |    6 +-
> >  drivers/net/ethernet/intel/ice/ice_fdir.h     |    5 +
> >  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |    2 +
> >  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 1034 +++++++++++++++++
> >  .../ethernet/intel/ice/ice_virtchnl_fdir.h    |   24 +
> >  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   17 +-
> >  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |    6 +
> >  include/linux/avf/virtchnl.h                  |  278 +++++
> >  10 files changed, 1372 insertions(+), 6 deletions(-)  create mode
> > 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> >  create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h
> >
> 
> Re-send to Bo, as a new member.
> 

Tested-by: Chen Bo <BoX.C.Chen@intel.com>

BRs,
Chen Bo

> > --
> > 2.30.1
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
