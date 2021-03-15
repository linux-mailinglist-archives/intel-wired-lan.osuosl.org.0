Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EEE33B6FE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 15:00:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 49191430ED;
	Mon, 15 Mar 2021 14:00:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u7ydR5U8KJzX; Mon, 15 Mar 2021 14:00:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 811ED430EB;
	Mon, 15 Mar 2021 14:00:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9126F1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 07:59:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 79C6E44BD9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 07:59:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i_taWdUYllFm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 07:59:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 65C9F446A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 07:59:29 +0000 (UTC)
IronPort-SDR: DOiY5znOnmw/GbueU8hsFmpu3zmlxDzZ9J+AlFDMISBVlu0UfteOSlgGVHbTaQlLAb/ERb7y7X
 PAUqP6b+MN1w==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="208948391"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="208948391"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 00:59:27 -0700
IronPort-SDR: DusYUEHFT5sIOsFP0yPCtd9XUmkh/X6cMp7txp51vLwIQFRrO5NfHX15aBVlDhhs76FeKMnBDe
 YCv/tIZEAUYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="388022761"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 15 Mar 2021 00:59:27 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 00:59:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 00:59:26 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 00:59:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A6MbPUpNDIE5EGvXST9DU3qKjG1VnHUmG6bu3L5DycijWFRCITUsLb7EV2ZLDAxUDdJH9Xd8MW0j77YHHNJmgHJKJiU5eFQSld/M+XCpGtFoGvwe2Q/G89trfKXenktPKK7dvNd57sQ+pQZFgtzT53614LivWzXg5/HFjzOI3xKjEXt0Wfg12r64tGGZ4q2gY1f1J4ixzmdQCabfe8lxyInCzoGAbsC52cPUDqQmNsKuZtc7f5D1Pa0gSoM4emlIWmsWsvu9ZYKG6QzOUNClnh0G3hqDa7+cV7Fpfr4a1RHZjfTJInYmfmGhs6qBAmbQPSyYPRSOqqTgug7bqvgabg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RuMODRryuw99FnWzjkIGgB+ZMhmbddrn5xnFzxmIoSU=;
 b=WN8OPj16ouh3lRg4PTUEJfC6bmju0dvieaDrFzzQnlB23zqjEriyaA66tTKOUJA4Lm20vVWBygdDJLVTLIhL3gsIXAjolc+pDFfyRlNN762Zh529T5HppRYu62OUEq5rQ/SwglZvaBV1h15ZHvumJAbls6h7WigjNanZVd/hgBo75cCPyA61qXhiMmDUu61QJIcqskZu1V3ft0srCnyQR49hEwLUEJVn4nthSBBRhwi7kOmTFEkMxy1nJRCRUFWSx0Erf/BsVgH9Y89lmpEUTeBinztPOtdo09qqRz8nwI90Mjhdnc3mbwsUcKOx4QyFUtXaYf3bOzzVJrLOG/v7Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RuMODRryuw99FnWzjkIGgB+ZMhmbddrn5xnFzxmIoSU=;
 b=B9apbTfdHmVsy9GvyA0tAevcPbFCRE86ArNhGPwcY9bu0lcVuZn+iVJKQIsch3XyLfJ43CwI1YGbtSRJ1Nk1el2Ciu+TJmZBFplx8/mH7TCr8dHJ8u1oVfBgJquCubcGkfG0HH6FrcYqb0nznkxrPK9zF8w2zCrM6d36Y33niM0=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM5PR11MB0043.namprd11.prod.outlook.com (2603:10b6:4:69::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3890.19; Mon, 15 Mar 2021 07:59:20 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 07:59:20 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 01/18] ice: Add more basic protocol
 support for flow filter
Thread-Index: AQHXFJQIWL7eR9OFcUihYcOkoSYe6KqEtP5wgAADaRA=
Date: Mon, 15 Mar 2021 07:59:20 +0000
Message-ID: <DM6PR11MB3099329BB5A927590FB08F99D96C9@DM6PR11MB3099.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-2-haiyue.wang@intel.com>
 <BN8PR11MB379501B38731F992A3B366A8F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB379501B38731F992A3B366A8F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d069cca-7943-4c23-caf9-08d8e7883d37
