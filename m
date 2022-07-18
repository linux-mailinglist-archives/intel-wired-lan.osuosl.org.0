Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C49578205
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jul 2022 14:17:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6244182CD4;
	Mon, 18 Jul 2022 12:17:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6244182CD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658146677;
	bh=g/b7vRteJubNHhh3KDZFTfZw/nQKfuCRBwdK2c8b8AM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kRwOchGraJAtRfwO0P8W4+EcbBdhcCREqCGpunCal27losaiQZ2b4Y6u/tUUr+jli
	 90AMKQSLqhvwEqlwoMw+e/H73U+BAI8hjqHzcd1X9MyPYYs0wB34Tu1cZJo8wgTeRY
	 6B0qT3EAlSJ0D09qzQa7s4LNxXGkHpR1kTTU/0pWORhxfH9iA9jmVWrKVWJ5WOJs8G
	 U6w1NcjMQSOpEIZQSP4vJDPjSw5n2QZjt66UXe5JdTxmtxwlPh1O3WZWaHLB3diPqd
	 mXQU9gXBdh55aNUhD2pf9Twxh6Kqxehu4fd6r5kVULcMwyMO0No10rodT4hrFxt+9I
	 /dBGMFueVrsbw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RwaMQMX2QYJO; Mon, 18 Jul 2022 12:17:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 433DD80BF3;
	Mon, 18 Jul 2022 12:17:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 433DD80BF3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0DCCE1BF317
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 12:17:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D5684408C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 12:17:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5684408C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qhZL5MVY6SCe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jul 2022 12:17:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0ECD4036F
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E0ECD4036F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 12:17:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="372511841"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="372511841"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 05:17:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="624703478"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 18 Jul 2022 05:17:49 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Jul 2022 05:17:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Jul 2022 05:17:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 18 Jul 2022 05:17:48 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 18 Jul 2022 05:17:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BLXqvqHlkvZ3dzrs6qhoJnV6yrll4EvkeHKPV8LBIe9Fr+BupQV1d5z0k/MZKLJoRiwjZtQf20SpDDuZMqumL7uHYVy1lm+OIrY6IdqG1hduzsocEy3uJ+wXbltB8Lcr5ambRwxfW6nHet4mNDVY7zykRyRR9A6e+5kmXoQh0fqfMAK9iEG2fpGO+h5YTTTm737Sg4dUhPdIkS7211DbOYwuovjInjzvoPDjxHQ+rSHq0LKOMOEiJOj1SVh0NR4NZFf/aPATF32GdgF+yR28K7MlhTkdS5xFP1vaSlaRYNDzOhYjs8sqLwffxuNszXOyC9ft2npmWhrvDc7yHNYaIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fpAi4xHtcM3iCwIxF8gZnjtyLbQYzVQpAKqwVk4GwrE=;
 b=DmIbgiWSLOtILaid2Q5iestNJAYQTBDuPaHw9tm9jm4g7l8d0s79N8sQ/GJ+jdsVZ3nyDdqVxDt+fgD1lwe2V3vuj+2gxyAUFeEX24a/S7fmY+OiNq8zi5ht2K7SHQqj6BAolch7ytisWgXIpnZ8ZK9mGG+S+P+TbPnz1eXGjdBuS9BWmF4R+K4JQUvzlkNWWLs3W9+T1XqBbKfWIfCTRX/X4vEV0nruTTgoiv9Iga4dKvs4W+FboJ5i3HdZvSqSe+8AV5cf9CopNmaKYdMDedFP9AzTlpNHYRG7MvyiwHzK7WR2kUS3wwkgY64wlQBXkv9zLX5ZIWEvKSUCbpA1Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by PH8PR11MB6756.namprd11.prod.outlook.com (2603:10b6:510:1cb::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.14; Mon, 18 Jul
 2022 12:17:46 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5438.023; Mon, 18 Jul 2022
 12:17:46 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 3/3] ice: Fix clearing of
 promisc mode with bridge over bond
Thread-Index: AQHYkgPfq9+A/DotIEeDBsDDs3/Zrq2EHJUg
Date: Mon, 18 Jul 2022 12:17:46 +0000
Message-ID: <BYAPR11MB3367DAD6395D2E78E1668D96FC8C9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <1657199751-256188-1-git-send-email-grzegorz.siwik@intel.com>
 <1657199751-256188-4-git-send-email-grzegorz.siwik@intel.com>
