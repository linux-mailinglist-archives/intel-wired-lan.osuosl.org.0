Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C020633D10
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Nov 2022 14:04:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0D35A40917;
	Tue, 22 Nov 2022 13:04:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D35A40917
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669122244;
	bh=DmLAYE+YMKXvDZe05imT1nj+k/jzuuY4k2udiMmRQIc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XKWJjKMcZWLse0NSDLRSP5gxUzOGwxdPQxkE3slR9GSDqqeGhtLX8esMI+xRztWUX
	 JbTnLeK+Aw5eGaOV1Wq8GJ9It+XcW8WqkuDrV9qTDRGgo58AyC4CDPyuHeaL3RtF5m
	 01K4DG/dc/5lKFLNvYtbv9vvoqZsg5PP1VW34vy8vYz2FmsmHxxLbxcH8aAbR/E4T7
	 OHqyg2mdTA+Fkoq/xzHQ1g81TPxmB6xYjnYFSKIov6Agw27enadylbIjNUpvc4Vr2g
	 I+mgTNjgt5BT60/rgl/Yaxbxt7mCQbJUNm/ZbbV4lfTdv9lcjImcfjqeJN2D/z+922
	 TnZgOaH3KWYDA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wGlHg8lAIg7q; Tue, 22 Nov 2022 13:04:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E232A40904;
	Tue, 22 Nov 2022 13:04:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E232A40904
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A879A1BF28E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 13:03:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8180040904
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 13:03:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8180040904
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oqjsk1VIztT5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 13:03:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B58F7408FF
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B58F7408FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 13:03:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="301357269"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="301357269"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 05:03:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="643713617"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="643713617"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 22 Nov 2022 05:03:53 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 05:03:53 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 05:03:49 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 05:03:49 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 05:03:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EsccB3nu2BLuCcF/1DF/r8/KZKIUe4XzyIBhGqMEEaGeGa8Z6j9ZvdLiJYP4kcYu2JywDi+lu/ml5J8skP2wtllpWkPfNzACtbiKsooVFD/CXzVUtpkeR2OLjQjUBLSuuulvsvR4WvdW42PzGrwSpVHMImg58W4EtJcUnNHHzVbeB5qM6+8/RZ7bvzSgd3AqAoeLIVC/9niMisV+fE0GRceDqX3FLcmyBQGXxSuJ1ROQD9PAv6WB/Osn3Qrp2eY+oxeS57hhti9A57T1TIKS6uL5eQwwZFE21dX+HtkaQaRGAktqQt9aXTaY/UfT7oGesE+U/Icg8yo7Y5vg/AYlEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mG+AXQcLEPKYgi0P7WKODq6lGXHNMUqsB6BGjm68Alo=;
 b=iQWpezHhFiPjZtyIQo3bviE5Ui2ICe5S5mRuCcM339UQ5aig3GFfrzpsRH2K8n/w24bvWjqzoU+th7Dt1S6A6qFfWaDWonpMyjxkyDdXGU6sLEMDqdDO4ZG8HyJfGOS4IbT5PpOlN8V8kHsE+Jh5V8J0h4n3zW+ST2gEaItESvoAx+zibQFquhTAvszpMPG+oNMpdcv6t+hbSza0WjEjNAiAYDt+njSvm0YPyis7Is0f1HgDIf8n8d5K5gygigSor/3XWdf5e/R7X4NqVqF34mBsBZs8qrG8mRJr0AmJUYpK+ps6aQHDCyZ1+u8JUbSViUkdSEYlPa2cO0gxvDdyYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 13:03:46 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 13:03:45 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Shang XiaoJing <shangxiaojing@huawei.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>,
 "shannon.nelson@intel.com" <shannon.nelson@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] i40e: Fix error handling in
 i40e_init_module()
