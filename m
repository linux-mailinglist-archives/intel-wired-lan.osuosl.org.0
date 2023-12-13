Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A3A810875
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 03:58:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BA71405A0;
	Wed, 13 Dec 2023 02:58:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BA71405A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702436313;
	bh=BwkBSggpQxpFaP+Gj+IBKoPTtdOQji3aTF33S8u9L7A=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yE3PlIjvchCkZ9d2FWLpytR5SDiz6f0meDBgsz3tRhn2rr6+tIo0IfuDKpx5pNicw
	 Nhx47FFNBeHBiJdyxwx+z9e7Z/bB1UmnKBNj7eA8kO1N/gSHuIdRilaIexct0axDfW
	 jI+sMs0rDSFIhifvZb855g5JpVM8irJHX5i/RZyXEbepfN9pn5yuAaoN05GKKhADk6
	 rpgxLk883KJC+oiL5XXSg99vCxI6PoUuVele+srsHsNgioZzqMKUMlRefHsc55mKLP
	 ice+DVuN6RuqjhVxdAJsGmhN0PqzhnQGz6H7m9MeXvwF85flLyuwEco8GMDDdI5S53
	 s5Cm5wIqW0QAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2o4DBh1s8e-7; Wed, 13 Dec 2023 02:58:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 75A2A404B1;
	Wed, 13 Dec 2023 02:58:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75A2A404B1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC7381BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 02:58:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7E39E41B97
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 02:58:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E39E41B97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uJsZcFfYh7Fm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 02:58:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B402F41B92
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 02:58:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B402F41B92
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="2077850"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; 
   d="scan'208";a="2077850"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 18:58:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="947019232"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="947019232"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2023 18:58:16 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Dec 2023 18:58:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Dec 2023 18:58:16 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Dec 2023 18:58:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eDe5nKFJbDCKctj2FlkUDji59EJr8hU5aC7gnMYwf4LNmDV6kAsfwEsZ3ZMyZPus8aSNM1I2dFXnIyzLjAUdTmwFcv0X1tSbH9/WdbCrzt9Zy5T5DGeI/+dDchvXtV2XBvpULE+RfXeAHUON0gTZ/BqjBRjsKM5XPG18Rqp+hsLeFBF39n6Ttog7IpunShRIxoxyYUYcjeSoi8R8fGDCNMnuyhhqI9xp7zRuF+f+2yzYcyF9ey/D6EcUggRoJ6LR92lxG0R8Bb1/qgnEDbR4GW6QVJl20H/uXp6BGIR/OYlaY2sQvSb/QHWnZsxkcRImHgWmdo5I7a3BbvuIU+uzsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/SxqETwqQkMmSIWPGeNvzMuLtqIgbGrFty9Lj5noLNg=;
 b=byLv8R55bDPoiQyfWMHCabSmu50m+CP+fi3ZXEGzqd0V58MyTsA6RDqRPzbdVWMnOrxXbDJp/E5CJ2Q/uHPULfCtwT3QZ1h++e30z1VDp7zBEqVwSAz17x/Sc+SiwwyIPRGM9+JdDR0ABiGT9UM3cEscZc3zGtHgTlix5ghuK4zniH0mz1FmGTB4HjIJ13CQefE4GMadl7pfWdm1renqNkSVC2ezFgAgJqQG/3+LCR2bD1uXsUsqZDITjPJThHIi3eS43a7jFoUV3f6+jEEPIh71LUyML2bE6EfWG2+cOqCsvzyEVOG2j/ZRtrETXaGti2CoUxtQEoMOeb0fZ4JTvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SJ2PR11MB8451.namprd11.prod.outlook.com (2603:10b6:a03:56e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 02:58:02 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7068.031; Wed, 13 Dec 2023
 02:58:02 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 06/15] ice: field prep
 conversion
Thread-Index: AQHaJ+AOBLXnEw/qzUyVy6KsiCN/M7CmifGw
Date: Wed, 13 Dec 2023 02:58:01 +0000
Message-ID: <BL0PR11MB3122DE794012D27B44C02A5EBD8DA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
 <20231206010114.2259388-7-jesse.brandeburg@intel.com>
