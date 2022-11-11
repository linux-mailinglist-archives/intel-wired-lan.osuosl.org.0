Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 978E062529D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Nov 2022 05:34:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B09DD60AEC;
	Fri, 11 Nov 2022 04:34:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B09DD60AEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668141259;
	bh=5GUN7A2ffE9ck2B7zDVimnbf3Xw+2UeR/nm62yjXot8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xOgOZ33WKrluiv+5A6OQ8yN0SoasQ6THSwxOrThKEUJqQGcU1yyVgX4QhJCdCzNgT
	 NlnQ8mXYEe4yFJbetseRz+1uhVzopW7LDtT8YxZF7uZwAdFrAvhxwI7uSwqldxOlae
	 55GOFlsEp2ayaOOj7ZIPYJ+HfZthHbOSjFn9llokTzEi0106/bx7EvH8TgdJ8rSlf1
	 aHU4cu1gbibCZhjIfHWqLbGt8jvlOx/nf5pSC1IfdTSEBdIF9HtJkm2JlgbvMcwAGq
	 1cXS4asFmehdnDixdTmoe5IRE6vWyukApJrg4h9DyIWdPn0VycRavd+7tAtzNSKWYZ
	 zAwyDWEyC+2wA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9pketSeN6Wxs; Fri, 11 Nov 2022 04:34:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A25D260ACC;
	Fri, 11 Nov 2022 04:34:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A25D260ACC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE6851BF867
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 04:34:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF15340BAC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 04:34:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF15340BAC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GZI8KP9coQkG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Nov 2022 04:34:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC0F940BA6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EC0F940BA6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 04:34:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="338288420"
X-IronPort-AV: E=Sophos;i="5.96,155,1665471600"; d="scan'208";a="338288420"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 20:34:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="726659714"
X-IronPort-AV: E=Sophos;i="5.96,155,1665471600"; d="scan'208";a="726659714"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Nov 2022 20:34:03 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 20:34:02 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 10 Nov 2022 20:34:02 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 10 Nov 2022 20:34:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iI3OZKQDH0ZPJcmWfl4T50BdRmKJ5VsHJcJjMp7E29MH/VhA/yoDBfqMtQXaIYHRbIA4CJkfiEEvhGtMgmxHHff8rzX0YFYrl3vwG+Vf7DALstBSdlKTMYuh14ho7LXB++LzYjXnZkC0pbkZJnWHXln39rfF+DZkY7BrjsrOzzVcR82WUQ0k24lYS/2U25e710+Sc08RMODO1owiNlVUSZLOs92Ff+jBlgqN/v+KjOQwYA74ToEL4ASo6PoK2kHzBrODLNm+kXi7RSjAW1IvtCVSTuxHbsXSr8yfYMQMX9cBSYGH6Qglf3qvAUMJr8Z5e/yCx5sAXNPe/JFcbphodQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KPFlYLw4GL+dzY7k/GGTKjubK6fGdprmmrLaEQ3umZo=;
 b=DKD8lLO7gS0cSXnwfTCFqxtuqWDEjL7o6QSjQ5Nyvi68TpEAsg6kffW2SF5Ng5rfsBjeNalN/J0D+wP/sRrzuEYKhoqDLv3DJJsRMZNcUuPJi2vwDI37xt3Ucr6dPTTBdQvhQ1fMlooi5ss79w/U4NAehowwz3Dmeelsd7EnKPWY4OAx8WlvgIBMSN1X5KaaRVOg02YmKOb9VDpjsaqCya37HZCXSRaZebeXoVxjq4ktpd6ncJcbBWvvwU5DEeU2EwetlZCp3NUN4RlWM5ZCIbtDgH8YnqPKY7tyeCwB+wlkhvqnlJciO9G0o+6xZLq6gVH6UigcM2XoWfZhGnWqBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3363.namprd11.prod.outlook.com (2603:10b6:208:6f::20)
 by SA2PR11MB4986.namprd11.prod.outlook.com (2603:10b6:806:114::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Fri, 11 Nov
 2022 04:34:01 +0000
Received: from BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::a53e:8e76:af42:1b8f]) by BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::a53e:8e76:af42:1b8f%6]) with mapi id 15.20.5813.013; Fri, 11 Nov 2022
 04:34:00 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next:dev-queue v1] ice: Remove and
 replace ice speed defines with ethtool.h versions
