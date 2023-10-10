Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 106DB7BF9C2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 13:31:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90FBD417CC;
	Tue, 10 Oct 2023 11:31:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90FBD417CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696937464;
	bh=PF0Tkv43LyAQpNPlpmlWX1QNtNauEdLY/eyA5hHSGYA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dI4DLFlh8KAZpF8GfL+iYbAr3xg/wvntOzX64P+UUi2OKPYq6yqVgMqUYiD49YVhp
	 AuavAMJWSODIABkWngjqKobyUru9zhszibpyos0Ic4Cdz85rYs1Tgibs7s88VISNXe
	 Llx0dYbyafwefFsQZGbeBWXJOlrn2xY/FtmJGSypu6POKAfq6gCr9m9Gyg2qT+I+jJ
	 ybMfiS2WC1OZeVb721ILPQudE0KyyMHafUSFwG8A+2+sg/vf/4g+3QTXSv2IhiKa2r
	 qzUX7bLp+RGaq89trkbx3GvCot+rnUb85hCKWwKUvBG9ABSn3K230uIo4/IAnIrXh2
	 0I7RYyveA25Hw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D8HTq2o2ElqJ; Tue, 10 Oct 2023 11:31:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C09E408BE;
	Tue, 10 Oct 2023 11:31:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C09E408BE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A84A21BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E9B94054B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:30:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E9B94054B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LHM-w122hFMU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 11:30:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 935C6401DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:30:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 935C6401DD
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="363718347"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="363718347"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:30:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="1000658112"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="1000658112"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 04:30:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 04:30:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 04:30:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 04:30:55 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 04:30:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G2LkzH4dCq2hOGxcVAkpsB3785rGrZxhpMMHiE61RBZBZlmBdaQgE9sKPJsLB98P0gaKxqshzl8p2gbedxHe66zWQ6yoGLPBuwxK6l8tZzaZUzwGENjEBtLUyB93vluO0Q9y8sV7G5QZDVthXiW98lrDU745Q5q21py86nh5fnZyMUmJTAWREc+NNgzzxU/eiAN2+QGuC9MBR+o3qYc2tKbihnUfDwfKl/cxO4UHHVL2TKWfnw9A9BubpnzGfWQnBcTBZ7v32ip2mcAWWcHUo4D95+1CDM9tIpVGP4B2hETNHUoY9NmfUTR8W+X2FOlwV+Bt+GcfA6vI/KW9DXxaLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CL3HptHMHHwHoWYMpUsY5GE1iEpye1MPBPv1/w2T0zk=;
 b=c5q2vtzAjCWD1n0HIpxMS2wZLVNuQy8mZxgu9fbMD+FRkPtRaBQtSeVCR3Pt3VZzt6MYvFt9aOQjtIvzBYtYOuJ4b6lARI4E02YMZKDrKm+BNsOVdeAfZ9+Z4381D1qmRXc5G+SxyXd0gAKVCzv6B8AHyiNwQh8kibZh6VWEGnFz/nOT01yAV+litqHtwSHVwZ2yTg+w3TqCw0Nr/1cbWJO+yaDMO1gr9fFrtahi5lQotS7m+aOj0QnwBoKPY38J0KdYqGl1r6Zqh18CZF22ZZzxTnOo9M1mhBoT8L1c6n0e/hlKgZa8WSL+JG0UcvAw7zqSGK8ukwSPISsBm1zmlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by BL1PR11MB5956.namprd11.prod.outlook.com (2603:10b6:208:387::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 11:30:52 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 11:30:52 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/5] iavf: simplify
 mutex_trylock+sleep loops
Thread-Index: AQHZ+xBUzGJaiZ8enU2sIz/BslrYXbBC45JQ
Date: Tue, 10 Oct 2023 11:30:51 +0000
Message-ID: <MW4PR11MB5776FAE3D86203A223769BABFDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20231010002444.43507-1-mschmidt@redhat.com>
 <20231010002444.43507-3-mschmidt@redhat.com>
