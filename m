Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030E47E7ADF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Nov 2023 10:31:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65BD040525;
	Fri, 10 Nov 2023 09:31:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65BD040525
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699608669;
	bh=VLQU5B2O3GbYmCrpBVCSfG87l45CuSrGwYNKA5zn5/E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gXMIa51gfSzSI2P9Lfm1qMOGeX5IGDtDJUGJFNfXZU61bNBkSexHIjK12Xj5yhfuA
	 d4cj9jqdI4jzKxSFV6qWPGawPoM5dRwyALHJ6D8OAxOjsbu1eDToDKFxG3sgVbhZWs
	 s9GyLS0MFC446TJM412XLAg1OfscR7aNyRb7IgwmiWtNIIN6WpNkWA5tX3Xaet9rSG
	 gSYAdX/7jHcQIjvm54NtUmN9GeJK/p5ZvMQpEFEUpwqE/krEZ0LNRd3lB2wdS83ovj
	 IoSL8cHa1Xv9UPknWCT7Ty6hRJ/UCZG0CIFP/Pvxo7uRZqGlpqu5YnLIUsVJbOaEL0
	 eChw0rzcnT1DQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vr8lBDceerwF; Fri, 10 Nov 2023 09:31:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA71D400D9;
	Fri, 10 Nov 2023 09:31:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA71D400D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6337F1BF97F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Nov 2023 09:31:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 39C0760F76
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Nov 2023 09:31:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39C0760F76
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pHa4YAG9FreA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Nov 2023 09:31:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 96AA160F65
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Nov 2023 09:31:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96AA160F65
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="387323986"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="387323986"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 01:30:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; 
   d="scan'208";a="4810029"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Nov 2023 01:30:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 10 Nov 2023 01:30:54 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 10 Nov 2023 01:30:54 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 10 Nov 2023 01:30:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QSOrGeIofoa7X1Cm7IIDo8cSfcLh7PvgA9B1PJpEaHLUFVXYRIiNIRG4D0jrFCfGX04B+HaLV7gjoOOQVMfs8IzUKYEdxEhOgKFzKHUrmWsigmLEqWrRp5xXp87iSpHUyxwwk/4EpNO2yDtFPg/V9+BgFep8zfZrIRA6ca1N8JJDT3kC/Gci/UmHWhrhxRE5CT1lU91cJ+ffJ9tWkxunRP56V5SAI8RoLK+/GDP0bfHMcf8KFDKDwxId4llBcQ5HZ34vJczMI8HuOpBRc/HhHFXa9F6qfl/71QlRCeU3BKvJP4+9GwEe+6vxcbMcaAmfRufIn8BvJUGLMPosbMIFvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EB6jgrTwA6TEAmvnpeun+YwHXNg91uHBf3GT4uCxPgk=;
 b=d0gppj383wnN6wPRC4otiZFDdamDU0+HAoBnJoUrmgm7HVBA+EUxfX+egaGmeDe4CbWmNbniy9VUpA7eTsMuzD1bBYWv5qkBXktkvzme/0xm4NC/wmfiJo+6vLvFGjAGyIB+/IclSBiKtLnirzDf4sl4w1dskhlelRxq3liDeoKQvqci+9cX3cCYTkDfE7U62IP/bBnsb1XxJ6d/X4wfKRIvHmS5oMXxQwHLYE3f5XakzcvizmjbGIqo/jOjmzoEQJodPMZVpsFP8tSs+9MWftGX6pk3DPwAkC44vrns+nTQuIQtip5x4Iu1GNidZhNHZ3uhvPmWnew6kqYo9GC2UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by PH0PR11MB5952.namprd11.prod.outlook.com (2603:10b6:510:147::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.18; Fri, 10 Nov
 2023 09:30:49 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::e716:9ed:e589:aa69]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::e716:9ed:e589:aa69%4]) with mapi id 15.20.6977.019; Fri, 10 Nov 2023
 09:30:49 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3] ice: fix DDP package
 download for packages without signature segment
