Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F6B539D4C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jun 2022 08:37:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC333405B0;
	Wed,  1 Jun 2022 06:37:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4YvkC5WEBn4q; Wed,  1 Jun 2022 06:37:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD8F740119;
	Wed,  1 Jun 2022 06:37:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB1581BF859
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 06:36:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A74DD40590
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 06:36:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KDHhgrWVAnqy for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jun 2022 06:36:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 71C1740283
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 06:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654065414; x=1685601414;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iBUZANrwFAdKa3jtgAxFdv/dUsC9bOo2UTEYKv5mpgA=;
 b=hQwi7ilSwXs1sc8oYTNYeIfYlMuwR40CSnebKdPiafEBlbppGusUFA49
 xQAdjmeJLeqwIpo82NWoveMOzVUIUzxChwF1zRbCTnl8+HRmxIC/gqiKp
 v1OJBAxQdLjIskpjDWQ42PThVbIP858ZVfmGQgLzdn8jUAQTgthuZhJWy
 FsQR3MIO5rbW7Gwyxz+D6Ek3gIZAHNdY38eFk5rfmuLjbQO6PA3fAfKvz
 E/qrMCh2MCbzm6bKJQ5A9XTtHaE/98Yxd4X10Ae8yLAs141wyDIgO+zSF
 unZ3tK2N+l/Tny9Mtl5eVsizUIetnbARvfRwPg/Kls8K7oEcPb03qmtB1 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="275570057"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="275570057"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 23:36:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="612187077"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 31 May 2022 23:36:53 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 31 May 2022 23:36:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 31 May 2022 23:36:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 31 May 2022 23:36:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UnTFOyuV+VPjJm+Hmx6UNph5BSJ5gtVQ4eb50EbYOSI3XNq0XtXAgb131kCX7yZiRwByIdA0nzUk/Vs3lyWDfey9/cF45bdZziPWK9ulyblafPD5DIjOeO6TcBgoBHaPr3V2ei6jIIkBdWcjK+W9OfmeHOtyVC/lz7BBesCmDdzzF7O0ylUKSQvNXzQ0RD91pqgy5ClGvcvBmj7hyXQ6aXJtGbcCNZO/rMrEWoZiWBCg8kG8S0AVXRYgstfskIXkgJj9hB5L94G2LM8aZ9dEUeHHaHdJQel/90O0eSG40sUULvQqIWYCzbHIi9AqOMGjkuKgC+Y776XkA4bqv9PYpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iBUZANrwFAdKa3jtgAxFdv/dUsC9bOo2UTEYKv5mpgA=;
 b=LEY+it8iM033Kq9hUPFD54JGqNQIS8hJ9KRB7CxPD6mx2iktC0VYDl7hNjz9Yu93s/QiZe6JYwCjnPU5/krno3FjqUg3zUXIBVcFNjJjghb7tZpS8CcyBXCkquRf/JoUBJbHExF0iH6ZomZYOHfDyjINFpC0+ZhzOww4ruDJLN1fLECTrzlL68/ahcHayHxUXy2DtriEkOTTJxqX24IUgx5tFa016ta3TBr5EOmgFFiA2o3+OIipZkQrDap7LLdjQTi6S9MiW8RnZJs7UqKT1sfiqU/4HEA11KSFyjdyJpJ54IsNOpujvWyywjZbI8YgL+7Wyv4pykULCU4o9u8yuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by SN6PR11MB2608.namprd11.prod.outlook.com (2603:10b6:805:57::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Wed, 1 Jun
 2022 06:36:52 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c0e3:dade:6afd:ec6b]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c0e3:dade:6afd:ec6b%4]) with mapi id 15.20.5314.012; Wed, 1 Jun 2022
 06:36:51 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/2] ice: don't set VF VLAN
 caps in switchdev
Thread-Index: AQHYWG68kBw0wKsum0iMzVB+ieyrTq06UwTA
Date: Wed, 1 Jun 2022 06:36:51 +0000
Message-ID: <MW3PR11MB4554695EC87967917F54C37B9CDF9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220425062756.14987-1-michal.swiatkowski@linux.intel.com>
 <20220425062756.14987-2-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20220425062756.14987-2-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 82907a95-3c25-4ca2-a62f-08da43991cdc
