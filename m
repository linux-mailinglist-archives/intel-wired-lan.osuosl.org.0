Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECCC7E67CC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 11:22:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 072CC612DE;
	Thu,  9 Nov 2023 10:22:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 072CC612DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699525356;
	bh=h8bAdVij17/tcbCsacLmAXxDMs8Iiy7Gj6rO4B4xJkM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5/t+TetzQGUlr7pOs4XOVetI9YvZvRgiewhOhAdTWkStcZ0QAVVnZshMET7U4tlCe
	 j3tn3E7ytnqG/3E2ecYiop2wNfyYzI1C3JMD2AtXw48B3mn4B/tA6AKc7FaPWd5PNs
	 ygJEIXozEvbt/FvMqr4rXe5ohvtguZICOjNp0F0w9TW372zVFNMS4EosGFj3icW747
	 r6GSd3y05ILwu9utJa2lmakopH6px581FwaWgf/X5tHL9X+Y6ifICY38gfdenOn6b6
	 9ck2e4L5nPXljt2aHEqtY1s6RwLFt/3fUXaNMwYrJl0bRcQknMOGcRk5tLJwYb7W2v
	 cc/RHCgMscdZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ryirfcqadfdo; Thu,  9 Nov 2023 10:22:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C655D612DC;
	Thu,  9 Nov 2023 10:22:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C655D612DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 940871BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:22:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65A0A409E3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:22:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65A0A409E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L8_hTl159bgS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 10:22:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 58DD8400EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:22:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 58DD8400EA
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="476186486"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="476186486"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 02:22:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="756844827"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="756844827"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 02:22:27 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:22:26 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 02:22:26 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 02:22:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DBN+F6M/bRvXmUDa3k+WqAuQofmUConZrc32wmPZMT4ETUB4uhyG6BzPxyO5KFKAVUpXJMpCK7ePP+ITZD4/FwJ+1ZQOIUeDadggIOWNWkGnzCXjvTJixl/2VpDKBQo9rDUv737MMoQAuM1FF4xPhQ4Zrfou9TrxHQTXYZnqKnxuwGIffZcWnHJVnKVIt8NZ4OVP6Hgph198wdebZF+aADCY83DdKZxp0ndGvQJRdjyIt4CU6AfprwiTr8w0Lug9/jtkNWAExLXkAYaQq5/Lf5tDU6OGG3oE2i1aLuhGqs7jz8SB4zed1VGvnD1ZuVy9JV1s976kK9848pezEucJDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=48w9LBNL7yP5OWqdx9RdIkoEIZHsngVq3J9rV37JA8k=;
 b=bXkZIjhy3256FWSY/kOMBRkk3hGUiJPNn9pWA1bsm4KZY0wdhZm/kwRKeiYEyhkMwgVBln999P96LIXRu+CBdhE4ypxquPV3HrYo9y0HAyX1gydlLxd86xjK3POU7SDCbHNTjCYJSQPZaLvi0YqkrueLvF7Y9v1Jlt1pPoN4Xc/KrGmiZGimptjIPdm/1dY4sXJ4f0aYdIz+6gFHKuJ+D9svdt/WvzPM01bvMMRCoNhe9MflAx6HsuO5Sn6TyyiidHgBw18Fn5C3FckKu/8p4FPCwKpVhhLCIGlp6IkbQYOFKXGnZcRUzCZkfel9eliaaEHNEdVpJnY3ikxTuSU8EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SA0PR11MB4527.namprd11.prod.outlook.com (2603:10b6:806:72::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Thu, 9 Nov
 2023 10:22:19 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3%4]) with mapi id 15.20.6977.019; Thu, 9 Nov 2023
 10:22:19 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 08/15] ice: make
 representor code generic
Thread-Index: AQHaBm5AhBcIrlg440qn9qNV+Qqm6bBx4EkQ
Date: Thu, 9 Nov 2023 10:22:19 +0000
Message-ID: <PH0PR11MB5013F25A1F808746015FA2D396AFA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
 <20231024110929.19423-9-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20231024110929.19423-9-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SA0PR11MB4527:EE_
