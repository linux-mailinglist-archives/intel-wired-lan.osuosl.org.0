Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EC4667AC5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 17:28:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1C0560C11;
	Thu, 12 Jan 2023 16:28:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1C0560C11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673540894;
	bh=KTwFck4vX5mZpK3rnykpWRJRa19eyqJ8tB1BHAcprjw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Kp0NbFaoVHJyc8MHe+0w9hpg4yLj4azvncmY4WVTZu1mkai4G1ryd0NdDKvtPYLNQ
	 Pb1wcLFQ7YvZC+sn5yQUeWhjJR/WLqu4h6DwwzEf3pv+XzqgPpzQLyMT/8nsQQQ9tk
	 wAknQMol7pP5le3f8yOYr3iIbusdYnvjK27wXTlDJUxvrqjIoCDwgDqa8yv9LmSIuj
	 QEPvnI2k5YMX6LU8LlfYG357b4yUfS72Hfx43Lud2ZDZEdjGUduXk7xjfNnKM/KlIQ
	 eoO3n9jpQvu1rmaq648T4WS0M53WLn0rCkajKs23Fe/QUzai6h4QHF40qS3l2tr5RL
	 dv6yGd/EG9g3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2YkANLRgScyf; Thu, 12 Jan 2023 16:28:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92FC960AE3;
	Thu, 12 Jan 2023 16:28:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92FC960AE3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5EEEF1BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 13:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2E706405D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 13:54:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E706405D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MJ_uOjqcI8D8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 13:54:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB9CB404B4
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EB9CB404B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 13:54:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="303404922"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="303404922"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 05:54:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10587"; a="657807778"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="657807778"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 12 Jan 2023 05:54:04 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 05:54:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 05:54:03 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 05:54:03 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 05:54:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N244yJFCSa8ZyteUesh1W47fJfmZYbtpfTmCOKgQ3GS44I5uu1YbVz+9Kxtx+qSRIWyUlJi1cmK5nsFtD4EGKdelysRneUvZO7IVaJmKMJZTCo66Uxx2eHAiRIaOoAqJfVbFA2tvA0asmLWvQD+x/FDehYCWa1TxrtBm7QyRgRozsLDiCFwafbRVl9HEPeanNLBeqOT20eIGs9xLyjV4cw+zq+UndXCobQ1AObAQqD63ZDh6YQOHRAtsk8CbdH+aVoGHQeYvVf77ILf6OH9ODgdNatdOGr0sxcZpO+isG+9Qy1OVPetfcGiNNcPLzF3UzJ9pRfJt0KnCsoFMTlYO4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ELR6yagX0CgTitC6syOl+9ci16IdQsrw30YBYEClHZk=;
 b=ocpFGPm6cN4DNCojv9Ymt8zjjuqZQJBSI2FnMhObk2gFAfkl8nInwsoC0x1HYqHMHtmOgo5WpBwkCXgjIhXSX1TJNQHs6BNFXpThGPlWof5uBgW9Ei4RB8+OjsOu+AFvfovEI/8Y73iTGxl6G4uU6RCohMCModohzzoOpx6X4GLluoMxCA8dgEoGK2I24/4P0lA20tGi77vNdNWY1lSMgIHr1F8scZ8KN40kJVkgJw0oC20HxNlxqvMwqQXX7R6JxRjPFBCdQ3dOS1xgpRnQ3AmjkRwAkWroPo69BJM9KeVjMS2gc8NpZt09ad5N5cF2ZFVEEaJhebGeXsba4rmqTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) by
 DS7PR11MB6199.namprd11.prod.outlook.com (2603:10b6:8:99::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18; Thu, 12 Jan 2023 13:54:00 +0000
Received: from DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::f8b2:d559:b745:4a4b]) by DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::f8b2:d559:b745:4a4b%5]) with mapi id 15.20.6002.013; Thu, 12 Jan 2023
 13:54:00 +0000
From: "Rogalski, RafalX" <rafalx.rogalski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Maziarz, Kamil"
 <kamil.maziarz@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Ignore RDMA message on
 setup tc qdisc
Thread-Index: AQHZJcfhf3B6/D4M70O1toCJsTtJdK6aXqOAgABiJWA=
Date: Thu, 12 Jan 2023 13:54:00 +0000
Message-ID: <DM8PR11MB562405EC0E21760D2FC05E27E7FD9@DM8PR11MB5624.namprd11.prod.outlook.com>
References: <20230111142029.318092-1-kamil.maziarz@intel.com>
 <Y7+ypc+uffjS52Js@localhost.localdomain>
