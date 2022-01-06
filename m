Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB22C485F3A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jan 2022 04:30:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 008D040950;
	Thu,  6 Jan 2022 03:29:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N3kG6cemy9ht; Thu,  6 Jan 2022 03:29:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE1A14091A;
	Thu,  6 Jan 2022 03:29:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE1251BF33D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jan 2022 03:29:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CAFD44288B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jan 2022 03:29:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rpYZPzHmqDUA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jan 2022 03:29:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 31FA54287F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jan 2022 03:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641439792; x=1672975792;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eLyNcfHKFJ4cUKZ+mbzoJtuA0Vp/I7sbqfaqnsMsIZ8=;
 b=VD4PmcXmE3GAFTbjTJaVspzkJ71+9Yg6lje8MREXeOX8ixK16H2Zbdpc
 FjSRl365esnKIZwdKaJzONltcxzvTMD8l9nbVVKYpy6mFHlw66/MlWC0o
 o1FOtiq79nDW10W0mHbNHtPIr3t638uApHSpFLBl+YXNYinNtKhO+2Xqu
 DAhvyJ5jG88xg0kflkcHChaBcEcNCmgdTZd5tUkfUrdjLv6XHS8kJn4UD
 bcpoyxo21Wkzi+Ep3lHkvUQwTYCT5N5ipZEg/bfRWipLejJkEOoLJWpVx
 s0TfBN6ZOglo++BP59xom4TuQ9dTTNC2TwCJyoyEm9JlABh72M2DXPG+q Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="328930775"
X-IronPort-AV: E=Sophos;i="5.88,265,1635231600"; d="scan'208";a="328930775"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 19:29:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,265,1635231600"; d="scan'208";a="556771206"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga001.jf.intel.com with ESMTP; 05 Jan 2022 19:29:51 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 5 Jan 2022 19:29:50 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 5 Jan 2022 19:29:50 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 5 Jan 2022 19:29:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dTN0hhY3x9JGUij2IRhHApBSWGem3zNIP2xBucyUZQCePetS+tELi1onAdSYOs11X+HyUAioO/QNPkricrWOr35RAn9NhURoADCkMLlloLPDkhiQXZTJN4g/bOtytSJ8erdV96xryrOrpriuBYkE+zovOyAgWEifkXYIaEQiwi8jwS0Lt/Du6gfwXq7KyRMQI1ONM07jXm7x9FAnVUqEI8VT2keDnzom5Lm2AqUgSGFTST7LJhjzwJ7eO5HK/oQHcqch4VULtM2UQAEIVKqNY6g4TNFaJzZznUgp1Fq7yBQdTdMNNqRj2C6GjlBqxcsDdfron4hoPMDzBgNRT0LpXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gn5QYZPGJHvQ23qHcgskhhyrII1aVWpBIQpYwM/RiC8=;
 b=CleqFQ52k58yOpwtQQebn/YkHaR5p7GY/lGebm+wOGiF/xmZQFL1lLy/J0X55tDPxR458m65ngiCyyDJz7rW2uCZfevgDWJiRiMzz1Nl2I8ZYRcLhiwrqQehgPWmTwh8JzZH+EX69ayaY6kqq5V6IYjJljfb6CoIMFX9GIRHJYuXF4fLOiDm5/FSFAFQG8ugbtKEk5GzwEtFYJhEr37b6BLThsJiX/UBR+qZEryFbXTGyj8kowGFn0edGxOcSOIfrUl+ANbzH/xz+wggUeJklEs0wjJ69xiUX1t+8CIWuu9G+MxgLmKB+q8lj4sGNnDT/F4aqVkQ4cXf3csAa5RApA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3363.namprd11.prod.outlook.com (2603:10b6:208:6f::20)
 by BL0PR11MB3090.namprd11.prod.outlook.com (2603:10b6:208:74::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.9; Thu, 6 Jan
 2022 03:29:49 +0000
Received: from BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::1cf:d232:7b8a:2d59]) by BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::1cf:d232:7b8a:2d59%3]) with mapi id 15.20.4867.009; Thu, 6 Jan 2022
 03:29:49 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Joe Damato <jdamato@fastly.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [net v2] i40e: fix unsigned stat widths
Thread-Index: AQHX7KAmJbmehPp49km7purClPaN5qxVgVeQ
Date: Thu, 6 Jan 2022 03:29:48 +0000
Message-ID: <BL0PR11MB336333C57FDBC07CBC53E915FC4C9@BL0PR11MB3363.namprd11.prod.outlook.com>
References: <202112090744.QwfPrzIW-lkp@intel.com>
 <1639014993-89752-1-git-send-email-jdamato@fastly.com>
