Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED48533AC74
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 08:45:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54C884016C;
	Mon, 15 Mar 2021 07:45:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ejxmBZtYtq5f; Mon, 15 Mar 2021 07:45:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2D1240146;
	Mon, 15 Mar 2021 07:45:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ED0AB1BF317
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 07:45:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E78334870F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 07:45:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MZIAQsk4Dkwx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 07:45:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A023483DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 07:45:42 +0000 (UTC)
IronPort-SDR: 1+dZtjsKzo0p3QIN+PyXuFQf/MMovGw/rMjCxoPgE0lxCiBKe3Op/KCyv5eSiRgTmjJo04xwfC
 kTKx3UzVjWyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="168320171"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="168320171"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 00:45:39 -0700
IronPort-SDR: UDeTxNelkuQhPiORGIMjbPVzMbQUURQYy2q4LLJNrwPdsgTHQeLTGuNx3Ui102FavxzGneUpfT
 K5j5DQ5ZmolQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="522070234"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga004.jf.intel.com with ESMTP; 15 Mar 2021 00:45:38 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 00:45:38 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 00:45:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 00:45:38 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 00:45:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=deYZhqXV3YM7l+Qe/v8Ndg5v3+d9qhqWsJJq6qiPBRnJx7F9bXG/b7bxShg/ufMsxh4dA9JihcJB5H5FIQ9PW+me66LJZz+gEC38EXK1z4vmUys7luY/7XPWBxP5oKlLFYN9dAO8vZ0RBTM7hq9tGSCRRxLvs2dSmusd34mDcfW2Fiag5i1zYiKjlb4eaSqpatlOrVOy5O6EUqRbi3leSZ8g7dG8YKQeV0XTZ8lyLbs56K8Uh/eUhlOAiuIfFQ90/+ZqKXEbrW0nhUDhc8gW3vvnhB71AlbVPCQx9sZQs6IVb79NHjeEEAP/C0JDGSTrpMLf+eIIQBjXrtjlv5C+8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fda/eZyxcYC7BARUOzdKZmPVFJmEmvogPevOCsppFv0=;
 b=lJrJNtieFR3gJwn9dSsWkeICx5og2oQpc8FwB2KTR4jKLeNPwfQFLUV4WKRH5JVjsui5cdgjEWtyV4bLLO+mhg3t1oKOqyRl6eJgO4EadASg/hyo8SgrCtWBeSmNEY5LnUZ6fKnj7O9HyOLiQESNBlI2ETCfxydvMXn89nJtgricVwP/fJICozYQWy7B0ZS2Bj0yUC8YwzAJ5W1oCqLkpDpTY76fC9dcFvK2tsgkf+T9+VIWqkaRfko+OzYnQVEFxqIX2XPWYCsY2zFgh2pDqfHaAGjzUzSL2NiSbIEV5MgWu4UmwvD+MfxXCl6468NeqjijzIk8ork1bV2mkkC9Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fda/eZyxcYC7BARUOzdKZmPVFJmEmvogPevOCsppFv0=;
 b=btV/3/IVpPX5lPP16mLLGMGlze3l8/wvaxmgYP6/uI4B1DKgn1Az837mwdZuJC3Ya2nScpBsOkcBPswampVURI9jrtWKGormICSkYNIuPOIPYUt/WthTP59kbjkVY7SKStR81HQe3yD3GskaVEQNxfzbLtrfzpJYD87DJlWCN+M=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN7PR11MB2819.namprd11.prod.outlook.com (2603:10b6:406:b4::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Mon, 15 Mar
 2021 07:45:35 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 07:45:35 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 01/18] ice: Add more basic protocol
 support for flow filter