In-Reply-To: <Y7+ypc+uffjS52Js@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5624:EE_|DS7PR11MB6199:EE_
x-ms-office365-filtering-correlation-id: 59849116-e4b9-4087-b22d-08daf4a47567
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HO2wU0T6lins6r86I5GGewgx0fieiYJw7fRi9Ft2DiZcazJgulnL17s99mHQV2r5h4b037cxW5g9LE/vgs1QS/cm+8uITQW7Hfp+5opbxfWHnx+5OiLEXcOWhPnZL/KzKyM7LU79UKbmYqN9UW5KFkZIxUocjDAnJ+SGEcd5hiZYVbgO9Nxky7wn/qSkOSNvPdyQR8CBp+MwsghDrHfZS/iY1X/mtBzQzeIcvGpTndK9HrCE9rEnHVuv64v7o/qrx2w+yJLizHk0cug5E1VxlqC1P84TD92akWu5UFoqW2aF6BHhzAaSHeo094u0DrflsQLJT7C6gFE7iq281Jke5CXqCwCL6qZx8/y7HsWFv0McqCFThYlqOW8YicdUtEwLImxkFBy+xbqWCa85yv2FD+9gIjH+7TnGOMho7RQHyc27E1MtuBBktulZTopEaUyqpR6SaWpY0/EXvNeSzjybeO8gCDSE5JocGchpHmJjDdahBk2L1ha7UuDoiwVgaPLbjprDwc/V0uXQXHL4+3QiGvz6LoGqnEr4TsWAeDS2Rhk3Xc9lk39BTE3kkGjO7KD41IFNz2H9FanRcz8haeR5/mAc+tcp4K0SLoEbvdDNMIoxOLwm1j38bY1PWKeT01EzBomRW623eCYsUKfEBdCQIxydvRm1/VO7lAQUaNVx2OIR4EvW1dvSg88iIcvz+TFBKMz6LzMUQ8w+khqeE/Mhxf04AUb1r6EmdFGjJVoV3cI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(136003)(376002)(346002)(451199015)(6506007)(15650500001)(2906002)(71200400001)(7696005)(478600001)(186003)(26005)(9686003)(966005)(66476007)(66556008)(4326008)(76116006)(66946007)(64756008)(8676002)(316002)(66446008)(41300700001)(55016003)(33656002)(38100700002)(5660300002)(110136005)(122000001)(52536014)(82960400001)(6636002)(8936002)(83380400001)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?u+PTbt5/LNbP94dLvb2jpMNFMfabkel6MPdjSVV4Gq1xszFySUHaE9glxgSm?=
 =?us-ascii?Q?bYcFbn+7cmh3lN0IwUKHIc6Njk7ZcuPu2YrlAGuCOqC2soVBdpSE5Dx1eyq+?=
 =?us-ascii?Q?bzDKd1upYn2rb8QYO+knQHBpEhUsNEE8E9mzF0by4XxmFTSEbamXZTkHChAq?=
 =?us-ascii?Q?xB7yr7lqg/5TNZb6UPCFIt91zuCg28Ht/nsjymRcMWqyLmGyVaUGLaJOIwOM?=
 =?us-ascii?Q?Fdr3akteQFB0kO7HhlN9Jg04oUBKgBnlh0cPeDUFL8QxycWlVuS9VDvKSsJR?=
 =?us-ascii?Q?r8qyH7zVDgpognUpDPwwko9ZBlcZj4KMqvBDhrioDOYwhUHp7w68NOY5EJAm?=
 =?us-ascii?Q?g8rTHwnTVvzqdj3SMYJul5IND5YHILcPpfHzYFHajmB4sLVM6MQKfqjOql0a?=
 =?us-ascii?Q?7psjV4HFzN36x+Yg/uUasp1kVbxs2WibpjxH8M9MIoVF6902XhjesaqJ8l89?=
 =?us-ascii?Q?uiT8o+2RR4rfVaCSxIQXjoRu6mVF3GIwIOsyAtGlvOPQOLqEaE8Db5NPiSqT?=
 =?us-ascii?Q?PpU0/vM1XO88nlwrB8iAXPw7cCmU/IeWRIteqSrut9gChU98nRxc5wTmyG+N?=
 =?us-ascii?Q?OYUdY1NMN+qmPn/wWWdYKXbWGo00ovD1nwfc96sdDs3EU5ZOEP0IH8lzN03e?=
 =?us-ascii?Q?F+5GR9CSMxCSB678DyHPOAJ/wot1Do9mQr8M3f382YzfuVFIuhBBbMtzxSju?=
 =?us-ascii?Q?ZZlOHgKlNpK7cCN0cONvQoFdc3nAiD26AiXpxczBxien2u4Mha3yLDG04DTL?=
 =?us-ascii?Q?SVN7OQm+n6aexymmuygQDgH8AaaMDGFl5y6id0QG3KOXCrNHOCgdRfoGGhHf?=
 =?us-ascii?Q?a+REv6dOAYOkZ9Jtr4CLpvVoJTIgxGBxvGskJUSrhUgc9bV+BYrXNnbaEFB1?=
 =?us-ascii?Q?8dxJjIvb8hS3WlLDyWpLKjQSdG0WZdimQ8YyBAjffxzG4J+WQLFWZfrGGFXg?=
 =?us-ascii?Q?saBPbyePc76EnAORqqSrI0/AlFI+vocvnzqReYZDIMsdonjPGCNMllbSUY4E?=
 =?us-ascii?Q?4icHm8N+WcYZkU9Dz5n9KEWr7DOhTHIJRbO28+froi6WqTlB6eDs5thwYSIW?=
 =?us-ascii?Q?Hb+VLTbpQNXVA/TZSOZQHLNsSzXRDa+ZeolY07LYarvmE3zV234sCiNFYcRh?=
 =?us-ascii?Q?iH26Y9zZdKBJnQldxfEkOd4Pp2nk7uW30mzWKnbC2bHPh5VchuxColymlvjL?=
 =?us-ascii?Q?tus83SRxl8cje5mC3fRbs72BqEX0HgBJf6Na2syPElx2B0wW5LvoSRmHwtyQ?=
 =?us-ascii?Q?UwHwxxya+acQ4dQgM621rj5QrIxFLjLTGL9SiAmVm/oMfaQeM7hUHNmpeTW1?=
 =?us-ascii?Q?wQ3b6sa1aDoiXhjQ+6hBV0OhrKMS6IZTDqUbcqkGsXiBhSQlsyVwTgzzBTnI?=
 =?us-ascii?Q?2nyfi//hNoODvaXAwv1oc8lsujhxqPZfslBxp0K8LOLYB2fmhZgOtQhSgL76?=
 =?us-ascii?Q?t7u0no3tyRbrrsynSBkXcswiedVsvPuudAOjB51kDCxnJfbiqCCaNuq8+VtA?=
 =?us-ascii?Q?AoIw25hk05Q53Cl0SO8DAHeghlILgy7xveozti7zoeJHmTVOgTRdrpfAc1Kw?=
 =?us-ascii?Q?6lmqCgJQOXc8wP0VAmbR1tf6WAup/F31AtR8kjdEqpFE2qY5yjjMoEmwtVSA?=
 =?us-ascii?Q?TQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59849116-e4b9-4087-b22d-08daf4a47567
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2023 13:54:00.7420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 56ssh9qk9dPRs6ci2SUNLjm2dZRI/A6ogcl1QuYvl/aeTnVHyDWWM1v4/JIXdTH5f7+h1IZxbw4e1fO4VeWiX0CN4TpczaTgsAFDmEsGuG0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6199
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 12 Jan 2023 16:28:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673531646; x=1705067646;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=yohNSrldbOPWgxpxWEglsj+Xa3cpTflcnTKacahHoGM=;
 b=iNYll+wfZ7ATEHgnJxiufM2IBfiIIYEwC9THsTFFDDwniHBp1ansTgzC
 mqIrgSfrzlgUB5wU71jDiyUsS+fX9OJGlb8yncKtejRJ4jqAmsU7LWx6d
 tRikldKxD8iy7MQhleQ2a/4tspuZZlE4qjDOOOUrAujmmVjDjlx9Ficse
 PDwNr06inXaSPOXuL03jxc12iDsmxZNu3mw6l4/BLdm76vC5euR2Gz/k5
 s5SxFN2/R/w1+uAdOHRI3v59n7E3H8mjjdd22YMU9BGOCQWmuUfcENY7o
 8i208Obzt+hxYajS9qy5BlIT+EcBGyqIuXCyO9DO92r2Swz0Bc81sE3vM
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iNYll+wf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Ignore RDMA message on
 setup tc qdisc
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com> 
>Sent: Thursday, January 12, 2023 8:12 AM
>To: Maziarz, Kamil <kamil.maziarz@intel.com>
>Cc: intel-wired-lan@lists.osuosl.org; Rogalski, RafalX <rafalx.rogalski@intel.com>
>Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Ignore RDMA message on setup tc qdisc
>
>On Wed, Jan 11, 2023 at 03:20:29PM +0100, Kamil Maziarz wrote:
>> From: Rafal Rogalski <rafalx.rogalski@intel.com>
>> 
>> Commit f70b9d5f4426 ("ice: check for a leaf node presence") prevents 
>> removal of VSI with leaf nodes. This is an expectation of driver 
>> action induced by FW requirements. However, this caused RDMA scheduler 
>> config removal to fail every time a qdisc was added or deleted.
>> 
>> Fix this by ignoring errors from RDMA configuration removal when qdisc 
>> are being reconfigured.
>> 
>> Fixes: ff7e93219442 ("ice: Fix failure to re-add LAN/RDMA Tx queues")
>> Signed-off-by: Rafal Rogalski <rafalx.rogalski@intel.com>
>> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
>> ---
>Thanks for changes. It is a good practise to include changelog here.
>Something like:
>v1 --> v2:
> - check for -EBUSY etc.
> ---
>
> Is Your patch rebased on dev-queue? I am pretty sure that  ice_vsi_rebuild looks different on current dev-queue, please check  that.
>
Thank you for vigilance. Yes, my changes are pushed at the top of dev-queue branch to the net-queue repository.

