Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF2880C06A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 05:46:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4565E8218C;
	Mon, 11 Dec 2023 04:46:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4565E8218C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702269965;
	bh=ql+tkUsQh+WcB6coJmwihqhlvlrOT/dEs8+1+vkSGpQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rCsx0Ujrz+ehiVHfQWYbd64pGrewGETahbp2eAa7PMga3NMP+YqD1FVxKZiTqm5hk
	 IdiSo8OfzpJxWYPlBJfBkLXQXOgQPe5xPhsam/sI5NiMSvZEvyrEi22d0Q58mVG6vK
	 74/ZegzBKA5rjE2GJBw+IZ3wxMM3NxAViSX5IREXeqFz8ElIx6iou0RMiTb/96LsT3
	 gT/Auid6+brdgkJxXksVYSd0cV9JmdvoDlGbyjp73dHA4xvz5o8sgnTXG9usch89H5
	 V8tZrvfZnp4bX8KhE3OajcyhCXKQLM8bjuWWkkr6C8y0lzQdGSVSqra2Lgpqa4GC3o
	 16039sFqCU1Ng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F6YgMZxDfr7f; Mon, 11 Dec 2023 04:46:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2BB881761;
	Mon, 11 Dec 2023 04:46:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2BB881761
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6AFA21BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 04:45:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4055C4013D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 04:45:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4055C4013D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YVxabnfx7O8s for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 04:45:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DFF2440102
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 04:45:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFF2440102
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="394328764"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="394328764"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2023 20:45:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="916696771"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="916696771"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Dec 2023 20:45:56 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 10 Dec 2023 20:45:55 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 10 Dec 2023 20:45:55 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 10 Dec 2023 20:45:55 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 10 Dec 2023 20:45:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RQPLzplLuAAFvQXwzQtZ5ARYYmbTTRV3CvEBMDHYXtO21BrGNo4q8cLW+2Yf5anTAZBmIjWzy0eBoKRI5Hq6sA5B7xZpPVB24PtYzmtMAd/+8jKu2Gt4wQ+Eaj11mZXJGj6fMG3iALvfpQuCeX5+583nGzNCifJgI/o8QG4C+mqj6o1Wi2NbLaqugYSU58YudLkbjY/PhPCktvTfXXbwrZGV4MVHvin52sttXBOVKq40uip/zennovvCDmXxTm8Gh6b025Y3fvB3VXiFiom8Pi8AH3ANNHW/PdLJRmZW9Ep/6d/XfLI+yU+YhyuGaedvGe3SgVUpEscbG5KCwDpkcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ybeFJ2Mj/b4Bzzd5nJeIJi88ssSkmqnpHxRVrUGjwJ0=;
 b=VsxPDdvIu8EH0BUX70ysmUL/hqihWSfgSdG+UaaV1IqDG0CNcxlTOv/ndovio76YSsdoo5eaVGpmvrby8fEVRDlagjJgKCdkTCPlyE8jNw2s+/+kC56kv2HcMb2QVd3mv3pWL4PxBZX2XAbPi6v9KHOHVEl3D+QJMQegIOR5ylcehgC8WA6qrVbhVEMB12LPdGEDs+hTrtF+eVFCqFFZQ1Yu0ibsk+i463O2ex8V3FSEyT52f2Oy2I0f4ncqsclsMZMHR1CAx7nb3IFkvk+j96mqW6WLwbEScPaWHBORoDiKVWpTOP+bM8OHbj5o0x+MjNG4DQ0RvaHTA1jWm2foVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CH0PR11MB5690.namprd11.prod.outlook.com (2603:10b6:610:ed::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Mon, 11 Dec
 2023 04:45:50 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7068.031; Mon, 11 Dec 2023
 04:45:50 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-next 2/2] ice: Enable SW
 interrupt from FW for LL TS
Thread-Index: AQHaIsFV31PDFjkj0Ui56JadO8HYJbCjk29A
Date: Mon, 11 Dec 2023 04:45:50 +0000
Message-ID: <BL0PR11MB3122228E79EF10569865C42FBD8FA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231129124023.741299-1-karol.kolacinski@intel.com>
 <20231129124023.741299-2-karol.kolacinski@intel.com>
