Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2248D5BF529
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Sep 2022 06:12:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D195C40490;
	Wed, 21 Sep 2022 04:12:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D195C40490
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663733528;
	bh=ZkTU6d81a7nU8PaIDht/iKD8QYjLTzFNUMq4lo1KCQ4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TjoR4cuT7Q+dwvkJIp4hEAvFl7pvNjjIPexGV2Oh31jnG0Q9QxAMyOhoM76Mwxzt3
	 hE0ffPjKCnodcmMblVw78YfvFWTMJE1F1Oo7xQ/b3rJaPD1SwaEkG1NINzM0bTBbQI
	 oRcBj9v5xkRbCtNZq0uQoPrKTXwaCEnUsb5TKgYesDtvH77XYrivHHYZAfbnIuho3P
	 Bqa1+v6xzDyta0UCvZT/mCIb4d8TMbAordo7uEZzgnGo2mIoEg8KNVP7ZjDVL9LO1U
	 MB2t9y/EDzrzQwoKoCBTiOv8/OHNxBfFoY/EDBipISLRZ/wvln4Le2OBBwJTJs/Usr
	 09WfTRckmv1tg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id prCcIVk8yjk3; Wed, 21 Sep 2022 04:12:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A911402F5;
	Wed, 21 Sep 2022 04:12:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A911402F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E704A1BF589
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 04:12:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BCAD760FBB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 04:12:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCAD760FBB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hW2HJvOEbtXM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Sep 2022 04:12:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5EFD60F34
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A5EFD60F34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 04:12:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="361649022"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="361649022"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 21:11:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="681600654"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 20 Sep 2022 21:11:59 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 21:11:59 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 21:11:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 20 Sep 2022 21:11:58 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 20 Sep 2022 21:11:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IjcFQ6fRIA4gX3bXbmQWzQjAL/k6DQFu6UM3c98EnUpg0ie39xO/btqVKawaAa/8xV6jQMsT1OfMoSVph6unD1Ea8vzBhXGak5wvyT1cXtEvYBCf8f8Rac+CprInjmjCs68+dMbASLKEJ4ZcYsA3n1C5SQYAtEGe1PXhpaRe5T24jTc8Vwd0lvb4r9yOzOmthDJWqFjBZLOlVwbk89pHyX5dJYws3PeomnjTtFnTt/Wq/9jMJ8iCVtEIiC/xj4oCItzD+VaL5tgl4XPNxlKywbUEmk+S7uUHM2Vi2p7ydkSE66QGcwDsp61kivzBJypL2mGg1RwqLu9pZk+pAmv1xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ih8P71NKpzOk9gpAKRkDS75bOOvKjYU6vOl0bmhJL0o=;
 b=jpGoIjwT3cy8Dfc57LmZjnZieYsiRw7j/ITqHoyezz0Psw4d2hneg3iNsOuB5N3g7sV9H03VF8Wlrwh9VuQ/4HW7LXBz6/Sh2/Sj9pWAc15HAMkHoAunt9iVlzj1IBAiIrzAY9OyfpbRaSdOYsvK2WUy5nWEWqL/dS4h1WhXya3rwQLZH+BbUfRTGNvD1H5riL/PZNeuyxJ7PkHfSC3xbE8Jc7fKK/Nt0H/BV8kgqFxAWKSCAVbP/XUdJtDQThL47VTUvfotDbT05aXaoT1206mIrzNKY4gInX23QbnfFiWU5XFS1dLt15DXV7Zyplb1hq/dAPWUmemd4kLQgBUa6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SA1PR11MB7131.namprd11.prod.outlook.com (2603:10b6:806:2b0::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Wed, 21 Sep
 2022 04:11:56 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b26:8c78:fd62:300d]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b26:8c78:fd62:300d%7]) with mapi id 15.20.5632.021; Wed, 21 Sep 2022
 04:11:56 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix rmmod crash when ts2phc
 is running
