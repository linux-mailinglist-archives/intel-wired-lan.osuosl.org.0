Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF064CB823
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Mar 2022 08:52:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49C3260F24;
	Thu,  3 Mar 2022 07:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 76NWx1aeroq3; Thu,  3 Mar 2022 07:52:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D6AF60B7A;
	Thu,  3 Mar 2022 07:52:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 710541BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 07:52:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 57A4E400D7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 07:52:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YM89C6R3HxYY for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Mar 2022 07:52:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C837400FE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 07:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646293933; x=1677829933;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xYbqQc2e/pewJEJQP3QL4591VdeEZ9udyglQUCPcgZ8=;
 b=YQdFMTTO9wH8APKtlNf/TZ3Z8G1BVqeN3LWNkeJWXNACVaEZZu7/iNXp
 4IACz2FTPD6t5E33Xr4uPR8G2bY45WtBG/y7KaHnCrAM7tajp1RFsY9GX
 7+xqVnyu/wqfqc82mdIKSCpydSt+tw0VVvpvXoygP5AZ98AmXHpj3Zb4v
 s64vNMz62qHSwCuZEXPotX0vsc+mEqxa8y3K9rb48Tnlkd5wgGf/TJu2X
 5KqMA7mPVSYG8l2aTAt4yDgD7/nRZhUTCE6hA8iPm+nsiUputWUgl6rqH
 fBm+hO5m7B57arASWJN/4e2eLJ5JuH82HvZWSlu4Eoha3ikWQ08x5ygLb Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="241022997"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="241022997"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 23:52:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="640085082"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 02 Mar 2022 23:52:11 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 23:52:11 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 23:52:10 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 23:52:10 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 23:52:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IIkb7GEm3kT0XXv1gbccvD+9Jfbl7LIGRowf1RInYGvDKy0CrJ+dGpXJkn8R6qqyePFhMd/mr1WQ3fKYc6avMLe/iDifNfHQ8F6yVR0aef5LcF/r3qzEKwP4s14gADQ/Tsz0fbl1sXEAVqA2F0sLT+DempuY7v8tlfUS1koDmRyXJZZJaMMC0o8aYAMQmPcU3piEnxjQxDfDvhRcePNdoXjEWsBEg+i6X7k2VsSmL5/MwqMT1/AQi4XPnlJnpgJj4eN6vv7XIlRVBYB2EnWkA5O3tUo5U2Inlipt4HPM1dFLnxmfJ++TOaqfzmzBOkfUz1JU4Q8TuoAwngcD1v+iTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xYbqQc2e/pewJEJQP3QL4591VdeEZ9udyglQUCPcgZ8=;
 b=gGYDeLWtuZuxedHtGnAxvlhwYqdMXwyVlQyB3X5ZcwyiKF+rz7U61UIjWoBw7iv1FisjK8MVjnxfSUODd8dNT1lNg+hyYaguPwWyWM9T9mMdksh/dylDmmYbenBBuJbn3quGBzM4J0AFTRYSxptCfAmlkz8ckYDBdyIxL9KkycHhm3lJot2SOINJoSlll9vi9AcdRHy1Ve5UFMMC5biIZfUYoIAXJd6rO4HOXEundrJnBUyIP5fQqWSx7uDBikJb45u8b174hhZoUKKCs/W+itoEc+DOgFZhy80x938H1U3TELl+sIABbNJZe7UvLXxEgVCyOtrlZyeBXjigah5BeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by BN6PR1101MB2227.namprd11.prod.outlook.com (2603:10b6:405:51::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Thu, 3 Mar
 2022 07:51:45 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a%6]) with mapi id 15.20.5038.014; Thu, 3 Mar 2022
 07:51:45 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 10/25] ice: log an error
 message when eswitch fails to configure
