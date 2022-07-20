Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A0957B049
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jul 2022 07:23:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 786A261019;
	Wed, 20 Jul 2022 05:23:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 786A261019
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658294600;
	bh=rGahBpuuykOFwQR18aaXQ7VIyxByOqkomyw7UV/FW9E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H8yM0DqQVUvqDZrYOxNu9xcPsJKwmTfBq6rvQS0ywcFIAIfewxKczL1UPmq+eQlEp
	 VE29lsCQLrKdQNjxF+jGaGsopvL/EIkmDr/BQ2tMOBCVJNVaEeWMVHnzMsnFF54toQ
	 BH2DsNovcNmQEc/yOowY8lYnjIkaTKJx3+6CFJ/OaSbXc0LS2I+6e2tT0W4dGueWuL
	 oZFCNyWym0TzsGyL1AJrNXMFZ7j8RU+O7sgnPHFK4XhWMzdW4ZL5941guqKu759kFG
	 BF/GcN3w/F9Sg9oS8hBrU7lD37NVpvsZQuiWnqnTDJCst0vRO56cuwhNUpMEYzrixU
	 HnSdVHd3dOOzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5xFoWYvFw2Wd; Wed, 20 Jul 2022 05:23:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6DAD5607E1;
	Wed, 20 Jul 2022 05:23:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DAD5607E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 42A5E1BF957
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 05:23:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1BC04824E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 05:23:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BC04824E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 83me3luZm12L for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jul 2022 05:23:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6021B824CE
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6021B824CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 05:23:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="269709555"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="269709555"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 22:23:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="925084339"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jul 2022 22:23:12 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 22:23:11 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Jul 2022 22:23:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 19 Jul 2022 22:23:11 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 22:23:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ocnqa3MnUC7a70qSd5lT3yXdiJ82/A6kcu+caIHXKcU5P47Oc2xcGRP6hM/M9iTHr+jiLhUtrTyeDF9Q+EeC4YvE+hqGhcJmdZ6e3A9QDBmXzOwSgIMA1JY3lTNW9YCBE7KcxZcKC2zKR8DYPEryIoSU2fqJW79QG0NE+SzzK+x1efv/Q+Ni/qFFZQj+xGxWkaFS6Dbmg6OZQhRdwwArKY6xB2u80R4bpdofoKXQnlMl4mRJSRty7dZO/KKrYfeS5BGzOtKbrvtVCPJE1CbJqwscPVZzr+zuOVFpyz3IvnFT3H2XnzqyxAIyfg/1qc/Q142Zrd7B65YdkRUgNpQTgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xalbEIKPyS7eTRmwDls+we4NmbXm5ojd1cJbJ+lnDMg=;
 b=fbUmlkem4ZL7Gagq8v271EOhoMbHLacPkMblx88cYkmRqAOPAfncwqANfYv1bCpaxoeCQ65CrLy+rRAYlc9i1+UY4Y+Q1Wih+Hti1SxSpS97v5wd6ZO15J3ek4dLN7DDUvUPDPJ/xHmcOMh4Hd7S6O8jTxgSgCSvizHiUNXa6Wk2TTHpDvvy04/85HdP7nL/0yF2cnf9B/szCKVAx34VGDieXneftVlMeGDVRxl9ynGERBuchwIHW89NlXEIUu4QJ+NZ4/9HDc1Cv86bRc+SIKBSEzWpPfDrHM7gBX+K0cYlcmeNapFLCZ5SSx3ggh/LVJ0Q/vA0JfEOYI+fYAZBpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by SA0PR11MB4686.namprd11.prod.outlook.com (2603:10b6:806:97::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18; Wed, 20 Jul
 2022 05:23:08 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::5c14:c947:2135:79a7]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::5c14:c947:2135:79a7%3]) with mapi id 15.20.5438.023; Wed, 20 Jul 2022
 05:23:08 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>, "Effron, Zvi"
 <zeffron@riotgames.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 0/2] ice: FCS/CRC stripping
 control