Thread-Index: AQHYyPGM89kmaUqLs0q36RtHhKaSoa3pTdBA
Date: Wed, 21 Sep 2022 04:11:56 +0000
Message-ID: <BYAPR11MB3367B11425669676377A9CC0FC4F9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220915105319.9843-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20220915105319.9843-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SA1PR11MB7131:EE_
x-ms-office365-filtering-correlation-id: 89b46fd0-32db-4ef0-2d88-08da9b876c67
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 55rHOAgCqjZH9wMQ436PyFurlRkepmz0BjgKSB877YOacjjmeRKCvpLKxJM4UxFrtYNrNUfFDWNzxbHD2xU6cXefhBnS28urpphsV+g5940C6jt10VXOZ9ONv8s2H9nf/sZRlNYblW3VxusQW7KQPAOI6yZSIqrpE16pax0BxSbWSaZgOedNisw6YgqApcZTD45rl4Vq0HAEqVT3AbangAaeENbGuvc8FVPE6CzAANOcB9m62QnB8HrbAXT9971N3qgvoqewMBLXhrlX5Tv3KGCRHMmLMjZY3tEm7gYvQZnjnuyq8BYyUfbh21uYZ/JHksBq6r2941hwyAbepIgxAFd8nJLB8V4lWTKCke51EvKH1j74jBLulB3/UylrWNYGkdVt+s6GsriSAjguzbaDMtOLzcMznPs03gO+udr4zTrB1TDI3pgbS2gilA0arqHS1XmdOhL+1S80PxMzYkdwxccXNTnlECTy51Iai574lnwbLd0n5X11+XUaeH7Wv/JeTXAJawP7oIRVolkKx8vbtXqeyL4FGjg/j0cIote9xJF5hBDy0AKaTRBmzO6nZncLpWVS0wYfphwG3RPcp2q4BgGLleyha7h27jO4v1Pa/kddTPBczw2dqti9oCFSobUsGQJOff1UhSOEOFMGubK1jdQ9FXdca/dERfJYPhtoYKcCTqI4bHx0eiPpnbcIuH+2TNpajBAf/uZNEXe5QNVi71wDdpDX8WTPhLMACr1CyLaqk8yRoRLzT2acsNgymgyf9rykHLGivgF/gm7Ib/8sqw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(366004)(376002)(39860400002)(346002)(451199015)(52536014)(53546011)(5660300002)(478600001)(83380400001)(2906002)(7696005)(38070700005)(316002)(110136005)(41300700001)(8936002)(186003)(64756008)(122000001)(38100700002)(86362001)(82960400001)(66556008)(66446008)(66476007)(66946007)(26005)(8676002)(9686003)(55236004)(71200400001)(33656002)(6506007)(76116006)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?omD3twoyvJbcu8WGMmlxnB7F9oDIzYx25T1FLdj8JLnJyQxmymnPso2XqnCV?=
 =?us-ascii?Q?7YCnw6rEOBZhkrWd5UyPjbFozuHROKsPSpST1xt3fPYN8oMzJsu2yxN3N9pP?=
 =?us-ascii?Q?1IM9x6JcMZY+SldGmuIzdG4Yg8EFSexp49GTxTIsymRBG0V3B1z/aS4RmE9E?=
 =?us-ascii?Q?BQqSIQqZ5pgOU/TNR1SgwtLpXGN8++zXMcGEA/e4aHEnqqym6cS4ESbFdEBo?=
 =?us-ascii?Q?c8OBbe1uddbLfdeBg4jAD4TpcJILTFMjLfar/QVxBD/NTQr/WF4jtApd94Fu?=
 =?us-ascii?Q?3yHhCr0CcydHgCfm962mGHYOetG+HM8q3C/5XjoFQMAul0VR4DMulko3iw6U?=
 =?us-ascii?Q?IymoFPncW6/f/rz0IT7ukM1Yc0E6LJmyTwq1HkxecuApZPPr8gD8dJER2JYQ?=
 =?us-ascii?Q?1W9Lz+Ta9OR/KlHGqlW6t54zEmz45Bd0eXPdX79DLBoUdSRy6+O2yYOBHkzp?=
 =?us-ascii?Q?FIZ0IV6pK0jacLnaDcaHXmyY+9Xb9cdJGZgKPq9efwuebpa+IG9W8nijP7iK?=
 =?us-ascii?Q?P1Zij9+yEtQaEpiW7hTX2W/9c5JojLMTOEFO3490OpRO5Qips3kA8a6jL5T3?=
 =?us-ascii?Q?+rwZ1NhHsQ+7iscdJIQxAM+JwFqnD0lloT4YfkZFMHCmxeeHKuPHvy88zE1e?=
 =?us-ascii?Q?FIv5pOKlyYj7sX39T28J5LVWzTufDRpZavOUyHfP3tpsSkL5DlNWW/YCgAFJ?=
 =?us-ascii?Q?80fAxfMpCbPvtAG79Oo3V4yjTDZ3N49FhcTwYfMHW5hkQNXHWP05tttT+Cb3?=
 =?us-ascii?Q?JtAdHfWan6WnqeMlbao9ZvOY0sITyglhmtzAqDUw59IMK7bR9fhPUQx7DySs?=
 =?us-ascii?Q?RsFYVR3jsSdLuiN7I7yCWC92LD8HvM/cQikkgwuPA2Ff2CNc5P7vx6ZU8gAv?=
 =?us-ascii?Q?H22nFTrUZ7c9oxYEu/HQElU+WiJOpx1Yd1rEmoesNKCxA2s29XsPPW/tJFgE?=
 =?us-ascii?Q?nB+lBPuTS5GYmllLYLfguRgPDvJ+Kx+WJ0dqQVQvcOV1UUevXHlTBPTLK+gd?=
 =?us-ascii?Q?zNiM5hzD7e/qohKdUq1/UFkELK5tuZximdfr0DQU4mBdRJ6cfMsPFjpgRNYn?=
 =?us-ascii?Q?0+mxEgruEOVFC5CDbk8GA9g0k3ty9E3lk0K+3hbBpQkc9XREjIJVRHAitZbJ?=
 =?us-ascii?Q?7BLzf2266VIlVIW0nYvywQuKyuJX3vpGiXaOlj6CK1hxbAtgAnihRhSB0YMt?=
 =?us-ascii?Q?NXZBj0RXqeo/31Sn17E/g6g+waPbgWLnnc2IH9DK+YCCWsWs+EfGu7wG5QH8?=
 =?us-ascii?Q?C4ETW8R/H1ruCyx49fa9yrirnPVlpmw0MhDVLmykIRheFgQpHvMxJXvGv/4V?=
 =?us-ascii?Q?7vMsygHChp0Usmsj9e592DoRajzAIps9lc+yJwaGR+94698Plg8iv71XFlkD?=
 =?us-ascii?Q?+FsAOq0Jo+Kw5WueFtiO7l1vVVW25S0H1aTkqFUV3uTaBuJHuxGSmPKvCMQb?=
 =?us-ascii?Q?OzsgMBxeOOf46RiHas19t6ezOpVne1imCwklzDjL9TSiCaKpG2L6KZuc7t+e?=
 =?us-ascii?Q?5Hhj+PsvuGqnus97sqeIrcv+qgUKCMIy4Az2HlXAXLxV+9wFCWBnQWD6mtYn?=
 =?us-ascii?Q?sweR3WnPQdD/1DxsIx77MbxajyyTn6CesMVm0lxC?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89b46fd0-32db-4ef0-2d88-08da9b876c67
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2022 04:11:56.7469 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HxMrLk9IwfKAw7OtktgDp8uyUcdLkk0b0BDMDn1yfesqZqML9Y3yW0Dk+yEsghEpPge7+50uc9ZCnhZSwKEK5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7131
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663733520; x=1695269520;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kRe2FHBMhj3hGX8QIkAUST2yzbA1G3XLpUMJfnXO6p4=;
 b=J5J6ujMloic3Xztr08K009TBxDUQhqGYNqsGYRiN0qOM5jRzdIuBlyHs
 jiC1UnZM9pXkmwIHdyKexmXiPczTltsiy9G/FsQcY6j9iiqkZP2o9woIR
 ZJO6EnzVofi8HKIWC3fcFB0o+fYzoJLBh7hI7IeH6711lhm6gDU6RZ7dk
 gK0UUht8EiomHCxzI0F1a3Rw8gdng/9Wx5SVOt8W1fhsXNnPaAVrX6scT
 1I3gW5AJNkINzPahtZXkwm5j8ithkgPk2xVgi/o7M/x2hXdVye4rk98lt
 /aFxONxRZiEonINCII5yHulklK5zyIXCiKHF0r3mty2Ya89DaA0p/06t7
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J5J6ujMl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix rmmod crash when ts2phc
 is running
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
> Arkadiusz Kubalewski
> Sent: Thursday, September 15, 2022 4:23 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] ice: fix rmmod crash when ts2phc is
> running
> 
> Reschedule a ptp kworker only if it isn't destroyed.
> 
> Previously, ptp kworker could be destroyed in ice_ptp_release function and
> then service task function call ice_misc_intr executed on time sync interrupt
> would try to schedule a ptp kworker, which results in a
> crash:
> 
> ice 0000:01:00.0: Removed PTP clock
> BUG: kernel NULL pointer dereference, address: 0000000000000004 PGD 0
> P4D 0
> Oops: 0002 [#1] PREEMPT SMP PTI
> CPU: 4 PID: 0 Comm: swapper/4 Kdump: loaded Tainted: G           OE      6.0.0-
> rc3 #73
> Hardware name: Intel Corporation S1200SP/S1200SP, BIOS
> S1200SP.86B.03.01.0042.013020190050 01/30/2019
> RIP: 0010:_raw_spin_lock_irqsave+0x20/0x50
> Code: cc cc cc cc cc cc cc cc cc cc 0f 1f 44 00 00 41 54 53 48 89 fb 9c 41 5c fa bf 01
> 00 00 00 e8 87 ff 64 ff 31 c0 ba 01 00 00 00 <f0> 0f b1 13 75 0b 4c 89 e0 5b 41 5c
> c3 cc cc cc cc 89 c6 48 89 df
> RSP: 0018:ffffa8d3001e0ee8 EFLAGS: 00010046
> RAX: 0000000000000000 RBX: 0000000000000004 RCX: 0000000000000000
> RDX: 0000000000000001 RSI: ffff9a4cb1fd0d88 RDI: 0000000000000001
> RBP: 0000000000000000 R08: 000003ac0f15e9cf R09: 0000000000000000
> R10: 0000000000000000 R11: ffffa8d3001e0ff8 R12: 0000000000000046
> R13: 0000000000000004 R14: 0000000000000000 R15: 0000000000000000
> FS:  0000000000000000(0000) GS:ffff9a4fb3900000(0000)
> knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000000004 CR3: 00000003d740a006 CR4: 00000000003706e0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400 Call
> Trace:
>  <IRQ>
>  kthread_queue_work+0x22/0x70
>  ice_misc_intr+0x23e/0x2c0 [ice]
>  __handle_irq_event_percpu+0x43/0x180
>  handle_irq_event+0x34/0x70
>  handle_edge_irq+0x9f/0x240
>  __common_interrupt+0x66/0x110
>  common_interrupt+0xb3/0xd0
>  </IRQ>
>  <TASK>
>  asm_common_interrupt+0x22/0x40
> RIP: 0010:cpuidle_enter_state+0xd8/0x400
> Code: 49 89 c5 0f 1f 44 00 00 31 ff e8 03 29 90 ff 45 84 ff 74 12 9c 58 f6 c4 02 0f
> 85 0c 03 00 00 31 ff e8 9c c2 96 ff fb 45 85 f6 <0f> 88 6e 01 00 00 49 63 d6 4c 2b
> 2c 24 48 8d 04 52 48 8d 04 82 49
> RSP: 0018:ffffa8d30010fe80 EFLAGS: 00000206
> RAX: ffff9a4fb3900000 RBX: ffff9a4fb393b800 RCX: 000000000000001f
> RDX: 0000000000000004 RSI: ffffffffa5f7f754 RDI: ffffffffa5f5c798
> RBP: 0000000000000006 R08: 000003ac0f15e6d3 R09: 0000000000000000
> R10: 0000000000000400 R11: 000000000002e921 R12: ffffffffa66a1f20
> R13: 000003ac0f15e6d3 R14: 0000000000000006 R15: 0000000000000000
>  cpuidle_enter+0x29/0x40
>  cpuidle_idle_call+0x138/0x1c0
>  do_idle+0x79/0xe0
>  cpu_startup_entry+0x19/0x20
>  start_secondary+0x10d/0x130
>  secondary_startup_64_no_verify+0xe5/0xeb
>  </TASK>
> 
> Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v2: add target tree prefix
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

We are still observing a kernel crash on the first execution, but able to remove and reload the ice driver from the system unlike earlier where we were not even able to access the system.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