In-Reply-To: <1639014993-89752-1-git-send-email-jdamato@fastly.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83424c71-7973-4c90-aa1e-08d9d0c4cb2f
x-ms-traffictypediagnostic: BL0PR11MB3090:EE_
x-microsoft-antispam-prvs: <BL0PR11MB3090C108F57680A3C5919A3BFC4C9@BL0PR11MB3090.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tuJUqsPWJttuIVkqdBjVD0AsD0pf78fJm/AbQcNvAGlYyF5mxGlKmoTST4pO20ODarIq44NsS8QmqNPwWPzNUdtxUcXMYhea9EY/a+jbLZjm/06xkyb4JlgPl7gR2GHr2cLmM5ClGUE3t4/jqCf5ugvKGHzHQWrsVAjr23Ta4KiOkTjvRffdyPU6er7d/3cDt84Me/Zxd/+i0Md2gmQB3BBKSBJLak8Qj8AxcVAj8PUNZITsfxh05aJWC1/pDamxH6MmUvpEB+OfuZ9SX80SsaxLkwMnF6VGJo4+cKxaDhpPze3NQjOAeV/frToN6PKmAOvE3ZOsoDUTWTkYfvbC5KBNZsoY/M3TJn5gz4VWp6UVbLfOF2nPeRdZcLEg/iYBnnCNXbwrJeS2Rm86AgMlOVgByh/mkKDvogzvZKglP4kWovhR+OOEffzffMh6UyIY+xP71FuKReQVSjrL7xQD5TGOCKx6r59uWe8rsFbMdm9B2irjabVhRbDn0hCBZqsQvJvWEg1uWoEXasrQ13UIDc7pIHPWpi5Ery4FmuXRGUpfezDtDI4KWWpps4l/3t0zTH3Dr313bFvbBTLjG9eJSQ90AMxlMsfzj33x/YEDGs2BK8EQj8GwyQQyUJRdBiT76NN116QIMKy2hsMLlQbmr0O998B2NzS1XKge4o+W0h2IPdAsJ1yG1ZU4r03YfMNnndbe1tpVv+D3rEvQGOD0oA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3363.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(55016003)(38100700002)(71200400001)(8676002)(8936002)(7696005)(52536014)(54906003)(110136005)(33656002)(508600001)(76116006)(83380400001)(66946007)(86362001)(82960400001)(9686003)(66446008)(64756008)(66476007)(4326008)(6506007)(53546011)(122000001)(66556008)(38070700005)(5660300002)(186003)(26005)(316002)(4744005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FaUcAi5AjqMuhOzr0zUmhxo43Pj6pKE0Da0jND7yj57t7JDzT8Hd7Yp6hkOP?=
 =?us-ascii?Q?WKXOjbqPcb+dSmIxm7VLcbjGNDR3rmG7YW4EotDJG6vThPUP0qclwX4JzF0+?=
 =?us-ascii?Q?cYmuG6W/gyR9LkdOVU5XgPMUNpjxLhsDfuQAw3IEEb7icofv/wqhMvs9n6dG?=
 =?us-ascii?Q?jNvmMp0QZQJVBl+AWtEteyDBhytFlDWCsAnCBo59G45aWbc+WefsyFveO69k?=
 =?us-ascii?Q?DmErjmCAkKqd3lvL8zMesdXwFVg2RN2oZnbg47Iw8/5cwKm+O2PPgoE39O3N?=
 =?us-ascii?Q?c7NRUWNMDDLMYw2SEVzW7DPc3rvzA5qc1+VrYojdy5fMxD3GkuI33OO7wz31?=
 =?us-ascii?Q?i70KA6Bp6WKMIOLImUS4Q37NyqpCxgrj5yNfAB+2kQsXGzIl+CqmkjiJ/w+p?=
 =?us-ascii?Q?4I4grQKuriX3tQWko9kbUupMDOSnQlXDoAD1LG5w2jtHZsO6vB+77Y8y6eCW?=
 =?us-ascii?Q?mJ757Vg8lIt2xQvq5U2yHqK3zz9IlKAf2RUvAENupJ/yQN32yOTnxC+/8nc/?=
 =?us-ascii?Q?50lzJ0Bwm5ucup6OL9VICTOkp0pNXMezGyJNdLoswwhqeZwhM6Mt92+5hKjq?=
 =?us-ascii?Q?m8Pb5AN3Bk+5hV9Q27YgSUakOvY7wyN+x4UkYmVhFvwshPINBNUzU1Rkh0ek?=
 =?us-ascii?Q?gsORzDWlJNoTctvwB39LrZ5cJ2kUrGv36zvI55izJgP8oTF/FsZEczAY8E4O?=
 =?us-ascii?Q?op4W+hgDxpWL77TTxber9lxsPG0IwUTHZZ94+aKuTzqwwyAs1chrC+N3LkQa?=
 =?us-ascii?Q?0WJeQ0/7QaYPjNyXw10W4CLzl+9uswLyEdvQc+602notbBH3bJQ2Kfhl12Bs?=
 =?us-ascii?Q?9H29SAzumuvIxaKsCuY7Z/5uSaFjTyaJ6n2Si8WsO7uAAWQKThsHVqyjHv5e?=
 =?us-ascii?Q?nhCt/BYO87TSTC0nbLJrLqwcHsX04MZH2Ftn4oWj3VPsrs1UE0Ne3fRb8jV6?=
 =?us-ascii?Q?FEGOVU6MJB+dAJdWGOBd2Gc/GBRFMOTW922uRt1utSloFn5bwVj2AoxgCCmE?=
 =?us-ascii?Q?KQZBV+PeK0N8r2D3HHw2XY0XShfN0NtybmKlOsBSpsfNQP8wpwrFgSRdOj8j?=
 =?us-ascii?Q?INp3AjggYS2eOi7c5KfsDlNPj8K6G5GHPLCYwpwBJNED4VFDMXPIsJr9/Gai?=
 =?us-ascii?Q?U+aXDQ7J7AmgnVsSzFNJ2EMVIuPtDMJD9QXxVZTcab83Kc/K+Rn+PGFUXQrW?=
 =?us-ascii?Q?zp2/R4Zu755vGbWz3vHGwO7+JoTx/4XP+CjY1+JBhRBjlVtBG9osFUUW57os?=
 =?us-ascii?Q?NtDwpBibUy4dnM0MK7c1bgz+yWWmERwpYb6PhcxO3DY+PTFRi3ra3c2q2mWm?=
 =?us-ascii?Q?w6rBZ9Giz3MYTXCIUZ/g5aL7eYEL5s7iY2RM6tM7IX+Ck1nqUel3Msv+USJX?=
 =?us-ascii?Q?Y7FDKJSg9mag+7uXGuGzbUtTIz8PWnMIN0qpoEw2djKqthMtFuqhXIpIRetr?=
 =?us-ascii?Q?dqmcs/BPaPylW/VqtGObmNAN+6aaTALBLOczARZF1OB1EOAvIovY6+scj5OM?=
 =?us-ascii?Q?dw4G+NHeibllF70slDiYISZD7rBN6lovM3O4hk5PWUoBBwGUTQFGw++jLGDj?=
 =?us-ascii?Q?edYd50GvQF06cxafNLie0L1qRFPQbeW/Z1cIZiw9jBHTTu06HmECqoUeGxB9?=
 =?us-ascii?Q?OQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3363.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83424c71-7973-4c90-aa1e-08d9d0c4cb2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2022 03:29:49.0076 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JFdtc7qhavEO8UEJE93Lj24obyFnwEbniNpAzSdH5Qj3M6J6A0zJvNJQ5cYrQvCtpJzRRLpZ2lBXi3WmO0sZPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3090
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net v2] i40e: fix unsigned stat widths
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Joe Damato <jdamato@fastly.com>
> Sent: Thursday, December 9, 2021 7:27 AM
> To: netdev@vger.kernel.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org;
> kuba@kernel.org; davem@davemloft.net; Joe Damato <jdamato@fastly.com>
> Subject: [net v2] i40e: fix unsigned stat widths
> 
> Change i40e_update_vsi_stats and struct i40e_vsi to use u64 fields to match
> the width of the stats counters in struct i40e_rx_queue_stats.
> 
> Update debugfs code to use the correct format specifier for u64.
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> Reported-by: kernel test robot <lkp@intel.com>
> ---
>  v1 -> v2: make tx_restart and tx_busy also u64, and fix format specifiers in
>            debugfs code
> 
>  drivers/net/ethernet/intel/i40e/i40e.h         | 8 ++++----
>  drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c    | 4 ++--
>  3 files changed, 7 insertions(+), 7 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
