Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF990771D93
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 11:54:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 60409408CF;
	Mon,  7 Aug 2023 09:54:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60409408CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691402080;
	bh=0McdhEElgGFIS6qKRdViG+hCNv1Is4S4ob3BRC2DnxM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QSQ3qabEcaxg45GwI0F0whYRsmB1nNqxWm1Kosci3I3+2klzWoCDRAKIF3e62IWPo
	 k54BhjYSUFK1w7nqhaPZ7qiPq7UGPD29qN6vUAt+vE3AzBIMaPrPPpqkWg/ZmZeA8U
	 4nH9fJpI2AfgmRT7/BMH7QPVpcBXe2e88DumJnvyKDtMGra9dd9iIMeRWRap4MQLNO
	 ozwbX5aB1Bw+39+M3yWBBP3GCJJIvj8yHOtt8alKHeIsmyOytlIww1vPk5GoJe0on1
	 tg8ffVwyINKpy7I06KCu/2zH4J6xLV0YJT0a9DmpWW+Bjptkv7EyPXdpTmlQ+Zu708
	 HGS0QT5QccmlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1WF61C9rA6Oe; Mon,  7 Aug 2023 09:54:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 225C4405CE;
	Mon,  7 Aug 2023 09:54:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 225C4405CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1982B1BF329
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 09:54:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED17760E09
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 09:54:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED17760E09
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gA3r-3Ohkwik for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 09:54:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 094EF60DDF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 09:54:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 094EF60DDF
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="360585971"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="360585971"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 02:53:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="707812268"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="707812268"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 07 Aug 2023 02:53:35 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 02:53:35 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 7 Aug 2023 02:53:35 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 7 Aug 2023 02:53:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ROu4L/zyYUQ3ALesKAbp16Om+xN1O51nAMEeYD9uGZ0XJ5Ib5HIpOkllcqnJf6iI3wjoCZrl0PLPUZL8GGwNAYlMISKB8e0UNYrY+sgBjD99SN+AeI/L9Hb3H6I1vov/w7KlzBHIGwOr7tAoonIOsWH1zq9bSEPmIxUk2ARRt7JGtzonIe+8JO7XzrqU8lrJvDIycG/ItJsY/wJ48cWUuuqFuel/soI22h4HQ9pwIUpigV8+pbOMgsRqd/dAP/rao9Thm1E8U/HdXbi8zjZSPgHw1NsTu2wTEMarMYYPXSWNQoPpVAhEQIuwUs7IYN/HM+usvC1Meta95S+nQd6Pag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yuqHKmZAEGdUo0y6iUH+4SCVe+vcO33jVf92pyKKMMk=;
 b=XEh9tRmFPQhCS5Z8IlNLo365d2RhLsziBj9Tpp+2MQUgNpBKc4iXWjtfj1q5KjbRmkaBUYRXKNCVxeZdZgirx8Q8fHhD0pNXqkhbDm0O4q76C289SwvDvm0viGm9zrYRhkmYS9NSh7qqy4tOzW2do52mo5q5rTbfsWeW9EHxgj3uRcoKMjO0bHB5Qg5/9Kd92O/8sDx+QZM86brM5HtmmakASpP6FUM9MCKu+1gHmM2VLtV5U5ZwqicUUWAxw6R8xkJSwTxSv0aNWvf1pzg5Uwc3BYqd8ytNTZ3RpHQz4HLSLJ5Qdk3iOdNZqRZ64lXXm6QuZN6vaQPkR25Iw1LqUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH7PR11MB8600.namprd11.prod.outlook.com (2603:10b6:510:30a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 09:53:32 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec%7]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 09:53:32 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4] ice: drop two params from
 ice_aq_alloc_free_res()
