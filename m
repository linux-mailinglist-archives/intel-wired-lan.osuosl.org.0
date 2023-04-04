Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B18496D6B71
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Apr 2023 20:21:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAA2541702;
	Tue,  4 Apr 2023 18:21:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAA2541702
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680632467;
	bh=v/NNoEPpA+6vIVjcOkO5oWfZlu9h04g1qmbxa9eIa64=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NASsYvHVVH1IOC6MRwa7PjTV/YWMZfUshy8V0ZDDclXz3omFLosIS2wvaiXquF9Mt
	 IM4Q/Rw52lxsFJxM5I+AlSl55zO0+D23bGv5fUZz5hOgAzEiA3bkzkROBJJ9qwQ+Rx
	 YrTAYkHpOLaZuJt0J5gdOmTQ+JmBB7FMpFsctD/FguMspLC39VkpE00KDw/bJKXoZc
	 EZXllszYaL2myUlLVwPp6LzQNRNcSBch1uuCdP1JnxremsMa1fHxfSev12hDAKwzio
	 tuQjg9LZOz1Rg7o7G5JjnYdFjV+EaWoD6rDkrho7To4zBBn44Jad5xYdPtE+043JZj
	 T6o/+7dBrZsIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 85lOPhMp7l7H; Tue,  4 Apr 2023 18:21:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3367416E2;
	Tue,  4 Apr 2023 18:21:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3367416E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26BEA1C2851
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 11:26:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 087F0409A8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 11:26:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 087F0409A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h1qsnmFime6I for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Apr 2023 11:26:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C53F7408ED
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C53F7408ED
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 11:26:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="330741564"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="330741564"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 04:26:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="810201639"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="810201639"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 04 Apr 2023 04:26:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 04:26:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 04:26:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 04:26:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 04:26:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z3n1P+78JxQDVCH2Sgd39ouJU6OuH6+th16YaLS99rZvQGtMqUMW+kcCMZOzq6pjoYb6A6DfQMxbFqD+WvvdnqqhmRIGCM3Bh32nEL5CRBGe64QA7t0HSRoQBKKCOkOMtnWb9PWtvEXJ0llRKoAx3ZighcRZKszC9UuMy1cD9J8fCJoVQqFpdLxzF9VXzkHWeyeJ8vrxt3GLrcKxscZ/XO4MvZEBn89bA3NLqSrJWrIGTgI3NHbGUsmZv83peRgpt8aN7+IZB2cqt13vH8S9dbExor4sQgcPYcl3Sc4wsnqj7uDSXKeOgLRfys50ivuv5SJ7dWtI/VTqRLqBiWHnBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=71YmephI+EGnDPMYsWJUfszpNNnhDfvwQTNOxgwWUmQ=;
 b=Cv9e+aNhhG0oCKbi7NN+tXVKDCKRaWUTNKUANNH3BiwAtPcQRqmaoBd+azfB8VOrY8Ox1yhdDmougHPplPpO4KGu0RWD/h/ASMof5xBttH7RxfOkfBM/vZw/rt4ZNfJJ2wtodlUGubaftFd4UZxWePrFGziuCCqrkVPN0SFu4Z5skZXbYSXu3ByTO8TmpH7AuK1NNRICWbCtknAbNTIDyM8J39OzPBkhNVnBJkNv9MU9WphXhMLgj1TlWjKaS0EfdqzT1WRZ4z6DmLcRRXt7i2iOGUBdCJPwUE2cFeXpN7kSbNHBVvvLwxsS0QukmSaUpr6dLKlXRpyzZJZhRZlhBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CY8PR11MB7193.namprd11.prod.outlook.com (2603:10b6:930:91::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Tue, 4 Apr
 2023 11:25:55 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::2134:cc5d:b9b0:13c1]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::2134:cc5d:b9b0:13c1%4]) with mapi id 15.20.6254.035; Tue, 4 Apr 2023
 11:25:55 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: fix accessing
 vsi->active_filters without holding lock
