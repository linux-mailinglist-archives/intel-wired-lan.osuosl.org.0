Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F161369CDC
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Apr 2021 00:39:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BADEB834E3;
	Fri, 23 Apr 2021 22:39:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AdbPiE_9PDnr; Fri, 23 Apr 2021 22:39:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC1FD834BB;
	Fri, 23 Apr 2021 22:39:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 602E31BF41A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 22:39:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4F92E60632
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 22:39:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Z429X3yjzvl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 22:39:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1BE7160603
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 22:39:19 +0000 (UTC)
IronPort-SDR: H50uGtTZGr2DMG1BAFuG7cPiM3Gj8QCSaMWcLLS3JK/Y1uMv76QE1H46ZT8iJoK9Eue2aHBSaA
 ppty7D17To/g==
X-IronPort-AV: E=McAfee;i="6200,9189,9963"; a="194024619"
X-IronPort-AV: E=Sophos;i="5.82,246,1613462400"; d="scan'208";a="194024619"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2021 15:39:19 -0700
IronPort-SDR: bumqk5vMWuThPaUudjJW/5XvohW0BPiBlQOyP9+vW0dhZrv4QIIPr2ECJowicNUeqyib1HWNM1
 bcVcB4+vXvQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,246,1613462400"; d="scan'208";a="385221565"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga003.jf.intel.com with ESMTP; 23 Apr 2021 15:39:18 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 23 Apr 2021 15:39:18 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 23 Apr 2021 15:39:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 23 Apr 2021 15:39:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 23 Apr 2021 15:39:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hR48nCkrfZVqQHXKcMKXztlC5PM4ubBmHQ5PWhezXKZwvLtoewlUu51/9281Dr7nj8z/QHU7Gog9zyZUKgICBw4ZvkRrQEEo6+3XV4xyJVa/rcaVahyQqAvmz6lw7tUV4g4vJb67nzuqUxADuaU5rOuAYnGLRmPJM4gryY8EiULmlYAGwOWfPvsyG9/lVupTTGqT39w0YeBut7B4Zewwt47RnozwRMK+dzxzd0PybdiAnT+L0iaUGK0oTdFUVFxaHTG4iu9fY/ANlX+Bu73wAj/6lWHmidQKJde/ittKhq7yGW18wgNQ1Z76gj8ndDg5uh2KIBUtyKBEBLnIt8Cgig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=otF8uK3GzJTsvzCFKV3M2WPTQ7RDipnPLrDPoPVJh74=;
 b=lBSQFMOowDRnZXoX+q9w51tA20ZQH6LJP1KrUV8c5To3AGAk4jxEi0p+MqeYfUuC3L1PEulpNeB5CuybmC33L9g3XFCsGp9skybVNMcq8L9w/F0kBeIH673SXHFCyNfg2rckfb/uYKP9N1G14GfxzUbfAg29StmKB157boHoxzaTxxXEZKzkR58dJqPAoiPleqaANGD3ABHSO9exYrdgg+9MFLpnq+LqKWipKfyxnBaf7Uz2Xpjytjidw1IQaBClQQmiuizHzecHeoMM+xCI10DmaLH3SGeFZg2wX0GnT3YU78G7NFqSq/LddYI7EPgToPTNK8rjF6xrBIhh17uuyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=otF8uK3GzJTsvzCFKV3M2WPTQ7RDipnPLrDPoPVJh74=;
 b=VZx0NKEvcssFxzVokTdUTZc5YlsGm+5rfXy7roussho2370RlaVkG6XBks0ZRMmwVruillzbFOcjFT5iQH1h99dQ26Cc6OhzqQYlJp+FZpTziy54a/aJtSIjGNJ0lDVzyOKPkwuXljOQSYatT//F1lSbf5iKOxFnCTMuL6gOkIk=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MW3PR11MB4617.namprd11.prod.outlook.com (2603:10b6:303:59::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.20; Fri, 23 Apr
 2021 22:39:13 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%6]) with mapi id 15.20.4065.024; Fri, 23 Apr 2021
 22:39:13 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 11/11] ixgbe: reduce
 checker warnings
