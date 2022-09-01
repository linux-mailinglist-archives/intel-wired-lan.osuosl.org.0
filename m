Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACF35A9787
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Sep 2022 14:58:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9BA161167;
	Thu,  1 Sep 2022 12:58:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9BA161167
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662037110;
	bh=B4h8scJSIEQ8/IU3PCNzl56Jir1McMq504Aoy/RZJ+A=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Yx8SBT30HO1uN46IRZq7p1cTr0rwAv2IQdRSu9MxW8oRujM9sST085Au+6XaEbCLS
	 BBPAi70nsSvu/HvLdRTzaXIkNK0OPlgg5OsZgN+t5r7pVSljV/YoV6tDjgdslxiPXa
	 VuyJvo13w63GDjxHn6ubc5xLDP0BVQi7qsAE2Yn/94kV2HjE9nrz5wHSuXiBvzvhSk
	 gw5RKeQqqDTMRW6OArp3ea822Ae4x8HMXrq1/kgFSpTR6LxafDGUVoHk2M7mcBdn0P
	 ix32jrFPspDeHOR5Io6p34W3VWHcBCxpc6y/BrGwSSEvs9gwsh36xbGdJJYMWEO/2x
	 +33nPb9slVkOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QjZYb2_sZUw8; Thu,  1 Sep 2022 12:58:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C221560A8D;
	Thu,  1 Sep 2022 12:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C221560A8D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 72D661BF356
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:58:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 59057607CA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:58:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59057607CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w8n-gPj341gG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Sep 2022 12:58:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4520D60A8D
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4520D60A8D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:58:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="282684707"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="282684707"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 05:58:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="589488919"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 01 Sep 2022 05:58:22 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 1 Sep 2022 05:58:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 1 Sep 2022 05:58:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 1 Sep 2022 05:58:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MShuQXa8ft7gB//oU2yS8lgAjYa1kCwbrTGsRxg6fy1hej/rwcIk7jjydKFjnf1PXfE2FW0rgnwR+R3RY5VjYoy116zS/7opJEYZzj7C3cU5vANZ1tzG1paUFO2ovKa/b4VtFdocV403PISbH6wb/l6SMfi2xceKFuS/96QZz/3Sh+eGNKCKorQbBLQIxzd6wtz4jcK9tEb9qBNTDyoTeH6lzYrG4ss3HZEEGiaM0JpQd+ZdACoXx+HLeSRQKfO3uZZykFsH2K//4YSPdzTpM+NWcXh46/tJLL/j1vYScLxHJmAjTyEzeYLD1txJ7Y8ilpEV3nn/WREPgEdd3okm9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HFuj2VcXesE/8xmMlO+9uOvOmzEKoayzrWu1AmGT6Rg=;
 b=VYpzmOhOD6JdC19/f7GFnwhjZkKI+m1YrVc3hR3uhmE3wDwvMQ1qvE3EwKV9nmYABG/lnC/9RFXcKFHmEJpWtezC4zWxxfCfidtM9oXQeEAdCF6jDekyu0Dov+TLvruaKearguMKwIJGc+XAhAmS21ZzXtYzj1dGp+xOkwChC3ROyGZ+Jon93Wo2cUDiOwFzAUU8PRjxT5VtDf30/MMepFia0wyWXvk0aFxfrlRhjIbKX69DMq3V7NPuHrOguHmVOSheTCPbK2e0V2w7BgrIRpk7I9TAHwKL6pkzeoH2yvsIbDDyTzapireSZxeKaEw9+rkxECN9HCZ+yie8RCIzhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by MN2PR11MB4174.namprd11.prod.outlook.com (2603:10b6:208:154::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Thu, 1 Sep
 2022 12:58:19 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::545c:d283:fbee:973b]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::545c:d283:fbee:973b%6]) with mapi id 15.20.5566.015; Thu, 1 Sep 2022
 12:58:19 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Guillaume Nault <gnault@redhat.com>
