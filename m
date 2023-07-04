Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 717A4746CE2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jul 2023 11:08:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C59D860E2F;
	Tue,  4 Jul 2023 09:08:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C59D860E2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688461702;
	bh=N7L69N2qIlhWTcy5Ee/1AZEpDMwWRK67fdBnlv+dVgE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZwAuZtvbGKet1hAkbfOemb6JXp0hHuKMPtq962/wgvVouRE2QouVlp2QgfzrVxszd
	 0xLHzFBjErPeuSOeyDtxSIQ27VLU0RwsHJ7S5R7Hr1MMQ+i3euYMyMgWUYIbAsbk1n
	 rTVLgvzTXpYWD4mXZbiXMeg/32XUvtZfFymdK9RC66L4jOb4t4xJluuYskv44621LB
	 tm8drelKeBz65tdq30waZ89kWuy7eWlB2PDZ6IhAyYPBerwgtwETKYA1mLBu5hCM5u
	 t0jifJ9wz4NIxrefiqJG9/H/xA8mDMBJbhGl/bIMwxlzwGss7PMyORyrmO82ITiFYr
	 k70QibhSnSEpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0s8wqk6jbfFv; Tue,  4 Jul 2023 09:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7B3060BD9;
	Tue,  4 Jul 2023 09:08:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7B3060BD9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 130FE1BF287
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 09:08:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DDB8981EF9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 09:08:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDB8981EF9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rmB3qAxlVis4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 09:08:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C485681EDE
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C485681EDE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 09:08:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="393821680"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="393821680"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 02:08:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="754002160"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="754002160"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 04 Jul 2023 02:08:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 4 Jul 2023 02:08:01 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 4 Jul 2023 02:08:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 4 Jul 2023 02:08:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 4 Jul 2023 02:08:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FEktij0PQK+TlVI3t/O0tuiFaIHbSg+cXtsYMwiYhRnt25onXrWSi/dyQ7XKef56eqSoHx/WBL0HWmDO2LzoTQLHRvz42YuD0s1FCiyot1GZOAikHBfoAznjTsB3qOW7TWKqH59XaVzS32TUhrzGMRDb1TusuocHseFczrfIrf7KnspAIqx2myugIny1hGG4P0q5MxImeFvunDRKyctIrLjzisq4mOPAoS3yRufDzritRX1x4y3KiFAaSCLFYmW0AlVq8HfLFAJNyKeoXPdqJxTVTu3hAglTDGbSGrJU974PQfiAAc39cbcUwwYdLFQtPkbvoC24NEk5M8TnW96WAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q49K8qLLfTdRPnstksWmkIUJx8cfea6pl6xVdIcfIH8=;
 b=HveLhB3nHyN98dBCH1/Of9RBFom4Fit208ORH3qN7z1/VlNy8QUcrU+ypr8ailo9HRZYZeUJGgAurndA8Nl1bQdLfv+ywQv3dtrFqEuTBSItAwThJBbdyBfM5xXMP3B/iMSioeeVvJuZbUfo+7ugJqmcUe1OIpW0b1PEblng3OJfVEaVTl7XuFWev9TKg9lFKQCs7dUPlHMzO1wY37seHeJI1/yGv+iZ76cCijSjdUGxHr+tbT1YRsNkfd5SWnS6WTaGwbn0Xe/4hlrCEqciPGbhYMKbW4oMZqldZveyhvw88QnV7xvND9Vu/690i1EO65TjUTeP+9hZoan6Ptbp0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by DS0PR11MB7787.namprd11.prod.outlook.com (2603:10b6:8:de::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Tue, 4 Jul
 2023 09:07:59 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::58df:fc9a:921f:a317]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::58df:fc9a:921f:a317%7]) with mapi id 15.20.6544.024; Tue, 4 Jul 2023
 09:07:59 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: Fix tx queue rate
 limit when TCs are configured
Thread-Index: AQHZmzS7MJHBo+rF60awqJaPgud0R6+pd0RA
Date: Tue, 4 Jul 2023 09:07:58 +0000
Message-ID: <MN2PR11MB36149F427F028DB8172B4DAB8E2EA@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20230610004024.2422272-1-sudheer.mogilappagari@intel.com>
 <20230610004024.2422272-3-sudheer.mogilappagari@intel.com>