Thread-Index: AQHXIdiJmDfGpoh8tkuSHADYWglmWKrC3y0w
Date: Fri, 23 Apr 2021 22:39:13 +0000
Message-ID: <MW3PR11MB4748A2C17B59931651DD7ED0EB459@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
 <20210326003834.3886241-12-jesse.brandeburg@intel.com>
In-Reply-To: <20210326003834.3886241-12-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.38.40.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 24c15d4d-48fe-4678-b91e-08d906a89ea7
x-ms-traffictypediagnostic: MW3PR11MB4617:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB4617E19DE03A1B80D18B63D3EB459@MW3PR11MB4617.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:316;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: muNDoIpWWol9q/1x2VpngdUTxeKxN9odiy3CNGwvCCNzlw7FuOTE4k9ndKLrOqeiX5yTfxWFkoMQePF92qNGDe6JcW1C1lpsoX+NjxyV9GTTP4RpRmyEosxEGJjvtM4l7zKX5cFoydoqPuaZKTY/mu9RIaQhld8DJbmYGcWyQpyiJV9KeDxjHOAoBX92eG5gCUKNX20KLtYr0y3Lu0VqE54wDbprzFYF/KNGZ/D/Ko+/1fYNSLIiaK/dhlT8Sk4Gcs/nPCPAvLPRJjSsP1dVVRqsE4HKLH/f2Vq9irhRJCEEOlUbb1Akg0L7uzdmFIyPpDFOob1SW3xwSTOEvIUCxkv33iymaEvZNT6PC3WsnbP2lAUKsfqmyShO7MMV+fLG0+4hDDDTyq9Y8l4rk5aJ5bOsg8fHU01nzJjy2QK7tU53zFfjFzKMI9E7Q0LxRER633z1goz4DbAH6gV0ZxijKR+RtvU2MVLrSVMLlJRjpV5cCsTyaNZubxHeSHVa85rXImaLyW/C+qOSRk9StUXPiXxVhbAPILsZ+NIq1LImlgYE3gIkU3nTyQ+OnYHfm3cUVMhNixGbKC/+F3fKWSfDB5GZOTdHNTjsEeExiELvF6A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(39860400002)(396003)(136003)(366004)(8676002)(6506007)(52536014)(2906002)(86362001)(38100700002)(7696005)(9686003)(83380400001)(33656002)(66556008)(4326008)(26005)(66946007)(66476007)(55016002)(186003)(8936002)(5660300002)(64756008)(122000001)(71200400001)(478600001)(76116006)(66446008)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?ujVM1ueavcHOI3O9zHTApi37EvjlIAMQJ39nPtB62U4vUxuJgmoP9G1mjuO5?=
 =?us-ascii?Q?PUtpY7VOMq0SmcaAkH/wjRBEmAusnL9ZL5Cg9mVsQnN0L7E76xLSiXr5GGhy?=
 =?us-ascii?Q?jpITkZsWj/Jpb2ypPjS/JpDABCNc6gOFmO+5Eu2prNETcaYn38qnq0RZqdDd?=
 =?us-ascii?Q?hsZZuqmh9kYebEU8lDbGJdsJdFJqUQIovye/JnJk1vSUBwN+1QpmRQEzlrGs?=
 =?us-ascii?Q?L8kQ4DIL8Bd34dF6Oxtv4VOwkq8oTrR3MU77u2DsafrlkbsmytQkMMrQ7BTn?=
 =?us-ascii?Q?TpKnJ5MwuoI+GvgsmunxiqWg8R2R7oF9PtZQCRXlqxo/83YCDtYhSyIZNZrv?=
 =?us-ascii?Q?852iF0II98ZQAlJJTAao33jkdJ8VXwmn3tGXNs2l/N+PY4O8fo4yizPu3k20?=
 =?us-ascii?Q?HRJ2kcs48pSEX2igSlodEvh74/cWUnj7lLl7Ag3CkTtBM/Zca0u7eFPheu6z?=
 =?us-ascii?Q?y0Rx0LBIBwoiJmuL2DxaQtCrwus1q99+5xxh1DWlUUpYqDYh9q/lTVYS31OV?=
 =?us-ascii?Q?FS3fV1/oVy2OonBkjuDVKMhfmEAltJfWsXQDc9n62p1RJqV1rHwjTBa/KKvj?=
 =?us-ascii?Q?E/GxUc8f6FQ04T7vFWUrSz7tdpZ9fIiCl9ImGy0EeQWlk0mopvLpaQGHS8CZ?=
 =?us-ascii?Q?/eXTU/bLgpgQ2uN173Zg5IweXRkrSb7z4rEYcNgOLk6C9w9po7Y97v9aVucu?=
 =?us-ascii?Q?D/3n4D7Px81gfVaN5E1vAKekZQWtK7IW6zagfHTAOpR7A2yEiymhF7+Kjcad?=
 =?us-ascii?Q?yzxrCZphUsxdWt6E0kk7V9Uqsqy5sKqtblr859VRkXjucqKebOHHNl31UOfa?=
 =?us-ascii?Q?0ych9v/psKT+l1MiktBM7Ok4k1qIQyCWbn5/afRpQCrrqNRs5tRq9uGg4rwq?=
 =?us-ascii?Q?GJEdI+yDUu3lvwRN1g4hYz4hPasNY+QlY6ErHaUFUWoHRj6y1nLlYarlSSKb?=
 =?us-ascii?Q?qsRAZbb9QNibInPqJrfYTm6mp+dF/vbBx8D/WzhAlmyBBiCfpCjo9Fyh0SLz?=
 =?us-ascii?Q?Qscig3DOqt9e8VG79NDp96zUI2RM2y9ypGI92lb9LfsL/8VgTGGaW37FrGLY?=
 =?us-ascii?Q?PEUSrroHn9sqXWPrcLmFIW+cUze8HLWP8mxW9IIvXs3qrI+CZfLyOy3AGz0F?=
 =?us-ascii?Q?+GTnnzhfQXY02g8Y2sY1zJQ7xdjPzruWA+OW14SvB4h092zg2pFg8ws21KVj?=
 =?us-ascii?Q?LlWXGjk3zpuCfA+EA87hIhhTPBcHsOYeF8G1A6g23QFlnJhmWSyQDNiQEFuQ?=
 =?us-ascii?Q?RRnH3dMsaT9kbv0fC7njA0hFO75Yf0JqKrYTp5zgwzjUjU6xm4HJCRC3+SdX?=
 =?us-ascii?Q?sTnHi4LiILAq8hAXpekJylJ4?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24c15d4d-48fe-4678-b91e-08d906a89ea7
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2021 22:39:13.4525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZPeqwpJQrigKC+JlMjA4i5+VHGYH9Rgfto/fr/o4bkKOsZf0aJwXmfRPszdPq64NxPkxGvWrv5BeGDMav4QzEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4617
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 11/11] ixgbe: reduce
 checker warnings
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
Cc: Shannon Nelson <snelson@pensando.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse
>Brandeburg
>Sent: Thursday, March 25, 2021 5:39 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Shannon Nelson <snelson@pensando.io>
>Subject: [Intel-wired-lan] [PATCH net-next v2 11/11] ixgbe: reduce checker
>warnings
>
>Fix the sparse warnings in the ixgbe crypto offload code. These changes were
>made in the most conservative way (force cast) in order to hopefully not break
>the code. I suspect that the code might still be broken on big-endian
>architectures, but no one is complaining, so I'm just leaving it functionally the
>same.
>
>Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>Cc: Shannon Nelson <snelson@pensando.io>
>---
>Warning Detail:
>.../ixgbe/ixgbe_ipsec.c:514:56: warning: restricted __be32 degrades to integer
>.../ixgbe/ixgbe_ipsec.c:521:48: warning: restricted __be32 degrades to integer
>.../ixgbe/ixgbe_ipsec.c:536:59: warning: restricted __be32 degrades to integer
>.../ixgbe/ixgbe_ipsec.c:546:59: warning: restricted __be32 degrades to integer
>---
> drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c | 8 ++++----
> 1 file changed, 4 insertions(+), 4 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>

 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
