Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBEC739952
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 10:22:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECA2283B64;
	Thu, 22 Jun 2023 08:22:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECA2283B64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687422162;
	bh=pGw+ynezQLB0OqYitFp4SAG9cqG6jtkZNcSvnSDVSKg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R1l6esAtTfKXLiU1b1RBrh+aZKQ2l0yT6d+s9ZiDz1TqzcZGdDX5hpDvxqc3WxqUs
	 qWDjRsEksbZSjLpw2+lNbSlDOBqOuBNkVn9RuzWgqIcvLzTq6dcnrH+oWicOTivvDK
	 +cqMKklj1VKz/l7iPV5K6I7q8/jeUB13Er8m9JJ7Ux8+VoWCGTWeq43avMto5WsXON
	 LD/9EoYLUUVywqheXykizUWVOHuH5On9MkgBf0RV5QRzsZhZ/jbheHREtPCxiGRtrz
	 5skQEqjnRHrXjZdmW7dE5xA+tc6MX57ettOtrp9Poe+jRO1+UoepebevDw+dm/HWf9
	 dOVXk7ANQLN/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GXwAGXqTcNCk; Thu, 22 Jun 2023 08:22:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C8EC83B17;
	Thu, 22 Jun 2023 08:22:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C8EC83B17
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 844051BF336
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 08:22:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 661D183B57
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 08:22:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 661D183B57
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lYkVv0oyVdXM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jun 2023 08:22:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39AFE83B56
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 39AFE83B56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 08:22:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="363847387"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="363847387"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 01:21:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="664961899"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="664961899"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 22 Jun 2023 01:21:07 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 01:21:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 01:21:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 22 Jun 2023 01:21:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 22 Jun 2023 01:21:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RRfG20YSiW07EPYHBg4gldsT8K8VaCPFm9ha8iMY++douTAeCXwT0PyjtXO8oV7AraI565KHRp6JyUh/QTt03cZRDamaF+aWbV3jFMX4k8f7hTo4gCClnJgzk2OaK96nddAsY5mr3kj2voTcY76MZQAgGqQoKOHyELny1OI2ox46s5brkiFTkEYC/a1DGiWWBIoXa8tP2ZHv+ywT1JQWbWd7P3m8/nWqTTewTMeg2DDOpjOQHeIT2/oPEn0O/8YWZHFhHQFICY3V2s31X5R8GGvwPBCU2aXMlmliAFJuPsHp6JaesQLspGAeZ24xbpoLRUlzZGrYMXJ7TplKrrkeQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pD6gROEZlDcrYf5gYG9nTX5yBA0F4mOG9dgOolgakuQ=;
 b=FYzVfnzRWmShoHWEchYFCsQ+1GNmadiMxBaxchvzY4SYUTY1oUq/AiN0byfNtphGYoqxASToesJvECQIit7UNMd+yEhfjeFQiij/SUEVnTv7gEUmJoIzjgAu8Meur2XHA9heWMb//nKRFf0CsmNXS/NyQng4Nzru8zgmU6MLf2+Aiw0lnh8WufL9o7cyQt/k6Q6Dh1elRm6FfkkA88+9uGnCbMNFcX11sPrssh+s8VgnYagnRFt+TbXAGcL5mV8yBNy8C5VDrVWAJng8RVGUxC+MvUwHdTOq0AKLjtkloIj8KeAZqi2hEf9kaAwSCv5YoxBCt5oOcB0U+k0efVzLsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5782.namprd11.prod.outlook.com (2603:10b6:510:147::11)
 by PH7PR11MB6796.namprd11.prod.outlook.com (2603:10b6:510:1ba::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Thu, 22 Jun
 2023 08:20:56 +0000
Received: from PH0PR11MB5782.namprd11.prod.outlook.com
 ([fe80::3912:3caf:a32c:7791]) by PH0PR11MB5782.namprd11.prod.outlook.com
 ([fe80::3912:3caf:a32c:7791%5]) with mapi id 15.20.6521.024; Thu, 22 Jun 2023
 08:20:56 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [PATCH iwl-next] ice: Accept LAG netdevs in bridge offloads
Thread-Index: AQHZpN54aRGLMqDmCEKB18Q7zJo9nq+WdXZQ
Date: Thu, 22 Jun 2023 08:20:56 +0000
Message-ID: <PH0PR11MB57822575C88C1660B21FC0DAFD22A@PH0PR11MB5782.namprd11.prod.outlook.com>
References: <20230622070956.357404-1-wojciech.drewek@intel.com>
 <ZJP9i6DLPOfJkUyB@nanopsycho>
In-Reply-To: <ZJP9i6DLPOfJkUyB@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5782:EE_|PH7PR11MB6796:EE_
x-ms-office365-filtering-correlation-id: 03998cf7-d169-4fa3-c26d-08db72f99a41
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ScOTWKe/DQgik2DMGpfHBeVgLEKl1xGMKMLH4UK2gg30Ivhoui7FGxIG2pkrs5apdy2mZ7A3lnQtdtFJ1rRdL6Chmjfu6fEndxehtC5CSSHapK+uz8RwHe8OrxZSjZYCPQy/JPyzrV3ir9tKZK4kWvjrqQ0gQ2y0dWV9QJOg+Bt/09qsVacYVgvIRHM82Vh2Av+jQutFZSbw/3TlYCKK9Rrx9gNr3saphtCB7NX7Hwy4wXoMqGgUvG3orSNG93kHiaJac7P5D/z9zfSOGJ7oY05qgAY1v27g1MDUtMR9qvd4EXytJfijY63WInKAK8IODq5az7sbhXliWDMR9+Swr/GWxvK/rnyy+xsWxwcJnzD3ePxoaZ/wkODiqZcrIP4vINxOonAJX6JCT+q6lIE/fNmNKdW9KOjClnsRcLq+64/GWBeuvGQ4Rr/itryWM9zI3GRpvwbzs1Ny0+NQpFYXVVYViqRxKKU4cJcVHW14i7BpRkMP1A8iQy/ulYQfwsftsm5yQN9Dq7jzNoceR3s6lwFTBdEpaKeoiRb9vq5QJ5snQFnE5zNSv4pmqgzKbPusB9q4Wx3py4tY1OAAHWzAUO76qorb7W6MKPoBkDRzWEE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5782.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(136003)(346002)(39860400002)(376002)(451199021)(66556008)(76116006)(64756008)(4326008)(6916009)(66946007)(66476007)(66446008)(41300700001)(316002)(5660300002)(54906003)(8936002)(8676002)(52536014)(2906002)(478600001)(7696005)(966005)(71200400001)(82960400001)(55016003)(186003)(9686003)(53546011)(33656002)(83380400001)(122000001)(6506007)(38100700002)(38070700005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LwxA3yi3rGOHjmUVpT26sWH/6VjEAYHDbInYateFF7vkeq4KBFgJ41bJ2HQy?=
 =?us-ascii?Q?rcjcmIJqlmii/FjBie3QQ0UdnQMlr4lg0KD5/88KP4GAGxprC9F3d2JmE9Ip?=
 =?us-ascii?Q?BrdplJ9qKSmkonvP74Y257ZxzL2MtnCWp8NmB2zDj6/58LkIflfRTwkm8fMA?=
 =?us-ascii?Q?SF2km1S8vHDb8/wNhZ3mlaLcJc2RNSf3Dj1GMCIwRroNUSON54/70HcIEKkz?=
 =?us-ascii?Q?JxIl2ZwcUx9t9+y8PaTlskWAyAWxdjYvG8HqBd3HB1EwVQovp9vXu+UqQHwN?=
 =?us-ascii?Q?vxbn5V3kgdS/sT/qCGGnZPOzrZ0wjzP/dDmstvHm0UNRYpxCLv3eUBsa8Gqr?=
 =?us-ascii?Q?EX3keF+d6VmUgtfsWi+pIPQ+7gVD1o37dP6kQfiVBEvqjGi3TaSvrAdHKyY1?=
 =?us-ascii?Q?5qdOhWv/msjUCnm6OTwYiD3VT9VevHNG04EqQ4rxNMIY1pSbQQLEs8KCPmnV?=
 =?us-ascii?Q?cuC2buqTbkqqpvcVt2AJSr4cH7F1lXcgHcc+G2CosSY/JT10iBf7T2qX5ApC?=
 =?us-ascii?Q?sdmrUxh4M7rY1+gJIXz0IUhsozgNQ9bZheli0cp4qBb5o+9fpcXgNCrEFY+w?=
 =?us-ascii?Q?0yEXarXvZBzz1CT7m/hK1Fdbf0yFI7mQxaq/qaRIf6RPSKMfbUqjBXhqLXLt?=
 =?us-ascii?Q?07lzbZtRWDa4PEckBa8v+BPkwDTMAewOFYP7OaHWfd3Xvf1NcdrzmGDOIfQJ?=
 =?us-ascii?Q?rA6mQqaz0ov10rYGI9EB6CgRAjJka/Kb2vs0De3Ug5SQZ54bz5KtTg63uPcN?=
 =?us-ascii?Q?sjMBwHPJ72gGVe1tvyiJhFlBEKaxrrHQUErK/2HieWu41wcBZwAFpBnnprrM?=
 =?us-ascii?Q?C7Nvw8L0xbOa/sfrlHPQiTSW5mTQsgOzJ5WjAJvT2O2dtLDWA+FSXx2bVvxb?=
 =?us-ascii?Q?Mv9moHvpj9UKHBbDGIrl26E4Kqx7wwREHHB8dmdEsqaF8vKmUT59roSuWDaC?=
 =?us-ascii?Q?BXx7xgIx2uxnLwiay80+0glaRrlbaLu1j/7lFVePG4GKu2XBxyGR6obyLDv1?=
 =?us-ascii?Q?G8ARXR/75adUCDZDmQc3R6aCLWvLpzyMitESEr5bgsaVXdZnQaeSJ3fjpsKS?=
 =?us-ascii?Q?bYwU/tFMNkch/okZo0yB895KtO04j0hdVa6m7eJBAC5tfT9Q6Nb/ztmOikyZ?=
 =?us-ascii?Q?wJiR3TNTwfNTlyqsOhacjnbtY11O1GCtbfBHRy/yVz8t0FxuvzOLd8vVJIYX?=
 =?us-ascii?Q?h/TPrFs9l6OYZnXp+m2+j+UH0nCG27wCy2y3+5TlcBfw2UnQoW/FexWBcQO6?=
 =?us-ascii?Q?r+YdjIAJlhQ5ODrlsTxAbyJz9pxLdJYsMas8MSpaAb2dFdhOSQtmRZDkXEjT?=
 =?us-ascii?Q?GOm0SfJyXz6iw7xcYt/0ru38i4fRRr5+Qh1D0F3/I3fUszlbh4IZZeMIoyrg?=
 =?us-ascii?Q?q3m6iEb1KG2rOKzFESbtokJGva/k8H2ynVtI0thLSI8A5RSQTIzgGaSiShl2?=
 =?us-ascii?Q?k9EFNKGBjC3VGEHnqbNSyHuDnanP/9x5cmItpKP1xff9fcOxyd1eTgNqcrBV?=
 =?us-ascii?Q?xZSgdjQJx9Lx6qaNk4OOVA5wuoQWk1qkFyvc10tH+ht30beJCM26VDfknvp8?=
 =?us-ascii?Q?nsF98gGP/2TqCcbBlyk=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5782.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03998cf7-d169-4fa3-c26d-08db72f99a41
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2023 08:20:56.3168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YYMGnYWLNDv1hBX0wtsqiEXfBAnLucHjikFInHUwl265S56jTf15PE/x0KHcl0dSLlW0KwQDCMZFJrl04m0MKbCfFpzkKlGt4Q55q70kKPk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6796
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687422154; x=1718958154;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gBXeQql3iyv92iGiJU1L0If1ogX3mkjtXd8tBLz3ljA=;
 b=EJjy/RxIlquI2crLZHPiJipvQ2oDunOz3k+FhtNKIstM7t6eKMOTZkPV
 MAFvfQXdZWmEeGWTYueRcAdJDNQ8/kR3xs8g+Zz/QmlEC4bJAAGiPhruH
 lgHpY8WfCzLWc3s2vHxFI48lNL6gQ4lQ3Rmgd2Bv6kNgtyhiOT7Xj4w+T
 rUuNVRDqPr8+gM4vzs02ctdw7a0F4owXWJNxUR6Qu/sr0oo8MQFhkZnNv
 C8yf7D0KcB2uMMcdZ+NmHR5aS4RM3YgaQGsZFN2ZFc7o6GrFJMRWw5wD8
 sYvClrhXost0g/0d3GD1mN77WXpek2sydvX8WtQFUF6u77Y5gKMKJ92vA
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EJjy/RxI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Accept LAG netdevs in
 bridge offloads
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Jiri Pirko <jiri@resnulli.us>
> Sent: czwartek, 22 czerwca 2023 09:52
> To: Drewek, Wojciech <wojciech.drewek@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Ertman, David M <david.m.ertman@intel.com>;
> michal.swiatkowski@linux.intel.com; marcin.szycik@linux.intel.com; simon.horman@corigine.com
> Subject: Re: [PATCH iwl-next] ice: Accept LAG netdevs in bridge offloads
> 
> Thu, Jun 22, 2023 at 09:09:56AM CEST, wojciech.drewek@intel.com wrote:
> >Allow LAG interfaces to be used in bridge offload using
> >netif_is_lag_master. In this case, search for ice netdev in
> >the list of LAG's lower devices.
> >
> >Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> >Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >---
> >Note for Tony: This patch needs to go with Dave's LAG
> >patchset:
> >https://lore.kernel.org/netdev/20230615162932.762756-1-david.m.ertman@intel.com/
> >---
> > .../net/ethernet/intel/ice/ice_eswitch_br.c   | 47 +++++++++++++++++--
> > 1 file changed, 42 insertions(+), 5 deletions(-)
> >
> >diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> >index 1e57ce7b22d3..81b69ba9e939 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> >+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> >@@ -15,8 +15,23 @@ static const struct rhashtable_params ice_fdb_ht_params = {
> >
> > static bool ice_eswitch_br_is_dev_valid(const struct net_device *dev)
> > {
> >-	/* Accept only PF netdev and PRs */
> >-	return ice_is_port_repr_netdev(dev) || netif_is_ice(dev);
> >+	/* Accept only PF netdev, PRs and LAG */
> >+	return ice_is_port_repr_netdev(dev) || netif_is_ice(dev) ||
> >+		netif_is_lag_master(dev);
> >+}
> >+
> >+static struct net_device *
> >+ice_eswitch_br_get_uplnik_from_lag(struct net_device *lag_dev)
> 
> s/uplnik/uplink/

Will be fixed

> 
> 
> >+{
> >+	struct net_device *lower;
> >+	struct list_head *iter;
> >+
> >+	netdev_for_each_lower_dev(lag_dev, lower, iter) {
> >+		if (netif_is_ice(lower))
> >+			return lower;
> 
> What if there are 2 ice Nics in the same lag?

Dave's LAG patchset [1] makes sure that interfaces have to all be on the same physical NIC.

[1] https://lore.kernel.org/netdev/20230615162932.762756-1-david.m.ertman@intel.com/

> 
> 
> >+	}
> >+
> >+	return NULL;
> > }
> >
> > static struct ice_esw_br_port *
> >@@ -26,8 +41,19 @@ ice_eswitch_br_netdev_to_port(struct net_device *dev)
> > 		struct ice_repr *repr = ice_netdev_to_repr(dev);
> >
> > 		return repr->br_port;
> >-	} else if (netif_is_ice(dev)) {
> >-		struct ice_pf *pf = ice_netdev_to_pf(dev);
> >+	} else if (netif_is_ice(dev) || netif_is_lag_master(dev)) {
> >+		struct net_device *ice_dev;
> >+		struct ice_pf *pf;
> >+
> >+		if (netif_is_lag_master(dev))
> >+			ice_dev = ice_eswitch_br_get_uplnik_from_lag(dev);
> >+		else
> >+			ice_dev = dev;
> >+
> >+		if (!ice_dev)
> >+			return NULL;
> >+
> >+		pf = ice_netdev_to_pf(ice_dev);
> >
> > 		return pf->br_port;
> > 	}
> >@@ -712,7 +738,18 @@ ice_eswitch_br_port_link(struct ice_esw_br_offloads *br_offloads,
> >
> > 		err = ice_eswitch_br_vf_repr_port_init(bridge, repr);
> > 	} else {
> >-		struct ice_pf *pf = ice_netdev_to_pf(dev);
> >+		struct net_device *ice_dev;
> >+		struct ice_pf *pf;
> >+
> >+		if (netif_is_lag_master(dev))
> >+			ice_dev = ice_eswitch_br_get_uplnik_from_lag(dev);
> >+		else
> >+			ice_dev = dev;
> >+
> >+		if (!ice_dev)
> >+			return 0;
> >+
> >+		pf = ice_netdev_to_pf(ice_dev);
> >
> > 		err = ice_eswitch_br_uplink_port_init(bridge, pf);
> > 	}
> >--
> >2.40.1
> >
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
