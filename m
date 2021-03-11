Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0D03380F5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 23:55:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 912504ED0B;
	Thu, 11 Mar 2021 22:55:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IjEQPfBIJR75; Thu, 11 Mar 2021 22:55:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 624BC4ED09;
	Thu, 11 Mar 2021 22:55:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9DA2F1BF333
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 22:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B4C26F5A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 22:55:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YWrbn7smyfbp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 22:55:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A0D23606C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 22:55:14 +0000 (UTC)
IronPort-SDR: mrasnE6GoUNwD/vbrUJJPEXPD6HcWHBsY+/Fvq/YsO5jn0L3cnjhSoAYqwoze1Mz4Cbqnv4W1E
 jUvTBPMOSR+g==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="273792899"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="273792899"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:55:14 -0800
IronPort-SDR: ZxID6RynA3uyTW7tZAmPyGZ7XwDftSpO2jGww+44dL7vpU0EmNXBh6thYfHVciIfuBwzbND0XR
 fvJ99gSSv1Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="510158853"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 11 Mar 2021 14:55:14 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Mar 2021 14:55:13 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Mar 2021 14:55:13 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 11 Mar 2021 14:55:13 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 11 Mar 2021 14:55:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jZuKhP4+2JzkUGuRNBB1N0UACd04GudGPNpULR4fNSDj2my1yRelmS4VACdhqdyHUQXxJ4oF2tU4PFBHpw688X2kHFza0vVCULeqKvI/PVVb1GsHJAi8FNcfPyWrOfbybLrHmUElXPX4Wg0NYxakmrw1WtI7cYF/2Xjr8jUpJZH2LXE2sx/F/95gzEoHVjh2K0uh//GWB5Dp+SjW1hAe0OR4oDw39G56o4haAp57hFoyzqTl0IoHhzWd0kYDR/yY2q4Ic+YN+dgmS007iqjfi8fXaLRMX/37O2ilxNWgCAAoq0fjKBGsvT6JsQaGNDsq55CEZ6oqf2GEWHkwgo/kVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Et3B4hmIr4ouh0Eo2kvuk98mlHbkj0k0l2yIDIm0Dm8=;
 b=EsEHxh6dVB31V4gq0z7iyxCO/78AL9C5P0/UD/I/P9+hTdAyJ3wlRbzFhqGoWeadZiEFe6kWIqA/eBb8TMuoyFoX2B6D+MEcmynXYfgor1m7XXdXilRor7VKPmFQBwBVeTmMzQMu6p0RBQ0REkfP2+YqGeTH4495ceT0y1k5QDo+dsAzEVerDPNWaKwedmC4LslLWvxf9HdwToJpCig52U0S62wKwntiIKCUXuVOo1M68z0/ffAlhhrU+Onzucoq/dub4aIV54WbFJrlZR9zgWYNqI6Die76srRa/y4EB90uJSzRPhEdJCuH86j5xz2YZUun6OFBdXai1zsWK3eYCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Et3B4hmIr4ouh0Eo2kvuk98mlHbkj0k0l2yIDIm0Dm8=;
 b=RCDLq8grwyPbACFE4jWCxx0kG6xBZk4UsG+BFCQERYzeegIttavZ9sI5xzEcM1trke8E6OOu0391kyOlR/ZQPi6MHE7WLM+yfQR51ILNsA9yvyI0xYIa9050TjQ8PUfDXTvEVRm7jZP5wI1tUAJnGIeEJtH+TLLlYPLxEEF++Bw=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1295.namprd11.prod.outlook.com (2603:10b6:300:2b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.31; Thu, 11 Mar
 2021 22:55:11 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Thu, 11 Mar 2021
 22:55:11 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S55 12/14] ice: rename ptype bitmap
Thread-Index: AQHXD5EtUKscW+P5skSG3pcLoIE1V6p/c/GA
Date: Thu, 11 Mar 2021 22:55:11 +0000
Message-ID: <CO1PR11MB51054BC8A42B587F144019AEFA909@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
 <20210302181213.51718-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181213.51718-12-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3dce6d1f-605f-44e2-f0f6-08d8e4e0b9b6