x-ms-traffictypediagnostic: DM5PR11MB0043:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB0043686C73D062E432FF8017D96C9@DM5PR11MB0043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ivfcZ7OhqTf81WwYN+BRplXmScU/Vfh1x5giULN38BszRpf7meVIV8spBsUXvp9Y+ps+4PDUU0VddQzT+MzgFarUG3BFq8U28RssZHyDst348+GQB+tSSDO4gQek0e8eN+kZBoqTtnLEpPosxrU5bHQfDX1I7xYY3+gJSU3XEFdvF5WGFPH4ki6UY1IXBqmHfGAyRTIsYPwTogQiT0LZakuPIb1T6t6BlBKM85PzR8hTw4OHqgndqKi+6UXoLTUk6+ZBEL2af23ZQqwkrlisPASgxW93AUJGomLCnX4FBfbFe0PtpSF7XRpHIRA1KDoITppKOsu6TtTm8H+a0G01GxapmzxOE7eMOVo/qOwW/euHp2LX4XZcmfrMVDWtHAvnfYS2//7hRRXbohD7Uo1ouma+SCbWsx8/ltoMXqXlgdqd9etwJPFHztw8nd+xzDt9wRJZWU92W2OW0bFO/q66u23SD4NSzGTBKNhG69HzsSHhBl5ImrpZEYSkHWVboOcZqK1M0qlmeL8/SVikq3oO175IPuLaX9rseRxS/EiIxmRgZL/czcz/t6Ele0IMTPMQdQwMcxQLPVgUlataLERoMYfC8tZaxJ/Jx+QAjujTXjU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(366004)(39860400002)(136003)(396003)(66446008)(53546011)(107886003)(2906002)(6506007)(7696005)(966005)(186003)(55016002)(26005)(33656002)(66946007)(9686003)(66476007)(64756008)(76116006)(478600001)(71200400001)(66556008)(110136005)(83380400001)(8676002)(5660300002)(86362001)(52536014)(8936002)(30864003)(316002)(54906003)(4326008)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?9L+AAgN4sWAPNTZZHJ4yvu0F5C2xLVVGepR0Iw0iWvMCIDBR/mkAvL1eBF4D?=
 =?us-ascii?Q?5n7U9S2CTzBcyV2vBHxhoGmMBvaAgO/4ktYugRksqUvdMnfV28br88BOYc6g?=
 =?us-ascii?Q?Ajaujgk+meEEsncvzYWnXcxuTrZCFdeL9z3q3mfIPAn0gxzU8lvTP+/HBLgO?=
 =?us-ascii?Q?spIFIROXbOAhkoi44WdvuCkiavCSeZqnt0ZAH7G8Z3yxCF0hoNjbijvuduta?=
 =?us-ascii?Q?Ppt7v8xU4gGZulut7O0usuR1j0B58U0Lh2VqMA0r1P+FvS35gSp6CPr20CnK?=
 =?us-ascii?Q?ZLOFKrN4CrBAC5NEx5TrriWcg5nm5LdgJFD+c3GpINgeaqRsvfXhW/M9TkYS?=
 =?us-ascii?Q?JDEV0tLs44XG5b2F8RwLHLSlyDdMLD0/P9qg/p/cCoLjD397uukwvcePJfCr?=
 =?us-ascii?Q?Qati3pMyw+GAPo0BdpQLopqUd0XBJUq+GuRWne5bEaWqp205ftHiz3B3NbwA?=
 =?us-ascii?Q?NLsj/mFJeq0OBRXo+XfBLFo1V99n2M8wLg6m2d5hT6CTKRB6BoPGHbnyhoAf?=
 =?us-ascii?Q?KvHu4y60/WFBtWQpbHgPkMRM7br/JHCpDBlNAESnOjRJ3plAf7A5omENWMgV?=
 =?us-ascii?Q?ERHuXdrTBNQ9QAAPt2BGeEJ4GrMim/b6MGl/Ud/NDACkXdp1uTReX8K8Hsck?=
 =?us-ascii?Q?jMPbKCZ/AEoY1lsw3qlt8SzJtJLfPOoxtIJh3M2ZTeaMoQXaq+F1XieuGaYa?=
 =?us-ascii?Q?aoudbQJzt/PKdugZIFpdLlJAfNz5tqUKPn1NhbPCo2I/Xa5kicdmwkckxYvV?=
 =?us-ascii?Q?Z3yJwTB9zG41DGBCLydY5uLcVePW7ognuWTg2h0uQPoEPFMz8vdrORYNlMHJ?=
 =?us-ascii?Q?x/MTsqm4+FEBp+8FH2fDYLd6AsrM16ewF82qNr7lz2zSl46BLQTPdNKvlaNg?=
 =?us-ascii?Q?G/Xn4pdVlAvttwr9ALROugGAkLuQXYCqjVJvDdz6KeR30lWUeTlGNXGdUac6?=
 =?us-ascii?Q?RoSbGpUOo9go/vJFjcEv+INulqQjYSYYCViDZ50+fxqgra3HxCWcYj/o3TgD?=
 =?us-ascii?Q?a8UrA6jngWchzXJZhFCmDUce87LUXRJKMUHCpfco/68+xi2H1OxTE/NlxWQJ?=
 =?us-ascii?Q?WiMeX5nu5c5/f0uVqwfPvFrNFGQY4xRZc5eIpHfz0s0riAdS9/Od4xrHnlDQ?=
 =?us-ascii?Q?GLckSnjbBdOHX5pZLOdPVxLRCtupyA4Fgji53QM9rhnI5l6WWwKxlhazKdHx?=
 =?us-ascii?Q?wRd0sYeve980CLkMO3U5M6a9hLArlOrxscDV5YLusVQ4GKlMKAmJ4y3Aj6r/?=
 =?us-ascii?Q?Je9zv6MT+ZSKvGrNtnNPL/TYZi8XggzRsxgIMDKcRR2R77TOtSSEfJNo3AyR?=
 =?us-ascii?Q?wREFM3RmBYWvIuBz8GNLqPhm?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d069cca-7943-4c23-caf9-08d8e7883d37
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 07:59:20.0520 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q2h2atM5xFxRHhOO8Z5p060cZLZV2dbt0TC4varhgmwCrZMApaHVYYFncuMLP660xnZUNJYX1Uv1jjHWyKhPtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0043
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 15 Mar 2021 14:00:10 +0000
Subject: Re: [Intel-wired-lan] [Patch v5 01/18] ice: Add more basic protocol
 support for flow filter
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>, "Scott, Kevin C" <kevin.c.scott@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 15, 2021 15:46
> To: Wang, Haiyue <haiyue.wang@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Scott, Kevin C
> <kevin.c.scott@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; Chen, BoX C
> <box.c.chen@intel.com>
> Subject: RE: [Intel-wired-lan] [Patch v5 01/18] ice: Add more basic protocol
> support for flow filter
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Haiyue Wang
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Liang, Cunming <cunming.liang@intel.com>; Scott, Kevin C
> > <kevin.c.scott@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>
> > Subject: [Intel-wired-lan] [Patch v5 01/18] ice: Add more basic
> > protocol support for flow filter
> >
> > From: Qi Zhang <qi.z.zhang@intel.com>
> >
> > Add more protocol and field support for flow filter include:
> > ETH, VLAN, ICMP, ARP and TCP flag.
> >
> > Signed-off-by: Kevin Scott <kevin.c.scott@intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_fdir.c     |  20 ++
> >  drivers/net/ethernet/intel/ice/ice_fdir.h     |   1 +
> >  drivers/net/ethernet/intel/ice/ice_flow.c     | 180 +++++++++++++++++-
> >  drivers/net/ethernet/intel/ice/ice_flow.h     |  20 ++
> >  .../ethernet/intel/ice/ice_protocol_type.h    |   6 +
> >  5 files changed, 221 insertions(+), 6 deletions(-)
> >
> 
> Re-send to Bo, as a new member.