Thread-Index: AQHZw8HpTELsOkDIxEWou8nI4OTY7K/eog1w
Date: Mon, 7 Aug 2023 09:53:31 +0000
Message-ID: <BL0PR11MB312201E4F2470CF2EA31945DBD0CA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230731150152.514984-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20230731150152.514984-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH7PR11MB8600:EE_
x-ms-office365-filtering-correlation-id: a14e1061-4b9e-41b8-2eaf-08db972c28a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z8fsRhiftKGlInRA1cnlkZJE/4MZ+g16kNGFooOnjVL76bXpvC9X0YIs6mExeSCp0zRnon9iFL9QT0lPYq6geA0wvCu87jTSXFRDWNhxBlhxtvR0F2vGqYZKOxHVjqeKgs+MTPPhUh+33JndlQAX4arC7MDCiqiFoBRQG/Dop/08qEbkNAe6/sP03BvXYUv+mGgNfb0FkWI6vK8lvtP5MBYeg8QeSQHpodlkOuHD6h4qZ37zeS/bGE3C/QL//zeiDHSb+/gDMCzGl2tp/4TZ2+f3qJU6ncx/PPYCUSqgLSlIRQ/+gtcm17llqn3CKo4L1Tc+KJSFChllVHDBse+4LqUPstsD31aVzj6iLtCgv52MVzbL0rIIqATcMNN1pRnhx5kpfkZ4jwMeOe6ZE1b/IGxPyHl+4+ssbu5M3vrWzaApwJRp6r9nM+MFaPuLFzMFF8iUViPTmkqCDgHboLyQJ8qV+MrICam/5WaiX9NtZdXmlEkCBAHwOyXfA3H20A8UvXrjpD7ElN8SPMlA1+t61V9MV0bPdTscauUe/18gY+g6ofVGuqsf8hkHFkCIbLlRhUwMCCQ1HRPzIuIwjYBo+KrBP/FJ5FZLv9CPg1teoo8amHRFhuJqNF4sKYBTkU7p
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(136003)(346002)(376002)(366004)(451199021)(186006)(1800799003)(55016003)(9686003)(4326008)(316002)(86362001)(478600001)(122000001)(54906003)(110136005)(38100700002)(76116006)(71200400001)(66946007)(66446008)(64756008)(66556008)(66476007)(33656002)(53546011)(7696005)(6506007)(55236004)(82960400001)(41300700001)(26005)(107886003)(52536014)(38070700005)(8676002)(8936002)(2906002)(83380400001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SOUsbBalALCJ88OCaKquj+Pbhg0dR1Nn6v0LNVx/Yatx6ouLSTbgY+ge6HVK?=
 =?us-ascii?Q?Zb1NAyEraP82m1vV3vgWuL68TBAhmEjE8hs3zWPypr4AFa1rKvGVuZkoab5q?=
 =?us-ascii?Q?ujl4IDaoFOF95y9H/+2mvDfIaJOZfBRmqjyxcz6WuK/S3fK/hJWwCOBBjFW3?=
 =?us-ascii?Q?HN3VTCjsHlrupyZSKx7a5RG0/Dc2v6eWTaiDfq5dmaeXup3tvKYQ/X608UmK?=
 =?us-ascii?Q?zPwnhC//Xw8ZrOXu4EjiFlNwS2kTnhJYDEMrCwvgKkKPWNGZT6EePEzZze61?=
 =?us-ascii?Q?JcCus8chM+btNtGc+nPA2oK0doPExeZm201/WvQdo0fJ6tsYKRISDGp4XpQq?=
 =?us-ascii?Q?OWqtOQ+e4h67bRFN4DwtVGnRlOkwxJUdo4RGDBlwNPmZibmytkD0moYNuGll?=
 =?us-ascii?Q?XY+tpuWJDen3tzWu4Uc+hPW1oQuv8rbXVxEpTFIri8Ol3X4S1xhBMUAVtUX0?=
 =?us-ascii?Q?rYvqe9uOpQ+jNujPDqFW4wat9L9jm1z/Haxb5p+t/tZE5dLMLoeD85GDR2o9?=
 =?us-ascii?Q?T1jAAuE+fR7bp5kfc3iflM67YLXJtM8s/rSZvohrbaSDUjDW+mVE6/IsdGY4?=
 =?us-ascii?Q?/NDjgQxAZlzNLxyqXUjnsT4eyYbv+8gEVb2aK7wGeFcvDA7SX/Z6PUDHnfFt?=
 =?us-ascii?Q?h0oQWUxdFZW9hvkEA+yJpq/OuXiR7oNqWCvnm6ZSlBB3JPDDeTLdnIIss7A9?=
 =?us-ascii?Q?/GAuC10PuqInu5Py2jkw4meYZp8J8y/Vxg3PZixG4bbymhL6xmFbTgRjL308?=
 =?us-ascii?Q?3VoXqkxRCHGjfup/VRzpGg5pPH0/6ElI92Fg60EM1LiT9cgl6k6L01go35DD?=
 =?us-ascii?Q?70CRPy+0eN6tnbNb/P9a+D7GJe5GttbTH0WLbf964pXb6WrldKj9jnh6AAbH?=
 =?us-ascii?Q?SyYAz+6PpnpeelX4aVARQzjFkhk0cUulZxO7oXXxlvYJxOOXgrfuRGV/ClM5?=
 =?us-ascii?Q?wMcoYa7xDwrkAdcbhKaCttGZ4KREYxLs3ExRlfZF3cBs3KT7r9pkyvV/cL2x?=
 =?us-ascii?Q?ZYAK/DwX3SFqbDt0SLQ5QCUAj9056Zhxr/nCB5oueY6QHiA7To6HFp6CK0SE?=
 =?us-ascii?Q?X9AxTthF94yPEZwv7PYJ9ndtVkP+O1uu5TkF0mxo74b/nczJjzC6mzW8xjbS?=
 =?us-ascii?Q?HBNdAvXXCHubEVRynZoD0h5oCWyrL0465I2htSk4HPCYcLilYeWlA5k34Uhx?=
 =?us-ascii?Q?vgWPn2LwDS3Dq3lbwT22IA3vloE1vqQjx7AY1RMTYdtWlp5mighIQPaYzEdJ?=
 =?us-ascii?Q?jNCzWC2Qo3Pl/aNmPikFm95aOcZv8a0c0uc9hCRa6mr9CMEX5bFNrL7hMKtn?=
 =?us-ascii?Q?Q0cfm3qcrpJxP5J1CtjnKtCUsjkHyQnmxI7saYTRU55OlMRRexSIv0B6sFn1?=
 =?us-ascii?Q?WqMo4C4QAsrmlkSgYiur3WibXbdn9ki8D80+Lbv3jiBUp3TTBtntgYrVfOLI?=
 =?us-ascii?Q?xJXqHJsp0UnUOPkUkv0VlS063CGivJfxCLlosCVF2Djx1ZpTgHL2eI9Qdc36?=
 =?us-ascii?Q?mwRTLSA7MJiETxnOZF4HDAy8iAkwxopJgC9M7NZC4bvvaB+DA0GINe1FdIZ0?=
 =?us-ascii?Q?vhQTNpmfgK8LFgov5ejE/jCU43Bgo8arXuF7QVZaaUetV66+hSHTVuad98Vc?=
 =?us-ascii?Q?RA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a14e1061-4b9e-41b8-2eaf-08db972c28a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2023 09:53:31.8901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mjXJEiGsth/W5fDg4UwHL6AcTE4WM2OhlF549xDEWmA9x3d2kem8qil6A5OmxQrsMdCjjgzaxZtRZ2kg74ze4vblgvRjBtV1tQC5JRdRmmXuY01QgD6VOpfa83WqstLG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8600
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691402067; x=1722938067;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ldm25G+zrWY/Sfyg46L8/NZMJY+aak059Pf9TO4dcwM=;
 b=fv5AvKCfrGtKASjfbge0mMGRbTDPaRkA8wHff3Sayatpk1z36U82lhtS
 9kaHOjT7bmytpA1tRZcX1RNSN6GHGXStTxDLRoVDX4+PND6Gvtsojpvrb
 evtpzlJ+6iKskYjG1Qq6ftFr6c0lme4NHjWnP1u05BEZpqdIiUldzETfV
 TUjVB41aerHyQEM8x0zSRXbn3vu13RAspj7FZ7Y1ZFVFoeKbX60i65sQv
 Sy2JZLfpioWt2uw4plPdwG9rOaaf75ETY6+Bl6O8VUJZgwN3TbhyV6Y9D
 JJAVynmq7g+WSiz8kaV40wCwrYNaqvc3q/y/6iIjW7k4gZ6eLJNvU/mPr
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fv5AvKCf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ice: drop two params from
 ice_aq_alloc_free_res()
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
Cc: Henry Tieman <henry.w.tieman@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Przemek Kitszel
> Sent: Monday, July 31, 2023 8:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Henry Tieman <henry.w.tieman@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Kubiak, Michal <michal.kubiak@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4] ice: drop two params from ice_aq_alloc_free_res()
>
> Drop @num_entries and @cd params, latter of which was always NULL.
>
> Number of entities to alloc is passed in internal buffer, the outer layer (that @num_entries was assigned to) meaning is closer to "the number of requests", which was =1 in all cases.
> ice_free_hw_res() was always called with 1 as its @num arg.
>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>
> --
>
> v4 (after longer break): rebase and cover recent LAG related code;
> 	drop minor patch from the series, to be sent later;
> v3: v2 was broken (code from v1 sent), proper "logic fix" vs v1 here;
> v2: fixed logic, I was fooled.
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 24 +++++++--------------  drivers/net/ethernet/intel/ice/ice_common.h |  7 +++---
>  drivers/net/ethernet/intel/ice/ice_lag.c    |  9 ++++----
>  drivers/net/ethernet/intel/ice/ice_switch.c | 16 ++++++--------
>  4 files changed, 22 insertions(+), 34 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