x-ms-office365-filtering-correlation-id: 0d76a497-afc7-4f9c-4ad8-08dbe10dc163
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fYtTxiIY1fmB/VXayH7OHzayr23m8IXkQJMJJgX3gl9Jdn7ZKiLjWgtX6OkmIBWJ5IuB1BpK16OEKwkXUwB6QBsd47IHSBPt7KF04b2VHuFWiCWfAoqf//tIP0YxzwrzrcXL3oNJBahU7fAjNFOcAnyXny4P/viBUIWfu86TG9s5v416jhWUqBdbjMHDQUCTvu+OkIxm5PhWA3iDojr+8JiQGQrf72owAHlQDBzg7RJXi845ZrEX6gVmklxKliAZawg1jbRnBpZAzeqy6kqwIgd55x3W9CAHSodNU1xkySsJEOzq/qmIeCRRSucRt8an2z1gm9lIwQTclUHsiH34gKG/97Wjm71woB9dk8TbQQtMuDySUd7SohdIjC/gmT+oUlXg4hhoHFJUxtz5YkasOp74saVSbKPND042fez4tHx2bOKhV+SMrQa1sh1zeEPGUWw2qHakkBpLm2S35YS+XpQ1dcvqydcitPSr3OdjGVid2dmkF6/fKaZUZ3GnkOgG51IJ+PlOQrkOEAve4KPKd3e8kTTaqAdZlBw7/cnuPbq/8sKu+hYul3cTM18Zd59n0t5yksHeIAt4fuRlpKMq+cpWEsXBuzDVJSehgZQP0YbOTd2mLPK8PkBFvxJTKHgdw/is8gsd7IhRky+349STtQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(366004)(136003)(396003)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(122000001)(41300700001)(9686003)(8676002)(82960400001)(66476007)(26005)(478600001)(38070700009)(33656002)(8936002)(66446008)(4326008)(52536014)(66946007)(5660300002)(86362001)(316002)(76116006)(2906002)(64756008)(110136005)(54906003)(66556008)(53546011)(7696005)(71200400001)(38100700002)(55016003)(6506007)(83380400001)(41533002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YovQNWOqr9JdjTsUdKd/BTVIrMxHa99Iw75eNFCOQgCQHrE0opfJJE3BXupw?=
 =?us-ascii?Q?ZLWzzkwWbgG81ptzcuUFE7KclDTP81AANRAqrfg5pDiJ5UN5QFivc6C7L1mx?=
 =?us-ascii?Q?YDUIl5sv+zhWY2EIlEbwT4zHUIy68DoVcx/vkflCUFHixUjRIg1xFbOpbLde?=
 =?us-ascii?Q?uZnnWjGQ3UYuUx1gnTKeX3S4WtoZp5SgfksRacF4GT/D7KL5skwg7hsvrgJy?=
 =?us-ascii?Q?KeAFNi339yktxVT5A0VnvpeeMvvIlw17HBth4NEkoeR9/NyScI+8WIQz6+em?=
 =?us-ascii?Q?YXvPgRC4AMtJgEopiedsJKygXVwLDxenc6dzNJnzHHxy+W7kC0U1z9erHfLq?=
 =?us-ascii?Q?EsOXH2xZ4SvgBTwi4P58BbZfzFwGUQnKu82iAxGLPJCmDt4BmqrNubpavcs6?=
 =?us-ascii?Q?l0GDI4ig/ad0der8SsoMLCnX/VWE7zuRf94z7Ig5RmJj25K9Z/a2DDnT4vIv?=
 =?us-ascii?Q?ujupqEpiX6hhDF/qh0ffTtx9Un1skSdDqRqCuMM721tke9BR5rKtcm0MUmT9?=
 =?us-ascii?Q?a3PMby1rpxqUhtqIPjPPz2zGv6ne0+Q4RIv3PZqWPAWWABgeKRObM6Pxu4dw?=
 =?us-ascii?Q?L+U+fFuR6me4oDgCMDQcP7nCwh0w4To91kPjpa2lvzvmlRavFITWcC4VrduT?=
 =?us-ascii?Q?wGlRHCiY7atcdMynXeZ0y9FZaeRfBO3ECwjwaDb4Jf4r191tuRfa7pXat7Y9?=
 =?us-ascii?Q?7OZh5i9V37c2RNYXURZYdl29pZCeVnb10lW9PHgHe0KYoq0Aodd+GZRU4kye?=
 =?us-ascii?Q?Ag9YS0sJrvli5ZgmKtu29YHP7+/thDLldpsgOE7N+mBy0AJmjWWIuVpfyDEX?=
 =?us-ascii?Q?rb8+ANBOewAMi/5TM86sq47Uok1zg9TL93BZIOslVPVyWmyMJl004IpcvRqX?=
 =?us-ascii?Q?PlPZ9PrD8mP7ZDr5mu0shMktMEnOzne5oWDaPiqpJgyJ9LQy1OQFJpZjKLi6?=
 =?us-ascii?Q?TirlCYBUOZ1tmlfKIsF0I6H78VghNTVcPfWgc/A6pf5rswCdUYpR58qJVxXk?=
 =?us-ascii?Q?FWAc/f+xZUKblwA/RhDeLVjQC7BkMsieMaij6TXGG8qhIwIGTWMoLfLLaVx2?=
 =?us-ascii?Q?AlWYwXNn3QSW54luJMXJqd47jbY0vef8rh4jPk9QqQQjipqiTQBeRsSWpPpD?=
 =?us-ascii?Q?rZvtFEwvX/3LYi9h2zFpcro1ywoz5O9jYX/B4y/6+ZuvIUaCrx9MDF86zZOd?=
 =?us-ascii?Q?relDUOjaEVfNwGMXkxx3frIwxZBSvc8tWAPXApK/kSsRjtJLV+1/OBH8k5Ul?=
 =?us-ascii?Q?gWtgO+PVukNp5qSMa+f7h2BKVUtwxoObq/BijgirezbGWXp6rGF3nBURQhmW?=
 =?us-ascii?Q?dmHqitnjm5CTTe9r/4zvi4fxqYXNv0qtRA2P1oofSY29BiDQsVpdX9xuiPXz?=
 =?us-ascii?Q?CTTAtwDqy819h4wovOOyEI1NIo9EKuYzuuLoafYVnqLt4SEeFh7AJMyF5MO3?=
 =?us-ascii?Q?g+Iman5QLNjPJS2P4xkbrDvWfMn6P+Y9/sKVrunp17U17t6fIOCVi6pjI++K?=
 =?us-ascii?Q?qEL7KrvLOnbnOL8q3MTaiToH1LAs1YcyAzK4nO3jsXb4zaOnsF46Mc/KcmMc?=
 =?us-ascii?Q?wMpeqjakH79fv8BmQ6uM/cJnRrbFXp7Z5cirEK70c+dnwYAEu6orl66NogIk?=
 =?us-ascii?Q?TQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d76a497-afc7-4f9c-4ad8-08dbe10dc163
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 10:22:19.8354 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iVA6jQlsevemLgJvU8DLiQ/UoyEq1sCeS7nMJIWNJVNsduv95OugxFTpnaUuClVGNf5qIkhm24ruOUIhK7juvzK/BLtlylwCzcFcRNdpxzo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4527
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699525348; x=1731061348;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=raVEFrUx/lZz+g30KfCrhlN58PPh4uY2A+1YA2KPzAA=;
 b=h0rq3SXjOHC+RXzgqUyfaRfTpQydFldx5ymlQTDrzU2AFCmsFshl/wcg
 Ncqh6tNnRJva78/3GUI4F0295f5MBMukaQlN+jiaeY7KZeLVxsa+FR/T9
 LKDoku/x5k35IfziDMZfB3gC4EtWOZXvpax/vhvDouUMmKtQmjN+2Op4H
 8s2qKeKsyvjvn4UQYbWDX6hbxIKUcEk5Qj5w6LQmaX0wZgMYzGYHfxLST
 v4rHmYxC+toGCvDMYQJn1lNvdGmtmA6U33VLq857GUDRwHaw9M1OBNGfD
 cngoYmSItCBfjdkiVw37l6JNmWZeKvFMB1UWOEx/KVFvJAYX7KGYnMezf
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h0rq3SXj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 08/15] ice: make
 representor code generic
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Raczynski,
 Piotr" <piotr.raczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Tuesday, October 24, 2023 4:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Szycik, Marcin
> <marcin.szycik@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Raczynski, Piotr
> <piotr.raczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 08/15] ice: make representor
> code generic
> 
> Representor code needs to be independent from specific device type, like in
> this case VF. Make generic add / remove representor function and specific
> add VF / rem VF function. New device types will follow this scheme.
> 
> In bridge offload code there is a need to get representor pointer based on
> VSI. Implement helper function to achieve that.
> 
> Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  |   9 +-
>  drivers/net/ethernet/intel/ice/ice_eswitch.h  |   4 +-
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   |  10 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  10 +-
>  drivers/net/ethernet/intel/ice/ice_repr.c     | 184 ++++++++++--------
>  drivers/net/ethernet/intel/ice/ice_repr.h     |   2 +
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   2 +-
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   2 +-
>  8 files changed, 131 insertions(+), 92 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
