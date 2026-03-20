Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GCML8fvvGme4gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 07:57:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 123972D660C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 07:57:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1494617AF;
	Fri, 20 Mar 2026 06:57:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jlyo1q4qPiyc; Fri, 20 Mar 2026 06:57:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12B3F616EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773989829;
	bh=4azktDtzr0T9tYQ8QGfLqB2NRCUQD+j9N5J5LP/dgu4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gKHuiye36CZPtGrIqA2sGzxChQ29CF5wF1jlgWI2VGm+W/rpgXTZglfZMAyAjjtDm
	 biNsr0f3/rqf+GqC2/dhu4d9t80CbEukd/AjwikXl1dhRrbYuxO/UfLrumtbnRPEAq
	 NQLreBbSPZGph1+SaVF/ig2cUKiFIdm3JjItW1FeKEI4dvtMLCqOq2R2kK1NDlJKDj
	 2c+cPj2JjAOzJR5i7e9qfUDz4kTzChU3MC1xstIlUgSflGg9Aa7NdB+9NlfhDPwvQ9
	 yOixnGu2Gizsx2EE46t98OoUI0mREMCSmwlXnCvxUbaViAUltn3GCy4nOT1QU+/8v0
	 rRwvfkaLpxgIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12B3F616EF;
	Fri, 20 Mar 2026 06:57:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 726DF25C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 06:57:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 63CAD40D29
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 06:57:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9nN2CEIygofc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 06:57:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5C2FC40C00
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C2FC40C00
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5C2FC40C00
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 06:57:06 +0000 (UTC)
X-CSE-ConnectionGUID: +KMiusW3QEeb5HlDoWPW6Q==
X-CSE-MsgGUID: +aZjQp/mTqCXiOPPPVsZ9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="74961870"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="74961870"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 23:57:06 -0700
X-CSE-ConnectionGUID: W74Tl1tWRbugn096EKJlWw==
X-CSE-MsgGUID: d1mMmKr9RoqOUNaw9hql0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="218583441"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 23:57:05 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 23:57:04 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 23:57:04 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.24) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 23:57:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kJMYd/lnRB/tAd3jDk8w0Uurf+n0J8as4XugYbeVlq2xk3AIXRw2pEP9DDlzLrZoQF3ENR6ZWDNiZZruYYjFayX/OF2aqVKI0FB3IWFp6CQH4A6Tgz6rRa5Ioo2z+V4Vso3Bwc+ERcfNQI6rufCbkNJ09bb96Fx0ZuzbXIs0S8uQcsi4Y53r6c8F6op7Y/vZNN3NYv4NpDGsUz++fGnw24uraekWqPIXyAa5xq/UAJx6/LjZwjcNU/eyxQgSqsEnSWrb6lgc+0g8EY5Wgv6FvX/y05aMnS87ACMG5RBq0/2iwEm+1s6IyrUAVSpX1GF658Hhl0jvY/VEoEjIRGLZeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4azktDtzr0T9tYQ8QGfLqB2NRCUQD+j9N5J5LP/dgu4=;
 b=Jszzo1gxqQJSuX+K/225noQOJn2vAmDpOYQ3hSVARgyu8tDQ35vBe/HeIPuoyuP8M4bvu55re0V90pEdjGp55BRpmuPb4DCYr4qnlnG/4OAm14mpJRTy+snv98O49HrJxB2YmbumyW5hrdrCxIhzy6mwgqJb2UxR5JBGxuAg78sWm5UfmD47LlBqXZtKK00Pwjdb/XEUoZS/09SkNuDp/VgmRUdgvN9tdXloPQIBB2FU555BPUvQRTTnlv17465hHfyugA8jIiP2faqujkKmOwsJRxMwzVrjsYNCxsNOJtdhiOo2nWtAdf1UhIK5ZEmdKYzEAVTFXdaZtc2yyifGuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB7409.namprd11.prod.outlook.com (2603:10b6:8:153::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Fri, 20 Mar
 2026 06:57:02 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Fri, 20 Mar 2026
 06:57:02 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 2/3] i40e: add support for
 bpf_xdp_metadata_rx_hash()
Thread-Index: AQHct8RTMeIuwfvMjE+CA3mueoHte7W2/eeQ
Date: Fri, 20 Mar 2026 06:57:01 +0000
Message-ID: <IA3PR11MB8986D3E4DF65EC87E23A6C1BE54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260319171650.5815-1-kohei@enjuk.jp>
 <20260319171650.5815-3-kohei@enjuk.jp>