Thread-Index: AQHYKExQmEbNnvKL4UavBtykpYQ9qaytVj5A
Date: Thu, 3 Mar 2022 07:51:45 +0000
Message-ID: <MW3PR11MB45543A17FF47EC3B1CF75B749C049@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-11-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-11-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3b566699-8a61-4f33-6763-08d9fceaaa2e
x-ms-traffictypediagnostic: BN6PR1101MB2227:EE_
x-microsoft-antispam-prvs: <BN6PR1101MB22271A82C1902083770F69D39C049@BN6PR1101MB2227.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yaCQIF+cUSztA9oi765qLwYdNW317X67i2l3TuNaW8B/OSBpMCoroYZTrXnL8Aewu0hpitQttJgYH4Hde+deRL1G4UBj2EYTV5I38hxVYCx1ZTtn2UxEgWvcvD+HFQ4klp1P/EbXnxEQ2n8ymu7MfgL64eMJeFADk0J2nIpr5txr/jYcSHTdRGC1y+lMVhyX6L19SL/fzAZpIqABIkgKptWFJNeC6owOljr0+MGQARlVxxiDmDkxtTJ2lKDluz5Ovv1eA0U9CnlbwAZSfH+8CrVVgVBXqdDiM1k26HmvE+5D8Es8AqRargr3xDyYKfellWLuceio1lKT8Z5y47OEgrE/WPuzQ+Iah74SgpiecbVxlwWGlgga/9Fn4wn9n+vM8ITg8824ZOZR1n0XXVGcV8eTNp+saDXLcP4aIKl+YfisYX04EvGGn8uIWIsHHheJSH2r+6fy31W7Ni1hwEtL3p4p/FlTzeftTTHnD3SZcxyNxStHiMo9OsPziv8xNCTL4oKInjqgjKWAN9UGh7OOZT4ujmLqNXaolwqEidWkWSznVL3xplaArRikTeOUxBQ9Fv0XIiqLNHmBgLfnGSbO5C3x570iQl51bB25CFTr7nENPjbRVvXRfn+iCwl0kMuJHvr2jAyCCYuUGkarSMQXAkHP0G752XdNPE/kaGrSr03jkBvQ7jJdp/XNQ9UAjp/PtOwXGM6P1pBBY9w96zEQYQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(71200400001)(55016003)(110136005)(9686003)(508600001)(7696005)(6506007)(33656002)(66446008)(8676002)(64756008)(316002)(83380400001)(76116006)(66946007)(66476007)(66556008)(5660300002)(82960400001)(8936002)(38070700005)(122000001)(86362001)(52536014)(2906002)(26005)(186003)(4744005)(38100700002)(15650500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+XS1ZM3en07B9P5l9KlE57YbEHnwfmodLWozne0reFcyICK+oSTvB8KGk/Wl?=
 =?us-ascii?Q?qLuVbL1qh+HiuFEiQknf5WMWoP1JkTALrxqPrQxVh7HJkyVINzkfkklSbLm2?=
 =?us-ascii?Q?IW5CxKOEBjP3HaYvdt9XSKJNd+fZQbHv+lV0aTEVpo1HzYJWwkUVRpZmfQEu?=
 =?us-ascii?Q?T2Kg1QcMwqoggsmWdnlyxFCcszcqnifw+nHQhsgyqvs+DJIZ4fgj3lpUIRnG?=
 =?us-ascii?Q?M0VQxa4z+aLTRZ3/G6Q4pS/t0Jit9GcRH2aY9iONjvB7HdJtsjPx+R0ciyxc?=
 =?us-ascii?Q?CgO0D39dJbpMOb9cAV0GJmrf9JlXb3VR9AZIZGw3nHmPd8t4T4p5gyo8Blrq?=
 =?us-ascii?Q?0pfkS/zS5IT7xQfbf3hYvYWAOB6B1zaYFD6lsg1qJy9l4t4FFMNK/WNyFyRH?=
 =?us-ascii?Q?A6ylGeNJG+HWQFZ/MCkC/uPuBbTiuah9UQ2XpieqnyqKnrXKxJzvY7IYZxBJ?=
 =?us-ascii?Q?wftHlzwwpjOAev0z2pCL83VVbtEKYDkUArmPIxFZtWBkakd0YhJlmOGbD9Ul?=
 =?us-ascii?Q?0iPtABCbqHGE50AAuLfau8fn6yzGFMJm+oa3Plg9algxxrx7mBqAHQ38pisN?=
 =?us-ascii?Q?S8TLqWrVbwz1Co8qg5FruPSIoYChYeuhkBYCukxhvvOKO/Xp87Eml4L3ySFh?=
 =?us-ascii?Q?lWnCkqlBJLOq9/g95pI/nylRpAcLAqrtF76EWh47wum+kDFtPOa+3F9CSjaL?=
 =?us-ascii?Q?YUK+adghs37Hl5yBmLRZh6LNoPHIJHLSH9jBkt+dg7+YkWUAi9M7mQKt2kSn?=
 =?us-ascii?Q?9VGEKdC3vZ9G7E48QP95BCio24gYP0v2to62KWeoLOYCmCerh+OJpClGRcVL?=
 =?us-ascii?Q?2IofUCPNNPjnto/LA7WfMZ0dn1fDB4o5tFfg7o3bkmUWu5qzkWwnwpl8GCAR?=
 =?us-ascii?Q?j/qcb6v/2Br9TEyUqTuLyMXHh94Y9Sh+P5J/UjGtksFmiXnI6jp5EqL3nB+H?=
 =?us-ascii?Q?uCuLi2BNqLjq58CzioDPQc36rw46ysLWh98T0LMv4mJLzq3NmnLV78mox6BT?=
 =?us-ascii?Q?CyQq/mRQ7gaimQb1hpN49ZlNGyzXDVjAO6PgmmMOD6sBe8hjVBaeFziAHEDE?=
 =?us-ascii?Q?VItG+8o0vLF0gGN6gVXXPEHHgJirRRf1D5oTqyVmzQ+ARykZuVvyY22SajkC?=
 =?us-ascii?Q?AxdyoQ1rKL2FSEydEQPdTRsJQseVFZsMkoRiGs0Q0HS/7+2jOlQrebmuWpdD?=
 =?us-ascii?Q?K8klW1lUc9ng2feSjua3osjToIDubm2lFQhyOl4dO22df54alnQ+1v5e+b/9?=
 =?us-ascii?Q?1/EtOYAmmz3l5fu4n0UainuCjiy6AJ5Wrqi/OwDZRKgBGFu9u5x+vBhzHrU3?=
 =?us-ascii?Q?ypse7zgKIDzup/0lUDvnA16avjPH8800E/zZsfzNG3w73lwyaNxZ2eILKuMO?=
 =?us-ascii?Q?Z7cnW9bRRPmVn78cu+x8m0WHTXVHGW+gkRHxrSbA6nDYNkal1uZ2S+BczbnZ?=
 =?us-ascii?Q?8gceor9WEPfObkGlt+oTBkd9Ls9kEq8ZaftqyVD3ZAJzL5GicHp2hJdkTy/M?=
 =?us-ascii?Q?rlkde95v0RAB8Xezstm0qzw/R5LZEpjr8pJLI+a0X70dFgdNjEjE4cLDYXXh?=
 =?us-ascii?Q?rQMN0SUX2SW5itnvdPlM5AeKnYwWlZsHD2FVITFu7c15BXDZHpOnA2O8noG+?=
 =?us-ascii?Q?wYZOy4Nd0nO3rIM/qK/3TTRLtgveAx2BAOMoxQWcMPTd4pYW9jqMmBKN1t+h?=
 =?us-ascii?Q?+jMIGA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b566699-8a61-4f33-6763-08d9fceaaa2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2022 07:51:45.6713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1jrnkFQlDlSCwoxYp/108HDq29zrnIG2BDrXp7jcUL4b33KsT4XfwO8kyIvVSTPzhFwp1aSEuw8prdjLhy+ba+1Eb4DWTJjArGzf3e2jVgU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2227
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 10/25] ice: log an error
 message when eswitch fails to configure
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Jacob Keller
>Sent: Wednesday, February 23, 2022 5:57 AM
>To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
>Subject: [Intel-wired-lan] [net-next PATCH 10/25] ice: log an error message
>when eswitch fails to configure
>
>When ice_eswitch_configure fails, print an error message to make it more
>obvious why VF initialization did not succeed.
>
>Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_sriov.c | 4 +++-
> 1 file changed, 3 insertions(+), 1 deletion(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
