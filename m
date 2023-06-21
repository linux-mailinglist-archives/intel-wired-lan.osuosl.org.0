Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8725738F57
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 20:57:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68A0260F91;
	Wed, 21 Jun 2023 18:57:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68A0260F91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687373837;
	bh=69IZSHhBK6ZMUTxt4A7lB333nMnCjB0THyHOyCuOKPU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Wtpr6kcFUk7Z15dA4Lq9CLfoX0wNSn8c76d5VnSd7Q6dJ5k9Z0VenTOiDP1cyNpls
	 HyjIKFRz+tD7c7cTouHmKbOA+GQ2EbDlqPcxVxjY0Q2wPz9Mk3U14WxaiTj9WC2X0E
	 8tdai0+eCwJ9iHws4qwVYJnzSArSBeJWcEXy3sk7Fkj+6ijiO9HesLDAEYoK2ci5Py
	 SrUpL8S6p2ZwE40MJV4W8jJUMk5T7gndRQx4/V897mvHIVjDRRUlXZ92uCBGcFP68W
	 QWP6zFjlzQ+vQxRflLmUZGqwwcfwym+na5+RhkhkZF8LxUKxC1AktVqS0rDMiXTT6R
	 XCpNbzd2KRBjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 08qwKcJ-CSHS; Wed, 21 Jun 2023 18:57:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3679760C0B;
	Wed, 21 Jun 2023 18:57:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3679760C0B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 01A0A1BF966
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 18:57:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CA75641F31
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 18:57:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA75641F31
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JZ0l5906OXU9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 18:57:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4464741F2E
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4464741F2E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 18:57:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="340614701"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="340614701"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 11:55:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="744281763"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="744281763"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 21 Jun 2023 11:55:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 11:55:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 11:55:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 11:55:45 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 21 Jun 2023 11:55:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J3t1WgNVqwSB32D3LVLDv8tSgkVuo81lckC9CN0iELT5chBL3+0hu6HsBD8XETZjhi7A1fsa/q/bzvj0JR5MAFjxCKmqoHi10iZJuOLnMC35NxQ5kC/9mzfj4+BY2UA2luEdFV/dqHtKKNWmKNDdT2WC+dcW9yBGZwk+zgNaHkaZ0aeoSAEmMrY/MWGWuDbVqPl2Le1eU9XTes/xCzgbPZjwy+EsTAhIG3EJR2svo1+bJ292WlXRE7pvR0buabmanecjLwAy1nKdX0aM7rOwIlnRXibEtwT1tsWRQsEZ/4vDtidzFBjU4pNsZqjWlnRF3u7/fo+/Ouo6hBYoZHyh7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x7wXacKakfOA9kX6oM5ldw8fAn7y8ur7Px/1SMSP1VY=;
 b=WteYwqpJNl6E1ztQZ4p4o54hTEjjYr+yFlPp98tjVf72KiYeqEOfMPGemO0Z5x0DqbnZRYQT0UIKwdav1yVWOHmsB2BzNql5j5qKdWB5pag5lE74fa3/Pxt8rPnBWLU+GwPVVfOcgU2pL9E2ihlRK9Q/AHe+uJAXVziCCnOhZLzCe3MhjJdRB1MKYl1dpuTYsZSGQlimbZtUmr7M4+cmK8XQAiT7+VNef1VUnjT/G+gcHPqKP8MwzhdKPJhDmHOMasPKXA2xU1nTgEo5UvUsO8Chzwllgk42LVgsFDA6waS8/3wDoHLZQrul0DalEVQl3PGuxVYZq31pVg+omAg2Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 PH7PR11MB6547.namprd11.prod.outlook.com (2603:10b6:510:211::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Wed, 21 Jun
 2023 18:55:37 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6%3]) with mapi id 15.20.6521.020; Wed, 21 Jun 2023
 18:55:35 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [RFC PATCH v8 03/10] dpll: core: Add DPLL framework base
 functions
Thread-Index: AQHZmsz08ds9noNj60q1X/LUfA+qnK+ETyKAgBFeTcA=
Date: Wed, 21 Jun 2023 18:55:35 +0000
Message-ID: <DM6PR11MB46570B50A01D81F54F1068369B5DA@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-4-arkadiusz.kubalewski@intel.com>
 <ZIS1FX0QAqDSvVUK@nanopsycho>
