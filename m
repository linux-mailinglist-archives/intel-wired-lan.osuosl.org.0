Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2518779E170
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Sep 2023 10:05:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7CC0D409D0;
	Wed, 13 Sep 2023 08:05:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CC0D409D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694592329;
	bh=UTRS35QgQiWvESS7R3/nK2cBmm2b6u7qT/yR7OdjbZg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a69IoaDKPfjkzqWc281hoYqVfDaZawg2QDEr7djytfp0oa4wBCM1s5+r3xgWqdpTA
	 ULeaNgC6ij++VOLN7nkUW1iwP0fF8ZWCZ70tXrHqlILBa4cXFz6q8afJa9dVXDAIam
	 BiSEKUDmSOHN0I5A5dhM8GLB79SZtG8X1iqkk0pj0BTDDmz8bHmT1qlRMKLiOF9Ulm
	 LD4DNtg2m3QuDunY7x+eKxkUlZUnofLjV22XltBiOpxHIJIC20kkpymirBrH5x3FLD
	 EjCaNRrC+vO5d0FiJZMo5S3R47HsOYSm7OA0Aa3FGQyhaMN1BhKsKhyIwdzBY0Dc1y
	 QsQLgFFxaS8EA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kYO7PqCg1dbq; Wed, 13 Sep 2023 08:05:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DD4E408F4;
	Wed, 13 Sep 2023 08:05:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DD4E408F4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D6F71BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 08:05:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 51CDE8207E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 08:05:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51CDE8207E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jz182BalY0lX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Sep 2023 08:05:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9FFB58205E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 08:05:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FFB58205E
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="375923927"
X-IronPort-AV: E=Sophos;i="6.02,142,1688454000"; d="scan'208";a="375923927"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 01:05:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="990824771"
X-IronPort-AV: E=Sophos;i="6.02,142,1688454000"; d="scan'208";a="990824771"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 01:05:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 01:05:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 01:05:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 01:05:21 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 01:05:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bw9+yFR7cPtvDoQlCGvoniX9JZZ9TXhv4Tz8SABeUTAGfvIfP9s1Z/fwAUAh5DZVdk08Miq6NGaPHqq38/44lnHC0SnlqVoealjICszZ48OqF5rhWjYiEAHgHZVjZeEq8wEObaQB313JoLs7BNe9QD8YebrC3GXyRfI10PcX38H6LyQ51ed84lsmIJYpaxqU+3efUt+Frt6dHUeW8hBqVbYvgES3eJf9NWsByAgJ0Vf6vkeZcuZELv0sig1HhgQklm316Wqj5IqpJ4HnBNR3ORt4Cx0ThhmxJ9BHiMVoAYBaMCJKVtarmU1jlQxKinx5OVOMaYvf9YCKzq6DxJsD7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NZsFXNreibYdAw3oVHF8TEZUKTt7/TJEYnDin4kq1rc=;
 b=VgVBS4obmG4gA/qI4puLxsHFPgVYUPCb1lw4ArdgaeGlE8+3PS/2LcF1BgxI7V+hjDsuDfuuTq1mDkIe+buJs5cq1AvbINk/O37NG9RoE6njd/iOjyw58Bm0n47plrVGm3JDYMGfgyqZU5iYPo/+pBCIX5phx3FR0F27aaAFqriKVosuh14vifKKVh0kD0wiUMZMZwiqUFINOTIqh276DwWGOJmdCexXvAOfiDJWwmjvgbl47V6QrbR74DAQKcwwlRdokgMHZC0RDbcxeeCWbFwYciZvMUYSdLFN+GH4wMJmCkO08gjNsAT0zOXSz1PtKZHhM1g5DZ11iboG4xFh4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by MN6PR11MB8218.namprd11.prod.outlook.com (2603:10b6:208:47c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.35; Wed, 13 Sep
 2023 08:05:19 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::369a:9e50:215f:33a8]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::369a:9e50:215f:33a8%6]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 08:05:19 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 3/4] ice: Check CRC strip
 requirement for VLAN strip
Thread-Index: AQHZ4Px45Ce8+K3y2EqKiAC6F5y2S7AYb/og
Date: Wed, 13 Sep 2023 08:05:19 +0000
Message-ID: <BL0PR11MB3521111F8C8D1B5316957B408FF0A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230906195704.3651720-1-ahmed.zaki@intel.com>
 <20230906195704.3651720-4-ahmed.zaki@intel.com>