x-ms-traffictypediagnostic: MWHPR11MB1295:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1295D0F875BC0C47747693E1FA909@MWHPR11MB1295.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:195;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6lgpt1v0ptiSHbHfrYiNLQf1p4I+nsi7JJLQiyJudnlLdeZbONv8GXuuNR4zTdXZtR4LqGTOG5pas8Px3+UqJf9G2fgZnEtaeK2BROY7hGE3/T3GKICPTjNqVt+CC+v1TcC6PMbad8LPq9uR9wY9VRCTuvvq7EUuRRT8TK+tQiNLl21R5u9wH0SyN5SoFy4Bc2SLj3oBhfzL00gU9NaKpUhfszumRtl9gVxHrTR8FzRH0jKoUtkrfbaX8AS99dv7DVXvdSxabbMLMQlNf8N0XtQIGHJroPfco4lk8rDv3RL8V18OL71yY+2o1xSNB6AsPTOeVK7Ho1wm2W+eU5t+Zy5TBB2tZ+0F+T9gYH0bWcdvnoCVrtvgmv6uR/2G/oh6ecDK3mQX+5Xpr6aLCJguILRGL2EvoHb8TEiqfrLK5otmN0GgGymWX/DOtdZ+MvrJl7U8AK5RLr/JVHzCGMIm+tRoKMJFBdCWcxFTKhBoPz+4qr26Mf6fODBGgcbVvftAEjohsmWXda34pYHGif3WKfadCbMJOP1a7b1Bloo2Ba12ZkTsqY6oXZibWTxdbkC3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(136003)(366004)(376002)(346002)(396003)(478600001)(52536014)(53546011)(186003)(6506007)(7696005)(5660300002)(26005)(64756008)(66446008)(66556008)(110136005)(66946007)(2906002)(66476007)(33656002)(8676002)(83380400001)(8936002)(76116006)(316002)(9686003)(55016002)(86362001)(4744005)(71200400001)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?qVlZzdBmL5chaYcMQR/0UcGt33BRBz9Iq8SjtjAhP9ICgk7O966gsw7jGQpH?=
 =?us-ascii?Q?fHZSB3NWIn7bkN4cJD5Cjhy9T1czxfzmQy3BjjcnXxcbOruPdQ+EMP9G3RM0?=
 =?us-ascii?Q?5RDa5X3rEv5pLgcEm0EL2/rxZWYoHVJZs/pqg9MTV8y76qD8omtD4rnI3SHf?=
 =?us-ascii?Q?UcADCG2wnI9z1rPCld5pj9UjhYNPvTS0mBko58i9bGpUNcrBiGHDfnrgNC9n?=
 =?us-ascii?Q?0aiafiHkOOSbKdt01XvTt9BJeddBsih0f4i+jHV24xeFHfExUi1jUSl0NcrZ?=
 =?us-ascii?Q?fBhjmLTpkbZAdKZ18M6rYNIm/6MnCgDMhBMAkHQfv7WJ/zNEDQ3DqAom1O9r?=
 =?us-ascii?Q?RFYeLjm1ig6q93WuSTheypnngg0ETfWJh0h6qZqolcdPMrdf1US7urwUzNKt?=
 =?us-ascii?Q?9GrL48IZ32POZAm1B6Hku/Nti+SL4axQ23KFwlqycs4k40F3LBPmG4zqmDV8?=
 =?us-ascii?Q?SkFfsXq7ZcSfXk+9soaMruyuROXBLEUQ6M1KvAVZXySnzrU+Dl3PoOwHG94y?=
 =?us-ascii?Q?t7dyWHBH4GSHUl8NNxWYrY5pgUfiyAHUoB7kqFthmbFEl/qxcDrHO4AgsjxN?=
 =?us-ascii?Q?rQzhc/GX+98wsijGVS05hiOkMy68VMEZRKUqYVIXt3YhnTK3V3dhz+tBtCeZ?=
 =?us-ascii?Q?M1tB/5QhFfwQLIGdWcm2qfs5salhChHtfUvIecCXbmd8Ro3+wH4XkXgaeyJ8?=
 =?us-ascii?Q?k2QjmgFfKtB3wLS1+n0unDQQ0Cg4QZn7Yr7cW6IozbIc1KODD538ew/jKr0O?=
 =?us-ascii?Q?1ydMG6w7x2oH+CaegoCSBun9Pmew7nyFL/jXorqgw74hoS4ztZ7f5WSERPsl?=
 =?us-ascii?Q?jYh04nhYC+WfxTkDl47F1ud8QhVIo4OBwCVbmIg9jhoiyH4sS0Xcy8PsQ3tv?=
 =?us-ascii?Q?gSdBdeXg6j8g7hpL+OjvhMDGwoTUJTS3NPQ6rwJptnfDxLu0MVgt/XZtb9eT?=
 =?us-ascii?Q?HBLqQrhDuWksrvVQQCrgDTs86WgrfSk5mH4g9kI+NsNqeNHt+inO7qDL5ZPk?=
 =?us-ascii?Q?4w8hCI2hqcdoMthM6hDTZoRag2FOXqrKjZUPRJas8Yw54/2/9ZxaRQKXECky?=
 =?us-ascii?Q?f37QhhyCBhie5+2jEuEDvMS/+m1IntsEpm4A8kc9RpLU413O7FKibdBUfmjm?=
 =?us-ascii?Q?6RhZoiHUG1IZ168LRVS/1MoFA9J+Sh2J/3P/9jkQh4skfAiKQSziWhshy3xt?=
 =?us-ascii?Q?LCCl/pADdS5Rp7+8JLb7/5KZkUID3ncv0a3LrLzXZxcBK9qS11L8iPSn+Cr4?=
 =?us-ascii?Q?AZm/36vNtbc3wKJkX5SXm9yfdTShGYLNm735dYRkxSQGL8oCAqxF2W0kA1zw?=
 =?us-ascii?Q?0WHcj3raCFUTIJNoI79FR189?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dce6d1f-605f-44e2-f0f6-08d8e4e0b9b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2021 22:55:11.1411 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FGdbRWSmo4tkzIo62ygE8SG25H3bY66cyZpWTNKeGoxFpnF7g6it6HizagiGDvfgMv96VW3FbKLNPDdDXx1c0dRMeSEk0ALMk93EhTRIdyI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1295
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S55 12/14] ice: rename ptype bitmap
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
> Sent: Tuesday, March 2, 2021 10:12 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S55 12/14] ice: rename ptype bitmap
> 
> From: Qi Zhang <qi.z.zhang@intel.com>
> 
> Align all ptype bitmap to follow ice_ptypes_xxx prefix.
> 
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
