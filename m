Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 716516B7B65
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 16:02:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F1E0040906;
	Mon, 13 Mar 2023 15:02:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1E0040906
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678719743;
	bh=h97LxzjKkTMejkl19qou5UULFyWqpLB/e1SrU3mbCu8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=shjwOlsV7eJIsNXS4TtZA77CMKJl4LBx1QzSA9Tvi/tH7p1Y6a+YRLLv1BWIMu6hq
	 DS2bHsSgffkEFu47rHmZomgkpCKtexuBme6IjowKfFIiwy1++YE5L6TxUGQaQk9N0q
	 61BmRdPPIagArizOuMcIj0TGTw4f/+Nq33sIdWWQOHL437ZPh+iImXqNg8DZ6XpA/M
	 Ub2LVPKgNhRvtqk5U7tGgJHjGLsy/asGsr+7x20SBbw/WxfYYoDLhAM2UimXXndrak
	 TsU2HvaJ4gfijoScw2cniUoaJ256rph+cCO78yec3kvOL2W7MItldtqBLLS0nk0LbO
	 J0nwq6ZzvN5yg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HmPweePdKgRd; Mon, 13 Mar 2023 15:02:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC4234033F;
	Mon, 13 Mar 2023 15:02:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC4234033F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F35E81BF59C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 15:02:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6BF940906
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 15:02:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6BF940906
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rz5RICoelJYo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 15:02:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 58ACD4033F
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 58ACD4033F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 15:02:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="321018120"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="321018120"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 08:02:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="708905799"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="708905799"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 13 Mar 2023 08:02:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 13 Mar 2023 08:02:14 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 13 Mar 2023 08:02:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 13 Mar 2023 08:02:13 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 13 Mar 2023 08:02:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fxpSUch/O0JLT/Hgyy+Z9v9wEtZufZpZtgA041fc1s9UhDHXgBc/3q/aLMvhSSPvQFqmDGPugwjcn9XTLleciz+Z3jcOIssHt1OwBpEFXnsapZH8bSD3oDRuP9CK+8WY6OhEeVeTIEgdO/XEZXaYeOPZfP3Hh56k6MXMEx+VDaiE6391nQ8oM1XB8LEbtsFgDZ1Td5B1fiPRFg8RnWw+dOwCDaHWVEU84AvXwlanO/F7p8wPxGu3GkN7I9S6qeHdf5ChkVLB9IjRnAIsDbHQTFMHmNoWMQeSXUf7zMq8+rFUjzzeIRw1iW/CzMRrAZE0J/9aHFxzQK7XJ5Mzwa0qmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZBv2UWAsQvP6sRuB4Ps7Ha2b7gBdkntMe4v0dSUj4nM=;
 b=TzjC7jH7R8v+AqVq7A5Y+mAjYd9GFc/W/tGrEOWgZ7/ZjDzx8R2Cj/4vwa/arWolCDZy9/gr8o5bCGH7rR0CZ9YxSuAJrGR2Lbhr7NJ/nM7vbWx0NkN2yxk3jYNylMWXqkGAHbK2861uyujsOfs+GqL/FS4HYxBkgI5tTbcUSOvoGWw77hvVQJY1JWZ8CD8nVv6oPloazubfQeFAZihh/K81BNflhW40FVM8mgbXeb8WFNGsmPnunXIIDbKqVJMDJ270EQ4Krapl37JBThfwaHUryzOMAlbXP3CUBgrt/bncIRc7bOE5T17Qv6NvqOsR+QEZAaon9tzskP3HH02inw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by CH0PR11MB5219.namprd11.prod.outlook.com (2603:10b6:610:e2::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 15:02:11 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958%6]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 15:02:10 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] iavf: do not track VLAN 0 filters