Thread-Index: AQHaEaGgDo2pwu4lPUytI94AsyT9TbBzLzzA
Date: Fri, 10 Nov 2023 09:30:48 +0000
Message-ID: <BN9PR11MB5354BE41B278F3CA1E9FB35B80AEA@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20231107173227.862417-1-paul.greenwalt@intel.com>
In-Reply-To: <20231107173227.862417-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|PH0PR11MB5952:EE_
x-ms-office365-filtering-correlation-id: 0cb1a3a2-3119-401a-c9c8-08dbe1cfb98d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oQUggzoQ4TXxAsmwfX4DW+StxO56zzWGVSgUBtyroQzowqwKstBhcywzETfYDJmZT5Xf/57y53AqT6O22rx791BaSM1z8cpzYbvd0gWrQCqMyOPC4YdPsx1kH4wFSrVAm7VvMJ2RKnhowiPvo73fWuJYkJB2rBOFzxblvuhVrSTbWJF6lc83STePJgoJ3yRA0pAzOlVfF7HdcAtSbsm2y2HqzZtcJpIhTjhQ4blnvnTccTSNCuiDiwSY6/tZnkw8OmBrtqwmfmoJsg0V3TUo5jmONqteuz5Wd9AqT9XmViSsXReIHbYZd9/hOBd4RKN5g+qoyukhUbkex33RiWNj/CiYn8wgDtK6fQt4HRRQKMMWBZiN+vDuIAOlC91Dlj07uEiGREm/Fz7ozv8WBWY98FUHvxGAFSQaU36qJoiHYEXjkyHg3Mn0BVqmR0BvXwXWsJoFFh/KoEOIeR2YtBglnUANwR/0EqcriWz9X4Wuz0JkhGO8A4SPmB54XMbH0onKn2GC0gVUlYdtnO58aSAJw0N3luuEh22q9PcUlOY9o0jvO7k4QVV0dO+mIJF+Nh2x3w79vrWDSh6+bADg2PCn+8fEuWiEJrNICb9cfH6GTlcWUAjDYcSiZSxLd70ng+uDqYtJEtovrbJmgM/X91nRpg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(39860400002)(376002)(396003)(136003)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(9686003)(33656002)(55236004)(38100700002)(7696005)(53546011)(6506007)(71200400001)(26005)(41300700001)(83380400001)(38070700009)(110136005)(64756008)(66446008)(54906003)(66556008)(66946007)(5660300002)(66476007)(76116006)(55016003)(86362001)(316002)(82960400001)(122000001)(52536014)(8936002)(8676002)(2906002)(966005)(4326008)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VfGVbCISDFsvCWsqxtIaR4f6EZ5cSCtkKfB3qvwXwsU3ZvCYguk0K6uUk4bj?=
 =?us-ascii?Q?pm2AvSp5mtFR39ozEEAvB3JhFLGph8s0voTJgwC62fqqGlSsk6VExh/w9PWw?=
 =?us-ascii?Q?txqwhNPVcTyE0neZCou/VrFRfU5SOSTv82gsS5MnrY1egpi9wfdI5MMOOoi8?=
 =?us-ascii?Q?1wo0CH58xFzhnIL3Jlk9NuZMS0781ubAKtPYrJu/w0EhaJ9v4TYXIY7TotKa?=
 =?us-ascii?Q?Y5lHg5I6nIPeASUa0wJGaRCvrF2jZFb4+DpTu0VqHxomAhtc0Fwi7jeR/s1X?=
 =?us-ascii?Q?L9izNlyENaDEAtfJQc7Z17p9FbqXCdC+S7X36S1EVEmin3Z+j4ho+amhbBkq?=
 =?us-ascii?Q?rxrKSLvSjvmGX/Re2fsPNVEdbj4eXtWYM8aDYkcdVG58zxv6vmcl8z78Tvda?=
 =?us-ascii?Q?K7iyh4umY8K3A08O8emGpmvXhX9eVix6tFnQICR8bZfpDaGRgG+VgqkWdbjw?=
 =?us-ascii?Q?bFQjFmKldUT94+E+2TZrLwvwsxiIpjLMZqmxK7gK5bl+tG7OfsbNtrNhyT4/?=
 =?us-ascii?Q?FgEKNJjihE9W3+1hmht3l2et9Wg38wfsjg2g+MAHbmH6/Fd8YAtos8sfu/iI?=
 =?us-ascii?Q?0Nq61uMs/rRnOAmQk5cZcmF0SQqMq01rPOOZkAZjmZeIIwVtLzLr4iWE5n6Q?=
 =?us-ascii?Q?bmLa5PFFvc5rvJiXK20eIEDgacsw5+7/zzaoFK77ndUSBaC/shGNokvn5xcg?=
 =?us-ascii?Q?BQQ9quQa+4CBNOOzE5+PYvePx2G8BEfmWAd70Dp0VfOkAlKBcn1Dc34awGQv?=
 =?us-ascii?Q?y/GowwvTBIm/UHstyhE4xDk3tMIFwmM0cZe4st314HejImmjAqNQpwxz8bQp?=
 =?us-ascii?Q?XdIYesl0joKJkSoa1eXqJVht91waV1zDv5X3yN1octh52brx+KzGeTgVTtXc?=
 =?us-ascii?Q?yoWOTH5Y5IrqAEnsh3UNkOjSg4gj6cYPyI/+QhnVGm/0iUl+yfD5W48aDxfG?=
 =?us-ascii?Q?gNcQjYOotJA0sXd+WKY3iRSSmSft2oeEkbwMp3JzOs+0jbhiAbi1S1BEqvCR?=
 =?us-ascii?Q?9OpwKMsqrDQVGti06zryS/CPipfMC3E17WBzpAtiqYisdcvyHrCL0BFiwO2I?=
 =?us-ascii?Q?tc6MxIuHMSU7ekzZsqSvZHwRcYNWynEEqd/9dv01Bpb4n5iVB0tQ7nNaSuFZ?=
 =?us-ascii?Q?TNIbCPelZWTneVWlNWRqmIFusas75V+gXxwrUGRvpZQe/PAIrLVA1hek6mR+?=
 =?us-ascii?Q?95PvVI/t+l+3DAJStvQuoxLbTkLwoyjmR9MUJzF7bKl7wKekHZIe+cod4xwm?=
 =?us-ascii?Q?RCpa7cdP31Ru9nv45OUaXtWCAku3AE+Oxj/OBqIS35b7nPdUcb2cV7ZKWkGQ?=
 =?us-ascii?Q?xhnXv9zQT2bwiXnyQVVqJcNUbUfcNe3SDIwVGxV8XvM8C0xK8QsKhhpmQJgj?=
 =?us-ascii?Q?0KfcIuVlmdqbgW7t0vAG4guhq8ImKaFUXv3rWnxOYHjwIH/45b7B/XdwEx/6?=
 =?us-ascii?Q?SJ1JGTiVwdugpsxcVdlTNUeted027Zf39rnYZgc9y3EEz/R94gWPKQ0/rBq4?=
 =?us-ascii?Q?0xa/iu1eyBcfA5BCHv1+KUN2omEuX6xoReftM+em+rwMsmEQYt5B2znrDMLu?=
 =?us-ascii?Q?nD5SktfLODxdCT2FzatmAOeuL3z8pAzq3mpc0ZmF?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cb1a3a2-3119-401a-c9c8-08dbe1cfb98d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2023 09:30:49.0106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xpmLBCKRDFrWbM+BaH/YbvquvdqhilCdn62lOC0VsiFwg+XHlqqkgti5FwovIvrw2WDvnIvvxU22nhzi5aouQ2aaXry6GcF4kg9DaFZiSKg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5952
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699608660; x=1731144660;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xO//tMHiCHTu6JKtWLb8iOLpZiGDRktwJKxFo0U0Fms=;
 b=IzXqRCiymp9XFSjAvzCjWQv205PZ+utuiE9BPYtjOlfbV6HFJxVhUT6q
 nhqnfGq9nH8EYrNFWEMnfjSjjDUj3tZNN5BH9A4VPZ74a3vD1hf7hHtFk
 GdUnrPoBiGtNby5taM/GLUE0TonXNX8BE+8Cy9+aL28CJ4fL/jGihGI8D
 e/ohtW/Olfir6WpQdYZKcuP5rBZxgMsoVly4DTNQ2Aw/jv07tWHsAyXPZ
 6UPXuA84hBxp2ptnb8Ji7iIQdMjYY99YGH5mfuLbbU0pENW/YGl3DrEiw
 rb+cQ6AsAxXrGKrEQuIrYY+RKofgUS4qpekmaOYB1383tRL/MJBWRUxDA
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IzXqRCiy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: fix DDP package
 download for packages without signature segment
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Nowlin,
 Dan" <dan.nowlin@intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Greenwalt,
 Paul" <paul.greenwalt@intel.com>, "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul Greenwalt