In-Reply-To: <20231010002444.43507-3-mschmidt@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|BL1PR11MB5956:EE_
x-ms-office365-filtering-correlation-id: 4962d9f6-8db3-43a9-24ad-08dbc9845bf7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2MPUrzu1eMmLsB0AJyu00n5soJn3klZvovrHJKuwy3JpicEs7Cw45OfEdSV+68blGqvPTo12erVMGBlhyCF7Zd44aeWC+/qepMdtaoHCWNQDbyuwkzwWeTpkWLiDgQXP8V1XS3l4XeyBGqnqn5rIkzTUd8iJLmg2KTXPX4GwuIn6QLrPL04Gp0Uy8MmwQ92f9UF3rt782tlhRjpdLEG9j65nZEWxks7M7gwXr1F7IejnH2cUPIBDdNS7UEcuoTN4LMvoji9G0Ai0PzzY8vBAdpJcTyiNKLZnGYFXYOPL0Om37vjG6CLxJDXggzDecbb5oYElQrHVvA8pQA2suSL3m2e2gzd3iu2RXOEUSGLynAjLZTfl+aU0NneJzgIbj4Xs1XNMJrUkAF0bQO88FFWTlptfxx+NZZYM4E/Q/FLAFuo+F7aQ2JKSVoVo2NYDkosG8GTvvSQ9etEle3T6v2yhbRTJcGwaD4CZ7IZBVYAUGbn2VcHJtpfgx2embwbUXhZq/6tlB+cSAlJxfvYEvvJEyqid3a/RhUHys+SJcWG4/FeVTE3htzJhGmgB1oTzmNeVUC5V2hCfQJdgh9j0GOK/XVUUEFVhSEMbViL0vouZv+E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(39860400002)(366004)(346002)(396003)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(9686003)(53546011)(107886003)(6506007)(7696005)(478600001)(966005)(71200400001)(26005)(83380400001)(2906002)(5660300002)(66446008)(66476007)(76116006)(110136005)(66556008)(54906003)(64756008)(66946007)(316002)(4326008)(8676002)(8936002)(41300700001)(52536014)(33656002)(82960400001)(122000001)(38100700002)(38070700005)(55016003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?64PyVRkFbfsLjBVbPrPD3iihxUKNohqiOBGPaqqES5H7HUyfARbeA/l5cIAM?=
 =?us-ascii?Q?6Ql1LE8p0lTXB6bvDdfzOPJ3//dOECAtmLCehgEKS/0rT2rDYW3QyEat00nn?=
 =?us-ascii?Q?+x60FYcQ2iksmcJrEhoVJCwp1TiqYHNqk7ScIxSh4GmPj0+YZHbEZheTVxP0?=
 =?us-ascii?Q?7MDIkLRrRZNo4BLyxzul3Wuu1T232Z4UaFLFYoj5TnadHQ9gwAOAcglRGlnA?=
 =?us-ascii?Q?V+jjGtVKrckxnwvq/gu8aGXyusYK0IAjE25D0mgFGG5DHARAMsrSCDZyKW+P?=
 =?us-ascii?Q?YZWvVnmQTPKmvts7Ss68WH22Xai3oZat4xwzHoaKI2KHZr84tEKGHtlc1Wga?=
 =?us-ascii?Q?4Qav+Lyfk+uyQZHxQonV5Ybyb75M8hBaOE3X2j8qayhPGFZ5nj/1jUl3s9Lh?=
 =?us-ascii?Q?2m54rBgohdGkCvK2cE+oAqOgts/u/bfz7F2DQu14T6ACJVcSw32wcEabJAhW?=
 =?us-ascii?Q?/g1M8czNIsGE+sMECwDF3myKroJARny56MCWAyDeVuWKB+ETD0++r9gnRNwz?=
 =?us-ascii?Q?l2LkGMrYcSh2wPPAQ+/2SBIo7YqmOmlzqqdDDpz/JMC9q7XgUq2jpMFJxpqG?=
 =?us-ascii?Q?9N7pKUl/maSjf6u2MDxrG2kj04WlRgprf0pwHJU36pEkh32Uqf71qUfnQwg6?=
 =?us-ascii?Q?I7LDYvrWfBkRMZW3PaJ0M+d8vDzMmNLjIgbXB11b3KcAIMlx4BdZXMV2PieK?=
 =?us-ascii?Q?o/2L4kfTXqgV4WY03hacnGQC4Gv9Kx+1wDZjSWuU2gTyt6JKQi+g29wNwXl1?=
 =?us-ascii?Q?bmX/egMKKLncEiO/Y6SEwiyaQUIMg38EHU+CyA2H3LaJm2KrMkSVZcMSOlmI?=
 =?us-ascii?Q?eCxh6OlkAKEy9SXOmgIjaowJbnpgt8u7HhDkAZparme2VsYLrmWhp3KeltQ0?=
 =?us-ascii?Q?ooMIPT8U7CIRChRxPE7oNQdHe5KjghF5bedCmo5hpeSYxGuuLoNr0LQcofYZ?=
 =?us-ascii?Q?1OwRTqT88XarODqQk9qCy6aV7nOeOvPJ1U8049A2Pj/85iX2D4/r4Hs6Fmc/?=
 =?us-ascii?Q?jlC7jiizEO3naH92JFhKI0yOS1VcE0Fmzcnkw+T5gj6knIA9w1MdAI2MPv/l?=
 =?us-ascii?Q?fQD8c/TKZ5sXK812tISF/VLCed1EWprKm3zJTvlOgMnISh8DZaWbdFyKK0mc?=
 =?us-ascii?Q?TZd2ZrnV0rmWOhwstOwkgWPGOV2+xA3+045nDdve6NIlBc5nPo1sxgvC70sX?=
 =?us-ascii?Q?o8Mvu/+hH7I3ldQdlSOXCT04xUUet2J4gECSAbgy1UmVeJRIqFaWnPD1D3b1?=
 =?us-ascii?Q?PlBP9lmaNp+3m28ot8Q1zwvkKEH57kyxBh8mYEpZ++nz+KTqCE82jLJqOxKK?=
 =?us-ascii?Q?bj1yitJ5dwrv5UbUHEwq5zUnGSqKCiDrfIu5hyhj1plLNXOid6g6yD6q4UuH?=
 =?us-ascii?Q?RKqKj8gAckVG8WxSlz7aDxMRUR9vakRgNyNPPBil20So0exEkZ3aDhoEXeAb?=
 =?us-ascii?Q?NSoCPiL/enJ5Bz+kBEnXj7sTR4qSzyCUBg11yqBAc50kFD6kFyhpY6YE3b5J?=
 =?us-ascii?Q?o12CcLjnT+VuelsIipL0HMemotZ0uBZehRuOEgPN6rMuDAOvvhBJiFaQ59GS?=
 =?us-ascii?Q?Gtgiy7w+qQHvG4LCnZllSEIYjR7RtAFmO2GhsITE?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4962d9f6-8db3-43a9-24ad-08dbc9845bf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2023 11:30:51.8737 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P7kuOro28056iOe/ij+vP6eUCnvJjxadaj4bwMBLTmvT23tBE3uy7vgF/RiU4R6Hxj4D9vK8HYxT7GUoGLpNAAUmU4UXHqNefbrPM4Hdcss=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696937456; x=1728473456;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YknFEk8q49RYfw+2g0x9MdKjLUUVpwWM8Kr2+Tg4VRI=;
 b=cdHKwpj4q/jFg3/L7RsfP2bgqF8H/DFBWMZ9F1gpY3IX0AJzXk3tv64G
 V6Od9EcG55tYNWpyouzBHo1F/l+aHVvQ3aJuRDM8RWnvgEm9lQVd3mVLj
 Jq5hfSW8F1NB1l6cxPogWrrpeU9RyUNh83Hr7Tjzihz2ht84g6Q4iS4J3
 LISZ4YHNISBaY9xfX4l1IdvXUffrJsMXdzt3lFE5/TZT0efmt/u1CoBME
 7JlL2ARtgTRCkr5hFb6Vzp2JYL+GfRKqbqhqN7ocjbPn8iIDfx0MYht9F
 2r4txj7E8U6XNbmnIexCUgNFNpvpt+LFZZEPRvhVV1rnUCAYgvW95uANA
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cdHKwpj4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] iavf: simplify
 mutex_trylock+sleep loops
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Schmidt
> Sent: Tuesday, October 10, 2023 2:25 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
> <radoslawx.tyl@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next 2/5] iavf: simplify
> mutex_trylock+sleep loops
> 
> This pattern appears in two places in the iavf source code:
>   while (!mutex_trylock(...))
>       usleep_range(...);

