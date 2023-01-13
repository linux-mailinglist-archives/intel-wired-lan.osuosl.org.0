Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15ED7668B0C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 06:00:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBE0A4168A;
	Fri, 13 Jan 2023 05:00:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBE0A4168A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673586017;
	bh=4gnmevj8GBXwMEWy1cSsEqsOnULRPtUnKcvRQ+HrM+M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=purcR53J16e8uCQ5JKs7GvF/dI8MG0gkI5UVknd1007vSgsdcaQZuYGOEzAGN0+ER
	 iP1DwykEgd5uLY8Yd2NmGSmjaCB365KkyvdOKh1SmHmEhXkZNzk6IiDdjOdDg35ip4
	 N1d7joHJTj0RK/g9V11/y0GZOm4UYysDXOBGPRiQUZB3t6Av9IkLXOMt2SXJB0GoH+
	 vekaiZ4m8RmyVat8OqQ1hjHo8EEBFzIxIyXGT9DWQyf3Bdoragj0tsXw24NIk3Q2Bw
	 VEyLGv5Z9r/4btGiMvEjAUG9pjelbcovyC77MFTN/Kdj9uspUQB/3mfEtBq2WiSyZV
	 1UDmNkS/1Z2HQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aCHK7_3IVveK; Fri, 13 Jan 2023 05:00:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC7F04161B;
	Fri, 13 Jan 2023 05:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC7F04161B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A9EC41BF30D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 05:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 82D1660B51
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 05:00:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82D1660B51
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uvsCXVU4TkLm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 05:00:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49DCF60AFE
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49DCF60AFE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 05:00:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="325175965"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="325175965"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 21:00:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="986860633"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="986860633"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 12 Jan 2023 21:00:05 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 21:00:05 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 21:00:05 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 21:00:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LecIGpDpBnk8Blc6QJt96maORE7co2rSi2TkbZ3m+fFZQ6xtRe1DHJ/pxkHjxOPPL2C//gqSZbABXdi5cmYYt09EVCcVfT/b+MpZ+7sauqSDt9uid2nhjrkq85xAT0azXdY+mLMGdTEigVIuHoSc8FBsO4e29gilu0tSm6CmN4EDY2haB8y9W+OAeMhAnaTiihmrK3xvWdRmj9suGrGe01jOQeXqkKyO811aaGxhMbaz9ZG0fzadb0a67bOVMzcwBdn3ThDmGmu5WsrJ/M/rHfX4pPPiUqcVdXyho37+kz/d6NHOWKisNyZJu1e5gvXzqoLZIjtVRypEzUyrlbHPfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vI2Gr7NLsOIYFgup2/zImSitcPyIAjI9yKpDeOHxzNs=;
 b=W7S5cbq6ifUUwpLt037K8waMQRYpXkKTFzrvrKe1VjdzIy+R+3tHTKpnpkKW9NYnBSqn3TBzap1SPXkQT+mXjx1D05iKumNj+PsYP1BozfZWbQE1MBd6lg0KA73qhfMI1zwi5hW/bfKQCGAkakoXD9ly1ajP6d4gePSPXs+PIoY6FYwsvtooDI1rlhmm8izJ7OVDQq2naz+wJc3P8Hs+BZjLKg9FaB9cpgb3fxSyyeQGLD46HwyYaLSN3l22YYVZFDCg6SSOzAI1HBiGebyrVHp+TO7qlO/kJb3UTN3tGscTVWP5U1ESiq0SfSewzyZWP8/EpiZNiXFDN3aGNA0tnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SJ0PR11MB5919.namprd11.prod.outlook.com (2603:10b6:a03:42d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Fri, 13 Jan
 2023 05:00:02 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::51a1:886f:c473:b6de]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::51a1:886f:c473:b6de%3]) with mapi id 15.20.5986.018; Fri, 13 Jan 2023
 05:00:02 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-queue v1 1/1] ice: switch: fix potential
 memleak in ice_add_adv_recipe()
