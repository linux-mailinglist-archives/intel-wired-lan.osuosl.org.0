Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C156071BE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Oct 2022 10:09:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1275B408EA;
	Fri, 21 Oct 2022 08:09:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1275B408EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666339762;
	bh=i0oauW4IUygWMD0pAKB/jhHxMXoTb4V42cn39zhWUqU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RHDxexUtu9SgyEfg5vjWG+Q0SNPedapVq3fT+F1mciWUd/vCRDNJzZn8/X3xtIr9o
	 ZWRkB6LP1pPmy7jtg/eeLGT+/3kyoC/nm9CyRg2SugjsQa6+hVqf6Q/HJOjQMqI16e
	 lkBLQNLImYzHKWMS/HogIcUh1GmJUM/fY2UNYs5XyrIq2IlIYAsbzI1MLIIaZG/kL9
	 QuaYKnGPPi6kxg9wuXWEJD0k/0B1C+28fhZQjDzH8d+YxeCDc3/fgCy6dWgM71I5gY
	 f/h8yEnqdhhpBn/uwS5lthIEzOktihaW2pcUw+Yal8+Hw75Q12wAweLtOXNCOZfhKb
	 5WpcfCuzMdriw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xAZYw58nUzJt; Fri, 21 Oct 2022 08:09:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D321E40123;
	Fri, 21 Oct 2022 08:09:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D321E40123
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 044D51BF372
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Oct 2022 08:09:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D17A1403C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Oct 2022 08:09:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D17A1403C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9OoxkZVV6bA7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Oct 2022 08:09:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21CDB40123
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 21CDB40123
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Oct 2022 08:09:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="304559691"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="304559691"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 01:09:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="772910734"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="772910734"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 21 Oct 2022 01:09:14 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 01:09:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 21 Oct 2022 01:09:14 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 21 Oct 2022 01:09:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l0+yt/UjA7pFmCL38gL+erSvahFRTLJQ8xZIw6xnN4RMh18dEtMHLTxetzQlYQq7m8e8HQInOZDRMV5kUJmSPNnTeNxgt058ubtWmzfAUJUoI+tM1bdArfhf6mCl2ENL61q0D8i/VAoUD39AoxvKACb4wNkjDxHfHfoNco+0mbu5gcMmucPqbbioT4XL5A+tOkP8AeZbIIiGoWaTskyy0TrRUjqnZJWaP34MvW6Gc/aGuvXSTcTGvLr8m3fZdwhzJ21P4KdJlcGFeNRRkvruhbQdQwgw7ItPz9CmQPT92yp8IPTLSD2czBNA9d5whd4rpaM2SyrohV0fzq2oeMsFsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TpWqF56s+SudmLhydx/wCEe3G2Y7ydxj5wHLymj/gys=;
 b=h/uzTmYE6/xxB+Fj5XzFcCMBd/tBENi+0nYIXz4uOv/+eY7WsrsbBk1otfjFec34brkorraavyfmyBjP/A3R4pjWJvy6ik8kaHn4eEFbKchA38mRp6XWKRK5F0L0PmsA5K+OR9j7sWygOkdNIEZFpcby183ObKcNtJgecwHsRncQ8tR0ZDGTHxpmFVt6f9KbR37vMqqDXencoiOq7lhrY6opV2QcE+33sBPi/++ucz4JGfaVJdVIPVReMT1BpHRF4Mu6AIZ4ihumGbvBFYVaDWiaHXD05thfv6MRHMP+/Dq+tT17sPuIFwWj+foqOllVzBeUvMD2AGyXeckHGTAM+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM4PR11MB5245.namprd11.prod.outlook.com (2603:10b6:5:388::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.35; Fri, 21 Oct 2022 08:09:11 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::977b:a628:9adf:469e]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::977b:a628:9adf:469e%6]) with mapi id 15.20.5723.035; Fri, 21 Oct 2022
 08:09:11 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] ice: Add support Flex RXD
