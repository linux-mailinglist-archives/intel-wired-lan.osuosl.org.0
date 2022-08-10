Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D62D58E770
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 08:54:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9ACAB81346;
	Wed, 10 Aug 2022 06:54:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9ACAB81346
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660114480;
	bh=7Eh44g9xtNyK2oARAT3l/edIkupcKXHnfnBBUDy/Uzs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uoNhYMjMRO4yy6Y0Kmnf7539m1+7xDjjsewk2IArskYpHXaXLzwwvdJs2bqQXN9/s
	 FO1JlDUoyRGbntptrbKmxPzy/DtdpYKhbsDCzqcOekwrBFScAxF4M3mFcBGqN5uktl
	 uVlCKRL2DIUDgrZtAB83JmUqAi6OvT3dLiKpYzjuKI/0xf9oHQVsrUvlbiCai4WcE4
	 Y/avwljrzBluSrOvA6s3cqdcFyjMoKZ3hqv27npHQuKqb8a5f3Z8fQrNt4qkDfUNw2
	 z3IVdDxmA7cxad3le5wLPqZPMSjt4C75ttGqPUpKmXUEAicOYnclW88nZGs+zDYXgX
	 v1DPC6HKUJd1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0clQZrRwrlG1; Wed, 10 Aug 2022 06:54:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E23481332;
	Wed, 10 Aug 2022 06:54:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E23481332
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 840BA1BF332
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 06:54:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C78D60FA8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 06:54:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C78D60FA8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ng5rOjNLQUFW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Aug 2022 06:54:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75BF660F9F
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75BF660F9F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 06:54:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="377305207"
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="377305207"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 23:54:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="932778536"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 09 Aug 2022 23:54:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 23:54:24 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 23:54:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 9 Aug 2022 23:54:23 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 9 Aug 2022 23:53:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l8lh+DYcgE909ptzZx13tZ5lAUV02UY4oop2lzSGPGusLrad6EMMUeTT9tmlNgHdS+sYNOjuXVvbaCO3TrLdRIBxZcxM0tkcym2Mayf/C1pEd0K25JiR/VNo+3q5RR9h1qlPNmqt40UV+HtV/1qk6Jf3n0TUf8VjeXt+lSH/yNGJ39/ek21ZgnuCu6ilnr0gvVA3f4TYLbeHEaTq3iH7N/DEmnjmgOEACxdYJnKddlP2pTcIF+J2Ij2UEDhUKGLShq5MuW3kOdyzrGPwvDhE3ohnT+yG/l+7A7bqoFuJOB3ARUXlD1TLI258bMmRoWhSJjPpj4TlyejYsPJYsBaXnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CjazKCCo1N+Bib3+K7EMSGBxR/Jp6i3jiu1NzMVKcvc=;
 b=c0p9kv58oXpt+4lbqU78x01+FN8S2BXhlHM4YtlLgYakLNM7suNNNZpMmm1x8bY+s4ZUErvCrB5buJ2Q3ryUkSI5xAaYIV/VwHPcomN0cf+91Hkg4jP6eFmnWhqE+VbS1aSlKqynJr7t8aZFBKph8/vu/mTDXUeKFOZHnw7wCx9PWmrtLE7tUJQacxfEBFXjHyIjdrJwBdXsPgfLWjehXl6xAjM+b3GQ2AVKBuXQE/TXP9NQMzcZQSr5mLJJehViX+sXhSAev53Px9C/BjV70MFlBfV+MQ4tt4eouIaZnLs2WJkmwDOkyoNTiGYYjBn36Riak9ro2XW0pxkTDxJFdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by LV2PR11MB5999.namprd11.prod.outlook.com (2603:10b6:408:17d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.20; Wed, 10 Aug
 2022 06:53:52 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5504.020; Wed, 10 Aug 2022
 06:53:51 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next v2 4/6] ice: track and warn when PHC
 update is late
Thread-Index: AQHYog7xE9t2kO3BG0aqBIGb673tNK2nx6Eg
Date: Wed, 10 Aug 2022 06:53:51 +0000
Message-ID: <BYAPR11MB3367D6962AA58A9E828F6CA3FC659@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220727231602.1625980-1-jacob.e.keller@intel.com>
 <20220727231602.1625980-5-jacob.e.keller@intel.com>
