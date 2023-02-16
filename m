Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D39699839
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 16:01:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42AC8611E4;
	Thu, 16 Feb 2023 15:01:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42AC8611E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676559711;
	bh=7ETvJpmLCIkcaaL0L1LmkbZ8xWnETy90m8tI0iRi8ng=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8UDn5jh4b4Wa2roGMbi/nxe1g/L4Xku3+gThPBqpRRHCbD0KLldvE0pfhKZyRs2Nq
	 7YHAWAkeNhXXamrBIIuUPB19UuoZF+7BYkDyyGXckg8YtWFObxNu18GJbMOjxwURR+
	 3r6e/e96v9x9xovpXSolXvnqSx7/jePmZR+lJkN+xQTGymmEM0q6s21VTe35m4ZGDv
	 V/CsgsKghiSuKc83iclSH0YVSMF1AG0SibQ8mnR/prj2B7e64U+4iShL+veXJW8RR0
	 TkjCVmdhLyS675xJFB7o6PT8O0FdS3YDNzIYnzv9Ha8zqnWq7tAWJ/4S6gCiT6HfW/
	 1rVOoGWEmKoqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vOKFMPFEtOHO; Thu, 16 Feb 2023 15:01:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C4A761203;
	Thu, 16 Feb 2023 15:01:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C4A761203
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B27B11BF5A5
 for <intel-wired-lan@osuosl.org>; Thu, 16 Feb 2023 15:01:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9641E60ACD
 for <intel-wired-lan@osuosl.org>; Thu, 16 Feb 2023 15:01:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9641E60ACD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X0dFD8AzDx2H for <intel-wired-lan@osuosl.org>;
 Thu, 16 Feb 2023 15:01:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C00E360A84
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C00E360A84
 for <intel-wired-lan@osuosl.org>; Thu, 16 Feb 2023 15:01:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="331731907"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="331731907"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 07:01:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="672177010"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="672177010"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 16 Feb 2023 07:01:34 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 07:01:34 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 07:01:34 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 16 Feb 2023 07:01:34 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 16 Feb 2023 07:01:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KVrjQTtmZpSQPsN2Ap/8C+VkYNe19EYel0LvBNlI0P/2t7Hl28iYbdfZyuCkVmYE+biBxSXIwGYMMV0lmVpldq4sQUSds+LeP4gxbSjqIw98SGnDpUMJQfe1NS6knv54/T2voj9xKpowNniErWQqIodvJa8aAzyfAEmizAR11MXdCJstxi3ckriSeuhzaZAYCxD0S8/rJTyODousx9XJ8GR3csfBP1uNmCt9DvywAiLnGiX5/bJWL1tNWblKn/jo9VEwpbEWbJHKkqSbzVTQRrl45ZWQU+1N8P6zCaNMsk4u9mALVMTondBDGZ1ZbjE+68QVOvzp87m0/KI4SzoZew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gFZN6Ff3Va+usIdg+n8GoXgQekp52ywy2wciqPKoRdI=;
 b=nroqk9AubLoJvgdtI+FL/tAOvjbl23jFrKcMYDUJDCEkdOpG10bh51VsRh/WREaQi3USh51tSE8igo38GPDZJn9Yyi2+R2x7B5/3iX/9pE14e6ep2qH1EDZ+S4wUhdqhyRudd1SOU7OOTonVBlxY/L4FjgBukzPSOBw0BmYlUlYY80Ny2u9m04kZb02U4Uu2UmoHa4MaVY0oPhrRQyP7o0TsHGE+Yzxxbxo4N9Bf92zDrBX4Vr1Ok87n4khkDLzkKCL5HWuA1eSHdjJ+hP0oqAAIWK/sxIUMiW7+R2YN1P9VtPfCR7SI0+NqFNUj9cNKVOwE1hffotX1UOsn4lk6/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4045.namprd11.prod.outlook.com (2603:10b6:208:135::27)
 by DS0PR11MB8206.namprd11.prod.outlook.com (2603:10b6:8:166::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.24; Thu, 16 Feb
 2023 15:01:32 +0000
Received: from MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::6b67:1c73:161e:9444]) by MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::6b67:1c73:161e:9444%7]) with mapi id 15.20.6086.024; Thu, 16 Feb 2023
 15:01:32 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Fix missing cleanup routine
 in the case of partial memory allocation
