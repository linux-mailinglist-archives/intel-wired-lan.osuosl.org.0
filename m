Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F990757364
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 07:50:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4518C60C04;
	Tue, 18 Jul 2023 05:50:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4518C60C04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689659421;
	bh=UbLjfZvY+hcp471SBHehNS90sfj+2sI/0ON902HitUY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6dI5GMcEM9Artk7JAVQTrVJs2Oo5omcx0SiqMQvIwNkzte01op03pzmSBjO/4YdAv
	 hE06ZSVLV8QymeE3pzB9nvuVZtD0c0WxNZHfINBbCNZoOfCIQfXpC+rdv9EHUO/Bak
	 Yin5291eDsCN6cNd+J3nu+bck1vkpGOLZUC/d5e3p/lRLBJkLFFtv4sg2Sih4fy8pw
	 hx7laah+jDYMZPryKK8fqbXks+1PzAJa4OSeu/gBTmGqaMLIEDbltvdMmtlNPyHsdC
	 mq9dvLLtaf1v0EjIKVwxfA4/2qJRAgBoDOIRawoN/PUnmoh91ajqR7JoiwHp7nJ2XU
	 EKEnlRblg1mrw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Ib6EFk1fVaO; Tue, 18 Jul 2023 05:50:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20C5260BAF;
	Tue, 18 Jul 2023 05:50:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20C5260BAF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 38CC61BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 05:50:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 100EF40122
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 05:50:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 100EF40122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bAx7oLKxkrK2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 05:50:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 226D040106
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 226D040106
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 05:50:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="346420376"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="346420376"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 22:45:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="897447804"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="897447804"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 17 Jul 2023 22:45:42 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 22:45:42 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 22:45:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 17 Jul 2023 22:45:42 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 17 Jul 2023 22:45:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g7kEMp2ltZr+PvVuyIN8ieSc2vgzV5wziJ+2dZi+U3Zs5YwsqNw3HIQIUEmMfIiln3Y/1Yi9PFpPhods5XIUKr2/vAGx9XnCesvCEaPU41Pk2WpTJcKn4yS7k8Fooa/bopX3Iet18IAIoiRR0RCCAAx4abXGa+XZ81dk3QtbMetlFBa5hfEZKQeuucQpw06M9ZDAabYrjT6O8LceNwTF96yp1nMWyoLvS2/NgXlMOan/oR4kt4JqskajJTvcrXpLsp0B4pmdox0IKQ471pZ86hWfKEwev75UlJrkpiVv//x8SHnpMPMtspfUN4xSPuq1pI8VLr/JGd/GYkrvmziaxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cJnGHmbi8rK7SGLc0T5QW1qqLusVflevv6NnFEVP8XI=;
 b=eNUtxnagYGKHrd+ZtVM+F1J1EvZZHdCAGeyRZhqko2bTSX8sY8kWdtZN/tsdBG8pp0Tgw2mB2A6TTQC3BFQbOgH3FWWlXakVstuw8cBCH7eebU3cIoZ5N++H+CTNj/Fnk2pxhtrfyANoV0dXYFVKGCoX9S6jSzpA2gZvRGcNkUWU73AsYjjNWQ0MqXpXOcJQXegBa06h7s18dK8wJAILdNvyVSIqrLzYKNlj2fis22XMQQNmkptbQPrlY80S101DR57G7/ryX2n/dCpoB3ZXPmAcZcLNOwhrh+lZx8zk8nFDwZclRTeJVmfbcjsSD0KBRzL1MnxugQ/bV3vHox1gNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3133.namprd11.prod.outlook.com (2603:10b6:805:d2::14)
 by DM6PR11MB4737.namprd11.prod.outlook.com (2603:10b6:5:2a2::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Tue, 18 Jul
 2023 05:45:40 +0000
Received: from SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::bc18:eb70:ccd8:352b]) by SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::bc18:eb70:ccd8:352b%2]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 05:45:40 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v14 3/5] ice: enable FW logging
Thread-Index: AQHZtdkuJL9m08YzmUad+JCE8jZJf6+/Cd5A
Date: Tue, 18 Jul 2023 05:45:40 +0000
Message-ID: <SN6PR11MB3133CFA7BCBE4F90C25A83C7BD38A@SN6PR11MB3133.namprd11.prod.outlook.com>
References: <20230713222558.142-1-paul.m.stillwell.jr@intel.com>
 <20230713222558.142-4-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20230713222558.142-4-paul.m.stillwell.jr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3133:EE_|DM6PR11MB4737:EE_
