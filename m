Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5F2757324
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 07:27:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A17A60D4F;
	Tue, 18 Jul 2023 05:27:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A17A60D4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689658031;
	bh=m1PuKGUwYCzM0khRzgpaO2MIVbWDwh3Lkuod8L2Tl0U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LYbuoF/UNSNT44oUoAfpfF78UERAF2XxdanIGQgP+HA4IlXutmx9vVCEuHgYG4weA
	 RWd8b/WH707sACCqR37Jxs3jzQZ939a6sAks8GDn2pf/2ku62dHCacVvJJ8Ld0MRfF
	 pVFxYMF/T0SRKB7cK5wy6Gd9dMXZ4GVnggEpiUD2yCB3iKUvdNXy6NzrOclCQby2dv
	 gQCdZqkfkwinXgqJcgp8zBtswgWvkvPu6atNIJQRnUWaGAVeEZjPu+yNDRnNmoAvl4
	 Pxtqw6SRaiLr9z/XzZ10Vzuhrnt674QrNONkgjyHxPk0bXZk8ZPWskz/k5d+EGgO9k
	 /ByEAqSCEy0KA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R1N5YNClRUWz; Tue, 18 Jul 2023 05:27:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 422DA60BAF;
	Tue, 18 Jul 2023 05:27:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 422DA60BAF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06AE31BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 05:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D13F460BE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 05:27:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D13F460BE4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tnG62GabzG2m for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 05:27:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4AF760BAF
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B4AF760BAF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 05:27:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="396951631"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="396951631"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 22:27:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="788915426"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="788915426"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 17 Jul 2023 22:27:02 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 22:27:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 17 Jul 2023 22:27:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 17 Jul 2023 22:27:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LnZBoJc83iF6ph4o3BmWVNJ17+Pb1mWrKUQvns7kDxcMdNEYOYQv39HobeeJUfuuoqQns2CGM2D9iSW+Q7myZMCVF4UrJnx86u0DzjrH8/z4+PcHwPnCohJKAQfqyr//z6yeTfg9AX2nCSXvK6aiNAhTzHqvegICTU0FIz0Rxo4PQeqxm0/nzvSMLMkjEbxclDu+krxV4EDDHGBSgALZPGT757Bd5BoDLWVJsIXFimOBzUj/2KeBZ2hFkIX9obpJOnd+9zJH31qlE6n2QDlrmy4Rxbky4QvTazUxxbsxEAFQQIGWHcyIgwenesdkFN08jA2r1BqtAvwlb0NXQtU2Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G10P6oQjYi30fIoM22muiQgyyTsWRNOghxog8WumFyE=;
 b=Z+TrKKsHvIoJcqbs7TO83j4CRNMHPc4rrg92JiW42bd/CrtgqLya99vMTn4HA6hOJJphARN2cevZo/up4orSgtixR77EvDWdgeCqp4DVR/woHx3AYMQIMwfOviCPlH4ast/PiNdApDg1q39bvDnMjttP95Rc4G0bTjAyIi94VhytmFiB3Kn3J3NZHGcqtT1S1NO16VaU5QF+nwqmWolKQ24VCeD+4ks2gmpy+D49FOi0D8y24Fo1F8+HD4x5zZSon+r/q1XV3f2EgsNa1weJ4aN21ApvZ/qSejWpvw4/6gp9or72L59dCftu+6rkPKcd1Yrr2TtQL6ns7+ZmlftpaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3133.namprd11.prod.outlook.com (2603:10b6:805:d2::14)
 by DM4PR11MB6527.namprd11.prod.outlook.com (2603:10b6:8:8e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Tue, 18 Jul
 2023 05:26:59 +0000
Received: from SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::bc18:eb70:ccd8:352b]) by SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::bc18:eb70:ccd8:352b%2]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 05:26:58 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Wang Ming <machel@vivo.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Shannon Nelson <shannon.nelson@intel.com>, Jeff Kirsher
 <jeffrey.t.kirsher@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e:Fix an NULL vs IS_ERR()
 bug for debugfs_create_dir()