Thread-Index: AQHZP5m4vMjaekPyIkS9Tqd9oB2LEq7Rrxuw
Date: Thu, 16 Feb 2023 15:01:32 +0000
Message-ID: <MN2PR11MB404576D254D62BC78F97EF6EEAA09@MN2PR11MB4045.namprd11.prod.outlook.com>
References: <20230213104003.30413-1-martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <20230213104003.30413-1-martyna.szapar-mudlaw@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4045:EE_|DS0PR11MB8206:EE_
x-ms-office365-filtering-correlation-id: fdc3ebc4-b88f-4345-b5d5-08db102eb0b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QCa1cY/V+bFitbj8qFyfNS3YcfSG/6WxNH2BqkTtB+9sbBjfT8ep+VaDsR9e6MbDixcLjvMgdNDnanpFCZmTsry4zT+9Tmoto/5u3P3tnQrDmjOBuXUUN/eGqZEZ273hX6JSR4AiW9AWff/avxsOVY4ojyYX2y6nj4Yk84oIfwCeU/idUbkpzY6UaYng1DSwWUMNlXr+W9JAaLmQeEFNYy0904do1UaTMHwMLBbSBnRp+MrcTZVx9x62gFTJNTPXxgyM4PyzCOq38ZP+yU35qrWZKhLdeOn02VnpEjCS5h/3yiJ2iRhG3yxxYm7K85OvIwtBWckX2M7KAOV+rIUgPhvcxVl0e6i3LHeuMbOG7COqq0PWggyg2qRf6CxS1KYwqsoQGDEiPxLdx9WcIXtwtcLPzRX9CLUFSi1fYdsVQELxKHbokq1ljnPaGwhY4jwtm84LdXWaCW8D5DDwJs9y2ANKgrfraogmVWNHlSLj878Xzp9GZZQoY/dNY6YbNRQbmPTbJNxhYGgERLH5wt/pvq16eijTlyM7WJgtrmCLHBqsK/3xvfKa/bwRTJAWvf/iJAxV8NjAh4wp/+Qn0rDcT0FRd63nBrZjoKTP0Moh7iOU1LQVce542uD9fHOLSvoyPNHxDu2+xCFwl76HlLht8E6/B7wTL3TDguFjZM9UoakL5ol4dgynOvhoI8z095aN7ahpqXjJPAsrq8YNaO80ZQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(346002)(376002)(39860400002)(396003)(366004)(451199018)(38070700005)(6506007)(41300700001)(8676002)(4326008)(478600001)(64756008)(122000001)(2906002)(66476007)(66556008)(66446008)(9686003)(186003)(26005)(66946007)(76116006)(71200400001)(33656002)(83380400001)(54906003)(38100700002)(86362001)(82960400001)(55016003)(7696005)(4744005)(52536014)(110136005)(316002)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3zkLqzmqJky5UVJy7aI+X2QopfxXIPUzZumMTI3x0Q/eG48IArKVzh5v/nx2?=
 =?us-ascii?Q?s2TbEXuil44uPcpwmbtM0rJqGnifLabVe4ECAWYyTT8l94RDOOflaOMBzwXW?=
 =?us-ascii?Q?gLwMZ8YPaczWKRUuEl1GXaVZOQFs4EryeFOQgMmVzpTXyY3yhdHuOii09ZOy?=
 =?us-ascii?Q?VYBK6PBqmXbIq4IgqJdmoi+DfQWZIY5HUvbQ0sFz5osTH4CySBOTjHLpFFsZ?=
 =?us-ascii?Q?erca1iqZ41pxk7PSLTQA+NN0zgmwmFipa8Hgxgx+qXcpIY0jz++eNEYqNzSU?=
 =?us-ascii?Q?48IHw6sKJiPmaoty0hA7Kes7YMjtDYjAP1ITdEHMnQFXBSXEOkkZo+nJ5TGV?=
 =?us-ascii?Q?Q0D9dAjPRq0wERY7pDCcbPO1Ry1ZJbU7MHSP5Wa/X+uWI4uSTCCitkpNB6Ve?=
 =?us-ascii?Q?5RcMUna9efc5KXMUzVPyI6P3gyJXPE6lsYuI+2V0RB/HC+pypHIDqfFZFwUn?=
 =?us-ascii?Q?h19HAhOXKursG+CX+EIIspVUp9HVsDGpK8mnEMLtSjPWRgTOF9BEXuM+zO9e?=
 =?us-ascii?Q?/qag/iqy1QWlGvktvoMm7D5wMZ4owXgvfE8rMMTfTWpMHzI9EMTJmARJ0Lyv?=
 =?us-ascii?Q?P3/4L7+nlD2daY5lETcjvGfsihWvn4d5pjwl/BCKc8XGdNoGPZ1anEc4+eLM?=
 =?us-ascii?Q?zBTmuYXeEC8p3tIDVXcg4dIYg96mn5kP4KOUmWlFxRahtRaMa0KcLAbWE5qV?=
 =?us-ascii?Q?anyiEc9IJKDuOgCgUx5EJnVik50D2tQ4H0gJ7euzPeCOrALr2fF+6AEIrzEQ?=
 =?us-ascii?Q?iHnRiYTqxuJMIQLSs9RhDavjUmwJXN1tUJbsXrqCkxt/IrAHGAKdEskD5+Re?=
 =?us-ascii?Q?oI0C1OaSoupR21sjB6NYk4cUT4fyB06lgI1cqBzHtrDIs4XfzoCHX847xvvk?=
 =?us-ascii?Q?8DZbkYBr+aX4dBuVmGR0BILd80/0NQVd6LkRFeznMUMyMfJFsZYo4gauSie4?=
 =?us-ascii?Q?mkpmJwssomnjIx1eenXsi3TA5PGsE7aZD0rJvXwvkU2mjF2SHs5dClJq0Oy2?=
 =?us-ascii?Q?Ip9P/TLEF+m59U1QcIJQcBJ4A7B4WDVnzom+xqKoyJfa19LUwlTbQ+L4MtCo?=
 =?us-ascii?Q?v4LX6VIEUg2JOOmimEufWhWWrk/xV8nCRLpJsh55DxHjRAq5FEn0LwLAvHwH?=
 =?us-ascii?Q?SP/9PjUowtIL6zsgm06gDawQs1bxYcjzQOmB4YYLmlsXBRwP49X+yjmMEV7Z?=
 =?us-ascii?Q?uWVJNhQionztAT+uG0F0CkM8NgaBduAIZxzYiEP7Icx7fhPKb/Qv08iNCEl1?=
 =?us-ascii?Q?E2g7xsKru/XGfM2r9imGsKv0SA8TXiN+tV6pvYiU4qY2aP78vm3EGgY+OxV8?=
 =?us-ascii?Q?4nWAVzzfWb+Zk74IUjM6UumvLBdafc1ROgzDwwdZri/DKPj1nXHRbJA0DK3I?=
 =?us-ascii?Q?A4QkYxOAvBdVioMyo8blr3c6KdjUMbZItd/8z4NnLgX8kgfCY0enT7hbPOHv?=
 =?us-ascii?Q?iPlSHRIZgDuUcmj1NkiQJUB+roXdObGf067vROJ006OfqcZjzxSFVHKiVJHr?=
 =?us-ascii?Q?p3TOL0F/xcrW94RlUZzqaD65+B2Q1+nu2bTIqmnhpRitzy97okqHsrgw2Cnc?=
 =?us-ascii?Q?vzqE6kcPy3PmWMNg62O7/2er0B+aHLF/BSEFf01I?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdc3ebc4-b88f-4345-b5d5-08db102eb0b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2023 15:01:32.1801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2aYeMD/fklaRG4xorXTLQhAWtIp6TDH4Y9ooN/eE0clw7tlrpWKIG8wPGWhLdJZHOzXyCKA09yP6f/SvR+Gf+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8206
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676559704; x=1708095704;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gFZN6Ff3Va+usIdg+n8GoXgQekp52ywy2wciqPKoRdI=;
 b=aDhTi9GEWH9BmReuLMpETLBOhjkG/IYGk8A6IJ9kd00ZaNMjwLBety5n
 7ixyoxiqAvfI6kR8Ir7CgATWEEgyJ1iKoDoof7oFam9ID+xtu5m+26KTU
 sIBtwOvXlZ4MHc/flY/nDTFYn5RVYwcTAjP2jV9naOeL4IsyzlJ5OaVaT
 KLA/u70uk0OOofgNj6n7bqKCtyHBNJPmYq5ShCjy42hiHhNLOfZ+PWP1X
 yKa4925NSl1pDL/p9husYT5CKAhLRJKDiJTZMFmzwA3Cq/b/AduyI3Kf1
 VAQ8Mvfd+jhKzCtgIuuVQYTaxDcM3q397G7fubMlLY1Mj5u/LjJcROIHq
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aDhTi9GE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix missing cleanup routine
 in the case of partial memory allocation
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
Cc: "Nagraj, Shravan" <shravan.nagraj@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Martyna Szapar-Mudlaw
>Sent: 13 February 2023 16:10
>To: intel-wired-lan@osuosl.org
>Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
>Subject: [Intel-wired-lan] [PATCH net] ice: Fix missing cleanup routine in the
>case of partial memory allocation
>
>Add missing memory free in the case of partial memory allocation in the loop
>in ice_realloc_zc_buf function.
>
>Fixes: 7e753eb675f0 ("ice: Fix DMA mappings leak")
>Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-
>mudlaw@linux.intel.com>
>Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_xsk.c | 10 +++++++++-
> 1 file changed, 9 insertions(+), 1 deletion(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
