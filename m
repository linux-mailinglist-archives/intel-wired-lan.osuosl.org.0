Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 146427CF4EE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 12:18:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A00D042EB5;
	Thu, 19 Oct 2023 10:18:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A00D042EB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697710704;
	bh=3ASF7UBtwtEpb2gYGOQHVGsvnhb3Kp5lelmMZgD4jQc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0Q73UpP95LWHHGPvhxiFrZ9jG58iEVx7DV5ALHihE6q5m3qV1BUOKvUWvZnpezvPo
	 cwAEyvA0bVcFKZZK6Nhpuiisnhw4JtKJL8XbsgqcIhtFq03ZXC1mD+9oiaC7IL5m4i
	 MFM6B/E4JeP4zuBI0Iqj78Ay28XVZkn64axLLiAzVUKDVkemKBxdjIJWu2K7dEm3Vd
	 btzPdvxbBWTv3lozIIbkVCL8i4icvrK/eEb+9f4Gz0qEW5H5wViI8J6KF+/HY9nINe
	 6VeI8RhEnIHMVeBGvZS8NSY4ZvGiqMXvslw/oVQRRym+EPCpiytq0OxGAO0QaMFWUY
	 sTOvRBPFK7Kww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1yT8gCCo7Je5; Thu, 19 Oct 2023 10:18:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43CBE4060B;
	Thu, 19 Oct 2023 10:18:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43CBE4060B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 349591BF48D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 10:18:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 17D9D423E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 10:18:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17D9D423E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nLvi6t2oudnf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 10:18:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2B2AB4226C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 10:18:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B2AB4226C
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="366457407"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="366457407"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 03:17:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="880594055"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="880594055"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 03:17:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 03:17:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 03:17:56 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 03:17:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bOKIBaHU4J9sekrZ74c6lEwp/EWLaMQTrO5y2cEJbOR88b+zaPLbz0OTi4UjzY9SzIfsbW6ds+bOtUrhcFkzpVNYC/7D9oNWtJAinrckDifkkxxc/RnKxKmOu5r7zbOqDhLt/aYh+SUWT8cdd86ylBo6jbCoR6U2/j6EDDtoDRbG7dGSFRZdFg3vNdE+a2DsXxAn5I+aCyBte/7jAB8LLgfRlyBDxjhAAH3GiBY6uktqBrsy6gZkKy82mJ4t9YLBadZmdxDW3hm+p9VeAylGdoPaw3HGhhM1bJ1vJjj4w/QQ+20J0w7KqOGgZNHWDMng5FhEG5vuAgBYI/nLL7le2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pSz4E9NLLhpyuSsrs5Jj+utEhAy3iddX1cMD2KMZNeQ=;
 b=Feejrlec7pRVtJAy3iir77nKJL5AV2K7IgeL2o3Kn1RvDqcePevAm2NAa7PnysboIg21sC/6W8DQqKKTlqlmHv7RM1W/1j+iDQnAJjI3z2qnHvK6Y613EFhTawPUXg4TntNcIssWtvNIZ8V+jxJ5DYIPTUNdyzwxMr6oxGNEKCA9kfPAQtE8xf/FndTZROUqudJT7ixqMt1BNAffuxVqT/waTfus+ohlPo/evZGrwVp9b0jazK0YIZoKBWGBk0BqgIxgSMGnbk7Q6+mTbuArL2OlGefyOeLo9wI13y7vQO9dzt9Cg56itkItyY5TI/qW0N0tK5E3fDjDRqNYZbv0lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by IA0PR11MB8353.namprd11.prod.outlook.com (2603:10b6:208:489::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.23; Thu, 19 Oct
 2023 10:17:55 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858%6]) with mapi id 15.20.6907.022; Thu, 19 Oct 2023
 10:17:54 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 3/4] ice: set MSI-X vector
 count on VF
Thread-Index: AQHZ6fxO+PBP3zpjZkaA/OsHkWgJzbBRFwBg
Date: Thu, 19 Oct 2023 10:17:54 +0000
Message-ID: <BL0PR11MB352156D03068E6736193BDE08FD4A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230918062406.90359-1-michal.swiatkowski@linux.intel.com>
 <20230918062406.90359-4-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20230918062406.90359-4-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|IA0PR11MB8353:EE_