Thread-Index: AQHYitw4B1P7l51KKkqqQ30XCK28oa1lR90AgAI3JgCAH1v8IA==
Date: Wed, 20 Jul 2022 05:23:08 +0000
Message-ID: <CO1PR11MB5028C37CC9B577237FEE9A9EA08E9@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20220628104354.4195-1-anatolii.gerasymenko@intel.com>
 <CAC1LvL2vO-A2nV7H8-eMabiAf4_PQbsFMwVDpJbW3BLwe_vFOw@mail.gmail.com>
 <d08ea861-6794-7721-7485-95886e2f32f3@intel.com>
In-Reply-To: <d08ea861-6794-7721-7485-95886e2f32f3@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4eddc169-fa1e-4e85-ec6b-08da6a0fee70
x-ms-traffictypediagnostic: SA0PR11MB4686:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u+LfakSTbp0p5h68KQKscTyFzRHMYkP89ZkalujULq52a0QSMXVC5dJCNlTLYe09QdqJi8zSzf5uixOERHlgr2lWgKjJBDKOnkQGZ6IKjWIOE/rbWAUcqZ6cF4DKLRxKzQKdFJFJTTY8iOVYeLMs+4Ui+hH8obkVUMDLdxs3OjPPuiwkucEQIsDr9+91obRlBeO/usfRzbKQ/76t5KypvCckaucEmJFGzpXYZfm31/KYNbPlWqWKeniN/rb4pv0fgcLMvGKG7sndO37qPLPjVcwSlHLpA/+J/VCemLsDTxoVSQzQ2hx16gPEYqXz4mPrX0f2Uxs1FTyxdJ1kUNxy3x5AADH7vgk8YAcyYf7AyZmVdIJVZQFc7rf4/DfB8E6f//fFaWvBYYJMuZK8be8PSFckBR7eEPJlIya8Y0bCqnd5Jg0VG/pyvh1rfK1gI5oSbnUmLoJMeQobBBjsG0JcIwQnTrbFDWte1YNAb1uCdpB8GhMwuj6cAYG130A8vwxXjvel7xRF3KYIEWOjnbQ2iS29N2Mv9hJf6BzClnZrQlZBE1GRDcJviAQWXH9b9n/2ZeqfCGQbeJjX0t9oJ7EmRc1mWCP6qfJdcBZIGRYGLDFgzUSRUl5gXs/0WFUKAYEprnrY/NOkiyEVloX+5zVVAgTLdvvmOcDw+TkDyiQQnC47fDFxoAW7uchI/NWcKHhEAWxLKPS07sMy+vCaTzD+8O4zhAz6/6P+vyeMCTMFwMiW+6FeOub68uAd0RMEABLqprr6Y/LCD8ap0KX1mP9x6xoGfljyktRwg1uWBO8exgPd0SkLgXanBbkIDhxKTEM6Xma2AZ5s4OakiywaluC4sA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(376002)(136003)(346002)(39860400002)(66446008)(5660300002)(66476007)(8676002)(8936002)(64756008)(66946007)(76116006)(66556008)(4326008)(52536014)(55016003)(2906002)(110136005)(38100700002)(122000001)(33656002)(86362001)(38070700005)(82960400001)(71200400001)(478600001)(54906003)(316002)(41300700001)(186003)(83380400001)(53546011)(26005)(6506007)(7696005)(9686003)(168613001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?N3Wb7UYgBB23rSSZjZ5v4McD6EVLnuON6b1NShBe/EdkX3X0p6vKTApwAYGZ?=
 =?us-ascii?Q?PUNBTFhrTQabvOYkyeuW+XpbA687by0mVNaL86FLRVQR9i6o2fXIMfOORPv9?=
 =?us-ascii?Q?Y0mBm6ujWU3Cxi1+AI5r3GBQ4ui+msMOFVg6hOonaU08RTA05ma4ldk3Uzb1?=
 =?us-ascii?Q?YEO7fYSiYuiHI0XJKwie6uw9fqTI8JHGi0UjxlBDe4CY9jR42vY+WjolWNKW?=
 =?us-ascii?Q?oakFSCGZPZjYTVf362AHLIfKaLpdsqH9y1SCmFC7/W2NATTDvWsZm0xPHREk?=
 =?us-ascii?Q?qI8YsIcehAbQGi/nh/UMTRDAWpWB5pSsaLffa3iY3NgNndYRI9Fx08njL+GO?=
 =?us-ascii?Q?KkuN3gpywDeBjsVBC8H8EXSAnGzcomPwKD/4JAFEXWypZLZAtbsyrcsyGKae?=
 =?us-ascii?Q?j0pXpsbc7pPyBiJfaHo+aC6RXcyzNP96fcwjn01sO09zEOjyYEjD9Xg/8rMA?=
 =?us-ascii?Q?3M13Hea/YkaRlRDkrE6fmzVJaThwLvbB+4Z5/yQeFJQYYh5oWOPisY6lxmsp?=
 =?us-ascii?Q?eS3unTpT4eHcHXrwAIxsu5fPaidbed77uFGDa+wTcD4jrj1GXkD5GQ1VWpWk?=
 =?us-ascii?Q?/dcChsrfRNQN2UAuArPYsaJ1F3oOCsckPZIQKdtR06r0JKCxF149Q6PqebXd?=
 =?us-ascii?Q?ogi3GxhgTG3Eu3afdQPQbQAX6sbsefLi+mfJmmxCQUK/RomuWXlopWX1spxR?=
 =?us-ascii?Q?Ndw7tIYXo058du45RYYwhiBYYtitppaWIZnvKlRZC+CfzztaoNcIZW0UJw/4?=
 =?us-ascii?Q?TYCojO+KCEDee+dq81JegbMzXlO7tPTg+Sdib47FsLL0TkHUZh2IXRDin4Vh?=
 =?us-ascii?Q?nu1hr0jVc57CUDDyGShorBJiB3nkue4XOiYa8kxbMw3qJaKLzTpROeQ3cbGv?=
 =?us-ascii?Q?MSfEd2gX+hg+YmeQl8woDs3AFz+MfJOCtzZ8ZkuZH9fXj0SmwoO/d7GjDunJ?=
 =?us-ascii?Q?TKlZofOc0wDCXK2f/ICk5iwcIn4eMdIqXzWtN5YUnbLI5cBVMTA4ZrXwQoBS?=
 =?us-ascii?Q?QpJe9n9UGaUbtfKS4wT14hsUS72TUonoUKYNF8RJGnJPPIsP7yS7Cx5Dmrf2?=
 =?us-ascii?Q?ntKBp37Lihcp/Mv4uh0x1k0cpiJhEbA60nuHz1dHZt34kJABt4/Ahh/3MoOd?=
 =?us-ascii?Q?DICgvRyS3fX5Q1yATOeXPwu6f6mSnfuNQ2VfJ+af7kyq+hfAnSQcyrgXa27V?=
 =?us-ascii?Q?AuUJImwVi+jcZfxbOZIZywBww2eb0my7au6l2f2Lqqize23I/ofRiEfDW6g8?=
 =?us-ascii?Q?yZRolyNeiTxDph2phJ+aJVSjMt5AUf8DzX36aQa9zu789YQgZx3l341AratJ?=
 =?us-ascii?Q?ve38treV0omw3xaKoRl9mS32jTTxcRUvbuvpzX7JWrawGUKrUpjWzq1ALeF4?=
 =?us-ascii?Q?wxAG9rk+1yq3inbyJ1tAaMvNF140tle3YM53JbEGHkUAQNxq6Jin0SoA5hZp?=
 =?us-ascii?Q?dGnEH5LOzk1jPp4JXZ650sZmsRvMTYc1GBnk8AghscsQ3oQLG4KZy3GoOYwa?=
 =?us-ascii?Q?0xbN45rQluXyw/cz1HjzghuPvJ4VjUt2HPrbYSNLhjQoaxP9Zc92vCxeUDQE?=
 =?us-ascii?Q?HuImDC7yXDcEt/EufOlTXT+8boeolvzUgQ/sIByc1PoIHSgE+yOEWxtnMMzC?=
 =?us-ascii?Q?sg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4eddc169-fa1e-4e85-ec6b-08da6a0fee70
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2022 05:23:08.3621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vksSFjRedhD0UEdp7osiahexaEu2eRXHpKflw8EZ+Z5q77zlrdV5OijJFVkMgnK/1XbHbrKAWve3zPA9Zcaoatr/n/QKDD2epiySA6vl/I4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4686
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658294593; x=1689830593;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xalbEIKPyS7eTRmwDls+we4NmbXm5ojd1cJbJ+lnDMg=;
 b=XXWR4X0oktHhZYx+KpsZmjMvqxfdgezu5Rd+189g9anzXwIsVOzTjtmH
 DPvKqKBpp+kexYPxb71VL8UMi5Q87wjdQT+sbrFL97jQj03q1jpq0oBFH
 SJ7G/lWDbqJHjTBPH7zddz+MMx04lDQ0LxSlGCk8j8iNew4lqawq7M1vP
 ZE/OnnOqcCq+NM63DdeE/isM0aLoztFJKl+ipb8Dy2jnxCXtGVLoev9yX
 99xrBf1C466kRXzza/iObyQEWoEL3/ht6pAN89ZOdBqOsFSuJwwZt8Y5P
 4IUeYB3Jr3PIO2MkSdyTXUHb6/fw6iYXK9PZV1xDzaBkoa66duCmpndAM
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XXWR4X0o
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/2] ice: FCS/CRC stripping
 control
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Brouer, Jesper" <brouer@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Anatolii Gerasymenko
> Sent: Wednesday, June 29, 2022 11:27 PM
> To: Effron, Zvi <zeffron@riotgames.com>
> Cc: intel-wired-lan@lists.osuosl.org; Brouer, Jesper <brouer@redhat.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 0/2] ice: FCS/CRC stripping control
>
> On 28.06.2022 22:36, Zvi Effron wrote:
> On Tue, Jun 28, 2022 at 3:45 AM Anatolii Gerasymenko 
> <anatolii.gerasymenko@intel.com> wrote:
>>
>> Implement possibility to change FCS/CRC stripping feature using 
>> ethtool command.
>>
>> Having FCS/CRC could be useful for:
>> - network sniffers to inspect FCS/CRC correctness
>> - for benchmarking use cases
>> - XDP programs
>>
> 
> Have you thought of exposing this through the XDP hints paradigm that 
> Jesper is working on? That could make it available to XDP programs 
> that want it without breaking those that assume they won't have it, 
> allowing both programs to coexist on the same machine?
> 
>
> No, this hasn't been considered, thank you for the idea.
>
> 
>> Anatolii Gerasymenko (1):
>> ice: Implement FCS/CRC and VLAN stripping co-existence policy
>>
>> Jesse Brandeburg (1):
>> ice: Implement control of FCS/CRC stripping
>>
>> drivers/net/ethernet/intel/ice/ice.h | 1 + 
>> drivers/net/ethernet/intel/ice/ice_base.c | 2 +- 
>> drivers/net/ethernet/intel/ice/ice_ethtool.c | 5 +- 
>> drivers/net/ethernet/intel/ice/ice_lib.c | 21 ++++++ 
>> drivers/net/ethernet/intel/ice/ice_lib.h | 2 + 
>> drivers/net/ethernet/intel/ice/ice_main.c | 73 ++++++++++++++++++-- 
>> drivers/net/ethernet/intel/ice/ice_txrx.h | 3 +-
>> 7 files changed, 96 insertions(+), 11 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
