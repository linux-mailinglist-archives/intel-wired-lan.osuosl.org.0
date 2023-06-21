Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4158473915F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 23:18:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44CD940A07;
	Wed, 21 Jun 2023 21:18:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44CD940A07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687382281;
	bh=nbKqnQ8QynKc7/t6RKToPzX94hgY8oZRPa4Mn9We3H8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gpiZgaoBnMyYHT+00aTazxRZ9VS54QH49NTv8TJi1PKhdnOv3cWlvC2eqCs2A/iS1
	 Y7UrUMIJeL25kcSyKr6zS9dCt3Nbr5VswnpOkdrD5JHUmV0j/y3VG0ZjMzL4Rokbif
	 d9KFWlUF/x0JEkW0yH6sxTBpk5X31MeR1Le/wqVJxlT9j8hWZVdy+zY/4jnOmoGYKd
	 DdoNXc9U8UVacqQarOVMDXbKEgVPn+xne+kfUfxSnfHVaPAdN6ypQhlKbYiqN0Qcs+
	 25LQdouxH15wh2YfFXJCwkQJroEZemCj9UFgWrxqoctUdzWDz3pxLMPugtdz4lrltb
	 dOJQNqxug6qUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2vVmWQMiguxJ; Wed, 21 Jun 2023 21:18:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F30454023B;
	Wed, 21 Jun 2023 21:17:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F30454023B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F0B41BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 21:17:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7452C41E67
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 21:17:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7452C41E67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t9TXIQYzMoB1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 21:17:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E30741E65
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4E30741E65
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 21:17:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="363722076"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="363722076"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 14:17:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="888844634"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="888844634"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 21 Jun 2023 14:17:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 14:17:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 14:17:32 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 14:17:32 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 21 Jun 2023 14:17:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VRyu4RY5qTtdogVvIpCpFHrFEtHVGApEMNwNxdAN77qd6cREBQIIG2U+gnLSSY6lbZGBNEdlqn5JXo11f4Qtu8oUwz4QdB78kqah7HEHV/5rTt11E0AzYO1x3JQL5gTmnJZdwhQb0MQKipLuxNNNXUUYgk/IwnHTP4JCEFhk0RQZoC/kjegVMmXEQrtAJM+fUOiOPHgF64gdbEmD4tVZsohuY+d/cgMQKljJzt1nO8TLHkoYKodBhtNu6OKP7Cq6ljKAMiOyIkCqLZV9exne2cVPuj3rU588U2en8CaLHjrIgU98qLGA/Q1Vi8OOHhyT5mH2d4vpkqH/7Jz8ecADeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BXn9t5hB5ao+61w2P4yU+bD/4z6LCLJ+WYgRXJA3hf8=;
 b=edbGnO649pGA33L5O35ynvck4BTWlOp/UIm2/8uu+jqtwC8nphFXYwwOwzS/7W7QQKbd6cJl2vkKGxjzY6fLpInS5iud4BL6J/XSZjyQKaDMX5UG0VaaefZW+iGACSU8KZLvtVIvjU5NQzJGRwpGy1Zx2+0Endi7mzFZjy8y/NNFHQA05G/tA/SXapr+5g0UxhszJdc5yGIs8mlLZg0TacgIjdu/doQVwiU4Y1wsHxUQKTk5MPSB5WnrlHioDbfNowLQ/M2pJ34IOcE87M7e3KGd1POzO9sNS2X6cPaaJR5eRr5ztLILHrW/2Z15VlKW+px6oDOCAJZ9TUjOSNVjNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 IA1PR11MB7773.namprd11.prod.outlook.com (2603:10b6:208:3f0::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Wed, 21 Jun
 2023 21:17:26 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6%3]) with mapi id 15.20.6521.020; Wed, 21 Jun 2023
 21:17:26 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [RFC PATCH v8 03/10] dpll: core: Add DPLL framework base
 functions
