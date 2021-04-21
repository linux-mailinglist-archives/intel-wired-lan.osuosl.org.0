Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 771BB367358
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Apr 2021 21:21:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11B66401D6;
	Wed, 21 Apr 2021 19:21:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lBRYPaYPxOhH; Wed, 21 Apr 2021 19:21:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF57A4016E;
	Wed, 21 Apr 2021 19:21:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 104401BF239
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:21:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F36524016E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:21:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id koICSOjxF7SH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Apr 2021 19:21:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1AB0E400E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:21:05 +0000 (UTC)
IronPort-SDR: 1uybi9leyOe/c2fE1ExS3uTkGQhrRuEqqETGA94bSHVlTT8XLgVPly0neiVmAHMjEUoVvKJfrV
 z/uoojEwDaWQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="192573443"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="192573443"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 12:21:04 -0700
IronPort-SDR: 77SxjiXHzpoM2l6VoPu9zlgvfqh2lUOdkCJ4rbv+ChyjyChq0hvX7voyLv5BV9gP6KFpWB0J5O
 dsWwOsSzbfow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="617440397"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 21 Apr 2021 12:21:01 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 21 Apr 2021 12:21:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 21 Apr 2021 12:21:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 21 Apr 2021 12:20:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HdTmmGzm+62pyC26cqca8nEJy7X7/o1ZePPR+Y/NgljKr9vs1CGxqAUiAuJmcpfaEcZ4RxEKIhkO0iBK7X2uReoDZpyh8QZKfVAAiGzytd8B+N/8gq4b9NvAW07lYfZsa+9VJFoDpusxqDGYww3myvRgI97DKLNjLAxD5SqsoTK4BLwtLZ/zmpDbj0tEO//iZD2oLzlCJIdY4Bq7HALhsfp2j6g2a3oC3B2uoCvz7aCc8Dze/xQ+PqDYdxjHJdU1VWpX9lQAZX3LupY04wuOJAFvjlJ8P5BcRqSfW+a7OnJMvdrpdDYfECS7eoVy7Bli7oyIKQsB5wn+LmhQr14Hyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cj7/MaMp61ILDk9LfUmmREEzAx15Mts3heUxx6XZjaM=;
 b=k91tUYdKjb7qIs6C1SFC0jANsgn2qkcb5x0FdQN37JNmG8QdCXk0i+GIavDgYqotBTg5NPBP1P8VKOf8r65Quk/y7zZBIPxW6044KKytsHYVM3YBXIH+zx47CovOVC82C6EGDjREZLXfcCAOPa35FvNf3JJ4DTqetGTK/BGkpSPz97pEBZj1aF57nLWke2vlGa18g+e9dhYCKUlUZL/q9fIti32pNNiDQVZZqv5YBHuoSIt76ydGhPWMBdsvKS+jMNVcWkMh14wjjW/qAdeoY0TxqIcJAfB57VSvQ/oZoLRi583cLUv/FkohKdzOwFC2hOvF595ze0wDA3mDIDdVAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cj7/MaMp61ILDk9LfUmmREEzAx15Mts3heUxx6XZjaM=;
 b=moLoviGfrt8+x4ZDEZlB5YJPElpbmwfl7JpW3ZRPjIZXiWVFhtdm3HQlSnHd9i3TIf6yQltlcCvBgdqnSNvIVo/T2rfLbovEUOUdhUWYnDFzKbbfr6LGNNmobmHkejCkLQqiDQ0y/0HjX+nEOKfF4YYBTTQKQcQ/1rAPCyDY+T8=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR11MB1784.namprd11.prod.outlook.com (2603:10b6:903:126::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Wed, 21 Apr
 2021 19:20:57 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08%7]) with mapi id 15.20.4020.023; Wed, 21 Apr 2021
 19:20:57 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 6/6] iavf: Support for
 modifying SCTP RSS flow hashing
