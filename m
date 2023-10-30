Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C01997DB48E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 08:46:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00D4B8545A;
	Mon, 30 Oct 2023 07:46:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00D4B8545A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698651969;
	bh=1P5QRgy+EjCpo7Ri8AiGbwmaP8MbvNjpFmUloceV9FQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uWC9BOeDt8PibPCgz7IdIRxhV1MQkcveiG3SjgQPnhbIhN0aTbJR6HLJWti0pcK3S
	 jkq7+cm7+NMuoY+Ws+JELHefS/D9bKwXPYkzK1wRTH/uamwqvpxC6Bmbfwy+oTzZKc
	 p9LWAXnu+ctcGnUzHEhtSJCidLL12iJPd1Ezp7HDcljsCdHznrI8Xyrp1Z+yIYlX0k
	 YDsXck3hCW6KgYFZ9K7cUjPsyGXb/VFG0U90kYG5Ev9n75MbNjel8mqLD9+Al3S12E
	 LdfCMRoNjQq5WSr2b5xdhgolCSYHvE/b7Vk3Gby0GnmSKt7jNAYnKgGUQjVWFUGbCn
	 ebY6yJBaCNFWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nLaGtgfmdj8n; Mon, 30 Oct 2023 07:46:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D26248545E;
	Mon, 30 Oct 2023 07:46:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D26248545E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EFBC31BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 07:46:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D2CA970AD6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 07:46:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2CA970AD6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UZ6YrLspj28P for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Oct 2023 07:46:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C12F37080D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 07:46:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C12F37080D
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="387841612"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="387841612"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 00:45:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="753703689"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="753703689"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2023 00:45:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 30 Oct 2023 00:45:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 30 Oct 2023 00:45:58 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 30 Oct 2023 00:45:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HK/e0PWdPQug3hJahyr60qF0mgqgEa5z2rPTESVCwSVZosM3VIrCtAIWQVNeR6HUuXs645AZa/KQxyMvtF4tlSSLTHujYRbemib60rpfON9pNFNm2ECMEpK5y+slkexbUZh50tN7AYucPZ+xfvVsRT8RDpq0TVa1wfnnaSZLBbHz5sZ5V5fI65SziMsfCUth6Ht5WA+2bUwqgpsuoSef3VOn6UWN/n2924PpIRXURVzduXfnysnXVta7q+Fo7CV36cXP4dt+UEGvgZniWWpEw7mAFsAM5kUlej2Et7r3XUfDyyXz8TbvS0lsdWVFb8CC/woTdOUS8q8MD2BlwyE9hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=61NcNUx+XbshCBUQbp19xJ28U9sYdLsTLZD3anKbHJg=;
 b=jW0RJQ4uc6z7Q5AkdVIWnFq5eKqTgx+5dBvRWbdOi/Pa5L5wBY3ju/54BaFZzTj/qqMVoXxejoIo3krWH7WG/36uFm0wjdh4jH2yIK5WXweuOru4QkeSqLjvk+eYFM/XKpO9GWX3c9gnv4wHy9jDKMcNayTnnZUvuK3l3tqYGOGnxGhwm4LZ4SfEdcKhE4/N867p50Hg7u9m30poHRG9VGsGhvtmKhXb6YDu5VDQK9jyM7UQXxE/08SBGHBUMMoymwtlskmZKdyl1CnBP8QyN20ubX1znrpqdgpr+TU4WjQvwsiB1m/HRv52bFZuvElbXIOR/FzRfTcZmJ0rhD/Zag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SN7PR11MB7510.namprd11.prod.outlook.com (2603:10b6:806:349::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.27; Mon, 30 Oct
 2023 07:45:55 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::d5af:4ec3:b590:6cc]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::d5af:4ec3:b590:6cc%4]) with mapi id 15.20.6933.028; Mon, 30 Oct 2023
 07:45:55 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Paul, Aniruddha" <aniruddha.paul@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net, v3] ice: Fix VF-VF filter
 rules in switchdev mode