Thread-Index: AQHY36uXIIe6VJcqp06I7IE+hCENyK4YiVcA
Date: Fri, 21 Oct 2022 08:09:11 +0000
Message-ID: <DM8PR11MB5621CCFA42EE5B3DF037B1F6AB2D9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20221014085917.387247-1-mateusz.palczewski@intel.com>
In-Reply-To: <20221014085917.387247-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5621:EE_|DM4PR11MB5245:EE_
x-ms-office365-filtering-correlation-id: 4b195a68-c105-4ed1-dc6a-08dab33b8979
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O7FaCHEbLTobg1OfG/cGlYMdO1iUUKadcOJ3pE43aiTW7bwzGixkrhjUguvH6DfnfWEUXJuqWBZ0rbjQyOhsJiSUSWHJHslHPXiYGOJIYG4qTg7rUge4Z4kxkAxfgNV7NqiGhonR28ak1Kn4BsRsLx//PbmPBqQG2maHftS002IZwkQ5BdpBlnhQPSqlcpWxtukGUHvAT4Dwj3RdpA02wG7FAJEau7CuFN5Jdh3hkTDBigfHgRJehfuPyJC4ZX4AkUt2m9dzMN6nox3SrrqUSZAZyjee4wp4xkl5dqaYAvYmT2vQg0KudS2QI/vcVc5EIuPR1LQ5h9WgLiUsyzFfj1VGawTCAocOPUak6J2ah+3xCfIaeTa5lXpBZjXLmY65zJpLmjChqFieKn/rS/3y095EbGdMzLtJ4s1GpK/v0hbGWb6GfpqLPi499/njNrI1dzP3XHEi2K2kYBP8tipcAn03+7esXWeXuJ0u4XGKlzdc9GJ9ghdfDGIBH6O3CuOw/JnKHg0A3qiQFqN0MEbNRkaDwUj2me11cJuPg4BL2MRDAcOTpMNis+75jVfyHDsj5hPwt4emOe6eUYWT5y8UXT3RyLgbiymAl6sR/Gy2l7uJesUVw4xg9lvVxz3q6+fQdozNoPa2hv4MoEv05fh2v53kKmMDU2zsfo5Oms9+ZG3ZZy2Xlkvb/Ih8wHs7Rv9DhtwM4/TPByycg6DTFoxqMfxvzuHIJjwcAWQCcxnyxnNQ+uLZqeQY+Mstf+ArfrlAjqVVlL5fZuvyEoZ0ebxcpw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(396003)(366004)(136003)(346002)(451199015)(66556008)(66946007)(8676002)(4326008)(83380400001)(55016003)(186003)(41300700001)(71200400001)(2906002)(54906003)(52536014)(8936002)(38100700002)(107886003)(316002)(110136005)(33656002)(82960400001)(76116006)(26005)(66476007)(66446008)(64756008)(6506007)(9686003)(38070700005)(478600001)(122000001)(5660300002)(86362001)(7696005)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5pfjvnq6HIE2rjK7ksIDOWr5wz3GyV4Qw8TmbsFJQcPJ8A+3OtTghTlo9rCT?=
 =?us-ascii?Q?zF/TRol7EkKnDSGIF6ubn5TDY7bRcOfuG4r3heqaUiO9wtQl8iT5XIzLTuxb?=
 =?us-ascii?Q?oIy2J4xPRpv7j8vXxFIUp7xnVi5nO29Cp8awRVUPzSzBF4qVpt/vQxUOOcIB?=
 =?us-ascii?Q?bkwcsxdBnOswJ679BB+qtVXmlaq0tUq78JhyvGZvKnLHo+mCNEGuQwX2ZN1H?=
 =?us-ascii?Q?2pRGSbA2qOWvI/KPJ1VxO8GXIV4lDz83Nx6+ZkRXnnASENATmpglbX1WQ/Hz?=
 =?us-ascii?Q?KVR7GMzbNevsOWN+KFdB3LxxUBnnSqDE4YEgN2iA7tL4ZOE5Ea4WmNVXNXLr?=
 =?us-ascii?Q?wx3/J413BmCcE1gTcNntGPOEe3OsSSW7xjTCWlKVj9M8foew9LpplpwBhIY0?=
 =?us-ascii?Q?faDh/w/pEvdTkHLo9R0HL8Y/QQMwLVWjemsUCBhtZ6J+tTyre+MIAJADCJ/S?=
 =?us-ascii?Q?+sNU58Zd5JrngB0YwQ9HjOUt3h7PY+7p1VTFcQjYXK0p9iRSipnkMaqknadr?=
 =?us-ascii?Q?vRV5d9Aag8qmq/FSxaLKSdnqa0zZ2b806mqn1/wjNLN785mupXRk6GpCLCVi?=
 =?us-ascii?Q?xqNV9oW0lzybhjcZGSxSeuu08RUYmaKl2cYXJWm3Xx8Lv9NRotMnqRQopw3M?=
 =?us-ascii?Q?YUVzJMrFclnsRoO1ocTosa7LLoGvqVP1qhuMFwtLgH+cujpGb+aj2yqtY/Aw?=
 =?us-ascii?Q?JCSfxMl/DzqvocFlfd+sNId7BgLQI2RRFceyJm9SRemdApT1trt/GIzLcYa9?=
 =?us-ascii?Q?od1zSHbYtbePbBCNHEfAlzoZnBpCQV0Zk+VqHVH2QomXuyONwCTGJSfX1Q3K?=
 =?us-ascii?Q?nRyU8/WGBPl59sOqA854RY0f0Ab+FjVuKJK0sksUuN7aatbsf2px5SAWHp3x?=
 =?us-ascii?Q?TpYNcIuQE6b+w8dspGraXNnf4O/eGzCOCfL+/DhY9HQ2deTuX24z51lUH8AV?=
 =?us-ascii?Q?7CYX/B6zdLwr2t+nKFmG8IJhd3YgV/hq5RnEFvdXIV2lFef+EfXxPu4SJXWK?=
 =?us-ascii?Q?65OMFCg21nCxPLNsDE9yDgr4M984E7LOLFwNy6NpJklQFGVrJ1bclg2UJV+8?=
 =?us-ascii?Q?nYHjBLWwW/ojIZ+RVHz25VHSrbOH28SyceO9qCEcCHP1UFm9XEAPO70xGn/Q?=
 =?us-ascii?Q?nldge+kuQWgl06/iU85bVnfJAfp7Hj0tLxMMtpKB2Rli8P8jN5jH4zHPYdc9?=
 =?us-ascii?Q?NINOxIexYyjILqq4qh8VXG0FX0/N3nwtvko/VarK3adlf2obrIKwediehycM?=
 =?us-ascii?Q?IAAa9GX9KarV0dFJThzPuJ57ZzmUI/KGxjJw+KJy1lZJzkxzC72DP/QqcoVc?=
 =?us-ascii?Q?55snh0Gi3K+xUHxwKx2WXsM4oKUKQTYHPp94j3DW/yICC5QuKWF/AmKAt9s1?=
 =?us-ascii?Q?3GzYtKufCsStxwOynCEknVEicD1APYHTJ2+666RfulleKVrpRBWHw157CYWn?=
 =?us-ascii?Q?Dxli6zI43Xfhu4I5G0/Hpnza+7gDv8K26PISWTB9vj4JfMJTeBVq2GKZHWHw?=
 =?us-ascii?Q?arnL/o2NwI2i5s2FcXp8OnmB5kJIew0mQOn3murTDyvkqkqadB4yCuixErwx?=
 =?us-ascii?Q?gsybLZSZ5aKWnj9MG1N3bkZ+uu8xnKy28/I119hwrBeDLkKQEIEFCG+RZBmg?=
 =?us-ascii?Q?Qw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b195a68-c105-4ed1-dc6a-08dab33b8979
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2022 08:09:11.6785 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5/NIZMuJDdmCzqdIB1AvS8Ea73hN58E5ctcL0unyHPYoetcPVQcUcIq9DB+IU4ZMBaDLFVYHieH/iRBzwhGrINFfl/3MibaR/wanpjqeFaw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5245
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666339755; x=1697875755;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6E3JeDUFK2R6O8AVc5buR3ncVf0PrWjn3S7tB5Ko2O0=;
 b=U+eh9Val7Y3Fg9rKD3UYN5fmCP+unrJ1sHPw+xsN/XCtYc6Su8hY2y96
 mZyfKS/VtOizfgWqMYvlH7igTR+yH92785XD061W4KZMUFUQptFRHS1XT
 hnA0m9UBN8QCYxee1lrW6GEgrP7RQyVEAfiWKIy6Q3SWAu/xSj2Qjp4Ar
 KAc8ir6pFcEn67c7oniGlLI/juEJN96XUTV2DaXp0cXVTqLxgnyI/H2dZ
 ztzlEGkvhik6FlSqfJDr8kSxAS3hJk6EEy4e/EWo1CfmglIJGNMpcc3AT
 M7XbdY0E3Fc+KfuvFxjBUO+nQJ6WhxFO2oOqIxupMc/zPsS3u62MVIrZ7
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U+eh9Val
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ice: Add support Flex RXD
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
Cc: "Jaron, MichalX" <michalx.jaron@intel.com>, "Xu, Ting" <ting.xu@intel.com>,
 "Rong, Leyi" <leyi.rong@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Friday, October 14, 2022 10:59 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jaron, MichalX <michalx.jaron@intel.com>; Xu, Ting <ting.xu@intel.com>;
> Rong, Leyi <leyi.rong@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3] ice: Add support Flex RXD
> 
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> Add new VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC flag, opcode
> VIRTCHNL_OP_GET_SUPPORTED_RXDIDS and add member rxdid in struct
> virtchnl_rxq_info to support AVF Flex RXD extension.
> 
> Add support to allow VF to query flexible descriptor RXDIDs supported by DDP
> package and configure Rx queues with selected RXDID for IAVF.
> 
> Add code to allow VIRTCHNL_OP_GET_SUPPORTED_RXDIDS message to be
> processed. Add necessary macros for registers.
> 
> Signed-off-by: Leyi Rong <leyi.rong@intel.com>
> Signed-off-by: Xu Ting <ting.xu@intel.com>
> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v3: Changed target tree from net to next
>  v2: Added missing sidned-off-by tag
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  2 +
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |  3 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 86 +++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_virtchnl.h |  2 +
>  .../intel/ice/ice_virtchnl_allowlist.c        |  6 ++
>  include/linux/avf/virtchnl.h                  | 14 ++-
>  6 files changed, 111 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index a5751057dc3b..d8fc811adc1c 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
