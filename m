Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 355D333D978
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 17:32:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2F706F672;
	Tue, 16 Mar 2021 16:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xUXlVwVvqh8G; Tue, 16 Mar 2021 16:32:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A85ED60664;
	Tue, 16 Mar 2021 16:32:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1383D1BF97D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:32:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CCD96431A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:32:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uC3k6IcTeQtX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Mar 2021 16:32:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 40D2D431A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:32:14 +0000 (UTC)
IronPort-SDR: fyaZq6dFSRMUYKeM1TKkqV9h7snHiqQW2lwbneAn3wb/Pfx/YrdbvId/243Wf9EgBVJZ6K2W7g
 f9+JbzE3kZPA==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="250655773"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="250655773"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 09:31:59 -0700
IronPort-SDR: fT8DZfvftvknLLPaEuKfkiYvh3xLamfr0b1eQ5h+HIyAsmi8w/ijXhvp5UP0SXEO+UPukqNXpg
 1xooJFeRnyzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="433073066"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 16 Mar 2021 09:31:59 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 09:31:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 16 Mar 2021 09:31:58 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 16 Mar 2021 09:31:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=izFUt0g+Hm1Ezfq1Vjrp2pXNuCEO5FHQzR4VtY1tlpskgYkc0s+l/Zf7DxJQeQFY3KafK1bJyTBpT58WEjQwDd1xyGvBmtzve5We1/vhWtqBTATh1yMmPRQdEH6C4oP3YQ6uLT/mQQBzKizqGTXwIaBqFEjZEHHmEOXHtNrAWgv9BW4EYwrcKs+RRulIHiUfUp8k9333LI9jwpWEbE+6rBpqN01SdrI7CNnPopEqUUT6HN5ihwwOqiILEVJu8F+QtI6JOMSzMN/RL1ONnIf8/OaxzRjltaHdEtA9qIb1pZs88TQ589YbdLlAgl0FluewrXkrIgDXd80/42p3ySMG+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iqd6kCZdeTGuX9qnY7KqMAbCwDEDsR7ktExvQatJtEE=;
 b=mpgpYy47Z9gr+p+fbEnPkQr/ZqSc5VMaATP/AYgRsnjznPRY6psZz70w2y1AH+b1AkN7SO0cKrUWD/jEk9XbJRRWIr4Np/aqYDC9opo5527H+01ihk2aQhWBY6psqiSTG9FMvlKN3ZZY5i1KMLPqeMQfIgkDof/SqNbHqbBCrg3dDsxMUzvWOUTSh1amA/m0QWi2L/17eWyDiczzZbtk6dZzGzS8UPTL98CQDHKYaxGDsAFh2yNRm2LlVsHryrRi6tSfqVcVJJCDTWtToVXYt9tZzJDiZ8/ti4QcNp7xQEFoHjLULrDRHheb5b5LfejJqQpB0KImqAciH9BoR7N/bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iqd6kCZdeTGuX9qnY7KqMAbCwDEDsR7ktExvQatJtEE=;
 b=FoCGJrtXYh0zxvtliZljH5jV19QNx3anmKMlcAk5NYHQUo1spqpcQ+73dZRzrH4uUXlO4oHTCvBZ8NkGKQCG16zkciaiRQad9E06zerQAgyFCApnQy2gSHKEFdz1pyNS/tqUQH+ac39OfZzRGQ8XcLE21EtuC/+2hpg+FEtdGN8=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN6PR1101MB2258.namprd11.prod.outlook.com (2603:10b6:405:5b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31; Tue, 16 Mar
 2021 16:31:53 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Tue, 16 Mar 2021
 16:31:53 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Patch v5 17/18] iavf: Support Ethernet Type Flow Director
 filters
