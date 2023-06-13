Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AFD72DEEA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 12:15:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 510224158B;
	Tue, 13 Jun 2023 10:15:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 510224158B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686651318;
	bh=A++qNaikOX5bBGECfhpU8t4Z0rK/FvdVEtbIoo0GszI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ctf/00ACCrp3UmNOlwwJvTQOWntrb+DUffUU2HqJBwtJL+wv8EpVTUsizsSZZrnPb
	 M0XxOT2JVYwlvuFMSeXXxXFSVWp5Fib37U8la99BrFVQ89CahsvEmK/erQFs/xa0Pd
	 0Y8o6sn45OwwvsmpxxGIOO9Xevig7jfIbsDH8vpkK/uKLlByJi4wG8L8FSJgTNwM8Q
	 tvXlCGJX2mJHl292ChgsLlDfxL2LOtVlLitWgJKMBOUVl7rM2Q9UR/JLX5aAQY+tOT
	 TxOjBKXAjjLeMpNxt5vgCrTiWWnpwxquNeploEpKKh3pItAsIv4VxHqHXi4XL2vBh3
	 dTFxwflsqd9Ow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8CXBe4HhVtfV; Tue, 13 Jun 2023 10:15:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25E9D4102B;
	Tue, 13 Jun 2023 10:15:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25E9D4102B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 678551BF95E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18307409F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18307409F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wvvbsp8vhT80 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 10:14:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F010410C0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F010410C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="424168077"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="424168077"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 03:14:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="801407981"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="801407981"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Jun 2023 03:14:43 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 03:14:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 03:14:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 13 Jun 2023 03:14:42 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 13 Jun 2023 03:14:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aWyFPndd75eck3lVNH1Ijhay/DR4xBj0gD28tfbdi/TUy1u3fkshZuKuNiXCH9sqYm7+Rc3QrkNUbOIjiIboJmBg5XuPHCe2jdKoR3OEgpPTjMR4Y7YTvdhalTR8i3qGB4QPd3A6xEC83ZeGxQ7C4VO+5GSHj6Un/1u67IulX+mIIxicDwCtDOossWI4RWwSwo+DMMHBNgT01+oAExR8xwM3YchwpAWjAp0qbqwZfmPJh0O3d0pxYPzXkgrc89M0WHbRW67sUvITuzn7w3SH443fiCksOqAtFgfWUbYPkafmQhZOCkEVa+l/e2GpFc+zUpkCgqmptvVJm5GOv9QNaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DAcXtWJ9rddWsUiOxK3kH46Lnij7eQX6eMgZYa3EnqI=;
 b=doLYKqxOdTXl5OGm465UcYPexgE3TWtDZrCnLtCPZndl+UCJZAeegwsAc/Ldr3SpVK6AK4xEF3nZUgy0lsNahF5fC5NAx0f8U6uBR/EKVNQUq6MsdIxB3N1QZzW5o6OcZNCwl5yCg3/9ZjxXFRSXoSbqy3K/mPstSy6LR1JmlUlnCug08qsJH52D93s1A3wgP0n0xC5Gor/URQ2Ip110j/JmH2IrBieMD0wCmtSDUaAIXG4H6fplEUuKQzTM9T6/TlhxiBc0s5tbvFF/MSmUWsoy9u1jnDrX5DEjCF77A6IWaY4nLeYVfZN/1KQyHK+fF4JcsSMCLB459GHJhisFmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by BN9PR11MB5465.namprd11.prod.outlook.com (2603:10b6:408:11e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Tue, 13 Jun
 2023 10:14:40 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6455.043; Tue, 13 Jun 2023
 10:14:40 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 02/13] ice: Prohibit rx
 mode change in switchdev mode
