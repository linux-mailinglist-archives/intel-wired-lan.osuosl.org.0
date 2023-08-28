Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE81578A99D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Aug 2023 12:08:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8566141684;
	Mon, 28 Aug 2023 10:08:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8566141684
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693217314;
	bh=AkjkpUEvb9C/kwUEcRbr7mB/DpZSn5sxDTFv2Ak+Iiw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C86lmL4TpZ7AUjVihZPhuCJfLVkc8agQk4ilDZAzZkih6reaFcNJuUquLyJKU3Dhj
	 O3RwMBgiGQLABdVw9/OqVziF0XdsQGAZ9s29v49yVZzFNGDQKB1rFSQKhZMnUVPkCD
	 VJdNt5AEPCLfIiyd+n2z9Uy0eD8vRQMfGY9Dy7Vsf1PT5bnNQS/QN8GNV4zFe98FoW
	 jA3p1Y7DxRdLAZ8TpcNok/owWI/iuGcYnpTYjOZcX5JXb0uTmvTJTJuDpOZA4Mhr/v
	 UkXi5phd0gRWDFz2SgaGPwAiID7U6DmIoF3kIXgZNLrO5cZIeKWAtN+gdjS01liJMV
	 jWBofyua4b0OQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xMUrEWxia81w; Mon, 28 Aug 2023 10:08:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3600B4091B;
	Mon, 28 Aug 2023 10:08:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3600B4091B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC7571BF584
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 10:08:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 828B4404D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 10:08:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 828B4404D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VqGpOmC4m2Md for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Aug 2023 10:08:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8BB24400CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 10:08:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BB24400CF
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="372472451"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="372472451"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 03:08:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="852784538"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="852784538"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 28 Aug 2023 03:08:17 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 03:08:08 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 03:08:07 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 28 Aug 2023 03:08:07 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 28 Aug 2023 03:08:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=By2ZGa/+U0VlNmC1MiX1Bba0OWwQoZi+/xjBc1NITDN2prtAn6vieLlkWn88OU682TZc3NXUZtJJWndDiyiItSm59Eq7acOD6TVvHquyiDFTeO0iQDk0Y1myCjm6z2Vian5UjlJc4QM5rcipUhscm/2zAKS3a/WUXk6N9OLGhuu+vVGm2aRd3RHO5F3M1AGw0s9e3h0D3EttgnF6XkHFr4uhKYFYnddZxmRK2ODKw1yR5TTUHv5dNFj+5HxLgz8BYxZy/M6hCPRu5lL8sB8H0TZwSUeoQfL0z6gTMd/7EHr7e+xeIMzpDHa1GeW1VkfW9/3sf9twWvLLxnBnT1y4qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IcsesjWh68UDcluEBQ+/pqZu0yja2aru2f+BpbvsgHA=;
 b=OyPmXzWx7ZzATqFFdY0wdCkM6m2JQOhzP2X8RB5+Cih/YVpIIgYDciHRybgzK4ML6fuNcvLPbYahQPo2qiA9m/a4BrERe2VTNikvB57ZTcQD8XJ1He+jmPTmxUVx9aTze9hjOz5UzY5/K7Zb6B37jbZIvGb/zIJEg567Vns4KZlyt/hgQJvO9taN9UTWTe5D5fudDb4v0XeW9thd57qUezrcLwBcoQeojy75mq1oT/uSIS4ueK3zR6D/MZ5SmqAbWLe96irqdjo4pU7or1bMt4UMR8Vr3FWtFEfObH4koe59+pqQGr3W73eNEVEmdF7XLFUjbk0lZlC/twrebt+eGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3133.namprd11.prod.outlook.com (2603:10b6:805:d2::14)
 by DM4PR11MB5454.namprd11.prod.outlook.com (2603:10b6:5:399::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Mon, 28 Aug
 2023 10:08:05 +0000
Received: from SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::9529:cec2:9640:7f7a]) by SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::9529:cec2:9640:7f7a%6]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 10:08:05 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Michalik, Michal" <michal.michalik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 4/4] ice: Remove the FW
 shared parameters
Thread-Index: AQHZwJLrWTvhp67FFE6pqn9fGvWGzK//rZ6A
Date: Mon, 28 Aug 2023 10:08:05 +0000
Message-ID: <SN6PR11MB3133B0E32A81A6CC41808C26BDE0A@SN6PR11MB3133.namprd11.prod.outlook.com>
References: <20230727135037.28472-1-michal.michalik@intel.com>
 <20230727135037.28472-5-michal.michalik@intel.com>
