Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8811B7CDA66
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 13:32:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DD3F82344;
	Wed, 18 Oct 2023 11:32:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DD3F82344
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697628736;
	bh=9EPnW+2qA1QYtlJ5mrvSytRGWtsGSBVRnNTTg2CyEcU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i0CCGNgNhBbdRObR+URJ6FfcP2PSC/3/hTn6VLmX+I48D3XfRVGgzzZs9zuwjcXaC
	 kbOHThPfXUYPTM7VdehjfNGiKgdQQ0cNhlZDP0hAHOkpUe5jnXgafoUXHhBuGuDDds
	 XmauaSjbkrr/Y8pnAz46+MkBWsS74y7QxdUIhW1diJ3JSkq9lPYdM2JKdC6VYuxzTP
	 igSnh3ejxdXzLu5N0UXqVEiLnO+gP6APT7934LORerxLBT0/f7RK9eia3IvA6OBGJA
	 RmE56CokbGSukIuRFCR0cd4l/UWwO2Hix6B72omtR3fwwrh8bjgMnDjrEsoOO1yMz5
	 7uQ8P480mgobQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NcTU4PfdoJvI; Wed, 18 Oct 2023 11:32:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8704782334;
	Wed, 18 Oct 2023 11:32:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8704782334
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C9C9D1BF267
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:32:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AA7C441F71
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:32:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA7C441F71
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SB9mZg5Lu3ZJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 11:32:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 89D7841F84
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:32:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89D7841F84
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="376365264"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="376365264"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 04:32:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="760191534"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="760191534"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2023 04:32:04 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 04:32:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 18 Oct 2023 04:32:03 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 18 Oct 2023 04:32:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PcUhh+UTXTBBF6UW9JAAgLVPB+6oV5VPNRo86iFaZtx2g6BzAedl2smqMKfF4kO7b3kM7eJmAXVJ9KiLjgSosVOeN8piRAzBrxHLlhUQ9/8AvW1gDBSsH3vYc5B++tyx3i7sLcLThsiDYyfpNnsagvzZS+R5QiPt6/Ocsn5+03of1MvdT0qwR3q2qaLPlXN4T8HEPTmyl7VyiSz8WV2sgWdu8CfYR1Z3poDvFbhigSZ+4xXuIr9K+Ttilqi695GpK06Ov7F5RChBT5HYvcXNcFnYBCCb8beuDmkd9NROFARHnv5UZFhQfySARMfgWPnMn6qo2hDRaVrG1L4sU5bx/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MuXwDnFBNZns/L3yXvFIJcueM/EtptGqA7cjlpDvEKo=;
 b=LP8QC9G1+mruQB4eIQE9gi2fxU4FiGyj5194j3IBZ0rdNq1+PnphMUA5ZQEuWz6eXzap6ilPZWKfZazNNzH0K/Vypw9byZxhaLFVdnswWBEaElYm9wWTM7UeB8ny+ywLzy08eY4Ywl7M+5/t4iRVCps1zbR7bThmBhxop2pxy+kwIGAHwKiN89rF9N3pH/Ugd9+erqWLQPH/E+yVPTSSS/Wn4PaZxCnIfgYs6A2T0RVb6dbh0RI6caSlBUTM8vem0Ay9Z9DYxF3yNoORaPkJCm2D5CXBxZDGBfLiPDp1BgXAe3bsbDZa6bQk2j6DENpqCwppKWX1e85GUlYJJXIatw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Wed, 18 Oct
 2023 11:32:01 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858%6]) with mapi id 15.20.6907.022; Wed, 18 Oct 2023
 11:32:01 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>, mschmidt
 <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 3/5] iavf: in iavf_down, don't
 queue watchdog_task if comms failed
Thread-Index: AQHZ+xBePwuy4uURs0mRAPPIEtQU37BC5SgAgAySEcA=
Date: Wed, 18 Oct 2023 11:32:01 +0000
Message-ID: <BL0PR11MB35210C35EA7D30379A8AA2A18FD5A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231010002444.43507-1-mschmidt@redhat.com>
 <20231010002444.43507-4-mschmidt@redhat.com>
 <MW4PR11MB57760DB311AE3726FE193005FDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB57760DB311AE3726FE193005FDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|BL1PR11MB5445:EE_