In-Reply-To: <20230906195704.3651720-4-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|MN6PR11MB8218:EE_
x-ms-office365-filtering-correlation-id: 8b514a62-65f6-4205-7a5e-08dbb4302bf7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mdy2D/LE9joW6LGycIWFIfziINwDypLq3Od1mBq7C5GiepJxgOZVgJXXGAROsQwJhEgXAH+WxcjuRapPrQMrfQwz4Q+vEdSozRG3NeCigQa35BHMTEFTMncFmmC7iM2dRHpv16L86njU4UZTmibqCKvyRuOA9y4lZsynyOcE/9CCl8NVTK4uPjG924yQXjp6R0zc3YaNEUI9mwH4wYGy0q5jtqwez1KogZMQLcrFKPuU0rkWgMKAUE3QU6jBxJ7cGY+DczH6CUS+HswEXbQU/PEim28/2H4bJV6+Pmq4ex/2jGzoCrhzzFrPBdEPZtIpzz7QVwQe7XtTaqPQ8tOn7KKZ+y6i6L0C4F8NBogDrqU5VXUFLjB5/U2m/9kz3s8AO2l5obCsHj5fOjxl9Q5edeS72wjiZk9zRSZLQ/Ti4pD8fkw4XIoSoHeLreOSwkBnfE+goHnXTz6AOeyn4gz3el3liExiCt6IMWehfJRgPegP+a+6qBL5cr5vHQTjls/Luf8oj0r+y8gC5otUhoPlvjcGN21CPs3Orn0Me0zpg3TU+ihWovocsXGta9P8j+gOZPm26Vas2i21GiiLKuQPcdGo6Mkjd981JKXWlCz//1ifURSAlKdy/dtW9Kpcz5vl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(396003)(376002)(39860400002)(366004)(1800799009)(451199024)(186009)(71200400001)(7696005)(53546011)(6506007)(5660300002)(110136005)(86362001)(38100700002)(38070700005)(55016003)(33656002)(122000001)(82960400001)(107886003)(9686003)(83380400001)(26005)(478600001)(76116006)(52536014)(8676002)(316002)(4326008)(8936002)(64756008)(2906002)(41300700001)(66946007)(66556008)(66476007)(66446008)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YP1w/DAib3tP2kQ31JLxon3FDq/ye+Dz4toWtyMrWcoO7TYxI3FSWut+oduc?=
 =?us-ascii?Q?K/r1e382mDd858XUvTlg0tfsXywlb9xYosVxA0UBw1zreDZ+Sh8nvL07Cl4+?=
 =?us-ascii?Q?wgpWoYb3qxLzQYocTUwnLLwiPUvSjkCGESDEhVvhvv8WwytgyH2Y3d3WDGwV?=
 =?us-ascii?Q?CQEAxpVVZ9SmQMro9yTvztA2AizwdGqBKvLtEbz1Kf/MR42r4HFdcDQPmAQn?=
 =?us-ascii?Q?YjMOdfAvp+8GliinOTHfeVo7FJGhTt3EDW5R7q5L5iiaL4GZniQL57lncAOT?=
 =?us-ascii?Q?odagZltu0OF2qvh6ztwLHHwR8/J9mF0q37CO75MLeEq6futn4tWvSvuoi73f?=
 =?us-ascii?Q?QJZ8I5mYigwXCdg0sqpniKa/DUqFyJ2OhrxaIXf06TfPYkrNdMcv2Gzn1JVD?=
 =?us-ascii?Q?0DhNgc5EWaq1IjjW+JUt+CzWHoyr6UVjyXsBKX4nXHdsvRvF5sHW3TnRs0sy?=
 =?us-ascii?Q?eA4DU4Egrx6TIby/A2V67nCupy1NiqmowTz7n8wi11pj/ITZMokS1OP/251i?=
 =?us-ascii?Q?PRQLn/rPpwsEJOA8MKmWkQOdVuxn6ZutUp/7OxZSN9P3h8QUFv7rvPTVuyle?=
 =?us-ascii?Q?sEGsGZ68DUkgrhj3FyaIMl2oElhM8pTC92KsxpQhjadKxX3/I/B4YYuPnkF4?=
 =?us-ascii?Q?v8hxzFhhbJaE0EtuP3jtxtftmFpSi6A7L3vnm9c0huC1Alb4pj6Q7m5zDdNm?=
 =?us-ascii?Q?9xyKGE+YrGJ70PZZICuRh4gBNOv0m04a/JLcib0xsbcBKav6QOhfHpNtK9k0?=
 =?us-ascii?Q?Fi6YsXwx4Pdhs1+Lhb/CHnjwMSHZe2LyuEeYd84+v47MSjPAH9Y9V6jBAdIN?=
 =?us-ascii?Q?YqYjPxTqHA4mf05uQebMmwsPTujml9MCFPSA/2f/lYpDYr7Ma1vD5KiQprPe?=
 =?us-ascii?Q?n5Fz6vOm4SF47AVl3HrwMMkv+RmbtdBwoHRWiXdQ7qG++UHoqwqgBJF5N+K7?=
 =?us-ascii?Q?wODQd0sKH3kjHMffPCOyTHKEPo9e6yXvKxk2+tMqsicCPJQ6vM67rrrnQILe?=
 =?us-ascii?Q?Ozd10xzTt868xA+rByXgK0ed3/Y6IRrj4FDqzu1F8O1vTBfhFYqA+vytlgHE?=
 =?us-ascii?Q?ImuVvB4k3H4+DGO8W9Eggr/2J9GGA86D5EEZfwylN2RXtI8edxAhIgABl/9g?=
 =?us-ascii?Q?cyPebRJhRHlOxt2ecfZW/iOqRsCI6/qeqt2wftrnuLhG2Y+E0yb0xit/AzrL?=
 =?us-ascii?Q?p/Ig2UNqZTEucry4X3T6uVUqfy2zoWGUE9ecMy8xIP7vnv6uPs0JV29mm0dO?=
 =?us-ascii?Q?gpT2R1RU53GRNdh1H4nNXYppH8k3cmWtX+7ZVfesWIf67pkLHPNGm4Ne+WrY?=
 =?us-ascii?Q?5tu4OeADlkG4e525jlU1TT5zG7flx8ZAFZhp5vCPMl9bEBUNxUCaRi3oVPa5?=
 =?us-ascii?Q?cE8I+Iss3a8ZSqkzf9Pj0HGHmf6QIgRbn/U9sz67AF6q7UT5X5+s3kJKU6Kp?=
 =?us-ascii?Q?Ti7C2ToiCziLtQ30PTkJh+YbTP3ozSaA8VAtgWWjaX234tUelbJpxd0z06N8?=
 =?us-ascii?Q?jW1hH85yIRoUdOwTn/Q8c5YoyagxLzLbhp4Y0n2iheLGuvz/l+cDIHA3X/qJ?=
 =?us-ascii?Q?vkTw83HAqme33+PaBSAexYZ7P4pAdu2/Z5/3wtD6yk6V8xLpLKic1JDIQP9L?=
 =?us-ascii?Q?Kw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b514a62-65f6-4205-7a5e-08dbb4302bf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2023 08:05:19.1727 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pDLV8MPkx1UTaBGwKhgeawHmP2P+SDVggonI0hiDEWOPsXW3Zr61zy+hZMnJphn9J3FgSBw30p7n6FTZebskeMNEPtxd9etMuDAaavgxbkc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8218
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694592322; x=1726128322;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ik0S5V9BsRnUClcUrtquheFxRrhGsVJQfe1T+DwOMRI=;
 b=lS2Ummj/UYmXFW3DZ6hFdE9drsONwiK45HV6kDHydDMDtwU9oeRs6b2V
 CoqIGWsBpR0+UE6UZrQBaTGGvelOpaYwVFrxhIwdr6i6xm+iNASADMap9
 qrtuiniCygk3EPEt+WYqhxFQbTyfqkN36hLHts384v0OhlUXgFCqSglmw
 ue9XTvR3ofXFoNtsRspQeFUqUK2Gko7SQQHQIDrjHih+VFYFIy4fhlvVe
 ok4ntQcR4qhKT4kCWhByl8EaWBLsOdI+QAiews29s3G7cIlp0CG+lMJmL
 i5qXGC/dvTQ9VSGMCW35Vb7gTOylI7VSxRGlDdkPGEULyVBnvFGwGf0hc
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lS2Ummj/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 3/4] ice: Check CRC strip
 requirement for VLAN strip
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
Cc: "Wang, Haiyue" <haiyue.wang@intel.com>, Paul Menzel <pmenzel@molgen.mpg.de>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ahmed Zaki
> Sent: Wednesday, September 6, 2023 9:57 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Wang, Haiyue <haiyue.wang@intel.com>; Paul Menzel
> <pmenzel@molgen.mpg.de>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 3/4] ice: Check CRC strip
> requirement for VLAN strip
> 
> From: Haiyue Wang <haiyue.wang@intel.com>
> 
> When VLAN strip is enabled, the CRC strip must not be disabled. And when
> the CRC strip is disabled, the VLAN strip should not be enabled.
> 
> The driver needs to check CRC strip disable setting parameter before
> configuring the Rx/Tx queues, otherwise, in current error handling, the already
> set Tx queue context doesn't roll back correctly, it will cause the Tx queue
> setup failure next time:
> "Failed to set LAN Tx queue context"
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  3 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 64 ++++++++++++++++---
>  2 files changed, 58 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> index 48fea6fa0362..31a082e8a827 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> @@ -123,6 +123,9 @@ struct ice_vf {

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