Thread-Index: AQHXMAGq/POQz4ku/kuuQBfrkwvIWqq/ZtTw
Date: Wed, 21 Apr 2021 19:20:57 +0000
Message-ID: <CY4PR11MB1576A4325C793F83BDC5BB0FAB479@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210413004844.32462-1-haiyue.wang@intel.com>
 <20210413004844.32462-7-haiyue.wang@intel.com>
In-Reply-To: <20210413004844.32462-7-haiyue.wang@intel.com>
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
x-ms-office365-filtering-correlation-id: 6d652591-ecd6-4d65-e16c-08d904fa976e
x-ms-traffictypediagnostic: CY4PR11MB1784:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB178409C7D6F7FEBF895391FCAB479@CY4PR11MB1784.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sZiAb9N8dNcmzZw1nhPT71WHR+S7/NiWCl4ryZadMu3MPQwNNbyl8YFhdUpyXKDqzB4oF/kvQzF7hWmuPsdOaVrjROeIraDk3WqMkFuXNx0JQCIjW74nx9mf6pjSw3G5WZBPZ0MZzgIUii87YsS3/ukBnXCQc81NXoiF8JJrw/nt47NXgTlrLUNhBpQp0GrscAiTwlAZmKjGr/k9izliSxgB+JSOMSNooriQXTToEznolQ5dwrokri7Rds0tP6fMqGe7EyTz3GME63OaxhJ7GTx+ploYcPRwnHFZCPFbM/sxTcPzK/LT+s0Qewyixl/KJvZmzi9ICGJNXH698i3+IzLzgs0i9yyqhtru9qTSwlJqq9if7heCp4/U7izYUWVuQJWeLTVbpsWRZVM9FEgQb0McHahpEKK4zc99cuX95UH2hLUvU11IuqWHaj4u7TEMugcgZph0BSmgcyPPpO0FWKYrnpDIC5bDJThHXsNptp50KHl3tJiWM7ncJg9vo0tQrpD/87E5k0y4F08P8/w1xAGK3XlQ7Y8/BvRvcHONNl5yOG7RyFabTzwfD5INgAI2R862+ek0s8IZBKM/WCiJWM0JBSMdUk6jJbNDMaHsEEI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(136003)(376002)(366004)(346002)(38100700002)(316002)(478600001)(110136005)(52536014)(66446008)(33656002)(55016002)(71200400001)(64756008)(8936002)(83380400001)(4326008)(66556008)(26005)(9686003)(76116006)(66476007)(5660300002)(122000001)(66946007)(107886003)(186003)(6506007)(53546011)(86362001)(2906002)(7696005)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?kC6ilgU0r2YrTuAfWr7S5J8iV0xY4GdbqqPb1Zp/1Ee5uQvVEMFZL5t2BHXy?=
 =?us-ascii?Q?keYCW7sjibD1FPkRidJyAZL8Jk7G61dU11kUGTI7qO0rm4WxB3mLmjE6M3bX?=
 =?us-ascii?Q?20dilQCTcoe0CBTmp10t1ADEzOYlGx8nVuZKyJsIL1l3j0ctQInvprvE22Ck?=
 =?us-ascii?Q?0QkgF7i94w4X47QbVMh9eJpvzbxsOF0YUwFkLwHj3cGGRfahmoujpXDtC+L2?=
 =?us-ascii?Q?OjR+5TL36SOqkhqM12nagIuAz9PR7T4e/LxV7UV4xvWpWHXfsKiav2W0l4/L?=
 =?us-ascii?Q?jwY9LkwA463OETc8WgfE80Bhg3eT5CrtMMvTVcqjl3BzaTSPwQuma9Dc8pi0?=
 =?us-ascii?Q?AtR2yNP+RKuKLGaJnX3gt5yiUTwXaJ0dXMaZQ8qHgYjwpygTbVQN0LNXRsci?=
 =?us-ascii?Q?cDuE1NmT/dViUt2VEaJwEDoh8udm75X3sxBTH3zOLcaipSqpO3dfLEeAO4eo?=
 =?us-ascii?Q?CD2DQHjX5w1FBNC4cekdVKMMfHsHwYj1m2UN1Wsb28TQv/5h4h/EpHSHzbHS?=
 =?us-ascii?Q?co+p4N0v93G+wAZYmb9EZfHX6lXACnqFx9Zw9xuT72OMuW8lj5EkGHoOxphR?=
 =?us-ascii?Q?1POhAb9EKzeYFUj0TZfmtItf7TuW7Aao5v2hqrJ+SU+yEgPORtZ4YFRRDq3h?=
 =?us-ascii?Q?1usigLHSsBD3cxuN4rNzorsTVNKu/n/x9XJ/XSmUhqfxKAlwD6qCjf4rS1DS?=
 =?us-ascii?Q?nqtYb+snsDCuiSwoC3t1uhAcVJUQVRDhEzo9jLk6ogrl7hNfM/Dlt6dDdzwD?=
 =?us-ascii?Q?cKDpD/lpbO/9ov5cTE5kukgN5x6h1X/3BCkzxzZE0n2G0a+ha6syjbULuXIs?=
 =?us-ascii?Q?uaoIlJcZDdxOpiN/lEK0axBq1/90VBvyv8TrFPV4s2vDPo5x/MlaSeFEZVQr?=
 =?us-ascii?Q?7L1J0bnbQWrmUCab4qzbBnWklg5gKlY11LTZRUtpnxZtIz5FdWEx3X/WdP0G?=
 =?us-ascii?Q?lhCBKsmVr0Lh/HZ/dnVAb0VyxZ8x76xri0nXu+mOvmuRqSL5J+SY80zEDH+N?=
 =?us-ascii?Q?tOLeJSYZRw0W7CG/Xrv1LK0M6twdC/TwECcuoGg7YOzitEUqcqknFqH89i1C?=
 =?us-ascii?Q?kYKQ3glgIQzO+XBEtVfcEwZgRjm+xid4ffzW30ywKQsuOtD8JIpWZGU6dUzz?=
 =?us-ascii?Q?OjFQYYu/ES5yUOas9+6abuZvl78/RRgLjpKIGU0C/+nZiaUsnen0ViBOcAjs?=
 =?us-ascii?Q?1ivJua+zqX2OcPFNpwx1pbfxaP12HppaLfmMNeW4Bzn0y4G6IzH4pqCd1e2B?=
 =?us-ascii?Q?sHS7S/9idm4YJkrOFkt+KdGkKphP8jNlmIQvfdhvJpNZ+qVDIW1e74EGK52E?=
 =?us-ascii?Q?RRfhhZRDT+XNa4+R5iaUv+Ne?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d652591-ecd6-4d65-e16c-08d904fa976e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2021 19:20:57.7637 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ppyCfov+wHmPg5LbMEUb/9g3INOUprLdzxq5SlczOEOe85qYR7/ALvBM5k3EBFKe5rHUPsniEg35Dm5WILwIQbVPa8kWYq/o2cITi0ps/so=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1784
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 6/6] iavf: Support for
 modifying SCTP RSS flow hashing
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
> Subject: [Intel-wired-lan] [PATCH net-next v3 6/6] iavf: Support for
> modifying SCTP RSS flow hashing
> 
> Provide the ability to enable SCTP RSS hashing by ethtool.
> 
> It gives users option of generating RSS hash based on the SCTP source and
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
> index a8e03aaccc6b..6edbf134b73f 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
> @@ -73,6 +73,23 @@ iavf_fill_adv_rss_udp_hdr(struct virtchnl_proto_hdr
> *hdr, u64 hash_flds)
>  		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, UDP,
> DST_PORT);  }
> 
> +/**
> + * iavf_fill_adv_rss_sctp_hdr - fill the SCTP RSS protocol header
> + * @hdr: the virtchnl message protocol header data structure
> + * @hash_flds: the RSS configuration protocol hash fields  */ static
> +void iavf_fill_adv_rss_sctp_hdr(struct virtchnl_proto_hdr *hdr, u64
> +hash_flds) {
> +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, SCTP);
> +
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_SCTP_SRC_PORT)
> +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, SCTP,
> SRC_PORT);
> +
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_SCTP_DST_PORT)
> +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, SCTP,
> DST_PORT); }
> +
>  /**
>   * iavf_fill_adv_rss_cfg_msg - fill the RSS configuration into virtchnl message
>   * @rss_cfg: the virtchnl message to be filled with RSS configuration setting
> @@ -112,6 +129,9 @@ iavf_fill_adv_rss_cfg_msg(struct virtchnl_rss_cfg
> *rss_cfg,
>  	case IAVF_ADV_RSS_FLOW_SEG_HDR_UDP:
>  		iavf_fill_adv_rss_udp_hdr(hdr, hash_flds);
>  		break;
> +	case IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP:
> +		iavf_fill_adv_rss_sctp_hdr(hdr, hash_flds);
> +		break;
>  	default:
>  		return -EINVAL;
>  	}
> @@ -160,6 +180,8 @@ iavf_print_adv_rss_cfg(struct iavf_adapter *adapter,
> struct iavf_adv_rss *rss,
>  		proto = "TCP";
>  	else if (packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_UDP)
>  		proto = "UDP";
> +	else if (packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP)
> +		proto = "SCTP";
>  	else
>  		return;
> 
> @@ -178,10 +200,12 @@ iavf_print_adv_rss_cfg(struct iavf_adapter
> *adapter, struct iavf_adv_rss *rss,
>  			 IAVF_ADV_RSS_HASH_FLD_IPV6_DA))
>  		strcat(hash_opt, "IP DA,");
>  	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_TCP_SRC_PORT |
> -			 IAVF_ADV_RSS_HASH_FLD_UDP_SRC_PORT))
> +			 IAVF_ADV_RSS_HASH_FLD_UDP_SRC_PORT |
> +			 IAVF_ADV_RSS_HASH_FLD_SCTP_SRC_PORT))
>  		strcat(hash_opt, "src port,");
>  	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_TCP_DST_PORT |
> -			 IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT))
> +			 IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT |
> +			 IAVF_ADV_RSS_HASH_FLD_SCTP_DST_PORT))
>  		strcat(hash_opt, "dst port,");
> 
>  	if (!action)
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
> b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
> index 4681f5e8321d..4d3be11af7aa 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
> @@ -21,6 +21,7 @@ enum iavf_adv_rss_flow_seg_hdr {
>  	IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6	= 0x00000002,
>  	IAVF_ADV_RSS_FLOW_SEG_HDR_TCP	= 0x00000004,
>  	IAVF_ADV_RSS_FLOW_SEG_HDR_UDP	= 0x00000008,
> +	IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP	= 0x00000010,
>  };
> 
>  #define IAVF_ADV_RSS_FLOW_SEG_HDR_L3		\
> @@ -29,7 +30,8 @@ enum iavf_adv_rss_flow_seg_hdr {
> 
>  #define IAVF_ADV_RSS_FLOW_SEG_HDR_L4		\
>  	(IAVF_ADV_RSS_FLOW_SEG_HDR_TCP |	\
> -	 IAVF_ADV_RSS_FLOW_SEG_HDR_UDP)
> +	 IAVF_ADV_RSS_FLOW_SEG_HDR_UDP |	\
> +	 IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP)
> 
>  enum iavf_adv_rss_flow_field {
>  	/* L3 */
> @@ -42,6 +44,8 @@ enum iavf_adv_rss_flow_field {
>  	IAVF_ADV_RSS_FLOW_FIELD_IDX_TCP_DST_PORT,
>  	IAVF_ADV_RSS_FLOW_FIELD_IDX_UDP_SRC_PORT,
>  	IAVF_ADV_RSS_FLOW_FIELD_IDX_UDP_DST_PORT,
> +	IAVF_ADV_RSS_FLOW_FIELD_IDX_SCTP_SRC_PORT,
> +	IAVF_ADV_RSS_FLOW_FIELD_IDX_SCTP_DST_PORT,
> 
>  	/* The total number of enums must not exceed 64 */
>  	IAVF_ADV_RSS_FLOW_FIELD_IDX_MAX
> @@ -64,6 +68,10 @@ enum iavf_adv_rss_flow_field {
>  	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_UDP_SRC_PORT)
>  #define IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT	\
>  	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_UDP_DST_PORT)
> +#define IAVF_ADV_RSS_HASH_FLD_SCTP_SRC_PORT	\
> +	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_SCTP_SRC_PORT)
> +#define IAVF_ADV_RSS_HASH_FLD_SCTP_DST_PORT	\
> +	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_SCTP_DST_PORT)
> 
>  /* bookkeeping of advanced RSS configuration */  struct iavf_adv_rss { diff --
> git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 8a396cba944b..0d22a5275218 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -1438,6 +1438,10 @@ static u32 iavf_adv_rss_parse_hdrs(struct
> ethtool_rxnfc *cmd)
>  		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_UDP |
>  			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4;
>  		break;
> +	case SCTP_V4_FLOW:
> +		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP |
> +			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4;
> +		break;
>  	case TCP_V6_FLOW:
>  		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_TCP |
>  			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6;
> @@ -1446,6 +1450,10 @@ static u32 iavf_adv_rss_parse_hdrs(struct
> ethtool_rxnfc *cmd)
>  		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_UDP |
>  			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6;
>  		break;
> +	case SCTP_V6_FLOW:
> +		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP |
> +			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6;
> +		break;
>  	default:
>  		break;
>  	}
> @@ -1468,6 +1476,7 @@ static u64 iavf_adv_rss_parse_hash_flds(struct
> ethtool_rxnfc *cmd)
>  		switch (cmd->flow_type) {
>  		case TCP_V4_FLOW:
>  		case UDP_V4_FLOW:
> +		case SCTP_V4_FLOW:
>  			if (cmd->data & RXH_IP_SRC)
>  				hfld |= IAVF_ADV_RSS_HASH_FLD_IPV4_SA;
>  			if (cmd->data & RXH_IP_DST)
> @@ -1475,6 +1484,7 @@ static u64 iavf_adv_rss_parse_hash_flds(struct
> ethtool_rxnfc *cmd)
>  			break;
>  		case TCP_V6_FLOW:
>  		case UDP_V6_FLOW:
> +		case SCTP_V6_FLOW:
>  			if (cmd->data & RXH_IP_SRC)
>  				hfld |= IAVF_ADV_RSS_HASH_FLD_IPV6_SA;
>  			if (cmd->data & RXH_IP_DST)
> @@ -1501,6 +1511,13 @@ static u64 iavf_adv_rss_parse_hash_flds(struct
> ethtool_rxnfc *cmd)
>  			if (cmd->data & RXH_L4_B_2_3)
>  				hfld |=
> IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT;
>  			break;
> +		case SCTP_V4_FLOW:
> +		case SCTP_V6_FLOW:
> +			if (cmd->data & RXH_L4_B_0_1)
> +				hfld |=
> IAVF_ADV_RSS_HASH_FLD_SCTP_SRC_PORT;
> +			if (cmd->data & RXH_L4_B_2_3)
> +				hfld |=
> IAVF_ADV_RSS_HASH_FLD_SCTP_DST_PORT;
> +			break;
>  		default:
>  			break;
>  		}
> @@ -1635,11 +1652,13 @@ iavf_get_adv_rss_hash_opt(struct iavf_adapter
> *adapter,
>  		cmd->data |= (u64)RXH_IP_DST;
> 
>  	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_TCP_SRC_PORT |
> -			 IAVF_ADV_RSS_HASH_FLD_UDP_SRC_PORT))
> +			 IAVF_ADV_RSS_HASH_FLD_UDP_SRC_PORT |
> +			 IAVF_ADV_RSS_HASH_FLD_SCTP_SRC_PORT))
>  		cmd->data |= (u64)RXH_L4_B_0_1;
> 
>  	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_TCP_DST_PORT |
> -			 IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT))
> +			 IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT |
> +			 IAVF_ADV_RSS_HASH_FLD_SCTP_DST_PORT))
>  		cmd->data |= (u64)RXH_L4_B_2_3;
> 
>  	return 0;

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