Thread-Index: AQHZXnSDnQLUCJ3bGkm1k5AxVvd8ga8bEcxA
Date: Tue, 4 Apr 2023 11:25:54 +0000
Message-ID: <BL0PR11MB312287BEBB1DAFA7E1444F87BD939@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230324171638.1212516-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20230324171638.1212516-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CY8PR11MB7193:EE_
x-ms-office365-filtering-correlation-id: f4488b00-8292-4ffe-37ff-08db34ff5a65
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: APs5JyYSiDmdOu5cb6lFR3AfZponrKSM3yZrY0w4hihXPt+NDUYIcWmTpeCLWH7f7hrbTRJcBBJFhRy5bi9IGR4cfG2wO1WTht+7HbnhjoXB07gImiyDcshNGLoR9joi/xIdVwzJkc8C+tMGI40RYBNqZniESi+a96f9eO5EZU/RYh/UVHAVVFy7zcoUSRq//rK/MqTVxlCOAd/skHqXxnjv0evajaCWN9dCy15gUwjmhucqz+PhEfryTcv6qwd0IQTNTXa1F21btssTMwnBkSEWPxPFXV39vdO+v46ovnCWcJERCu0d0rLkpped9X+yeNgY/WX0KdIUBIYCItHD4Vgq0EE8khv5KowO8CGoRzf2EHvTYIoW9kwijOQXId8s0WGBgZAWfCRGd71amW/Ce3UEvL1kSUQMquoS9WZ1kcy6sdw02V0tpCtqm5Zgj6Xx40kG8P0f+mHI+0d5jzeNP3oA+Aa4jXLx/dtuwYQXtcDTPn/xQxclMQ6aS+gjIayFDQMNkHPUpOi6IDEfE7Ggv/gMb4mWnzv1SP6nkHK849Pea0qyck+BbWjwXYLCeGc3pSdyUTlZs+RsJAtAtGW4vhbY981Ni5UeSHYRIMF5NOGV6I+gqtXFRc8YWUhJTN8z
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(136003)(39860400002)(396003)(376002)(451199021)(38100700002)(5660300002)(122000001)(4744005)(83380400001)(110136005)(316002)(53546011)(7696005)(71200400001)(55016003)(86362001)(9686003)(478600001)(186003)(33656002)(6506007)(26005)(38070700005)(66556008)(82960400001)(66476007)(41300700001)(66446008)(8676002)(66946007)(64756008)(76116006)(52536014)(8936002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?t5CfCfBhk6orK503qwvJKeGUNdGEqawuiyB5IJzerxvLJu/OHGQhZw+6My84?=
 =?us-ascii?Q?m2TQhccGzrIV3Ieiu+AVW0AR0VMPtXLPpH25LJGy5w3Iy990ar2skUALk58D?=
 =?us-ascii?Q?9XkX1RH+cjRY3pF4o8pvdWF33v1lfAFsIhXYUT8C78WcbOk2uGuFTdxD75pH?=
 =?us-ascii?Q?ctO+3L2g8+jACWqJfP3iPjYpZa3tZgKvWJtq4V6y7QwErFcyFdhnurfiu8AL?=
 =?us-ascii?Q?PK3k7wedj5t9csFcaDqIFUjNr9ilm8cdx2o+JQMORklgyeyFOme9ekjltNeP?=
 =?us-ascii?Q?JY70Osc96ZevroLSny3o2/tz3j+0Rb3AE+pG2w7KefIxAYzBculWtQRB9wxF?=
 =?us-ascii?Q?pNvvrO9Yqwxz3mdtZGahhCgFjRnSCznZZODZqaWACD6hujrwgzeIu7YKc9ua?=
 =?us-ascii?Q?PAykGYOLgAc64o6/xYL8e/jTjI3XqF7cMN9ONaJNs9WP9Lw7KFwOLjsbagLy?=
 =?us-ascii?Q?6mjkfyx6mJSk1sTY5GcphnNhf9gIgwO9J0RKLUYSwQKAyBmavu+EimQwLfLN?=
 =?us-ascii?Q?R4SepPoq3dKV6gFj1BuB2nxvzIxo3htxqukBlSDNjPsLVjwSZuk+9pcaGpd3?=
 =?us-ascii?Q?EHpgScWJl9ACkxdGOio4Fd3I8hDMxHF0ARW5EwhJasSBzCqo5+TfswkCMy8t?=
 =?us-ascii?Q?XCctlC6DT9As1IDVQjqdTz3Z10v68rVYDS4cvkl3klzFTK/ISnT8wh3Jx1c9?=
 =?us-ascii?Q?JvY4cf5fh+oq+K5FEKivJZ4uWDVpJdtPuhg63yzwJw160bMb1JBIr9o0EBH9?=
 =?us-ascii?Q?e0138e2rncVpt4ud5Y/7AXdg2O4m/d3y84PQPu1hOxXNCxxCVHZOiTEpv/op?=
 =?us-ascii?Q?yqXIAKlVDIYtW2TXNRB97prYy9dHosUEFdU7OeZ0CZ66YR+3DmX6Uixr25dJ?=
 =?us-ascii?Q?U9/omVxZpuJXHs7d6jyZsAwSYAqufh9t3B64J2YzEtJuePCjEBPodzzbKCLv?=
 =?us-ascii?Q?BJXaZQiAcfsJAdRaPaPbiObm2gkoKD0qHx/MUWXzFzmswhD5w2ERQcXW/zsJ?=
 =?us-ascii?Q?GFhMp5YCCKMSPlueCAbMVLq/o0xGaWQIJIcrmE0v2gt4ipioHeJWG10L0ynZ?=
 =?us-ascii?Q?lXkwkRdSaI7SuyILUcMphDq2tfAP0hSLydnxuSTzp5dNJ0DY1KpFhX+ehydm?=
 =?us-ascii?Q?7hfygzaxLCBgNv1nKjKNKwYA3O+4vUEEkKMNt+SR4IH7LY25DeupkyyfhBLb?=
 =?us-ascii?Q?6zpBUGUMNVkIfNAN9PlGAHFOKALHi88Fw9PlcYTQ92sDl5hktSOSMcQEUdmR?=
 =?us-ascii?Q?2TQ4Nhlch3J6tLPQXD/kZrPYBhBae0hOdnBIgiS1LkU5AbcnRwgb+cdb3s6d?=
 =?us-ascii?Q?XjucNQwzjRNDqQ/oJ05zXDU08zw4XmAxGXYtQPI05JswdUnBMaifbQdsqIzX?=
 =?us-ascii?Q?aFpQF7VQO+FTQ81vhgE+fcP2TJmU6fMdOTO5GQNKBODF2zLp5TJHKn/JNecF?=
 =?us-ascii?Q?qrqqi8a5sPsp2oddmwRVbD/Rx5DsQxbmCMj9C02y9kIvRZafcP6GRms38y3w?=
 =?us-ascii?Q?YWqWbINqSpvTiRul+9Spz+qUErOZ+dqC7Wpz0rAy/Bn4O8L1RMhVkpQaVjoZ?=
 =?us-ascii?Q?isj2huRn9IzUBBFV+w7jNWTj5dzHGH3yZJhd/3iQ8kc2/KGajfXYK0keKqtE?=
 =?us-ascii?Q?vQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4488b00-8292-4ffe-37ff-08db34ff5a65
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2023 11:25:54.0930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WONkxZm8JRQo8wE2w/csEhc+O+Bw8yD/dFmtXTP3uZawq6L0QDco6Z+azfPPmuKU/8wpSy5Wvpday+RlqeP0PRiRlmPFDyAXIX/ZzEWm6CvMaYj+xEWxY1f9F2shb7qp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7193
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 04 Apr 2023 18:21:00 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680607568; x=1712143568;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=87/K9f9j7IbZ/2b18Mr1jHyIzqC0eyNYD0BjjFEBUbU=;
 b=MnzsPVZ4uWZTCP9ubArZTgxiiPWRMg+/g3aMmOt3r5RNV0J33RX6eR01
 pQdldo8l7v8/GQSGKhu/8bSeJIvQYFbJeNHgMj00vPwu8HvG0UYivogqc
 ZfnNfnyBS1y1V+HfImR8S68EqL+YKvvkrQ+TnxRfsMiuCEQIZQYO+ad45
 /pryQ7Bj1emh+kQVrLxIH4YdbgXimo7RmpLsXrCO0bfxEPwqe0x5oP2P9
 B2/bezGOXtxipe6PegyvJHBQeg6LDii2YclDroKoCbyPuUMyyVfsrvbwe
 9NTQy61CtaX7ragzuicJLE6KdidKqe09Vr4y2FsP1Yk4rmMk+FxEmyR+m
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MnzsPVZ4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: fix accessing
 vsi->active_filters without holding lock
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Loktionov, Aleksandr
> Sent: Friday, March 24, 2023 10:47 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: fix accessing vsi->active_filters without holding lock
>
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>
> Fix accessing vsi->active_filters without holding the mac_filter_hash_lock.
> Move vsi->active_filters = 0 inside critical section and move clear_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state) after the critical section to ensure the new filters from other threads can be added only after filters cleaning in the critical section is finished.
>
> Fixes: 278e7d0b9d68 ("i40e: store MAC/VLAN filters in a hash with the MAC Address as key")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
