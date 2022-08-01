Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C56586980
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Aug 2022 14:03:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B67B6408F8;
	Mon,  1 Aug 2022 12:03:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B67B6408F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659355397;
	bh=MFknClU+aZ7G8xMo098Nu3S1uOJmo76OFdu6WhJc9hI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K61/DHISE1RD6FbSASD/5Ht+B8+1hhYZJd1t4IF9gGB2pwaJumZDApKctK8Uem7NA
	 RBnxuZSikLh+304XABfh8sSg1IDb0d2smiNNPndp/S2YkH4BRcbTSzuLgK+xNi+I/A
	 dzLekjviSAHzuxzDpY518X/9RAvZjF/jIdrzUNjrxC/ZVByoINCobBmoHMSdVU25u9
	 jnnKtNTHde0niWdc5jgF2O1j/LEic6ds2YlDcSj9GzZ5dqC262ohmmjrRkFuXzIS5I
	 WDGo5UVA/gLT160YGGrW4LHZAij3Z95QZ2ivG8XW7pCvApEIev28yoQN5VhApJb9KG
	 DOrs7p11caCgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y6dkor7NFp30; Mon,  1 Aug 2022 12:03:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4785140047;
	Mon,  1 Aug 2022 12:03:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4785140047
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 95C191BF957
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 12:03:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E8B160B0C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 12:03:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E8B160B0C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G3DxTIlxZvkW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Aug 2022 12:03:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35ED660BC7
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 35ED660BC7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 12:03:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10425"; a="276029993"
X-IronPort-AV: E=Sophos;i="5.93,206,1654585200"; d="scan'208";a="276029993"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 05:03:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,206,1654585200"; d="scan'208";a="577759863"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 01 Aug 2022 05:03:06 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 1 Aug 2022 05:03:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 1 Aug 2022 05:03:06 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 1 Aug 2022 05:03:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nnnWyuPI1jCPyCH9Tq1/olEHl3r7+7t2tkVeo4kCJwP9wxNJkb4TukWK9POYBvjKq8KLdmP2AIb19JRVgdsDwPFPDz8ATZNIhAFYVNouEainXd6CFhV3Ath9oC+dqplMVWL98NOJdBYayuKsNvn1gZk5553a7BYcnGWAbnopmFy9B3JyBoinpIWbUaTL5NetHYER/Di/8bqaCH+4qSeUAbR4M6jmahW5F/9w62YhFButlQ4436UHhjbNuhmKtBHQlEi5CYs7La1N/eHCE7+u8nofRGi/YQzgjc3+HprzDyMDm7K8YIEmoEWdBmHpFdoO5QkS+sR8T6XCgMBra/7Eww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nu5JIzg025CiwdfPZNcRYPQZ4/1O00ilRNnFuPxsRQE=;
 b=BRXtJFMCq8D0ejqgFtMCL6LVs/xI05h9Djwv+fgQa6PJTPvUstD+S8fa7+XEnlXmFyL7iC35zRStpIyeP3HX2LqQ1PdNCWN+G9pMFi6XNsJSDP9h9F1k5TdIHzINTycTTcKdX+m7MbizrCwrN91yigHjv5QGge+aQ86kRvXkMwnzJ3PeJqtcYynawM7nbqFpxjhBY9faRLdhUbbZ3rSB9doxe+Zp/1pysYVf/+JzL9+0wmSVEArEQxP5LNgSjwSWha1yIj3R4r3I1ATMJfNcd1IQHxRkWXnv8PE1GQh3JW/JhgoErZ4qNF8OjUy9fUo6QuWpu9VdCpKEIMwj2pETpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by CH2PR11MB4389.namprd11.prod.outlook.com (2603:10b6:610:3f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.6; Mon, 1 Aug
 2022 12:03:03 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5482.016; Mon, 1 Aug 2022
 12:03:03 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix tunnel checksum
 offload with fragmented traffic
Thread-Index: AQHYoZpKJ3LQZM75XkewB36d5vYUkK2Z+fww
Date: Mon, 1 Aug 2022 12:03:03 +0000
Message-ID: <CY4PR11MB162415ACACFAAFA0A6DEB0A2E69A9@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220727091940.10902-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220727091940.10902-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 092a4c5e-98a5-4f86-bdaa-08da73b5c99f
x-ms-traffictypediagnostic: CH2PR11MB4389:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yOTBcktgseT3SSJ2l7BX90arYcqfJSbak0ra/c1APyy4e1bpvEqvXqdmC0H0/8xsC3Kwzn5IBSH8oUCq5Ju0FTS6Ln3PbatwxGtCwcIbnk4ZI0MlIqwR/IOOYnQ7PlCD2LjcFKAXF/0wJ7anw1egKJ61ji9iCFqbSDc0nYg/VYT3Xmt3+8CrA9aLMDOyR25c8nTboH2HQ1FUG+PF4iRuRMSyheEv5M97IkUFgORfvdq9IKl9FGL0i5nvbnlWky0Pwn8efmxF8V5cmgeWAnQCgsZeh72QIJcG6/tCzpvxpb4u3I2oNvBfgnj8lOUKO6rngiScHYry5R6OCV8GCgfO6P3p7tVcaUPCGmV/fZ3qSplGKVwYqEEz68NQ1JiBnced/Fm9ustT3SWr93lrYi0ZisfLq3JE9zwZIFDP1MwfDD12OtbvOnZwr+ATyMpcYjI2EoG6Gz1VwKrEZ3kgyNJ8Zl7OasHviJrRXjXqqeeSTPMlka2Mp108+Dbr/382mfdMa5yReuV98KsQ2OeJwt8B8zSqIydJiqmUE5//DrgniKwx6pUXFO6tgA/JI4Sk997SezdIwGpkBSqQhrntjc3L9qkC9V2Uv/j42A490zm0qZ+BE+P2UTEkvxYCl+B0yRs4qJ4a+yihS7sbgyYg8qmwqghHv2Z+9mDxP7BqBcZTC/lhZtOBxAx98ScXc3XBGPLenFz7LBr8eEmH2Wmam5Nl9abU7v5l5Lbo8M+N+6Q6S0RwQuMZitIoXkO4YK7S4rEQMYnUYf/shRYK7sno3e3Z3Sn7u1aW+h+XQGdu3TotwHOsDaMAiPxAkWryI1KbSqrG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(366004)(396003)(39860400002)(136003)(107886003)(186003)(6506007)(41300700001)(2906002)(7696005)(5660300002)(53546011)(9686003)(33656002)(26005)(38100700002)(122000001)(38070700005)(82960400001)(66476007)(83380400001)(86362001)(66556008)(4326008)(478600001)(66946007)(55016003)(64756008)(8676002)(316002)(66446008)(110136005)(71200400001)(52536014)(8936002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?Witicjg/udmUtjODskJNVy9D5w+TRc72O4IJU3ZC+jsgvJsIn0kW3TxF33?=
 =?iso-8859-2?Q?fbnOAcI2+56dqPuj1p8RFbbnZiKzNEVrtfi98obtR05LZMszXLwoMSIM/I?=
 =?iso-8859-2?Q?O3yomklA275+hTrARGyGh9JSZkDt/vhAbdE887DIHFkea+ZVCh066y1/aT?=
 =?iso-8859-2?Q?7UYjIVh4RG0XQeFdmOKp1/hRmqnjkloVS6EJTUKCWBkIxxGtTlu5/1Z3nX?=
 =?iso-8859-2?Q?LsQGI/dUP4sjzi2whTnqzYw7sudksgc5sjjdZc44lI+UB3cl5Ka2MDrmaN?=
 =?iso-8859-2?Q?TZsE23u8JzEDGMf5gO0/GnxCr6G0elR5KRHItWh6CiuVdpjgEy0EaLRMb8?=
 =?iso-8859-2?Q?pdq7gJQeYULv9etkjYbhXxLFXeg+O51LKo/5DOccpHZle05Viw5VDuiLE0?=
 =?iso-8859-2?Q?FaRASCKC3zqgwatwJQrUVEEipHP9u+e3UBlrXerVwFunPT6j9HcUk/zF5/?=
 =?iso-8859-2?Q?GMZOOZcySkxvU5xTGz/aBWH8aWSxQlS+7W77UG04BXyQ0Crt/oWSIlpLCa?=
 =?iso-8859-2?Q?nxcjnYlSHHgNZxhIqSBrD4kMdTlpdpFDk8CO3Zik1svmk27D73Z1bnSpOh?=
 =?iso-8859-2?Q?3fC9ur68o+G04gbNdO9K+7Dm6o4T8Bvqg6Htn2wAkfZlAQvAEKYvo3byo0?=
 =?iso-8859-2?Q?QbAntVEjRBaWQLoE6PuiuX7L7q72SolpW0er0Lf+arr0Jb7j3DEX3DLvF5?=
 =?iso-8859-2?Q?Rt6RuOhHyw07F05BgZjgQJvAdUhi4+ayVrbwfgC6cTEFF6rc1J+ehmw9jW?=
 =?iso-8859-2?Q?+Lw+K7+ERAul/gwVWJfYaWxstGcUo9+UURDSYu88fRnxGmtgUuTgR91JIv?=
 =?iso-8859-2?Q?9rb5uq9MG0GiNc3RM8tW1sz0fwlOrg5L8rtne0AlfHJRkOddxW8cwxSONi?=
 =?iso-8859-2?Q?L0rI3bLySym1Pac2Dx5J3iQj6AxQPAU8pOvWRfmcDrA+stCw3b00otd+HW?=
 =?iso-8859-2?Q?nTRwaZWRy3zlLxSpF7mGLbACW5JvduXOqQTt1DmF4KuEoMfmzfzGxdtEDt?=
 =?iso-8859-2?Q?uZiIeQwnLWDl+0Zlx21J4frm4t64b8jGMwArJ3riU0F7D+0Hn45vAQ/j7a?=
 =?iso-8859-2?Q?UAsy1LbVkYGNQlw1EltZ5VohqOR+536TbH7h0IzV40KX5aPbxwnOsXUPsb?=
 =?iso-8859-2?Q?3b108ekmE8SavdcEFwN0itMesUy3gQekkExqXHUaHQskhlVXBj/0EyO4Rv?=
 =?iso-8859-2?Q?gM66qzNIH+qJ7My+iXWphp+S53/F4KuCbraeWZ846Q3sshnA6ICKqapNve?=
 =?iso-8859-2?Q?ufWW1tCPY0i80uaswNJyACUi9vpEvahGCJlzoJcrhNlhvuG8l4OOLbrp6B?=
 =?iso-8859-2?Q?MMfysssgbOfWDaL+S49FygtgYSBIVEEGMd0TskBo4L2EXZByCB3M5iht0U?=
 =?iso-8859-2?Q?AsTgK8HfIkSul9lAq4tmmwrKj2eNe6L4kYeYS9YDSuK/WB483BYmznaJPw?=
 =?iso-8859-2?Q?anEfdYoNJHtlqLJEbpTZiGR+qE9L48oewp5U5t++cL9RQJCKiF/pzQinW7?=
 =?iso-8859-2?Q?HEXZ2azznGdX6XHpB4Y+QmUSFjl7yiyPdG4aVh10QU5i0q/5v8WFh96ksu?=
 =?iso-8859-2?Q?TrnykM5Y6a5Pj8Zg/T0n9fydOc8PVa316HS8dYswSSzZhJXkEW3IEW/dHe?=
 =?iso-8859-2?Q?Usi3g5mqehvyoQZeT7eMQvPtZ8auiv0GNi?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 092a4c5e-98a5-4f86-bdaa-08da73b5c99f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2022 12:03:03.4841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y8cN9cwrSpk0NlR3Dh+Py8gjxIV3smMoJY7Ed3tUsHz4BHDN/6MLjElz8m68TWhscpFOKz8jFiZk6rFVtqy3Og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4389
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659355387; x=1690891387;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wW7KfAyrIXyVoz0y/tMtmC/Z4dGd4S6smg/BJOZ8g0M=;
 b=k5DTgeqxhPO6zlleA8xTGhYT/3kosf6CAYkZUwZOTLYgmR5QEcIO/3TZ
 Ev/EX/H6GyNgelm66oSEFZNjdiAZAVvIg0nf+4ctZW4+pnAWYi9Ik3Ku5
 ILldhYLp1ajwCqvLu7T0kIWmqVQxfY3p4+BlrgxrwPEgPww+XJvXoGlCJ
 PU/r7+d46ilLm3lWQTlLQKPfzaW5/OOkpZyw4H2QhX6mvuJ6uyzOp2guX
 4Vl8zsmjdM9fVMoRfZsRLsgc1Ao00jaHNtT6L6Nb3vaPb+iYlwCJwwfip
 0w3cpWf9OJXXP81n3LocY17X9SabHoJsA/K79Y1uN7uMoEDiN5D3YRyaY
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k5DTgeqx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix tunnel checksum
 offload with fragmented traffic
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: =B6roda, 27 lipca 2022 11:20
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix tunnel checksum offlo=
ad
> with fragmented traffic
> =

> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> =

> Fix checksum offload on VXLAN tunnels.
> In case, when mpls protocol is not used, set l4 header to transport heade=
r of
> skb. This fixes case, when user tries to offload checksums of VXLAN tunne=
led
> traffic.
> =

> Steps for reproduction (requires link partner with tunnels):
> ip l s enp130s0f0 up
> ip a f enp130s0f0
> ip a a 10.10.110.2/24 dev enp130s0f0
> ip l s enp130s0f0 mtu 1600
> ip link add vxlan12_sut type vxlan id 12 group 238.168.100.100 dev \
> enp130s0f0 dstport 4789
> ip l s vxlan12_sut up
> ip a a 20.10.110.2/24 dev vxlan12_sut
> iperf3 -c 20.10.110.1 #should connect
> =

> Without this patch, TX descriptor was using wrong data, due to
> l4 header pointing wrong address. NIC would then drop those packets
> internally, due to incorrect TX descriptor data, which increased GLV_TEPC
> register.
> =

> Fixes: b4fb2d33514a ("i40e: Add support for MPLS + TSO")
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index 7bc1174edf6b..af69ccc6e8d2 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
