Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 404B2446128
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Nov 2021 10:10:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 131174044E;
	Fri,  5 Nov 2021 09:10:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BrIhWueCucyF; Fri,  5 Nov 2021 09:10:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4D2640439;
	Fri,  5 Nov 2021 09:10:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A6451C1135
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 09:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE02D61511
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 09:10:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D5fxTT8oyD4I for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Nov 2021 09:10:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5FD5D605E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 09:10:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="230593649"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="230593649"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 02:10:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="468776926"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga002.jf.intel.com with ESMTP; 05 Nov 2021 02:10:41 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 5 Nov 2021 02:10:41 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 5 Nov 2021 02:10:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 5 Nov 2021 02:10:40 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 5 Nov 2021 02:10:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WdRES2FSg4uGRTkj5MyY8Umltr7Wi6ZjJE2vTyYk+2x75ZfBisKqQj/h7Qy96LXxqXcmbZPoJL3pW8kBRM0XOmO5XrNFjwiIDzn90rCGRqdSA85l+EUBUnXcqdDeCs8jn5t1WJjHJ8K8zBEcsiUeLSv+vwGiwyC9Jq4pk1cTgss2Jlcl9rT+zHKzns1/oBK9vTVj4ponPNQJDmNUe7cMA+LXvMwd19XSapTtVCX2lp01+HB9LH7r5NH9wEmD3UZ59rxdFwuWcD6TXLJnsVV8RL79c5KZGkwNDpOIPT868zrFadAz00ckIdY9LldTp9/P5wh0HIUh21NBvhMf0I9OTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V/dYhmAdKdc8MgWF9hQh9Wwvo2tE5aiwfng2PFsKkB0=;
 b=PWaiArn/QMg0mcswohHAfZpCFoRtZxQIqdBdOVT+OPvnyO3/xu7zZyUCVFwOiKO5K9bN3A2lA/RKswyNgHwd4uwoQ6RZcknJBeYdXaETUkTLbJcbZ3wbpTXLWKZU73/jDzmI417n4EbHehLAtjePF1rlQpeGD4m10wY35WWWXXxctA2m+TjvOlFvs250Y6gc+nKIon7Qfic7aD5+4ABp61oLyYOzTwQYegtviQCd60/Y/pcncE6Onalk46rFd9ihvl5STmT/72EX8mSNozlf5KqZO9OlEDtGjNZ7zGGzJnG2f4fRlv/6cd5uqt30+NCx1tdq7bePxeHft/owWc4Y0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V/dYhmAdKdc8MgWF9hQh9Wwvo2tE5aiwfng2PFsKkB0=;
 b=pvlaAO6nKeDfU08JG9oMgpQo6R3hFLrFO39z95Hb4Dj06xsxHUjEatG0oh5MhELHcrW/09K/yniEaMTA6OXZdnZ7E+ORgbmwjmlp4teY8kBTKmFxWC2LIcWVDQpv7ttUqumpwwahh6ncJn4jliNslstdfjNsNXZ1lQsRfj+Dn4c=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB4338.namprd11.prod.outlook.com (2603:10b6:a03:1c8::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.10; Fri, 5 Nov
 2021 09:10:39 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4649.021; Fri, 5 Nov 2021
 09:10:39 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 3/4] ice: tighter control
 over VSI_DOWN state
Thread-Index: AQHXyf23rCpa7vu1wkWcN2yp/Td0/Kv0tejw
Date: Fri, 5 Nov 2021 09:10:39 +0000
Message-ID: <BYAPR11MB336780DE37BE831D29E75D23FC8E9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211026000826.156803-1-jesse.brandeburg@intel.com>
 <20211026000826.156803-4-jesse.brandeburg@intel.com>
