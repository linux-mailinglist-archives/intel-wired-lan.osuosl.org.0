Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED0C4D0406
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Mar 2022 17:24:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9CA660ED2;
	Mon,  7 Mar 2022 16:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uop-DXLugXBq; Mon,  7 Mar 2022 16:24:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C306E60EC3;
	Mon,  7 Mar 2022 16:24:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B8F2A1BF36A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 16:23:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A74E640210
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 16:23:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j2vYsRSiSzQT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Mar 2022 16:23:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F5384020A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 16:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646670234; x=1678206234;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JWLr/CkWuVE53wM+P8b5Z0EhgDfQh5Pp2qfHCoCMGMI=;
 b=LJI6k0TgMU6huWTe2BqEA+/IkBMLbxOa9OZtfi2i7bzKoQsy7omB90FS
 rhYWEQniyvjB8TxuZO69T+Ze6VGO/86D9cnYrqTZge4aWoAmnx7Stkzve
 igBB3ECP5ehzlU6zxNVBHFj1O3rQGABkPBrGwNdBNaADzBzM1Qy5Oyzwu
 ajB7rJjMMSzHeIveRtDlg/wmmM1zTED5yMVbwfb0Zz7H2I41ssPAGttzM
 y9b3Y8aikZfxP+nyHVuh5aO7/2SFMpmVUwSSNqRPkMxzouEId9kIno8Lc
 cASTdYJg3bW+kVQitAzyZdQuyZo+uI1p0drCKnDdUx2Hi1glgofvx0kZt w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="235042183"
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="235042183"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 08:20:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="641381976"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 07 Mar 2022 08:20:36 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 7 Mar 2022 08:20:36 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Mon, 7 Mar 2022 08:20:36 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Mon, 7 Mar 2022 08:20:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cPYe3TY3lWPbQfVC5TUK0sSMR9PNxNCiSYKY9yq7rVD/bfoIQYd66UkDgDLDvhEpibnJZcD3FvYXupsi7Q9azeS7jgsENEzPfLTkhDhn/lPMkd21QEcpE1zjFUKv3Jj5QGu517XPnB2SrawhzmJ/p8q1HP4g+EriII9PuUjPjX4rq6VC0aM3CAIZaRW4R8p72fKnbxvMYSaOZLAcOgI9VL4u0EeXKBnUtnLqHhNXuCfhfM9RqVOTTC7kuqO2EKg0tROVnmjmHQqYjBmio8Fva6JJ8fzai/G9xnHyI6dWdTf50XIa2mFcnpFIUdXYhCQSLcHd2JreLUBhu9Ia5hMD8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1UonKafhGlcf8Zc3UzAXmMk9EdqqOgUaY6xmOQ52O58=;
 b=X6Nl2yYy0xV0Qvd+ANS2Dq5nEZvzNlKR/0lKWsmzHzwsW3bSCRTThNcMBlEFW0URv9C/rMfr97b2OhWuExrjUCpHoNTfl51m17RnpMHBQYxNERPJwP5AaO88NzgjWFIJgaEZOxUt2sbb5OziftVlBvVH5r/2YJMM1NAeJhfpsmcYqFXma0vvZr8ZQYBIbPOiej0351JKM3m4gZbQ9gSwveW989JhKzDl77w+Jv5mhmNwwQhDcfaDYJkQsH0+6kuQhT7BnA6iYBOpvhoUa1eSzX3LbwNzFS0o7fQzmnP5VZ0vzt7Ne0oz7AJzSgbmxF/hsCJuxKLucU+hEGRJjwN4ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 PH0PR11MB4934.namprd11.prod.outlook.com (2603:10b6:510:30::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.14; Mon, 7 Mar 2022 16:20:34 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::c445:1c7b:8914:7968]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::c445:1c7b:8914:7968%5]) with mapi id 15.20.5038.027; Mon, 7 Mar 2022
 16:20:34 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Mrozowicz, SlawomirX" <slawomirx.mrozowicz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 1/3] ixgbe: add the ability for
 the PF to disable VF link state