x-ms-office365-filtering-correlation-id: a478e805-1f3e-4cfb-3d93-08db87523826
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gU4MxGitrurfO+7v5xIpkqXscdoxrg0IAu6oDYF9kI76nCO51XllksCmOQbzKTkol8yWmFE1+ys5r5Jl/1Q2EmLoOtK5Jefnmr+31crpC2Y4OL5+NMx2zc6sswQPLH7R6wU1ZD2A3VWvJHEzjlkvdM1Z94k8+a2bKSqYvh/pJjcoFbBMY7gC0VN8AyuxtmYP46uhaGlXJksZ0dDOJpRaLHkKpsQOr5afiN7aqaDvqBx7lO2Z57IfM6WfKL5AkmQ9eZXD3YuWZPIk25fjvXFg7GVWdznAOCB8gcYZvgK2tpAsddIAqGtpNHkGXOb0DbWPiPBdbXp8enmGVJhAodyjWAGvPgTlBa24stVJ7kqJxFPDXfiKY5caADlpDGUfaZzw2EsHASaZVCp8c0nRhOkiqEfXq+fRC7iWPd1wZOSwru5HIwXphsV/2DvLNRAyyW44blSYBEzkFJtTOczuRxdEf/X+D55bk1QpPHSRu+DwCRfl1dKhfDb8jE2RYlN4ZqablJHc4Y/aWEFm28g+sUqy5xYwuesgMwDU43RQsh7Z6xZsKXL1gkGm0C0EkdB6QBq4tJnhNOrpD9qdU5/4s0s9FSZXr8FO3w6UmsfkpcFmO29U+XQKR7EvHdxaConcifO6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3133.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(136003)(346002)(396003)(376002)(451199021)(86362001)(2906002)(33656002)(38070700005)(55016003)(186003)(83380400001)(9686003)(26005)(6506007)(53546011)(38100700002)(82960400001)(7696005)(110136005)(122000001)(71200400001)(66446008)(316002)(64756008)(5660300002)(76116006)(478600001)(66946007)(66556008)(66476007)(41300700001)(8936002)(52536014)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?J4/ePA6VD8PEqLnc76ArEFIboNpk98QDmKn5MxlAyiZQ++rVipwX81Qp5sn/?=
 =?us-ascii?Q?yZAPhIre/GEfnAYUloz1W6u9KhcKTYs3IV1VJClzgS62FfR0APjPbot9DXd4?=
 =?us-ascii?Q?iF7rSxmKnccR1zAp/o49hDPSGAETPB5rIB7C90czlMUh49brGj/EtvGGkbH3?=
 =?us-ascii?Q?fv5v5nig0n2Ty+cKJpsfo9gA2QiGHyTk23tacZuEqbo0IXNjzRy2p2KWGk/P?=
 =?us-ascii?Q?GjydC/irYbfnZqlwrOFkfzHbzV73JhOTrXjKmmsovIToGwMxD3zG0OdHo7SZ?=
 =?us-ascii?Q?/E1UXEsl/VifNcp1NDcyeg1u8KqVXdZ3ffLeLC+ZP6ri6z3smg/OTz/GYj25?=
 =?us-ascii?Q?CRBQBxHAd06S+wPuJeveZsZx1FRCMBYhQbQl4Fxp9w2x4EmUwCZSCT2IvXa3?=
 =?us-ascii?Q?p8hlSSfG3OjHx8yR0jDQHzKIQnVLzVQaU8ATWgxtY5ZI5TnDiaP2kBRIg4aR?=
 =?us-ascii?Q?WCLkoj3Qx04PZoAnsYW7Jh26hd8XjuqACyEdECwKFSm82MLkmnzB8qKguRwh?=
 =?us-ascii?Q?yvnrGFDIafQ2wv2meyq6oxmakz1PEpNJ+xEa2r4iF+njEGSrXylBqb7GF68L?=
 =?us-ascii?Q?fLIXTPmLfFGso0O+Rw/dOcYvC0R0CY5MeoKQn3h5Vn1v8UK1nMbuM4pIlzfI?=
 =?us-ascii?Q?Qt6kekrsk7ab9h48pkX6oYa8cY13fCCTVOm0n45/Lh7YJ6z6oGlkvDjTcR3z?=
 =?us-ascii?Q?eF9Cnv5qzoKRlXc6BtwCAL30bEykOQI/ICq19cHbpeyJjONd0iKz4+RlOLq2?=
 =?us-ascii?Q?Uvxotv/czMBa5kCaWRK9LmKPP3PeiHNuXk2QR1/qz7t7YkVPZ9sG187dW6Zc?=
 =?us-ascii?Q?IUcDZTgiOMQ51P52jPraRObEoGo6tV4c+42eeRMeM7hzxnIjjR83AmctqNYa?=
 =?us-ascii?Q?IYhmP/IQNZkjL17jwoDuaeVu6pX22w2G0Zio9T4YreqHHiiRSWy6PRX/5uXn?=
 =?us-ascii?Q?T7wgXknmQQE9olK7drSghUZbbjC2agQbuiGBqR6cPzW66DHeisOmUSrCswh/?=
 =?us-ascii?Q?1tOMpLDZoCkEfNiNaxnRnRdard6HfPV6ploVSVsnHO4zSDp+xUKK5Yls+dXc?=
 =?us-ascii?Q?hMQ7bOkJAueu0GjnG44nqMpEvrFwQckEmEGcjyqFwWWA+oiXse7TUAbO5JFP?=
 =?us-ascii?Q?XXLLrmzslBpEiAXQbqwrH/JIZt5CCxRq3t37tqLb2amhpWKFLVNoA2rrdiq1?=
 =?us-ascii?Q?r6DEz/66TtLXCAZmxFXsu3NspbujZIMeSsXka6ALDdaHiwaY1lccqTZaeL3D?=
 =?us-ascii?Q?uVaj+KaVO1lQ2WqMUszkvvuOTeiykcTlQNQ0ZKxz+hK5obV/1MkX7yB42Acz?=
 =?us-ascii?Q?DnO2h43cLwRcmqH/HwMJcIjscoQZS/hqkt5iAbt+aIm84KHYpu3QdNLXfzJv?=
 =?us-ascii?Q?bwnym4nRegPNEy0s2wpOgp5ftaCIfGhNj+P+pHS0lmy2DAOkKczF+yBStJLU?=
 =?us-ascii?Q?MXOfY2yQEwt/NSQ92M8bSPJIPhIyGmOJqdFVq6hXuZgEpU+pE4NIFW6TLg8U?=
 =?us-ascii?Q?FGY3In8tkLzzxpoBY9Mr5b2ixQfYA9oteMPB/LEt9rW6scbztxm29W4f7X0D?=
 =?us-ascii?Q?t8FI41Z1ct2A3vMvGMrMHO9nZfVTsBNnnxh/gU0xhJCueN/cW+yIaXqnuMHW?=
 =?us-ascii?Q?1A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3133.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a478e805-1f3e-4cfb-3d93-08db87523826
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2023 05:45:40.1547 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n/vdFidHemrbdi24tHBtpUfeDdpWbclakb1X2cQsHna35wdjqfYb52BHbeKXVuOD65cRl6ORlBVJ6tbUD0AyYMMuCd5/7Oz7W8d1exbO+pTD+yejjDHL9xxn95fSqn3S
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4737
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689659414; x=1721195414;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ALtBC4HizqCW+eBOQz3Jb+KbvkenTgK92TpXMsa96K4=;
 b=SKtaMq7JkTmcRKiq1b/vOQgnXbg8cupoui5YlvftYDn7ilwaG/n2I4h9
 p1tHk5etq24GCrTHD+heIv0oIPMugkCV/ijNYFZkgxZOukzx7cLIkSeXb
 3omLoeR3YdY1Bb9Kb6kgwE6DWAD4kL63XqUiuiIR6/nQy2DERaUk/V+DJ
 rYBSxNKEJU9DNWFC+ABnxNWFIy0kI4rliDQCh4fS6uEVUU9NkdoOpHrd/
 9rn7rO7dXVwcVsoLdZLrsUlVUqc15lv+o0iSpSr8zKELfbRwCo8mcSRyQ
 Z7qlHJoh3GQHsbIaAFwKNBZIpuG4EdVMkfu1J+yqrcjaUePILbE+scp0A
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SKtaMq7J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v14 3/5] ice: enable FW
 logging
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul M Stillwell Jr
> Sent: Friday, July 14, 2023 3:56 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v14 3/5] ice: enable FW logging
>
> Once users have configured the FW logging then allow them to enable it by writing to the 'fwlog/enable' file. The file accepts a boolean value
> (0 or 1) where 1 means enable FW logging and 0 means disable FW logging.
> The user can read the 'fwlog/enable' file to see whether logging is enabled or not. Reading the actual data is a separate patch.
>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
> v13->v14: fixed an issue where reading the file produced an 8 instead of
> a 1
> v12->v13: created a new patch for the enable code
> ---
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   3 +
> drivers/net/ethernet/intel/ice/ice_common.c   |   1 +
> drivers/net/ethernet/intel/ice/ice_debugfs.c  | 115 ++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_fwlog.c    |  90 ++++++++++++++
> drivers/net/ethernet/intel/ice/ice_fwlog.h    |   3 +
> 5 files changed, 212 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