In-Reply-To: <20211026000826.156803-4-jesse.brandeburg@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ae4632af-b1c6-4672-06f4-08d9a03c2319
x-ms-traffictypediagnostic: BY5PR11MB4338:
x-microsoft-antispam-prvs: <BY5PR11MB4338DB5C58F14C08C582359AFC8E9@BY5PR11MB4338.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:989;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ba6EJ+c7v43P3UJr3YuuBaY8MVuvpsEo9mzk7wFuQ6ULgA8XhKB6piuayFPGjvopNiqaMZrjz3cYgPZBTIIcnax8sNczZ4IWOo3uToNJrDvnGKlGkQsvlMRE01mz6QQ6oFO/MPNVo4Z3qRiuWPElRfSVGpEuNi2ECDDB4eOGMSnghQ17EkzzRC5grYjVF9t0LWAs/9u2BkJgpowtfbcfCgfWwf5A5hTe+72uuLSKBQ5FjIR1g9oI2U/dL1d4dWH5/ra7CamU+PYuSnWlB1bJMQK5INtuL70c0MvYpfpAEmA3frHBADdk20BUi6MbgiVALULcz6G3RMap8s1FdJIbf4r0aMQsQiwGcPAgVRqWv6kRWAc6tWB/wZoQSOQ0wAETB3eO44ZT7rRfwNFO9CQLItRecFQNrRhJhbmD0tncUq5kix3ngrN6ho0JaRdeuv5gJ4unQGaHHlK0/AGjctLdjbFPi5zDy3I0o5GXxlRM3hEWUrP1mdqCFs96UdtU3SSA6TLKi+sMLP7R9h7R+LZCIobkgUNQdldN3WyxGcCQTQG3Ojf8IjBSVB9XKQG/AaxQlzE3IdCEJcwlcfaxOp1SaK7GLuzfPTqHyjHgm1ApfaDwoWUM2SSzeQloC7jqORUn+SAQWhOtd0Bb6kN4RS8cpVuBQOVtWEOB0H9iJ3oQNxI0n9DMowB29kEMPX2TH3KepH9f+uRlcubSOXMnlTUpGg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(8676002)(38100700002)(26005)(2906002)(8936002)(38070700005)(83380400001)(66946007)(76116006)(66556008)(64756008)(66446008)(7696005)(71200400001)(86362001)(66476007)(33656002)(52536014)(53546011)(5660300002)(122000001)(186003)(55016002)(6506007)(82960400001)(316002)(110136005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IXrlWi1oFOnL6wQ0pcnNYQ8WqnxBRLAZNilbMWHqPKadaT2tZETcj6TcTxNU?=
 =?us-ascii?Q?KoxC3IxOxjvs5kA4aquFZ3p/7DrI+mfRTaYd1hJMZU0OTkkofQgOsPQFa09G?=
 =?us-ascii?Q?Bhu5B3+MR947bxWknHVJBu2X8ed246gWTVLJpNPl3yA8M1woZTZ/ktgsXFAD?=
 =?us-ascii?Q?Lpr5xu60k4XbfDXlnWp+ucXzeRR6vORh9c/SBaP2O52pH3qlmmJpsPXnXoqI?=
 =?us-ascii?Q?5XLf++44ZRvnhkg/AWaGa13zu/L/eCCsQrsgc9RI1GITMfRA+MKS4bNHbZmB?=
 =?us-ascii?Q?jdEHIva5fDBQk/KR0Le5oPqXIdUJtbegU6T4GzMJBYS3ZNDdY96Z6mHIGwgv?=
 =?us-ascii?Q?P1duECuqLtBKDhRyKRHH+Is4AYSmUkyj01PkpgSv8jSwd1xa4dASNcBYkFPQ?=
 =?us-ascii?Q?Nx3eXFS5e9eI0ISbu90nkS3vzCDU+fhM28u6J6N3UzEKDx9IjAemhBjv9Hhh?=
 =?us-ascii?Q?BkLdNL7O1jM9JFAPaTPbHoAStSIKRmvZ18xgit29muKHqmE5KJKElVdBMuAC?=
 =?us-ascii?Q?ozGL1fwf/WfbSr1jhxag8LXHrDORH/7vhbyd3ISEtm6Z745kozTRWlddDHZj?=
 =?us-ascii?Q?OrsBidaj72pIqsIZHjutzVq636bhPHNAuKgF/GvsteHnDdeBd3gy7/UuMaep?=
 =?us-ascii?Q?2Xhpl7G9bdeTVjOsvmB8SnePPgyQPFBwESQUm3/L/Rzt5/F41GMgCaTwHLiv?=
 =?us-ascii?Q?q53mDtF7hhDR5dTb5Akt/Fx0pQmVhIdff2DyIqGl7t+j7ZhpyPjTUQFkVpcu?=
 =?us-ascii?Q?AlpHDaJ6GLdB4WtrTgfRGqGE4hrNXOyF5kzb/eURlP8JEsuIO6XFT1OAmRx3?=
 =?us-ascii?Q?zzVFOSyYw31r2qZNKLmI0x0Htmh9flOGTE2LyqifqKClRxoVljZAqhCS+pgk?=
 =?us-ascii?Q?CRO7bRx29oYfqmy5rbl7W/ACK8YYs+iOcZb7IMNFXm+VhI0SXXiDJ76w/vFQ?=
 =?us-ascii?Q?c8fRZZqDI5SsF4833XPN89dpuj1Etyq7smXEopYi77n11k6cpOGuQH2l6c7f?=
 =?us-ascii?Q?nWwHaHVwgBxFmuJ9ykpZKn3EYP4OUxD6RBV3X30MtMetTwuUORd/iEB+vEul?=
 =?us-ascii?Q?MRX/QmTu0OXTK+cFEK3cAojjQCAtH4ZvG5kVr5NdvgCPhv9bmV2CQiITpEWP?=
 =?us-ascii?Q?0vtCMwdB+HftErnpzyKWwHnqBTJtOciBsngGNejlPZWSr/4MUYfA2A7WetYr?=
 =?us-ascii?Q?bvPzC+2vHJ82ltI1H3ZrF6V5wXM7J9Sw2AH4mpro9/64ydboNDoXM9u900NU?=
 =?us-ascii?Q?GzSuxCoLmZbor6jiSFkkXLUOpJHzKEr//U8XeCoBLzI1ervR33CHNJBcN+y3?=
 =?us-ascii?Q?VF8sBPnSDCCS2WtZD35+dIWldS4YBRJJDMqi0bnM25H38WNclFtwFCGdPCrL?=
 =?us-ascii?Q?8iWiUXDUzMkpi0fbuUBQYFdkhg41Gyb+1z8mZALMWZpqJj37o1qO8j0qHguL?=
 =?us-ascii?Q?Sd+2fYHLgySB1hUFnJcOZH46TbjogXPQr4Q4ltB09In5Or6riM7FgCmZlrj/?=
 =?us-ascii?Q?a7CJcGwf5YMH+TC18lbcvT4g4gjiLR5dfIaYdqpi9k8YQmQ1KlrVuwWuLGYx?=
 =?us-ascii?Q?yyOsggVaatK0yD18Qedr8FuKj4n6C/oLnr+QS/ztS+mKFu86ci74YDn25nmT?=
 =?us-ascii?Q?mBX4F6hs7XkKNpeBfTZcZ2E=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae4632af-b1c6-4672-06f4-08d9a03c2319
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2021 09:10:39.5381 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L1kNZwJULQ7OOKErZwxCDDiwpOZCPEP5Pjyxu2dCG2zJWlyLpCpQzBSDkU4InuP+5DnRhawESq1Zn1C7xXpfuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4338
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 3/4] ice: tighter control
 over VSI_DOWN state
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse
> Brandeburg
> Sent: Tuesday, October 26, 2021 5:38 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v1 3/4] ice: tighter control over
> VSI_DOWN state
> 
> The driver had comments to the effect of: This flag should be set before calling
> this function. While reviewing code it was found that there were several
> violations of this policy, which could introduce hard to find bugs or races.
> 
> Fix the violations of the "VSI DOWN state must be set before calling ice_down"
> and make checking the state into code with a WARN_ON.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> Testing Hints (Required if no HSD): legacy-rx private flag disable/enable forgot
> to set this previously and is a way to trigger the down/up path.
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 6 ++++--
>  drivers/net/ethernet/intel/ice/ice_main.c    | 7 ++++---
>  2 files changed, 8 insertions(+), 5 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
