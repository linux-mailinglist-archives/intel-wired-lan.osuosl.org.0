Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9BC78243C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 09:15:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B41EA40A58;
	Mon, 21 Aug 2023 07:15:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B41EA40A58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692602134;
	bh=UWCVqHZ29U7BZEt8KjXtsq1n3myau8dL/xU1uHq7lRc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K6A//iLbTfjU//DxR8ZXWUO/YLPbKbJbt+m6Uhw41l9JZ/THmtjUJ4Agf6whs0Z1V
	 AoPB+vE5fF+2T+DUDmkxpCGjswMCFLX9/QrpEHGUgn14QyZxK+XxsyT5DEzc/BnsxB
	 1VqhfN+Yx7E0QqHzRQZ9sPQLNImzzvkhjtfkVh7cazh+6+dv5n00x9iwxzIXgug6/4
	 oJAahQAq8W2eaWu2mF86T7Ip2K6T8Omieg+V2VAd3Qfwk/A/4G8YyxFbN72df6gdiv
	 3wGK8vz2iEHStUqQ+4c6Mznuqrt92OMqR9hBQqp9nejnj5M5w4FKigRNujtqKk1MPU
	 PsE3k5nnER3bg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KHiq5J76nyyr; Mon, 21 Aug 2023 07:15:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4AC6E408D4;
	Mon, 21 Aug 2023 07:15:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AC6E408D4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E5F191BF304
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 07:15:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B580D40450
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 07:15:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B580D40450
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vij_G3HX1ImI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 07:15:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B44AB40530
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 07:15:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B44AB40530
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="404519474"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="404519474"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 00:15:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="879408766"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 21 Aug 2023 00:15:24 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 00:15:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 00:15:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 00:15:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 00:15:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oez0//oS/BNZ1QoEP3J/OzzCY3/8o1RX4GX9aB1/T08DqGQKoZxFx74za/OjKyVB9pux+uyo9z3wBufHDmsFt4FEPIr9COv7ktuW/TjpYo+N7LKUyPA7Wn7I3MBH9pzGBb1uc6eQ7NU5flLfxJL1GH+ZHbX6hbVXGb/5YE7EnGr2VNofOCmNXCUFfozctlzK/N2Pfk1PAteh2+tXeoZUJwkqm4T8W1kJo+wOQJamqXF8Kf4eUsZYDOvadx7cQyfQb//IiZLYMWRAn8oTz68Q8jRVkWGc8UhIoV4teQOjVboUQJKycDS6MMAa9V9s++jq0TQSnLdkjgiCw6gwNLrVcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WPJKgYfG6nuGL6qbzkAI3SRcrvYrdUVoi5g/VwVi6Vw=;
 b=ad5pijLqd9gj5lavevlLYsCetYhCIV8z7GrRkegsvXR4USEMUSF/dZPmS6CD9pJSCjnMcwKkp5L9AwfEnoYQCzHOGiPcAAF8mHzgRI9DMpDeINRGPSPO0RQn2CEqJ6ZiXAhEyi8y1ZHV/jyp57VsXpkzH3woTnkN0No8ohf16yJYeOm52oUOYEXntFkdtuEX10ChZTAG5DDN8PrqBry1wdNxUMyw/dLU15q8unKsVGJgZM1pOojzcUSWE0E6IDpQhfvCo+Mqoj9ayrvs7QB57beqmiEPcEI38HAx1gzj9DkHJt+/DUL2xrOtTCvKCsG+THvXv86oTsWJrm/aXqF8tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by BN9PR11MB5355.namprd11.prod.outlook.com (2603:10b6:408:11c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 07:15:14 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::ce6:bce1:eaf8:ad80]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::ce6:bce1:eaf8:ad80%7]) with mapi id 15.20.6699.020; Mon, 21 Aug 2023
 07:15:13 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: Subbaraya Sundeep Bhatta <sbhatta@marvell.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Thread-Topic: [EXT] [PATCH iwl-next v5 00/15] Introduce the Parser Library
Thread-Index: AQHZ09iimYH4idWnOEaL8zqZNLNnBa/0TpsAgAACGYA=
Date: Mon, 21 Aug 2023 07:15:13 +0000
Message-ID: <DM6PR11MB37235620147B5FBA1C204281E71EA@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230821023833.2700902-1-junfeng.guo@intel.com>
 <CO1PR18MB46661FF0DD278978575A20C9A11EA@CO1PR18MB4666.namprd18.prod.outlook.com>
