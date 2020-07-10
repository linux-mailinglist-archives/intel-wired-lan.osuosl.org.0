Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6420221BF2B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 23:27:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 10E5F89E89;
	Fri, 10 Jul 2020 21:27:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VHqPJBWAhwIU; Fri, 10 Jul 2020 21:27:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 86D3589E86;
	Fri, 10 Jul 2020 21:27:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 56B861BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:27:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4BE5B89C2F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:27:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1k9mWENa44vv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 21:27:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0218489C12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:27:34 +0000 (UTC)
IronPort-SDR: 2HImwMiDOb4qlKzmX38jNuVtr4++fTBHkHmZqGuNLnAAMtUZbzrMsOHvj4RPWU52qJYO7OyY9L
 ebjj6qUeGU3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="166383067"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="166383067"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:27:34 -0700
IronPort-SDR: Gj1+ysC74o/9xFkx9hA2NfaiVSD2EHfK0HUz93ATQp9f5FB/3DTLrf5raLZOVsZM/WXN9ZT3ul
 +f7lxXmx/TeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="428682767"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga004.jf.intel.com with ESMTP; 10 Jul 2020 14:27:34 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:27:33 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX154.amr.corp.intel.com (10.18.116.70) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:27:33 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 10 Jul 2020 14:27:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GuyG6/bydliD34BX9hOBFStqO3RxI/PorfpBRmOXtaKm49D543xfq7VMXOlGz/LPwBu6KiTwSUJ2UJcmJClsBcgcYaQ7ZRpikVp4eWmouYkur+Z7KfL3OSM7h1yocZWNxhAcU9bfewtWsaDvrtbRx5yF5iN2WrfyW4hFQ6Aa5dN4AUxYDLKCfnBXSmTprUAdFEmXp9BPyD5msOVT+3V/tHPMi9TJAGLRdVTXOSVvlNXlaUURqnkXzTw5cKZReNRDS9JitTWT0dGb2Gac7yKOr+TmwRmzuypXg4NYwcHzkde7QimoDN7xM3afbrJ8b9GQUkzvCqIZoVcFnu95foeH/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aSCw/3tSrWyizkatjw0kfSdS2S5cU9tTpjvcTvYPUWE=;
 b=FCYFq/KxMb16Jeq0ShB2WfudmnjrW1vlPdbdQnz3mJpai++PNHM1/JYV3SfqwAk6llpPjEAPzRyMQAu+xSQOBRI7jDTLkb3ii5hbvA89lLOqdFpPd4l+yWsRAlyMpNGD8697O7FQqID9lrLTLg2ZKgYw4lqar46rLyYPBJJbcXi9cr2jvLiPKQkxkBAHpS4adpSLsyQw7yPdVqLbIOzGMGUwGSj4+KDV8hnJMqbwGTzSWud03ULPFlDQPrvAf6CSh9y6lvx6jztulfeyP3hAOXx+XI7HhPPjdSDYowvYUqTiEsq70cXvL6Ya4ht6hxYX+hzBH/0lPlFn79EaW1Je+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aSCw/3tSrWyizkatjw0kfSdS2S5cU9tTpjvcTvYPUWE=;
 b=Nua6U7mKP6uhZthgHg2/JrFdY6pzZBea2y/9BjTA9PlFO8/m5uTdRC5ScMTJh6Uc1dL+nXqhPyrK7x9tLsv94Yzo9oKrDhFsYhgInyeJRe/Td8dcxTf4NqeVCvHAmpSoek+hQm4Qu4eVr9zc0L00OWtJioHskUXAzbZm1zJREi4=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3604.namprd11.prod.outlook.com
 (2603:10b6:408:83::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Fri, 10 Jul
 2020 21:27:32 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 21:27:32 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v5 07/16] ice: Enable RSS Configure
 for AVF
Thread-Index: AQHWVlX0t9SCQeQxx0epwZxNJdd/nKkBVRGQ
Date: Fri, 10 Jul 2020 21:27:32 +0000
Message-ID: <BN6PR1101MB21458D983BFB372E31995C1B8C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
 <20200710010644.33817-8-qi.z.zhang@intel.com>
