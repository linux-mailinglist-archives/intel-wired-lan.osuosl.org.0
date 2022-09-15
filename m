Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAB35B9F7E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Sep 2022 18:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03C35419BD;
	Thu, 15 Sep 2022 16:17:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03C35419BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663258643;
	bh=8AsI1Q7LPu4iNGxozuwLLpC9/fYisKlkn3UDMVbqTAQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wcg9kXgXFZya6T35jMH4cfBz4m92zYWZReOpOwquR5a/pskTcue8vn+xxM+t6DMeN
	 6VnZcVopbNq051R8c888yrhj2zQxsmMgjiOpGBHxS6K1ud+VL4WyfM13oUlbVLTcqE
	 bawRdiwAG2JAlbX0RPSACgGLsdzwcnrNUfFz9otWiJTJWoLi3HbArYrJGzzB6iydnl
	 h5TY53LN3R9x9VkneFHQMBmb8rUK+rdurQTdPdk1YMLGQZQ0/LVzkkXm8K4z/QHgF2
	 HeLFCYLXtJCjJgPxIoxvvk5XB2kiTuIy6FrKfgLtfN3UJx3UqgoXGJSsdoyGJSpYz+
	 m4BaHQcmLsqsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IxTiYrxl-WqQ; Thu, 15 Sep 2022 16:17:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DC5B419B1;
	Thu, 15 Sep 2022 16:17:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DC5B419B1
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 955781BF3DF
 for <intel-wired-lan@osuosl.org>; Thu, 15 Sep 2022 16:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C2A283E41
 for <intel-wired-lan@osuosl.org>; Thu, 15 Sep 2022 16:17:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C2A283E41
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pvQHc-gw3Gwr for <intel-wired-lan@osuosl.org>;
 Thu, 15 Sep 2022 16:17:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37D5A83E26
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 37D5A83E26
 for <intel-wired-lan@osuosl.org>; Thu, 15 Sep 2022 16:17:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="360500161"
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="360500161"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 09:17:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="568486471"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 15 Sep 2022 09:17:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 09:17:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 09:17:12 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 09:17:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SdkTBDWw+ws4pl3TRgcsF8Rua0//4HuVRfhYciOe3GVSBgDqdm6GgxpMQuiNUStvxjGn6AmIUlZpGp/Puc4TH0n9wmeyyP/zT2F+JQ2hz79/qNF6V+1+sJPaXxmHfujoMp6nkVEYtgyWrQek0riMah1KxCKj5tSumc6MItRGaUPiPrxfWAjYMTQumrapdYEfWiIEWUzmsu0XfXHNitM8IbvojHWcBNX5TWQ+zxiZ8gDVo0YXrVMakPuTBrarBPXLZLLqY5+ZRamONPjYw6ftmbFfFETjFU0TiaiNL98u5Imld5FBcwgm8mIHgPKGQ+as7HYChAi4DroET65tsz/cZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ySpy6tCL+YLbcvTqU/NWFi/33pZh3Z5rkq6y9Rs/bIE=;
 b=bQcuW1SfEh1v4kppiptze09NMKTZ/nNUkSyGzf8WsBtwGce2AuHS3/7mUWae+wHQ/unjJ8BVhL7W9mgyiXk9hVzFsu+1X1tQeIeqj+9RMGrfdo8gyWmPLubf+rnF6F8aR89AprufGKCjQ6u4TLXacYQhM0NaNRZkcO5MfhUl+uc2j1GwEJ1ZxhGzPXhBAN/pkRiFsIN9RYfE6+dupZwDbjuCvQ1P8JupvubUD+Dx8fbcy+Y9h6iVe5iV8KzDPlyGNtlodq/juzBFR4nXRVpp8ni8oHvkj5QjFEpRUrs3DV+2g6sf4zPCbzTWx16WEuzLkPzIZhJEtyWVrqjPAWDZRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:95::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.15; Thu, 15 Sep
 2022 16:17:10 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::bc61:cbee:55e5:5119]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::bc61:cbee:55e5:5119%2]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 16:17:10 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH] igc: Correct the launchtime offset
Thread-Index: AQHYY0FmzdLtH7EECkief4S1D+8JzK0XsdWAgMnBxcA=
Date: Thu, 15 Sep 2022 16:17:10 +0000
Message-ID: <SJ1PR11MB6180AC91AC2C05FCDB1D4B47B8499@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20220509010847.17492-1-muhammad.husaini.zulkifli@intel.com>
 <d9807c38-81a1-a1d9-cc77-802c2a5755cb@molgen.mpg.de>
