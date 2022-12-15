Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C3464E0DA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Dec 2022 19:31:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8611841B42;
	Thu, 15 Dec 2022 18:31:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8611841B42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671129104;
	bh=y8n4UmUXzcJmC12jlgMsZ42uWozQiacfo4iqWK7XDKY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aFqxQhKq8aPMYag1TG3IDxXW/VP1VFwj0l0jJFW9ypEFxkUugU73+u9UaAe/KAVcZ
	 DXWpwtNOJiEAdXGzJ+kM6Q0M2WAwhEt/FH+/fZxL3teiCt4uOy6jsZ6Ya8hxXipuS+
	 8wen3ljA6xvRCA8aai3zjKV9BM4tpXD15UmQF0reQusfTbDAO9kK03AoFifRArNGor
	 mYRiYXm/d7HMWqjdhZH4b4oFvQGNwUz3T3VH+TXQeu2QMrUzbjorl4O6OKAZ6JhWu5
	 ql0cTf8CStwnepQZoIDq2E8cJJylRZ5G0zPDd+VnNq8fkukvtqE6Dmdd2R1mxCX0IG
	 t7ORvy8ciZc7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 113prMHhsqmM; Thu, 15 Dec 2022 18:31:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43E0B41B2C;
	Thu, 15 Dec 2022 18:31:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43E0B41B2C
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 568FB1BF334
 for <intel-wired-lan@osuosl.org>; Thu, 15 Dec 2022 18:31:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3B7F0403E2
 for <intel-wired-lan@osuosl.org>; Thu, 15 Dec 2022 18:31:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B7F0403E2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d-kVPRO6mqYk for <intel-wired-lan@osuosl.org>;
 Thu, 15 Dec 2022 18:31:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79CE24029B
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 79CE24029B
 for <intel-wired-lan@osuosl.org>; Thu, 15 Dec 2022 18:31:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="383095980"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="383095980"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 10:31:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="823819954"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="823819954"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 15 Dec 2022 10:31:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 10:31:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 10:31:36 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 15 Dec 2022 10:31:36 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 15 Dec 2022 10:31:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oWmA+QtHM/Eg9yHbIMfudlr28K4xGMLQz/OgMdYVrSU3CMPpRVHDegPDXMlz5phoZyFFk3hRWRBs52tqx8qmawSBh6Q9n48mm1m5k2heGnJGYQ6hl/jhO8Y9P8XEl32BPmUOjonWCMOiVvBP1cfc8wykF14oDytkaBOHXBkKGWljC1rZHwFbZcGYp1RALOB0aM/YViXuY7f42mlEhFSpH/3nQKi+C/i8xlpl8Onh4PcFPhnPn5p61hAOdMmy7rk4auOnHLq57EsuqANKtat0vVKcCczZqv4f97HdLF2ojAuJQLe3ee0Ki2y/tlbDVRvkA1Z8vDCAL/szX0HeZtwoGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EIaESXAzeYyYBkr5bpE8SoenIu4mk2/h/JF4xI7yqIA=;
 b=Ex0RwfJId2+Li/sWNXCQP2tGd0xH0vUq/ixzEZ5UJ/4NTRf+NUACFU1/gcoZhWpMcYNQUrBVBfAkiiTcOjr8Ss9gzhwkXtpF1Mqo7mVksapTZgURs7Ncyyq3VZRgW0bjAGpZXY7i+rhxlx3JhpHtCqod3yN8Y+s7mNPA3KlJvg+Ysgbxhkt2QigBI+s+sQ8CL3C2RvHFIu+zVy6d58CJI+fe7sDUpwtEAv/NTeArLfoZKGHelXIVpavF+MWyB2JzRUAz9hnObbD+K373FFAW4S7wyZVzs8oZlIl/RP/pnBPYPMGfCYUal4ThpSYTcaObaSwsMGODwyJ7VLLnFyHBUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5082.namprd11.prod.outlook.com (2603:10b6:806:115::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.12; Thu, 15 Dec
 2022 18:31:34 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5924.011; Thu, 15 Dec 2022
 18:31:34 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>
Thread-Topic: [PATCH net-next v1] igc: Add qbv_config_change_errors counter
Thread-Index: AQHZEDc6ZrwtgdMiY0uEw5PW3HH7CK5vRh/Q
Date: Thu, 15 Dec 2022 18:31:34 +0000
Message-ID: <SN6PR11MB322946431E494ADB988E4E89C6E19@SN6PR11MB3229.namprd11.prod.outlook.com>
References: <20221215033911.18152-1-muhammad.husaini.zulkifli@intel.com>
In-Reply-To: <20221215033911.18152-1-muhammad.husaini.zulkifli@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3229:EE_|SA2PR11MB5082:EE_
x-ms-office365-filtering-correlation-id: 46082cb6-ea41-402f-63b4-08dadeca9855
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MsndhjjLtum394X1jEOejIZ3/x9es9xKoFANZnT55IdsmRfJgYd9ks2w3noLGnfPwsb8P5kxqAOZipfUxYoQkz344BniCDSfm6az3GtjFJuxueCJAyEp2dp0c3AOAandDtFtWIVvIgLQzGSu+2OTVQWRyDqnrZib6VZWMCFTHBH30pkwIm4H80W7nBrQANfCIjtxS7MqDAQMHb11wyEpFilUexBN4N4BlrBga5GLwLT7EuyeGLMeHKzYOCNurhnxTNxrBuaCM+9Xsr8+TAx5ivH7aCehbiROqTBPZeOXNbSq09Nj1LFBwzdZw79+sUKdzVjZp5+dplR1q0C6qi6L3JuJGuvGIbZQVenxSJkuBQMse0Fl+2fBW5uPl/ge/fHX+XWFoq/rjKnqe4KE6M6rg2d/duQt3vz6xUjb6t/FsTtabbgjVtbDBr5m547V8pi2RKVJmFGIC957IipxT1ioJEVT8C/AwIwisobAoDH9Go2rOO7iFY7uzVWdupa6zyoxMJEz5W4p/pJxkPYz0Pz9vEts/Mkhf2eQ9LXXQU3GoJjyovuzqMK++j3WUHiOEIZGUmI17RtK2VEs0v9lS2EbFHzBRPkviFfml6iOoeE5QIULi2F4ixRazXv4HPnB5CGb67Ty69TfeouMZrm6+GqrG77Pc5HLB5erveqGVc8kWNLwiU+lLJwP8Iqm/UqzvR4ivkPehFGe/hzfPvjM0L4YzQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(396003)(136003)(376002)(39860400002)(451199015)(478600001)(316002)(2906002)(6636002)(33656002)(71200400001)(110136005)(83380400001)(122000001)(38100700002)(82960400001)(55016003)(86362001)(186003)(38070700005)(53546011)(7696005)(26005)(6506007)(9686003)(8676002)(5660300002)(66446008)(64756008)(4326008)(66476007)(66556008)(76116006)(66946007)(4744005)(41300700001)(52536014)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EuzT0s8mMFs+ZMmNwuOmMCITsVgli7El1oGQZHVQgr79yleo9xLCXexNAXgy?=
 =?us-ascii?Q?dVr/e7S8V8bnBxj4badnXYS74X8toaC+nWqg5eXGlyP4G2UaDwZT0pqn95A2?=
 =?us-ascii?Q?59f5ThRHm07HF+F/iemvXrs8D05uxlebFuyXHoz6FopKRkaAWbXNUKawm2Ba?=
 =?us-ascii?Q?JHpJpQBpeHp2s1GddWC71ae9fP12GsP4iKzmAT0E0tnG8bfPxh9LfkIJymc3?=
 =?us-ascii?Q?3JoeTQf0uyMFhQUOxqExI2I/+Yl5aSc6k36WfRQ6aZ+WdNgUxRQO5r8Z0sZq?=
 =?us-ascii?Q?onVP4rg71qBYQfb3+PU1RJDdD6mK6tO++q+V9Fwe3W+jqlJTRTCDOiC/XqOW?=
 =?us-ascii?Q?IGpfac4QiThx2FWypmWeftU1m60luhDv6dLTRYi/xXEDQOzl2GBKnzpbBjcN?=
 =?us-ascii?Q?A2XQXhVtqs1oFMk36j6vJ/Kx/+Rv9VNoPDvPD/afEuUA4YCxH+B3a2Sf3ZTz?=
 =?us-ascii?Q?RhfvH0X6UQC8ORnAdSCy+tXqkQkKC2pxSGpLXeP9Tp/N6T4z/tZ2ogKbve8X?=
 =?us-ascii?Q?DXhOiEDk+8A3GmLUDQzANcwlgLh+WSmKDa2Ou4d/+eOB4dE2c9oS68IREm2g?=
 =?us-ascii?Q?hy8CgX3S5oahnav8dhUBG42DVfGX08lPYoIB0sKuPkgJIYffezQFJff+Sbgb?=
 =?us-ascii?Q?uvLwhBOIRpSvnHh/QJrBBNO9+PFzVe0BdzoYMfVLBZRQIDic4fdviaVTCalV?=
 =?us-ascii?Q?DZ9zD6ptYwtoixttkqKlE2o84AyhZGP8M4kBHBORzdGcRLEkS+8Gd20O+xZX?=
 =?us-ascii?Q?bjeXOOLaesNecf9j0Ep2nfksaVe/fGYD7X7DWAQC4jH/34KviChDxaNOv2hV?=
 =?us-ascii?Q?4EIvOC12cP6YVRakKm4s5TCNABKvD22JcvU2tQOkLMPDK1XfygQpvlKxSpw9?=
 =?us-ascii?Q?EIzPZUANcp0n73QXB26usAPx3tBR6ps26LCym6xbP6+w6nfJutPL5Y+0MTEU?=
 =?us-ascii?Q?WcOdQGehVkOQHOMLKd8MVgwN8UwDuLjjEXeAnxWouT0GP7LxanB0FCkLQybZ?=
 =?us-ascii?Q?gfwRfvssbyrm6TSXE97HEdiiR3uO+0BygusJIKS7Yt9ogycoEH+mZH2spiQD?=
 =?us-ascii?Q?kIQl2ETGPVqmyHzmRfpf/TQAboS57hlSd9x6fhmaGaDe8du3Hl/iJzrM/hPJ?=
 =?us-ascii?Q?v+Gz6buoI01uorYRZGtwwmpZ0z8BT6CIlDUQX6g3qUmzqZJ5xNjxNhVXJVg5?=
 =?us-ascii?Q?nk1NSn9Lcy+Cm/XrsZiuJE306pQL6jtiGaHadXVelFrdDgUzacwFv3oz1GP4?=
 =?us-ascii?Q?WyVD4woYkbYKEMqA728+WQh2swGcu46kY2ML9NFgoTf6V5D2G1d2JDUjamb0?=
 =?us-ascii?Q?1uTCuBpnW/5G8/X0KA9zF96F+fZvPsSfnD8moYjyKx/ZBjKJMkGt+o4/0acq?=
 =?us-ascii?Q?eygOCKYlLis/31Ygaj7p9kcjrxzj8tvv51VqcRvbTeN9nnoAuJsmHvB4dnw4?=
 =?us-ascii?Q?GjghgFHsYrDi+Y61stjWJQnWLpxH4aR42RubrRZGKle2ZkkYUNVnRIN1sExz?=
 =?us-ascii?Q?fSE6hiaC8B1MQjc8fa3rfw7xzxYDws/1SKoTkrJQeTjTsjQZUF+ZFm7Qskzz?=
 =?us-ascii?Q?fPc0sMaG3jK0cGbQJ7G5rPZvdAsRL7KZ44nloOEQ2NjYJQl7RhzFZJwwoLGo?=
 =?us-ascii?Q?hA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46082cb6-ea41-402f-63b4-08dadeca9855
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2022 18:31:34.6527 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dtDZQx7t7b0Nhn3uDE7nuHNQE8s8tjI+0IB74a8+7ZinhkvenOw5g6od/gPpd1BJPaZTIwvxX87h4DymlK6dYxZeHuCpCa2QVAqRmw3jltk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5082
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671129097; x=1702665097;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EIaESXAzeYyYBkr5bpE8SoenIu4mk2/h/JF4xI7yqIA=;
 b=bv3mFTcL1kexxvgD4CRBzUMuHMUTOXv4+vmT1GfpqWittIv0he+bqLjw
 L5j86teT5f5kzRHNPllZymZFlTElX929eBy77Av8Z/oaMZt1iQB0FLtKm
 fJD0cNWNrUWxjgYmCJwxBcRw4geqCHvvhF6s3Y9qVla8qO1bot5Yhzuic
 8WkxyvyqHmSi+OQ4b+kIFFUquo5/XF0JjaTZDJh3aks9DEEtVxLecbgvf
 lVqFGP7+Slmt9W+xCnBXgxwijWa6te4UHQKG/byAA0GHhcFyByT/4mnnX
 7xX3vc3LQqRc68RiH6TuS0m3hOWfLn/mjhOaIN5T6OmtVNdGfLfXqqTMK
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bv3mFTcL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igc: Add
 qbv_config_change_errors counter
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
> From: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
> Sent: Wednesday, December 14, 2022 7:39 PM
> To: intel-wired-lan@osuosl.org; Gomes, Vinicius <vinicius.gomes@intel.com>
> Cc: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> naamax.meir@linux.intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: [PATCH net-next v1] igc: Add qbv_config_change_errors counter
> 
> Add ConfigChangeError(qbv_config_change_errors) when user try to set the
> AdminBaseTime to past value while the current GCL is still running.
> 
> The ConfigChangeError counter should not be increased when a gate control list
> is scheduled into the future.
> 
> User can use "ethtool -S <interface> | grep qbv_config_change_errors"
> command to check the counter values.
> 
> Signed-off-by: Muhammad Husaini Zulkifli
> <muhammad.husaini.zulkifli@intel.com>

This patch doesn't apply to the tree.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