x-ms-office365-filtering-correlation-id: 9a26397d-5daa-42dd-8322-08dbcfcdd8b9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7e6NPvoX2t6HXYFD4HkzqR7Udd2y+Lg7AYL0rCQdTKiC8JDY1tnsLTLYChyzYZlMBwe83n0DProEQgmQWr1yKCjkmoHmNl3YUmrMUr1AT2H5HM6oI/R14I+naGXyT4YCb0O3oXJt3jt6HSVqxF4fGQrvdGG26EP/RXSrR2yCjnhesIrRB8+QhRG5ttFawkXWXhUtCRqB0ndxs3CsjqGHn13fdQARcJTwCMpoEKG4ul56sdZrwH7SPJZ2QTYFFUWXvbjWX6EW1v812uN/tXkMwyRbqgCR7qZgZ3/sGtFaIYNgcMDlcTkiPnkcVGuT+vGEF+ZxFNmeSL1Bi3sXXyKC4569zaaO1basAfrCKOZzwLOSS9mYneRxMng/Bwssyrg+GhfdAjpXCXdGziWl/d9JBlPMC5XNXu4BzIe8NI0PJKmWA6z/sW1wXl3zcZXTH/JBFRbA5+c3icNGZ+Suc39LSeokzFh+RBJZShHYAN4Qb8/MI5mp6+8MUSlvoImMrZrKNmJKYzGjsdaRC5tAhQKQdJcuQl1gbghjOjDcIkMxCxWsesD8Lo5M4B06LaR/l8JG2cTcsT+cToRy3aOcFVGSh2eM4v4fiNHaVN080Pu+97A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(366004)(396003)(39860400002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(86362001)(83380400001)(8936002)(8676002)(110136005)(966005)(71200400001)(66476007)(64756008)(107886003)(66556008)(66946007)(26005)(9686003)(66446008)(54906003)(76116006)(7696005)(38100700002)(478600001)(53546011)(122000001)(52536014)(316002)(38070700005)(5660300002)(82960400001)(4326008)(33656002)(2906002)(41300700001)(6506007)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4b+5xuuNwvBdIK5iXXwVIUomyAxblbRTSyx5SdW9eRYA8tepWINh/y1dNKwY?=
 =?us-ascii?Q?8Nhont5GNpBgvcR0BCtFTIhNvN4wDq7sgXP5zSzHihw5kSs7dmBH1K7Q5AKy?=
 =?us-ascii?Q?Du46TLIvdHWxASCJGvTZpLiyWqFlKPJsqXIp5Y4xbxJjhGQeE+mgsptaa91x?=
 =?us-ascii?Q?ejckolFOMj2UqY6ra6Xp8HENc6x4UUcPadgNwHrQNgwd3/iYSWbTi0XU1EXd?=
 =?us-ascii?Q?YmqxQgzwL5vFS1vPb8kU9CoRNigyLt3FrAAVLQRKY2/PZwetaxvsvSpqRNXl?=
 =?us-ascii?Q?lt0R5gsA1mJkKOU3fiaGIonQsXtTgdQrlS9uWQ04VGT6SHJk0F9ua1ZWsj+0?=
 =?us-ascii?Q?KSY7vOGwVW5/0A3pk+XlnmD5sjFBdnERNQ1jLIMjj6o/Re3yXpxJVoOJCVGO?=
 =?us-ascii?Q?GiwXWtrQf7xXmo2ZBTYwjAJv09VijCeXf9vkUQxpfDYgGJ1QL0FfKuTjpJn6?=
 =?us-ascii?Q?RmzIHE3EpXvvCuG5UrAqREnx5/kVna9OhF+876P6I7vrfue8sYJ/hxHqLOXc?=
 =?us-ascii?Q?vDOESA5QEksbM6csVlfDOIJEjmCB1/KJ3gsWRH8F+7NKZDhYZHbyRK9063mo?=
 =?us-ascii?Q?B5YgsoCanYmOK0UAVoEMf45dKFZk67YRDUeCCsu6D6JKY589gD0oVSqWFbc9?=
 =?us-ascii?Q?b6CeYaRbUHij+Dow9dJrvN9DuFciCdc5bLSsa9LQ7exlrZr69sgzlJZSZG1j?=
 =?us-ascii?Q?q+8ENSbVD+FWBFg3PI+6wflkywG6YFA+iP05LVheVPcgLclEUDSTjV8NDNC0?=
 =?us-ascii?Q?2mcffOh+nIKevmFFC1Ck/4UyHQaf1Qf2S6mNaACIgZMAh2by64O07ms36Ur4?=
 =?us-ascii?Q?4gHDF38eD2+ZFfnoH9Axwp2Bh/pk5xkG8XIYc+b6+jLXH4vkOoDaXQ8Bp17i?=
 =?us-ascii?Q?bT7xLxbJ6Jr/UKItcXBr2JSd5O8AT0JjrHL2OMP5UtQ6kKfTiFGjU9rFZ/St?=
 =?us-ascii?Q?92XAbMRshYI6wI2xBOQeyfsqCa+ye7HJwsumE0sc1XQ7HNUx0+b5J+fn6iH1?=
 =?us-ascii?Q?Ij7k8463cL/oE6ZRUHP9qPQOYR1ABy6a3jcmbfk/5G9Ekn5lgyadlpGBindy?=
 =?us-ascii?Q?w6VEOeD/xWDGsghBYDO8XkDOfZaQWRDWU/X0DLJFrfSpj6Es2Q+/LHTkrYXo?=
 =?us-ascii?Q?oJWisXbqyD4UjQybf1+dw2vjBAJKWNyVsTzIZpSQX4s2oOOFrd1KFir727D3?=
 =?us-ascii?Q?SWVUcFEe3/+MfX3D99WCFVJ4bX6WzjQATJA6cM/QEJaHP9GH3r6CwFmYp81Y?=
 =?us-ascii?Q?e7kF4cpkNJIpG4v7jai9ZkVknkgf2Hk6OXn4iQoplpi8WKTuqcbvdRhPuYWH?=
 =?us-ascii?Q?Ik0SXEUcrsYtTfZv9Lsofk/xU/SnvFU/Ahb5ArOFsSJM/lAfgO6AjOcRhLkT?=
 =?us-ascii?Q?5bsgg0tigQYI15CpqB1vZkghBMP2pRZErHJ8p28HWXVFHVm678aGLzOyO8iU?=
 =?us-ascii?Q?tu5ryeBhfiFoit8Xi7ZiYyI11XiBMzi59q6Z6cUSTAtIV8x6kQ1J0DLtYJM8?=
 =?us-ascii?Q?dNsToK4q/uU33/NYiyM2LXmgs5TQVVPSHetwRRcn2cKEZC6VkvpFeTSzjGIY?=
 =?us-ascii?Q?DOh1AOznr20+H0vFoIU8iBvJOjWvUwo3xE1RAx/4SYP80b+puzrClGvr0bAq?=
 =?us-ascii?Q?cQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a26397d-5daa-42dd-8322-08dbcfcdd8b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2023 11:32:01.3759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8+Zn2tPTYx/Gdsjno7W5dw8VsAmeFmeCG3AF4YtfYLxMdCKHQHZDnykzQxXb+9W23iTHwoeEoBp/U0ArJd1IwUkhwY9Hq6gIQ2TQNV7Aj4s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5445
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697628727; x=1729164727;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aif2Z35wU5gSXa+SN1orO2Y8QH1B88M23pNpG59RAWs=;
 b=N/6XNNNMW7FYRpKnXpORmSucybn1Y8R9yA3ImHB1vZmwMDmlR5Q1k3pW
 Maj/YfReeBDZWm6f6qxDAm2ow45pLdCluj7Qq6zJr9FP6Zh4giUnEsJ7s
 +aP4P7FfI7w/IJerIIfNOGrSMVVZJru+i9gBdZJiTTJNZQTZBDkQWr+wW
 8cyx/McQ5HRZrtVq6NfBNsu8Ti9XjpK/PZ3ww5PA6tYO1osAtKf3WYDg9
 u9Ve2RaTw5+fyPXeoUreoKWuQCn7El/plvPpojrSuamEamwvV8tCKcCjD
 4JKtQNug6L+D3wqAeLy0ZiX/SLJN0R/6eJEqFwGzvFgtOSkJ8ODpQha6d
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N/6XNNNM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/5] iavf: in iavf_down,
 don't queue watchdog_task if comms failed
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Radoslaw Tyl <radoslawx.tyl@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Drewek, Wojciech
> Sent: Tuesday, October 10, 2023 1:34 PM
> To: mschmidt <mschmidt@redhat.com>; intel-wired-lan@lists.osuosl.org
> Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 3/5] iavf: in iavf_down, don't
> queue watchdog_task if comms failed
> 
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Michal Schmidt
> > Sent: Tuesday, October 10, 2023 2:25 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
> > <radoslawx.tyl@intel.com>; Brandeburg, Jesse
> > <jesse.brandeburg@intel.com>
> > Subject: [Intel-wired-lan] [PATCH net-next 3/5] iavf: in iavf_down,
> > don't queue watchdog_task if comms failed
> >
> > The reason for queueing watchdog_task is to have it process the
> > aq_required flags that are being set here. If comms failed, there's
> > nothing to do, so return early.
> >
> > Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf_main.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > index 03156ca523fe..0b808fa34801 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > @@ -1420,8 +1420,10 @@ void iavf_down(struct iavf_adapter *adapter)
> >  	iavf_clear_fdir_filters(adapter);
> >  	iavf_clear_adv_rss_conf(adapter);
> >
> > -	if (!(adapter->flags & IAVF_FLAG_PF_COMMS_FAILED) &&
> > -	    !(test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))) {
> > +	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
> > +		return;
> > +
> > +	if (!test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)) {
> >  		/* cancel any current operation */
> >  		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
> >  		/* Schedule operations to close down the HW. Don't wait
> > --
> > 2.41.0
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
