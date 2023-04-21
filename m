Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 997FE6EAE93
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Apr 2023 18:01:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E81A41C7D;
	Fri, 21 Apr 2023 16:01:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E81A41C7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682092871;
	bh=XCItXQyOkroR8huV+U2vRnYZB7aAn1eFLU/VnCHlWFk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fv144trgp2VXiRzznoD4VoSTEmebCH4T8h9MCZMPxXwMocqFzkz3MV6GyEGzLcjFb
	 ZV8noaxCAGTNh+T3bATTwFN8mfyqaqfqF2p+5+08QAdQq3sMmjXbRjXoGpAY7dImuw
	 tHHKC3A3PLxvuB7XLVQ6gbFxIpOr5Y3AHEFSwbaNCFO9aPBIsgTgR11NvHQkCBk27A
	 1rD7GDA7skNY+VuDY8PyoHkKxW+LTmt7/zDLldnEx28uATjWBMu90IU7/gjS1ZQWE2
	 u97s6qCsuY14dn7T/mnLH3InSrSUJwuU41QatnMVDB1ZNvknkRWD8bPZ72s0CqcKor
	 eWmnpgl6P95PQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BL2KLoZkf3R7; Fri, 21 Apr 2023 16:01:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A7DB41C3E;
	Fri, 21 Apr 2023 16:01:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A7DB41C3E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 03C631BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 05:36:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA155427B2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 05:36:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA155427B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K7tLlRiFOFH4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Apr 2023 05:36:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 930FB42798
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 930FB42798
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 05:36:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="345938642"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="345938642"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 22:36:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="756783013"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="756783013"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 20 Apr 2023 22:36:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 22:36:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 22:36:12 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 22:36:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dyqBsWUr4flqk4LutIqoqUlqRnJuzkEBofCCvtSk4dxjQRPuwyHA3QL1d/d4cLh2OvPcuutpkQEQEbAPu1cLFh6MZ/vCy0E+uStzSsTFNLfpxYkuwCheBRgEaavIyPtYa5xVRKNeuY9enMQPNKDqjauxj7a0aYAVaWXAo8hgqigBGwcBX9afrSeWNERncZ10nlj+R50pTcJXl99CQ2nkhYhPw9i2a+iQvOINVGkuRc+wHeH3bYZIN5Oge/Xz5nkK53+WnWLM6QHw4zwPQE61koQ15OCOkeKgdgpKh/g3AMgfm6pzK5oDY0Yy9PMbKafOw4JlcCetp+0YOo41sJLTgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s+HiYRT0Tefe8VSrlhoQI4cygxKjCB4ty92DlQnjEGU=;
 b=Wy5LYYNPTJuSmrlYVgAEx5CZ2f1csdEBdwlUEqrqwzPufXKTiB2UjIyEBK6UMt+lKg3L4EwPT5o0C2RF8r0A2U3BB5x3mQwE6YQxUzkJ2FUCRbugSS6xVoIfzlyMvSC0J3YX7RSGu2ymnkRilXTDluSVGBUPUmjbjMAIVujS3FXllUzVHP4qL5XC1yN7a7RS96fYhyq2bDULDpNAAilgwAudtGeTDF2QpclnVC6cNqrAN8FOWckecHA+YKB3/FMEXdSvm4UFZOryIclLXFs7yxqXX48b03EHlmVULGIfBrohDhpZTJbztF6KQftfXdEhRYp5i5DeeGfoH2N1K5KJKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by MW4PR11MB6714.namprd11.prod.outlook.com (2603:10b6:303:20f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Fri, 21 Apr
 2023 05:36:05 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41%6]) with mapi id 15.20.6298.045; Fri, 21 Apr 2023
 05:36:05 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Raczynski, Piotr" <piotr.raczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 1/8] ice: move interrupt
 related code to separate file
Thread-Index: AQHZXYKKoKKAiseJRkOZn0W5ihYDma81ab3A
Date: Fri, 21 Apr 2023 05:36:04 +0000
Message-ID: <BL0PR11MB3122A33850FD5AFD00F2639EBD609@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230323122440.3419214-1-piotr.raczynski@intel.com>
 <20230323122440.3419214-2-piotr.raczynski@intel.com>