Thread-Topic: [RFC PATCH net-next v3 2/5] flow_dissector: Add L2TPv3 dissectors
Thread-Index: AQHYvf9joIHu5V/zpUWj3dYTAgm0pq3KiCbg
Date: Thu, 1 Sep 2022 12:58:19 +0000
Message-ID: <MW4PR11MB5776B6030D3EB7ADBB1D9612FD7B9@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20220901120131.1373568-1-wojciech.drewek@intel.com>
 <20220901120131.1373568-3-wojciech.drewek@intel.com>
 <20220901123527.GA3398@debian.home>
In-Reply-To: <20220901123527.GA3398@debian.home>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 583d8eea-77b7-4bd4-1a48-08da8c19a4de
x-ms-traffictypediagnostic: MN2PR11MB4174:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MPZFZUOrc/p9c5DN/AiOEDL7voLLcMtqHT9uNYacedWvtAlEUG9cbVDtXLVvnD66MPYb9sHyhzbMEnwVIc/dq2+mQNhbANuHYt+7Xze9ArFCKvj+2aOht0FPTP4kK41TQNVpWkaCt3obBl4ouCT+5xTOq3Ak6GJ4FOofO3qvqCeWyCZxSG+8WbhVvQF1HhysaOgVgdBGZ+N/A/LsLQ2bQJJICjEPQZgHYb2/RUxzoWSvQKpnGTUCTI0pYlhwn9RfiKDQgTrBC+4z0wwQ3WwMF8QWKTkbvmVeD8wqR+CfD0RFIvrF5YybAUCkAktQi1nZCUdeVkWsPAxvGQ/dcWbMoaj4mo0DcGydvEmVNOVNjHHnv5e34WXbVqFVm+Sksu7ywEIse+EC+W8GjosfkGL7LTDa2AEYvhyjjV1JFC4yGT/d2L3q8FO9f597fNfsI8bobX1i8BH+fyX2sJxH6L+1gyWXTre76Ia8t1uZcCcVD1KzAnp97mrrSHQvWPM7h90C+7s/H9CdwwGHX04chfAO5iK/fDbwxqopPhfaWdwxe7FAd1r4xlOvYKjKRjGJDw2gNH41Sanc5O8xtPHHESxvZfD6iyHzJyFC9UuSr1Jg2m7QDexlxzih0koUNVU1agxoTpdZ7d/jToeapwsjHGCEuRU3YwFQxc8GtM0M4d2bKDpeMmGfCiKv6sfcY7sTPMBkq9iFiaWhR6/PqE47CconHjJL/tQk0jvcpn2IkjiVhhX1d8i++iy3hZSr2o2suum2AYLAS/vX0lr6SIu8oq4cuQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(376002)(346002)(39860400002)(136003)(26005)(2906002)(6506007)(38100700002)(83380400001)(55016003)(6916009)(316002)(9686003)(33656002)(7696005)(71200400001)(8936002)(186003)(7416002)(52536014)(41300700001)(53546011)(86362001)(5660300002)(478600001)(122000001)(38070700005)(54906003)(4326008)(8676002)(82960400001)(64756008)(66556008)(76116006)(66946007)(66446008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?Ej5ZWU9PdROKRzsOUUFxsW1AOx8Mmzinnk2RZ6ztNVNMkp9JPmtBaIcE5e?=
 =?iso-8859-2?Q?6lO1o7q4emgbP5T4RZIbGL6zX9YUzRAp5Y9UoC+YjxoONqaU3HGvDseUe3?=
 =?iso-8859-2?Q?DpfuaNycFcoKefL8EG7eVbep5HXoklDtV39u/J8Q7lrlQeGtc4eDD9H8hI?=
 =?iso-8859-2?Q?6X1FoSPjualMud1xsE4i8UsUbvcR16dS/1hs8vuUc1296lNFTQFY/BZlcF?=
 =?iso-8859-2?Q?433PQanEV4GYB1MIJXK6QCwAtPDocJqMlLKI5c9nftyQ/ukp5qhqPCMlYo?=
 =?iso-8859-2?Q?XyzrH6v/Y39tM66M05zALX5V484+/x0DQnbKbE2NvymH1KoaTFLS1G3nZh?=
 =?iso-8859-2?Q?4vJ5yngz2pJdJBgHJ1/OtReu6wP1rfywZbz9Sk/UZlDoYyoGllStkJfzgd?=
 =?iso-8859-2?Q?Bs+EYQPeqdOKkdGKByxw9qPFVQvU1hP/e1gEsc9Zcac+dJ5prlHXeDwyu/?=
 =?iso-8859-2?Q?chExMC8/Dnj5iPpX8GAyKcOkHHNLUHmi9rimptmLrezB4QwHFu4YyMc9a6?=
 =?iso-8859-2?Q?QnAC/GrQVmBfPMgxdx5mETw/4tVwYqXMOhhAznLiJR/47YVeDjZKtW+8w5?=
 =?iso-8859-2?Q?EcA4zoWMSwrQF6XghEUsyD1E8VrxjDCk5djFV82pHyZ5HVCKGRuxtzEhPX?=
 =?iso-8859-2?Q?ohORl+OXRBemx8MMsIa7xUf10XHkAyFvvzcDkq68vhx+/gEjtHo81BcLwH?=
 =?iso-8859-2?Q?+NnRWh9Za9khu+b4LSvgl5FC3+nz2PY/+rGD9S35Dt7GIX8ByUjXqarihX?=
 =?iso-8859-2?Q?zl/zfnOB5P1fH45UVkE0iS0kvqHJDwuGwQVabb36rQno6c8K1yQlnD0Nfy?=
 =?iso-8859-2?Q?qJZsGzDBpOesjnwDkw1ViHHvNM0mO70CHrFzlGfi2/liVaZefptMMxT/Qo?=
 =?iso-8859-2?Q?hmvKxwSi/H7Pp0jxPwcNpX7GEJy1p8Fb3BPh+cJeflvSN4+F991IiWe7gX?=
 =?iso-8859-2?Q?vUNDiHOhC+VwsDMZjl2rKFkgPEjab1iPyJd9WP7htOciVTfQYD4zAnXw7k?=
 =?iso-8859-2?Q?2/uFSARI99UjAflxYhW2Vxo2L/+0MynCeR+6VSXWdSaohNX5uGYKne44mC?=
 =?iso-8859-2?Q?W/1CzKlGruQXW+2FlifauDuQpa+p0PXB7LdHb7eLgTfD2RJiKmlMvQyYzd?=
 =?iso-8859-2?Q?uw33MXwcGyNHgFfHtKwHvNgRwGLRFeGzpQP5g4E8SN8e194b+3lP4+i2em?=
 =?iso-8859-2?Q?ecKZBVgzJRMcNm4bzO6/oCW0eEE7ofOY4EshZSlXWKIoJKwtc4DYpcWH9v?=
 =?iso-8859-2?Q?+HNJ3j7BUnLqTyx3y84QkcdhfYs/3kYNIs/wQWrDjcHSRFPNoYbdPr9iZs?=
 =?iso-8859-2?Q?XHwiPQFr07vVeyY4rAZAY64JRZc1IbmtZrIj80ycQUNammGcceqc7EHiTR?=
 =?iso-8859-2?Q?QLBeVZW1wPQKp2zQGD4s6WqSNOaYj3peY2av+Xslt+mrM+ZedLL84pF8Lm?=
 =?iso-8859-2?Q?wFdJr/Pmhy0YmpaRyt4lfg2e/iF/DiBpgO5Gi/IsZivP6RCgmdH/97loZR?=
 =?iso-8859-2?Q?P0iHes23fOk+SPeBCAKXEtIBA1Yb5x/RFUy8SCcsthoUhAu3HtGiXi8qiB?=
 =?iso-8859-2?Q?LfR8PKeelQg6Wy0YhFmS04RztQe6KdY3tWPLS06piKvtdWwPisjh24bR/g?=
 =?iso-8859-2?Q?cukTu9zjF8fTxVlPT0ZIthuLFXB7rIkElKzkXFHKIcDzTSYUpN/uTnBQ?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 583d8eea-77b7-4bd4-1a48-08da8c19a4de
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2022 12:58:19.3968 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JQy3GySDs3FeI99ZwutTcJLnb9MEd+GZHxAcdwhbz4Wr2srhUU30Fl2sFln3HYM9bVvgm8O0z3r2dx8+EXQbQ7NcPwqj0olb1Fn+tO+ju0c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4174
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662037103; x=1693573103;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZpB8TBaaEY2/Q0OaCT2eFB8p8p2ywd4aHuC5d3XXI5E=;
 b=dm71vM6lA3osSabETVsJs+z6u049bhxZsvWoT9MQB67Vl8A+ZvX8lXPl
 xUZlK1mMnAAgw3hxKTsPDxiZNcEYmCbo6TAQMNsW3Mq4y8fQDbEHjdlTm
 q7xD4QBLC1RMwrTGLVOVQ1YubAyDoU5KbcpeAvuwb1WuMBiZH9Gfk4vk/
 H6h4J8IzF5pUe54E6y5c/90zBYZI4flK4vLaN94dIzEbuua1H2NEaqmii
 N+FUmnSMnLWM1K48FDHuReheKPrO2UZfLyBCn2Wnmx1BZEDVqAMwfvcYT
 6qriAnquHmM2DpZSJZW0KlOsahINzrg2y5eesIQwmuSqzEaY+30z/Q/zj
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dm71vM6l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v3 2/5] flow_dissector:
 Add L2TPv3 dissectors
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "komachi.yoshiki@gmail.com" <komachi.yoshiki@gmail.com>,
 "jchapman@katalix.com" <jchapman@katalix.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "boris.sukholitko@broadcom.com" <boris.sukholitko@broadcom.com>,
 "louis.peens@corigine.com" <louis.peens@corigine.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "vladbu@nvidia.com" <vladbu@nvidia.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "pablo@netfilter.org" <pablo@netfilter.org>,
 "baowen.zheng@corigine.com" <baowen.zheng@corigine.com>,
 "maksym.glubokiy@plvision.eu" <maksym.glubokiy@plvision.eu>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "paulb@nvidia.com" <paulb@nvidia.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Guillaume Nault <gnault@redhat.com>