Thread-Index: AQHZtZwVCcB/Gz4SQkKFbzebskenDq+/BSrQ
Date: Tue, 18 Jul 2023 05:26:58 +0000
Message-ID: <SN6PR11MB3133B88A2879F632D218FE3FBD38A@SN6PR11MB3133.namprd11.prod.outlook.com>
References: <20230713014250.11770-1-machel@vivo.com>
In-Reply-To: <20230713014250.11770-1-machel@vivo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3133:EE_|DM4PR11MB6527:EE_
x-ms-office365-filtering-correlation-id: 6ea027b1-54b0-4703-5038-08db874f9bb4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7QBoFw7criQ17oPVsTxTPy1o+4bU16sGnSxd4mYvkykQk8Z/esDPKZt6Y1sKbyOuo7mRJo5V6YMWtUbru+tvv4wrBipcMveKB/HwL+7JWsVMMBVYSAFEdJMEUFhCK51WlXR4cRCsL1tQS1CS90t4sY+dwVau4feSmfDnlW9ZQ+pJzK47AEU4ICf/OtS+kxy1EceHzJTDPyRcqdIKiZNBjU7UmYtf+7swF7HehvVpHOjgweBW6k9/VDAn4o7j4xa0EY7nx6JXZbvLRs6thJd7tgPQeuAS3yJFWkmLNX0FFWUuHKvVtRcvWW0dK3Fx+YDn67LPoha5VS2ivn9BCqh0BX6rXBYu0o4dFrZKt4fzXiO2msLi/cYEGdj69XhMEYUVwJo/YV+6X/O90oEpVNq7XWQkIA0XNSUwS4WdlBeQEFJ2g1QXL4rsk7wSwt0JpycflzBKyUmW906gBMIa7fNJuBIi9mDAQLENUelAbc0REUqoB3aNF5zwf4FzzEe/P7wD33VJnoSSmZY/3/Jenz/DHU9XF/U30lL7uexsevMZwvsOT9DSWXS/RUU7Mi0c5Isuu/CVK/WD+zj0rfghFdPFrYCjTDtb3ht1g5OZ29lfAk4pe1BrvquSlf4tSC05UDXx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3133.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(366004)(39860400002)(396003)(346002)(451199021)(478600001)(71200400001)(110136005)(7696005)(83380400001)(38070700005)(86362001)(33656002)(55016003)(76116006)(4744005)(9686003)(2906002)(53546011)(186003)(6506007)(316002)(66556008)(122000001)(921005)(38100700002)(26005)(82960400001)(64756008)(41300700001)(66446008)(66946007)(66476007)(4326008)(52536014)(8676002)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gmkjGYYKKvzr+1JVVQ0ZzFiEWrkbawiv0c/RHpFTJ9QOnqsWbuuCPU99kpAV?=
 =?us-ascii?Q?t3YB/vixL6lwPsxM383zjtqSli//Ibx1BAevDo9FzWIUVaqQ95d/x3QO3ZVn?=
 =?us-ascii?Q?QxVWttwoChQjqHf54QdG9qQ+GdT3gTl0fe3LGSaOTmhALQtxgYNcTIjryOG8?=
 =?us-ascii?Q?sdNzhZTIAOLwUbRmkj4PLhDFHqdKxTDpCsrcUdc7FhXNT+ZPCVq1HhsTLttW?=
 =?us-ascii?Q?VYycGwK3jjH/E7xQ/O7sWhhmBNpHyvSih0jmg3D8p8IdiDi8gAmI6+1LYDMW?=
 =?us-ascii?Q?9OZFI1RAblaxe66hv5az3IxKJbH4e+XIYY8N514XTWDsAccAvKyp3CdXRuY8?=
 =?us-ascii?Q?IizSnmyUfd2xQAuaEtZ6UqUjM6Q5IADp6QAG+LFIUr+nc9sTLuaP16pSKfQ2?=
 =?us-ascii?Q?MpvUnU6etv/bC2PEaAHa9d8m0/LzLqUCh5kP4AyCn+NTIEI+9EQksxdwBnsj?=
 =?us-ascii?Q?2EQ/B/C8O0JRORFY5g5xB0ghjvz2eH2g6d0EpZKM2a0dnOZJ/BCReoc0YSQU?=
 =?us-ascii?Q?YUpQuMEVf2aRoFANWRmiVtDOLJ0zak9mWFqSn9TbGWYZSYeMBFMF/mo4kQ80?=
 =?us-ascii?Q?RQBdcAMrUMI+uqbwa5fI4MqLJ1l62sZmrpqh/09JqoYRpkEtVgQlHHYsIIQM?=
 =?us-ascii?Q?esT1LczUxYPVDR19vKotuAv8VmP3AAL9W8L8YBFm0I3zd0CkNh3fJtxv7sjw?=
 =?us-ascii?Q?epq0BNWtoR1zGBm+p1p1+t189gB7egfzHy/iDjskoMuD6BG18XMkkgx/5PHO?=
 =?us-ascii?Q?B4GK/h9Fc8hUxF7El1jFSvYv/Pi0l12rWHk7vzP30OklnwQi1SftjonoxMMe?=
 =?us-ascii?Q?bYQ+T1ekkHVLD/CRN4Zg+soL7inDYzw57v1UlR7e19uKASxlkUL0kjuurAWr?=
 =?us-ascii?Q?9cjcbkc0eZmr3GBhfqiVyv18KnFzCowl/WTB6t3sFVZFB/8/2novkNHDihZi?=
 =?us-ascii?Q?YQB/H8H9RR/DO3e14C4XyXDvpwqjdX2Hjs/mIB0gKgcl9LW2BmP+J0LixENO?=
 =?us-ascii?Q?WoE+maeIhLWBg97m9Tu5HzYyShcPxdGBOPw+7rIGcrFzCO3GKXy6cKqkX/mJ?=
 =?us-ascii?Q?Wy2FMMG1yXtM4YkbCmKOcqTb0ysA1W3nmrwIILRwSR1S2tx64y518jY6gK9t?=
 =?us-ascii?Q?DDw/Awb8A08YlswinzQhuD1g5WvcbXVILrV5+QSEDsW7zvmh/J8hKRNyRVsl?=
 =?us-ascii?Q?4KDtF6mwkmPTMJSfqXJpESpfoHX2IWhcip+KLyBUKVAo4h3ndLudjvPC5YjQ?=
 =?us-ascii?Q?pb8/JgfZxkBCe1awQK+Q58zHlg1Y9fVUvHTCIrb1fs7mLxqNLhHdpP84L2rr?=
 =?us-ascii?Q?ZyHRqICGLnNSATPnctdwJ8O2g9Kxpzj3UgWNKyOqLRQZlaOSawuA1rHY5udR?=
 =?us-ascii?Q?y07zQ58zThgrDZibPyeR0RMiTtXTvCWu5Zwp+FG1Iwp/MqvGmdiNo/DMT7ra?=
 =?us-ascii?Q?RloGFv7uITIEc+mGs6k61Y5gvLnd39+dM/vY7X9cS8qI1+eOrVbQopVtDtaP?=
 =?us-ascii?Q?0bipIHfSoTH4r5iGPwKkfCPYtYaDLqKBlKvln0y7QYfQJC5V33OtoUYvNc4d?=
 =?us-ascii?Q?xUcd9vXPxrS0dOPWM6785cUlyq/G1Hh5B8qXh35PtfJvsEm7rq96tE8Lgkx8?=
 =?us-ascii?Q?qw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3133.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ea027b1-54b0-4703-5038-08db874f9bb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2023 05:26:58.7471 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AMO8TWKG+NzUoe8MD+dRSIQG2wvxVN2cVQBZKFNLJ/VtscR+g3jotrcKJY1e5i3NdinLrr8C3k/JheMFXi8DG+T3THh0cI+egzCTon7VkimrbJl3wGe+bAJ2htzAWut3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6527
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689658023; x=1721194023;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G10P6oQjYi30fIoM22muiQgyyTsWRNOghxog8WumFyE=;
 b=L5gL1J3/vnX58nh4jTYvZ09OeY3Y/snzgTP0/AKB3ULmGGTvJ9+RibDp
 6otSupEfZ+mgnFl14pAFBhqV1XQS1UBpNWbO7bf4Ae3z6+oMDK+sGHpbl
 7eNrWmEJJ39HyWSPDQpdbfnhL7dJxaPBXAcsd1DzTmpeQvo3TGiLsTNu8
 wldvj4Cx+0EcT9sJZsktdS/ifIcvov8uiNNjC2Q+hcbC9tehl+BVmdp+u
 p2o56oX+p5A6pOjrjdjoEgpCUmqH/dUVKoS7L5DXrChHn56Bfymwro2l1
 xQ7gV27SJeyJ+CRWM//ZJpkehIqbztJhyVoNrMZ4wrAkoiPUuXE0mrxA6
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L5gL1J3/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e:Fix an NULL vs IS_ERR()
 bug for debugfs_create_dir()
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
Cc: "opensource.kernel@vivo.com" <opensource.kernel@vivo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Wang Ming
> Sent: Thursday, July 13, 2023 7:13 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Shannon Nelson <shannon.nelson@intel.com>; Jeff Kirsher <jeffrey.t.kirsher@intel.com>; intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Cc: Wang Ming <machel@vivo.com>; opensource.kernel@vivo.com
> Subject: [Intel-wired-lan] [PATCH net v1] i40e:Fix an NULL vs IS_ERR() bug for debugfs_create_dir()
>
> The debugfs_create_dir() function returns error pointers.
> It never returns NULL. Most incorrect error checks were fixed, but the one in i40e_dbg_init() was forgotten.
>
> Fix the remaining error check.
>
> Signed-off-by: Wang Ming <machel@vivo.com>
>
> Fixes: 02e9c290814c ("i40e: debugfs interface")
> ---
> drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