Thread-Index: AQHY+dhWcBXbJrDbBUugU2IJ/xa9Oa5K8eLw
Date: Tue, 22 Nov 2022 13:03:45 +0000
Message-ID: <BYAPR11MB3367F2A487058051934263DFFC0D9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221116012725.13707-1-shangxiaojing@huawei.com>
In-Reply-To: <20221116012725.13707-1-shangxiaojing@huawei.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW4PR11MB5800:EE_
x-ms-office365-filtering-correlation-id: 4207bd6f-9349-4ecf-6e2a-08dacc89fd55
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d6UIycmZfgGNwYlKlk3QxE+9X/e2O3w/0MqjyH2gIttxTR777nB+5j++Mz1AAGaszV0+DNfIjPxHul1ln1nVVPjZsPCcNXPQb3CET7pv1OisV4fFrgIJVZAq5LboAj+bOKu2lUcH7SL0L46aAeSqOIaHHtCTQTGBf/YvmaDryTPzTCfyrIIbVB3cenaJTDQCid/WHXOrEzQpCvND8kOcuqx4Rf1ebak9qQwWt5s97lSXpFarXaeGsz+NPx2H0nH0Eubgfky8RsXpwRw60upeG87YPQtvLCSreMCHbFPHMiu33EA/nIForLQS2L+DentFZEpIvsKQNEaP01cIuCDq/LJDnDfKlUW4WfR9jkRVaOPXS3ya3/mjAQLjmrXHTX+aRQlhflnzQEgmu6A90qCFXOf00/Y6O0j+8vFryzYlj4X2I3V50TriBNVJ0VmFK0OYP6Y+KVW40XFsLoViXQ0vwdHmrlkc0YKQVhv5wI4M8fVJgjA4ccPk2RLloqf4cOF3W9T4bIIcHJTscR6LqYoEd2CIe1dyvTeNQ89rqRpPuYch3M4h5UO5nE4c1rT9nXK/t6swuYLHWTpRiTmDpvQB0coMk7BXv8nqj8MFN9QVTbNHN0FW8SdLXBPQ5t4XleoALEi6c/31NY6nocyKG8E+B/pKFdmcxLZ+Xq0AXnfJu+osRJUuHiPCWTmy9C9imFHDyXkiEzL5w2heFlCqV5KOtFrfizc4owO/7GPcNrUqclQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(396003)(39860400002)(346002)(366004)(451199015)(2906002)(52536014)(8936002)(5660300002)(316002)(82960400001)(66556008)(66446008)(66476007)(64756008)(8676002)(921005)(110136005)(33656002)(38100700002)(66946007)(76116006)(41300700001)(478600001)(71200400001)(86362001)(9686003)(7696005)(53546011)(122000001)(186003)(38070700005)(26005)(6506007)(55016003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?P52qoq6JHOBJ208xyGXrBw1Bw1v2VCZp/mK7l/e/gwjutIjnZ+hEGrMvRo1K?=
 =?us-ascii?Q?hvYUfBfyj50YrmOU73S/tzm5eNom0Bbz5tVIY1O9a5Onxz+e2rvHyvhXFaz+?=
 =?us-ascii?Q?jz0J81l0oDzTClHFvWGf7rGPeXPbmnqy7eKJI0+cHHsKwQH+DxgJ65hPW4SU?=
 =?us-ascii?Q?N6dcrujSHY+Qu0HGHw/8I4KjcJfRZTm2taO5/tNWOObx6JfFRi98IAB1P8P4?=
 =?us-ascii?Q?Hot+v+pMmcg+MAWHJnA8SDULIE3fk242e7N3UbWxLe42ToPzV4eDzRmpvmKq?=
 =?us-ascii?Q?VP7RoMPMZmK5mkJN7OfbOnOmRzxfIZwVPNcdQszMaumobZCy/GeX1qh5YDqm?=
 =?us-ascii?Q?5CFs9JhNdCSz+vagdw4CymgTsGS1NJZvA4P6FX2sh6JuFarwvsQd38kviTbD?=
 =?us-ascii?Q?Lj3g8nIrBe20nxwU/lRFYEwrBIvQJHlGm33WemfzZeyYgiNePlyaR5goItId?=
 =?us-ascii?Q?CffMn2Cnf94ropeUlDXiuxGaii9vnQpSyexqhD32cLOdAhBt6vGPIQmes36J?=
 =?us-ascii?Q?xGESbgQKySmQYDBlLk/56/PnNOh4pyQZi0UGL7ugivL6hFO6A4UXDcObH8Xu?=
 =?us-ascii?Q?0TngTJvuQAUsyltnrAapw+YntjU33mnI+oSMuN340G5A7EBPc3anEvwgWpIb?=
 =?us-ascii?Q?kcHPPgVIOQsKulI9xK7ZawjccYGAVRRaUvattT56ac1DXe9yTH8wtMXsT4qI?=
 =?us-ascii?Q?FyMoZXEm9XNpTK9r110D1rd3+TOei3aT7G2FV2mZUKXxjhmOFiM5whpKlrTS?=
 =?us-ascii?Q?tOlzKPZxJXGJsR2sUE+gBorqITWMPYtjKuKYkq6KUw4yOdW9X85t9fYEFOzX?=
 =?us-ascii?Q?1CdVW/VsSnq5I+jLHCFEcmV4lgmww4AD4MQJgvouPpJGzlhHJg/Y/RONz1Aj?=
 =?us-ascii?Q?kdqlRii3SodC67w2CT4hfbCbMyvavt1fzaZwCZBlnHKWX5ASpd1uH+gA/Od0?=
 =?us-ascii?Q?2UaJo0V5rdnTtnXRKuBkbOx1/S2Pj6S5P0ojNtC6j31dcAdTYiJAOFf44PES?=
 =?us-ascii?Q?43/cHPmUlMq0RzJhWLPRlG9NRdi1dP1GP7Jv7V+V4q94XNRyqC7zVkU2of8c?=
 =?us-ascii?Q?hcPOh1dyn6iy7MF5Tlr5kdZ/XUVn3ecRhc4Zh4Lm6PKf8X0+9itXgZdZkfyt?=
 =?us-ascii?Q?XlLIEjmUVGu0nCpGWucv2Lu3tjdo/3ylDXPlGd/6e1mrBI/FFB7a76Lj2MI+?=
 =?us-ascii?Q?TzIPVtoc7FFfqmTaN/CWpl8QkaWKlrY5N5MMIHHwEtvpura9n3rxtdCm6ZFt?=
 =?us-ascii?Q?ts3cXawIH7/+CyZ7Zdwk1xdle8fS1bHXfeUsXCyjrVJpmH8b6ysjbJJ+AJkk?=
 =?us-ascii?Q?mBMLb8rWQ05hLUq78hHrt/hLRUPYR2tasrSDr0sAB1eHC1gEl+burzbbtbAX?=
 =?us-ascii?Q?ouowKNSXRmtK21C2HprJTgTuBf8uaIBnI+TQybGM7oI66ZOmlOvi6sT1mMkw?=
 =?us-ascii?Q?xHjyW5ENlnGWMAjaRNBGDhxudRYi12wQZJM3UFuJQd6x2UIo95FS0iY63v1R?=
 =?us-ascii?Q?yIDd3wn8sKdYPb4ZRnTbRNffHIorbewOgGWRtn+fxMSeXtV1v89sCZ0iw43C?=
 =?us-ascii?Q?brAOap+P33EtFTkT9x638x8KKPn7ZA1W3JZC9Qrh?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4207bd6f-9349-4ecf-6e2a-08dacc89fd55
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2022 13:03:45.8698 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: thymkMtlS866hTYGtYqs+cOp0e1YMnBkig+EECbXK4KxdGhCc0Ou2D8f92NzxhiTbDS6Lq2uhQ7JkS/hsZ7Lgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5800
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669122236; x=1700658236;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=InT38WrbP3EzxJ18KCBGGflYduPUjksufysd8pyZNSM=;
 b=gmiOzIphsJ5Vuqj07I0WBANiIeGxrwg8bCHj5vkGJUvqBD+zq//24VrM
 lke9fVE0RFv7ocq64N9IBFud74ns4oTDYtClKnogkRypj5DGxhC5BWxHW
 UaqgvRaGA94aI42OT21Qxb7R53fp2NYRpwIcLWQKHbzS1xCB1h2QnqYt2
 w1F4q7Y4CpJ0z75GKnXHRJ0rnxIBrcSFa9wnvhtlOBWZAbUQreC5f/vFM
 ahjs7hYB/EthQO0smZfQkm2Lot5MZX68dfn947S54IOtjinZz/xQUdbfV
 6nf8WMKAdJRWPllkv/26al3Ap3VLIRaedAAsvpigqT8/veRDBTF5PDY6h
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gmiOzIph
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] i40e: Fix error handling in
 i40e_init_module()
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Shang XiaoJing
> Sent: Wednesday, November 16, 2022 6:57 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com;
> jeffrey.t.kirsher@intel.com; shannon.nelson@intel.com; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: shangxiaojing@huawei.com
> Subject: [Intel-wired-lan] [PATCH v2] i40e: Fix error handling in
> i40e_init_module()
> 
> i40e_init_module() won't free the debugfs directory created by
> i40e_dbg_init() when pci_register_driver() failed. Add fail path to call
> i40e_dbg_exit() to remove the debugfs entries to prevent the bug.
> 
> i40e: Intel(R) Ethernet Connection XL710 Network Driver
> i40e: Copyright (c) 2013 - 2019 Intel Corporation.
> debugfs: Directory 'i40e' with parent '/' already present!
> 
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Shang XiaoJing <shangxiaojing@huawei.com>
> ---
> changes in v2:
> - destroy the workqueue in fail path too.
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