In-Reply-To: <d9807c38-81a1-a1d9-cc77-802c2a5755cb@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|CO1PR11MB4787:EE_
x-ms-office365-filtering-correlation-id: ed138bc0-666a-4ad0-b0d6-08da9735bdf5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yLgKCTag1Ce4htbaWIIQKCQ9BGYk4N11dC9IxrGmyRR7RcwZ0+D4ZWRAWcWrmYFFocMnaW6EiNl4g/UQLtNi8gt+0IylqEHBEjbXLAcwTCE0kw88WOnzHPn3/xu9zRcIYZVdg37/Xq5AXKHqOfEcVxlcY1B3zH+pf5VbcFJMz9AJqlEEjMNu9cBqXGgSElfG1gwyNdwfFwbtRY/HxjIERk+p1jqhRfe2x9K2nB21K/PL0ovMva3gQX3jT2LHddC93QGxt/EXYDyn8JwCvSWQHFSPF4GzhSpLpWWb1BoVXjSDcznuy29fsBalgVwlfj8WcIiA39OnwUzSe+At2gqUUsK2YdpNdTmbckJO+XauYAm2nxH7myHSNo/hjhe0b0F40dQr9FCjh9nj7fNfdqJqgfIAB77PBwZ+Ay7sAiXrjTMh6SIMdwS6BCqx3jod7f6tFeFmDsoStXPzSE6AGbfEsFLHUsX9EOB+Hlkov+PvObCtQSE0Njn7uWPiU4A4dCydOCQg+efTMNwHdIwX7H9SCyA7y0nbAb1BnP91c3EqK1veW81C4zgVyTYIszAU+EUlYX901YlPArHXxGWTjp7cpDgQQ423xPE/mGeriq86Ktr1BU2TEUdeNaw4EMes53cV+mWJQm7XL78MmS70itEXH0W8Q30rKhEdvcXMCT1epYMXDvVadeigHC0Lesi3NZX2SpaRDTsVl686kY8nS0Mcnw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(396003)(366004)(136003)(346002)(451199015)(86362001)(52536014)(966005)(5660300002)(8676002)(38070700005)(26005)(53546011)(33656002)(64756008)(66946007)(66446008)(2906002)(66556008)(76116006)(4326008)(66476007)(8936002)(54906003)(6916009)(316002)(41300700001)(55016003)(71200400001)(38100700002)(478600001)(82960400001)(122000001)(6506007)(7696005)(107886003)(9686003)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aFNKWFkyM2JIN2hpSVRLdEFhcXNUNXg0SkZsbmhacUNlZk40UEsvQU55dEs5?=
 =?utf-8?B?cjZTUHdDRDBkWXdaRjFzdUpTVXN2L1cvRDFqVzR3K0hqcnZuUXV3SVc1VXNL?=
 =?utf-8?B?Y054WkpOOURvZ2kweHl3Um9TbWI3WUpzdHpUU2hmQml6ZGN6ZXd6OVU4RU1j?=
 =?utf-8?B?Q0FYTm1pUkxtTGlXWVBlRmdueUpvenpMNVhWR2k1OG16ODBKdUxpWW5RRUFa?=
 =?utf-8?B?T1hYeFNsRVhCUE9wVDZVa3BNVm5CN05LYkFobXR4TFg5OEZYZWdCVXlXbmlx?=
 =?utf-8?B?YUw4RTZLbUprRGlwZWw4TldIcHdOdTJ1UWprdnl4MGtST1IxKzZyYy9jdlRy?=
 =?utf-8?B?Q3Yzd3NtNTREYzA0YWZWemt3YndXbERJcm5qYWFZMHp6amRKYWRkVmZaTFF6?=
 =?utf-8?B?Mm5xeFlhN3FIa3ZnclhzSTJRL2VkMHI4c01hb3pxWEFiVTljVXRKcUlFYVFQ?=
 =?utf-8?B?K3pEeUFFRmpzcDBLZlU3Y21kMUZ3cHFzcUZRV21wZitzZkVseitrT3kwd2RE?=
 =?utf-8?B?L2dYZCtKazhmU2NQODRsZFRwMlpIaWM0alhnQXJmMGlMYmwvNXp2SW9xZDhT?=
 =?utf-8?B?MjJIeGpUaUwvZkdyTVNzdGlxSGZlcGJVY1BpbDVXaFFHV3hUV0pTNG4zc1Vl?=
 =?utf-8?B?ME8vS3lIbGIxT0Jva3F1YTB5c0JueDRoWmdOaGdxV1NXQ1hpN2hVT29QRFdp?=
 =?utf-8?B?SjZ2TXFEV1lEamxEdUpzMlptVU85UjBJd0lvSzBiRm45VysxbTJtU0FsSjIz?=
 =?utf-8?B?NFdTNjRhSUl5Z0wxL2I1d2JFVUFaVzBGRHpCYWQzcC9PdERyOEZsWm1hUG5B?=
 =?utf-8?B?L2xqTVJQRWFWakNjQnJOMnl3bnl0SDc2V1FNTC8yd21IUy9PS2F0aXBudkxC?=
 =?utf-8?B?QWN0alh0azJ5MjM3QkJMMWFUa1JaUVdkK3d0cUwvKzhXclgyZms2dFk0SlY5?=
 =?utf-8?B?ZVAwUHM1akhMU0RvNDJmVzd4a1VPWjU1THZoL2E4SFkveTlBM3YzTExkYmgv?=
 =?utf-8?B?c2t4TnRILzdJN0tXWXk3aWQxYkxnajFIMDdQeXJ4NXZKK2ZGNkZhZFdjNnJI?=
 =?utf-8?B?Sm9CVFdoZHRsUThPNXR3SkZnVG5MbjdBMjBuQ2g4OTRTbXNacjFhcytZVFJx?=
 =?utf-8?B?T0FDTzRaQmhBZVVvZ2VQRmJCWEo0R214dUpQd2VrL0xjNHBBakRteU5jUWls?=
 =?utf-8?B?NzZia0JZSDlGQUxrUkNkRStrcTIwMnZCRGtINENLTE9JVnJMN2FqeGZLMHh3?=
 =?utf-8?B?N1AxS0RiTWlvZU53NjBjZGoxYWNuWU1ValdQYlErRVpnamJESmJDcmh6ZDJM?=
 =?utf-8?B?ZThpYzVyOExwVlNla0poSm1CM1VpMHBRbk95SVpMS3pSa042TFR5WE12OHVO?=
 =?utf-8?B?WHJSTDZnZzVYTEcyeitLajNmRVFOUjhwa1hQWmtFbkZrZ0YzVGx5Y1lwUXVi?=
 =?utf-8?B?QnIvVGhDTk9QSlZOb1d3K1JwbWNWd0V3S05KQUZ3a2dmOXUxN05lejJDQWxO?=
 =?utf-8?B?WGQ4NmNMNUI4ZDd5d0Z6KzJaNFpBWGZYMjJ1RWZoZkIrZkZWaVBvZFE2OG9r?=
 =?utf-8?B?UkRUZkhhK3VZSHZiM2RQR0Qza0ZpRjdKY2VRRzJGWHlwMGxuOG9PbmRQd0dw?=
 =?utf-8?B?cVppeTFsZWtuL0c2aHZLSVN6bXVUakVMdU9xUmdQWEFVWXFVZGtPY3lBU0Ra?=
 =?utf-8?B?N0d0L0s0dGJHVjRPWFc1YjI1b3ZNaS9wVE9ISW5iZmZxcXFFYXdLN3JaUFR0?=
 =?utf-8?B?UGttQlBBRzc1YWJvSWxod3lHcTh4K2ZwemNvNUltYjZQU0hINU81R0xrVUdy?=
 =?utf-8?B?UzZ3K1NhZ0lCdXFGMmV4cmRKTzV2cGpPeWdRcG1XZTVROWtvSDlRa2RPb3dC?=
 =?utf-8?B?NUFaVzMvYjRDY3pROVRPN2R4UVBxc09kd0ltSzBzcGlPbXFYVThkK0pYeGdu?=
 =?utf-8?B?Skt2ZFV3WmU5ZUo2Q1FLa2tpYjhrSHhSMEsydWNVYkdIWGtRNy9neVRuTUZi?=
 =?utf-8?B?YVUwcnJYQ2JJcTJaK1ZxUFVHZnoxVWdKTTNPZWhITTcvbHlnR0RnMHJ0Zis5?=
 =?utf-8?B?aC9tcldYYnlETS9kNGxNMFdJZ0U1KzV6V21yeGs3S0dnMGR5SHB1RGV5VXJ4?=
 =?utf-8?B?Z3BUV215SlpwSTc5VnBPRUZteGxibS9sV3RGMkpWdVh3a0tkZysweDBTVkVM?=
 =?utf-8?Q?h9zjE3rhPnxfXCML77M1Py8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed138bc0-666a-4ad0-b0d6-08da9735bdf5
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2022 16:17:10.1925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tWPnm6YZeponSw3Tw7Hdp3ovgYsoAFiUo9aolK9s9j/Ue07qXbVr2PDSgLc7dOLS2ewoLTveuQpgA8FrjyhlNUVNBl1QLAjdlCSt1Xvm//56UBCjzdtVKoIBBpgGlSeb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4787
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663258634; x=1694794634;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ySpy6tCL+YLbcvTqU/NWFi/33pZh3Z5rkq6y9Rs/bIE=;
 b=PYxeZMh7+bXKcyhmczC2Bmt4tZB2gd+qe9iHvArqzzuqJWutPQeuGplb
 fWaRDYMA9h73cImCrAeI3jVzSzz0ZkFqYQjFafOVygogf60K48ttdAEiv
 ZaJuADS94++hMBXrPfciec5iNRqIWItoLZcwFi++TpOzpnUTOaKmvhQ/9
 wYQQMKpAIwyYuVE+5reeXXomyNg2y8SLyczuhezKHCkjjs1pBhItNg1QB
 GFiZfS6FZKQAlS+mVJCeDx0FC3xrxLOfNrVRG6nllcXTHYsnalcp6DA4u
 8rrhCi0b40EPur5HVE/75em1ssRcEfP/lu4rmXfVAONaJtNbocRWTpSgd
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PYxeZMh7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Correct the launchtime offset
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgUGF1bCwNCg0KU29ycnkgZm9yIHRoZSBsYXRlIHJlc3BvbnNlLg0KDQo+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcu
ZGU+DQo+IFNlbnQ6IFR1ZXNkYXksIDEwIE1heSwgMjAyMiAzOjA0IFBNDQo+IFRvOiBadWxraWZs
aSwgTXVoYW1tYWQgSHVzYWluaSA8bXVoYW1tYWQuaHVzYWluaS56dWxraWZsaUBpbnRlbC5jb20+
DQo+IENjOiBpbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZzsgR29tZXMsIFZpbmljaXVzDQo+IDx2
aW5pY2l1cy5nb21lc0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFu
XSBbUEFUQ0hdIGlnYzogQ29ycmVjdCB0aGUgbGF1bmNodGltZSBvZmZzZXQNCj4gDQo+IERlYXIg
TXVoYW1tYWQsDQo+IA0KPiANCj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLg0KPiANCj4gQW0g
MDkuMDUuMjIgdW0gMDM6MDggc2NocmllYiBNdWhhbW1hZCBIdXNhaW5pIFp1bGtpZmxpOg0KPiA+
IFRoZSBsYXVuY2h0aW1lIG9mZnNldCBjYW4gYmUgY29ycmVjdGVkIGFjY29yZGluZyB0byBzZWN0
aW9ucyA3LjUuMi42DQo+ID4gYW5kIDEyLjMuMiBvZiB0aGUgZGF0YXNoZWV0Lg0KPiANCj4g4oCc
Y2Fu4oCdIG9yIOKAnHNob3VsZOKAnT8NCg0KSSB3aWxsIHJlcGhyYXNlIHRoaXMgc3RhdGVtZW50
IGluIHYyLiANCg0KPiANCj4gU29ycnksIHdoYXQgaXMgdGhlIG5hbWUgb2YgdGhlIGRhdGFzaGVl
dD8NCj4gDQo+IFdoYXQgcHJvYmxlbXMgZG9lcyBpdCBmaXgsIGFuZCBob3cgY2FuIHRoZXkgYmUg
cmVwcm9kdWNlZD8NCg0KVGhpcyBpcyB0byByZWR1Y2UgdGhlIHRyYW5zbWl0IGxhdGVuY3kgYmV0
d2VlbiB0cmFuc21pc3Npb24gc2NoZWR1bGUobGF1bmNodGltZSkNCkFuZCB0aGUgdGltZSB0aGF0
IHBhY2tldCBiZWVuIHRyYW5zbWl0dGVkIHRvIG5ldHdvcmsuIFNvZnR3YXJlIGNhbiBjb21wZW5z
YXRlDQp0aGlzIGJ5IHNldHRpbmcgdGhlIEdUWE9GRlNFVCB2YWx1ZS4gSXQgY2FuIGJlIHJlcHJv
ZHVjZSBieSB1c2luZyBsMl90YWkgb24gdHJhbnNtaXQgc2lkZQ0KYnkgaGF2aW5nIGEgbGF1bmNo
dGltZSBwYWNrZXQgaW4gdGhlIHBheWxvYWQgYW5kIG9uIHRoZSByZWNlaXZlciBzaWRlLCBJIGFt
IHVzaW5nIHRoZSB0aW1lZHVtcA0KYXBwbGljYXRpb24gdG8gbWVhc3VyZSB0aGUgbGF0ZW5jeSBi
ZXR3ZWVuIFJYIEhXIHRpbWVzdGFtcCAtIHBheWxvYWQgdHMNCg0KPiANCj4gPiBCYXNlZCBvbiB0
aGUgcHJlbGltaW5hcnkgZGF0YSwgdGhpcyBjb3JyZWN0aW9uIGlzIHJvdWdobHkgMTUwMG5zLg0K
PiA+IEluIHRoZSBmdXR1cmUsIHByb3BlciBtZWFzdXJlbWVudHMgbXVzdCBiZSB0YWtlbiwgYW5k
IGNvcnJlY3Rpb25zIG11c3QNCj4gPiB0YWtlIGludG8gYWNjb3VudCB0aGUgdmFyaW91cyBsaW5r
IHNwZWVkcy4NCj4gDQo+IE5pdDogUGxlYXNlIGRvIG5vdCB3cmFwIGxpbmVzIGp1c3QgYmVjYXVz
ZSBhIHNlbnRlbmNlIGVuZHMuIElmIHRoZXNlIGFyZQ0KPiBwYXJhZ3JhcGhzLCB0aGVuIHBsZWFz
ZSBzZXBhcmF0ZSB0aG9zZSBieSBleGFjdGx5IG9uZSBibGFuayBsaW5lLg0KDQpOb3RlZC4gV2ls
bCBmaXggdGhpcw0KDQo+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbmljaXVzIENvc3RhIEdvbWVz
IDx2aW5pY2l1cy5nb21lc0BpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogTXVoYW1tYWQg
SHVzYWluaSBadWxraWZsaQ0KPiA+IDxtdWhhbW1hZC5odXNhaW5pLnp1bGtpZmxpQGludGVsLmNv
bT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcmVn
cy5oIHwgIDEgKw0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY190c24u
YyAgfCAxNCArKysrKysrKysrKysrKw0KPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRp
b25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdjL2lnY19yZWdzLmgNCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2Nf
cmVncy5oDQo+ID4gaW5kZXggZTE5N2EzM2Q5M2EwLi45MjhkMjJiMWNhMjIgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19yZWdzLmgNCj4gPiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3JlZ3MuaA0KPiA+IEBAIC0yMzEs
NiArMjMxLDcgQEANCj4gPiAgICNkZWZpbmUgSUdDX0JBU0VUX0gJCTB4MzMxOA0KPiA+ICAgI2Rl
ZmluZSBJR0NfUUJWQ1lDTEVUCQkweDMzMUMNCj4gPiAgICNkZWZpbmUgSUdDX1FCVkNZQ0xFVF9T
CQkweDMzMjANCj4gPiArI2RlZmluZSBJR0NfR1RYT0ZGU0VUCQkweDMzMTANCj4gDQo+IFNvcnQg
dGhlc2UgYnkgdGhlIHZhbHVlPw0KDQpXaWxsIGRvIHRoYW5rcy4NCg0KPiANCj4gPg0KPiA+ICAg
I2RlZmluZSBJR0NfU1RRVChfbikJCSgweDMzMjQgKyAweDQgKiAoX24pKQ0KPiA+ICAgI2RlZmlu
ZSBJR0NfRU5EUVQoX24pCQkoMHgzMzM0ICsgMHg0ICogKF9uKSkNCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY190c24uYw0KPiA+IGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY190c24uYw0KPiA+IGluZGV4IDBmY2UyMmRlMmFiOC4u
M2Q0ZDBhYjAxMWUzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYy9pZ2NfdHNuLmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2Mv
aWdjX3Rzbi5jDQo+ID4gQEAgLTg0LDEyICs4NCwyNiBAQCBzdGF0aWMgaW50IGlnY190c25fZW5h
YmxlX29mZmxvYWQoc3RydWN0DQo+IGlnY19hZGFwdGVyICphZGFwdGVyKQ0KPiA+ICAgCXN0cnVj
dCBpZ2NfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Ow0KPiA+ICAgCXUzMiB0cWF2Y3RybCwgYmFzZXRf
bCwgYmFzZXRfaDsNCj4gPiAgIAl1MzIgc2VjLCBuc2VjLCBjeWNsZTsNCj4gPiArCXUxNiB0eF9v
ZmZzZXQ7DQo+IA0KPiBQbGVhc2UgYXBwZW5kIHRoZSB1bml0IHRvIHRoZSB2YXJpYWJsZSBuYW1l
Lg0KPiANCj4gV2h5IHNwZWNpZnkgdGhlIHNpemUsIGFuZCBub3QganVzdCB1c2UgYHVuc2lnbmVk
IGludGAgWzFdPyAoYF9fd3JpdGVsKClgIGFsc28NCj4gdXNlcyBgdW5zaWduZWQgaW50YCBpbiB0
aGUgZW5kPw0KDQpCZWNhdXNlIHRoZSBHVFhPRkZTRVQgaXMgb25seSAxNmJpdC4gVGhhdCBpcyB0
aGUgcmVhc29uIEkganVzdCB1c2UgdTE2IGhlcmUuDQoNCj4gDQo+ID4gICAJa3RpbWVfdCBiYXNl
X3RpbWUsIHN5c3RpbTsNCj4gPiAgIAlpbnQgaTsNCj4gPg0KPiA+ICAgCWN5Y2xlID0gYWRhcHRl
ci0+Y3ljbGVfdGltZTsNCj4gPiAgIAliYXNlX3RpbWUgPSBhZGFwdGVyLT5iYXNlX3RpbWU7DQo+
ID4NCj4gPiArCXN3aXRjaCAoYWRhcHRlci0+bGlua19zcGVlZCkgew0KPiA+ICsJLyogVE9ETzog
VGhpcyBjb2RlIHVzZSBzYW1lIHRyYW5zbWl0IG9mZnNldCBhY3Jvc3MgYWxsIGxpbmsgc3BlZWQg
YXMNCj4gZm9yIG5vdy4gKi8NCj4gPiArCWNhc2UgU1BFRURfMTA6DQo+ID4gKwljYXNlIFNQRUVE
XzEwMDoNCj4gPiArCWNhc2UgU1BFRURfMTAwMDoNCj4gPiArCWNhc2UgU1BFRURfMjUwMDoNCj4g
PiArCQl0eF9vZmZzZXQgPSAxNTAwOw0KPiA+ICsJCWJyZWFrOw0KPiA+ICsJZGVmYXVsdDoNCj4g
PiArCQlicmVhazsNCj4gPiArCX0NCg0KSSBoYXZlIGFub3RoZXIgZmluZSB0dW5lIHZhbHVlIHJl
c3BlY3RpdmUgZm9yIGVhY2ggbGluayBzcGVlZC4gV2lsbCB1cGRhdGUgaW4gdjIuDQoNCj4gPiAr
DQo+ID4gKwl3cjMyKElHQ19HVFhPRkZTRVQsIHR4X29mZnNldCk7DQo+ID4gICAJd3IzMihJR0Nf
VFNBVVhDLCAwKTsNCj4gPiAgIAl3cjMyKElHQ19EVFhNWFBLVFNaLCBJR0NfRFRYTVhQS1RTWl9U
U04pOw0KPiA+ICAgCXdyMzIoSUdDX1RYUEJTLCBJR0NfVFhQQlNJWkVfVFNOKTsNCj4gDQo+IA0K
PiBLaW5kIHJlZ2FyZHMsDQo+IA0KPiBQYXVsDQo+IA0KPiANCj4gWzFdOiBodHRwczovL25vdGFi
cy5vcmcvY29kaW5nL3NtYWxsSW50c0JpZ1BlbmFsdHkuaHRtDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
