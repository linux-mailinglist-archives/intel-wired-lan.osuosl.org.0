Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE5F745B97
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jul 2023 13:50:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CAFF882026;
	Mon,  3 Jul 2023 11:50:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAFF882026
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688385054;
	bh=y2W53fu26nm7axfB+NkK+p5CE0sJ2iLaeDHpsNKRNVQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WoWVRPzK3sW5vfHQPuwhOXXJmFHHou9ey9mDVcYpE2cOVCWhrzAUH9LllyPss1pdX
	 lR/vCa1XOaxjE2JzLpb9OTVUOTQVyqWjLMVBYaI/ah9MCEa1pWs7S0Dde3X572jUv6
	 iL1tm4BvFqyVh+Zmc416saU0QRyVzn0mGpvy6kdjAoVD6/lCkSiC5J5y4ky7Xs0xc/
	 vz1Yfx2Kbbp78ovjyhbRbCmzY3C0XdApkwY7bla1zUibgWSCDLQqjvtYvYGDm4ECUD
	 7ViTwiU689RVcg9f02yPbe8kVxSXCU804TBMtlPNj/eDQz2hLa/85vqC4VcEmclk0y
	 O1zRdngkycU+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1shbUB5snLIk; Mon,  3 Jul 2023 11:50:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDE2981826;
	Mon,  3 Jul 2023 11:50:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDE2981826
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 402B51BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 11:50:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2547781826
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 11:50:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2547781826
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 11VB-5sW9Hvu for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jul 2023 11:50:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 567B9817AC
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 567B9817AC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 11:50:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="352686710"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="352686710"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 04:50:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="712535860"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="712535860"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 03 Jul 2023 04:50:47 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 04:50:47 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 04:50:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 3 Jul 2023 04:50:46 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 3 Jul 2023 04:50:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fxQPJGVGos0jeAlMInj+lpjDoPexmwo/ZT79sdKjgsd3Thq/SlB0jq1Cq5Jt9c8kE0k2XNEO54nDnhz3ESjizJbZszeBnjb/YhWhSWuxIwXRBufEo296/FUoU8UU7gAGQpKHfB7sj7lfYfmfcUfT2033mQHCQL2QPzIml+rE2zppXfsWlGTEjFIXghQb5fDsRYZ3YZM3LnoMUXaj5jo8O5jU08dgl/QAXJcghhQ+q+qC/O7V5/8zlwY/qQejG0+XkRX4PhMvpgOU1FEgAf7ibcYfNd3eXxG2WJwg9LsihUFworl6LAFiiIR29pcC6yQuk+VGX6U7ci8Y9rSkBy3Ayw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FIM8rbuMZYyNBRioPxV1di0hngVBW/PBogL2Zp6l8Ko=;
 b=AEeNhHyiWZ6Fikah1iGf9CP/moFF8vxI8Jfhn+4B3SisSh9U8b90/dh26WtLnZJBdrYRINrI5p3tJJ3lXbd9nqK5+EBH2TYEobYd8ZJSYWLAl9qTq4fMFVVAqZePwKgs4FvsTMVgIlkP+gesB8ZrYfv+KfuffB9qSUOCHmpt9odaZhNN/rgZJxqRjEulB/RyJv/DTWGmMOtp6ThDgEp/fkUpzx64725QUY9E8uRK5OeNKOcsHsg63YxGXdQIYDipXg9ngPfRho7DqvFMzOxbX5IjAHHI7H2wqvvb24EXIvWaeXZrSoIScIpeeqBpORw1NQz6yvzRWUY+8FZtgkW54w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by DM4PR11MB7205.namprd11.prod.outlook.com (2603:10b6:8:113::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Mon, 3 Jul
 2023 11:50:44 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 11:50:44 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: Add direction
 metadata
Thread-Index: AQHZpRB1YNrk98/Md0u2Kpu/zIu82K+n/vYQ
Date: Mon, 3 Jul 2023 11:50:44 +0000
Message-ID: <PH0PR11MB501388683ED34A9ABA77DC899629A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230622133513.28551-1-marcin.szycik@linux.intel.com>
 <20230622133513.28551-2-marcin.szycik@linux.intel.com>
In-Reply-To: <20230622133513.28551-2-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|DM4PR11MB7205:EE_
x-ms-office365-filtering-correlation-id: 4923c239-9c03-4bdd-f5d5-08db7bbbbbea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cQOJE/2wCzZ7sAqjBgl8fOz9braiqe8FKp+RGuzduMN/u9ZW8c9CKCRzn/P4s+pmOZerjQqh3Ei8F6Id9BI10ni6RL7Hvw8NXG7V+eiudlZS2YYxxqOTfSUVGgFgs6Y/PfLYHVR51yBzqfFGb5RhmUru5Yixzk8thd+YIhcFLP0bixH9/KgVMG/RQEGrzRpjnpBEbMC5jC10objE8vED3YmslIyUpzdlT+d/yA2nF0q1/DbPAtRqIwWfEzLF5dWLJlpn+5vmDwldyTJX/av254TEtnsysBrPyEiF6QpEL8LZ5Wlp4BT6eh1dHBVppkn7ERMg9ueIuq61fpj0rzVVAaWUaIUbZpTVM/dJnVVQ5CF4pz24R9D3/n+O14uMCKABs2vRQ0WU7aBiScYQPe5JTs3s53RtXEQTpuFMVt/wOBvwCbhmJPazjZcaWgx7ymgxCCDCyXO0K3rHhIIY2xKSUq6UTLh/22iMWJzf9lX3Cwax8n/c4yebLepf/j0drkg0v8AI3z1ZKJfj2sDa1JSgR2sc4O2ZDhFIc44yeHX6tVN5vNlC5xQlVXgIk/pBk6/DLxzXr+5ut+16dvEyL+bzPf9xMyghgljiaI/wkwoKFFi25MjVvq1et/LVeyzUdVDf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(396003)(376002)(136003)(366004)(451199021)(26005)(82960400001)(478600001)(9686003)(71200400001)(6506007)(86362001)(186003)(38100700002)(64756008)(4326008)(66556008)(66946007)(66446008)(66476007)(83380400001)(110136005)(7696005)(53546011)(76116006)(316002)(122000001)(5660300002)(8676002)(8936002)(52536014)(38070700005)(41300700001)(2906002)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wq7qW5fmOqzB3VXkCWe/nSxSLFgu9gffY81QEwNuBbRZn5tVIJR1hALmkNHD?=
 =?us-ascii?Q?JZyg8nkNwcAr6T9AbaYlZWanSN7bH2BHds3wFEejuy6cBnHHcedrigHeHtX4?=
 =?us-ascii?Q?0g8DyZGzWVkjH7IJlAmOFeUDKneujVWGmuGLX9djDt8o7b1v8q51a6K0v4Oh?=
 =?us-ascii?Q?KxuXAi8Z2E5YwQuhlrR76LuA7L39KhYdJrYsk+h+CNchmCYWVonmQSdOuOm0?=
 =?us-ascii?Q?h1jczUXGF0chpY/sIEMIwrI3WB4KlV5ku6iFvKjBb8/7Kavtw37E2Na/VP09?=
 =?us-ascii?Q?HpoHpkpm/qIYhb2AeDxurIFxo4ZxJB9+ezpjLl6po4/YP6Dxd12nb8gyuIK/?=
 =?us-ascii?Q?/aoLEpAmm4VZ4IAL48S6w/8emv0jihRFtCKcNreUMWhNc+qbWfFXQtA2w2sU?=
 =?us-ascii?Q?rwk5EQUrEidGpng3JGd7WxGE+dOaz1GnQo7U1WSte5iblbgzkD2UivCfiqyt?=
 =?us-ascii?Q?CJTi3Yw+JB81aR5HjVJiZAC4naZaOIhphLWfcwWgoWu+D4bR3iVd8il5WQZb?=
 =?us-ascii?Q?oHZSC+3DyozsPgQb56VPp1fMlcXM66wP0saV0dut4FdNbo1REvmAQARQIESr?=
 =?us-ascii?Q?ThU1eaxwwpRtSAVESuGHeOoycyUBlzGG4bB7L1XpkEQOaJVnZZE968NI+xkt?=
 =?us-ascii?Q?/btfU1B652X9DWeuG20D5bG62NTtgoDxnT5/loqdM6yH/5X3YJExiDF0hGXw?=
 =?us-ascii?Q?VLdyPKmHOTLb+wSwRNUps65MPN7tVs+a8EwFpLEjHKH9mFyRXKqFAqoFcpBK?=
 =?us-ascii?Q?D6ryt0/j7QjvsJofm5PsTr91Mc+DcoPudVXrpp4Ft7WJmGPdkFtsviVvhfUY?=
 =?us-ascii?Q?qC2B3Y8RrbtIXPR5x85BTLSlfyU5Ffp8PadNoouJT3+yCtJ5Fqw9YM4F1NdK?=
 =?us-ascii?Q?QRlyiylvUW5DJodML5l3uyeSdxdR48yjWBRZAnAUq+W9C7N6cpd+vGYfJjzM?=
 =?us-ascii?Q?KFkAo1zlO49RL0/XoOqBLEdi42aRTnpHyAI1l3b6czZqu9e4yYJwSnjdkTNP?=
 =?us-ascii?Q?9PBn5YzMpyg5I8UmpEnG1YcjK2GpzxUXnN1w7Vx5ECsLdvJQAPSWI61gisu4?=
 =?us-ascii?Q?s4ztmnnFY2ztmeovijL3B+yH6dZsVgmcsFTyxlj+uu/T+cBCX0w2n6PSQ3aK?=
 =?us-ascii?Q?K1OMHOLzqxzaEs0vMECreRsbxw/w/2lJdakaiyxVp3Eg8G2ccwkSC8Sm+U+h?=
 =?us-ascii?Q?zEh/KdOnY3f5VHgdABhhnO1QGIVUOXq18gASgzVhFTj2+z1+koI+zwXdmIto?=
 =?us-ascii?Q?BWT7XdaMeqh5N4diKDjioMD0IcCIMlKvZv8O3hFdGHUeK6MTjAhOBeZbBuL7?=
 =?us-ascii?Q?NcR1CvNZ96c9XzpfP/VmuEuaiIxsFZbGfWLprx6fgSWL6Nr788+cg5g3Vecq?=
 =?us-ascii?Q?wr3jLoM8JmrXaO1eQBgyfAiXBtLOtlAyssepE9MYTU+SeKLr67CMVFEEkJrq?=
 =?us-ascii?Q?v3Rdn/kNRQtK9oN+iHHqlnTm2rnPICdKRYISmIYWrC67PuA08k6MTVMncEqw?=
 =?us-ascii?Q?Gx60EAy80qjZZ1YKcIq6v0K6tbWmDaI3Vs+szrW6Z2bFWtDQUa+rM/UHYS0G?=
 =?us-ascii?Q?aQwBJRqHA1sDj9tMUzqPNN2yZOe38KvsH2LNSym3WSVNPcehyokhFqehby+C?=
 =?us-ascii?Q?RA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4923c239-9c03-4bdd-f5d5-08db7bbbbbea
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2023 11:50:44.4458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yu4GMASPsQ6oSXTK0vVKRVdwxacNhLiPfTPwWA2moLAeVzcYZWUrY7KgHjY3rBAtERgmK5TvCPuhLQj+Wi5qZBXpTaMQigKiRue4TYUzL9Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7205
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688385048; x=1719921048;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ua4VdscuSDjTbkxoMqwBzlLP32EKKxUScXNFyqAwNdM=;
 b=cAUZDJGuLYK1+FoSzKoBfu5593fxgPgzW5zBFenlEorFjfXlunL6BOeg
 KmiaahsVuyfeiL+R5R+L8LeqRrD4JnBrWb5ufus7ZeY3jBlGWsJL+JQDm
 Nij+C60Oaq7cbVN5e83CwCW8vEkIedl9nJ6KjzGhC0GhGOSA/p8niICkA
 ymyA6+UAE+JuaLphtQu7fhQnLIEYsHMssjJ0vHnHw5fShBDmkaSVFsuip
 QlAzYPObRfNlAihe+uwacEkE9Z27ZDLAEKzGMBu1RUYeSUAxJFqcuGlnD
 2OE9kazm9Y08o4tFHwmIdghFZLpOsJ0pIHJcRf2xUuce+tuR73debqkvM
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cAUZDJGu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: Add direction
 metadata
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Thursday, June 22, 2023 7:05 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: Add direction metadata
> 
> Currently it is possible to create a filter which breaks TX traffic, e.g.:
> 
> tc filter add dev $PF1 ingress protocol ip prio 1 flower ip_proto udp dst_port
> $PORT action mirred egress redirect dev $VF1_PR
> 
> This adds a rule which might match both TX and RX traffic, and in TX path the
> PF will actually receive the traffic, which breaks communication.
> 
> To fix this, add a match on direction metadata flag when adding a tc rule.
> 
> Because of the way metadata is currently handled, a duplicate lookup word
> would appear if VLAN metadata is also added. The lookup would still work
> correctly, but one word would be wasted. To prevent it, lookup 0 now always
> contains all metadata. When any metadata needs to be added, it is added to
> lookup 0 and lookup count is not incremented. This way, two flags residing in
> the same word will take up one word, instead of two.
> 
> Note: the drop action is also affected, i.e. it will now only work in one
> direction.
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  .../ethernet/intel/ice/ice_protocol_type.h    |  1 +
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 11 ++++--
>  drivers/net/ethernet/intel/ice/ice_switch.h   |  1 +
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 34 +++++++++----------
>  4 files changed, 28 insertions(+), 19 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