Thread-Index: AQHZmsz08ds9noNj60q1X/LUfA+qnK+H2kWAgA37L4A=
Date: Wed, 21 Jun 2023 21:17:26 +0000
Message-ID: <DM6PR11MB4657FED589F5922BBAC5D9059B5DA@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-4-arkadiusz.kubalewski@intel.com>
 <20230612164515.6eacefb1@kernel.org>
In-Reply-To: <20230612164515.6eacefb1@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|IA1PR11MB7773:EE_
x-ms-office365-filtering-correlation-id: e3aa3f50-92b1-432f-f5b9-08db729ce9a1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j5ZgjZH2Z7fAgrEUde7qxqnfXUBgamv/1z5y8SiziYZXHtmofUvZwCCcysSZ6wSk6DS8hdX+J9HlKbfXwkecf46a5FRORFu/8e1ixKzC39Ecm8j4sSJnuM7cK/Dk3/drT5D/hg5HeKNT5lCl4ugvbBMrqe1kFQ1gsGQENnLfI7sUZWsofbbYNIFA18BJaZGzDhEaA5wUCODACgoVktQFiO05V7w7P9bQ3TbmymLNp+z1kTNHrJ/Qkn0CynF1HykaGQC2Zl7jTtljp/6h7o0+FLqWI/or8tLaYMbSEmNlJTqugK1UovRifcQGV6SUuzUfj2NRFV6J1LrTdUE0wCRnYMeLr6fkSgM53sRqUhI3Vd4fShKGpgEUK/redVCUo0VYY/pD3ELlQhfaux54nVMqLFhgt2MhMyGKEDfNhjuv+BNHCPzuTdVE84VaaJVb31DPcGCtzNsN9pAOVCdOB6SKQlgZI+VJ+FDRv2IhTgSnE5DHmyXeV6zQc3iSMLaAbhbFuxlkpwCyU++dQ/8cJA2GqwJJWebJuMr1oTCHr/DrPhu3GM7pPKbcRlRJ/quYF/f+WfhZxFi9rhjimIqjBqFU2y/ohwhTm32L8X3VMEN10Vg1QWgN+fnUsF4xXeAky3si
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(376002)(396003)(366004)(136003)(451199021)(478600001)(66446008)(64756008)(66556008)(66476007)(6916009)(66946007)(7696005)(76116006)(38070700005)(71200400001)(83380400001)(4326008)(54906003)(316002)(86362001)(6506007)(26005)(9686003)(186003)(38100700002)(122000001)(82960400001)(8936002)(8676002)(41300700001)(5660300002)(33656002)(2906002)(52536014)(55016003)(7416002)(7406005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e7FzmGDo7cc9VC08tnal4JlmDWpvOWISXeGZ3YqUe+qW1Acoyj1Q4KIy1W5G?=
 =?us-ascii?Q?s/Aw4xN2cmA46tX9tjwVt6b/vd0FMmHSKVyjunYCH1OagesdbxIqmMcFGhus?=
 =?us-ascii?Q?yF/2wP/woLXdlaPyouB/rl5Q4PdfQNdEWnn5wfGfsUy5IjDsHf3x+G4Zwt4u?=
 =?us-ascii?Q?G+4CLQVms7YG7PGLsMn5548yv59WZivkCGoOQapj0lNF6SfHilEUFKrQcin7?=
 =?us-ascii?Q?viR3qtMxIAUja8IghQ6wfQ/qQYXWUpaF+DkauTJgiN+CScgWtehtoSUUij4j?=
 =?us-ascii?Q?5BL/hLHukDzHPvJB5Ghzukzl3UVENy2Dqu4dUKUf0gS7jbwiwRBsEtV6ujcP?=
 =?us-ascii?Q?xWXsfhpVTeQ0+v+6aZJAJDzkxX2Mcl08vuVz0qHtTTZhTVNQQ/CNmyRdxdxk?=
 =?us-ascii?Q?OOaFQO9wocik2yC/9b/pLfEBrLFqIauvh2xl09rtnzVa1nYi7xAIstbehr12?=
 =?us-ascii?Q?DMZ4y2isxtknQx43CwwbSnLfh3CxoViFGedUFyzu9kCGhA10LT0WW2l/I1tT?=
 =?us-ascii?Q?inooxejS6EBFiKj/PTxZKq6IXeYHPXH64anpZLb+FlscPUY7N5j2jCQmUeLJ?=
 =?us-ascii?Q?L5kdCI3zECo539QjsplVOoW7y6ofry11KX3CtR1yiOYm/uOTCsaygvoHddz0?=
 =?us-ascii?Q?cRpuiYYGEb5pPJCpB9aq0gNNVw5joEkzsp26mFJBThVNwOpbWL6HJggwUgek?=
 =?us-ascii?Q?yZM+0DBkTLTj0dE1Ug20gOeYxfZk5f5NilMb5UGbzomlgTPVNnqIGTlz0yWv?=
 =?us-ascii?Q?dLCb8IHobHG2wAh+GEIwD9tnUUwwVy/GTTA752wBz/2pjr6fe6rUl8US1+Qz?=
 =?us-ascii?Q?34A3jOIzt0fBSQoJUtqwPyaQ6idnSgkAfUMF4k2uMdE/SdoAh47FrfeeAlrM?=
 =?us-ascii?Q?H35XX9MgeKUF25sNYeE/4Eto0w/nquHmccEj4M/fwbgddD3c8luK7UfSJ9oI?=
 =?us-ascii?Q?K+Z907fvxh7JcxB0hWDSxifNnRnfDvnxoNQKOdDCRo264ii7usOnPho56B9A?=
 =?us-ascii?Q?MbVQ/yIBl+S2Z5/RNdso6vBhKnBgPODUnHpuEN8zbq1qBMfZ7oNn7kgBEUiK?=
 =?us-ascii?Q?myTxnQtasfKxbejFT9I8UOxot52QIKsDhy1mfzXfnpsVj2YdUtl2ohtB4IfX?=
 =?us-ascii?Q?Kc1TNlde/eeT22J1SxPO+phvTz/QrQKkg8ssO6wXmEOennlnwJlcVyNWyokc?=
 =?us-ascii?Q?cR58ImZipIRTF937gNhvWs4wk58I4f+KwTnl/N+8ycZOk7OHa0L0SRCf82rA?=
 =?us-ascii?Q?a7TMwEVWMuIUTvDbc3MWxBEAC7YvN6OreztrsKIsGvXOllW4EO7Btp80y73h?=
 =?us-ascii?Q?dlLvaCHgRmo89t7P0uGbiav5q45jVPLt1zj+okoaMVaLlh9M4yeXuZMhzn+u?=
 =?us-ascii?Q?UqtBYU3jGYykNjDKq3TC4wBcErEEGBdaypTv9zh5UPmNDqZlBjOQTXt++ELG?=
 =?us-ascii?Q?P9nLRmkEn7b0MitzNE+H4+/V1m3kEf80cEQkDJYrYqqt7QP4byp7c1v2m9C4?=
 =?us-ascii?Q?DiOQJswW/X3614OqCTNhqA9oaeNhuI51EPLoLJ289OlR8iITFMPnf+wc1qz8?=
 =?us-ascii?Q?UcPW9H3A9/hEvIO7DFB7Ahesub60CnyHsCXEC+Davz+OrbnvbRHxT2Ncyvz5?=
 =?us-ascii?Q?XQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3aa3f50-92b1-432f-f5b9-08db729ce9a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 21:17:26.3197 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 51ogmGZ/ocwxy3VavlvyEu/jKwUJ/o0XSw6KxdaGv+PKaWOjyX6gsTjvZS0kyLLbcokNfGtTmLdWC80qgdV0c82gEJJoCe5mfqTBYOkSkA8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7773
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687382274; x=1718918274;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gJsswL3DiS905HoOzaY9iTp6KeLVWr/PiTkNei1gQPA=;
 b=THfvV+o+dmwOrv3Ea3zRG+cs3aiJPyu2aqqsuHuWEy1NqrsflNcnAJp7
 jUAA3T6CzlD1Go0QxggpjGiveKqbWaQxo406hrbscJo7eyVIULGPRtobX
 m7i+rbscjfxxI3VFmW8VJOLw23lBxfdxjo6cy3DZ5GrBw8jK1QkGth/wr
 oGCdwZucY05xE9055jcw4Jdjm1hCB7MUfWdjwajEE+tJPkXxA/BU44x3E
 7Zdzv/VlA64stV0ijIGHG2iEYZJX8A6JjN8a/aPCH5bSAGq4d/9artY7i
 C3x6s6iSHC7ItM8sx4EURpu4SUJ1/bQJBNxpkSYJ4EIA7OMeQGg1c878I
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=THfvV+o+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 03/10] dpll: core: Add DPLL
 framework base functions
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "arnd@arndb.de" <arnd@arndb.de>,
 "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jakub Kicinski <kuba@kernel.org>
