Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFADC939C02
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 09:54:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BAE380592;
	Tue, 23 Jul 2024 07:54:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MF_ftbXKPWqR; Tue, 23 Jul 2024 07:54:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA34F80596
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721721294;
	bh=5bBGC0hB8wmFfXB9SEjZ2VoS6Qo9XP2l+APMiB45F8c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ft5Ka7Kbv73jKB52F9OshDkmuqsBQoHaozHQ15Wurt/2wM051sf01MBSQJPDCv7Is
	 cV8vpn1hASx3qYuMknPCMKgcXDTPL6Q3jJ/QkI0UQg23OWY8g07WLyEMjvRv+KNucq
	 TvHHxtYb1op/vVnT5ljvGxww3MnwV8T7u9TUmeViCoLn4r7Re/dQxJGK9WAZnjoR/u
	 cG/vbAwlq4oMIaXY8XNFLFdPT6g+7/EcbKjZx6ACVDqvdt0Qp3CZNLxSV8yvyGbf/i
	 F+ZPCGcGTHVgIVuUL4+rjvGg603myWHnuSbey9jBkB6MgpV1Rcxn+27CDJouG9CDoL
	 5wqvl6in709Qw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA34F80596;
	Tue, 23 Jul 2024 07:54:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D21E91BF296
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:54:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CAC42401C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:54:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yYoi4gv5c-B9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 07:54:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 05551401C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05551401C1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 05551401C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:54:49 +0000 (UTC)
X-CSE-ConnectionGUID: lzF/yeV7RcCoPWFv7P3mIQ==
X-CSE-MsgGUID: izD2QJweT3uPnWhGTNGCxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19512014"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19512014"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 00:54:49 -0700
X-CSE-ConnectionGUID: L/Ay/hR1QyCrpeBxzKGQ1Q==
X-CSE-MsgGUID: v/9vjy2dS+Wl8wHK3DTx3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="51856932"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 00:54:49 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 00:54:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 00:54:48 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 00:54:48 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 00:54:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jS62/AEe+p+WqN5ZRasEUXOXGM/JVR/ECSlIIKpgJHYllAxlZcHdtq+am1LNjrc5kzdUz7EfpgVXoGgAIjNu8TgUeUKGtgFsa3WuAqkxgwHoywJT7Cycztu+hArtfvY5QNn7UDoQglGaHsgE9EVqNGjYLEADq0jqyk2SXrOsQVkXXQcibBfVwQ77BJ6NV4TasDQdKRRmbJpStKXlwCt4iFzHZaphFoxfOEMsitt/b/G+V8snXKouUdkue+CeN69UWZpHjLTm0RDXN+ER0Rd7Ft2lSO/MnlfV/3ugIAy0LOSNSX4DOCUyvAkONOc2omC+aVDgOjQcyi7kWiJ2BRDH+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5bBGC0hB8wmFfXB9SEjZ2VoS6Qo9XP2l+APMiB45F8c=;
 b=tyTr1r9rPlW77040H3q3f5aEotrW+fJqYJKF2JBq15Bxxj1BpkrbUAWM0f1XH1Qa7cC5xsKKYO+vzfWZuIZdKQ468Z6MkqYYMcNvQa1Ya6mSbhM90EEgIbOPHoagHT3HiFtyo28JnMiPuhTChUz0k6Z+Jr/mNBmPvFFJtyo6ig96s0y/3A8ywumS/rQ1ASp/5FOorYuhLVhZQiuPoLHQkRdBbM//h6tQdqz39EKrotdgg3oxs4bS1qFWr0L5M2oLJfls3DC3XecaUzhaIH0eGwb3Q/3gG7nZcZKD42dL2uPPXlNLlf6jTnOEuHG7eh2qbvf9hX6+5UZrS3Vn5b79cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DM4PR11MB5325.namprd11.prod.outlook.com (2603:10b6:5:390::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.14; Tue, 23 Jul
 2024 07:54:40 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 07:54:40 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Zaki, Ahmed" <ahmed.zaki@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 02/13] ice: parse and init
 various DDP parser sections
