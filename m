Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4AD6366DA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Nov 2022 18:19:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 632E941987;
	Wed, 23 Nov 2022 17:19:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 632E941987
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669223997;
	bh=J1M61TBaT1ozQObXuk/wth5Uhzh0veYrhdkEEUdytks=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iCz2btSNpBqLUlJcjPL01BBQfvbZ1c+LQaUhyOjFJEPgi852EqkR2R1WeM8r/tkuj
	 w7ta1GhM+BePSTUA00W8MMQ52XQD7+Id2RMqaABKxXUzFAL7ZtBxeiApUqoZnVNRd5
	 WX3egKT47lws84enBHFndl1DOwIO9Zrki+62yPVes4FnZSyUe1dkvYESIMTKhdOkHu
	 9J0D97Q+vSK7wdQze1UhYhphrLrhSQUqmCC1R4m2+kS+JOlvWVCQ3XtYCspKipadFi
	 FjoWHKPGAvH5QVfF2f595i1KqX2n3syk2hs9f1ofx/btDi+jBXvgz5MzT5ZnXcfJ5i
	 FKNzfSNK0xGAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ki1q-diFuIAN; Wed, 23 Nov 2022 17:19:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10C484197F;
	Wed, 23 Nov 2022 17:19:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10C484197F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1E0821BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 17:19:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 04A6181772
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 17:19:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04A6181772
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PFbAcrHgJijy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Nov 2022 17:19:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E99081761
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3E99081761
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 17:19:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312817607"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312817607"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 09:19:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="730852544"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="730852544"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Nov 2022 09:19:49 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 23 Nov 2022 09:19:49 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 09:19:49 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 23 Nov 2022 09:19:49 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 23 Nov 2022 09:19:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cAFUBb1B0L174FAq4ZTx+Kzz5UC/AiejwcymgwH97LCCmUlYicoa+DR/ZFcuSomPbqpCzxndTmfoPDnvo81GcHt4ozlFThkyOGNadWFXFA7uqey1OTUMSsZ5MWiimb45FRkO4mOzAt+GujmkggiDCXHfskN5wLZoWcdFGZL1uRlG/4acvNZa5mb/EDy79LrW5G63r2GV7eJag/361+fM4f4MPmBEJtvi6FiYCfRf35mW8XvJHAHlhEfgTt0kDzah6E78IJGpCyjaCaLm8BmgrCz3IHYpGc3bRfHVsjcqg532gjDXypRUPZxu08MGo/IxcXCIzgr1HEl8mF7fmCF7aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NZZNc6Je+O4cfZheSqPqKkUs/5yKzlKcMMIcjmWAqH0=;
 b=fdVJtE2WoOZ4R/DryO9pRb6H8w4UcBMzhxT4kEuED0PvLBF9qUscb/6iGf3ERa+RuzkJCmefLNBriDWZGWUaxLGATXJT3NVScLgWI/Vd8qhNVsNWlW52dzKB/FaxvJoT99A65WCcxXBPE9dtDVh6c0TG+CFgQpCoNpTBA62XQLsEuI9sawncSeE5CcpkcG9Bixt7XUPP0VoDDqGcD8AQuLCEVHHo8sxwsdgeCp0mQ+aJB9r8E6VNSj8QrpqF5FELVGdJMPm8LkRcM+KQppuqQWu6P22DIZRuzg2HLw6ERGNtO/6HuQ1HwuLqdMCDTau9tQDMCaWEALwpr5HpLvWR9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by PH7PR11MB5793.namprd11.prod.outlook.com (2603:10b6:510:13a::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Wed, 23 Nov
 2022 17:19:47 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5857.018; Wed, 23 Nov 2022
 17:19:47 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: Correctly handle aux
 device when num channels change
Thread-Index: AQHY+E68lErcQTmh10qXyS6IZOZKIa5Mzpug
Date: Wed, 23 Nov 2022 17:19:47 +0000
Message-ID: <BYAPR11MB336795162E731A5DE670ED16FC0C9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221114173004.658320-1-david.m.ertman@intel.com>
In-Reply-To: <20221114173004.658320-1-david.m.ertman@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|PH7PR11MB5793:EE_
x-ms-office365-filtering-correlation-id: 1090dd95-9ad8-4fc5-bee6-08dacd76ebda
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4RTj13//kA/X9nd4sD+7eB6NVzLU55KlQnmzvKZsn/kRXlhGhxfdfEEzt1Fb2ZbqueFOG90tETDMk28sH+1zE2uS9kH582PJBtR/bx5HmsEd7eFqkowgVk5jx1LNRKn10I6jMVC3cyRQUONWLtG06L1scFOtwlgtKsRTlIFklvZ10acmOnPUylh+FnuHUK/VAs1MKMXMVD6uwXnxHwxdLivnVcdJyrQ7rkNrLWgVa0uaTsf3t22l2JAJaycmfDJtp2DQ5zA5SVVZGWnWqiE5VAHEPT2MOx+qR9b09rCI6Ozi5Yy1oNoV+jAR1vs/oPMERHPUg+9RloCFAeC9MxGXw3wcVbqtBowPzwLwdvdyvo6fGujqD3dUr0Xj+Stm65cyb0aoLAKrrSCwFrwbEFYg0HraftTqw+xbB2C6vxTu0QjiZ5IQcBo8JQOf0miJtekzfCpsNxQC0uge7SWT+8w6dxcWmk8SBjmYmsaY0xVNIieotBXOPZ09VX3qypmJAjmzngvT5iXlKcL3+Pi6hDT3ymigxXCQzr1HayPxIUpc1TcNkWD98CBRBYWTScpnUaB4rbcHTPoHCHlp3gyJrKZrVZp7VjxfYdzwG63Gaje0SEYG5bDLbEGmNu1W9IGeLrxZuNiyLjZGkdZC1cniKY1Mf3S7f11wo6UBCfIfBmd1OCvetDhaW4bCCCFWLHOzfR5T8WJ5YWF8ldjHOc7aZj2EwQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(346002)(396003)(376002)(366004)(451199015)(86362001)(55016003)(33656002)(83380400001)(82960400001)(64756008)(66946007)(76116006)(316002)(41300700001)(8676002)(66446008)(71200400001)(478600001)(38070700005)(66556008)(38100700002)(6506007)(2906002)(110136005)(66476007)(5660300002)(122000001)(186003)(53546011)(8936002)(52536014)(9686003)(7696005)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?USq97gvDcNgRjhBT7oi7wTFWHbx5RFDxMROKcAlYPsAOV/lz/C0Qi0sxhC1g?=
 =?us-ascii?Q?eYXZj+swJn5LuAqRIDwu1IUJAkR82szZhNgLyHrKFq5TWd4ZxsT3vXe6gor/?=
 =?us-ascii?Q?k4MWR16qFvZa8XpLsslvIIQK5MpJd/eaBmtGovoCjFfZ5gerF6jhYD/Lk0os?=
 =?us-ascii?Q?cvGObvCvz49PyWspcuYzs7sLfBv8MFAolp5NsRxqJuXN/uiytCyWzQ6lK+UV?=
 =?us-ascii?Q?MX6qd/xnKceg1rDN6ERSgheC/dOlH3U2Sk4I9nDzWBywTFG0b6S96oQHjoaN?=
 =?us-ascii?Q?U7FuM3bbkXZgD4nesd7jLBDpNmvBa7zwuwIP6+J39d8Dc0nW5NLawOtEmigL?=
 =?us-ascii?Q?deNx9cHAY62Zj2VEOuSewdXtEKn1fCDlreeFW1DZLL3Ec7Qa3d2pA4iSaaOv?=
 =?us-ascii?Q?PYHifjm1ncXWHQuF9imn1IjGjgse6JV5SOPjtTQYRPB8lZF56wnwlxvJDzRT?=
 =?us-ascii?Q?fbvR4FzZIalG1Zobf6gQmhQCyqiP6aAGe2bLtg3Swh5bQwlKKgja/NAguc9Q?=
 =?us-ascii?Q?/MoPUBAbanL575bi8++B6K+CVWvuiHcXOgDJDdMACBDCoM81nTh3C4aMkxxP?=
 =?us-ascii?Q?px9cdk5Z26Ipk0KhRyfXLEO0gkx8q6gJbmNgNjsvNujrs4Ydve13gVOSsXf/?=
 =?us-ascii?Q?su1hz6QFh1v/xpOPZsAq2h5G8mcqVzB0zqULcyaLV6/bjBa+feZPvYEQ2aRu?=
 =?us-ascii?Q?yaQksW8y4PIfZByUf9UTyPLBcdq59koB+WMrJIM9zkXHyT0QNjUrMjUk2lMQ?=
 =?us-ascii?Q?XfTuGiMH78uiw4mguxPT5MxWasfaNUW2WJNNOQd4Lf+TVQDbcT8gwWpU5gRc?=
 =?us-ascii?Q?F4VNcDJdTqi2OZRCkzX9yuDFyRMT5/tA5+dXTMx8/dzkzTe8FQkN0MLCei0v?=
 =?us-ascii?Q?DkjwM13UhQ5NMGdQ4PKe4lKyML5WKIhcWNbPP6uKtQ19TPHIhVIUNrmaf48Y?=
 =?us-ascii?Q?pztNu1mNmncnwqFweRgVT8vc8okWWi65bvwppbhw9ifkkFUv1JEpxSQpFOxb?=
 =?us-ascii?Q?9gj+HhWwG/i60v1ZK5n/Jptr0B4HbohE/ileS2e3exbvCD3Lu/QXkLeL6y/A?=
 =?us-ascii?Q?fbwvXbj0KQZ94UfcXi6Lw2DMH/XUjCT8ij8IUwvUVCSaxV0gy+gcw72Wdagq?=
 =?us-ascii?Q?B61Kv3tYLR5Dzx+lx0nH+TVUqbv1JruKVH3AMTAlV5NyqUZrXJjL+qg0cYkV?=
 =?us-ascii?Q?0Pw0gAJXoXZ5FZa7b4Q9O014cl2T0c7Eca5dWv1228yV07meWg+QBVU0MStM?=
 =?us-ascii?Q?YpR+w7hvwJ72w6LvzamNLSjvdUi1F+FdzZJjV/hitu/+ampzhC7K+MQQY1bl?=
 =?us-ascii?Q?EeHSGGhigNpSmi6jB6RrGValSQIEyxd/d1jo3865spCoUZ8NRFlCMEkUXN4i?=
 =?us-ascii?Q?ght1OWWJhfUhP1fla0SIsaVwxMv1DEZjkaXT1oqM7FDD3RuoncQdIYdN4Gx1?=
 =?us-ascii?Q?2YkibwLt41tPMBN+ON03DpxLqHS4kHnDJhC5wtp8Sxb/UKNTz6hq2ivdbd9Y?=
 =?us-ascii?Q?wZwg7yFnAqwu/bw6BUl64u/OEB+L1lx6eik+oON65hMlSp/m816hryoNbTTd?=
 =?us-ascii?Q?GFDX6y1Yd7V7KIYoRK7EAbeM5UFOqoD3KLaZyV14?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1090dd95-9ad8-4fc5-bee6-08dacd76ebda
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2022 17:19:47.3006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vVxVVnQOjxqUG3eiQV51lHp8rt34iUpUOnjUj4fmBQ7PDmRN5jDSH2r4bYgC4unu9g1Xd1VaG2PKSG16C9FBqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5793
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669223990; x=1700759990;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BXy90hFclnrlUFw5i62zR5NHeLbxemr/k2Jg86yhx2w=;
 b=TYiVFTFArcwRNOXYSvA3iAuhPpGXUqsF3wLApHez+Hyob7e7ekeaTZe7
 SO1J8Ry0g3BYmtcpJ0UQWhGdhUBhEB4DPoOYXWjzQquIbasl0TwnC/yma
 ys2slN3uaE7d8jeAtajxVzvnftUXqji0UXoe/GLrS/3aNR91UrWIeQzLh
 7HoewtcyzYHCfwWxMm5z3LfOf80/dffcMuzsdqUtM7uZ4k0off+mQlINp
 XsSbnE5aQW9vZi3R7IKPrQcq0KjhwYmy24kMjQPZQvoMsHmf27ErlioWf
 vFiV6bmuAVG4PS4qHUcHjxF6GXnyJwaIzLJb0qe+HKX28GRIBtDOkuJ+C
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TYiVFTFA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Correctly handle aux
 device when num channels change
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
> Dave Ertman
> Sent: Monday, November 14, 2022 11:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v2] ice: Correctly handle aux device
> when num channels change
> 
> When the number of channels/queues changes on an interface, it is
> necessary to change how those resources are distributed to the auxiliary
> device for maintaining RDMA functionality.  To do this, the best way is to
> unplug, and then re-plug the auxiliary device.  This will cause all current
> resource allocation to be released, and then re-requested under the new
> state.
> 
> Since the set_channel command from ethtool comes in while holding the
> RTNL lock, it is necessary to offset the plugging and unplugging of auxiliary
> device to another context.  For this purpose, set the flags for UNPLUG and
> PLUG in the PF state, then respond to them in the service task.
> 
> Also, since the auxiliary device will be unplugged/plugged at the end of the
> flow, it is better to not send the event for TCs changing in the middle of the
> flow.  This will prevent a timing issue between the events and the
> probe/release calls conflicting.
> 
> Fixes: 348048e724a0 ("ice: Implement iidc operations")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         | 2 ++
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 6 ++++++
>  drivers/net/ethernet/intel/ice/ice_idc.c     | 3 +++
>  drivers/net/ethernet/intel/ice/ice_main.c    | 3 +++
>  4 files changed, 14 insertions(+)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
