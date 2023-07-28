Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 150957663BC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jul 2023 07:46:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0E5C61388;
	Fri, 28 Jul 2023 05:46:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0E5C61388
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690523208;
	bh=dto0H9JAAE2r3t+MQRFYxCl6XrLw0tZm2NOrLPX7EDE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IHTcEs19Mzlh4rJHxchYnyVGxg2ykPLvivD8VhXHWqgDIy/Cg2hrOy2jZi3ODAEiH
	 UBLKEBlHAv26RIT5YFmGy50+8BiM+P3B296YiG9DurvS3Hox0QGLFOv9IjrjbmumR2
	 3PczMRmnnw38XUBqSNkcZfL2qCcbdDdbUk8hogXxnthxn84dMcAxtkZGq4B+ruAhwc
	 FOu9bn2VjIa+FHBk/SKqnj9CfKHJ6CNttPJ+RxV3lTOj0esxkD79FS2XEOmm/H0Z1c
	 H1eNQrIs3eh06U1XLTf4RgNKqbp1c2jPO4Y014R311wHBeRVv3xnwRPAhwtgvIQa7M
	 Q/SRL1K7S65vQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E-u1sZA3wUog; Fri, 28 Jul 2023 05:46:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7CD9B60F24;
	Fri, 28 Jul 2023 05:46:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7CD9B60F24
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 04ECF1BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 05:46:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CE9C441F5F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 05:46:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE9C441F5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WnYhANYCIpSz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jul 2023 05:46:41 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4606641BEC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 05:46:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4606641BEC
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="368529689"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="368529689"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 22:46:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="721134518"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="721134518"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 27 Jul 2023 22:46:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 22:46:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 22:46:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 27 Jul 2023 22:46:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aydWMTw+m/QnjMhGnDlx3eIZh0YJYuyk+8HbRo8Coqzlj+nWknR5EKRBwVZMDp5C13FHGIJkCDkoJOYitaW1Z6+Q30I8kxdiXvw0qUsifJKn8Rvy0GVxgX8gT+MT6aR7GChJMk3pNqFudmODyTdP3aCO+fetrVLtMrhcPy2IKThrfIxEJExZZAjYpjebpOji5L/Sj4AHI0SVcoVza57+pOW202Cpbcy05QYVVmsy85jlVIgZbssjokW0rieLyjorZuAfyhijW3qBgg7jFB23WOlPDO77cFKf6nlIAr3gD8zWg42F/wctD+Oone4FH5jdou79S08ErqBOMm54NCBqBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hdg6n8jjuTWmhsA8ovAjPEcaCdMQ/l8DBw4sW92ToA8=;
 b=UJ787EJtJSRtw+VfDlso2T8s5VYM28JFkWqw9wLdousvo3KFiFP5NOeQT6cs2eRmcO/K+udx36xrr8t7iF4PSBrKMV3defp4wL3kSxcBCBa6mL4/6AmSghDfXnSPp48caEV1x69zEla01E64GmrduKKOH2bGcSYg4ivbIAppA5PfsGNB728uXkvJOrSdLreSSvHDpPhKBp5kkvVkuQck5B3VTPsDJ316bSvP+svUYFFV9CpIS/Nbx2Jd9V5NVMdZoyxEVQDE2z3LKwt7HnQslhvPZpA7SYWe85v3wRBCFepGgUKab07pOumYokkmRM9JyDpv6xp2ym4sVReOlTCc9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SA1PR11MB7037.namprd11.prod.outlook.com (2603:10b6:806:2ba::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Fri, 28 Jul
 2023 05:46:38 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec%7]) with mapi id 15.20.6631.026; Fri, 28 Jul 2023
 05:46:38 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: introduce hw->phy_model
 for handling PTP PHY differences