In-Reply-To: <20260319171650.5815-3-kohei@enjuk.jp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB7409:EE_
x-ms-office365-filtering-correlation-id: ca5f261a-6bed-4835-098c-08de864de36c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: Am83o2HtzKefgse30pzaGMx5OLxGSCKR5JOY1BeZDb/GORHPFZMV01ivI9yaDEjdOogeSlcVh/XZlEPYa26tkSYGCwB59jv+pL9omsxYac+FuI2NnFvJjTKSwLT+gFkTXMIIsUSYGDXMr3AMseXBpofR8ZzysM7pBviwsDxokcIwO/qC8u09mgPUzDSyrgBN4g+Qd0TbFYI+7I8DToiYosUfdHiKgwPo331FqH3qjYGwvcqbusDzLJZcA0TtPlfbUD3A8rOGqjRxejYAceoteoK2Km6je1SjTMVSyO0qcHv8uCc/O+LK3KRTDUehlnZIGy9CtWHZHIZ60eQj8m97i/u53okbR67UT5vGgKTYmya94MtO1aH0Bfj2zGkN5iopfeJI+bJJstoVunGDxnjsDpl2zJNr+IWVmkeDjtWlg0G3xwryJ6hQfoQ+I8kUOOR7q+YfH4lzbFkRRBw3BaczgOPaPDSW0iWZ1JgW9IsV/D599sVOBin7g+QjBo4F3PTGEiklpuUyKb0OrfoHAQeeviUjgvtd+aX5izInv9V6ofzPjDMO5uYO7VZu0ABKiBAFCD6zA49in675gyU17amFld2tHU1vtc4UE5pz92p+G0dPEcDLp0j/T822Ouk5/phhDgybsZXVL2jb2D4ToYvvHEEwBTdhwhLDhGf2TmRWJksQTA4/YDtG4GzJWHHxKTRIzF6G/D6v++1U9UXS/0ri84nQcHqvfBS0zrFHp1ahDvhR4BYpYA2/4KCboNwbv2elP3TTentabv0u14PIhcVCqyjSJ9NbTAzyx5Gp7I2SJKM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1SdMHy6v22lSmzY31ECHnMbgL+1jEaTlsrlza8TnFn8Tp5c+/JudoYm1PNTT?=
 =?us-ascii?Q?Mh+0j70z2BR1mpK8/4Imws+WuVwi9ol1J+n3d9dWEvorN1dEHv1AqD706Rh7?=
 =?us-ascii?Q?yg2N7xOw9uoO99UtX+3YvwO+BNOP9RsewBIW8luNPBgSyieujmtFAqSoGlIE?=
 =?us-ascii?Q?IDJaoUwbWaIQ7A8wqoZmx42pxcAFlpY0c3nKo/Z2HQWbnNj5G2VzOjgfwK+R?=
 =?us-ascii?Q?eywanQ/GJGDhqqBYjE+Cx0FENH2WMcCFXvioAZiAzR7juEhJ79u5iv7dFb9v?=
 =?us-ascii?Q?ai+xDFK/nyfkMCcinhMeTlYJFZA9vfiio1LTHC5aPp1aXMfqma01FS6tcx3G?=
 =?us-ascii?Q?x8dXnNiOKaltlv3RfUcArsMO4HNYKSTdWxcqDNIpg/sKVl3Hj83KtVym8Bqm?=
 =?us-ascii?Q?3qkCiOw5+xOWvWdM4niS3nfjb1E0Cf90ZWC90undOsm66q4RPRC/D9hn5/uG?=
 =?us-ascii?Q?5c6nHupJz2nsAH6b5oMPsx0TlxXYMaizgHa05JoAw1zWdlqNi7U4DdttN4Kq?=
 =?us-ascii?Q?eo3Mgw7apbMzo4RLHQ3NKysorb4PRcOEisl8tkKBwttbRrnDOnYaI/fazbVr?=
 =?us-ascii?Q?FHr68x61cLt2kTP7d1fin1IgsDZBjRkQCeNTRLvrziadqqm6H6/bT8l5Mqh6?=
 =?us-ascii?Q?34fdlZJz5fB+PIIQ5vHmcdcEsKEDOVXdAwEdvaUYkXB5RvEmyKw85D41rrfI?=
 =?us-ascii?Q?k5rEYjSO7Upv4LSxrWbxkl90/GEhKGOolyYNElZ6WOCG+LcNVOFmLGnkl/iF?=
 =?us-ascii?Q?vXJQg9TsxpLtC47tf4Cij0d9pC4WEhV0HguES/EJOvifZwylo15AUTKn0xSy?=
 =?us-ascii?Q?Tz0NjOj+njHlnvj+IEpNC11ODbjkaPMlusbHD2ApuVObB7R6bTTexr0qfjwr?=
 =?us-ascii?Q?j6OtrdxhY6V5xuR4O01apFdzQXBSVxTS4rimlO9kMRXbn9zMID/AVXCviDbI?=
 =?us-ascii?Q?ox3WxxyoA/FB87A+YTDfnnLzI2kHGCzFPSKOzU5ZYxvVMaTAyTUMOE6Yhbp8?=
 =?us-ascii?Q?5VRf8sBDFWg3g9yh1rw0PknpxvDdynJHVjytMh2nG3BXPnv3e6JCOSLcyyxj?=
 =?us-ascii?Q?g7CO1ZQ9Hhy58JtMI4Bj+NlErLAGC3DbD/alDQUpRCEJRjUlW4BShAFRj5Nu?=
 =?us-ascii?Q?6imnSoUTX9y3aIWjDlhsoIsJpxBsd+vpHEfL3Xh9nGRysK3Zb/SV2IPa4qke?=
 =?us-ascii?Q?KWO9/Gi64tWYM6Bxrw2ypytmEbp62AvbgGX10yShxO3szoNoCfYUXAswM4ke?=
 =?us-ascii?Q?/Yasd+6NN3x8Y2DerQCFh1y+nPaP7lhykpL/TDFync08EN1ekwsG5VJwIcf5?=
 =?us-ascii?Q?KXJcT7Pw+yVVPLE+JhWgWtJ4fsel/jiEprFS7YN3C5G2NP7ZQjDbZeCJBes2?=
 =?us-ascii?Q?Fe356YJneW88gxUJaQEGnXcHgyv02dpx+OkiCUpypcsW5+PRYKl2kFg5AgMq?=
 =?us-ascii?Q?QH3bIHXrtak4/gzKVlq6VnBgk+xg7Wp+zBwpIuGd6eIM27pGBsxWDXTo50+o?=
 =?us-ascii?Q?YRZEDyxrOWYGbuF4OjOykpH+5vWkIPQMSV3XQUOQvgoORFXXWcwgK+YgJohQ?=
 =?us-ascii?Q?OoRjiUB9KFe8ucb3mFjCmYsZhgxZgFjj/iAMc4QWSAcgTxZ+pO0MfWlAs6JI?=
 =?us-ascii?Q?ACWJzUqXmgjGf73/6I1yIREf/fH8OZJZLSyQ0t2WhhDOlY42SZ5kNQExCznR?=
 =?us-ascii?Q?LH9uUMvuHqEG3o5/CQAN2WxQAOVBEbJqlDijfIJJsZvNHGy/dglc9FFS3sZD?=
 =?us-ascii?Q?ohujDgoDb2scsbn/lCNylwJ2PiT/a3s=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KD6Jbu+Uu3WhuTOWsmAbZFWfK4fX7rwh51S68+iwKScSoc31IVmVsafP1Bghx9jngf+o1PXWte5XfwCuG8xa0f+Ot36jOskIYe/77PXWIiMwyqNpR/gadBiQzGpFTF+7U2ber1lOvefVNnuYTczTCWtxvzqAZGLxTMqmT7pZBfxpgWYAE4N4CUFCXb/00EdJrsUSh1oH8BUq9qw3/K1RCjxbiIgOpE+0C4KB4mYHKLp+bb6NEMPmhgzBS4CIQNFiwyXYNyAfl890thBVYKp9F47k153TJVTbT7+gA3JYfhHxfx9cUlFfTWQHhc53klVsfMJOzg6mfcdCkYOa+cJ2UQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca5f261a-6bed-4835-098c-08de864de36c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 06:57:01.8673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jDGfwtm1flDF49d8cvqGg6mIm294J1VpLwDARzXOTG4mlITmBUqGxMZIom2Ugd1sInFqCzLj7MGh1AGdSwrS/8JrWR47+azCEkV5ikVg3bY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7409
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773989826; x=1805525826;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bM68Kya8i54BxbspZpxwCzBbfT8W7IyTFscac21L4PM=;
 b=kkT9RaneNEZwKtGLLG68B0ISmEySPVzAKYXCkFcqJ6y4omn2FEUmOrl5
 +yltUnqZnEHgm4Qnh1osJ+VPrEDc4O5DiphfikAxo1SFHo7EM/XhfsuY/
 XA4mRS30AYuwShH4ZZMZGifGsh13oRmrMTbMBuBFv+ftDX/p9h2UuQ5dJ
 BT0HfvDixcmsD2iKX8oFyiMnFuhRwqFY+Yg658Wg2cQyjlNQof0dVE72a
 ALfARwRQ/cOAjpLztS7TLMN/CiGHJjO0F2S237d+V5AtRhDTW3f7BM381
 tvAA1HqHbrKaBTg83II4hPA5w88MihhNMJgXoeUx+Psh8jwlI5XsJ0mn6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kkT9Rane
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/3] i40e: add support for
 bpf_xdp_metadata_rx_hash()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA3PR11MB8986.namprd11.prod.outlook.com:mid,davemloft.net:email,osuosl.org:dkim,osuosl.org:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,enjuk.jp:email,intel.com:email,lunn.ch:email]
