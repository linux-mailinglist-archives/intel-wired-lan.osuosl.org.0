Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 306C5830F16
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jan 2024 23:10:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2C2D615C1;
	Wed, 17 Jan 2024 22:10:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2C2D615C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705529415;
	bh=8QOBJgOARWJi0xJN4hWdfitXl1unkVqF1Hh3FWg10og=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l3qLPSG+HzqMeNKIdEkA6YrYFyeyK0wrRCOjRb2LPSRVCfL9rSeLkU276EAW6j16V
	 Gah8wzv7HKqoFrienjufOFOMOjC05uLF7hDbdF0uaozvDsSwQYG0gGITCWCG6F7yWC
	 dGYgt7cLp4Or8rUpiVEuX2N54snH4q3gxhta92zwgeR2ePT2c/WVRfkNRji4I9kQIb
	 63E30M1yOIvLkZ15APKVdtNuf7oDprwNK78OLAcvLRsgRvgEYIxV7uBqDSxDlbBW/q
	 XVO6IB+1KAOpd+ZIQIvIn/tLL68rkZa0QZqNc9o4yZxq8Thxs+b9ExihEJM7GrLELo
	 CR//t9D8kE2zQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4glGD8_gGiQn; Wed, 17 Jan 2024 22:10:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E23B6615BF;
	Wed, 17 Jan 2024 22:10:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E23B6615BF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 576D81BF484
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jan 2024 22:10:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2E02D404B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jan 2024 22:10:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E02D404B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZZaZD78zgwDr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jan 2024 22:10:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B67C84034A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jan 2024 22:10:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B67C84034A
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="7682270"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; 
   d="scan'208";a="7682270"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 14:10:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="777557141"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="777557141"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2024 14:10:06 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Jan 2024 14:10:06 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Jan 2024 14:10:05 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Jan 2024 14:10:05 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Jan 2024 14:10:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e4SpmyHNZd8vU0h+x2QkyqYe0OapyXroND3f5akcJpvP1BrmRt03aTsu+4PpZbU3FfBjMD/2peEffrnwbKm+8btf7htaCCEWt1YRvOuRdyF43u+NX/xJ++ihNKmoNentCiJeDAGH+Y1ENVbuQFP5b3c2MVpEMB/asLZlVVNicoOJEBBtu7dgQUd0gzXBMHwuaYvB67GQ0EkWAvhi5JLruOqxRmbibtViiceHgqqUueBs/8JIeI1gDhEtAKgrhrdiNQ52qqg1V+WtLKrqH1S3vCdwTk75fMN4tOcB4wsWMC1c74z5k9HNdowMZ9esF8qqyeujLwXoTw32k7fdTvSyfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8QOBJgOARWJi0xJN4hWdfitXl1unkVqF1Hh3FWg10og=;
 b=OQJg5BK/54cawIP8St3cp0WhAXrcOTI+Z4qMtk5/zw6d/CXFGhHl+XVHTRgWhuCpvtPaR9mlFPuTaLXokQMuQVFNX6Lu1djUe7Df2v8HqZLsObnD2vhe/W1BMtd08T+YfcSd9U2t+FJzbR+yJpDF0dWyv60di8fTSOVR2bKaU2MSpnCveJcrVcSSt++Ixbb52gKkpfXSH0iCHa4CsEc2QSoZ1pv9LQeJ56gNFDocIZKrR33/Cs73HkwreUbZelpEcpw/csHXogzTArxiU0iznbINoPhJz/ZUC0Y0XjsijobXgITbx4CAK2AaL0zJIN7tOqp/ikFY7EUtA6vS4Lky7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB5135.namprd11.prod.outlook.com (2603:10b6:a03:2db::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.23; Wed, 17 Jan
 2024 22:10:04 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d%4]) with mapi id 15.20.7181.029; Wed, 17 Jan 2024
 22:10:04 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Simon Horman <horms@kernel.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>
Thread-Topic: [PATCH v5 iwl-next 3/6] ice: rename verify_cached to
 has_ready_bitmap
Thread-Index: AQHaQjDZ3wcWwaXJv0CYNsr20Yw4+LDauSWAgAPl1GA=
Date: Wed, 17 Jan 2024 22:10:03 +0000
Message-ID: <CO1PR11MB508991A8A05697AE2E62F289D6722@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240108124717.1845481-1-karol.kolacinski@intel.com>
 <20240108124717.1845481-4-karol.kolacinski@intel.com>
 <20240115103657.GM392144@kernel.org>