In-Reply-To: <20230727135037.28472-5-michal.michalik@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3133:EE_|DM4PR11MB5454:EE_
x-ms-office365-filtering-correlation-id: 9f216ecb-f404-489c-e0c4-08dba7aeac3d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mJ1ANJKMjLRo1UOvRFXU67cRJtRciA8oh8JNt3diuNFHXNeRsL7strv0OX3wpBVNrIcx20Pj2Knm+7uwC2nuQzApyWyEwHwv4D3OSrrwbc2WrRhyYb//NK/9JLE9OBfU/9ErQyFTMTTQ9gsr67dXhYXx0QBGVZHyn7aVQnkDYIF1Qx5soBjEp5x576YHB58FY1ftbZcNEr4Vpk6QC/ECAQu7G/RNUoDcOXLO8ePV1vp6fobC+SY/0y7jlm37fJl7P2Zetr0gGPUubC91EAkWlizApsQ9DDdOgWXPXP/c3l++JDkPuubA42BbAMkhL94bLzEDDRGuJj4JEa8h5JyIp+gpSqNJguj58+KkOeADESSC21BHySqjSuUoQc/Zn4uEmFi+aGszdEFV8hD0BqNjQnfhmRGqvPAthSxgtT9vmhuXF1dkw5EILoANObJ/5FgWr+nMqqXF8EN1lrorGv934K3KEdWeUXq7IenH2m2qp3xVr9Z8zOYMSXvSQSZ7AvfOigklPFxhU7fMjjJM7ZsuN/uGJcmY+FE5eZMzvGtqgSTIUAb3BFjL0CiD0WUTj8bq3zH9RiMDn5bPn2DxLr21EI0GEAT+qDFP01+jDwpvORZoewn9lMKUpvxWYfAPv92N
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3133.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(346002)(136003)(366004)(451199024)(1800799009)(186009)(8676002)(8936002)(4326008)(316002)(2906002)(64756008)(110136005)(66446008)(54906003)(66476007)(33656002)(66946007)(66556008)(76116006)(5660300002)(52536014)(41300700001)(53546011)(6506007)(7696005)(26005)(9686003)(107886003)(55016003)(4744005)(38070700005)(38100700002)(122000001)(478600001)(82960400001)(71200400001)(83380400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uhQC1smCsUh9HjwQwCmz0mMPkMDgWiVMgw97LzOTwCwgNHwEPdtHu3XA3pUr?=
 =?us-ascii?Q?TboEEFhjHObTdL+wThPnw2VOdyIaJPaWAnzMVV0tygVrAyVGW0l9XE8xtjuB?=
 =?us-ascii?Q?R5u2WHFxXburFNorOk9u8nzbZ63cCUt3S9W4whkQmpEgZKeCLSFKBaZGK9Hx?=
 =?us-ascii?Q?ELfaQx2ARmFonb+lsdoLPBsHpXxY/jYiOi02RQ1rkIAI7m0PGVcVcYWMd8VN?=
 =?us-ascii?Q?Xp57859chjcLqToXBIJdry4N8c/TXD4wjovOD2mwTjCSxK733gBdihq9+Ptb?=
 =?us-ascii?Q?xNHbyeVCY6fzDDSLhvSW+msxBSrZ4aAciJkhpXQDOAKZJapHUKOvXJPhI30f?=
 =?us-ascii?Q?ZvpDph2aV/iqznvMUFeg+QrclFJSjXRVBF0U8tC9XqBFAqHgGHhnBDEcJU5L?=
 =?us-ascii?Q?lm3maCijolfr97b+oFdFzUCM2Fb3nP3YcPxYrcTkK91hVFjy0NSxJHPNJ5FN?=
 =?us-ascii?Q?M4lc4IsURDBJa5Pu5aTmmDdSoQR9AI/8wVt5bGsQg1HeATuQGpFCDa08M89J?=
 =?us-ascii?Q?hq9NGDkwDXO4xTEGs6J0QHc+zQS6Bcj7yok4lvaLUuKgU3NVrKgixJprYhkU?=
 =?us-ascii?Q?Z/+Q4ScDTj4weHxJ4gn6/70X1SkDlzc9SULrcb6+V/N4mIvO4781WFr8TQy5?=
 =?us-ascii?Q?IuhFyqKys4eSOzmo+rSaJSU94KNhj2/FrQUTcvNDyutODa0yDiytcQk/FBnq?=
 =?us-ascii?Q?pHQCpfgc/BzYjsereyDITi9/wyDAV4qG5A4YytlWJ1avePbX1gxwZ2fA63CV?=
 =?us-ascii?Q?nfcgTeE3UhDy6JlqwaFg5awEdj0s97uHDECJoD5K1Tv8w5jHZA83ye0Xt9Fx?=
 =?us-ascii?Q?1zuJRxkvHfGdwjYDR1dT/X9hgVfqteIQMk6HiPoYYF4WEU0UceluyXWZNGZO?=
 =?us-ascii?Q?Bg8k5IpxDfKYMmMcCZaoe0bZCAPuB2QrQdptgLEhMQ/3dICQsLV+BIrPvvj8?=
 =?us-ascii?Q?uUmF8iyDyk/yGYBhYvRkFI2U3EQ5z5Qltr+iFLsxhXpSq5sadn/Fnvjdenj+?=
 =?us-ascii?Q?LA04kRsj15oOZZbqeSUPD9epckymHqljfS2h3ILhlj9o6ZckPQYVwyGispKb?=
 =?us-ascii?Q?jamxP3D+IkkW/EAe9qpbqAosQ4GWFi3uK0fHSlHfFeuqVmG/gtKmACksSxM+?=
 =?us-ascii?Q?9VbdPZYp2fXpolhw6cUKwLMhug47ewN/aLoXbEHhuO0MBRuY1oE/hJ6KSjZr?=
 =?us-ascii?Q?KLCfrai1NPsXa6DiFPwN1Cpae40uAGbBSPTiFI8X0YDRCpbdzmIhsQP8uekn?=
 =?us-ascii?Q?cxonjRlLkSfWlvYnvnfdxlon39paSbDggZuB+WZIrFGn+kapKlWGx5wQTVBh?=
 =?us-ascii?Q?oGXYw+DitZazw7E85CCVIgHDtkGZcYdxRfp7L849zIDGwCczr/VPcp7UJq1d?=
 =?us-ascii?Q?NWi+uueGwEWfy2UjciG2or+4EDu3HWjJ37C5g/tCgGv6E1aFGILdjBsxFykw?=
 =?us-ascii?Q?2L7ZpmYXgdNWnuhERL/3CCW2AifTDXc3NLvmt1LSrR6sjAj3TgEq9iajCCZo?=
 =?us-ascii?Q?4s82exfBgHhMjCNZZHkt5CVxiAPwy12culwuMMB9NEwyMg6kq0laq2Dl4967?=
 =?us-ascii?Q?/wdWxbpFN1t6Gy/I5alE6VL9m/ZqkOTd8bN7DVDhYHzfANpJGyicQQxWT1GN?=
 =?us-ascii?Q?bw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3133.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f216ecb-f404-489c-e0c4-08dba7aeac3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2023 10:08:05.8833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eh+xb4uLsVukaU+ZCM1dcfIYD32esZLNSk9FWTfOk06RalHM3IM0l2G83RZFPY9u4cvZcfXboNvkuZuIYxa4zSMSOgg5c0GZgWCkhBF3c5wyr3+XN+F7ADK9VqtOJSsa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5454
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693217305; x=1724753305;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=trdJkeoWSIZkHsMgaO1kjChNSy8OGIBnEnhYy4G7n8s=;
 b=n8UyEfb1W0ID6Kqu1oRfpTLe3tpfpGAqq7+IZrwnulMk4QqvZVdJMxNV
 Jt5PIQUdL95S44qoOr2fCxeAFjNpYuE/lNeoPlzNgeQQyMTYDKukBGLxN
 ZMqyhZ79T64jpVNpXXdujBbFeis3cNLSrZYoVdr9H0fnlmNfe0oX3xF/H
 2jXk3d0uCUxJ+33C0bjb4Q5Pbjki1zf6cSZj5zPpiqHOc3tWHY/RbVuAl
 FMsQWaEn4fIDpmtfsKFjXlWXD0Y6/TP0jiWL8yXghrIgr7Xs1LTX+xpe6
 8N47AHJSRb0mg6D4jRXGdTFBKtYuKn+rmSWkuNchbGsFd682n2pneHJLq
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n8UyEfb1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 4/4] ice: Remove the FW
 shared parameters
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Michal Michalik
> Sent: Thursday, July 27, 2023 7:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 4/4] ice: Remove the FW shared parameters
>
> The only feature using the Firmware (FW) shared parameters was the PTP
> clock ID. Since this ID is now shared using auxiliary buss - remove the
> FW shared parameters from the code.
>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  5 --
>  drivers/net/ethernet/intel/ice/ice_common.c     | 75 -------------------------
>  drivers/net/ethernet/intel/ice/ice_common.h     |  6 --
>  3 files changed, 86 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