In-Reply-To: <ZIS1FX0QAqDSvVUK@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|PH7PR11MB6547:EE_
x-ms-office365-filtering-correlation-id: e457bc72-872a-4989-d5d3-08db728918dd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y8w6yk4tSHEIJe/IWZJDdLNnytsweI5upzXkTSS2gwKkWnGfaHjoGbM1gRaxPKhEVmW8aCuqFyIi+5Eyso9NOACsVw1VYiKSC3CdzbpCDSGaoZGuk4vsFCUadNnVZFLJo4/Q8EWMGnzKse4awVxsVku8rHr2wroTurpGI83bt+R9LLT3avSRq9k0kyGRGMNHpcSdapQQLLOtkRvyRHMYVkd9X8DQEw+OVAvvJ8YcEzlXXiDhatLK1J8FRf4xZpH4o9KiISV9R3GAAAhLnTJBnVWLJ/OP/dRr4sB8NHkZ6l2XYwrnLbucaVO+iaaVIkA248PHw7cvOfHHonMgZFauW+CPQZnMlbUzaXfVzczDopLL2CHq8HOhNYkDqsJf8aFSeqBNL++ABcDgaKmKJh4TBa/FSnaU37D467etTtRE6uIG1GSSkbh/PwTBj5B21oaHO0AZksRW+Cgpi1OG8Zu9Iuju8K2wqsRaYpDSJnfnC9GtcU6bnhuRz6OyBbZsSuP/xlZkWP5HE66HB2Gfdmi+dZ2YosmzyUdw3swY3Q1uvqIlOEDTUcLzmEdZbT0cwXSm/kUgxrgahGDw2WPHDsq0NU2n93o1x2Tu7g4jV2dYmIKAV9PR9d3Dt/a4ouVMxjYI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(39860400002)(396003)(376002)(346002)(451199021)(7406005)(7416002)(66446008)(66556008)(64756008)(4326008)(66946007)(6916009)(76116006)(41300700001)(66476007)(316002)(54906003)(52536014)(8936002)(8676002)(2906002)(5660300002)(7696005)(71200400001)(478600001)(82960400001)(55016003)(6506007)(26005)(122000001)(33656002)(186003)(9686003)(38070700005)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dWkLULTJfOTqdhvIQo86AIlWyt2Zlz0cF+DYiltnzDgT4boMFgHqqh81eiHZ?=
 =?us-ascii?Q?N5N7335xYFEbYBqJusn+je7p5c/c/9RT6PKLdL9CaU0x9la2n6Y4iAWGhRZ0?=
 =?us-ascii?Q?QDXFkHeHbqqgClh2MqU9v+z3xkude0uRSc3ut6Z7KGY1YaCnAYt3JuAtpqJD?=
 =?us-ascii?Q?Z64xWx7GVHPuxO6RfetTyvgtw1FrbQaEv5M1ZCQWpKlkRU0EQ3IhO98LhrNd?=
 =?us-ascii?Q?kEC/v/0aN+spUzz4QGC+tIkLqEnxxHCGXw/VskOaeeKr6cKsnbCwBWkBOJT3?=
 =?us-ascii?Q?pBfouHlMVdDZAiZhjt4SIH4bebDHLJDZFM9HgkOy8m9yXCs9wBXlFGZK5ENY?=
 =?us-ascii?Q?5EwVWCCIDsucD0YCAqgT7FSnwVANX2g737+6TKoeFUwcYUlczn7WY76f1WwW?=
 =?us-ascii?Q?5tYzGvDu5XkPfVXjWjRcCtTKYu2NLU6IbGDmnEG122pU/9KMWQMVpKnpw8SB?=
 =?us-ascii?Q?Ssgps/zHbCJirLZnlrXsDpCfWi6341NNJqo1eNKa41Oi9r/eBzkMeff8T7Ee?=
 =?us-ascii?Q?YtRwqYN4hl2p2fq2wKLzlr+2PmMtSO+IIHT43nfWScF6Jeptoibib0C+SVoG?=
 =?us-ascii?Q?NC2eLXQB23eYbHGwVcGp4UcBDkHj+iZF+sLaXu+m8WCYuYvyitmOOSK5mwOV?=
 =?us-ascii?Q?oWgYueu6ksv9tVWczl+1b9XN4luvppaRoTj9uvyJk3JKZN9viEN1Osq90gbA?=
 =?us-ascii?Q?AfeHGcOlyJsQD1bzhcoUBNjFmuqaeQpMtjEsNmZ99/4N9oMiOBwkG6accmUx?=
 =?us-ascii?Q?SHFeETRlCa/EB18dzWQOLKoz2Dn8vjhq8aW7WngO7GN/c7PYb8LD+ZeHMndN?=
 =?us-ascii?Q?/ylz+yIAf4djWMxBVV5vKURecUwdIgIaiK9gKEw+DqkMcY4TheEPiDIJEHsk?=
 =?us-ascii?Q?0tzYmDo3ui5H6kn8JWpPRvcximin5EIfSipsHmHFJKHNyUpcI8GU8P6jhzfG?=
 =?us-ascii?Q?WtofRq3ojkbkg/v4rb65tuX1GnhDM5aagAkIm7SQ8kF3M2ypL9amEBiKk4ip?=
 =?us-ascii?Q?ruFg6q7fNYbt3BUFxT+QWiI/8ks/8AFmoKBRvknncLG7rVzc9MfwipGILmqe?=
 =?us-ascii?Q?Ytnmthk/+ZrXH/5Y66XHy6Pe5lUL9YE2BQ/8MJoIHkMXFiS2HOlC4A2qwI+j?=
 =?us-ascii?Q?8Gf+rtE3PBOrT3+KfE0VWL32iAKVH8WmXMS81hRsO+qQpBa11HfDn1UFSuLH?=
 =?us-ascii?Q?6XG4eyrQzu7KtUTp2wHWx2PGOREh605pYyodvuNrhOTBw7cBOXS+sIvScfne?=
 =?us-ascii?Q?DOhc3qX3F9Nxp0erCzC9fMUQRkDGew2tVuJNsijtn6leUgO6MVqM4C1iIBs6?=
 =?us-ascii?Q?B+XD8m/ltutlUAvRDxWd774dBPLMD/wIsbuHuNgQiNa+qUwdabECLA+/NSfR?=
 =?us-ascii?Q?trNKZxRsVBWW/LoEb/Y+iUVGvF4jMtDTTfKdjJ5WSme+rBJckPAqg25a6gR1?=
 =?us-ascii?Q?NWZNCNTQZajt6jZ7Dk3DwEPbMVKckgvciaC9sJg/gZlBmNM2Tmpd0tSKGwwk?=
 =?us-ascii?Q?rHMMXx5XZM3Hdgib5thl5ZnwTPDnW59YLn6P/p4eqyhkpeReNIcyMygG+amJ?=
 =?us-ascii?Q?8l1ZOcjEOMb9lyS1FNmoMsmRkNLYXqsGr/qhU+BupX6s0asxtuotfrn7aX+s?=
 =?us-ascii?Q?7w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e457bc72-872a-4989-d5d3-08db728918dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 18:55:35.5797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B4aq9ZNThqBueQ2sTzjn4iipApM4A71gPxUA+mlYqeTYNKTXHrUr464FmGURO0DL8Wsr48ky+ZsEWFvtIV36cJGaJZT7pAK6/a/WKSZ0WSQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6547
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687373829; x=1718909829;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x7wXacKakfOA9kX6oM5ldw8fAn7y8ur7Px/1SMSP1VY=;
 b=UGwu5hTFdcffUfFPp0e9caKbhTX7rg2T9jJhVMhEkkR+aO6kMn4fq7y/
 d8kuYr8GK6pQM0GH+/aOcQfQEcyR49udhuH97lzderNZCypABHbvJNHKt
 xN8AtkoKfEnGdblKyANBQWgJBfCcTEO4BzwLHhe1gGhiqbCNaiCjfAOm5
 FdUwROhpJw29J5CsL9uSAZ6/+zI4zwYnW/PkrYgbbeDQQ43V/RExlMrVI
 T//LUDj2XpcbC1HTdjerq9MKgWV5dllD0RtQiJG96engSME0hEbNk0z28
 TWEe90FH3Bs/o8P9f2hhEhe7VAQoiNOgDmjrSWscHm2G9WkpK2JeT5rDW
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UGwu5hTF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 03/10] dpll: core: Add DPLL
 framework base functions
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Saturday, June 10, 2023 7:38 PM
>
>Fri, Jun 09, 2023 at 02:18:46PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>
>>DPLL framework is used to represent and configure DPLL devices
>>in systems. Each device that has DPLL and can configure inputs
>>and outputs can use this framework.
>>
>>Implement core framework functions for further interactions
>>with device drivers implementing dpll subsystem, as well as for
>>interactions of DPLL netlink framework part with the subsystem
>>itself.
>>
>>Co-developed-by: Milena Olech <milena.olech@intel.com>
>>Signed-off-by: Milena Olech <milena.olech@intel.com>
>>Co-developed-by: Michal Michalik <michal.michalik@intel.com>
>>Signed-off-by: Michal Michalik <michal.michalik@intel.com>
>>Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>Co-developed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>---
>> drivers/dpll/dpll_core.c | 953 +++++++++++++++++++++++++++++++++++++++
>> drivers/dpll/dpll_core.h | 104 +++++
>
>Overall, looks very good! I pinpointed couple of nits below, nothing big.
>General question: Why do you put documentation comment to every static
>function? Does not make any sense to me. Even for non-exported functions
>I think it is overkill. Most of them (if not all) give the reader no
>additional information and only make the code a bit harder to read.
>Care to drop them?
>

I forgot to respond here.. I would rather leave it, but if the others think
the same way, we could remove them.

Thank you!
Arkadiusz

[...]

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