Tested-by: Chen Bo <BoX.C.Chen@intel.com>

> 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c
> > b/drivers/net/ethernet/intel/ice/ice_fdir.c
> > index 59c0c6a0f8c5..1e77f43b3b3e 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_fdir.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
> > @@ -492,6 +492,16 @@ static void ice_pkt_insert_u32(u8 *pkt, int offset,
> __be32 data)
> >  	memcpy(pkt + offset, &data, sizeof(data));  }
> >
> > +/**
> > + * ice_pkt_insert_mac_addr - insert a MAC addr into a memory buffer.
> > + * @pkt: packet buffer
> > + * @addr: MAC address to convert and insert into pkt at offset  */
> > +static void ice_pkt_insert_mac_addr(u8 *pkt, u8 *addr) {
> > +	ether_addr_copy(pkt, addr);
> > +}
> > +
> >  /**
> >   * ice_fdir_get_gen_prgm_pkt - generate a training packet
> >   * @hw: pointer to the hardware structure @@ -580,6 +590,7 @@
> > ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
> >  				   input->ip.v4.dst_ip);
> >  		ice_pkt_insert_u16(loc, ICE_IPV4_TCP_SRC_PORT_OFFSET,
> >  				   input->ip.v4.dst_port);
> > +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> >  		if (frag)
> >  			loc[20] = ICE_FDIR_IPV4_PKT_FLAG_DF;
> >  		break;
> > @@ -592,6 +603,9 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw,
> struct ice_fdir_fltr *input,
> >  				   input->ip.v4.dst_ip);
> >  		ice_pkt_insert_u16(loc, ICE_IPV4_UDP_SRC_PORT_OFFSET,
> >  				   input->ip.v4.dst_port);
> > +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> > +		ice_pkt_insert_mac_addr(loc + ETH_ALEN,
> > +					input->ext_data.src_mac);
> >  		break;
> >  	case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
> >  		ice_pkt_insert_u32(loc, ICE_IPV4_DST_ADDR_OFFSET, @@ -
> 602,6 +616,7
> > @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr
> *input,
> >  				   input->ip.v4.dst_ip);
> >  		ice_pkt_insert_u16(loc, ICE_IPV4_SCTP_SRC_PORT_OFFSET,
> >  				   input->ip.v4.dst_port);
> > +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> >  		break;
> >  	case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
> >  		ice_pkt_insert_u32(loc, ICE_IPV4_DST_ADDR_OFFSET, @@ -
> 609,6 +624,7
> > @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr
> *input,
> >  		ice_pkt_insert_u32(loc, ICE_IPV4_SRC_ADDR_OFFSET,
> >  				   input->ip.v4.dst_ip);
> >  		ice_pkt_insert_u16(loc, ICE_IPV4_PROTO_OFFSET, 0);
> > +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> >  		break;
> >  	case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
> >  		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
> @@ -619,6
> > +635,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct
> ice_fdir_fltr *input,
> >  				   input->ip.v6.src_port);
> >  		ice_pkt_insert_u16(loc, ICE_IPV6_TCP_SRC_PORT_OFFSET,
> >  				   input->ip.v6.dst_port);
> > +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> >  		break;
> >  	case ICE_FLTR_PTYPE_NONF_IPV6_UDP:
> >  		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
> @@ -629,6
> > +646,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct
> ice_fdir_fltr *input,
> >  				   input->ip.v6.src_port);
> >  		ice_pkt_insert_u16(loc, ICE_IPV6_UDP_SRC_PORT_OFFSET,
> >  				   input->ip.v6.dst_port);
> > +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> >  		break;
> >  	case ICE_FLTR_PTYPE_NONF_IPV6_SCTP:
> >  		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
> @@ -639,12
> > +657,14 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct
> ice_fdir_fltr *input,
> >  				   input->ip.v6.src_port);
> >  		ice_pkt_insert_u16(loc, ICE_IPV6_SCTP_SRC_PORT_OFFSET,
> >  				   input->ip.v6.dst_port);
> > +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> >  		break;
> >  	case ICE_FLTR_PTYPE_NONF_IPV6_OTHER:
> >  		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
> >  					 input->ip.v6.src_ip);
> >  		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_SRC_ADDR_OFFSET,
> >  					 input->ip.v6.dst_ip);
> > +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> >  		break;
> >  	default:
> >  		return ICE_ERR_PARAM;
> > diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h
> > b/drivers/net/ethernet/intel/ice/ice_fdir.h
> > index 1c587766daab..31623545ebae 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_fdir.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
> > @@ -103,6 +103,7 @@ struct ice_fdir_v6 {
> >
> >  struct ice_fdir_extra {
> >  	u8 dst_mac[ETH_ALEN];	/* dest MAC address */
> > +	u8 src_mac[ETH_ALEN];	/* src MAC address */
> >  	u32 usr_def[2];		/* user data */
> >  	__be16 vlan_type;	/* VLAN ethertype */
> >  	__be16 vlan_tag;	/* VLAN tag info */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c
> > b/drivers/net/ethernet/intel/ice/ice_flow.c
> > index 89a0cef20506..89d0e20ee094 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_flow.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_flow.c
> > @@ -20,6 +20,17 @@ struct ice_flow_field_info {
> >  /* Table containing properties of supported protocol header fields */
> > static const  struct ice_flow_field_info
> > ice_flds_info[ICE_FLOW_FIELD_IDX_MAX] = {
> > +	/* Ether */
> > +	/* ICE_FLOW_FIELD_IDX_ETH_DA */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ETH, 0, ETH_ALEN),
> > +	/* ICE_FLOW_FIELD_IDX_ETH_SA */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ETH, ETH_ALEN,
> ETH_ALEN),
> > +	/* ICE_FLOW_FIELD_IDX_S_VLAN */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_VLAN, 12,
> sizeof(__be16)),
> > +	/* ICE_FLOW_FIELD_IDX_C_VLAN */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_VLAN, 14,
> sizeof(__be16)),
> > +	/* ICE_FLOW_FIELD_IDX_ETH_TYPE */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ETH, 0, sizeof(__be16)),
> >  	/* IPv4 / IPv6 */
> >  	/* ICE_FLOW_FIELD_IDX_IPV4_SA */
> >  	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_IPV4, 12, sizeof(struct
> > in_addr)), @@ -42,6 +53,24 @@ struct ice_flow_field_info
> ice_flds_info[ICE_FLOW_FIELD_IDX_MAX] = {
> >  	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_SCTP, 0, sizeof(__be16)),
> >  	/* ICE_FLOW_FIELD_IDX_SCTP_DST_PORT */
> >  	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_SCTP, 2, sizeof(__be16)),
> > +	/* ICE_FLOW_FIELD_IDX_TCP_FLAGS */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_TCP, 13, 1),
> > +	/* ARP */
> > +	/* ICE_FLOW_FIELD_IDX_ARP_SIP */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 14, sizeof(struct
> in_addr)),
> > +	/* ICE_FLOW_FIELD_IDX_ARP_DIP */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 24, sizeof(struct
> in_addr)),
> > +	/* ICE_FLOW_FIELD_IDX_ARP_SHA */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 8, ETH_ALEN),
> > +	/* ICE_FLOW_FIELD_IDX_ARP_DHA */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 18, ETH_ALEN),
> > +	/* ICE_FLOW_FIELD_IDX_ARP_OP */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 6, sizeof(__be16)),
> > +	/* ICMP */
> > +	/* ICE_FLOW_FIELD_IDX_ICMP_TYPE */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ICMP, 0, 1),
> > +	/* ICE_FLOW_FIELD_IDX_ICMP_CODE */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ICMP, 1, 1),
> >  	/* GRE */
> >  	/* ICE_FLOW_FIELD_IDX_GRE_KEYID */
> >  	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_GRE, 12, @@ -50,8
> +79,32 @@
> > struct ice_flow_field_info ice_flds_info[ICE_FLOW_FIELD_IDX_MAX] = {
> >
> >  /* Bitmaps indicating relevant packet types for a particular protocol header
> >   *
> > - * Packet types for packets with an Outer/First/Single IPv4 header
> > + * Packet types for packets with an Outer/First/Single MAC header
> >   */
> > +static const u32 ice_ptypes_mac_ofos[] = {
> > +	0xFDC00846, 0xBFBF7F7E, 0xF70001DF, 0xFEFDFDFB,
> > +	0x0000077E, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00400000, 0x03FFF000, 0x7FFFFFE0, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000, };
> > +
> > +/* Packet types for packets with an Innermost/Last MAC VLAN header */
> > +static const u32 ice_ptypes_macvlan_il[] = {
> > +	0x00000000, 0xBC000000, 0x000001DF, 0xF0000000,
> > +	0x0000077E, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000, };
> > +
> > +/* Packet types for packets with an Outer/First/Single IPv4 header */
> >  static const u32 ice_ptypes_ipv4_ofos[] = {
> >  	0x1DC00000, 0x04000800, 0x00000000, 0x00000000,
> >  	0x00000000, 0x00000000, 0x00000000, 0x00000000, @@ -111,6
> +164,18 @@
> > static const u32 ice_ipv4_ofos_no_l4[] = {
> >  	0x00000000, 0x00000000, 0x00000000, 0x00000000,  };
> >
> > +/* Packet types for packets with an Outermost/First ARP header */
> > +static const u32 ice_ptypes_arp_of[] = {
> > +	0x00000800, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000, };
> > +
> >  /* Packet types for packets with an Innermost/Last IPv4 header - no
> > L4 */  static const u32 ice_ipv4_il_no_l4[] = {
> >  	0x60000000, 0x18043008, 0x80000002, 0x6010c021, @@ -182,6
> +247,29 @@
> > static const u32 ice_ptypes_sctp_il[] = {
> >  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> >  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> >  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +};
> > +
> > +/* Packet types for packets with an Outermost/First ICMP header */
> > +static const u32 ice_ptypes_icmp_of[] = {
> > +	0x10000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000, };
> > +
> > +/* Packet types for packets with an Innermost/Last ICMP header */
> > +static const u32 ice_ptypes_icmp_il[] = {
> > +	0x00000000, 0x02040408, 0x40000102, 0x08101020,
> > +	0x00000408, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x42108000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> >  	0x00000000, 0x00000000, 0x00000000, 0x00000000,  };
> >
> > @@ -197,6 +285,18 @@ static const u32 ice_ptypes_gre_of[] = {
> >  	0x00000000, 0x00000000, 0x00000000, 0x00000000,  };
> >
> > +/* Packet types for packets with an Innermost/Last MAC header */
> > +static const u32 ice_ptypes_mac_il[] = {
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000, };
> > +
> >  /* Manage parameters and info. used during the creation of a flow
> > profile */  struct ice_flow_prof_params {
> >  	enum ice_block blk;
> > @@ -212,9 +312,11 @@ struct ice_flow_prof_params {  };
> >
> >  #define ICE_FLOW_SEG_HDRS_L3_MASK	\
> > -	(ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_IPV6)
> > +	(ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_IPV6 | \
> > +	 ICE_FLOW_SEG_HDR_ARP)
> >  #define ICE_FLOW_SEG_HDRS_L4_MASK	\
> > -	(ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_UDP |
> ICE_FLOW_SEG_HDR_SCTP)
> > +	(ICE_FLOW_SEG_HDR_ICMP | ICE_FLOW_SEG_HDR_TCP |
> ICE_FLOW_SEG_HDR_UDP | \
> > +	 ICE_FLOW_SEG_HDR_SCTP)
> >
> >  /**
> >   * ice_flow_val_hdrs - validates packet segments for valid protocol
> > headers @@ -243,8 +345,11 @@ ice_flow_val_hdrs(struct
> > ice_flow_seg_info *segs, u8 segs_cnt)
> >
> >  /* Sizes of fixed known protocol headers without header options */
> >  #define ICE_FLOW_PROT_HDR_SZ_MAC	14
> > +#define ICE_FLOW_PROT_HDR_SZ_MAC_VLAN
> 	(ICE_FLOW_PROT_HDR_SZ_MAC + 2)
> >  #define ICE_FLOW_PROT_HDR_SZ_IPV4	20
> >  #define ICE_FLOW_PROT_HDR_SZ_IPV6	40
> > +#define ICE_FLOW_PROT_HDR_SZ_ARP	28
> > +#define ICE_FLOW_PROT_HDR_SZ_ICMP	8
> >  #define ICE_FLOW_PROT_HDR_SZ_TCP	20
> >  #define ICE_FLOW_PROT_HDR_SZ_UDP	8
> >  #define ICE_FLOW_PROT_HDR_SZ_SCTP	12
> > @@ -256,16 +361,27 @@ ice_flow_val_hdrs(struct ice_flow_seg_info
> *segs, u8 segs_cnt)
> >   */
> >  static u16 ice_flow_calc_seg_sz(struct ice_flow_prof_params *params,
> > u8 seg)  {
> > -	u16 sz = ICE_FLOW_PROT_HDR_SZ_MAC;
> > +	u16 sz;
> > +
> > +	/* L2 headers */
> > +	sz = (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_VLAN) ?
> > +		ICE_FLOW_PROT_HDR_SZ_MAC_VLAN :
> ICE_FLOW_PROT_HDR_SZ_MAC;
> >
> >  	/* L3 headers */
> >  	if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_IPV4)
> >  		sz += ICE_FLOW_PROT_HDR_SZ_IPV4;
> >  	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_IPV6)
> >  		sz += ICE_FLOW_PROT_HDR_SZ_IPV6;
> > +	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_ARP)
> > +		sz += ICE_FLOW_PROT_HDR_SZ_ARP;
> > +	else if (params->prof->segs[seg].hdrs &
> ICE_FLOW_SEG_HDRS_L4_MASK)
> > +		/* A L3 header is required if L4 is specified */
> > +		return 0;
> >
> >  	/* L4 headers */
> > -	if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_TCP)
> > +	if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_ICMP)
> > +		sz += ICE_FLOW_PROT_HDR_SZ_ICMP;
> > +	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_TCP)
> >  		sz += ICE_FLOW_PROT_HDR_SZ_TCP;
> >  	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_UDP)
> >  		sz += ICE_FLOW_PROT_HDR_SZ_UDP;
> > @@ -298,6 +414,24 @@ ice_flow_proc_seg_hdrs(struct
> > ice_flow_prof_params *params)
> >
> >  		hdrs = prof->segs[i].hdrs;
> >
> > +		if (hdrs & ICE_FLOW_SEG_HDR_ETH) {
> > +			src = !i ? (const unsigned long
> *)ice_ptypes_mac_ofos :
> > +				(const unsigned long *)ice_ptypes_mac_il;
> > +			bitmap_and(params->ptypes, params->ptypes, src,
> > +				   ICE_FLOW_PTYPE_MAX);
> > +		}
> > +
> > +		if (i && hdrs & ICE_FLOW_SEG_HDR_VLAN) {
> > +			src = (const unsigned long *)ice_ptypes_macvlan_il;
> > +			bitmap_and(params->ptypes, params->ptypes, src,
> > +				   ICE_FLOW_PTYPE_MAX);
> > +		}
> > +
> > +		if (!i && hdrs & ICE_FLOW_SEG_HDR_ARP) {
> > +			bitmap_and(params->ptypes, params->ptypes,
> > +				   (const unsigned long *)ice_ptypes_arp_of,
> > +				   ICE_FLOW_PTYPE_MAX);
> > +		}
> >  		if ((hdrs & ICE_FLOW_SEG_HDR_IPV4) &&
> >  		    !(hdrs & ICE_FLOW_SEG_HDRS_L4_MASK)) {
> >  			src = !i ? (const unsigned long *)ice_ipv4_ofos_no_l4 :
> > @@ -334,6 +468,13 @@ ice_flow_proc_seg_hdrs(struct
> ice_flow_prof_params *params)
> >  			src = (const unsigned long *)ice_ptypes_sctp_il;
> >  			bitmap_and(params->ptypes, params->ptypes, src,
> >  				   ICE_FLOW_PTYPE_MAX);
> > +		}
> > +
> > +		if (hdrs & ICE_FLOW_SEG_HDR_ICMP) {
> > +			src = !i ? (const unsigned long *)ice_ptypes_icmp_of :
> > +				(const unsigned long *)ice_ptypes_icmp_il;
> > +			bitmap_and(params->ptypes, params->ptypes, src,
> > +				   ICE_FLOW_PTYPE_MAX);
> >  		} else if (hdrs & ICE_FLOW_SEG_HDR_GRE) {
> >  			if (!i) {
> >  				src = (const unsigned long
> *)ice_ptypes_gre_of; @@ -370,6 +511,15
> > @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params
> *params,
> >  	flds = params->prof->segs[seg].fields;
> >
> >  	switch (fld) {
> > +	case ICE_FLOW_FIELD_IDX_ETH_DA:
> > +	case ICE_FLOW_FIELD_IDX_ETH_SA:
> > +	case ICE_FLOW_FIELD_IDX_S_VLAN:
> > +	case ICE_FLOW_FIELD_IDX_C_VLAN:
> > +		prot_id = seg == 0 ? ICE_PROT_MAC_OF_OR_S :
> ICE_PROT_MAC_IL;
> > +		break;
> > +	case ICE_FLOW_FIELD_IDX_ETH_TYPE:
> > +		prot_id = seg == 0 ? ICE_PROT_ETYPE_OL :
> ICE_PROT_ETYPE_IL;
> > +		break;
> >  	case ICE_FLOW_FIELD_IDX_IPV4_SA:
> >  	case ICE_FLOW_FIELD_IDX_IPV4_DA:
> >  		prot_id = seg == 0 ? ICE_PROT_IPV4_OF_OR_S :
> ICE_PROT_IPV4_IL; @@
> > -380,6 +530,7 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct
> ice_flow_prof_params *params,
> >  		break;
> >  	case ICE_FLOW_FIELD_IDX_TCP_SRC_PORT:
> >  	case ICE_FLOW_FIELD_IDX_TCP_DST_PORT:
> > +	case ICE_FLOW_FIELD_IDX_TCP_FLAGS:
> >  		prot_id = ICE_PROT_TCP_IL;
> >  		break;
> >  	case ICE_FLOW_FIELD_IDX_UDP_SRC_PORT:
> > @@ -390,6 +541,19 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct
> ice_flow_prof_params *params,
> >  	case ICE_FLOW_FIELD_IDX_SCTP_DST_PORT:
> >  		prot_id = ICE_PROT_SCTP_IL;
> >  		break;
> > +	case ICE_FLOW_FIELD_IDX_ARP_SIP:
> > +	case ICE_FLOW_FIELD_IDX_ARP_DIP:
> > +	case ICE_FLOW_FIELD_IDX_ARP_SHA:
> > +	case ICE_FLOW_FIELD_IDX_ARP_DHA:
> > +	case ICE_FLOW_FIELD_IDX_ARP_OP:
> > +		prot_id = ICE_PROT_ARP_OF;
> > +		break;
> > +	case ICE_FLOW_FIELD_IDX_ICMP_TYPE:
> > +	case ICE_FLOW_FIELD_IDX_ICMP_CODE:
> > +		/* ICMP type and code share the same extraction seq. entry
> */
> > +		prot_id = (params->prof->segs[seg].hdrs &
> ICE_FLOW_SEG_HDR_IPV4) ?
> > +				ICE_PROT_ICMP_IL : ICE_PROT_ICMPV6_IL;
> > +		break;
> >  	case ICE_FLOW_FIELD_IDX_GRE_KEYID:
> >  		prot_id = ICE_PROT_GRE_OF;
> >  		break;
> > @@ -1158,6 +1322,9 @@ ice_flow_add_fld_raw(struct ice_flow_seg_info
> *seg, u16 off, u8 len,
> >  	seg->raws_cnt++;
> >  }
> >
> > +#define ICE_FLOW_RSS_SEG_HDR_L2_MASKS \
> > +	(ICE_FLOW_SEG_HDR_ETH | ICE_FLOW_SEG_HDR_VLAN)
> > +
> >  #define ICE_FLOW_RSS_SEG_HDR_L3_MASKS \
> >  	(ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_IPV6)
> >
> > @@ -1165,7 +1332,8 @@ ice_flow_add_fld_raw(struct ice_flow_seg_info
> *seg, u16 off, u8 len,
> >  	(ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_UDP |
> > ICE_FLOW_SEG_HDR_SCTP)
> >
> >  #define ICE_FLOW_RSS_SEG_HDR_VAL_MASKS \
> > -	(ICE_FLOW_RSS_SEG_HDR_L3_MASKS | \
> > +	(ICE_FLOW_RSS_SEG_HDR_L2_MASKS | \
> > +	 ICE_FLOW_RSS_SEG_HDR_L3_MASKS | \
> >  	 ICE_FLOW_RSS_SEG_HDR_L4_MASKS)
> >
> >  /**
> > diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h
> > b/drivers/net/ethernet/intel/ice/ice_flow.h
> > index 829f90b1e998..d92dcc791ef4 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_flow.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_flow.h
> > @@ -38,8 +38,12 @@
> >   */
> >  enum ice_flow_seg_hdr {
> >  	ICE_FLOW_SEG_HDR_NONE		= 0x00000000,
> > +	ICE_FLOW_SEG_HDR_ETH		= 0x00000001,
> > +	ICE_FLOW_SEG_HDR_VLAN		= 0x00000002,
> >  	ICE_FLOW_SEG_HDR_IPV4		= 0x00000004,
> >  	ICE_FLOW_SEG_HDR_IPV6		= 0x00000008,
> > +	ICE_FLOW_SEG_HDR_ARP		= 0x00000010,
> > +	ICE_FLOW_SEG_HDR_ICMP		= 0x00000020,
> >  	ICE_FLOW_SEG_HDR_TCP		= 0x00000040,
> >  	ICE_FLOW_SEG_HDR_UDP		= 0x00000080,
> >  	ICE_FLOW_SEG_HDR_SCTP		= 0x00000100,
> > @@ -47,6 +51,12 @@ enum ice_flow_seg_hdr {  };
> >
> >  enum ice_flow_field {
> > +	/* L2 */
> > +	ICE_FLOW_FIELD_IDX_ETH_DA,
> > +	ICE_FLOW_FIELD_IDX_ETH_SA,
> > +	ICE_FLOW_FIELD_IDX_S_VLAN,
> > +	ICE_FLOW_FIELD_IDX_C_VLAN,
> > +	ICE_FLOW_FIELD_IDX_ETH_TYPE,
> >  	/* L3 */
> >  	ICE_FLOW_FIELD_IDX_IPV4_SA,
> >  	ICE_FLOW_FIELD_IDX_IPV4_DA,
> > @@ -59,6 +69,16 @@ enum ice_flow_field {
> >  	ICE_FLOW_FIELD_IDX_UDP_DST_PORT,
> >  	ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT,
> >  	ICE_FLOW_FIELD_IDX_SCTP_DST_PORT,
> > +	ICE_FLOW_FIELD_IDX_TCP_FLAGS,
> > +	/* ARP */
> > +	ICE_FLOW_FIELD_IDX_ARP_SIP,
> > +	ICE_FLOW_FIELD_IDX_ARP_DIP,
> > +	ICE_FLOW_FIELD_IDX_ARP_SHA,
> > +	ICE_FLOW_FIELD_IDX_ARP_DHA,
> > +	ICE_FLOW_FIELD_IDX_ARP_OP,
> > +	/* ICMP */
> > +	ICE_FLOW_FIELD_IDX_ICMP_TYPE,
> > +	ICE_FLOW_FIELD_IDX_ICMP_CODE,
> >  	/* GRE */
> >  	ICE_FLOW_FIELD_IDX_GRE_KEYID,
> >  	/* The total number of enums must not exceed 64 */ diff --git
> > a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> > b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> > index 7f4c1ec1eff2..fac5f15a692c 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> > @@ -13,6 +13,9 @@
> >  enum ice_prot_id {
> >  	ICE_PROT_ID_INVAL	= 0,
> >  	ICE_PROT_MAC_OF_OR_S	= 1,
> > +	ICE_PROT_MAC_IL		= 4,
> > +	ICE_PROT_ETYPE_OL	= 9,
> > +	ICE_PROT_ETYPE_IL	= 10,
> >  	ICE_PROT_IPV4_OF_OR_S	= 32,
> >  	ICE_PROT_IPV4_IL	= 33,
> >  	ICE_PROT_IPV6_OF_OR_S	= 40,
> > @@ -22,6 +25,9 @@ enum ice_prot_id {
> >  	ICE_PROT_UDP_IL_OR_S	= 53,
> >  	ICE_PROT_GRE_OF		= 64,
> >  	ICE_PROT_SCTP_IL	= 96,
> > +	ICE_PROT_ICMP_IL	= 98,
> > +	ICE_PROT_ICMPV6_IL	= 100,
> > +	ICE_PROT_ARP_OF		= 118,
> >  	ICE_PROT_META_ID	= 255, /* when offset == metadata */
> >  	ICE_PROT_INVALID	= 255  /* when offset ==
> ICE_FV_OFFSET_INVAL */
> >  };
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
