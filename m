Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EEF5EEBD6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Sep 2022 04:35:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B6534197E;
	Thu, 29 Sep 2022 02:35:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B6534197E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664418942;
	bh=0AocHcQuiWuJElyxMnWm/8TF6I0v1m5HWO9o/sbMEJM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=x2T04VK3Tuaox4PJmTNtnPxZEDCtdu+/VqAKCYzKC5pT9n7i0uTGKb4ZRaf13C0+g
	 jlz7jGKagSf68RkH6Y1fQgkbyI5dlWhxErcUBQyh8nX02apxr3JKFqsEu2h4rRcT+d
	 8+J0UvcHMcrs9EvUdscShDVswi1uHwWRXn7fByV2ymSq9hBykNI0Aa7vfSgZiRDHIv
	 5uWCQjpY/RGKV7ezCEnNdaPyT8MjwcqlCCedhuX9zaE9nl8WeAXFlmIaXkITrc39Ra
	 DIa+GMmg5wsmGgXyPy41eKQRa4eL3Uq9QU5h5WszgaVqPkL4DEy0OmNFVTwKrANxnS
	 VB8TUZAZIa0fw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n16w1zG5tR1O; Thu, 29 Sep 2022 02:35:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1348A4184A;
	Thu, 29 Sep 2022 02:35:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1348A4184A
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 75B191BF591
 for <intel-wired-lan@osuosl.org>; Thu, 29 Sep 2022 02:35:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4F75583E65
 for <intel-wired-lan@osuosl.org>; Thu, 29 Sep 2022 02:35:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F75583E65
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VHUluTTHi22j for <intel-wired-lan@osuosl.org>;
 Thu, 29 Sep 2022 02:35:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6710D83E64
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6710D83E64
 for <intel-wired-lan@osuosl.org>; Thu, 29 Sep 2022 02:35:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="284909235"
X-IronPort-AV: E=Sophos;i="5.93,353,1654585200"; d="scan'208";a="284909235"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 19:35:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="573281496"
X-IronPort-AV: E=Sophos;i="5.93,353,1654585200"; d="scan'208";a="573281496"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 28 Sep 2022 19:35:33 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 28 Sep 2022 19:35:33 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 28 Sep 2022 19:35:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 28 Sep 2022 19:35:32 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 28 Sep 2022 19:35:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A9mJTo+SEvJ24+eAtKzgQHVd/5O7E6lUBfoVFq1gvZA6907qZVu+OBDmXbVU6qqIzG6KeYEpe4WcBr7k48YwHDCsw40TnlGjEv9qTJp4ivPl3jicmuZLB5uqURWAxeq2ohIW8uUwCYGy4kVybwwtY+HKdbWDNt0NdmvDNZeda85kBeBg9bUQBkVLZVOWVUmfg844UeRX+3/rDIYg3+UGmLDtTrY5u1BTaRTgwD0StIcgMNLFTufolP5pnQUFT/2Pi8gV5c4e2L8c1+a1Y7STifCdN7mRj4h9s9B/DiStcTv+JHwimSRqvAMyV0BLJrcq1i7SdZ/+QcjR+c7xineUQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oqKSxhIOHnyc47gWDPWCI7ztv9YZNNJdIQvRPIVZdCk=;
 b=fX7SZTbbfWP8uMew4nMkK86PCBrLT4zy3ZpUZimDSN3W9gDlMPiUJzMCAuhs16ywHXzBLmqkqoFZvU4wU+sA1Pt7Uy9aIn+bsi7U2OzRVzbkof8CHbR/+iGtyn7l8Kt8W+/OUGZ+mV7AppFYfJ+5drAJExTOjKBLXN5OotJtb3Fmwn0gesZM1zNgjvhEklQnLvXREdtWbpC3lB2u1KzRw0221b+08v8d7HzQVdiTbViPJfBYAo7UqlAA3quuQbSXuf0raPpqIRuLUBtf1Xe0ErNG8mu2GEiq31CIdHW1N4I9lO7uyAqx3zpRcg2JzueA+QCSUUszIvxn1t2wnQZ5SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by BL1PR11MB5398.namprd11.prod.outlook.com (2603:10b6:208:31c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.19; Thu, 29 Sep
 2022 02:35:30 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::7c03:1c40:3ea3:7b42]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::7c03:1c40:3ea3:7b42%5]) with mapi id 15.20.5654.026; Thu, 29 Sep 2022
 02:35:30 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH v1 0/4] Add support for DMA timestamp for non-PTP packets