> Sent: Tuesday, November 7, 2023 11:02 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nowlin, Dan <dan.nowlin@intel.com>; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Greenwalt, Paul <paul.greenwalt@intel.com>; horms@kernel.org; Drewek, Wojciech <wojciech.drewek@intel.com>; kuba@kernel.org; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: fix DDP package download for packages without signature segment
>
> From: Dan Nowlin <dan.nowlin@intel.com>
>
> Commit 3cbdb0343022 ("ice: Add support for E830 DDP package segment") incorrectly removed support for package download for packages without a signature segment. These packages include the signature buffer inline in the configurations buffers, and not in a signature segment.
>
> Fix package download by providing download support for both packages with (ice_download_pkg_with_sig_seg()) and without signature segment (ice_download_pkg_without_sig_seg()).
>
> Fixes: 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
> Reported-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Closes: https://lore.kernel.org/netdev/ZUT50a94kk2pMGKb@boxer/
> Tested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> Changelog
> v2->v3:
> - correct Changelog version tag, add Closes, Tested-by and Reviewed-by.
>   Remove unnecessary local variable initialization in ice_dwnld_cfg_bufs(),
>   and unnecessary local variable in ice_download_pkg_without_sig_seg(),
> v1->v2:
> - correct Reported-by email address.
> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.c | 103 ++++++++++++++++++++++-
>  1 file changed, 100 insertions(+), 3 deletions(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