> Sent: czwartek, 1 wrze=B6nia 2022 14:35
> To: Drewek, Wojciech <wojciech.drewek@intel.com>
> Cc: netdev@vger.kernel.org; Lobakin, Alexandr <alexandr.lobakin@intel.com=
>; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net; edum=
azet@google.com; kuba@kernel.org;
> pabeni@redhat.com; jhs@mojatatu.com; xiyou.wangcong@gmail.com; jiri@resnu=
lli.us; marcin.szycik@linux.intel.com;
> michal.swiatkowski@linux.intel.com; kurt@linutronix.de; boris.sukholitko@=
broadcom.com; vladbu@nvidia.com;
> komachi.yoshiki@gmail.com; paulb@nvidia.com; baowen.zheng@corigine.com; l=
ouis.peens@corigine.com;
> simon.horman@corigine.com; pablo@netfilter.org; maksym.glubokiy@plvision.=
eu; intel-wired-lan@lists.osuosl.org;
> jchapman@katalix.com
> Subject: Re: [RFC PATCH net-next v3 2/5] flow_dissector: Add L2TPv3 disse=
ctors
> =

> On Thu, Sep 01, 2022 at 02:01:28PM +0200, Wojciech Drewek wrote:
> > Allow to dissect L2TPv3 specific field which is:
> > - session ID (32 bits)
> >
> > L2TPv3 might be transported over IP or over UDP,
> > this ipmplementation is only about L2TPv3 over IP.
> > IP protocold carries L2TPv3 when ip_proto is
> =