Thread-Index: AQHY0nIwdgyUAXnuBEqr/9DPT40VFK3z+DeAgAG3sRA=
Date: Thu, 29 Sep 2022 02:35:29 +0000
Message-ID: <SJ1PR11MB6180CAE122C465AB7CB58B1BB8579@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20220927130656.32567-1-muhammad.husaini.zulkifli@intel.com>
 <20220927170919.3a1dbcc3@kernel.org>
In-Reply-To: <20220927170919.3a1dbcc3@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|BL1PR11MB5398:EE_
x-ms-office365-filtering-correlation-id: 8e131834-7b33-4f85-e19e-08daa1c3468a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZUmOLC1riAIYURq3bNjUwXGWVh3Qj9U0JTH2dxvVN5YDbAYMatekcfjWL48w4UZ98M5qbSK+K3i/yNS86149bclwUTkpiFyewddwjsSy6zBvWxn1nsAHDwCZKbHZWj8W3XiHjLDYnS691b6GHP4MIA41+F7mZJXXzmuoBZHnXid0frzPO3KV9EcAXpjJfzP3ZrgFSO3wcrLJ3zI9O1bzxP3JB8my1BSPgfviAmB6ydFHvaUtWvL6Ex1bIXL1elDWWNWZ+y4/w1J+25gCcjb/B90DhUtCraLX8LECrbFwVxzxeOVRrDmgN4PdWODPYkpAShsx3zRhe4lnibANqxzFeSYxuzxsXxNOiuGq4a6/KF10O6UOY5eqktJWWht8/9fXE+XhT+j1tiXiiily7i2nqiycc6CgqX/gyaCP8gAr/oz9fiGNuHaopvuPSPYg9vkWX0OR+6xYgJkOT3RzZVZBqr6TvPDCFx5rS35lM16ao+MBhpiYorjaMbmdgGw9G04cO0jRFTCK+udKxnIyxgc2cy+6UVOqMJX5abBeSHG0W9VRMssX7fpNQiFe2m9wj6pr0fiC/ixt1wcqe+9vf8Ae9igkjNv6wqX8qRACB3KVmghF/UOXapbKKFnJXdDxdiAaPup2RCx8BJ9Ue0fRxNB5vIfV+sbeao3+bbFS3AuhCJ4E2SwQLDwOB7WkpKOBaNBlIxZTAAnPfxCJw2UXEL0G6O6Ff7J2t1vTyWJdAwFJNo0Veb/b7xzyVPC6AlzMiYCsRWp2LSv6rtUelFFenAjhtg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(39860400002)(136003)(376002)(396003)(451199015)(86362001)(55016003)(71200400001)(54906003)(478600001)(6916009)(316002)(9686003)(26005)(53546011)(4326008)(122000001)(5660300002)(6506007)(82960400001)(2906002)(8936002)(52536014)(7696005)(41300700001)(38070700005)(38100700002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(8676002)(33656002)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jOMf34zFfGN4BRtlU3tIjM82K+ZtzLCtrUCRctgOIclHxZ8lHyShaDHkZPrg?=
 =?us-ascii?Q?oJ5LSel+8hPEaWOXQNK4labqKIylJc98ukM/sezNKM81d403ptWlUR1p3EvT?=
 =?us-ascii?Q?0JA9wTxO2G+CytkI2/pvvfi4YK08sqK/y9MdwPQghdIu8B4IafCP5JBbUSc/?=
 =?us-ascii?Q?1IbAHwxZeKpFHZbFCBbtNLNXlKDIzEdGwODj6zMSbiPrtwrPu816TaDStb3h?=
 =?us-ascii?Q?j6sicZk5RHfaWTcJcVIiXS7+xoOdMypxGfVRk57SwYBMiBiPFAdRYLm+///V?=
 =?us-ascii?Q?ecRLagYStfGx3ec0jh6X1RVTaRVnjB4nY9gQk90Jcd0sMdJlrjhAR0du47YW?=
 =?us-ascii?Q?bwDHDpq0PcMdkoROQF0hJlbZJRlMrelis87zQTwAokuCtHbsMb87i0ZFZIte?=
 =?us-ascii?Q?jGCeeMT48h0uUiOfIL6vFbavaknjBk+9u6ZlLL2WzWpXK/33ZEAdMuAndfdZ?=
 =?us-ascii?Q?+HT6EKEWsPHsA2OTH2gnmqLomWtJpLWwBfDJbDlEot2Bb4tOI0Z5jFWqOldG?=
 =?us-ascii?Q?zkDeLEnJhluX0rAvaO+0EgZBYG7DfkPfCtkgzdwbbjqelpPmhgGWCJGVwJLZ?=
 =?us-ascii?Q?CyL4uSE1LOEXtl0OWDYXj9PPwwE7sV5EdRe5HrADoOP5VCSCgNQ9Q6WcdU5c?=
 =?us-ascii?Q?9p9S+jdanitLue7Wr2vcRYeFpMju/Vnth8sbP7GlKt/68sEqYXKa3/ufu/Bo?=
 =?us-ascii?Q?GJlEsjZ5FVFopQC1IYvq37Eusz4j/G9MpXB5zet35C2/fql4LRK69WeBXLI7?=
 =?us-ascii?Q?CztCMnYmhUTWT1DZVe4uTa4wI8Jy4INEsd13s6dd3gBv0iD0sVkUwR5+nfJ+?=
 =?us-ascii?Q?J4izsajQnaHrBbBwZjlGJzaJ8R20Jss9EqTH90V0YVd84HHeGMoTjoKkV3N0?=
 =?us-ascii?Q?pIFO42Sk1n5kgFBpmGeyEoDM/c/SD03HE8HIupitavw35UMBHNQv2I4GdEJX?=
 =?us-ascii?Q?YZs2ifrxjvyuCH4JnHDhIWVJLb2ez/EF13y/WJssl7vGf5ImpsFkvj1ce0+/?=
 =?us-ascii?Q?Rt+P1+y8EfG6Hb1c8R+Ntx+fpunj/9+YjAT7EakSzF+p/pMdGiE6eF51nTLQ?=
 =?us-ascii?Q?vvDxEvKw5JSMVyGnp1DunwHWWfLVr6k6AK3V6vWSk6ZvYJdEmByeCyCYgeI0?=
 =?us-ascii?Q?dX7NsF590+tj2ClWyVF3dLS/E3xRrnTOOBZk8n45qk/LYl/yuLV4RVdoaDB+?=
 =?us-ascii?Q?fkRyurH29NzKavGXu55txBNBoGZlaDGLVT7VYsUReKu9tKxm9gp9K0gawILt?=
 =?us-ascii?Q?4CG0IGRmxd5tCZmTjCCEgQ7Jwa99LaKR7AiSAbyZwAUFPSB03HAy6GZqjAuG?=
 =?us-ascii?Q?zO5WmK4lkIZ0Zn6rJktjvQUp2yYosAWSaTDO5WMxddmdTqG8fHN2x+Lm3EQ4?=
 =?us-ascii?Q?1tOSBZLsxjHAL0au8ZnGDQVaVRffUp9UzfA3sfLdsZJRQ4o0kR4nL4dl7bDI?=
 =?us-ascii?Q?G5fhosoxVKp5SZ8afAWqgRJCaTrX3pG9A1osyPqXB3DN5VCJmhG54n3ZZIJp?=
 =?us-ascii?Q?hKbi5laDkxZdTSI/1pCIcB7KZjJ4AKvbHuI6v7EER+CkbJAsrog0PJRfqHsk?=
 =?us-ascii?Q?CDgV8pI5vRoaHJwnjs2bpQ1GENxUCHtAgOYs/JQBcDZ+s8kMIxPNFMGYTZOI?=
 =?us-ascii?Q?P83TszNtkaUUWpEDjIEaIMI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e131834-7b33-4f85-e19e-08daa1c3468a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2022 02:35:30.0079 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VaoAdoqXub5DCCd38LWDdnF9VjX/tg0fLvtZsk46JZ8KMVyXzCeVX10WMXFlld+Qha+Ia9AOJL9icq/JzO1VUT060D6cteq9aR8emb0hkl3KSjViOXtq3GYqVwbCiLkc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5398
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664418934; x=1695954934;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oqKSxhIOHnyc47gWDPWCI7ztv9YZNNJdIQvRPIVZdCk=;
 b=el5Qv2oMIAipzpcXXIDDk9U4B1wcE1AHICpkcTRKPCR/NJ+ayqII9pMx
 nGczsce4+eBEZjha1ZV+vAd1Nkc6ZKzgulfPDuWSeD77ws/hmDfOS+U4K
 GUDNMr8AdleFB5mP9rnUjMvZfRglf2HAncPel71AgSzjFme2QjTJ3zOAH
 MRCvrIE8oA7LEGckSYY/A9HrvwBHBVPZ84FJeh8JQPXW5eyqkRG5nVsvf
 WSnqWDvbWj/023FwjBwYkBoe04jl7l81jTi/Ci4R8UGfKZGOSbFmm8Bau
 MeXLk//r674PF2cJaSGcenqojLaHvYdI5Cj5SwXdpZdSCyDKgCWUHKaaG
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=el5Qv2oM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 0/4] Add support for DMA timestamp
 for non-PTP packets
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "Ahmad Tarmizi,
 Noor Azura" <noor.azura.ahmad.tarmizi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jakub,

