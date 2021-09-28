Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FA841A747
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Sep 2021 07:51:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A114404EC;
	Tue, 28 Sep 2021 05:51:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RRcXGKEo_PPc; Tue, 28 Sep 2021 05:51:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4658F402A2;
	Tue, 28 Sep 2021 05:51:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 824AE1BF847
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Sep 2021 05:51:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7D4EC404C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Sep 2021 05:51:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o0uo8N7-ygGV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Sep 2021 05:51:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9D247404BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Sep 2021 05:51:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="288283844"
X-IronPort-AV: E=Sophos;i="5.85,328,1624345200"; d="scan'208";a="288283844"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 22:51:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,328,1624345200"; d="scan'208";a="553798288"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Sep 2021 22:51:11 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 27 Sep 2021 22:51:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 27 Sep 2021 22:51:11 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 27 Sep 2021 22:51:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=me1n7Sc7guOn/YlR9xW4f1aFJ/lfdAsZtZRDe7hW+LtOy6GH0S3H8vHrcQviprEMTEBUz7JUrsneeW+1BoiGg20W5iYzVODVM/yAltM5Z9gNrjZKk5uhoR5QUblVT2CCAdxnY5hxsODU6B9lZQu+IETBdM30IAmhuD2TjsCnT6L7Er8yHUClNtVPLIiwMZWavgpOaTsCkwMDuv0RN6djYRLdz4J4xkS1J6t/lHIGRyS1GyNuHZqrAZuuT/RKclNJ41Rk80xEeooLFZhn334FNCMmEccc9DYc2HlcYQ6kujXeqeV1Su3NU9pNcnxEUWhT0a3ck9ILibsdDRxbWzopBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=d15hTO9q7BMOOSPsnaCx3riHga3rXtDPRxf3qQGOFqg=;
 b=VjKuRiDDZOLQxDYCtjrM5ih0zHG4BRLqFasmEeuhd3ia74qfhJzIfeDEEq5fXUwFYOkZ4Bi1NZSHYvGC5AfxVvqXFrWhS9ySfpTnllXfPbCk3RaZulDyPFqa9IAG7UeP268lOIhZObMikJ8Ie4YRVon1hxNRvta+nO2zblagz2ALuTzvPwTP0lg7MXV0lG7BGdKNaxJLx7ZOxw4CwscGQ+Fr0CudeJupIVndNx0E326NM4qeLP6nrTKCG0zQjBJP14vb26SbJ0d6O5iQN4AFsjEEjVWQA4er1L2kv1+q/wWG4I4iGNbs1qoyhV+NxqPy7def+8PzxZ0O4ItSeFBGyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d15hTO9q7BMOOSPsnaCx3riHga3rXtDPRxf3qQGOFqg=;
 b=v5mUl9sv2i8p6M5oPgETDLKxBmOh0X1+Oa8CjP1hAis6q1fNfO2YJuaiz/1A1U6d8RuLgkHDo/HQ8AhJspiw4eJDuYK+Feimnw+IHkgg84DLUHyDFUkqAKM/vnaRAoXe+qjG2xqsY7r7yy0MhEWoqkiLH7ZKuu2GPBwLlsst0To=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR1101MB2110.namprd11.prod.outlook.com (2603:10b6:301:4f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.14; Tue, 28 Sep
 2021 05:51:10 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%7]) with mapi id 15.20.4544.021; Tue, 28 Sep 2021
 05:51:10 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6 3/9] ice: create advanced
 switch recipe
Thread-Index: AQHXiqADSSC/oVGJt0u3R8T0rKbmx6u5RA3g
Date: Tue, 28 Sep 2021 05:51:10 +0000
Message-ID: <MW3PR11MB45543D9E79121408D862CB899CA89@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
 <1628239746-17380-4-git-send-email-wojciech.drewek@intel.com>