In-Reply-To: <20220727231602.1625980-5-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f38afcac-8d16-464c-9008-08da7a9d15bb
x-ms-traffictypediagnostic: LV2PR11MB5999:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gIGRACHLPgLRWJF/KZZqHz7TJAKp44Zzv0b/3TxPS5+35MZKX4wTg3PGMKWr07enb+XV+l9mH1YTVZNrbRa/kdL/WeRkFyAjrWgqRE5hJWjv3wzHoShlcUu7U1ebU6cAHzz9V9H3T6Kp06uhslWC3pG7zdvq5igcvwJdi1AwhkKtsnOoYZ5KZ5nIajByAalTHPRk+rMVYXwNolKSsgE3UIp/eJODsr6kmtB3ZkJb1HivxGkIKjpbdRcsU+/xZY2hu2o0khm3kkHsxmLOTsY0vHWkx2LVhOK0nEWTkQN+VWH5L9zQycU6si5O0ZhsC/v3woAgKbTUGMWIAcXFP+9x2VLyKPIB9TffeWVtZ3r0IVrishR2fdlPPve68ZoPKW6rYT2s5FAJmgWq8G9LSIh7GPaMpcavLD6XxfHyXtJl57E3VRdYjHMhw3ifCNBjKV0Exey/WnZa2yC6TRGgkKsjFylxi3AkHNPWncm0eU5CiWtYREOrwbOmYh2yuMQ68KYk8CKIIWhkMXMBXPM1iHzjuJtxeVrHG1dkxL0m3Q+AT/4rUoCwfYYJdjKMVsD3yVwqatayZUUOpvHijxbwyiKIhB2E9Rh9Ko7z1ydxovfeoGQR7VNVaAD/ckC9E6iSzyMBsdoq7nOJB+tANWxdno4jT+9vZTkRXzr8AjS7RCG63Fb8Zs93pQr01OPkB7MOsLg9c3nNdBbudU0HSgsOM5D1kMS78dUY+3nmSLFcVM8YFan7zuiYfdHUgKOj1qTyvBLu/jCbG8LOJDhqcFmDKO89Fkti2Il2AGBGY3LPV9Yv5Zk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(346002)(136003)(39860400002)(376002)(5660300002)(38100700002)(53546011)(26005)(52536014)(38070700005)(55016003)(186003)(71200400001)(9686003)(33656002)(41300700001)(6506007)(7696005)(86362001)(478600001)(15650500001)(122000001)(8936002)(316002)(8676002)(2906002)(82960400001)(66556008)(64756008)(66446008)(66476007)(66946007)(83380400001)(76116006)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dGQDHHvslddrH01ISwaxXCIhijl6ZdcujaSSUYmzY8DRpn5DvAJL1erjMKKC?=
 =?us-ascii?Q?i+xA3/BMMuX5+qSMRBbxHY5+khRNLhkB/j5Vq8XtRr+vgqRGsbq81vThJE7W?=
 =?us-ascii?Q?v0hHmZrkGiYGURw1mKNoEhDsvCt5GEWEXs+56FXvo/ihX+MT/yno+MiU+xFq?=
 =?us-ascii?Q?LrXNySxDGB79OgP+c28v1/dOfjMST46IILl/Ux+uuWeHO6cVhw5KJ9iFOj6N?=
 =?us-ascii?Q?732e2OGd7j9ki3HM2mh5U2Utzzbrj6oGBlkGjbN4FC3S+ToOTEwTGqOo5iUQ?=
 =?us-ascii?Q?ta7/zDMTV0qySCXjCPiShq3douvyedrGdWTPpEMBlQ1SgENKwc813N7VcVNx?=
 =?us-ascii?Q?KMeTGFODfAh8Ga0dOhTzOqnCQAxRWNJfwpZkLFB7u2v6VWKv4CqP10wUpYIe?=
 =?us-ascii?Q?mi/lVzGFKoQ6KuIMJz46SanZX2uuqJ+F45kBMTVl0cJxBWuysNyPHjjt3RtB?=
 =?us-ascii?Q?BP6DvusR9Y4h9tiJxPPxgpWSR/VA8luzSDDS1uR8xtNbAIFpiI3V5tiG/Afr?=
 =?us-ascii?Q?jalE72748LWhst5WT0uDiGcVIp1ZJjppIXgDip5TF87uWrPybeAyBuLRAM4c?=
 =?us-ascii?Q?GaOF3fZbixxdElumsVX3nXChYri00QaFkoPf1MmjzyYNVjCDbXCITFYkjfug?=
 =?us-ascii?Q?r0Jo/p9m63Pd7erS3TDEQ8RWQZpkBWKosHAitg7hYF6z5ReeIhsgcz9M9X4v?=
 =?us-ascii?Q?DATySWtQnEWichlSEAZuDioVvuUCBj4G6xsFzXII1A41Z0GMaaq9cE3afubi?=
 =?us-ascii?Q?4IZkOZVRZbfe1gH7ddRL1zMcFP6efVCYzpvO3JnIeQqS38qZz3KBa8TdV9E2?=
 =?us-ascii?Q?F+JkMLJPVkJ90Vw3YK0us3GBMw7sA7MM79z70T8j/dsXcUSwIHOCJwayHk/X?=
 =?us-ascii?Q?3tk54fXVR45IYiorDvCchT2R/ezkn99yqOhq87CaqXOacpxDCVNQGc+R5vHa?=
 =?us-ascii?Q?iYVHEN+aOiu4bvi4hlQNeGHbaa1biw9cX1uJYeKw6ByfGZTpOzPGSSmSNdZ+?=
 =?us-ascii?Q?o5+7x5CJ2MSXTCxkjN/OTy/lpH9QfpwRZnpPDilXpUAr8glqIHSVfm2UjKgp?=
 =?us-ascii?Q?hjwz1SOX6e+nPTItn2QBXuVSGiliGW+CMAgEi+Kg+bp1vxJe7V33gbXf/OWd?=
 =?us-ascii?Q?Na1+DjP2DeHJqkZzGKPS8SFZPu5TgtRuJXVoJ9IIowp6G5rhxwB003ozWaBP?=
 =?us-ascii?Q?+CVoqv3O+ESV2jhfIWqo9sO5i+t9kSdjfE/XxpwSuMAH8yFoF0dYyMoBZYHA?=
 =?us-ascii?Q?swvPwpOYdGWAEzSit/6lHVacJzC4wXdDs1ixfPz0gSlV0atRjGgVnCI96/NX?=
 =?us-ascii?Q?N/O85Tobi8CHvLMerHsNnDlhwQ3Va+cG4YNogLBFYY8argDR0aOcheGyI4PO?=
 =?us-ascii?Q?aXtswhubLSFP0BKty8D+gWeIaKZ9qSR9cJJZv4bZq+NWmZnN62VH2coRnI2o?=
 =?us-ascii?Q?beTUWgUtVJTl64G4sd5CglKLjCQfROfb6OSq4ObeNgDW+vVK2p+rFdzagQ9S?=
 =?us-ascii?Q?g/Q3blr6jgjYUDzjemBnEzNO/SOHD7hNXqgcgP8Wj0FU2tbLS2rcgtQXGa82?=
 =?us-ascii?Q?unmEnl8KSNfvXMsmWJDr5cP9zMM45j7JxLjns28G?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f38afcac-8d16-464c-9008-08da7a9d15bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2022 06:53:51.9101 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XHCanPgWHwLgzKWzz6DL9fSIT5Wg/c+rAZm0VUqt755xFOogSJb4u1cVW+SMvYRZY7gkdAPal4H1c6QYv1sTDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5999
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660114473; x=1691650473;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cvm2XOQ3R0ZpPFlb3X49HBoroHLtXkSgTOsidIU6vRI=;
 b=QtY7lUy9dJwX3HklTZZt+hGV11Ns4IMOz3wWftfE3SkH3nAM1cr7DXX+
 80ZnFf+mLXvIuJGLtBh9ZdtzpUud4F1nQcY8Kk4Nb9dbJPUqz/ZT0rBCj
 58KjQ1PPkazuw3ZcNiAmnrKqRyrGzixaQypmM/mJiiJKkTQyXr9iY9s/j
 Qyhv3AZ+0aHAoiBILb6k8LC36bcIR1RZVd4oPJMbSnbgcjZ085Ulk22Rt
 o3cwo35uOpAwmAnb8u7ZMcOmJ59uDMo912GxfyEVEqimY2Xis7MoSYhZT
 4zBlx2OGYGaSSG+aw6iZ/he0yemcaTUg6wPJMxawBHIcEznCh8eqq/DVG
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QtY7lUy9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v2 4/6] ice: track and warn when
 PHC update is late
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
> Jacob Keller
> Sent: Thursday, July 28, 2022 4:46 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next v2 4/6] ice: track and warn when PHC
> update is late
> 
> The ice driver requires a cached copy of the PHC time in order to perform
> timestamp extension on Tx and Rx hardware timestamp values. This cached
> PHC time must always be updated at least once every 2 seconds. Otherwise,
> the math used to perform the extension would produce invalid results.
> 
> The updates are supposed to occur periodically in the PTP kthread work item,
> which is scheduled to run every half second. Thus, we do not expect an
> update to be delayed for so long. However, there are error conditions which
> can cause the update to be delayed.
> 
> Track this situation by using jiffies to determine approximately how long ago
> the last update occurred. Add a new statistic and a dev_warn when we have
> failed to update the cached PHC time. This makes the error case more
> obvious.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  2 ++
>  drivers/net/ethernet/intel/ice/ice_ptp.c     | 28 +++++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_ptp.h     |  7 +++++
>  3 files changed, 34 insertions(+), 3 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