Thanks for reviewing. 
Please see my reply in-line.

> -----Original Message-----
> From: Jakub Kicinski <kuba@kernel.org>
> Sent: Wednesday, 28 September, 2022 8:09 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
> Cc: intel-wired-lan@osuosl.org; netdev@vger.kernel.org;
> davem@davemloft.net; edumazet@google.com; Gomes, Vinicius
> <vinicius.gomes@intel.com>; Gunasekaran, Aravindhan
> <aravindhan.gunasekaran@intel.com>; Ahmad Tarmizi, Noor Azura
> <noor.azura.ahmad.tarmizi@intel.com>; Richard Cochran
> <richardcochran@gmail.com>
> Subject: Re: [PATCH v1 0/4] Add support for DMA timestamp for non-PTP
> packets
> 
> On Tue, 27 Sep 2022 21:06:52 +0800 Muhammad Husaini Zulkifli wrote:
> > The HW TX timestamps created by the NIC via socket options can be
> > requested using the current network timestamps generation capability
> > of SOF_TIMESTAMPING_TX_HARDWARE. The most common users of this
> socket
> > flag is PTP, however other packet applications that require tx
> > timestamps might also ask for it.
> >
> > The problem is that, when there is a lot of traffic, there is a high
> > chance that the timestamps for a PTP packet will be lost if both PTP
> > and Non-PTP packets use the same SOF TIMESTAMPING TX HARDWARE
> causing the tx timeout.
> >
> > DMA timestamps through socket options are not currently available to
> > the user. Because if the user wants to, they can configure the
> > hwtstamp config option to use the new introduced DMA Time Stamp flag
> > through the setsockopt().
> >
> > With these additional socket options, users can continue to utilise HW
> > timestamps for PTP while specifying non-PTP packets to use DMA
> > timestamps if the NIC can support them.
> >
> > Any socket application can be use to verify this.
> > TSN Ref SW application is been used for testing by changing as below:
> 
> Very glad to see this being worked on!
> 
> High level tho, are we assuming that the existing HW timestamps are always
> PTP-quality, i.e. captured when SFD crosses the RS layer, or whatnot? I'm
> afraid some NICs already report PCI stamps as the HW ones.