X-Rspamd-Queue-Id: 123972D660C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kohei Enju
> Sent: Thursday, March 19, 2026 6:17 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei Enju
> <kohei@enjuk.jp>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/3] i40e: add support
> for bpf_xdp_metadata_rx_hash()
>=20
> Introduce i40e_xdp_rx_hash() which takes the same approach as
> i40e_rx_hash() to extract the hash from RX descriptors.
>=20
> Tested with X710 adapter using xdp_hw_metadata, and verified hash
> consistency between bpf_xdp_metadata_rx_hash() and skb->hash.
>=20
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 30
> +++++++++++++++++++++  drivers/net/ethernet/intel/i40e/i40e_type.h |
> 5 ++++
>  2 files changed, 35 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 7966d9cb8009..6b7e34b16a8d 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -4,6 +4,7 @@
>  #include <generated/utsrelease.h>
>  #include <linux/crash_dump.h>
>  #include <linux/intel/libie/pctype.h>
> +#include <linux/intel/libie/rx.h>
>  #include <linux/if_bridge.h>
>  #include <linux/if_macvlan.h>
>  #include <linux/module.h>
> @@ -13585,6 +13586,34 @@ static int i40e_xdp(struct net_device *dev,
>  	}
>  }
>=20
> +static int i40e_xdp_rx_hash(const struct xdp_md *_ctx, u32 *hash,
> +			    enum xdp_rss_hash_type *rss_type) {
> +	const struct i40e_xdp_buff *ctx =3D (const void *)_ctx;
> +	const union i40e_rx_desc *desc =3D ctx->desc;
> +	struct libeth_rx_pt rx_ptype;
> +	u8 raw_rx_ptype;
> +	u64 status;
> +
> +	status =3D le64_to_cpu(desc->wb.qword1.status_error_len);
> +	raw_rx_ptype =3D FIELD_GET(I40E_RXD_QW1_PTYPE_MASK, status);
> +	rx_ptype =3D libie_rx_pt_parse(raw_rx_ptype);
> +
> +	if (!libeth_rx_pt_has_hash(ctx->xdp.rxq->dev, rx_ptype) ||
> +	    FIELD_GET(I40E_RX_DESC_STATUS_FLTSTAT_MASK, status) !=3D
> +		    I40E_RX_DESC_FLTSTAT_RSS_HASH)
> +		return -ENODATA;
> +
> +	*hash =3D le32_to_cpu(desc->wb.qword0.hi_dword.rss);
> +	*rss_type =3D rx_ptype.hash_type;
> +
> +	return 0;
> +}
> +
> +static const struct xdp_metadata_ops i40e_xdp_metadata_ops =3D {
> +	.xmo_rx_hash		=3D i40e_xdp_rx_hash,
> +};
> +
>  static const struct net_device_ops i40e_netdev_ops =3D {
>  	.ndo_open		=3D i40e_open,
>  	.ndo_stop		=3D i40e_close,
> @@ -13788,6 +13817,7 @@ static int i40e_config_netdev(struct i40e_vsi
> *vsi)
>  	i40e_vsi_config_netdev_tc(vsi, vsi->tc_config.enabled_tc);
>=20
>  	netdev->netdev_ops =3D &i40e_netdev_ops;
> +	netdev->xdp_metadata_ops =3D &i40e_xdp_metadata_ops;
>  	netdev->watchdog_timeo =3D 5 * HZ;
>  	i40e_set_ethtool_ops(netdev);
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h
> b/drivers/net/ethernet/intel/i40e/i40e_type.h
> index ed8bbdb586da..16a65c6e5153 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_type.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
> @@ -4,6 +4,7 @@
>  #ifndef _I40E_TYPE_H_
>  #define _I40E_TYPE_H_
>=20
> +#include <linux/bits.h>
>  #include <uapi/linux/if_ether.h>
>  #include "i40e_adminq.h"
>  #include "i40e_hmc.h"
> @@ -699,6 +700,10 @@ enum i40e_rx_desc_status_bits {
>  	I40E_RX_DESC_STATUS_LAST /* this entry must be last!!! */  };
>=20
> +#define I40E_RX_DESC_STATUS_FLTSTAT_MASK                   \
> +	GENMASK_ULL(I40E_RX_DESC_STATUS_FLTSTAT_SHIFT + 1, \
> +		    I40E_RX_DESC_STATUS_FLTSTAT_SHIFT)
> +
>  #define I40E_RXD_QW1_STATUS_SHIFT	0
>  #define I40E_RXD_QW1_STATUS_MASK	((BIT(I40E_RX_DESC_STATUS_LAST) - 1)
> \
>  					 << I40E_RXD_QW1_STATUS_SHIFT)
> --
> 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
