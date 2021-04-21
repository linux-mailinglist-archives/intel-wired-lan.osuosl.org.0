Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B238367360
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Apr 2021 21:22:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A668740621;
	Wed, 21 Apr 2021 19:22:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id chlb8cNYy1pl; Wed, 21 Apr 2021 19:22:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 186CF40616;
	Wed, 21 Apr 2021 19:22:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 069D01BF239
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:22:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E926760788
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:22:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PWQ8qBjXJcm8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Apr 2021 19:22:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EF72B6060F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:22:20 +0000 (UTC)
IronPort-SDR: sIjjgqm57snReMyCtevDIoLk8YzM6EJYufoI2OFx5uTNr678R+8f/vP3dgpjtymfVymPxV0IU4
 8Tvy1RKz76dQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="183248669"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="183248669"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 12:22:20 -0700
IronPort-SDR: RlpYqTXiNFOmxgUKHa+z7/fJDVU7fMgDg89RzSzCNoQAA+5Y2tS5/hjDh81F+pqzCCSCuHPTXh
 EYYo1/+doaLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="423658908"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 21 Apr 2021 12:22:19 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 21 Apr 2021 12:22:19 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 21 Apr 2021 12:22:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 21 Apr 2021 12:22:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 21 Apr 2021 12:22:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eR2gZLiTtRaEx8grWmw7y3pyFI6gpIgAiPp7XlRt62VDIintkCvFJtXyV4BLt7bmDHszWBel2GvhosAzucQIhCI2OhtfsN8iiqgrjnhzOkWiFrVg9MTpti76jA1EIE/7p3vqzYV7wnzu1eDLo/D93lTvMVs+L1g3QIO5qznaN5297tSSfyj7+ZUrJMI1zFOb5f9lVmDQhUHsKfeezuD5K+NQT0llftXLoPjYsb1OmN1Sax+LG6GTjagL0ObeeNo8ux6QCefXvpNrxf3+1ewqYUe3XjuAvEXhaiJ9FtTcFfW7mNuC49S4K6FQrvy3ZWH1dgYztrkYurPVX4ONe3K3tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CXKrRCKDSvHN0TzBrkqtlvGtfzZgrPKwULgWjf46Eg4=;
 b=ZRjYYy8y/385Jg0RYaQ+UX5YS2b3Wh7JKx0G9rTNalBxbWWTqfoozO6T1m/NcS+mZlNlZz9PezXbEaxf621gZct+FOTNTik7PTWBANNDyIL+mmySwGXLz+pPd6WmECeMPICeyI0B2YpFkGww6fABJ+nJAK2hRfJbQuh5EBaqaKnCYMUNymhG21AnX+P+TcyhsKkufpVJwRQwfMTjEr3gSC/TgWHBjVvUR9HHij1ZcIzzMS0uye/B99U5KtArYLNG7JV0FE7EQcvTFcmcKUKQzTNYn6yMYlt1t/m2eylRaN11B6UK7FcTyEn2r1iOUw2PQaxSTA6FlKBC8mXFl//W1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CXKrRCKDSvHN0TzBrkqtlvGtfzZgrPKwULgWjf46Eg4=;
 b=Au4r9S40hRPrAlx9z4ePQKo17pcPgvmYP7oIlYa82Rza+4cIcz9/XLb/u1YyYuw/otNJ7sU5a71kzDUXuSw81a1XFwSOMBPXBYCJWjOtAYtr+q0GpfdLrr4VYx4mfkjsJ6aBou2awEr+nj3OX25Y+cChFWrbwi54Qu56Hue0Ab0=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR11MB1784.namprd11.prod.outlook.com (2603:10b6:903:126::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Wed, 21 Apr
 2021 19:22:16 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08%7]) with mapi id 15.20.4020.023; Wed, 21 Apr 2021
 19:22:16 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 5/6] iavf: Support for
 modifying UDP RSS flow hashing
