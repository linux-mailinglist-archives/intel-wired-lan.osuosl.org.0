Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 524777BB531
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 12:29:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C9EE41778;
	Fri,  6 Oct 2023 10:29:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C9EE41778
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696588191;
	bh=kdHKR00d2mqR4yGpuUeg/PM8+ZN9MvfrdbWSMhOAzys=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VhZAidRiVPAFMWh1oK9x5e/B6/OwuO0bXSnNHYt3j9082z62Iif/BdsqZ3Dm/YoYB
	 +5Atg8NV8OH8nOWxFX7RlbXwtvrNC9Icg+9cYQIemk8qKjUpF+mwsIWekMiSqm5F0i
	 h+QXxOGclPZ3LF1yYQqoRlJleBY/OCMBkywE/09/QXI/g6lSN/FuoJ+LwjnPQZOuLN
	 BAj95lTNPSOsbtSXuk5bUF4yFAK3+zeBigmXVRBoMN+vPYx7FcK0Tfddl/qo+tqojr
	 97DHy0nIkShxJ7ytSl7YaJO6cao6n+BkFRpaOpQYKnX6M9NXj3XRg4eRsj0MjNt+XF
	 UoM9wSLEwNSmg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id whFLSCDsNKj7; Fri,  6 Oct 2023 10:29:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E1BE40166;
	Fri,  6 Oct 2023 10:29:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E1BE40166
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2FDB21BF35A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 10:29:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F1AF161170
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 10:29:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1AF161170
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zo8q1G8BwvJg for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 10:29:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1216461089
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 10:29:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1216461089
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="447911903"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="447911903"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 03:29:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="745831232"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="745831232"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Oct 2023 03:29:34 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 03:29:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 6 Oct 2023 03:29:33 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 6 Oct 2023 03:29:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j14PFHJxWKRqjgJG3ejuVy9i0T0N4eFYZ9bN22VJv3y3u60SV7nlg8SjosFiEpcrVo/n20Wbbo1X3jrX8XzPZq9KFbGvckBB0Ox2EH/D1x/ic2I/d3r9aCcoUuH2QxL34ZvZ2kMDK77hOUWA5Oq/2l8CaswP7q9o/mMIisChGqAkWUG6pyapBxQ1wIX2j8HQjhQt5lv+2BP1vn4aGz1CVsfdepvN37Zk3IRF3c2XCdR7R6gOQgskJPrZUxzLAXHQ1a3sCVePQgghy6m/evbzAkvJjJTEXvwOVu35Jh/Dam/2fboUlZZc5PEyXN58ojQgFn91FVKOVCjrq7QEE6xDDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vLEPYfwCtryTsxXad2D620K44WqI2z+44Hlk/jR21Do=;
 b=Im0OOaMXpOm5KhUnp8c/yV1wyZgkGmGYOOV0NH5F3+EMymoa67ZGJzxblH9Tgf6DnSC65pwFiukAqMmOFecOb7wSbk7NX42mIMz9ZzG363wPaWeDyU66rg1kI35BiBqtFroRO+fJ+53PBaoQm3J7RxZd7ZUyvZGPjWZrTercYKu1ZkP5hWHOze4QHli+Q95aGXtvZsU3EP7UhYApVKns6F7p5TYMtfA5RT2GDzsvB6xdmUK+568HJnDvC0EFlqgv2lU1PLXgvRIdm5ICE9OM2QJVUELzpeTtvYUVRDzH/wQHI+rZGjRZoKnUEMI1KAJCv08bP/cdXfgkFeIpdfqiTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 SJ2PR11MB8299.namprd11.prod.outlook.com (2603:10b6:a03:53f::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.38; Fri, 6 Oct 2023 10:29:31 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::4c69:ab61:fea5:5a7f]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::4c69:ab61:fea5:5a7f%3]) with mapi id 15.20.6838.033; Fri, 6 Oct 2023
 10:29:31 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [PATCH net-next 2/4] dpll: spec: add support for pin-dpll signal
 phase offset/adjust
Thread-Index: AQHZ8STVKHojjvToCEiVV2Bzdpbi/rA2nhkAgAX/HOA=
Date: Fri, 6 Oct 2023 10:29:30 +0000
Message-ID: <DM6PR11MB4657DFC050BAAF57A5EC0C449BC9A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
 <20230927092435.1565336-3-arkadiusz.kubalewski@intel.com>
 <ZRrZZDDvuifWhDeL@nanopsycho>
