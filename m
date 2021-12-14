Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2AB473BFD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 05:32:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B544660B68;
	Tue, 14 Dec 2021 04:32:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id reThDs6JY26d; Tue, 14 Dec 2021 04:32:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF84F60A9D;
	Tue, 14 Dec 2021 04:32:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 91FE41BF359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 04:32:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 81C9160A9D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 04:32:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oos3JGFuyGpm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 04:31:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C24276079D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 04:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639456319; x=1670992319;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rAu+1FZdYG0hnaBYc2ixdsBoyJtUeDru1mSEPccfN0Y=;
 b=PSc9W5k1CnT+fA2jEChEiuqGPNyJHQUFTHwgvIq+yqrlzI8xKusOBQFT
 fTlGE/rStLGIC8HR5dYg6a+yY2duuFjxPokgBk0BI4Ls8KLZpZ326gfZy
 6IkrLFZ0ZSGGbhdg78VsNsva2I+Jm7GC+FTVWLVWK7HScL8ZxPZ0aKznV
 trlt5ESBtG4KyZRn4MRkadPqmKXfUSqRtlp7YF7ePMrct+xCWC7GowQlh
 yyoXx2MHpD9Op/WcMqtrU+f7mQxpum8b/POwRuzzn/oEC2MZv9Noe3StK
 RnrNHJSBwJE2S2PMgbUEYYugWqLgy+KX+K8+7GierkML9NY4yBE/YZmQv A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="238841192"
X-IronPort-AV: E=Sophos;i="5.88,204,1635231600"; d="scan'208";a="238841192"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 20:31:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,204,1635231600"; d="scan'208";a="661150598"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga001.fm.intel.com with ESMTP; 13 Dec 2021 20:31:58 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 20:31:57 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 20:31:57 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 13 Dec 2021 20:31:57 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 13 Dec 2021 20:31:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TgsdePif5ZMdB1B5OjDRBdGHidzLVhcPJLIHew/bIPUcbKw3SqMwOnO+1It/V4MYsNws5XchI8u+4bibl7yP9rDs66SI4aQFkltYIzVAk0N7ttujepI/UGBw0vR/jkMGdEOwKIF9MfSasQxoGqg4G/FZf5fDgJFI7a24bbBmd/DsHGiP6oiIxiYQfozo1m7oIkT1+h4vkCIOi7FfYTzYgdJgF+mCCJSHUOUqApOSOxbpYfCynS6wreEVFxzClxKmDV0+qhRXN8sfGszlK821icqA5shPNw4mEpX9mcC9aL1fIjL9Te5bCmXNLzIpjh1MkPvLKPyNrlNbqIr+u+SFfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WY6VGUaXNSfCHkiEVjhSa+Sj/j8kcF4oGLl5FEJzkQQ=;
 b=U5j154dGSza68JwGZGsWsXmiGn64WnuijWTTeZBD/TBw70OqtZ5PZPUHaH4yPXanTcA3piNoD2khN2GPT/EUfVMCXE6ZSE9yTRasvFGLKbSoeKuG0naG6LgXFOAaYZvN/Nq0rqeDJh3NteJBQwnBJkAyt3FjvZ8mEiAiNdcdnwdw1oopORD6TczAv++5oos2otwBnGxYUyv35fanKJmxSxKIp2fLsBnbicRh2gkZM7Z642st6nvp7ZJVLYmufr3XEJfqPYSqgWRSPJacAkjhLW8v7SzQy1prKRiG1eTEsSeLZDTRvzniPfLakYpPtKZTPFwMqZS1IYgH1Gk/xVDxpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WY6VGUaXNSfCHkiEVjhSa+Sj/j8kcF4oGLl5FEJzkQQ=;
 b=los4hfhToEhYDWfXjK3ylrJarIGPBuBZzGptJA+tgR6f8Fk7/u6kfZGiRHhiju65viyxADhyBN3iM52+zppW+ssNDz20yvjpz3Mwg8WjpzmNvDVIzw+O6TN71KQXDh2Ak0g755r6j2mxcBfauyaTm910hFlss/QAoMVyNkhRUL0=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3205.namprd11.prod.outlook.com (2603:10b6:a03:1e::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.16; Tue, 14 Dec
 2021 04:31:56 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%4]) with mapi id 15.20.4778.015; Tue, 14 Dec 2021
 04:31:56 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 06/14] ice: Use the proto
 argument for VLAN ops