Thread-Index: AQHZ/dtH2h4FEzoYpEGU3NAkKeON0rBiDmjQ
Date: Mon, 30 Oct 2023 07:45:55 +0000
Message-ID: <PH0PR11MB50139FB1440647A49C547A8796A1A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231013134342.2466512-1-aniruddha.paul@intel.com>
In-Reply-To: <20231013134342.2466512-1-aniruddha.paul@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SN7PR11MB7510:EE_
x-ms-office365-filtering-correlation-id: b8e3ea0a-fea0-4546-f508-08dbd91c3fcd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z/yw4p7ZCf3o/cs9rrodNlqjlQThHi4jc9b8EAniRPL/wnBVVS4NEip+nWR49RfFgvFGwmcMQnvJMXfRc3hwA7l3hNm7mSGpaecQmLymR1OPUeHJAWmURwcgv1mjV4MdUJIP59sHST260ugCA5m2EYZIeE7pN1WMC+/eDWukfpdewDsMJcnpaeUrhtOd2jiXA5cuPKowzN6gJXapKDZS1pTqzpAo/1n8n79KGW5jC68wbXZj7GMXDGcMRa3T3TjYkir5i1bSoaidbNd4IaWa0WCFoQ8Y5pVPMtPCB4IYA40lxEhxjKwMy/AEbrNVhEd3Oe523vEyffGeczaNCAPi3AydVA9bp21b3r9h/AsKBdBuqeJTQpdKmXhsLRm/Uc2SfExkSBbwwnVZznbmJpktsLVjWRVgp6oDTA1i5nSalvPq43i3uJeYn7mO/BNavz2KPjgysvT9v17ee1t4qUGdUNIjNygd1+Kjl/fQsWjw4DxWS5xqZwAUecX/SNl6Bur3gdzg93ImBLdC+7ofZVvt9WT3SBP7CQkbFuVbClp5W4cWRQ6qmFi2Dr1TT0DBjvB/v/ISmYkCTR6t7zcuXUP2qXE77FFtK87iJEw7stuw1UQe31f+1uUbojbVJMDzXazA7v3JvtS6JXv3rEyE0K8iEA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(39860400002)(136003)(366004)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(55016003)(66556008)(54906003)(66476007)(66446008)(64756008)(122000001)(82960400001)(316002)(38100700002)(71200400001)(7696005)(53546011)(9686003)(478600001)(110136005)(83380400001)(76116006)(66946007)(6506007)(26005)(107886003)(5660300002)(41300700001)(2906002)(8676002)(8936002)(4326008)(86362001)(33656002)(52536014)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2qLhBPLz+8kFHhEnvvia8+y2purXPW77r6UyzXpsona6TlRirtMcWMLqAX3F?=
 =?us-ascii?Q?OU92Xcp96jqx7PZf9JbL75UOSmiiXms4V+2QSqsTyEzk+Bd7WGOXEQoOllgp?=
 =?us-ascii?Q?687wRyUbpVLYpjxARcwrT5/izXOvyzbCXxhRtIeeoxYZwH2stX0JZ/I1Km7h?=
 =?us-ascii?Q?pxWvN81TWGfkVRpxUeGkqgfXrvPKfbVpcmCAFWI4aFQ+WSU1vxHiWR9JCKnU?=
 =?us-ascii?Q?7zQfjze8oGRmWRIw7E8TA78XKrUmrLdERWi+0c7JDtuNtScwBq2I3ircu81J?=
 =?us-ascii?Q?9krvsmCZCXFZmTpLfYiJfB+lNJHnt4s9EmR80f1KHhzx++O2et38MqaaMk/6?=
 =?us-ascii?Q?okU3TEI2JEgC8e8lxuHqnrQd4wsjg3C/h5xFcCFnrb3QC2fMhMadsl9kCpr8?=
 =?us-ascii?Q?D0LepX9bmIY1ryxKE5usu/2PNgnJHETyeQvzfZTYEy7iwujkWnkef659tFkd?=
 =?us-ascii?Q?x/14GFhGKBJ47KvD84QtGVQwBXDy5JSRejffF6e4shA1xxsMcnKvMB4J/jep?=
 =?us-ascii?Q?NtdS1OGCy2s4tDduz1NjMaQ1h9Y0KPXukywRb1sWbO7fXXI/DgypkvG9B/wU?=
 =?us-ascii?Q?uGmWXEDjyYxI657+QEwacJWdbFKqP84i8hwJF+IhaCcboswbgEUt2Le4vJcg?=
 =?us-ascii?Q?YgR2qIUivD8y6V1QduX+nzXoJ7HBdSj7up1VAQq8DU7hp7/0lUk4glp+huS9?=
 =?us-ascii?Q?aYy1sWNDUNosKWvR+LoVoSoGTba7tcHEl70aIRN5coC1CzRtAv+u/2L2gCuj?=
 =?us-ascii?Q?d+vINwTmPWnAyNPziDllpWlW3+zT/qELjF7YNKaaK72fChWEaU+/59BF08/f?=
 =?us-ascii?Q?/W0DPcHTAVQ+OjhK+P0x+fTZyapmGPaTSgPyuWfwkFB3+y5H3hagI7BSlf65?=
 =?us-ascii?Q?ek8bP/mdqh06XtkJsGyXebPKf0Mg7h75XhjpvsVHLziLy5uAWSI7BuAopSgh?=
 =?us-ascii?Q?3A3L1Ell4y6QtbQE4tAvbPxElSFT3qeXBTflh7jAT4NzVE2bU8/tfcOUDuAl?=
 =?us-ascii?Q?N+iHvglfuqgE5F6sfne0beogQZacR3Y78vXXS1hwWGgLuPqtfef0G5nd9ZwJ?=
 =?us-ascii?Q?u7s5Q3a+I/1DsqVnJMH5z4c6BSwTMmt8/mOASj3htLK5HwSd99uh+ECuuSY0?=
 =?us-ascii?Q?cPWWmKKjpzNTyTo8ELEfkhvqLcHFQ26w9lKu6jBa8wJmpx7CBA0GAdr3L5Xt?=
 =?us-ascii?Q?jGeMrMH+MEe4skQxG2+95/b864OMplyC0aBFFXA0ggwz0d/iqQZIy6sHtxyc?=
 =?us-ascii?Q?o4NPymfya0RmUPpMO+Ddi47senbUEJGlUU/hyXGl/ukYdtB7VVua6QFyxLot?=
 =?us-ascii?Q?hkFrcCcPIp42GY5zf2YDtKoSIymH4RTe57GnbKZagrSHUXwsQUj1GB77oO1n?=
 =?us-ascii?Q?4vfVX18qj4rsWsx1AQ2gh4WhLB+94eeYvNJOOJcsbDxpZgKQ9A+4xMEOjvrL?=
 =?us-ascii?Q?eUPtSajQL7iO0C3vhd6FDTPL0lQGYXiUYYhA8OvbefHGoHXn4kYFk1LiHJ3x?=
 =?us-ascii?Q?OVGGXe+gz/Wowh1bAMGtbTTYLL7gMk1G7MgBCczWGK5OfdcK6/HiAyStFd2U?=
 =?us-ascii?Q?UBbUkvRobIHr7RYn80kTmiOTV8AZ1rW/k4Ci+lScX3hZYjCoGjoPkfpwcMTW?=
 =?us-ascii?Q?Gg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8e3ea0a-fea0-4546-f508-08dbd91c3fcd
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2023 07:45:55.5432 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ohSKwbKx6l/duV4eolOf4ZLP/y7xO4rcZHh3liFXOTB4B0ykygj4x6ZriUNyNayE7d3J+y34O3AdvrrDb0yZz3NnW+9Ameyiy8BBprD6sEo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7510
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698651961; x=1730187961;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cHucO39YXJZt/+vlNESG8ZGkT6tUIDAuQ0ks73Nphak=;
 b=KU6s85OmU5WFEjSgy7b78jdzb27LTggGFhYYzGnsy8fvcWEYLM9JZUg1
 ZkB1YchWRfIpZGl40EvvQjI3MhI+7H+KbAmweCpvLnQrdr+VPZKHEZyAx
 EHyGtF50OvfNQsX/ZdmPS/Zq33Vi+eaPFqQEce309KgF09fkDUhpaFnYs
 nzhaAdyrMbhxL9XPFfsiMgCR4cUBTA2xXT787EZ1Dt95CrQM+o02rNWOO
 yNfr9wdNm+A0Lbxc65dEJSxlEkCIXtzLC0YE+TJYIJt6trLePg2eb/Qx9
 n7AAsi3F0XJ+AQYVCvzLspuL+t287bQ4M4BH3zU7PtIVmgPUNzHz7A9YA
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KU6s85Om
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net,
 v3] ice: Fix VF-VF filter rules in switchdev mode
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
Cc: "Paul, Aniruddha" <aniruddha.paul@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Aniruddha Paul
> Sent: Friday, October 13, 2023 7:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> netdev@vger.kernel.org; Drewek, Wojciech <wojciech.drewek@intel.com>;
> Szycik, Marcin <marcin.szycik@intel.com>; Paul, Aniruddha
> <aniruddha.paul@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net, v3] ice: Fix VF-VF filter rules in
> switchdev mode
> 
> Any packet leaving VSI i.e VF's VSI is considered as egress traffic by HW, thus
> failing to match the added rule.
> 
> Mark the direction for redirect rules as below:
> 1. VF-VF - Egress
> 2. Uplink-VF - Ingress
> 3. VF-Uplink - Egress
> 4. Link_Partner-Uplink - Ingress
> 5. Link_Partner-VF - Ingress
> 
> Fixes: 0960a27bd479 ("ice: Add direction metadata")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Aniruddha Paul <aniruddha.paul@intel.com>
> ---
> Change Log:
> v3:
> -Removed the unused variable
> 
> Links:
> v1:
> -https://lore.kernel.org/netdev/20230927104253.1729049-1-
> aniruddha.paul@intel.com/
> v2:
> -https://lore.kernel.org/netdev/20231003081639.1915967-1-
> aniruddha.paul@intel.com/
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 90 ++++++++++++++-------
>  1 file changed, 62 insertions(+), 28 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