In-Reply-To: <20240115103657.GM392144@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|SJ0PR11MB5135:EE_
x-ms-office365-filtering-correlation-id: 6c9d00df-7f67-4c55-bfb8-08dc17a90e5b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s+ZNG02njDjAkWX0D93IUaHFUJthSh74/HxmOnVMw2P21IlJZuMZc9NyfvBZXOuqoOpYbRDj7v4Lgx8s/JbtaSiGbtRD8LPhiqbamMLjvuP4ojNjMXyN9IET7ARHFs+Z5/F3K+7LMN9hVQArNe2h0Rhs8daLP6DuP72hnHe8yUns6URWU0wKPCc9nRSPX7bGJ3a+NYOwKF9l3lHNbNxvv6Ur5hwlSpj/CIClYJrxNfRk2TB//VZdcaFqDfEw/Gm6jR7FIJH2svQwWgi8HVrE5EF02FaXy+nSOK5se5Eq4m939LXeXzLGI3ETqCO8VTahhJtudjCb69E7Do1f8EdHDve1r0YIkO3FR6tgIQq8dfTADj8BxW5xHonvsY19xenzE8tmuTHHAe2+9rtVZ5hNpHJtrSetkEiBB0WKYD9WELUzS39WHoM7lA0k/xvMk1+40E35bDE9njx/IXgKIdauCbNLLvMT1j7h0VspIPjzA5twyDoDafp5izlZpfWVBt/dov/U3qcj31fnmGSkoeC9UKqFkXU4u4rP4ydhfEurJMOn/AEGjfVReDxuDbFLF7GP8+5eAw0jsYQTgBlLUpAbBz/S4o6IzzPHwxszpEYe+jhllthnbUn+w78EvND/ycbC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(136003)(366004)(396003)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(4326008)(5660300002)(15650500001)(8936002)(64756008)(66946007)(54906003)(6636002)(66476007)(76116006)(2906002)(66556008)(66446008)(107886003)(26005)(71200400001)(316002)(86362001)(33656002)(52536014)(110136005)(82960400001)(55016003)(8676002)(7696005)(6506007)(478600001)(9686003)(53546011)(41300700001)(38100700002)(122000001)(38070700009)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ehwj4QW4YJoA/UwIclEEMJ7NFmLPRdRyNUme5ulQy3RiHs1GVa7T/NSxF1Y0?=
 =?us-ascii?Q?cXgcHi1+kl3YDqfTR1+ZpxIHJRRhVRsz/1bIK6gATi83HSIduqNaJq23QQLT?=
 =?us-ascii?Q?v7bm3fLaUvS8fWzJ2kx7lVq6jF6IihMSaY/gGgWv77/HHlNosEDMxmfMlzxo?=
 =?us-ascii?Q?d39UF7uY1JnVWbOVAj5kfAoqwA0Xz+5qyUGfMLqYAtRfTGaaAdLxUGw1ZbjP?=
 =?us-ascii?Q?SBQteoAgwawXnXL90Xc8xWcLcOPtZGq4dGfd1bOiBsfgPVp64oPAD6qXMz8v?=
 =?us-ascii?Q?FQSPXX0zhVVPzYmTAfbMtItU6LxQYCaT6xirogTuoiyqyhx2XtDB03v1g1ZR?=
 =?us-ascii?Q?UufLeqVgaer7BWyDInCWKF2wthKn1T04j1eOD9V1kuiqp96+svpN3emg7Yx8?=
 =?us-ascii?Q?udkusQqVAoLkwSHmcE0tWcpqFYbam5D0aH732NzFQm9E6Q+ic2sCu/AxDRpX?=
 =?us-ascii?Q?XCvcXfZm6VmcAeIZgvoU160euFpGIoHOKEEherC/at6jaqw6FnJQ7bRvQfsN?=
 =?us-ascii?Q?nALDJuisfg36MPshprDk0UxExyEVcwqVKkQ9sCYUu3CNf+CeBPu0KIjdpJh6?=
 =?us-ascii?Q?vZXYtwQH3d0lyVLcgoU4sSKeMYhb0I4TZ1iUKDy2srorFHQ4ZVuZvIt7n3Ym?=
 =?us-ascii?Q?Z4+NWv0SaceBtl6hHfNqqXWlvYHVLACTF4OLBcUT/bJdjVOpM0qKAGKUG1W0?=
 =?us-ascii?Q?pBkh4obH/oxglsqOJZ8SyOXzh6Xbl2H0e5pnRIfN2sKItXZkxDS1ht4ytdA/?=
 =?us-ascii?Q?lUTkXWF6s7l8dWsuSFRnLrnyisQo5exF3qplS3K+0PUsMI0AIiBwAsLYSrJq?=
 =?us-ascii?Q?n62Wkp2+wLTEAYuqGWVdw6NElecd+zeNcPDZRCZ8YZvBdeXvB/efV83faTqo?=
 =?us-ascii?Q?vikDIPWyujqZSTdfwbr9ZYZhosXVljV8LGyViX5MgavHeLMKGLaKp4YVRw/r?=
 =?us-ascii?Q?+EF8eSsWy7dCo7MkX3IFigJq9Ewqod7DBmo9q5iRXdXwennwau5wys9ncLTr?=
 =?us-ascii?Q?GDjG5ZkvpPc5z+jTChZ9hJ49FNklfEss+Qvye9ca1eFHfFlx3v+6+9eWyE0F?=
 =?us-ascii?Q?fKcO6TUFzXhhV+99WY+IGPmRylghhc9lFpQ6wHsMTlBJkYMp+vJXDjffzk1R?=
 =?us-ascii?Q?UhyVYmPxUkfPzZuY/ByZG5ItrI/nbrRW99RZ+IqubQHXm/wjRb8ViITJTqgO?=
 =?us-ascii?Q?m1UBUBkzLDfx5yFrsPmvJQah2QwbONZN/Z/XRcBLb+kFYORdZX2dkjtSNSi2?=
 =?us-ascii?Q?YTa9Vf8bt7hxnUyUM8L0NqNjzOo6UrDzyi5KCKpzbnL7CQFCGn7Z/wKSrFFh?=
 =?us-ascii?Q?aN1I3b3CygWLfz4cMb5qaoK7fqucvlNQ9zDaP/a2OmOGK1nSDEUZ754WreqG?=
 =?us-ascii?Q?9xtfYhJkbri94FvSI6bg/moy6mRhFvTjWFrQgsUxi2NywQYotO7Q+LyUmgbS?=
 =?us-ascii?Q?eXgnUOJ0H1jkmOj2N/bJ9cNWZAJidoyD6z0t9i1rjZBwIiddCY140VdxFa7c?=
 =?us-ascii?Q?J8NXyo0+B6/ruMf0vsp4ocTihNk0j1USBRUjX3loY0JdVjk7nOJdTeuhmAb+?=
 =?us-ascii?Q?q5UAahaGKnUW6ao+lQVxQcsPZPka4W6V6g6AIW/L?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c9d00df-7f67-4c55-bfb8-08dc17a90e5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2024 22:10:03.7118 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tt17hb2e2yKmiF+NtkNP9BB6nflJpKSyQ1YlOM7kjrTE0GYTs98Bv7tDLPWwRPVfgJ3I7dhf8KM6gUWgJ4DLkFn/BhkrM5r+yLOb8ZPUm/0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5135
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705529405; x=1737065405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8QOBJgOARWJi0xJN4hWdfitXl1unkVqF1Hh3FWg10og=;
 b=CpQUinvjCDy7rIG7/mGIvjKktlUkZEYrx3WaU85lfx9WkiPFQEVslHUd
 QpBe6EQUZDU1jJv3I9DEpJtNACiKTcFomZ/9lDthDBMDk2qyGCzSgOHMC
 qfaq/OpgWUrFiuuWTFQKrP367KtLJrGSCX/o0krsUEn4hkEaX3O7zNtbe
 Gi+WSWvpXuD3l51DAyhp5Lltj31+azXbF9My51mn/05Vih95llYO+aiFL
 5QVpl5hfWdCMMRntHdjYhTqpB5CaihJfdWE2scvQ3/XvvC6rspI0rczL/
 0EbGJeLiG8S3bmR4V53D+hlcFQqI7HqW4gR5YIwZXym3qbMFHV9XHqRcx
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CpQUinvj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next 3/6] ice: rename
 verify_cached to has_ready_bitmap
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
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Monday, January 15, 2024 2:37 AM
> To: Kolacinski, Karol <karol.kolacinski@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen, Ant=
hony L
> <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: Re: [PATCH v5 iwl-next 3/6] ice: rename verify_cached to
> has_ready_bitmap
>=20
> On Mon, Jan 08, 2024 at 01:47:14PM +0100, Karol Kolacinski wrote:
> > From: Jacob Keller <jacob.e.keller@intel.com>
> >
> > The tx->verify_cached flag is used to inform the Tx timestamp tracking
> > code whether it needs to verify the cached Tx timestamp value against
> > a previous captured value. This is necessary on E810 hardware which doe=
s
> > not have a Tx timestamp ready bitmap.
> >
> > In addition, we currently rely on the fact that the
> > ice_get_phy_tx_tstamp_ready() function returns all 1s for E810 hardware=
.
> > Instead of introducing a brand new flag, rename and verify_cached to
> > has_ready_bitmap, inverting the relevant checks.
>=20
> From the above I understand what this patch does.
> But not why this change is desirable.
> I think it would be useful to state that.
>=20

The main motivation is that it is easier to understand the resulting behavi=
or than to rely on a hidden assumption of how ice_get_phy_tx_stamp_ready() =
works.

> Also, perhaps it just me, but it seems that
> renaming verify_cached and weeding out assumptions
> about the return value of ice_get_phy_tx_tstamp_ready()
> are separate, albeit related changes:
> I might have gone for two patches instead of one.
>=20

It could possibly be split up. The motivation was to stop relying on the fa=
ct that ice_get_phy_tx_tstamp_ready() returns all 1s, since we already know=
 whether we can safely check it or not. But then using "verify_cached" to d=
o so reads weird with the code because its name no longer clearly indicates=
 its purpose. Instead, we rename it to better reflect its intention.

Thanks,
Jake

> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> > Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>=20
> ...