Thread-Index: AQHX55tlStRzgsWaOkG2tZ17BLCop6wxd5xw
Date: Tue, 14 Dec 2021 04:31:55 +0000
Message-ID: <BYAPR11MB336760BBC7CA20951578B575FC759@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211202163852.36436-1-anthony.l.nguyen@intel.com>
 <20211202163852.36436-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20211202163852.36436-6-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 39aff913-3d26-48b9-af60-08d9bebaa935
x-ms-traffictypediagnostic: BYAPR11MB3205:EE_
x-microsoft-antispam-prvs: <BYAPR11MB3205C8DFFEBBCFAD63847AD8FC759@BYAPR11MB3205.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z67aia7WoRftJsUxZFv7TGdJBfbjpMqfTIkn6qqTCPI3O7X4MnC2VmKXVpOlRbGmsfn9e9t8Qn/cqTvBZvM/x/fcBctR65c0Nqp1HWTm2v7jdJ82fVampp5Ff4WRElCgvrG5vyb8PCxlwOM7Y11RObmy5Ul0mtQV8zrxKpy9jiAtcPp04UCI31GelXgkRUIr7ntOeNwjNqq9KR44WkWAm3rVf+6dqjH3zc8vDU0I0EhIkyKYfYgIhJjYQomX+ZnnikuHa7hEwAh+hJE+bzBir8tXzTaSM0kJxarJJhnkfG+MGg7/Fsfd7gbTp+oN47Asi6hGat05EvW8VcJXefgwPQOFEYvQvIunsnF92XhuDQFEsDkP7A8DyKL2VIszI/h3PHR/IYV650hqf2GKAIcsRJTvFA5yoc2kUF2uonR9NA+IdGIxEMuv5hVWfu0PWuJ2mSmYr+VsUp3Lr/r8NgpS0s6WSd9tvOZHU7Wee+qGOvGIPNq64LvBO26rOr/NYg4rHg3fthEu9t7o4YDwnAJXmadzxTeNjRGYIMdiWEjrDnPV+2PLLJrH7cgsGy1E/XhDSRyxjeLu2iBPSYeswSchpCF8tJYMAUm1v5/Jh8P39FoxhQDxXSH4f/ds6L+QcG1UJxPNufAS60YR9RvqkPuWhEKEzV+vRbn+ezlXMos6FDswNAlclhp2p/7pIJN5Uvc81pdapC2u417INO8UD1Ol0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(2906002)(55236004)(55016003)(122000001)(64756008)(5660300002)(76116006)(66556008)(83380400001)(71200400001)(66446008)(6506007)(26005)(82960400001)(66946007)(38070700005)(53546011)(8936002)(110136005)(8676002)(33656002)(7696005)(52536014)(316002)(86362001)(38100700002)(66476007)(186003)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3SvRUETDt7SPgOj/h9CouWlKo9BvsjeTiL1Sj8yMyZm8oX2W9QG1yK0V/8d1?=
 =?us-ascii?Q?Fr1otZGqO21Zhj+mk5fGOlZ3Nma0mtH3tqGyI57owWjzzTYjrVjpa7ARu971?=
 =?us-ascii?Q?eEhXc4xobdUMUHGSwHtB3auMJeVNIjwumhofHXLTfaQQPCOf5hUp/Eqzwd3u?=
 =?us-ascii?Q?AmxgUvAzzkvTxWFZSwKQYqQkk+CL++a11Q52G2i8aSwkExIRbF0CroLj6x/H?=
 =?us-ascii?Q?OwahcTI3pVh31pyb02DkCrMTk6TFeAMWzv7VvOVbZP2Oj2bwT2okHbTsWAZK?=
 =?us-ascii?Q?jPXlhNbx2+OFhc7OcxkOqJ5eoLm9rBXX6xG5/H7Y8tPy3r5EuK6mUQKEfRVj?=
 =?us-ascii?Q?fc0XxNfP+/lG7B55a77kQ0YQreLuA0/uPEvPDqGHA46LUEt47Mzty/duf630?=
 =?us-ascii?Q?ULNdQl9MEoHOa+tF3ODbDF1TWoux6NBXZrlkCceeb4xlJm92y1rXzg6YLiUO?=
 =?us-ascii?Q?jAkFMnXV8/Vyjdtk4pcc+9EgXc5lPrtUd8sRnQ6FFbkkQxy8sxvJEYhXK35X?=
 =?us-ascii?Q?1nISEzOm3uHN/jf1GJJ9t3dLyqCiFArYjlpZLJ4HUhx2BpYHK7I4vtdK+Cq5?=
 =?us-ascii?Q?5Sw0PF9YvpRDbBdRKavYyrWcFHa4fP72FUG4yHUYtT3VxxvnK0B5S9EdBs0h?=
 =?us-ascii?Q?tQ3n5dE9L9cBUmY8cmp/8OQEV7iMnLxUzXGarWIfC7W00OAnXl2pIow0p0Ay?=
 =?us-ascii?Q?7FxoOx1mUD8taZTcY6YDksJv9YUC7pJikmabt/urMnOtEgk9n4vO79IBroNH?=
 =?us-ascii?Q?f4cAUFEMyDsvn1HVIrDyh6RW2USARdHsBIHnj/ejPY9Wq3IdJrUV8SCuP+j+?=
 =?us-ascii?Q?fVGQ+xe/JLqWUtvg1nUye9ksW2YRxuJ3e2ydSQjjEiLtkqs7GH73NirWEkC5?=
 =?us-ascii?Q?nuP3dQHl6TkOZHsua3A7vEa79PW4OzI2EhxxwU4lW4k/x+MaCP8r2WuIkWQI?=
 =?us-ascii?Q?A5Uv3DpID7DLUrfnjVrWhfMVnnwgUxtG7S7ynOzf0UaVJhk/UMs0QoIIxeNO?=
 =?us-ascii?Q?OfRjnT2yuVfN2wpl5Wa7KV1KmlZ9h5irzSNjSKMfukxK4K2lPmXFyxnHF8Iy?=
 =?us-ascii?Q?FKGctWqLZe/mJK5Cfkq2mlS7roy+cDV7IKWl/VLYpcs8rakFgRBB1SVNznBG?=
 =?us-ascii?Q?+wBR6SYM3aFIIiG1+USQfs/qxpR86yFClegdz1cCjhrp8U1jIsGOnuEZdhik?=
 =?us-ascii?Q?qQPi8BsYpfU+9JqxZnXz/4BJ62wzcm2LYbSTASA0QQZB5PPb2Ah45TaVXjRG?=
 =?us-ascii?Q?dzR8UpBSjCu44b2TaawyNY0hpZSd8+hDmCRblVsrHg/W9jUsj9/I61qAEff4?=
 =?us-ascii?Q?a3YSCvASeAVND9zGB7SRHyR+crOrsbKX5mjkZHlEAodRL3uosr8qKnPOIcp0?=
 =?us-ascii?Q?XwH047j5zuM6oR2hEsqOeZVD1KdnyvoOIJdrwGjOOeP6u9MFeNtKfUSIcJga?=
 =?us-ascii?Q?DdEcCUluLRVGvyEAb/2wUkXm/kK0wP+KSra5E+8Ut2iWf8+Z8zE2k5aW1qr8?=
 =?us-ascii?Q?yMx7i5/Pb/b0CftmmB8TdyiOZklV8KpU/LRmGDFEN0qrmeCuwVnpVVdregeY?=
 =?us-ascii?Q?+pZJVBS3Q/4My4afKek+t3s3PIBauFbBKeGU1DQkXqSRIDMGqfW6dhjj1u1I?=
 =?us-ascii?Q?qg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39aff913-3d26-48b9-af60-08d9bebaa935
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2021 04:31:56.0448 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8yQaA7PPGCGEoJlpHMM9nK+ahwJwmhYMxiHE5wvab4AIGWpO3v/rZNbXD7yTG6eONLPyONMqrrkzmSO6x+qZHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3205
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 06/14] ice: Use the proto
 argument for VLAN ops
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Thursday, December 2, 2021 10:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 06/14] ice: Use the proto
> argument for VLAN ops
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently the proto argument is unused. This is because the driver only
> supports 802.1Q VLAN filtering. This policy is enforced via netdev features that
> the driver sets up when configuring the netdev, so the proto argument won't
> ever be anything other than 802.1Q. However, this will allow for future
> iterations of the driver to seemlessly support 802.1ad filtering. Begin using the
> proto argument and extend the related structures to support its use.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fltr.c     |  2 +
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  2 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     | 22 ++++-----
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  5 ++
>  drivers/net/ethernet/intel/ice/ice_switch.h   |  2 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 10 ++--
> .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  2 +-
>  drivers/net/ethernet/intel/ice/ice_vlan.h     |  3 +-
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 48 ++++++++++++++++++-
> .../net/ethernet/intel/ice/ice_vsi_vlan_lib.h |  4 +-
> .../net/ethernet/intel/ice/ice_vsi_vlan_ops.h |  4 +-
>  11 files changed, 78 insertions(+), 26 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