Thread-Index: AQHYLVEJDKcBpvdH8UyQicfXcehQvKy0I8GA
Date: Mon, 7 Mar 2022 16:20:34 +0000
Message-ID: <DM8PR11MB5621E59AF2135DDF13CEBC21AB089@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220301114010.2676-1-slawomirx.mrozowicz@intel.com>
In-Reply-To: <20220301114010.2676-1-slawomirx.mrozowicz@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d42d01f-2708-431c-2902-08da00566863
x-ms-traffictypediagnostic: PH0PR11MB4934:EE_
x-microsoft-antispam-prvs: <PH0PR11MB4934115B5CF629E3B061EF04AB089@PH0PR11MB4934.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ueVr6tNeoWkRGW2p4IRFaUP/yA6+XKoPbYFMGEQBVrTGngmBARcBoy7QvcqxwXbwgsy4BsirTY+Y3qxqZ5rIH5Rb2EyaNOX4uaKQXahL2uozh42HhmF3u8BIKQiaq6bhmOnNmaA1AeLWXuf8R+YnGajkxZcRnA2Zh0UIiuovLFEQ/Ix4AtsyuaCtdyLzn+j2KnkbEIYoIf6tb2j4JViSU4Mvs3gH+5fBn2ICfhfwSD9x0VY7bJMHppsTnl/8xwfZu/cX/UZQCbRuCmjr0/MX/O18zSCoZKCNOYQHR4hqfZUX8asIAdKFi8nADewdOd9zSB3i0gLJ1Qzwr2sjdO3peSVoZ6JtDpizHL8uZ3RP916ccilMvWbU+zJehxtDf9dCn7qsZ1UehBBeGZdVdZqqiHf7Nw7jk9jxhVEtMlHs5QDz+ndzdh6JOxoLwJEQ8u5JuIHqXDH/bJvDiE4U4lmRLnzPyDGeyH3nsWxJ1KakpW0Qnq9kPQX8QTOhCtzj57k7S35x3DHTTvbVw1KKcytGGoVt2A0qV2NuIVXBZsZrrEhhSnkJ1b5OkQjB5i6Xu1DUBEvlv69a6kBDb9tLzmL/f8P1VN+yWrUKoOXipb5I9btf6OpGyCU8hbxIoi+uhdc2mxTgG1HrUcAwYYTuzQQnkarcD5LrOeV/bmBDfgWFEDUO+bQNaFQUxw3NX3bZlEcc0Bn6ihvW1Ol8JIso4wqtAg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2906002)(508600001)(66476007)(9686003)(38100700002)(122000001)(33656002)(26005)(186003)(53546011)(5660300002)(7696005)(52536014)(82960400001)(6506007)(107886003)(8936002)(83380400001)(86362001)(316002)(55016003)(38070700005)(71200400001)(110136005)(76116006)(4326008)(8676002)(66946007)(66446008)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R/WCJbOV0Svwepn2m+0j5AhPr1X6Y0boYfBIKPrr8dAF8JBvReElqIye1v24?=
 =?us-ascii?Q?qpNv/EZkfcC0kKOwvUtOEA07CQkE4rFbnbTPzthsfpuHguDl6CksImFY0DDJ?=
 =?us-ascii?Q?ZEScFb4aH0VdH+Q5OZfs9eZqJCe6QQi9GQ4UeoVajMuFcPmdxfYCp8hMLs09?=
 =?us-ascii?Q?93bs7D6tfV0FB7NSfC55Rrt/a/QTdmnPWaUA/nIuSSGEm1K2dVyc7INm0Y7C?=
 =?us-ascii?Q?fE7aQDhLAY/Jw7DvjfRD1cFZEIiPC/Q99gaQccluUnTBfj1Fpl2L8HeGai7t?=
 =?us-ascii?Q?34LWtGw1Y3P4FC0PSD+BJ1VcbdktWzu7RTyGkgGaNOdxGk5Qd8uz4cx5FBb7?=
 =?us-ascii?Q?AgmAz0lntmjxDudmQy4NF6tXHpV2G3xkgTvwn7gEBj/Z9b4FvJq3UTTdtrUH?=
 =?us-ascii?Q?JFehk147PUuj1leKl9YuzK7sTl7Q/GRu9HSnhz8l5KlXoZD5S00pJTBxUNFz?=
 =?us-ascii?Q?Y/G1eYMacoM3D0ObCA7bJlt0mRln+YaRJexTzB7etXQYf24JQrZtMBInhIuv?=
 =?us-ascii?Q?bYtMiW0qzsdkpD+La/uoVsd7EV/tUI/bKtIAbfLz0GBgMOuphIh7Bmvy7AkD?=
 =?us-ascii?Q?PiqWoXBh8CAVpKUHrart1XnBG89wtMj5B5oHDKN5vNOeuX5Gi6GGpIzirXzL?=
 =?us-ascii?Q?igOsunioOyfBofwgiQB/9Soc+RQFUibrgAkZHamXtHD41fyr6qGMCiud7s/a?=
 =?us-ascii?Q?U/asS5I5y/0yDkAtalC8iz2EFP+CT/+wdQD3KNsgqzgFKDUcQNFZI9kZCFjO?=
 =?us-ascii?Q?CAhMVwb55zr66GDf98c/fY4nqT3v0Co4xrGzPr+t4hPVQugwkmYTw8Y1RiIM?=
 =?us-ascii?Q?lDgnaIXlEPnl977dvZ8rwgXqPpCDeZGvOJQGcTmM/ekOArKdY/3UctYHQ7b0?=
 =?us-ascii?Q?q5DvUsVAVcS6HU3gYLjSSZNVrJtYcVjaQDfkYsymjMEBWyXS/hmcDKSS2y23?=
 =?us-ascii?Q?ZzSUTYm0NLRY6qoU8OwA1dxAUJNzGOlhIuxLkjEzUwEBbwdUMx492IaSuwgU?=
 =?us-ascii?Q?o9rFXodN52mO1hwpmp0irBFtAjStOimBJOnrRPZif5wVDtWvBuo/XT9cM4+c?=
 =?us-ascii?Q?oQafDq9Rccznb3DfrXtcVa3w7w6Eio9x+mO20FWjiz7jfzS1xD+7Jz8BlyIA?=
 =?us-ascii?Q?+ZXC22owUdPlv8zo+PrnuZisxXxWqZiDdq6ltN0HG/6cfTltVT7TK2rPQU2W?=
 =?us-ascii?Q?bKLRxt3RQy8wyQ5KZS6GvFHA0nclCiRIW3BdEwTJ2MhbnzcoBmw3pFXp4lcD?=
 =?us-ascii?Q?2AcoywUm2W6vTrPeiM8kNWmshLFqEIpXxyPtnWTzZlflc4+ac8YFhpC0McZC?=
 =?us-ascii?Q?dnPdywDfxmwsd1PTDQiq/Y7ManoUFDT+b6iCnotMgZxyjTepV4lQp/g7jky0?=
 =?us-ascii?Q?FwIOxD9oREqm53CW2cWQp27GsGuzlSRUAAkwTzbGDG4y6fzcUZB28NPiaIox?=
 =?us-ascii?Q?ek8m028+IXBWbMWX6pd/wEQ0TY3+clNiWY8bSD9MXPrEdBI6OgEhtJ8CMkvo?=
 =?us-ascii?Q?YOZBtjWbba7s4Hl6hZb4pmxQF8xVoi9DiXHNeKlNIzcvtAuOCVBMhQhR1Ty5?=
 =?us-ascii?Q?yhRVBPA3G3z3ZwOd4ddlkcxI5OUXSNQeYNKKSmpiRuS2onbNtQxH29Ycip/0?=
 =?us-ascii?Q?Xm50LgJVSKiNTKx2iayaJo2l7supVa0FnpUeF2FmGQs3K9QfXjePzDFEZLog?=
 =?us-ascii?Q?85g01w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d42d01f-2708-431c-2902-08da00566863
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2022 16:20:34.3613 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P9tCOCUgnxlQXUkN/V2dEfo9dFcFTU/PMVXgRrQU9InldAuk4whMGfai9qlZcRxlR3PDmz1dFXuX2gQUWBdoZSaPcovkFOd+cTqSgihLvUE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4934
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/3] ixgbe: add the ability for
 the PF to disable VF link state
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
Cc: "Mrozowicz, SlawomirX" <slawomirx.mrozowicz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Slawomir Mrozowicz
> Sent: Tuesday, March 1, 2022 12:40 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Mrozowicz, SlawomirX <slawomirx.mrozowicz@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2 1/3] ixgbe: add the ability for the PF
> to disable VF link state
> 
> Add support for ndo_set_vf_link_state the Network Device Option that
> allows the PF driver to control the virtual link state of the VF devices.
> Without this change a VF cannot be disabled/enabled by the administrator.
> In the implementation the auto state takes over PF link state to VF link
> setting, the enable state is not supported, the disable state shut off the VF
> link regardless of the PF setting.
> 
> Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   2 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  11 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  |   2 +
>  .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    | 207 ++++++++++++++----
>  .../net/ethernet/intel/ixgbe/ixgbe_sriov.h    |   4 +-
>  5 files changed, 182 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index 4a69823e6abd..c9bf18086d9c 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -177,6 +177,8 @@ struct vf_data_storage {
>  	u16 pf_vlan; /* When set, guest VLAN config not allowed. */
>  	u16 pf_qos;
>  	u16 tx_rate;
> +	int link_enable;
> +	int link_state;
>  	u8 spoofchk_enabled;
>  	bool rss_query_enabled;
>  	u8 trusted;
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 89b467006291..e553b1c18ee7 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -5687,6 +5687,9 @@ static void ixgbe_up_complete(struct
> ixgbe_adapter *adapter)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
