Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F44B0EFF2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 12:36:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DC8540F32;
	Wed, 23 Jul 2025 10:36:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3mk8SJgCIqjN; Wed, 23 Jul 2025 10:36:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2DF340F34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753267001;
	bh=DwNVXXRJ/krHno529j0zwxU+EG4euEa0oeczIJEUNqI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gqiXuvvGiF7HG1/bNJPYnqYNTQP3xz2jRwM76xLvgBNwXEsWOCIjPIVF2XBChMrCz
	 Ovwi41+xECZubA4uX37GlcdnixUYjZb75gtQojfNNtrdcOYMHqYMGEWxijp0JWPqgR
	 OkqihUSVKSYZfv3YSKNkkPVFoEK7DXl4Ymys9vS9Gfn4AciATTeXyIUiXyWzv6it8M
	 QwbngzRA9QL1Z9sUw3QD2TPahy4hBFNVyYbCRbQtwH/Z/WEHtLNzL67Op846n3TDMZ
	 CUafD9SNlbB2dx7PU9Rdxi1q3dE7fWTD2nv5cn97LchMk4m2jqI2AaJz0miQCVQBtu
	 eHNIicxk4xz9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2DF340F34;
	Wed, 23 Jul 2025 10:36:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E5DD2DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:36:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D77C54006A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:36:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zQXPhh4E3qAW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 10:36:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DE225400FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE225400FC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE225400FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:36:38 +0000 (UTC)
X-CSE-ConnectionGUID: HnA/BNGST0eHmbIbHMBvXA==
X-CSE-MsgGUID: awDOtgU8RLCRPPj+v14t4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="43164567"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="43164567"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 03:36:31 -0700
X-CSE-ConnectionGUID: 2pX1d7BYSrKyw5sdmJj/aA==
X-CSE-MsgGUID: 4I1wQ6lrSZm+xFeiFBhW8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="159167771"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 03:36:30 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 03:36:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 23 Jul 2025 03:36:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.64)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 03:36:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PFkztPMKqsk0ZPLFTA6ebLspOR8nS5UQNroNXxbGKCnrbdfRx35hXgEYWlknMZK6hY9EGC6GYJHJfAUciqRmZB5OdsZDZjNQ+jNdBgWY87mNNB73aueX+iPstzR+70CdY2oxHH2yEiJJHP6awCnqIMN2V0kT/O3/S8/kZuIv3ebJabWZGH/zyG4iefUrRPhq5bJkGpBpkE7yXtiD9USb/IfCS9dobafshiYSVKpHstnX5tG7cJXP8zWAkf0k4TL58b7p3DQE1pz9tTU7RR4qJzk0t1KL8SvaHYyHxUaHdoQPdoPINB/xwOujoP8m7X5uf3kqaHx92NMbysrk8ERrqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DwNVXXRJ/krHno529j0zwxU+EG4euEa0oeczIJEUNqI=;
 b=GRbQwL8C2X3Ctzv6bss5n92uDe/tFlMhZ/fGi1ZcUpO8xipG9YwusjBvryWLRAWMIUoAC7McHSuVdHefhMU2qeNeIQ4WugXrt5w34Du0KB2SNulnl1YggnkbrWXFX/Emyc9IguQEBcXh0LgwXEFtNLicUHyOzQXqdrZOtBdW5I/2fAxb2BFx4ev72c9t2V8hTVddxO9uEvD62A+6xC8DE6OkILfz37ROmlD+tsKDbNDglFZbEP2XFrztN9cyy25mJ0xrWHl626+iTD3iZMsssAZl2dB5te3YadQxoUugC5aIvhD37cu+Oci9SyhMhpMsUgF6mhHA+pQcsbSoYN9rjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA3PR11MB9276.namprd11.prod.outlook.com (2603:10b6:208:572::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.25; Wed, 23 Jul
 2025 10:36:27 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Wed, 23 Jul 2025
 10:36:27 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "dawid.osuchowski@linux.intel.com"
 <dawid.osuchowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 05/15] ice: add pdev into
 fwlog structure and use it for logging