In-Reply-To: <20231129124023.741299-2-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CH0PR11MB5690:EE_
x-ms-office365-filtering-correlation-id: e0190015-e2f8-4f89-3496-08dbfa040ca0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HoXiVplALhXR1NClp0cOV6eZ5QNPbsIVFIrmxKmLbOZffc0sjfVGKr8ZzgdjeToL5KQ9o0CVoxiGQMP+RNvu4A9ea68ItgZNcXxBeCcMychB/7M4urSLB6xuCJYeWMe538VNeDgXyzf6pKfUoArtuvQPhEUryiI+bD0naBBk2vKMrQFq/k+Uga/R8+Tl9GOFwKrI1sfOP1nevJYnV/O+rsnHH2JqqKP/ayY+1ZvfMLypphjy/EzMvmCGlhwibYLBqjEwDnqcY9KKhzoAefHwcJVoV6ho21t2XkZwrxDzRKzlaFgQYCpQKMGEXbzI+F7BY75YgEN/WMirJLhNv6bhceVixG1RjEd9WA36X6cv466cHJPewRFua35VjXGC5xHnecEx3RCa7S/n9l5ZAi8xsKwQPUyOL4TBswl/H2x2XBhguo/UVNdbZ7pBUBZyS9pgx/XJsajz7dwedidiE91M+Nkk8XjDEqJ70p2S0qNOOg+TVwY6vSlJURPRHqC03oM+hXVP8agKNR/R94oMt6z/XGBve6JJ0eF+yUCybt9XztWD8tuM/B+prWKyQcVDg+MZpoA5HaZGSD1J4oHEV19rgghJNFzk3xtiSBXZY37sscbAIdYqC5atfcj/6ch1txDQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(376002)(396003)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(4326008)(8676002)(8936002)(52536014)(5660300002)(7696005)(6506007)(53546011)(71200400001)(9686003)(66446008)(64756008)(66556008)(66476007)(66946007)(76116006)(110136005)(54906003)(316002)(478600001)(41300700001)(38070700009)(2906002)(33656002)(86362001)(82960400001)(122000001)(26005)(55016003)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?n6txzTfrblnOxeenhhDwYC+mCV4jN9XauRTUtpQQXmYpYSEFuEf33FgGHBbu?=
 =?us-ascii?Q?FNSssI5Y4mLOgNY+Yk/PqE7G5oEe58E/WRtal2ds9BiEcxnKuDzMRovLcF5k?=
 =?us-ascii?Q?XfrST+pSvYAnvlvS4pjMcmokEnGEPcGFGYFszYo4WKelS0PQOyBgiRVoyVtd?=
 =?us-ascii?Q?u4cCF/Z4elFLO+NKS32RZVNFuAmvS07bW4KYFq9n2ctqu4B/lQhrUG6zdvl/?=
 =?us-ascii?Q?K2Qwvy6ilTenIAtU4ybbhLcbX8Trwi7f3pYAvDXrWDoBg6lgVgEy8fSxRztm?=
 =?us-ascii?Q?dqJ6ZlsH6BrzFeLKesDcHbkFNWzhImtSuYzW38n1O4XuiY2yE5Dl23RsCmnW?=
 =?us-ascii?Q?AaSq1812V0XOFc1lUsa2IMEiw/y6L52jsxTOUkPiHQfKD8BhPQE7ArR+MB69?=
 =?us-ascii?Q?wlp8lNxMsH4ITeNh1gnyOSJct4CjNKBLnMpeQLNKpOjVrL6f1+D2a4admD3W?=
 =?us-ascii?Q?zYZQ4pNGOCxvnCtfqi2yR1iH5cQ1w6h5h2hULExwQXbQbyLqkvO6tVnPvzWl?=
 =?us-ascii?Q?RZ4/Kpw9xIRq6ggY8HlJeTGfF6WIiZNdph67rhRI8EDyErj+tboDULwdGEL8?=
 =?us-ascii?Q?drxjz8rhMsw0mRPl4CDqqHSmw8cutdjk84od5SwmE914Xiabf0XYiLSRg1gx?=
 =?us-ascii?Q?rt7hMfkVOLQVDojJ+W5x2mbaMz5XLz2CCzcE3tOeZs4DUHy+tM+5CG/HpCpK?=
 =?us-ascii?Q?UNqgZJsFO6JRZ2o70Cpz3dyxEQ/Q+Ve5JwbZk+hXWVsb1sNqZ2ezd239rKk7?=
 =?us-ascii?Q?V+rdeCgQrGaR79NTYZpPWTYMPKSGHr8nxah6OwxxSJYnHYROMETqMN4jwnXc?=
 =?us-ascii?Q?j8cxrg1dlu5f/CNPjwuBUPyC/M5z+Sudt/3fu1pzzzrM0YCzD66FzaoQOD3W?=
 =?us-ascii?Q?6pMD/gi9gwpyMJ+uLLcJJhCffh8ZJiH2uRXt+BwE+Mm1zNMQRDp2VwNtEYE7?=
 =?us-ascii?Q?O1Mkvagz/y7xBrU8jGgaLuqKhVlscypXY/TqGHocteFa1gxefBYrGeGs5sN9?=
 =?us-ascii?Q?t9Oi9f1zunI1gjtifY/N/EyNFMXxgZtlPaxkOrbAUSPZ1/mpKIzLNtLBsXj/?=
 =?us-ascii?Q?GA3Q9ED2oelqAOlTSa+cmk6vvqnt5FX1ACjTEPoSKdhRvRKYLdB/lkx8j0JQ?=
 =?us-ascii?Q?ngh3S6Ahx/LhrM2NZI03bqd8rF2bZ8NvL5fr8cVhUykTepky+EG1p/Vqx10m?=
 =?us-ascii?Q?clqtb0Xogdx4lAX6HGv+C2LwqRk+J/jmhMWkAGOJJq4iuqF6v1gOS6N4rpha?=
 =?us-ascii?Q?8Id7RmY8YbeOLzcXL/tSuvK2+hCo8lN8fLjl1ILXGHzcKWyLHVMYTdQo8lnq?=
 =?us-ascii?Q?syBnZZbL8AB+Bl6skIOA5ZKzlgq8f9dohfEZ9A94kRoQWQkapb7+16GcyRjP?=
 =?us-ascii?Q?+p9YMGBAn2d9Twnt5XswHufTyOGXJywPHtGi5JD+w2Q9kucmNQe2F8lru0nr?=
 =?us-ascii?Q?W4b5YS9c6ESiYKd0X+z4FRk+KQoDxB9+jw1dqle9jwerLVDYS2ztK3D/k+G2?=
 =?us-ascii?Q?bq8YL+90OQQtdIlmMOY+bklPYFPOx0wPRcyQqVtWuVyrX5bEk6knxlItdlQb?=
 =?us-ascii?Q?1QdowKklgIY7LzuijEPM6E6CgE+uROmSXPRIDaHvWJj3Coi2h8f5SuoHX2UG?=
 =?us-ascii?Q?Fg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0190015-e2f8-4f89-3496-08dbfa040ca0
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2023 04:45:50.1226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5PaeQ6spRMQUsClRljOe6VNYzSYvl40NesXGMEfIedId+DwJfmihr6fCgfRnVlpr27u8DfIGQqdRI8JjZL8zXrvNxMyvU/go6RGGTKkrqTUGF79GHwLFeff91xU6Yk0a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5690
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702269956; x=1733805956;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5RLI0RGBcYMkmTafNfhX6DpOyZCzP3tm2mLlWEx2vig=;
 b=cXr72q7s8Rhgf7ED7KYuPd3Mr6mFp/+4ekQrx7Xao4aIWDD20SwkdS6F
 ZzpSu2q8AFYcA6aqEqBVmxuPWVJTGefbKfmrhSQVGeOAUDAO8yf3/2lCF
 QhtIJfa/3UA4SZUohnYfvruzlfgzmf8fKOATLciNf5Pj92gZqlxEn3nF9
 BUvEtYTIwSDNKHgCIXU/Cn57ieVfFZNhcoa58XOjOzNoTU1+1sCVrEywp
 F6tiu1rxGZthvLvmM0ylVlhxDF0OEzitaDVzF9dBdyf/IRRzCT8f6roL3
 cnrFZHMj3KPIhmd/ZEY2NAoiGwofDoUpmiPAcdBHb/1/Ll3Z22J2wkK7K
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cXr72q7s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 2/2] ice: Enable SW
 interrupt from FW for LL TS
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Hagvi,
 Yochai" <yochai.hagvi@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Karol Kolacinski
> Sent: Wednesday, November 29, 2023 6:10 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Hagvi, Yochai <yochai.hagvi@intel.com>; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH v2 iwl-next 2/2] ice: Enable SW interrupt from FW for LL TS
>
> Introduce new capability - Low Latency Timestamping with Interrupt.
> On supported devices, driver can request a single timestamp from FW
> without polling the register afterwards. Instead, FW can issue
> a dedicated interrupt when the timestamp was read from the PHY register
> and its value is available to read from the register.
> This eliminates the need of bottom half scheduling, which results in
> minimal delay for timestamping.
>
> For this mode, allocate TS indices sequentially, so that timestamps are
> always completed in FIFO manner.
>
>
> Co-developed-by: Yochai Hagvi <yochai.hagvi@intel.com>
> Signed-off-by: Yochai Hagvi <yochai.hagvi@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   2 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |   3 +
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 120 +++++++++++--
>  drivers/net/ethernet/intel/ice/ice_ptp.c      | 163 ++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |   9 +
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   2 +
>  8 files changed, 274 insertions(+), 28 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
