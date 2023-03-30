Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06C96CFFC0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 11:25:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD27841E0B;
	Thu, 30 Mar 2023 09:25:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD27841E0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680168317;
	bh=zdGBshnnce+pE3FV6TW6rXtqC7FY7H+JG/S+mWCF6gA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AYLECyuZj70/j+k4WBcnsHlvj+0bZ9CRfT1by5jxU7GvJbGsQq7O2uilwBFBIvGdD
	 oaPsgLxQsd5HigiKa5MVYtgbgUmk5Xkv+EJ/yrb92tmv7X3mNP1HozIZJF/wuqzTuH
	 Purnh/6djKicC7v+JjZquYUlyhr+FdOMxg5CsLNebe7yuOyY3kNTBuj/V3YhJu/YO9
	 VUyegLtztCiQFiyYplVlaILNiOEYFjGQeNHWDWv7sRr6GfEfKqKp2Q1t9pREV++wwA
	 Il/O4X1eoMZSuDweoWA5rOTrY4hcP2H+AhhAb5jJ47fL5p4R2jDVEDaGop9gswWw+Q
	 x+40SL9Z4xhdw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 27CGqx1UCQ9n; Thu, 30 Mar 2023 09:25:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A93340256;
	Thu, 30 Mar 2023 09:25:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A93340256
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B60AC1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 09:25:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8AA1D41BF7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 09:25:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8AA1D41BF7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rZ_7IEsJPbxF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 09:25:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6858840304
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6858840304
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 09:25:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="339842251"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="339842251"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 02:25:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="684629717"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="684629717"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 30 Mar 2023 02:25:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 02:25:08 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 02:25:08 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 30 Mar 2023 02:25:08 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 30 Mar 2023 02:25:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NnKSRnysaP4oreKLL3UuPcOAR0GVMj9t82dhiKp0vdBGlMFZHVvdIQ5/C+MjPqF/+8shG5iqsmmeE/tiY5zjKqR0riz8c2/qWdMqxAwr8EOoZgQPCSrHbdgM8uZG8gb13PCkPk98dZKxgQmBI4EqIFvQ2KsjwH88fBGM9+qIwkS65VMZIi/W/WeexW4yH13EHjlDoAdKAoZe1Pkm5eYhFHfSNvxcTCGKP1DxcX49EqOB8/GoRcMV8NgYIpfsyiewieNmJksMQxT+MXnuEsgunQRjnbbCEkd29eiKV7H/RA8XoqTdJWfDF7d6569twnC54B93A0ijztFCQA34i65BUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZVU7HOjQfZEG2YGqFeXl2mU5yYWfSFSfX2PD+PGoBrs=;
 b=Mmbt1bf1S7lqahBbaCOUA0U4sN+czkSaiGLBpVtv3v6X+PpfBSFH5qHERK2YCnf49KG8u1OP9X5da64EYJyVZfC3MZzhQzOq3YJmh2QUyvGIKXjujmzDYFk4kQy8eBgsgw+DJGMtWT4Iz0TOQfSALSlQlWYroEC7qbhpvOaII47LvPrtM+OUSZW/LycmBiEQXE0ZhIJIM67HAgUHsIdRyf/xCNrgWT//6ud8Dttz5zK4Eohh3C1cWn1bBJrRAmub7OxTaXzbXjbon1w0fdm0grwve29B6JSokZgjDbFI9zUgGHG5ve77c7err2g7BGL3oOoZlqFCJ27PCUBXFNdXRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5611.namprd11.prod.outlook.com (2603:10b6:510:ed::9)
 by BN9PR11MB5420.namprd11.prod.outlook.com (2603:10b6:408:101::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.33; Thu, 30 Mar
 2023 09:25:06 +0000
Received: from PH0PR11MB5611.namprd11.prod.outlook.com
 ([fe80::d05b:4aca:cccb:a072]) by PH0PR11MB5611.namprd11.prod.outlook.com
 ([fe80::d05b:4aca:cccb:a072%8]) with mapi id 15.20.6222.033; Thu, 30 Mar 2023
 09:25:06 +0000
From: "Staikov, Andrii" <andrii.staikov@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: fix PTP pins verification
Thread-Index: AQHZYtfN5Anl777jxkeHaZivQ7Bv868S7PSAgAADI9A=
Date: Thu, 30 Mar 2023 09:25:05 +0000
Message-ID: <PH0PR11MB5611003D690E205B9813F517858E9@PH0PR11MB5611.namprd11.prod.outlook.com>
References: <20230330071759.3405263-1-andrii.staikov@intel.com>
 <973187a9-6fdf-cdb7-f203-271d28e1543e@molgen.mpg.de>
In-Reply-To: <973187a9-6fdf-cdb7-f203-271d28e1543e@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5611:EE_|BN9PR11MB5420:EE_
x-ms-office365-filtering-correlation-id: f4f001d4-ddc5-4dde-025b-08db3100a61f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cgUFwFeed/lWRn6MF9AWI8F9OA+rC9A8jbQbRRy+0yosfrEfMhIvaFqx2RQw8dg56EarrT0Br40I0TdL30ugQNNaTYoz0FMcrMzInDdAif8GUxJq6XKTTG5K+gZ7AgX8tII5mSjmNM9og3aLpIMrppQaRhcxWl1BF5QOhUlQz/D9iShD0OxXnRdEeXAklJMd75JfQpH1nQDGfV8mNSgn5mc3K5Bk+2Y/EHU0eneXMDNt3hHj0WCcSfPfi5Pgq/ISgFQoSN+fabT70y6g1GeDG7Mf8yXqa/qfi1gg7I7/9uVwyk5rX7Bstny6gshOChPQKhZxHnFgsD7yL1/TrYR7ptL1DnZ5Zcl24UpXiCGylhXUvc3w1AiWq+DRchUbbX8QB+2lWbHoGpnhjg7autMR/dHJwALdbfDrFp8sfb2QOMtKa5UtHHSxhtmqG71EJF7o01nT1/9qlaDrSe93JC6UXVQHrwTyqYDhW1UOLElHy8z0iI54Rdsxc7+yvGlvI28/YRyG674uZFWSsL2a7evBKUgSgY+jusnY5HIWEqfTFe3irxmo2W/b3mOtyI8wMOt1fljsnEMww7HcWG4duGboZmWBnbe3/9/LHSCpJT3JRSLmA4Yg5RZ9HBtAyZ24Rn1N
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5611.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(366004)(346002)(396003)(39860400002)(451199021)(41300700001)(8676002)(2906002)(66446008)(6916009)(66476007)(66556008)(76116006)(4326008)(186003)(38070700005)(15650500001)(82960400001)(83380400001)(5660300002)(38100700002)(86362001)(122000001)(33656002)(55016003)(8936002)(478600001)(66946007)(64756008)(7696005)(53546011)(71200400001)(52536014)(26005)(6506007)(9686003)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z0FRSWFNblRNMWVEWVRKbnVRcm5ISytsS0VBYmxtSm5BenNBTDJBSFBPVGFE?=
 =?utf-8?B?WG1YYmFUcFg0YUxBOHRuamhuWTFvcEdLZGpMYzlVWlVoM2RHWkw5dCtoU3da?=
 =?utf-8?B?aXJkY1pOTk1TOWZaM3VUblBYWFdyTThadEVvc0I3R0luQmdhT3RWZS9rUmV0?=
 =?utf-8?B?ckVkd2dydXVOTk5uQkNCK2lBN0wyRTlBMW5veW00NmJSUExScStHMDVKb3JT?=
 =?utf-8?B?eXJjNGdkS3ZlaDN0SkxkNjVuTzZ5TWUxYjhuWHVJamQwaEg2OHpXQ0R5WDl3?=
 =?utf-8?B?M3lIa3V2TForeU1FQUhTbG9obTJsaVFheisvSzBDcXlEbjJmSlNWejkzVEdO?=
 =?utf-8?B?allPVlpqTVJrSlE1MCtIYW40R1h3VnFJSDgxN3hCRExOOTVIWXkzZ0dwU09n?=
 =?utf-8?B?S3FvZ00xR3NqZElIQkJhOUJxL1pia3RiNW40KzFRNTdZSHBuQngvTFpmNHlu?=
 =?utf-8?B?VEVKeTNxT0VhL1Y0Y2NCM2pYVERkV0s0UXdTMjZtcitWTGkwRjhKL29HdGpB?=
 =?utf-8?B?NmtEZy95eGxEa2J0YURMYUgwaitiVUZBYWtSUVhzd25UWWxLWS9JOU5sR1Vv?=
 =?utf-8?B?VjYzOWpzNG9JUkNHaVpnVE5qdStZb2NiMk04SzVYdTBRcWwrZWVsS3hmdWZD?=
 =?utf-8?B?WnVjTkFMdFBxd3VqK0ErTlF3QWdtTDZLdkhUY3pHOVBTUjRCN2xtUXRvQ3kz?=
 =?utf-8?B?VTZyczh6UWlMcTd4VnErZzZ6c0hWbjdFUmEyV01RNEg2aWRkN3poakdGNlYr?=
 =?utf-8?B?Z0Y3VnpGUlhUaEU5YnVyMUx0SHJCYU1XOGltdmRveDFaNUt3WkM3R3VweTlK?=
 =?utf-8?B?TUUrcGFNa0ovT0FkOVd5S3BFVjltcUt6aWVRODd1RU5rRWFOUUgwUktBV2Zp?=
 =?utf-8?B?YTYwdCtFMkRWcWZiSVIzRHJMQ01tcW9QSTU3dHFvd0E3ckkvcUcyRWVvRXRo?=
 =?utf-8?B?Qit4bmFlRkRBMGtnV2JPT2JydzhFbjRDYi9DRWp3dE5DZm1pOWhsdHRra0ZF?=
 =?utf-8?B?Rm5RbytycFJDbVA5dHlwRDFxUlRTMTZ0Q1hwZ1FPQmcwZXB4RGFaZUY4RlBj?=
 =?utf-8?B?Rm13d2ZKTEN6SXJZT1NDQ3hYMVVpendSWlVlRVc3YmlUbzEydUdwdStWaUwy?=
 =?utf-8?B?cWl1bDFnNzJLZnNhakVRZFl1ZFdWL21wRkVsNVFjNVYwZmJXTDdQQ2krNFNz?=
 =?utf-8?B?TjJjdTA3bEZPOFVtS3J2R2lxVHFYVEhya1RETmRvU1NTaWU3RDhtZEdhNUtv?=
 =?utf-8?B?eEJBaFFPQlJyUmtXNGxsdWpaL2Z0MHlMK1lESlFjMFQ2d3dvL0FVQ3c1c3pj?=
 =?utf-8?B?NXVQM2h5b0Y3SkYySDJ0MFZ5YWozY0ZQSnJ3Yzk5bTh4a0xmK0V4b044eEJD?=
 =?utf-8?B?T3pvM1c1c1o2ank0SGUwMTFZdTFiK1dTTHMyeW52bjRkSmZPemtPK1UzaFVT?=
 =?utf-8?B?ektQdWRjQzNFbXZ2a0Ryc29WcEJJUVR2UERvNWZ1MDlFTXZ6dTcxZm9XTlNx?=
 =?utf-8?B?QjFsYkkxK1dBTHFVME1kSkN1cjV0Q2NTVWhvK1hScmJHZTNnd1QvclBPSTZ3?=
 =?utf-8?B?cGJMNVJPOTZ2dk9Ca3J6anVOd3ViajZFWWVoY1hRL1pIWElncjAyelJOaDNO?=
 =?utf-8?B?UUZMb21KaGVxSUtMdGw2T0d0bG5laUF6eGI1NlFORlZIUGRXckNKcFZEM2lE?=
 =?utf-8?B?RlFablBlUE1WaUhzb3VFUVBZNVJPaml5QXRmZ0s3UlZRYkd6NzYybGFiZmhh?=
 =?utf-8?B?OGdjaXoxTXhYZEJGaXdBeUZDS3dkR2ZJRkxwR29DYmdlZThOTCtYbnpQOXJ1?=
 =?utf-8?B?blROYk9BVG5XV1ZIc1Uyc0o2MURaS0JlQmVVYi9mWnZkTHdOTFU1YkZvaEpP?=
 =?utf-8?B?a21DSTNMZUpqbVZPdjVsTjdJNXlxU0tTS0o5dExSSjNCUm1Da3FSQkpnMVYr?=
 =?utf-8?B?Q001N0hsQTJUV0MxM3IrSFUzaDd6RjFFa1lMYUdIYWx2R29rQnNVRkI2Qnh2?=
 =?utf-8?B?OTd2RnlUaEJlZ0cxbjNqOHg3RXZYcTkrdlNJc2ppS29uY2sxemZPa0NBNkZ1?=
 =?utf-8?B?NmZWTUcwYUFGODIrR2I5cTdmVCtjVWdoNlZrdE02QzhMUmNOQzNsTzMwKzZ1?=
 =?utf-8?Q?bXibacqJa95A2sL0G5bYGYIha?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5611.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4f001d4-ddc5-4dde-025b-08db3100a61f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2023 09:25:05.8648 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zEEr+rmOEP9isZ3P8iv8PgHrXYM1HpUx46ZhIKsbVqigg52v657Umu1r4R3zqEhbny3osMMlkRDD74VZupk4f2BWaE8otOeVCc780qHwRPg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5420
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680168310; x=1711704310;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZVU7HOjQfZEG2YGqFeXl2mU5yYWfSFSfX2PD+PGoBrs=;
 b=COsaXHZna57Vc+Wmbo0XTh9/wDnauWMgAc5VtGlk4BXt81Q7NmJVxIIB
 9zmIrHkV0IHTjkJWG4xWyYyUYOdmJO5ndMztP2oO0fQ7qUYvaNYdGFGV7
 xCp6AhKz5aL5AWX72wP+jVkRViph0jPWzE4OEQHAjERQVxxTCKS/Y8m1C
 5xBm4xKAtO4t74JcYEpkf7GhBo4QJ2hIJkpf6gGIVqNWyA/0kgz1K2LqH
 h1vvrrE/e2lUDBgO1aIVBT3iMe8LaAwb0bI8O9UV0U0iqU546jsR+35Pe
 jKv3EzoLuYa8yN/RNV6Rv3vkDLVwvYSS/B1YvoH63y58+apXSHBA4YJe/
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=COsaXHZn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix PTP pins verification
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Paul!

Thank you for reviewing my patch.

>> Please use the full line width of 75 characters per line.
Okay, will do.

>> Also, how did you test this?
As it was written in the commit message, the values of a new pin configuration are provided by a user. These values are defined in i40e_ptp_gpio_pin_state enum, however nothing prevents a user to provide malicious values that are out of the bounds for the given values of the enum. That can be exploited. My patch adds a check for the provided values to be inside the given range.

>> Would it be better to tell the user the wrong argument?
I am not sure this is correct to tell a user what of the provided values are incorrect due the reasons above.

Regards,
Staikov Andrii

-----Original Message-----
From: Paul Menzel <pmenzel@molgen.mpg.de> 
Sent: Thursday, March 30, 2023 9:29 AM
To: Staikov, Andrii <andrii.staikov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix PTP pins verification

Dear Andrii,


Am 30.03.23 um 09:17 schrieb Andrii Staikov:
> Fix PTP pins verification not to contain tainted arguments.
> As a new PTP pins configuration is provided by a user, it may contain 
> tainted arguments that are out of bounds for the list of possible 
> values that can lead to a potential security threat.
> Change pin's state name from 'invalid' to 'empty' for more 
> clarification.

Please use the full line width of 75 characters per line.

Also, how did you test this?

> Fixes: 1050713026a0 ("i40e: add support for PTP external 
> synchronization clock")
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_ptp.c | 16 ++++++++++++----
>   1 file changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c 
> b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> index c37abbb3cd06..78e7c705cd89 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> @@ -49,7 +49,7 @@ static struct ptp_pin_desc sdp_desc[] = {
>   
>   enum i40e_ptp_gpio_pin_state {
>   	end = -2,
> -	invalid,
> +	empty,
>   	off,
>   	in_A,
>   	in_B,
> @@ -1078,11 +1078,19 @@ static int i40e_ptp_set_pins(struct i40e_pf *pf,
>   	else if (pin_caps == CAN_DO_PINS)
>   		return 0;
>   
> -	if (pins->sdp3_2 == invalid)
> +	if ((pins->sdp3_2 < empty || pins->sdp3_2 > out_B) ||
> +	    (pins->sdp3_3 < empty || pins->sdp3_3 > out_B) ||
> +	    (pins->gpio_4 < empty || pins->gpio_4 > out_B)) {
> +		dev_warn(&pf->pdev->dev,
> +			 "The provided PTP configuration set contains meaningless values 
> +that may potentially pose a safety threat.\n");

Would it be better to tell the user the wrong argument?

> +		return -EPERM;
> +	}
> +
> +	if (pins->sdp3_2 == empty)
>   		pins->sdp3_2 = pf->ptp_pins->sdp3_2;
> -	if (pins->sdp3_3 == invalid)
> +	if (pins->sdp3_3 == empty)
>   		pins->sdp3_3 = pf->ptp_pins->sdp3_3;
> -	if (pins->gpio_4 == invalid)
> +	if (pins->gpio_4 == empty)
>   		pins->gpio_4 = pf->ptp_pins->gpio_4;
>   	while (i40e_ptp_pin_led_allowed_states[i].sdp3_2 != end) {
>   		if (pins->sdp3_2 == i40e_ptp_pin_led_allowed_states[i].sdp3_2 &&


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
