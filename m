Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E13B281EB7F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Dec 2023 03:18:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30B0260681;
	Wed, 27 Dec 2023 02:18:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30B0260681
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703643513;
	bh=Y414ltHxR5UPWACw6kt8E6SSoht1XgPsu1Mb01/Wsyg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fb2CrEPwm3gaI5l7koq/piCnA8dw+HZupuPZjgTWaEPVAoYD/mhBElJh0hEbUOnBF
	 ig35NY9CnX6k49rD+WqgcXTxP2e2UkMBKzEiKGK/KumE3zZvjHBTcyiUqsTu6CggL6
	 xOL5BpXGExZgR6Eeeq0XRqXLu62m0BrH9E77opWJ3hsLd4BYYiCwTcdyYxFwDVPz5X
	 jwz2E8knh+9jRJHqXQoyTDNwvtQC1R+9O52e7jSK0gFGEibJ9TQ0jNGWiatGVgi7Wi
	 QGi+lqyt1Z2JKTvprVubbacG3jrCOL0jJdL0YW50kg4lxkCc2C6PM0X/95K00akLBy
	 W+9+LbqZCXlZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3UI8Zboq3ZBx; Wed, 27 Dec 2023 02:18:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 135526068F;
	Wed, 27 Dec 2023 02:18:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 135526068F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9CE0F1BF681
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 02:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 71B56605B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 02:18:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71B56605B5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TMUb_2o_VqoS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Dec 2023 02:18:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B824D605A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 02:18:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B824D605A4
X-IronPort-AV: E=McAfee;i="6600,9927,10935"; a="396133132"
X-IronPort-AV: E=Sophos;i="6.04,307,1695711600"; d="scan'208";a="396133132"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Dec 2023 18:18:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10935"; a="868745655"
X-IronPort-AV: E=Sophos;i="6.04,307,1695711600"; d="scan'208";a="868745655"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Dec 2023 18:18:24 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Dec 2023 18:18:24 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Dec 2023 18:18:24 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Dec 2023 18:18:24 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Dec 2023 18:18:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uh6DGHSerXcuoL9oRUvHyZRHvyWIMzvLK7abPGASEzIKkP7mI6es/e8PIVakJ6c8Nfa0a1ESmJVc5uYyIYmcHdbLWNXvonA9gTvVsSag0QCVfJYnQmpORjAsnZ4+ZwUkB3Ri1SOJWsAx5gf+FF9P9FD/jMDGI1nVSBbVpmRlUEPdUDVjDOE29Gr/jI6EnjEU5J5Dxq2vq1s0NQR20XL3Is6XM7KoVF0Y7DrixdjSJFU0i3aDGvAyMxyEjK5eZZ4dVdyiwzJgyOMPaqnoIFpVwLLvP56wwXpKAR9s6ltlM02maYCOXtukxeQU9Kc/45xbR8KfC+r201KVzIUMpo2PWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y414ltHxR5UPWACw6kt8E6SSoht1XgPsu1Mb01/Wsyg=;
 b=f89eXIVIKLSRNUdfFVUTrO26Opk0T+s/ii2ClDq/r6zym3G7RqgrQouLb5fKPnRItrMtLNAVHWffg6cR48UsKwWpvrcouaJ1UehFoUTzpwKF78d9M2cpdiCTayKJiyODowYORSpCzVOHPjk74ubEf6GCezVUPc+YUeUwbzQr7bs92GPRi3a3dkoycw/HueeFXWd/XoG6lCtSVxGPqgn+Qn7hHD5KMx88uWMX2KyxNx9APKwXTNI4bFaPrA1ubpyhc5J9b4D+VMmRfxN53g7Q03DW1pIEFAJo/IWGV5+r7KEMmMKzRnWlRZLs9zCZLttSYwbN6jgXB292HvKg0qdhMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by LV2PR11MB6072.namprd11.prod.outlook.com (2603:10b6:408:176::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.27; Wed, 27 Dec
 2023 02:18:20 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7113.026; Wed, 27 Dec 2023
 02:18:19 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: Shut down VSI with
 "link-down-on-close" enabled
Thread-Index: AQHaL0Z7DVDTOLFdLUCZ5wMxKdFbdLC8dwfQ
Date: Wed, 27 Dec 2023 02:18:19 +0000
Message-ID: <BL0PR11MB3122A6C6C0575E1E86576183BD9FA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231215110157.296923-1-wojciech.drewek@intel.com>
 <20231215110157.296923-3-wojciech.drewek@intel.com>
In-Reply-To: <20231215110157.296923-3-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|LV2PR11MB6072:EE_
x-ms-office365-filtering-correlation-id: 0072c260-4aa9-4996-a015-08dc06821815
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l1hetiUCi2846s5hOzF05vdXuEz248RhBZAvF/KD0lBHNh5BJKf1hVQuoG7MCO7IqHqiuWCa2gI+EPGdsl7M4Nespkcp+37OiigKtjetw5HyoWEw3tVUVf0SvcswOWrzzikILrGULU/eC/VzJE0sBRyrvTf3yFP7h8aTIZrmm27m7CcFn8l5VqqP0Eq2u+yilu5iNiS30ZB4fvLDUi+LCMqexHT/h/WF5kMDWhUThUq/uKy3N32xJlYHPggnooYwhJOKyQfyRzROdZ3MMFzGi+i13jdRseCfl5JfKb581WcxQmrlHM0ZgYjOLCzlwr/Q/b8WDD1LL0YF3y52VU03ORbnZ9xOPLLGiJsEUo20bATavOriSe9Y7wTHd22DVHrUZd+UMq5n+w/nz682ZeY8NMKOLemoYOzkEI5MR/LmpDv1dtKM7w1s8TbkkWayueUiczLduhvv2+8Q/6McI8kTaXT1k4JjuD+nSLoZ8nNTCYDax5eYoyZH/kqEZXQSXQtfpnHvGeSwmhIOcDD+1MGMdVucCVFwNhX0H4srgLGmi25dcbCUZy/joSFnjt+35EcyRhC46TR73dnTZrJJqWg0ngD1PYgbTef+Lu+9Icxfr7tqMHZ1UoRUctLJP3bgKs0h
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(396003)(366004)(136003)(346002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(55016003)(33656002)(71200400001)(6506007)(53546011)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(86362001)(38070700009)(9686003)(7696005)(38100700002)(82960400001)(26005)(122000001)(83380400001)(41300700001)(4744005)(5660300002)(2906002)(478600001)(8936002)(8676002)(4326008)(316002)(52536014)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dycdlw+UPyaKehwyN+oA4QUmjzQflXvevhwx4/D2X28/nSP9RHSu9uS77MXY?=
 =?us-ascii?Q?9frPvSuFJW+Uufg56r6dfxsmO+cN4pVzRg4uZKGb2tbbdB28U0g7zSb/kEV9?=
 =?us-ascii?Q?iCz2OkRAr4LQZ3rcgMjhfvjGvPGbm74sb3FEBoLP7s5DQGRMk28ZGQG+IwoQ?=
 =?us-ascii?Q?LgMwTHrknKzaLAgSnEDcJ3hJLLJBLPfKl31rjJ9fpUElIiqvNCdnw1FjCApa?=
 =?us-ascii?Q?9KeY6DeD+PLjbeDfpWKomjXFkLskz6Jn3f+wbhytEMbcl6IW5T16NOAXibE6?=
 =?us-ascii?Q?W19j8uc+JFa1RMGGCOc7vOeEvJ4Hz7X2w1UrtWXF0hW9h0EqrgbvMd50QVcR?=
 =?us-ascii?Q?oE/10+iBgibU9sCwEMjcIfzgKOEYBMOZVSA9oqHMsYBDd4e3LE5lGXhkyPz3?=
 =?us-ascii?Q?f4lUZGBy0f1QP6feimiYxhtmybkGfbaF1kxTz8HzRDO18M7y9oxUDNrgq3E6?=
 =?us-ascii?Q?UlnO4PRY7E/1BZv1cVztezizN+PeyTL6a0TSN3P+vjO58PvpvYlCoGD2ZFfZ?=
 =?us-ascii?Q?NPe5NLpoUs9SAf9lpz4WsyvyhwBELXq2uAs02jyMOKFU38u9I7Nup5mcSpjI?=
 =?us-ascii?Q?RZGeub3xDIt1Vq3BwDMwpWK1JlvM0IGdQzMNRhCTOBKAFSMAI/cxl83bEV8c?=
 =?us-ascii?Q?mPl6txq8QAB922FWqbWf9rcYEjG/+n/sIIewOkOEg0kvvqmJQ82xJMKoWJEA?=
 =?us-ascii?Q?GYuVh0k07EOJfTm8SfG19K4Wh/FmJvQ7sCLDWfUu4nLpD5+YfOEcXy4eVwyU?=
 =?us-ascii?Q?fW+Ql/xXuX/ffJG5x9LMAvBK4f1Fy6gYC2g4C+DZS5LrVxPvsopeCYhiPpd9?=
 =?us-ascii?Q?LmOzC2He/BwvVdV+bA/FAxDwVHDZ0eGGxbq9ANXfu9KnWPoGXuTvuKqHNpLp?=
 =?us-ascii?Q?zcJktSekvnUxcdR7h3AeXNlznceqPoqOJUHyxGz8xvDajtXYmLYZuR7BpatH?=
 =?us-ascii?Q?YKYwcxqW7rc2haAnD0yIYdLM74vVRPOaSPDoGsi1lt8mAIlPBSCdxUv57N9b?=
 =?us-ascii?Q?ZLNa9LbNotfdsC7th4yayklsNKldeo2a0f6vz1ogU6Vnkqv7T16+PMmaTI04?=
 =?us-ascii?Q?CTuRCiuVyFY/v1itaDKFkTFpl88vHZi6OW6Bo5tKR2V0vKFaJGcQ/CbCgCcv?=
 =?us-ascii?Q?VdtBr2Be1g3sxWqFAk0sQKxMTcP+iVHTcJuRZ+wafsXMbUGM4AhJrir82jK5?=
 =?us-ascii?Q?rs7TR9upU/I+Rj1rR1RYxoc4aLaT9wfinznvi59ArCLWjhxHFkE6YsEGBjqQ?=
 =?us-ascii?Q?1ydKLyNAfuIgRaDHVItbjlBVh/mDD2JV4KyT8jFq32xkiH0kcYKOdg/poH7X?=
 =?us-ascii?Q?ZFFtpNcnJpFnyHeKDdCaq3UTpmwMXjajikMKb4IDhJ8gYfYIJPhM00pkMTSk?=
 =?us-ascii?Q?nc2MBEIJ5hj5fkZdKbXlW4vCJ4j4Y25ZwnZOrWnYLkCds87K+s17qjJY0LxD?=
 =?us-ascii?Q?eUIgnRnilL3SZsXfUn8rORQz9weXFLcmpdh44kaClfW4/rhvsgfoCVEd7jv5?=
 =?us-ascii?Q?EstaI/zYGumA0ctVqQZtD32mq4Q2HR3pUw+6gFjcRurMlFeG8l2YyUtwl18r?=
 =?us-ascii?Q?hcXogsB3ciV8bYRCWMLtSpMaBhYr2LZrRqWOkuqaVdH1lYFSXq7v614O8PX3?=
 =?us-ascii?Q?Uw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0072c260-4aa9-4996-a015-08dc06821815
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Dec 2023 02:18:19.8915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YidGiw21FrCTUUz2Asic9ptMWDWmbnQKaiOr6JaMO0ZGzAuZTIeC6jzAW7u9Ys8pr0EA0DIMgOIfCiiln7zIDG5qm2Mo9ksgfoXFO0J4Atw+NS57SWZqYGnvZag0LtrH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6072
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703643505; x=1735179505;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Sq4TIbqF9LJRB5iNhIwzxINph0mRS8I53SFJESld59I=;
 b=Gq47IyRsE/BXLq6iZjj82V913VN0NWE8EPsNsMsV/OB1uZ7smdTdNmtk
 bKFs8BYJfVshCcBaJP/WHC+sZ+NfULkbDQsuShsTRUI2jNx6oNeeoBJHi
 RtsBA+4lPLt0JW9dvmqP4NxV12dy5VqCRRJ1J6YY7Sev1t7BR7Ul8l6kJ
 IM5o6NQ3u0xAGZvuUlWr90b5gUjO0W6u/lBK/rp4K70301NUggXW46ebP
 fZfaLx8JhzXKM/lB/Jf6xMH3oG4MQSpBxvF5G2CWBuVr0FEoYL0tyqa0C
 M1XY0vOyS2FdUiwLLdh+Wx1blQfT0U2wIrSp/nkO4bzFAXfwEJA+GayfF
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Gq47IyRs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: Shut down VSI with
 "link-down-on-close" enabled
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of W=
ojciech Drewek
> Sent: Friday, December 15, 2023 4:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: Shut down VSI with "l=
ink-down-on-close" enabled
>
> From: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
>
> Disabling netdev with ethtool private flag "link-down-on-close" enabled
> can cause NULL pointer dereference bug. Shut down VSI regardless of
> "link-down-on-close" state.
>
> Fixes: 8ac7132704f3 ("ice: Fix interface being down after reset with link=
-down-on-close flag on")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 ++
>  1 file changed, 2 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