x-ms-traffictypediagnostic: SN6PR11MB2608:EE_
x-microsoft-antispam-prvs: <SN6PR11MB26083C0B35FBF057130384499CDF9@SN6PR11MB2608.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Lk/OA6xEE5lwKFApYZ0wovl7s1hAyKp6NuqwB0mplgyHkOMy85f59GzssVAu3crU5xQe7O+HWBtovTQEaXoo4B5rgDjmMWvjme/lgwthCrWrGLfg+bowdVXyE57xYDUIVJPS5tXKSN075Eg8/+hZLVo3UeDhU5wztfmeP49MHDE0N5WY4vw5ZOj7slFnwMMCVCD+T3bJ/EMbBFCTUzSc17/iEJNWRRh60dLiSS5/TLehNfyhX772gnOHm/PZOvpeEifGOx95f3Um7vl9J8l4KWHhXR1WiMj0qMK/mtEJhXmC6P6zJ3hIfjDucHmTRZSAgzSry3nU2y+MfKhYlzuEAp7iO7yuHo5xVUgerbslYS1ov7V8dW+dGRecoP5Fgf2u61e7gjkgriVS/gLEuL1lv2am7K4DsA1z0YK6vLQnfJu4S1QVbGrwaBMObL/C4lE0Rm7Zok6995Q35pLy7a7l3zqKYdcrdOKfHet8KxpsXEGL5E4eEW90otjDjopKlLqy1u6P+GQd8G9mhZENEQaX4EnmXviurj8H0+o+veF1gHPiK74U983ukMEnr/LaRkFFRVTe2BDzwoAZBpKPMBzxJTwr21kWeqo6OGHPB69DQhSXok9kSe+ihbrXFZ20gNWvVyUnQ7WN5wT2aF0aO2BRalmmSSlCn+NCoqoMefi2R4hyYA2sw99S4yNw2bEqz7soIa36uBr7gQ6Ah7oW4Kkbow==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(64756008)(66446008)(66476007)(66556008)(66946007)(52536014)(38100700002)(86362001)(55016003)(316002)(110136005)(8936002)(76116006)(4326008)(8676002)(186003)(5660300002)(7696005)(33656002)(82960400001)(83380400001)(508600001)(2906002)(122000001)(38070700005)(9686003)(6506007)(26005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HaVbj0hQMofIBQQLMOmVoKvaT4rsHFu7IeMCF/RqFEyWwF7oWoW+dyUs2V9c?=
 =?us-ascii?Q?6o+oQkgZ+ui59KHYEfMbRBI5nwAO8UQbPK3zy4xLuvffkiAokGCE0QmVrQUG?=
 =?us-ascii?Q?7wlUkl0mi/bvzNW3Bu+Z4O7vbJSTlTpnMonNmNJEX9TlAGxehwleHRW8uSmF?=
 =?us-ascii?Q?Dc9PhRZ+gcC6/gGrgO25Y8CoKkkXyUserL91hzPRrTMvgsql3/fqpumTSsaB?=
 =?us-ascii?Q?DWqkP2FNwoHsY6AshAQNvPHz5YVhZLHjUnC7dun2SAi1gb7LayRuaQ5fcgLR?=
 =?us-ascii?Q?nwgfIkkfb2rgL2lEyMAhZJb9874/1uC+ZnKvWw+VCcsOWrEl2ooxe9ucDkvs?=
 =?us-ascii?Q?/xGCShNm8YlFA+j15sqCuZNb0O0mHPY8RPkIAJDZRbA5onYAo3K3Mg0DcFPl?=
 =?us-ascii?Q?qchA8SO4+UOksg1a6H7uPUrBQsEHorKc79MnieroNAm0hvW1uEYsQjcWw4g1?=
 =?us-ascii?Q?mT7O6HMjtR/B9dZOiAxHADESElNygipI4+2UwEbRs7nL/5OPycx3/ZqD01aw?=
 =?us-ascii?Q?8f70zOKL2jnqEDBGSAexYhIgJRyAjSxgL5WQpwk7SXmVjJLQ8h/CoTNvRuiK?=
 =?us-ascii?Q?UDGnyrjI2kUD04iV29MmZe+XfGlokXJtspRJiJoiVoEaIFiu0TlZb9SKAlBd?=
 =?us-ascii?Q?5OnnfZOseBztxMY3XVGw4LoFj06WUfhH6wbR3en/EbztZWR/dVhAl8Dhb47d?=
 =?us-ascii?Q?JXo6uiEpyBytDnxU9GWiYXjCr6crl5pIIma7oqlKXgHZStJ8qJUvd3CGQDa9?=
 =?us-ascii?Q?J1r21R04MEYCrdV8VvWzWdWg0zIajvrh0kXFSMUq+taFJcKGRNU0ahTscUOP?=
 =?us-ascii?Q?sZzEYOs9zjC4PgeBkIa87CXxKKcfo5BConX4YRMFplW52PtH80B0JbPFQxLw?=
 =?us-ascii?Q?ECsd155IMg7ISYLkyP+RhdsLbSi7j+tXLVbn5OiN6r5QyM3TBsPEnucnwlfB?=
 =?us-ascii?Q?Z1nchPkBsrpOinphcJMpLM9oppXxwSdnIdjRPF6xrS85O9TMP3iMpdKCjido?=
 =?us-ascii?Q?6LmakD2uADM2wX41rQBVpIBpVsWwUSojzlU90qtU78iAXPfeGz2I3odnJxD7?=
 =?us-ascii?Q?aY+Y609NbCHLvBlD1VWjH9hEL0e2xDLuMRA7g5rf64n7LZfGpSBf/Zezd+Qq?=
 =?us-ascii?Q?KRP3InakgRimP+4/1RPCtgQaSUBCtQnv9ySlX2zw0ueTU1/rslYBgFq7XHh3?=
 =?us-ascii?Q?ZWquPVV7E/1PfyNySvBPZ1lqTRU6F3ZsMz+z6+SEIA5FvtB89FcUQtSkITSC?=
 =?us-ascii?Q?x7RVf5XyI98173Eef0RGqRY/c2bNeWVCW18SChP0WNKkYKA7Mk4qAI8zGEf1?=
 =?us-ascii?Q?WM0kr396n3FtkBECVoBIs9j0jfWqoN6SaVXOyCKgnLeOompzyyMhMJCsL6tC?=
 =?us-ascii?Q?4bmmUJE9BI2VR17nGGfVfQ5MGEQ9YUmTUE7pv7izv5xXkC925EZ5rfTRMbMQ?=
 =?us-ascii?Q?sRnmaL6bXJY5hWojmzBPgCQPYaKvogIUNy7B+v9YLzDly+FxjT6qtkFCJwKA?=
 =?us-ascii?Q?jgnQZ4MrWjJKBp9ZCS3IUKnT1vQ/7/dQHROVy40oP2fA8mqjcmXXChY5AJS2?=
 =?us-ascii?Q?2C6o4CmgA4WLOVkkNbkbB7tj1tRxHSwtSEBllNiwwgdEUWsF4ouKMhaYzJUy?=
 =?us-ascii?Q?9i4wyJV7qcrW8itrAiWBbjmA18pE7THIO6wgz4zcgSKjHhWMW0eTcRoC/09Q?=
 =?us-ascii?Q?FvDFHByJ40zK3GPh4X3BXOZKEiKUbYmHKPehabQM/e7WcqybtHLriPi1mxlt?=
 =?us-ascii?Q?7esAfB0/lAYjPvmqUUoCyySEbfntjVQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82907a95-3c25-4ca2-a62f-08da43991cdc
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2022 06:36:51.9157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CCwENdaDr6Cwvi+ghTytMPexhCpSvqXI1G32PTCvxZZjOuW1zrdhB+yeKyFtGQxulzZ6+v7VCMi0oO+n5SzU1GfazeKps1J1fkNneTfiZgg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2608
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] ice: don't set VF VLAN
 caps in switchdev
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
Cc: "Wilczynski, Michal" <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Michal Swiatkowski
>Sent: Monday, April 25, 2022 11:58 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Wilczynski, Michal <michal.wilczynski@intel.com>
>Subject: [Intel-wired-lan] [PATCH net-next 1/2] ice: don't set VF VLAN caps in
>switchdev
>
>In switchdev mode any VLAN manipulation from VF side isn't allowed.
>In order to prevent parsing VLAN commands don't set VF VLAN caps.
>This will result in removing VLAN specific opcodes from allowlist.
>If VF send any VLAN specific opcode PF driver will answer with not supported
>error.
>
>With this approach VF driver know that VLAN caps aren't supported so it
>shouldn't send VLAN specific opcodes. Thanks to that, some ugly errors will
>not show up in dmesg (ex. on creating VFs in switchdev mode there are errors
>about not supported VLAN insertion and stripping)
>
>Move setting VLAN caps to separate function, including switchdev mode
>specific code.
>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_virtchnl.c | 77 ++++++++++++-------
> 1 file changed, 50 insertions(+), 27 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