>>  drivers/net/ethernet/intel/ice/ice.h      | 1 +
>>  drivers/net/ethernet/intel/ice/ice_lib.c  | 2 +-  
>> drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
>>  3 files changed, 5 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice.h 
>> b/drivers/net/ethernet/intel/ice/ice.h
>> index 2f0b604abc5e..b572d07bc126 100644
>> --- a/drivers/net/ethernet/intel/ice/ice.h
>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>> @@ -306,6 +306,7 @@ enum ice_pf_state {
>>  	ICE_PHY_INIT_COMPLETE,
>>  	ICE_FD_VF_FLUSH_CTX,		/* set at FD Rx IRQ or timeout */
>>  	ICE_AUX_ERR_PENDING,
>> +	ICE_SETUP_TC_QDISC,
>>  	ICE_STATE_NBITS		/* must be last */
>>  };
>>  
>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c 
>> b/drivers/net/ethernet/intel/ice/ice_lib.c
>> index 22bcb414546a..0ee3acbea108 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>> @@ -3448,7 +3448,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool 
>> init_vsi)
>>  
>>  	ice_rm_vsi_lan_cfg(vsi->port_info, vsi->idx);
>>  	ret = ice_rm_vsi_rdma_cfg(vsi->port_info, vsi->idx);
>> -	if (ret)
>> +	if (ret && !(test_bit(ICE_SETUP_TC_QDISC, pf->state) && ret == 
>> +-EBUSY))
>It is fine for me in current state, but do we really need to do this check only in setting TC qdisc? Doesn't the same thing happen when the number of queues is changed from ethtool? (maybe it is not because the changes is blocked when RDMA is active). Maybe whole
>ice_setup_tc_mqprio_qdisc() should return -EBOUSY or inval if RDMA is active? Is it valid to a new qdisc when RDMA is active?
>
You are right about ethtool. However, I'm not sure if we should ignore -EBOUSY for every other scenario.