Thread-Index: AQHZuPyGo8KzTljT/kKzFZn1FYuKg6/Ouy5g
Date: Fri, 28 Jul 2023 05:46:38 +0000
Message-ID: <BL0PR11MB31223C1DE671D01D259670FEBD06A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230717221713.2249044-1-jacob.e.keller@intel.com>
In-Reply-To: <20230717221713.2249044-1-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SA1PR11MB7037:EE_
x-ms-office365-filtering-correlation-id: 16e09d09-94e5-440c-b24c-08db8f2e02c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ye5nlMbPGdaiPI1bhZtWcovYECj3PoZeRuF3cKn33CIkq9Gl48zMkCge1Kf6sq/I3Q6vGriVJacjb6Q5XwalQoAM0MKsBLzRv/+fyfepBJMECqPUPY55f3vjMGSAdqdrgGqLiWvHnnTB0bLFTmBO1ypRuZ8G9n9/FKOJQoskOo8jiDbdEnBAX5vKYkmrmYGVuldFzNpfJpwA7fdzzXpiCXosDFXyAaCVzjo2pQQ5D+DfeLUZ6FaBsrbF8JLUPpliAhRRAIpxd5CQbETcM7K60K2enU5Eu9+qod5zsjoflmIwYwjayfgaGYjVyhceRibmv5D5Qp4vZ8s6HaBjUl4oXMYFou2M2B0+MQNbCQHO+cd0IJcK63oz8nFqwt4okYFk2Ragl2GbKNN/4C52RLJ6z5jbNvgfNhQJ/+OU20SmiBNHHFCzsyYc5XVhjzp9rvoxt+x4X2EhOrPHhaIeumHRt4Dx7Gh7Yqge5mNOiRgCVMX7pRaG2ElPu46xbbR10N7u4lvVjZXgB2eH99AABvdD3jBUI8cB2nDXYv0szUqhFvJk9mnQ9b4X+0Hce7RecVcO6CSyWmJs27I6dKHUJ2hrbQ2QO/V30RFKBC/ShjHFL0MtIFvSklez2k2MW+vInXHd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(39860400002)(376002)(136003)(366004)(451199021)(38100700002)(55016003)(66446008)(82960400001)(110136005)(64756008)(7696005)(9686003)(478600001)(71200400001)(316002)(8676002)(52536014)(41300700001)(76116006)(66476007)(66946007)(8936002)(66556008)(5660300002)(4326008)(122000001)(186003)(83380400001)(26005)(53546011)(6506007)(107886003)(86362001)(38070700005)(2906002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vnDpHpv8XThGG6Rip62RZEl3OT1KWUEPZl9apL2zhQIeQYN4L0Hq+U/V91CS?=
 =?us-ascii?Q?QhqmznowNWLmh3AuWwG47YIg24oD7nYls88VvgMVcQ2uEzdiOMuMbbKUQea7?=
 =?us-ascii?Q?vA89GK4kChovPt+uNhd97bvF6YrbRO07KelI8vZOIkUFqRLu4MQPAe2e0LcU?=
 =?us-ascii?Q?58MfWfL9zX5wWEzzsqJHSQRkpkgHrwB7EgImIvC5FOkuC22IBFqalVCvhn0S?=
 =?us-ascii?Q?4nhVzqDc9DUEoL+5cy/fozfZBHHG4MeOQGrLhIjbtFj7Yg/Cx3o88dNVVg8z?=
 =?us-ascii?Q?5wOk07gd21kBgVXinDoLxmQkFwQjYlbMdPjqNzdas7Yhy+HaqAzsTWeXji/G?=
 =?us-ascii?Q?vOisIgPM4vx/is1aitvvVpWplbvRKXQbm5BqxximkqwrjkY0V0h7VO9Dq5G0?=
 =?us-ascii?Q?EIJpexS1fsOIyWaOqMbSJY2Mf8bBbK0jj0SzhPQmUDtnNbfbJc+Y9/63ORj+?=
 =?us-ascii?Q?i2o6GMZeluh01Uq0VY8LW/dw7pwnzzNbas1Aa8l6ft37CvLuJYLABpu7BOZL?=
 =?us-ascii?Q?+YiBGMBgwFY+V9agA3w05uG9yL+BCy0EOoHL82ss3Dy22/cbdaJtm89mjPyw?=
 =?us-ascii?Q?cjcZqR7tWXa1fELCT5WfaT1ngLDtNCMn8j0ZQc2gzo/+qNF9IqRk1QME2awI?=
 =?us-ascii?Q?zTRLbxPv4h13ZQ5a9bFa5q9eecqF3CsOmyOxH9CHs/c5QLOEqKg4Y5u6uCrr?=
 =?us-ascii?Q?RNnxkNh4MX3lsH9lGb6rW+c0Rul51DQq5O7VdQ00F025GQBWvfzCdcFlY2UF?=
 =?us-ascii?Q?naCbnB9t9BRiznEJjv4UK51cyYntdgVIXf/+w6r5cCDk/0sxciibehRb7EOF?=
 =?us-ascii?Q?qB6TOfTbFPD7sg3/j3Qxc6FR/zT0Ifyi1zVyn1y/8zU9cDYZ/xHECa+cbanN?=
 =?us-ascii?Q?YMfiUS/kL4p42dveW9pDgiETjm/2lF9qxxwjrw3B/7oia7rpicTjV9P5ohLe?=
 =?us-ascii?Q?6YW6dlzCqxAF/J8vpUxvf9jswvGafREF6G+Fyhf+KB4+sAlpzhRbNi3fmZEe?=
 =?us-ascii?Q?sn26zWw7oY+B20TpQ1xMTs+ld77s2oNy46MNpRc+trXLy1ETvnlGzVBnAicT?=
 =?us-ascii?Q?jBp94TxHFcaxRlTg1YKoOhI8TPbLxfGtaoPHgZwKMK17LmciKbxueYlWOuBt?=
 =?us-ascii?Q?bL0zByK3tLl3wY8AX9NjAG2JDiQjjBNlGeYbbfNxKjFCpbDf05wENwpdLBBX?=
 =?us-ascii?Q?fysxqCAqoHE4tDkFS4YCCoA/17bf+vTKSCaTu7l0fvQaoaJvIVKvE8qwvv9i?=
 =?us-ascii?Q?4OqfWrOT6KOMFGqoUwGLg/ivDS+XkdFk/bq83nWDUkJ4rkXsaByWfXvFbEbL?=
 =?us-ascii?Q?R0O8mqD17E8qJddPnB49DqMfnhHnWtqamyAJqyeoKkprfwVVWtp0JfcYxuRE?=
 =?us-ascii?Q?eVhUzhS1CYV4be5Y7BjdseF8opheKaoaYxKdvQzbDKaPJP0u5LGZjdELU8GY?=
 =?us-ascii?Q?7iYLs83ZgBJkoVJA2sd/lbUynG/cBwY8tsnuOOZf7vyOBzdCzc2BPh3gQKHE?=
 =?us-ascii?Q?5ioCMfAXW/wlezAJSExwxWSoJKDdZJ0X4Oxejuz6JjKLQ+pY1OITeTg/QVx8?=
 =?us-ascii?Q?DP7l2J7HcUulAMcr7WoUGZLfzGpo6cT+fAz/1yLTusfZOtDIN6AFuQn6hvQw?=
 =?us-ascii?Q?SA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16e09d09-94e5-440c-b24c-08db8f2e02c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2023 05:46:38.0560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0FGbp10MUOJVkptoLnc8IJAbMRnP2QjN7S7EG28McpxjD4Ktm+bR1fhpYGfGfHUMVgbMIuq5o6JqjqsQSqT64Km11xt4f4+tE6/u3yyD1c7zbpQC4aXxIM3dI2cy2E0b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7037
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690523201; x=1722059201;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=grevXAa6VegcXmw10KmGCHcyeriOcxuBMQqfG721TEU=;
 b=M/XhUgSbZLwfPRWWFW82ZTnQc7R4xx1LsPZjwA9Z3CqFrO2o7Dk0/CRh
 4jtcJYrlVemGXmTsnL2uIrvAXUS0gYQ6sbDMaWOps1r7OPfCbtG/Sc2Zc
 h4OVxNhF5Uxp5JIYfI9rFpi5sYkZ4KjPjBRcrYP2d4o2HFvpTwKJy/gmm
 ifYDBg8tYmsAHntoTeAmP6vafMtm9tgnxJTctekQV6/ouAyU1umnPG+mV
 IripG7wguWjHyT3+VQQCUzLW6sb50qTDKCI6IA6VhJTFH20vCzdchpdbt
 j9r1pOz9J87Zbn5cq/i8d+emGh50eZi2cNSdycCmBP0os2zMiRn80MdJo
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M/XhUgSb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: introduce hw->phy_model
 for handling PTP PHY differences
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Tuesday, July 18, 2023 3:47 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: introduce hw->phy_model for handling PTP PHY differences
>
> The ice driver has PTP support which works across a couple of different device families. The device families each have different PHY hardware which have unique requirements for programming.
>
> Today, there is E810-based hardware, and E822-based hardware. To handle this, the driver checks the ice_is_e810() function to separate between the two existing families of hardware.
>
> Future development is going to add new hardware designs which have further unique requirements. To make this easier, introduce a phy_model field to the HW structure. This field represents what PHY model the current device has, and is used to allow distinguishing which logic a particular device needs.
>
> This will make supporting future upcoming hardware easier, by providing an obvious place to initialize the PHY model, and by already using switch/case statements instead of the previous if statements.
>
> Astute reviewers may notice that there are a handful of remaining checks for ice_is_e810() left in ice_ptp.c  These conflict with some other cleanup patches in development, and will be fixed in the near future.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c    |  32 ++++--
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 104 ++++++++++++++++----
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   2 +
>  drivers/net/ethernet/intel/ice/ice_type.h   |   8 ++
>  4 files changed, 120 insertions(+), 26 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