Thread-Index: AQHb+vjSJq82MJccXk2rlRKhyzGL5bQ/hT0w
Date: Wed, 23 Jul 2025 10:36:27 +0000
Message-ID: <IA3PR11MB89866C84FFEC1183637926B9E55FA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
 <20250722104600.10141-6-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250722104600.10141-6-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA3PR11MB9276:EE_
x-ms-office365-filtering-correlation-id: 21c90e36-16f6-45ae-cb77-08ddc9d4c78a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?yxlpF3Cn3ymtRGMfksDkS8ReKh+YKyWDrtDRVaD2glriVaDCxWPzl8AE64G0?=
 =?us-ascii?Q?seEwRXb1OSIHGaD9+wdC1fjYrODpkWTvSh6rogoYwVDBl7lPVmrkmFV2qjTZ?=
 =?us-ascii?Q?4ASMhG75tXHBUKSw5pLLt3GNMeKEmbvooJa4ZNHOBsyABbbKw8qM1AQKYTci?=
 =?us-ascii?Q?YWrGI5VXwoyQ5+F2KlVwchKDDTAlwFL7kn80O63hMjK3kxI6TPLDkYTjgmjb?=
 =?us-ascii?Q?bz2flBlYktPOaP4FmyOUHO+NQv+SZwdVRGmSNer+Oll0VFd1YE33MEmG+5BS?=
 =?us-ascii?Q?ILWBOxMnMCGftDEwdEPlbne3sPgwxD1xlI8X3S2VWJyVWNxuNOgxtDenrG2x?=
 =?us-ascii?Q?kmM/PCgyaAOdA8nXJiPDrtXcE6UlbhiARuHHNyhWajkcJzyXA6sJKHFqFLre?=
 =?us-ascii?Q?eqgOoF/9pmp3W+qellKE1qRGRuZGHqPUqty4HoQ+cv5N45VvXRk5vFwnA0f0?=
 =?us-ascii?Q?0F+h6H+NKPYhDy897m9xwnWSvsk5BPbyTLQJaw7R8XRjuHp62WoeQC4abVg8?=
 =?us-ascii?Q?W8Gx8qRy8VzhLsc1mwKzeJPPz+Sgn8H1aqj53gxCz4WaK+eA5YVXETq9rZCV?=
 =?us-ascii?Q?XStrxYHJhGrxuNoNOy3HnrolPIAY7K7l1ylZ4+oL9T6or4fL0XqKIfgW7g4B?=
 =?us-ascii?Q?0hB9edMnvVEPJsTwzGHKs6IYMAHtcIqws+s93dBoyzfFZjJuEq5uZBwp4OpE?=
 =?us-ascii?Q?l7RijevvOizllyRB+NzOyfu7/sSyP7SILt2eGIg8HdKKRtDlBEJMOwgiw4tr?=
 =?us-ascii?Q?tMk4jw6VpmtEd+Ridk73Zymdvurn0WoMS8+iLCi/VlBfxEQbqZ+jbBcMik4Z?=
 =?us-ascii?Q?XirFUhdvmM8tRn/mhoWDVbCzeaPOFS4QTKC3qkEnl5SFXwiFO99nkmWGe7fn?=
 =?us-ascii?Q?JyGlOsSFEh7Q06a4+hCyzJtjzJ06ua8kiEpQ4z4r5nRuqcnFFBBG+JDnasBl?=
 =?us-ascii?Q?Mc3hZBqP0kSgvkW3s5+soFKbMJzuBd0xjtxhYS0QNeOBecAHZsmAHI1MCqWv?=
 =?us-ascii?Q?P6Mau0mK0D0vQ7vl25zEAkz5aENk+/Ac0kUtjxbJk73rkiH3rp4I+pFdMZ84?=
 =?us-ascii?Q?B/aItVshkFj1tP/x15h9SHzyDXfYNt6RFuGgQYqb5DJzg1RdwybThuGzqoN4?=
 =?us-ascii?Q?O8hTpyKuRd9v5lUwuOBBKuXfWukHNQkX7nYeBBCQGGVVb2XPCCA+xJdZDhfY?=
 =?us-ascii?Q?O2XzewKMjItcHl1NxArtNhlgywaBWxLTpGgdqeERkFgL1lLw+qI5AQOnnGnq?=
 =?us-ascii?Q?XFtjU0GYF4cpUwrwcbrs3B5aJSH0Ti0O/MJg0QdaqXOGA60Lbx34zjk4meAs?=
 =?us-ascii?Q?ITia6cafV/o0t+NKlPPych0XZFYOfrhZHU/LSHxn3aWWxjXHOJekoLCOYm9r?=
 =?us-ascii?Q?JpxbPNrBdCESCZN4p4xvfi/7SdCJoU8cFCf6PphkE0iD4fSV5e2S6K8VN3Gy?=
 =?us-ascii?Q?k/KjrID2m6SWMcayis+fmolUwP8Ou8VZgYHaUZ8sjB3LOoMfOmWeHYgeC8Qu?=
 =?us-ascii?Q?BEe5LmEz0OoER0I=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lfGWEmC8AgxwJAX8EgxSnZtm7mJEd9UmqveKysBRoUObudBqLh7r1lmRdxh/?=
 =?us-ascii?Q?1GZxY8gxZalqUz5Hoc700cHN/yoMitIOSxW6Tp+PiSfL+IVOgeUueFJfXhs1?=
 =?us-ascii?Q?lJeMhrF3NpuwO54CSB1prD0SA1K9Sqg+JYIz1NsgoT083DSHMb9jEh6bG/Wy?=
 =?us-ascii?Q?hTB60CPSrMY9HzmGvc+btqzsmeDG2JnkhnenNSMiY2KRTBFL5xguEFzbSKRz?=
 =?us-ascii?Q?iQ+2HHZFVUZp8DLTYepgVxunFejz6KOoIVp54m2T447YwOxU4qnF+ya5e0vQ?=
 =?us-ascii?Q?CSTaSPh3u56HuXFPafjI/5n5XtaaXZc5g6YdyTzSbOwSdrlFevMtA2keqS0L?=
 =?us-ascii?Q?pEOp6I9Ix3c3ozq+8H12G9gYMowAYXV0lZ2R2KOCF3bh/pfm17fnXxd0TVFK?=
 =?us-ascii?Q?6A06+7St1I/X+/8VfzvAJA8t+jP+GmxHqGyb6T7SGVGI+Pe7g6Q3ikN8tp7a?=
 =?us-ascii?Q?PU2zIYz5vACWLphCx8GCTm0JPClrEapuZO2t/PFsAqIEI2Q7bU5ktpNTNhag?=
 =?us-ascii?Q?cU+bVRjW7Fzdlnpi9BS5YXm9EkRjsGlXgYhiI3r+T5ZJKzJ0ve+kMBX26CxO?=
 =?us-ascii?Q?joY/YVzEs8G7wPW7vNxaHB6IgqK0HpQDcI/fTC1D8r98HuTC86uppBtM+RFA?=
 =?us-ascii?Q?QLmsFJBPZF4DeNOPAFRDJKSwDYtPQBsT/O/rXN6D0ffCQX537BAHwVX8GChb?=
 =?us-ascii?Q?9s231nY6OYJyKGDug6SQJqF6MXVJUjG1P4ZZdgV9BCFqHqa8AeX3ncbnkMia?=
 =?us-ascii?Q?Nhl2gO5waVin1hhX7O0R//AXRrmhzMJuvmfHixOBOOiM/Al37bawx7mfQntE?=
 =?us-ascii?Q?Y8gx1tuAz50iAtzQR3NpOrt2xtbgQ4y1t/6pfjweE+yCMSBjh+hyqPdZI2U5?=
 =?us-ascii?Q?/w1IJ5iQYJKGVUYqJR5lU27kTK9MIdlr93v9enqDgoDOU+b3/wT0yham8GzF?=
 =?us-ascii?Q?r7wH+fitQ+olfb7RKQNLGO/hZaY23QIIU4CDachL7TfxDVnOkTMTK369nWKo?=
 =?us-ascii?Q?pZcILkGQslWeC5fIn875RimoLmgjcWPhbNUJxdqN7zHWAmM0bnu56Cnl29gR?=
 =?us-ascii?Q?rZHwJ+FdM2D3YNC7/gDhUe3aMd9OgUe5NaeqmsIr2rtA720/UFcvHdn8W1+Y?=
 =?us-ascii?Q?7MmEH3otXgv5qzyd5MmJWruo59htHRYLaR9kKBU9xGMCpEedLLvxuRHE/j4t?=
 =?us-ascii?Q?xReVDRZwK8nsUGFbhfdDA2DPLUtLO9WFDujiyHhMyTkM7qQb3tIS9wIyCAk2?=
 =?us-ascii?Q?OtF8CPaScLn8KZGQJkSBLCTwA9o+6NVxMpLwnJMphwFjwp+F+/Eh7KkhPeLX?=
 =?us-ascii?Q?rbbIt56NoEr5lf7SgorRVJoW/8tjFbni9BLDJYG49PM0JvMlCiYzgzeYYuWa?=
 =?us-ascii?Q?UnYY+k2wuAVsbc4iflmRioW8TS9V9IxUzNb+d2fyxjJsAqPk9gwINkFZcjpe?=
 =?us-ascii?Q?VtTdFyMmsLsFWDKu+sdJ7YaJltcrJQsjUbMrNujQBGj/qJ2+gp8Xxnp9Xu1g?=
 =?us-ascii?Q?pabtgNg6ZLqDoIrojEXynDiZRT4FwK0R+VEQ2rwogqphOzudA6PA99oGgX7G?=
 =?us-ascii?Q?/M4K1eAhjexVWx9roYJVdUUta3fK7urEVj213xZA79Z30pL0Mqhm1oYL/krb?=
 =?us-ascii?Q?sg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21c90e36-16f6-45ae-cb77-08ddc9d4c78a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2025 10:36:27.4016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xcaikApQ7eRHwsaw92zLVMKmLk/p0DsEY0WJYh5oK6OrS0sAKI/d9R5HXwBplBXLX7n8+yO+6GEn+SI94VmJIiRhkrk0Hdkzxdgcg2/dhjA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9276
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753266999; x=1784802999;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B/KkGFHwnbsugqKzBVWOTbF0mDdKMDYWLgYU/sbO1WE=;
 b=iAxq63Z7m7IpU4i7z3yvlLVb1QvRnU/7kLawVeJ05CSkyjBrvk+x3B+Q
 UAtWpkVMHz6cIuFYQEYHnENTIX17pq/sE8/eUIb54E8mxxwbk2pxiHY6u
 YD4xzn8ArEp3D+TzzP7IK9nvyrVIE0NgfuGoJDj/0AmMufIzgX2CdNLjU
 L2ww1nzi4/PoSJCqLqaUzSuCzDdzx5A+uLoTFCmi027YK+68rDSMvLzqo
 19NqldlQkkdPoNqzi/QtxsdlqUJHykmJnquvrkOCtA5DOhNam1WXAlxk9
 WAt2QNYj1ad2HMG0OxKYHAGsRQZPQZEYwp73wtNCKqfWOy6STwRSqSwbr
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iAxq63Z7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 05/15] ice: add pdev into
 fwlog structure and use it for logging
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Michal Swiatkowski
> Sent: Tuesday, July 22, 2025 12:46 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; dawid.osuchowski@linux.intel.com;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 05/15] ice: add pdev
> into fwlog structure and use it for logging
>=20
> Prepare the code to be moved to the library. ice_debug() won't be
> there so switch to dev_dbg().
>=20
> Add struct pdev pointer in fwlog to track on which pdev the fwlog was
> created.
>=20
> Switch the dev passed in dev_warn() to the one stored in fwlog.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c  |  3 +-
> drivers/net/ethernet/intel/ice/ice_debugfs.c |  2 +-
>  drivers/net/ethernet/intel/ice/ice_fwlog.c   | 37 ++++++++++---------
> -
>  drivers/net/ethernet/intel/ice/ice_fwlog.h   |  7 ++--
>  4 files changed, 26 insertions(+), 23 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index 5d7f348aa596..7f293c791775 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -992,6 +992,7 @@ int ice_init_hw(struct ice_hw *hw)  {
>  	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) =3D NULL;
>  	void *mac_buf __free(kfree) =3D NULL;
> +	struct ice_pf *pf =3D hw->back;
>  	u16 mac_buf_len;
>  	int status;
>=20
> @@ -1012,7 +1013,7 @@ int ice_init_hw(struct ice_hw *hw)
>  	if (status)
>  		goto err_unroll_cqinit;
>=20
> -	status =3D ice_fwlog_init(hw, &hw->fwlog);
> +	status =3D ice_fwlog_init(hw, &hw->fwlog, pf->pdev);
>  	if (status)
>  		ice_debug(hw, ICE_DBG_FW_LOG, "Error initializing FW
> logging: %d\n",
>  			  status);
> diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c
> b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> index dbcc0cb438aa..1e036bc128c5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
> +++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> @@ -450,7 +450,7 @@ ice_debugfs_log_size_write(struct file *filp,
> const char __user *buf,
>  	}
>=20
>  	/* free all the buffers and the tracking info and resize */
> -	ice_fwlog_realloc_rings(hw, &hw->fwlog, index);
> +	ice_fwlog_realloc_rings(&hw->fwlog, index);
>=20
>  	/* if we get here, nothing went wrong; return count since we
> didn't
>  	 * really write anything
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> index a010f655ffb7..b1c1359d5ab5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> @@ -73,13 +73,11 @@ static void ice_fwlog_free_ring_buffs(struct
> ice_fwlog_ring *rings)  #define ICE_FWLOG_INDEX_TO_BYTES(n) ((128 *
> 1024) << (n))
>  /**
>   * ice_fwlog_realloc_rings - reallocate the FW log rings
> - * @hw: pointer to the HW structure
>   * @fwlog: pointer to the fwlog structure
>   * @index: the new index to use to allocate memory for the log data
>   *
>   */
> -void ice_fwlog_realloc_rings(struct ice_hw *hw, struct ice_fwlog
> *fwlog,
> -			     int index)
> +void ice_fwlog_realloc_rings(struct ice_fwlog *fwlog, int index)
>  {
>  	struct ice_fwlog_ring ring;
>  	int status, ring_size;
> @@ -109,7 +107,7 @@ void ice_fwlog_realloc_rings(struct ice_hw *hw,
> struct ice_fwlog *fwlog,
>=20
>  	status =3D ice_fwlog_alloc_ring_buffs(&ring);
>  	if (status) {
> -		dev_warn(ice_hw_to_dev(hw), "Unable to allocate memory
> for FW log ring data buffers\n");
> +		dev_warn(&fwlog->pdev->dev, "Unable to allocate memory
> for FW log
> +ring data buffers\n");
>  		ice_fwlog_free_ring_buffs(&ring);
>  		kfree(ring.rings);
>  		return;
> @@ -165,16 +163,16 @@ static int ice_aq_fwlog_get(struct ice_hw *hw,
> struct ice_fwlog_cfg *cfg)
>=20
>  	status =3D ice_aq_send_cmd(hw, &desc, buf, ICE_AQ_MAX_BUF_LEN,
> NULL);
>  	if (status) {
> -		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to get FW log
> configuration\n");
> +		dev_dbg(&hw->fwlog.pdev->dev, "Failed to get FW log
> +configuration\n");
>  		goto status_out;
>  	}
>=20
>  	module_id_cnt =3D le16_to_cpu(cmd->ops.cfg.mdl_cnt);
>  	if (module_id_cnt < ICE_AQC_FW_LOG_ID_MAX) {
> -		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned less than the
> expected number of FW log module IDs\n");
> +		dev_dbg(&hw->fwlog.pdev->dev, "FW returned less than the
> expected
> +number of FW log module IDs\n");
>  	} else if (module_id_cnt > ICE_AQC_FW_LOG_ID_MAX) {
> -		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned more than
> expected number of FW log module IDs, setting module_id_cnt to
> software expected max %u\n",
> -			  ICE_AQC_FW_LOG_ID_MAX);
> +		dev_dbg(&hw->fwlog.pdev->dev, "FW returned more than
> expected number of FW log module IDs, setting module_id_cnt to
> software expected max %u\n",
> +			ICE_AQC_FW_LOG_ID_MAX);
>  		module_id_cnt =3D ICE_AQC_FW_LOG_ID_MAX;
>  	}
>=20
> @@ -225,8 +223,8 @@ static void ice_fwlog_set_supported(struct ice_hw
> *hw, struct ice_fwlog *fwlog)
>=20
>  	status =3D ice_aq_fwlog_get(hw, cfg);
>  	if (status)
> -		ice_debug(hw, ICE_DBG_FW_LOG, "ice_aq_fwlog_get failed,
> FW logging is not supported on this version of FW, status %d\n",
> -			  status);
> +		dev_dbg(&fwlog->pdev->dev, "ice_aq_fwlog_get failed, FW
> logging is not supported on this version of FW, status %d\n",
> +			status);
>  	else
>  		fwlog->supported =3D true;
>=20
> @@ -237,17 +235,20 @@ static void ice_fwlog_set_supported(struct
> ice_hw *hw, struct ice_fwlog *fwlog)
>   * ice_fwlog_init - Initialize FW logging configuration
>   * @hw: pointer to the HW structure
>   * @fwlog: pointer to the fwlog structure
> + * @pdev: pointer to the pci dev used in dev_warn()
>   *
>   * This function should be called on driver initialization during
>   * ice_init_hw().
>   */
> -int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog)
> +int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog,
> +		   struct pci_dev *pdev)
>  {
>  	/* only support fw log commands on PF 0 */
>  	if (hw->bus.func)
>  		return -EINVAL;
>=20
>  	ice_fwlog_set_supported(hw, fwlog);
> +	fwlog->pdev =3D pdev;
>=20
>  	if (ice_fwlog_supported(fwlog)) {
>  		int status;
> @@ -261,7 +262,7 @@ int ice_fwlog_init(struct ice_hw *hw, struct
> ice_fwlog *fwlog)
>  					    sizeof(*fwlog->ring.rings),
>  					    GFP_KERNEL);
>  		if (!fwlog->ring.rings) {
> -			dev_warn(ice_hw_to_dev(hw), "Unable to allocate
> memory for FW log rings\n");
> +			dev_warn(&fwlog->pdev->dev, "Unable to allocate
> memory for FW log
> +rings\n");
>  			return -ENOMEM;
>  		}
>=20
> @@ -270,7 +271,7 @@ int ice_fwlog_init(struct ice_hw *hw, struct
> ice_fwlog *fwlog)
>=20
>  		status =3D ice_fwlog_alloc_ring_buffs(&fwlog->ring);
>  		if (status) {
> -			dev_warn(ice_hw_to_dev(hw), "Unable to allocate
> memory for FW log ring data buffers\n");
> +			dev_warn(&fwlog->pdev->dev, "Unable to allocate
> memory for FW log
> +ring data buffers\n");
>  			ice_fwlog_free_ring_buffs(&fwlog->ring);
>  			kfree(fwlog->ring.rings);
>  			return status;
> @@ -278,7 +279,7 @@ int ice_fwlog_init(struct ice_hw *hw, struct
> ice_fwlog *fwlog)
>=20
>  		ice_debugfs_fwlog_init(hw->back);
>  	} else {
> -		dev_warn(ice_hw_to_dev(hw), "FW logging is not supported
> in this NVM image. Please update the NVM to get FW log support\n");
> +		dev_warn(&fwlog->pdev->dev, "FW logging is not supported
> in this NVM
> +image. Please update the NVM to get FW log support\n");
>  	}
>=20
>  	return 0;
> @@ -308,7 +309,7 @@ void ice_fwlog_deinit(struct ice_hw *hw, struct
> ice_fwlog *fwlog)
>  	fwlog->cfg.options &=3D ~ICE_FWLOG_OPTION_ARQ_ENA;
>  	status =3D ice_fwlog_set(hw, &fwlog->cfg);
>  	if (status)
> -		dev_warn(ice_hw_to_dev(hw), "Unable to turn off FW
> logging, status: %d\n",
> +		dev_warn(&fwlog->pdev->dev, "Unable to turn off FW
> logging, status:
> +%d\n",
>  			 status);
>=20
>  	kfree(pf->ice_debugfs_pf_fwlog_modules);
> @@ -317,7 +318,7 @@ void ice_fwlog_deinit(struct ice_hw *hw, struct
> ice_fwlog *fwlog)
>=20
>  	status =3D ice_fwlog_unregister(hw, fwlog);
>  	if (status)
> -		dev_warn(ice_hw_to_dev(hw), "Unable to unregister FW
> logging, status: %d\n",
> +		dev_warn(&fwlog->pdev->dev, "Unable to unregister FW
> logging, status:
> +%d\n",
>  			 status);
>=20
>  	if (fwlog->ring.rings) {
> @@ -436,7 +437,7 @@ int ice_fwlog_register(struct ice_hw *hw, struct
> ice_fwlog *fwlog)
>=20
>  	status =3D ice_aq_fwlog_register(hw, true);
>  	if (status)
> -		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to register for
> firmware logging events over ARQ\n");
> +		dev_dbg(&fwlog->pdev->dev, "Failed to register for
> firmware logging
> +events over ARQ\n");
>  	else
>  		fwlog->cfg.options |=3D ICE_FWLOG_OPTION_IS_REGISTERED;
>=20
> @@ -457,7 +458,7 @@ int ice_fwlog_unregister(struct ice_hw *hw, struct
> ice_fwlog *fwlog)
>=20
>  	status =3D ice_aq_fwlog_register(hw, false);
>  	if (status)
> -		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to unregister from
> firmware logging events over ARQ\n");
> +		dev_dbg(&fwlog->pdev->dev, "Failed to unregister from
> firmware
> +logging events over ARQ\n");
>  	else
>  		fwlog->cfg.options &=3D ~ICE_FWLOG_OPTION_IS_REGISTERED;
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h
> b/drivers/net/ethernet/intel/ice/ice_fwlog.h
> index 334a125eac80..9c56ca6cbef0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
> @@ -68,16 +68,17 @@ struct ice_fwlog {
>  	struct ice_fwlog_cfg cfg;
>  	bool supported; /* does hardware support FW logging? */
>  	struct ice_fwlog_ring ring;
> +	struct pci_dev *pdev;
>  };
>=20
>  bool ice_fwlog_ring_empty(struct ice_fwlog_ring *rings);  void
> ice_fwlog_ring_increment(u16 *item, u16 size); -int
> ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog);
> +int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog,
> +		   struct pci_dev *pdev);
>  void ice_fwlog_deinit(struct ice_hw *hw, struct ice_fwlog *fwlog);
> int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);  int
> ice_fwlog_register(struct ice_hw *hw, struct ice_fwlog *fwlog);  int
> ice_fwlog_unregister(struct ice_hw *hw, struct ice_fwlog *fwlog); -
> void ice_fwlog_realloc_rings(struct ice_hw *hw, struct ice_fwlog
> *fwlog,
> -			     int index);
> +void ice_fwlog_realloc_rings(struct ice_fwlog *fwlog, int index);
>  void ice_get_fwlog_data(struct ice_fwlog *fwlog, u8 *buf, u16 len);
> #endif /* _ICE_FWLOG_H_ */
> --
> 2.49.0