Thread-Index: AQHY7UuVMZtKyPv+iU2PqM3biiiL1645Mtng
Date: Fri, 11 Nov 2022 04:33:59 +0000
Message-ID: <BL0PR11MB3363744B6F47237A1BF13BD5FC009@BL0PR11MB3363.namprd11.prod.outlook.com>
References: <20221031170912.1719253-1-jesse.brandeburg@intel.com>
In-Reply-To: <20221031170912.1719253-1-jesse.brandeburg@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3363:EE_|SA2PR11MB4986:EE_
x-ms-office365-filtering-correlation-id: 2cdaa0bf-a821-4048-1c6c-08dac39df420
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A0h6ZyrfpmynUGYXdUMsn9/rot2HfU2eSUtZilqne3SjzGF4SiV/PTRtdgmoufyRj2L6ny+ycSYeRTXh13zw87rUnakBhLnFyGRUD4t2Q9RjbyKmRb0kpU4IqJHc3N8iPuDrbydot7XAt2PJ4xzrJ/AyxmlZe+4mzmh3p5nvjp/YrEXpcP9fg7Z/SspltNVrS0jkZcVVQ37mU219ML3TN73XHv/M4f49P6t5sVzPDYVKRUhwmrM0bjhqrB6/txsVfEAu4O9/WDzB5l++yNxaj5fpsp2mGM/4hbGDdz7ocK5KoXO/R845U+xwdk8AxZgYXQi00oKQyuYssf1+47G51LNeqZMrBZMIQwN6U5SpNQbVW2BCrrGnHOKcWz95RIIKmxZhbVTbykAW61AhSkQc9MOuEuBGQWOHiDZl+exUDuJX6iaLgxmpN2DsIVwd/cK4kJwZ4dq8sWkEr/uJCv3eKSiGWiJg5byD0X21gWTnYcjaIx3odoWLEvWyz0pbkQR/hpmxwMcSxuIfFCsBPheKswqvo2M7CslgG7xVJrtCuGd8oYQV4KfKkvH8KcE/QmPx0lDZsyiqgFbV97Uplo+MXgKmkBSNSxeqAnqhNWm/dsfa0CwEa7/pFUBTqflCi9a38gupOvmBRXk1lJcGZE1q4x9NstQGD3ciVZPhrAgqRhrAkT/6u9Y0p0bFEJlyVpduwPShqg3OWCO3KsBB+90GvId2mNeblCsHWW8OQxePHFKWYJf4gMKMw8k3qR5jHaZcDtz44j2U2fs9LtJmZ3EDrA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3363.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(39860400002)(366004)(396003)(136003)(451199015)(83380400001)(82960400001)(2906002)(186003)(38070700005)(26005)(122000001)(38100700002)(8936002)(5660300002)(110136005)(4326008)(9686003)(7696005)(76116006)(53546011)(478600001)(107886003)(71200400001)(55016003)(8676002)(6506007)(66476007)(66446008)(66556008)(316002)(52536014)(41300700001)(64756008)(86362001)(66946007)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AHNwTq/rE/OWTTsMaiDPC04WWY1IjlbEnxvQhTFIW17qZB6M2X8O0izVbg5p?=
 =?us-ascii?Q?YxW2fAmMcqqR9SkEmet/9Efa8mmh/Gc8GyTg72v1FA+M5TmRWAkzAY6jSlJs?=
 =?us-ascii?Q?L0OulcYLDaYv2e70IQPwWTJYvc1codyvYME3MDxau67pZurlwGMsuRcChj/8?=
 =?us-ascii?Q?qApplOoCJ4tnenM9aOMakaHEpEIquP3xb65XdGrRq1nnVbwsedwAUy8JgEAJ?=
 =?us-ascii?Q?alkhG0SqFfR8ScPXj1sCOLasHokcnYNeGoytszgaSS13wEcc0ugnUAse0WuM?=
 =?us-ascii?Q?q6JDvSDwnM7cA5eN5W9QI/qnL9/Q7Gro8Uyf4P+H6nS/jhOcz+uUkAPGPrCd?=
 =?us-ascii?Q?dqOX45EN+2pNxzFHnm63IDqin8pjn1WIAWs94utebG5JOVhZlXBbxqviciHh?=
 =?us-ascii?Q?vFrG+t7dxI2rZ5DrprLOGWjMYYhJING3gltDkEEZqJXb5L74xM17xfF6cjSS?=
 =?us-ascii?Q?MQcVLzVxhDAZuvsw1k7MXXcR+Ovz7nGxq+Mjhc4K0sumOg+tGs6JoZfB6WGn?=
 =?us-ascii?Q?krmk6/Ip5ox/F218/WOtdPeoTywxC83BVb4DTOEcWDZsPyB/siWN+9Vb4tHz?=
 =?us-ascii?Q?SPCfiQ7bp1W36cXiowzQINLFfir8zwdq33UGe4c+H8Dg2Lh9GXvvoJ10vavR?=
 =?us-ascii?Q?JDa7GJFJPVzP8YYV5F8IJ3aGBrjcWE8SISmFQRo1HnYSr94FIn8bWXZQZdpn?=
 =?us-ascii?Q?ryUSdVXgAlorWCZht5hddAJreRw7JyBCR3NdKr2yFmliy5G2LljLu3uPFLwn?=
 =?us-ascii?Q?gAJFOPl0TzMTBovakVkk9QXatyy0YI/03TQi5irG3Smf/uVzX3X9jSamz5K2?=
 =?us-ascii?Q?D9VVY1Bwi9fWGTxlNfGXxePVhXsjVDeHB/ETu/oP+9iL3bNIglUhnFI2W+5Q?=
 =?us-ascii?Q?gogRBDTdVGeY3P2HG0nBiQOvAoqUNQFW0avRU1T3ktNe0ESQnB/d/REzn/W4?=
 =?us-ascii?Q?Cia7+apE70gf1EjaJHOwaD4PnEt9owaEFPQhOfrVyesNYzgARGZGqPSI0fEi?=
 =?us-ascii?Q?2nhaN1kxaLlSX8FYhDihhk2kEGVo+VJrOx7niR7+YqI/LpJrSA0gY8dB3TBs?=
 =?us-ascii?Q?UW6zr4e+d29UAf9c5NrrK5Yl/mlARTr0e9Em+ujizo67mhdWMw/s6W4UTNGJ?=
 =?us-ascii?Q?3yXkQT3KbSu9Mxi3ZgFRJtDzG6hdcmVlu03EeA3j4JB74QLgNWKEedAqGpIF?=
 =?us-ascii?Q?8cVP73a9l6aTJHrjmQPXMrdGnPLqw0fvf7Ud7gOkIQekANjYzdGkLiq8p+V8?=
 =?us-ascii?Q?4rtaduY6R8tlmAz4l3xETeLflom3024iouER/VSSAYzav29e6I/UnPGW3/Qp?=
 =?us-ascii?Q?nhEZaS/OmyBvfKv/gNu4ZV0NUH5H94caQc/TfQJ4fwbC4LpzgWEU98P4gIzX?=
 =?us-ascii?Q?5HUVsI2yFvziAxvU/5w7gY9zSWRczM0jU5SCgYuZNTQRLFfk27j8OcvKpWU0?=
 =?us-ascii?Q?tG0UoVKSg56KVEcbbrd4N2heuIpv3u4vqlguYBZ/lgWZsPztjxFS0l3KFXsi?=
 =?us-ascii?Q?dZa1k3edl9QxgU3DHZ9AxYVLDtmI3MWuJCIx+FXltbJASlA4QjypKwwEoghJ?=
 =?us-ascii?Q?My90PZVf1t698fTk2hyRKABZjzmqF/ayc+xKKt2b?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3363.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cdaa0bf-a821-4048-1c6c-08dac39df420
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2022 04:33:59.8904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GgNEjyCxTm8DASCCX2pJMGn1ikOLRINoU08Yly6AC0/pd/r+SpniLjgAW8nQHKbrXprmvH6DuzO+jmihTCLORg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4986
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668141252; x=1699677252;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S3WER2cQBy3nv/h54UxNpau4z26R4hAeBtXvkMV6h+k=;
 b=T60hGXUB9O39mvoOP7hUwKhVXY6F6pJDiJISyMwxHJLHMfkUzw7/Rch8
 hIsooTrIo0X3moFHkDJNs5tnpO5+XVU6P8ufCiagnMKZpOB2Tw0Th2V6v
 YMN8EAK2HQRbJs6d78D6zM0GxYFJ6xlcr+sH94n0tEav2z5r7ZLxLqduq
 xEYa7DNM45wkhDL8Pvi8pReBvA0hx1OkDLh6baPPkVkTcRpeLpzSoAIAt
 lpWZJ5N6Voh0rt+Us+Yd3/fVA5XQxHojewfTRpuj9klRi33iOmtef/swF
 XOmkXFlShHCzVWEaIxbONa+GEyHOG9bQFQzp3B2kFyxaCxswOIbVFr8s5
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T60hGXUB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next:dev-queue v1] ice: Remove and
 replace ice speed defines with ethtool.h versions
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jesse Brandeburg
> Sent: Monday, October 31, 2022 10:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brett Creeley <brett.creeley@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next:dev-queue v1] ice: Remove and
> replace ice speed defines with ethtool.h versions
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> The driver is currently using ICE_LINK_SPEED_* defines that mirror what
> ethtool.h defines, with one exception ICE_LINK_SPEED_UNKNOWN.
> 
> This issue is fixed by the following changes:
> 
> 1. replace ICE_LINK_SPEED_UNKNOWN with 0 because SPEED_UNKNOWN in
>    ethtool.h is "-1" and that doesn't match the driver's expected behavior 2.
> transform ICE_LINK_SPEED_*MBPS to SPEED_* using static tables and
>    fls()-1 to convert from BIT() to an index in a table.
> 
> Suggested-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> bloat-o-meter results of change:
> add/remove: 3/0 grow/shrink: 2/3 up/down: 158/-652 (-494)
> Function                                     old     new   delta
> ice_legacy_aq_to_vc_speed                      -      60     +60
> ice_aq_to_link_speed                           -      60     +60
> ice_get_link_speed                             -      20     +20
> ice_set_min_bw_limit                         329     338      +9
> ice_set_max_bw_limit                         334     343      +9
> ice_get_link_speed_kbps                      195      40    -155
> ice_get_link_speed_mbps                      195      29    -166
> ice_conv_link_speed_to_virtchnl              382      51    -331
> Total: Before=536449, After=535955, chg -0.09%
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c   | 41 ++++++++-
>  drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 12 ---
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 32 +------
>  drivers/net/ethernet/intel/ice/ice_vf_mbx.c   | 92 +++++--------------
>  5 files changed, 69 insertions(+), 109 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