>Sent: Tuesday, June 13, 2023 1:45 AM
>
>On Fri,  9 Jun 2023 14:18:46 +0200 Arkadiusz Kubalewski wrote:
>> +	xa_for_each(xa_pins, i, ref) {
>> +		if (ref->pin != pin)
>> +			continue;
>> +		reg = dpll_pin_registration_find(ref, ops, priv);
>> +		if (reg) {
>> +			refcount_inc(&ref->refcount);
>> +			return 0;
>> +		}
>> +		ref_exists = true;
>> +		break;
>> +	}
>> +
>> +	if (!ref_exists) {
>> +		ref = kzalloc(sizeof(*ref), GFP_KERNEL);
>> +		if (!ref)
>> +			return -ENOMEM;
>> +		ref->pin = pin;
>> +		INIT_LIST_HEAD(&ref->registration_list);
>> +		ret = xa_insert(xa_pins, pin->pin_idx, ref, GFP_KERNEL);
>> +		if (ret) {
>> +			kfree(ref);
>> +			return ret;
>> +		}
>> +		refcount_set(&ref->refcount, 1);
>> +	}
>> +
>> +	reg = kzalloc(sizeof(*reg), GFP_KERNEL);
>
>Why do we have two structures - ref and reg?
>

Thank to Jiri and reg struct we solved a pin/dpll association
with multiple device drivers..
I.e. for pin:

struct dpll_pin_registration {
	struct list_head list;
	const struct dpll_pin_ops *ops;
	void *priv;
};

struct dpll_pin_ref {
	union {
		struct dpll_device *dpll;
		struct dpll_pin *pin;
	};
	struct list_head registration_list;
	refcount_t refcount;
};

struct dpll_pin {
	u32 id;
	u32 pin_idx;
	u64 clock_id;
	struct module *module;
	struct xarray dpll_refs;
	struct xarray parent_refs;
	const struct dpll_pin_properties *prop;
	char *rclk_dev_name;
	refcount_t refcount;
};

Basically, a pin or a device can be registered from multiple drivers,
where each driver has own priv and ops.
A single dpll_pin has references to dplls or pins (dpll_refs/parent_refs)
it is connected with, and thanks to registration list single reference can
have multiple drivers being attached with a particular dpll/pin.

The same scheme is for a dpll_device struct and associated pins.


>> +	if (!reg) {
>> +		if (!ref_exists)
>> +			kfree(ref);
>
>ref has already been inserted into xa_pins
>

True, seems like a bug, will fix it.

Thank you,
Arkadiusz

>> +		return -ENOMEM;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