In-Reply-To: <20231206010114.2259388-7-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SJ2PR11MB8451:EE_
x-ms-office365-filtering-correlation-id: 45646ea9-e490-4149-98d1-08dbfb875221
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kAJFh2aL6kKVNKcdAt1HbC0nzIvkBriISEMf/5tQ/n6me9sU4XLKTYAWQbr/56T/BqZL4DHuXaBNAW8aEERo/mhlYG0PNfYmdxixHs0OYd6F3SO6z+R0lR1r4oagZWPg0iXoCkjyKHVrn23nfO5TspEiV6RV7SBeXp9msL6c/spQfgD2eC16OIZFEJXnX4oLvLAj+gO8OnWgl8SUKPm2dWRp6WkCa4Y8HfuPMaiNvJaOsS8kZCgOXnm8Ko3XvCehRrcTe5mMatmV073AqzMuAA/TZH62lkUXWYuf5c2p2IT/dZznsjCt4FD+4ittSUgf4cpveySJYYOL94C+sEMcKYZ20DYIoXSRsTWdXuKLtmqZeJNUAWqgI2tDcObPen/Hw8RzTO/XF1zzu5lLtVAI4Xl8nri29zSmlqejqkddqM1P7WL1Z5KQEu2Pmhf8Q5u/tNlpoyLi1z28XTWpzixI2XUB6fTYmQ9syq2lyLc9B4TbZIhZRAKKsoQ71N4Sj7dYDNAdrdZOwAI/FFzwf+WYlS0wys37HK4IgX6sur0xOk+zk4gpvFPp1qB2YIXD0HKn1THqoe26StssL2ZOH7ocOFGWSW4NWl4Byz5te5nsukc5+1lxn8KkAAtCM6d1x1aq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(396003)(346002)(136003)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(8676002)(8936002)(2906002)(4326008)(52536014)(316002)(5660300002)(55016003)(66476007)(76116006)(66556008)(110136005)(66946007)(64756008)(66446008)(54906003)(478600001)(38070700009)(26005)(6506007)(7696005)(53546011)(41300700001)(9686003)(71200400001)(82960400001)(83380400001)(33656002)(86362001)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2aZz/PUZRqsh7ERvV8NB68SZUYFVdXm320BYunua+xThNPtv5G0uqGh8wX1a?=
 =?us-ascii?Q?kZComfRtiruHQUh/9bQE8kNhAefZmmMBIFjaLYXBpaunKgdiVLtvkW7RJTh3?=
 =?us-ascii?Q?REK08m0J53fc+ONP4G3o4DKQSxiXrtOPutqYJN2Ix0GbJestrblK6EAtS3ED?=
 =?us-ascii?Q?cWdin0yTAyJUsJX0inI5vMsD7+N/2syMkbxdxunGUgBOvm+Q7jKlrSY9Zv5B?=
 =?us-ascii?Q?Asd3rN2+Fsy61GWhTh0neLX1nhgHXgjnX2l7naqOoRRY41tjb5wZRZiEYakn?=
 =?us-ascii?Q?D9fZH3TU4uc9i+ArYdHjgyk4oQXfGbbHVSNr5KTzB5XXGago+tQmOAs6B9qL?=
 =?us-ascii?Q?ca3bdlzeczrVncYA3J8Tr1VDGIi99U1MaTIiTeGLWN/TMCvpXQu+r9itu64k?=
 =?us-ascii?Q?RoW7wSZgVDvXHzym9Gk/6GWzlRCgpA/A5plYh6gl36S1rrK/Lyhg4z2e5C2N?=
 =?us-ascii?Q?eq/QU3EGCxy/pTXb/4iD9DAl8wnatjsGYsDfjlwIpkMG88vqcNpt2B0uJEdG?=
 =?us-ascii?Q?Mws/GkxCXjOuP8JIoZcJJ66GMtDijbFzXDAiMux2wjZtv5+ahcgxQ8aIbnVp?=
 =?us-ascii?Q?FmIV7dcCIj1+YdkKPyq+hqRlQleeImjeaaxjHUoAje2ywR4k+cZ2gqP34NLG?=
 =?us-ascii?Q?wAyGjC7q+wXYa5CHAL92/b89GS8Sj78xEhYnxgvF+iTZUd71J1ffamgRPFkt?=
 =?us-ascii?Q?NxSnifPvF1XzELyr+nYQehKj4zvOA6iI4MX5ZpY7uMhoYixYSZ99as7Y8DiO?=
 =?us-ascii?Q?2PMQwrxNRcynvnaa3xfNj667IwKwRQ3CO7HT8ZN4vsVuS0KMcEqsNaLryxSw?=
 =?us-ascii?Q?U7N5EDLo+ytfRzy9s2untNH9IsmeaRFSMfOwnkrqBycyuSEJ9VVnvVMqa4Q6?=
 =?us-ascii?Q?cezrumXO++et7E52y8YC72Z3LFZOmXhMXgnyk127z5YVSqOTC+AoyGi+PYy3?=
 =?us-ascii?Q?qFOpyzUnHZUfuhWFqx6rBImgjrPaNg0e53Kqsh0z4uakJvcO/UtId+IanOQl?=
 =?us-ascii?Q?OU9WnZhWF8U+WZit3bAEB/vOC8lxw/QZF2gz+u4SS+Y6V7VvxXAhWy1t1Tez?=
 =?us-ascii?Q?d+x6X/hgObboK7Y0oYxKN04t/17Al03iPVtR7gN/rOzVVQd4yoLt/KggMd2d?=
 =?us-ascii?Q?JEmR3xjAIt+RV6Gkuh+AdJSb++Coqz36EOg7mpPzPbTktz74z0Rse77mJi6T?=
 =?us-ascii?Q?uoj0uY68/LqCXIpa9MDsz7BMJd2nPHhmZKsLHIc7Z9SANjgifwx2Jsmjs/Fg?=
 =?us-ascii?Q?ZdLBpsOx7Xwx4MVhHToZa+wiJBGMVgqkpRbpyKYiRHkd0N3rUChI3pXHBA4I?=
 =?us-ascii?Q?zBVgsXbhQY8FYAU6Ah1jywXE8hs1FhXxT9MBX+wpCubthRpJFTGQo5pkkq4n?=
 =?us-ascii?Q?l0jTD+6DC65+TOJNr4lV/+o+T28gFOKKOBPxkxdmSi6QxNMPU/N44MtMZ0Br?=
 =?us-ascii?Q?Z5YeFug2BS3Yddcw9m2GSmEID+ONzkN6nwG8ZlH8KmcT3shHdNuXsw6xIzZC?=
 =?us-ascii?Q?3wyOMvU0m59BNpFn/V1J5vP62xhKoL7VObmffv5sNPitJ7F9VBeNclA1kCRZ?=
 =?us-ascii?Q?CL9em7kwdaA1do6sQzzyn2tgPIJyi7nq74lXn15NcByAGaJiw2tj7fyatLw5?=
 =?us-ascii?Q?BQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45646ea9-e490-4149-98d1-08dbfb875221
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2023 02:58:02.0076 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yWZ/+n7p5m+VE/qYAQrRUxc4SXtNlkYQNhrKx8/VcNHobMRB4CySCgkoqNYH16gvdz85J1CzrwdrgqrEKQXDt9t6B9R4mnutKSjuUtcaJV+MEO2wJQXqP768puTEtu5Q
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8451
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702436297; x=1733972297;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=htTn1jmwCz9CXaYdASMSFig69mifFvr9KvMsa+x2aYU=;
 b=mn14ko7TAfYBx3F77JwXmrZAoTVkJ9l9ZL76q+Bjto3YcUU/AeYkM1Rc
 aUhsf4vCgxKoUSWiyqcbFK0KpCeFT8//nYUpoFuPiwHEzfvHFq1LnmCG4
 n3+3RGbM7JzOQAYIp0lh9Fb8K0aUzJzIve9Z27XOu6JgyjYhZeM8GsZSU
 cppR8zvE0HOQmsSIvN34mESItSHXty13ChB4engH8rebuSAwHayA7LAa9
 LuNEUDcVDQnycuxpASrWsnn30PPwqxYD8a/IELK6F6nDWa3bJGGBgBglt
 ijb51CLYw3Xjhl8xLhATiYasss5pJ+DGcudH09DVGcaYI15PtYhF+JU4A
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mn14ko7T
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 06/15] ice: field prep
 conversion
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
 Jesse" <jesse.brandeburg@intel.com>, Julia Lawall <Julia.Lawall@inria.fr>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "marcin.szycik@linux.intel.com" <marcin.szycik@linux.intel.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse Brandeburg
