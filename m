Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE06672545B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 08:34:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5696681321;
	Wed,  7 Jun 2023 06:34:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5696681321
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686119693;
	bh=RKGSGcYRGVKqSvqPLM8zkig0efeYdz+Cpl9biaUBBr0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MHcFIoCbUVhT/cwESMfyBepupPC7p2HVkHZ4HRQUEDKlVeS/D5s4JZUP0+7l6/z2Q
	 zt8Wtg2xOVjrgfp3Rqy7vh3BW+448fJ47Xe4t8UXlmc02UBoRwoYTmbx8SQ3lVJzMt
	 Iq2QAUQawIAdX6wX/BuIom/bj9MiQHx1BJ9zMYS5WbmqTl9rAT9N93GTpsEvw3S4Xp
	 1+UnJ3CogEvrO3YAPs7KEGNjNP/Gs21gr5tkYbWxz9kbBX1OvaBkExjGI3bn/UFwKG
	 nDwMQnemfaPCV6sf0LV6ODIceSBoP6mtyDu39b7cCNtvg+kGlTqeg/jPnK1nkTYubM
	 CF1jNWa8Om+tw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ML3M9wrO1aRB; Wed,  7 Jun 2023 06:34:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 894CC813C4;
	Wed,  7 Jun 2023 06:34:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 894CC813C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 241471BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:34:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ED69540981
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:34:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED69540981
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bSk2c08Si_ew for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 06:34:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC70040972
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC70040972
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:34:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="337262958"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="337262958"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 23:34:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="833535850"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="833535850"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 06 Jun 2023 23:34:41 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 23:34:42 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 23:34:41 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 23:34:41 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 23:34:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oHMT5DIB72o5UhXow2iaIuBTOz8x8GR81oKYXQC+5X8goBVYWjDBVpuWr7+OlyR/fYWvDc0viUQ3s0AOVFyh8h7HGIl3+0750Pejf5p9706fOogIp3iprN+VyxA8rLFwDx1BJjG5jMjloc/rTGx/CIZMSXrDLYwnNBIX3oHwcZgPc6xh+dLD/XqvE+6hH4I+4G/TpHN7P/SKao936aiEx0ar9e+i3qeKg80OPKH3z+/a8KnJK9eChWbS9cagrSCKjptRKPuFtFguLxbwKamosXajVF5YQnI+kAWt+GQ5l3yQ2E4EjDoO1dtmugKepb3K+FTGVyApHcMddgiK/UClVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mB9MpUIxLF4uG8B/fOz9kTYjgaCIhCPg3tirmeyy1a8=;
 b=XCwZCkESnorkjQuk/T/F/tQZkVPqSfRSBDuHgDhGKRNGY4YUYcJBknj+BQNt0T19sUL6USigYobleS46j0ypNrxMc+B2OTu6DgpkJhOkBh9JlnMQAhaEDGRhL05QT9tAUWonLGPRCqc63Rq9bGD/fGjRKo4H0c3KSFKxBUTcCH+XIrB51LkDkfeCdyL20XG/FCO6Pj9SDBISx2gdm+WXIAWv0YzM5NQxOVRxAk7lvgW4Xyqsq6Mli+QM0wLVo7yRJrHs2x3NKP3E24HMCYfasU9GYhhFaLfCkRzCU/iIMTSN0qwJiqkv1Kl/HCDLW+kAH9GpF3lPcBwaubgQoj5fhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH0PR11MB4822.namprd11.prod.outlook.com (2603:10b6:510:39::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Wed, 7 Jun
 2023 06:34:39 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 06:34:39 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 11/13] ice: implement
 bridge port vlan
