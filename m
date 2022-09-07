Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (unknown [IPv6:2605:bc80:3010:0:a800:ff:fe79:d16b])
	by mail.lfdr.de (Postfix) with ESMTPS id D876F5B00A2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Sep 2022 11:37:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20B9640343;
	Wed,  7 Sep 2022 09:37:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20B9640343
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662543472;
	bh=pVZxuDu1Wehq9DmQO0xZSB/MfFgT1QSHc+1GUBxU6U8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H8/y5moJ729r/ofNCv+YbdQbkwYxY+gVxqrJ7DC8jFfgDDbXu8W3Iar/mgTEdMo6b
	 iZ1JJGG/ILRkm9QFaiMjxkWqsiDnlNtdTww5+wtSvh2Iw2ZhMogVsvR3gL+WJWHAAx
	 mNMreEO5Ic8alpor9InFvSWaakxGGyJa2UcR0G4BGKR45QEn//TuyLipGwSzzOv/Bg
	 kWkUO9zgSlg71tbj0TF9p2jKt98NK04Z3JGpsPUMSSAWGQD/oppePB6GFOcL4bTi9w
	 2b3Xql1H2UZr6ZgVYyNP3ruuGNaNIa+Q601hYyPakt6KjZjZjzYBnmgpb51IGoVoxL
	 ol2KDqShAw8dw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ctKzV1-T7VRq; Wed,  7 Sep 2022 09:37:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1975402A7;
	Wed,  7 Sep 2022 09:37:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1975402A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CE7801BF956
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 09:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A8031402E0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 09:37:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8031402E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LhNt9TU97M-A for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Sep 2022 09:37:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F84740184
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F84740184
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 09:37:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="298143219"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="298143219"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:37:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="591620821"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 07 Sep 2022 02:37:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 7 Sep 2022 02:37:38 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 7 Sep 2022 02:37:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 7 Sep 2022 02:37:38 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 7 Sep 2022 02:37:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=giV1UJu3rs+dSB1RRnvTWOZGcu8WPrr+08C1YriIB/Bx3qeT05Yomt8swILT1WbxlLwWSh0Piw1T8QYwFZqP0Tpjy0VZ67PDXepEFsQmI7VO6kx9D5TIbOzX1r5mitoWKBMRCcxrpODS9V6gh5S4B5ZS9mltSU3svWYAF5yGRSBAZptmDvKm34goMELWfjnTGDpiwg47LYFFLwoVLQFn3HPtTamcY2knIGixkps5dHRArGjidZlitqMSnxzTjk6KPFTzTydZUtcYPzL1gNC1GgXGz4JddBMSLC86VQBo7OnjCj1W+Mh9tKOB2aSWYG4210KbBfmvjJ92X5N7efV5Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=//3mghCh+jk2B3uEVwCutze92cx2UvdO/J53fGUVk2k=;
 b=IWkw2lS1nKa8qUyIDDHZ9HFxOdnuecCn1QSF2+VxnssBIBg0Cskx0kGiW5HPxhrLlSQ95y2nKaIfPrg5LyBb46KQkC4haoJbmNvtKIRghxvtF3DQBEpOxFYHwso0c3G1cvfsajpRbTsBown7XWroEYVxh7ggAnTZ8BMNlqN1Hxb8G1iQolOMGRmC2b9Jz0OVU0KdB12tCz9bl6PJseaizVQqxcaz53ACeVNMq/LuVkfcJFQ9wNudU+JtXYrTLBiEj177qpKTDm5BAWoiwFUqxFtmZ0ACMzKf6avJL2Coj4ciFFoYsJ2WIFlZZDY+KedCwyHlzjNjAxU46Mujhjl+BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 BN8PR11MB3602.namprd11.prod.outlook.com (2603:10b6:408:8e::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.10; Wed, 7 Sep 2022 09:37:31 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f43a:da9a:b75d:e4bd]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f43a:da9a:b75d:e4bd%9]) with mapi id 15.20.5612.014; Wed, 7 Sep 2022
 09:37:31 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: Fix cached head and tail
 value for iavf_get_tx_pending