Thread-Index: AQHZDn8q5+qQg9JD3ka/6bnfgrrMxK6b+ncA
Date: Fri, 13 Jan 2023 05:00:02 +0000
Message-ID: <PH0PR11MB501353A5A6625B34D4E7C40A96C29@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20221212231126.3986112-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20221212231126.3986112-1-anthony.l.nguyen@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SJ0PR11MB5919:EE_
x-ms-office365-filtering-correlation-id: ab69fc4a-3ac4-4abc-6af5-08daf5230796
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vmqVa7CQCUaWS5dpLENJI85QCSPIkUxE7tX6p5OiVjFaSpi2/OJsA9z/8Pjaxq4quCi+lXiLvqFy5uFuzMIDbqevEvbqoYXdpfHlKdhuhnQZYGXv5vOt7WophrHwOPDbInxK5bgrkd7v3W0SAqBUAd+CJ3P2cVbkYjsuBS7N7AEcpzkqQfXB3nt2T23QsQ+edYXPV4rc36UnKM+N4Q0FmCLLENB8TqUbJbqCCQNJFz9Ml4Kfw/KeOOB8+7GiJ77z5U7hqd1ZaGWMpn38/NW8WkWVhGHEXiNgmm7igz4zGSDa+9MIM169d1Gg7NaHwN7tUbUD1+4ySJsiNmjOqVafx9lFmzg12YZ4KSioHxxqN/J9UFFsBNRxwnJ7Kx68CKmeRzs38eK87pGOol5bCzyGdVPZj7DC16x0TiujNqqFIaX8pFA9ioWmlZhskPw8L14X3j+KbB+rOFNTyC6t0iBgpUKom3ivERoVjveVoqaW8uGK4YiQ+Y0A2mxn497jxejWB6NdrJJit7NSx1AZcnpwD6hJSnummb1R+sQO2b+2ZtTDRPmcx+lSwk9VOnmiACx/HtuzazsdCxgI9KXVzK1eDYCnq2rgo+h43s8od+fwOHAxPElHvFrA1yuyZlII9f8/bq8PmAeXSqBPikFHXuFzFVeaQClz3eFaWTAiTKYUdb0fFVEccTQuxjBgZGlOcWGy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(376002)(346002)(39860400002)(396003)(451199015)(52536014)(8936002)(66556008)(86362001)(64756008)(4326008)(38070700005)(66446008)(66946007)(5660300002)(4744005)(76116006)(2906002)(122000001)(33656002)(38100700002)(83380400001)(8676002)(7696005)(478600001)(316002)(71200400001)(82960400001)(6506007)(110136005)(55016003)(41300700001)(66476007)(26005)(186003)(9686003)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Gbio5Wvw87dEp44w6gordKypK125YiAEhhF12BLbvo5bl7WuLRE9qC3Bc45z?=
 =?us-ascii?Q?Ly1zrXUDcUJIZbXkBhf4N/hwzO4IfFrM8x1z1jX0hz+LowrXQGrmvFlaPDEr?=
 =?us-ascii?Q?BIIf4fg0OwHwj3g0gZni495UavH+23jI6WDfMW0ScNtdvbpUicklVUMxAxbj?=
 =?us-ascii?Q?XMfKnYJDGBOiKvApDvUawH59If7ygPYDPr5Uj/NZpyUkO/SsrEZhS4wlpGv6?=
 =?us-ascii?Q?J/+t6fz8/PvprBRDkARXlFlRg7yjBN5SYKsWBH8/+AXA4y58E8tBJP73JFix?=
 =?us-ascii?Q?nEFOKUipGHbvsEDMz39POpfFJZl+AqtEE8jblx0TsQctcZsxy8h+ukmugNDb?=
 =?us-ascii?Q?JWthPRzIk8J3irMjUpjWOWp9TMUQ25H/A5vonBxHVUoNkN4JZiaxBkX4ImO4?=
 =?us-ascii?Q?jjCvSmJkipBFhV2Q05ybrnIVcir+eb1dDYCqw1NBznKHDEieuwvuWEarttu5?=
 =?us-ascii?Q?xSZ1Z8/ebs5pNIaUIzs+OBrdVdRE0Iyo6ZfOkeKk38T6ixpPFFnUB16bqTLy?=
 =?us-ascii?Q?BWd2DFupghBv99ZHKST3be/RFy5TxSm2u0kKqdYcwPi3yCrR2RWwFO+u4DD4?=
 =?us-ascii?Q?rlG17RE38AXi5XFNZq2V0NPc+z0pilH0Dr/HTaJE466Y/PVCAl0u8XM80QXV?=
 =?us-ascii?Q?udJ2yDhiL0ZIDoRLEUrjYhjNmmeK6tFTgrTapG6AtWvv4Us18BZERAAN4MoY?=
 =?us-ascii?Q?paI8PrgMZgm2Jo4z5X7VbB/fUsNBOqbC4i3YiAPe79ZST0yddFi6n8Dpp2RG?=
 =?us-ascii?Q?x/cbCFxskFdXYSeCOjhQqD6HZ/dOwgY01q9JbopSQcD3ufkvhg11+YdlDxc+?=
 =?us-ascii?Q?TlJzEyLjBj1+x56jCphNI0BXvvSz5HjsDt+a6EUzejizSB2nQPuZrM2E/MBC?=
 =?us-ascii?Q?OS2y6qYZW6vou6YZgjJhlaO96jA5nywH9SnpA5N3KPxtB7UBVV+/FFg5+rxg?=
 =?us-ascii?Q?ztgkR20nRXAGrlphDArrNguL+ouUTcbhTbBKFaeyy66KypAmWG5LaSt+VG4a?=
 =?us-ascii?Q?LPZoTDZW6tDxiduMNXlsWOWl4mFikLxW93Fv+xA15TU2804zMZxnxatNxhkl?=
 =?us-ascii?Q?SIQx7JQuSQukydVXKaG7RSnFB4ZWZ3/93jFCZl/42+QIg6hOTDDGqXvaWxAi?=
 =?us-ascii?Q?rhdguWQjWACsOLZuMZ6Xkz4KJmRAwU8mlfnXVypXbDu18dviRrKX8uLx5Jnt?=
 =?us-ascii?Q?vGfErK4E4MtJt9MAC0izCDx55M6vmviinGPNazWqlcovqFnDU9vqMBj61A31?=
 =?us-ascii?Q?rRRGz0Bby5zQskBtR2qEIv0cq9Q0hmI/5H3IjWOSyGLK7bd9TjFaKz5Fy09u?=
 =?us-ascii?Q?2vgJ+iEj8PO63dryzIgTiYccvbfKTB28AdA+E62PCcgDf/V1eiNFBXG8NDS5?=
 =?us-ascii?Q?5ZnvY/RGUMBmywUNGW3jPdRfPMWxBpDNRIBlOdNWhJ4vkFckDHH0qb79oX4s?=
 =?us-ascii?Q?RGcPJje3rOSo0eNHC3fAXxVpDV6nx43PTkelP4xhjIerirS24lcGNypaYAY0?=
 =?us-ascii?Q?V7D78dGxDncB8pCmBWo3zbNbYxfzpffIvH919hjrHI6UXz1s/j5PB4B0eHZQ?=
 =?us-ascii?Q?WtJ5kXO1HR14dnrMQlAfklIITPoiY2Nu9Eagpr9y0HdgkBibXnmRJM5BQFNh?=
 =?us-ascii?Q?kg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab69fc4a-3ac4-4abc-6af5-08daf5230796
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2023 05:00:02.5680 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qba6xsHZghI2dSFszVGRsdGJdb9+rP/8r3/c+WvALVn+OoIwksc7QKTcJXmSLqA9flcrJ5gB3iuvVFMOmuXYMn52QKf3YpVY84cPZtbFJQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5919
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673586007; x=1705122007;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OHik/FMFKnjDaoW/QvA2g4sJqCyKrzZAu7Vbts2dC5Q=;
 b=eUkO5AkIAKPjViaVY0WnoYXkKif+RjiIAs3t3j+9XAJThK4yBqAS8Wrr
 NUmT09wI/ymuExA2fF/LRy0ukJLl8YqrykXGcaHKk9rchxQHGpUFNwRGY
 xaqO8hyn6E5sBzaUsXc7Wydafvpo6MVcIk8nmUS+JqP59OYnJ6w1IufcJ
 XiQvq3JCfUraOyjex/JRDbdCN+YVbCTicoH3OTRKise1qnqRnTUbV9JK4
 ugMv7Qo6FgeeI79ble9Kx4J842LjDzbMeuxjKs2PfMpePlw8yHf7QONpj
 0NvjZuDkHpyrTnJJwi/E5y48n7e6UzJTtmCQ+xNmZqPRjsZh8d+Aoesns
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eUkO5AkI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-queue v1 1/1] ice: switch: fix potential
 memleak in ice_add_adv_recipe()
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
Cc: Zhang Changzhong <zhangchangzhong@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Tuesday, December 13, 2022 4:41 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang Changzhong <zhangchangzhong@huawei.com>
> Subject: [Intel-wired-lan] [net-queue v1 1/1] ice: switch: fix potential
> memleak in ice_add_adv_recipe()
> 
> From: Zhang Changzhong <zhangchangzhong@huawei.com>
> 
> When ice_add_special_words() fails, the 'rm' is not released, which will lead
> to a memory leak. Fix this up by going to 'err_unroll' label.
> 
> Compile tested only.
> 
> Fixes: 8b032a55c1bd ("ice: low level support for tunnels")
> Signed-off-by: Zhang Changzhong <zhangchangzhong@huawei.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