In-Reply-To: <ZRrZZDDvuifWhDeL@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|SJ2PR11MB8299:EE_
x-ms-office365-filtering-correlation-id: 12acb6ec-4902-488f-3abb-08dbc6572035
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lGBL/YApLLJ3GErI8qAeGPknm1sXvzLmzQ8OT0cTzFBExeU8/YdIDX2Qdq9yzjbIPClbAlblvZhWECAlQVCVptZIEPIXr1AKZI/5IYrwFHB6x3PVFKutEnAKkpSPwJpNukvrnrKpZsVnnunByL4m9h0rjDaGU/oqgJShSULgmnjnoLMn6MJSgoyrZ5qJo8LlZBd7mbXqONDUYc2osRWfjGGUs7DN41UKuJA6DE9taAOeP865sz8shKDmh/k6lP4ZMGz6tN6W5W/YXqESz66JcE3Bau04rLg6jW5WfEtHPC50ewzosJCEsQjtq1hlE45YkTvXBKT7i0bj0jwiMPnyExDnhvXRtbbV8WWqbZshQ9euQ3P9oNMD3I5oQSo5LJ+RgzSm/hqGvgR80s+XujU8P+Akk2yyf48H78AbrFhbGj2xtpHfaIDXFPlf4R5TpJH4u1gNaJpSGCNyF93cpgP1HJCf6SQwcOnOD67hJN4fNh+9R3ANqhDoDEvvVRJWQ13Up32YDmQzh7mPRGNypB99YiODhhRWVbPvZ8Q1/ETpiEI+FP4a+pCzHVAqonMLxmnoD8tAGC0tGlql1PBPm9nwDO0Wl7a2/p5AUAahLR1qbz7v1IzSoj+Vl9GtzrRCjM1O
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(396003)(376002)(366004)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(55016003)(41300700001)(9686003)(7696005)(6506007)(122000001)(38100700002)(38070700005)(33656002)(86362001)(82960400001)(2906002)(83380400001)(5660300002)(52536014)(4326008)(8676002)(26005)(478600001)(8936002)(76116006)(66446008)(66556008)(64756008)(66946007)(316002)(71200400001)(6916009)(66476007)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FMUQRaloNIYuyyUjCQrRdprRfDRIYAEYoeTQGZQXsy9AWcYAVylACUGxTTge?=
 =?us-ascii?Q?RtGesovFBl6UfG7lTRL/okuTirZOIjjAkNCnut9pbBwrdf6FCRbJtE8U5JKM?=
 =?us-ascii?Q?4rEOpjRuZQvrTJjR6Ag7qiPHNQ/zKTWTCneX09R7tZkDC9ogkIN+O2+YazNs?=
 =?us-ascii?Q?H6JQmajLp5f1LdUeja6TTNEyvJBAvgzqKJSFk1RsVn072MjCggeWgTvmD6KV?=
 =?us-ascii?Q?ubNR8iuZEN+alt+gAOEGcjW2LtM3tcJU6HyZUbmtP5BKsuapihysfXNnp1gi?=
 =?us-ascii?Q?2X1+C/95p98SVKwwLqMLCgk00a6JdI0JyWJtwg6OYy4ctQ2dJJO9nAxtZh9Z?=
 =?us-ascii?Q?a6ORANLtbA/36D32MGtBBSTVEkX8eh02bSh1r8zgohXtAXBr1sdJAWV1fo66?=
 =?us-ascii?Q?CIsWKnq/GnrPASSNmKrSk9HEzAXlpNu8DOOdYwnWkRwphjqI9DqSJPPP4jj1?=
 =?us-ascii?Q?PkrnxzCfKnYb//GtiPWA+KOE+fK2CsEbzxCFElY9ljyVDu0dZuox2Ye9CXE7?=
 =?us-ascii?Q?0Jk3NGkyHz9rFMsFqphIE7ug4fp31UHKDeiedj/4rdYl93IMxPpJ7kLE0f+A?=
 =?us-ascii?Q?WWWhC/KQzQCRIrSMrLv869o+lQ72VONNTtxPVDGV6HK0RDP6wwVcldhXjhYl?=
 =?us-ascii?Q?LxzjCxbvCsJPj50kC8hnvfp2lyANvh+s/0ruUB8kPeOrhkAwYVtO0U6L7boD?=
 =?us-ascii?Q?kic6/+7q+tQEPnxZoe2mmwxeHJkBJayBDUVa4cv6g7W/Ne+aWWg8E5ySOdZI?=
 =?us-ascii?Q?STuW0OICYE0eWCj+Q6TIdsKm08llbWJvEKDTmm2l9xtmRvrjDqYzIk+BY0kk?=
 =?us-ascii?Q?qOd6qlpbAu7nwhNEFOFIGHp5/0hH8SUZYEi+18M3PxyrHb9XnzGOYVZKQKrR?=
 =?us-ascii?Q?ZlbQ/+R/x0wFRcQuqDwA4m9LPqFwVuUmtaDk0fyH4hyCVYxWX0QZcMIrg/PK?=
 =?us-ascii?Q?RQmynna1v8RBY3J+YvF4pkUFY7NBX67rzsWRRICrDQ2fCzdz3Iz/44MWcDis?=
 =?us-ascii?Q?zFbdqru9ADVcbP45/hM7LsldhKprFxZbG7gWZ6riUsSbttllnNy8Fkcn9PrR?=
 =?us-ascii?Q?cRexfxi3Hf9MAu3lyEBPLKVRz86WPdSbAdyKcQP2s+CH7GklaqOOb2l7usHC?=
 =?us-ascii?Q?ubwH4DF+CurWBdViFXA+cz0+HwZA3Pnr2fN1MvjTzyye4MTgI80/gxCz809T?=
 =?us-ascii?Q?AmR/fzd7nEJp3ZQxFSwOOYDPMrUQBvW6j7YL9XlUleYdKg/8PtYWZno0tfWO?=
 =?us-ascii?Q?M3Q4SUT90mRmeqZjo7z4GPuhkQTXfQRdw/5YF9XUK55pgw+ydXzdTz58RxFm?=
 =?us-ascii?Q?eR04H+b2z/hj0h0U/z2hlLBlOjT4QVQxpQrGxe51p06/aLHl6YwHChcqGsxf?=
 =?us-ascii?Q?4mwWwrWYHiEDkvqta6US3NrR4d4cP1AjtYrB0crCje0teqHVUVPk1C4dU34b?=
 =?us-ascii?Q?D1iEjsbG90/CavnGJGrLi3yEvWtpSCu6RtiMZUyIdh/8e86V4XpsJVX6SPHi?=
 =?us-ascii?Q?4Pi0u/NPt/qJ/ivFGjy7WRqzhNxvxl9E/fgX7SENQKlXgHbsJEtAldbQijFN?=
 =?us-ascii?Q?Pq+2b+zAptZDL9CbY58z25P0bLkNym/3AqlACRK/RxbF98CfKl0NJAi/m1Ld?=
 =?us-ascii?Q?Zg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12acb6ec-4902-488f-3abb-08dbc6572035
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2023 10:29:30.7860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rg7r8BeKjAtThA/LG2yAfLVDeQyYqYC0M8pZZOt7lefcGjmOzXiR5ZxwwqntqrtPBNU5uswbnypLKVnqLOZUfoZHfTc1+m+viCJWxR5VJQ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8299
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696588182; x=1728124182;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9mjdbJtWt1YYaDeRVCaGQwhEvkCUIZzQ4SDUifSON48=;
 b=F5s4ERISonkuw2cUxao0buMVX3QmC4sp5IW67ZBj8kjkN9IrJoeHpIdj
 OYNCOt1hdH1yfagubGX50Za8QjS/u9pg8KAROGdShd/BwW8kp+KrdVabs
 +6gTQ+vbAkWah3LVdoH75cfZDW4YcXRqYlqaDJOx5RCdBdt1rh2m3PsoV
 Rcgu4VmAv69DbWzpDXeiDVHBl8ifx5KUz0XCuaHVS8+moggSE0Urcr19g
 GAvIbmcZAVTa5ktMpPigy7w6TnLFLOx230OgQvIJORXYZNKrTB5GQ9cQu
 g3Bh6w/MSZan4+8Ou89sKNrzUU4qD9wt0n67HVrLZOVNJqiXgu3361tYO
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F5s4ERIS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/4] dpll: spec: add support
 for pin-dpll signal phase offset/adjust
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
Cc: "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Monday, October 2, 2023 4:53 PM
>
>Wed, Sep 27, 2023 at 11:24:33AM CEST, arkadiusz.kubalewski@intel.com wrote:
>>Add new pin's attributes to dpll netlink spec:
>>- phase-offset - measured difference between phase of signals on pin
>>  and dpll
>>- phase-adjust - adjustable value of pin's signal phase
>>- phase-adjust-min / phase-adjust-max - values for determining limits
>>  for phase-adjust
>>
>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>---
>> Documentation/netlink/specs/dpll.yaml | 33 ++++++++++++++++++++++++++-
>> drivers/dpll/dpll_nl.c                |  8 ++++---
>> drivers/dpll/dpll_nl.h                |  2 +-
>> include/uapi/linux/dpll.h             |  8 ++++++-
>> 4 files changed, 45 insertions(+), 6 deletions(-)
>>
>>diff --git a/Documentation/netlink/specs/dpll.yaml
>>b/Documentation/netlink/specs/dpll.yaml
>>index 8b86b28b47a6..dc057494101f 100644
>>--- a/Documentation/netlink/specs/dpll.yaml
>>+++ b/Documentation/netlink/specs/dpll.yaml
>>@@ -1,7 +1,7 @@
>> # SPDX-License-Identifier: ((GPL-2.0 WITH Linux-syscall-note) OR BSD-3-
>Clause)
>>
>> name: dpll
>>-
>>+version: 2
>
>How is this supposed to work. You bump the version with every uapi
>extension? First time I see this.
>

Well, wasn't sure if this needs to be updated, but sure will remove this part.

Thank you!
Arkadiusz

>[...]
>
>
>>diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
>>index 20ef0718f8dc..050f51b48ef8 100644
>>--- a/include/uapi/linux/dpll.h
>>+++ b/include/uapi/linux/dpll.h
>>@@ -7,7 +7,7 @@
>> #define _UAPI_LINUX_DPLL_H
>>
>> #define DPLL_FAMILY_NAME	"dpll"
>>-#define DPLL_FAMILY_VERSION	1
>>+#define DPLL_FAMILY_VERSION	2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