x-ms-office365-filtering-correlation-id: 00b1cea9-588c-4da3-feed-08dbd08ca8d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +33lt9+AemK4aNev3M2NcjEP0lntk/VYW4R/qIXUhiYvm7Qj3H6UcQ9PXe18iYdUDbzjYbMfFCopZWi+zFAqfzXbeY63rgb2ucrVbxUXpNKFl7y9g9teNO5ojK6z1iPYON1QPqhAxn2Jgw/9ItNxLTFbS6RuoZTIwGaS61rintFzkLQZ2N1lUzlHzR+ELQDcdvSKU6z4YDyj3/YNHQSYfVKQMpIXfovhGmn+eo881jPycfdKJ2VTz/j1zfo5d4zjzX/y+k+cI8g6vJLNDPk3qVuUMo1AKalQtYAWMiwUJx9FkfUhAJXUA76rvn3VjIk/oQil/d5ZfEL++o2ASwvJtLr9LDetZ7gBs5UovXnvbpykMIDmB6e5pu1OaVDa2D2TVPf9ApjShxDrMQtE5B23xMOZP12qtjpgltdxbEvdzNSHxUPNjVL5OCGXHCe/50ruxtklgkKO1b3wVVoiFJyQClXZ46YEUV8cULH1JdgL7VF5i47fCpkG71egsVewFsWXrwvaTQEH2srZ+WKJ9Ynoudpanq7ShhsPhmNOmPlPdnp5AKPTDN+ElHoDDKnWRSXtCr8I/bFtrVimMm5xQD682r2sJAk21bv9W5UofNGGKhUilQBdzGb3386NbrvN3gXU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(376002)(366004)(136003)(39860400002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(478600001)(6506007)(9686003)(53546011)(7696005)(83380400001)(71200400001)(54906003)(26005)(316002)(41300700001)(2906002)(66556008)(4326008)(110136005)(76116006)(5660300002)(8936002)(66946007)(66446008)(66476007)(52536014)(8676002)(64756008)(122000001)(82960400001)(38100700002)(33656002)(86362001)(38070700005)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0VymSoVSQePjPSYViZyMtZHsI/FCwXGqs/Vug0XhTgXDtoHUXdqAxu8trLhl?=
 =?us-ascii?Q?YlAfIwFS3zhNU47onEpJTGYxTqAeLfGO5g70HjyaAllIPzk4bI8OXPt7ZNlr?=
 =?us-ascii?Q?3XEoJsQcbAgH3iKn1L3Os+Jq9gnO2wPiz6wIt1n8NPq+HPNYF746mlbCGzV7?=
 =?us-ascii?Q?mQnKFsa2z0GmCuNVwuwFSmpVH5UMyh0+3JrymuAsdB6Vzve9LYUJf4RTL102?=
 =?us-ascii?Q?LO89lVD6emGxF3hW0FqyaUEyOvKuVtHuwuZAudbmxfpA87I0cBzKYXtL0N/B?=
 =?us-ascii?Q?TSjkx2ffWgsqKS91Wdqy0R2aemMOSwRgu9S8PkqnVjPLcsZaoITrpBqKw3sZ?=
 =?us-ascii?Q?SMi1ZW4Zrrt3ogBFJ2XwXTiD6kDd6m7UC49ckAhgOsCGZBg8uAuNMD7QlbBJ?=
 =?us-ascii?Q?Oj6wj9u5cTGaEPc+akylUCzalW69DOvL+MFWIDfNibECfmkIfCmCgVmhAInS?=
 =?us-ascii?Q?aG5VzYrTnKsRVIagOLT+RI6cxsNU0rIdbuqchnmhg57rOR+ZZPw0MygSUq9S?=
 =?us-ascii?Q?CQTIG0MH0wIoLNX0F2dJsUEKMef5FQwxCcoXjNZ3ea7d8EngyBW93HlZqIrU?=
 =?us-ascii?Q?zL+1k8jTlqyGK2BX5/n9GKA4jd9bEYSWiTyTkYxGHbhtqh1pChM/iWcJ8Tuu?=
 =?us-ascii?Q?FyL84O0kTQ1WFM7riVD8+hPFBaBMYzb65oPgHumizLCy1FM1dna0w8KacLVu?=
 =?us-ascii?Q?mtR19htF7R1peGCNs5lvgDLpOXJZ2XWlWTY6x0yXoprPW6dzlF/27A5bQw3W?=
 =?us-ascii?Q?1PbamEKk3ld8jsS6umuw/Z24QobhiNkbtvD/ibUQJPRikkss1634vaq6r0Z+?=
 =?us-ascii?Q?9KY2/7ufjbHAJFkb+GK1Pz2mjGMYUZ/GsQU8R6HA4s+xA5VHVTn7Sazjovyc?=
 =?us-ascii?Q?U4B8R7r+fzhtOr6JEAoEMFF+LFsVTBJNsKurgJ/26pLQMS55GFJ/F7NUu4s6?=
 =?us-ascii?Q?3EV5CGC16cQQt5Xb5Gy5IcL8NpCK9wGlu5yyDHRMXXILhl5mBMOR3TgaSli3?=
 =?us-ascii?Q?QsuNQRPKt/a6Pfewu/ahoKfYWukCVd9D3sxAV7r3w1loMD04E8oiKxF18qKQ?=
 =?us-ascii?Q?VwXNPmwvnaaCTZ65l00GXAEEd7VVUMAa2PazCjSDm/xH7UFtlDKyBgiL0wZO?=
 =?us-ascii?Q?YX5TSFwpoCHrrnQOWzq5lspj9USPPHwlYS91qz4ogR0JUDIDR+gws1yigQvu?=
 =?us-ascii?Q?qwiMCSk4Qr4V6wRoBKuBrbj5FLAe7/A57ZqR3f8v8SCS5Z9ZKGqk9VbLCKaZ?=
 =?us-ascii?Q?Xn7PnNU8XeGUqITDj5TYKcJrZpyPFyA6BgnXfwT8lAwqnN4fWM9uLWQHau3w?=
 =?us-ascii?Q?+J1VVkvTdLNFBY8UD5L0nuhb85qPmP55NnTdG5grduCQUNF0pD8tM9OrD9HZ?=
 =?us-ascii?Q?MHB8WAqailmGcRFVrsk0im6HYINwNjmoW8ZNv8MH8RqX1F9HBiKQfrAgBDGj?=
 =?us-ascii?Q?Ofpb7/W78yxU7ApBVA47SRSQf9CUUKsrcjQuAPoVF4s+dqW0ECn+3RoHBUWf?=
 =?us-ascii?Q?E256/EZCe8b2WSAnXKAeVzjbbgsRhvnphtUc0Aq9RbK0ne9eZ0Pe7rVnKsJi?=
 =?us-ascii?Q?tmzyukE0g3jfE8KMJQGVQMB+0ODO7XYdCU0QW2g9OkqoUubNVW+AvQdAB79M?=
 =?us-ascii?Q?lA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00b1cea9-588c-4da3-feed-08dbd08ca8d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2023 10:17:54.9377 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +leOGEkwrVOiaH5dhwZHqMjh1d5Ppxe9/ZXiS52Hjr+kZYV0Lo/qH/9xnJ+0V5Ce9Fb8csO0ljiLRN/X5VTjFdp/uF9h+42vqCbf+ekHFps=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8353
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697710697; x=1729246697;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BMLqvCf4mc/vDe9itmzNwTrhDjeKiGlYTa8O5mvEc0E=;
 b=Jy7PYtAhF6DDz8GhZYlJFrYgQj2SZnitGcKMpod/GAKPOABfvfJO+77P
 FR+vOW/vzLVraRgtmugBeCSixNjP7ZnMGcEwB98Z6NbfYVDeOa1ayVlca
 y1DqY0oM+8Kyo4G0Fbvwt8CAH1XqdmCRS3ZYHWcm4PS/g/Au5lCd9Ka80
 KldCBTVMg6wufCNtggvSb3e7WSisUq4aJe2Quk2PdbxcYuvYp3Ch0889U
 fl+bKe6NiIroRyZvTfrfmEC22aS/LBXMXS43PDDRuMX4tcpUvdaGdwBVb
 vrF589xJHqOp1hBFzKtXpd8oraOvPJKJI3cL/oFj27BvbCqPU+TJZDs8s
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Jy7PYtAh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/4] ice: set MSI-X vector
 count on VF
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Monday, September 18, 2023 8:24 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/4] ice: set MSI-X vector count
> on VF
> 
> Implement ops needed to set MSI-X vector count on VF.
> 
> sriov_get_vf_total_msix() should return total number of MSI-X that can be
> used by the VFs. Return the value set by devlink resources API (pf-
> >req_msix.vf).
> 
> sriov_set_msix_vec_count() will set number of MSI-X on particular VF.
> Disable VF register mapping, rebuild VSI with new MSI-X and queues values
> and enable new VF register mapping.
> 
> For best performance set number of queues equal to number of MSI-X.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c  |  2 +
> drivers/net/ethernet/intel/ice/ice_sriov.c | 69 ++++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_sriov.h | 13 ++++
>  3 files changed, 84 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 38adffbe0edf..c301ab1d6610 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5655,6 +5655,8 @@ static struct pci_driver ice_driver = {  #endif /*
> CONFIG_PM */
>  	.shutdown = ice_shutdown,
>  	.sriov_configure = ice_sriov_configure,
> +	.sriov_get_vf_total_msix = ice_sriov_get_vf_total_msix,
> +	.sriov_set_msix_vec_count = ice_sriov_set_msix_vec_count,
>  	.err_handler = &ice_pci_err_handler
>  };
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 49adb0b05817..679bf63fd17a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