In-Reply-To: <20230610004024.2422272-3-sudheer.mogilappagari@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB3614:EE_|DS0PR11MB7787:EE_
x-ms-office365-filtering-correlation-id: 1cf0e1c6-7786-4b33-9c6d-08db7c6e2971
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5GL/mlJY6B15L5X2JuxSMAVicoHax0cbRJaRKBUUc3xKPHmBNtpit4hTzyf/2m7c5/gxEi0+wKoCxu5b0e3kKQrDhDPX8fReZ7upMKm2ww5PREykR0ceACZSj+CLN/BJxBP6hPBvl60P74yQfRmVPYLruAFAvYfkr5jfzYry35WZwTS5ja1BXhIRm356N4NSc78Cso9eEYnXPmfDHk60ErgLfDtNNpFfWAToApYj+WD81+DGT3Tn1TpFG1Sn0TvV7XQqmXa8r6R6pe4/N3fq2lw+2DCfukiGUXBceLBnBcFFl0n2CGunBuv1O4TkWLICBw3DdMNsLJ9RKc36WPeOWlz4ZYedwk72PhD9VnuIznbaoEh+4orqXzqlAOXHoKpdS5o9YQGO8wFZW5r6OWLqf5tPTVWS58/k4SjbqBGG4zYmKhFAFkALubK31WDglGBbv/egSYMJ1D21FmwRb8CBDr3+sJL6JtFpc9V/Bkbb+jdsYr+0dUfa2AVi9DxnnG4bMX41bFaRM+qW48EZjmX7TV/Te9q83SvrXn7T1T/bY8GbpETFI9hMxFaiMKDSzJGLS2vPKxPFjJbz7FMXXin/ai+fVH6nUa/lbRoVFHA+F90e0IAudjFlhx12FI0kqiAm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(346002)(366004)(136003)(396003)(451199021)(41300700001)(38100700002)(7696005)(82960400001)(71200400001)(122000001)(186003)(83380400001)(53546011)(6506007)(26005)(9686003)(55016003)(86362001)(38070700005)(478600001)(66446008)(2906002)(6916009)(316002)(66556008)(64756008)(66476007)(76116006)(66946007)(8936002)(8676002)(33656002)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+I/+DL5NuSdko0sU/jexMQONNityhJA9ynUyThj1fhILP1rvDYC11Dhnk7g9?=
 =?us-ascii?Q?iRquPehurO6cnJSM8jO1XA6C6tzaPmOj9AQheJs6gqItrkL24PbbwDWE+v5g?=
 =?us-ascii?Q?wXq1xYVa61ZdFWcW1e4tFsg+Zxh4wYc2Gcx9rZfhfQxFa3/sO5MEBoWYHaKs?=
 =?us-ascii?Q?91NOdfrnLSFyjigQGIeFKw0ae3jfm8EbnVsWUAyAryp8rCC08zgZRfYJhwIW?=
 =?us-ascii?Q?OeSqfeAfdNXjxx4ovO2T5hiDW9naQ1zXqUDStcQ3ltM9rZogsMFgrrGpFlrk?=
 =?us-ascii?Q?+Yhhua6vZ+q7V7QYSCDBO7x9D/i0RII6+QIV6rTlgXUNxSM8SUYItvCpCYFv?=
 =?us-ascii?Q?2Lcw46xyaEb7vg8D7tX0cmnX85FPbyEEP2kU80pPemw0INkuqUWqwE5io+M+?=
 =?us-ascii?Q?orxiFFiwE/x6ObXwQZlhPxSPon+WGkvRVve0sehuSe2Wg6ZSMVmjzVLYcu94?=
 =?us-ascii?Q?0NpGGnr6hLxCglvP/bIGdXu+wggTv75zpbb7C6wvBxZ/m8So8JpGBGJSUqMP?=
 =?us-ascii?Q?4UkQCzHtg53F91jouUQa/FGxwA6pS5DrEt/VKKYIi5lkpUVwAjL5cmTUt23w?=
 =?us-ascii?Q?20aLeGGpUC5gMnFSou5fGhw4AMRAQfA7SdJSB2bwnhgzBb1pRWCinpO//0bl?=
 =?us-ascii?Q?nKRdna/u/Y6Vhv0PoFKQ0YQYA/9oY4vxgoUzSirIh0qTUvno1Qy5q9JYjPIR?=
 =?us-ascii?Q?qwBhtNzlZ8ZNdG1Mn1inGRBt9ZUBvj33dIyuEfO9a4FCjps5f3Cg+bGLVmgZ?=
 =?us-ascii?Q?UFIwV6UrNJT/D0mfenKIohAmQAZl+qJMQiJNTIkwX9HMY7j5xyRSsfsH/IH1?=
 =?us-ascii?Q?MtgmGf5WCMadYCuQ3rc82lQf+p62gl3R2R0B/768pk2mz2oQxbEZAkI80K59?=
 =?us-ascii?Q?uXbqDZmqC11jTOZ1BBvCAiCf898TvGsHDKhQGaO8VWsxZHk39gxrAkYrIetw?=
 =?us-ascii?Q?/DYAjwtukMz0eaL0aqTJvEleMJUEDRFqm5PTO+uQavQhy3QR0DU0ZkGBTvx2?=
 =?us-ascii?Q?tQrpa0xqb3eup+fK1uAZg2byDV2B0mQzH1nNE3qmd49Dd7kLR/7zAc/1llzE?=
 =?us-ascii?Q?8iD2VEDUimf/YDniMk0YRu8cYNaLCTWrlWqXqczyWwb8LrJ/9+zGQneEwdvj?=
 =?us-ascii?Q?IRPljnoY7S8Oo1EptwUUyjYgYEtF9AqhhglL0OnMf+JgabPOcDmCNNaAqMZa?=
 =?us-ascii?Q?tV4nD82r5y8HlLUjiiiNDfTOcA926mCQK8HQc65IJY810+8/64LE8Jwl9Oru?=
 =?us-ascii?Q?MsZ8oD/hByits9/oNH6LhVSrFNtoXe9+y5naCjdMApZ3L5Rbs0169jRT/Vak?=
 =?us-ascii?Q?P+kF2khNZqP3WPIhc86WPdUgMTVSPZgolAWnD+S3RJodZhAp7j57STwhk/sp?=
 =?us-ascii?Q?pvuAh5Hr4qQSfPyUiwybDjZ7g5hrdB1i1LqJ40ZHISKJXpd1Q8w/HmdiD2LU?=
 =?us-ascii?Q?Q/ZHW6w14RQZQOleSbTuxiCGoFXc/mDWqIj0ECWltvEKHGFnxI6GOdTY+fF9?=
 =?us-ascii?Q?PD75BR46901qKFd807aKnoIGM8NK8/6XUwAzApo/k53io1nTDqTQCOml/4TY?=
 =?us-ascii?Q?sLCnjYt0ES7hlx6RSTKUqPiA0D/uJgR37dZx0M0RkTTlsMWVENEMKoWBI4ol?=
 =?us-ascii?Q?EQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cf0e1c6-7786-4b33-9c6d-08db7c6e2971
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2023 09:07:58.6064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 87gv2rYlras8oa+8uLGVzpDgmm7fihgdJt6V4KjkDyheOdmDgsXw7wZDI89+lZyrDjE6CYKF3KRmSsN/0F8oI5XvNOSxFfkFxcX7toe8gTI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7787
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688461693; x=1719997693;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=V4iKcDeZ3ZY8gF/ujhWWmv0EgKHtrJXGLIInTxlD3V8=;
 b=E+EcdrA9eIEbrzTjBh2QGEVYsrKfgDkuO2+60upUjmUjvEfnOwTURp0R
 UJEh7EhywrEnqikraKNHOJO5FffZ8fQcCW/aYDfy1oGKG7j0cjcUiLGjp
 6ATI117C0wDp1krlUAr+u4IDcZjPsN7/pgOBiK7ifXkYJcl/3rDkBcryY
 X9WT2qKviFmUxeFig45VissQ7iHG5YxxeVrroVhA6TtsngizuUHON79QM
 u8fe3Ec5tCNocQER9168inB4jBwzxyekGbeNBusLhpfLj0mMelAgTWtdM
 A5gdTpM3BoMvkY2dd0atezp4UOcm91uzcvZWQKnCJeIt5/VhgGgD80J64
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E+EcdrA9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: Fix tx queue rate
 limit when TCs are configured
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sudheer Mogilappagari
> Sent: Saturday, June 10, 2023 6:10 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: Fix tx queue rate limit
> when TCs are configured
> 
> From: Sridhar Samudrala <sridhar.samudrala@intel.com>
> 
> Configuring tx_maxrate via sysfs interface /sys/class/net/eth0/queues/tx-
> 1/tx_maxrate was not working when TCs are configured because always main
> VSI was being used. Fix by using correct VSI in ice_set_tx_maxrate when TCs
> are configured.
> 
> Fixes: 1ddef455f4a8 ("ice: Add NDO callback to set the maximum per-queue
> bitrate")
> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c   |  7 +++++++
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 22 ++++++++++-----------
> drivers/net/ethernet/intel/ice/ice_tc_lib.h |  1 +
>  3 files changed, 19 insertions(+), 11 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