Thread-Index: AQHYvhAvHgHaSpgh8kOfNrwaouEp9a3Tvj0Q
Date: Wed, 7 Sep 2022 09:37:31 +0000
Message-ID: <DM8PR11MB5621A314478F23E9EE156207AB419@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220901143440.455370-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220901143440.455370-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5621:EE_|BN8PR11MB3602:EE_
x-ms-office365-filtering-correlation-id: dcd87438-4040-4f44-20e1-08da90b49645
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U0GSW1kQ3GHlNt45rABKszHuzkEZoA/IVbMYKSK4EEm0I15XrjwrJghHOkWocy9CyDbP0m8VHmrk8XcgnjgRJYxRBlgA5aAGNbTlV9WUrY7DbfdPo3pune+8faeTtv3ZEvZbJHBzDA0WE9Y2StUUU7eiyPwS1f6PqpAT3o3Zhnaxni0RX9cU24vmdaKJZQ/vqF0vKt5+8MlsTgoARdWsYRJzAiYAvNEDHF4wBqMxlt5269o1Kza6IiT2cDSN17DpjPadlzzSw6mz7xWkGwJ3o8Q8ettzdJnNdjOTB9y+lzG694uzDz623iKWlIrLW/4H3odsJODvy0TcBM+lrMcEXJvVeL+eRAO7VfX9Eq1SOJVVpefIUDhaQpioH3CH8lpDaqNYRSjpsJiD3yeE1hCmrX+oAsMFe/fN7whOh6luIDtDHeofs5hwEi4/D/8b4KIdUgIm0oUsyeesWn5wHFtG6DgH9gzn+h9GskFLrxgFLtiFdDIJu2b0UigTH76Aj7D18/jCUO51cRHG7pkfKQfLowCqyiyrKHPmEygomRhFqC6Q/v6JeKi9IYVStQ/ppN6PiY24e4pbC1EtfJaY4h7CKTn5gZU0T1nckEY//6R62Qa/ssurGr15tf1KApB8Wd/jQs9a+BrlEdEmqtCiZQmGInuvteHwRfhg5YMrYZlmnKVEvfEmwQflvpWHWDN1lHLOxbej982Y4cnOyyPa55DCp72bd+iBxHBbapR0KbidO/E/PAs6H2PwvdkR8Als1X5x94p93dFJ+6cRdvSYxHWpOw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(136003)(366004)(346002)(376002)(9686003)(2906002)(66446008)(64756008)(55016003)(38070700005)(66476007)(6506007)(186003)(26005)(8676002)(8936002)(66556008)(76116006)(4326008)(478600001)(7696005)(5660300002)(66946007)(33656002)(41300700001)(52536014)(53546011)(71200400001)(107886003)(82960400001)(110136005)(83380400001)(122000001)(54906003)(86362001)(316002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LD7aS5JgkgEk1BwSbwPWxVl5PivgNjD3h7CH+rwybO3oH9FoC04YPdFCMP33?=
 =?us-ascii?Q?PiHm9wAXYqDAvXE+opkqLzkQg0Mw4IwCeBE1sZhr2GS14t9V3YFRAM+rmydr?=
 =?us-ascii?Q?EDAps6e9ZtXPcs0oy6Tu+gdVzrT4/6/WnCdWjFp8m6DpH0VYAGVH+Woi8QD4?=
 =?us-ascii?Q?xcnZGFgMBFA52bqSAsblvOt8TmXVQRZHYMjPQAv74zZF81MXpb4R4qe9JoAC?=
 =?us-ascii?Q?9ZNQSrMh9EvLGU8oV8uVzpQRpt0w7xyWuegJ60+vqUWk6RrlOIgSPovDccgs?=
 =?us-ascii?Q?G2nKA0rTmm/ROZdIXvVfcaSicR1/rvLEYn918RIR4WiqfRR21KEJ1u+A+J8G?=
 =?us-ascii?Q?fRaQNUniwCUNwm5vthriBELnh0R6mnQsCaJsZkJHbDZkbXpUvAv61VUqhKyj?=
 =?us-ascii?Q?XNPHE2Lts6jE3CBw/N7YJs/5ovAAM/y/8GTadu3OCTIPp7LimAsmmAas+3T6?=
 =?us-ascii?Q?py0ZLXDZbRwpTVNELUjMb82wd8+Exrn39Ch5ucz9ldOH+QIQijMeQ9/aLNya?=
 =?us-ascii?Q?i2h8Q0K6LMM9WFIJyE5crbsZqoy8W17b6TQHhslOA0ZgauWvu4PKO5SnnY6k?=
 =?us-ascii?Q?Yja8Jh752m4bn4W7TAEbpYbAHqy45Ude7DIaIyxHzbCvkbB+eJsjpvJWdGMA?=
 =?us-ascii?Q?PNhP4vpePa2GjnzFXhtDjYK7MgztpJQobhFbaTlX01CFG1/4/zpM+nDiTdfn?=
 =?us-ascii?Q?Khe2VOHUswvpuge8KObILOZnUbJajRwI6HwuMkKbNRACgh0GVO1XUns/fppt?=
 =?us-ascii?Q?81sOXMWRas3nzK5ZpnSlP1bIBYASkxwXm/Y14GtpklRx8YVH3GoY0Pfx1h1V?=
 =?us-ascii?Q?oYKoCFNfF6ftOGOIFZZYCNdzA1rqw94AOge0nFGqdYX8Fd9sejwgBM4fY/sI?=
 =?us-ascii?Q?ttF0cWAQAsDhthSSCrUtbAZyIRWikE1ZVMQ1fMZA0tkGR4c5K3Ap0DU7l8IK?=
 =?us-ascii?Q?r1e3gDrej9lqm1hvOTmfrwhxHrQWsGDf7TVmaOAm3ASKHqQPd3Obh90cBFDC?=
 =?us-ascii?Q?68mJ0aE0uFRe9SwW5ngPtUCSwsA87tOgx4oX6PJxHS6oE6Tm7D083oAvNm2Q?=
 =?us-ascii?Q?e1zdNuF4gaiBkGWX07MAANklkRP3rTFxFrclb8LDk4PbUQMDa4b5mZBXdX/g?=
 =?us-ascii?Q?VXmpKKIbzZu/crv+oqniRZFHGVveg6sk0Z2mdPnNFv9cqFOcxOoRgvyHqrHf?=
 =?us-ascii?Q?iw/mMs1ZX/vztIXTr9VcooscLR0s//XbiZIY0Z6WYDyA0si89G/9GqQhuKsl?=
 =?us-ascii?Q?OoFZE9VnB3QDPB1eINgW/9qBL/pFGCzcFk2RsAi5HV65zQdPlDNa1Nphgp6C?=
 =?us-ascii?Q?G8CO2uOVGNmy+c1ZnWPxpt8rvhMQssZX7tklZ87Npxl3VcVeoyCA78+5nH3O?=
 =?us-ascii?Q?IWO+qBUFQdQKwptRKi0L93W/Gf4ajJsprnlStvDkU11PFE7wzgNYB+yASxTI?=
 =?us-ascii?Q?6BuCaqtEugLX3OMDRycAcneROTLCERieuP2RO0CmoQX2OYt2J/y+uCBgJylt?=
 =?us-ascii?Q?eiJZ/MRgTUMlATA9qkhDlt45bgtD0q6T8VehEbZRkAV0Lo+lR76JeickHO1f?=
 =?us-ascii?Q?GqeWFsw0FO4tyqq1j71Si1hBgNvyqc/tP2cjq0seBeevo2xbqfp5LsHH7J29?=
 =?us-ascii?Q?Hw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcd87438-4040-4f44-20e1-08da90b49645
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2022 09:37:31.5816 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h5KBPAp3FRGdOTFIwkDJ15BFxUr0EZ43YqF5VpUf/63nDmztn/pu07vii14r/hp6f/6KeBdCrviK4aGuTiANTfH5jxohqqgTEHpCawo9G5w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3602
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662543463; x=1694079463;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WlcyeyD0238JaiFXwMusxCPDzGbewTv61Q7iw9bd6cc=;
 b=DiRCgZXb9Pn4RrIrGyBD87w5MDk9laSlmub5eOTZZ3A4BekslfvVnZfW
 4z2PHKnacpO+usJVSof3Lhv5kfbnXG6POEFV7cMWMC5ZFUjuQM5eT/79H
 MxWBateh8YzJKs1sdB0pmkkrm1AQVQoW7qWaYpz5OP8iFRR3JdqzVwh6D
 DpNkZlTRLSzbMFMeMMJsZpJHWmagdvtKMTXNIYbIWJ8e0s+ECLmbCnPad
 BUOHq0amKzScS8nuHR7hjWb0MI+H4bJDQTRvxN1p3DKeIOqtPw9ic1GUs
 Prm9LkyYQsQZdWmylRRfDJhUMoIpHCTfiet2nc/+XRIPEKTVsokr/79RB
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DiRCgZXb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix cached head and tail
 value for iavf_get_tx_pending
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
Cc: Brett Creeley <brett.creeley@intel.com>, "Zulinski,
 NorbertX" <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Thursday, September 1, 2022 4:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brett Creeley <brett.creeley@intel.com>; Zulinski, NorbertX
> <norbertx.zulinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] iavf: Fix cached head and tail value
> for iavf_get_tx_pending
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> The underlying hardware may or may not allow reading of the head or tail
> registers and it really makes no difference if we use the software cached
> values. So, always used the software cached values.
> 
> Fixes: 9c6c12595b73 ("i40e: Detection and recovery of TX queue hung logic
> moved to service_task from tx_timeout")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Co-developed-by: Norbert Zulinski <norbertx.zulinski@intel.com>
> Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Added missing sign-off tag
> ---
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index 06d18797d25a..4c3f3f419110 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
