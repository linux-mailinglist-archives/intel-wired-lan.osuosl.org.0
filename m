Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B7F730335
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 17:14:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFE6461356;
	Wed, 14 Jun 2023 15:14:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFE6461356
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686755681;
	bh=m/r6FgoOdC0nqwjx3y+7L+2U7pGWTJ7qgVPl8GNyulA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jCq9QW2rFvNKRvroUnPuefIaiZIHZQwQ0GY3eSP4CtM7i/tr+IFq7nHRaBn23z/Me
	 jB/6JEUxMJ7kv5GiyoMCRrnqHMJr748gvfiCUJO4aZa2asKg9X1DvmaFfkxkUP/MxE
	 aNqTEqXzlZK/YR+5TBImQNu9olFM7MhhWK1vfgIjuG6S7GfoZSzqhOc9Msk5KozR0b
	 p6ot6pJr/D+Thg8j5nKPpCdPtVX4wMCyouN/Jb42CoV1Cg5AlTuxXGa1KqNuU+bcUe
	 h5dta11Akej2tGq0lVmGFqiO7GZTteRulMXfH65s5/YT2po78NoNJ+ekkEI7jWDFP0
	 xh3X7kCe1d60Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u_rE1RE1Pdwr; Wed, 14 Jun 2023 15:14:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 381DC6131D;
	Wed, 14 Jun 2023 15:14:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 381DC6131D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 464E81BF860
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 10:02:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2981141BB9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 10:02:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2981141BB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rrLVdhA40sxB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 10:02:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C987C41BBD
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C987C41BBD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 10:02:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="422174441"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="422174441"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 03:02:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="662346273"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="662346273"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 14 Jun 2023 03:02:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 03:02:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 03:02:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 14 Jun 2023 03:02:19 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 14 Jun 2023 03:02:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lsIPygK2sGdfGl5Ula2BN69nyfd85v2RVtvYj9VpEp9AmUSbmdbO4W91iJ2ilf/YffxiMgDtn2jxOV6P32nlH9V+Opy0i0vDjTdfJHUusXpbTQ6NgLQy2NrHGXR4Vku9qXhfsxTRWRdxw5A7dqxezEmGBEVk2LbsLJ53qAoUIgvaVaBXe+580Oz7wsKB+Ka4AUFQYcemJpW3CU0plxELElgTtdNb+mn7hu+n1ABJkDGonFsKK0RQTpP90ASIZC8c58XA68DDlhZXTmwxtikHsl+LY0a3IhEgU9Wc80+dKrpBTMd9AH+RKrX97+/3jDy/xo5821Ubz9SpN5rIptq/mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+H8BPZr2F7QSzultP7FD8TYKjL2Sj8HulNJsK3ET47w=;
 b=A1fdaAsEZwHx95s4JwOr1l7HZFkOBPEidtqiJZm5aRTeNp8thw3EiET8mmGghL7K2cmTi2sX6S2guquQwU6fObr7kQpPdvf/hSa+PajlKl7LwVuAAfPFFls0X7pSGwila9atn8qjAcLI98bvKTzrbBTF9ohuHzD7DQfG779rTHGSwwnoOuM6qU772AhhXR3/c8R7yIbv5YeA/zUcCO6++yki7B25vffJLgV44i9p7wxtCGYmzMTuu/wJZ28gRdlEpmd0La0ThAVBd4Pd5+z4EXTjnIeL+Itc9Hj/dKWcifqsHjg4+G48zikbVcxnAytabHvCXE5NRRLlTT3FokIIBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5204.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 by DM4PR11MB7326.namprd11.prod.outlook.com (2603:10b6:8:106::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.44; Wed, 14 Jun
 2023 10:02:16 +0000
Received: from CO1PR11MB5204.namprd11.prod.outlook.com
 ([fe80::651:bccc:ea4b:d6bd]) by CO1PR11MB5204.namprd11.prod.outlook.com
 ([fe80::651:bccc:ea4b:d6bd%5]) with mapi id 15.20.6477.037; Wed, 14 Jun 2023
 10:02:16 +0000
From: "Ma, Hao" <hao.ma@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, Magnus Karlsson
 <magnus.karlsson@gmail.com>
Thread-Topic: [PATCH iwl-next] ixgbe: allow toggling loopback mode via
 ndo_set_features callback
Thread-Index: AQHZlF1Ao/aMSJeEZke8fXMaYx19rq91tTQAgBRvWNA=
Date: Wed, 14 Jun 2023 10:02:16 +0000
Message-ID: <CO1PR11MB520485634EB27435FEDB5BB18B5AA@CO1PR11MB5204.namprd11.prod.outlook.com>
References: <20230601074621.14755-1-magnus.karlsson@gmail.com>
 <ZHhqrk8e2QR8FzAm@boxer>
In-Reply-To: <ZHhqrk8e2QR8FzAm@boxer>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5204:EE_|DM4PR11MB7326:EE_
x-ms-office365-filtering-correlation-id: 21689b07-fb0a-46c0-8251-08db6cbe6f18
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D7LIEg5N6YGRn+X6/OjLItMj4vW/zDD/2syrSM4+mxqgiWICAJv7v/uYFEt+2VLYbhCE+b0G81f2BSGvoBi4NCU8TNKgoVDSnjNgJY8EX56TKESS6ENhuV/jbvXSEC70DregOxzlafRqEnZg3QDpaGbgE5ko4U7D5rO2ewPte6Mwji/y4xtRS2OTeT0yKG6ac6JXWN0D9kdvucLZ8LChjvBPyjDQBQLW6Rt+VVJrcoXfnNsH6D49OuzG3cP+yLSWn+iVw8gYPhiySWK8rwak8HA5BTQK+ao9WeaOiphCla0H3vb0vMymEouFBhOslJWAxeDWx7OeNfSMYabkgn91RK5fOl/lIzG0kTtMVvFGc8tvFjkBEz5/JwHpQjfFD8CHZkkn02WQ4n0ym5vrRk6/0sPEldwFCR+Lr5+n5CNDsLLgrMkwRM9kSjWAmca2ZW/vGx7UnWA2or0XLAX++E0VFUpoJHDNVll4v/tiehEFxW9fx+k+uw/HoguA8KjdIGkPvLD1YaW4CYxLcx4HBuaINBWXpVg6IKXt0D95dmtGP63iZw6fit3ty7SFY5sn6VGPfUDN7HURNCpMaTrXuD64MFA6haySvs84qOxAbGkZgRNz48a1NyFqzOcn0ZPaHftb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(376002)(366004)(346002)(396003)(451199021)(38070700005)(33656002)(86362001)(66556008)(66446008)(316002)(66476007)(54906003)(110136005)(478600001)(4326008)(66946007)(64756008)(76116006)(71200400001)(7696005)(55016003)(52536014)(2906002)(8936002)(5660300002)(8676002)(38100700002)(82960400001)(41300700001)(53546011)(6506007)(186003)(122000001)(83380400001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?obFA9j+8GuB2MvhLkC0s8GoDOqNShI5thEpkwYuempFyRrbCOyAhKPxb/kf0?=
 =?us-ascii?Q?8oV5OqbUH9lNDhBdWhxbJjmGySL/48Z6CNYRVb0N5SrNmJ+JzGtDF4Oaqi5B?=
 =?us-ascii?Q?CjOjyqPxK9X0rEYcN69yBhwQHTFqQFCZpQsOAHcC1d3dRgUGUJyQjH5whoj1?=
 =?us-ascii?Q?6yOnDVHpWo9S6JJfy+3h//o+N1er24g9ZCzRi7RK2wZwHFVeBKyvvbCMhjh8?=
 =?us-ascii?Q?57s5iaOxSBV7cJG+/iBdmkJXB74mEuI38TLz6YUyHZ9OgfzBU32SjfDNZ9qg?=
 =?us-ascii?Q?XU5PUMC5Q8+SS9K4Vva6Q8fsMLCxwYOUvOlwGE6YAxSdJX3rcguETcgc78+K?=
 =?us-ascii?Q?AZQeAN/7fBYELBoBCm27rXwA0IUnCYOJqOfQo6c4MBUDr+ROl/OyNHNm+r2r?=
 =?us-ascii?Q?izG9KbC8m1uZ7AJu2JePeeZsjP0BtaddQOVZWnntDCsEONSTB9sB97zbcXoj?=
 =?us-ascii?Q?9r4faggVnGPJNnoQCElTfP2WC3DqEZV+nvz2ba7B+wuDW+PPFlkFVokEq/gs?=
 =?us-ascii?Q?v2GNdi7f+06YDHHBsRYldf6ydpAL15bnkF4975CAbyPL6nfdo8nqbBa33mVo?=
 =?us-ascii?Q?wl+PdTKVGgfnTSlHYyaGjFBNjYvWhfid3pF5GFuV5pmV3ETB2bUxsTixq/mb?=
 =?us-ascii?Q?+Gxufi33T/p7LMl/PG+KIsU6bqAz0eNLvcY35vNF/2xA+56ZvuhQCYpIapmt?=
 =?us-ascii?Q?Q+/lomE8VxqdJnCS/gS4DGizUF3yQ3tc3GHkI4M88Lo6uSBg4Rh1WPYJQisY?=
 =?us-ascii?Q?Sv8YaoUPzWwY9BoaZzfjG8Y/VYqQgNfOmHqW81K9JdvAo3R0mOq1RYRgyaIo?=
 =?us-ascii?Q?zPH+4NR72ELoZ0Mw3s8n3BmI+bwtPSoCcwGAhC1vSLodv6qPezqnDpIWaMrL?=
 =?us-ascii?Q?sJJ3ZIlKq4Ei585xuKTXEJ2Cxp0jBt1plJEYsREjZEPAfyA4d0MsfrvgG8wr?=
 =?us-ascii?Q?Qz92S1KaM9z3WDIG+83Go+t5ydCEPDRUVDF+1pkkvwDLu3HIurrNh/NSlEPZ?=
 =?us-ascii?Q?RCu0iQJ18dJTqBNnYhNMMEiKKO5mN5MgRbMxtKWwswny40nkHfrykJ4IQH7V?=
 =?us-ascii?Q?bvaz89o5jM+0+CocGF/UnwXkB9FiWmFe1qMky6II1FYH6ic94g8DrdeyEaTt?=
 =?us-ascii?Q?txXRAPvydfXro3jeTfBL4G5Sxnlnuaazb/I3Fixe90+vj4p1Y7vjM6P1XF7K?=
 =?us-ascii?Q?bkEX9YVS/MHFNjVEJ8VE/WtxHQhjYQsUN8mM0LjhW5bxB7MdJXvgYyAxsyrV?=
 =?us-ascii?Q?VBS2LUjsWTyJbNVv5N1R8RKDgDfODgzMw9EFIONHB6+U3fDQumcsliIpp4qZ?=
 =?us-ascii?Q?heGBYILPzr1526216Ut6jOrW39fDMZ6EbPMd6OFsW/Pe9cOPLkDvKm34IaDx?=
 =?us-ascii?Q?M3QGPotVEy/slpT8gXddC0QP4JY0Hd1Tix1rh0wuSr3TEcLtyU1Gbp/BhGN9?=
 =?us-ascii?Q?NPfogctCe4oVgJfT6GKVjjEOmYCcQKxn4LJ8bdRGbRtPwIL/13OLDyDL6L6y?=
 =?us-ascii?Q?i/MAZOugMrUXllE0+axY+829RJttHnLhbs5ZjJMvNGVUJ4Zg2aF529H1zw?=
 =?us-ascii?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21689b07-fb0a-46c0-8251-08db6cbe6f18
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2023 10:02:16.6103 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K+TmKbXZyCBLgSE5yHLPPwdore58RFoaV1CHXK4FvajNtSRmOJjGBeGmXfBafBBBmw/k/t7iCXHgz2oy7lQPUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7326
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 14 Jun 2023 15:14:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686736958; x=1718272958;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B+qrkWitDnFMWIbzIgwW1UG9B/YYhWrobzmG98kBoh0=;
 b=nWUQmENQNnbRVjZb/UItKYv4jKtXVvQrRkK+n+XjDSrvzia3uQJ4TfTM
 xV6ELdJ8m23e1Dtylx+sLqF7Yi0TqnfHVFV3fAu8m4pRAGs+YCV5yb8vN
 yfIR2+469mzJAZiDtewSLbwQpPHUbnlGOOltWHdox7dneC6MX52l6nqZo
 taPw2Q1wVWhzLqyJlyH8emFQHZHUln3zOu4J1pSM/MPnmfSzR2Y9RK7nI
 VpNrpTHJd1DLaJOwPdcR9EabZDcGvGozX0InwIEWa79prJjrt7diHNMM9
 zNMlap9gW0IbhlGyzHIdwRXZ151gbsA4pVfKuYhPeA+UZclqNVNr8r9fw
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nWUQmENQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: allow toggling
 loopback mode via ndo_set_features callback
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Sent: Thursday, June 1, 2023 5:54 PM
> To: Magnus Karlsson <magnus.karlsson@gmail.com>
> Cc: Karlsson, Magnus <magnus.karlsson@intel.com>; intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> Ma, Hao <hao.ma@intel.com>; netdev@vger.kernel.org
> Subject: Re: [PATCH iwl-next] ixgbe: allow toggling loopback mode via ndo_set_features callback
> 
> On Thu, Jun 01, 2023 at 09:46:21AM +0200, Magnus Karlsson wrote:
> > From: Hao Ma <hao.ma@intel.com>
> >
> > Add support for NETIF_F_LOOPBACK. This feature can be set via: $
> > ethtool -K eth0 loopback <on|off>. This sets the MAC Tx->Rx loopback
> > used by selftests/bpf/xskxceiver.
> >
> > Signed-off-by: Hao Ma <hao.ma@intel.com>
> > ---
> >  .../net/ethernet/intel/ixgbe/ixgbe_common.c   |  4 +-
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 73
> > +++++++++++++++++++  drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |
> > 1 +
> >  3 files changed, 76 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> > b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> > index 878dd8dff528..b8998a56ad24 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> > @@ -3337,7 +3337,7 @@ s32 ixgbe_check_mac_link_generic(struct ixgbe_hw
> > *hw, ixgbe_link_speed *speed,
> >
> >  	if (link_up_wait_to_complete) {
> >  		for (i = 0; i < IXGBE_LINK_UP_TIME; i++) {
> > -			if (links_reg & IXGBE_LINKS_UP) {
> > +			if (links_reg & IXGBE_LINKS_UP || hw->loopback_on) {
> >  				*link_up = true;
> >  				break;
> >  			} else {
> > @@ -3347,7 +3347,7 @@ s32 ixgbe_check_mac_link_generic(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
> >  			links_reg = IXGBE_READ_REG(hw, IXGBE_LINKS);
> >  		}
> >  	} else {
> > -		if (links_reg & IXGBE_LINKS_UP) {
> > +		if (links_reg & IXGBE_LINKS_UP || hw->loopback_on) {
> >  			if (crosstalk_fix_active) {
> >  				/* Check the link state again after a delay
> >  				 * to filter out spurious link up diff --git
> > a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > index 5d83c887a3fc..70b34b7b5cb0 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > @@ -8864,6 +8864,57 @@ netdev_tx_t ixgbe_xmit_frame_ring(struct sk_buff *skb,
> >  	return NETDEV_TX_OK;
> >  }
> >
> > +static int ixgbe_force_loopback(struct ixgbe_adapter *adapter, bool on)
> > +{	struct ixgbe_hw *hw = &adapter->hw;
> > +	u32 reg_data;
> > +
> > +	hw->loopback_on = on;
> > +	/* Setup MAC loopback */
> > +	reg_data = IXGBE_READ_REG(hw, IXGBE_HLREG0);
> > +	if (on)
> > +		reg_data |= IXGBE_HLREG0_LPBK;
> > +	else
> > +		reg_data &= ~IXGBE_HLREG0_LPBK;
> > +	IXGBE_WRITE_REG(hw, IXGBE_HLREG0, reg_data);
> > +
> > +	reg_data = IXGBE_READ_REG(hw, IXGBE_FCTRL);
> > +	if (on)
> > +		reg_data |= IXGBE_FCTRL_SBP | IXGBE_FCTRL_MPE;
> > +	else
> > +		reg_data &= ~(IXGBE_FCTRL_SBP | IXGBE_FCTRL_MPE);
> > +	reg_data &= ~(IXGBE_FCTRL_BAM);
> > +	IXGBE_WRITE_REG(hw, IXGBE_FCTRL, reg_data);
> > +
> > +	/* X540 and X550 needs to set the MACC.FLU bit to force link up */
> > +	switch (adapter->hw.mac.type) {
> > +	case ixgbe_mac_X540:
> > +	case ixgbe_mac_X550:
> > +	case ixgbe_mac_X550EM_x:
> > +	case ixgbe_mac_x550em_a:
> > +		reg_data = IXGBE_READ_REG(hw, IXGBE_MACC);
> > +		if (on)
> > +			reg_data |= IXGBE_MACC_FLU;
> > +		else
> > +			reg_data &= ~IXGBE_MACC_FLU;
> > +		IXGBE_WRITE_REG(hw, IXGBE_MACC, reg_data);
> > +		break;
> > +	default:
> > +		if (hw->mac.orig_autoc) {
> > +			if (on)
> > +				reg_data = hw->mac.orig_autoc | IXGBE_AUTOC_FLU;
> > +			else
> > +				reg_data = hw->mac.orig_autoc & ~IXGBE_AUTOC_FLU;
> > +			IXGBE_WRITE_REG(hw, IXGBE_AUTOC, reg_data);
> > +		} else {
> > +			return 10;
> > +		}
> > +	}
> > +
> > +	IXGBE_WRITE_FLUSH(hw);
> > +
> > +	return 0;
> > +}
> > +
> >  static netdev_tx_t __ixgbe_xmit_frame(struct sk_buff *skb,
> >  				      struct net_device *netdev,
> >  				      struct ixgbe_ring *ring)
> > @@ -9915,6 +9966,15 @@ static int ixgbe_set_features(struct net_device *netdev,
> >  	if (changed & NETIF_F_RXALL)
> >  		need_reset = true;
> >
> > +	if (changed & NETIF_F_LOOPBACK) {
> > +		if (features & NETIF_F_LOOPBACK) {
> > +			ixgbe_force_loopback(adapter, true);
> > +		} else {
> > +			ixgbe_force_loopback(adapter, false);
> > +			need_reset = true;
> > +			}
> 
> on ice we just do:
> 
> 	if (changed & NETIF_F_LOOPBACK)
> 		ret = ice_set_loopback(vsi, !!(features & NETIF_F_LOOPBACK));
> 
> don't you need to set need_reset to true as well when you are disabling loopback in order to clear appropriate bits from registers?
> 
ixgbe driver loopback enablement can interfere with NIC normal function configuration, so after test, a reset is needed and reconfigure NIC back to normal function.
> > +	}
> > +
> >  	netdev->features = features;
> >
> >  	if ((changed & NETIF_F_HW_L2FW_DOFFLOAD) && adapter->num_rx_pools >
> > 1) @@ -10286,6 +10346,17 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
> >  			/* Wait until ndo_xsk_wakeup completes. */
> >  			synchronize_rcu();
> >  		err = ixgbe_setup_tc(dev, adapter->hw_tcs);
> > +		if (adapter->hw.loopback_on) {
> > +			u32 reg_data;
> > +
> > +			reg_data = IXGBE_READ_REG(&adapter->hw, IXGBE_HLREG0);
> > +			reg_data |= IXGBE_HLREG0_LPBK;
> > +			IXGBE_WRITE_REG(&adapter->hw, IXGBE_HLREG0, reg_data);
> > +
> > +			reg_data = IXGBE_READ_REG(&adapter->hw, IXGBE_MACC);
> > +			reg_data |= IXGBE_MACC_FLU;
> > +			IXGBE_WRITE_REG(&adapter->hw, IXGBE_MACC, reg_data);
> 
> can you explain why do you need to set loopback bits again after they were set on ixgbe_force_loopback() ? are they not preserved after
> downing an interface?
> 
In ixgbe NIC XDP initialization process, the corresponding register will be reset.
> > +		}
> >
> >  		if (err)
> >  			return -EINVAL;
> > @@ -10969,6 +11040,8 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >  	if (hw->mac.type >= ixgbe_mac_82599EB)
> >  		netdev->features |= NETIF_F_SCTP_CRC | NETIF_F_GSO_UDP_L4;
> >
> > +	netdev->features |= NETIF_F_LOOPBACK;
> > +
> >  #ifdef CONFIG_IXGBE_IPSEC
> >  #define IXGBE_ESP_FEATURES	(NETIF_F_HW_ESP | \
> >  				 NETIF_F_HW_ESP_TX_CSUM | \
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> > b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> > index 2b00db92b08f..ca50ccd59b50 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> > @@ -3652,6 +3652,7 @@ struct ixgbe_hw {
> >  	bool				allow_unsupported_sfp;
> >  	bool				wol_enabled;
> >  	bool				need_crosstalk_fix;
> > +	bool				loopback_on;
> 
> please explain why are you introducing this flag
> 
Please refer to the previous comment.
> >  };
> >
> >  struct ixgbe_info {
> >
> > base-commit: 735c9ee9a374769b78c716de3c19a6c9440ede85
> > --
> > 2.34.1
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
