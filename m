Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2729F6E9A89
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 19:20:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE97042BC1;
	Thu, 20 Apr 2023 17:20:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE97042BC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682011222;
	bh=QHHd5aMsrGbKhIzlixXhfpZ/i+h1cppZnugcw+J/eXI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e3Va4egaviXhSJ2y3ByU7n947RmRdF/7+GyfpjmBm0AEBH5E7FGtFqwEYJ9pcy694
	 DKcSIG5C04SAeAAulRjU5n6mZ/ib++c1xnMFWSt8vliceXmEfAO+gdT5vVgAq8BCVr
	 o5QPkX+1xduLezfhxbDd1VQsLTasRloMj6mXPwtzpGSC+4SzN3LMTDPrhTcct5/z3p
	 ymvbsD50XT4/8+9QuVACJ+W+SuPeOLQYdLxJQ+57J4JGwzDlj8bcLxDR5W/bnJD+sx
	 EDHLxhFl2aP9qDlvVcioJGvHMR5L3Vc0xFf8HeoTlPLFNXsXfbzgIY3+JuIQB+WoFU
	 WNDTx60559pUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9ESrWaLrNLmW; Thu, 20 Apr 2023 17:20:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCE6E404B9;
	Thu, 20 Apr 2023 17:20:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCE6E404B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BFCB91BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 16:35:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 976A1404B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 16:35:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 976A1404B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YwMQyztt7Dsl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 16:35:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7D35400D8
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B7D35400D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 16:35:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="325392550"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="325392550"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 09:35:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="816084661"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="816084661"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 20 Apr 2023 09:35:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 09:35:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 09:35:11 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 09:35:11 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 09:35:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D96Z6qDoYK3dPtEIbKifZ2dqctmF3QAatau4IHtBRtSG2VIp8eu1GAxMsVogKVxnAciXopVSdOwWsYELCp0AnuYEhKO1RezJyjWsPRssJ5jervkcqBrRqTD7MPiSWfu4rwuUPE78KK2rpHS28FuPLzqv3qYQLnAc7yO9EJh91YDF9Qrlzv4gC2BwYmjn3+dR2/V224si/68scWrSIRXoCczZumu7o0PuOvUCOohiiHgOHTygmVYRKm/TeLelIo2hFyhlV2XwPsWR8hc9plnEnVk3jb99SNlKySxKWCToSnkD6RbjaXcWcGbx/84DxfGLmiCGfc119OacmquCtSabfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gUrR3kUDkG+3sENBr6jz+nk0s3sP5gL0x7xI5yP7a3I=;
 b=Eam1l4Dr62bIZcgYI5LBxyceRq7BcPBI78JPiqknyXNZ4ZuhTBNCJ421xeawal+h8h93GWQCl2xfjnDipvynrlmB7KP5eO2oAelREQz6C+8sATf97qhNOpBAwwaESQqeIypsCBuw1/scrrk5H/VGCZAQvcRM2R6lEU3VOqZa8AMq5I6/2eGWxKYc8igZhsJr7qzzlMxjF0fUAk6aQ22s70Xg1kK22N0/fXmPMwgN1NRGqRfKqo2qH/1H54qQn2pJe6aAkotbvye9QZP6QxPMolDrYtn2aqwppTytG4dkThMhv5VIQHKLax6B64Z62lhC6MMOWCAjqtq0PCXZgaCIUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DS0PR11MB8017.namprd11.prod.outlook.com (2603:10b6:8:115::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Thu, 20 Apr
 2023 16:35:09 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41%6]) with mapi id 15.20.6298.045; Thu, 20 Apr 2023
 16:35:09 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Joe Damato <jdamato@fastly.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 1/2] ixgbe: Allow flow hash to
 be set via ethtool
Thread-Index: AQHZcJd79KuOQA5hdkOwR6kB3m6IGa8u8Q8AgAV13FA=
Date: Thu, 20 Apr 2023 16:35:09 +0000
Message-ID: <BL0PR11MB312230F098215961776D6853BD639@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230416191223.394805-1-jdamato@fastly.com>
 <20230416191223.394805-2-jdamato@fastly.com>
 <20230417045734.GA43796@fastly.com>