> Nit: you didn't fix the spelling of "protocold". It's probably not
> worth to send a new version just because of this typo though.

Sorry, of course  I forgot about something.
It will be fixed in the PR.

> =

> > Acked-by: Guillaume Nault <gnault@redhat.com>
> > Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > ---
> > v3: move !dissector_uses_key() check before calling
> >     __skb_header_pointer
> > ---
> >  include/net/flow_dissector.h |  9 +++++++++
> >  net/core/flow_dissector.c    | 28 ++++++++++++++++++++++++++++
> >  2 files changed, 37 insertions(+)
> >
> > diff --git a/include/net/flow_dissector.h b/include/net/flow_dissector.h
> > index 6c74812d64b2..5ccf52ef8809 100644
> > --- a/include/net/flow_dissector.h
> > +++ b/include/net/flow_dissector.h
> > @@ -289,6 +289,14 @@ struct flow_dissector_key_pppoe {
> >  	__be16 type;
> >  };
> >
> > +/**
> > + * struct flow_dissector_key_l2tpv3:
> > + * @session_id: identifier for a l2tp session
> > + */
> > +struct flow_dissector_key_l2tpv3 {
> > +	__be32 session_id;
> > +};
> > +
> >  enum flow_dissector_key_id {
> >  	FLOW_DISSECTOR_KEY_CONTROL, /* struct flow_dissector_key_control */
> >  	FLOW_DISSECTOR_KEY_BASIC, /* struct flow_dissector_key_basic */
> > @@ -320,6 +328,7 @@ enum flow_dissector_key_id {
> >  	FLOW_DISSECTOR_KEY_HASH, /* struct flow_dissector_key_hash */
> >  	FLOW_DISSECTOR_KEY_NUM_OF_VLANS, /* struct flow_dissector_key_num_of_=
vlans */
> >  	FLOW_DISSECTOR_KEY_PPPOE, /* struct flow_dissector_key_pppoe */
> > +	FLOW_DISSECTOR_KEY_L2TPV3, /* struct flow_dissector_key_l2tpv3 */
> >
> >  	FLOW_DISSECTOR_KEY_MAX,
> >  };
> > diff --git a/net/core/flow_dissector.c b/net/core/flow_dissector.c
> > index 764c4cb3fe8f..8180e65ab8e2 100644
> > --- a/net/core/flow_dissector.c
> > +++ b/net/core/flow_dissector.c
> > @@ -204,6 +204,30 @@ static void __skb_flow_dissect_icmp(const struct s=
k_buff *skb,
> >  	skb_flow_get_icmp_tci(skb, key_icmp, data, thoff, hlen);
> >  }
> >
> > +static void __skb_flow_dissect_l2tpv3(const struct sk_buff *skb,
> > +				      struct flow_dissector *flow_dissector,
> > +				      void *target_container, const void *data,
> > +				      int nhoff, int hlen)
> > +{
> > +	struct flow_dissector_key_l2tpv3 *key_l2tpv3;
> > +	struct {
> > +		__be32 session_id;
> > +	} *hdr, _hdr;
> > +
> > +	if (!dissector_uses_key(flow_dissector, FLOW_DISSECTOR_KEY_L2TPV3))
> > +		return;
> > +
> > +	hdr =3D __skb_header_pointer(skb, nhoff, sizeof(_hdr), data, hlen, &_=
hdr);
> > +	if (!hdr)
> > +		return;
> > +
> > +	key_l2tpv3 =3D skb_flow_dissector_target(flow_dissector,
> > +					       FLOW_DISSECTOR_KEY_L2TPV3,
> > +					       target_container);
> > +
> > +	key_l2tpv3->session_id =3D hdr->session_id;
> > +}
> > +
> >  void skb_flow_dissect_meta(const struct sk_buff *skb,
> >  			   struct flow_dissector *flow_dissector,
> >  			   void *target_container)
> > @@ -1497,6 +1521,10 @@ bool __skb_flow_dissect(const struct net *net,
> >  		__skb_flow_dissect_icmp(skb, flow_dissector, target_container,
> >  					data, nhoff, hlen);
> >  		break;
> > +	case IPPROTO_L2TP:
> > +		__skb_flow_dissect_l2tpv3(skb, flow_dissector, target_container,
> > +					  data, nhoff, hlen);
> > +		break;
> >
> >  	default:
> >  		break;
> > --
> > 2.31.1
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