In-Reply-To: <1657199751-256188-4-git-send-email-grzegorz.siwik@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 917d755a-65f0-4594-806b-08da68b78649
x-ms-traffictypediagnostic: PH8PR11MB6756:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MZgsDJn2IYEcpBwpsH9pk5UBhCEOJ0gaDVFcbQO/o8jwjDlZPMoE/Qv5wfgJe62LgHwuZ6D0v50FsvAeJHZ5HadaoShocxpsC0mavvSOs9s7w+VUDu7z75/y5fBSJa87shfTK3pzSctBla9aFK4lzlDY434ga5V8JTXxcpIcdv7AqAY4wSXZcxcn8F+WNu/c/Bt4fQVKlph/MBK9OV7lQjUATMpUJikiXv5PcOkLFvC0EKsNI4j1r1Nu714u2AHdcclIuyt9qQIWfMVVLdLXRZEpGnSHqNqWxtPt1Op7Yapo+kNaKTxP2O5iE1aGVREEBWFw3wKDuuVe/pRCIr972s6jIVHhNNu1VcksW84EM7y118hp3b/284VxbwT9W4fAZ8cniK0aJXi+/hTmtqdAZOkjtadbVAYOhKyHuBh6Ip4cZYw1btAqsjWkI/z3xCZKhWCFQxbeRxRs3AGcM2BgpWFG1ycw1b4fp16gjRKWgaYYbOLtIk1KzKAuQYnUGmDjYZQux6qEYxuW82853b0hI9YUrc6DDIt0WrOz/xzrMXpCPVX/UBWDVFV3KM92QEUgprYthFeXFSnQW6S5UovKd93oHi3GiK7JTCZV5CXeXQPp2SmFYs3+w7t17UB5EHMbd/oGCelwuG0CDpmhdFeZicwXwVK9SbOWZJNrgjFgzfxvs83UFRwFlU0dvnH6ogrlyRllSNmTnvtqC/Sba4KxN2adcgtvSg9PJ+71/oOoOP8gafGUFLD6cST4HDxX6hbuOzPvWfBCv7+gN1DL4mavt4WxwOKk9bJOsq9eTjTgji6WAvJmMbSGMJ/dcrtSSzSgrtJw9gkqR2lzT/XFCgzwnQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(39860400002)(136003)(396003)(366004)(346002)(71200400001)(41300700001)(966005)(478600001)(186003)(9686003)(7696005)(26005)(107886003)(122000001)(82960400001)(53546011)(66476007)(66946007)(38100700002)(38070700005)(6506007)(83380400001)(33656002)(2906002)(5660300002)(8936002)(52536014)(55016003)(64756008)(316002)(54906003)(110136005)(86362001)(76116006)(8676002)(4326008)(66446008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dTMbqUzeH7F3HKhRHBL23Ki3rdIMXkb9oCFNkEZsQPNrr0PlFFaB29AfdG1/?=
 =?us-ascii?Q?b55rBrdxmN5g0DHex6tFXlrF8lBjvmi56tBIrD+yZXRAptK12qgga5vFUS7v?=
 =?us-ascii?Q?jROg3L4CsxZq7YQ8Zd4GhRsWFLv2Pgfa2xxRlXntyrrvCCG6u8AjKmUqxexH?=
 =?us-ascii?Q?cN9bEQ0m0JgYBKtM/FVx6gIjUmgHNrIZFKjuQuHbZwdhFNDD5s0yQzI/n4kE?=
 =?us-ascii?Q?jccWal/sACZQw+0W1sksB96k6paOif0CrrZKOUQ20eL6tiTWRjE3AAdBfuKN?=
 =?us-ascii?Q?/VaVhLWhro508pMezEEiWw4K5+AW47xybS9Bl0fRdNSEG0KuedgktIIFx7h/?=
 =?us-ascii?Q?+lwO9EAYHb5BUEaJIiwxmxV+ct02a9wGccsm4TeA4ydiSiyb3KkH5iR/cZTo?=
 =?us-ascii?Q?qTvOFqR41waje1Ziz4d2jJhrHigTNMeRuQdIliajkjmuhKGptJdooJncRoFj?=
 =?us-ascii?Q?4W1IhvGVU65GBeYvui89OnFwN1GnNRIa+XoFAsz6Uj+Uwlb9+Bha+QS7iIOP?=
 =?us-ascii?Q?lKKBYP3bW+Z+c+XUBNpPPMrEmH0KLrvSOK9Z4qv/ysr41Cl5sTSANvMM7Zc+?=
 =?us-ascii?Q?H/z3Glrw8Z711bJPivCvwqje8xWc/OKvNhaT80X55kzUYc/pioSbLXhVZYs1?=
 =?us-ascii?Q?/Jxllu6IUOrRmNg8oqsaySM3+EjgtcIrnjMori8iYVeIU4XMRX/15wRUpSP8?=
 =?us-ascii?Q?CVJztke/7IRFJy1nU5aDXz+HFKjNslTZyVj8l/9QkUDUIL4C4WSwx29sJ88i?=
 =?us-ascii?Q?4TD/wH6K/6pXvjXffPWEaKaz+doQJZzhmQ1+cifF0bfli2T6p3rv9NHgFP69?=
 =?us-ascii?Q?cpd2uHkNZFS4+WJyVV2WKkqAjGMt5PK+cMBdddbsawZ+C2rGTuC6w55HhUVS?=
 =?us-ascii?Q?M/pq/CS7xKAXBAqeP7hp5PAyV49hU7I2yVba3COr4SSnGeJDFhIWDI13CRYc?=
 =?us-ascii?Q?ePN31n7fylEkT4fScOmopCTD9JFYnXI+wWMbuO2eR/BKVkO+6FjKj7rB+Yd4?=
 =?us-ascii?Q?cgFd4HbOHKnUpVyZwW1rDthvxgV7Uy8WG3ElzCIO4wGcgHyW9KgdhUhc8naJ?=
 =?us-ascii?Q?kpTIHs0dvJfctZmwV1TCc4ajBILSpjXvdgx4xq/ob39xXmXyfFjvMQ4qJWte?=
 =?us-ascii?Q?RngBziXYzbRWpuBX3mrU8iE9i4IH+Hybpe+arIwpyYFKvWJ8G0P5g9xn9Uem?=
 =?us-ascii?Q?aATkX7hGdch4XAjjHwdxHqhfd8h3u+kkUBrjVmcngDnvPeqHD7tGAsawuFEt?=
 =?us-ascii?Q?HO+OcS5Pmpmwj6FwQ3s6wK1IP4Jum2N7Gs82QuwlXVMrjuzIrg1K6GwRDiic?=
 =?us-ascii?Q?qcQY7ZNjAccz6KaiLpqMCkvngkL1Y4IA3msBcPcTN7deFTSDAoIJRqvaOsYG?=
 =?us-ascii?Q?XI82bq8+3srnS+njRq3pRHMBe8EA2Ge39bIlLMBPmQvJDStxhdxXUBEs4QXa?=
 =?us-ascii?Q?rMLR7wOpNo5FV56i0bbPEVDUJZfQ+1Z4Rnwo/EGxpx5WbSGyX3G+3YP1py9Y?=
 =?us-ascii?Q?1nxKHWkjAxMGxUnWCQIwCobNxSdGOiUU1lnLDrQ6bT4EhzFJkpGkNV4DA5O/?=
 =?us-ascii?Q?pNQosSSJzTRo4AbRS+COI7CpV9U+DbCqmiZYqZUQ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 917d755a-65f0-4594-806b-08da68b78649
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2022 12:17:46.7301 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B9tUh/IcQT7CNdX40b208DwiGFRrUg84KmAeQFWTWSkV2kJQgI8Ygue564nPWzXjHh6U+GofhoU3E+kqsWyELQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6756
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658146669; x=1689682669;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fw8pupplaymMdS7R5ZHuBR7PugrPYnXlHNqdNsrcU/Q=;
 b=gwXvZIKK9U3fqCDG0lmclYt6pI9+d1qSAAvzmQETDIeCH0Oyk41EVDtH
 XXpuPyG0i/yTBGID31FzO1YvsglLRvPEk3Ug049Zq6WRgU0v3fpdr+C2h
 RMT8VdXFkh6r+Lo5uhuatnItm3Xh6eQCvB4sPGjTmCyZAghG5xXYjaKoh
 +CZmnd5Xw6CNAKSiVrRSR92VfqgmZbFejA0gx1eIzoLRG+kseeILOsHaM
 meBTovMFahe68QuQG0rzTf8Ho9eBl8fbegrcknDGnKRHTV7mO/d3fWHWX
 XhlOO/05lqSXI5o8IbqLzb0C40oga4Wa9hiXVPgct2Uo7soEdkUyHrUDT
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gwXvZIKK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 3/3] ice: Fix clearing of
 promisc mode with bridge over bond
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
Cc: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Siwik,
 Grzegorz" <grzegorz.siwik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Grzegorz Siwik