Yes. HW timestamps always can be assume equivalent to PTP quality.
Could you provide additional information regarding SFD crosses the RS layer?
According to what I observed, The HW Timestamps will be requested if the application side 
specifies tx type = HWTSTAMP TX ON and timestamping flags = SOF TIMESTAMPING TX HARDWARE.
So it depends on how the application used it.

> So the existing HW stamps are conceptually of "any" type, if we want to be
> 100% sure NIC actually stamps at the PHY we'd need another tx_type to
> express that.

Yes, you're right. Are you suggesting that we add a new tx_type to specify
Only MAC/PHY timestamp ? Ex. HWTSTAMP_TX_PHY/MAC_ON.
Sorry about the naming here. Just so you know, the DMA timestamp does not
quite match the PTP's level timestamping. The DMA timestamp will be capture when
DMA request to fetch the data from the memory. 

> 
> Same story on the Rx - what do you plan to do there? We'll need to configure
> the filters per type, but that's likely to mean two new filters, because the
> current one gives no guarantee.

Current I225 HW only allow to retrieve the dma time for TX packets only. 
So as of now based on our HW, on RX side we just requesting rx filter to timestamps any incoming packets.
We always allocating additional bytes in the packet buffer for the receive packets for timestamp. 
It is a 1588 PTP level kind of timestamping accuracy here.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