I found a few other places with similar pattern (iavf_configure_clsflower e.g).
Do you think we can fix them as well?

> 
> That's just mutex_lock with extra steps.
> The pattern is a leftover from when iavf used bit flags instead of
> mutexes for locking. Commit 5ac49f3c2702 ("iavf: use mutexes for locking
> of critical sections") replaced test_and_set_bit with !mutex_trylock,
> preserving the pattern.
> 
> Simplify it to mutex_lock.
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 98ecf5d5a2f2..03156ca523fe 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3016,8 +3016,7 @@ static void iavf_reset_task(struct work_struct
> *work)
>  		return;
>  	}
> 
> -	while (!mutex_trylock(&adapter->client_lock))
> -		usleep_range(500, 1000);
> +	mutex_lock(&adapter->client_lock);
>  	if (CLIENT_ENABLED(adapter)) {
>  		adapter->flags &= ~(IAVF_FLAG_CLIENT_NEEDS_OPEN |
>  				    IAVF_FLAG_CLIENT_NEEDS_CLOSE |
> @@ -5069,8 +5068,7 @@ static int __maybe_unused iavf_suspend(struct
> device *dev_d)
> 
>  	netif_device_detach(netdev);
> 
> -	while (!mutex_trylock(&adapter->crit_lock))
> -		usleep_range(500, 1000);
> +	mutex_lock(&adapter->crit_lock);
> 
>  	if (netif_running(netdev)) {
>  		rtnl_lock();
> --
> 2.41.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