Thread-Index: AQHZjjq/iGWC5zW3y0WLAGSN7cV4wq9+97DA
Date: Wed, 7 Jun 2023 06:34:39 +0000
Message-ID: <PH0PR11MB5013E2EDE68170B4FD859FA49653A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-12-wojciech.drewek@intel.com>
In-Reply-To: <20230524122121.15012-12-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH0PR11MB4822:EE_
x-ms-office365-filtering-correlation-id: 9e8d1d2d-fef9-4e62-39ba-08db6721451e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kfN+3Aoj8Z2LdrjvE8MWvW4I4y6SukWxz6jnY/ZKby8ME+md+UX44qrez2gaf5yXIuiz2TaEfT3mEwApgjdAjd+Oztl8tXhmHXDVmfVoiRKnZdPVlIJA/J/ph4fYGez5+y1HkqL0VZMT0YnL2OzVGFNm0c/rK4McJCz/7ciZL3xL4UH3xhRHQNU9hezbODnk8aVWGX+LyLil+qlIU8nZ/cS6v9lWcRO7VXrRE3xQ8wwW9NvzLAYec+E5/HTg+XrjySC1+OT1bRvOZu91QkWb5zZxdxUYCfdipsj3a3PLMKhxQS2oLyIfBeCuOt2Ks4OHt6RNvK7naRG6QiNuq92CjvrVPh1DCvksm2/KMwOkCra3fk19wsCG1SMH2KwhEphupK5cV2JQR63fjvARztPHRSuHRbIhN7yvq6lE3xksvbh4IJLeOxGY9fewVVDc75gUJNO1ol9LD64XRamlTGtKINgFIh9c2smwcmT54B9Hn4oJNXImrJtEHEII70U/pReOSWOuDRmJlifqqH362TrYNJe7R7fFvCEablrw39nyuDMCjCYhLG66D/Y3eky7OLNatvbGdPICXNemUxEWAst5W96iRaraf/VKzbukq+AysDUTAaDaB8EuDlYYL7txRKzs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(396003)(376002)(136003)(39860400002)(451199021)(55016003)(54906003)(7696005)(110136005)(478600001)(82960400001)(316002)(8676002)(8936002)(41300700001)(66446008)(76116006)(64756008)(38100700002)(66946007)(4326008)(66476007)(122000001)(66556008)(186003)(71200400001)(83380400001)(26005)(6506007)(53546011)(9686003)(86362001)(52536014)(5660300002)(38070700005)(2906002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?G11ug+OCJglHCZ0nTATxXCIILdSYMwweasOVTRBj++NBLy/xpk+6p5zubwJJ?=
 =?us-ascii?Q?nuxelexh+gKToXQxP8iH4aiHFk6ILbQliD8u9ODYgKITZC/U1mSctpwUPqqQ?=
 =?us-ascii?Q?19UMMf5IW3pS41c60jshhbj4X0mfwZdnS0M9SjYF80sLcl2w63Ojk2sQsKZJ?=
 =?us-ascii?Q?wjyyRlAm3nSUnE6lN8iZuBo6AJ7is+etWBk2vfuQSoHkBcSkV+MuiXDP4E84?=
 =?us-ascii?Q?qyf3ZEu+0Z8mf0gIv4Ev4tjTtibetW7sKHrhHhCguDtuk8N7psErr727lbrF?=
 =?us-ascii?Q?AwI6FbJiC+gzgPSjpZzzWIu4vZ8+cA0dqt9I3S/bavGFIeM/RTXl8QIx7HDH?=
 =?us-ascii?Q?dbPhiAPZDWBGyb7a6dEtGri64cOXdTCzLvJv6eqPK/SWtpj2k+l5x9muq8GL?=
 =?us-ascii?Q?+sv54aWAV2amkgFSCvzdHqr4KG6uYABTkF1DiLAWIpJpHavXyDKLlE9ORivr?=
 =?us-ascii?Q?KXjv8+nhtDjsdItvLsU7S91jSAs6zq0CVOPHdWn+DKBvxf1HVe3n1+QCaTAR?=
 =?us-ascii?Q?zSncvqo2GbzLTDmPcB7ow9Kpmg3BCYWI4eyw1/EvhFrQkK5L81fg6ALhqw/A?=
 =?us-ascii?Q?9NM8lFIf09VUZiQZ5Bpb/11Y8+dEJAPmkB8ZxywugIQpclMTd3swi+5Wka1A?=
 =?us-ascii?Q?sJ1XuAMM5lhmYvD6frJHgiuCUu0pIr9hjgAs/3vXRJDJLxZS5kuuRaod5fn9?=
 =?us-ascii?Q?YKD5vDvJEApnE1oUGHiDmG2qAEvhbCxnnVpDbT7hxDiiH+qJySXbO+IXkLtt?=
 =?us-ascii?Q?XZ5dtcEcsNTpZYRgbr/QcoRJRWURaXycWt9hRTdbQu0DB1u13DyRlWuZ0pfA?=
 =?us-ascii?Q?MGK2mBUfI4W71cCLffwafW4f6z4D4wJgtLxuS4SGHpZd9VP/P7qzH1VZsB4V?=
 =?us-ascii?Q?k92EI/TryjgGLIg+9tfTOe+blDKVanV42vgpCYVMm/+zmE2/mZzoqowvGcBz?=
 =?us-ascii?Q?E9bg1x0EmKudu38KG66Zjc8I7JWp7+0uAkrovuZ7Vpp9B/aMyl0VwivCofCd?=
 =?us-ascii?Q?HVAc5p5ZtQX0QtF6XA1pi1OPb4gW7HarbSUiF788goPr+sMLCEbSEcl3Agy0?=
 =?us-ascii?Q?A8GQmD+PjEcHu02nT49G8BIBfrpfflvp2BJkTDUJ/OR3S1gf1QUtMn+dryaB?=
 =?us-ascii?Q?R+4Ao9FbhjXaD+eZh0YTh/fPe9Ub9DvaBQw5MmUCiiav8juJ9WaNdpCFf50y?=
 =?us-ascii?Q?X3SmX+jmyM+jio3jSb1JSJJEy/J3YXX7jL1Zj4HNVgq77kp/Ey04o0sfcvUm?=
 =?us-ascii?Q?dQZqDDy1/Tz8Q6Y3KNcwR8LsYnkCUVU64UAHuSnXvBFNGtgwwrOfJJc/KMKS?=
 =?us-ascii?Q?iJ2EGq1MaIPcvtq8KvemsnCvKQeS+i7JVkffCJL7zjYDw5Z+9QyVSlKnKflP?=
 =?us-ascii?Q?+x7y5Zr7c6Px4Y124Vo6AcdT43ilCLoOMfEPca5Y15k3NxYATmaeh3QxgbU7?=
 =?us-ascii?Q?NvTv0h6egEH4Pfuvmqz+8onxuShvKv/G1AMrADzYcgOdaePb/LfiwcCsaIwL?=
 =?us-ascii?Q?xewDxHJdQCG7a3SFAPry9sZOvT3g8fXhL4FLUZvmkgD7zsnSmgfiqcvKFkrB?=
 =?us-ascii?Q?elywrQrWp7WRTWF41ilzkdwQaWP1WMkkfqr+5slOwaHGDUs8nKt2FFtfSPt8?=
 =?us-ascii?Q?7Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e8d1d2d-fef9-4e62-39ba-08db6721451e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2023 06:34:39.3659 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ey77Im2e3YoIjnOo4ITOM+Dcpbtar134IkwGE6vCeYUhpRvImYCR4m03LWXbCSlaxKM1D0cBTXcg51nZabdWLv10jwygGMKDCrpDlNtM7bs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4822
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686119684; x=1717655684;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nGHWHCXV9RE2/Uw92lINuISTjq9kbkTvZV3l3ejqSyo=;
 b=f1LTYqfzpr56dqvzdK7dMGHUboLCJOhgjGh2Xqm6RI40ju0BJ6drfe53
 dXizYOYZIARSbdeyUL1q/YECP0RbbTEJut7tue3NC1vmOTYMa3V0Lf7KT
 ru59t+3sBdo0TQKWj5Bqw2asZKXnNVYu2zn3pMs4BAe+zHXjrqgR8IOIm
 nXLpwgYiE9n7HRhENf/cfejv4cku10fl38p/P+LCzXVttpMZueI+Gqv7D
 a+B8JvgSNleKGt5KoJ+8mVx2waRZk8EVwcm4HA4VN5sRtMec0gHdMaI30
 L6PXIykmMuaUessveNM/Y2mt7VVIIXv/MNkpHwb2s/QamTpCMs/u/Rla4
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f1LTYqfz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 11/13] ice: implement
 bridge port vlan
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
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 11/13] ice: implement bridge
> port vlan
> 
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> Port VLAN in this case means push and pop VLAN action on specific vid.
> There are a few limitation in hardware:
> - push and pop can't be used separately
> - if port VLAN is used there can't be any trunk VLANs, because pop
>   action is done on all traffic received by VSI in port VLAN mode
> - port VLAN mode on uplink port isn't supported
> 
> Reflect these limitations in code using dev_info to inform the user about
> unsupported configuration.
> 
> In bridge mode there is a need to configure port vlan without resetting VFs.
> To do that implement ice_port_vlan_on/off() functions. They are only
> configuring correct vlan_ops to allow setting port vlan.
> 
> We also need to clear port vlan without resetting the VF which is not
> supported right now. Change it by implementing clear_port_vlan ops.
> As previous VLAN configuration isn't always the same, store current config
> while creating port vlan and restore it in clear function.
> 
> Configuration steps:
> - configure switchdev with bridge
> - #bridge vlan add dev eth0 vid 120 pvid untagged
> - #bridge vlan add dev eth1 vid 120 pvid untagged
> - ping from VF0 to VF1
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: minor code style changes, optimize port vlan ops initialization
>     in ice_port_vlan_on and ice_port_vlan_off, replace WARN_ON
>     with WARN_ON_ONCE
> v3: fix traffic typo in the commit message
> v4: fix mem leak in ice_eswitch_br_vlan_create
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   1 +
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   |  90 ++++++++-
>  .../net/ethernet/intel/ice/ice_eswitch_br.h   |   1 +
>  .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c  | 186 ++++++++++--------
>  .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.h  |   3 +
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c |  84 +++++++-
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.h |   8 +
>  .../net/ethernet/intel/ice/ice_vsi_vlan_ops.h |   1 +
>  8 files changed, 284 insertions(+), 90 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