Thread-Index: AQHasGf1mAi8rh1TrEaKOA6+FsNAgrGxWBAAgFLyLrA=
Date: Tue, 23 Jul 2024 07:54:39 +0000
Message-ID: <SJ0PR11MB5865EEEBECA6DA8BA3216B328FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
 <20240527185810.3077299-3-ahmed.zaki@intel.com>
 <20240531131416.GE123401@kernel.org>
In-Reply-To: <20240531131416.GE123401@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DM4PR11MB5325:EE_
x-ms-office365-filtering-correlation-id: cc430c03-681c-4ce5-dd04-08dcaaecb4a7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Xe6/gV43qljDhXpT587UZ0HGdyh9qEuh7PgOJbFqCmOP23pTR7d7mu0n9E2u?=
 =?us-ascii?Q?uDmFQJCJ3g/LtUduXiEZdfl+yV0DZaGLhh6bjKbJFTHAoRp+3P+arTirmmC8?=
 =?us-ascii?Q?p7X5G0oYTgemwVlNdTiDfXpwC+8XCWqQ7mUKk/YoGNxZvzAWnvtI3iJm6NbB?=
 =?us-ascii?Q?Zse8Ctvxpj2VHZ30KmhU23R6zmfa+9bBsOC8ScJE/aX3zpSV3mYf8U4lbvPy?=
 =?us-ascii?Q?LQ1ytfKTpdywgq4NnWYjL9hNx7zfs+bqSLFE6c2YU9HMU+qVMX+Gj8VKqsNi?=
 =?us-ascii?Q?9VKMqiKaKL9dlNdqOi77QEhOl18HkxtLWakiaNXpPGV0Mqarbb5xlWLNOgq3?=
 =?us-ascii?Q?C9d90CMlOIB+KIG+EE4KdJnkulqUzMqugC5JkNzLJQEf8U/wxpvx5YUOVEK/?=
 =?us-ascii?Q?PpICc3ycZhgrBkab1nwrGerWb36Jz4r/QzzlQXQ5eexfYsZXDYFV4iLhY0rp?=
 =?us-ascii?Q?aBaz/rvIMC4jUdE4esm6bYJ9k5kwOXT1rqSNie5LdLC4Hd7EO5zJJ6nxGdD3?=
 =?us-ascii?Q?j4JTXfYH/gIasaiKhW1FK4c9wzAS73Wk9BmwaouM9H1DMskVIwF0oAGlvNVm?=
 =?us-ascii?Q?HfAf+JH0cUmUQ1tUwuv4ciQuk10VH76kpVRNBNfVUIMAtLLtZVh7TKA8eViU?=
 =?us-ascii?Q?u5QqEc/594+xO6tMJyCQzv5deiTAFRtbtDbmdUqHgi/m6BhaT0YofmnF5WVn?=
 =?us-ascii?Q?ylG4FLeTgYB38/FxVmih2Wb8HNeWjb6hcVzHQaIN83crcUL52sqy9g+MO5rl?=
 =?us-ascii?Q?hGBU36RwJ4D5sLG6V5YyndlpnNGWIjqoi5W2jhl5ZWUwQf1P2ZuYnzB4n69k?=
 =?us-ascii?Q?x3kXfz9+SFi0pFeCzFC5gIOZj6FMy1E5+R61ZrN3DvE70fwKhvLTv74gGqir?=
 =?us-ascii?Q?axUQ4vIccPnmIZpsZ9a4oiG4NJDuM1JM4jV208jl2C5QyBUgSYFeMx5WLyG9?=
 =?us-ascii?Q?Xj/CQm+xnEpI4eCjEP0L1y5FKyaxDO8sH0AiScO9spD2JZJNswRB6LKqa+a6?=
 =?us-ascii?Q?521e2z7eaPo8JUgIbNolUyTjxL4SU4Ymd0+AjHrr2qQYWDdsWmpHdy02QIbB?=
 =?us-ascii?Q?PCFx6LhZZNNDh5sOkxAhTPv0JyRxZQhcAkro2u2b88b8Y+kBvEovnQH3fN+c?=
 =?us-ascii?Q?ZiZFNR8FaWnQPmr88BteiMVvb1yMsa65Y9+km/2yCAE/qxTk0h552O5IXChh?=
 =?us-ascii?Q?EtFa8sJM0c0MljM5ev3OvXbTJEmOEi2sJQH4gj3AMnnbX4ko96oIJRXnWzjw?=
 =?us-ascii?Q?DLxZFHqwaF2h3NReYlNZcux8X6udgDGRoVJQjJpfnji1K39kRqjKDKYQ0XGg?=
 =?us-ascii?Q?aTJAQC4jeqJrwESn69g4ZodXYTytr+MePAS03Fao3JPXMwzQ4ANE43jGHpUQ?=
 =?us-ascii?Q?SL6YInGOZ49c3FmAX+PUrURpM8b0vOcLZj+l1xJ0natwEHkqTA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?r6RRskW/Ep04h6wssEriZALDkdJ1XjgzcNEAYh7B0yrro/j/piypWK+HXWnO?=
 =?us-ascii?Q?qPgfjSk7FcTfDNAbDfbTod0bqRsNnx2QYju48qJmIrWjfr1xQm8sMra/T5UI?=
 =?us-ascii?Q?TEl7wkPYE9XH9EDIveNqdOJMALXrcmwd5kikRwsUqYG+dQLwGzd8tkWLJi08?=
 =?us-ascii?Q?Gd48EZ+6/ZJFXciBCktAmKEdOhXkvJJ+Ad8VgexsezPdyTKvggU+r0ksUJWr?=
 =?us-ascii?Q?K7/2FgC9suCFXBpyaH9g4khvP/FAZRcsyvD/iWzidbj85rhQAG/iVs6h1606?=
 =?us-ascii?Q?o2CZYUnZazyGCDJNYzYfP/6WHPJqudajH0S904DxJxZWEV/2nL0nh/1u+jQ/?=
 =?us-ascii?Q?XPEo2LA/CAXuPQ2P+a67iqNyxDV0AsFXjfyaPW0xhqXIYjnWlLzD6o2gIuMJ?=
 =?us-ascii?Q?ojKRMM6qTh1dLNeAVLxp3oCI4viR7P0eVBZUdBopCWq8JVme34Kvo3md1QTK?=
 =?us-ascii?Q?242WGPMwd3Gq3c99/I3pWdQYso2e2DjVSHmI2QeoGSW/EFAU9nssHC+jZRyz?=
 =?us-ascii?Q?G/2osDWgdyS3SwSrbaHBTkyPzjZMlC12q3aeSrWEB/K6aYSSDBSO4gVF8CR3?=
 =?us-ascii?Q?q8OOzczPLbA8dvbbT9r03VaCi4qWZoWK68Q0Hb3BvP9gp4in+uMCxnwbTYwg?=
 =?us-ascii?Q?f7H6TbyAYUNwk1vck90YEAcpimpoQxSbeC70wYPPWclwOXSwbrJ3qaI1koaz?=
 =?us-ascii?Q?kAs5+Hgu6RhLfl4KN3KwpQY34/80m+SQWPvCTNNpCtpzeJRXzbNKZB0i7f7L?=
 =?us-ascii?Q?MH9LqdbQXxkyqoo9y8c5cwk8oMCp3k11gz3wkUt3TQUmearhb6qp8NLYneM0?=
 =?us-ascii?Q?S8moQSx82bapRUopq+Jb/uywDz4riH4C4Ru2e01wi2mrlRjlBVKYO3hszwXJ?=
 =?us-ascii?Q?QyPvC+4yIBODXdR23prvTl9BzkhMrailXe2PMYW1ZJ2nz2tNaSjVmNjRyRgc?=
 =?us-ascii?Q?XckDpZ5gHa3Tx7vb6LMeKw0CZ8EvkeDYu5RChSpEJ3lnttxjXJ6uE4Xj/8d5?=
 =?us-ascii?Q?UvHm3nJsZFJXAIXufbFzI9kiPO233sywKERz/7C518CV3WW4oSjtgJDhhsD9?=
 =?us-ascii?Q?o9NsUc1LhQ0FQidfNDwPUWlDZClaS0HjCfA5DPw6fokAz8yAgi4QhyPrNv+N?=
 =?us-ascii?Q?XZijqWEZnRfUgJ2/rE3C4tmsPk6h8OWCHZo+wegmgIB2nsjGJ8Pqg0iKvTas?=
 =?us-ascii?Q?PLkQxdYb2MTN2zSOqrab1Syca96E64xLCI/UftlP3n+i6wgNDIHihPiveSkz?=
 =?us-ascii?Q?dmHYsoxEnN7nXsu3ajIqLkDiTfIDaVuGI8g4g5VzGZ32j/+f+DzfZeLc+JPS?=
 =?us-ascii?Q?NTa4yS5a39cROAZR0GQ2pMtZhkAIeT2ByvIRc/1JZjjXzbG6Xp46V9ZQDc+K?=
 =?us-ascii?Q?2rPaYf3WZPHf8itT0HVKpXk020XGkW2+b8bQVVJBtD/y65eheTyM9xjLUx/9?=
 =?us-ascii?Q?bfCyIesk1WMjmh5mG9r9tXLvHeu5GWcNCnjjW7c4hvNNBdVcOahdoln58glU?=
 =?us-ascii?Q?FKG+6v7fTnBXex25noSLGsC2PDz3OW/oDFd6a7dT5heTvGvba/OOqZaIOxMu?=
 =?us-ascii?Q?62z4NsHurXTjb5a4SmidjErOb8Lmj3uhdv9gX7KtYIu13/rH3GcGUvYLb00C?=
 =?us-ascii?Q?Ww=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc430c03-681c-4ce5-dd04-08dcaaecb4a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 07:54:39.9611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cR+lnZ6Sq2D6PQrV+tfLdwKbNyoWiMqSvHfocMZb6zxVynlqX6xt20FRSXOof4AFXGiv/TKe2/bnL0BgvPtgfw1yknfdNa+Vm9r2GK52E+Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5325
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721721290; x=1753257290;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Hq2Blp2eWvj9HVVoFxrWbov0Ib7PrSOOL7QLUW5DyxU=;
 b=iShWM70erle+PTfhJE8OSZOIxvbA1l7BuZUBW1KUvIF84GGL/YKyVshQ
 ex9T21kDfRaMrgGX8gqAmGt29eeZfEfGIledhUJOl9/7zjn06vLqf5xv6
 05Iets2NCY2nOJUk5Y7dYFVFvex4vAj+RDfOZxSj5WFcKoQv8+uIud/u3
 yOStPa8ixb2SZa2qIk6QWrnm6bdxwZRGHFbVzgDEaMuXvLqbQupZni/ki
 qGrw+LiPpKtTgeP/Ixca80kcH+FRQ1dqvwpTh0Z9fuE5Mx0l95qoq3qMz
 m3I5r1uSdAMRVRbC+tPd8u4X91koow1uUpcYXhpr760yku9uA+f9RYYl/
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iShWM70e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 02/13] ice: parse and init
 various DDP parser sections
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Guo, Junfeng" <junfeng.guo@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Friday, May 31, 2024 3:14 PM
> To: Zaki, Ahmed <ahmed.zaki@intel.com>
> Cc: Guo, Junfeng <junfeng.guo@intel.com>; netdev@vger.kernel.org; Marcin
> Szycik <marcin.szycik@linux.intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;=
 intel-
> wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 02/13] ice: parse and i=
nit
> various DDP parser sections
>=20
> On Mon, May 27, 2024 at 12:57:59PM -0600, Ahmed Zaki wrote:
> > From: Junfeng Guo <junfeng.guo@intel.com>
> >
> > Parse the following DDP sections:
> >  - ICE_SID_RXPARSER_IMEM into an array of struct ice_imem_item
> >  - ICE_SID_RXPARSER_METADATA_INIT into an array of struct
> > ice_metainit_item
> >  - ICE_SID_RXPARSER_CAM or ICE_SID_RXPARSER_PG_SPILL into an array of
> >    struct ice_pg_cam_item
> >  - ICE_SID_RXPARSER_NOMATCH_CAM or
> ICE_SID_RXPARSER_NOMATCH_SPILL into an
> >    array of struct ice_pg_nm_cam_item
> >  - ICE_SID_RXPARSER_CAM into an array of ice_bst_tcam_item
> >  - ICE_SID_LBL_RXPARSER_TMEM into an array of ice_lbl_item
> >  - ICE_SID_RXPARSER_MARKER_PTYPE into an array of
> > ice_ptype_mk_tcam_item
> >  - ICE_SID_RXPARSER_MARKER_GRP into an array of ice_mk_grp_item
> >  - ICE_SID_RXPARSER_PROTO_GRP into an array of ice_proto_grp_item
> >  - ICE_SID_RXPARSER_FLAG_REDIR into an array of ice_flg_rd_item
> >  - ICE_SID_XLT_KEY_BUILDER_SW, ICE_SID_XLT_KEY_BUILDER_ACL,
> >    ICE_SID_XLT_KEY_BUILDER_FD and ICE_SID_XLT_KEY_BUILDER_RSS into
> >    struct ice_xlt_kb
> >
> > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> > Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
>=20
> ...
>=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c
> > b/drivers/net/ethernet/intel/ice/ice_parser.c
> > index b7865b6a0a9b..aaec10afea32 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> > @@ -3,6 +3,1257 @@
> >
> >  #include "ice_common.h"
> >
> > +struct ice_pkg_sect_hdr {
> > +	__le16 count;
> > +	__le16 offset;
> > +};
> > +
> > +/**
> > + * ice_parser_sect_item_get - parse a item from a section
> > + * @sect_type: section type
> > + * @section: section object
> > + * @index: index of the item to get
> > + * @offset: dummy as prototype of ice_pkg_enum_entry's last parameter
>=20
> Please consider including a "Return: " clause in new Kernel docs.
> This is flagged by ./scripts/kernel-doc -Wall -none.
> The -Wall flag was recently added to the Netdev CI.
>=20
> Likewise elsewhere in this patchset.
>=20
> > + */
> > +static void *ice_parser_sect_item_get(u32 sect_type, void *section,
> > +				      u32 index, u32 __maybe_unused *offset) {
> > +	size_t data_off =3D ICE_SEC_DATA_OFFSET;
> > +	struct ice_pkg_sect_hdr *hdr;
> > +	size_t size;
> > +
> > +	if (!section)
> > +		return NULL;
> > +
> > +	switch (sect_type) {
> > +	case ICE_SID_RXPARSER_IMEM:
> > +		size =3D ICE_SID_RXPARSER_IMEM_ENTRY_SIZE;
> > +		break;
> > +	case ICE_SID_RXPARSER_METADATA_INIT:
> > +		size =3D ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE;
> > +		break;
> > +	case ICE_SID_RXPARSER_CAM:
> > +		size =3D ICE_SID_RXPARSER_CAM_ENTRY_SIZE;
> > +		break;
> > +	case ICE_SID_RXPARSER_PG_SPILL:
> > +		size =3D ICE_SID_RXPARSER_PG_SPILL_ENTRY_SIZE;
> > +		break;
> > +	case ICE_SID_RXPARSER_NOMATCH_CAM:
> > +		size =3D ICE_SID_RXPARSER_NOMATCH_CAM_ENTRY_SIZE;
> > +		break;
> > +	case ICE_SID_RXPARSER_NOMATCH_SPILL:
> > +		size =3D ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE;
> > +		break;
> > +	case ICE_SID_RXPARSER_BOOST_TCAM:
> > +		size =3D ICE_SID_RXPARSER_BOOST_TCAM_ENTRY_SIZE;
> > +		break;
> > +	case ICE_SID_LBL_RXPARSER_TMEM:
> > +		data_off =3D ICE_SEC_LBL_DATA_OFFSET;
> > +		size =3D ICE_SID_LBL_ENTRY_SIZE;
> > +		break;
> > +	case ICE_SID_RXPARSER_MARKER_PTYPE:
> > +		size =3D ICE_SID_RXPARSER_MARKER_TYPE_ENTRY_SIZE;
> > +		break;
> > +	case ICE_SID_RXPARSER_MARKER_GRP:
> > +		size =3D ICE_SID_RXPARSER_MARKER_GRP_ENTRY_SIZE;
> > +		break;
> > +	case ICE_SID_RXPARSER_PROTO_GRP:
> > +		size =3D ICE_SID_RXPARSER_PROTO_GRP_ENTRY_SIZE;
> > +		break;
> > +	case ICE_SID_RXPARSER_FLAG_REDIR:
> > +		size =3D ICE_SID_RXPARSER_FLAG_REDIR_ENTRY_SIZE;
> > +		break;
> > +	default:
> > +		return NULL;
> > +	}
> > +
> > +	hdr =3D section;
> > +	if (index >=3D le16_to_cpu(hdr->count))
> > +		return NULL;
> > +
> > +	return (u8 *)section + data_off + (index * size);
>=20
> nit: I don't think that the cast or parentheses are necessary here.
>      Likewise elsewhere in this patchset.
>=20
>      It's usually not necessary to cast to or from a void * to some other
>      type of pointer. And in Networking code it's preferred not to do so.
>=20
>      Similarly, although sometimes it is best for the sake of clarity,
>      it is preferred not to add parentheses where they are not needed.
>=20
> ...
>=20
> > +/**
> > + * ice_imem_alu_init - parse 96 bits of ALU entry
> > + * @alu: pointer to the ALU entry structure
> > + * @data: ALU entry data to be parsed
> > + * @off: offset of the ALU entry data  */ static void
> > +ice_imem_alu_init(struct ice_alu *alu, u8 *data, u8 off) {
> > +	u64 d64;
> > +	u8 idd;
> > +
> > +	d64 =3D *((u64 *)data) >> off;
> > +
> > +	alu->opc		=3D FIELD_GET(ICE_IM_ALU_OPC, d64);
> > +	alu->src_start		=3D FIELD_GET(ICE_IM_ALU_SS, d64);
> > +	alu->src_len		=3D FIELD_GET(ICE_IM_ALU_SL, d64);
> > +	alu->shift_xlate_sel	=3D FIELD_GET(ICE_IM_ALU_SXS, d64);
> > +	alu->shift_xlate_key	=3D FIELD_GET(ICE_IM_ALU_SXK, d64);
> > +	alu->src_reg_id		=3D FIELD_GET(ICE_IM_ALU_SRID, d64);
> > +	alu->dst_reg_id		=3D FIELD_GET(ICE_IM_ALU_DRID, d64);
> > +	alu->inc0		=3D FIELD_GET(ICE_IM_ALU_INC0, d64);
> > +	alu->inc1		=3D FIELD_GET(ICE_IM_ALU_INC1, d64);
> > +	alu->proto_offset_opc	=3D FIELD_GET(ICE_IM_ALU_POO, d64);
> > +	alu->proto_offset	=3D FIELD_GET(ICE_IM_ALU_PO, d64);
> > +
> > +	idd =3D (ICE_IM_ALU_BA_S + off) / BITS_PER_BYTE;
> > +	off =3D (ICE_IM_ALU_BA_S + off) % BITS_PER_BYTE;
> > +	d64 =3D *((u64 *)(&data[idd])) >> off;
> > +
> > +	alu->branch_addr	=3D FIELD_GET(ICE_IM_ALU_BA, d64);
> > +	alu->imm		=3D FIELD_GET(ICE_IM_ALU_IMM, d64);
> > +	alu->dedicate_flags_ena	=3D FIELD_GET(ICE_IM_ALU_DFE, d64);
> > +	alu->dst_start		=3D FIELD_GET(ICE_IM_ALU_DS, d64);
> > +	alu->dst_len		=3D FIELD_GET(ICE_IM_ALU_DL, d64);
> > +	alu->flags_extr_imm	=3D FIELD_GET(ICE_IM_ALU_FEI, d64);
> > +	alu->flags_start_imm	=3D FIELD_GET(ICE_IM_ALU_FSI, d64);
> > +}
> > +
> > +#define ICE_IMEM_BM_S		0
> > +#define ICE_IMEM_BKB_S		4
> > +#define ICE_IMEM_BKB_IDD	(ICE_IMEM_BKB_S / BITS_PER_BYTE)
> > +#define ICE_IMEM_BKB_OFF	(ICE_IMEM_BKB_S % BITS_PER_BYTE)
> > +#define ICE_IMEM_PGP		GENMASK(15, 14)
> > +#define ICE_IMEM_NPKB_S		16
> > +#define ICE_IMEM_NPKB_IDD	(ICE_IMEM_NPKB_S / BITS_PER_BYTE)
> > +#define ICE_IMEM_NPKB_OFF	(ICE_IMEM_NPKB_S % BITS_PER_BYTE)
> > +#define ICE_IMEM_PGKB_S		34
> > +#define ICE_IMEM_PGKB_IDD	(ICE_IMEM_PGKB_S / BITS_PER_BYTE)
> > +#define ICE_IMEM_PGKB_OFF	(ICE_IMEM_PGKB_S % BITS_PER_BYTE)
> > +#define ICE_IMEM_ALU0_S		69
> > +#define ICE_IMEM_ALU0_IDD	(ICE_IMEM_ALU0_S / BITS_PER_BYTE)
> > +#define ICE_IMEM_ALU0_OFF	(ICE_IMEM_ALU0_S % BITS_PER_BYTE)
> > +#define ICE_IMEM_ALU1_S		165
> > +#define ICE_IMEM_ALU1_IDD	(ICE_IMEM_ALU1_S / BITS_PER_BYTE)
> > +#define ICE_IMEM_ALU1_OFF	(ICE_IMEM_ALU1_S % BITS_PER_BYTE)
> > +#define ICE_IMEM_ALU2_S		357
> > +#define ICE_IMEM_ALU2_IDD	(ICE_IMEM_ALU2_S / BITS_PER_BYTE)
> > +#define ICE_IMEM_ALU2_OFF	(ICE_IMEM_ALU2_S % BITS_PER_BYTE)
> > +
> > +/**
> > + * ice_imem_parse_item - parse 384 bits of IMEM entry
> > + * @hw: pointer to the hardware structure
> > + * @idx: index of IMEM entry
> > + * @item: item of IMEM entry
> > + * @data: IMEM entry data to be parsed
> > + * @size: size of IMEM entry
> > + */
> > +static void ice_imem_parse_item(struct ice_hw *hw, u16 idx, void *item=
,
> > +				void *data, int __maybe_unused size) {
> > +	struct ice_imem_item *ii =3D item;
> > +	u8 *buf =3D (u8 *)data;
>=20
> I think that in this function data can be used directly in place of buf.
>=20
> > +
> > +	ii->idx =3D idx;
> > +
> > +	ice_imem_bm_init(&ii->b_m, *(u8 *)buf);
> > +	ice_imem_bkb_init(&ii->b_kb,
> > +			  *((u16 *)(&buf[ICE_IMEM_BKB_IDD])) >>
> > +			   ICE_IMEM_BKB_OFF);
>=20
> nit: I suspect that FIELD_GET can be used here.
>      And elsewhere where >> is used in this function and
>      ice_imem_alu_init().
>=20
> > +
> > +	ii->pg_prio =3D FIELD_GET(ICE_IMEM_PGP, *(u16 *)buf);
> > +
> > +	ice_imem_npkb_init(&ii->np_kb,
> > +			   *((u32 *)(&buf[ICE_IMEM_NPKB_IDD])) >>
> > +			    ICE_IMEM_NPKB_OFF);
> > +	ice_imem_pgkb_init(&ii->pg_kb,
> > +			   *((u64 *)(&buf[ICE_IMEM_PGKB_IDD])) >>
> > +			    ICE_IMEM_PGKB_OFF);
> > +
> > +	ice_imem_alu_init(&ii->alu0,
> > +			  &buf[ICE_IMEM_ALU0_IDD],
> > +			  ICE_IMEM_ALU0_OFF);
> > +	ice_imem_alu_init(&ii->alu1,
> > +			  &buf[ICE_IMEM_ALU1_IDD],
> > +			  ICE_IMEM_ALU1_OFF);
> > +	ice_imem_alu_init(&ii->alu2,
> > +			  &buf[ICE_IMEM_ALU2_IDD],
> > +			  ICE_IMEM_ALU2_OFF);
> > +}
>=20
> ...
>=20
> > +#define ICE_MI_GBDM_IDD		(ICE_MI_GBDM_S / BITS_PER_BYTE)
> > +#define ICE_MI_GBDM_OFF		(ICE_MI_GBDM_S % BITS_PER_BYTE)
> > +#define ICE_MI_GBDM		GENMASK_ULL(65 - ICE_MI_GBDM_S,
> \
> > +					    61 - ICE_MI_GBDM_S)
>=20
> nit: Some macros might make this a bit easier on the eyes (or not?).
>      (Completely untested!)
>=20
> #define ICE_GENMASK_OFF_ULL(high, low, offset) \
> 	GENMASK_ULL(high - offset, low - offset)
>=20
> #define ICE_MI_GBDM_GENMASK_ULL(high, low) \
> 	ICE_GENMASK_OFF_ULL(high, low, ICE_MI_GBDM_S)
>=20
> #define ICE_MI_GBDS		ICE_MI_GBDM_GENMASK_ULL(69, 66)
> ...
> #define ICE_MI_FLAG		ICE_GENMASK_OFF_ULL(186, 123,
> ICE_MI_FLAG_S)
>=20
> > +#define ICE_MI_GBDS		GENMASK_ULL(69 - ICE_MI_GBDM_S,
> \
> > +					    66 - ICE_MI_GBDM_S)
> > +#define ICE_MI_GBDL		GENMASK_ULL(74 - ICE_MI_GBDM_S,
> \
> > +					    70 - ICE_MI_GBDM_S)
> > +#define ICE_MI_GBI		GENMASK_ULL(80 - ICE_MI_GBDM_S, \
> > +					    77 - ICE_MI_GBDM_S)
> > +#define ICE_MI_GCC		BIT_ULL(81 - ICE_MI_GBDM_S)
> > +#define ICE_MI_GCDM		GENMASK_ULL(86 - ICE_MI_GBDM_S,
> \
> > +					    82 - ICE_MI_GBDM_S)
> > +#define ICE_MI_GCDS		GENMASK_ULL(90 - ICE_MI_GBDM_S,
> \
> > +					    87 - ICE_MI_GBDM_S)
> > +#define ICE_MI_GCDL		GENMASK_ULL(95 - ICE_MI_GBDM_S,
> \
> > +					    91 - ICE_MI_GBDM_S)
> > +#define ICE_MI_GCI		GENMASK_ULL(101 - ICE_MI_GBDM_S, \
> > +					    98 - ICE_MI_GBDM_S)
> > +#define ICE_MI_GDC		BIT_ULL(102 - ICE_MI_GBDM_S)
> > +#define ICE_MI_GDDM		GENMASK_ULL(107 - ICE_MI_GBDM_S,
> \
> > +					    103 - ICE_MI_GBDM_S)
> > +#define ICE_MI_GDDS		GENMASK_ULL(111 - ICE_MI_GBDM_S,
> \
> > +					    108 - ICE_MI_GBDM_S)
> > +#define ICE_MI_GDDL		GENMASK_ULL(116 - ICE_MI_GBDM_S,
> \
> > +					    112 - ICE_MI_GBDM_S)
> > +#define ICE_MI_GDI		GENMASK_ULL(122 - ICE_MI_GBDM_S, \
> > +					    119 - ICE_MI_GBDM_S)
> > +#define ICE_MI_FLAG_S		123	/* offset for the 3rd 64-bits
> field */
> > +#define ICE_MI_FLAG_IDD		(ICE_MI_FLAG_S / BITS_PER_BYTE)
> > +#define ICE_MI_FLAG_OFF		(ICE_MI_FLAG_S % BITS_PER_BYTE)
> > +#define ICE_MI_FLAG		GENMASK_ULL(186 - ICE_MI_FLAG_S, \
> > +					    123 - ICE_MI_FLAG_S)
>=20
> ...


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