Thread-Index: AQHXFJQEPpWwFqVx3EKnv4yUuuwVw6qG2oBw
Date: Tue, 16 Mar 2021 16:31:53 +0000
Message-ID: <BN8PR11MB3795C42ADD6041DAD7B8EE31F76B9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-18-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-18-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.198.147.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dc6a553a-f5f5-47e9-1654-08d8e8990201
x-ms-traffictypediagnostic: BN6PR1101MB2258:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR1101MB2258EEEDAB7FFDB73BF3B25EF76B9@BN6PR1101MB2258.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1DZd/bW+DSFjAEdlak28B7ElIMl+GzrU93j51qtFb84XdMQmh7iF2eQ96LKhCGna40V9bfZy4uZ5JtpsGokbi7rA4ATVFRtZPEzof5eiNYIFwF0ZRgcPtXF20kMF3jMtGaCJIQSc+6ZmD/PRd1VCzlJ8gGyEzHhnZ2pVzmhU1JMineESRc8tOJhmfHxMV92YmUBz8E39hpGVMCUFlIJn596YFU0w8XjdcscfTGy8jcJ4Ejxlr0oQ+XPSBu09owxdyjbRcTEuNQksCwpqPU4EPa57t6/RsVRQxX6V9DUqyTZzN41PDjnsPOFS/eamCziUJhbC97R9uJPuTZncVvdi3SkR92o7mZRvjGFiF5N0p6cCVHlwnXRpqKVyrE7cSg+aAR1MdNKmPhHNw0sXguh2EJmfNX9TgZ1cnD4uBfq4z2YqxlHVuYGR+yI77/wXDVS6Vc2ocAQwjSRIocUJTUarJ0q2CsytnzkcFUD8WbvJd2GiLm9n53Q0ObuN3moQC8dJXG6r8aW7wQLbRUhPBNW2F6eIqWYG4nGjeN7KZ2q7ri3clt8txcar5WZ+1NC1dHko
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39860400002)(396003)(366004)(376002)(346002)(6916009)(8676002)(66476007)(5660300002)(71200400001)(6506007)(52536014)(66556008)(4326008)(26005)(54906003)(107886003)(186003)(478600001)(76116006)(9686003)(64756008)(66446008)(8936002)(7696005)(53546011)(2906002)(83380400001)(33656002)(86362001)(316002)(4744005)(66946007)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?2ZiJgr2j6hhf8cy+PVINs+y7wrTiThjEqkp4TmQxTjRQlXHkZI3r/wISWjIO?=
 =?us-ascii?Q?eP3NKhqgeg4S1qesYwF4qKUVrPfEbTn7wDAiNgAFZB8Ph9SyrCUuIoucj0rn?=
 =?us-ascii?Q?wNHQUuJEjaBrJ6vlINTPXeyFi2zIJqFe7QCgnWTEIGD2UceThrel+tx0jhWI?=
 =?us-ascii?Q?4mL89X0vD3ta54LK4CJC1xsgdCrRxbDzojk2dkfzMjqP2uaLeemYxzoTKyMb?=
 =?us-ascii?Q?42SYKvorFVxUogUElWf/Hza9+tHhnIUa/zWJST3X/OTO+WfVT30+daQ7Lt2t?=
 =?us-ascii?Q?qWtfZfbdYOO8/J/XBwZ8NkLZ3DBI7nwuwfkP/s2uXRXhoEpJZcotCV7MTLV2?=
 =?us-ascii?Q?p3Ngwy7M+jm3yzwpbxiLg9V4GqyDFpyGoOu6ENGaeKnNZqC7QQHmcOYDkG2O?=
 =?us-ascii?Q?lif63ChqiH4aFe4/KvdAiZh8u4ieAU65e1+TMRUcfb7IurVk2kNUGpuhFAo7?=
 =?us-ascii?Q?OEZD+syWAcvRpxdPJlDnOBaoQ2gkVMHwjcDI5rwnNiz6DIgXCjddqhMP31Bt?=
 =?us-ascii?Q?YLzDnOWX6mVvO/FeXDipYk75GCt4OTGNfb/aUYdQjwqoZzDdxNLLV9v5rfaz?=
 =?us-ascii?Q?FonJuHRw9hZFpA9ZUcdH0DcU8eu8wk3ngMoSJ+rQmelwfxrm0yaSbIlkwme6?=
 =?us-ascii?Q?sL3uNaJmi90HbKFsfWAnYDfCsJGMlPwz4S1NbGoy1xvJe12ewQzgIg4LZH/x?=
 =?us-ascii?Q?zrphIxm/FXSedM/MuFxY2Ts4d6/Ogx9YtbhrZ6O68REmzlauwmpmkhJHoNcx?=
 =?us-ascii?Q?SZ1OXR9480yhW0D+8ZiSQv5I0VDj1jfrDH9nr3+2+nsTVoazwUJWASEStzVP?=
 =?us-ascii?Q?jw1x0gPqDlx28w5489nDJyF2fVDMRKYAEJaGw3wOTMlweA4K1wmHxi10VqjR?=
 =?us-ascii?Q?UVYNeJElrfch4oU9leljkTPp67/E6EBw91FNMIoFxt7Qa/jKNT2QKAmVAMiY?=
 =?us-ascii?Q?OyGCR+HmM2MPME09zEdLccyQ6C8dr1lmBUV5XvbM0nCrqoLRJ9gtEpvWtPSP?=
 =?us-ascii?Q?v8WeC4DHUQtZ6gV+/uBjnaUR+FuRCn/JnFS2xpOuVR7sRuuZbds9t4AXgaFP?=
 =?us-ascii?Q?caecTsh/2f5UHI0M65fUa4HSAWloQhZ7IJG59XqD5poWvvY8uPRGIxFriMkY?=
 =?us-ascii?Q?WW3U/tvdoc0EKmTIruD6lD7Cl8Qy7LYA6xnzKWLYo6x/UIB7T/Dha0MAI8zh?=
 =?us-ascii?Q?Cj/c3winGtqq7wmUxFzXgGp1JjyiYl0VhHbwxTaCp2RQ/AhnH/9bYfiipgGN?=
 =?us-ascii?Q?ytsv1P078PdRAh37oNBvbUV6/01O6n1aN6hqp6gkkGK1TxG8jfY+Ek+k7T5Q?=
 =?us-ascii?Q?1opuxnRI0UB4foCbpdHBtyzE?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc6a553a-f5f5-47e9-1654-08d8e8990201
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2021 16:31:53.2402 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XFwlgmXggglSQ5w+F0DeVdkn55ZUgRFZjYSlMtIHgl0XPBdcqjWjaz5z95A5JzJT/3DVqk4E13dmzm+Lxo95/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2258
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 17/18] iavf: Support Ethernet Type
 Flow Director filters
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: Tuesday, March 9, 2021 11:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Liang, Cunming <cunming.liang@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Wang, Haiyue <haiyue.wang@intel.com>
> Subject: [Patch v5 17/18] iavf: Support Ethernet Type Flow Director filters
> 
> Support the addition and deletion of Ethernet filters.
> 
> Supported fields are: proto
> Supported flow-types are: ether
> 
> Example usage:
> ethtool -N ens787f0v0 flow-type ether proto 0x8863 action 6
> ethtool -N ens787f0v0 flow-type ether proto 0x8864 action 7
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 12 ++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_fdir.c   | 23 ++++++++++++++++++-
>  drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  8 +++++++
>  3 files changed, 42 insertions(+), 1 deletion(-)
> 

Re-send to Bo, as a new member.

> --
> 2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