> Sent: Thursday, July 7, 2022 6:46 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Siwik, Grzegorz
> <grzegorz.siwik@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1 3/3] ice: Fix clearing of promisc
> mode with bridge over bond
> 
> When at least two interfaces are bonded and a bridge is enabled on the
> bond, an error can occur when the bridge is removed and re-added. The
> reason for the error is because promiscuous mode was not fully cleared from
> the VLAN VSI in the hardware. With this change, promiscuous mode is
> properly removed when the bridge disconnects from bonding.
> 
> [ 1033.676359] bond1: link status definitely down for interface enp95s0f0,
> disabling it [ 1033.676366] bond1: making interface enp175s0f0 the new
> active one [ 1033.676369] device enp95s0f0 left promiscuous mode [
> 1033.676522] device enp175s0f0 entered promiscuous mode [ 1033.676901]
> ice 0000:af:00.0 enp175s0f0: Error setting Multicast promiscuous mode on VSI
> 6 [ 1041.795662] ice 0000:af:00.0 enp175s0f0: Error setting Multicast
> promiscuous mode on VSI 6 [ 1041.944826] bond1: link status definitely down
> for interface enp175s0f0, disabling it [ 1041.944874] device enp175s0f0 left
> promiscuous mode [ 1041.944918] bond1: now running without any active
> interface!
> 
> Fixes: c31af68a1b94 ("ice: Add outer_vlan_ops and VSI specific VLAN ops
> implementations")
> Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Tested-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
> Tested-by: Igor Raits <igor@gooddata.com>
> Link:
> https://lore.kernel.org/all/CAK8fFZ7m-
> KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  |  8 +++++++-
> drivers/net/ethernet/intel/ice/ice_main.c | 13 ++++++++++++-
>  2 files changed, 19 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