In-Reply-To: <20230323122440.3419214-2-piotr.raczynski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|MW4PR11MB6714:EE_
x-ms-office365-filtering-correlation-id: cc371714-38c7-4055-b406-08db422a4c8e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oRJZb4JIIYpFAs3qGgcGgcGjsVAkebg7ShjGWj9j+KKHgPMJItHEP3u1B1J5WB5o31HNtuKtMU40x5avMQp7xcvbqLt2PhrGNVx1eGtJe/kvHX3QBL3tK2Ic3vKoVk+mFelj3V/CMNn3IQN/RQRyy34du3Zo5IHCH23gtSlMUZzN/1K/HWl8B1YcjI7O76T+46iVcu8H1ewKT1lN3y9D0S4yUTPH1JxG3RwyaxlEffR0Xj0zdBR4JOu+FXV1S2ss2enquJ9Nb2RxY9adXLuylaf+l6PlGAjkb7u7hqWx5NpQl0S5iSJe8fH8V3XE9H2WFXNRtPaicJDU1L177+3NSvlnH2Tt5x2CO6lx19ggnrdbnwm4pgjKp5GZKlqMmsXUt/1pY6AiIuJoIJYd83l0jJi6TXDdnnikBUFRVYJsNfDClT4l5Ega299z9mvEGicIexP9D/spY85JFc0WRZlwl5jG9WCWYD9Yo3rOhKxu/uMJlD8xujiKm4qqV/ieKDAijaT/aC/E3EXCJF4RGyrCiNfuOEzoe9umfOwkpVboEfSjup5aNXcQIMOpDLEP2Do9YTu81QcrHjdKq7FR9DTRLcUvJzfVuCHKaorn1JuppbeWfspeP2Z42M6+KRdxJsnS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(376002)(346002)(136003)(39860400002)(451199021)(52536014)(478600001)(4326008)(54906003)(66556008)(66476007)(110136005)(66446008)(76116006)(66946007)(64756008)(26005)(2906002)(6506007)(71200400001)(7696005)(41300700001)(122000001)(316002)(5660300002)(82960400001)(8676002)(8936002)(86362001)(38100700002)(38070700005)(83380400001)(55016003)(53546011)(9686003)(186003)(107886003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YcRzOgLD9xEOvSKVJrXsre3o8FQCjoYk/QqTa3puWRfLYC7zvAWR6YSJyw1S?=
 =?us-ascii?Q?F/35hZk+S4xJI7cxUGGhdu6BdIOccNVA2K2lPcxbwu8O63u7GoA5dyyaDiAI?=
 =?us-ascii?Q?9WZR2m7H2aJIo/Rll5TXZ0Q0INpduYu6nXMyFA1UOWGDsdxmWveI1e6wiPEh?=
 =?us-ascii?Q?JG0kMfL5pwl5us2pQBoRIb8HYDmQ7PPdwDP87F7ykhpuik826khR9sZqLboJ?=
 =?us-ascii?Q?EAdFQ/r8527IxSDU8tXvSON2hjiz+HmUDcXGZ79Co7S+JQ+iUlSWrhXJPFCL?=
 =?us-ascii?Q?6We4MecsgMCwy7gneY9t4IHMw+77oOWt7r6oFr/Yz338j3rYSQS4yX3tm/AC?=
 =?us-ascii?Q?o2zQgVu6aJakQPcHscbyZsuIViP/qHRf7IMrGiZ46uy4sV619xegajsq+WVQ?=
 =?us-ascii?Q?+UFappxUvGqr4nG+/n5XlFtkIJkzmSJbEZ1gRnNYLA5qL15UqjL28DISZhM3?=
 =?us-ascii?Q?smGbAV5ptuLHaydOxehIxvQV5ZhtwDaXwORhlfAYotdIxk/2gIXZCaw54pCg?=
 =?us-ascii?Q?eWdswZ1/LdADtWrVJ1VFM1PrgMcNpYKw2bcUpEeWnP52FCdHED3RVaViqfoZ?=
 =?us-ascii?Q?HuEgV9q+7S6DhA0JvbrAqt2URnuYKJcqolTojjpbQ9hEobkljBiTz1EU/PG3?=
 =?us-ascii?Q?B/LLmep+MHLYPhp/ZJFfv6+85AJs/9D1QI6moCHcR31FdR4LWDoQoUkeE540?=
 =?us-ascii?Q?WfgqMM4HNm2b2W/T7ejyLu/QOoOQdTf8EXoozdkYAH8HabmkKnIbY7Y0jnor?=
 =?us-ascii?Q?lUL477NpLlxHIDLqfW77hY1sEi7Lz2LyWxNYfMKcDttdYAPW0lIyP+n3t9qe?=
 =?us-ascii?Q?vjXgpiAVV1kVvGFoO5obXvh3HzEKOsQx69A4CbS6clyWEAnTO7KQt6b+G/YI?=
 =?us-ascii?Q?/x7TUNhjcs789QT2iWdFRrCWtT9IwIUpdkKUuM2yGMU+mkLmqMvOhnp0XbUf?=
 =?us-ascii?Q?z/gSuZzfLacyXzlhTaxJD65Rgsf9oiSTyu8gxHPWiag7arm6NREFAxJ+U2qk?=
 =?us-ascii?Q?6iGs6KJvnoVzK2uRekQu9oW98T7DBFXs4DyDWmFEUs4ssaOUOQFyUqYOHmAF?=
 =?us-ascii?Q?CXYeUU1dZvWdC6Ip9nPxbaIS3BzmVxAP13wMnF6OMsguEkm9ZNWMwfAMCBbL?=
 =?us-ascii?Q?K2Anh2LIKG9Qhuc836sYPSdxkwQYDJItZDypu9otNqIN+OHz21JTapY2EcsL?=
 =?us-ascii?Q?QlycUm2imzRP1NIgUGa5daM7PTZJCzY/k/GP3ycEvUHYIFPMXwZqqCxmwoSR?=
 =?us-ascii?Q?7+OqEgomvPYEx5yOv3xZeerI+Nm+qUdCrbeR2OwusCvm6+2KLaQErGJxB2hf?=
 =?us-ascii?Q?HFthUBwRt2C6eHvkiC03/BLuUoU1VsUJ34GRgWxmEnT11GWXUTQb8Hct8Kr+?=
 =?us-ascii?Q?QsviTZI6u2STIcMkJhhYxDAbmlq43K0x6OHFR8c4YBXJWbzvuji/mhzA/xRW?=
 =?us-ascii?Q?ZUT5BxSmmVrQjy4vR46er1WrzYZT96V2wvGsobf7o3sBfiv9v/GAi5XIG3DJ?=
 =?us-ascii?Q?bRT4CB2GSGPNEfxPV0l4gS5k7GIeeTUtUn7XYDrb+TaOt0xLiBiBxHO4ae55?=
 =?us-ascii?Q?CzWjaERuB6l8yaELKvSseFEqh3dOWrRo/iUa7Kd4aocyTqC8TzCRrtpbatqE?=
 =?us-ascii?Q?KQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc371714-38c7-4055-b406-08db422a4c8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2023 05:36:04.3029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6TXd5dGq+M8zUfoh34IVpb/gkaA96tz2mv8rqOUDSuzGAqK21Yp/2JP2lk+RBMhjTlKI/oiwfN9H2eHY7BogiRkRMjO4m4dKwCO66uQuX+P+crDR3J5N+dwWETmMsVDp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6714
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 21 Apr 2023 16:01:05 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682055390; x=1713591390;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+xQzAv5yiB6JVZewQFT3la4LZXzHXuyEw4VG8Rv861Q=;
 b=CbRcCWv9kW1+z7noZtLgVM4h0mlS4ZxcLY8jQMZGgV5yVJOWZUGL01hg
 FIh28WvoHxUuQnWXCvcgqE8D4OYg1WfI1JCgly3lgdVwo/z5SeSKzbu8y
 TtHLBb7eplgdSfU44LTYq0sfUKN2HKSFSPuLurtXjBqqIbFVRxiM1rqvr
 iNcdbXwzIrtsGTsbWsFeh+19WV9ub2t+Sj1tpN78Sw/p2o/J0yH6A14YH
 UZrWKoxfydy04Ntfi0QW4pwyQfuBfZ3BjqRa7wOLBdg/S4kDYHVK1JMLO
 +Tvbp5bB+CU6NzcrZkqg8MSSf3M0GUVIaar/iY7hVpnktHt9eFdgnx7Ut
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CbRcCWv9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/8] ice: move interrupt
 related code to separate file
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Swiatkowski,
 Michal" <michal.swiatkowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Raczynski, Piotr
> Sent: Thursday, March 23, 2023 5:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Swiatkowski, Michal <michal.swiatkowski@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Saleem, Shiraz <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 1/8] ice: move interrupt related code to separate file
>
> Keep interrupt handling code in a dedicated file. This helps keep driver structured better and prepares for more functionality added to this file.
>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> ---
> drivers/net/ethernet/intel/ice/Makefile   |   1 +
> drivers/net/ethernet/intel/ice/ice.h      |   1 +
> drivers/net/ethernet/intel/ice/ice_irq.c  | 226 ++++++++++++++++++++++  drivers/net/ethernet/intel/ice/ice_irq.h  |  10 +  drivers/net/ethernet/intel/ice/ice_main.c | 218 ---------------------
> 5 files changed, 238 insertions(+), 218 deletions(-)  create mode 100644 drivers/net/ethernet/intel/ice/ice_irq.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_irq.h
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