In-Reply-To: <20230417045734.GA43796@fastly.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DS0PR11MB8017:EE_
x-ms-office365-filtering-correlation-id: 0e53b78d-b596-4252-cae2-08db41bd34d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zL35uU76EAdeL9THHC8ZM4IMPDHosUJ543yun7qAKihUVSf8iVF6lynuYu+D1U30ddE5pdvj2kPZT2yRvjAmQfESYmw/oWRYqYZ4H6q1ackykyeu+AulIuxlr0YFTkHbfUjvLvVMyn+J0sDM47Wsv0mKBiF6xMCYU43mTVjGxkcCRBHtYX1yoBsuwbydO8LLBnpZiWS9JJ7d8TmANjd8Ltkd5Z55v5OKjujYh57gRAkNxGM51e6tRUYOk8RhQJOwLJpFz38KxoQE0+EIETLJz6EAI8szueVZr06K4DOztvLcjYNc/AwymEZKja+JjUeygHBNFyhhQhlKLajQffoFoA+140iJKanDf7PItzV7N8kxDnoKdeBJnSK2MKu8LwHF1Y5N0LU7R4jce0kZIG9nGGyxS5rGpmcFe0BvHpdfCQ9DIMeZKAsAIN7VZZYr4Cdx0t5ZXAXvfpzf/YQ/FU0lOzfm+Oxt4DufkzYoeP4Dpnij9FZqF+VYze6DbgBviWcD1b0eQlnnFitRyEkNLeqFsixtD7JLLHcP6hvJtU7aR2fcmLytUKhwQLLL6UoOCeH87Ei1lByQe0W68ET+Jm9OASYCSkvhEIkIm5jy3Gaz13Y3CopIe2qhe28LiGOy7uTz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(366004)(396003)(39860400002)(376002)(451199021)(53546011)(54906003)(83380400001)(478600001)(7696005)(55016003)(26005)(6506007)(9686003)(71200400001)(64756008)(316002)(82960400001)(4326008)(110136005)(186003)(66446008)(66476007)(66556008)(76116006)(66946007)(5660300002)(52536014)(8936002)(2906002)(8676002)(38100700002)(122000001)(38070700005)(41300700001)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zEdtSNHi0O0yLaUQIO9h2rKdlCtDrxs6d3ZlmQARHuMLk4PJxE6XtaK643ki?=
 =?us-ascii?Q?wmD1CFbL0+kpMuo8Na2k4lPbSlSbhZGuA3QESh/BxJhaEqVUZzdCLZkcUdt+?=
 =?us-ascii?Q?UQr+aXVk3U4cL/a3lKgh1d9hycfT3nnhkx00TEVxnzWAeewYP5KyIfKc3EL1?=
 =?us-ascii?Q?LE0/wUYTS8ntm1PuoplTJiMWoUYt1eVtPzLXGG7+V9PuiERfJ29k3kcUUJfO?=
 =?us-ascii?Q?woZHZTIJBwHruwzlEtOfIjA9eVd+7W+J7FJMexX0zJWdVE5dE1r/el/xPFin?=
 =?us-ascii?Q?O/Dc/M6ZSGh7IHx858CNB21yKptycrYDjG9AL9Jt5CenEOYUpLR7NHbqcs6P?=
 =?us-ascii?Q?0ILlFOTJC2bEXIOkelW0CxZvFHwtipSsZ0gjkrZvdO4h+9ojdoHs2dtuoY0O?=
 =?us-ascii?Q?Q9r4XnF67t/WMVBcpDgvr3zORDOKRJTKylKdMUxRhvAew5lFbHNC6+rpW8f8?=
 =?us-ascii?Q?ITN3SG7WXpGMIezFfDJu427Q2fQL1DciEhqtQN8uPme0wx3+SnyECXXMeYkT?=
 =?us-ascii?Q?h7j0EDc8wU2NV+yqjEr9JnrqfjSW/aBZdi6SIUzzkoTJKE4Fv82WCrAg61YQ?=
 =?us-ascii?Q?b207j5+iJBHCxTYTGY2mvqtiXViPIpOiZmsLr8n5pGEQYvyPwBYliUO0NFlp?=
 =?us-ascii?Q?Kc1ViDgjtw8mXN/oDN2kHCffTkK6dULaez0j7y9QDzHYA2Qr9NtQeqCbFyLr?=
 =?us-ascii?Q?cgMIX1w8Zcl1jlD6yL1iycJ45EbpTSqTEYi5bHQzwuxSqmVU0sEbD7B8YbXa?=
 =?us-ascii?Q?/lMnh4M0cEjdXX6x+3LVbAjKXP2vRQjEa7k9JHLBqGBQ4ZhlCmMAsEkNMxrA?=
 =?us-ascii?Q?WF3cT1gJ4JeizebqOiTjfjjs9Qw/s1ObNs0MBzrmNSDQLvaXaUf3CQF3E+N6?=
 =?us-ascii?Q?K7qiiQOcFBpbIvxpU/alOjUyGjvnVSnALh6ljDtfUMnNfOzdewyxBMkwFQF1?=
 =?us-ascii?Q?6pexte9v0VG0qwr2M4BuzhOJufGCfxuUTwAGq69nmctHAPsvUW4MY8t6V820?=
 =?us-ascii?Q?MAZ0f/WPJQ9GPUc10S5SiBVTJLPkfsdT65gHlx1zRheAWoSXZe3wZSwYJSPI?=
 =?us-ascii?Q?C76kFjFvSdxMa29nwDxhHNnl27EkAOVs/4ld5WWLyNlujl7Qm3anQfXJIwF0?=
 =?us-ascii?Q?B5c2/nJKE4kgPNnCTYmx/m2RzBwLz5jTBglYHCC9380MvLJ4KQPIqxRGdOkM?=
 =?us-ascii?Q?zZoFa2ayeMj7zbs3d3nAXA+Ujgijb036s5lR7GDjK9V6znhXoA5dy6nSBMx9?=
 =?us-ascii?Q?H86qPuun7YM2E8AB61slzJQBCRZmy+ezlFSIr0NU73peh5OkWBXG749FYh/M?=
 =?us-ascii?Q?EigF9gS52wi8EH0CxqJrZkSnrMuytCRf/dsvOoyTn+HPOICVRia7iT6tyjQT?=
 =?us-ascii?Q?Y+sff7b3yQU9vLP8z1DqWqu39FtDuKuoTU3H3UAKGEtKV72wtPk5QHvdFBfl?=
 =?us-ascii?Q?SA9pR6rVpKMwDAwmi9u+8oQp98ca35r018yZ95mt0Onc/1JRpq+7NtQDhXF4?=
 =?us-ascii?Q?VXJG11VwMuip30GIvLPVyi/Z5zDTEeJ7MunbwTj0X5TB5eEU9GKZ4GMJaTTW?=
 =?us-ascii?Q?51wTifn7jVuWNdEoXZKcmpqSbvSKRgiQ1WjlW5Z8b3mmXECyEMiiHI+myZg6?=
 =?us-ascii?Q?1g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e53b78d-b596-4252-cae2-08db41bd34d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2023 16:35:09.3725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rl82d/pf7BEoUXIyA0xwDI0o3Nb13r/gQhr7drb6pSeAA8pGMpzcojIyy2u+Gh+v+O8UFPatmMqs3otAT/+5BrxN2R+L1mXs1HtPGHcl2PmzLtuQSFgZHVB0Eis9gU9H
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8017
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 20 Apr 2023 17:20:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682008515; x=1713544515;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wXFc1z1Z6PGPzmTnzdMq4NDgvA2IM0JtANZ07CULi9M=;
 b=hZlcSusmeUJZyMS7wIH+YNjd6Ix6q3G8ew7a23u6PKe9ICeqyFy8jo2t
 pEcWwVc5ny4qZpfT9I8RcahD/DOjRGSdanWXdvCDkGRO/Ty45JqBGm25m
 FSLxKram8ANCyxwSHVVfSsCK2UemD0Yy3MrQ+9h50qVfg8m9Ly0vuJhYG
 IgtJErd+SqCRlwfb+8tCSBaTruXvhGKODV5c35m7eIin7PBijio5f8lUk
 wN7T1jwhtdbQlhZg9O8VgzGCB4BfcuxRD5zZy/sTBQ0SYm+/VXrJqpUM7
 zCsud0p7lHIcMLyoy+yEXLLiOx9XPgBLvgsvw36hE75re2Kb0569z0bq4
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hZlcSusm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/2] ixgbe: Allow flow hash to
 be set via ethtool
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Joe Damato
> Sent: Monday, April 17, 2023 10:28 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; kuba@kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH net v2 1/2] ixgbe: Allow flow hash to be set via ethtool
>
> On Sun, Apr 16, 2023 at 07:12:22PM +0000, Joe Damato wrote:
> ixgbe currently returns `EINVAL` whenever the flowhash it set by 
> ethtool because the ethtool code in the kernel passes a non-zero value 
> for hfunc that ixgbe should allow.
> 
> When ethtool is called with `ETHTOOL_SRXFHINDIR`, 
> `ethtool_set_rxfh_indir` will call ixgbe's set_rxfh function with 
> `ETH_RSS_HASH_NO_CHANGE`. This value should be accepted.
> 
> When ethtool is called with `ETHTOOL_SRSSH`, `ethtool_set_rxfh` will 
> call ixgbe's set_rxfh function with `rxfh.hfunc`, which appears to be 
> hardcoded in ixgbe to always be `ETH_RSS_HASH_TOP`. This value should 
> also be accepted.
> 
> Before this patch:
> 
> $ sudo ethtool -L eth1 combined 10
> $ sudo ethtool -X eth1 default
> Cannot set RX flow hash configuration: Invalid argument
> 
> After this patch:
> 
> $ sudo ethtool -L eth1 combined 10
> $ sudo ethtool -X eth1 default
> $ sudo ethtool -x eth1
> RX flow hash indirection table for eth1 with 10 RX ring(s):
>     0:      0     1     2     3     4     5     6     7
>     8:      8     9     0     1     2     3     4     5
>    16:      6     7     8     9     0     1     2     3
>    24:      4     5     6     7     8     9     0     1
>    ...
> 
>
> Sorry for the noise, forgot the fixes tag.
> 
> Fixes: 1c7cf0784e4d ("ixgbe: support for ethtool set_rxfh")
>
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