Thread-Index: AQHZjjqL1byktwjS6ku6SpG5AwQXQK+IoyYA
Date: Tue, 13 Jun 2023 10:14:40 +0000
Message-ID: <PH0PR11MB50135D634FB975F5CFB79CF79655A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-3-wojciech.drewek@intel.com>
In-Reply-To: <20230524122121.15012-3-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|BN9PR11MB5465:EE_
x-ms-office365-filtering-correlation-id: 18bf8354-3279-484a-6caf-08db6bf70009
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NGv7LA2o3XbEBFkcxzz5iHBXK+91oG22tcLuBFwIB4BqpqzQqHCL0D18iZyJrnv8BadtLBnbKr47ZjQNObONZcZmdKtqErPbsODDDLjymvT4m7dMrVwlPFZK5XZDERetWwJ3HKSA8Z/d9aKAw9OJNAl8twz229yvUfhLRbHnyizzsqdtouU+fDO2Rj7svaxMoLnTAPMJ1QnMEU8GNgTgran2BBXoM4cwuKrz4dVL3WGbG/MpkTDVRiwPQ3osrn/mF1LkVCFVhsPXPIbAGgotNdenzqKmv/eNBoTCaBTHs5wTsV9FMBZsyon379jiBDt0+dBr2oLAUSuFOZ4INhsEF2dzZXNKBP/MZ/b5xJtAfy6WyFTrDZ80veehJT7TDWpzyxlhEwyfNvG9HLi+lSjCueYu9Bx6V3pYNnz4OjwsQMiaco4AwIE4JLiR5jAARoIQhIiaYE51rmrJhA0iQ2wHk+93l4BN9b64yLtofGDEp5s1RnJ6hJ0w0t98UeNMFQ32nihKZG/fJwUh0PecvCJiXJltjGciI6Cib1kMCVA6mtyB8F3mFn32tZUyzhyCuzWVJA0HZw5mKmTZdNAyI0qSK+fwPhnRmAo4ijtvspgLRSk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(396003)(39860400002)(136003)(366004)(451199021)(7696005)(316002)(41300700001)(9686003)(6506007)(186003)(2906002)(38070700005)(4744005)(26005)(86362001)(53546011)(33656002)(122000001)(82960400001)(55016003)(38100700002)(83380400001)(8676002)(52536014)(5660300002)(8936002)(76116006)(66476007)(66946007)(66556008)(478600001)(54906003)(110136005)(4326008)(71200400001)(66446008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PIY9zvcgSdNzWhRMaAxb9ejUEFRApGS0HM++Lkl2mqubGOOIVtGMHajo4m+6?=
 =?us-ascii?Q?WR6I7v1SakRl5G9zenu8hpzvF69PNcIazhThbFNZmlA5ZiKqTNpveUU82038?=
 =?us-ascii?Q?6NMeFrXlqY2chTLh2SZb2SmnGJDdhDljlW2uI6lVn8RcmZNjku3H1mHNOWUF?=
 =?us-ascii?Q?qLDp3pAruPk+bwTPC0JXnk7f3P2UIjOT9r0SErbBlvcsftKl4iOXD424yJar?=
 =?us-ascii?Q?su/vWKDAPNTHx1kzKEDaIk9/oPlitpBwM9kZXkikPtQW/4YuQcZq78KVRJgQ?=
 =?us-ascii?Q?wEBOKUXoIYRIuH8KjOxjlkUr1800VRhN3144WMqqbpCTo5cR3aTyZn4Rzq5m?=
 =?us-ascii?Q?kDv1KvJAJ8WB53rHbZ7H7mB/7brOUU8Eg13WiyjvhARmL0IxaQh8vERBPkT3?=
 =?us-ascii?Q?J+k0mVuW9qKlTZcXbuNR9YXRrhJs8dT9hxJ0e8uLfhVUxJiyUpux5PNIxfG5?=
 =?us-ascii?Q?EzfjrFPuLkc2mwgorAaTgS+O6TfthZgnG4keTllzKcoZRXsH01Jp16m1jv1k?=
 =?us-ascii?Q?TGEiDqTQmaAzwnr455TrKuRLVK5zWDIvaf+mvoj8nEerZhFWnDk4d/15jm9z?=
 =?us-ascii?Q?gObQ/PEYctAqk6X+LfDEm21zj11nlv/shBxNUI5fXriM4TAd9nDMeMtndMdv?=
 =?us-ascii?Q?pMtIX53bv3tSe6KNYwUj3/c7vCAcIJ2RGmH8uP6dkcHboMSr3hIdmQi2QmdU?=
 =?us-ascii?Q?KYCvSpgKljt6wEsHVdApbNLyXon9rzqEzDH9npt5pYBavqFAynXypKAMqrPl?=
 =?us-ascii?Q?dNTJUnw5gSPe/EvQywehga1HszuYrFc5qQirCgbSad8bHLAGmXaxmACBhNib?=
 =?us-ascii?Q?Vm7IVHPr9jrxQdZwQjS/2OiDZdGfx4QPetQSongD5oIZt5Tm9aKcJ3Uersv/?=
 =?us-ascii?Q?/q4KF/ergh+1ZIaE/5jxx2NmZ1gvcdGFMHhNQ/5OhYSuRLaTlqk3wdUwa1BN?=
 =?us-ascii?Q?eznY2V3BsgCJHHyD1LWumTg6MBReotOO7HxUjPc0PdtssSFzrQHkP/AbvSWq?=
 =?us-ascii?Q?LyYbBmo09gJ3DDEnCxFncptrpHaHr51LMmaOcxAT+blwk8lxv4RuVT2z5Vmi?=
 =?us-ascii?Q?hUik6cWBL6c5V60Qd8RWqk73xKUGq73FTHwRPfI1Qm4ji4xowk6A3oqgIMj3?=
 =?us-ascii?Q?eZIT+l2NYJfPRKbigkVtf3m7BK/ZvmpSQYGO2r6mUf7/jL2IxVllGNyjKs8u?=
 =?us-ascii?Q?t71EmgXWk2PMXH6Va1CkkkxIXyyqOemAzCeKFMTV20E07+TK5fMT0i4yrCTT?=
 =?us-ascii?Q?6muTj89HgwRBTa+MKZIScrYVzkj2yKTMvxenobm1nHHpFW2tQIs9LzWuoEDQ?=
 =?us-ascii?Q?Ex1BrOXzSFn+Ujc0qGA1hYS0Rg21fp+cIOAHIq/kvVYRn0Lo4eFtSwSpqdEI?=
 =?us-ascii?Q?3xmhk1ifl7k33vzgok6uLEWO7aEd0A4lJoQmIUqTZS/Dx7REoBSe46S2gMaO?=
 =?us-ascii?Q?gX/cnHA/rXHKtpmRuhoP0INOm3Y6hnoigUkKZVAjMf7SACnfDdcBUaxO+Wht?=
 =?us-ascii?Q?i2yYtc7pJSsIqxE0yaTwcSQ2eo/9rG5RRFj23+noR6YLksrbE4OvQ3bq+fRt?=
 =?us-ascii?Q?rqWuUIsdqC66U1vSQ1ngyRvo7EAfWDMBIFKn9ys/sncJkaU25BQkOx0r2iyr?=
 =?us-ascii?Q?9g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18bf8354-3279-484a-6caf-08db6bf70009
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2023 10:14:40.4545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5xzMyVtcQyGBB2T9dXRug07zniWB2UpsGnnlpgG8qtoEUaiyAE1yqM5mB58dDtt/xDUhhKn2aHUB7Z5ox/jOajh+OnKTtNXRLgunlxT5f0M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5465
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686651284; x=1718187284;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=582Oha4QFrVzowhwzWsPnmx1+/ChXnITKSr16iQCheM=;
 b=M+H0pQHiPf0WoGztT6gVQzbHQWZk2Cukl6wIcrbBJrBkv7PI0fHjoMjM
 Ov2uuNQsd+dDHpMc59mUTqvIspSqQDKAXFxm5udY+JvlRySRYkk8/Slaj
 QZqQgBFxmOsYWlohj8hEiyigYKjNEAj+HMj8KKc8EYUBrTjN8m2uzExfe
 j4Xm3VapgipEnkMer7qHyl6JnlJ3XbEog9/XZXzym3jDv1j97vpuWTTaD
 3Hf4p1epxL6bIRkQVw7nIy/EQe6Wl7yU8pc2RObtj/S685bB1cA/+nzU/
 eLPEZRQQhCfRgxxUEESlf6AFlqIE8ms9u1tUfzMoEHDyF049mXYSFzOQS
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M+H0pQHi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 02/13] ice: Prohibit rx
 mode change in switchdev mode
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Wednesday, May 24, 2023 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org;
> simon.horman@corigine.com; dan.carpenter@linaro.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 02/13] ice: Prohibit rx mode
> change in switchdev mode
> 
> Don't allow to change promisc mode in switchdev mode.
> When switchdev is configured, PF netdev is set to be a default VSI. This is
> needed for the slow-path to work correctly.
> All the unmatched packets will be directed to PF netdev.
> 
> It is possible that this setting might be overwritten by ndo_set_rx_mode.
> Prevent this by checking if switchdev is enabled in ice_set_rx_mode.
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