In-Reply-To: <1628239746-17380-4-git-send-email-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3eb7e0ff-771d-4e87-0ca0-08d98243f919
x-ms-traffictypediagnostic: MWHPR1101MB2110:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB21108F7E3993EB49DAE98BEA9CA89@MWHPR1101MB2110.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IT5V3+bYQowm4KJMr5QV2++lqNepXoDSxHBNAO51E/sjK9WPbUYo0bFA3DpqGAMSkiKzRP0w6MgqE38CM2gNK4gyr4jaQbI3H0mUEdVabutRhBkcw7RxQvUrKtEUdKUdo8QpY0ZMeO0PWPtQiPM6T00afy22BGl44pe5O8oeuS5SvftH0/opMoEF6ZJW/+54z43qkeoezlSUDfxJrKw4TxvsJY31CmtwY6bJ0Ak7LJvj9Qgobn7rbH3hgf3atiQz5USqmOO3rAQK1Egq59IA2iAwLoi3RvTX7pxqqMbuBjSWk1Tc2aN+dNUX6rlqnRjYwBwwcfq0RjZMZznZ89Q+N+dD+N73fVky7T740jPOVY1bSlmLjsz9q6Pc6xfB4rwNazvncyvCjPeClATwZuziQEApN1qFIUyHIpfaJTFruT8Zpo2btPnslLT1lZcwyevSAtvHnWEH33dQYgY/cLqhrkik4hJHbLdC7hEVw2CUaNuIlVaw4yGdlg5Psn8ahER3gb3SXREJFK3ANONZ0fahZLXrkgt8Kds5T+wsdOZk2F9vIdO6nXvrqXK3bB2omR0XMtmk0iYpUtUFvl2qvcRfU36jmthom5JJ0/OqDUlH+8Y6JB84CKFb6wSyUf8ivEWFKTlimx1La+snjMlgPU/zWgyCHalJ1zqAbf4EQUqN+01SHH5+SccLALNenUP1GM20toFGKXb5LQH0jWvV1FAa0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(6506007)(66476007)(76116006)(52536014)(66556008)(8676002)(66446008)(64756008)(5660300002)(86362001)(7696005)(9686003)(2906002)(33656002)(55016002)(26005)(83380400001)(38100700002)(186003)(38070700005)(122000001)(508600001)(8936002)(316002)(110136005)(71200400001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xz/i7ODlf+lYVTE6FxqFhjtGHyOyi76g31CkyALOjA2PYblrwisSDTV6DqeM?=
 =?us-ascii?Q?1MtFbq1p0c4X37s3mS7ItsKn8I3UvnX6MimBAEu+6q+D1JHWik4BfM4amNuP?=
 =?us-ascii?Q?LndHREFOkavlBClIfM+48t3/dtPxI2T9k0uQWGUpjxF40+nF+tyhFtesRCs2?=
 =?us-ascii?Q?Qv/LU4wsRBhwb5P72iv+7/n9NsX1XQ6gyTwRFgnQ1Wwohwr0Md26NeE7iT+C?=
 =?us-ascii?Q?FD74L9/9Ur64ErOnhwIcxp2xuU9euVLTEtl8nYSBMVT2qx6D404xSdZtCGYX?=
 =?us-ascii?Q?VFaHVaxqKTST7dlBMTbeXqyHbD/CGk7p6g3BbjRW9ejjQNNmgN3XCxwjA0m1?=
 =?us-ascii?Q?bl2b5v+ZK2wnHqYbohyh4j+LDpwgu0TRXEH6U7+DEBMnfFIP985tZFvzTVk8?=
 =?us-ascii?Q?niDRg80ISahPiEWn3pjUymS2yCDMfpcVoEaYoj9ymOzm+IQ51b8lzh2JXFo8?=
 =?us-ascii?Q?sqqlSpWXcYbHS652646i36ILeclWUCymBZBhWmxpkS0s/IxXKMB+rybwbZwG?=
 =?us-ascii?Q?p5I6BvXi1LAD+d+cySDRcWSIaEA/MK59UMXkz68Ee8miDMT3/tjqR2YFkhxt?=
 =?us-ascii?Q?ZczTlcDKU5fadlJq5DLmsfSftgbJ1Qnc2PCcIXCfMRBp8qGDHMXznNB/bTr9?=
 =?us-ascii?Q?CVLQG6ZyM4jssOWzIVTDzZmfl8ujN9TP+CDK3wGsGTal0HTDh4DucDlK6C+J?=
 =?us-ascii?Q?wzBY80O0NnbPStxeokY7TOW5sZwT7N4GRHK0qsJ2s0wrcxvwtK/qZ8/0fUwd?=
 =?us-ascii?Q?0cIvUfePcz+FI+/RszSjASO/+7ENDVDAjoCdiSEYjHJjRxsT07en8X1CIuru?=
 =?us-ascii?Q?x3tmP5wZUQC9XQKb3az3+oepGQ8f7BmNT0aFQg8+LrQzUAMS8jswmQT28EGm?=
 =?us-ascii?Q?8ggRzFt579jnlkEzu7YMw4H+kTqdwC4pWOG00PvgPm4w3DTt2HZKf0uKJfpH?=
 =?us-ascii?Q?R7C8Ry6GkEyXT989byRxuAjiAIdlMHHDxALmN1H6Zn7d1eXVqPgGrZttWGOY?=
 =?us-ascii?Q?xdZ0Ll5c6bPc5Xho6iqaRdKea/ThOkMMaxv5LlHPVbeBo1txNreHxe8+39es?=
 =?us-ascii?Q?y7xq8T5ppY+/Tpi+uDeh+B6vah805g+oytCUzntaU3SO/BA23261PSMjPPWz?=
 =?us-ascii?Q?ZWI7ppzcmCaaSi8D/6PfV2Dcom89pBOLNy0VSQ1h1BVZdFjJXteiVbeRz6oP?=
 =?us-ascii?Q?FcRVo1Pi6rBRjHETT2OsGABnaEZyFtXrzLMkGflXRzKzmbdc1vgtG/NykwsE?=
 =?us-ascii?Q?F3Cqboe/LyknLwCTYk8D9NXKDVSYjBhRuEbonksX7KWjLosOtgLjm02PCBLm?=
 =?us-ascii?Q?CyiJwUYP21fSJM/lhL1NRlE4?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3eb7e0ff-771d-4e87-0ca0-08d98243f919
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2021 05:51:10.1720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oZnYaANxhy9ICTLc70/seAjaQ+XWRi7YWN69q86EQp00RAhrpe7nyy3nnoD/QMTK4bF2h7uIEu6QePidtC35cMnlnSyPND9V3a4rhGPgs6Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2110
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 3/9] ice: create advanced
 switch recipe
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Wojciech Drewek
>Sent: Friday, August 6, 2021 2:19 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v6 3/9] ice: create advanced switch
>recipe
>
>From: Dan Nowlin <dan.nowlin@intel.com>
>
>These changes introduce code for creating advanced recipes for the
>switch in hardware.
>
>There are a couple of recipes already defined in the HW. They apply to
>matching on basic protocol headers, like MAC, VLAN, MACVLAN,
>ethertype or direction (promiscuous), etc.. If the user wants to match on
>other protocol headers (eg. ip address, src/dst port etc.) or different
>variation of already supported protocols, there is a need to create
>new, more complex recipe. That new recipe is referred as
>'advanced recipe', and the filtering rule created on top of that recipe
>is called 'advanced rule'.
>
>One recipe can have up to 5 words, but the first word is always reserved
>for match on switch id, so the driver can define up to 4 words for one
>recipe. To support recipes with more words up to 5 recipes can be
>chained, so 20 words can be programmed for look up.
>
>Input for adding recipe function is a list of protocols to support. Based
>on this list correct profile is being chosen. Correct profile means
>that it contains all protocol types from a list. Each profile have up to
>48 field vector words and each of this word have protocol id and offset.
>These two fields need to match with input data for adding recipe
>function. If the correct profile can't be found the function returns an
>error.
>
>The next step after finding the correct profile is grouping words into
>groups. One group can have up to 4 words. This is done to simplify
>sending recipes to HW (because recipe also can have up to 4 words).
>
>In case of chaining (so when look up consists of more than 4 words) last
>recipe will always have results from the previous recipes used as words.
>
>A recipe to profile map is used to store information about which profile
>is associate with this recipe. This map is an array of 64 elements (max
>number of recipes) and each element is a 256 bits bitmap (max number of
>profiles)
>
>Profile to recipe map is used to store information about which recipe is
>associate with this profile. This map is an array of 256 elements (max
>number of profiles) and each element is a 64 bits bitmap (max number of
>recipes)
>
>Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_flex_pipe.c     |   33 +-
> drivers/net/ethernet/intel/ice/ice_flex_pipe.h     |    6 +
> drivers/net/ethernet/intel/ice/ice_protocol_type.h |  169 +++
> drivers/net/ethernet/intel/ice/ice_switch.c        | 1112
>+++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_switch.h        |  110 +-
> 5 files changed, 1410 insertions(+), 20 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