In-Reply-To: <CO1PR18MB46661FF0DD278978575A20C9A11EA@CO1PR18MB4666.namprd18.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: sridhar.samudrala@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|BN9PR11MB5355:EE_
x-ms-office365-filtering-correlation-id: ff819cb8-a1ec-42bc-3823-08dba2165d19
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nLMYxN2OE2S2HYjBRBmy0UZ5qk1CfE4Y9zpHgOnGiIcg0PnxUp8aExPyar3Xg8ulWmkb0IPqIHJK14+KzKkFpG1YoeqrsIF0x/04QNHXXEKhumiXoO75suA6zMxg1qPqF3Rd4j58mbviGItsYD6niSNIFnTjrBfwNcPmYb9UDMSE4xt7UvVROkOQuSYPhkwXES4Xp6R16wUZTotT+d7LJcWev2PQNkULZRKzo2zhvDi7uwM6sjaipgRm81LPhVhkUGx232AyrVgDoCxB9Txisko8tDA5xi/gLKbWkGTiSajvpab3Nww4oGTmnvM4xmFVB2m9/OSOCX/lqpkUS9LUHvq/otRvUzEyLIQrzvrmwVxMjrhC/uOX/kb/KimuDwHzejS6w28CBwt2epqbf/nsZBA/FEH2gUzPyfByW4XdKfeFyhiy7JoBPGTyODlsbyNZhBuDJOXtyKHCzWDRzckRlJ+GCdfaeHK4e6iektbMD81V9ONfP5XN0iA78NDV2Ag0E6B6AG3bPAPoi6WMPX7YIJdpyd0nhnrOzE5QQapiD6XJnIhBDbntLj60VQgPp10W+whBbyNpJ6vodhqYDMyfke6DVHTTnyflp/PyMFzQi1s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(136003)(396003)(376002)(451199024)(186009)(1800799009)(2906002)(83380400001)(53546011)(38070700005)(7696005)(38100700002)(6506007)(5660300002)(52536014)(33656002)(26005)(86362001)(8676002)(8936002)(4326008)(66946007)(316002)(9686003)(64756008)(54906003)(6636002)(66446008)(66556008)(76116006)(66476007)(110136005)(82960400001)(966005)(478600001)(122000001)(55016003)(71200400001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fl/IUoaX2NIBFdQIFRyTXgKNDie4JTo6IvVA+/UPFNiR1pg02X4QZdkIrK5+?=
 =?us-ascii?Q?3C3ZfHZfJbVyY7Bgx4KVAijmbLAbiXw4cEPyIuhk37d+/sB0WdaapYpMMUkg?=
 =?us-ascii?Q?O5z6Wrsfn6+nX2MucTCEMgSj5TFEgrm0lhpWOIvO6D+Ca4KjGBU/wp+JZUU4?=
 =?us-ascii?Q?St7R60UvZTJXA4oNzYcU3d2j67VYcT/177gbdewj60FvH1zTH3Jc6PS2JK2g?=
 =?us-ascii?Q?4fWeRwMdo7pi0U569AFvl5ca3okG1qiyVoXuFU7d23U04ox95vA4T7T5RLzi?=
 =?us-ascii?Q?zipRewg3Yxtt07K/cD4xs7Zw0ejUVUWU4Ay+yreCWONpnFlKlqgXyPjaZ2BK?=
 =?us-ascii?Q?nTJDw8H/WXfM7GepNKcu2mWDNF2QT9fiZHa7hkgl4Ly7cFNJSN9P7Pe589ZY?=
 =?us-ascii?Q?kUV57avW1ugESHI4Brct8bpQFnqpOjZ+WlFmVDWNSM8WSngNKeErpy+0WuFT?=
 =?us-ascii?Q?mwPQbRPE07UoxWi/Uv2yg4vrxJQjh5E1Q66g/28mZ68RtBpq8cyLGAwKxOdV?=
 =?us-ascii?Q?rC+Oa2+4PvP4vXShD256/assIZawzug4EJrcKKiZcOuor9/NeFhUtEAmMuZs?=
 =?us-ascii?Q?qwtoLwSlFodKxJZPNFxI1fv5aOpm+emrvwWZ2xcm2mFI8RBR5l3hAwKOnf/9?=
 =?us-ascii?Q?I2VKwoVOmgKjS+jFFtvXvVXjxQHU2T+TgY30BoM048HUBGaRhKmcibsLi8PZ?=
 =?us-ascii?Q?a1SEhXt1+U5NsnoGX6o6MxCu6SZAYHeMBrPuhHYugyl9XyEWOBPq+ebKxSvp?=
 =?us-ascii?Q?4GiNaxW1fVZ+w4dXXcfc6SU/5LjRHlN6PV82h2jYlyK+JtS/9KMjwLzNagot?=
 =?us-ascii?Q?Rg4RSn4DKUACmgMaTciqFZA3X+sA1TNXscet32Dan+SF4MvJF0GfN91jK2W/?=
 =?us-ascii?Q?7dmR8kuNn2U1Wsl0XY7xFBRJL7nOOpwUr5/ujo7URxuKMZr1H4SckhkM+QfV?=
 =?us-ascii?Q?epyuCWyQGN3X9neMdIoajjKxypz7HsVfV1+7xgFiS3DxZieJlfuC3rewBXJv?=
 =?us-ascii?Q?lQ1/L2AEhkTJfER/h8TlLbgn/U4mrhAgtpnYe2hTTLB+HPkEf2orhFxIsjkQ?=
 =?us-ascii?Q?gL1x85n5QQDSa8LoXGtEA9s+UiV4opPlLv8KiRMtHOvB2N8X0uydgqsWzlww?=
 =?us-ascii?Q?yNkb+mhXzRV+P3IGyfaT1XjkuF0Df5AKU30X9HHlwxufF6ivRSV9rpR7iM3S?=
 =?us-ascii?Q?BwxFCB5YyPvFi5qrJKsIWxWYykYLd01L18uLu1ykl68w0/KZQy1v1dhLNKUR?=
 =?us-ascii?Q?34zd6c2DYe2JyOwuiNApSR3DYSphZOlwz76/ZhWzDoJ51qVklkNOgQf3fe9o?=
 =?us-ascii?Q?1UeB2psd7eODdbQCav8v+GRHkF09nphDDXM+F/1xbS6Vu6+Dp1FNFF5HaHeE?=
 =?us-ascii?Q?NnNPW1NIViGMzlRhPvYlc26XABYZ6frHwq9esaNIJQawBvqIChiOne5nX3Uf?=
 =?us-ascii?Q?AGz9uBL/KimMOO9NacpWWNpcn0v9MbFYeItdo0HKEcUO+828wafIyrgVaGqY?=
 =?us-ascii?Q?LRiueM1Nuc6vSYe189wmyDHEdvyS/xWGDLOaSlUNDMN0Uwc/2wBDD6tct+TK?=
 =?us-ascii?Q?lV8+gMWuodYiKrrdWcOg3KNmTvAwYOr2NKqLlJT4?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff819cb8-a1ec-42bc-3823-08dba2165d19
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2023 07:15:13.7807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QB87ZrDvEGApHSLW9VioMS4vNMQKSVraojHc753JMDqrynw9W91toTb0SydahSWAce3R3cFozUBFAbmrmNe2qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5355
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692602121; x=1724138121;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b3hJ7EjAn3LQcodpMbQ4jKWONxacYGys0hSVnKsFfpY=;
 b=SgIoU6sTzBlj64ixRdrFXCAz1mRXkuvQs1FYaNBQ8zaBPqkEh3aJESKn
 XBC3Ps8TjawfFy+uDEMM+kNyRj6P7FybFPcJaH14EOYjY1dYeOZjHU1iY
 BkK8CS8vXwlPH2Bb2EqlhpUQaMR0djZG2H2G1dTnFO0h872WAxUVnaKej
 0eMWqud6qpRJU5EkHP91Bgo6ecLf2byppubqCMQlN8sWnpOVkkLzpwMtg
 hZUySHqKl2QYtlbwxrIKmd+pIJsPhskBxCy6c2cnCS5bb0EqeJ+ykD9bw
 r5QmpICMY/+2O92TuxHgXWovo1BXpf8ViAv/PAFl0FcrTtuXePdDDP36N
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SgIoU6sT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [EXT] [PATCH iwl-next v5 00/15] Introduce the
 Parser Library
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
Cc: ivecera <ivecera@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Subbaraya Sundeep Bhatta <sbhatta@marvell.com>
> Sent: Monday, August 21, 2023 14:46
> To: Guo, Junfeng <junfeng.guo@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>;
> ivecera <ivecera@redhat.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>
> Subject: RE: [EXT] [PATCH iwl-next v5 00/15] Introduce the Parser
> Library
> 
> Hi,
> 
> >-----Original Message-----
> >From: Junfeng Guo <junfeng.guo@intel.com>
> >Sent: Monday, August 21, 2023 8:08 AM
> >To: intel-wired-lan@lists.osuosl.org
> >Cc: netdev@vger.kernel.org; anthony.l.nguyen@intel.com;
> >jesse.brandeburg@intel.com; qi.z.zhang@intel.com;
> ivecera@redhat.com;
> >sridhar.samudrala@intel.com; Junfeng Guo <junfeng.guo@intel.com>
> >Subject: [EXT] [PATCH iwl-next v5 00/15] Introduce the Parser Library
> >
> >External Email
> >
> >----------------------------------------------------------------------
> >Current software architecture for flow filtering offloading limited
> >the capability of Intel Ethernet 800 Series Dynamic Device
> >Personalization (DDP) Package. The flow filtering offloading in the
> >driver is enabled based on the naming parsers, each flow pattern is
> >represented by a protocol header stack. And there are multiple layers
> >(e.g., virtchnl) to maintain their own enum/macro/structure
> >to represent a protocol header (IP, TCP, UDP ...), thus the extra
> >parsers to verify if a pattern is supported by hardware or not as
> >well as the extra converters that to translate represents between
> >different layers. Every time a new protocol/field is requested to be
> >supported, the corresponding logic for the parsers and the converters
> >needs to be modified accordingly. Thus, huge & redundant efforts are
> >required to support the increasing flow filtering offloading features,
> >especially for the tunnel types flow filtering.
> >
> >This patch set provides a way for applications to send down training
> >packets & masks (in binary) to the driver. Then these binary data
> >would be used by the driver to generate certain data that are needed
> >to create a filter rule in the filtering stage of switch/RSS/FDIR.
> >
> Which application? Can you provide usage example too. Is it okay to
> parse binary data in kernel driver? We do have similar requirements I
> am thinking if we can leverage this for all drivers.
> 
> Thanks,
> Sundeep

Thanks Sundeep for the concerns and feedback!

Yes, this feature is to make full utilize of the Intel DDP capability for 
flow filtering offloading like FDIR and RSS on AVF driver. And the 
Parser Library is the foundation of the implementation.

There is another patch set under review to enable the FDIR of raw-flow. 
https://patchwork.ozlabs.org/project/intel-wired-lan/list/?series=369367
The patch set for RSS of raw-flow enabling is under preparing now.

Currently, the implementation of AVF method (tc flower) to configure the
raw-flow filtering is also in progress now.
Maybe @Samudrala, Sridhar can help give some info about the status.

At this point, you can try some user-space applications like DPDK/VPP
to understand how the raw-flow feature works.

As for the risks about parsing binary data in kernel driver, the below
statements may answer your concerns. Thanks!

> 
> >Note that the impact of a malicious rule in the raw packet filter is
> >limited to performance rather than functionality. It may affect the
> >performance of the workload, similar to other limitations in FDIR/RSS
> >on AVF. For example, there is no resource boundary for VF FDIR/RSS
> >rules, so one malicious VF could potentially make other VFs
> >inefficient in offloading.
> >
> >The parser library is expected to include boundary checks to prevent
> >critical errors such as infinite loops or segmentation faults.
> >However, only implementing and validating the parser emulator in a
> >sandbox environment (like ebpf) presents a challenge.
> >
> >The idea is to make the driver be able to learn from the DDP package
> >directly to understand how the hardware parser works (i.e., the
> >Parser Library), so that it can process on the raw training packet
> >(in binary) directly and create the filter rule accordingly.
> >
> >Based on this Parser Library, the raw flow filtering of
> >switch/RSS/FDIR could be enabled to allow new flow filtering
> >offloading features to be supported without any driver changes (only
> >need to update the DDP package).
> >
> >
> >v5:
> >- Update copyrights of new files to be 2023 only.
> >- Update patch set series prefix.
> >- Fix typo on patch 2 commit message.
> >
> >v4:
> >- Update cover letter series title.
> >
> >v3:
> >- Replace magic hardcoded values with macros.
> >- Use size_t to avoid superfluous type cast to uintptr_t in function
> >  ice_parser_sect_item_get.
> >- Prefix for static local function names to avoid namespace pollution.
> >- Use strstarts() function instead of self implementation.
> >
> >v2:
> >- Fix build warnings.
> >
> >
> >Junfeng Guo (15):
> >  ice: add parser create and destroy skeleton
> >  ice: init imem table for parser
> >  ice: init metainit table for parser
> >  ice: init parse graph cam tables for parser
> >  ice: init boost tcam and label tables for parser
> >  ice: init ptype marker tcam table for parser
> >  ice: init marker and protocol group tables for parser
> >  ice: init flag redirect table for parser
> >  ice: init XLT key builder for parser
> >  ice: add parser runtime skeleton
> >  ice: add internal help functions
> >  ice: add parser execution main loop
> >  ice: support double vlan mode configure for parser
> >  ice: add tunnel port support for parser
> >  ice: add API for parser profile initialization
> >
> > drivers/net/ethernet/intel/ice/Makefile       |  11 +
> > drivers/net/ethernet/intel/ice/ice_bst_tcam.c | 313 +++++++
> > drivers/net/ethernet/intel/ice/ice_bst_tcam.h |  52 ++
> > drivers/net/ethernet/intel/ice/ice_common.h   |   4 +
> > drivers/net/ethernet/intel/ice/ice_ddp.c      |  10 +-
> > drivers/net/ethernet/intel/ice/ice_ddp.h      |  14 +
> > drivers/net/ethernet/intel/ice/ice_flg_rd.c   |  73 ++
> > drivers/net/ethernet/intel/ice/ice_flg_rd.h   |  24 +
> > drivers/net/ethernet/intel/ice/ice_imem.c     | 279 ++++++
> > drivers/net/ethernet/intel/ice/ice_imem.h     | 217 +++++
> > drivers/net/ethernet/intel/ice/ice_metainit.c | 181 ++++
> > drivers/net/ethernet/intel/ice/ice_metainit.h | 104 +++
> > drivers/net/ethernet/intel/ice/ice_mk_grp.c   |  51 +
> > drivers/net/ethernet/intel/ice/ice_mk_grp.h   |  17 +
> > drivers/net/ethernet/intel/ice/ice_parser.c   | 562 +++++++++++
> > drivers/net/ethernet/intel/ice/ice_parser.h   | 140 +++
> > .../net/ethernet/intel/ice/ice_parser_rt.c    | 877
> ++++++++++++++++++
> > .../net/ethernet/intel/ice/ice_parser_rt.h    |  73 ++
> > .../net/ethernet/intel/ice/ice_parser_util.h  |  37 +
> > drivers/net/ethernet/intel/ice/ice_pg_cam.c   | 397 ++++++++
> > drivers/net/ethernet/intel/ice/ice_pg_cam.h   | 142 +++
> > .../net/ethernet/intel/ice/ice_proto_grp.c    |  90 ++
> > .../net/ethernet/intel/ice/ice_proto_grp.h    |  31 +
> > drivers/net/ethernet/intel/ice/ice_ptype_mk.c |  73 ++
> > drivers/net/ethernet/intel/ice/ice_ptype_mk.h |  23 +
> > drivers/net/ethernet/intel/ice/ice_tmatch.h   |  40 +
> > drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
> > drivers/net/ethernet/intel/ice/ice_xlt_kb.c   | 262 ++++++
> > drivers/net/ethernet/intel/ice/ice_xlt_kb.h   |  80 ++
> > 29 files changed, 4173 insertions(+), 5 deletions(-)
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_bst_tcam.c
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_bst_tcam.h
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_flg_rd.c
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_flg_rd.h
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_imem.c
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_imem.h
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.c
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.h
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_mk_grp.c
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_mk_grp.h
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.c
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.h
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_rt.c
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_rt.h
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_util.h
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_pg_cam.c
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_pg_cam.h
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_proto_grp.c
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_proto_grp.h
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_ptype_mk.c
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_ptype_mk.h
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_tmatch.h
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_xlt_kb.c
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_xlt_kb.h
> >
> >--
> >2.25.1
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