> Sent: Wednesday, December 6, 2023 6:31 AM
>  To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Julia Lawall <Julia.Lawall@inria.fr>; Lobakin, Aleksander <aleksander.lobakin@intel.com>; marcin.szycik@linux.intel.com; horms@kernel.org; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 06/15] ice: field prep conversion
>
> Refactor ice driver to use FIELD_PREP(), which reduces lines of code
> and adds clarity of intent.
>
> This code was generated by the following coccinelle/spatch script and
> then manually repaired.
>
> Several places I changed to OR into a single variable with |= instead of
> using a multi-line statement with trailing OR operators, as it
> (subjectively) makes the code clearer.
>
> A local variable vmvf_and_timeout was created and used to avoid multiple
> logical ORs being __le16 converted, which shortened some lines and makes
> the code cleaner.
>
> Also clean up a couple of places where conversions were made to have the
> code read more clearly/consistently.
>
> @prep2@
> constant shift,mask;
> type T;
> expression a;
> @@
> -(((T)(a) << shift) & mask)
> +FIELD_PREP(mask, a)
>
> @prep@
> constant shift,mask;
> type T;
> expression a;
> @@
> -((T)((a) << shift) & mask)
> +FIELD_PREP(mask, a)
>
> Cc: Julia Lawall <Julia.Lawall@inria.fr>
> CC: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v2: added a couple more preps, some code cleanups found when looking for
> le32_set/encode opportunities.
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c     | 20 ++---
>  drivers/net/ethernet/intel/ice/ice_common.c   | 35 ++++-----
>  drivers/net/ethernet/intel/ice/ice_dcb.c      |  3 +-
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |  2 +-
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  |  4 +-
>  drivers/net/ethernet/intel/ice/ice_fdir.c     | 69 ++++++-----------
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    |  8 +-
>  drivers/net/ethernet/intel/ice/ice_flow.c     |  2 +-
>  drivers/net/ethernet/intel/ice/ice_lag.c      |  7 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 52 +++++--------
>  drivers/net/ethernet/intel/ice/ice_ptp.c      |  9 +--
>  drivers/net/ethernet/intel/ice/ice_sriov.c    | 38 ++++------
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 75 +++++++++----------
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |  6 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |  8 +-
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  2 +-
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 25 +++----
>  17 files changed, 147 insertions(+), 218 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