In-Reply-To: <20200710010644.33817-8-qi.z.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 105cf9a9-1dde-4e47-223a-08d825180e76
x-ms-traffictypediagnostic: BN8PR11MB3604:
x-microsoft-antispam-prvs: <BN8PR11MB3604BF467B81039D6B18299D8C650@BN8PR11MB3604.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3wC+CejClagvgBaJouCP9ljdygPfaHpVNlH/wYHUiAQfXtNZTcZewQvRYRMVjnUA0ZXWkrJqaC8RLqvchp/TkCBa75lIBwPfUR/XjkMncH0iRlxBR3O8DH06YTZW3kDUAjQnxBb5gfaxih09Xd9tXY/R0k0dDlpKzX33qDIQA+jyiyCqyRFlcVBofeeQLKxfmYqKsDaedMuT8dItIbvavaZmP+0V7x5Ry67cVifAWfRXvr10GPhVGjMFpowsMMGyKxvZ3WU5pX5J8PNf8lWcquWpfL3mReiNevak54HfqeADtRIfgxY/0DcPHEnSafY/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(186003)(7696005)(33656002)(6916009)(71200400001)(5660300002)(83380400001)(52536014)(53546011)(9686003)(55016002)(64756008)(66446008)(26005)(6506007)(478600001)(66476007)(66946007)(66556008)(2906002)(316002)(8936002)(86362001)(8676002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: NXcHBQ9y8Wh0LUDPjcf2D8E5/tXU9fd1dMXAZf7EwW48o5X/+gEx9wP3xi6ddJGpEr/dQz2Xz/MFgErdDuTkiArHVPKYA9ifszeP4/rCNQeFoNvU3P4vmXydzFwt9ro8Pck64ZbApV0JkP6PLoOHv3BScRadY02Iblo/PIyCQJUGTaDvfCmZOAmvYALGuYQ7j1/nDkkV8W0inJBLOQRrKKZ/E+Btcdh/r994dHbHblzyA8dZCe/b5AnJ0V/aESJCRHUKLE8JhmFAh4Kvvwxu+xvavd3l3BR5JCMfLyX9SyKppvJTl6jZeMTbd7cxOdU15NsZ8F+bTtbuSZw7NrsFWKOAX1m/mSFGq9ZkPY+0bpw/xjyyG60fvtGPdRmwkMzrwdlvRQPeFBjv1WKpBq2GSTrmGZCOWaojIFJw3/UDfKTV66yRu2v8x2OZF00H2YEU6NvpIMuKEBZR1bGd3YLMkeUCV8BU16W+MutgK38GrV83Y5QLQl3lAIe02YPqAWHf
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 105cf9a9-1dde-4e47-223a-08d825180e76
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 21:27:32.3061 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abJLWlTVw2kT8oK0dQiF4xjNSJsMq0Oi7mm4ExuKDXJGBOYXn4Q02OXgfAPYNJGQ5EcUGxdmg89Ua0GIJD+c1qp3YNatc2DFd/xUIqgzRwY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3604
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v5 07/16] ice: Enable RSS
 Configure for AVF
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 9, 2020 6:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v5 07/16] ice: Enable RSS Configure for
> AVF
> 
> The virtual channel is going to be extended to support FDIR and RSS
> configure from AVF. New data structures and OP codes will be added, the
> patch enable the RSS part.
> 
> To support above advanced AVF feature, we need to figure out what kind of
> data structure should be passed from VF to PF to describe an FDIR rule or RSS
> config rule. The common part of the requirement is we need a data structure
> to represent the input set selection of a rule's hash key.
> 
> An input set selection is a group of fields be selected from one or more
> network protocol layers that could be identified as a specific flow.
> For example, select dst IP address from an IPv4 header combined with dst
> port from the TCP header as the input set for an IPv4/TCP flow.
> 
> The patch adds a new data structure virtchnl_proto_hdrs to abstract a
> network protocol headers group which is composed of layers of network
> protocol header(virtchnl_proto_hdr).
> 
> A protocol header contains a 32 bits mask (field_selector) to describe which
> fields are selected as input sets, as well as a header type (enum
> virtchnl_proto_hdr_type). Each bit is mapped to a field in enum
> virtchnl_proto_hdr_field guided by its header type.
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
> For example, to select src IP and dst port as input set for an IPv4/UDP flow.
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
> A protocol header also contains a byte array, this field should only be used by
> an FDIR rule and should be ignored by RSS. For an FDIR rule, the byte array is
> used to store the protocol header of a training package. The byte array must
> be network order.
> 
> Signed-off-by: Jeff Guo <jia.guo@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.h        |   3 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 454
> +++++++++++++++++++++++
>  include/linux/avf/virtchnl.h                     | 186 +++++++++-
>  3 files changed, 635 insertions(+), 8 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