>>  		dev_err(ice_pf_to_dev(vsi->back), "Failed to remove RDMA scheduler config for VSI %u, err %d\n",
>>  			vsi->vsi_num, ret);
>>  	ice_vsi_free_q_vectors(vsi);
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c 
>> b/drivers/net/ethernet/intel/ice/ice_main.c
>> index a9a7f8b52140..5ff137645f08 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -8706,6 +8706,7 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
>>  	cur_txq = vsi->num_txq;
>>  	cur_rxq = vsi->num_rxq;
>>  
>> +	set_bit(ICE_SETUP_TC_QDISC, pf->state);
>>  	/* proceed with rebuild main VSI using correct number of queues */
>>  	ret = ice_vsi_rebuild(vsi, false);
>>  	if (ret) {
>> @@ -8716,9 +8717,11 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
>>  		clear_bit(ICE_RESET_FAILED, pf->state);
>>  		if (ice_vsi_rebuild(vsi, false)) {
>>  			dev_err(dev, "Rebuild of main VSI failed again\n");
>> +			clear_bit(ICE_SETUP_TC_QDISC, pf->state);
>>  			return ret;
>>  		}
>>  	}
>> +	clear_bit(ICE_SETUP_TC_QDISC, pf->state);
>>  
>>  	vsi->all_numtc = num_tcf;
>>  	vsi->all_enatc = ena_tc_qdisc;
>> --
>> 2.31.1
>> 
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu ustawy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w transakcjach handlowych.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