Thread-Index: AQHXFJQIWL7eR9OFcUihYcOkoSYe6KqEtP5w
Date: Mon, 15 Mar 2021 07:45:34 +0000
Message-ID: <BN8PR11MB379501B38731F992A3B366A8F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-2-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-2-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.46.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 127fea6f-b11c-4898-4037-08d8e786516d
x-ms-traffictypediagnostic: BN7PR11MB2819:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN7PR11MB2819E0C06AA604622FB6FF45F76C9@BN7PR11MB2819.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PsOHmjrtRu+sWCWgyImhIpz55FUTJgox1Kvy0p6kZa5Ek8yM4uHF+BtEDMaX0mzHo+jqgHeVg/WhsphOXgLcG9qEczfxUOBgTJdTnSJwdJJpdWbnO/voE5X3D9VNZVmhMaImaCbqd+fjqgCLK8P7m2E6vIcM8MQZbgYeMzTy5hbnS8mguNUYcS1/PFFMdz3bXg0E3hJxto/A1wJTlqWddMe1bUcc+TvIo4pZXpSiKLPfLv8Vs7pMdVbMzVdoBJ0OHTL6CKlsUW2Sg+dwUNjNk9V1v5vRAkRgRX9pfFbDRWjZQo0lg2Fk4xrzVy/XvoWOR9b7EA+iWejWHMYOM/lOEf3pR9MiUkxBiWlu62Gcguu07pwjW9NuWbS56Tbgnq7SYeZ3IkibbvaLW5r7/kr0h7fHVfBEMYpM4VRjSJmvdlAF52+DfNAAKQS/LKjIN1WFzG1N5Cy5qzqOcVYA5a0rX91zPXMazFVkwo5bGxf6dPhSd9ABXi/3Ki8lHu2Hk2sA64xK/V5/MogHRqGkg95bJQE5g2PD4Gz5f3qcS/g7bHEpTEQYtaFDWqUyqRjCsC/r9xUs9z2nDGft6hdTUb7GDMBaponxzvcDXGF6QRGDvqyKSEaqRiwAbxBQasfiLhKNOkgnWmWL5H6TP633aGVGOQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(396003)(136003)(39860400002)(346002)(8936002)(55016002)(33656002)(86362001)(316002)(54906003)(107886003)(26005)(9686003)(2906002)(186003)(83380400001)(8676002)(76116006)(30864003)(52536014)(4326008)(71200400001)(66556008)(110136005)(66946007)(53546011)(64756008)(6506007)(7696005)(66476007)(66446008)(5660300002)(966005)(478600001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?VrApuO098U2s4iBm8jlvfWF7uA5pJS9P4u1BiiHywxopUEOyi7t1rLT9a921?=
 =?us-ascii?Q?RFWk18nBaozF1f2d2ezvoewfnksB5eWWZLGZetAhnHnBjNeubG5+8kSxnsq1?=
 =?us-ascii?Q?ycdKUHa25GH5uLPoRQ9jYM8cX6BOTHdMLrtAXo+Mzd1LAozMZGomI90nMkcu?=
 =?us-ascii?Q?eejrD2/Li5c9pgVE6et7yoVuNZWETzPuThJbpdNLs9xiLYVdtAxEDVC7tXUT?=
 =?us-ascii?Q?KJLrItGnnDVE4uKFy6ed59evoQNNGSPS8OK7vZLShhzVulfrG/jeRuV3+tqH?=
 =?us-ascii?Q?fUfcTOiVAiKbj0ao7zZfy2Cil3icRvnYMHgnL4XHIkf2+eEn365ATlGKR/iE?=
 =?us-ascii?Q?+4p3LAdIs+8R0bdW44y9or2FOJ93lZsWA3JweYMuEXAnynzChl5oCpPW5slP?=
 =?us-ascii?Q?H5XHz4Oyx28O/XCPkRIAoohTSiX2a2vUxuJVsWvmoG/NtmdbZ8esHO7W4Ye5?=
 =?us-ascii?Q?crt6TaWvBtN6PFxXG5mPk/iWWaBvzHoCmgE7LINLbnBIV6IDiuv2xHGMzj7M?=
 =?us-ascii?Q?vQq7SN82vdoWsWzjbN9JO5jeSSc2lfbTR6pkFTXsm5xjsSOEc42+AU68DX6a?=
 =?us-ascii?Q?eyJnCksCJgHA+aGAiBHTaCPgWLwXjO4yrBX/7Ze5dy9UR8QUiDGAn6Eue48q?=
 =?us-ascii?Q?GsOkKI60zn5KgUj6beCOdRFUC9Kfjvh+P+5N+7cKU1VSo7ucLNYWAoLH+Nh/?=
 =?us-ascii?Q?ib7dX+DSM8Ud8C3hP//l6hNOAJgKvuPJh7PjifEHGMmvL1ohsOX69dtbRY7r?=
 =?us-ascii?Q?7RQBpThIFBuaiwtaNah4Uyb+R40MUhHTK4h7UrYAs47AZnQrPFkJCFh1/Yw7?=
 =?us-ascii?Q?tCy5+7jhBwgO8FFL+IgMOiLcjb4KgWCxEU/GKyirHO51HvLoO+YlBA85zPwf?=
 =?us-ascii?Q?PCDCOt6zGGxGchTj+IjBDt4vtxKzHtCJcQDxzQFaUQoCBXh9nV72OIqm9nTt?=
 =?us-ascii?Q?arTodjFTHPorgnJZATeEG0emSWQxDn2RmuP5JjE8OqJ1I6O6rrNaiQya2SCB?=
 =?us-ascii?Q?WIIY9kT1rBmUK+E0to3ippXZLkxY6ClbmVhdntR9EjVjUTd3kXYpgd2DIqJH?=
 =?us-ascii?Q?agGp+UaDME6LGTu+O7zpnkKIw59TZh0fBHGCxCzP4P2abzaEK55ETyxx4N9G?=
 =?us-ascii?Q?IetKQUQykAKan64EqyP9oo7k4LLnoZyEPFbiFMl7e0tYo1nXhH0StE6t2YgY?=
 =?us-ascii?Q?vOnjVWsN1MfABquSH4R+Hu2TwzHLhHKm+k/iF5DiukQ8AV9H9AWhVD1MT7Rz?=
 =?us-ascii?Q?mHMrkfG3Cz4qBE6n2nMG2AB6rMo+UZxqj+XdDeYq57cGr7zzHw0CsoLfGEJO?=
 =?us-ascii?Q?E0c=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 127fea6f-b11c-4898-4037-08d8e786516d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 07:45:34.7935 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LuPqnghiVxFgpEa3Po930Er3AIut+S+VWWQbCo2gza440JtOKhPnLFfiQtoWduq1j+gLLFjWUxWhK20Tbs+ATA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2819
X-OriginatorOrg: intel.com
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
 Qi Z" <qi.z.zhang@intel.com>, "Chen, BoX
 C" <box.c.chen@intel.com>, "Scott, Kevin C" <kevin.c.scott@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Haiyue Wang
> Sent: Tuesday, March 9, 2021 11:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Scott, Kevin C <kevin.c.scott@intel.com>; Zhang, Qi Z
> <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [Patch v5 01/18] ice: Add more basic protocol support for flow filter
> 
> From: Qi Zhang <qi.z.zhang@intel.com>
> 
> Add more protocol and field support for flow filter include:
> ETH, VLAN, ICMP, ARP and TCP flag.
> 
> Signed-off-by: Kevin Scott <kevin.c.scott@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.c     |  20 ++
>  drivers/net/ethernet/intel/ice/ice_fdir.h     |   1 +
>  drivers/net/ethernet/intel/ice/ice_flow.c     | 180 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_flow.h     |  20 ++
>  .../ethernet/intel/ice/ice_protocol_type.h    |   6 +
>  5 files changed, 221 insertions(+), 6 deletions(-)
> 

Re-send to Bo, as a new member.

> diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
> index 59c0c6a0f8c5..1e77f43b3b3e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
> @@ -492,6 +492,16 @@ static void ice_pkt_insert_u32(u8 *pkt, int offset, __be32 data)
>  	memcpy(pkt + offset, &data, sizeof(data));
>  }
> 
> +/**
> + * ice_pkt_insert_mac_addr - insert a MAC addr into a memory buffer.
> + * @pkt: packet buffer
> + * @addr: MAC address to convert and insert into pkt at offset
> + */
> +static void ice_pkt_insert_mac_addr(u8 *pkt, u8 *addr)
> +{
> +	ether_addr_copy(pkt, addr);
> +}
> +
>  /**
>   * ice_fdir_get_gen_prgm_pkt - generate a training packet
>   * @hw: pointer to the hardware structure
> @@ -580,6 +590,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
>  				   input->ip.v4.dst_ip);
>  		ice_pkt_insert_u16(loc, ICE_IPV4_TCP_SRC_PORT_OFFSET,
>  				   input->ip.v4.dst_port);
> +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
>  		if (frag)
>  			loc[20] = ICE_FDIR_IPV4_PKT_FLAG_DF;
>  		break;
> @@ -592,6 +603,9 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
>  				   input->ip.v4.dst_ip);
>  		ice_pkt_insert_u16(loc, ICE_IPV4_UDP_SRC_PORT_OFFSET,
>  				   input->ip.v4.dst_port);
> +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> +		ice_pkt_insert_mac_addr(loc + ETH_ALEN,
> +					input->ext_data.src_mac);
>  		break;
>  	case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
>  		ice_pkt_insert_u32(loc, ICE_IPV4_DST_ADDR_OFFSET,
> @@ -602,6 +616,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
>  				   input->ip.v4.dst_ip);
>  		ice_pkt_insert_u16(loc, ICE_IPV4_SCTP_SRC_PORT_OFFSET,
>  				   input->ip.v4.dst_port);
> +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
>  		break;
>  	case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
>  		ice_pkt_insert_u32(loc, ICE_IPV4_DST_ADDR_OFFSET,
> @@ -609,6 +624,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
>  		ice_pkt_insert_u32(loc, ICE_IPV4_SRC_ADDR_OFFSET,
>  				   input->ip.v4.dst_ip);
>  		ice_pkt_insert_u16(loc, ICE_IPV4_PROTO_OFFSET, 0);
> +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
>  		break;
>  	case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
>  		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
> @@ -619,6 +635,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
>  				   input->ip.v6.src_port);
>  		ice_pkt_insert_u16(loc, ICE_IPV6_TCP_SRC_PORT_OFFSET,
>  				   input->ip.v6.dst_port);
> +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
>  		break;
>  	case ICE_FLTR_PTYPE_NONF_IPV6_UDP:
>  		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
> @@ -629,6 +646,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
>  				   input->ip.v6.src_port);
>  		ice_pkt_insert_u16(loc, ICE_IPV6_UDP_SRC_PORT_OFFSET,
>  				   input->ip.v6.dst_port);
> +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
>  		break;
>  	case ICE_FLTR_PTYPE_NONF_IPV6_SCTP:
>  		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
> @@ -639,12 +657,14 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
>  				   input->ip.v6.src_port);
>  		ice_pkt_insert_u16(loc, ICE_IPV6_SCTP_SRC_PORT_OFFSET,
>  				   input->ip.v6.dst_port);
> +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
>  		break;
>  	case ICE_FLTR_PTYPE_NONF_IPV6_OTHER:
>  		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
>  					 input->ip.v6.src_ip);
>  		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_SRC_ADDR_OFFSET,
>  					 input->ip.v6.dst_ip);
> +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
>  		break;
>  	default:
>  		return ICE_ERR_PARAM;
> diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
> index 1c587766daab..31623545ebae 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fdir.h
> +++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
> @@ -103,6 +103,7 @@ struct ice_fdir_v6 {
> 
>  struct ice_fdir_extra {
>  	u8 dst_mac[ETH_ALEN];	/* dest MAC address */
> +	u8 src_mac[ETH_ALEN];	/* src MAC address */
>  	u32 usr_def[2];		/* user data */
>  	__be16 vlan_type;	/* VLAN ethertype */
>  	__be16 vlan_tag;	/* VLAN tag info */
> diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
> index 89a0cef20506..89d0e20ee094 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flow.c
> +++ b/drivers/net/ethernet/intel/ice/ice_flow.c
> @@ -20,6 +20,17 @@ struct ice_flow_field_info {
>  /* Table containing properties of supported protocol header fields */
>  static const
>  struct ice_flow_field_info ice_flds_info[ICE_FLOW_FIELD_IDX_MAX] = {
> +	/* Ether */
> +	/* ICE_FLOW_FIELD_IDX_ETH_DA */
> +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ETH, 0, ETH_ALEN),
> +	/* ICE_FLOW_FIELD_IDX_ETH_SA */
> +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ETH, ETH_ALEN, ETH_ALEN),
> +	/* ICE_FLOW_FIELD_IDX_S_VLAN */
> +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_VLAN, 12, sizeof(__be16)),
> +	/* ICE_FLOW_FIELD_IDX_C_VLAN */
> +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_VLAN, 14, sizeof(__be16)),
> +	/* ICE_FLOW_FIELD_IDX_ETH_TYPE */
> +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ETH, 0, sizeof(__be16)),
>  	/* IPv4 / IPv6 */
>  	/* ICE_FLOW_FIELD_IDX_IPV4_SA */
>  	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_IPV4, 12, sizeof(struct in_addr)),
> @@ -42,6 +53,24 @@ struct ice_flow_field_info ice_flds_info[ICE_FLOW_FIELD_IDX_MAX] = {
>  	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_SCTP, 0, sizeof(__be16)),
>  	/* ICE_FLOW_FIELD_IDX_SCTP_DST_PORT */
>  	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_SCTP, 2, sizeof(__be16)),
> +	/* ICE_FLOW_FIELD_IDX_TCP_FLAGS */
> +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_TCP, 13, 1),
> +	/* ARP */
> +	/* ICE_FLOW_FIELD_IDX_ARP_SIP */
> +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 14, sizeof(struct in_addr)),
> +	/* ICE_FLOW_FIELD_IDX_ARP_DIP */
> +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 24, sizeof(struct in_addr)),
> +	/* ICE_FLOW_FIELD_IDX_ARP_SHA */
> +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 8, ETH_ALEN),
> +	/* ICE_FLOW_FIELD_IDX_ARP_DHA */
> +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 18, ETH_ALEN),
> +	/* ICE_FLOW_FIELD_IDX_ARP_OP */
> +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 6, sizeof(__be16)),
> +	/* ICMP */
> +	/* ICE_FLOW_FIELD_IDX_ICMP_TYPE */
> +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ICMP, 0, 1),
> +	/* ICE_FLOW_FIELD_IDX_ICMP_CODE */
> +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ICMP, 1, 1),
>  	/* GRE */
>  	/* ICE_FLOW_FIELD_IDX_GRE_KEYID */
>  	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_GRE, 12,
> @@ -50,8 +79,32 @@ struct ice_flow_field_info ice_flds_info[ICE_FLOW_FIELD_IDX_MAX] = {
> 
>  /* Bitmaps indicating relevant packet types for a particular protocol header
>   *
> - * Packet types for packets with an Outer/First/Single IPv4 header
> + * Packet types for packets with an Outer/First/Single MAC header
>   */
> +static const u32 ice_ptypes_mac_ofos[] = {
> +	0xFDC00846, 0xBFBF7F7E, 0xF70001DF, 0xFEFDFDFB,
> +	0x0000077E, 0x00000000, 0x00000000, 0x00000000,
> +	0x00400000, 0x03FFF000, 0x7FFFFFE0, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +};
> +
> +/* Packet types for packets with an Innermost/Last MAC VLAN header */
> +static const u32 ice_ptypes_macvlan_il[] = {
> +	0x00000000, 0xBC000000, 0x000001DF, 0xF0000000,
> +	0x0000077E, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +};
> +
> +/* Packet types for packets with an Outer/First/Single IPv4 header */
>  static const u32 ice_ptypes_ipv4_ofos[] = {
>  	0x1DC00000, 0x04000800, 0x00000000, 0x00000000,
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> @@ -111,6 +164,18 @@ static const u32 ice_ipv4_ofos_no_l4[] = {
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
>  };
> 
> +/* Packet types for packets with an Outermost/First ARP header */
> +static const u32 ice_ptypes_arp_of[] = {
> +	0x00000800, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +};
> +
>  /* Packet types for packets with an Innermost/Last IPv4 header - no L4 */
>  static const u32 ice_ipv4_il_no_l4[] = {
>  	0x60000000, 0x18043008, 0x80000002, 0x6010c021,
> @@ -182,6 +247,29 @@ static const u32 ice_ptypes_sctp_il[] = {
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +};
> +
> +/* Packet types for packets with an Outermost/First ICMP header */
> +static const u32 ice_ptypes_icmp_of[] = {
> +	0x10000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +};
> +
> +/* Packet types for packets with an Innermost/Last ICMP header */
> +static const u32 ice_ptypes_icmp_il[] = {
> +	0x00000000, 0x02040408, 0x40000102, 0x08101020,
> +	0x00000408, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x42108000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
>  };
> 
> @@ -197,6 +285,18 @@ static const u32 ice_ptypes_gre_of[] = {
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
>  };
> 
> +/* Packet types for packets with an Innermost/Last MAC header */
> +static const u32 ice_ptypes_mac_il[] = {
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +};
> +
>  /* Manage parameters and info. used during the creation of a flow profile */
>  struct ice_flow_prof_params {
>  	enum ice_block blk;
> @@ -212,9 +312,11 @@ struct ice_flow_prof_params {
>  };
> 
>  #define ICE_FLOW_SEG_HDRS_L3_MASK	\
> -	(ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_IPV6)
> +	(ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_IPV6 | \
> +	 ICE_FLOW_SEG_HDR_ARP)
>  #define ICE_FLOW_SEG_HDRS_L4_MASK	\
> -	(ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_SCTP)
> +	(ICE_FLOW_SEG_HDR_ICMP | ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_UDP | \
> +	 ICE_FLOW_SEG_HDR_SCTP)
> 
>  /**
>   * ice_flow_val_hdrs - validates packet segments for valid protocol headers
> @@ -243,8 +345,11 @@ ice_flow_val_hdrs(struct ice_flow_seg_info *segs, u8 segs_cnt)
> 
>  /* Sizes of fixed known protocol headers without header options */
>  #define ICE_FLOW_PROT_HDR_SZ_MAC	14
> +#define ICE_FLOW_PROT_HDR_SZ_MAC_VLAN	(ICE_FLOW_PROT_HDR_SZ_MAC + 2)
>  #define ICE_FLOW_PROT_HDR_SZ_IPV4	20
>  #define ICE_FLOW_PROT_HDR_SZ_IPV6	40
> +#define ICE_FLOW_PROT_HDR_SZ_ARP	28
> +#define ICE_FLOW_PROT_HDR_SZ_ICMP	8
>  #define ICE_FLOW_PROT_HDR_SZ_TCP	20
>  #define ICE_FLOW_PROT_HDR_SZ_UDP	8
>  #define ICE_FLOW_PROT_HDR_SZ_SCTP	12
> @@ -256,16 +361,27 @@ ice_flow_val_hdrs(struct ice_flow_seg_info *segs, u8 segs_cnt)
>   */
>  static u16 ice_flow_calc_seg_sz(struct ice_flow_prof_params *params, u8 seg)
>  {
> -	u16 sz = ICE_FLOW_PROT_HDR_SZ_MAC;
> +	u16 sz;
> +
> +	/* L2 headers */
> +	sz = (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_VLAN) ?
> +		ICE_FLOW_PROT_HDR_SZ_MAC_VLAN : ICE_FLOW_PROT_HDR_SZ_MAC;
> 
>  	/* L3 headers */
>  	if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_IPV4)
>  		sz += ICE_FLOW_PROT_HDR_SZ_IPV4;
>  	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_IPV6)
>  		sz += ICE_FLOW_PROT_HDR_SZ_IPV6;
> +	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_ARP)
> +		sz += ICE_FLOW_PROT_HDR_SZ_ARP;
> +	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDRS_L4_MASK)
> +		/* A L3 header is required if L4 is specified */
> +		return 0;
> 
>  	/* L4 headers */
> -	if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_TCP)
> +	if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_ICMP)
> +		sz += ICE_FLOW_PROT_HDR_SZ_ICMP;
> +	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_TCP)
>  		sz += ICE_FLOW_PROT_HDR_SZ_TCP;
>  	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_UDP)
>  		sz += ICE_FLOW_PROT_HDR_SZ_UDP;
> @@ -298,6 +414,24 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
> 
>  		hdrs = prof->segs[i].hdrs;
> 
> +		if (hdrs & ICE_FLOW_SEG_HDR_ETH) {
> +			src = !i ? (const unsigned long *)ice_ptypes_mac_ofos :
> +				(const unsigned long *)ice_ptypes_mac_il;
> +			bitmap_and(params->ptypes, params->ptypes, src,
> +				   ICE_FLOW_PTYPE_MAX);
> +		}
> +
> +		if (i && hdrs & ICE_FLOW_SEG_HDR_VLAN) {
> +			src = (const unsigned long *)ice_ptypes_macvlan_il;
> +			bitmap_and(params->ptypes, params->ptypes, src,
> +				   ICE_FLOW_PTYPE_MAX);
> +		}
> +
> +		if (!i && hdrs & ICE_FLOW_SEG_HDR_ARP) {
> +			bitmap_and(params->ptypes, params->ptypes,
> +				   (const unsigned long *)ice_ptypes_arp_of,
> +				   ICE_FLOW_PTYPE_MAX);
> +		}
>  		if ((hdrs & ICE_FLOW_SEG_HDR_IPV4) &&
>  		    !(hdrs & ICE_FLOW_SEG_HDRS_L4_MASK)) {
>  			src = !i ? (const unsigned long *)ice_ipv4_ofos_no_l4 :
> @@ -334,6 +468,13 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
>  			src = (const unsigned long *)ice_ptypes_sctp_il;
>  			bitmap_and(params->ptypes, params->ptypes, src,
>  				   ICE_FLOW_PTYPE_MAX);
> +		}
> +
> +		if (hdrs & ICE_FLOW_SEG_HDR_ICMP) {
> +			src = !i ? (const unsigned long *)ice_ptypes_icmp_of :
> +				(const unsigned long *)ice_ptypes_icmp_il;
> +			bitmap_and(params->ptypes, params->ptypes, src,
> +				   ICE_FLOW_PTYPE_MAX);
>  		} else if (hdrs & ICE_FLOW_SEG_HDR_GRE) {
>  			if (!i) {
>  				src = (const unsigned long *)ice_ptypes_gre_of;
> @@ -370,6 +511,15 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
>  	flds = params->prof->segs[seg].fields;
> 
>  	switch (fld) {
> +	case ICE_FLOW_FIELD_IDX_ETH_DA:
> +	case ICE_FLOW_FIELD_IDX_ETH_SA:
> +	case ICE_FLOW_FIELD_IDX_S_VLAN:
> +	case ICE_FLOW_FIELD_IDX_C_VLAN:
> +		prot_id = seg == 0 ? ICE_PROT_MAC_OF_OR_S : ICE_PROT_MAC_IL;
> +		break;
> +	case ICE_FLOW_FIELD_IDX_ETH_TYPE:
> +		prot_id = seg == 0 ? ICE_PROT_ETYPE_OL : ICE_PROT_ETYPE_IL;
> +		break;
>  	case ICE_FLOW_FIELD_IDX_IPV4_SA:
>  	case ICE_FLOW_FIELD_IDX_IPV4_DA:
>  		prot_id = seg == 0 ? ICE_PROT_IPV4_OF_OR_S : ICE_PROT_IPV4_IL;
> @@ -380,6 +530,7 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
>  		break;
>  	case ICE_FLOW_FIELD_IDX_TCP_SRC_PORT:
>  	case ICE_FLOW_FIELD_IDX_TCP_DST_PORT:
> +	case ICE_FLOW_FIELD_IDX_TCP_FLAGS:
>  		prot_id = ICE_PROT_TCP_IL;
>  		break;
>  	case ICE_FLOW_FIELD_IDX_UDP_SRC_PORT:
> @@ -390,6 +541,19 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
>  	case ICE_FLOW_FIELD_IDX_SCTP_DST_PORT:
>  		prot_id = ICE_PROT_SCTP_IL;
>  		break;
> +	case ICE_FLOW_FIELD_IDX_ARP_SIP:
> +	case ICE_FLOW_FIELD_IDX_ARP_DIP:
> +	case ICE_FLOW_FIELD_IDX_ARP_SHA:
> +	case ICE_FLOW_FIELD_IDX_ARP_DHA:
> +	case ICE_FLOW_FIELD_IDX_ARP_OP:
> +		prot_id = ICE_PROT_ARP_OF;
> +		break;
> +	case ICE_FLOW_FIELD_IDX_ICMP_TYPE:
> +	case ICE_FLOW_FIELD_IDX_ICMP_CODE:
> +		/* ICMP type and code share the same extraction seq. entry */
> +		prot_id = (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_IPV4) ?
> +				ICE_PROT_ICMP_IL : ICE_PROT_ICMPV6_IL;
> +		break;
>  	case ICE_FLOW_FIELD_IDX_GRE_KEYID:
>  		prot_id = ICE_PROT_GRE_OF;
>  		break;
> @@ -1158,6 +1322,9 @@ ice_flow_add_fld_raw(struct ice_flow_seg_info *seg, u16 off, u8 len,
>  	seg->raws_cnt++;
>  }
> 
> +#define ICE_FLOW_RSS_SEG_HDR_L2_MASKS \
> +	(ICE_FLOW_SEG_HDR_ETH | ICE_FLOW_SEG_HDR_VLAN)
> +
>  #define ICE_FLOW_RSS_SEG_HDR_L3_MASKS \
>  	(ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_IPV6)
> 
> @@ -1165,7 +1332,8 @@ ice_flow_add_fld_raw(struct ice_flow_seg_info *seg, u16 off, u8 len,
>  	(ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_SCTP)
> 
>  #define ICE_FLOW_RSS_SEG_HDR_VAL_MASKS \
> -	(ICE_FLOW_RSS_SEG_HDR_L3_MASKS | \
> +	(ICE_FLOW_RSS_SEG_HDR_L2_MASKS | \
> +	 ICE_FLOW_RSS_SEG_HDR_L3_MASKS | \
>  	 ICE_FLOW_RSS_SEG_HDR_L4_MASKS)
> 
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
> index 829f90b1e998..d92dcc791ef4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flow.h
> +++ b/drivers/net/ethernet/intel/ice/ice_flow.h
> @@ -38,8 +38,12 @@
>   */
>  enum ice_flow_seg_hdr {
>  	ICE_FLOW_SEG_HDR_NONE		= 0x00000000,
> +	ICE_FLOW_SEG_HDR_ETH		= 0x00000001,
> +	ICE_FLOW_SEG_HDR_VLAN		= 0x00000002,
>  	ICE_FLOW_SEG_HDR_IPV4		= 0x00000004,
>  	ICE_FLOW_SEG_HDR_IPV6		= 0x00000008,
> +	ICE_FLOW_SEG_HDR_ARP		= 0x00000010,
> +	ICE_FLOW_SEG_HDR_ICMP		= 0x00000020,
>  	ICE_FLOW_SEG_HDR_TCP		= 0x00000040,
>  	ICE_FLOW_SEG_HDR_UDP		= 0x00000080,
>  	ICE_FLOW_SEG_HDR_SCTP		= 0x00000100,
> @@ -47,6 +51,12 @@ enum ice_flow_seg_hdr {
>  };
> 
>  enum ice_flow_field {
> +	/* L2 */
> +	ICE_FLOW_FIELD_IDX_ETH_DA,
> +	ICE_FLOW_FIELD_IDX_ETH_SA,
> +	ICE_FLOW_FIELD_IDX_S_VLAN,
> +	ICE_FLOW_FIELD_IDX_C_VLAN,
> +	ICE_FLOW_FIELD_IDX_ETH_TYPE,
>  	/* L3 */
>  	ICE_FLOW_FIELD_IDX_IPV4_SA,
>  	ICE_FLOW_FIELD_IDX_IPV4_DA,
> @@ -59,6 +69,16 @@ enum ice_flow_field {
>  	ICE_FLOW_FIELD_IDX_UDP_DST_PORT,
>  	ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT,
>  	ICE_FLOW_FIELD_IDX_SCTP_DST_PORT,
> +	ICE_FLOW_FIELD_IDX_TCP_FLAGS,
> +	/* ARP */
> +	ICE_FLOW_FIELD_IDX_ARP_SIP,
> +	ICE_FLOW_FIELD_IDX_ARP_DIP,
> +	ICE_FLOW_FIELD_IDX_ARP_SHA,
> +	ICE_FLOW_FIELD_IDX_ARP_DHA,
> +	ICE_FLOW_FIELD_IDX_ARP_OP,
> +	/* ICMP */
> +	ICE_FLOW_FIELD_IDX_ICMP_TYPE,
> +	ICE_FLOW_FIELD_IDX_ICMP_CODE,
>  	/* GRE */
>  	ICE_FLOW_FIELD_IDX_GRE_KEYID,
>  	/* The total number of enums must not exceed 64 */
> diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> index 7f4c1ec1eff2..fac5f15a692c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> @@ -13,6 +13,9 @@
>  enum ice_prot_id {
>  	ICE_PROT_ID_INVAL	= 0,
>  	ICE_PROT_MAC_OF_OR_S	= 1,
> +	ICE_PROT_MAC_IL		= 4,
> +	ICE_PROT_ETYPE_OL	= 9,
> +	ICE_PROT_ETYPE_IL	= 10,
>  	ICE_PROT_IPV4_OF_OR_S	= 32,
>  	ICE_PROT_IPV4_IL	= 33,
>  	ICE_PROT_IPV6_OF_OR_S	= 40,
> @@ -22,6 +25,9 @@ enum ice_prot_id {
>  	ICE_PROT_UDP_IL_OR_S	= 53,
>  	ICE_PROT_GRE_OF		= 64,
>  	ICE_PROT_SCTP_IL	= 96,
> +	ICE_PROT_ICMP_IL	= 98,
> +	ICE_PROT_ICMPV6_IL	= 100,
> +	ICE_PROT_ARP_OF		= 118,
>  	ICE_PROT_META_ID	= 255, /* when offset == metadata */
>  	ICE_PROT_INVALID	= 255  /* when offset == ICE_FV_OFFSET_INVAL */
>  };
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