Thread-Index: AQHXMAGl9Eh5p/bX5kyzfQFjoiJlaaq/Zy9Q
Date: Wed, 21 Apr 2021 19:22:16 +0000
Message-ID: <CY4PR11MB157687BC67797A9615E5B6F9AB479@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210413004844.32462-1-haiyue.wang@intel.com>
 <20210413004844.32462-6-haiyue.wang@intel.com>
In-Reply-To: <20210413004844.32462-6-haiyue.wang@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.97.153]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 197fff43-9312-4551-5836-08d904fac671
x-ms-traffictypediagnostic: CY4PR11MB1784:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB1784B6F1F64BF517394A909FAB479@CY4PR11MB1784.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hcvd0kF6q45EMa1UW/5tPDaz9f5LYKuXgl4wlxEmqOmELbLrVpoVmQ7w+Gbs3E7XWxksaUZNc+opHF8fNSyN4jQzMWEm6BgMR6qFBrJT2WogUboX/Go+Nwi46rU/b+Jrbj2NuMdFqWu/h15MLlgMhr69F0+C9mmevny8yQD0SjnjvA9FTBu2TRT2Hc2TGnn3sGSwSck7O5HCBTHook3kDoPb/q7dfo0ObcO4/3+mc93jzHndMUc2qFVVoAL20YJ44ydwGVvc01qFODaoAFoWDyh0KzRS8nWPpg/YIJEz6Lg4MU1FdqvjNe4kVBxNr5DqWMcqKozot0j/y35Zjq2bioYUSy5jkSgH2eWXMURsrh2iyE/c0fYwJxYTOZeMy3P/aBlFvQTTVb/Sm+htzT9iyEk+Qa+T/RiaKtMfwQIJVnh+qjjrFZwhhPnLkHSsiAR1u4gKNzDXRqMEFFh5YxunPehmp9+GeRJkAKdpZFZElc745oFWWZaYa66jy0VzNlIP9iGaPa7UZWyNghNKaigSvx7eeIh2kNr309XthEmWqcOQn3pUAHnmKtXl1TOqu8xHHI8mhReJ7ZbWuCvH1obw6h8niI08Epm47RG0pltJM1I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(136003)(376002)(366004)(346002)(38100700002)(316002)(478600001)(110136005)(52536014)(66446008)(33656002)(55016002)(71200400001)(64756008)(8936002)(83380400001)(4326008)(66556008)(26005)(9686003)(76116006)(66476007)(5660300002)(122000001)(66946007)(107886003)(186003)(6506007)(53546011)(86362001)(2906002)(7696005)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?XyyW3kFiG/Qasnq655dozsX0xqMOnuRavmLHY2kN6ziVML9/oiYcnofUFKNJ?=
 =?us-ascii?Q?HDoBOyJIlb9NSUw2mc/+OLxhGlLv5m5cwYZtt00KPz/nljpTzUBQdsUnR+0k?=
 =?us-ascii?Q?pdUALcLsesAkiI6FAZaXx6za6I7eVEcE2OIgkJpA5PM1xoIeE98EpImA8x6r?=
 =?us-ascii?Q?0wFDRP9ZEnHksYHkZC+X+sCB6tiK1X3wph+Niv3Jud2lr+wX09+Didqo27t7?=
 =?us-ascii?Q?XvKnQKg5szUBoKlkYDZaIYXtcrqC6s7NLBwvBjRhxaxPeit1m1jxmQX1WjQY?=
 =?us-ascii?Q?GL0MCcfyvQaEiJERRppyRxUT3X4VkaZDRipocip2hkcvQ7F7WkLQxZgg8BAT?=
 =?us-ascii?Q?Brh1jpIijW0hmx7o/okUlajCP5x5Vq7mEH6O+TqkJkVZFANyMXHt7tBJrr67?=
 =?us-ascii?Q?z6opjgpBOTHgarrHwDckn8vp6ermxH2sg0VFkpv45D5iTLOF0ptoJdS4XJ3i?=
 =?us-ascii?Q?3387YZ6XcCbban7gm4o3PDy7qzqrlM4bHD2qoIvvOcRIHW06MoMytWMacLge?=
 =?us-ascii?Q?Dn/iKZrPcgJ28h99nQa2W4EBm60wefPqrIqjfVnwA94a+O3tRo2e2zLGRqJF?=
 =?us-ascii?Q?EgStRm8UUKHEnvLamR8A40YoQCGg7whkjNZr/RQ+u3MyTfXfHvR+qGF4TYis?=
 =?us-ascii?Q?NB2dIHYA3BK9idzK0aeiWPAIce3LTDQFXmtfE25r/PfTLNjT62eT0EWxE5Xr?=
 =?us-ascii?Q?HZ1b6U6Ec99Kx4bYfyxCb0ixIWTPjxNlr6VNOu5J0ECb89y9woSh2TtNQ6zQ?=
 =?us-ascii?Q?DgsbG/zLoR8UTCIq963HwWe5H4GbnLIIMYPlz8vfCzBStKbCY105Mn+pwxFQ?=
 =?us-ascii?Q?SP2tv5EXQYh0cYjbjxroFjc9Hyoa/LkH8ECQjaaqgLzRQhA+oHQFtdflhS5B?=
 =?us-ascii?Q?GmclBf29AqSuBkF9tw3Mlf+jF3el1SfKlqRFUuGcswayecphOuaUGZtKGPaM?=
 =?us-ascii?Q?4Qa1T2kidQZwhL4V5aGGDg2AG/ljb8d9r1/C9XOqTl6Kha0xiJ7wuuQTQKBF?=
 =?us-ascii?Q?jW7ibZDuoQYXyxQHSu/p9W4ySEsaUP8meDwrHOI0IbJWYfOIZSmUZAo8Zpxi?=
 =?us-ascii?Q?8stQJLI6VpCduz+/gmTzW8oU7jblFN9xVTI0YAp35nrjrFWrtU94/lm9t0ma?=
 =?us-ascii?Q?Ht6fYqZgTq5iojvpu+qEqNpyVmYj0GOAUSZOb3nf3r+JMagiXiq+RrUHoY2z?=
 =?us-ascii?Q?VG/HcjHl+6Rcbg41Tdh5r2PMmxKVSZ7jADE7wPlP2j8Yb40Px7zxH8d4krHQ?=
 =?us-ascii?Q?+lJQmPkRoEuCo5sXpoIETt/LwbMH34vrxtdkmtpJZpZx/WZn+OK98oPXPTM7?=
 =?us-ascii?Q?heC+p/upRnwJ5hHCpnt7gFzf?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 197fff43-9312-4551-5836-08d904fac671
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2021 19:22:16.6558 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s2qvtc/a8D1yGUKEYcuZxY+UCaSs8RIFBBK08uJPTeQI3Fhsk0GhPvmuFfOt7/XOJjR1Bn5JFS3X4vr6XkdZ5coXc2GRlV/oWX6rG+vytLc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1784
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 5/6] iavf: Support for
 modifying UDP RSS flow hashing
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
Cc: "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Haiyue Wang
> Sent: wtorek, 13 kwietnia 2021 02:49
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 5/6] iavf: Support for
> modifying UDP RSS flow hashing
> 
> Provides the ability to enable UDP RSS hashing by ethtool.
> 
> It gives users option of generating RSS hash based on the UDP source and
> destination ports numbers, IPv4 or IPv6 source and destination addresses.
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  .../net/ethernet/intel/iavf/iavf_adv_rss.c    | 28 +++++++++++++++++--
>  .../net/ethernet/intel/iavf/iavf_adv_rss.h    | 10 ++++++-
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 23 +++++++++++++--
>  3 files changed, 56 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
> b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
> index 4c5771cdc445..a8e03aaccc6b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
> @@ -56,6 +56,23 @@ iavf_fill_adv_rss_tcp_hdr(struct virtchnl_proto_hdr
> *hdr, u64 hash_flds)
>  		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, TCP,
> DST_PORT);  }
> 
> +/**
> + * iavf_fill_adv_rss_udp_hdr - fill the UDP RSS protocol header
> + * @hdr: the virtchnl message protocol header data structure
> + * @hash_flds: the RSS configuration protocol hash fields  */ static
> +void iavf_fill_adv_rss_udp_hdr(struct virtchnl_proto_hdr *hdr, u64
> +hash_flds) {
> +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, UDP);
> +
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_UDP_SRC_PORT)
> +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, UDP,
> SRC_PORT);
> +
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT)
> +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, UDP,
> DST_PORT); }
> +
>  /**
>   * iavf_fill_adv_rss_cfg_msg - fill the RSS configuration into virtchnl message
>   * @rss_cfg: the virtchnl message to be filled with RSS configuration setting
> @@ -92,6 +109,9 @@ iavf_fill_adv_rss_cfg_msg(struct virtchnl_rss_cfg
> *rss_cfg,
>  	case IAVF_ADV_RSS_FLOW_SEG_HDR_TCP:
>  		iavf_fill_adv_rss_tcp_hdr(hdr, hash_flds);
>  		break;
> +	case IAVF_ADV_RSS_FLOW_SEG_HDR_UDP:
> +		iavf_fill_adv_rss_udp_hdr(hdr, hash_flds);
> +		break;
>  	default:
>  		return -EINVAL;
>  	}
> @@ -138,6 +158,8 @@ iavf_print_adv_rss_cfg(struct iavf_adapter *adapter,
> struct iavf_adv_rss *rss,
> 
>  	if (packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_TCP)
>  		proto = "TCP";
> +	else if (packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_UDP)
> +		proto = "UDP";
>  	else
>  		return;
> 
> @@ -155,9 +177,11 @@ iavf_print_adv_rss_cfg(struct iavf_adapter
> *adapter, struct iavf_adv_rss *rss,
>  	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_IPV4_DA |
>  			 IAVF_ADV_RSS_HASH_FLD_IPV6_DA))
>  		strcat(hash_opt, "IP DA,");
> -	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_TCP_SRC_PORT)
> +	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_TCP_SRC_PORT |
> +			 IAVF_ADV_RSS_HASH_FLD_UDP_SRC_PORT))
>  		strcat(hash_opt, "src port,");
> -	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_TCP_DST_PORT)
> +	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_TCP_DST_PORT |
> +			 IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT))
>  		strcat(hash_opt, "dst port,");
> 
>  	if (!action)
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
> b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
> index 339ecb42938b..4681f5e8321d 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
> @@ -20,6 +20,7 @@ enum iavf_adv_rss_flow_seg_hdr {
>  	IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4	= 0x00000001,
>  	IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6	= 0x00000002,
>  	IAVF_ADV_RSS_FLOW_SEG_HDR_TCP	= 0x00000004,
> +	IAVF_ADV_RSS_FLOW_SEG_HDR_UDP	= 0x00000008,
>  };
> 
>  #define IAVF_ADV_RSS_FLOW_SEG_HDR_L3		\
> @@ -27,7 +28,8 @@ enum iavf_adv_rss_flow_seg_hdr {
>  	 IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6)
> 
>  #define IAVF_ADV_RSS_FLOW_SEG_HDR_L4		\
> -	(IAVF_ADV_RSS_FLOW_SEG_HDR_TCP)
> +	(IAVF_ADV_RSS_FLOW_SEG_HDR_TCP |	\
> +	 IAVF_ADV_RSS_FLOW_SEG_HDR_UDP)
> 
>  enum iavf_adv_rss_flow_field {
>  	/* L3 */
> @@ -38,6 +40,8 @@ enum iavf_adv_rss_flow_field {
>  	/* L4 */
>  	IAVF_ADV_RSS_FLOW_FIELD_IDX_TCP_SRC_PORT,
>  	IAVF_ADV_RSS_FLOW_FIELD_IDX_TCP_DST_PORT,
> +	IAVF_ADV_RSS_FLOW_FIELD_IDX_UDP_SRC_PORT,
> +	IAVF_ADV_RSS_FLOW_FIELD_IDX_UDP_DST_PORT,
> 
>  	/* The total number of enums must not exceed 64 */
>  	IAVF_ADV_RSS_FLOW_FIELD_IDX_MAX
> @@ -56,6 +60,10 @@ enum iavf_adv_rss_flow_field {
>  	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_TCP_SRC_PORT)
>  #define IAVF_ADV_RSS_HASH_FLD_TCP_DST_PORT	\
>  	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_TCP_DST_PORT)
> +#define IAVF_ADV_RSS_HASH_FLD_UDP_SRC_PORT	\
> +	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_UDP_SRC_PORT)
> +#define IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT	\
> +	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_UDP_DST_PORT)
> 
>  /* bookkeeping of advanced RSS configuration */  struct iavf_adv_rss { diff --
> git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index b5ec8e723b61..8a396cba944b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -1434,10 +1434,18 @@ static u32 iavf_adv_rss_parse_hdrs(struct
> ethtool_rxnfc *cmd)
>  		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_TCP |
>  			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4;
>  		break;
> +	case UDP_V4_FLOW:
> +		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_UDP |
> +			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4;
> +		break;
>  	case TCP_V6_FLOW:
>  		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_TCP |
>  			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6;
>  		break;
> +	case UDP_V6_FLOW:
> +		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_UDP |
> +			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6;
> +		break;
>  	default:
>  		break;
>  	}
> @@ -1459,12 +1467,14 @@ static u64 iavf_adv_rss_parse_hash_flds(struct
> ethtool_rxnfc *cmd)
>  	if (cmd->data & RXH_IP_SRC || cmd->data & RXH_IP_DST) {
>  		switch (cmd->flow_type) {
>  		case TCP_V4_FLOW:
> +		case UDP_V4_FLOW:
>  			if (cmd->data & RXH_IP_SRC)
>  				hfld |= IAVF_ADV_RSS_HASH_FLD_IPV4_SA;
>  			if (cmd->data & RXH_IP_DST)
>  				hfld |= IAVF_ADV_RSS_HASH_FLD_IPV4_DA;
>  			break;
>  		case TCP_V6_FLOW:
> +		case UDP_V6_FLOW:
>  			if (cmd->data & RXH_IP_SRC)
>  				hfld |= IAVF_ADV_RSS_HASH_FLD_IPV6_SA;
>  			if (cmd->data & RXH_IP_DST)
> @@ -1484,6 +1494,13 @@ static u64 iavf_adv_rss_parse_hash_flds(struct
> ethtool_rxnfc *cmd)
>  			if (cmd->data & RXH_L4_B_2_3)
>  				hfld |=
> IAVF_ADV_RSS_HASH_FLD_TCP_DST_PORT;
>  			break;
> +		case UDP_V4_FLOW:
> +		case UDP_V6_FLOW:
> +			if (cmd->data & RXH_L4_B_0_1)
> +				hfld |=
> IAVF_ADV_RSS_HASH_FLD_UDP_SRC_PORT;
> +			if (cmd->data & RXH_L4_B_2_3)
> +				hfld |=
> IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT;
> +			break;
>  		default:
>  			break;
>  		}
> @@ -1617,10 +1634,12 @@ iavf_get_adv_rss_hash_opt(struct iavf_adapter
> *adapter,
>  			 IAVF_ADV_RSS_HASH_FLD_IPV6_DA))
>  		cmd->data |= (u64)RXH_IP_DST;
> 
> -	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_TCP_SRC_PORT)
> +	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_TCP_SRC_PORT |
> +			 IAVF_ADV_RSS_HASH_FLD_UDP_SRC_PORT))
>  		cmd->data |= (u64)RXH_L4_B_0_1;
> 
> -	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_TCP_DST_PORT)
> +	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_TCP_DST_PORT |
> +			 IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT))
>  		cmd->data |= (u64)RXH_L4_B_2_3;
> 
>  	return 0;

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