Thread-Index: AQHZUT6JRuqTISAJeESIcNJ8qOlV4q741tnw
Date: Mon, 13 Mar 2023 15:02:10 +0000
Message-ID: <BL0PR11MB35214B79C4112BCB8BD390488FB99@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230307214738.2468357-1-ahmed.zaki@intel.com>
In-Reply-To: <20230307214738.2468357-1-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|CH0PR11MB5219:EE_
x-ms-office365-filtering-correlation-id: b4739935-bea1-470c-5fa0-08db23d3ebdb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xVli6lXIHPDfdkvaRb6y02tUM4PQTtX5wt3xlstnWE0KjWz9hbmtiQm0Jmb3LcefqBQobGVEBxzUMi6DG4lrds82LJ0jwSvrNyUK76u5quWeij737Bc1nMEEA/Oj3xm9ohdQlFTGwDv+PYsbUThHfCpvfbs22Jtc8xA7IlXP4uMxEwN9vw4e3hkhFmJzWT6hPONDavAbsFkgi1Wrd5bAsmp3H17lhtgEvCIWSzPAjuDaSVhRqA+lKKIttToxGxw+OOMMq8DznJghuUCMJzujij5F3O7EdtMPhLes8wPYdalk1tcYU8yKISgxBRDgH4ygmD8VpVvNDxENx35gS7Rqh/7Fo1d4L/x2CwaFKSHxCsenkrIvrd5mjrt+F1zIQhQUoY9D7MccT4lBI4BTOf5cDzlB7Sg6js4le7GULyGanLTfXPIyrLYIQy1KGBRZnEn60bOXcvgAVvPBLHIhOyOIge9A2tBd0zN+OTL763Ti2KT0P87mud5HMyq8FOWQ5TXcCjAMcukK+0RDgPMYgjnJCigP+DpnIh1oNCUS3jfRZwjjcHAxCkd0/uttsH3YGDkSqwllVk8jseazoA89vb6DJbK7DoduGG2YaWVxTSSoKygQDKmr9Llq3/d2hOX82Fx6O6dx2Zfw8FEr9iXXFiCFsur89lI1JLJ82M1bXAdUWVLRN8VG2ASpvezkGScJ7ajcCY+oc703O0bgoWPQn9p53g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(136003)(346002)(39860400002)(366004)(396003)(451199018)(9686003)(6916009)(5660300002)(8936002)(52536014)(186003)(41300700001)(26005)(53546011)(6506007)(33656002)(86362001)(2906002)(83380400001)(66476007)(66556008)(64756008)(76116006)(66446008)(8676002)(66946007)(7696005)(316002)(55016003)(71200400001)(478600001)(38070700005)(38100700002)(122000001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ud2ZnPuarSTeGGxnzqAFPS7YlaWY0CZwcv0T7DJvbd31hBdlfru3SXP0QiPy?=
 =?us-ascii?Q?dUtiYCYeWWupGqwveMrA0+k56S1rMFfRvVhDej9cNmYd37EEKgV8XZ1AfYvL?=
 =?us-ascii?Q?MFWHb86MqVPb3Nqhs/712GWA+ESMW9HVdEETeoGPld/CF0/jxHLIUmCAI6N2?=
 =?us-ascii?Q?wyr44Qgs2UPgv3h3/kIvHAHSp46hAVLmsiUFhWsXq3k/WsPNZNVeSqF61kO+?=
 =?us-ascii?Q?+eY51BthBzKKknuCETQmeIdw/9IyNfxJvY+qh0viJbq0ZntKsYpdMi82tZSj?=
 =?us-ascii?Q?tPlZyeqMRRZJTaEV88MM79i4o3a4BpkIfpqMlo6K5h0Ua0zuhm5LJ7MPpNIo?=
 =?us-ascii?Q?P1kx/feKan5Xz2VS+7Sg92zb+93zaUP0vMMjEURahMKMGBjukcYa/mytTVJD?=
 =?us-ascii?Q?6Q8VFqA15gYBjv/jOW+A7FvhsrOOefTFbSa76rkBA7biBD9cEjlG6aCxt4XY?=
 =?us-ascii?Q?xEh3yLR8HYXwkjkyI6RuHNvLO+WjZM83Zpo/2/Himkqv+Y9iY97G8HTXfj6j?=
 =?us-ascii?Q?1xXgP6dD++pneUeStdp2klnGyExemvWkfduVIyXeYoyBMENo3/o3Zi4uEis6?=
 =?us-ascii?Q?9KduHntQxCSNCAoHwdqgKAmpyyrWWrAJSAsbDvUUQgNas41WvcHCQkTaNWk+?=
 =?us-ascii?Q?PDhpPmiaNSfus2fMVvYeE6sGIQ+9sk3bkVlyaJgBsgvTnL9ZW+9BQpXE09e8?=
 =?us-ascii?Q?UQO5hd8No6MQEkruztz1i9fQ5HKQsbQQm3laxikReWlkMHWcdcHzu4VCm2lH?=
 =?us-ascii?Q?RA/99sEZJxMZ51zm6Uyobcu0+EHnCNv9fhNrp9EypjkL9pcQ+n80MY6PkqDS?=
 =?us-ascii?Q?3NmrKA+Qo6sYWE8JYKJMW3FB2ZFb7iQTPIJiOSxKUTyzwhWcb+nHxgN0WfpS?=
 =?us-ascii?Q?CwDO5SswgE+pETie8vwmzSkjRIv+tQftwpgmBCVolAihLn/xlFhmRhL+OBVf?=
 =?us-ascii?Q?xMuLO5EhGCLFgBn9PQv7SsFwCPdNBf4Imqb/EcUCWUchw+uUA9NjSCl0U6oz?=
 =?us-ascii?Q?M1vGn0BZ/RhRiUjg7frf0eLx3FBzggrW5bhhkWWtu7D6YV13fUx7SBZ9p77A?=
 =?us-ascii?Q?2xgMCaXnIXJRA86ubSKKYFSSXuSRd6EGKdtGbpkFwCtPyhSyk5czELS4w9Mb?=
 =?us-ascii?Q?ptaGNBt89lSR0yjmXT1ZhUSiFDCyKH1cMKV1+9FNzbqFCE8OPqC5jGEAvO0P?=
 =?us-ascii?Q?XjpLUNlIh0zNYQ9L8H8LY6xfBTKTBX0tkvnfH6iLqQZtfP/ubaxzud4W5HZH?=
 =?us-ascii?Q?/Blb4UoAWKO7fnQitxILiPuwBdp5rH7rFHWZSG1C1M9zqb+8RJmjch8QRwhe?=
 =?us-ascii?Q?fgo/qNN8E82VOoFKfEXdXmQMNNzoV6uOFOOAdNTrIgLn0bo9NUHJiSTtuVp0?=
 =?us-ascii?Q?KO0Zv4+Yb1uV8b/iQ9A4R7qqxeYResoYZggqtynQzijn5PJoK3lXTt6BfDab?=
 =?us-ascii?Q?w9pR0v/OnT11WVMgodbUMywkdPysuCtfaloOpEXIHPyYgjKaDkfe96alfLf+?=
 =?us-ascii?Q?U66Aart/YlM4HbT6W6cAdo5iGoijjSgCojYis6ZoPh46BLniMvowj90gMYwF?=
 =?us-ascii?Q?LK1U5hhsTrwx0slVNJhUxRfE2E1+h6vJOukG73sDKMTwKHWd1TGBCredUNJq?=
 =?us-ascii?Q?hg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4739935-bea1-470c-5fa0-08db23d3ebdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2023 15:02:10.4682 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WdINuPeMV933q7GQQpJ9BhceRsoo0xII6hHhel5uotaPpwzHGvzhY6Gjgh3Q20jK4gwKA6mHAhajxjV14LNbWWGr+JLYi36ue8mC19QoLKg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5219
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678719735; x=1710255735;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kqA2JXQ8PSpoAxCc43VbMIrTAgOrI+QVkiyWeqRAvVg=;
 b=faf/z7TYYTqXbZIj5hOmc2dvH2wwrS2u+GhyTu/13+b0vFpxOK91jvm1
 p8iQHwJFClEASuv+qhifbV/Y4+TQ23nntftS4aAhehR80QsmLsRVKnaGU
 q1K+6QYNSuu6eyd2WR5+z4xwLty4KagyUCXmO9TqgIfxye9W6FKgxiwWO
 o+LZ6MaAdBccHUEb41tGGpDAgAZ6l/L8juauoYcoMkh5pON1k9Go2Q5Kl
 Vgog3vpB9lpaUGOBt4Z5OtdBzGflgot4uNRTYxw+lIMWrLLlOeCUqk3ou
 7/q3mrNnJOHeWXdy+MkuC9a0QZe1KzcaWVVOhu/+7oJtGWaMgq1i6pqJF
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=faf/z7TY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] iavf: do not track VLAN 0 filters
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
> Ahmed Zaki
> Sent: wtorek, 7 marca 2023 22:48
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jaron, MichalX <michalx.jaron@intel.com>; Kubiak, Michal
> <michal.kubiak@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2] iavf: do not track VLAN 0 filters
> 
> When an interface with the maximum number of VLAN filters is brought up,
> a spurious error is logged:
> 
>     [257.483082] 8021q: adding VLAN 0 to HW filter on device enp0s3
>     [257.483094] iavf 0000:00:03.0 enp0s3: Max allowed VLAN filters 8. Remove
> existing VLANs or disable filtering via Ethtool if supported.
> 
> The VF driver complains that it cannot add the VLAN 0 filter.
> 
> On the other hand, the PF driver always adds VLAN 0 filter on VF initialization.
> The VF does not need to ask the PF for that filter at all.
> 
> Fix the error by not tracking VLAN 0 filters altogether. With that, the check
> added by commit 0e710a3ffd0c ("iavf: Fix VF driver counting VLAN 0
> filters") in iavf_virtchnl.c is useless and might be confusing if left as it
> suggests that we track VLAN 0.
> 
> Fixes: 0e710a3ffd0c ("iavf: Fix VF driver counting VLAN 0 filters")
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> ---
> v1 -> v2: Added indentation and fixed typo in commit  message. Also,
>           clarified the comment in iavf_vlan_rx_add_vid()
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c     | 4 ++++
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 2 --
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 3273aeb8fa67..eb8f944276ff 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
